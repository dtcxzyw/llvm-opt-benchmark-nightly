inline.NumInlined: 591
inline.NumDeleted: 157
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 30
begin_hunk_0_@Of_StoDelete:bb.a
  br i1 %.not.i19, label %Vec_IntErase.exit, label %bb.f

bb.f:                                             ; preds = %Vec_PtrErase.exit
  tail call void @free(ptr noundef nonnull %i.n) #24
  store ptr null, ptr %i.m, align 8, !tbaa !41
  br label %Vec_IntErase.exit

Vec_IntErase.exit:                                ; preds = %Vec_PtrErase.exit, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.o, align 4, !tbaa !40
  store i32 0, ptr %i.l, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41   ; 2 uses
  %.not.i20 = icmp eq ptr %i.r, null
  br i1 %.not.i20, label %Vec_IntErase.exit21, label %bb.g

bb.g:                                             ; preds = %Vec_IntErase.exit
  tail call void @free(ptr noundef nonnull %i.r) #24
  store ptr null, ptr %i.q, align 8, !tbaa !41
  br label %Vec_IntErase.exit21

Vec_IntErase.exit21:                              ; preds = %Vec_IntErase.exit, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.s, align 4, !tbaa !40
  store i32 0, ptr %i.p, align 8, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41   ; 2 uses
  %.not.i22 = icmp eq ptr %i.v, null
  br i1 %.not.i22, label %Vec_IntErase.exit23, label %bb.h

bb.h:                                             ; preds = %Vec_IntErase.exit21
  tail call void @free(ptr noundef nonnull %i.v) #24
  store ptr null, ptr %i.u, align 8, !tbaa !41
  br label %Vec_IntErase.exit23

Vec_IntErase.exit23:                              ; preds = %Vec_IntErase.exit21, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.w, align 4, !tbaa !40
  store i32 0, ptr %i.t, align 8, !tbaa !61
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !41   ; 2 uses
  %.not.i24 = icmp eq ptr %i.z, null
  br i1 %.not.i24, label %Vec_IntErase.exit25, label %bb.i

bb.i:                                             ; preds = %Vec_IntErase.exit23
  tail call void @free(ptr noundef nonnull %i.z) #24
  store ptr null, ptr %i.y, align 8, !tbaa !41
  br label %Vec_IntErase.exit25

Vec_IntErase.exit25:                              ; preds = %Vec_IntErase.exit23, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.aa, align 4, !tbaa !40
  store i32 0, ptr %i.x, align 8, !tbaa !61
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20 ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %Vec_IntErase.exit25
  tail call void @free(ptr noundef nonnull %i.ac) #24
  store ptr null, ptr %i.ab, align 8, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %Vec_IntErase.exit25, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !57
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !62
  %.not16 = icmp eq i32 %i.ag, 0
  br i1 %.not16, label %Vec_MemHashFree.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !74 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %Vec_MemHashFree.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !51 ; 3 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %Vec_IntFreeP.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !41 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %bb.o, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.n
  tail call void @free(ptr noundef nonnull %i.ao) #24
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !51 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr null, ptr %i.aq, align 8, !tbaa !41
  br label %bb.o

bb.o:                                             ; preds = %.thread.i.i, %bb.n
  %i.ar = phi ptr [ %i.ap, %.thread.i.i ], [ %i.al, %bb.n ]
  tail call void @free(ptr noundef nonnull %i.ar) #24
  store ptr null, ptr %i.ak, align 8, !tbaa !51
  br label %Vec_IntFreeP.exit.i

Vec_IntFreeP.exit.i:                              ; preds = %bb.o, %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !51 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %Vec_MemHashFree.exit, label %bb.p

bb.p:                                             ; preds = %Vec_IntFreeP.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !41 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.aw, null
  br i1 %.not.i3.i, label %bb.q, label %.thread.i4.i

.thread.i4.i:                                     ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.aw) #24
  %i.ax = load ptr, ptr %i.as, align 8, !tbaa !51 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr null, ptr %i.ay, align 8, !tbaa !41
  br label %bb.q

bb.q:                                             ; preds = %.thread.i4.i, %bb.p
  %i.az = phi ptr [ %i.ax, %.thread.i4.i ], [ %i.at, %bb.p ]
  tail call void @free(ptr noundef nonnull %i.az) #24
  store ptr null, ptr %i.as, align 8, !tbaa !51
  br label %Vec_MemHashFree.exit

Vec_MemHashFree.exit:                             ; preds = %bb.q, %Vec_IntFreeP.exit.i, %bb.l, %bb.k
  %i.ba = load ptr, ptr %i.ad, align 8, !tbaa !57
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 88
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !62
  %.not17 = icmp eq i32 %i.bc, 0
  br i1 %.not17, label %.thread, label %bb.r

bb.r:                                             ; preds = %Vec_MemHashFree.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !74 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 20 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !70 ; 2 uses
  %.not19.i = icmp slt i32 %i.bg, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 2 uses
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !78 ; 3 uses
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %bb.r, %bb.t
  %i.bh = phi i32 [ %i.bn, %bb.t ], [ %i.bg, %bb.r ]
  %i.bi = phi ptr [ %i.bo, %bb.t ], [ %.pre23.i, %bb.r ] ; 2 uses
  %indvars.iv.i27 = phi i64 [ %indvars.iv.next.i28, %bb.t ], [ 0, %bb.r ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.i27
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !79 ; 2 uses
  %.not18.i = icmp eq ptr %i.bk, null
  br i1 %.not18.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i26
  tail call void @free(ptr noundef nonnull %i.bk) #24
  %i.bl = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !78 ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv.i27
  store ptr null, ptr %i.bm, align 8, !tbaa !79
  %.pre22.i = load i32, ptr %i.bf, align 4, !tbaa !70
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i26
  %i.bn = phi i32 [ %.pre22.i, %bb.s ], [ %i.bh, %.lr.ph.i26 ] ; 2 uses
  %i.bo = phi ptr [ %i.bl, %bb.s ], [ %i.bi, %.lr.ph.i26 ] ; 2 uses
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 1
  %i.bp = sext i32 %i.bn to i64
  %.not.not.i = icmp slt i64 %indvars.iv.i27, %i.bp
  br i1 %.not.not.i, label %.lr.ph.i26, label %.loopexit, !llvm.loop !81

._crit_edge.i:                                    ; preds = %bb.r
  %.not16.i = icmp eq ptr %.pre23.i, null
  br i1 %.not16.i, label %.thread30, label %.loopexit

.thread30:                                        ; preds = %._crit_edge.i
  tail call void @free(ptr noundef nonnull %i.be) #24
  br label %.thread

.loopexit:                                        ; preds = %bb.t, %._crit_edge.i
  %i.bq = phi ptr [ %.pre23.i, %._crit_edge.i ], [ %i.bo, %bb.t ]
  tail call void @free(ptr noundef nonnull %i.bq) #24
  tail call void @free(ptr noundef nonnull %i.be) #24
  %.not18 = icmp eq ptr %0, null
  br i1 %.not18, label %bb.u, label %.thread

.thread:                                          ; preds = %Vec_MemHashFree.exit, %.thread30, %.loopexit
  tail call void @free(ptr noundef nonnull %0) #24
  br label %bb.u

bb.u:                                             ; preds = %.loopexit, %.thread
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Of_ObjMergeOrder(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca [32 x %struct.Of_Cut_t_], align 16  ; 13 uses
  %3 = alloca [32 x %struct.Of_Cut_t_], align 16  ; 13 uses
  %4 = alloca [32 x %struct.Of_Cut_t_], align 16  ; 5 uses
  %i.c = alloca [32 x ptr], align 16              ; 31 uses
  %5 = alloca [32 x %struct.Of_Cut_t_], align 16  ; 10 uses
  %6 = alloca [32 x %struct.Of_Cut_t_], align 16  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.d = load ptr, ptr %0, align 8, !tbaa !8      ; 5 uses
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %.val = load ptr, ptr %i.e, align 8, !tbaa !46  ; 2 uses
  %i.f = sext i32 %1 to i64                       ; 8 uses
  %i.g = getelementptr inbounds [12 x i8], ptr %.val, i64 %i.f ; 3 uses
  %i.h = getelementptr i8, ptr %i.d, i64 144
  %.val164 = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.i = getelementptr inbounds [4 x i8], ptr %.val164, i64 %i.f
  %i.j = load i32, ptr %i.i, align 4, !tbaa !42
  %i.k = shl nsw i32 %i.j, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57   ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !82   ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !83   ; 6 uses
  %.val166 = load i64, ptr %i.g, align 4          ; 4 uses
  %i.q = trunc i64 %.val166 to i32                ; 2 uses
  %i.r = and i32 %i.q, 536870911
  %i.s = sub nsw i32 %1, %i.r                     ; 5 uses
  %i.t = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %.val.i = load ptr, ptr %i.t, align 8, !tbaa !41 ; 3 uses
  %i.u = sext i32 %i.s to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !42   ; 3 uses
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr i8, ptr %0, i64 32
  %.val37.i = load ptr, ptr %i.y, align 8, !tbaa !59
  %i.z = lshr i32 %i.w, 16
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.val37.i, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !76
  %i.ad = and i32 %i.w, 65535
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !42 ; 4 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %Of_CutGetSign.exit.i, %.lr.ph.preheader.i
  %.046.i = phi ptr [ %i.dx, %Of_CutGetSign.exit.i ], [ %i.ai, %.lr.ph.preheader.i ] ; 16 uses
  %.03245.i = phi i32 [ %i.dv, %Of_CutGetSign.exit.i ], [ 0, %.lr.ph.preheader.i ]
  %.03344.i = phi ptr [ %i.du, %Of_CutGetSign.exit.i ], [ %2, %.lr.ph.preheader.i ] ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.03344.i, i64 8
  store i32 0, ptr %i.aj, align 8, !tbaa !84
  %i.ak = getelementptr inbounds nuw i8, ptr %.03344.i, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !86
  %.0.val.i = load i32, ptr %.046.i, align 4, !tbaa !42 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.03344.i, i64 16
  %i.am = tail call i32 @llvm.fshl.i32(i32 %.0.val.i, i32 %.0.val.i, i32 27)
  store i32 %i.am, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.046.i, i64 4 ; 3 uses
  %i.ao = and i32 %.0.val.i, 31                   ; 4 uses
  %.not.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i, label %Of_CutGetSign.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i
  %wide.trip.count.i.i = zext nneg i32 %i.ao to i64 ; 5 uses
  %min.iters.check = icmp samesign ult i32 %i.ao, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 28       ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.046.i, i64 12
  %wide.load = load <2 x i32>, ptr %i.an, align 4, !tbaa !42
  %wide.load917 = load <2 x i32>, ptr %i.ap, align 4, !tbaa !42
  %i.aq = and <2 x i32> %wide.load, splat (i32 63)
  %i.ar = and <2 x i32> %wide.load917, splat (i32 63)
  %i.as = zext nneg <2 x i32> %i.aq to <2 x i64>
  %i.at = zext nneg <2 x i32> %i.ar to <2 x i64>
  %i.au = shl nuw <2 x i64> splat (i64 1), %i.as  ; 2 uses
  %i.av = shl nuw <2 x i64> splat (i64 1), %i.at  ; 2 uses
  %i.aw = icmp eq i64 %n.vec, 4
  br i1 %i.aw, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.046.i, i64 20
  %i.ay = getelementptr inbounds nuw i8, ptr %.046.i, i64 28
  %wide.load.1 = load <2 x i32>, ptr %i.ax, align 4, !tbaa !42
  %wide.load917.1 = load <2 x i32>, ptr %i.ay, align 4, !tbaa !42
  %i.az = and <2 x i32> %wide.load.1, splat (i32 63)
  %i.ba = and <2 x i32> %wide.load917.1, splat (i32 63)
  %i.bb = zext nneg <2 x i32> %i.az to <2 x i64>
  %i.bc = zext nneg <2 x i32> %i.ba to <2 x i64>
  %i.bd = shl nuw <2 x i64> splat (i64 1), %i.bb
  %i.be = shl nuw <2 x i64> splat (i64 1), %i.bc
  %i.bf = or <2 x i64> %i.bd, %i.au               ; 2 uses
  %i.bg = or <2 x i64> %i.be, %i.av               ; 2 uses
  %i.bh = icmp eq i64 %n.vec, 8
  br i1 %i.bh, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.bi = getelementptr inbounds nuw i8, ptr %.046.i, i64 36
  %i.bj = getelementptr inbounds nuw i8, ptr %.046.i, i64 44
  %wide.load.2 = load <2 x i32>, ptr %i.bi, align 4, !tbaa !42
  %wide.load917.2 = load <2 x i32>, ptr %i.bj, align 4, !tbaa !42
  %i.bk = and <2 x i32> %wide.load.2, splat (i32 63)
  %i.bl = and <2 x i32> %wide.load917.2, splat (i32 63)
  %i.bm = zext nneg <2 x i32> %i.bk to <2 x i64>
  %i.bn = zext nneg <2 x i32> %i.bl to <2 x i64>
  %i.bo = shl nuw <2 x i64> splat (i64 1), %i.bm
  %i.bp = shl nuw <2 x i64> splat (i64 1), %i.bn
  %i.bq = or <2 x i64> %i.bo, %i.bf               ; 2 uses
  %i.br = or <2 x i64> %i.bp, %i.bg               ; 2 uses
  %i.bs = icmp eq i64 %n.vec, 12
  br i1 %i.bs, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.bt = getelementptr inbounds nuw i8, ptr %.046.i, i64 52
  %i.bu = getelementptr inbounds nuw i8, ptr %.046.i, i64 60
  %wide.load.3 = load <2 x i32>, ptr %i.bt, align 4, !tbaa !42
  %wide.load917.3 = load <2 x i32>, ptr %i.bu, align 4, !tbaa !42
  %i.bv = and <2 x i32> %wide.load.3, splat (i32 63)
  %i.bw = and <2 x i32> %wide.load917.3, splat (i32 63)
  %i.bx = zext nneg <2 x i32> %i.bv to <2 x i64>
  %i.by = zext nneg <2 x i32> %i.bw to <2 x i64>
  %i.bz = shl nuw <2 x i64> splat (i64 1), %i.bx
  %i.ca = shl nuw <2 x i64> splat (i64 1), %i.by
  %i.cb = or <2 x i64> %i.bz, %i.bq               ; 2 uses
  %i.cc = or <2 x i64> %i.ca, %i.br               ; 2 uses
  %i.cd = icmp eq i64 %n.vec, 16
  br i1 %i.cd, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %i.ce = getelementptr inbounds nuw i8, ptr %.046.i, i64 68
  %i.cf = getelementptr inbounds nuw i8, ptr %.046.i, i64 76
  %wide.load.4 = load <2 x i32>, ptr %i.ce, align 4, !tbaa !42
  %wide.load917.4 = load <2 x i32>, ptr %i.cf, align 4, !tbaa !42
  %i.cg = and <2 x i32> %wide.load.4, splat (i32 63)
  %i.ch = and <2 x i32> %wide.load917.4, splat (i32 63)
  %i.ci = zext nneg <2 x i32> %i.cg to <2 x i64>
  %i.cj = zext nneg <2 x i32> %i.ch to <2 x i64>
  %i.ck = shl nuw <2 x i64> splat (i64 1), %i.ci
  %i.cl = shl nuw <2 x i64> splat (i64 1), %i.cj
  %i.cm = or <2 x i64> %i.ck, %i.cb               ; 2 uses
  %i.cn = or <2 x i64> %i.cl, %i.cc               ; 2 uses
  %i.co = icmp eq i64 %n.vec, 20
  br i1 %i.co, label %middle.block, label %vector.body.5

vector.body.5:                                    ; preds = %vector.body.4
  %i.cp = getelementptr inbounds nuw i8, ptr %.046.i, i64 84
  %i.cq = getelementptr inbounds nuw i8, ptr %.046.i, i64 92
  %wide.load.5 = load <2 x i32>, ptr %i.cp, align 4, !tbaa !42
  %wide.load917.5 = load <2 x i32>, ptr %i.cq, align 4, !tbaa !42
  %i.cr = and <2 x i32> %wide.load.5, splat (i32 63)
  %i.cs = and <2 x i32> %wide.load917.5, splat (i32 63)
  %i.ct = zext nneg <2 x i32> %i.cr to <2 x i64>
  %i.cu = zext nneg <2 x i32> %i.cs to <2 x i64>
  %i.cv = shl nuw <2 x i64> splat (i64 1), %i.ct
  %i.cw = shl nuw <2 x i64> splat (i64 1), %i.cu
  %i.cx = or <2 x i64> %i.cv, %i.cm               ; 2 uses
  %i.cy = or <2 x i64> %i.cw, %i.cn               ; 2 uses
  %i.cz = icmp eq i64 %n.vec, 24
  br i1 %i.cz, label %middle.block, label %vector.body.6

vector.body.6:                                    ; preds = %vector.body.5
  %i.da = getelementptr inbounds nuw i8, ptr %.046.i, i64 100
  %i.db = getelementptr inbounds nuw i8, ptr %.046.i, i64 108
  %wide.load.6 = load <2 x i32>, ptr %i.da, align 4, !tbaa !42
  %wide.load917.6 = load <2 x i32>, ptr %i.db, align 4, !tbaa !42
  %i.dc = and <2 x i32> %wide.load.6, splat (i32 63)
  %i.dd = and <2 x i32> %wide.load917.6, splat (i32 63)
  %i.de = zext nneg <2 x i32> %i.dc to <2 x i64>
  %i.df = zext nneg <2 x i32> %i.dd to <2 x i64>
  %i.dg = shl nuw <2 x i64> splat (i64 1), %i.de
  %i.dh = shl nuw <2 x i64> splat (i64 1), %i.df
  %i.di = or <2 x i64> %i.dg, %i.cx
  %i.dj = or <2 x i64> %i.dh, %i.cy
  br label %middle.block

middle.block:                                     ; preds = %vector.body.6, %vector.body.5, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %.lcssa1081 = phi <2 x i64> [ %i.au, %vector.ph ], [ %i.bf, %vector.body.1 ], [ %i.bq, %vector.body.2 ], [ %i.cb, %vector.body.3 ], [ %i.cm, %vector.body.4 ], [ %i.cx, %vector.body.5 ], [ %i.di, %vector.body.6 ]
  %.lcssa1080 = phi <2 x i64> [ %i.av, %vector.ph ], [ %i.bg, %vector.body.1 ], [ %i.br, %vector.body.2 ], [ %i.cc, %vector.body.3 ], [ %i.cn, %vector.body.4 ], [ %i.cy, %vector.body.5 ], [ %i.dj, %vector.body.6 ]
  %bin.rdx = or <2 x i64> %.lcssa1080, %.lcssa1081
  %i.dk = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %Of_CutGetSign.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.067.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.dk, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.067.i.i = phi i64 [ %i.dq, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader ]
end_hunk_0
begin_hunk_1_@Of_ObjMergeOrder:bb.a
  %indvars.iv.i.us.i.us.us.us = phi i64 [ %indvars.iv.next.i.us.i.us.us.us, %Of_SetCutIsContainedOrder.exit.thread.i.us.i.us.us.us ], [ %indvars.iv.ph.i.i.us.us.us, %.outer.i.i.us.us.us ] ; 3 uses
  %i.apd = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.us.i.us.us.us
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !93 ; 3 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 16
  %i.apg = load i32, ptr %i.apf, align 8          ; 2 uses
  %.not.i319.us.us.us = icmp ult i32 %i.apg, 134217728
  br i1 %.not.i319.us.us.us, label %Of_SetCutIsContainedOrder.exit.thread.i.us.i.us.us.us, label %bb.bo

bb.bo:                                            ; preds = %.outer.i.split.us.i.us.us.us
  %i.aph = load i64, ptr %i.aod, align 8, !tbaa !90 ; 2 uses
  %i.api = load i64, ptr %i.ape, align 8, !tbaa !90
  %i.apj = and i64 %i.api, %i.aph
  %i.apk = icmp eq i64 %i.apj, %i.aph
  br i1 %i.apk, label %Of_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us, label %Of_SetCutIsContainedOrder.exit.thread.i.us.i.us.us.us

Of_SetCutIsContainedOrder.exit.thread.i.us.i.us.us.us: ; preds = %bb.bo, %.outer.i.split.us.i.us.us.us
  %indvars.iv.next.i.us.i.us.us.us = add nuw nsw i64 %indvars.iv.i.us.i.us.us.us, 1 ; 2 uses
  %exitcond.not.i.us.i.us.us.us = icmp eq i64 %indvars.iv.next.i.us.i.us.us.us, %i.aoa
  br i1 %exitcond.not.i.us.i.us.us.us, label %._crit_edge.i.i316.us.us.us, label %.outer.i.split.us.i.us.us.us, !llvm.loop !114

Of_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us: ; preds = %bb.bo, %bb.bm
  %indvars.iv.i19.i.us.us.us = phi i64 [ %indvars.iv.i.i313.us.us.us, %bb.bm ], [ %indvars.iv.i.us.i.us.us.us, %bb.bo ]
  %.pn.i.us.us.us = phi ptr [ %i.aok, %bb.bm ], [ %i.ape, %bb.bo ]
  %i.apl = phi i32 [ %i.aom, %bb.bm ], [ %i.apg, %bb.bo ]
  %i.apm = getelementptr inbounds nuw i8, ptr %.pn.i.us.us.us, i64 16
  %i.apn = or i32 %i.apl, -134217728
  store i32 %i.apn, ptr %i.apm, align 8
  %indvars.iv.next74.i.i.us.us.us = add nuw nsw i64 %indvars.iv.i19.i.us.us.us, 1 ; 2 uses
  %exitcond.not75.i.i.us.us.us = icmp eq i64 %indvars.iv.next74.i.i.us.us.us, %i.aoa
  br i1 %exitcond.not75.i.i.us.us.us, label %.preheader.i.i317.us.us.us, label %.outer.i.i.us.us.us, !llvm.loop !114

._crit_edge.i.i316.us.us.us:                      ; preds = %Of_SetCutIsContainedOrder.exit.thread.i.i.us.us.us, %Of_SetCutIsContainedOrder.exit.thread.i.us.i.us.us.us
  br i1 %i.aoc, label %Of_SetLastCutContainsArea.exit.i.us.us.us, label %.preheader.i.i317.us.us.us

.preheader.i.i317.us.us.us:                       ; preds = %Of_SetCutIsContainedOrder.exit.thread.thread.i.i.us.us.us, %._crit_edge.i.i316.us.us.us
  %i.apo = add nuw i32 %.4549.us.us.us, 1
  %wide.trip.count62.i.i.us.us.us = zext i32 %i.apo to i64
  br label %.lr.ph55.i.i.us.us.us

.lr.ph55.i.i.us.us.us:                            ; preds = %bb.bs, %.preheader.i.i317.us.us.us
  %indvars.iv59.i.i.us.us.us = phi i64 [ 0, %.preheader.i.i317.us.us.us ], [ %indvars.iv.next60.i.i.us.us.us, %bb.bs ] ; 3 uses
  %.04054.i.i.us.us.us = phi i32 [ 0, %.preheader.i.i317.us.us.us ], [ %.141.i.i.us.us.us, %bb.bs ] ; 3 uses
  %i.app = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv59.i.i.us.us.us ; 2 uses
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !93 ; 2 uses
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 16
  %i.aps = load i32, ptr %i.apr, align 8
  %i.apt = icmp ugt i32 %i.aps, -134217729
  br i1 %i.apt, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph55.i.i.us.us.us
  %i.apu = sext i32 %.04054.i.i.us.us.us to i64   ; 2 uses
  %i.apv = icmp sgt i64 %indvars.iv59.i.i.us.us.us, %i.apu
  br i1 %i.apv, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.apw = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.apu ; 2 uses
  %i.apx = load ptr, ptr %i.apw, align 8, !tbaa !93
  store ptr %i.apq, ptr %i.apw, align 8, !tbaa !93
  store ptr %i.apx, ptr %i.app, align 8, !tbaa !93
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.apy = add nsw i32 %.04054.i.i.us.us.us, 1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.lr.ph55.i.i.us.us.us
  %.141.i.i.us.us.us = phi i32 [ %.04054.i.i.us.us.us, %.lr.ph55.i.i.us.us.us ], [ %i.apy, %bb.br ] ; 2 uses
  %indvars.iv.next60.i.i.us.us.us = add nuw nsw i64 %indvars.iv59.i.i.us.us.us, 1 ; 2 uses
  %exitcond63.not.i.i.us.us.us = icmp eq i64 %indvars.iv.next60.i.i.us.us.us, %wide.trip.count62.i.i.us.us.us
  br i1 %exitcond63.not.i.i.us.us.us, label %._crit_edge56.loopexit.i.i.us.us.us, label %.lr.ph55.i.i.us.us.us, !llvm.loop !115

._crit_edge56.loopexit.i.i.us.us.us:              ; preds = %bb.bs
  %i.apz = add nsw i32 %.141.i.i.us.us.us, -1
  br label %Of_SetLastCutContainsArea.exit.i.us.us.us

Of_SetLastCutContainsArea.exit.i.us.us.us:        ; preds = %._crit_edge56.loopexit.i.i.us.us.us, %._crit_edge.i.i316.us.us.us
  %.0.i.i318.us.us.us = phi i32 [ %i.apz, %._crit_edge56.loopexit.i.i.us.us.us ], [ %.4549.us.us.us, %._crit_edge.i.i316.us.us.us ] ; 7 uses
  %i.aqa = icmp sgt i32 %.0.i.i318.us.us.us, 0
  br i1 %i.aqa, label %.lr.ph.i8.i.us.us.us.preheader, label %Of_SetSortByArea.exit.i.us.us.us

.lr.ph.i8.i.us.us.us.preheader:                   ; preds = %Of_SetLastCutContainsArea.exit.i.us.us.us
  %i.aqb = zext nneg i32 %.0.i.i318.us.us.us to i64
  br label %.lr.ph.i8.i.us.us.us

.lr.ph.i8.i.us.us.us:                             ; preds = %.lr.ph.i8.i.us.us.us.preheader, %Of_CutCompareArea.exit.i.i.us.us.us
  %indvars.iv654 = phi i64 [ %i.aqb, %.lr.ph.i8.i.us.us.us.preheader ], [ %indvars.iv.next655, %Of_CutCompareArea.exit.i.i.us.us.us ] ; 3 uses
  %i.aqc = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv654 ; 3 uses
  %i.aqd = getelementptr i8, ptr %i.aqc, i64 -8   ; 2 uses
  %i.aqe = load ptr, ptr %i.aqd, align 8, !tbaa !93 ; 4 uses
  %i.aqf = load ptr, ptr %i.aqc, align 8, !tbaa !93 ; 4 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqe, i64 8
  %i.aqh = load i32, ptr %i.aqg, align 8, !tbaa !84 ; 2 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqf, i64 8
  %i.aqj = load i32, ptr %i.aqi, align 8, !tbaa !84 ; 2 uses
  %i.aqk = icmp slt i32 %i.aqh, %i.aqj
  br i1 %i.aqk, label %Of_SetSortByArea.exit.i.us.us.us, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph.i8.i.us.us.us
  %i.aql = icmp sgt i32 %i.aqh, %i.aqj
  br i1 %i.aql, label %Of_CutCompareArea.exit.i.i.us.us.us, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqe, i64 12
  %i.aqn = load i32, ptr %i.aqm, align 4, !tbaa !86 ; 2 uses
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aqf, i64 12
  %i.aqp = load i32, ptr %i.aqo, align 4, !tbaa !86 ; 2 uses
  %i.aqq = icmp slt i32 %i.aqn, %i.aqp
  br i1 %i.aqq, label %Of_SetSortByArea.exit.i.us.us.us, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.aqr = icmp sgt i32 %i.aqn, %i.aqp
  br i1 %i.aqr, label %Of_CutCompareArea.exit.i.i.us.us.us, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqe, i64 16
  %i.aqt = load i32, ptr %i.aqs, align 8
  %i.aqu = lshr i32 %i.aqt, 27
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqf, i64 16
  %i.aqw = load i32, ptr %i.aqv, align 8
  %i.aqx = lshr i32 %i.aqw, 27
  %i.aqy = icmp samesign ult i32 %i.aqu, %i.aqx
  br i1 %i.aqy, label %Of_SetSortByArea.exit.i.us.us.us, label %Of_CutCompareArea.exit.i.i.us.us.us

Of_CutCompareArea.exit.i.i.us.us.us:              ; preds = %bb.bw, %bb.bv, %bb.bt
  store ptr %i.aqf, ptr %i.aqd, align 8, !tbaa !93
  store ptr %i.aqe, ptr %i.aqc, align 8, !tbaa !93
  %indvars.iv.next655 = add nsw i64 %indvars.iv654, -1
  %i.aqz = icmp sgt i64 %indvars.iv654, 1
  br i1 %i.aqz, label %.lr.ph.i8.i.us.us.us, label %Of_SetSortByArea.exit.i.us.us.us, !llvm.loop !116

Of_SetSortByArea.exit.i.us.us.us:                 ; preds = %.lr.ph.i8.i.us.us.us, %bb.bu, %bb.bw, %Of_CutCompareArea.exit.i.i.us.us.us, %Of_SetLastCutContainsArea.exit.i.us.us.us, %bb.bi
  %.0.i10.i.us.us.us = phi i32 [ %.4549.us.us.us, %bb.bi ], [ %.0.i.i318.us.us.us, %Of_SetLastCutContainsArea.exit.i.us.us.us ], [ %.0.i.i318.us.us.us, %Of_CutCompareArea.exit.i.i.us.us.us ], [ %.0.i.i318.us.us.us, %bb.bw ], [ %.0.i.i318.us.us.us, %bb.bu ], [ %.0.i.i318.us.us.us, %.lr.ph.i8.i.us.us.us ]
  %i.ara = add nsw i32 %.0.i10.i.us.us.us, 1
  %i.arb = call noundef i32 @llvm.smin.i32(i32 %i.ara, i32 %i.xq)
  br label %Of_SetAddCut.exit.us.us.us

Of_SetAddCut.exit.us.us.us:                       ; preds = %bb.z, %bb.ae, %bb.al, %bb.ah, %bb.ak, %Of_SetSortByArea.exit.i.us.us.us, %Of_CutParams.exit310.us.us.us, %bb.q
  %.5.us.us.us = phi i32 [ %.4549.us.us.us, %bb.q ], [ %.4549.us.us.us, %bb.al ], [ 1, %Of_CutParams.exit310.us.us.us ], [ %i.arb, %Of_SetSortByArea.exit.i.us.us.us ], [ %.4549.us.us.us, %bb.ae ], [ %.4549.us.us.us, %bb.ah ], [ %.4549.us.us.us, %bb.ak ], [ %.4549.us.us.us, %bb.z ] ; 4 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %.0550.us.us.us, i64 48 ; 2 uses
  %i.ard = icmp ult ptr %i.arc, %i.xa
  br i1 %i.ard, label %bb.q, label %._crit_edge552.us.us.us, !llvm.loop !117

._crit_edge552.us.us.us:                          ; preds = %Of_SetAddCut.exit.us.us.us
  %i.are = getelementptr inbounds nuw i8, ptr %.0146554.us.us.us, i64 48 ; 2 uses
  %i.arf = icmp ult ptr %i.are, %i.kc
  br i1 %i.arf, label %.preheader497.us.us.us, label %._crit_edge556.split.us.us.us, !llvm.loop !118

._crit_edge556.split.us.us.us:                    ; preds = %._crit_edge552.us.us.us
  %i.arg = getelementptr inbounds nuw i8, ptr %.0148558.us.us, i64 48 ; 2 uses
  %i.arh = icmp ult ptr %i.arg, %i.ka
  br i1 %i.arh, label %.preheader498.us.us, label %._crit_edge561, !llvm.loop !119

._crit_edge561:                                   ; preds = %._crit_edge556.split.us.us.us, %.preheader498.lr.ph, %Of_ManPrepareCuts.exit263
  %.2.lcssa = phi i32 [ %.1, %Of_ManPrepareCuts.exit263 ], [ %.1, %.preheader498.lr.ph ], [ %.5.us.us.us, %._crit_edge556.split.us.us.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.loopexit488

Gia_ObjIsMuxId.exit.thread:                       ; preds = %bb.n, %Gia_ObjIsMuxId.exit
  %.val175 = load i64, ptr %i.g, align 4          ; 4 uses
  %i.ari = and i64 %.val175, 2147483648
  %.not.i.i320 = icmp ne i64 %i.ari, 0
  %i.arj = and i64 %.val175, 536870911
  %i.ark = icmp eq i64 %i.arj, 536870911
  %narrow.i.not.i = or i1 %.not.i.i320, %i.ark
  br i1 %narrow.i.not.i, label %Gia_ObjIsXor.exit, label %bb.bx

bb.bx:                                            ; preds = %Gia_ObjIsMuxId.exit.thread
  %i.arl = trunc i64 %.val175 to i32
  %i.arm = and i32 %i.arl, 536870911
  %i.arn = lshr i64 %.val175, 32
  %i.aro = trunc nuw i64 %i.arn to i32
  %i.arp = and i32 %i.aro, 536870911
  %i.arq = icmp samesign uge i32 %i.arm, %i.arp
  br label %Gia_ObjIsXor.exit

Gia_ObjIsXor.exit:                                ; preds = %Gia_ObjIsMuxId.exit.thread, %bb.bx
  %.not36.i = phi i1 [ true, %Gia_ObjIsMuxId.exit.thread ], [ %i.arq, %bb.bx ]
  %i.arr = mul nsw i32 %.1.i183, %.1.i
  %i.ars = sitofp i32 %i.arr to double
  %i.art = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.aru = load double, ptr %i.art, align 8, !tbaa !106
  %i.arv = fadd double %i.aru, %i.ars
  store double %i.arv, ptr %i.art, align 8, !tbaa !106
  %i.arw = icmp sgt i32 %.1.i, 0
  br i1 %i.arw, label %.preheader.lr.ph, label %.loopexit488

.preheader.lr.ph:                                 ; preds = %Gia_ObjIsXor.exit
  %i.arx = icmp sgt i32 %.1.i183, 0
  %i.ary = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.arz = icmp eq i32 %i.n, 0                    ; 2 uses
  %wide.trip.count158.i = zext i32 %i.n to i64    ; 2 uses
  %i.asa = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.asb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.asc = getelementptr i8, ptr %0, i64 80
  %i.asd = getelementptr i8, ptr %0, i64 64
  %i.ase = call i32 @llvm.umax.i32(i32 %i.k, i32 1)
  %i.asf = add nsw i32 %i.p, -1
  br i1 %i.arx, label %.preheader.us, label %.loopexit488

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge574.us
  %.6577.us = phi i32 [ %.8.us, %._crit_edge574.us ], [ %.1, %.preheader.lr.ph ]
  %.1149576.us = phi ptr [ %i.bkr, %._crit_edge574.us ], [ %2, %.preheader.lr.ph ] ; 5 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %.1149576.us, i64 16
  %i.ash = getelementptr i8, ptr %.1149576.us, i64 20 ; 4 uses
  br label %bb.by

bb.by:                                            ; preds = %.preheader.us, %Of_SetAddCut.exit455.us
  %.7569.us = phi i32 [ %.6577.us, %.preheader.us ], [ %.8.us, %Of_SetAddCut.exit455.us ] ; 18 uses
  %.1147568.us = phi ptr [ %3, %.preheader.us ], [ %i.bkp, %Of_SetAddCut.exit455.us ] ; 5 uses
  %i.asi = load i32, ptr %i.asg, align 8          ; 3 uses
  %i.asj = lshr i32 %i.asi, 27                    ; 11 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %.1147568.us, i64 16
  %i.asl = load i32, ptr %i.ask, align 8          ; 3 uses
  %i.asm = lshr i32 %i.asl, 27                    ; 11 uses
  %i.asn = add nuw nsw i32 %i.asm, %i.asj
  %i.aso = icmp sgt i32 %i.asn, %i.n
  br i1 %i.aso, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.asp = load i64, ptr %.1149576.us, align 8, !tbaa !90
  %i.asq = load i64, ptr %.1147568.us, align 8, !tbaa !90
  %i.asr = or i64 %i.asq, %i.asp
  %i.ass = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.asr)
  %i.ast = trunc nuw nsw i64 %i.ass to i32
  %i.asu = icmp slt i32 %i.n, %i.ast
  br i1 %i.asu, label %Of_SetAddCut.exit455.us, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.asv = load double, ptr %i.ary, align 8, !tbaa !106
  %i.asw = fadd double %i.asv, 1.000000e+00
  store double %i.asw, ptr %i.ary, align 8, !tbaa !106
  %i.asx = sext i32 %.7569.us to i64
  %i.asy = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.asx
  %i.asz = load ptr, ptr %i.asy, align 8, !tbaa !93 ; 19 uses
  %i.ata = getelementptr i8, ptr %.1147568.us, i64 20 ; 4 uses
  %i.atb = getelementptr i8, ptr %i.asz, i64 20   ; 15 uses
  %i.atc = icmp eq i32 %i.asj, %i.n
  %i.atd = icmp eq i32 %i.asm, %i.n
  %or.cond.i.us = and i1 %i.atc, %i.atd
  br i1 %or.cond.i.us, label %.preheader.i.us, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ate = icmp eq i32 %i.asj, 0
  br i1 %i.ate, label %.loopexit120.i.us, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.atf = icmp eq i32 %i.asm, 0
  br i1 %i.atf, label %.loopexit121.i.us, label %.preheader118.i.us

.preheader118.i.us:                               ; preds = %bb.cc
  br i1 %i.arz, label %Of_SetAddCut.exit455.us, label %.lr.ph.i321.us

.lr.ph.i321.us:                                   ; preds = %.preheader118.i.us, %bb.ci
  %indvars.iv657 = phi i64 [ %indvars.iv.next658, %bb.ci ], [ 0, %.preheader118.i.us ] ; 2 uses
  %.091123.i.us = phi i32 [ %.192.i.us, %bb.ci ], [ 0, %.preheader118.i.us ] ; 5 uses
  %.196122.i.us = phi i32 [ %.297.i.us, %bb.ci ], [ 0, %.preheader118.i.us ] ; 5 uses
  %i.atg = sext i32 %.196122.i.us to i64
  %i.ath = getelementptr inbounds [4 x i8], ptr %i.ash, i64 %i.atg
  %i.ati = load i32, ptr %i.ath, align 4, !tbaa !42 ; 4 uses
  %i.atj = sext i32 %.091123.i.us to i64
  %i.atk = getelementptr inbounds [4 x i8], ptr %i.ata, i64 %i.atj
  %i.atl = load i32, ptr %i.atk, align 4, !tbaa !42 ; 3 uses
  %i.atm = icmp slt i32 %i.ati, %i.atl
  %indvars.iv.next658 = add nuw nsw i64 %indvars.iv657, 1 ; 4 uses
  %i.atn = getelementptr inbounds nuw [4 x i8], ptr %i.atb, i64 %indvars.iv657 ; 3 uses
  br i1 %i.atm, label %bb.ch, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.i321.us
  %i.ato = icmp sgt i32 %i.ati, %i.atl
  br i1 %i.ato, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.atp = add nsw i32 %.196122.i.us, 1           ; 3 uses
  store i32 %i.ati, ptr %i.atn, align 4, !tbaa !42
  %i.atq = add nsw i32 %.091123.i.us, 1           ; 3 uses
  %.not.i322.us = icmp slt i32 %i.atp, %i.asj
  br i1 %.not.i322.us, label %bb.cf, label %.loopexit120.i.us.loopexit

bb.cf:                                            ; preds = %bb.ce
  %.not112.i.us = icmp slt i32 %i.atq, %i.asm
  br i1 %.not112.i.us, label %bb.ci, label %.loopexit121.i.us.loopexit

bb.cg:                                            ; preds = %bb.cd
  %i.atr = add nsw i32 %.091123.i.us, 1           ; 2 uses
  store i32 %i.atl, ptr %i.atn, align 4, !tbaa !42
  %.not113.i.us = icmp slt i32 %i.atr, %i.asm
  br i1 %.not113.i.us, label %bb.ci, label %.loopexit121.i.us.loopexit

bb.ch:                                            ; preds = %.lr.ph.i321.us
  %i.ats = add nsw i32 %.196122.i.us, 1           ; 2 uses
  store i32 %i.ati, ptr %i.atn, align 4, !tbaa !42
  %.not114.i.us = icmp slt i32 %i.ats, %i.asj
  br i1 %.not114.i.us, label %bb.ci, label %.loopexit120.i.us.loopexit

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf
  %.297.i.us = phi i32 [ %i.ats, %bb.ch ], [ %.196122.i.us, %bb.cg ], [ %i.atp, %bb.cf ]
  %.192.i.us = phi i32 [ %.091123.i.us, %bb.ch ], [ %i.atr, %bb.cg ], [ %i.atq, %bb.cf ]
  %i.att = icmp eq i64 %indvars.iv.next658, %wide.trip.count158.i
  br i1 %i.att, label %Of_SetAddCut.exit455.us, label %.lr.ph.i321.us

.loopexit121.i.us.loopexit:                       ; preds = %bb.cg, %bb.cf
  %.398.i.us.ph = phi i32 [ %.196122.i.us, %bb.cg ], [ %i.atp, %bb.cf ]
  %i.atu = trunc nuw i64 %indvars.iv.next658 to i32
  br label %.loopexit121.i.us

.loopexit121.i.us:                                ; preds = %.loopexit121.i.us.loopexit, %bb.cc
  %.398.i.us = phi i32 [ 0, %bb.cc ], [ %.398.i.us.ph, %.loopexit121.i.us.loopexit ] ; 4 uses
  %.2.i.us = phi i32 [ 0, %bb.cc ], [ %i.atu, %.loopexit121.i.us.loopexit ] ; 4 uses
  %i.atv = add nsw i32 %.2.i.us, %i.asj
  %i.atw = add nsw i32 %.398.i.us, %i.n
  %i.atx = icmp sgt i32 %i.atv, %i.atw
  br i1 %i.atx, label %Of_SetAddCut.exit455.us, label %.preheader117.i.us

.preheader117.i.us:                               ; preds = %.loopexit121.i.us
  %i.aty = icmp slt i32 %.398.i.us, %i.asj
  br i1 %i.aty, label %.lr.ph127.preheader.i.us, label %.loopexit.us

.lr.ph127.preheader.i.us:                         ; preds = %.preheader117.i.us
  %i.atz = sext i32 %.2.i.us to i64
  %i.aua = sext i32 %.398.i.us to i64             ; 2 uses
  %wide.trip.count.i323.us = zext nneg i32 %i.asj to i64
  %i.aub = shl nsw i64 %i.atz, 2
  %scevgep660 = getelementptr i8, ptr %i.atb, i64 %i.aub
  %i.auc = shl nsw i64 %i.aua, 2
  %scevgep662 = getelementptr i8, ptr %i.ash, i64 %i.auc
  %i.aud = sub nsw i64 %wide.trip.count.i323.us, %i.aua
  %i.aue = shl nsw i64 %i.aud, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep660, ptr align 4 %scevgep662, i64 %i.aue, i1 false), !tbaa !42
  %i.auf = add i32 %i.asj, %.2.i.us
  %i.aug = sub i32 %i.auf, %.398.i.us
  br label %.loopexit.us

.loopexit120.i.us.loopexit:                       ; preds = %bb.ch, %bb.ce
  %.293.i.us.ph = phi i32 [ %.091123.i.us, %bb.ch ], [ %i.atq, %bb.ce ]
  %i.auh = trunc nuw i64 %indvars.iv.next658 to i32
  br label %.loopexit120.i.us

.loopexit120.i.us:                                ; preds = %.loopexit120.i.us.loopexit, %bb.cb
  %.293.i.us = phi i32 [ 0, %bb.cb ], [ %.293.i.us.ph, %.loopexit120.i.us.loopexit ] ; 4 uses
  %.4.i.us = phi i32 [ 0, %bb.cb ], [ %i.auh, %.loopexit120.i.us.loopexit ] ; 4 uses
  %i.aui = add nsw i32 %.4.i.us, %i.asm
  %i.auj = add nsw i32 %.293.i.us, %i.n
  %i.auk = icmp sgt i32 %i.aui, %i.auj
  br i1 %i.auk, label %Of_SetAddCut.exit455.us, label %.preheader116.i.us

.preheader116.i.us:                               ; preds = %.loopexit120.i.us
  %i.aul = icmp slt i32 %.293.i.us, %i.asm
  br i1 %i.aul, label %.lr.ph130.preheader.i.us, label %.loopexit.us

.lr.ph130.preheader.i.us:                         ; preds = %.preheader116.i.us
  %i.aum = sext i32 %.4.i.us to i64
  %i.aun = sext i32 %.293.i.us to i64             ; 2 uses
  %wide.trip.count153.i.us = zext nneg i32 %i.asm to i64
  %i.auo = shl nsw i64 %i.aum, 2
  %scevgep664.a = getelementptr i8, ptr %i.atb, i64 %i.auo
  %i.aup = shl nsw i64 %i.aun, 2
  %scevgep668 = getelementptr i8, ptr %i.ata, i64 %i.aup
  %i.auq = sub nsw i64 %wide.trip.count153.i.us, %i.aun
  %i.aur = shl nsw i64 %i.auq, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep664.a, ptr align 4 %scevgep668, i64 %i.aur, i1 false), !tbaa !42
  %i.aus = add i32 %i.asm, %.4.i.us
  %i.aut = sub i32 %i.aus, %.293.i.us
  br label %.loopexit.us

.preheader.i.us:                                  ; preds = %bb.ca
  br i1 %i.arz, label %.loopexit.us, label %.lr.ph134.i.us

.lr.ph134.i.us:                                   ; preds = %.preheader.i.us, %bb.cj
  %indvars.iv155.i.us = phi i64 [ %indvars.iv.next156.i.us, %bb.cj ], [ 0, %.preheader.i.us ] ; 4 uses
  %i.auu = getelementptr inbounds nuw [4 x i8], ptr %i.ash, i64 %indvars.iv155.i.us
  %i.auv = load i32, ptr %i.auu, align 4, !tbaa !42 ; 2 uses
  %i.auw = getelementptr inbounds nuw [4 x i8], ptr %i.ata, i64 %indvars.iv155.i.us
  %i.aux = load i32, ptr %i.auw, align 4, !tbaa !42
  %.not115.i.us = icmp eq i32 %i.auv, %i.aux
  br i1 %.not115.i.us, label %bb.cj, label %Of_SetAddCut.exit455.us

bb.cj:                                            ; preds = %.lr.ph134.i.us
  %i.auy = getelementptr inbounds nuw [4 x i8], ptr %i.atb, i64 %indvars.iv155.i.us
  store i32 %i.auv, ptr %i.auy, align 4, !tbaa !42
  %indvars.iv.next156.i.us = add nuw nsw i64 %indvars.iv155.i.us, 1 ; 2 uses
  %exitcond159.not.i.us = icmp eq i64 %indvars.iv.next156.i.us, %wide.trip.count158.i
  br i1 %exitcond159.not.i.us, label %.loopexit.us, label %.lr.ph134.i.us, !llvm.loop !120

.loopexit.us:                                     ; preds = %bb.cj, %.preheader.i.us, %.lr.ph130.preheader.i.us, %.preheader116.i.us, %.lr.ph127.preheader.i.us, %.preheader117.i.us
  %.5.lcssa.sink.i.us = phi i32 [ %i.aug, %.lr.ph127.preheader.i.us ], [ 0, %.preheader.i.us ], [ %i.aut, %.lr.ph130.preheader.i.us ], [ %.2.i.us, %.preheader117.i.us ], [ %.4.i.us, %.preheader116.i.us ], [ %i.n, %bb.cj ]
  %i.auz = getelementptr inbounds nuw i8, ptr %i.asz, i64 16 ; 6 uses
  %.5.lcssa.sink.i.us.fr = freeze i32 %.5.lcssa.sink.i.us ; 2 uses
  %i.ava = shl i32 %.5.lcssa.sink.i.us.fr, 27
  %i.avb = or disjoint i32 %i.ava, 134217727
  store i32 %i.avb, ptr %i.auz, align 8
  %i.avc = load i64, ptr %.1149576.us, align 8, !tbaa !90
  %i.avd = load i64, ptr %.1147568.us, align 8, !tbaa !90
  %i.ave = or i64 %i.avd, %i.avc                  ; 3 uses
  store i64 %i.ave, ptr %i.asz, align 8, !tbaa !90
  %i.avf = icmp sgt i32 %.7569.us, 0              ; 2 uses
  br i1 %i.avf, label %.lr.ph.i328.us, label %Of_SetLastCutIsContained.exit355.us

.lr.ph.i328.us:                                   ; preds = %.loopexit.us
  %i.avg = zext nneg i32 %.7569.us to i64         ; 2 uses
  %i.avh = and i32 %.5.lcssa.sink.i.us.fr, 31     ; 4 uses
  %wide.trip.count.i.i330.us = zext nneg i32 %i.avh to i64 ; 2 uses
  %.not49.i.i331.us = icmp eq i32 %i.avh, 0
  br i1 %.not49.i.i331.us, label %.lr.ph.split.us.i349.us, label %.lr.ph.split.i332.us

.lr.ph.split.i332.us:                             ; preds = %.lr.ph.i328.us, %Of_SetCutIsContainedOrder.exit.thread.i335.us
  %indvars.iv.i333.us = phi i64 [ %indvars.iv.next.i336.us, %Of_SetCutIsContainedOrder.exit.thread.i335.us ], [ 0, %.lr.ph.i328.us ] ; 2 uses
  %i.avi = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i333.us
  %i.avj = load ptr, ptr %i.avi, align 8, !tbaa !93 ; 4 uses
  %i.avk = getelementptr inbounds nuw i8, ptr %i.avj, i64 16
  %i.avl = load i32, ptr %i.avk, align 8
  %i.avm = lshr i32 %i.avl, 27                    ; 4 uses
  %.not.i334.us = icmp samesign ugt i32 %i.avm, %i.avh
  br i1 %.not.i334.us, label %Of_SetCutIsContainedOrder.exit.thread.i335.us, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph.split.i332.us
  %i.avn = load i64, ptr %i.avj, align 8, !tbaa !90 ; 2 uses
  %i.avo = and i64 %i.ave, %i.avn
  %i.avp = icmp eq i64 %i.avo, %i.avn
  br i1 %i.avp, label %bb.cl, label %Of_SetCutIsContainedOrder.exit.thread.i335.us

bb.cl:                                            ; preds = %bb.ck
  %i.avq = icmp eq i32 %i.avh, %i.avm
  br i1 %i.avq, label %.preheader.i.i344.us, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.avr = icmp eq i32 %i.avm, 0
  br i1 %i.avr, label %Of_SetAddCut.exit455.us, label %.lr.ph.i.i338.us

.lr.ph.i.i338.us:                                 ; preds = %bb.cm
  %i.avs = getelementptr inbounds nuw i8, ptr %i.avj, i64 20
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cq, %.lr.ph.i.i338.us
  %indvars.iv.i.i339.us = phi i64 [ 0, %.lr.ph.i.i338.us ], [ %indvars.iv.next.i.i342.us, %bb.cq ] ; 2 uses
  %.038.i.i340.us = phi i32 [ 0, %.lr.ph.i.i338.us ], [ %.1.i.i341.us, %bb.cq ] ; 3 uses
  %i.avt = getelementptr inbounds nuw [4 x i8], ptr %i.atb, i64 %indvars.iv.i.i339.us
  %i.avu = load i32, ptr %i.avt, align 4, !tbaa !42 ; 2 uses
  %i.avv = sext i32 %.038.i.i340.us to i64
  %i.avw = getelementptr inbounds [4 x i8], ptr %i.avs, i64 %i.avv
  %i.avx = load i32, ptr %i.avw, align 4, !tbaa !42 ; 2 uses
  %i.avy = icmp sgt i32 %i.avu, %i.avx
  br i1 %i.avy, label %Of_SetCutIsContainedOrder.exit.thread.i335.us, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.avz = icmp eq i32 %i.avu, %i.avx
  br i1 %i.avz, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.awa = add nsw i32 %.038.i.i340.us, 1         ; 2 uses
  %i.awb = icmp eq i32 %i.awa, %i.avm
  br i1 %i.awb, label %Of_SetAddCut.exit455.us, label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.1.i.i341.us = phi i32 [ %i.awa, %bb.cp ], [ %.038.i.i340.us, %bb.co ]
  %indvars.iv.next.i.i342.us = add nuw nsw i64 %indvars.iv.i.i339.us, 1 ; 2 uses
  %exitcond.not.i.i343.us = icmp eq i64 %indvars.iv.next.i.i342.us, %wide.trip.count.i.i330.us
  br i1 %exitcond.not.i.i343.us, label %Of_SetCutIsContainedOrder.exit.thread.i335.us, label %bb.cn, !llvm.loop !108

.preheader.i.i344.us:                             ; preds = %bb.cl
  %i.awc = getelementptr inbounds nuw i8, ptr %i.avj, i64 20
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cs, %.preheader.i.i344.us
  %indvars.iv53.i.i345.us = phi i64 [ 0, %.preheader.i.i344.us ], [ %indvars.iv.next54.i.i347.us, %bb.cs ] ; 3 uses
  %i.awd = getelementptr inbounds nuw [4 x i8], ptr %i.atb, i64 %indvars.iv53.i.i345.us
  %i.awe = load i32, ptr %i.awd, align 4, !tbaa !42
  %i.awf = getelementptr inbounds nuw [4 x i8], ptr %i.awc, i64 %indvars.iv53.i.i345.us
  %i.awg = load i32, ptr %i.awf, align 4, !tbaa !42
  %.not.i.i346.us = icmp eq i32 %i.awe, %i.awg
  br i1 %.not.i.i346.us, label %bb.cs, label %Of_SetCutIsContainedOrder.exit.thread.i335.us

bb.cs:                                            ; preds = %bb.cr
  %indvars.iv.next54.i.i347.us = add nuw nsw i64 %indvars.iv53.i.i345.us, 1 ; 2 uses
  %exitcond57.not.i.i348.us = icmp eq i64 %indvars.iv.next54.i.i347.us, %wide.trip.count.i.i330.us
  br i1 %exitcond57.not.i.i348.us, label %Of_SetAddCut.exit455.us, label %bb.cr, !llvm.loop !109

Of_SetCutIsContainedOrder.exit.thread.i335.us:    ; preds = %bb.cn, %bb.cq, %bb.cr, %bb.ck, %.lr.ph.split.i332.us
  %indvars.iv.next.i336.us = add nuw nsw i64 %indvars.iv.i333.us, 1 ; 2 uses
  %exitcond.not.i337.us = icmp eq i64 %indvars.iv.next.i336.us, %i.avg
  br i1 %exitcond.not.i337.us, label %Of_SetLastCutIsContained.exit355.us, label %.lr.ph.split.i332.us, !llvm.loop !110

.lr.ph.split.us.i349.us:                          ; preds = %.lr.ph.i328.us, %Of_SetCutIsContainedOrder.exit.thread.us.i352.us
  %indvars.iv39.i350.us = phi i64 [ %indvars.iv.next40.i353.us, %Of_SetCutIsContainedOrder.exit.thread.us.i352.us ], [ 0, %.lr.ph.i328.us ] ; 2 uses
  %i.awh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv39.i350.us
  %i.awi = load ptr, ptr %i.awh, align 8, !tbaa !93 ; 2 uses
  %i.awj = getelementptr inbounds nuw i8, ptr %i.awi, i64 16
  %i.awk = load i32, ptr %i.awj, align 8
  %.not.us.not.i351.us = icmp ult i32 %i.awk, 134217728
  br i1 %.not.us.not.i351.us, label %bb.ct, label %Of_SetCutIsContainedOrder.exit.thread.us.i352.us

bb.ct:                                            ; preds = %.lr.ph.split.us.i349.us
  %i.awl = load i64, ptr %i.awi, align 8, !tbaa !90 ; 2 uses
  %i.awm = and i64 %i.ave, %i.awl
  %i.awn = icmp eq i64 %i.awm, %i.awl
  br i1 %i.awn, label %Of_SetAddCut.exit455.us, label %Of_SetCutIsContainedOrder.exit.thread.us.i352.us

Of_SetCutIsContainedOrder.exit.thread.us.i352.us: ; preds = %bb.ct, %.lr.ph.split.us.i349.us
  %indvars.iv.next40.i353.us = add nuw nsw i64 %indvars.iv39.i350.us, 1 ; 2 uses
  %exitcond43.not.i354.us = icmp eq i64 %indvars.iv.next40.i353.us, %i.avg
  br i1 %exitcond43.not.i354.us, label %Of_SetLastCutIsContained.exit355.us, label %.lr.ph.split.us.i349.us, !llvm.loop !110

Of_SetLastCutIsContained.exit355.us:              ; preds = %Of_SetCutIsContainedOrder.exit.thread.i335.us, %Of_SetCutIsContainedOrder.exit.thread.us.i352.us, %.loopexit.us
  %i.awo = load double, ptr %i.asa, align 8, !tbaa !106
  %i.awp = fadd double %i.awo, 1.000000e+00
  store double %i.awp, ptr %i.asa, align 8, !tbaa !106
  %i.awq = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awq, i64 88
  %i.aws = load i32, ptr %i.awr, align 8, !tbaa !62
  %.not157.us = icmp eq i32 %i.aws, 0
  %.pre675 = load i32, ptr %i.auz, align 8        ; 2 uses
  br i1 %.not157.us, label %bb.dj, label %bb.cu

bb.cu:                                            ; preds = %Of_SetLastCutIsContained.exit355.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.awt = load ptr, ptr %i.asb, align 8, !tbaa !74 ; 4 uses
  %i.awu = lshr i32 %i.asi, 1
  %i.awv = and i32 %i.awu, 67108863               ; 2 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awt, i64 24
  %i.awx = load ptr, ptr %i.aww, align 8, !tbaa !78 ; 2 uses
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awt, i64 8
  %i.awz = load i32, ptr %i.awy, align 8, !tbaa !68 ; 2 uses
  %i.axa = lshr i32 %i.awv, %i.awz
  %i.axb = zext nneg i32 %i.axa to i64
  %i.axc = getelementptr inbounds nuw [8 x i8], ptr %i.awx, i64 %i.axb
  %i.axd = load ptr, ptr %i.axc, align 8, !tbaa !79
  %i.axe = load i32, ptr %i.awt, align 8, !tbaa !65 ; 2 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %i.awt, i64 12
  %i.axg = load i32, ptr %i.axf, align 4, !tbaa !69 ; 2 uses
  %i.axh = and i32 %i.axg, %i.awv
  %i.axi = mul nsw i32 %i.axh, %i.axe
  %i.axj = sext i32 %i.axi to i64
  %i.axk = getelementptr inbounds [8 x i8], ptr %i.axd, i64 %i.axj
  %i.axl = load i64, ptr %i.axk, align 8, !tbaa !99
  %i.axm = lshr i32 %i.asl, 1
  %i.axn = and i32 %i.axm, 67108863               ; 2 uses
  %i.axo = lshr i32 %i.axn, %i.awz
  %i.axp = zext nneg i32 %i.axo to i64
  %i.axq = getelementptr inbounds nuw [8 x i8], ptr %i.awx, i64 %i.axp
  %i.axr = load ptr, ptr %i.axq, align 8, !tbaa !79
  %i.axs = and i32 %i.axg, %i.axn
  %i.axt = mul nsw i32 %i.axs, %i.axe
  %i.axu = sext i32 %i.axt to i64
  %i.axv = getelementptr inbounds [8 x i8], ptr %i.axr, i64 %i.axu
  %i.axw = load i64, ptr %i.axv, align 8, !tbaa !99
  %i.axx = and i32 %i.asi, 1
  %.not.i356.us = icmp ne i32 %i.axx, %i.jr
  %i.axy = sext i1 %.not.i356.us to i64
  %spec.select.i357.us = xor i64 %i.axl, %i.axy   ; 2 uses
  %i.axz = and i32 %i.asl, 1
  %.not35.i.us = icmp ne i32 %i.axz, %i.ju
  %i.aya = sext i1 %.not35.i.us to i64
  %.0.i358.us = xor i64 %i.axw, %i.aya            ; 2 uses
  %i.ayb = lshr i32 %.pre675, 27                  ; 7 uses
  %i.ayc = icmp ne i32 %i.ayb, 0                  ; 2 uses
  %i.ayd = icmp ne i32 %i.asj, 0
  %i.aye = and i1 %i.ayd, %i.ayc
  br i1 %i.aye, label %.lr.ph.preheader.i.i378.us, label %Abc_Tt6Expand.exit.i359.us
end_hunk_1
begin_hunk_2_@Of_ObjMergeOrder:bb.a
  %.fr.i416.us = freeze i32 %i.bhs
  %i.bht = lshr i32 %.fr.i416.us, 27              ; 3 uses
  %i.bhu = icmp eq i32 %i.bht, 0
  %i.bhv = getelementptr inbounds nuw i8, ptr %i.bhq, i64 20
  br i1 %i.bhu, label %.outer.i.split.us.i449.us, label %.outer.i.split.i417.us

.outer.i.split.i417.us:                           ; preds = %.outer.i.i414.us, %Of_SetCutIsContainedOrder.exit.thread.i.i419.us
  %indvars.iv.i.i418.us = phi i64 [ %indvars.iv.next.i.i420.us, %Of_SetCutIsContainedOrder.exit.thread.i.i419.us ], [ %indvars.iv.ph.i.i415.us, %.outer.i.i414.us ] ; 3 uses
  %i.bhw = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i418.us
  %i.bhx = load ptr, ptr %i.bhw, align 8, !tbaa !93 ; 4 uses
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhx, i64 16
  %i.bhz = load i32, ptr %i.bhy, align 8          ; 2 uses
  %i.bia = lshr i32 %i.bhz, 27                    ; 2 uses
  %i.bib = icmp samesign ult i32 %i.bht, %i.bia
  br i1 %i.bib, label %bb.dn, label %Of_SetCutIsContainedOrder.exit.thread.i.i419.us

bb.dn:                                            ; preds = %.outer.i.split.i417.us
  %i.bic = load i64, ptr %i.bhq, align 8, !tbaa !90 ; 2 uses
  %i.bid = load i64, ptr %i.bhx, align 8, !tbaa !90
  %i.bie = and i64 %i.bid, %i.bic
  %i.bif = icmp eq i64 %i.bie, %i.bic
  br i1 %i.bif, label %.lr.ph.i.i.i437.us, label %Of_SetCutIsContainedOrder.exit.thread.i.i419.us

.lr.ph.i.i.i437.us:                               ; preds = %bb.dn
  %i.big = getelementptr inbounds nuw i8, ptr %i.bhx, i64 20
  %wide.trip.count.i.i.i438.us = zext nneg i32 %i.bia to i64
  br label %bb.do

bb.do:                                            ; preds = %bb.dr, %.lr.ph.i.i.i437.us
  %indvars.iv.i.i.i439.us = phi i64 [ 0, %.lr.ph.i.i.i437.us ], [ %indvars.iv.next.i.i.i442.us, %bb.dr ] ; 2 uses
  %.038.i.i.i440.us = phi i32 [ 0, %.lr.ph.i.i.i437.us ], [ %.1.i.i.i441.us, %bb.dr ] ; 3 uses
  %i.bih = getelementptr inbounds nuw [4 x i8], ptr %i.big, i64 %indvars.iv.i.i.i439.us
  %i.bii = load i32, ptr %i.bih, align 4, !tbaa !42 ; 2 uses
  %i.bij = sext i32 %.038.i.i.i440.us to i64
  %i.bik = getelementptr inbounds [4 x i8], ptr %i.bhv, i64 %i.bij
  %i.bil = load i32, ptr %i.bik, align 4, !tbaa !42 ; 2 uses
  %i.bim = icmp sgt i32 %i.bii, %i.bil
  br i1 %i.bim, label %Of_SetCutIsContainedOrder.exit.thread.i.i419.us, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.bin = icmp eq i32 %i.bii, %i.bil
  br i1 %i.bin, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.bio = add nsw i32 %.038.i.i.i440.us, 1       ; 2 uses
  %i.bip = icmp eq i32 %i.bio, %i.bht
  br i1 %i.bip, label %Of_SetCutIsContainedOrder.exit.thread.thread.i.i444.us, label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.1.i.i.i441.us = phi i32 [ %i.bio, %bb.dq ], [ %.038.i.i.i440.us, %bb.dp ]
  %indvars.iv.next.i.i.i442.us = add nuw nsw i64 %indvars.iv.i.i.i439.us, 1 ; 2 uses
  %exitcond.not.i.i.i443.us = icmp eq i64 %indvars.iv.next.i.i.i442.us, %wide.trip.count.i.i.i438.us
  br i1 %exitcond.not.i.i.i443.us, label %Of_SetCutIsContainedOrder.exit.thread.i.i419.us, label %bb.do, !llvm.loop !108

Of_SetCutIsContainedOrder.exit.thread.i.i419.us:  ; preds = %bb.do, %bb.dr, %bb.dn, %.outer.i.split.i417.us
  %indvars.iv.next.i.i420.us = add nuw nsw i64 %indvars.iv.i.i418.us, 1 ; 2 uses
  %exitcond.not.i.i421.us = icmp eq i64 %indvars.iv.next.i.i420.us, %i.bhn
  br i1 %exitcond.not.i.i421.us, label %._crit_edge.i.i422.us, label %.outer.i.split.i417.us, !llvm.loop !114

.outer.i.split.us.i449.us:                        ; preds = %.outer.i.i414.us, %Of_SetCutIsContainedOrder.exit.thread.i.us.i452.us
  %indvars.iv.i.us.i450.us = phi i64 [ %indvars.iv.next.i.us.i453.us, %Of_SetCutIsContainedOrder.exit.thread.i.us.i452.us ], [ %indvars.iv.ph.i.i415.us, %.outer.i.i414.us ] ; 3 uses
  %i.biq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.us.i450.us
  %i.bir = load ptr, ptr %i.biq, align 8, !tbaa !93 ; 3 uses
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bir, i64 16
  %i.bit = load i32, ptr %i.bis, align 8          ; 2 uses
  %.not.i451.us = icmp ult i32 %i.bit, 134217728
  br i1 %.not.i451.us, label %Of_SetCutIsContainedOrder.exit.thread.i.us.i452.us, label %bb.ds

bb.ds:                                            ; preds = %.outer.i.split.us.i449.us
  %i.biu = load i64, ptr %i.bhq, align 8, !tbaa !90 ; 2 uses
  %i.biv = load i64, ptr %i.bir, align 8, !tbaa !90
  %i.biw = and i64 %i.biv, %i.biu
  %i.bix = icmp eq i64 %i.biw, %i.biu
  br i1 %i.bix, label %Of_SetCutIsContainedOrder.exit.thread.thread.i.i444.us, label %Of_SetCutIsContainedOrder.exit.thread.i.us.i452.us

Of_SetCutIsContainedOrder.exit.thread.i.us.i452.us: ; preds = %bb.ds, %.outer.i.split.us.i449.us
  %indvars.iv.next.i.us.i453.us = add nuw nsw i64 %indvars.iv.i.us.i450.us, 1 ; 2 uses
  %exitcond.not.i.us.i454.us = icmp eq i64 %indvars.iv.next.i.us.i453.us, %i.bhn
  br i1 %exitcond.not.i.us.i454.us, label %._crit_edge.i.i422.us, label %.outer.i.split.us.i449.us, !llvm.loop !114

Of_SetCutIsContainedOrder.exit.thread.thread.i.i444.us: ; preds = %bb.ds, %bb.dq
  %indvars.iv.i19.i445.us = phi i64 [ %indvars.iv.i.i418.us, %bb.dq ], [ %indvars.iv.i.us.i450.us, %bb.ds ]
  %.pn.i446.us = phi ptr [ %i.bhx, %bb.dq ], [ %i.bir, %bb.ds ]
  %i.biy = phi i32 [ %i.bhz, %bb.dq ], [ %i.bit, %bb.ds ]
  %i.biz = getelementptr inbounds nuw i8, ptr %.pn.i446.us, i64 16
  %i.bja = or i32 %i.biy, -134217728
  store i32 %i.bja, ptr %i.biz, align 8
  %indvars.iv.next74.i.i447.us = add nuw nsw i64 %indvars.iv.i19.i445.us, 1 ; 2 uses
  %exitcond.not75.i.i448.us = icmp eq i64 %indvars.iv.next74.i.i447.us, %i.bhn
  br i1 %exitcond.not75.i.i448.us, label %.preheader.i.i423.us, label %.outer.i.i414.us, !llvm.loop !114

._crit_edge.i.i422.us:                            ; preds = %Of_SetCutIsContainedOrder.exit.thread.i.i419.us, %Of_SetCutIsContainedOrder.exit.thread.i.us.i452.us
  br i1 %i.bhp, label %Of_SetLastCutContainsArea.exit.i432.us, label %.preheader.i.i423.us

.preheader.i.i423.us:                             ; preds = %Of_SetCutIsContainedOrder.exit.thread.thread.i.i444.us, %._crit_edge.i.i422.us
  %i.bjb = add nuw i32 %.7569.us, 1
  %wide.trip.count62.i.i424.us = zext i32 %i.bjb to i64
  br label %.lr.ph55.i.i425.us

.lr.ph55.i.i425.us:                               ; preds = %bb.dw, %.preheader.i.i423.us
  %indvars.iv59.i.i426.us = phi i64 [ 0, %.preheader.i.i423.us ], [ %indvars.iv.next60.i.i429.us, %bb.dw ] ; 3 uses
  %.04054.i.i427.us = phi i32 [ 0, %.preheader.i.i423.us ], [ %.141.i.i428.us, %bb.dw ] ; 3 uses
  %i.bjc = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv59.i.i426.us ; 2 uses
  %i.bjd = load ptr, ptr %i.bjc, align 8, !tbaa !93 ; 2 uses
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bjd, i64 16
  %i.bjf = load i32, ptr %i.bje, align 8
  %i.bjg = icmp ugt i32 %i.bjf, -134217729
  br i1 %i.bjg, label %bb.dw, label %bb.dt

bb.dt:                                            ; preds = %.lr.ph55.i.i425.us
  %i.bjh = sext i32 %.04054.i.i427.us to i64      ; 2 uses
  %i.bji = icmp sgt i64 %indvars.iv59.i.i426.us, %i.bjh
  br i1 %i.bji, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.bjj = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bjh ; 2 uses
  %i.bjk = load ptr, ptr %i.bjj, align 8, !tbaa !93
  store ptr %i.bjd, ptr %i.bjj, align 8, !tbaa !93
  store ptr %i.bjk, ptr %i.bjc, align 8, !tbaa !93
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.bjl = add nsw i32 %.04054.i.i427.us, 1
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %.lr.ph55.i.i425.us
  %.141.i.i428.us = phi i32 [ %.04054.i.i427.us, %.lr.ph55.i.i425.us ], [ %i.bjl, %bb.dv ] ; 2 uses
  %indvars.iv.next60.i.i429.us = add nuw nsw i64 %indvars.iv59.i.i426.us, 1 ; 2 uses
  %exitcond63.not.i.i430.us = icmp eq i64 %indvars.iv.next60.i.i429.us, %wide.trip.count62.i.i424.us
  br i1 %exitcond63.not.i.i430.us, label %._crit_edge56.loopexit.i.i431.us, label %.lr.ph55.i.i425.us, !llvm.loop !115

._crit_edge56.loopexit.i.i431.us:                 ; preds = %bb.dw
  %i.bjm = add nsw i32 %.141.i.i428.us, -1
  br label %Of_SetLastCutContainsArea.exit.i432.us

Of_SetLastCutContainsArea.exit.i432.us:           ; preds = %._crit_edge56.loopexit.i.i431.us, %._crit_edge.i.i422.us
  %.0.i.i433.us = phi i32 [ %i.bjm, %._crit_edge56.loopexit.i.i431.us ], [ %.7569.us, %._crit_edge.i.i422.us ] ; 7 uses
  %i.bjn = icmp sgt i32 %.0.i.i433.us, 0
  br i1 %i.bjn, label %.lr.ph.i8.i434.us.preheader, label %Of_SetSortByArea.exit.i410.us

.lr.ph.i8.i434.us.preheader:                      ; preds = %Of_SetLastCutContainsArea.exit.i432.us
  %i.bjo = zext nneg i32 %.0.i.i433.us to i64
  br label %.lr.ph.i8.i434.us

.lr.ph.i8.i434.us:                                ; preds = %.lr.ph.i8.i434.us.preheader, %Of_CutCompareArea.exit.i.i436.us
  %indvars.iv669 = phi i64 [ %i.bjo, %.lr.ph.i8.i434.us.preheader ], [ %indvars.iv.next670, %Of_CutCompareArea.exit.i.i436.us ] ; 3 uses
  %i.bjp = getelementptr [8 x i8], ptr %i.c, i64 %indvars.iv669 ; 3 uses
  %i.bjq = getelementptr i8, ptr %i.bjp, i64 -8   ; 2 uses
  %i.bjr = load ptr, ptr %i.bjq, align 8, !tbaa !93 ; 4 uses
  %i.bjs = load ptr, ptr %i.bjp, align 8, !tbaa !93 ; 4 uses
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.bjr, i64 8
  %i.bju = load i32, ptr %i.bjt, align 8, !tbaa !84 ; 2 uses
  %i.bjv = getelementptr inbounds nuw i8, ptr %i.bjs, i64 8
  %i.bjw = load i32, ptr %i.bjv, align 8, !tbaa !84 ; 2 uses
  %i.bjx = icmp slt i32 %i.bju, %i.bjw
  br i1 %i.bjx, label %Of_SetSortByArea.exit.i410.us, label %bb.dx

bb.dx:                                            ; preds = %.lr.ph.i8.i434.us
  %i.bjy = icmp sgt i32 %i.bju, %i.bjw
  br i1 %i.bjy, label %Of_CutCompareArea.exit.i.i436.us, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.bjz = getelementptr inbounds nuw i8, ptr %i.bjr, i64 12
  %i.bka = load i32, ptr %i.bjz, align 4, !tbaa !86 ; 2 uses
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.bjs, i64 12
  %i.bkc = load i32, ptr %i.bkb, align 4, !tbaa !86 ; 2 uses
  %i.bkd = icmp slt i32 %i.bka, %i.bkc
  br i1 %i.bkd, label %Of_SetSortByArea.exit.i410.us, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.bke = icmp sgt i32 %i.bka, %i.bkc
  br i1 %i.bke, label %Of_CutCompareArea.exit.i.i436.us, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bjr, i64 16
  %i.bkg = load i32, ptr %i.bkf, align 8
  %i.bkh = lshr i32 %i.bkg, 27
  %i.bki = getelementptr inbounds nuw i8, ptr %i.bjs, i64 16
  %i.bkj = load i32, ptr %i.bki, align 8
  %i.bkk = lshr i32 %i.bkj, 27
  %i.bkl = icmp samesign ult i32 %i.bkh, %i.bkk
  br i1 %i.bkl, label %Of_SetSortByArea.exit.i410.us, label %Of_CutCompareArea.exit.i.i436.us

Of_CutCompareArea.exit.i.i436.us:                 ; preds = %bb.ea, %bb.dz, %bb.dx
  store ptr %i.bjs, ptr %i.bjq, align 8, !tbaa !93
  store ptr %i.bjr, ptr %i.bjp, align 8, !tbaa !93
  %indvars.iv.next670 = add nsw i64 %indvars.iv669, -1
  %i.bkm = icmp sgt i64 %indvars.iv669, 1
  br i1 %i.bkm, label %.lr.ph.i8.i434.us, label %Of_SetSortByArea.exit.i410.us, !llvm.loop !116

Of_SetSortByArea.exit.i410.us:                    ; preds = %.lr.ph.i8.i434.us, %bb.dy, %bb.ea, %Of_CutCompareArea.exit.i.i436.us, %Of_SetLastCutContainsArea.exit.i432.us, %bb.dm
  %.0.i10.i411.us = phi i32 [ %.7569.us, %bb.dm ], [ %.0.i.i433.us, %Of_SetLastCutContainsArea.exit.i432.us ], [ %.0.i.i433.us, %Of_CutCompareArea.exit.i.i436.us ], [ %.0.i.i433.us, %bb.ea ], [ %.0.i.i433.us, %bb.dy ], [ %.0.i.i433.us, %.lr.ph.i8.i434.us ]
  %i.bkn = add nsw i32 %.0.i10.i411.us, 1
  %i.bko = call noundef i32 @llvm.smin.i32(i32 %i.bkn, i32 %i.asf)
  br label %Of_SetAddCut.exit455.us

Of_SetAddCut.exit455.us:                          ; preds = %bb.ci, %.lr.ph134.i.us, %bb.cm, %bb.ct, %bb.cp, %bb.cs, %Of_SetSortByArea.exit.i410.us, %Of_CutParams.exit409.us, %.loopexit120.i.us, %.loopexit121.i.us, %.preheader118.i.us, %bb.bz
  %.8.us = phi i32 [ %.7569.us, %bb.bz ], [ %.7569.us, %.preheader118.i.us ], [ 1, %Of_CutParams.exit409.us ], [ %i.bko, %Of_SetSortByArea.exit.i410.us ], [ %.7569.us, %.loopexit120.i.us ], [ %.7569.us, %bb.cs ], [ %.7569.us, %.loopexit121.i.us ], [ %.7569.us, %.lr.ph134.i.us ], [ %.7569.us, %bb.cp ], [ %.7569.us, %bb.cm ], [ %.7569.us, %bb.ct ], [ %.7569.us, %bb.ci ] ; 3 uses
  %i.bkp = getelementptr inbounds nuw i8, ptr %.1147568.us, i64 48 ; 2 uses
  %i.bkq = icmp ult ptr %i.bkp, %i.kc
  br i1 %i.bkq, label %bb.by, label %._crit_edge574.us, !llvm.loop !122

._crit_edge574.us:                                ; preds = %Of_SetAddCut.exit455.us
  %i.bkr = getelementptr inbounds nuw i8, ptr %.1149576.us, i64 48 ; 2 uses
  %i.bks = icmp ult ptr %i.bkr, %i.ka
  br i1 %i.bks, label %.preheader.us, label %.loopexit488, !llvm.loop !123

.loopexit488:                                     ; preds = %._crit_edge574.us, %.preheader.lr.ph, %Gia_ObjIsXor.exit, %._crit_edge561
  %.9 = phi i32 [ %.2.lcssa, %._crit_edge561 ], [ %.1, %Gia_ObjIsXor.exit ], [ %.1, %.preheader.lr.ph ], [ %.8.us, %._crit_edge574.us ] ; 7 uses
  %i.bkt = load ptr, ptr %i.c, align 16, !tbaa !93 ; 2 uses
  %i.bku = getelementptr inbounds nuw i8, ptr %i.bkt, i64 12
  %i.bkv = load i32, ptr %i.bku, align 4, !tbaa !86
  %i.bkw = getelementptr i8, ptr %0, i64 64
  %.val176 = load ptr, ptr %i.bkw, align 8, !tbaa !41
  %i.bkx = getelementptr inbounds [4 x i8], ptr %.val176, i64 %i.f
  store i32 %i.bkv, ptr %i.bkx, align 4, !tbaa !42
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bkt, i64 8
  %i.bkz = load i32, ptr %i.bky, align 8, !tbaa !84
  %i.bla = getelementptr i8, ptr %0, i64 80
  %.val177 = load ptr, ptr %i.bla, align 8, !tbaa !41
  %i.blb = getelementptr inbounds [4 x i8], ptr %.val177, i64 %i.f
  store i32 %i.bkz, ptr %i.blb, align 4, !tbaa !42
  %i.blc = icmp sgt i32 %.9, 0                    ; 2 uses
  br i1 %i.blc, label %.lr.ph.preheader.i458, label %._crit_edge.i456

.lr.ph.preheader.i458:                            ; preds = %.loopexit488
  %wide.trip.count.i459 = zext nneg i32 %.9 to i64 ; 2 uses
  %xtraiter1113 = and i64 %wide.trip.count.i459, 3 ; 3 uses
  %i.bld = icmp ult i32 %.9, 4
  br i1 %i.bld, label %.lr.ph.i460.epil.preheader, label %.lr.ph.preheader.i458.new

.lr.ph.preheader.i458.new:                        ; preds = %.lr.ph.preheader.i458
  %unroll_iter1117 = and i64 %wide.trip.count.i459, 2147483644
  br label %.lr.ph.i460

.lr.ph.i460:                                      ; preds = %.lr.ph.i460, %.lr.ph.preheader.i458.new
  %indvars.iv.i461 = phi i64 [ 0, %.lr.ph.preheader.i458.new ], [ %indvars.iv.next.i462.3, %.lr.ph.i460 ] ; 5 uses
  %.03945.i = phi i32 [ 1, %.lr.ph.preheader.i458.new ], [ %i.bmi, %.lr.ph.i460 ]
  %niter1118 = phi i64 [ 0, %.lr.ph.preheader.i458.new ], [ %niter1118.next.3, %.lr.ph.i460 ]
  %i.ble = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i461
  %i.blf = load ptr, ptr %i.ble, align 16, !tbaa !93
  %i.blg = getelementptr inbounds nuw i8, ptr %i.blf, i64 16
  %i.blh = load i32, ptr %i.blg, align 8
  %i.bli = lshr i32 %i.blh, 27
  %i.blj = add nuw nsw i32 %.03945.i, 4
  %i.blk = add nuw nsw i32 %i.blj, %i.bli
  %i.bll = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i461
  %i.blm = getelementptr inbounds nuw i8, ptr %i.bll, i64 8
  %i.bln = load ptr, ptr %i.blm, align 8, !tbaa !93
  %i.blo = getelementptr inbounds nuw i8, ptr %i.bln, i64 16
  %i.blp = load i32, ptr %i.blo, align 8
  %i.blq = lshr i32 %i.blp, 27
  %i.blr = add nuw nsw i32 %i.blk, 4
  %i.bls = add nuw nsw i32 %i.blr, %i.blq
  %i.blt = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i461
  %i.blu = getelementptr inbounds nuw i8, ptr %i.blt, i64 16
  %i.blv = load ptr, ptr %i.blu, align 16, !tbaa !93
  %i.blw = getelementptr inbounds nuw i8, ptr %i.blv, i64 16
  %i.blx = load i32, ptr %i.blw, align 8
  %i.bly = lshr i32 %i.blx, 27
  %i.blz = add nuw nsw i32 %i.bls, 4
  %i.bma = add nuw nsw i32 %i.blz, %i.bly
  %i.bmb = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i461
  %i.bmc = getelementptr inbounds nuw i8, ptr %i.bmb, i64 24
  %i.bmd = load ptr, ptr %i.bmc, align 8, !tbaa !93
  %i.bme = getelementptr inbounds nuw i8, ptr %i.bmd, i64 16
  %i.bmf = load i32, ptr %i.bme, align 8
  %i.bmg = lshr i32 %i.bmf, 27
  %i.bmh = add nuw nsw i32 %i.bma, 4
  %i.bmi = add nuw nsw i32 %i.bmh, %i.bmg         ; 3 uses
  %indvars.iv.next.i462.3 = add nuw nsw i64 %indvars.iv.i461, 4 ; 2 uses
  %niter1118.next.3 = add i64 %niter1118, 4       ; 2 uses
  %niter1118.ncmp.3 = icmp eq i64 %niter1118.next.3, %unroll_iter1117
  br i1 %niter1118.ncmp.3, label %._crit_edge.i456.loopexit.unr-lcssa, label %.lr.ph.i460, !llvm.loop !124

._crit_edge.i456.loopexit.unr-lcssa:              ; preds = %.lr.ph.i460
  %lcmp.mod1114.not = icmp eq i64 %xtraiter1113, 0
  br i1 %lcmp.mod1114.not, label %._crit_edge.i456, label %.lr.ph.i460.epil.preheader

.lr.ph.i460.epil.preheader:                       ; preds = %._crit_edge.i456.loopexit.unr-lcssa, %.lr.ph.preheader.i458
  %indvars.iv.i461.epil.init = phi i64 [ 0, %.lr.ph.preheader.i458 ], [ %indvars.iv.next.i462.3, %._crit_edge.i456.loopexit.unr-lcssa ]
  %.03945.i.epil.init = phi i32 [ 1, %.lr.ph.preheader.i458 ], [ %i.bmi, %._crit_edge.i456.loopexit.unr-lcssa ]
  %lcmp.mod1116 = icmp ne i64 %xtraiter1113, 0
  call void @llvm.assume(i1 %lcmp.mod1116)
  br label %.lr.ph.i460.epil

.lr.ph.i460.epil:                                 ; preds = %.lr.ph.i460.epil, %.lr.ph.i460.epil.preheader
  %indvars.iv.i461.epil = phi i64 [ %indvars.iv.i461.epil.init, %.lr.ph.i460.epil.preheader ], [ %indvars.iv.next.i462.epil, %.lr.ph.i460.epil ] ; 2 uses
  %.03945.i.epil = phi i32 [ %.03945.i.epil.init, %.lr.ph.i460.epil.preheader ], [ %i.bmp, %.lr.ph.i460.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.i460.epil.preheader ], [ %epil.iter.next, %.lr.ph.i460.epil ]
  %i.bmj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i461.epil
  %i.bmk = load ptr, ptr %i.bmj, align 8, !tbaa !93
  %i.bml = getelementptr inbounds nuw i8, ptr %i.bmk, i64 16
  %i.bmm = load i32, ptr %i.bml, align 8
  %i.bmn = lshr i32 %i.bmm, 27
  %i.bmo = add nuw nsw i32 %.03945.i.epil, 4
  %i.bmp = add nuw nsw i32 %i.bmo, %i.bmn         ; 2 uses
  %indvars.iv.next.i462.epil = add nuw nsw i64 %indvars.iv.i461.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1113
  br i1 %epil.iter.cmp.not, label %._crit_edge.i456, label %.lr.ph.i460.epil, !llvm.loop !125

._crit_edge.i456:                                 ; preds = %._crit_edge.i456.loopexit.unr-lcssa, %.lr.ph.i460.epil, %.loopexit488
  %.039.lcssa.i = phi i32 [ 1, %.loopexit488 ], [ %i.bmi, %._crit_edge.i456.loopexit.unr-lcssa ], [ %i.bmp, %.lr.ph.i460.epil ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %.loopexit488 ], [ %.9, %.lr.ph.i460.epil ], [ %.9, %._crit_edge.i456.loopexit.unr-lcssa ]
  %i.bmq = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.bmr = load i32, ptr %i.bmq, align 8, !tbaa !58 ; 3 uses
  %i.bms = and i32 %i.bmr, 65535
  %i.bmt = add nuw nsw i32 %i.bms, %.039.lcssa.i
  %i.bmu = icmp samesign ugt i32 %i.bmt, 65535
  br i1 %i.bmu, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %._crit_edge.i456
  %i.bmv = and i32 %i.bmr, -65536
  %i.bmw = add i32 %i.bmv, 65536                  ; 2 uses
  store i32 %i.bmw, ptr %i.bmq, align 8, !tbaa !58
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %._crit_edge.i456
  %i.bmx = phi i32 [ %i.bmw, %bb.eb ], [ %i.bmr, %._crit_edge.i456 ] ; 3 uses
  %i.bmy = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bmz = getelementptr i8, ptr %0, i64 28       ; 3 uses
  %.val.i457 = load i32, ptr %i.bmz, align 4, !tbaa !75 ; 6 uses
  %i.bna = ashr i32 %i.bmx, 16                    ; 2 uses
  %i.bnb = icmp eq i32 %.val.i457, %i.bna
  br i1 %i.bnb, label %bb.ed, label %bb.em

bb.ed:                                            ; preds = %bb.ec
  %i.bnc = call noalias dereferenceable_or_null(262144) ptr @calloc(i64 noundef 65536, i64 noundef 4) #25
  %i.bnd = load i32, ptr %i.bmy, align 8, !tbaa !60
  %i.bne = icmp eq i32 %.val.i457, %i.bnd
  br i1 %i.bne, label %bb.ee, label %.Vec_PtrPush.exit_crit_edge.i

.Vec_PtrPush.exit_crit_edge.i:                    ; preds = %bb.ed
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !59
  br label %Vec_PtrPush.exit.i

bb.ee:                                            ; preds = %bb.ed
  %i.bnf = icmp slt i32 %.val.i457, 16
  br i1 %i.bnf, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %bb.ee
  %i.bng = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bnh = load ptr, ptr %i.bng, align 8, !tbaa !59 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.bnh, null
  br i1 %.not9.i.i.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.bni = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.bnh, i64 noundef 128) #27
  br label %Vec_PtrGrow.exit.i.i

bb.eh:                                            ; preds = %bb.ef
  %i.bnj = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #26
  br label %Vec_PtrGrow.exit.i.i

Vec_PtrGrow.exit.i.i:                             ; preds = %bb.eh, %bb.eg
  %i.bnk = phi ptr [ %i.bni, %bb.eg ], [ %i.bnj, %bb.eh ] ; 2 uses
  store ptr %i.bnk, ptr %i.bng, align 8, !tbaa !59
  br label %Vec_PtrGrow.exit12.sink.split.i.i

bb.ei:                                            ; preds = %bb.ee
  %i.bnl = shl nuw nsw i32 %.val.i457, 1          ; 2 uses
  %i.bnm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bnn = load ptr, ptr %i.bnm, align 8, !tbaa !59 ; 2 uses
  %.not9.i11.i.i = icmp eq ptr %i.bnn, null
  %i.bno = zext nneg i32 %i.bnl to i64
  %i.bnp = shl nuw nsw i64 %i.bno, 3              ; 2 uses
  br i1 %.not9.i11.i.i, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.bnq = call ptr @realloc(ptr noundef nonnull %i.bnn, i64 noundef %i.bnp) #27
  br label %bb.el

bb.ek:                                            ; preds = %bb.ei
  %i.bnr = call noalias ptr @malloc(i64 noundef %i.bnp) #26
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.bns = phi ptr [ %i.bnq, %bb.ej ], [ %i.bnr, %bb.ek ] ; 2 uses
  store ptr %i.bns, ptr %i.bnm, align 8, !tbaa !59
  br label %Vec_PtrGrow.exit12.sink.split.i.i

Vec_PtrGrow.exit12.sink.split.i.i:                ; preds = %bb.el, %Vec_PtrGrow.exit.i.i
  %i.bnt = phi ptr [ %i.bns, %bb.el ], [ %i.bnk, %Vec_PtrGrow.exit.i.i ]
  %spec.select.sink.i.i = phi i32 [ %i.bnl, %bb.el ], [ 16, %Vec_PtrGrow.exit.i.i ]
  store i32 %spec.select.sink.i.i, ptr %i.bmy, align 8, !tbaa !60
  %.pre62.i = load i32, ptr %i.bmz, align 4, !tbaa !75
  %.pre63.pre.i = load i32, ptr %i.bmq, align 8, !tbaa !58 ; 2 uses
  %.pre66.i = ashr i32 %.pre63.pre.i, 16
  br label %Vec_PtrPush.exit.i

Vec_PtrPush.exit.i:                               ; preds = %Vec_PtrGrow.exit12.sink.split.i.i, %.Vec_PtrPush.exit_crit_edge.i
  %.pre65.pre-phi.i = phi i32 [ %.val.i457, %.Vec_PtrPush.exit_crit_edge.i ], [ %.pre66.i, %Vec_PtrGrow.exit12.sink.split.i.i ]
  %.pre63.i = phi i32 [ %i.bmx, %.Vec_PtrPush.exit_crit_edge.i ], [ %.pre63.pre.i, %Vec_PtrGrow.exit12.sink.split.i.i ]
  %i.bnu = phi i32 [ %.val.i457, %.Vec_PtrPush.exit_crit_edge.i ], [ %.pre62.i, %Vec_PtrGrow.exit12.sink.split.i.i ] ; 2 uses
  %i.bnv = phi ptr [ %.pre.i, %.Vec_PtrPush.exit_crit_edge.i ], [ %i.bnt, %Vec_PtrGrow.exit12.sink.split.i.i ]
  %i.bnw = add nsw i32 %i.bnu, 1
  store i32 %i.bnw, ptr %i.bmz, align 4, !tbaa !75
  %i.bnx = sext i32 %i.bnu to i64
  %i.bny = getelementptr inbounds [8 x i8], ptr %i.bnv, i64 %i.bnx
  store ptr %i.bnc, ptr %i.bny, align 8, !tbaa !76
  br label %bb.em

bb.em:                                            ; preds = %Vec_PtrPush.exit.i, %bb.ec
end_hunk_2
