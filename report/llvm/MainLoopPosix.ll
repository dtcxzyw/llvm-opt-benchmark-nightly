Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MainLoopPosix?download=true
inline.NumInlined: 1322
inline.NumDeleted: 718
begin_hunk_0_@_ZN12lldb_private13MainLoopPosix3RunEv:bb.a
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !59   ; 2 uses
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !59   ; 2 uses
  %.not12.i = icmp eq ptr %i.x, %i.y
  br i1 %.not12.i, label %_ZN12lldb_private13MainLoopPosix7RunImpl17ProcessReadEventsEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.l
  %.sroa.07.013.i = phi ptr [ %i.bs, %bb.l ], [ %i.x, %bb.e ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.07.013.i, i64 6
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !62
  %i.ab = and i16 %i.aa, 17
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.l, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.ad = load ptr, ptr %3, align 8, !tbaa !39, !nonnull !40, !align !41 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !74, !range !75, !noundef !40
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %_ZN12lldb_private13MainLoopPosix7RunImpl17ProcessReadEventsEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load i32, ptr %.sroa.07.013.i, align 4, !tbaa !76 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !42, !noalias !259 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !43, !noalias !259 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 116
  %i.an = load i32, ptr %i.am, align 4, !tbaa !44, !noalias !259 ; 4 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.loopexit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = add i32 %i.an, -1                       ; 2 uses
  %i.aq = mul i32 %i.ah, 37
  %.017.i.i.i.i.i.i = and i32 %i.ap, %i.aq        ; 3 uses
  %i.ar = zext i32 %.017.i.i.i.i.i.i to i64       ; 2 uses
  %i.as = lshr i64 %i.ar, 5
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !45, !noalias !260
  %i.av = and i32 %.017.i.i.i.i.i.i, 31
  %i.aw = lshr i32 %i.au, %i.av
  %i.ax = trunc i32 %i.aw to i1
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !77

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ay = add nuw i32 %.018.i.i.i.i.i.i, 1
  %.0.i.i.i.i.i.i = and i32 %i.ay, %i.ap          ; 3 uses
  %i.az = zext i32 %.0.i.i.i.i.i.i to i64         ; 2 uses
  %i.ba = lshr i64 %i.az, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !45, !noalias !260
  %i.bd = and i32 %.0.i.i.i.i.i.i, 31
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i.i, label %.loopexit.i.i.i.i, !prof !78

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.h, %bb.i
  %i.bg = phi i64 [ %i.az, %bb.i ], [ %i.ar, %bb.h ]
  %.018.i.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i.i, %bb.i ], [ %.017.i.i.i.i.i.i, %bb.h ]
  %i.bh = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !45, !noalias !260
  %i.bj = icmp eq i32 %i.ah, %i.bi
  br i1 %i.bj, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt8functionIFvRN12lldb_private12MainLoopBaseEEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS7_EEEEiS7_S9_SC_E4findERKi.exit.loopexit.i.i, label %bb.i, !prof !79

.loopexit.i.i.i.i:                                ; preds = %bb.i, %bb.h, %bb.g
  %i.bk = zext i32 %i.an to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %i.bk
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt8functionIFvRN12lldb_private12MainLoopBaseEEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS7_EEEEiS7_S9_SC_E4findERKi.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt8functionIFvRN12lldb_private12MainLoopBaseEEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS7_EEEEiS7_S9_SC_E4findERKi.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i = zext i32 %i.an to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt8functionIFvRN12lldb_private12MainLoopBaseEEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS7_EEEEiS7_S9_SC_E4findERKi.exit.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt8functionIFvRN12lldb_private12MainLoopBaseEEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS7_EEEEiS7_S9_SC_E4findERKi.exit.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt8functionIFvRN12lldb_private12MainLoopBaseEEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS7_EEEEiS7_S9_SC_E4findERKi.exit.loopexit.i.i, %.loopexit.i.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt8functionIFvRN12lldb_private12MainLoopBaseEEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS7_EEEEiS7_S9_SC_E4findERKi.exit.loopexit.i.i ], [ %i.bk, %.loopexit.i.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi ptr [ %i.bh, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt8functionIFvRN12lldb_private12MainLoopBaseEEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS7_EEEEiS7_S9_SC_E4findERKi.exit.loopexit.i.i ], [ %i.bl, %.loopexit.i.i.i.i ] ; 4 uses
  %i.bm = getelementptr inbounds nuw [40 x i8], ptr %i.aj, i64 %.pre-phi.i.i
  %.not.i.i = icmp eq ptr %.lcssa.sink.i.i.i.i, %i.bm
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt8functionIFvRN12lldb_private12MainLoopBaseEEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS7_EEEEiS7_S9_SC_E4findERKi.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !80
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZNKSt8functionIFvRN12lldb_private12MainLoopBaseEEEclES2_.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt25__throw_bad_function_callv() #23
  unreachable

_ZNKSt8functionIFvRN12lldb_private12MainLoopBaseEEEclES2_.exit.i.i: ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !81
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(241) %i.ad) #22, !inline_history !257
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt8functionIFvRN12lldb_private12MainLoopBaseEEEclES2_.exit.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiSt8functionIFvRN12lldb_private12MainLoopBaseEEENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS7_EEEEiS7_S9_SC_E4findERKi.exit.i.i, %.lr.ph.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.07.013.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bs, %i.y
  br i1 %.not.i, label %_ZN12lldb_private13MainLoopPosix7RunImpl17ProcessReadEventsEv.exit, label %.lr.ph.i

_ZN12lldb_private13MainLoopPosix7RunImpl17ProcessReadEventsEv.exit: ; preds = %bb.f, %bb.l, %bb.e
  call void @_ZN12lldb_private13MainLoopPosix14ProcessSignalsEv(ptr noundef nonnull align 8 dereferenceable(241) %1)
  store atomic i8 0, ptr %i.f seq_cst, align 8
  call void @_ZN12lldb_private12MainLoopBase16ProcessCallbacksEv(ptr noundef nonnull align 8 dereferenceable(89) %1) #22
  %i.bt = load i8, ptr %i.a, align 8, !tbaa !74, !range !75, !noundef !40
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %._crit_edge, label %bb.b, !llvm.loop !258

._crit_edge:                                      ; preds = %_ZN12lldb_private13MainLoopPosix7RunImpl17ProcessReadEventsEv.exit, %bb.a
  call void @_ZN12lldb_private6StatusC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #22
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %_ZN12lldb_private6StatusC2EOS0_.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !32 ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i1, label %_ZN12lldb_private13MainLoopPosix7RunImplD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !34
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bw to i64
  %i.cb = sub i64 %i.bz, %i.ca
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cb) #21
  br label %_ZN12lldb_private13MainLoopPosix7RunImplD2Ev.exit

_ZN12lldb_private13MainLoopPosix7RunImplD2Ev.exit: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void
}

declare noundef zeroext i1 @_ZNK12lldb_private6Status4FailEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private13MainLoopPosix14ProcessSignalsEv(ptr noundef nonnull align 8 dereferenceable(241) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90, !noalias !266
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91, !noalias !266 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.f = load i32, ptr %i.e, align 4, !tbaa !89, !noalias !266 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load i32, ptr %i.g, align 8, !tbaa !115, !noalias !266
  %i.i = icmp eq i32 %i.h, 0
  %i.j = zext i32 %i.f to i64                     ; 4 uses
  %.idx83 = mul nuw nsw i64 %i.j, 192             ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.f, 0
  %or.cond = select i1 %i.i, i1 true, i1 %.not.i.not.i.i
  br i1 %or.cond, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = add nuw nsw i64 %i.j, 31
  %i.l = lshr i64 %i.k, 5                         ; 2 uses
  %i.m = load i32, ptr %i.d, align 4, !tbaa !45, !noalias !267 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiN12lldb_private13MainLoopPosix10SignalInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS4_EEEEiS4_S6_S9_E5beginEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %i.o = icmp eq i64 %i.l, 1
  br i1 %i.o, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph97

.lr.ph.i.i.i:                                     ; preds = %.lr.ph97
  %i.p = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.l
  br i1 %i.q, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph97, !llvm.loop !265

.lr.ph97:                                         ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.r = phi i64 [ %i.p, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45, !noalias !267 ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i.i.i, label %._crit_edge.i.loopexit.i.i, !llvm.loop !265

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph97
  %i.v = mul i64 %i.r, 6144
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiN12lldb_private13MainLoopPosix10SignalInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS4_EEEEiS4_S6_S9_E5beginEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIiN12lldb_private13MainLoopPosix10SignalInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS4_EEEEiS4_S6_S9_E5beginEv.exit: ; preds = %bb.b, %._crit_edge.i.loopexit.i.i
  %.012.lcssa.i.i.i = phi i64 [ 0, %bb.b ], [ %i.v, %._crit_edge.i.loopexit.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ %i.m, %bb.b ], [ %i.t, %._crit_edge.i.loopexit.i.i ]
  %i.w = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %narrow = mul nuw nsw i32 %i.w, 192
  %.idx = zext nneg i32 %narrow to i64
  %i.x = add i64 %.012.lcssa.i.i.i, %.idx         ; 2 uses
  %.not2635 = icmp eq i64 %i.x, %.idx83
  br i1 %.not2635, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiN12lldb_private13MainLoopPosix10SignalInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS4_EEEEiS4_S6_S9_E5beginEv.exit
  %i.y = add nuw nsw i64 %i.j, 31
  %i.z = lshr i64 %i.y, 5                         ; 2 uses
  br label %bb.c

.preheader:                                       ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZN4llvm16DenseMapIteratorIiN12lldb_private13MainLoopPosix10SignalInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EELb0EEppEv.exit, %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.aa = ptrtoint ptr %.sroa.1123.1 to i64
  %.not2742 = icmp eq ptr %.sroa.019.1, %.sroa.7.1
  br i1 %.not2742, label %.critedge, label %.lr.ph44

.lr.ph44:                                         ; preds = %.preheader
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.k

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvm16DenseMapIteratorIiN12lldb_private13MainLoopPosix10SignalInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EELb0EEppEv.exit
  %.pn = phi i64 [ %i.x, %.lr.ph ], [ %i.bq, %_ZN4llvm16DenseMapIteratorIiN12lldb_private13MainLoopPosix10SignalInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EELb0EEppEv.exit ] ; 2 uses
  %.sroa.1123.038 = phi ptr [ null, %.lr.ph ], [ %.sroa.1123.1, %_ZN4llvm16DenseMapIteratorIiN12lldb_private13MainLoopPosix10SignalInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EELb0EEppEv.exit ] ; 4 uses
  %.sroa.7.037 = phi ptr [ null, %.lr.ph ], [ %.sroa.7.1, %_ZN4llvm16DenseMapIteratorIiN12lldb_private13MainLoopPosix10SignalInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EELb0EEppEv.exit ] ; 4 uses
  %.sroa.019.036 = phi ptr [ null, %.lr.ph ], [ %.sroa.019.1, %_ZN4llvm16DenseMapIteratorIiN12lldb_private13MainLoopPosix10SignalInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EELb0EEppEv.exit ] ; 6 uses
  %.sroa.016.039 = getelementptr i8, ptr %i.b, i64 %.pn ; 2 uses
  %i.ab = load i32, ptr %.sroa.016.039, align 8, !tbaa !111 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr @_ZL13g_signal_info, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !107
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %.sroa.7.037, %.sroa.1123.038
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.ab, ptr %.sroa.7.037, align 4, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.037, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.f:                                             ; preds = %bb.d
  %i.ah = ptrtoint ptr %.sroa.1123.038 to i64
  %i.ai = ptrtoint ptr %.sroa.019.036 to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 6 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775804
  br i1 %i.ak, label %bb.g, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #23
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.al = ashr exact i64 %i.aj, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 2305843009213693951)
  %i.ap = select i1 %i.an, i64 2305843009213693951, i64 %i.ao ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.aq = shl nuw nsw i64 %i.ap, 2
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #20 ; 4 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.aj ; 2 uses
  %i.at = load i32, ptr %.sroa.016.039, align 8, !tbaa !45
  store i32 %i.at, ptr %i.as, align 4, !tbaa !45
  %i.au = icmp sgt i64 %i.aj, 0
  br i1 %i.au, label %bb.h, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ar, ptr align 4 %.sroa.019.036, i64 %i.aj, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %.not.i17.i.i = icmp eq ptr %.sroa.019.036, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.019.036, i64 noundef %i.aj) #21
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ap
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.e, %bb.c
  %.sroa.019.1 = phi ptr [ %.sroa.019.036, %bb.c ], [ %i.ar, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.019.036, %bb.e ] ; 6 uses
  %.sroa.7.1 = phi ptr [ %.sroa.7.037, %bb.c ], [ %i.av, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %i.ag, %bb.e ] ; 3 uses
  %.sroa.1123.1 = phi ptr [ %.sroa.1123.038, %bb.c ], [ %i.aw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.1123.038, %bb.e ] ; 2 uses
  %i.ax = add i64 %.pn, 192
  %i.ay = sdiv exact i64 %i.ax, 192               ; 3 uses
  %.not.i.i = icmp ult i64 %i.ay, %i.j
  br i1 %.not.i.i, label %bb.j, label %.preheader

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.az = lshr i64 %i.ay, 5                       ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !45
  %i.bc = trunc nuw i64 %i.ay to i32
  %i.bd = and i32 %i.bc, 31
  %i.be = shl nsw i32 -1, %i.bd
  %i.bf = and i32 %i.bb, %i.be                    ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.i.i.preheader, label %_ZN4llvm16DenseMapIteratorIiN12lldb_private13MainLoopPosix10SignalInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EELb0EEppEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.bh = add nuw nsw i64 %i.az, 1                ; 2 uses
  %i.bi = icmp eq i64 %i.bh, %i.z
  br i1 %i.bi, label %.preheader, label %.lr.ph98

.lr.ph.i.i:                                       ; preds = %.lr.ph98
  %i.bj = add i64 %i.bl, 1                        ; 2 uses
  %i.bk = icmp eq i64 %i.bj, %i.z
  br i1 %i.bk, label %.preheader, label %.lr.ph98, !llvm.loop !265

.lr.ph98:                                         ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.bl = phi i64 [ %i.bj, %.lr.ph.i.i ], [ %i.bh, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !45 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph.i.i, label %_ZN4llvm16DenseMapIteratorIiN12lldb_private13MainLoopPosix10SignalInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EELb0EEppEv.exit, !llvm.loop !265

_ZN4llvm16DenseMapIteratorIiN12lldb_private13MainLoopPosix10SignalInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS3_EELb0EEppEv.exit: ; preds = %.lr.ph98, %bb.j
  %.012.lcssa.i.i = phi i64 [ %i.az, %bb.j ], [ %i.bl, %.lr.ph98 ]
  %.0.lcssa.i.i = phi i32 [ %i.bf, %bb.j ], [ %i.bn, %.lr.ph98 ]
  %i.bp = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %.idx.i.i = mul i64 %.012.lcssa.i.i, 6144
  %narrow85 = mul nuw nsw i32 %i.bp, 192
  %.idx84 = zext nneg i32 %narrow85 to i64
  %i.bq = add i64 %.idx.i.i, %.idx84              ; 2 uses
  %.not26 = icmp eq i64 %i.bq, %.idx83
  br i1 %.not26, label %.preheader, label %bb.c

bb.k:                                             ; preds = %.lr.ph44, %bb.l
  %.sroa.012.043 = phi ptr [ %.sroa.019.1, %.lr.ph44 ], [ %i.bx, %bb.l ] ; 2 uses
  %i.br = load i8, ptr %1, align 8, !tbaa !74, !range !75, !noundef !40
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = load i32, ptr %.sroa.012.043, align 4, !tbaa !45 ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr @_ZL13g_signal_info, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store i32 0, ptr %i.bw, align 4, !tbaa !107
  tail call void @_ZN12lldb_private13MainLoopPosix13ProcessSignalEi(ptr noundef nonnull align 8 dereferenceable(241) %0, i32 noundef %i.bt)
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.012.043, i64 4 ; 2 uses
  %.not27 = icmp eq ptr %i.bx, %.sroa.7.1
  br i1 %.not27, label %.critedge, label %bb.k

.critedge:                                        ; preds = %bb.l, %bb.k, %.preheader
  %.not.i.i.i11 = icmp eq ptr %.sroa.019.1, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %.critedge
  %i.by = ptrtoint ptr %.sroa.019.1 to i64
  %i.bz = sub i64 %i.aa, %i.by
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.019.1, i64 noundef %i.bz) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiN12lldb_private13MainLoopPosix10SignalInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS4_EEEEiS4_S6_S9_E5beginEv.exit, %bb.a, %.critedge, %bb.m
  ret void
}

declare void @_ZN12lldb_private12MainLoopBase16ProcessCallbacksEv(ptr noundef nonnull align 8 dereferenceable(89)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12lldb_private13MainLoopPosix13ProcessSignalEi(ptr noundef nonnull align 8 dereferenceable(241) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallVector", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90, !noalias !279 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91, !noalias !279 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.f = load i32, ptr %i.e, align 4, !tbaa !89, !noalias !279 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = mul i32 %1, 37
  %.017.i.i.i.i = and i32 %i.h, %i.i              ; 3 uses
  %i.j = zext i32 %.017.i.i.i.i to i64            ; 2 uses
  %i.k = lshr i64 %i.j, 5
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !45, !noalias !280
  %i.n = and i32 %.017.i.i.i.i, 31
  %i.o = lshr i32 %i.m, %i.n
  %i.p = trunc i32 %i.o to i1
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !77

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = add nuw i32 %.018.i.i.i.i, 1
  %.0.i.i.i.i = and i32 %i.q, %i.h                ; 3 uses
  %i.r = zext i32 %.0.i.i.i.i to i64              ; 2 uses
  %i.s = lshr i64 %i.r, 5
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !45, !noalias !280
  %i.v = and i32 %.0.i.i.i.i, 31
  %i.w = lshr i32 %i.u, %i.v
  %i.x = trunc i32 %i.w to i1
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !78

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %i.y = phi i64 [ %i.r, %bb.c ], [ %i.j, %bb.b ]
  %.018.i.i.i.i = phi i32 [ %.0.i.i.i.i, %bb.c ], [ %.017.i.i.i.i, %bb.b ]
  %i.z = getelementptr inbounds nuw [192 x i8], ptr %i.b, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !45, !noalias !280
  %i.ab = icmp eq i32 %1, %i.aa
  br i1 %i.ab, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiN12lldb_private13MainLoopPosix10SignalInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS4_EEEEiS4_S6_S9_E4findERKi.exit.loopexit, label %bb.c, !prof !79

.loopexit.i.i:                                    ; preds = %bb.c, %bb.b, %bb.a
  %i.ac = zext i32 %i.f to i64                    ; 2 uses
  %i.ad = getelementptr inbounds nuw [192 x i8], ptr %i.b, i64 %i.ac
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiN12lldb_private13MainLoopPosix10SignalInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS4_EEEEiS4_S6_S9_E4findERKi.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIiN12lldb_private13MainLoopPosix10SignalInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS4_EEEEiS4_S6_S9_E4findERKi.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre21 = zext i32 %i.f to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIiN12lldb_private13MainLoopPosix10SignalInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS4_EEEEiS4_S6_S9_E4findERKi.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIiN12lldb_private13MainLoopPosix10SignalInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS4_EEEEiS4_S6_S9_E4findERKi.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiN12lldb_private13MainLoopPosix10SignalInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS4_EEEEiS4_S6_S9_E4findERKi.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre21, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiN12lldb_private13MainLoopPosix10SignalInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS4_EEEEiS4_S6_S9_E4findERKi.exit.loopexit ], [ %i.ac, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.z, %_ZN4llvm12DenseMapBaseINS_8DenseMapIiN12lldb_private13MainLoopPosix10SignalInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS4_EEEEiS4_S6_S9_E4findERKi.exit.loopexit ], [ %i.ad, %.loopexit.i.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [192 x i8], ptr %i.b, i64 %.pre-phi
  %.not15 = icmp eq ptr %.lcssa.sink.i.i, %i.ae
  br i1 %.not15, label %bb.h, label %_ZSt10__distanceISt8functionIFvRN12lldb_private12MainLoopBaseEEEElSt14_List_iteratorIT_ES8_St18input_iterator_tag.exit.i.i

_ZSt10__distanceISt8functionIFvRN12lldb_private12MainLoopBaseEEEElSt14_List_iteratorIT_ES8_St18input_iterator_tag.exit.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIiN12lldb_private13MainLoopPosix10SignalInfoENS_12DenseMapInfoIivEENS_6detail12DenseMapPairIiS4_EEEEiS4_S6_S9_E4findERKi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.af = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !94 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.ah, ptr %2, align 8, !tbaa !117
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !118
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 4, ptr %i.aj, align 4, !tbaa !119
  %i.ak = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !102 ; 2 uses
  call void @_ZN4llvm15SmallVectorImplISt8functionIFvRN12lldb_private12MainLoopBaseEEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(144) %2, i64 noundef %i.al)
  %i.am = load i32, ptr %i.ai, align 8, !tbaa !118 ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.af
  br i1 %.not7.i.i.i.i.i.i, label %_ZN4llvm11SmallVectorISt8functionIFvRN12lldb_private12MainLoopBaseEEELj4EEC2ISt14_List_iteratorIS6_EvEET_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %_ZSt10__distanceISt8functionIFvRN12lldb_private12MainLoopBaseEEEElSt14_List_iteratorIT_ES8_St18input_iterator_tag.exit.i.i
  %i.an = load ptr, ptr %2, align 8, !tbaa !117
  %i.ao = zext i32 %i.am to i64
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %i.ao
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZSt10_ConstructISt8functionIFvRN12lldb_private12MainLoopBaseEEEJRS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.ax, %_ZSt10_ConstructISt8functionIFvRN12lldb_private12MainLoopBaseEEEJRS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.preheader.i.i ] ; 4 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.aw, %_ZSt10_ConstructISt8functionIFvRN12lldb_private12MainLoopBaseEEEJRS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i ], [ %i.ag, %.lr.ph.i.i.i.i.preheader.i.i ] ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i, i8 0, i64 32, i1 false)
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !80 ; 2 uses
  %.not.i.i.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.not.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt8functionIFvRN12lldb_private12MainLoopBaseEEEJRS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16
  %i.au = call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i32 noundef 2) #22, !inline_history !276 ; 0 uses
  %i.av = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !95
  store <2 x ptr> %i.av, ptr %i.at, align 8, !tbaa !95
  br label %_ZSt10_ConstructISt8functionIFvRN12lldb_private12MainLoopBaseEEEJRS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt8functionIFvRN12lldb_private12MainLoopBaseEEEJRS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %i.aw = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !94 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 32
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aw, %i.af
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRN12lldb_private12MainLoopBaseEEELb0EE18uninitialized_copyISt14_List_iteratorIS6_EPS6_EEvT_SC_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !277

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRN12lldb_private12MainLoopBaseEEELb0EE18uninitialized_copyISt14_List_iteratorIS6_EPS6_EEvT_SC_T0_.exit.loopexit.i.i: ; preds = %_ZSt10_ConstructISt8functionIFvRN12lldb_private12MainLoopBaseEEEJRS5_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %.pre.i.i = load i32, ptr %i.ai, align 8, !tbaa !118
  br label %_ZN4llvm11SmallVectorISt8functionIFvRN12lldb_private12MainLoopBaseEEELj4EEC2ISt14_List_iteratorIS6_EvEET_SB_.exit

_ZN4llvm11SmallVectorISt8functionIFvRN12lldb_private12MainLoopBaseEEELj4EEC2ISt14_List_iteratorIS6_EvEET_SB_.exit: ; preds = %_ZSt10__distanceISt8functionIFvRN12lldb_private12MainLoopBaseEEEElSt14_List_iteratorIT_ES8_St18input_iterator_tag.exit.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRN12lldb_private12MainLoopBaseEEELb0EE18uninitialized_copyISt14_List_iteratorIS6_EPS6_EEvT_SC_T0_.exit.loopexit.i.i
  %i.ay = phi i32 [ %.pre.i.i, %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRN12lldb_private12MainLoopBaseEEELb0EE18uninitialized_copyISt14_List_iteratorIS6_EPS6_EEvT_SC_T0_.exit.loopexit.i.i ], [ %i.am, %_ZSt10__distanceISt8functionIFvRN12lldb_private12MainLoopBaseEEEElSt14_List_iteratorIT_ES8_St18input_iterator_tag.exit.i.i ]
  %i.az = trunc i64 %i.al to i32
  %i.ba = add i32 %i.ay, %i.az                    ; 3 uses
  store i32 %i.ba, ptr %i.ai, align 8, !tbaa !118
  %i.bb = load ptr, ptr %2, align 8, !tbaa !117   ; 3 uses
  %i.bc = zext i32 %i.ba to i64
  %.idx = shl nuw nsw i64 %i.bc, 5
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx
  %.not17 = icmp eq i32 %i.ba, 0
  br i1 %.not17, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRN12lldb_private12MainLoopBaseEEELb0EE13destroy_rangeEPS6_S8_.exit.i, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNKSt8functionIFvRN12lldb_private12MainLoopBaseEEEclES2_.exit
  %.pre = load ptr, ptr %2, align 8, !tbaa !117   ; 3 uses
  %.pre20 = load i32, ptr %i.ai, align 8, !tbaa !118 ; 2 uses
  %.not4.i.i = icmp eq i32 %.pre20, 0
  br i1 %.not4.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRN12lldb_private12MainLoopBaseEEELb0EE13destroy_rangeEPS6_S8_.exit.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %._crit_edge
  %i.be = zext i32 %.pre20 to i64
  %.idx.i = shl nuw nsw i64 %i.be, 5
  %i.bf = getelementptr inbounds nuw i8, ptr %.pre, i64 %.idx.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i, %.lr.ph.i.preheader.i
  %.05.i.i = phi ptr [ %i.bg, %_ZNSt14_Function_baseD2Ev.exit.i.i ], [ %i.bf, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %.05.i.i, i64 -32 ; 4 uses
  %i.bh = getelementptr inbounds i8, ptr %.05.i.i, i64 -16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !80 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.bj = call noundef zeroext i1 %i.bi(ptr noundef nonnull align 8 dereferenceable(32) %i.bg, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i32 noundef 3) #22, !inline_history !278 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i.i

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.e, %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.pre, %i.bg
  br i1 %.not.i.i, label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRN12lldb_private12MainLoopBaseEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !10

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRN12lldb_private12MainLoopBaseEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i: ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !117
  br label %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRN12lldb_private12MainLoopBaseEEELb0EE13destroy_rangeEPS6_S8_.exit.i

_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRN12lldb_private12MainLoopBaseEEELb0EE13destroy_rangeEPS6_S8_.exit.i: ; preds = %_ZN4llvm11SmallVectorISt8functionIFvRN12lldb_private12MainLoopBaseEEELj4EEC2ISt14_List_iteratorIS6_EvEET_SB_.exit, %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRN12lldb_private12MainLoopBaseEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i, %._crit_edge
  %i.bk = phi ptr [ %.pre.i, %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRN12lldb_private12MainLoopBaseEEELb0EE13destroy_rangeEPS6_S8_.exit.loopexit.i ], [ %.pre, %._crit_edge ], [ %i.bb, %_ZN4llvm11SmallVectorISt8functionIFvRN12lldb_private12MainLoopBaseEEELj4EEC2ISt14_List_iteratorIS6_EvEET_SB_.exit ] ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.ah
  br i1 %i.bl, label %_ZN4llvm11SmallVectorISt8functionIFvRN12lldb_private12MainLoopBaseEEELj4EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRN12lldb_private12MainLoopBaseEEELb0EE13destroy_rangeEPS6_S8_.exit.i
  call void @free(ptr noundef %i.bk) #22
  br label %_ZN4llvm11SmallVectorISt8functionIFvRN12lldb_private12MainLoopBaseEEELj4EED2Ev.exit

_ZN4llvm11SmallVectorISt8functionIFvRN12lldb_private12MainLoopBaseEEELj4EED2Ev.exit: ; preds = %_ZN4llvm23SmallVectorTemplateBaseISt8functionIFvRN12lldb_private12MainLoopBaseEEELb0EE13destroy_rangeEPS6_S8_.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.h

end_hunk_0
