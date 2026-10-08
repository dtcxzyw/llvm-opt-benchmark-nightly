Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_deflicker?download=true
inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@calc_avgy16:bb.a
  %i.bt = mul i64 %i.bs, %indvars.iv.next38.1
  %i.bu = add i64 %i.bt, %i.bq
  %indvars.iv.next38.2 = or disjoint i64 %indvars.iv37, 3 ; 2 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next38.2
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !59
  %i.bx = mul i64 %i.bw, %indvars.iv.next38.2
  %i.by = add i64 %i.bx, %i.bu                    ; 3 uses
  %indvars.iv.next38.3 = add nuw nsw i64 %indvars.iv37, 4 ; 2 uses
  %niter52.next.3 = add i64 %niter52, 4           ; 2 uses
  %niter52.ncmp.3 = icmp eq i64 %niter52.next.3, %unroll_iter51
  br i1 %niter52.ncmp.3, label %._crit_edge33.loopexit.unr-lcssa, label %bb.c, !llvm.loop !101

._crit_edge33.loopexit.unr-lcssa:                 ; preds = %bb.c
  %lcmp.mod48.not = icmp eq i64 %xtraiter46, 0
  br i1 %lcmp.mod48.not, label %._crit_edge33.loopexit, label %.epil.preheader45

.epil.preheader45:                                ; preds = %._crit_edge33.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv37.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next38.3, %._crit_edge33.loopexit.unr-lcssa ]
  %.02531.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.by, %._crit_edge33.loopexit.unr-lcssa ]
  %lcmp.mod50 = icmp ne i64 %xtraiter46, 0
  tail call void @llvm.assume(i1 %lcmp.mod50)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader45
  %indvars.iv37.epil = phi i64 [ %indvars.iv37.epil.init, %.epil.preheader45 ], [ %indvars.iv.next38.epil, %bb.d ] ; 3 uses
  %.02531.epil = phi i64 [ %.02531.epil.init, %.epil.preheader45 ], [ %i.cc, %bb.d ]
  %epil.iter47 = phi i64 [ 0, %.epil.preheader45 ], [ %epil.iter47.next, %bb.d ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv37.epil
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !59
  %i.cb = mul i64 %i.ca, %indvars.iv37.epil
  %i.cc = add i64 %i.cb, %.02531.epil             ; 2 uses
  %indvars.iv.next38.epil = add nuw nsw i64 %indvars.iv37.epil, 1
  %epil.iter47.next = add i64 %epil.iter47, 1     ; 2 uses
  %epil.iter47.cmp.not = icmp eq i64 %epil.iter47.next, %xtraiter46
  br i1 %epil.iter47.cmp.not, label %._crit_edge33.loopexit, label %bb.d, !llvm.loop !102

._crit_edge33.loopexit:                           ; preds = %bb.d, %._crit_edge33.loopexit.unr-lcssa
  %.lcssa = phi i64 [ %i.by, %._crit_edge33.loopexit.unr-lcssa ], [ %i.cc, %bb.d ]
  %i.cd = sitofp nsz i64 %.lcssa to float
  br label %._crit_edge33

._crit_edge33:                                    ; preds = %._crit_edge33.loopexit, %.preheader
  %.025.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.cd, %._crit_edge33.loopexit ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !51
  %i.cg = mul nsw i32 %i.cf, %i.l
  %i.ch = sitofp nsz i32 %i.cg to float
  %i.ci = fdiv nsz float %.025.lcssa, %i.ch
  ret float %i.ci
}

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @get_median_factor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #7 {
bb.a:
  %i.a = alloca [64 x [2 x ptr]], align 16        ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 588 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(516) %i.d, ptr noundef nonnull align 8 dereferenceable(516) %i.e, i64 516, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr %i.d, ptr %i.a, align 16, !tbaa !107
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.h
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !107
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread
  %.0173 = phi i32 [ 1, %bb.a ], [ %.1153, %.thread ] ; 2 uses
  %i.l = add nsw i32 %.0173, -1                   ; 2 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !107 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !107  ; 2 uses
  %i.r = icmp ult ptr %i.o, %i.q
  br i1 %i.r, label %.lr.ph168.preheader, label %.thread

.lr.ph168.preheader:                              ; preds = %bb.b
  %i.s = sext i32 %.0173 to i64
  %i.t = add nsw i64 %i.s, -1
  br label %.lr.ph168

.lr.ph168:                                        ; preds = %.lr.ph168.preheader, %bb.t
  %indvars.iv = phi i64 [ %i.t, %.lr.ph168.preheader ], [ %indvars.iv.next, %bb.t ] ; 6 uses
  %.0121165 = phi ptr [ %i.o, %.lr.ph168.preheader ], [ %.1122, %bb.t ] ; 14 uses
  %.0124164 = phi ptr [ %i.q, %.lr.ph168.preheader ], [ %.1125, %bb.t ] ; 12 uses
  %i.u = getelementptr inbounds i8, ptr %.0124164, i64 -4 ; 6 uses
  %i.v = icmp ult ptr %.0121165, %i.u
  %i.w = ptrtoint ptr %.0124164 to i64            ; 7 uses
  br i1 %i.v, label %bb.c, label %bb.u

bb.c:                                             ; preds = %.lr.ph168
  %i.x = getelementptr inbounds i8, ptr %.0124164, i64 -8 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0121165, i64 4 ; 3 uses
  %i.z = ptrtoint ptr %.0121165 to i64            ; 5 uses
  %i.aa = sub i64 %i.w, %i.z
  %i.ab = ashr i64 %i.aa, 3                       ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %.0121165, i64 %i.ab ; 12 uses
  %i.ad = sub i64 %i.z, %i.w
  %i.ae = lshr exact i64 %i.ad, 2
  %i.af = trunc i64 %i.ae to i32
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ah = ptrtoint ptr %i.ac to i64
  %i.ai = sub i64 %i.w, %i.ah
  %i.aj = lshr exact i64 %i.ai, 2
  %i.ak = trunc i64 %i.aj to i32
  %i.al = icmp sgt i32 %i.ak, 0
  %i.am = load float, ptr %.0121165, align 4, !tbaa !45 ; 2 uses
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = load float, ptr %i.ac, align 4, !tbaa !45
  store float %i.am, ptr %i.ac, align 4, !tbaa !45
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.ao = load float, ptr %.0124164, align 4, !tbaa !45
  store float %i.am, ptr %.0124164, align 4, !tbaa !45
  br label %.sink.split

bb.g:                                             ; preds = %bb.c
  %i.ap = trunc i64 %i.ab to i32
  %i.aq = icmp ugt i32 %i.ap, -2147483648
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ar = load float, ptr %i.ac, align 4, !tbaa !45
  %i.as = load float, ptr %.0121165, align 4, !tbaa !45
  store float %i.as, ptr %i.ac, align 4, !tbaa !45
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.e, %bb.h
  %.sink = phi float [ %i.ar, %bb.h ], [ %i.an, %bb.e ], [ %i.ao, %bb.f ]
  store float %.sink, ptr %.0121165, align 4, !tbaa !45
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.g
  %.0128 = phi i32 [ 1, %bb.g ], [ 0, %.sink.split ]
  %i.at = ptrtoint ptr %i.ac to i64
  %i.au = sub i64 %i.at, %i.w
  %i.av = lshr exact i64 %i.au, 2
  %i.aw = trunc i64 %i.av to i32
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = load float, ptr %.0124164, align 4, !tbaa !45
  %i.az = load float, ptr %i.ac, align 4, !tbaa !45
  store float %i.az, ptr %.0124164, align 4, !tbaa !45
  store float %i.ay, ptr %i.ac, align 4, !tbaa !45
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1129 = phi i32 [ 0, %bb.j ], [ %.0128, %bb.i ]
  %i.ba = icmp eq ptr %.0121165, %i.x
  br i1 %i.ba, label %.thread.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = load float, ptr %i.ac, align 4, !tbaa !45 ; 2 uses
  %i.bc = load float, ptr %i.u, align 4, !tbaa !45
  store float %i.bc, ptr %i.ac, align 4, !tbaa !45
  store float %i.bb, ptr %i.u, align 4, !tbaa !45
  %.not140159 = icmp ugt ptr %i.y, %i.x
  br i1 %.not140159, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.l
  %i.bd = ptrtoint ptr %i.u to i64                ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge144
  %.0130161 = phi ptr [ %i.x, %.preheader.lr.ph ], [ %.2132, %.critedge144 ] ; 4 uses
  %.0133160 = phi ptr [ %i.y, %.preheader.lr.ph ], [ %.2135, %.critedge144 ]
  br label %bb.m

bb.m:                                             ; preds = %.preheader, %bb.n
  %.1134156 = phi ptr [ %.0133160, %.preheader ], [ %i.bh, %bb.n ] ; 3 uses
  %i.be = ptrtoint ptr %.1134156 to i64
  %i.bf = sub i64 %i.be, %i.bd
  %i.bg = and i64 %i.bf, 8589934592
  %.not149 = icmp eq i64 %i.bg, 0
  br i1 %.not149, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %.1134156, i64 4 ; 3 uses
  %.not142 = icmp ugt ptr %i.bh, %.0130161
  br i1 %.not142, label %.critedge, label %bb.m, !llvm.loop !103

.critedge:                                        ; preds = %bb.n, %bb.m
  %.1134.lcssa = phi ptr [ %i.bh, %bb.n ], [ %.1134156, %bb.m ] ; 7 uses
  %.not143157 = icmp ugt ptr %.1134.lcssa, %.0130161
  br i1 %.not143157, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge, %bb.o
  %.1131158 = phi ptr [ %i.bn, %bb.o ], [ %.0130161, %.critedge ] ; 5 uses
  %i.bi = ptrtoint ptr %.1131158 to i64
  %i.bj = sub i64 %i.bi, %i.bd
  %i.bk = lshr exact i64 %i.bj, 2
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %bb.o, label %.critedge2

bb.o:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds i8, ptr %.1131158, i64 -4 ; 3 uses
  %.not143 = icmp ugt ptr %.1134.lcssa, %i.bn
  br i1 %.not143, label %.critedge144, label %.lr.ph, !llvm.loop !104

.critedge2:                                       ; preds = %.lr.ph
  %i.bo = load float, ptr %.1131158, align 4, !tbaa !45
  %i.bp = load float, ptr %.1134.lcssa, align 4, !tbaa !45
  store float %i.bp, ptr %.1131158, align 4, !tbaa !45
  store float %i.bo, ptr %.1134.lcssa, align 4, !tbaa !45
  %i.bq = getelementptr inbounds nuw i8, ptr %.1134.lcssa, i64 4
  %i.br = getelementptr inbounds i8, ptr %.1131158, i64 -4
  br label %.critedge144

.critedge144:                                     ; preds = %bb.o, %.critedge2
  %.2135 = phi ptr [ %i.bq, %.critedge2 ], [ %.1134.lcssa, %bb.o ] ; 3 uses
  %.2132 = phi ptr [ %i.br, %.critedge2 ], [ %i.bn, %bb.o ] ; 3 uses
  %.not140 = icmp ugt ptr %.2135, %.2132
  br i1 %.not140, label %._crit_edge.loopexit, label %.preheader, !llvm.loop !105

._crit_edge.loopexit:                             ; preds = %.critedge, %.critedge144
  %.2132191 = phi ptr [ %.2132, %.critedge144 ], [ %.0130161, %.critedge ]
  %.2135190 = phi ptr [ %.2135, %.critedge144 ], [ %.1134.lcssa, %.critedge ]
  %.pre = load float, ptr %i.u, align 4, !tbaa !45
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %i.bs = phi float [ %i.bb, %bb.l ], [ %.pre, %._crit_edge.loopexit ]
  %.0133.lcssa = phi ptr [ %i.y, %bb.l ], [ %.2135190, %._crit_edge.loopexit ] ; 7 uses
  %.0130.lcssa = phi ptr [ %i.x, %bb.l ], [ %.2132191, %._crit_edge.loopexit ] ; 2 uses
  %i.bt = load float, ptr %.0133.lcssa, align 4, !tbaa !45
  store float %i.bs, ptr %.0133.lcssa, align 4, !tbaa !45
  store float %i.bt, ptr %i.u, align 4, !tbaa !45
  %.not141 = icmp eq i32 %.1129, 0
  br i1 %.not141, label %bb.q, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.bu = getelementptr inbounds i8, ptr %.0133.lcssa, i64 -4
  %i.bv = icmp eq ptr %i.ac, %i.bu
  %i.bw = icmp eq ptr %i.ac, %.0133.lcssa
  %or.cond = or i1 %i.bw, %i.bv
  br i1 %or.cond, label %.preheader150.preheader, label %bb.q

.preheader150.preheader:                          ; preds = %bb.p
  %umax = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.w)
  %i.bx = add i64 %umax, 3
  %i.by = sub i64 %i.bx, %i.z
  %i.bz = and i64 %i.by, -4
  %scevgep = getelementptr nuw i8, ptr %.0121165, i64 %i.bz
  %i.ca = icmp eq ptr %scevgep, %.0124164
  br i1 %i.ca, label %.thread.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p, %.preheader150.preheader, %._crit_edge
  %i.cb = ptrtoint ptr %.0133.lcssa to i64        ; 2 uses
  %i.cc = sub i64 %i.w, %i.cb
  %i.cd = sub i64 %i.cb, %i.z
  %i.ce = icmp slt i64 %i.cc, %i.cd
  br i1 %i.ce, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds [16 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  store ptr %.0121165, ptr %i.cf, align 16, !tbaa !107
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %.0130.lcssa, ptr %i.cg, align 8, !tbaa !107
  %i.ch = getelementptr inbounds nuw i8, ptr %.0133.lcssa, i64 4
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %.0133.lcssa, i64 4
  %i.cj = getelementptr inbounds [16 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  store ptr %i.ci, ptr %i.cj, align 16, !tbaa !107
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %.0124164, ptr %i.ck, align 8, !tbaa !107
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.1125 = phi ptr [ %.0124164, %bb.r ], [ %.0130.lcssa, %bb.s ] ; 2 uses
  %.1122 = phi ptr [ %i.ch, %bb.r ], [ %.0121165, %bb.s ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cl = icmp ult ptr %.1122, %.1125
  br i1 %i.cl, label %.lr.ph168, label %.thread.loopexit

bb.u:                                             ; preds = %.lr.ph168
  %i.cm = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.cn = ptrtoint ptr %.0121165 to i64
  %i.co = sub i64 %i.cn, %i.w
  %i.cp = lshr exact i64 %i.co, 2
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.cs = load float, ptr %.0124164, align 4, !tbaa !45
  %i.ct = load float, ptr %.0121165, align 4, !tbaa !45
  store float %i.ct, ptr %.0124164, align 4, !tbaa !45
  store float %i.cs, ptr %.0121165, align 4, !tbaa !45
  br label %.thread

.thread.loopexit:                                 ; preds = %.preheader150.preheader, %bb.k, %bb.t
  %.1153.ph.in = phi i64 [ %indvars.iv, %.preheader150.preheader ], [ %indvars.iv, %bb.k ], [ %indvars.iv.next, %bb.t ]
  %.1153.ph = trunc i64 %.1153.ph.in to i32
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %bb.b, %bb.u, %bb.v
  %.1153 = phi i32 [ %i.cm, %bb.v ], [ %i.cm, %bb.u ], [ %i.l, %bb.b ], [ %.1153.ph, %.thread.loopexit ] ; 2 uses
  %.not = icmp eq i32 %.1153, 0
  br i1 %.not, label %bb.w, label %bb.b, !llvm.loop !106

bb.w:                                             ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.cu = ashr i32 %i.g, 1
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !45
  %i.cy = load float, ptr %i.e, align 8, !tbaa !45
  %i.cz = fdiv nsz float %i.cx, %i.cy
  store float %i.cz, ptr %1, align 4, !tbaa !45
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @get_am_factor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  store float 0.000000e+00, ptr %1, align 4, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !40   ; 4 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.g = icmp ult i32 %i.d, 4
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %i.h = phi float [ 0.000000e+00, %.lr.ph.new ], [ %i.w, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.j = load float, ptr %i.i, align 4, !tbaa !45
  %i.k = fadd nsz float %i.j, %i.h                ; 2 uses
  store float %i.k, ptr %1, align 4, !tbaa !45
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !45
  %i.o = fadd nsz float %i.n, %i.k                ; 2 uses
  store float %i.o, ptr %1, align 4, !tbaa !45
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load float, ptr %i.q, align 4, !tbaa !45
  %i.s = fadd nsz float %i.r, %i.o                ; 2 uses
  store float %i.s, ptr %1, align 4, !tbaa !45
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = load float, ptr %i.u, align 4, !tbaa !45
  %i.w = fadd nsz float %i.v, %i.s                ; 4 uses
  store float %i.w, ptr %1, align 4, !tbaa !45
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !108

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod15 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod15)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %i.x = phi float [ %.epil.init, %.epil.preheader ], [ %i.aa, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.epil
  %i.z = load float, ptr %i.y, align 4, !tbaa !45
  %i.aa = fadd nsz float %i.z, %i.x               ; 3 uses
  store float %i.aa, ptr %1, align 4, !tbaa !45
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !109

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.ab = phi float [ 0.000000e+00, %bb.a ], [ %i.w, %._crit_edge.loopexit.unr-lcssa ], [ %i.aa, %bb.c ]
  %i.ac = sitofp nsz i32 %i.d to float
  %i.ad = fdiv nsz float %i.ab, %i.ac             ; 2 uses
  store float %i.ad, ptr %1, align 4, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.af = load float, ptr %i.ae, align 8, !tbaa !45
  %i.ag = fdiv nsz float %i.ad, %i.af
  store float %i.ag, ptr %1, align 4, !tbaa !45
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @get_gm_factor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  store float 1.000000e+00, ptr %1, align 4, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !40   ; 4 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.d to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.g = icmp ult i32 %i.d, 4
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
end_hunk_0
