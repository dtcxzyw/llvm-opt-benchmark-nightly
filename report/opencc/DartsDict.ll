Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/DartsDict?download=true
inline.NumInlined: 1274
inline.NumDeleted: 491
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE10resize_bufEm:bb.a
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.031.prol
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !56
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !56
  %i.ac = add nuw i64 %.031.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !218

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.031.unr = phi i64 [ %.031.ph, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %i.ad = sub i64 %.031.ph, %i.r
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %.loopexit.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.031 = phi i64 [ %i.au, %scalar.ph ], [ %.031.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.031
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.031
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !56
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !56
  %i.ai = add nuw i64 %.031, 1                    ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ai
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !56
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !56
  %i.am = add nuw i64 %.031, 2                    ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.am
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !56
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !56
  %i.aq = add nuw i64 %.031, 3                    ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.aq
  %i.at = load i32, ptr %i.as, align 4, !tbaa !56
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !56
  %i.au = add nuw i64 %.031, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.au, %i.r
  br i1 %exitcond.not.3, label %.loopexit.thread, label %scalar.ph, !llvm.loop !219

.loopexit.thread:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  store ptr %i.g, ptr %0, align 8, !tbaa !117
  store i64 %.1, ptr %i.a, align 8, !tbaa !133
  br label %bb.e

.loopexit:                                        ; preds = %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit
  store ptr %i.g, ptr %0, align 8, !tbaa !117
  store i64 %.1, ptr %i.a, align 8, !tbaa !133
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
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #31
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Darts7Details18DoubleArrayBuilder15build_from_dawgERKNS0_11DawgBuilderE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !135
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.013 = phi i64 [ 1, %bb.a ], [ %i.d, %bb.b ]   ; 4 uses
  %i.c = icmp ult i64 %.013, %i.b
  %i.d = shl i64 %.013, 1
  br i1 %i.c, label %bb.b, label %bb.c, !llvm.loop !220

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !133
  %i.h = icmp ugt i64 %.013, %i.g
  br i1 %i.h, label %bb.d, label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE7reserveEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %.013)
  br label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE7reserveEm.exit

_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE7reserveEm.exit: ; preds = %bb.c, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !138  ; 3 uses
  %i.l = icmp ugt i64 %i.k, 4611686018427387903
  %i.m = shl i64 %i.k, 2
  %i.n = select i1 %i.l, i64 -1, i64 %i.m
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #29
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !126  ; 2 uses
  store ptr %i.o, ptr %i.i, align 8, !tbaa !126
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZN5Darts7Details9AutoArrayIjE5resetEPj.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE7reserveEm.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #30
  %.pre = load i64, ptr %i.j, align 8, !tbaa !138
  br label %_ZN5Darts7Details9AutoArrayIjE5resetEPj.exit

_ZN5Darts7Details9AutoArrayIjE5resetEPj.exit:     ; preds = %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE7reserveEm.exit, %bb.e
  %i.q = phi i64 [ %i.k, %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE7reserveEm.exit ], [ %.pre, %bb.e ] ; 2 uses
  %.not27 = icmp eq i64 %i.q, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5Darts7Details9AutoArrayIjE5resetEPj.exit
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !126
  %i.s = shl nuw i64 %i.q, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %i.s, i1 false), !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Darts7Details9AutoArrayIjE5resetEPj.exit
  %i.t = tail call noalias noundef nonnull dereferenceable(49152) ptr @_Znam(i64 noundef 49152) #29 ; 9 uses
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
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !124 ; 2 uses
  store ptr %i.t, ptr %i.ac, align 8, !tbaa !124
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
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder12expand_unitsEv(ptr noundef nonnull align 8 dereferenceable(76) %0), !inline_history !13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5resetEPS2_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !127
  %i.ai = icmp eq i32 %i.ah, 0
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !124 ; 7 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !140 ; 4 uses
  br i1 %i.ai, label %bb.k, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

bb.k:                                             ; preds = %bb.j
  store i32 %i.al, ptr %i.ag, align 8, !tbaa !127
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.l, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

bb.l:                                             ; preds = %bb.k
  %i.an = load i64, ptr %i.ae, align 8, !tbaa !116
  %i.ao = trunc i64 %i.an to i32
  store i32 %i.ao, ptr %i.ag, align 8, !tbaa !127
  br label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.ap = load i32, ptr %i.aj, align 4, !tbaa !141 ; 2 uses
  %i.aq = and i32 %i.ap, 4095
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 %i.al, ptr %i.at, align 4, !tbaa !140
  %i.au = and i32 %i.al, 4095
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %i.aj, i64 %i.av
  store i32 %i.ap, ptr %i.aw, align 4, !tbaa !141
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i8 1, ptr %i.ax, align 4, !tbaa !142
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 9
  store i8 1, ptr %i.ay, align 1, !tbaa !143
  %i.az = load ptr, ptr %i.e, align 8, !tbaa !117 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !145
  %i.bb = and i32 %i.ba, -2147483392
  %storemerge.i = or disjoint i32 %i.bb, 1024
  store i32 %storemerge.i, ptr %i.az, align 4, !tbaa !145
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !117
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !147
  %.not = icmp ult i32 %i.be, 4
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder15build_from_dawgERKNS0_11DawgBuilderEjj(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(200) %1, i32 noundef 0, i32 noundef 0)
  %.pre31.pre = load ptr, ptr %i.ac, align 8, !tbaa !124
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit
  %.pre31 = phi ptr [ %.pre31.pre, %bb.m ], [ %i.aj, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit ] ; 3 uses
  %i.bf = load i64, ptr %i.ae, align 8, !tbaa !116 ; 2 uses
  %i.bg = lshr i64 %i.bf, 8
  %i.bh = icmp ugt i64 %i.bf, 4351
  %i.bi = trunc i64 %i.bg to i32                  ; 3 uses
  %i.bj = add i32 %i.bi, -16
  %.05.i = select i1 %i.bh, i32 %i.bj, i32 0      ; 2 uses
  %.not7.i = icmp eq i32 %.05.i, %i.bi
  br i1 %.not7.i, label %_ZN5Darts7Details18DoubleArrayBuilder14fix_all_blocksEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i
  %i.bk = phi ptr [ %i.dv, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i ], [ %.pre31, %bb.n ]
  %i.bl = phi ptr [ %i.dw, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i ], [ %.pre31, %bb.n ] ; 6 uses
  %.08.i = phi i32 [ %i.dy, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i ], [ %.05.i, %bb.n ] ; 2 uses
  %i.bm = shl i32 %.08.i, 8                       ; 2 uses
  %i.bn = add i32 %i.bm, 256                      ; 2 uses
  %i.bo = zext i32 %i.bm to i64                   ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %.lr.ph.i
  %indvars.iv.i.i = phi i64 [ %i.bo, %.lr.ph.i ], [ %indvars.iv.next.i.i.3, %bb.s ] ; 6 uses
  %i.bp = and i64 %indvars.iv.i.i, 4092
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 9
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !143, !range !148, !noundef !149
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.p, label %.split.loop.exit.i.i

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bu = and i64 %indvars.iv.next.i.i, 4093
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 9
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !143, !range !148, !noundef !149
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.q, label %.split.loop.exit.i.i

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bz = and i64 %indvars.iv.next.i.i.1, 4094
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 9
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !143, !range !148, !noundef !149
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.r, label %.split.loop.exit.i.i

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ce = and i64 %indvars.iv.next.i.i.2, 4095
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 9
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !143, !range !148, !noundef !149
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.s, label %.split.loop.exit.i.i

bb.s:                                             ; preds = %bb.r
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %indvars.i.i.3 = trunc i64 %indvars.iv.next.i.i.3 to i32
  %.not.i.i.3 = icmp eq i32 %i.bn, %indvars.i.i.3
  br i1 %.not.i.i.3, label %.split.loop.exit29.i.i, label %bb.o, !llvm.loop !14

.split.loop.exit.i.i:                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %indvars.iv.i.i.lcssa = phi i64 [ %indvars.iv.i.i, %bb.o ], [ %indvars.iv.next.i.i, %bb.p ], [ %indvars.iv.next.i.i.1, %bb.q ], [ %indvars.iv.next.i.i.2, %bb.r ]
  %i.cj = trunc nuw i64 %indvars.iv.i.i.lcssa to i32
  br label %.split.loop.exit29.i.i

.split.loop.exit29.i.i:                           ; preds = %bb.s, %.split.loop.exit.i.i
  %.018.i.i = phi i32 [ %i.cj, %.split.loop.exit.i.i ], [ 0, %bb.s ]
  br label %bb.t

bb.t:                                             ; preds = %bb.z, %.split.loop.exit29.i.i
  %i.ck = phi ptr [ %i.bk, %.split.loop.exit29.i.i ], [ %i.dv, %bb.z ] ; 2 uses
  %i.cl = phi ptr [ %i.bl, %.split.loop.exit29.i.i ], [ %i.dw, %bb.z ]
  %i.cm = phi ptr [ %i.bl, %.split.loop.exit29.i.i ], [ %i.dx, %bb.z ] ; 2 uses
  %indvars.iv24.i.i = phi i64 [ %i.bo, %.split.loop.exit29.i.i ], [ %indvars.iv.next25.i.i, %bb.z ] ; 7 uses
  %i.cn = and i64 %indvars.iv24.i.i, 4095         ; 2 uses
  %i.co = getelementptr inbounds nuw [12 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load i8, ptr %i.cp, align 4, !tbaa !142, !range !148, !noundef !149
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = load i64, ptr %i.ae, align 8, !tbaa !116
  %.not.i.i.i17 = icmp ugt i64 %i.cs, %indvars.iv24.i.i
  br i1 %.not.i.i.i17, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder12expand_unitsEv(ptr noundef nonnull align 8 dereferenceable(76) %0), !inline_history !15
  %.pre10.i = load ptr, ptr %i.ac, align 8, !tbaa !124
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ct = phi ptr [ %.pre10.i, %bb.v ], [ %i.ck, %bb.u ] ; 6 uses
  %i.cu = load i32, ptr %i.ag, align 8, !tbaa !127
  %i.cv = zext i32 %i.cu to i64
  %i.cw = icmp eq i64 %indvars.iv24.i.i, %i.cv
  %i.cx = getelementptr inbounds nuw [12 x i8], ptr %i.ct, i64 %i.cn ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !140 ; 4 uses
  br i1 %i.cw, label %bb.x, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i

bb.x:                                             ; preds = %bb.w
  store i32 %i.cz, ptr %i.ag, align 8, !tbaa !127
  %i.da = zext i32 %i.cz to i64
  %i.db = icmp eq i64 %indvars.iv24.i.i, %i.da
  br i1 %i.db, label %bb.y, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i

bb.y:                                             ; preds = %bb.x
  %i.dc = load i64, ptr %i.ae, align 8, !tbaa !116
  %i.dd = trunc i64 %i.dc to i32
  store i32 %i.dd, ptr %i.ag, align 8, !tbaa !127
  br label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i

_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i: ; preds = %bb.y, %bb.x, %bb.w
  %i.de = load i32, ptr %i.cx, align 4, !tbaa !141 ; 2 uses
  %i.df = and i32 %i.de, 4095
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw [12 x i8], ptr %i.ct, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 %i.cz, ptr %i.di, align 4, !tbaa !140
  %i.dj = and i32 %i.cz, 4095
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [12 x i8], ptr %i.ct, i64 %i.dk
  store i32 %i.de, ptr %i.dl, align 4, !tbaa !141
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i8 1, ptr %i.dm, align 4, !tbaa !142
  %i.dn = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv24.i.i ; 2 uses
  %i.dp = trunc nuw i64 %indvars.iv24.i.i to i32
  %i.dq = xor i32 %.018.i.i, %i.dp
  %i.dr = load i32, ptr %i.do, align 4, !tbaa !145
  %i.ds = and i32 %i.dr, -256
  %i.dt = and i32 %i.dq, 255
  %i.du = or disjoint i32 %i.ds, %i.dt
  store i32 %i.du, ptr %i.do, align 4, !tbaa !145
  br label %bb.z

bb.z:                                             ; preds = %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i, %bb.t
  %i.dv = phi ptr [ %i.ck, %bb.t ], [ %i.ct, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i ] ; 3 uses
  %i.dw = phi ptr [ %i.cl, %bb.t ], [ %i.ct, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i ] ; 2 uses
  %i.dx = phi ptr [ %i.cm, %bb.t ], [ %i.ct, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i ]
  %indvars.iv.next25.i.i = add nuw nsw i64 %indvars.iv24.i.i, 1 ; 2 uses
  %indvars26.i.i = trunc i64 %indvars.iv.next25.i.i to i32
  %.not19.i.i = icmp eq i32 %i.bn, %indvars26.i.i
  br i1 %.not19.i.i, label %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i, label %bb.t, !llvm.loop !16

_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i: ; preds = %bb.z
  %i.dy = add i32 %.08.i, 1                       ; 2 uses
  %.not.i18 = icmp eq i32 %i.dy, %i.bi
  br i1 %.not.i18, label %_ZN5Darts7Details18DoubleArrayBuilder14fix_all_blocksEv.exit, label %.lr.ph.i, !llvm.loop !17

_ZN5Darts7Details18DoubleArrayBuilder14fix_all_blocksEv.exit: ; preds = %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i, %bb.n
  %i.dz = phi ptr [ %.pre31, %bb.n ], [ %i.dv, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i ] ; 2 uses
  %.not.i20 = icmp eq ptr %i.dz, null
  br i1 %.not.i20, label %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN5Darts7Details18DoubleArrayBuilder14fix_all_blocksEv.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.dz) #30
  store ptr null, ptr %i.ac, align 8, !tbaa !124
  br label %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit

_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit: ; preds = %_ZN5Darts7Details18DoubleArrayBuilder14fix_all_blocksEv.exit, %bb.aa
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %.promoted.i.i = load i64, ptr %i.eb, align 8, !tbaa !125
  %.not.i21 = icmp eq i64 %.promoted.i.i, 0
  br i1 %.not.i21, label %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit
  store i64 0, ptr %i.eb, align 8, !tbaa !125
  br label %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i

_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i:    ; preds = %.lr.ph.preheader.i.i, %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !117 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.ec, null
end_hunk_0
begin_hunk_1_@_ZN5Darts7Details11DawgBuilderD2Ev:bb.a
bb.f:                                             ; preds = %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i.i11
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #30
  store ptr null, ptr %i.j, align 8, !tbaa !117
  br label %_ZN5Darts7Details8AutoPoolIjE5clearEv.exit.i.i

_ZN5Darts7Details8AutoPoolIjE5clearEv.exit.i.i:   ; preds = %bb.f, %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i.i11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !126  ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i1.i.i, label %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i5.i, label %_ZN5Darts7Details9AutoArrayIjED2Ev.exit.i

_ZN5Darts7Details9AutoArrayIjED2Ev.exit.i:        ; preds = %_ZN5Darts7Details8AutoPoolIjE5clearEv.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #30
  store ptr null, ptr %i.m, align 8, !tbaa !126
  %.promoted.i.i.i2.pr.i = load i64, ptr %i.k, align 8, !tbaa !152
  %.not.i.i3.i = icmp eq i64 %.promoted.i.i.i2.pr.i, 0
  br i1 %.not.i.i3.i, label %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i5.i, label %.lr.ph.preheader.i.i.i4.i

.lr.ph.preheader.i.i.i4.i:                        ; preds = %_ZN5Darts7Details9AutoArrayIjED2Ev.exit.i
  store i64 0, ptr %i.k, align 8, !tbaa !152
  br label %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i5.i

_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i5.i: ; preds = %.lr.ph.preheader.i.i.i4.i, %_ZN5Darts7Details9AutoArrayIjED2Ev.exit.i, %_ZN5Darts7Details8AutoPoolIjE5clearEv.exit.i.i
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !117  ; 2 uses
  %.not.i.i.i6.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i6.i, label %_ZN5Darts7Details9BitVectorD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i5.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #30
  br label %_ZN5Darts7Details9BitVectorD2Ev.exit

_ZN5Darts7Details9BitVectorD2Ev.exit:             ; preds = %_ZN5Darts7Details8AutoPoolIjE6resizeEm.exit.i.i5.i, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.promoted.i.i.i13 = load i64, ptr %i.q, align 8, !tbaa !125
  %.not.i.i14 = icmp eq i64 %.promoted.i.i.i13, 0
  br i1 %.not.i.i14, label %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i.i, label %.lr.ph.preheader.i.i.i15

.lr.ph.preheader.i.i.i15:                         ; preds = %_ZN5Darts7Details9BitVectorD2Ev.exit
  store i64 0, ptr %i.q, align 8, !tbaa !125
  br label %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i.i

_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i.i:  ; preds = %.lr.ph.preheader.i.i.i15, %_ZN5Darts7Details9BitVectorD2Ev.exit
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !117  ; 2 uses
  %.not.i.i.i16 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i16, label %_ZN5Darts7Details8AutoPoolIhED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #30
  br label %_ZN5Darts7Details8AutoPoolIhED2Ev.exit

_ZN5Darts7Details8AutoPoolIhED2Ev.exit:           ; preds = %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i.i, %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted.i.i.i17 = load i64, ptr %i.t, align 8, !tbaa !135
  %.not.i.i18 = icmp eq i64 %.promoted.i.i.i17, 0
  br i1 %.not.i.i18, label %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE6resizeEm.exit.i.i, label %.lr.ph.preheader.i.i.i19

.lr.ph.preheader.i.i.i19:                         ; preds = %_ZN5Darts7Details8AutoPoolIhED2Ev.exit
  store i64 0, ptr %i.t, align 8, !tbaa !135
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
  %.promoted.i.i.i21 = load i64, ptr %i.v, align 8, !tbaa !151
  %.not.i.i22 = icmp eq i64 %.promoted.i.i.i21, 0
  br i1 %.not.i.i22, label %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE6resizeEm.exit.i.i, label %.lr.ph.preheader.i.i.i23

.lr.ph.preheader.i.i.i23:                         ; preds = %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEED2Ev.exit
  store i64 0, ptr %i.v, align 8, !tbaa !151
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
  tail call void @__clang_call_terminate(ptr %i.y) #31
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Darts7Details18DoubleArrayBuilder17build_from_keysetIiEEvRKNS0_6KeysetIT_EE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !104
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 1, %bb.a ], [ %i.c, %bb.b ]     ; 4 uses
  %i.b = icmp ult i64 %.0, %i.a
  %i.c = shl i64 %.0, 1
  br i1 %i.b, label %bb.b, label %bb.c, !llvm.loop !221

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !133
  %i.g = icmp ugt i64 %.0, %i.f
  br i1 %i.g, label %bb.d, label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE7reserveEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.0)
  br label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE7reserveEm.exit

_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE7reserveEm.exit: ; preds = %bb.c, %bb.d
  %i.h = tail call noalias noundef nonnull dereferenceable(49152) ptr @_Znam(i64 noundef 49152) #29 ; 9 uses
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
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !124  ; 2 uses
  store ptr %i.h, ptr %i.q, align 8, !tbaa !124
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
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder12expand_unitsEv(ptr noundef nonnull align 8 dereferenceable(76) %0), !inline_history !13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5resetEPS2_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 6 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !127
  %i.w = icmp eq i32 %i.v, 0
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !124  ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !140  ; 4 uses
  br i1 %i.w, label %bb.j, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

bb.j:                                             ; preds = %bb.i
  store i32 %i.z, ptr %i.u, align 8, !tbaa !127
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.k, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

bb.k:                                             ; preds = %bb.j
  %i.ab = load i64, ptr %i.s, align 8, !tbaa !116
  %i.ac = trunc i64 %i.ab to i32
  store i32 %i.ac, ptr %i.u, align 8, !tbaa !127
  br label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit

_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit: ; preds = %bb.i, %bb.j, %bb.k
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !141 ; 2 uses
  %i.ae = and i32 %i.ad, 4095
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 %i.z, ptr %i.ah, align 4, !tbaa !140
  %i.ai = and i32 %i.z, 4095
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.aj
  store i32 %i.ad, ptr %i.ak, align 4, !tbaa !141
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i8 1, ptr %i.al, align 4, !tbaa !142
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  store i8 1, ptr %i.am, align 1, !tbaa !143
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !117 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !145
  %i.ap = and i32 %i.ao, -2147483392
  %storemerge.i = or disjoint i32 %i.ap, 1024
  store i32 %storemerge.i, ptr %i.an, align 4, !tbaa !145
  %i.aq = load i64, ptr %1, align 8, !tbaa !104   ; 2 uses
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder17build_from_keysetIiEEvRKNS0_6KeysetIT_EEmmmj(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef 0, i64 noundef %i.aq, i64 noundef 0, i32 noundef 0)
  %.pre19.pre = load ptr, ptr %i.q, align 8, !tbaa !124
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit
  %.pre19 = phi ptr [ %.pre19.pre, %bb.l ], [ %i.x, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit ] ; 3 uses
  %i.ar = load i64, ptr %i.s, align 8, !tbaa !116 ; 2 uses
  %i.as = lshr i64 %i.ar, 8
  %i.at = icmp ugt i64 %i.ar, 4351
  %i.au = trunc i64 %i.as to i32                  ; 3 uses
  %i.av = add i32 %i.au, -16
  %.05.i = select i1 %i.at, i32 %i.av, i32 0      ; 2 uses
  %.not7.i = icmp eq i32 %.05.i, %i.au
  br i1 %.not7.i, label %_ZN5Darts7Details18DoubleArrayBuilder14fix_all_blocksEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i
  %i.aw = phi ptr [ %i.dh, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i ], [ %.pre19, %bb.m ]
  %i.ax = phi ptr [ %i.di, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i ], [ %.pre19, %bb.m ] ; 6 uses
  %.08.i = phi i32 [ %i.dk, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i ], [ %.05.i, %bb.m ] ; 2 uses
  %i.ay = shl i32 %.08.i, 8                       ; 2 uses
  %i.az = add i32 %i.ay, 256                      ; 2 uses
  %i.ba = zext i32 %i.ay to i64                   ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %.lr.ph.i
  %indvars.iv.i.i = phi i64 [ %i.ba, %.lr.ph.i ], [ %indvars.iv.next.i.i.3, %bb.r ] ; 6 uses
  %i.bb = and i64 %indvars.iv.i.i, 4092
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %i.ax, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 9
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !143, !range !148, !noundef !149
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.o, label %.split.loop.exit.i.i

bb.o:                                             ; preds = %bb.n
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bg = and i64 %indvars.iv.next.i.i, 4093
  %i.bh = getelementptr inbounds nuw [12 x i8], ptr %i.ax, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 9
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !143, !range !148, !noundef !149
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.p, label %.split.loop.exit.i.i

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.bl = and i64 %indvars.iv.next.i.i.1, 4094
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %i.ax, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 9
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !143, !range !148, !noundef !149
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.q, label %.split.loop.exit.i.i

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.bq = and i64 %indvars.iv.next.i.i.2, 4095
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %i.ax, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 9
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !143, !range !148, !noundef !149
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.r, label %.split.loop.exit.i.i

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %indvars.i.i.3 = trunc i64 %indvars.iv.next.i.i.3 to i32
  %.not.i.i.3 = icmp eq i32 %i.az, %indvars.i.i.3
  br i1 %.not.i.i.3, label %.split.loop.exit29.i.i, label %bb.n, !llvm.loop !14

.split.loop.exit.i.i:                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %indvars.iv.i.i.lcssa = phi i64 [ %indvars.iv.i.i, %bb.n ], [ %indvars.iv.next.i.i, %bb.o ], [ %indvars.iv.next.i.i.1, %bb.p ], [ %indvars.iv.next.i.i.2, %bb.q ]
  %i.bv = trunc nuw i64 %indvars.iv.i.i.lcssa to i32
  br label %.split.loop.exit29.i.i

.split.loop.exit29.i.i:                           ; preds = %bb.r, %.split.loop.exit.i.i
  %.018.i.i = phi i32 [ %i.bv, %.split.loop.exit.i.i ], [ 0, %bb.r ]
  br label %bb.s

bb.s:                                             ; preds = %bb.y, %.split.loop.exit29.i.i
  %i.bw = phi ptr [ %i.aw, %.split.loop.exit29.i.i ], [ %i.dh, %bb.y ] ; 2 uses
  %i.bx = phi ptr [ %i.ax, %.split.loop.exit29.i.i ], [ %i.di, %bb.y ]
  %i.by = phi ptr [ %i.ax, %.split.loop.exit29.i.i ], [ %i.dj, %bb.y ] ; 2 uses
  %indvars.iv24.i.i = phi i64 [ %i.ba, %.split.loop.exit29.i.i ], [ %indvars.iv.next25.i.i, %bb.y ] ; 7 uses
  %i.bz = and i64 %indvars.iv24.i.i, 4095         ; 2 uses
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %i.by, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load i8, ptr %i.cb, align 4, !tbaa !142, !range !148, !noundef !149
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = load i64, ptr %i.s, align 8, !tbaa !116
  %.not.i.i.i9 = icmp ugt i64 %i.ce, %indvars.iv24.i.i
  br i1 %.not.i.i.i9, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder12expand_unitsEv(ptr noundef nonnull align 8 dereferenceable(76) %0), !inline_history !15
  %.pre10.i = load ptr, ptr %i.q, align 8, !tbaa !124
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cf = phi ptr [ %.pre10.i, %bb.u ], [ %i.bw, %bb.t ] ; 6 uses
  %i.cg = load i32, ptr %i.u, align 8, !tbaa !127
  %i.ch = zext i32 %i.cg to i64
  %i.ci = icmp eq i64 %indvars.iv24.i.i, %i.ch
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %i.cf, i64 %i.bz ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !140 ; 4 uses
  br i1 %i.ci, label %bb.w, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i

bb.w:                                             ; preds = %bb.v
  store i32 %i.cl, ptr %i.u, align 8, !tbaa !127
  %i.cm = zext i32 %i.cl to i64
  %i.cn = icmp eq i64 %indvars.iv24.i.i, %i.cm
  br i1 %i.cn, label %bb.x, label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i

bb.x:                                             ; preds = %bb.w
  %i.co = load i64, ptr %i.s, align 8, !tbaa !116
  %i.cp = trunc i64 %i.co to i32
  store i32 %i.cp, ptr %i.u, align 8, !tbaa !127
  br label %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i

_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i: ; preds = %bb.x, %bb.w, %bb.v
  %i.cq = load i32, ptr %i.cj, align 4, !tbaa !141 ; 2 uses
  %i.cr = and i32 %i.cq, 4095
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [12 x i8], ptr %i.cf, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i32 %i.cl, ptr %i.cu, align 4, !tbaa !140
  %i.cv = and i32 %i.cl, 4095
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [12 x i8], ptr %i.cf, i64 %i.cw
  store i32 %i.cq, ptr %i.cx, align 4, !tbaa !141
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i8 1, ptr %i.cy, align 4, !tbaa !142
  %i.cz = load ptr, ptr %i.d, align 8, !tbaa !117
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv24.i.i ; 2 uses
  %i.db = trunc nuw i64 %indvars.iv24.i.i to i32
  %i.dc = xor i32 %.018.i.i, %i.db
  %i.dd = load i32, ptr %i.da, align 4, !tbaa !145
  %i.de = and i32 %i.dd, -256
  %i.df = and i32 %i.dc, 255
  %i.dg = or disjoint i32 %i.de, %i.df
  store i32 %i.dg, ptr %i.da, align 4, !tbaa !145
  br label %bb.y

bb.y:                                             ; preds = %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i, %bb.s
  %i.dh = phi ptr [ %i.bw, %bb.s ], [ %i.cf, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i ] ; 3 uses
  %i.di = phi ptr [ %i.bx, %bb.s ], [ %i.cf, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i ] ; 2 uses
  %i.dj = phi ptr [ %i.by, %bb.s ], [ %i.cf, %_ZN5Darts7Details18DoubleArrayBuilder10reserve_idEj.exit.i.i ]
  %indvars.iv.next25.i.i = add nuw nsw i64 %indvars.iv24.i.i, 1 ; 2 uses
  %indvars26.i.i = trunc i64 %indvars.iv.next25.i.i to i32
  %.not19.i.i = icmp eq i32 %i.az, %indvars26.i.i
  br i1 %.not19.i.i, label %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i, label %bb.s, !llvm.loop !16

_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i: ; preds = %bb.y
  %i.dk = add i32 %.08.i, 1                       ; 2 uses
  %.not.i10 = icmp eq i32 %i.dk, %i.au
  br i1 %.not.i10, label %_ZN5Darts7Details18DoubleArrayBuilder14fix_all_blocksEv.exit, label %.lr.ph.i, !llvm.loop !17

_ZN5Darts7Details18DoubleArrayBuilder14fix_all_blocksEv.exit: ; preds = %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i, %bb.m
  %i.dl = phi ptr [ %.pre19, %bb.m ], [ %i.dh, %_ZN5Darts7Details18DoubleArrayBuilder9fix_blockEj.exit.i ] ; 2 uses
  %.not.i12 = icmp eq ptr %i.dl, null
  br i1 %.not.i12, label %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit, label %bb.z

bb.z:                                             ; preds = %_ZN5Darts7Details18DoubleArrayBuilder14fix_all_blocksEv.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.dl) #30
  store ptr null, ptr %i.q, align 8, !tbaa !124
  br label %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit

_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit: ; preds = %_ZN5Darts7Details18DoubleArrayBuilder14fix_all_blocksEv.exit, %bb.z
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %.promoted.i.i = load i64, ptr %i.dn, align 8, !tbaa !125
  %.not.i13 = icmp eq i64 %.promoted.i.i, 0
  br i1 %.not.i13, label %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit
  store i64 0, ptr %i.dn, align 8, !tbaa !125
  br label %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i

_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i:    ; preds = %.lr.ph.preheader.i.i, %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !117 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.do, null
  br i1 %.not.i.i14, label %_ZN5Darts7Details8AutoPoolIhE5clearEv.exit, label %bb.aa

end_hunk_1
