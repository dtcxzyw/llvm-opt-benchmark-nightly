Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/util?download=true
inline.NumInlined: 522
inline.NumDeleted: 161
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 16
begin_hunk_0_@ieee80211_put_preq_ies:bb.a
  %i.fj = getelementptr i8, ptr %.val53, i64 %i.fi
  %i.fk = load ptr, ptr %i.o, align 8
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  store i64 %i.fn, ptr %i.fo, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.b, %ieee80211_put_preq_ies_band.exit
  %.1 = phi i64 [ %.06671, %bb.b ], [ %.6, %ieee80211_put_preq_ies_band.exit ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.at, label %bb.b, !llvm.loop !99

bb.at:                                            ; preds = %bb.as
  br i1 %or.cond.i, label %bb.au, label %ieee80211_put_preq_ies_band.exit.thread

bb.au:                                            ; preds = %bb.at
  %.val.i = load i32, ptr %i.g, align 4
  %.not.i56 = icmp eq i32 %.val.i, 0
  br i1 %.not.i56, label %bb.av, label %skb_tailroom.exit

bb.av:                                            ; preds = %bb.au
  %i.fp = load i32, ptr %i.h, align 8
  %i.fq = load i32, ptr %i.b, align 4
  %i.fr = sub i32 %i.fp, %i.fq
  %i.fs = sext i32 %i.fr to i64
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %bb.au, %bb.av
  %i.ft = phi i64 [ %i.fs, %bb.av ], [ 0, %bb.au ]
  %i.fu = sub i64 %4, %.1                         ; 3 uses
  %i.fv = icmp ugt i64 %i.fu, %i.ft
  br i1 %i.fv, label %bb.aw, label %.critedge, !prof !11

bb.aw:                                            ; preds = %skb_tailroom.exit
  %i.fw = tail call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.20, ptr nonnull @.str.1, i32 1485, i32 2323, i64 16) #26, !srcloc !100
  tail call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.fw) #27
  tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !101
  br label %ieee80211_put_preq_ies_band.exit.thread

.critedge:                                        ; preds = %skb_tailroom.exit
  %.val50 = load i32, ptr %i.b, align 4
  %.val51 = load ptr, ptr %i.c, align 8
  %i.fx = zext i32 %.val50 to i64
  %i.fy = getelementptr i8, ptr %.val51, i64 %i.fx
  %i.fz = getelementptr i8, ptr %2, i64 96        ; 2 uses
  store ptr %i.fy, ptr %i.fz, align 8
  %i.ga = getelementptr i8, ptr %3, i64 %.1
  %i.gb = trunc i64 %i.fu to i32
  %i.gc = tail call ptr @skb_put(ptr noundef nonnull %0, i32 noundef %i.gb) #27
  %i.gd = and i64 %i.fu, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gc, ptr readonly align 1 %i.ga, i64 %i.gd, i1 false)
  %.val = load i32, ptr %i.b, align 4
  %.val49 = load ptr, ptr %i.c, align 8
  %i.ge = zext i32 %.val to i64
  %i.gf = getelementptr i8, ptr %.val49, i64 %i.ge
  %i.gg = load ptr, ptr %i.fz, align 8
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = getelementptr i8, ptr %2, i64 104
  store i64 %i.gj, ptr %i.gk, align 8
  br label %ieee80211_put_preq_ies_band.exit.thread

ieee80211_put_preq_ies_band.exit.thread:          ; preds = %bb.ag, %bb.o, %bb.w, %bb.e, %skb_tailroom.exit.i.i, %skb_tailroom.exit190.i, %bb.ap, %bb.ao, %bb.am, %skb_tailroom.exit196.i, %skb_tailroom.exit187.i, %bb.ar, %skb_tailroom.exit181.i, %bb.l, %skb_tailroom.exit.i, %bb.g, %skb_tailroom.exit184.i, %skb_tailroom.exit193.i, %bb.aw, %bb.at, %.critedge
  %.0 = phi i32 [ -105, %bb.aw ], [ 0, %bb.at ], [ 0, %.critedge ], [ -105, %skb_tailroom.exit193.i ], [ -105, %skb_tailroom.exit184.i ], [ %i.aj, %bb.g ], [ -105, %skb_tailroom.exit.i ], [ %i.au, %bb.l ], [ -105, %skb_tailroom.exit181.i ], [ %i.fh, %bb.ar ], [ -105, %skb_tailroom.exit187.i ], [ -105, %skb_tailroom.exit196.i ], [ %i.eu, %bb.am ], [ %i.fa, %bb.ao ], [ %i.fb, %bb.ap ], [ -105, %skb_tailroom.exit190.i ], [ -105, %skb_tailroom.exit.i.i ], [ -105, %bb.e ], [ -105, %bb.w ], [ -105, %bb.o ], [ -105, %bb.ag ]
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local ptr @ieee80211_build_probe_req(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, i32 noundef %9) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %10 = alloca %struct.cfg80211_chan_def, align 8 ; 6 uses
  %i.a = alloca [6 x i32], align 16               ; 5 uses
  %11 = alloca %struct.ieee80211_scan_ies, align 8 ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 1856
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 0, i64 40, i1 false), !annotation !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #26
  %i.e = getelementptr i8, ptr %0, i64 6016
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %i.f, ptr %i.g, align 8
  %i.h = and i32 %9, 1
  %.not = icmp eq i32 %i.h, 0
  %. = select i1 %.not, ptr %4, ptr null
  store ptr %., ptr %10, align 8
  %i.i = getelementptr i8, ptr %i.c, i64 4816
  %i.j = load i32, ptr %i.i, align 8
  %i.k = sext i32 %i.j to i64
  %i.l = add i64 %8, %i.k
  %i.m = tail call ptr @ieee80211_probereq_get(ptr noundef %i.c, ptr noundef %1, ptr noundef %5, i64 noundef %6, i64 noundef %i.l) #27 ; 5 uses
  %.not29 = icmp eq ptr %i.m, null
  br i1 %.not29, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %4, align 8
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr [4 x i8], ptr %i.a, i64 %i.o
  store i32 %3, ptr %i.p, align 4
  %i.q = shl nuw i64 1, %i.o
  %i.r = trunc i64 %i.q to i8
  %i.s = call fastcc i32 @ieee80211_put_preq_ies(ptr noundef %i.m, ptr noundef %0, ptr noundef nonnull %11, ptr noundef %7, i64 noundef %8, i8 noundef zeroext %i.r, ptr noundef nonnull %i.a, ptr noundef nonnull %10, i32 noundef %9) #28, !srcloc !103 ; 0 uses
  %.not30 = icmp eq ptr %2, null
  br i1 %.not30, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.m, i64 208
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 2 dereferenceable(6) %i.v, ptr noundef nonnull align 1 dereferenceable(6) %2, i64 6, i1 false)
  %i.w = getelementptr i8, ptr %i.u, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 2 dereferenceable(6) %i.w, ptr noundef nonnull align 1 dereferenceable(6) %2, i64 6, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = getelementptr i8, ptr %i.m, i64 40       ; 2 uses
  %i.y = load i32, ptr %i.x, align 8
  %i.z = or i32 %i.y, 65536
  store i32 %i.z, ptr %i.x, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  ret ptr %i.m
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @ieee80211_probereq_get(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ieee80211_sta_get_rates(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1856
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 304
  %i.f = zext i32 %2 to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %.critedge, !prof !11

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "2263: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2263b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2263) #26, !srcloc !104
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 1600, i32 2305, i64 16) #26, !srcloc !105
  tail call void asm sideeffect "2264: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2264b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2264) #26, !srcloc !106
  br label %.loopexit49

.critedge:                                        ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8
  %.fr64 = freeze i32 %i.j                        ; 8 uses
  %i.k = getelementptr i8, ptr %1, i64 722        ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 726        ; 2 uses
  %i.m = load i8, ptr %i.k, align 2               ; 3 uses
  %i.n = load i8, ptr %i.l, align 2               ; 2 uses
  %i.o = or i8 %i.n, %i.m
  %.not63 = icmp eq i8 %i.o, 0
  br i1 %.not63, label %.loopexit49, label %.lr.ph54

.lr.ph54:                                         ; preds = %.critedge
  %i.p = getelementptr i8, ptr %1, i64 104
  %i.q = getelementptr i8, ptr %1, i64 56
  %.not65 = icmp eq i32 %.fr64, 0
  %i.r = getelementptr i8, ptr %i.h, i64 8        ; 4 uses
  %i.s = icmp ne ptr %3, null
  br i1 %.not65, label %.loopexit49, label %.lr.ph54.split.us.preheader

.lr.ph54.split.us.preheader:                      ; preds = %.lr.ph54
  %i.t = zext i8 %i.m to i32
  %i.u = add i32 %.fr64, -1                       ; 2 uses
  %xtraiter = and i32 %.fr64, 1
  %i.v = icmp eq i32 %i.u, 0
  %unroll_iter = and i32 %.fr64, -2
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod84 = trunc i32 %.fr64 to i1
  %xtraiter85 = and i32 %.fr64, 1
  %i.w = icmp eq i32 %i.u, 0
  %unroll_iter89 = and i32 %.fr64, -2
  %lcmp.mod86.not = icmp eq i32 %xtraiter85, 0
  %lcmp.mod88 = trunc i32 %.fr64 to i1
  br label %.lr.ph54.split.us

.lr.ph54.split.us:                                ; preds = %.lr.ph54.split.us.preheader, %..loopexit_crit_edge.us
  %i.x = phi i8 [ %i.cc, %..loopexit_crit_edge.us ], [ %i.n, %.lr.ph54.split.us.preheader ] ; 3 uses
  %i.y = phi i8 [ %i.cd, %..loopexit_crit_edge.us ], [ %i.m, %.lr.ph54.split.us.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %..loopexit_crit_edge.us ], [ 0, %.lr.ph54.split.us.preheader ] ; 4 uses
  %i.z = phi i32 [ %i.ce, %..loopexit_crit_edge.us ], [ %i.t, %.lr.ph54.split.us.preheader ] ; 2 uses
  %.04252.us = phi i32 [ %.3.us, %..loopexit_crit_edge.us ], [ 0, %.lr.ph54.split.us.preheader ] ; 5 uses
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = icmp samesign ult i64 %indvars.iv, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph54.split.us
  %i.ac = load ptr, ptr %i.p, align 8             ; 2 uses
  %.not47.us = icmp eq ptr %i.ac, null
  br i1 %.not47.us, label %.lr.ph.split.us61, label %bb.d

bb.d:                                             ; preds = %bb.c
  %4 = trunc nuw nsw i64 %indvars.iv to i32
  %5 = sub nsw i32 %4, %i.z
  %6 = zext nneg i32 %5 to i64
  %i.ad = getelementptr i8, ptr %i.ac, i64 %6
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph54.split.us
  %i.ae = load ptr, ptr %i.q, align 8
  %i.af = getelementptr i8, ptr %i.ae, i64 %indvars.iv
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.us.in = phi ptr [ %i.af, %bb.e ], [ %i.ad, %bb.d ]
  %.0.us = load i8, ptr %.0.us.in, align 1
  %.0.us.fr = freeze i8 %.0.us                    ; 3 uses
  %i.ag = and i8 %.0.us.fr, 127
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = mul nuw nsw i32 %i.ah, 5                ; 4 uses
  %or.cond48.us = icmp eq i8 %.0.us.fr, -1
  br i1 %or.cond48.us, label %..loopexit_crit_edge.us, label %.preheader.us

.lr.ph.split.us61.new:                            ; preds = %.lr.ph.split.us61, %.lr.ph.split.us61.new
  %.04051.us56 = phi i32 [ %i.be, %.lr.ph.split.us61.new ], [ 0, %.lr.ph.split.us61 ] ; 4 uses
  %.150.us57 = phi i32 [ %.2.us58.1, %.lr.ph.split.us61.new ], [ %.04252.us, %.lr.ph.split.us61 ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph.split.us61.new ], [ 0, %.lr.ph.split.us61 ]
  %i.aj = sext i32 %.04051.us56 to i64
  %i.ak = getelementptr [12 x i8], ptr %i.cl, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  %i.am = load i16, ptr %i.al, align 4
  %i.an = zext i16 %i.am to i32
  %i.ao = icmp eq i32 %i.ck, %i.an
  %i.ap = zext nneg i32 %.04051.us56 to i64
  %i.aq = shl nuw i64 1, %i.ap
  %i.ar = trunc i64 %i.aq to i32
  %i.as = select i1 %i.ao, i32 %i.ar, i32 0
  %.2.us58 = or i32 %.150.us57, %i.as
  %i.at = or disjoint i32 %.04051.us56, 1         ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr [12 x i8], ptr %i.cl, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  %i.ax = load i16, ptr %i.aw, align 4
  %i.ay = zext i16 %i.ax to i32
  %i.az = icmp eq i32 %i.ck, %i.ay
  %i.ba = zext nneg i32 %i.at to i64
  %i.bb = shl nuw i64 1, %i.ba
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = select i1 %i.az, i32 %i.bc, i32 0
  %.2.us58.1 = or i32 %.2.us58, %i.bd             ; 3 uses
  %i.be = add nuw i32 %.04051.us56, 2             ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.us.loopexit82.unr-lcssa, label %.lr.ph.split.us61.new, !llvm.loop !107

..loopexit_crit_edge.us.loopexit.unr-lcssa:       ; preds = %bb.j
  br i1 %lcmp.mod86.not, label %..loopexit_crit_edge.us.loopexit, label %.lr.ph.split.us.us.epil.preheader

.lr.ph.split.us.us.epil.preheader:                ; preds = %..loopexit_crit_edge.us.loopexit.unr-lcssa, %.lr.ph.split.us.us.preheader
  %.04051.us.us.epil.init = phi i32 [ 0, %.lr.ph.split.us.us.preheader ], [ %i.dn, %..loopexit_crit_edge.us.loopexit.unr-lcssa ] ; 2 uses
  %.150.us.us.epil.init = phi i32 [ %.04252.us, %.lr.ph.split.us.us.preheader ], [ %.2.us.us.1, %..loopexit_crit_edge.us.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod88)
  %i.bf = sext i32 %.04051.us.us.epil.init to i64
  %i.bg = load ptr, ptr %i.r, align 8
  %i.bh = getelementptr [12 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = getelementptr i8, ptr %i.bh, i64 4
  %i.bj = load i16, ptr %i.bi, align 4
  %i.bk = zext i16 %i.bj to i32
  %i.bl = icmp eq i32 %i.ai, %i.bk
  br i1 %i.bl, label %bb.g, label %..loopexit_crit_edge.us.loopexit

bb.g:                                             ; preds = %.lr.ph.split.us.us.epil.preheader
  %i.bm = zext nneg i32 %.04051.us.us.epil.init to i64
  %i.bn = shl nuw i64 1, %i.bm
  %i.bo = trunc i64 %i.bn to i32                  ; 2 uses
  %i.bp = or i32 %.150.us.us.epil.init, %i.bo
  %i.bq = load i32, ptr %3, align 4
  %i.br = or i32 %i.bq, %i.bo
  store i32 %i.br, ptr %3, align 4
  br label %..loopexit_crit_edge.us.loopexit

..loopexit_crit_edge.us.loopexit:                 ; preds = %.lr.ph.split.us.us.epil.preheader, %bb.g, %..loopexit_crit_edge.us.loopexit.unr-lcssa
  %.2.us.us.lcssa = phi i32 [ %.2.us.us.1, %..loopexit_crit_edge.us.loopexit.unr-lcssa ], [ %i.bp, %bb.g ], [ %.150.us.us.epil.init, %.lr.ph.split.us.us.epil.preheader ]
  %.pre = load i8, ptr %i.k, align 2
  %.pre70 = load i8, ptr %i.l, align 2
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us.loopexit82.unr-lcssa:     ; preds = %.lr.ph.split.us61.new
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.us.loopexit82.unr-lcssa, %.lr.ph.split.us61
  %.04051.us56.epil.init = phi i32 [ 0, %.lr.ph.split.us61 ], [ %i.be, %..loopexit_crit_edge.us.loopexit82.unr-lcssa ] ; 2 uses
  %.150.us57.epil.init = phi i32 [ %.04252.us, %.lr.ph.split.us61 ], [ %.2.us58.1, %..loopexit_crit_edge.us.loopexit82.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod84)
  %i.bs = sext i32 %.04051.us56.epil.init to i64
  %i.bt = getelementptr [12 x i8], ptr %i.cl, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 4
  %i.bv = load i16, ptr %i.bu, align 4
  %i.bw = zext i16 %i.bv to i32
  %i.bx = icmp eq i32 %i.ck, %i.bw
  %i.by = zext nneg i32 %.04051.us56.epil.init to i64
  %i.bz = shl nuw i64 1, %i.by
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = select i1 %i.bx, i32 %i.ca, i32 0
  %.2.us58.epil = or i32 %.150.us57.epil.init, %i.cb
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %.epil.preheader, %..loopexit_crit_edge.us.loopexit82.unr-lcssa, %..loopexit_crit_edge.us.loopexit, %bb.f
  %i.cc = phi i8 [ %i.x, %bb.f ], [ %.pre70, %..loopexit_crit_edge.us.loopexit ], [ %i.x, %..loopexit_crit_edge.us.loopexit82.unr-lcssa ], [ %i.x, %.epil.preheader ] ; 2 uses
  %i.cd = phi i8 [ %i.y, %bb.f ], [ %.pre, %..loopexit_crit_edge.us.loopexit ], [ %i.y, %..loopexit_crit_edge.us.loopexit82.unr-lcssa ], [ %i.y, %.epil.preheader ] ; 2 uses
  %.3.us = phi i32 [ %.04252.us, %bb.f ], [ %.2.us.us.lcssa, %..loopexit_crit_edge.us.loopexit ], [ %.2.us58.1, %..loopexit_crit_edge.us.loopexit82.unr-lcssa ], [ %.2.us58.epil, %.epil.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ce = zext i8 %i.cd to i32                    ; 2 uses
  %i.cf = zext i8 %i.cc to i32
  %i.cg = add nuw nsw i32 %i.cf, %i.ce
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = icmp samesign ult i64 %indvars.iv.next, %i.ch
  br i1 %i.ci, label %.lr.ph54.split.us, label %.loopexit49, !llvm.loop !108

.preheader.us:                                    ; preds = %bb.f
  %i.cj = icmp slt i8 %.0.us.fr, 0
  %or.cond.us = and i1 %i.s, %i.cj
  br i1 %or.cond.us, label %.lr.ph.split.us.us.preheader, label %.lr.ph.split.us61

.lr.ph.split.us.us.preheader:                     ; preds = %.preheader.us
  br i1 %i.w, label %.lr.ph.split.us.us.epil.preheader, label %.lr.ph.split.us.us

.lr.ph.split.us61:                                ; preds = %bb.c, %.preheader.us
  %i.ck = phi i32 [ %i.ai, %.preheader.us ], [ 0, %bb.c ] ; 3 uses
  %i.cl = load ptr, ptr %i.r, align 8             ; 3 uses
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.split.us61.new

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.j
  %.04051.us.us = phi i32 [ %i.dn, %bb.j ], [ 0, %.lr.ph.split.us.us.preheader ] ; 4 uses
  %.150.us.us = phi i32 [ %.2.us.us.1, %bb.j ], [ %.04252.us, %.lr.ph.split.us.us.preheader ] ; 2 uses
  %niter90 = phi i32 [ %niter90.next.1, %bb.j ], [ 0, %.lr.ph.split.us.us.preheader ]
  %i.cm = sext i32 %.04051.us.us to i64
  %i.cn = load ptr, ptr %i.r, align 8
  %i.co = getelementptr [12 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  %i.cq = load i16, ptr %i.cp, align 4
  %i.cr = zext i16 %i.cq to i32
  %i.cs = icmp eq i32 %i.ai, %i.cr
  br i1 %i.cs, label %bb.h, label %.lr.ph.split.us.us.1

bb.h:                                             ; preds = %.lr.ph.split.us.us
  %i.ct = zext nneg i32 %.04051.us.us to i64
  %i.cu = shl nuw i64 1, %i.ct
  %i.cv = trunc i64 %i.cu to i32                  ; 2 uses
  %i.cw = or i32 %.150.us.us, %i.cv
  %i.cx = load i32, ptr %3, align 4
  %i.cy = or i32 %i.cx, %i.cv
  store i32 %i.cy, ptr %3, align 4
  br label %.lr.ph.split.us.us.1

.lr.ph.split.us.us.1:                             ; preds = %bb.h, %.lr.ph.split.us.us
  %.2.us.us = phi i32 [ %i.cw, %bb.h ], [ %.150.us.us, %.lr.ph.split.us.us ] ; 2 uses
  %i.cz = or disjoint i32 %.04051.us.us, 1        ; 2 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = load ptr, ptr %i.r, align 8
  %i.dc = getelementptr [12 x i8], ptr %i.db, i64 %i.da
  %i.dd = getelementptr i8, ptr %i.dc, i64 4
  %i.de = load i16, ptr %i.dd, align 4
  %i.df = zext i16 %i.de to i32
  %i.dg = icmp eq i32 %i.ai, %i.df
  br i1 %i.dg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.split.us.us.1
  %i.dh = zext nneg i32 %i.cz to i64
  %i.di = shl nuw i64 1, %i.dh
  %i.dj = trunc i64 %i.di to i32                  ; 2 uses
  %i.dk = or i32 %.2.us.us, %i.dj
  %i.dl = load i32, ptr %3, align 4
  %i.dm = or i32 %i.dl, %i.dj
  store i32 %i.dm, ptr %3, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.us.us.1
  %.2.us.us.1 = phi i32 [ %i.dk, %bb.i ], [ %.2.us.us, %.lr.ph.split.us.us.1 ] ; 3 uses
  %i.dn = add nuw i32 %.04051.us.us, 2            ; 2 uses
  %niter90.next.1 = add nuw i32 %niter90, 2       ; 2 uses
  %niter90.ncmp.1 = icmp eq i32 %niter90.next.1, %unroll_iter89
  br i1 %niter90.ncmp.1, label %..loopexit_crit_edge.us.loopexit.unr-lcssa, label %.lr.ph.split.us.us, !llvm.loop !107

.loopexit49:                                      ; preds = %..loopexit_crit_edge.us, %.lr.ph54, %.critedge, %bb.b
  %.039 = phi i32 [ 1, %bb.b ], [ 0, %.critedge ], [ 0, %.lr.ph54 ], [ %.3.us, %..loopexit_crit_edge.us ]
  ret i32 %.039
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ieee80211_stop_device(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 asm "lea 0(%rip), $0", "=r,~{dirflag},~{fpsr},~{flags}"() #29, !srcloc !21
  tail call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @__preempt_count, i32 512, ptr nonnull elementtype(i32) @__preempt_count) #26, !srcloc !22
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !23
  tail call void @ieee80211_handle_queued_frames(ptr noundef %0) #27
  tail call void @__local_bh_enable_ip(i64 noundef %i.a, i32 noundef 512) #27
  tail call void @ieee80211_led_radio(ptr noundef %0, i1 noundef zeroext false) #27
  tail call void @ieee80211_mod_tpt_led_trig(ptr noundef %0, i32 noundef 0, i32 noundef 1) #27
  %i.b = getelementptr i8, ptr %0, i64 80         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr i8, ptr %0, i64 1424
  tail call void @wiphy_work_cancel(ptr noundef %i.c, ptr noundef %i.d) #27
  %i.e = getelementptr i8, ptr %0, i64 472
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @__flush_workqueue(ptr noundef %i.f) #27
end_hunk_0
