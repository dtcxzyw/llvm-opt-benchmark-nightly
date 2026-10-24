Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/subsume?download=true
inline.NumInlined: 476
inline.NumDeleted: 242
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEEEvT_S7_T0_:bb.a
_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIiPiEEbRT_T0_.exit.i.i16: ; preds = %bb.l
  %i.bx = icmp sle i64 %i.bq, %i.bv
  %i.by = icmp samesign ult i32 %i.be, %i.br
  %spec.select.i.i.i.i17 = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %spec.select.i.i.i.i17, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIiPiEEbRT_T0_.exit.thread.i.i18, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18subsume_less_noccsEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIiPiEEbRT_T0_.exit.thread.i.i18: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIiPiEEbRT_T0_.exit.i.i16, %bb.l, %bb.j
  store i32 %i.bh, ptr %.09.i.i11, align 4, !tbaa !167
  br label %bb.j, !llvm.loop !1

_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18subsume_less_noccsEEEEvT_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIiPiEEbRT_T0_.exit.i.i16, %bb.k
  store i32 %i.bb, ptr %.09.i.i11, align 4, !tbaa !167
  %i.bz = getelementptr inbounds nuw i8, ptr %.08.i, i64 4 ; 2 uses
  %.not.i15 = icmp eq ptr %i.bz, %1
  br i1 %.not.i15, label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEEEvT_S7_T0_.exit, label %.lr.ph.i, !llvm.loop !292

bb.m:                                             ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, ptr %2)
  br label %_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEEEvT_S7_T0_.exit

_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEEEvT_S7_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_comp_iterIN7CaDiCaL18subsume_less_noccsEEEEvT_T0_.exit.i, %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEEEvT_S7_T0_.exit, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEEEvT_T0_S8_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 472
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !195  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 880
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread32
  %.035 = phi i64 [ %1, %.lr.ph ], [ %i.al, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread32 ] ; 2 uses
  %i.g = shl i64 %.035, 1                         ; 4 uses
  %i.h = add i64 %i.g, 2                          ; 3 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %0, i64 %i.h
  %i.j = getelementptr [4 x i8], ptr %0, i64 %i.g
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.i, align 4, !tbaa !167  ; 3 uses
  %i.m = load i32, ptr %i.k, align 4, !tbaa !167  ; 3 uses
  %i.n = sext i32 %i.l to i64
  %i.o = getelementptr inbounds i8, ptr %i.e, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !196
  %i.q = sext i32 %i.m to i64
  %i.r = getelementptr inbounds i8, ptr %i.e, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !196
  %i.t = icmp eq i8 %i.p, 0                       ; 2 uses
  %i.u = icmp ne i8 %i.s, 0                       ; 2 uses
  %or.cond.i.i = and i1 %i.t, %i.u
  br i1 %or.cond.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %or.cond3.i.i = or i1 %i.t, %i.u
  br i1 %or.cond3.i.i, label %bb.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread32

bb.d:                                             ; preds = %bb.c
  %i.v = tail call i32 @llvm.abs.i32(i32 %i.l, i1 true) ; 2 uses
  %i.w = tail call noundef i32 @llvm.fshl.i32(i32 %i.v, i32 %i.l, i32 1)
  %i.x = zext i32 %i.w to i64
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !197  ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !192 ; 2 uses
  %i.ab = tail call i32 @llvm.abs.i32(i32 %i.m, i1 true) ; 2 uses
  %i.ac = tail call noundef i32 @llvm.fshl.i32(i32 %i.ab, i32 %i.m, i32 1)
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !192 ; 2 uses
  %i.ag = icmp slt i64 %i.aa, %i.af
  br i1 %i.ag, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread: ; preds = %bb.b, %bb.d
  %i.ah = or disjoint i64 %i.g, 1
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread32

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit: ; preds = %bb.d
  %i.ai = icmp sle i64 %i.aa, %i.af
  %i.aj = icmp samesign ult i32 %i.v, %i.ab
  %spec.select.i.i = select i1 %i.ai, i1 %i.aj, i1 false
  %i.ak = or disjoint i64 %i.g, 1
  %cond.fr = freeze i1 %spec.select.i.i
  %spec.select = select i1 %cond.fr, i64 %i.ak, i64 %i.h
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread32

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread32: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit, %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread
  %i.al = phi i64 [ %i.h, %bb.c ], [ %spec.select, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit ], [ %i.ah, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread ] ; 4 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %0, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !167
  %i.ao = getelementptr inbounds [4 x i8], ptr %0, i64 %.035
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !167
  %i.ap = icmp slt i64 %i.al, %i.b
  br i1 %i.ap, label %bb.b, label %._crit_edge, !llvm.loop !293

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread32, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.al, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread32 ] ; 5 uses
  %i.aq = and i64 %2, 1
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.e, label %bb.g

bb.e:                                             ; preds = %._crit_edge
  %i.as = add nsw i64 %2, -2
  %i.at = ashr exact i64 %i.as, 1
  %i.au = icmp eq i64 %.0.lcssa, %i.at
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.av = shl nsw i64 %.0.lcssa, 1
  %i.aw = or disjoint i64 %i.av, 1                ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !167
  %i.az = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !167
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge
  %.128 = phi i64 [ %i.aw, %bb.f ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ba = icmp sgt i64 %.128, %1
  br i1 %i.ba, label %.lr.ph.i, label %_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18subsume_less_noccsEEEEvT_T0_S8_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 472
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !195 ; 2 uses
  %i.bd = sext i32 %3 to i64
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 880
  %i.bg = tail call i32 @llvm.abs.i32(i32 %3, i1 true) ; 2 uses
  %i.bh = tail call i32 @llvm.fshl.i32(i32 %i.bg, i32 %3, i32 1)
  %i.bi = zext i32 %i.bh to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18subsume_less_noccsEEclIPiiEEbT_RT0_.exit.thread.i, %.lr.ph.i
  %.01320.i = phi i64 [ %.128, %.lr.ph.i ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18subsume_less_noccsEEclIPiiEEbT_RT0_.exit.thread.i ] ; 4 uses
  %.021.in.i = add nsw i64 %.01320.i, -1
  %.021.i = sdiv i64 %.021.in.i, 2                ; 4 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %0, i64 %.021.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !167 ; 4 uses
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds i8, ptr %i.bc, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !196
  %i.bo = load i8, ptr %i.be, align 1, !tbaa !196
  %i.bp = icmp eq i8 %i.bn, 0                     ; 2 uses
  %i.bq = icmp ne i8 %i.bo, 0                     ; 2 uses
  %or.cond.i.i.i = and i1 %i.bp, %i.bq
  br i1 %or.cond.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18subsume_less_noccsEEclIPiiEEbT_RT0_.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %or.cond3.i.i.i = or i1 %i.bp, %i.bq
  br i1 %or.cond3.i.i.i, label %bb.j, label %_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18subsume_less_noccsEEEEvT_T0_S8_T1_RT2_.exit

bb.j:                                             ; preds = %bb.i
  %i.br = tail call i32 @llvm.abs.i32(i32 %i.bk, i1 true) ; 2 uses
  %i.bs = tail call noundef i32 @llvm.fshl.i32(i32 %i.br, i32 %i.bk, i32 1)
  %i.bt = zext i32 %i.bs to i64
  %i.bu = load ptr, ptr %i.bf, align 8, !tbaa !197 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bt
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !192 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bi
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !192 ; 2 uses
  %i.bz = icmp slt i64 %i.bw, %i.by
  br i1 %i.bz, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18subsume_less_noccsEEclIPiiEEbT_RT0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18subsume_less_noccsEEclIPiiEEbT_RT0_.exit.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18subsume_less_noccsEEclIPiiEEbT_RT0_.exit.i: ; preds = %bb.j
  %i.ca = icmp sle i64 %i.bw, %i.by
  %i.cb = icmp samesign ult i32 %i.br, %i.bg
  %spec.select.i.i.i = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %spec.select.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18subsume_less_noccsEEclIPiiEEbT_RT0_.exit.thread.i, label %_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18subsume_less_noccsEEEEvT_T0_S8_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18subsume_less_noccsEEclIPiiEEbT_RT0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18subsume_less_noccsEEclIPiiEEbT_RT0_.exit.i, %bb.j, %bb.h
  %i.cc = getelementptr inbounds [4 x i8], ptr %0, i64 %.01320.i
  store i32 %i.bk, ptr %i.cc, align 4, !tbaa !167
  %i.cd = icmp sgt i64 %.021.i, %1
  br i1 %i.cd, label %bb.h, label %_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18subsume_less_noccsEEEEvT_T0_S8_T1_RT2_.exit, !llvm.loop !294

_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18subsume_less_noccsEEEEvT_T0_S8_T1_RT2_.exit: ; preds = %bb.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18subsume_less_noccsEEclIPiiEEbT_RT0_.exit.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18subsume_less_noccsEEclIPiiEEbT_RT0_.exit.thread.i, %bb.g
  %.013.lcssa.i = phi i64 [ %.128, %bb.g ], [ %.01320.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18subsume_less_noccsEEclIPiiEEbT_RT0_.exit.i ], [ %.021.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN7CaDiCaL18subsume_less_noccsEEclIPiiEEbT_RT0_.exit.thread.i ], [ %.01320.i, %bb.i ]
  %i.ce = getelementptr inbounds [4 x i8], ptr %0, i64 %.013.lcssa.i
  store i32 %3, ptr %i.ce, align 4, !tbaa !167
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEEEvT_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !167    ; 11 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !167    ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 472
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !195  ; 6 uses
  %i.e = sext i32 %i.a to i64
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !196
  %i.h = sext i32 %i.b to i64
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !196
  %i.k = icmp eq i8 %i.g, 0                       ; 6 uses
  %i.l = icmp ne i8 %i.j, 0                       ; 4 uses
  %or.cond.i.i = and i1 %i.k, %i.l
  br i1 %or.cond.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread.thread, label %bb.b

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread.thread: ; preds = %bb.a
  %i.m = load i32, ptr %3, align 4, !tbaa !167    ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %i.d, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !196
  %i.q = icmp ne i8 %i.p, 0
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %or.cond3.i.i = or i1 %i.k, %i.l
  br i1 %or.cond3.i.i, label %bb.c, label %.thread56

.thread56:                                        ; preds = %bb.b
  %i.r = load i32, ptr %3, align 4, !tbaa !167    ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.d, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !196
  %i.v = icmp ne i8 %i.u, 0
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 880
  %i.x = tail call i32 @llvm.abs.i32(i32 %i.a, i1 true) ; 2 uses
  %i.y = tail call noundef i32 @llvm.fshl.i32(i32 %i.x, i32 %i.a, i32 1)
  %i.z = zext i32 %i.y to i64
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !197 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !192 ; 2 uses
  %i.ad = tail call i32 @llvm.abs.i32(i32 %i.b, i1 true) ; 2 uses
  %i.ae = tail call noundef i32 @llvm.fshl.i32(i32 %i.ad, i32 %i.b, i32 1)
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !192 ; 2 uses
  %i.ai = icmp slt i64 %i.ac, %i.ah
  br i1 %i.ai, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit: ; preds = %bb.c
  %i.aj = icmp sle i64 %i.ac, %i.ah
  %i.ak = icmp samesign ult i32 %i.x, %i.ad
  %spec.select.i.i = select i1 %i.aj, i1 %i.ak, i1 false
  br i1 %spec.select.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread, label %bb.h

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit
  %i.al = load i32, ptr %3, align 4, !tbaa !167   ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %i.d, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !196
  %.not66 = xor i1 %i.l, true                     ; 2 uses
  %i.ap = icmp ne i8 %i.ao, 0                     ; 2 uses
  %or.cond.i.i22 = and i1 %i.ap, %.not66
  br i1 %or.cond.i.i22, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit26.thread, label %bb.d

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread
  %i.aq = phi i1 [ %i.q, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread.thread ], [ %i.ap, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread ] ; 3 uses
  %i.ar = phi i1 [ false, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread.thread ], [ %.not66, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread ]
  %i.as = phi i32 [ %i.m, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread.thread ], [ %i.al, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread ] ; 7 uses
  %or.cond3.i.i23 = or i1 %i.aq, %i.ar
  br i1 %or.cond3.i.i23, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 880
  %i.au = tail call i32 @llvm.abs.i32(i32 %i.b, i1 true) ; 2 uses
  %i.av = tail call noundef i32 @llvm.fshl.i32(i32 %i.au, i32 %i.b, i32 1)
  %i.aw = zext i32 %i.av to i64
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !197 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.aw
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !192 ; 2 uses
  %i.ba = tail call i32 @llvm.abs.i32(i32 %i.as, i1 true) ; 2 uses
  %i.bb = tail call noundef i32 @llvm.fshl.i32(i32 %i.ba, i32 %i.as, i32 1)
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !192 ; 2 uses
  %i.bf = icmp slt i64 %i.az, %i.be
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit26.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit26

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit26: ; preds = %bb.e
  %i.bg = icmp sle i64 %i.az, %i.be
  %i.bh = icmp samesign ult i32 %i.au, %i.ba
  %spec.select.i.i25 = select i1 %i.bg, i1 %i.bh, i1 false
  br i1 %spec.select.i.i25, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit26.thread, label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit26
  %or.cond.i.i27 = and i1 %i.k, %i.aq
  br i1 %or.cond.i.i27, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit26.thread, label %.thread

.thread:                                          ; preds = %bb.d, %bb.f
  %or.cond3.i.i28 = or i1 %i.k, %i.aq
  br i1 %or.cond3.i.i28, label %bb.g, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit31.thread54

bb.g:                                             ; preds = %.thread
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 880
  %i.bj = tail call i32 @llvm.abs.i32(i32 %i.a, i1 true) ; 2 uses
  %i.bk = tail call noundef i32 @llvm.fshl.i32(i32 %i.bj, i32 %i.a, i32 1)
  %i.bl = zext i32 %i.bk to i64
  %i.bm = load ptr, ptr %i.bi, align 8, !tbaa !197 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !192 ; 2 uses
  %i.bp = tail call i32 @llvm.abs.i32(i32 %i.as, i1 true) ; 2 uses
  %i.bq = tail call noundef i32 @llvm.fshl.i32(i32 %i.bp, i32 %i.as, i32 1)
  %i.br = zext i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !192 ; 2 uses
  %i.bu = icmp slt i64 %i.bo, %i.bt
  br i1 %i.bu, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit26.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit31

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit31: ; preds = %bb.g
  %i.bv = icmp sle i64 %i.bo, %i.bt
  %i.bw = icmp samesign ult i32 %i.bj, %i.bp
  %spec.select.i.i30 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %spec.select.i.i30, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit26.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit31.thread54

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit31.thread54: ; preds = %.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit31
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit26.thread

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit
  %i.bx = load i32, ptr %3, align 4, !tbaa !167   ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds i8, ptr %i.d, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !196
  %i.cb = icmp ne i8 %i.ca, 0                     ; 2 uses
  %or.cond.i.i32 = and i1 %i.k, %i.cb
  br i1 %or.cond.i.i32, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit26.thread, label %bb.i

bb.i:                                             ; preds = %.thread56, %bb.h
  %i.cc = phi i1 [ %i.v, %.thread56 ], [ %i.cb, %bb.h ] ; 3 uses
  %i.cd = phi i32 [ %i.r, %.thread56 ], [ %i.bx, %bb.h ] ; 7 uses
  %or.cond3.i.i33 = or i1 %i.k, %i.cc
  br i1 %or.cond3.i.i33, label %bb.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit36.thread60

bb.j:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 880
  %i.cf = tail call i32 @llvm.abs.i32(i32 %i.a, i1 true) ; 2 uses
  %i.cg = tail call noundef i32 @llvm.fshl.i32(i32 %i.cf, i32 %i.a, i32 1)
  %i.ch = zext i32 %i.cg to i64
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !197 ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ch
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !192 ; 2 uses
  %i.cl = tail call i32 @llvm.abs.i32(i32 %i.cd, i1 true) ; 2 uses
  %i.cm = tail call noundef i32 @llvm.fshl.i32(i32 %i.cl, i32 %i.cd, i32 1)
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !192 ; 2 uses
  %i.cq = icmp slt i64 %i.ck, %i.cp
  br i1 %i.cq, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit26.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit36

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit36: ; preds = %bb.j
  %i.cr = icmp sle i64 %i.ck, %i.cp
  %i.cs = icmp samesign ult i32 %i.cf, %i.cl
  %spec.select.i.i35 = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %spec.select.i.i35, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit26.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit36.thread60

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit36.thread60: ; preds = %bb.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit36
  %.not.a = xor i1 %i.l, true                     ; 2 uses
  %or.cond.i.i37 = and i1 %i.cc, %.not.a
  br i1 %or.cond.i.i37, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit26.thread, label %bb.k

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit36.thread60
  %or.cond3.i.i38 = or i1 %i.cc, %.not.a
  br i1 %or.cond3.i.i38, label %bb.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit41.thread63

bb.l:                                             ; preds = %bb.k
  %i.ct = getelementptr inbounds nuw i8, ptr %4, i64 880
  %i.cu = tail call i32 @llvm.abs.i32(i32 %i.b, i1 true) ; 2 uses
  %i.cv = tail call noundef i32 @llvm.fshl.i32(i32 %i.cu, i32 %i.b, i32 1)
  %i.cw = zext i32 %i.cv to i64
  %i.cx = load ptr, ptr %i.ct, align 8, !tbaa !197 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.cw
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !192 ; 2 uses
  %i.da = tail call i32 @llvm.abs.i32(i32 %i.cd, i1 true) ; 2 uses
  %i.db = tail call noundef i32 @llvm.fshl.i32(i32 %i.da, i32 %i.cd, i32 1)
  %i.dc = zext i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !192 ; 2 uses
  %i.df = icmp slt i64 %i.cz, %i.de
  br i1 %i.df, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit26.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit41

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit41: ; preds = %bb.l
  %i.dg = icmp sle i64 %i.cz, %i.de
  %i.dh = icmp samesign ult i32 %i.cu, %i.da
  %spec.select.i.i40 = select i1 %i.dg, i1 %i.dh, i1 false
  br i1 %spec.select.i.i40, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit26.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit41.thread63

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit41.thread63: ; preds = %bb.k, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit41
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit26.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit26.thread: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit41, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit36.thread60, %bb.l, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit36, %bb.h, %bb.j, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit31, %bb.f, %bb.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit26, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread, %bb.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit41.thread63, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit31.thread54
  %.sink77 = phi i32 [ %i.as, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit31 ], [ %i.b, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit41.thread63 ], [ %i.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit36 ], [ %i.b, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit26 ], [ %i.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit31.thread54 ], [ %i.b, %bb.e ], [ %i.b, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread ], [ %i.as, %bb.g ], [ %i.as, %bb.f ], [ %i.a, %bb.j ], [ %i.a, %bb.h ], [ %i.cd, %bb.l ], [ %i.cd, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit36.thread60 ], [ %i.cd, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit41 ]
  %.sink76 = phi ptr [ %3, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit31 ], [ %2, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit41.thread63 ], [ %1, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit36 ], [ %2, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit26 ], [ %1, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit31.thread54 ], [ %2, %bb.e ], [ %2, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread ], [ %3, %bb.g ], [ %3, %bb.f ], [ %1, %bb.j ], [ %1, %bb.h ], [ %3, %bb.l ], [ %3, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit36.thread60 ], [ %3, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit41 ]
  %i.di = load i32, ptr %0, align 4, !tbaa !167
  store i32 %.sink77, ptr %0, align 4, !tbaa !167
  store i32 %i.di, ptr %.sink76, align 4, !tbaa !167
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEEET_S7_S7_S7_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 472
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 880 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %.013 = phi ptr [ %1, %bb.a ], [ %.114, %bb.h ]
  %.0 = phi ptr [ %0, %bb.a ], [ %i.bp, %bb.h ]   ; 4 uses
  %i.d = load i32, ptr %2, align 4, !tbaa !167    ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !196
  %.fr43 = freeze i8 %i.g
  %.not = icmp eq i8 %.fr43, 0                    ; 3 uses
  %i.h = tail call i32 @llvm.abs.i32(i32 %i.d, i1 true) ; 4 uses
  %i.i = tail call i32 @llvm.fshl.i32(i32 %i.h, i32 %i.d, i32 1)
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  br i1 %.not, label %.split28.us, label %.split28

.split28.us:                                      ; preds = %bb.b
  %i.k = load i32, ptr %.0, align 4, !tbaa !167   ; 3 uses
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds i8, ptr %i.b, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !196
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.preheader

.lr.ph:                                           ; preds = %.split28.us
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !197  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.j
  %i.r = load i64, ptr %i.q, align 8, !tbaa !192  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread.us
  %i.s = phi i32 [ %i.k, %.lr.ph ], [ %i.ac, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread.us ] ; 3 uses
  %.1.us33 = phi ptr [ %.0, %.lr.ph ], [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread.us ] ; 2 uses
  %i.t = tail call i32 @llvm.abs.i32(i32 %i.s, i1 true) ; 2 uses
  %i.u = tail call noundef i32 @llvm.fshl.i32(i32 %i.t, i32 %i.s, i32 1)
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !192  ; 2 uses
  %i.y = icmp slt i64 %i.x, %i.r
  br i1 %i.y, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread.us, label %.split.us

.split.us:                                        ; preds = %bb.c
  %i.z = icmp sle i64 %i.x, %i.r
  %i.aa = icmp samesign ult i32 %i.t, %i.h
  %spec.select.i.i.us = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %spec.select.i.i.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread.us, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.preheader

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread.us: ; preds = %.split.us, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.1.us33, i64 4 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !167 ; 3 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.b, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !196
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.preheader, !llvm.loop !295

.split28:                                         ; preds = %bb.b, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread
  %.1 = phi ptr [ %i.ax, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread ], [ %.0, %bb.b ] ; 3 uses
  %i.ah = load i32, ptr %.1, align 4, !tbaa !167  ; 4 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.b, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !196
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread, label %bb.d

bb.d:                                             ; preds = %.split28
  %i.am = tail call i32 @llvm.abs.i32(i32 %i.ah, i1 true) ; 2 uses
  %i.an = tail call noundef i32 @llvm.fshl.i32(i32 %i.am, i32 %i.ah, i32 1)
  %i.ao = zext i32 %i.an to i64
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !197 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !192 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.j
  %i.at = load i64, ptr %i.as, align 8, !tbaa !192 ; 2 uses
  %i.au = icmp slt i64 %i.ar, %i.at
  br i1 %i.au, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread, label %.split

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.preheader: ; preds = %.split, %.split.us, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread.us, %.split28.us
  %.us-phi = phi ptr [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread.us ], [ %.0, %.split28.us ], [ %.1.us33, %.split.us ], [ %.1, %.split ] ; 4 uses
  %.us-phi29 = phi i32 [ %i.ac, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread.us ], [ %i.k, %.split28.us ], [ %i.s, %.split.us ], [ %i.ah, %.split ]
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit

.split:                                           ; preds = %bb.d
  %i.av = icmp sle i64 %i.ar, %i.at
  %i.aw = icmp samesign ult i32 %i.am, %i.h
  %spec.select.i.i = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %spec.select.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.preheader

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.thread: ; preds = %bb.d, %.split28, %.split
  %i.ax = getelementptr inbounds nuw i8, ptr %.1, i64 4
  br label %.split28, !llvm.loop !295

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.backedge, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.preheader
  %.013.pn = phi ptr [ %.013, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.preheader ], [ %.114, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.backedge ]
  %.114 = getelementptr inbounds i8, ptr %.013.pn, i64 -4 ; 5 uses
  %i.ay = load i32, ptr %.114, align 4, !tbaa !167 ; 4 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds i8, ptr %i.b, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !196
  %i.bc = icmp ne i8 %i.bb, 0                     ; 2 uses
  %or.cond.i.i15 = and i1 %.not, %i.bc
  br i1 %or.cond.i.i15, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.backedge, label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit
  %or.cond3.i.i16 = or i1 %.not, %i.bc
  br i1 %or.cond3.i.i16, label %bb.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit19.thread

bb.f:                                             ; preds = %bb.e
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !197 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.j
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !192 ; 2 uses
  %i.bg = tail call i32 @llvm.abs.i32(i32 %i.ay, i1 true) ; 2 uses
  %i.bh = tail call noundef i32 @llvm.fshl.i32(i32 %i.bg, i32 %i.ay, i32 1)
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bi
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !192 ; 2 uses
  %i.bl = icmp slt i64 %i.bf, %i.bk
  br i1 %i.bl, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.backedge, label %.split23

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.backedge: ; preds = %bb.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit, %.split23
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit, !llvm.loop !296

.split23:                                         ; preds = %bb.f
  %i.bm = icmp sle i64 %i.bf, %i.bk
  %i.bn = icmp samesign ult i32 %i.h, %i.bg
  %spec.select.i.i18 = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %spec.select.i.i18, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit19.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit19.thread: ; preds = %bb.e, %.split23
  %i.bo = icmp ult ptr %.us-phi, %.114
  br i1 %i.bo, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit19.thread
  ret ptr %.us-phi

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEclIPiS6_EEbT_T0_.exit19.thread
  store i32 %i.ay, ptr %.us-phi, align 4, !tbaa !167
  store i32 %.us-phi29, ptr %.114, align 4, !tbaa !167
  %i.bp = getelementptr inbounds nuw i8, ptr %.us-phi, i64 4
  br label %bb.b, !llvm.loop !297
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIN7CaDiCaL18subsume_less_noccsEEEEvT_S7_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.020 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not21 = icmp eq ptr %.020, %1
  br i1 %.not21, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 472
end_hunk_0
