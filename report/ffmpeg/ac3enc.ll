Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ac3enc?download=true
inline.NumInlined: 131
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0_@set_bandwidth:bb.a
  %i.bi = icmp slt i64 %indvars.iv.next113, %i.bh
  br i1 %i.bi, label %.lr.ph98, label %.loopexit, !llvm.loop !244

.loopexit:                                        ; preds = %.lr.ph98, %bb.f, %._crit_edge95
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 5108 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !115
  %.not81 = icmp eq i32 %i.bk, 0
  br i1 %.not81, label %.thread, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !247 ; 2 uses
  %.not82 = icmp eq i32 %i.bm, -1
  br i1 %.not82, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 5024
  %i.bo = load i32, ptr %i.bn, align 16, !tbaa !70
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr [57 x i8], ptr @ac3_coupling_start_tab, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 -114
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 5164
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !55
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [19 x i8], ptr %i.br, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4976
  %i.bx = load i32, ptr %i.bw, align 16, !tbaa !112
  %i.by = sdiv i32 %i.bx, 2
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds i8, ptr %i.bv, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !31  ; 2 uses
  %i.cc = zext nneg i8 %i.cb to i32
  %i.cd = icmp slt i8 %i.cb, 0
  br i1 %i.cd, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !114
  %i.cg = icmp eq i32 %i.cf, -1
  br i1 %i.cg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bj, align 4, !tbaa !115
  br label %.thread

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.i
  %.072.ph = phi i32 [ 15, %bb.i ], [ %i.cc, %bb.h ], [ %i.bm, %bb.g ]
  %.072.ph.fr = freeze i32 %.072.ph               ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 5120 ; 2 uses
  %i.ci = load i32, ptr %i.aa, align 4, !tbaa !41
  %i.cj = sdiv i32 %i.ci, 4                       ; 3 uses
  %i.ck = add nsw i32 %i.cj, 3                    ; 3 uses
  %i.cl = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 13)
  %i.cm = add nsw i32 %i.cl, 2
  %i.cn = icmp slt i32 %.072.ph.fr, 0
  %..i = tail call i32 @llvm.smin.i32(i32 %.072.ph.fr, i32 %i.cm)
  %spec.select = select i1 %i.cn, i32 0, i32 %..i ; 4 uses
  %i.co = sub nsw i32 %i.ck, %spec.select
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 5112
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !80
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 5116 ; 3 uses
  store i32 1, ptr %i.cq, align 4, !tbaa !81
  store i8 12, ptr %i.ch, align 16, !tbaa !31
  %i.cr = add nsw i32 %i.cj, 2
  %i.cs = icmp slt i32 %spec.select, %i.cr
  br i1 %i.cs, label %.lr.ph103.preheader, label %._crit_edge104

.lr.ph103.preheader:                              ; preds = %bb.k
  %i.ct = sext i32 %spec.select to i64
  %i.cu = add nsw i64 %i.ct, 1
  br label %.lr.ph103

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %bb.n
  %i.cv = phi i8 [ 12, %.lr.ph103.preheader ], [ %i.dc, %bb.n ]
  %indvars.iv115 = phi i64 [ %i.cu, %.lr.ph103.preheader ], [ %indvars.iv.next116, %bb.n ] ; 2 uses
  %.0100 = phi ptr [ %i.ch, %.lr.ph103.preheader ], [ %.1, %bb.n ] ; 3 uses
  %i.cw = getelementptr inbounds i8, ptr @ff_eac3_default_cpl_band_struct, i64 %indvars.iv115
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !31
  %.not84 = icmp eq i8 %i.cx, 0
  br i1 %.not84, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph103
  %i.cy = add i8 %i.cv, 12                        ; 2 uses
  store i8 %i.cy, ptr %.0100, align 1, !tbaa !31
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph103
  %i.cz = load i32, ptr %i.cq, align 4, !tbaa !81
  %i.da = add nsw i32 %i.cz, 1
  store i32 %i.da, ptr %i.cq, align 4, !tbaa !81
  %i.db = getelementptr inbounds nuw i8, ptr %.0100, i64 1 ; 2 uses
  store i8 12, ptr %i.db, align 1, !tbaa !31
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.dc = phi i8 [ %i.cy, %bb.l ], [ 12, %bb.m ]
  %.1 = phi ptr [ %.0100, %bb.l ], [ %i.db, %bb.m ]
  %indvars.iv.next116 = add nsw i64 %indvars.iv115, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next116 to i32
  %exitcond.not = icmp eq i32 %i.ck, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge104, label %.lr.ph103, !llvm.loop !245

._crit_edge104:                                   ; preds = %bb.n, %bb.k
  %i.dd = mul nsw i32 %spec.select, 12
  %i.de = add nsw i32 %i.dd, 37
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 5072
  store i32 %i.de, ptr %i.df, align 16, !tbaa !40
  %i.dg = mul nsw i32 %i.ck, 12
  %i.dh = add nsw i32 %i.dg, 37                   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 5100
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !94
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 4964
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !28 ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %.lr.ph107.preheader, label %.thread

.lr.ph107.preheader:                              ; preds = %._crit_edge104
  %wide.trip.count = zext nneg i32 %i.dk to i64
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %.lr.ph107
  %indvars.iv118 = phi i64 [ 0, %.lr.ph107.preheader ], [ %indvars.iv.next119, %.lr.ph107 ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [648 x i8], ptr %0, i64 %indvars.iv118
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1664
  store i32 %i.dh, ptr %i.dn, align 8, !tbaa !40
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count
  br i1 %exitcond121.not, label %.thread, label %.lr.ph107, !llvm.loop !246

.thread:                                          ; preds = %.lr.ph107, %._crit_edge104, %.loopexit, %bb.j
  ret void
}

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @bit_alloc_init(ptr nofree noundef captures(none) initializes((5144, 5164)) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5152
  store i32 1, ptr %i.a, align 16, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5144
  store <2 x i32> <i32 1, i32 2>, ptr %i.b, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4940
  %i.d = load i32, ptr %i.c, align 4, !tbaa !56
  %.not = icmp eq i32 %i.d, 0                     ; 2 uses
  %i.e = select i1 %.not, i32 3, i32 2            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5156
  store i32 %i.e, ptr %i.f, align 4, !tbaa !96
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5160
  store i32 7, ptr %i.g, align 8, !tbaa !97
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5004
  %i.i = load i32, ptr %i.h, align 4, !tbaa !63   ; 2 uses
  %.not2425 = icmp slt i32 %i.i, 0
  br i1 %.not2425, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5204
  %i.k = add nuw i32 %i.i, 1
  %wide.trip.count = zext i32 %i.k to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  store i32 4, ptr %i.l, align 4, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !248

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5200
  store i32 40, ptr %i.m, align 16, !tbaa !85
  %i.n = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_slow_decay_tab, i64 2), align 1, !tbaa !31
  %i.o = zext i8 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5176
  store i32 %i.o, ptr %i.p, align 8, !tbaa !249
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_fast_decay_tab, i64 1), align 1, !tbaa !31
  %i.r = zext i8 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5180
  store i32 %i.r, ptr %i.s, align 4, !tbaa !250
  %i.t = load i16, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_slow_gain_tab, i64 2), align 2, !tbaa !84
  %i.u = zext i16 %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 5172
  store i32 %i.u, ptr %i.v, align 4, !tbaa !251
  %i.w = zext nneg i32 %i.e to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr @ff_ac3_db_per_bit_tab, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !84
  %i.z = zext i16 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5184
  store i32 %i.z, ptr %i.aa, align 16, !tbaa !252
  %i.ab = load i16, ptr getelementptr inbounds nuw (i8, ptr @ff_ac3_floor_tab, i64 14), align 2, !tbaa !84
  %i.ac = sext i16 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 5188
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !116
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5192
  store <2 x i32> zeroinitializer, ptr %i.ae, align 8, !tbaa !40
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4964
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !28 ; 6 uses
  %.not57.i = icmp eq i32 %i.ag, 6
  %1 = select i1 %.not57.i, i32 66, i32 65
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 5460
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !75
  %.not58.i = icmp eq i32 %i.ai, 0
  br i1 %.not58.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 5000
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !29
  %i.al = mul nsw i32 %i.ak, 5                    ; 2 uses
  br label %.thread.i

bb.e:                                             ; preds = %bb.c
  %i.am = shl nsw i32 %i.ag, 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 5000
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !29 ; 2 uses
  %i.ap = mul nsw i32 %i.am, %i.ao
  %.pre = mul nsw i32 %i.ao, 5
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %.pre-phi = phi i32 [ %.pre, %bb.e ], [ %i.al, %bb.d ]
  %.pn.i = phi i32 [ %i.ap, %bb.e ], [ %i.al, %bb.d ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 5008
  %i.ar = load i32, ptr %i.aq, align 16, !tbaa !66
  %.not59.i = icmp eq i32 %i.ar, 0
  %i.as = select i1 %.not59.i, i32 0, i32 %i.ag
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4960
  %i.au = load i32, ptr %i.at, align 16, !tbaa !65
  %.not60.i = icmp eq i32 %i.au, 3
  %.4.v.i = select i1 %.not60.i, i32 %.pre-phi, i32 1
  %.not61.i = icmp eq i32 %i.ag, 1
  %spec.select69.v.i = select i1 %.not61.i, i32 10, i32 11
  %.2.i = add nuw nsw i32 %spec.select69.v.i, %1
  %spec.select78.i = add i32 %.2.i, %.pn.i
  %.4.i = add i32 %spec.select78.i, %i.as
  %spec.select69.i = add i32 %.4.i, %.4.v.i       ; 2 uses
  %i.av = icmp sgt i32 %i.ag, 0
  br i1 %i.av, label %.lr.ph.split.preheader.i, label %count_frame_bits_fixed.exit

bb.f:                                             ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 5024
  %i.ax = load i32, ptr %i.aw, align 16, !tbaa !70
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr @count_frame_bits_fixed.frame_bits_inc, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !31
  %i.bb = zext i8 %i.ba to i32                    ; 3 uses
  %i.bc = add nuw nsw i32 %i.bb, 65
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 4964
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !28 ; 3 uses
  %i.bd = icmp sgt i32 %.pre.i, 0
  br i1 %i.bd, label %.lr.ph.split.us.i, label %count_frame_bits_fixed.exit

.lr.ph.split.preheader.i:                         ; preds = %.thread.i
  %i.be = mul i32 %i.ag, 3
  %i.bf = add i32 %spec.select69.i, %i.be
  br label %count_frame_bits_fixed.exit

.lr.ph.split.us.i:                                ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 5008
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 5000
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !29 ; 2 uses
  %i.bj = load i32, ptr %i.bg, align 16, !tbaa !66
  %.not66.us.i = icmp ne i32 %i.bj, 0             ; 2 uses
  %i.bk = zext i1 %.not66.us.i to i32             ; 2 uses
  %reass.mul.us.i = shl i32 %i.bi, 2              ; 2 uses
  %invariant.op.i = or disjoint i32 %reass.mul.us.i, %i.bk
  %invariant.op82.i = add nuw nsw i32 %i.bb, 82
  %spec.select72.us.reass.peel.i = add i32 %invariant.op82.i, %invariant.op.i
  %exitcond.peel.not.i = icmp eq i32 %.pre.i, 1
  br i1 %exitcond.peel.not.i, label %count_frame_bits_fixed.exit, label %.peel.next.i

.peel.next.i:                                     ; preds = %.lr.ph.split.us.i
  %i.bl = or disjoint i32 %reass.mul.us.i, %i.bk
  %i.bm = add i32 %i.bl, 6
  %i.bn = add nsw i32 %.pre.i, -2
  %i.bo = mul i32 %i.bm, %i.bn
  %i.bp = shl i32 %i.bi, 3
  %i.bq = add i32 %i.bo, %i.bp
  %i.br = select i1 %.not66.us.i, i32 2, i32 0
  %i.bs = add i32 %i.bq, %i.br
  %i.bt = add i32 %i.bs, %i.bb
  %i.bu = add i32 %i.bt, 88
  br label %count_frame_bits_fixed.exit

count_frame_bits_fixed.exit:                      ; preds = %.peel.next.i, %.thread.i, %bb.f, %.lr.ph.split.preheader.i, %.lr.ph.split.us.i
  %.6.lcssa.i = phi i32 [ %i.bc, %bb.f ], [ %spec.select69.i, %.thread.i ], [ %i.bf, %.lr.ph.split.preheader.i ], [ %spec.select72.us.reass.peel.i, %.lr.ph.split.us.i ], [ %i.bu, %.peel.next.i ]
  %i.bv = add nsw i32 %.6.lcssa.i, 18
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 5260
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !79
  ret void
}

; Function Attrs: cold nounwind optsize uwtable
define internal fastcc range(i32 -12, 1) i32 @allocate_buffers(ptr nofree noundef captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5004 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !63   ; 3 uses
  %i.c = add i32 %i.b, 1                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4964 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28
  %i.f = mul nsw i32 %i.c, %i.e                   ; 5 uses
  %i.g = shl nsw i32 %i.f, 8
  %.not119137 = icmp sgt i32 %i.b, 0
  br i1 %.not119137, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5272
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !63
  %i.j = sext i32 %i.i to i64
  %.not119 = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %.not119, label %bb.c, label %.critedge, !llvm.loop !253

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.k = tail call noalias ptr @av_mallocz(i64 noundef 1024) #15 ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store ptr %i.k, ptr %i.l, align 8, !tbaa !64
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %.loopexit, label %bb.b

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.m = sext i32 %i.g to i64                     ; 7 uses
  %i.n = tail call ptr @av_malloc_array(i64 noundef %i.m, i64 noundef 1) #15 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5320
  store ptr %i.n, ptr %i.o, align 8, !tbaa !87
  %.not120 = icmp eq ptr %i.n, null
  br i1 %.not120, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.p = tail call ptr @av_malloc_array(i64 noundef %i.m, i64 noundef 1) #15 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5328
  store ptr %i.p, ptr %i.q, align 16, !tbaa !86
  %.not121 = icmp eq ptr %i.p, null
  br i1 %.not121, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call noalias ptr @av_calloc(i64 noundef %i.m, i64 noundef 4) #15 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5336 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !256
  %.not122 = icmp eq ptr %i.r, null
  br i1 %.not122, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = tail call ptr @av_malloc_array(i64 noundef %i.m, i64 noundef 1) #15 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 5352 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !257
  %.not123 = icmp eq ptr %i.t, null
  br i1 %.not123, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = shl nsw i32 %i.f, 7
  %i.w = sext i32 %i.v to i64
  %i.x = tail call ptr @av_malloc_array(i64 noundef %i.w, i64 noundef 1) #15 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5360 ; 2 uses
  store ptr %i.x, ptr %i.y, align 16, !tbaa !258
  %.not124 = icmp eq ptr %i.x, null
  br i1 %.not124, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = tail call ptr @av_malloc_array(i64 noundef %i.m, i64 noundef 2) #15 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5368 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !259
  %.not125 = icmp eq ptr %i.z, null
  br i1 %.not125, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = shl nsw i32 %i.f, 6
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = tail call ptr @av_malloc_array(i64 noundef %i.ac, i64 noundef 2) #15 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5376 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 16, !tbaa !260
  %.not126 = icmp eq ptr %i.ad, null
  br i1 %.not126, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = tail call ptr @av_malloc_array(i64 noundef %i.ac, i64 noundef 2) #15 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5384 ; 2 uses
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !261
  %.not127 = icmp eq ptr %i.af, null
  br i1 %.not127, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = tail call ptr @av_malloc_array(i64 noundef %i.m, i64 noundef 2) #15 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 5392 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 16, !tbaa !262
  %.not128 = icmp eq ptr %i.ah, null
  br i1 %.not128, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4936 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !263
  %.not129 = icmp eq i32 %i.ak, 0
  br i1 %.not129, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.al = tail call noalias ptr @av_calloc(i64 noundef %i.m, i64 noundef 4) #15 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 5344
  store ptr %i.al, ptr %i.am, align 16, !tbaa !264
  %.not130 = icmp eq ptr %i.al, null
  br i1 %.not130, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 5108 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !115
  %.not131 = icmp eq i32 %i.ao, 0
  br i1 %.not131, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = shl nsw i32 %i.f, 5
  %i.aq = sext i32 %i.ap to i64
  %i.ar = tail call ptr @av_malloc_array(i64 noundef %i.aq, i64 noundef 1) #15 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 5400
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !265
  %.not132 = icmp eq ptr %i.ar, null
  br i1 %.not132, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = shl nsw i32 %i.f, 4
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.ar, i64 %i.au
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.0113 = phi ptr [ %i.av, %bb.p ], [ undef, %bb.n ]
  %i.aw = load i32, ptr %i.d, align 4, !tbaa !28  ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph144, label %.loopexit

.lr.ph144:                                        ; preds = %bb.q
end_hunk_0
