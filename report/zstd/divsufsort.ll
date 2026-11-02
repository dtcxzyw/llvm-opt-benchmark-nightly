Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/divsufsort?download=true
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
  %i.ag = load i32, ptr %.084102.i, align 4, !tbaa !9 ; 6 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  %i.ai = xor i32 %i.ag, -1
  store i32 %i.ai, ptr %.084102.i, align 4, !tbaa !9
  br i1 %i.ah, label %bb.g, label %bb.n

bb.g:                                             ; preds = %.lr.ph.i
  %i.aj = add nsw i32 %i.ag, -1                   ; 2 uses
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !10  ; 2 uses
  %i.an = zext i8 %i.am to i32                    ; 3 uses
  %.not96.i = icmp eq i32 %i.ag, 1
  br i1 %.not96.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = zext nneg i32 %i.ag to i64
  %i.ap = getelementptr i8, ptr %0, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !10
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
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ba
  store i32 %i.ay, ptr %i.bb, align 4, !tbaa !9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bc = or disjoint i32 %i.u, %i.an
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !9
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bg
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.179.i = phi ptr [ %i.bh, %bb.l ], [ %.078100.i, %bb.i ] ; 2 uses
  %.1.i = phi i32 [ %i.an, %bb.l ], [ %.0101.i, %bb.i ]
  %i.bi = getelementptr inbounds i8, ptr %.179.i, i64 -4
  store i32 %.076.i, ptr %.179.i, align 4, !tbaa !9
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i
  %.280.i = phi ptr [ %i.bi, %bb.m ], [ %.078100.i, %.lr.ph.i ]
  %.2.i = phi i32 [ %.1.i, %bb.m ], [ %.0101.i, %.lr.ph.i ]
  %.084.i = getelementptr inbounds i8, ptr %.084102.i, i64 -4 ; 2 uses
  %.not95.i = icmp ugt ptr %i.aa, %.084.i
  br i1 %.not95.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %bb.n, %.preheader.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not120.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not120.i, label %.lr.ph108.i, label %.preheader.i, !llvm.loop !17

.lr.ph108.i:                                      ; preds = %._crit_edge.i, %bb.f
  %i.bj = add nsw i32 %2, -1                      ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !10  ; 3 uses
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !9
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bq ; 2 uses
  %i.bs = zext nneg i32 %2 to i64                 ; 2 uses
  %i.bt = getelementptr i8, ptr %0, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 -2
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !10
  %i.bw = icmp ult i8 %i.bv, %i.bm
  %i.bx = sub nsw i32 0, %2
  %i.by = select i1 %i.bw, i32 %i.bx, i32 %i.bj
  store i32 %i.by, ptr %i.br, align 4, !tbaa !9
  %.idx111.i = shl nuw nsw i64 %i.bs, 2
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %.idx111.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.cb = zext i8 %i.bm to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.w, %.lr.ph108.i
  %.3106.i = phi i32 [ %i.cb, %.lr.ph108.i ], [ %.5.i, %bb.w ] ; 4 uses
  %.381105.i = phi ptr [ %i.ca, %.lr.ph108.i ], [ %.583.i, %bb.w ] ; 3 uses
  %.085104.i = phi ptr [ %1, %.lr.ph108.i ], [ %i.dd, %bb.w ] ; 3 uses
  %i.cc = load i32, ptr %.085104.i, align 4, !tbaa !9 ; 5 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.ce = add nsw i32 %i.cc, -1                   ; 3 uses
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !10  ; 3 uses
  %i.ci = zext i8 %i.ch to i32                    ; 2 uses
  %i.cj = icmp eq i32 %i.ce, 0
  br i1 %i.cj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = zext nneg i32 %i.cc to i64
  %i.cl = getelementptr i8, ptr %0, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !10
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
  store i32 %i.ct, ptr %i.cv, align 4, !tbaa !9
  %i.cw = zext i8 %i.ch to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !9
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cz
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.482.i = phi ptr [ %i.da, %bb.t ], [ %.381105.i, %bb.s ] ; 2 uses
  %.4.i = phi i32 [ %i.ci, %bb.t ], [ %.3106.i, %bb.s ]
  %i.db = getelementptr inbounds nuw i8, ptr %.482.i, i64 4
  store i32 %.177.i, ptr %.482.i, align 4, !tbaa !9
  br label %bb.w

bb.v:                                             ; preds = %bb.o
  %i.dc = xor i32 %i.cc, -1
  store i32 %i.dc, ptr %.085104.i, align 4, !tbaa !9
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.583.i = phi ptr [ %i.db, %bb.u ], [ %.381105.i, %bb.v ]
  %.5.i = phi i32 [ %.4.i, %bb.u ], [ %.3106.i, %bb.v ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.085104.i, i64 4 ; 2 uses
  %i.de = icmp ult ptr %i.dd, %i.bz
  br i1 %i.de, label %bb.o, label %construct_SA.exit, !llvm.loop !18

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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %2, i8 0, i64 1024, i1 false), !tbaa !9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(262144) %3, i8 0, i64 262144, i1 false), !tbaa !9
  %i.a = add nsw i32 %4, -1                       ; 3 uses
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !10
  %6 = zext i8 %i.d to i32
  br label %.preheader338.loopexit

.preheader338.loopexit:                           ; preds = %.preheader340.preheader, %.critedge2
  %.0240427 = phi i32 [ %6, %.preheader340.preheader ], [ %i.ad, %.critedge2 ] ; 2 uses
  %.0246426 = phi i32 [ %4, %.preheader340.preheader ], [ %i.x, %.critedge2 ] ; 3 uses
  %.2259425 = phi i32 [ %i.a, %.preheader340.preheader ], [ %10, %.critedge2 ] ; 3 uses
  %i.e = zext nneg i32 %.0240427 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !9
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4, !tbaa !9
  %.not32198 = icmp eq i32 %.2259425, 0
  br i1 %.not32198, label %.loopexit826, label %.lr.ph101

.lr.ph101:                                        ; preds = %.preheader338.loopexit
  %7 = zext nneg i32 %.2259425 to i64
  %8 = add nsw i32 %.2259425, -2
  br label %bb.b

bb.a:                                             ; preds = %bb.b
  %indvars.iv.next577 = add i32 %indvars.iv576103, -1
  %i.i = zext i8 %i.o to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !9
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !9
  %.not321 = icmp eq i64 %i.m, 0
  br i1 %.not321, label %.loopexit826, label %bb.b, !llvm.loop !19

bb.b:                                             ; preds = %.lr.ph101, %bb.a
  %.1241100 = phi i32 [ %.0240427, %.lr.ph101 ], [ %i.p, %bb.a ] ; 2 uses
  %indvars.iv99 = phi i64 [ %7, %.lr.ph101 ], [ %i.m, %bb.a ] ; 2 uses
  %indvars.iv576103 = phi i32 [ %8, %.lr.ph101 ], [ %indvars.iv.next577, %bb.a ] ; 2 uses
  %i.m = add nsw i64 %indvars.iv99, -1            ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !10    ; 2 uses
  %i.p = zext i8 %i.o to i32                      ; 4 uses
  %.not289 = icmp sgt i32 %.1241100, %i.p
  br i1 %.not289, label %bb.c, label %bb.a, !llvm.loop !19

bb.c:                                             ; preds = %bb.b
  %i.q = trunc nuw nsw i64 %i.m to i32
  %i.r = shl nuw nsw i32 %i.p, 8
  %i.s = or i32 %i.r, %.1241100
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !9
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !9
  %i.x = add nsw i32 %.0246426, -1                ; 5 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %1, i64 %i.y
  store i32 %i.q, ptr %i.z, align 4, !tbaa !9
  %i.aa = icmp sgt i64 %indvars.iv99, 1
  br i1 %i.aa, label %.lr.ph.preheader, label %.loopexit826

.lr.ph.preheader:                                 ; preds = %bb.c
  %9 = zext i32 %indvars.iv576103 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv579 = phi i64 [ %9, %.lr.ph.preheader ], [ %indvars.iv.next580, %bb.d ] ; 5 uses
  %.4261419 = phi i32 [ %i.p, %.lr.ph.preheader ], [ %i.ad, %bb.d ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv579
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !10
  %i.ad = zext i8 %i.ac to i32                    ; 4 uses
  %.not290 = icmp samesign ult i32 %.4261419, %i.ad
  br i1 %.not290, label %.critedge2, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ae = shl nuw nsw i32 %.4261419, 8
  %i.af = or disjoint i32 %i.ae, %i.ad
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !9
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !9
  %indvars.iv.next580 = add nsw i64 %indvars.iv579, -1
  %i.ak = icmp sgt i64 %indvars.iv579, 0
  br i1 %i.ak, label %.lr.ph, label %.loopexit826, !llvm.loop !20

.critedge2:                                       ; preds = %.lr.ph
  %10 = trunc nuw nsw i64 %indvars.iv579 to i32
  %11 = icmp sgt i64 %indvars.iv579, -1
  br i1 %11, label %.preheader338.loopexit, label %.loopexit826, !llvm.loop !21

.loopexit826:                                     ; preds = %bb.c, %.critedge2, %.preheader338.loopexit, %bb.a, %bb.d
  %.1247.ph = phi i32 [ %.0246426, %bb.a ], [ %i.x, %bb.d ], [ %i.x, %.critedge2 ], [ %.0246426, %.preheader338.loopexit ], [ %i.x, %bb.c ]
  br label %bb.e

.loopexit337:                                     ; preds = %.lr.ph431.prol.loopexit, %.lr.ph431, %bb.e
  %.7264.lcssa = phi i32 [ %i.au, %bb.e ], [ %.lcssa350.unr, %.lr.ph431.prol.loopexit ], [ %i.bj, %.lr.ph431 ]
  %.1252.lcssa = phi i32 [ %.0251434, %bb.e ], [ %.lcssa351.unr, %.lr.ph431.prol.loopexit ], [ %i.bh, %.lr.ph431 ]
  %indvars.iv.next577.a = add nuw nsw i64 %indvars.iv576, 1
  %exitcond584.not = icmp eq i64 %indvars.iv.next582, 256
  br i1 %exitcond584.not, label %bb.f, label %bb.e, !llvm.loop !22

bb.e:                                             ; preds = %.loopexit826, %.loopexit337
  %indvars.iv581 = phi i64 [ 0, %.loopexit826 ], [ %indvars.iv.next582, %.loopexit337 ] ; 9 uses
  %indvars.iv576 = phi i64 [ 1, %.loopexit826 ], [ %indvars.iv.next577.a, %.loopexit337 ] ; 5 uses
  %.0251434 = phi i32 [ 0, %.loopexit826 ], [ %.1252.lcssa, %.loopexit337 ] ; 4 uses
  %.6263433 = phi i32 [ 0, %.loopexit826 ], [ %.7264.lcssa, %.loopexit337 ] ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv581 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !9
  %i.an = add nsw i32 %i.am, %.6263433
  %i.ao = add nsw i32 %.0251434, %.6263433
  store i32 %i.ao, ptr %i.al, align 4, !tbaa !9
  %i.ap = shl i64 %indvars.iv581, 8
  %i.aq = and i64 %i.ap, 4294967040
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv581
  %i.at = load i32, ptr %i.as, align 4, !tbaa !9
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
  %i.ax = load i32, ptr %gep.prol, align 4, !tbaa !9
  %i.ay = add nsw i32 %i.ax, %.0251434            ; 3 uses
  store i32 %i.ay, ptr %gep.prol, align 4, !tbaa !9
  %.idx805.prol = shl nuw nsw i64 %indvars.iv576, 10
  %gep917.prol = getelementptr inbounds nuw i8, ptr %invariant.gep916, i64 %.idx805.prol
  %i.az = load i32, ptr %gep917.prol, align 4, !tbaa !9
  %i.ba = add nsw i32 %i.az, %i.au                ; 2 uses
  %indvars.iv.next579.prol = add nuw nsw i64 %indvars.iv576, 1
  br label %.lr.ph431.prol.loopexit

.lr.ph431.prol.loopexit:                          ; preds = %.lr.ph431.prol, %.lr.ph431.preheader
  %.lcssa351.unr = phi i32 [ poison, %.lr.ph431.preheader ], [ %i.ay, %.lr.ph431.prol ]
  %.lcssa350.unr = phi i32 [ poison, %.lr.ph431.preheader ], [ %i.ba, %.lr.ph431.prol ]
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
  %i.bc = load i32, ptr %gep, align 4, !tbaa !9
  %i.bd = add nsw i32 %i.bc, %.1252429            ; 2 uses
  store i32 %i.bd, ptr %gep, align 4, !tbaa !9
  %.idx805 = shl nuw nsw i64 %indvars.iv578, 10
  %gep917 = getelementptr inbounds nuw i8, ptr %invariant.gep916, i64 %.idx805
  %i.be = load i32, ptr %gep917, align 4, !tbaa !9
  %i.bf = add nsw i32 %i.be, %.7264428
  %indvars.iv.next579 = add nuw nsw i64 %indvars.iv578, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next579 ; 2 uses
  %i.bg = load i32, ptr %gep.1, align 4, !tbaa !9
  %i.bh = add nsw i32 %i.bg, %i.bd                ; 3 uses
  store i32 %i.bh, ptr %gep.1, align 4, !tbaa !9
  %.idx805.1 = shl nuw nsw i64 %indvars.iv.next579, 10
  %gep917.1 = getelementptr inbounds nuw i8, ptr %invariant.gep916, i64 %.idx805.1
  %i.bi = load i32, ptr %gep917.1, align 4, !tbaa !9
  %i.bj = add nsw i32 %i.bi, %i.bf                ; 2 uses
  %indvars.iv.next579.1 = add nuw nsw i64 %indvars.iv578, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next579.1, 256
  br i1 %exitcond.not.1, label %.loopexit337, label %.lr.ph431, !llvm.loop !23

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
  %lcmp.mod370.not.not = icmp eq i64 %i.bu, 0
  br i1 %lcmp.mod370.not.not, label %.lr.ph437.prol, label %.lr.ph437.prol.loopexit

.lr.ph437.prol:                                   ; preds = %.lr.ph437.preheader
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.bt
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !9
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %0, i64 %i.bx ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !10
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr i8, ptr %i.by, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !10
  %i.cd = zext i8 %i.cc to i64
  %.idx288.prol = shl nuw nsw i64 %i.ca, 10
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 %.idx288.prol
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cd ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !9
  %i.ch = add nsw i32 %i.cg, -1                   ; 2 uses
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !9
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ci
  store i32 %i.bs, ptr %i.cj, align 4, !tbaa !9
  %indvars.iv.next586.prol = add nsw i64 %i.bt, -1
  br label %.lr.ph437.prol.loopexit

.lr.ph437.prol.loopexit:                          ; preds = %.lr.ph437.prol, %.lr.ph437.preheader
  %indvars.iv585.unr = phi i64 [ %i.bt, %.lr.ph437.preheader ], [ %indvars.iv.next586.prol, %.lr.ph437.prol ]
  %i.ck = icmp eq i32 %i.bs, 0
  br i1 %i.ck, label %.preheader336.lr.ph, label %.lr.ph437

.lr.ph437:                                        ; preds = %.lr.ph437.prol.loopexit, %.lr.ph437
  %indvars.iv585 = phi i64 [ %indvars.iv.next586.1, %.lr.ph437 ], [ %indvars.iv585.unr, %.lr.ph437.prol.loopexit ] ; 4 uses
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv585
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !9
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %0, i64 %i.cn ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !10
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr i8, ptr %i.co, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !10
  %i.ct = zext i8 %i.cs to i64
  %.idx288 = shl nuw nsw i64 %i.cq, 10
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 %.idx288
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ct ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !9
  %i.cx = add nsw i32 %i.cw, -1                   ; 2 uses
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !9
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cy
  %i.da = trunc nuw nsw i64 %indvars.iv585 to i32
  store i32 %i.da, ptr %i.cz, align 4, !tbaa !9
  %indvars.iv.next586 = add nsw i64 %indvars.iv585, -1 ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next586
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !9
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %0, i64 %i.dd ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !10
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr i8, ptr %i.de, i64 1
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !10
  %i.dj = zext i8 %i.di to i64
  %.idx288.1 = shl nuw nsw i64 %i.dg, 10
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 %.idx288.1
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dj ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !9
  %i.dn = add nsw i32 %i.dm, -1                   ; 2 uses
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !9
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %1, i64 %i.do
  %i.dq = trunc nuw nsw i64 %indvars.iv.next586 to i32
  store i32 %i.dq, ptr %i.dp, align 4, !tbaa !9
  %indvars.iv.next586.1 = add nsw i64 %indvars.iv585, -2
  %.not920.1 = icmp eq i64 %indvars.iv.next586, 0
  br i1 %.not920.1, label %.preheader336.lr.ph, label %.lr.ph437, !llvm.loop !24

.preheader336.lr.ph:                              ; preds = %.lr.ph437.prol.loopexit, %.lr.ph437, %bb.g
  %i.dr = add nsw i32 %i.bk, -1                   ; 5 uses
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !9
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %0, i64 %i.dv ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !10
  %i.dy = zext i8 %i.dx to i64
  %i.dz = getelementptr i8, ptr %i.dw, i64 1
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !10
  %i.eb = zext i8 %i.ea to i64
  %.idx = shl nuw nsw i64 %i.dy, 10
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.eb ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !9
  %i.ef = add nsw i32 %i.ee, -1                   ; 2 uses
  store i32 %i.ef, ptr %i.ed, align 4, !tbaa !9
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.eg
  store i32 %i.dr, ptr %i.eh, align 4, !tbaa !9
  %i.ei = shl nuw nsw i32 %i.bk, 1
  %i.ej = sub nsw i32 %4, %i.ei                   ; 6 uses
end_hunk_0
begin_hunk_1_@sort_typeBstar:.preheader340.preheader
  %i.bre = getelementptr inbounds nuw i8, ptr %i.brc, i64 16
  store ptr %i.bjs, ptr %i.bre, align 16, !tbaa !105
  %i.brf = getelementptr inbounds nuw i8, ptr %i.brc, i64 24
  store i32 %i.aws, ptr %i.brf, align 8, !tbaa !106
  %i.brg = add nsw i32 %.0445.ph.i.i, 1
  %i.brh = getelementptr inbounds nuw i8, ptr %i.brc, i64 28
  store i32 %.0.ph.i.i, ptr %i.brh, align 4, !tbaa !107
  br label %.outer.i.i.backedge

bb.jj:                                            ; preds = %bb.jh
  %i.bri = icmp sgt i64 %i.bqc, 1
  br i1 %i.bri, label %.outer.i.i.backedge, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.brj = icmp eq i32 %.0445.ph.i.i, 0
  br i1 %i.brj, label %tr_introsort.exit.i, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.brk = add nsw i32 %.0445.ph.i.i, -1          ; 2 uses
  %i.brl = sext i32 %i.brk to i64
  %i.brm = getelementptr inbounds [32 x i8], ptr %5, i64 %i.brl ; 5 uses
  %i.brn = load ptr, ptr %i.brm, align 16, !tbaa !103
  %i.bro = getelementptr inbounds nuw i8, ptr %i.brm, i64 8
  %i.brp = load ptr, ptr %i.bro, align 8, !tbaa !104
  %i.brq = getelementptr inbounds nuw i8, ptr %i.brm, i64 16
  %i.brr = load ptr, ptr %i.brq, align 16, !tbaa !105
  %i.brs = getelementptr inbounds nuw i8, ptr %i.brm, i64 24
  %i.brt = load i32, ptr %i.brs, align 8, !tbaa !106
  %i.bru = getelementptr inbounds nuw i8, ptr %i.brm, i64 28
  %i.brv = load i32, ptr %i.bru, align 4, !tbaa !107
  br label %.outer.i.i.backedge

tr_partition.exit.thread.i:                       ; preds = %tr_partition.exit.i, %._crit_edge.i56.i
  %.not.i578.i.i = icmp slt i32 %.sroa.9.3.i, %i.sx
  br i1 %.not.i578.i.i, label %bb.jm, label %bb.jo

bb.jm:                                            ; preds = %tr_partition.exit.thread.i
  %i.brw = icmp eq i32 %.sroa.0.3.i, 0
  br i1 %i.brw, label %bb.jv, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.brx = add i32 %.sroa.9.3.i, %i.bk
  %i.bry = add nsw i32 %.sroa.0.3.i, -1
  br label %bb.jo

bb.jo:                                            ; preds = %bb.jn, %tr_partition.exit.thread.i
  %.pn209.i = phi i32 [ %i.brx, %bb.jn ], [ %.sroa.9.3.i, %tr_partition.exit.thread.i ]
  %.sroa.0.6.i = phi i32 [ %i.bry, %bb.jn ], [ %.sroa.0.3.i, %tr_partition.exit.thread.i ]
  %.sroa.9.6.i = sub i32 %.pn209.i, %i.sx
  %.not.i581.i.i = icmp ult i32 %i.sx, 65536
  br i1 %.not.i581.i.i, label %bb.js, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %.not8.i582.i.i = icmp ult i32 %i.sx, 16777216
  br i1 %.not8.i582.i.i, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %bb.jp
  %i.brz = lshr i64 %i.sv, 24
  %i.bsa = and i64 %i.brz, 255
  %i.bsb = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.bsa
  %i.bsc = load i32, ptr %i.bsb, align 4, !tbaa !9
  %i.bsd = add nsw i32 %i.bsc, 24
  br label %tr_ilg.exit584.i.i

bb.jr:                                            ; preds = %bb.jp
  %i.bse = lshr i64 %i.sv, 16
  %i.bsf = and i64 %i.bse, 255
  %i.bsg = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.bsf
  %i.bsh = load i32, ptr %i.bsg, align 4, !tbaa !9
  %i.bsi = add nsw i32 %i.bsh, 16
  br label %tr_ilg.exit584.i.i

bb.js:                                            ; preds = %bb.jo
  %.not7.i583.i.i = icmp samesign ult i32 %i.sx, 256
  br i1 %.not7.i583.i.i, label %bb.ju, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.bsj = lshr i64 %i.sv, 8
  %i.bsk = and i64 %i.bsj, 255
  %i.bsl = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.bsk
  %i.bsm = load i32, ptr %i.bsl, align 4, !tbaa !9
  %i.bsn = add nsw i32 %i.bsm, 8
  br label %tr_ilg.exit584.i.i

bb.ju:                                            ; preds = %bb.js
  %i.bso = and i64 %i.sv, 255
  %i.bsp = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.bso
  %i.bsq = load i32, ptr %i.bsp, align 4, !tbaa !9
  br label %tr_ilg.exit584.i.i

tr_ilg.exit584.i.i:                               ; preds = %bb.ju, %bb.jt, %bb.jr, %bb.jq
  %i.bsr = phi i32 [ %i.bsi, %bb.jr ], [ %i.bsd, %bb.jq ], [ %i.bsn, %bb.jt ], [ %i.bsq, %bb.ju ]
  %i.bss = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.rd
  br label %.outer.i.i.backedge

bb.jv:                                            ; preds = %bb.jm
  %i.bst = add nsw i32 %.sroa.23.0.i, %i.sx       ; 2 uses
  %i.bsu = icmp sgt i32 %.0.ph.i.i, -1
  br i1 %i.bsu, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %bb.jv
  %i.bsv = zext nneg i32 %.0.ph.i.i to i64
  %i.bsw = getelementptr inbounds nuw [32 x i8], ptr %5, i64 %i.bsv
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bsw, i64 24
  store i32 -1, ptr %i.bsx, align 8, !tbaa !106
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jv
  %i.bsy = icmp eq i32 %.0445.ph.i.i, 0
  br i1 %i.bsy, label %tr_introsort.exit.i, label %bb.jy

bb.jy:                                            ; preds = %bb.jx
  %i.bsz = add nsw i32 %.0445.ph.i.i, -1          ; 2 uses
  %i.bta = sext i32 %i.bsz to i64
  %i.btb = getelementptr inbounds [32 x i8], ptr %5, i64 %i.bta ; 5 uses
  %i.btc = load ptr, ptr %i.btb, align 16, !tbaa !103
  %i.btd = getelementptr inbounds nuw i8, ptr %i.btb, i64 8
  %i.bte = load ptr, ptr %i.btd, align 8, !tbaa !104
  %i.btf = getelementptr inbounds nuw i8, ptr %i.btb, i64 16
  %i.btg = load ptr, ptr %i.btf, align 16, !tbaa !105
  %i.bth = getelementptr inbounds nuw i8, ptr %i.btb, i64 24
  %i.bti = load i32, ptr %i.bth, align 8, !tbaa !106
  %i.btj = getelementptr inbounds nuw i8, ptr %i.btb, i64 28
  %i.btk = load i32, ptr %i.btj, align 4, !tbaa !107
  br label %.outer.i.i.backedge

.outer.i.i.backedge:                              ; preds = %bb.jy, %tr_ilg.exit584.i.i, %bb.jl, %bb.jj, %bb.ji, %bb.jg, %bb.je, %bb.jd, %bb.iy, %bb.ix, %bb.iw, %bb.it, %bb.is, %bb.ir, %bb.io, %bb.in, %bb.im, %bb.ij, %bb.ii, %bb.ih, %bb.gh, %bb.gf, %bb.gd, %bb.ga, %bb.fz, %bb.fy, %bb.fj, %bb.ep, %bb.en, %bb.em, %bb.ek, %bb.ej, %bb.ef, %bb.ee, %bb.ec, %bb.eb, %bb.dr, %bb.dp, %bb.do, %bb.dm, %bb.dl, %bb.dh, %bb.dg, %bb.de, %bb.dd
  %.sroa.23.0.i.be = phi i32 [ %.sroa.23.0.i, %bb.in ], [ %.sroa.23.0.i, %bb.ih ], [ %.sroa.23.0.i, %bb.ij ], [ %.sroa.23.0.i, %bb.ii ], [ %i.aqh, %bb.gd ], [ %i.aqh, %bb.gf ], [ %.sroa.23.0.i, %bb.ga ], [ %.sroa.23.0.i, %bb.fz ], [ %.sroa.23.0.i, %bb.fy ], [ %.sroa.23.0.i, %bb.gh ], [ %.sroa.23.0.i, %bb.ef ], [ %.sroa.23.0.i, %bb.ee ], [ %.sroa.23.0.i, %bb.ec ], [ %.sroa.23.0.i, %bb.eb ], [ %.sroa.23.0.i, %bb.en ], [ %.sroa.23.0.i, %bb.em ], [ %.sroa.23.0.i, %bb.ek ], [ %.sroa.23.0.i, %bb.ej ], [ %.sroa.23.0.i, %bb.ep ], [ %.sroa.23.0.i, %bb.dh ], [ %.sroa.23.0.i, %bb.dg ], [ %.sroa.23.0.i, %bb.de ], [ %.sroa.23.0.i, %bb.dd ], [ %.sroa.23.0.i, %bb.dp ], [ %.sroa.23.0.i, %bb.do ], [ %.sroa.23.0.i, %bb.dm ], [ %.sroa.23.0.i, %bb.dl ], [ %.sroa.23.0.i, %bb.dr ], [ %.sroa.23.0.i, %bb.fj ], [ %i.bst, %bb.jy ], [ %.sroa.23.0.i, %tr_ilg.exit584.i.i ], [ %.sroa.23.1.i, %bb.ji ], [ %.sroa.23.1.i, %bb.jj ], [ %.sroa.23.1.i, %bb.jl ], [ %.sroa.23.1.i, %bb.jd ], [ %.sroa.23.1.i, %bb.je ], [ %.sroa.23.1.i, %bb.jg ], [ %.sroa.23.0.i, %bb.iy ], [ %.sroa.23.0.i, %bb.iw ], [ %.sroa.23.0.i, %bb.ix ], [ %.sroa.23.0.i, %bb.ir ], [ %.sroa.23.0.i, %bb.it ], [ %.sroa.23.0.i, %bb.is ], [ %.sroa.23.0.i, %bb.io ], [ %.sroa.23.0.i, %bb.im ]
  %.sroa.9.3.i.be = phi i32 [ %.sroa.9.5.i, %bb.in ], [ %.sroa.9.5.i, %bb.ih ], [ %.sroa.9.5.i, %bb.ij ], [ %.sroa.9.5.i, %bb.ii ], [ %.sroa.9.3.i, %bb.gd ], [ %.sroa.9.3.i, %bb.gf ], [ %.sroa.9.7.i, %bb.ga ], [ %.sroa.9.7.i, %bb.fz ], [ %.sroa.9.7.i, %bb.fy ], [ %.sroa.9.3.i, %bb.gh ], [ %.sroa.9.3.i, %bb.ef ], [ %.sroa.9.3.i, %bb.ee ], [ %.sroa.9.3.i, %bb.ec ], [ %.sroa.9.3.i, %bb.eb ], [ %.sroa.9.3.i, %bb.en ], [ %.sroa.9.3.i, %bb.em ], [ %.sroa.9.3.i, %bb.ek ], [ %.sroa.9.3.i, %bb.ej ], [ %.sroa.9.3.i, %bb.ep ], [ %.sroa.9.3.i, %bb.dh ], [ %.sroa.9.3.i, %bb.dg ], [ %.sroa.9.3.i, %bb.de ], [ %.sroa.9.3.i, %bb.dd ], [ %.sroa.9.3.i, %bb.dp ], [ %.sroa.9.3.i, %bb.do ], [ %.sroa.9.3.i, %bb.dm ], [ %.sroa.9.3.i, %bb.dl ], [ %.sroa.9.3.i, %bb.dr ], [ %.sroa.9.3.i, %bb.fj ], [ %.sroa.9.3.i, %bb.jy ], [ %.sroa.9.6.i, %tr_ilg.exit584.i.i ], [ %.sroa.9.3.i, %bb.ji ], [ %.sroa.9.3.i, %bb.jj ], [ %.sroa.9.3.i, %bb.jl ], [ %.sroa.9.3.i, %bb.jd ], [ %.sroa.9.3.i, %bb.je ], [ %.sroa.9.3.i, %bb.jg ], [ %.sroa.9.5.i, %bb.iy ], [ %.sroa.9.5.i, %bb.iw ], [ %.sroa.9.5.i, %bb.ix ], [ %.sroa.9.5.i, %bb.ir ], [ %.sroa.9.5.i, %bb.it ], [ %.sroa.9.5.i, %bb.is ], [ %.sroa.9.5.i, %bb.io ], [ %.sroa.9.5.i, %bb.im ]
  %.sroa.0.3.i.be = phi i32 [ %.sroa.0.5.i, %bb.in ], [ %.sroa.0.5.i, %bb.ih ], [ %.sroa.0.5.i, %bb.ij ], [ %.sroa.0.5.i, %bb.ii ], [ 0, %bb.gd ], [ 0, %bb.gf ], [ %.sroa.0.7.i, %bb.ga ], [ %.sroa.0.7.i, %bb.fz ], [ %.sroa.0.7.i, %bb.fy ], [ %.sroa.0.3.i, %bb.gh ], [ %.sroa.0.3.i, %bb.ef ], [ %.sroa.0.3.i, %bb.ee ], [ %.sroa.0.3.i, %bb.ec ], [ %.sroa.0.3.i, %bb.eb ], [ %.sroa.0.3.i, %bb.en ], [ %.sroa.0.3.i, %bb.em ], [ %.sroa.0.3.i, %bb.ek ], [ %.sroa.0.3.i, %bb.ej ], [ %.sroa.0.3.i, %bb.ep ], [ %.sroa.0.3.i, %bb.dh ], [ %.sroa.0.3.i, %bb.dg ], [ %.sroa.0.3.i, %bb.de ], [ %.sroa.0.3.i, %bb.dd ], [ %.sroa.0.3.i, %bb.dp ], [ %.sroa.0.3.i, %bb.do ], [ %.sroa.0.3.i, %bb.dm ], [ %.sroa.0.3.i, %bb.dl ], [ %.sroa.0.3.i, %bb.dr ], [ %.sroa.0.3.i, %bb.fj ], [ 0, %bb.jy ], [ %.sroa.0.6.i, %tr_ilg.exit584.i.i ], [ %.sroa.0.3.i, %bb.ji ], [ %.sroa.0.3.i, %bb.jj ], [ %.sroa.0.3.i, %bb.jl ], [ %.sroa.0.3.i, %bb.jd ], [ %.sroa.0.3.i, %bb.je ], [ %.sroa.0.3.i, %bb.jg ], [ %.sroa.0.5.i, %bb.iy ], [ %.sroa.0.5.i, %bb.iw ], [ %.sroa.0.5.i, %bb.ix ], [ %.sroa.0.5.i, %bb.ir ], [ %.sroa.0.5.i, %bb.it ], [ %.sroa.0.5.i, %bb.is ], [ %.sroa.0.5.i, %bb.io ], [ %.sroa.0.5.i, %bb.im ]
  %.0462.ph.i.i.be = phi ptr [ %i.bjs, %bb.in ], [ %.0462.ph.i.i, %bb.ih ], [ %i.bjt, %bb.ij ], [ %i.bjs, %bb.ii ], [ %i.aou, %bb.gd ], [ %i.aqv, %bb.gf ], [ %i.aou, %bb.ga ], [ %.1463.i.i, %bb.fz ], [ %.1463.i.i, %bb.fy ], [ %i.ari, %bb.gh ], [ %.0166.i78.i, %bb.ef ], [ %.0166.i78.i, %bb.ee ], [ %.0166.i78.i, %bb.ec ], [ %.0166.i78.i, %bb.eb ], [ %.0462.ph.i.i, %bb.en ], [ %.0462.ph.i.i, %bb.em ], [ %.0462.ph.i.i, %bb.ek ], [ %.0462.ph.i.i, %bb.ej ], [ %i.aia, %bb.ep ], [ %.0462.ph.i.i, %bb.dh ], [ %.0462.ph.i.i, %bb.dg ], [ %.0462.ph.i.i, %bb.de ], [ %.0462.ph.i.i, %bb.dd ], [ %.0166.i78.i, %bb.dp ], [ %.0166.i78.i, %bb.do ], [ %.0166.i78.i, %bb.dm ], [ %.0166.i78.i, %bb.dl ], [ %i.aew, %bb.dr ], [ %i.amo, %bb.fj ], [ %i.bte, %bb.jy ], [ %.0462.ph.i.i, %tr_ilg.exit584.i.i ], [ %i.bjt, %bb.ji ], [ %.0462.ph.i.i, %bb.jj ], [ %i.brp, %bb.jl ], [ %.0462.ph.i.i, %bb.jd ], [ %i.bjt, %bb.je ], [ %i.bqt, %bb.jg ], [ %i.bjs, %bb.iy ], [ %i.bjt, %bb.iw ], [ %i.bjs, %bb.ix ], [ %i.bjt, %bb.ir ], [ %.0462.ph.i.i, %bb.it ], [ %i.bjs, %bb.is ], [ %i.bjs, %bb.io ], [ %.0462.ph.i.i, %bb.im ]
  %.0459.ph.i.i.be = phi ptr [ %i.bjt, %bb.in ], [ %i.bjs, %bb.ih ], [ %.0459.ph.i.i, %bb.ij ], [ %i.bjt, %bb.ii ], [ %.0459.ph.i.i, %bb.gd ], [ %i.aqx, %bb.gf ], [ %.0459.ph.i.i, %bb.ga ], [ %i.aou, %bb.fz ], [ %i.aou, %bb.fy ], [ %i.ark, %bb.gh ], [ %.0459.ph.i.i, %bb.ef ], [ %.0459.ph.i.i, %bb.ee ], [ %.0459.ph.i.i, %bb.ec ], [ %.0459.ph.i.i, %bb.eb ], [ %.0165.i79.i, %bb.en ], [ %.0165.i79.i, %bb.em ], [ %.0165.i79.i, %bb.ek ], [ %.0165.i79.i, %bb.ej ], [ %i.aic, %bb.ep ], [ %.0165.i79.i, %bb.dh ], [ %.0165.i79.i, %bb.dg ], [ %.0165.i79.i, %bb.de ], [ %.0165.i79.i, %bb.dd ], [ %.0459.ph.i.i, %bb.dp ], [ %.0459.ph.i.i, %bb.do ], [ %.0459.ph.i.i, %bb.dm ], [ %.0459.ph.i.i, %bb.dl ], [ %i.aey, %bb.dr ], [ %i.amq, %bb.fj ], [ %i.btg, %bb.jy ], [ %.0459.ph.i.i, %tr_ilg.exit584.i.i ], [ %.0459.ph.i.i, %bb.ji ], [ %i.bjs, %bb.jj ], [ %i.brr, %bb.jl ], [ %i.bjs, %bb.jd ], [ %.0459.ph.i.i, %bb.je ], [ %i.bqv, %bb.jg ], [ %i.bjt, %bb.iy ], [ %.0459.ph.i.i, %bb.iw ], [ %i.bjt, %bb.ix ], [ %.0459.ph.i.i, %bb.ir ], [ %i.bjs, %bb.it ], [ %i.bjt, %bb.is ], [ %i.bjt, %bb.io ], [ %i.bjs, %bb.im ]
  %.0456.ph.i.i.be = phi ptr [ %i.bni, %bb.in ], [ %.0456.ph.i.i, %bb.ih ], [ %.0456.ph.i.i, %bb.ij ], [ %i.bmk, %bb.ii ], [ %.0456.ph.i.i, %bb.gd ], [ %i.aqt, %bb.gf ], [ %.0456.ph.i.i, %bb.ga ], [ %i.apz, %bb.fz ], [ %i.apx, %bb.fy ], [ %i.arg, %bb.gh ], [ %.0456.ph.i.i, %bb.ef ], [ %.0456.ph.i.i, %bb.ee ], [ %.0456.ph.i.i, %bb.ec ], [ %.0456.ph.i.i, %bb.eb ], [ %.0456.ph.i.i, %bb.en ], [ %.0456.ph.i.i, %bb.em ], [ %.0456.ph.i.i, %bb.ek ], [ %.0456.ph.i.i, %bb.ej ], [ %i.ahy, %bb.ep ], [ %.0456.ph.i.i, %bb.dh ], [ %.0456.ph.i.i, %bb.dg ], [ %.0456.ph.i.i, %bb.de ], [ %.0456.ph.i.i, %bb.dd ], [ %.0456.ph.i.i, %bb.dp ], [ %.0456.ph.i.i, %bb.do ], [ %.0456.ph.i.i, %bb.dm ], [ %.0456.ph.i.i, %bb.dl ], [ %i.aeu, %bb.dr ], [ %i.amm, %bb.fj ], [ %i.btc, %bb.jy ], [ %i.bss, %tr_ilg.exit584.i.i ], [ %.0456.ph.i.i, %bb.ji ], [ %.0456.ph.i.i, %bb.jj ], [ %i.brn, %bb.jl ], [ %.0456.ph.i.i, %bb.jd ], [ %.0456.ph.i.i, %bb.je ], [ %i.bqr, %bb.jg ], [ %i.bpw, %bb.iy ], [ %.0456.ph.i.i, %bb.iw ], [ %i.bpj, %bb.ix ], [ %.0456.ph.i.i, %bb.ir ], [ %.0456.ph.i.i, %bb.it ], [ %i.bol, %bb.is ], [ %i.bnv, %bb.io ], [ %.0456.ph.i.i, %bb.im ]
  %.0449.ph.i.i.be = phi i32 [ %i.bkr, %bb.in ], [ %i.aws, %bb.ih ], [ %i.aws, %bb.ij ], [ %i.bkr, %bb.ii ], [ -3, %bb.gd ], [ %i.aqz, %bb.gf ], [ -3, %bb.ga ], [ %i.aot, %bb.fz ], [ %i.aot, %bb.fy ], [ %i.arm, %bb.gh ], [ %i.agz, %bb.ef ], [ %i.agw, %bb.ee ], [ %i.agr, %bb.ec ], [ %i.agm, %bb.eb ], [ %i.aht, %bb.en ], [ %i.ahq, %bb.em ], [ %i.ahl, %bb.ek ], [ %i.ahg, %bb.ej ], [ %i.aie, %bb.ep ], [ %i.adv, %bb.dh ], [ %i.ads, %bb.dg ], [ %i.adn, %bb.de ], [ %i.adi, %bb.dd ], [ %i.aep, %bb.dp ], [ %i.aem, %bb.do ], [ %i.aeh, %bb.dm ], [ %i.aec, %bb.dl ], [ %i.afa, %bb.dr ], [ %i.ams, %bb.fj ], [ %i.bti, %bb.jy ], [ %i.bsr, %tr_ilg.exit584.i.i ], [ %i.aws, %bb.ji ], [ %i.aws, %bb.jj ], [ %i.brt, %bb.jl ], [ %i.aws, %bb.jd ], [ %i.aws, %bb.je ], [ %i.bqx, %bb.jg ], [ %i.bkr, %bb.iy ], [ %i.aws, %bb.iw ], [ %i.bkr, %bb.ix ], [ %i.aws, %bb.ir ], [ %i.aws, %bb.it ], [ %i.bkr, %bb.is ], [ %i.bkr, %bb.io ], [ %i.aws, %bb.im ]
  %.0445.ph.i.i.be = phi i32 [ %i.bng, %bb.in ], [ %i.bmh, %bb.ih ], [ %i.bmq, %bb.ij ], [ %.0445.ph.i.i, %bb.ii ], [ %.0445.ph.i.i, %bb.gd ], [ %i.aqq, %bb.gf ], [ %i.aqf, %bb.ga ], [ %.0445.ph.i.i, %bb.fz ], [ %i.apv, %bb.fy ], [ %i.ard, %bb.gh ], [ %i.age, %bb.ef ], [ %i.age, %bb.ee ], [ %i.age, %bb.ec ], [ %i.age, %bb.eb ], [ %.1446.i.i, %bb.en ], [ %.1446.i.i, %bb.em ], [ %.1446.i.i, %bb.ek ], [ %.1446.i.i, %bb.ej ], [ %i.ahv, %bb.ep ], [ %i.ada, %bb.dh ], [ %i.ada, %bb.dg ], [ %i.ada, %bb.de ], [ %i.ada, %bb.dd ], [ %.1446.i.i, %bb.dp ], [ %.1446.i.i, %bb.do ], [ %.1446.i.i, %bb.dm ], [ %.1446.i.i, %bb.dl ], [ %i.aer, %bb.dr ], [ %i.amj, %bb.fj ], [ %i.bsz, %bb.jy ], [ %.0445.ph.i.i, %tr_ilg.exit584.i.i ], [ %i.brg, %bb.ji ], [ %.0445.ph.i.i, %bb.jj ], [ %i.brk, %bb.jl ], [ %i.bqk, %bb.jd ], [ %.0445.ph.i.i, %bb.je ], [ %i.bqo, %bb.jg ], [ %i.bpu, %bb.iy ], [ %i.bpf, %bb.iw ], [ %i.bph, %bb.ix ], [ %i.boi, %bb.ir ], [ %i.bor, %bb.it ], [ %.0445.ph.i.i, %bb.is ], [ %i.bnt, %bb.io ], [ %i.bne, %bb.im ]
  %.0.ph.i.i.be = phi i32 [ %.0.ph.i.i, %bb.in ], [ %.0.ph.i.i, %bb.ih ], [ %.0.ph.i.i, %bb.ij ], [ %.0.ph.i.i, %bb.ii ], [ %.0.ph.i.i, %bb.gd ], [ %i.arb, %bb.gf ], [ %.0.ph.i.i, %bb.ga ], [ %.0.ph.i.i, %bb.fz ], [ %.0.ph.i.i, %bb.fy ], [ %i.aro, %bb.gh ], [ %.1.i.i311, %bb.ef ], [ %.1.i.i311, %bb.ee ], [ %.1.i.i311, %bb.ec ], [ %.1.i.i311, %bb.eb ], [ %.1.i.i311, %bb.en ], [ %.1.i.i311, %bb.em ], [ %.1.i.i311, %bb.ek ], [ %.1.i.i311, %bb.ej ], [ %i.aig, %bb.ep ], [ %.1.i.i311, %bb.dh ], [ %.1.i.i311, %bb.dg ], [ %.1.i.i311, %bb.de ], [ %.1.i.i311, %bb.dd ], [ %.1.i.i311, %bb.dp ], [ %.1.i.i311, %bb.do ], [ %.1.i.i311, %bb.dm ], [ %.1.i.i311, %bb.dl ], [ %i.afc, %bb.dr ], [ %i.amu, %bb.fj ], [ %i.btk, %bb.jy ], [ %.0.ph.i.i, %tr_ilg.exit584.i.i ], [ %.0.ph.i.i, %bb.ji ], [ %.0.ph.i.i, %bb.jj ], [ %i.brv, %bb.jl ], [ %.0.ph.i.i, %bb.jd ], [ %.0.ph.i.i, %bb.je ], [ %i.bqz, %bb.jg ], [ %.0.ph.i.i, %bb.iy ], [ %.0.ph.i.i, %bb.iw ], [ %.0.ph.i.i, %bb.ix ], [ %.0.ph.i.i, %bb.ir ], [ %.0.ph.i.i, %bb.it ], [ %.0.ph.i.i, %bb.is ], [ %.0.ph.i.i, %bb.io ], [ %.0.ph.i.i, %bb.im ]
  br label %.outer.i.i

tr_introsort.exit.i:                              ; preds = %bb.jx, %bb.jk, %bb.jf, %bb.gg, %bb.ge, %tr_copy.exit.i.i, %bb.eo, %bb.dq
  %.sroa.0.3.lcssa.i = phi i32 [ %.sroa.0.3.i, %bb.dq ], [ %.sroa.0.3.i, %bb.eo ], [ %.sroa.0.3.i, %tr_copy.exit.i.i ], [ 0, %bb.ge ], [ %.sroa.0.3.i, %bb.gg ], [ %.sroa.0.3.i, %bb.jf ], [ %.sroa.0.3.i, %bb.jk ], [ 0, %bb.jx ] ; 3 uses
  %.sroa.23.3.i = phi i32 [ %.sroa.23.0.i, %bb.dq ], [ %.sroa.23.0.i, %bb.eo ], [ %.sroa.23.0.i, %tr_copy.exit.i.i ], [ %i.aqh, %bb.ge ], [ %.sroa.23.0.i, %bb.gg ], [ %.sroa.23.1.i, %bb.jf ], [ %.sroa.23.1.i, %bb.jk ], [ %i.bst, %bb.jx ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %.not52.i = icmp eq i32 %.sroa.23.3.i, 0
  br i1 %.not52.i, label %bb.jz, label %.thread.i

bb.jz:                                            ; preds = %tr_introsort.exit.i
  %i.btl = sub i64 %i.ru, %i.rt
  %i.btm = lshr exact i64 %i.btl, 2
  %i.btn = trunc i64 %i.btm to i32
  br label %bb.kb

bb.ka:                                            ; preds = %bb.bm
  %i.bto = icmp eq i64 %i.rv, 4
  %spec.select.i294 = sext i1 %i.bto to i32
  br label %bb.kb

bb.kb:                                            ; preds = %bb.ka, %bb.jz, %bb.bj
  %.sroa.9.2.i = phi i32 [ %.sroa.9.1.i, %bb.bj ], [ %.sroa.9.3.i, %bb.jz ], [ %.sroa.9.1.i, %bb.ka ] ; 3 uses
  %.sroa.0.2.i = phi i32 [ %.sroa.0.1.i, %bb.bj ], [ %.sroa.0.3.lcssa.i, %bb.jz ], [ %.sroa.0.1.i, %bb.ka ] ; 3 uses
  %.146.i = phi ptr [ %i.rj, %bb.bj ], [ %i.rs, %bb.jz ], [ %i.rs, %bb.ka ] ; 3 uses
  %.3.i = phi i32 [ %i.rk, %bb.bj ], [ %i.btn, %bb.jz ], [ %spec.select.i294, %bb.ka ] ; 4 uses
  %i.btp = icmp ult ptr %.146.i, %i.br
  br i1 %i.btp, label %thread-pre-split.i, label %bb.kc, !llvm.loop !87

.thread.i:                                        ; preds = %tr_introsort.exit.i
  %i.btq = add nsw i32 %.sroa.23.3.i, %.0.i       ; 2 uses
  %i.btr = icmp slt i64 %i.rr, %.idx159.i
  br i1 %i.btr, label %thread-pre-split.i, label %.thread149.i, !llvm.loop !87

bb.kc:                                            ; preds = %bb.kb
  %.not53.i = icmp eq i32 %.3.i, 0
  br i1 %.not53.i, label %.thread149.i, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.bts = sext i32 %.3.i to i64
  %i.btt = getelementptr inbounds [4 x i8], ptr %.146.i, i64 %i.bts
  store i32 %.3.i, ptr %i.btt, align 4, !tbaa !9
  br label %.thread149.i

.thread149.i:                                     ; preds = %.thread.i, %bb.kd, %bb.kc
  %.sroa.9.2139158.i = phi i32 [ %.sroa.9.2.i, %bb.kc ], [ %.sroa.9.2.i, %bb.kd ], [ %.sroa.9.3.i, %.thread.i ]
  %.sroa.0.2141157.i = phi i32 [ %.sroa.0.2.i, %bb.kc ], [ %.sroa.0.2.i, %bb.kd ], [ %.sroa.0.3.lcssa.i, %.thread.i ]
  %.2147156.i = phi i32 [ %.0.i, %bb.kc ], [ %.0.i, %bb.kd ], [ %i.btq, %.thread.i ]
  %i.btu = icmp eq i32 %.2147156.i, 0
  br i1 %i.btu, label %trsort.exit, label %bb.ke

bb.ke:                                            ; preds = %.thread149.i
  %i.btv = getelementptr inbounds i8, ptr %.047208.i, i64 %i.rc
  %i.btw = load i32, ptr %1, align 4, !tbaa !9    ; 2 uses
  %i.btx = icmp sgt i32 %i.btw, %i.qs
  br i1 %i.btx, label %.preheader169.i, label %trsort.exit, !llvm.loop !88

trsort.exit:                                      ; preds = %.thread149.i, %bb.ke, %tr_ilg.exit.i
  %i.bty = load i8, ptr %i.c, align 1, !tbaa !10
  %i.btz = zext i8 %i.bty to i32
  br label %.preheader

.preheader:                                       ; preds = %trsort.exit, %.critedge6
  %.7460 = phi i32 [ %i.btz, %trsort.exit ], [ %.11, %.critedge6 ]
  %.4255459 = phi i32 [ %i.bk, %trsort.exit ], [ %i.bus, %.critedge6 ]
  %.13270458 = phi i32 [ %i.a, %trsort.exit ], [ %.15.lcssa, %.critedge6 ] ; 3 uses
  %.not317112 = icmp eq i32 %.13270458, 0
  br i1 %.not317112, label %.critedge6.thread, label %.lr.ph115

.lr.ph115:                                        ; preds = %.preheader
  %i.bua = zext nneg i32 %.13270458 to i64
  %12 = add nsw i32 %.13270458, -2
  br label %bb.kg

bb.kf:                                            ; preds = %bb.kg
  %indvars.iv.next607 = add i32 %indvars.iv606114, -1
  %.not317 = icmp eq i64 %i.bub, 0
  br i1 %.not317, label %.critedge6.thread, label %bb.kg, !llvm.loop !89

bb.kg:                                            ; preds = %.lr.ph115, %bb.kf
  %.3114 = phi i32 [ %.7460, %.lr.ph115 ], [ %i.bue, %bb.kf ]
  %indvars.iv596113 = phi i64 [ %i.bua, %.lr.ph115 ], [ %i.bub, %bb.kf ] ; 3 uses
  %indvars.iv606114 = phi i32 [ %12, %.lr.ph115 ], [ %indvars.iv.next607, %bb.kf ] ; 2 uses
  %i.bub = add nsw i64 %indvars.iv596113, -1      ; 5 uses
  %i.buc = getelementptr inbounds nuw i8, ptr %0, i64 %i.bub
  %i.bud = load i8, ptr %i.buc, align 1, !tbaa !10
  %i.bue = zext i8 %i.bud to i32                  ; 4 uses
  %.not286 = icmp sgt i32 %.3114, %i.bue
  br i1 %.not286, label %bb.kh, label %bb.kf, !llvm.loop !89

bb.kh:                                            ; preds = %bb.kg
  %i.buf = trunc nuw nsw i64 %indvars.iv596113 to i32 ; 2 uses
  %i.bug = trunc nuw nsw i64 %i.bub to i32        ; 2 uses
  %i.buh = add nuw nsw i32 %i.buf, -2
  %i.bui = icmp sgt i64 %indvars.iv596113, 1
  br i1 %i.bui, label %.lr.ph452.preheader, label %.critedge6

.lr.ph452.preheader:                              ; preds = %bb.kh
  %13 = zext i32 %indvars.iv606114 to i64
  br label %.lr.ph452

.lr.ph452:                                        ; preds = %.lr.ph452.preheader, %bb.ki
  %indvars.iv609 = phi i64 [ %13, %.lr.ph452.preheader ], [ %indvars.iv.next610, %bb.ki ] ; 4 uses
  %.15449 = phi i32 [ %i.bue, %.lr.ph452.preheader ], [ %i.bul, %bb.ki ]
  %i.buj = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv609
  %i.buk = load i8, ptr %i.buj, align 1, !tbaa !10
  %i.bul = zext i8 %i.buk to i32                  ; 4 uses
  %.not287 = icmp samesign ult i32 %.15449, %i.bul
  br i1 %.not287, label %.critedge6.loopexit.split.loop.exit, label %bb.ki

bb.ki:                                            ; preds = %.lr.ph452
  %indvars.iv.next610 = add nsw i64 %indvars.iv609, -1
  %i.bum = icmp sgt i64 %indvars.iv609, 0
  br i1 %i.bum, label %.lr.ph452, label %.critedge6, !llvm.loop !90

.critedge6.loopexit.split.loop.exit:              ; preds = %.lr.ph452
  %14 = trunc nuw nsw i64 %indvars.iv609 to i32
  br label %.critedge6

.critedge6:                                       ; preds = %bb.ki, %.critedge6.loopexit.split.loop.exit, %bb.kh
  %.15.lcssa = phi i32 [ %i.buh, %bb.kh ], [ %14, %.critedge6.loopexit.split.loop.exit ], [ -1, %bb.ki ] ; 3 uses
  %.11 = phi i32 [ %i.bue, %bb.kh ], [ %i.bul, %.critedge6.loopexit.split.loop.exit ], [ %i.bul, %bb.ki ]
  %i.bun = icmp eq i64 %i.bub, 0
  %i.buo = sub nsw i32 %i.bug, %.15.lcssa
  %i.bup = icmp sgt i32 %i.buo, 1
  %or.cond = select i1 %i.bun, i1 true, i1 %i.bup
  %i.buq = sub nsw i32 0, %i.buf
  %i.bur = select i1 %or.cond, i32 %i.bug, i32 %i.buq
  %i.bus = add nsw i32 %.4255459, -1              ; 2 uses
  %i.but = sext i32 %i.bus to i64
  %i.buu = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.but
  %i.buv = load i32, ptr %i.buu, align 4, !tbaa !9
  %i.buw = sext i32 %i.buv to i64
  %i.bux = getelementptr inbounds [4 x i8], ptr %1, i64 %i.buw
  store i32 %i.bur, ptr %i.bux, align 4, !tbaa !9
  %i.buy = icmp sgt i32 %.15.lcssa, -1
  br i1 %i.buy, label %.preheader, label %.critedge6.thread, !llvm.loop !91

.critedge6.thread:                                ; preds = %.critedge6, %.preheader, %bb.kf
  %i.buz = getelementptr inbounds nuw i8, ptr %3, i64 262140
  store i32 %4, ptr %i.buz, align 4, !tbaa !9
  br label %.lr.ph473

.lr.ph473:                                        ; preds = %._crit_edge474, %.critedge6.thread
  %indvars.iv611 = phi i64 [ 254, %.critedge6.thread ], [ %indvars.iv.next612, %._crit_edge474 ] ; 9 uses
  %.0248477 = phi i32 [ %i.dr, %.critedge6.thread ], [ %.2250.lcssa, %._crit_edge474 ]
  %indvars613 = trunc i64 %indvars.iv611 to i32
  %i.bva = add nuw nsw i32 %indvars613, 1
  %i.bvb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv611
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.bvb, i64 4
  %i.bvd = load i32, ptr %i.bvc, align 4, !tbaa !9
  %i.bve = add nsw i32 %i.bvd, -1
  %invariant.gep918 = getelementptr [4 x i8], ptr %3, i64 %indvars.iv611
  %indvars.iv611.tr = trunc nuw nsw i64 %indvars.iv611 to i32
  %i.bvf = shl nuw nsw i32 %indvars.iv611.tr, 8   ; 2 uses
  %i.bvg = zext nneg i32 %i.bvf to i64
  br label %bb.kj

bb.kj:                                            ; preds = %.lr.ph473, %._crit_edge466
  %indvars.iv608 = phi i64 [ 255, %.lr.ph473 ], [ %indvars.iv.next609, %._crit_edge466 ] ; 3 uses
  %.1249470 = phi i32 [ %.0248477, %.lr.ph473 ], [ %.2250.lcssa, %._crit_edge466 ] ; 3 uses
  %.17469 = phi i32 [ %i.bve, %.lr.ph473 ], [ %.18.lcssa, %._crit_edge466 ] ; 2 uses
  %.idx806 = shl nuw nsw i64 %indvars.iv608, 10
  %gep919 = getelementptr i8, ptr %invariant.gep918, i64 %.idx806 ; 2 uses
  %i.bvh = load i32, ptr %gep919, align 4, !tbaa !9
  %i.bvi = sub i32 %.17469, %i.bvh                ; 2 uses
  store i32 %.17469, ptr %gep919, align 4, !tbaa !9
  %i.bvj = or i64 %indvars.iv608, %i.bvg
  %i.bvk = getelementptr inbounds [4 x i8], ptr %3, i64 %i.bvj
  %i.bvl = load i32, ptr %i.bvk, align 4, !tbaa !9 ; 2 uses
  %.not461 = icmp sgt i32 %i.bvl, %.1249470
  br i1 %.not461, label %._crit_edge466, label %.lr.ph465.preheader

.lr.ph465.preheader:                              ; preds = %bb.kj
  %i.bvm = sext i32 %.1249470 to i64              ; 6 uses
  %i.bvn = sext i32 %i.bvl to i64                 ; 2 uses
  %i.bvo = sext i32 %i.bvi to i64                 ; 5 uses
  %i.bvp = add nsw i64 %i.bvm, 1
  %i.bvq = sub nsw i64 %i.bvp, %i.bvn             ; 3 uses
  %min.iters.check243 = icmp ult i64 %i.bvq, 8
  br i1 %min.iters.check243, label %.lr.ph465.preheader256, label %vector.memcheck244

vector.memcheck244:                               ; preds = %.lr.ph465.preheader
  %i.bvr = sub nsw i64 %i.bvm, %i.bvo
  %i.bvs = shl nsw i64 %i.bvr, 2
  %i.bvt = add nsw i64 %i.bvs, -1
  %diff.check = icmp ult i64 %i.bvt, 31
  br i1 %diff.check, label %.lr.ph465.preheader256, label %vector.ph245

vector.ph245:                                     ; preds = %vector.memcheck244
  %n.vec246 = and i64 %i.bvq, -8                  ; 4 uses
  %i.bvu = sub nsw i64 %i.bvo, %n.vec246          ; 2 uses
  %i.bvv = sub nsw i64 %i.bvm, %n.vec246          ; 2 uses
  br label %vector.body247

vector.body247:                                   ; preds = %vector.body247, %vector.ph245
  %index248 = phi i64 [ 0, %vector.ph245 ], [ %index.next251, %vector.body247 ] ; 3 uses
  %i.bvw = sub i64 %i.bvo, %index248
  %i.bvx = sub i64 %i.bvm, %index248
  %i.bvy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bvx ; 2 uses
  %i.bvz = getelementptr inbounds i8, ptr %i.bvy, i64 -12
  %i.bwa = getelementptr inbounds i8, ptr %i.bvy, i64 -28
  %wide.load249 = load <4 x i32>, ptr %i.bvz, align 4, !tbaa !9
  %wide.load250 = load <4 x i32>, ptr %i.bwa, align 4, !tbaa !9
  %i.bwb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bvw ; 2 uses
  %i.bwc = getelementptr inbounds i8, ptr %i.bwb, i64 -12
  %i.bwd = getelementptr inbounds i8, ptr %i.bwb, i64 -28
  store <4 x i32> %wide.load249, ptr %i.bwc, align 4, !tbaa !9
  store <4 x i32> %wide.load250, ptr %i.bwd, align 4, !tbaa !9
  %index.next251 = add nuw i64 %index248, 8       ; 2 uses
  %i.bwe = icmp eq i64 %index.next251, %n.vec246
  br i1 %i.bwe, label %middle.block252, label %vector.body247, !llvm.loop !92

middle.block252:                                  ; preds = %vector.body247
  %cmp.n253 = icmp eq i64 %i.bvq, %n.vec246
  br i1 %cmp.n253, label %._crit_edge466.loopexit, label %.lr.ph465.preheader256

.lr.ph465.preheader256:                           ; preds = %vector.memcheck244, %.lr.ph465.preheader, %middle.block252
  %indvars.iv603.ph = phi i64 [ %i.bvo, %vector.memcheck244 ], [ %i.bvo, %.lr.ph465.preheader ], [ %i.bvu, %middle.block252 ]
  %indvars.iv601.ph = phi i64 [ %i.bvm, %vector.memcheck244 ], [ %i.bvm, %.lr.ph465.preheader ], [ %i.bvv, %middle.block252 ]
  br label %.lr.ph465

.lr.ph465:                                        ; preds = %.lr.ph465.preheader256, %.lr.ph465
  %indvars.iv603 = phi i64 [ %indvars.iv.next604, %.lr.ph465 ], [ %indvars.iv603.ph, %.lr.ph465.preheader256 ] ; 2 uses
  %indvars.iv601 = phi i64 [ %indvars.iv.next602, %.lr.ph465 ], [ %indvars.iv601.ph, %.lr.ph465.preheader256 ] ; 3 uses
  %i.bwf = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv601
  %i.bwg = load i32, ptr %i.bwf, align 4, !tbaa !9
  %i.bwh = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv603
  store i32 %i.bwg, ptr %i.bwh, align 4, !tbaa !9
  %indvars.iv.next604 = add nsw i64 %indvars.iv603, -1 ; 2 uses
  %indvars.iv.next602 = add nsw i64 %indvars.iv601, -1 ; 2 uses
  %.not.not = icmp sgt i64 %indvars.iv601, %i.bvn
  br i1 %.not.not, label %.lr.ph465, label %._crit_edge466.loopexit, !llvm.loop !93

._crit_edge466.loopexit:                          ; preds = %.lr.ph465, %middle.block252
  %indvars.iv.next604.lcssa = phi i64 [ %i.bvu, %middle.block252 ], [ %indvars.iv.next604, %.lr.ph465 ]
  %indvars.iv.next602.lcssa = phi i64 [ %i.bvv, %middle.block252 ], [ %indvars.iv.next602, %.lr.ph465 ]
  %i.bwi = trunc nsw i64 %indvars.iv.next604.lcssa to i32
  %i.bwj = trunc nsw i64 %indvars.iv.next602.lcssa to i32
  br label %._crit_edge466

._crit_edge466:                                   ; preds = %._crit_edge466.loopexit, %bb.kj
  %.18.lcssa = phi i32 [ %i.bvi, %bb.kj ], [ %i.bwi, %._crit_edge466.loopexit ] ; 3 uses
  %.2250.lcssa = phi i32 [ %.1249470, %bb.kj ], [ %i.bwj, %._crit_edge466.loopexit ] ; 2 uses
  %indvars.iv.next609 = add nsw i64 %indvars.iv608, -1 ; 2 uses
  %i.bwk = icmp samesign ult i64 %indvars.iv611, %indvars.iv.next609
  br i1 %i.bwk, label %bb.kj, label %._crit_edge474, !llvm.loop !94

._crit_edge474:                                   ; preds = %._crit_edge466
  %i.bwl = shl i64 %indvars.iv611, 8
  %i.bwm = or i64 %i.bwl, %indvars.iv611
  %i.bwn = and i64 %i.bwm, 4294967295
  %i.bwo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bwn ; 2 uses
  %i.bwp = load i32, ptr %i.bwo, align 4, !tbaa !9
  %i.bwq = add i32 %.18.lcssa, 1
  %i.bwr = sub i32 %i.bwq, %i.bwp
  %i.bws = or i32 %i.bvf, %i.bva
  %i.bwt = zext nneg i32 %i.bws to i64
  %i.bwu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bwt
  store i32 %i.bwr, ptr %i.bwu, align 4, !tbaa !9
  store i32 %.18.lcssa, ptr %i.bwo, align 4, !tbaa !9
  %indvars.iv.next612 = add nsw i64 %indvars.iv611, -1
  %.not = icmp eq i64 %indvars.iv611, 0
  br i1 %.not, label %.loopexit, label %.lr.ph473, !llvm.loop !95

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
  %i.f = load i8, ptr %0, align 1, !tbaa !10
  store i8 %i.f, ptr %1, align 1, !tbaa !10
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
end_hunk_1
