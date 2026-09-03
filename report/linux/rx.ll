Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/rx?download=true
inline.NumInlined: 710
inline.NumDeleted: 226
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 13
begin_hunk_0_@ieee80211_rx_handlers:bb.a
  %i.axa = load ptr, ptr %1, align 8              ; 3 uses
  %i.axb = icmp eq ptr %i.axa, %1
  %.not.i236 = icmp eq ptr %i.axa, null
  %.not.i = or i1 %i.axb, %.not.i236
  br i1 %.not.i, label %._crit_edge, label %bb.b, !llvm.loop !59

._crit_edge:                                      ; preds = %ieee80211_rx_handlers_result.exit, %bb.a
  %i.axc = load ptr, ptr %i.d, align 8
  %i.axd = getelementptr i8, ptr %i.axc, i64 1616
  call void @_raw_spin_unlock_bh(ptr noundef %i.axd) #19
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ieee80211_mark_rx_ba_filtered_frames(ptr noundef %0, i8 noundef zeroext %1, i16 noundef zeroext %2, i64 noundef %3, i16 noundef zeroext %4) #0 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.sk_buff_head, align 8       ; 12 uses
  %6 = alloca %struct.ieee80211_rx_data, align 8  ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 68
  %i.b = zext i8 %1 to i32                        ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %6, i8 0, i64 112, i1 false)
  store i32 %i.b, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i32 %i.b, ptr %i.c, align 8
  %.not = icmp eq ptr %0, null
  %i.d = icmp ugt i8 %1, 15
  %i.e = or i1 %.not, %i.d
  br i1 %i.e, label %bb.b, label %.critedge, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "2286: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2286b - ., 3; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2286) #17, !srcloc !82
  tail call void asm sideeffect "1:\09 ud2 \0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::format\0A\09.long ${1:c} - .\09# bug_entry::file\0A\09.word ${2:c}\09# bug_entry::line\0A\09.word ${3:c}\09# bug_entry::flags\0A\09.org 2b + ${4:c}\0A.popsection\0A.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 1b - ., 8; .popsection", "i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str, ptr nonnull @.str.1, i32 4434, i32 2305, i64 16) #17, !srcloc !83
  tail call void asm sideeffect "2287: nop\0A\09.pushsection .discard.annotate_insn, \22M\22, @progbits, 8; .long 2287b - ., 4; .popsection", "i,~{dirflag},~{fpsr},~{flags}"(i32 2287) #17, !srcloc !84
  br label %bb.v

.critedge:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.f, align 8, !annotation !27
  store ptr %5, ptr %5, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %5, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %0, i64 -2784      ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 -2704      ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 1856
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 144      ; 2 uses
  %i.o = load i16, ptr %i.n, align 8
  %i.p = icmp ugt i16 %i.o, 64
  br i1 %i.p, label %bb.c, label %bb.d, !prof !14

bb.c:                                             ; preds = %.critedge
  %i.q = call ptr asm sideeffect "lea (2f)(%rip), $0\0A1:\0A.pushsection __bug_table,\22aw\22\0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A\092:\0A\09\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${1:c} - .\09# bug_entry::format\0A\09.long ${2:c} - .\09# bug_entry::file\0A\09.word ${3:c}\09# bug_entry::line\0A\09.word ${4:c}\09# bug_entry::flags\0A\09.org 2b + ${5:c}\0A.popsection\0A", "=r,i,i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @.str.2, ptr nonnull @.str.1, i32 4444, i32 2323, i64 16) #17, !srcloc !85
  %i.r = load i16, ptr %i.n, align 8
  %i.s = zext i16 %i.r to i32
  call void (ptr, ...) @__SCT__WARN_trap(ptr noundef %i.q, i32 noundef %i.s) #19
  call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags}"() #17, !srcloc !86
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.critedge
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 76
  store i32 -1, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %i.i, ptr %i.u, align 8
  %.not75 = icmp eq ptr %i.i, null
  br i1 %.not75, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr null, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.z = getelementptr i8, ptr %i.y, i64 1856
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr %i.y, ptr %i.ac, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ae = phi ptr [ %i.ad, %bb.e ], [ %i.y, %bb.f ] ; 4 uses
  %i.af = getelementptr i8, ptr %0, i64 -1144
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = getelementptr i8, ptr %i.ae, i64 7160
  %.val.i = load i16, ptr %i.ah, align 8
  %.not76 = icmp eq i16 %.val.i, 0
  br i1 %.not76, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr i8, ptr %0, i64 184
  %i.aj = load i16, ptr %i.ai, align 8
  %.not30.i = icmp eq i16 %i.aj, 0
  br i1 %.not30.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr i8, ptr %i.ae, i64 4920
  %i.al = getelementptr i8, ptr %0, i64 -1138
  %i.am = load i8, ptr %i.al, align 2
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr [8 x i8], ptr %i.ak, i64 %i.an
  %i.ap = load volatile ptr, ptr %i.ao, align 8
  br label %bb.k

bb.j:                                             ; preds = %.thread, %bb.h, %bb.g
  %i.aq = phi ptr [ %i.x, %.thread ], [ %i.ae, %bb.h ], [ %i.ae, %bb.g ]
  %i.ar = getelementptr i8, ptr %i.aq, i64 3848
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink36.i = phi ptr [ %i.ap, %bb.i ], [ %i.ar, %bb.j ]
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %.sink36.i, ptr %i.as, align 8
  call void @__rcu_read_lock() #19
  %i.at = getelementptr i8, ptr %0, i64 -2088
  %i.au = zext nneg i8 %1 to i64
  %i.av = getelementptr [8 x i8], ptr %i.at, i64 %i.au
  %i.aw = load volatile ptr, ptr %i.av, align 8   ; 11 uses
  %.not67 = icmp eq ptr %i.aw, null
  br i1 %.not67, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr i8, ptr %i.aw, i64 16     ; 2 uses
  call void @_raw_spin_lock_bh(ptr noundef %i.ax) #19
  %i.ay = icmp ugt i16 %4, 2047
  %i.az = getelementptr i8, ptr %i.aw, i64 128    ; 5 uses
  br i1 %i.ay, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ba = load i16, ptr %i.az, align 8            ; 3 uses
  %i.bb = getelementptr i8, ptr %i.aw, i64 134    ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = add i16 %i.bc, %i.ba
  %i.be = zext i16 %i.bd to i32                   ; 2 uses
  %i.bf = zext i16 %i.ba to i32
  %i.bg = sub nsw i32 %i.bf, %i.be
  %i.bh = and i32 %i.bg, 4095
  %i.bi = icmp samesign ugt i32 %i.bh, 2048
  br i1 %i.bi, label %.lr.ph.i, label %ieee80211_release_reorder_frames.exit

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.i
  %i.bj = phi i16 [ %i.bn, %.lr.ph.i ], [ %i.ba, %bb.m ]
  %i.bk = load i16, ptr %i.bb, align 2
  %i.bl = urem i16 %i.bj, %i.bk
  %i.bm = zext i16 %i.bl to i32
  call fastcc void @ieee80211_release_reorder_frame(ptr noundef nonnull %i.aw, i32 noundef %i.bm, ptr noundef nonnull %5) #18
  %i.bn = load i16, ptr %i.az, align 8            ; 2 uses
  %i.bo = zext i16 %i.bn to i32
  %i.bp = sub nsw i32 %i.bo, %i.be
  %i.bq = and i32 %i.bp, 4095
  %i.br = icmp samesign ugt i32 %i.bq, 2048
  br i1 %i.br, label %.lr.ph.i, label %ieee80211_release_reorder_frames.exit, !llvm.loop !1

ieee80211_release_reorder_frames.exit:            ; preds = %.lr.ph.i, %bb.m
  store i16 %2, ptr %i.az, align 8
  br label %ieee80211_release_reorder_frames.exit71

bb.n:                                             ; preds = %bb.l
  %i.bs = zext i16 %2 to i32                      ; 2 uses
  %i.bt = load i16, ptr %i.az, align 8            ; 2 uses
  %i.bu = zext i16 %i.bt to i32
  %i.bv = sub nsw i32 %i.bu, %i.bs
  %i.bw = and i32 %i.bv, 4095                     ; 2 uses
  %i.bx = icmp samesign ugt i32 %i.bw, 2048
  br i1 %i.bx, label %.lr.ph.i70, label %ieee80211_release_reorder_frames.exit71

.lr.ph.i70:                                       ; preds = %bb.n
  %i.by = getelementptr i8, ptr %i.aw, i64 134
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i70
  %i.bz = phi i16 [ %i.bt, %.lr.ph.i70 ], [ %i.cd, %bb.o ]
  %i.ca = load i16, ptr %i.by, align 2
  %i.cb = urem i16 %i.bz, %i.ca
  %i.cc = zext i16 %i.cb to i32
  call fastcc void @ieee80211_release_reorder_frame(ptr noundef nonnull %i.aw, i32 noundef %i.cc, ptr noundef nonnull %5) #18
  %i.cd = load i16, ptr %i.az, align 8            ; 2 uses
  %i.ce = zext i16 %i.cd to i32
  %i.cf = sub nsw i32 %i.ce, %i.bs
  %i.cg = and i32 %i.cf, 4095                     ; 2 uses
  %i.ch = icmp samesign ugt i32 %i.cg, 2048
  br i1 %i.ch, label %bb.o, label %ieee80211_release_reorder_frames.exit71, !llvm.loop !1

ieee80211_release_reorder_frames.exit71:          ; preds = %bb.o, %bb.n, %ieee80211_release_reorder_frames.exit
  %.pre-phi84 = phi i32 [ 0, %ieee80211_release_reorder_frames.exit ], [ %i.bw, %bb.n ], [ %i.cg, %bb.o ] ; 3 uses
  %i.ci = getelementptr i8, ptr %i.aw, i64 134
  %i.cj = load i16, ptr %i.ci, align 2            ; 5 uses
  %i.ck = zext i16 %i.cj to i32                   ; 4 uses
  %.not68 = icmp samesign ult i32 %.pre-phi84, %i.ck
  br i1 %.not68, label %bb.q, label %bb.p

bb.p:                                             ; preds = %ieee80211_release_reorder_frames.exit71
  %i.cl = getelementptr i8, ptr %i.aw, i64 24
  store i64 0, ptr %i.cl, align 8
  br label %bb.t

bb.q:                                             ; preds = %ieee80211_release_reorder_frames.exit71
  %i.cm = zext nneg i32 %.pre-phi84 to i64
  %i.cn = lshr i64 %3, %i.cm                      ; 3 uses
  %.not79 = icmp eq i16 %i.cj, 0
  br i1 %.not79, label %bb.s, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q
  %i.co = trunc nuw nsw i32 %.pre-phi84 to i16
  %i.cp = add i16 %2, %i.co
  %i.cq = getelementptr i8, ptr %i.aw, i64 24     ; 2 uses
  %.promoted = load i64, ptr %i.cq, align 8       ; 2 uses
  %i.cr = zext i16 %i.cp to i64                   ; 3 uses
  %i.cs = zext i16 %i.cj to i64                   ; 2 uses
  %xtraiter = and i64 %i.cs, 1
  %7 = icmp eq i16 %i.cj, 1
  br i1 %7, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.cs, 65534
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.r ] ; 5 uses
  %indvars.iv.a = phi i64 [ %.promoted, %.lr.ph.new ], [ %spec.select.a, %bb.r ] ; 2 uses
  %spec.select78 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.a, %bb.r ]
  %8 = add nuw nsw i64 %indvars.iv, %i.cr
  %9 = trunc nuw nsw i64 %8 to i32
  %10 = urem i32 %9, %i.ck
  %11 = zext nneg i32 %10 to i64
  %12 = shl nuw i64 1, %11                        ; 2 uses
  %13 = xor i64 %12, -1
  %14 = and i64 %indvars.iv.a, %13
  %15 = shl nuw i64 1, %indvars.iv
  %16 = and i64 %15, %i.cn
  %.not69 = icmp eq i64 %16, 0
  %17 = or i64 %12, %indvars.iv.a
  %spec.select = select i1 %.not69, i64 %14, i64 %17 ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.ct = add nuw nsw i64 %indvars.iv.next, %i.cr
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = urem i32 %i.cu, %i.ck
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = shl nuw i64 1, %i.cw                    ; 2 uses
  %i.cy = xor i64 %i.cx, -1
  %i.cz = and i64 %spec.select, %i.cy
  %i.da = shl nuw i64 2, %indvars.iv
  %i.db = and i64 %i.da, %i.cn
  %.not69.a = icmp eq i64 %i.db, 0
  %i.dc = or i64 %i.cx, %spec.select
  %spec.select.a = select i1 %.not69.a, i64 %i.cz, i64 %i.dc ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars.iv.next.a = add i64 %spec.select78, 2  ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %indvars.iv.next.a, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.unr-lcssa, label %bb.r, !llvm.loop !81

._crit_edge.unr-lcssa:                            ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %spec.select78.epil.init = phi i64 [ %.promoted, %.lr.ph ], [ %spec.select.a, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod93 = trunc i16 %i.cj to i1
  call void @llvm.assume(i1 %lcmp.mod93)
  %18 = add nuw nsw i64 %indvars.iv.epil.init, %i.cr
  %19 = trunc nuw nsw i64 %18 to i32
  %20 = urem i32 %19, %i.ck
  %21 = zext nneg i32 %20 to i64
  %22 = shl nuw i64 1, %21                        ; 2 uses
  %23 = xor i64 %22, -1
  %24 = and i64 %spec.select78.epil.init, %23
  %25 = shl nuw i64 1, %indvars.iv.epil.init
  %26 = and i64 %25, %i.cn
  %.not69.epil = icmp eq i64 %26, 0
  %27 = or i64 %22, %spec.select78.epil.init
  %spec.select.epil = select i1 %.not69.epil, i64 %24, i64 %27
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %spec.select.lcssa = phi i64 [ %spec.select.a, %._crit_edge.unr-lcssa ], [ %spec.select.epil, %.epil.preheader ]
  store i64 %spec.select.lcssa, ptr %i.cq, align 8
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.q
  call fastcc void @ieee80211_sta_reorder_release(ptr noundef %i.aw, ptr noundef nonnull %5) #18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  call void @_raw_spin_unlock_bh(ptr noundef %i.ax) #19
  call fastcc void @ieee80211_rx_handlers(ptr noundef nonnull %6, ptr noundef nonnull %5) #18, !srcloc !87
  br label %bb.u

bb.u:                                             ; preds = %bb.k, %bb.t
  call void @__rcu_read_unlock() #19
  br label %bb.v

bb.v:                                             ; preds = %bb.b, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__WARN_trap(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @ieee80211_release_reorder_frames(ptr nofree noundef nonnull captures(address) %0, i16 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 align 16 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.b = zext i16 %1 to i32                       ; 2 uses
  %i.c = load i16, ptr %i.a, align 8              ; 2 uses
  %i.d = zext i16 %i.c to i32
  %i.e = sub nsw i32 %i.d, %i.b
  %i.f = and i32 %i.e, 4095
  %i.g = icmp samesign ugt i32 %i.f, 2048
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 134
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.i = phi i16 [ %i.c, %.lr.ph ], [ %i.m, %bb.b ]
  %i.j = load i16, ptr %i.h, align 2
  %i.k = urem i16 %i.i, %i.j
  %i.l = zext i16 %i.k to i32
  tail call fastcc void @ieee80211_release_reorder_frame(ptr noundef %0, i32 noundef %i.l, ptr noundef %2) #18
  %i.m = load i16, ptr %i.a, align 8              ; 2 uses
  %i.n = zext i16 %i.m to i32
  %i.o = sub nsw i32 %i.n, %i.b
  %i.p = and i32 %i.o, 4095
  %i.q = icmp samesign ugt i32 %i.p, 2048
  br i1 %i.q, label %bb.b, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ieee80211_check_fast_rx(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
_ieee80211_hw_check.exit:
  %1 = alloca %struct.ieee80211_fast_rx, align 8  ; 15 uses
  %i.a = getelementptr i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8              ; 17 uses
  %i.c = getelementptr i8, ptr %i.b, i64 1856
  %i.d = load ptr, ptr %i.c, align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.e = getelementptr i8, ptr %i.b, i64 1848
  %i.f = load ptr, ptr %i.e, align 8
  store ptr %i.f, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr i8, ptr %i.b, i64 5072     ; 3 uses
  %i.i = load i32, ptr %i.h, align 8              ; 4 uses
  store i32 %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr i8, ptr %i.b, i64 2180
  %i.n = load i16, ptr %i.m, align 4
  store i16 %i.n, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 26 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 29 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 30 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 31 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %i.o, i8 0, i64 22, i1 false)
  %i.t = load i32, ptr @rfc1042_header, align 4
  store i32 %i.t, ptr %i.k, align 4
  %i.u = load i16, ptr getelementptr inbounds nuw (i8, ptr @rfc1042_header, i64 4), align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i16 %i.u, ptr %i.v, align 2
  %i.w = getelementptr i8, ptr %i.b, i64 7202
  %i.x = load i32, ptr %i.w, align 4
  store i32 %i.x, ptr %i.j, align 4
  %i.y = getelementptr i8, ptr %i.b, i64 7206
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i16 %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr i8, ptr %i.d, i64 104     ; 7 uses
  %i.ac = load volatile i64, ptr %i.ab, align 8
  %.in.i.in = lshr i64 %i.ac, 33
  %i.ad = trunc i64 %.in.i.in to i8
  %i.ae = and i8 %i.ad, 4                         ; 12 uses
  store i8 %i.ae, ptr %i.q, align 1
  %i.af = load volatile i64, ptr %i.ab, align 8
  %i.ag = and i64 %i.af, 128
  %.not118 = icmp eq i64 %i.ag, 0
  br i1 %.not118, label %bb.a, label %_ieee80211_hw_check.exit86

_ieee80211_hw_check.exit86:                       ; preds = %_ieee80211_hw_check.exit
  %i.ah = load volatile i64, ptr %i.ab, align 8
  %i.ai = and i64 %i.ah, 17179869184
  %.not120 = icmp eq i64 %i.ai, 0
  br i1 %.not120, label %.thread110, label %bb.a

bb.a:                                             ; preds = %_ieee80211_hw_check.exit86, %_ieee80211_hw_check.exit
  switch i32 %i.i, label %.thread110 [
    i32 2, label %bb.b
    i32 4, label %_ieee80211_hw_check.exit98
    i32 3, label %_ieee80211_hw_check.exit98
    i32 7, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr i8, ptr %0, i64 2808
  %i.ak = load i8, ptr %i.aj, align 8, !range !17, !noundef !18
  %i.al = trunc nuw i8 %i.ak to i1                ; 3 uses
  %. = select i1 %i.al, i8 10, i8 16
  %.80 = select i1 %i.al, i16 0, i16 512
  store i8 4, ptr %i.r, align 2
  store i8 %., ptr %i.s, align 1
  store i16 %.80, ptr %i.o, align 2
  %i.am = getelementptr i8, ptr %i.b, i64 2780
  %i.an = load i8, ptr %i.am, align 4
  %.not74 = icmp eq i8 %i.an, 0
  %brmerge = or i1 %.not74, %i.al
  br i1 %brmerge, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i16 768, ptr %i.o, align 2
  store i8 16, ptr %i.r, align 2
  store i8 24, ptr %i.s, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ao = getelementptr i8, ptr %i.b, i64 2752
  %i.ap = load i8, ptr %i.ao, align 8, !range !17, !noundef !18
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_ieee80211_hw_check.exit89, label %test_sta_flag.exit

_ieee80211_hw_check.exit89:                       ; preds = %bb.d
  %i.ar = load volatile i64, ptr %i.ab, align 8
  %i.as = and i64 %i.ar, 512
  %.not124 = icmp eq i64 %i.as, 0
  br i1 %.not124, label %_ieee80211_hw_check.exit92, label %.thread110

_ieee80211_hw_check.exit92:                       ; preds = %_ieee80211_hw_check.exit89
  %i.at = load volatile i64, ptr %i.ab, align 8
  %i.au = and i64 %i.at, 256
  %.not126 = icmp eq i64 %i.au, 0
  br i1 %.not126, label %test_sta_flag.exit, label %_ieee80211_hw_check.exit95

_ieee80211_hw_check.exit95:                       ; preds = %_ieee80211_hw_check.exit92
  %i.av = load volatile i64, ptr %i.ab, align 8
  %i.aw = and i64 %i.av, 1024
  %.not128 = icmp eq i64 %i.aw, 0
  br i1 %.not128, label %.thread110, label %test_sta_flag.exit

_ieee80211_hw_check.exit98:                       ; preds = %bb.a, %bb.a
  %i.ax = load volatile i64, ptr %i.ab, align 8
  %i.ay = and i64 %i.ax, 2097152
  %.not122 = icmp eq i64 %i.ay, 0
  br i1 %.not122, label %.thread110, label %bb.e

bb.e:                                             ; preds = %_ieee80211_hw_check.exit98
  store i8 16, ptr %i.r, align 2
  store i8 10, ptr %i.s, align 1
  store i16 256, ptr %i.o, align 2
  %i.az = getelementptr i8, ptr %i.b, i64 1864
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = and i32 %i.ba, 8
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.not70 = icmp eq i32 %i.i, 4
  br i1 %.not70, label %.thread138, label %.thread139

.thread139:                                       ; preds = %bb.f
  %i.bc = or disjoint i8 %i.ae, 2                 ; 2 uses
  store i8 %i.bc, ptr %i.q, align 1
  br label %test_sta_flag.exit

.thread138:                                       ; preds = %bb.f
  %i.bd = getelementptr i8, ptr %i.b, i64 2520
  %i.be = load ptr, ptr %i.bd, align 8
  %.not71 = icmp eq ptr %i.be, null
  %i.bf = select i1 %.not71, i8 2, i8 0
  %i.bg = or disjoint i8 %i.bf, %i.ae             ; 2 uses
  store i8 %i.bg, ptr %i.q, align 1
  br label %bb.h
end_hunk_0
