Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/codecs?download=true
inline.NumInlined: 14
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@parse_ipv4:bb.a
  %i.bp = zext nneg i8 %i.be to i32               ; 3 uses
  %i.bq = getelementptr i8, ptr %.1143.lcssa, i64 2 ; 3 uses
  %i.br = icmp ult ptr %i.bq, %1
  br i1 %i.br, label %.lr.ph.1, label %..critedge.1.thread_crit_edge

.lr.ph152.1:                                      ; preds = %bb.v
  %i.bs = load i8, ptr %i.cy, align 1
  %i.bt = add i8 %i.bs, -48                       ; 2 uses
  %or.cond49.2.1 = icmp ult i8 %i.bt, 10
  br i1 %or.cond49.2.1, label %bb.q, label %.critedge.2

bb.q:                                             ; preds = %.lr.ph152.1
  %i.bu = mul nuw nsw i32 %i.cx, 10
  %i.bv = zext nneg i8 %i.bt to i32
  %i.bw = add nuw nsw i32 %i.bu, %i.bv            ; 4 uses
  %i.bx = icmp samesign ugt i32 %i.bw, 255
  br i1 %i.bx, label %.critedge51, label %bb.r, !llvm.loop !32

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr i8, ptr %.1.1146.lcssa, i64 3 ; 3 uses
  %i.bz = icmp ult ptr %i.by, %1
  br i1 %i.bz, label %.lr.ph152.2, label %..critedge.2.thread_crit_edge

.lr.ph152.2:                                      ; preds = %bb.r
  %i.ca = load i8, ptr %i.by, align 1
  %i.cb = add i8 %i.ca, -48                       ; 2 uses
  %or.cond49.2.2 = icmp ult i8 %i.cb, 10
  br i1 %or.cond49.2.2, label %bb.s, label %.critedge.2

bb.s:                                             ; preds = %.lr.ph152.2
  %i.cc = mul nuw nsw i32 %i.bw, 10
  %i.cd = zext nneg i8 %i.cb to i32
  %i.ce = add nuw nsw i32 %i.cc, %i.cd            ; 3 uses
  %i.cf = icmp samesign ugt i32 %i.ce, 255
  br i1 %i.cf, label %.critedge51, label %bb.t, !llvm.loop !32

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr i8, ptr %.1.1146.lcssa, i64 4 ; 3 uses
  %i.ch = icmp ult ptr %i.cg, %1
  br i1 %i.ch, label %.lr.ph152.3, label %..critedge.2.thread_crit_edge

.lr.ph152.3:                                      ; preds = %bb.t
  %i.ci = load i8, ptr %i.cg, align 1
  %i.cj = add i8 %i.ci, -48
  %or.cond49.2.3 = icmp ult i8 %i.cj, 10
  br i1 %or.cond49.2.3, label %.critedge51, label %.critedge.2, !llvm.loop !32

.lr.ph152:                                        ; preds = %.preheader.2
  %i.ck = load i8, ptr %i.bl, align 1
  %i.cl = add i8 %i.ck, -48                       ; 2 uses
  %or.cond49.2 = icmp ugt i8 %i.cl, 9             ; 2 uses
  br i1 %or.cond49.2, label %.critedge51, label %bb.v

.critedge.2:                                      ; preds = %.lr.ph152.3, %.lr.ph152.2, %.lr.ph152.1
  %.032.2150.lcssa = phi i32 [ %i.ce, %.lr.ph152.3 ], [ %i.cx, %.lr.ph152.1 ], [ %i.bw, %.lr.ph152.2 ]
  %.1.2149.lcssa = phi ptr [ %i.cg, %.lr.ph152.3 ], [ %i.cy, %.lr.ph152.1 ], [ %i.by, %.lr.ph152.2 ] ; 5 uses
  br i1 %or.cond49.2, label %.critedge51, label %bb.u

..critedge.2.thread_crit_edge:                    ; preds = %bb.t, %bb.r, %bb.v
  %.lcssa172 = phi i32 [ %i.cx, %bb.v ], [ %i.bw, %bb.r ], [ %i.ce, %bb.t ]
  %i.cm = trunc nuw i32 %.lcssa172 to i8
  br label %.critedge.2.thread

.critedge.2.thread:                               ; preds = %..critedge.2.thread_crit_edge, %.preheader.2
  %.032.2.lcssa = phi i8 [ %i.cm, %..critedge.2.thread_crit_edge ], [ 0, %.preheader.2 ]
  %i.cn = icmp eq i32 %i.bm, %i.bn
  br i1 %i.cn, label %.critedge51, label %.thread96

.thread96:                                        ; preds = %.critedge.2.thread
  %i.co = getelementptr i8, ptr %2, i64 2
  store i8 %.032.2.lcssa, ptr %i.co, align 1
  br label %.critedge51

bb.u:                                             ; preds = %.critedge.2
  %i.cp = trunc nuw i32 %.032.2150.lcssa to i8
  %i.cq = getelementptr i8, ptr %2, i64 2
  store i8 %i.cp, ptr %i.cq, align 1
  %i.cr = load i8, ptr %.1.2149.lcssa, align 1
  %.not47.2 = icmp eq i8 %i.cr, 46
  br i1 %.not47.2, label %.preheader.3, label %.critedge51

.preheader.3:                                     ; preds = %bb.u
  %i.cs = getelementptr i8, ptr %.1.2149.lcssa, i64 1 ; 5 uses
  %.0356572.3 = ptrtoaddr ptr %i.cs to i64        ; 2 uses
  %umax.3 = tail call i64 @llvm.umax.i64(i64 %.0356572.3, i64 %i.a)
  %i.ct = trunc i64 %umax.3 to i32
  %i.cu = trunc i64 %.0356572.3 to i32
  %i.cv = sub i32 %i.ct, %i.cu                    ; 4 uses
  %i.cw = icmp ult ptr %i.cs, %1
  br i1 %i.cw, label %.lr.ph157, label %.critedge.3

bb.v:                                             ; preds = %.lr.ph152
  %i.cx = zext nneg i8 %i.cl to i32               ; 3 uses
  %i.cy = getelementptr i8, ptr %.1.1146.lcssa, i64 2 ; 3 uses
  %i.cz = icmp ult ptr %i.cy, %1
  br i1 %i.cz, label %.lr.ph152.1, label %..critedge.2.thread_crit_edge

.lr.ph157.1:                                      ; preds = %bb.ab
  %i.da = load i8, ptr %i.ea, align 1
  %i.db = add i8 %i.da, -48                       ; 2 uses
  %or.cond49.3.1 = icmp ult i8 %i.db, 10
  br i1 %or.cond49.3.1, label %bb.w, label %.critedge.3.loopexit

bb.w:                                             ; preds = %.lr.ph157.1
  %i.dc = mul nuw nsw i32 %i.dz, 10
  %i.dd = zext nneg i8 %i.db to i32
  %i.de = add nuw nsw i32 %i.dc, %i.dd            ; 4 uses
  %i.df = icmp samesign ugt i32 %i.de, 255
  br i1 %i.df, label %.critedge51, label %bb.x, !llvm.loop !32

bb.x:                                             ; preds = %bb.w
  %i.dg = getelementptr i8, ptr %.1.2149.lcssa, i64 3 ; 4 uses
  %i.dh = icmp ult ptr %i.dg, %1
  br i1 %i.dh, label %.lr.ph157.2, label %.critedge.3.loopexit

.lr.ph157.2:                                      ; preds = %bb.x
  %i.di = load i8, ptr %i.dg, align 1
  %i.dj = add i8 %i.di, -48                       ; 2 uses
  %or.cond49.3.2 = icmp ult i8 %i.dj, 10
  br i1 %or.cond49.3.2, label %bb.y, label %.critedge.3.loopexit

bb.y:                                             ; preds = %.lr.ph157.2
  %i.dk = mul nuw nsw i32 %i.de, 10
  %i.dl = zext nneg i8 %i.dj to i32
  %i.dm = add nuw nsw i32 %i.dk, %i.dl            ; 3 uses
  %i.dn = icmp samesign ugt i32 %i.dm, 255
  br i1 %i.dn, label %.critedge51, label %bb.z, !llvm.loop !32

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr i8, ptr %.1.2149.lcssa, i64 4 ; 4 uses
  %i.dp = icmp ult ptr %i.do, %1
  br i1 %i.dp, label %.lr.ph157.3, label %.critedge.3.loopexit

.lr.ph157.3:                                      ; preds = %bb.z
  %i.dq = load i8, ptr %i.do, align 1
  %i.dr = add i8 %i.dq, -48
  %or.cond49.3.3 = icmp ult i8 %i.dr, 10
  br i1 %or.cond49.3.3, label %.critedge51, label %.critedge.3.loopexit, !llvm.loop !32

.lr.ph157:                                        ; preds = %.preheader.3
  %i.ds = load i8, ptr %i.cs, align 1
  %i.dt = add i8 %i.ds, -48                       ; 2 uses
  %or.cond49.3 = icmp ult i8 %i.dt, 10
  br i1 %or.cond49.3, label %bb.ab, label %.critedge.3.loopexit

.critedge.3.loopexit:                             ; preds = %.lr.ph157.3, %bb.z, %.lr.ph157.2, %bb.x, %.lr.ph157.1, %.lr.ph157, %bb.ab
  %.1.3.lcssa.ph = phi ptr [ %i.ea, %bb.ab ], [ %i.cs, %.lr.ph157 ], [ %i.ea, %.lr.ph157.1 ], [ %i.dg, %bb.x ], [ %i.dg, %.lr.ph157.2 ], [ %i.do, %bb.z ], [ %i.do, %.lr.ph157.3 ]
  %.032.3.lcssa.ph = phi i32 [ %i.dz, %bb.ab ], [ 0, %.lr.ph157 ], [ %i.dz, %.lr.ph157.1 ], [ %i.de, %bb.x ], [ %i.de, %.lr.ph157.2 ], [ %i.dm, %bb.z ], [ %i.dm, %.lr.ph157.3 ]
  %.0.lcssa.3.ph = phi i32 [ %i.cv, %bb.ab ], [ 0, %.lr.ph157 ], [ 1, %.lr.ph157.1 ], [ %i.cv, %bb.x ], [ 2, %.lr.ph157.2 ], [ %i.cv, %bb.z ], [ 3, %.lr.ph157.3 ]
  %i.du = trunc nuw i32 %.032.3.lcssa.ph to i8
  br label %.critedge.3

.critedge.3:                                      ; preds = %.critedge.3.loopexit, %.preheader.3
  %.1.3.lcssa = phi ptr [ %i.cs, %.preheader.3 ], [ %.1.3.lcssa.ph, %.critedge.3.loopexit ]
  %.032.3.lcssa = phi i8 [ 0, %.preheader.3 ], [ %i.du, %.critedge.3.loopexit ]
  %.0.lcssa.3 = phi i32 [ %i.cv, %.preheader.3 ], [ %.0.lcssa.3.ph, %.critedge.3.loopexit ]
  %i.dv = icmp eq i32 %.0.lcssa.3, 0
  br i1 %i.dv, label %.critedge51, label %bb.aa

bb.aa:                                            ; preds = %.critedge.3
  %i.dw = getelementptr i8, ptr %2, i64 3
  store i8 %.032.3.lcssa, ptr %i.dw, align 1
  %i.dx = icmp eq ptr %.1.3.lcssa, %1
  %i.dy = zext i1 %i.dx to i32
  br label %.critedge51

bb.ab:                                            ; preds = %.lr.ph157
  %i.dz = zext nneg i8 %i.dt to i32               ; 3 uses
  %i.ea = getelementptr i8, ptr %.1.2149.lcssa, i64 2 ; 4 uses
  %i.eb = icmp ult ptr %i.ea, %1
  br i1 %i.eb, label %.lr.ph157.1, label %.critedge.3.loopexit

.critedge51:                                      ; preds = %.lr.ph152, %.lr.ph, %.preheader.preheader, %bb.c, %bb.f, %bb.h, %bb.k, %bb.m, %.lr.ph.3, %bb.q, %bb.s, %.lr.ph152.3, %bb.w, %bb.y, %.lr.ph157.3, %.critedge, %bb.j, %.critedge.1, %bb.o, %.critedge.2, %bb.u, %.critedge.3, %.critedge.thread, %.thread, %.critedge.1.thread, %.thread94, %.critedge.2.thread, %.thread96, %bb.a, %bb.aa
  %.238 = phi i32 [ %i.dy, %bb.aa ], [ 0, %bb.a ], [ 0, %bb.w ], [ 0, %.critedge ], [ 0, %bb.q ], [ 0, %.lr.ph ], [ 0, %.thread96 ], [ 0, %.critedge.2.thread ], [ 0, %.thread94 ], [ 0, %.critedge.1.thread ], [ 0, %.thread ], [ 0, %.critedge.thread ], [ 0, %.critedge.3 ], [ 0, %bb.u ], [ 0, %.critedge.2 ], [ 0, %bb.o ], [ 0, %.critedge.1 ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.c ], [ 0, %.preheader.preheader ], [ 0, %.lr.ph157.3 ], [ 0, %bb.y ], [ 0, %.lr.ph152.3 ], [ 0, %bb.s ], [ 0, %.lr.ph.3 ], [ 0, %bb.m ], [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %.lr.ph152 ]
  ret i32 %.238
}

; Function Attrs: nofree norecurse nosync nounwind ssp memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @sodium_bin2ip(ptr noundef nonnull %0, i64 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 20 uses
  %i.b = alloca [4 x i8], align 1                 ; 30 uses
  %i.c = alloca [46 x i8], align 16               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.d = icmp ult i64 %1, 3
  br i1 %i.d, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %2, align 1
  %i.f = getelementptr i8, ptr %2, i64 8
  %i.g = load i32, ptr %i.f, align 1
  %i.h = zext i32 %i.g to i64
  %i.i = xor i64 %i.h, 4294901760
  %i.j = or i64 %i.e, %i.i
  %i.k = icmp ne i64 %i.j, 0
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.preheader.preheader, label %.preheader102.preheader

.preheader102.preheader:                          ; preds = %bb.b
  %3 = load i16, ptr %2, align 1
  %.not130 = icmp ne i16 %3, 0                    ; 4 uses
  %.2 = sext i1 %.not130 to i32
  %not..not130 = xor i1 %.not130, true
  %.1 = zext i1 %not..not130 to i32
  %i.n = getelementptr i8, ptr %2, i64 2
  %4 = load i16, ptr %i.n, align 1
  %i.o = icmp eq i16 %4, 0
  br i1 %i.o, label %bb.h, label %.preheader102.2

.preheader.preheader:                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %2, i64 12
  %i.q = load i8, ptr %i.p, align 1
  %i.r = zext i8 %i.q to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.preheader
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %bb.c ], [ 1, %.preheader.preheader ] ; 3 uses
  %.011.i = phi i32 [ %i.y, %bb.c ], [ %i.r, %.preheader.preheader ] ; 3 uses
  %.0.i = phi i32 [ %i.v, %bb.c ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.s = urem i32 %.011.i, 10
  %i.t = trunc nuw nsw i32 %i.s to i8
  %i.u = or disjoint i8 %i.t, 48
  %i.v = add i32 %.0.i, 1
  %i.w = sext i32 %.0.i to i64
  %i.x = getelementptr i8, ptr %i.b, i64 %i.w
  store i8 %i.u, ptr %i.x, align 1
  %i.y = udiv i32 %.011.i, 10
  %.not.i = icmp samesign ult i32 %.011.i, 10
  %indvars.iv.next.i = add i32 %indvars.iv.i, 1
  br i1 %.not.i, label %.preheader.i, label %bb.c, !llvm.loop !33

.preheader.i:                                     ; preds = %bb.c
  %i.z = icmp ult i32 %.0.i, 2147483647
  br i1 %i.z, label %iter.check, label %.loopexit132

iter.check:                                       ; preds = %.preheader.i
  %i.aa = zext i32 %indvars.iv.i to i64           ; 6 uses
  %i.ab = add nuw nsw i64 %i.aa, 1
  %i.ac = icmp ne i32 %indvars.iv.i, 0
  %umin.neg = sext i1 %i.ac to i64
  %i.ad = add nsw i64 %i.ab, %umin.neg            ; 7 uses
  %min.iters.check = icmp ult i64 %i.ad, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check147 = icmp ult i64 %i.ad, 32
  br i1 %min.iters.check147, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.ad, 24
  %n.vec = and i64 %i.ad, -32                     ; 5 uses
  %i.af = getelementptr i8, ptr %i.c, i64 %n.vec  ; 2 uses
  %i.ag = sub nsw i64 %i.aa, %n.vec
  %invariant.gep = getelementptr i8, ptr %i.b, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %index ; 2 uses
  %i.ah = xor i64 %index, -1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ah ; 2 uses
  %i.ai = getelementptr i8, ptr %gep, i64 -15
  %i.aj = getelementptr i8, ptr %gep, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ai, align 1
  %wide.load148 = load <16 x i8>, ptr %i.aj, align 1
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse149 = shufflevector <16 x i8> %wide.load148, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %reverse, ptr %next.gep, align 16
  store <16 x i8> %reverse149, ptr %i.ak, align 16
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %.loopexit132, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec151 = and i64 %i.ad, -8                   ; 4 uses
  %i.am = getelementptr i8, ptr %i.c, i64 %n.vec151 ; 2 uses
  %i.an = sub nsw i64 %i.aa, %n.vec151
  %invariant.gep303 = getelementptr i8, ptr %i.b, i64 %i.aa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index152 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next156, %vec.epilog.vector.body ] ; 3 uses
  %next.gep153 = getelementptr i8, ptr %i.c, i64 %index152
  %i.ao = xor i64 %index152, -1
  %gep304 = getelementptr i8, ptr %invariant.gep303, i64 %i.ao
  %i.ap = getelementptr i8, ptr %gep304, i64 -7
  %wide.load154 = load <8 x i8>, ptr %i.ap, align 1
  %reverse155 = shufflevector <8 x i8> %wide.load154, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse155, ptr %next.gep153, align 8
  %index.next156 = add nuw i64 %index152, 8       ; 2 uses
  %i.aq = icmp eq i64 %index.next156, %n.vec151
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n157 = icmp eq i64 %i.ad, %n.vec151
  br i1 %cmp.n157, label %.loopexit132, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.5.ph = phi ptr [ %i.c, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.am, %vec.epilog.middle.block ]
  %indvars.iv16.i.ph = phi i64 [ %i.aa, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.5 = phi ptr [ %i.at, %.lr.ph.i ], [ %.5.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %.lr.ph.i ], [ %indvars.iv16.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.next17.i = add nsw i64 %indvars.iv16.i, -1 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.b, i64 %indvars.iv.next17.i
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = getelementptr i8, ptr %.5, i64 1        ; 2 uses
  store i8 %i.as, ptr %.5, align 1
  %i.au = icmp samesign ugt i64 %indvars.iv16.i, 1
  br i1 %i.au, label %.lr.ph.i, label %.loopexit132, !llvm.loop !36

.loopexit132:                                     ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.6 = phi ptr [ %i.c, %.preheader.i ], [ %i.am, %vec.epilog.middle.block ], [ %i.af, %middle.block ], [ %i.at, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.av = getelementptr i8, ptr %.6, i64 1        ; 8 uses
  store i8 46, ptr %.6, align 1
  %i.aw = getelementptr i8, ptr %2, i64 13
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.loopexit132
  %indvars.iv.i.1 = phi i32 [ %indvars.iv.next.i.1, %bb.d ], [ 1, %.loopexit132 ] ; 4 uses
  %.011.i.1 = phi i32 [ %i.bf, %bb.d ], [ %i.ay, %.loopexit132 ] ; 3 uses
  %.0.i.1 = phi i32 [ %i.bc, %bb.d ], [ 0, %.loopexit132 ] ; 3 uses
  %i.az = urem i32 %.011.i.1, 10
  %i.ba = trunc nuw nsw i32 %i.az to i8
  %i.bb = or disjoint i8 %i.ba, 48
  %i.bc = add i32 %.0.i.1, 1
  %i.bd = sext i32 %.0.i.1 to i64
  %i.be = getelementptr i8, ptr %i.b, i64 %i.bd
  store i8 %i.bb, ptr %i.be, align 1
  %i.bf = udiv i32 %.011.i.1, 10
  %.not.i.1 = icmp samesign ult i32 %.011.i.1, 10
  %indvars.iv.next.i.1 = add i32 %indvars.iv.i.1, 1
  br i1 %.not.i.1, label %.preheader.i.1, label %bb.d, !llvm.loop !33

.preheader.i.1:                                   ; preds = %bb.d
  %i.bg = icmp ult i32 %.0.i.1, 2147483647
  br i1 %i.bg, label %iter.check183, label %.loopexit131

iter.check183:                                    ; preds = %.preheader.i.1
  %i.bh = zext i32 %indvars.iv.i.1 to i64         ; 9 uses
  %i.bi = add nuw nsw i64 %i.bh, 1
  %i.bj = icmp ne i32 %indvars.iv.i.1, 0
  %umin165.neg = sext i1 %i.bj to i64
  %i.bk = add nsw i64 %i.bi, %umin165.neg         ; 7 uses
  %min.iters.check166 = icmp ult i64 %i.bk, 8
  br i1 %min.iters.check166, label %.lr.ph.i.1.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check183
  %scevgep = getelementptr i8, ptr %.6, i64 2
  %i.bl = icmp ne i32 %indvars.iv.i.1, 0          ; 2 uses
  %umin160.neg = sext i1 %i.bl to i64
  %i.bm = getelementptr i8, ptr %scevgep, i64 %umin160.neg
  %scevgep161 = getelementptr i8, ptr %i.bm, i64 %i.bh
  %not. = xor i1 %i.bl, true
  %umin160.sroa.sel.idx = sext i1 %not. to i64
  %umin160.sroa.sel = getelementptr i8, ptr %i.b, i64 %umin160.sroa.sel.idx
  %scevgep164 = getelementptr i8, ptr %i.b, i64 %i.bh
  %bound0 = icmp ult ptr %i.av, %scevgep164
  %bound1 = icmp ult ptr %umin160.sroa.sel, %scevgep161
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.1.preheader, label %vector.main.loop.iter.check167

vector.main.loop.iter.check167:                   ; preds = %vector.memcheck
  %min.iters.check168 = icmp ult i64 %i.bk, 32
  br i1 %min.iters.check168, label %vec.epilog.ph187, label %vector.ph169

vector.ph169:                                     ; preds = %vector.main.loop.iter.check167
  %i.bn = and i64 %i.bk, 24
  %n.vec170 = and i64 %i.bk, -32                  ; 5 uses
  %i.bo = getelementptr i8, ptr %i.av, i64 %n.vec170 ; 2 uses
  %i.bp = sub nsw i64 %i.bh, %n.vec170
  %invariant.gep305 = getelementptr i8, ptr %i.b, i64 %i.bh
  br label %vector.body171

vector.body171:                                   ; preds = %vector.ph169, %vector.body171
  %index172 = phi i64 [ 0, %vector.ph169 ], [ %index.next178, %vector.body171 ] ; 3 uses
  %next.gep173 = getelementptr i8, ptr %i.av, i64 %index172 ; 2 uses
  %i.bq = xor i64 %index172, -1
  %gep306 = getelementptr i8, ptr %invariant.gep305, i64 %i.bq ; 2 uses
  %i.br = getelementptr i8, ptr %gep306, i64 -15
  %i.bs = getelementptr i8, ptr %gep306, i64 -31
  %wide.load174 = load <16 x i8>, ptr %i.br, align 1, !alias.scope !57
  %wide.load175 = load <16 x i8>, ptr %i.bs, align 1, !alias.scope !57
  %reverse176 = shufflevector <16 x i8> %wide.load174, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse177 = shufflevector <16 x i8> %wide.load175, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bt = getelementptr i8, ptr %next.gep173, i64 16
  store <16 x i8> %reverse176, ptr %next.gep173, align 1, !alias.scope !58, !noalias !57
  store <16 x i8> %reverse177, ptr %i.bt, align 1, !alias.scope !58, !noalias !57
  %index.next178 = add nuw i64 %index172, 32      ; 2 uses
  %i.bu = icmp eq i64 %index.next178, %n.vec170
end_hunk_0
begin_hunk_1_@sodium_bin2ip:bb.a

vec.epilog.ph231:                                 ; preds = %vector.main.loop.iter.check211, %vec.epilog.iter.check229
  %vec.epilog.resume.val225 = phi i64 [ %n.vec214, %vec.epilog.iter.check229 ], [ 0, %vector.main.loop.iter.check211 ]
  %n.vec232 = and i64 %i.ct, -8                   ; 4 uses
  %i.de = getelementptr i8, ptr %i.ce, i64 %n.vec232 ; 2 uses
  %i.df = sub nsw i64 %i.cq, %n.vec232
  %invariant.gep311 = getelementptr i8, ptr %i.b, i64 %i.cq
  br label %vec.epilog.vector.body233

vec.epilog.vector.body233:                        ; preds = %vec.epilog.vector.body233, %vec.epilog.ph231
  %index234 = phi i64 [ %vec.epilog.resume.val225, %vec.epilog.ph231 ], [ %index.next238, %vec.epilog.vector.body233 ] ; 3 uses
  %next.gep235 = getelementptr i8, ptr %i.ce, i64 %index234
  %i.dg = xor i64 %index234, -1
  %gep312 = getelementptr i8, ptr %invariant.gep311, i64 %i.dg
  %i.dh = getelementptr i8, ptr %gep312, i64 -7
  %wide.load236 = load <8 x i8>, ptr %i.dh, align 1, !alias.scope !59
  %reverse237 = shufflevector <8 x i8> %wide.load236, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse237, ptr %next.gep235, align 1, !alias.scope !60, !noalias !59
  %index.next238 = add nuw i64 %index234, 8       ; 2 uses
  %i.di = icmp eq i64 %index.next238, %n.vec232
  br i1 %i.di, label %vec.epilog.middle.block239, label %vec.epilog.vector.body233, !llvm.loop !47

vec.epilog.middle.block239:                       ; preds = %vec.epilog.vector.body233
  %cmp.n240 = icmp eq i64 %i.ct, %n.vec232
  br i1 %cmp.n240, label %.loopexit, label %.lr.ph.i.2.preheader

.lr.ph.i.2.preheader:                             ; preds = %iter.check227, %vector.memcheck199, %vec.epilog.iter.check229, %vec.epilog.middle.block239
  %.5.2.ph = phi ptr [ %i.ce, %iter.check227 ], [ %i.ce, %vector.memcheck199 ], [ %i.cx, %vec.epilog.iter.check229 ], [ %i.de, %vec.epilog.middle.block239 ]
  %indvars.iv16.i.2.ph = phi i64 [ %i.cq, %iter.check227 ], [ %i.cq, %vector.memcheck199 ], [ %i.cy, %vec.epilog.iter.check229 ], [ %i.df, %vec.epilog.middle.block239 ]
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.2.preheader, %.lr.ph.i.2
  %.5.2 = phi ptr [ %i.dl, %.lr.ph.i.2 ], [ %.5.2.ph, %.lr.ph.i.2.preheader ] ; 2 uses
  %indvars.iv16.i.2 = phi i64 [ %indvars.iv.next17.i.2, %.lr.ph.i.2 ], [ %indvars.iv16.i.2.ph, %.lr.ph.i.2.preheader ] ; 2 uses
  %indvars.iv.next17.i.2 = add nsw i64 %indvars.iv16.i.2, -1 ; 2 uses
  %i.dj = getelementptr i8, ptr %i.b, i64 %indvars.iv.next17.i.2
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = getelementptr i8, ptr %.5.2, i64 1      ; 2 uses
  store i8 %i.dk, ptr %.5.2, align 1
  %i.dm = icmp samesign ugt i64 %indvars.iv16.i.2, 1
  br i1 %i.dm, label %.lr.ph.i.2, label %.loopexit, !llvm.loop !48

.loopexit:                                        ; preds = %.lr.ph.i.2, %middle.block223, %vec.epilog.middle.block239, %.preheader.i.2
  %.6.2 = phi ptr [ %i.ce, %.preheader.i.2 ], [ %i.de, %vec.epilog.middle.block239 ], [ %i.cx, %middle.block223 ], [ %i.dl, %.lr.ph.i.2 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.dn = getelementptr i8, ptr %.6.2, i64 1      ; 8 uses
  store i8 46, ptr %.6.2, align 1
  %i.do = getelementptr i8, ptr %2, i64 15
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = zext i8 %i.dp to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.loopexit
  %indvars.iv.i.3 = phi i32 [ %indvars.iv.next.i.3, %bb.f ], [ 1, %.loopexit ] ; 4 uses
  %.011.i.3 = phi i32 [ %i.dx, %bb.f ], [ %i.dq, %.loopexit ] ; 3 uses
  %.0.i.3 = phi i32 [ %i.du, %bb.f ], [ 0, %.loopexit ] ; 3 uses
  %i.dr = urem i32 %.011.i.3, 10
  %i.ds = trunc nuw nsw i32 %i.dr to i8
  %i.dt = or disjoint i8 %i.ds, 48
  %i.du = add i32 %.0.i.3, 1
  %i.dv = sext i32 %.0.i.3 to i64
  %i.dw = getelementptr i8, ptr %i.b, i64 %i.dv
  store i8 %i.dt, ptr %i.dw, align 1
  %i.dx = udiv i32 %.011.i.3, 10
  %.not.i.3 = icmp samesign ult i32 %.011.i.3, 10
  %indvars.iv.next.i.3 = add i32 %indvars.iv.i.3, 1
  br i1 %.not.i.3, label %.preheader.i.3, label %bb.f, !llvm.loop !33

.preheader.i.3:                                   ; preds = %bb.f
  %i.dy = icmp ult i32 %.0.i.3, 2147483647
  br i1 %i.dy, label %iter.check271, label %ip_write_num.exit.3

iter.check271:                                    ; preds = %.preheader.i.3
  %i.dz = zext i32 %indvars.iv.i.3 to i64         ; 9 uses
  %i.ea = add nuw nsw i64 %i.dz, 1
  %i.eb = icmp ne i32 %indvars.iv.i.3, 0
  %umin253.neg = sext i1 %i.eb to i64
  %i.ec = add nsw i64 %i.ea, %umin253.neg         ; 7 uses
  %min.iters.check254 = icmp ult i64 %i.ec, 8
  br i1 %min.iters.check254, label %.lr.ph.i.3.preheader, label %vector.memcheck243

vector.memcheck243:                               ; preds = %iter.check271
  %scevgep244 = getelementptr i8, ptr %.6.2, i64 2
  %i.ed = icmp ne i32 %indvars.iv.i.3, 0          ; 2 uses
  %umin245.neg = sext i1 %i.ed to i64
  %i.ee = getelementptr i8, ptr %scevgep244, i64 %umin245.neg
  %scevgep246 = getelementptr i8, ptr %i.ee, i64 %i.dz
  %not.299 = xor i1 %i.ed, true
  %umin245.sroa.sel.idx = sext i1 %not.299 to i64
  %umin245.sroa.sel = getelementptr i8, ptr %i.b, i64 %umin245.sroa.sel.idx
  %scevgep249 = getelementptr i8, ptr %i.b, i64 %i.dz
  %bound0250 = icmp ult ptr %i.dn, %scevgep249
  %bound1251 = icmp ult ptr %umin245.sroa.sel, %scevgep246
  %found.conflict252 = and i1 %bound0250, %bound1251
  br i1 %found.conflict252, label %.lr.ph.i.3.preheader, label %vector.main.loop.iter.check255

vector.main.loop.iter.check255:                   ; preds = %vector.memcheck243
  %min.iters.check256 = icmp ult i64 %i.ec, 32
  br i1 %min.iters.check256, label %vec.epilog.ph275, label %vector.ph257

vector.ph257:                                     ; preds = %vector.main.loop.iter.check255
  %i.ef = and i64 %i.ec, 24
  %n.vec258 = and i64 %i.ec, -32                  ; 5 uses
  %i.eg = getelementptr i8, ptr %i.dn, i64 %n.vec258 ; 2 uses
  %i.eh = sub nsw i64 %i.dz, %n.vec258
  %invariant.gep313 = getelementptr i8, ptr %i.b, i64 %i.dz
  br label %vector.body259

vector.body259:                                   ; preds = %vector.ph257, %vector.body259
  %index260 = phi i64 [ 0, %vector.ph257 ], [ %index.next266, %vector.body259 ] ; 3 uses
  %next.gep261 = getelementptr i8, ptr %i.dn, i64 %index260 ; 2 uses
  %i.ei = xor i64 %index260, -1
  %gep314 = getelementptr i8, ptr %invariant.gep313, i64 %i.ei ; 2 uses
  %i.ej = getelementptr i8, ptr %gep314, i64 -15
  %i.ek = getelementptr i8, ptr %gep314, i64 -31
  %wide.load262 = load <16 x i8>, ptr %i.ej, align 1, !alias.scope !61
  %wide.load263 = load <16 x i8>, ptr %i.ek, align 1, !alias.scope !61
  %reverse264 = shufflevector <16 x i8> %wide.load262, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse265 = shufflevector <16 x i8> %wide.load263, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.el = getelementptr i8, ptr %next.gep261, i64 16
  store <16 x i8> %reverse264, ptr %next.gep261, align 1, !alias.scope !62, !noalias !61
  store <16 x i8> %reverse265, ptr %i.el, align 1, !alias.scope !62, !noalias !61
  %index.next266 = add nuw i64 %index260, 32      ; 2 uses
  %i.em = icmp eq i64 %index.next266, %n.vec258
  br i1 %i.em, label %middle.block267, label %vector.body259, !llvm.loop !52

middle.block267:                                  ; preds = %vector.body259
  %cmp.n268 = icmp eq i64 %i.ec, %n.vec258
  br i1 %cmp.n268, label %ip_write_num.exit.3, label %vec.epilog.iter.check273

vec.epilog.iter.check273:                         ; preds = %middle.block267
  %min.epilog.iters.check274 = icmp eq i64 %i.ef, 0
  br i1 %min.epilog.iters.check274, label %.lr.ph.i.3.preheader, label %vec.epilog.ph275, !prof !56

vec.epilog.ph275:                                 ; preds = %vector.main.loop.iter.check255, %vec.epilog.iter.check273
  %vec.epilog.resume.val269 = phi i64 [ %n.vec258, %vec.epilog.iter.check273 ], [ 0, %vector.main.loop.iter.check255 ]
  %n.vec276 = and i64 %i.ec, -8                   ; 4 uses
  %i.en = getelementptr i8, ptr %i.dn, i64 %n.vec276 ; 2 uses
  %i.eo = sub nsw i64 %i.dz, %n.vec276
  %invariant.gep315 = getelementptr i8, ptr %i.b, i64 %i.dz
  br label %vec.epilog.vector.body277

vec.epilog.vector.body277:                        ; preds = %vec.epilog.vector.body277, %vec.epilog.ph275
  %index278 = phi i64 [ %vec.epilog.resume.val269, %vec.epilog.ph275 ], [ %index.next282, %vec.epilog.vector.body277 ] ; 3 uses
  %next.gep279 = getelementptr i8, ptr %i.dn, i64 %index278
  %i.ep = xor i64 %index278, -1
  %gep316 = getelementptr i8, ptr %invariant.gep315, i64 %i.ep
  %i.eq = getelementptr i8, ptr %gep316, i64 -7
  %wide.load280 = load <8 x i8>, ptr %i.eq, align 1, !alias.scope !61
  %reverse281 = shufflevector <8 x i8> %wide.load280, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse281, ptr %next.gep279, align 1, !alias.scope !62, !noalias !61
  %index.next282 = add nuw i64 %index278, 8       ; 2 uses
  %i.er = icmp eq i64 %index.next282, %n.vec276
  br i1 %i.er, label %vec.epilog.middle.block283, label %vec.epilog.vector.body277, !llvm.loop !53

vec.epilog.middle.block283:                       ; preds = %vec.epilog.vector.body277
  %cmp.n284 = icmp eq i64 %i.ec, %n.vec276
  br i1 %cmp.n284, label %ip_write_num.exit.3, label %.lr.ph.i.3.preheader

.lr.ph.i.3.preheader:                             ; preds = %iter.check271, %vector.memcheck243, %vec.epilog.iter.check273, %vec.epilog.middle.block283
  %.5.3.ph = phi ptr [ %i.dn, %iter.check271 ], [ %i.dn, %vector.memcheck243 ], [ %i.eg, %vec.epilog.iter.check273 ], [ %i.en, %vec.epilog.middle.block283 ]
  %indvars.iv16.i.3.ph = phi i64 [ %i.dz, %iter.check271 ], [ %i.dz, %vector.memcheck243 ], [ %i.eh, %vec.epilog.iter.check273 ], [ %i.eo, %vec.epilog.middle.block283 ]
  br label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.3.preheader, %.lr.ph.i.3
  %.5.3 = phi ptr [ %i.eu, %.lr.ph.i.3 ], [ %.5.3.ph, %.lr.ph.i.3.preheader ] ; 2 uses
  %indvars.iv16.i.3 = phi i64 [ %indvars.iv.next17.i.3, %.lr.ph.i.3 ], [ %indvars.iv16.i.3.ph, %.lr.ph.i.3.preheader ] ; 2 uses
  %indvars.iv.next17.i.3 = add nsw i64 %indvars.iv16.i.3, -1 ; 2 uses
  %i.es = getelementptr i8, ptr %i.b, i64 %indvars.iv.next17.i.3
  %i.et = load i8, ptr %i.es, align 1
  %i.eu = getelementptr i8, ptr %.5.3, i64 1      ; 2 uses
  store i8 %i.et, ptr %.5.3, align 1
  %i.ev = icmp samesign ugt i64 %indvars.iv16.i.3, 1
  br i1 %i.ev, label %.lr.ph.i.3, label %ip_write_num.exit.3, !llvm.loop !54

ip_write_num.exit.3:                              ; preds = %.lr.ph.i.3, %middle.block267, %vec.epilog.middle.block283, %.preheader.i.3
  %.6.3 = phi ptr [ %i.dn, %.preheader.i.3 ], [ %i.en, %vec.epilog.middle.block283 ], [ %i.eg, %middle.block267 ], [ %i.eu, %.lr.ph.i.3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  %i.ew = ptrtoint ptr %.6.3 to i64
  %i.ex = ptrtoint ptr %i.c to i64
  %i.ey = sub i64 %i.ew, %i.ex                    ; 3 uses
  %.not74 = icmp ult i64 %i.ey, %1
  br i1 %.not74, label %bb.g, label %bb.al

bb.g:                                             ; preds = %ip_write_num.exit.3
  %i.ez = add nuw i64 %i.ey, 1
  br label %.sink.split

bb.h:                                             ; preds = %.preheader102.preheader
  %spec.select.1 = zext i1 %.not130 to i32
  %i.fa = select i1 %.not130, i32 1, i32 2
  br label %.preheader102.2

.preheader102.2:                                  ; preds = %.preheader102.preheader, %bb.h
  %.262.1 = phi i32 [ -1, %bb.h ], [ %.2, %.preheader102.preheader ] ; 2 uses
  %.259.1 = phi i32 [ 0, %bb.h ], [ %.1, %.preheader102.preheader ] ; 3 uses
  %.2.1 = phi i32 [ %spec.select.1, %bb.h ], [ -1, %.preheader102.preheader ] ; 3 uses
  %.1.1 = phi i32 [ %i.fa, %bb.h ], [ 0, %.preheader102.preheader ] ; 3 uses
  %i.fb = getelementptr i8, ptr %2, i64 4
  %5 = load i16, ptr %i.fb, align 1
  %i.fc = icmp eq i16 %5, 0
  br i1 %i.fc, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.preheader102.2
  %i.fd = icmp samesign ugt i32 %.1.1, %.259.1
  %spec.select76.2 = select i1 %i.fd, i32 %.2.1, i32 %.262.1
  %i.fe = tail call i32 @llvm.umax.i32(i32 %.1.1, i32 %.259.1)
  br label %.preheader102.3

bb.j:                                             ; preds = %.preheader102.2
  %i.ff = icmp slt i32 %.2.1, 0
  %spec.select.2 = select i1 %i.ff, i32 2, i32 %.2.1
  %i.fg = add nuw nsw i32 %.1.1, 1
  br label %.preheader102.3

.preheader102.3:                                  ; preds = %bb.j, %bb.i
  %.262.2 = phi i32 [ %.262.1, %bb.j ], [ %spec.select76.2, %bb.i ] ; 2 uses
  %.259.2 = phi i32 [ %.259.1, %bb.j ], [ %i.fe, %bb.i ] ; 3 uses
  %.2.2 = phi i32 [ %spec.select.2, %bb.j ], [ -1, %bb.i ] ; 3 uses
  %.1.2 = phi i32 [ %i.fg, %bb.j ], [ 0, %bb.i ]  ; 3 uses
  %i.fh = getelementptr i8, ptr %2, i64 6
  %6 = load i16, ptr %i.fh, align 1
  %i.fi = icmp eq i16 %6, 0
  br i1 %i.fi, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader102.3
  %i.fj = icmp samesign ugt i32 %.1.2, %.259.2
  %spec.select76.3 = select i1 %i.fj, i32 %.2.2, i32 %.262.2
  %i.fk = tail call i32 @llvm.umax.i32(i32 %.1.2, i32 %.259.2)
  br label %.preheader102.4

bb.l:                                             ; preds = %.preheader102.3
  %i.fl = icmp slt i32 %.2.2, 0
  %spec.select.3 = select i1 %i.fl, i32 3, i32 %.2.2
  %i.fm = add nuw nsw i32 %.1.2, 1
  br label %.preheader102.4

.preheader102.4:                                  ; preds = %bb.l, %bb.k
  %.262.3 = phi i32 [ %.262.2, %bb.l ], [ %spec.select76.3, %bb.k ] ; 2 uses
  %.259.3 = phi i32 [ %.259.2, %bb.l ], [ %i.fk, %bb.k ] ; 3 uses
  %.2.3 = phi i32 [ %spec.select.3, %bb.l ], [ -1, %bb.k ] ; 3 uses
  %.1.3 = phi i32 [ %i.fm, %bb.l ], [ 0, %bb.k ]  ; 3 uses
  %i.fn = getelementptr i8, ptr %2, i64 8
  %7 = load i16, ptr %i.fn, align 1
  %i.fo = icmp eq i16 %7, 0
  br i1 %i.fo, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.preheader102.4
  %i.fp = icmp samesign ugt i32 %.1.3, %.259.3
  %spec.select76.4 = select i1 %i.fp, i32 %.2.3, i32 %.262.3
  %i.fq = tail call i32 @llvm.umax.i32(i32 %.1.3, i32 %.259.3)
  br label %.preheader102.5

bb.n:                                             ; preds = %.preheader102.4
  %i.fr = icmp slt i32 %.2.3, 0
  %spec.select.4 = select i1 %i.fr, i32 4, i32 %.2.3
  %i.fs = add nuw nsw i32 %.1.3, 1
  br label %.preheader102.5

.preheader102.5:                                  ; preds = %bb.n, %bb.m
  %.262.4 = phi i32 [ %.262.3, %bb.n ], [ %spec.select76.4, %bb.m ] ; 2 uses
  %.259.4 = phi i32 [ %.259.3, %bb.n ], [ %i.fq, %bb.m ] ; 3 uses
  %.2.4 = phi i32 [ %spec.select.4, %bb.n ], [ -1, %bb.m ] ; 3 uses
  %.1.4 = phi i32 [ %i.fs, %bb.n ], [ 0, %bb.m ]  ; 3 uses
  %i.ft = getelementptr i8, ptr %2, i64 10
  %8 = load i16, ptr %i.ft, align 1
  %i.fu = icmp eq i16 %8, 0
  br i1 %i.fu, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.preheader102.5
  %i.fv = icmp samesign ugt i32 %.1.4, %.259.4
  %spec.select76.5 = select i1 %i.fv, i32 %.2.4, i32 %.262.4
  %i.fw = tail call i32 @llvm.umax.i32(i32 %.1.4, i32 %.259.4)
  br label %.preheader102.6

bb.p:                                             ; preds = %.preheader102.5
  %i.fx = icmp slt i32 %.2.4, 0
  %spec.select.5 = select i1 %i.fx, i32 5, i32 %.2.4
  %i.fy = add nuw nsw i32 %.1.4, 1
  br label %.preheader102.6

.preheader102.6:                                  ; preds = %bb.p, %bb.o
  %.262.5 = phi i32 [ %.262.4, %bb.p ], [ %spec.select76.5, %bb.o ] ; 2 uses
  %.259.5 = phi i32 [ %.259.4, %bb.p ], [ %i.fw, %bb.o ] ; 3 uses
  %.2.5 = phi i32 [ %spec.select.5, %bb.p ], [ -1, %bb.o ] ; 3 uses
  %.1.5 = phi i32 [ %i.fy, %bb.p ], [ 0, %bb.o ]  ; 3 uses
  %i.fz = getelementptr i8, ptr %2, i64 12
  %9 = load i16, ptr %i.fz, align 1
  %i.ga = icmp eq i16 %9, 0
  br i1 %i.ga, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader102.6
  %i.gb = icmp samesign ugt i32 %.1.5, %.259.5
  %spec.select76.6 = select i1 %i.gb, i32 %.2.5, i32 %.262.5
  %i.gc = tail call i32 @llvm.umax.i32(i32 %.1.5, i32 %.259.5)
  br label %.preheader102.7

bb.r:                                             ; preds = %.preheader102.6
  %i.gd = icmp slt i32 %.2.5, 0
  %spec.select.6 = select i1 %i.gd, i32 6, i32 %.2.5
  %i.ge = add nuw nsw i32 %.1.5, 1
  br label %.preheader102.7

.preheader102.7:                                  ; preds = %bb.r, %bb.q
  %.262.6 = phi i32 [ %.262.5, %bb.r ], [ %spec.select76.6, %bb.q ] ; 2 uses
  %.259.6 = phi i32 [ %.259.5, %bb.r ], [ %i.gc, %bb.q ] ; 3 uses
  %.2.6 = phi i32 [ %spec.select.6, %bb.r ], [ -1, %bb.q ] ; 3 uses
  %.1.6 = phi i32 [ %i.ge, %bb.r ], [ 0, %bb.q ]  ; 3 uses
  %i.gf = getelementptr i8, ptr %2, i64 14
  %10 = load i16, ptr %i.gf, align 1
  %i.gg = icmp eq i16 %10, 0
  br i1 %i.gg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.preheader102.7
  %i.gh = icmp samesign ugt i32 %.1.6, %.259.6
  %spec.select76.7 = select i1 %i.gh, i32 %.2.6, i32 %.262.6
  %i.gi = tail call i32 @llvm.umax.i32(i32 %.1.6, i32 %.259.6)
  br label %bb.u

bb.t:                                             ; preds = %.preheader102.7
  %i.gj = icmp slt i32 %.2.6, 0
  %spec.select.7 = select i1 %i.gj, i32 7, i32 %.2.6
  %i.gk = add nuw nsw i32 %.1.6, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.262.7 = phi i32 [ %.262.6, %bb.t ], [ %spec.select76.7, %bb.s ]
  %.259.7 = phi i32 [ %.259.6, %bb.t ], [ %i.gi, %bb.s ] ; 2 uses
  %.2.7 = phi i32 [ %spec.select.7, %bb.t ], [ -1, %bb.s ]
  %.1.7 = phi i32 [ %i.gk, %bb.t ], [ 0, %bb.s ]  ; 2 uses
  %i.gl = icmp samesign ugt i32 %.1.7, %.259.7
  %spec.select78 = select i1 %i.gl, i32 %.2.7, i32 %.262.7
  %i.gm = tail call i32 @llvm.umax.i32(i32 %.1.7, i32 %.259.7) ; 3 uses
  %i.gn = icmp samesign ult i32 %i.gm, 2
  %.4 = select i1 %i.gn, i32 -1, i32 %spec.select78
  %.4.fr = freeze i32 %.4                         ; 5 uses
  %i.go = icmp sgt i32 %.4.fr, -1
  %i.gp = add nuw i32 %.4.fr, %i.gm
  %i.gq = add nsw i32 %i.gm, -1
  %i.gr = add i32 %i.gq, %.4.fr                   ; 2 uses
  br i1 %i.go, label %.split.preheader, label %.split.us.preheader

.split.us.preheader:                              ; preds = %bb.u
  %i.gs = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  br label %.split.us

.split.preheader:                                 ; preds = %bb.u
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  br label %.split

.split.us:                                        ; preds = %.split.us.preheader, %bb.ac
  %.266110.us = phi i32 [ %i.ix, %bb.ac ], [ 0, %.split.us.preheader ] ; 4 uses
  %.2100109.us = phi ptr [ %.4101.us, %bb.ac ], [ %i.c, %.split.us.preheader ] ; 6 uses
  %i.gy = icmp eq i32 %.266110.us, %.4.fr
  br i1 %i.gy, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %.split.us
  %.not72.us = icmp eq i32 %.266110.us, 0
  br i1 %.not72.us, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gz = getelementptr i8, ptr %.2100109.us, i64 1
  store i8 58, ptr %.2100109.us, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.3.us = phi ptr [ %.2100109.us, %bb.v ], [ %i.gz, %bb.w ] ; 5 uses
  %i.ha = shl i32 %.266110.us, 1
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr i8, ptr %2, i64 %i.hb
  %11 = load i16, ptr %i.hc, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)    ; 5 uses
  %i.hd = zext i16 %12 to i32                     ; 4 uses
  %i.he = and i32 %i.hd, 15                       ; 3 uses
  %i.hf = icmp samesign ult i32 %i.he, 10
  %i.hg = or disjoint i32 %i.he, 48
  %i.hh = add nuw nsw i32 %i.he, 87
  %i.hi = select i1 %i.hf, i32 %i.hg, i32 %i.hh
  %i.hj = trunc nuw nsw i32 %i.hi to i8
  store i8 %i.hj, ptr %i.a, align 1
  %.not.i83.us = icmp ult i16 %12, 16
  br i1 %.not.i83.us, label %.lr.ph.i87.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hk = lshr i32 %i.hd, 4
  %13 = and i32 %i.hk, 15                         ; 3 uses
  %i.hl = icmp samesign ult i32 %13, 10
  %i.hm = or disjoint i32 %13, 48
  %i.hn = add nuw nsw i32 %13, 87
  %i.ho = select i1 %i.hl, i32 %i.hm, i32 %i.hn
  %i.hp = trunc nuw nsw i32 %i.ho to i8
  store i8 %i.hp, ptr %i.gs, align 1
  %.not.i83.us.1 = icmp ult i16 %12, 256
  br i1 %.not.i83.us.1, label %.lr.ph.i87.us, label %bb.z

bb.z:                                             ; preds = %bb.y
  %14 = lshr i32 %i.hd, 8
  %i.hq = and i32 %14, 15                         ; 3 uses
  %i.hr = icmp samesign ult i32 %i.hq, 10
  %i.hs = or disjoint i32 %i.hq, 48
  %i.ht = add nuw nsw i32 %i.hq, 87
  %i.hu = select i1 %i.hr, i32 %i.hs, i32 %i.ht
  %i.hv = trunc nuw nsw i32 %i.hu to i8
  store i8 %i.hv, ptr %i.gt, align 1
  %.not.i83.us.2 = icmp ult i16 %12, 4096
  br i1 %.not.i83.us.2, label %.lr.ph.i87.us, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hw = lshr i32 %i.hd, 12                      ; 2 uses
  %i.hx = icmp ult i16 %12, -24576
  %i.hy = or disjoint i32 %i.hw, 48
  %i.hz = add nuw nsw i32 %i.hw, 87
  %i.ia = select i1 %i.hx, i32 %i.hy, i32 %i.hz
  %i.ib = trunc nuw nsw i32 %i.ia to i8
  store i8 %i.ib, ptr %i.gu, align 1
  br label %.lr.ph.i87.us

.lr.ph.i87.us:                                    ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.ic = phi i1 [ false, %bb.x ], [ true, %bb.y ], [ true, %bb.z ], [ true, %bb.aa ]
  %i.id = phi i1 [ false, %bb.x ], [ false, %bb.y ], [ true, %bb.z ], [ true, %bb.aa ]
  %i.ie = phi i1 [ false, %bb.x ], [ false, %bb.y ], [ false, %bb.z ], [ true, %bb.aa ]
  %indvars.iv.i80.us.lcssa = phi i64 [ 1, %bb.x ], [ 2, %bb.y ], [ 3, %bb.z ], [ 4, %bb.aa ] ; 4 uses
  %i.if = getelementptr i8, ptr %i.a, i64 %indvars.iv.i80.us.lcssa
  %i.ig = getelementptr i8, ptr %i.if, i64 -1
  %i.ih = load i8, ptr %i.ig, align 1
  %i.ii = getelementptr i8, ptr %.3.us, i64 1     ; 2 uses
  store i8 %i.ih, ptr %.3.us, align 1
  br i1 %i.ic, label %.lr.ph.i87.us.1, label %ip_write_num.exit90.us

.lr.ph.i87.us.1:                                  ; preds = %.lr.ph.i87.us
  %i.ij = getelementptr i8, ptr %i.a, i64 %indvars.iv.i80.us.lcssa
  %i.ik = getelementptr i8, ptr %i.ij, i64 -2
  %i.il = load i8, ptr %i.ik, align 1
  %i.im = getelementptr i8, ptr %.3.us, i64 2     ; 2 uses
  store i8 %i.il, ptr %i.ii, align 1
  br i1 %i.id, label %.lr.ph.i87.us.2, label %ip_write_num.exit90.us

.lr.ph.i87.us.2:                                  ; preds = %.lr.ph.i87.us.1
  %i.in = getelementptr i8, ptr %i.a, i64 %indvars.iv.i80.us.lcssa
  %i.io = getelementptr i8, ptr %i.in, i64 -3
  %i.ip = load i8, ptr %i.io, align 1
  %i.iq = getelementptr i8, ptr %.3.us, i64 3     ; 2 uses
  store i8 %i.ip, ptr %i.im, align 1
  br i1 %i.ie, label %.lr.ph.i87.us.3, label %ip_write_num.exit90.us

.lr.ph.i87.us.3:                                  ; preds = %.lr.ph.i87.us.2
  %i.ir = getelementptr i8, ptr %i.a, i64 %indvars.iv.i80.us.lcssa
  %i.is = getelementptr i8, ptr %i.ir, i64 -4
  %i.it = load i8, ptr %i.is, align 1
  %i.iu = getelementptr i8, ptr %.3.us, i64 4
  store i8 %i.it, ptr %i.iq, align 1
  br label %ip_write_num.exit90.us

ip_write_num.exit90.us:                           ; preds = %.lr.ph.i87.us, %.lr.ph.i87.us.1, %.lr.ph.i87.us.2, %.lr.ph.i87.us.3
  %.lcssa292 = phi ptr [ %i.ii, %.lr.ph.i87.us ], [ %i.im, %.lr.ph.i87.us.1 ], [ %i.iq, %.lr.ph.i87.us.2 ], [ %i.iu, %.lr.ph.i87.us.3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.ac

bb.ab:                                            ; preds = %.split.us
  %i.iv = getelementptr i8, ptr %.2100109.us, i64 1
  store i8 58, ptr %.2100109.us, align 1
  %i.iw = getelementptr i8, ptr %.2100109.us, i64 2
  store i8 58, ptr %i.iv, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %ip_write_num.exit90.us
  %.4101.us = phi ptr [ %i.iw, %bb.ab ], [ %.lcssa292, %ip_write_num.exit90.us ] ; 2 uses
  %.367.us = phi i32 [ %i.gr, %bb.ab ], [ %.266110.us, %ip_write_num.exit90.us ]
  %i.ix = add i32 %.367.us, 1                     ; 2 uses
  %i.iy = icmp slt i32 %i.ix, 8
  br i1 %i.iy, label %.split.us, label %.split112.us, !llvm.loop !55

.split:                                           ; preds = %.split.preheader, %bb.ak
  %.266110 = phi i32 [ %i.ky, %bb.ak ], [ 0, %.split.preheader ] ; 5 uses
  %.2100109 = phi ptr [ %.4101, %bb.ak ], [ %i.c, %.split.preheader ] ; 6 uses
  %i.iz = icmp eq i32 %.266110, %.4.fr
  br i1 %i.iz, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.split
  %i.ja = getelementptr i8, ptr %.2100109, i64 1
  store i8 58, ptr %.2100109, align 1
  %i.jb = getelementptr i8, ptr %.2100109, i64 2
  store i8 58, ptr %i.ja, align 1
  br label %bb.ak

bb.ae:                                            ; preds = %.split
  %.not72 = icmp eq i32 %.266110, 0
  %.not73 = icmp eq i32 %.266110, %i.gp
  %or.cond = select i1 %.not72, i1 true, i1 %.not73
  br i1 %or.cond, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jc = getelementptr i8, ptr %.2100109, i64 1
  store i8 58, ptr %.2100109, align 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.3 = phi ptr [ %.2100109, %bb.ae ], [ %i.jc, %bb.af ] ; 5 uses
  %i.jd = shl nuw nsw i32 %.266110, 1
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = getelementptr i8, ptr %2, i64 %i.je
  %15 = load i16, ptr %i.jf, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)    ; 5 uses
  %i.jg = zext i16 %16 to i32                     ; 4 uses
  %i.jh = and i32 %i.jg, 15                       ; 3 uses
  %i.ji = icmp samesign ult i32 %i.jh, 10
  %i.jj = or disjoint i32 %i.jh, 48
  %i.jk = add nuw nsw i32 %i.jh, 87
  %i.jl = select i1 %i.ji, i32 %i.jj, i32 %i.jk
  %i.jm = trunc nuw nsw i32 %i.jl to i8
  store i8 %i.jm, ptr %i.a, align 1
  %.not.i83 = icmp ult i16 %16, 16
  br i1 %.not.i83, label %.lr.ph.i87, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jn = lshr i32 %i.jg, 4
  %17 = and i32 %i.jn, 15                         ; 3 uses
  %i.jo = icmp samesign ult i32 %17, 10
  %i.jp = or disjoint i32 %17, 48
  %i.jq = add nuw nsw i32 %17, 87
  %i.jr = select i1 %i.jo, i32 %i.jp, i32 %i.jq
  %i.js = trunc nuw nsw i32 %i.jr to i8
  store i8 %i.js, ptr %i.gv, align 1
  %.not.i83.1 = icmp ult i16 %16, 256
  br i1 %.not.i83.1, label %.lr.ph.i87, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %18 = lshr i32 %i.jg, 8
  %i.jt = and i32 %18, 15                         ; 3 uses
  %i.ju = icmp samesign ult i32 %i.jt, 10
  %i.jv = or disjoint i32 %i.jt, 48
  %i.jw = add nuw nsw i32 %i.jt, 87
  %i.jx = select i1 %i.ju, i32 %i.jv, i32 %i.jw
  %i.jy = trunc nuw nsw i32 %i.jx to i8
  store i8 %i.jy, ptr %i.gw, align 1
  %.not.i83.2 = icmp ult i16 %16, 4096
  br i1 %.not.i83.2, label %.lr.ph.i87, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jz = lshr i32 %i.jg, 12                      ; 2 uses
  %i.ka = icmp ult i16 %16, -24576
  %i.kb = or disjoint i32 %i.jz, 48
  %i.kc = add nuw nsw i32 %i.jz, 87
  %i.kd = select i1 %i.ka, i32 %i.kb, i32 %i.kc
  %i.ke = trunc nuw nsw i32 %i.kd to i8
  store i8 %i.ke, ptr %i.gx, align 1
  br label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %i.kf = phi i1 [ false, %bb.ag ], [ true, %bb.ah ], [ true, %bb.ai ], [ true, %bb.aj ]
  %i.kg = phi i1 [ false, %bb.ag ], [ false, %bb.ah ], [ true, %bb.ai ], [ true, %bb.aj ]
  %i.kh = phi i1 [ false, %bb.ag ], [ false, %bb.ah ], [ false, %bb.ai ], [ true, %bb.aj ]
  %indvars.iv.i80.lcssa = phi i64 [ 1, %bb.ag ], [ 2, %bb.ah ], [ 3, %bb.ai ], [ 4, %bb.aj ] ; 4 uses
  %i.ki = getelementptr i8, ptr %i.a, i64 %indvars.iv.i80.lcssa
  %i.kj = getelementptr i8, ptr %i.ki, i64 -1
  %i.kk = load i8, ptr %i.kj, align 1
  %i.kl = getelementptr i8, ptr %.3, i64 1        ; 2 uses
  store i8 %i.kk, ptr %.3, align 1
  br i1 %i.kf, label %.lr.ph.i87.1, label %ip_write_num.exit90

.lr.ph.i87.1:                                     ; preds = %.lr.ph.i87
  %i.km = getelementptr i8, ptr %i.a, i64 %indvars.iv.i80.lcssa
  %i.kn = getelementptr i8, ptr %i.km, i64 -2
  %i.ko = load i8, ptr %i.kn, align 1
  %i.kp = getelementptr i8, ptr %.3, i64 2        ; 2 uses
  store i8 %i.ko, ptr %i.kl, align 1
  br i1 %i.kg, label %.lr.ph.i87.2, label %ip_write_num.exit90

.lr.ph.i87.2:                                     ; preds = %.lr.ph.i87.1
  %i.kq = getelementptr i8, ptr %i.a, i64 %indvars.iv.i80.lcssa
  %i.kr = getelementptr i8, ptr %i.kq, i64 -3
  %i.ks = load i8, ptr %i.kr, align 1
  %i.kt = getelementptr i8, ptr %.3, i64 3        ; 2 uses
  store i8 %i.ks, ptr %i.kp, align 1
  br i1 %i.kh, label %.lr.ph.i87.3, label %ip_write_num.exit90

.lr.ph.i87.3:                                     ; preds = %.lr.ph.i87.2
  %i.ku = getelementptr i8, ptr %i.a, i64 %indvars.iv.i80.lcssa
  %i.kv = getelementptr i8, ptr %i.ku, i64 -4
  %i.kw = load i8, ptr %i.kv, align 1
  %i.kx = getelementptr i8, ptr %.3, i64 4
  store i8 %i.kw, ptr %i.kt, align 1
  br label %ip_write_num.exit90

ip_write_num.exit90:                              ; preds = %.lr.ph.i87, %.lr.ph.i87.1, %.lr.ph.i87.2, %.lr.ph.i87.3
  %.lcssa290 = phi ptr [ %i.kl, %.lr.ph.i87 ], [ %i.kp, %.lr.ph.i87.1 ], [ %i.kt, %.lr.ph.i87.2 ], [ %i.kx, %.lr.ph.i87.3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.ak

bb.ak:                                            ; preds = %ip_write_num.exit90, %bb.ad
  %.4101 = phi ptr [ %i.jb, %bb.ad ], [ %.lcssa290, %ip_write_num.exit90 ] ; 2 uses
  %.367 = phi i32 [ %i.gr, %bb.ad ], [ %.266110, %ip_write_num.exit90 ] ; 2 uses
  %i.ky = add nsw i32 %.367, 1
  %i.kz = icmp slt i32 %.367, 7
  br i1 %i.kz, label %.split, label %.split112.us, !llvm.loop !55

.split112.us:                                     ; preds = %bb.ac, %bb.ak
  %.us-phi = phi ptr [ %.4101, %bb.ak ], [ %.4101.us, %bb.ac ]
  %i.la = ptrtoint ptr %.us-phi to i64
  %i.lb = ptrtoint ptr %i.c to i64
  %i.lc = sub i64 %i.la, %i.lb                    ; 3 uses
  %.not = icmp ult i64 %i.lc, %1
  br i1 %.not, label %.sink.split, label %bb.al

.sink.split:                                      ; preds = %.split112.us, %bb.g
  %.sink = phi i64 [ %i.ez, %bb.g ], [ %i.lc, %.split112.us ]
  %.sink139 = phi i64 [ %i.ey, %bb.g ], [ %i.lc, %.split112.us ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 16 %i.c, i64 noundef %.sink, i1 noundef false) #16
  %i.ld = getelementptr i8, ptr %0, i64 %.sink139
  store i8 0, ptr %i.ld, align 1
  br label %bb.al

bb.al:                                            ; preds = %.sink.split, %.split112.us, %ip_write_num.exit.3, %bb.a
  %.068 = phi ptr [ null, %ip_write_num.exit.3 ], [ null, %bb.a ], [ null, %.split112.us ], [ %0, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  ret ptr %.068
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nofree nounwind
declare ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind ssp memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind ssp memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind ssp memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!"llvm.loop.isvectorized", i32 1}
!6 = !{!"llvm.loop.unroll.runtime.disable"}
!7 = distinct !{!7, !"LVerDomain"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !4, !5, !6}
!11 = distinct !{!11, !4, !5}
!12 = !{!8}
!13 = !{!9}
!14 = distinct !{!14, !4, !16}
!15 = distinct !{!15, !4}
!16 = !{!"llvm.loop.peeled.count", i32 1}
!17 = distinct !{!17, !4}
!18 = distinct !{!18, !4, !5, !6}
!19 = distinct !{!19, !4, !5, !6}
!20 = distinct !{!20, !4, !6, !5}
!21 = distinct !{!21, !4}
!22 = distinct !{!22, !4, !5, !6}
!23 = distinct !{!23, !4, !5, !6}
!24 = distinct !{!24, !4, !6, !5}
!25 = !{!"branch_weights", i32 4, i32 12}
!26 = distinct !{!26, !4}
!27 = distinct !{!27, !4}
!28 = distinct !{!28, !4}
!29 = distinct !{!29, !4}
!30 = distinct !{!30, !4}
!31 = distinct !{!31, !4}
!32 = distinct !{!32, !4}
!33 = distinct !{!33, !4}
!34 = distinct !{!34, !4, !5, !6}
!35 = distinct !{!35, !4, !5, !6}
!36 = distinct !{!36, !4, !6, !5}
!37 = distinct !{!37, !"LVerDomain"}
!38 = distinct !{!38, !37}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !4, !5, !6}
!41 = distinct !{!41, !4, !5, !6}
!42 = distinct !{!42, !4, !5}
!43 = distinct !{!43, !"LVerDomain"}
!44 = distinct !{!44, !43}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !4, !5, !6}
!47 = distinct !{!47, !4, !5, !6}
!48 = distinct !{!48, !4, !5}
!49 = distinct !{!49, !"LVerDomain"}
!50 = distinct !{!50, !49}
!51 = distinct !{!51, !49}
!52 = distinct !{!52, !4, !5, !6}
!53 = distinct !{!53, !4, !5, !6}
!54 = distinct !{!54, !4, !5}
!55 = distinct !{!55, !4}
!56 = !{!"branch_weights", i32 8, i32 24}
!57 = !{!38}
!58 = !{!39}
!59 = !{!44}
!60 = !{!45}
!61 = !{!50}
!62 = !{!51}
end_hunk_1
