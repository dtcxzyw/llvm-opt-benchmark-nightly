Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/HuffEnc?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @Huffman_Generate(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
.preheader165:
  %i.a = alloca [64 x i32], align 16              ; 12 uses
  %i.b = alloca [17 x i32], align 16              ; 24 uses
  %i.c = alloca [17 x i32], align 16              ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false), !tbaa !7
  %.not195 = icmp eq i32 %3, 0                    ; 3 uses
  br i1 %.not195, label %.preheader164.preheader, label %.lr.ph.preheader

.preheader164.preheader.loopexit.unr-lcssa:       ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader164.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader164.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader164.preheader.loopexit.unr-lcssa ]
  %lcmp.mod269 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod269)
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7
  %i.f = tail call i32 @llvm.umin.i32(i32 %i.e, i32 63)
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !7
  br label %.preheader164.preheader

.preheader164.preheader:                          ; preds = %.lr.ph.epil.preheader, %.preheader164.preheader.loopexit.unr-lcssa, %.preheader165
  br label %.preheader164

.lr.ph.preheader:                                 ; preds = %.preheader165
  %wide.trip.count = zext i32 %3 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.k = icmp eq i32 %3, 1
  br i1 %i.k, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = tail call i32 @llvm.umin.i32(i32 %i.m, i32 63)
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !7
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %i.v = tail call i32 @llvm.umin.i32(i32 %i.u, i32 63)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader164.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !8

.preheader163:                                    ; preds = %.preheader164
  br i1 %.not195, label %._crit_edge, label %.lr.ph172.preheader

.lr.ph172.preheader:                              ; preds = %.preheader163
  %wide.trip.count210 = zext i32 %3 to i64
  br label %.lr.ph172

.preheader164:                                    ; preds = %.preheader164, %.preheader164.preheader
  %indvars.iv203 = phi i64 [ 1, %.preheader164.preheader ], [ %indvars.iv.next204.2, %.preheader164 ] ; 4 uses
  %.0142170 = phi i32 [ 0, %.preheader164.preheader ], [ %i.ak, %.preheader164 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv203 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7
  store i32 %.0142170, ptr %i.aa, align 4, !tbaa !7
  %i.ac = add i32 %i.ab, %.0142170                ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv203
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  store i32 %i.ac, ptr %i.ae, align 4, !tbaa !7
  %i.ag = add i32 %i.af, %i.ac                    ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv203
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7  ; 2 uses
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !7
  %i.ak = add i32 %i.aj, %i.ag                    ; 5 uses
  %indvars.iv.next204.2 = add nuw nsw i64 %indvars.iv203, 3 ; 2 uses
  %exitcond206.not.2 = icmp eq i64 %indvars.iv.next204.2, 64
  br i1 %exitcond206.not.2, label %.preheader163, label %.preheader164, !llvm.loop !9

.lr.ph172:                                        ; preds = %.lr.ph172.preheader, %bb.c
  %indvars.iv207 = phi i64 [ 0, %.lr.ph172.preheader ], [ %indvars.iv.next208, %bb.c ] ; 4 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv207
  %i.am = load i32, ptr %i.al, align 4, !tbaa !7  ; 3 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph172
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv207
  store i8 0, ptr %i.ao, align 1, !tbaa !19
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph172
  %i.ap = shl i32 %i.am, 10
  %i.aq = trunc nuw i64 %indvars.iv207 to i32
  %i.ar = or i32 %i.ap, %i.aq
  %i.as = tail call i32 @llvm.umin.i32(i32 %i.am, i32 63)
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !7  ; 2 uses
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !7
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ax
  store i32 %i.ar, ptr %i.ay, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1 ; 2 uses
  %exitcond211.not = icmp eq i64 %indvars.iv.next208, %wide.trip.count210
  br i1 %exitcond211.not, label %._crit_edge, label %.lr.ph172, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.c, %.preheader163
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !7  ; 2 uses
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bf = sub i32 %i.be, %i.ba
  tail call void @HeapSort(ptr noundef %i.bc, i32 noundef %i.bf) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.bg = icmp ult i32 %i.ak, 2
  br i1 %i.bg, label %bb.d, label %.preheader162.preheader

.preheader162.preheader:                          ; preds = %._crit_edge
  %i.bh = add i32 %i.ag, -1
  %i.bi = add i32 %i.bh, %i.aj
  %wide.trip.count216 = zext i32 %i.bi to i64
  br label %.preheader162

bb.d:                                             ; preds = %._crit_edge
  %i.bj = icmp eq i32 %i.ak, 1
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bk = load i32, ptr %1, align 4, !tbaa !7
  %i.bl = and i32 %i.bk, 1023
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.bl, i32 1)
  %i.bm = zext nneg i32 %spec.select to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0141 = phi i64 [ 1, %bb.d ], [ %i.bm, %bb.e ] ; 2 uses
  store i32 0, ptr %1, align 4, !tbaa !7
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.0141
  store i32 1, ptr %i.bn, align 4, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 %.0141
  store i8 1, ptr %i.bo, align 1, !tbaa !19
  store i8 1, ptr %2, align 1, !tbaa !19
  br label %bb.r

.preheader162:                                    ; preds = %.preheader162.preheader, %bb.p
  %indvars.iv212 = phi i64 [ 0, %.preheader162.preheader ], [ %indvars.iv.next213, %bb.p ] ; 8 uses
  %.0138 = phi i32 [ 0, %.preheader162.preheader ], [ %.2140, %bb.p ] ; 4 uses
  %.0134 = phi i32 [ 0, %.preheader162.preheader ], [ %.2, %bb.p ] ; 5 uses
  %.not = icmp eq i32 %.0134, %i.ak
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.preheader162
  %i.bp = zext i32 %.0138 to i64                  ; 2 uses
  %i.bq = icmp eq i64 %indvars.iv212, %i.bp
  br i1 %i.bq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = zext i32 %.0134 to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !7
  %i.bu = lshr i32 %i.bt, 10
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bp
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.bx = lshr i32 %i.bw, 10
  %.not153 = icmp samesign ugt i32 %i.bu, %i.bx
  br i1 %.not153, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.by = add i32 %.0134, 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %.preheader162
  %i.bz = add i32 %.0138, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1139 = phi i32 [ %.0138, %bb.i ], [ %i.bz, %bb.j ] ; 4 uses
  %.1135 = phi i32 [ %i.by, %bb.i ], [ %.0134, %bb.j ] ; 5 uses
  %i.ca = phi i32 [ %.0134, %bb.i ], [ %.0138, %bb.j ]
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cb ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !7  ; 2 uses
  %i.ce = and i32 %i.cd, -1024
  %i.cf = and i32 %i.cd, 1023
  %i.cg = trunc nuw i64 %indvars.iv212 to i32
  %i.ch = shl i32 %i.cg, 10                       ; 2 uses
  %i.ci = or disjoint i32 %i.cf, %i.ch
  store i32 %i.ci, ptr %i.cc, align 4, !tbaa !7
  %.not154 = icmp eq i32 %.1135, %i.ak
  br i1 %.not154, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cj = zext i32 %.1139 to i64                  ; 2 uses
  %i.ck = icmp eq i64 %indvars.iv212, %i.cj
  br i1 %i.ck, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cl = zext i32 %.1135 to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !7
  %i.co = lshr i32 %i.cn, 10
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cj
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !7
  %i.cr = lshr i32 %i.cq, 10
  %.not155 = icmp samesign ugt i32 %i.co, %i.cr
  br i1 %.not155, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cs = add i32 %.1135, 1
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.ct = add i32 %.1139, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.2140 = phi i32 [ %.1139, %bb.n ], [ %i.ct, %bb.o ]
  %.2 = phi i32 [ %i.cs, %bb.n ], [ %.1135, %bb.o ]
  %i.cu = phi i32 [ %.1135, %bb.n ], [ %.1139, %bb.o ]
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cv ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !7  ; 2 uses
  %i.cy = and i32 %i.cx, -1024
  %i.cz = add i32 %i.cy, %i.ce
  %i.da = and i32 %i.cx, 1023
  %i.db = or disjoint i32 %i.da, %i.ch
  store i32 %i.db, ptr %i.cw, align 4, !tbaa !7
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv212 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !7
  %i.de = and i32 %i.dd, 1023                     ; 2 uses
  %i.df = or disjoint i32 %i.de, %i.cz
  store i32 %i.df, ptr %i.dc, align 4, !tbaa !7
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv.next213, %wide.trip.count216
  br i1 %exitcond217.not, label %bb.q, label %.preheader162, !llvm.loop !11

bb.q:                                             ; preds = %bb.p
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(68) %i.b, i8 0, i64 68, i1 false), !tbaa !7
  store i32 %i.de, ptr %i.dg, align 4, !tbaa !7
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 2, ptr %i.dh, align 4, !tbaa !7
  %.not156175 = icmp eq i64 %indvars.iv212, 0
  br i1 %.not156175, label %.preheader160, label %.lr.ph178

.preheader160:                                    ; preds = %.loopexit, %bb.q
  %.not157185 = icmp eq i32 %4, 0
  br i1 %.not157185, label %._crit_edge189, label %.lr.ph188.preheader

.lr.ph188.preheader:                              ; preds = %.preheader160
  %i.di = zext i32 %4 to i64
  br label %.lr.ph188

.lr.ph178:                                        ; preds = %bb.q, %.loopexit
  %indvars.iv221 = phi i64 [ %i.dj, %.loopexit ], [ %indvars.iv212, %bb.q ]
  %i.dj = add nsw i64 %indvars.iv221, -1          ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dj ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !7  ; 2 uses
  %i.dm = lshr i32 %i.dl, 10
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !7
  %i.dq = lshr i32 %i.dp, 10                      ; 2 uses
  %i.dr = add nuw nsw i32 %i.dq, 1                ; 3 uses
  %i.ds = and i32 %i.dl, 1023
  %i.dt = shl i32 %i.dr, 10
  %i.du = or disjoint i32 %i.dt, %i.ds
  store i32 %i.du, ptr %i.dk, align 4, !tbaa !7
  %.not159 = icmp ult i32 %i.dr, %4
  br i1 %.not159, label %.lr.ph178..loopexit_crit_edge, label %.preheader161

.lr.ph178..loopexit_crit_edge:                    ; preds = %.lr.ph178
  %.phi.trans.insert = zext nneg i32 %i.dr to i64 ; 2 uses
  %.phi.trans.insert238 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert238, align 4, !tbaa !7
  %i.dv = add nuw nsw i32 %i.dq, 2
  br label %.loopexit

.preheader161:                                    ; preds = %.lr.ph178, %.preheader161
  %.0133.in = phi i32 [ %.0133, %.preheader161 ], [ %4, %.lr.ph178 ] ; 2 uses
  %.0133 = add i32 %.0133.in, -1                  ; 2 uses
  %i.dw = zext i32 %.0133 to i64                  ; 2 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !7  ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %.preheader161, label %.loopexit, !llvm.loop !12

.loopexit:                                        ; preds = %.preheader161, %.lr.ph178..loopexit_crit_edge
  %.pre-phi = phi i64 [ %.phi.trans.insert, %.lr.ph178..loopexit_crit_edge ], [ %i.dw, %.preheader161 ]
  %i.ea = phi i32 [ %.pre, %.lr.ph178..loopexit_crit_edge ], [ %i.dy, %.preheader161 ]
  %.1 = phi i32 [ %i.dv, %.lr.ph178..loopexit_crit_edge ], [ %.0133.in, %.preheader161 ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.pre-phi
  %i.ec = add i32 %i.ea, -1
  store i32 %i.ec, ptr %i.eb, align 4, !tbaa !7
  %i.ed = zext i32 %.1 to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ed ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !7
  %i.eg = add i32 %i.ef, 2
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !7
  %.not156.wide = icmp eq i64 %i.dj, 0
  br i1 %.not156.wide, label %.preheader160, label %.lr.ph178, !llvm.loop !13

.lr.ph188:                                        ; preds = %.lr.ph188.preheader, %._crit_edge184
  %indvars.iv224 = phi i64 [ %i.di, %.lr.ph188.preheader ], [ %indvars.iv.next225, %._crit_edge184 ] ; 3 uses
  %.4186 = phi i32 [ 0, %.lr.ph188.preheader ], [ %.5.lcssa, %._crit_edge184 ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv224
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !7  ; 5 uses
  %.not158179 = icmp eq i32 %i.ei, 0
  br i1 %.not158179, label %._crit_edge184, label %.lr.ph183

.lr.ph183:                                        ; preds = %.lr.ph188
  %i.ej = trunc i64 %indvars.iv224 to i8          ; 5 uses
  %xtraiter270 = and i32 %i.ei, 3                 ; 2 uses
  %lcmp.mod271.not = icmp eq i32 %xtraiter270, 0
  br i1 %lcmp.mod271.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph183, %.prol.preheader
  %.0131181.prol = phi i32 [ %i.er, %.prol.preheader ], [ %i.ei, %.lr.ph183 ]
  %.5180.prol = phi i32 [ %i.ek, %.prol.preheader ], [ %.4186, %.lr.ph183 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph183 ]
  %i.ek = add i32 %.5180.prol, 1                  ; 3 uses
  %i.el = zext i32 %.5180.prol to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !7
  %i.eo = and i32 %i.en, 1023
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 %i.ep
  store i8 %i.ej, ptr %i.eq, align 1, !tbaa !19
  %i.er = add i32 %.0131181.prol, -1              ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter270
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !14

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph183
  %.lcssa.unr = phi i32 [ poison, %.lr.ph183 ], [ %i.ek, %.prol.preheader ]
  %.0131181.unr = phi i32 [ %i.ei, %.lr.ph183 ], [ %i.er, %.prol.preheader ]
  %.5180.unr = phi i32 [ %.4186, %.lr.ph183 ], [ %i.ek, %.prol.preheader ]
  %i.es = icmp ult i32 %i.ei, 4
  br i1 %i.es, label %._crit_edge184, label %.lr.ph183.new

.lr.ph183.new:                                    ; preds = %.prol.loopexit, %.lr.ph183.new
  %.0131181 = phi i32 [ %i.fv, %.lr.ph183.new ], [ %.0131181.unr, %.prol.loopexit ]
  %.5180 = phi i32 [ %i.fo, %.lr.ph183.new ], [ %.5180.unr, %.prol.loopexit ] ; 5 uses
  %i.et = add i32 %.5180, 1
  %i.eu = zext i32 %.5180 to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !7
  %i.ex = and i32 %i.ew, 1023
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 %i.ey
  store i8 %i.ej, ptr %i.ez, align 1, !tbaa !19
  %i.fa = add i32 %.5180, 2
  %i.fb = zext i32 %i.et to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !7
  %i.fe = and i32 %i.fd, 1023
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 %i.ff
  store i8 %i.ej, ptr %i.fg, align 1, !tbaa !19
  %i.fh = add i32 %.5180, 3
  %i.fi = zext i32 %i.fa to i64
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !7
  %i.fl = and i32 %i.fk, 1023
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 %i.fm
  store i8 %i.ej, ptr %i.fn, align 1, !tbaa !19
  %i.fo = add i32 %.5180, 4                       ; 2 uses
  %i.fp = zext i32 %i.fh to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !7
  %i.fs = and i32 %i.fr, 1023
  %i.ft = zext nneg i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 %i.ft
  store i8 %i.ej, ptr %i.fu, align 1, !tbaa !19
  %i.fv = add i32 %.0131181, -4                   ; 2 uses
  %.not158.3 = icmp eq i32 %i.fv, 0
  br i1 %.not158.3, label %._crit_edge184, label %.lr.ph183.new, !llvm.loop !15

._crit_edge184:                                   ; preds = %.prol.loopexit, %.lr.ph183.new, %.lr.ph188
  %.5.lcssa = phi i32 [ %.4186, %.lr.ph188 ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.fo, %.lr.ph183.new ]
  %indvars.iv.next225 = add nsw i64 %indvars.iv224, -1 ; 2 uses
  %i.fw = and i64 %indvars.iv.next225, 4294967295
  %.not157 = icmp eq i64 %i.fw, 0
  br i1 %.not157, label %._crit_edge189, label %.lr.ph188, !llvm.loop !16

._crit_edge189:                                   ; preds = %._crit_edge184, %.preheader160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.fx = load i32, ptr %i.b, align 16, !tbaa !7
  %i.fy = shl i32 %i.fx, 1                        ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !7
  %i.ga = load i32, ptr %i.dh, align 4, !tbaa !7
  %i.gb = add i32 %i.ga, %i.fy
  %i.gc = shl i32 %i.gb, 1                        ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.gc, ptr %i.gd, align 8, !tbaa !7
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gf = load i32, ptr %i.ge, align 8, !tbaa !7
  %i.gg = add i32 %i.gf, %i.gc
  %i.gh = shl i32 %i.gg, 1                        ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.gh, ptr %i.gi, align 4, !tbaa !7
  %i.gj = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !7
  %i.gl = add i32 %i.gk, %i.gh
  %i.gm = shl i32 %i.gl, 1                        ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 %i.gm, ptr %i.gn, align 16, !tbaa !7
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.gp = load i32, ptr %i.go, align 16, !tbaa !7
  %i.gq = add i32 %i.gp, %i.gm
  %i.gr = shl i32 %i.gq, 1                        ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !7
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !7
  %i.gv = add i32 %i.gu, %i.gr
  %i.gw = shl i32 %i.gv, 1                        ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.gw, ptr %i.gx, align 8, !tbaa !7
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !7
  %i.ha = add i32 %i.gz, %i.gw
  %i.hb = shl i32 %i.ha, 1                        ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !7
  %i.hd = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !7
  %i.hf = add i32 %i.he, %i.hb
  %i.hg = shl i32 %i.hf, 1                        ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 %i.hg, ptr %i.hh, align 16, !tbaa !7
  %i.hi = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.hj = load i32, ptr %i.hi, align 16, !tbaa !7
  %i.hk = add i32 %i.hj, %i.hg
  %i.hl = shl i32 %i.hk, 1                        ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !7
  %i.hn = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !7
  %i.hp = add i32 %i.ho, %i.hl
  %i.hq = shl i32 %i.hp, 1                        ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 %i.hq, ptr %i.hr, align 8, !tbaa !7
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !7
  %i.hu = add i32 %i.ht, %i.hq
  %i.hv = shl i32 %i.hu, 1                        ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %i.hv, ptr %i.hw, align 4, !tbaa !7
  %i.hx = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !7
  %i.hz = add i32 %i.hy, %i.hv
  %i.ia = shl i32 %i.hz, 1                        ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 %i.ia, ptr %i.ib, align 16, !tbaa !7
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.id = load i32, ptr %i.ic, align 16, !tbaa !7
  %i.ie = add i32 %i.id, %i.ia
  %i.if = shl i32 %i.ie, 1                        ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  store i32 %i.if, ptr %i.ig, align 4, !tbaa !7
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !7
  %i.ij = add i32 %i.ii, %i.if
  %i.ik = shl i32 %i.ij, 1                        ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 %i.ik, ptr %i.il, align 8, !tbaa !7
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.in = load i32, ptr %i.im, align 8, !tbaa !7
  %i.io = add i32 %i.in, %i.ik
  %i.ip = shl i32 %i.io, 1                        ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !7
  %i.ir = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !7
  %i.it = add i32 %i.is, %i.ip
  %i.iu = shl i32 %i.it, 1
  %i.iv = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 %i.iu, ptr %i.iv, align 16, !tbaa !7
  br i1 %.not195, label %._crit_edge194, label %.lr.ph193.preheader

.lr.ph193.preheader:                              ; preds = %._crit_edge189
  %wide.trip.count236 = zext i32 %3 to i64        ; 2 uses
  %xtraiter272 = and i64 %wide.trip.count236, 1
  %i.iw = icmp eq i32 %3, 1
  br i1 %i.iw, label %.lr.ph193.epil.preheader, label %.lr.ph193.preheader.new

.lr.ph193.preheader.new:                          ; preds = %.lr.ph193.preheader
  %unroll_iter275 = and i64 %wide.trip.count236, 4294967294
  br label %.lr.ph193

.lr.ph193:                                        ; preds = %.lr.ph193, %.lr.ph193.preheader.new
  %indvars.iv232 = phi i64 [ 0, %.lr.ph193.preheader.new ], [ %indvars.iv.next233.1, %.lr.ph193 ] ; 4 uses
  %niter276 = phi i64 [ 0, %.lr.ph193.preheader.new ], [ %niter276.next.1, %.lr.ph193 ]
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv232
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !19
  %i.iz = zext i8 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.iz ; 2 uses
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !7  ; 2 uses
  %i.jc = add i32 %i.jb, 1
  store i32 %i.jc, ptr %i.ja, align 4, !tbaa !7
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv232
  store i32 %i.jb, ptr %i.jd, align 4, !tbaa !7
  %indvars.iv.next233 = or disjoint i64 %indvars.iv232, 1 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next233
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !19
  %i.jg = zext i8 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jg ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !7  ; 2 uses
  %i.jj = add i32 %i.ji, 1
  store i32 %i.jj, ptr %i.jh, align 4, !tbaa !7
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next233
  store i32 %i.ji, ptr %i.jk, align 4, !tbaa !7
  %indvars.iv.next233.1 = add nuw nsw i64 %indvars.iv232, 2 ; 2 uses
  %niter276.next.1 = add i64 %niter276, 2         ; 2 uses
  %niter276.ncmp.1 = icmp eq i64 %niter276.next.1, %unroll_iter275
  br i1 %niter276.ncmp.1, label %._crit_edge194.loopexit.unr-lcssa, label %.lr.ph193, !llvm.loop !17

._crit_edge194.loopexit.unr-lcssa:                ; preds = %.lr.ph193
  %lcmp.mod273.not = icmp eq i64 %xtraiter272, 0
  br i1 %lcmp.mod273.not, label %._crit_edge194, label %.lr.ph193.epil.preheader

.lr.ph193.epil.preheader:                         ; preds = %._crit_edge194.loopexit.unr-lcssa, %.lr.ph193.preheader
  %indvars.iv232.epil.init = phi i64 [ 0, %.lr.ph193.preheader ], [ %indvars.iv.next233.1, %._crit_edge194.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod274 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod274)
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv232.epil.init
  %i.jm = load i8, ptr %i.jl, align 1, !tbaa !19
  %i.jn = zext i8 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jn ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !7  ; 2 uses
  %i.jq = add i32 %i.jp, 1
  store i32 %i.jq, ptr %i.jo, align 4, !tbaa !7
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv232.epil.init
  store i32 %i.jp, ptr %i.jr, align 4, !tbaa !7
  br label %._crit_edge194

._crit_edge194:                                   ; preds = %.lr.ph193.epil.preheader, %._crit_edge194.loopexit.unr-lcssa, %._crit_edge189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge194, %bb.f
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @HeapSort(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = distinct !{!8, !18}
!9 = distinct !{!9, !18}
!10 = distinct !{!10, !18}
!11 = distinct !{!11, !18}
!12 = distinct !{!12, !18}
end_hunk_0
