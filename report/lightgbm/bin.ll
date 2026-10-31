Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/bin?download=true
inline.NumInlined: 9544
inline.NumDeleted: 2682
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 531
loop-unroll.NumUnrolled: 532
begin_hunk_0_@_ZNK8LightGBM16MultiValDenseBinItE26ConstructHistogramIntInnerILb1ELb1ELb1EiLi16EEEvPKiiiPKfPd:bb.a
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !89
  %i.bz = zext i16 %i.by to i32
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv67
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !58
  %i.cc = add i32 %i.cb, %i.bz
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !58
  %i.cg = add nsw i32 %i.bu, %i.cf
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !58
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %i.ch = load i32, ptr %i.e, align 8, !tbaa !247 ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = icmp slt i64 %indvars.iv.next68, %i.ci
  br i1 %i.cj, label %.lr.ph, label %._crit_edge, !llvm.loop !1383

.lr.ph61.split:                                   ; preds = %.lr.ph61.split.preheader, %._crit_edge59
  %i.ck = phi i32 [ %i.ay, %.lr.ph61.split.preheader ], [ %i.db, %._crit_edge59 ] ; 3 uses
  %indvars.iv78 = phi i64 [ %i.ba, %.lr.ph61.split.preheader ], [ %indvars.iv.next79, %._crit_edge59 ] ; 2 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv78
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !58
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  %i.co = sext i32 %i.ck to i64
  %i.cp = mul nsw i64 %i.co, %i.cn
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cp
  %i.cr = getelementptr inbounds [2 x i8], ptr %4, i64 %i.cn
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !89 ; 2 uses
  %i.ct = ashr i16 %i.cs, 8
  %i.cu = sext i16 %i.ct to i32
  %i.cv = shl nsw i32 %i.cu, 16
  %i.cw = and i16 %i.cs, 255
  %i.cx = zext nneg i16 %i.cw to i32
  %i.cy = or disjoint i32 %i.cv, %i.cx
  %i.cz = icmp sgt i32 %i.ck, 0
  br i1 %i.cz, label %.lr.ph58, label %._crit_edge59

.lr.ph58:                                         ; preds = %.lr.ph61.split
  %i.da = load ptr, ptr %i.ax, align 8, !tbaa !241
  br label %bb.b

._crit_edge59:                                    ; preds = %bb.b, %.lr.ph61.split
  %i.db = phi i32 [ %i.ck, %.lr.ph61.split ], [ %i.dm, %bb.b ]
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1 ; 2 uses
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %._crit_edge62, label %.lr.ph61.split, !llvm.loop !1384

bb.b:                                             ; preds = %.lr.ph58, %bb.b
  %indvars.iv75 = phi i64 [ 0, %.lr.ph58 ], [ %indvars.iv.next76, %bb.b ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %indvars.iv75
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !89
  %i.de = zext i16 %i.dd to i32
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv75
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !58
  %i.dh = add i32 %i.dg, %i.de
  %i.di = zext i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !58
  %i.dl = add nsw i32 %i.cy, %i.dk
  store i32 %i.dl, ptr %i.dj, align 4, !tbaa !58
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %i.dm = load i32, ptr %i.aw, align 8, !tbaa !247 ; 2 uses
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp slt i64 %indvars.iv.next76, %i.dn
  br i1 %i.do, label %bb.b, label %._crit_edge59, !llvm.loop !1385

._crit_edge62:                                    ; preds = %._crit_edge59, %.lr.ph61, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16MultiValDenseBinItE9CopyInnerILb1ELb0EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %2, ptr %i.a, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr %1, ptr %i.b, align 8, !tbaa !281
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !245
  %i.h = icmp eq i32 %i.g, %3
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 269)
  %.pre = load i32, ptr %i.f, align 8, !tbaa !245
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i32 [ %.pre, %bb.b ], [ %3, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.j = tail call i32 @OMP_NUM_THREADS()
  %i.k = add i32 %i.i, 1023
  %i.l = sdiv i32 %i.k, 1024
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 4 uses
  store i32 %.sroa.speculated.i.i, ptr %i.c, align 4, !tbaa !58
  %i.m = icmp sgt i32 %.sroa.speculated.i.i, 1
  br i1 %i.m, label %bb.d, label %_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.n = add i32 %i.i, -1
  %i.o = add i32 %i.n, %.sroa.speculated.i.i
  %i.p = sdiv i32 %i.o, %.sroa.speculated.i.i
  %i.q = add nsw i32 %i.p, 31
  %i.r = sdiv i32 %i.q, 32
  %i.s = shl nsw i32 %i.r, 5
  br label %_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit

_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit: ; preds = %bb.c, %bb.d
  %storemerge.i.i = phi i32 [ %i.s, %bb.d ], [ %i.i, %bb.c ]
  store i32 %storemerge.i.i, ptr %i.d, align 4, !tbaa !58
  %i.t = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.t)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN8LightGBM16MultiValDenseBinItE9CopyInnerILb1ELb0EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIiSaIiEE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM16MultiValDenseBinItE9CopyInnerILb1ELb0EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIiSaIiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree nonnull readnone align 8 captures(none) %7) #18 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !58     ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.f, ptr %i.b, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !58
  %i.h = load i32, ptr %0, align 4, !tbaa !58     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !58
  %i.i = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.f) ; 3 uses
  store i32 %i.i, ptr %i.b, align 4, !tbaa !58
  %i.j = load i32, ptr %i.a, align 4, !tbaa !58   ; 3 uses
  %.not41 = icmp sgt i32 %i.j, %i.i
  br i1 %.not41, label %._crit_edge42, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.k = load i32, ptr %3, align 4, !tbaa !58     ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = load i32, ptr %i.c, align 4, !tbaa !58   ; 3 uses
  %i.q = mul i32 %i.j, %i.k
  %i.r = mul i32 %i.p, %i.k
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.d
  %indvars.iv45 = phi i32 [ %i.q, %.preheader.lr.ph ], [ %indvars.iv.next46, %bb.d ] ; 2 uses
  %i.s = phi i32 [ %i.j, %.preheader.lr.ph ], [ %i.cb, %bb.d ] ; 2 uses
  %i.t = phi i32 [ %i.i, %.preheader.lr.ph ], [ %i.cd, %bb.d ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %._crit_edge39.split
  %indvars.iv47 = phi i32 [ %indvars.iv45, %.preheader ], [ %indvars.iv.next48, %._crit_edge39.split ] ; 2 uses
  %.03140 = phi i32 [ %i.s, %.preheader ], [ %i.ao, %._crit_edge39.split ] ; 3 uses
  %i.u = sext i32 %indvars.iv47 to i64            ; 2 uses
  %i.v = mul nsw i32 %i.k, %.03140                ; 2 uses
  %i.w = add nsw i32 %i.v, %i.k
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.w, i32 %i.m) ; 2 uses
  %i.x = icmp slt i32 %i.v, %.sroa.speculated
  br i1 %i.x, label %.lr.ph38, label %._crit_edge39.split

.lr.ph38:                                         ; preds = %bb.c
  %i.y = load i32, ptr %i.n, align 8, !tbaa !247  ; 5 uses
  %i.z = sext i32 %i.y to i64                     ; 3 uses
  %i.aa = load ptr, ptr %5, align 8, !tbaa !281   ; 2 uses
  %i.ab = load ptr, ptr %6, align 8, !tbaa !71
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !247
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = icmp sgt i32 %i.y, 0
  br i1 %i.af, label %.lr.ph38.split, label %._crit_edge39.split

.lr.ph38.split:                                   ; preds = %.lr.ph38
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !111 ; 2 uses
  %i.ai = ptrtoaddr ptr %i.ah to i64
  %i.aj = load ptr, ptr %i.o, align 8, !tbaa !111 ; 2 uses
  %i.ak = ptrtoaddr ptr %i.aj to i64
  %i.al = sext i32 %.sroa.speculated to i64
  %wide.trip.count = zext nneg i32 %i.y to i64    ; 8 uses
  %i.am = shl nuw nsw i64 %i.z, 1
  %8 = shl nuw nsw i64 %i.z, 1
  %9 = mul nsw i64 %8, %i.u
  %10 = add i64 %9, %i.ak
  %min.iters.check = icmp ult i32 %i.y, 4
  %min.iters.check57 = icmp ult i32 %i.y, 16
  %i.an = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.an, 0
  %n.vec59 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n63 = icmp eq i64 %n.vec59, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

._crit_edge39.split:                              ; preds = %._crit_edge, %.lr.ph38, %bb.c
  %i.ao = add nsw i32 %.03140, 1
  %.not33.not = icmp slt i32 %.03140, %i.t
  %indvars.iv.next48 = add i32 %indvars.iv47, %i.k
  br i1 %.not33.not, label %bb.c, label %bb.d

iter.check:                                       ; preds = %.lr.ph38.split, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph38.split ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %indvars.iv49 = phi i64 [ %i.u, %.lr.ph38.split ], [ %indvars.iv.next50, %._crit_edge ] ; 3 uses
  %i.ap = mul nsw i64 %indvars.iv49, %i.z
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %indvars.iv49
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !58
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = mul nsw i64 %i.ae, %i.as
  %i.au = getelementptr [2 x i8], ptr %i.ah, i64 %i.at ; 7 uses
  %i.av = getelementptr [2 x i8], ptr %i.aj, i64 %i.ap ; 7 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aw = mul i64 %indvar, %i.am
  %i.ax = mul nsw i64 %i.as, %i.ae
  %11 = shl i64 %i.ax, 1
  %i.ay = add i64 %10, %i.aw
  %i.az = add i64 %11, %i.ai
  %i.ba = sub i64 %i.az, %i.ay
  %diff.check = icmp ugt i64 %i.ba, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check57, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.bb = getelementptr [2 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %wide.load = load <8 x i16>, ptr %i.bb, align 2, !tbaa !89
  %wide.load58 = load <8 x i16>, ptr %i.bc, align 2, !tbaa !89
  %i.bd = getelementptr [2 x i8], ptr %i.av, i64 %index ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  store <8 x i16> %wide.load, ptr %i.bd, align 2, !tbaa !89
  store <8 x i16> %wide.load58, ptr %i.be, align 2, !tbaa !89
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !1386

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !125

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next62, %vec.epilog.vector.body ] ; 3 uses
  %i.bg = getelementptr [2 x i8], ptr %i.au, i64 %index60
  %wide.load61 = load <4 x i16>, ptr %i.bg, align 2, !tbaa !89
  %i.bh = getelementptr [2 x i8], ptr %i.av, i64 %index60
  store <4 x i16> %wide.load61, ptr %i.bh, align 2, !tbaa !89
  %index.next62 = add nuw i64 %index60, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next62, %n.vec59
  br i1 %i.bi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1387

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n63, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec59, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bj = getelementptr [2 x i8], ptr %i.au, i64 %indvars.iv.prol
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !89
  %i.bl = getelementptr [2 x i8], ptr %i.av, i64 %indvars.iv.prol
  store i16 %i.bk, ptr %i.bl, align 2, !tbaa !89
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1388

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bm = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, 1 ; 2 uses
  %i.bo = icmp slt i64 %indvars.iv.next50, %i.al
  %indvar.next = add i64 %indvar, 1
  br i1 %i.bo, label %iter.check, label %._crit_edge39.split, !llvm.loop !1389

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bp = getelementptr [2 x i8], ptr %i.au, i64 %indvars.iv
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !89
  %i.br = getelementptr [2 x i8], ptr %i.av, i64 %indvars.iv
  store i16 %i.bq, ptr %i.br, align 2, !tbaa !89
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bs = getelementptr [2 x i8], ptr %i.au, i64 %indvars.iv.next
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !89
  %i.bu = getelementptr [2 x i8], ptr %i.av, i64 %indvars.iv.next
  store i16 %i.bt, ptr %i.bu, align 2, !tbaa !89
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bv = getelementptr [2 x i8], ptr %i.au, i64 %indvars.iv.next.1
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !89
  %i.bx = getelementptr [2 x i8], ptr %i.av, i64 %indvars.iv.next.1
  store i16 %i.bw, ptr %i.bx, align 2, !tbaa !89
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.by = getelementptr [2 x i8], ptr %i.au, i64 %indvars.iv.next.2
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !89
  %i.ca = getelementptr [2 x i8], ptr %i.av, i64 %indvars.iv.next.2
  store i16 %i.bz, ptr %i.ca, align 2, !tbaa !89
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !1390

bb.d:                                             ; preds = %._crit_edge39.split
  %i.cb = add nsw i32 %i.p, %i.s                  ; 3 uses
  store i32 %i.cb, ptr %i.a, align 4, !tbaa !58
  %i.cc = add nsw i32 %i.p, %i.t
  %i.cd = call i32 @llvm.smin.i32(i32 %i.cc, i32 %i.f) ; 3 uses
  store i32 %i.cd, ptr %i.b, align 4, !tbaa !58
  %.not = icmp sgt i32 %i.cb, %i.cd
  %indvars.iv.next46 = add i32 %indvars.iv45, %i.r
  br i1 %.not, label %._crit_edge42, label %.preheader

._crit_edge42:                                    ; preds = %bb.d, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge42, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM16MultiValDenseBinItE9CopyInnerILb0ELb1EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %2, ptr %i.a, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr %1, ptr %i.b, align 8, !tbaa !281
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !245  ; 3 uses
  %i.h = tail call i32 @OMP_NUM_THREADS()
  %i.i = add i32 %i.g, 1023
  %i.j = sdiv i32 %i.i, 1024
  %.sroa.speculated.i.i = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 4 uses
  store i32 %.sroa.speculated.i.i, ptr %i.c, align 4, !tbaa !58
  %i.k = icmp sgt i32 %.sroa.speculated.i.i, 1
  br i1 %i.k, label %bb.b, label %_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %i.g, -1
  %i.m = add i32 %i.l, %.sroa.speculated.i.i
  %i.n = sdiv i32 %i.m, %.sroa.speculated.i.i
  %i.o = add nsw i32 %i.n, 31
  %i.p = sdiv i32 %i.o, 32
  %i.q = shl nsw i32 %i.p, 5
  br label %_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit

_ZN8LightGBM9Threading9BlockInfoIiEEvT_S2_PiPS2_.exit: ; preds = %bb.a, %bb.b
  %storemerge.i.i = phi i32 [ %i.q, %bb.b ], [ %i.g, %bb.a ]
  store i32 %storemerge.i.i, ptr %i.d, align 4, !tbaa !58
  %i.r = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.e, i32 %i.r)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 6, ptr nonnull @_ZN8LightGBM16MultiValDenseBinItE9CopyInnerILb0ELb1EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIiSaIiEE.omp_outlined, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %0, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM16MultiValDenseBinItE9CopyInnerILb0ELb1EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIiSaIiEE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree nonnull readnone align 8 captures(none) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %7) #18 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !58     ; 2 uses
  %i.f = add nsw i32 %i.e, -1                     ; 3 uses
  %i.g = icmp sgt i32 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 %i.f, ptr %i.b, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i32 1, ptr %i.c, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !58
  %i.h = load i32, ptr %0, align 4, !tbaa !58     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !58
  %i.i = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.f) ; 3 uses
  store i32 %i.i, ptr %i.b, align 4, !tbaa !58
  %i.j = load i32, ptr %i.a, align 4, !tbaa !58   ; 3 uses
  %.not47 = icmp sgt i32 %i.j, %i.i
  br i1 %.not47, label %._crit_edge48, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.k = load i32, ptr %3, align 4, !tbaa !58     ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.p = load i32, ptr %i.c, align 4, !tbaa !58   ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi:bb.a

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4, !tbaa !58
  store i32 %i.ct, ptr %i.ce, align 4, !tbaa !58
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !253

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4, !tbaa !58
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !58
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %i.a, align 8, !tbaa !242
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.dc) #38
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !83
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !173
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.dd, ptr %i.a, align 8, !tbaa !242
  br label %_ZSt4fillIPiiEvT_S1_RKT0_.exit

_ZSt4fillIPiiEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM3Log5WriteENS_8LogLevelEPKcS3_P13__va_list_tag(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 6 uses
  %i.b = tail call noundef nonnull align 4 dereferenceable(4) ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZZN8LightGBM3Log8GetLevelEvE5level)
  %i.c = load i32, ptr %i.b, align 4, !tbaa !1577
  %.not = icmp sgt i32 %0, %i.c
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN8LightGBM3Log14GetLogCallBackEvE8callback) ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !328
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef %1) ; 0 uses
  %i.h = load ptr, ptr @stdout, align 8, !tbaa !272, !noalias !1578
  %i.i = tail call i32 @vfprintf(ptr noundef %i.h, ptr noundef %2, ptr noundef %3) #19, !inline_history !1575 ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !272
  %i.k = tail call i32 @fflush(ptr noundef %i.j)  ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.l = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 512, ptr noundef nonnull @.str.17, ptr noundef %1) #19 ; 0 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !328
  call void %i.m(ptr noundef nonnull %i.a)
  %i.n = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 512, ptr noundef %2, ptr noundef %3) #19 ; 0 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !328
  call void %i.o(ptr noundef nonnull %i.a)
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !328
  call void %i.p(ptr noundef nonnull @.str.18)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #17

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 3 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check121 = icmp ult i64 %i.m, 56
  br i1 %min.iters.check121, label %.lr.ph.i.preheader145, label %vector.memcheck122

vector.memcheck122:                               ; preds = %.lr.ph.i.preheader
  %i.p = and i64 %i.m, -8
  %i.q = add i64 %i.p, 8                          ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %i.s = getelementptr i8, ptr %1, i64 %i.q
  %bound0123 = icmp ult ptr %0, %i.s
  %bound1124 = icmp ult ptr %1, %i.r
  %found.conflict125 = and i1 %bound0123, %bound1124
  br i1 %found.conflict125, label %.lr.ph.i.preheader145, label %vector.ph126

vector.ph126:                                     ; preds = %vector.memcheck122
  %n.vec127 = and i64 %i.o, 4611686018427387902   ; 3 uses
  %i.t = shl i64 %n.vec127, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next140, %vector.body128 ] ; 2 uses
  %i.w = shl i64 %index129, 3                     ; 2 uses
  %next.gep130 = getelementptr i8, ptr %1, i64 %i.w ; 2 uses
  %next.gep131 = getelementptr i8, ptr %0, i64 %i.w ; 2 uses
  %wide.vec132 = load <4 x i32>, ptr %next.gep131, align 4, !tbaa !58, !alias.scope !1588, !noalias !1589
  %wide.vec135 = load <4 x i32>, ptr %next.gep130, align 4, !tbaa !58, !alias.scope !1589
  store <4 x i32> %wide.vec135, ptr %next.gep131, align 4, !tbaa !58, !alias.scope !1588, !noalias !1589
  store <4 x i32> %wide.vec132, ptr %next.gep130, align 4, !tbaa !58, !alias.scope !1589
  %index.next140 = add nuw i64 %index129, 2       ; 2 uses
  %i.x = icmp eq i64 %index.next140, %n.vec127
  br i1 %i.x, label %middle.block141, label %vector.body128, !llvm.loop !1582

middle.block141:                                  ; preds = %vector.body128
  %cmp.n142 = icmp eq i64 %i.o, %n.vec127
  br i1 %cmp.n142, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.preheader145

.lr.ph.i.preheader145:                            ; preds = %vector.memcheck122, %.lr.ph.i.preheader, %middle.block141
  %.sroa.0.08.i.ph = phi ptr [ %1, %vector.memcheck122 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block141 ]
  %.sroa.04.07.i.ph = phi ptr [ %0, %vector.memcheck122 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block141 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader145, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.af, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader145 ] ; 4 uses
  %.sroa.04.07.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.sroa.04.07.i.ph, %.lr.ph.i.preheader145 ] ; 4 uses
  %i.y = load i32, ptr %.sroa.04.07.i, align 4, !tbaa !58
  %i.z = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !58
  store i32 %i.z, ptr %.sroa.04.07.i, align 4, !tbaa !58
  store i32 %i.y, ptr %.sroa.0.08.i, align 4, !tbaa !58
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !58
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !58
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !58
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !58
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %.not.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i, !llvm.loop !1583

bb.d:                                             ; preds = %bb.c
  %i.ag = sub i64 %i.c, %i.g
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %i.ag ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.056 = phi i64 [ %i.f, %bb.d ], [ %.056.be, %.backedge ] ; 7 uses
  %.0 = phi i64 [ %i.i, %bb.d ], [ %.0.be, %.backedge ] ; 14 uses
  %.sroa.026.0 = phi ptr [ %0, %bb.d ], [ %.sroa.026.0.be, %.backedge ] ; 18 uses
  %i.ai = sub nsw i64 %.056, %.0                  ; 9 uses
  %i.aj = icmp slt i64 %.0, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i64 %i.ai, 0
  br i1 %i.ak, label %.lr.ph66.preheader, label %._crit_edge67

.lr.ph66.preheader:                               ; preds = %bb.f
  %i.al = getelementptr [8 x i8], ptr %.sroa.026.0, i64 %.0 ; 7 uses
  %min.iters.check = icmp ult i64 %i.ai, 14
  br i1 %min.iters.check, label %.lr.ph66.preheader146, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph66.preheader
  %i.am = shl i64 %.056, 3                        ; 3 uses
  %i.an = shl i64 %.0, 3                          ; 3 uses
  %3 = add i64 %i.am, -4                          ; 2 uses
  %i.ao = sub i64 %3, %i.an
  %scevgep81 = getelementptr i8, ptr %.sroa.026.0, i64 %i.ao ; 3 uses
  %scevgep82 = getelementptr i8, ptr %.sroa.026.0, i64 %3 ; 3 uses
  %scevgep83 = getelementptr i8, ptr %.sroa.026.0, i64 4 ; 3 uses
  %4 = sub i64 %i.am, %i.an
  %5 = getelementptr i8, ptr %.sroa.026.0, i64 %4 ; 3 uses
  %scevgep84 = getelementptr i8, ptr %.sroa.026.0, i64 %i.an
  %scevgep85 = getelementptr i8, ptr %scevgep84, i64 4 ; 3 uses
  %scevgep86 = getelementptr i8, ptr %.sroa.026.0, i64 %i.am ; 3 uses
  %bound0 = icmp ult ptr %.sroa.026.0, %scevgep82
  %bound1 = icmp ult ptr %i.al, %scevgep81
  %found.conflict = and i1 %bound0, %bound1
  %bound087 = icmp ult ptr %.sroa.026.0, %5
  %bound188 = icmp ult ptr %scevgep83, %scevgep81
  %found.conflict89 = and i1 %bound087, %bound188
  %conflict.rdx = or i1 %found.conflict, %found.conflict89
  %bound090 = icmp ult ptr %.sroa.026.0, %scevgep86
  %bound191 = icmp ult ptr %scevgep85, %scevgep81
  %found.conflict92 = and i1 %bound090, %bound191
  %conflict.rdx93 = or i1 %conflict.rdx, %found.conflict92
  %bound094 = icmp ult ptr %i.al, %5
  %bound195 = icmp ult ptr %scevgep83, %scevgep82
  %found.conflict96 = and i1 %bound094, %bound195
  %conflict.rdx97 = or i1 %conflict.rdx93, %found.conflict96
  %bound098 = icmp ult ptr %i.al, %scevgep86
  %bound199 = icmp ult ptr %scevgep85, %scevgep82
  %found.conflict100 = and i1 %bound098, %bound199
  %conflict.rdx101 = or i1 %conflict.rdx97, %found.conflict100
  %bound0102 = icmp ult ptr %scevgep83, %scevgep86
  %bound1103 = icmp ult ptr %scevgep85, %5
  %found.conflict104 = and i1 %bound0102, %bound1103
  %conflict.rdx105 = or i1 %conflict.rdx101, %found.conflict104
  br i1 %conflict.rdx105, label %.lr.ph66.preheader146, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, 9223372036854775806     ; 4 uses
  %i.ap = shl i64 %n.vec, 3                       ; 2 uses
  %i.aq = getelementptr i8, ptr %i.al, i64 %i.ap
  %i.ar = getelementptr i8, ptr %.sroa.026.0, i64 %i.ap ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.as = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.as ; 2 uses
  %next.gep106 = getelementptr i8, ptr %.sroa.026.0, i64 %i.as ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep106, align 4, !tbaa !58
  %wide.vec108 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !58
  store <4 x i32> %wide.vec108, ptr %next.gep106, align 4, !tbaa !58
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !1584

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %._crit_edge67, label %.lr.ph66.preheader146

.lr.ph66.preheader146:                            ; preds = %vector.memcheck, %.lr.ph66.preheader, %middle.block
  %.01964.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph66.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.sroa.025.063.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph66.preheader ], [ %i.aq, %middle.block ] ; 5 uses
  %.sroa.026.162.ph = phi ptr [ %.sroa.026.0, %vector.memcheck ], [ %.sroa.026.0, %.lr.ph66.preheader ], [ %i.ar, %middle.block ] ; 5 uses
  %i.au = sub i64 %.056, %.0
  %i.av = xor i64 %.01964.ph, -1
  %i.aw = add i64 %.056, %i.av
  %xtraiter149 = and i64 %i.au, 1
  %lcmp.mod150.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod150.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol

.lr.ph66.prol:                                    ; preds = %.lr.ph66.preheader146
  %i.ax = load i32, ptr %.sroa.026.162.ph, align 4, !tbaa !58
  %i.ay = load i32, ptr %.sroa.025.063.ph, align 4, !tbaa !58
  store i32 %i.ay, ptr %.sroa.026.162.ph, align 4, !tbaa !58
  store i32 %i.ax, ptr %.sroa.025.063.ph, align 4, !tbaa !58
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.026.162.ph, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.025.063.ph, i64 4 ; 2 uses
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !58
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !58
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !58
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !58
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.026.162.ph, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.025.063.ph, i64 8
  %i.bf = or disjoint i64 %.01964.ph, 1
  br label %.lr.ph66.prol.loopexit

.lr.ph66.prol.loopexit:                           ; preds = %.lr.ph66.prol, %.lr.ph66.preheader146
  %.lcssa.unr = phi ptr [ poison, %.lr.ph66.preheader146 ], [ %i.bd, %.lr.ph66.prol ]
  %.01964.unr = phi i64 [ %.01964.ph, %.lr.ph66.preheader146 ], [ %i.bf, %.lr.ph66.prol ]
  %.sroa.025.063.unr = phi ptr [ %.sroa.025.063.ph, %.lr.ph66.preheader146 ], [ %i.be, %.lr.ph66.prol ]
  %.sroa.026.162.unr = phi ptr [ %.sroa.026.162.ph, %.lr.ph66.preheader146 ], [ %i.bd, %.lr.ph66.prol ]
  %i.bg = icmp eq i64 %i.aw, %.0
  br i1 %i.bg, label %._crit_edge67, label %.lr.ph66

._crit_edge67:                                    ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66, %middle.block, %bb.f
  %.sroa.026.1.lcssa = phi ptr [ %.sroa.026.0, %bb.f ], [ %i.ar, %middle.block ], [ %.lcssa.unr, %.lr.ph66.prol.loopexit ], [ %i.bw, %.lr.ph66 ]
  %i.bh = srem i64 %.056, %.0                     ; 2 uses
  %.not21 = icmp eq i64 %i.bh, 0
  br i1 %.not21, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.g

.lr.ph66:                                         ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66
  %.01964 = phi i64 [ %i.by, %.lr.ph66 ], [ %.01964.unr, %.lr.ph66.prol.loopexit ]
  %.sroa.025.063 = phi ptr [ %i.bx, %.lr.ph66 ], [ %.sroa.025.063.unr, %.lr.ph66.prol.loopexit ] ; 6 uses
  %.sroa.026.162 = phi ptr [ %i.bw, %.lr.ph66 ], [ %.sroa.026.162.unr, %.lr.ph66.prol.loopexit ] ; 6 uses
  %i.bi = load i32, ptr %.sroa.026.162, align 4, !tbaa !58
  %i.bj = load i32, ptr %.sroa.025.063, align 4, !tbaa !58
  store i32 %i.bj, ptr %.sroa.026.162, align 4, !tbaa !58
  store i32 %i.bi, ptr %.sroa.025.063, align 4, !tbaa !58
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.026.162, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.025.063, i64 4 ; 2 uses
  %i.bm = load i32, ptr %i.bk, align 4, !tbaa !58
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !58
  store i32 %i.bn, ptr %i.bk, align 4, !tbaa !58
  store i32 %i.bm, ptr %i.bl, align 4, !tbaa !58
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.026.162, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.025.063, i64 8 ; 2 uses
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !58
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !58
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !58
  store i32 %i.bq, ptr %i.bp, align 4, !tbaa !58
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.026.162, i64 12 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.025.063, i64 12 ; 2 uses
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !58
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !58
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !58
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !58
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.026.162, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.025.063, i64 16
  %i.by = add nuw nsw i64 %.01964, 2              ; 2 uses
  %exitcond71.not.1 = icmp eq i64 %i.by, %i.ai
  br i1 %exitcond71.not.1, label %._crit_edge67, label %.lr.ph66, !llvm.loop !1585

bb.g:                                             ; preds = %._crit_edge67
  %i.bz = sub nsw i64 %.0, %i.bh
  br label %.backedge

bb.h:                                             ; preds = %bb.e
  %i.ca = getelementptr inbounds [8 x i8], ptr %.sroa.026.0, i64 %.056 ; 3 uses
  %i.cb = sub i64 0, %i.ai
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.cb ; 3 uses
  %i.cd = icmp sgt i64 %.0, 0
  br i1 %i.cd, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %xtraiter = and i64 %.0, 1
  %i.ce = icmp eq i64 %.0, 1
  br i1 %i.ce, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.0, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.060.epil.init = phi ptr [ %i.ca, %.lr.ph.preheader ], [ %i.cx, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.026.259.epil.init = phi ptr [ %i.cc, %.lr.ph.preheader ], [ %i.cw, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod148 = trunc i64 %.0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod148)
  %i.cf = getelementptr inbounds i8, ptr %.sroa.026.259.epil.init, i64 -8 ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %.sroa.0.060.epil.init, i64 -8 ; 2 uses
  %i.ch = load i32, ptr %i.cf, align 4, !tbaa !58
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !58
  store i32 %i.ci, ptr %i.cf, align 4, !tbaa !58
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !58
  %i.cj = getelementptr inbounds i8, ptr %.sroa.026.259.epil.init, i64 -4 ; 2 uses
  %i.ck = getelementptr inbounds i8, ptr %.sroa.0.060.epil.init, i64 -4 ; 2 uses
  %i.cl = load i32, ptr %i.cj, align 4, !tbaa !58
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !58
  store i32 %i.cm, ptr %i.cj, align 4, !tbaa !58
  store i32 %i.cl, ptr %i.ck, align 4, !tbaa !58
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h
  %.sroa.026.2.lcssa = phi ptr [ %i.cc, %bb.h ], [ %.sroa.026.0, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.026.0, %.lr.ph.epil.preheader ]
  %i.cn = srem i64 %.056, %i.ai                   ; 2 uses
  %.not = icmp eq i64 %i.cn, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.g
  %.056.be = phi i64 [ %.0, %bb.g ], [ %i.ai, %._crit_edge ]
  %.0.be = phi i64 [ %i.bz, %bb.g ], [ %i.cn, %._crit_edge ]
  %.sroa.026.0.be = phi ptr [ %.sroa.026.1.lcssa, %bb.g ], [ %.sroa.026.2.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !1586

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.060 = phi ptr [ %i.ca, %.lr.ph.preheader.new ], [ %i.cx, %.lr.ph ] ; 4 uses
  %.sroa.026.259 = phi ptr [ %i.cc, %.lr.ph.preheader.new ], [ %i.cw, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.co = getelementptr inbounds i8, ptr %.sroa.026.259, i64 -8 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %.sroa.0.060, i64 -8 ; 2 uses
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !58
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !58
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !58
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !58
  %i.cs = getelementptr inbounds i8, ptr %.sroa.026.259, i64 -4 ; 2 uses
  %i.ct = getelementptr inbounds i8, ptr %.sroa.0.060, i64 -4 ; 2 uses
  %i.cu = load i32, ptr %i.cs, align 4, !tbaa !58
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !58
  store i32 %i.cv, ptr %i.cs, align 4, !tbaa !58
  store i32 %i.cu, ptr %i.ct, align 4, !tbaa !58
  %i.cw = getelementptr inbounds i8, ptr %.sroa.026.259, i64 -16 ; 4 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.0.060, i64 -16 ; 4 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !58
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !58
  store i32 %i.cz, ptr %i.cw, align 4, !tbaa !58
  store i32 %i.cy, ptr %i.cx, align 4, !tbaa !58
  %i.da = getelementptr inbounds i8, ptr %.sroa.026.259, i64 -12 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %.sroa.0.060, i64 -12 ; 2 uses
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !58
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !58
  store i32 %i.dd, ptr %i.da, align 4, !tbaa !58
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !58
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1587

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %._crit_edge, %._crit_edge67, %.lr.ph.i, %middle.block141, %bb.b, %bb.a
  %.sroa.015.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %1, %middle.block141 ], [ %1, %.lr.ph.i ], [ %i.ah, %._crit_edge67 ], [ %i.ah, %._crit_edge ]
  ret ptr %.sroa.015.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS3_SaIS3_EEEES4_lET_S9_S9_S9_T1_SA_T0_SA_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.d, label %bb.b
end_hunk_1
begin_hunk_2_@_ZN8LightGBM17MultiValSparseBinIttE9CopyInnerILb1ELb0EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIjSaIjEESC_SC_.omp_outlined:bb.a
  %i.bo = add nsw i32 %i.bn, %i.bb
  %i.bp = sext i32 %i.bo to i64                   ; 4 uses
  %i.bq = icmp ult i64 %i.bj, %i.bp
  br i1 %i.bq, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.br = sub nuw nsw i64 %i.bp, %i.bj            ; 6 uses
  %i.bs = load ptr, ptr %i.ag, align 8, !tbaa !195
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.bg
  %i.bv = ashr exact i64 %i.bu, 1                 ; 2 uses
  %i.bw = icmp ult i64 %i.bj, 4611686018427387904
  call void @llvm.assume(i1 %i.bw)
  %i.bx = xor i64 %i.bj, 4611686018427387903      ; 2 uses
  %i.by = icmp ule i64 %i.bv, %i.bx
  call void @llvm.assume(i1 %i.by)
  %.not37.i = icmp ult i64 %i.bv, %i.br
  br i1 %.not37.i, label %bb.h, label %_ZSt27__uninitialized_default_n_aIPtmN8LightGBM6Common18AlignmentAllocatorItLm32EEEET_S5_T0_RT1_.exit.i

_ZSt27__uninitialized_default_n_aIPtmN8LightGBM6Common18AlignmentAllocatorItLm32EEEET_S5_T0_RT1_.exit.i: ; preds = %bb.g
  %i.bz = shl nuw nsw i64 %i.br, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %i.ap, i8 0, i64 %i.bz, i1 false), !tbaa !89
  %scevgep.i.i = getelementptr i8, ptr %i.ap, i64 %i.bz ; 2 uses
  store ptr %scevgep.i.i, ptr %i.af, align 8, !tbaa !117
  br label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ca = icmp ult i64 %i.bx, %i.br
  br i1 %i.ca, label %bb.i, label %_ZNKSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE12_M_check_lenEmPKc.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #40
          to label %.noexc56 unwind label %bb.o

.noexc56:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE12_M_check_lenEmPKc.exit.i: ; preds = %bb.h
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.br)
  %i.cb = add nuw nsw i64 %.sroa.speculated.i.i, %i.bj
  %i.cc = call i64 @llvm.umin.i64(i64 %i.cb, i64 4611686018427387903) ; 2 uses
  %i.cd = shl nuw nsw i64 %i.cc, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ce = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.cd) #19
  %.not.i.i.i.i.i = icmp eq i32 %i.ce, 0
  %i.cf = load ptr, ptr %i.a, align 8             ; 2 uses
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.cf, ptr null ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 %i.bi ; 2 uses
  %i.ch = shl nuw nsw i64 %i.br, 1
  call void @llvm.memset.p0.i64(ptr align 2 %i.cg, i8 0, i64 %i.ch, i1 false), !tbaa !89
  %.not13.i.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not13.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_N8LightGBM6Common18AlignmentAllocatorItLm32EEEET0_T_S6_S5_RT1_.exit.i, label %iter.check133

iter.check133:                                    ; preds = %_ZNKSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE12_M_check_lenEmPKc.exit.i
  %.0.i.i.i.i.i118 = ptrtoaddr ptr %.0.i.i.i.i.i to i64
  %i.ci = add i64 %i.bg, -2
  %i.cj = sub i64 %i.ci, %i.bh                    ; 3 uses
  %i.ck = lshr i64 %i.cj, 1
  %i.cl = add nuw i64 %i.ck, 1                    ; 5 uses
  %min.iters.check120 = icmp ult i64 %i.cj, 6
  %i.cm = sub i64 %i.bh, %.0.i.i.i.i.i118
  %diff.check119 = icmp ugt i64 %i.cm, -32
  %or.cond = select i1 %min.iters.check120, i1 true, i1 %diff.check119
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check121

vector.main.loop.iter.check121:                   ; preds = %iter.check133
  %min.iters.check122 = icmp ult i64 %i.cj, 30
  br i1 %min.iters.check122, label %vec.epilog.ph137, label %vector.ph123

vector.ph123:                                     ; preds = %vector.main.loop.iter.check121
  %i.cn = and i64 %i.cl, 12
  %n.vec124 = and i64 %i.cl, -16                  ; 4 uses
  %i.co = shl i64 %n.vec124, 1                    ; 2 uses
  %i.cp = getelementptr i8, ptr %.0.i.i.i.i.i, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.ao, i64 %i.co
  br label %vector.body125

vector.body125:                                   ; preds = %vector.ph123, %vector.body125
  %index126 = phi i64 [ 0, %vector.ph123 ], [ %index.next130, %vector.body125 ] ; 2 uses
  %i.cr = shl i64 %index126, 1                    ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.i.i.i.i.i, i64 %i.cr ; 2 uses
  %next.gep127 = getelementptr i8, ptr %i.ao, i64 %i.cr ; 2 uses
  %i.cs = getelementptr i8, ptr %next.gep127, i64 16
  %wide.load128 = load <8 x i16>, ptr %next.gep127, align 2, !tbaa !89
  %wide.load129 = load <8 x i16>, ptr %i.cs, align 2, !tbaa !89
  %i.ct = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load128, ptr %next.gep, align 2, !tbaa !89
  store <8 x i16> %wide.load129, ptr %i.ct, align 2, !tbaa !89
  %index.next130 = add nuw i64 %index126, 16      ; 2 uses
  %i.cu = icmp eq i64 %index.next130, %n.vec124
  br i1 %i.cu, label %middle.block131, label %vector.body125, !llvm.loop !1903

middle.block131:                                  ; preds = %vector.body125
  %cmp.n132 = icmp eq i64 %i.cl, %n.vec124
  br i1 %cmp.n132, label %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_N8LightGBM6Common18AlignmentAllocatorItLm32EEEET0_T_S6_S5_RT1_.exit.i, label %vec.epilog.iter.check134

vec.epilog.iter.check134:                         ; preds = %middle.block131
  %min.epilog.iters.check136 = icmp eq i64 %i.cn, 0
  br i1 %min.epilog.iters.check136, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph137, !prof !125

vec.epilog.ph137:                                 ; preds = %vector.main.loop.iter.check121, %vec.epilog.iter.check134
  %vec.epilog.resume.val138 = phi i64 [ %n.vec124, %vec.epilog.iter.check134 ], [ 0, %vector.main.loop.iter.check121 ]
  %n.vec139 = and i64 %i.cl, -4                   ; 3 uses
  %i.cv = shl i64 %n.vec139, 1                    ; 2 uses
  %i.cw = getelementptr i8, ptr %.0.i.i.i.i.i, i64 %i.cv
  %i.cx = getelementptr i8, ptr %i.ao, i64 %i.cv
  br label %vec.epilog.vector.body140

vec.epilog.vector.body140:                        ; preds = %vec.epilog.vector.body140, %vec.epilog.ph137
  %index141 = phi i64 [ %vec.epilog.resume.val138, %vec.epilog.ph137 ], [ %index.next145, %vec.epilog.vector.body140 ] ; 2 uses
  %i.cy = shl i64 %index141, 1                    ; 2 uses
  %next.gep142 = getelementptr i8, ptr %i.cf, i64 %i.cy
  %next.gep143 = getelementptr i8, ptr %i.ao, i64 %i.cy
  %wide.load144 = load <4 x i16>, ptr %next.gep143, align 2, !tbaa !89
  store <4 x i16> %wide.load144, ptr %next.gep142, align 2, !tbaa !89
  %index.next145 = add nuw i64 %index141, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next145, %n.vec139
  br i1 %i.cz, label %vec.epilog.middle.block146, label %vec.epilog.vector.body140, !llvm.loop !1904

vec.epilog.middle.block146:                       ; preds = %vec.epilog.vector.body140
  %cmp.n147 = icmp eq i64 %i.cl, %n.vec139
  br i1 %cmp.n147, label %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_N8LightGBM6Common18AlignmentAllocatorItLm32EEEET0_T_S6_S5_RT1_.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check133, %vec.epilog.iter.check134, %vec.epilog.middle.block146
  %.015.i.i.i.ph = phi ptr [ %.0.i.i.i.i.i, %iter.check133 ], [ %i.cp, %vec.epilog.iter.check134 ], [ %i.cw, %vec.epilog.middle.block146 ]
  %.sroa.010.014.i.i.i.ph = phi ptr [ %i.ao, %iter.check133 ], [ %i.cq, %vec.epilog.iter.check134 ], [ %i.cx, %vec.epilog.middle.block146 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.015.i.i.i = phi ptr [ %i.dc, %.lr.ph.i.i.i ], [ %.015.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.010.014.i.i.i = phi ptr [ %i.db, %.lr.ph.i.i.i ], [ %.sroa.010.014.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.da = load i16, ptr %.sroa.010.014.i.i.i, align 2, !tbaa !89
  store i16 %i.da, ptr %.015.i.i.i, align 2, !tbaa !89
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i, i64 2 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 2
  %.not.i.i.i = icmp eq ptr %i.db, %i.ap
  br i1 %.not.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_N8LightGBM6Common18AlignmentAllocatorItLm32EEEET0_T_S6_S5_RT1_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !1905

_ZSt34__uninitialized_move_if_noexcept_aIPtS0_N8LightGBM6Common18AlignmentAllocatorItLm32EEEET0_T_S6_S5_RT1_.exit.i: ; preds = %.lr.ph.i.i.i, %middle.block131, %vec.epilog.middle.block146, %_ZNKSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE12_M_check_lenEmPKc.exit.i
  %.not.i45.i = icmp eq ptr %i.ao, null
  br i1 %.not.i45.i, label %_ZNSt12_Vector_baseItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE13_M_deallocateEPtm.exit46.i, label %bb.j

bb.j:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_N8LightGBM6Common18AlignmentAllocatorItLm32EEEET0_T_S6_S5_RT1_.exit.i
  call void @free(ptr noundef nonnull %i.ao) #19
  br label %_ZNSt12_Vector_baseItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE13_M_deallocateEPtm.exit46.i

_ZNSt12_Vector_baseItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE13_M_deallocateEPtm.exit46.i: ; preds = %bb.j, %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_N8LightGBM6Common18AlignmentAllocatorItLm32EEEET0_T_S6_S5_RT1_.exit.i
  store ptr %.0.i.i.i.i.i, ptr %i.ad, align 8, !tbaa !111
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.br ; 2 uses
  store ptr %i.dd, ptr %i.af, align 8, !tbaa !117
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i.i.i.i, i64 %i.cc
  store ptr %i.de, ptr %i.ag, align 8, !tbaa !195
  br label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit

bb.k:                                             ; preds = %bb.f
  %i.df = icmp ugt i64 %i.bj, %i.bp
  br i1 %i.df, label %bb.l, label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit

bb.l:                                             ; preds = %bb.k
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.bp ; 3 uses
  %.not.i.i = icmp eq ptr %i.ap, %i.dg
  br i1 %.not.i.i, label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.dg, ptr %i.af, align 8, !tbaa !117
  br label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit

_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit: ; preds = %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE13_M_deallocateEPtm.exit46.i, %_ZSt27__uninitialized_default_n_aIPtmN8LightGBM6Common18AlignmentAllocatorItLm32EEEET_S5_T0_RT1_.exit.i, %bb.e
  %i.dh = phi ptr [ %i.an, %bb.m ], [ %i.an, %bb.l ], [ %i.an, %bb.k ], [ %.0.i.i.i.i.i, %_ZNSt12_Vector_baseItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE13_M_deallocateEPtm.exit46.i ], [ %i.an, %_ZSt27__uninitialized_default_n_aIPtmN8LightGBM6Common18AlignmentAllocatorItLm32EEEET_S5_T0_RT1_.exit.i ], [ %i.an, %bb.e ] ; 13 uses
  %i.di = phi ptr [ %i.ao, %bb.m ], [ %i.ao, %bb.l ], [ %i.ao, %bb.k ], [ %.0.i.i.i.i.i, %_ZNSt12_Vector_baseItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE13_M_deallocateEPtm.exit46.i ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPtmN8LightGBM6Common18AlignmentAllocatorItLm32EEEET_S5_T0_RT1_.exit.i ], [ %i.ao, %bb.e ]
  %i.dj = phi ptr [ %i.dg, %bb.m ], [ %i.ap, %bb.l ], [ %i.ap, %bb.k ], [ %i.dd, %_ZNSt12_Vector_baseItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE13_M_deallocateEPtm.exit46.i ], [ %scevgep.i.i, %_ZSt27__uninitialized_default_n_aIPtmN8LightGBM6Common18AlignmentAllocatorItLm32EEEET_S5_T0_RT1_.exit.i ], [ %i.ap, %bb.e ]
  %i.dk = ptrtoaddr ptr %i.dh to i64
  %i.dl = icmp ult i16 %i.ay, %i.ba
  br i1 %i.dl, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit
  %i.dm = load ptr, ptr %5, align 8, !tbaa !422
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !111 ; 8 uses
  %i.dp = ptrtoaddr ptr %i.do to i64
  %i.dq = zext i16 %i.ay to i64                   ; 10 uses
  %wide.trip.count = zext i16 %i.ba to i64        ; 5 uses
  %i.dr = sub nsw i64 %wide.trip.count, %i.dq     ; 7 uses
  %min.iters.check = icmp ult i64 %i.dr, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ds = xor i64 %i.dq, -1
  %i.dt = add nsw i64 %i.ds, %wide.trip.count     ; 2 uses
  %i.du = trunc i64 %i.dt to i16
  %i.dv = xor i16 %.05362, -1
  %i.dw = icmp ult i16 %i.dv, %i.du
  %i.dx = icmp ugt i64 %i.dt, 65535
  %i.dy = or i1 %i.dw, %i.dx
  br i1 %i.dy, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.dz = zext i16 %.05362 to i64
  %i.ea = shl nuw nsw i64 %i.dz, 1
  %11 = shl nuw nsw i64 %i.dq, 1
  %12 = add i64 %i.ea, %i.dk
  %i.eb = add i64 %11, %i.dp
  %i.ec = sub i64 %i.eb, %12
  %diff.check = icmp ugt i64 %i.ec, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check109 = icmp ult i64 %i.dr, 16
  br i1 %min.iters.check109, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ed = and i64 %i.dr, 12
  %n.vec = and i64 %i.dr, -16                     ; 5 uses
  %i.ee = add nsw i64 %n.vec, %i.dq
  %i.ef = trunc i64 %n.vec to i16
  %i.eg = add i16 %.05362, %i.ef                  ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.do, i64 %i.dq
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eh = trunc i64 %index to i16
  %i.ei = add i16 %.05362, %i.eh
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <8 x i16>, ptr %gep, align 2, !tbaa !89
  %wide.load110 = load <8 x i16>, ptr %i.ej, align 2, !tbaa !89
  %i.ek = zext i16 %i.ei to i64
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.ek ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store <8 x i16> %wide.load, ptr %i.el, align 2, !tbaa !89
  store <8 x i16> %wide.load110, ptr %i.em, align 2, !tbaa !89
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !1906

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dr, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ed, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !125

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec111 = and i64 %i.dr, -4                   ; 4 uses
  %i.eo = add nsw i64 %n.vec111, %i.dq
  %i.ep = trunc i64 %n.vec111 to i16
  %i.eq = add i16 %.05362, %i.ep                  ; 2 uses
  %invariant.gep155 = getelementptr [2 x i8], ptr %i.do, i64 %i.dq
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index112 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next114, %vec.epilog.vector.body ] ; 3 uses
  %i.er = trunc i64 %index112 to i16
  %i.es = add i16 %.05362, %i.er
  %gep156 = getelementptr [2 x i8], ptr %invariant.gep155, i64 %index112
  %wide.load113 = load <4 x i16>, ptr %gep156, align 2, !tbaa !89
  %i.et = zext i16 %i.es to i64
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.et
  store <4 x i16> %wide.load113, ptr %i.eu, align 2, !tbaa !89
  %index.next114 = add nuw i64 %index112, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next114, %n.vec111
  br i1 %i.ev, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1907

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n115 = icmp eq i64 %i.dr, %n.vec111
  br i1 %cmp.n115, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.dq, %iter.check ], [ %i.dq, %vector.scevcheck ], [ %i.dq, %vector.memcheck ], [ %i.ee, %vec.epilog.iter.check ], [ %i.eo, %vec.epilog.middle.block ] ; 4 uses
  %.160.ph = phi i16 [ %.05362, %iter.check ], [ %.05362, %vector.scevcheck ], [ %.05362, %vector.memcheck ], [ %i.eg, %vec.epilog.iter.check ], [ %i.eq, %vec.epilog.middle.block ] ; 2 uses
  %i.ew = sub i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.ew, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.160.prol = phi i16 [ %i.ez, %vec.epilog.scalar.ph.prol ], [ %.160.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv.prol
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !89
  %i.ez = add i16 %.160.prol, 1                   ; 3 uses
  %i.fa = zext i16 %.160.prol to i64
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.fa
  store i16 %i.ey, ptr %i.fb, align 2, !tbaa !89
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !1908

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa150.unr = phi i16 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.ez, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.160.unr = phi i16 [ %.160.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ez, %vec.epilog.scalar.ph.prol ]
  %i.fc = sub i64 %indvars.iv.ph, %wide.trip.count
  %i.fd = icmp ugt i64 %i.fc, -4
  br i1 %i.fd, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit
  %i.fe = phi ptr [ %i.di, %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit ], [ %i.dh, %middle.block ], [ %i.dh, %vec.epilog.middle.block ], [ %i.dh, %vec.epilog.scalar.ph ], [ %i.dh, %vec.epilog.scalar.ph.prol.loopexit ]
  %.1.lcssa = phi i16 [ %.05362, %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit ], [ %i.eg, %middle.block ], [ %i.eq, %vec.epilog.middle.block ], [ %.lcssa150.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.gd, %vec.epilog.scalar.ph ] ; 3 uses
  %i.ff = sub i16 %.1.lcssa, %.05362
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1 ; 3 uses
  %i.fg = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %indvars.iv.next79
  store i16 %i.ff, ptr %i.fh, align 2, !tbaa !89
  %i.fi = icmp slt i64 %indvars.iv.next79, %i.ai
  br i1 %i.fi, label %bb.e, label %._crit_edge66.loopexit, !llvm.loop !1909

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.160 = phi i16 [ %i.gd, %vec.epilog.scalar.ph ], [ %.160.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !89
  %i.fl = add i16 %.160, 1
  %i.fm = zext i16 %.160 to i64
  %i.fn = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.fm
  store i16 %i.fk, ptr %i.fn, align 2, !tbaa !89
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 2
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !89
  %i.fr = add i16 %.160, 2
  %i.fs = zext i16 %i.fl to i64
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.fs
  store i16 %i.fq, ptr %i.ft, align 2, !tbaa !89
  %i.fu = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !89
  %i.fx = add i16 %.160, 3
  %i.fy = zext i16 %i.fr to i64
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.fy
  store i16 %i.fw, ptr %i.fz, align 2, !tbaa !89
  %i.ga = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 6
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !89
  %i.gd = add i16 %.160, 4                        ; 2 uses
  %i.ge = zext i16 %i.fx to i64
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.ge
  store i16 %i.gc, ptr %i.gf, align 2, !tbaa !89
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !1910

._crit_edge71.loopexit:                           ; preds = %._crit_edge66
  %.pre85 = load i32, ptr %i.b, align 4, !tbaa !58
  br label %._crit_edge71

._crit_edge71:                                    ; preds = %._crit_edge71.loopexit, %.preheader
  %i.gg = phi i32 [ %i.r, %.preheader ], [ %.pre85, %._crit_edge71.loopexit ]
  %.lcssa = phi i32 [ %i.q, %.preheader ], [ %i.aj, %._crit_edge71.loopexit ]
  %i.gh = load i32, ptr %i.d, align 4, !tbaa !58  ; 2 uses
  %i.gi = add nsw i32 %i.gh, %i.gg                ; 3 uses
  store i32 %i.gi, ptr %i.b, align 4, !tbaa !58
  %i.gj = add nsw i32 %i.gh, %.lcssa
  %i.gk = call i32 @llvm.smin.i32(i32 %i.gj, i32 %i.g) ; 3 uses
  store i32 %i.gk, ptr %i.c, align 4, !tbaa !58
  %.not = icmp sgt i32 %i.gi, %i.gk
  br i1 %.not, label %._crit_edge74, label %.preheader

._crit_edge74:                                    ; preds = %._crit_edge71, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge74, %bb.a
  ret void

bb.o:                                             ; preds = %bb.i
  %i.gl = landingpad { ptr, i32 }
          catch ptr null
  %i.gm = extractvalue { ptr, i32 } %i.gl, 0
  call void @__clang_call_terminate(ptr %i.gm) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM17MultiValSparseBinIttE9MergeDataEPKt(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::vector.188", align 8   ; 9 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %1, ptr %i.b, align 8, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 28, ptr %i.a, align 8, !tbaa !91
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !276
  %i.f = load i64, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.e, ptr noundef nonnull align 1 dereferenceable(28) @.str.21, i64 28, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !277
  %i.h = load ptr, ptr %2, align 8, !tbaa !276
end_hunk_2
begin_hunk_3_@_ZN8LightGBM17MultiValSparseBinItjE9CopyInnerILb1ELb0EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIjSaIjEESC_SC_.omp_outlined:bb.a
  %i.an = phi ptr [ %.pre83, %.lr.ph65 ], [ %i.db, %._crit_edge ] ; 5 uses
  %i.ao = phi ptr [ %.pre83, %.lr.ph65 ], [ %i.ep, %._crit_edge ] ; 13 uses
  %i.ap = phi ptr [ %.pre, %.lr.ph65 ], [ %i.dd, %._crit_edge ] ; 9 uses
  %indvars.iv78 = phi i64 [ %i.ah, %.lr.ph65 ], [ %indvars.iv.next79, %._crit_edge ] ; 2 uses
  %.05362 = phi i16 [ 0, %.lr.ph65 ], [ %.1.lcssa, %._crit_edge ] ; 10 uses
  %i.aq = load ptr, ptr %5, align 8, !tbaa !425
  %i.ar = load ptr, ptr %6, align 8, !tbaa !71
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %indvars.iv78
  %i.at = load i32, ptr %i.as, align 4, !tbaa !58
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.av = sext i32 %i.at to i64
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !111
  %i.ax = getelementptr [2 x i8], ptr %i.aw, i64 %i.av ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !89 ; 3 uses
  %i.az = getelementptr i8, ptr %i.ax, i64 2
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !89 ; 3 uses
  %i.bb = zext i16 %.05362 to i32                 ; 2 uses
  %i.bc = zext i16 %i.ba to i32
  %i.bd = zext i16 %i.ay to i32
  %i.be = sub nsw i32 %i.bc, %i.bd                ; 2 uses
  %i.bf = add nsw i32 %i.be, %i.bb
  %i.bg = ptrtoint ptr %i.ap to i64               ; 3 uses
  %i.bh = ptrtoint ptr %i.ao to i64               ; 3 uses
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = ashr exact i64 %i.bi, 2                 ; 8 uses
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = and i32 %i.bk, 65535
  %i.bm = icmp sgt i32 %i.bf, %i.bl
  br i1 %i.bm, label %bb.f, label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.bn = mul nsw i32 %i.be, 50
  %i.bo = add nsw i32 %i.bn, %i.bb
  %i.bp = sext i32 %i.bo to i64                   ; 4 uses
  %i.bq = icmp ult i64 %i.bj, %i.bp
  br i1 %i.bq, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.br = sub nuw nsw i64 %i.bp, %i.bj            ; 6 uses
  %i.bs = load ptr, ptr %i.ag, align 8, !tbaa !223
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = sub i64 %i.bt, %i.bg
  %i.bv = ashr exact i64 %i.bu, 2                 ; 2 uses
  %i.bw = icmp ult i64 %i.bj, 2305843009213693952
  call void @llvm.assume(i1 %i.bw)
  %i.bx = xor i64 %i.bj, 2305843009213693951      ; 2 uses
  %i.by = icmp ule i64 %i.bv, %i.bx
  call void @llvm.assume(i1 %i.by)
  %.not37.i = icmp ult i64 %i.bv, %i.br
  br i1 %.not37.i, label %bb.h, label %_ZSt27__uninitialized_default_n_aIPjmN8LightGBM6Common18AlignmentAllocatorIjLm32EEEET_S5_T0_RT1_.exit.i

_ZSt27__uninitialized_default_n_aIPjmN8LightGBM6Common18AlignmentAllocatorIjLm32EEEET_S5_T0_RT1_.exit.i: ; preds = %bb.g
  %i.bz = shl nuw nsw i64 %i.br, 2                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.ap, i8 0, i64 %i.bz, i1 false), !tbaa !58
  %scevgep.i.i = getelementptr i8, ptr %i.ap, i64 %i.bz ; 2 uses
  store ptr %scevgep.i.i, ptr %i.af, align 8, !tbaa !132
  br label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ca = icmp ult i64 %i.bx, %i.br
  br i1 %i.ca, label %bb.i, label %_ZNKSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE12_M_check_lenEmPKc.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #40
          to label %.noexc56 unwind label %bb.o

.noexc56:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE12_M_check_lenEmPKc.exit.i: ; preds = %bb.h
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.br)
  %i.cb = add nuw nsw i64 %.sroa.speculated.i.i, %i.bj
  %i.cc = call i64 @llvm.umin.i64(i64 %i.cb, i64 2305843009213693951) ; 2 uses
  %i.cd = shl nuw nsw i64 %i.cc, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ce = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.cd) #19
  %.not.i.i.i.i.i = icmp eq i32 %i.ce, 0
  %i.cf = load ptr, ptr %i.a, align 8
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.cf, ptr null ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 %i.bi ; 2 uses
  %i.ch = shl nuw nsw i64 %i.br, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.cg, i8 0, i64 %i.ch, i1 false), !tbaa !58
  %.not13.i.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not13.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N8LightGBM6Common18AlignmentAllocatorIjLm32EEEET0_T_S6_S5_RT1_.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE12_M_check_lenEmPKc.exit.i
  %.0.i.i.i.i.i112 = ptrtoaddr ptr %.0.i.i.i.i.i to i64
  %i.ci = add i64 %i.bg, -4
  %i.cj = sub i64 %i.ci, %i.bh                    ; 2 uses
  %i.ck = lshr i64 %i.cj, 2
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check115 = icmp ult i64 %i.cj, 28
  %i.cm = sub i64 %i.bh, %.0.i.i.i.i.i112
  %diff.check113 = icmp ugt i64 %i.cm, -32
  %or.cond = select i1 %min.iters.check115, i1 true, i1 %diff.check113
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader128, label %vector.ph116

vector.ph116:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec117 = and i64 %i.cl, 9223372036854775800  ; 3 uses
  %i.cn = shl i64 %n.vec117, 2                    ; 2 uses
  %i.co = getelementptr i8, ptr %.0.i.i.i.i.i, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.ao, i64 %i.cn
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph116
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next123, %vector.body118 ] ; 2 uses
  %i.cq = shl i64 %index119, 2                    ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.i.i.i.i.i, i64 %i.cq ; 2 uses
  %next.gep120 = getelementptr i8, ptr %i.ao, i64 %i.cq ; 2 uses
  %i.cr = getelementptr i8, ptr %next.gep120, i64 16
  %wide.load121 = load <4 x i32>, ptr %next.gep120, align 4, !tbaa !58
  %wide.load122 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !58
  %i.cs = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load121, ptr %next.gep, align 4, !tbaa !58
  store <4 x i32> %wide.load122, ptr %i.cs, align 4, !tbaa !58
  %index.next123 = add nuw i64 %index119, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next123, %n.vec117
  br i1 %i.ct, label %middle.block124, label %vector.body118, !llvm.loop !2001

middle.block124:                                  ; preds = %vector.body118
  %cmp.n125 = icmp eq i64 %i.cl, %n.vec117
  br i1 %cmp.n125, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N8LightGBM6Common18AlignmentAllocatorIjLm32EEEET0_T_S6_S5_RT1_.exit.i, label %.lr.ph.i.i.i.preheader128

.lr.ph.i.i.i.preheader128:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block124
  %.015.i.i.i.ph = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.co, %middle.block124 ]
  %.sroa.010.014.i.i.i.ph = phi ptr [ %i.ao, %.lr.ph.i.i.i.preheader ], [ %i.cp, %middle.block124 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader128, %.lr.ph.i.i.i
  %.015.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i ], [ %.015.i.i.i.ph, %.lr.ph.i.i.i.preheader128 ] ; 2 uses
  %.sroa.010.014.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i ], [ %.sroa.010.014.i.i.i.ph, %.lr.ph.i.i.i.preheader128 ] ; 2 uses
  %i.cu = load i32, ptr %.sroa.010.014.i.i.i, align 4, !tbaa !58
  store i32 %i.cu, ptr %.015.i.i.i, align 4, !tbaa !58
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i, i64 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.cv, %i.ap
  br i1 %.not.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N8LightGBM6Common18AlignmentAllocatorIjLm32EEEET0_T_S6_S5_RT1_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2002

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N8LightGBM6Common18AlignmentAllocatorIjLm32EEEET0_T_S6_S5_RT1_.exit.i: ; preds = %.lr.ph.i.i.i, %middle.block124, %_ZNKSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE12_M_check_lenEmPKc.exit.i
  %.not.i45.i = icmp eq ptr %i.ao, null
  br i1 %.not.i45.i, label %_ZNSt12_Vector_baseIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13_M_deallocateEPjm.exit46.i, label %bb.j

bb.j:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N8LightGBM6Common18AlignmentAllocatorIjLm32EEEET0_T_S6_S5_RT1_.exit.i
  call void @free(ptr noundef nonnull %i.ao) #19
  br label %_ZNSt12_Vector_baseIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13_M_deallocateEPjm.exit46.i

_ZNSt12_Vector_baseIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13_M_deallocateEPjm.exit46.i: ; preds = %bb.j, %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N8LightGBM6Common18AlignmentAllocatorIjLm32EEEET0_T_S6_S5_RT1_.exit.i
  store ptr %.0.i.i.i.i.i, ptr %i.ad, align 8, !tbaa !127
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.br ; 2 uses
  store ptr %i.cx, ptr %i.af, align 8, !tbaa !132
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %i.cc
  store ptr %i.cy, ptr %i.ag, align 8, !tbaa !223
  br label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit

bb.k:                                             ; preds = %bb.f
  %i.cz = icmp ugt i64 %i.bj, %i.bp
  br i1 %i.cz, label %bb.l, label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit

bb.l:                                             ; preds = %bb.k
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bp ; 3 uses
  %.not.i.i = icmp eq ptr %i.ap, %i.da
  br i1 %.not.i.i, label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.da, ptr %i.af, align 8, !tbaa !132
  br label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit

_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit: ; preds = %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13_M_deallocateEPjm.exit46.i, %_ZSt27__uninitialized_default_n_aIPjmN8LightGBM6Common18AlignmentAllocatorIjLm32EEEET_S5_T0_RT1_.exit.i, %bb.e
  %i.db = phi ptr [ %i.an, %bb.m ], [ %i.an, %bb.l ], [ %i.an, %bb.k ], [ %.0.i.i.i.i.i, %_ZNSt12_Vector_baseIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13_M_deallocateEPjm.exit46.i ], [ %i.an, %_ZSt27__uninitialized_default_n_aIPjmN8LightGBM6Common18AlignmentAllocatorIjLm32EEEET_S5_T0_RT1_.exit.i ], [ %i.an, %bb.e ] ; 11 uses
  %i.dc = phi ptr [ %i.ao, %bb.m ], [ %i.ao, %bb.l ], [ %i.ao, %bb.k ], [ %.0.i.i.i.i.i, %_ZNSt12_Vector_baseIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13_M_deallocateEPjm.exit46.i ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPjmN8LightGBM6Common18AlignmentAllocatorIjLm32EEEET_S5_T0_RT1_.exit.i ], [ %i.ao, %bb.e ]
  %i.dd = phi ptr [ %i.da, %bb.m ], [ %i.ap, %bb.l ], [ %i.ap, %bb.k ], [ %i.cx, %_ZNSt12_Vector_baseIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13_M_deallocateEPjm.exit46.i ], [ %scevgep.i.i, %_ZSt27__uninitialized_default_n_aIPjmN8LightGBM6Common18AlignmentAllocatorIjLm32EEEET_S5_T0_RT1_.exit.i ], [ %i.ap, %bb.e ]
  %i.de = ptrtoaddr ptr %i.db to i64
  %i.df = icmp ult i16 %i.ay, %i.ba
  br i1 %i.df, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit
  %i.dg = load ptr, ptr %5, align 8, !tbaa !425
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !127 ; 7 uses
  %i.dj = ptrtoaddr ptr %i.di to i64
  %i.dk = zext i16 %i.ay to i64                   ; 8 uses
  %wide.trip.count = zext i16 %i.ba to i64        ; 5 uses
  %i.dl = sub nsw i64 %wide.trip.count, %i.dk     ; 3 uses
  %min.iters.check = icmp ult i64 %i.dl, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.dm = xor i64 %i.dk, -1
  %i.dn = add nsw i64 %i.dm, %wide.trip.count     ; 2 uses
  %i.do = trunc i64 %i.dn to i16
  %i.dp = xor i16 %.05362, -1
  %i.dq = icmp ult i16 %i.dp, %i.do
  %i.dr = icmp ugt i64 %i.dn, 65535
  %i.ds = or i1 %i.dq, %i.dr
  br i1 %i.ds, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.dt = zext i16 %.05362 to i64
  %i.du = shl nuw nsw i64 %i.dt, 2
  %11 = shl nuw nsw i64 %i.dk, 2
  %12 = add i64 %i.du, %i.de
  %i.dv = add i64 %11, %i.dj
  %i.dw = sub i64 %i.dv, %12
  %diff.check = icmp ugt i64 %i.dw, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dl, -8                      ; 4 uses
  %i.dx = add nsw i64 %n.vec, %i.dk
  %i.dy = trunc i64 %n.vec to i16
  %i.dz = add i16 %.05362, %i.dy                  ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.di, i64 %i.dk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ea = trunc i64 %index to i16
  %i.eb = add i16 %.05362, %i.ea
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !58
  %wide.load109 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !58
  %i.ed = zext i16 %i.eb to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store <4 x i32> %wide.load, ptr %i.ee, align 4, !tbaa !58
  store <4 x i32> %wide.load109, ptr %i.ef, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %middle.block, label %vector.body, !llvm.loop !2003

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dl, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.dk, %vector.memcheck ], [ %i.dk, %vector.scevcheck ], [ %i.dk, %.lr.ph ], [ %i.dx, %middle.block ] ; 4 uses
  %.160.ph = phi i16 [ %.05362, %vector.memcheck ], [ %.05362, %vector.scevcheck ], [ %.05362, %.lr.ph ], [ %i.dz, %middle.block ] ; 2 uses
  %i.eh = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.eh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.160.prol = phi i16 [ %i.ek, %scalar.ph.prol ], [ %.160.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.prol
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !58
  %i.ek = add i16 %.160.prol, 1                   ; 3 uses
  %i.el = zext i16 %.160.prol to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.el
  store i32 %i.ej, ptr %i.em, align 4, !tbaa !58
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !2004

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa129.unr = phi i16 [ poison, %scalar.ph.preheader ], [ %i.ek, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.160.unr = phi i16 [ %.160.ph, %scalar.ph.preheader ], [ %i.ek, %scalar.ph.prol ]
  %i.en = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.eo = icmp ugt i64 %i.en, -4
  br i1 %i.eo, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit
  %i.ep = phi ptr [ %i.dc, %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit ], [ %i.db, %middle.block ], [ %i.db, %scalar.ph ], [ %i.db, %scalar.ph.prol.loopexit ]
  %.1.lcssa = phi i16 [ %.05362, %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit ], [ %i.dz, %middle.block ], [ %.lcssa129.unr, %scalar.ph.prol.loopexit ], [ %i.fo, %scalar.ph ] ; 3 uses
  %i.eq = sub i16 %.1.lcssa, %.05362
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1 ; 3 uses
  %i.er = load ptr, ptr %i.p, align 8, !tbaa !111
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.er, i64 %indvars.iv.next79
  store i16 %i.eq, ptr %i.es, align 2, !tbaa !89
  %i.et = icmp slt i64 %indvars.iv.next79, %i.ai
  br i1 %i.et, label %bb.e, label %._crit_edge66.loopexit, !llvm.loop !2005

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.160 = phi i16 [ %i.fo, %scalar.ph ], [ %.160.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !58
  %i.ew = add i16 %.160, 1
  %i.ex = zext i16 %.160 to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.ex
  store i32 %i.ev, ptr %i.ey, align 4, !tbaa !58
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !58
  %i.fc = add i16 %.160, 2
  %i.fd = zext i16 %i.ew to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.fd
  store i32 %i.fb, ptr %i.fe, align 4, !tbaa !58
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !58
  %i.fi = add i16 %.160, 3
  %i.fj = zext i16 %i.fc to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.fj
  store i32 %i.fh, ptr %i.fk, align 4, !tbaa !58
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !58
  %i.fo = add i16 %.160, 4                        ; 2 uses
  %i.fp = zext i16 %i.fi to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.fp
  store i32 %i.fn, ptr %i.fq, align 4, !tbaa !58
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !2006

._crit_edge71.loopexit:                           ; preds = %._crit_edge66
  %.pre85 = load i32, ptr %i.b, align 4, !tbaa !58
  br label %._crit_edge71

._crit_edge71:                                    ; preds = %._crit_edge71.loopexit, %.preheader
  %i.fr = phi i32 [ %i.r, %.preheader ], [ %.pre85, %._crit_edge71.loopexit ]
  %.lcssa = phi i32 [ %i.q, %.preheader ], [ %i.aj, %._crit_edge71.loopexit ]
  %i.fs = load i32, ptr %i.d, align 4, !tbaa !58  ; 2 uses
  %i.ft = add nsw i32 %i.fs, %i.fr                ; 3 uses
  store i32 %i.ft, ptr %i.b, align 4, !tbaa !58
  %i.fu = add nsw i32 %i.fs, %.lcssa
  %i.fv = call i32 @llvm.smin.i32(i32 %i.fu, i32 %i.g) ; 3 uses
  store i32 %i.fv, ptr %i.c, align 4, !tbaa !58
  %.not = icmp sgt i32 %i.ft, %i.fv
  br i1 %.not, label %._crit_edge74, label %.preheader

._crit_edge74:                                    ; preds = %._crit_edge71, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge74, %bb.a
  ret void

bb.o:                                             ; preds = %bb.i
  %i.fw = landingpad { ptr, i32 }
          catch ptr null
  %i.fx = extractvalue { ptr, i32 } %i.fw, 0
  call void @__clang_call_terminate(ptr %i.fx) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM17MultiValSparseBinItjE9MergeDataEPKt(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::vector.188", align 8   ; 9 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %1, ptr %i.b, align 8, !tbaa !254
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 28, ptr %i.a, align 8, !tbaa !91
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !276
  %i.f = load i64, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.e, ptr noundef nonnull align 1 dereferenceable(28) @.str.21, i64 28, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !277
  %i.h = load ptr, ptr %2, align 8, !tbaa !276
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  store i8 0, ptr %i.i, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.j = load ptr, ptr %2, align 8, !tbaa !276    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc.i
  %i.l = load i64, ptr %i.d, align 8, !tbaa !57
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !379  ; 4 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !111  ; 6 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %.pre = load i16, ptr %i.r, align 2, !tbaa !89  ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.s = icmp ult i32 %i.o, 4
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_3
begin_hunk_4_@_ZN8LightGBM17MultiValSparseBinIjtE9CopyInnerILb1ELb0EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIjSaIjEESC_SC_.omp_outlined:bb.a
  %i.ay = getelementptr i8, ptr %i.aw, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !58 ; 3 uses
  %i.ba = sub i32 %i.az, %i.ax                    ; 2 uses
  %i.bb = add i32 %i.ba, %.05360
  %i.bc = ptrtoint ptr %i.ao to i64               ; 3 uses
  %i.bd = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = ashr exact i64 %i.be, 1                 ; 7 uses
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = icmp ugt i32 %i.bb, %i.bg
  br i1 %i.bh, label %bb.f, label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.bi = mul i32 %i.ba, 50
  %i.bj = add i32 %i.bi, %.05360
  %i.bk = zext i32 %i.bj to i64                   ; 4 uses
  %i.bl = icmp ult i64 %i.bf, %i.bk
  br i1 %i.bl, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bm = sub nuw nsw i64 %i.bk, %i.bf            ; 5 uses
  %i.bn = load ptr, ptr %i.af, align 8, !tbaa !195
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.bc
  %i.bq = ashr exact i64 %i.bp, 1                 ; 2 uses
  %i.br = xor i64 %i.bf, 4611686018427387903
  %i.bs = icmp ule i64 %i.bq, %i.br
  call void @llvm.assume(i1 %i.bs)
  %.not37.i = icmp ult i64 %i.bq, %i.bm
  br i1 %.not37.i, label %_ZNKSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE12_M_check_lenEmPKc.exit.i, label %_ZSt27__uninitialized_default_n_aIPtmN8LightGBM6Common18AlignmentAllocatorItLm32EEEET_S5_T0_RT1_.exit.i

_ZSt27__uninitialized_default_n_aIPtmN8LightGBM6Common18AlignmentAllocatorItLm32EEEET_S5_T0_RT1_.exit.i: ; preds = %bb.g
  %i.bt = shl nuw nsw i64 %i.bm, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %i.ao, i8 0, i64 %i.bt, i1 false), !tbaa !89
  %scevgep.i.i = getelementptr i8, ptr %i.ao, i64 %i.bt ; 2 uses
  store ptr %scevgep.i.i, ptr %i.ae, align 8, !tbaa !117
  br label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit

_ZNKSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bf, i64 %i.bm)
  %i.bu = add nuw nsw i64 %.sroa.speculated.i.i, %i.bf ; 2 uses
  %i.bv = shl nuw nsw i64 %i.bu, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.bw = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.bv) #19
  %.not.i.i.i.i.i = icmp eq i32 %i.bw, 0
  %i.bx = load ptr, ptr %i.a, align 8             ; 2 uses
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.bx, ptr null ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 %i.be ; 2 uses
  %i.bz = shl nuw nsw i64 %i.bm, 1
  call void @llvm.memset.p0.i64(ptr align 2 %i.by, i8 0, i64 %i.bz, i1 false), !tbaa !89
  %.not13.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not13.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_N8LightGBM6Common18AlignmentAllocatorItLm32EEEET0_T_S6_S5_RT1_.exit.i, label %iter.check131

iter.check131:                                    ; preds = %_ZNKSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE12_M_check_lenEmPKc.exit.i
  %.0.i.i.i.i.i116 = ptrtoaddr ptr %.0.i.i.i.i.i to i64
  %i.ca = add i64 %i.bc, -2
  %i.cb = sub i64 %i.ca, %i.bd                    ; 3 uses
  %i.cc = lshr i64 %i.cb, 1
  %i.cd = add nuw i64 %i.cc, 1                    ; 5 uses
  %min.iters.check118 = icmp ult i64 %i.cb, 6
  %i.ce = sub i64 %i.bd, %.0.i.i.i.i.i116
  %diff.check117 = icmp ugt i64 %i.ce, -32
  %or.cond = select i1 %min.iters.check118, i1 true, i1 %diff.check117
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check119

vector.main.loop.iter.check119:                   ; preds = %iter.check131
  %min.iters.check120 = icmp ult i64 %i.cb, 30
  br i1 %min.iters.check120, label %vec.epilog.ph135, label %vector.ph121

vector.ph121:                                     ; preds = %vector.main.loop.iter.check119
  %i.cf = and i64 %i.cd, 12
  %n.vec122 = and i64 %i.cd, -16                  ; 4 uses
  %i.cg = shl i64 %n.vec122, 1                    ; 2 uses
  %i.ch = getelementptr i8, ptr %.0.i.i.i.i.i, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.an, i64 %i.cg
  br label %vector.body123

vector.body123:                                   ; preds = %vector.ph121, %vector.body123
  %index124 = phi i64 [ 0, %vector.ph121 ], [ %index.next128, %vector.body123 ] ; 2 uses
  %i.cj = shl i64 %index124, 1                    ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.i.i.i.i.i, i64 %i.cj ; 2 uses
  %next.gep125 = getelementptr i8, ptr %i.an, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep125, i64 16
  %wide.load126 = load <8 x i16>, ptr %next.gep125, align 2, !tbaa !89
  %wide.load127 = load <8 x i16>, ptr %i.ck, align 2, !tbaa !89
  %i.cl = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load126, ptr %next.gep, align 2, !tbaa !89
  store <8 x i16> %wide.load127, ptr %i.cl, align 2, !tbaa !89
  %index.next128 = add nuw i64 %index124, 16      ; 2 uses
  %i.cm = icmp eq i64 %index.next128, %n.vec122
  br i1 %i.cm, label %middle.block129, label %vector.body123, !llvm.loop !2191

middle.block129:                                  ; preds = %vector.body123
  %cmp.n130 = icmp eq i64 %i.cd, %n.vec122
  br i1 %cmp.n130, label %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_N8LightGBM6Common18AlignmentAllocatorItLm32EEEET0_T_S6_S5_RT1_.exit.i, label %vec.epilog.iter.check132

vec.epilog.iter.check132:                         ; preds = %middle.block129
  %min.epilog.iters.check134 = icmp eq i64 %i.cf, 0
  br i1 %min.epilog.iters.check134, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph135, !prof !125

vec.epilog.ph135:                                 ; preds = %vector.main.loop.iter.check119, %vec.epilog.iter.check132
  %vec.epilog.resume.val136 = phi i64 [ %n.vec122, %vec.epilog.iter.check132 ], [ 0, %vector.main.loop.iter.check119 ]
  %n.vec137 = and i64 %i.cd, -4                   ; 3 uses
  %i.cn = shl i64 %n.vec137, 1                    ; 2 uses
  %i.co = getelementptr i8, ptr %.0.i.i.i.i.i, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.an, i64 %i.cn
  br label %vec.epilog.vector.body138

vec.epilog.vector.body138:                        ; preds = %vec.epilog.vector.body138, %vec.epilog.ph135
  %index139 = phi i64 [ %vec.epilog.resume.val136, %vec.epilog.ph135 ], [ %index.next143, %vec.epilog.vector.body138 ] ; 2 uses
  %i.cq = shl i64 %index139, 1                    ; 2 uses
  %next.gep140 = getelementptr i8, ptr %i.bx, i64 %i.cq
  %next.gep141 = getelementptr i8, ptr %i.an, i64 %i.cq
  %wide.load142 = load <4 x i16>, ptr %next.gep141, align 2, !tbaa !89
  store <4 x i16> %wide.load142, ptr %next.gep140, align 2, !tbaa !89
  %index.next143 = add nuw i64 %index139, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next143, %n.vec137
  br i1 %i.cr, label %vec.epilog.middle.block144, label %vec.epilog.vector.body138, !llvm.loop !2192

vec.epilog.middle.block144:                       ; preds = %vec.epilog.vector.body138
  %cmp.n145 = icmp eq i64 %i.cd, %n.vec137
  br i1 %cmp.n145, label %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_N8LightGBM6Common18AlignmentAllocatorItLm32EEEET0_T_S6_S5_RT1_.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check131, %vec.epilog.iter.check132, %vec.epilog.middle.block144
  %.015.i.i.i.ph = phi ptr [ %.0.i.i.i.i.i, %iter.check131 ], [ %i.ch, %vec.epilog.iter.check132 ], [ %i.co, %vec.epilog.middle.block144 ]
  %.sroa.010.014.i.i.i.ph = phi ptr [ %i.an, %iter.check131 ], [ %i.ci, %vec.epilog.iter.check132 ], [ %i.cp, %vec.epilog.middle.block144 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.015.i.i.i = phi ptr [ %i.cu, %.lr.ph.i.i.i ], [ %.015.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.010.014.i.i.i = phi ptr [ %i.ct, %.lr.ph.i.i.i ], [ %.sroa.010.014.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.cs = load i16, ptr %.sroa.010.014.i.i.i, align 2, !tbaa !89
  store i16 %i.cs, ptr %.015.i.i.i, align 2, !tbaa !89
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i, i64 2 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 2
  %.not.i.i.i = icmp eq ptr %i.ct, %i.ao
  br i1 %.not.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_N8LightGBM6Common18AlignmentAllocatorItLm32EEEET0_T_S6_S5_RT1_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2193

_ZSt34__uninitialized_move_if_noexcept_aIPtS0_N8LightGBM6Common18AlignmentAllocatorItLm32EEEET0_T_S6_S5_RT1_.exit.i: ; preds = %.lr.ph.i.i.i, %middle.block129, %vec.epilog.middle.block144, %_ZNKSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE12_M_check_lenEmPKc.exit.i
  %.not.i45.i = icmp eq ptr %i.an, null
  br i1 %.not.i45.i, label %_ZNSt12_Vector_baseItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE13_M_deallocateEPtm.exit46.i, label %bb.h

bb.h:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_N8LightGBM6Common18AlignmentAllocatorItLm32EEEET0_T_S6_S5_RT1_.exit.i
  call void @free(ptr noundef nonnull %i.an) #19
  br label %_ZNSt12_Vector_baseItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE13_M_deallocateEPtm.exit46.i

_ZNSt12_Vector_baseItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE13_M_deallocateEPtm.exit46.i: ; preds = %bb.h, %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_N8LightGBM6Common18AlignmentAllocatorItLm32EEEET0_T_S6_S5_RT1_.exit.i
  store ptr %.0.i.i.i.i.i, ptr %i.ac, align 8, !tbaa !111
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.bm ; 2 uses
  store ptr %i.cv, ptr %i.ae, align 8, !tbaa !117
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i.i.i.i, i64 %i.bu
  store ptr %i.cw, ptr %i.af, align 8, !tbaa !195
  br label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit

bb.i:                                             ; preds = %bb.f
  %i.cx = icmp ugt i64 %i.bf, %i.bk
  br i1 %i.cx, label %bb.j, label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.bk ; 3 uses
  %.not.i.i = icmp eq ptr %i.ao, %i.cy
  br i1 %.not.i.i, label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.cy, ptr %i.ae, align 8, !tbaa !117
  br label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit

_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit: ; preds = %bb.k, %bb.j, %bb.i, %_ZNSt12_Vector_baseItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE13_M_deallocateEPtm.exit46.i, %_ZSt27__uninitialized_default_n_aIPtmN8LightGBM6Common18AlignmentAllocatorItLm32EEEET_S5_T0_RT1_.exit.i, %bb.e
  %i.cz = phi ptr [ %i.am, %bb.k ], [ %i.am, %bb.j ], [ %i.am, %bb.i ], [ %.0.i.i.i.i.i, %_ZNSt12_Vector_baseItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE13_M_deallocateEPtm.exit46.i ], [ %i.am, %_ZSt27__uninitialized_default_n_aIPtmN8LightGBM6Common18AlignmentAllocatorItLm32EEEET_S5_T0_RT1_.exit.i ], [ %i.am, %bb.e ] ; 13 uses
  %i.da = phi ptr [ %i.an, %bb.k ], [ %i.an, %bb.j ], [ %i.an, %bb.i ], [ %.0.i.i.i.i.i, %_ZNSt12_Vector_baseItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE13_M_deallocateEPtm.exit46.i ], [ %i.an, %_ZSt27__uninitialized_default_n_aIPtmN8LightGBM6Common18AlignmentAllocatorItLm32EEEET_S5_T0_RT1_.exit.i ], [ %i.an, %bb.e ]
  %i.db = phi ptr [ %i.cy, %bb.k ], [ %i.ao, %bb.j ], [ %i.ao, %bb.i ], [ %i.cv, %_ZNSt12_Vector_baseItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE13_M_deallocateEPtm.exit46.i ], [ %scevgep.i.i, %_ZSt27__uninitialized_default_n_aIPtmN8LightGBM6Common18AlignmentAllocatorItLm32EEEET_S5_T0_RT1_.exit.i ], [ %i.ao, %bb.e ]
  %i.dc = ptrtoaddr ptr %i.cz to i64
  %i.dd = icmp ult i32 %i.ax, %i.az
  br i1 %i.dd, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit
  %i.de = load ptr, ptr %5, align 8, !tbaa !429
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !111 ; 8 uses
  %i.dh = ptrtoaddr ptr %i.dg to i64
  %i.di = zext i32 %i.ax to i64                   ; 10 uses
  %wide.trip.count = zext i32 %i.az to i64        ; 5 uses
  %i.dj = sub nsw i64 %wide.trip.count, %i.di     ; 7 uses
  %min.iters.check = icmp ult i64 %i.dj, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.dk = xor i64 %i.di, -1
  %i.dl = add nsw i64 %i.dk, %wide.trip.count     ; 2 uses
  %i.dm = trunc i64 %i.dl to i32
  %i.dn = xor i32 %.05360, -1
  %i.do = icmp ult i32 %i.dn, %i.dm
  %i.dp = icmp ugt i64 %i.dl, 4294967295
  %i.dq = or i1 %i.do, %i.dp
  br i1 %i.dq, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.dr = zext i32 %.05360 to i64
  %i.ds = shl nuw nsw i64 %i.dr, 1
  %11 = shl nuw nsw i64 %i.di, 1
  %12 = add i64 %i.ds, %i.dc
  %i.dt = add i64 %11, %i.dh
  %i.du = sub i64 %i.dt, %12
  %diff.check = icmp ugt i64 %i.du, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check107 = icmp ult i64 %i.dj, 16
  br i1 %min.iters.check107, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dv = and i64 %i.dj, 12
  %n.vec = and i64 %i.dj, -16                     ; 5 uses
  %i.dw = add nsw i64 %n.vec, %i.di
  %i.dx = trunc i64 %n.vec to i32
  %i.dy = add i32 %.05360, %i.dx                  ; 2 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.dg, i64 %i.di
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dz = trunc i64 %index to i32
  %i.ea = add i32 %.05360, %i.dz
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <8 x i16>, ptr %gep, align 2, !tbaa !89
  %wide.load108 = load <8 x i16>, ptr %i.eb, align 2, !tbaa !89
  %i.ec = zext i32 %i.ea to i64
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.ec ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store <8 x i16> %wide.load, ptr %i.ed, align 2, !tbaa !89
  store <8 x i16> %wide.load108, ptr %i.ee, align 2, !tbaa !89
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !2194

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dj, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dv, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !125

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec109 = and i64 %i.dj, -4                   ; 4 uses
  %i.eg = add nsw i64 %n.vec109, %i.di
  %i.eh = trunc i64 %n.vec109 to i32
  %i.ei = add i32 %.05360, %i.eh                  ; 2 uses
  %invariant.gep153 = getelementptr [2 x i8], ptr %i.dg, i64 %i.di
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index110 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next112, %vec.epilog.vector.body ] ; 3 uses
  %i.ej = trunc i64 %index110 to i32
  %i.ek = add i32 %.05360, %i.ej
  %gep154 = getelementptr [2 x i8], ptr %invariant.gep153, i64 %index110
  %wide.load111 = load <4 x i16>, ptr %gep154, align 2, !tbaa !89
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.el
  store <4 x i16> %wide.load111, ptr %i.em, align 2, !tbaa !89
  %index.next112 = add nuw i64 %index110, 4       ; 2 uses
  %i.en = icmp eq i64 %index.next112, %n.vec109
  br i1 %i.en, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2195

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n113 = icmp eq i64 %i.dj, %n.vec109
  br i1 %cmp.n113, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.di, %iter.check ], [ %i.di, %vector.scevcheck ], [ %i.di, %vector.memcheck ], [ %i.dw, %vec.epilog.iter.check ], [ %i.eg, %vec.epilog.middle.block ] ; 4 uses
  %.158.ph = phi i32 [ %.05360, %iter.check ], [ %.05360, %vector.scevcheck ], [ %.05360, %vector.memcheck ], [ %i.dy, %vec.epilog.iter.check ], [ %i.ei, %vec.epilog.middle.block ] ; 2 uses
  %i.eo = sub i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.eo, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.158.prol = phi i32 [ %i.er, %vec.epilog.scalar.ph.prol ], [ %.158.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %indvars.iv.prol
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !89
  %i.er = add i32 %.158.prol, 1                   ; 3 uses
  %i.es = zext i32 %.158.prol to i64
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.es
  store i16 %i.eq, ptr %i.et, align 2, !tbaa !89
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !2196

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa148.unr = phi i32 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.er, %vec.epilog.scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %.158.unr = phi i32 [ %.158.ph, %vec.epilog.scalar.ph.preheader ], [ %i.er, %vec.epilog.scalar.ph.prol ]
  %i.eu = sub i64 %indvars.iv.ph, %wide.trip.count
  %i.ev = icmp ugt i64 %i.eu, -4
  br i1 %i.ev, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit
  %i.ew = phi ptr [ %i.da, %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit ], [ %i.cz, %middle.block ], [ %i.cz, %vec.epilog.middle.block ], [ %i.cz, %vec.epilog.scalar.ph ], [ %i.cz, %vec.epilog.scalar.ph.prol.loopexit ]
  %.1.lcssa = phi i32 [ %.05360, %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit ], [ %i.dy, %middle.block ], [ %i.ei, %vec.epilog.middle.block ], [ %.lcssa148.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.fv, %vec.epilog.scalar.ph ] ; 3 uses
  %i.ex = sub i32 %.1.lcssa, %.05360
  %indvars.iv.next77 = add nsw i64 %indvars.iv76, 1 ; 3 uses
  %i.ey = load ptr, ptr %i.p, align 8, !tbaa !127
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv.next77
  store i32 %i.ex, ptr %i.ez, align 4, !tbaa !58
  %i.fa = icmp slt i64 %indvars.iv.next77, %i.ah
  br i1 %i.fa, label %bb.e, label %._crit_edge64, !llvm.loop !2197

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.158 = phi i32 [ %i.fv, %vec.epilog.scalar.ph ], [ %.158.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %indvars.iv
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !89
  %i.fd = add i32 %.158, 1
  %i.fe = zext i32 %.158 to i64
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.fe
  store i16 %i.fc, ptr %i.ff, align 2, !tbaa !89
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %indvars.iv
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 2
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !89
  %i.fj = add i32 %.158, 2
  %i.fk = zext i32 %i.fd to i64
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.fk
  store i16 %i.fi, ptr %i.fl, align 2, !tbaa !89
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %indvars.iv
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !89
  %i.fp = add i32 %.158, 3
  %i.fq = zext i32 %i.fj to i64
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.fq
  store i16 %i.fo, ptr %i.fr, align 2, !tbaa !89
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %indvars.iv
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 6
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !89
  %i.fv = add i32 %.158, 4                        ; 2 uses
  %i.fw = zext i32 %i.fp to i64
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %i.fw
  store i16 %i.fu, ptr %i.fx, align 2, !tbaa !89
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !2198

._crit_edge69.loopexit:                           ; preds = %._crit_edge64
  %.pre83 = load i32, ptr %i.b, align 4, !tbaa !58
  br label %._crit_edge69

._crit_edge69:                                    ; preds = %._crit_edge69.loopexit, %.preheader
  %i.fy = phi i32 [ %i.r, %.preheader ], [ %.pre83, %._crit_edge69.loopexit ]
  %.lcssa = phi i32 [ %i.q, %.preheader ], [ %i.ak, %._crit_edge69.loopexit ]
  %i.fz = load i32, ptr %i.d, align 4, !tbaa !58  ; 2 uses
  %i.ga = add nsw i32 %i.fz, %i.fy                ; 3 uses
  store i32 %i.ga, ptr %i.b, align 4, !tbaa !58
  %i.gb = add nsw i32 %i.fz, %.lcssa
  %i.gc = call i32 @llvm.smin.i32(i32 %i.gb, i32 %i.g) ; 3 uses
  store i32 %i.gc, ptr %i.c, align 4, !tbaa !58
  %.not = icmp sgt i32 %i.ga, %i.gc
  br i1 %.not, label %._crit_edge72, label %.preheader

._crit_edge72:                                    ; preds = %._crit_edge69, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge72, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM17MultiValSparseBinIjtE9MergeDataEPKj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::vector.120", align 8   ; 9 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %1, ptr %i.b, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 28, ptr %i.a, align 8, !tbaa !91
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !276
  %i.f = load i64, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.e, ptr noundef nonnull align 1 dereferenceable(28) @.str.21, i64 28, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !277
  %i.h = load ptr, ptr %2, align 8, !tbaa !276
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  store i8 0, ptr %i.i, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.j = load ptr, ptr %2, align 8, !tbaa !276    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

end_hunk_4
begin_hunk_5_@_ZN8LightGBM17MultiValSparseBinIjjE9CopyInnerILb1ELb0EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIjSaIjEESC_SC_.omp_outlined:bb.a
  %i.ag = sext i32 %i.v to i64
  %i.ah = sext i32 %.sroa.speculated to i64
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !132
  %.pre82 = load ptr, ptr %i.ac, align 8, !tbaa !127 ; 2 uses
  br label %bb.e

._crit_edge64:                                    ; preds = %._crit_edge, %bb.d
  %.053.lcssa = phi i32 [ 0, %bb.d ], [ %.1.lcssa, %._crit_edge ]
  %i.ai = load ptr, ptr %10, align 8, !tbaa !241
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv79
  store i32 %.053.lcssa, ptr %i.aj, align 4, !tbaa !58
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, 1
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !58  ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %.not55.not = icmp slt i64 %indvars.iv79, %i.al
  br i1 %.not55.not, label %.lr.ph68, label %._crit_edge69.loopexit

bb.e:                                             ; preds = %.lr.ph63, %._crit_edge
  %i.am = phi ptr [ %.pre82, %.lr.ph63 ], [ %i.ct, %._crit_edge ] ; 5 uses
  %i.an = phi ptr [ %.pre82, %.lr.ph63 ], [ %i.eh, %._crit_edge ] ; 13 uses
  %i.ao = phi ptr [ %.pre, %.lr.ph63 ], [ %i.cv, %._crit_edge ] ; 9 uses
  %indvars.iv76 = phi i64 [ %i.ag, %.lr.ph63 ], [ %indvars.iv.next77, %._crit_edge ] ; 2 uses
  %.05360 = phi i32 [ 0, %.lr.ph63 ], [ %.1.lcssa, %._crit_edge ] ; 11 uses
  %i.ap = load ptr, ptr %5, align 8, !tbaa !431
  %i.aq = load ptr, ptr %6, align 8, !tbaa !71
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %indvars.iv76
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !58
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.au = sext i32 %i.as to i64
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !127
  %i.aw = getelementptr [4 x i8], ptr %i.av, i64 %i.au ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !58 ; 3 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !58 ; 3 uses
  %i.ba = sub i32 %i.az, %i.ax                    ; 2 uses
  %i.bb = add i32 %i.ba, %.05360
  %i.bc = ptrtoint ptr %i.ao to i64               ; 3 uses
  %i.bd = ptrtoint ptr %i.an to i64               ; 3 uses
  %i.be = sub i64 %i.bc, %i.bd                    ; 2 uses
  %i.bf = ashr exact i64 %i.be, 2                 ; 7 uses
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = icmp ugt i32 %i.bb, %i.bg
  br i1 %i.bh, label %bb.f, label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.bi = mul i32 %i.ba, 50
  %i.bj = add i32 %i.bi, %.05360
  %i.bk = zext i32 %i.bj to i64                   ; 4 uses
  %i.bl = icmp ult i64 %i.bf, %i.bk
  br i1 %i.bl, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.bm = sub nuw nsw i64 %i.bk, %i.bf            ; 5 uses
  %i.bn = load ptr, ptr %i.af, align 8, !tbaa !223
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = sub i64 %i.bo, %i.bc
  %i.bq = ashr exact i64 %i.bp, 2                 ; 2 uses
  %i.br = xor i64 %i.bf, 2305843009213693951
  %i.bs = icmp ule i64 %i.bq, %i.br
  call void @llvm.assume(i1 %i.bs)
  %.not37.i = icmp ult i64 %i.bq, %i.bm
  br i1 %.not37.i, label %_ZNKSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE12_M_check_lenEmPKc.exit.i, label %_ZSt27__uninitialized_default_n_aIPjmN8LightGBM6Common18AlignmentAllocatorIjLm32EEEET_S5_T0_RT1_.exit.i

_ZSt27__uninitialized_default_n_aIPjmN8LightGBM6Common18AlignmentAllocatorIjLm32EEEET_S5_T0_RT1_.exit.i: ; preds = %bb.g
  %i.bt = shl nuw nsw i64 %i.bm, 2                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.ao, i8 0, i64 %i.bt, i1 false), !tbaa !58
  %scevgep.i.i = getelementptr i8, ptr %i.ao, i64 %i.bt ; 2 uses
  store ptr %scevgep.i.i, ptr %i.ae, align 8, !tbaa !132
  br label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit

_ZNKSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bf, i64 %i.bm)
  %i.bu = add nuw nsw i64 %.sroa.speculated.i.i, %i.bf ; 2 uses
  %i.bv = shl nuw nsw i64 %i.bu, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.bw = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.bv) #19
  %.not.i.i.i.i.i = icmp eq i32 %i.bw, 0
  %i.bx = load ptr, ptr %i.a, align 8
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.bx, ptr null ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.by = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 %i.be ; 2 uses
  %i.bz = shl nuw nsw i64 %i.bm, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.by, i8 0, i64 %i.bz, i1 false), !tbaa !58
  %.not13.i.i.i = icmp eq ptr %i.an, %i.ao
  br i1 %.not13.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N8LightGBM6Common18AlignmentAllocatorIjLm32EEEET0_T_S6_S5_RT1_.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE12_M_check_lenEmPKc.exit.i
  %.0.i.i.i.i.i110 = ptrtoaddr ptr %.0.i.i.i.i.i to i64
  %i.ca = add i64 %i.bc, -4
  %i.cb = sub i64 %i.ca, %i.bd                    ; 2 uses
  %i.cc = lshr i64 %i.cb, 2
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.cb, 28
  %i.ce = sub i64 %i.bd, %.0.i.i.i.i.i110
  %diff.check111 = icmp ugt i64 %i.ce, -32
  %or.cond = select i1 %min.iters.check113, i1 true, i1 %diff.check111
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader126, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec115 = and i64 %i.cd, 9223372036854775800  ; 3 uses
  %i.cf = shl i64 %n.vec115, 2                    ; 2 uses
  %i.cg = getelementptr i8, ptr %.0.i.i.i.i.i, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.an, i64 %i.cf
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph114
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body116 ] ; 2 uses
  %i.ci = shl i64 %index117, 2                    ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.i.i.i.i.i, i64 %i.ci ; 2 uses
  %next.gep118 = getelementptr i8, ptr %i.an, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep118, i64 16
  %wide.load119 = load <4 x i32>, ptr %next.gep118, align 4, !tbaa !58
  %wide.load120 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !58
  %i.ck = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load119, ptr %next.gep, align 4, !tbaa !58
  store <4 x i32> %wide.load120, ptr %i.ck, align 4, !tbaa !58
  %index.next121 = add nuw i64 %index117, 8       ; 2 uses
  %i.cl = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.cl, label %middle.block122, label %vector.body116, !llvm.loop !2275

middle.block122:                                  ; preds = %vector.body116
  %cmp.n123 = icmp eq i64 %i.cd, %n.vec115
  br i1 %cmp.n123, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N8LightGBM6Common18AlignmentAllocatorIjLm32EEEET0_T_S6_S5_RT1_.exit.i, label %.lr.ph.i.i.i.preheader126

.lr.ph.i.i.i.preheader126:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block122
  %.015.i.i.i.ph = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.cg, %middle.block122 ]
  %.sroa.010.014.i.i.i.ph = phi ptr [ %i.an, %.lr.ph.i.i.i.preheader ], [ %i.ch, %middle.block122 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader126, %.lr.ph.i.i.i
  %.015.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i ], [ %.015.i.i.i.ph, %.lr.ph.i.i.i.preheader126 ] ; 2 uses
  %.sroa.010.014.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i ], [ %.sroa.010.014.i.i.i.ph, %.lr.ph.i.i.i.preheader126 ] ; 2 uses
  %i.cm = load i32, ptr %.sroa.010.014.i.i.i, align 4, !tbaa !58
  store i32 %i.cm, ptr %.015.i.i.i, align 4, !tbaa !58
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i, i64 4 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.cn, %i.ao
  br i1 %.not.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N8LightGBM6Common18AlignmentAllocatorIjLm32EEEET0_T_S6_S5_RT1_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2276

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N8LightGBM6Common18AlignmentAllocatorIjLm32EEEET0_T_S6_S5_RT1_.exit.i: ; preds = %.lr.ph.i.i.i, %middle.block122, %_ZNKSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE12_M_check_lenEmPKc.exit.i
  %.not.i45.i = icmp eq ptr %i.an, null
  br i1 %.not.i45.i, label %_ZNSt12_Vector_baseIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13_M_deallocateEPjm.exit46.i, label %bb.h

bb.h:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N8LightGBM6Common18AlignmentAllocatorIjLm32EEEET0_T_S6_S5_RT1_.exit.i
  call void @free(ptr noundef nonnull %i.an) #19
  br label %_ZNSt12_Vector_baseIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13_M_deallocateEPjm.exit46.i

_ZNSt12_Vector_baseIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13_M_deallocateEPjm.exit46.i: ; preds = %bb.h, %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N8LightGBM6Common18AlignmentAllocatorIjLm32EEEET0_T_S6_S5_RT1_.exit.i
  store ptr %.0.i.i.i.i.i, ptr %i.ac, align 8, !tbaa !127
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %i.bm ; 2 uses
  store ptr %i.cp, ptr %i.ae, align 8, !tbaa !132
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %i.bu
  store ptr %i.cq, ptr %i.af, align 8, !tbaa !223
  br label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit

bb.i:                                             ; preds = %bb.f
  %i.cr = icmp ugt i64 %i.bf, %i.bk
  br i1 %i.cr, label %bb.j, label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit

bb.j:                                             ; preds = %bb.i
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.bk ; 3 uses
  %.not.i.i = icmp eq ptr %i.ao, %i.cs
  br i1 %.not.i.i, label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.cs, ptr %i.ae, align 8, !tbaa !132
  br label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit

_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit: ; preds = %bb.k, %bb.j, %bb.i, %_ZNSt12_Vector_baseIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13_M_deallocateEPjm.exit46.i, %_ZSt27__uninitialized_default_n_aIPjmN8LightGBM6Common18AlignmentAllocatorIjLm32EEEET_S5_T0_RT1_.exit.i, %bb.e
  %i.ct = phi ptr [ %i.am, %bb.k ], [ %i.am, %bb.j ], [ %i.am, %bb.i ], [ %.0.i.i.i.i.i, %_ZNSt12_Vector_baseIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13_M_deallocateEPjm.exit46.i ], [ %i.am, %_ZSt27__uninitialized_default_n_aIPjmN8LightGBM6Common18AlignmentAllocatorIjLm32EEEET_S5_T0_RT1_.exit.i ], [ %i.am, %bb.e ] ; 11 uses
  %i.cu = phi ptr [ %i.an, %bb.k ], [ %i.an, %bb.j ], [ %i.an, %bb.i ], [ %.0.i.i.i.i.i, %_ZNSt12_Vector_baseIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13_M_deallocateEPjm.exit46.i ], [ %i.an, %_ZSt27__uninitialized_default_n_aIPjmN8LightGBM6Common18AlignmentAllocatorIjLm32EEEET_S5_T0_RT1_.exit.i ], [ %i.an, %bb.e ]
  %i.cv = phi ptr [ %i.cs, %bb.k ], [ %i.ao, %bb.j ], [ %i.ao, %bb.i ], [ %i.cp, %_ZNSt12_Vector_baseIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13_M_deallocateEPjm.exit46.i ], [ %scevgep.i.i, %_ZSt27__uninitialized_default_n_aIPjmN8LightGBM6Common18AlignmentAllocatorIjLm32EEEET_S5_T0_RT1_.exit.i ], [ %i.ao, %bb.e ]
  %i.cw = ptrtoaddr ptr %i.ct to i64
  %i.cx = icmp ult i32 %i.ax, %i.az
  br i1 %i.cx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit
  %i.cy = load ptr, ptr %5, align 8, !tbaa !431
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !127 ; 7 uses
  %i.db = ptrtoaddr ptr %i.da to i64
  %i.dc = zext i32 %i.ax to i64                   ; 8 uses
  %wide.trip.count = zext i32 %i.az to i64        ; 5 uses
  %i.dd = sub nsw i64 %wide.trip.count, %i.dc     ; 3 uses
  %min.iters.check = icmp ult i64 %i.dd, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.de = xor i64 %i.dc, -1
  %i.df = add nsw i64 %i.de, %wide.trip.count     ; 2 uses
  %i.dg = trunc i64 %i.df to i32
  %i.dh = xor i32 %.05360, -1
  %i.di = icmp ult i32 %i.dh, %i.dg
  %i.dj = icmp ugt i64 %i.df, 4294967295
  %i.dk = or i1 %i.di, %i.dj
  br i1 %i.dk, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.dl = zext i32 %.05360 to i64
  %i.dm = shl nuw nsw i64 %i.dl, 2
  %11 = shl nuw nsw i64 %i.dc, 2
  %12 = add i64 %i.dm, %i.cw
  %i.dn = add i64 %11, %i.db
  %i.do = sub i64 %i.dn, %12
  %diff.check = icmp ugt i64 %i.do, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dd, -8                      ; 4 uses
  %i.dp = add nsw i64 %n.vec, %i.dc
  %i.dq = trunc i64 %n.vec to i32
  %i.dr = add i32 %.05360, %i.dq                  ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.da, i64 %i.dc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ds = trunc i64 %index to i32
  %i.dt = add i32 %.05360, %i.ds
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !58
  %wide.load107 = load <4 x i32>, ptr %i.du, align 4, !tbaa !58
  %i.dv = zext i32 %i.dt to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.dv ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store <4 x i32> %wide.load, ptr %i.dw, align 4, !tbaa !58
  store <4 x i32> %wide.load107, ptr %i.dx, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !2277

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dd, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.dc, %vector.memcheck ], [ %i.dc, %vector.scevcheck ], [ %i.dc, %.lr.ph ], [ %i.dp, %middle.block ] ; 4 uses
  %.158.ph = phi i32 [ %.05360, %vector.memcheck ], [ %.05360, %vector.scevcheck ], [ %.05360, %.lr.ph ], [ %i.dr, %middle.block ] ; 2 uses
  %i.dz = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.dz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.158.prol = phi i32 [ %i.ec, %scalar.ph.prol ], [ %.158.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv.prol
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !58
  %i.ec = add i32 %.158.prol, 1                   ; 3 uses
  %i.ed = zext i32 %.158.prol to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ed
  store i32 %i.eb, ptr %i.ee, align 4, !tbaa !58
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !2278

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa127.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.ec, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.158.unr = phi i32 [ %.158.ph, %scalar.ph.preheader ], [ %i.ec, %scalar.ph.prol ]
  %i.ef = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.eg = icmp ugt i64 %i.ef, -4
  br i1 %i.eg, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit
  %i.eh = phi ptr [ %i.cu, %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit ], [ %i.ct, %middle.block ], [ %i.ct, %scalar.ph ], [ %i.ct, %scalar.ph.prol.loopexit ]
  %.1.lcssa = phi i32 [ %.05360, %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit ], [ %i.dr, %middle.block ], [ %.lcssa127.unr, %scalar.ph.prol.loopexit ], [ %i.fg, %scalar.ph ] ; 3 uses
  %i.ei = sub i32 %.1.lcssa, %.05360
  %indvars.iv.next77 = add nsw i64 %indvars.iv76, 1 ; 3 uses
  %i.ej = load ptr, ptr %i.p, align 8, !tbaa !127
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.next77
  store i32 %i.ei, ptr %i.ek, align 4, !tbaa !58
  %i.el = icmp slt i64 %indvars.iv.next77, %i.ah
  br i1 %i.el, label %bb.e, label %._crit_edge64, !llvm.loop !2279

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.158 = phi i32 [ %i.fg, %scalar.ph ], [ %.158.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv
  %i.en = load i32, ptr %i.em, align 4, !tbaa !58
  %i.eo = add i32 %.158, 1
  %i.ep = zext i32 %.158 to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ep
  store i32 %i.en, ptr %i.eq, align 4, !tbaa !58
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = load i32, ptr %i.es, align 4, !tbaa !58
  %i.eu = add i32 %.158, 2
  %i.ev = zext i32 %i.eo to i64
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ev
  store i32 %i.et, ptr %i.ew, align 4, !tbaa !58
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !58
  %i.fa = add i32 %.158, 3
  %i.fb = zext i32 %i.eu to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.fb
  store i32 %i.ez, ptr %i.fc, align 4, !tbaa !58
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %indvars.iv
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !58
  %i.fg = add i32 %.158, 4                        ; 2 uses
  %i.fh = zext i32 %i.fa to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.fh
  store i32 %i.ff, ptr %i.fi, align 4, !tbaa !58
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !2280

._crit_edge69.loopexit:                           ; preds = %._crit_edge64
  %.pre83 = load i32, ptr %i.b, align 4, !tbaa !58
  br label %._crit_edge69

._crit_edge69:                                    ; preds = %._crit_edge69.loopexit, %.preheader
  %i.fj = phi i32 [ %i.r, %.preheader ], [ %.pre83, %._crit_edge69.loopexit ]
  %.lcssa = phi i32 [ %i.q, %.preheader ], [ %i.ak, %._crit_edge69.loopexit ]
  %i.fk = load i32, ptr %i.d, align 4, !tbaa !58  ; 2 uses
  %i.fl = add nsw i32 %i.fk, %i.fj                ; 3 uses
  store i32 %i.fl, ptr %i.b, align 4, !tbaa !58
  %i.fm = add nsw i32 %i.fk, %.lcssa
  %i.fn = call i32 @llvm.smin.i32(i32 %i.fm, i32 %i.g) ; 3 uses
  store i32 %i.fn, ptr %i.c, align 4, !tbaa !58
  %.not = icmp sgt i32 %i.fl, %i.fn
  br i1 %.not, label %._crit_edge72, label %.preheader

._crit_edge72:                                    ; preds = %._crit_edge69, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge72, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM17MultiValSparseBinIjjE9MergeDataEPKj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::vector.120", align 8   ; 9 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %1, ptr %i.b, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 28, ptr %i.a, align 8, !tbaa !91
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !276
  %i.f = load i64, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.e, ptr noundef nonnull align 1 dereferenceable(28) @.str.21, i64 28, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !277
  %i.h = load ptr, ptr %2, align 8, !tbaa !276
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  store i8 0, ptr %i.i, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.j = load ptr, ptr %2, align 8, !tbaa !276    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc.i
  %i.l = load i64, ptr %i.d, align 8, !tbaa !57
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !393  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !127  ; 2 uses
  %.pre = load i32, ptr %i.r, align 4, !tbaa !58
  br label %bb.a

._crit_edge:                                      ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.lcssa = phi i32 [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ae, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !382  ; 2 uses
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !383  ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 24                  ; 2 uses
  %.not = icmp eq ptr %i.u, %i.v
  br i1 %.not, label %bb.i, label %bb.b

bb.a:                                             ; preds = %.lr.ph, %bb.a
  %i.aa = phi i32 [ %.pre, %.lr.ph ], [ %i.ad, %bb.a ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.a ]
end_hunk_5
begin_hunk_6_@_ZN8LightGBM17MultiValSparseBinImtE9CopyInnerILb1ELb0EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIjSaIjEESC_SC_.omp_outlined:bb.a
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %i.av ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !91 ; 9 uses
  %i.az = getelementptr i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !91 ; 5 uses
  %i.bb = sub i64 %i.ba, %i.ay                    ; 9 uses
  %i.bc = add i64 %i.bb, %.05362
  %i.bd = ptrtoint ptr %i.ap to i64               ; 3 uses
  %i.be = ptrtoint ptr %i.ao to i64               ; 3 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = ashr exact i64 %i.bf, 1                 ; 8 uses
  %i.bh = icmp ugt i64 %i.bc, %i.bg
  br i1 %i.bh, label %bb.f, label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.bi = mul i64 %i.bb, 50
  %i.bj = add i64 %i.bi, %.05362                  ; 4 uses
  %i.bk = icmp ugt i64 %i.bj, %i.bg
  br i1 %i.bk, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.bl = sub nuw i64 %i.bj, %i.bg                ; 6 uses
  %i.bm = load ptr, ptr %i.ag, align 8, !tbaa !195
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.bd
  %i.bp = ashr exact i64 %i.bo, 1                 ; 2 uses
  %i.bq = icmp ult i64 %i.bg, 4611686018427387904
  call void @llvm.assume(i1 %i.bq)
  %i.br = xor i64 %i.bg, 4611686018427387903      ; 2 uses
  %i.bs = icmp ule i64 %i.bp, %i.br
  call void @llvm.assume(i1 %i.bs)
  %.not37.i = icmp ult i64 %i.bp, %i.bl
  br i1 %.not37.i, label %bb.h, label %_ZSt27__uninitialized_default_n_aIPtmN8LightGBM6Common18AlignmentAllocatorItLm32EEEET_S5_T0_RT1_.exit.i

_ZSt27__uninitialized_default_n_aIPtmN8LightGBM6Common18AlignmentAllocatorItLm32EEEET_S5_T0_RT1_.exit.i: ; preds = %bb.g
  %i.bt = shl nuw nsw i64 %i.bl, 1                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %i.ap, i8 0, i64 %i.bt, i1 false), !tbaa !89
  %scevgep.i.i = getelementptr i8, ptr %i.ap, i64 %i.bt ; 2 uses
  store ptr %scevgep.i.i, ptr %i.af, align 8, !tbaa !117
  br label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.bu = icmp ult i64 %i.br, %i.bl
  br i1 %i.bu, label %bb.i, label %_ZNKSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE12_M_check_lenEmPKc.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #40
          to label %.noexc56 unwind label %bb.o

.noexc56:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE12_M_check_lenEmPKc.exit.i: ; preds = %bb.h
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bg, i64 %i.bl)
  %i.bv = add nuw nsw i64 %.sroa.speculated.i.i, %i.bg
  %i.bw = call i64 @llvm.umin.i64(i64 %i.bv, i64 4611686018427387903) ; 2 uses
  %i.bx = shl nuw nsw i64 %i.bw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.by = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.bx) #19
  %.not.i.i.i.i.i = icmp eq i32 %i.by, 0
  %i.bz = load ptr, ptr %i.a, align 8             ; 2 uses
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.bz, ptr null ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 %i.bf ; 2 uses
  %i.cb = shl nuw nsw i64 %i.bl, 1
  call void @llvm.memset.p0.i64(ptr align 2 %i.ca, i8 0, i64 %i.cb, i1 false), !tbaa !89
  %.not13.i.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not13.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_N8LightGBM6Common18AlignmentAllocatorItLm32EEEET0_T_S6_S5_RT1_.exit.i, label %iter.check131

iter.check131:                                    ; preds = %_ZNKSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE12_M_check_lenEmPKc.exit.i
  %.0.i.i.i.i.i116 = ptrtoaddr ptr %.0.i.i.i.i.i to i64
  %i.cc = add i64 %i.bd, -2
  %i.cd = sub i64 %i.cc, %i.be                    ; 3 uses
  %i.ce = lshr i64 %i.cd, 1
  %i.cf = add nuw i64 %i.ce, 1                    ; 5 uses
  %min.iters.check118 = icmp ult i64 %i.cd, 6
  %i.cg = sub i64 %i.be, %.0.i.i.i.i.i116
  %diff.check117 = icmp ugt i64 %i.cg, -32
  %or.cond = select i1 %min.iters.check118, i1 true, i1 %diff.check117
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check119

vector.main.loop.iter.check119:                   ; preds = %iter.check131
  %min.iters.check120 = icmp ult i64 %i.cd, 30
  br i1 %min.iters.check120, label %vec.epilog.ph135, label %vector.ph121

vector.ph121:                                     ; preds = %vector.main.loop.iter.check119
  %i.ch = and i64 %i.cf, 12
  %n.vec122 = and i64 %i.cf, -16                  ; 4 uses
  %i.ci = shl i64 %n.vec122, 1                    ; 2 uses
  %i.cj = getelementptr i8, ptr %.0.i.i.i.i.i, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.ao, i64 %i.ci
  br label %vector.body123

vector.body123:                                   ; preds = %vector.ph121, %vector.body123
  %index124 = phi i64 [ 0, %vector.ph121 ], [ %index.next128, %vector.body123 ] ; 2 uses
  %i.cl = shl i64 %index124, 1                    ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.i.i.i.i.i, i64 %i.cl ; 2 uses
  %next.gep125 = getelementptr i8, ptr %i.ao, i64 %i.cl ; 2 uses
  %i.cm = getelementptr i8, ptr %next.gep125, i64 16
  %wide.load126 = load <8 x i16>, ptr %next.gep125, align 2, !tbaa !89
  %wide.load127 = load <8 x i16>, ptr %i.cm, align 2, !tbaa !89
  %i.cn = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %wide.load126, ptr %next.gep, align 2, !tbaa !89
  store <8 x i16> %wide.load127, ptr %i.cn, align 2, !tbaa !89
  %index.next128 = add nuw i64 %index124, 16      ; 2 uses
  %i.co = icmp eq i64 %index.next128, %n.vec122
  br i1 %i.co, label %middle.block129, label %vector.body123, !llvm.loop !2451

middle.block129:                                  ; preds = %vector.body123
  %cmp.n130 = icmp eq i64 %i.cf, %n.vec122
  br i1 %cmp.n130, label %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_N8LightGBM6Common18AlignmentAllocatorItLm32EEEET0_T_S6_S5_RT1_.exit.i, label %vec.epilog.iter.check132

vec.epilog.iter.check132:                         ; preds = %middle.block129
  %min.epilog.iters.check134 = icmp eq i64 %i.ch, 0
  br i1 %min.epilog.iters.check134, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph135, !prof !125

vec.epilog.ph135:                                 ; preds = %vector.main.loop.iter.check119, %vec.epilog.iter.check132
  %vec.epilog.resume.val136 = phi i64 [ %n.vec122, %vec.epilog.iter.check132 ], [ 0, %vector.main.loop.iter.check119 ]
  %n.vec137 = and i64 %i.cf, -4                   ; 3 uses
  %i.cp = shl i64 %n.vec137, 1                    ; 2 uses
  %i.cq = getelementptr i8, ptr %.0.i.i.i.i.i, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.ao, i64 %i.cp
  br label %vec.epilog.vector.body138

vec.epilog.vector.body138:                        ; preds = %vec.epilog.vector.body138, %vec.epilog.ph135
  %index139 = phi i64 [ %vec.epilog.resume.val136, %vec.epilog.ph135 ], [ %index.next143, %vec.epilog.vector.body138 ] ; 2 uses
  %i.cs = shl i64 %index139, 1                    ; 2 uses
  %next.gep140 = getelementptr i8, ptr %i.bz, i64 %i.cs
  %next.gep141 = getelementptr i8, ptr %i.ao, i64 %i.cs
  %wide.load142 = load <4 x i16>, ptr %next.gep141, align 2, !tbaa !89
  store <4 x i16> %wide.load142, ptr %next.gep140, align 2, !tbaa !89
  %index.next143 = add nuw i64 %index139, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next143, %n.vec137
  br i1 %i.ct, label %vec.epilog.middle.block144, label %vec.epilog.vector.body138, !llvm.loop !2452

vec.epilog.middle.block144:                       ; preds = %vec.epilog.vector.body138
  %cmp.n145 = icmp eq i64 %i.cf, %n.vec137
  br i1 %cmp.n145, label %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_N8LightGBM6Common18AlignmentAllocatorItLm32EEEET0_T_S6_S5_RT1_.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check131, %vec.epilog.iter.check132, %vec.epilog.middle.block144
  %.015.i.i.i.ph = phi ptr [ %.0.i.i.i.i.i, %iter.check131 ], [ %i.cj, %vec.epilog.iter.check132 ], [ %i.cq, %vec.epilog.middle.block144 ]
  %.sroa.010.014.i.i.i.ph = phi ptr [ %i.ao, %iter.check131 ], [ %i.ck, %vec.epilog.iter.check132 ], [ %i.cr, %vec.epilog.middle.block144 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.015.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i ], [ %.015.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.sroa.010.014.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i ], [ %.sroa.010.014.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.cu = load i16, ptr %.sroa.010.014.i.i.i, align 2, !tbaa !89
  store i16 %i.cu, ptr %.015.i.i.i, align 2, !tbaa !89
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i, i64 2 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 2
  %.not.i.i.i = icmp eq ptr %i.cv, %i.ap
  br i1 %.not.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_N8LightGBM6Common18AlignmentAllocatorItLm32EEEET0_T_S6_S5_RT1_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2453

_ZSt34__uninitialized_move_if_noexcept_aIPtS0_N8LightGBM6Common18AlignmentAllocatorItLm32EEEET0_T_S6_S5_RT1_.exit.i: ; preds = %.lr.ph.i.i.i, %middle.block129, %vec.epilog.middle.block144, %_ZNKSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE12_M_check_lenEmPKc.exit.i
  %.not.i45.i = icmp eq ptr %i.ao, null
  br i1 %.not.i45.i, label %_ZNSt12_Vector_baseItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE13_M_deallocateEPtm.exit46.i, label %bb.j

bb.j:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_N8LightGBM6Common18AlignmentAllocatorItLm32EEEET0_T_S6_S5_RT1_.exit.i
  call void @free(ptr noundef nonnull %i.ao) #19
  br label %_ZNSt12_Vector_baseItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE13_M_deallocateEPtm.exit46.i

_ZNSt12_Vector_baseItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE13_M_deallocateEPtm.exit46.i: ; preds = %bb.j, %_ZSt34__uninitialized_move_if_noexcept_aIPtS0_N8LightGBM6Common18AlignmentAllocatorItLm32EEEET0_T_S6_S5_RT1_.exit.i
  store ptr %.0.i.i.i.i.i, ptr %i.ad, align 8, !tbaa !111
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.bl ; 2 uses
  store ptr %i.cx, ptr %i.af, align 8, !tbaa !117
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i.i.i.i, i64 %i.bw
  store ptr %i.cy, ptr %i.ag, align 8, !tbaa !195
  br label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit

bb.k:                                             ; preds = %bb.f
  %i.cz = icmp ult i64 %i.bj, %i.bg
  br i1 %i.cz, label %bb.l, label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit

bb.l:                                             ; preds = %bb.k
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.bj ; 3 uses
  %.not.i.i = icmp eq ptr %i.ap, %i.da
  br i1 %.not.i.i, label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.da, ptr %i.af, align 8, !tbaa !117
  br label %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit

_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit: ; preds = %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE13_M_deallocateEPtm.exit46.i, %_ZSt27__uninitialized_default_n_aIPtmN8LightGBM6Common18AlignmentAllocatorItLm32EEEET_S5_T0_RT1_.exit.i, %bb.e
  %i.db = phi ptr [ %i.an, %bb.m ], [ %i.an, %bb.l ], [ %i.an, %bb.k ], [ %.0.i.i.i.i.i, %_ZNSt12_Vector_baseItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE13_M_deallocateEPtm.exit46.i ], [ %i.an, %_ZSt27__uninitialized_default_n_aIPtmN8LightGBM6Common18AlignmentAllocatorItLm32EEEET_S5_T0_RT1_.exit.i ], [ %i.an, %bb.e ] ; 13 uses
  %i.dc = phi ptr [ %i.ao, %bb.m ], [ %i.ao, %bb.l ], [ %i.ao, %bb.k ], [ %.0.i.i.i.i.i, %_ZNSt12_Vector_baseItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE13_M_deallocateEPtm.exit46.i ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPtmN8LightGBM6Common18AlignmentAllocatorItLm32EEEET_S5_T0_RT1_.exit.i ], [ %i.ao, %bb.e ]
  %i.dd = phi ptr [ %i.da, %bb.m ], [ %i.ap, %bb.l ], [ %i.ap, %bb.k ], [ %i.cx, %_ZNSt12_Vector_baseItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE13_M_deallocateEPtm.exit46.i ], [ %scevgep.i.i, %_ZSt27__uninitialized_default_n_aIPtmN8LightGBM6Common18AlignmentAllocatorItLm32EEEET_S5_T0_RT1_.exit.i ], [ %i.ap, %bb.e ]
  %i.de = ptrtoaddr ptr %i.db to i64
  %i.df = icmp ult i64 %i.ay, %i.ba
  br i1 %i.df, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit
  %i.dg = load ptr, ptr %5, align 8, !tbaa !438
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !111 ; 8 uses
  %min.iters.check = icmp ult i64 %i.bb, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.dj = ptrtoaddr ptr %i.di to i64
  %i.dk = shl i64 %.05362, 1
  %11 = shl i64 %i.ay, 1
  %12 = add i64 %i.dk, %i.de
  %i.dl = add i64 %11, %i.dj
  %i.dm = sub i64 %i.dl, %12
  %diff.check = icmp ugt i64 %i.dm, -32
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check107 = icmp ult i64 %i.bb, 16
  br i1 %min.iters.check107, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dn = and i64 %i.bb, 12
  %n.vec = and i64 %i.bb, -16                     ; 5 uses
  %i.do = add i64 %i.ay, %n.vec
  %i.dp = add i64 %.05362, %n.vec                 ; 2 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.ay
  %i.dr = getelementptr [2 x i8], ptr %i.db, i64 %.05362
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %index ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %wide.load = load <8 x i16>, ptr %i.ds, align 2, !tbaa !89
  %wide.load108 = load <8 x i16>, ptr %i.dt, align 2, !tbaa !89
  %i.du = getelementptr [2 x i8], ptr %i.dr, i64 %index ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store <8 x i16> %wide.load, ptr %i.du, align 2, !tbaa !89
  store <8 x i16> %wide.load108, ptr %i.dv, align 2, !tbaa !89
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !2454

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dn, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !125

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec109 = and i64 %i.bb, -4                   ; 4 uses
  %i.dx = add i64 %i.ay, %n.vec109
  %i.dy = add i64 %.05362, %n.vec109              ; 2 uses
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.ay
  %i.ea = getelementptr [2 x i8], ptr %i.db, i64 %.05362
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index110 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next112, %vec.epilog.vector.body ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.dz, i64 %index110
  %wide.load111 = load <4 x i16>, ptr %i.eb, align 2, !tbaa !89
  %i.ec = getelementptr [2 x i8], ptr %i.ea, i64 %index110
  store <4 x i16> %wide.load111, ptr %i.ec, align 2, !tbaa !89
  %index.next112 = add nuw i64 %index110, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next112, %n.vec109
  br i1 %i.ed, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !2455

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n113 = icmp eq i64 %i.bb, %n.vec109
  br i1 %cmp.n113, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05161.ph = phi i64 [ %i.ay, %iter.check ], [ %i.ay, %vector.memcheck ], [ %i.do, %vec.epilog.iter.check ], [ %i.dx, %vec.epilog.middle.block ] ; 4 uses
  %.160.ph = phi i64 [ %.05362, %iter.check ], [ %.05362, %vector.memcheck ], [ %i.dp, %vec.epilog.iter.check ], [ %i.dy, %vec.epilog.middle.block ] ; 2 uses
  %i.ee = sub i64 %i.ba, %.05161.ph
  %xtraiter = and i64 %i.ee, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.05161.prol = phi i64 [ %i.ej, %vec.epilog.scalar.ph.prol ], [ %.05161.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.160.prol = phi i64 [ %i.eh, %vec.epilog.scalar.ph.prol ], [ %.160.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %.05161.prol
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !89
  %i.eh = add i64 %.160.prol, 1                   ; 3 uses
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %.160.prol
  store i16 %i.eg, ptr %i.ei, align 2, !tbaa !89
  %i.ej = add nuw i64 %.05161.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !2456

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa148.unr = phi i64 [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.eh, %vec.epilog.scalar.ph.prol ]
  %.05161.unr = phi i64 [ %.05161.ph, %vec.epilog.scalar.ph.preheader ], [ %i.ej, %vec.epilog.scalar.ph.prol ]
  %.160.unr = phi i64 [ %.160.ph, %vec.epilog.scalar.ph.preheader ], [ %i.eh, %vec.epilog.scalar.ph.prol ]
  %i.ek = sub i64 %.05161.ph, %i.ba
  %i.el = icmp ugt i64 %i.ek, -4
  br i1 %i.el, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit
  %i.em = phi ptr [ %i.dc, %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit ], [ %i.db, %middle.block ], [ %i.db, %vec.epilog.middle.block ], [ %i.db, %vec.epilog.scalar.ph ], [ %i.db, %vec.epilog.scalar.ph.prol.loopexit ]
  %.1.lcssa = phi i64 [ %.05362, %_ZNSt6vectorItN8LightGBM6Common18AlignmentAllocatorItLm32EEEE6resizeEm.exit ], [ %i.dp, %middle.block ], [ %i.dy, %vec.epilog.middle.block ], [ %.lcssa148.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.fh, %vec.epilog.scalar.ph ] ; 3 uses
  %i.en = sub i64 %.1.lcssa, %.05362
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.eo = load ptr, ptr %i.p, align 8, !tbaa !407
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.next
  store i64 %i.en, ptr %i.ep, align 8, !tbaa !91
  %i.eq = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.eq, label %bb.e, label %._crit_edge66.loopexit, !llvm.loop !2457

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.05161 = phi i64 [ %i.fk, %vec.epilog.scalar.ph ], [ %.05161.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.160 = phi i64 [ %i.fh, %vec.epilog.scalar.ph ], [ %.160.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %.05161
  %i.es = load i16, ptr %i.er, align 2, !tbaa !89
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %.160
  store i16 %i.es, ptr %i.et, align 2, !tbaa !89
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %.05161
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 2
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !89
  %i.ex = getelementptr [2 x i8], ptr %i.db, i64 %.160
  %i.ey = getelementptr i8, ptr %i.ex, i64 2
  store i16 %i.ew, ptr %i.ey, align 2, !tbaa !89
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %.05161
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !89
  %i.fc = getelementptr [2 x i8], ptr %i.db, i64 %.160
  %i.fd = getelementptr i8, ptr %i.fc, i64 4
  store i16 %i.fb, ptr %i.fd, align 2, !tbaa !89
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %.05161
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 6
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !89
  %i.fh = add i64 %.160, 4                        ; 2 uses
  %i.fi = getelementptr [2 x i8], ptr %i.db, i64 %.160
  %i.fj = getelementptr i8, ptr %i.fi, i64 6
  store i16 %i.fg, ptr %i.fj, align 2, !tbaa !89
  %i.fk = add nuw i64 %.05161, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.fk, %i.ba
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !2458

._crit_edge71.loopexit:                           ; preds = %._crit_edge66
  %.pre84 = load i32, ptr %i.b, align 4, !tbaa !58
  br label %._crit_edge71

._crit_edge71:                                    ; preds = %._crit_edge71.loopexit, %.preheader
  %i.fl = phi i32 [ %i.r, %.preheader ], [ %.pre84, %._crit_edge71.loopexit ]
  %.lcssa = phi i32 [ %i.q, %.preheader ], [ %i.aj, %._crit_edge71.loopexit ]
  %i.fm = load i32, ptr %i.d, align 4, !tbaa !58  ; 2 uses
  %i.fn = add nsw i32 %i.fm, %i.fl                ; 3 uses
  store i32 %i.fn, ptr %i.b, align 4, !tbaa !58
  %i.fo = add nsw i32 %i.fm, %.lcssa
  %i.fp = call i32 @llvm.smin.i32(i32 %i.fo, i32 %i.g) ; 3 uses
  store i32 %i.fp, ptr %i.c, align 4, !tbaa !58
  %.not = icmp sgt i32 %i.fn, %i.fp
  br i1 %.not, label %._crit_edge74, label %.preheader

._crit_edge74:                                    ; preds = %._crit_edge71, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge74, %bb.a
  ret void

bb.o:                                             ; preds = %bb.i
  %i.fq = landingpad { ptr, i32 }
          catch ptr null
  %i.fr = extractvalue { ptr, i32 } %i.fq, 0
  call void @__clang_call_terminate(ptr %i.fr) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM17MultiValSparseBinImtE9MergeDataEPKm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::vector.180", align 8   ; 9 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %1, ptr %i.b, align 8, !tbaa !436
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 28, ptr %i.a, align 8, !tbaa !91
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !276
  %i.f = load i64, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.e, ptr noundef nonnull align 1 dereferenceable(28) @.str.21, i64 28, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !277
  %i.h = load ptr, ptr %2, align 8, !tbaa !276
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  store i8 0, ptr %i.i, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.j = load ptr, ptr %2, align 8, !tbaa !276    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc.i
  %i.l = load i64, ptr %i.d, align 8, !tbaa !57
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #38
end_hunk_6
begin_hunk_7_@_ZN8LightGBM17MultiValSparseBinImjE9CopyInnerILb1ELb0EEEvPKNS_11MultiValBinEPKiiRKSt6vectorIjSaIjEESC_SC_.omp_outlined:bb.a
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !132
  %.pre82 = load ptr, ptr %i.ad, align 8, !tbaa !127 ; 2 uses
  br label %bb.e

._crit_edge66.loopexit:                           ; preds = %._crit_edge
  %.pre83 = load i32, ptr %i.c, align 4, !tbaa !58
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %._crit_edge66.loopexit, %bb.d
  %i.aj = phi i32 [ %i.t, %bb.d ], [ %.pre83, %._crit_edge66.loopexit ] ; 3 uses
  %.053.lcssa = phi i64 [ 0, %bb.d ], [ %.1.lcssa, %._crit_edge66.loopexit ]
  %i.ak = load ptr, ptr %10, align 8, !tbaa !331
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv79
  store i64 %.053.lcssa, ptr %i.al, align 8, !tbaa !91
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, 1
  %i.am = sext i32 %i.aj to i64
  %.not55.not = icmp slt i64 %indvars.iv79, %i.am
  br i1 %.not55.not, label %.lr.ph70, label %._crit_edge71.loopexit

bb.e:                                             ; preds = %.lr.ph65, %._crit_edge
  %i.an = phi ptr [ %.pre82, %.lr.ph65 ], [ %i.cv, %._crit_edge ] ; 5 uses
  %i.ao = phi ptr [ %.pre82, %.lr.ph65 ], [ %i.dy, %._crit_edge ] ; 13 uses
  %i.ap = phi ptr [ %.pre, %.lr.ph65 ], [ %i.cx, %._crit_edge ] ; 9 uses
  %indvars.iv = phi i64 [ %i.ah, %.lr.ph65 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.05362 = phi i64 [ 0, %.lr.ph65 ], [ %.1.lcssa, %._crit_edge ] ; 9 uses
  %i.aq = load ptr, ptr %5, align 8, !tbaa !440
  %i.ar = load ptr, ptr %6, align 8, !tbaa !71
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !58
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.av = sext i32 %i.at to i64
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !407
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %i.av ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !91 ; 7 uses
  %i.az = getelementptr i8, ptr %i.ax, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !91 ; 5 uses
  %i.bb = sub i64 %i.ba, %i.ay                    ; 5 uses
  %i.bc = add i64 %i.bb, %.05362
  %i.bd = ptrtoint ptr %i.ap to i64               ; 3 uses
  %i.be = ptrtoint ptr %i.ao to i64               ; 3 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 2 uses
  %i.bg = ashr exact i64 %i.bf, 2                 ; 8 uses
  %i.bh = icmp ugt i64 %i.bc, %i.bg
  br i1 %i.bh, label %bb.f, label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.bi = mul i64 %i.bb, 50
  %i.bj = add i64 %i.bi, %.05362                  ; 4 uses
  %i.bk = icmp ugt i64 %i.bj, %i.bg
  br i1 %i.bk, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.bl = sub nuw i64 %i.bj, %i.bg                ; 6 uses
  %i.bm = load ptr, ptr %i.ag, align 8, !tbaa !223
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = sub i64 %i.bn, %i.bd
  %i.bp = ashr exact i64 %i.bo, 2                 ; 2 uses
  %i.bq = icmp ult i64 %i.bg, 2305843009213693952
  call void @llvm.assume(i1 %i.bq)
  %i.br = xor i64 %i.bg, 2305843009213693951      ; 2 uses
  %i.bs = icmp ule i64 %i.bp, %i.br
  call void @llvm.assume(i1 %i.bs)
  %.not37.i = icmp ult i64 %i.bp, %i.bl
  br i1 %.not37.i, label %bb.h, label %_ZSt27__uninitialized_default_n_aIPjmN8LightGBM6Common18AlignmentAllocatorIjLm32EEEET_S5_T0_RT1_.exit.i

_ZSt27__uninitialized_default_n_aIPjmN8LightGBM6Common18AlignmentAllocatorIjLm32EEEET_S5_T0_RT1_.exit.i: ; preds = %bb.g
  %i.bt = shl nuw nsw i64 %i.bl, 2                ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.ap, i8 0, i64 %i.bt, i1 false), !tbaa !58
  %scevgep.i.i = getelementptr i8, ptr %i.ap, i64 %i.bt ; 2 uses
  store ptr %scevgep.i.i, ptr %i.af, align 8, !tbaa !132
  br label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit

bb.h:                                             ; preds = %bb.g
  %i.bu = icmp ult i64 %i.br, %i.bl
  br i1 %i.bu, label %bb.i, label %_ZNKSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE12_M_check_lenEmPKc.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #40
          to label %.noexc56 unwind label %bb.o

.noexc56:                                         ; preds = %bb.i
  unreachable

_ZNKSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE12_M_check_lenEmPKc.exit.i: ; preds = %bb.h
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.bg, i64 %i.bl)
  %i.bv = add nuw nsw i64 %.sroa.speculated.i.i, %i.bg
  %i.bw = call i64 @llvm.umin.i64(i64 %i.bv, i64 2305843009213693951) ; 2 uses
  %i.bx = shl nuw nsw i64 %i.bw, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.by = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef %i.bx) #19
  %.not.i.i.i.i.i = icmp eq i32 %i.by, 0
  %i.bz = load ptr, ptr %i.a, align 8
  %.0.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr %i.bz, ptr null ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 %i.bf ; 2 uses
  %i.cb = shl nuw nsw i64 %i.bl, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ca, i8 0, i64 %i.cb, i1 false), !tbaa !58
  %.not13.i.i.i = icmp eq ptr %i.ao, %i.ap
  br i1 %.not13.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N8LightGBM6Common18AlignmentAllocatorIjLm32EEEET0_T_S6_S5_RT1_.exit.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE12_M_check_lenEmPKc.exit.i
  %.0.i.i.i.i.i110 = ptrtoaddr ptr %.0.i.i.i.i.i to i64
  %i.cc = add i64 %i.bd, -4
  %i.cd = sub i64 %i.cc, %i.be                    ; 2 uses
  %i.ce = lshr i64 %i.cd, 2
  %i.cf = add nuw nsw i64 %i.ce, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.cd, 28
  %i.cg = sub i64 %i.be, %.0.i.i.i.i.i110
  %diff.check111 = icmp ugt i64 %i.cg, -32
  %or.cond = select i1 %min.iters.check113, i1 true, i1 %diff.check111
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader126, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i.preheader
  %n.vec115 = and i64 %i.cf, 9223372036854775800  ; 3 uses
  %i.ch = shl i64 %n.vec115, 2                    ; 2 uses
  %i.ci = getelementptr i8, ptr %.0.i.i.i.i.i, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ao, i64 %i.ch
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph114
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body116 ] ; 2 uses
  %i.ck = shl i64 %index117, 2                    ; 2 uses
  %next.gep = getelementptr i8, ptr %.0.i.i.i.i.i, i64 %i.ck ; 2 uses
  %next.gep118 = getelementptr i8, ptr %i.ao, i64 %i.ck ; 2 uses
  %i.cl = getelementptr i8, ptr %next.gep118, i64 16
  %wide.load119 = load <4 x i32>, ptr %next.gep118, align 4, !tbaa !58
  %wide.load120 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !58
  %i.cm = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load119, ptr %next.gep, align 4, !tbaa !58
  store <4 x i32> %wide.load120, ptr %i.cm, align 4, !tbaa !58
  %index.next121 = add nuw i64 %index117, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.cn, label %middle.block122, label %vector.body116, !llvm.loop !2538

middle.block122:                                  ; preds = %vector.body116
  %cmp.n123 = icmp eq i64 %i.cf, %n.vec115
  br i1 %cmp.n123, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N8LightGBM6Common18AlignmentAllocatorIjLm32EEEET0_T_S6_S5_RT1_.exit.i, label %.lr.ph.i.i.i.preheader126

.lr.ph.i.i.i.preheader126:                        ; preds = %.lr.ph.i.i.i.preheader, %middle.block122
  %.015.i.i.i.ph = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.preheader ], [ %i.ci, %middle.block122 ]
  %.sroa.010.014.i.i.i.ph = phi ptr [ %i.ao, %.lr.ph.i.i.i.preheader ], [ %i.cj, %middle.block122 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader126, %.lr.ph.i.i.i
  %.015.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i ], [ %.015.i.i.i.ph, %.lr.ph.i.i.i.preheader126 ] ; 2 uses
  %.sroa.010.014.i.i.i = phi ptr [ %i.cp, %.lr.ph.i.i.i ], [ %.sroa.010.014.i.i.i.ph, %.lr.ph.i.i.i.preheader126 ] ; 2 uses
  %i.co = load i32, ptr %.sroa.010.014.i.i.i, align 4, !tbaa !58
  store i32 %i.co, ptr %.015.i.i.i, align 4, !tbaa !58
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i.i, i64 4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.cp, %i.ap
  br i1 %.not.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N8LightGBM6Common18AlignmentAllocatorIjLm32EEEET0_T_S6_S5_RT1_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2539

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N8LightGBM6Common18AlignmentAllocatorIjLm32EEEET0_T_S6_S5_RT1_.exit.i: ; preds = %.lr.ph.i.i.i, %middle.block122, %_ZNKSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE12_M_check_lenEmPKc.exit.i
  %.not.i45.i = icmp eq ptr %i.ao, null
  br i1 %.not.i45.i, label %_ZNSt12_Vector_baseIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13_M_deallocateEPjm.exit46.i, label %bb.j

bb.j:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N8LightGBM6Common18AlignmentAllocatorIjLm32EEEET0_T_S6_S5_RT1_.exit.i
  call void @free(ptr noundef nonnull %i.ao) #19
  br label %_ZNSt12_Vector_baseIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13_M_deallocateEPjm.exit46.i

_ZNSt12_Vector_baseIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13_M_deallocateEPjm.exit46.i: ; preds = %bb.j, %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_N8LightGBM6Common18AlignmentAllocatorIjLm32EEEET0_T_S6_S5_RT1_.exit.i
  store ptr %.0.i.i.i.i.i, ptr %i.ad, align 8, !tbaa !127
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.bl ; 2 uses
  store ptr %i.cr, ptr %i.af, align 8, !tbaa !132
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i.i, i64 %i.bw
  store ptr %i.cs, ptr %i.ag, align 8, !tbaa !223
  br label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit

bb.k:                                             ; preds = %bb.f
  %i.ct = icmp ult i64 %i.bj, %i.bg
  br i1 %i.ct, label %bb.l, label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit

bb.l:                                             ; preds = %bb.k
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.bj ; 3 uses
  %.not.i.i = icmp eq ptr %i.ap, %i.cu
  br i1 %.not.i.i, label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.cu, ptr %i.af, align 8, !tbaa !132
  br label %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit

_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit: ; preds = %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13_M_deallocateEPjm.exit46.i, %_ZSt27__uninitialized_default_n_aIPjmN8LightGBM6Common18AlignmentAllocatorIjLm32EEEET_S5_T0_RT1_.exit.i, %bb.e
  %i.cv = phi ptr [ %i.an, %bb.m ], [ %i.an, %bb.l ], [ %i.an, %bb.k ], [ %.0.i.i.i.i.i, %_ZNSt12_Vector_baseIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13_M_deallocateEPjm.exit46.i ], [ %i.an, %_ZSt27__uninitialized_default_n_aIPjmN8LightGBM6Common18AlignmentAllocatorIjLm32EEEET_S5_T0_RT1_.exit.i ], [ %i.an, %bb.e ] ; 11 uses
  %i.cw = phi ptr [ %i.ao, %bb.m ], [ %i.ao, %bb.l ], [ %i.ao, %bb.k ], [ %.0.i.i.i.i.i, %_ZNSt12_Vector_baseIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13_M_deallocateEPjm.exit46.i ], [ %i.ao, %_ZSt27__uninitialized_default_n_aIPjmN8LightGBM6Common18AlignmentAllocatorIjLm32EEEET_S5_T0_RT1_.exit.i ], [ %i.ao, %bb.e ]
  %i.cx = phi ptr [ %i.cu, %bb.m ], [ %i.ap, %bb.l ], [ %i.ap, %bb.k ], [ %i.cr, %_ZNSt12_Vector_baseIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE13_M_deallocateEPjm.exit46.i ], [ %scevgep.i.i, %_ZSt27__uninitialized_default_n_aIPjmN8LightGBM6Common18AlignmentAllocatorIjLm32EEEET_S5_T0_RT1_.exit.i ], [ %i.ap, %bb.e ]
  %i.cy = ptrtoaddr ptr %i.cv to i64
  %i.cz = icmp ult i64 %i.ay, %i.ba
  br i1 %i.cz, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit
  %i.da = load ptr, ptr %5, align 8, !tbaa !440
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !127 ; 7 uses
  %min.iters.check = icmp ult i64 %i.bb, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.dd = ptrtoaddr ptr %i.dc to i64
  %i.de = shl i64 %.05362, 2
  %11 = shl i64 %i.ay, 2
  %12 = add i64 %i.de, %i.cy
  %i.df = add i64 %11, %i.dd
  %i.dg = sub i64 %i.df, %12
  %diff.check = icmp ugt i64 %i.dg, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bb, -8                      ; 4 uses
  %i.dh = add i64 %i.ay, %n.vec
  %i.di = add i64 %.05362, %n.vec                 ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.ay
  %i.dk = getelementptr [4 x i8], ptr %i.cv, i64 %.05362
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load = load <4 x i32>, ptr %i.dl, align 4, !tbaa !58
  %wide.load107 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !58
  %i.dn = getelementptr [4 x i8], ptr %i.dk, i64 %index ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  store <4 x i32> %wide.load, ptr %i.dn, align 4, !tbaa !58
  store <4 x i32> %wide.load107, ptr %i.do, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !2540

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bb, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %.05161.ph = phi i64 [ %i.ay, %vector.memcheck ], [ %i.ay, %.lr.ph ], [ %i.dh, %middle.block ] ; 4 uses
  %.160.ph = phi i64 [ %.05362, %vector.memcheck ], [ %.05362, %.lr.ph ], [ %i.di, %middle.block ] ; 2 uses
  %i.dq = sub i64 %i.ba, %.05161.ph
  %xtraiter = and i64 %i.dq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.05161.prol = phi i64 [ %i.dv, %scalar.ph.prol ], [ %.05161.ph, %scalar.ph.preheader ] ; 2 uses
  %.160.prol = phi i64 [ %i.dt, %scalar.ph.prol ], [ %.160.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.05161.prol
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !58
  %i.dt = add i64 %.160.prol, 1                   ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.160.prol
  store i32 %i.ds, ptr %i.du, align 4, !tbaa !58
  %i.dv = add nuw i64 %.05161.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !2541

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa127.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.dt, %scalar.ph.prol ]
  %.05161.unr = phi i64 [ %.05161.ph, %scalar.ph.preheader ], [ %i.dv, %scalar.ph.prol ]
  %.160.unr = phi i64 [ %.160.ph, %scalar.ph.preheader ], [ %i.dt, %scalar.ph.prol ]
  %i.dw = sub i64 %.05161.ph, %i.ba
  %i.dx = icmp ugt i64 %i.dw, -4
  br i1 %i.dx, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit
  %i.dy = phi ptr [ %i.cw, %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit ], [ %i.cv, %middle.block ], [ %i.cv, %scalar.ph ], [ %i.cv, %scalar.ph.prol.loopexit ]
  %.1.lcssa = phi i64 [ %.05362, %_ZNSt6vectorIjN8LightGBM6Common18AlignmentAllocatorIjLm32EEEE6resizeEm.exit ], [ %i.di, %middle.block ], [ %.lcssa127.unr, %scalar.ph.prol.loopexit ], [ %i.et, %scalar.ph ] ; 3 uses
  %i.dz = sub i64 %.1.lcssa, %.05362
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ea = load ptr, ptr %i.p, align 8, !tbaa !407
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv.next
  store i64 %i.dz, ptr %i.eb, align 8, !tbaa !91
  %i.ec = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.ec, label %bb.e, label %._crit_edge66.loopexit, !llvm.loop !2542

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05161 = phi i64 [ %i.ew, %scalar.ph ], [ %.05161.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.160 = phi i64 [ %i.et, %scalar.ph ], [ %.160.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.05161
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !58
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.160
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !58
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.05161
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !58
  %i.ej = getelementptr [4 x i8], ptr %i.cv, i64 %.160
  %i.ek = getelementptr i8, ptr %i.ej, i64 4
  store i32 %i.ei, ptr %i.ek, align 4, !tbaa !58
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.05161
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i32, ptr %i.em, align 4, !tbaa !58
  %i.eo = getelementptr [4 x i8], ptr %i.cv, i64 %.160
  %i.ep = getelementptr i8, ptr %i.eo, i64 8
  store i32 %i.en, ptr %i.ep, align 4, !tbaa !58
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %.05161
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  %i.es = load i32, ptr %i.er, align 4, !tbaa !58
  %i.et = add i64 %.160, 4                        ; 2 uses
  %i.eu = getelementptr [4 x i8], ptr %i.cv, i64 %.160
  %i.ev = getelementptr i8, ptr %i.eu, i64 12
  store i32 %i.es, ptr %i.ev, align 4, !tbaa !58
  %i.ew = add nuw i64 %.05161, 4                  ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ew, %i.ba
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !2543

._crit_edge71.loopexit:                           ; preds = %._crit_edge66
  %.pre84 = load i32, ptr %i.b, align 4, !tbaa !58
  br label %._crit_edge71

._crit_edge71:                                    ; preds = %._crit_edge71.loopexit, %.preheader
  %i.ex = phi i32 [ %i.r, %.preheader ], [ %.pre84, %._crit_edge71.loopexit ]
  %.lcssa = phi i32 [ %i.q, %.preheader ], [ %i.aj, %._crit_edge71.loopexit ]
  %i.ey = load i32, ptr %i.d, align 4, !tbaa !58  ; 2 uses
  %i.ez = add nsw i32 %i.ey, %i.ex                ; 3 uses
  store i32 %i.ez, ptr %i.b, align 4, !tbaa !58
  %i.fa = add nsw i32 %i.ey, %.lcssa
  %i.fb = call i32 @llvm.smin.i32(i32 %i.fa, i32 %i.g) ; 3 uses
  store i32 %i.fb, ptr %i.c, align 4, !tbaa !58
  %.not = icmp sgt i32 %i.ez, %i.fb
  br i1 %.not, label %._crit_edge74, label %.preheader

._crit_edge74:                                    ; preds = %._crit_edge71, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge74, %bb.a
  ret void

bb.o:                                             ; preds = %bb.i
  %i.fc = landingpad { ptr, i32 }
          catch ptr null
  %i.fd = extractvalue { ptr, i32 } %i.fc, 0
  call void @__clang_call_terminate(ptr %i.fd) #41
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM17MultiValSparseBinImjE9MergeDataEPKm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::vector.180", align 8   ; 9 uses
  %i.c = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store ptr %1, ptr %i.b, align 8, !tbaa !436
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.d, ptr %2, align 8, !tbaa !274
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 28, ptr %i.a, align 8, !tbaa !91
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !276
  %i.f = load i64, ptr %i.a, align 8, !tbaa !91   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.e, ptr noundef nonnull align 1 dereferenceable(28) @.str.21, i64 28, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !277
  %i.h = load ptr, ptr %2, align 8, !tbaa !276
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  store i8 0, ptr %i.i, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.j = load ptr, ptr %2, align 8, !tbaa !276    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.d
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc.i
  %i.l = load i64, ptr %i.d, align 8, !tbaa !57
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !413  ; 4 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !407  ; 6 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %.pre = load i64, ptr %i.r, align 8, !tbaa !91  ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.s = icmp ult i32 %i.o, 4
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i64 [ %.pre, %.lr.ph ], [ %i.au, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod63 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod63)
  br label %bb.a
end_hunk_7
