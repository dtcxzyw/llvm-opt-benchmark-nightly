Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/xutils?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@xdl_recmatch:bb.a
.lr.ph:                                           ; preds = %.preheader168, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ %i.h, %.preheader168 ] ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %0, i64 %indvars.iv
  %i.k = load i8, ptr %i.j, align 1, !tbaa !21
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !21
  %i.o = and i8 %i.n, 1
  %.not145 = icmp eq i8 %i.o, 0                   ; 2 uses
  br i1 %.not145, label %.critedge.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.p = icmp sgt i64 %1, %indvars.iv.next
  br i1 %i.p, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !44

.critedge.loopexit:                               ; preds = %bb.f, %.lr.ph
  %.lcssa180.ph = phi i64 [ %indvars.iv.next, %bb.f ], [ %indvars.iv, %.lr.ph ] ; 2 uses
  %.1109.lcssa.ph = trunc i64 %.lcssa180.ph to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader168
  %.1109.lcssa = phi i32 [ %.0108, %.preheader168 ], [ %.1109.lcssa.ph, %.critedge.loopexit ] ; 4 uses
  %.lcssa180 = phi i64 [ %i.h, %.preheader168 ], [ %.lcssa180.ph, %.critedge.loopexit ]
  %.lcssa179 = phi i1 [ false, %.preheader168 ], [ %.not145, %.critedge.loopexit ]
  %i.q = sext i32 %.0 to i64                      ; 2 uses
  %i.r = icmp sgt i64 %3, %i.q
  br i1 %i.r, label %.lr.ph195, label %.critedge8

.lr.ph195:                                        ; preds = %.critedge, %bb.g
  %indvars.iv258 = phi i64 [ %indvars.iv.next259, %bb.g ], [ %i.q, %.critedge ] ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %2, i64 %indvars.iv258
  %i.t = load i8, ptr %i.s, align 1, !tbaa !21    ; 2 uses
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !21
  %i.x = and i8 %i.w, 1
  %.not146 = icmp eq i8 %i.x, 0
  br i1 %.not146, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %.lr.ph195
  %indvars.iv.next259 = add nsw i64 %indvars.iv258, 1 ; 3 uses
  %i.y = icmp sgt i64 %3, %indvars.iv.next259
  br i1 %i.y, label %.lr.ph195, label %.critedge8.loopexit242, !llvm.loop !45

.critedge2:                                       ; preds = %.lr.ph195
  %i.z = trunc nsw i64 %indvars.iv258 to i32      ; 2 uses
  br i1 %.lcssa179, label %bb.e, label %.critedge8

bb.h:                                             ; preds = %bb.d
  %i.aa = and i64 %4, 4
  %.not136 = icmp eq i64 %i.aa, 0
  br i1 %.not136, label %bb.l, label %.preheader165

.preheader165:                                    ; preds = %bb.h
  %i.ab = icmp sgt i64 %1, 0
  %i.ac = icmp sgt i64 %3, 0
  %i.ad = and i1 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph212, label %.critedge8

.lr.ph212:                                        ; preds = %.preheader165, %.backedge
  %i.ae = phi i64 [ %i.bk, %.backedge ], [ 0, %.preheader165 ]
  %i.af = phi i64 [ %i.bi, %.backedge ], [ 0, %.preheader165 ]
  %.2211 = phi i32 [ %.2.be, %.backedge ], [ 0, %.preheader165 ] ; 3 uses
  %.2110210 = phi i32 [ %.2110.be, %.backedge ], [ 0, %.preheader165 ] ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !21  ; 2 uses
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !21
  %i.al = and i8 %i.ak, 1
  %.not140 = icmp eq i8 %i.al, 0
  %.phi.trans.insert = getelementptr inbounds i8, ptr %2, i64 %i.ae
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !21 ; 2 uses
  br i1 %.not140, label %.lr.ph212._crit_edge, label %bb.i

bb.i:                                             ; preds = %.lr.ph212
  %i.am = zext i8 %.pre to i64
  %i.an = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !21
  %i.ap = and i8 %i.ao, 1
  %.not141 = icmp eq i8 %i.ap, 0
  br i1 %.not141, label %.lr.ph212._crit_edge, label %.preheader164

.preheader164:                                    ; preds = %bb.i
  %i.aq = sext i32 %.2110210 to i64               ; 2 uses
  %i.ar = icmp sgt i64 %1, %i.aq
  br i1 %i.ar, label %.lr.ph201, label %.critedge4

.lr.ph201:                                        ; preds = %.preheader164, %bb.j
  %indvars.iv262 = phi i64 [ %indvars.iv.next263, %bb.j ], [ %i.aq, %.preheader164 ] ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %0, i64 %indvars.iv262
  %i.at = load i8, ptr %i.as, align 1, !tbaa !21
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !21
  %i.ax = and i8 %i.aw, 1
  %.not143 = icmp eq i8 %i.ax, 0
  br i1 %.not143, label %.critedge4.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph201
  %indvars.iv.next263 = add nsw i64 %indvars.iv262, 1 ; 3 uses
  %i.ay = icmp sgt i64 %1, %indvars.iv.next263
  br i1 %i.ay, label %.lr.ph201, label %.critedge4.loopexit, !llvm.loop !46

.critedge4.loopexit:                              ; preds = %bb.j, %.lr.ph201
  %.3111.lcssa.ph.in = phi i64 [ %indvars.iv262, %.lr.ph201 ], [ %indvars.iv.next263, %bb.j ]
  %.3111.lcssa.ph = trunc i64 %.3111.lcssa.ph.in to i32
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.preheader164
  %.3111.lcssa = phi i32 [ %.2110210, %.preheader164 ], [ %.3111.lcssa.ph, %.critedge4.loopexit ] ; 2 uses
  %i.az = sext i32 %.2211 to i64                  ; 2 uses
  %i.ba = icmp sgt i64 %3, %i.az
  br i1 %i.ba, label %.lr.ph206, label %.backedge

.lr.ph206:                                        ; preds = %.critedge4, %bb.k
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %bb.k ], [ %i.az, %.critedge4 ] ; 3 uses
  %i.bb = getelementptr inbounds i8, ptr %2, i64 %indvars.iv266
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !21
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !21
  %i.bg = and i8 %i.bf, 1
  %.not144 = icmp eq i8 %i.bg, 0
  br i1 %.not144, label %.backedge.loopexit, label %bb.k

bb.k:                                             ; preds = %.lr.ph206
  %indvars.iv.next267 = add nsw i64 %indvars.iv266, 1 ; 3 uses
  %i.bh = icmp sgt i64 %3, %indvars.iv.next267
  br i1 %i.bh, label %.lr.ph206, label %.backedge.loopexit, !llvm.loop !47

.backedge.loopexit:                               ; preds = %.lr.ph206, %bb.k
  %.2.be.ph.in = phi i64 [ %indvars.iv.next267, %bb.k ], [ %indvars.iv266, %.lr.ph206 ]
  %.2.be.ph = trunc i64 %.2.be.ph.in to i32
  br label %.backedge

.backedge:                                        ; preds = %.backedge.loopexit, %.critedge4, %.lr.ph212._crit_edge
  %.2110.be = phi i32 [ %i.bn, %.lr.ph212._crit_edge ], [ %.3111.lcssa, %.critedge4 ], [ %.3111.lcssa, %.backedge.loopexit ] ; 3 uses
  %.2.be = phi i32 [ %i.bo, %.lr.ph212._crit_edge ], [ %.2211, %.critedge4 ], [ %.2.be.ph, %.backedge.loopexit ] ; 3 uses
  %i.bi = sext i32 %.2110.be to i64               ; 2 uses
  %i.bj = icmp sgt i64 %1, %i.bi
  %i.bk = sext i32 %.2.be to i64                  ; 2 uses
  %i.bl = icmp sgt i64 %3, %i.bk
  %i.bm = select i1 %i.bj, i1 %i.bl, i1 false
  br i1 %i.bm, label %.lr.ph212, label %.critedge8, !llvm.loop !48

.lr.ph212._crit_edge:                             ; preds = %.lr.ph212, %bb.i
  %i.bn = add nsw i32 %.2110210, 1
  %i.bo = add nsw i32 %.2211, 1
  %.not142 = icmp eq i8 %i.ah, %.pre
  br i1 %.not142, label %.backedge, label %ends_with_optional_cr.exit

bb.l:                                             ; preds = %bb.h
  %i.bp = and i64 %4, 8
  %.not137 = icmp eq i64 %i.bp, 0
  br i1 %.not137, label %bb.o, label %.preheader163

.preheader163:                                    ; preds = %bb.l
  %i.bq = icmp sgt i64 %1, 0
  br i1 %i.bq, label %.lr.ph217.preheader, label %.critedge8

.lr.ph217.preheader:                              ; preds = %.preheader163
  %smax = tail call i64 @llvm.smax.i64(i64 %3, i64 0) ; 2 uses
  br label %.lr.ph217

.lr.ph217:                                        ; preds = %.lr.ph217.preheader, %bb.n
  %indvars.iv270 = phi i64 [ 0, %.lr.ph217.preheader ], [ %indvars.iv.next271, %bb.n ] ; 5 uses
  %exitcond.not = icmp eq i64 %indvars.iv270, %smax
  br i1 %exitcond.not, label %.critedge8.loopexit, label %bb.m

bb.m:                                             ; preds = %.lr.ph217
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv270
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !21
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv270
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !21
  %i.bv = icmp eq i8 %i.bs, %i.bu
  br i1 %i.bv, label %bb.n, label %.critedge8.loopexit

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next271 = add nuw nsw i64 %indvars.iv270, 1 ; 2 uses
  %exitcond276.not = icmp eq i64 %indvars.iv.next271, %1
  br i1 %exitcond276.not, label %.critedge8.loopexit, label %.lr.ph217, !llvm.loop !49

bb.o:                                             ; preds = %bb.l
  %i.bw = and i64 %4, 16
  %.not138 = icmp eq i64 %i.bw, 0
  br i1 %.not138, label %.critedge8, label %.preheader162

.preheader162:                                    ; preds = %bb.o
  %i.bx = icmp sgt i64 %1, 0
  br i1 %i.bx, label %.lr.ph228.preheader, label %.critedge10

.lr.ph228.preheader:                              ; preds = %.preheader162
  %smax279 = tail call i64 @llvm.smax.i64(i64 %3, i64 0) ; 2 uses
  br label %.lr.ph228

.lr.ph228:                                        ; preds = %.lr.ph228.preheader, %bb.q
  %indvars.iv277 = phi i64 [ 0, %.lr.ph228.preheader ], [ %indvars.iv.next278, %bb.q ] ; 5 uses
  %exitcond284.not = icmp eq i64 %indvars.iv277, %smax279
  br i1 %exitcond284.not, label %.critedge10.thread.loopexit, label %bb.p

bb.p:                                             ; preds = %.lr.ph228
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv277
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !21
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv277
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !21
  %i.cc = icmp eq i8 %i.bz, %i.cb
  br i1 %i.cc, label %bb.q, label %.critedge10.thread.loopexit

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %exitcond285.not = icmp eq i64 %indvars.iv.next278, %1
  br i1 %exitcond285.not, label %.critedge10.thread312, label %.lr.ph228, !llvm.loop !50

.critedge10.thread312:                            ; preds = %bb.q
  %5 = trunc nuw i64 %1 to i32
  br label %.thread.i

.critedge10:                                      ; preds = %.preheader162
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %.thread.i.thread, label %.thread.i

.critedge10.thread.loopexit:                      ; preds = %.lr.ph228, %bb.p
  %.lcssa247 = phi i64 [ %smax279, %.lr.ph228 ], [ %indvars.iv277, %bb.p ] ; 2 uses
  %.5227.lcssa = trunc i64 %.lcssa247 to i32
  br label %.thread.i

.thread.i:                                        ; preds = %.critedge10, %.critedge10.thread.loopexit, %.critedge10.thread312
  %.5175 = phi i32 [ 0, %.critedge10 ], [ %.5227.lcssa, %.critedge10.thread.loopexit ], [ %5, %.critedge10.thread312 ] ; 2 uses
  %6 = phi i64 [ 0, %.critedge10 ], [ %.lcssa247, %.critedge10.thread.loopexit ], [ %1, %.critedge10.thread312 ] ; 3 uses
  %i.cd = getelementptr i8, ptr %0, i64 %1
  %i.ce = getelementptr i8, ptr %i.cd, i64 -1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !21
  %.fr.i = freeze i8 %i.cf
  %i.cg = icmp eq i8 %.fr.i, 10                   ; 2 uses
  %i.ch = sext i1 %i.cg to i64
  %spec.select.i = add nsw i64 %1, %i.ch          ; 2 uses
  %i.ci = icmp eq i64 %spec.select.i, %6
  br i1 %i.ci, label %.thread.i.thread, label %bb.r

bb.r:                                             ; preds = %.thread.i
  %i.cj = add nuw nsw i64 %6, 1
  %i.ck = icmp eq i64 %spec.select.i, %i.cj
  %or.cond.i = select i1 %i.cg, i1 %i.ck, i1 false
  br i1 %or.cond.i, label %bb.s, label %ends_with_optional_cr.exit

bb.s:                                             ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %6
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !21
  %i.cn = icmp eq i8 %i.cm, 13
  br i1 %i.cn, label %.thread.i.thread, label %ends_with_optional_cr.exit

.thread.i.thread:                                 ; preds = %.critedge10, %.thread.i, %bb.s
  %.5176317 = phi i32 [ %.5175, %bb.s ], [ %.5175, %.thread.i ], [ 0, %.critedge10 ]
  %7 = zext nneg i32 %.5176317 to i64             ; 3 uses
  %.not.i151 = icmp eq i64 %3, 0
  br i1 %.not.i151, label %.thread.i154, label %bb.t

bb.t:                                             ; preds = %.thread.i.thread
  %i.co = getelementptr i8, ptr %2, i64 %3
  %i.cp = getelementptr i8, ptr %i.co, i64 -1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !21
  %.fr.i152 = freeze i8 %i.cq
  %i.cr = icmp eq i8 %.fr.i152, 10                ; 2 uses
  %i.cs = sext i1 %i.cr to i64
  %spec.select.i153 = add nsw i64 %3, %i.cs
  br label %.thread.i154

.thread.i154:                                     ; preds = %bb.t, %.thread.i.thread
  %i.ct = phi i1 [ false, %.thread.i.thread ], [ %i.cr, %bb.t ]
  %i.cu = phi i64 [ 0, %.thread.i.thread ], [ %spec.select.i153, %bb.t ] ; 2 uses
  %i.cv = icmp eq i64 %i.cu, %7
  br i1 %i.cv, label %ends_with_optional_cr.exit, label %bb.u

bb.u:                                             ; preds = %.thread.i154
  %i.cw = add nuw nsw i64 %7, 1
  %i.cx = icmp eq i64 %i.cu, %i.cw
  %or.cond.i155 = select i1 %i.ct, i1 %i.cx, i1 false
  br i1 %or.cond.i155, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 %7
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !21
  %i.da = icmp eq i8 %i.cz, 13
  br i1 %i.da, label %ends_with_optional_cr.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br label %ends_with_optional_cr.exit

.critedge8.loopexit:                              ; preds = %bb.m, %bb.n, %.lr.ph217
  %.6114.ph.in = phi i64 [ %1, %bb.n ], [ %smax, %.lr.ph217 ], [ %indvars.iv270, %bb.m ]
  %.6114.ph = trunc i64 %.6114.ph.in to i32       ; 2 uses
  br label %.critedge8

.critedge8.loopexit242:                           ; preds = %bb.g
  %i.db = trunc nsw i64 %indvars.iv.next259 to i32
  br label %.critedge8

.critedge8:                                       ; preds = %.critedge2, %.critedge, %.backedge, %.critedge8.loopexit242, %.critedge8.loopexit, %.preheader165, %.preheader163, %bb.o
  %.6114 = phi i32 [ %.6114.ph, %.critedge8.loopexit ], [ %.2110.be, %.backedge ], [ 0, %.preheader165 ], [ 0, %bb.o ], [ 0, %.preheader163 ], [ %.1109.lcssa, %.critedge8.loopexit242 ], [ %.1109.lcssa, %.critedge ], [ %.1109.lcssa, %.critedge2 ]
  %.6 = phi i32 [ %.6114.ph, %.critedge8.loopexit ], [ %.2.be, %.backedge ], [ 0, %.preheader165 ], [ 0, %bb.o ], [ 0, %.preheader163 ], [ %i.db, %.critedge8.loopexit242 ], [ %.0, %.critedge ], [ %i.z, %.critedge2 ]
  %i.dc = sext i32 %.6114 to i64                  ; 2 uses
  %i.dd = icmp sgt i64 %1, %i.dc
  br i1 %i.dd, label %.lr.ph232, label %bb.y

bb.x:                                             ; preds = %.lr.ph232
  %indvars.iv.next287 = add nsw i64 %indvars.iv286, 1 ; 3 uses
  %i.de = icmp sgt i64 %1, %indvars.iv.next287
  br i1 %i.de, label %.lr.ph232, label %.critedge12, !llvm.loop !51

.lr.ph232:                                        ; preds = %.critedge8, %bb.x
  %indvars.iv286 = phi i64 [ %indvars.iv.next287, %bb.x ], [ %i.dc, %.critedge8 ] ; 3 uses
  %i.df = getelementptr inbounds i8, ptr %0, i64 %indvars.iv286
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !21
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !21
  %i.dk = and i8 %i.dj, 1
  %.not147 = icmp eq i8 %i.dk, 0
  br i1 %.not147, label %.critedge12, label %bb.x

.critedge12:                                      ; preds = %.lr.ph232, %bb.x
  %.lcssa171.ph = phi i64 [ %indvars.iv286, %.lr.ph232 ], [ %indvars.iv.next287, %bb.x ]
  %.not148 = icmp eq i64 %1, %.lcssa171.ph
  br i1 %.not148, label %bb.y, label %ends_with_optional_cr.exit

bb.y:                                             ; preds = %.critedge12, %.critedge8
  %i.dl = sext i32 %.6 to i64                     ; 2 uses
  %i.dm = icmp sgt i64 %3, %i.dl
  br i1 %i.dm, label %.lr.ph237, label %ends_with_optional_cr.exit

bb.z:                                             ; preds = %.lr.ph237
  %indvars.iv.next291 = add nsw i64 %indvars.iv290, 1 ; 3 uses
  %i.dn = icmp sgt i64 %3, %indvars.iv.next291
  br i1 %i.dn, label %.lr.ph237, label %.critedge14, !llvm.loop !52

.lr.ph237:                                        ; preds = %bb.y, %bb.z
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %bb.z ], [ %i.dl, %bb.y ] ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %2, i64 %indvars.iv290
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !21
  %i.dq = zext i8 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !21
  %i.dt = and i8 %i.ds, 1
  %.not149 = icmp eq i8 %i.dt, 0
  br i1 %.not149, label %.critedge14, label %bb.z

.critedge14:                                      ; preds = %.lr.ph237, %bb.z
  %.lcssa.ph = phi i64 [ %indvars.iv290, %.lr.ph237 ], [ %indvars.iv.next291, %bb.z ]
  %i.du = icmp eq i64 %3, %.lcssa.ph
  %i.dv = zext i1 %i.du to i32
  br label %ends_with_optional_cr.exit

ends_with_optional_cr.exit:                       ; preds = %bb.e, %.lr.ph212._crit_edge, %bb.w, %bb.v, %.thread.i154, %bb.s, %bb.r, %bb.y, %.critedge12, %bb.c, %bb.b, %.critedge14
  %.0116 = phi i32 [ 0, %bb.c ], [ 0, %bb.s ], [ %i.dv, %.critedge14 ], [ 0, %.critedge12 ], [ 0, %.lr.ph212._crit_edge ], [ 1, %bb.v ], [ 1, %bb.b ], [ 1, %bb.y ], [ 0, %bb.r ], [ 0, %bb.w ], [ 1, %.thread.i154 ], [ 0, %bb.e ]
  ret i32 %.0116
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @xdl_hash_record_with_whitespace(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(address) %1, i64 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = load ptr, ptr %0, align 8, !tbaa !36     ; 11 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = icmp ult ptr %i.b, %1
  br i1 %i.d, label %.lr.ph76, label %.critedge

.lr.ph76:                                         ; preds = %bb.a
  %i.e = and i64 %2, 30
  %i.f = icmp eq i64 %i.e, 16
  %i.g = and i64 %2, 2
  %.not63 = icmp eq i64 %i.g, 0
  %i.h = and i64 %2, 4
  %i.i = icmp eq i64 %i.h, 0                      ; 2 uses
  %i.j = and i64 %2, 8
  %i.k = icmp eq i64 %i.j, 0
  %i.l = load i8, ptr %i.b, align 1, !tbaa !21    ; 5 uses
  %.not.us116 = icmp eq i8 %i.l, 10               ; 2 uses
  br i1 %i.f, label %.lr.ph76.split.us, label %.lr.ph76.split

.lr.ph76.split.us:                                ; preds = %.lr.ph76
  br i1 %.not.us116, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph76.split.us
  %i.m = sub i64 %i.a, %i.c
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.m
  br label %.lr.ph

bb.b:                                             ; preds = %bb.f
  %i.n = load i8, ptr %i.x, align 1, !tbaa !21    ; 2 uses
  %.not.us = icmp eq i8 %i.n, 10
  br i1 %.not.us, label %.critedge, label %.lr.ph, !llvm.loop !53

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %i.o = phi i8 [ %i.n, %bb.b ], [ %i.l, %.lr.ph.preheader ] ; 2 uses
  %.05174.us118 = phi i64 [ %.3.us, %bb.b ], [ 5381, %.lr.ph.preheader ] ; 2 uses
  %.05075.us117 = phi ptr [ %i.x, %bb.b ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %i.p = icmp eq i8 %i.o, 13
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %.05075.us117, i64 1 ; 2 uses
  %i.r = icmp ult ptr %i.q, %1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load i8, ptr %i.q, align 1, !tbaa !21
  %i.t = icmp eq i8 %i.s, 10
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph
  %i.u = mul i64 %.05174.us118, 33
  %i.v = zext i8 %i.o to i64
  %i.w = xor i64 %i.u, %i.v
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.3.us = phi i64 [ %.05174.us118, %bb.d ], [ %i.w, %bb.e ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.05075.us117, i64 1 ; 4 uses
  %i.y = icmp ult ptr %i.x, %1
  br i1 %i.y, label %bb.b, label %.critedge, !llvm.loop !53

.lr.ph76.split:                                   ; preds = %.lr.ph76
  br i1 %.not.us116, label %.critedge, label %.lr.ph92

.lr.ph92:                                         ; preds = %.lr.ph76.split
  br i1 %.not63, label %.lr.ph92.split.us, label %.lr.ph92.split

.lr.ph92.split.us:                                ; preds = %.lr.ph92
  br i1 %i.k, label %.lr.ph92.split.us.split.us, label %.lr.ph92.split.us.split

.lr.ph92.split.us.split.us:                       ; preds = %.lr.ph92.split.us, %bb.g
  %i.z = phi i8 [ %i.ag, %bb.g ], [ %i.l, %.lr.ph92.split.us ]
  %.0517491.us.us = phi i64 [ %.3.us99.us, %bb.g ], [ 5381, %.lr.ph92.split.us ] ; 5 uses
  %.0507590.us.us = phi ptr [ %i.au, %bb.g ], [ %i.b, %.lr.ph92.split.us ] ; 4 uses
  %i.aa = zext i8 %i.z to i64                     ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !21
  %i.ad = and i8 %i.ac, 1
  %.not59.us.us = icmp eq i8 %i.ad, 0
  br i1 %.not59.us.us, label %bb.i, label %.preheader66.us.us.preheader

.preheader66.us.us.preheader:                     ; preds = %.lr.ph92.split.us.split.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.0507590.us.us, i64 1 ; 2 uses
  %i.af = icmp ult ptr %i.ae, %1
  br i1 %i.af, label %.lr.ph188, label %.critedge2.us.us.thread

bb.g:                                             ; preds = %.critedge2.us.us.thread
  %i.ag = load i8, ptr %i.au, align 1, !tbaa !21  ; 2 uses
  %.not.us98.us = icmp eq i8 %i.ag, 10
  br i1 %.not.us98.us, label %.critedge, label %.lr.ph92.split.us.split.us, !llvm.loop !53

.preheader66.us.us:                               ; preds = %.lr.ph188
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 2 uses
  %i.ai = icmp ult ptr %i.ah, %1
end_hunk_0
