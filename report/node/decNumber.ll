inline.NumInlined: 181
inline.NumDeleted: 7
begin_hunk_0_@_ZL8decExpOpP9decNumberPKS_P10decContextPj:bb.a
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %4 = alloca %struct.decContext, align 4         ; 12 uses
  %5 = alloca %struct.decContext, align 4         ; 8 uses
  %6 = alloca %struct.decContext, align 4         ; 4 uses
  %7 = alloca [7 x %struct.decNumber], align 16   ; 3 uses
  %8 = alloca [8 x %struct.decNumber], align 16   ; 5 uses
  %9 = alloca [15 x %struct.decNumber], align 16  ; 9 uses
  %10 = alloca [3 x %struct.decNumber], align 16  ; 11 uses
  %11 = alloca %struct.decNumber, align 4         ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i32 0, ptr %i.d, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4               ; 4 uses
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = and i32 %i.h, 112
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = and i32 %i.h, 64
  %.not221 = icmp eq i32 %i.j, 0
  br i1 %.not221, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not222 = icmp sgt i8 %i.g, -1
  br i1 %.not222, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.l, align 4
  store i32 1, ptr %0, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.m, align 1
  br label %.thread279

bb.e:                                             ; preds = %bb.c
  %i.n = icmp eq ptr %0, %1
  br i1 %i.n, label %.thread279, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.g, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.q, ptr %i.r, align 4
  %i.s = load i32, ptr %1, align 4
  store i32 %i.s, ptr %0, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.u, ptr %i.v, align 1
  %i.w = load i32, ptr %1, align 4                ; 3 uses
  %i.x = icmp sgt i32 %i.w, 1
  br i1 %i.x, label %bb.g, label %.thread279

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.z = icmp samesign ult i32 %i.w, 50
  %i.aa = zext nneg i32 %i.w to i64               ; 2 uses
  br i1 %i.z, label %bb.h, label %iter.check

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i64
  br label %iter.check

iter.check:                                       ; preds = %bb.g, %bb.h
  %.pn.i = phi i64 [ %i.ad, %bb.h ], [ %i.aa, %bb.g ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 %.pn.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 5 uses
  %i.ag = add i64 %.pn.i, %i.a
  %i.ah = add i64 %i.ag, 9
  %i.ai = add i64 %i.a, 11
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ai)
  %i.aj = add i64 %umax, -10
  %i.ak = sub i64 %i.aj, %i.a                     ; 7 uses
  %min.iters.check = icmp ult i64 %i.ak, 4
  %i.al = sub i64 %i.c, %i.b
  %diff.check = icmp ult i64 %i.al, 32
  %or.cond337 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond337, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check323 = icmp ult i64 %i.ak, 32
  br i1 %min.iters.check323, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ak, 28
  %n.vec = and i64 %i.ak, -32                     ; 5 uses
  %i.am = getelementptr i8, ptr %i.y, i64 %n.vec
  %i.an = getelementptr i8, ptr %i.af, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %index ; 2 uses
  %next.gep324 = getelementptr i8, ptr %i.af, i64 %index ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep324, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep324, align 1
  %wide.load325 = load <16 x i8>, ptr %i.ao, align 1
  %i.ap = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load325, ptr %i.ap, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %.thread279, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec328 = and i64 %i.ak, -4                   ; 4 uses
  %i.ar = getelementptr i8, ptr %i.y, i64 %n.vec328
  %i.as = getelementptr i8, ptr %i.af, i64 %n.vec328
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index329 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next333, %vec.epilog.vector.body ] ; 3 uses
  %next.gep330.a = getelementptr i8, ptr %i.y, i64 %index329
  %next.gep331 = getelementptr i8, ptr %i.af, i64 %index329
  %wide.load332 = load <4 x i8>, ptr %next.gep331, align 1
  store <4 x i8> %wide.load332, ptr %next.gep330.a, align 1
  %index.next333 = add nuw i64 %index329, 4       ; 2 uses
  %i.at = icmp eq i64 %index.next333, %n.vec328
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !66

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n334 = icmp eq i64 %i.ak, %n.vec328
  br i1 %cmp.n334, label %.thread279, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.032.i.ph = phi ptr [ %i.y, %iter.check ], [ %i.am, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  %.02631.i.ph = phi ptr [ %i.af, %iter.check ], [ %i.an, %vec.epilog.iter.check ], [ %i.as, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.032.i = phi ptr [ %i.aw, %.lr.ph.i ], [ %.032.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.02631.i = phi ptr [ %i.av, %.lr.ph.i ], [ %.02631.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.au = load i8, ptr %.02631.i, align 1
  store i8 %i.au, ptr %.032.i, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %.02631.i, i64 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.032.i, i64 1
  %i.ax = icmp ult ptr %i.av, %i.ae
  br i1 %i.ax, label %.lr.ph.i, label %.thread279, !llvm.loop !67

bb.i:                                             ; preds = %bb.b
  %i.ay = tail call fastcc noundef ptr @_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef %2, ptr noundef %3) ; 0 uses
  br label %.thread279

bb.j:                                             ; preds = %bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bc = load i32, ptr %1, align 4
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.be, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bf, align 4
  store i32 1, ptr %0, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %i.bg, align 1
  br label %.thread279

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store i8 0, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 4 ; 2 uses
  store i32 1, ptr %10, align 16
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 9 ; 2 uses
  store i8 4, ptr %i.bj, align 1
  %i.bk = load i32, ptr %2, align 4               ; 2 uses
  %12 = sub nsw i32 0, %i.bk
  %13 = xor i32 %i.bk, -1
  %.not213299 = icmp slt i8 %i.g, 0
  %spec.select296 = select i1 %.not213299, i32 %13, i32 %12
  store i32 %spec.select296, ptr %i.bi, align 4
  %i.bl = call fastcc noundef i32 @_ZL10decComparePK9decNumberS1_h(ptr noundef nonnull %10, ptr noundef nonnull %1, i8 noundef zeroext 1) ; 2 uses
  %i.bm = icmp eq i32 %i.bl, -2147483648
  br i1 %i.bm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bn = load i32, ptr %3, align 4
  %i.bo = or i32 %i.bn, 16
  store i32 %i.bo, ptr %3, align 4
  br label %.thread279

bb.o:                                             ; preds = %bb.m
  %i.bp = icmp sgt i32 %i.bl, -1
  br i1 %i.bp, label %bb.p, label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.bq = load i32, ptr %2, align 4               ; 9 uses
  %i.br = add nsw i32 %i.bq, -1                   ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bu = getelementptr i8, ptr %0, i64 9         ; 3 uses
  store i8 1, ptr %i.bu, align 1
  %i.bv = icmp eq i32 %i.br, 0
  br i1 %i.bv, label %_ZL14decShiftToMostPhii.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bw = icmp slt i32 %i.bq, 2
  br i1 %i.bw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bx = sext i32 %i.br to i64
  %i.by = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = trunc i32 %i.bz to i8
  store i8 %i.ca, ptr %i.bu, align 1
  br label %_ZL14decShiftToMostPhii.exit

bb.s:                                             ; preds = %bb.q
  %i.cb = icmp samesign ult i32 %i.bq, 51
  %i.cc = zext nneg i32 %i.br to i64              ; 2 uses
  br i1 %i.cb, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1             ; 2 uses
  %i.cf = zext i8 %i.ce to i64
  %i.cg = zext i8 %i.ce to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.pn.i227 = phi i64 [ %i.cf, %bb.t ], [ %i.cc, %bb.s ] ; 4 uses
  %i.ch = phi i32 [ %i.cg, %bb.t ], [ %i.br, %bb.s ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.pn.i227 ; 3 uses
  %i.cj = sub nsw i32 %i.bq, %i.ch                ; 3 uses
  %i.ck = sub nsw i32 1, %i.cj                    ; 2 uses
  %i.cl = icmp eq i32 %i.cj, 1
  br i1 %i.cl, label %.lr.ph86.i.preheader, label %bb.v

.lr.ph86.i.preheader:                             ; preds = %bb.u
  store i8 1, ptr %i.ci, align 1
  br label %.loopexit76.i

bb.v:                                             ; preds = %bb.u
  %i.cm = icmp samesign ult i32 %i.bq, 50
  br i1 %i.cm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cn = zext nneg i32 %i.bq to i64
  %i.co = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cr = phi i32 [ %i.cq, %bb.w ], [ %i.bq, %bb.v ]
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = sext i32 %i.ck to i64                   ; 2 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr @_ZL7multies, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.ct
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = sext i32 %i.cj to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = lshr i32 1, %i.ck
  %i.dc = mul nuw nsw i32 %i.db, %i.cv
  %i.dd = lshr i32 %i.dc, 17                      ; 2 uses
  %i.de = mul i32 %i.dd, %i.cx
  %i.df = sub i32 1, %i.de
  %.not72.i.not = icmp samesign ult i64 %.pn.i227, %i.cs
  br i1 %.not72.i.not, label %bb.y, label %.loopexit76.loopexit92.i

bb.y:                                             ; preds = %bb.x
  %i.dg = trunc i32 %i.dd to i8
  store i8 %i.dg, ptr %i.ci, align 1
  br label %.loopexit76.loopexit92.i

.loopexit76.loopexit92.i:                         ; preds = %bb.y, %bb.x
  %i.dh = mul i32 %i.df, %i.da
  %i.di = trunc i32 %i.dh to i8
  br label %.loopexit76.i

.loopexit76.i:                                    ; preds = %.lr.ph86.i.preheader, %.loopexit76.loopexit92.i
  %.162.i = phi i8 [ %i.di, %.loopexit76.loopexit92.i ], [ 0, %.lr.ph86.i.preheader ]
  %.2.i = getelementptr inbounds i8, ptr %i.ci, i64 -1 ; 3 uses
  %.2.i302 = ptrtoint ptr %.2.i to i64            ; 3 uses
  %.not7488.i = icmp eq i64 %.pn.i227, 0
  br i1 %.not7488.i, label %_ZL14decShiftToMostPhii.exit, label %.lr.ph91.preheader.i

.lr.ph91.preheader.i:                             ; preds = %.loopexit76.i
  store i8 %.162.i, ptr %.2.i, align 1
  %.not74.peel.i = icmp eq i64 %.pn.i227, 1
  br i1 %.not74.peel.i, label %_ZL14decShiftToMostPhii.exit, label %.lr.ph91.i.preheader

.lr.ph91.i.preheader:                             ; preds = %.lr.ph91.preheader.i
  %i.dj = add i64 %.2.i302, -2
  %i.dk = add i64 %i.c, 8
  %umin = call i64 @llvm.umin.i64(i64 %i.dj, i64 %i.dk) ; 2 uses
  %i.dl = add i64 %umin, 1
  %i.dm = sub i64 %i.dl, %.2.i302
  %scevgep = getelementptr i8, ptr %.2.i, i64 %i.dm
  %i.dn = xor i64 %umin, -1
  %i.do = add i64 %i.dn, %.2.i302
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.do, i1 false)
  br label %_ZL14decShiftToMostPhii.exit

_ZL14decShiftToMostPhii.exit:                     ; preds = %.lr.ph91.i.preheader, %bb.p, %bb.r, %.loopexit76.i, %.lr.ph91.preheader.i
  store i32 %i.bq, ptr %0, align 4
  %i.dp = sub nsw i32 1, %i.bq
  store i32 %i.dp, ptr %i.bt, align 4
  %i.dq = load i32, ptr %3, align 4
  %i.dr = or i32 %i.dq, 2080
  store i32 %i.dr, ptr %3, align 4
  br label %.thread279

bb.z:                                             ; preds = %bb.o
  %i.ds = call ptr @uprv_decContextDefault_78(ptr noundef nonnull %4, i32 noundef 64) #15 ; 0 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dv = load <2 x i32>, ptr %i.dt, align 4
  store <2 x i32> %i.dv, ptr %i.du, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.dw, align 4
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dy = load i32, ptr %i.dx, align 4            ; 2 uses
  %i.dz = load i32, ptr %1, align 4               ; 7 uses
  %i.ea = add nsw i32 %i.dz, %i.dy                ; 3 uses
  %i.eb = icmp sgt i32 %i.ea, 8
  br i1 %i.eb, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i8 0, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  store i32 0, ptr %i.ed, align 4
  store i32 1, ptr %9, align 16
  %i.ee = getelementptr inbounds nuw i8, ptr %9, i64 9
  store i8 2, ptr %i.ee, align 1
  %i.ef = load i8, ptr %i.f, align 4
  %.not217 = icmp sgt i8 %i.ef, -1
  br i1 %.not217, label %.thread242, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 -2, ptr %i.ed, align 4
  br label %.thread242

bb.ac:                                            ; preds = %bb.z
  %i.eg = icmp sgt i32 %i.dz, 8
  %i.eh = zext i1 %i.eg to i32
  %i.ei = sub nsw i32 8, %i.ea
  %i.ej = call i32 @llvm.umin.i32(i32 %i.ei, i32 %i.eh) ; 2 uses
  %i.ek = add i32 %i.dz, %i.ej
  %i.el = sub i32 0, %i.ek                        ; 2 uses
  %i.em = add nsw i32 %i.ej, %i.ea                ; 3 uses
  %i.en = icmp slt i32 %i.em, 0
  %spec.select = call i32 @llvm.smax.i32(i32 %i.em, i32 0) ; 2 uses
  %.not214294 = icmp eq i32 %i.dy, %i.el
  %.not214 = or i1 %i.en, %.not214294
  br i1 %.not214, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eo = icmp slt i32 %i.dz, 50
  br i1 %i.eo, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ep = sext i32 %i.dz to i64
  %i.eq = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = zext i8 %i.er to i32
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.et = phi i32 [ %i.es, %bb.ae ], [ %i.dz, %bb.ad ] ; 2 uses
  %i.eu = icmp samesign ugt i32 %i.et, 73
  br i1 %i.eu, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %narrow = add nuw i32 %i.et, 11
  %i.ev = zext i32 %narrow to i64
end_hunk_0
