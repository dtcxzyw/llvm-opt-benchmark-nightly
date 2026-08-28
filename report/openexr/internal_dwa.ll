Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/internal_dwa?download=true
inline.NumInlined: 252
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 30
begin_hunk_0_@DctCoderChannelData_push_row:bb.a
; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @LossyDctEncoder_execute(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) initializes((8, 24)) %2) unnamed_addr #12 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 16 uses
  %i.b = alloca [64 x i16], align 16              ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !125  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !212  ; 2 uses
  %i.g = sitofp i32 %i.f to float
  %i.h = fmul nnan float %i.g, 1.250000e-01
  %i.i = tail call float @llvm.ceil.f32(float %i.h)
  %i.j = fptosi float %i.i to i32                 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !213  ; 2 uses
  %i.m = sitofp i32 %i.l to float
  %i.n = fmul nnan float %i.m, 1.250000e-01
  %i.o = tail call float @llvm.ceil.f32(float %i.n)
  %i.p = fptosi float %i.o to i32                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !214
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.u = icmp sgt i32 %i.d, 0                     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  br i1 %i.u, label %.lr.ph, label %._crit_edge196.thread

._crit_edge196.thread:                            ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !215
  %i.x = load ptr, ptr %i.a, align 16, !tbaa !123 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 384
  store ptr %i.w, ptr %i.y, align 32, !tbaa !216
  br label %.preheader163

.lr.ph:                                           ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.aa = sext i32 %i.f to i64
  %i.ab = sext i32 %i.l to i64
  %i.ac = mul nsw i64 %i.ab, %i.aa                ; 5 uses
  %i.ad = zext nneg i32 %i.d to i64               ; 4 uses
  %i.ae = shl nuw nsw i64 %i.ad, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 8 %i.z, i64 %i.ae, i1 false), !tbaa !123
  %i.af = add nsw i64 %i.ad, -1                   ; 2 uses
  %xtraiter = and i64 %i.ad, 3                    ; 3 uses
  %i.ag = icmp ult i32 %i.d, 4
  br i1 %i.ag, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ad, 2147483644
  br label %bb.c

._crit_edge.unr-lcssa:                            ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.0133181.epil.init = phi i64 [ 0, %.lr.ph ], [ %.1134.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod406 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod406)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %.0133181.epil = phi i64 [ %.0133181.epil.init, %.epil.preheader ], [ %.1134.epil, %bb.b ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.epil
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !123
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 416
  %i.ak = load i32, ptr %i.aj, align 32, !tbaa !64
  %i.al = icmp eq i32 %i.ak, 2
  %i.am = select i1 %i.al, i64 %i.ac, i64 0
  %.1134.epil = add i64 %i.am, %.0133181.epil     ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !217

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.unr-lcssa
  %.1134.lcssa = phi i64 [ %.1134.3, %._crit_edge.unr-lcssa ], [ %.1134.epil, %bb.b ] ; 2 uses
  %.not = icmp eq i64 %.1134.lcssa, 0
  br i1 %.not, label %.lr.ph195.preheader, label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %.0133181 = phi i64 [ 0, %.lr.ph.new ], [ %.1134.3, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !123
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 416
  %i.aq = load i32, ptr %i.ap, align 32, !tbaa !64
  %i.ar = icmp eq i32 %i.aq, 2
  %i.as = select i1 %i.ar, i64 %i.ac, i64 0
  %.1134 = add i64 %i.as, %.0133181
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !123
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 416
  %i.ax = load i32, ptr %i.aw, align 32, !tbaa !64
  %i.ay = icmp eq i32 %i.ax, 2
  %i.az = select i1 %i.ay, i64 %i.ac, i64 0
  %.1134.1 = add i64 %i.az, %.1134
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !123
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 416
  %i.be = load i32, ptr %i.bd, align 32, !tbaa !64
  %i.bf = icmp eq i32 %i.be, 2
  %i.bg = select i1 %i.bf, i64 %i.ac, i64 0
  %.1134.2 = add i64 %i.bg, %.1134.1
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !123
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 416
  %i.bl = load i32, ptr %i.bk, align 32, !tbaa !64
  %i.bm = icmp eq i32 %i.bl, 2
  %i.bn = select i1 %i.bm, i64 %i.ac, i64 0
  %.1134.3 = add i64 %i.bn, %.1134.2              ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.c, !llvm.loop !218

bb.d:                                             ; preds = %._crit_edge
  %i.bo = shl i64 %.1134.lcssa, 1
  %i.bp = tail call ptr %0(i64 noundef %i.bo) #21 ; 2 uses
  %.not146 = icmp eq ptr %i.bp, null
  br i1 %.not146, label %bb.fg, label %.lr.ph195.preheader

.lr.ph195.preheader:                              ; preds = %bb.d, %._crit_edge
  %.0130.ph = phi ptr [ %i.bp, %bb.d ], [ null, %._crit_edge ] ; 4 uses
  %wide.trip.count260 = zext nneg i32 %i.d to i64
  br label %.lr.ph195

._crit_edge196:                                   ; preds = %.loopexit
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !215
  %i.bs = load ptr, ptr %i.a, align 16, !tbaa !123 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 384
  store ptr %i.br, ptr %i.bt, align 32, !tbaa !216
  %.not386 = icmp eq i32 %i.d, 1
  br i1 %.not386, label %.preheader163, label %.lr.ph199

.lr.ph199:                                        ; preds = %._crit_edge196
  %i.bu = mul nsw i32 %i.p, %i.j
  %i.bv = sext i32 %i.bu to i64                   ; 5 uses
  %xtraiter415 = and i64 %i.af, 3                 ; 3 uses
  %i.bw = add nsw i32 %i.d, -2
  %i.bx = icmp ult i32 %i.bw, 3
  br i1 %i.bx, label %.epil.preheader414, label %.lr.ph199.new

.lr.ph199.new:                                    ; preds = %.lr.ph199
  %unroll_iter419 = and i64 %i.af, -4
  br label %bb.q

.lr.ph195:                                        ; preds = %.lr.ph195.preheader, %.loopexit
  %indvars.iv257 = phi i64 [ 0, %.lr.ph195.preheader ], [ %indvars.iv.next258, %.loopexit ] ; 2 uses
  %.1131192 = phi ptr [ %.0130.ph, %.lr.ph195.preheader ], [ %.3, %.loopexit ] ; 5 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv257
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !123 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 416
  %i.cb = load i32, ptr %i.ca, align 32, !tbaa !64
  %.not152 = icmp eq i32 %i.cb, 2
  br i1 %.not152, label %.preheader164, label %.loopexit

.preheader164:                                    ; preds = %.lr.ph195
  %i.cc = load i32, ptr %i.k, align 8, !tbaa !213 ; 3 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph190, label %.loopexit

.lr.ph190:                                        ; preds = %.preheader164
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 392
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !115 ; 10 uses
  %i.cg = load i32, ptr %i.e, align 4, !tbaa !212 ; 3 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  %i.ci = sext i32 %i.cg to i64                   ; 10 uses
  %wide.trip.count255 = zext nneg i32 %i.cc to i64 ; 3 uses
  br i1 %i.ch, label %.lr.ph185.us.preheader, label %.lr.ph190.split.preheader

.lr.ph190.split.preheader:                        ; preds = %.lr.ph190
  %xtraiter407 = and i64 %wide.trip.count255, 7   ; 3 uses
  %i.cj = icmp ult i32 %i.cc, 8
  br i1 %i.cj, label %.lr.ph190.split.epil.preheader, label %.lr.ph190.split.preheader.new

.lr.ph190.split.preheader.new:                    ; preds = %.lr.ph190.split.preheader
  %unroll_iter412 = and i64 %wide.trip.count255, 2147483640
  br label %.lr.ph190.split

.lr.ph185.us.preheader:                           ; preds = %.lr.ph190
  %wide.trip.count250 = zext nneg i32 %i.cg to i64
  br label %.lr.ph185.us

.lr.ph185.us:                                     ; preds = %.lr.ph185.us.preheader, %._crit_edge186.us
  %indvars.iv252 = phi i64 [ 0, %.lr.ph185.us.preheader ], [ %indvars.iv.next253, %._crit_edge186.us ] ; 2 uses
  %.2188.us = phi ptr [ %.1131192, %.lr.ph185.us.preheader ], [ %i.ed, %._crit_edge186.us ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv252 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !97
  br label %3

3:                                                ; preds = %.lr.ph185.us, %float_to_half.exit.us
  %indvars.iv247 = phi i64 [ 0, %.lr.ph185.us ], [ %indvars.iv.next248, %float_to_half.exit.us ] ; 3 uses
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv247
  %5 = load float, ptr %4, align 4, !tbaa !185    ; 3 uses
  %6 = fcmp ogt float %5, 6.550400e+04
  br i1 %6, label %bb.e, label %7

7:                                                ; preds = %3
  %8 = fcmp olt float %5, -6.550400e+04
  br i1 %8, label %9, label %bb.e

9:                                                ; preds = %7
  br label %bb.e

bb.e:                                             ; preds = %9, %7, %3
  %.0125.us = phi float [ %5, %7 ], [ -6.550400e+04, %9 ], [ 6.550400e+04, %3 ] ; 2 uses
  %i.cm = bitcast float %.0125.us to i32
  %i.cn = tail call float @llvm.fabs.f32(float %.0125.us)
  %i.co = bitcast float %i.cn to i32              ; 10 uses
  %i.cp = lshr i32 %i.cm, 16                      ; 3 uses
  %i.cq = trunc nuw i32 %i.cp to i16
  %i.cr = and i16 %i.cq, -32768                   ; 3 uses
  %i.cs = icmp samesign ugt i32 %i.co, 947912703
  br i1 %i.cs, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ct = icmp samesign ult i32 %i.co, 855638017
  br i1 %i.ct, label %float_to_half.exit.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cu = lshr i32 %i.co, 23                      ; 2 uses
  %i.cv = sub nuw nsw i32 126, %i.cu
  %i.cw = and i32 %i.co, 8388607
  %i.cx = or disjoint i32 %i.cw, 8388608          ; 2 uses
  %i.cy = add nsw i32 %i.cu, -94
  %i.cz = shl i32 %i.cx, %i.cy                    ; 2 uses
  %i.da = lshr i32 %i.cx, %i.cv                   ; 2 uses
  %i.db = and i32 %i.cp, 32768
  %i.dc = or i32 %i.da, %i.db
  %i.dd = trunc nuw i32 %i.dc to i16              ; 2 uses
  %i.de = icmp ugt i32 %i.cz, -2147483648
  br i1 %i.de, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.df = icmp ne i32 %i.cz, -2147483648
  %i.dg = and i32 %i.da, 1
  %.not.i.i.us = icmp eq i32 %i.dg, 0
  %or.cond.i.i.us = select i1 %i.df, i1 true, i1 %.not.i.i.us
  br i1 %or.cond.i.i.us, label %float_to_half.exit.us, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.dh = add nuw i16 %i.dd, 1
  br label %float_to_half.exit.us

bb.j:                                             ; preds = %bb.e
  %i.di = icmp samesign ugt i32 %i.co, 2139095039
  br i1 %i.di, label %bb.n, label %bb.k, !prof !186

bb.k:                                             ; preds = %bb.j
  %i.dj = icmp samesign ugt i32 %i.co, 1199566847
  br i1 %i.dj, label %bb.m, label %bb.l, !prof !186

bb.l:                                             ; preds = %bb.k
  %i.dk = add nuw nsw i32 %i.co, 134221823
  %i.dl = lshr i32 %i.co, 13
  %i.dm = and i32 %i.dl, 1
  %i.dn = add nuw nsw i32 %i.dk, %i.dm
  %i.do = lshr i32 %i.dn, 13
  %i.dp = and i32 %i.cp, 32768
  %i.dq = or i32 %i.do, %i.dp
  %i.dr = trunc i32 %i.dq to i16
  br label %float_to_half.exit.us

bb.m:                                             ; preds = %bb.k
  %i.ds = or disjoint i16 %i.cr, 31744
  br label %float_to_half.exit.us

bb.n:                                             ; preds = %bb.j
  %i.dt = or disjoint i16 %i.cr, 31744            ; 2 uses
  %i.du = icmp eq i32 %i.co, 2139095040
  br i1 %i.du, label %float_to_half.exit.us, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dv = lshr i32 %i.co, 13
  %i.dw = and i32 %i.dv, 1023                     ; 2 uses
  %i.dx = icmp eq i32 %i.dw, 0
  %i.dy = zext i1 %i.dx to i16
  %i.dz = trunc nuw nsw i32 %i.dw to i16
  %i.ea = or i16 %i.dz, %i.dy
  %i.eb = or disjoint i16 %i.ea, %i.dt
  br label %float_to_half.exit.us

float_to_half.exit.us:                            ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.i, %bb.h, %bb.f
  %.033.i.i.us = phi i16 [ %i.cr, %bb.f ], [ %i.eb, %bb.o ], [ %i.ds, %bb.m ], [ %i.dr, %bb.l ], [ %i.dt, %bb.n ], [ %i.dh, %bb.i ], [ %i.dd, %bb.h ]
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %.2188.us, i64 %indvars.iv247
  store i16 %.033.i.i.us, ptr %i.ec, align 2, !tbaa !94
  %indvars.iv.next248 = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %exitcond251.not = icmp eq i64 %indvars.iv.next248, %wide.trip.count250
  br i1 %exitcond251.not, label %._crit_edge186.us, label %3, !llvm.loop !219

._crit_edge186.us:                                ; preds = %float_to_half.exit.us
  store ptr %.2188.us, ptr %i.ck, align 8, !tbaa !97
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %.2188.us, i64 %i.ci ; 2 uses
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %exitcond256.not = icmp eq i64 %indvars.iv.next253, %wide.trip.count255
  br i1 %exitcond256.not, label %.loopexit, label %.lr.ph185.us, !llvm.loop !220

.lr.ph190.split:                                  ; preds = %.lr.ph190.split, %.lr.ph190.split.preheader.new
  %indvars.iv242 = phi i64 [ 0, %.lr.ph190.split.preheader.new ], [ %indvars.iv.next243.7, %.lr.ph190.split ] ; 9 uses
  %.2188 = phi ptr [ %.1131192, %.lr.ph190.split.preheader.new ], [ %i.fa, %.lr.ph190.split ] ; 2 uses
  %niter413 = phi i64 [ 0, %.lr.ph190.split.preheader.new ], [ %niter413.next.7, %.lr.ph190.split ]
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242
  store ptr %.2188, ptr %i.ee, align 8, !tbaa !97
  %i.ef = getelementptr inbounds [2 x i8], ptr %.2188, i64 %i.ci ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr %i.ef, ptr %i.eh, align 8, !tbaa !97
  %i.ei = getelementptr inbounds [2 x i8], ptr %i.ef, i64 %i.ci ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  store ptr %i.ei, ptr %i.ek, align 8, !tbaa !97
  %i.el = getelementptr inbounds [2 x i8], ptr %i.ei, i64 %i.ci ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  store ptr %i.el, ptr %i.en, align 8, !tbaa !97
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.el, i64 %i.ci ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  store ptr %i.eo, ptr %i.eq, align 8, !tbaa !97
  %i.er = getelementptr inbounds [2 x i8], ptr %i.eo, i64 %i.ci ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  store ptr %i.er, ptr %i.et, align 8, !tbaa !97
  %i.eu = getelementptr inbounds [2 x i8], ptr %i.er, i64 %i.ci ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  store ptr %i.eu, ptr %i.ew, align 8, !tbaa !97
  %i.ex = getelementptr inbounds [2 x i8], ptr %i.eu, i64 %i.ci ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 56
  store ptr %i.ex, ptr %i.ez, align 8, !tbaa !97
  %i.fa = getelementptr inbounds [2 x i8], ptr %i.ex, i64 %i.ci ; 3 uses
  %indvars.iv.next243.7 = add nuw nsw i64 %indvars.iv242, 8 ; 2 uses
  %niter413.next.7 = add i64 %niter413, 8         ; 2 uses
  %niter413.ncmp.7 = icmp eq i64 %niter413.next.7, %unroll_iter412
  br i1 %niter413.ncmp.7, label %.loopexit.loopexit403.unr-lcssa, label %.lr.ph190.split, !llvm.loop !220

.loopexit.loopexit403.unr-lcssa:                  ; preds = %.lr.ph190.split
  %lcmp.mod409.not = icmp eq i64 %xtraiter407, 0
  br i1 %lcmp.mod409.not, label %.loopexit, label %.lr.ph190.split.epil.preheader

.lr.ph190.split.epil.preheader:                   ; preds = %.loopexit.loopexit403.unr-lcssa, %.lr.ph190.split.preheader
  %indvars.iv242.epil.init = phi i64 [ 0, %.lr.ph190.split.preheader ], [ %indvars.iv.next243.7, %.loopexit.loopexit403.unr-lcssa ]
  %.2188.epil.init = phi ptr [ %.1131192, %.lr.ph190.split.preheader ], [ %i.fa, %.loopexit.loopexit403.unr-lcssa ]
  %lcmp.mod411 = icmp ne i64 %xtraiter407, 0
  tail call void @llvm.assume(i1 %lcmp.mod411)
  br label %.lr.ph190.split.epil

.lr.ph190.split.epil:                             ; preds = %.lr.ph190.split.epil, %.lr.ph190.split.epil.preheader
  %indvars.iv242.epil = phi i64 [ %indvars.iv.next243.epil, %.lr.ph190.split.epil ], [ %indvars.iv242.epil.init, %.lr.ph190.split.epil.preheader ] ; 2 uses
  %.2188.epil = phi ptr [ %i.fc, %.lr.ph190.split.epil ], [ %.2188.epil.init, %.lr.ph190.split.epil.preheader ] ; 2 uses
  %epil.iter408 = phi i64 [ %epil.iter408.next, %.lr.ph190.split.epil ], [ 0, %.lr.ph190.split.epil.preheader ]
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv242.epil
  store ptr %.2188.epil, ptr %i.fb, align 8, !tbaa !97
  %i.fc = getelementptr inbounds [2 x i8], ptr %.2188.epil, i64 %i.ci ; 2 uses
  %indvars.iv.next243.epil = add nuw nsw i64 %indvars.iv242.epil, 1
  %epil.iter408.next = add i64 %epil.iter408, 1   ; 2 uses
  %epil.iter408.cmp.not = icmp eq i64 %epil.iter408.next, %xtraiter407
  br i1 %epil.iter408.cmp.not, label %.loopexit, label %.lr.ph190.split.epil, !llvm.loop !221

.loopexit:                                        ; preds = %.loopexit.loopexit403.unr-lcssa, %.lr.ph190.split.epil, %._crit_edge186.us, %.preheader164, %.lr.ph195
  %.3 = phi ptr [ %.1131192, %.lr.ph195 ], [ %.1131192, %.preheader164 ], [ %i.ed, %._crit_edge186.us ], [ %i.fa, %.loopexit.loopexit403.unr-lcssa ], [ %i.fc, %.lr.ph190.split.epil ]
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %exitcond261.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count260
  br i1 %exitcond261.not, label %._crit_edge196, label %.lr.ph195, !llvm.loop !222

.preheader163.loopexit.unr-lcssa:                 ; preds = %bb.q
  %lcmp.mod417.not = icmp eq i64 %xtraiter415, 0
  br i1 %lcmp.mod417.not, label %.preheader163, label %.epil.preheader414

.epil.preheader414:                               ; preds = %.preheader163.loopexit.unr-lcssa, %.lr.ph199
  %indvars.iv262.epil.init = phi i64 [ 1, %.lr.ph199 ], [ %indvars.iv.next263.3, %.preheader163.loopexit.unr-lcssa ]
  %lcmp.mod418 = icmp ne i64 %xtraiter415, 0
  tail call void @llvm.assume(i1 %lcmp.mod418)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader414
  %indvars.iv262.epil = phi i64 [ %indvars.iv262.epil.init, %.epil.preheader414 ], [ %indvars.iv.next263.epil, %bb.p ] ; 2 uses
  %epil.iter416 = phi i64 [ 0, %.epil.preheader414 ], [ %epil.iter416.next, %bb.p ]
  %i.fd = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv262.epil ; 2 uses
  %i.fe = getelementptr i8, ptr %i.fd, i64 -8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !123
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 384
  %i.fh = load ptr, ptr %i.fg, align 32, !tbaa !216
  %i.fi = getelementptr inbounds [2 x i8], ptr %i.fh, i64 %i.bv
  %i.fj = load ptr, ptr %i.fd, align 8, !tbaa !123
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 384
  store ptr %i.fi, ptr %i.fk, align 32, !tbaa !216
  %indvars.iv.next263.epil = add nuw nsw i64 %indvars.iv262.epil, 1
  %epil.iter416.next = add i64 %epil.iter416, 1   ; 2 uses
  %epil.iter416.cmp.not = icmp eq i64 %epil.iter416.next, %xtraiter415
  br i1 %epil.iter416.cmp.not, label %.preheader163, label %bb.p, !llvm.loop !223

.preheader163:                                    ; preds = %.preheader163.loopexit.unr-lcssa, %bb.p, %._crit_edge196.thread, %._crit_edge196
  %i.fl = phi ptr [ %i.x, %._crit_edge196.thread ], [ %i.bs, %._crit_edge196 ], [ %i.bs, %bb.p ], [ %i.bs, %.preheader163.loopexit.unr-lcssa ] ; 5 uses
  %.0130378381 = phi ptr [ null, %._crit_edge196.thread ], [ %.0130.ph, %._crit_edge196 ], [ %.0130.ph, %bb.p ], [ %.0130.ph, %.preheader163.loopexit.unr-lcssa ] ; 2 uses
  %i.fm = icmp sgt i32 %i.p, 0
  br i1 %i.fm, label %.preheader162.lr.ph, label %._crit_edge220.split

.preheader162.lr.ph:                              ; preds = %.preheader163
  %i.fn = icmp sgt i32 %i.j, 0
  %i.fo = icmp eq i32 %i.d, 3
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 464
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 720
  br i1 %i.fn, label %.preheader162.preheader, label %._crit_edge220.split

.preheader162.preheader:                          ; preds = %.preheader162.lr.ph
  %wide.trip.count306 = zext nneg i32 %i.p to i64
  %wide.trip.count301 = zext nneg i32 %i.j to i64
  %wide.trip.count278 = zext nneg i32 %i.d to i64
  %wide.trip.count291 = zext nneg i32 %i.d to i64
  %wide.trip.count296 = zext nneg i32 %i.d to i64
  %scevgep = getelementptr i8, ptr %i.fl, i64 256 ; 2 uses
  br label %.preheader162

bb.q:                                             ; preds = %bb.q, %.lr.ph199.new
  %indvars.iv262 = phi i64 [ 1, %.lr.ph199.new ], [ %indvars.iv.next263.3, %bb.q ] ; 5 uses
  %niter420 = phi i64 [ 0, %.lr.ph199.new ], [ %niter420.next.3, %bb.q ]
  %i.fv = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv262 ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 -8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !123
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 384
  %i.fz = load ptr, ptr %i.fy, align 32, !tbaa !216
  %i.ga = getelementptr inbounds [2 x i8], ptr %i.fz, i64 %i.bv ; 2 uses
  %i.gb = load ptr, ptr %i.fv, align 8, !tbaa !123
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 384
  store ptr %i.ga, ptr %i.gc, align 32, !tbaa !216
  %i.gd = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv262
  %i.ge = getelementptr i8, ptr %i.gd, i64 8
  %i.gf = getelementptr inbounds [2 x i8], ptr %i.ga, i64 %i.bv ; 2 uses
  %i.gg = load ptr, ptr %i.ge, align 8, !tbaa !123
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 384
  store ptr %i.gf, ptr %i.gh, align 32, !tbaa !216
  %i.gi = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv262
  %i.gj = getelementptr i8, ptr %i.gi, i64 16
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.gf, i64 %i.bv ; 2 uses
  %i.gl = load ptr, ptr %i.gj, align 8, !tbaa !123
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 384
  store ptr %i.gk, ptr %i.gm, align 32, !tbaa !216
  %i.gn = getelementptr [8 x i8], ptr %i.a, i64 %indvars.iv262
  %i.go = getelementptr i8, ptr %i.gn, i64 24
  %i.gp = getelementptr inbounds [2 x i8], ptr %i.gk, i64 %i.bv
  %i.gq = load ptr, ptr %i.go, align 8, !tbaa !123
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 384
  store ptr %i.gp, ptr %i.gr, align 32, !tbaa !216
  %indvars.iv.next263.3 = add nuw nsw i64 %indvars.iv262, 4 ; 2 uses
  %niter420.next.3 = add i64 %niter420, 4         ; 2 uses
  %niter420.ncmp.3 = icmp eq i64 %niter420.next.3, %unroll_iter419
  br i1 %niter420.ncmp.3, label %.preheader163.loopexit.unr-lcssa, label %bb.q, !llvm.loop !224

.preheader162:                                    ; preds = %.preheader162.preheader, %._crit_edge216
  %indvars.iv303 = phi i64 [ 0, %.preheader162.preheader ], [ %indvars.iv.next304, %._crit_edge216 ] ; 2 uses
  %.0157218 = phi ptr [ %i.r, %.preheader162.preheader ], [ %.2159.lcssa, %._crit_edge216 ]
  %i.gs = load ptr, ptr %i.fp, align 8            ; 5 uses
  %i.gt = load ptr, ptr %i.fq, align 16           ; 5 uses
  %i.gu = shl i64 %indvars.iv303, 3               ; 2 uses
  %scevgep390.a = getelementptr i8, ptr %i.gs, i64 256 ; 2 uses
  %scevgep391 = getelementptr i8, ptr %i.gt, i64 256 ; 2 uses
  %bound0 = icmp ult ptr %i.fl, %scevgep390.a
  %bound1 = icmp ult ptr %i.gs, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0392 = icmp ult ptr %i.fl, %scevgep391
  %bound1393 = icmp ult ptr %i.gt, %scevgep
  %found.conflict394 = and i1 %bound0392, %bound1393
  %conflict.rdx = or i1 %found.conflict, %found.conflict394
  %bound0395 = icmp ult ptr %i.gs, %scevgep391
  %bound1396 = icmp ult ptr %i.gt, %scevgep390.a
  %found.conflict397 = and i1 %bound0395, %bound1396
  %conflict.rdx398 = or i1 %conflict.rdx, %found.conflict397
  br label %.preheader161

._crit_edge220.split:                             ; preds = %._crit_edge216, %.preheader162.lr.ph, %.preheader163
  %.not147 = icmp eq ptr %.0130378381, null
  br i1 %.not147, label %bb.fg, label %bb.ff

.preheader161:                                    ; preds = %.preheader162, %._crit_edge212
  %indvars.iv298 = phi i64 [ 0, %.preheader162 ], [ %indvars.iv.next299, %._crit_edge212 ] ; 2 uses
  %.1158214 = phi ptr [ %.0157218, %.preheader162 ], [ %.2159.lcssa, %._crit_edge212 ] ; 2 uses
  br i1 %i.u, label %.preheader160.lr.ph, label %._crit_edge212

.preheader160.lr.ph:                              ; preds = %.preheader161
  %i.gv = shl nuw nsw i64 %indvars.iv298, 3       ; 6 uses
  %i.gw = load i32, ptr %i.e, align 4, !tbaa !212 ; 7 uses
  %reass.add = shl i32 %i.gw, 1                   ; 5 uses
  %i.gx = add nsw i32 %i.gw, -1                   ; 5 uses
end_hunk_0
begin_hunk_1_@algoQuantize:bb.a
  br i1 %i.je, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %half_to_float.exit332.i
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %half_to_float.exit332.i, %bb.di, %bb.dh, %half_to_float.exit329.i
  %.4243.i = phi i32 [ %i.ee, %bb.dh ], [ %i.b, %half_to_float.exit329.i ], [ %i.ee, %bb.dp ], [ %i.b, %half_to_float.exit332.i ], [ %i.b, %bb.di ] ; 3 uses
  %.4236.i = phi i32 [ %i.eh, %bb.dh ], [ %i.ae, %half_to_float.exit329.i ], [ %i.eh, %bb.dp ], [ %i.ae, %half_to_float.exit332.i ], [ %i.ae, %bb.di ] ; 4 uses
  %.4.i = phi float [ %i.io, %bb.dh ], [ %2, %half_to_float.exit329.i ], [ %i.jd, %bb.dp ], [ %2, %half_to_float.exit332.i ], [ %2, %bb.di ] ; 4 uses
  %i.jf = and i32 %i.b, %i.v                      ; 11 uses
  %i.jg = trunc nuw nsw i32 %i.jf to i16
  %i.jh = tail call range(i16 0, 15) i16 @llvm.ctpop.i16(i16 range(i16 0, -28672) %i.jg)
  %i.ji = zext nneg i16 %i.jh to i32              ; 5 uses
  %i.jj = icmp samesign ugt i32 %.4236.i, %i.ji
  br i1 %i.jj, label %bb.dr, label %bb.dy

bb.dr:                                            ; preds = %bb.dq
  %i.jk = shl nuw nsw i32 %i.jf, 13               ; 4 uses
  %i.jl = icmp samesign ugt i32 %i.jf, 1023
  br i1 %i.jl, label %bb.ds, label %bb.dv, !prof !188

bb.ds:                                            ; preds = %bb.dr
  %i.jm = icmp samesign ult i32 %i.jf, 31744
  br i1 %i.jm, label %bb.dt, label %bb.du, !prof !188

bb.dt:                                            ; preds = %bb.ds
  %i.jn = add nuw nsw i32 %i.jk, 939524096
  br label %half_to_float.exit335.i

bb.du:                                            ; preds = %bb.ds
  %i.jo = or i32 %i.jk, 2139095040
  br label %half_to_float.exit335.i

bb.dv:                                            ; preds = %bb.dr
  %.not.i.i333.i = icmp eq i32 %i.jf, 0
  br i1 %.not.i.i333.i, label %half_to_float.exit335.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.jp = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.jk, i1 true)
  %i.jq = add nsw i32 %i.jp, -8                   ; 2 uses
  %i.jr = shl i32 %i.jk, %i.jq
  %i.js = or i32 %i.jr, 947912704
  %i.jt = shl nuw nsw i32 %i.jq, 23
  %i.ju = sub nuw i32 %i.js, %i.jt
  br label %half_to_float.exit335.i

half_to_float.exit335.i:                          ; preds = %bb.dw, %bb.dv, %bb.du, %bb.dt
  %.sroa.0.0.i.i334.i = phi i32 [ %i.jn, %bb.dt ], [ %i.jo, %bb.du ], [ %i.ju, %bb.dw ], [ 0, %bb.dv ]
  %i.jv = bitcast i32 %.sroa.0.0.i.i334.i to float
  %i.jw = fsub float %i.c, %i.jv                  ; 2 uses
  %i.jx = fcmp olt float %i.jw, %2
  br i1 %i.jx, label %bb.dx, label %bb.eg

bb.dx:                                            ; preds = %half_to_float.exit335.i
  br label %bb.eg

bb.dy:                                            ; preds = %bb.dq
  %i.jy = icmp eq i32 %.4236.i, %i.ji
  br i1 %i.jy, label %bb.dz, label %bb.eg

bb.dz:                                            ; preds = %bb.dy
  %i.jz = shl nuw nsw i32 %i.jf, 13               ; 4 uses
  %i.ka = icmp samesign ugt i32 %i.jf, 1023
  br i1 %i.ka, label %bb.ea, label %bb.ed, !prof !188

bb.ea:                                            ; preds = %bb.dz
  %i.kb = icmp samesign ult i32 %i.jf, 31744
  br i1 %i.kb, label %bb.eb, label %bb.ec, !prof !188

bb.eb:                                            ; preds = %bb.ea
  %i.kc = add nuw nsw i32 %i.jz, 939524096
  br label %half_to_float.exit338.i

bb.ec:                                            ; preds = %bb.ea
  %i.kd = or i32 %i.jz, 2139095040
  br label %half_to_float.exit338.i

bb.ed:                                            ; preds = %bb.dz
  %.not.i.i336.i = icmp eq i32 %i.jf, 0
  br i1 %.not.i.i336.i, label %half_to_float.exit338.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ke = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.jz, i1 true)
  %i.kf = add nsw i32 %i.ke, -8                   ; 2 uses
  %i.kg = shl i32 %i.jz, %i.kf
  %i.kh = or i32 %i.kg, 947912704
  %i.ki = shl nuw nsw i32 %i.kf, 23
  %i.kj = sub nuw i32 %i.kh, %i.ki
  br label %half_to_float.exit338.i

half_to_float.exit338.i:                          ; preds = %bb.ee, %bb.ed, %bb.ec, %bb.eb
  %.sroa.0.0.i.i337.i = phi i32 [ %i.kc, %bb.eb ], [ %i.kd, %bb.ec ], [ %i.kj, %bb.ee ], [ 0, %bb.ed ]
  %i.kk = bitcast i32 %.sroa.0.0.i.i337.i to float
  %i.kl = fsub float %i.c, %i.kk                  ; 2 uses
  %i.km = fcmp olt float %i.kl, %.4.i
  br i1 %i.km, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %half_to_float.exit338.i
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %half_to_float.exit338.i, %bb.dy, %bb.dx, %half_to_float.exit335.i
  %.5244.i = phi i32 [ %i.jf, %bb.dx ], [ %.4243.i, %half_to_float.exit335.i ], [ %i.jf, %bb.ef ], [ %.4243.i, %half_to_float.exit338.i ], [ %.4243.i, %bb.dy ] ; 3 uses
  %.5237.i = phi i32 [ %i.ji, %bb.dx ], [ %.4236.i, %half_to_float.exit335.i ], [ %i.ji, %bb.ef ], [ %i.ji, %half_to_float.exit338.i ], [ %.4236.i, %bb.dy ] ; 4 uses
  %.5.i = phi float [ %i.jw, %bb.dx ], [ %.4.i, %half_to_float.exit335.i ], [ %i.kl, %bb.ef ], [ %.4.i, %half_to_float.exit338.i ], [ %.4.i, %bb.dy ] ; 4 uses
  %i.kn = and i32 %i.ab, %i.b                     ; 11 uses
  %i.ko = trunc nuw nsw i32 %i.kn to i16
  %i.kp = tail call range(i16 0, 16) i16 @llvm.ctpop.i16(i16 range(i16 0, -28672) %i.ko)
  %i.kq = zext nneg i16 %i.kp to i32              ; 5 uses
  %i.kr = icmp samesign ugt i32 %.5237.i, %i.kq
  br i1 %i.kr, label %bb.eh, label %bb.eo

bb.eh:                                            ; preds = %bb.eg
  %i.ks = shl nuw nsw i32 %i.kn, 13               ; 4 uses
  %i.kt = icmp samesign ugt i32 %i.kn, 1023
  br i1 %i.kt, label %bb.ei, label %bb.el, !prof !188

bb.ei:                                            ; preds = %bb.eh
  %i.ku = icmp samesign ult i32 %i.kn, 31744
  br i1 %i.ku, label %bb.ej, label %bb.ek, !prof !188

bb.ej:                                            ; preds = %bb.ei
  %i.kv = add nuw nsw i32 %i.ks, 939524096
  br label %half_to_float.exit341.i

bb.ek:                                            ; preds = %bb.ei
  %i.kw = or i32 %i.ks, 2139095040
  br label %half_to_float.exit341.i

bb.el:                                            ; preds = %bb.eh
  %.not.i.i339.i = icmp eq i32 %i.kn, 0
  br i1 %.not.i.i339.i, label %half_to_float.exit341.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.kx = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ks, i1 true)
  %i.ky = add nsw i32 %i.kx, -8                   ; 2 uses
  %i.kz = shl i32 %i.ks, %i.ky
  %i.la = or i32 %i.kz, 947912704
  %i.lb = shl nuw nsw i32 %i.ky, 23
  %i.lc = sub nuw i32 %i.la, %i.lb
  br label %half_to_float.exit341.i

half_to_float.exit341.i:                          ; preds = %bb.em, %bb.el, %bb.ek, %bb.ej
  %.sroa.0.0.i.i340.i = phi i32 [ %i.kv, %bb.ej ], [ %i.kw, %bb.ek ], [ %i.lc, %bb.em ], [ 0, %bb.el ]
  %i.ld = bitcast i32 %.sroa.0.0.i.i340.i to float
  %i.le = fsub float %i.c, %i.ld                  ; 2 uses
  %i.lf = fcmp olt float %i.le, %2
  br i1 %i.lf, label %bb.en, label %bb.ew

bb.en:                                            ; preds = %half_to_float.exit341.i
  br label %bb.ew

bb.eo:                                            ; preds = %bb.eg
  %i.lg = icmp eq i32 %.5237.i, %i.kq
  br i1 %i.lg, label %bb.ep, label %bb.ew

bb.ep:                                            ; preds = %bb.eo
  %i.lh = shl nuw nsw i32 %i.kn, 13               ; 4 uses
  %i.li = icmp samesign ugt i32 %i.kn, 1023
  br i1 %i.li, label %bb.eq, label %bb.et, !prof !188

bb.eq:                                            ; preds = %bb.ep
  %i.lj = icmp samesign ult i32 %i.kn, 31744
  br i1 %i.lj, label %bb.er, label %bb.es, !prof !188

bb.er:                                            ; preds = %bb.eq
  %i.lk = add nuw nsw i32 %i.lh, 939524096
  br label %half_to_float.exit344.i

bb.es:                                            ; preds = %bb.eq
  %i.ll = or i32 %i.lh, 2139095040
  br label %half_to_float.exit344.i

bb.et:                                            ; preds = %bb.ep
  %.not.i.i342.i = icmp eq i32 %i.kn, 0
  br i1 %.not.i.i342.i, label %half_to_float.exit344.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.lm = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.lh, i1 true)
  %i.ln = add nsw i32 %i.lm, -8                   ; 2 uses
  %i.lo = shl i32 %i.lh, %i.ln
  %i.lp = or i32 %i.lo, 947912704
  %i.lq = shl nuw nsw i32 %i.ln, 23
  %i.lr = sub nuw i32 %i.lp, %i.lq
  br label %half_to_float.exit344.i

half_to_float.exit344.i:                          ; preds = %bb.eu, %bb.et, %bb.es, %bb.er
  %.sroa.0.0.i.i343.i = phi i32 [ %i.lk, %bb.er ], [ %i.ll, %bb.es ], [ %i.lr, %bb.eu ], [ 0, %bb.et ]
  %i.ls = bitcast i32 %.sroa.0.0.i.i343.i to float
  %i.lt = fsub float %i.c, %i.ls                  ; 2 uses
  %i.lu = fcmp olt float %i.lt, %.5.i
  br i1 %i.lu, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %half_to_float.exit344.i
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %half_to_float.exit344.i, %bb.eo, %bb.en, %half_to_float.exit341.i, %bb.cz, %half_to_float.exit326.i, %bb.cs, %bb.cr, %half_to_float.exit323.i, %bb.bc, %half_to_float.exit308.i, %bb.av, %bb.au, %half_to_float.exit305.i
  %.6245.i = phi i32 [ %i.cv, %bb.au ], [ %.1240.i, %half_to_float.exit305.i ], [ %i.cv, %bb.bc ], [ %.1240.i, %half_to_float.exit308.i ], [ %.1240.i, %bb.av ], [ %i.gu, %bb.cr ], [ %.3242.i, %half_to_float.exit323.i ], [ %i.gu, %bb.cz ], [ %.3242.i, %half_to_float.exit326.i ], [ %.3242.i, %bb.cs ], [ %i.kn, %bb.en ], [ %.5244.i, %half_to_float.exit341.i ], [ %i.kn, %bb.ev ], [ %.5244.i, %half_to_float.exit344.i ], [ %.5244.i, %bb.eo ] ; 3 uses
  %.6238.i = phi i32 [ %i.cy, %bb.au ], [ %.1233.i, %half_to_float.exit305.i ], [ %i.cy, %bb.bc ], [ %i.cy, %half_to_float.exit308.i ], [ %.1233.i, %bb.av ], [ %i.gx, %bb.cr ], [ %.3235.i, %half_to_float.exit323.i ], [ %.3235.i, %bb.cz ], [ %.3235.i, %half_to_float.exit326.i ], [ %.3235.i, %bb.cs ], [ %i.kq, %bb.en ], [ %.5237.i, %half_to_float.exit341.i ], [ %i.kq, %bb.ev ], [ %i.kq, %half_to_float.exit344.i ], [ %.5237.i, %bb.eo ] ; 2 uses
  %.6.i = phi float [ %i.dm, %bb.au ], [ %.1.i, %half_to_float.exit305.i ], [ %i.eb, %bb.bc ], [ %.1.i, %half_to_float.exit308.i ], [ %.1.i, %bb.av ], [ %i.hl, %bb.cr ], [ %.3.i, %half_to_float.exit323.i ], [ %i.ia, %bb.cz ], [ %.3.i, %half_to_float.exit326.i ], [ %.3.i, %bb.cs ], [ %i.le, %bb.en ], [ %.5.i, %half_to_float.exit341.i ], [ %i.lt, %bb.ev ], [ %.5.i, %half_to_float.exit344.i ], [ %.5.i, %bb.eo ]
  %i.lv = add nuw nsw i32 %i.t, %i.b
  %i.lw = and i32 %i.lv, %i.v                     ; 6 uses
  %i.lx = trunc nuw i32 %i.lw to i16
  %i.ly = tail call range(i16 0, 16) i16 @llvm.ctpop.i16(i16 range(i16 0, -28672) %i.lx)
  %i.lz = zext nneg i16 %i.ly to i32              ; 2 uses
  %i.ma = icmp samesign ugt i32 %.6238.i, %i.lz
  br i1 %i.ma, label %bb.ex, label %bb.fd

bb.ex:                                            ; preds = %bb.ew
  %i.mb = shl nuw nsw i32 %i.lw, 13
  %i.mc = and i32 %i.mb, 268427264                ; 6 uses
  %sext352.i = shl nuw i32 %i.lw, 16
  %i.md = and i32 %sext352.i, -2147483648         ; 3 uses
  %i.me = icmp samesign ugt i32 %i.mc, 8388607
  br i1 %i.me, label %bb.ey, label %bb.fb, !prof !188

bb.ey:                                            ; preds = %bb.ex
  %i.mf = or disjoint i32 %i.mc, %i.md            ; 2 uses
  %i.mg = icmp samesign ult i32 %i.mc, 260046848
  br i1 %i.mg, label %bb.ez, label %bb.fa, !prof !188

bb.ez:                                            ; preds = %bb.ey
  %i.mh = add nuw nsw i32 %i.mf, 939524096
  br label %half_to_float.exit347.i

bb.fa:                                            ; preds = %bb.ey
  %i.mi = or i32 %i.mf, 2139095040
  br label %half_to_float.exit347.i

bb.fb:                                            ; preds = %bb.ex
  %.not.i.i345.i = icmp eq i32 %i.mc, 0
  br i1 %.not.i.i345.i, label %half_to_float.exit347.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.mj = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.mc, i1 true)
  %i.mk = add nsw i32 %i.mj, -8                   ; 2 uses
  %i.ml = shl i32 %i.mc, %i.mk
  %i.mm = or i32 %i.md, %i.ml
  %i.mn = or i32 %i.mm, 947912704
  %i.mo = shl nuw nsw i32 %i.mk, 23
  %i.mp = sub nuw i32 %i.mn, %i.mo
  br label %half_to_float.exit347.i

half_to_float.exit347.i:                          ; preds = %bb.fc, %bb.fb, %bb.fa, %bb.ez
  %.sroa.0.0.i.i346.i = phi i32 [ %i.mh, %bb.ez ], [ %i.mi, %bb.fa ], [ %i.mp, %bb.fc ], [ %i.md, %bb.fb ]
  %i.mq = bitcast i32 %.sroa.0.0.i.i346.i to float
  %i.mr = fsub float %i.mq, %i.c
  %i.ms = fcmp olt float %i.mr, %2
  br i1 %i.ms, label %4, label %handleQuantizeGeneric.exit

bb.fd:                                            ; preds = %bb.ew
  %i.mt = icmp eq i32 %.6238.i, %i.lz
  br i1 %i.mt, label %bb.fe, label %handleQuantizeGeneric.exit

bb.fe:                                            ; preds = %bb.fd
  %i.mu = shl nuw nsw i32 %i.lw, 13
  %i.mv = and i32 %i.mu, 268427264                ; 6 uses
  %sext.i = shl nuw i32 %i.lw, 16
  %i.mw = and i32 %sext.i, -2147483648            ; 3 uses
  %i.mx = icmp samesign ugt i32 %i.mv, 8388607
  br i1 %i.mx, label %bb.ff, label %bb.fi, !prof !188

bb.ff:                                            ; preds = %bb.fe
  %i.my = or disjoint i32 %i.mv, %i.mw            ; 2 uses
  %i.mz = icmp samesign ult i32 %i.mv, 260046848
  br i1 %i.mz, label %bb.fg, label %bb.fh, !prof !188

bb.fg:                                            ; preds = %bb.ff
  %i.na = add nuw nsw i32 %i.my, 939524096
  br label %half_to_float.exit351.i

bb.fh:                                            ; preds = %bb.ff
  %i.nb = or i32 %i.my, 2139095040
  br label %half_to_float.exit351.i

bb.fi:                                            ; preds = %bb.fe
  %.not.i.i349.i = icmp eq i32 %i.mv, 0
  br i1 %.not.i.i349.i, label %half_to_float.exit351.i, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.nc = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.mv, i1 true)
  %i.nd = add nsw i32 %i.nc, -8                   ; 2 uses
  %i.ne = shl i32 %i.mv, %i.nd
  %i.nf = or i32 %i.mw, %i.ne
  %i.ng = or i32 %i.nf, 947912704
  %i.nh = shl nuw nsw i32 %i.nd, 23
  %i.ni = sub nuw i32 %i.ng, %i.nh
  br label %half_to_float.exit351.i

half_to_float.exit351.i:                          ; preds = %bb.fj, %bb.fi, %bb.fh, %bb.fg
  %.sroa.0.0.i.i350.i = phi i32 [ %i.na, %bb.fg ], [ %i.nb, %bb.fh ], [ %i.ni, %bb.fj ], [ %i.mw, %bb.fi ]
  %i.nj = bitcast i32 %.sroa.0.0.i.i350.i to float
  %i.nk = fsub float %i.nj, %i.c
  %i.nl = fcmp olt float %i.nk, %.6.i
  br i1 %i.nl, label %4, label %handleQuantizeGeneric.exit

4:                                                ; preds = %half_to_float.exit351.i, %half_to_float.exit347.i
  br label %handleQuantizeGeneric.exit

handleQuantizeGeneric.exit:                       ; preds = %half_to_float.exit347.i, %bb.fd, %half_to_float.exit351.i, %4
  %.7.i = phi i32 [ %.6245.i, %bb.fd ], [ %.6245.i, %half_to_float.exit347.i ], [ %i.lw, %4 ], [ %.6245.i, %half_to_float.exit351.i ]
  %i.nm = or i32 %.7.i, %i.a
  br label %bb.oj

bb.fk:                                            ; preds = %bb.e
  br i1 %i.q, label %bb.oj, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.nn = lshr i32 %i.k, %i.j
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.nn, i32 1)
  %i.no = tail call range(i32 21, 32) i32 @llvm.ctlz.i32(i32 range(i32 0, 256) %spec.store.select, i1 true)
  %i.np = sub nuw nsw i32 32, %i.no               ; 2 uses
  %i.nq = shl nuw nsw i32 1, %i.np                ; 3 uses
  %i.nr = sub nsw i32 0, %i.nq                    ; 4 uses
  %i.ns = xor i32 %i.nq, %i.nr
  %i.nt = and i32 %i.ns, %i.b                     ; 11 uses
  %i.nu = trunc nuw nsw i32 %i.nt to i16
  %i.nv = insertelement <2 x i16> poison, i16 %i.nu, i64 0
  %i.nw = trunc nuw nsw i32 %i.b to i16
  %i.nx = insertelement <2 x i16> %i.nv, i16 %i.nw, i64 1
  %i.ny = tail call range(i16 0, 16) <2 x i16> @llvm.ctpop.v2i16(<2 x i16> %i.nx) ; 2 uses
  %i.nz = extractelement <2 x i16> %i.ny, i64 1   ; 6 uses
  %i.oa = extractelement <2 x i16> %i.ny, i64 0   ; 3 uses
  %i.ob = icmp samesign ult i16 %i.oa, %i.nz
  br i1 %i.ob, label %bb.fm, label %bb.ft

bb.fm:                                            ; preds = %bb.fl
  %i.oc = shl nuw nsw i32 %i.nt, 13               ; 4 uses
  %i.od = icmp samesign ugt i32 %i.nt, 1023
  br i1 %i.od, label %bb.fn, label %bb.fq, !prof !188

bb.fn:                                            ; preds = %bb.fm
  %i.oe = icmp samesign ult i32 %i.nt, 31744
  br i1 %i.oe, label %bb.fo, label %bb.fp, !prof !188

bb.fo:                                            ; preds = %bb.fn
  %i.of = add nuw nsw i32 %i.oc, 939524096
  br label %half_to_float.exit.i71

bb.fp:                                            ; preds = %bb.fn
  %i.og = or i32 %i.oc, 2139095040
  br label %half_to_float.exit.i71

bb.fq:                                            ; preds = %bb.fm
  %.not.i.i.i70 = icmp eq i32 %i.nt, 0
  br i1 %.not.i.i.i70, label %half_to_float.exit.i71, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.oh = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.oc, i1 true)
  %i.oi = add nsw i32 %i.oh, -8                   ; 2 uses
  %i.oj = shl i32 %i.oc, %i.oi
  %i.ok = or i32 %i.oj, 947912704
  %i.ol = shl nuw nsw i32 %i.oi, 23
  %i.om = sub nuw i32 %i.ok, %i.ol
  br label %half_to_float.exit.i71

half_to_float.exit.i71:                           ; preds = %bb.fr, %bb.fq, %bb.fp, %bb.fo
  %.sroa.0.0.i.i.i72 = phi i32 [ %i.of, %bb.fo ], [ %i.og, %bb.fp ], [ %i.om, %bb.fr ], [ 0, %bb.fq ]
  %i.on = bitcast i32 %.sroa.0.0.i.i.i72 to float
  %i.oo = fsub float %i.c, %i.on                  ; 2 uses
  %i.op = fcmp olt float %i.oo, %2
  br i1 %i.op, label %bb.fs, label %bb.gb

bb.fs:                                            ; preds = %half_to_float.exit.i71
  br label %bb.gb

bb.ft:                                            ; preds = %bb.fl
  %i.oq = icmp eq i16 %i.oa, %i.nz
  br i1 %i.oq, label %bb.fu, label %bb.gb

bb.fu:                                            ; preds = %bb.ft
  %i.or = shl nuw nsw i32 %i.nt, 13               ; 4 uses
  %i.os = icmp samesign ugt i32 %i.nt, 1023
  br i1 %i.os, label %bb.fv, label %bb.fy, !prof !188

bb.fv:                                            ; preds = %bb.fu
  %i.ot = icmp samesign ult i32 %i.nt, 31744
  br i1 %i.ot, label %bb.fw, label %bb.fx, !prof !188

bb.fw:                                            ; preds = %bb.fv
  %i.ou = add nuw nsw i32 %i.or, 939524096
  br label %half_to_float.exit120.i

bb.fx:                                            ; preds = %bb.fv
  %i.ov = or i32 %i.or, 2139095040
  br label %half_to_float.exit120.i

bb.fy:                                            ; preds = %bb.fu
  %.not.i.i118.i = icmp eq i32 %i.nt, 0
  br i1 %.not.i.i118.i, label %half_to_float.exit120.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ow = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.or, i1 true)
  %i.ox = add nsw i32 %i.ow, -8                   ; 2 uses
  %i.oy = shl i32 %i.or, %i.ox
  %i.oz = or i32 %i.oy, 947912704
  %i.pa = shl nuw nsw i32 %i.ox, 23
  %i.pb = sub nuw i32 %i.oz, %i.pa
  br label %half_to_float.exit120.i

half_to_float.exit120.i:                          ; preds = %bb.fz, %bb.fy, %bb.fx, %bb.fw
  %.sroa.0.0.i.i119.i = phi i32 [ %i.ou, %bb.fw ], [ %i.ov, %bb.fx ], [ %i.pb, %bb.fz ], [ 0, %bb.fy ]
  %i.pc = bitcast i32 %.sroa.0.0.i.i119.i to float
  %i.pd = fsub float %i.c, %i.pc                  ; 2 uses
  %i.pe = fcmp olt float %i.pd, %2
  br i1 %i.pe, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %half_to_float.exit120.i
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %half_to_float.exit120.i, %bb.ft, %bb.fs, %half_to_float.exit.i71
  %.098.i = phi i32 [ %i.nt, %bb.fs ], [ %i.b, %half_to_float.exit.i71 ], [ %i.nt, %bb.ga ], [ %i.b, %half_to_float.exit120.i ], [ %i.b, %bb.ft ] ; 3 uses
  %.095.in.i = phi i16 [ %i.oa, %bb.fs ], [ %i.nz, %half_to_float.exit.i71 ], [ %i.nz, %bb.ga ], [ %i.nz, %half_to_float.exit120.i ], [ %i.nz, %bb.ft ] ; 6 uses
  %.0.i65 = phi float [ %i.oo, %bb.fs ], [ %2, %half_to_float.exit.i71 ], [ %i.pd, %bb.ga ], [ %2, %half_to_float.exit120.i ], [ %2, %bb.ft ] ; 4 uses
  %i.pf = and i32 %i.b, %i.nr                     ; 11 uses
  %i.pg = trunc nuw nsw i32 %i.pf to i16
  %i.ph = tail call range(i16 0, 15) i16 @llvm.ctpop.i16(i16 range(i16 0, -28672) %i.pg) ; 3 uses
  %i.pi = icmp samesign ult i16 %i.ph, %.095.in.i
  br i1 %i.pi, label %bb.gc, label %bb.gj

bb.gc:                                            ; preds = %bb.gb
  %i.pj = shl nuw nsw i32 %i.pf, 13               ; 4 uses
  %i.pk = icmp samesign ugt i32 %i.pf, 1023
  br i1 %i.pk, label %bb.gd, label %bb.gg, !prof !188

bb.gd:                                            ; preds = %bb.gc
  %i.pl = icmp samesign ult i32 %i.pf, 31744
  br i1 %i.pl, label %bb.ge, label %bb.gf, !prof !188

bb.ge:                                            ; preds = %bb.gd
  %i.pm = add nuw nsw i32 %i.pj, 939524096
  br label %half_to_float.exit123.i

bb.gf:                                            ; preds = %bb.gd
  %i.pn = or i32 %i.pj, 2139095040
  br label %half_to_float.exit123.i

bb.gg:                                            ; preds = %bb.gc
  %.not.i.i121.i = icmp eq i32 %i.pf, 0
  br i1 %.not.i.i121.i, label %half_to_float.exit123.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.po = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.pj, i1 true)
  %i.pp = add nsw i32 %i.po, -8                   ; 2 uses
  %i.pq = shl i32 %i.pj, %i.pp
  %i.pr = or i32 %i.pq, 947912704
  %i.ps = shl nuw nsw i32 %i.pp, 23
  %i.pt = sub nuw i32 %i.pr, %i.ps
  br label %half_to_float.exit123.i

half_to_float.exit123.i:                          ; preds = %bb.gh, %bb.gg, %bb.gf, %bb.ge
  %.sroa.0.0.i.i122.i = phi i32 [ %i.pm, %bb.ge ], [ %i.pn, %bb.gf ], [ %i.pt, %bb.gh ], [ 0, %bb.gg ]
  %i.pu = bitcast i32 %.sroa.0.0.i.i122.i to float
  %i.pv = fsub float %i.c, %i.pu                  ; 2 uses
  %i.pw = fcmp olt float %i.pv, %2
  br i1 %i.pw, label %bb.gi, label %bb.gr

bb.gi:                                            ; preds = %half_to_float.exit123.i
  br label %bb.gr

bb.gj:                                            ; preds = %bb.gb
  %i.px = icmp eq i16 %i.ph, %.095.in.i
  br i1 %i.px, label %bb.gk, label %bb.gr

bb.gk:                                            ; preds = %bb.gj
  %i.py = shl nuw nsw i32 %i.pf, 13               ; 4 uses
  %i.pz = icmp samesign ugt i32 %i.pf, 1023
  br i1 %i.pz, label %bb.gl, label %bb.go, !prof !188

bb.gl:                                            ; preds = %bb.gk
  %i.qa = icmp samesign ult i32 %i.pf, 31744
  br i1 %i.qa, label %bb.gm, label %bb.gn, !prof !188

bb.gm:                                            ; preds = %bb.gl
  %i.qb = add nuw nsw i32 %i.py, 939524096
  br label %half_to_float.exit126.i

bb.gn:                                            ; preds = %bb.gl
  %i.qc = or i32 %i.py, 2139095040
  br label %half_to_float.exit126.i

bb.go:                                            ; preds = %bb.gk
  %.not.i.i124.i = icmp eq i32 %i.pf, 0
  br i1 %.not.i.i124.i, label %half_to_float.exit126.i, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.qd = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.py, i1 true)
  %i.qe = add nsw i32 %i.qd, -8                   ; 2 uses
  %i.qf = shl i32 %i.py, %i.qe
  %i.qg = or i32 %i.qf, 947912704
  %i.qh = shl nuw nsw i32 %i.qe, 23
  %i.qi = sub nuw i32 %i.qg, %i.qh
  br label %half_to_float.exit126.i

half_to_float.exit126.i:                          ; preds = %bb.gp, %bb.go, %bb.gn, %bb.gm
  %.sroa.0.0.i.i125.i = phi i32 [ %i.qb, %bb.gm ], [ %i.qc, %bb.gn ], [ %i.qi, %bb.gp ], [ 0, %bb.go ]
  %i.qj = bitcast i32 %.sroa.0.0.i.i125.i to float
  %i.qk = fsub float %i.c, %i.qj                  ; 2 uses
  %i.ql = fcmp olt float %i.qk, %.0.i65
  br i1 %i.ql, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %half_to_float.exit126.i
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %half_to_float.exit126.i, %bb.gj, %bb.gi, %half_to_float.exit123.i
  %.199.i = phi i32 [ %i.pf, %bb.gi ], [ %.098.i, %half_to_float.exit123.i ], [ %i.pf, %bb.gq ], [ %.098.i, %half_to_float.exit126.i ], [ %.098.i, %bb.gj ] ; 3 uses
  %.196.in.i = phi i16 [ %i.ph, %bb.gi ], [ %.095.in.i, %half_to_float.exit123.i ], [ %.095.in.i, %bb.gq ], [ %.095.in.i, %half_to_float.exit126.i ], [ %.095.in.i, %bb.gj ] ; 6 uses
  %.1.i66 = phi float [ %i.pv, %bb.gi ], [ %.0.i65, %half_to_float.exit123.i ], [ %i.qk, %bb.gq ], [ %.0.i65, %half_to_float.exit126.i ], [ %.0.i65, %bb.gj ] ; 4 uses
  %i.qm = add nuw nsw i32 %i.nq, %i.b
  %i.qn = and i32 %i.qm, %i.nr                    ; 7 uses
  %i.qo = trunc nuw i32 %i.qn to i16
  %i.qp = tail call range(i16 0, 16) i16 @llvm.ctpop.i16(i16 range(i16 0, -28672) %i.qo) ; 3 uses
  %i.qq = icmp samesign ult i16 %i.qp, %.196.in.i
  br i1 %i.qq, label %bb.gs, label %bb.gz

bb.gs:                                            ; preds = %bb.gr
  %i.qr = shl nuw nsw i32 %i.qn, 13
  %i.qs = and i32 %i.qr, 268427264                ; 6 uses
  %sext142.i = shl nuw i32 %i.qn, 16
  %i.qt = and i32 %sext142.i, -2147483648         ; 3 uses
  %i.qu = icmp samesign ugt i32 %i.qs, 8388607
  br i1 %i.qu, label %bb.gt, label %bb.gw, !prof !188

bb.gt:                                            ; preds = %bb.gs
  %i.qv = or disjoint i32 %i.qs, %i.qt            ; 2 uses
  %i.qw = icmp samesign ult i32 %i.qs, 260046848
  br i1 %i.qw, label %bb.gu, label %bb.gv, !prof !188

bb.gu:                                            ; preds = %bb.gt
  %i.qx = add nuw nsw i32 %i.qv, 939524096
  br label %half_to_float.exit129.i

bb.gv:                                            ; preds = %bb.gt
  %i.qy = or i32 %i.qv, 2139095040
  br label %half_to_float.exit129.i

bb.gw:                                            ; preds = %bb.gs
  %.not.i.i127.i = icmp eq i32 %i.qs, 0
  br i1 %.not.i.i127.i, label %half_to_float.exit129.i, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.qz = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.qs, i1 true)
  %i.ra = add nsw i32 %i.qz, -8                   ; 2 uses
  %i.rb = shl i32 %i.qs, %i.ra
  %i.rc = or i32 %i.qt, %i.rb
  %i.rd = or i32 %i.rc, 947912704
  %i.re = shl nuw nsw i32 %i.ra, 23
  %i.rf = sub nuw i32 %i.rd, %i.re
  br label %half_to_float.exit129.i

half_to_float.exit129.i:                          ; preds = %bb.gx, %bb.gw, %bb.gv, %bb.gu
  %.sroa.0.0.i.i128.i = phi i32 [ %i.qx, %bb.gu ], [ %i.qy, %bb.gv ], [ %i.rf, %bb.gx ], [ %i.qt, %bb.gw ]
  %i.rg = bitcast i32 %.sroa.0.0.i.i128.i to float
  %i.rh = fsub float %i.rg, %i.c                  ; 2 uses
  %i.ri = fcmp olt float %i.rh, %2
  br i1 %i.ri, label %bb.gy, label %bb.hh

bb.gy:                                            ; preds = %half_to_float.exit129.i
  br label %bb.hh

bb.gz:                                            ; preds = %bb.gr
  %i.rj = icmp eq i16 %i.qp, %.196.in.i
  br i1 %i.rj, label %bb.ha, label %bb.hh

bb.ha:                                            ; preds = %bb.gz
  %i.rk = shl nuw nsw i32 %i.qn, 13
  %i.rl = and i32 %i.rk, 268427264                ; 6 uses
  %sext.i69 = shl nuw i32 %i.qn, 16
  %i.rm = and i32 %sext.i69, -2147483648          ; 3 uses
  %i.rn = icmp samesign ugt i32 %i.rl, 8388607
  br i1 %i.rn, label %bb.hb, label %bb.he, !prof !188

bb.hb:                                            ; preds = %bb.ha
  %i.ro = or disjoint i32 %i.rl, %i.rm            ; 2 uses
  %i.rp = icmp samesign ult i32 %i.rl, 260046848
  br i1 %i.rp, label %bb.hc, label %bb.hd, !prof !188

bb.hc:                                            ; preds = %bb.hb
  %i.rq = add nuw nsw i32 %i.ro, 939524096
  br label %half_to_float.exit133.i.a

bb.hd:                                            ; preds = %bb.hb
  %i.rr = or i32 %i.ro, 2139095040
  br label %half_to_float.exit133.i.a

bb.he:                                            ; preds = %bb.ha
  %.not.i.i131.i = icmp eq i32 %i.rl, 0
  br i1 %.not.i.i131.i, label %half_to_float.exit133.i.a, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.rs = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.rl, i1 true)
  %i.rt = add nsw i32 %i.rs, -8                   ; 2 uses
  %i.ru = shl i32 %i.rl, %i.rt
  %i.rv = or i32 %i.rm, %i.ru
  %i.rw = or i32 %i.rv, 947912704
  %i.rx = shl nuw nsw i32 %i.rt, 23
  %i.ry = sub nuw i32 %i.rw, %i.rx
  br label %half_to_float.exit133.i.a

half_to_float.exit133.i.a:                        ; preds = %bb.hf, %bb.he, %bb.hd, %bb.hc
  %.sroa.0.0.i.i132.i.a = phi i32 [ %i.rq, %bb.hc ], [ %i.rr, %bb.hd ], [ %i.ry, %bb.hf ], [ %i.rm, %bb.he ]
  %i.rz = bitcast i32 %.sroa.0.0.i.i132.i.a to float
  %i.sa = fsub float %i.rz, %i.c                  ; 2 uses
  %i.sb = fcmp olt float %i.sa, %.1.i66
  br i1 %i.sb, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %half_to_float.exit133.i.a
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %half_to_float.exit133.i.a, %bb.gz, %bb.gy, %half_to_float.exit129.i
  %.2100.i = phi i32 [ %i.qn, %bb.gy ], [ %.199.i, %half_to_float.exit129.i ], [ %i.qn, %bb.hg ], [ %.199.i, %half_to_float.exit133.i.a ], [ %.199.i, %bb.gz ] ; 3 uses
  %.297.in.i = phi i16 [ %i.qp, %bb.gy ], [ %.196.in.i, %half_to_float.exit129.i ], [ %.196.in.i, %bb.hg ], [ %.196.in.i, %half_to_float.exit133.i.a ], [ %.196.in.i, %bb.gz ] ; 2 uses
  %.2.i67 = phi float [ %i.rh, %bb.gy ], [ %.1.i66, %half_to_float.exit129.i ], [ %i.sa, %bb.hg ], [ %.1.i66, %half_to_float.exit133.i.a ], [ %.1.i66, %bb.gz ]
  %i.sc = shl nuw nsw i32 2, %i.np
  %i.sd = add nuw nsw i32 %i.sc, %i.b
  %i.se = and i32 %i.sd, %i.nr                    ; 6 uses
  %i.sf = trunc nuw i32 %i.se to i16
  %i.sg = tail call range(i16 0, 16) i16 @llvm.ctpop.i16(i16 range(i16 0, -28672) %i.sf) ; 2 uses
  %i.sh = icmp samesign ult i16 %i.sg, %.297.in.i
  br i1 %i.sh, label %bb.hi, label %bb.ho

bb.hi:                                            ; preds = %bb.hh
  %i.si = shl nuw nsw i32 %i.se, 13
  %i.sj = and i32 %i.si, 268427264                ; 6 uses
  %sext144.i.a = shl nuw i32 %i.se, 16
  %i.sk = and i32 %sext144.i.a, -2147483648       ; 3 uses
  %i.sl = icmp samesign ugt i32 %i.sj, 8388607
  br i1 %i.sl, label %bb.hj, label %bb.hm, !prof !188

bb.hj:                                            ; preds = %bb.hi
  %i.sm = or disjoint i32 %i.sj, %i.sk            ; 2 uses
  %i.sn = icmp samesign ult i32 %i.sj, 260046848
  br i1 %i.sn, label %bb.hk, label %bb.hl, !prof !188

bb.hk:                                            ; preds = %bb.hj
  %i.so = add nuw nsw i32 %i.sm, 939524096
  br label %half_to_float.exit137.i

bb.hl:                                            ; preds = %bb.hj
  %i.sp = or i32 %i.sm, 2139095040
  br label %half_to_float.exit137.i

bb.hm:                                            ; preds = %bb.hi
  %.not.i.i135.i = icmp eq i32 %i.sj, 0
  br i1 %.not.i.i135.i, label %half_to_float.exit137.i, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.sq = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.sj, i1 true)
  %i.sr = add nsw i32 %i.sq, -8                   ; 2 uses
  %i.ss = shl i32 %i.sj, %i.sr
  %i.st = or i32 %i.sk, %i.ss
  %i.su = or i32 %i.st, 947912704
  %i.sv = shl nuw nsw i32 %i.sr, 23
  %i.sw = sub nuw i32 %i.su, %i.sv
  br label %half_to_float.exit137.i

half_to_float.exit137.i:                          ; preds = %bb.hn, %bb.hm, %bb.hl, %bb.hk
  %.sroa.0.0.i.i136.i = phi i32 [ %i.so, %bb.hk ], [ %i.sp, %bb.hl ], [ %i.sw, %bb.hn ], [ %i.sk, %bb.hm ]
  %i.sx = bitcast i32 %.sroa.0.0.i.i136.i to float
  %i.sy = fsub float %i.sx, %i.c
  %i.sz = fcmp olt float %i.sy, %2
  br i1 %i.sz, label %5, label %handleQuantizeDenormTol.exit

bb.ho:                                            ; preds = %bb.hh
  %i.ta = icmp eq i16 %i.sg, %.297.in.i
  br i1 %i.ta, label %bb.hp, label %handleQuantizeDenormTol.exit

bb.hp:                                            ; preds = %bb.ho
  %i.tb = shl nuw nsw i32 %i.se, 13
  %i.tc = and i32 %i.tb, 268427264                ; 6 uses
  %sext143.i = shl nuw i32 %i.se, 16
  %i.td = and i32 %sext143.i, -2147483648         ; 3 uses
  %i.te = icmp samesign ugt i32 %i.tc, 8388607
  br i1 %i.te, label %bb.hq, label %bb.ht, !prof !188

bb.hq:                                            ; preds = %bb.hp
  %i.tf = or disjoint i32 %i.tc, %i.td            ; 2 uses
  %i.tg = icmp samesign ult i32 %i.tc, 260046848
  br i1 %i.tg, label %bb.hr, label %bb.hs, !prof !188

bb.hr:                                            ; preds = %bb.hq
  %i.th = add nuw nsw i32 %i.tf, 939524096
  br label %half_to_float.exit141.i

bb.hs:                                            ; preds = %bb.hq
  %i.ti = or i32 %i.tf, 2139095040
  br label %half_to_float.exit141.i

bb.ht:                                            ; preds = %bb.hp
  %.not.i.i139.i = icmp eq i32 %i.tc, 0
  br i1 %.not.i.i139.i, label %half_to_float.exit141.i, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.tj = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.tc, i1 true)
  %i.tk = add nsw i32 %i.tj, -8                   ; 2 uses
  %i.tl = shl i32 %i.tc, %i.tk
  %i.tm = or i32 %i.td, %i.tl
  %i.tn = or i32 %i.tm, 947912704
  %i.to = shl nuw nsw i32 %i.tk, 23
  %i.tp = sub nuw i32 %i.tn, %i.to
  br label %half_to_float.exit141.i

half_to_float.exit141.i:                          ; preds = %bb.hu, %bb.ht, %bb.hs, %bb.hr
  %.sroa.0.0.i.i140.i = phi i32 [ %i.th, %bb.hr ], [ %i.ti, %bb.hs ], [ %i.tp, %bb.hu ], [ %i.td, %bb.ht ]
  %i.tq = bitcast i32 %.sroa.0.0.i.i140.i to float
  %i.tr = fsub float %i.tq, %i.c
  %i.ts = fcmp olt float %i.tr, %.2.i67
  br i1 %i.ts, label %5, label %handleQuantizeDenormTol.exit

5:                                                ; preds = %half_to_float.exit141.i, %half_to_float.exit137.i
  br label %handleQuantizeDenormTol.exit

handleQuantizeDenormTol.exit:                     ; preds = %half_to_float.exit137.i, %bb.ho, %half_to_float.exit141.i, %5
  %.3.i68 = phi i32 [ %.2100.i, %bb.ho ], [ %.2100.i, %half_to_float.exit137.i ], [ %i.se, %5 ], [ %.2100.i, %half_to_float.exit141.i ]
  %i.tt = or i32 %.3.i68, %i.a
  br label %bb.oj

bb.hv:                                            ; preds = %bb.d
  %i.tu = icmp eq i32 %i.m, 0
  br i1 %i.tu, label %bb.oj, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.tv = icmp ugt i32 %i.i, 1024
  %i.tw = icmp eq i32 %i.d, 0
  %or.cond3 = or i1 %i.tw, %i.tv
  br i1 %or.cond3, label %bb.hx, label %bb.mi

bb.hx:                                            ; preds = %bb.hw
  %i.tx = tail call range(i32 21, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 2048) %i.m, i1 true)
  %i.ty = sub nuw nsw i32 32, %i.tx
  %i.tz = shl nuw nsw i32 1, %i.ty                ; 8 uses
  %i.ua = add nuw nsw i32 %i.tz, 32767
  %i.ub = sub nsw i32 0, %i.tz                    ; 5 uses
  %i.uc = and i32 %i.ua, %i.b                     ; 2 uses
  %i.ud = icmp samesign ugt i32 %i.uc, %i.m
  br i1 %i.ud, label %bb.hy, label %bb.jl

bb.hy:                                            ; preds = %bb.hx
  %i.ue = lshr exact i32 %i.tz, 1
  %i.uf = or i32 %i.ue, %i.tz
  %i.ug = xor i32 %i.uf, %i.ub
  %i.uh = add nuw nsw i32 %i.tz, %i.b             ; 4 uses
  %i.ui = and i32 %i.ug, %i.b                     ; 14 uses
  %i.uj = and i32 %i.uh, %i.ub                    ; 8 uses
  %i.uk = trunc nuw nsw i32 %i.ui to i16
  %i.ul = trunc i32 %i.uj to i16
  %i.um = insertelement <2 x i16> poison, i16 %i.ul, i64 0
  %i.un = insertelement <2 x i16> %i.um, i16 %i.uk, i64 1
  %i.uo = tail call range(i16 0, 17) <2 x i16> @llvm.ctpop.v2i16(<2 x i16> %i.un) ; 2 uses
  %i.up = extractelement <2 x i16> %i.uo, i64 0   ; 3 uses
  %i.uq = extractelement <2 x i16> %i.uo, i64 1   ; 2 uses
  %i.ur = icmp samesign ult i16 %i.up, %i.uq
  br i1 %i.ur, label %bb.hz, label %bb.il

bb.hz:                                            ; preds = %bb.hy
  %i.us = shl nuw nsw i32 %i.uj, 13
  %i.ut = and i32 %i.us, 268427264                ; 6 uses
  %sext86.i.i = shl nuw i32 %i.uh, 16
  %i.uu = and i32 %sext86.i.i, -2147483648        ; 3 uses
  %i.uv = icmp samesign ugt i32 %i.ut, 8388607
  br i1 %i.uv, label %bb.ia, label %bb.id, !prof !188

bb.ia:                                            ; preds = %bb.hz
  %i.uw = or disjoint i32 %i.ut, %i.uu            ; 2 uses
  %i.ux = icmp samesign ult i32 %i.ut, 260046848
  br i1 %i.ux, label %bb.ib, label %bb.ic, !prof !188

bb.ib:                                            ; preds = %bb.ia
  %i.uy = add nuw nsw i32 %i.uw, 939524096
  br label %half_to_float.exit.i.i

bb.ic:                                            ; preds = %bb.ia
  %i.uz = or i32 %i.uw, 2139095040
  br label %half_to_float.exit.i.i

bb.id:                                            ; preds = %bb.hz
  %.not.i.i.i.i = icmp eq i32 %i.ut, 0
  br i1 %.not.i.i.i.i, label %half_to_float.exit.i.i, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.va = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.ut, i1 true)
  %i.vb = add nsw i32 %i.va, -8                   ; 2 uses
  %i.vc = shl i32 %i.ut, %i.vb
  %i.vd = or i32 %i.uu, %i.vc
  %i.ve = or i32 %i.vd, 947912704
  %i.vf = shl nuw nsw i32 %i.vb, 23
  %i.vg = sub nuw i32 %i.ve, %i.vf
  br label %half_to_float.exit.i.i

half_to_float.exit.i.i:                           ; preds = %bb.ie, %bb.id, %bb.ic, %bb.ib
  %.sroa.0.0.i.i.i.i = phi i32 [ %i.uy, %bb.ib ], [ %i.uz, %bb.ic ], [ %i.vg, %bb.ie ], [ %i.uu, %bb.id ]
  %i.vh = bitcast i32 %.sroa.0.0.i.i.i.i to float
  %i.vi = fsub float %i.vh, %i.c
  %i.vj = fcmp olt float %i.vi, %2
  br i1 %i.vj, label %handleQuantizeDefault.exit, label %bb.if

bb.if:                                            ; preds = %half_to_float.exit.i.i
  %i.vk = shl nuw nsw i32 %i.ui, 13               ; 4 uses
  %i.vl = icmp samesign ugt i32 %i.ui, 1023
  br i1 %i.vl, label %bb.ig, label %bb.ij, !prof !188

bb.ig:                                            ; preds = %bb.if
  %i.vm = icmp samesign ult i32 %i.ui, 31744
  br i1 %i.vm, label %bb.ih, label %bb.ii, !prof !188

bb.ih:                                            ; preds = %bb.ig
  %i.vn = add nuw nsw i32 %i.vk, 939524096
  br label %half_to_float.exit66.i.i

bb.ii:                                            ; preds = %bb.ig
  %i.vo = or i32 %i.vk, 2139095040
  br label %half_to_float.exit66.i.i

bb.ij:                                            ; preds = %bb.if
  %.not.i.i64.i.i = icmp eq i32 %i.ui, 0
  br i1 %.not.i.i64.i.i, label %half_to_float.exit66.i.i, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.vp = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.vk, i1 true)
  %i.vq = add nsw i32 %i.vp, -8                   ; 2 uses
  %i.vr = shl i32 %i.vk, %i.vq
  %i.vs = or i32 %i.vr, 947912704
  %i.vt = shl nuw nsw i32 %i.vq, 23
  %i.vu = sub nuw i32 %i.vs, %i.vt
  br label %half_to_float.exit66.i.i

half_to_float.exit66.i.i:                         ; preds = %bb.ik, %bb.ij, %bb.ii, %bb.ih
  %.sroa.0.0.i.i65.i.i = phi i32 [ %i.vn, %bb.ih ], [ %i.vo, %bb.ii ], [ %i.vu, %bb.ik ], [ 0, %bb.ij ]
  %i.vv = bitcast i32 %.sroa.0.0.i.i65.i.i to float
  %i.vw = fsub float %i.c, %i.vv
  %i.vx = fcmp olt float %i.vw, %2
  br i1 %i.vx, label %handleQuantizeDefault.exit, label %bb.ls

bb.il:                                            ; preds = %bb.hy
  %i.vy = icmp eq i16 %i.up, %i.uq
  %i.vz = shl nuw nsw i32 %i.ui, 13               ; 8 uses
  %i.wa = icmp samesign ugt i32 %i.ui, 1023       ; 2 uses
  br i1 %i.vy, label %bb.im, label %bb.iy

bb.im:                                            ; preds = %bb.il
  br i1 %i.wa, label %bb.in, label %bb.iq, !prof !188

bb.in:                                            ; preds = %bb.im
  %i.wb = icmp samesign ult i32 %i.ui, 31744
  br i1 %i.wb, label %bb.io, label %bb.ip, !prof !188

bb.io:                                            ; preds = %bb.in
  %i.wc = add nuw nsw i32 %i.vz, 939524096
  br label %half_to_float.exit70.i.i

bb.ip:                                            ; preds = %bb.in
  %i.wd = or i32 %i.vz, 2139095040
  br label %half_to_float.exit70.i.i

bb.iq:                                            ; preds = %bb.im
  %.not.i.i68.i.i = icmp eq i32 %i.ui, 0
  br i1 %.not.i.i68.i.i, label %half_to_float.exit70.i.i, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %i.we = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.vz, i1 true)
  %i.wf = add nsw i32 %i.we, -8                   ; 2 uses
  %i.wg = shl i32 %i.vz, %i.wf
  %i.wh = or i32 %i.wg, 947912704
  %i.wi = shl nuw nsw i32 %i.wf, 23
  %i.wj = sub nuw i32 %i.wh, %i.wi
  br label %half_to_float.exit70.i.i

half_to_float.exit70.i.i:                         ; preds = %bb.ir, %bb.iq, %bb.ip, %bb.io
  %.sroa.0.0.i.i69.i.i = phi i32 [ %i.wc, %bb.io ], [ %i.wd, %bb.ip ], [ %i.wj, %bb.ir ], [ 0, %bb.iq ]
  %i.wk = bitcast i32 %.sroa.0.0.i.i69.i.i to float
  %i.wl = fsub float %i.c, %i.wk                  ; 2 uses
  %i.wm = shl nuw nsw i32 %i.uj, 13
  %i.wn = and i32 %i.wm, 268427264                ; 6 uses
  %sext85.i.i = shl nuw i32 %i.uh, 16
  %i.wo = and i32 %sext85.i.i, -2147483648        ; 3 uses
  %i.wp = icmp samesign ugt i32 %i.wn, 8388607
  br i1 %i.wp, label %bb.is, label %bb.iv, !prof !188

bb.is:                                            ; preds = %half_to_float.exit70.i.i
  %i.wq = or disjoint i32 %i.wn, %i.wo            ; 2 uses
  %i.wr = icmp samesign ult i32 %i.wn, 260046848
  br i1 %i.wr, label %bb.it, label %bb.iu, !prof !188

bb.it:                                            ; preds = %bb.is
  %i.ws = add nuw nsw i32 %i.wq, 939524096
  br label %half_to_float.exit74.i.i

bb.iu:                                            ; preds = %bb.is
  %i.wt = or i32 %i.wq, 2139095040
  br label %half_to_float.exit74.i.i

bb.iv:                                            ; preds = %half_to_float.exit70.i.i
  %.not.i.i72.i.i = icmp eq i32 %i.wn, 0
  br i1 %.not.i.i72.i.i, label %half_to_float.exit74.i.i, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.wu = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.wn, i1 true)
  %i.wv = add nsw i32 %i.wu, -8                   ; 2 uses
  %i.ww = shl i32 %i.wn, %i.wv
  %i.wx = or i32 %i.wo, %i.ww
  %i.wy = or i32 %i.wx, 947912704
  %i.wz = shl nuw nsw i32 %i.wv, 23
  %i.xa = sub nuw i32 %i.wy, %i.wz
  br label %half_to_float.exit74.i.i

half_to_float.exit74.i.i:                         ; preds = %bb.iw, %bb.iv, %bb.iu, %bb.it
  %.sroa.0.0.i.i73.i.i = phi i32 [ %i.ws, %bb.it ], [ %i.wt, %bb.iu ], [ %i.xa, %bb.iw ], [ %i.wo, %bb.iv ]
  %i.xb = bitcast i32 %.sroa.0.0.i.i73.i.i to float
  %i.xc = fsub float %i.xb, %i.c                  ; 2 uses
  %i.xd = fcmp olt float %i.wl, %2
  br i1 %i.xd, label %.thread.i.i, label %bb.ix

.thread.i.i:                                      ; preds = %half_to_float.exit74.i.i
  %i.xe = fcmp olt float %i.xc, %i.wl
end_hunk_1
begin_hunk_2_@algoQuantize:bb.a
  br i1 %.not.i.i71.i.i, label %half_to_float.exit73.i.i, label %bb.lz

bb.lz:                                            ; preds = %bb.ly
  %i.afo = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.afh, i1 true)
  %i.afp = add nsw i32 %i.afo, -8                 ; 2 uses
  %i.afq = shl i32 %i.afh, %i.afp
  %i.afr = or i32 %i.afi, %i.afq
  %i.afs = or i32 %i.afr, 947912704
  %i.aft = shl nuw nsw i32 %i.afp, 23
  %i.afu = sub nuw i32 %i.afs, %i.aft
  br label %half_to_float.exit73.i.i

half_to_float.exit73.i.i:                         ; preds = %bb.lz, %bb.ly, %bb.lx, %bb.lw
  %.sroa.0.0.i.i72.i.i = phi i32 [ %i.afm, %bb.lw ], [ %i.afn, %bb.lx ], [ %i.afu, %bb.lz ], [ %i.afi, %bb.ly ]
  %i.afv = bitcast i32 %.sroa.0.0.i.i72.i.i to float
  %i.afw = fsub float %i.afv, %i.c
  %i.afx = fcmp uge float %i.afw, %2
  br i1 %i.afx, label %bb.mh, label %handleQuantizeDefault.exit

bb.ma:                                            ; preds = %bb.lt
  %i.afy = icmp eq i16 %i.afd, %i.afe
  br i1 %i.afy, label %bb.mb, label %bb.mh

bb.mb:                                            ; preds = %bb.ma
  %i.afz = shl nuw nsw i32 %i.yr, 13
  %i.aga = and i32 %i.afz, 268427264              ; 6 uses
  %sext79.i.i = shl nuw i32 %i.yq, 16
  %i.agb = and i32 %sext79.i.i, -2147483648       ; 3 uses
  %i.agc = icmp samesign ugt i32 %i.aga, 8388607
  br i1 %i.agc, label %bb.mc, label %bb.mf, !prof !188

bb.mc:                                            ; preds = %bb.mb
  %i.agd = or disjoint i32 %i.aga, %i.agb         ; 2 uses
  %i.age = icmp samesign ult i32 %i.aga, 260046848
  br i1 %i.age, label %bb.md, label %bb.me, !prof !188

bb.md:                                            ; preds = %bb.mc
  %i.agf = add nuw nsw i32 %i.agd, 939524096
  br label %half_to_float.exit77.i.i

bb.me:                                            ; preds = %bb.mc
  %i.agg = or i32 %i.agd, 2139095040
  br label %half_to_float.exit77.i.i

bb.mf:                                            ; preds = %bb.mb
  %.not.i.i75.i.i = icmp eq i32 %i.aga, 0
  br i1 %.not.i.i75.i.i, label %half_to_float.exit77.i.i, label %bb.mg

bb.mg:                                            ; preds = %bb.mf
  %i.agh = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.aga, i1 true)
  %i.agi = add nsw i32 %i.agh, -8                 ; 2 uses
  %i.agj = shl i32 %i.aga, %i.agi
  %i.agk = or i32 %i.agb, %i.agj
  %i.agl = or i32 %i.agk, 947912704
  %i.agm = shl nuw nsw i32 %i.agi, 23
  %i.agn = sub nuw i32 %i.agl, %i.agm
  br label %half_to_float.exit77.i.i

half_to_float.exit77.i.i:                         ; preds = %bb.mg, %bb.mf, %bb.me, %bb.md
  %.sroa.0.0.i.i76.i.i = phi i32 [ %i.agf, %bb.md ], [ %i.agg, %bb.me ], [ %i.agn, %bb.mg ], [ %i.agb, %bb.mf ]
  %i.ago = bitcast i32 %.sroa.0.0.i.i76.i.i to float
  %i.agp = fsub float %i.ago, %i.c
  %i.agq = fcmp uge float %i.agp, %.052.i.i
  br i1 %i.agq, label %bb.mh, label %handleQuantizeDefault.exit

bb.mh:                                            ; preds = %half_to_float.exit77.i.i, %bb.ma, %half_to_float.exit73.i.i
  br label %handleQuantizeDefault.exit

handleQuantizeDefault.exit:                       ; preds = %half_to_float.exit.i.i, %half_to_float.exit66.i.i, %.thread.i.i, %bb.ix, %half_to_float.exit78.i.i, %half_to_float.exit82.i.i, %half_to_float.exit.i32.i, %half_to_float.exit63.i.i, %.thread.i30.i, %bb.kl, %half_to_float.exit75.i.i, %half_to_float.exit79.i.i, %bb.lr, %bb.ls, %half_to_float.exit73.i.i, %half_to_float.exit77.i.i, %bb.mh
  %.0.i73 = phi i32 [ %i.abn, %.thread.i30.i ], [ %i.xf, %.thread.i.i ], [ %i.ui, %half_to_float.exit78.i.i ], [ %i.uj, %half_to_float.exit.i.i ], [ %i.yr, %bb.lr ], [ %i.uj, %bb.ix ], [ %i.ui, %half_to_float.exit66.i.i ], [ %i.uj, %half_to_float.exit82.i.i ], [ %i.yp, %half_to_float.exit75.i.i ], [ %i.yr, %half_to_float.exit.i32.i ], [ %i.b, %bb.ls ], [ %i.yr, %bb.kl ], [ %i.yp, %half_to_float.exit63.i.i ], [ %i.yr, %half_to_float.exit79.i.i ], [ %i.yr, %half_to_float.exit77.i.i ], [ %.053.i.i, %bb.mh ], [ %i.yr, %half_to_float.exit73.i.i ]
  %i.agr = or i32 %.0.i73, %i.a
  br label %bb.oj

bb.mi:                                            ; preds = %bb.hw
  %i.ags = icmp eq i32 %i.d, %i.e
  br i1 %i.ags, label %bb.mj, label %bb.my

bb.mj:                                            ; preds = %bb.mi
  %i.agt = and i32 %0, 2047
  %.not.i74 = icmp samesign ugt i32 %i.m, %i.agt
  %i.agu = select i1 %.not.i74, i32 -8192, i32 -3072 ; 2 uses
  %i.agv = trunc nuw nsw i32 %i.b to i16
  %i.agw = tail call range(i16 0, 16) i16 @llvm.ctpop.i16(i16 range(i16 0, -28672) %i.agv) ; 3 uses
  %i.agx = zext nneg i16 %i.agw to i32            ; 9 uses
  %i.agy = icmp samesign ult i32 %i.b, 2048
  br i1 %i.agy, label %bb.mk, label %bb.mo

bb.mk:                                            ; preds = %bb.mj
  %i.agz = and i32 %i.agu, %i.b                   ; 5 uses
  %i.aha = lshr exact i32 %i.agz, 10              ; 3 uses
  %i.ahb = icmp samesign ult i32 %i.aha, %i.agx
  br i1 %i.ahb, label %half_to_float.exit.i81, label %bb.mm

half_to_float.exit.i81:                           ; preds = %bb.mk
  %.not151.i.a = icmp eq i32 %i.agz, 0
  %..i = select i1 %.not151.i.a, float 0.000000e+00, float f0x38800000, !prof !186
  %i.ahc = fsub float %i.c, %..i                  ; 2 uses
  %i.ahd = fcmp olt float %i.ahc, %2
  br i1 %i.ahd, label %bb.ml, label %bb.mw

bb.ml:                                            ; preds = %half_to_float.exit.i81
  br label %bb.mw

bb.mm:                                            ; preds = %bb.mk
  %i.ahe = icmp eq i32 %i.aha, %i.agx
  br i1 %i.ahe, label %half_to_float.exit128.i.a, label %bb.mw

half_to_float.exit128.i.a:                        ; preds = %bb.mm
  %.not150.i.a = icmp eq i32 %i.agz, 0
  %.155.i = select i1 %.not150.i.a, float 0.000000e+00, float f0x38800000, !prof !186
  %i.ahf = fsub float %i.c, %.155.i               ; 2 uses
  %i.ahg = fcmp olt float %i.ahf, %2
  br i1 %i.ahg, label %bb.mn, label %bb.mw

bb.mn:                                            ; preds = %half_to_float.exit128.i.a
  br label %bb.mw

bb.mo:                                            ; preds = %bb.mj
  %i.ahh = and i32 %0, 28672                      ; 2 uses
  %i.ahi = and i32 %0, 30720                      ; 6 uses
  %i.ahj = icmp eq i32 %i.ahh, %i.ahi
  %i.ahk = and i32 %i.agu, %i.b
  %spec.select.i.a = select i1 %i.ahj, i32 %i.ahk, i32 %i.ahh ; 7 uses
  %i.ahl = trunc nuw nsw i32 %spec.select.i.a to i16
  %i.ahm = tail call range(i16 0, 5) i16 @llvm.ctpop.i16(i16 range(i16 0, -28672) %i.ahl) ; 3 uses
  %i.ahn = zext nneg i16 %i.ahm to i32            ; 2 uses
  %i.aho = icmp samesign ult i16 %i.ahm, %i.agw
  br i1 %i.aho, label %half_to_float.exit131.i, label %bb.mq

half_to_float.exit131.i:                          ; preds = %bb.mo
  %.not149.i = icmp eq i32 %spec.select.i.a, 0
  %i.ahp = shl nuw nsw i32 %spec.select.i.a, 13
  %i.ahq = add nuw nsw i32 %i.ahp, 939524096
  %i.ahr = bitcast i32 %i.ahq to float
  %.sroa.0.0.i.i130.i = select i1 %.not149.i, float 0.000000e+00, float %i.ahr, !prof !186
  %i.ahs = fsub float %i.c, %.sroa.0.0.i.i130.i   ; 2 uses
  %i.aht = fcmp olt float %i.ahs, %2
  br i1 %i.aht, label %bb.mp, label %bb.ms

bb.mp:                                            ; preds = %half_to_float.exit131.i
  br label %bb.ms

bb.mq:                                            ; preds = %bb.mo
  %i.ahu = icmp eq i16 %i.ahm, %i.agw
  br i1 %i.ahu, label %half_to_float.exit134.i, label %bb.ms

half_to_float.exit134.i:                          ; preds = %bb.mq
  %.not148.i = icmp eq i32 %spec.select.i.a, 0
  %i.ahv = shl nuw nsw i32 %spec.select.i.a, 13
  %i.ahw = add nuw nsw i32 %i.ahv, 939524096
  %i.ahx = bitcast i32 %i.ahw to float
  %.sroa.0.0.i.i133.i = select i1 %.not148.i, float 0.000000e+00, float %i.ahx, !prof !186
  %i.ahy = fsub float %i.c, %.sroa.0.0.i.i133.i   ; 2 uses
  %i.ahz = fcmp olt float %i.ahy, %2
  br i1 %i.ahz, label %bb.mr, label %bb.ms

bb.mr:                                            ; preds = %half_to_float.exit134.i
  br label %bb.ms

bb.ms:                                            ; preds = %bb.mr, %half_to_float.exit134.i, %bb.mq, %bb.mp, %half_to_float.exit131.i
  %.0101.i = phi i32 [ %spec.select.i.a, %bb.mp ], [ %i.b, %half_to_float.exit131.i ], [ %spec.select.i.a, %bb.mr ], [ %i.b, %half_to_float.exit134.i ], [ %i.b, %bb.mq ] ; 3 uses
  %.098.i75 = phi i32 [ %i.ahn, %bb.mp ], [ %i.agx, %half_to_float.exit131.i ], [ %i.ahn, %bb.mr ], [ %i.agx, %half_to_float.exit134.i ], [ %i.agx, %bb.mq ] ; 6 uses
  %.097.i = phi float [ %i.ahs, %bb.mp ], [ %2, %half_to_float.exit131.i ], [ %i.ahy, %bb.mr ], [ %2, %half_to_float.exit134.i ], [ %2, %bb.mq ] ; 4 uses
  %i.aia = trunc nuw nsw i32 %i.ahi to i16
  %i.aib = tail call range(i16 0, 5) i16 @llvm.ctpop.i16(i16 range(i16 0, -28672) %i.aia)
  %i.aic = zext nneg i16 %i.aib to i32            ; 3 uses
  %i.aid = icmp samesign ugt i32 %.098.i75, %i.aic
  br i1 %i.aid, label %half_to_float.exit137.i80, label %bb.mu

half_to_float.exit137.i80:                        ; preds = %bb.ms
  %i.aie = shl nuw nsw i32 %i.ahi, 13
  %i.aif = add nuw nsw i32 %i.aie, 939524096
  %i.aig = bitcast i32 %i.aif to float
  %i.aih = fsub float %i.c, %i.aig                ; 2 uses
  %i.aii = fcmp olt float %i.aih, %2
  br i1 %i.aii, label %bb.mt, label %bb.mw

bb.mt:                                            ; preds = %half_to_float.exit137.i80
  br label %bb.mw

bb.mu:                                            ; preds = %bb.ms
  %i.aij = icmp eq i32 %.098.i75, %i.aic
  br i1 %i.aij, label %half_to_float.exit140.i, label %bb.mw

half_to_float.exit140.i:                          ; preds = %bb.mu
  %i.aik = shl nuw nsw i32 %i.ahi, 13
  %i.ail = add nuw nsw i32 %i.aik, 939524096
  %i.aim = bitcast i32 %i.ail to float
  %i.ain = fsub float %i.c, %i.aim                ; 2 uses
  %i.aio = fcmp olt float %i.ain, %.097.i
  br i1 %i.aio, label %bb.mv, label %bb.mw

bb.mv:                                            ; preds = %half_to_float.exit140.i
  br label %bb.mw

bb.mw:                                            ; preds = %bb.mv, %half_to_float.exit140.i, %bb.mu, %bb.mt, %half_to_float.exit137.i80, %bb.mn, %half_to_float.exit128.i.a, %bb.mm, %bb.ml, %half_to_float.exit.i81
  %.2103.i = phi i32 [ %i.agz, %bb.ml ], [ %i.b, %half_to_float.exit.i81 ], [ %i.agz, %bb.mn ], [ %i.b, %half_to_float.exit128.i.a ], [ %i.b, %bb.mm ], [ %i.ahi, %bb.mt ], [ %.0101.i, %half_to_float.exit137.i80 ], [ %i.ahi, %bb.mv ], [ %.0101.i, %half_to_float.exit140.i ], [ %.0101.i, %bb.mu ] ; 3 uses
  %.2100.i76 = phi i32 [ %i.aha, %bb.ml ], [ %i.agx, %half_to_float.exit.i81 ], [ %i.agx, %bb.mn ], [ %i.agx, %half_to_float.exit128.i.a ], [ %i.agx, %bb.mm ], [ %i.aic, %bb.mt ], [ %.098.i75, %half_to_float.exit137.i80 ], [ %.098.i75, %bb.mv ], [ %.098.i75, %half_to_float.exit140.i ], [ %.098.i75, %bb.mu ] ; 2 uses
  %.2.i77 = phi float [ %i.ahc, %bb.ml ], [ %2, %half_to_float.exit.i81 ], [ %i.ahf, %bb.mn ], [ %2, %half_to_float.exit128.i.a ], [ %2, %bb.mm ], [ %i.aih, %bb.mt ], [ %.097.i, %half_to_float.exit137.i80 ], [ %i.ain, %bb.mv ], [ %.097.i, %half_to_float.exit140.i ], [ %.097.i, %bb.mu ]
  %i.aip = add nuw nsw i32 %i.b, 2048             ; 5 uses
  %i.aiq = and i32 %i.aip, 63488                  ; 2 uses
  %i.air = trunc nuw i32 %i.aiq to i16
  %i.ais = tail call range(i16 0, 6) i16 @llvm.ctpop.i16(i16 range(i16 0, -28672) %i.air)
  %i.ait = zext nneg i16 %i.ais to i32            ; 2 uses
  %i.aiu = icmp samesign ugt i32 %.2100.i76, %i.ait
  br i1 %i.aiu, label %half_to_float.exit143.i, label %bb.mx

half_to_float.exit143.i:                          ; preds = %bb.mw
  %i.aiv = shl nuw nsw i32 %i.aip, 13
  %i.aiw = and i32 %i.aiv, 251658240              ; 2 uses
  %sext153.i = shl nuw i32 %i.aip, 16
  %i.aix = and i32 %sext153.i, -2147483648        ; 2 uses
  %.not154.i.a = icmp eq i32 %i.aiw, 0
  %i.aiy = or disjoint i32 %i.aix, 939524096
  %i.aiz = add nuw nsw i32 %i.aiy, %i.aiw
  %.sroa.0.0.i.i142.i = select i1 %.not154.i.a, i32 %i.aix, i32 %i.aiz, !prof !186
  %i.aja = bitcast i32 %.sroa.0.0.i.i142.i to float
  %i.ajb = fsub float %i.aja, %i.c
  %i.ajc = fcmp olt float %i.ajb, %2
  br i1 %i.ajc, label %6, label %handleQuantizeEqualExp.exit

bb.mx:                                            ; preds = %bb.mw
  %i.ajd = icmp eq i32 %.2100.i76, %i.ait
  br i1 %i.ajd, label %half_to_float.exit147.i, label %handleQuantizeEqualExp.exit

half_to_float.exit147.i:                          ; preds = %bb.mx
  %i.aje = shl nuw nsw i32 %i.aip, 13
  %i.ajf = and i32 %i.aje, 251658240              ; 2 uses
  %sext.i79 = shl nuw i32 %i.aip, 16
  %i.ajg = and i32 %sext.i79, -2147483648         ; 2 uses
  %.not152.i = icmp eq i32 %i.ajf, 0
  %i.ajh = or disjoint i32 %i.ajg, 939524096
  %i.aji = add nuw nsw i32 %i.ajh, %i.ajf
  %.sroa.0.0.i.i146.i = select i1 %.not152.i, i32 %i.ajg, i32 %i.aji, !prof !186
  %i.ajj = bitcast i32 %.sroa.0.0.i.i146.i to float
  %i.ajk = fsub float %i.ajj, %i.c
  %i.ajl = fcmp olt float %i.ajk, %.2.i77
  br i1 %i.ajl, label %6, label %handleQuantizeEqualExp.exit

6:                                                ; preds = %half_to_float.exit147.i, %half_to_float.exit143.i
  br label %handleQuantizeEqualExp.exit

handleQuantizeEqualExp.exit:                      ; preds = %half_to_float.exit143.i, %bb.mx, %half_to_float.exit147.i, %6
  %.3.i78 = phi i32 [ %.2103.i, %bb.mx ], [ %.2103.i, %half_to_float.exit143.i ], [ %i.aiq, %6 ], [ %.2103.i, %half_to_float.exit147.i ]
  %i.ajm = or i32 %.3.i78, %i.a
  br label %bb.oj

bb.my:                                            ; preds = %bb.mi
  %i.ajn = and i32 %0, 1023
  %.not.i82 = icmp samesign ugt i32 %i.m, %i.ajn  ; 2 uses
  %i.ajo = and i32 %0, 1024
  %i.ajp = icmp eq i32 %i.ajo, 0
  br i1 %i.ajp, label %bb.mz, label %bb.nc

bb.mz:                                            ; preds = %bb.my
  br i1 %.not.i82, label %bb.na, label %bb.nb

bb.na:                                            ; preds = %bb.mz
  %i.ajq = and i32 %0, 28672
  %i.ajr = and i32 %0, 30720
  br label %bb.nd

bb.nb:                                            ; preds = %bb.mz
  %i.ajs = and i32 %0, 30720
  %i.ajt = and i32 %0, 31232
  br label %bb.nd

bb.nc:                                            ; preds = %bb.my
  br i1 %.not.i82, label %half_to_float.exit.i90, label %half_to_float.exit110.i

half_to_float.exit.i90:                           ; preds = %bb.nc
  %i.aju = and i32 %0, 28672
  %i.ajv = and i32 %0, 30720                      ; 3 uses
  %.not131.i = icmp eq i32 %i.ajv, 0
  %i.ajw = shl nuw nsw i32 %i.ajv, 13
  %i.ajx = add nuw nsw i32 %i.ajw, 939524096
  %i.ajy = bitcast i32 %i.ajx to float
  %.sroa.0.0.i.i.i91 = select i1 %.not131.i, float 0.000000e+00, float %i.ajy, !prof !186
  %i.ajz = fsub float %i.c, %.sroa.0.0.i.i.i91
  %i.aka = fcmp ult float %i.ajz, %2
  %.sroa.9.0.i = select i1 %i.aka, i32 %i.ajv, i32 %i.d
  br label %bb.nd

half_to_float.exit110.i:                          ; preds = %bb.nc
  %i.akb = and i32 %0, 30720                      ; 3 uses
  %i.akc = and i32 %0, 31232
  %.not130.i = icmp eq i32 %i.akb, 0
  %i.akd = shl nuw nsw i32 %i.akb, 13
  %i.ake = add nuw nsw i32 %i.akd, 939524096
  %i.akf = bitcast i32 %i.ake to float
  %.sroa.0.0.i.i109.i = select i1 %.not130.i, float 0.000000e+00, float %i.akf, !prof !186
  %i.akg = fsub float %i.c, %.sroa.0.0.i.i109.i
  %i.akh = fcmp ult float %i.akg, %2
  %.sroa.0.0.i = select i1 %i.akh, i32 %i.akb, i32 %i.d
  br label %bb.nd

bb.nd:                                            ; preds = %half_to_float.exit110.i, %half_to_float.exit.i90, %bb.nb, %bb.na
  %.sroa.9.1.i = phi i32 [ %i.ajr, %bb.na ], [ %i.ajt, %bb.nb ], [ %.sroa.9.0.i, %half_to_float.exit.i90 ], [ %i.akc, %half_to_float.exit110.i ] ; 5 uses
  %.sroa.0.1.i = phi i32 [ %i.ajq, %bb.na ], [ %i.ajs, %bb.nb ], [ %i.aju, %half_to_float.exit.i90 ], [ %.sroa.0.0.i, %half_to_float.exit110.i ] ; 5 uses
  %i.aki = add nuw nsw i32 %i.b, 1024             ; 5 uses
  %i.akj = and i32 %i.aki, 64512                  ; 2 uses
  %i.akk = trunc nuw nsw i32 %i.b to i16
  %i.akl = trunc nsw i32 %.sroa.0.1.i to i16
  %i.akm = insertelement <2 x i16> poison, i16 %i.akl, i64 0
  %i.akn = insertelement <2 x i16> %i.akm, i16 %i.akk, i64 1
  %i.ako = tail call range(i16 0, 17) <2 x i16> @llvm.ctpop.v2i16(<2 x i16> %i.akn) ; 2 uses
  %i.akp = extractelement <2 x i16> %i.ako, i64 1 ; 6 uses
  %i.akq = extractelement <2 x i16> %i.ako, i64 0 ; 3 uses
  %i.akr = icmp samesign ult i16 %i.akq, %i.akp
  br i1 %i.akr, label %bb.ne, label %bb.nj

bb.ne:                                            ; preds = %bb.nd
  %i.aks = shl nuw nsw i32 %.sroa.0.1.i, 13
  %i.akt = and i32 %i.aks, 268427264              ; 5 uses
  %i.aku = icmp samesign ugt i32 %i.akt, 8388607
  br i1 %i.aku, label %bb.nf, label %bb.ng, !prof !188

bb.nf:                                            ; preds = %bb.ne
  %i.akv = add nuw nsw i32 %i.akt, 939524096
  br label %half_to_float.exit113.i

bb.ng:                                            ; preds = %bb.ne
  %.not.i.i111.i = icmp eq i32 %i.akt, 0
  br i1 %.not.i.i111.i, label %half_to_float.exit113.i, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.akw = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.akt, i1 true)
  %i.akx = add nsw i32 %i.akw, -8                 ; 2 uses
  %i.aky = shl i32 %i.akt, %i.akx
  %i.akz = or i32 %i.aky, 947912704
  %i.ala = shl nuw nsw i32 %i.akx, 23
  %i.alb = sub nuw i32 %i.akz, %i.ala
  br label %half_to_float.exit113.i

half_to_float.exit113.i:                          ; preds = %bb.nh, %bb.ng, %bb.nf
  %.sroa.0.0.i.i112.i = phi i32 [ %i.akv, %bb.nf ], [ 0, %bb.ng ], [ %i.alb, %bb.nh ]
  %i.alc = bitcast i32 %.sroa.0.0.i.i112.i to float
  %i.ald = fsub float %i.c, %i.alc                ; 2 uses
  %i.ale = fcmp olt float %i.ald, %2
  br i1 %i.ale, label %bb.ni, label %bb.np

bb.ni:                                            ; preds = %half_to_float.exit113.i
  br label %bb.np

bb.nj:                                            ; preds = %bb.nd
  %i.alf = icmp eq i16 %i.akq, %i.akp
  br i1 %i.alf, label %bb.nk, label %bb.np

bb.nk:                                            ; preds = %bb.nj
  %i.alg = shl nuw nsw i32 %.sroa.0.1.i, 13
  %i.alh = and i32 %i.alg, 268427264              ; 5 uses
  %i.ali = icmp samesign ugt i32 %i.alh, 8388607
  br i1 %i.ali, label %bb.nl, label %bb.nm, !prof !188

bb.nl:                                            ; preds = %bb.nk
  %i.alj = add nuw nsw i32 %i.alh, 939524096
  br label %half_to_float.exit116.i

bb.nm:                                            ; preds = %bb.nk
  %.not.i.i114.i = icmp eq i32 %i.alh, 0
  br i1 %.not.i.i114.i, label %half_to_float.exit116.i, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.alk = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.alh, i1 true)
  %i.all = add nsw i32 %i.alk, -8                 ; 2 uses
  %i.alm = shl i32 %i.alh, %i.all
  %i.aln = or i32 %i.alm, 947912704
  %i.alo = shl nuw nsw i32 %i.all, 23
  %i.alp = sub nuw i32 %i.aln, %i.alo
  br label %half_to_float.exit116.i

half_to_float.exit116.i:                          ; preds = %bb.nn, %bb.nm, %bb.nl
  %.sroa.0.0.i.i115.i = phi i32 [ %i.alj, %bb.nl ], [ 0, %bb.nm ], [ %i.alp, %bb.nn ]
  %i.alq = bitcast i32 %.sroa.0.0.i.i115.i to float
  %i.alr = fsub float %i.c, %i.alq                ; 2 uses
  %i.als = fcmp olt float %i.alr, %2
  br i1 %i.als, label %bb.no, label %bb.np

bb.no:                                            ; preds = %half_to_float.exit116.i
  br label %bb.np

bb.np:                                            ; preds = %bb.no, %half_to_float.exit116.i, %bb.nj, %bb.ni, %half_to_float.exit113.i
  %.093.i = phi i32 [ %.sroa.0.1.i, %bb.ni ], [ %i.b, %half_to_float.exit113.i ], [ %.sroa.0.1.i, %bb.no ], [ %i.b, %half_to_float.exit116.i ], [ %i.b, %bb.nj ] ; 3 uses
  %.091.in.i = phi i16 [ %i.akq, %bb.ni ], [ %i.akp, %half_to_float.exit113.i ], [ %i.akp, %bb.no ], [ %i.akp, %half_to_float.exit116.i ], [ %i.akp, %bb.nj ] ; 6 uses
  %.0.i83 = phi float [ %i.ald, %bb.ni ], [ %2, %half_to_float.exit113.i ], [ %i.alr, %bb.no ], [ %2, %half_to_float.exit116.i ], [ %2, %bb.nj ] ; 4 uses
  %i.alt = trunc nuw nsw i32 %.sroa.9.1.i to i16
  %i.alu = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 range(i16 0, -28672) %i.alt) ; 3 uses
  %i.alv = icmp samesign ult i16 %i.alu, %.091.in.i
  br i1 %i.alv, label %bb.nq, label %bb.nv

bb.nq:                                            ; preds = %bb.np
  %i.alw = shl nuw nsw i32 %.sroa.9.1.i, 13
  %i.alx = and i32 %i.alw, 268427264              ; 5 uses
  %i.aly = icmp samesign ugt i32 %i.alx, 8388607
  br i1 %i.aly, label %bb.nr, label %bb.ns, !prof !188

bb.nr:                                            ; preds = %bb.nq
  %i.alz = add nuw nsw i32 %i.alx, 939524096
  br label %half_to_float.exit119.i

bb.ns:                                            ; preds = %bb.nq
  %.not.i.i117.i = icmp eq i32 %i.alx, 0
  br i1 %.not.i.i117.i, label %half_to_float.exit119.i, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.ama = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.alx, i1 true)
  %i.amb = add nsw i32 %i.ama, -8                 ; 2 uses
  %i.amc = shl i32 %i.alx, %i.amb
  %i.amd = or i32 %i.amc, 947912704
  %i.ame = shl nuw nsw i32 %i.amb, 23
  %i.amf = sub nuw i32 %i.amd, %i.ame
  br label %half_to_float.exit119.i

half_to_float.exit119.i:                          ; preds = %bb.nt, %bb.ns, %bb.nr
  %.sroa.0.0.i.i118.i = phi i32 [ %i.alz, %bb.nr ], [ 0, %bb.ns ], [ %i.amf, %bb.nt ]
  %i.amg = bitcast i32 %.sroa.0.0.i.i118.i to float
  %i.amh = fsub float %i.c, %i.amg                ; 2 uses
  %i.ami = fcmp olt float %i.amh, %2
  br i1 %i.ami, label %bb.nu, label %bb.ob

bb.nu:                                            ; preds = %half_to_float.exit119.i
  br label %bb.ob

bb.nv:                                            ; preds = %bb.np
  %i.amj = icmp eq i16 %i.alu, %.091.in.i
  br i1 %i.amj, label %bb.nw, label %bb.ob

bb.nw:                                            ; preds = %bb.nv
  %i.amk = shl nuw nsw i32 %.sroa.9.1.i, 13
  %i.aml = and i32 %i.amk, 268427264              ; 5 uses
  %i.amm = icmp samesign ugt i32 %i.aml, 8388607
  br i1 %i.amm, label %bb.nx, label %bb.ny, !prof !188

bb.nx:                                            ; preds = %bb.nw
  %i.amn = add nuw nsw i32 %i.aml, 939524096
  br label %half_to_float.exit122.i

bb.ny:                                            ; preds = %bb.nw
  %.not.i.i120.i = icmp eq i32 %i.aml, 0
  br i1 %.not.i.i120.i, label %half_to_float.exit122.i, label %bb.nz

bb.nz:                                            ; preds = %bb.ny
  %i.amo = tail call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.aml, i1 true)
  %i.amp = add nsw i32 %i.amo, -8                 ; 2 uses
  %i.amq = shl i32 %i.aml, %i.amp
  %i.amr = or i32 %i.amq, 947912704
  %i.ams = shl nuw nsw i32 %i.amp, 23
  %i.amt = sub nuw i32 %i.amr, %i.ams
  br label %half_to_float.exit122.i

half_to_float.exit122.i:                          ; preds = %bb.nz, %bb.ny, %bb.nx
  %.sroa.0.0.i.i121.i = phi i32 [ %i.amn, %bb.nx ], [ 0, %bb.ny ], [ %i.amt, %bb.nz ]
  %i.amu = bitcast i32 %.sroa.0.0.i.i121.i to float
  %i.amv = fsub float %i.c, %i.amu                ; 2 uses
  %i.amw = fcmp olt float %i.amv, %.0.i83
  br i1 %i.amw, label %bb.oa, label %bb.ob

bb.oa:                                            ; preds = %half_to_float.exit122.i
  br label %bb.ob

bb.ob:                                            ; preds = %bb.oa, %half_to_float.exit122.i, %bb.nv, %bb.nu, %half_to_float.exit119.i
  %.194.i = phi i32 [ %.sroa.9.1.i, %bb.nu ], [ %.093.i, %half_to_float.exit119.i ], [ %.sroa.9.1.i, %bb.oa ], [ %.093.i, %half_to_float.exit122.i ], [ %.093.i, %bb.nv ] ; 3 uses
  %.192.in.i = phi i16 [ %i.alu, %bb.nu ], [ %.091.in.i, %half_to_float.exit119.i ], [ %.091.in.i, %bb.oa ], [ %.091.in.i, %half_to_float.exit122.i ], [ %.091.in.i, %bb.nv ] ; 2 uses
  %.1.i84 = phi float [ %i.amh, %bb.nu ], [ %.0.i83, %half_to_float.exit119.i ], [ %i.amv, %bb.oa ], [ %.0.i83, %half_to_float.exit122.i ], [ %.0.i83, %bb.nv ]
  %i.amx = trunc nuw i32 %i.akj to i16
  %i.amy = tail call range(i16 0, 7) i16 @llvm.ctpop.i16(i16 range(i16 0, -28672) %i.amx) ; 2 uses
  %i.amz = icmp samesign ult i16 %i.amy, %.192.in.i
  br i1 %i.amz, label %bb.oc, label %bb.of

bb.oc:                                            ; preds = %bb.ob
  %i.ana = shl nuw nsw i32 %i.aki, 13
  %i.anb = and i32 %i.ana, 260046848              ; 2 uses
  %sext134.i = shl nuw i32 %i.aki, 16
  %i.anc = and i32 %sext134.i, -2147483648        ; 3 uses
  switch i32 %i.anb, label %bb.od [
    i32 0, label %half_to_float.exit125.i
    i32 260046848, label %bb.oe
  ], !prof !264

bb.od:                                            ; preds = %bb.oc
  %i.and = or disjoint i32 %i.anc, 939524096
  %i.ane = add nuw nsw i32 %i.and, %i.anb
  br label %half_to_float.exit125.i

bb.oe:                                            ; preds = %bb.oc
  %i.anf = or disjoint i32 %i.anc, 2139095040
  br label %half_to_float.exit125.i

half_to_float.exit125.i:                          ; preds = %bb.oe, %bb.od, %bb.oc
  %.sroa.0.0.i.i124.i = phi i32 [ %i.ane, %bb.od ], [ %i.anf, %bb.oe ], [ %i.anc, %bb.oc ]
  %i.ang = bitcast i32 %.sroa.0.0.i.i124.i to float
  %i.anh = fsub float %i.ang, %i.c
  %i.ani = fcmp olt float %i.anh, %2
  br i1 %i.ani, label %7, label %handleQuantizeCloseExp.exit

bb.of:                                            ; preds = %bb.ob
  %i.anj = icmp eq i16 %i.amy, %.192.in.i
  br i1 %i.anj, label %bb.og, label %handleQuantizeCloseExp.exit

bb.og:                                            ; preds = %bb.of
  %i.ank = shl nuw nsw i32 %i.aki, 13
  %i.anl = and i32 %i.ank, 260046848              ; 2 uses
  %sext.i86 = shl nuw i32 %i.aki, 16
  %i.anm = and i32 %sext.i86, -2147483648         ; 3 uses
  switch i32 %i.anl, label %bb.oh [
    i32 0, label %half_to_float.exit129.i87
    i32 260046848, label %bb.oi
  ], !prof !264

bb.oh:                                            ; preds = %bb.og
  %i.ann = or disjoint i32 %i.anm, 939524096
  %i.ano = add nuw nsw i32 %i.ann, %i.anl
  br label %half_to_float.exit129.i87

bb.oi:                                            ; preds = %bb.og
  %i.anp = or disjoint i32 %i.anm, 2139095040
  br label %half_to_float.exit129.i87

half_to_float.exit129.i87:                        ; preds = %bb.oi, %bb.oh, %bb.og
  %.sroa.0.0.i.i128.i88 = phi i32 [ %i.ano, %bb.oh ], [ %i.anp, %bb.oi ], [ %i.anm, %bb.og ]
  %i.anq = bitcast i32 %.sroa.0.0.i.i128.i88 to float
  %i.anr = fsub float %i.anq, %i.c
  %i.ans = fcmp olt float %i.anr, %.1.i84
  br i1 %i.ans, label %7, label %handleQuantizeCloseExp.exit

7:                                                ; preds = %half_to_float.exit129.i87, %half_to_float.exit125.i
  br label %handleQuantizeCloseExp.exit

handleQuantizeCloseExp.exit:                      ; preds = %half_to_float.exit125.i, %bb.of, %half_to_float.exit129.i87, %7
  %.2.i85 = phi i32 [ %.194.i, %bb.of ], [ %.194.i, %half_to_float.exit125.i ], [ %i.akj, %7 ], [ %.194.i, %half_to_float.exit129.i87 ]
  %i.ant = or i32 %.2.i85, %i.a
  br label %bb.oj

bb.oj:                                            ; preds = %bb.hv, %bb.fk, %bb.f, %handleQuantizeCloseExp.exit, %handleQuantizeEqualExp.exit, %handleQuantizeDefault.exit, %handleQuantizeDenormTol.exit, %handleQuantizeGeneric.exit
  %.0.in = phi i32 [ %i.ant, %handleQuantizeCloseExp.exit ], [ %i.nm, %handleQuantizeGeneric.exit ], [ %0, %bb.f ], [ %i.tt, %handleQuantizeDenormTol.exit ], [ %0, %bb.fk ], [ %i.agr, %handleQuantizeDefault.exit ], [ %i.ajm, %handleQuantizeEqualExp.exit ], [ %0, %bb.hv ]
  %.0 = trunc nuw i32 %.0.in to i16
  br label %bb.ok

bb.ok:                                            ; preds = %bb.c, %bb.oj, %bb.b
  %.1 = phi i16 [ %i.g, %bb.b ], [ %.0, %bb.oj ], [ 0, %bb.c ]
  ret i16 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

declare i32 @exr_uncompress_buffer(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @internal_huf_decompress(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @internal_zip_reconstruct_bytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @internal_rle_decompress(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 24) i32 @LossyDctDecoder_execute(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #12 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 13 uses
  %i.b = alloca [3 x ptr], align 16               ; 14 uses
  %i.c = alloca [3 x ptr], align 16               ; 18 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.e = load i32, ptr %i.d, align 8, !tbaa !173  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !177  ; 5 uses
  %i.h = add nsw i32 %i.g, 7
  %i.i = sdiv i32 %i.h, 8                         ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 60 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !178  ; 3 uses
  %i.l = add nsw i32 %i.k, 7
  %i.m = sdiv i32 %i.l, 8                         ; 3 uses
  %i.n = add nsw i32 %i.i, -1                     ; 2 uses
  %i.o = shl nsw i32 %i.n, 3
  %i.p = sub nsw i32 %i.g, %i.o
  %i.q = add nsw i32 %i.m, -1                     ; 2 uses
  %i.r = shl nsw i32 %i.q, 3
  %i.s = sub nsw i32 %i.k, %i.r
  %i.t = sdiv i32 %i.g, 8                         ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !167
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.z = load i64, ptr %i.y, align 8, !tbaa !171
  %i.aa = sext i32 %i.e to i64
  %i.ab = sext i32 %i.i to i64                    ; 3 uses
  %i.ac = mul nsw i64 %i.ab, %i.aa                ; 2 uses
  %i.ad = sext i32 %i.m to i64                    ; 2 uses
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = icmp ult i64 %i.z, %i.ae
  br i1 %i.af, label %bb.bg, label %.preheader357

.preheader357:                                    ; preds = %bb.a
  %i.ag = icmp sgt i32 %i.e, 0                    ; 4 uses
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader357
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ai = zext nneg i32 %i.e to i64
  %i.aj = shl nuw nsw i64 %i.ai, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 8 %i.ah, i64 %i.aj, i1 false), !tbaa !123
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader357
  %i.ak = shl i64 %i.ac, 7
  %i.al = or disjoint i64 %i.ak, 32
  %i.am = tail call ptr %0(i64 noundef %i.al) #21 ; 4 uses
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %bb.bg, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 0, %i.an
  %i.ap = and i64 %i.ao, 15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap
  store ptr %i.aq, ptr %i.c, align 16, !tbaa !122
  %i.ar = icmp sgt i32 %i.e, 1
  br i1 %i.ar, label %.lr.ph368, label %._crit_edge369

.lr.ph368:                                        ; preds = %bb.b
  %.idx = shl nsw i64 %i.ab, 7                    ; 9 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  %load_initial556 = load ptr, ptr %i.c, align 16 ; 2 uses
  %i.as = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %i.at = add nsw i64 %wide.trip.count, -2        ; 2 uses
  %xtraiter = and i64 %i.as, 7                    ; 3 uses
  %i.au = icmp ult i64 %i.at, 7
  br i1 %i.au, label %.epil.preheader, label %.lr.ph368.new

.lr.ph368.new:                                    ; preds = %.lr.ph368
  %unroll_iter = and i64 %i.as, -8
  br label %bb.d

._crit_edge369:                                   ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !170
  store ptr %i.aw, ptr %i.b, align 16, !tbaa !122
  br label %.preheader356

.lr.ph372.unr-lcssa:                              ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph372, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph372.unr-lcssa, %.lr.ph368
  %store_forwarded557.epil.init = phi ptr [ %load_initial556, %.lr.ph368 ], [ %i.bz, %.lr.ph372.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph368 ], [ %indvars.iv.next.7, %.lr.ph372.unr-lcssa ]
  %lcmp.mod563 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod563)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %store_forwarded557.epil = phi ptr [ %store_forwarded557.epil.init, %.epil.preheader ], [ %i.ay, %bb.c ]
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ax = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv.epil
  %i.ay = getelementptr inbounds nuw i8, ptr %store_forwarded557.epil, i64 %.idx ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !122
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph372, label %bb.c, !llvm.loop !265

.lr.ph372:                                        ; preds = %bb.c, %.lr.ph372.unr-lcssa
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !170 ; 3 uses
  store ptr %i.ba, ptr %i.b, align 16, !tbaa !122
  %i.bb = mul nsw i64 %i.ad, %i.ab                ; 9 uses
  %xtraiter565 = and i64 %i.as, 7                 ; 3 uses
  %i.bc = icmp ult i64 %i.at, 7
  br i1 %i.bc, label %.epil.preheader564, label %.lr.ph372.new

.lr.ph372.new:                                    ; preds = %.lr.ph372
  %unroll_iter569 = and i64 %i.as, -8
  br label %bb.f

bb.d:                                             ; preds = %bb.d, %.lr.ph368.new
  %store_forwarded557 = phi ptr [ %load_initial556, %.lr.ph368.new ], [ %i.bz, %bb.d ]
  %indvars.iv = phi i64 [ 1, %.lr.ph368.new ], [ %indvars.iv.next.7, %bb.d ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph368.new ], [ %niter.next.7, %bb.d ]
  %i.bd = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.be = getelementptr inbounds nuw i8, ptr %store_forwarded557, i64 %.idx ; 2 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !122
  %i.bf = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx ; 2 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !122
  %i.bi = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.bj = getelementptr i8, ptr %i.bi, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx ; 2 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !122
  %i.bl = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.bm = getelementptr i8, ptr %i.bl, i64 24
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx ; 2 uses
  store ptr %i.bn, ptr %i.bm, align 8, !tbaa !122
  %i.bo = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.bp = getelementptr i8, ptr %i.bo, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx ; 2 uses
  store ptr %i.bq, ptr %i.bp, align 8, !tbaa !122
  %i.br = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.bs = getelementptr i8, ptr %i.br, i64 40
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx ; 2 uses
  store ptr %i.bt, ptr %i.bs, align 8, !tbaa !122
  %i.bu = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.bv = getelementptr i8, ptr %i.bu, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.idx ; 2 uses
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !122
  %i.bx = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.by = getelementptr i8, ptr %i.bx, i64 56
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx ; 3 uses
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !122
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph372.unr-lcssa, label %bb.d, !llvm.loop !266

.preheader356.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod567.not = icmp eq i64 %xtraiter565, 0
  br i1 %lcmp.mod567.not, label %.preheader356, label %.epil.preheader564

.epil.preheader564:                               ; preds = %.preheader356.loopexit.unr-lcssa, %.lr.ph372
  %store_forwarded.epil.init = phi ptr [ %i.ba, %.lr.ph372 ], [ %i.dk, %.preheader356.loopexit.unr-lcssa ]
  %indvars.iv452.epil.init = phi i64 [ 1, %.lr.ph372 ], [ %indvars.iv.next453.7, %.preheader356.loopexit.unr-lcssa ]
  %lcmp.mod568 = icmp ne i64 %xtraiter565, 0
  tail call void @llvm.assume(i1 %lcmp.mod568)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader564
  %store_forwarded.epil = phi ptr [ %store_forwarded.epil.init, %.epil.preheader564 ], [ %i.cb, %bb.e ]
  %indvars.iv452.epil = phi i64 [ %indvars.iv452.epil.init, %.epil.preheader564 ], [ %indvars.iv.next453.epil, %bb.e ] ; 2 uses
end_hunk_2
