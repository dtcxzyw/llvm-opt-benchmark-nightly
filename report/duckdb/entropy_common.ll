inline.NumInlined: 37
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN11duckdb_zstdL24FSE_readNCount_body_bmi2EPsPjS1_PKvm:bb.a
  %.2142.i = phi i32 [ %i.ap, %.thread ], [ %.0140.i, %bb.e ] ; 2 uses
  %.5.i = phi ptr [ %.3.i, %.thread ], [ %.0134.i, %bb.e ] ; 6 uses
  %i.bb = shl nuw nsw i32 %.0158.i, 1
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  %i.bd = sub nsw i32 %i.bc, %.0161.i             ; 2 uses
  %i.be = add nsw i32 %.0158.i, -1
  %i.bf = and i32 %.3156.i, %i.be                 ; 2 uses
  %i.bg = icmp ult i32 %i.bf, %i.bd
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bh = add nsw i32 %.0137.i, -1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bi = and i32 %.3156.i, %i.bc                 ; 2 uses
  %.not179.i = icmp slt i32 %i.bi, %.0158.i
  %i.bj = select i1 %.not179.i, i32 0, i32 %i.bd
  %spec.select.i = sub nsw i32 %i.bi, %i.bj
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn.i = phi i32 [ %i.bh, %bb.n ], [ %.0137.i, %bb.o ]
  %.1.i = phi i32 [ %i.bf, %bb.n ], [ %spec.select.i, %bb.o ] ; 3 uses
  %.6150.i = add nuw nsw i32 %.pn.i, %.5149.i     ; 5 uses
  %i.bk = add nsw i32 %.1.i, -1                   ; 3 uses
  %i.bl = icmp sgt i32 %.1.i, 0
  %i.bm = sub nsw i32 1, %.1.i
  %.1162.i.p = select i1 %i.bl, i32 %i.bm, i32 %i.bk
  %.1162.i = add i32 %.1162.i.p, %.0161.i         ; 6 uses
  %i.bn = trunc i32 %i.bk to i16
  %i.bo = add nuw i32 %.2142.i, 1                 ; 4 uses
  %i.bp = zext i32 %.2142.i to i64
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bp
  store i16 %i.bn, ptr %i.bq, align 2, !tbaa !11
  %i.br = icmp ne i32 %i.bk, 0
  %i.bs = icmp slt i32 %.1162.i, %.0158.i
  br i1 %i.bs, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bt = icmp slt i32 %.1162.i, 2
  br i1 %i.bt, label %.thread8, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %.1162.i, i1 true) ; 2 uses
  %i.bv = sub nuw nsw i32 32, %i.bu
  %i.bw = lshr exact i32 -2147483648, %i.bu
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.1159.i = phi i32 [ %i.bw, %bb.r ], [ %.0158.i, %bb.p ]
  %.1138.i = phi i32 [ %i.bv, %bb.r ], [ %.0137.i, %bb.p ]
  %.not180.i = icmp ult i32 %i.bo, %i.d
  br i1 %.not180.i, label %bb.t, label %.thread8

bb.t:                                             ; preds = %bb.s
  %.not181.i = icmp ugt ptr %.5.i, %i.s
  %i.bx = lshr i32 %.6150.i, 3
  %i.by = zext nneg i32 %i.bx to i64              ; 2 uses
  br i1 %.not181.i, label %bb.u, label %._crit_edge25, !prof !8

bb.u:                                             ; preds = %bb.t
  %i.bz = getelementptr inbounds nuw i8, ptr %.5.i, i64 %i.by
  %.not182.i = icmp ugt ptr %i.bz, %i.u
  br i1 %.not182.i, label %bb.v, label %._crit_edge25

._crit_edge25:                                    ; preds = %bb.t, %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %.5.i, i64 %i.by
  %i.cb = and i32 %.6150.i, 7
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cc = ptrtoint ptr %.5.i to i64
  %.neg183.i = sub i64 %i.cc, %i.v
  %.tr.neg184.i = trunc i64 %.neg183.i to i32
  %.neg185.i = shl i32 %.tr.neg184.i, 3
  %i.cd = add i32 %.6150.i, %.neg185.i
  %i.ce = and i32 %i.cd, 31
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge25, %bb.v
  %.7151.i = phi i32 [ %i.cb, %._crit_edge25 ], [ %i.ce, %bb.v ] ; 2 uses
  %.6.i = phi ptr [ %i.ca, %._crit_edge25 ], [ %i.u, %bb.v ] ; 2 uses
  %.6.i.val = load i32, ptr %.6.i, align 1, !tbaa !3
  %i.cf = lshr i32 %.6.i.val, %.7151.i
  br label %bb.e

.thread8:                                         ; preds = %bb.s, %bb.q, %._crit_edge
  %.2163.i = phi i32 [ %.0161.i, %._crit_edge ], [ %.1162.i, %bb.q ], [ %.1162.i, %bb.s ]
  %.9.i = phi i32 [ %i.ar, %._crit_edge ], [ %.6150.i, %bb.q ], [ %.6150.i, %bb.s ] ; 2 uses
  %.3143.i = phi i32 [ %i.ap, %._crit_edge ], [ %i.bo, %bb.q ], [ %i.bo, %bb.s ] ; 2 uses
  %.8.i = phi ptr [ %.1135.i.lcssa, %._crit_edge ], [ %.5.i, %bb.q ], [ %.5.i, %bb.s ]
  %.not186.i = icmp eq i32 %.2163.i, 1
  br i1 %.not186.i, label %bb.x, label %_ZN11duckdb_zstdL19FSE_readNCount_bodyEPsPjS1_PKvm.exit

bb.x:                                             ; preds = %.thread8
  %i.cg = icmp ugt i32 %.3143.i, %i.d
  br i1 %i.cg, label %_ZN11duckdb_zstdL19FSE_readNCount_bodyEPsPjS1_PKvm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = icmp sgt i32 %.9.i, 32
  br i1 %i.ch, label %_ZN11duckdb_zstdL19FSE_readNCount_bodyEPsPjS1_PKvm.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = add i32 %.3143.i, -1
  store i32 %i.ci, ptr %1, align 4, !tbaa !3
  %i.cj = add nsw i32 %.9.i, 7
  %i.ck = ashr i32 %i.cj, 3
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr %.8.i, i64 %i.cl
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %3 to i64
  %i.cp = sub i64 %i.cn, %i.co
  br label %_ZN11duckdb_zstdL19FSE_readNCount_bodyEPsPjS1_PKvm.exit

_ZN11duckdb_zstdL19FSE_readNCount_bodyEPsPjS1_PKvm.exit: ; preds = %bb.b, %bb.c, %.thread8, %bb.x, %bb.y, %bb.z
  %.1130.i = phi i64 [ %.0129.i, %bb.b ], [ %i.cp, %bb.z ], [ -44, %bb.c ], [ -20, %.thread8 ], [ -48, %bb.x ], [ -20, %bb.y ]
  ret i64 %.1130.i
}

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN11duckdb_zstd14FSE_readNCountEPsPjS1_PKvm(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef i64 @_ZN11duckdb_zstd19FSE_readNCount_bmi2EPsPjS1_PKvmi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -119, -9223372036854775808) i64 @_ZN11duckdb_zstd13HUF_readStatsEPhmPjS1_S1_PKvm(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [219 x i32], align 16             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call noundef i64 @_ZN11duckdb_zstd18HUF_readStats_wkspEPhmPjS1_S1_PKvmPvmi(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull %i.a, i64 noundef 876, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define noundef range(i64 -119, -9223372036854775808) i64 @_ZN11duckdb_zstd18HUF_readStats_wkspEPhmPjS1_S1_PKvmPvmi(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, i32 noundef %9) local_unnamed_addr #1 {
bb.a:
  %i.a = and i32 %9, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef i64 @_ZN11duckdb_zstdL23HUF_readStats_body_bmi2EPhmPjS1_S1_PKvmPvm(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8)
  br label %_ZN11duckdb_zstdL26HUF_readStats_body_defaultEPhmPjS1_S1_PKvmPvm.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %6, 0
  br i1 %.not.i.i, label %_ZN11duckdb_zstdL26HUF_readStats_body_defaultEPhmPjS1_S1_PKvmPvm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr %5, align 1, !tbaa !14      ; 2 uses
  %i.d = zext i8 %i.c to i64                      ; 7 uses
  %i.e = icmp slt i8 %i.c, 0
  br i1 %i.e, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.f = add nsw i64 %i.d, -127                   ; 6 uses
  %i.g = add nsw i64 %i.d, -126
  %i.h = lshr i64 %i.g, 1                         ; 2 uses
  %.not88.i.i = icmp ult i64 %i.h, %6
  br i1 %.not88.i.i, label %bb.f, label %_ZN11duckdb_zstdL26HUF_readStats_body_defaultEPhmPjS1_S1_PKvmPvm.exit

bb.f:                                             ; preds = %bb.e
  %.not89.i.i = icmp ult i64 %i.f, %1
  br i1 %.not89.i.i, label %iter.check, label %_ZN11duckdb_zstdL26HUF_readStats_body_defaultEPhmPjS1_S1_PKvmPvm.exit

iter.check:                                       ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 4 uses
  %umax29 = tail call i64 @llvm.umax.i64(i64 %i.f, i64 2)
  %i.j = add nsw i64 %umax29, -1
  %i.k = lshr i64 %i.j, 1
  %i.l = add nuw i64 %i.k, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.f, 7
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.m = add nsw i64 %i.d, -128
  %i.n = lshr i64 %i.m, 1
  %i.o = and i64 %i.d, 126
  %i.p = getelementptr i8, ptr %0, i64 %i.o
  %scevgep = getelementptr i8, ptr %i.p, i64 2
  %i.q = getelementptr i8, ptr %5, i64 %i.n
  %scevgep28 = getelementptr i8, ptr %i.q, i64 2
  %bound0 = icmp ult ptr %0, %scevgep28
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check30 = icmp ult i64 %i.f, 31
  br i1 %min.iters.check30, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.l, 12
  %n.vec = and i64 %i.l, -16                      ; 6 uses
  %i.r = shl i64 %n.vec, 1
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 9
  %wide.load = load <8 x i8>, ptr %i.i, align 1, !tbaa !14, !alias.scope !15 ; 2 uses
  %wide.load31 = load <8 x i8>, ptr %10, align 1, !tbaa !14, !alias.scope !15 ; 2 uses
  %11 = lshr <8 x i8> %wide.load, splat (i8 4)
  %12 = lshr <8 x i8> %wide.load31, splat (i8 4)
  %13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %14 = and <8 x i8> %wide.load, splat (i8 15)
  %15 = and <8 x i8> %wide.load31, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %11, <8 x i8> %14, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %0, align 1, !tbaa !14, !alias.scope !18, !noalias !15
  %interleaved.vec34 = shufflevector <8 x i8> %12, <8 x i8> %15, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec34, ptr %13, align 1, !tbaa !14, !alias.scope !18, !noalias !15
  %16 = icmp eq i64 %n.vec, 16
  br i1 %16, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 17
  %18 = getelementptr inbounds nuw i8, ptr %5, i64 25
  %wide.load.1 = load <8 x i8>, ptr %17, align 1, !tbaa !14, !alias.scope !15 ; 2 uses
  %wide.load31.1 = load <8 x i8>, ptr %18, align 1, !tbaa !14, !alias.scope !15 ; 2 uses
  %19 = lshr <8 x i8> %wide.load.1, splat (i8 4)
  %20 = lshr <8 x i8> %wide.load31.1, splat (i8 4)
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %23 = and <8 x i8> %wide.load.1, splat (i8 15)
  %24 = and <8 x i8> %wide.load31.1, splat (i8 15)
  %interleaved.vec.1 = shufflevector <8 x i8> %19, <8 x i8> %23, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.1, ptr %21, align 1, !tbaa !14, !alias.scope !18, !noalias !15
  %interleaved.vec34.1 = shufflevector <8 x i8> %20, <8 x i8> %24, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec34.1, ptr %22, align 1, !tbaa !14, !alias.scope !18, !noalias !15
  %25 = icmp eq i64 %n.vec, 32
  br i1 %25, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body.1
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 41
  %wide.load.a = load <8 x i8>, ptr %i.s, align 1, !tbaa !14, !alias.scope !15 ; 2 uses
  %wide.load31.a = load <8 x i8>, ptr %i.t, align 1, !tbaa !14, !alias.scope !15 ; 2 uses
  %i.u = lshr <8 x i8> %wide.load.a, splat (i8 4)
  %i.v = lshr <8 x i8> %wide.load31.a, splat (i8 4)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = and <8 x i8> %wide.load.a, splat (i8 15)
  %i.z = and <8 x i8> %wide.load31.a, splat (i8 15)
  %interleaved.vec.a = shufflevector <8 x i8> %i.u, <8 x i8> %i.y, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.a, ptr %i.w, align 1, !tbaa !14, !alias.scope !18, !noalias !15
  %interleaved.vec34.a = shufflevector <8 x i8> %i.v, <8 x i8> %i.z, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec34.a, ptr %i.x, align 1, !tbaa !14, !alias.scope !18, !noalias !15
  %i.aa = icmp eq i64 %n.vec, 48
  br i1 %i.aa, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 49
  %27 = getelementptr inbounds nuw i8, ptr %5, i64 57
  %wide.load.3 = load <8 x i8>, ptr %26, align 1, !tbaa !14, !alias.scope !15 ; 2 uses
  %wide.load31.3 = load <8 x i8>, ptr %27, align 1, !tbaa !14, !alias.scope !15 ; 2 uses
  %28 = lshr <8 x i8> %wide.load.3, splat (i8 4)
  %29 = lshr <8 x i8> %wide.load31.3, splat (i8 4)
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %32 = and <8 x i8> %wide.load.3, splat (i8 15)
  %33 = and <8 x i8> %wide.load31.3, splat (i8 15)
  %interleaved.vec.3 = shufflevector <8 x i8> %28, <8 x i8> %32, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.3, ptr %30, align 1, !tbaa !14, !alias.scope !18, !noalias !15
  %interleaved.vec34.3 = shufflevector <8 x i8> %29, <8 x i8> %33, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec34.3, ptr %31, align 1, !tbaa !14, !alias.scope !18, !noalias !15
  br label %middle.block

middle.block:                                     ; preds = %vector.body.3, %vector.body, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.loopexit.thread.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec36 = and i64 %i.l, -4                     ; 3 uses
  %i.ab = shl i64 %n.vec36, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 3 uses
  %i.ac = shl i64 %index37, 1
  %i.ad = and i64 %index37, 9223372036854775804
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ad
  %wide.load38 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !14, !alias.scope !15 ; 2 uses
  %i.af = lshr <4 x i8> %wide.load38, splat (i8 4)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.ah = and <4 x i8> %wide.load38, splat (i8 15)
  %interleaved.vec40 = shufflevector <4 x i8> %i.af, <4 x i8> %i.ah, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec40, ptr %i.ag, align 1, !tbaa !14, !alias.scope !18, !noalias !15
  %index.next41 = add nuw i64 %index37, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next41, %n.vec36
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %i.l, %n.vec36
  br i1 %cmp.n42, label %.loopexit.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.r, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.aj = phi i64 [ %i.as, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ak = lshr exact i64 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !14
  %i.an = lshr i8 %i.am, 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj ; 2 uses
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !14
  %i.ap = load i8, ptr %i.al, align 1, !tbaa !14
  %i.aq = and i8 %i.ap, 15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !14
  %i.as = add nuw nsw i64 %i.aj, 2                ; 2 uses
  %i.at = icmp samesign ugt i64 %i.f, %i.as
  br i1 %i.at, label %.lr.ph.i, label %.loopexit.thread.i, !llvm.loop !24

.loopexit.thread.i:                               ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  br label %.lr.ph13.preheader.i

bb.g:                                             ; preds = %bb.d
  %.not86.i.i = icmp ugt i64 %6, %i.d
  br i1 %.not86.i.i, label %bb.h, label %_ZN11duckdb_zstdL26HUF_readStats_body_defaultEPhmPjS1_S1_PKvmPvm.exit

bb.h:                                             ; preds = %bb.g
  %i.au = add i64 %1, -1
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.aw = tail call noundef i64 @_ZN11duckdb_zstd24FSE_decompress_wksp_bmi2EPvmPKvmjS0_mi(ptr noundef %0, i64 noundef %i.au, ptr noundef nonnull %i.av, i64 noundef %i.d, i32 noundef 6, ptr noundef %7, i64 noundef %8, i32 noundef 0) ; 4 uses
  %i.ax = icmp ult i64 %i.aw, -119
  br i1 %i.ax, label %.loopexit.i, label %_ZN11duckdb_zstdL26HUF_readStats_body_defaultEPhmPjS1_S1_PKvmPvm.exit

.loopexit.i:                                      ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  %.not90.i10.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not90.i10.not.i, label %_ZN11duckdb_zstdL26HUF_readStats_body_defaultEPhmPjS1_S1_PKvmPvm.exit, label %.lr.ph13.preheader.i

.lr.ph13.preheader.i:                             ; preds = %.loopexit.i, %.loopexit.thread.i
  %.073.i26.i = phi i64 [ %i.h, %.loopexit.thread.i ], [ %i.d, %.loopexit.i ]
  %.074.i24.i = phi i64 [ %i.f, %.loopexit.thread.i ], [ %i.aw, %.loopexit.i ] ; 3 uses
  br label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %bb.i, %.lr.ph13.preheader.i
  %i.ay = phi i64 [ %i.bm, %bb.i ], [ 0, %.lr.ph13.preheader.i ]
  %.072.i12.i = phi i32 [ %i.bk, %bb.i ], [ 0, %.lr.ph13.preheader.i ]
  %.075.i11.i = phi i32 [ %i.bl, %bb.i ], [ 0, %.lr.ph13.preheader.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.ay ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !14  ; 2 uses
  %i.bb = icmp ugt i8 %i.ba, 12
  br i1 %i.bb, label %_ZN11duckdb_zstdL26HUF_readStats_body_defaultEPhmPjS1_S1_PKvmPvm.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph13.i
  %i.bc = zext nneg i8 %i.ba to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !3
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !3
  %i.bg = load i8, ptr %i.az, align 1, !tbaa !14
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = shl nuw i32 1, %i.bh
  %i.bj = ashr i32 %i.bi, 1
  %i.bk = add i32 %i.bj, %.072.i12.i              ; 4 uses
  %i.bl = add i32 %.075.i11.i, 1                  ; 2 uses
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %.not90.i.i = icmp ugt i64 %.074.i24.i, %i.bm
  br i1 %.not90.i.i, label %.lr.ph13.i, label %.critedge.i.i, !llvm.loop !25

.critedge.i.i:                                    ; preds = %bb.i
  %.old.i.i = icmp eq i32 %i.bk, 0
  br i1 %.old.i.i, label %_ZN11duckdb_zstdL26HUF_readStats_body_defaultEPhmPjS1_S1_PKvmPvm.exit, label %bb.j

bb.j:                                             ; preds = %.critedge.i.i
  %i.bn = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bk, i1 true) ; 2 uses
  %i.bo = xor i32 %i.bn, 31                       ; 2 uses
  %i.bp = icmp samesign ugt i32 %i.bo, 11
  br i1 %i.bp, label %_ZN11duckdb_zstdL26HUF_readStats_body_defaultEPhmPjS1_S1_PKvmPvm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bq = sub nuw nsw i32 32, %i.bn
  store i32 %i.bq, ptr %4, align 4, !tbaa !3
  %i.br = shl nuw nsw i32 2, %i.bo
  %i.bs = sub i32 %i.br, %i.bk                    ; 2 uses
  %i.bt = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bs, i1 true) ; 2 uses
  %i.bu = lshr exact i32 -2147483648, %i.bt
  %.not91.i.i = icmp eq i32 %i.bu, %i.bs
  br i1 %.not91.i.i, label %bb.l, label %_ZN11duckdb_zstdL26HUF_readStats_body_defaultEPhmPjS1_S1_PKvmPvm.exit

bb.l:                                             ; preds = %bb.k
  %i.bv = sub nuw nsw i32 32, %i.bt               ; 2 uses
  %i.bw = trunc nuw nsw i32 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %.074.i24.i
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !14
  %i.by = zext nneg i32 %i.bv to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !3
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3  ; 2 uses
  %i.ce = icmp ugt i32 %i.cd, 1
  %i.cf = and i32 %i.cd, 1
  %.not92.i.i = icmp eq i32 %i.cf, 0
  %or.cond.i.i = and i1 %i.ce, %.not92.i.i
  br i1 %or.cond.i.i, label %bb.m, label %_ZN11duckdb_zstdL26HUF_readStats_body_defaultEPhmPjS1_S1_PKvmPvm.exit

bb.m:                                             ; preds = %bb.l
  %i.cg = trunc nuw i64 %.074.i24.i to i32
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %3, align 4, !tbaa !3
  %i.ci = add nuw nsw i64 %.073.i26.i, 1
  br label %_ZN11duckdb_zstdL26HUF_readStats_body_defaultEPhmPjS1_S1_PKvmPvm.exit

_ZN11duckdb_zstdL26HUF_readStats_body_defaultEPhmPjS1_S1_PKvmPvm.exit: ; preds = %.lr.ph13.i, %bb.m, %bb.l, %bb.k, %bb.j, %.critedge.i.i, %.loopexit.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ -72, %bb.c ], [ -72, %bb.e ], [ %i.aw, %bb.h ], [ -20, %bb.j ], [ %i.ci, %bb.m ], [ -20, %bb.k ], [ -20, %bb.l ], [ -20, %bb.f ], [ -72, %bb.g ], [ -20, %.critedge.i.i ], [ -20, %.loopexit.i ], [ -20, %.lr.ph13.i ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i64 -119, -9223372036854775808) i64 @_ZN11duckdb_zstdL23HUF_readStats_body_bmi2EPhmPjS1_S1_PKvmPvm(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8) unnamed_addr #5 {
bb.a:
  %.not.i = icmp eq i64 %6, 0
  br i1 %.not.i, label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %5, align 1, !tbaa !14      ; 2 uses
  %i.b = zext i8 %i.a to i64                      ; 7 uses
  %i.c = icmp slt i8 %i.a, 0
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i64 %i.b, -127                   ; 6 uses
  %i.e = add nsw i64 %i.b, -126
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %.not88.i = icmp ult i64 %i.f, %6
  br i1 %.not88.i, label %bb.d, label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit

bb.d:                                             ; preds = %bb.c
  %.not89.i = icmp ult i64 %i.d, %1
  br i1 %.not89.i, label %iter.check, label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit

iter.check:                                       ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 1 ; 4 uses
  %umax33 = tail call i64 @llvm.umax.i64(i64 %i.d, i64 2)
  %i.h = add nsw i64 %umax33, -1
  %i.i = lshr i64 %i.h, 1
  %i.j = add nuw i64 %i.i, 1                      ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 7
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.k = add nsw i64 %i.b, -128
  %i.l = lshr i64 %i.k, 1
  %i.m = and i64 %i.b, 126
  %i.n = getelementptr i8, ptr %0, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.n, i64 2
  %i.o = getelementptr i8, ptr %5, i64 %i.l
  %scevgep32 = getelementptr i8, ptr %i.o, i64 2
  %bound0 = icmp ult ptr %0, %scevgep32
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check34 = icmp ult i64 %i.d, 31
  br i1 %min.iters.check34, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.j, 12
  %n.vec = and i64 %i.j, -16                      ; 6 uses
  %i.p = shl i64 %n.vec, 1
  %9 = getelementptr inbounds nuw i8, ptr %5, i64 9
  %wide.load = load <8 x i8>, ptr %i.g, align 1, !tbaa !14, !alias.scope !26 ; 2 uses
  %wide.load35 = load <8 x i8>, ptr %9, align 1, !tbaa !14, !alias.scope !26 ; 2 uses
  %10 = lshr <8 x i8> %wide.load, splat (i8 4)
  %11 = lshr <8 x i8> %wide.load35, splat (i8 4)
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %13 = and <8 x i8> %wide.load, splat (i8 15)
  %14 = and <8 x i8> %wide.load35, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %10, <8 x i8> %13, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %0, align 1, !tbaa !14, !alias.scope !29, !noalias !26
  %interleaved.vec38 = shufflevector <8 x i8> %11, <8 x i8> %14, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec38, ptr %12, align 1, !tbaa !14, !alias.scope !29, !noalias !26
  %15 = icmp eq i64 %n.vec, 16
  br i1 %15, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %16 = getelementptr inbounds nuw i8, ptr %5, i64 17
  %17 = getelementptr inbounds nuw i8, ptr %5, i64 25
  %wide.load.1 = load <8 x i8>, ptr %16, align 1, !tbaa !14, !alias.scope !26 ; 2 uses
  %wide.load35.1 = load <8 x i8>, ptr %17, align 1, !tbaa !14, !alias.scope !26 ; 2 uses
  %18 = lshr <8 x i8> %wide.load.1, splat (i8 4)
  %19 = lshr <8 x i8> %wide.load35.1, splat (i8 4)
  %20 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %22 = and <8 x i8> %wide.load.1, splat (i8 15)
  %23 = and <8 x i8> %wide.load35.1, splat (i8 15)
  %interleaved.vec.1 = shufflevector <8 x i8> %18, <8 x i8> %22, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.1, ptr %20, align 1, !tbaa !14, !alias.scope !29, !noalias !26
  %interleaved.vec38.1 = shufflevector <8 x i8> %19, <8 x i8> %23, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec38.1, ptr %21, align 1, !tbaa !14, !alias.scope !29, !noalias !26
  %24 = icmp eq i64 %n.vec, 32
  br i1 %24, label %middle.block, label %vector.body

vector.body:                                      ; preds = %vector.body.1
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 41
  %wide.load.a = load <8 x i8>, ptr %i.q, align 1, !tbaa !14, !alias.scope !26 ; 2 uses
  %wide.load35.a = load <8 x i8>, ptr %i.r, align 1, !tbaa !14, !alias.scope !26 ; 2 uses
  %i.s = lshr <8 x i8> %wide.load.a, splat (i8 4)
  %i.t = lshr <8 x i8> %wide.load35.a, splat (i8 4)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = and <8 x i8> %wide.load.a, splat (i8 15)
  %i.x = and <8 x i8> %wide.load35.a, splat (i8 15)
  %interleaved.vec.a = shufflevector <8 x i8> %i.s, <8 x i8> %i.w, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.a, ptr %i.u, align 1, !tbaa !14, !alias.scope !29, !noalias !26
  %interleaved.vec38.a = shufflevector <8 x i8> %i.t, <8 x i8> %i.x, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec38.a, ptr %i.v, align 1, !tbaa !14, !alias.scope !29, !noalias !26
  %i.y = icmp eq i64 %n.vec, 48
  br i1 %i.y, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 49
  %26 = getelementptr inbounds nuw i8, ptr %5, i64 57
  %wide.load.3 = load <8 x i8>, ptr %25, align 1, !tbaa !14, !alias.scope !26 ; 2 uses
  %wide.load35.3 = load <8 x i8>, ptr %26, align 1, !tbaa !14, !alias.scope !26 ; 2 uses
  %27 = lshr <8 x i8> %wide.load.3, splat (i8 4)
  %28 = lshr <8 x i8> %wide.load35.3, splat (i8 4)
  %29 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 112
  %31 = and <8 x i8> %wide.load.3, splat (i8 15)
  %32 = and <8 x i8> %wide.load35.3, splat (i8 15)
  %interleaved.vec.3 = shufflevector <8 x i8> %27, <8 x i8> %31, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.3, ptr %29, align 1, !tbaa !14, !alias.scope !29, !noalias !26
  %interleaved.vec38.3 = shufflevector <8 x i8> %28, <8 x i8> %32, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec38.3, ptr %30, align 1, !tbaa !14, !alias.scope !29, !noalias !26
  br label %middle.block

middle.block:                                     ; preds = %vector.body.3, %vector.body, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec40 = and i64 %i.j, -4                     ; 3 uses
  %i.z = shl i64 %n.vec40, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %i.aa = shl i64 %index41, 1
  %i.ab = and i64 %index41, 9223372036854775804
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ab
  %wide.load42 = load <4 x i8>, ptr %i.ac, align 1, !tbaa !14, !alias.scope !26 ; 2 uses
  %i.ad = lshr <4 x i8> %wide.load42, splat (i8 4)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  %i.af = and <4 x i8> %wide.load42, splat (i8 15)
  %interleaved.vec44 = shufflevector <4 x i8> %i.ad, <4 x i8> %i.af, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec44, ptr %i.ae, align 1, !tbaa !14, !alias.scope !29, !noalias !26
  %index.next45 = add nuw i64 %index41, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next45, %n.vec40
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %i.j, %n.vec40
  br i1 %cmp.n46, label %.loopexit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.p, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ah = phi i64 [ %i.ar, %.lr.ph ], [ %.ph, %.lr.ph.preheader ] ; 4 uses
  %i.ai = lshr exact i64 %i.ah, 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ai ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !14
  %i.al = lshr i8 %i.ak, 4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  store i8 %i.al, ptr %i.am, align 1, !tbaa !14
  %i.an = load i8, ptr %i.aj, align 1, !tbaa !14
  %i.ao = and i8 %i.an, 15
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.ah
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  store i8 %i.ao, ptr %i.aq, align 1, !tbaa !14
  %i.ar = add nuw nsw i64 %i.ah, 2                ; 2 uses
  %i.as = icmp samesign ugt i64 %i.d, %i.ar
  br i1 %i.as, label %.lr.ph, label %.loopexit.thread, !llvm.loop !32

.loopexit.thread:                                 ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  br label %.lr.ph13.preheader

bb.e:                                             ; preds = %bb.b
  %.not86.i = icmp ugt i64 %6, %i.b
  br i1 %.not86.i, label %bb.f, label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit

bb.f:                                             ; preds = %bb.e
  %i.at = add i64 %1, -1
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.av = tail call noundef i64 @_ZN11duckdb_zstd24FSE_decompress_wksp_bmi2EPvmPKvmjS0_mi(ptr noundef %0, i64 noundef %i.at, ptr noundef nonnull %i.au, i64 noundef %i.b, i32 noundef 6, ptr noundef %7, i64 noundef %8, i32 noundef 1) ; 4 uses
  %i.aw = icmp ult i64 %i.av, -119
  br i1 %i.aw, label %.loopexit, label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit

.loopexit:                                        ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  %.not90.i10.not = icmp eq i64 %i.av, 0
  br i1 %.not90.i10.not, label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit, label %.lr.ph13.preheader

.lr.ph13.preheader:                               ; preds = %.loopexit.thread, %.loopexit
  %.073.i26 = phi i64 [ %i.f, %.loopexit.thread ], [ %i.b, %.loopexit ]
  %.074.i24 = phi i64 [ %i.d, %.loopexit.thread ], [ %i.av, %.loopexit ] ; 3 uses
  br label %.lr.ph13

.lr.ph13:                                         ; preds = %.lr.ph13.preheader, %bb.g
  %i.ax = phi i64 [ %i.bl, %bb.g ], [ 0, %.lr.ph13.preheader ]
  %.072.i12 = phi i32 [ %i.bj, %bb.g ], [ 0, %.lr.ph13.preheader ]
  %.075.i11 = phi i32 [ %i.bk, %bb.g ], [ 0, %.lr.ph13.preheader ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !14  ; 2 uses
  %i.ba = icmp ugt i8 %i.az, 12
  br i1 %i.ba, label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph13
  %i.bb = zext nneg i8 %i.az to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !3
  %i.bf = load i8, ptr %i.ay, align 1, !tbaa !14
  %i.bg = zext nneg i8 %i.bf to i32
  %i.bh = shl nuw i32 1, %i.bg
  %i.bi = ashr i32 %i.bh, 1
  %i.bj = add i32 %i.bi, %.072.i12                ; 4 uses
  %i.bk = add i32 %.075.i11, 1                    ; 2 uses
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %.not90.i = icmp ugt i64 %.074.i24, %i.bl
  br i1 %.not90.i, label %.lr.ph13, label %.critedge.i, !llvm.loop !25

.critedge.i:                                      ; preds = %bb.g
  %.old.i = icmp eq i32 %i.bj, 0
  br i1 %.old.i, label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  %i.bm = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bj, i1 true) ; 2 uses
  %i.bn = xor i32 %i.bm, 31                       ; 2 uses
  %i.bo = icmp samesign ugt i32 %i.bn, 11
  br i1 %i.bo, label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = sub nuw nsw i32 32, %i.bm
  store i32 %i.bp, ptr %4, align 4, !tbaa !3
  %i.bq = shl nuw nsw i32 2, %i.bn
  %i.br = sub i32 %i.bq, %i.bj                    ; 2 uses
  %i.bs = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.br, i1 true) ; 2 uses
  %i.bt = lshr exact i32 -2147483648, %i.bs
  %.not91.i = icmp eq i32 %i.bt, %i.br
  br i1 %.not91.i, label %bb.j, label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit

bb.j:                                             ; preds = %bb.i
  %i.bu = sub nuw nsw i32 32, %i.bs               ; 2 uses
  %i.bv = trunc nuw nsw i32 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %.074.i24
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !14
  %i.bx = zext nneg i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bx ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !3
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3  ; 2 uses
  %i.cd = icmp ugt i32 %i.cc, 1
  %i.ce = and i32 %i.cc, 1
  %.not92.i = icmp eq i32 %i.ce, 0
  %or.cond.i = and i1 %i.cd, %.not92.i
  br i1 %or.cond.i, label %bb.k, label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit

bb.k:                                             ; preds = %bb.j
  %i.cf = trunc nuw i64 %.074.i24 to i32
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %3, align 4, !tbaa !3
  %i.ch = add nuw nsw i64 %.073.i26, 1
  br label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit

_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit: ; preds = %.lr.ph13, %.loopexit, %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %.critedge.i, %bb.h, %bb.i, %bb.j, %bb.k
  %.3.i = phi i64 [ -72, %bb.a ], [ -72, %bb.c ], [ %i.av, %bb.f ], [ -20, %bb.h ], [ %i.ch, %bb.k ], [ -20, %bb.i ], [ -20, %bb.j ], [ -20, %bb.d ], [ -72, %bb.e ], [ -20, %.critedge.i ], [ -20, %.loopexit ], [ -20, %.lr.ph13 ]
  ret i64 %.3.i
}

declare noundef ptr @_ZN11duckdb_zstd18ERR_getErrorStringENS_14ZSTD_ErrorCodeE(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

declare noundef i64 @_ZN11duckdb_zstd24FSE_decompress_wksp_bmi2EPvmPKvmjS0_mi(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = distinct !{ptr @_ZN11duckdb_zstd14FSE_readNCountEPsPjS1_PKvm, null}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !12, i64 0}
!12 = !{!"short", !5, i64 0}
!13 = !{ptr @_ZN11duckdb_zstd14FSE_readNCountEPsPjS1_PKvm}
!14 = !{!5, !5, i64 0}
!15 = !{!16}
!16 = distinct !{!16, !17}
!17 = distinct !{!17, !"LVerDomain"}
!18 = !{!19}
!19 = distinct !{!19, !17}
!20 = !{!"branch_weights", i32 4, i32 12}
!21 = distinct !{!21, !10, !22, !23}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !10, !22}
!25 = distinct !{!25, !10}
!26 = !{!27}
!27 = distinct !{!27, !28}
!28 = distinct !{!28, !"LVerDomain"}
!29 = !{!30}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !10, !22, !23}
!32 = distinct !{!32, !10, !22}
end_hunk_0
