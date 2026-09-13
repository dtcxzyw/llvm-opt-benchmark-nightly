Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raft-rs/original/raft-bbaa2c867252f069.raft.b69bdf7286237635-cgu.10?download=true
inline.NumInlined: 74
inline.NumDeleted: 40
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable17maybe_first_index:bb.a
  %i.b = load i8, ptr %i.a, align 8, !range !7, !noundef !6
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = tail call noundef nonnull align 8 ptr @_RNvMsb_NtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpbNtB5_8Snapshot12get_metadata(ptr noundef nonnull align 8 %i.c)
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  %i.f = add i64 %i.e, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i64 [ %i.f, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.g = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.h = insertvalue { i64, i64 } %i.g, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable19truncate_and_append(ptr noalias nofree noundef align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 %1, i64 noundef range(i64 0, 88686269585142076) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !6 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 6 uses
  %i.g = icmp ult i64 %i.f, 88686269585142076
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add i64 %i.f, %i.d
  %i.i = icmp eq i64 %i.b, %i.h
  br i1 %i.i, label %_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable20maybe_shrink_entries.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not8 = icmp ugt i64 %i.b, %i.d
  br i1 %.not8, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable22must_check_outofbounds(ptr noundef nonnull align 8 %0, i64 noundef %i.d, i64 noundef %i.b)
  %i.j = sub nuw i64 %i.b, %i.d                   ; 5 uses
  %i.k = load i64, ptr %i.e, align 8, !noundef !6 ; 5 uses
  %i.l = icmp ugt i64 %i.j, %i.k
  br i1 %i.l, label %bb.m, label %bb.l, !prof !8

bb.f:                                             ; preds = %bb.d
  store i64 %i.b, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6 ; 2 uses
  store i64 0, ptr %i.e, align 8
  %i.o = icmp eq i64 %i.f, 0
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryECsfG1pxJcRFT5_4raft.exit, label %.lr.ph31

bb.g:                                             ; preds = %.lr.ph31
  %i.p = icmp eq i64 %i.r, %i.f
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryECsfG1pxJcRFT5_4raft.exit, label %.lr.ph31

.lr.ph31:                                         ; preds = %bb.f, %bb.g
  %.sroa.0.0.i29 = phi i64 [ %i.r, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.q = getelementptr inbounds nuw [104 x i8], ptr %i.n, i64 %.sroa.0.0.i29
  %i.r = add nuw nsw i64 %.sroa.0.0.i29, 1        ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef readonly align 8 dereferenceable(104) %i.q)
          to label %bb.g unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph34
  %i.s = add nuw nsw i64 %.sroa.0.1.i32, 1        ; 2 uses
  %i.t = icmp eq i64 %i.s, %i.f
  br i1 %i.t, label %._crit_edge35, label %.lr.ph34

bb.i:                                             ; preds = %.lr.ph31
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = icmp eq i64 %i.r, %i.f
  br i1 %i.v, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.i, %bb.h
  %.sroa.0.1.i32 = phi i64 [ %i.s, %bb.h ], [ %i.r, %bb.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [104 x i8], ptr %i.n, i64 %.sroa.0.1.i32
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef readonly align 8 dereferenceable(104) %i.w) #19
          to label %bb.h unwind label %bb.j

._crit_edge35:                                    ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.u

bb.j:                                             ; preds = %.lr.ph34
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !78
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.g, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.y, align 8
  %i.z = load i64, ptr %i.e, align 8, !alias.scope !79, !noundef !6 ; 2 uses
  %i.aa = icmp ult i64 %i.z, 88686269585142076
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = load i64, ptr %0, align 8, !range !10, !alias.scope !79, !noundef !6 ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, 257
  br i1 %i.ac, label %_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable20maybe_shrink_entries.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryECsfG1pxJcRFT5_4raft.exit
  %i.ad = shl nuw nsw i64 %i.z, 1
  %..i.i = tail call noundef range(i64 64, 177372539170284151) i64 @llvm.umax.i64(i64 range(i64 0, 177372539170284151) %i.ad, i64 64) ; 2 uses
  %i.ae = shl nuw nsw i64 %..i.i, 1
  %.not.i = icmp samesign ult i64 %i.ab, %i.ae
  br i1 %.not.i, label %_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable20maybe_shrink_entries.exit, label %_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable20maybe_shrink_entries.exit.sink.split

bb.l:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.ah = getelementptr inbounds nuw [104 x i8], ptr %i.ag, i64 %i.k
  %i.ai = icmp samesign eq i64 %i.j, %i.k
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw [104 x i8], ptr %i.ag, i64 %i.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %.promoted = load i64, ptr %i.ak, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.j, i64 noundef %i.k, i64 noundef %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #21
  unreachable

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %i.al = phi i64 [ %.promoted, %.lr.ph ], [ %i.as, %bb.n ]
  %.sroa.0.017 = phi ptr [ %i.aj, %.lr.ph ], [ %i.am, %bb.n ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.017, i64 104 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.017, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noundef !6
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.017, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !6
  %i.ar = add i64 %i.ao, %i.aq
  %reass.sub = sub i64 %i.al, %i.ar
  %i.as = add i64 %reass.sub, -12                 ; 2 uses
  store i64 %i.as, ptr %i.ak, align 8
  %i.at = icmp eq ptr %i.am, %i.ah
  br i1 %i.at, label %._crit_edge, label %bb.n

._crit_edge:                                      ; preds = %bb.n, %bb.l
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryE8truncateCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j)
  %i.au = load i64, ptr %i.e, align 8, !alias.scope !80, !noundef !6 ; 2 uses
  %i.av = icmp ult i64 %i.au, 88686269585142076
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i64, ptr %0, align 8, !range !10, !alias.scope !80, !noundef !6 ; 2 uses
  %i.ax = icmp samesign ult i64 %i.aw, 257
  br i1 %i.ax, label %_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable20maybe_shrink_entries.exit, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.ay = shl nuw nsw i64 %i.au, 1
  %..i.i9 = tail call noundef range(i64 64, 177372539170284151) i64 @llvm.umax.i64(i64 range(i64 0, 177372539170284151) %i.ay, i64 64) ; 2 uses
  %i.az = shl nuw nsw i64 %..i.i9, 1
  %.not.i10 = icmp samesign ult i64 %i.aw, %i.az
  br i1 %.not.i10, label %_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable20maybe_shrink_entries.exit, label %_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable20maybe_shrink_entries.exit.sink.split

_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable20maybe_shrink_entries.exit.sink.split: ; preds = %bb.o, %bb.k
  %..i.i9.sink = phi i64 [ %..i.i, %bb.k ], [ %..i.i9, %bb.o ]
  tail call void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryE9shrink_toCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0, i64 noundef %..i.i9.sink)
  br label %_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable20maybe_shrink_entries.exit

_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable20maybe_shrink_entries.exit: ; preds = %_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable20maybe_shrink_entries.exit.sink.split, %bb.o, %._crit_edge, %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryECsfG1pxJcRFT5_4raft.exit, %bb.b
  %.idx = mul nuw nsw i64 %2, 104
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  tail call void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB1X_5slice4iter4IterBG_EEECsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ba)
  %xtraiter = and i64 %2, 1
  %i.bb = icmp eq i64 %2, 1
  br i1 %i.bb, label %.epil.preheader, label %_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable20maybe_shrink_entries.exit.new

_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable20maybe_shrink_entries.exit.new: ; preds = %_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable20maybe_shrink_entries.exit
  %unroll_iter = and i64 %2, 144115188075855870
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable20maybe_shrink_entries.exit.new
  %.sroa.04.0.i = phi i64 [ 0, %_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable20maybe_shrink_entries.exit.new ], [ %i.bo, %bb.p ] ; 3 uses
  %.sroa.02.0.i = phi i64 [ 0, %_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable20maybe_shrink_entries.exit.new ], [ %i.bn, %bb.p ]
  %niter = phi i64 [ 0, %_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable20maybe_shrink_entries.exit.new ], [ %niter.next.1, %bb.p ]
  %i.bc = getelementptr inbounds nuw [104 x i8], ptr %1, i64 %.sroa.04.0.i ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 16
  %.val.i = load i64, ptr %i.bd, align 8, !noundef !6
  %i.be = getelementptr i8, ptr %i.bc, i64 48
  %.val11.i = load i64, ptr %i.be, align 8, !noundef !6
  %i.bf = add i64 %.sroa.02.0.i, 12
  %i.bg = add i64 %i.bf, %.val.i
  %i.bh = add i64 %i.bg, %.val11.i
  %i.bi = getelementptr inbounds nuw [104 x i8], ptr %1, i64 %.sroa.04.0.i ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 120
  %.val.i.1 = load i64, ptr %i.bj, align 8, !noundef !6
  %i.bk = getelementptr i8, ptr %i.bi, i64 152
  %.val11.i.1 = load i64, ptr %i.bk, align 8, !noundef !6
  %i.bl = add i64 %i.bh, 12
  %i.bm = add i64 %i.bl, %.val.i.1
  %i.bn = add i64 %i.bm, %.val11.i.1              ; 3 uses
  %i.bo = add nuw i64 %.sroa.04.0.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNvNtCsfG1pxJcRFT5_4raft4util22entry_approximate_sizeNCINvXsK_NtB1M_5accumjNtB47_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3c_.exit.unr-lcssa, label %bb.p

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNvNtCsfG1pxJcRFT5_4raft4util22entry_approximate_sizeNCINvXsK_NtB1M_5accumjNtB47_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3c_.exit.unr-lcssa: ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNvNtCsfG1pxJcRFT5_4raft4util22entry_approximate_sizeNCINvXsK_NtB1M_5accumjNtB47_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3c_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNvNtCsfG1pxJcRFT5_4raft4util22entry_approximate_sizeNCINvXsK_NtB1M_5accumjNtB47_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3c_.exit.unr-lcssa, %_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable20maybe_shrink_entries.exit
  %.sroa.04.0.i.epil.init = phi i64 [ 0, %_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable20maybe_shrink_entries.exit ], [ %i.bo, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNvNtCsfG1pxJcRFT5_4raft4util22entry_approximate_sizeNCINvXsK_NtB1M_5accumjNtB47_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3c_.exit.unr-lcssa ]
  %.sroa.02.0.i.epil.init = phi i64 [ 0, %_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable20maybe_shrink_entries.exit ], [ %i.bn, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNvNtCsfG1pxJcRFT5_4raft4util22entry_approximate_sizeNCINvXsK_NtB1M_5accumjNtB47_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3c_.exit.unr-lcssa ]
  %lcmp.mod39 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod39)
  %i.bp = getelementptr inbounds nuw [104 x i8], ptr %1, i64 %.sroa.04.0.i.epil.init ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  %.val.i.epil = load i64, ptr %i.bq, align 8, !noundef !6
  %i.br = getelementptr i8, ptr %i.bp, i64 48
  %.val11.i.epil = load i64, ptr %i.br, align 8, !noundef !6
  %i.bs = add i64 %.sroa.02.0.i.epil.init, 12
  %i.bt = add i64 %i.bs, %.val.i.epil
  %i.bu = add i64 %i.bt, %.val11.i.epil
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNvNtCsfG1pxJcRFT5_4raft4util22entry_approximate_sizeNCINvXsK_NtB1M_5accumjNtB47_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3c_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNvNtCsfG1pxJcRFT5_4raft4util22entry_approximate_sizeNCINvXsK_NtB1M_5accumjNtB47_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3c_.exit: ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNvNtCsfG1pxJcRFT5_4raft4util22entry_approximate_sizeNCINvXsK_NtB1M_5accumjNtB47_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3c_.exit.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.bn, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNvNtCsfG1pxJcRFT5_4raft4util22entry_approximate_sizeNCINvXsK_NtB1M_5accumjNtB47_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3c_.exit.unr-lcssa ], [ %i.bu, %.epil.preheader ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !noundef !6
  %i.bx = add i64 %i.bw, %.lcssa
  store i64 %i.bx, ptr %i.bv, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable20release_entry_buffer(ptr noalias nofree noundef align 8 dereferenceable(136) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = icmp ult i64 %i.b, 88686269585142076
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ne i64 %i.b, 0
  %i.e = load i64, ptr %0, align 8, !range !10
  %.not = icmp eq i64 %i.e, 0
  %or.cond = select i1 %i.d, i1 true, i1 %.not
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryEECsfG1pxJcRFT5_4raft.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsfG1pxJcRFT5_4raft(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryEECsfG1pxJcRFT5_4raft.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.g
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.g ], [ %i.f, %bb.d ]
  store i64 0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %i.a, align 8
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs9RMo4C3Dvu6_10raft_proto6protos7eraftpb5EntryEECsfG1pxJcRFT5_4raft.exit: ; preds = %bb.e
  store i64 0, ptr %0, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx2, align 8
  store i64 0, ptr %i.a, align 8
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCsfG1pxJcRFT5_4raft12log_unstableNtB2_8Unstable22must_check_outofbounds(ptr noundef nonnull align 8 %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 12 uses
  %i.d = alloca [64 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  store i64 %1, ptr %i.m, align 8
  store i64 %2, ptr %i.l, align 8
  %i.n = icmp ugt i64 %1, %2
  br i1 %i.n, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !6 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !6 ; 2 uses
  %i.s = icmp ult i64 %i.r, 88686269585142076
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add i64 %i.r, %i.p                       ; 2 uses
  store i64 %i.t, ptr %i.g, align 8
  %i.u = icmp ult i64 %1, %i.p
  %i.v = icmp ugt i64 %2, %i.t
  %or.cond = or i1 %i.u, %i.v
  br i1 %or.cond, label %bb.e, label %bb.d, !prof !11

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvNtCsfG1pxJcRFT5_4raft4util14format_kv_list(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !6 ; 2 uses
  %i.z = icmp sgt i64 %i.y, -1
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = icmp eq i64 %i.y, 0
  br i1 %i.aa, label %bb.l, label %bb.k

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvNtCsfG1pxJcRFT5_4raft4util14format_kv_list(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !6 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i64 %i.ad, 0
  br i1 %i.af, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.m, ptr %i.c, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.446.0..sroa_idx, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %i.ag, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.450.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.o, ptr %i.ah, align 8
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.454.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %i.g, ptr %i.ai, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.458.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.f, ptr %i.aj, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.462.0..sroa_idx, align 8
  br label %.invoke

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.m, ptr %i.d, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.426.0..sroa_idx, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.l, ptr %i.ak, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.430.0..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.o, ptr %i.al, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.434.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.g, ptr %i.am, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.438.0..sroa_idx, align 8
  store ptr @26, ptr %i.e, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.d, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs8_NtCskKLDkoKarTP_4core3fmtNtB5_9ArgumentsNtB5_7Display3fmt, ptr %.sroa.442.0..sroa_idx, align 8
  br label %.invoke

end_hunk_0
