begin_hunk_0
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44
  %i.f = and i64 %i.e, -5
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %2, label %bb.dw

2:                                                ; preds = %ISEQ_COMPILE_DATA.exit
  %3 = getelementptr i8, ptr %i.d, i64 152
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = load i16, ptr %4, align 4                  ; 4 uses
  %6 = getelementptr i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %6, align 8, !tbaa !46
  %.val.val.i = load i32, ptr %.val.i, align 8, !tbaa !47 ; 2 uses
  switch i32 %.val.val.i, label %tailcallable_p.exit.thread.i [
    i32 0, label %tailcallable_p.exit.thread.thread.i
    i32 6, label %tailcallable_p.exit.thread.thread.i
    i32 7, label %tailcallable_p.exit.thread.thread.i
    i32 4, label %tailcallable_p.exit.thread.thread.i
    i32 5, label %tailcallable_p.exit.thread.thread.i
  ]

tailcallable_p.exit.thread.thread.i:              ; preds = %2, %2, %2, %2, %2
  %7 = getelementptr i8, ptr %1, i64 8            ; 2 uses
  %.val72158.i = load ptr, ptr %7, align 8, !tbaa !63
  br label %bb.d

tailcallable_p.exit.thread.i:                     ; preds = %2
  %i.g = lshr i16 %5, 2
  %.lobit.i = and i16 %i.g, 1
  %i.h = zext nneg i16 %.lobit.i to i32           ; 4 uses
  %i.i = getelementptr i8, ptr %1, i64 8          ; 5 uses
  %.val72.i = load ptr, ptr %i.i, align 8, !tbaa !63 ; 5 uses
  %i.j = icmp eq i32 %.val.val.i, 2
  br i1 %i.j, label %bb.a, label %bb.d

end_hunk_0
begin_hunk_1
  %spec.select.i = select i1 %i.u, ptr %i.s, ptr null
  br label %.lr.ph.i

bb.d:                                             ; preds = %tailcallable_p.exit.thread.i, %tailcallable_p.exit.thread.thread.i
  %.val72159.i = phi ptr [ %.val72.i, %tailcallable_p.exit.thread.i ], [ %.val72158.i, %tailcallable_p.exit.thread.thread.i ] ; 2 uses
  %8 = phi ptr [ %i.i, %tailcallable_p.exit.thread.i ], [ %7, %tailcallable_p.exit.thread.thread.i ]
  %9 = phi i32 [ %i.h, %tailcallable_p.exit.thread.i ], [ 0, %tailcallable_p.exit.thread.thread.i ]
  %.not59108.i = icmp eq ptr %.val72159.i, null
  br i1 %.not59108.i, label %iseq_optimize.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.051162.i = phi i32 [ 0, %bb.d ], [ 1, %bb.a ], [ 1, %bb.c ], [ 1, %bb.b ]
  %.154165.i = phi ptr [ null, %bb.d ], [ null, %bb.a ], [ %spec.select.i, %bb.c ], [ null, %bb.b ]
  %10 = phi i32 [ %9, %bb.d ], [ %i.h, %bb.a ], [ %i.h, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %11 = phi ptr [ %8, %bb.d ], [ %i.i, %bb.a ], [ %i.i, %bb.c ], [ %i.i, %bb.b ]
  %.154161.i = phi ptr [ %.val72159.i, %bb.d ], [ %.val72.i, %bb.a ], [ %.val72.i, %bb.c ], [ %.val72.i, %bb.b ]
  %i.v = and i16 %5, 2
  %.not61.i = icmp eq i16 %i.v, 0
  %i.w = and i16 %5, 8
  %.not62.i = icmp eq i16 %i.w, 0
  %i.x = load i8, ptr getelementptr inbounds nuw (i8, ptr @rb_vm_insn_len_info, i64 93), align 1
  %i.y = zext i8 %i.x to i32
end_hunk_1
begin_hunk_2
  %i.cl = load i8, ptr getelementptr inbounds nuw (i8, ptr @rb_vm_insn_len_info, i64 57), align 1
  %i.cm = zext i8 %i.cl to i32
  %i.cn = add nsw i32 %i.cm, -1
  %i.co = and i16 %5, 16
  %.not63.i = icmp eq i16 %i.co, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.dj, %.lr.ph.i
  %.0112.i = phi ptr [ %.154161.i, %.lr.ph.i ], [ %i.sy, %bb.dj ] ; 75 uses
  %.047111.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i, %bb.dj ] ; 4 uses
  %.049110.i = phi i32 [ %10, %.lr.ph.i ], [ %.150.i, %bb.dj ] ; 4 uses
  %.152109.i = phi i32 [ %.051162.i, %.lr.ph.i ], [ %.6.i, %bb.dj ] ; 2 uses
  %i.cp = load i32, ptr %.0112.i, align 8, !tbaa !64 ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 2
end_hunk_2
begin_hunk_3
  %i.sk = getelementptr [8 x i8], ptr %i.sj, i64 %i.sg
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !36
  %i.sm = inttoptr i64 %i.sl to ptr
  %i.sn = icmp eq ptr %.154165.i, %i.sm
  %spec.select67.i = select i1 %i.sn, i32 0, i32 %.2.i
  br label %bb.de

end_hunk_3
begin_hunk_4
bb.di:                                            ; preds = %bb.dg
  %i.sw = add i32 %.047111.i, -1                  ; 2 uses
  %.not66.i = icmp eq i32 %i.sw, 0
  %spec.select68.i = select i1 %.not66.i, i32 %10, i32 %.049110.i
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.dg, %bb.df
end_hunk_4
begin_hunk_5
  br i1 %.not60.i, label %iseq_optimize.exit, label %bb.dk

bb.dk:                                            ; preds = %._crit_edge.i
  %.val70.i = load ptr, ptr %11, align 8, !tbaa !63
  %i.sz = getelementptr i8, ptr %.val70.i, i64 8
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !35 ; 4 uses
  %i.tb = load i32, ptr %i.ta, align 8, !tbaa !64
end_hunk_5
begin_hunk_6
  %i.fx = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %.0336.lcssa.i, i64 noundef 4) #40 ; 6 uses
  %i.fy = getelementptr i8, ptr %i.h, i64 244     ; 5 uses
  %i.fz = getelementptr i8, ptr %i.h, i64 252     ; 3 uses
  %i.ga = getelementptr i8, ptr %i.h, i64 248     ; 2 uses
  %i.gb = getelementptr i8, ptr %i.h, i64 256     ; 3 uses
  %i.gc = load <4 x i32>, ptr %i.fy, align 4, !tbaa !7
  %i.gd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.gc) ; 2 uses
end_hunk_6
begin_hunk_7
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !36
  %i.mz = call i64 @rb_fix2uint(i64 noundef %i.my) #38
  switch i8 %i.ip, label %bb.bs [
    i8 74, label %bb.br
    i8 84, label %bb.bq
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.na = load i32, ptr %i.gb, align 8, !tbaa !122
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.1.i469.i = phi i32 [ %i.na, %bb.bq ], [ 0, %bb.bp ]
  %i.nb = load i32, ptr %i.fz, align 4, !tbaa !123 ; 2 uses
  %i.nc = add i32 %i.nb, %.1.i469.i
  %i.nd = zext i32 %i.nc to i64
end_hunk_7
begin_hunk_8

ELEM_REMOVE.exit820:                              ; preds = %bb.ft, %bb.fs, %bb.fm, %bb.fo, %bb.fn, %bb.fl, %ELEM_REMOVE.exit818, %bb.fh, %bb.fi, %ELEM_REMOVE.exit828, %ELEM_INSERT_PREV.exit824, %.loopexit1082
  %.pr1295 = load i32, ptr %i.a, align 8, !tbaa !65 ; 3 uses
  switch i32 %.pr1295, label %.thread1001 [
    i32 27, label %bb.fw
    i32 29, label %bb.fw
    i32 32, label %bb.fw
end_hunk_8
begin_hunk_9
  %exitcond.not = icmp eq i64 %i.abp, 0
  br i1 %exitcond.not, label %.loopexitthread-pre-split, label %.lr.ph, !llvm.loop !808

.loopexitthread-pre-split:                        ; preds = %ELEM_INSERT_PREV.exit838, %ELEM_INSERT_PREV.exit835, %bb.ga, %bb.gb, %bb.gc, %ELEM_REMOVE.exit830
  %.pr999.pr = load i32, ptr %i.a, align 8, !tbaa !65 ; 2 uses
  %3 = icmp eq i32 %.pr999.pr, 29
  br i1 %3, label %bb.gl, label %.thread1001

bb.gl:                                            ; preds = %.loopexitthread-pre-split
  %i.abq = load ptr, ptr %i.d, align 8, !tbaa !68 ; 2 uses
  %i.abr = load i32, ptr %i.abq, align 8, !tbaa !64
  %i.abs = icmp eq i32 %i.abr, 2
  br i1 %i.abs, label %bb.gm, label %ELEM_REMOVE.exit873

bb.gm:                                            ; preds = %bb.gl
  %i.abt = getelementptr i8, ptr %i.abq, i64 24
  %i.abu = load i32, ptr %i.abt, align 8, !tbaa !65
  %i.abv = icmp eq i32 %i.abu, 31
  br i1 %i.abv, label %.sink.split, label %ELEM_REMOVE.exit873

.thread1001:                                      ; preds = %ELEM_REMOVE.exit820, %.loopexitthread-pre-split
  %.pr1003 = phi i32 [ %.pr1295, %ELEM_REMOVE.exit820 ], [ %.pr999.pr, %.loopexitthread-pre-split ] ; 2 uses
  switch i32 %.pr1003, label %ELEM_REMOVE.exit847 [
    i32 24, label %bb.gn
    i32 21, label %bb.gs
    i32 22, label %bb.gs
    i32 19, label %bb.gr
  ]

bb.gn:                                            ; preds = %.thread1001
  %i.abw = load ptr, ptr %i.d, align 8, !tbaa !68 ; 5 uses
  %i.abx = load i32, ptr %i.abw, align 8, !tbaa !64
  %i.aby = icmp eq i32 %i.abx, 2
  br i1 %i.aby, label %bb.go, label %ELEM_REMOVE.exit847thread-pre-split

bb.go:                                            ; preds = %bb.gn
  %i.abz = getelementptr i8, ptr %i.abw, i64 24
  %i.aca = load i32, ptr %i.abz, align 8, !tbaa !65
  %i.acb = icmp eq i32 %i.aca, 23
  br i1 %i.acb, label %bb.gp, label %ELEM_REMOVE.exit847thread-pre-split

bb.gp:                                            ; preds = %bb.go
  %i.acc = getelementptr i8, ptr %i.abw, i64 40
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !69
  %i.ace = load i64, ptr %i.acd, align 8, !tbaa !36
  %i.acf = icmp eq i64 %i.ace, 3
  br i1 %i.acf, label %bb.gq, label %ELEM_REMOVE.exit847thread-pre-split

bb.gq:                                            ; preds = %bb.gp
  %i.acg = getelementptr i8, ptr %i.abw, i64 8
end_hunk_9
begin_hunk_10
  %i.ack = getelementptr i8, ptr %i.acj, i64 8
  store ptr %i.ach, ptr %i.ack, align 8, !tbaa !35
  %.not.i839 = icmp eq ptr %i.ach, null
  br i1 %.not.i839, label %ELEM_REMOVE.exit847thread-pre-split, label %ELEM_REMOVE.exit847.sink.split

.sink.split:                                      ; preds = %bb.ci, %bb.gm
  store i32 19, ptr %i.a, align 8, !tbaa !65
  br label %bb.gr

bb.gr:                                            ; preds = %.sink.split, %.thread1001
  %i.acl = load ptr, ptr %i.b, align 8, !tbaa !69
  %i.acm = load i64, ptr %i.acl, align 8, !tbaa !36 ; 3 uses
  %i.acn = icmp eq i64 %i.acm, 0
  %i.aco = and i64 %i.acm, 7
  %i.acp = icmp ne i64 %i.aco, 0
  %i.acq = or i1 %i.acn, %i.acp
  br i1 %i.acq, label %ELEM_REMOVE.exit847thread-pre-split, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.gr
  %i.acr = inttoptr i64 %i.acm to ptr
  %i.acs = load i64, ptr %i.acr, align 8, !tbaa !75
  %i.act = and i64 %i.acs, 31
  %i.acu = icmp eq i64 %i.act, 5
  br i1 %i.acu, label %bb.gs, label %ELEM_REMOVE.exit847thread-pre-split

bb.gs:                                            ; preds = %.thread1001, %.thread1001, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.acv = load ptr, ptr %i.d, align 8, !tbaa !68 ; 8 uses
  %.not620 = icmp eq ptr %i.acv, null
  br i1 %.not620, label %ELEM_REMOVE.exit847thread-pre-split, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.acw = load i32, ptr %i.acv, align 8, !tbaa !64
  %i.acx = icmp eq i32 %i.acw, 2
  br i1 %i.acx, label %bb.gu, label %ELEM_REMOVE.exit847thread-pre-split

bb.gu:                                            ; preds = %bb.gt
  %i.acy = getelementptr i8, ptr %i.acv, i64 24
end_hunk_10
begin_hunk_11
  %i.adu = getelementptr i8, ptr %i.adt, i64 8
  store ptr %i.ads, ptr %i.adu, align 8, !tbaa !35
  %.not.i843 = icmp eq ptr %i.ads, null
  br i1 %.not.i843, label %ELEM_REMOVE.exit847thread-pre-split, label %bb.gz

bb.gz:                                            ; preds = %ELEM_REMOVE.exit842
  %i.adv = getelementptr i8, ptr %i.ads, i64 16
end_hunk_11
begin_hunk_12
  %.pr1007.ph = phi ptr [ %i.acv, %bb.gu ], [ %i.acv, %bb.gv ], [ %i.ads, %bb.gz ] ; 3 uses
  %.pr1012 = load i32, ptr %.pr1007.ph, align 8, !tbaa !64
  %i.adw = icmp eq i32 %.pr1012, 2
  br i1 %i.adw, label %bb.hb, label %ELEM_REMOVE.exit847thread-pre-split

bb.hb:                                            ; preds = %bb.ha
  %i.adx = getelementptr i8, ptr %.pr1007.ph, i64 24
  %i.ady = load i32, ptr %i.adx, align 8, !tbaa !65
  %i.adz = icmp eq i32 %i.ady, 25
  br i1 %i.adz, label %bb.hc, label %ELEM_REMOVE.exit847thread-pre-split

bb.hc:                                            ; preds = %bb.hb
  %i.aea = getelementptr i8, ptr %.pr1007.ph, i64 40
end_hunk_12
begin_hunk_13
  %i.aec = getelementptr i8, ptr %i.aeb, i64 8
  %i.aed = load i64, ptr %i.aec, align 8, !tbaa !36
  %i.aee = icmp eq i64 %i.aed, 3
  br i1 %i.aee, label %bb.hd, label %ELEM_REMOVE.exit847thread-pre-split

bb.hd:                                            ; preds = %bb.hc
  %i.aef = load ptr, ptr %i.b, align 8, !tbaa !69
end_hunk_13
begin_hunk_14
  %i.afj = getelementptr i8, ptr %i.afi, i64 8
  store ptr %i.afg, ptr %i.afj, align 8, !tbaa !35
  %.not.i846 = icmp eq ptr %i.afg, null
  br i1 %.not.i846, label %ELEM_REMOVE.exit847thread-pre-split, label %ELEM_REMOVE.exit847.sink.split

ELEM_REMOVE.exit847.sink.split:                   ; preds = %rb_obj_write.exit, %bb.gq
  %.sink1346 = phi ptr [ %i.ach, %bb.gq ], [ %i.afg, %rb_obj_write.exit ]
  %.sink1344 = phi ptr [ %i.acj, %bb.gq ], [ %i.afi, %rb_obj_write.exit ]
  %i.afk = getelementptr i8, ptr %.sink1346, i64 16
  store ptr %.sink1344, ptr %i.afk, align 8, !tbaa !34
  br label %ELEM_REMOVE.exit847thread-pre-split

ELEM_REMOVE.exit847thread-pre-split:              ; preds = %ELEM_REMOVE.exit847.sink.split, %ELEM_REMOVE.exit842, %bb.gt, %bb.gs, %bb.gr, %bb.gq, %bb.gp, %bb.go, %bb.gn, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.hb, %bb.ha, %bb.hc, %rb_obj_write.exit
  %.pr1015 = load i32, ptr %i.a, align 8, !tbaa !65
  br label %ELEM_REMOVE.exit847

ELEM_REMOVE.exit847:                              ; preds = %.thread1001, %ELEM_REMOVE.exit847thread-pre-split
  %4 = phi i32 [ %.pr1015, %ELEM_REMOVE.exit847thread-pre-split ], [ %.pr1003, %.thread1001 ]
  %i.afl = icmp eq i32 %4, 23
  br i1 %i.afl, label %bb.hh, label %ELEM_REMOVE.exit873

bb.hh:                                            ; preds = %ELEM_REMOVE.exit847
end_hunk_14
begin_hunk_15
  store ptr %i.aje, ptr %i.ajg, align 8, !tbaa !34
  br label %ELEM_REMOVE.exit873

ELEM_REMOVE.exit873:                              ; preds = %.lr.ph.i851, %bb.gm, %bb.gl, %.preheader1073, %.preheader1072, %bb.gg, %bb.gh, %bb.hh, %bb.hz, %bb.hy, %get_next_insn.exit871, %bb.hn, %get_destination_insn.exit859, %ELEM_REMOVE.exit847
  %.not624 = icmp eq i32 %2, 0
  br i1 %.not624, label %rb_obj_written.exit888thread-pre-split, label %bb.ia

end_hunk_15
begin_hunk_16
    i8 70, label %bb.v
    i8 73, label %bb.r
    i8 67, label %bb.ba
    i8 65, label %ISEQ_IS_ENTRY_START.exit.i.i
    i8 84, label %bb.p
    i8 74, label %bb.q
  ]

bb.i:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i
end_hunk_16
