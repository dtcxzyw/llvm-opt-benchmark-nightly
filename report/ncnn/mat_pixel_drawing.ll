Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/mat_pixel_drawing?download=true
inline.NumInlined: 68
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4ncnn17draw_rectangle_c3EPhiiiiiiiji:bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store i8 %.sroa.6.0.extract.trunc, ptr %i.bn, align 1, !tbaa !9
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  store i8 %.sroa.11.0.extract.trunc, ptr %i.bo, align 1, !tbaa !9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.bp = add nsw i32 %.0163205.us, 1             ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.bb
  br i1 %i.bq, label %bb.n, label %.loopexit196.us, !llvm.loop !35

.loopexit196.us:                                  ; preds = %bb.q, %bb.o, %.lr.ph210.split.us
  %indvars.iv.next266 = add nsw i64 %indvars.iv265, 1 ; 2 uses
  %lftr.wideiv268 = trunc i64 %indvars.iv.next266 to i32
  %exitcond269.not = icmp eq i32 %i.ax, %lftr.wideiv268
  br i1 %exitcond269.not, label %._crit_edge211, label %.lr.ph210.split.us, !llvm.loop !36

._crit_edge211:                                   ; preds = %.loopexit196.us, %bb.m, %._crit_edge, %.lr.ph210
  %i.br = add nsw i32 %i.w, %4                    ; 2 uses
  %i.bs = icmp slt i32 %i.az, %i.br
  br i1 %i.bs, label %.lr.ph220, label %._crit_edge221

.lr.ph220:                                        ; preds = %._crit_edge211
  %i.bt = icmp slt i32 %i.y, %i.aw
  %.fr224 = freeze i1 %i.bt
  br i1 %.fr224, label %.lr.ph220.split.us.preheader, label %._crit_edge221

.lr.ph220.split.us.preheader:                     ; preds = %.lr.ph220
  %i.bu = sext i32 %i.y to i64
  %i.bv = sext i32 %2 to i64
  %i.bw = sext i32 %3 to i64
  %i.bx = sext i32 %i.aw to i64
  br label %.lr.ph220.split.us

.lr.ph220.split.us:                               ; preds = %.lr.ph220.split.us.preheader, %.loopexit195.us
  %.0162217.us = phi i32 [ %i.ce, %.loopexit195.us ], [ %i.az, %.lr.ph220.split.us.preheader ] ; 4 uses
  %i.by = icmp slt i32 %.0162217.us, 0
  br i1 %i.by, label %.loopexit195.us, label %bb.r

bb.r:                                             ; preds = %.lr.ph220.split.us
  %.not184.us = icmp slt i32 %.0162217.us, %1
  br i1 %.not184.us, label %.preheader194.us, label %._crit_edge221

bb.s:                                             ; preds = %.preheader194.us, %bb.v
  %indvars.iv270 = phi i64 [ %i.bu, %.preheader194.us ], [ %indvars.iv.next271, %bb.v ] ; 4 uses
  %i.bz = icmp slt i64 %indvars.iv270, 0
  br i1 %i.bz, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not185.us = icmp slt i64 %indvars.iv270, %i.bv
  br i1 %.not185.us, label %bb.u, label %.loopexit195.us

bb.u:                                             ; preds = %bb.t
  %i.ca = mul nsw i64 %indvars.iv270, %i.bw
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %i.ca ; 3 uses
  store i8 %.sroa.0.0.extract.trunc, ptr %gep.us, align 1, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %gep.us, i64 1
  store i8 %.sroa.6.0.extract.trunc, ptr %i.cb, align 1, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %gep.us, i64 2
  store i8 %.sroa.11.0.extract.trunc, ptr %i.cc, align 1, !tbaa !9
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %indvars.iv.next271 = add nsw i64 %indvars.iv270, 1 ; 2 uses
  %i.cd = icmp slt i64 %indvars.iv.next271, %i.bx
  br i1 %i.cd, label %bb.s, label %.loopexit195.us, !llvm.loop !37

.loopexit195.us:                                  ; preds = %bb.v, %bb.t, %.lr.ph220.split.us
  %i.ce = add i32 %.0162217.us, 1                 ; 2 uses
  %exitcond273.not = icmp eq i32 %i.ce, %i.br
  br i1 %exitcond273.not, label %._crit_edge221, label %.lr.ph220.split.us, !llvm.loop !38

.preheader194.us:                                 ; preds = %bb.r
  %i.cf = mul nuw nsw i32 %.0162217.us, 3
  %i.cg = zext nneg i32 %i.cf to i64
  %invariant.gep.us = getelementptr i8, ptr %0, i64 %i.cg
  br label %bb.s

._crit_edge221:                                   ; preds = %.loopexit195.us, %bb.r, %.lr.ph220, %._crit_edge211
  %i.ch = add nsw i32 %6, %4                      ; 2 uses
  %i.ci = sub nsw i32 %i.ch, %i.v                 ; 2 uses
  %i.cj = add nsw i32 %i.w, %i.ch                 ; 2 uses
  %i.ck = icmp slt i32 %i.ci, %i.cj
  br i1 %i.ck, label %.lr.ph230, label %.loopexit190

.lr.ph230:                                        ; preds = %._crit_edge221
  %i.cl = icmp slt i32 %i.y, %i.aw
  %.fr235 = freeze i1 %i.cl
  br i1 %.fr235, label %.lr.ph230.split.us.preheader, label %.loopexit190

.lr.ph230.split.us.preheader:                     ; preds = %.lr.ph230
  %i.cm = sext i32 %i.y to i64
  %i.cn = sext i32 %2 to i64
  %i.co = sext i32 %3 to i64
  %i.cp = sext i32 %i.aw to i64
  br label %.lr.ph230.split.us

.lr.ph230.split.us:                               ; preds = %.lr.ph230.split.us.preheader, %.loopexit192.us
  %.0159227.us = phi i32 [ %i.cw, %.loopexit192.us ], [ %i.ci, %.lr.ph230.split.us.preheader ] ; 4 uses
  %i.cq = icmp slt i32 %.0159227.us, 0
  br i1 %i.cq, label %.loopexit192.us, label %bb.w

bb.w:                                             ; preds = %.lr.ph230.split.us
  %.not186.us = icmp slt i32 %.0159227.us, %1
  br i1 %.not186.us, label %.preheader191.us, label %.loopexit190

bb.x:                                             ; preds = %.preheader191.us, %bb.aa
  %indvars.iv274 = phi i64 [ %i.cm, %.preheader191.us ], [ %indvars.iv.next275, %bb.aa ] ; 4 uses
  %i.cr = icmp slt i64 %indvars.iv274, 0
  br i1 %i.cr, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not187.us = icmp slt i64 %indvars.iv274, %i.cn
  br i1 %.not187.us, label %bb.z, label %.loopexit192.us

bb.z:                                             ; preds = %bb.y
  %i.cs = mul nsw i64 %indvars.iv274, %i.co
  %gep.us232 = getelementptr i8, ptr %invariant.gep.us234, i64 %i.cs ; 3 uses
  store i8 %.sroa.0.0.extract.trunc, ptr %gep.us232, align 1, !tbaa !9
  %i.ct = getelementptr inbounds nuw i8, ptr %gep.us232, i64 1
  store i8 %.sroa.6.0.extract.trunc, ptr %i.ct, align 1, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %gep.us232, i64 2
  store i8 %.sroa.11.0.extract.trunc, ptr %i.cu, align 1, !tbaa !9
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %indvars.iv.next275 = add nsw i64 %indvars.iv274, 1 ; 2 uses
  %i.cv = icmp slt i64 %indvars.iv.next275, %i.cp
  br i1 %i.cv, label %bb.x, label %.loopexit192.us, !llvm.loop !39

.loopexit192.us:                                  ; preds = %bb.aa, %bb.y, %.lr.ph230.split.us
  %i.cw = add i32 %.0159227.us, 1                 ; 2 uses
  %exitcond277.not = icmp eq i32 %i.cw, %i.cj
  br i1 %exitcond277.not, label %.loopexit190, label %.lr.ph230.split.us, !llvm.loop !40

.preheader191.us:                                 ; preds = %bb.w
  %i.cx = mul nuw nsw i32 %.0159227.us, 3
  %i.cy = zext nneg i32 %i.cx to i64
  %invariant.gep.us234 = getelementptr i8, ptr %0, i64 %i.cy
  br label %bb.x

.loopexit190:                                     ; preds = %bb.w, %.loopexit192.us, %bb.b, %.loopexit.us, %.lr.ph230, %.lr.ph240, %._crit_edge221, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn17draw_rectangle_c4EPhiiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nsw i32 %1, 2
  tail call void @_ZN4ncnn17draw_rectangle_c4EPhiiiiiiiji(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.a, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn17draw_rectangle_c4EPhiiiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %9, -1
  br i1 %i.a, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.a
  %i.b = add nsw i32 %7, %5
  %i.c = icmp sgt i32 %7, 0
  br i1 %i.c, label %.lr.ph259, label %.loopexit209

.lr.ph259:                                        ; preds = %.preheader
  %i.d = add nsw i32 %6, %4
  %i.e = icmp sgt i32 %6, 0
  br i1 %i.e, label %.lr.ph259.split.us.preheader, label %.loopexit209

.lr.ph259.split.us.preheader:                     ; preds = %.lr.ph259
  %i.f = sext i32 %5 to i64
  %i.g = sext i32 %2 to i64
  %i.h = sext i32 %3 to i64
  %i.i = sext i32 %i.b to i64
  br label %.lr.ph259.split.us

.lr.ph259.split.us:                               ; preds = %.lr.ph259.split.us.preheader, %.loopexit.us
  %indvars.iv297 = phi i64 [ %i.f, %.lr.ph259.split.us.preheader ], [ %indvars.iv.next298, %.loopexit.us ] ; 4 uses
  %i.j = icmp slt i64 %indvars.iv297, 0
  br i1 %i.j, label %.loopexit.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph259.split.us
  %.not207.us = icmp slt i64 %indvars.iv297, %i.g
  br i1 %.not207.us, label %.lr.ph.us261, label %.loopexit209

.lr.ph.us261:                                     ; preds = %bb.b
  %i.k = mul nsw i64 %indvars.iv297, %i.h
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us261, %bb.f
  %.0182255.us = phi i32 [ %4, %.lr.ph.us261 ], [ %i.q, %bb.f ] ; 4 uses
  %i.m = icmp slt i32 %.0182255.us, 0
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not208.us = icmp slt i32 %.0182255.us, %1
  br i1 %.not208.us, label %bb.e, label %.loopexit.us

bb.e:                                             ; preds = %bb.d
  %i.n = shl nsw i32 %.0182255.us, 2
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  store i32 %8, ptr %i.p, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.q = add nsw i32 %.0182255.us, 1              ; 2 uses
  %i.r = icmp slt i32 %i.q, %i.d
  br i1 %i.r, label %bb.c, label %.loopexit.us, !llvm.loop !41

.loopexit.us:                                     ; preds = %bb.f, %bb.d, %.lr.ph259.split.us
  %indvars.iv.next298 = add nsw i64 %indvars.iv297, 1 ; 2 uses
  %i.s = icmp slt i64 %indvars.iv.next298, %i.i
  br i1 %i.s, label %.lr.ph259.split.us, label %.loopexit209, !llvm.loop !42

bb.g:                                             ; preds = %bb.a
  %i.t = sdiv i32 %9, 2                           ; 7 uses
  %i.u = sub nsw i32 %9, %i.t                     ; 6 uses
  %i.v = sub nsw i32 %5, %i.t
  %i.w = add nsw i32 %i.u, %5                     ; 6 uses
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %.lr.ph220, label %._crit_edge

.lr.ph220:                                        ; preds = %bb.g
  %i.y = sub nsw i32 %4, %i.t                     ; 2 uses
  %i.z = add nsw i32 %6, %4
  %i.aa = add nsw i32 %i.z, %i.u                  ; 2 uses
  %i.ab = icmp slt i32 %i.y, %i.aa
  %.fr = freeze i1 %i.ab
  br i1 %.fr, label %.lr.ph220.split.us.preheader, label %._crit_edge

.lr.ph220.split.us.preheader:                     ; preds = %.lr.ph220
  %i.ac = sext i32 %5 to i64
  %i.ad = sub nsw i32 0, %i.t
  %i.ae = sext i32 %i.ad to i64
  %i.af = add nsw i64 %i.ac, %i.ae
  %i.ag = sext i32 %2 to i64
  %i.ah = sext i32 %3 to i64
  br label %.lr.ph220.split.us

.lr.ph220.split.us:                               ; preds = %.lr.ph220.split.us.preheader, %.loopexit216.us
  %indvars.iv = phi i64 [ %i.af, %.lr.ph220.split.us.preheader ], [ %indvars.iv.next, %.loopexit216.us ] ; 4 uses
  %i.ai = icmp slt i64 %indvars.iv, 0
  br i1 %i.ai, label %.loopexit216.us, label %bb.h

bb.h:                                             ; preds = %.lr.ph220.split.us
  %.not.us = icmp slt i64 %indvars.iv, %i.ag
  br i1 %.not.us, label %.lr.ph.us, label %._crit_edge

.lr.ph.us:                                        ; preds = %bb.h
  %i.aj = mul nsw i64 %indvars.iv, %i.ah
  %i.ak = getelementptr inbounds i8, ptr %0, i64 %i.aj
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph.us, %bb.l
  %.0180217.us = phi i32 [ %i.y, %.lr.ph.us ], [ %i.ap, %bb.l ] ; 4 uses
  %i.al = icmp slt i32 %.0180217.us, 0
  br i1 %i.al, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not200.us = icmp slt i32 %.0180217.us, %1
  br i1 %.not200.us, label %bb.k, label %.loopexit216.us

bb.k:                                             ; preds = %bb.j
  %i.am = shl nsw i32 %.0180217.us, 2
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  store i32 %8, ptr %i.ao, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.ap = add nsw i32 %.0180217.us, 1             ; 2 uses
  %i.aq = icmp slt i32 %i.ap, %i.aa
  br i1 %i.aq, label %bb.i, label %.loopexit216.us, !llvm.loop !43

.loopexit216.us:                                  ; preds = %bb.l, %bb.j, %.lr.ph220.split.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.w, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph220.split.us, !llvm.loop !44

._crit_edge:                                      ; preds = %.loopexit216.us, %bb.h, %.lr.ph220, %bb.g
  %i.ar = add nsw i32 %7, %5                      ; 2 uses
  %i.as = sub nsw i32 %i.ar, %i.t                 ; 6 uses
  %i.at = add nsw i32 %i.u, %i.ar                 ; 2 uses
  %i.au = icmp slt i32 %i.as, %i.at
  %i.av = sub nsw i32 %4, %i.t                    ; 4 uses
  br i1 %i.au, label %.lr.ph229, label %._crit_edge230

.lr.ph229:                                        ; preds = %._crit_edge
  %i.aw = add nsw i32 %6, %4
  %i.ax = add nsw i32 %i.aw, %i.u                 ; 2 uses
  %i.ay = icmp slt i32 %i.av, %i.ax
  %.fr233 = freeze i1 %i.ay
  br i1 %.fr233, label %.lr.ph229.split.us.preheader, label %._crit_edge230

.lr.ph229.split.us.preheader:                     ; preds = %.lr.ph229
  %i.az = sext i32 %i.as to i64
  %i.ba = sext i32 %2 to i64
  %i.bb = sext i32 %3 to i64
  br label %.lr.ph229.split.us

.lr.ph229.split.us:                               ; preds = %.lr.ph229.split.us.preheader, %.loopexit215.us
  %indvars.iv284 = phi i64 [ %i.az, %.lr.ph229.split.us.preheader ], [ %indvars.iv.next285, %.loopexit215.us ] ; 4 uses
  %i.bc = icmp slt i64 %indvars.iv284, 0
  br i1 %i.bc, label %.loopexit215.us, label %bb.m

bb.m:                                             ; preds = %.lr.ph229.split.us
  %.not201.us = icmp slt i64 %indvars.iv284, %i.ba
  br i1 %.not201.us, label %.lr.ph.us232, label %._crit_edge230

.lr.ph.us232:                                     ; preds = %bb.m
  %i.bd = mul nsw i64 %indvars.iv284, %i.bb
  %i.be = getelementptr inbounds i8, ptr %0, i64 %i.bd
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph.us232, %bb.q
  %.0178224.us = phi i32 [ %i.av, %.lr.ph.us232 ], [ %i.bj, %bb.q ] ; 4 uses
  %i.bf = icmp slt i32 %.0178224.us, 0
  br i1 %i.bf, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not202.us = icmp slt i32 %.0178224.us, %1
  br i1 %.not202.us, label %bb.p, label %.loopexit215.us

bb.p:                                             ; preds = %bb.o
  %i.bg = shl nsw i32 %.0178224.us, 2
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh
  store i32 %8, ptr %i.bi, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.bj = add nsw i32 %.0178224.us, 1             ; 2 uses
  %i.bk = icmp slt i32 %i.bj, %i.ax
  br i1 %i.bk, label %bb.n, label %.loopexit215.us, !llvm.loop !45

.loopexit215.us:                                  ; preds = %bb.q, %bb.o, %.lr.ph229.split.us
  %indvars.iv.next285 = add nsw i64 %indvars.iv284, 1 ; 2 uses
  %lftr.wideiv287 = trunc i64 %indvars.iv.next285 to i32
  %exitcond288.not = icmp eq i32 %i.at, %lftr.wideiv287
  br i1 %exitcond288.not, label %._crit_edge230, label %.lr.ph229.split.us, !llvm.loop !46

._crit_edge230:                                   ; preds = %.loopexit215.us, %bb.m, %._crit_edge, %.lr.ph229
  %i.bl = add nsw i32 %i.u, %4                    ; 2 uses
  %i.bm = icmp slt i32 %i.av, %i.bl
  br i1 %i.bm, label %.lr.ph239, label %._crit_edge240

.lr.ph239:                                        ; preds = %._crit_edge230
  %i.bn = icmp slt i32 %i.w, %i.as
  %.fr243 = freeze i1 %i.bn
  br i1 %.fr243, label %.lr.ph239.split.us.preheader, label %._crit_edge240

.lr.ph239.split.us.preheader:                     ; preds = %.lr.ph239
  %i.bo = sext i32 %i.w to i64
  %i.bp = sext i32 %2 to i64
  %i.bq = sext i32 %3 to i64
  %i.br = sext i32 %i.as to i64
  br label %.lr.ph239.split.us

.lr.ph239.split.us:                               ; preds = %.lr.ph239.split.us.preheader, %.loopexit214.us
  %.0177236.us = phi i32 [ %i.bw, %.loopexit214.us ], [ %i.av, %.lr.ph239.split.us.preheader ] ; 4 uses
  %i.bs = icmp slt i32 %.0177236.us, 0
  br i1 %i.bs, label %.loopexit214.us, label %bb.r

bb.r:                                             ; preds = %.lr.ph239.split.us
  %.not203.us = icmp slt i32 %.0177236.us, %1
  br i1 %.not203.us, label %.preheader213.us, label %._crit_edge240

bb.s:                                             ; preds = %.preheader213.us, %bb.v
  %indvars.iv289 = phi i64 [ %i.bo, %.preheader213.us ], [ %indvars.iv.next290, %bb.v ] ; 4 uses
  %i.bt = icmp slt i64 %indvars.iv289, 0
  br i1 %i.bt, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not204.us = icmp slt i64 %indvars.iv289, %i.bp
  br i1 %.not204.us, label %bb.u, label %.loopexit214.us

bb.u:                                             ; preds = %bb.t
  %i.bu = mul nsw i64 %indvars.iv289, %i.bq
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %i.bu
  store i32 %8, ptr %gep.us, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %indvars.iv.next290 = add nsw i64 %indvars.iv289, 1 ; 2 uses
  %i.bv = icmp slt i64 %indvars.iv.next290, %i.br
  br i1 %i.bv, label %bb.s, label %.loopexit214.us, !llvm.loop !47

.loopexit214.us:                                  ; preds = %bb.v, %bb.t, %.lr.ph239.split.us
  %i.bw = add i32 %.0177236.us, 1                 ; 2 uses
  %exitcond292.not = icmp eq i32 %i.bw, %i.bl
  br i1 %exitcond292.not, label %._crit_edge240, label %.lr.ph239.split.us, !llvm.loop !48

.preheader213.us:                                 ; preds = %bb.r
  %i.bx = shl nsw i32 %.0177236.us, 2
  %i.by = zext nneg i32 %i.bx to i64
  %invariant.gep.us = getelementptr i8, ptr %0, i64 %i.by
  br label %bb.s

._crit_edge240:                                   ; preds = %.loopexit214.us, %bb.r, %.lr.ph239, %._crit_edge230
  %i.bz = add nsw i32 %6, %4                      ; 2 uses
  %i.ca = sub nsw i32 %i.bz, %i.t                 ; 2 uses
  %i.cb = add nsw i32 %i.u, %i.bz                 ; 2 uses
  %i.cc = icmp slt i32 %i.ca, %i.cb
  br i1 %i.cc, label %.lr.ph249, label %.loopexit209

.lr.ph249:                                        ; preds = %._crit_edge240
  %i.cd = icmp slt i32 %i.w, %i.as
  %.fr254 = freeze i1 %i.cd
  br i1 %.fr254, label %.lr.ph249.split.us.preheader, label %.loopexit209

.lr.ph249.split.us.preheader:                     ; preds = %.lr.ph249
  %i.ce = sext i32 %i.w to i64
  %i.cf = sext i32 %2 to i64
  %i.cg = sext i32 %3 to i64
  %i.ch = sext i32 %i.as to i64
  br label %.lr.ph249.split.us

.lr.ph249.split.us:                               ; preds = %.lr.ph249.split.us.preheader, %.loopexit211.us
  %.0174246.us = phi i32 [ %i.cm, %.loopexit211.us ], [ %i.ca, %.lr.ph249.split.us.preheader ] ; 4 uses
  %i.ci = icmp slt i32 %.0174246.us, 0
  br i1 %i.ci, label %.loopexit211.us, label %bb.w

bb.w:                                             ; preds = %.lr.ph249.split.us
  %.not205.us = icmp slt i32 %.0174246.us, %1
  br i1 %.not205.us, label %.preheader210.us, label %.loopexit209

bb.x:                                             ; preds = %.preheader210.us, %bb.aa
  %indvars.iv293 = phi i64 [ %i.ce, %.preheader210.us ], [ %indvars.iv.next294, %bb.aa ] ; 4 uses
  %i.cj = icmp slt i64 %indvars.iv293, 0
  br i1 %i.cj, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not206.us = icmp slt i64 %indvars.iv293, %i.cf
  br i1 %.not206.us, label %bb.z, label %.loopexit211.us

bb.z:                                             ; preds = %bb.y
  %i.ck = mul nsw i64 %indvars.iv293, %i.cg
  %gep.us251 = getelementptr i8, ptr %invariant.gep.us253, i64 %i.ck
  store i32 %8, ptr %gep.us251, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  %indvars.iv.next294 = add nsw i64 %indvars.iv293, 1 ; 2 uses
  %i.cl = icmp slt i64 %indvars.iv.next294, %i.ch
  br i1 %i.cl, label %bb.x, label %.loopexit211.us, !llvm.loop !49

.loopexit211.us:                                  ; preds = %bb.aa, %bb.y, %.lr.ph249.split.us
  %i.cm = add i32 %.0174246.us, 1                 ; 2 uses
  %exitcond296.not = icmp eq i32 %i.cm, %i.cb
  br i1 %exitcond296.not, label %.loopexit209, label %.lr.ph249.split.us, !llvm.loop !50

.preheader210.us:                                 ; preds = %bb.w
  %i.cn = shl nsw i32 %.0174246.us, 2
  %i.co = zext nneg i32 %i.cn to i64
  %invariant.gep.us253 = getelementptr i8, ptr %0, i64 %i.co
  br label %bb.x

.loopexit209:                                     ; preds = %bb.w, %.loopexit211.us, %bb.b, %.loopexit.us, %.lr.ph249, %.lr.ph259, %._crit_edge240, %.preheader
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn23draw_rectangle_yuv420spEPhiiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %.sroa.028.0.insert.ext = and i32 %7, 255
  tail call void @_ZN4ncnn17draw_rectangle_c1EPhiiiiiiiji(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %1, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %.sroa.028.0.insert.ext, i32 noundef %8)
  %i.a = icmp eq i32 %8, -1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i32 %8, 2
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %.sroa.speculated, %bb.b ], [ -1, %bb.a ]
  %i.d = mul nsw i32 %2, %1
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %.sroa.2.0.extract.shift = lshr i32 %7, 8
  %i.g = sdiv i32 %1, 2                           ; 2 uses
  %i.h = sdiv i32 %2, 2
  %i.i = sdiv i32 %3, 2
  %i.j = sdiv i32 %4, 2
  %i.k = sdiv i32 %5, 2
  %i.l = sdiv i32 %6, 2
  %.sroa.030.0.insert.insert = and i32 %.sroa.2.0.extract.shift, 65535
  %i.m = shl nsw i32 %i.g, 1
  tail call void @_ZN4ncnn17draw_rectangle_c2EPhiiiiiiiji(ptr noundef %i.f, i32 noundef %i.g, i32 noundef %i.h, i32 noundef %i.m, i32 noundef %i.i, i32 noundef %i.j, i32 noundef %i.k, i32 noundef %i.l, i32 noundef %.sroa.030.0.insert.insert, i32 noundef %i.c)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn14draw_circle_c1EPhiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN4ncnn14draw_circle_c1EPhiiiiiiji(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %1, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn14draw_circle_c1EPhiiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i32 %7 to i8   ; 2 uses
  %i.a = icmp eq i32 %8, -1
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %6, -1                       ; 2 uses
  %i.c = sub nsw i32 %5, %i.b                     ; 2 uses
  %i.d = add nsw i32 %6, %5                       ; 2 uses
  %i.e = icmp slt i32 %i.c, %i.d
  br i1 %i.e, label %.lr.ph89, label %.loopexit76

.lr.ph89:                                         ; preds = %bb.b
  %i.f = sub nsw i32 %4, %i.b                     ; 2 uses
  %i.g = add nsw i32 %6, %4                       ; 2 uses
  %i.h = icmp slt i32 %i.f, %i.g
  %i.i = sitofp fast i32 %6 to float              ; 2 uses
  %i.j = fmul fast float %i.i, %i.i
  %.fr92 = freeze i1 %i.h
  br i1 %.fr92, label %.lr.ph89.split.us.preheader, label %.loopexit76

.lr.ph89.split.us.preheader:                      ; preds = %.lr.ph89
  %i.k = sext i32 %i.c to i64
  %i.l = sext i32 %2 to i64
  %i.m = sext i32 %3 to i64
  br label %.lr.ph89.split.us

.lr.ph89.split.us:                                ; preds = %.lr.ph89.split.us.preheader, %.loopexit.us
  %indvars.iv100 = phi i64 [ %i.k, %.lr.ph89.split.us.preheader ], [ %indvars.iv.next101, %.loopexit.us ] ; 5 uses
  %i.n = icmp slt i64 %indvars.iv100, 0
  br i1 %i.n, label %.loopexit.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph89.split.us
  %.not74.us = icmp slt i64 %indvars.iv100, %i.l
  br i1 %.not74.us, label %.lr.ph.us91, label %.loopexit76

.lr.ph.us91:                                      ; preds = %bb.c
  %i.o = mul nsw i64 %indvars.iv100, %i.m
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o
  %i.q = trunc i64 %indvars.iv100 to i32
  %i.r = sub i32 %i.q, %5                         ; 2 uses
  %i.s = mul nsw i32 %i.r, %i.r
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.us91, %bb.h
  %.06985.us = phi i32 [ %i.f, %.lr.ph.us91 ], [ %i.ab, %bb.h ] ; 5 uses
  %i.t = icmp slt i32 %.06985.us, 0
  br i1 %i.t, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not75.us = icmp slt i32 %.06985.us, %1
  br i1 %.not75.us, label %bb.f, label %.loopexit.us

bb.f:                                             ; preds = %bb.e
  %i.u = sub nsw i32 %.06985.us, %4               ; 2 uses
  %i.v = mul nsw i32 %i.u, %i.u
  %i.w = add nuw nsw i32 %i.v, %i.s
  %i.x = uitofp nneg i32 %i.w to float
  %i.y = fcmp fast ult float %i.j, %i.x
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = zext nneg i32 %.06985.us to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.z
  store i8 %.sroa.0.0.extract.trunc, ptr %i.aa, align 1, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.ab = add nsw i32 %.06985.us, 1               ; 2 uses
  %i.ac = icmp slt i32 %i.ab, %i.g
  br i1 %i.ac, label %bb.d, label %.loopexit.us, !llvm.loop !51

.loopexit.us:                                     ; preds = %bb.h, %bb.e, %.lr.ph89.split.us
  %indvars.iv.next101 = add nsw i64 %indvars.iv100, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next101 to i32
  %exitcond.not = icmp eq i32 %i.d, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit76, label %.lr.ph89.split.us, !llvm.loop !52

bb.i:                                             ; preds = %bb.a
  %i.ad = sitofp fast i32 %8 to float
  %i.ae = fmul fast float %i.ad, 5.000000e-01     ; 6 uses
  %i.af = add nsw i32 %6, -1                      ; 2 uses
  %i.ag = sub nsw i32 %5, %i.af
  %i.ah = sitofp fast i32 %i.ag to float
  %i.ai = fsub fast float %i.ah, %i.ae
  %i.aj = fptosi float %i.ai to i32               ; 2 uses
  %i.ak = add nsw i32 %6, %5
  %i.al = sitofp fast i32 %i.ak to float
  %i.am = fadd fast float %i.ae, %i.al            ; 2 uses
  %i.an = sitofp fast i32 %i.aj to float
  %i.ao = fcmp fast ogt float %i.am, %i.an
  br i1 %i.ao, label %.lr.ph83, label %.loopexit76

.lr.ph83:                                         ; preds = %bb.i
  %i.ap = sub nsw i32 %4, %i.af
  %i.aq = sitofp fast i32 %i.ap to float
  %i.ar = fsub fast float %i.aq, %i.ae
  %i.as = fptosi float %i.ar to i32               ; 2 uses
  %i.at = add nsw i32 %6, %4
  %i.au = sitofp fast i32 %i.at to float
  %i.av = fadd fast float %i.ae, %i.au            ; 2 uses
  %i.aw = sitofp fast i32 %i.as to float
  %i.ax = fcmp fast ogt float %i.av, %i.aw
  %i.ay = sitofp fast i32 %6 to float             ; 2 uses
  %i.az = fsub fast float %i.ay, %i.ae            ; 2 uses
  %i.ba = fadd fast float %i.ae, %i.ay            ; 2 uses
  %i.bb = fmul fast float %i.az, %i.az
  %i.bc = fmul fast float %i.ba, %i.ba
  %.fr = freeze i1 %i.ax
  br i1 %.fr, label %.lr.ph83.split.us.preheader, label %.loopexit76

.lr.ph83.split.us.preheader:                      ; preds = %.lr.ph83
  %i.bd = sext i32 %i.aj to i64
  %i.be = sext i32 %2 to i64
  %i.bf = sext i32 %3 to i64
  br label %.lr.ph83.split.us

.lr.ph83.split.us:                                ; preds = %.lr.ph83.split.us.preheader, %.loopexit77.us
  %indvars.iv = phi i64 [ %i.bd, %.lr.ph83.split.us.preheader ], [ %indvars.iv.next, %.loopexit77.us ] ; 5 uses
  %i.bg = icmp slt i64 %indvars.iv, 0
  br i1 %i.bg, label %.loopexit77.us, label %bb.j

bb.j:                                             ; preds = %.lr.ph83.split.us
  %.not.us = icmp slt i64 %indvars.iv, %i.be
  br i1 %.not.us, label %.lr.ph.us, label %.loopexit76

.lr.ph.us:                                        ; preds = %bb.j
  %i.bh = mul nsw i64 %indvars.iv, %i.bf
  %i.bi = getelementptr inbounds i8, ptr %0, i64 %i.bh
  %i.bj = trunc i64 %indvars.iv to i32
  %i.bk = sub i32 %i.bj, %5                       ; 2 uses
  %i.bl = mul nsw i32 %i.bk, %i.bk
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.us, %bb.o
  %.079.us = phi i32 [ %i.as, %.lr.ph.us ], [ %i.bw, %bb.o ] ; 5 uses
  %i.bm = icmp slt i32 %.079.us, 0
  br i1 %i.bm, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not73.us = icmp slt i32 %.079.us, %1
  br i1 %.not73.us, label %bb.m, label %.loopexit77.us

bb.m:                                             ; preds = %bb.l
  %i.bn = sub nsw i32 %.079.us, %4                ; 2 uses
  %i.bo = mul nsw i32 %i.bn, %i.bn
end_hunk_0
begin_hunk_1_@_ZN4ncnn14draw_circle_c3EPhiiiiiiji:bb.a
  %i.w = add nuw nsw i32 %i.v, %i.s
  %i.x = uitofp nneg i32 %i.w to float
  %i.y = fcmp fast ult float %i.j, %i.x
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = mul nuw nsw i32 %.08199.us, 3
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.aa ; 3 uses
  store i8 %.sroa.0.0.extract.trunc, ptr %i.ab, align 1, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store i8 %.sroa.3.0.extract.trunc, ptr %i.ac, align 1, !tbaa !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  store i8 %.sroa.5.0.extract.trunc, ptr %i.ad, align 1, !tbaa !9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.ae = add nsw i32 %.08199.us, 1               ; 2 uses
  %i.af = icmp slt i32 %i.ae, %i.g
  br i1 %i.af, label %bb.d, label %.loopexit.us, !llvm.loop !59

.loopexit.us:                                     ; preds = %bb.h, %bb.e, %.lr.ph103.split.us
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next115 to i32
  %exitcond.not = icmp eq i32 %i.d, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit90, label %.lr.ph103.split.us, !llvm.loop !60

bb.i:                                             ; preds = %bb.a
  %i.ag = sitofp fast i32 %8 to float
  %i.ah = fmul fast float %i.ag, 5.000000e-01     ; 6 uses
  %i.ai = sub nsw i32 %5, %6
  %i.aj = sitofp fast i32 %i.ai to float
  %i.ak = fsub fast float %i.aj, %i.ah
  %i.al = fptosi float %i.ak to i32               ; 2 uses
  %i.am = add nsw i32 %6, %5
  %i.an = sitofp fast i32 %i.am to float
  %i.ao = fadd fast float %i.ah, %i.an            ; 2 uses
  %i.ap = sitofp fast i32 %i.al to float
  %i.aq = fcmp fast ogt float %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph97, label %.loopexit90

.lr.ph97:                                         ; preds = %bb.i
  %i.ar = sub nsw i32 %4, %6
  %i.as = sitofp fast i32 %i.ar to float
  %i.at = fsub fast float %i.as, %i.ah
  %i.au = fptosi float %i.at to i32               ; 2 uses
  %i.av = add nsw i32 %6, %4
  %i.aw = sitofp fast i32 %i.av to float
  %i.ax = fadd fast float %i.ah, %i.aw            ; 2 uses
  %i.ay = sitofp fast i32 %i.au to float
  %i.az = fcmp fast ogt float %i.ax, %i.ay
  %i.ba = sitofp fast i32 %6 to float             ; 2 uses
  %i.bb = fsub fast float %i.ba, %i.ah            ; 2 uses
  %i.bc = fadd fast float %i.ah, %i.ba            ; 2 uses
  %i.bd = fmul fast float %i.bb, %i.bb
  %i.be = fmul fast float %i.bc, %i.bc
  %.fr = freeze i1 %i.az
  br i1 %.fr, label %.lr.ph97.split.us.preheader, label %.loopexit90

.lr.ph97.split.us.preheader:                      ; preds = %.lr.ph97
  %i.bf = sext i32 %i.al to i64
  %i.bg = sext i32 %2 to i64
  %i.bh = sext i32 %3 to i64
  br label %.lr.ph97.split.us

.lr.ph97.split.us:                                ; preds = %.lr.ph97.split.us.preheader, %.loopexit91.us
  %indvars.iv = phi i64 [ %i.bf, %.lr.ph97.split.us.preheader ], [ %indvars.iv.next, %.loopexit91.us ] ; 5 uses
  %i.bi = icmp slt i64 %indvars.iv, 0
  br i1 %i.bi, label %.loopexit91.us, label %bb.j

bb.j:                                             ; preds = %.lr.ph97.split.us
  %.not.us = icmp slt i64 %indvars.iv, %i.bg
  br i1 %.not.us, label %.lr.ph.us, label %.loopexit90

.lr.ph.us:                                        ; preds = %bb.j
  %i.bj = mul nsw i64 %indvars.iv, %i.bh
  %i.bk = getelementptr inbounds i8, ptr %0, i64 %i.bj
  %i.bl = trunc i64 %indvars.iv to i32
  %i.bm = sub i32 %i.bl, %5                       ; 2 uses
  %i.bn = mul nsw i32 %i.bm, %i.bm
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.us, %bb.o
  %.093.us = phi i32 [ %i.au, %.lr.ph.us ], [ %i.cb, %bb.o ] ; 5 uses
  %i.bo = icmp slt i32 %.093.us, 0
  br i1 %i.bo, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not87.us = icmp slt i32 %.093.us, %1
  br i1 %.not87.us, label %bb.m, label %.loopexit91.us

bb.m:                                             ; preds = %bb.l
  %i.bp = sub nsw i32 %.093.us, %4                ; 2 uses
  %i.bq = mul nsw i32 %i.bp, %i.bp
  %i.br = add nuw nsw i32 %i.bq, %i.bn
  %i.bs = uitofp nneg i32 %i.br to float          ; 2 uses
  %i.bt = fcmp fast ole float %i.bd, %i.bs
  %i.bu = fcmp fast ogt float %i.be, %i.bs
  %i.bv = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %i.bv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bw = mul nuw nsw i32 %.093.us, 3
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bx ; 3 uses
  store i8 %.sroa.0.0.extract.trunc, ptr %i.by, align 1, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  store i8 %.sroa.3.0.extract.trunc, ptr %i.bz, align 1, !tbaa !9
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  store i8 %.sroa.5.0.extract.trunc, ptr %i.ca, align 1, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %i.cb = add nsw i32 %.093.us, 1                 ; 2 uses
  %i.cc = sitofp fast i32 %i.cb to float
  %i.cd = fcmp fast ogt float %i.ax, %i.cc
  br i1 %i.cd, label %bb.k, label %.loopexit91.us, !llvm.loop !61

.loopexit91.us:                                   ; preds = %bb.o, %bb.l, %.lr.ph97.split.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ce = trunc nsw i64 %indvars.iv.next to i32
  %i.cf = sitofp fast i32 %i.ce to float
  %i.cg = fcmp fast ogt float %i.ao, %i.cf
  br i1 %i.cg, label %.lr.ph97.split.us, label %.loopexit90, !llvm.loop !62

.loopexit90:                                      ; preds = %bb.j, %.loopexit91.us, %bb.c, %.loopexit.us, %.lr.ph97, %.lr.ph103, %bb.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn14draw_circle_c4EPhiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nsw i32 %1, 2
  tail call void @_ZN4ncnn14draw_circle_c4EPhiiiiiiji(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.a, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn14draw_circle_c4EPhiiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %8, -1
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %6, -1                       ; 2 uses
  %i.c = sub nsw i32 %5, %i.b                     ; 2 uses
  %i.d = add nsw i32 %6, %5                       ; 2 uses
  %i.e = icmp slt i32 %i.c, %i.d
  br i1 %i.e, label %.lr.ph110, label %.loopexit97

.lr.ph110:                                        ; preds = %bb.b
  %i.f = sub nsw i32 %4, %i.b                     ; 2 uses
  %i.g = add nsw i32 %6, %4                       ; 2 uses
  %i.h = icmp slt i32 %i.f, %i.g
  %i.i = sitofp fast i32 %6 to float              ; 2 uses
  %i.j = fmul fast float %i.i, %i.i
  %.fr113 = freeze i1 %i.h
  br i1 %.fr113, label %.lr.ph110.split.us.preheader, label %.loopexit97

.lr.ph110.split.us.preheader:                     ; preds = %.lr.ph110
  %i.k = sext i32 %i.c to i64
  %i.l = sext i32 %2 to i64
  %i.m = sext i32 %3 to i64
  br label %.lr.ph110.split.us

.lr.ph110.split.us:                               ; preds = %.lr.ph110.split.us.preheader, %.loopexit.us
  %indvars.iv121 = phi i64 [ %i.k, %.lr.ph110.split.us.preheader ], [ %indvars.iv.next122, %.loopexit.us ] ; 5 uses
  %i.n = icmp slt i64 %indvars.iv121, 0
  br i1 %i.n, label %.loopexit.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph110.split.us
  %.not95.us = icmp slt i64 %indvars.iv121, %i.l
  br i1 %.not95.us, label %.lr.ph.us112, label %.loopexit97

.lr.ph.us112:                                     ; preds = %bb.c
  %i.o = mul nsw i64 %indvars.iv121, %i.m
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o
  %i.q = trunc i64 %indvars.iv121 to i32
  %i.r = sub i32 %i.q, %5                         ; 2 uses
  %i.s = mul nsw i32 %i.r, %i.r
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.us112, %bb.h
  %.087106.us = phi i32 [ %i.f, %.lr.ph.us112 ], [ %i.ac, %bb.h ] ; 5 uses
  %i.t = icmp slt i32 %.087106.us, 0
  br i1 %i.t, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not96.us = icmp slt i32 %.087106.us, %1
  br i1 %.not96.us, label %bb.f, label %.loopexit.us

bb.f:                                             ; preds = %bb.e
  %i.u = sub nsw i32 %.087106.us, %4              ; 2 uses
  %i.v = mul nsw i32 %i.u, %i.u
  %i.w = add nuw nsw i32 %i.v, %i.s
  %i.x = uitofp nneg i32 %i.w to float
  %i.y = fcmp fast ult float %i.j, %i.x
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = shl nsw i32 %.087106.us, 2
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.aa
  store i32 %7, ptr %i.ab, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.ac = add nsw i32 %.087106.us, 1              ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %i.g
  br i1 %i.ad, label %bb.d, label %.loopexit.us, !llvm.loop !63

.loopexit.us:                                     ; preds = %bb.h, %bb.e, %.lr.ph110.split.us
  %indvars.iv.next122 = add nsw i64 %indvars.iv121, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next122 to i32
  %exitcond.not = icmp eq i32 %i.d, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit97, label %.lr.ph110.split.us, !llvm.loop !64

bb.i:                                             ; preds = %bb.a
  %i.ae = sitofp fast i32 %8 to float
  %i.af = fmul fast float %i.ae, 5.000000e-01     ; 6 uses
  %i.ag = add nsw i32 %6, -1                      ; 2 uses
  %i.ah = sub nsw i32 %5, %i.ag
  %i.ai = sitofp fast i32 %i.ah to float
  %i.aj = fsub fast float %i.ai, %i.af
  %i.ak = fptosi float %i.aj to i32               ; 2 uses
  %i.al = add nsw i32 %6, %5
  %i.am = sitofp fast i32 %i.al to float
  %i.an = fadd fast float %i.af, %i.am            ; 2 uses
  %i.ao = sitofp fast i32 %i.ak to float
  %i.ap = fcmp fast ogt float %i.an, %i.ao
  br i1 %i.ap, label %.lr.ph104, label %.loopexit97

.lr.ph104:                                        ; preds = %bb.i
  %i.aq = sub nsw i32 %4, %i.ag
  %i.ar = sitofp fast i32 %i.aq to float
  %i.as = fsub fast float %i.ar, %i.af
  %i.at = fptosi float %i.as to i32               ; 2 uses
  %i.au = add nsw i32 %6, %4
  %i.av = sitofp fast i32 %i.au to float
  %i.aw = fadd fast float %i.af, %i.av            ; 2 uses
  %i.ax = sitofp fast i32 %i.at to float
  %i.ay = fcmp fast ogt float %i.aw, %i.ax
  %i.az = sitofp fast i32 %6 to float             ; 2 uses
  %i.ba = fsub fast float %i.az, %i.af            ; 2 uses
  %i.bb = fadd fast float %i.af, %i.az            ; 2 uses
  %i.bc = fmul fast float %i.ba, %i.ba
  %i.bd = fmul fast float %i.bb, %i.bb
  %.fr = freeze i1 %i.ay
  br i1 %.fr, label %.lr.ph104.split.us.preheader, label %.loopexit97

.lr.ph104.split.us.preheader:                     ; preds = %.lr.ph104
  %i.be = sext i32 %i.ak to i64
  %i.bf = sext i32 %2 to i64
  %i.bg = sext i32 %3 to i64
  br label %.lr.ph104.split.us

.lr.ph104.split.us:                               ; preds = %.lr.ph104.split.us.preheader, %.loopexit98.us
  %indvars.iv = phi i64 [ %i.be, %.lr.ph104.split.us.preheader ], [ %indvars.iv.next, %.loopexit98.us ] ; 5 uses
  %i.bh = icmp slt i64 %indvars.iv, 0
  br i1 %i.bh, label %.loopexit98.us, label %bb.j

bb.j:                                             ; preds = %.lr.ph104.split.us
  %.not.us = icmp slt i64 %indvars.iv, %i.bf
  br i1 %.not.us, label %.lr.ph.us, label %.loopexit97

.lr.ph.us:                                        ; preds = %bb.j
  %i.bi = mul nsw i64 %indvars.iv, %i.bg
  %i.bj = getelementptr inbounds i8, ptr %0, i64 %i.bi
  %i.bk = trunc i64 %indvars.iv to i32
  %i.bl = sub i32 %i.bk, %5                       ; 2 uses
  %i.bm = mul nsw i32 %i.bl, %i.bl
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.us, %bb.o
  %.0100.us = phi i32 [ %i.at, %.lr.ph.us ], [ %i.by, %bb.o ] ; 5 uses
  %i.bn = icmp slt i32 %.0100.us, 0
  br i1 %i.bn, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not94.us = icmp slt i32 %.0100.us, %1
  br i1 %.not94.us, label %bb.m, label %.loopexit98.us

bb.m:                                             ; preds = %bb.l
  %i.bo = sub nsw i32 %.0100.us, %4               ; 2 uses
  %i.bp = mul nsw i32 %i.bo, %i.bo
  %i.bq = add nuw nsw i32 %i.bp, %i.bm
  %i.br = uitofp nneg i32 %i.bq to float          ; 2 uses
  %i.bs = fcmp fast ole float %i.bc, %i.br
  %i.bt = fcmp fast ogt float %i.bd, %i.br
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bv = shl nsw i32 %.0100.us, 2
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bw
  store i32 %7, ptr %i.bx, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %i.by = add nsw i32 %.0100.us, 1                ; 2 uses
  %i.bz = sitofp fast i32 %i.by to float
  %i.ca = fcmp fast ogt float %i.aw, %i.bz
  br i1 %i.ca, label %bb.k, label %.loopexit98.us, !llvm.loop !65

.loopexit98.us:                                   ; preds = %bb.o, %bb.l, %.lr.ph104.split.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.cb = trunc nsw i64 %indvars.iv.next to i32
  %i.cc = sitofp fast i32 %i.cb to float
  %i.cd = fcmp fast ogt float %i.an, %i.cc
  br i1 %i.cd, label %.lr.ph104.split.us, label %.loopexit97, !llvm.loop !66

.loopexit97:                                      ; preds = %bb.j, %.loopexit98.us, %bb.c, %.loopexit.us, %.lr.ph104, %.lr.ph110, %bb.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn20draw_circle_yuv420spEPhiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %.sroa.026.0.insert.ext = and i32 %6, 255
  tail call void @_ZN4ncnn14draw_circle_c1EPhiiiiiiji(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %1, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %.sroa.026.0.insert.ext, i32 noundef %7)
  %i.a = icmp eq i32 %7, -1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i32 %7, 2
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %.sroa.speculated, %bb.b ], [ -1, %bb.a ]
  %i.d = mul nsw i32 %2, %1
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %.sroa.2.0.extract.shift = lshr i32 %6, 8
  %i.g = sdiv i32 %1, 2                           ; 2 uses
  %i.h = sdiv i32 %2, 2
  %i.i = sdiv i32 %3, 2
  %i.j = sdiv i32 %4, 2
  %i.k = sdiv i32 %5, 2
  %.sroa.028.0.insert.insert = and i32 %.sroa.2.0.extract.shift, 65535
  %i.l = shl nsw i32 %i.g, 1
  tail call void @_ZN4ncnn14draw_circle_c2EPhiiiiiiji(ptr noundef %i.f, i32 noundef %i.g, i32 noundef %i.h, i32 noundef %i.l, i32 noundef %i.i, i32 noundef %i.j, i32 noundef %i.k, i32 noundef %.sroa.028.0.insert.insert, i32 noundef %i.c)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn12draw_line_c1EPhiiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN4ncnn12draw_line_c1EPhiiiiiiiji(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %1, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn12draw_line_c1EPhiiiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i32 %8 to i8
  %i.a = sitofp fast i32 %9 to float
  %i.b = fmul fast float %i.a, 5.000000e-01       ; 5 uses
  %.sroa.speculated38 = tail call i32 @llvm.smin.i32(i32 %7, i32 %5)
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %5, i32 %7)
  %i.c = sitofp fast i32 %.sroa.speculated38 to float
  %i.d = fsub fast float %i.c, %i.b
  %i.e = fptosi float %i.d to i32                 ; 2 uses
  %i.f = sitofp fast i32 %.sroa.speculated to float
  %i.g = fadd fast float %i.b, %i.f               ; 2 uses
  %i.h = sitofp fast i32 %i.e to float
  %i.i = fcmp fast ogt float %i.g, %i.h
  br i1 %i.i, label %.lr.ph77, label %._crit_edge

.lr.ph77:                                         ; preds = %bb.a
  %.sroa.speculated46 = tail call i32 @llvm.smax.i32(i32 %4, i32 %6)
  %.sroa.speculated49 = tail call i32 @llvm.smin.i32(i32 %6, i32 %4)
  %i.j = sitofp fast i32 %.sroa.speculated49 to float
  %i.k = fsub fast float %i.j, %i.b
  %i.l = fptosi float %i.k to i32                 ; 2 uses
  %i.m = sitofp fast i32 %.sroa.speculated46 to float
  %i.n = fadd fast float %i.b, %i.m               ; 2 uses
  %i.o = sitofp fast i32 %i.l to float
  %i.p = fcmp fast ogt float %i.n, %i.o
  %i.q = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.r = insertelement <2 x i32> %i.q, i32 %7, i64 1
  %i.s = insertelement <2 x i32> poison, i32 %4, i64 0
  %i.t = insertelement <2 x i32> %i.s, i32 %5, i64 1 ; 2 uses
  %i.u = sub nsw <2 x i32> %i.r, %i.t             ; 3 uses
  %i.v = sitofp <2 x i32> %i.t to <2 x float>
  %i.w = sitofp <2 x i32> %i.u to <2 x float>
  %.fr = freeze i1 %i.p
  br i1 %.fr, label %.lr.ph77.split.us.preheader, label %._crit_edge

.lr.ph77.split.us.preheader:                      ; preds = %.lr.ph77
  %i.x = extractelement <2 x i32> %i.u, i64 1     ; 3 uses
  %i.y = mul nsw i32 %i.x, %i.x
  %i.z = extractelement <2 x i32> %i.u, i64 0     ; 3 uses
  %i.aa = mul nsw i32 %i.z, %i.z
  %i.ab = add nuw nsw i32 %i.y, %i.aa
  %i.ac = uitofp nneg i32 %i.ab to float
  %i.ad = sext i32 %i.e to i64
  %i.ae = sext i32 %2 to i64
  %i.af = sext i32 %3 to i64
  %i.ag = fdiv fast float 1.000000e+00, %i.ac
  br label %.lr.ph77.split.us

.lr.ph77.split.us:                                ; preds = %.lr.ph77.split.us.preheader, %.loopexit.us
  %indvars.iv = phi i64 [ %i.ad, %.lr.ph77.split.us.preheader ], [ %indvars.iv.next, %.loopexit.us ] ; 6 uses
  %i.ah = icmp slt i64 %indvars.iv, 0
  br i1 %i.ah, label %.loopexit.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph77.split.us
  %.not.us = icmp slt i64 %indvars.iv, %i.ae
  br i1 %.not.us, label %.lr.ph.us, label %._crit_edge

.lr.ph.us:                                        ; preds = %bb.b
  %i.ai = mul nsw i64 %indvars.iv, %i.af
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai
  %i.ak = trunc i64 %indvars.iv to i32
  %i.al = sub i32 %i.ak, %5
  %i.am = mul nsw i32 %i.al, %i.x
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  %i.ao = uitofp nneg i32 %i.an to float
  %i.ap = insertelement <2 x float> poison, float %i.ao, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us, %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us
  %.071.us = phi i32 [ %i.l, %.lr.ph.us ], [ %i.bk, %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us ] ; 6 uses
  %i.aq = icmp slt i32 %.071.us, 0
  br i1 %i.aq, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not30.us = icmp slt i32 %.071.us, %1
  br i1 %.not30.us, label %bb.e, label %.loopexit.us

bb.e:                                             ; preds = %bb.d
  %i.ar = sub nsw i32 %.071.us, %4
  %i.as = mul nsw i32 %i.ar, %i.z
  %i.at = add nsw i32 %i.as, %i.am
  %i.au = sitofp fast i32 %i.at to float
  %i.av = fmul fast float %i.au, %i.ag            ; 3 uses
  %i.aw = fcmp fast olt float %i.av, 0.000000e+00
  %i.ax = fcmp fast ogt float %i.av, 1.000000e+00
  %or.cond.i.us = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %or.cond.i.us, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us

_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us:     ; preds = %bb.e
  %i.ay = uitofp nneg i32 %.071.us to float
  %i.az = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul fast <2 x float> %i.ba, %i.w
  %i.bc = fadd fast <2 x float> %i.bb, %i.v
  %i.bd = insertelement <2 x float> %i.ap, float %i.ay, i64 0
  %i.be = fsub fast <2 x float> %i.bd, %i.bc      ; 2 uses
  %i.bf = fmul fast <2 x float> %i.be, %i.be
  %i.bg = tail call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.bf)
  %i.bh = fcmp fast olt float %i.bg, %i.b
  br i1 %i.bh, label %bb.f, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us

bb.f:                                             ; preds = %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us
  %i.bi = zext nneg i32 %.071.us to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bi
  store i8 %.sroa.0.0.extract.trunc, ptr %i.bj, align 1, !tbaa !9
  br label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us

_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us: ; preds = %bb.f, %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us, %bb.e, %bb.c
  %i.bk = add nsw i32 %.071.us, 1                 ; 2 uses
  %i.bl = sitofp fast i32 %i.bk to float
  %i.bm = fcmp fast ogt float %i.n, %i.bl
  br i1 %i.bm, label %bb.c, label %.loopexit.us, !llvm.loop !67

.loopexit.us:                                     ; preds = %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us, %bb.d, %.lr.ph77.split.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bn = trunc nsw i64 %indvars.iv.next to i32
  %i.bo = sitofp fast i32 %i.bn to float
  %i.bp = fcmp fast ogt float %i.g, %i.bo
  br i1 %i.bp, label %.lr.ph77.split.us, label %._crit_edge, !llvm.loop !68

._crit_edge:                                      ; preds = %.loopexit.us, %bb.b, %.lr.ph77, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn12draw_line_c2EPhiiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nsw i32 %1, 1
  tail call void @_ZN4ncnn12draw_line_c2EPhiiiiiiiji(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.a, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn12draw_line_c2EPhiiiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = sitofp fast i32 %9 to float
  %i.b = fmul fast float %i.a, 5.000000e-01       ; 5 uses
  %.sroa.speculated41 = tail call i32 @llvm.smin.i32(i32 %7, i32 %5)
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %5, i32 %7)
end_hunk_1
begin_hunk_2_@_ZN4ncnn12draw_line_c3EPhiiiiiiiji:bb.a
  %i.ab = add nuw nsw i32 %i.y, %i.aa
  %i.ac = uitofp nneg i32 %i.ab to float
  %i.ad = sext i32 %i.e to i64
  %i.ae = sext i32 %2 to i64
  %i.af = sext i32 %3 to i64
  %i.ag = fdiv fast float 1.000000e+00, %i.ac
  br label %.lr.ph83.split.us

.lr.ph83.split.us:                                ; preds = %.lr.ph83.split.us.preheader, %.loopexit.us
  %indvars.iv = phi i64 [ %i.ad, %.lr.ph83.split.us.preheader ], [ %indvars.iv.next, %.loopexit.us ] ; 6 uses
  %i.ah = icmp slt i64 %indvars.iv, 0
  br i1 %i.ah, label %.loopexit.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph83.split.us
  %.not.us = icmp slt i64 %indvars.iv, %i.ae
  br i1 %.not.us, label %.lr.ph.us, label %._crit_edge

.lr.ph.us:                                        ; preds = %bb.b
  %i.ai = mul nsw i64 %indvars.iv, %i.af
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai
  %i.ak = trunc i64 %indvars.iv to i32
  %i.al = sub i32 %i.ak, %5
  %i.am = mul nsw i32 %i.al, %i.x
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  %i.ao = uitofp nneg i32 %i.an to float
  %i.ap = insertelement <2 x float> poison, float %i.ao, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us, %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us
  %.077.us = phi i32 [ %i.l, %.lr.ph.us ], [ %i.bn, %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us ] ; 6 uses
  %i.aq = icmp slt i32 %.077.us, 0
  br i1 %i.aq, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not36.us = icmp slt i32 %.077.us, %1
  br i1 %.not36.us, label %bb.e, label %.loopexit.us

bb.e:                                             ; preds = %bb.d
  %i.ar = sub nsw i32 %.077.us, %4
  %i.as = mul nsw i32 %i.ar, %i.z
  %i.at = add nsw i32 %i.as, %i.am
  %i.au = sitofp fast i32 %i.at to float
  %i.av = fmul fast float %i.au, %i.ag            ; 3 uses
  %i.aw = fcmp fast olt float %i.av, 0.000000e+00
  %i.ax = fcmp fast ogt float %i.av, 1.000000e+00
  %or.cond.i.us = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %or.cond.i.us, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us

_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us:     ; preds = %bb.e
  %i.ay = uitofp nneg i32 %.077.us to float
  %i.az = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul fast <2 x float> %i.ba, %i.w
  %i.bc = fadd fast <2 x float> %i.bb, %i.v
  %i.bd = insertelement <2 x float> %i.ap, float %i.ay, i64 0
  %i.be = fsub fast <2 x float> %i.bd, %i.bc      ; 2 uses
  %i.bf = fmul fast <2 x float> %i.be, %i.be
  %i.bg = tail call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.bf)
  %i.bh = fcmp fast olt float %i.bg, %i.b
  br i1 %i.bh, label %bb.f, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us

bb.f:                                             ; preds = %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us
  %i.bi = mul nuw nsw i32 %.077.us, 3
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bj ; 3 uses
  store i8 %.sroa.0.0.extract.trunc, ptr %i.bk, align 1, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  store i8 %.sroa.2.0.extract.trunc, ptr %i.bl, align 1, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 2
  store i8 %.sroa.3.0.extract.trunc, ptr %i.bm, align 1, !tbaa !9
  br label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us

_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us: ; preds = %bb.f, %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us, %bb.e, %bb.c
  %i.bn = add nsw i32 %.077.us, 1                 ; 2 uses
  %i.bo = sitofp fast i32 %i.bn to float
  %i.bp = fcmp fast ogt float %i.n, %i.bo
  br i1 %i.bp, label %bb.c, label %.loopexit.us, !llvm.loop !71

.loopexit.us:                                     ; preds = %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us, %bb.d, %.lr.ph83.split.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bq = trunc nsw i64 %indvars.iv.next to i32
  %i.br = sitofp fast i32 %i.bq to float
  %i.bs = fcmp fast ogt float %i.g, %i.br
  br i1 %i.bs, label %.lr.ph83.split.us, label %._crit_edge, !llvm.loop !72

._crit_edge:                                      ; preds = %.loopexit.us, %bb.b, %.lr.ph83, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn12draw_line_c4EPhiiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nsw i32 %1, 2
  tail call void @_ZN4ncnn12draw_line_c4EPhiiiiiiiji(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.a, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn12draw_line_c4EPhiiiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
bb.a:
  %i.a = sitofp fast i32 %9 to float
  %i.b = fmul fast float %i.a, 5.000000e-01       ; 5 uses
  %.sroa.speculated47 = tail call i32 @llvm.smin.i32(i32 %7, i32 %5)
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %5, i32 %7)
  %i.c = sitofp fast i32 %.sroa.speculated47 to float
  %i.d = fsub fast float %i.c, %i.b
  %i.e = fptosi float %i.d to i32                 ; 2 uses
  %i.f = sitofp fast i32 %.sroa.speculated to float
  %i.g = fadd fast float %i.b, %i.f               ; 2 uses
  %i.h = sitofp fast i32 %i.e to float
  %i.i = fcmp fast ogt float %i.g, %i.h
  br i1 %i.i, label %.lr.ph86, label %._crit_edge

.lr.ph86:                                         ; preds = %bb.a
  %.sroa.speculated55 = tail call i32 @llvm.smax.i32(i32 %4, i32 %6)
  %.sroa.speculated58 = tail call i32 @llvm.smin.i32(i32 %6, i32 %4)
  %i.j = sitofp fast i32 %.sroa.speculated58 to float
  %i.k = fsub fast float %i.j, %i.b
  %i.l = fptosi float %i.k to i32                 ; 2 uses
  %i.m = sitofp fast i32 %.sroa.speculated55 to float
  %i.n = fadd fast float %i.b, %i.m               ; 2 uses
  %i.o = sitofp fast i32 %i.l to float
  %i.p = fcmp fast ogt float %i.n, %i.o
  %i.q = insertelement <2 x i32> poison, i32 %6, i64 0
  %i.r = insertelement <2 x i32> %i.q, i32 %7, i64 1
  %i.s = insertelement <2 x i32> poison, i32 %4, i64 0
  %i.t = insertelement <2 x i32> %i.s, i32 %5, i64 1 ; 2 uses
  %i.u = sub nsw <2 x i32> %i.r, %i.t             ; 3 uses
  %i.v = sitofp <2 x i32> %i.t to <2 x float>
  %i.w = sitofp <2 x i32> %i.u to <2 x float>
  %.fr = freeze i1 %i.p
  br i1 %.fr, label %.lr.ph86.split.us.preheader, label %._crit_edge

.lr.ph86.split.us.preheader:                      ; preds = %.lr.ph86
  %i.x = extractelement <2 x i32> %i.u, i64 1     ; 3 uses
  %i.y = mul nsw i32 %i.x, %i.x
  %i.z = extractelement <2 x i32> %i.u, i64 0     ; 3 uses
  %i.aa = mul nsw i32 %i.z, %i.z
  %i.ab = add nuw nsw i32 %i.y, %i.aa
  %i.ac = uitofp nneg i32 %i.ab to float
  %i.ad = sext i32 %i.e to i64
  %i.ae = sext i32 %2 to i64
  %i.af = sext i32 %3 to i64
  %i.ag = fdiv fast float 1.000000e+00, %i.ac
  br label %.lr.ph86.split.us

.lr.ph86.split.us:                                ; preds = %.lr.ph86.split.us.preheader, %.loopexit.us
  %indvars.iv = phi i64 [ %i.ad, %.lr.ph86.split.us.preheader ], [ %indvars.iv.next, %.loopexit.us ] ; 6 uses
  %i.ah = icmp slt i64 %indvars.iv, 0
  br i1 %i.ah, label %.loopexit.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph86.split.us
  %.not.us = icmp slt i64 %indvars.iv, %i.ae
  br i1 %.not.us, label %.lr.ph.us, label %._crit_edge

.lr.ph.us:                                        ; preds = %bb.b
  %i.ai = mul nsw i64 %indvars.iv, %i.af
  %i.aj = getelementptr inbounds i8, ptr %0, i64 %i.ai
  %i.ak = trunc i64 %indvars.iv to i32
  %i.al = sub i32 %i.ak, %5
  %i.am = mul nsw i32 %i.al, %i.x
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
  %i.ao = uitofp nneg i32 %i.an to float
  %i.ap = insertelement <2 x float> poison, float %i.ao, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.us, %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us
  %.080.us = phi i32 [ %i.l, %.lr.ph.us ], [ %i.bl, %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us ] ; 6 uses
  %i.aq = icmp slt i32 %.080.us, 0
  br i1 %i.aq, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not39.us = icmp slt i32 %.080.us, %1
  br i1 %.not39.us, label %bb.e, label %.loopexit.us

bb.e:                                             ; preds = %bb.d
  %i.ar = sub nsw i32 %.080.us, %4
  %i.as = mul nsw i32 %i.ar, %i.z
  %i.at = add nsw i32 %i.as, %i.am
  %i.au = sitofp fast i32 %i.at to float
  %i.av = fmul fast float %i.au, %i.ag            ; 3 uses
  %i.aw = fcmp fast olt float %i.av, 0.000000e+00
  %i.ax = fcmp fast ogt float %i.av, 1.000000e+00
  %or.cond.i.us = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %or.cond.i.us, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us

_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us:     ; preds = %bb.e
  %i.ay = uitofp nneg i32 %.080.us to float
  %i.az = insertelement <2 x float> poison, float %i.av, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fmul fast <2 x float> %i.ba, %i.w
  %i.bc = fadd fast <2 x float> %i.bb, %i.v
  %i.bd = insertelement <2 x float> %i.ap, float %i.ay, i64 0
  %i.be = fsub fast <2 x float> %i.bd, %i.bc      ; 2 uses
  %i.bf = fmul fast <2 x float> %i.be, %i.be
  %i.bg = tail call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.bf)
  %i.bh = fcmp fast olt float %i.bg, %i.b
  br i1 %i.bh, label %bb.f, label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us

bb.f:                                             ; preds = %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us
  %i.bi = shl nsw i32 %.080.us, 2
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bj
  store i32 %8, ptr %i.bk, align 1
  br label %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us

_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us: ; preds = %bb.f, %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.us, %bb.e, %bb.c
  %i.bl = add nsw i32 %.080.us, 1                 ; 2 uses
  %i.bm = sitofp fast i32 %i.bl to float
  %i.bn = fcmp fast ogt float %i.n, %i.bm
  br i1 %i.bn, label %bb.c, label %.loopexit.us, !llvm.loop !73

.loopexit.us:                                     ; preds = %_ZN4ncnnL17distance_lessthanEiiiiiif.exit.thread.us, %bb.d, %.lr.ph86.split.us
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bo = trunc nsw i64 %indvars.iv.next to i32
  %i.bp = sitofp fast i32 %i.bo to float
  %i.bq = fcmp fast ogt float %i.g, %i.bp
  br i1 %i.bq, label %.lr.ph86.split.us, label %._crit_edge, !llvm.loop !74

._crit_edge:                                      ; preds = %.loopexit.us, %bb.b, %.lr.ph86, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @_ZN4ncnn18draw_line_yuv420spEPhiiiiiiji(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
bb.a:
  %.sroa.028.0.insert.ext = and i32 %7, 255
  tail call void @_ZN4ncnn12draw_line_c1EPhiiiiiiiji(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %1, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %.sroa.028.0.insert.ext, i32 noundef %8)
  %i.a = icmp eq i32 %8, -1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i32 %8, 2
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %.sroa.speculated, %bb.b ], [ -1, %bb.a ]
  %i.d = mul nsw i32 %2, %1
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e
  %.sroa.2.0.extract.shift = lshr i32 %7, 8
  %i.g = sdiv i32 %1, 2                           ; 2 uses
  %i.h = sdiv i32 %2, 2
  %i.i = sdiv i32 %3, 2
  %i.j = sdiv i32 %4, 2
  %i.k = sdiv i32 %5, 2
  %i.l = sdiv i32 %6, 2
  %.sroa.030.0.insert.insert = and i32 %.sroa.2.0.extract.shift, 65535
  %i.m = shl nsw i32 %i.g, 1
  tail call void @_ZN4ncnn12draw_line_c2EPhiiiiiiiji(ptr noundef %i.f, i32 noundef %i.g, i32 noundef %i.h, i32 noundef %i.m, i32 noundef %i.i, i32 noundef %i.j, i32 noundef %i.k, i32 noundef %i.l, i32 noundef %.sroa.030.0.insert.insert, i32 noundef %i.c)
  ret void
}

; Function Attrs: mustprogress nofree nounwind memory(read, argmem: readwrite) uwtable
define hidden void @_ZN4ncnn21get_text_drawing_sizeEPKciPiS2_(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) initializes((0, 4)) %2, ptr nofree noundef captures(none) initializes((0, 4)) %3) local_unnamed_addr #2 {
bb.a:
  store i32 0, ptr %2, align 4, !tbaa !75
  store i32 0, ptr %3, align 4, !tbaa !75
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #16 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = shl nsw i32 %1, 1                        ; 2 uses
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count = and i64 %i.a, 2147483647
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.028.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.d ]
  %i.e = load i32, ptr %2, align 4, !tbaa !75
  %.sroa.speculated23 = tail call i32 @llvm.smax.i32(i32 %i.e, i32 %.028.lcssa)
  store i32 %.sroa.speculated23, ptr %2, align 4, !tbaa !75
  %i.f = load i32, ptr %3, align 4, !tbaa !75
  %i.g = add nsw i32 %i.f, %i.d
  store i32 %i.g, ptr %3, align 4, !tbaa !75
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.02829 = phi i32 [ 0, %.lr.ph ], [ %spec.select, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9     ; 2 uses
  %i.j = sext i8 %i.i to i32
  %i.k = icmp eq i8 %i.i, 10
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %2, align 4, !tbaa !75
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.l, i32 %.02829)
  store i32 %.sroa.speculated, ptr %2, align 4, !tbaa !75
  %i.m = load i32, ptr %3, align 4, !tbaa !75
  %i.n = add nsw i32 %i.m, %i.d
  store i32 %i.n, ptr %3, align 4, !tbaa !75
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i32 [ 0, %bb.c ], [ %.02829, %bb.b ]
  %i.o = tail call i32 @isprint(i32 noundef %i.j) #16
  %.not = icmp eq i32 %i.o, 0
  %i.p = select i1 %.not, i32 0, i32 %1
  %spec.select = add nsw i32 %i.p, %.1            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !76
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isprint(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn12draw_text_c1EPhiiPKciiij(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #5 {
bb.a:
  tail call void @_ZN4ncnn12draw_text_c1EPhiiiPKciiij(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %1, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn12draw_text_c1EPhiiiPKciiij(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #5 {
bb.a:
  %i.a = shl i32 %7, 1                            ; 3 uses
  %i.b = mul i32 %i.a, %7
  %i.c = zext nneg i32 %i.b to i64
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #17 ; 3 uses
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16 ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph100, label %._crit_edge101

.lr.ph100:                                        ; preds = %bb.a
  %i.h = and i32 %8, 255                          ; 3 uses
  %i.i = sext i32 %7 to i64
  %i.j = sext i32 %3 to i64
  %wide.trip.count107 = and i64 %i.e, 2147483647
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert115 = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat116 = shufflevector <4 x i32> %broadcast.splatinsert115, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph100, %.loopexit
  %indvars.iv104 = phi i64 [ 0, %.lr.ph100 ], [ %indvars.iv.next105, %.loopexit ] ; 2 uses
  %.08497 = phi i32 [ %5, %.lr.ph100 ], [ %.1, %.loopexit ] ; 5 uses
  %.08596 = phi i32 [ %6, %.lr.ph100 ], [ %.186, %.loopexit ] ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv104
  %i.l = load i8, ptr %i.k, align 1, !tbaa !9     ; 3 uses
  switch i8 %i.l, label %bb.e [
    i8 10, label %bb.c
    i8 32, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i32 %.08596, %i.a
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.n = add nsw i32 %.08497, %7
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.o = sext i8 %i.l to i32
  %i.p = tail call i32 @isprint(i32 noundef %i.o) #16
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = sext i8 %i.l to i64
  %i.r = getelementptr [400 x i8], ptr @_ZN4ncnnL14mono_font_dataE, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -13200
  tail call void @_ZN4ncnn20resize_bilinear_fontEPKhPhi(ptr noundef %i.s, ptr noundef nonnull %i.d, i32 noundef %7)
  %.sroa.speculated66 = tail call i32 @llvm.smax.i32(i32 %.08596, i32 0) ; 2 uses
  %i.t = add nsw i32 %.08596, %i.a
  %.sroa.speculated61 = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.t) ; 2 uses
  %.sroa.speculated56 = tail call i32 @llvm.smax.i32(i32 %.08497, i32 0) ; 6 uses
  %i.u = add i32 %.08497, %7                      ; 4 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.u) ; 3 uses
  %i.v = icmp slt i32 %.sroa.speculated66, %.sroa.speculated61
  br i1 %i.v, label %.lr.ph92, label %.loopexit

.lr.ph92:                                         ; preds = %bb.f
  %i.w = zext nneg i32 %.sroa.speculated56 to i64 ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.d, i64 %i.w
  %i.x = sext i32 %.08497 to i64
  %i.y = sub nsw i64 0, %i.x
  %invariant.gep93 = getelementptr i8, ptr %invariant.gep, i64 %i.y
  %invariant.gep95 = getelementptr i8, ptr %0, i64 %i.w
  %i.z = icmp slt i32 %.sroa.speculated56, %.sroa.speculated
  br i1 %i.z, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.lr.ph92
  %i.aa = zext nneg i32 %.sroa.speculated66 to i64
  %i.ab = sext i32 %.08596 to i64
  %wide.trip.count = zext nneg i32 %.sroa.speculated61 to i64
  %i.ac = xor i32 %.sroa.speculated56, -1
  %i.ad = add i32 %.sroa.speculated, %i.ac        ; 3 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = add nuw nsw i64 %i.ae, 1                ; 5 uses
end_hunk_2
begin_hunk_3_@_ZN4ncnn12draw_text_c3EPhiiiPKciiij:bb.a
  %wide.trip.count117 = and i64 %i.e, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph110, %.loopexit
  %indvars.iv114 = phi i64 [ 0, %.lr.ph110 ], [ %indvars.iv.next115, %.loopexit ] ; 2 uses
  %.094107 = phi i32 [ %5, %.lr.ph110 ], [ %.1, %.loopexit ] ; 5 uses
  %.095106 = phi i32 [ %6, %.lr.ph110 ], [ %.196, %.loopexit ] ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv114
  %i.n = load i8, ptr %i.m, align 1, !tbaa !9     ; 3 uses
  switch i8 %i.n, label %bb.e [
    i8 10, label %bb.c
    i8 32, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = add nsw i32 %.095106, %i.a
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.p = add nsw i32 %.094107, %7
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.q = sext i8 %i.n to i32
  %i.r = tail call i32 @isprint(i32 noundef %i.q) #16
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = sext i8 %i.n to i64
  %i.t = getelementptr [400 x i8], ptr @_ZN4ncnnL14mono_font_dataE, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -13200
  tail call void @_ZN4ncnn20resize_bilinear_fontEPKhPhi(ptr noundef %i.u, ptr noundef nonnull %i.d, i32 noundef %7)
  %.sroa.speculated76 = tail call i32 @llvm.smax.i32(i32 %.095106, i32 0) ; 2 uses
  %i.v = add nsw i32 %.095106, %i.a
  %.sroa.speculated71 = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.v) ; 2 uses
  %.sroa.speculated66 = tail call i32 @llvm.smax.i32(i32 %.094107, i32 0) ; 4 uses
  %i.w = add i32 %.094107, %7                     ; 4 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.w) ; 2 uses
  %i.x = icmp slt i32 %.sroa.speculated76, %.sroa.speculated71
  br i1 %i.x, label %.lr.ph102, label %.loopexit

.lr.ph102:                                        ; preds = %bb.f
  %i.y = zext nneg i32 %.sroa.speculated66 to i64
  %invariant.gep = getelementptr i8, ptr %i.d, i64 %i.y
  %i.z = sext i32 %.094107 to i64
  %i.aa = sub nsw i64 0, %i.z
  %invariant.gep103 = getelementptr i8, ptr %invariant.gep, i64 %i.aa
  %i.ab = mul nuw nsw i32 %.sroa.speculated66, 3
  %i.ac = zext nneg i32 %i.ab to i64
  %invariant.gep105 = getelementptr i8, ptr %0, i64 %i.ac
  %i.ad = icmp slt i32 %.sroa.speculated66, %.sroa.speculated
  br i1 %i.ad, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.lr.ph102
  %i.ae = zext nneg i32 %.sroa.speculated76 to i64
  %i.af = sext i32 %.095106 to i64
  %wide.trip.count = zext nneg i32 %.sroa.speculated71 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.ae, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.ag = sub nsw i64 %indvars.iv, %i.af
  %i.ah = mul nsw i64 %i.ag, %i.k
  %gep104 = getelementptr i8, ptr %invariant.gep103, i64 %i.ah
  %i.ai = mul nsw i64 %indvars.iv, %i.l
  %gep = getelementptr i8, ptr %invariant.gep105, i64 %i.ai
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond113.not, label %.loopexit, label %.lr.ph, !llvm.loop !89

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.099 = phi i32 [ %.sroa.speculated66, %.lr.ph ], [ %i.bl, %bb.g ]
  %.05698 = phi ptr [ %gep, %.lr.ph ], [ %i.bk, %bb.g ] ; 5 uses
  %.05797 = phi ptr [ %gep104, %.lr.ph ], [ %i.aj, %bb.g ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.05797, i64 1
  %i.ak = load i8, ptr %.05797, align 1, !tbaa !9
  %i.al = load i8, ptr %.05698, align 1, !tbaa !9
  %i.am = zext i8 %i.al to i32
  %i.an = zext i8 %i.ak to i32                    ; 4 uses
  %i.ao = xor i32 %i.an, 255                      ; 3 uses
  %i.ap = mul nuw nsw i32 %i.ao, %i.am
  %i.aq = mul nuw nsw i32 %i.h, %i.an
  %i.ar = add nuw nsw i32 %i.ap, %i.aq
  %i.as = udiv i32 %i.ar, 255
  %i.at = trunc i32 %i.as to i8
  store i8 %i.at, ptr %.05698, align 1, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %.05698, i64 1 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !9
  %i.aw = zext i8 %i.av to i32
  %i.ax = mul nuw nsw i32 %i.ao, %i.aw
  %i.ay = mul nuw nsw i32 %i.i, %i.an
  %i.az = add nuw nsw i32 %i.ax, %i.ay
  %i.ba = udiv i32 %i.az, 255
  %i.bb = trunc i32 %i.ba to i8
  store i8 %i.bb, ptr %i.au, align 1, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %.05698, i64 2 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !9
  %i.be = zext i8 %i.bd to i32
  %i.bf = mul nuw nsw i32 %i.ao, %i.be
  %i.bg = mul nuw nsw i32 %i.j, %i.an
  %i.bh = add nuw nsw i32 %i.bf, %i.bg
  %i.bi = udiv i32 %i.bh, 255
  %i.bj = trunc i32 %i.bi to i8
  store i8 %i.bj, ptr %i.bc, align 1, !tbaa !9
  %i.bk = getelementptr inbounds nuw i8, ptr %.05698, i64 3
  %i.bl = add nuw nsw i32 %.099, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bl, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !90

.loopexit:                                        ; preds = %._crit_edge, %bb.f, %.lr.ph102, %bb.e, %bb.d, %bb.c
  %.196 = phi i32 [ %.095106, %bb.e ], [ %.095106, %bb.d ], [ %i.o, %bb.c ], [ %.095106, %.lr.ph102 ], [ %.095106, %bb.f ], [ %.095106, %._crit_edge ]
  %.1 = phi i32 [ %.094107, %bb.e ], [ %i.p, %bb.d ], [ %5, %bb.c ], [ %i.w, %.lr.ph102 ], [ %i.w, %bb.f ], [ %i.w, %._crit_edge ]
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %._crit_edge111, label %bb.b, !llvm.loop !91

._crit_edge111:                                   ; preds = %.loopexit, %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn12draw_text_c4EPhiiPKciiij(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #5 {
bb.a:
  %i.a = shl nsw i32 %1, 2
  tail call void @_ZN4ncnn12draw_text_c4EPhiiiPKciiij(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %i.a, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn12draw_text_c4EPhiiiPKciiij(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #5 {
bb.a:
  %i.a = shl i32 %7, 1                            ; 3 uses
  %i.b = mul i32 %i.a, %7
  %i.c = zext nneg i32 %i.b to i64
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #17 ; 3 uses
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #16 ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph115, label %._crit_edge116

.lr.ph115:                                        ; preds = %bb.a
  %i.h = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.i = shufflevector <4 x i32> %i.h, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.j = lshr <4 x i32> %i.i, <i32 0, i32 8, i32 16, i32 24>
  %i.k = and <4 x i32> %i.j, <i32 255, i32 255, i32 255, i32 -1>
  %i.l = sext i32 %7 to i64
  %i.m = sext i32 %3 to i64
  %wide.trip.count122 = and i64 %i.e, 2147483647
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph115, %.loopexit
  %indvars.iv119 = phi i64 [ 0, %.lr.ph115 ], [ %indvars.iv.next120, %.loopexit ] ; 2 uses
  %.099112 = phi i32 [ %5, %.lr.ph115 ], [ %.1, %.loopexit ] ; 5 uses
  %.0100111 = phi i32 [ %6, %.lr.ph115 ], [ %.1101, %.loopexit ] ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv119
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9     ; 3 uses
  switch i8 %i.o, label %bb.e [
    i8 10, label %bb.c
    i8 32, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.p = add nsw i32 %.0100111, %i.a
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.q = add nsw i32 %.099112, %7
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.r = sext i8 %i.o to i32
  %i.s = tail call i32 @isprint(i32 noundef %i.r) #16
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = sext i8 %i.o to i64
  %i.u = getelementptr [400 x i8], ptr @_ZN4ncnnL14mono_font_dataE, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -13200
  tail call void @_ZN4ncnn20resize_bilinear_fontEPKhPhi(ptr noundef %i.v, ptr noundef nonnull %i.d, i32 noundef %7)
  %.sroa.speculated81 = tail call i32 @llvm.smax.i32(i32 %.0100111, i32 0) ; 2 uses
  %i.w = add nsw i32 %.0100111, %i.a
  %.sroa.speculated76 = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.w) ; 2 uses
  %.sroa.speculated71 = tail call i32 @llvm.smax.i32(i32 %.099112, i32 0) ; 4 uses
  %i.x = add i32 %.099112, %7                     ; 4 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.x) ; 2 uses
  %i.y = icmp slt i32 %.sroa.speculated81, %.sroa.speculated76
  br i1 %i.y, label %.lr.ph107, label %.loopexit

.lr.ph107:                                        ; preds = %bb.f
  %i.z = zext nneg i32 %.sroa.speculated71 to i64
  %invariant.gep = getelementptr i8, ptr %i.d, i64 %i.z
  %i.aa = sext i32 %.099112 to i64
  %i.ab = sub nsw i64 0, %i.aa
  %invariant.gep108 = getelementptr i8, ptr %invariant.gep, i64 %i.ab
  %i.ac = shl nsw i32 %.sroa.speculated71, 2
  %i.ad = zext nneg i32 %i.ac to i64
  %invariant.gep110 = getelementptr i8, ptr %0, i64 %i.ad
  %i.ae = icmp slt i32 %.sroa.speculated71, %.sroa.speculated
  br i1 %i.ae, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.lr.ph107
  %i.af = zext nneg i32 %.sroa.speculated81 to i64
  %i.ag = sext i32 %.0100111 to i64
  %wide.trip.count = zext nneg i32 %.sroa.speculated76 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.af, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.ah = sub nsw i64 %indvars.iv, %i.ag
  %i.ai = mul nsw i64 %i.ah, %i.l
  %gep109 = getelementptr i8, ptr %invariant.gep108, i64 %i.ai
  %i.aj = mul nsw i64 %indvars.iv, %i.m
  %gep = getelementptr i8, ptr %invariant.gep110, i64 %i.aj
  br label %bb.g

._crit_edge:                                      ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond118.not, label %.loopexit, label %.lr.ph, !llvm.loop !92

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %.0104 = phi i32 [ %.sroa.speculated71, %.lr.ph ], [ %i.ba, %bb.g ]
  %.061103 = phi ptr [ %gep, %.lr.ph ], [ %i.az, %bb.g ] ; 3 uses
  %.062102 = phi ptr [ %gep109, %.lr.ph ], [ %i.ak, %bb.g ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.062102, i64 1
  %i.al = load i8, ptr %.062102, align 1, !tbaa !9
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = xor i32 %i.am, 255
  %i.ao = load <4 x i8>, ptr %.061103, align 1, !tbaa !9
  %i.ap = zext <4 x i8> %i.ao to <4 x i32>
  %i.aq = insertelement <4 x i32> poison, i32 %i.an, i64 0
  %i.ar = shufflevector <4 x i32> %i.aq, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.as = mul nuw nsw <4 x i32> %i.ar, %i.ap
  %i.at = insertelement <4 x i32> poison, i32 %i.am, i64 0
  %i.au = shufflevector <4 x i32> %i.at, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.av = mul nuw nsw <4 x i32> %i.k, %i.au
  %i.aw = add nuw nsw <4 x i32> %i.as, %i.av
  %i.ax = udiv <4 x i32> %i.aw, splat (i32 255)
  %i.ay = trunc <4 x i32> %i.ax to <4 x i8>
  store <4 x i8> %i.ay, ptr %.061103, align 1, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %.061103, i64 4
  %i.ba = add nuw nsw i32 %.0104, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ba, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !93

.loopexit:                                        ; preds = %._crit_edge, %bb.f, %.lr.ph107, %bb.e, %bb.d, %bb.c
  %.1101 = phi i32 [ %.0100111, %bb.e ], [ %.0100111, %bb.d ], [ %i.p, %bb.c ], [ %.0100111, %.lr.ph107 ], [ %.0100111, %bb.f ], [ %.0100111, %._crit_edge ]
  %.1 = phi i32 [ %.099112, %bb.e ], [ %i.q, %bb.d ], [ %5, %bb.c ], [ %i.x, %.lr.ph107 ], [ %i.x, %bb.f ], [ %i.x, %._crit_edge ]
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %._crit_edge116, label %bb.b, !llvm.loop !94

._crit_edge116:                                   ; preds = %.loopexit, %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn20resize_bilinear_fontEPKhPhi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.ncnn::Mat", align 8         ; 11 uses
  %4 = alloca %"class.ncnn::Mat", align 8         ; 10 uses
  %i.a = shl i32 %2, 1                            ; 5 uses
  %i.b = sitofp fast i32 %2 to double
  %i.c = fdiv fast double 2.000000e+01, %i.b      ; 4 uses
  %i.d = mul nsw i32 %2, 6
  %i.e = sext i32 %i.d to i64
  %i.f = icmp slt i32 %2, 0
  %i.g = shl nsw i64 %i.e, 2
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #17 ; 7 uses
  %i.j = sext i32 %2 to i64                       ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.j ; 5 uses
  %i.l = sext i32 %i.a to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 6 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.j ; 3 uses
  %i.o = icmp sgt i32 %2, 0                       ; 2 uses
  br i1 %i.o, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.preheader867, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.c, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.p = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %i.q = fadd fast <4 x double> %i.p, splat (double 5.000000e-01)
  %i.r = fmul fast <4 x double> %i.q, %broadcast.splat
  %i.s = fadd fast <4 x double> %i.r, splat (double -5.000000e-01)
  %i.t = fptrunc fast <4 x double> %i.s to <4 x float> ; 2 uses
  %i.u = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.t)
  %i.v = fptosi <4 x float> %i.u to <4 x i32>     ; 2 uses
  %i.w = sitofp fast <4 x i32> %i.v to <4 x float>
  %i.x = fsub fast <4 x float> %i.t, %i.w
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index
  store <4 x i32> %i.v, ptr %i.y, align 4, !tbaa !75
  %i.z = fmul fast <4 x float> %i.x, splat (float 2.048000e+03) ; 3 uses
  %i.aa = fsub fast <4 x float> splat (float 2.048000e+03), %i.z ; 2 uses
  %i.ab = fcmp fast oge <4 x float> %i.aa, zeroinitializer
  %i.ac = select fast <4 x i1> %i.ab, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.ad = fadd fast <4 x float> %i.ac, %i.aa
  %i.ae = shl nuw nsw i64 %index, 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ae
  %i.ag = fcmp fast oge <4 x float> %i.z, zeroinitializer
  %i.ah = select fast <4 x i1> %i.ag, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.ai = fadd fast <4 x float> %i.ah, %i.z
  %i.aj = shufflevector <4 x float> %i.ad, <4 x float> %i.ai, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec = tail call <8 x i16> @llvm.fptosi.sat.v8i16.v8f32(<8 x float> %i.aj)
  store <8 x i16> %interleaved.vec, ptr %i.af, align 2, !tbaa !95
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !97

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph574.preheader, label %.lr.ph.preheader867

.lr.ph.preheader867:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph574.preheader:                              ; preds = %.lr.ph, %middle.block
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  %wide.trip.count673 = zext nneg i32 %smax to i64 ; 3 uses
  %min.iters.check751 = icmp slt i32 %i.a, 4
  br i1 %min.iters.check751, label %.lr.ph574.preheader866, label %vector.ph752

vector.ph752:                                     ; preds = %.lr.ph574.preheader
  %n.vec753 = and i64 %wide.trip.count673, 2147483644 ; 3 uses
  %broadcast.splatinsert754 = insertelement <4 x double> poison, double %i.c, i64 0
  %broadcast.splat755 = shufflevector <4 x double> %broadcast.splatinsert754, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vector.body756

vector.body756:                                   ; preds = %vector.body756, %vector.ph752
  %index757 = phi i64 [ 0, %vector.ph752 ], [ %index.next760, %vector.body756 ] ; 3 uses
  %vec.ind758 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph752 ], [ %vec.ind.next761, %vector.body756 ] ; 2 uses
  %i.al = uitofp nneg <4 x i32> %vec.ind758 to <4 x double>
  %i.am = fadd fast <4 x double> %i.al, splat (double 5.000000e-01)
  %i.an = fmul fast <4 x double> %i.am, %broadcast.splat755
  %i.ao = fadd fast <4 x double> %i.an, splat (double -5.000000e-01)
  %i.ap = fptrunc fast <4 x double> %i.ao to <4 x float> ; 2 uses
  %i.aq = tail call fast <4 x float> @llvm.floor.v4f32(<4 x float> %i.ap)
  %i.ar = fptosi <4 x float> %i.aq to <4 x i32>   ; 2 uses
  %i.as = sitofp fast <4 x i32> %i.ar to <4 x float>
  %i.at = fsub fast <4 x float> %i.ap, %i.as
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index757
  store <4 x i32> %i.ar, ptr %i.au, align 4, !tbaa !75
  %i.av = fmul fast <4 x float> %i.at, splat (float 2.048000e+03) ; 3 uses
  %i.aw = fsub fast <4 x float> splat (float 2.048000e+03), %i.av ; 2 uses
  %i.ax = fcmp fast oge <4 x float> %i.aw, zeroinitializer
  %i.ay = select fast <4 x i1> %i.ax, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.az = fadd fast <4 x float> %i.ay, %i.aw
  %i.ba = shl nuw nsw i64 %index757, 2
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ba
  %i.bc = fcmp fast oge <4 x float> %i.av, zeroinitializer
  %i.bd = select fast <4 x i1> %i.bc, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.be = fadd fast <4 x float> %i.bd, %i.av
  %i.bf = shufflevector <4 x float> %i.az, <4 x float> %i.be, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %interleaved.vec759 = tail call <8 x i16> @llvm.fptosi.sat.v8i16.v8f32(<8 x float> %i.bf)
  store <8 x i16> %interleaved.vec759, ptr %i.bb, align 2, !tbaa !95
  %index.next760 = add nuw i64 %index757, 4       ; 2 uses
  %vec.ind.next761 = add <4 x i32> %vec.ind758, splat (i32 4)
  %i.bg = icmp eq i64 %index.next760, %n.vec753
  br i1 %i.bg, label %middle.block762, label %vector.body756, !llvm.loop !98

middle.block762:                                  ; preds = %vector.body756
  %cmp.n763 = icmp eq i64 %n.vec753, %wide.trip.count673
  br i1 %cmp.n763, label %._crit_edge, label %.lr.ph574.preheader866

.lr.ph574.preheader866:                           ; preds = %.lr.ph574.preheader, %middle.block762
  %indvars.iv670.ph = phi i64 [ 0, %.lr.ph574.preheader ], [ %n.vec753, %middle.block762 ]
  br label %.lr.ph574

.lr.ph:                                           ; preds = %.lr.ph.preheader867, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader867 ] ; 4 uses
  %i.bh = trunc nuw nsw i64 %indvars.iv to i32
  %i.bi = uitofp nneg i32 %i.bh to double
  %i.bj = fadd fast double %i.bi, 5.000000e-01
  %i.bk = fmul fast double %i.bj, %i.c
  %i.bl = fadd fast double %i.bk, -5.000000e-01
  %i.bm = fptrunc fast double %i.bl to float      ; 2 uses
  %i.bn = tail call fast noundef nofpclass(nan inf) float @llvm.floor.f32(float nofpclass(nan inf) %i.bm)
  %i.bo = fptosi float %i.bn to i32               ; 2 uses
  %i.bp = sitofp fast i32 %i.bo to float
  %i.bq = fsub fast float %i.bm, %i.bp
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
end_hunk_3
