Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSimulationIslandManagerMt?download=true
inline.NumInlined: 320
inline.NumDeleted: 106
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN27btSimulationIslandManagerMt15initIslandPoolsEv:bb.a
  br i1 %or.cond181, label %scalar.ph169.preheader, label %vector.ph171

vector.ph171:                                     ; preds = %.lr.ph.i.i.i101
  %n.vec172 = and i64 %wide.trip.count.i.i.i102, 2147483644 ; 3 uses
  br label %vector.body173

vector.body173:                                   ; preds = %vector.body173, %vector.ph171
  %index174 = phi i64 [ 0, %vector.ph171 ], [ %index.next177, %vector.body173 ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i96, i64 %index174 ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %index174 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load175 = load <2 x ptr>, ptr %i.fp, align 8, !tbaa !48
  %wide.load176 = load <2 x ptr>, ptr %i.fq, align 8, !tbaa !48
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store <2 x ptr> %wide.load175, ptr %i.fo, align 8, !tbaa !48
  store <2 x ptr> %wide.load176, ptr %i.fr, align 8, !tbaa !48
  %index.next177 = add nuw i64 %index174, 4       ; 2 uses
  %i.fs = icmp eq i64 %index.next177, %n.vec172
  br i1 %i.fs, label %middle.block178, label %vector.body173, !llvm.loop !103

middle.block178:                                  ; preds = %vector.body173
  %cmp.n179 = icmp eq i64 %n.vec172, %wide.trip.count.i.i.i102
  br i1 %cmp.n179, label %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.thread.i.i99, label %scalar.ph169.preheader

scalar.ph169.preheader:                           ; preds = %.lr.ph.i.i.i101, %middle.block178
  %indvars.iv.i.i.i103.ph = phi i64 [ 0, %.lr.ph.i.i.i101 ], [ %n.vec172, %middle.block178 ] ; 3 uses
  %xtraiter183 = and i64 %wide.trip.count.i.i.i102, 3 ; 2 uses
  %lcmp.mod184.not = icmp eq i64 %xtraiter183, 0
  br i1 %lcmp.mod184.not, label %scalar.ph169.prol.loopexit, label %scalar.ph169.prol

scalar.ph169.prol:                                ; preds = %scalar.ph169.preheader, %scalar.ph169.prol
  %indvars.iv.i.i.i103.prol = phi i64 [ %indvars.iv.next.i.i.i104.prol, %scalar.ph169.prol ], [ %indvars.iv.i.i.i103.ph, %scalar.ph169.preheader ] ; 3 uses
  %prol.iter185 = phi i64 [ %prol.iter185.next, %scalar.ph169.prol ], [ 0, %scalar.ph169.preheader ]
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.i.i.i103.prol
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.i.i.i103.prol
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !48
  store ptr %i.fv, ptr %i.ft, align 8, !tbaa !48
  %indvars.iv.next.i.i.i104.prol = add nuw nsw i64 %indvars.iv.i.i.i103.prol, 1 ; 2 uses
  %prol.iter185.next = add i64 %prol.iter185, 1   ; 2 uses
  %prol.iter185.cmp.not = icmp eq i64 %prol.iter185.next, %xtraiter183
  br i1 %prol.iter185.cmp.not, label %scalar.ph169.prol.loopexit, label %scalar.ph169.prol, !llvm.loop !104

scalar.ph169.prol.loopexit:                       ; preds = %scalar.ph169.prol, %scalar.ph169.preheader
  %indvars.iv.i.i.i103.unr = phi i64 [ %indvars.iv.i.i.i103.ph, %scalar.ph169.preheader ], [ %indvars.iv.next.i.i.i104.prol, %scalar.ph169.prol ]
  %i.fw = sub nsw i64 %indvars.iv.i.i.i103.ph, %wide.trip.count.i.i.i102
  %i.fx = icmp ugt i64 %i.fw, -4
  br i1 %i.fx, label %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.thread.i.i99, label %scalar.ph169

scalar.ph169:                                     ; preds = %scalar.ph169.prol.loopexit, %scalar.ph169
  %indvars.iv.i.i.i103 = phi i64 [ %indvars.iv.next.i.i.i104.3, %scalar.ph169 ], [ %indvars.iv.i.i.i103.unr, %scalar.ph169.prol.loopexit ] ; 6 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.i.i.i103
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.i.i.i103
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !48
  store ptr %i.ga, ptr %i.fy, align 8, !tbaa !48
  %indvars.iv.next.i.i.i104 = add nuw nsw i64 %indvars.iv.i.i.i103, 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.next.i.i.i104
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next.i.i.i104
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !48
  store ptr %i.gd, ptr %i.gb, align 8, !tbaa !48
  %indvars.iv.next.i.i.i104.1 = add nuw nsw i64 %indvars.iv.i.i.i103, 2 ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.next.i.i.i104.1
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next.i.i.i104.1
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !48
  store ptr %i.gg, ptr %i.ge, align 8, !tbaa !48
  %indvars.iv.next.i.i.i104.2 = add nuw nsw i64 %indvars.iv.i.i.i103, 3 ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.next.i.i.i104.2
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next.i.i.i104.2
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !48
  store ptr %i.gj, ptr %i.gh, align 8, !tbaa !48
  %indvars.iv.next.i.i.i104.3 = add nuw nsw i64 %indvars.iv.i.i.i103, 4 ; 2 uses
  %exitcond.not.i.i.i105.3 = icmp eq i64 %indvars.iv.next.i.i.i104.3, %wide.trip.count.i.i.i102
  br i1 %exitcond.not.i.i.i105.3, label %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.thread.i.i99, label %scalar.ph169, !llvm.loop !105

_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.i.i97: ; preds = %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE8allocateEi.exit.i.i95
  %.not.i5.i.i98 = icmp eq ptr %i.fl, null
  br i1 %.not.i5.i.i98, label %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE10deallocateEv.exit.i.i100, label %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.thread.i.i99

_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.thread.i.i99: ; preds = %scalar.ph169.prol.loopexit, %scalar.ph169, %middle.block178, %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.i.i97
  %i.gk = load i8, ptr %i.cy, align 8, !tbaa !11, !range !61, !noundef !62
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.w, label %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE10deallocateEv.exit.i.i100

bb.w:                                             ; preds = %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.thread.i.i99
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fl)
  %.pre2.pre.pre.i = load i32, ptr %i.br, align 4, !tbaa !19
  br label %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE10deallocateEv.exit.i.i100

_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE10deallocateEv.exit.i.i100: ; preds = %bb.w, %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.thread.i.i99, %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.i.i97
  %.pre2.i = phi i32 [ %i.fj, %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.i.i97 ], [ %.pre2.pre.pre.i, %bb.w ], [ %i.fj, %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.thread.i.i99 ]
  store i8 1, ptr %i.cy, align 8, !tbaa !11
  store ptr %.0.i.i.i96, ptr %i.cx, align 8, !tbaa !18
  store i32 %i.fe, ptr %i.cw, align 8, !tbaa !20
  br label %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE9push_backERKS2_.exit

_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE9push_backERKS2_.exit: ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintE6resizeEiRKS1_.exit, %bb.t, %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE10deallocateEv.exit.i.i100
  %i.gm = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE10deallocateEv.exit.i.i100 ], [ %i.fa, %bb.t ], [ %i.fa, %_ZN20btAlignedObjectArrayIP17btTypedConstraintE6resizeEiRKS1_.exit ] ; 2 uses
  %i.gn = load ptr, ptr %i.cx, align 8, !tbaa !18
  %i.go = sext i32 %i.gm to i64
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %i.go
  store ptr %i.db, ptr %i.gp, align 8, !tbaa !48
  %i.gq = add nsw i32 %i.gm, 1
  store i32 %i.gq, ptr %i.br, align 4, !tbaa !19
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %i.gr = load i32, ptr %i.ch, align 4, !tbaa !19
  %i.gs = sext i32 %i.gr to i64
  %i.gt = icmp slt i64 %indvars.iv.next132, %i.gs
  br i1 %i.gt, label %bb.m, label %._crit_edge122, !llvm.loop !106
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN27btSimulationIslandManagerMt9getIslandEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0, i32 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19   ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !107

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load i32, ptr %i.n, align 8, !tbaa !100
  %i.p = icmp eq i32 %i.o, %1
  br i1 %i.p, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.c, %.preheader
  %.010 = phi ptr [ null, %.preheader ], [ %i.m, %bb.c ], [ null, %bb.b ] ; 2 uses
  store ptr %.010, ptr %i.d, align 8, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.1 = phi ptr [ %.010, %._crit_edge ], [ %i.e, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN27btSimulationIslandManagerMt14allocateIslandEii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(264) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35   ; 4 uses
  %i.c = icmp slt i32 %2, %i.b
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 5 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.h = sext i32 %1 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  store ptr %i.e, ptr %i.i, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !56
  %i.l = add nsw i32 %i.k, %2
  %.not42 = icmp slt i32 %i.l, %i.b
  br i1 %.not42, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.d, align 8, !tbaa !37
  br label %bb.v

bb.e:                                             ; preds = %bb.b
  %i.m = shl nsw i32 %i.b, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.032 = phi i32 [ %i.m, %bb.e ], [ %2, %bb.a ]  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !19   ; 5 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.preheader, label %.thread70

.preheader:                                       ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.r = zext nneg i32 %i.o to i64                ; 2 uses
  %3 = add nsw i32 %i.o, -1                       ; 2 uses
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !18   ; 5 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next84 = add i32 %indvars.iv83111, -1
  %i.t = icmp sgt i64 %indvars.iv112, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.t, label %bb.h, label %.thread70, !llvm.loop !108

bb.h:                                             ; preds = %.preheader, %bb.g
  %indvar = phi i64 [ 0, %.preheader ], [ %indvar.next, %bb.g ] ; 3 uses
  %indvars.iv112 = phi i64 [ %i.r, %.preheader ], [ %indvars.iv.next, %bb.g ] ; 7 uses
  %indvars.iv83111 = phi i32 [ %3, %.preheader ], [ %indvars.iv.next84, %bb.g ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv112, -1 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !48   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !67
  %.not40 = icmp slt i32 %i.x, %.032
  br i1 %.not40, label %bb.g, label %bb.i, !llvm.loop !108

bb.i:                                             ; preds = %bb.h
  %i.y = trunc nuw nsw i64 %indvars.iv112 to i32
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  store i32 %1, ptr %i.z, align 8, !tbaa !100
  %i.aa = icmp sgt i32 %i.o, %i.y
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %4 = sext i32 %indvars.iv83111 to i64           ; 5 uses
  %i.ab = add i64 %indvar, 4294967295
  %i.ac = and i64 %i.ab, 4294967295               ; 2 uses
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 2 uses
  %min.iters.check132 = icmp samesign ult i64 %i.ac, 15
  br i1 %min.iters.check132, label %scalar.ph131.preheader, label %vector.memcheck129

vector.memcheck129:                               ; preds = %.lr.ph
  %i.ae = sub i64 %indvar, %i.r
  %i.af = add i64 %i.ae, %4
  %i.ag = shl i64 %i.af, 3
  %i.ah = add i64 %i.ag, -1
  %diff.check130 = icmp ult i64 %i.ah, 31
  br i1 %diff.check130, label %scalar.ph131.preheader, label %vector.ph133

vector.ph133:                                     ; preds = %vector.memcheck129
  %n.vec134 = and i64 %i.ad, 8589934588           ; 4 uses
  %i.ai = add nsw i64 %n.vec134, %4
  %5 = add nuw i64 %indvars.iv112, %n.vec134
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv112
  %invariant.gep = getelementptr [8 x i8], ptr %i.s, i64 %4
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next139, %vector.body135 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %index136 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load137 = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !48
  %wide.load138 = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !48
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index136 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x ptr> %wide.load137, ptr %gep, align 8, !tbaa !48
  store <2 x ptr> %wide.load138, ptr %i.al, align 8, !tbaa !48
  %index.next139 = add nuw i64 %index136, 4       ; 2 uses
  %i.am = icmp eq i64 %index.next139, %n.vec134
  br i1 %i.am, label %middle.block140, label %vector.body135, !llvm.loop !109

middle.block140:                                  ; preds = %vector.body135
  %cmp.n141 = icmp eq i64 %i.ad, %n.vec134
  br i1 %cmp.n141, label %._crit_edge, label %scalar.ph131.preheader

scalar.ph131.preheader:                           ; preds = %vector.memcheck129, %.lr.ph, %middle.block140
  %indvars.iv86.ph = phi i64 [ %4, %vector.memcheck129 ], [ %4, %.lr.ph ], [ %i.ai, %middle.block140 ]
  %indvars.iv81.ph = phi i64 [ %indvars.iv112, %vector.memcheck129 ], [ %indvars.iv112, %.lr.ph ], [ %5, %middle.block140 ]
  br label %scalar.ph131

scalar.ph131:                                     ; preds = %scalar.ph131.preheader, %scalar.ph131
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %scalar.ph131 ], [ %indvars.iv86.ph, %scalar.ph131.preheader ] ; 2 uses
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %scalar.ph131 ], [ %indvars.iv81.ph, %scalar.ph131.preheader ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv81
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !48
  %indvars.iv.next87 = add nsw i64 %indvars.iv86, 1
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv86
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !48
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.aq = trunc nuw i64 %indvars.iv.next82 to i32
  %i.ar = icmp sgt i32 %i.o, %i.aq
  br i1 %i.ar, label %scalar.ph131, label %._crit_edge, !llvm.loop !110

._crit_edge:                                      ; preds = %scalar.ph131, %middle.block140, %bb.i
  store i32 %3, ptr %i.n, align 4, !tbaa !19
  br label %bb.o

.thread70:                                        ; preds = %bb.g, %bb.f
  %i.as = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #17 ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.as, i8 0, i64 104, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 3 uses
  store i8 1, ptr %i.at, align 8, !tbaa !77
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  store i32 0, ptr %i.av, align 4, !tbaa !56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  store i8 1, ptr %i.ax, align 8, !tbaa !85
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 36
  store i32 0, ptr %i.ay, align 4, !tbaa !49
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 88
  store i8 1, ptr %i.az, align 8, !tbaa !92
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 68
  store i32 0, ptr %i.ba, align 4, !tbaa !51
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 96
  store i32 %1, ptr %i.bb, align 16, !tbaa !100
  %i.bc = icmp sgt i32 %.032, 0
  br i1 %i.bc, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE7reserveEi.exit

_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i: ; preds = %.thread70
  %i.bd = zext nneg i32 %.032 to i64
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.be, i32 noundef 16) ; 8 uses
  %i.bg = load i32, ptr %i.av, align 4, !tbaa !56 ; 3 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  %i.bi = load ptr, ptr %i.au, align 16, !tbaa !55 ; 9 uses
  br i1 %i.bh, label %.lr.ph.i.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i
  %i.bj = ptrtoaddr ptr %i.bi to i64
  %i.bk = ptrtoaddr ptr %i.bf to i64
  %wide.trip.count.i.i = zext nneg i32 %i.bg to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.bg, 8
  %i.bl = sub i64 %i.bj, %i.bk
  %diff.check = icmp ugt i64 %i.bl, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %index ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bn, align 8, !tbaa !69
  %wide.load113 = load <2 x ptr>, ptr %i.bo, align 8, !tbaa !69
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <2 x ptr> %wide.load, ptr %i.bm, align 8, !tbaa !69
  store <2 x ptr> %wide.load113, ptr %i.bp, align 8, !tbaa !69
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !111

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i.i.prol
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.i.i.prol
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !69
  store ptr %i.bt, ptr %i.br, align 8, !tbaa !69
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !112

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.bu = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.bv = icmp ugt i64 %i.bu, -4
  br i1 %i.bv, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.i.i
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.i.i
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !69
  store ptr %i.by, ptr %i.bw, align 8, !tbaa !69
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.next.i.i
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !69
  store ptr %i.cb, ptr %i.bz, align 8, !tbaa !69
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.1
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.next.i.i.1
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !69
  store ptr %i.ce, ptr %i.cc, align 8, !tbaa !69
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.2
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.next.i.i.2
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !69
  store ptr %i.ch, ptr %i.cf, align 8, !tbaa !69
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i, label %scalar.ph, !llvm.loop !113

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i: ; preds = %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i
  %.not.i5.i = icmp eq ptr %i.bi, null
  br i1 %.not.i5.i, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i
  %i.ci = load i8, ptr %i.at, align 8, !tbaa !77, !range !61, !noundef !62
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.j, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i

bb.j:                                             ; preds = %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bi)
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i

_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i: ; preds = %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i, %bb.j, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i
  store i8 1, ptr %i.at, align 8, !tbaa !77
  store ptr %i.bf, ptr %i.au, align 16, !tbaa !55
  store i32 %.032, ptr %i.aw, align 8, !tbaa !67
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE7reserveEi.exit

_ZN20btAlignedObjectArrayIP17btCollisionObjectE7reserveEi.exit: ; preds = %.thread70, %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !19 ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !20
  %i.co = icmp eq i32 %i.cl, %i.cn
  br i1 %i.co, label %bb.k, label %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE9push_backERKS2_.exit

bb.k:                                             ; preds = %_ZN20btAlignedObjectArrayIP17btCollisionObjectE7reserveEi.exit
  %.not.i.i43 = icmp eq i32 %i.cl, 0
  %i.cp = shl nsw i32 %i.cl, 1
  %i.cq = select i1 %.not.i.i43, i32 1, i32 %i.cp ; 4 uses
  %i.cr = icmp slt i32 %i.cl, %i.cq
  br i1 %i.cr, label %bb.l, label %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE9push_backERKS2_.exit

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE8allocateEi.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cs = sext i32 %i.cq to i64
  %i.ct = shl nsw i64 %i.cs, 3
  %i.cu = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ct, i32 noundef 16)
  %.pre.i = load i32, ptr %i.ck, align 4, !tbaa !19
  br label %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE8allocateEi.exit.i.i: ; preds = %bb.m, %bb.l
  %i.cv = phi i32 [ %.pre.i, %bb.m ], [ %i.cl, %bb.l ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.cu, %bb.m ], [ null, %bb.l ] ; 8 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !18 ; 9 uses
  br i1 %i.cw, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE8allocateEi.exit.i.i
  %i.cz = ptrtoaddr ptr %i.cy to i64
  %.0.i.i.i115 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.cv to i64 ; 5 uses
  %min.iters.check118 = icmp ult i32 %i.cv, 8
  %i.da = sub i64 %i.cz, %.0.i.i.i115
  %diff.check116 = icmp ugt i64 %i.da, -32
  %or.cond159 = select i1 %min.iters.check118, i1 true, i1 %diff.check116
  br i1 %or.cond159, label %scalar.ph117.preheader, label %vector.ph119

vector.ph119:                                     ; preds = %.lr.ph.i.i.i
  %n.vec120 = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph119
  %index122 = phi i64 [ 0, %vector.ph119 ], [ %index.next125, %vector.body121 ] ; 3 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index122 ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %index122 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %wide.load123 = load <2 x ptr>, ptr %i.dc, align 8, !tbaa !48
  %wide.load124 = load <2 x ptr>, ptr %i.dd, align 8, !tbaa !48
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store <2 x ptr> %wide.load123, ptr %i.db, align 8, !tbaa !48
  store <2 x ptr> %wide.load124, ptr %i.de, align 8, !tbaa !48
  %index.next125 = add nuw i64 %index122, 4       ; 2 uses
  %i.df = icmp eq i64 %index.next125, %n.vec120
  br i1 %i.df, label %middle.block126, label %vector.body121, !llvm.loop !114

middle.block126:                                  ; preds = %vector.body121
  %cmp.n127 = icmp eq i64 %n.vec120, %wide.trip.count.i.i.i
  br i1 %cmp.n127, label %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.thread.i.i, label %scalar.ph117.preheader

scalar.ph117.preheader:                           ; preds = %.lr.ph.i.i.i, %middle.block126
end_hunk_0
