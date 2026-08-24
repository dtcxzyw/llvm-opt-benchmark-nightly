Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/mlme?download=true
inline.NumInlined: 873
inline.NumDeleted: 250
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumUnrolled: 51
begin_hunk_0_@ieee80211_rearrange_tpe:bb.a
  %.not = icmp ult i32 %.off, 39
  br i1 %.not, label %bb.b, label %ieee80211_chandef_num_subchans.exit.thread

ieee80211_chandef_num_subchans.exit.thread:       ; preds = %bb.a, %ieee80211_chandef_num_subchans.exit
  %i.d = getelementptr i8, ptr %2, i64 16         ; 7 uses
  %.val = load i32, ptr %i.d, align 8             ; 2 uses
  %i.e = icmp eq i32 %.val, 4
  br i1 %i.e, label %.critedge.preheader, label %ieee80211_chandef_num_subchans.exit32

.critedge.preheader:                              ; preds = %ieee80211_chandef_num_subchans.exit32..critedge.preheader_crit_edge, %ieee80211_chandef_num_subchans.exit.thread
  %.val29 = phi i32 [ %.val29.pre, %ieee80211_chandef_num_subchans.exit32..critedge.preheader_crit_edge ], [ 4, %ieee80211_chandef_num_subchans.exit.thread ]
  %i.f = getelementptr i8, ptr %0, i64 28
  %i.g = getelementptr i8, ptr %0, i64 66
  tail call fastcc void @ieee80211_rearrange_tpe_psd(ptr noundef %i.f, ptr noundef %1, i32 %.val29) #22
  %.val28 = load i32, ptr %i.d, align 8
  tail call fastcc void @ieee80211_rearrange_tpe_psd(ptr noundef %i.g, ptr noundef %1, i32 %.val28) #22
  %.val30 = load i32, ptr %i.d, align 8
  switch i32 %.val30, label %bb.g [
    i32 1, label %ieee80211_chandef_num_widths.exit
    i32 0, label %ieee80211_chandef_num_widths.exit
    i32 2, label %bb.c
    i32 4, label %bb.d
    i32 3, label %bb.d
    i32 5, label %bb.e
    i32 13, label %bb.f
  ]

ieee80211_chandef_num_subchans.exit32:            ; preds = %ieee80211_chandef_num_subchans.exit.thread
  %i.h = tail call i32 @nl80211_chan_width_to_mhz(i32 noundef %.val) #19
  %.off36 = add i32 %i.h, 19
  %i.i = icmp ult i32 %.off36, 39
  br i1 %i.i, label %bb.b, label %ieee80211_chandef_num_subchans.exit32..critedge.preheader_crit_edge

ieee80211_chandef_num_subchans.exit32..critedge.preheader_crit_edge: ; preds = %ieee80211_chandef_num_subchans.exit32
  %.val29.pre = load i32, ptr %i.d, align 8
  br label %.critedge.preheader

bb.b:                                             ; preds = %ieee80211_chandef_num_subchans.exit32, %ieee80211_chandef_num_subchans.exit
  tail call void @ieee80211_clear_tpe(ptr noundef %0) #19
  br label %.loopexit

bb.c:                                             ; preds = %.critedge.preheader
  br label %ieee80211_chandef_num_widths.exit

bb.d:                                             ; preds = %.critedge.preheader, %.critedge.preheader
  br label %ieee80211_chandef_num_widths.exit

bb.e:                                             ; preds = %.critedge.preheader
  br label %ieee80211_chandef_num_widths.exit

bb.f:                                             ; preds = %.critedge.preheader
  br label %ieee80211_chandef_num_widths.exit

bb.g:                                             ; preds = %.critedge.preheader
  tail call void asm sideeffect "2211: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2211b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2211) #20, !srcloc !416
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 991, i32 2305, i64 16) #20, !srcloc !417
  tail call void asm sideeffect "2212: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2212b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2212) #20, !srcloc !418
  br label %ieee80211_chandef_num_widths.exit

ieee80211_chandef_num_widths.exit:                ; preds = %.critedge.preheader, %.critedge.preheader, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i33 = phi i32 [ 0, %bb.g ], [ 5, %bb.f ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 1, %.critedge.preheader ], [ 1, %.critedge.preheader ] ; 4 uses
  %i.j = getelementptr i8, ptr %0, i64 6          ; 2 uses
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = icmp samesign ult i32 %.0.i33, %i.l
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %ieee80211_chandef_num_widths.exit
  %i.n = trunc nuw nsw i32 %.0.i33 to i8
  store i8 %i.n, ptr %i.j, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %ieee80211_chandef_num_widths.exit
  %i.o = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i32
  %i.r = icmp samesign ult i32 %.0.i33, %i.q
  br i1 %i.r, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.s = trunc nuw nsw i32 %.0.i33 to i8
  store i8 %i.s, ptr %i.o, align 1
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %bb.i
  %i.t = getelementptr i8, ptr %0, i64 47
  %.val29.1 = load i32, ptr %i.d, align 8
  tail call fastcc void @ieee80211_rearrange_tpe_psd(ptr noundef %i.t, ptr noundef %1, i32 %.val29.1) #22
  %i.u = getelementptr i8, ptr %0, i64 85
  %.val28.1 = load i32, ptr %i.d, align 8
  tail call fastcc void @ieee80211_rearrange_tpe_psd(ptr noundef %i.u, ptr noundef %1, i32 %.val28.1) #22
  %.val30.1 = load i32, ptr %i.d, align 8
  switch i32 %.val30.1, label %bb.o [
    i32 1, label %ieee80211_chandef_num_widths.exit.1
    i32 0, label %ieee80211_chandef_num_widths.exit.1
    i32 2, label %bb.n
    i32 4, label %bb.m
    i32 3, label %bb.m
    i32 5, label %bb.l
    i32 13, label %bb.k
  ]

bb.k:                                             ; preds = %.critedge
  br label %ieee80211_chandef_num_widths.exit.1

bb.l:                                             ; preds = %.critedge
  br label %ieee80211_chandef_num_widths.exit.1

bb.m:                                             ; preds = %.critedge, %.critedge
  br label %ieee80211_chandef_num_widths.exit.1

bb.n:                                             ; preds = %.critedge
  br label %ieee80211_chandef_num_widths.exit.1

bb.o:                                             ; preds = %.critedge
  tail call void asm sideeffect "2211: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2211b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2211) #20, !srcloc !416
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 991, i32 2305, i64 16) #20, !srcloc !417
  tail call void asm sideeffect "2212: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2212b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2212) #20, !srcloc !418
  br label %ieee80211_chandef_num_widths.exit.1

ieee80211_chandef_num_widths.exit.1:              ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %.critedge, %.critedge
  %.0.i33.1 = phi i32 [ 0, %bb.o ], [ 5, %bb.k ], [ 2, %bb.n ], [ 3, %bb.m ], [ 4, %bb.l ], [ 1, %.critedge ], [ 1, %.critedge ] ; 4 uses
  %i.v = getelementptr i8, ptr %0, i64 13         ; 2 uses
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = icmp samesign ult i32 %.0.i33.1, %i.x
  br i1 %i.y, label %bb.p, label %bb.q

bb.p:                                             ; preds = %ieee80211_chandef_num_widths.exit.1
  %i.z = trunc nuw nsw i32 %.0.i33.1 to i8
  store i8 %i.z, ptr %i.v, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %ieee80211_chandef_num_widths.exit.1
  %i.aa = getelementptr i8, ptr %0, i64 27        ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = icmp samesign ult i32 %.0.i33.1, %i.ac
  br i1 %i.ad, label %bb.r, label %.loopexit

bb.r:                                             ; preds = %bb.q
  %i.ae = trunc nuw nsw i32 %.0.i33.1 to i8
  store i8 %i.ae, ptr %i.aa, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.r, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ieee80211_rearrange_tpe_psd(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %.16.val) unnamed_addr #0 align 16 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = icmp eq i32 %.16.val, 4
  br i1 %i.b, label %ieee80211_chandef_num_subchans.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @nl80211_chan_width_to_mhz(i32 noundef %.16.val) #19
  %i.d = sdiv i32 %i.c, 20
  br label %ieee80211_chandef_num_subchans.exit

ieee80211_chandef_num_subchans.exit:              ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.d, %bb.b ], [ 8, %bb.a ]   ; 4 uses
  %i.e = trunc i32 %.0.i to i8                    ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 16
  %.val = load i32, ptr %i.f, align 8             ; 2 uses
  %i.g = icmp eq i32 %.val, 4
  br i1 %i.g, label %ieee80211_chandef_num_subchans.exit43, label %bb.c

bb.c:                                             ; preds = %ieee80211_chandef_num_subchans.exit
  %i.h = tail call i32 @nl80211_chan_width_to_mhz(i32 noundef %.val) #19
  %i.i = sdiv i32 %i.h, 20
  %i.j = and i32 %i.i, 255
  br label %ieee80211_chandef_num_subchans.exit43

ieee80211_chandef_num_subchans.exit43:            ; preds = %ieee80211_chandef_num_subchans.exit, %bb.c
  %.0.i42 = phi i32 [ %i.j, %bb.c ], [ 8, %ieee80211_chandef_num_subchans.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !annotation !57
  %i.k = load i8, ptr %0, align 1, !range !28, !noundef !29
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.k

bb.d:                                             ; preds = %ieee80211_chandef_num_subchans.exit43
  %i.m = getelementptr i8, ptr %0, i64 18         ; 2 uses
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  %.not = icmp eq i8 %i.n, 0
  br i1 %.not, label %..loopexit_crit_edge, label %bb.e

..loopexit_crit_edge:                             ; preds = %bb.d
  %.pre = and i32 %.0.i, 255
  br label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.o = tail call fastcc i32 @ieee80211_calc_chandef_subchan_offset(ptr noundef %1, i8 noundef zeroext %i.n) #22, !srcloc !419
  %.not5 = icmp eq i32 %.0.i42, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.p = and i32 %i.o, 255                        ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 1
  %i.r = zext nneg i32 %i.p to i64                ; 2 uses
  %wide.trip.count = zext nneg i32 %.0.i42 to i64
  %i.s = load i8, ptr %i.m, align 1               ; 2 uses
  %i.t = zext i8 %i.s to i32
  %i.u = add nuw nsw i32 %i.p, %i.t
  %i.v = zext nneg i32 %i.u to i64
  %i.w = zext i8 %i.s to i64
  br label %bb.f

._crit_edge:                                      ; preds = %bb.i, %bb.e
  %i.x = getelementptr i8, ptr %0, i64 1          ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(16) %i.x, i8 127, i64 16, i1 false)
  %i.y = tail call fastcc i32 @ieee80211_calc_chandef_subchan_offset(ptr noundef %1, i8 noundef zeroext %i.e) #22, !srcloc !420
  %i.z = and i32 %.0.i, 255                       ; 2 uses
  %.not6 = icmp eq i32 %i.z, 0
  br i1 %.not6, label %.loopexit, label %.lr.ph4

.lr.ph4:                                          ; preds = %._crit_edge
  %i.aa = and i32 %i.y, 255
  %i.ab = zext nneg i32 %i.aa to i64
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.ab
  %.mask = and i32 %.0.i, 255
  %i.ac = zext nneg i32 %.mask to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %scevgep, i64 %i.ac, i1 false)
  br label %.loopexit

bb.f:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 6 uses
  %i.ad = icmp samesign ult i64 %indvars.iv, %i.r
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %2 = add nuw i64 %indvars.iv, %i.w
  %3 = and i64 %2, 4294967295
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %4 = icmp samesign ult i64 %indvars.iv, %i.v
  %5 = select i1 %4, i64 %i.r, i64 0
  %spec.select = sub nuw nsw i64 %indvars.iv, %5
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink = phi i64 [ %3, %bb.g ], [ %spec.select, %bb.h ]
  %6 = getelementptr i8, ptr %i.q, i64 %.sink
  %i.ae = load i8, ptr %6, align 1
  %i.af = getelementptr i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.ae, ptr %i.af, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !421

.loopexit:                                        ; preds = %..loopexit_crit_edge, %.lr.ph4, %._crit_edge
  %.pre-phi = phi i32 [ %.pre, %..loopexit_crit_edge ], [ %i.z, %.lr.ph4 ], [ 0, %._crit_edge ]
  %i.ag = getelementptr i8, ptr %0, i64 17        ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = icmp samesign ult i32 %.pre-phi, %i.ai
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit
  store i8 %i.e, ptr %i.ag, align 1
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %bb.j, %ieee80211_chandef_num_subchans.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @nl80211_chan_width_to_mhz(i32 noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @ieee80211_calc_chandef_subchan_offset(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %2 = alloca %struct.cfg80211_chan_def, align 8  ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %.val18 = load i32, ptr %i.a, align 8           ; 2 uses
  %i.b = icmp eq i32 %.val18, 4
  br i1 %i.b, label %ieee80211_chandef_num_subchans.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @nl80211_chan_width_to_mhz(i32 noundef %.val18) #19
  %i.d = sdiv i32 %i.c, 20
  br label %ieee80211_chandef_num_subchans.exit

ieee80211_chandef_num_subchans.exit:              ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.d, %bb.b ], [ 8, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef align 8 dereferenceable(48) %0, i64 48, i1 false)
  %i.e = zext i8 %1 to i32                        ; 2 uses
  %or.cond.not = icmp sgt i32 %.0.i, %i.e
  br i1 %or.cond.not, label %.preheader, label %bb.j

.preheader:                                       ; preds = %ieee80211_chandef_num_subchans.exit
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %ieee80211_chandef_num_subchans.exit22, %.preheader
  %.0.ph = phi i32 [ %i.r, %ieee80211_chandef_num_subchans.exit22 ], [ 0, %.preheader ] ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.e
  %.val17 = load i32, ptr %i.f, align 8           ; 2 uses
  %i.h = icmp eq i32 %.val17, 4
  br i1 %i.h, label %ieee80211_chandef_num_subchans.exit20, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = call i32 @nl80211_chan_width_to_mhz(i32 noundef %.val17) #19
  %i.j = sdiv i32 %i.i, 20
  br label %ieee80211_chandef_num_subchans.exit20

ieee80211_chandef_num_subchans.exit20:            ; preds = %bb.c, %bb.d
  %.0.i19 = phi i32 [ %i.j, %bb.d ], [ 8, %bb.c ]
  %i.k = icmp sgt i32 %.0.i19, %i.e
  br i1 %i.k, label %bb.e, label %bb.h

bb.e:                                             ; preds = %ieee80211_chandef_num_subchans.exit20
  %i.l = load i32, ptr %i.g, align 4
  call void @ieee80211_chandef_downgrade(ptr noundef nonnull %2, ptr noundef null) #19
  %i.m = load i32, ptr %i.g, align 4
  %i.n = icmp ult i32 %i.l, %i.m
  br i1 %i.n, label %bb.f, label %bb.c, !llvm.loop !422

bb.f:                                             ; preds = %bb.e
  %.val = load i32, ptr %i.f, align 8             ; 2 uses
  %i.o = icmp eq i32 %.val, 4
  br i1 %i.o, label %ieee80211_chandef_num_subchans.exit22, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call i32 @nl80211_chan_width_to_mhz(i32 noundef %.val) #19
  %i.q = sdiv i32 %i.p, 20
  br label %ieee80211_chandef_num_subchans.exit22

ieee80211_chandef_num_subchans.exit22:            ; preds = %bb.f, %bb.g
  %.0.i21 = phi i32 [ %i.q, %bb.g ], [ 8, %bb.f ]
  %i.r = add i32 %.0.i21, %.0.ph
  br label %.outer, !llvm.loop !422

bb.h:                                             ; preds = %ieee80211_chandef_num_subchans.exit20
  %i.s = load i32, ptr %i.a, align 8
  %i.t = icmp eq i32 %i.s, 4
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr i8, ptr %0, i64 24
  %i.v = load i32, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %0, i64 20
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp ult i32 %i.v, %i.x
  %i.z = add i32 %.0.ph, 4
  %spec.select = select i1 %i.y, i32 %i.z, i32 %.0.ph
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %ieee80211_chandef_num_subchans.exit
  %.014 = phi i32 [ %spec.select, %bb.i ], [ 0, %ieee80211_chandef_num_subchans.exit ], [ %.0.ph, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret i32 %.014
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_chandef_downgrade(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @__kmalloc_cache_noprof(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc_noprof(i64 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @sta_info_alloc_with_link(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @sta_info_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @sta_info_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -22, 1) i32 @ieee80211_mgd_setup_link_sta(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) initializes((0, 6)) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 1856
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %3, i64 84         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(6) %2, ptr noundef align 4 dereferenceable(6) %i.d, i64 6, i1 false)
  %i.e = getelementptr i8, ptr %2, i64 936        ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(6) %i.g, ptr noundef align 4 dereferenceable(6) %i.d, i64 6, i1 false)
  %i.h = load ptr, ptr %3, align 8
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp eq i32 %i.i, 4
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ieee80211_s1g_sta_rate_init(ptr noundef %1) #19
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.c, i64 80
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr i8, ptr %i.l, i64 304
  %i.n = zext i32 %i.i to i64
  %i.o = getelementptr [8 x i8], ptr %i.m, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr i8, ptr %3, i64 114
  %i.r = getelementptr i8, ptr %3, i64 152
  %i.s = load i64, ptr %i.r, align 8
  %i.t = trunc i64 %i.s to i32                    ; 2 uses
  %.not79.i = icmp eq i32 %i.t, 0
  br i1 %.not79.i, label %ieee80211_get_rates.exit.thread, label %.lr.ph78.i

.lr.ph78.i:                                       ; preds = %bb.c
  %i.u = getelementptr i8, ptr %i.p, i64 24
  %i.v = getelementptr i8, ptr %i.p, i64 8
  br label %bb.d

bb.d:                                             ; preds = %arch_set_bit.exit.i, %.lr.ph78.i
  %.055 = phi i32 [ 0, %.lr.ph78.i ], [ %.257, %arch_set_bit.exit.i ] ; 4 uses
  %.152 = phi i32 [ 0, %.lr.ph78.i ], [ %.354, %arch_set_bit.exit.i ] ; 4 uses
  %.048 = phi i8 [ 0, %.lr.ph78.i ], [ %.14961, %arch_set_bit.exit.i ]
  %.045 = phi i32 [ 2147483647, %.lr.ph78.i ], [ %.247, %arch_set_bit.exit.i ] ; 5 uses
  %.044 = phi i32 [ -1, %.lr.ph78.i ], [ %.2, %arch_set_bit.exit.i ] ; 4 uses
  %.05877.i = phi i32 [ 0, %.lr.ph78.i ], [ %i.au, %arch_set_bit.exit.i ] ; 2 uses
  %i.w = sext i32 %.05877.i to i64
  %i.x = getelementptr i8, ptr %i.q, i64 %i.w
  %.in.i = load i8, ptr %i.x, align 1             ; 2 uses
  %i.y = and i8 %.in.i, 127                       ; 3 uses
  %i.z = zext nneg i8 %i.y to i32                 ; 2 uses
  %i.aa = icmp slt i8 %.in.i, 0                   ; 2 uses
  %i.ab = mul nuw nsw i32 %i.z, 5                 ; 2 uses
  %i.ac = icmp samesign ugt i8 %i.y, 22
  br i1 %i.ac, label %bb.e, label %.preheader.i

bb.e:                                             ; preds = %bb.d
  %i.ad = icmp samesign ugt i8 %i.y, 119
  %or.cond3.i = select i1 %i.aa, i1 %i.ad, i1 false
  br i1 %or.cond3.i, label %arch_set_bit.exit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d, %bb.e
  %.14962 = phi i8 [ 1, %bb.e ], [ %.048, %bb.d ] ; 3 uses
end_hunk_0
