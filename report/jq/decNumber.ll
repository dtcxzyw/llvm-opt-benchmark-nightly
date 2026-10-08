Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/decNumber?download=true
inline.NumInlined: 166
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@decSetCoeff:bb.a
  store <4 x i16> %wide.load271, ptr %next.gep269, align 2, !tbaa !21
  %index.next272 = add nuw i64 %index268, 4       ; 2 uses
  %i.ae = icmp eq i64 %index.next272, %n.vec266
  br i1 %i.ae, label %vec.epilog.middle.block273, label %vec.epilog.vector.body267, !llvm.loop !48

vec.epilog.middle.block273:                       ; preds = %vec.epilog.vector.body267
  %cmp.n274 = icmp eq i64 %n.vec266, %i.j
  br i1 %cmp.n274, label %._crit_edge172, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %iter.check261, %vector.memcheck240, %vec.epilog.iter.check263, %vec.epilog.middle.block273
  %.0116170.ph = phi i32 [ %3, %iter.check261 ], [ %3, %vector.memcheck240 ], [ %i.p, %vec.epilog.iter.check263 ], [ %i.z, %vec.epilog.middle.block273 ]
  %.0118169.ph = phi ptr [ %i.f, %iter.check261 ], [ %i.f, %vector.memcheck240 ], [ %i.r, %vec.epilog.iter.check263 ], [ %i.ab, %vec.epilog.middle.block273 ]
  %.0121168.ph = phi ptr [ %2, %iter.check261 ], [ %2, %vector.memcheck240 ], [ %i.s, %vec.epilog.iter.check263 ], [ %i.ac, %vec.epilog.middle.block273 ]
  br label %.lr.ph171

.lr.ph171:                                        ; preds = %.lr.ph171.preheader, %.lr.ph171
  %.0116170 = phi i32 [ %i.ai, %.lr.ph171 ], [ %.0116170.ph, %.lr.ph171.preheader ] ; 2 uses
  %.0118169 = phi ptr [ %i.ag, %.lr.ph171 ], [ %.0118169.ph, %.lr.ph171.preheader ] ; 2 uses
  %.0121168 = phi ptr [ %i.ah, %.lr.ph171 ], [ %.0121168.ph, %.lr.ph171.preheader ] ; 2 uses
  %i.af = load i16, ptr %.0121168, align 2, !tbaa !21
  store i16 %i.af, ptr %.0118169, align 2, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %.0118169, i64 2
  %i.ah = getelementptr inbounds nuw i8, ptr %.0121168, i64 2
  %i.ai = add nsw i32 %.0116170, -3
  %i.aj = icmp samesign ugt i32 %.0116170, 3
  br i1 %i.aj, label %.lr.ph171, label %._crit_edge172, !llvm.loop !49

._crit_edge172:                                   ; preds = %.lr.ph171, %middle.block255, %vec.epilog.middle.block273, %.preheader
  store i32 %3, ptr %0, align 4, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge172, %bb.b
  %i.ak = load i32, ptr %4, align 4, !tbaa !23
  %.not147 = icmp eq i32 %i.ak, 0
  br i1 %.not147, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = load i32, ptr %5, align 4, !tbaa !23
  %i.am = or i32 %i.al, 2080
  store i32 %i.am, ptr %5, align 4, !tbaa !23
  br label %bb.z

bb.e:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !18
  %i.ap = add nsw i32 %i.ao, %i.d
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !18
  %i.aq = load i32, ptr %5, align 4, !tbaa !23
  %i.ar = or i32 %i.aq, 2048
  store i32 %i.ar, ptr %5, align 4, !tbaa !23
  %i.as = load i32, ptr %4, align 4, !tbaa !23    ; 4 uses
  %i.at = icmp sgt i32 %i.as, 1
  br i1 %i.at, label %.thread188, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = icmp slt i32 %i.c, 0
  br i1 %i.au, label %bb.i, label %.preheader151

.thread188:                                       ; preds = %bb.e
  store i32 1, ptr %4, align 4, !tbaa !23
  %i.av = icmp slt i32 %i.c, 0
  br i1 %i.av, label %.thread, label %.preheader151

.preheader151:                                    ; preds = %.thread188, %bb.f
  %.pr190 = phi i32 [ 1, %.thread188 ], [ %i.as, %bb.f ] ; 5 uses
  %.not152 = icmp samesign ugt i32 %i.d, 3
  br i1 %.not152, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader151
  %i.aw = add i32 %3, -4
  %i.ax = sub i32 %i.aw, %i.c                     ; 2 uses
  %i.ay = udiv i32 %i.ax, 3
  %i.az = zext nneg i32 %i.ay to i64              ; 2 uses
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ax, 153
  br i1 %min.iters.check, label %.lr.ph.preheader282, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.bb = getelementptr i8, ptr %4, i64 4
  %i.bc = shl nuw nsw i64 %i.az, 1
  %i.bd = getelementptr i8, ptr %2, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 2
  %bound0 = icmp ult ptr %4, %i.be
  %bound1 = icmp ult ptr %2, %i.bb
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader282, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ba, 4294967292              ; 4 uses
  %i.bf = trunc nuw i64 %n.vec to i32
  %i.bg = mul i32 %i.bf, 3                        ; 2 uses
  %i.bh = or disjoint i32 %i.bg, 3
  %i.bi = shl nuw nsw i64 %n.vec, 1
  %i.bj = getelementptr i8, ptr %2, i64 %i.bi     ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.pr190, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %bb.h, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %bb.h ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %i.bq, %bb.h ]
  %i.bk = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.bp, %bb.h ]
  %i.bl = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %2, i64 %i.bl
  %wide.load = load <4 x i16>, ptr %next.gep, align 2, !tbaa !21, !alias.scope !59
  %wide.load.fr = freeze <4 x i16> %wide.load
  %i.bm = icmp ne <4 x i16> %wide.load.fr, zeroinitializer ; 3 uses
  %i.bn = bitcast <4 x i1> %i.bm to i4
  %.not280 = icmp eq i4 %i.bn, 0
  br i1 %.not280, label %bb.h, label %bb.g

bb.g:                                             ; preds = %vector.body
  store i32 1, ptr %4, align 4, !tbaa !23, !alias.scope !60, !noalias !59
  br label %bb.h

bb.h:                                             ; preds = %vector.body, %bb.g
  %i.bo = bitcast <4 x i1> %i.bm to i4
  %.not278 = icmp eq i4 %i.bo, 0                  ; 2 uses
  %i.bp = select i1 %.not278, <4 x i1> %i.bk, <4 x i1> %i.bm ; 2 uses
  %i.bq = select i1 %.not278, <4 x i32> %vec.phi, <4 x i32> splat (i32 1) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %bb.h
  %i.bs = tail call i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32> %i.bq, <4 x i1> %i.bp, i32 %.pr190) ; 2 uses
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader282

.lr.ph.preheader282:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.ph = phi i32 [ %.pr190, %vector.memcheck ], [ %.pr190, %.lr.ph.preheader ], [ %i.bs, %middle.block ]
  %.ph283 = phi i32 [ 3, %vector.memcheck ], [ 3, %.lr.ph.preheader ], [ %i.bh, %middle.block ]
  %.2123153.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph

bb.i:                                             ; preds = %bb.f
  %.not199 = icmp eq i32 %i.as, 1
  br i1 %.not199, label %.thread, label %.preheader149

.preheader149:                                    ; preds = %bb.i
  %i.bt = icmp sgt i32 %3, 0
  br i1 %i.bt, label %.lr.ph166, label %._crit_edge167

.lr.ph166:                                        ; preds = %.preheader149, %bb.k
  %.1117165 = phi i32 [ %i.bw, %bb.k ], [ %3, %.preheader149 ] ; 2 uses
  %.1122164 = phi ptr [ %i.bv, %bb.k ], [ %2, %.preheader149 ] ; 2 uses
  %i.bu = load i16, ptr %.1122164, align 2, !tbaa !21
  %.not144 = icmp eq i16 %i.bu, 0
  br i1 %.not144, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph166
  store i32 1, ptr %4, align 4, !tbaa !23
  br label %.thread

bb.k:                                             ; preds = %.lr.ph166
  %i.bv = getelementptr inbounds nuw i8, ptr %.1122164, i64 2
  %i.bw = add nsw i32 %.1117165, -3
  %i.bx = icmp sgt i32 %.1117165, 3
  br i1 %i.bx, label %.lr.ph166, label %._crit_edge167, !llvm.loop !54

._crit_edge167:                                   ; preds = %bb.k, %.preheader149
  %.not145 = icmp eq i32 %i.as, 0
  br i1 %.not145, label %bb.l, label %.thread

.thread:                                          ; preds = %.thread188, %bb.i, %bb.j, %._crit_edge167
  %i.by = load i32, ptr %5, align 4, !tbaa !23
  %i.bz = or i32 %i.by, 32
  store i32 %i.bz, ptr %5, align 4, !tbaa !23
  br label %bb.l

bb.l:                                             ; preds = %.thread, %._crit_edge167
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.ca, align 2, !tbaa !21
  store i32 1, ptr %0, align 4, !tbaa !19
  br label %bb.z

.lr.ph:                                           ; preds = %.lr.ph.preheader282, %bb.n
  %i.cb = phi i32 [ %i.ce, %bb.n ], [ %.ph, %.lr.ph.preheader282 ]
  %i.cc = phi i32 [ %i.cg, %bb.n ], [ %.ph283, %.lr.ph.preheader282 ] ; 2 uses
  %.2123153 = phi ptr [ %i.cf, %bb.n ], [ %.2123153.ph, %.lr.ph.preheader282 ] ; 2 uses
  %i.cd = load i16, ptr %.2123153, align 2, !tbaa !21
  %.not139 = icmp eq i16 %i.cd, 0
  br i1 %.not139, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  store i32 1, ptr %4, align 4, !tbaa !23
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %i.ce = phi i32 [ %i.cb, %.lr.ph ], [ 1, %bb.m ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.2123153, i64 2 ; 2 uses
  %i.cg = add nuw nsw i32 %i.cc, 3                ; 2 uses
  %.not = icmp slt i32 %i.cg, %i.d
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %bb.n, %middle.block, %.preheader151
  %i.ch = phi i32 [ %.pr190, %.preheader151 ], [ %i.bs, %middle.block ], [ %i.ce, %bb.n ] ; 3 uses
  %.2123.lcssa = phi ptr [ %2, %.preheader151 ], [ %i.bj, %middle.block ], [ %i.cf, %bb.n ] ; 11 uses
  %.2.lcssa = phi i32 [ 0, %.preheader151 ], [ %i.bg, %middle.block ], [ %i.cc, %bb.n ]
  %.2123.lcssa212 = ptrtoaddr ptr %.2123.lcssa to i64
  %i.ci = sub nuw nsw i32 %i.d, %.2.lcssa         ; 5 uses
  %i.cj = add nsw i32 %i.ci, -1                   ; 3 uses
  switch i32 %i.cj, label %bb.t [
    i32 2, label %bb.o
    i32 0, label %bb.s
  ]

bb.o:                                             ; preds = %._crit_edge
  %i.ck = load i32, ptr getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 12), align 4, !tbaa !23
  %i.cl = lshr i32 %i.ck, 1
  %i.cm = load i16, ptr %.2123.lcssa, align 2, !tbaa !21 ; 2 uses
  %i.cn = zext i16 %i.cm to i32                   ; 2 uses
  %i.co = and i32 %i.cl, 32767                    ; 2 uses
  %.not141 = icmp samesign ugt i32 %i.co, %i.cn
  br i1 %.not141, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = icmp samesign ult i32 %i.co, %i.cn
  %i.cq = add nsw i32 %i.ch, 5
  %spec.select198 = select i1 %i.cp, i32 7, i32 %i.cq
  br label %.sink.split

bb.q:                                             ; preds = %bb.o
  %.not142 = icmp eq i16 %i.cm, 0
  br i1 %.not142, label %bb.r, label %.sink.split

.sink.split:                                      ; preds = %bb.p, %bb.q
  %.sink = phi i32 [ %spec.select198, %bb.p ], [ 3, %bb.q ]
  store i32 %.sink, ptr %4, align 4, !tbaa !23
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.q
  %i.cr = load i32, ptr %1, align 4, !tbaa !27    ; 9 uses
  %i.cs = icmp slt i32 %i.cr, 1
  br i1 %i.cs, label %.loopexit.sink.split, label %iter.check

iter.check:                                       ; preds = %bb.r
  store i32 %i.cr, ptr %0, align 4, !tbaa !19
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 6 uses
  %i.cu = add nsw i32 %i.cr, -1
  %i.cv = udiv i32 %i.cu, 3
  %narrow = add nuw nsw i32 %i.cv, 1
  %i.cw = zext nneg i32 %narrow to i64            ; 5 uses
  %min.iters.check214 = icmp ult i32 %i.cr, 10
  br i1 %min.iters.check214, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck211

vector.memcheck211:                               ; preds = %iter.check
  %i.cx = sub i64 %i.b, %.2123.lcssa212
  %i.cy = add i64 %i.cx, 7
  %diff.check = icmp ult i64 %i.cy, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck211
  %min.iters.check215 = icmp ult i32 %i.cr, 46
  br i1 %min.iters.check215, label %vec.epilog.ph, label %vector.ph216

vector.ph216:                                     ; preds = %vector.main.loop.iter.check
  %i.cz = and i64 %i.cw, 12
  %n.vec217 = and i64 %i.cw, 2147483632           ; 5 uses
  %i.da = trunc nuw nsw i64 %n.vec217 to i32
  %i.db = mul i32 %i.da, -3
  %i.dc = add i32 %i.cr, %i.db
  %i.dd = shl nuw nsw i64 %n.vec217, 1            ; 2 uses
  %i.de = getelementptr i8, ptr %i.ct, i64 %i.dd
  %i.df = getelementptr i8, ptr %.2123.lcssa, i64 %i.dd
  br label %vector.body218

vector.body218:                                   ; preds = %vector.ph216, %vector.body218
  %index219 = phi i64 [ 0, %vector.ph216 ], [ %index.next224, %vector.body218 ] ; 2 uses
  %i.dg = shl i64 %index219, 1                    ; 2 uses
  %next.gep220 = getelementptr i8, ptr %i.ct, i64 %i.dg ; 2 uses
  %next.gep221 = getelementptr i8, ptr %.2123.lcssa, i64 %i.dg ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %next.gep221, i64 2
  %i.di = getelementptr inbounds nuw i8, ptr %next.gep221, i64 18
  %wide.load222 = load <8 x i16>, ptr %i.dh, align 2, !tbaa !21
  %wide.load223 = load <8 x i16>, ptr %i.di, align 2, !tbaa !21
  %i.dj = getelementptr i8, ptr %next.gep220, i64 16
  store <8 x i16> %wide.load222, ptr %next.gep220, align 2, !tbaa !21
  store <8 x i16> %wide.load223, ptr %i.dj, align 2, !tbaa !21
  %index.next224 = add nuw i64 %index219, 16      ; 2 uses
  %i.dk = icmp eq i64 %index.next224, %n.vec217
  br i1 %i.dk, label %middle.block225, label %vector.body218, !llvm.loop !56

middle.block225:                                  ; preds = %vector.body218
  %cmp.n226 = icmp eq i64 %n.vec217, %i.cw
  br i1 %cmp.n226, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block225
  %min.epilog.iters.check = icmp eq i64 %i.cz, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !33

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec217, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec230 = and i64 %i.cw, 2147483644           ; 4 uses
  %i.dl = trunc nuw nsw i64 %n.vec230 to i32
  %i.dm = mul i32 %i.dl, -3
  %i.dn = add i32 %i.cr, %i.dm
  %i.do = shl nuw nsw i64 %n.vec230, 1            ; 2 uses
  %i.dp = getelementptr i8, ptr %i.ct, i64 %i.do
  %i.dq = getelementptr i8, ptr %.2123.lcssa, i64 %i.do
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index231 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next235, %vec.epilog.vector.body ] ; 2 uses
  %i.dr = shl i64 %index231, 1                    ; 2 uses
  %next.gep232 = getelementptr i8, ptr %i.ct, i64 %i.dr
  %next.gep233 = getelementptr i8, ptr %.2123.lcssa, i64 %i.dr
  %i.ds = getelementptr inbounds nuw i8, ptr %next.gep233, i64 2
  %wide.load234 = load <4 x i16>, ptr %i.ds, align 2, !tbaa !21
  store <4 x i16> %wide.load234, ptr %next.gep232, align 2, !tbaa !21
  %index.next235 = add nuw i64 %index231, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next235, %n.vec230
  br i1 %i.dt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !57

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n236 = icmp eq i64 %n.vec230, %i.cw
  br i1 %cmp.n236, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck211, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.3157.ph = phi i32 [ %i.cr, %iter.check ], [ %i.cr, %vector.memcheck211 ], [ %i.dc, %vec.epilog.iter.check ], [ %i.dn, %vec.epilog.middle.block ]
  %.1119156.ph = phi ptr [ %i.ct, %iter.check ], [ %i.ct, %vector.memcheck211 ], [ %i.de, %vec.epilog.iter.check ], [ %i.dp, %vec.epilog.middle.block ]
  %.2123.pn155.ph = phi ptr [ %.2123.lcssa, %iter.check ], [ %.2123.lcssa, %vector.memcheck211 ], [ %i.df, %vec.epilog.iter.check ], [ %i.dq, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.3157 = phi i32 [ %i.dw, %vec.epilog.scalar.ph ], [ %.3157.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.1119156 = phi ptr [ %i.dv, %vec.epilog.scalar.ph ], [ %.1119156.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.2123.pn155 = phi ptr [ %.3124, %vec.epilog.scalar.ph ], [ %.2123.pn155.ph, %vec.epilog.scalar.ph.preheader ]
  %.3124 = getelementptr inbounds nuw i8, ptr %.2123.pn155, i64 2 ; 2 uses
  %i.du = load i16, ptr %.3124, align 2, !tbaa !21
  store i16 %i.du, ptr %.1119156, align 2, !tbaa !21
  %i.dv = getelementptr inbounds nuw i8, ptr %.1119156, i64 2
  %i.dw = add nsw i32 %.3157, -3
  %i.dx = icmp samesign ugt i32 %.3157, 3
  br i1 %i.dx, label %vec.epilog.scalar.ph, label %.loopexit, !llvm.loop !58

bb.s:                                             ; preds = %._crit_edge
  %i.dy = load i16, ptr %.2123.lcssa, align 2, !tbaa !21
  %i.dz = zext i16 %i.dy to i32
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.ea = load i16, ptr %.2123.lcssa, align 2, !tbaa !21
  %i.eb = zext i16 %i.ea to i32                   ; 2 uses
  %i.ec = lshr i32 %i.eb, %i.cj
  %i.ed = zext i32 %i.cj to i64                   ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr @multies, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !23
  %i.eg = mul i32 %i.ec, %i.ef
  %i.eh = lshr i32 %i.eg, 17                      ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr @DECPOWERS, i64 %i.ed
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !23
  %i.ek = mul i32 %i.eh, %i.ej
  %.not140 = icmp eq i32 %i.ek, %i.eb
  %spec.select = select i1 %.not140, i32 %i.ch, i32 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.el = phi i32 [ %i.ch, %bb.s ], [ %spec.select, %bb.t ]
  %.0 = phi i32 [ %i.dz, %bb.s ], [ %i.eh, %bb.t ] ; 2 uses
  %i.em = mul nuw nsw i32 %.0, 6554
  %i.en = lshr i32 %i.em, 16                      ; 3 uses
  %.neg = mul nsw i32 %i.en, -10
  %i.eo = add nsw i32 %.neg, %.0
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr @resmap, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !24
  %i.es = zext i8 %i.er to i32
  %i.et = add nsw i32 %i.el, %i.es
  store i32 %i.et, ptr %4, align 4, !tbaa !23
  %i.eu = load i32, ptr %1, align 4, !tbaa !27    ; 3 uses
  %i.ev = icmp slt i32 %i.eu, 1
  br i1 %i.ev, label %.loopexit.sink.split, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.eu, ptr %0, align 4, !tbaa !19
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.ex = sub nuw nsw i32 3, %i.ci                ; 3 uses
  %i.ey = trunc nuw nsw i32 %i.en to i16
  store i16 %i.ey, ptr %i.ew, align 2, !tbaa !21
  %i.ez = sub nsw i32 %i.eu, %i.ex                ; 2 uses
  %i.fa = icmp slt i32 %i.ez, 1
  br i1 %i.fa, label %.loopexit, label %.lr.ph162

.lr.ph162:                                        ; preds = %bb.v
  %i.fb = zext nneg i32 %i.ci to i64              ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr @multies, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !23
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr @DECPOWERS, i64 %i.fb
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !23
  %i.fg = zext nneg i32 %i.ex to i64
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr @DECPOWERS, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !23
  br label %bb.x

bb.w:                                             ; preds = %bb.x
  %i.fj = getelementptr inbounds nuw i8, ptr %.2120159, i64 2 ; 2 uses
  %i.fk = trunc nuw nsw i32 %i.ft to i16
  store i16 %i.fk, ptr %i.fj, align 2, !tbaa !21
  %i.fl = sub nsw i32 %i.fz, %i.ex                ; 2 uses
  %i.fm = icmp slt i32 %i.fl, 1
  br i1 %i.fm, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %.lr.ph162, %bb.w
  %i.fn = phi i32 [ %i.ez, %.lr.ph162 ], [ %i.fl, %bb.w ]
  %.1160 = phi i32 [ %i.en, %.lr.ph162 ], [ %i.ft, %bb.w ]
  %.2120159 = phi ptr [ %i.ew, %.lr.ph162 ], [ %i.fj, %bb.w ] ; 2 uses
  %.4125158 = phi ptr [ %.2123.lcssa, %.lr.ph162 ], [ %i.fo, %bb.w ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.4125158, i64 2 ; 2 uses
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !21
  %i.fq = zext i16 %i.fp to i32                   ; 2 uses
  %i.fr = lshr i32 %i.fq, %i.ci
  %i.fs = mul i32 %i.fr, %i.fd
  %i.ft = lshr i32 %i.fs, 17                      ; 3 uses
  %i.fu = mul i32 %i.ft, %i.ff
  %i.fv = sub i32 %i.fq, %i.fu
  %i.fw = mul i32 %i.fv, %i.fi
  %i.fx = add i32 %i.fw, %.1160
  %i.fy = trunc i32 %i.fx to i16
  store i16 %i.fy, ptr %.2120159, align 2, !tbaa !21
  %i.fz = sub nsw i32 %i.fn, %i.ci                ; 2 uses
  %i.ga = icmp slt i32 %i.fz, 1
  br i1 %i.ga, label %.loopexit, label %bb.w

.loopexit.sink.split:                             ; preds = %bb.u, %bb.r
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.gb, align 2, !tbaa !21
  store i32 1, ptr %0, align 4, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %bb.w, %bb.x, %middle.block225, %vec.epilog.middle.block, %.loopexit.sink.split, %bb.v
  %i.gc = load i32, ptr %4, align 4, !tbaa !23
  %.not143 = icmp eq i32 %i.gc, 0
  br i1 %.not143, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.loopexit
  %i.gd = load i32, ptr %5, align 4, !tbaa !23
  %i.ge = or i32 %i.gd, 32
  store i32 %i.ge, ptr %5, align 4, !tbaa !23
  br label %bb.z

bb.z:                                             ; preds = %.loopexit, %bb.y, %bb.c, %bb.d, %bb.l
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @decFinalize(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #8 {
bb.a:
  %4 = alloca %struct.decNumber, align 4          ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !29   ; 2 uses
  %i.c = load i32, ptr %0, align 4, !tbaa !19
  %i.d = sub nsw i32 %i.b, %i.c                   ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !18   ; 2 uses
  %.not = icmp sgt i32 %i.g, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i32, ptr %2, align 4, !tbaa !23
  br label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %.not59 = icmp sgt i32 %i.g, %i.d
  br i1 %.not59, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @decSetSubnormal(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.h, align 4, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 1, ptr %4, align 4, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 1, ptr %i.j, align 2, !tbaa !21
  store i32 %i.b, ptr %i.i, align 4, !tbaa !18
  %i.k = call fastcc i32 @decCompare(ptr noundef nonnull %0, ptr noundef nonnull %4, i8 noundef zeroext 1) ; 2 uses
  %i.l = icmp eq i32 %i.k, -2147483648
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %3, align 4, !tbaa !23
  %i.n = or i32 %i.m, 16
  store i32 %i.n, ptr %3, align 4, !tbaa !23
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.o = load i32, ptr %2, align 4, !tbaa !23     ; 3 uses
  %i.p = icmp slt i32 %i.o, 0
  %i.q = icmp eq i32 %i.k, 0
  %or.cond = and i1 %i.q, %i.p
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call fastcc void @decApplyRound(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.o, ptr noundef %3)
  call fastcc void @decSetSubnormal(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3)
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %i.r = phi i32 [ %.pre, %._crit_edge ], [ %i.o, %bb.h ] ; 2 uses
  %.not60 = icmp eq i32 %i.r, 0
  br i1 %.not60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call fastcc void @decApplyRound(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.r, ptr noundef %3)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.s = load i32, ptr %i.f, align 4, !tbaa !18   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !30   ; 2 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !27
  %i.w = sub nsw i32 %i.u, %i.v
  %i.x = add nsw i32 %i.w, 1                      ; 2 uses
  %.not61 = icmp sgt i32 %i.s, %i.x
  br i1 %.not61, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.y = load i32, ptr %0, align 4, !tbaa !19     ; 3 uses
  %i.z = add i32 %i.u, 1
  %i.aa = sub i32 %i.z, %i.y
  %i.ab = icmp sgt i32 %i.s, %i.aa
  br i1 %i.ab, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call fastcc void @decSetOverflow(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %3)
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !28
  %.not62 = icmp eq i8 %i.ad, 0
  br i1 %.not62, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ae = sub nsw i32 %i.s, %i.x                  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !21
  %i.ah = icmp eq i16 %i.ag, 0
  %i.ai = icmp eq i32 %i.y, 1
  %or.cond63 = and i1 %i.ai, %i.ah
  br i1 %or.cond63, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !17
  %i.al = and i8 %i.ak, 112
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.an = call fastcc i32 @decShiftToMost(ptr noundef nonnull %i.af, i32 noundef %i.y, i32 noundef %i.ae)
  store i32 %i.an, ptr %0, align 4, !tbaa !19
  %.pre64 = load i32, ptr %i.f, align 4, !tbaa !18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ao = phi i32 [ %.pre64, %bb.q ], [ %i.s, %bb.p ]
  %i.ap = sub nsw i32 %i.ao, %i.ae
  store i32 %i.ap, ptr %i.f, align 4, !tbaa !18
  %i.aq = load i32, ptr %3, align 4, !tbaa !23
  %i.ar = or i32 %i.aq, 1024
  store i32 %i.ar, ptr %3, align 4, !tbaa !23
  br label %bb.s

.critedge:                                        ; preds = %bb.g, %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.k, %.critedge, %bb.r, %bb.m
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @decNumberAbs(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.decNumber, align 4          ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.b, align 4, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %3, align 4, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i16 0, ptr %i.d, align 2, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !18
  store i32 %i.f, ptr %i.c, align 4, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i8, ptr %i.g, align 4, !tbaa !17
  %i.i = and i8 %i.h, -128
  %i.j = call fastcc ptr @decAddOp(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %i.i, ptr noundef %i.a) ; 0 uses
  %i.k = load i32, ptr %i.a, align 4, !tbaa !23   ; 6 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = and i32 %i.k, 221
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %decStatus.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = and i32 %i.k, 1073741824
  %.not6.i = icmp eq i32 %i.m, 0
  br i1 %.not6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = and i32 %i.k, -1073741825
end_hunk_0
