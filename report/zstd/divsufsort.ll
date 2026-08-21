inline.NumInlined: 85
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@divsufsort:bb.a
  %.not9599.not.i = icmp slt i64 %.idx.i, %.idx110.i
  br i1 %.not9599.not.i, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.af = getelementptr i8, ptr %1, i64 %.idx110.i
  %.08498.i = getelementptr i8, ptr %i.af, i64 -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.preheader.i
  %.084102.i = phi ptr [ %.084.i, %bb.n ], [ %.08498.i, %.lr.ph.preheader.i ] ; 3 uses
  %.0101.i = phi i32 [ %.2.i, %bb.n ], [ -1, %.lr.ph.preheader.i ] ; 5 uses
  %.078100.i = phi ptr [ %.280.i, %bb.n ], [ null, %.lr.ph.preheader.i ] ; 3 uses
  %i.ag = load i32, ptr %.084102.i, align 4, !tbaa !8 ; 6 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  %i.ai = xor i32 %i.ag, -1
  store i32 %i.ai, ptr %.084102.i, align 4, !tbaa !8
  br i1 %i.ah, label %bb.g, label %bb.n

bb.g:                                             ; preds = %.lr.ph.i
  %i.aj = add nsw i32 %i.ag, -1                   ; 2 uses
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !9   ; 2 uses
  %i.an = zext i8 %i.am to i32                    ; 3 uses
  %.not96.i = icmp eq i32 %i.ag, 1
  br i1 %.not96.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = zext nneg i32 %i.ag to i64
  %i.ap = getelementptr i8, ptr %0, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !9
  %i.as = icmp ugt i8 %i.ar, %i.am
  %i.at = sub nsw i32 0, %i.ag
  %spec.select.i = select i1 %i.as, i32 %i.at, i32 %i.aj
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.076.i = phi i32 [ 0, %bb.g ], [ %spec.select.i, %bb.h ]
  %.not97.i = icmp eq i32 %.0101.i, %i.an
  br i1 %.not97.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = icmp sgt i32 %.0101.i, -1
  br i1 %i.au, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = ptrtoint ptr %.078100.i to i64
  %i.aw = sub i64 %i.av, %i.s
  %i.ax = lshr exact i64 %i.aw, 2
  %i.ay = trunc i64 %i.ax to i32
  %i.az = or i32 %.0101.i, %i.u
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ba
  store i32 %i.ay, ptr %i.bb, align 4, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bc = or disjoint i32 %i.u, %i.an
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !8
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bg
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.179.i = phi ptr [ %i.bh, %bb.l ], [ %.078100.i, %bb.i ] ; 2 uses
  %.1.i = phi i32 [ %i.an, %bb.l ], [ %.0101.i, %bb.i ]
  %i.bi = getelementptr inbounds i8, ptr %.179.i, i64 -4
  store i32 %.076.i, ptr %.179.i, align 4, !tbaa !8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i
  %.280.i = phi ptr [ %i.bi, %bb.m ], [ %.078100.i, %.lr.ph.i ]
  %.2.i = phi i32 [ %.1.i, %bb.m ], [ %.0101.i, %.lr.ph.i ]
  %.084.i = getelementptr inbounds i8, ptr %.084102.i, i64 -4 ; 2 uses
  %.not95.i = icmp ugt ptr %i.aa, %.084.i
  br i1 %.not95.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !10

._crit_edge.i:                                    ; preds = %bb.n, %.preheader.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not120.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not120.i, label %.lr.ph108.i, label %.preheader.i, !llvm.loop !12

.lr.ph108.i:                                      ; preds = %._crit_edge.i, %bb.f
  %i.bj = add nsw i32 %2, -1                      ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !9   ; 3 uses
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !8
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bq ; 2 uses
  %i.bs = zext nneg i32 %2 to i64                 ; 2 uses
  %i.bt = getelementptr i8, ptr %0, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 -2
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !9
  %i.bw = icmp ult i8 %i.bv, %i.bm
  %i.bx = sub nsw i32 0, %2
  %i.by = select i1 %i.bw, i32 %i.bx, i32 %i.bj
  store i32 %i.by, ptr %i.br, align 4, !tbaa !8
  %.idx111.i = shl nuw nsw i64 %i.bs, 2
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %.idx111.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.cb = zext i8 %i.bm to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.w, %.lr.ph108.i
  %.3106.i = phi i32 [ %i.cb, %.lr.ph108.i ], [ %.5.i, %bb.w ] ; 4 uses
  %.381105.i = phi ptr [ %i.ca, %.lr.ph108.i ], [ %.583.i, %bb.w ] ; 3 uses
  %.085104.i = phi ptr [ %1, %.lr.ph108.i ], [ %i.dd, %bb.w ] ; 3 uses
  %i.cc = load i32, ptr %.085104.i, align 4, !tbaa !8 ; 5 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.ce = add nsw i32 %i.cc, -1                   ; 3 uses
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !9   ; 3 uses
  %i.ci = zext i8 %i.ch to i32                    ; 2 uses
  %i.cj = icmp eq i32 %i.ce, 0
  br i1 %i.cj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = zext nneg i32 %i.cc to i64
  %i.cl = getelementptr i8, ptr %0, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !9
  %i.co = icmp ult i8 %i.cn, %i.ch
  br i1 %i.co, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cp = sub nsw i32 0, %i.cc
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.177.i = phi i32 [ %i.cp, %bb.r ], [ %i.ce, %bb.q ]
  %.not.i = icmp eq i32 %.3106.i, %i.ci
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = ptrtoint ptr %.381105.i to i64
  %i.cr = sub i64 %i.cq, %i.s
  %i.cs = lshr exact i64 %i.cr, 2
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = zext nneg i32 %.3106.i to i64
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cu
  store i32 %i.ct, ptr %i.cv, align 4, !tbaa !8
  %i.cw = zext i8 %i.ch to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !8
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cz
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.482.i = phi ptr [ %i.da, %bb.t ], [ %.381105.i, %bb.s ] ; 2 uses
  %.4.i = phi i32 [ %i.ci, %bb.t ], [ %.3106.i, %bb.s ]
  %i.db = getelementptr inbounds nuw i8, ptr %.482.i, i64 4
  store i32 %.177.i, ptr %.482.i, align 4, !tbaa !8
  br label %bb.w

bb.v:                                             ; preds = %bb.o
  %i.dc = xor i32 %i.cc, -1
  store i32 %i.dc, ptr %.085104.i, align 4, !tbaa !8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.583.i = phi ptr [ %i.db, %bb.u ], [ %.381105.i, %bb.v ]
  %.5.i = phi i32 [ %.4.i, %bb.u ], [ %.3106.i, %bb.v ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.085104.i, i64 4 ; 2 uses
  %i.de = icmp ult ptr %i.dd, %i.bz
  br i1 %i.de, label %bb.o, label %construct_SA.exit, !llvm.loop !13

construct_SA.exit:                                ; preds = %bb.w, %bb.e
  %.0 = phi i32 [ -2, %bb.e ], [ 0, %bb.w ]
  tail call void @free(ptr noundef %i.n) #8
  tail call void @free(ptr noundef %i.m) #8
  br label %bb.x

bb.x:                                             ; preds = %bb.b, %bb.a, %construct_SA.exit, %bb.d, %bb.c
  %.035 = phi i32 [ %.0, %construct_SA.exit ], [ -1, %bb.a ], [ 0, %bb.c ], [ 0, %bb.d ], [ %2, %bb.b ]
  ret i32 %.035
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -2147483645, -2147483648) i32 @sort_typeBstar(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) initializes((0, 1024)) %2, ptr nofree noundef nonnull captures(none) initializes((0, 262144)) %3, i32 noundef range(i32 2, -2147483648) %4) unnamed_addr #3 {
.preheader340.preheader:
  %5 = alloca [64 x %struct.anon.1], align 16     ; 30 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %2, i8 0, i64 1024, i1 false), !tbaa !8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(262144) %3, i8 0, i64 262144, i1 false), !tbaa !8
  %i.a = add nsw i32 %4, -1                       ; 4 uses
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !9     ; 2 uses
  %6 = zext i8 %i.d to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %6 ; 2 uses
  %8 = load i32, ptr %7, align 4, !tbaa !8
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %7, align 4, !tbaa !8
  %.not32198103 = icmp eq i32 %i.a, 0
  br i1 %.not32198103, label %.loopexit826, label %.lr.ph101.lr.ph

.lr.ph101.lr.ph:                                  ; preds = %.preheader340.preheader
  %10 = zext i8 %i.d to i32
  br label %.lr.ph101

.preheader338.loopexit:                           ; preds = %.lr.ph
  %i.e = zext i8 %i.ac to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4, !tbaa !8
  %.not32198 = icmp eq i32 %.4261419, 0
  br i1 %.not32198, label %.loopexit826, label %.lr.ph101, !llvm.loop !14

.lr.ph101:                                        ; preds = %.lr.ph101.lr.ph, %.preheader338.loopexit
  %.in = phi i32 [ %i.a, %.lr.ph101.lr.ph ], [ %.4261419, %.preheader338.loopexit ]
  %.0246426105 = phi i32 [ %4, %.lr.ph101.lr.ph ], [ %i.x, %.preheader338.loopexit ] ; 2 uses
  %.0240427104 = phi i32 [ %10, %.lr.ph101.lr.ph ], [ %i.ad, %.preheader338.loopexit ]
  %11 = zext i32 %.in to i64
  br label %bb.b

bb.a:                                             ; preds = %bb.b
  %i.i = zext i8 %i.o to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !8
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !8
  %.not321 = icmp eq i64 %i.m, 0
  br i1 %.not321, label %.loopexit826, label %bb.b, !llvm.loop !15

bb.b:                                             ; preds = %.lr.ph101, %bb.a
  %.1241100 = phi i32 [ %.0240427104, %.lr.ph101 ], [ %i.p, %bb.a ] ; 2 uses
  %indvars.iv99 = phi i64 [ %11, %.lr.ph101 ], [ %i.m, %bb.a ] ; 2 uses
  %i.m = add nsw i64 %indvars.iv99, -1            ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !9     ; 2 uses
  %i.p = zext i8 %i.o to i32                      ; 4 uses
  %.not289 = icmp sgt i32 %.1241100, %i.p
  br i1 %.not289, label %bb.c, label %bb.a, !llvm.loop !15

bb.c:                                             ; preds = %bb.b
  %12 = trunc nuw i64 %indvars.iv99 to i32        ; 2 uses
  %i.q = trunc nuw i64 %i.m to i32
  %i.r = shl nuw nsw i32 %i.p, 8
  %i.s = or i32 %i.r, %.1241100
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !8
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !8
  %i.x = add nsw i32 %.0246426105, -1             ; 5 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %1, i64 %i.y
  store i32 %i.q, ptr %i.z, align 4, !tbaa !8
  %i.aa = icmp sgt i32 %12, 1
  br i1 %i.aa, label %.lr.ph.preheader, label %.loopexit826

.lr.ph.preheader:                                 ; preds = %bb.c
  %13 = add nsw i32 %12, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.0420 = phi i32 [ %i.ad, %bb.d ], [ %i.p, %.lr.ph.preheader ] ; 2 uses
  %.4261419 = phi i32 [ %15, %bb.d ], [ %13, %.lr.ph.preheader ] ; 5 uses
  %14 = zext nneg i32 %.4261419 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %14
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !9   ; 2 uses
  %i.ad = zext i8 %i.ac to i32                    ; 4 uses
  %.not290 = icmp samesign ult i32 %.0420, %i.ad
  br i1 %.not290, label %.preheader338.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ae = shl nuw nsw i32 %.0420, 8
  %i.af = or disjoint i32 %i.ae, %i.ad
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !8
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !8
  %15 = add nsw i32 %.4261419, -1
  %i.ak = icmp sgt i32 %.4261419, 0
  br i1 %i.ak, label %.lr.ph, label %.loopexit826, !llvm.loop !16

.loopexit826:                                     ; preds = %bb.c, %.preheader338.loopexit, %bb.a, %bb.d, %.preheader340.preheader
  %.1247.ph = phi i32 [ %.0246426105, %bb.a ], [ %4, %.preheader340.preheader ], [ %i.x, %bb.d ], [ %i.x, %.preheader338.loopexit ], [ %i.x, %bb.c ]
  br label %bb.e

.loopexit337:                                     ; preds = %.lr.ph431.prol.loopexit, %.lr.ph431, %bb.e
  %.7264.lcssa = phi i32 [ %i.au, %bb.e ], [ %.lcssa337.unr, %.lr.ph431.prol.loopexit ], [ %i.bj, %.lr.ph431 ]
  %.1252.lcssa = phi i32 [ %.0251434, %bb.e ], [ %.lcssa338.unr, %.lr.ph431.prol.loopexit ], [ %i.bh, %.lr.ph431 ]
  %indvars.iv.next577.a = add nuw nsw i64 %indvars.iv576, 1
  %exitcond584.not = icmp eq i64 %indvars.iv.next582, 256
  br i1 %exitcond584.not, label %bb.f, label %bb.e, !llvm.loop !17

bb.e:                                             ; preds = %.loopexit826, %.loopexit337
  %indvars.iv581 = phi i64 [ 0, %.loopexit826 ], [ %indvars.iv.next582, %.loopexit337 ] ; 9 uses
  %indvars.iv576 = phi i64 [ 1, %.loopexit826 ], [ %indvars.iv.next577.a, %.loopexit337 ] ; 5 uses
  %.0251434 = phi i32 [ 0, %.loopexit826 ], [ %.1252.lcssa, %.loopexit337 ] ; 4 uses
  %.6263433 = phi i32 [ 0, %.loopexit826 ], [ %.7264.lcssa, %.loopexit337 ] ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv581 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !8
  %i.an = add nsw i32 %i.am, %.6263433
  %i.ao = add nsw i32 %.0251434, %.6263433
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !8
  %i.ap = shl i64 %indvars.iv581, 8
  %i.aq = and i64 %i.ap, 4294967040
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv581
  %i.at = load i32, ptr %i.as, align 4, !tbaa !8
  %i.au = add nsw i32 %i.an, %i.at                ; 3 uses
  %indvars.iv.next582 = add nuw nsw i64 %indvars.iv581, 1 ; 2 uses
  %i.av = icmp samesign ult i64 %indvars.iv581, 255
  br i1 %i.av, label %.lr.ph431.preheader, label %.loopexit337

.lr.ph431.preheader:                              ; preds = %bb.e
  %.idx804 = shl nuw nsw i64 %indvars.iv581, 10
  %invariant.gep = getelementptr inbounds nuw i8, ptr %3, i64 %.idx804 ; 3 uses
  %invariant.gep916 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv581 ; 3 uses
  %i.aw = and i64 %indvars.iv581, 1
  %lcmp.mod.not.not = icmp eq i64 %i.aw, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph431.prol, label %.lr.ph431.prol.loopexit

.lr.ph431.prol:                                   ; preds = %.lr.ph431.preheader
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv576 ; 2 uses
  %i.ax = load i32, ptr %gep.prol, align 4, !tbaa !8
  %i.ay = add nsw i32 %i.ax, %.0251434            ; 3 uses
  store i32 %i.ay, ptr %gep.prol, align 4, !tbaa !8
  %.idx805.prol = shl nuw nsw i64 %indvars.iv576, 10
  %gep917.prol = getelementptr inbounds nuw i8, ptr %invariant.gep916, i64 %.idx805.prol
  %i.az = load i32, ptr %gep917.prol, align 4, !tbaa !8
  %i.ba = add nsw i32 %i.az, %i.au                ; 2 uses
  %indvars.iv.next579.prol = add nuw nsw i64 %indvars.iv576, 1
  br label %.lr.ph431.prol.loopexit

.lr.ph431.prol.loopexit:                          ; preds = %.lr.ph431.prol, %.lr.ph431.preheader
  %.lcssa338.unr = phi i32 [ poison, %.lr.ph431.preheader ], [ %i.ay, %.lr.ph431.prol ]
  %.lcssa337.unr = phi i32 [ poison, %.lr.ph431.preheader ], [ %i.ba, %.lr.ph431.prol ]
  %indvars.iv578.unr = phi i64 [ %indvars.iv576, %.lr.ph431.preheader ], [ %indvars.iv.next579.prol, %.lr.ph431.prol ]
  %.1252429.unr = phi i32 [ %.0251434, %.lr.ph431.preheader ], [ %i.ay, %.lr.ph431.prol ]
  %.7264428.unr = phi i32 [ %i.au, %.lr.ph431.preheader ], [ %i.ba, %.lr.ph431.prol ]
  %i.bb = icmp eq i64 %indvars.iv581, 254
  br i1 %i.bb, label %.loopexit337, label %.lr.ph431

.lr.ph431:                                        ; preds = %.lr.ph431.prol.loopexit, %.lr.ph431
  %indvars.iv578 = phi i64 [ %indvars.iv.next579.1, %.lr.ph431 ], [ %indvars.iv578.unr, %.lr.ph431.prol.loopexit ] ; 4 uses
  %.1252429 = phi i32 [ %i.bh, %.lr.ph431 ], [ %.1252429.unr, %.lr.ph431.prol.loopexit ]
  %.7264428 = phi i32 [ %i.bj, %.lr.ph431 ], [ %.7264428.unr, %.lr.ph431.prol.loopexit ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv578 ; 2 uses
  %i.bc = load i32, ptr %gep, align 4, !tbaa !8
  %i.bd = add nsw i32 %i.bc, %.1252429            ; 2 uses
  store i32 %i.bd, ptr %gep, align 4, !tbaa !8
  %.idx805 = shl nuw nsw i64 %indvars.iv578, 10
  %gep917 = getelementptr inbounds nuw i8, ptr %invariant.gep916, i64 %.idx805
  %i.be = load i32, ptr %gep917, align 4, !tbaa !8
  %i.bf = add nsw i32 %i.be, %.7264428
  %indvars.iv.next579 = add nuw nsw i64 %indvars.iv578, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next579 ; 2 uses
  %i.bg = load i32, ptr %gep.1, align 4, !tbaa !8
  %i.bh = add nsw i32 %i.bg, %i.bd                ; 3 uses
  store i32 %i.bh, ptr %gep.1, align 4, !tbaa !8
  %.idx805.1 = shl nuw nsw i64 %indvars.iv.next579, 10
  %gep917.1 = getelementptr inbounds nuw i8, ptr %invariant.gep916, i64 %.idx805.1
  %i.bi = load i32, ptr %gep917.1, align 4, !tbaa !8
  %i.bj = add nsw i32 %i.bi, %i.bf                ; 2 uses
  %indvars.iv.next579.1 = add nuw nsw i64 %indvars.iv578, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next579.1, 256
  br i1 %exitcond.not.1, label %.loopexit337, label %.lr.ph431, !llvm.loop !18

bb.f:                                             ; preds = %.loopexit337
  %i.bk = sub nsw i32 %4, %.1247.ph               ; 20 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.bm = zext nneg i32 %4 to i64                 ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bm
  %i.bo = zext nneg i32 %i.bk to i64              ; 4 uses
  %i.bp = sub nsw i64 0, %i.bo
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bp ; 14 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bo ; 27 uses
  %.not479 = icmp eq i32 %i.bk, 1
  br i1 %.not479, label %.preheader336.lr.ph, label %.lr.ph437.preheader

.lr.ph437.preheader:                              ; preds = %bb.g
  %i.bs = add nsw i32 %i.bk, -2                   ; 3 uses
  %i.bt = zext i32 %i.bs to i64                   ; 4 uses
  %i.bu = and i64 %i.bt, 1
  %lcmp.mod357.not.not = icmp eq i64 %i.bu, 0
  br i1 %lcmp.mod357.not.not, label %.lr.ph437.prol, label %.lr.ph437.prol.loopexit

.lr.ph437.prol:                                   ; preds = %.lr.ph437.preheader
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bt
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !8
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %0, i64 %i.bx ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !9
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr i8, ptr %i.by, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !9
  %i.cd = zext i8 %i.cc to i64
  %.idx288.prol = shl nuw nsw i64 %i.ca, 10
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 %.idx288.prol
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cd ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !8
  %i.ch = add nsw i32 %i.cg, -1                   ; 2 uses
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !8
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ci
  store i32 %i.bs, ptr %i.cj, align 4, !tbaa !8
  %indvars.iv.next586.prol = add nsw i64 %i.bt, -1
  br label %.lr.ph437.prol.loopexit

.lr.ph437.prol.loopexit:                          ; preds = %.lr.ph437.prol, %.lr.ph437.preheader
  %indvars.iv585.unr = phi i64 [ %i.bt, %.lr.ph437.preheader ], [ %indvars.iv.next586.prol, %.lr.ph437.prol ]
  %i.ck = icmp eq i32 %i.bs, 0
  br i1 %i.ck, label %.preheader336.lr.ph, label %.lr.ph437

.lr.ph437:                                        ; preds = %.lr.ph437.prol.loopexit, %.lr.ph437
  %indvars.iv585 = phi i64 [ %indvars.iv.next586.1, %.lr.ph437 ], [ %indvars.iv585.unr, %.lr.ph437.prol.loopexit ] ; 4 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv585
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !8
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %0, i64 %i.cn ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !9
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr i8, ptr %i.co, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !9
  %i.ct = zext i8 %i.cs to i64
  %.idx288 = shl nuw nsw i64 %i.cq, 10
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 %.idx288
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ct ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !8
  %i.cx = add nsw i32 %i.cw, -1                   ; 2 uses
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !8
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cy
  %i.da = trunc nuw nsw i64 %indvars.iv585 to i32
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !8
  %indvars.iv.next586 = add nsw i64 %indvars.iv585, -1 ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next586
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !8
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %0, i64 %i.dd ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !9
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr i8, ptr %i.de, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !9
  %i.dj = zext i8 %i.di to i64
  %.idx288.1 = shl nuw nsw i64 %i.dg, 10
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 %.idx288.1
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dj ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !8
  %i.dn = add nsw i32 %i.dm, -1                   ; 2 uses
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !8
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.do
  %i.dq = trunc nuw nsw i64 %indvars.iv.next586 to i32
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !8
  %indvars.iv.next586.1 = add nsw i64 %indvars.iv585, -2
  %.not920.1 = icmp eq i64 %indvars.iv.next586, 0
  br i1 %.not920.1, label %.preheader336.lr.ph, label %.lr.ph437, !llvm.loop !19

.preheader336.lr.ph:                              ; preds = %.lr.ph437.prol.loopexit, %.lr.ph437, %bb.g
  %i.dr = add nsw i32 %i.bk, -1                   ; 5 uses
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !8
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %0, i64 %i.dv ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !9
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr i8, ptr %i.dw, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !9
  %i.eb = zext i8 %i.ea to i64
  %.idx = shl nuw nsw i64 %i.dy, 10
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.eb ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !8
  %i.ef = add nsw i32 %i.ee, -1                   ; 2 uses
  store i32 %i.ef, ptr %i.ed, align 4, !tbaa !8
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.eg
  store i32 %i.dr, ptr %i.eh, align 4, !tbaa !8
  %i.ei = shl nuw nsw i32 %i.bk, 1
  %i.ej = sub nsw i32 %4, %i.ei                   ; 6 uses
end_hunk_0
begin_hunk_1_@sort_typeBstar:.preheader340.preheader
  %i.bqs = getelementptr inbounds nuw i8, ptr %i.bqq, i64 16
  store ptr %i.bjg, ptr %i.bqs, align 16, !tbaa !72
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqq, i64 24
  store i32 %i.awm, ptr %i.bqt, align 8, !tbaa !73
  %i.bqu = add nsw i32 %.0445.ph.i.i, 1
  %i.bqv = getelementptr inbounds nuw i8, ptr %i.bqq, i64 28
  store i32 %.0.ph.i.i, ptr %i.bqv, align 4, !tbaa !74
  br label %.outer.i.i.backedge

bb.ji:                                            ; preds = %bb.jg
  %i.bqw = icmp sgt i64 %i.bpq, 1
  br i1 %i.bqw, label %.outer.i.i.backedge, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.bqx = icmp eq i32 %.0445.ph.i.i, 0
  br i1 %i.bqx, label %tr_introsort.exit.i, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.bqy = add nsw i32 %.0445.ph.i.i, -1          ; 2 uses
  %i.bqz = sext i32 %i.bqy to i64
  %i.bra = getelementptr inbounds [32 x i8], ptr %5, i64 %i.bqz ; 5 uses
  %i.brb = load ptr, ptr %i.bra, align 16, !tbaa !67
  %i.brc = getelementptr inbounds nuw i8, ptr %i.bra, i64 8
  %i.brd = load ptr, ptr %i.brc, align 8, !tbaa !71
  %i.bre = getelementptr inbounds nuw i8, ptr %i.bra, i64 16
  %i.brf = load ptr, ptr %i.bre, align 16, !tbaa !72
  %i.brg = getelementptr inbounds nuw i8, ptr %i.bra, i64 24
  %i.brh = load i32, ptr %i.brg, align 8, !tbaa !73
  %i.bri = getelementptr inbounds nuw i8, ptr %i.bra, i64 28
  %i.brj = load i32, ptr %i.bri, align 4, !tbaa !74
  br label %.outer.i.i.backedge

tr_partition.exit.thread.i:                       ; preds = %tr_partition.exit.i, %._crit_edge.i56.i
  %.not.i579.i.i = icmp slt i32 %.sroa.9.3.i, %i.sx
  br i1 %.not.i579.i.i, label %bb.jl, label %bb.jn

bb.jl:                                            ; preds = %tr_partition.exit.thread.i
  %i.brk = icmp eq i32 %.sroa.0.3.i, 0
  br i1 %i.brk, label %bb.ju, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.brl = add i32 %.sroa.9.3.i, %i.bk
  %i.brm = add nsw i32 %.sroa.0.3.i, -1
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jm, %tr_partition.exit.thread.i
  %.pn215.i = phi i32 [ %i.brl, %bb.jm ], [ %.sroa.9.3.i, %tr_partition.exit.thread.i ]
  %.sroa.0.6.i = phi i32 [ %i.brm, %bb.jm ], [ %.sroa.0.3.i, %tr_partition.exit.thread.i ]
  %.sroa.9.6.i = sub i32 %.pn215.i, %i.sx
  %.not.i582.i.i = icmp ult i32 %i.sx, 65536
  br i1 %.not.i582.i.i, label %bb.jr, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  %.not8.i583.i.i = icmp ult i32 %i.sx, 16777216
  br i1 %.not8.i583.i.i, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.brn = lshr i64 %i.sv, 24
  %i.bro = and i64 %i.brn, 255
  %i.brp = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.bro
  %i.brq = load i32, ptr %i.brp, align 4, !tbaa !8
  %i.brr = add nsw i32 %i.brq, 24
  br label %tr_ilg.exit585.i.i

bb.jq:                                            ; preds = %bb.jo
  %i.brs = lshr i64 %i.sv, 16
  %i.brt = and i64 %i.brs, 255
  %i.bru = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.brt
  %i.brv = load i32, ptr %i.bru, align 4, !tbaa !8
  %i.brw = add nsw i32 %i.brv, 16
  br label %tr_ilg.exit585.i.i

bb.jr:                                            ; preds = %bb.jn
  %.not7.i584.i.i = icmp samesign ult i32 %i.sx, 256
  br i1 %.not7.i584.i.i, label %bb.jt, label %bb.js

bb.js:                                            ; preds = %bb.jr
  %i.brx = lshr i64 %i.sv, 8
  %i.bry = and i64 %i.brx, 255
  %i.brz = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.bry
  %i.bsa = load i32, ptr %i.brz, align 4, !tbaa !8
  %i.bsb = add nsw i32 %i.bsa, 8
  br label %tr_ilg.exit585.i.i

bb.jt:                                            ; preds = %bb.jr
  %i.bsc = and i64 %i.sv, 255
  %i.bsd = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.bsc
  %i.bse = load i32, ptr %i.bsd, align 4, !tbaa !8
  br label %tr_ilg.exit585.i.i

tr_ilg.exit585.i.i:                               ; preds = %bb.jt, %bb.js, %bb.jq, %bb.jp
  %i.bsf = phi i32 [ %i.brw, %bb.jq ], [ %i.brr, %bb.jp ], [ %i.bsb, %bb.js ], [ %i.bse, %bb.jt ]
  %i.bsg = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.rd
  br label %.outer.i.i.backedge

bb.ju:                                            ; preds = %bb.jl
  %i.bsh = add nsw i32 %.sroa.23.0.i, %i.sx       ; 2 uses
  %i.bsi = icmp sgt i32 %.0.ph.i.i, -1
  br i1 %i.bsi, label %bb.jv, label %bb.jw

bb.jv:                                            ; preds = %bb.ju
  %i.bsj = zext nneg i32 %.0.ph.i.i to i64
  %i.bsk = getelementptr inbounds nuw [32 x i8], ptr %5, i64 %i.bsj
  %i.bsl = getelementptr inbounds nuw i8, ptr %i.bsk, i64 24
  store i32 -1, ptr %i.bsl, align 8, !tbaa !73
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jv, %bb.ju
  %i.bsm = icmp eq i32 %.0445.ph.i.i, 0
  br i1 %i.bsm, label %tr_introsort.exit.i, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.bsn = add nsw i32 %.0445.ph.i.i, -1          ; 2 uses
  %i.bso = sext i32 %i.bsn to i64
  %i.bsp = getelementptr inbounds [32 x i8], ptr %5, i64 %i.bso ; 5 uses
  %i.bsq = load ptr, ptr %i.bsp, align 16, !tbaa !67
  %i.bsr = getelementptr inbounds nuw i8, ptr %i.bsp, i64 8
  %i.bss = load ptr, ptr %i.bsr, align 8, !tbaa !71
  %i.bst = getelementptr inbounds nuw i8, ptr %i.bsp, i64 16
  %i.bsu = load ptr, ptr %i.bst, align 16, !tbaa !72
  %i.bsv = getelementptr inbounds nuw i8, ptr %i.bsp, i64 24
  %i.bsw = load i32, ptr %i.bsv, align 8, !tbaa !73
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bsp, i64 28
  %i.bsy = load i32, ptr %i.bsx, align 4, !tbaa !74
  br label %.outer.i.i.backedge

.outer.i.i.backedge:                              ; preds = %bb.jx, %tr_ilg.exit585.i.i, %bb.jk, %bb.ji, %bb.jh, %bb.jf, %bb.jd, %bb.jc, %bb.ix, %bb.iw, %bb.iv, %bb.is, %bb.ir, %bb.iq, %bb.in, %bb.im, %bb.il, %bb.ii, %bb.ih, %bb.ig, %bb.gh, %bb.gf, %bb.gd, %bb.ga, %bb.fz, %bb.fy, %bb.fj, %bb.ep, %bb.en, %bb.em, %bb.ek, %bb.ej, %bb.ef, %bb.ee, %bb.ec, %bb.eb, %bb.dr, %bb.dp, %bb.do, %bb.dm, %bb.dl, %bb.dh, %bb.dg, %bb.de, %bb.dd
  %.sroa.23.0.i.be = phi i32 [ %.sroa.23.0.i, %bb.im ], [ %.sroa.23.0.i, %bb.ig ], [ %.sroa.23.0.i, %bb.ii ], [ %.sroa.23.0.i, %bb.ih ], [ %i.aqc, %bb.gd ], [ %i.aqc, %bb.gf ], [ %.sroa.23.0.i, %bb.ga ], [ %.sroa.23.0.i, %bb.fz ], [ %.sroa.23.0.i, %bb.fy ], [ %.sroa.23.0.i, %bb.gh ], [ %.sroa.23.0.i, %bb.ef ], [ %.sroa.23.0.i, %bb.ee ], [ %.sroa.23.0.i, %bb.ec ], [ %.sroa.23.0.i, %bb.eb ], [ %.sroa.23.0.i, %bb.en ], [ %.sroa.23.0.i, %bb.em ], [ %.sroa.23.0.i, %bb.ek ], [ %.sroa.23.0.i, %bb.ej ], [ %.sroa.23.0.i, %bb.ep ], [ %.sroa.23.0.i, %bb.dh ], [ %.sroa.23.0.i, %bb.dg ], [ %.sroa.23.0.i, %bb.de ], [ %.sroa.23.0.i, %bb.dd ], [ %.sroa.23.0.i, %bb.dp ], [ %.sroa.23.0.i, %bb.do ], [ %.sroa.23.0.i, %bb.dm ], [ %.sroa.23.0.i, %bb.dl ], [ %.sroa.23.0.i, %bb.dr ], [ %.sroa.23.0.i, %bb.fj ], [ %i.bsh, %bb.jx ], [ %.sroa.23.0.i, %tr_ilg.exit585.i.i ], [ %.sroa.23.1.i, %bb.jh ], [ %.sroa.23.1.i, %bb.ji ], [ %.sroa.23.1.i, %bb.jk ], [ %.sroa.23.1.i, %bb.jc ], [ %.sroa.23.1.i, %bb.jd ], [ %.sroa.23.1.i, %bb.jf ], [ %.sroa.23.0.i, %bb.ix ], [ %.sroa.23.0.i, %bb.iv ], [ %.sroa.23.0.i, %bb.iw ], [ %.sroa.23.0.i, %bb.iq ], [ %.sroa.23.0.i, %bb.is ], [ %.sroa.23.0.i, %bb.ir ], [ %.sroa.23.0.i, %bb.in ], [ %.sroa.23.0.i, %bb.il ]
  %.sroa.9.3.i.be = phi i32 [ %.sroa.9.5.i, %bb.im ], [ %.sroa.9.5.i, %bb.ig ], [ %.sroa.9.5.i, %bb.ii ], [ %.sroa.9.5.i, %bb.ih ], [ %.sroa.9.3.i, %bb.gd ], [ %.sroa.9.3.i, %bb.gf ], [ %.sroa.9.7.i, %bb.ga ], [ %.sroa.9.7.i, %bb.fz ], [ %.sroa.9.7.i, %bb.fy ], [ %.sroa.9.3.i, %bb.gh ], [ %.sroa.9.3.i, %bb.ef ], [ %.sroa.9.3.i, %bb.ee ], [ %.sroa.9.3.i, %bb.ec ], [ %.sroa.9.3.i, %bb.eb ], [ %.sroa.9.3.i, %bb.en ], [ %.sroa.9.3.i, %bb.em ], [ %.sroa.9.3.i, %bb.ek ], [ %.sroa.9.3.i, %bb.ej ], [ %.sroa.9.3.i, %bb.ep ], [ %.sroa.9.3.i, %bb.dh ], [ %.sroa.9.3.i, %bb.dg ], [ %.sroa.9.3.i, %bb.de ], [ %.sroa.9.3.i, %bb.dd ], [ %.sroa.9.3.i, %bb.dp ], [ %.sroa.9.3.i, %bb.do ], [ %.sroa.9.3.i, %bb.dm ], [ %.sroa.9.3.i, %bb.dl ], [ %.sroa.9.3.i, %bb.dr ], [ %.sroa.9.3.i, %bb.fj ], [ %.sroa.9.3.i, %bb.jx ], [ %.sroa.9.6.i, %tr_ilg.exit585.i.i ], [ %.sroa.9.3.i, %bb.jh ], [ %.sroa.9.3.i, %bb.ji ], [ %.sroa.9.3.i, %bb.jk ], [ %.sroa.9.3.i, %bb.jc ], [ %.sroa.9.3.i, %bb.jd ], [ %.sroa.9.3.i, %bb.jf ], [ %.sroa.9.5.i, %bb.ix ], [ %.sroa.9.5.i, %bb.iv ], [ %.sroa.9.5.i, %bb.iw ], [ %.sroa.9.5.i, %bb.iq ], [ %.sroa.9.5.i, %bb.is ], [ %.sroa.9.5.i, %bb.ir ], [ %.sroa.9.5.i, %bb.in ], [ %.sroa.9.5.i, %bb.il ]
  %.sroa.0.3.i.be = phi i32 [ %.sroa.0.5.i, %bb.im ], [ %.sroa.0.5.i, %bb.ig ], [ %.sroa.0.5.i, %bb.ii ], [ %.sroa.0.5.i, %bb.ih ], [ 0, %bb.gd ], [ 0, %bb.gf ], [ %.sroa.0.7.i, %bb.ga ], [ %.sroa.0.7.i, %bb.fz ], [ %.sroa.0.7.i, %bb.fy ], [ %.sroa.0.3.i, %bb.gh ], [ %.sroa.0.3.i, %bb.ef ], [ %.sroa.0.3.i, %bb.ee ], [ %.sroa.0.3.i, %bb.ec ], [ %.sroa.0.3.i, %bb.eb ], [ %.sroa.0.3.i, %bb.en ], [ %.sroa.0.3.i, %bb.em ], [ %.sroa.0.3.i, %bb.ek ], [ %.sroa.0.3.i, %bb.ej ], [ %.sroa.0.3.i, %bb.ep ], [ %.sroa.0.3.i, %bb.dh ], [ %.sroa.0.3.i, %bb.dg ], [ %.sroa.0.3.i, %bb.de ], [ %.sroa.0.3.i, %bb.dd ], [ %.sroa.0.3.i, %bb.dp ], [ %.sroa.0.3.i, %bb.do ], [ %.sroa.0.3.i, %bb.dm ], [ %.sroa.0.3.i, %bb.dl ], [ %.sroa.0.3.i, %bb.dr ], [ %.sroa.0.3.i, %bb.fj ], [ 0, %bb.jx ], [ %.sroa.0.6.i, %tr_ilg.exit585.i.i ], [ %.sroa.0.3.i, %bb.jh ], [ %.sroa.0.3.i, %bb.ji ], [ %.sroa.0.3.i, %bb.jk ], [ %.sroa.0.3.i, %bb.jc ], [ %.sroa.0.3.i, %bb.jd ], [ %.sroa.0.3.i, %bb.jf ], [ %.sroa.0.5.i, %bb.ix ], [ %.sroa.0.5.i, %bb.iv ], [ %.sroa.0.5.i, %bb.iw ], [ %.sroa.0.5.i, %bb.iq ], [ %.sroa.0.5.i, %bb.is ], [ %.sroa.0.5.i, %bb.ir ], [ %.sroa.0.5.i, %bb.in ], [ %.sroa.0.5.i, %bb.il ]
  %.0462.ph.i.i.be = phi ptr [ %i.bjg, %bb.im ], [ %.0462.ph.i.i, %bb.ig ], [ %i.bjh, %bb.ii ], [ %i.bjg, %bb.ih ], [ %i.aop, %bb.gd ], [ %i.aqq, %bb.gf ], [ %i.aop, %bb.ga ], [ %.1463.i.i, %bb.fz ], [ %.1463.i.i, %bb.fy ], [ %i.ard, %bb.gh ], [ %.0166.i78.i, %bb.ef ], [ %.0166.i78.i, %bb.ee ], [ %.0166.i78.i, %bb.ec ], [ %.0166.i78.i, %bb.eb ], [ %.0462.ph.i.i, %bb.en ], [ %.0462.ph.i.i, %bb.em ], [ %.0462.ph.i.i, %bb.ek ], [ %.0462.ph.i.i, %bb.ej ], [ %i.ahv, %bb.ep ], [ %.0462.ph.i.i, %bb.dh ], [ %.0462.ph.i.i, %bb.dg ], [ %.0462.ph.i.i, %bb.de ], [ %.0462.ph.i.i, %bb.dd ], [ %.0166.i78.i, %bb.dp ], [ %.0166.i78.i, %bb.do ], [ %.0166.i78.i, %bb.dm ], [ %.0166.i78.i, %bb.dl ], [ %i.aer, %bb.dr ], [ %i.amj, %bb.fj ], [ %i.bss, %bb.jx ], [ %.0462.ph.i.i, %tr_ilg.exit585.i.i ], [ %i.bjh, %bb.jh ], [ %.0462.ph.i.i, %bb.ji ], [ %i.brd, %bb.jk ], [ %.0462.ph.i.i, %bb.jc ], [ %i.bjh, %bb.jd ], [ %i.bqh, %bb.jf ], [ %i.bjg, %bb.ix ], [ %i.bjh, %bb.iv ], [ %i.bjg, %bb.iw ], [ %i.bjh, %bb.iq ], [ %.0462.ph.i.i, %bb.is ], [ %i.bjg, %bb.ir ], [ %i.bjg, %bb.in ], [ %.0462.ph.i.i, %bb.il ]
  %.0459.ph.i.i.be = phi ptr [ %i.bjh, %bb.im ], [ %i.bjg, %bb.ig ], [ %.0459.ph.i.i, %bb.ii ], [ %i.bjh, %bb.ih ], [ %.0459.ph.i.i, %bb.gd ], [ %i.aqs, %bb.gf ], [ %.0459.ph.i.i, %bb.ga ], [ %i.aop, %bb.fz ], [ %i.aop, %bb.fy ], [ %i.arf, %bb.gh ], [ %.0459.ph.i.i, %bb.ef ], [ %.0459.ph.i.i, %bb.ee ], [ %.0459.ph.i.i, %bb.ec ], [ %.0459.ph.i.i, %bb.eb ], [ %.0165.i79.i, %bb.en ], [ %.0165.i79.i, %bb.em ], [ %.0165.i79.i, %bb.ek ], [ %.0165.i79.i, %bb.ej ], [ %i.ahx, %bb.ep ], [ %.0165.i79.i, %bb.dh ], [ %.0165.i79.i, %bb.dg ], [ %.0165.i79.i, %bb.de ], [ %.0165.i79.i, %bb.dd ], [ %.0459.ph.i.i, %bb.dp ], [ %.0459.ph.i.i, %bb.do ], [ %.0459.ph.i.i, %bb.dm ], [ %.0459.ph.i.i, %bb.dl ], [ %i.aet, %bb.dr ], [ %i.aml, %bb.fj ], [ %i.bsu, %bb.jx ], [ %.0459.ph.i.i, %tr_ilg.exit585.i.i ], [ %.0459.ph.i.i, %bb.jh ], [ %i.bjg, %bb.ji ], [ %i.brf, %bb.jk ], [ %i.bjg, %bb.jc ], [ %.0459.ph.i.i, %bb.jd ], [ %i.bqj, %bb.jf ], [ %i.bjh, %bb.ix ], [ %.0459.ph.i.i, %bb.iv ], [ %i.bjh, %bb.iw ], [ %.0459.ph.i.i, %bb.iq ], [ %i.bjg, %bb.is ], [ %i.bjh, %bb.ir ], [ %i.bjh, %bb.in ], [ %i.bjg, %bb.il ]
  %.0456.ph.i.i.be = phi ptr [ %i.bmw, %bb.im ], [ %.0456.ph.i.i, %bb.ig ], [ %.0456.ph.i.i, %bb.ii ], [ %i.bly, %bb.ih ], [ %.0456.ph.i.i, %bb.gd ], [ %i.aqo, %bb.gf ], [ %.0456.ph.i.i, %bb.ga ], [ %i.apu, %bb.fz ], [ %i.aps, %bb.fy ], [ %i.arb, %bb.gh ], [ %.0456.ph.i.i, %bb.ef ], [ %.0456.ph.i.i, %bb.ee ], [ %.0456.ph.i.i, %bb.ec ], [ %.0456.ph.i.i, %bb.eb ], [ %.0456.ph.i.i, %bb.en ], [ %.0456.ph.i.i, %bb.em ], [ %.0456.ph.i.i, %bb.ek ], [ %.0456.ph.i.i, %bb.ej ], [ %i.aht, %bb.ep ], [ %.0456.ph.i.i, %bb.dh ], [ %.0456.ph.i.i, %bb.dg ], [ %.0456.ph.i.i, %bb.de ], [ %.0456.ph.i.i, %bb.dd ], [ %.0456.ph.i.i, %bb.dp ], [ %.0456.ph.i.i, %bb.do ], [ %.0456.ph.i.i, %bb.dm ], [ %.0456.ph.i.i, %bb.dl ], [ %i.aep, %bb.dr ], [ %i.amh, %bb.fj ], [ %i.bsq, %bb.jx ], [ %i.bsg, %tr_ilg.exit585.i.i ], [ %.0456.ph.i.i, %bb.jh ], [ %.0456.ph.i.i, %bb.ji ], [ %i.brb, %bb.jk ], [ %.0456.ph.i.i, %bb.jc ], [ %.0456.ph.i.i, %bb.jd ], [ %i.bqf, %bb.jf ], [ %i.bpk, %bb.ix ], [ %.0456.ph.i.i, %bb.iv ], [ %i.box, %bb.iw ], [ %.0456.ph.i.i, %bb.iq ], [ %.0456.ph.i.i, %bb.is ], [ %i.bnz, %bb.ir ], [ %i.bnj, %bb.in ], [ %.0456.ph.i.i, %bb.il ]
  %.0449.ph.i.i.be = phi i32 [ %i.bkf, %bb.im ], [ %i.awm, %bb.ig ], [ %i.awm, %bb.ii ], [ %i.bkf, %bb.ih ], [ -3, %bb.gd ], [ %i.aqu, %bb.gf ], [ -3, %bb.ga ], [ %i.aoo, %bb.fz ], [ %i.aoo, %bb.fy ], [ %i.arh, %bb.gh ], [ %i.agu, %bb.ef ], [ %i.agr, %bb.ee ], [ %i.agm, %bb.ec ], [ %i.agh, %bb.eb ], [ %i.aho, %bb.en ], [ %i.ahl, %bb.em ], [ %i.ahg, %bb.ek ], [ %i.ahb, %bb.ej ], [ %i.ahz, %bb.ep ], [ %i.adq, %bb.dh ], [ %i.adn, %bb.dg ], [ %i.adi, %bb.de ], [ %i.add, %bb.dd ], [ %i.aek, %bb.dp ], [ %i.aeh, %bb.do ], [ %i.aec, %bb.dm ], [ %i.adx, %bb.dl ], [ %i.aev, %bb.dr ], [ %i.amn, %bb.fj ], [ %i.bsw, %bb.jx ], [ %i.bsf, %tr_ilg.exit585.i.i ], [ %i.awm, %bb.jh ], [ %i.awm, %bb.ji ], [ %i.brh, %bb.jk ], [ %i.awm, %bb.jc ], [ %i.awm, %bb.jd ], [ %i.bql, %bb.jf ], [ %i.bkf, %bb.ix ], [ %i.awm, %bb.iv ], [ %i.bkf, %bb.iw ], [ %i.awm, %bb.iq ], [ %i.awm, %bb.is ], [ %i.bkf, %bb.ir ], [ %i.bkf, %bb.in ], [ %i.awm, %bb.il ]
  %.0445.ph.i.i.be = phi i32 [ %i.bmu, %bb.im ], [ %i.blv, %bb.ig ], [ %i.bme, %bb.ii ], [ %.0445.ph.i.i, %bb.ih ], [ %.0445.ph.i.i, %bb.gd ], [ %i.aql, %bb.gf ], [ %i.aqa, %bb.ga ], [ %.0445.ph.i.i, %bb.fz ], [ %i.apq, %bb.fy ], [ %i.aqy, %bb.gh ], [ %i.afz, %bb.ef ], [ %i.afz, %bb.ee ], [ %i.afz, %bb.ec ], [ %i.afz, %bb.eb ], [ %.1446.i.i, %bb.en ], [ %.1446.i.i, %bb.em ], [ %.1446.i.i, %bb.ek ], [ %.1446.i.i, %bb.ej ], [ %i.ahq, %bb.ep ], [ %i.acv, %bb.dh ], [ %i.acv, %bb.dg ], [ %i.acv, %bb.de ], [ %i.acv, %bb.dd ], [ %.1446.i.i, %bb.dp ], [ %.1446.i.i, %bb.do ], [ %.1446.i.i, %bb.dm ], [ %.1446.i.i, %bb.dl ], [ %i.aem, %bb.dr ], [ %i.ame, %bb.fj ], [ %i.bsn, %bb.jx ], [ %.0445.ph.i.i, %tr_ilg.exit585.i.i ], [ %i.bqu, %bb.jh ], [ %.0445.ph.i.i, %bb.ji ], [ %i.bqy, %bb.jk ], [ %i.bpy, %bb.jc ], [ %.0445.ph.i.i, %bb.jd ], [ %i.bqc, %bb.jf ], [ %i.bpi, %bb.ix ], [ %i.bot, %bb.iv ], [ %i.bov, %bb.iw ], [ %i.bnw, %bb.iq ], [ %i.bof, %bb.is ], [ %.0445.ph.i.i, %bb.ir ], [ %i.bnh, %bb.in ], [ %i.bms, %bb.il ]
  %.0.ph.i.i.be = phi i32 [ %.0.ph.i.i, %bb.im ], [ %.0.ph.i.i, %bb.ig ], [ %.0.ph.i.i, %bb.ii ], [ %.0.ph.i.i, %bb.ih ], [ %.0.ph.i.i, %bb.gd ], [ %i.aqw, %bb.gf ], [ %.0.ph.i.i, %bb.ga ], [ %.0.ph.i.i, %bb.fz ], [ %.0.ph.i.i, %bb.fy ], [ %i.arj, %bb.gh ], [ %.1.i.i311, %bb.ef ], [ %.1.i.i311, %bb.ee ], [ %.1.i.i311, %bb.ec ], [ %.1.i.i311, %bb.eb ], [ %.1.i.i311, %bb.en ], [ %.1.i.i311, %bb.em ], [ %.1.i.i311, %bb.ek ], [ %.1.i.i311, %bb.ej ], [ %i.aib, %bb.ep ], [ %.1.i.i311, %bb.dh ], [ %.1.i.i311, %bb.dg ], [ %.1.i.i311, %bb.de ], [ %.1.i.i311, %bb.dd ], [ %.1.i.i311, %bb.dp ], [ %.1.i.i311, %bb.do ], [ %.1.i.i311, %bb.dm ], [ %.1.i.i311, %bb.dl ], [ %i.aex, %bb.dr ], [ %i.amp, %bb.fj ], [ %i.bsy, %bb.jx ], [ %.0.ph.i.i, %tr_ilg.exit585.i.i ], [ %.0.ph.i.i, %bb.jh ], [ %.0.ph.i.i, %bb.ji ], [ %i.brj, %bb.jk ], [ %.0.ph.i.i, %bb.jc ], [ %.0.ph.i.i, %bb.jd ], [ %i.bqn, %bb.jf ], [ %.0.ph.i.i, %bb.ix ], [ %.0.ph.i.i, %bb.iv ], [ %.0.ph.i.i, %bb.iw ], [ %.0.ph.i.i, %bb.iq ], [ %.0.ph.i.i, %bb.is ], [ %.0.ph.i.i, %bb.ir ], [ %.0.ph.i.i, %bb.in ], [ %.0.ph.i.i, %bb.il ]
  br label %.outer.i.i

tr_introsort.exit.i:                              ; preds = %bb.jw, %bb.jj, %bb.je, %bb.gg, %bb.ge, %tr_copy.exit.i.i, %bb.eo, %bb.dq
  %.sroa.0.3.lcssa.i = phi i32 [ %.sroa.0.3.i, %bb.dq ], [ %.sroa.0.3.i, %bb.eo ], [ %.sroa.0.3.i, %tr_copy.exit.i.i ], [ 0, %bb.ge ], [ %.sroa.0.3.i, %bb.gg ], [ %.sroa.0.3.i, %bb.je ], [ %.sroa.0.3.i, %bb.jj ], [ 0, %bb.jw ] ; 3 uses
  %.sroa.23.3.i = phi i32 [ %.sroa.23.0.i, %bb.dq ], [ %.sroa.23.0.i, %bb.eo ], [ %.sroa.23.0.i, %tr_copy.exit.i.i ], [ %i.aqc, %bb.ge ], [ %.sroa.23.0.i, %bb.gg ], [ %.sroa.23.1.i, %bb.je ], [ %.sroa.23.1.i, %bb.jj ], [ %i.bsh, %bb.jw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %.not52.i = icmp eq i32 %.sroa.23.3.i, 0
  br i1 %.not52.i, label %bb.jy, label %.thread.i

bb.jy:                                            ; preds = %tr_introsort.exit.i
  %i.bsz = sub i64 %i.ru, %i.rt
  %i.bta = lshr exact i64 %i.bsz, 2
  %i.btb = trunc i64 %i.bta to i32
  br label %bb.ka

bb.jz:                                            ; preds = %bb.bm
  %i.btc = icmp eq i64 %i.rv, 4
  %spec.select.i294 = sext i1 %i.btc to i32
  br label %bb.ka

bb.ka:                                            ; preds = %bb.jz, %bb.jy, %bb.bj
  %.sroa.9.2.i = phi i32 [ %.sroa.9.1.i, %bb.bj ], [ %.sroa.9.3.i, %bb.jy ], [ %.sroa.9.1.i, %bb.jz ] ; 3 uses
  %.sroa.0.2.i = phi i32 [ %.sroa.0.1.i, %bb.bj ], [ %.sroa.0.3.lcssa.i, %bb.jy ], [ %.sroa.0.1.i, %bb.jz ] ; 3 uses
  %.146.i = phi ptr [ %i.rj, %bb.bj ], [ %i.rs, %bb.jy ], [ %i.rs, %bb.jz ] ; 3 uses
  %.3.i = phi i32 [ %i.rk, %bb.bj ], [ %i.btb, %bb.jy ], [ %spec.select.i294, %bb.jz ] ; 4 uses
  %i.btd = icmp ult ptr %.146.i, %i.br
  br i1 %i.btd, label %thread-pre-split.i, label %bb.kb, !llvm.loop !103

.thread.i:                                        ; preds = %tr_introsort.exit.i
  %i.bte = add nsw i32 %.sroa.23.3.i, %.0.i       ; 2 uses
  %i.btf = icmp slt i64 %i.rr, %.idx165.i
  br i1 %i.btf, label %thread-pre-split.i, label %.thread155.i, !llvm.loop !103

bb.kb:                                            ; preds = %bb.ka
  %.not53.i = icmp eq i32 %.3.i, 0
  br i1 %.not53.i, label %.thread155.i, label %bb.kc

bb.kc:                                            ; preds = %bb.kb
  %i.btg = sext i32 %.3.i to i64
  %i.bth = getelementptr inbounds [4 x i8], ptr %.146.i, i64 %i.btg
  store i32 %.3.i, ptr %i.bth, align 4, !tbaa !8
  br label %.thread155.i

.thread155.i:                                     ; preds = %.thread.i, %bb.kc, %bb.kb
  %.sroa.9.2145164.i = phi i32 [ %.sroa.9.2.i, %bb.kb ], [ %.sroa.9.2.i, %bb.kc ], [ %.sroa.9.3.i, %.thread.i ]
  %.sroa.0.2147163.i = phi i32 [ %.sroa.0.2.i, %bb.kb ], [ %.sroa.0.2.i, %bb.kc ], [ %.sroa.0.3.lcssa.i, %.thread.i ]
  %.2153162.i = phi i32 [ %.0.i, %bb.kb ], [ %.0.i, %bb.kc ], [ %i.bte, %.thread.i ]
  %i.bti = icmp eq i32 %.2153162.i, 0
  br i1 %i.bti, label %trsort.exit, label %bb.kd

bb.kd:                                            ; preds = %.thread155.i
  %i.btj = getelementptr inbounds i8, ptr %.047214.i, i64 %i.rc
  %i.btk = load i32, ptr %1, align 4, !tbaa !8    ; 2 uses
  %i.btl = icmp sgt i32 %i.btk, %i.qs
  br i1 %i.btl, label %.preheader175.i, label %trsort.exit, !llvm.loop !104

trsort.exit:                                      ; preds = %.thread155.i, %bb.kd, %tr_ilg.exit.i
  %i.btm = load i8, ptr %i.c, align 1, !tbaa !9
  %i.btn = zext i8 %i.btm to i32
  br label %.preheader

.preheader:                                       ; preds = %trsort.exit, %.critedge6
  %.7460 = phi i32 [ %i.btn, %trsort.exit ], [ %.11, %.critedge6 ]
  %.4255459 = phi i32 [ %i.bk, %trsort.exit ], [ %i.bug, %.critedge6 ]
  %.13270458 = phi i32 [ %i.a, %trsort.exit ], [ %.15.lcssa, %.critedge6 ] ; 2 uses
  %.not317112 = icmp eq i32 %.13270458, 0
  br i1 %.not317112, label %.critedge6.thread, label %.lr.ph115

.lr.ph115:                                        ; preds = %.preheader
  %i.bto = zext nneg i32 %.13270458 to i64
  br label %bb.kf

bb.ke:                                            ; preds = %bb.kf
  %.not317 = icmp eq i64 %i.btp, 0
  br i1 %.not317, label %.critedge6.thread, label %bb.kf, !llvm.loop !105

bb.kf:                                            ; preds = %.lr.ph115, %bb.ke
  %.3114 = phi i32 [ %.7460, %.lr.ph115 ], [ %i.bts, %bb.ke ]
  %indvars.iv596113 = phi i64 [ %i.bto, %.lr.ph115 ], [ %i.btp, %bb.ke ] ; 3 uses
  %i.btp = add nsw i64 %indvars.iv596113, -1      ; 5 uses
  %i.btq = getelementptr inbounds nuw i8, ptr %0, i64 %i.btp
  %i.btr = load i8, ptr %i.btq, align 1, !tbaa !9
  %i.bts = zext i8 %i.btr to i32                  ; 4 uses
  %.not286 = icmp sgt i32 %.3114, %i.bts
  br i1 %.not286, label %bb.kg, label %bb.ke, !llvm.loop !105

bb.kg:                                            ; preds = %bb.kf
  %i.btt = trunc nuw nsw i64 %indvars.iv596113 to i32 ; 2 uses
  %i.btu = trunc nuw nsw i64 %i.btp to i32        ; 2 uses
  %i.btv = add nsw i32 %i.btt, -2                 ; 2 uses
  %i.btw = icmp sgt i64 %indvars.iv596113, 1
  br i1 %i.btw, label %.lr.ph452, label %.critedge6

.lr.ph452:                                        ; preds = %bb.kg, %bb.kh
  %.4450 = phi i32 [ %i.btz, %bb.kh ], [ %i.bts, %bb.kg ]
  %.15449 = phi i32 [ %17, %bb.kh ], [ %i.btv, %bb.kg ] ; 4 uses
  %16 = zext nneg i32 %.15449 to i64
  %i.btx = getelementptr inbounds nuw i8, ptr %0, i64 %16
  %i.bty = load i8, ptr %i.btx, align 1, !tbaa !9
  %i.btz = zext i8 %i.bty to i32                  ; 4 uses
  %.not287 = icmp samesign ult i32 %.4450, %i.btz
  br i1 %.not287, label %.critedge6, label %bb.kh

bb.kh:                                            ; preds = %.lr.ph452
  %17 = add nsw i32 %.15449, -1
  %i.bua = icmp sgt i32 %.15449, 0
  br i1 %i.bua, label %.lr.ph452, label %.critedge6, !llvm.loop !106

.critedge6:                                       ; preds = %bb.kh, %.lr.ph452, %bb.kg
  %.15.lcssa = phi i32 [ %i.btv, %bb.kg ], [ -1, %bb.kh ], [ %.15449, %.lr.ph452 ] ; 3 uses
  %.11 = phi i32 [ %i.bts, %bb.kg ], [ %i.btz, %.lr.ph452 ], [ %i.btz, %bb.kh ]
  %i.bub = icmp eq i64 %i.btp, 0
  %i.buc = sub nsw i32 %i.btu, %.15.lcssa
  %i.bud = icmp sgt i32 %i.buc, 1
  %or.cond = select i1 %i.bub, i1 true, i1 %i.bud
  %i.bue = sub nsw i32 0, %i.btt
  %i.buf = select i1 %or.cond, i32 %i.btu, i32 %i.bue
  %i.bug = add nsw i32 %.4255459, -1              ; 2 uses
  %i.buh = sext i32 %i.bug to i64
  %i.bui = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.buh
  %i.buj = load i32, ptr %i.bui, align 4, !tbaa !8
  %i.buk = sext i32 %i.buj to i64
  %i.bul = getelementptr inbounds [4 x i8], ptr %1, i64 %i.buk
  store i32 %i.buf, ptr %i.bul, align 4, !tbaa !8
  %i.bum = icmp sgt i32 %.15.lcssa, -1
  br i1 %i.bum, label %.preheader, label %.critedge6.thread, !llvm.loop !107

.critedge6.thread:                                ; preds = %.critedge6, %.preheader, %bb.ke
  %i.bun = getelementptr inbounds nuw i8, ptr %3, i64 262140
  store i32 %4, ptr %i.bun, align 4, !tbaa !8
  br label %.lr.ph473

.lr.ph473:                                        ; preds = %._crit_edge474, %.critedge6.thread
  %indvars.iv611 = phi i64 [ 254, %.critedge6.thread ], [ %indvars.iv.next612, %._crit_edge474 ] ; 7 uses
  %.0248477 = phi i32 [ %i.dr, %.critedge6.thread ], [ %.2250.lcssa, %._crit_edge474 ]
  %indvars613 = trunc i64 %indvars.iv611 to i32   ; 3 uses
  %i.buo = add nuw nsw i32 %indvars613, 1
  %i.bup = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv611
  %i.buq = getelementptr inbounds nuw i8, ptr %i.bup, i64 4
  %i.bur = load i32, ptr %i.buq, align 4, !tbaa !8
  %i.bus = add nsw i32 %i.bur, -1
  %invariant.gep918 = getelementptr [4 x i8], ptr %3, i64 %indvars.iv611
  %indvars.iv611.tr = trunc i64 %indvars.iv611 to i32
  %i.but = shl i32 %indvars.iv611.tr, 8           ; 2 uses
  %i.buu = sext i32 %i.but to i64
  br label %bb.ki

bb.ki:                                            ; preds = %.lr.ph473, %._crit_edge466
  %indvars.iv608 = phi i64 [ 255, %.lr.ph473 ], [ %indvars.iv.next609, %._crit_edge466 ] ; 3 uses
  %.1249470 = phi i32 [ %.0248477, %.lr.ph473 ], [ %.2250.lcssa, %._crit_edge466 ] ; 3 uses
  %.17469 = phi i32 [ %i.bus, %.lr.ph473 ], [ %.18.lcssa, %._crit_edge466 ] ; 2 uses
  %.idx806 = shl i64 %indvars.iv608, 10
  %gep919 = getelementptr i8, ptr %invariant.gep918, i64 %.idx806 ; 2 uses
  %i.buv = load i32, ptr %gep919, align 4, !tbaa !8
  %i.buw = sub i32 %.17469, %i.buv                ; 2 uses
  store i32 %.17469, ptr %gep919, align 4, !tbaa !8
  %i.bux = or i64 %indvars.iv608, %i.buu
  %i.buy = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bux
  %i.buz = load i32, ptr %i.buy, align 4, !tbaa !8 ; 2 uses
  %.not461 = icmp sgt i32 %i.buz, %.1249470
  br i1 %.not461, label %._crit_edge466, label %.lr.ph465.preheader

.lr.ph465.preheader:                              ; preds = %bb.ki
  %i.bva = sext i32 %.1249470 to i64              ; 6 uses
  %i.bvb = sext i32 %i.buz to i64                 ; 2 uses
  %i.bvc = sext i32 %i.buw to i64                 ; 5 uses
  %i.bvd = add nsw i64 %i.bva, 1
  %i.bve = sub nsw i64 %i.bvd, %i.bvb             ; 3 uses
  %min.iters.check231 = icmp ult i64 %i.bve, 8
  br i1 %min.iters.check231, label %.lr.ph465.preheader243, label %vector.memcheck229

vector.memcheck229:                               ; preds = %.lr.ph465.preheader
  %i.bvf = sub nsw i64 %i.bva, %i.bvc
  %i.bvg = shl nsw i64 %i.bvf, 2
  %i.bvh = add nsw i64 %i.bvg, -1
  %diff.check = icmp ult i64 %i.bvh, 31
  br i1 %diff.check, label %.lr.ph465.preheader243, label %vector.ph232

vector.ph232:                                     ; preds = %vector.memcheck229
  %n.vec233 = and i64 %i.bve, -8                  ; 4 uses
  %i.bvi = sub nsw i64 %i.bvc, %n.vec233          ; 2 uses
  %i.bvj = sub nsw i64 %i.bva, %n.vec233          ; 2 uses
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %vector.ph232
  %index235 = phi i64 [ 0, %vector.ph232 ], [ %index.next238, %vector.body234 ] ; 3 uses
  %i.bvk = sub i64 %i.bvc, %index235
  %i.bvl = sub i64 %i.bva, %index235
  %i.bvm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bvl ; 2 uses
  %i.bvn = getelementptr inbounds i8, ptr %i.bvm, i64 -12
  %i.bvo = getelementptr inbounds i8, ptr %i.bvm, i64 -28
  %wide.load236 = load <4 x i32>, ptr %i.bvn, align 4, !tbaa !8
  %wide.load237 = load <4 x i32>, ptr %i.bvo, align 4, !tbaa !8
  %i.bvp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bvk ; 2 uses
  %i.bvq = getelementptr inbounds i8, ptr %i.bvp, i64 -12
  %i.bvr = getelementptr inbounds i8, ptr %i.bvp, i64 -28
  store <4 x i32> %wide.load236, ptr %i.bvq, align 4, !tbaa !8
  store <4 x i32> %wide.load237, ptr %i.bvr, align 4, !tbaa !8
  %index.next238 = add nuw i64 %index235, 8       ; 2 uses
  %i.bvs = icmp eq i64 %index.next238, %n.vec233
  br i1 %i.bvs, label %middle.block239, label %vector.body234, !llvm.loop !108

middle.block239:                                  ; preds = %vector.body234
  %cmp.n240 = icmp eq i64 %i.bve, %n.vec233
  br i1 %cmp.n240, label %._crit_edge466.loopexit, label %.lr.ph465.preheader243

.lr.ph465.preheader243:                           ; preds = %vector.memcheck229, %.lr.ph465.preheader, %middle.block239
  %indvars.iv603.ph = phi i64 [ %i.bvc, %vector.memcheck229 ], [ %i.bvc, %.lr.ph465.preheader ], [ %i.bvi, %middle.block239 ]
  %indvars.iv601.ph = phi i64 [ %i.bva, %vector.memcheck229 ], [ %i.bva, %.lr.ph465.preheader ], [ %i.bvj, %middle.block239 ]
  br label %.lr.ph465

.lr.ph465:                                        ; preds = %.lr.ph465.preheader243, %.lr.ph465
  %indvars.iv603 = phi i64 [ %indvars.iv.next604, %.lr.ph465 ], [ %indvars.iv603.ph, %.lr.ph465.preheader243 ] ; 2 uses
  %indvars.iv601 = phi i64 [ %indvars.iv.next602, %.lr.ph465 ], [ %indvars.iv601.ph, %.lr.ph465.preheader243 ] ; 3 uses
  %i.bvt = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv601
  %i.bvu = load i32, ptr %i.bvt, align 4, !tbaa !8
  %i.bvv = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv603
  store i32 %i.bvu, ptr %i.bvv, align 4, !tbaa !8
  %indvars.iv.next604 = add nsw i64 %indvars.iv603, -1 ; 2 uses
  %indvars.iv.next602 = add nsw i64 %indvars.iv601, -1 ; 2 uses
  %.not.not = icmp sgt i64 %indvars.iv601, %i.bvb
  br i1 %.not.not, label %.lr.ph465, label %._crit_edge466.loopexit, !llvm.loop !109

._crit_edge466.loopexit:                          ; preds = %.lr.ph465, %middle.block239
  %indvars.iv.next604.lcssa = phi i64 [ %i.bvi, %middle.block239 ], [ %indvars.iv.next604, %.lr.ph465 ]
  %indvars.iv.next602.lcssa = phi i64 [ %i.bvj, %middle.block239 ], [ %indvars.iv.next602, %.lr.ph465 ]
  %i.bvw = trunc nsw i64 %indvars.iv.next604.lcssa to i32
  %i.bvx = trunc nsw i64 %indvars.iv.next602.lcssa to i32
  br label %._crit_edge466

._crit_edge466:                                   ; preds = %._crit_edge466.loopexit, %bb.ki
  %.18.lcssa = phi i32 [ %i.buw, %bb.ki ], [ %i.bvw, %._crit_edge466.loopexit ] ; 3 uses
  %.2250.lcssa = phi i32 [ %.1249470, %bb.ki ], [ %i.bvx, %._crit_edge466.loopexit ] ; 2 uses
  %indvars.iv.next609 = add nsw i64 %indvars.iv608, -1 ; 2 uses
  %i.bvy = icmp samesign ult i64 %indvars.iv611, %indvars.iv.next609
  br i1 %i.bvy, label %bb.ki, label %._crit_edge474, !llvm.loop !110

._crit_edge474:                                   ; preds = %._crit_edge466
  %i.bvz = shl nuw nsw i32 %indvars613, 8
  %i.bwa = or i32 %i.bvz, %indvars613
  %i.bwb = sext i32 %i.bwa to i64
  %i.bwc = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bwb ; 2 uses
  %i.bwd = load i32, ptr %i.bwc, align 4, !tbaa !8
  %i.bwe = add i32 %.18.lcssa, 1
  %i.bwf = sub i32 %i.bwe, %i.bwd
  %i.bwg = or i32 %i.but, %i.buo
  %i.bwh = sext i32 %i.bwg to i64
  %i.bwi = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bwh
  store i32 %i.bwf, ptr %i.bwi, align 4, !tbaa !8
  store i32 %.18.lcssa, ptr %i.bwc, align 4, !tbaa !8
  %indvars.iv.next612 = add nsw i64 %indvars.iv611, -1
  %.not = icmp eq i64 %indvars.iv611, 0
  br i1 %.not, label %.loopexit, label %.lr.ph473, !llvm.loop !111

.loopexit:                                        ; preds = %._crit_edge474, %bb.f
  ret i32 %i.bk
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -2147483647, -2147483648) i32 @divbwt(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp slt i32 %3, 0
  %or.cond3 = or i1 %or.cond, %i.c
  br i1 %or.cond3, label %bb.bk, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %3, 2
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq i32 %3, 1
  br i1 %i.e, label %bb.d, label %bb.bk

bb.d:                                             ; preds = %bb.c
  %i.f = load i8, ptr %0, align 1, !tbaa !9
  store i8 %i.f, ptr %1, align 1, !tbaa !9
  br label %bb.bk

bb.e:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %2, null                     ; 2 uses
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = add nuw nsw i32 %3, 1
  %i.i = zext nneg i32 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 2
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.070 = phi ptr [ %i.k, %bb.f ], [ %2, %bb.e ]  ; 34 uses
  %i.l = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #7 ; 11 uses
  %i.m = tail call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #7 ; 9 uses
  %i.n = icmp ne ptr %.070, null
  %i.o = icmp ne ptr %i.l, null
  %or.cond5 = and i1 %i.n, %i.o
  %i.p = icmp ne ptr %i.m, null
  %or.cond7 = and i1 %or.cond5, %i.p
  br i1 %or.cond7, label %bb.h, label %bb.bi

bb.h:                                             ; preds = %bb.g
  %i.q = tail call fastcc i32 @sort_typeBstar(ptr noundef %0, ptr noundef %.070, ptr noundef %i.l, ptr noundef %i.m, i32 noundef %3) ; 2 uses
  %i.r = icmp eq ptr %4, null
  %i.s = icmp eq ptr %5, null
  %or.cond9 = or i1 %i.r, %i.s
  br i1 %or.cond9, label %bb.i, label %bb.ad

bb.i:                                             ; preds = %bb.h
  %i.t = icmp sgt i32 %i.q, 0
  %i.u = ptrtoint ptr %.070 to i64                ; 3 uses
  br i1 %i.t, label %.preheader.i, label %.lr.ph127.i

.preheader.i:                                     ; preds = %bb.i, %._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 254, %bb.i ] ; 4 uses
  %indvars131.i = trunc i64 %indvars.iv.i to i32  ; 2 uses
  %i.v = add nuw nsw i32 %indvars131.i, 1
  %i.w = shl i32 %indvars131.i, 8                 ; 3 uses
  %i.x = or i32 %i.w, %i.v
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !8
  %i.ab = sext i32 %i.aa to i64
  %.idx.i = shl nsw i64 %i.ab, 2                  ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.070, i64 %.idx.i
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.ag = sext i32 %i.af to i64
  %.idx129.i = shl nsw i64 %i.ag, 2               ; 2 uses
  %.not112117.not.i = icmp slt i64 %.idx.i, %.idx129.i
  br i1 %.not112117.not.i, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.ah = getelementptr i8, ptr %.070, i64 %.idx129.i
  %.096116.i = getelementptr i8, ptr %i.ah, i64 -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.preheader.i
  %.096120.i = phi ptr [ %.096.i, %bb.s ], [ %.096116.i, %.lr.ph.preheader.i ] ; 4 uses
  %.0119.i = phi i32 [ %.2.i, %bb.s ], [ -1, %.lr.ph.preheader.i ] ; 6 uses
  %.090118.i = phi ptr [ %.292.i, %bb.s ], [ null, %.lr.ph.preheader.i ] ; 4 uses
  %i.ai = load i32, ptr %.096120.i, align 4, !tbaa !8 ; 7 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %bb.q

bb.j:                                             ; preds = %.lr.ph.i
  %i.ak = add nsw i32 %i.ai, -1                   ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9   ; 2 uses
  %i.ao = zext i8 %i.an to i32                    ; 4 uses
  %i.ap = xor i32 %i.ao, -1
  store i32 %i.ap, ptr %.096120.i, align 4, !tbaa !8
  %.not114.i = icmp eq i32 %i.ai, 1
  br i1 %.not114.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = zext nneg i32 %i.ai to i64
  %i.ar = getelementptr i8, ptr %0, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !9
  %i.au = icmp ugt i8 %i.at, %i.an
  %i.av = sub nsw i32 0, %i.ai
  %spec.select.i = select i1 %i.au, i32 %i.av, i32 %i.ak
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.086.i = phi i32 [ 0, %bb.j ], [ %spec.select.i, %bb.k ]
  %.not115.i = icmp eq i32 %.0119.i, %i.ao
  br i1 %.not115.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = icmp sgt i32 %.0119.i, -1
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ax = ptrtoint ptr %.090118.i to i64
  %i.ay = sub i64 %i.ax, %i.u
  %i.az = lshr exact i64 %i.ay, 2
  %i.ba = trunc i64 %i.az to i32
  %i.bb = or i32 %.0119.i, %i.w
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.bc
  store i32 %i.ba, ptr %i.bd, align 4, !tbaa !8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.be = or disjoint i32 %i.w, %i.ao
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !8
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %.070, i64 %i.bi
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.191.i = phi ptr [ %i.bj, %bb.o ], [ %.090118.i, %bb.l ] ; 2 uses
  %.1.i = phi i32 [ %i.ao, %bb.o ], [ %.0119.i, %bb.l ]
  %i.bk = getelementptr inbounds i8, ptr %.191.i, i64 -4
  store i32 %.086.i, ptr %.191.i, align 4, !tbaa !8
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph.i
  %.not113.i = icmp eq i32 %i.ai, 0
  br i1 %.not113.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = xor i32 %i.ai, -1
  store i32 %i.bl, ptr %.096120.i, align 4, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.292.i = phi ptr [ %i.bk, %bb.p ], [ %.090118.i, %bb.r ], [ %.090118.i, %bb.q ]
  %.2.i = phi i32 [ %.1.i, %bb.p ], [ %.0119.i, %bb.r ], [ %.0119.i, %bb.q ]
  %.096.i = getelementptr inbounds i8, ptr %.096120.i, i64 -4 ; 2 uses
  %.not112.i = icmp ugt ptr %i.ac, %.096.i
  br i1 %.not112.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !112

._crit_edge.i:                                    ; preds = %bb.s, %.preheader.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not139.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not139.i, label %.lr.ph127.i, label %.preheader.i, !llvm.loop !113

.lr.ph127.i:                                      ; preds = %._crit_edge.i, %bb.i
  %i.bm = add nsw i32 %3, -1                      ; 2 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !9   ; 3 uses
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bq
end_hunk_1
