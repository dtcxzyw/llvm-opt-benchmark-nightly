Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/base_db-3cb882c0676fba6d.base_db.c2b4d2041d3c80a7-cgu.05?download=true
inline.NumInlined: 421
inline.NumDeleted: 230
begin_hunk_0_@_RNvXs3_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEKj3a_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB2s_:bb.a

.lr.ph.i:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB2i_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEEEEB3t_.exit.i, %bb.a
  %.sroa.0.07.i = phi i64 [ %i.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB2i_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEEEEB3t_.exit.i ], [ 0, %bb.a ] ; 5 uses
  %i.a = add nuw nsw i64 %.sroa.0.07.i, 1         ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.07.i ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !592, !noundef !7 ; 5 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !592
  %i.d = icmp eq ptr %i.c, null
  %i.e = shl nuw nsw i64 32, %.sroa.0.07.i        ; 3 uses
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB2i_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEEEEB3t_.exit.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEEB2x_.exit.i.i.i.i.preheader

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEEB2x_.exit.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEEB2x_.exit.i.i.i.i.preheader
  %i.f = icmp eq i64 %i.h, %i.e
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1n_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEEB2y_.exit.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEEB2x_.exit.i.i.i.i.preheader

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEEB2x_.exit.i.i.i.i.preheader: ; preds = %.lr.ph.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEEB2x_.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i23 = phi i64 [ %i.h, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEEB2x_.exit.i.i.i.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.sroa.0.0.i.i.i.i23
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i.i.i23, 1  ; 4 uses
  invoke void @_RNvXs6_NtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB5_5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtBT_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB23_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEEB2x_.exit.i.i.i.i unwind label %bb.b, !noalias !591

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEEB2x_.exit7.i.i.i.i: ; preds = %.lr.ph
  %i.i = add nuw nsw i64 %.sroa.0.1.i.i.i.i24, 1  ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.e
  br i1 %i.j, label %.body.thread.i.i.i, label %.lr.ph

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEEB2x_.exit.i.i.i.i.preheader
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.e
  br i1 %i.l, label %.body.thread.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEEB2x_.exit7.i.i.i.i
  %.sroa.0.1.i.i.i.i24 = phi i64 [ %i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEEB2x_.exit7.i.i.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.sroa.0.1.i.i.i.i24
  invoke void @_RNvXs6_NtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB5_5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtBT_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB23_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEEB2x_.exit7.i.i.i.i unwind label %bb.c, !noalias !591

bb.c:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32, !noalias !591
  unreachable

.body.thread.i.i.i:                               ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEEB2x_.exit7.i.i.i.i, %bb.b
  %i.o = shl nuw nsw i64 512, %.sroa.0.07.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef range(i64 1, -9223372036854775785) %i.o, i64 noundef 8) #30, !noalias !591
  resume { ptr, i32 } %i.k

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1n_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEEB2y_.exit.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEEB2x_.exit.i.i.i.i
  %i.p = shl nuw nsw i64 512, %.sroa.0.07.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef range(i64 1, -9223372036854775785) %i.p, i64 noundef 8) #30, !noalias !591
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB2i_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEEEEB3t_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB2i_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEEEEB3t_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1n_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEEB2y_.exit.i.i.i, %.lr.ph.i
  %exitcond.i = icmp eq i64 %i.a, 58
  br i1 %exitcond.i, label %_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEKj3a_E8truncateB2s_.exit, label %.lr.ph.i

_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEKj3a_E8truncateB2s_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB2i_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEEEEB3t_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2w_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEKj3a_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB2y_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(464) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !597 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB2i_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB3x_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEEEEB3z_.exit.i, %bb.a
  %.sroa.0.07.i = phi i64 [ %i.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB2i_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB3x_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEEEEB3z_.exit.i ], [ 0, %bb.a ] ; 5 uses
  %i.a = add nuw nsw i64 %.sroa.0.07.i, 1         ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.07.i ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !599, !noundef !7 ; 5 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !599
  %i.d = icmp eq ptr %i.c, null
  %i.e = shl nuw nsw i64 32, %.sroa.0.07.i        ; 3 uses
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB2i_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB3x_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEEEEB3z_.exit.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEEB2D_.exit.i.i.i.i.preheader

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEEB2D_.exit.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEEB2D_.exit.i.i.i.i.preheader
  %i.f = icmp eq i64 %i.h, %i.e
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1n_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2C_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEEB2E_.exit.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEEB2D_.exit.i.i.i.i.preheader

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEEB2D_.exit.i.i.i.i.preheader: ; preds = %.lr.ph.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEEB2D_.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i23 = phi i64 [ %i.h, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEEB2D_.exit.i.i.i.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.sroa.0.0.i.i.i.i23
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i.i.i23, 1  ; 4 uses
  invoke void @_RNvXs6_NtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB5_5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtBT_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB27_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB29_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEEB2D_.exit.i.i.i.i unwind label %bb.b, !noalias !598

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEEB2D_.exit7.i.i.i.i: ; preds = %.lr.ph
  %i.i = add nuw nsw i64 %.sroa.0.1.i.i.i.i24, 1  ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.e
  br i1 %i.j, label %.body.thread.i.i.i, label %.lr.ph

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEEB2D_.exit.i.i.i.i.preheader
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.e
  br i1 %i.l, label %.body.thread.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEEB2D_.exit7.i.i.i.i
  %.sroa.0.1.i.i.i.i24 = phi i64 [ %i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEEB2D_.exit7.i.i.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.sroa.0.1.i.i.i.i24
  invoke void @_RNvXs6_NtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB5_5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtBT_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB27_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB29_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEEB2D_.exit7.i.i.i.i unwind label %bb.c, !noalias !598

bb.c:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32, !noalias !598
  unreachable

.body.thread.i.i.i:                               ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEEB2D_.exit7.i.i.i.i, %bb.b
  %i.o = shl nuw nsw i64 512, %.sroa.0.07.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef range(i64 1, -9223372036854775785) %i.o, i64 noundef 8) #30, !noalias !598
  resume { ptr, i32 } %i.k

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1n_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2C_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEEB2E_.exit.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEEB2D_.exit.i.i.i.i
  %i.p = shl nuw nsw i64 512, %.sroa.0.07.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef range(i64 1, -9223372036854775785) %i.p, i64 noundef 8) #30, !noalias !598
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB2i_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB3x_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEEEEB3z_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB2i_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB3x_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEEEEB3z_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1n_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2C_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEEB2E_.exit.i.i.i, %.lr.ph.i
  %exitcond.i = icmp eq i64 %i.a, 58
  br i1 %exitcond.i, label %_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2w_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEKj3a_E8truncateB2y_.exit, label %.lr.ph.i

_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2w_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEKj3a_E8truncateB2y_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB2i_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB3x_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEEEEB3z_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2w_15EditionedFileId5parse1__21parse__Configuration_EEEKj3a_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB2y_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(464) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !604 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB2i_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB3x_15EditionedFileId5parse1__21parse__Configuration_EEEEEEB3z_.exit.i, %bb.a
  %.sroa.0.07.i = phi i64 [ %i.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB2i_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB3x_15EditionedFileId5parse1__21parse__Configuration_EEEEEEB3z_.exit.i ], [ 0, %bb.a ] ; 5 uses
  %i.a = add nuw nsw i64 %.sroa.0.07.i, 1         ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.07.i ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !606, !noundef !7 ; 5 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !606
  %i.d = icmp eq ptr %i.c, null
  %i.e = shl nuw nsw i64 32, %.sroa.0.07.i        ; 3 uses
  br i1 %i.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB2i_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB3x_15EditionedFileId5parse1__21parse__Configuration_EEEEEEB3z_.exit.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId5parse1__21parse__Configuration_EEEEB2D_.exit.i.i.i.i.preheader

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId5parse1__21parse__Configuration_EEEEB2D_.exit.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId5parse1__21parse__Configuration_EEEEB2D_.exit.i.i.i.i.preheader
  %i.f = icmp eq i64 %i.h, %i.e
  br i1 %i.f, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1n_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2C_15EditionedFileId5parse1__21parse__Configuration_EEEEB2E_.exit.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId5parse1__21parse__Configuration_EEEEB2D_.exit.i.i.i.i.preheader

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId5parse1__21parse__Configuration_EEEEB2D_.exit.i.i.i.i.preheader: ; preds = %.lr.ph.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId5parse1__21parse__Configuration_EEEEB2D_.exit.i.i.i.i
  %.sroa.0.0.i.i.i.i23 = phi i64 [ %i.h, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId5parse1__21parse__Configuration_EEEEB2D_.exit.i.i.i.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.sroa.0.0.i.i.i.i23
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i.i.i23, 1  ; 4 uses
  invoke void @_RNvXs6_NtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB5_5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtBT_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB27_15EditionedFileId5parse1__21parse__Configuration_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB29_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId5parse1__21parse__Configuration_EEEEB2D_.exit.i.i.i.i unwind label %bb.b, !noalias !605

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId5parse1__21parse__Configuration_EEEEB2D_.exit7.i.i.i.i: ; preds = %.lr.ph
  %i.i = add nuw nsw i64 %.sroa.0.1.i.i.i.i24, 1  ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.e
  br i1 %i.j, label %.body.thread.i.i.i, label %.lr.ph

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId5parse1__21parse__Configuration_EEEEB2D_.exit.i.i.i.i.preheader
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.e
  br i1 %i.l, label %.body.thread.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId5parse1__21parse__Configuration_EEEEB2D_.exit7.i.i.i.i
  %.sroa.0.1.i.i.i.i24 = phi i64 [ %i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId5parse1__21parse__Configuration_EEEEB2D_.exit7.i.i.i.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %.sroa.0.1.i.i.i.i24
  invoke void @_RNvXs6_NtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB5_5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtBT_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB27_15EditionedFileId5parse1__21parse__Configuration_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB29_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId5parse1__21parse__Configuration_EEEEB2D_.exit7.i.i.i.i unwind label %bb.c, !noalias !605

bb.c:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32, !noalias !605
  unreachable

.body.thread.i.i.i:                               ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId5parse1__21parse__Configuration_EEEEB2D_.exit7.i.i.i.i, %bb.b
  %i.o = shl nuw nsw i64 512, %.sroa.0.07.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef range(i64 1, -9223372036854775785) %i.o, i64 noundef 8) #30, !noalias !605
  resume { ptr, i32 } %i.k

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1n_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2C_15EditionedFileId5parse1__21parse__Configuration_EEEEB2E_.exit.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1m_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2B_15EditionedFileId5parse1__21parse__Configuration_EEEEB2D_.exit.i.i.i.i
  %i.p = shl nuw nsw i64 512, %.sroa.0.07.i
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef range(i64 1, -9223372036854775785) %i.p, i64 noundef 8) #30, !noalias !605
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB2i_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB3x_15EditionedFileId5parse1__21parse__Configuration_EEEEEEB3z_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB2i_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB3x_15EditionedFileId5parse1__21parse__Configuration_EEEEEEB3z_.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1n_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2C_15EditionedFileId5parse1__21parse__Configuration_EEEEB2E_.exit.i.i.i, %.lr.ph.i
  %exitcond.i = icmp eq i64 %i.a, 58
  br i1 %exitcond.i, label %_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2w_15EditionedFileId5parse1__21parse__Configuration_EEEKj3a_E8truncateB2y_.exit, label %.lr.ph.i

_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2w_15EditionedFileId5parse1__21parse__Configuration_EEEKj3a_E8truncateB2y_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSINtNtNtCsg1bCijyqAnf_6boxcar3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB2i_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB3x_15EditionedFileId5parse1__21parse__Configuration_EEEEEEB3z_.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs6_NtCs2WklPA5QxgX_7dashmap4iterINtB5_4IterNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdNtBN_15SourceRootInputINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEENtNtNtNtB1U_4iter6traits8iterator8Iterator4nextBN_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !626 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %.promoted = load ptr, ptr %i.a, align 8        ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !7, !align !10 ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8        ; 2 uses
  %.sroa.58.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %.sroa.58.sroa.6.0..sroa.58.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.58.sroa.7.0..sroa.58.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %.promoted63 = load i64, ptr %i.b, align 8      ; 2 uses
  %.not138 = icmp eq ptr %.promoted, null         ; 2 uses
  %i.f = icmp eq i64 %.promoted63, 0
  %or.cond139 = select i1 %.not138, i1 true, i1 %i.f
  br i1 %or.cond139, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.promoted64 = load i64, ptr %i.c, align 8      ; 3 uses
  %.val16.peel = load i64, ptr %i.e, align 8, !noundef !7
  %i.g = icmp eq i64 %.promoted64, %.val16.peel
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = tail call noundef nonnull align 8 ptr @_RNvXs2_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdNtBJ_15SourceRootInputINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEEINtNtB5_1t3MapBF_B1p_B1L_E17__yield_read_shardBJ_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, i64 noundef %.promoted64) ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !627, !nonnull !7, !noundef !7 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !627, !noundef !7
  %i.m = getelementptr i8, ptr %i.j, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 1        ; 2 uses
  %.val4.i.peel = load <16 x i8>, ptr %i.j, align 16, !noalias !628
  %i.o = icmp sgt <16 x i8> %.val4.i.peel, splat (i8 -1) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !627, !noundef !7 ; 4 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !629
  %i.s = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #30, !noalias !629 ; 8 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.loopexit165, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  store i64 1, ptr %i.s, align 8
  %.sroa.429.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 1, ptr %.sroa.429.0..sroa_idx.peel, align 8
  %.sroa.530.0..sroa_idx.peel = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.h, ptr %.sroa.530.0..sroa_idx.peel, align 8
  br i1 %.not138, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB2q_4util11SharedValueNtB3U_15SourceRootInputEEEEEINtB34_7RawIterB3P_EEEEB3U_.exit.peel, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = atomicrmw add ptr %.promoted, i64 -1 release, align 8, !noalias !630
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB2q_4util11SharedValueNtB3U_15SourceRootInputEEEEEINtB34_7RawIterB3P_EEEEB3U_.exit.peel

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB1A_4util11SharedValueNtB34_15SourceRootInputEEEEE9drop_slowB34_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.a) #35
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB2q_4util11SharedValueNtB3U_15SourceRootInputEEEEEINtB34_7RawIterB3P_EEEEB3U_.exit.peel unwind label %.thread.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB2q_4util11SharedValueNtB3U_15SourceRootInputEEEEEINtB34_7RawIterB3P_EEEEB3U_.exit.peel: ; preds = %bb.e, %bb.d, %bb.c
  store ptr %i.s, ptr %i.a, align 8
  store ptr %i.j, ptr %.sroa.58.0..sroa_idx9, align 8
  store ptr %i.p, ptr %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx9.sroa_idx, align 8
  store ptr %i.n, ptr %.sroa.58.sroa.6.0..sroa.58.0..sroa_idx9.sroa_idx, align 8
  store <16 x i1> %i.o, ptr %.sroa.58.sroa.7.0..sroa.58.0..sroa_idx9.sroa_idx, align 8
  store i64 %i.r, ptr %i.b, align 8
  %i.w = add i64 %.promoted64, 1                  ; 2 uses
  store i64 %i.w, ptr %i.c, align 8
  %i.x = icmp eq i64 %i.r, 0
  br i1 %i.x, label %.lr.ph.peel.newph, label %._crit_edge

.lr.ph.peel.newph:                                ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB2q_4util11SharedValueNtB3U_15SourceRootInputEEEEEINtB34_7RawIterB3P_EEEEB3U_.exit.peel, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB2q_4util11SharedValueNtB3U_15SourceRootInputEEEEEINtB34_7RawIterB3P_EEEEB3U_.exit
  %i.y = phi ptr [ %i.be, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB2q_4util11SharedValueNtB3U_15SourceRootInputEEEEEINtB34_7RawIterB3P_EEEEB3U_.exit ], [ %i.s, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB2q_4util11SharedValueNtB3U_15SourceRootInputEEEEEINtB34_7RawIterB3P_EEEEB3U_.exit.peel ]
  %i.z = phi i64 [ %i.bm, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB2q_4util11SharedValueNtB3U_15SourceRootInputEEEEEINtB34_7RawIterB3P_EEEEB3U_.exit ], [ %i.w, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB2q_4util11SharedValueNtB3U_15SourceRootInputEEEEEINtB34_7RawIterB3P_EEEEB3U_.exit.peel ] ; 3 uses
  %.val16 = load i64, ptr %i.e, align 8, !noundef !7
  %i.aa = icmp eq i64 %i.z, %.val16
  br i1 %i.aa, label %.loopexit, label %bb.j

._crit_edge:                                      ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB2q_4util11SharedValueNtB3U_15SourceRootInputEEEEEINtB34_7RawIterB3P_EEEEB3U_.exit.peel, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB2q_4util11SharedValueNtB3U_15SourceRootInputEEEEEINtB34_7RawIterB3P_EEEEB3U_.exit, %bb.a
  %.lcssa120 = phi i64 [ %.promoted63, %bb.a ], [ %i.r, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB2q_4util11SharedValueNtB3U_15SourceRootInputEEEEEINtB34_7RawIterB3P_EEEEB3U_.exit.peel ], [ %i.bd, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB2q_4util11SharedValueNtB3U_15SourceRootInputEEEEEINtB34_7RawIterB3P_EEEEB3U_.exit ]
  %.lcssa116 = phi ptr [ %.promoted, %bb.a ], [ %i.s, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB2q_4util11SharedValueNtB3U_15SourceRootInputEEEEEINtB34_7RawIterB3P_EEEEB3U_.exit.peel ], [ %i.be, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB2q_4util11SharedValueNtB3U_15SourceRootInputEEEEEINtB34_7RawIterB3P_EEEEB3U_.exit ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %i.ab = load i16, ptr %.sroa.58.sroa.7.0..sroa.58.0..sroa_idx9.sroa_idx, align 8, !alias.scope !631, !noundef !7 ; 2 uses
  %.not10.i = icmp eq i16 %i.ab, 0
  %.promoted.i = load ptr, ptr %.sroa.58.0..sroa_idx9, align 8, !alias.scope !631 ; 2 uses
  br i1 %.not10.i, label %.lr.ph.i, label %_RINvMsh_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueNtB17_15SourceRootInputEEE9next_implKb0_EB17_.exit

.lr.ph.i:                                         ; preds = %._crit_edge
  %.promoted12.i = load ptr, ptr %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx9.sroa_idx, align 8, !alias.scope !631
  br label %bb.f

._crit_edge.i:                                    ; preds = %bb.f
  store ptr %i.ag, ptr %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx9.sroa_idx, align 8, !alias.scope !631
  store ptr %i.af, ptr %.sroa.58.0..sroa_idx9, align 8, !alias.scope !631
  br label %_RINvMsh_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueNtB17_15SourceRootInputEEE9next_implKb0_EB17_.exit

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %i.ac = phi ptr [ %.promoted12.i, %.lr.ph.i ], [ %i.ag, %bb.f ] ; 2 uses
  %i.ad = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.af, %bb.f ]
  %.val8.i = load <16 x i8>, ptr %i.ac, align 16, !noalias !631
  %i.ae = icmp sgt <16 x i8> %.val8.i, splat (i8 -1)
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -192 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %.cast.i = bitcast <16 x i1> %i.ae to i16       ; 2 uses
  %.not.i = icmp eq i16 %.cast.i, 0
  br i1 %.not.i, label %bb.f, label %._crit_edge.i

_RINvMsh_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueNtB17_15SourceRootInputEEE9next_implKb0_EB17_.exit: ; preds = %._crit_edge, %._crit_edge.i
  %i.ah = phi ptr [ %i.af, %._crit_edge.i ], [ %.promoted.i, %._crit_edge ]
  %.lcssa.i = phi i16 [ %.cast.i, %._crit_edge.i ], [ %i.ab, %._crit_edge ] ; 3 uses
  %i.ai = add i16 %.lcssa.i, -1
  %i.aj = and i16 %i.ai, %.lcssa.i
  store i16 %i.aj, ptr %.sroa.58.sroa.7.0..sroa.58.0..sroa_idx9.sroa_idx, align 8, !alias.scope !631
  %i.ak = add i64 %.lcssa120, -1
  store i64 %i.ak, ptr %i.b, align 8
  %i.al = atomicrmw add ptr %.lcssa116, i64 1 monotonic, align 8
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvMsh_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueNtB17_15SourceRootInputEEE9next_implKb0_EB17_.exit
  %i.an = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.ao = zext nneg i16 %i.an to i64
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr inbounds [12 x i8], ptr %i.ah, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -12
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 -8
  store ptr %.lcssa116, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.as, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %_RINvMsh_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueNtB17_15SourceRootInputEEE9next_implKb0_EB17_.exit
  tail call void @llvm.trap()
  unreachable

bb.i:                                             ; preds = %.loopexit, %bb.g
  ret void

.loopexit:                                        ; preds = %.lr.ph.peel.newph, %.lr.ph
  store ptr null, ptr %0, align 8
  br label %bb.i

bb.j:                                             ; preds = %.lr.ph.peel.newph
  %i.at = tail call noundef nonnull align 8 ptr @_RNvXs2_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdNtBJ_15SourceRootInputINtNtCshzWfHUSfYae_4core4hash18BuildHasherDefaultNtCsh04pLiDBs3j_10rustc_hash8FxHasherEEINtNtB5_1t3MapBF_B1p_B1L_E17__yield_read_shardBJ_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, i64 noundef %i.z) ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !632, !nonnull !7, !noundef !7 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !632, !noundef !7
  %i.ay = getelementptr i8, ptr %i.av, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ay, i64 1      ; 2 uses
  %.val4.i = load <16 x i8>, ptr %i.av, align 16, !noalias !633
  %i.ba = icmp sgt <16 x i8> %.val4.i, splat (i8 -1) ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !632, !noundef !7 ; 4 uses
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !629
  %i.be = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #30, !noalias !629 ; 8 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.loopexit165, label %bb.n, !prof !6

.loopexit165:                                     ; preds = %bb.j, %bb.b
  %.lcssa161 = phi ptr [ %i.h, %bb.b ], [ %i.at, %bb.j ] ; 2 uses
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #31
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.loopexit165
  unreachable

bb.k:                                             ; preds = %.loopexit165
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bh = atomicrmw add ptr %.lcssa161, i64 -4 release, align 8
  %i.bi = icmp eq i64 %i.bh, 6
  br i1 %i.bi, label %bb.l, label %.noexc18, !prof !6

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvMs0_NtCs2WklPA5QxgX_7dashmap4lockNtB5_9RawRwLock18unlock_shared_slow(ptr noundef nonnull align 8 %.lcssa161)
          to label %.noexc18 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.n:                                             ; preds = %bb.j
  store i64 1, ptr %i.be, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 1, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store ptr %i.at, ptr %.sroa.530.0..sroa_idx, align 8
  %i.bk = atomicrmw add ptr %i.y, i64 -1 release, align 8, !noalias !630
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.o, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB2q_4util11SharedValueNtB3U_15SourceRootInputEEEEEINtB34_7RawIterB3P_EEEEB3U_.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB1A_4util11SharedValueNtB34_15SourceRootInputEEEEE9drop_slowB34_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.a) #35
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB2q_4util11SharedValueNtB3U_15SourceRootInputEEEEEINtB34_7RawIterB3P_EEEEB3U_.exit unwind label %.thread.loopexit

.thread.loopexit:                                 ; preds = %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread.loopexit.split-lp:                        ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit.split-lp, %.thread.loopexit
  %.lcssa159 = phi ptr [ %i.av, %.thread.loopexit ], [ %i.j, %.thread.loopexit.split-lp ]
  %.lcssa156 = phi ptr [ %i.az, %.thread.loopexit ], [ %i.n, %.thread.loopexit.split-lp ]
  %.lcssa153 = phi <16 x i1> [ %i.ba, %.thread.loopexit ], [ %i.o, %.thread.loopexit.split-lp ]
  %.lcssa150 = phi ptr [ %i.bb, %.thread.loopexit ], [ %i.p, %.thread.loopexit.split-lp ]
  %.lcssa147 = phi i64 [ %i.bd, %.thread.loopexit ], [ %i.r, %.thread.loopexit.split-lp ]
  %.lcssa144 = phi ptr [ %i.be, %.thread.loopexit ], [ %i.s, %.thread.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.thread.loopexit ], [ %lpad.loopexit.split-lp, %.thread.loopexit.split-lp ]
  store ptr %.lcssa144, ptr %i.a, align 8
  store ptr %.lcssa159, ptr %.sroa.58.0..sroa_idx9, align 8
  store ptr %.lcssa150, ptr %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx9.sroa_idx, align 8
  store ptr %.lcssa156, ptr %.sroa.58.sroa.6.0..sroa.58.0..sroa_idx9.sroa_idx, align 8
  store <16 x i1> %.lcssa153, ptr %.sroa.58.sroa.7.0..sroa.58.0..sroa_idx9.sroa_idx, align 8
  store i64 %.lcssa147, ptr %i.b, align 8
  br label %.noexc18

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB2q_4util11SharedValueNtB3U_15SourceRootInputEEEEEINtB34_7RawIterB3P_EEEEB3U_.exit: ; preds = %bb.n, %bb.o
  store ptr %i.be, ptr %i.a, align 8
  store ptr %i.av, ptr %.sroa.58.0..sroa_idx9, align 8
  store ptr %i.bb, ptr %.sroa.58.sroa.5.0..sroa.58.0..sroa_idx9.sroa_idx, align 8
  store ptr %i.az, ptr %.sroa.58.sroa.6.0..sroa.58.0..sroa_idx9.sroa_idx, align 8
  store <16 x i1> %i.ba, ptr %.sroa.58.sroa.7.0..sroa.58.0..sroa_idx9.sroa_idx, align 8
  store i64 %i.bd, ptr %i.b, align 8
  %i.bm = add i64 %i.z, 1                         ; 2 uses
  store i64 %i.bm, ptr %i.c, align 8
  %i.bn = icmp eq i64 %i.bd, 0
  br i1 %i.bn, label %.lr.ph.peel.newph, label %._crit_edge, !llvm.loop !625

.noexc18:                                         ; preds = %bb.l, %bb.k, %.thread
  %.pn33 = phi { ptr, i32 } [ %lpad.phi, %.thread ], [ %i.bg, %bb.l ], [ %i.bg, %bb.k ]
  resume { ptr, i32 } %.pn33
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsW_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcSNtNtCsgIpRO4v45SJ_7base_db5input5CrateENtNtCshzWfHUSfYae_4core3fmt5Debug3fmtBL_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !guid !635 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = tail call noundef zeroext i1 @_RNvXsr_NtCshzWfHUSfYae_4core3fmtSNtNtCsgIpRO4v45SJ_7base_db5input5CrateNtB5_5Debug3fmtBz_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.d, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_Csjpcu9PwIgok_8smallvecNtB5_18CollectionAllocErrNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !guid !636 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !20, !noundef !7
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 16)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCshzWfHUSfYae_4core5alloc6layoutNtB5_11LayoutErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 !guid !637 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 11)
  ret i1 %i.a
}

; Function Attrs: norecurse nounwind nonlazybind uwtable
define hidden { i64, ptr } @_RNvXse_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_4IterINtNtNtB7_3vec3raw5EntryNtNtCsd9Lm8bEdjjY_5salsa5table4PageEKj3a_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #11 personality ptr @rust_eh_personality !guid !638 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8        ; 5 uses
  %.promoted12 = load ptr, ptr %i.b, align 8
  %i.c = icmp eq ptr %.promoted, %.promoted12
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.promoted14 = load i64, ptr %i.d, align 8      ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.promoted14, i64 58)
  %exitcond27 = icmp ugt i64 %.promoted14, 57
  br i1 %exitcond27, label %.loopexit, label %.lr.ph28

._crit_edge.loopexit:                             ; preds = %bb.d
  store i64 %i.q, ptr %i.d, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa = phi ptr [ %.promoted, %bb.a ], [ %i.y, %._crit_edge.loopexit ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.lcssa, i64 64
  store ptr %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !7 ; 3 uses
  %i.i = icmp ne i64 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add i64 %i.h, 1
  store i64 %i.j, ptr %i.g, align 8
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.b
  store i64 %i.q, ptr %i.d, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph, %._crit_edge
  %i.k = phi ptr [ %.lcssa, %._crit_edge ], [ %.promoted, %.lr.ph ], [ %i.y, %.loopexit.loopexit ]
  %.sroa.0.0 = phi i64 [ %i.h, %._crit_edge ], [ 0, %.lr.ph ], [ 0, %.loopexit.loopexit ]
  %i.l = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, ptr } %i.l, ptr %i.k, 1
  ret { i64, ptr } %i.m

bb.b:                                             ; preds = %bb.d
  %exitcond = icmp eq i64 %i.q, %umax
  br i1 %exitcond, label %.loopexit.loopexit, label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph, %bb.b
  %i.n = phi ptr [ %i.x, %bb.b ], [ %.promoted, %.lr.ph ]
  %i.o = phi ptr [ %i.y, %bb.b ], [ %.promoted, %.lr.ph ]
  %i.p = phi i64 [ %i.q, %bb.b ], [ %.promoted14, %.lr.ph ] ; 3 uses
  %i.q = add i64 %i.p, 1                          ; 4 uses
  %i.r = load ptr, ptr %0, align 8, !nonnull !7, !align !10, !noundef !7
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  %i.t = load atomic ptr, ptr %i.s acquire, align 8 ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph28
  %i.v = shl nuw nsw i64 32, %i.p                 ; 2 uses
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %i.t, i64 %i.v ; 2 uses
  store ptr %i.t, ptr %i.a, align 8
  store ptr %i.w, ptr %i.b, align 8
  store i64 %i.v, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph28
  %i.x = phi ptr [ %i.w, %bb.c ], [ %i.n, %.lr.ph28 ] ; 2 uses
  %i.y = phi ptr [ %i.t, %bb.c ], [ %i.o, %.lr.ph28 ] ; 4 uses
  %i.z = icmp eq ptr %i.y, %i.x
  br i1 %i.z, label %bb.b, label %._crit_edge.loopexit
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden { i64, ptr } @_RNvXsi_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7IterMutINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEKj3a_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2s_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #12 personality ptr @rust_eh_personality !guid !639 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8        ; 5 uses
  %.promoted12 = load ptr, ptr %i.b, align 8
  %i.c = icmp eq ptr %.promoted, %.promoted12
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !7, !align !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.promoted14 = load i64, ptr %i.d, align 8      ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.promoted14, i64 58)
  %exitcond27 = icmp ugt i64 %.promoted14, 57
  br i1 %exitcond27, label %.loopexit, label %.lr.ph28

._crit_edge.loopexit:                             ; preds = %bb.d
  store i64 %i.r, ptr %i.d, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa = phi ptr [ %.promoted, %bb.a ], [ %i.y, %._crit_edge.loopexit ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  store ptr %i.g, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !7 ; 3 uses
  %i.j = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add i64 %i.i, 1
  store i64 %i.k, ptr %i.h, align 8
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.b
  store i64 %i.r, ptr %i.d, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph, %._crit_edge
  %i.l = phi ptr [ %.lcssa, %._crit_edge ], [ %.promoted, %.lr.ph ], [ %i.y, %.loopexit.loopexit ]
  %.sroa.0.0 = phi i64 [ %i.i, %._crit_edge ], [ 0, %.lr.ph ], [ 0, %.loopexit.loopexit ]
  %i.m = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.n = insertvalue { i64, ptr } %i.m, ptr %i.l, 1
  ret { i64, ptr } %i.n

bb.b:                                             ; preds = %bb.d
  %exitcond = icmp eq i64 %i.r, %umax
  br i1 %exitcond, label %.loopexit.loopexit, label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph, %bb.b
  %i.o = phi ptr [ %i.x, %bb.b ], [ %.promoted, %.lr.ph ]
  %i.p = phi ptr [ %i.y, %bb.b ], [ %.promoted, %.lr.ph ]
  %i.q = phi i64 [ %i.r, %bb.b ], [ %.promoted14, %.lr.ph ] ; 3 uses
  %i.r = add i64 %i.q, 1                          ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !noundef !7 ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph28
  %i.v = shl nuw nsw i64 32, %i.q                 ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.v ; 2 uses
  store ptr %i.t, ptr %i.a, align 8
  store ptr %i.w, ptr %i.b, align 8
  store i64 %i.v, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph28
  %i.x = phi ptr [ %i.w, %bb.c ], [ %i.o, %.lr.ph28 ] ; 2 uses
  %i.y = phi ptr [ %i.t, %bb.c ], [ %i.p, %.lr.ph28 ] ; 4 uses
  %i.z = icmp eq ptr %i.y, %i.x
  br i1 %i.z, label %bb.b, label %._crit_edge.loopexit
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden { i64, ptr } @_RNvXsi_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7IterMutINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2w_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEKj3a_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2y_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #12 personality ptr @rust_eh_personality !guid !640 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8        ; 5 uses
  %.promoted12 = load ptr, ptr %i.b, align 8
  %i.c = icmp eq ptr %.promoted, %.promoted12
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !7, !align !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.promoted14 = load i64, ptr %i.d, align 8      ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.promoted14, i64 58)
  %exitcond27 = icmp ugt i64 %.promoted14, 57
  br i1 %exitcond27, label %.loopexit, label %.lr.ph28

._crit_edge.loopexit:                             ; preds = %bb.d
  store i64 %i.r, ptr %i.d, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa = phi ptr [ %.promoted, %bb.a ], [ %i.y, %._crit_edge.loopexit ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  store ptr %i.g, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !7 ; 3 uses
  %i.j = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add i64 %i.i, 1
  store i64 %i.k, ptr %i.h, align 8
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.b
  store i64 %i.r, ptr %i.d, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph, %._crit_edge
  %i.l = phi ptr [ %.lcssa, %._crit_edge ], [ %.promoted, %.lr.ph ], [ %i.y, %.loopexit.loopexit ]
  %.sroa.0.0 = phi i64 [ %i.i, %._crit_edge ], [ 0, %.lr.ph ], [ 0, %.loopexit.loopexit ]
  %i.m = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.n = insertvalue { i64, ptr } %i.m, ptr %i.l, 1
  ret { i64, ptr } %i.n

bb.b:                                             ; preds = %bb.d
  %exitcond = icmp eq i64 %i.r, %umax
  br i1 %exitcond, label %.loopexit.loopexit, label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph, %bb.b
  %i.o = phi ptr [ %i.x, %bb.b ], [ %.promoted, %.lr.ph ]
  %i.p = phi ptr [ %i.y, %bb.b ], [ %.promoted, %.lr.ph ]
  %i.q = phi i64 [ %i.r, %bb.b ], [ %.promoted14, %.lr.ph ] ; 3 uses
  %i.r = add i64 %i.q, 1                          ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !noundef !7 ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph28
  %i.v = shl nuw nsw i64 32, %i.q                 ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.v ; 2 uses
  store ptr %i.t, ptr %i.a, align 8
  store ptr %i.w, ptr %i.b, align 8
  store i64 %i.v, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph28
  %i.x = phi ptr [ %i.w, %bb.c ], [ %i.o, %.lr.ph28 ] ; 2 uses
  %i.y = phi ptr [ %i.t, %bb.c ], [ %i.p, %.lr.ph28 ] ; 4 uses
  %i.z = icmp eq ptr %i.y, %i.x
  br i1 %i.z, label %bb.b, label %._crit_edge.loopexit
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden { i64, ptr } @_RNvXsi_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7IterMutINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2w_15EditionedFileId5parse1__21parse__Configuration_EEEKj3a_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB2y_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #12 personality ptr @rust_eh_personality !guid !641 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8        ; 5 uses
  %.promoted12 = load ptr, ptr %i.b, align 8
  %i.c = icmp eq ptr %.promoted, %.promoted12
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !nonnull !7, !align !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.promoted14 = load i64, ptr %i.d, align 8      ; 3 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.promoted14, i64 58)
  %exitcond27 = icmp ugt i64 %.promoted14, 57
  br i1 %exitcond27, label %.loopexit, label %.lr.ph28

._crit_edge.loopexit:                             ; preds = %bb.d
  store i64 %i.r, ptr %i.d, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa = phi ptr [ %.promoted, %bb.a ], [ %i.y, %._crit_edge.loopexit ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  store ptr %i.g, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !7 ; 3 uses
  %i.j = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add i64 %i.i, 1
  store i64 %i.k, ptr %i.h, align 8
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.b
  store i64 %i.r, ptr %i.d, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph, %._crit_edge
  %i.l = phi ptr [ %.lcssa, %._crit_edge ], [ %.promoted, %.lr.ph ], [ %i.y, %.loopexit.loopexit ]
  %.sroa.0.0 = phi i64 [ %i.i, %._crit_edge ], [ 0, %.lr.ph ], [ 0, %.loopexit.loopexit ]
  %i.m = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.n = insertvalue { i64, ptr } %i.m, ptr %i.l, 1
  ret { i64, ptr } %i.n

bb.b:                                             ; preds = %bb.d
  %exitcond = icmp eq i64 %i.r, %umax
  br i1 %exitcond, label %.loopexit.loopexit, label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph, %bb.b
  %i.o = phi ptr [ %i.x, %bb.b ], [ %.promoted, %.lr.ph ]
  %i.p = phi ptr [ %i.y, %bb.b ], [ %.promoted, %.lr.ph ]
  %i.q = phi i64 [ %i.r, %bb.b ], [ %.promoted14, %.lr.ph ] ; 3 uses
  %i.r = add i64 %i.q, 1                          ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !noundef !7 ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph28
  %i.v = shl nuw nsw i64 32, %i.q                 ; 2 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.v ; 2 uses
  store ptr %i.t, ptr %i.a, align 8
  store ptr %i.w, ptr %i.b, align 8
  store i64 %i.v, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph28
  %i.x = phi ptr [ %i.w, %bb.c ], [ %i.o, %.lr.ph28 ] ; 2 uses
  %i.y = phi ptr [ %i.t, %bb.c ], [ %i.p, %.lr.ph28 ] ; 4 uses
  %i.z = icmp eq ptr %i.y, %i.x
  br i1 %i.z, label %bb.b, label %._crit_edge.loopexit
}

; Function Attrs: inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXsl_NtNtCshzWfHUSfYae_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCscAsMj0W7j8b_3std6thread9lifecycle15spawn_uncheckedNCNCNvXs4_CsjJXvCMGntp8_6syntaxINtB2k_5ParseNtNtNtNtB2k_3ast9generated5nodes10SourceFileENtNtNtB9_3ops4drop4Drop4drop00zEs_00EINtNtB3F_8function6FnOnceuE9call_onceCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #4 !guid !642 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  call fastcc void @_RNCNCINvNtNtCscAsMj0W7j8b_3std6thread9lifecycle15spawn_uncheckedNCNCNvXs4_CsjJXvCMGntp8_6syntaxINtB1a_5ParseNtNtNtNtB1a_3ast9generated5nodes10SourceFileENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop00zEs_00CsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.a) #36
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXsp_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_EINtNtNtCshzWfHUSfYae_4core3ops5index5IndexjE5indexCsgIpRO4v45SJ_7base_db(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !645 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noalias !646, !noundef !7 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsgIpRO4v45SJ_7base_db.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !noalias !646, !nonnull !7, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noalias !646, !noundef !7
  br label %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsgIpRO4v45SJ_7base_db.exit

_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsgIpRO4v45SJ_7base_db.exit: ; preds = %bb.a, %bb.b
  %.sink11.i = phi ptr [ %i.d, %bb.b ], [ %i.c, %bb.a ]
  %.sink10.i = phi i64 [ %i.f, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.g = icmp ult i64 %1, %.sink10.i
  br i1 %i.g, label %_RNvXs0_NtNtCshzWfHUSfYae_4core5slice5indexjINtB5_10SliceIndexSNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionE5indexCsgIpRO4v45SJ_7base_db.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsgIpRO4v45SJ_7base_db.exit
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef range(i64 0, 1152921504606846976) %.sink10.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #29
  unreachable

_RNvXs0_NtNtCshzWfHUSfYae_4core5slice5indexjINtB5_10SliceIndexSNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionE5indexCsgIpRO4v45SJ_7base_db.exit: ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsgIpRO4v45SJ_7base_db.exit
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %.sink11.i, i64 %1
  ret ptr %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !647 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = load i64, ptr %0, align 8, !noundef !7   ; 2 uses
  %i.c = icmp ugt i64 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.b, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionEECsgIpRO4v45SJ_7base_db.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionEECsgIpRO4v45SJ_7base_db.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionEECsgIpRO4v45SJ_7base_db.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionEECsgIpRO4v45SJ_7base_db.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionEECsgIpRO4v45SJ_7base_db.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #13

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #10

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs0_NtNtNtNtCscAsMj0W7j8b_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #20

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtCsbSS6DM8SDEO_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #10

; Function Attrs: nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsgIpRO4v45SJ_7base_db5input5CrateuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1x_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_NtNtCscAsMj0W7j8b_3std4sync4mpmcINtB5_6SenderNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsi_NtNtCscAsMj0W7j8b_3std4sync4mpmcINtB5_8ReceiverNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs6_NtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB5_5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtBT_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB23_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs6_NtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB5_5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtBT_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB27_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB29_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs6_NtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB5_5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtBT_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB27_15EditionedFileId5parse1__21parse__Configuration_EEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB29_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs6_NtNtCsg1bCijyqAnf_6boxcar3vec3rawINtB5_5EntryNtNtCsd9Lm8bEdjjY_5salsa5table4PageENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsgIpRO4v45SJ_7base_db(ptr noalias nofree noundef align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCshzWfHUSfYae_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXNtNtCscAsMj0W7j8b_3std6thread9spawnhookNtB2_10SpawnHooksNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtNtCscAsMj0W7j8b_3std3sys6thread4unixNtB5_6ThreadNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i64 1, 0) i64 @_RNvMNtNtCscAsMj0W7j8b_3std6thread2idNtB2_8ThreadId3new() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs_NtNtCscAsMj0W7j8b_3std6thread6threadNtB4_6Thread3new(i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCscAsMj0W7j8b_3std6thread9spawnhook15run_spawn_hooks(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCscAsMj0W7j8b_3std6thread6scopedNtB2_9ScopeData29increment_num_running_threads(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMs0_NtNtNtCscAsMj0W7j8b_3std3sys6thread4unixNtB5_6Thread3new(i64 noundef, ptr noalias noundef nonnull align 8) unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #22

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare { ptr, ptr } @_RNvNvNtCscAsMj0W7j8b_3std9panicking12catch_unwind7cleanup(ptr noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXs1i_NtCsbSS6DM8SDEO_5alloc4syncINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB8_3vec9into_iter8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsgIpRO4v45SJ_7base_db5input5CrateuEENvMs0_B1V_B1S_3keyEINtB6_10ToArcSliceB2p_E12to_arc_sliceB2t_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCscAsMj0W7j8b_3std3env6var_osReECsgIpRO4v45SJ_7base_db(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCshzWfHUSfYae_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtCscAsMj0W7j8b_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNCNvXs4_CsjJXvCMGntp8_6syntaxINtB25_5ParseNtNtNtNtB25_3ast9generated5nodes10SourceFileENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop00zEs_000uEB25_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #8

; Function Attrs: noinline noreturn nonlazybind uwtable
declare void @_RINvNtNtCscAsMj0W7j8b_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNvXs4_CsjJXvCMGntp8_6syntaxINtB1h_5ParseNtNtNtNtB1h_3ast9generated5nodes10SourceFileENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop00zEB1h_(i64 noundef range(i64 0, 3), ptr noundef) unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #20

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RNvMNtNtNtNtCscAsMj0W7j8b_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCsaMQbKjKCVRW_12tracing_core10dispatcher5StateE16get_or_init_slowCsgIpRO4v45SJ_7base_db(ptr noundef nonnull align 8) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvNtNtCscAsMj0W7j8b_3std6thread9functions21available_parallelism() unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #20

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs3_CsbdtVtHYmo6x_8thin_vecINtB5_7ThinVecNtNtCsd9Lm8bEdjjY_5salsa5cycle9CycleHeadE13with_capacityCsgIpRO4v45SJ_7base_db(i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCscAsMj0W7j8b_3std4sync4mpmc7channelNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeECsgIpRO4v45SJ_7base_db(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgIpRO4v45SJ_7base_db(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

end_hunk_0
begin_hunk_1_@llvm.umin.i64
!409 = distinct !{!409, !408, !"_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB4_11get_or_initNCNvMs_NvNvB1N_18source_root_crates1__NtB38_33source_root_crates_Configuration_14fn_ingredient_s_0E0zE0B1N_: argument 0"}
!410 = distinct !{!410, i1 true, !"_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE11get_or_initNCNvMs_NvNvB1N_18source_root_crates1__NtB2O_33source_root_crates_Configuration_14fn_ingredient_s_0E0B1N_"}
!411 = distinct !{!411, !410, !"_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE11get_or_initNCNvMs_NvNvB1N_18source_root_crates1__NtB2O_33source_root_crates_Configuration_14fn_ingredient_s_0E0B1N_: argument 0"}
!412 = distinct !{!412, i1 true, !"_RNCNvMs_NvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__NtB6_33source_root_crates_Configuration_14fn_ingredient_s_0Ba_"}
!413 = distinct !{!413, !412, !"_RNCNvMs_NvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__NtB6_33source_root_crates_Configuration_14fn_ingredient_s_0Ba_: argument 0"}
!414 = distinct !{null, null, null}
!415 = !{i64 -7874384585816049925}
!416 = !{!409}
!417 = !{!413, !411, !409}
!418 = distinct !{!418, i1 true, !"_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB4_11get_or_initNCNvMs_NvNvMs8_NtB1N_17editioned_file_idNtB3g_15EditionedFileId12parse_errors1__NtB38_28parse_errors__Configuration_14fn_ingredient_s_0E0zE0B1N_"}
!419 = distinct !{!419, !418, !"_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB4_11get_or_initNCNvMs_NvNvMs8_NtB1N_17editioned_file_idNtB3g_15EditionedFileId12parse_errors1__NtB38_28parse_errors__Configuration_14fn_ingredient_s_0E0zE0B1N_: argument 0"}
!420 = distinct !{!420, i1 true, !"_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE11get_or_initNCNvMs_NvNvMs8_NtB1N_17editioned_file_idNtB2W_15EditionedFileId12parse_errors1__NtB2O_28parse_errors__Configuration_14fn_ingredient_s_0E0B1N_"}
!421 = distinct !{!421, !420, !"_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE11get_or_initNCNvMs_NvNvMs8_NtB1N_17editioned_file_idNtB2W_15EditionedFileId12parse_errors1__NtB2O_28parse_errors__Configuration_14fn_ingredient_s_0E0B1N_: argument 0"}
!422 = distinct !{!422, i1 true, !"_RNCNvMs_NvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtBe_15EditionedFileId12parse_errors1__NtB6_28parse_errors__Configuration_14fn_ingredient_s_0Bg_"}
!423 = distinct !{!423, !422, !"_RNCNvMs_NvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtBe_15EditionedFileId12parse_errors1__NtB6_28parse_errors__Configuration_14fn_ingredient_s_0Bg_: argument 0"}
!424 = distinct !{null, null, null}
!425 = !{i64 7271634714235675530}
!426 = !{!419}
!427 = !{!423, !421, !419}
!428 = distinct !{!428, i1 true, !"_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB4_11get_or_initNCNvMs_NvNvMs8_NtB1N_17editioned_file_idNtB3g_15EditionedFileId5parse1__NtB38_21parse__Configuration_14fn_ingredient_s_0E0zE0B1N_"}
!429 = distinct !{!429, !428, !"_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB4_11get_or_initNCNvMs_NvNvMs8_NtB1N_17editioned_file_idNtB3g_15EditionedFileId5parse1__NtB38_21parse__Configuration_14fn_ingredient_s_0E0zE0B1N_: argument 0"}
!430 = distinct !{!430, i1 true, !"_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE11get_or_initNCNvMs_NvNvMs8_NtB1N_17editioned_file_idNtB2W_15EditionedFileId5parse1__NtB2O_21parse__Configuration_14fn_ingredient_s_0E0B1N_"}
!431 = distinct !{!431, !430, !"_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE11get_or_initNCNvMs_NvNvMs8_NtB1N_17editioned_file_idNtB2W_15EditionedFileId5parse1__NtB2O_21parse__Configuration_14fn_ingredient_s_0E0B1N_: argument 0"}
!432 = distinct !{!432, i1 true, !"_RNCNvMs_NvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtBe_15EditionedFileId5parse1__NtB6_21parse__Configuration_14fn_ingredient_s_0Bg_"}
!433 = distinct !{!433, !432, !"_RNCNvMs_NvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtBe_15EditionedFileId5parse1__NtB6_21parse__Configuration_14fn_ingredient_s_0Bg_: argument 0"}
!434 = distinct !{null, null, null}
!435 = !{i64 3864167128602207895}
!436 = !{!429}
!437 = !{!433, !431, !429}
!438 = !{i64 4287289693571005506}
!439 = distinct !{!439, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgIpRO4v45SJ_7base_db"}
!440 = distinct !{!440, !439, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgIpRO4v45SJ_7base_db: argument 0"}
!441 = distinct !{!441, i1 true, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgIpRO4v45SJ_7base_db"}
!442 = distinct !{!442, !441, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgIpRO4v45SJ_7base_db: argument 0"}
!443 = !{i64 5948826525325712776}
!444 = !{!440}
!445 = !{!442}
!446 = distinct !{!446, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgIpRO4v45SJ_7base_db"}
!447 = distinct !{!447, !446, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgIpRO4v45SJ_7base_db: argument 0"}
!448 = distinct !{!448, i1 true, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgIpRO4v45SJ_7base_db"}
!449 = distinct !{!449, !448, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgIpRO4v45SJ_7base_db: argument 0"}
!450 = !{i64 -167433009287935384}
!451 = !{!447}
!452 = !{!449}
!453 = !{i64 9148281425648138159}
!454 = distinct !{!454, i1 true, !"_RNvYNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtBd_4mpsc6SenderNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE10initializeNCINvB1d_11get_or_initNCNvXs4_CsjJXvCMGntp8_6syntaxINtB3w_5ParseNtNtNtNtB3w_3ast9generated5nodes10SourceFileENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0E0zE0E0INtNtB4R_8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsgIpRO4v45SJ_7base_db"}
!455 = distinct !{!455, !454, !"_RNvYNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtBd_4mpsc6SenderNtNtNtCs9GitHPCrz2Q_5rowan5green4node9GreenNodeEE10initializeNCINvB1d_11get_or_initNCNvXs4_CsjJXvCMGntp8_6syntaxINtB3w_5ParseNtNtNtNtB3w_3ast9generated5nodes10SourceFileENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop0E0zE0E0INtNtB4R_8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsgIpRO4v45SJ_7base_db: argument 0"}
!456 = !{i64 7162595087737132461}
!457 = !{!455}
!458 = distinct !{!458, i1 true, !"_RNvYNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB1d_11get_or_initNCNvMs_NvNvB2B_18source_root_crates1__NtB3X_33source_root_crates_Configuration_14fn_ingredient_s_0E0zE0E0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB2B_"}
!459 = distinct !{!459, !458, !"_RNvYNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB1d_11get_or_initNCNvMs_NvNvB2B_18source_root_crates1__NtB3X_33source_root_crates_Configuration_14fn_ingredient_s_0E0zE0E0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB2B_: argument 0"}
!460 = distinct !{!460, i1 true, !"_RNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB1a_11get_or_initNCNvMs_NvNvB2y_18source_root_crates1__NtB3U_33source_root_crates_Configuration_14fn_ingredient_s_0E0zE0E0B2y_"}
!461 = distinct !{!461, !460, !"_RNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB1a_11get_or_initNCNvMs_NvNvB2y_18source_root_crates1__NtB3U_33source_root_crates_Configuration_14fn_ingredient_s_0E0zE0E0B2y_: argument 0"}
!462 = distinct !{!462, i1 true, !"_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB4_11get_or_initNCNvMs_NvNvB1N_18source_root_crates1__NtB38_33source_root_crates_Configuration_14fn_ingredient_s_0E0zE0B1N_"}
!463 = distinct !{!463, !462, !"_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB4_11get_or_initNCNvMs_NvNvB1N_18source_root_crates1__NtB38_33source_root_crates_Configuration_14fn_ingredient_s_0E0zE0B1N_: argument 0"}
!464 = distinct !{!464, i1 true, !"_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE11get_or_initNCNvMs_NvNvB1N_18source_root_crates1__NtB2O_33source_root_crates_Configuration_14fn_ingredient_s_0E0B1N_"}
!465 = distinct !{!465, !464, !"_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE11get_or_initNCNvMs_NvNvB1N_18source_root_crates1__NtB2O_33source_root_crates_Configuration_14fn_ingredient_s_0E0B1N_: argument 0"}
!466 = distinct !{!466, i1 true, !"_RNCNvMs_NvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__NtB6_33source_root_crates_Configuration_14fn_ingredient_s_0Ba_"}
!467 = distinct !{!467, !466, !"_RNCNvMs_NvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__NtB6_33source_root_crates_Configuration_14fn_ingredient_s_0Ba_: argument 0"}
!468 = distinct !{null, ptr @_RNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB1a_11get_or_initNCNvMs_NvNvB2y_18source_root_crates1__NtB3U_33source_root_crates_Configuration_14fn_ingredient_s_0E0zE0E0B2y_, null, null, null}
!469 = !{i64 6475160869556664553}
!470 = !{!459}
!471 = !{!461}
!472 = !{!461, !459}
!473 = !{!463, !461, !459}
!474 = !{!467, !465, !463, !461, !459}
!475 = distinct !{!475, i1 true, !"_RNvYNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB1d_11get_or_initNCNvMs_NvNvMs8_NtB2B_17editioned_file_idNtB45_15EditionedFileId12parse_errors1__NtB3X_28parse_errors__Configuration_14fn_ingredient_s_0E0zE0E0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB2B_"}
!476 = distinct !{!476, !475, !"_RNvYNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB1d_11get_or_initNCNvMs_NvNvMs8_NtB2B_17editioned_file_idNtB45_15EditionedFileId12parse_errors1__NtB3X_28parse_errors__Configuration_14fn_ingredient_s_0E0zE0E0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB2B_: argument 0"}
!477 = distinct !{!477, i1 true, !"_RNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB1a_11get_or_initNCNvMs_NvNvMs8_NtB2y_17editioned_file_idNtB42_15EditionedFileId12parse_errors1__NtB3U_28parse_errors__Configuration_14fn_ingredient_s_0E0zE0E0B2y_"}
!478 = distinct !{!478, !477, !"_RNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB1a_11get_or_initNCNvMs_NvNvMs8_NtB2y_17editioned_file_idNtB42_15EditionedFileId12parse_errors1__NtB3U_28parse_errors__Configuration_14fn_ingredient_s_0E0zE0E0B2y_: argument 0"}
!479 = distinct !{!479, i1 true, !"_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB4_11get_or_initNCNvMs_NvNvMs8_NtB1N_17editioned_file_idNtB3g_15EditionedFileId12parse_errors1__NtB38_28parse_errors__Configuration_14fn_ingredient_s_0E0zE0B1N_"}
!480 = distinct !{!480, !479, !"_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB4_11get_or_initNCNvMs_NvNvMs8_NtB1N_17editioned_file_idNtB3g_15EditionedFileId12parse_errors1__NtB38_28parse_errors__Configuration_14fn_ingredient_s_0E0zE0B1N_: argument 0"}
!481 = distinct !{!481, i1 true, !"_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE11get_or_initNCNvMs_NvNvMs8_NtB1N_17editioned_file_idNtB2W_15EditionedFileId12parse_errors1__NtB2O_28parse_errors__Configuration_14fn_ingredient_s_0E0B1N_"}
!482 = distinct !{!482, !481, !"_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE11get_or_initNCNvMs_NvNvMs8_NtB1N_17editioned_file_idNtB2W_15EditionedFileId12parse_errors1__NtB2O_28parse_errors__Configuration_14fn_ingredient_s_0E0B1N_: argument 0"}
!483 = distinct !{!483, i1 true, !"_RNCNvMs_NvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtBe_15EditionedFileId12parse_errors1__NtB6_28parse_errors__Configuration_14fn_ingredient_s_0Bg_"}
!484 = distinct !{!484, !483, !"_RNCNvMs_NvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtBe_15EditionedFileId12parse_errors1__NtB6_28parse_errors__Configuration_14fn_ingredient_s_0Bg_: argument 0"}
!485 = distinct !{null, ptr @_RNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB1a_11get_or_initNCNvMs_NvNvMs8_NtB2y_17editioned_file_idNtB42_15EditionedFileId12parse_errors1__NtB3U_28parse_errors__Configuration_14fn_ingredient_s_0E0zE0E0B2y_, null, null, null}
!486 = !{i64 6236451572213161632}
!487 = !{!476}
!488 = !{!478}
!489 = !{!478, !476}
!490 = !{!480, !478, !476}
!491 = !{!484, !482, !480, !478, !476}
!492 = distinct !{!492, i1 true, !"_RNvYNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB1d_11get_or_initNCNvMs_NvNvMs8_NtB2B_17editioned_file_idNtB45_15EditionedFileId5parse1__NtB3X_21parse__Configuration_14fn_ingredient_s_0E0zE0E0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB2B_"}
!493 = distinct !{!493, !492, !"_RNvYNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB1d_11get_or_initNCNvMs_NvNvMs8_NtB2B_17editioned_file_idNtB45_15EditionedFileId5parse1__NtB3X_21parse__Configuration_14fn_ingredient_s_0E0zE0E0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB2B_: argument 0"}
!494 = distinct !{!494, i1 true, !"_RNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB1a_11get_or_initNCNvMs_NvNvMs8_NtB2y_17editioned_file_idNtB42_15EditionedFileId5parse1__NtB3U_21parse__Configuration_14fn_ingredient_s_0E0zE0E0B2y_"}
!495 = distinct !{!495, !494, !"_RNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB1a_11get_or_initNCNvMs_NvNvMs8_NtB2y_17editioned_file_idNtB42_15EditionedFileId5parse1__NtB3U_21parse__Configuration_14fn_ingredient_s_0E0zE0E0B2y_: argument 0"}
!496 = distinct !{!496, i1 true, !"_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB4_11get_or_initNCNvMs_NvNvMs8_NtB1N_17editioned_file_idNtB3g_15EditionedFileId5parse1__NtB38_21parse__Configuration_14fn_ingredient_s_0E0zE0B1N_"}
!497 = distinct !{!497, !496, !"_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB4_11get_or_initNCNvMs_NvNvMs8_NtB1N_17editioned_file_idNtB3g_15EditionedFileId5parse1__NtB38_21parse__Configuration_14fn_ingredient_s_0E0zE0B1N_: argument 0"}
!498 = distinct !{!498, i1 true, !"_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE11get_or_initNCNvMs_NvNvMs8_NtB1N_17editioned_file_idNtB2W_15EditionedFileId5parse1__NtB2O_21parse__Configuration_14fn_ingredient_s_0E0B1N_"}
!499 = distinct !{!499, !498, !"_RNCINvMNtNtCscAsMj0W7j8b_3std4sync9once_lockINtB5_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE11get_or_initNCNvMs_NvNvMs8_NtB1N_17editioned_file_idNtB2W_15EditionedFileId5parse1__NtB2O_21parse__Configuration_14fn_ingredient_s_0E0B1N_: argument 0"}
!500 = distinct !{!500, i1 true, !"_RNCNvMs_NvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtBe_15EditionedFileId5parse1__NtB6_21parse__Configuration_14fn_ingredient_s_0Bg_"}
!501 = distinct !{!501, !500, !"_RNCNvMs_NvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtBe_15EditionedFileId5parse1__NtB6_21parse__Configuration_14fn_ingredient_s_0Bg_: argument 0"}
!502 = distinct !{null, ptr @_RNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockINtNtCsd9Lm8bEdjjY_5salsa5views18DatabaseDownCasterDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EE10initializeNCINvB1a_11get_or_initNCNvMs_NvNvMs8_NtB2y_17editioned_file_idNtB42_15EditionedFileId5parse1__NtB3U_21parse__Configuration_14fn_ingredient_s_0E0zE0E0B2y_, null, null, null}
!503 = !{i64 1689581344246088197}
!504 = !{!493}
!505 = !{!495}
!506 = !{!495, !493}
!507 = !{!497, !495, !493}
!508 = !{!501, !499, !497, !495, !493}
!509 = distinct !{!509, i1 true, !"_RNvYNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsE10initializeNCINvB1d_11get_or_initNCNvB1L_17empty_cycle_heads0E0zE0E0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsgIpRO4v45SJ_7base_db"}
!510 = distinct !{!510, !509, !"_RNvYNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsE10initializeNCINvB1d_11get_or_initNCNvB1L_17empty_cycle_heads0E0zE0E0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCsgIpRO4v45SJ_7base_db: argument 0"}
!511 = distinct !{!511, i1 true, !"_RNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsE10initializeNCINvB1a_11get_or_initNCNvB1I_17empty_cycle_heads0E0zE0E0CsgIpRO4v45SJ_7base_db"}
!512 = distinct !{!512, !511, !"_RNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockNtNtCsd9Lm8bEdjjY_5salsa5cycle10CycleHeadsE10initializeNCINvB1a_11get_or_initNCNvB1I_17empty_cycle_heads0E0zE0E0CsgIpRO4v45SJ_7base_db: argument 0"}
!513 = !{i64 7010310849855675265}
!514 = !{!510}
!515 = !{!512}
!516 = !{!512, !510}
!517 = distinct !{!517, i1 true, !"_RNvYNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockjE10initializeNCINvB1d_11get_or_initNCNvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB2r_14IngredientImplNtCsgIpRO4v45SJ_7base_db20InternedSourceRootIdE3new0E0zE0E0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3l_"}
!518 = distinct !{!518, !517, !"_RNvYNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockjE10initializeNCINvB1d_11get_or_initNCNvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB2r_14IngredientImplNtCsgIpRO4v45SJ_7base_db20InternedSourceRootIdE3new0E0zE0E0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3l_: argument 0"}
!519 = distinct !{!519, i1 true, !"_RNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockjE10initializeNCINvB1a_11get_or_initNCNvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB2o_14IngredientImplNtCsgIpRO4v45SJ_7base_db20InternedSourceRootIdE3new0E0zE0E0B3i_"}
!520 = distinct !{!520, !519, !"_RNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockjE10initializeNCINvB1a_11get_or_initNCNvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB2o_14IngredientImplNtCsgIpRO4v45SJ_7base_db20InternedSourceRootIdE3new0E0zE0E0B3i_: argument 0"}
!521 = distinct !{!521, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgIpRO4v45SJ_7base_db"}
!522 = distinct !{!522, !521, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgIpRO4v45SJ_7base_db: argument 0"}
!523 = distinct !{!523, i1 true, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgIpRO4v45SJ_7base_db"}
!524 = distinct !{!524, !523, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgIpRO4v45SJ_7base_db: argument 0"}
!525 = !{i64 2174219943332290034}
!526 = !{!518}
!527 = !{!520}
!528 = !{!520, !518}
!529 = !{!522, !520, !518}
!530 = !{!524}
!531 = distinct !{!531, i1 true, !"_RNvYNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockjE10initializeNCINvB1d_11get_or_initNCNvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB2r_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE3new0E0zE0E0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3n_"}
!532 = distinct !{!532, !531, !"_RNvYNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtBb_4Once15call_once_forceNCINvMNtBd_9once_lockINtB1e_8OnceLockjE10initializeNCINvB1d_11get_or_initNCNvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB2r_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE3new0E0zE0E0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB3n_: argument 0"}
!533 = distinct !{!533, i1 true, !"_RNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockjE10initializeNCINvB1a_11get_or_initNCNvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB2o_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE3new0E0zE0E0B3k_"}
!534 = distinct !{!534, !533, !"_RNCINvMs0_NtNtCscAsMj0W7j8b_3std4sync4onceNtB8_4Once15call_once_forceNCINvMNtBa_9once_lockINtB1b_8OnceLockjE10initializeNCINvB1a_11get_or_initNCNvMs5_NtCsd9Lm8bEdjjY_5salsa8internedINtB2o_14IngredientImplNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdE3new0E0zE0E0B3k_: argument 0"}
!535 = distinct !{!535, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgIpRO4v45SJ_7base_db"}
!536 = distinct !{!536, !535, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgIpRO4v45SJ_7base_db: argument 0"}
!537 = distinct !{!537, i1 true, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgIpRO4v45SJ_7base_db"}
!538 = distinct !{!538, !537, !"_RINvNtNtNtCshzWfHUSfYae_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECsgIpRO4v45SJ_7base_db: argument 0"}
!539 = !{i64 -388649791599567974}
!540 = !{!532}
!541 = !{!534}
!542 = !{!534, !532}
!543 = !{!536, !534, !532}
!544 = !{!538}
!545 = distinct !{!545, i1 true, !"_RNCINvNtNtCscAsMj0W7j8b_3std6thread9lifecycle15spawn_uncheckedNCNCNvXs4_CsjJXvCMGntp8_6syntaxINtB18_5ParseNtNtNtNtB18_3ast9generated5nodes10SourceFileENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop00zEs_0CsgIpRO4v45SJ_7base_db"}
!546 = distinct !{!546, !545, !"_RNCINvNtNtCscAsMj0W7j8b_3std6thread9lifecycle15spawn_uncheckedNCNCNvXs4_CsjJXvCMGntp8_6syntaxINtB18_5ParseNtNtNtNtB18_3ast9generated5nodes10SourceFileENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop00zEs_0CsgIpRO4v45SJ_7base_db: argument 0"}
!547 = distinct !{!547, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketzEEECsgIpRO4v45SJ_7base_db"}
!548 = distinct !{!548, !547, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketzEEECsgIpRO4v45SJ_7base_db: argument 0"}
!549 = distinct !{!549, i1 true, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketzEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsgIpRO4v45SJ_7base_db"}
!550 = distinct !{!550, !549, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketzEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsgIpRO4v45SJ_7base_db: argument 0"}
!551 = distinct !{!551, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketzEEECsgIpRO4v45SJ_7base_db"}
!552 = distinct !{!552, !551, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketzEEECsgIpRO4v45SJ_7base_db: argument 0"}
!553 = distinct !{!553, i1 true, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketzEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsgIpRO4v45SJ_7base_db"}
!554 = distinct !{!554, !553, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcINtNtNtCscAsMj0W7j8b_3std6thread9lifecycle6PacketzEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsgIpRO4v45SJ_7base_db: argument 0"}
!555 = !{i64 -8976050332066840567}
!556 = !{!546}
!557 = !{!550, !548, !546}
!558 = !{!554, !552, !546}
!559 = !{i64 -8176572432616118403}
!560 = !{i64 -7718649006900356987}
!561 = !{i64 -2762198425589999458}
!562 = !{i64 5921511647510217749}
!563 = !{i64 -838842653477138028}
!564 = !{i64 -5058540176963105135}
!565 = !{i64 7130028050559956549}
!566 = !{i64 -2936794494424232092}
!567 = !{i64 -8886065958676003147}
!568 = !{i64 -1373098755110539985}
!569 = distinct !{!569, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsgIpRO4v45SJ_7base_db"}
!570 = distinct !{!570, !569, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsgIpRO4v45SJ_7base_db: argument 0"}
!571 = !{i64 -6955913705655077403}
!572 = !{!570}
!573 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!574 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!575 = distinct !{!575, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E10triple_mutCsgIpRO4v45SJ_7base_db"}
!576 = distinct !{!576, !575, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E10triple_mutCsgIpRO4v45SJ_7base_db: argument 1"}
!577 = distinct !{!577, i1 true, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsjpcu9PwIgok_8smallvec18CollectionAllocErrE6unwrapCsgIpRO4v45SJ_7base_db"}
!578 = distinct !{!578, !577, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultNtNtNtB4_5alloc6layout6LayoutNtCsjpcu9PwIgok_8smallvec18CollectionAllocErrE6unwrapCsgIpRO4v45SJ_7base_db: argument 0"}
!579 = !{i64 -2889888160424523869}
!580 = !{!576}
!581 = !{!"branch_weights", i32 2000, i32 2002}
!582 = !{!578}
!583 = !{i64 -5637459123684202687}
!584 = !{i64 5450551333556259879}
!585 = !{i64 3202420964653003243}
!586 = distinct !{!586, i1 true, !"_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEKj3a_E8truncateB2s_"}
!587 = distinct !{!587, !586, !"_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEKj3a_E8truncateB2s_: argument 0"}
!588 = distinct !{!588, i1 true, !"_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEKj3a_E11take_bucketB2s_"}
!589 = distinct !{!589, !588, !"_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvCsgIpRO4v45SJ_7base_db18source_root_crates1__33source_root_crates_Configuration_EEEKj3a_E11take_bucketB2s_: argument 0"}
!590 = !{i64 -1510733358732731420}
!591 = !{!587}
!592 = !{!589, !587}
!593 = distinct !{!593, i1 true, !"_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2w_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEKj3a_E8truncateB2y_"}
!594 = distinct !{!594, !593, !"_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2w_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEKj3a_E8truncateB2y_: argument 0"}
!595 = distinct !{!595, i1 true, !"_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2w_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEKj3a_E11take_bucketB2y_"}
!596 = distinct !{!596, !595, !"_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2w_15EditionedFileId12parse_errors1__28parse_errors__Configuration_EEEKj3a_E11take_bucketB2y_: argument 0"}
!597 = !{i64 4198297337848927062}
!598 = !{!594}
!599 = !{!596, !594}
!600 = distinct !{!600, i1 true, !"_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2w_15EditionedFileId5parse1__21parse__Configuration_EEEKj3a_E8truncateB2y_"}
!601 = distinct !{!601, !600, !"_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2w_15EditionedFileId5parse1__21parse__Configuration_EEEKj3a_E8truncateB2y_: argument 0"}
!602 = distinct !{!602, i1 true, !"_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2w_15EditionedFileId5parse1__21parse__Configuration_EEEKj3a_E11take_bucketB2y_"}
!603 = distinct !{!603, !602, !"_RNvMs2_NtCsg1bCijyqAnf_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryINtNtNtCsd9Lm8bEdjjY_5salsa8function6delete9SharedBoxINtNtB1h_4memo4MemoNtNvNvMs8_NtCsgIpRO4v45SJ_7base_db17editioned_file_idNtB2w_15EditionedFileId5parse1__21parse__Configuration_EEEKj3a_E11take_bucketB2y_: argument 0"}
!604 = !{i64 4824367788772220964}
!605 = !{!601}
!606 = !{!603, !601}
!607 = distinct !{!607, i1 true, !"_RINvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB6_13RawTableInner4iterTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueNtB1c_15SourceRootInputEEEB1c_"}
!608 = distinct !{!608, !607, !"_RINvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB6_13RawTableInner4iterTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueNtB1c_15SourceRootInputEEEB1c_: argument 1:Peel0"}
!609 = distinct !{!609, !607, !"_RINvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB6_13RawTableInner4iterTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueNtB1c_15SourceRootInputEEEB1c_: argument 0:Peel0"}
!610 = distinct !{!610, i1 true, !"_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB1U_4util11SharedValueNtB3o_15SourceRootInputEEEEEE3newB3o_"}
!611 = distinct !{!611, !610, !"_RNvMNtCsbSS6DM8SDEO_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB1U_4util11SharedValueNtB3o_15SourceRootInputEEEEEE3newB3o_: argument 0"}
!612 = distinct !{!612, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB2q_4util11SharedValueNtB3U_15SourceRootInputEEEEEINtB34_7RawIterB3P_EEEEB3U_"}
!613 = distinct !{!613, !612, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB2q_4util11SharedValueNtB3U_15SourceRootInputEEEEEINtB34_7RawIterB3P_EEEEB3U_: argument 0"}
!614 = distinct !{!614, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB24_4util11SharedValueNtB3y_15SourceRootInputEEEEEINtB2I_7RawIterB3t_EEEB3y_"}
!615 = distinct !{!615, !614, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB24_4util11SharedValueNtB3y_15SourceRootInputEEEEEINtB2I_7RawIterB3t_EEEB3y_: argument 0"}
!616 = distinct !{!616, i1 true, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB23_4util11SharedValueNtB3x_15SourceRootInputEEEEEEB3x_"}
!617 = distinct !{!617, !616, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc4sync3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB23_4util11SharedValueNtB3x_15SourceRootInputEEEEEEB3x_: argument 0"}
!618 = distinct !{!618, i1 true, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB1A_4util11SharedValueNtB34_15SourceRootInputEEEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB34_"}
!619 = distinct !{!619, !618, !"_RNvXsE_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcINtNtCs8E1BR24LTvI_8lock_api6rwlock15RwLockReadGuardNtNtCs2WklPA5QxgX_7dashmap4lock9RawRwLockINtNtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5inner8RawTableTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtB1A_4util11SharedValueNtB34_15SourceRootInputEEEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB34_: argument 0"}
!620 = distinct !{!620, i1 true, !"_RINvMsh_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueNtB17_15SourceRootInputEEE9next_implKb0_EB17_"}
!621 = distinct !{!621, !620, !"_RINvMsh_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueNtB17_15SourceRootInputEEE9next_implKb0_EB17_: argument 0"}
!622 = distinct !{!622, i1 true, !"_RINvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB6_13RawTableInner4iterTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueNtB1c_15SourceRootInputEEEB1c_"}
!623 = distinct !{!623, !622, !"_RINvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB6_13RawTableInner4iterTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueNtB1c_15SourceRootInputEEEB1c_: argument 1"}
!624 = distinct !{!624, !622, !"_RINvMsa_NtNtCsk2Uk0NaJ3Ig_9hashbrown3raw5innerNtB6_13RawTableInner4iterTNtNtCsgIpRO4v45SJ_7base_db5input12SourceRootIdINtNtCs2WklPA5QxgX_7dashmap4util11SharedValueNtB1c_15SourceRootInputEEEB1c_: argument 0"}
!625 = distinct !{!625, !634}
!626 = !{i64 34026531219755021}
!627 = !{!608}
!628 = !{!609, !608}
!629 = !{!611}
!630 = !{!619, !617, !615, !613}
!631 = !{!621}
!632 = !{!623}
!633 = !{!624, !623}
!634 = !{!"llvm.loop.peeled.count", i32 1}
!635 = !{i64 5603547996741354545}
!636 = !{i64 4622270948576198464}
!637 = !{i64 2848903093701531614}
!638 = !{i64 -1877143283627059685}
!639 = !{i64 -2187048224457184613}
!640 = !{i64 5852091228027545946}
!641 = !{i64 -2659926744524631124}
!642 = !{i64 -3205430147764411044}
!643 = distinct !{!643, i1 true, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsgIpRO4v45SJ_7base_db"}
!644 = distinct !{!644, !643, !"_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCsd9Lm8bEdjjY_5salsa8revision14AtomicRevisionj3_E6tripleCsgIpRO4v45SJ_7base_db: argument 0"}
!645 = !{i64 143778192851571073}
!646 = !{!644}
!647 = !{i64 5173607999628551525}
end_hunk_1
