Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dvbsubenc?download=true
begin_hunk_0_@dvb_encode_rle2:bb.a
  %i.fe = shl nuw nsw i32 %i.z, 4
  %i.ff = and i32 %i.fe, 64
  %i.fg = or disjoint i32 %i.ff, 128
  br label %.thread320.us

.thread320.us:                                    ; preds = %.thread315.us, %bb.al
  %.4230.ph.us = phi i32 [ %i.fg, %.thread315.us ], [ 0, %bb.al ]
  %.4.ph.us = phi i32 [ 4, %.thread315.us ], [ 6, %bb.al ] ; 2 uses
  %i.fh = and i32 %i.z, 3
  %i.fi = shl nuw nsw i32 %i.fh, %.4.ph.us
  %i.fj = or i32 %i.fi, %.4230.ph.us
  %i.fk = add nsw i32 %.4.ph.us, -2
  br label %.thread325.us

.thread325.us:                                    ; preds = %.thread320.us, %bb.ak
  %.5231.ph.us = phi i32 [ %i.fj, %.thread320.us ], [ 0, %bb.ak ]
  %.5.ph.us = phi i32 [ %i.fk, %.thread320.us ], [ 6, %bb.ak ] ; 2 uses
  %.6256.ph.us = getelementptr inbounds nuw i8, ptr %.1251421.us, i64 1
  %i.fl = shl nuw nsw i32 %i.n, %.5.ph.us
  %i.fm = or i32 %i.fl, %.5231.ph.us
  %i.fn = add nsw i32 %.5.ph.us, -2
  br label %.thread391.us

bb.am:                                            ; preds = %.critedge.us
  %i.fo = icmp slt i32 %.0225425.us, 2
  br i1 %i.fo, label %.thread311.us, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fp = icmp samesign ult i32 %.0225425.us, 4
  br i1 %i.fp, label %.thread311.us, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fq = add nsw i32 %.0225425.us, -4
  %i.fr = shl nuw i32 1, %i.fq
  %i.fs = or i32 %i.fr, %.0226424.us              ; 2 uses
  %i.ft = add nsw i32 %.0225425.us, -6
  %i.fu = icmp samesign ult i32 %.0225425.us, 6
  br i1 %i.fu, label %bb.ap, label %.thread391.us

bb.ap:                                            ; preds = %bb.ao
  %i.fv = trunc i32 %i.fs to i8
  %i.fw = getelementptr inbounds nuw i8, ptr %.1251421.us, i64 1
  store i8 %i.fv, ptr %.1251421.us, align 1, !tbaa !11
  br label %.thread391.us

.thread311.us:                                    ; preds = %bb.an, %bb.am
  %.2.ph.us = phi i32 [ 4, %bb.am ], [ 6, %bb.an ] ; 2 uses
  %.3253.ph.us = getelementptr inbounds nuw i8, ptr %.1251421.us, i64 1
  %storemerge419.us = trunc i32 %.0226424.us to i8
  store i8 %storemerge419.us, ptr %.1251421.us, align 1, !tbaa !11
  %i.fx = shl nuw nsw i32 1, %.2.ph.us
  %i.fy = add nsw i32 %.2.ph.us, -2
  br label %.thread391.us

.thread391.us:                                    ; preds = %.thread311.us, %bb.ap, %bb.ao, %.thread325.us, %bb.aj, %bb.ai, %.thread348.us, %bb.ad, %bb.ac, %bb.v, %bb.u, %.thread380.us, %.thread384.us, %bb.j, %bb.i, %bb.h
  %.21271.us = phi ptr [ %i.fw, %bb.ap ], [ %.1251421.us, %bb.ao ], [ %i.fa, %bb.aj ], [ %.1251421.us, %bb.ai ], [ %i.ed, %bb.ad ], [ %.10260.us, %bb.ac ], [ %i.cw, %bb.v ], [ %.18268.us, %bb.u ], [ %i.al, %bb.j ], [ %.1251421.us, %bb.i ], [ %.1251421.us, %bb.h ], [ %.3253.ph.us, %.thread311.us ], [ %.6256.ph.us, %.thread325.us ], [ %.11261.ph.us, %.thread348.us ], [ %i.ce, %.thread380.us ], [ %i.an, %.thread384.us ] ; 5 uses
  %.20246.us = phi i32 [ 0, %bb.ap ], [ %i.fs, %bb.ao ], [ 0, %bb.aj ], [ %i.ew, %bb.ai ], [ 0, %bb.ad ], [ %i.dz, %bb.ac ], [ 0, %bb.v ], [ %i.cs, %bb.u ], [ 0, %bb.j ], [ %i.ah, %bb.i ], [ %i.ad, %bb.h ], [ %i.fx, %.thread311.us ], [ %i.fm, %.thread325.us ], [ %i.eg, %.thread348.us ], [ %i.cf, %.thread380.us ], [ %spec.select.us, %.thread384.us ] ; 3 uses
  %.20.us = phi i32 [ 6, %bb.ap ], [ %i.ft, %bb.ao ], [ 6, %bb.aj ], [ %i.ex, %bb.ai ], [ 6, %bb.ad ], [ %i.ea, %bb.ac ], [ 6, %bb.v ], [ %i.ct, %bb.u ], [ 6, %bb.j ], [ %i.ai, %bb.i ], [ %i.ae, %bb.h ], [ %i.fy, %.thread311.us ], [ %i.fn, %.thread325.us ], [ %i.eh, %.thread348.us ], [ 4, %.thread380.us ], [ %spec.select416.us, %.thread384.us ] ; 3 uses
  %.0222.us = phi i32 [ 2, %bb.ap ], [ 2, %bb.ao ], [ %i.w, %bb.aj ], [ %i.w, %bb.ai ], [ %i.w, %bb.ad ], [ %i.w, %bb.ac ], [ %i.ao, %bb.v ], [ %i.ao, %bb.u ], [ 1, %bb.j ], [ 1, %bb.i ], [ 1, %bb.h ], [ 2, %.thread311.us ], [ %i.w, %.thread325.us ], [ %i.w, %.thread348.us ], [ %i.ao, %.thread380.us ], [ 1, %.thread384.us ]
  %i.fz = add nuw nsw i32 %.0222.us, %.0224426.us ; 2 uses
  %i.ga = icmp slt i32 %i.fz, %4
  br i1 %i.ga, label %bb.b, label %._crit_edge.us, !llvm.loop !58

bb.aq:                                            ; preds = %._crit_edge.us
  %.not.us = icmp eq i32 %.20.us, 12
  br i1 %.not.us, label %bb.ar, label %.sink.split

.thread409.us.sink.split:                         ; preds = %._crit_edge.us
  %i.gb = trunc i32 %.20246.us to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %.21271.us, i64 1
  store i8 %i.gb, ptr %.21271.us, align 1, !tbaa !11
  br label %.sink.split

.sink.split:                                      ; preds = %.thread409.us.sink.split, %bb.aq
  %.23249415.us.sink = phi i32 [ %.20246.us, %bb.aq ], [ 0, %.thread409.us.sink.split ]
  %.24414.us.sink454 = phi ptr [ %.21271.us, %bb.aq ], [ %i.gc, %.thread409.us.sink.split ] ; 2 uses
  %i.gd = trunc i32 %.23249415.us.sink to i8
  %i.ge = getelementptr inbounds nuw i8, ptr %.24414.us.sink454, i64 1
  store i8 %i.gd, ptr %.24414.us.sink454, align 1, !tbaa !11
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.sink.split
  %.25.us = phi ptr [ %.21271.us, %bb.aq ], [ %i.ge, %.sink.split ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.25.us, i64 1 ; 3 uses
  store i8 -16, ptr %.25.us, align 1, !tbaa !11
  %i.gg = getelementptr inbounds i8, ptr %.0276429.us, i64 %i.f
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = ptrtoint ptr %.0250431.us to i64
  %.neg.us = sub i64 %i.gi, %i.gh
  %i.gj = trunc i64 %.neg.us to i32
  %i.gk = add i32 %.0275430.us, %i.gj
  %i.gl = add nuw nsw i32 %.0223432.us, 1         ; 2 uses
  %exitcond441.not = icmp eq i32 %i.gl, %5
  br i1 %exitcond441.not, label %._crit_edge435, label %.lr.ph434.split.us, !llvm.loop !59

._crit_edge.us:                                   ; preds = %.thread391.us
  %i.gm = icmp ult i32 %.20.us, 4
  br i1 %i.gm, label %.thread409.us.sink.split, label %bb.aq

.lr.ph434.split:                                  ; preds = %.lr.ph434, %.thread409
  %.0223432 = phi i32 [ %i.gt, %.thread409 ], [ 0, %.lr.ph434 ]
  %.0250431 = phi ptr [ %i.gr, %.thread409 ], [ %i.a, %.lr.ph434 ] ; 4 uses
  %.0275430 = phi i32 [ %i.gs, %.thread409 ], [ %1, %.lr.ph434 ] ; 2 uses
  %i.gn = shl nsw i32 %.0275430, 3
  %i.go = icmp slt i32 %i.gn, %i.d
  br i1 %i.go, label %.loopexit, label %.thread409

.thread409:                                       ; preds = %.lr.ph434.split
  %i.gp = getelementptr inbounds nuw i8, ptr %.0250431, i64 1
  store i8 16, ptr %.0250431, align 1, !tbaa !11
  %i.gq = getelementptr inbounds nuw i8, ptr %.0250431, i64 2
  store i8 0, ptr %i.gp, align 1, !tbaa !11
  %i.gr = getelementptr inbounds nuw i8, ptr %.0250431, i64 3 ; 2 uses
  store i8 -16, ptr %i.gq, align 1, !tbaa !11
  %i.gs = add i32 %.0275430, -3
  %i.gt = add nuw nsw i32 %.0223432, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.gt, %5
  br i1 %exitcond.not, label %._crit_edge435, label %.lr.ph434.split, !llvm.loop !59

._crit_edge435:                                   ; preds = %.thread409, %bb.ar, %bb.a
  %.0250.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.gf, %bb.ar ], [ %i.gr, %.thread409 ] ; 2 uses
  %i.gu = load ptr, ptr %0, align 8, !tbaa !12
  %i.gv = ptrtoint ptr %.0250.lcssa to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = trunc i64 %i.gx to i32
  store ptr %.0250.lcssa, ptr %0, align 8, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph434.split, %.lr.ph434.split.us, %._crit_edge435
  %.0274 = phi i32 [ %i.gy, %._crit_edge435 ], [ -1397118274, %.lr.ph434.split.us ], [ -1397118274, %.lr.ph434.split ]
  ret i32 %.0274
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @dvb_encode_rle4(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.b = icmp sgt i32 %5, 0
  br i1 %i.b, label %.lr.ph339, label %._crit_edge340

.lr.ph339:                                        ; preds = %bb.a
  %i.c = mul nsw i32 %4, 6
  %i.d = add nsw i32 %i.c, 32                     ; 2 uses
  %i.e = icmp sgt i32 %4, 0
  %i.f = sext i32 %3 to i64
  br i1 %i.e, label %.lr.ph339.split.us.preheader, label %.lr.ph339.split

.lr.ph339.split.us.preheader:                     ; preds = %.lr.ph339
  %i.g = zext nneg i32 %4 to i64                  ; 2 uses
  br label %.lr.ph339.split.us

.lr.ph339.split.us:                               ; preds = %.lr.ph339.split.us.preheader, %.thread321.us
  %.0189337.us = phi i32 [ %i.cx, %.thread321.us ], [ 0, %.lr.ph339.split.us.preheader ]
  %.0209336.us = phi ptr [ %i.cr, %.thread321.us ], [ %i.a, %.lr.ph339.split.us.preheader ] ; 3 uses
  %.0227335.us = phi i32 [ %i.cw, %.thread321.us ], [ %1, %.lr.ph339.split.us.preheader ] ; 2 uses
  %.0228334.us = phi ptr [ %i.cs, %.thread321.us ], [ %2, %.lr.ph339.split.us.preheader ] ; 3 uses
  %i.h = shl nsw i32 %.0227335.us, 3
  %i.i = icmp slt i32 %i.h, %i.d
  br i1 %i.i, label %.loopexit, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph339.split.us
  %i.j = getelementptr inbounds nuw i8, ptr %.0209336.us, i64 1
  store i8 17, ptr %.0209336.us, align 1, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %.thread312.us
  %.0190331.us = phi i32 [ 0, %.lr.ph.us ], [ %i.co, %.thread312.us ] ; 5 uses
  %.0191330.us = phi i32 [ 4, %.lr.ph.us ], [ %.14.us, %.thread312.us ] ; 7 uses
  %.0192329.us = phi i32 [ 0, %.lr.ph.us ], [ %.14206.us, %.thread312.us ] ; 9 uses
  %.1210328.us = phi ptr [ %i.j, %.lr.ph.us ], [ %.15224.us, %.thread312.us ] ; 31 uses
  %i.k = zext nneg i32 %.0190331.us to i64
  %i.l = getelementptr inbounds nuw i8, ptr %.0228334.us, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11    ; 6 uses
  %i.n = zext i8 %i.m to i32                      ; 4 uses
  %i.o = sext i32 %.0190331.us to i64
  %i.p = add nsw i32 %.0190331.us, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %4, i32 %i.p) ; 2 uses
  %indvars.iv.next362 = add nsw i64 %i.o, 1       ; 2 uses
  %i.q = icmp slt i64 %indvars.iv.next362, %i.g
  br i1 %i.q, label %.lr.ph, label %.critedge.us

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv.next363, 1 ; 2 uses
  %i.r = icmp slt i64 %indvars.iv.next, %i.g
  br i1 %i.r, label %.lr.ph, label %.critedge.us, !llvm.loop !60

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %indvars.iv.next363 = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.next362, %bb.b ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.0228334.us, i64 %indvars.iv.next363
  %i.t = load i8, ptr %i.s, align 1, !tbaa !11
  %i.u = icmp eq i8 %i.t, %i.m
  br i1 %i.u, label %bb.c, label %.critedge.us.split.loop.exit, !llvm.loop !60

.critedge.us.split.loop.exit:                     ; preds = %.lr.ph
  %i.v = trunc nsw i64 %indvars.iv.next363 to i32
  br label %.critedge.us

.critedge.us:                                     ; preds = %bb.c, %bb.b, %.critedge.us.split.loop.exit
  %.0.us.lcssa = phi i32 [ %i.v, %.critedge.us.split.loop.exit ], [ %smax, %bb.b ], [ %smax, %bb.c ]
  %i.w = sub nsw i32 %.0.us.lcssa, %.0190331.us   ; 16 uses
  %i.x = icmp eq i8 %i.m, 0                       ; 5 uses
  %i.y = icmp eq i32 %i.w, 2
  %or.cond.us = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond.us, label %bb.w, label %bb.d

bb.d:                                             ; preds = %.critedge.us
  %i.z = add nsw i32 %i.w, -3
  %i.aa = icmp ult i32 %i.z, 7
  %or.cond5.us = select i1 %i.x, i1 %i.aa, i1 false
  br i1 %or.cond5.us, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = and i32 %i.w, -4
  %or.cond7.us = icmp eq i32 %i.ab, 4
  br i1 %or.cond7.us, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = add nsw i32 %i.w, -9                    ; 3 uses
  %or.cond9.us = icmp ult i32 %i.ac, 16
  br i1 %or.cond9.us, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = icmp sgt i32 %i.w, 24
  br i1 %i.ad, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = shl nuw nsw i32 %i.n, %.0191330.us
  %i.af = or i32 %i.ae, %.0192329.us              ; 2 uses
  %i.ag = icmp sgt i32 %.0191330.us, 3
  br i1 %i.ag, label %bb.i, label %.thread305.us

.thread305.us:                                    ; preds = %bb.h
  %i.ah = trunc i32 %i.af to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %.1210328.us, i64 1
  store i8 %i.ah, ptr %.1210328.us, align 1, !tbaa !11
  %spec.select.us = select i1 %i.x, i32 192, i32 0
  %spec.select324.us = select i1 %i.x, i32 0, i32 4
  br label %.thread312.us

bb.i:                                             ; preds = %bb.h
  br i1 %i.x, label %bb.j, label %.thread312.us

bb.j:                                             ; preds = %bb.i
  %i.aj = trunc i32 %.0192329.us to i8
  %i.ak = or i8 %i.aj, 12
  %i.al = getelementptr inbounds nuw i8, ptr %.1210328.us, i64 1
  store i8 %i.ak, ptr %.1210328.us, align 1, !tbaa !11
  br label %.thread312.us

bb.k:                                             ; preds = %bb.g
  %i.am = tail call i32 @llvm.umin.i32(i32 %i.w, i32 280) ; 3 uses
  %i.an = add nsw i32 %i.am, -25                  ; 2 uses
  %i.ao = icmp slt i32 %.0191330.us, 4
  %i.ap = trunc i32 %.0192329.us to i8            ; 2 uses
  br i1 %i.ao, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = or i8 %i.ap, 15
  %i.ar = getelementptr inbounds nuw i8, ptr %.1210328.us, i64 1
  store i8 %i.aq, ptr %.1210328.us, align 1, !tbaa !11
  %i.as = trunc nuw i32 %i.an to i8
  %i.at = getelementptr inbounds nuw i8, ptr %.1210328.us, i64 2
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !11
  %i.au = shl nuw nsw i32 %i.n, 4
  br label %.thread312.us

bb.m:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %.1210328.us, i64 1
  store i8 %i.ap, ptr %.1210328.us, align 1, !tbaa !11
  %i.aw = trunc nuw i32 %i.an to i8               ; 2 uses
  %i.ax = lshr i8 %i.aw, 4
  %i.ay = or disjoint i8 %i.ax, -16
  %i.az = getelementptr inbounds nuw i8, ptr %.1210328.us, i64 2
  store i8 %i.ay, ptr %i.av, align 1, !tbaa !11
  %i.ba = shl i8 %i.aw, 4
  %i.bb = or i8 %i.ba, %i.m
  %i.bc = getelementptr inbounds nuw i8, ptr %.1210328.us, i64 3
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !11
  br label %.thread312.us

bb.n:                                             ; preds = %bb.f
  %i.bd = icmp sgt i32 %.0191330.us, 3
  %i.be = trunc i32 %.0192329.us to i8            ; 2 uses
  br i1 %i.bd, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %.1210328.us, i64 1
  store i8 %i.be, ptr %.1210328.us, align 1, !tbaa !11
  %i.bg = trunc nuw nsw i32 %i.ac to i8
  %6 = or disjoint i8 %i.bg, -32
  %i.bh = getelementptr inbounds nuw i8, ptr %.1210328.us, i64 2
  store i8 %6, ptr %i.bf, align 1, !tbaa !11
  %i.bi = shl nuw nsw i32 %i.n, 4
  br label %.thread312.us

bb.p:                                             ; preds = %bb.n
  %i.bj = or i8 %i.be, 14
  %i.bk = getelementptr inbounds nuw i8, ptr %.1210328.us, i64 1
  store i8 %i.bj, ptr %.1210328.us, align 1, !tbaa !11
  %.tr325.us = trunc nuw nsw i32 %i.ac to i8
  %i.bl = shl nuw i8 %.tr325.us, 4
  %i.bm = or i8 %i.bl, %i.m
  %i.bn = getelementptr inbounds nuw i8, ptr %.1210328.us, i64 2
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !11
  br label %.thread312.us

bb.q:                                             ; preds = %bb.e
  %i.bo = icmp slt i32 %.0191330.us, 4
  br i1 %i.bo, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = add nuw nsw i32 %i.w, 4
  %i.bq = or i32 %i.bp, %.0192329.us
  %i.br = trunc i32 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %.1210328.us, i64 1
  store i8 %i.br, ptr %.1210328.us, align 1, !tbaa !11
  %i.bt = shl nuw nsw i32 %i.n, 4
  br label %.thread312.us

bb.s:                                             ; preds = %bb.q
  %i.bu = trunc i32 %.0192329.us to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %.1210328.us, i64 1
  store i8 %i.bu, ptr %.1210328.us, align 1, !tbaa !11
  %.tr326.us = trunc nuw nsw i32 %i.w to i8
  %i.bw = shl nuw nsw i8 %.tr326.us, 4
  %i.bx = add nuw i8 %i.bw, 64
  %i.by = or i8 %i.bx, %i.m
  %i.bz = getelementptr inbounds nuw i8, ptr %.1210328.us, i64 2
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !11
  br label %.thread312.us

bb.t:                                             ; preds = %bb.d
  %i.ca = icmp sgt i32 %.0191330.us, 3
  br i1 %i.ca, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = trunc i32 %.0192329.us to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %.1210328.us, i64 1
  store i8 %i.cb, ptr %.1210328.us, align 1, !tbaa !11
  %i.cd = shl nuw nsw i32 %i.w, 4
  %i.ce = add nsw i32 %i.cd, -32
  br label %.thread312.us

bb.v:                                             ; preds = %bb.t
  %i.cf = add nuw nsw i32 %i.w, 254
  %i.cg = or i32 %i.cf, %.0192329.us
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = getelementptr inbounds nuw i8, ptr %.1210328.us, i64 1
  store i8 %i.ch, ptr %.1210328.us, align 1, !tbaa !11
  br label %.thread312.us

bb.w:                                             ; preds = %.critedge.us
  %i.cj = icmp sgt i32 %.0191330.us, 3
  %i.ck = trunc i32 %.0192329.us to i8            ; 2 uses
  br i1 %i.cj, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %.1210328.us, i64 1
  store i8 %i.ck, ptr %.1210328.us, align 1, !tbaa !11
  br label %.thread312.us

bb.y:                                             ; preds = %bb.w
  %i.cm = or i8 %i.ck, 13
  %i.cn = getelementptr inbounds nuw i8, ptr %.1210328.us, i64 1
  store i8 %i.cm, ptr %.1210328.us, align 1, !tbaa !11
  br label %.thread312.us

.thread312.us:                                    ; preds = %bb.y, %bb.x, %bb.v, %bb.u, %bb.s, %bb.r, %bb.p, %bb.o, %bb.m, %bb.l, %bb.j, %bb.i, %.thread305.us
  %.15224.us = phi ptr [ %i.cn, %bb.y ], [ %i.cl, %bb.x ], [ %i.ci, %bb.v ], [ %i.cc, %bb.u ], [ %i.bz, %bb.s ], [ %i.bs, %bb.r ], [ %i.bn, %bb.p ], [ %i.bh, %bb.o ], [ %i.bc, %bb.m ], [ %i.at, %bb.l ], [ %i.al, %bb.j ], [ %i.ai, %.thread305.us ], [ %.1210328.us, %bb.i ] ; 4 uses
  %.14206.us = phi i32 [ 0, %bb.y ], [ 208, %bb.x ], [ 0, %bb.v ], [ %i.ce, %bb.u ], [ 0, %bb.s ], [ %i.bt, %bb.r ], [ 0, %bb.p ], [ %i.bi, %bb.o ], [ 0, %bb.m ], [ %i.au, %bb.l ], [ 0, %bb.j ], [ %spec.select.us, %.thread305.us ], [ %i.af, %bb.i ] ; 2 uses
  %.14.us = phi i32 [ 4, %bb.y ], [ 0, %bb.x ], [ 4, %bb.v ], [ 0, %bb.u ], [ 4, %bb.s ], [ 0, %bb.r ], [ 4, %bb.p ], [ 0, %bb.o ], [ 4, %bb.m ], [ 0, %bb.l ], [ 4, %bb.j ], [ %spec.select324.us, %.thread305.us ], [ 0, %bb.i ] ; 2 uses
  %.0188.us = phi i32 [ 2, %bb.y ], [ 2, %bb.x ], [ %i.w, %bb.v ], [ %i.w, %bb.u ], [ %i.w, %bb.s ], [ %i.w, %bb.r ], [ %i.w, %bb.p ], [ %i.w, %bb.o ], [ %i.am, %bb.m ], [ %i.am, %bb.l ], [ 1, %bb.j ], [ 1, %.thread305.us ], [ 1, %bb.i ]
  %i.co = add nuw nsw i32 %.0188.us, %.0190331.us ; 2 uses
  %i.cp = icmp slt i32 %i.co, %4
  br i1 %i.cp, label %bb.b, label %._crit_edge.us, !llvm.loop !61

bb.z:                                             ; preds = %._crit_edge.us
  %i.cq = getelementptr inbounds nuw i8, ptr %.15224.us, i64 2
  store i8 0, ptr %i.cy, align 1, !tbaa !11
  br label %.thread321.us

.thread321.us:                                    ; preds = %._crit_edge.us, %bb.z
  %.18.us = phi ptr [ %i.cq, %bb.z ], [ %i.cy, %._crit_edge.us ] ; 2 uses
  %.sink = trunc i32 %.14206.us to i8
  store i8 %.sink, ptr %.15224.us, align 1, !tbaa !11
  %i.cr = getelementptr inbounds nuw i8, ptr %.18.us, i64 1 ; 3 uses
  store i8 -16, ptr %.18.us, align 1, !tbaa !11
  %i.cs = getelementptr inbounds i8, ptr %.0228334.us, i64 %i.f
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %.0209336.us to i64
  %.neg.us = sub i64 %i.cu, %i.ct
  %i.cv = trunc i64 %.neg.us to i32
  %i.cw = add i32 %.0227335.us, %i.cv
  %i.cx = add nuw nsw i32 %.0189337.us, 1         ; 2 uses
  %exitcond346.not = icmp eq i32 %i.cx, %5
  br i1 %exitcond346.not, label %._crit_edge340, label %.lr.ph339.split.us, !llvm.loop !62

._crit_edge.us:                                   ; preds = %.thread312.us
  %.not = icmp eq i32 %.14.us, 0
  %i.cy = getelementptr inbounds nuw i8, ptr %.15224.us, i64 1 ; 2 uses
  br i1 %.not, label %bb.z, label %.thread321.us

.lr.ph339.split:                                  ; preds = %.lr.ph339, %.thread321
  %.0189337 = phi i32 [ %i.df, %.thread321 ], [ 0, %.lr.ph339 ]
  %.0209336 = phi ptr [ %i.dd, %.thread321 ], [ %i.a, %.lr.ph339 ] ; 4 uses
  %.0227335 = phi i32 [ %i.de, %.thread321 ], [ %1, %.lr.ph339 ] ; 2 uses
  %i.cz = shl nsw i32 %.0227335, 3
  %i.da = icmp slt i32 %i.cz, %i.d
  br i1 %i.da, label %.loopexit, label %.thread321

.thread321:                                       ; preds = %.lr.ph339.split
  %i.db = getelementptr inbounds nuw i8, ptr %.0209336, i64 1
  store i8 17, ptr %.0209336, align 1, !tbaa !11
  %i.dc = getelementptr inbounds nuw i8, ptr %.0209336, i64 2
  store i8 0, ptr %i.db, align 1, !tbaa !11
  %i.dd = getelementptr inbounds nuw i8, ptr %.0209336, i64 3 ; 2 uses
  store i8 -16, ptr %i.dc, align 1, !tbaa !11
  %i.de = add i32 %.0227335, -3
  %i.df = add nuw nsw i32 %.0189337, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.df, %5
  br i1 %exitcond.not, label %._crit_edge340, label %.lr.ph339.split, !llvm.loop !62

._crit_edge340:                                   ; preds = %.thread321, %.thread321.us, %bb.a
  %.0209.lcssa = phi ptr [ %i.a, %bb.a ], [ %i.cr, %.thread321.us ], [ %i.dd, %.thread321 ] ; 2 uses
  %i.dg = load ptr, ptr %0, align 8, !tbaa !12
  %i.dh = ptrtoint ptr %.0209.lcssa to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = trunc i64 %i.dj to i32
  store ptr %.0209.lcssa, ptr %0, align 8, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph339.split, %.lr.ph339.split.us, %._crit_edge340
  %.0226 = phi i32 [ %i.dk, %._crit_edge340 ], [ -1397118274, %.lr.ph339.split.us ], [ -1397118274, %.lr.ph339.split ]
  ret i32 %.0226
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @dvb_encode_rle8(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !12     ; 3 uses
  %i.b = icmp sgt i32 %5, 0
  br i1 %i.b, label %.lr.ph81, label %._crit_edge82

.lr.ph81:                                         ; preds = %bb.a
  %i.c = mul nsw i32 %4, 12
  %i.d = add nsw i32 %i.c, 24                     ; 2 uses
  %i.e = icmp sgt i32 %4, 0
  %i.f = sext i32 %3 to i64
  br i1 %i.e, label %.lr.ph81.split.us.preheader, label %.lr.ph81.split

.lr.ph81.split.us.preheader:                      ; preds = %.lr.ph81
  %i.g = zext nneg i32 %4 to i64                  ; 2 uses
  br label %.lr.ph81.split.us

.lr.ph81.split.us:                                ; preds = %.lr.ph81.split.us.preheader, %._crit_edge.us
  %.06379.us = phi i32 [ %i.av, %._crit_edge.us ], [ 0, %.lr.ph81.split.us.preheader ]
  %.06578.us = phi ptr [ %i.ap, %._crit_edge.us ], [ %i.a, %.lr.ph81.split.us.preheader ] ; 3 uses
  %.06777.us = phi i32 [ %i.au, %._crit_edge.us ], [ %1, %.lr.ph81.split.us.preheader ] ; 2 uses
  %.06876.us = phi ptr [ %i.aq, %._crit_edge.us ], [ %2, %.lr.ph81.split.us.preheader ] ; 3 uses
  %i.h = shl nsw i32 %.06777.us, 3
  %i.i = icmp slt i32 %i.h, %i.d
  br i1 %i.i, label %.loopexit, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph81.split.us
  %i.j = getelementptr inbounds nuw i8, ptr %.06578.us, i64 1
  store i8 18, ptr %.06578.us, align 1, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.k
  %.06475.us = phi i32 [ 0, %.lr.ph.us ], [ %i.al, %bb.k ] ; 4 uses
  %.174.us = phi ptr [ %i.j, %.lr.ph.us ], [ %.2.us, %bb.k ] ; 10 uses
  %i.k = sext i32 %.06475.us to i64               ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %.06876.us, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !11    ; 7 uses
  %i.n = add nsw i32 %.06475.us, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %4, i32 %i.n) ; 2 uses
  %indvars.iv.next105 = add nsw i64 %i.k, 1       ; 2 uses
  %i.o = icmp slt i64 %indvars.iv.next105, %i.g
  br i1 %i.o, label %.lr.ph, label %.critedge.us

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv.next106, 1 ; 2 uses
  %i.p = icmp slt i64 %indvars.iv.next, %i.g
  br i1 %i.p, label %.lr.ph, label %.critedge.us, !llvm.loop !63

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %indvars.iv.next106 = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.next105, %bb.b ] ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %.06876.us, i64 %indvars.iv.next106
  %i.r = load i8, ptr %i.q, align 1, !tbaa !11
end_hunk_0
