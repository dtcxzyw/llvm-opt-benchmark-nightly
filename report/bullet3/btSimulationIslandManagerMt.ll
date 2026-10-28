Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSimulationIslandManagerMt?download=true
inline.NumInlined: 320
inline.NumDeleted: 106
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN27btSimulationIslandManagerMt15initIslandPoolsEv:bb.a
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next178, %vector.body174 ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i96, i64 %index175 ; 2 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %index175 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load176 = load <2 x ptr>, ptr %i.fp, align 8, !tbaa !47
  %wide.load177 = load <2 x ptr>, ptr %i.fq, align 8, !tbaa !47
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store <2 x ptr> %wide.load176, ptr %i.fo, align 8, !tbaa !47
  store <2 x ptr> %wide.load177, ptr %i.fr, align 8, !tbaa !47
  %index.next178 = add nuw i64 %index175, 4       ; 2 uses
  %i.fs = icmp eq i64 %index.next178, %n.vec173
  br i1 %i.fs, label %middle.block179, label %vector.body174, !llvm.loop !126

middle.block179:                                  ; preds = %vector.body174
  %cmp.n180 = icmp eq i64 %n.vec173, %wide.trip.count.i.i.i102
  br i1 %cmp.n180, label %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.thread.i.i99, label %scalar.ph170.preheader

scalar.ph170.preheader:                           ; preds = %.lr.ph.i.i.i101, %middle.block179
  %indvars.iv.i.i.i103.ph = phi i64 [ 0, %.lr.ph.i.i.i101 ], [ %n.vec173, %middle.block179 ] ; 3 uses
  %xtraiter184 = and i64 %wide.trip.count.i.i.i102, 3 ; 2 uses
  %lcmp.mod185.not = icmp eq i64 %xtraiter184, 0
  br i1 %lcmp.mod185.not, label %scalar.ph170.prol.loopexit, label %scalar.ph170.prol

scalar.ph170.prol:                                ; preds = %scalar.ph170.preheader, %scalar.ph170.prol
  %indvars.iv.i.i.i103.prol = phi i64 [ %indvars.iv.next.i.i.i104.prol, %scalar.ph170.prol ], [ %indvars.iv.i.i.i103.ph, %scalar.ph170.preheader ] ; 3 uses
  %prol.iter186 = phi i64 [ %prol.iter186.next, %scalar.ph170.prol ], [ 0, %scalar.ph170.preheader ]
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.i.i.i103.prol
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.i.i.i103.prol
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !47
  store ptr %i.fv, ptr %i.ft, align 8, !tbaa !47
  %indvars.iv.next.i.i.i104.prol = add nuw nsw i64 %indvars.iv.i.i.i103.prol, 1 ; 2 uses
  %prol.iter186.next = add i64 %prol.iter186, 1   ; 2 uses
  %prol.iter186.cmp.not = icmp eq i64 %prol.iter186.next, %xtraiter184
  br i1 %prol.iter186.cmp.not, label %scalar.ph170.prol.loopexit, label %scalar.ph170.prol, !llvm.loop !127

scalar.ph170.prol.loopexit:                       ; preds = %scalar.ph170.prol, %scalar.ph170.preheader
  %indvars.iv.i.i.i103.unr = phi i64 [ %indvars.iv.i.i.i103.ph, %scalar.ph170.preheader ], [ %indvars.iv.next.i.i.i104.prol, %scalar.ph170.prol ]
  %i.fw = sub nsw i64 %indvars.iv.i.i.i103.ph, %wide.trip.count.i.i.i102
  %i.fx = icmp ugt i64 %i.fw, -4
  br i1 %i.fx, label %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.thread.i.i99, label %scalar.ph170

scalar.ph170:                                     ; preds = %scalar.ph170.prol.loopexit, %scalar.ph170
  %indvars.iv.i.i.i103 = phi i64 [ %indvars.iv.next.i.i.i104.3, %scalar.ph170 ], [ %indvars.iv.i.i.i103.unr, %scalar.ph170.prol.loopexit ] ; 6 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.i.i.i103
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.i.i.i103
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !47
  store ptr %i.ga, ptr %i.fy, align 8, !tbaa !47
  %indvars.iv.next.i.i.i104 = add nuw nsw i64 %indvars.iv.i.i.i103, 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.next.i.i.i104
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next.i.i.i104
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !47
  store ptr %i.gd, ptr %i.gb, align 8, !tbaa !47
  %indvars.iv.next.i.i.i104.1 = add nuw nsw i64 %indvars.iv.i.i.i103, 2 ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.next.i.i.i104.1
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next.i.i.i104.1
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !47
  store ptr %i.gg, ptr %i.ge, align 8, !tbaa !47
  %indvars.iv.next.i.i.i104.2 = add nuw nsw i64 %indvars.iv.i.i.i103, 3 ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.next.i.i.i104.2
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next.i.i.i104.2
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !47
  store ptr %i.gj, ptr %i.gh, align 8, !tbaa !47
  %indvars.iv.next.i.i.i104.3 = add nuw nsw i64 %indvars.iv.i.i.i103, 4 ; 2 uses
  %exitcond.not.i.i.i105.3 = icmp eq i64 %indvars.iv.next.i.i.i104.3, %wide.trip.count.i.i.i102
  br i1 %exitcond.not.i.i.i105.3, label %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.thread.i.i99, label %scalar.ph170, !llvm.loop !128

_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.i.i97: ; preds = %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE8allocateEi.exit.i.i95
  %.not.i5.i.i98 = icmp eq ptr %i.fl, null
  br i1 %.not.i5.i.i98, label %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE10deallocateEv.exit.i.i100, label %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.thread.i.i99

_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.thread.i.i99: ; preds = %scalar.ph170.prol.loopexit, %scalar.ph170, %middle.block179, %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.i.i97
  %i.gk = load i8, ptr %i.cy, align 8, !tbaa !18, !range !59, !noundef !60
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.w, label %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE10deallocateEv.exit.i.i100

bb.w:                                             ; preds = %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.thread.i.i99
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.fl)
  %.pre2.pre.pre.i = load i32, ptr %i.br, align 4, !tbaa !20
  br label %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE10deallocateEv.exit.i.i100

_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE10deallocateEv.exit.i.i100: ; preds = %bb.w, %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.thread.i.i99, %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.i.i97
  %.pre2.i = phi i32 [ %i.fj, %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.i.i97 ], [ %.pre2.pre.pre.i, %bb.w ], [ %i.fj, %_ZNK20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE4copyEiiPS2_.exit.thread.i.i99 ]
  store i8 1, ptr %i.cy, align 8, !tbaa !18
  store ptr %.0.i.i.i96, ptr %i.cx, align 8, !tbaa !19
  store i32 %i.fe, ptr %i.cw, align 8, !tbaa !21
  br label %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE9push_backERKS2_.exit

_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE9push_backERKS2_.exit: ; preds = %_ZN20btAlignedObjectArrayIP17btTypedConstraintE6resizeEiRKS1_.exit, %bb.t, %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE10deallocateEv.exit.i.i100
  %i.gm = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE10deallocateEv.exit.i.i100 ], [ %i.fa, %bb.t ], [ %i.fa, %_ZN20btAlignedObjectArrayIP17btTypedConstraintE6resizeEiRKS1_.exit ] ; 2 uses
  %i.gn = load ptr, ptr %i.cx, align 8, !tbaa !19
  %i.go = sext i32 %i.gm to i64
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %i.go
  store ptr %i.db, ptr %i.gp, align 8, !tbaa !47
  %i.gq = add nsw i32 %i.gm, 1
  store i32 %i.gq, ptr %i.br, align 4, !tbaa !20
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %i.gr = load i32, ptr %i.ch, align 4, !tbaa !20
  %i.gs = sext i32 %i.gr to i64
  %i.gt = icmp slt i64 %indvars.iv.next132, %i.gs
  br i1 %i.gt, label %bb.m, label %._crit_edge122, !llvm.loop !129
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZN27btSimulationIslandManagerMt9getIslandEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0, i32 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !47   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.h = load i32, ptr %i.g, align 4, !tbaa !20   ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !47   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load i32, ptr %i.n, align 8, !tbaa !81
  %i.p = icmp eq i32 %i.o, %1
  br i1 %i.p, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.c, %.preheader
  %.010 = phi ptr [ null, %.preheader ], [ %i.m, %bb.c ], [ null, %bb.b ] ; 2 uses
  store ptr %.010, ptr %i.d, align 8, !tbaa !47
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.1 = phi ptr [ %.010, %._crit_edge ], [ %i.e, %bb.a ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN27btSimulationIslandManagerMt14allocateIslandEii(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(264) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !36   ; 4 uses
  %i.c = icmp slt i32 %2, %i.b
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38   ; 5 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.h = sext i32 %1 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h
  store ptr %i.e, ptr %i.i, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !54
  %i.l = add nsw i32 %i.k, %2
  %.not42 = icmp slt i32 %i.l, %i.b
  br i1 %.not42, label %bb.v, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.d, align 8, !tbaa !38
  br label %bb.v

bb.e:                                             ; preds = %bb.b
  %i.m = shl nsw i32 %i.b, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.032 = phi i32 [ %i.m, %bb.e ], [ %2, %bb.a ]  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !20   ; 5 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.preheader, label %.thread70

.preheader:                                       ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.r = load ptr, ptr %i.q, align 8              ; 5 uses
  %i.s = zext nneg i32 %i.o to i64                ; 2 uses
  %i.t = add nsw i32 %i.o, -1                     ; 2 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next84 = add i32 %indvars.iv83110, -1
  %i.u = icmp sgt i64 %indvars.iv111, 1
  %indvar.next = add i32 %indvar, 1
  %indvar.next.a = add i64 %indvar.a, 1
  br i1 %i.u, label %bb.h, label %.thread70, !llvm.loop !130

bb.h:                                             ; preds = %.preheader, %bb.g
  %indvar.a = phi i64 [ 0, %.preheader ], [ %indvar.next.a, %bb.g ] ; 2 uses
  %indvar = phi i32 [ 0, %.preheader ], [ %indvar.next, %bb.g ] ; 2 uses
  %indvars.iv111 = phi i64 [ %i.s, %.preheader ], [ %indvars.iv.next, %bb.g ] ; 7 uses
  %indvars.iv83110 = phi i32 [ %i.t, %.preheader ], [ %indvars.iv.next84, %bb.g ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv111, -1 ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !64
  %.not40 = icmp slt i32 %i.y, %.032
  br i1 %.not40, label %bb.g, label %bb.i, !llvm.loop !130

bb.i:                                             ; preds = %bb.h
  %i.z = trunc nuw nsw i64 %indvars.iv111 to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  store i32 %1, ptr %i.aa, align 8, !tbaa !81
  %i.ab = icmp sgt i32 %i.o, %i.z
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.i
  %i.ac = sext i32 %indvars.iv83110 to i64        ; 5 uses
  %3 = add i32 %indvar, -1                        ; 2 uses
  %4 = zext i32 %3 to i64
  %i.ad = add nuw nsw i64 %4, 1                   ; 2 uses
  %min.iters.check134 = icmp ult i32 %3, 15
  br i1 %min.iters.check134, label %scalar.ph133.preheader, label %vector.memcheck131

vector.memcheck131:                               ; preds = %.lr.ph
  %i.ae = sub i64 %indvar.a, %i.s
  %i.af = add i64 %i.ae, %i.ac
  %i.ag = shl i64 %i.af, 3
  %i.ah = add i64 %i.ag, -1
  %diff.check132 = icmp ult i64 %i.ah, 31
  br i1 %diff.check132, label %scalar.ph133.preheader, label %vector.ph135

vector.ph135:                                     ; preds = %vector.memcheck131
  %n.vec136 = and i64 %i.ad, 8589934588           ; 4 uses
  %i.ai = add nsw i64 %n.vec136, %i.ac
  %i.aj = add nuw i64 %indvars.iv111, %n.vec136
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv111
  %invariant.gep = getelementptr [8 x i8], ptr %i.r, i64 %i.ac
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph135
  %index138 = phi i64 [ 0, %vector.ph135 ], [ %index.next141, %vector.body137 ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index138 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load139 = load <2 x ptr>, ptr %i.al, align 8, !tbaa !47
  %wide.load140 = load <2 x ptr>, ptr %i.am, align 8, !tbaa !47
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index138 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x ptr> %wide.load139, ptr %gep, align 8, !tbaa !47
  store <2 x ptr> %wide.load140, ptr %i.an, align 8, !tbaa !47
  %index.next141 = add nuw i64 %index138, 4       ; 2 uses
  %i.ao = icmp eq i64 %index.next141, %n.vec136
  br i1 %i.ao, label %middle.block142, label %vector.body137, !llvm.loop !131

middle.block142:                                  ; preds = %vector.body137
  %cmp.n143 = icmp eq i64 %i.ad, %n.vec136
  br i1 %cmp.n143, label %._crit_edge, label %scalar.ph133.preheader

scalar.ph133.preheader:                           ; preds = %vector.memcheck131, %.lr.ph, %middle.block142
  %indvars.iv86.ph = phi i64 [ %i.ac, %vector.memcheck131 ], [ %i.ac, %.lr.ph ], [ %i.ai, %middle.block142 ]
  %indvars.iv81.ph = phi i64 [ %indvars.iv111, %vector.memcheck131 ], [ %indvars.iv111, %.lr.ph ], [ %i.aj, %middle.block142 ]
  br label %scalar.ph133

scalar.ph133:                                     ; preds = %scalar.ph133.preheader, %scalar.ph133
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %scalar.ph133 ], [ %indvars.iv86.ph, %scalar.ph133.preheader ] ; 2 uses
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %scalar.ph133 ], [ %indvars.iv81.ph, %scalar.ph133.preheader ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv81
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !47
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.r, i64 %indvars.iv86
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !47
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.as = trunc nuw i64 %indvars.iv.next82 to i32
  %i.at = icmp sgt i32 %i.o, %i.as
  br i1 %i.at, label %scalar.ph133, label %._crit_edge, !llvm.loop !132

._crit_edge:                                      ; preds = %scalar.ph133, %middle.block142, %bb.i
  store i32 %i.t, ptr %i.n, align 4, !tbaa !20
  br label %bb.o

.thread70:                                        ; preds = %bb.g, %bb.f
  %i.au = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #17 ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.au, i8 0, i64 104, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 3 uses
  store i8 1, ptr %i.av, align 8, !tbaa !71
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  store i32 0, ptr %i.ax, align 4, !tbaa !54
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  store i8 1, ptr %i.az, align 8, !tbaa !75
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 36
  store i32 0, ptr %i.ba, align 4, !tbaa !48
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 88
  store i8 1, ptr %i.bb, align 8, !tbaa !78
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 68
  store i32 0, ptr %i.bc, align 4, !tbaa !52
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  store i32 %1, ptr %i.bd, align 16, !tbaa !81
  %i.be = icmp sgt i32 %.032, 0
  br i1 %i.be, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE7reserveEi.exit

_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i: ; preds = %.thread70
  %i.bf = zext nneg i32 %.032 to i64
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bg, i32 noundef 16) ; 8 uses
  %i.bi = load i32, ptr %i.ax, align 4, !tbaa !54 ; 3 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  %i.bk = load ptr, ptr %i.aw, align 16, !tbaa !53 ; 9 uses
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i
  %i.bl = ptrtoaddr ptr %i.bk to i64
  %i.bm = ptrtoaddr ptr %i.bh to i64
  %wide.trip.count.i.i = zext nneg i32 %i.bi to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.bi, 8
  %i.bn = sub i64 %i.bl, %i.bm
  %diff.check = icmp ugt i64 %i.bn, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %index ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bp, align 8, !tbaa !67
  %wide.load112 = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !67
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <2 x ptr> %wide.load, ptr %i.bo, align 8, !tbaa !67
  store <2 x ptr> %wide.load112, ptr %i.br, align 8, !tbaa !67
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !133

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
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i.i.prol
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.i.i.prol
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !67
  store ptr %i.bv, ptr %i.bt, align 8, !tbaa !67
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !134

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.bw = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i.i
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.i.i
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !67
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !67
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.i.i
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !67
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !67
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.i.i.1
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.1
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !67
  store ptr %i.cg, ptr %i.ce, align 8, !tbaa !67
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.i.i.2
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv.next.i.i.2
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !67
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !67
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i, label %scalar.ph, !llvm.loop !135

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i: ; preds = %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i
  %.not.i5.i = icmp eq ptr %i.bk, null
  br i1 %.not.i5.i, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i
  %i.ck = load i8, ptr %i.av, align 8, !tbaa !71, !range !59, !noundef !60
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.j, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i

bb.j:                                             ; preds = %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bk)
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i

_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i: ; preds = %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i, %bb.j, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i
  store i8 1, ptr %i.av, align 8, !tbaa !71
  store ptr %i.bh, ptr %i.aw, align 16, !tbaa !53
  store i32 %.032, ptr %i.ay, align 8, !tbaa !64
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE7reserveEi.exit

_ZN20btAlignedObjectArrayIP17btCollisionObjectE7reserveEi.exit: ; preds = %.thread70, %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 4 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !20 ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !21
  %i.cq = icmp eq i32 %i.cn, %i.cp
  br i1 %i.cq, label %bb.k, label %_ZN20btAlignedObjectArrayIPN27btSimulationIslandManagerMt6IslandEE9push_backERKS2_.exit

bb.k:                                             ; preds = %_ZN20btAlignedObjectArrayIP17btCollisionObjectE7reserveEi.exit
  %.not.i.i43 = icmp eq i32 %i.cn, 0
  %i.cr = shl nsw i32 %i.cn, 1
end_hunk_0
