Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/divsufsort?download=true
inline.NumInlined: 85
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@divsufsort:bb.a
  %i.by = select i1 %i.bw, i32 %i.bx, i32 %i.bj
  store i32 %i.by, ptr %i.br, align 4, !tbaa !12
  %.idx111.i = shl nuw nsw i64 %i.bs, 2
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %.idx111.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.cb = zext i8 %i.bm to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.w, %.lr.ph108.i
  %.3106.i = phi i32 [ %i.cb, %.lr.ph108.i ], [ %.5.i, %bb.w ] ; 4 uses
  %.381105.i = phi ptr [ %i.ca, %.lr.ph108.i ], [ %.583.i, %bb.w ] ; 3 uses
  %.085104.i = phi ptr [ %1, %.lr.ph108.i ], [ %i.dd, %bb.w ] ; 3 uses
  %i.cc = load i32, ptr %.085104.i, align 4, !tbaa !12 ; 5 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.ce = add nsw i32 %i.cc, -1                   ; 3 uses
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !13  ; 3 uses
  %i.ci = zext i8 %i.ch to i32                    ; 2 uses
  %i.cj = icmp eq i32 %i.ce, 0
  br i1 %i.cj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = zext nneg i32 %i.cc to i64
  %i.cl = getelementptr i8, ptr %0, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !13
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
  store i32 %i.ct, ptr %i.cv, align 4, !tbaa !12
  %i.cw = zext i8 %i.ch to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !12
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cz
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.482.i = phi ptr [ %i.da, %bb.t ], [ %.381105.i, %bb.s ] ; 2 uses
  %.4.i = phi i32 [ %i.ci, %bb.t ], [ %.3106.i, %bb.s ]
  %i.db = getelementptr inbounds nuw i8, ptr %.482.i, i64 4
  store i32 %.177.i, ptr %.482.i, align 4, !tbaa !12
  br label %bb.w

bb.v:                                             ; preds = %bb.o
  %i.dc = xor i32 %i.cc, -1
  store i32 %i.dc, ptr %.085104.i, align 4, !tbaa !12
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.583.i = phi ptr [ %i.db, %bb.u ], [ %.381105.i, %bb.v ]
  %.5.i = phi i32 [ %.4.i, %bb.u ], [ %.3106.i, %bb.v ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.085104.i, i64 4 ; 2 uses
  %i.de = icmp ult ptr %i.dd, %i.bz
  br i1 %i.de, label %bb.o, label %construct_SA.exit, !llvm.loop !21

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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %2, i8 0, i64 1024, i1 false), !tbaa !12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(262144) %3, i8 0, i64 262144, i1 false), !tbaa !12
  %i.a = add nsw i32 %4, -1                       ; 4 uses
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !13    ; 2 uses
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !12
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4, !tbaa !12
  %.not32198103 = icmp eq i32 %i.a, 0
  br i1 %.not32198103, label %.loopexit828, label %.lr.ph101.lr.ph

.lr.ph101.lr.ph:                                  ; preds = %.preheader340.preheader
  %i.i = zext i8 %i.d to i32
  br label %.lr.ph101

.preheader338.loopexit:                           ; preds = %.lr.ph
  %i.j = zext i8 %i.al to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !12
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !12
  %.not32198 = icmp eq i32 %.4261419, 0
  br i1 %.not32198, label %.loopexit828, label %.lr.ph101, !llvm.loop !22

.lr.ph101:                                        ; preds = %.lr.ph101.lr.ph, %.preheader338.loopexit
  %.in = phi i32 [ %i.a, %.lr.ph101.lr.ph ], [ %.4261419, %.preheader338.loopexit ]
  %.0246426105 = phi i32 [ %4, %.lr.ph101.lr.ph ], [ %i.ae, %.preheader338.loopexit ] ; 2 uses
  %.0240427104 = phi i32 [ %i.i, %.lr.ph101.lr.ph ], [ %i.am, %.preheader338.loopexit ]
  %i.n = zext i32 %.in to i64
  br label %bb.b

bb.a:                                             ; preds = %bb.b
  %i.o = zext i8 %i.u to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !12
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !12
  %.not321 = icmp eq i64 %i.s, 0
  br i1 %.not321, label %.loopexit828, label %bb.b, !llvm.loop !23

bb.b:                                             ; preds = %.lr.ph101, %bb.a
  %.1241100 = phi i32 [ %.0240427104, %.lr.ph101 ], [ %i.v, %bb.a ] ; 2 uses
  %indvars.iv99 = phi i64 [ %i.n, %.lr.ph101 ], [ %i.s, %bb.a ] ; 2 uses
  %i.s = add nsw i64 %indvars.iv99, -1            ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !13    ; 2 uses
  %i.v = zext i8 %i.u to i32                      ; 4 uses
  %.not289 = icmp sgt i32 %.1241100, %i.v
  br i1 %.not289, label %bb.c, label %bb.a, !llvm.loop !23

bb.c:                                             ; preds = %bb.b
  %i.w = trunc nuw i64 %indvars.iv99 to i32       ; 2 uses
  %i.x = trunc nuw i64 %i.s to i32
  %i.y = shl nuw nsw i32 %i.v, 8
  %i.z = or i32 %i.y, %.1241100
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !12
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !12
  %i.ae = add nsw i32 %.0246426105, -1            ; 5 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %1, i64 %i.af
  store i32 %i.x, ptr %i.ag, align 4, !tbaa !12
  %i.ah = icmp sgt i32 %i.w, 1
  br i1 %i.ah, label %.lr.ph.preheader, label %.loopexit828

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ai = add nsw i32 %i.w, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.0420 = phi i32 [ %i.am, %bb.d ], [ %i.v, %.lr.ph.preheader ] ; 2 uses
  %.4261419 = phi i32 [ %i.at, %bb.d ], [ %i.ai, %.lr.ph.preheader ] ; 5 uses
  %i.aj = zext nneg i32 %.4261419 to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !13  ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 4 uses
  %.not290 = icmp samesign ult i32 %.0420, %i.am
  br i1 %.not290, label %.preheader338.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.an = shl nuw nsw i32 %.0420, 8
  %i.ao = or disjoint i32 %i.an, %i.am
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !12
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !12
  %i.at = add nsw i32 %.4261419, -1
  %i.au = icmp sgt i32 %.4261419, 0
  br i1 %i.au, label %.lr.ph, label %.loopexit828, !llvm.loop !24

.loopexit828:                                     ; preds = %bb.c, %.preheader338.loopexit, %bb.a, %bb.d, %.preheader340.preheader
  %.1247.ph = phi i32 [ %.0246426105, %bb.a ], [ %4, %.preheader340.preheader ], [ %i.ae, %bb.d ], [ %i.ae, %.preheader338.loopexit ], [ %i.ae, %bb.c ]
  br label %bb.e

.loopexit337:                                     ; preds = %.lr.ph431.prol.loopexit, %.lr.ph431, %bb.e
  %.7264.lcssa = phi i32 [ %i.be, %bb.e ], [ %.lcssa350.unr, %.lr.ph431.prol.loopexit ], [ %i.bt, %.lr.ph431 ]
  %.1252.lcssa = phi i32 [ %.0251434, %bb.e ], [ %.lcssa351.unr, %.lr.ph431.prol.loopexit ], [ %i.br, %.lr.ph431 ]
  %indvars.iv.next577 = add nuw nsw i64 %indvars.iv576.a, 1
  %exitcond584.not = icmp eq i64 %indvars.iv.next582, 256
  br i1 %exitcond584.not, label %bb.f, label %bb.e, !llvm.loop !25

bb.e:                                             ; preds = %.loopexit828, %.loopexit337
  %indvars.iv581 = phi i64 [ 0, %.loopexit828 ], [ %indvars.iv.next582, %.loopexit337 ] ; 9 uses
  %indvars.iv576.a = phi i64 [ 1, %.loopexit828 ], [ %indvars.iv.next577, %.loopexit337 ] ; 5 uses
  %.0251434 = phi i32 [ 0, %.loopexit828 ], [ %.1252.lcssa, %.loopexit337 ] ; 4 uses
  %.6263433 = phi i32 [ 0, %.loopexit828 ], [ %.7264.lcssa, %.loopexit337 ] ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv581 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !12
  %i.ax = add nsw i32 %i.aw, %.6263433
  %i.ay = add nsw i32 %.0251434, %.6263433
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !12
  %i.az = shl i64 %indvars.iv581, 8
  %i.ba = and i64 %i.az, 4294967040
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv581
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !12
  %i.be = add nsw i32 %i.ax, %i.bd                ; 3 uses
  %indvars.iv.next582 = add nuw nsw i64 %indvars.iv581, 1 ; 2 uses
  %i.bf = icmp samesign ult i64 %indvars.iv581, 255
  br i1 %i.bf, label %.lr.ph431.preheader, label %.loopexit337

.lr.ph431.preheader:                              ; preds = %bb.e
  %.idx806.a = shl nuw nsw i64 %indvars.iv581, 10
  %invariant.gep = getelementptr inbounds nuw i8, ptr %3, i64 %.idx806.a ; 3 uses
  %invariant.gep918.a = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv581 ; 3 uses
  %i.bg = and i64 %indvars.iv581, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bg, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph431.prol, label %.lr.ph431.prol.loopexit

.lr.ph431.prol:                                   ; preds = %.lr.ph431.preheader
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv576.a ; 2 uses
  %i.bh = load i32, ptr %gep.prol, align 4, !tbaa !12
  %i.bi = add nsw i32 %i.bh, %.0251434            ; 3 uses
  store i32 %i.bi, ptr %gep.prol, align 4, !tbaa !12
  %.idx807.prol = shl nuw nsw i64 %indvars.iv576.a, 10
  %gep919.prol = getelementptr inbounds nuw i8, ptr %invariant.gep918.a, i64 %.idx807.prol
  %i.bj = load i32, ptr %gep919.prol, align 4, !tbaa !12
  %i.bk = add nsw i32 %i.bj, %i.be                ; 2 uses
  %indvars.iv.next579.prol = add nuw nsw i64 %indvars.iv576.a, 1
  br label %.lr.ph431.prol.loopexit

.lr.ph431.prol.loopexit:                          ; preds = %.lr.ph431.prol, %.lr.ph431.preheader
  %.lcssa351.unr = phi i32 [ poison, %.lr.ph431.preheader ], [ %i.bi, %.lr.ph431.prol ]
  %.lcssa350.unr = phi i32 [ poison, %.lr.ph431.preheader ], [ %i.bk, %.lr.ph431.prol ]
  %indvars.iv578.unr = phi i64 [ %indvars.iv576.a, %.lr.ph431.preheader ], [ %indvars.iv.next579.prol, %.lr.ph431.prol ]
  %.1252429.unr = phi i32 [ %.0251434, %.lr.ph431.preheader ], [ %i.bi, %.lr.ph431.prol ]
  %.7264428.unr = phi i32 [ %i.be, %.lr.ph431.preheader ], [ %i.bk, %.lr.ph431.prol ]
  %i.bl = icmp eq i64 %indvars.iv581, 254
  br i1 %i.bl, label %.loopexit337, label %.lr.ph431

.lr.ph431:                                        ; preds = %.lr.ph431.prol.loopexit, %.lr.ph431
  %indvars.iv578 = phi i64 [ %indvars.iv.next579.1, %.lr.ph431 ], [ %indvars.iv578.unr, %.lr.ph431.prol.loopexit ] ; 4 uses
  %.1252429 = phi i32 [ %i.br, %.lr.ph431 ], [ %.1252429.unr, %.lr.ph431.prol.loopexit ]
  %.7264428 = phi i32 [ %i.bt, %.lr.ph431 ], [ %.7264428.unr, %.lr.ph431.prol.loopexit ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv578 ; 2 uses
  %i.bm = load i32, ptr %gep, align 4, !tbaa !12
  %i.bn = add nsw i32 %i.bm, %.1252429            ; 2 uses
  store i32 %i.bn, ptr %gep, align 4, !tbaa !12
  %.idx807 = shl nuw nsw i64 %indvars.iv578, 10
  %gep919.a = getelementptr inbounds nuw i8, ptr %invariant.gep918.a, i64 %.idx807
  %i.bo = load i32, ptr %gep919.a, align 4, !tbaa !12
  %i.bp = add nsw i32 %i.bo, %.7264428
  %indvars.iv.next579 = add nuw nsw i64 %indvars.iv578, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next579 ; 2 uses
  %i.bq = load i32, ptr %gep.1, align 4, !tbaa !12
  %i.br = add nsw i32 %i.bq, %i.bn                ; 3 uses
  store i32 %i.br, ptr %gep.1, align 4, !tbaa !12
  %.idx807.1 = shl nuw nsw i64 %indvars.iv.next579, 10
  %gep919.1 = getelementptr inbounds nuw i8, ptr %invariant.gep918.a, i64 %.idx807.1
  %i.bs = load i32, ptr %gep919.1, align 4, !tbaa !12
  %i.bt = add nsw i32 %i.bs, %i.bp                ; 2 uses
  %indvars.iv.next579.1 = add nuw nsw i64 %indvars.iv578, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next579.1, 256
  br i1 %exitcond.not.1, label %.loopexit337, label %.lr.ph431, !llvm.loop !26

bb.f:                                             ; preds = %.loopexit337
  %i.bu = sub nsw i32 %4, %.1247.ph               ; 20 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.bw = zext nneg i32 %4 to i64                 ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bw
  %i.by = zext nneg i32 %i.bu to i64              ; 4 uses
  %i.bz = sub nsw i64 0, %i.by
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.bz ; 14 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.by ; 27 uses
  %.not479 = icmp eq i32 %i.bu, 1
  br i1 %.not479, label %.preheader336.lr.ph, label %.lr.ph437.preheader

.lr.ph437.preheader:                              ; preds = %bb.g
  %i.cc = add nsw i32 %i.bu, -2                   ; 3 uses
  %i.cd = zext i32 %i.cc to i64                   ; 4 uses
  %i.ce = and i64 %i.cd, 1
  %lcmp.mod370.not.not = icmp eq i64 %i.ce, 0
  br i1 %lcmp.mod370.not.not, label %.lr.ph437.prol, label %.lr.ph437.prol.loopexit

.lr.ph437.prol:                                   ; preds = %.lr.ph437.preheader
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cd
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !12
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr %0, i64 %i.ch ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !13
  %i.ck = zext i8 %i.cj to i64
  %i.cl = getelementptr i8, ptr %i.ci, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !13
  %i.cn = zext i8 %i.cm to i64
  %.idx288.prol = shl nuw nsw i64 %i.ck, 10
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 %.idx288.prol
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cn ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !12
  %i.cr = add nsw i32 %i.cq, -1                   ; 2 uses
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !12
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cs
  store i32 %i.cc, ptr %i.ct, align 4, !tbaa !12
  %indvars.iv.next586.prol = add nsw i64 %i.cd, -1
  br label %.lr.ph437.prol.loopexit

.lr.ph437.prol.loopexit:                          ; preds = %.lr.ph437.prol, %.lr.ph437.preheader
  %indvars.iv585.unr = phi i64 [ %i.cd, %.lr.ph437.preheader ], [ %indvars.iv.next586.prol, %.lr.ph437.prol ]
  %i.cu = icmp eq i32 %i.cc, 0
  br i1 %i.cu, label %.preheader336.lr.ph, label %.lr.ph437

.lr.ph437:                                        ; preds = %.lr.ph437.prol.loopexit, %.lr.ph437
  %indvars.iv585 = phi i64 [ %indvars.iv.next586.1, %.lr.ph437 ], [ %indvars.iv585.unr, %.lr.ph437.prol.loopexit ] ; 4 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv585
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !12
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %0, i64 %i.cx ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !13
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr i8, ptr %i.cy, i64 1
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !13
  %i.dd = zext i8 %i.dc to i64
  %.idx288 = shl nuw nsw i64 %i.da, 10
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 %.idx288
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.dd ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !12
  %i.dh = add nsw i32 %i.dg, -1                   ; 2 uses
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !12
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.di
  %i.dk = trunc nuw nsw i64 %indvars.iv585 to i32
  store i32 %i.dk, ptr %i.dj, align 4, !tbaa !12
  %indvars.iv.next586 = add nsw i64 %indvars.iv585, -1 ; 3 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.next586
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !12
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr %0, i64 %i.dn ; 2 uses
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !13
  %i.dq = zext i8 %i.dp to i64
  %i.dr = getelementptr i8, ptr %i.do, i64 1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !13
  %i.dt = zext i8 %i.ds to i64
  %.idx288.1 = shl nuw nsw i64 %i.dq, 10
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 %.idx288.1
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %i.dt ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !12
  %i.dx = add nsw i32 %i.dw, -1                   ; 2 uses
  store i32 %i.dx, ptr %i.dv, align 4, !tbaa !12
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dy
  %i.ea = trunc nuw nsw i64 %indvars.iv.next586 to i32
  store i32 %i.ea, ptr %i.dz, align 4, !tbaa !12
  %indvars.iv.next586.1 = add nsw i64 %indvars.iv585, -2
  %.not922.1 = icmp eq i64 %indvars.iv.next586, 0
  br i1 %.not922.1, label %.preheader336.lr.ph, label %.lr.ph437, !llvm.loop !27

.preheader336.lr.ph:                              ; preds = %.lr.ph437.prol.loopexit, %.lr.ph437, %bb.g
  %i.eb = add nsw i32 %i.bu, -1                   ; 5 uses
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !12
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds i8, ptr %0, i64 %i.ef ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !13
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr i8, ptr %i.eg, i64 1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !13
  %i.el = zext i8 %i.ek to i64
  %.idx = shl nuw nsw i64 %i.ei, 10
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.el ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !12
  %i.ep = add nsw i32 %i.eo, -1                   ; 2 uses
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !12
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [4 x i8], ptr %1, i64 %i.eq
  store i32 %i.eb, ptr %i.er, align 4, !tbaa !12
  %i.es = shl nuw nsw i32 %i.bu, 1
  %i.et = sub nsw i32 %4, %i.es                   ; 6 uses
  %invariant.op = add nsw i64 %i.bw, -2
  %i.eu = icmp slt i32 %i.et, 1024
  %i.ev = sext i32 %i.et to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 %i.bw
  br label %.lr.ph440

.lr.ph440:                                        ; preds = %._crit_edge441, %.preheader336.lr.ph
  %.6444 = phi i32 [ 254, %.preheader336.lr.ph ], [ %i.pd, %._crit_edge441 ] ; 3 uses
  %.2253443 = phi i32 [ %i.bu, %.preheader336.lr.ph ], [ %i.fc, %._crit_edge441 ]
  %i.ey = shl i32 %.6444, 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph440, %sssort.exit
  %.2439 = phi i32 [ 255, %.lr.ph440 ], [ %i.pb, %sssort.exit ] ; 2 uses
  %.3254438 = phi i32 [ %.2253443, %.lr.ph440 ], [ %i.fc, %sssort.exit ] ; 2 uses
  %i.ez = or i32 %.2439, %i.ey
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !12 ; 5 uses
  %i.fd = sub nsw i32 %.3254438, %i.fc
  %i.fe = icmp sgt i32 %i.fd, 1
  br i1 %i.fe, label %bb.i, label %sssort.exit

bb.i:                                             ; preds = %bb.h
  %i.ff = sext i32 %i.fc to i64
  %.idx319 = shl nsw i64 %i.ff, 2
  %i.fg = getelementptr inbounds i8, ptr %1, i64 %.idx319 ; 4 uses
  %i.fh = sext i32 %.3254438 to i64
  %.idx320 = shl nsw i64 %i.fh, 2
  %i.fi = getelementptr inbounds i8, ptr %1, i64 %.idx320 ; 10 uses
  %i.fj = load i32, ptr %i.fg, align 4, !tbaa !12
  %.not318 = icmp eq i32 %i.fj, %i.eb             ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 4 ; 3 uses
  %spec.select.i = select i1 %.not318, ptr %i.fk, ptr %i.fg ; 8 uses
  br i1 %i.eu, label %bb.j, label %._crit_edge208.i

._crit_edge208.i:                                 ; preds = %bb.i
  %.pre209.i = ptrtoint ptr %spec.select.i to i64
  br label %bb.aa

bb.j:                                             ; preds = %bb.i
  %i.fl = ptrtoint ptr %i.fi to i64
  %i.fm = ptrtoint ptr %spec.select.i to i64      ; 4 uses
  %i.fn = sub i64 %i.fl, %i.fm                    ; 2 uses
  %i.fo = ashr exact i64 %i.fn, 2                 ; 6 uses
  %i.fp = icmp sgt i64 %i.fo, %i.ev
  br i1 %i.fp, label %bb.k, label %bb.aa

bb.k:                                             ; preds = %bb.j
  %i.fq = trunc i64 %i.fo to i32                  ; 9 uses
  %i.fr = icmp sgt i32 %i.fq, 1048575
  br i1 %i.fr, label %ss_isqrt.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fs = icmp ugt i32 %i.fq, 65535
end_hunk_0
