Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/builder?download=true
inline.NumInlined: 3497
inline.NumDeleted: 1222
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE10resize_bufEm:bb.a
  store i64 %.1, ptr %i.a, align 8, !tbaa !173
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

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Darts7Details18DoubleArrayBuilder15build_from_dawgERKNS0_11DawgBuilderE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !175
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.013 = phi i64 [ 1, %bb.a ], [ %i.d, %bb.b ]   ; 4 uses
  %i.c = icmp ult i64 %.013, %i.b
  %i.d = shl i64 %.013, 1
  br i1 %i.c, label %bb.b, label %bb.c, !llvm.loop !633

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !173
  %i.h = icmp ugt i64 %.013, %i.g
  br i1 %i.h, label %bb.d, label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE7reserveEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.013)
  br label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE7reserveEm.exit

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
  %storemerge.i = or disjoint i32 %i.bc, 1024
  store i32 %storemerge.i, ptr %i.ba, align 4, !tbaa !185
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !117
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !187
  %.not = icmp ult i32 %i.bf, 4
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder15build_from_dawgERKNS0_11DawgBuilderEjj(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef 0, i32 noundef 0)
  %.pre31.pre = load ptr, ptr %i.ac, align 8, !tbaa !164
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit
  %.pre31 = phi ptr [ %.pre31.pre, %bb.m ], [ %i.aj, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit ] ; 3 uses
  %i.bg = load i64, ptr %i.ae, align 8, !tbaa !116 ; 2 uses
  %i.bh = lshr i64 %i.bg, 8
  %i.bi = icmp ugt i64 %i.bg, 4351
  %i.bj = trunc i64 %i.bh to i32                  ; 3 uses
  %i.bk = add i32 %i.bj, -16
  %.05.i = select i1 %i.bi, i32 %i.bk, i32 0      ; 2 uses
  %.not7.i = icmp eq i32 %.05.i, %i.bj
  br i1 %.not7.i, label %_ZN5Darts7Details18DoubleArrayBuilder14fix_all_blocksEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i
  %i.bl = phi ptr [ %i.dq, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i ], [ %.pre31, %bb.n ]
  %i.bm = phi ptr [ %i.dr, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i ], [ %.pre31, %bb.n ] ; 6 uses
  %.08.i = phi i32 [ %i.dt, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i ], [ %.05.i, %bb.n ] ; 2 uses
  %i.bn = shl i32 %.08.i, 8                       ; 2 uses
  %i.bo = add i32 %i.bn, 256                      ; 2 uses
  %2 = zext i32 %i.bn to i64                      ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %.lr.ph.i
  %indvars.iv.i.i = phi i64 [ %2, %.lr.ph.i ], [ %indvars.iv.next.i.i.3, %bb.s ] ; 6 uses
  %3 = and i64 %indvars.iv.i.i, 4092
  %i.bp = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %3
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 9
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !183, !range !36, !noundef !37
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.p, label %.split.loop.exit.i.i

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %4 = and i64 %indvars.iv.next.i.i, 4093
  %i.bt = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !183, !range !36, !noundef !37
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.q, label %.split.loop.exit.i.i

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %5 = and i64 %indvars.iv.next.i.i.1, 4094
  %i.bx = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %5
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 9
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !183, !range !36, !noundef !37
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.r, label %.split.loop.exit.i.i

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %6 = and i64 %indvars.iv.next.i.i.2, 4095
  %i.cb = getelementptr inbounds nuw [12 x i8], ptr %i.bm, i64 %6
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 9
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !183, !range !36, !noundef !37
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.s, label %.split.loop.exit.i.i

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %indvars.i.i.3 = trunc i64 %indvars.iv.next.i.i.3 to i32
  %.not.i.i.3 = icmp eq i32 %i.bo, %indvars.i.i.3
  br i1 %.not.i.i.3, label %.split.loop.exit29.i.i, label %bb.o, !llvm.loop !8

.split.loop.exit.i.i:                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %indvars.iv.i.i.lcssa = phi i64 [ %indvars.iv.i.i, %bb.o ], [ %indvars.iv.next.i.i, %bb.p ], [ %indvars.iv.next.i.i.1, %bb.q ], [ %indvars.iv.next.i.i.2, %bb.r ]
  %7 = trunc nuw i64 %indvars.iv.i.i.lcssa to i32
  br label %.split.loop.exit29.i.i

.split.loop.exit29.i.i:                           ; preds = %bb.s, %.split.loop.exit.i.i
  %.018.i.i = phi i32 [ %7, %.split.loop.exit.i.i ], [ 0, %bb.s ]
  br label %bb.t

bb.t:                                             ; preds = %bb.z, %.split.loop.exit29.i.i
  %i.cf = phi ptr [ %i.bl, %.split.loop.exit29.i.i ], [ %i.dq, %bb.z ] ; 2 uses
  %i.cg = phi ptr [ %i.bm, %.split.loop.exit29.i.i ], [ %i.dr, %bb.z ]
  %i.ch = phi ptr [ %i.bm, %.split.loop.exit29.i.i ], [ %i.ds, %bb.z ] ; 2 uses
  %indvars.iv24.i.i = phi i64 [ %2, %.split.loop.exit29.i.i ], [ %indvars.iv.next25.i.i, %bb.z ] ; 7 uses
  %i.ci = and i64 %indvars.iv24.i.i, 4095         ; 2 uses
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i8, ptr %i.ck, align 4, !tbaa !182, !range !36, !noundef !37
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cn = load i64, ptr %i.ae, align 8, !tbaa !116
  %.not.i.i.i17 = icmp ugt i64 %i.cn, %indvars.iv24.i.i
  br i1 %.not.i.i.i17, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder12expand_unitsEv(ptr noundef nonnull align 8 dereferenceable(76) %0), !inline_history !9
  %.pre10.i = load ptr, ptr %i.ac, align 8, !tbaa !164
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.co = phi ptr [ %.pre10.i, %bb.v ], [ %i.cf, %bb.u ] ; 6 uses
  %i.cp = load i32, ptr %i.ag, align 8, !tbaa !167
  %i.cq = zext i32 %i.cp to i64
  %i.cr = icmp eq i64 %indvars.iv24.i.i, %i.cq
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %i.co, i64 %i.ci ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !180 ; 4 uses
  br i1 %i.cr, label %bb.x, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i

bb.x:                                             ; preds = %bb.w
  store i32 %i.cu, ptr %i.ag, align 8, !tbaa !167
  %i.cv = zext i32 %i.cu to i64
  %i.cw = icmp eq i64 %indvars.iv24.i.i, %i.cv
  br i1 %i.cw, label %bb.y, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i

bb.y:                                             ; preds = %bb.x
  %i.cx = load i64, ptr %i.ae, align 8, !tbaa !116
  %i.cy = trunc i64 %i.cx to i32
  store i32 %i.cy, ptr %i.ag, align 8, !tbaa !167
  br label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i

_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i: ; preds = %bb.y, %bb.x, %bb.w
  %i.cz = load i32, ptr %i.cs, align 4, !tbaa !181 ; 2 uses
  %i.da = and i32 %i.cz, 4095
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [12 x i8], ptr %i.co, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store i32 %i.cu, ptr %i.dd, align 4, !tbaa !180
  %i.de = and i32 %i.cu, 4095
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [12 x i8], ptr %i.co, i64 %i.df
  store i32 %i.cz, ptr %i.dg, align 4, !tbaa !181
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i8 1, ptr %i.dh, align 4, !tbaa !182
  %i.di = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv24.i.i ; 2 uses
  %i.dk = trunc nuw i64 %indvars.iv24.i.i to i32
  %i.dl = xor i32 %.018.i.i, %i.dk
  %i.dm = load i32, ptr %i.dj, align 4, !tbaa !185
  %i.dn = and i32 %i.dm, -256
  %i.do = and i32 %i.dl, 255
  %i.dp = or disjoint i32 %i.dn, %i.do
  store i32 %i.dp, ptr %i.dj, align 4, !tbaa !185
  br label %bb.z

bb.z:                                             ; preds = %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i, %bb.t
  %i.dq = phi ptr [ %i.cf, %bb.t ], [ %i.co, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i ] ; 3 uses
  %i.dr = phi ptr [ %i.cg, %bb.t ], [ %i.co, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i ] ; 2 uses
  %i.ds = phi ptr [ %i.ch, %bb.t ], [ %i.co, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i ]
  %indvars.iv.next25.i.i = add nuw nsw i64 %indvars.iv24.i.i, 1 ; 2 uses
  %indvars26.i.i = trunc i64 %indvars.iv.next25.i.i to i32
  %.not19.i.i = icmp eq i32 %i.bo, %indvars26.i.i
  br i1 %.not19.i.i, label %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i, label %bb.t, !llvm.loop !10

_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i: ; preds = %bb.z
  %i.dt = add i32 %.08.i, 1                       ; 2 uses
  %.not.i18 = icmp eq i32 %i.dt, %i.bj
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
end_hunk_0
begin_hunk_1_@_ZN5Darts7Details11DawgBuilderD2Ev:bb.a
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !117  ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i16, label %_ZN5Darts7Details8AutoPoolIhED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #30
  br label %_ZN5Darts7Details8AutoPoolIhED2Ev.exit

_ZN5Darts7Details8AutoPoolIhED2Ev.exit:           ; preds = %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i.i, %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted.i.i.i17 = load i64, ptr %i.t, align 8, !tbaa !175
  %.not.i.i18 = icmp eq i64 %.promoted.i.i.i17, 0
  br i1 %.not.i.i18, label %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE6resizeEm.exit.i.i, label %.lr.ph.preheader.i.i.i19

.lr.ph.preheader.i.i.i19:                         ; preds = %_ZN5Darts7Details8AutoPoolIhED2Ev.exit
  store i64 0, ptr %i.t, align 8, !tbaa !175
  br label %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE6resizeEm.exit.i.i

_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE6resizeEm.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i19, %_ZN5Darts7Details8AutoPoolIhED2Ev.exit
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !117  ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i20, label %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE6resizeEm.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.u) #30
  br label %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEED2Ev.exit

_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEED2Ev.exit: ; preds = %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE6resizeEm.exit.i.i, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted.i.i.i21 = load i64, ptr %i.v, align 8, !tbaa !189
  %.not.i.i22 = icmp eq i64 %.promoted.i.i.i21, 0
  br i1 %.not.i.i22, label %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE6resizeEm.exit.i.i, label %.lr.ph.preheader.i.i.i23

.lr.ph.preheader.i.i.i23:                         ; preds = %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEED2Ev.exit
  store i64 0, ptr %i.v, align 8, !tbaa !189
  br label %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE6resizeEm.exit.i.i

_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE6resizeEm.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i23, %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEED2Ev.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !117    ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i24, label %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE6resizeEm.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.w) #30
  br label %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEED2Ev.exit

_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEED2Ev.exit: ; preds = %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE6resizeEm.exit.i.i, %bb.j
  ret void

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
  %storemerge.i = or disjoint i32 %i.aq, 1024
  store i32 %storemerge.i, ptr %i.ao, align 4, !tbaa !185
  %i.ar = load i64, ptr %1, align 8, !tbaa !104   ; 2 uses
  %.not = icmp eq i64 %i.ar, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder17build_from_keysetIiEEvRKNS0_6KeysetIT_EEmmmj(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.ar, i64 noundef 0, i32 noundef 0)
  %.pre19.pre = load ptr, ptr %i.q, align 8, !tbaa !164
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit
  %.pre19 = phi ptr [ %.pre19.pre, %bb.l ], [ %i.x, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit ] ; 3 uses
  %i.as = load i64, ptr %i.s, align 8, !tbaa !116 ; 2 uses
  %i.at = lshr i64 %i.as, 8
  %i.au = icmp ugt i64 %i.as, 4351
  %i.av = trunc i64 %i.at to i32                  ; 3 uses
  %i.aw = add i32 %i.av, -16
  %.05.i = select i1 %i.au, i32 %i.aw, i32 0      ; 2 uses
  %.not7.i = icmp eq i32 %.05.i, %i.av
  br i1 %.not7.i, label %_ZN5Darts7Details18DoubleArrayBuilder14fix_all_blocksEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i
  %i.ax = phi ptr [ %i.dc, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i ], [ %.pre19, %bb.m ]
  %i.ay = phi ptr [ %i.dd, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i ], [ %.pre19, %bb.m ] ; 6 uses
  %.08.i = phi i32 [ %i.df, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i ], [ %.05.i, %bb.m ] ; 2 uses
  %i.az = shl i32 %.08.i, 8                       ; 2 uses
  %i.ba = add i32 %i.az, 256                      ; 2 uses
  %2 = zext i32 %i.az to i64                      ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %.lr.ph.i
  %indvars.iv.i.i = phi i64 [ %2, %.lr.ph.i ], [ %indvars.iv.next.i.i.3, %bb.r ] ; 6 uses
  %3 = and i64 %indvars.iv.i.i, 4092
  %i.bb = getelementptr inbounds nuw [12 x i8], ptr %i.ay, i64 %3
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 9
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !183, !range !36, !noundef !37
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.o, label %.split.loop.exit.i.i

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %4 = and i64 %indvars.iv.next.i.i, 4093
  %i.bf = getelementptr inbounds nuw [12 x i8], ptr %i.ay, i64 %4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 9
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !183, !range !36, !noundef !37
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.p, label %.split.loop.exit.i.i

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %5 = and i64 %indvars.iv.next.i.i.1, 4094
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %i.ay, i64 %5
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 9
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !183, !range !36, !noundef !37
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.q, label %.split.loop.exit.i.i

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %6 = and i64 %indvars.iv.next.i.i.2, 4095
  %i.bn = getelementptr inbounds nuw [12 x i8], ptr %i.ay, i64 %6
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 9
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !183, !range !36, !noundef !37
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.r, label %.split.loop.exit.i.i

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %indvars.i.i.3 = trunc i64 %indvars.iv.next.i.i.3 to i32
  %.not.i.i.3 = icmp eq i32 %i.ba, %indvars.i.i.3
  br i1 %.not.i.i.3, label %.split.loop.exit29.i.i, label %bb.n, !llvm.loop !8

.split.loop.exit.i.i:                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %indvars.iv.i.i.lcssa = phi i64 [ %indvars.iv.i.i, %bb.n ], [ %indvars.iv.next.i.i, %bb.o ], [ %indvars.iv.next.i.i.1, %bb.p ], [ %indvars.iv.next.i.i.2, %bb.q ]
  %7 = trunc nuw i64 %indvars.iv.i.i.lcssa to i32
  br label %.split.loop.exit29.i.i

.split.loop.exit29.i.i:                           ; preds = %bb.r, %.split.loop.exit.i.i
  %.018.i.i = phi i32 [ %7, %.split.loop.exit.i.i ], [ 0, %bb.r ]
  br label %bb.s

bb.s:                                             ; preds = %bb.y, %.split.loop.exit29.i.i
  %i.br = phi ptr [ %i.ax, %.split.loop.exit29.i.i ], [ %i.dc, %bb.y ] ; 2 uses
  %i.bs = phi ptr [ %i.ay, %.split.loop.exit29.i.i ], [ %i.dd, %bb.y ]
  %i.bt = phi ptr [ %i.ay, %.split.loop.exit29.i.i ], [ %i.de, %bb.y ] ; 2 uses
  %indvars.iv24.i.i = phi i64 [ %2, %.split.loop.exit29.i.i ], [ %indvars.iv.next25.i.i, %bb.y ] ; 7 uses
  %i.bu = and i64 %indvars.iv24.i.i, 4095         ; 2 uses
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load i8, ptr %i.bw, align 4, !tbaa !182, !range !36, !noundef !37
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = load i64, ptr %i.s, align 8, !tbaa !116
  %.not.i.i.i9 = icmp ugt i64 %i.bz, %indvars.iv24.i.i
  br i1 %.not.i.i.i9, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder12expand_unitsEv(ptr noundef nonnull align 8 dereferenceable(76) %0), !inline_history !9
  %.pre10.i = load ptr, ptr %i.q, align 8, !tbaa !164
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ca = phi ptr [ %.pre10.i, %bb.u ], [ %i.br, %bb.t ] ; 6 uses
  %i.cb = load i32, ptr %i.u, align 8, !tbaa !167
  %i.cc = zext i32 %i.cb to i64
  %i.cd = icmp eq i64 %indvars.iv24.i.i, %i.cc
  %i.ce = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %i.bu ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !180 ; 4 uses
  br i1 %i.cd, label %bb.w, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i

bb.w:                                             ; preds = %bb.v
  store i32 %i.cg, ptr %i.u, align 8, !tbaa !167
  %i.ch = zext i32 %i.cg to i64
  %i.ci = icmp eq i64 %indvars.iv24.i.i, %i.ch
  br i1 %i.ci, label %bb.x, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i

bb.x:                                             ; preds = %bb.w
  %i.cj = load i64, ptr %i.s, align 8, !tbaa !116
  %i.ck = trunc i64 %i.cj to i32
  store i32 %i.ck, ptr %i.u, align 8, !tbaa !167
  br label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i

_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i: ; preds = %bb.x, %bb.w, %bb.v
  %i.cl = load i32, ptr %i.ce, align 4, !tbaa !181 ; 2 uses
  %i.cm = and i32 %i.cl, 4095
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i32 %i.cg, ptr %i.cp, align 4, !tbaa !180
  %i.cq = and i32 %i.cg, 4095
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [12 x i8], ptr %i.ca, i64 %i.cr
  store i32 %i.cl, ptr %i.cs, align 4, !tbaa !181
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i8 1, ptr %i.ct, align 4, !tbaa !182
  %i.cu = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv24.i.i ; 2 uses
  %i.cw = trunc nuw i64 %indvars.iv24.i.i to i32
  %i.cx = xor i32 %.018.i.i, %i.cw
  %i.cy = load i32, ptr %i.cv, align 4, !tbaa !185
  %i.cz = and i32 %i.cy, -256
  %i.da = and i32 %i.cx, 255
  %i.db = or disjoint i32 %i.cz, %i.da
  store i32 %i.db, ptr %i.cv, align 4, !tbaa !185
  br label %bb.y

bb.y:                                             ; preds = %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i, %bb.s
  %i.dc = phi ptr [ %i.br, %bb.s ], [ %i.ca, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i ] ; 3 uses
  %i.dd = phi ptr [ %i.bs, %bb.s ], [ %i.ca, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i ] ; 2 uses
  %i.de = phi ptr [ %i.bt, %bb.s ], [ %i.ca, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i ]
  %indvars.iv.next25.i.i = add nuw nsw i64 %indvars.iv24.i.i, 1 ; 2 uses
  %indvars26.i.i = trunc i64 %indvars.iv.next25.i.i to i32
  %.not19.i.i = icmp eq i32 %i.ba, %indvars26.i.i
  br i1 %.not19.i.i, label %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i, label %bb.s, !llvm.loop !10

_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i: ; preds = %bb.y
  %i.df = add i32 %.08.i, 1                       ; 2 uses
  %.not.i10 = icmp eq i32 %i.df, %i.av
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
end_hunk_1
begin_hunk_2_@_ZN5Darts7Details11DawgBuilder5flushEj:bb.a
  %i.jw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.ak

_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit.i74: ; preds = %.loopexit30.i70
  %.not23.i75 = icmp eq i64 %i.ja, 0
  %.pre.i76 = load ptr, ptr %i.v, align 8, !tbaa !117 ; 9 uses
  br i1 %.not23.i75, label %.loopexit.i80, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit.i74
  %.pre.i76175 = ptrtoaddr ptr %.pre.i76 to i64
  %i.jx = ptrtoaddr ptr %i.jn to i64
  %min.iters.check = icmp ult i64 %i.ja, 8
  %i.jy = sub i64 %.pre.i76175, %i.jx
  %diff.check = icmp ugt i64 %i.jy, -32
  %or.cond239 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond239, label %.preheader.preheader240, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader
  %n.vec = and i64 %i.ja, -8                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %index ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %.pre.i76, i64 %index ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %wide.load = load <4 x i32>, ptr %i.ka, align 4, !tbaa !24
  %wide.load176 = load <4 x i32>, ptr %i.kb, align 4, !tbaa !24
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  store <4 x i32> %wide.load, ptr %i.jz, align 4, !tbaa !24
  store <4 x i32> %wide.load176, ptr %i.kc, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kd = icmp eq i64 %index.next, %n.vec
  br i1 %i.kd, label %middle.block, label %vector.body, !llvm.loop !658

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ja, %n.vec
  br i1 %cmp.n, label %.loopexit.thread.i79, label %.preheader.preheader240

.preheader.preheader240:                          ; preds = %.preheader.preheader, %middle.block
  %.031.i77.ph = phi i64 [ 0, %.preheader.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter251 = and i64 %i.ja, 3                 ; 2 uses
  %lcmp.mod252.not = icmp eq i64 %xtraiter251, 0
  br i1 %lcmp.mod252.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader240, %.preheader.prol
  %.031.i77.prol = phi i64 [ %i.kh, %.preheader.prol ], [ %.031.i77.ph, %.preheader.preheader240 ] ; 3 uses
  %prol.iter253 = phi i64 [ %prol.iter253.next, %.preheader.prol ], [ 0, %.preheader.preheader240 ]
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %.031.i77.prol
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %.pre.i76, i64 %.031.i77.prol
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !24
  store i32 %i.kg, ptr %i.ke, align 4, !tbaa !24
  %i.kh = add nuw i64 %.031.i77.prol, 1           ; 2 uses
  %prol.iter253.next = add i64 %prol.iter253, 1   ; 2 uses
  %prol.iter253.cmp.not = icmp eq i64 %prol.iter253.next, %xtraiter251
  br i1 %prol.iter253.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !659

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader240
  %.031.i77.unr = phi i64 [ %.031.i77.ph, %.preheader.preheader240 ], [ %i.kh, %.preheader.prol ]
  %i.ki = sub i64 %.031.i77.ph, %i.ja
  %i.kj = icmp ugt i64 %i.ki, -4
  br i1 %i.kj, label %.loopexit.thread.i79, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.031.i77 = phi i64 [ %i.kz, %.preheader ], [ %.031.i77.unr, %.preheader.prol.loopexit ] ; 6 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %.031.i77
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.pre.i76, i64 %.031.i77
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !24
  store i32 %i.km, ptr %i.kk, align 4, !tbaa !24
  %i.kn = add nuw i64 %.031.i77, 1                ; 2 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.kn
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i76, i64 %i.kn
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !24
  store i32 %i.kq, ptr %i.ko, align 4, !tbaa !24
  %i.kr = add nuw i64 %.031.i77, 2                ; 2 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.kr
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.pre.i76, i64 %i.kr
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !24
  store i32 %i.ku, ptr %i.ks, align 4, !tbaa !24
  %i.kv = add nuw i64 %.031.i77, 3                ; 2 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.kv
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %.pre.i76, i64 %i.kv
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !24
  store i32 %i.ky, ptr %i.kw, align 4, !tbaa !24
  %i.kz = add nuw i64 %.031.i77, 4                ; 2 uses
  %exitcond.not.i78.3 = icmp eq i64 %i.kz, %i.ja
  br i1 %exitcond.not.i78.3, label %.loopexit.thread.i79, label %.preheader, !llvm.loop !660

.loopexit.thread.i79:                             ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block
  store ptr %i.jn, ptr %i.v, align 8, !tbaa !117
  store i64 %.1.i71, ptr %i.x, align 8, !tbaa !191
  br label %bb.aj

.loopexit.i80:                                    ; preds = %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit.i74
  store ptr %i.jn, ptr %i.v, align 8, !tbaa !117
  store i64 %.1.i71, ptr %i.x, align 8, !tbaa !191
  %.not.i.i.i81 = icmp eq ptr %.pre.i76, null
  br i1 %.not.i.i.i81, label %_ZN5Darts7Details11DawgBuilder9free_nodeEj.exit, label %bb.aj

bb.aj:                                            ; preds = %.loopexit.i80, %.loopexit.thread.i79
  call void @_ZdaPv(ptr noundef nonnull %.pre.i76) #30
  %.pre.i.i.i.i.pre = load i64, ptr %i.w, align 8, !tbaa !190
  br label %_ZN5Darts7Details11DawgBuilder9free_nodeEj.exit

bb.ak:                                            ; preds = %bb.ai
  %i.la = landingpad { ptr, i32 }
          catch ptr null
  %i.lb = extractvalue { ptr, i32 } %i.la, 0
  call void @__clang_call_terminate(ptr %i.lb) #29
  unreachable

bb.al:                                            ; preds = %bb.ah
  unreachable

_ZN5Darts7Details11DawgBuilder9free_nodeEj.exit:  ; preds = %bb.aj, %.loopexit.i80, %.lr.ph119
  %i.lc = phi i64 [ %i.ja, %.lr.ph119 ], [ 0, %.loopexit.i80 ], [ %.pre.i.i.i.i.pre, %bb.aj ] ; 2 uses
  %i.ld = add i64 %i.lc, 1                        ; 2 uses
  store i64 %i.ld, ptr %i.w, align 8, !tbaa !190
  %i.le = load ptr, ptr %i.v, align 8, !tbaa !117
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.lc
  store i32 %.0117, ptr %i.lf, align 4, !tbaa !24
  %.not38 = icmp eq i32 %i.jf, 0
  br i1 %.not38, label %._crit_edge120, label %.lr.ph119, !llvm.loop !661

._crit_edge124:                                   ; preds = %._crit_edge120, %bb.a
  %.lcssa = phi i64 [ %i.d, %bb.a ], [ %i.ir, %._crit_edge120 ]
  %i.lg = add i64 %.lcssa, -1
  store i64 %i.lg, ptr %i.c, align 8, !tbaa !190
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Darts7Details11DawgBuilder12expand_tableEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !190  ; 3 uses
  %i.d = shl i64 %i.c, 1                          ; 5 uses
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !tbaa !190
  br label %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i

_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i:    ; preds = %.lr.ph.preheader.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !117  ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #30
  store ptr null, ptr %i.a, align 8, !tbaa !117
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5Darts7Details8AutoPoolIjE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.d)
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !190
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = phi i64 [ %.pre.i, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.g = icmp ult i64 %i.f, %i.d
  br i1 %i.g, label %.lr.ph9.i, label %_ZN5Darts7Details8AutoPoolIjE6resizeEmRKj.exit

.lr.ph9.i:                                        ; preds = %bb.e
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.i = shl i64 %i.f, 2                          ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.h, i64 %i.i
  %i.j = shl i64 %i.c, 3
  %i.k = sub i64 %i.j, %i.i
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.k, i1 false), !tbaa !24
  store i64 %i.d, ptr %i.b, align 8, !tbaa !190
  br label %_ZN5Darts7Details8AutoPoolIjE6resizeEmRKj.exit

_ZN5Darts7Details8AutoPoolIjE6resizeEmRKj.exit:   ; preds = %bb.e, %.lr.ph9.i
  %i.l = phi i64 [ %i.f, %bb.e ], [ %i.d, %.lr.ph9.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !175  ; 2 uses
  %i.p = icmp ugt i64 %i.o, 1
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Darts7Details8AutoPoolIjE6resizeEmRKj.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !117  ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %bb.k, %_ZN5Darts7Details8AutoPoolIjE6resizeEmRKj.exit
  ret void

bb.f:                                             ; preds = %.lr.ph, %bb.k
  %.012 = phi i64 [ 1, %.lr.ph ], [ %i.bc, %bb.k ] ; 3 uses
  %i.s = trunc i64 %.012 to i32                   ; 2 uses
  %i.t = and i64 %.012, 4294967295                ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !57
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !117
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.t
  %i.z = load i32, ptr %i.y, align 4, !tbaa !187
  %i.aa = and i32 %i.z, 2
  %.not10 = icmp eq i32 %i.aa, 0
  br i1 %.not10, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not12.i.i = icmp eq i32 %i.s, 0
  br i1 %.not12.i.i, label %_ZNK5Darts7Details11DawgBuilder9hash_unitEj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.ab = load ptr, ptr %i.m, align 8, !tbaa !117
  br label %bb.i

1:                                                ; preds = %bb.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %2 = and i64 %indvars.iv.next.i.i, 4294967295
  %exitcond = icmp eq i64 %2, 0
  br i1 %exitcond, label %_ZNK5Darts7Details11DawgBuilder9hash_unitEj.exit.i, label %bb.i, !llvm.loop !662

bb.i:                                             ; preds = %1, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.t, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %1 ] ; 3 uses
  %.01014.i.i.a = phi i32 [ 0, %.lr.ph.i.i ], [ %i.au, %1 ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !187 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.i.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !57
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw i32 %i.ag, 24
  %i.ai = xor i32 %i.ad, %i.ah
  %i.aj = xor i32 %i.ai, -1
  %i.ak = shl i32 %i.ad, 15
  %i.al = add i32 %i.ak, %i.aj                    ; 2 uses
  %i.am = lshr i32 %i.al, 12
  %i.an = xor i32 %i.am, %i.al
  %i.ao = mul i32 %i.an, 5                        ; 2 uses
  %i.ap = lshr i32 %i.ao, 4
  %i.aq = xor i32 %i.ap, %i.ao
  %i.ar = mul i32 %i.aq, 2057                     ; 2 uses
  %i.as = lshr i32 %i.ar, 16
  %i.at = xor i32 %.01014.i.i.a, %i.as
  %i.au = xor i32 %i.at, %i.ar                    ; 3 uses
  %i.av = trunc i32 %i.ad to i1
  br i1 %i.av, label %1, label %_ZNK5Darts7Details11DawgBuilder9hash_unitEj.exit.i

_ZNK5Darts7Details11DawgBuilder9hash_unitEj.exit.i: ; preds = %bb.i, %1, %bb.h
  %.1.i.i = phi i32 [ 0, %bb.h ], [ %i.au, %1 ], [ %i.au, %bb.i ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !117 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %_ZNK5Darts7Details11DawgBuilder9hash_unitEj.exit.i
  %.pn.in.i = phi i32 [ %.1.i.i, %_ZNK5Darts7Details11DawgBuilder9hash_unitEj.exit.i ], [ %i.ba, %bb.j ]
  %.pn.i = zext i32 %.pn.in.i to i64
  %storemerge.in.i = urem i64 %.pn.i, %i.l        ; 3 uses
  %storemerge.i = trunc nuw i64 %storemerge.in.i to i32
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %storemerge.in.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !24
  %i.az = icmp eq i32 %i.ay, 0
  %i.ba = add i32 %storemerge.i, 1
  br i1 %i.az, label %_ZNK5Darts7Details11DawgBuilder9find_unitEjPj.exit, label %bb.j, !llvm.loop !663

_ZNK5Darts7Details11DawgBuilder9find_unitEjPj.exit: ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %storemerge.in.i
  store i32 %i.s, ptr %i.bb, align 4, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %_ZNK5Darts7Details11DawgBuilder9find_unitEjPj.exit, %bb.g
  %i.bc = add nuw i64 %.012, 1                    ; 2 uses
  %exitcond14.not = icmp eq i64 %i.bc, %i.o
  br i1 %exitcond14.not, label %._crit_edge, label %bb.f, !llvm.loop !664
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK5Darts7Details11DawgBuilder9find_nodeEjPj(ptr noundef nonnull align 8 dereferenceable(200) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %.not9.i = icmp eq i32 %1, 0                    ; 2 uses
  br i1 %.not9.i, label %_ZNK5Darts7Details11DawgBuilder9hash_nodeEj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !117
  br label %bb.b

bb.b:                                             ; preds = %_ZNK5Darts7Details8DawgNode4unitEv.exit.i, %.lr.ph.i
  %.011.i = phi i32 [ %1, %.lr.ph.i ], [ %i.ai, %_ZNK5Darts7Details8DawgNode4unitEv.exit.i ]
  %.0810.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ag, %_ZNK5Darts7Details8DawgNode4unitEv.exit.i ]
  %i.b = zext i32 %.011.i to i64
  %i.c = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.b ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i8, ptr %i.d, align 4, !tbaa !199   ; 2 uses
  %i.f = icmp eq i8 %i.e, 0
  %i.g = load i32, ptr %i.c, align 4, !tbaa !200  ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = shl i32 %i.g, 1
  br label %_ZNK5Darts7Details8DawgNode4unitEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = shl i32 %i.g, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.k = load i8, ptr %i.j, align 1, !tbaa !202, !range !36, !noundef !37
  %i.l = shl nuw nsw i8 %i.k, 1
  %i.m = zext nneg i8 %i.l to i32
  %i.n = or disjoint i32 %i.i, %i.m
  br label %_ZNK5Darts7Details8DawgNode4unitEv.exit.i

_ZNK5Darts7Details8DawgNode4unitEv.exit.i:        ; preds = %bb.d, %bb.c
  %.sink.i.i = phi i32 [ %i.n, %bb.d ], [ %i.h, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.p = load i8, ptr %i.o, align 2, !tbaa !201, !range !36, !noundef !37
  %i.q = zext nneg i8 %i.p to i32
  %i.r = or disjoint i32 %.sink.i.i, %i.q         ; 2 uses
  %i.s = zext i8 %i.e to i32
  %i.t = shl nuw i32 %i.s, 24
  %i.u = xor i32 %i.t, %i.r
  %i.v = xor i32 %i.u, -1
  %i.w = shl i32 %i.r, 15
  %i.x = add i32 %i.w, %i.v                       ; 2 uses
  %i.y = lshr i32 %i.x, 12
  %i.z = xor i32 %i.y, %i.x
  %i.aa = mul i32 %i.z, 5                         ; 2 uses
  %i.ab = lshr i32 %i.aa, 4
  %i.ac = xor i32 %i.ab, %i.aa
  %i.ad = mul i32 %i.ac, 2057                     ; 2 uses
  %i.ae = lshr i32 %i.ad, 16
  %i.af = xor i32 %.0810.i, %i.ae
  %i.ag = xor i32 %i.af, %i.ad                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !203 ; 2 uses
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %_ZNK5Darts7Details11DawgBuilder9hash_nodeEj.exit.loopexit, label %bb.b, !llvm.loop !665

_ZNK5Darts7Details11DawgBuilder9hash_nodeEj.exit.loopexit: ; preds = %_ZNK5Darts7Details8DawgNode4unitEv.exit.i
  %i.aj = zext i32 %i.ag to i64
  br label %_ZNK5Darts7Details11DawgBuilder9hash_nodeEj.exit

_ZNK5Darts7Details11DawgBuilder9hash_nodeEj.exit: ; preds = %_ZNK5Darts7Details11DawgBuilder9hash_nodeEj.exit.loopexit, %bb.a
  %.08.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.aj, %_ZNK5Darts7Details11DawgBuilder9hash_nodeEj.exit.loopexit ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.am = load i64, ptr %i.al, align 8, !tbaa !190 ; 3 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !117 ; 3 uses
  %storemerge.in37 = urem i64 %.08.lcssa.i, %i.am ; 4 uses
  %storemerge38 = trunc nuw i64 %storemerge.in37 to i32
  store i32 %storemerge38, ptr %2, align 4, !tbaa !24
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %storemerge.in37
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !24 ; 3 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %_ZNK5Darts7Details11DawgBuilder9are_equalEjj.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5Darts7Details11DawgBuilder9hash_nodeEj.exit
  %i.ar = load ptr, ptr %0, align 8, !tbaa !117   ; 4 uses
  %.pn2730.i = zext i32 %1 to i64
  %.pn31.i = getelementptr inbounds nuw [12 x i8], ptr %i.ar, i64 %.pn2730.i
  %.018.in32.i = getelementptr inbounds nuw i8, ptr %.pn31.i, i64 4 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !117 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  br i1 %.not9.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.loopexit31.us
  %i.at = phi i32 [ %i.bf, %.loopexit31.us ], [ %i.ap, %.lr.ph ] ; 3 uses
  %storemerge39.us = phi i64 [ %storemerge.in.us, %.loopexit31.us ], [ %storemerge.in37, %.lr.ph ]
  %.01833.i.us = load i32, ptr %.018.in32.i, align 4, !tbaa !203 ; 2 uses
  %.not34.i.us = icmp eq i32 %.01833.i.us, 0
  br i1 %.not34.i.us, label %._crit_edge.i.us, label %.lr.ph.i13.us

.lr.ph.i13.us:                                    ; preds = %.lr.ph.split.us, %bb.e
  %.01836.i.us = phi i32 [ %.018.i.us, %bb.e ], [ %.01833.i.us, %.lr.ph.split.us ]
  %.01935.i.us = phi i32 [ %i.ay, %bb.e ], [ %i.at, %.lr.ph.split.us ] ; 2 uses
  %i.au = zext i32 %.01935.i.us to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !187
  %i.ax = trunc i32 %i.aw to i1
  br i1 %i.ax, label %bb.e, label %.loopexit31.us

bb.e:                                             ; preds = %.lr.ph.i13.us
  %i.ay = add i32 %.01935.i.us, 1                 ; 2 uses
  %.pn27.i.us = zext i32 %.01836.i.us to i64
  %.pn.i.us = getelementptr inbounds nuw [12 x i8], ptr %i.ar, i64 %.pn27.i.us
  %.018.in.i.us = getelementptr inbounds nuw i8, ptr %.pn.i.us, i64 4
  %.018.i.us = load i32, ptr %.018.in.i.us, align 4, !tbaa !203 ; 2 uses
  %.not.i14.us = icmp eq i32 %.018.i.us, 0
  br i1 %.not.i14.us, label %._crit_edge.i.us, label %.lr.ph.i13.us, !llvm.loop !666

._crit_edge.i.us:                                 ; preds = %bb.e, %.lr.ph.split.us
  %.019.lcssa.i.us = phi i32 [ %i.at, %.lr.ph.split.us ], [ %i.ay, %bb.e ]
  %i.az = zext i32 %.019.lcssa.i.us to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !187
  %i.bc = trunc i32 %i.bb to i1
  br i1 %i.bc, label %.loopexit31.us, label %_ZNK5Darts7Details11DawgBuilder9are_equalEjj.exit

.loopexit31.us:                                   ; preds = %.lr.ph.i13.us, %._crit_edge.i.us
  %i.bd = add nuw nsw i64 %storemerge39.us, 1
  %.pn.us = and i64 %i.bd, 4294967295
  %storemerge.in.us = urem i64 %.pn.us, %i.am     ; 3 uses
  %storemerge.us = trunc nuw i64 %storemerge.in.us to i32
  store i32 %storemerge.us, ptr %2, align 4, !tbaa !24
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %storemerge.in.us
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !24 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZNK5Darts7Details11DawgBuilder9are_equalEjj.exit, label %.lr.ph.split.us, !llvm.loop !667

.lr.ph.split:                                     ; preds = %.lr.ph, %.loopexit
  %i.bh = phi i32 [ %i.ct, %.loopexit ], [ %i.ap, %.lr.ph ] ; 3 uses
  %storemerge39 = phi i64 [ %storemerge.in, %.loopexit ], [ %storemerge.in37, %.lr.ph ]
  %.01833.i = load i32, ptr %.018.in32.i, align 4, !tbaa !203 ; 2 uses
  %.not34.i = icmp eq i32 %.01833.i, 0
  br i1 %.not34.i, label %._crit_edge.i, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.lr.ph.split, %bb.f
  %.01836.i = phi i32 [ %.018.i, %bb.f ], [ %.01833.i, %.lr.ph.split ]
  %.01935.i = phi i32 [ %i.bm, %bb.f ], [ %i.bh, %.lr.ph.split ] ; 2 uses
  %i.bi = zext i32 %.01935.i to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !187
  %i.bl = trunc i32 %i.bk to i1
  br i1 %i.bl, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %.lr.ph.i13
  %i.bm = add i32 %.01935.i, 1                    ; 2 uses
  %.pn27.i = zext i32 %.01836.i to i64
  %.pn.i = getelementptr inbounds nuw [12 x i8], ptr %i.ar, i64 %.pn27.i
  %.018.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 4
  %.018.i = load i32, ptr %.018.in.i, align 4, !tbaa !203 ; 2 uses
  %.not.i14 = icmp eq i32 %.018.i, 0
  br i1 %.not.i14, label %._crit_edge.i, label %.lr.ph.i13, !llvm.loop !666

._crit_edge.i:                                    ; preds = %bb.f, %.lr.ph.split
  %.019.lcssa.i = phi i32 [ %i.bh, %.lr.ph.split ], [ %i.bm, %bb.f ] ; 2 uses
  %i.bn = zext i32 %.019.lcssa.i to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !187
  %i.bq = trunc i32 %i.bp to i1
  br i1 %i.bq, label %.loopexit, label %.lr.ph40.i

.lr.ph40.i:                                       ; preds = %._crit_edge.i, %bb.j
  %.039.i = phi i32 [ %i.cp, %bb.j ], [ %1, %._crit_edge.i ]
  %.12038.i = phi i32 [ %i.cq, %bb.j ], [ %.019.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.br = zext i32 %.039.i to i64
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %i.ar, i64 %i.br ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load i8, ptr %i.bt, align 4, !tbaa !199 ; 2 uses
  %i.bv = icmp eq i8 %i.bu, 0
  %i.bw = load i32, ptr %i.bs, align 4, !tbaa !200 ; 2 uses
  br i1 %i.bv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph40.i
  %i.bx = shl i32 %i.bw, 1
  br label %_ZNK5Darts7Details8DawgNode4unitEv.exit.i15

bb.h:                                             ; preds = %.lr.ph40.i
  %i.by = shl i32 %i.bw, 2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 9
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !202, !range !36, !noundef !37
  %i.cb = shl nuw nsw i8 %i.ca, 1
  %i.cc = zext nneg i8 %i.cb to i32
  %i.cd = or disjoint i32 %i.by, %i.cc
  br label %_ZNK5Darts7Details8DawgNode4unitEv.exit.i15

_ZNK5Darts7Details8DawgNode4unitEv.exit.i15:      ; preds = %bb.h, %bb.g
  %.sink.i.i16 = phi i32 [ %i.cd, %bb.h ], [ %i.bx, %bb.g ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 10
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !201, !range !36, !noundef !37
  %i.cg = zext nneg i8 %i.cf to i32
  %i.ch = or disjoint i32 %.sink.i.i16, %i.cg
  %i.ci = zext i32 %.12038.i to i64               ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !187
  %.not24.i = icmp eq i32 %i.ch, %i.ck
  br i1 %.not24.i, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %_ZNK5Darts7Details8DawgNode4unitEv.exit.i15
  %i.cl = load ptr, ptr %i.as, align 8, !tbaa !117
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ci
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !57
  %.not25.i = icmp eq i8 %i.bu, %i.cn
  br i1 %.not25.i, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !203 ; 2 uses
  %i.cq = add i32 %.12038.i, -1
  %.not23.i = icmp eq i32 %i.cp, 0
  br i1 %.not23.i, label %_ZNK5Darts7Details11DawgBuilder9are_equalEjj.exit, label %.lr.ph40.i, !llvm.loop !668

.loopexit:                                        ; preds = %.lr.ph.i13, %bb.i, %_ZNK5Darts7Details8DawgNode4unitEv.exit.i15, %._crit_edge.i
  %i.cr = add nuw nsw i64 %storemerge39, 1
  %.pn = and i64 %i.cr, 4294967295
  %storemerge.in = urem i64 %.pn, %i.am           ; 3 uses
  %storemerge = trunc nuw i64 %storemerge.in to i32
  store i32 %storemerge, ptr %2, align 4, !tbaa !24
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %storemerge.in
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !24 ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %_ZNK5Darts7Details11DawgBuilder9are_equalEjj.exit, label %.lr.ph.split, !llvm.loop !667

_ZNK5Darts7Details11DawgBuilder9are_equalEjj.exit: ; preds = %.loopexit, %bb.j, %.loopexit31.us, %._crit_edge.i.us, %_ZNK5Darts7Details11DawgBuilder9hash_nodeEj.exit
  %i.cv = phi i32 [ %i.bh, %bb.j ], [ 0, %_ZNK5Darts7Details11DawgBuilder9hash_nodeEj.exit ], [ 0, %.loopexit31.us ], [ %i.at, %._crit_edge.i.us ], [ 0, %.loopexit ]
  ret i32 %i.cv
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Darts7Details9BitVector5buildEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !190  ; 3 uses
  %i.d = icmp ugt i64 %i.c, 4611686018427387903
  %i.e = shl i64 %i.c, 2
  %i.f = select i1 %i.d, i64 -1, i64 %i.e
  %i.g = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #35
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !166  ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !166
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN5Darts7Details9AutoArrayIjE5resetEPj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #30
  %.pre = load i64, ptr %i.b, align 8, !tbaa !190
  br label %_ZN5Darts7Details9AutoArrayIjE5resetEPj.exit

bb.d:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          catch ptr @_ZTISt9bad_alloc             ; 3 uses
  %i.j = extractvalue { ptr, i32 } %i.i, 1
  %i.k = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #28
  %i.l = icmp eq i32 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.m = extractvalue { ptr, i32 } %i.i, 0
  %i.n = tail call ptr @__cxa_begin_catch(ptr %i.m) #28 ; 0 uses
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.o, align 8, !tbaa !88
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @.str.64, ptr %i.p, align 8, !tbaa !171
  invoke void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %bb.k unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

_ZN5Darts7Details9AutoArrayIjE5resetEPj.exit:     ; preds = %bb.c, %bb.b
  %i.r = phi i64 [ %.pre, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i64 0, ptr %i.s, align 8, !tbaa !178
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.g, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5Darts7Details9AutoArrayIjE5resetEPj.exit
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !166
  %i.u = load ptr, ptr %0, align 8, !tbaa !117
  br label %bb.h

._crit_edge:                                      ; preds = %bb.h
  store i64 %i.ar, ptr %i.s, align 8, !tbaa !178
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %_ZN5Darts7Details9AutoArrayIjE5resetEPj.exit
  ret void

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %i.v = phi i64 [ 0, %.lr.ph ], [ %i.ar, %bb.h ] ; 2 uses
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.as, %bb.h ] ; 3 uses
  %i.w = trunc i64 %i.v to i32
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.011
  store i32 %i.w, ptr %i.x, align 4, !tbaa !24
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.011
  %i.z = load i32, ptr %i.y, align 4, !tbaa !24   ; 2 uses
  %i.aa = lshr i32 %i.z, 1
  %i.ab = and i32 %i.aa, 1431655765
  %i.ac = and i32 %i.z, 1431655765
  %i.ad = add nuw i32 %i.ab, %i.ac                ; 2 uses
  %i.ae = lshr i32 %i.ad, 2
  %i.af = and i32 %i.ae, 858993459
  %i.ag = and i32 %i.ad, 858993459
  %i.ah = add nuw nsw i32 %i.af, %i.ag            ; 2 uses
  %i.ai = lshr i32 %i.ah, 4
  %i.aj = add nuw nsw i32 %i.ai, %i.ah
  %i.ak = and i32 %i.aj, 252645135                ; 2 uses
  %i.al = lshr i32 %i.ak, 8
  %i.am = add nuw nsw i32 %i.al, %i.ak            ; 2 uses
  %i.an = lshr i32 %i.am, 16
  %i.ao = add nuw nsw i32 %i.an, %i.am
  %i.ap = and i32 %i.ao, 63
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = add i64 %i.v, %i.aq                     ; 2 uses
  %i.as = add nuw i64 %.011, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !669

bb.i:                                             ; preds = %bb.f, %bb.d
  %.merged = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.q, %bb.f ]
  resume { ptr, i32 } %.merged

bb.j:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #29
  unreachable

bb.k:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Darts7Details18DoubleArrayBuilder15build_from_dawgERKNS0_11DawgBuilderEjj(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = zext i32 %2 to i64
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !187  ; 3 uses
  %i.f = lshr i32 %i.e, 2                         ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.h = lshr i32 %i.e, 7
  %i.i = zext nneg i32 %i.h to i64                ; 4 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !117
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !24   ; 2 uses
  %i.m = and i32 %i.f, 31                         ; 4 uses
  %i.n = lshr i32 %i.l, %i.m
  %i.o = trunc i32 %i.n to i1
  br i1 %i.o, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !166
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !24
  %i.t = xor i32 %i.m, 31
  %i.u = lshr i32 -1, %i.t
  %i.v = and i32 %i.u, %i.l                       ; 2 uses
  %i.w = lshr i32 %i.v, 1
  %i.x = and i32 %i.w, 1431655765
  %i.y = and i32 %i.v, 1431655765
  %i.z = add nuw i32 %i.x, %i.y                   ; 2 uses
  %i.aa = lshr i32 %i.z, 2
  %i.ab = and i32 %i.aa, 858993459
  %i.ac = and i32 %i.z, 858993459
  %i.ad = add nuw nsw i32 %i.ab, %i.ac            ; 2 uses
  %i.ae = lshr i32 %i.ad, 4
  %i.af = add nuw nsw i32 %i.ae, %i.ad
  %i.ag = and i32 %i.af, 252645135                ; 2 uses
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = add nuw nsw i32 %i.ah, %i.ag            ; 2 uses
  %i.aj = lshr i32 %i.ai, 16
  %i.ak = add nuw nsw i32 %i.aj, %i.ai
  %i.al = and i32 %i.ak, 63
  %i.am = add nsw i32 %i.al, -1
  %i.an = add i32 %i.am, %i.s
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = zext i32 %i.an to i64
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !166
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.ap
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !24 ; 2 uses
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.at = xor i32 %i.as, %3                       ; 6 uses
  %i.au = and i32 %i.at, 534773760
  %.not40 = icmp eq i32 %i.au, 0
  %i.av = and i32 %i.at, 255
  %.not41 = icmp eq i32 %i.av, 0
  %or.cond = or i1 %.not40, %.not41
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ax = zext nneg i32 %i.f to i64
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !117
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ax
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !57
  %i.bb = icmp eq i8 %i.ba, 0
  br i1 %i.bb, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = zext i32 %3 to i64
  %i.be = load ptr, ptr %i.bc, align 8, !tbaa !117
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bd ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %storemerge.i = or i32 %i.bg, 256
  store i32 %storemerge.i, ptr %i.bf, align 4, !tbaa !185
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.d
  %i.bh = icmp ugt i32 %i.at, 536870911
  br i1 %i.bh, label %bb.f, label %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit

bb.f:                                             ; preds = %.critedge
  %i.bi = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.bi, align 8, !tbaa !88
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr @.str.65, ptr %i.bj, align 8, !tbaa !171
  tail call void @__cxa_throw(ptr nonnull %i.bi, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #34
  unreachable

_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit: ; preds = %.critedge
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !117
  %i.bm = zext i32 %3 to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !185
  %i.bp = and i32 %i.bo, -2147483137
  %i.bq = icmp samesign ult i32 %i.at, 2097152
  %i.br = shl nuw nsw i32 %i.at, 2
  %i.bs = or i32 %i.br, 512
  %i.bt = shl nuw nsw i32 %i.at, 10
  %.pn.i = select i1 %i.bq, i32 %i.bt, i32 %i.bs
  %storemerge.i44 = or i32 %i.bp, %.pn.i
  store i32 %storemerge.i44, ptr %i.bn, align 4, !tbaa !185
  br label %.loopexit

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.bu = tail call noundef i32 @_ZN5Darts7Details18DoubleArrayBuilder17arrange_from_dawgERKNS0_11DawgBuilderEjj(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %2, i32 noundef %3) ; 2 uses
  %i.bv = load ptr, ptr %i.g, align 8, !tbaa !117
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !24 ; 2 uses
  %i.by = lshr i32 %i.bx, %i.m
  %i.bz = trunc i32 %i.by to i1
  br i1 %i.bz, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
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
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 48
  %4 = lshr i32 %i.e, 2
  %5 = zext nneg i32 %4 to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.l ], [ %5, %bb.i ] ; 4 uses
  %.037 = phi i32 [ %i.dn, %bb.l ], [ %i.f, %bb.i ]
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !117
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %indvars.iv
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !57  ; 2 uses
  %.not42 = icmp eq i8 %i.dg, 0
  br i1 %.not42, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dh = zext i8 %i.dg to i32
  %i.di = xor i32 %i.bu, %i.dh
  %6 = trunc nuw i64 %indvars.iv to i32
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder15build_from_dawgERKNS0_11DawgBuilderEjj(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef %6, i32 noundef %i.di)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !187
  %i.dm = trunc i32 %i.dl to i1
  %i.dn = add i32 %.037, 1                        ; 2 uses
  %.not4345 = icmp ne i32 %i.dn, 0
  %.not43.not = and i1 %.not4345, %i.dm
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not43.not, label %bb.j, label %.loopexit, !llvm.loop !670

.loopexit:                                        ; preds = %bb.l, %_ZN5Darts7Details22DoubleArrayBuilderUnit10set_offsetEj.exit
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
  %1 = zext i32 %i.j to i64                       ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %indvars.iv = phi i64 [ %1, %bb.b ], [ %indvars.iv.next.3, %bb.g ] ; 6 uses
  %2 = and i64 %indvars.iv, 4092
  %i.n = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %2
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 9
  %i.p = load i8, ptr %i.o, align 1, !tbaa !183, !range !36, !noundef !37
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %.split.loop.exit

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %3 = and i64 %indvars.iv.next, 4093
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 9
  %i.t = load i8, ptr %i.s, align 1, !tbaa !183, !range !36, !noundef !37
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.e, label %.split.loop.exit

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %4 = and i64 %indvars.iv.next.1, 4094
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %4
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 9
  %i.x = load i8, ptr %i.w, align 1, !tbaa !183, !range !36, !noundef !37
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.f, label %.split.loop.exit

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %5 = and i64 %indvars.iv.next.2, 4095
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.m, i64 %5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 9
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !183, !range !36, !noundef !37
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.g, label %.split.loop.exit

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %indvars.3 = trunc i64 %indvars.iv.next.3 to i32
  %.not.i.3 = icmp eq i32 %i.k, %indvars.3
  br i1 %.not.i.3, label %.split.loop.exit68, label %bb.c, !llvm.loop !8

.split.loop.exit:                                 ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %bb.c ], [ %indvars.iv.next, %bb.d ], [ %indvars.iv.next.1, %bb.e ], [ %indvars.iv.next.2, %bb.f ]
  %6 = trunc nuw i64 %indvars.iv.lcssa to i32
  br label %.split.loop.exit68

.split.loop.exit68:                               ; preds = %bb.g, %.split.loop.exit
  %.018.i = phi i32 [ %6, %.split.loop.exit ], [ 0, %bb.g ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %.split.loop.exit68, %bb.n
  %.pre55 = phi ptr [ %i.m, %.split.loop.exit68 ], [ %.pre56, %bb.n ] ; 2 uses
  %i.ae = phi ptr [ %i.m, %.split.loop.exit68 ], [ %i.bp, %bb.n ] ; 2 uses
  %indvars.iv46 = phi i64 [ %1, %.split.loop.exit68 ], [ %indvars.iv.next47, %bb.n ] ; 7 uses
  %i.af = and i64 %indvars.iv46, 4095             ; 3 uses
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !182, !range !36, !noundef !37
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !116
  %.not.i36 = icmp ugt i64 %i.ak, %indvars.iv46
  br i1 %.not.i36, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder12expand_unitsEv(ptr noundef nonnull align 8 dereferenceable(76) %0), !inline_history !671
  %.pre.pre = load ptr, ptr %i.l, align 8, !tbaa !164
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre = phi ptr [ %.pre.pre, %bb.j ], [ %.pre55, %bb.i ] ; 6 uses
  %i.al = load i32, ptr %i.ad, align 8, !tbaa !167
  %i.am = zext i32 %i.al to i64
  %i.an = icmp eq i64 %indvars.iv46, %i.am
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %i.af
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !180 ; 3 uses
  br i1 %i.an, label %bb.l, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

bb.l:                                             ; preds = %bb.k
  store i32 %i.aq, ptr %i.ad, align 8, !tbaa !167
  %i.ar = zext i32 %i.aq to i64
  %i.as = icmp eq i64 %indvars.iv46, %i.ar
  br i1 %i.as, label %bb.m, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

bb.m:                                             ; preds = %bb.l
  %i.at = load i64, ptr %i.b, align 8, !tbaa !116
  %i.au = trunc i64 %i.at to i32
  store i32 %i.au, ptr %i.ad, align 8, !tbaa !167
  br label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %i.af ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !181 ; 2 uses
  %i.ax = and i32 %i.aw, 4095
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 %i.aq, ptr %i.bb, align 4, !tbaa !180
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !180
  %i.bd = and i32 %i.bc, 4095
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %i.be
  store i32 %i.aw, ptr %i.bf, align 4, !tbaa !181
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i8 1, ptr %i.bg, align 4, !tbaa !182
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv46 ; 2 uses
  %i.bj = trunc nuw i64 %indvars.iv46 to i32
  %i.bk = xor i32 %.018.i, %i.bj
  %i.bl = load i32, ptr %i.bi, align 4, !tbaa !185
  %i.bm = and i32 %i.bl, -256
  %i.bn = and i32 %i.bk, 255
  %i.bo = or disjoint i32 %i.bm, %i.bn
  store i32 %i.bo, ptr %i.bi, align 4, !tbaa !185
  br label %bb.n

bb.n:                                             ; preds = %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit, %bb.h
  %.pre56 = phi ptr [ %.pre, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit ], [ %.pre55, %bb.h ]
  %i.bp = phi ptr [ %.pre, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit ], [ %i.ae, %bb.h ]
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %indvars48 = trunc i64 %indvars.iv.next47 to i32
  %.not19.i = icmp eq i32 %i.k, %indvars48
  br i1 %.not19.i, label %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit, label %bb.h, !llvm.loop !10

_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit: ; preds = %bb.n
  %i.bq = zext i32 %i.g to i64                    ; 12 uses
  %.promoted.i = load i64, ptr %i.b, align 8, !tbaa !116 ; 2 uses
  %i.br = icmp ugt i64 %.promoted.i, %i.bq
  br i1 %i.br, label %.lr.ph.preheader.i, label %bb.o

.lr.ph.preheader.i:                               ; preds = %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit
  store i64 %i.bq, ptr %i.b, align 8, !tbaa !116
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph.preheader.i, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit
  %i.bs = phi i64 [ %i.bq, %.lr.ph.preheader.i ], [ %.promoted.i, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit ]
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !173
  %i.bv = icmp ult i64 %i.bu, %i.bq
  br i1 %i.bv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.bq)
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !116
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bw = phi i64 [ %.pre.i, %bb.p ], [ %i.bs, %bb.o ] ; 3 uses
  %i.bx = icmp ult i64 %i.bw, %i.bq
  br i1 %i.bx, label %.lr.ph8.i, label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit

.lr.ph8.i:                                        ; preds = %bb.q
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.bz = shl nuw nsw i64 %i.bw, 2
  %scevgep.i = getelementptr nuw i8, ptr %i.by, i64 %i.bz
  %i.ca = sub nuw nsw i64 %i.bq, %i.bw
  %i.cb = shl nuw nsw i64 %i.ca, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.cb, i1 false), !tbaa !185
  store i64 %i.bq, ptr %i.b, align 8, !tbaa !116
  br label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit

_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit: ; preds = %bb.q, %.lr.ph8.i
  %i.cc = and i64 %i.c, 4294967295                ; 4 uses
  %i.cd = icmp samesign ult i64 %i.cc, %i.bq
  br i1 %i.cd, label %.lr.ph, label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit35

.lr.ph:                                           ; preds = %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit
  %i.ce = load ptr, ptr %i.l, align 8, !tbaa !164 ; 5 uses
  %i.cf = sub i64 %i.bq, %i.c
  %xtraiter = and i64 %i.cf, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph, %.prol.preheader
  %.02840.prol = phi i64 [ %i.ck, %.prol.preheader ], [ %i.cc, %.lr.ph ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph ]
  %i.cg = and i64 %.02840.prol, 4095
  %i.ch = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 9
  store i8 0, ptr %i.ci, align 1, !tbaa !183
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store i8 0, ptr %i.cj, align 4, !tbaa !182
  %i.ck = add nuw nsw i64 %.02840.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !672

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph
  %.02840.unr = phi i64 [ %i.cc, %.lr.ph ], [ %i.ck, %.prol.preheader ]
  %i.cl = sub nsw i64 %i.cc, %i.bq
  %i.cm = icmp ugt i64 %i.cl, -4
  br i1 %i.cm, label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit35, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.02840 = phi i64 [ %i.dg, %.lr.ph.new ], [ %.02840.unr, %.prol.loopexit ] ; 5 uses
  %i.cn = and i64 %.02840, 4095
  %i.co = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 9
  store i8 0, ptr %i.cp, align 1, !tbaa !183
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store i8 0, ptr %i.cq, align 4, !tbaa !182
  %i.cr = add nuw nsw i64 %.02840, 1
  %i.cs = and i64 %i.cr, 4095
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 9
  store i8 0, ptr %i.cu, align 1, !tbaa !183
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i8 0, ptr %i.cv, align 4, !tbaa !182
  %i.cw = add nuw nsw i64 %.02840, 2
  %i.cx = and i64 %i.cw, 4095
  %i.cy = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 9
  store i8 0, ptr %i.cz, align 1, !tbaa !183
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i8 0, ptr %i.da, align 4, !tbaa !182
  %i.db = add nuw nsw i64 %.02840, 3
  %i.dc = and i64 %i.db, 4095
  %i.dd = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 9
  store i8 0, ptr %i.de, align 1, !tbaa !183
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i8 0, ptr %i.df, align 4, !tbaa !182
  %i.dg = add nuw nsw i64 %.02840, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dg, %i.bq
  br i1 %exitcond.not.3, label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit35, label %.lr.ph.new, !llvm.loop !673

.critedge:                                        ; preds = %bb.a
  %i.dh = zext i32 %i.g to i64                    ; 8 uses
  %i.di = icmp ugt i64 %i.c, %i.dh
  br i1 %i.di, label %.lr.ph.preheader.i34, label %bb.r

.lr.ph.preheader.i34:                             ; preds = %.critedge
  store i64 %i.dh, ptr %i.b, align 8, !tbaa !116
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph.preheader.i34, %.critedge
  %i.dj = phi i64 [ %i.dh, %.lr.ph.preheader.i34 ], [ %i.c, %.critedge ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !173
  %i.dm = icmp ult i64 %i.dl, %i.dh
  br i1 %i.dm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.dh)
  %.pre.i33 = load i64, ptr %i.b, align 8, !tbaa !116
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dn = phi i64 [ %.pre.i33, %bb.s ], [ %i.dj, %bb.r ] ; 3 uses
  %i.do = icmp ult i64 %i.dn, %i.dh
end_hunk_2
