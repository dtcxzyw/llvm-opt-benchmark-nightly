inline.NumInlined: 37
inline.NumDeleted: 11
begin_hunk_0_@FSE_readNCount_body_bmi2:bb.a
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
  store i16 %i.bn, ptr %i.bq, align 2, !tbaa !13
  %i.br = icmp ne i32 %i.bk, 0
  %i.bs = icmp slt i32 %.1162.i, %.0158.i
  br i1 %i.bs, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bt = icmp slt i32 %.1162.i, 2
  br i1 %i.bt, label %.thread8, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %.1162.i, i1 true) ; 2 uses
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
  br i1 %.not181.i, label %bb.u, label %._crit_edge25, !prof !10

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
  %.6.i.val = load i32, ptr %.6.i, align 1, !tbaa !8
  %i.cf = lshr i32 %.6.i.val, %.7151.i
  br label %bb.e

.thread8:                                         ; preds = %bb.s, %bb.q, %._crit_edge
  %.2163.i = phi i32 [ %.0161.i, %._crit_edge ], [ %.1162.i, %bb.q ], [ %.1162.i, %bb.s ]
  %.9.i = phi i32 [ %i.ar, %._crit_edge ], [ %.6150.i, %bb.q ], [ %.6150.i, %bb.s ] ; 2 uses
  %.3143.i = phi i32 [ %i.ap, %._crit_edge ], [ %i.bo, %bb.q ], [ %i.bo, %bb.s ] ; 2 uses
  %.8.i = phi ptr [ %.1135.i.lcssa, %._crit_edge ], [ %.5.i, %bb.q ], [ %.5.i, %bb.s ]
  %.not186.i = icmp eq i32 %.2163.i, 1
  br i1 %.not186.i, label %bb.x, label %FSE_readNCount_body.exit

bb.x:                                             ; preds = %.thread8
  %i.cg = icmp ugt i32 %.3143.i, %i.d
  br i1 %i.cg, label %FSE_readNCount_body.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = icmp sgt i32 %.9.i, 32
  br i1 %i.ch, label %FSE_readNCount_body.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = add i32 %.3143.i, -1
  store i32 %i.ci, ptr %1, align 4, !tbaa !8
  %i.cj = add nsw i32 %.9.i, 7
  %i.ck = ashr i32 %i.cj, 3
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr %.8.i, i64 %i.cl
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %3 to i64
  %i.cp = sub i64 %i.cn, %i.co
  br label %FSE_readNCount_body.exit

FSE_readNCount_body.exit:                         ; preds = %bb.b, %bb.c, %.thread8, %bb.x, %bb.y, %bb.z
  %.1130.i = phi i64 [ %.0129.i, %bb.b ], [ %i.cp, %bb.z ], [ -44, %bb.c ], [ -20, %.thread8 ], [ -48, %bb.x ], [ -20, %bb.y ]
  ret i64 %.1130.i
}

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i64 @FSE_readNCount(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @FSE_readNCount_bmi2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define range(i64 -119, -9223372036854775808) i64 @HUF_readStats(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [219 x i32], align 16             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call i64 @HUF_readStats_wksp(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull %i.a, i64 noundef 876, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define range(i64 -119, -9223372036854775808) i64 @HUF_readStats_wksp(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8, i32 noundef %9) local_unnamed_addr #1 {
bb.a:
  %i.a = and i32 %9, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i64 @HUF_readStats_body_bmi2(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8)
  br label %HUF_readStats_body_default.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp eq i64 %6, 0
  br i1 %.not.i.i, label %HUF_readStats_body_default.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load i8, ptr %5, align 1, !tbaa !16      ; 2 uses
  %i.d = zext i8 %i.c to i64                      ; 7 uses
  %i.e = icmp slt i8 %i.c, 0
  br i1 %i.e, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.f = add nsw i64 %i.d, -127                   ; 6 uses
  %i.g = add nsw i64 %i.d, -126
  %i.h = lshr i64 %i.g, 1                         ; 2 uses
  %.not88.i.i = icmp ult i64 %i.h, %6
  br i1 %.not88.i.i, label %bb.f, label %HUF_readStats_body_default.exit

bb.f:                                             ; preds = %bb.e
  %.not89.i.i = icmp ult i64 %i.f, %1
  br i1 %.not89.i.i, label %iter.check, label %HUF_readStats_body_default.exit

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
  %10 = shl nuw i64 %index, 1                     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 %index ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %wide.load.a = load <8 x i8>, ptr %i.s, align 1, !tbaa !16, !alias.scope !17
  %wide.load31.a = load <8 x i8>, ptr %i.t, align 1, !tbaa !16, !alias.scope !17
  %i.u = lshr <8 x i8> %wide.load.a, splat (i8 4)
  %i.v = lshr <8 x i8> %wide.load31.a, splat (i8 4)
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load32 = load <8 x i8>, ptr %i.s, align 1, !tbaa !16, !alias.scope !17
  %wide.load33 = load <8 x i8>, ptr %i.t, align 1, !tbaa !16, !alias.scope !17
  %i.y = and <8 x i8> %wide.load32, splat (i8 15)
  %i.z = and <8 x i8> %wide.load33, splat (i8 15)
  %interleaved.vec.a = shufflevector <8 x i8> %i.u, <8 x i8> %i.y, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.a, ptr %11, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  %interleaved.vec34.a = shufflevector <8 x i8> %i.v, <8 x i8> %i.z, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec34.a, ptr %i.x, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %.loopexit.thread.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec36 = and i64 %i.l, -4                     ; 3 uses
  %i.ab = shl i64 %n.vec36, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 3 uses
  %i.ac = shl nuw i64 %index37, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 %index37
  %wide.load38 = load <4 x i8>, ptr %i.ad, align 1, !tbaa !16, !alias.scope !17 ; 2 uses
  %i.ae = lshr <4 x i8> %wide.load38, splat (i8 4)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.ag = and <4 x i8> %wide.load38, splat (i8 15)
  %interleaved.vec40 = shufflevector <4 x i8> %i.ae, <4 x i8> %i.ag, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec40, ptr %i.af, align 1, !tbaa !16, !alias.scope !20, !noalias !17
  %index.next41 = add nuw i64 %index37, 4         ; 2 uses
  %i.ah = icmp eq i64 %index.next41, %n.vec36
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !26

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %i.l, %n.vec36
  br i1 %cmp.n42, label %.loopexit.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.r, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ai = phi i64 [ %i.ar, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.aj = lshr exact i64 %i.ai, 1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.aj ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !16
  %i.am = lshr i8 %i.al, 4
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai ; 2 uses
  store i8 %i.am, ptr %i.an, align 1, !tbaa !16
  %i.ao = load i8, ptr %i.ak, align 1, !tbaa !16
  %i.ap = and i8 %i.ao, 15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !16
  %i.ar = add nuw nsw i64 %i.ai, 2                ; 2 uses
  %i.as = icmp samesign ugt i64 %i.f, %i.ar
  br i1 %i.as, label %.lr.ph.i, label %.loopexit.thread.i, !llvm.loop !27

.loopexit.thread.i:                               ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  br label %.lr.ph13.preheader.i

bb.g:                                             ; preds = %bb.d
  %.not86.i.i = icmp ugt i64 %6, %i.d
  br i1 %.not86.i.i, label %bb.h, label %HUF_readStats_body_default.exit

bb.h:                                             ; preds = %bb.g
  %i.at = add i64 %1, -1
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.av = tail call i64 @FSE_decompress_wksp_bmi2(ptr noundef %0, i64 noundef %i.at, ptr noundef nonnull %i.au, i64 noundef %i.d, i32 noundef 6, ptr noundef %7, i64 noundef %8, i32 noundef 0) #10 ; 4 uses
  %i.aw = icmp ult i64 %i.av, -119
  br i1 %i.aw, label %.loopexit.i, label %HUF_readStats_body_default.exit

.loopexit.i:                                      ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  %.not90.i10.not.i = icmp eq i64 %i.av, 0
  br i1 %.not90.i10.not.i, label %HUF_readStats_body_default.exit, label %.lr.ph13.preheader.i

.lr.ph13.preheader.i:                             ; preds = %.loopexit.i, %.loopexit.thread.i
  %.073.i26.i = phi i64 [ %i.h, %.loopexit.thread.i ], [ %i.d, %.loopexit.i ]
  %.074.i24.i = phi i64 [ %i.f, %.loopexit.thread.i ], [ %i.av, %.loopexit.i ] ; 3 uses
  br label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %bb.i, %.lr.ph13.preheader.i
  %i.ax = phi i64 [ %i.bl, %bb.i ], [ 0, %.lr.ph13.preheader.i ]
  %.072.i12.i = phi i32 [ %i.bj, %bb.i ], [ 0, %.lr.ph13.preheader.i ]
  %.075.i11.i = phi i32 [ %i.bk, %bb.i ], [ 0, %.lr.ph13.preheader.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 %i.ax ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !16  ; 2 uses
  %i.ba = icmp ugt i8 %i.az, 12
  br i1 %i.ba, label %HUF_readStats_body_default.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph13.i
  %i.bb = zext nneg i8 %i.az to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !8
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !8
  %i.bf = load i8, ptr %i.ay, align 1, !tbaa !16
  %i.bg = zext nneg i8 %i.bf to i32
  %i.bh = shl nuw i32 1, %i.bg
  %i.bi = ashr i32 %i.bh, 1
  %i.bj = add i32 %i.bi, %.072.i12.i              ; 4 uses
  %i.bk = add i32 %.075.i11.i, 1                  ; 2 uses
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %.not90.i.i = icmp ugt i64 %.074.i24.i, %i.bl
  br i1 %.not90.i.i, label %.lr.ph13.i, label %.critedge.i.i, !llvm.loop !28

.critedge.i.i:                                    ; preds = %bb.i
  %.old.i.i = icmp eq i32 %i.bj, 0
  br i1 %.old.i.i, label %HUF_readStats_body_default.exit, label %bb.j

bb.j:                                             ; preds = %.critedge.i.i
  %i.bm = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bj, i1 true) ; 2 uses
  %i.bn = xor i32 %i.bm, 31                       ; 2 uses
  %i.bo = icmp samesign ugt i32 %i.bn, 11
  br i1 %i.bo, label %HUF_readStats_body_default.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = sub nuw nsw i32 32, %i.bm
  store i32 %i.bp, ptr %4, align 4, !tbaa !8
  %i.bq = shl nuw nsw i32 2, %i.bn
  %i.br = sub i32 %i.bq, %i.bj                    ; 2 uses
  %i.bs = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.br, i1 true) ; 2 uses
  %i.bt = lshr exact i32 -2147483648, %i.bs
  %.not91.i.i = icmp eq i32 %i.bt, %i.br
  br i1 %.not91.i.i, label %bb.l, label %HUF_readStats_body_default.exit

bb.l:                                             ; preds = %bb.k
  %i.bu = sub nuw nsw i32 32, %i.bs               ; 2 uses
  %i.bv = trunc nuw nsw i32 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %.074.i24.i
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !16
  %i.bx = zext nneg i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bx ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !8
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !8
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !8  ; 2 uses
  %i.cd = icmp ugt i32 %i.cc, 1
  %i.ce = and i32 %i.cc, 1
  %.not92.i.i = icmp eq i32 %i.ce, 0
  %or.cond.i.i = and i1 %i.cd, %.not92.i.i
  br i1 %or.cond.i.i, label %bb.m, label %HUF_readStats_body_default.exit

bb.m:                                             ; preds = %bb.l
  %i.cf = trunc nuw i64 %.074.i24.i to i32
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %3, align 4, !tbaa !8
  %i.ch = add nuw nsw i64 %.073.i26.i, 1
  br label %HUF_readStats_body_default.exit

HUF_readStats_body_default.exit:                  ; preds = %.lr.ph13.i, %bb.m, %bb.l, %bb.k, %bb.j, %.critedge.i.i, %.loopexit.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ -72, %bb.c ], [ -72, %bb.e ], [ %i.av, %bb.h ], [ -20, %bb.j ], [ %i.ch, %bb.m ], [ -20, %bb.k ], [ -20, %bb.l ], [ -20, %bb.f ], [ -72, %bb.g ], [ -20, %.critedge.i.i ], [ -20, %.loopexit.i ], [ -20, %.lr.ph13.i ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -119, -9223372036854775808) i64 @HUF_readStats_body_bmi2(ptr noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr noundef %5, i64 noundef %6, ptr noundef %7, i64 noundef %8) unnamed_addr #5 {
bb.a:
  %.not.i = icmp eq i64 %6, 0
  br i1 %.not.i, label %HUF_readStats_body.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %5, align 1, !tbaa !16      ; 2 uses
  %i.b = zext i8 %i.a to i64                      ; 7 uses
  %i.c = icmp slt i8 %i.a, 0
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i64 %i.b, -127                   ; 6 uses
  %i.e = add nsw i64 %i.b, -126
  %i.f = lshr i64 %i.e, 1                         ; 2 uses
  %.not88.i = icmp ult i64 %i.f, %6
  br i1 %.not88.i, label %bb.d, label %HUF_readStats_body.exit

bb.d:                                             ; preds = %bb.c
  %.not89.i = icmp ult i64 %i.d, %1
  br i1 %.not89.i, label %iter.check, label %HUF_readStats_body.exit

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
  %n.vec = and i64 %i.j, -16                      ; 4 uses
  %i.p = shl i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %9 = shl nuw i64 %index, 1                      ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %index ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %wide.load.a = load <8 x i8>, ptr %i.q, align 1, !tbaa !16, !alias.scope !29
  %wide.load35.a = load <8 x i8>, ptr %i.r, align 1, !tbaa !16, !alias.scope !29
  %i.s = lshr <8 x i8> %wide.load.a, splat (i8 4)
  %i.t = lshr <8 x i8> %wide.load35.a, splat (i8 4)
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 %9
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %9
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load36 = load <8 x i8>, ptr %i.q, align 1, !tbaa !16, !alias.scope !29
  %wide.load37 = load <8 x i8>, ptr %i.r, align 1, !tbaa !16, !alias.scope !29
  %i.w = and <8 x i8> %wide.load36, splat (i8 15)
  %i.x = and <8 x i8> %wide.load37, splat (i8 15)
  %interleaved.vec.a = shufflevector <8 x i8> %i.s, <8 x i8> %i.w, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec.a, ptr %10, align 1, !tbaa !16, !alias.scope !32, !noalias !29
  %interleaved.vec38.a = shufflevector <8 x i8> %i.t, <8 x i8> %i.x, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec38.a, ptr %i.v, align 1, !tbaa !16, !alias.scope !32, !noalias !29
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec40 = and i64 %i.j, -4                     ; 3 uses
  %i.z = shl i64 %n.vec40, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %i.aa = shl nuw i64 %index41, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %index41
  %wide.load42 = load <4 x i8>, ptr %i.ab, align 1, !tbaa !16, !alias.scope !29 ; 2 uses
  %i.ac = lshr <4 x i8> %wide.load42, splat (i8 4)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.aa
  %i.ae = and <4 x i8> %wide.load42, splat (i8 15)
  %interleaved.vec44 = shufflevector <4 x i8> %i.ac, <4 x i8> %i.ae, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec44, ptr %i.ad, align 1, !tbaa !16, !alias.scope !32, !noalias !29
  %index.next45 = add nuw i64 %index41, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next45, %n.vec40
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !35

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %i.j, %n.vec40
  br i1 %cmp.n46, label %.loopexit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.p, %vec.epilog.iter.check ], [ %i.z, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ag = phi i64 [ %i.aq, %.lr.ph ], [ %.ph, %.lr.ph.preheader ] ; 4 uses
  %i.ah = lshr exact i64 %i.ag, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ah ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !16
  %i.ak = lshr i8 %i.aj, 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !16
  %i.am = load i8, ptr %i.ai, align 1, !tbaa !16
  %i.an = and i8 %i.am, 15
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %i.ag
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store i8 %i.an, ptr %i.ap, align 1, !tbaa !16
  %i.aq = add nuw nsw i64 %i.ag, 2                ; 2 uses
  %i.ar = icmp samesign ugt i64 %i.d, %i.aq
  br i1 %i.ar, label %.lr.ph, label %.loopexit.thread, !llvm.loop !36

.loopexit.thread:                                 ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  br label %.lr.ph13.preheader

bb.e:                                             ; preds = %bb.b
  %.not86.i = icmp ugt i64 %6, %i.b
  br i1 %.not86.i, label %bb.f, label %HUF_readStats_body.exit

bb.f:                                             ; preds = %bb.e
  %i.as = add i64 %1, -1
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.au = tail call i64 @FSE_decompress_wksp_bmi2(ptr noundef %0, i64 noundef %i.as, ptr noundef nonnull %i.at, i64 noundef %i.b, i32 noundef 6, ptr noundef %7, i64 noundef %8, i32 noundef 1) #10 ; 4 uses
  %i.av = icmp ult i64 %i.au, -119
  br i1 %i.av, label %.loopexit, label %HUF_readStats_body.exit

.loopexit:                                        ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %2, i8 0, i64 52, i1 false)
  %.not90.i10.not = icmp eq i64 %i.au, 0
  br i1 %.not90.i10.not, label %HUF_readStats_body.exit, label %.lr.ph13.preheader

.lr.ph13.preheader:                               ; preds = %.loopexit.thread, %.loopexit
  %.073.i26 = phi i64 [ %i.f, %.loopexit.thread ], [ %i.b, %.loopexit ]
  %.074.i24 = phi i64 [ %i.d, %.loopexit.thread ], [ %i.au, %.loopexit ] ; 3 uses
  br label %.lr.ph13

.lr.ph13:                                         ; preds = %.lr.ph13.preheader, %bb.g
  %i.aw = phi i64 [ %i.bk, %bb.g ], [ 0, %.lr.ph13.preheader ]
  %.072.i12 = phi i32 [ %i.bi, %bb.g ], [ 0, %.lr.ph13.preheader ]
  %.075.i11 = phi i32 [ %i.bj, %bb.g ], [ 0, %.lr.ph13.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !16  ; 2 uses
  %i.az = icmp ugt i8 %i.ay, 12
  br i1 %i.az, label %HUF_readStats_body.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph13
  %i.ba = zext nneg i8 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !8
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !8
  %i.be = load i8, ptr %i.ax, align 1, !tbaa !16
  %i.bf = zext nneg i8 %i.be to i32
  %i.bg = shl nuw i32 1, %i.bf
  %i.bh = ashr i32 %i.bg, 1
  %i.bi = add i32 %i.bh, %.072.i12                ; 4 uses
  %i.bj = add i32 %.075.i11, 1                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %.not90.i = icmp ugt i64 %.074.i24, %i.bk
  br i1 %.not90.i, label %.lr.ph13, label %.critedge.i, !llvm.loop !28

.critedge.i:                                      ; preds = %bb.g
  %.old.i = icmp eq i32 %i.bi, 0
  br i1 %.old.i, label %HUF_readStats_body.exit, label %bb.h

bb.h:                                             ; preds = %.critedge.i
  %i.bl = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bi, i1 true) ; 2 uses
  %i.bm = xor i32 %i.bl, 31                       ; 2 uses
  %i.bn = icmp samesign ugt i32 %i.bm, 11
  br i1 %i.bn, label %HUF_readStats_body.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = sub nuw nsw i32 32, %i.bl
  store i32 %i.bo, ptr %4, align 4, !tbaa !8
  %i.bp = shl nuw nsw i32 2, %i.bm
  %i.bq = sub i32 %i.bp, %i.bi                    ; 2 uses
  %i.br = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.bq, i1 true) ; 2 uses
  %i.bs = lshr exact i32 -2147483648, %i.br
  %.not91.i = icmp eq i32 %i.bs, %i.bq
  br i1 %.not91.i, label %bb.j, label %HUF_readStats_body.exit

bb.j:                                             ; preds = %bb.i
  %i.bt = sub nuw nsw i32 32, %i.br               ; 2 uses
  %i.bu = trunc nuw nsw i32 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 %.074.i24
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !16
  %i.bw = zext nneg i32 %i.bt to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !8
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !8
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !8  ; 2 uses
  %i.cc = icmp ugt i32 %i.cb, 1
  %i.cd = and i32 %i.cb, 1
  %.not92.i = icmp eq i32 %i.cd, 0
  %or.cond.i = and i1 %i.cc, %.not92.i
  br i1 %or.cond.i, label %bb.k, label %HUF_readStats_body.exit

bb.k:                                             ; preds = %bb.j
  %i.ce = trunc nuw i64 %.074.i24 to i32
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %3, align 4, !tbaa !8
  %i.cg = add nuw nsw i64 %.073.i26, 1
  br label %HUF_readStats_body.exit

HUF_readStats_body.exit:                          ; preds = %.lr.ph13, %.loopexit, %bb.a, %bb.c, %bb.d, %bb.e, %bb.f, %.critedge.i, %bb.h, %bb.i, %bb.j, %bb.k
  %.3.i = phi i64 [ -72, %bb.a ], [ -72, %bb.c ], [ %i.au, %bb.f ], [ -20, %bb.h ], [ %i.cg, %bb.k ], [ -20, %bb.i ], [ -20, %bb.j ], [ -20, %bb.d ], [ -72, %bb.e ], [ -20, %.critedge.i ], [ -20, %.loopexit ], [ -20, %.lr.ph13 ]
  ret i64 %.3.i
}

declare ptr @ERR_getErrorString(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

declare i64 @FSE_decompress_wksp_bmi2(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+bmi,+bmi2,+cmov,+cx8,+fxsr,+lzcnt,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = distinct !{ptr @FSE_readNCount, null}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !6, i64 0}
!15 = !{ptr @FSE_readNCount}
!16 = !{!6, !6, i64 0}
!17 = !{!18}
!18 = distinct !{!18, !19}
!19 = distinct !{!19, !"LVerDomain"}
!20 = !{!21}
!21 = distinct !{!21, !19}
!22 = distinct !{!22, !12, !23, !24}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!"branch_weights", i32 4, i32 12}
!26 = distinct !{!26, !12, !23, !24}
!27 = distinct !{!27, !12, !23}
!28 = distinct !{!28, !12}
!29 = !{!30}
!30 = distinct !{!30, !31}
!31 = distinct !{!31, !"LVerDomain"}
!32 = !{!33}
!33 = distinct !{!33, !31}
!34 = distinct !{!34, !12, !23, !24}
!35 = distinct !{!35, !12, !23, !24}
!36 = distinct !{!36, !12, !23}
end_hunk_0
