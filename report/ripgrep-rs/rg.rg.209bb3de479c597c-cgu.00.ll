Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/rg.rg.209bb3de479c597c-cgu.00?download=true
inline.NumInlined: 973
inline.NumDeleted: 98
begin_hunk_0_@_RINvMs6_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher13search_readerRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherQQNtNtNtCsG258MDvU3F_3std2io5stdio9StdinLockQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkB1d_NtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg:bb.a

bb.bo:                                            ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !18240
  br label %bb.bn, !dbg !18404

bb.bp:                                            ; preds = %bb.h, %bb.bh, %bb.o, %bb.bj, %.loopexit.i, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.bf, %bb.o ], [ %i.fn, %bb.bj ], [ %i.fi, %bb.bh ], [ %i.at, %bb.m ], [ %.pn.i, %.loopexit.i ]
  %i.fz = load i64, ptr %i.ab, align 8, !dbg !18405, !noundef !104
  %i.ga = add i64 %i.fz, 1, !dbg !18406
  store i64 %i.ga, ptr %i.ab, align 8, !dbg !18407
  resume { ptr, i32 } %.pn, !dbg !18408
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !18421
  %i.b = load i8, ptr %i.a, align 8, !dbg !18421, !range !113, !noundef !104
  %i.c = trunc nuw i8 %i.b to i1, !dbg !18421
  br i1 %i.c, label %bb.b, label %bb.e, !dbg !18422

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %1, align 8, !dbg !18423, !nonnull !104, !align !114, !noundef !104
  %.val.i.i = load ptr, ptr %.val.i, align 8, !dbg !18424, !nonnull !104, !align !114, !noundef !104 ; 3 uses
  %i.d = getelementptr i8, ptr %.val.i.i, i64 84, !dbg !18425
  %.val.i.i.i = load i8, ptr %i.d, align 4, !dbg !18425, !range !119, !noundef !104 ; 3 uses
  %.not = icmp ne i8 %.val.i.i.i, 2, !dbg !18426
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !dbg !18427, !range !113 ; 2 uses
  %i.e = icmp eq i8 %.val.i.i.i, %.pre
  %or.cond21 = select i1 %.not, i1 %i.e, i1 false, !dbg !18428
  br i1 %or.cond21, label %bb.c, label %._crit_edge, !dbg !18428

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.val.i.i, i64 85, !dbg !18425
  %.val1.i.i.i = load i8, ptr %i.f, align 1, !dbg !18425
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !18429
  %i.h = load i8, ptr %i.g, align 1, !dbg !18429
  %or.cond.not = icmp ne i8 %.val.i.i.i, 0, !dbg !18430
  %i.i = icmp eq i8 %.val1.i.i.i, %i.h
  %or.cond = select i1 %or.cond.not, i1 true, i1 %i.i, !dbg !18430
  br i1 %or.cond, label %bb.e, label %.thread, !dbg !18430

._crit_edge:                                      ; preds = %bb.b
  %i.j = trunc nuw i8 %.pre to i1, !dbg !18431
  br i1 %i.j, label %bb.d, label %.thread, !dbg !18432

.thread:                                          ; preds = %bb.c, %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !18431
  %i.l = load i8, ptr %i.k, align 1, !dbg !18431
  br label %bb.d, !dbg !18433

bb.d:                                             ; preds = %.thread, %._crit_edge
  %.sroa.06.0 = phi i8 [ %i.l, %.thread ], [ 10, %._crit_edge ], !dbg !18434 ; 2 uses
  %i.m = lshr i8 %.sroa.06.0, 6, !dbg !18435
  %i.n = zext nneg i8 %i.m to i64, !dbg !18436
  %i.o = and i8 %.sroa.06.0, 63, !dbg !18437
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.n, !dbg !18438
  %i.q = load i64, ptr %i.p, align 8, !dbg !18438, !noundef !104
  %i.r = zext nneg i8 %i.o to i64, !dbg !18439
  %i.s = shl nuw i64 1, %i.r, !dbg !18439
  %i.t = and i64 %i.s, %i.q, !dbg !18438
  %.not17 = icmp eq i64 %i.t, 0, !dbg !18438
  br label %bb.e, !dbg !18440

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ %.not17, %bb.d ], !dbg !18413
  ret i1 %.sroa.0.0, !dbg !18441
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher23multi_line_with_matcherRRRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherECs2NzvFoTxuAy_2rg(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !18442 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !18470
  %i.b = load i8, ptr %i.a, align 8, !dbg !18470, !range !113, !noundef !104
  %i.c = trunc nuw i8 %i.b to i1, !dbg !18470
  br i1 %i.c, label %bb.b, label %bb.e, !dbg !18471

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %1, align 8, !dbg !18472, !nonnull !104, !align !114, !noundef !104
  %.val.i.i = load ptr, ptr %.val.i, align 8, !dbg !18473, !nonnull !104, !align !114, !noundef !104
  %.val.i.i.i = load ptr, ptr %.val.i.i, align 8, !dbg !18474, !nonnull !104, !align !114, !noundef !104 ; 3 uses
  %i.d = getelementptr i8, ptr %.val.i.i.i, i64 84, !dbg !18475
  %.val.i.i.i.i = load i8, ptr %i.d, align 4, !dbg !18475, !range !119, !noundef !104 ; 3 uses
  %.not = icmp ne i8 %.val.i.i.i.i, 2, !dbg !18476
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !dbg !18477, !range !113 ; 2 uses
  %i.e = icmp eq i8 %.val.i.i.i.i, %.pre
  %or.cond22 = select i1 %.not, i1 %i.e, i1 false, !dbg !18478
  br i1 %or.cond22, label %bb.c, label %._crit_edge, !dbg !18478

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %.val.i.i.i, i64 85, !dbg !18475
  %.val1.i.i.i.i = load i8, ptr %i.f, align 1, !dbg !18475
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !18479
  %i.h = load i8, ptr %i.g, align 1, !dbg !18479
  %or.cond.not = icmp ne i8 %.val.i.i.i.i, 0, !dbg !18480
  %i.i = icmp eq i8 %.val1.i.i.i.i, %i.h
  %or.cond = select i1 %or.cond.not, i1 true, i1 %i.i, !dbg !18480
  br i1 %or.cond, label %bb.e, label %.thread, !dbg !18480

._crit_edge:                                      ; preds = %bb.b
  %i.j = trunc nuw i8 %.pre to i1, !dbg !18481
  br i1 %i.j, label %bb.d, label %.thread, !dbg !18482

.thread:                                          ; preds = %bb.c, %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 57, !dbg !18481
  %i.l = load i8, ptr %i.k, align 1, !dbg !18481
  br label %bb.d, !dbg !18483

bb.d:                                             ; preds = %.thread, %._crit_edge
  %.sroa.06.0 = phi i8 [ %i.l, %.thread ], [ 10, %._crit_edge ], !dbg !18484 ; 2 uses
  %i.m = lshr i8 %.sroa.06.0, 6, !dbg !18485
  %i.n = zext nneg i8 %i.m to i64, !dbg !18486
  %i.o = and i8 %.sroa.06.0, 63, !dbg !18487
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.n, !dbg !18488
  %i.q = load i64, ptr %i.p, align 8, !dbg !18488, !noundef !104
  %i.r = zext nneg i8 %i.o to i64, !dbg !18489
  %i.s = shl nuw i64 1, %i.r, !dbg !18489
  %i.t = and i64 %i.s, %i.q, !dbg !18488
  %.not17 = icmp eq i64 %i.t, 0, !dbg !18488
  br label %bb.e, !dbg !18490

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ %.not17, %bb.d ], !dbg !18462
  ret i1 %.sroa.0.0, !dbg !18491
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher34fill_multi_line_buffer_from_readerINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(152) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18492 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !18605
  %i.c = load i8, ptr %i.b, align 8, !dbg !18605, !range !113, !noundef !104
  %i.d = trunc nuw i8 %i.c to i1, !dbg !18605
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !18605, !prof !165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #12, !dbg !18606
  unreachable, !dbg !18606

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !18607 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !18608, !noundef !104
  %i.g = icmp eq i64 %i.f, 0, !dbg !18609
  br i1 %i.g, label %bb.d, label %bb.e, !dbg !18609, !prof !165

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.e, align 8, !dbg !18610
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !18611 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !18612 ; 5 uses
  store i64 0, ptr %i.i, align 8, !dbg !18612
  %i.j = load i64, ptr %0, align 8, !dbg !18613, !range !112, !noundef !104
  %i.k = trunc nuw i64 %i.j to i1, !dbg !18614
  br i1 %i.k, label %bb.f, label %bb.g, !dbg !18614

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #12, !dbg !18615
  unreachable, !dbg !18615

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18613
  %i.m = load i64, ptr %i.l, align 8, !dbg !18616, !noundef !104 ; 5 uses
  %i.n = icmp eq i64 %i.m, 0, !dbg !18617
  br i1 %i.n, label %.invoke, label %bb.i, !dbg !18617

bb.g:                                             ; preds = %bb.d
  %i.o = invoke { i64, ptr } @_RNvYINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtB1s_2io4read4Read11read_to_endCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !18618 ; 2 uses

.loopexit.loopexit:                               ; preds = %bb.y, %bb.j
  %lpad.loopexit38 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %bb.v
  %lpad.loopexit.split-lp39 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.outer._crit_edge.invoke, %.invoke, %bb.g, %bb.i, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.p = extractvalue { i64, ptr } %i.o, 0, !dbg !18619
  %i.q = trunc nuw i64 %i.p to i1, !dbg !18620
  %i.r = extractvalue { i64, ptr } %i.o, 1
  %spec.select = select i1 %i.q, ptr %i.r, ptr null, !dbg !18620
  br label %.loopexit37, !dbg !18620

.loopexit37:                                      ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, %.invoke, %bb.h, %bb.r
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.h ], [ null, %bb.r ], [ %i.u, %.invoke ], [ %i.ai, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], !dbg !18621
  %i.s = load i64, ptr %i.e, align 8, !dbg !18622, !noundef !104
  %i.t = add i64 %i.s, 1, !dbg !18623
  store i64 %i.t, ptr %i.e, align 8, !dbg !18624
  ret ptr %.sroa.0.0, !dbg !18625

.invoke:                                          ; preds = %bb.u, %bb.f
  %i.u = invoke noundef nonnull ptr @_RNvNtCshqpdr3wwzuw_13grep_searcher11line_buffer11alloc_error(i64 noundef %i.m)
          to label %.loopexit37 unwind label %.loopexit.split-lp, !dbg !18626

bb.i:                                             ; preds = %bb.f
  %..i = tail call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.m, i64 65536), !dbg !18627
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %..i, i8 noundef 0)
          to label %.preheader unwind label %.loopexit.split-lp, !dbg !18628

.preheader:                                       ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.i, align 8, !dbg !18629, !noundef !104
  br label %.lr.ph, !dbg !18630

.lr.ph:                                           ; preds = %.preheader, %.outer
  %i.y = phi i64 [ %i.x, %.preheader ], [ %i.bg, %.outer ]
  %.sroa.08.0.ph82 = phi i64 [ 0, %.preheader ], [ %i.ba, %.outer ] ; 6 uses
  br label %bb.j, !dbg !18630

bb.j:                                             ; preds = %.lr.ph, %bb.z
  %i.z = phi i64 [ %i.y, %.lr.ph ], [ %i.bo, %bb.z ]
  %i.aa = load ptr, ptr %i.v, align 8, !dbg !18631, !nonnull !104, !noundef !104
  %i.ab = sub nuw i64 %i.z, %.sroa.08.0.ph82, !dbg !18632
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.08.0.ph82, !dbg !18633
  %i.ad = invoke { i64, ptr } @_RNvXs0_Cs4h1mOclLn8u_14encoding_rs_ioINtB5_17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtB1y_2io4read4Read4readCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1, ptr noalias nofree noundef nonnull %i.ac, i64 noundef %i.ab)
          to label %bb.k unwind label %.loopexit.loopexit, !dbg !18634 ; 2 uses

.outer._crit_edge.invoke:                         ; preds = %bb.s, %.outer, %bb.z
  %i.ae = phi i64 [ %.sroa.08.0.ph82, %bb.z ], [ %i.ba, %.outer ], [ %i.ba, %bb.s ]
  %i.af = phi i64 [ %i.bo, %bb.z ], [ %i.bg, %.outer ], [ %i.bb, %bb.s ] ; 2 uses
  %i.ag = phi ptr [ @32, %bb.z ], [ @32, %.outer ], [ @31, %bb.s ]
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ae, i64 noundef %i.af, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag) #13
          to label %.outer._crit_edge.cont unwind label %.loopexit.split-lp, !dbg !18635

.outer._crit_edge.cont:                           ; preds = %.outer._crit_edge.invoke
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ah = extractvalue { i64, ptr } %i.ad, 0, !dbg !18636
  %i.ai = extractvalue { i64, ptr } %i.ad, 1, !dbg !18636 ; 10 uses
  %i.aj = ptrtoint ptr %i.ai to i64, !dbg !18636  ; 5 uses
  %i.ak = trunc nuw i64 %i.ah to i1, !dbg !18637
  br i1 %i.ak, label %bb.l, label %bb.q, !dbg !18637

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.al = and i64 %i.aj, 3, !dbg !18638           ; 2 uses
  switch i64 %i.al, label %default.unreachable [
    i64 2, label %bb.m
    i64 3, label %bb.n
    i64 0, label %bb.o
    i64 1, label %bb.p
  ], !dbg !18639, !prof !199

default.unreachable:                              ; preds = %bb.w, %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.am = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.aa, !dbg !18640

.noexc:                                           ; preds = %bb.m
  %i.an = lshr i64 %i.aj, 32, !dbg !18641
  %i.ao = trunc nuw i64 %i.an to i32, !dbg !18641
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !18642
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !18642, !nonnull !104, !noundef !104
  %i.ar = invoke noundef i8 %i.aq(i32 noundef %i.ao)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.aa, !dbg !18642, !inline_history !46

bb.n:                                             ; preds = %bb.l
  %i.as = lshr i64 %i.aj, 32, !dbg !18643
  %i.at = icmp ult ptr %i.ai, inttoptr (i64 188978561024 to ptr), !dbg !18644
  %switch.idx.cast.i.i.i = trunc i64 %i.as to i8  ; 2 uses
  %i.au = icmp ne i8 %switch.idx.cast.i.i.i, -1, !dbg !18645
  call void @llvm.assume(i1 %i.at), !dbg !18646
  call void @llvm.assume(i1 %i.au), !dbg !18646
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, !dbg !18647

bb.o:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !18648
  %i.aw = load i8, ptr %i.av, align 8, !dbg !18648, !range !203, !noundef !104
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, !dbg !18649

bb.p:                                             ; preds = %bb.l
  %i.ax = getelementptr i8, ptr %i.ai, i64 31, !dbg !18650
  %i.ay = load i8, ptr %i.ax, align 8, !dbg !18650, !range !203, !noundef !104
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, !dbg !18651

bb.q:                                             ; preds = %bb.k
  %i.az = icmp eq ptr %i.ai, null, !dbg !18652
  br i1 %i.az, label %bb.r, label %bb.s, !dbg !18652

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.sroa.08.0.ph82, i8 noundef 0)
          to label %.loopexit37 unwind label %.loopexit.split-lp, !dbg !18653

bb.s:                                             ; preds = %bb.q
  %i.ba = add i64 %.sroa.08.0.ph82, %i.aj, !dbg !18654 ; 9 uses
  %i.bb = load i64, ptr %i.i, align 8, !dbg !18655, !noundef !104 ; 4 uses
  %i.bc = icmp ugt i64 %i.ba, %i.bb, !dbg !18656
  br i1 %i.bc, label %.outer._crit_edge.invoke, label %bb.t, !dbg !18656, !prof !207

bb.t:                                             ; preds = %bb.s
  %i.bd = icmp eq i64 %i.bb, %i.ba, !dbg !18657
  br i1 %i.bd, label %bb.u, label %.outer, !dbg !18657

bb.u:                                             ; preds = %bb.t
  %i.be = icmp sgt i64 %i.ba, -1, !dbg !18658
  call void @llvm.assume(i1 %i.be), !dbg !18659
  %i.bf = icmp eq i64 %i.m, %i.ba, !dbg !18660
  br i1 %i.bf, label %.invoke, label %bb.v, !dbg !18660

.outer:                                           ; preds = %..outer_crit_edge, %bb.t
  %i.bg = phi i64 [ %.pre, %..outer_crit_edge ], [ %i.bb, %bb.t ], !dbg !18629 ; 3 uses
  %i.bh = icmp ugt i64 %i.ba, %i.bg, !dbg !18630
  br i1 %i.bh, label %.outer._crit_edge.invoke, label %.lr.ph, !dbg !18630, !prof !208

bb.v:                                             ; preds = %bb.u
  %i.bi = shl nuw i64 %i.ba, 1, !dbg !18661
  %..i28 = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.m, i64 range(i64 0, -1) %i.bi), !dbg !18662
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %..i28, i8 noundef 0)
          to label %..outer_crit_edge unwind label %.loopexit.loopexit.split-lp, !dbg !18663

..outer_crit_edge:                                ; preds = %bb.v
  %.pre = load i64, ptr %i.i, align 8, !dbg !18629
  br label %.outer, !dbg !18663

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.p, %bb.o, %bb.n, %.noexc
  %.sroa.0.0.i = phi i8 [ %i.ay, %bb.p ], [ %switch.idx.cast.i.i.i, %bb.n ], [ %i.aw, %bb.o ], [ %i.ar, %.noexc ], !dbg !18664
  %i.bj = icmp eq i8 %.sroa.0.0.i, 35, !dbg !18665
  br i1 %i.bj, label %bb.w, label %.loopexit37, !dbg !18603

bb.w:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18666
  switch i64 %i.al, label %default.unreachable [
    i64 2, label %bb.z
    i64 3, label %bb.x
    i64 0, label %bb.z
    i64 1, label %bb.y
  ], !dbg !18667, !prof !199

bb.x:                                             ; preds = %bb.w
  %i.bk = icmp ult ptr %i.ai, inttoptr (i64 188978561024 to ptr), !dbg !18668
  %i.bl = and i64 %i.aj, 1095216660480, !dbg !18669
  %i.bm = icmp ne i64 %i.bl, 1095216660480, !dbg !18669
  call void @llvm.assume(i1 %i.bk), !dbg !18670
  call void @llvm.assume(i1 %i.bm), !dbg !18670
  br label %bb.z, !dbg !18671

bb.y:                                             ; preds = %bb.w
  %i.bn = getelementptr i8, ptr %i.ai, i64 -1, !dbg !18672 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ], !dbg !18673
  store ptr %i.bn, ptr %i.w, align 8, !dbg !18674, !alias.scope !18604
  store i8 3, ptr %i.a, align 8, !dbg !18675, !alias.scope !18604
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %bb.z unwind label %.loopexit.loopexit, !dbg !18676

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18677
  %i.bo = load i64, ptr %i.i, align 8, !dbg !18629, !noundef !104 ; 3 uses
  %i.bp = icmp ugt i64 %.sroa.08.0.ph82, %i.bo, !dbg !18630
  br i1 %i.bp, label %.outer._crit_edge.invoke, label %bb.j, !dbg !18630, !prof !218

bb.aa:                                            ; preds = %bb.m, %.noexc
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg(ptr nonnull %i.ai) #14
          to label %.loopexit unwind label %bb.ab, !dbg !18678

bb.ab:                                            ; preds = %bb.aa
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !18679
  unreachable, !dbg !18679

.loopexit:                                        ; preds = %.loopexit.split-lp, %.loopexit.loopexit.split-lp, %.loopexit.loopexit, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.aa ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit38, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp39, %.loopexit.loopexit.split-lp ]
  %i.bs = load i64, ptr %i.e, align 8, !dbg !18680, !noundef !104
  %i.bt = add i64 %i.bs, 1, !dbg !18681
  store i64 %i.bt, ptr %i.e, align 8, !dbg !18682
  resume { ptr, i32 } %.pn, !dbg !18679
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher34fill_multi_line_buffer_from_readerINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer4json8JSONSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(152) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18683 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !18796
  %i.c = load i8, ptr %i.b, align 8, !dbg !18796, !range !113, !noundef !104
  %i.d = trunc nuw i8 %i.c to i1, !dbg !18796
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !18796, !prof !165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #12, !dbg !18797
  unreachable, !dbg !18797

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !18798 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !18799, !noundef !104
  %i.g = icmp eq i64 %i.f, 0, !dbg !18800
  br i1 %i.g, label %bb.d, label %bb.e, !dbg !18800, !prof !165

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.e, align 8, !dbg !18801
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !18802 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !18803 ; 5 uses
  store i64 0, ptr %i.i, align 8, !dbg !18803
  %i.j = load i64, ptr %0, align 8, !dbg !18804, !range !112, !noundef !104
  %i.k = trunc nuw i64 %i.j to i1, !dbg !18805
  br i1 %i.k, label %bb.f, label %bb.g, !dbg !18805

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #12, !dbg !18806
  unreachable, !dbg !18806

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18804
  %i.m = load i64, ptr %i.l, align 8, !dbg !18807, !noundef !104 ; 5 uses
  %i.n = icmp eq i64 %i.m, 0, !dbg !18808
  br i1 %i.n, label %.invoke, label %bb.i, !dbg !18808

bb.g:                                             ; preds = %bb.d
  %i.o = invoke { i64, ptr } @_RNvYINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtB1s_2io4read4Read11read_to_endCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !18809 ; 2 uses

.loopexit.loopexit:                               ; preds = %bb.y, %bb.j
  %lpad.loopexit38 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %bb.v
  %lpad.loopexit.split-lp39 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.outer._crit_edge.invoke, %.invoke, %bb.g, %bb.i, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.p = extractvalue { i64, ptr } %i.o, 0, !dbg !18810
  %i.q = trunc nuw i64 %i.p to i1, !dbg !18811
  %i.r = extractvalue { i64, ptr } %i.o, 1
  %spec.select = select i1 %i.q, ptr %i.r, ptr null, !dbg !18811
  br label %.loopexit37, !dbg !18811

.loopexit37:                                      ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, %.invoke, %bb.h, %bb.r
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.h ], [ null, %bb.r ], [ %i.u, %.invoke ], [ %i.ai, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], !dbg !18812
  %i.s = load i64, ptr %i.e, align 8, !dbg !18813, !noundef !104
  %i.t = add i64 %i.s, 1, !dbg !18814
  store i64 %i.t, ptr %i.e, align 8, !dbg !18815
  ret ptr %.sroa.0.0, !dbg !18816

.invoke:                                          ; preds = %bb.u, %bb.f
  %i.u = invoke noundef nonnull ptr @_RNvNtCshqpdr3wwzuw_13grep_searcher11line_buffer11alloc_error(i64 noundef %i.m)
          to label %.loopexit37 unwind label %.loopexit.split-lp, !dbg !18817

bb.i:                                             ; preds = %bb.f
  %..i = tail call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.m, i64 65536), !dbg !18818
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %..i, i8 noundef 0)
          to label %.preheader unwind label %.loopexit.split-lp, !dbg !18819

.preheader:                                       ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.i, align 8, !dbg !18820, !noundef !104
  br label %.lr.ph, !dbg !18821

.lr.ph:                                           ; preds = %.preheader, %.outer
  %i.y = phi i64 [ %i.x, %.preheader ], [ %i.bg, %.outer ]
  %.sroa.08.0.ph82 = phi i64 [ 0, %.preheader ], [ %i.ba, %.outer ] ; 6 uses
  br label %bb.j, !dbg !18821

bb.j:                                             ; preds = %.lr.ph, %bb.z
  %i.z = phi i64 [ %i.y, %.lr.ph ], [ %i.bo, %bb.z ]
  %i.aa = load ptr, ptr %i.v, align 8, !dbg !18822, !nonnull !104, !noundef !104
  %i.ab = sub nuw i64 %i.z, %.sroa.08.0.ph82, !dbg !18823
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.08.0.ph82, !dbg !18824
  %i.ad = invoke { i64, ptr } @_RNvXs0_Cs4h1mOclLn8u_14encoding_rs_ioINtB5_17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtB1y_2io4read4Read4readCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1, ptr noalias nofree noundef nonnull %i.ac, i64 noundef %i.ab)
          to label %bb.k unwind label %.loopexit.loopexit, !dbg !18825 ; 2 uses

.outer._crit_edge.invoke:                         ; preds = %bb.s, %.outer, %bb.z
  %i.ae = phi i64 [ %.sroa.08.0.ph82, %bb.z ], [ %i.ba, %.outer ], [ %i.ba, %bb.s ]
  %i.af = phi i64 [ %i.bo, %bb.z ], [ %i.bg, %.outer ], [ %i.bb, %bb.s ] ; 2 uses
  %i.ag = phi ptr [ @32, %bb.z ], [ @32, %.outer ], [ @31, %bb.s ]
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ae, i64 noundef %i.af, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag) #13
          to label %.outer._crit_edge.cont unwind label %.loopexit.split-lp, !dbg !18826

.outer._crit_edge.cont:                           ; preds = %.outer._crit_edge.invoke
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ah = extractvalue { i64, ptr } %i.ad, 0, !dbg !18827
  %i.ai = extractvalue { i64, ptr } %i.ad, 1, !dbg !18827 ; 10 uses
  %i.aj = ptrtoint ptr %i.ai to i64, !dbg !18827  ; 5 uses
  %i.ak = trunc nuw i64 %i.ah to i1, !dbg !18828
  br i1 %i.ak, label %bb.l, label %bb.q, !dbg !18828

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.al = and i64 %i.aj, 3, !dbg !18829           ; 2 uses
  switch i64 %i.al, label %default.unreachable [
    i64 2, label %bb.m
    i64 3, label %bb.n
    i64 0, label %bb.o
    i64 1, label %bb.p
  ], !dbg !18830, !prof !199

default.unreachable:                              ; preds = %bb.w, %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.am = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.aa, !dbg !18831

.noexc:                                           ; preds = %bb.m
  %i.an = lshr i64 %i.aj, 32, !dbg !18832
  %i.ao = trunc nuw i64 %i.an to i32, !dbg !18832
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !18833
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !18833, !nonnull !104, !noundef !104
  %i.ar = invoke noundef i8 %i.aq(i32 noundef %i.ao)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.aa, !dbg !18833, !inline_history !46

bb.n:                                             ; preds = %bb.l
  %i.as = lshr i64 %i.aj, 32, !dbg !18834
  %i.at = icmp ult ptr %i.ai, inttoptr (i64 188978561024 to ptr), !dbg !18835
  %switch.idx.cast.i.i.i = trunc i64 %i.as to i8  ; 2 uses
  %i.au = icmp ne i8 %switch.idx.cast.i.i.i, -1, !dbg !18836
  call void @llvm.assume(i1 %i.at), !dbg !18837
  call void @llvm.assume(i1 %i.au), !dbg !18837
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, !dbg !18838

bb.o:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !18839
  %i.aw = load i8, ptr %i.av, align 8, !dbg !18839, !range !203, !noundef !104
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, !dbg !18840

bb.p:                                             ; preds = %bb.l
  %i.ax = getelementptr i8, ptr %i.ai, i64 31, !dbg !18841
  %i.ay = load i8, ptr %i.ax, align 8, !dbg !18841, !range !203, !noundef !104
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, !dbg !18842

bb.q:                                             ; preds = %bb.k
  %i.az = icmp eq ptr %i.ai, null, !dbg !18843
  br i1 %i.az, label %bb.r, label %bb.s, !dbg !18843

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.sroa.08.0.ph82, i8 noundef 0)
          to label %.loopexit37 unwind label %.loopexit.split-lp, !dbg !18844

bb.s:                                             ; preds = %bb.q
  %i.ba = add i64 %.sroa.08.0.ph82, %i.aj, !dbg !18845 ; 9 uses
  %i.bb = load i64, ptr %i.i, align 8, !dbg !18846, !noundef !104 ; 4 uses
  %i.bc = icmp ugt i64 %i.ba, %i.bb, !dbg !18847
  br i1 %i.bc, label %.outer._crit_edge.invoke, label %bb.t, !dbg !18847, !prof !207

bb.t:                                             ; preds = %bb.s
  %i.bd = icmp eq i64 %i.bb, %i.ba, !dbg !18848
  br i1 %i.bd, label %bb.u, label %.outer, !dbg !18848

bb.u:                                             ; preds = %bb.t
  %i.be = icmp sgt i64 %i.ba, -1, !dbg !18849
  call void @llvm.assume(i1 %i.be), !dbg !18850
  %i.bf = icmp eq i64 %i.m, %i.ba, !dbg !18851
  br i1 %i.bf, label %.invoke, label %bb.v, !dbg !18851

.outer:                                           ; preds = %..outer_crit_edge, %bb.t
  %i.bg = phi i64 [ %.pre, %..outer_crit_edge ], [ %i.bb, %bb.t ], !dbg !18820 ; 3 uses
  %i.bh = icmp ugt i64 %i.ba, %i.bg, !dbg !18821
  br i1 %i.bh, label %.outer._crit_edge.invoke, label %.lr.ph, !dbg !18821, !prof !208

bb.v:                                             ; preds = %bb.u
  %i.bi = shl nuw i64 %i.ba, 1, !dbg !18852
  %..i28 = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.m, i64 range(i64 0, -1) %i.bi), !dbg !18853
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %..i28, i8 noundef 0)
          to label %..outer_crit_edge unwind label %.loopexit.loopexit.split-lp, !dbg !18854

..outer_crit_edge:                                ; preds = %bb.v
  %.pre = load i64, ptr %i.i, align 8, !dbg !18820
  br label %.outer, !dbg !18854

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.p, %bb.o, %bb.n, %.noexc
  %.sroa.0.0.i = phi i8 [ %i.ay, %bb.p ], [ %switch.idx.cast.i.i.i, %bb.n ], [ %i.aw, %bb.o ], [ %i.ar, %.noexc ], !dbg !18855
  %i.bj = icmp eq i8 %.sroa.0.0.i, 35, !dbg !18856
  br i1 %i.bj, label %bb.w, label %.loopexit37, !dbg !18794

bb.w:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18857
  switch i64 %i.al, label %default.unreachable [
    i64 2, label %bb.z
    i64 3, label %bb.x
    i64 0, label %bb.z
    i64 1, label %bb.y
  ], !dbg !18858, !prof !199

bb.x:                                             ; preds = %bb.w
  %i.bk = icmp ult ptr %i.ai, inttoptr (i64 188978561024 to ptr), !dbg !18859
  %i.bl = and i64 %i.aj, 1095216660480, !dbg !18860
  %i.bm = icmp ne i64 %i.bl, 1095216660480, !dbg !18860
  call void @llvm.assume(i1 %i.bk), !dbg !18861
  call void @llvm.assume(i1 %i.bm), !dbg !18861
  br label %bb.z, !dbg !18862

bb.y:                                             ; preds = %bb.w
  %i.bn = getelementptr i8, ptr %i.ai, i64 -1, !dbg !18863 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ], !dbg !18864
  store ptr %i.bn, ptr %i.w, align 8, !dbg !18865, !alias.scope !18795
  store i8 3, ptr %i.a, align 8, !dbg !18866, !alias.scope !18795
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %bb.z unwind label %.loopexit.loopexit, !dbg !18867

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18868
  %i.bo = load i64, ptr %i.i, align 8, !dbg !18820, !noundef !104 ; 3 uses
  %i.bp = icmp ugt i64 %.sroa.08.0.ph82, %i.bo, !dbg !18821
  br i1 %i.bp, label %.outer._crit_edge.invoke, label %bb.j, !dbg !18821, !prof !218

bb.aa:                                            ; preds = %bb.m, %.noexc
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg(ptr nonnull %i.ai) #14
          to label %.loopexit unwind label %bb.ab, !dbg !18869

bb.ab:                                            ; preds = %bb.aa
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !18870
  unreachable, !dbg !18870

.loopexit:                                        ; preds = %.loopexit.split-lp, %.loopexit.loopexit.split-lp, %.loopexit.loopexit, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.aa ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit38, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp39, %.loopexit.loopexit.split-lp ]
  %i.bs = load i64, ptr %i.e, align 8, !dbg !18871, !noundef !104
  %i.bt = add i64 %i.bs, 1, !dbg !18872
  store i64 %i.bt, ptr %i.e, align 8, !dbg !18873
  resume { ptr, i32 } %.pn, !dbg !18870
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher34fill_multi_line_buffer_from_readerINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(152) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18874 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !18987
  %i.c = load i8, ptr %i.b, align 8, !dbg !18987, !range !113, !noundef !104
  %i.d = trunc nuw i8 %i.c to i1, !dbg !18987
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !18987, !prof !165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #12, !dbg !18988
  unreachable, !dbg !18988

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !18989 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !18990, !noundef !104
  %i.g = icmp eq i64 %i.f, 0, !dbg !18991
  br i1 %i.g, label %bb.d, label %bb.e, !dbg !18991, !prof !165

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.e, align 8, !dbg !18992
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !18993 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !18994 ; 5 uses
  store i64 0, ptr %i.i, align 8, !dbg !18994
  %i.j = load i64, ptr %0, align 8, !dbg !18995, !range !112, !noundef !104
  %i.k = trunc nuw i64 %i.j to i1, !dbg !18996
  br i1 %i.k, label %bb.f, label %bb.g, !dbg !18996

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #12, !dbg !18997
  unreachable, !dbg !18997

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18995
  %i.m = load i64, ptr %i.l, align 8, !dbg !18998, !noundef !104 ; 5 uses
  %i.n = icmp eq i64 %i.m, 0, !dbg !18999
  br i1 %i.n, label %.invoke, label %bb.i, !dbg !18999

bb.g:                                             ; preds = %bb.d
  %i.o = invoke { i64, ptr } @_RNvYINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtB1s_2io4read4Read11read_to_endCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !19000 ; 2 uses

.loopexit.loopexit:                               ; preds = %bb.y, %bb.j
  %lpad.loopexit38 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %bb.v
  %lpad.loopexit.split-lp39 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.outer._crit_edge.invoke, %.invoke, %bb.g, %bb.i, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.p = extractvalue { i64, ptr } %i.o, 0, !dbg !19001
  %i.q = trunc nuw i64 %i.p to i1, !dbg !19002
  %i.r = extractvalue { i64, ptr } %i.o, 1
  %spec.select = select i1 %i.q, ptr %i.r, ptr null, !dbg !19002
  br label %.loopexit37, !dbg !19002

.loopexit37:                                      ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, %.invoke, %bb.h, %bb.r
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.h ], [ null, %bb.r ], [ %i.u, %.invoke ], [ %i.ai, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], !dbg !19003
  %i.s = load i64, ptr %i.e, align 8, !dbg !19004, !noundef !104
  %i.t = add i64 %i.s, 1, !dbg !19005
  store i64 %i.t, ptr %i.e, align 8, !dbg !19006
  ret ptr %.sroa.0.0, !dbg !19007

.invoke:                                          ; preds = %bb.u, %bb.f
  %i.u = invoke noundef nonnull ptr @_RNvNtCshqpdr3wwzuw_13grep_searcher11line_buffer11alloc_error(i64 noundef %i.m)
          to label %.loopexit37 unwind label %.loopexit.split-lp, !dbg !19008

bb.i:                                             ; preds = %bb.f
  %..i = tail call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.m, i64 65536), !dbg !19009
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %..i, i8 noundef 0)
          to label %.preheader unwind label %.loopexit.split-lp, !dbg !19010

.preheader:                                       ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.i, align 8, !dbg !19011, !noundef !104
  br label %.lr.ph, !dbg !19012

.lr.ph:                                           ; preds = %.preheader, %.outer
  %i.y = phi i64 [ %i.x, %.preheader ], [ %i.bg, %.outer ]
  %.sroa.08.0.ph82 = phi i64 [ 0, %.preheader ], [ %i.ba, %.outer ] ; 6 uses
  br label %bb.j, !dbg !19012

bb.j:                                             ; preds = %.lr.ph, %bb.z
  %i.z = phi i64 [ %i.y, %.lr.ph ], [ %i.bo, %bb.z ]
  %i.aa = load ptr, ptr %i.v, align 8, !dbg !19013, !nonnull !104, !noundef !104
  %i.ab = sub nuw i64 %i.z, %.sroa.08.0.ph82, !dbg !19014
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.08.0.ph82, !dbg !19015
  %i.ad = invoke { i64, ptr } @_RNvXs0_Cs4h1mOclLn8u_14encoding_rs_ioINtB5_17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtB1y_2io4read4Read4readCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1, ptr noalias nofree noundef nonnull %i.ac, i64 noundef %i.ab)
          to label %bb.k unwind label %.loopexit.loopexit, !dbg !19016 ; 2 uses

.outer._crit_edge.invoke:                         ; preds = %bb.s, %.outer, %bb.z
  %i.ae = phi i64 [ %.sroa.08.0.ph82, %bb.z ], [ %i.ba, %.outer ], [ %i.ba, %bb.s ]
  %i.af = phi i64 [ %i.bo, %bb.z ], [ %i.bg, %.outer ], [ %i.bb, %bb.s ] ; 2 uses
  %i.ag = phi ptr [ @32, %bb.z ], [ @32, %.outer ], [ @31, %bb.s ]
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ae, i64 noundef %i.af, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag) #13
          to label %.outer._crit_edge.cont unwind label %.loopexit.split-lp, !dbg !19017

.outer._crit_edge.cont:                           ; preds = %.outer._crit_edge.invoke
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ah = extractvalue { i64, ptr } %i.ad, 0, !dbg !19018
  %i.ai = extractvalue { i64, ptr } %i.ad, 1, !dbg !19018 ; 10 uses
  %i.aj = ptrtoint ptr %i.ai to i64, !dbg !19018  ; 5 uses
  %i.ak = trunc nuw i64 %i.ah to i1, !dbg !19019
  br i1 %i.ak, label %bb.l, label %bb.q, !dbg !19019

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.al = and i64 %i.aj, 3, !dbg !19020           ; 2 uses
  switch i64 %i.al, label %default.unreachable [
    i64 2, label %bb.m
    i64 3, label %bb.n
    i64 0, label %bb.o
    i64 1, label %bb.p
  ], !dbg !19021, !prof !199

default.unreachable:                              ; preds = %bb.w, %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.am = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.aa, !dbg !19022

.noexc:                                           ; preds = %bb.m
  %i.an = lshr i64 %i.aj, 32, !dbg !19023
  %i.ao = trunc nuw i64 %i.an to i32, !dbg !19023
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !19024
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !19024, !nonnull !104, !noundef !104
  %i.ar = invoke noundef i8 %i.aq(i32 noundef %i.ao)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.aa, !dbg !19024, !inline_history !46

bb.n:                                             ; preds = %bb.l
  %i.as = lshr i64 %i.aj, 32, !dbg !19025
  %i.at = icmp ult ptr %i.ai, inttoptr (i64 188978561024 to ptr), !dbg !19026
  %switch.idx.cast.i.i.i = trunc i64 %i.as to i8  ; 2 uses
  %i.au = icmp ne i8 %switch.idx.cast.i.i.i, -1, !dbg !19027
  call void @llvm.assume(i1 %i.at), !dbg !19028
  call void @llvm.assume(i1 %i.au), !dbg !19028
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, !dbg !19029

bb.o:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !19030
  %i.aw = load i8, ptr %i.av, align 8, !dbg !19030, !range !203, !noundef !104
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, !dbg !19031

bb.p:                                             ; preds = %bb.l
  %i.ax = getelementptr i8, ptr %i.ai, i64 31, !dbg !19032
  %i.ay = load i8, ptr %i.ax, align 8, !dbg !19032, !range !203, !noundef !104
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, !dbg !19033

bb.q:                                             ; preds = %bb.k
  %i.az = icmp eq ptr %i.ai, null, !dbg !19034
  br i1 %i.az, label %bb.r, label %bb.s, !dbg !19034

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.sroa.08.0.ph82, i8 noundef 0)
          to label %.loopexit37 unwind label %.loopexit.split-lp, !dbg !19035

bb.s:                                             ; preds = %bb.q
  %i.ba = add i64 %.sroa.08.0.ph82, %i.aj, !dbg !19036 ; 9 uses
  %i.bb = load i64, ptr %i.i, align 8, !dbg !19037, !noundef !104 ; 4 uses
  %i.bc = icmp ugt i64 %i.ba, %i.bb, !dbg !19038
  br i1 %i.bc, label %.outer._crit_edge.invoke, label %bb.t, !dbg !19038, !prof !207

bb.t:                                             ; preds = %bb.s
  %i.bd = icmp eq i64 %i.bb, %i.ba, !dbg !19039
  br i1 %i.bd, label %bb.u, label %.outer, !dbg !19039

bb.u:                                             ; preds = %bb.t
  %i.be = icmp sgt i64 %i.ba, -1, !dbg !19040
  call void @llvm.assume(i1 %i.be), !dbg !19041
  %i.bf = icmp eq i64 %i.m, %i.ba, !dbg !19042
  br i1 %i.bf, label %.invoke, label %bb.v, !dbg !19042

.outer:                                           ; preds = %..outer_crit_edge, %bb.t
  %i.bg = phi i64 [ %.pre, %..outer_crit_edge ], [ %i.bb, %bb.t ], !dbg !19011 ; 3 uses
  %i.bh = icmp ugt i64 %i.ba, %i.bg, !dbg !19012
  br i1 %i.bh, label %.outer._crit_edge.invoke, label %.lr.ph, !dbg !19012, !prof !208

bb.v:                                             ; preds = %bb.u
  %i.bi = shl nuw i64 %i.ba, 1, !dbg !19043
  %..i28 = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.m, i64 range(i64 0, -1) %i.bi), !dbg !19044
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %..i28, i8 noundef 0)
          to label %..outer_crit_edge unwind label %.loopexit.loopexit.split-lp, !dbg !19045

..outer_crit_edge:                                ; preds = %bb.v
  %.pre = load i64, ptr %i.i, align 8, !dbg !19011
  br label %.outer, !dbg !19045

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.p, %bb.o, %bb.n, %.noexc
  %.sroa.0.0.i = phi i8 [ %i.ay, %bb.p ], [ %switch.idx.cast.i.i.i, %bb.n ], [ %i.aw, %bb.o ], [ %i.ar, %.noexc ], !dbg !19046
  %i.bj = icmp eq i8 %.sroa.0.0.i, 35, !dbg !19047
  br i1 %i.bj, label %bb.w, label %.loopexit37, !dbg !18985

bb.w:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19048
  switch i64 %i.al, label %default.unreachable [
    i64 2, label %bb.z
    i64 3, label %bb.x
    i64 0, label %bb.z
    i64 1, label %bb.y
  ], !dbg !19049, !prof !199

bb.x:                                             ; preds = %bb.w
  %i.bk = icmp ult ptr %i.ai, inttoptr (i64 188978561024 to ptr), !dbg !19050
  %i.bl = and i64 %i.aj, 1095216660480, !dbg !19051
  %i.bm = icmp ne i64 %i.bl, 1095216660480, !dbg !19051
  call void @llvm.assume(i1 %i.bk), !dbg !19052
  call void @llvm.assume(i1 %i.bm), !dbg !19052
  br label %bb.z, !dbg !19053

bb.y:                                             ; preds = %bb.w
  %i.bn = getelementptr i8, ptr %i.ai, i64 -1, !dbg !19054 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ], !dbg !19055
  store ptr %i.bn, ptr %i.w, align 8, !dbg !19056, !alias.scope !18986
  store i8 3, ptr %i.a, align 8, !dbg !19057, !alias.scope !18986
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %bb.z unwind label %.loopexit.loopexit, !dbg !19058

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19059
  %i.bo = load i64, ptr %i.i, align 8, !dbg !19011, !noundef !104 ; 3 uses
  %i.bp = icmp ugt i64 %.sroa.08.0.ph82, %i.bo, !dbg !19012
  br i1 %i.bp, label %.outer._crit_edge.invoke, label %bb.j, !dbg !19012, !prof !218

bb.aa:                                            ; preds = %bb.m, %.noexc
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg(ptr nonnull %i.ai) #14
          to label %.loopexit unwind label %bb.ab, !dbg !19060

bb.ab:                                            ; preds = %bb.aa
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !19061
  unreachable, !dbg !19061

.loopexit:                                        ; preds = %.loopexit.split-lp, %.loopexit.loopexit.split-lp, %.loopexit.loopexit, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.aa ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit38, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp39, %.loopexit.loopexit.split-lp ]
  %i.bs = load i64, ptr %i.e, align 8, !dbg !19062, !noundef !104
  %i.bt = add i64 %i.bs, 1, !dbg !19063
  store i64 %i.bt, ptr %i.e, align 8, !dbg !19064
  resume { ptr, i32 } %.pn, !dbg !19061
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher34fill_multi_line_buffer_from_readerINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer7summary11SummarySinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(152) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !19065 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !19178
  %i.c = load i8, ptr %i.b, align 8, !dbg !19178, !range !113, !noundef !104
  %i.d = trunc nuw i8 %i.c to i1, !dbg !19178
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !19178, !prof !165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #12, !dbg !19179
  unreachable, !dbg !19179

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !19180 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !19181, !noundef !104
  %i.g = icmp eq i64 %i.f, 0, !dbg !19182
  br i1 %i.g, label %bb.d, label %bb.e, !dbg !19182, !prof !165

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.e, align 8, !dbg !19183
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !19184 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !19185 ; 5 uses
  store i64 0, ptr %i.i, align 8, !dbg !19185
  %i.j = load i64, ptr %0, align 8, !dbg !19186, !range !112, !noundef !104
  %i.k = trunc nuw i64 %i.j to i1, !dbg !19187
  br i1 %i.k, label %bb.f, label %bb.g, !dbg !19187

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #12, !dbg !19188
  unreachable, !dbg !19188

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19186
  %i.m = load i64, ptr %i.l, align 8, !dbg !19189, !noundef !104 ; 5 uses
  %i.n = icmp eq i64 %i.m, 0, !dbg !19190
  br i1 %i.n, label %.invoke, label %bb.i, !dbg !19190

bb.g:                                             ; preds = %bb.d
  %i.o = invoke { i64, ptr } @_RNvYINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtB1s_2io4read4Read11read_to_endCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !19191 ; 2 uses

.loopexit.loopexit:                               ; preds = %bb.y, %bb.j
  %lpad.loopexit38 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %bb.v
  %lpad.loopexit.split-lp39 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.outer._crit_edge.invoke, %.invoke, %bb.g, %bb.i, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.p = extractvalue { i64, ptr } %i.o, 0, !dbg !19192
  %i.q = trunc nuw i64 %i.p to i1, !dbg !19193
  %i.r = extractvalue { i64, ptr } %i.o, 1
  %spec.select = select i1 %i.q, ptr %i.r, ptr null, !dbg !19193
  br label %.loopexit37, !dbg !19193

.loopexit37:                                      ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, %.invoke, %bb.h, %bb.r
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.h ], [ null, %bb.r ], [ %i.u, %.invoke ], [ %i.ai, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], !dbg !19194
  %i.s = load i64, ptr %i.e, align 8, !dbg !19195, !noundef !104
  %i.t = add i64 %i.s, 1, !dbg !19196
  store i64 %i.t, ptr %i.e, align 8, !dbg !19197
  ret ptr %.sroa.0.0, !dbg !19198

.invoke:                                          ; preds = %bb.u, %bb.f
  %i.u = invoke noundef nonnull ptr @_RNvNtCshqpdr3wwzuw_13grep_searcher11line_buffer11alloc_error(i64 noundef %i.m)
          to label %.loopexit37 unwind label %.loopexit.split-lp, !dbg !19199

bb.i:                                             ; preds = %bb.f
  %..i = tail call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.m, i64 65536), !dbg !19200
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %..i, i8 noundef 0)
          to label %.preheader unwind label %.loopexit.split-lp, !dbg !19201

.preheader:                                       ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.i, align 8, !dbg !19202, !noundef !104
  br label %.lr.ph, !dbg !19203

.lr.ph:                                           ; preds = %.preheader, %.outer
  %i.y = phi i64 [ %i.x, %.preheader ], [ %i.bg, %.outer ]
  %.sroa.08.0.ph82 = phi i64 [ 0, %.preheader ], [ %i.ba, %.outer ] ; 6 uses
  br label %bb.j, !dbg !19203

bb.j:                                             ; preds = %.lr.ph, %bb.z
  %i.z = phi i64 [ %i.y, %.lr.ph ], [ %i.bo, %bb.z ]
  %i.aa = load ptr, ptr %i.v, align 8, !dbg !19204, !nonnull !104, !noundef !104
  %i.ab = sub nuw i64 %i.z, %.sroa.08.0.ph82, !dbg !19205
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.08.0.ph82, !dbg !19206
  %i.ad = invoke { i64, ptr } @_RNvXs0_Cs4h1mOclLn8u_14encoding_rs_ioINtB5_17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtB1y_2io4read4Read4readCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1, ptr noalias nofree noundef nonnull %i.ac, i64 noundef %i.ab)
          to label %bb.k unwind label %.loopexit.loopexit, !dbg !19207 ; 2 uses

.outer._crit_edge.invoke:                         ; preds = %bb.s, %.outer, %bb.z
  %i.ae = phi i64 [ %.sroa.08.0.ph82, %bb.z ], [ %i.ba, %.outer ], [ %i.ba, %bb.s ]
  %i.af = phi i64 [ %i.bo, %bb.z ], [ %i.bg, %.outer ], [ %i.bb, %bb.s ] ; 2 uses
  %i.ag = phi ptr [ @32, %bb.z ], [ @32, %.outer ], [ @31, %bb.s ]
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ae, i64 noundef %i.af, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag) #13
          to label %.outer._crit_edge.cont unwind label %.loopexit.split-lp, !dbg !19208

.outer._crit_edge.cont:                           ; preds = %.outer._crit_edge.invoke
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ah = extractvalue { i64, ptr } %i.ad, 0, !dbg !19209
  %i.ai = extractvalue { i64, ptr } %i.ad, 1, !dbg !19209 ; 10 uses
  %i.aj = ptrtoint ptr %i.ai to i64, !dbg !19209  ; 5 uses
  %i.ak = trunc nuw i64 %i.ah to i1, !dbg !19210
  br i1 %i.ak, label %bb.l, label %bb.q, !dbg !19210

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.al = and i64 %i.aj, 3, !dbg !19211           ; 2 uses
  switch i64 %i.al, label %default.unreachable [
    i64 2, label %bb.m
    i64 3, label %bb.n
    i64 0, label %bb.o
    i64 1, label %bb.p
  ], !dbg !19212, !prof !199

default.unreachable:                              ; preds = %bb.w, %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.am = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.aa, !dbg !19213

.noexc:                                           ; preds = %bb.m
  %i.an = lshr i64 %i.aj, 32, !dbg !19214
  %i.ao = trunc nuw i64 %i.an to i32, !dbg !19214
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !19215
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !19215, !nonnull !104, !noundef !104
  %i.ar = invoke noundef i8 %i.aq(i32 noundef %i.ao)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.aa, !dbg !19215, !inline_history !46

bb.n:                                             ; preds = %bb.l
  %i.as = lshr i64 %i.aj, 32, !dbg !19216
  %i.at = icmp ult ptr %i.ai, inttoptr (i64 188978561024 to ptr), !dbg !19217
  %switch.idx.cast.i.i.i = trunc i64 %i.as to i8  ; 2 uses
  %i.au = icmp ne i8 %switch.idx.cast.i.i.i, -1, !dbg !19218
  call void @llvm.assume(i1 %i.at), !dbg !19219
  call void @llvm.assume(i1 %i.au), !dbg !19219
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, !dbg !19220

bb.o:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !19221
  %i.aw = load i8, ptr %i.av, align 8, !dbg !19221, !range !203, !noundef !104
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, !dbg !19222

bb.p:                                             ; preds = %bb.l
  %i.ax = getelementptr i8, ptr %i.ai, i64 31, !dbg !19223
  %i.ay = load i8, ptr %i.ax, align 8, !dbg !19223, !range !203, !noundef !104
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, !dbg !19224

bb.q:                                             ; preds = %bb.k
  %i.az = icmp eq ptr %i.ai, null, !dbg !19225
  br i1 %i.az, label %bb.r, label %bb.s, !dbg !19225

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.sroa.08.0.ph82, i8 noundef 0)
          to label %.loopexit37 unwind label %.loopexit.split-lp, !dbg !19226

bb.s:                                             ; preds = %bb.q
  %i.ba = add i64 %.sroa.08.0.ph82, %i.aj, !dbg !19227 ; 9 uses
  %i.bb = load i64, ptr %i.i, align 8, !dbg !19228, !noundef !104 ; 4 uses
  %i.bc = icmp ugt i64 %i.ba, %i.bb, !dbg !19229
  br i1 %i.bc, label %.outer._crit_edge.invoke, label %bb.t, !dbg !19229, !prof !207

bb.t:                                             ; preds = %bb.s
  %i.bd = icmp eq i64 %i.bb, %i.ba, !dbg !19230
  br i1 %i.bd, label %bb.u, label %.outer, !dbg !19230

bb.u:                                             ; preds = %bb.t
  %i.be = icmp sgt i64 %i.ba, -1, !dbg !19231
  call void @llvm.assume(i1 %i.be), !dbg !19232
  %i.bf = icmp eq i64 %i.m, %i.ba, !dbg !19233
  br i1 %i.bf, label %.invoke, label %bb.v, !dbg !19233

.outer:                                           ; preds = %..outer_crit_edge, %bb.t
  %i.bg = phi i64 [ %.pre, %..outer_crit_edge ], [ %i.bb, %bb.t ], !dbg !19202 ; 3 uses
  %i.bh = icmp ugt i64 %i.ba, %i.bg, !dbg !19203
  br i1 %i.bh, label %.outer._crit_edge.invoke, label %.lr.ph, !dbg !19203, !prof !208

bb.v:                                             ; preds = %bb.u
  %i.bi = shl nuw i64 %i.ba, 1, !dbg !19234
  %..i28 = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.m, i64 range(i64 0, -1) %i.bi), !dbg !19235
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %..i28, i8 noundef 0)
          to label %..outer_crit_edge unwind label %.loopexit.loopexit.split-lp, !dbg !19236

..outer_crit_edge:                                ; preds = %bb.v
  %.pre = load i64, ptr %i.i, align 8, !dbg !19202
  br label %.outer, !dbg !19236

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.p, %bb.o, %bb.n, %.noexc
  %.sroa.0.0.i = phi i8 [ %i.ay, %bb.p ], [ %switch.idx.cast.i.i.i, %bb.n ], [ %i.aw, %bb.o ], [ %i.ar, %.noexc ], !dbg !19237
  %i.bj = icmp eq i8 %.sroa.0.0.i, 35, !dbg !19238
  br i1 %i.bj, label %bb.w, label %.loopexit37, !dbg !19176

bb.w:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19239
  switch i64 %i.al, label %default.unreachable [
    i64 2, label %bb.z
    i64 3, label %bb.x
    i64 0, label %bb.z
    i64 1, label %bb.y
  ], !dbg !19240, !prof !199

bb.x:                                             ; preds = %bb.w
  %i.bk = icmp ult ptr %i.ai, inttoptr (i64 188978561024 to ptr), !dbg !19241
  %i.bl = and i64 %i.aj, 1095216660480, !dbg !19242
  %i.bm = icmp ne i64 %i.bl, 1095216660480, !dbg !19242
  call void @llvm.assume(i1 %i.bk), !dbg !19243
  call void @llvm.assume(i1 %i.bm), !dbg !19243
  br label %bb.z, !dbg !19244

bb.y:                                             ; preds = %bb.w
  %i.bn = getelementptr i8, ptr %i.ai, i64 -1, !dbg !19245 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ], !dbg !19246
  store ptr %i.bn, ptr %i.w, align 8, !dbg !19247, !alias.scope !19177
  store i8 3, ptr %i.a, align 8, !dbg !19248, !alias.scope !19177
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %bb.z unwind label %.loopexit.loopexit, !dbg !19249

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19250
  %i.bo = load i64, ptr %i.i, align 8, !dbg !19202, !noundef !104 ; 3 uses
  %i.bp = icmp ugt i64 %.sroa.08.0.ph82, %i.bo, !dbg !19203
  br i1 %i.bp, label %.outer._crit_edge.invoke, label %bb.j, !dbg !19203, !prof !218

bb.aa:                                            ; preds = %bb.m, %.noexc
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg(ptr nonnull %i.ai) #14
          to label %.loopexit unwind label %bb.ab, !dbg !19251

bb.ab:                                            ; preds = %bb.aa
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !19252
  unreachable, !dbg !19252

.loopexit:                                        ; preds = %.loopexit.split-lp, %.loopexit.loopexit.split-lp, %.loopexit.loopexit, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.aa ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit38, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp39, %.loopexit.loopexit.split-lp ]
  %i.bs = load i64, ptr %i.e, align 8, !dbg !19253, !noundef !104
  %i.bt = add i64 %i.bs, 1, !dbg !19254
  store i64 %i.bt, ptr %i.e, align 8, !dbg !19255
  resume { ptr, i32 } %.pn, !dbg !19252
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher34fill_multi_line_buffer_from_readerINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtCs6Ur84ob3I15_9termcolor6BufferEECs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(152) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !19256 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !19369
  %i.c = load i8, ptr %i.b, align 8, !dbg !19369, !range !113, !noundef !104
  %i.d = trunc nuw i8 %i.c to i1, !dbg !19369
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !19369, !prof !165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #12, !dbg !19370
  unreachable, !dbg !19370

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !19371 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !19372, !noundef !104
  %i.g = icmp eq i64 %i.f, 0, !dbg !19373
  br i1 %i.g, label %bb.d, label %bb.e, !dbg !19373, !prof !165

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.e, align 8, !dbg !19374
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !19375 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !19376 ; 5 uses
  store i64 0, ptr %i.i, align 8, !dbg !19376
  %i.j = load i64, ptr %0, align 8, !dbg !19377, !range !112, !noundef !104
  %i.k = trunc nuw i64 %i.j to i1, !dbg !19378
  br i1 %i.k, label %bb.f, label %bb.g, !dbg !19378

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #12, !dbg !19379
  unreachable, !dbg !19379

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19377
  %i.m = load i64, ptr %i.l, align 8, !dbg !19380, !noundef !104 ; 5 uses
  %i.n = icmp eq i64 %i.m, 0, !dbg !19381
  br i1 %i.n, label %.invoke, label %bb.i, !dbg !19381

bb.g:                                             ; preds = %bb.d
  %i.o = invoke { i64, ptr } @_RNvYINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtB1s_2io4read4Read11read_to_endCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !19382 ; 2 uses

.loopexit.loopexit:                               ; preds = %bb.y, %bb.j
  %lpad.loopexit38 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %bb.v
  %lpad.loopexit.split-lp39 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.outer._crit_edge.invoke, %.invoke, %bb.g, %bb.i, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.p = extractvalue { i64, ptr } %i.o, 0, !dbg !19383
  %i.q = trunc nuw i64 %i.p to i1, !dbg !19384
  %i.r = extractvalue { i64, ptr } %i.o, 1
  %spec.select = select i1 %i.q, ptr %i.r, ptr null, !dbg !19384
  br label %.loopexit37, !dbg !19384

.loopexit37:                                      ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, %.invoke, %bb.h, %bb.r
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.h ], [ null, %bb.r ], [ %i.u, %.invoke ], [ %i.ai, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], !dbg !19385
  %i.s = load i64, ptr %i.e, align 8, !dbg !19386, !noundef !104
  %i.t = add i64 %i.s, 1, !dbg !19387
  store i64 %i.t, ptr %i.e, align 8, !dbg !19388
  ret ptr %.sroa.0.0, !dbg !19389

.invoke:                                          ; preds = %bb.u, %bb.f
  %i.u = invoke noundef nonnull ptr @_RNvNtCshqpdr3wwzuw_13grep_searcher11line_buffer11alloc_error(i64 noundef %i.m)
          to label %.loopexit37 unwind label %.loopexit.split-lp, !dbg !19390

bb.i:                                             ; preds = %bb.f
  %..i = tail call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.m, i64 65536), !dbg !19391
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %..i, i8 noundef 0)
          to label %.preheader unwind label %.loopexit.split-lp, !dbg !19392

.preheader:                                       ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.i, align 8, !dbg !19393, !noundef !104
  br label %.lr.ph, !dbg !19394

.lr.ph:                                           ; preds = %.preheader, %.outer
  %i.y = phi i64 [ %i.x, %.preheader ], [ %i.bg, %.outer ]
  %.sroa.08.0.ph82 = phi i64 [ 0, %.preheader ], [ %i.ba, %.outer ] ; 6 uses
  br label %bb.j, !dbg !19394

bb.j:                                             ; preds = %.lr.ph, %bb.z
  %i.z = phi i64 [ %i.y, %.lr.ph ], [ %i.bo, %bb.z ]
  %i.aa = load ptr, ptr %i.v, align 8, !dbg !19395, !nonnull !104, !noundef !104
  %i.ab = sub nuw i64 %i.z, %.sroa.08.0.ph82, !dbg !19396
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.08.0.ph82, !dbg !19397
  %i.ad = invoke { i64, ptr } @_RNvXs0_Cs4h1mOclLn8u_14encoding_rs_ioINtB5_17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtB1y_2io4read4Read4readCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1, ptr noalias nofree noundef nonnull %i.ac, i64 noundef %i.ab)
          to label %bb.k unwind label %.loopexit.loopexit, !dbg !19398 ; 2 uses

.outer._crit_edge.invoke:                         ; preds = %bb.s, %.outer, %bb.z
  %i.ae = phi i64 [ %.sroa.08.0.ph82, %bb.z ], [ %i.ba, %.outer ], [ %i.ba, %bb.s ]
  %i.af = phi i64 [ %i.bo, %bb.z ], [ %i.bg, %.outer ], [ %i.bb, %bb.s ] ; 2 uses
  %i.ag = phi ptr [ @32, %bb.z ], [ @32, %.outer ], [ @31, %bb.s ]
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ae, i64 noundef %i.af, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag) #13
          to label %.outer._crit_edge.cont unwind label %.loopexit.split-lp, !dbg !19399

.outer._crit_edge.cont:                           ; preds = %.outer._crit_edge.invoke
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ah = extractvalue { i64, ptr } %i.ad, 0, !dbg !19400
  %i.ai = extractvalue { i64, ptr } %i.ad, 1, !dbg !19400 ; 10 uses
  %i.aj = ptrtoint ptr %i.ai to i64, !dbg !19400  ; 5 uses
  %i.ak = trunc nuw i64 %i.ah to i1, !dbg !19401
  br i1 %i.ak, label %bb.l, label %bb.q, !dbg !19401

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.al = and i64 %i.aj, 3, !dbg !19402           ; 2 uses
  switch i64 %i.al, label %default.unreachable [
    i64 2, label %bb.m
    i64 3, label %bb.n
    i64 0, label %bb.o
    i64 1, label %bb.p
  ], !dbg !19403, !prof !199

default.unreachable:                              ; preds = %bb.w, %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.am = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.aa, !dbg !19404

.noexc:                                           ; preds = %bb.m
  %i.an = lshr i64 %i.aj, 32, !dbg !19405
  %i.ao = trunc nuw i64 %i.an to i32, !dbg !19405
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !19406
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !19406, !nonnull !104, !noundef !104
  %i.ar = invoke noundef i8 %i.aq(i32 noundef %i.ao)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.aa, !dbg !19406, !inline_history !46

bb.n:                                             ; preds = %bb.l
  %i.as = lshr i64 %i.aj, 32, !dbg !19407
  %i.at = icmp ult ptr %i.ai, inttoptr (i64 188978561024 to ptr), !dbg !19408
  %switch.idx.cast.i.i.i = trunc i64 %i.as to i8  ; 2 uses
  %i.au = icmp ne i8 %switch.idx.cast.i.i.i, -1, !dbg !19409
  call void @llvm.assume(i1 %i.at), !dbg !19410
  call void @llvm.assume(i1 %i.au), !dbg !19410
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, !dbg !19411

bb.o:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !19412
  %i.aw = load i8, ptr %i.av, align 8, !dbg !19412, !range !203, !noundef !104
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, !dbg !19413

bb.p:                                             ; preds = %bb.l
  %i.ax = getelementptr i8, ptr %i.ai, i64 31, !dbg !19414
  %i.ay = load i8, ptr %i.ax, align 8, !dbg !19414, !range !203, !noundef !104
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, !dbg !19415

bb.q:                                             ; preds = %bb.k
  %i.az = icmp eq ptr %i.ai, null, !dbg !19416
  br i1 %i.az, label %bb.r, label %bb.s, !dbg !19416

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.sroa.08.0.ph82, i8 noundef 0)
          to label %.loopexit37 unwind label %.loopexit.split-lp, !dbg !19417

bb.s:                                             ; preds = %bb.q
  %i.ba = add i64 %.sroa.08.0.ph82, %i.aj, !dbg !19418 ; 9 uses
  %i.bb = load i64, ptr %i.i, align 8, !dbg !19419, !noundef !104 ; 4 uses
  %i.bc = icmp ugt i64 %i.ba, %i.bb, !dbg !19420
  br i1 %i.bc, label %.outer._crit_edge.invoke, label %bb.t, !dbg !19420, !prof !207

bb.t:                                             ; preds = %bb.s
  %i.bd = icmp eq i64 %i.bb, %i.ba, !dbg !19421
  br i1 %i.bd, label %bb.u, label %.outer, !dbg !19421

bb.u:                                             ; preds = %bb.t
  %i.be = icmp sgt i64 %i.ba, -1, !dbg !19422
  call void @llvm.assume(i1 %i.be), !dbg !19423
  %i.bf = icmp eq i64 %i.m, %i.ba, !dbg !19424
  br i1 %i.bf, label %.invoke, label %bb.v, !dbg !19424

.outer:                                           ; preds = %..outer_crit_edge, %bb.t
  %i.bg = phi i64 [ %.pre, %..outer_crit_edge ], [ %i.bb, %bb.t ], !dbg !19393 ; 3 uses
  %i.bh = icmp ugt i64 %i.ba, %i.bg, !dbg !19394
  br i1 %i.bh, label %.outer._crit_edge.invoke, label %.lr.ph, !dbg !19394, !prof !208

bb.v:                                             ; preds = %bb.u
  %i.bi = shl nuw i64 %i.ba, 1, !dbg !19425
  %..i28 = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.m, i64 range(i64 0, -1) %i.bi), !dbg !19426
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %..i28, i8 noundef 0)
          to label %..outer_crit_edge unwind label %.loopexit.loopexit.split-lp, !dbg !19427

..outer_crit_edge:                                ; preds = %bb.v
  %.pre = load i64, ptr %i.i, align 8, !dbg !19393
  br label %.outer, !dbg !19427

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.p, %bb.o, %bb.n, %.noexc
  %.sroa.0.0.i = phi i8 [ %i.ay, %bb.p ], [ %switch.idx.cast.i.i.i, %bb.n ], [ %i.aw, %bb.o ], [ %i.ar, %.noexc ], !dbg !19428
  %i.bj = icmp eq i8 %.sroa.0.0.i, 35, !dbg !19429
  br i1 %i.bj, label %bb.w, label %.loopexit37, !dbg !19367

bb.w:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19430
  switch i64 %i.al, label %default.unreachable [
    i64 2, label %bb.z
    i64 3, label %bb.x
    i64 0, label %bb.z
    i64 1, label %bb.y
  ], !dbg !19431, !prof !199

bb.x:                                             ; preds = %bb.w
  %i.bk = icmp ult ptr %i.ai, inttoptr (i64 188978561024 to ptr), !dbg !19432
  %i.bl = and i64 %i.aj, 1095216660480, !dbg !19433
  %i.bm = icmp ne i64 %i.bl, 1095216660480, !dbg !19433
  call void @llvm.assume(i1 %i.bk), !dbg !19434
  call void @llvm.assume(i1 %i.bm), !dbg !19434
  br label %bb.z, !dbg !19435

bb.y:                                             ; preds = %bb.w
  %i.bn = getelementptr i8, ptr %i.ai, i64 -1, !dbg !19436 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ], !dbg !19437
  store ptr %i.bn, ptr %i.w, align 8, !dbg !19438, !alias.scope !19368
  store i8 3, ptr %i.a, align 8, !dbg !19439, !alias.scope !19368
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %bb.z unwind label %.loopexit.loopexit, !dbg !19440

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19441
  %i.bo = load i64, ptr %i.i, align 8, !dbg !19393, !noundef !104 ; 3 uses
  %i.bp = icmp ugt i64 %.sroa.08.0.ph82, %i.bo, !dbg !19394
  br i1 %i.bp, label %.outer._crit_edge.invoke, label %bb.j, !dbg !19394, !prof !218

bb.aa:                                            ; preds = %bb.m, %.noexc
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg(ptr nonnull %i.ai) #14
          to label %.loopexit unwind label %bb.ab, !dbg !19442

bb.ab:                                            ; preds = %bb.aa
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !19443
  unreachable, !dbg !19443

.loopexit:                                        ; preds = %.loopexit.split-lp, %.loopexit.loopexit.split-lp, %.loopexit.loopexit, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.aa ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit38, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp39, %.loopexit.loopexit.split-lp ]
  %i.bs = load i64, ptr %i.e, align 8, !dbg !19444, !noundef !104
  %i.bt = add i64 %i.bs, 1, !dbg !19445
  store i64 %i.bt, ptr %i.e, align 8, !dbg !19446
  resume { ptr, i32 } %.pn, !dbg !19443
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RINvMs7_NtCshqpdr3wwzuw_13grep_searcher8searcherNtB6_8Searcher34fill_multi_line_buffer_from_readerINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEQINtNtCshhHc5tDBDRu_12grep_printer8standard12StandardSinkRRNtNtCsdq8xsXUia3c_10grep_regex7matcher12RegexMatcherNtNtCsgwyS1EwTFAS_8grep_cli3wtr14StandardStreamEECs2NzvFoTxuAy_2rg(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(152) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !19447 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !19560
  %i.c = load i8, ptr %i.b, align 8, !dbg !19560, !range !113, !noundef !104
  %i.d = trunc nuw i8 %i.c to i1, !dbg !19560
  br i1 %i.d, label %bb.c, label %bb.b, !dbg !19560, !prof !165

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #12, !dbg !19561
  unreachable, !dbg !19561

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !19562 ; 6 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !19563, !noundef !104
  %i.g = icmp eq i64 %i.f, 0, !dbg !19564
  br i1 %i.g, label %bb.d, label %bb.e, !dbg !19564, !prof !165

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.e, align 8, !dbg !19565
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 240, !dbg !19566 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256, !dbg !19567 ; 5 uses
  store i64 0, ptr %i.i, align 8, !dbg !19567
  %i.j = load i64, ptr %0, align 8, !dbg !19568, !range !112, !noundef !104
  %i.k = trunc nuw i64 %i.j to i1, !dbg !19569
  br i1 %i.k, label %bb.f, label %bb.g, !dbg !19569

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #12, !dbg !19570
  unreachable, !dbg !19570

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19568
  %i.m = load i64, ptr %i.l, align 8, !dbg !19571, !noundef !104 ; 5 uses
  %i.n = icmp eq i64 %i.m, 0, !dbg !19572
  br i1 %i.n, label %.invoke, label %bb.i, !dbg !19572

bb.g:                                             ; preds = %bb.d
  %i.o = invoke { i64, ptr } @_RNvYINtCs4h1mOclLn8u_14encoding_rs_io17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtB1s_2io4read4Read11read_to_endCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.h unwind label %.loopexit.split-lp, !dbg !19573 ; 2 uses

.loopexit.loopexit:                               ; preds = %bb.y, %bb.j
  %lpad.loopexit38 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %bb.v
  %lpad.loopexit.split-lp39 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.outer._crit_edge.invoke, %.invoke, %bb.g, %bb.i, %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.p = extractvalue { i64, ptr } %i.o, 0, !dbg !19574
  %i.q = trunc nuw i64 %i.p to i1, !dbg !19575
  %i.r = extractvalue { i64, ptr } %i.o, 1
  %spec.select = select i1 %i.q, ptr %i.r, ptr null, !dbg !19575
  br label %.loopexit37, !dbg !19575

.loopexit37:                                      ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, %.invoke, %bb.h, %bb.r
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.h ], [ null, %bb.r ], [ %i.u, %.invoke ], [ %i.ai, %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit ], !dbg !19576
  %i.s = load i64, ptr %i.e, align 8, !dbg !19577, !noundef !104
  %i.t = add i64 %i.s, 1, !dbg !19578
  store i64 %i.t, ptr %i.e, align 8, !dbg !19579
  ret ptr %.sroa.0.0, !dbg !19580

.invoke:                                          ; preds = %bb.u, %bb.f
  %i.u = invoke noundef nonnull ptr @_RNvNtCshqpdr3wwzuw_13grep_searcher11line_buffer11alloc_error(i64 noundef %i.m)
          to label %.loopexit37 unwind label %.loopexit.split-lp, !dbg !19581

bb.i:                                             ; preds = %bb.f
  %..i = tail call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.m, i64 65536), !dbg !19582
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %..i, i8 noundef 0)
          to label %.preheader unwind label %.loopexit.split-lp, !dbg !19583

.preheader:                                       ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.i, align 8, !dbg !19584, !noundef !104
  br label %.lr.ph, !dbg !19585

.lr.ph:                                           ; preds = %.preheader, %.outer
  %i.y = phi i64 [ %i.x, %.preheader ], [ %i.bg, %.outer ]
  %.sroa.08.0.ph82 = phi i64 [ 0, %.preheader ], [ %i.ba, %.outer ] ; 6 uses
  br label %bb.j, !dbg !19585

bb.j:                                             ; preds = %.lr.ph, %bb.z
  %i.z = phi i64 [ %i.y, %.lr.ph ], [ %i.bo, %bb.z ]
  %i.aa = load ptr, ptr %i.v, align 8, !dbg !19586, !nonnull !104, !noundef !104
  %i.ab = sub nuw i64 %i.z, %.sroa.08.0.ph82, !dbg !19587
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sroa.08.0.ph82, !dbg !19588
  %i.ad = invoke { i64, ptr } @_RNvXs0_Cs4h1mOclLn8u_14encoding_rs_ioINtB5_17DecodeReaderBytesRNtNtCsG258MDvU3F_3std2fs4FileQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtNtB1y_2io4read4Read4readCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(152) %1, ptr noalias nofree noundef nonnull %i.ac, i64 noundef %i.ab)
          to label %bb.k unwind label %.loopexit.loopexit, !dbg !19589 ; 2 uses

.outer._crit_edge.invoke:                         ; preds = %bb.s, %.outer, %bb.z
  %i.ae = phi i64 [ %.sroa.08.0.ph82, %bb.z ], [ %i.ba, %.outer ], [ %i.ba, %bb.s ]
  %i.af = phi i64 [ %i.bo, %bb.z ], [ %i.bg, %.outer ], [ %i.bb, %bb.s ] ; 2 uses
  %i.ag = phi ptr [ @32, %bb.z ], [ @32, %.outer ], [ @31, %bb.s ]
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.ae, i64 noundef %i.af, i64 noundef %i.af, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ag) #13
          to label %.outer._crit_edge.cont unwind label %.loopexit.split-lp, !dbg !19590

.outer._crit_edge.cont:                           ; preds = %.outer._crit_edge.invoke
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ah = extractvalue { i64, ptr } %i.ad, 0, !dbg !19591
  %i.ai = extractvalue { i64, ptr } %i.ad, 1, !dbg !19591 ; 10 uses
  %i.aj = ptrtoint ptr %i.ai to i64, !dbg !19591  ; 5 uses
  %i.ak = trunc nuw i64 %i.ah to i1, !dbg !19592
  br i1 %i.ak, label %bb.l, label %bb.q, !dbg !19592

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ai) ]
  %i.al = and i64 %i.aj, 3, !dbg !19593           ; 2 uses
  switch i64 %i.al, label %default.unreachable [
    i64 2, label %bb.m
    i64 3, label %bb.n
    i64 0, label %bb.o
    i64 1, label %bb.p
  ], !dbg !19594, !prof !199

default.unreachable:                              ; preds = %bb.w, %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.am = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCskKLDkoKarTP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.aa, !dbg !19595

.noexc:                                           ; preds = %bb.m
  %i.an = lshr i64 %i.aj, 32, !dbg !19596
  %i.ao = trunc nuw i64 %i.an to i32, !dbg !19596
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8, !dbg !19597
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !19597, !nonnull !104, !noundef !104
  %i.ar = invoke noundef i8 %i.aq(i32 noundef %i.ao)
          to label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.aa, !dbg !19597, !inline_history !46

bb.n:                                             ; preds = %bb.l
  %i.as = lshr i64 %i.aj, 32, !dbg !19598
  %i.at = icmp ult ptr %i.ai, inttoptr (i64 188978561024 to ptr), !dbg !19599
  %switch.idx.cast.i.i.i = trunc i64 %i.as to i8  ; 2 uses
  %i.au = icmp ne i8 %switch.idx.cast.i.i.i, -1, !dbg !19600
  call void @llvm.assume(i1 %i.at), !dbg !19601
  call void @llvm.assume(i1 %i.au), !dbg !19601
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, !dbg !19602

bb.o:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !19603
  %i.aw = load i8, ptr %i.av, align 8, !dbg !19603, !range !203, !noundef !104
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, !dbg !19604

bb.p:                                             ; preds = %bb.l
  %i.ax = getelementptr i8, ptr %i.ai, i64 31, !dbg !19605
  %i.ay = load i8, ptr %i.ax, align 8, !dbg !19605, !range !203, !noundef !104
  br label %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit, !dbg !19606

bb.q:                                             ; preds = %bb.k
  %i.az = icmp eq ptr %i.ai, null, !dbg !19607
  br i1 %i.az, label %bb.r, label %bb.s, !dbg !19607

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %.sroa.08.0.ph82, i8 noundef 0)
          to label %.loopexit37 unwind label %.loopexit.split-lp, !dbg !19608

bb.s:                                             ; preds = %bb.q
  %i.ba = add i64 %.sroa.08.0.ph82, %i.aj, !dbg !19609 ; 9 uses
  %i.bb = load i64, ptr %i.i, align 8, !dbg !19610, !noundef !104 ; 4 uses
  %i.bc = icmp ugt i64 %i.ba, %i.bb, !dbg !19611
  br i1 %i.bc, label %.outer._crit_edge.invoke, label %bb.t, !dbg !19611, !prof !207

bb.t:                                             ; preds = %bb.s
  %i.bd = icmp eq i64 %i.bb, %i.ba, !dbg !19612
  br i1 %i.bd, label %bb.u, label %.outer, !dbg !19612

bb.u:                                             ; preds = %bb.t
  %i.be = icmp sgt i64 %i.ba, -1, !dbg !19613
  call void @llvm.assume(i1 %i.be), !dbg !19614
  %i.bf = icmp eq i64 %i.m, %i.ba, !dbg !19615
  br i1 %i.bf, label %.invoke, label %bb.v, !dbg !19615

.outer:                                           ; preds = %..outer_crit_edge, %bb.t
  %i.bg = phi i64 [ %.pre, %..outer_crit_edge ], [ %i.bb, %bb.t ], !dbg !19584 ; 3 uses
  %i.bh = icmp ugt i64 %i.ba, %i.bg, !dbg !19585
  br i1 %i.bh, label %.outer._crit_edge.invoke, label %.lr.ph, !dbg !19585, !prof !208

bb.v:                                             ; preds = %bb.u
  %i.bi = shl nuw i64 %i.ba, 1, !dbg !19616
  %..i28 = call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 1, 0) %i.m, i64 range(i64 0, -1) %i.bi), !dbg !19617
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE6resizeCs2NzvFoTxuAy_2rg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %..i28, i8 noundef 0)
          to label %..outer_crit_edge unwind label %.loopexit.loopexit.split-lp, !dbg !19618

..outer_crit_edge:                                ; preds = %bb.v
  %.pre = load i64, ptr %i.i, align 8, !dbg !19584
  br label %.outer, !dbg !19618

_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.p, %bb.o, %bb.n, %.noexc
  %.sroa.0.0.i = phi i8 [ %i.ay, %bb.p ], [ %switch.idx.cast.i.i.i, %bb.n ], [ %i.aw, %bb.o ], [ %i.ar, %.noexc ], !dbg !19619
  %i.bj = icmp eq i8 %.sroa.0.0.i, 35, !dbg !19620
  br i1 %i.bj, label %bb.w, label %.loopexit37, !dbg !19558

bb.w:                                             ; preds = %_RNvMs1_NtNtCskKLDkoKarTP_4core2io5errorNtB5_5Error4kind.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19621
  switch i64 %i.al, label %default.unreachable [
    i64 2, label %bb.z
    i64 3, label %bb.x
    i64 0, label %bb.z
    i64 1, label %bb.y
  ], !dbg !19622, !prof !199

bb.x:                                             ; preds = %bb.w
  %i.bk = icmp ult ptr %i.ai, inttoptr (i64 188978561024 to ptr), !dbg !19623
  %i.bl = and i64 %i.aj, 1095216660480, !dbg !19624
  %i.bm = icmp ne i64 %i.bl, 1095216660480, !dbg !19624
  call void @llvm.assume(i1 %i.bk), !dbg !19625
  call void @llvm.assume(i1 %i.bm), !dbg !19625
  br label %bb.z, !dbg !19626

bb.y:                                             ; preds = %bb.w
  %i.bn = getelementptr i8, ptr %i.ai, i64 -1, !dbg !19627 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bn) ], !dbg !19628
  store ptr %i.bn, ptr %i.w, align 8, !dbg !19629, !alias.scope !19559
  store i8 3, ptr %i.a, align 8, !dbg !19630, !alias.scope !19559
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %bb.z unwind label %.loopexit.loopexit, !dbg !19631

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19632
  %i.bo = load i64, ptr %i.i, align 8, !dbg !19584, !noundef !104 ; 3 uses
  %i.bp = icmp ugt i64 %.sroa.08.0.ph82, %i.bo, !dbg !19585
  br i1 %i.bp, label %.outer._crit_edge.invoke, label %bb.j, !dbg !19585, !prof !218

bb.aa:                                            ; preds = %bb.m, %.noexc
  %i.bq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg(ptr nonnull %i.ai) #14
          to label %.loopexit unwind label %bb.ab, !dbg !19633

bb.ab:                                            ; preds = %bb.aa
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !dbg !19634
  unreachable, !dbg !19634

.loopexit:                                        ; preds = %.loopexit.split-lp, %.loopexit.loopexit.split-lp, %.loopexit.loopexit, %bb.aa
  %.pn = phi { ptr, i32 } [ %i.bq, %bb.aa ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit38, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp39, %.loopexit.loopexit.split-lp ]
  %i.bs = load i64, ptr %i.e, align 8, !dbg !19635, !noundef !104
  %i.bt = add i64 %i.bs, 1, !dbg !19636
  store i64 %i.bt, ptr %i.e, align 8, !dbg !19637
  resume { ptr, i32 } %.pn, !dbg !19634
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2NzvFoTxuAy_2rg(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !54 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19655
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64, !dbg !19656 ; 2 uses
  %i.c = and i64 %i.b, 3, !dbg !19657
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs2NzvFoTxuAy_2rg.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs2NzvFoTxuAy_2rg.exit
    i64 1, label %bb.c
  ], !dbg !19658, !prof !199

default.unreachable:                              ; preds = %bb.a
  unreachable

end_hunk_0
