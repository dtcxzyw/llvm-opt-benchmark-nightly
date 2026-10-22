Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gimli-rs/original/convert.convert.652d47baf39f5aab-cgu.15?download=true
inline.NumInlined: 403
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs2_NtNtCs9Jn0q30Ea0B_6object5write4utilINtB5_15StreamingBufferINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileEENtB5_14WritableBuffer6resizeCs8GyQQEoxZtT_7convert:bb.a
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.ak = icmp ult ptr %.val.pre.i, inttoptr (i64 188978561024 to ptr)
  %i.al = and i64 %i.ai, 1095216660480
  %i.am = icmp ne i64 %i.al, 1095216660480
  call void @llvm.assume(i1 %i.ak)
  call void @llvm.assume(i1 %i.am)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8GyQQEoxZtT_7convert.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.an = getelementptr i8, ptr %.val.pre.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.an) ]
  store ptr %i.an, ptr %i.g, align 8, !alias.scope !576, !noalias !575
  store i8 3, ptr %i.a, align 8, !alias.scope !576, !noalias !575
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8GyQQEoxZtT_7convert.exit.i.i unwind label %bb.f

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8GyQQEoxZtT_7convert.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !575
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8GyQQEoxZtT_7convert.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ag, ptr %i.e, align 8, !alias.scope !572
  resume { ptr, i32 } %i.ao

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8GyQQEoxZtT_7convert.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8GyQQEoxZtT_7convert.exit.i.i, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs8GyQQEoxZtT_7convert.exit.i, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs8GyQQEoxZtT_7convert.exit.thread.i
  %.sroa.0.0.i4.i = phi ptr [ null, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs8GyQQEoxZtT_7convert.exit.thread.i ], [ %i.ag, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8GyQQEoxZtT_7convert.exit.i.i ], [ %i.ag, %_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs8GyQQEoxZtT_7convert.exit.i ] ; 2 uses
  store ptr %.sroa.0.0.i4.i, ptr %i.e, align 8, !alias.scope !572
  %.pre = load i64, ptr %i.b, align 8, !alias.scope !572
  br label %_RNvXs2_NtNtCs9Jn0q30Ea0B_6object5write4utilINtB5_15StreamingBufferINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileEENtB5_14WritableBuffer11write_bytesCs8GyQQEoxZtT_7convert.exit

_RNvXs2_NtNtCs9Jn0q30Ea0B_6object5write4utilINtB5_15StreamingBufferINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileEENtB5_14WritableBuffer11write_bytesCs8GyQQEoxZtT_7convert.exit: ; preds = %.lr.ph.split, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8GyQQEoxZtT_7convert.exit.i
  %i.ap = phi i64 [ %i.s, %.lr.ph.split ], [ %.pre, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8GyQQEoxZtT_7convert.exit.i ]
  %i.aq = phi ptr [ %i.r, %.lr.ph.split ], [ %.sroa.0.0.i4.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs8GyQQEoxZtT_7convert.exit.i ]
  %i.ar = add i64 %i.ap, %i.w                     ; 3 uses
  store i64 %i.ar, ptr %i.b, align 8, !alias.scope !572
  %i.as = icmp ult i64 %i.ar, %1
  br i1 %i.as, label %.lr.ph.split, label %._crit_edge, !llvm.loop !571
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCs9Jn0q30Ea0B_6object5write4utilINtB5_15StreamingBufferINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileEENtB5_14WritableBuffer7reserveCs8GyQQEoxZtT_7convert(ptr noalias nofree readnone align 8 captures(none) %0, i64 %1) unnamed_addr #8 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2_NtNtCsi68uqYEhoRA_5gimli5write7convertNtB5_12ConvertErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i8, ptr %0, align 8, !range !578, !noundef !6 ; 2 uses
  %i.d = icmp samesign ugt i8 %i.c, 76
  %i.e = zext nneg i8 %i.c to i64
  %i.f = add nsw i64 %i.e, -76
  %i.g = select i1 %i.d, i64 %i.f, i64 0
  switch i64 %i.g, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
    i64 8, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.m
    i64 11, label %bb.n
    i64 12, label %bb.o
    i64 13, label %bb.p
    i64 14, label %bb.q
    i64 15, label %bb.r
    i64 16, label %bb.s
    i64 17, label %bb.t
    i64 18, label %bb.u
    i64 19, label %bb.v
    i64 20, label %bb.w
    i64 21, label %bb.x
    i64 22, label %bb.y
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.z

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.i, ptr %i.a, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.z

bb.e:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 25)
  br label %bb.z

bb.f:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 21)
  br label %bb.z

bb.g:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 22)
  br label %bb.z

bb.h:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 14)
  br label %bb.z

bb.i:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 26)
  br label %bb.z

bb.j:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 25)
  br label %bb.z

bb.k:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 22)
  br label %bb.z

bb.l:                                             ; preds = %bb.a
  %i.r = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 22)
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  %i.s = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 27)
  br label %bb.z

bb.n:                                             ; preds = %bb.a
  %i.t = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 16)
  br label %bb.z

bb.o:                                             ; preds = %bb.a
  %i.u = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 21)
  br label %bb.z

bb.p:                                             ; preds = %bb.a
  %i.v = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @79, i64 noundef 15)
  br label %bb.z

bb.q:                                             ; preds = %bb.a
  %i.w = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @80, i64 noundef 14)
  br label %bb.z

bb.r:                                             ; preds = %bb.a
  %i.x = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @81, i64 noundef 14)
  br label %bb.z

bb.s:                                             ; preds = %bb.a
  %i.y = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 19)
  br label %bb.z

bb.t:                                             ; preds = %bb.a
  %i.z = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 27)
  br label %bb.z

bb.u:                                             ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @84, i64 noundef 25)
  br label %bb.z

bb.v:                                             ; preds = %bb.a
  %i.ab = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 26)
  br label %bb.z

bb.w:                                             ; preds = %bb.a
  %i.ac = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 20)
  br label %bb.z

bb.x:                                             ; preds = %bb.a
  %i.ad = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @87, i64 noundef 19)
  br label %bb.z

bb.y:                                             ; preds = %bb.a
  %i.ae = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 19)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.l, %bb.f ], [ %i.m, %bb.g ], [ %i.n, %bb.h ], [ %i.o, %bb.i ], [ %i.p, %bb.j ], [ %i.q, %bb.k ], [ %i.r, %bb.l ], [ %i.s, %bb.m ], [ %i.t, %bb.n ], [ %i.u, %bb.o ], [ %i.v, %bb.p ], [ %i.w, %bb.q ], [ %i.x, %bb.r ], [ %i.y, %bb.s ], [ %i.z, %bb.t ], [ %i.aa, %bb.u ], [ %i.ab, %bb.v ], [ %i.ac, %bb.w ], [ %i.ad, %bb.x ], [ %i.ae, %bb.y ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNCNvCs8GyQQEoxZtT_7convert4mains2_00INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBU_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i8 noundef range(i8 0, 25) %2) unnamed_addr #0 {
switch.hole_check:
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !align !7, !noundef !6
  %i.a = load ptr, ptr %.val, align 8, !noalias !581, !nonnull !6, !align !7, !noundef !6
  %switch.maskindex = zext nneg i8 %2 to i32
  %switch.shifted = lshr i32 32568841, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %bb.a

bb.a:                                             ; preds = %switch.hole_check
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #32, !noalias !581
  unreachable

switch.lookup:                                    ; preds = %switch.hole_check
  %i.b = zext nneg i8 %2 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNCNvCs8GyQQEoxZtT_7convert4mains2_00INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBU_, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %2 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNCNvCs8GyQQEoxZtT_7convert4mains2_00INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBU_.32, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  tail call fastcc void @_RNvNvCs8GyQQEoxZtT_7convert4main12load_section(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(304) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCs8GyQQEoxZtT_7convert4mains0_0INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBS_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, i8 noundef range(i8 0, 25) %2) unnamed_addr #0 {
switch.lookup:
  %.val = load ptr, ptr %1, align 8, !nonnull !6, !align !7, !noundef !6
  %i.a = zext nneg i8 %2 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCs8GyQQEoxZtT_7convert4mains0_0INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBS_, i64 %i.a
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.b = zext nneg i8 %2 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCs8GyQQEoxZtT_7convert4mains0_0INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBS_.33, i64 %i.b
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  tail call fastcc void @_RNvNvCs8GyQQEoxZtT_7convert4main12load_section(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(304) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3_NtNtCs9Jn0q30Ea0B_6object5build5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs3p_NtCsi68uqYEhoRA_5gimli6commonNtB6_17UnitSectionOffsetNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @92, i64 noundef 17, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @91)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsO_NtNtCsi68uqYEhoRA_5gimli4read4unitINtB5_14AttributeValueINtNtB7_12endian_slice11EndianSliceNtNtB9_9endianity13RunTimeEndianEjENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs8GyQQEoxZtT_7convert(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [8 x i8], align 8                ; 4 uses
  %i.af = alloca [8 x i8], align 8                ; 4 uses
  %i.ag = alloca [8 x i8], align 8                ; 4 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 4 uses
  %i.aj = alloca [8 x i8], align 8                ; 4 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 4 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [8 x i8], align 8                ; 4 uses
  %i.ao = alloca [8 x i8], align 8                ; 4 uses
  %i.ap = alloca [8 x i8], align 8                ; 4 uses
  %i.aq = alloca [8 x i8], align 8                ; 4 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = load i64, ptr %0, align 16, !range !15, !noundef !6
  switch i64 %i.av, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.m
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.p
    i64 15, label %bb.q
    i64 16, label %bb.r
    i64 17, label %bb.s
    i64 18, label %bb.t
    i64 19, label %bb.u
    i64 20, label %bb.v
    i64 21, label %bb.w
    i64 22, label %bb.x
    i64 23, label %bb.y
    i64 24, label %bb.z
    i64 25, label %bb.aa
    i64 26, label %bb.ab
    i64 27, label %bb.ac
    i64 28, label %bb.ad
    i64 29, label %bb.ae
    i64 30, label %bb.af
    i64 31, label %bb.ag
    i64 32, label %bb.ah
    i64 33, label %bb.ai
    i64 34, label %bb.aj
    i64 35, label %bb.ak
    i64 36, label %bb.al
    i64 37, label %bb.am
    i64 38, label %bb.an
    i64 39, label %bb.ao
    i64 40, label %bb.ap
    i64 41, label %bb.aq
    i64 42, label %bb.ar
    i64 43, label %bb.as
    i64 44, label %bb.at
    i64 45, label %bb.au
    i64 46, label %bb.av
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.au, align 8
  %i.ax = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef 4, ptr noundef nonnull %i.au, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @93)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.aw

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.at, align 8
  %i.az = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 5, ptr noundef nonnull %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.aw

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %i.as, align 8
  %i.bb = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef 5, ptr noundef nonnull %i.as, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @97)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.aw

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bc, ptr %i.ar, align 8
  %i.bd = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 5, ptr noundef nonnull %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @99)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.aw

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.aq, align 8
  %i.bf = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 5, ptr noundef nonnull %i.aq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.aw

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
end_hunk_0
begin_hunk_1_@llvm.memmove.p0.p0.i64
!382 = distinct !{!382, i1 true, !"_RNvXs0_Cs4ix5f8b49eS_3fnvNtB5_9FnvHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write"}
!383 = distinct !{!383, !382, !"_RNvXs0_Cs4ix5f8b49eS_3fnvNtB5_9FnvHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write: argument 1"}
!384 = distinct !{!384, i1 true, !"_RINvXsc_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtCs4ix5f8b49eS_3fnv9FnvHasherECs8GyQQEoxZtT_7convert"}
!385 = distinct !{!385, !384, !"_RINvXsc_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechENtNtCskKLDkoKarTP_4core4hash4Hash4hashNtCs4ix5f8b49eS_3fnv9FnvHasherECs8GyQQEoxZtT_7convert: argument 0"}
!386 = distinct !{!386, !390}
!387 = !{!379}
!388 = !{!383, !381}
!389 = !{!385, !379}
!390 = !{!"llvm.loop.unroll.disable"}
!391 = distinct !{!391, i1 true, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetNtB8_4Hash4hashNtCs4ix5f8b49eS_3fnv9FnvHasherECs8GyQQEoxZtT_7convert"}
!392 = distinct !{!392, !391, !"_RINvXs3_NtNtCskKLDkoKarTP_4core4hash5implsRNtNtCsi68uqYEhoRA_5gimli6common17UnitSectionOffsetNtB8_4Hash4hashNtCs4ix5f8b49eS_3fnv9FnvHasherECs8GyQQEoxZtT_7convert: argument 0"}
!393 = !{!392}
!394 = distinct !{!394, i1 true, !"_RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCs8GyQQEoxZtT_7convert4mains0_0INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBS_"}
!395 = distinct !{!395, !394, !"_RNvXs2_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvCs8GyQQEoxZtT_7convert4mains0_0INtB7_6FnOnceTNtNtCsi68uqYEhoRA_5gimli6common9SectionIdEE9call_onceBS_: argument 1"}
!396 = distinct !{!396, i1 true, !"_RNvNvCs8GyQQEoxZtT_7convert4main12load_section"}
!397 = distinct !{!397, !396, !"_RNvNvCs8GyQQEoxZtT_7convert4main12load_section: argument 2"}
!398 = distinct !{!398, !396, !"_RNvNvCs8GyQQEoxZtT_7convert4main12load_section: argument 1"}
!399 = distinct !{!399, !396, !"_RNvNvCs8GyQQEoxZtT_7convert4main12load_section: argument 0"}
!400 = distinct !{!400, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs9Jn0q30Ea0B_6object4read5ErrorE3newCs8GyQQEoxZtT_7convert"}
!401 = distinct !{!401, !400, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs9Jn0q30Ea0B_6object4read5ErrorE3newCs8GyQQEoxZtT_7convert: argument 0"}
!402 = !{!395}
!403 = !{!399, !398, !397, !395}
!404 = !{!399, !395}
!405 = !{!401, !399, !395}
!406 = distinct !{!406, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf20DwarfPackageSectionsINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEINtNtB20_5boxed3BoxDNtNtB4_5error5ErrorEL_EEECs8GyQQEoxZtT_7convert"}
!407 = distinct !{!407, !406, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf20DwarfPackageSectionsINtNtCsexYYUdYSQU6_5alloc6borrow3CowShEEINtNtB20_5boxed3BoxDNtNtB4_5error5ErrorEL_EEECs8GyQQEoxZtT_7convert: argument 0"}
!408 = !{!407}
!409 = !{i64 1, i64 536870913}
!410 = distinct !{!410, i1 true, !"_RNvYNCINvCs8GyQQEoxZtT_7convert18convert_attributesINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtBU_9endianity13RunTimeEndianEE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTyEE9call_onceB7_"}
!411 = distinct !{!411, !410, !"_RNvYNCINvCs8GyQQEoxZtT_7convert18convert_attributesINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtBU_9endianity13RunTimeEndianEE0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTyEE9call_onceB7_: argument 0"}
!412 = distinct !{!412, i1 true, !"_RNCINvCs8GyQQEoxZtT_7convert18convert_attributesINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtBR_9endianity13RunTimeEndianEE0B4_"}
!413 = distinct !{!413, !412, !"_RNCINvCs8GyQQEoxZtT_7convert18convert_attributesINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtBR_9endianity13RunTimeEndianEE0B4_: argument 0"}
!414 = !{!413, !411}
!415 = distinct !{!415, i1 true, !"_RNCINvNtCsG258MDvU3F_3std2rt10lang_startINtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtBH_5error5ErrorEL_EEE0Cs8GyQQEoxZtT_7convert"}
!416 = distinct !{!416, !415, !"_RNCINvNtCsG258MDvU3F_3std2rt10lang_startINtNtCskKLDkoKarTP_4core6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtBH_5error5ErrorEL_EEE0Cs8GyQQEoxZtT_7convert: argument 0"}
!417 = !{!416}
!418 = distinct !{!418, i1 true, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8GyQQEoxZtT_7convert"}
!419 = distinct !{!419, !418, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8GyQQEoxZtT_7convert: argument 1"}
!420 = distinct !{!420, i1 true, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8GyQQEoxZtT_7convert"}
!421 = distinct !{!421, !420, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8GyQQEoxZtT_7convert: argument 1"}
!422 = distinct !{!422, i1 true, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8GyQQEoxZtT_7convert"}
!423 = distinct !{!423, !422, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs8GyQQEoxZtT_7convert: argument 1"}
!424 = distinct !{!424, i1 true, !"_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCs8GyQQEoxZtT_7convert"}
!425 = distinct !{!425, !424, !"_RNvXs0_NtNtCs9Jn0q30Ea0B_6object4read3anyNtB5_4FileNtNtB7_6traits6Object16is_little_endianCs8GyQQEoxZtT_7convert: argument 0"}
!426 = distinct !{!426, i1 true, !"_RINvMNtNtCsG258MDvU3F_3std3ffi6os_strNtB3_8OsString4pushReECs8GyQQEoxZtT_7convert"}
!427 = distinct !{!427, !426, !"_RINvMNtNtCsG258MDvU3F_3std3ffi6os_strNtB3_8OsString4pushReECs8GyQQEoxZtT_7convert: argument 0"}
!428 = distinct !{!428, i1 true, !"_RNvXNvMNtNtCsG258MDvU3F_3std3ffi6os_strNtB5_8OsString4pushReNtB2_10SpecPushTo12spec_push_toCs8GyQQEoxZtT_7convert"}
!429 = distinct !{!429, !428, !"_RNvXNvMNtNtCsG258MDvU3F_3std3ffi6os_strNtB5_8OsString4pushReNtB2_10SpecPushTo12spec_push_toCs8GyQQEoxZtT_7convert: argument 0"}
!430 = distinct !{!430, i1 true, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs8GyQQEoxZtT_7convert"}
!431 = distinct !{!431, !430, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs8GyQQEoxZtT_7convert: argument 0"}
!432 = distinct !{!432, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEECs8GyQQEoxZtT_7convert"}
!433 = distinct !{!433, !432, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsG258MDvU3F_3std2fs4FileNtNtNtB4_2io5error5ErrorEECs8GyQQEoxZtT_7convert: argument 0"}
!434 = distinct !{!434, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8GyQQEoxZtT_7convert"}
!435 = distinct !{!435, !434, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8GyQQEoxZtT_7convert: argument 0"}
!436 = distinct !{!436, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8GyQQEoxZtT_7convert"}
!437 = distinct !{!437, !436, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8GyQQEoxZtT_7convert: argument 0"}
!438 = distinct !{!438, i1 true, !"_RNCNvCs8GyQQEoxZtT_7convert4main0B3_"}
!439 = distinct !{!439, !438, !"_RNCNvCs8GyQQEoxZtT_7convert4main0B3_: argument 0"}
!440 = distinct !{!440, !438, !"_RNCNvCs8GyQQEoxZtT_7convert4main0B3_: argument 1"}
!441 = distinct !{!441, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsgQ7e0lqRvgo_7memmap24MmapNtNtNtB4_2io5error5ErrorEECs8GyQQEoxZtT_7convert"}
!442 = distinct !{!442, !441, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtCsgQ7e0lqRvgo_7memmap24MmapNtNtNtB4_2io5error5ErrorEECs8GyQQEoxZtT_7convert: argument 0"}
!443 = distinct !{!443, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8GyQQEoxZtT_7convert"}
!444 = distinct !{!444, !443, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8GyQQEoxZtT_7convert: argument 0"}
!445 = distinct !{!445, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8GyQQEoxZtT_7convert"}
!446 = distinct !{!446, !445, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8GyQQEoxZtT_7convert: argument 0"}
!447 = distinct !{!447, i1 true, !"_RNCNvCs8GyQQEoxZtT_7convert4mains_0B3_"}
!448 = distinct !{!448, !447, !"_RNCNvCs8GyQQEoxZtT_7convert4mains_0B3_: argument 0"}
!449 = distinct !{!449, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgQ7e0lqRvgo_7memmap24MmapEECs8GyQQEoxZtT_7convert"}
!450 = distinct !{!450, !449, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgQ7e0lqRvgo_7memmap24MmapEECs8GyQQEoxZtT_7convert: argument 0"}
!451 = distinct !{!451, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileEECs8GyQQEoxZtT_7convert"}
!452 = distinct !{!452, !451, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileEECs8GyQQEoxZtT_7convert: argument 0"}
!453 = distinct !{!453, i1 true, !"_RINvCs8GyQQEoxZtT_7convert13convert_dwarfINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtBK_9endianity13RunTimeEndianEINtNtNtBK_5write10endian_vec9EndianVecB1A_EEB2_"}
!454 = distinct !{!454, !453, !"_RINvCs8GyQQEoxZtT_7convert13convert_dwarfINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtBK_9endianity13RunTimeEndianEINtNtNtBK_5write10endian_vec9EndianVecB1A_EEB2_: argument 3"}
!455 = distinct !{!455, !453, !"_RINvCs8GyQQEoxZtT_7convert13convert_dwarfINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtBK_9endianity13RunTimeEndianEINtNtNtBK_5write10endian_vec9EndianVecB1A_EEB2_: argument 2"}
!456 = distinct !{!456, !453, !"_RINvCs8GyQQEoxZtT_7convert13convert_dwarfINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtBK_9endianity13RunTimeEndianEINtNtNtBK_5write10endian_vec9EndianVecB1A_EEB2_: argument 1"}
!457 = distinct !{!457, !453, !"_RINvCs8GyQQEoxZtT_7convert13convert_dwarfINtNtNtCsi68uqYEhoRA_5gimli4read12endian_slice11EndianSliceNtNtBK_9endianity13RunTimeEndianEINtNtNtBK_5write10endian_vec9EndianVecB1A_EEB2_: argument 0"}
!458 = distinct !{!458, i1 true, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write5dwarfNtB5_5DwarfNtNtCskKLDkoKarTP_4core7default7Default7default"}
!459 = distinct !{!459, !458, !"_RNvXs1_NtNtCsi68uqYEhoRA_5gimli5write5dwarfNtB5_5DwarfNtNtCskKLDkoKarTP_4core7default7Default7default: argument 0"}
!460 = distinct !{!460, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianEEECs8GyQQEoxZtT_7convert"}
!461 = distinct !{!461, !460, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianEEECs8GyQQEoxZtT_7convert: argument 0"}
!462 = distinct !{!462, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianEEEEECs8GyQQEoxZtT_7convert"}
!463 = distinct !{!463, !462, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianEEEEECs8GyQQEoxZtT_7convert: argument 0"}
!464 = distinct !{!464, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1e_12endian_slice11EndianSliceNtNtB1g_9endianity13RunTimeEndianEEEECs8GyQQEoxZtT_7convert"}
!465 = distinct !{!465, !464, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1e_12endian_slice11EndianSliceNtNtB1g_9endianity13RunTimeEndianEEEECs8GyQQEoxZtT_7convert: argument 0"}
!466 = distinct !{!466, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert"}
!467 = distinct !{!467, !466, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert: argument 0"}
!468 = distinct !{!468, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianEEECs8GyQQEoxZtT_7convert"}
!469 = distinct !{!469, !468, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianEEECs8GyQQEoxZtT_7convert: argument 0"}
!470 = distinct !{!470, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianEEEEECs8GyQQEoxZtT_7convert"}
!471 = distinct !{!471, !470, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianEEEEECs8GyQQEoxZtT_7convert: argument 0"}
!472 = distinct !{!472, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1e_12endian_slice11EndianSliceNtNtB1g_9endianity13RunTimeEndianEEEECs8GyQQEoxZtT_7convert"}
!473 = distinct !{!473, !472, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1e_12endian_slice11EndianSliceNtNtB1g_9endianity13RunTimeEndianEEEECs8GyQQEoxZtT_7convert: argument 0"}
!474 = distinct !{!474, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert"}
!475 = distinct !{!475, !474, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert: argument 0"}
!476 = distinct !{!476, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileEECs8GyQQEoxZtT_7convert"}
!477 = distinct !{!477, !476, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileEECs8GyQQEoxZtT_7convert: argument 0"}
!478 = distinct !{!478, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgQ7e0lqRvgo_7memmap24MmapEECs8GyQQEoxZtT_7convert"}
!479 = distinct !{!479, !478, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgQ7e0lqRvgo_7memmap24MmapEECs8GyQQEoxZtT_7convert: argument 0"}
!480 = distinct !{!480, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianEEECs8GyQQEoxZtT_7convert"}
!481 = distinct !{!481, !480, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBG_12endian_slice11EndianSliceNtNtBI_9endianity13RunTimeEndianEEECs8GyQQEoxZtT_7convert: argument 0"}
!482 = distinct !{!482, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianEEEEECs8GyQQEoxZtT_7convert"}
!483 = distinct !{!483, !482, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1A_12endian_slice11EndianSliceNtNtB1C_9endianity13RunTimeEndianEEEEECs8GyQQEoxZtT_7convert: argument 0"}
!484 = distinct !{!484, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1e_12endian_slice11EndianSliceNtNtB1g_9endianity13RunTimeEndianEEEECs8GyQQEoxZtT_7convert"}
!485 = distinct !{!485, !484, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtB1e_12endian_slice11EndianSliceNtNtB1g_9endianity13RunTimeEndianEEEECs8GyQQEoxZtT_7convert: argument 0"}
!486 = distinct !{!486, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert"}
!487 = distinct !{!487, !486, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsi68uqYEhoRA_5gimli4read5dwarf5DwarfINtNtBL_12endian_slice11EndianSliceNtNtBN_9endianity13RunTimeEndianEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs8GyQQEoxZtT_7convert: argument 0"}
!488 = distinct !{!488, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileEECs8GyQQEoxZtT_7convert"}
!489 = distinct !{!489, !488, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs9Jn0q30Ea0B_6object4read3any4FileEECs8GyQQEoxZtT_7convert: argument 0"}
!490 = distinct !{!490, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgQ7e0lqRvgo_7memmap24MmapEECs8GyQQEoxZtT_7convert"}
!491 = distinct !{!491, !490, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsgQ7e0lqRvgo_7memmap24MmapEECs8GyQQEoxZtT_7convert: argument 0"}
!492 = distinct !{!492, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs9Jn0q30Ea0B_6object4read5ErrorE3newCs8GyQQEoxZtT_7convert"}
!493 = distinct !{!493, !492, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs9Jn0q30Ea0B_6object4read5ErrorE3newCs8GyQQEoxZtT_7convert: argument 0"}
!494 = !{!419}
!495 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!496 = !{!421}
!497 = !{!423}
!498 = !{i32 0, i32 2}
!499 = !{!425}
!500 = !{!431, !429, !427}
!501 = !{!433}
!502 = !{!435}
!503 = !{!435, !433}
!504 = !{!437}
!505 = !{!439}
!506 = !{!439, !440}
!507 = !{!442}
!508 = !{!444}
!509 = !{!444, !442}
!510 = !{!444, !442, !439, !440}
!511 = !{!446}
!512 = !{!448}
!513 = !{!450}
!514 = !{!452}
!515 = !{!457, !456, !455, !454}
!516 = !{!456, !455, !454}
!517 = !{!459}
!518 = !{!457}
!519 = !{i8 -1, i8 3}
!520 = !{i64 0, i64 3}
!521 = !{!461}
!522 = !{!463}
!523 = !{!463, !461}
!524 = !{!467, !465, !463, !461, !457}
!525 = !{!469}
!526 = !{!471}
!527 = !{!471, !469}
!528 = !{!475, !473, !471, !469, !457}
!529 = !{!477}
!530 = !{!479}
!531 = !{!481}
!532 = !{!483}
!533 = !{!483, !481}
!534 = !{!487, !485, !483, !481}
!535 = !{!489}
!536 = !{!491}
!537 = !{!493}
!538 = distinct !{!538, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs9Jn0q30Ea0B_6object4read5ErrorE3newCs8GyQQEoxZtT_7convert"}
!539 = distinct !{!539, !538, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtCs9Jn0q30Ea0B_6object4read5ErrorE3newCs8GyQQEoxZtT_7convert: argument 0"}
!540 = !{!539}
!541 = distinct !{!541, i1 true, !"_RNCNCNvCs8GyQQEoxZtT_7convert4mains3_00B5_"}
!542 = distinct !{!542, !541, !"_RNCNCNvCs8GyQQEoxZtT_7convert4mains3_00B5_: argument 0"}
!543 = !{!542}
!544 = distinct !{!544, i1 true, !"_RNCNvCs8GyQQEoxZtT_7convert4mains1_0B3_"}
!545 = distinct !{!545, !544, !"_RNCNvCs8GyQQEoxZtT_7convert4mains1_0B3_: argument 0"}
!546 = !{!545}
!547 = distinct !{!547, i1 true, !"_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs8GyQQEoxZtT_7convert"}
!548 = distinct !{!548, !547, !"_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs8GyQQEoxZtT_7convert: argument 0"}
!549 = distinct !{!549, i1 true, !"_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileE25write_to_buffer_uncheckedCs8GyQQEoxZtT_7convert"}
!550 = distinct !{!550, !549, !"_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileE25write_to_buffer_uncheckedCs8GyQQEoxZtT_7convert: argument 0"}
!551 = distinct !{!551, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8GyQQEoxZtT_7convert"}
!552 = distinct !{!552, !551, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8GyQQEoxZtT_7convert: argument 0"}
!553 = distinct !{!553, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8GyQQEoxZtT_7convert"}
!554 = distinct !{!554, !553, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8GyQQEoxZtT_7convert: argument 0"}
!555 = !{!548}
!556 = !{!550}
!557 = !{!550, !548}
!558 = !{!552}
!559 = !{!554}
!560 = distinct !{!560, i1 true, !"_RNvXs2_NtNtCs9Jn0q30Ea0B_6object5write4utilINtB5_15StreamingBufferINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileEENtB5_14WritableBuffer11write_bytesCs8GyQQEoxZtT_7convert"}
!561 = distinct !{!561, !560, !"_RNvXs2_NtNtCs9Jn0q30Ea0B_6object5write4utilINtB5_15StreamingBufferINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileEENtB5_14WritableBuffer11write_bytesCs8GyQQEoxZtT_7convert: argument 0"}
!562 = distinct !{!562, i1 true, !"_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs8GyQQEoxZtT_7convert"}
!563 = distinct !{!563, !562, !"_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileENtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs8GyQQEoxZtT_7convert: argument 0"}
!564 = distinct !{!564, i1 true, !"_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileE25write_to_buffer_uncheckedCs8GyQQEoxZtT_7convert"}
!565 = distinct !{!565, !564, !"_RNvMs_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCsG258MDvU3F_3std2fs4FileE25write_to_buffer_uncheckedCs8GyQQEoxZtT_7convert: argument 0"}
!566 = distinct !{!566, !560, !"_RNvXs2_NtNtCs9Jn0q30Ea0B_6object5write4utilINtB5_15StreamingBufferINtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufwriter9BufWriterNtNtCsG258MDvU3F_3std2fs4FileEENtB5_14WritableBuffer11write_bytesCs8GyQQEoxZtT_7convert: argument 1"}
!567 = distinct !{!567, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8GyQQEoxZtT_7convert"}
!568 = distinct !{!568, !567, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8GyQQEoxZtT_7convert: argument 0"}
!569 = distinct !{!569, i1 true, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8GyQQEoxZtT_7convert"}
!570 = distinct !{!570, !569, !"_RINvNtNtNtCskKLDkoKarTP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8GyQQEoxZtT_7convert: argument 0"}
!571 = distinct !{!571, !577}
!572 = !{!561}
!573 = !{!563, !561}
!574 = !{!565, !563, !561}
!575 = !{!568, !561, !566}
!576 = !{!570}
!577 = !{!"llvm.loop.unswitch.partial.disable"}
!578 = !{i8 0, i8 99}
!579 = distinct !{!579, i1 true, !"_RNCNCNvCs8GyQQEoxZtT_7convert4mains2_00B5_"}
!580 = distinct !{!580, !579, !"_RNCNCNvCs8GyQQEoxZtT_7convert4mains2_00B5_: argument 0"}
!581 = !{!580}
end_hunk_1
