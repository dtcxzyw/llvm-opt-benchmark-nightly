Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/chan?download=true
inline.NumInlined: 217
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@ieee80211_chanctx_num_reserved:bb.a

ieee80211_chanctx_user_iter_next.exit37:          ; preds = %ieee80211_chanctx_user_iter_next.exit37.backedge, %.lr.ph
  %.096 = phi i32 [ 0, %.lr.ph ], [ %i.cd, %ieee80211_chanctx_user_iter_next.exit37.backedge ]
  %.sroa.5243.095 = phi i32 [ 2, %.lr.ph ], [ %.sroa.5243.095.be, %ieee80211_chanctx_user_iter_next.exit37.backedge ]
  %.sroa.38.093 = phi i32 [ %i.cb, %.lr.ph ], [ %.sroa.38.093.be, %ieee80211_chanctx_user_iter_next.exit37.backedge ]
  %.sroa.32.092 = phi i32 [ 0, %.lr.ph ], [ %.sroa.32.092.be, %ieee80211_chanctx_user_iter_next.exit37.backedge ]
  %.sroa.22.091 = phi ptr [ %.lcssa129, %.lr.ph ], [ %.sroa.22.091.be, %ieee80211_chanctx_user_iter_next.exit37.backedge ]
  %.sroa.10.090 = phi ptr [ %.sroa.10.1, %.lr.ph ], [ %.sroa.10.4, %ieee80211_chanctx_user_iter_next.exit37.backedge ]
  %i.cd = add i32 %.096, 1                        ; 3 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %ieee80211_chanctx_user_iter_next.exit37
  %.sroa.10.4 = phi ptr [ %.sroa.10.090, %ieee80211_chanctx_user_iter_next.exit37 ], [ %.sroa.10.5, %bb.m ] ; 5 uses
  %.sroa.22.3 = phi ptr [ %.sroa.22.091, %ieee80211_chanctx_user_iter_next.exit37 ], [ null, %bb.m ] ; 2 uses
  %.sroa.32.3 = phi i32 [ %.sroa.32.092, %ieee80211_chanctx_user_iter_next.exit37 ], [ 0, %bb.m ] ; 3 uses
  %.sroa.38.3 = phi i32 [ %.sroa.38.093, %ieee80211_chanctx_user_iter_next.exit37 ], [ %i.df, %bb.m ] ; 2 uses
  %.sroa.5243.6 = phi i32 [ %.sroa.5243.095, %ieee80211_chanctx_user_iter_next.exit37 ], [ 0, %bb.m ] ; 2 uses
  %i.ce = icmp eq i32 %.sroa.38.3, 12
  br i1 %i.ce, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.loopexit
  %i.cf = icmp ult i32 %.sroa.32.3, 3
  br i1 %i.cf, label %.lr.ph.i.i31, label %ieee80211_chanctx_user_iter_next_nan_channel.exit.i6

.lr.ph.i.i31:                                     ; preds = %bb.d
  %i.cg = getelementptr i8, ptr %.sroa.10.4, i64 5160
  %i.ch = zext nneg i32 %.sroa.32.3 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i.i31
  %indvars.iv.i.i32 = phi i64 [ %i.ch, %.lr.ph.i.i31 ], [ %indvars.iv.next.i.i35, %bb.g ] ; 3 uses
  %i.ci = getelementptr [128 x i8], ptr %i.cg, i64 %indvars.iv.i.i32 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8
  %.not.i.i33 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i33, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ck = getelementptr i8, ptr %i.ci, i64 112
  %i.cl = load ptr, ptr %i.ck, align 8
  %.not23.i.i34 = icmp eq ptr %i.cl, %i.cc
  br i1 %.not23.i.i34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.i.i35 = add nuw nsw i64 %indvars.iv.i.i32, 1 ; 2 uses
  %i.cm = and i64 %indvars.iv.next.i.i35, 4294967295
  %exitcond.not.i.i36 = icmp eq i64 %i.cm, 3
  br i1 %exitcond.not.i.i36, label %ieee80211_chanctx_user_iter_next_nan_channel.exit.i6, label %bb.e, !llvm.loop !1

bb.h:                                             ; preds = %bb.f
  %i.cn = trunc nuw nsw i64 %indvars.iv.i.i32 to i32
  %i.co = add nuw nsw i32 %i.cn, 1
  br label %ieee80211_chanctx_user_iter_next.exit37.backedge

ieee80211_chanctx_user_iter_next.exit37.backedge: ; preds = %.thread.us.i.i29, %bb.h
  %.sroa.5243.095.be = phi i32 [ %.sroa.5243.6, %bb.h ], [ 2, %.thread.us.i.i29 ]
  %.sroa.38.093.be = phi i32 [ 12, %bb.h ], [ %.sroa.38.3, %.thread.us.i.i29 ]
  %.sroa.32.092.be = phi i32 [ %i.co, %bb.h ], [ %.sroa.32.3, %.thread.us.i.i29 ]
  %.sroa.22.091.be = phi ptr [ null, %bb.h ], [ %i.cw, %.thread.us.i.i29 ]
  br label %ieee80211_chanctx_user_iter_next.exit37

bb.i:                                             ; preds = %.loopexit
  %.not.i39.i5 = icmp eq ptr %.sroa.22.3, null
  br i1 %.not.i39.i5, label %.lr.ph.i40.i23, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = getelementptr i8, ptr %.sroa.22.3, i64 8
  %i.cq = load i32, ptr %i.cp, align 8            ; 2 uses
  %i.cr = icmp ult i32 %i.cq, 15
  br i1 %i.cr, label %.lr.ph.i40.i23, label %ieee80211_chanctx_user_iter_next_nan_channel.exit.i6

.lr.ph.i40.i23:                                   ; preds = %bb.j, %bb.i
  %i.cs = phi i32 [ %i.cq, %bb.j ], [ 0, %bb.i ]
  %i.ct = getelementptr i8, ptr %.sroa.10.4, i64 4920
  %i.cu = zext nneg i32 %i.cs to i64
  br label %.lr.ph.split.us.split.i.i24

.lr.ph.split.us.split.i.i24:                      ; preds = %bb.l, %.lr.ph.i40.i23
  %.sroa.5243.8 = phi i32 [ %.sroa.5243.6, %.lr.ph.i40.i23 ], [ %.sroa.5243.9, %bb.l ] ; 2 uses
  %indvars.iv84.i.i25 = phi i64 [ %i.cu, %.lr.ph.i40.i23 ], [ %indvars.iv.next85.i.i27, %bb.l ] ; 2 uses
  %i.cv = getelementptr [8 x i8], ptr %i.ct, i64 %indvars.iv84.i.i25
  %i.cw = load ptr, ptr %i.cv, align 8            ; 3 uses
  %.not43.us.i.i26 = icmp eq ptr %i.cw, null
  br i1 %.not43.us.i.i26, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.us.split.i.i24
  %i.cx = icmp eq i32 %.sroa.5243.8, 0
  br i1 %i.cx, label %.thread.us.i.i29, label %bb.l

.thread.us.i.i29:                                 ; preds = %bb.k
  %i.cy = getelementptr i8, ptr %i.cw, i64 344
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = icmp eq ptr %i.cz, %1
  br i1 %i.da, label %ieee80211_chanctx_user_iter_next.exit37.backedge, label %bb.l

bb.l:                                             ; preds = %.thread.us.i.i29, %bb.k, %.lr.ph.split.us.split.i.i24
  %.sroa.5243.9 = phi i32 [ %.sroa.5243.8, %.lr.ph.split.us.split.i.i24 ], [ 0, %bb.k ], [ 0, %.thread.us.i.i29 ]
  %indvars.iv.next85.i.i27 = add nuw nsw i64 %indvars.iv84.i.i25, 1 ; 2 uses
  %i.db = and i64 %indvars.iv.next85.i.i27, 4294967295
  %exitcond88.not.i.i28 = icmp eq i64 %i.db, 15
  br i1 %exitcond88.not.i.i28, label %ieee80211_chanctx_user_iter_next_nan_channel.exit.i6, label %.lr.ph.split.us.split.i.i24, !llvm.loop !2

ieee80211_chanctx_user_iter_next_nan_channel.exit.i6: ; preds = %bb.l, %bb.g, %bb.j, %bb.d
  %.not.i9 = icmp eq ptr %.sroa.10.4, null
  %spec.select.i10 = select i1 %.not.i9, ptr %i.a, ptr %.sroa.10.4
  %storemerge61.i11 = load ptr, ptr %spec.select.i10, align 8 ; 2 uses
  %.not4562.i12 = icmp eq ptr %storemerge61.i11, %i.a
  br i1 %.not4562.i12, label %._crit_edge, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %ieee80211_chanctx_user_iter_next_nan_channel.exit.i6, %bb.n
  %.sroa.10.5 = phi ptr [ %storemerge.i19, %bb.n ], [ %storemerge61.i11, %ieee80211_chanctx_user_iter_next_nan_channel.exit.i6 ] ; 4 uses
  %i.dc = getelementptr i8, ptr %.sroa.10.5, i64 1872
  %i.dd = load volatile i64, ptr %i.dc, align 8
  %.in.i.i18 = trunc i64 %i.dd to i1
  br i1 %.in.i.i18, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.i13
  %i.de = getelementptr i8, ptr %.sroa.10.5, i64 5072
  %i.df = load i32, ptr %i.de, align 8            ; 2 uses
  switch i32 %i.df, label %.loopexit [
    i32 12, label %bb.n
    i32 4, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %.lr.ph.i13
  %storemerge.i19 = load ptr, ptr %.sroa.10.5, align 8 ; 2 uses
  %.not45.i20 = icmp eq ptr %storemerge.i19, %i.a
  br i1 %.not45.i20, label %._crit_edge, label %.lr.ph.i13, !llvm.loop !0

._crit_edge:                                      ; preds = %ieee80211_chanctx_user_iter_next_nan_channel.exit.i.loopexit, %bb.c, %ieee80211_chanctx_user_iter_next_nan_channel.exit.i6, %bb.n, %bb.a
  %.0.lcssa = phi i32 [ %i.cd, %ieee80211_chanctx_user_iter_next_nan_channel.exit.i6 ], [ 0, %bb.a ], [ %i.cd, %bb.n ], [ 0, %bb.c ], [ 0, %ieee80211_chanctx_user_iter_next_nan_channel.exit.i.loopexit ]
  ret i32 %.0.lcssa
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @ieee80211_assign_link_chanctx(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #4 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 7 uses
  %i.b = getelementptr i8, ptr %i.a, i64 1856
  %i.c = load ptr, ptr %i.b, align 8              ; 22 uses
  %i.d = getelementptr i8, ptr %i.a, i64 5072     ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = icmp eq i32 %i.e, 12
  br i1 %i.f, label %bb.b, label %.critedge, !prof !39

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "2257: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2257b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2257) #12, !srcloc !125
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 1190, i32 2305, i64 16) #12, !srcloc !126
  tail call void asm sideeffect "2258: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2258b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2258) #12, !srcloc !127
  br label %bb.bc

.critedge:                                        ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 1056       ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 1136
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not105 = icmp eq ptr %i.j, null
  br i1 %.not105, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.k = getelementptr i8, ptr %i.c, i64 1486
  %i.l = load i8, ptr %i.k, align 2, !range !22, !noundef !23
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.j, i64 -168     ; 2 uses
  tail call void @drv_unassign_vif_chanctx(ptr noundef %i.c, ptr noundef %i.a, ptr noundef %i.h, ptr noundef %i.n) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.critedge
  %.087 = phi ptr [ null, %bb.c ], [ %i.n, %bb.d ], [ null, %.critedge ] ; 10 uses
  %.086 = phi ptr [ %i.j, %bb.c ], [ null, %bb.d ], [ null, %.critedge ] ; 2 uses
  %.not106 = icmp eq ptr %1, null                 ; 2 uses
  br i1 %.not106, label %.critedge118, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %1, i64 168        ; 4 uses
  %.val.i = load ptr, ptr %i.o, align 8
  %.val.val.i = load i32, ptr %.val.i, align 8
  %i.p = icmp eq i32 %.val.val.i, 4
  br i1 %i.p, label %_ieee80211_recalc_chanctx_min_def.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call fastcc i32 @__ieee80211_recalc_chanctx_min_def(ptr noundef %i.c, ptr noundef nonnull %1, ptr noundef readonly %0, i1 noundef zeroext false) #13, !srcloc !27 ; 2 uses
  tail call fastcc void @ieee80211_chan_bw_change(ptr noundef %i.c, ptr noundef nonnull %1, i1 noundef zeroext false, i1 noundef zeroext true) #13, !srcloc !28
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @drv_change_chanctx(ptr noundef %i.c, ptr noundef nonnull %1, i32 noundef %i.q) #13, !srcloc !29
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call fastcc void @ieee80211_chan_bw_change(ptr noundef %i.c, ptr noundef nonnull %1, i1 noundef zeroext false, i1 noundef zeroext false) #13, !srcloc !30
  br label %_ieee80211_recalc_chanctx_min_def.exit

_ieee80211_recalc_chanctx_min_def.exit:           ; preds = %bb.f, %bb.i
  %i.r = load ptr, ptr %i.g, align 8
  %i.s = tail call i32 @drv_assign_vif_chanctx(ptr noundef %i.c, ptr noundef %i.a, ptr noundef %i.r, ptr noundef nonnull %1) #14 ; 2 uses
  %i.t = icmp eq i32 %i.s, 0                      ; 2 uses
  %or.cond.not = select i1 %2, i1 true, i1 %i.t
  %or.cond.not.not = xor i1 %2, true
  %brmerge = select i1 %or.cond.not.not, i1 true, i1 %i.t
  %.mux = select i1 %2, i32 0, i32 %i.s
  %.086.mux = select i1 %or.cond.not, ptr %i.o, ptr %.086
  br i1 %brmerge, label %.critedge118, label %bb.j

bb.j:                                             ; preds = %_ieee80211_recalc_chanctx_min_def.exit
  %i.u = getelementptr i8, ptr %i.c, i64 1486
  %i.v = load i8, ptr %i.u, align 2, !range !22, !noundef !23
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %.critedge118, label %bb.k, !prof !31

bb.k:                                             ; preds = %bb.j
  tail call void asm sideeffect "2259: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2259b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2259) #12, !srcloc !128
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, ptr @.str.1, i32 1210, i32 2307, i64 16) #12, !srcloc !129
  tail call void asm sideeffect "2260: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2260b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2260) #12, !srcloc !130
  br label %.critedge118

.critedge118:                                     ; preds = %_ieee80211_recalc_chanctx_min_def.exit, %bb.j, %bb.k, %bb.e
  %.090 = phi i32 [ %.mux, %_ieee80211_recalc_chanctx_min_def.exit ], [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %bb.k ]
  %.1 = phi ptr [ %.086.mux, %_ieee80211_recalc_chanctx_min_def.exit ], [ %.086, %bb.e ], [ %i.o, %bb.j ], [ %i.o, %bb.k ] ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !131
  %i.x = load ptr, ptr %i.g, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 1136
  store volatile ptr %.1, ptr %i.y, align 8
  %.not = icmp eq ptr %.087, null
  br i1 %.not, label %ieee80211_recalc_chanctx_min_def.exit, label %bb.l

bb.l:                                             ; preds = %.critedge118
  %i.z = tail call i32 @ieee80211_chanctx_num_assigned(ptr noundef %i.c, ptr noundef nonnull %.087) #13
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.m, label %ieee80211_recalc_chanctx_min_def.exit

bb.m:                                             ; preds = %bb.l
  tail call void @ieee80211_recalc_chanctx_chantype(ptr noundef %i.c, ptr noundef nonnull %.087) #13
  tail call void @ieee80211_recalc_smps_chanctx(ptr noundef %i.c, ptr noundef nonnull %.087) #13
  tail call fastcc void @ieee80211_recalc_radar_chanctx(ptr noundef %i.c, ptr noundef nonnull %.087) #13, !srcloc !132
  %i.ab = getelementptr i8, ptr %.087, i64 168
  %.val.i.i = load ptr, ptr %i.ab, align 8
  %.val.val.i.i = load i32, ptr %.val.i.i, align 8
  %i.ac = icmp eq i32 %.val.val.i.i, 4
  br i1 %i.ac, label %ieee80211_recalc_chanctx_min_def.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = tail call fastcc i32 @__ieee80211_recalc_chanctx_min_def(ptr noundef %i.c, ptr noundef nonnull %.087, ptr noundef null, i1 noundef zeroext false) #13, !srcloc !27 ; 2 uses
  tail call fastcc void @ieee80211_chan_bw_change(ptr noundef %i.c, ptr noundef nonnull %.087, i1 noundef zeroext false, i1 noundef zeroext true) #13, !srcloc !28
  %.not.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @drv_change_chanctx(ptr noundef %i.c, ptr noundef nonnull %.087, i32 noundef %i.ad) #13, !srcloc !29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call fastcc void @ieee80211_chan_bw_change(ptr noundef %i.c, ptr noundef nonnull %.087, i1 noundef zeroext false, i1 noundef zeroext false) #13, !srcloc !30
  br label %ieee80211_recalc_chanctx_min_def.exit

ieee80211_recalc_chanctx_min_def.exit:            ; preds = %bb.p, %bb.m, %bb.l, %.critedge118
  br i1 %.not106, label %ieee80211_recalc_chanctx_min_def.exit122, label %bb.q

bb.q:                                             ; preds = %ieee80211_recalc_chanctx_min_def.exit
  %i.ae = tail call i32 @ieee80211_chanctx_num_assigned(ptr noundef %i.c, ptr noundef nonnull %1) #13
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %bb.r, label %ieee80211_recalc_chanctx_min_def.exit122

bb.r:                                             ; preds = %bb.q
  tail call void @ieee80211_recalc_txpower(ptr noundef %0, i1 noundef zeroext false) #14
  %i.ag = getelementptr i8, ptr %1, i64 168
  %.val.i.i119 = load ptr, ptr %i.ag, align 8
  %.val.val.i.i120 = load i32, ptr %.val.i.i119, align 8
  %i.ah = icmp eq i32 %.val.val.i.i120, 4
  br i1 %i.ah, label %ieee80211_recalc_chanctx_min_def.exit122, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ai = tail call fastcc i32 @__ieee80211_recalc_chanctx_min_def(ptr noundef %i.c, ptr noundef nonnull %1, ptr noundef null, i1 noundef zeroext false) #13, !srcloc !27 ; 2 uses
  tail call fastcc void @ieee80211_chan_bw_change(ptr noundef %i.c, ptr noundef nonnull %1, i1 noundef zeroext false, i1 noundef zeroext true) #13, !srcloc !28
  %.not.i.i121 = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i121, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @drv_change_chanctx(ptr noundef %i.c, ptr noundef nonnull %1, i32 noundef %i.ai) #13, !srcloc !29
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call fastcc void @ieee80211_chan_bw_change(ptr noundef %i.c, ptr noundef nonnull %1, i1 noundef zeroext false, i1 noundef zeroext false) #13, !srcloc !30
  br label %ieee80211_recalc_chanctx_min_def.exit122

ieee80211_recalc_chanctx_min_def.exit122:         ; preds = %bb.u, %bb.r, %bb.q, %ieee80211_recalc_chanctx_min_def.exit
  %.not108 = icmp eq ptr %.1, null
  br i1 %.not108, label %.preheader127, label %.loopexit124

.preheader127:                                    ; preds = %ieee80211_recalc_chanctx_min_def.exit122
  %i.aj = getelementptr i8, ptr %i.c, i64 4632    ; 3 uses
  %.196130 = load ptr, ptr %i.aj, align 8         ; 2 uses
  %.not123131 = icmp eq ptr %.196130, %i.aj
  br i1 %.not123131, label %.loopexit124, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader127, %.loopexit
  %.196134 = phi ptr [ %.196, %.loopexit ], [ %.196130, %.preheader127 ] ; 17 uses
  %.2133 = phi i8 [ %.3, %.loopexit ], [ 1, %.preheader127 ] ; 3 uses
  %.192132 = phi i32 [ %.394, %.loopexit ], [ 15, %.preheader127 ] ; 2 uses
  %i.ak = icmp eq i32 %.192132, 15
  br i1 %i.ak, label %ieee80211_sdata_running.exit, label %.loopexit

ieee80211_sdata_running.exit:                     ; preds = %.lr.ph
  %i.al = getelementptr i8, ptr %.196134, i64 1872
  %i.am = load volatile i64, ptr %i.al, align 8
  %.in.i = trunc i64 %i.am to i1
  br i1 %.in.i, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %ieee80211_sdata_running.exit
  %i.an = getelementptr i8, ptr %.196134, i64 4920
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not112 = icmp eq ptr %i.ao, null
  br i1 %.not112, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.preheader
  %i.ap = getelementptr i8, ptr %i.ao, i64 1056
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 1136
  %i.as = load volatile ptr, ptr %i.ar, align 8
  %.not113 = icmp eq ptr %i.as, null
  br i1 %.not113, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %.preheader, %bb.v
  %i.at = getelementptr i8, ptr %.196134, i64 4928
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not112.1 = icmp eq ptr %i.au, null
  br i1 %.not112.1, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.av = getelementptr i8, ptr %i.au, i64 1056
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr i8, ptr %i.aw, i64 1136
  %i.ay = load volatile ptr, ptr %i.ax, align 8
  %.not113.1 = icmp eq ptr %i.ay, null
  br i1 %.not113.1, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.az = getelementptr i8, ptr %.196134, i64 4936
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not112.2 = icmp eq ptr %i.ba, null
  br i1 %.not112.2, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bb = getelementptr i8, ptr %i.ba, i64 1056
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr i8, ptr %i.bc, i64 1136
  %i.be = load volatile ptr, ptr %i.bd, align 8
  %.not113.2 = icmp eq ptr %i.be, null
  br i1 %.not113.2, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.bf = getelementptr i8, ptr %.196134, i64 4944
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not112.3 = icmp eq ptr %i.bg, null
  br i1 %.not112.3, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bh = getelementptr i8, ptr %i.bg, i64 1056
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = getelementptr i8, ptr %i.bi, i64 1136
  %i.bk = load volatile ptr, ptr %i.bj, align 8
  %.not113.3 = icmp eq ptr %i.bk, null
  br i1 %.not113.3, label %bb.ac, label %.loopexit

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bl = getelementptr i8, ptr %.196134, i64 4952
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not112.4 = icmp eq ptr %i.bm, null
  br i1 %.not112.4, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bn = getelementptr i8, ptr %i.bm, i64 1056
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr i8, ptr %i.bo, i64 1136
  %i.bq = load volatile ptr, ptr %i.bp, align 8
  %.not113.4 = icmp eq ptr %i.bq, null
  br i1 %.not113.4, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.br = getelementptr i8, ptr %.196134, i64 4960
  %i.bs = load ptr, ptr %i.br, align 8            ; 2 uses
  %.not112.5 = icmp eq ptr %i.bs, null
  br i1 %.not112.5, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bt = getelementptr i8, ptr %i.bs, i64 1056
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = getelementptr i8, ptr %i.bu, i64 1136
  %i.bw = load volatile ptr, ptr %i.bv, align 8
  %.not113.5 = icmp eq ptr %i.bw, null
  br i1 %.not113.5, label %bb.ag, label %.loopexit

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.bx = getelementptr i8, ptr %.196134, i64 4968
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %.not112.6 = icmp eq ptr %i.by, null
  br i1 %.not112.6, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
end_hunk_0
