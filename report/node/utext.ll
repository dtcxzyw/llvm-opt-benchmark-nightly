inline.NumInlined: 132
inline.NumDeleted: 35
begin_hunk_0_@_ZL14utf8TextAccessP5UTextla:bb.a
  br label %.thread481

bb.bg:                                            ; preds = %bb.bd
  %i.kn = add nsw i32 %.5412, -1
  br label %.loopexit488

.thread481:                                       ; preds = %.preheader, %bb.al
  %.3416 = phi i32 [ %i.hf, %bb.al ], [ %.1414, %.preheader ] ; 3 uses
  %.7 = phi i32 [ %i.he, %bb.al ], [ %.5412471479, %.preheader ] ; 3 uses
  %.2405 = phi i8 [ %.0403, %bb.al ], [ 1, %.preheader ] ; 2 uses
  %.4 = phi i1 [ false, %bb.al ], [ %.3402473477, %.preheader ]
  %i.ko = icmp slt i32 %.7, %spec.select462
  %i.kp = icmp slt i32 %.3416, 32
  %or.cond7 = select i1 %i.ko, i1 %i.kp, i1 false
  br i1 %or.cond7, label %bb.ak, label %.loopexit488.loopexit, !llvm.loop !16

.loopexit488.loopexit:                            ; preds = %.thread481
  %i.kq = icmp eq i8 %.2405, 0
  br label %.loopexit488

.loopexit488:                                     ; preds = %.loopexit488.loopexit, %bb.bg
  %.4417 = phi i32 [ %.0413, %bb.bg ], [ %.3416, %.loopexit488.loopexit ] ; 4 uses
  %.8 = phi i32 [ %i.kn, %bb.bg ], [ %.7, %.loopexit488.loopexit ] ; 5 uses
  %.3406 = phi i1 [ false, %bb.bg ], [ %i.kq, %.loopexit488.loopexit ]
  %.5 = phi i1 [ true, %bb.bg ], [ %.4, %.loopexit488.loopexit ]
  %i.kr = sub nsw i32 %.8, %i.gj                  ; 2 uses
  %i.ks = trunc i32 %i.kr to i8
  %i.kt = sext i32 %.4417 to i64
  %i.ku = getelementptr inbounds i8, ptr %i.go, i64 %i.kt
  store i8 %i.ks, ptr %i.ku, align 1
  %i.kv = trunc i32 %.4417 to i8
  %i.kw = sext i32 %i.kr to i64
  %i.kx = getelementptr inbounds i8, ptr %i.gp, i64 %i.kw
  store i8 %i.kv, ptr %i.kx, align 1
  store i32 %i.gj, ptr %i.gi, align 4
  %i.ky = getelementptr inbounds nuw i8, ptr %i.gi, i64 4 ; 2 uses
  store i32 %.8, ptr %i.ky, align 4
  %i.kz = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store i32 0, ptr %i.kz, align 4
  %i.la = getelementptr inbounds nuw i8, ptr %i.gi, i64 12 ; 2 uses
  store i32 %.4417, ptr %i.la, align 4
  br i1 %.3406, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.loopexit488
  store i32 %.4417, ptr %i.gq, align 4
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.loopexit488
  %i.lb = getelementptr inbounds nuw i8, ptr %i.gi, i64 20
  store i32 %i.gj, ptr %i.lb, align 4
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.gn, ptr %i.lc, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.ld, align 8
  %i.le = load i32, ptr %i.la, align 4
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.le, ptr %i.lf, align 4
  %i.lg = load i32, ptr %i.gi, align 4
  %i.lh = sext i32 %i.lg to i64
  store i64 %i.lh, ptr %i.bg, align 8
  %i.li = load i32, ptr %i.ky, align 4
  %i.lj = sext i32 %i.li to i64
  store i64 %i.lj, ptr %i.z, align 8
  %i.lk = load i32, ptr %i.gq, align 4
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.lk, ptr %i.ll, align 4
  br i1 %i.gm, label %bb.bj, label %bb.bx

bb.bj:                                            ; preds = %bb.bi
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4
  %i.lo = icmp sgt i32 %.8, %i.ln
  br i1 %i.lo, label %bb.bk, label %bb.bx

bb.bk:                                            ; preds = %bb.bj
  store i32 %.8, ptr %i.lm, align 4
  br i1 %.5, label %bb.bl, label %bb.bx

bb.bl:                                            ; preds = %bb.bk
  store i32 %.8, ptr %i.d, align 8
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 8
  %i.lr = and i32 %i.lq, -3
  store i32 %i.lr, ptr %i.lp, align 8
  br label %bb.bx

bb.bm:                                            ; preds = %bb.z, %bb.aa
  %.not448 = icmp eq i32 %.1391, %i.x
  br i1 %.not448, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ls = getelementptr inbounds i8, ptr %i.c, i64 %i.y
  %i.lt = load i8, ptr %i.ls, align 1
  %i.lu = icmp slt i8 %i.lt, -64
  br i1 %i.lu, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.lv = tail call i32 @utf8_back1SafeBody_78(ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef %.1391) #13
  %.pre516 = load ptr, ptr %i.ck, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo, %bb.bm
  %i.lw = phi ptr [ %.pre516, %bb.bo ], [ %i.cj, %bb.bn ], [ %i.cj, %bb.bm ] ; 13 uses
  %.3 = phi i32 [ %i.lv, %bb.bo ], [ %.1391, %bb.bn ], [ %.1391, %bb.bm ] ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ly = load ptr, ptr %i.lx, align 8
  store ptr %i.ly, ptr %i.ck, align 8
  store ptr %i.lw, ptr %i.lx, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 24 ; 4 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lw, i64 96 ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lw, i64 132 ; 2 uses
  %i.mc = add i32 %.3, -101                       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 %.3, ptr %i.a, align 4
  %i.md = getelementptr inbounds nuw i8, ptr %i.lw, i64 130
  store i8 101, ptr %i.md, align 1
  %i.me = getelementptr inbounds nuw i8, ptr %i.lw, i64 233
  store i8 34, ptr %i.me, align 1
  %i.mf = sext i32 %i.mc to i64
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.loopexit
  %i.mg = phi i32 [ %.3, %bb.bp ], [ %i.oe, %.loopexit ] ; 4 uses
  %.0385494 = phi i32 [ 34, %bb.bp ], [ %.1, %.loopexit ] ; 2 uses
  %.0386493 = phi i32 [ 34, %bb.bp ], [ %.2, %.loopexit ] ; 3 uses
  %i.mh = sub nsw i32 %i.mg, %i.mc
  %i.mi = icmp sgt i32 %i.mh, 5
  %i.mj = icmp sgt i32 %i.mg, 0
  %or.cond10 = and i1 %i.mj, %i.mi
  br i1 %or.cond10, label %bb.br, label %.critedge5

bb.br:                                            ; preds = %bb.bq
  %i.mk = add nsw i32 %i.mg, -1                   ; 3 uses
  store i32 %i.mk, ptr %i.a, align 4
  %i.ml = add nsw i32 %.0386493, -1               ; 5 uses
  %i.mm = zext nneg i32 %i.mk to i64
  %i.mn = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.mm
  %i.mo = load i8, ptr %i.mn, align 1             ; 3 uses
  %i.mp = icmp sgt i8 %i.mo, -1
  br i1 %i.mp, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.mq = zext nneg i8 %i.mo to i16
  %i.mr = zext nneg i32 %i.ml to i64              ; 2 uses
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %i.mr
  store i16 %i.mq, ptr %i.ms, align 2
  %i.mt = trunc i32 %i.ml to i8
  %i.mu = load i32, ptr %i.a, align 4
  %i.mv = sub nsw i32 %i.mu, %i.mc
  %i.mw = sext i32 %i.mv to i64
  %i.mx = getelementptr inbounds i8, ptr %i.mb, i64 %i.mw
  store i8 %i.mt, ptr %i.mx, align 1
  %i.my = load i32, ptr %i.a, align 4
  %i.mz = sub nsw i32 %i.my, %i.mc
  %i.na = trunc i32 %i.mz to i8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.mr
  store i8 %i.na, ptr %i.nb, align 1
  %.pre517 = load i32, ptr %i.a, align 4
  br label %.loopexit

bb.bt:                                            ; preds = %bb.br
  %i.nc = zext i8 %i.mo to i32
  %i.nd = call i32 @utf8_prevCharSafeBody_78(ptr noundef nonnull %i.c, i32 noundef 0, ptr noundef nonnull %i.a, i32 noundef %i.nc, i8 noundef signext -3) #13 ; 3 uses
  %i.ne = icmp slt i32 %i.nd, 65536
  %i.nf = trunc i32 %i.nd to i16                  ; 2 uses
  br i1 %i.ne, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ng = and i16 %i.nf, 1023
  %i.nh = or disjoint i16 %i.ng, -9216
  %i.ni = zext nneg i32 %i.ml to i64              ; 2 uses
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %i.ni
  store i16 %i.nh, ptr %i.nj, align 2
  %i.nk = load i32, ptr %i.a, align 4
  %i.nl = sub nsw i32 %i.nk, %i.mc
  %i.nm = trunc i32 %i.nl to i8
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.ni
  store i8 %i.nm, ptr %i.nn, align 1
  %i.no = lshr i32 %i.nd, 10
  %i.np = trunc i32 %i.no to i16
  %i.nq = add i16 %i.np, -10304
  %i.nr = add nsw i32 %.0386493, -2
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %.sink562 = phi i32 [ %i.nr, %bb.bu ], [ %i.ml, %bb.bt ] ; 4 uses
  %.sink = phi i16 [ %i.nq, %bb.bu ], [ %i.nf, %bb.bt ]
  %i.ns = zext nneg i32 %.sink562 to i64          ; 2 uses
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %i.ns
  store i16 %.sink, ptr %i.nt, align 2
  %i.nu = load i32, ptr %i.a, align 4
  %i.nv = sub nsw i32 %i.nu, %i.mc
  %i.nw = trunc i32 %i.nv to i8
  %i.nx = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.ns
  store i8 %i.nw, ptr %i.nx, align 1
  %i.ny = trunc i32 %.sink562 to i8
  %i.nz = zext nneg i32 %i.mk to i64
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bw, %bb.bv
  %indvars.iv507 = phi i64 [ %indvars.iv.next508, %bb.bw ], [ %i.nz, %bb.bv ] ; 3 uses
  %indvars.iv.next508 = add nsw i64 %indvars.iv507, -1
  %i.oa = sub nsw i64 %indvars.iv507, %i.mf
  %i.ob = getelementptr inbounds i8, ptr %i.mb, i64 %i.oa
  store i8 %i.ny, ptr %i.ob, align 1
  %i.oc = load i32, ptr %i.a, align 4             ; 2 uses
  %i.od = sext i32 %i.oc to i64
  %.not449.not = icmp sgt i64 %indvars.iv507, %i.od
  br i1 %.not449.not, label %bb.bw, label %.loopexit, !llvm.loop !17

.loopexit:                                        ; preds = %bb.bw, %bb.bs
  %i.oe = phi i32 [ %.pre517, %bb.bs ], [ %i.oc, %bb.bw ] ; 2 uses
  %.2 = phi i32 [ %i.ml, %bb.bs ], [ %.sink562, %bb.bw ] ; 3 uses
  %.1 = phi i32 [ %.0385494, %bb.bs ], [ %.sink562, %bb.bw ] ; 2 uses
  %i.of = icmp sgt i32 %.2, 2
  br i1 %i.of, label %bb.bq, label %.critedge5, !llvm.loop !18

.critedge5:                                       ; preds = %bb.bq, %.loopexit
  %i.og = phi i32 [ %i.mg, %bb.bq ], [ %i.oe, %.loopexit ]
  %.0386.lcssa = phi i32 [ %.0386493, %bb.bq ], [ %.2, %.loopexit ] ; 3 uses
  %.0385.lcssa = phi i32 [ %.0385494, %bb.bq ], [ %.1, %.loopexit ]
  store i32 %i.og, ptr %i.lw, align 4
  %i.oh = getelementptr inbounds nuw i8, ptr %i.lw, i64 4 ; 2 uses
  store i32 %.3, ptr %i.oh, align 4
  %i.oi = getelementptr inbounds nuw i8, ptr %i.lw, i64 8 ; 2 uses
  store i32 %.0386.lcssa, ptr %i.oi, align 4
  %i.oj = getelementptr inbounds nuw i8, ptr %i.lw, i64 12 ; 2 uses
  store i32 34, ptr %i.oj, align 4
  %i.ok = sub nsw i32 %.0385.lcssa, %.0386.lcssa
  %i.ol = getelementptr inbounds nuw i8, ptr %i.lw, i64 16 ; 2 uses
  store i32 %i.ok, ptr %i.ol, align 4
  %i.om = getelementptr inbounds nuw i8, ptr %i.lw, i64 20
  store i32 %i.mc, ptr %i.om, align 4
  %i.on = sext i32 %.0386.lcssa to i64
  %i.oo = getelementptr inbounds [2 x i8], ptr %i.lz, i64 %i.on
  %i.op = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.oo, ptr %i.op, align 8
  %i.oq = load i32, ptr %i.oj, align 4
  %i.or = load i32, ptr %i.oi, align 4
  %i.os = sub nsw i32 %i.oq, %i.or                ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.os, ptr %i.ot, align 4
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.os, ptr %i.ou, align 8
  %i.ov = load i32, ptr %i.lw, align 4
  %i.ow = sext i32 %i.ov to i64
  store i64 %i.ow, ptr %i.bx, align 8
  %i.ox = load i32, ptr %i.oh, align 4
  %i.oy = sext i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.oy, ptr %i.oz, align 8
  %i.pa = load i32, ptr %i.ol, align 4
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.pa, ptr %i.pb, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bi, %bb.bj, %bb.bl, %bb.bk, %bb.ae, %bb.af, %bb.ab, %.critedge5, %bb.ac, %bb.t, %bb.q, %bb.o, %bb.i
  %.0388 = phi i8 [ 0, %bb.i ], [ 1, %.critedge5 ], [ 1, %bb.ac ], [ 0, %bb.o ], [ %., %bb.ab ], [ 0, %bb.ae ], [ 1, %bb.q ], [ 0, %bb.t ], [ 0, %bb.af ], [ 1, %bb.bk ], [ 1, %bb.bl ], [ 1, %bb.bj ], [ 1, %bb.bi ]
  ret i8 %.0388
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZL15utf8TextExtractP5UTextllPDsiP10UErrorCode(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = load i32, ptr %5, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %4, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %3, null                     ; 2 uses
  %i.f = icmp ne i32 %4, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.d, label %_ZL8pinIndexRll.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %5, align 4
  br label %bb.v

_ZL8pinIndexRll.exit:                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load i32, ptr %i.g, align 8
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = icmp slt i64 %1, 0
  %spec.select = tail call i64 @llvm.smin.i64(i64 %1, i64 %i.i)
  %i.k = trunc nsw i64 %spec.select to i32
  %i.l = select i1 %i.j, i32 0, i32 %i.k          ; 7 uses
  %i.m = icmp slt i64 %2, 0
  %spec.select60 = tail call i64 @llvm.smin.i64(i64 %2, i64 %i.i)
  %i.n = trunc nsw i64 %spec.select60 to i32
  %i.o = select i1 %i.m, i32 0, i32 %i.n          ; 7 uses
  %i.p = icmp sgt i32 %i.l, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZL8pinIndexRll.exit
  store i32 8, ptr %5, align 4
  br label %bb.v

bb.f:                                             ; preds = %_ZL8pinIndexRll.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8              ; 7 uses
  %i.s = sext i32 %i.l to i64                     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp sgt i64 %i.u, %i.s
  br i1 %i.v, label %.preheader61.preheader, label %.loopexit62

.preheader61.preheader:                           ; preds = %bb.f
  %i.w = add i32 %i.l, -3
  %i.x = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  %i.z = icmp sgt i8 %i.y, -1
  br i1 %i.z, label %.loopexit62, label %bb.g

bb.g:                                             ; preds = %.preheader61.preheader
  %i.aa = add nsw i8 %i.y, 62
  %i.ab = icmp ult i8 %i.aa, 51
  %i.ac = icmp eq i32 %i.l, 0
  %or.cond3 = or i1 %i.ab, %i.ac
  br i1 %or.cond3, label %.loopexit62, label %.preheader61.1

.preheader61.1:                                   ; preds = %bb.g
  %indvars.iv.next = add nsw i64 %i.s, -1         ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %i.r, i64 %indvars.iv.next
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  %i.af = icmp sgt i8 %i.ae, -1
  %i.ag = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  br i1 %i.af, label %.loopexit62, label %bb.h

bb.h:                                             ; preds = %.preheader61.1
  %i.ah = add nsw i8 %i.ae, 62
  %i.ai = icmp ult i8 %i.ah, 51
  %i.aj = icmp eq i64 %indvars.iv.next, 0
  %or.cond3.1 = or i1 %i.ai, %i.aj
  br i1 %or.cond3.1, label %.loopexit62, label %.preheader61.2

.preheader61.2:                                   ; preds = %bb.h
  %indvars.iv.next.1 = add nsw i64 %i.s, -2       ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %i.r, i64 %indvars.iv.next.1
  %i.al = load i8, ptr %i.ak, align 1             ; 2 uses
  %i.am = icmp sgt i8 %i.al, -1
  %i.an = trunc nsw i64 %indvars.iv.next.1 to i32 ; 2 uses
  br i1 %i.am, label %.loopexit62, label %bb.i

bb.i:                                             ; preds = %.preheader61.2
  %i.ao = add nsw i8 %i.al, 62
  %i.ap = icmp ult i8 %i.ao, 51
  %i.aq = icmp eq i64 %indvars.iv.next.1, 0
  %or.cond3.2 = or i1 %i.ap, %i.aq
  %spec.select96 = select i1 %or.cond3.2, i32 %i.an, i32 %i.w
  br label %.loopexit62

.loopexit62:                                      ; preds = %bb.i, %bb.g, %.preheader61.preheader, %.preheader61.1, %bb.h, %.preheader61.2, %bb.f
  %.151 = phi i32 [ %i.l, %bb.f ], [ %i.an, %.preheader61.2 ], [ %i.l, %bb.g ], [ %i.l, %.preheader61.preheader ], [ %i.ag, %.preheader61.1 ], [ %i.ag, %bb.h ], [ %spec.select96, %bb.i ] ; 2 uses
  %i.ar = sext i32 %i.o to i64                    ; 4 uses
  %i.as = icmp sgt i64 %i.u, %i.ar
  br i1 %i.as, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.loopexit62
  %i.at = add i32 %i.o, -3
  %i.au = getelementptr inbounds i8, ptr %i.r, i64 %i.ar
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  %i.aw = icmp sgt i8 %i.av, -1
  br i1 %i.aw, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.preheader.preheader
  %i.ax = add nsw i8 %i.av, 62
  %i.ay = icmp ult i8 %i.ax, 51
  %i.az = icmp eq i32 %i.o, 0
  %or.cond5 = or i1 %i.ay, %i.az
  br i1 %or.cond5, label %.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %bb.j
  %indvars.iv.next70 = add nsw i64 %i.ar, -1      ; 3 uses
  %i.ba = getelementptr inbounds i8, ptr %i.r, i64 %indvars.iv.next70
  %i.bb = load i8, ptr %i.ba, align 1             ; 2 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  %i.bd = trunc nsw i64 %indvars.iv.next70 to i32 ; 2 uses
  br i1 %i.bc, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.preheader.1
  %i.be = add nsw i8 %i.bb, 62
  %i.bf = icmp ult i8 %i.be, 51
  %i.bg = icmp eq i64 %indvars.iv.next70, 0
  %or.cond5.1 = or i1 %i.bf, %i.bg
  br i1 %or.cond5.1, label %.loopexit, label %.preheader.2

.preheader.2:                                     ; preds = %bb.k
  %indvars.iv.next70.1 = add nsw i64 %i.ar, -2    ; 3 uses
  %i.bh = getelementptr inbounds i8, ptr %i.r, i64 %indvars.iv.next70.1
  %i.bi = load i8, ptr %i.bh, align 1             ; 2 uses
  %i.bj = icmp sgt i8 %i.bi, -1
  %i.bk = trunc nsw i64 %indvars.iv.next70.1 to i32 ; 2 uses
  br i1 %i.bj, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.preheader.2
  %i.bl = add nsw i8 %i.bi, 62
  %i.bm = icmp ult i8 %i.bl, 51
  %i.bn = icmp eq i64 %indvars.iv.next70.1, 0
  %or.cond5.2 = or i1 %i.bm, %i.bn
  %spec.select97 = select i1 %or.cond5.2, i32 %i.bk, i32 %i.at
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.j, %.preheader.preheader, %.preheader.1, %bb.k, %.preheader.2, %.loopexit62
end_hunk_0
begin_hunk_1_@_ZL16shallowTextCloneP5UTextPKS_P10UErrorCode:bb.a
  %i.ay = ptrtoint ptr %.sink29.i49 to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = getelementptr inbounds i8, ptr %.sink26.i50, i64 %i.az
  store ptr %i.ba, ptr %i.am, align 8
  %.pre70 = load ptr, ptr %i.w, align 8
  br label %_ZL13adjustPointerP5UTextPPKvPKS_.exit51

_ZL13adjustPointerP5UTextPPKvPKS_.exit51:         ; preds = %bb.l, %bb.m, %.sink.split.i48
  %i.bb = phi ptr [ %i.al, %bb.l ], [ %i.al, %bb.m ], [ %.pre70, %.sink.split.i48 ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8            ; 5 uses
  %.not.i52 = icmp ult ptr %i.bd, %i.bb
  br i1 %.not.i52, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZL13adjustPointerP5UTextPPKvPKS_.exit51
  %i.be = load i32, ptr %i.c, align 8
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.bb, i64 %i.bf
  %i.bh = icmp ult ptr %i.bd, %i.bg
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bi = load ptr, ptr %i.h, align 8
  br label %.sink.split.i54

bb.p:                                             ; preds = %bb.n, %_ZL13adjustPointerP5UTextPPKvPKS_.exit51
  %.not23.i53 = icmp ult ptr %i.bd, %1
  br i1 %.not23.i53, label %_ZL13adjustPointerP5UTextPPKvPKS_.exit57, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = load i32, ptr %i.l, align 4
  %i.bk = sext i32 %i.bj to i64
  %i.bl = getelementptr inbounds i8, ptr %1, i64 %i.bk
  %i.bm = icmp ult ptr %i.bd, %i.bl
  br i1 %i.bm, label %.sink.split.i54, label %_ZL13adjustPointerP5UTextPPKvPKS_.exit57

.sink.split.i54:                                  ; preds = %bb.q, %bb.o
  %.sink29.i55 = phi ptr [ %i.bb, %bb.o ], [ %1, %bb.q ]
  %.sink26.i56 = phi ptr [ %i.bi, %bb.o ], [ %i.e, %bb.q ]
  %i.bn = ptrtoint ptr %i.bd to i64
  %i.bo = ptrtoint ptr %.sink29.i55 to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = getelementptr inbounds i8, ptr %.sink26.i56, i64 %i.bp
  store ptr %i.bq, ptr %i.bc, align 8
  %.pre71 = load ptr, ptr %i.w, align 8
  br label %_ZL13adjustPointerP5UTextPPKvPKS_.exit57

_ZL13adjustPointerP5UTextPPKvPKS_.exit57:         ; preds = %bb.p, %bb.q, %.sink.split.i54
  %i.br = phi ptr [ %i.bb, %bb.p ], [ %i.bb, %bb.q ], [ %.pre71, %.sink.split.i54 ] ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 96 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8            ; 5 uses
  %.not.i58 = icmp ult ptr %i.bt, %i.br
  br i1 %.not.i58, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_ZL13adjustPointerP5UTextPPKvPKS_.exit57
  %i.bu = load i32, ptr %i.c, align 8
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %i.br, i64 %i.bv
  %i.bx = icmp ult ptr %i.bt, %i.bw
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = load ptr, ptr %i.h, align 8
  br label %.sink.split.i60

bb.t:                                             ; preds = %bb.r, %_ZL13adjustPointerP5UTextPPKvPKS_.exit57
  %.not23.i59 = icmp ult ptr %i.bt, %1
  br i1 %.not23.i59, label %_ZL13adjustPointerP5UTextPPKvPKS_.exit63, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = load i32, ptr %i.l, align 4
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds i8, ptr %1, i64 %i.ca
  %i.cc = icmp ult ptr %i.bt, %i.cb
  br i1 %i.cc, label %.sink.split.i60, label %_ZL13adjustPointerP5UTextPPKvPKS_.exit63

.sink.split.i60:                                  ; preds = %bb.u, %bb.s
  %.sink29.i61 = phi ptr [ %i.br, %bb.s ], [ %1, %bb.u ]
  %.sink26.i62 = phi ptr [ %i.by, %bb.s ], [ %i.e, %bb.u ]
  %i.cd = ptrtoint ptr %i.bt to i64
  %i.ce = ptrtoint ptr %.sink29.i61 to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = getelementptr inbounds i8, ptr %.sink26.i62, i64 %i.cf
  store ptr %i.cg, ptr %i.bs, align 8
  %.pre72 = load ptr, ptr %i.w, align 8
  br label %_ZL13adjustPointerP5UTextPPKvPKS_.exit63

_ZL13adjustPointerP5UTextPPKvPKS_.exit63:         ; preds = %bb.t, %bb.u, %.sink.split.i60
  %i.ch = phi ptr [ %i.br, %bb.t ], [ %i.br, %bb.u ], [ %.pre72, %.sink.split.i60 ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8            ; 5 uses
  %.not.i64 = icmp ult ptr %i.cj, %i.ch
  br i1 %.not.i64, label %bb.x, label %bb.v

bb.v:                                             ; preds = %_ZL13adjustPointerP5UTextPPKvPKS_.exit63
  %i.ck = load i32, ptr %i.c, align 8
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr %i.ch, i64 %i.cl
  %i.cn = icmp ult ptr %i.cj, %i.cm
  br i1 %i.cn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.co = load ptr, ptr %i.h, align 8
  br label %.sink.split.i66

bb.x:                                             ; preds = %bb.v, %_ZL13adjustPointerP5UTextPPKvPKS_.exit63
  %.not23.i65 = icmp ult ptr %i.cj, %1
  br i1 %.not23.i65, label %_ZL13adjustPointerP5UTextPPKvPKS_.exit69, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = load i32, ptr %i.l, align 4
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %1, i64 %i.cq
  %i.cs = icmp ult ptr %i.cj, %i.cr
  br i1 %i.cs, label %.sink.split.i66, label %_ZL13adjustPointerP5UTextPPKvPKS_.exit69

.sink.split.i66:                                  ; preds = %bb.y, %bb.w
  %.sink29.i67 = phi ptr [ %i.ch, %bb.w ], [ %1, %bb.y ]
  %.sink26.i68 = phi ptr [ %i.co, %bb.w ], [ %i.e, %bb.y ]
  %i.ct = ptrtoint ptr %i.cj to i64
  %i.cu = ptrtoint ptr %.sink29.i67 to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = getelementptr inbounds i8, ptr %.sink26.i68, i64 %i.cv
  store ptr %i.cw, ptr %i.ci, align 8
  br label %_ZL13adjustPointerP5UTextPPKvPKS_.exit69

_ZL13adjustPointerP5UTextPPKvPKS_.exit69:         ; preds = %bb.x, %bb.y, %.sink.split.i66
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = and i32 %i.cy, -33
  store i32 %i.cz, ptr %i.cx, align 8
  br label %bb.z

bb.z:                                             ; preds = %_ZL13adjustPointerP5UTextPPKvPKS_.exit69, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.e, %bb.b ], [ %i.e, %_ZL13adjustPointerP5UTextPPKvPKS_.exit69 ]
  ret ptr %.1
}

declare i32 @utf8_back1SafeBody_78(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare i32 @utf8_prevCharSafeBody_78(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #5

declare i32 @utf8_nextCharSafeBody_78(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #5

declare i32 @u_terminateUChars_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @_ZL12repTextCloneP5UTextPKS_aP10UErrorCode(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, ptr nofree noundef captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL16shallowTextCloneP5UTextPKS_P10UErrorCode(ptr noundef %0, ptr noundef %1, ptr noundef %3) ; 3 uses
  %.not = icmp eq i8 %2, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %3, align 4
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #13
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = or i32 %i.l, 40
  store i32 %i.m, ptr %i.k, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef range(i64 -2147483648, 2147483648) i64 @_ZL13repTextLengthP5UText(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #13, !inline_history !21
  %i.g = sext i32 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef signext range(i8 0, 2) i8 @_ZL13repTextAccessP5UTextla(ptr nofree noundef captures(none) initializes((40, 44)) %0, i64 noundef %1, i8 noundef signext %2) #0 {
_ZL8pinIndexRll.exit:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #13, !inline_history !21 ; 4 uses
  %i.g = sext i32 %i.f to i64                     ; 5 uses
  %i.h = icmp slt i64 %1, 0                       ; 2 uses
  %spec.select102 = tail call i64 @llvm.smin.i64(i64 %1, i64 %i.g) ; 2 uses
  %.0101 = select i1 %i.h, i64 0, i64 %spec.select102 ; 2 uses
  %i.i = trunc nsw i64 %spec.select102 to i32
  %i.j = select i1 %i.h, i32 0, i32 %i.i          ; 8 uses
  %.not = icmp eq i8 %2, 0
  %i.k = sext i32 %i.j to i64                     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8              ; 6 uses
  br i1 %.not, label %bb.h, label %bb.a

bb.a:                                             ; preds = %_ZL8pinIndexRll.exit
  %.not93.a = icmp sgt i64 %i.m, %i.k
  br i1 %.not93.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8
  %i.p = icmp sgt i64 %i.o, %i.k
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = sub nsw i64 %.0101, %i.m
  %i.r = trunc i64 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.r, ptr %i.s, align 8
  br label %bb.y

bb.d:                                             ; preds = %bb.b, %bb.a
  %.not94 = icmp slt i32 %i.j, %i.f
  br i1 %.not94, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8
  %i.v = icmp eq i64 %i.u, %i.g
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = trunc i64 %i.m to i32
  %i.x = sub nsw i32 %i.f, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.x, ptr %i.y, align 8
  br label %bb.y

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.z = add nsw i64 %.0101, 9
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.z, i64 %i.g) ; 2 uses
  store i64 %spec.select, ptr %i.aa, align 8
  %i.ab = tail call i64 @llvm.smax.i64(i64 %spec.select, i64 10)
  %spec.store.select = add nsw i64 %i.ab, -10
  store i64 %spec.store.select, ptr %i.l, align 8
  br label %bb.n

bb.h:                                             ; preds = %_ZL8pinIndexRll.exit
  %i.ac = icmp slt i64 %i.m, %i.k
  br i1 %i.ac, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load i64, ptr %i.ad, align 8
  %.not91 = icmp slt i64 %i.ae, %i.k
  br i1 %.not91, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = trunc i64 %i.m to i32
  %i.ag = sub nsw i32 %i.j, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.ag, ptr %i.ah, align 8
  br label %bb.y

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ai = icmp eq i32 %i.j, 0
  %i.aj = icmp eq i64 %i.m, 0
  %or.cond104 = and i1 %i.ai, %i.aj
  br i1 %or.cond104, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.ak, align 8
  br label %bb.y

bb.m:                                             ; preds = %bb.k
  %i.al = add nsw i32 %i.j, 1
  %i.am = tail call i32 @llvm.smax.i32(i32 %i.j, i32 9)
  %narrow = add nsw i32 %i.am, -9
  %spec.select97 = zext nneg i32 %narrow to i64
  store i64 %spec.select97, ptr %i.l, align 8
  %4 = sext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not92 = icmp slt i32 %i.j, %i.f
  %spec.store.select98 = select i1 %.not92, i64 %4, i64 %i.g
  store i64 %spec.store.select98, ptr %i.an, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN6icu_7813UnicodeStringC1EPDsii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %i.ap, i32 noundef 0, i32 noundef 10) #13
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = trunc i64 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.au = load i64, ptr %i.at, align 8
  %i.av = trunc i64 %i.au to i32
  %i.aw = load ptr, ptr %i.b, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.as, i32 noundef %i.av, ptr noundef nonnull align 8 dereferenceable(64) %3) #13
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ap, ptr %i.az, align 8
  %i.ba = load i64, ptr %i.at, align 8            ; 3 uses
  %i.bb = load i64, ptr %i.aq, align 8            ; 4 uses
  %i.bc = sub nsw i64 %i.ba, %i.bb                ; 2 uses
  %i.bd = trunc i64 %i.bc to i32                  ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  store i32 %i.bd, ptr %i.be, align 4
  %i.bf = trunc i64 %i.bb to i32
  %i.bg = sub i32 %i.j, %i.bf                     ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store i32 %i.bg, ptr %i.bh, align 8
  %i.bi = icmp slt i64 %i.ba, %i.g
  br i1 %i.bi, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %sext = shl i64 %i.bc, 32
  %i.bj = ashr exact i64 %sext, 31
  %i.bk = getelementptr i8, ptr %i.ap, i64 %i.bj
  %i.bl = getelementptr i8, ptr %i.bk, i64 -2
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = and i16 %i.bm, -1024
  %i.bo = icmp eq i16 %i.bn, -10240
  br i1 %i.bo, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bp = add nsw i32 %i.bd, -1                   ; 5 uses
  store i32 %i.bp, ptr %i.be, align 4
  %i.bq = add nsw i64 %i.ba, -1
  store i64 %i.bq, ptr %i.at, align 8
  %.not96 = icmp slt i32 %i.bg, %i.bd
  br i1 %.not96, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.bp, ptr %i.bh, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o, %bb.n
  %i.br = phi i32 [ %i.bg, %bb.p ], [ %i.bp, %bb.q ], [ %i.bg, %bb.o ], [ %i.bg, %bb.n ] ; 3 uses
  %i.bs = phi i32 [ %i.bp, %bb.p ], [ %i.bp, %bb.q ], [ %i.bd, %bb.o ], [ %i.bd, %bb.n ] ; 3 uses
  %i.bt = icmp sgt i64 %i.bb, 0
  br i1 %i.bt, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bu = load i16, ptr %i.ap, align 2
  %i.bv = and i16 %i.bu, -1024
  %i.bw = icmp eq i16 %i.bv, -9216
  br i1 %i.bw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ap, i64 2 ; 2 uses
  store ptr %i.bx, ptr %i.az, align 8
  %i.by = add nuw nsw i64 %i.bb, 1
  store i64 %i.by, ptr %i.aq, align 8
  %i.bz = add nsw i32 %i.bs, -1                   ; 2 uses
  store i32 %i.bz, ptr %i.be, align 4
  %i.ca = add nsw i32 %i.br, -1                   ; 2 uses
  store i32 %i.ca, ptr %i.bh, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.s, %bb.t
  %i.cb = phi i32 [ %i.bs, %bb.r ], [ %i.bs, %bb.s ], [ %i.bz, %bb.t ]
  %i.cc = phi i32 [ %i.br, %bb.r ], [ %i.br, %bb.s ], [ %i.ca, %bb.t ] ; 4 uses
  %i.cd = phi ptr [ %i.ap, %bb.r ], [ %i.ap, %bb.s ], [ %i.bx, %bb.t ] ; 2 uses
  %i.ce = sext i32 %i.cc to i64
  %i.cf = getelementptr inbounds [2 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2
  %i.ch = and i16 %i.cg, -1024
  %i.ci = icmp eq i16 %i.ch, -9216
  %i.cj = icmp sgt i32 %i.cc, 0
  %or.cond = and i1 %i.cj, %i.ci
  br i1 %or.cond, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.ck = zext nneg i32 %i.cc to i64
  %i.cl = getelementptr [2 x i8], ptr %i.cd, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -2
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = and i16 %i.cn, -1024
  %i.cp = icmp eq i16 %i.co, -10240
  br i1 %i.cp, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cq = add nsw i32 %i.cc, -1
  store i32 %i.cq, ptr %i.bh, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.cb, ptr %i.cr, align 4
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.l, %bb.j, %bb.f, %bb.c
  %.0 = phi i8 [ 1, %bb.c ], [ 0, %bb.f ], [ 1, %bb.x ], [ 1, %bb.j ], [ 0, %bb.l ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZL14repTextExtractP5UTextllPDsiP10UErrorCode(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 {
bb.a:
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 12 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #13, !inline_history !21 ; 3 uses
  %i.g = load i32, ptr %5, align 4
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.i = icmp slt i32 %4, 0
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq ptr %3, null
  %i.k = icmp ne i32 %4, 0
  %or.cond = and i1 %i.j, %i.k
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %5, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = icmp sgt i64 %1, %2
  br i1 %i.l, label %bb.f, label %_ZL8pinIndexRll.exit

bb.f:                                             ; preds = %bb.e
  store i32 8, ptr %5, align 4
  br label %bb.m

_ZL8pinIndexRll.exit:                             ; preds = %bb.e
  %i.m = sext i32 %i.f to i64                     ; 2 uses
  %i.n = icmp slt i64 %1, 0
  %spec.select58 = tail call i64 @llvm.smin.i64(i64 %1, i64 %i.m)
  %i.o = trunc nsw i64 %spec.select58 to i32
  %i.p = select i1 %i.n, i32 0, i32 %i.o          ; 6 uses
  %i.q = icmp slt i64 %2, 0
  %spec.select59 = tail call i64 @llvm.smin.i64(i64 %2, i64 %i.m)
  %i.r = trunc nsw i64 %spec.select59 to i32
  %i.s = select i1 %i.q, i32 0, i32 %i.r          ; 6 uses
  %i.t = icmp slt i32 %i.p, %i.f
  br i1 %i.t, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZL8pinIndexRll.exit
  %i.u = load ptr, ptr %i.b, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef zeroext i16 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.p) #13, !inline_history !22
  %i.y = and i16 %i.x, -1024
  %i.z = icmp eq i16 %i.y, -9216
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.b, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef i32 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.p) #13, !inline_history !23
  %i.ae = add nsw i32 %i.ad, -65536
  %i.af = icmp ult i32 %i.ae, 1048576
  %i.ag = sext i1 %i.af to i32
  %spec.select = add nsw i32 %i.p, %i.ag
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %_ZL8pinIndexRll.exit
  %.042 = phi i32 [ %i.p, %_ZL8pinIndexRll.exit ], [ %spec.select, %bb.h ], [ %i.p, %bb.g ] ; 3 uses
  %i.ah = icmp slt i32 %i.s, %i.f
  br i1 %i.ah, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr %i.b, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef zeroext i16 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.s) #13, !inline_history !22
  %i.am = and i16 %i.al, -1024
  %i.an = icmp eq i16 %i.am, -9216
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = load ptr, ptr %i.b, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef i32 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %i.s) #13, !inline_history !23
  %i.as = add nsw i32 %i.ar, -65536
  %i.at = icmp ult i32 %i.as, 1048576
  %i.au = sext i1 %i.at to i32
  %spec.select50 = add nsw i32 %i.s, %i.au
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.0 = phi i32 [ %i.s, %bb.i ], [ %spec.select50, %bb.k ], [ %i.s, %bb.j ] ; 2 uses
  %i.av = sub nsw i32 %.0, %.042                  ; 2 uses
  %i.aw = icmp sgt i32 %i.av, %4
  %i.ax = add nsw i32 %.042, %4
  %spec.select51 = select i1 %i.aw, i32 %i.ax, i32 %.0 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @_ZN6icu_7813UnicodeStringC1EPDsii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef %3, i32 noundef 0, i32 noundef %4) #13
  %i.ay = load ptr, ptr %i.b, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %.042, i32 noundef %spec.select51, ptr noundef nonnull align 8 dereferenceable(64) %6) #13
  %i.bb = sext i32 %spec.select51 to i64
  %i.bc = call noundef signext i8 @_ZL13repTextAccessP5UTextla(ptr noundef nonnull %0, i64 noundef %i.bb, i8 noundef signext 1) ; 0 uses
  %i.bd = call i32 @u_terminateUChars_78(ptr noundef %3, i32 noundef %4, i32 noundef %i.av, ptr noundef nonnull %5) #13
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l, %bb.f
  %.043 = phi i32 [ %i.bd, %bb.l ], [ 0, %bb.f ], [ 0, %bb.a ]
  ret i32 %.043
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZL14repTextReplaceP5UTextllPKDsiP10UErrorCode(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) #0 {
bb.a:
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %7 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8              ; 14 uses
  %i.c = load i32, ptr %5, align 4
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %3, null
  %i.f = icmp ne i32 %4, 0
  %or.cond = and i1 %i.e, %i.f
end_hunk_1
