Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/builder?download=true
inline.NumInlined: 3497
inline.NumDeleted: 1222
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN5Darts7Details18DoubleArrayBuilder15build_from_dawgERKNS0_11DawgBuilderE:bb.a

_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE7reserveEm.exit: ; preds = %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !178  ; 3 uses
  %i.l = icmp ugt i64 %i.k, 4611686018427387903
  %i.m = shl i64 %i.k, 2
  %i.n = select i1 %i.l, i64 -1, i64 %i.m
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #35
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !166  ; 2 uses
  store ptr %i.o, ptr %i.i, align 8, !tbaa !166
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZN5Darts7Details9AutoArrayIjE5resetEPj.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE7reserveEm.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #30
  %.pre = load i64, ptr %i.j, align 8, !tbaa !178
  br label %_ZN5Darts7Details9AutoArrayIjE5resetEPj.exit

_ZN5Darts7Details9AutoArrayIjE5resetEPj.exit:     ; preds = %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE7reserveEm.exit, %bb.e
  %i.q = phi i64 [ %i.k, %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE7reserveEm.exit ], [ %.pre, %bb.e ] ; 2 uses
  %.not27 = icmp eq i64 %i.q, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5Darts7Details9AutoArrayIjE5resetEPj.exit
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !166
  %i.s = shl nuw i64 %i.q, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %i.s, i1 false), !tbaa !24
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Darts7Details9AutoArrayIjE5resetEPj.exit
  %i.t = tail call noalias noundef nonnull dereferenceable(49152) ptr @_Znam(i64 noundef 49152) #35 ; 9 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %._crit_edge
  %.idx = phi i64 [ 0, %._crit_edge ], [ %.add.7, %bb.f ] ; 9 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %.ptr, i8 0, i64 10, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %.ptr.1, i8 0, i64 10, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %.ptr.2, i8 0, i64 10, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %.ptr.3, i8 0, i64 10, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %.ptr.4, i8 0, i64 10, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.y, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %.ptr.5, i8 0, i64 10, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %.ptr.6, i8 0, i64 10, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.aa, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %.ptr.7, i8 0, i64 10, i1 false)
  %.add.7 = add nuw nsw i64 %.idx, 96             ; 2 uses
  %i.ab = icmp eq i64 %.add.7, 49152
  br i1 %i.ab, label %bb.g, label %bb.f

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !164 ; 2 uses
  store ptr %i.t, ptr %i.ac, align 8, !tbaa !164
  %.not.i.i.i15 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i15, label %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5resetEPS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.ad) #30
  br label %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5resetEPS2_.exit

_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5resetEPS2_.exit: ; preds = %bb.g, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !116
  %.not.i.not = icmp eq i64 %i.af, 0
  br i1 %.not.i.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5resetEPS2_.exit
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder12expand_unitsEv(ptr noundef nonnull align 8 dereferenceable(76) %0), !inline_history !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5resetEPS2_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !167
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !164 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !180 ; 4 uses
  br i1 %i.ai, label %bb.k, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

bb.k:                                             ; preds = %bb.j
  store i32 %i.al, ptr %i.ag, align 8, !tbaa !167
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.l, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

bb.l:                                             ; preds = %bb.k
  %i.an = load i64, ptr %i.ae, align 8, !tbaa !116
  %i.ao = trunc i64 %i.an to i32
  store i32 %i.ao, ptr %i.ag, align 8, !tbaa !167
  br label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.ap = phi i32 [ 0, %bb.l ], [ %i.al, %bb.k ], [ %i.al, %bb.j ] ; 2 uses
  %i.aq = load i32, ptr %i.aj, align 4, !tbaa !181 ; 2 uses
  %i.ar = and i32 %i.aq, 4095
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 %i.ap, ptr %i.au, align 4, !tbaa !180
  %i.av = and i32 %i.ap, 4095
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.aw
  store i32 %i.aq, ptr %i.ax, align 4, !tbaa !181
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i8 1, ptr %i.ay, align 4, !tbaa !182
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 9
  store i8 1, ptr %i.az, align 1, !tbaa !183
  %i.ba = load ptr, ptr %i.e, align 8, !tbaa !117 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !185
  %i.bc = and i32 %i.bb, -2147483392
  %i.bd = or disjoint i32 %i.bc, 1024
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !185
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !117
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !187
  %.not = icmp ult i32 %i.bg, 4
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder15build_from_dawgERKNS0_11DawgBuilderEjj(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef 0, i32 noundef 0)
  %.pre31.pre = load ptr, ptr %i.ac, align 8, !tbaa !164
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit
  %.pre31 = phi ptr [ %.pre31.pre, %bb.m ], [ %i.aj, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit ] ; 3 uses
  %i.bh = load i64, ptr %i.ae, align 8, !tbaa !116 ; 2 uses
  %i.bi = lshr i64 %i.bh, 8
  %i.bj = icmp ugt i64 %i.bh, 4351
  %i.bk = trunc i64 %i.bi to i32                  ; 3 uses
  %i.bl = add i32 %i.bk, -16
  %.05.i = select i1 %i.bj, i32 %i.bl, i32 0      ; 2 uses
  %.not7.i = icmp eq i32 %.05.i, %i.bk
  br i1 %.not7.i, label %_ZN5Darts7Details18DoubleArrayBuilder14fix_all_blocksEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i
  %i.bm = phi ptr [ %i.dq, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i ], [ %.pre31, %bb.n ]
  %i.bn = phi ptr [ %i.dr, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i ], [ %.pre31, %bb.n ] ; 6 uses
  %.08.i = phi i32 [ %i.dt, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i ], [ %.05.i, %bb.n ] ; 2 uses
  %i.bo = shl i32 %.08.i, 8                       ; 2 uses
  %i.bp = add i32 %i.bo, 256                      ; 2 uses
  %i.bq = zext i32 %i.bo to i64                   ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %.lr.ph.i
  %indvars.iv.i.i = phi i64 [ %i.bq, %.lr.ph.i ], [ %indvars.iv.next.i.i.3, %bb.s ] ; 6 uses
  %i.br = and i64 %indvars.iv.i.i, 4092
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %i.bn, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 9
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !183, !range !36, !noundef !37
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.p, label %.split.loop.exit.i.i

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bw = and i64 %indvars.iv.next.i.i, 4093
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.bn, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 9
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !183, !range !36, !noundef !37
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.q, label %.split.loop.exit.i.i

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.cb = and i64 %indvars.iv.next.i.i.1, 4094
  %i.cc = getelementptr inbounds nuw [12 x i8], ptr %i.bn, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 9
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !183, !range !36, !noundef !37
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.r, label %.split.loop.exit.i.i

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.cg = and i64 %indvars.iv.next.i.i.2, 4095
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr %i.bn, i64 %i.cg
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 9
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !183, !range !36, !noundef !37
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.s, label %.split.loop.exit.i.i

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %indvars.i.i.3 = trunc i64 %indvars.iv.next.i.i.3 to i32
  %.not.i.i.3 = icmp eq i32 %i.bp, %indvars.i.i.3
  br i1 %.not.i.i.3, label %.split.loop.exit29.i.i, label %bb.o, !llvm.loop !8

.split.loop.exit.i.i:                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %indvars.iv.i.i.lcssa = phi i64 [ %indvars.iv.i.i, %bb.o ], [ %indvars.iv.next.i.i, %bb.p ], [ %indvars.iv.next.i.i.1, %bb.q ], [ %indvars.iv.next.i.i.2, %bb.r ]
  %2 = trunc i64 %indvars.iv.i.i.lcssa to i8
  br label %.split.loop.exit29.i.i

.split.loop.exit29.i.i:                           ; preds = %bb.s, %.split.loop.exit.i.i
  %.018.i.i = phi i8 [ %2, %.split.loop.exit.i.i ], [ 0, %bb.s ]
  br label %bb.t

bb.t:                                             ; preds = %bb.z, %.split.loop.exit29.i.i
  %i.cl = phi ptr [ %i.bm, %.split.loop.exit29.i.i ], [ %i.dq, %bb.z ] ; 2 uses
  %i.cm = phi ptr [ %i.bn, %.split.loop.exit29.i.i ], [ %i.dr, %bb.z ]
  %i.cn = phi ptr [ %i.bn, %.split.loop.exit29.i.i ], [ %i.ds, %bb.z ] ; 2 uses
  %indvars.iv24.i.i = phi i64 [ %i.bq, %.split.loop.exit29.i.i ], [ %indvars.iv.next25.i.i, %bb.z ] ; 7 uses
  %i.co = and i64 %indvars.iv24.i.i, 4095         ; 2 uses
  %i.cp = getelementptr inbounds nuw [12 x i8], ptr %i.cn, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i8, ptr %i.cq, align 4, !tbaa !182, !range !36, !noundef !37
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = load i64, ptr %i.ae, align 8, !tbaa !116
  %.not.i.i.i17 = icmp ugt i64 %i.ct, %indvars.iv24.i.i
  br i1 %.not.i.i.i17, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder12expand_unitsEv(ptr noundef nonnull align 8 dereferenceable(76) %0), !inline_history !9
  %.pre10.i = load ptr, ptr %i.ac, align 8, !tbaa !164
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cu = phi ptr [ %.pre10.i, %bb.v ], [ %i.cl, %bb.u ] ; 6 uses
  %i.cv = load i32, ptr %i.ag, align 8, !tbaa !167
  %i.cw = zext i32 %i.cv to i64
  %i.cx = icmp eq i64 %indvars.iv24.i.i, %i.cw
  %i.cy = getelementptr inbounds nuw [12 x i8], ptr %i.cu, i64 %i.co ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !180 ; 4 uses
  br i1 %i.cx, label %bb.x, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i

bb.x:                                             ; preds = %bb.w
  store i32 %i.da, ptr %i.ag, align 8, !tbaa !167
  %i.db = zext i32 %i.da to i64
  %i.dc = icmp eq i64 %indvars.iv24.i.i, %i.db
  br i1 %i.dc, label %bb.y, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i

bb.y:                                             ; preds = %bb.x
  %i.dd = load i64, ptr %i.ae, align 8, !tbaa !116
  %i.de = trunc i64 %i.dd to i32
  store i32 %i.de, ptr %i.ag, align 8, !tbaa !167
  br label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i

_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i: ; preds = %bb.y, %bb.x, %bb.w
  %i.df = load i32, ptr %i.cy, align 4, !tbaa !181 ; 2 uses
  %i.dg = and i32 %i.df, 4095
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [12 x i8], ptr %i.cu, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store i32 %i.da, ptr %i.dj, align 4, !tbaa !180
  %i.dk = and i32 %i.da, 4095
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [12 x i8], ptr %i.cu, i64 %i.dl
  store i32 %i.df, ptr %i.dm, align 4, !tbaa !181
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i8 1, ptr %i.dn, align 4, !tbaa !182
  %i.do = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv24.i.i
  %3 = trunc i64 %indvars.iv24.i.i to i8
  %4 = xor i8 %.018.i.i, %3
  store i8 %4, ptr %i.dp, align 4, !tbaa !185
  br label %bb.z

bb.z:                                             ; preds = %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i, %bb.t
  %i.dq = phi ptr [ %i.cl, %bb.t ], [ %i.cu, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i ] ; 3 uses
  %i.dr = phi ptr [ %i.cm, %bb.t ], [ %i.cu, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i ] ; 2 uses
  %i.ds = phi ptr [ %i.cn, %bb.t ], [ %i.cu, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i ]
  %indvars.iv.next25.i.i = add nuw nsw i64 %indvars.iv24.i.i, 1 ; 2 uses
  %indvars26.i.i = trunc i64 %indvars.iv.next25.i.i to i32
  %.not19.i.i = icmp eq i32 %i.bp, %indvars26.i.i
  br i1 %.not19.i.i, label %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i, label %bb.t, !llvm.loop !10

_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i: ; preds = %bb.z
  %i.dt = add i32 %.08.i, 1                       ; 2 uses
  %.not.i18 = icmp eq i32 %i.dt, %i.bk
  br i1 %.not.i18, label %_ZN5Darts7Details18DoubleArrayBuilder14fix_all_blocksEv.exit, label %.lr.ph.i, !llvm.loop !11

_ZN5Darts7Details18DoubleArrayBuilder14fix_all_blocksEv.exit: ; preds = %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i, %bb.n
  %i.du = phi ptr [ %.pre31, %bb.n ], [ %i.dq, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i ] ; 2 uses
  %.not.i20 = icmp eq ptr %i.du, null
  br i1 %.not.i20, label %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN5Darts7Details18DoubleArrayBuilder14fix_all_blocksEv.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.du) #30
  store ptr null, ptr %i.ac, align 8, !tbaa !164
  br label %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit

_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit: ; preds = %_ZN5Darts7Details18DoubleArrayBuilder14fix_all_blocksEv.exit, %bb.aa
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %.promoted.i.i = load i64, ptr %i.dw, align 8, !tbaa !165
  %.not.i21 = icmp eq i64 %.promoted.i.i, 0
  br i1 %.not.i21, label %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit
  store i64 0, ptr %i.dw, align 8, !tbaa !165
  br label %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i

_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i:    ; preds = %.lr.ph.preheader.i.i, %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !117 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.dx, null
  br i1 %.not.i.i22, label %_ZN5Darts7Details8AutoPoolIhE5clearEv.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.dx) #30
  store ptr null, ptr %i.dv, align 8, !tbaa !117
  br label %_ZN5Darts7Details8AutoPoolIhE5clearEv.exit

_ZN5Darts7Details8AutoPoolIhE5clearEv.exit:       ; preds = %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i, %bb.ab
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dw, i8 0, i64 16, i1 false)
  %i.dy = load ptr, ptr %i.i, align 8, !tbaa !166 ; 2 uses
  %.not.i23 = icmp eq ptr %i.dy, null
  br i1 %.not.i23, label %_ZN5Darts7Details9AutoArrayIjE5clearEv.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZN5Darts7Details8AutoPoolIhE5clearEv.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.dy) #30
  store ptr null, ptr %i.i, align 8, !tbaa !166
  br label %_ZN5Darts7Details9AutoArrayIjE5clearEv.exit

_ZN5Darts7Details9AutoArrayIjE5clearEv.exit:      ; preds = %_ZN5Darts7Details8AutoPoolIhE5clearEv.exit, %bb.ac
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Darts7Details11DawgBuilder5clearEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.promoted.i.i = load i64, ptr %i.a, align 8, !tbaa !189
  %.not.i = icmp eq i64 %.promoted.i.i, 0
  br i1 %.not.i, label %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE6resizeEm.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !189
  br label %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE6resizeEm.exit.i

_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE6resizeEm.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !117    ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE5clearEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE6resizeEm.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #30
  store ptr null, ptr %0, align 8, !tbaa !117
  br label %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE5clearEv.exit

_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE5clearEv.exit: ; preds = %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE6resizeEm.exit.i, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %.promoted.i.i1 = load i64, ptr %i.d, align 8, !tbaa !175
  %.not.i2 = icmp eq i64 %.promoted.i.i1, 0
  br i1 %.not.i2, label %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE6resizeEm.exit.i, label %.lr.ph.preheader.i.i3

.lr.ph.preheader.i.i3:                            ; preds = %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE5clearEv.exit
  store i64 0, ptr %i.d, align 8, !tbaa !175
  br label %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE6resizeEm.exit.i

_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE6resizeEm.exit.i: ; preds = %.lr.ph.preheader.i.i3, %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE5clearEv.exit
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !117  ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.e, null
  br i1 %.not.i.i4, label %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE5clearEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE6resizeEm.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #30
  store ptr null, ptr %i.c, align 8, !tbaa !117
  br label %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE5clearEv.exit

_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE5clearEv.exit: ; preds = %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE6resizeEm.exit.i, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %.promoted.i.i5 = load i64, ptr %i.g, align 8, !tbaa !165
  %.not.i6 = icmp eq i64 %.promoted.i.i5, 0
  br i1 %.not.i6, label %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i, label %.lr.ph.preheader.i.i7

.lr.ph.preheader.i.i7:                            ; preds = %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE5clearEv.exit
  store i64 0, ptr %i.g, align 8, !tbaa !165
  br label %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i

_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i:    ; preds = %.lr.ph.preheader.i.i7, %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE5clearEv.exit
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !117  ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.h, null
  br i1 %.not.i.i8, label %_ZN5Darts7Details8AutoPoolIhE5clearEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #30
  store ptr null, ptr %i.f, align 8, !tbaa !117
  br label %_ZN5Darts7Details8AutoPoolIhE5clearEv.exit

_ZN5Darts7Details8AutoPoolIhE5clearEv.exit:       ; preds = %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %.promoted.i.i.i = load i64, ptr %i.j, align 8, !tbaa !190
  %.not.i.i9 = icmp eq i64 %.promoted.i.i.i, 0
  br i1 %.not.i.i9, label %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN5Darts7Details8AutoPoolIhE5clearEv.exit
  store i64 0, ptr %i.j, align 8, !tbaa !190
  br label %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i

_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i:  ; preds = %.lr.ph.preheader.i.i.i, %_ZN5Darts7Details8AutoPoolIhE5clearEv.exit
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !117  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN5Darts7Details8AutoPoolIjE5clearEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #30
  store ptr null, ptr %i.i, align 8, !tbaa !117
  br label %_ZN5Darts7Details8AutoPoolIjE5clearEv.exit.i

_ZN5Darts7Details8AutoPoolIjE5clearEv.exit.i:     ; preds = %bb.e, %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !166  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.m, null
  br i1 %.not.i1.i, label %_ZN5Darts7Details9BitVector5clearEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5Darts7Details8AutoPoolIjE5clearEv.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #30
  store ptr null, ptr %i.l, align 8, !tbaa !166
  br label %_ZN5Darts7Details9BitVector5clearEv.exit

_ZN5Darts7Details9BitVector5clearEv.exit:         ; preds = %_ZN5Darts7Details8AutoPoolIjE5clearEv.exit.i, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %.promoted.i.i10 = load i64, ptr %i.o, align 8, !tbaa !190
  %.not.i11 = icmp eq i64 %.promoted.i.i10, 0
  br i1 %.not.i11, label %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i, label %.lr.ph.preheader.i.i12

.lr.ph.preheader.i.i12:                           ; preds = %_ZN5Darts7Details9BitVector5clearEv.exit
  store i64 0, ptr %i.o, align 8, !tbaa !190
  br label %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i

_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i:    ; preds = %.lr.ph.preheader.i.i12, %_ZN5Darts7Details9BitVector5clearEv.exit
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !117  ; 2 uses
  %.not.i.i13 = icmp eq ptr %i.p, null
  br i1 %.not.i.i13, label %_ZN5Darts7Details8AutoPoolIjE5clearEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #30
  store ptr null, ptr %i.n, align 8, !tbaa !117
  br label %_ZN5Darts7Details8AutoPoolIjE5clearEv.exit

_ZN5Darts7Details8AutoPoolIjE5clearEv.exit:       ; preds = %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %.promoted.i.i.i14 = load i64, ptr %i.r, align 8, !tbaa !190
  %.not.i.i15 = icmp eq i64 %.promoted.i.i.i14, 0
  br i1 %.not.i.i15, label %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i17, label %.lr.ph.preheader.i.i.i16

.lr.ph.preheader.i.i.i16:                         ; preds = %_ZN5Darts7Details8AutoPoolIjE5clearEv.exit
  store i64 0, ptr %i.r, align 8, !tbaa !190
  br label %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i17

_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i17: ; preds = %.lr.ph.preheader.i.i.i16, %_ZN5Darts7Details8AutoPoolIjE5clearEv.exit
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !117  ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i18, label %_ZN5Darts7Details9AutoStackIjE5clearEv.exit, label %bb.h

end_hunk_0
begin_hunk_1_@_ZN5Darts7Details11DawgBuilderD2Ev:bb.a

bb.k:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #29
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Darts7Details18DoubleArrayBuilder17build_from_keysetIiEEvRKNS0_6KeysetIT_EE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !104
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 1, %bb.a ], [ %i.c, %bb.b ]     ; 4 uses
  %i.b = icmp ult i64 %.0, %i.a
  %i.c = shl i64 %.0, 1
  br i1 %i.b, label %bb.b, label %bb.c, !llvm.loop !634

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !173
  %i.g = icmp ugt i64 %.0, %i.f
  br i1 %i.g, label %bb.d, label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE7reserveEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.0)
  br label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE7reserveEm.exit

_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE7reserveEm.exit: ; preds = %bb.c, %bb.d
  %i.h = tail call noalias noundef nonnull dereferenceable(49152) ptr @_Znam(i64 noundef 49152) #35 ; 9 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE7reserveEm.exit
  %.idx = phi i64 [ 0, %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE7reserveEm.exit ], [ %.add.7, %bb.e ] ; 9 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %.ptr, i8 0, i64 10, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %.ptr.1, i8 0, i64 10, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %.ptr.2, i8 0, i64 10, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %.ptr.3, i8 0, i64 10, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %.ptr.4, i8 0, i64 10, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %i.m, i64 60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %.ptr.5, i8 0, i64 10, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %.ptr.6, i8 0, i64 10, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %i.o, i64 84
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %.ptr.7, i8 0, i64 10, i1 false)
  %.add.7 = add nuw nsw i64 %.idx, 96             ; 2 uses
  %i.p = icmp eq i64 %.add.7, 49152
  br i1 %i.p, label %bb.f, label %bb.e

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !164  ; 2 uses
  store ptr %i.h, ptr %i.q, align 8, !tbaa !164
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5resetEPS2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #30
  br label %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5resetEPS2_.exit

_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5resetEPS2_.exit: ; preds = %bb.f, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !116
  %.not.i.not = icmp eq i64 %i.t, 0
  br i1 %.not.i.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5resetEPS2_.exit
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder12expand_unitsEv(ptr noundef nonnull align 8 dereferenceable(76) %0), !inline_history !7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5resetEPS2_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !167
  %i.w = icmp eq i32 %i.v, 0
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !164  ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !180  ; 4 uses
  br i1 %i.w, label %bb.j, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

bb.j:                                             ; preds = %bb.i
  store i32 %i.z, ptr %i.u, align 8, !tbaa !167
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.k, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

bb.k:                                             ; preds = %bb.j
  %i.ab = load i64, ptr %i.s, align 8, !tbaa !116
  %i.ac = trunc i64 %i.ab to i32
  store i32 %i.ac, ptr %i.u, align 8, !tbaa !167
  br label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.ad = phi i32 [ 0, %bb.k ], [ %i.z, %bb.j ], [ %i.z, %bb.i ] ; 2 uses
  %i.ae = load i32, ptr %i.x, align 4, !tbaa !181 ; 2 uses
  %i.af = and i32 %i.ae, 4095
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %i.ad, ptr %i.ai, align 4, !tbaa !180
  %i.aj = and i32 %i.ad, 4095
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.ak
  store i32 %i.ae, ptr %i.al, align 4, !tbaa !181
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i8 1, ptr %i.am, align 4, !tbaa !182
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  store i8 1, ptr %i.an, align 1, !tbaa !183
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !117 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !185
  %i.aq = and i32 %i.ap, -2147483392
  %i.ar = or disjoint i32 %i.aq, 1024
  store i32 %i.ar, ptr %i.ao, align 4, !tbaa !185
  %i.as = load i64, ptr %1, align 8, !tbaa !104   ; 2 uses
  %.not = icmp eq i64 %i.as, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder17build_from_keysetIiEEvRKNS0_6KeysetIT_EEmmmj(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.as, i64 noundef 0, i32 noundef 0)
  %.pre19.pre = load ptr, ptr %i.q, align 8, !tbaa !164
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit
  %.pre19 = phi ptr [ %.pre19.pre, %bb.l ], [ %i.x, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit ] ; 3 uses
  %i.at = load i64, ptr %i.s, align 8, !tbaa !116 ; 2 uses
  %i.au = lshr i64 %i.at, 8
  %i.av = icmp ugt i64 %i.at, 4351
  %i.aw = trunc i64 %i.au to i32                  ; 3 uses
  %i.ax = add i32 %i.aw, -16
  %.05.i = select i1 %i.av, i32 %i.ax, i32 0      ; 2 uses
  %.not7.i = icmp eq i32 %.05.i, %i.aw
  br i1 %.not7.i, label %_ZN5Darts7Details18DoubleArrayBuilder14fix_all_blocksEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i
  %i.ay = phi ptr [ %i.dc, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i ], [ %.pre19, %bb.m ]
  %i.az = phi ptr [ %i.dd, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i ], [ %.pre19, %bb.m ] ; 6 uses
  %.08.i = phi i32 [ %i.df, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i ], [ %.05.i, %bb.m ] ; 2 uses
  %i.ba = shl i32 %.08.i, 8                       ; 2 uses
  %i.bb = add i32 %i.ba, 256                      ; 2 uses
  %i.bc = zext i32 %i.ba to i64                   ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %.lr.ph.i
  %indvars.iv.i.i = phi i64 [ %i.bc, %.lr.ph.i ], [ %indvars.iv.next.i.i.3, %bb.r ] ; 6 uses
  %i.bd = and i64 %indvars.iv.i.i, 4092
  %i.be = getelementptr inbounds nuw [12 x i8], ptr %i.az, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 9
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !183, !range !36, !noundef !37
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.o, label %.split.loop.exit.i.i

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bi = and i64 %indvars.iv.next.i.i, 4093
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %i.az, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 9
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !183, !range !36, !noundef !37
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.p, label %.split.loop.exit.i.i

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bn = and i64 %indvars.iv.next.i.i.1, 4094
  %i.bo = getelementptr inbounds nuw [12 x i8], ptr %i.az, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 9
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !183, !range !36, !noundef !37
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.q, label %.split.loop.exit.i.i

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bs = and i64 %indvars.iv.next.i.i.2, 4095
  %i.bt = getelementptr inbounds nuw [12 x i8], ptr %i.az, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !183, !range !36, !noundef !37
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.r, label %.split.loop.exit.i.i

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %indvars.i.i.3 = trunc i64 %indvars.iv.next.i.i.3 to i32
  %.not.i.i.3 = icmp eq i32 %i.bb, %indvars.i.i.3
  br i1 %.not.i.i.3, label %.split.loop.exit29.i.i, label %bb.n, !llvm.loop !8

.split.loop.exit.i.i:                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %indvars.iv.i.i.lcssa = phi i64 [ %indvars.iv.i.i, %bb.n ], [ %indvars.iv.next.i.i, %bb.o ], [ %indvars.iv.next.i.i.1, %bb.p ], [ %indvars.iv.next.i.i.2, %bb.q ]
  %2 = trunc i64 %indvars.iv.i.i.lcssa to i8
  br label %.split.loop.exit29.i.i

.split.loop.exit29.i.i:                           ; preds = %bb.r, %.split.loop.exit.i.i
  %.018.i.i = phi i8 [ %2, %.split.loop.exit.i.i ], [ 0, %bb.r ]
  br label %bb.s

bb.s:                                             ; preds = %bb.y, %.split.loop.exit29.i.i
  %i.bx = phi ptr [ %i.ay, %.split.loop.exit29.i.i ], [ %i.dc, %bb.y ] ; 2 uses
  %i.by = phi ptr [ %i.az, %.split.loop.exit29.i.i ], [ %i.dd, %bb.y ]
  %i.bz = phi ptr [ %i.az, %.split.loop.exit29.i.i ], [ %i.de, %bb.y ] ; 2 uses
  %indvars.iv24.i.i = phi i64 [ %i.bc, %.split.loop.exit29.i.i ], [ %indvars.iv.next25.i.i, %bb.y ] ; 7 uses
  %i.ca = and i64 %indvars.iv24.i.i, 4095         ; 2 uses
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load i8, ptr %i.cc, align 4, !tbaa !182, !range !36, !noundef !37
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = load i64, ptr %i.s, align 8, !tbaa !116
  %.not.i.i.i9 = icmp ugt i64 %i.cf, %indvars.iv24.i.i
  br i1 %.not.i.i.i9, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder12expand_unitsEv(ptr noundef nonnull align 8 dereferenceable(76) %0), !inline_history !9
  %.pre10.i = load ptr, ptr %i.q, align 8, !tbaa !164
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cg = phi ptr [ %.pre10.i, %bb.u ], [ %i.bx, %bb.t ] ; 6 uses
  %i.ch = load i32, ptr %i.u, align 8, !tbaa !167
  %i.ci = zext i32 %i.ch to i64
  %i.cj = icmp eq i64 %indvars.iv24.i.i, %i.ci
  %i.ck = getelementptr inbounds nuw [12 x i8], ptr %i.cg, i64 %i.ca ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !180 ; 4 uses
  br i1 %i.cj, label %bb.w, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i

bb.w:                                             ; preds = %bb.v
  store i32 %i.cm, ptr %i.u, align 8, !tbaa !167
  %i.cn = zext i32 %i.cm to i64
  %i.co = icmp eq i64 %indvars.iv24.i.i, %i.cn
  br i1 %i.co, label %bb.x, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i

bb.x:                                             ; preds = %bb.w
  %i.cp = load i64, ptr %i.s, align 8, !tbaa !116
  %i.cq = trunc i64 %i.cp to i32
  store i32 %i.cq, ptr %i.u, align 8, !tbaa !167
  br label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i

_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i: ; preds = %bb.x, %bb.w, %bb.v
  %i.cr = load i32, ptr %i.ck, align 4, !tbaa !181 ; 2 uses
  %i.cs = and i32 %i.cr, 4095
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [12 x i8], ptr %i.cg, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store i32 %i.cm, ptr %i.cv, align 4, !tbaa !180
  %i.cw = and i32 %i.cm, 4095
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [12 x i8], ptr %i.cg, i64 %i.cx
  store i32 %i.cr, ptr %i.cy, align 4, !tbaa !181
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store i8 1, ptr %i.cz, align 4, !tbaa !182
  %i.da = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv24.i.i
  %3 = trunc i64 %indvars.iv24.i.i to i8
  %4 = xor i8 %.018.i.i, %3
  store i8 %4, ptr %i.db, align 4, !tbaa !185
  br label %bb.y

bb.y:                                             ; preds = %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i, %bb.s
  %i.dc = phi ptr [ %i.bx, %bb.s ], [ %i.cg, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i ] ; 3 uses
  %i.dd = phi ptr [ %i.by, %bb.s ], [ %i.cg, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i ] ; 2 uses
  %i.de = phi ptr [ %i.bz, %bb.s ], [ %i.cg, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i ]
  %indvars.iv.next25.i.i = add nuw nsw i64 %indvars.iv24.i.i, 1 ; 2 uses
  %indvars26.i.i = trunc i64 %indvars.iv.next25.i.i to i32
  %.not19.i.i = icmp eq i32 %i.bb, %indvars26.i.i
  br i1 %.not19.i.i, label %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i, label %bb.s, !llvm.loop !10

_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i: ; preds = %bb.y
  %i.df = add i32 %.08.i, 1                       ; 2 uses
  %.not.i10 = icmp eq i32 %i.df, %i.aw
  br i1 %.not.i10, label %_ZN5Darts7Details18DoubleArrayBuilder14fix_all_blocksEv.exit, label %.lr.ph.i, !llvm.loop !11

_ZN5Darts7Details18DoubleArrayBuilder14fix_all_blocksEv.exit: ; preds = %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i, %bb.m
  %i.dg = phi ptr [ %.pre19, %bb.m ], [ %i.dc, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i ] ; 2 uses
  %.not.i12 = icmp eq ptr %i.dg, null
  br i1 %.not.i12, label %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5Darts7Details18DoubleArrayBuilder14fix_all_blocksEv.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.dg) #30
  store ptr null, ptr %i.q, align 8, !tbaa !164
  br label %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit

_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit: ; preds = %_ZN5Darts7Details18DoubleArrayBuilder14fix_all_blocksEv.exit, %bb.z
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %.promoted.i.i = load i64, ptr %i.di, align 8, !tbaa !165
  %.not.i13 = icmp eq i64 %.promoted.i.i, 0
  br i1 %.not.i13, label %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit
  store i64 0, ptr %i.di, align 8, !tbaa !165
  br label %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i

_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i:    ; preds = %.lr.ph.preheader.i.i, %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !117 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i14, label %_ZN5Darts7Details8AutoPoolIhE5clearEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.dj) #30
  store ptr null, ptr %i.dh, align 8, !tbaa !117
  br label %_ZN5Darts7Details8AutoPoolIhE5clearEv.exit

_ZN5Darts7Details8AutoPoolIhE5clearEv.exit:       ; preds = %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i, %bb.aa
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Darts7Details8AutoPoolIjE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !191
  %i.c = shl i64 %i.b, 1
  %.not = icmp ult i64 %1, %i.c
  br i1 %.not, label %.preheader, label %.loopexit30

.preheader:                                       ; preds = %bb.a, %.preheader
  %.019 = phi i64 [ %i.e, %.preheader ], [ 1, %bb.a ] ; 3 uses
  %i.d = icmp ult i64 %.019, %1
  %i.e = shl i64 %.019, 1
  br i1 %i.d, label %.preheader, label %.loopexit30, !llvm.loop !12

.loopexit30:                                      ; preds = %.preheader, %bb.a
  %.1 = phi i64 [ %1, %bb.a ], [ %.019, %.preheader ] ; 3 uses
  %i.f = shl i64 %.1, 2
  %i.g = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #35
          to label %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit unwind label %bb.b ; 4 uses

bb.b:                                             ; preds = %.loopexit30
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc             ; 3 uses
  %i.i = extractvalue { ptr, i32 } %i.h, 1
  %i.j = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #28
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_ZN5Darts7Details9AutoArrayIcED2Ev.exit25

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, i32 } %i.h, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #28 ; 0 uses
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.n, align 8, !tbaa !88
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @.str.59, ptr %i.o, align 8, !tbaa !171
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZN5Darts7Details9AutoArrayIcED2Ev.exit25 unwind label %bb.f

_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit:     ; preds = %.loopexit30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !190  ; 5 uses
  %.not23 = icmp eq i64 %i.r, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !117   ; 4 uses
  br i1 %.not23, label %.loopexit, label %.preheader35

.preheader35:                                     ; preds = %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit
  %min.iters.check = icmp ult i64 %i.r, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader35
  %n.vec = and i64 %i.r, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !tbaa !24
  %wide.load36 = load <4 x i32>, ptr %i.u, align 4, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x i32> %wide.load, ptr %i.s, align 4, !tbaa !24
  store <4 x i32> %wide.load36, ptr %i.v, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !635

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader35, %middle.block
  %.031.ph = phi i64 [ 0, %.preheader35 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.031 = phi i64 [ %i.aa, %scalar.ph ], [ %.031.ph, %scalar.ph.preheader ] ; 3 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.031
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.031
  %i.z = load i32, ptr %i.y, align 4, !tbaa !24
  store i32 %i.z, ptr %i.x, align 4, !tbaa !24
  %i.aa = add nuw i64 %.031, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.r
  br i1 %exitcond.not, label %.loopexit.thread, label %scalar.ph, !llvm.loop !636

.loopexit.thread:                                 ; preds = %scalar.ph, %middle.block
  store ptr %i.g, ptr %0, align 8, !tbaa !117
  store i64 %.1, ptr %i.a, align 8, !tbaa !191
  br label %bb.e

.loopexit:                                        ; preds = %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit
  store ptr %i.g, ptr %0, align 8, !tbaa !117
  store i64 %.1, ptr %i.a, align 8, !tbaa !191
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN5Darts7Details9AutoArrayIcED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit.thread, %.loopexit
  tail call void @_ZdaPv(ptr noundef nonnull %.pre) #30
  br label %_ZN5Darts7Details9AutoArrayIcED2Ev.exit

_ZN5Darts7Details9AutoArrayIcED2Ev.exit:          ; preds = %.loopexit, %bb.e
  ret void

_ZN5Darts7Details9AutoArrayIcED2Ev.exit25:        ; preds = %bb.b, %bb.d
  %.merged = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.p, %bb.d ]
  resume { ptr, i32 } %.merged

bb.f:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #29
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !192
  %i.c = shl i64 %i.b, 1
  %.not = icmp ult i64 %1, %i.c
  br i1 %.not, label %.preheader, label %.loopexit30

.preheader:                                       ; preds = %bb.a, %.preheader
  %.019 = phi i64 [ %i.e, %.preheader ], [ 1, %bb.a ] ; 3 uses
  %i.d = icmp ult i64 %.019, %1
  %i.e = shl i64 %.019, 1
  br i1 %i.d, label %.preheader, label %.loopexit30, !llvm.loop !13

.loopexit30:                                      ; preds = %.preheader, %bb.a
  %.1 = phi i64 [ %1, %bb.a ], [ %.019, %.preheader ] ; 3 uses
  %i.f = shl i64 %.1, 2
  %i.g = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #35
          to label %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit unwind label %bb.b ; 4 uses

bb.b:                                             ; preds = %.loopexit30
end_hunk_1
begin_hunk_2_@_ZN5Darts7Details18DoubleArrayBuilder15build_from_dawgERKNS0_11DawgBuilderEjj:bb.a
  %i.bb = icmp eq i8 %i.ba, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.bb, label %bb.e, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.d
  %.pre = load ptr, ptr %i.bc, align 8, !tbaa !117
  %.pre46 = zext i32 %3 to i64
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.bd = zext i32 %3 to i64                      ; 2 uses
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !117 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bd ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %storemerge.i = or i32 %i.bg, 256
  store i32 %storemerge.i, ptr %i.bf, align 4, !tbaa !185
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.e
  %.pre-phi = phi i64 [ %.pre46, %..critedge_crit_edge ], [ %i.bd, %bb.e ]
  %i.bh = phi ptr [ %.pre, %..critedge_crit_edge ], [ %i.be, %bb.e ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.pre-phi ; 2 uses
  %i.bj = icmp ugt i32 %i.at, 536870911
  br i1 %i.bj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.bk = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.bk, align 8, !tbaa !88
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store ptr @.str.65, ptr %i.bl, align 8, !tbaa !171
  tail call void @__cxa_throw(ptr nonnull %i.bk, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #34
  unreachable

bb.g:                                             ; preds = %.critedge
  %i.bm = load i32, ptr %i.bi, align 4, !tbaa !185
  %i.bn = and i32 %i.bm, -2147483137              ; 2 uses
  %i.bo = icmp samesign ult i32 %i.at, 2097152
  br i1 %i.bo, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bp = shl nuw nsw i32 %i.at, 10
  %i.bq = or disjoint i32 %i.bn, %i.bp
  br label %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit

bb.i:                                             ; preds = %bb.g
  %i.br = shl nuw nsw i32 %i.at, 2
  %i.bs = or i32 %i.br, %i.bn
  %i.bt = or i32 %i.bs, 512
  br label %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit

_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit: ; preds = %bb.h, %bb.i
  %storemerge.i44 = phi i32 [ %i.bt, %bb.i ], [ %i.bq, %bb.h ]
  store i32 %storemerge.i44, ptr %i.bi, align 4, !tbaa !185
  br label %.loopexit

bb.j:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.bu = tail call noundef i32 @_ZN5Darts7Details18DoubleArrayBuilder17arrange_from_dawgERKNS0_11DawgBuilderEjj(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %2, i32 noundef %3) ; 2 uses
  %i.bv = load ptr, ptr %i.g, align 8, !tbaa !117
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !24 ; 2 uses
  %i.by = lshr i32 %i.bx, %i.m
  %i.bz = trunc i32 %i.by to i1
  br i1 %i.bz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !166
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.i
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !24
  %i.cf = xor i32 %i.m, 31
  %i.cg = lshr i32 -1, %i.cf
  %i.ch = and i32 %i.bx, %i.cg                    ; 2 uses
  %i.ci = lshr i32 %i.ch, 1
  %i.cj = and i32 %i.ci, 1431655765
  %i.ck = and i32 %i.ch, 1431655765
  %i.cl = add nuw i32 %i.cj, %i.ck                ; 2 uses
  %i.cm = lshr i32 %i.cl, 2
  %i.cn = and i32 %i.cm, 858993459
  %i.co = and i32 %i.cl, 858993459
  %i.cp = add nuw nsw i32 %i.cn, %i.co            ; 2 uses
  %i.cq = lshr i32 %i.cp, 4
  %i.cr = add nuw nsw i32 %i.cq, %i.cp
  %i.cs = and i32 %i.cr, 252645135                ; 2 uses
  %i.ct = lshr i32 %i.cs, 8
  %i.cu = add nuw nsw i32 %i.ct, %i.cs            ; 2 uses
  %i.cv = lshr i32 %i.cu, 16
  %i.cw = add nuw nsw i32 %i.cv, %i.cu
  %i.cx = and i32 %i.cw, 63
  %i.cy = add nsw i32 %i.cx, -1
  %i.cz = add i32 %i.cy, %i.ce
  %i.da = zext i32 %i.cz to i64
  %i.db = load ptr, ptr %i.ca, align 8, !tbaa !166
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.da
  store i32 %i.bu, ptr %i.dc, align 4, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.de = lshr i32 %i.e, 2
  %i.df = zext nneg i32 %i.de to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ %i.df, %bb.l ] ; 4 uses
  %.037 = phi i32 [ %i.dq, %bb.o ], [ %i.f, %bb.l ]
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !117
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !57  ; 2 uses
  %.not42 = icmp eq i8 %i.di, 0
  br i1 %.not42, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dj = zext i8 %i.di to i32
  %i.dk = xor i32 %i.bu, %i.dj
  %i.dl = trunc nuw i64 %indvars.iv to i32
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder15build_from_dawgERKNS0_11DawgBuilderEjj(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %i.dl, i32 noundef %i.dk)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !187
  %i.dp = trunc i32 %i.do to i1
  %i.dq = add i32 %.037, 1                        ; 2 uses
  %.not4345 = icmp ne i32 %i.dq, 0
  %.not43.not = and i1 %.not4345, %i.dp
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not43.not, label %bb.m, label %.loopexit, !llvm.loop !670

.loopexit:                                        ; preds = %bb.o, %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Darts7Details18DoubleArrayBuilder12expand_unitsEv(ptr noundef nonnull align 8 dereferenceable(76) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !116  ; 7 uses
  %i.d = trunc i64 %i.c to i32                    ; 5 uses
  %i.e = lshr i64 %i.c, 8
  %i.f = trunc i64 %i.e to i32
  %i.g = add i32 %i.d, 256                        ; 4 uses
  %i.h = add i32 %i.f, -16                        ; 2 uses
  %i.i = icmp ult i32 %i.h, -17
  br i1 %i.i, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.j = shl i32 %i.h, 8                          ; 2 uses
  %i.k = add i32 %i.j, 256                        ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !164  ; 6 uses
  %i.n = zext i32 %i.j to i64                     ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %indvars.iv = phi i64 [ %i.n, %bb.b ], [ %indvars.iv.next.3, %bb.g ] ; 6 uses
  %i.o = and i64 %indvars.iv, 4092
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !183, !range !36, !noundef !37
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %.split.loop.exit

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.t = and i64 %indvars.iv.next, 4093
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 9
  %i.w = load i8, ptr %i.v, align 1, !tbaa !183, !range !36, !noundef !37
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.e, label %.split.loop.exit

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.y = and i64 %indvars.iv.next.1, 4094
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !183, !range !36, !noundef !37
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %.split.loop.exit

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ad = and i64 %indvars.iv.next.2, 4095
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 9
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !183, !range !36, !noundef !37
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.g, label %.split.loop.exit

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars.3 = trunc i64 %indvars.iv.next.3 to i32
  %.not.i.3 = icmp eq i32 %i.k, %indvars.3
  br i1 %.not.i.3, label %.split.loop.exit68, label %bb.c, !llvm.loop !8

.split.loop.exit:                                 ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %bb.c ], [ %indvars.iv.next, %bb.d ], [ %indvars.iv.next.1, %bb.e ], [ %indvars.iv.next.2, %bb.f ]
  %1 = trunc i64 %indvars.iv.lcssa to i8
  br label %.split.loop.exit68

.split.loop.exit68:                               ; preds = %bb.g, %.split.loop.exit
  %.018.i = phi i8 [ %1, %.split.loop.exit ], [ 0, %bb.g ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %.split.loop.exit68, %bb.n
  %.pre55 = phi ptr [ %i.m, %.split.loop.exit68 ], [ %.pre56, %bb.n ] ; 2 uses
  %i.aj = phi ptr [ %i.m, %.split.loop.exit68 ], [ %i.bo, %bb.n ] ; 2 uses
  %indvars.iv46 = phi i64 [ %i.n, %.split.loop.exit68 ], [ %indvars.iv.next47, %bb.n ] ; 7 uses
  %i.ak = and i64 %indvars.iv46, 4095             ; 3 uses
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i8, ptr %i.am, align 4, !tbaa !182, !range !36, !noundef !37
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load i64, ptr %i.b, align 8, !tbaa !116
  %.not.i36 = icmp ugt i64 %i.ap, %indvars.iv46
  br i1 %.not.i36, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder12expand_unitsEv(ptr noundef nonnull align 8 dereferenceable(76) %0), !inline_history !671
  %.pre.pre = load ptr, ptr %i.l, align 8, !tbaa !164
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre = phi ptr [ %.pre.pre, %bb.j ], [ %.pre55, %bb.i ] ; 6 uses
  %i.aq = load i32, ptr %i.ai, align 8, !tbaa !167
  %i.ar = zext i32 %i.aq to i64
  %i.as = icmp eq i64 %indvars.iv46, %i.ar
  %i.at = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %i.ak
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !180 ; 3 uses
  br i1 %i.as, label %bb.l, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

bb.l:                                             ; preds = %bb.k
  store i32 %i.av, ptr %i.ai, align 8, !tbaa !167
  %i.aw = zext i32 %i.av to i64
  %i.ax = icmp eq i64 %indvars.iv46, %i.aw
  br i1 %i.ax, label %bb.m, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

bb.m:                                             ; preds = %bb.l
  %i.ay = load i64, ptr %i.b, align 8, !tbaa !116
  %i.az = trunc i64 %i.ay to i32
  store i32 %i.az, ptr %i.ai, align 8, !tbaa !167
  br label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.ba = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %i.ak ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !181 ; 2 uses
  %i.bc = and i32 %i.bb, 4095
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 %i.av, ptr %i.bg, align 4, !tbaa !180
  %i.bh = load i32, ptr %i.bf, align 4, !tbaa !180
  %i.bi = and i32 %i.bh, 4095
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %i.bj
  store i32 %i.bb, ptr %i.bk, align 4, !tbaa !181
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i8 1, ptr %i.bl, align 4, !tbaa !182
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv46
  %2 = trunc i64 %indvars.iv46 to i8
  %3 = xor i8 %.018.i, %2
  store i8 %3, ptr %i.bn, align 4, !tbaa !185
  br label %bb.n

bb.n:                                             ; preds = %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit, %bb.h
  %.pre56 = phi ptr [ %.pre, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit ], [ %.pre55, %bb.h ]
  %i.bo = phi ptr [ %.pre, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit ], [ %i.aj, %bb.h ]
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %indvars48 = trunc i64 %indvars.iv.next47 to i32
  %.not19.i = icmp eq i32 %i.k, %indvars48
  br i1 %.not19.i, label %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit, label %bb.h, !llvm.loop !10

_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit: ; preds = %bb.n
  %i.bp = zext i32 %i.g to i64                    ; 12 uses
  %.promoted.i = load i64, ptr %i.b, align 8, !tbaa !116 ; 2 uses
  %i.bq = icmp ugt i64 %.promoted.i, %i.bp
  br i1 %i.bq, label %.lr.ph.preheader.i, label %bb.o

.lr.ph.preheader.i:                               ; preds = %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit
  store i64 %i.bp, ptr %i.b, align 8, !tbaa !116
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph.preheader.i, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit
  %i.br = phi i64 [ %i.bp, %.lr.ph.preheader.i ], [ %.promoted.i, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !173
  %i.bu = icmp ult i64 %i.bt, %i.bp
  br i1 %i.bu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.bp)
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !116
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bv = phi i64 [ %.pre.i, %bb.p ], [ %i.br, %bb.o ] ; 3 uses
  %i.bw = icmp ult i64 %i.bv, %i.bp
  br i1 %i.bw, label %.lr.ph8.i, label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit

.lr.ph8.i:                                        ; preds = %bb.q
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.by = shl nuw nsw i64 %i.bv, 2
  %scevgep.i = getelementptr nuw i8, ptr %i.bx, i64 %i.by
  %i.bz = sub nuw nsw i64 %i.bp, %i.bv
  %i.ca = shl nuw nsw i64 %i.bz, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.ca, i1 false), !tbaa !185
  store i64 %i.bp, ptr %i.b, align 8, !tbaa !116
  br label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit

_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit: ; preds = %bb.q, %.lr.ph8.i
  %i.cb = and i64 %i.c, 4294967295                ; 4 uses
  %i.cc = icmp samesign ult i64 %i.cb, %i.bp
  br i1 %i.cc, label %.lr.ph, label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit35

.lr.ph:                                           ; preds = %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit
  %i.cd = load ptr, ptr %i.l, align 8, !tbaa !164 ; 5 uses
  %i.ce = sub i64 %i.bp, %i.c
  %xtraiter = and i64 %i.ce, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.02840.prol = phi i64 [ %i.cj, %.prol.preheader ], [ %i.cb, %.lr.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.cf = and i64 %.02840.prol, 4095
  %i.cg = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 9
  store i8 0, ptr %i.ch, align 1, !tbaa !183
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i8 0, ptr %i.ci, align 4, !tbaa !182
  %i.cj = add nuw nsw i64 %.02840.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !672

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.02840.unr = phi i64 [ %i.cb, %.lr.ph ], [ %i.cj, %.prol.preheader ]
  %i.ck = sub nsw i64 %i.cb, %i.bp
  %i.cl = icmp ugt i64 %i.ck, -4
  br i1 %i.cl, label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit35, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.02840 = phi i64 [ %i.df, %.lr.ph.new ], [ %.02840.unr, %.prol.loopexit ] ; 5 uses
  %i.cm = and i64 %.02840, 4095
  %i.cn = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 9
  store i8 0, ptr %i.co, align 1, !tbaa !183
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i8 0, ptr %i.cp, align 4, !tbaa !182
  %i.cq = add nuw nsw i64 %.02840, 1
  %i.cr = and i64 %i.cq, 4095
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %i.cr ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 9
  store i8 0, ptr %i.ct, align 1, !tbaa !183
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i8 0, ptr %i.cu, align 4, !tbaa !182
  %i.cv = add nuw nsw i64 %.02840, 2
  %i.cw = and i64 %i.cv, 4095
  %i.cx = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 9
  store i8 0, ptr %i.cy, align 1, !tbaa !183
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i8 0, ptr %i.cz, align 4, !tbaa !182
  %i.da = add nuw nsw i64 %.02840, 3
  %i.db = and i64 %i.da, 4095
  %i.dc = getelementptr inbounds nuw [12 x i8], ptr %i.cd, i64 %i.db ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 9
  store i8 0, ptr %i.dd, align 1, !tbaa !183
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i8 0, ptr %i.de, align 4, !tbaa !182
  %i.df = add nuw nsw i64 %.02840, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.df, %i.bp
  br i1 %exitcond.not.3, label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit35, label %.lr.ph.new, !llvm.loop !673

.critedge:                                        ; preds = %bb.a
  %i.dg = zext i32 %i.g to i64                    ; 8 uses
  %i.dh = icmp ugt i64 %i.c, %i.dg
  br i1 %i.dh, label %.lr.ph.preheader.i34, label %bb.r

.lr.ph.preheader.i34:                             ; preds = %.critedge
  store i64 %i.dg, ptr %i.b, align 8, !tbaa !116
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph.preheader.i34, %.critedge
  %i.di = phi i64 [ %i.dg, %.lr.ph.preheader.i34 ], [ %i.c, %.critedge ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !173
  %i.dl = icmp ult i64 %i.dk, %i.dg
  br i1 %i.dl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.dg)
  %.pre.i33 = load i64, ptr %i.b, align 8, !tbaa !116
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dm = phi i64 [ %.pre.i33, %bb.s ], [ %i.di, %bb.r ] ; 3 uses
  %i.dn = icmp ult i64 %i.dm, %i.dg
  br i1 %i.dn, label %.lr.ph8.i31, label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit35

.lr.ph8.i31:                                      ; preds = %bb.t
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.dp = shl nuw nsw i64 %i.dm, 2
  %scevgep.i32 = getelementptr nuw i8, ptr %i.do, i64 %i.dp
  %i.dq = sub nuw nsw i64 %i.dg, %i.dm
  %i.dr = shl nuw nsw i64 %i.dq, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i32, i8 0, i64 %i.dr, i1 false), !tbaa !185
  store i64 %i.dg, ptr %i.b, align 8, !tbaa !116
  br label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit35

_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit35: ; preds = %.prol.loopexit, %.lr.ph.new, %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit, %.lr.ph8.i31, %bb.t
  %.041 = add i32 %i.d, 1                         ; 2 uses
  %i.ds = icmp ult i32 %.041, %i.g
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !164 ; 10 uses
  br i1 %i.ds, label %.lr.ph44, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph44, %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit35
  %i.dv = and i64 %i.c, 4095
  %i.dw = getelementptr inbounds nuw [12 x i8], ptr %i.du, i64 %i.dv ; 2 uses
  %i.dx = add i32 %i.d, 255                       ; 3 uses
  store i32 %i.dx, ptr %i.dw, align 4, !tbaa !181
  %i.dy = and i32 %i.dx, 4095
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [12 x i8], ptr %i.du, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !167 ; 2 uses
  %i.ee = and i32 %i.ed, 4095
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [12 x i8], ptr %i.du, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !181 ; 2 uses
  store i32 %i.eh, ptr %i.dw, align 4, !tbaa !181
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !180
  %i.ei = and i32 %i.eh, 4095
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [12 x i8], ptr %i.du, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  store i32 %i.d, ptr %i.el, align 4, !tbaa !180
  store i32 %i.dx, ptr %i.eg, align 4, !tbaa !181
  ret void

.lr.ph44:                                         ; preds = %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit35, %.lr.ph44
  %.043 = phi i32 [ %.0.2, %.lr.ph44 ], [ %.041, %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit35 ] ; 7 uses
  %.0.in42 = phi i32 [ %.0.1, %.lr.ph44 ], [ %i.d, %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit35 ] ; 2 uses
  %i.em = and i32 %.0.in42, 4095
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [12 x i8], ptr %i.du, i64 %i.en
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  store i32 %.043, ptr %i.ep, align 4, !tbaa !180
  %i.eq = and i32 %.043, 4095
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [12 x i8], ptr %i.du, i64 %i.er
  store i32 %.0.in42, ptr %i.es, align 4, !tbaa !181
  %.0 = add nuw i32 %.043, 1                      ; 4 uses
  %i.et = and i32 %.043, 4095
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [12 x i8], ptr %i.du, i64 %i.eu
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store i32 %.0, ptr %i.ew, align 4, !tbaa !180
  %i.ex = and i32 %.0, 4095
  %i.ey = zext nneg i32 %i.ex to i64
end_hunk_2
