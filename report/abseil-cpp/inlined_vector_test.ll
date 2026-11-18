Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/inlined_vector_test?download=true
inline.NumInlined: 27452
inline.NumDeleted: 7595
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 180
loop-unroll.NumUnrolled: 277
begin_hunk_0_@_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal20CopyableOnlyInstanceELm8ESaIS4_EE6ResizeINS1_16CopyValueAdapterIS5_EEEEvT_m:bb.a
  %i.i = phi i32 [ %i.p, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.prol ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.j = add nsw i64 %.06.i.prol, -1              ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i8, ptr %i.l, align 4, !tbaa !454, !range !189, !noundef !190
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.prol

bb.c:                                             ; preds = %.lr.ph.i.prol
  %i.o = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.o, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.prol

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.prol: ; preds = %bb.c, %.lr.ph.i.prol
  %i.p = phi i32 [ %i.i, %.lr.ph.i.prol ], [ %i.o, %bb.c ] ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !6300

.lr.ph.i.prol.loopexit:                           ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.prol, %.lr.ph.preheader.i
  %.06.i.unr = phi i64 [ %i.h, %.lr.ph.preheader.i ], [ %i.j, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.prol ]
  %.unr = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i, %.lr.ph.preheader.i ], [ %i.p, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.prol ]
  %i.q = sub i64 %2, %.sink1.i
  %i.r = icmp ugt i64 %i.q, -4
  br i1 %i.r, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.3, %.lr.ph.i.prol.loopexit
  %i.s = trunc i64 %i.h to i32
  %i.t = sub i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i, %i.s
  store i32 %i.t, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_13test_internal20CopyableOnlyInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.3
  %.06.i = phi i64 [ %i.an, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.3 ], [ %.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.u = phi i32 [ %i.at, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.3 ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.g, i64 %.06.i
  %i.w = getelementptr i8, ptr %i.v, i64 -4
  %i.x = load i8, ptr %i.w, align 4, !tbaa !454, !range !189, !noundef !190
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.z, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i: ; preds = %bb.d, %.lr.ph.i
  %i.aa = phi i32 [ %i.u, %.lr.ph.i ], [ %i.z, %bb.d ] ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.g, i64 %.06.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 -12
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !454, !range !189, !noundef !190
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.e, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.1

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i
  %i.af = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.af, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.1

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.1: ; preds = %bb.e, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i
  %i.ag = phi i32 [ %i.aa, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i ], [ %i.af, %bb.e ] ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.g, i64 %.06.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 -20
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !454, !range !189, !noundef !190
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.f, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.2

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.1
  %i.al = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.al, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.2

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.2: ; preds = %bb.f, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.1
  %i.am = phi i32 [ %i.ag, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.1 ], [ %i.al, %bb.f ] ; 2 uses
  %i.an = add nsw i64 %.06.i, -4                  ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !454, !range !189, !noundef !190
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.g, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.3

bb.g:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.2
  %i.as = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.as, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.3

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.3: ; preds = %bb.g, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.2
  %i.at = phi i32 [ %i.am, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.2 ], [ %i.as, %bb.g ]
  %.not.i.3 = icmp eq i64 %i.an, 0
  br i1 %.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !73

bb.h:                                             ; preds = %bb.a
  %.not38 = icmp ugt i64 %2, %.sink.i
  br i1 %.not38, label %bb.i, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %bb.h
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i, i64 %.sink1.i ; 4 uses
  %i.av = sub i64 %2, %.sink1.i                   ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre.i = load i8, ptr %i.aw, align 4, !tbaa !454, !range !189
  %i.ax = trunc nuw i8 %.pre.i to i1
  br i1 %i.ax, label %.lr.ph.i43.split.us, label %.lr.ph.i43.split.preheader

.lr.ph.i43.split.preheader:                       ; preds = %.lr.ph.i43
  %.neg = add nuw i64 %.sink1.i, 1
  %xtraiter232 = and i64 %i.av, 1
  %i.ay = icmp eq i64 %2, %.neg
  br i1 %i.ay, label %.lr.ph.i43.split.epil.preheader, label %.lr.ph.i43.split.preheader.new

.lr.ph.i43.split.preheader.new:                   ; preds = %.lr.ph.i43.split.preheader
  %unroll_iter = and i64 %i.av, -2
  br label %.lr.ph.i43.split

.lr.ph.i43.split.us:                              ; preds = %.lr.ph.i43, %.lr.ph.i43.split.us
  %.012.i.us = phi i64 [ %i.bi, %.lr.ph.i43.split.us ], [ 0, %.lr.ph.i43 ] ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.012.i.us ; 2 uses
  %i.ba = load i32, ptr %1, align 4, !tbaa !453
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !453
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i8 1, ptr %i.bb, align 4, !tbaa !454
  %i.bc = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.be = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.bg = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.bi = add nuw i64 %.012.i.us, 1               ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bi, %i.av
  br i1 %exitcond.not.i.us, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_13test_internal20CopyableOnlyInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit, label %.lr.ph.i43.split.us, !llvm.loop !74

.lr.ph.i43.split:                                 ; preds = %.lr.ph.i43.split, %.lr.ph.i43.split.preheader.new
  %.012.i = phi i64 [ 0, %.lr.ph.i43.split.preheader.new ], [ %i.by, %.lr.ph.i43.split ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i43.split.preheader.new ], [ %niter.next.1, %.lr.ph.i43.split ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.012.i ; 2 uses
  %i.bk = load i32, ptr %1, align 4, !tbaa !453
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !453
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i8 0, ptr %i.bl, align 4, !tbaa !454
  %i.bm = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.bo = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.012.i ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %1, align 4, !tbaa !453
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !453
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i8 0, ptr %i.bt, align 4, !tbaa !454
  %i.bu = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.bw = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.by = add nuw i64 %.012.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_13test_internal20CopyableOnlyInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.loopexit231.unr-lcssa, label %.lr.ph.i43.split, !llvm.loop !74

bb.i:                                             ; preds = %bb.h
  %i.bz = shl i64 %.sink.i, 1
  %.sroa.speculated.i = tail call noundef i64 @llvm.umax.i64(i64 %i.bz, i64 %2) ; 4 uses
  %i.ca = icmp ugt i64 %.sroa.speculated.i, 1152921504606846975
  br i1 %i.ca, label %bb.j, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal20CopyableOnlyInstanceEELb0EE8AllocateERS5_m.exit.i, !prof !212

bb.j:                                             ; preds = %bb.i
  %i.cb = icmp ugt i64 %.sroa.speculated.i, 2305843009213693951
  br i1 %i.cb, label %.noexc, label %.noexc45

.noexc:                                           ; preds = %bb.j
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

.noexc45:                                         ; preds = %bb.j
  tail call void @_ZSt17__throw_bad_allocv() #38
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal20CopyableOnlyInstanceEELb0EE8AllocateERS5_m.exit.i: ; preds = %bb.i
  %i.cc = shl nuw nsw i64 %.sroa.speculated.i, 3
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #41 ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.sink1.i ; 22 uses
  %i.cf = sub i64 %2, %.sink1.i                   ; 8 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre.i.i = load i8, ptr %i.cg, align 4, !tbaa !454, !range !189
  %i.ch = trunc nuw i8 %.pre.i.i to i1
  %.pre99 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211 ; 6 uses
  br i1 %i.ch, label %.lr.ph.i.split.us.i.preheader, label %.lr.ph.i.split.i.preheader

.lr.ph.i.split.i.preheader:                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal20CopyableOnlyInstanceEELb0EE8AllocateERS5_m.exit.i
  %.pre98 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211 ; 3 uses
  %min.iters.check = icmp ult i64 %i.cf, 16
  br i1 %min.iters.check, label %.lr.ph.i.split.i.preheader221, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.split.i.preheader
  %bound0 = icmp ult ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, i64 4)
  %bound0.a = icmp ult ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, i64 4)
  %found.conflict = and i1 %bound0, %bound0.a
  %3 = getelementptr i8, ptr %1, i64 4            ; 2 uses
  %bound0128 = icmp ugt ptr %3, @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E
  %bound1129 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, i64 4)
  %found.conflict130 = and i1 %bound0128, %bound1129
  %conflict.rdx = or i1 %found.conflict, %found.conflict130
  %bound0131 = icmp ugt ptr %3, @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E
  %bound1132 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, i64 4)
  %found.conflict133 = and i1 %bound0131, %bound1132
  %conflict.rdx134 = or i1 %conflict.rdx, %found.conflict133
  br i1 %conflict.rdx134, label %.lr.ph.i.split.i.preheader221, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cf, -8                      ; 3 uses
  %i.ci = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre98, i64 0
  %i.cj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre99, i64 0
  %i.ck = load i32, ptr %1, align 4, !tbaa !453, !alias.scope !6316 ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ %i.ci, %vector.ph ], [ %i.dk, %vector.body ]
  %vec.phi135 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dl, %vector.body ]
  %vec.phi136 = phi <4 x i32> [ %i.cj, %vector.ph ], [ %i.di, %vector.body ]
  %vec.phi137 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dj, %vector.body ]
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !453
  store i32 %i.ck, ptr %i.cn, align 4, !tbaa !453
  store i32 %i.ck, ptr %i.cp, align 4, !tbaa !453
  store i32 %i.ck, ptr %i.cr, align 4, !tbaa !453
  store i32 %i.ck, ptr %i.ct, align 4, !tbaa !453
  store i32 %i.ck, ptr %i.cv, align 4, !tbaa !453
  store i32 %i.ck, ptr %i.cx, align 4, !tbaa !453
  store i32 %i.ck, ptr %i.cz, align 4, !tbaa !453
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 28
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 36
  %i.df = getelementptr inbounds nuw i8, ptr %i.cu, i64 44
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 52
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 60
  store i8 0, ptr %i.da, align 4, !tbaa !454
  store i8 0, ptr %i.db, align 4, !tbaa !454
  store i8 0, ptr %i.dc, align 4, !tbaa !454
  store i8 0, ptr %i.dd, align 4, !tbaa !454
  store i8 0, ptr %i.de, align 4, !tbaa !454
  store i8 0, ptr %i.df, align 4, !tbaa !454
  store i8 0, ptr %i.dg, align 4, !tbaa !454
  store i8 0, ptr %i.dh, align 4, !tbaa !454
  %i.di = add <4 x i32> %vec.phi136, splat (i32 1) ; 2 uses
  %i.dj = add <4 x i32> %vec.phi137, splat (i32 1) ; 2 uses
  %i.dk = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.dl = add <4 x i32> %vec.phi135, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !6303

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dl, %i.dk
  %i.dn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 3 uses
  %bin.rdx138 = add <4 x i32> %i.dj, %i.di
  %i.do = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx138) ; 3 uses
  store i32 %i.do, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211, !alias.scope !6317, !noalias !6318
  store i32 %i.dn, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211, !alias.scope !6319, !noalias !6316
  %cmp.n = icmp eq i64 %i.cf, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaINS0_13test_internal20CopyableOnlyInstanceEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit, label %.lr.ph.i.split.i.preheader221

.lr.ph.i.split.i.preheader221:                    ; preds = %vector.memcheck, %.lr.ph.i.split.i.preheader, %middle.block
  %.ph222 = phi i32 [ %.pre98, %vector.memcheck ], [ %.pre98, %.lr.ph.i.split.i.preheader ], [ %i.dn, %middle.block ] ; 2 uses
  %.ph223 = phi i32 [ %.pre99, %vector.memcheck ], [ %.pre99, %.lr.ph.i.split.i.preheader ], [ %i.do, %middle.block ] ; 2 uses
  %.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.split.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.dp = sub i64 %2, %.sink1.i
  %i.dq = xor i64 %.012.i.i.ph, -1
  %i.dr = add i64 %2, %i.dq
  %xtraiter235 = and i64 %i.dp, 1
  %lcmp.mod236.not = icmp eq i64 %xtraiter235, 0
  br i1 %lcmp.mod236.not, label %.lr.ph.i.split.i.prol.loopexit, label %.lr.ph.i.split.i.prol

.lr.ph.i.split.i.prol:                            ; preds = %.lr.ph.i.split.i.preheader221
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.012.i.i.ph ; 2 uses
  %i.dt = load i32, ptr %1, align 4, !tbaa !453
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !453
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i8 0, ptr %i.du, align 4, !tbaa !454
  %i.dv = add nsw i32 %.ph223, 1                  ; 3 uses
  store i32 %i.dv, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.dw = add nsw i32 %.ph222, 1                  ; 3 uses
  store i32 %i.dw, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.dx = or disjoint i64 %.012.i.i.ph, 1
  br label %.lr.ph.i.split.i.prol.loopexit

.lr.ph.i.split.i.prol.loopexit:                   ; preds = %.lr.ph.i.split.i.prol, %.lr.ph.i.split.i.preheader221
  %.lcssa226.unr = phi i32 [ poison, %.lr.ph.i.split.i.preheader221 ], [ %i.dv, %.lr.ph.i.split.i.prol ]
  %.lcssa225.unr = phi i32 [ poison, %.lr.ph.i.split.i.preheader221 ], [ %i.dw, %.lr.ph.i.split.i.prol ]
  %.unr238 = phi i32 [ %.ph222, %.lr.ph.i.split.i.preheader221 ], [ %i.dw, %.lr.ph.i.split.i.prol ]
  %.unr239 = phi i32 [ %.ph223, %.lr.ph.i.split.i.preheader221 ], [ %i.dv, %.lr.ph.i.split.i.prol ]
  %.012.i.i.unr = phi i64 [ %.012.i.i.ph, %.lr.ph.i.split.i.preheader221 ], [ %i.dx, %.lr.ph.i.split.i.prol ]
  %i.dy = icmp eq i64 %i.dr, %.sink1.i
  br i1 %i.dy, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaINS0_13test_internal20CopyableOnlyInstanceEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i.preheader:                    ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal20CopyableOnlyInstanceEELb0EE8AllocateERS5_m.exit.i
  %.pre100 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211 ; 3 uses
  %.pre101 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211 ; 3 uses
  %min.iters.check165 = icmp ult i64 %i.cf, 24
  br i1 %min.iters.check165, label %.lr.ph.i.split.us.i.preheader210, label %vector.memcheck166

vector.memcheck166:                               ; preds = %.lr.ph.i.split.us.i.preheader
  %bound0167 = icmp ult ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, i64 4)
  %bound1168 = icmp ult ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, i64 4)
  %found.conflict169 = and i1 %bound0167, %bound1168
  %bound0170 = icmp ult ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, i64 4)
  %bound1171 = icmp ult ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, i64 4)
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx173 = or i1 %found.conflict169, %found.conflict172
  %4 = getelementptr i8, ptr %1, i64 4            ; 3 uses
  %bound0174 = icmp ugt ptr %4, @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E
  %bound1175 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, i64 4)
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx177 = or i1 %conflict.rdx173, %found.conflict176
  %bound0178 = icmp ult ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, i64 4)
  %bound1179 = icmp ult ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, i64 4)
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx181 = or i1 %conflict.rdx177, %found.conflict180
  %bound0182 = icmp ugt ptr %4, @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E
  %bound1183 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, i64 4)
  %found.conflict184 = and i1 %bound0182, %bound1183
  %conflict.rdx185 = or i1 %conflict.rdx181, %found.conflict184
  %bound0186 = icmp ugt ptr %4, @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E
  %bound1187 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, i64 4)
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx189 = or i1 %conflict.rdx185, %found.conflict188
  br i1 %conflict.rdx189, label %.lr.ph.i.split.us.i.preheader210, label %vector.ph190

vector.ph190:                                     ; preds = %vector.memcheck166
  %n.vec191 = and i64 %i.cf, -8                   ; 3 uses
  %i.dz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre101, i64 0
  %i.ea = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre100, i64 0
  %i.eb = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre99, i64 0
  %i.ec = load i32, ptr %1, align 4, !tbaa !453, !alias.scope !6320 ; 8 uses
  br label %vector.body192

vector.body192:                                   ; preds = %vector.body192, %vector.ph190
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next200, %vector.body192 ] ; 9 uses
  %vec.phi194 = phi <4 x i32> [ %i.dz, %vector.ph190 ], [ %i.fe, %vector.body192 ]
  %vec.phi195 = phi <4 x i32> [ zeroinitializer, %vector.ph190 ], [ %i.ff, %vector.body192 ]
  %vec.phi196 = phi <4 x i32> [ %i.ea, %vector.ph190 ], [ %i.fc, %vector.body192 ]
  %vec.phi197 = phi <4 x i32> [ zeroinitializer, %vector.ph190 ], [ %i.fd, %vector.body192 ]
  %vec.phi198 = phi <4 x i32> [ %i.eb, %vector.ph190 ], [ %i.fa, %vector.body192 ]
  %vec.phi199 = phi <4 x i32> [ zeroinitializer, %vector.ph190 ], [ %i.fb, %vector.body192 ]
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index193 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index193 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index193 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index193 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index193 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index193 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index193 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index193 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 56
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !453
  store i32 %i.ec, ptr %i.ef, align 4, !tbaa !453
  store i32 %i.ec, ptr %i.eh, align 4, !tbaa !453
  store i32 %i.ec, ptr %i.ej, align 4, !tbaa !453
  store i32 %i.ec, ptr %i.el, align 4, !tbaa !453
  store i32 %i.ec, ptr %i.en, align 4, !tbaa !453
  store i32 %i.ec, ptr %i.ep, align 4, !tbaa !453
  store i32 %i.ec, ptr %i.er, align 4, !tbaa !453
  %i.es = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.et = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eg, i64 20
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ei, i64 28
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ek, i64 36
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 44
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 52
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 60
  store i8 1, ptr %i.es, align 4, !tbaa !454
  store i8 1, ptr %i.et, align 4, !tbaa !454
  store i8 1, ptr %i.eu, align 4, !tbaa !454
  store i8 1, ptr %i.ev, align 4, !tbaa !454
  store i8 1, ptr %i.ew, align 4, !tbaa !454
  store i8 1, ptr %i.ex, align 4, !tbaa !454
  store i8 1, ptr %i.ey, align 4, !tbaa !454
  store i8 1, ptr %i.ez, align 4, !tbaa !454
  %i.fa = add <4 x i32> %vec.phi198, splat (i32 1) ; 2 uses
  %i.fb = add <4 x i32> %vec.phi199, splat (i32 1) ; 2 uses
  %i.fc = add <4 x i32> %vec.phi196, splat (i32 1) ; 2 uses
  %i.fd = add <4 x i32> %vec.phi197, splat (i32 1) ; 2 uses
  %i.fe = add <4 x i32> %vec.phi194, splat (i32 1) ; 2 uses
  %i.ff = add <4 x i32> %vec.phi195, splat (i32 1) ; 2 uses
  %index.next200 = add nuw i64 %index193, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next200, %n.vec191
  br i1 %i.fg, label %middle.block201, label %vector.body192, !llvm.loop !6308

middle.block201:                                  ; preds = %vector.body192
  %bin.rdx202 = add <4 x i32> %i.ff, %i.fe
  %i.fh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx202) ; 3 uses
  %bin.rdx203 = add <4 x i32> %i.fd, %i.fc
  %i.fi = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx203) ; 2 uses
  %bin.rdx204 = add <4 x i32> %i.fb, %i.fa
  %i.fj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx204) ; 3 uses
  store i32 %i.fj, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211, !alias.scope !6321, !noalias !6322
  store i32 %i.fi, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211, !alias.scope !6323, !noalias !6324
  store i32 %i.fh, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211, !alias.scope !6325, !noalias !6320
  %cmp.n205 = icmp eq i64 %i.cf, %n.vec191
  br i1 %cmp.n205, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaINS0_13test_internal20CopyableOnlyInstanceEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit, label %.lr.ph.i.split.us.i.preheader210

.lr.ph.i.split.us.i.preheader210:                 ; preds = %vector.memcheck166, %.lr.ph.i.split.us.i.preheader, %middle.block201
  %.ph = phi i32 [ %.pre101, %vector.memcheck166 ], [ %.pre101, %.lr.ph.i.split.us.i.preheader ], [ %i.fh, %middle.block201 ] ; 2 uses
  %.ph211 = phi i32 [ %.pre100, %vector.memcheck166 ], [ %.pre100, %.lr.ph.i.split.us.i.preheader ], [ %i.fi, %middle.block201 ] ; 2 uses
  %.ph212 = phi i32 [ %.pre99, %vector.memcheck166 ], [ %.pre99, %.lr.ph.i.split.us.i.preheader ], [ %i.fj, %middle.block201 ] ; 2 uses
  %.012.i.us.i.ph = phi i64 [ 0, %vector.memcheck166 ], [ 0, %.lr.ph.i.split.us.i.preheader ], [ %n.vec191, %middle.block201 ] ; 4 uses
  %i.fk = sub i64 %2, %.sink1.i
  %i.fl = xor i64 %.012.i.us.i.ph, -1
  %i.fm = add i64 %2, %i.fl
  %xtraiter240 = and i64 %i.fk, 1
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  br i1 %lcmp.mod241.not, label %.lr.ph.i.split.us.i.prol.loopexit, label %.lr.ph.i.split.us.i.prol

.lr.ph.i.split.us.i.prol:                         ; preds = %.lr.ph.i.split.us.i.preheader210
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.012.i.us.i.ph ; 2 uses
  %i.fo = load i32, ptr %1, align 4, !tbaa !453
  store i32 %i.fo, ptr %i.fn, align 4, !tbaa !453
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  store i8 1, ptr %i.fp, align 4, !tbaa !454
  %i.fq = add nsw i32 %.ph212, 1                  ; 3 uses
  store i32 %i.fq, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.fr = add nsw i32 %.ph211, 1                  ; 2 uses
  store i32 %i.fr, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.fs = add nsw i32 %.ph, 1                     ; 3 uses
  store i32 %i.fs, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.ft = or disjoint i64 %.012.i.us.i.ph, 1
  br label %.lr.ph.i.split.us.i.prol.loopexit

.lr.ph.i.split.us.i.prol.loopexit:                ; preds = %.lr.ph.i.split.us.i.prol, %.lr.ph.i.split.us.i.preheader210
  %.lcssa214.unr = phi i32 [ poison, %.lr.ph.i.split.us.i.preheader210 ], [ %i.fq, %.lr.ph.i.split.us.i.prol ]
  %.lcssa213.unr = phi i32 [ poison, %.lr.ph.i.split.us.i.preheader210 ], [ %i.fs, %.lr.ph.i.split.us.i.prol ]
  %.unr243 = phi i32 [ %.ph, %.lr.ph.i.split.us.i.preheader210 ], [ %i.fs, %.lr.ph.i.split.us.i.prol ]
  %.unr244 = phi i32 [ %.ph211, %.lr.ph.i.split.us.i.preheader210 ], [ %i.fr, %.lr.ph.i.split.us.i.prol ]
  %.unr245 = phi i32 [ %.ph212, %.lr.ph.i.split.us.i.preheader210 ], [ %i.fq, %.lr.ph.i.split.us.i.prol ]
  %.012.i.us.i.unr = phi i64 [ %.012.i.us.i.ph, %.lr.ph.i.split.us.i.preheader210 ], [ %i.ft, %.lr.ph.i.split.us.i.prol ]
  %i.fu = icmp eq i64 %i.fm, %.sink1.i
  br i1 %i.fu, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaINS0_13test_internal20CopyableOnlyInstanceEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit, label %.lr.ph.i.split.us.i

.lr.ph.i.split.us.i:                              ; preds = %.lr.ph.i.split.us.i.prol.loopexit, %.lr.ph.i.split.us.i
  %i.fv = phi i32 [ %i.gk, %.lr.ph.i.split.us.i ], [ %.unr243, %.lr.ph.i.split.us.i.prol.loopexit ] ; 2 uses
  %i.fw = phi i32 [ %i.gj, %.lr.ph.i.split.us.i ], [ %.unr244, %.lr.ph.i.split.us.i.prol.loopexit ] ; 2 uses
  %i.fx = phi i32 [ %i.gi, %.lr.ph.i.split.us.i ], [ %.unr245, %.lr.ph.i.split.us.i.prol.loopexit ] ; 2 uses
  %.012.i.us.i = phi i64 [ %i.gl, %.lr.ph.i.split.us.i ], [ %.012.i.us.i.unr, %.lr.ph.i.split.us.i.prol.loopexit ] ; 3 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.012.i.us.i ; 2 uses
  %i.fz = load i32, ptr %1, align 4, !tbaa !453
  store i32 %i.fz, ptr %i.fy, align 4, !tbaa !453
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  store i8 1, ptr %i.ga, align 4, !tbaa !454
  %i.gb = add nsw i32 %i.fx, 1
  store i32 %i.gb, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.gc = add nsw i32 %i.fw, 1
  store i32 %i.gc, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.gd = add nsw i32 %i.fv, 1
  store i32 %i.gd, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.012.i.us.i ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load i32, ptr %1, align 4, !tbaa !453
  store i32 %i.gg, ptr %i.gf, align 4, !tbaa !453
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  store i8 1, ptr %i.gh, align 4, !tbaa !454
  %i.gi = add nsw i32 %i.fx, 2                    ; 3 uses
  store i32 %i.gi, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.gj = add nsw i32 %i.fw, 2                    ; 2 uses
  store i32 %i.gj, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.gk = add nsw i32 %i.fv, 2                    ; 3 uses
  store i32 %i.gk, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.gl = add nuw i64 %.012.i.us.i, 2             ; 2 uses
  %exitcond.not.i.us.i.1 = icmp eq i64 %i.gl, %i.cf
  br i1 %exitcond.not.i.us.i.1, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaINS0_13test_internal20CopyableOnlyInstanceEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit, label %.lr.ph.i.split.us.i, !llvm.loop !6312

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.split.i.prol.loopexit, %.lr.ph.i.split.i
  %i.gm = phi i32 [ %i.gy, %.lr.ph.i.split.i ], [ %.unr238, %.lr.ph.i.split.i.prol.loopexit ] ; 2 uses
  %i.gn = phi i32 [ %i.gx, %.lr.ph.i.split.i ], [ %.unr239, %.lr.ph.i.split.i.prol.loopexit ] ; 2 uses
  %.012.i.i = phi i64 [ %i.gz, %.lr.ph.i.split.i ], [ %.012.i.i.unr, %.lr.ph.i.split.i.prol.loopexit ] ; 3 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.012.i.i ; 2 uses
  %i.gp = load i32, ptr %1, align 4, !tbaa !453
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !453
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  store i8 0, ptr %i.gq, align 4, !tbaa !454
  %i.gr = add nsw i32 %i.gn, 1
  store i32 %i.gr, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.gs = add nsw i32 %i.gm, 1
  store i32 %i.gs, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.012.i.i ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load i32, ptr %1, align 4, !tbaa !453
  store i32 %i.gv, ptr %i.gu, align 4, !tbaa !453
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  store i8 0, ptr %i.gw, align 4, !tbaa !454
  %i.gx = add nsw i32 %i.gn, 2                    ; 3 uses
  store i32 %i.gx, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.gy = add nsw i32 %i.gm, 2                    ; 3 uses
  store i32 %i.gy, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.gz = add nuw i64 %.012.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.gz, %i.cf
  br i1 %exitcond.not.i.i.1, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaINS0_13test_internal20CopyableOnlyInstanceEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit, label %.lr.ph.i.split.i, !llvm.loop !6313

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaINS0_13test_internal20CopyableOnlyInstanceEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit: ; preds = %.lr.ph.i.split.i.prol.loopexit, %.lr.ph.i.split.i, %.lr.ph.i.split.us.i.prol.loopexit, %.lr.ph.i.split.us.i, %middle.block, %middle.block201
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E.promoted = phi i32 [ %i.gk, %.lr.ph.i.split.us.i ], [ %i.fh, %middle.block201 ], [ %i.dn, %middle.block ], [ %.lcssa213.unr, %.lr.ph.i.split.us.i.prol.loopexit ], [ %.lcssa225.unr, %.lr.ph.i.split.i.prol.loopexit ], [ %i.gy, %.lr.ph.i.split.i ]
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted = phi i32 [ %i.gi, %.lr.ph.i.split.us.i ], [ %i.fj, %middle.block201 ], [ %i.do, %middle.block ], [ %.lcssa214.unr, %.lr.ph.i.split.us.i.prol.loopexit ], [ %.lcssa226.unr, %.lr.ph.i.split.i.prol.loopexit ], [ %i.gx, %.lr.ph.i.split.i ]
  %.not.i47 = icmp eq i64 %.sink1.i, 0
  br i1 %.not.i47, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_13test_internal20CopyableOnlyInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit63, label %.lr.ph.i50.preheader

.lr.ph.i50.preheader:                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaINS0_13test_internal20CopyableOnlyInstanceEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052623inlined_vector_internal7StorageINS0_13test_internal23CopyableMovableInstanceELm8ESaIS4_EE6ResizeINS1_16CopyValueAdapterIS5_EEEEvT_m:bb.a
  %i.i = phi i32 [ %i.p, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.prol ], [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.j = add nsw i64 %.06.i.prol, -1              ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i8, ptr %i.l, align 4, !tbaa !454, !range !189, !noundef !190
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.prol

bb.c:                                             ; preds = %.lr.ph.i.prol
  %i.o = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.o, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.prol

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.prol: ; preds = %bb.c, %.lr.ph.i.prol
  %i.p = phi i32 [ %i.i, %.lr.ph.i.prol ], [ %i.o, %bb.c ] ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !6337

.lr.ph.i.prol.loopexit:                           ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.prol, %.lr.ph.preheader.i
  %.06.i.unr = phi i64 [ %i.h, %.lr.ph.preheader.i ], [ %i.j, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.prol ]
  %.unr = phi i32 [ %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E.promoted.i, %.lr.ph.preheader.i ], [ %i.p, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.prol ]
  %i.q = sub i64 %2, %.sink1.i
  %i.r = icmp ugt i64 %i.q, -4
  br i1 %i.r, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.3, %.lr.ph.i.prol.loopexit
  %i.s = trunc i64 %i.h to i32
  %i.t = sub i32 %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted.i, %i.s
  store i32 %i.t, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.3
  %.06.i = phi i64 [ %i.an, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.3 ], [ %.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.u = phi i32 [ %i.at, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.3 ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.g, i64 %.06.i
  %i.w = getelementptr i8, ptr %i.v, i64 -4
  %i.x = load i8, ptr %i.w, align 4, !tbaa !454, !range !189, !noundef !190
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.d, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.z = add nsw i32 %i.u, -1                     ; 2 uses
  store i32 %i.z, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i: ; preds = %bb.d, %.lr.ph.i
  %i.aa = phi i32 [ %i.u, %.lr.ph.i ], [ %i.z, %bb.d ] ; 2 uses
  %i.ab = getelementptr [8 x i8], ptr %i.g, i64 %.06.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 -12
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !454, !range !189, !noundef !190
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.e, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.1

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i
  %i.af = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.af, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.1

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.1: ; preds = %bb.e, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i
  %i.ag = phi i32 [ %i.aa, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i ], [ %i.af, %bb.e ] ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.g, i64 %.06.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 -20
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !454, !range !189, !noundef !190
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.f, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.2

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.1
  %i.al = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.al, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.2

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.2: ; preds = %bb.f, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.1
  %i.am = phi i32 [ %i.ag, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.1 ], [ %i.al, %bb.f ] ; 2 uses
  %i.an = add nsw i64 %.06.i, -4                  ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !454, !range !189, !noundef !190
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.g, label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.3

bb.g:                                             ; preds = %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.2
  %i.as = add nsw i32 %i.am, -1                   ; 2 uses
  store i32 %i.as, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.3

_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.3: ; preds = %bb.g, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.2
  %i.at = phi i32 [ %i.am, %_ZN4absl12lts_2026052613test_internal19BaseCountedInstanceD2Ev.exit.i.2 ], [ %i.as, %bb.g ]
  %.not.i.3 = icmp eq i64 %i.an, 0
  br i1 %.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !87

bb.h:                                             ; preds = %bb.a
  %.not38 = icmp ugt i64 %2, %.sink.i
  br i1 %.not38, label %bb.i, label %.lr.ph.i43

.lr.ph.i43:                                       ; preds = %bb.h
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sink2.i, i64 %.sink1.i ; 4 uses
  %i.av = sub i64 %2, %.sink1.i                   ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre.i = load i8, ptr %i.aw, align 4, !tbaa !454, !range !189
  %i.ax = trunc nuw i8 %.pre.i to i1
  br i1 %i.ax, label %.lr.ph.i43.split.us, label %.lr.ph.i43.split.preheader

.lr.ph.i43.split.preheader:                       ; preds = %.lr.ph.i43
  %.neg = add nuw i64 %.sink1.i, 1
  %xtraiter222 = and i64 %i.av, 1
  %i.ay = icmp eq i64 %2, %.neg
  br i1 %i.ay, label %.lr.ph.i43.split.epil.preheader, label %.lr.ph.i43.split.preheader.new

.lr.ph.i43.split.preheader.new:                   ; preds = %.lr.ph.i43.split.preheader
  %unroll_iter = and i64 %i.av, -2
  br label %.lr.ph.i43.split

.lr.ph.i43.split.us:                              ; preds = %.lr.ph.i43, %.lr.ph.i43.split.us
  %.012.i.us = phi i64 [ %i.bi, %.lr.ph.i43.split.us ], [ 0, %.lr.ph.i43 ] ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.012.i.us ; 2 uses
  %i.ba = load i32, ptr %1, align 4, !tbaa !453
  store i32 %i.ba, ptr %i.az, align 4, !tbaa !453
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i8 1, ptr %i.bb, align 4, !tbaa !454
  %i.bc = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.be = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.bg = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.bi = add nuw i64 %.012.i.us, 1               ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.bi, %i.av
  br i1 %exitcond.not.i.us, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit, label %.lr.ph.i43.split.us, !llvm.loop !88

.lr.ph.i43.split:                                 ; preds = %.lr.ph.i43.split, %.lr.ph.i43.split.preheader.new
  %.012.i = phi i64 [ 0, %.lr.ph.i43.split.preheader.new ], [ %i.by, %.lr.ph.i43.split ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i43.split.preheader.new ], [ %niter.next.1, %.lr.ph.i43.split ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.012.i ; 2 uses
  %i.bk = load i32, ptr %1, align 4, !tbaa !453
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !453
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i8 0, ptr %i.bl, align 4, !tbaa !454
  %i.bm = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.bo = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.012.i ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %1, align 4, !tbaa !453
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !453
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i8 0, ptr %i.bt, align 4, !tbaa !454
  %i.bu = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.bw = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.by = add nuw i64 %.012.i, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit.loopexit221.unr-lcssa, label %.lr.ph.i43.split, !llvm.loop !88

bb.i:                                             ; preds = %bb.h
  %i.bz = shl i64 %.sink.i, 1
  %.sroa.speculated.i = tail call noundef i64 @llvm.umax.i64(i64 %i.bz, i64 %2) ; 4 uses
  %i.ca = icmp ugt i64 %.sroa.speculated.i, 1152921504606846975
  br i1 %i.ca, label %bb.j, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE8AllocateERS5_m.exit.i, !prof !212

bb.j:                                             ; preds = %bb.i
  %i.cb = icmp ugt i64 %.sroa.speculated.i, 2305843009213693951
  br i1 %i.cb, label %.noexc, label %.noexc45

.noexc:                                           ; preds = %bb.j
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #38
  unreachable

.noexc45:                                         ; preds = %bb.j
  tail call void @_ZSt17__throw_bad_allocv() #38
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE8AllocateERS5_m.exit.i: ; preds = %bb.i
  %i.cc = shl nuw nsw i64 %.sroa.speculated.i, 3
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #41 ; 5 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.sink1.i ; 22 uses
  %i.cf = sub i64 %2, %.sink1.i                   ; 8 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre.i.i = load i8, ptr %i.cg, align 4, !tbaa !454, !range !189
  %i.ch = trunc nuw i8 %.pre.i.i to i1
  %.pre97 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211 ; 6 uses
  br i1 %i.ch, label %.lr.ph.i.split.us.i.preheader, label %.lr.ph.i.split.i.preheader

.lr.ph.i.split.i.preheader:                       ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE8AllocateERS5_m.exit.i
  %.pre96 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211 ; 3 uses
  %min.iters.check = icmp ult i64 %i.cf, 16
  br i1 %min.iters.check, label %.lr.ph.i.split.i.preheader212, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.split.i.preheader
  %bound0 = icmp ult ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, i64 4)
  %bound0.a = icmp ult ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, i64 4)
  %found.conflict = and i1 %bound0, %bound0.a
  %3 = getelementptr i8, ptr %1, i64 4            ; 2 uses
  %bound0120 = icmp ugt ptr %3, @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E
  %bound1121 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, i64 4)
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx = or i1 %found.conflict, %found.conflict122
  %bound0123 = icmp ugt ptr %3, @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E
  %bound1124 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, i64 4)
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx126 = or i1 %conflict.rdx, %found.conflict125
  br i1 %conflict.rdx126, label %.lr.ph.i.split.i.preheader212, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cf, -8                      ; 3 uses
  %i.ci = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre96, i64 0
  %i.cj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre97, i64 0
  %i.ck = load i32, ptr %1, align 4, !tbaa !453, !alias.scope !6353 ; 8 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ %i.ci, %vector.ph ], [ %i.dk, %vector.body ]
  %vec.phi127 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dl, %vector.body ]
  %vec.phi128 = phi <4 x i32> [ %i.cj, %vector.ph ], [ %i.di, %vector.body ]
  %vec.phi129 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.dj, %vector.body ]
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !453
  store i32 %i.ck, ptr %i.cn, align 4, !tbaa !453
  store i32 %i.ck, ptr %i.cp, align 4, !tbaa !453
  store i32 %i.ck, ptr %i.cr, align 4, !tbaa !453
  store i32 %i.ck, ptr %i.ct, align 4, !tbaa !453
  store i32 %i.ck, ptr %i.cv, align 4, !tbaa !453
  store i32 %i.ck, ptr %i.cx, align 4, !tbaa !453
  store i32 %i.ck, ptr %i.cz, align 4, !tbaa !453
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 20
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 28
  %i.de = getelementptr inbounds nuw i8, ptr %i.cs, i64 36
  %i.df = getelementptr inbounds nuw i8, ptr %i.cu, i64 44
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cw, i64 52
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 60
  store i8 0, ptr %i.da, align 4, !tbaa !454
  store i8 0, ptr %i.db, align 4, !tbaa !454
  store i8 0, ptr %i.dc, align 4, !tbaa !454
  store i8 0, ptr %i.dd, align 4, !tbaa !454
  store i8 0, ptr %i.de, align 4, !tbaa !454
  store i8 0, ptr %i.df, align 4, !tbaa !454
  store i8 0, ptr %i.dg, align 4, !tbaa !454
  store i8 0, ptr %i.dh, align 4, !tbaa !454
  %i.di = add <4 x i32> %vec.phi128, splat (i32 1) ; 2 uses
  %i.dj = add <4 x i32> %vec.phi129, splat (i32 1) ; 2 uses
  %i.dk = add <4 x i32> %vec.phi, splat (i32 1)   ; 2 uses
  %i.dl = add <4 x i32> %vec.phi127, splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !6340

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dl, %i.dk
  %i.dn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx130 = add <4 x i32> %i.dj, %i.di
  %i.do = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx130) ; 3 uses
  store i32 %i.do, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211, !alias.scope !6354, !noalias !6355
  store i32 %i.dn, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211, !alias.scope !6356, !noalias !6353
  %cmp.n = icmp eq i64 %i.cf, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaINS0_13test_internal23CopyableMovableInstanceEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit, label %.lr.ph.i.split.i.preheader212

.lr.ph.i.split.i.preheader212:                    ; preds = %vector.memcheck, %.lr.ph.i.split.i.preheader, %middle.block
  %.ph213 = phi i32 [ %.pre96, %vector.memcheck ], [ %.pre96, %.lr.ph.i.split.i.preheader ], [ %i.dn, %middle.block ] ; 2 uses
  %.ph214 = phi i32 [ %.pre97, %vector.memcheck ], [ %.pre97, %.lr.ph.i.split.i.preheader ], [ %i.do, %middle.block ] ; 2 uses
  %.012.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.split.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.dp = sub i64 %2, %.sink1.i
  %i.dq = xor i64 %.012.i.i.ph, -1
  %i.dr = add i64 %2, %i.dq
  %xtraiter225 = and i64 %i.dp, 1
  %lcmp.mod226.not = icmp eq i64 %xtraiter225, 0
  br i1 %lcmp.mod226.not, label %.lr.ph.i.split.i.prol.loopexit, label %.lr.ph.i.split.i.prol

.lr.ph.i.split.i.prol:                            ; preds = %.lr.ph.i.split.i.preheader212
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.012.i.i.ph ; 2 uses
  %i.dt = load i32, ptr %1, align 4, !tbaa !453
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !453
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i8 0, ptr %i.du, align 4, !tbaa !454
  %i.dv = add nsw i32 %.ph214, 1                  ; 3 uses
  store i32 %i.dv, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.dw = add nsw i32 %.ph213, 1                  ; 2 uses
  store i32 %i.dw, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.dx = or disjoint i64 %.012.i.i.ph, 1
  br label %.lr.ph.i.split.i.prol.loopexit

.lr.ph.i.split.i.prol.loopexit:                   ; preds = %.lr.ph.i.split.i.prol, %.lr.ph.i.split.i.preheader212
  %.lcssa216.unr = phi i32 [ poison, %.lr.ph.i.split.i.preheader212 ], [ %i.dv, %.lr.ph.i.split.i.prol ]
  %.unr228 = phi i32 [ %.ph213, %.lr.ph.i.split.i.preheader212 ], [ %i.dw, %.lr.ph.i.split.i.prol ]
  %.unr229 = phi i32 [ %.ph214, %.lr.ph.i.split.i.preheader212 ], [ %i.dv, %.lr.ph.i.split.i.prol ]
  %.012.i.i.unr = phi i64 [ %.012.i.i.ph, %.lr.ph.i.split.i.preheader212 ], [ %i.dx, %.lr.ph.i.split.i.prol ]
  %i.dy = icmp eq i64 %i.dr, %.sink1.i
  br i1 %i.dy, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaINS0_13test_internal23CopyableMovableInstanceEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit, label %.lr.ph.i.split.i

.lr.ph.i.split.us.i.preheader:                    ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE8AllocateERS5_m.exit.i
  %.pre98 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211 ; 3 uses
  %.pre99 = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211 ; 3 uses
  %min.iters.check157 = icmp ult i64 %i.cf, 24
  br i1 %min.iters.check157, label %.lr.ph.i.split.us.i.preheader202, label %vector.memcheck158

vector.memcheck158:                               ; preds = %.lr.ph.i.split.us.i.preheader
  %bound0159 = icmp ult ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, i64 4)
  %bound1160 = icmp ult ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, i64 4)
  %found.conflict161 = and i1 %bound0159, %bound1160
  %bound0162 = icmp ult ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, i64 4)
  %bound1163 = icmp ult ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, i64 4)
  %found.conflict164 = and i1 %bound0162, %bound1163
  %conflict.rdx165 = or i1 %found.conflict161, %found.conflict164
  %4 = getelementptr i8, ptr %1, i64 4            ; 3 uses
  %bound0166 = icmp ugt ptr %4, @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E
  %bound1167 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, i64 4)
  %found.conflict168 = and i1 %bound0166, %bound1167
  %conflict.rdx169 = or i1 %conflict.rdx165, %found.conflict168
  %bound0170 = icmp ult ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, i64 4)
  %bound1171 = icmp ult ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, i64 4)
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx173 = or i1 %conflict.rdx169, %found.conflict172
  %bound0174 = icmp ugt ptr %4, @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E
  %bound1175 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, i64 4)
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx177 = or i1 %conflict.rdx173, %found.conflict176
  %bound0178 = icmp ugt ptr %4, @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E
  %bound1179 = icmp ult ptr %1, getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, i64 4)
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx181 = or i1 %conflict.rdx177, %found.conflict180
  br i1 %conflict.rdx181, label %.lr.ph.i.split.us.i.preheader202, label %vector.ph182

vector.ph182:                                     ; preds = %vector.memcheck158
  %n.vec183 = and i64 %i.cf, -8                   ; 3 uses
  %i.dz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre99, i64 0
  %i.ea = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre98, i64 0
  %i.eb = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.pre97, i64 0
  %i.ec = load i32, ptr %1, align 4, !tbaa !453, !alias.scope !6357 ; 8 uses
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph182
  %index185 = phi i64 [ 0, %vector.ph182 ], [ %index.next192, %vector.body184 ] ; 9 uses
  %vec.phi186 = phi <4 x i32> [ %i.dz, %vector.ph182 ], [ %i.fe, %vector.body184 ]
  %vec.phi187 = phi <4 x i32> [ zeroinitializer, %vector.ph182 ], [ %i.ff, %vector.body184 ]
  %vec.phi188 = phi <4 x i32> [ %i.ea, %vector.ph182 ], [ %i.fc, %vector.body184 ]
  %vec.phi189 = phi <4 x i32> [ zeroinitializer, %vector.ph182 ], [ %i.fd, %vector.body184 ]
  %vec.phi190 = phi <4 x i32> [ %i.eb, %vector.ph182 ], [ %i.fa, %vector.body184 ]
  %vec.phi191 = phi <4 x i32> [ zeroinitializer, %vector.ph182 ], [ %i.fb, %vector.body184 ]
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index185 ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index185 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index185 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index185 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index185 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index185 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index185 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index185 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 56
  store i32 %i.ec, ptr %i.ed, align 4, !tbaa !453
  store i32 %i.ec, ptr %i.ef, align 4, !tbaa !453
  store i32 %i.ec, ptr %i.eh, align 4, !tbaa !453
  store i32 %i.ec, ptr %i.ej, align 4, !tbaa !453
  store i32 %i.ec, ptr %i.el, align 4, !tbaa !453
  store i32 %i.ec, ptr %i.en, align 4, !tbaa !453
  store i32 %i.ec, ptr %i.ep, align 4, !tbaa !453
  store i32 %i.ec, ptr %i.er, align 4, !tbaa !453
  %i.es = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.et = getelementptr inbounds nuw i8, ptr %i.ee, i64 12
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eg, i64 20
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ei, i64 28
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ek, i64 36
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 44
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 52
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 60
  store i8 1, ptr %i.es, align 4, !tbaa !454
  store i8 1, ptr %i.et, align 4, !tbaa !454
  store i8 1, ptr %i.eu, align 4, !tbaa !454
  store i8 1, ptr %i.ev, align 4, !tbaa !454
  store i8 1, ptr %i.ew, align 4, !tbaa !454
  store i8 1, ptr %i.ex, align 4, !tbaa !454
  store i8 1, ptr %i.ey, align 4, !tbaa !454
  store i8 1, ptr %i.ez, align 4, !tbaa !454
  %i.fa = add <4 x i32> %vec.phi190, splat (i32 1) ; 2 uses
  %i.fb = add <4 x i32> %vec.phi191, splat (i32 1) ; 2 uses
  %i.fc = add <4 x i32> %vec.phi188, splat (i32 1) ; 2 uses
  %i.fd = add <4 x i32> %vec.phi189, splat (i32 1) ; 2 uses
  %i.fe = add <4 x i32> %vec.phi186, splat (i32 1) ; 2 uses
  %i.ff = add <4 x i32> %vec.phi187, splat (i32 1) ; 2 uses
  %index.next192 = add nuw i64 %index185, 8       ; 2 uses
  %i.fg = icmp eq i64 %index.next192, %n.vec183
  br i1 %i.fg, label %middle.block193, label %vector.body184, !llvm.loop !6345

middle.block193:                                  ; preds = %vector.body184
  %bin.rdx194 = add <4 x i32> %i.ff, %i.fe
  %i.fh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx194) ; 2 uses
  %bin.rdx195 = add <4 x i32> %i.fd, %i.fc
  %i.fi = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx195) ; 2 uses
  %bin.rdx196 = add <4 x i32> %i.fb, %i.fa
  %i.fj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx196) ; 3 uses
  store i32 %i.fj, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211, !alias.scope !6358, !noalias !6359
  store i32 %i.fi, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211, !alias.scope !6360, !noalias !6361
  store i32 %i.fh, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211, !alias.scope !6362, !noalias !6357
  %cmp.n197 = icmp eq i64 %i.cf, %n.vec183
  br i1 %cmp.n197, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaINS0_13test_internal23CopyableMovableInstanceEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit, label %.lr.ph.i.split.us.i.preheader202

.lr.ph.i.split.us.i.preheader202:                 ; preds = %vector.memcheck158, %.lr.ph.i.split.us.i.preheader, %middle.block193
  %.ph = phi i32 [ %.pre99, %vector.memcheck158 ], [ %.pre99, %.lr.ph.i.split.us.i.preheader ], [ %i.fh, %middle.block193 ] ; 2 uses
  %.ph203 = phi i32 [ %.pre98, %vector.memcheck158 ], [ %.pre98, %.lr.ph.i.split.us.i.preheader ], [ %i.fi, %middle.block193 ] ; 2 uses
  %.ph204 = phi i32 [ %.pre97, %vector.memcheck158 ], [ %.pre97, %.lr.ph.i.split.us.i.preheader ], [ %i.fj, %middle.block193 ] ; 2 uses
  %.012.i.us.i.ph = phi i64 [ 0, %vector.memcheck158 ], [ 0, %.lr.ph.i.split.us.i.preheader ], [ %n.vec183, %middle.block193 ] ; 4 uses
  %i.fk = sub i64 %2, %.sink1.i
  %i.fl = xor i64 %.012.i.us.i.ph, -1
  %i.fm = add i64 %2, %i.fl
  %xtraiter230 = and i64 %i.fk, 1
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %.lr.ph.i.split.us.i.prol.loopexit, label %.lr.ph.i.split.us.i.prol

.lr.ph.i.split.us.i.prol:                         ; preds = %.lr.ph.i.split.us.i.preheader202
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.012.i.us.i.ph ; 2 uses
  %i.fo = load i32, ptr %1, align 4, !tbaa !453
  store i32 %i.fo, ptr %i.fn, align 4, !tbaa !453
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  store i8 1, ptr %i.fp, align 4, !tbaa !454
  %i.fq = add nsw i32 %.ph204, 1                  ; 3 uses
  store i32 %i.fq, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.fr = add nsw i32 %.ph203, 1                  ; 2 uses
  store i32 %i.fr, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.fs = add nsw i32 %.ph, 1                     ; 2 uses
  store i32 %i.fs, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.ft = or disjoint i64 %.012.i.us.i.ph, 1
  br label %.lr.ph.i.split.us.i.prol.loopexit

.lr.ph.i.split.us.i.prol.loopexit:                ; preds = %.lr.ph.i.split.us.i.prol, %.lr.ph.i.split.us.i.preheader202
  %.lcssa205.unr = phi i32 [ poison, %.lr.ph.i.split.us.i.preheader202 ], [ %i.fq, %.lr.ph.i.split.us.i.prol ]
  %.unr233 = phi i32 [ %.ph, %.lr.ph.i.split.us.i.preheader202 ], [ %i.fs, %.lr.ph.i.split.us.i.prol ]
  %.unr234 = phi i32 [ %.ph203, %.lr.ph.i.split.us.i.preheader202 ], [ %i.fr, %.lr.ph.i.split.us.i.prol ]
  %.unr235 = phi i32 [ %.ph204, %.lr.ph.i.split.us.i.preheader202 ], [ %i.fq, %.lr.ph.i.split.us.i.prol ]
  %.012.i.us.i.unr = phi i64 [ %.012.i.us.i.ph, %.lr.ph.i.split.us.i.preheader202 ], [ %i.ft, %.lr.ph.i.split.us.i.prol ]
  %i.fu = icmp eq i64 %i.fm, %.sink1.i
  br i1 %i.fu, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaINS0_13test_internal23CopyableMovableInstanceEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit, label %.lr.ph.i.split.us.i

.lr.ph.i.split.us.i:                              ; preds = %.lr.ph.i.split.us.i.prol.loopexit, %.lr.ph.i.split.us.i
  %i.fv = phi i32 [ %i.gk, %.lr.ph.i.split.us.i ], [ %.unr233, %.lr.ph.i.split.us.i.prol.loopexit ] ; 2 uses
  %i.fw = phi i32 [ %i.gj, %.lr.ph.i.split.us.i ], [ %.unr234, %.lr.ph.i.split.us.i.prol.loopexit ] ; 2 uses
  %i.fx = phi i32 [ %i.gi, %.lr.ph.i.split.us.i ], [ %.unr235, %.lr.ph.i.split.us.i.prol.loopexit ] ; 2 uses
  %.012.i.us.i = phi i64 [ %i.gl, %.lr.ph.i.split.us.i ], [ %.012.i.us.i.unr, %.lr.ph.i.split.us.i.prol.loopexit ] ; 3 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.012.i.us.i ; 2 uses
  %i.fz = load i32, ptr %1, align 4, !tbaa !453
  store i32 %i.fz, ptr %i.fy, align 4, !tbaa !453
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 4
  store i8 1, ptr %i.ga, align 4, !tbaa !454
  %i.gb = add nsw i32 %i.fx, 1
  store i32 %i.gb, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.gc = add nsw i32 %i.fw, 1
  store i32 %i.gc, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.gd = add nsw i32 %i.fv, 1
  store i32 %i.gd, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.012.i.us.i ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load i32, ptr %1, align 4, !tbaa !453
  store i32 %i.gg, ptr %i.gf, align 4, !tbaa !453
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  store i8 1, ptr %i.gh, align 4, !tbaa !454
  %i.gi = add nsw i32 %i.fx, 2                    ; 3 uses
  store i32 %i.gi, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.gj = add nsw i32 %i.fw, 2                    ; 2 uses
  store i32 %i.gj, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance19num_live_instances_E, align 4, !tbaa !211
  %i.gk = add nsw i32 %i.fv, 2                    ; 2 uses
  store i32 %i.gk, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.gl = add nuw i64 %.012.i.us.i, 2             ; 2 uses
  %exitcond.not.i.us.i.1 = icmp eq i64 %i.gl, %i.cf
  br i1 %exitcond.not.i.us.i.1, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaINS0_13test_internal23CopyableMovableInstanceEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit, label %.lr.ph.i.split.us.i, !llvm.loop !6349

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.split.i.prol.loopexit, %.lr.ph.i.split.i
  %i.gm = phi i32 [ %i.gy, %.lr.ph.i.split.i ], [ %.unr228, %.lr.ph.i.split.i.prol.loopexit ] ; 2 uses
  %i.gn = phi i32 [ %i.gx, %.lr.ph.i.split.i ], [ %.unr229, %.lr.ph.i.split.i.prol.loopexit ] ; 2 uses
  %.012.i.i = phi i64 [ %i.gz, %.lr.ph.i.split.i ], [ %.012.i.i.unr, %.lr.ph.i.split.i.prol.loopexit ] ; 3 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.012.i.i ; 2 uses
  %i.gp = load i32, ptr %1, align 4, !tbaa !453
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !453
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  store i8 0, ptr %i.gq, align 4, !tbaa !454
  %i.gr = add nsw i32 %i.gn, 1
  store i32 %i.gr, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.gs = add nsw i32 %i.gm, 1
  store i32 %i.gs, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.012.i.i ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gv = load i32, ptr %1, align 4, !tbaa !453
  store i32 %i.gv, ptr %i.gu, align 4, !tbaa !453
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 12
  store i8 0, ptr %i.gw, align 4, !tbaa !454
  %i.gx = add nsw i32 %i.gn, 2                    ; 3 uses
  store i32 %i.gx, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E, align 4, !tbaa !211
  %i.gy = add nsw i32 %i.gm, 2                    ; 2 uses
  store i32 %i.gy, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance11num_copies_E, align 4, !tbaa !211
  %i.gz = add nuw i64 %.012.i.i, 2                ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.gz, %i.cf
  br i1 %exitcond.not.i.i.1, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaINS0_13test_internal23CopyableMovableInstanceEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit, label %.lr.ph.i.split.i, !llvm.loop !6350

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaINS0_13test_internal23CopyableMovableInstanceEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit: ; preds = %.lr.ph.i.split.i.prol.loopexit, %.lr.ph.i.split.i, %.lr.ph.i.split.us.i.prol.loopexit, %.lr.ph.i.split.us.i, %middle.block, %middle.block193
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance14num_instances_E.promoted = phi i32 [ %i.gi, %.lr.ph.i.split.us.i ], [ %i.fj, %middle.block193 ], [ %i.do, %middle.block ], [ %.lcssa205.unr, %.lr.ph.i.split.us.i.prol.loopexit ], [ %.lcssa216.unr, %.lr.ph.i.split.i.prol.loopexit ], [ %i.gx, %.lr.ph.i.split.i ] ; 2 uses
  %.not.i47 = icmp eq i64 %.sink1.i, 0
  br i1 %.not.i47, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaINS0_13test_internal23CopyableMovableInstanceEELb0EE15DestroyElementsERS5_PS4_m.exit61, label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaINS0_13test_internal23CopyableMovableInstanceEEE9ConstructINS1_16CopyValueAdapterIS5_EEEEvPS4_RT_m.exit
  %_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E.promoted = load i32, ptr @_ZN4absl12lts_2026052613test_internal19BaseCountedInstance10num_moves_E, align 4, !tbaa !211 ; 2 uses
  %i.ha = icmp eq i64 %.sink1.i, 1
  br i1 %i.ha, label %.lr.ph.i48.epil.preheader, label %.lr.ph.i48.preheader.new
end_hunk_1
