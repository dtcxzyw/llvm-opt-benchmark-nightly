inline.NumInlined: 37
inline.NumDeleted: 11
begin_hunk_0_@_ZN11duckdb_zstdL24FSE_readNCount_body_bmi2EPsPjS1_PKvm:bb.a

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
  %n.vec = and i64 %i.l, -16                      ; 4 uses
  %i.r = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = shl i64 %index, 1                        ; 2 uses
  %i.t = and i64 %index, 9223372036854775792
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.t ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %wide.load = load <8 x i8>, ptr %i.u, align 1, !tbaa !14, !alias.scope !15
  %wide.load31 = load <8 x i8>, ptr %i.v, align 1, !tbaa !14, !alias.scope !15
  %i.w = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.x = lshr <8 x i8> %wide.load31, splat (i8 4)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load32 = load <8 x i8>, ptr %i.u, align 1, !tbaa !14, !alias.scope !15
  %wide.load33 = load <8 x i8>, ptr %i.v, align 1, !tbaa !14, !alias.scope !15
  %i.ab = and <8 x i8> %wide.load32, splat (i8 15)
  %i.ac = and <8 x i8> %wide.load33, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.w, <8 x i8> %i.ab, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.y, align 1, !tbaa !14, !alias.scope !18, !noalias !15
  %interleaved.vec34 = shufflevector <8 x i8> %i.x, <8 x i8> %i.ac, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec34, ptr %i.aa, align 1, !tbaa !14, !alias.scope !18, !noalias !15
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.loopexit.thread.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec36 = and i64 %i.l, -4                     ; 3 uses
  %i.ae = shl i64 %n.vec36, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 3 uses
  %i.af = shl i64 %index37, 1
  %i.ag = and i64 %index37, 9223372036854775804
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ag
  %wide.load38 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !14, !alias.scope !15 ; 2 uses
  %i.ai = lshr <4 x i8> %wide.load38, splat (i8 4)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  %i.ak = and <4 x i8> %wide.load38, splat (i8 15)
  %interleaved.vec40 = shufflevector <4 x i8> %i.ai, <4 x i8> %i.ak, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec40, ptr %i.aj, align 1, !tbaa !14, !alias.scope !18, !noalias !15
  %index.next41 = add nuw i64 %index37, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next41, %n.vec36
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !24

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %i.l, %n.vec36
  br i1 %cmp.n42, label %.loopexit.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.r, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.am = lshr exact i64 %indvars.iv.i, 1
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.am ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !14
  %i.ap = lshr i8 %i.ao, 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i ; 2 uses
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !14
  %i.ar = load i8, ptr %i.an, align 1, !tbaa !14
  %i.as = and i8 %i.ar, 15
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store i8 %i.as, ptr %i.at, align 1, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %10 = icmp samesign ugt i64 %i.f, %indvars.iv.next.i
  br i1 %10, label %.lr.ph.i, label %.loopexit.thread.i, !llvm.loop !25

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
  %.073.i27.i = phi i64 [ %i.h, %.loopexit.thread.i ], [ %i.d, %.loopexit.i ]
  %.074.i25.i = phi i64 [ %i.f, %.loopexit.thread.i ], [ %i.aw, %.loopexit.i ] ; 3 uses
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
  %.not90.i.i = icmp ugt i64 %.074.i25.i, %i.bm
  br i1 %.not90.i.i, label %.lr.ph13.i, label %.critedge.i.i, !llvm.loop !26

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
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %.074.i25.i
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
  %i.cg = trunc nuw i64 %.074.i25.i to i32
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %3, align 4, !tbaa !3
  %i.ci = add nuw nsw i64 %.073.i27.i, 1
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
  %9 = add nsw i64 %umax33, -1
  %10 = lshr i64 %9, 1
  %11 = add nuw i64 %10, 1                        ; 5 uses
  %min.iters.check = icmp ult i64 %i.d, 7
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %12 = add nsw i64 %i.b, -128
  %13 = lshr i64 %12, 1
  %14 = and i64 %i.b, 126
  %i.h = getelementptr i8, ptr %0, i64 %14
  %scevgep = getelementptr i8, ptr %i.h, i64 2
  %i.i = getelementptr i8, ptr %5, i64 %13
  %scevgep33 = getelementptr i8, ptr %i.i, i64 2
  %bound0 = icmp ult ptr %0, %scevgep33
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %i.d, 31
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %11, 12
  %n.vec = and i64 %11, -16                       ; 4 uses
  %i.j = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = shl i64 %index, 1                        ; 2 uses
  %i.l = and i64 %index, 9223372036854775792
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %wide.load = load <8 x i8>, ptr %i.m, align 1, !tbaa !14, !alias.scope !27
  %wide.load36.a = load <8 x i8>, ptr %i.n, align 1, !tbaa !14, !alias.scope !27
  %i.o = lshr <8 x i8> %wide.load, splat (i8 4)
  %i.p = lshr <8 x i8> %wide.load36.a, splat (i8 4)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load37.a = load <8 x i8>, ptr %i.m, align 1, !tbaa !14, !alias.scope !27
  %wide.load38 = load <8 x i8>, ptr %i.n, align 1, !tbaa !14, !alias.scope !27
  %i.t = and <8 x i8> %wide.load37.a, splat (i8 15)
  %i.u = and <8 x i8> %wide.load38, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.o, <8 x i8> %i.t, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.q, align 1, !tbaa !14, !alias.scope !30, !noalias !27
  %interleaved.vec39 = shufflevector <8 x i8> %i.p, <8 x i8> %i.u, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec39, ptr %i.s, align 1, !tbaa !14, !alias.scope !30, !noalias !27
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %11, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !23

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec41 = and i64 %11, -4                      ; 3 uses
  %i.w = shl i64 %n.vec41, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next46, %vec.epilog.vector.body ] ; 3 uses
  %i.x = shl i64 %index42, 1
  %i.y = and i64 %index42, 9223372036854775804
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.y
  %wide.load43 = load <4 x i8>, ptr %i.z, align 1, !tbaa !14, !alias.scope !27 ; 2 uses
  %i.aa = lshr <4 x i8> %wide.load43, splat (i8 4)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.x
  %i.ac = and <4 x i8> %wide.load43, splat (i8 15)
  %interleaved.vec45 = shufflevector <4 x i8> %i.aa, <4 x i8> %i.ac, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec45, ptr %i.ab, align 1, !tbaa !14, !alias.scope !30, !noalias !27
  %index.next46 = add nuw i64 %index42, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next46, %n.vec41
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !33

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n47 = icmp eq i64 %11, %n.vec41
  br i1 %cmp.n47, label %.loopexit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.j, %vec.epilog.iter.check ], [ %i.w, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 4 uses
  %i.ae = lshr exact i64 %indvars.iv, 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ae ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14
  %i.ah = lshr i8 %i.ag, 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !14
  %i.aj = load i8, ptr %i.af, align 1, !tbaa !14
  %i.ak = and i8 %i.aj, 15
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  store i8 %i.ak, ptr %i.am, align 1, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.an = icmp samesign ugt i64 %i.d, %indvars.iv.next
  br i1 %i.an, label %.lr.ph, label %.loopexit.thread, !llvm.loop !34

.loopexit.thread:                                 ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  br label %.lr.ph13.preheader

bb.e:                                             ; preds = %bb.b
  %.not86.i = icmp ugt i64 %6, %i.b
  br i1 %.not86.i, label %bb.f, label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit

bb.f:                                             ; preds = %bb.e
  %i.ao = add i64 %1, -1
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.aq = tail call noundef i64 @_ZN11duckdb_zstd24FSE_decompress_wksp_bmi2EPvmPKvmjS0_mi(ptr noundef %0, i64 noundef %i.ao, ptr noundef nonnull %i.ap, i64 noundef %i.b, i32 noundef 6, ptr noundef %7, i64 noundef %8, i32 noundef 1) ; 4 uses
  %i.ar = icmp ult i64 %i.aq, -119
  br i1 %i.ar, label %.loopexit, label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit

.loopexit:                                        ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  %.not90.i10.not = icmp eq i64 %i.aq, 0
  br i1 %.not90.i10.not, label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit, label %.lr.ph13.preheader

.lr.ph13.preheader:                               ; preds = %.loopexit.thread, %.loopexit
  %.073.i27 = phi i64 [ %i.f, %.loopexit.thread ], [ %i.b, %.loopexit ]
  %.074.i25 = phi i64 [ %i.d, %.loopexit.thread ], [ %i.aq, %.loopexit ] ; 3 uses
  br label %.lr.ph13

.lr.ph13:                                         ; preds = %.lr.ph13.preheader, %bb.g
  %i.as = phi i64 [ %i.bg, %bb.g ], [ 0, %.lr.ph13.preheader ]
  %.072.i12 = phi i32 [ %i.be, %bb.g ], [ 0, %.lr.ph13.preheader ]
  %.075.i11 = phi i32 [ %i.bf, %bb.g ], [ 0, %.lr.ph13.preheader ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.as ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !14  ; 2 uses
  %i.av = icmp ugt i8 %i.au, 12
  br i1 %i.av, label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph13
  %i.aw = zext nneg i8 %i.au to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = add i32 %i.ay, 1
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !3
  %i.ba = load i8, ptr %i.at, align 1, !tbaa !14
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = shl nuw i32 1, %i.bb
  %i.bd = ashr i32 %i.bc, 1
  %i.be = add i32 %i.bd, %.072.i12                ; 4 uses
  %i.bf = add i32 %.075.i11, 1                    ; 2 uses
  %i.bg = zext i32 %i.bf to i64                   ; 2 uses
  %.not90.i = icmp ugt i64 %.074.i25, %i.bg
  br i1 %.not90.i, label %.lr.ph13, label %.critedge.i, !llvm.loop !26

.critedge.i:                                      ; preds = %bb.g
  %.old.i = icmp eq i32 %i.be, 0
  br i1 %.old.i, label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  %i.bh = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.be, i1 true) ; 2 uses
  %i.bi = xor i32 %i.bh, 31                       ; 2 uses
  %i.bj = icmp samesign ugt i32 %i.bi, 11
  br i1 %i.bj, label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = sub nuw nsw i32 32, %i.bh
  store i32 %i.bk, ptr %4, align 4, !tbaa !3
  %i.bl = shl nuw nsw i32 2, %i.bi
  %i.bm = sub i32 %i.bl, %i.be                    ; 2 uses
  %i.bn = tail call noundef range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bm, i1 true) ; 2 uses
  %i.bo = lshr exact i32 -2147483648, %i.bn
  %.not91.i = icmp eq i32 %i.bo, %i.bm
  br i1 %.not91.i, label %bb.j, label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit

bb.j:                                             ; preds = %bb.i
  %i.bp = sub nuw nsw i32 32, %i.bn               ; 2 uses
  %i.bq = trunc nuw nsw i32 %i.bp to i8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %.074.i25
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !14
  %i.bs = zext nneg i32 %i.bp to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !3
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3  ; 2 uses
  %i.by = icmp ugt i32 %i.bx, 1
  %i.bz = and i32 %i.bx, 1
  %.not92.i = icmp eq i32 %i.bz, 0
  %or.cond.i = and i1 %i.by, %.not92.i
  br i1 %or.cond.i, label %bb.k, label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit

bb.k:                                             ; preds = %bb.j
  %i.ca = trunc nuw i64 %.074.i25 to i32
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %3, align 4, !tbaa !3
  %i.cc = add nuw nsw i64 %.073.i27, 1
  br label %_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit

_ZN11duckdb_zstdL18HUF_readStats_bodyEPhmPjS1_S1_PKvmPvmi.exit: ; preds = %.lr.ph13, %.loopexit, %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %.critedge.i, %bb.h, %bb.i, %bb.j, %bb.k
  %.3.i = phi i64 [ -72, %bb.a ], [ -72, %bb.c ], [ %i.aq, %bb.f ], [ -20, %bb.h ], [ %i.cc, %bb.k ], [ -20, %bb.i ], [ -20, %bb.j ], [ -20, %bb.d ], [ -72, %bb.e ], [ -20, %.critedge.i ], [ -20, %.loopexit ], [ -20, %.lr.ph13 ]
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
!20 = distinct !{!20, !10, !21, !22}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = !{!"branch_weights", i32 4, i32 12}
!24 = distinct !{!24, !10, !21, !22}
!25 = distinct !{!25, !10, !21}
!26 = distinct !{!26, !10}
!27 = !{!28}
!28 = distinct !{!28, !29}
!29 = distinct !{!29, !"LVerDomain"}
!30 = !{!31}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !10, !21, !22}
!33 = distinct !{!33, !10, !21, !22}
!34 = distinct !{!34, !10, !21}
end_hunk_0
