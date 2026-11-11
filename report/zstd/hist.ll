Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/hist?download=true
inline.NumInlined: 10
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@HIST_count_simple:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.b = load i32, ptr %1, align 4, !tbaa !11     ; 2 uses
  %i.c = add i32 %i.b, 1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw nsw i64 %i.d, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.e, i1 false)
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 4, !tbaa !11
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02833 = phi ptr [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.02833, i64 1 ; 2 uses
  %i.h = load i8, ptr %.02833, align 1, !tbaa !10
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !11
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !11
  %i.m = icmp ult ptr %i.g, %i.a
  br i1 %i.m, label %.lr.ph, label %.preheader, !llvm.loop !0

.preheader:                                       ; preds = %.lr.ph, %.preheader
  %.027 = phi i32 [ %i.q, %.preheader ], [ %i.b, %.lr.ph ] ; 4 uses
  %i.n = zext i32 %.027 to i64                    ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !11
  %.not = icmp eq i32 %i.p, 0
  %i.q = add i32 %.027, -1
  br i1 %.not, label %.preheader, label %bb.c, !llvm.loop !1

bb.c:                                             ; preds = %.preheader
  store i32 %.027, ptr %1, align 4, !tbaa !11
  %i.r = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %.027, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.c
  %n.vec = and i64 %i.r, 8589934584               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi37 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <4 x i32>, ptr %i.s, align 4, !tbaa !11
  %wide.load38 = load <4 x i32>, ptr %i.t, align 4, !tbaa !11
  %i.u = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.v = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load38, <4 x i32> %vec.phi37) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.u, <4 x i32> %i.v)
  %i.x = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.c, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %bb.c ], [ %n.vec, %middle.block ]
  %.02634.ph = phi i32 [ 0, %bb.c ], [ %i.x, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %.02634 = phi i32 [ %spec.select, %scalar.ph ], [ %.02634.ph, %scalar.ph.preheader ]
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !11
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.z, i32 %.02634) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not31.not = icmp samesign ult i64 %indvars.iv, %i.n
  br i1 %.not31.not, label %scalar.ph, label %.loopexit, !llvm.loop !17

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.b
  %.029 = phi i32 [ 0, %bb.b ], [ %i.x, %middle.block ], [ %spec.select, %scalar.ph ]
  ret i32 %.029
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i64 -66, 4294967296) i64 @HIST_countFast_wksp(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i64 %3, 1500
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.c = load i32, ptr %1, align 4, !tbaa !11     ; 2 uses
  %i.d = add i32 %i.c, 1
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.f, i1 false)
  %i.g = icmp eq i64 %3, 0
  br i1 %i.g, label %bb.c, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %1, align 4, !tbaa !11
  br label %HIST_count_simple.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.02833.i = phi ptr [ %i.h, %.lr.ph.i ], [ %2, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.02833.i, i64 1 ; 2 uses
  %i.i = load i8, ptr %.02833.i, align 1, !tbaa !10
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !11
  %i.m = add i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !11
  %i.n = icmp ult ptr %i.h, %i.b
  br i1 %i.n, label %.lr.ph.i, label %.preheader.i, !llvm.loop !0

.preheader.i:                                     ; preds = %.lr.ph.i, %.preheader.i
  %.027.i = phi i32 [ %i.r, %.preheader.i ], [ %i.c, %.lr.ph.i ] ; 4 uses
  %i.o = zext i32 %.027.i to i64                  ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !11
  %.not.i = icmp eq i32 %i.q, 0
  %i.r = add i32 %.027.i, -1
  br i1 %.not.i, label %.preheader.i, label %bb.d, !llvm.loop !1

bb.d:                                             ; preds = %.preheader.i
  store i32 %.027.i, ptr %1, align 4, !tbaa !11
  %i.s = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %.027.i, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.d
  %n.vec = and i64 %i.s, 8589934584               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi15 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !tbaa !11
  %wide.load16 = load <4 x i32>, ptr %i.u, align 4, !tbaa !11
  %i.v = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.w = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load16, <4 x i32> %vec.phi15) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.v, <4 x i32> %i.w)
  %i.y = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %HIST_count_simple.exit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.d, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %bb.d ], [ %n.vec, %middle.block ]
  %.02634.i.ph = phi i32 [ 0, %bb.d ], [ %i.y, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.02634.i = phi i32 [ %spec.select.i, %scalar.ph ], [ %.02634.i.ph, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !11
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.aa, i32 %.02634.i) ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not = icmp eq i64 %indvars.iv.i, %i.o
  br i1 %exitcond.not, label %HIST_count_simple.exit.loopexit, label %scalar.ph, !llvm.loop !19

HIST_count_simple.exit.loopexit:                  ; preds = %scalar.ph, %middle.block
  %spec.select.i.lcssa = phi i32 [ %i.y, %middle.block ], [ %spec.select.i, %scalar.ph ]
  %i.ab = zext i32 %spec.select.i.lcssa to i64
  br label %HIST_count_simple.exit

bb.e:                                             ; preds = %bb.a
  %i.ac = ptrtoint ptr %4 to i64
  %i.ad = and i64 %i.ac, 3
  %.not = icmp eq i64 %i.ad, 0
  br i1 %.not, label %bb.f, label %HIST_count_simple.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp ult i64 %5, 4096
  br i1 %i.ae, label %HIST_count_simple.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = tail call fastcc i64 @HIST_count_parallel_wksp(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 0, ptr noundef %4)
  br label %HIST_count_simple.exit

HIST_count_simple.exit:                           ; preds = %bb.c, %HIST_count_simple.exit.loopexit, %bb.f, %bb.e, %bb.g
  %.0 = phi i64 [ -66, %bb.f ], [ %i.af, %bb.g ], [ -1, %bb.e ], [ 0, %bb.c ], [ %i.ab, %HIST_count_simple.exit.loopexit ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i64 -48, 4294967296) i64 @HIST_count_parallel_wksp(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4, ptr nofree noundef captures(none) %5) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 2 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !11
  %i.d = add i32 %i.c, 1
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 2                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 1024 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 2048 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 3072 ; 5 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr align 4 %0, i8 0, i64 %i.f, i1 false)
  store i32 0, ptr %1, align 4, !tbaa !11
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4096) %5, i8 0, i64 4096, i1 false)
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 -15
  %i.k = icmp sgt i64 %3, 19
  br i1 %i.k, label %.lr.ph.preheader, label %.preheader111

.lr.ph.preheader:                                 ; preds = %bb.c
  %.0100112 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val108 = load i32, ptr %2, align 1, !tbaa !11
  br label %.lr.ph

.preheader111.loopexit:                           ; preds = %.lr.ph
  %.pre = ptrtoaddr ptr %i.bq to i64
  br label %.preheader111

.preheader111:                                    ; preds = %.preheader111.loopexit, %bb.c
  %.pn.lcssa120.pre-phi = phi i64 [ %.pre, %.preheader111.loopexit ], [ %i.a, %bb.c ] ; 2 uses
  %.pn.lcssa = phi ptr [ %i.bq, %.preheader111.loopexit ], [ %2, %bb.c ] ; 4 uses
  %i.l = icmp ult ptr %.pn.lcssa, %i.b
  br i1 %i.l, label %.lr.ph117.preheader, label %vector.body.preheader

.lr.ph117.preheader:                              ; preds = %.preheader111
  %i.m = add i64 %3, %i.a                         ; 2 uses
  %i.n = sub i64 %i.m, %.pn.lcssa120.pre-phi      ; 2 uses
  %scevgep = getelementptr i8, ptr %.pn.lcssa, i64 %i.n
  %xtraiter = and i64 %i.n, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph117.prol.loopexit, label %.lr.ph117.prol

.lr.ph117.prol:                                   ; preds = %.lr.ph117.preheader, %.lr.ph117.prol
  %.1101116.prol = phi ptr [ %i.o, %.lr.ph117.prol ], [ %.pn.lcssa, %.lr.ph117.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph117.prol ], [ 0, %.lr.ph117.preheader ]
  %i.o = getelementptr inbounds nuw i8, ptr %.1101116.prol, i64 1 ; 2 uses
  %i.p = load i8, ptr %.1101116.prol, align 1, !tbaa !10
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11
  %i.t = add i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !11
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph117.prol.loopexit, label %.lr.ph117.prol, !llvm.loop !20

.lr.ph117.prol.loopexit:                          ; preds = %.lr.ph117.prol, %.lr.ph117.preheader
  %.1101116.unr = phi ptr [ %.pn.lcssa, %.lr.ph117.preheader ], [ %i.o, %.lr.ph117.prol ]
  %i.u = sub i64 %.pn.lcssa120.pre-phi, %i.m
  %i.v = icmp ugt i64 %i.u, -4
  br i1 %i.v, label %vector.body.preheader, label %.lr.ph117

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0100115 = phi ptr [ %.0100, %.lr.ph ], [ %.0100112, %.lr.ph.preheader ]
  %.096114 = phi i32 [ %.val, %.lr.ph ], [ %.val108, %.lr.ph.preheader ] ; 4 uses
  %.pn113 = phi ptr [ %i.bq, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.0100.val = load i32, ptr %.0100115, align 1, !tbaa !11 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.pn113, i64 8
  %i.x = and i32 %.096114, 255
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !11
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !11
  %i.ac = lshr i32 %.096114, 8
  %i.ad = and i32 %i.ac, 255
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !11
  %i.ah = add i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !11
  %i.ai = lshr i32 %.096114, 16
  %i.aj = and i32 %i.ai, 255
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !11
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !11
  %i.ao = lshr i32 %.096114, 24
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !11
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !11
  %.val107 = load i32, ptr %i.w, align 1, !tbaa !11 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.pn113, i64 12
  %i.au = and i32 %.0100.val, 255
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !11
  %i.ay = add i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !11
  %i.az = lshr i32 %.0100.val, 8
  %i.ba = and i32 %i.az, 255
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !11
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !11
  %i.bf = lshr i32 %.0100.val, 16
  %i.bg = and i32 %i.bf, 255
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !11
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !11
  %i.bl = lshr i32 %.0100.val, 24
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !11
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !11
  %.val106 = load i32, ptr %i.at, align 1, !tbaa !11 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn113, i64 16 ; 4 uses
  %i.br = and i32 %.val107, 255
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !11
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !11
  %i.bw = lshr i32 %.val107, 8
  %i.bx = and i32 %i.bw, 255
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !11
  %i.cb = add i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !11
  %i.cc = lshr i32 %.val107, 16
  %i.cd = and i32 %i.cc, 255
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ce ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !11
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !11
  %i.ci = lshr i32 %.val107, 24
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !11
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !11
  %.val = load i32, ptr %i.bq, align 1, !tbaa !11
  %i.cn = and i32 %.val106, 255
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.co ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !11
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !11
  %i.cs = lshr i32 %.val106, 8
  %i.ct = and i32 %i.cs, 255
  %i.cu = zext nneg i32 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.cu ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !11
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !11
  %i.cy = lshr i32 %.val106, 16
  %i.cz = and i32 %i.cy, 255
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.da ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !11
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !11
  %i.de = lshr i32 %.val106, 24
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.df ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !11
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !11
  %.0100 = getelementptr inbounds nuw i8, ptr %.pn113, i64 20 ; 2 uses
  %i.dj = icmp ult ptr %.0100, %i.j
  br i1 %i.dj, label %.lr.ph, label %.preheader111.loopexit, !llvm.loop !21

vector.body:                                      ; preds = %vector.body.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.body.preheader ] ; 5 uses
  %vec.phi = phi <4 x i32> [ %i.dy, %vector.body ], [ zeroinitializer, %vector.body.preheader ]
  %vec.phi124 = phi <4 x i32> [ %i.dz, %vector.body ], [ zeroinitializer, %vector.body.preheader ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load = load <4 x i32>, ptr %i.dk, align 4, !tbaa !11
  %wide.load125 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !11
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %wide.load126 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !11
  %wide.load127 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !11
  %i.do = add <4 x i32> %wide.load126, %wide.load
  %i.dp = add <4 x i32> %wide.load127, %wide.load125
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load128 = load <4 x i32>, ptr %i.dq, align 4, !tbaa !11
  %wide.load129 = load <4 x i32>, ptr %i.dr, align 4, !tbaa !11
  %i.ds = add <4 x i32> %i.do, %wide.load128
  %i.dt = add <4 x i32> %i.dp, %wide.load129
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %wide.load130 = load <4 x i32>, ptr %i.du, align 4, !tbaa !11
  %wide.load131 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !11
  %i.dw = add <4 x i32> %i.ds, %wide.load130      ; 2 uses
  %i.dx = add <4 x i32> %i.dt, %wide.load131      ; 2 uses
  store <4 x i32> %i.dw, ptr %i.du, align 4, !tbaa !11
  store <4 x i32> %i.dx, ptr %i.dv, align 4, !tbaa !11
  %i.dy = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.dw, <4 x i32> %vec.phi) ; 2 uses
  %i.dz = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.dx, <4 x i32> %vec.phi124) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ea = icmp eq i64 %index.next, 256
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.dy, <4 x i32> %i.dz)
  %i.eb = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax)
  br label %bb.d

.lr.ph117:                                        ; preds = %.lr.ph117.prol.loopexit, %.lr.ph117
  %.1101116 = phi ptr [ %i.eu, %.lr.ph117 ], [ %.1101116.unr, %.lr.ph117.prol.loopexit ] ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.1101116, i64 1
  %i.ed = load i8, ptr %.1101116, align 1, !tbaa !10
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ee ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !11
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !11
  %i.ei = getelementptr inbounds nuw i8, ptr %.1101116, i64 2
  %i.ej = load i8, ptr %i.ec, align 1, !tbaa !10
  %i.ek = zext i8 %i.ej to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ek ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !11
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.el, align 4, !tbaa !11
  %i.eo = getelementptr inbounds nuw i8, ptr %.1101116, i64 3
  %i.ep = load i8, ptr %i.ei, align 1, !tbaa !10
  %i.eq = zext i8 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.eq ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !11
  %i.et = add i32 %i.es, 1
  store i32 %i.et, ptr %i.er, align 4, !tbaa !11
  %i.eu = getelementptr inbounds nuw i8, ptr %.1101116, i64 4 ; 2 uses
  %i.ev = load i8, ptr %i.eo, align 1, !tbaa !10
  %i.ew = zext i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ew ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !11
  %i.ez = add i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !11
  %exitcond.not.3 = icmp eq ptr %i.eu, %scevgep
  br i1 %exitcond.not.3, label %vector.body.preheader, label %.lr.ph117, !llvm.loop !23

vector.body.preheader:                            ; preds = %.lr.ph117.prol.loopexit, %.lr.ph117, %.preheader111
  br label %vector.body

bb.d:                                             ; preds = %bb.d, %middle.block
  %.0 = phi i32 [ %i.fd, %bb.d ], [ 255, %middle.block ] ; 4 uses
  %i.fa = zext i32 %.0 to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !11
  %.not103 = icmp eq i32 %i.fc, 0
  %i.fd = add i32 %.0, -1
  br i1 %.not103, label %bb.d, label %bb.e, !llvm.loop !24

bb.e:                                             ; preds = %bb.d
  %.not104 = icmp eq i32 %4, 0
  br i1 %.not104, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fe = load i32, ptr %1, align 4, !tbaa !11
  %i.ff = icmp ugt i32 %.0, %i.fe
  br i1 %i.ff, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  store i32 %.0, ptr %1, align 4, !tbaa !11
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %0, ptr nonnull align 4 %5, i64 %i.f, i1 false)
  %i.fg = zext i32 %i.eb to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b
  %.1 = phi i64 [ 0, %bb.b ], [ %i.fg, %bb.g ], [ -48, %bb.f ]
  ret i64 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define range(i64 -66, 4294967296) i64 @HIST_count_wksp(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %4 to i64
  %i.b = and i64 %i.a, 3
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %HIST_countFast_wksp.exit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %5, 4096
  br i1 %i.c, label %HIST_countFast_wksp.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %1, align 4, !tbaa !11
  %i.e = icmp ult i32 %i.d, 255
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call fastcc i64 @HIST_count_parallel_wksp(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3, i32 noundef 1, ptr noundef %4)
  br label %HIST_countFast_wksp.exit

bb.e:                                             ; preds = %bb.c
  store i32 255, ptr %1, align 4, !tbaa !11
  %i.g = icmp ult i64 %3, 1500
  br i1 %i.g, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %i.i = icmp eq i64 %3, 0
  br i1 %i.i, label %bb.g, label %.lr.ph.i.i

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %1, align 4, !tbaa !11
  br label %HIST_countFast_wksp.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.02833.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %2, %bb.f ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02833.i.i, i64 1 ; 2 uses
  %i.k = load i8, ptr %.02833.i.i, align 1, !tbaa !10
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !11
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !11
  %i.p = icmp ult ptr %i.j, %i.h
  br i1 %i.p, label %.lr.ph.i.i, label %.preheader.i.i, !llvm.loop !0

.preheader.i.i:                                   ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.027.i.i = phi i32 [ %i.t, %.preheader.i.i ], [ 255, %.lr.ph.i.i ] ; 4 uses
  %i.q = zext i32 %.027.i.i to i64                ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11
  %.not.i.i = icmp eq i32 %i.s, 0
  %i.t = add i32 %.027.i.i, -1
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.h, !llvm.loop !1

bb.h:                                             ; preds = %.preheader.i.i
  store i32 %.027.i.i, ptr %1, align 4, !tbaa !11
  %i.u = add nuw nsw i64 %i.q, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %.027.i.i, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.h
  %n.vec = and i64 %i.u, 8589934584               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi17 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <4 x i32>, ptr %i.v, align 4, !tbaa !11
  %wide.load18 = load <4 x i32>, ptr %i.w, align 4, !tbaa !11
  %i.x = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.y = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %wide.load18, <4 x i32> %vec.phi17) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.x, <4 x i32> %i.y)
  %i.aa = tail call i32 @llvm.vector.reduce.umax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %HIST_count_simple.exit.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.h, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %bb.h ], [ %n.vec, %middle.block ]
  %.02634.i.i.ph = phi i32 [ 0, %bb.h ], [ %i.aa, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.02634.i.i = phi i32 [ %spec.select.i.i, %scalar.ph ], [ %.02634.i.i.ph, %scalar.ph.preheader ]
end_hunk_0
