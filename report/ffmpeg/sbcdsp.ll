Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/sbcdsp?download=true
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 14
begin_hunk_0_@sbc_enc_process_input_8s:bb.a
  %i.gg = trunc nsw i64 %indvars.iv.next224 to i32
  br label %._crit_edge196

._crit_edge196:                                   ; preds = %.lr.ph195.split.preheader, %._crit_edge196.loopexit, %.thread
  %.1171.lcssa = phi i32 [ %.0170, %.thread ], [ %i.gd, %._crit_edge196.loopexit ], [ %i.dn, %.lr.ph195.split.preheader ]
  %.1169.lcssa = phi ptr [ %.0168, %.thread ], [ %i.ge, %._crit_edge196.loopexit ], [ %scevgep, %.lr.ph195.split.preheader ] ; 8 uses
  %.2.lcssa = phi i32 [ %.1, %.thread ], [ %i.gg, %._crit_edge196.loopexit ], [ %i.dl, %.lr.ph195.split.preheader ] ; 2 uses
  %i.gh = icmp eq i32 %.1171.lcssa, 8
  br i1 %i.gh, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %._crit_edge196
  %i.gi = add nsw i32 %.2.lcssa, -8               ; 3 uses
  %i.gj = icmp sgt i32 %4, 0
  br i1 %i.gj, label %.lr.ph203, label %.loopexit

.lr.ph203:                                        ; preds = %bb.h
  %i.gk = sext i32 %i.gi to i64
  %invariant.gep204 = getelementptr [2 x i8], ptr %2, i64 %i.gk
  %i.gl = mul nuw nsw i32 %4, 14
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr %.1169.lcssa, i64 %i.gm
  %i.go = mul nuw nsw i32 %4, 6
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %.1169.lcssa, i64 %i.gp
  %i.gr = mul nuw nsw i32 %4, 12
  %i.gs = zext nneg i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %.1169.lcssa, i64 %i.gs
  %i.gu = mul nuw nsw i32 %4, 10
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = getelementptr inbounds nuw i8, ptr %.1169.lcssa, i64 %i.gv
  %i.gx = shl nuw nsw i32 %4, 1
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %.1169.lcssa, i64 %i.gy
  %i.ha = shl nuw nsw i32 %4, 3
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %.1169.lcssa, i64 %i.hb
  %i.hd = shl nuw nsw i32 %4, 2
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %.1169.lcssa, i64 %i.he
  %wide.trip.count229 = zext nneg i32 %4 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph203, %bb.i
  %indvars.iv226 = phi i64 [ 0, %.lr.ph203 ], [ %indvars.iv.next227, %bb.i ] ; 3 uses
  %gep205 = getelementptr [656 x i8], ptr %invariant.gep204, i64 %indvars.iv226 ; 8 uses
  %i.hg = shl nuw nsw i64 %indvars.iv226, 1       ; 8 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.hg
  %i.hi = load i16, ptr %i.hh, align 1, !tbaa !19
  %i.hj = getelementptr inbounds i8, ptr %gep205, i64 -14
  store i16 %i.hi, ptr %i.hj, align 2, !tbaa !15
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.hg
  %i.hl = load i16, ptr %i.hk, align 1, !tbaa !19
  %i.hm = getelementptr inbounds nuw i8, ptr %gep205, i64 2
  store i16 %i.hl, ptr %i.hm, align 2, !tbaa !15
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.hg
  %i.ho = load i16, ptr %i.hn, align 1, !tbaa !19
  %i.hp = getelementptr inbounds nuw i8, ptr %gep205, i64 4
  store i16 %i.ho, ptr %i.hp, align 2, !tbaa !15
  %i.hq = getelementptr inbounds nuw i8, ptr %.1169.lcssa, i64 %i.hg
  %i.hr = load i16, ptr %i.hq, align 1, !tbaa !19
  %i.hs = getelementptr inbounds nuw i8, ptr %gep205, i64 6
  store i16 %i.hr, ptr %i.hs, align 2, !tbaa !15
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.hg
  %i.hu = load i16, ptr %i.ht, align 1, !tbaa !19
  %i.hv = getelementptr inbounds nuw i8, ptr %gep205, i64 8
  store i16 %i.hu, ptr %i.hv, align 2, !tbaa !15
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.hg
  %i.hx = load i16, ptr %i.hw, align 1, !tbaa !19
  %i.hy = getelementptr inbounds nuw i8, ptr %gep205, i64 10
  store i16 %i.hx, ptr %i.hy, align 2, !tbaa !15
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hg
  %i.ia = load i16, ptr %i.hz, align 1, !tbaa !19
  %i.ib = getelementptr inbounds nuw i8, ptr %gep205, i64 12
  store i16 %i.ia, ptr %i.ib, align 2, !tbaa !15
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hg
  %i.id = load i16, ptr %i.ic, align 1, !tbaa !19
  %i.ie = getelementptr inbounds nuw i8, ptr %gep205, i64 14
  store i16 %i.id, ptr %i.ie, align 2, !tbaa !15
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count229
  br i1 %exitcond230.not, label %.loopexit, label %bb.i, !llvm.loop !34

.loopexit:                                        ; preds = %bb.i, %bb.h, %._crit_edge196
  %.3 = phi i32 [ %.2.lcssa, %._crit_edge196 ], [ %i.gi, %bb.h ], [ %i.gi, %bb.i ]
  ret i32 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @sbc_calc_scalefactors(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  %i.b = icmp sgt i32 %4, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader34.lr.ph.split, label %._crit_edge46.split

.preheader34.lr.ph.split:                         ; preds = %bb.a
  %i.c = icmp sgt i32 %2, 0
  %wide.trip.count69 = zext nneg i32 %3 to i64    ; 2 uses
  %wide.trip.count64 = zext nneg i32 %4 to i64    ; 4 uses
  br i1 %i.c, label %.preheader34.us.preheader, label %.preheader34.preheader

.preheader34.preheader:                           ; preds = %.preheader34.lr.ph.split
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count64, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count64
  br label %.preheader34

.preheader34.us.preheader:                        ; preds = %.preheader34.lr.ph.split
  %wide.trip.count59 = zext nneg i32 %2 to i64    ; 3 uses
  %min.iters.check76 = icmp ult i32 %2, 8
  %n.vec78 = and i64 %wide.trip.count59, 2147483640 ; 3 uses
  %cmp.n84 = icmp eq i64 %n.vec78, %wide.trip.count59
  br label %.preheader34.us

.preheader34.us:                                  ; preds = %.preheader34.us.preheader, %._crit_edge.split.us.us
  %indvars.iv66 = phi i64 [ 0, %.preheader34.us.preheader ], [ %indvars.iv.next67, %._crit_edge.split.us.us ] ; 3 uses
  %invariant.gep.us = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %indvars.iv66
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv66
  br label %.preheader33.us.us

.preheader33.us.us:                               ; preds = %ff_clz_c.exit.us.us, %.preheader34.us
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %ff_clz_c.exit.us.us ], [ 0, %.preheader34.us ] ; 3 uses
  %invariant.gep37.us.us = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.us, i64 %indvars.iv61 ; 9 uses
  br i1 %min.iters.check76, label %scalar.ph75.preheader, label %vector.body79

vector.body79:                                    ; preds = %.preheader33.us.us, %vector.body79
  %index80 = phi i64 [ %index.next82, %vector.body79 ], [ 0, %.preheader33.us.us ] ; 9 uses
  %vec.phi = phi <4 x i32> [ %i.ar, %vector.body79 ], [ <i32 32768, i32 0, i32 0, i32 0>, %.preheader33.us.us ]
  %vec.phi81 = phi <4 x i32> [ %i.as, %vector.body79 ], [ zeroinitializer, %.preheader33.us.us ]
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep37.us.us, i64 %index80
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep37.us.us, i64 %index80
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep37.us.us, i64 %index80
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep37.us.us, i64 %index80
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep37.us.us, i64 %index80
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep37.us.us, i64 %index80
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 320
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep37.us.us, i64 %index80
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 384
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep37.us.us, i64 %index80
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 448
  %i.t = load i32, ptr %i.e, align 4, !tbaa !16
  %i.u = load i32, ptr %i.g, align 4, !tbaa !16
  %i.v = load i32, ptr %i.i, align 4, !tbaa !16
  %i.w = load i32, ptr %i.k, align 4, !tbaa !16
  %i.x = insertelement <4 x i32> poison, i32 %i.t, i64 0
  %i.y = insertelement <4 x i32> %i.x, i32 %i.u, i64 1
  %i.z = insertelement <4 x i32> %i.y, i32 %i.v, i64 2
  %i.aa = insertelement <4 x i32> %i.z, i32 %i.w, i64 3 ; 2 uses
  %i.ab = load i32, ptr %i.m, align 4, !tbaa !16
  %i.ac = load i32, ptr %i.o, align 4, !tbaa !16
  %i.ad = load i32, ptr %i.q, align 4, !tbaa !16
  %i.ae = load i32, ptr %i.s, align 4, !tbaa !16
  %i.af = insertelement <4 x i32> poison, i32 %i.ab, i64 0
  %i.ag = insertelement <4 x i32> %i.af, i32 %i.ac, i64 1
  %i.ah = insertelement <4 x i32> %i.ag, i32 %i.ad, i64 2
  %i.ai = insertelement <4 x i32> %i.ah, i32 %i.ae, i64 3 ; 2 uses
  %i.aj = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.aa, i1 true)
  %i.ak = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ai, i1 true)
  %i.al = icmp eq <4 x i32> %i.aa, zeroinitializer
  %i.am = icmp eq <4 x i32> %i.ai, zeroinitializer
  %i.an = add nsw <4 x i32> %i.aj, splat (i32 -1)
  %i.ao = add nsw <4 x i32> %i.ak, splat (i32 -1)
  %i.ap = select <4 x i1> %i.al, <4 x i32> zeroinitializer, <4 x i32> %i.an
  %i.aq = select <4 x i1> %i.am, <4 x i32> zeroinitializer, <4 x i32> %i.ao
  %i.ar = or <4 x i32> %i.ap, %vec.phi            ; 2 uses
  %i.as = or <4 x i32> %i.aq, %vec.phi81          ; 2 uses
  %index.next82 = add nuw i64 %index80, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next82, %n.vec78
  br i1 %i.at, label %middle.block83, label %vector.body79, !llvm.loop !35

middle.block83:                                   ; preds = %vector.body79
  %bin.rdx = or <4 x i32> %i.as, %i.ar
  %i.au = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n84, label %ff_clz_c.exit.us.us, label %scalar.ph75.preheader

scalar.ph75.preheader:                            ; preds = %.preheader33.us.us, %middle.block83
  %indvars.iv56.ph = phi i64 [ 0, %.preheader33.us.us ], [ %n.vec78, %middle.block83 ]
  %.036.us.us.ph = phi i32 [ 32768, %.preheader33.us.us ], [ %i.au, %middle.block83 ]
  br label %scalar.ph75

scalar.ph75:                                      ; preds = %scalar.ph75.preheader, %scalar.ph75
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %scalar.ph75 ], [ %indvars.iv56.ph, %scalar.ph75.preheader ] ; 2 uses
  %.036.us.us = phi i32 [ %.1.us.us, %scalar.ph75 ], [ %.036.us.us.ph, %scalar.ph75.preheader ]
  %gep38.us.us = getelementptr inbounds nuw [64 x i8], ptr %invariant.gep37.us.us, i64 %indvars.iv56
  %i.av = load i32, ptr %gep38.us.us, align 4, !tbaa !16 ; 2 uses
  %i.aw = tail call i32 @llvm.abs.i32(i32 %i.av, i1 true)
  %.not.us.us = icmp eq i32 %i.av, 0
  %i.ax = add nsw i32 %i.aw, -1
  %i.ay = select i1 %.not.us.us, i32 0, i32 %i.ax
  %.1.us.us = or i32 %i.ay, %.036.us.us           ; 2 uses
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %ff_clz_c.exit.us.us, label %scalar.ph75, !llvm.loop !36

ff_clz_c.exit.us.us:                              ; preds = %scalar.ph75, %middle.block83
  %.1.us.us.lcssa = phi i32 [ %i.au, %middle.block83 ], [ %.1.us.us, %scalar.ph75 ]
  %i.az = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.1.us.us.lcssa, i1 true)
  %i.ba = sub nuw nsw i32 16, %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv61
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !16
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %wide.trip.count64
  br i1 %exitcond65.not, label %._crit_edge.split.us.us, label %.preheader33.us.us, !llvm.loop !37

._crit_edge.split.us.us:                          ; preds = %ff_clz_c.exit.us.us
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count69
  br i1 %exitcond70.not, label %._crit_edge46.split, label %.preheader34.us, !llvm.loop !38

.preheader34:                                     ; preds = %.preheader34.preheader, %._crit_edge.split
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %._crit_edge.split ], [ 0, %.preheader34.preheader ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv51 ; 2 uses
  br i1 %min.iters.check, label %.preheader33.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader34, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader34 ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store <4 x i32> zeroinitializer, ptr %i.bd, align 4, !tbaa !16
  store <4 x i32> zeroinitializer, ptr %i.be, align 4, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split, label %.preheader33.preheader

.preheader33.preheader:                           ; preds = %.preheader34, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader34 ], [ %n.vec, %middle.block ]
  br label %.preheader33

.preheader33:                                     ; preds = %.preheader33.preheader, %.preheader33
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader33 ], [ %indvars.iv.ph, %.preheader33.preheader ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  store i32 0, ptr %i.bg, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count64
  br i1 %exitcond.not, label %._crit_edge.split, label %.preheader33, !llvm.loop !40

._crit_edge.split:                                ; preds = %.preheader33, %middle.block
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count69
  br i1 %exitcond55.not, label %._crit_edge46.split, label %.preheader34, !llvm.loop !38

._crit_edge46.split:                              ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @sbc_calc_scalefactors_j(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) #4 {
bb.a:
  %i.a = alloca [16 x [2 x i32]], align 16        ; 11 uses
  %i.b = add nsw i32 %3, -1                       ; 3 uses
  %i.c = icmp sgt i32 %2, 0                       ; 3 uses
  br i1 %i.c, label %.lr.ph, label %ff_clz_c.exit160

.lr.ph:                                           ; preds = %bb.a
  %4 = sext i32 %i.b to i64                       ; 18 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %vec.phi = phi <4 x i32> [ <i32 32768, i32 0, i32 0, i32 0>, %vector.ph ], [ %i.co, %vector.body ]
  %vec.phi251 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cp, %vector.body ]
  %vec.phi252 = phi <4 x i32> [ <i32 32768, i32 0, i32 0, i32 0>, %vector.ph ], [ %i.cg, %vector.body ]
  %vec.phi253 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ch, %vector.body ]
  %i.d = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  %i.m = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 320
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 384
  %i.q = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 448
  %i.s = getelementptr inbounds [4 x i8], ptr %i.d, i64 %4
  %i.t = getelementptr inbounds [4 x i8], ptr %i.f, i64 %4
  %i.u = getelementptr inbounds [4 x i8], ptr %i.h, i64 %4
  %i.v = getelementptr inbounds [4 x i8], ptr %i.j, i64 %4
  %i.w = getelementptr inbounds [4 x i8], ptr %i.l, i64 %4
  %i.x = getelementptr inbounds [4 x i8], ptr %i.n, i64 %4
  %i.y = getelementptr inbounds [4 x i8], ptr %i.p, i64 %4
  %i.z = getelementptr inbounds [4 x i8], ptr %i.r, i64 %4
  %i.aa = load i32, ptr %i.s, align 4, !tbaa !16
  %i.ab = load i32, ptr %i.t, align 4, !tbaa !16
  %i.ac = load i32, ptr %i.u, align 4, !tbaa !16
  %i.ad = load i32, ptr %i.v, align 4, !tbaa !16
  %i.ae = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %i.af = insertelement <4 x i32> %i.ae, i32 %i.ab, i64 1
  %i.ag = insertelement <4 x i32> %i.af, i32 %i.ac, i64 2
  %i.ah = insertelement <4 x i32> %i.ag, i32 %i.ad, i64 3 ; 2 uses
  %i.ai = load i32, ptr %i.w, align 4, !tbaa !16
  %i.aj = load i32, ptr %i.x, align 4, !tbaa !16
  %i.ak = load i32, ptr %i.y, align 4, !tbaa !16
  %i.al = load i32, ptr %i.z, align 4, !tbaa !16
  %i.am = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %i.an = insertelement <4 x i32> %i.am, i32 %i.aj, i64 1
  %i.ao = insertelement <4 x i32> %i.an, i32 %i.ak, i64 2
  %i.ap = insertelement <4 x i32> %i.ao, i32 %i.al, i64 3 ; 2 uses
  %i.aq = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ah, i1 true)
  %i.ar = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ap, i1 true)
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 288
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 352
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 416
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 480
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.as, i64 %4
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.at, i64 %4
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.au, i64 %4
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.av, i64 %4
  %i.be = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %4
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %4
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %4
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.az, i64 %4
  %i.bi = load i32, ptr %i.ba, align 4, !tbaa !16
  %i.bj = load i32, ptr %i.bb, align 4, !tbaa !16
  %i.bk = load i32, ptr %i.bc, align 4, !tbaa !16
  %i.bl = load i32, ptr %i.bd, align 4, !tbaa !16
  %i.bm = insertelement <4 x i32> poison, i32 %i.bi, i64 0
  %i.bn = insertelement <4 x i32> %i.bm, i32 %i.bj, i64 1
  %i.bo = insertelement <4 x i32> %i.bn, i32 %i.bk, i64 2
  %i.bp = insertelement <4 x i32> %i.bo, i32 %i.bl, i64 3 ; 2 uses
  %i.bq = load i32, ptr %i.be, align 4, !tbaa !16
  %i.br = load i32, ptr %i.bf, align 4, !tbaa !16
  %i.bs = load i32, ptr %i.bg, align 4, !tbaa !16
  %i.bt = load i32, ptr %i.bh, align 4, !tbaa !16
  %i.bu = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %i.bv = insertelement <4 x i32> %i.bu, i32 %i.br, i64 1
  %i.bw = insertelement <4 x i32> %i.bv, i32 %i.bs, i64 2
  %i.bx = insertelement <4 x i32> %i.bw, i32 %i.bt, i64 3 ; 2 uses
  %i.by = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bp, i1 true)
  %i.bz = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.bx, i1 true)
  %i.ca = icmp eq <4 x i32> %i.ah, zeroinitializer
  %i.cb = icmp eq <4 x i32> %i.ap, zeroinitializer
  %i.cc = add nsw <4 x i32> %i.aq, splat (i32 -1)
  %i.cd = add nsw <4 x i32> %i.ar, splat (i32 -1)
  %i.ce = select <4 x i1> %i.ca, <4 x i32> zeroinitializer, <4 x i32> %i.cc
  %i.cf = select <4 x i1> %i.cb, <4 x i32> zeroinitializer, <4 x i32> %i.cd
  %i.cg = or <4 x i32> %i.ce, %vec.phi252         ; 2 uses
  %i.ch = or <4 x i32> %i.cf, %vec.phi253         ; 2 uses
  %i.ci = icmp eq <4 x i32> %i.bp, zeroinitializer
  %i.cj = icmp eq <4 x i32> %i.bx, zeroinitializer
  %i.ck = add nsw <4 x i32> %i.by, splat (i32 -1)
  %i.cl = add nsw <4 x i32> %i.bz, splat (i32 -1)
  %i.cm = select <4 x i1> %i.ci, <4 x i32> zeroinitializer, <4 x i32> %i.ck
  %i.cn = select <4 x i1> %i.cj, <4 x i32> zeroinitializer, <4 x i32> %i.cl
  %i.co = or <4 x i32> %i.cm, %vec.phi            ; 2 uses
  %i.cp = or <4 x i32> %i.cn, %vec.phi251         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cq = icmp eq i64 %index.next, %n.vec
  br i1 %i.cq, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.cp, %i.co
  %i.cr = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx254 = or <4 x i32> %i.ch, %i.cg
  %i.cs = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx254) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader166.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.0111169.ph = phi i32 [ 32768, %.lr.ph ], [ %i.cr, %middle.block ]
  %.0112168.ph = phi i32 [ 32768, %.lr.ph ], [ %i.cs, %middle.block ]
  br label %scalar.ph

.preheader166.loopexit:                           ; preds = %scalar.ph, %middle.block
  %.1113.lcssa = phi i32 [ %i.cs, %middle.block ], [ %.1113, %scalar.ph ]
  %.1.lcssa = phi i32 [ %i.cr, %middle.block ], [ %.1, %scalar.ph ]
  %i.ct = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.1113.lcssa, i1 true)
  %i.cu = sub nuw nsw i32 16, %i.ct
  %i.cv = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.1.lcssa, i1 true)
  %i.cw = sub nuw nsw i32 16, %i.cv
  br label %ff_clz_c.exit160

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.0111169 = phi i32 [ %.1, %scalar.ph ], [ %.0111169.ph, %scalar.ph.preheader ]
  %.0112168 = phi i32 [ %.1113, %scalar.ph ], [ %.0112168.ph, %scalar.ph.preheader ]
  %i.cx = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !16 ; 2 uses
  %i.da = tail call i32 @llvm.abs.i32(i32 %i.cz, i1 true)
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 32
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.db, i64 %4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !16 ; 2 uses
  %i.de = tail call i32 @llvm.abs.i32(i32 %i.dd, i1 true)
  %.not143 = icmp eq i32 %i.cz, 0
  %i.df = add nsw i32 %i.da, -1
  %i.dg = select i1 %.not143, i32 0, i32 %i.df
  %.1113 = or i32 %i.dg, %.0112168                ; 2 uses
  %.not144 = icmp eq i32 %i.dd, 0
  %i.dh = add nsw i32 %i.de, -1
  %i.di = select i1 %.not144, i32 0, i32 %i.dh
  %.1 = or i32 %i.di, %.0111169                   ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader166.loopexit, label %scalar.ph, !llvm.loop !42

ff_clz_c.exit160:                                 ; preds = %.preheader166.loopexit, %bb.a
  %.0112.lcssa = phi i32 [ 0, %bb.a ], [ %i.cu, %.preheader166.loopexit ]
  %.0111.lcssa = phi i32 [ 0, %bb.a ], [ %i.cw, %.preheader166.loopexit ]
  %5 = sext i32 %i.b to i64                       ; 2 uses
  %6 = getelementptr inbounds [4 x i8], ptr %1, i64 %5
  store i32 %.0112.lcssa, ptr %6, align 4, !tbaa !16
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %8 = getelementptr inbounds [4 x i8], ptr %7, i64 %5
  store i32 %.0111.lcssa, ptr %8, align 4, !tbaa !16
  %9 = icmp sgt i32 %3, 1
  br i1 %9, label %.lr.ph217, label %._crit_edge

.lr.ph217:                                        ; preds = %ff_clz_c.exit160
  %i.dj = add nsw i32 %3, -2
  %i.dk = zext nneg i32 %i.dj to i64
  %wide.trip.count228 = zext i32 %2 to i64        ; 7 uses
  %wide.trip.count233 = zext nneg i32 %2 to i64
  %min.iters.check279 = icmp ult i32 %2, 4
  %n.vec281 = and i64 %wide.trip.count228, 2147483644 ; 3 uses
  %cmp.n294 = icmp eq i64 %n.vec281, %wide.trip.count228
  %min.iters.check257 = icmp ult i32 %2, 8
  %n.vec259 = and i64 %wide.trip.count228, 2147483640 ; 3 uses
  %cmp.n274 = icmp eq i64 %n.vec259, %wide.trip.count228
  %xtraiter = and i64 %wide.trip.count228, 1
  %i.dl = icmp eq i32 %2, 1
  %unroll_iter = and i64 %wide.trip.count228, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod313 = trunc i32 %2 to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph217, %.loopexit
  %indvars.iv240 = phi i64 [ %i.dk, %.lr.ph217 ], [ %indvars.iv.next241, %.loopexit ] ; 23 uses
  %.0216 = phi i32 [ %i.b, %.lr.ph217 ], [ %i.js, %.loopexit ]
  %.0118215 = phi i32 [ 0, %.lr.ph217 ], [ %.1119, %.loopexit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  br i1 %i.c, label %.lr.ph184.preheader, label %ff_clz_c.exit152.thread

.lr.ph184.preheader:                              ; preds = %bb.b
  br i1 %min.iters.check279, label %.lr.ph184.preheader298, label %vector.body282

vector.body282:                                   ; preds = %.lr.ph184.preheader, %vector.body282
  %index283 = phi i64 [ %index.next290, %vector.body282 ], [ 0, %.lr.ph184.preheader ] ; 6 uses
  %vec.phi284 = phi <2 x i32> [ %i.fv, %vector.body282 ], [ <i32 32768, i32 0>, %.lr.ph184.preheader ]
  %vec.phi285 = phi <2 x i32> [ %i.fw, %vector.body282 ], [ zeroinitializer, %.lr.ph184.preheader ]
  %vec.phi286 = phi <2 x i32> [ %predphi, %vector.body282 ], [ <i32 32768, i32 0>, %.lr.ph184.preheader ]
  %vec.phi287 = phi <2 x i32> [ %predphi289, %vector.body282 ], [ zeroinitializer, %.lr.ph184.preheader ]
  %i.dm = or disjoint i64 %index283, 2            ; 2 uses
  %i.dn = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %index283 ; 2 uses
  %i.do = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %index283 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 64
  %i.dq = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %i.dm ; 2 uses
  %i.dr = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %index283 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 192
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv240
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv240
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %indvars.iv240
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv240
  %i.dx = load i32, ptr %i.dt, align 4, !tbaa !16
  %i.dy = load i32, ptr %i.du, align 4, !tbaa !16
  %i.dz = insertelement <2 x i32> poison, i32 %i.dx, i64 0
  %i.ea = insertelement <2 x i32> %i.dz, i32 %i.dy, i64 1 ; 3 uses
  %i.eb = load i32, ptr %i.dv, align 4, !tbaa !16
  %i.ec = load i32, ptr %i.dw, align 4, !tbaa !16
  %i.ed = insertelement <2 x i32> poison, i32 %i.eb, i64 0
  %i.ee = insertelement <2 x i32> %i.ed, i32 %i.ec, i64 1 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.eg = getelementptr inbounds nuw i8, ptr %i.do, i64 96
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dr, i64 224
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %indvars.iv240
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv240
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv240
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv240
  %i.en = load i32, ptr %i.ej, align 4, !tbaa !16
  %i.eo = load i32, ptr %i.ek, align 4, !tbaa !16
  %i.ep = insertelement <2 x i32> poison, i32 %i.en, i64 0
  %i.eq = insertelement <2 x i32> %i.ep, i32 %i.eo, i64 1 ; 3 uses
  %i.er = load i32, ptr %i.el, align 4, !tbaa !16
  %i.es = load i32, ptr %i.em, align 4, !tbaa !16
  %i.et = insertelement <2 x i32> poison, i32 %i.er, i64 0
  %i.eu = insertelement <2 x i32> %i.et, i32 %i.es, i64 1 ; 3 uses
  %i.ev = ashr <2 x i32> %i.ea, splat (i32 1)     ; 2 uses
  %i.ew = ashr <2 x i32> %i.ee, splat (i32 1)     ; 2 uses
  %i.ex = ashr <2 x i32> %i.eq, splat (i32 1)     ; 2 uses
  %i.ey = ashr <2 x i32> %i.eu, splat (i32 1)     ; 2 uses
  %i.ez = add nsw <2 x i32> %i.ex, %i.ev
  %i.fa = add nsw <2 x i32> %i.ey, %i.ew
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index283
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.dm
  %i.fd = sub nsw <2 x i32> %i.ev, %i.ex
  %i.fe = sub nsw <2 x i32> %i.ew, %i.ey
  %interleaved.vec = shufflevector <2 x i32> %i.ez, <2 x i32> %i.fd, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.fb, align 16, !tbaa !16
  %interleaved.vec288 = shufflevector <2 x i32> %i.fa, <2 x i32> %i.fe, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec288, ptr %i.fc, align 16, !tbaa !16
  %i.ff = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.eq, i1 true)
  %i.fg = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.eu, i1 true)
  %i.fh = icmp eq <2 x i32> %i.ea, zeroinitializer
  %i.fi = icmp eq <2 x i32> %i.ee, zeroinitializer
  %i.fj = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.ea, i1 true)
  %i.fk = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.ee, i1 true)
  %i.fl = add nsw <2 x i32> %i.fj, splat (i32 -1)
  %i.fm = add nsw <2 x i32> %i.fk, splat (i32 -1)
  %i.fn = select <2 x i1> %i.fh, <2 x i32> zeroinitializer, <2 x i32> %i.fl
  %predphi = or <2 x i32> %vec.phi286, %i.fn      ; 2 uses
  %i.fo = select <2 x i1> %i.fi, <2 x i32> zeroinitializer, <2 x i32> %i.fm
  %predphi289 = or <2 x i32> %vec.phi287, %i.fo   ; 2 uses
  %i.fp = icmp eq <2 x i32> %i.eq, zeroinitializer
  %i.fq = icmp eq <2 x i32> %i.eu, zeroinitializer
  %i.fr = add nsw <2 x i32> %i.ff, splat (i32 -1)
  %i.fs = add nsw <2 x i32> %i.fg, splat (i32 -1)
  %i.ft = select <2 x i1> %i.fp, <2 x i32> zeroinitializer, <2 x i32> %i.fr
  %i.fu = select <2 x i1> %i.fq, <2 x i32> zeroinitializer, <2 x i32> %i.fs
  %i.fv = or <2 x i32> %i.ft, %vec.phi284         ; 2 uses
  %i.fw = or <2 x i32> %i.fu, %vec.phi285         ; 2 uses
  %index.next290 = add nuw i64 %index283, 4       ; 2 uses
  %i.fx = icmp eq i64 %index.next290, %n.vec281
  br i1 %i.fx, label %middle.block291, label %vector.body282, !llvm.loop !43

middle.block291:                                  ; preds = %vector.body282
  %bin.rdx292 = or <2 x i32> %i.fw, %i.fv
  %i.fy = tail call i32 @llvm.vector.reduce.or.v2i32(<2 x i32> %bin.rdx292) ; 2 uses
  %bin.rdx293 = or <2 x i32> %predphi289, %predphi
  %i.fz = tail call i32 @llvm.vector.reduce.or.v2i32(<2 x i32> %bin.rdx293) ; 2 uses
  br i1 %cmp.n294, label %ff_clz_c.exit152, label %.lr.ph184.preheader298

.lr.ph184.preheader298:                           ; preds = %.lr.ph184.preheader, %middle.block291
  %indvars.iv225.ph = phi i64 [ 0, %.lr.ph184.preheader ], [ %n.vec281, %middle.block291 ]
  %.2183.ph = phi i32 [ 32768, %.lr.ph184.preheader ], [ %i.fy, %middle.block291 ]
  %.2114182.ph = phi i32 [ 32768, %.lr.ph184.preheader ], [ %i.fz, %middle.block291 ]
  br label %.lr.ph184

ff_clz_c.exit152.thread:                          ; preds = %bb.b
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv240 ; 2 uses
  store i32 0, ptr %i.ga, align 4, !tbaa !16
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv240 ; 2 uses
  store i32 0, ptr %i.gb, align 4, !tbaa !16
  br label %ff_clz_c.exit

.lr.ph184:                                        ; preds = %.lr.ph184.preheader298, %bb.d
  %indvars.iv225 = phi i64 [ %indvars.iv.next226, %bb.d ], [ %indvars.iv225.ph, %.lr.ph184.preheader298 ] ; 3 uses
  %.2183 = phi i32 [ %.3, %bb.d ], [ %.2183.ph, %.lr.ph184.preheader298 ]
  %.2114182 = phi i32 [ %.3115, %bb.d ], [ %.2114182.ph, %.lr.ph184.preheader298 ] ; 2 uses
  %i.gc = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %indvars.iv225 ; 2 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv240
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !16 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv240
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !16 ; 3 uses
  %i.gi = ashr i32 %i.ge, 1                       ; 2 uses
  %i.gj = ashr i32 %i.gh, 1                       ; 2 uses
  %i.gk = add nsw i32 %i.gj, %i.gi
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv225 ; 2 uses
  store i32 %i.gk, ptr %i.gl, align 8, !tbaa !16
  %i.gm = sub nsw i32 %i.gi, %i.gj
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 4
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !16
  %i.go = tail call i32 @llvm.abs.i32(i32 %i.gh, i1 true)
  %.not141 = icmp eq i32 %i.ge, 0
  br i1 %.not141, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph184
  %i.gp = tail call i32 @llvm.abs.i32(i32 %i.ge, i1 true)
  %i.gq = add nsw i32 %i.gp, -1
  %i.gr = or i32 %i.gq, %.2114182
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph184
  %.3115 = phi i32 [ %i.gr, %bb.c ], [ %.2114182, %.lr.ph184 ] ; 2 uses
  %.not142 = icmp eq i32 %i.gh, 0
  %i.gs = add nsw i32 %i.go, -1
  %i.gt = select i1 %.not142, i32 0, i32 %i.gs
  %.3 = or i32 %i.gt, %.2183                      ; 2 uses
  %indvars.iv.next226 = add nuw nsw i64 %indvars.iv225, 1 ; 2 uses
  %exitcond229.not = icmp eq i64 %indvars.iv.next226, %wide.trip.count228
  br i1 %exitcond229.not, label %ff_clz_c.exit152, label %.lr.ph184, !llvm.loop !44

ff_clz_c.exit152:                                 ; preds = %bb.d, %middle.block291
  %.3115.lcssa = phi i32 [ %i.fz, %middle.block291 ], [ %.3115, %bb.d ]
  %.3.lcssa = phi i32 [ %i.fy, %middle.block291 ], [ %.3, %bb.d ]
  %i.gu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.3115.lcssa, i1 true)
  %i.gv = sub nuw nsw i32 16, %i.gu               ; 2 uses
  %i.gw = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.3.lcssa, i1 true)
  %i.gx = sub nuw nsw i32 16, %i.gw               ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv240 ; 2 uses
  store i32 %i.gv, ptr %i.gy, align 4, !tbaa !16
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv240 ; 2 uses
  store i32 %i.gx, ptr %i.gz, align 4, !tbaa !16
  br i1 %min.iters.check257, label %.lr.ph200.preheader, label %vector.body260

vector.body260:                                   ; preds = %ff_clz_c.exit152, %vector.body260
  %index261 = phi i64 [ %index.next270, %vector.body260 ], [ 0, %ff_clz_c.exit152 ] ; 3 uses
  %vec.phi262 = phi <4 x i32> [ %i.hv, %vector.body260 ], [ <i32 32768, i32 0, i32 0, i32 0>, %ff_clz_c.exit152 ]
  %vec.phi263 = phi <4 x i32> [ %i.hw, %vector.body260 ], [ zeroinitializer, %ff_clz_c.exit152 ]
  %vec.phi264 = phi <4 x i32> [ %i.hn, %vector.body260 ], [ <i32 32768, i32 0, i32 0, i32 0>, %ff_clz_c.exit152 ]
  %vec.phi265 = phi <4 x i32> [ %i.ho, %vector.body260 ], [ zeroinitializer, %ff_clz_c.exit152 ]
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index261
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index261
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  %wide.vec = load <8 x i32>, ptr %i.ha, align 16, !tbaa !16 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec266 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %wide.vec267 = load <8 x i32>, ptr %i.hc, align 16, !tbaa !16 ; 2 uses
  %strided.vec268 = shufflevector <8 x i32> %wide.vec267, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec269 = shufflevector <8 x i32> %wide.vec267, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.hd = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %strided.vec, i1 true)
  %i.he = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %strided.vec268, i1 true)
  %i.hf = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %strided.vec266, i1 true)
  %i.hg = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %strided.vec269, i1 true)
  %i.hh = icmp eq <4 x i32> %strided.vec, zeroinitializer
  %i.hi = icmp eq <4 x i32> %strided.vec268, zeroinitializer
  %i.hj = add nsw <4 x i32> %i.hd, splat (i32 -1)
  %i.hk = add nsw <4 x i32> %i.he, splat (i32 -1)
  %i.hl = select <4 x i1> %i.hh, <4 x i32> zeroinitializer, <4 x i32> %i.hj
  %i.hm = select <4 x i1> %i.hi, <4 x i32> zeroinitializer, <4 x i32> %i.hk
  %i.hn = or <4 x i32> %i.hl, %vec.phi264         ; 2 uses
  %i.ho = or <4 x i32> %i.hm, %vec.phi265         ; 2 uses
  %i.hp = icmp eq <4 x i32> %strided.vec266, zeroinitializer
  %i.hq = icmp eq <4 x i32> %strided.vec269, zeroinitializer
  %i.hr = add nsw <4 x i32> %i.hf, splat (i32 -1)
  %i.hs = add nsw <4 x i32> %i.hg, splat (i32 -1)
  %i.ht = select <4 x i1> %i.hp, <4 x i32> zeroinitializer, <4 x i32> %i.hr
  %i.hu = select <4 x i1> %i.hq, <4 x i32> zeroinitializer, <4 x i32> %i.hs
  %i.hv = or <4 x i32> %i.ht, %vec.phi262         ; 2 uses
  %i.hw = or <4 x i32> %i.hu, %vec.phi263         ; 2 uses
  %index.next270 = add nuw i64 %index261, 8       ; 2 uses
  %i.hx = icmp eq i64 %index.next270, %n.vec259
  br i1 %i.hx, label %middle.block271, label %vector.body260, !llvm.loop !45

middle.block271:                                  ; preds = %vector.body260
  %bin.rdx272 = or <4 x i32> %i.hw, %i.hv
  %i.hy = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx272)
  %bin.rdx273 = or <4 x i32> %i.ho, %i.hn
  %i.hz = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx273)
  %i.ia = insertelement <2 x i32> poison, i32 %i.hz, i64 0
  %i.ib = insertelement <2 x i32> %i.ia, i32 %i.hy, i64 1 ; 2 uses
  br i1 %cmp.n274, label %.preheader.loopexit, label %.lr.ph200.preheader

.lr.ph200.preheader:                              ; preds = %ff_clz_c.exit152, %middle.block271
  %indvars.iv230.ph = phi i64 [ 0, %ff_clz_c.exit152 ], [ %n.vec259, %middle.block271 ]
  %.ph = phi <2 x i32> [ splat (i32 32768), %ff_clz_c.exit152 ], [ %i.ib, %middle.block271 ]
  br label %.lr.ph200

.preheader.loopexit:                              ; preds = %.lr.ph200, %middle.block271
  %i.ic = phi <2 x i32> [ %i.ib, %middle.block271 ], [ %i.ip, %.lr.ph200 ] ; 2 uses
  %i.id = extractelement <2 x i32> %i.ic, i64 0
  %i.ie = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.id, i1 true)
  %10 = sub nuw nsw i32 16, %i.ie
  %11 = extractelement <2 x i32> %i.ic, i64 1
  %i.if = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %11, i1 true)
  %i.ig = sub nuw nsw i32 16, %i.if
  %i.ih = add nuw nsw i32 %i.gx, %i.gv
  br label %ff_clz_c.exit

.lr.ph200:                                        ; preds = %.lr.ph200.preheader, %.lr.ph200
  %indvars.iv230 = phi i64 [ %indvars.iv.next231, %.lr.ph200 ], [ %indvars.iv230.ph, %.lr.ph200.preheader ] ; 2 uses
  %i.ii = phi <2 x i32> [ %i.ip, %.lr.ph200 ], [ %.ph, %.lr.ph200.preheader ]
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv230
  %i.ik = load <2 x i32>, ptr %i.ij, align 8, !tbaa !16 ; 2 uses
  %i.il = tail call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.ik, i1 true)
  %i.im = icmp eq <2 x i32> %i.ik, zeroinitializer
  %i.in = add nsw <2 x i32> %i.il, splat (i32 -1)
  %i.io = select <2 x i1> %i.im, <2 x i32> zeroinitializer, <2 x i32> %i.in
  %i.ip = or <2 x i32> %i.io, %i.ii               ; 2 uses
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next231, %wide.trip.count233
  br i1 %exitcond234.not, label %.preheader.loopexit, label %.lr.ph200, !llvm.loop !46

ff_clz_c.exit:                                    ; preds = %ff_clz_c.exit152.thread, %.preheader.loopexit
  %12 = phi ptr [ %i.gb, %ff_clz_c.exit152.thread ], [ %i.gz, %.preheader.loopexit ]
  %13 = phi ptr [ %i.ga, %ff_clz_c.exit152.thread ], [ %i.gy, %.preheader.loopexit ]
  %.4116.lcssa = phi i32 [ 0, %ff_clz_c.exit152.thread ], [ %10, %.preheader.loopexit ] ; 2 uses
  %.4.lcssa = phi i32 [ 0, %ff_clz_c.exit152.thread ], [ %i.ig, %.preheader.loopexit ] ; 2 uses
  %14 = phi i32 [ 0, %ff_clz_c.exit152.thread ], [ %i.ih, %.preheader.loopexit ]
  %15 = add nuw nsw i32 %.4.lcssa, %.4116.lcssa
  %16 = icmp samesign ugt i32 %14, %15
  br i1 %16, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %ff_clz_c.exit
  %i.iq = sub nsw i32 %3, %.0216
  %i.ir = shl nuw i32 1, %i.iq
  %i.is = or i32 %i.ir, %.0118215                 ; 3 uses
  store i32 %.4116.lcssa, ptr %13, align 4, !tbaa !16
  store i32 %.4.lcssa, ptr %12, align 4, !tbaa !16
  br i1 %i.c, label %.lr.ph214.preheader, label %.loopexit

.lr.ph214.preheader:                              ; preds = %bb.e
  br i1 %i.dl, label %.lr.ph214.epil.preheader, label %.lr.ph214

.lr.ph214:                                        ; preds = %.lr.ph214.preheader, %.lr.ph214
  %indvars.iv235 = phi i64 [ %indvars.iv.next236.1, %.lr.ph214 ], [ 0, %.lr.ph214.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph214 ], [ 0, %.lr.ph214.preheader ]
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv235 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 16, !tbaa !16
  %i.iv = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %indvars.iv235 ; 2 uses
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv240
  store i32 %i.iu, ptr %i.iw, align 4, !tbaa !16
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !16
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv240
  store i32 %i.iy, ptr %i.ja, align 4, !tbaa !16
  %indvars.iv.next236 = or disjoint i64 %indvars.iv235, 1 ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next236 ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !16
  %i.jd = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %indvars.iv.next236 ; 2 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv240
  store i32 %i.jc, ptr %i.je, align 4, !tbaa !16
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !16
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv240
  store i32 %i.jg, ptr %i.ji, align 4, !tbaa !16
  %indvars.iv.next236.1 = add nuw nsw i64 %indvars.iv235, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph214, !llvm.loop !47

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph214
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph214.epil.preheader

.lr.ph214.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph214.preheader
  %indvars.iv235.epil.init = phi i64 [ 0, %.lr.ph214.preheader ], [ %indvars.iv.next236.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod313)
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv235.epil.init ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !16
  %i.jl = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %indvars.iv235.epil.init ; 2 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %indvars.iv240
  store i32 %i.jk, ptr %i.jm, align 4, !tbaa !16
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !16
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 32
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv240
  store i32 %i.jo, ptr %i.jq, align 4, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph214.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.e, %ff_clz_c.exit
  %.1119 = phi i32 [ %.0118215, %ff_clz_c.exit ], [ %i.is, %bb.e ], [ %i.is, %.loopexit.loopexit.unr-lcssa ], [ %i.is, %.lr.ph214.epil.preheader ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %indvars.iv.next241 = add nsw i64 %indvars.iv240, -1
  %i.jr = icmp sgt i64 %indvars.iv240, 0
  %i.js = trunc nuw nsw i64 %indvars.iv240 to i32
  br i1 %i.jr, label %bb.b, label %._crit_edge, !llvm.loop !48

._crit_edge:                                      ; preds = %.loopexit, %ff_clz_c.exit160
  %.0118.lcssa = phi i32 [ 0, %ff_clz_c.exit160 ], [ %.1119, %.loopexit ]
  ret i32 %.0118.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @sbc_analyze_1b_8s_simd_even(ptr nofree noundef captures(none) initializes((1352, 1360)) %0, ptr noundef %1, ptr noundef %2, i32 %3) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12
  tail call void %i.b(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @sbcdsp_analysis_consts_fixed8_simd_even) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store ptr @sbc_analyze_1b_8s_simd_odd, ptr %i.c, align 8, !tbaa !13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.abs.v2i32(<2 x i32>, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v2i32(<2 x i32>) #7

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"sbc_dsp_context", !6, i64 0, !5, i64 4, !5, i64 16, !9, i64 1328, !9, i64 1336, !9, i64 1344, !9, i64 1352, !9, i64 1360, !9, i64 1368, !9, i64 1376, !9, i64 1384}
!11 = !{!10, !9, i64 1328}
!12 = !{!10, !9, i64 1336}
!13 = !{!10, !9, i64 1352}
!14 = !{!"short", !5, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!6, !6, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = !{!5, !5, i64 0}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!10, !9, i64 1344}
!23 = !{!10, !5, i64 4}
!24 = !{!9, !9, i64 0}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !18}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17, !20, !21}
!36 = distinct !{!36, !17, !21, !20}
!37 = distinct !{!37, !17}
!38 = distinct !{!38, !17}
!39 = distinct !{!39, !17, !20, !21}
!40 = distinct !{!40, !17, !21, !20}
!41 = distinct !{!41, !17, !20, !21}
!42 = distinct !{!42, !17, !21, !20}
!43 = distinct !{!43, !17, !20, !21}
!44 = distinct !{!44, !17, !21, !20}
!45 = distinct !{!45, !17, !20, !21}
!46 = distinct !{!46, !17, !21, !20}
!47 = distinct !{!47, !17}
!48 = distinct !{!48, !17}
end_hunk_0
