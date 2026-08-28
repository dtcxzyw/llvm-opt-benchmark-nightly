Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/divsufsort?download=true
inline.NumInlined: 85
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@divsufsort:bb.a
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
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4, !tbaa !8
  %.not32198103 = icmp eq i32 %i.a, 0
  br i1 %.not32198103, label %.loopexit826, label %.lr.ph101.lr.ph

.lr.ph101.lr.ph:                                  ; preds = %.preheader340.preheader
  %i.i = zext i8 %i.d to i32
  br label %.lr.ph101

.preheader338.loopexit:                           ; preds = %.lr.ph
  %i.j = zext i8 %i.al to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !8
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !8
  %.not32198 = icmp eq i32 %.4261419, 0
  br i1 %.not32198, label %.loopexit826, label %.lr.ph101, !llvm.loop !14

.lr.ph101:                                        ; preds = %.lr.ph101.lr.ph, %.preheader338.loopexit
  %.in = phi i32 [ %i.a, %.lr.ph101.lr.ph ], [ %.4261419, %.preheader338.loopexit ]
  %.0246426105 = phi i32 [ %4, %.lr.ph101.lr.ph ], [ %i.ae, %.preheader338.loopexit ] ; 2 uses
  %.0240427104 = phi i32 [ %i.i, %.lr.ph101.lr.ph ], [ %i.am, %.preheader338.loopexit ]
  %i.n = zext i32 %.in to i64
  br label %bb.b

bb.a:                                             ; preds = %bb.b
  %i.o = zext i8 %i.u to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.o ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !8
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !8
  %.not321 = icmp eq i64 %i.s, 0
  br i1 %.not321, label %.loopexit826, label %bb.b, !llvm.loop !15

bb.b:                                             ; preds = %.lr.ph101, %bb.a
  %.1241100 = phi i32 [ %.0240427104, %.lr.ph101 ], [ %i.v, %bb.a ] ; 2 uses
  %indvars.iv99 = phi i64 [ %i.n, %.lr.ph101 ], [ %i.s, %bb.a ] ; 2 uses
  %i.s = add nsw i64 %indvars.iv99, -1            ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9     ; 2 uses
  %i.v = zext i8 %i.u to i32                      ; 4 uses
  %.not289 = icmp sgt i32 %.1241100, %i.v
  br i1 %.not289, label %bb.c, label %bb.a, !llvm.loop !15

bb.c:                                             ; preds = %bb.b
  %i.w = trunc nuw i64 %indvars.iv99 to i32       ; 2 uses
  %i.x = trunc nuw i64 %i.s to i32
  %i.y = shl nuw nsw i32 %i.v, 8
  %i.z = or i32 %i.y, %.1241100
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !8
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !8
  %i.ae = add nsw i32 %.0246426105, -1            ; 5 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %1, i64 %i.af
  store i32 %i.x, ptr %i.ag, align 4, !tbaa !8
  %i.ah = icmp sgt i32 %i.w, 1
  br i1 %i.ah, label %.lr.ph.preheader, label %.loopexit826

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ai = add nsw i32 %i.w, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.0420 = phi i32 [ %i.am, %bb.d ], [ %i.v, %.lr.ph.preheader ] ; 2 uses
  %.4261419 = phi i32 [ %i.at, %bb.d ], [ %i.ai, %.lr.ph.preheader ] ; 5 uses
  %i.aj = zext nneg i32 %.4261419 to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9   ; 2 uses
  %i.am = zext i8 %i.al to i32                    ; 4 uses
  %.not290 = icmp samesign ult i32 %.0420, %i.am
  br i1 %.not290, label %.preheader338.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.an = shl nuw nsw i32 %.0420, 8
  %i.ao = or disjoint i32 %i.an, %i.am
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !8
  %i.at = add nsw i32 %.4261419, -1
  %i.au = icmp sgt i32 %.4261419, 0
  br i1 %i.au, label %.lr.ph, label %.loopexit826, !llvm.loop !16

.loopexit826:                                     ; preds = %bb.c, %.preheader338.loopexit, %bb.a, %bb.d, %.preheader340.preheader
  %.1247.ph = phi i32 [ %.0246426105, %bb.a ], [ %4, %.preheader340.preheader ], [ %i.ae, %bb.d ], [ %i.ae, %.preheader338.loopexit ], [ %i.ae, %bb.c ]
  br label %bb.e

.loopexit337:                                     ; preds = %.lr.ph431.prol.loopexit, %.lr.ph431, %bb.e
  %.7264.lcssa = phi i32 [ %i.be, %bb.e ], [ %.lcssa337.unr, %.lr.ph431.prol.loopexit ], [ %i.bs, %.lr.ph431 ]
  %.1252.lcssa = phi i32 [ %.0251434, %bb.e ], [ %.lcssa338.unr, %.lr.ph431.prol.loopexit ], [ %i.bq, %.lr.ph431 ]
  %indvars.iv.next577.a = add nuw nsw i64 %indvars.iv576.a, 1
  %exitcond584.not = icmp eq i64 %indvars.iv.next582, 256
  br i1 %exitcond584.not, label %bb.f, label %bb.e, !llvm.loop !17

bb.e:                                             ; preds = %.loopexit826, %.loopexit337
  %indvars.iv581 = phi i64 [ 0, %.loopexit826 ], [ %indvars.iv.next582, %.loopexit337 ] ; 9 uses
  %indvars.iv576.a = phi i64 [ 1, %.loopexit826 ], [ %indvars.iv.next577.a, %.loopexit337 ] ; 5 uses
  %.0251434 = phi i32 [ 0, %.loopexit826 ], [ %.1252.lcssa, %.loopexit337 ] ; 4 uses
  %.6263433 = phi i32 [ 0, %.loopexit826 ], [ %.7264.lcssa, %.loopexit337 ] ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv581 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !8
  %i.ax = add nsw i32 %i.aw, %.6263433
  %i.ay = add nsw i32 %.0251434, %.6263433
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !8
  %i.az = shl i64 %indvars.iv581, 8
  %i.ba = and i64 %i.az, 4294967040
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ba
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv581
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !8
  %i.be = add nsw i32 %i.ax, %i.bd                ; 3 uses
  %indvars.iv.next582 = add nuw nsw i64 %indvars.iv581, 1 ; 2 uses
  %i.bf = icmp samesign ult i64 %indvars.iv581, 255
  br i1 %i.bf, label %.lr.ph431.preheader, label %.loopexit337

.lr.ph431.preheader:                              ; preds = %bb.e
  %.idx804.a = shl nuw nsw i64 %indvars.iv581, 10
  %invariant.gep = getelementptr inbounds nuw i8, ptr %3, i64 %.idx804.a ; 3 uses
  %invariant.gep916.a = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv581 ; 3 uses
  %6 = trunc i64 %indvars.iv581 to i1
  br i1 %6, label %.lr.ph431.prol.loopexit, label %.lr.ph431.prol

.lr.ph431.prol:                                   ; preds = %.lr.ph431.preheader
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv576.a ; 2 uses
  %i.bg = load i32, ptr %gep.prol, align 4, !tbaa !8
  %i.bh = add nsw i32 %i.bg, %.0251434            ; 3 uses
  store i32 %i.bh, ptr %gep.prol, align 4, !tbaa !8
  %.idx805.prol = shl nuw nsw i64 %indvars.iv576.a, 10
  %gep917.prol = getelementptr inbounds nuw i8, ptr %invariant.gep916.a, i64 %.idx805.prol
  %i.bi = load i32, ptr %gep917.prol, align 4, !tbaa !8
  %i.bj = add nsw i32 %i.bi, %i.be                ; 2 uses
  %indvars.iv.next579.prol = add nuw nsw i64 %indvars.iv576.a, 1
  br label %.lr.ph431.prol.loopexit

.lr.ph431.prol.loopexit:                          ; preds = %.lr.ph431.prol, %.lr.ph431.preheader
  %.lcssa338.unr = phi i32 [ poison, %.lr.ph431.preheader ], [ %i.bh, %.lr.ph431.prol ]
  %.lcssa337.unr = phi i32 [ poison, %.lr.ph431.preheader ], [ %i.bj, %.lr.ph431.prol ]
  %indvars.iv578.unr = phi i64 [ %indvars.iv576.a, %.lr.ph431.preheader ], [ %indvars.iv.next579.prol, %.lr.ph431.prol ]
  %.1252429.unr = phi i32 [ %.0251434, %.lr.ph431.preheader ], [ %i.bh, %.lr.ph431.prol ]
  %.7264428.unr = phi i32 [ %i.be, %.lr.ph431.preheader ], [ %i.bj, %.lr.ph431.prol ]
  %i.bk = icmp eq i64 %indvars.iv581, 254
  br i1 %i.bk, label %.loopexit337, label %.lr.ph431

.lr.ph431:                                        ; preds = %.lr.ph431.prol.loopexit, %.lr.ph431
  %indvars.iv578 = phi i64 [ %indvars.iv.next579.1, %.lr.ph431 ], [ %indvars.iv578.unr, %.lr.ph431.prol.loopexit ] ; 4 uses
  %.1252429 = phi i32 [ %i.bq, %.lr.ph431 ], [ %.1252429.unr, %.lr.ph431.prol.loopexit ]
  %.7264428 = phi i32 [ %i.bs, %.lr.ph431 ], [ %.7264428.unr, %.lr.ph431.prol.loopexit ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv578 ; 2 uses
  %i.bl = load i32, ptr %gep, align 4, !tbaa !8
  %i.bm = add nsw i32 %i.bl, %.1252429            ; 2 uses
  store i32 %i.bm, ptr %gep, align 4, !tbaa !8
  %.idx805 = shl nuw nsw i64 %indvars.iv578, 10
  %gep917.a = getelementptr inbounds nuw i8, ptr %invariant.gep916.a, i64 %.idx805
  %i.bn = load i32, ptr %gep917.a, align 4, !tbaa !8
  %i.bo = add nsw i32 %i.bn, %.7264428
  %indvars.iv.next579 = add nuw nsw i64 %indvars.iv578, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next579 ; 2 uses
  %i.bp = load i32, ptr %gep.1, align 4, !tbaa !8
  %i.bq = add nsw i32 %i.bp, %i.bm                ; 3 uses
  store i32 %i.bq, ptr %gep.1, align 4, !tbaa !8
  %.idx805.1 = shl nuw nsw i64 %indvars.iv.next579, 10
  %gep917.1 = getelementptr inbounds nuw i8, ptr %invariant.gep916.a, i64 %.idx805.1
  %i.br = load i32, ptr %gep917.1, align 4, !tbaa !8
  %i.bs = add nsw i32 %i.br, %i.bo                ; 2 uses
  %indvars.iv.next579.1 = add nuw nsw i64 %indvars.iv578, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next579.1, 256
  br i1 %exitcond.not.1, label %.loopexit337, label %.lr.ph431, !llvm.loop !18

bb.f:                                             ; preds = %.loopexit337
  %i.bt = sub nsw i32 %4, %.1247.ph               ; 21 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.bv = zext nneg i32 %4 to i64                 ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bv
  %i.bx = zext nneg i32 %i.bt to i64              ; 4 uses
  %i.by = sub nsw i64 0, %i.bx
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.by ; 14 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bx ; 27 uses
  %.not479 = icmp eq i32 %i.bt, 1
  br i1 %.not479, label %.preheader336.lr.ph, label %.lr.ph437.preheader

.lr.ph437.preheader:                              ; preds = %bb.g
  %i.cb = add nsw i32 %i.bt, -2                   ; 3 uses
  %i.cc = zext i32 %i.cb to i64                   ; 3 uses
  %7 = trunc i32 %i.bt to i1
  br i1 %7, label %.lr.ph437.prol.loopexit, label %.lr.ph437.prol

.lr.ph437.prol:                                   ; preds = %.lr.ph437.preheader
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !8
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds i8, ptr %0, i64 %i.cf ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !9
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr i8, ptr %i.cg, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !9
  %i.cl = zext i8 %i.ck to i64
  %.idx288.prol = shl nuw nsw i64 %i.ci, 10
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 %.idx288.prol
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.cl ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !8
  %i.cp = add nsw i32 %i.co, -1                   ; 2 uses
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !8
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cq
  store i32 %i.cb, ptr %i.cr, align 4, !tbaa !8
  %indvars.iv.next586.prol = add nsw i64 %i.cc, -1
  br label %.lr.ph437.prol.loopexit

.lr.ph437.prol.loopexit:                          ; preds = %.lr.ph437.prol, %.lr.ph437.preheader
  %indvars.iv585.unr = phi i64 [ %i.cc, %.lr.ph437.preheader ], [ %indvars.iv.next586.prol, %.lr.ph437.prol ]
  %i.cs = icmp eq i32 %i.cb, 0
  br i1 %i.cs, label %.preheader336.lr.ph, label %.lr.ph437

.lr.ph437:                                        ; preds = %.lr.ph437.prol.loopexit, %.lr.ph437
  %indvars.iv585 = phi i64 [ %indvars.iv.next586.1, %.lr.ph437 ], [ %indvars.iv585.unr, %.lr.ph437.prol.loopexit ] ; 4 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv585
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !8
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %0, i64 %i.cv ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !9
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr i8, ptr %i.cw, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !9
  %i.db = zext i8 %i.da to i64
  %.idx288 = shl nuw nsw i64 %i.cy, 10
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 %.idx288
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.db ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !8
  %i.df = add nsw i32 %i.de, -1                   ; 2 uses
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !8
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dg
  %i.di = trunc nuw nsw i64 %indvars.iv585 to i32
  store i32 %i.di, ptr %i.dh, align 4, !tbaa !8
  %indvars.iv.next586 = add nsw i64 %indvars.iv585, -1 ; 3 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next586
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !8
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds i8, ptr %0, i64 %i.dl ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !9
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr i8, ptr %i.dm, i64 1
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !9
  %i.dr = zext i8 %i.dq to i64
  %.idx288.1 = shl nuw nsw i64 %i.do, 10
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 %.idx288.1
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dr ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !8
  %i.dv = add nsw i32 %i.du, -1                   ; 2 uses
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !8
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dw
  %i.dy = trunc nuw nsw i64 %indvars.iv.next586 to i32
  store i32 %i.dy, ptr %i.dx, align 4, !tbaa !8
  %indvars.iv.next586.1 = add nsw i64 %indvars.iv585, -2
  %.not920.1 = icmp eq i64 %indvars.iv.next586, 0
  br i1 %.not920.1, label %.preheader336.lr.ph, label %.lr.ph437, !llvm.loop !19

.preheader336.lr.ph:                              ; preds = %.lr.ph437.prol.loopexit, %.lr.ph437, %bb.g
  %i.dz = add nsw i32 %i.bt, -1                   ; 5 uses
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !8
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds i8, ptr %0, i64 %i.ed ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !9
  %i.eg = zext i8 %i.ef to i64
  %i.eh = getelementptr i8, ptr %i.ee, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !9
  %i.ej = zext i8 %i.ei to i64
  %.idx = shl nuw nsw i64 %i.eg, 10
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.ej ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !8
  %i.en = add nsw i32 %i.em, -1                   ; 2 uses
  store i32 %i.en, ptr %i.el, align 4, !tbaa !8
  %i.eo = sext i32 %i.en to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %1, i64 %i.eo
  store i32 %i.dz, ptr %i.ep, align 4, !tbaa !8
  %i.eq = shl nuw nsw i32 %i.bt, 1
  %i.er = sub nsw i32 %4, %i.eq                   ; 6 uses
  %invariant.op = add nsw i64 %i.bv, -2
  %i.es = icmp slt i32 %i.er, 1024
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv
  br label %.lr.ph440

.lr.ph440:                                        ; preds = %._crit_edge441, %.preheader336.lr.ph
  %.6444 = phi i32 [ 254, %.preheader336.lr.ph ], [ %i.ox, %._crit_edge441 ] ; 3 uses
  %.2253443 = phi i32 [ %i.bt, %.preheader336.lr.ph ], [ %i.ez, %._crit_edge441 ]
  %i.ev = shl i32 %.6444, 8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph440, %sssort.exit
  %.2439 = phi i32 [ 255, %.lr.ph440 ], [ %i.ov, %sssort.exit ] ; 2 uses
  %.3254438 = phi i32 [ %.2253443, %.lr.ph440 ], [ %i.ez, %sssort.exit ] ; 2 uses
  %i.ew = or i32 %.2439, %i.ev
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !8  ; 5 uses
  %i.fa = sub nsw i32 %.3254438, %i.ez
  %i.fb = icmp sgt i32 %i.fa, 1
  br i1 %i.fb, label %bb.i, label %sssort.exit

bb.i:                                             ; preds = %bb.h
  %i.fc = sext i32 %i.ez to i64
  %.idx319 = shl nsw i64 %i.fc, 2
  %i.fd = getelementptr inbounds i8, ptr %1, i64 %.idx319 ; 4 uses
  %i.fe = sext i32 %.3254438 to i64
  %.idx320 = shl nsw i64 %i.fe, 2
  %i.ff = getelementptr inbounds i8, ptr %1, i64 %.idx320 ; 10 uses
  %i.fg = load i32, ptr %i.fd, align 4, !tbaa !8
  %.not318 = icmp eq i32 %i.fg, %i.dz             ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 4 ; 3 uses
  %spec.select.i = select i1 %.not318, ptr %i.fh, ptr %i.fd ; 8 uses
  br i1 %i.es, label %bb.j, label %._crit_edge208.i

._crit_edge208.i:                                 ; preds = %bb.i
  %.pre209.i = ptrtoint ptr %spec.select.i to i64
  br label %bb.aa

bb.j:                                             ; preds = %bb.i
  %i.fi = ptrtoint ptr %i.ff to i64
  %i.fj = ptrtoint ptr %spec.select.i to i64      ; 4 uses
  %i.fk = sub i64 %i.fi, %i.fj                    ; 5 uses
  %i.fl = lshr exact i64 %i.fk, 2                 ; 2 uses
  %i.fm = trunc i64 %i.fl to i32                  ; 10 uses
  %i.fn = icmp slt i32 %i.er, %i.fm
  br i1 %i.fn, label %bb.k, label %bb.aa

bb.k:                                             ; preds = %bb.j
  %i.fo = icmp sgt i32 %i.fm, 1048575
  br i1 %i.fo, label %ss_isqrt.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.fp = icmp ugt i32 %i.fm, 65535
  br i1 %i.fp, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.fq = icmp ugt i32 %i.fm, -2147483645
  br i1 %i.fq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fr = lshr i64 %i.fk, 26
  %i.fs = and i64 %i.fr, 255
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !8
  %i.fv = add nsw i32 %i.fu, 24
  br label %bb.s

bb.o:                                             ; preds = %bb.m
  %i.fw = lshr i64 %i.fk, 18
  %i.fx = and i64 %i.fw, 65535
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !8
  %i.ga = add nsw i32 %i.fz, 16
  br label %bb.s

bb.p:                                             ; preds = %bb.l
  %.not.i.i = icmp samesign ult i32 %i.fm, 256
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gb = lshr i64 %i.fk, 10
  %i.gc = and i64 %i.gb, 16777215
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !8
  %i.gf = add nsw i32 %i.ge, 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.gg = and i64 %i.fl, 255
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.gg
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o, %bb.n
  %i.gj = phi i32 [ %i.ga, %bb.o ], [ %i.fv, %bb.n ], [ %i.gf, %bb.q ], [ %i.gi, %bb.r ] ; 7 uses
  %i.gk = icmp sgt i32 %i.gj, 15
  br i1 %i.gk, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.gl = and i32 %i.gj, 2147483646
  %i.gm = add nsw i32 %i.gl, -6
  %i.gn = ashr i32 %i.fm, %i.gm
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds [4 x i8], ptr @sqq_table, i64 %i.go
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !8
  %i.gr = lshr i32 %i.gj, 1
  %i.gs = add nsw i32 %i.gr, -7
  %i.gt = shl i32 %i.gq, %i.gs                    ; 3 uses
  %i.gu = icmp samesign ugt i32 %i.gj, 23
  br i1 %i.gu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gv = add nsw i32 %i.gt, 1
  %i.gw = sdiv i32 %i.fm, %i.gt
  %i.gx = add nsw i32 %i.gv, %i.gw
  %i.gy = ashr i32 %i.gx, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0.i.i = phi i32 [ %i.gy, %bb.u ], [ %i.gt, %bb.t ] ; 2 uses
  %i.gz = add nsw i32 %.0.i.i, 1
  %i.ha = sdiv i32 %i.fm, %.0.i.i
  %i.hb = add nsw i32 %i.gz, %i.ha
  %i.hc = ashr i32 %i.hb, 1
  br label %bb.z

bb.w:                                             ; preds = %bb.s
  %i.hd = icmp sgt i32 %i.gj, 7
  br i1 %i.hd, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.he = and i32 %i.gj, 2147483646
  %i.hf = add nsw i32 %i.he, -6
  %i.hg = ashr i32 %i.fm, %i.hf
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr @sqq_table, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !8
  %i.hk = lshr i32 %i.gj, 1
  %i.hl = sub nuw nsw i32 7, %i.hk
  %i.hm = ashr i32 %i.hj, %i.hl
  %i.hn = add nsw i32 %i.hm, 1
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %sext.i = shl i64 %i.fk, 30
  %i.ho = ashr i64 %sext.i, 32
  %i.hp = getelementptr inbounds [4 x i8], ptr @sqq_table, i64 %i.ho
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !8
  %i.hr = ashr i32 %i.hq, 4
  br label %ss_isqrt.exit.i

bb.z:                                             ; preds = %bb.x, %bb.v
  %.1.i.i = phi i32 [ %i.hc, %bb.v ], [ %i.hn, %bb.x ] ; 3 uses
  %i.hs = mul nsw i32 %.1.i.i, %.1.i.i
  %i.ht = icmp sgt i32 %i.hs, %i.fm
  %i.hu = sext i1 %i.ht to i32
  %i.hv = add nsw i32 %.1.i.i, %i.hu
  br label %ss_isqrt.exit.i

ss_isqrt.exit.i:                                  ; preds = %bb.z, %bb.y
  %.032.i.i = phi i32 [ %i.hr, %bb.y ], [ %i.hv, %bb.z ] ; 2 uses
  %i.hw = icmp slt i32 %i.er, %.032.i.i
  br i1 %i.hw, label %ss_isqrt.exit.thread.i, label %bb.aa

ss_isqrt.exit.thread.i:                           ; preds = %ss_isqrt.exit.i, %bb.k
  %.032.i131.i = phi i32 [ %.032.i.i, %ss_isqrt.exit.i ], [ 1024, %bb.k ] ; 2 uses
  %spec.store.select.i = tail call i32 @llvm.smin.i32(i32 %.032.i131.i, i32 1024) ; 2 uses
  %i.hx = sext i32 %spec.store.select.i to i64
  %i.hy = sub nsw i64 0, %i.hx
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.hy ; 2 uses
  %i.ia = icmp eq i32 %.032.i131.i, 0
  br label %bb.aa

bb.aa:                                            ; preds = %ss_isqrt.exit.thread.i, %ss_isqrt.exit.i, %bb.j, %._crit_edge208.i
  %.pre-phi.i = phi i64 [ %.pre209.i, %._crit_edge208.i ], [ %i.fj, %bb.j ], [ %i.fj, %ss_isqrt.exit.i ], [ %i.fj, %ss_isqrt.exit.thread.i ] ; 2 uses
  %.0111.i = phi i32 [ %i.er, %._crit_edge208.i ], [ %i.er, %bb.j ], [ %i.er, %ss_isqrt.exit.i ], [ %spec.store.select.i, %ss_isqrt.exit.thread.i ] ; 3 uses
  %.0110.i = phi ptr [ %i.ca, %._crit_edge208.i ], [ %i.ca, %bb.j ], [ %i.ca, %ss_isqrt.exit.i ], [ %i.hz, %ss_isqrt.exit.thread.i ] ; 2 uses
  %.0105.i = phi ptr [ %i.ff, %._crit_edge208.i ], [ %i.ff, %bb.j ], [ %i.ff, %ss_isqrt.exit.i ], [ %i.hz, %ss_isqrt.exit.thread.i ] ; 6 uses
  %.099.i = phi i1 [ true, %._crit_edge208.i ], [ true, %bb.j ], [ true, %ss_isqrt.exit.i ], [ %i.ia, %ss_isqrt.exit.thread.i ]
  %i.ib = ptrtoint ptr %.0105.i to i64            ; 2 uses
  %i.ic = sub i64 %i.ib, %.pre-phi.i
  %i.id = icmp sgt i64 %i.ic, 4096
  br i1 %i.id, label %.lr.ph161.i, label %._crit_edge162.thread.i

._crit_edge162.thread.i:                          ; preds = %bb.aa
  tail call fastcc void @ss_mintrosort(ptr noundef nonnull %0, ptr noundef nonnull %i.bz, ptr noundef %spec.select.i, ptr noundef %.0105.i)
  br label %._crit_edge170.i

.lr.ph161.i:                                      ; preds = %bb.aa
  %i.ie = ptrtoint ptr %i.ff to i64
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.i, %.lr.ph161.i
  %.0159.i = phi i32 [ 0, %.lr.ph161.i ], [ %i.iq, %._crit_edge.i ] ; 3 uses
  %.0107158.i = phi ptr [ %spec.select.i, %.lr.ph161.i ], [ %i.if, %._crit_edge.i ] ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.0107158.i, i64 4096 ; 6 uses
  tail call fastcc void @ss_mintrosort(ptr noundef nonnull %0, ptr noundef nonnull %i.bz, ptr noundef %.0107158.i, ptr noundef %i.if)
  %i.ig = ptrtoint ptr %i.if to i64               ; 2 uses
  %i.ih = sub i64 %i.ie, %i.ig
  %i.ii = lshr exact i64 %i.ih, 2
  %i.ij = trunc i64 %i.ii to i32                  ; 2 uses
  %.not120.i = icmp slt i32 %.0111.i, %i.ij
  %spec.select122.i = select i1 %.not120.i, ptr %i.if, ptr %.0110.i
  %spec.select123.i = tail call i32 @llvm.smax.i32(i32 %.0111.i, i32 %i.ij)
  %.not121154.i = trunc i32 %.0159.i to i1
  br i1 %.not121154.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ab, %.lr.ph.i
  %.0101157.i = phi i32 [ %i.io, %.lr.ph.i ], [ 1024, %bb.ab ] ; 2 uses
  %.0103156.i = phi i32 [ %i.ip, %.lr.ph.i ], [ %.0159.i, %bb.ab ]
  %.0106155.i = phi ptr [ %i.im, %.lr.ph.i ], [ %.0107158.i, %bb.ab ] ; 3 uses
  %i.ik = sext i32 %.0101157.i to i64             ; 2 uses
  %i.il = sub nsw i64 0, %i.ik
  %i.im = getelementptr inbounds [4 x i8], ptr %.0106155.i, i64 %i.il ; 2 uses
  %i.in = getelementptr inbounds [4 x i8], ptr %.0106155.i, i64 %i.ik
  tail call fastcc void @ss_swapmerge(ptr noundef nonnull %0, ptr noundef nonnull %i.bz, ptr noundef %i.im, ptr noundef %.0106155.i, ptr noundef %i.in, ptr noundef %spec.select122.i, i32 noundef %spec.select123.i)
  %i.io = shl i32 %.0101157.i, 1
  %i.ip = lshr i32 %.0103156.i, 1                 ; 2 uses
  %.not121.i = trunc i32 %i.ip to i1
  br i1 %.not121.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !20

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.ab
  %i.iq = add nuw nsw i32 %.0159.i, 1             ; 2 uses
  %i.ir = sub i64 %i.ib, %i.ig
  %i.is = icmp sgt i64 %i.ir, 4096
  br i1 %i.is, label %bb.ab, label %.lr.ph169.preheader.i, !llvm.loop !21

.lr.ph169.preheader.i:                            ; preds = %._crit_edge.i
  tail call fastcc void @ss_mintrosort(ptr noundef nonnull %0, ptr noundef nonnull %i.bz, ptr noundef %i.if, ptr noundef %.0105.i)
  br label %.lr.ph169.i

.lr.ph169.i:                                      ; preds = %bb.ad, %.lr.ph169.preheader.i
  %.1167.i = phi i32 [ %i.ix, %bb.ad ], [ %i.iq, %.lr.ph169.preheader.i ] ; 2 uses
  %.1102166.i = phi i32 [ %i.iw, %bb.ad ], [ 1024, %.lr.ph169.preheader.i ] ; 2 uses
  %.1108165.i = phi ptr [ %.2.i, %bb.ad ], [ %i.if, %.lr.ph169.preheader.i ] ; 3 uses
  %.not119.i = trunc i32 %.1167.i to i1
  br i1 %.not119.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph169.i
  %i.it = sext i32 %.1102166.i to i64
  %i.iu = sub nsw i64 0, %i.it
  %i.iv = getelementptr inbounds [4 x i8], ptr %.1108165.i, i64 %i.iu ; 2 uses
  tail call fastcc void @ss_swapmerge(ptr noundef nonnull %0, ptr noundef nonnull %i.bz, ptr noundef %i.iv, ptr noundef %.1108165.i, ptr noundef %.0105.i, ptr noundef %.0110.i, i32 noundef %.0111.i)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph169.i
  %.2.i = phi ptr [ %i.iv, %bb.ac ], [ %.1108165.i, %.lr.ph169.i ]
  %i.iw = shl i32 %.1102166.i, 1
  %i.ix = lshr i32 %.1167.i, 1                    ; 2 uses
  %.not117.i = icmp eq i32 %i.ix, 0
  br i1 %.not117.i, label %._crit_edge170.i, label %.lr.ph169.i, !llvm.loop !22

._crit_edge170.i:                                 ; preds = %bb.ad, %._crit_edge162.thread.i
  br i1 %.099.i, label %ss_inplacemerge.exit.i, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge170.i
  tail call fastcc void @ss_mintrosort(ptr noundef nonnull %0, ptr noundef nonnull %i.bz, ptr noundef %.0105.i, ptr noundef nonnull %i.ff)
  br label %bb.af

bb.af:                                            ; preds = %.loopexit.i.i, %bb.ae
  %.053.i.i = phi ptr [ %i.ff, %bb.ae ], [ %.3.i.i, %.loopexit.i.i ] ; 6 uses
  %.051.i.i = phi ptr [ %.0105.i, %bb.ae ], [ %.152.i.i, %.loopexit.i.i ] ; 13 uses
  %i.iy = getelementptr inbounds i8, ptr %.053.i.i, i64 -4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !8  ; 3 uses
  %i.ja = icmp slt i32 %i.iz, 0
  %i.jb = ptrtoint ptr %.051.i.i to i64           ; 3 uses
  %i.jc = sub i64 %i.jb, %.pre-phi.i
  %i.jd = lshr exact i64 %i.jc, 2
  %i.je = trunc i64 %i.jd to i32                  ; 2 uses
  %i.jf = icmp sgt i32 %i.je, 0
  br i1 %i.jf, label %.lr.ph.i.i, label %._crit_edge.thread.i.i

.lr.ph.i.i:                                       ; preds = %bb.af
  %.lobit.i.i = ashr i32 %i.iz, 31
  %.pn.in.i.i = xor i32 %.lobit.i.i, %i.iz
  %.pn.i.i = zext i32 %.pn.in.i.i to i64
  %.050.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.pn.i.i ; 2 uses
  %.050.val.i.i = load i32, ptr %.050.i.i, align 4, !tbaa !8 ; 2 uses
  %i.jg = getelementptr i8, ptr %.050.i.i, i64 4
  %.050.val61.i.i = load i32, ptr %i.jg, align 4, !tbaa !8 ; 2 uses
  %i.jh = sext i32 %.050.val.i.i to i64
  %i.ji = getelementptr inbounds i8, ptr %i.et, i64 %i.jh ; 2 uses
  %i.jj = sext i32 %.050.val61.i.i to i64
  %i.jk = getelementptr i8, ptr %0, i64 %i.jj
  %i.jl = getelementptr i8, ptr %i.jk, i64 2
  %i.jm = icmp slt i32 %.050.val.i.i, %.050.val61.i.i ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %ss_compare.exit.i.i, %.lr.ph.i.i
  %.04481.i.i = phi i32 [ -1, %.lr.ph.i.i ], [ %.1.i127.i, %ss_compare.exit.i.i ]
  %.04780.i.i = phi i32 [ %i.je, %.lr.ph.i.i ], [ %.146.i.i, %ss_compare.exit.i.i ] ; 2 uses
  %.04879.i.i = phi ptr [ %spec.select.i, %.lr.ph.i.i ], [ %.149.i.i, %ss_compare.exit.i.i ] ; 2 uses
  %.04582.i.i = lshr i32 %.04780.i.i, 1           ; 2 uses
  %i.jn = zext nneg i32 %.04582.i.i to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %.04879.i.i, i64 %i.jn ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !8  ; 2 uses
  %.lobit63.i.i = ashr i32 %i.jp, 31
  %i.jq = xor i32 %.lobit63.i.i, %i.jp
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.jr ; 2 uses
  %.val.i.i = load i32, ptr %i.js, align 4, !tbaa !8 ; 2 uses
  %i.jt = getelementptr i8, ptr %i.js, i64 4
  %.val60.i.i = load i32, ptr %i.jt, align 4, !tbaa !8 ; 2 uses
  %i.ju = sext i32 %.val.i.i to i64
  %i.jv = getelementptr inbounds i8, ptr %i.et, i64 %i.ju ; 2 uses
  %i.jw = sext i32 %.val60.i.i to i64
  %i.jx = getelementptr i8, ptr %0, i64 %i.jw
  %i.jy = getelementptr i8, ptr %i.jx, i64 2
  %i.jz = icmp slt i32 %.val.i.i, %.val60.i.i     ; 2 uses
  %or.cond6.i.i.i = select i1 %i.jz, i1 %i.jm, i1 false
  br i1 %or.cond6.i.i.i, label %.lr.ph.i.i.i, label %.critedge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ag, %bb.ah
  %.08.i.i.i = phi ptr [ %i.ke, %bb.ah ], [ %i.ji, %bb.ag ] ; 2 uses
  %.0257.i.i.i = phi ptr [ %i.kd, %bb.ah ], [ %i.jv, %bb.ag ] ; 2 uses
  %i.ka = load i8, ptr %.0257.i.i.i, align 1, !tbaa !9 ; 2 uses
  %i.kb = load i8, ptr %.08.i.i.i, align 1, !tbaa !9 ; 2 uses
  %i.kc = icmp eq i8 %i.ka, %i.kb
  br i1 %i.kc, label %bb.ah, label %.thread.i.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i.i
  %i.kd = getelementptr inbounds nuw i8, ptr %.0257.i.i.i, i64 1 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 1 ; 3 uses
  %i.kf = icmp ult ptr %i.kd, %i.jy               ; 2 uses
  %i.kg = icmp ult ptr %i.ke, %i.jl               ; 2 uses
  %or.cond.i.i.i = select i1 %i.kf, i1 %i.kg, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i, label %.critedge.i.i.i, !llvm.loop !23

.critedge.i.i.i:                                  ; preds = %bb.ah, %bb.ag
  %.025.lcssa.i.i.i = phi ptr [ %i.jv, %bb.ag ], [ %i.kd, %bb.ah ]
  %.0.lcssa.i.i.i = phi ptr [ %i.ji, %bb.ag ], [ %i.ke, %bb.ah ]
  %.lcssa5.i.i.i = phi i1 [ %i.jz, %bb.ag ], [ %i.kf, %bb.ah ]
  %.lcssa.i.i.i = phi i1 [ %i.jm, %bb.ag ], [ %i.kg, %bb.ah ] ; 2 uses
  br i1 %.lcssa5.i.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.critedge.i.i.i
  br i1 %.lcssa.i.i.i, label %..thread.i_crit_edge.i.i, label %ss_compare.exit.i.i

..thread.i_crit_edge.i.i:                         ; preds = %bb.ai
  %.pre.i.i = load i8, ptr %.025.lcssa.i.i.i, align 1, !tbaa !9
  %.pre.i = load i8, ptr %.0.lcssa.i.i.i, align 1, !tbaa !9
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i, %..thread.i_crit_edge.i.i
  %i.kh = phi i8 [ %.pre.i, %..thread.i_crit_edge.i.i ], [ %i.kb, %.lr.ph.i.i.i ]
  %i.ki = phi i8 [ %.pre.i.i, %..thread.i_crit_edge.i.i ], [ %i.ka, %.lr.ph.i.i.i ]
  %i.kj = zext i8 %i.ki to i32
  %i.kk = zext i8 %i.kh to i32
  %i.kl = sub nsw i32 %i.kj, %i.kk
  br label %ss_compare.exit.i.i

bb.aj:                                            ; preds = %.critedge.i.i.i
  %i.km = sext i1 %.lcssa.i.i.i to i32
  br label %ss_compare.exit.i.i

ss_compare.exit.i.i:                              ; preds = %bb.aj, %.thread.i.i.i, %bb.ai
  %i.kn = phi i32 [ %i.km, %bb.aj ], [ %i.kl, %.thread.i.i.i ], [ 1, %bb.ai ] ; 2 uses
  %i.ko = icmp slt i32 %i.kn, 0                   ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %i.kq = and i32 %.04780.i.i, 1
  %i.kr = xor i32 %i.kq, 1
  %.149.i.i = select i1 %i.ko, ptr %i.kp, ptr %.04879.i.i ; 6 uses
  %i.ks = select i1 %i.ko, i32 %i.kr, i32 0
  %.146.i.i = sub nsw i32 %.04582.i.i, %i.ks      ; 2 uses
  %.1.i127.i = select i1 %i.ko, i32 %.04481.i.i, i32 %i.kn ; 2 uses
  %i.kt = icmp sgt i32 %.146.i.i, 0
  br i1 %i.kt, label %bb.ag, label %._crit_edge.i.i, !llvm.loop !24

._crit_edge.i.i:                                  ; preds = %ss_compare.exit.i.i
  %i.ku = icmp ult ptr %.149.i.i, %.051.i.i
  br i1 %i.ku, label %bb.ak, label %bb.av

._crit_edge.thread.i.i:                           ; preds = %bb.af
  %i.kv = icmp ult ptr %spec.select.i, %.051.i.i
  br i1 %i.kv, label %.thread.i.i, label %bb.av

bb.ak:                                            ; preds = %._crit_edge.i.i
  %i.kw = icmp eq i32 %.1.i127.i, 0
  br i1 %i.kw, label %bb.al, label %.thread.i.i

bb.al:                                            ; preds = %bb.ak
  %i.kx = load i32, ptr %.149.i.i, align 4, !tbaa !8
  %i.ky = xor i32 %i.kx, -1
  store i32 %i.ky, ptr %.149.i.i, align 4, !tbaa !8
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.al, %bb.ak, %._crit_edge.thread.i.i
  %.048.lcssa113117.i.i = phi ptr [ %.149.i.i, %bb.ak ], [ %.149.i.i, %bb.al ], [ %spec.select.i, %._crit_edge.thread.i.i ] ; 4 uses
  %i.kz = ptrtoint ptr %.048.lcssa113117.i.i to i64
  %i.la = sub i64 %i.jb, %i.kz                    ; 2 uses
  %i.lb = lshr exact i64 %i.la, 2
  %i.lc = trunc i64 %i.lb to i32                  ; 2 uses
  %i.ld = ptrtoint ptr %.053.i.i to i64
  %i.le = sub i64 %i.ld, %i.jb
  %i.lf = lshr exact i64 %i.le, 2
  %i.lg = trunc i64 %i.lf to i32                  ; 2 uses
  %i.lh = icmp sgt i32 %i.lc, 0
  %i.li = icmp sgt i32 %i.lg, 0
  %i.lj = select i1 %i.lh, i1 %i.li, i1 false
  br i1 %i.lj, label %.lr.ph.i62.i.i, label %ss_rotate.exit.i.i

.lr.ph.i62.i.i:                                   ; preds = %.thread.i.i
  %i.lk = getelementptr inbounds i8, ptr %.051.i.i, i64 -4
  br label %bb.am

bb.am:                                            ; preds = %.loopexit.i.i.i, %.lr.ph.i62.i.i
  %.087.i.i.i = phi i32 [ %i.lg, %.lr.ph.i62.i.i ], [ %.3.i.i.i, %.loopexit.i.i.i ] ; 13 uses
  %.04886.i.i.i = phi i32 [ %i.lc, %.lr.ph.i62.i.i ], [ %.351.i.i.i, %.loopexit.i.i.i ] ; 6 uses
  %.06485.i.i.i = phi ptr [ %.053.i.i, %.lr.ph.i62.i.i ], [ %.165.i.i.i, %.loopexit.i.i.i ] ; 3 uses
  %.06684.i.i.i = phi ptr [ %.048.lcssa113117.i.i, %.lr.ph.i62.i.i ], [ %.167.i.i.i, %.loopexit.i.i.i ] ; 9 uses
  %i.ll = icmp eq i32 %.04886.i.i.i, %.087.i.i.i
  br i1 %i.ll, label %.lr.ph.i.i.i.i.preheader, label %bb.an

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.am
  %i.lm = icmp ne i32 %.087.i.i.i, 0
  %.neg = sext i1 %i.lm to i32
  %i.ln = add i32 %.087.i.i.i, %.neg              ; 2 uses
  %i.lo = zext i32 %i.ln to i64
  %i.lp = add nuw nsw i64 %i.lo, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.ln, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader306, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %.06684.i.i.i, i64 4
  %i.lq = icmp ne i32 %.087.i.i.i, 0
  %umin.neg = sext i1 %i.lq to i32
  %i.lr = add i32 %.087.i.i.i, %umin.neg
  %i.ls = zext i32 %i.lr to i64
  %i.lt = shl nuw nsw i64 %i.ls, 2                ; 2 uses
  %scevgep116 = getelementptr i8, ptr %scevgep, i64 %i.lt
  %scevgep117 = getelementptr i8, ptr %.051.i.i, i64 4
  %scevgep118 = getelementptr i8, ptr %scevgep117, i64 %i.lt
  %bound0 = icmp ult ptr %.06684.i.i.i, %scevgep118
  %bound1 = icmp ult ptr %.051.i.i, %scevgep116
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader306, label %vector.ph

end_hunk_0
begin_hunk_1_@sort_typeBstar:.preheader340.preheader
  %indvars.iv.next594 = add nsw i64 %indvars.iv593, -1 ; 2 uses
  %i.px = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next594
  %i.py = load i32, ptr %i.px, align 4, !tbaa !8  ; 3 uses
  %i.pz = icmp slt i32 %i.py, 0
  br i1 %i.pz, label %bb.ba, label %bb.bb, !llvm.loop !40

bb.bb:                                            ; preds = %bb.ba
  %i.qa = trunc nsw i64 %indvars.iv593 to i32
  %i.qb = zext nneg i32 %i.py to i64
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.qb
  store i32 %.11268, ptr %i.qc, align 4, !tbaa !8
  %i.qd = add nsw i32 %i.qa, -2
  %i.qe = icmp sgt i64 %indvars.iv593, 1
  br i1 %i.qe, label %.lr.ph448, label %.loopexit331, !llvm.loop !41

.loopexit331:                                     ; preds = %bb.bb, %.critedge4, %.critedge4.thread
  %.not.i.i292 = icmp samesign ult i32 %i.bt, 65536
  br i1 %.not.i.i292, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %.loopexit331
  %.not8.i.i = icmp samesign ult i32 %i.bt, 16777216
  br i1 %.not8.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.qf = lshr i32 %i.bt, 24
  %i.qg = zext nneg i32 %i.qf to i64
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.qg
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !8
  %i.qj = add nsw i32 %i.qi, 24
  br label %tr_ilg.exit.i

bb.be:                                            ; preds = %bb.bc
  %i.qk = lshr i32 %i.bt, 16
  %i.ql = zext nneg i32 %i.qk to i64
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.ql
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !8
  %i.qo = add nsw i32 %i.qn, 16
  br label %tr_ilg.exit.i

bb.bf:                                            ; preds = %.loopexit331
  %.not7.i.i = icmp samesign ult i32 %i.bt, 256
  br i1 %.not7.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.qp = lshr i32 %i.bt, 8
  %i.qq = zext nneg i32 %i.qp to i64
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.qq
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !8
  %i.qt = add nsw i32 %i.qs, 8
  br label %tr_ilg.exit.i

bb.bh:                                            ; preds = %bb.bf
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.bx
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !8
  br label %tr_ilg.exit.i

tr_ilg.exit.i:                                    ; preds = %bb.bh, %bb.bg, %bb.be, %bb.bd
  %i.qw = phi i32 [ %i.qo, %bb.be ], [ %i.qj, %bb.bd ], [ %i.qt, %bb.bg ], [ %i.qv, %bb.bh ]
  %i.qx = sub nsw i32 0, %i.bt                    ; 2 uses
  %i.qy = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.qz = icmp sgt i32 %i.qy, %i.qx
  br i1 %i.qz, label %.preheader169.lr.ph.i, label %trsort.exit

.preheader169.lr.ph.i:                            ; preds = %tr_ilg.exit.i
  %i.ra = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.rb = shl nsw i32 %i.qw, 1
  %i.rc = sdiv i32 %i.rb, 3
  %i.rd = ptrtoint ptr %i.ca to i64               ; 3 uses
  %i.re = ptrtoint ptr %1 to i64                  ; 14 uses
  %.idx159.i = shl nuw nsw i64 %i.bx, 2
  br label %.preheader169.i

.preheader169.i:                                  ; preds = %bb.ke, %.preheader169.lr.ph.i
  %i.rf = phi i32 [ %i.qy, %.preheader169.lr.ph.i ], [ %i.btn, %bb.ke ]
  %.047208.i = phi ptr [ %i.ra, %.preheader169.lr.ph.i ], [ %i.btm, %bb.ke ] ; 3 uses
  %.sroa.0.0207.i = phi i32 [ %i.rc, %.preheader169.lr.ph.i ], [ %.sroa.0.2141157.i, %bb.ke ]
  %.sroa.9.0206.i = phi i32 [ %i.bt, %.preheader169.lr.ph.i ], [ %.sroa.9.2139158.i, %bb.ke ]
  %i.rg = ptrtoint ptr %.047208.i to i64
  %i.rh = sub i64 %i.rg, %i.rd                    ; 2 uses
  %sext512.i.i = shl i64 %i.rh, 30
  %i.ri = ashr i64 %sext512.i.i, 32               ; 14 uses
  %i.rj = sub nsw i64 0, %i.ri
  br label %bb.bi

thread-pre-split.i:                               ; preds = %.thread.i, %bb.kb
  %.2148.i = phi i32 [ %i.bth, %.thread.i ], [ %.0.i, %bb.kb ]
  %.3146.i = phi i32 [ 0, %.thread.i ], [ %.3.i, %bb.kb ]
  %.146144.i = phi ptr [ %i.rx, %.thread.i ], [ %.146.i, %bb.kb ] ; 2 uses
  %.sroa.0.2142.i = phi i32 [ %.sroa.0.3.lcssa.i, %.thread.i ], [ %.sroa.0.2.i, %bb.kb ]
  %.sroa.9.2140.i = phi i32 [ %.sroa.9.3.i, %.thread.i ], [ %.sroa.9.2.i, %bb.kb ]
  %.pr.i = load i32, ptr %.146144.i, align 4, !tbaa !8
  br label %bb.bi

bb.bi:                                            ; preds = %thread-pre-split.i, %.preheader169.i
  %i.rk = phi i32 [ %.pr.i, %thread-pre-split.i ], [ %i.rf, %.preheader169.i ] ; 4 uses
  %.sroa.9.1.i = phi i32 [ %.sroa.9.2140.i, %thread-pre-split.i ], [ %.sroa.9.0206.i, %.preheader169.i ] ; 3 uses
  %.sroa.0.1.i = phi i32 [ %.sroa.0.2142.i, %thread-pre-split.i ], [ %.sroa.0.0207.i, %.preheader169.i ] ; 3 uses
  %.045.i = phi ptr [ %.146144.i, %thread-pre-split.i ], [ %1, %.preheader169.i ] ; 4 uses
  %.042.i = phi i32 [ %.3146.i, %thread-pre-split.i ], [ 0, %.preheader169.i ] ; 4 uses
  %.0.i = phi i32 [ %.2148.i, %thread-pre-split.i ], [ 0, %.preheader169.i ] ; 4 uses
  %i.rl = icmp slt i32 %i.rk, 0
  br i1 %i.rl, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.rm = sext i32 %i.rk to i64
  %i.rn = sub nsw i64 0, %i.rm
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %.045.i, i64 %i.rn
  %i.rp = add nsw i32 %.042.i, %i.rk
  br label %bb.kb

bb.bk:                                            ; preds = %bb.bi
  %.not.i293 = icmp eq i32 %.042.i, 0
  br i1 %.not.i293, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.rq = sext i32 %.042.i to i64
  %i.rr = getelementptr inbounds [4 x i8], ptr %.045.i, i64 %i.rq
  store i32 %.042.i, ptr %i.rr, align 4, !tbaa !8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.rs = zext nneg i32 %i.rk to i64
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.rs
  %i.ru = load i32, ptr %i.rt, align 4, !tbaa !8
  %i.rv = sext i32 %i.ru to i64
  %.idx.i = shl nsw i64 %i.rv, 2
  %i.rw = add nsw i64 %.idx.i, 4                  ; 2 uses
  %i.rx = getelementptr inbounds i8, ptr %1, i64 %i.rw ; 5 uses
  %i.ry = ptrtoint ptr %i.rx to i64               ; 2 uses
  %i.rz = ptrtoint ptr %.045.i to i64             ; 2 uses
  %i.sa = sub i64 %i.ry, %i.rz                    ; 6 uses
  %i.sb = icmp sgt i64 %i.sa, 4
  br i1 %i.sb, label %bb.bn, label %bb.ka

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.sc = lshr exact i64 %i.sa, 2                 ; 2 uses
  %i.sd = trunc i64 %i.sc to i32                  ; 3 uses
  %.not.i.i.i295 = icmp ult i32 %i.sd, 65536
  br i1 %.not.i.i.i295, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.not8.i.i.i = icmp ult i32 %i.sd, 16777216
  br i1 %.not8.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.se = lshr i64 %i.sa, 26
  %i.sf = and i64 %i.se, 255
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.sf
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !8
  %i.si = add nsw i32 %i.sh, 24
  br label %.outer.i.i.preheader

bb.bq:                                            ; preds = %bb.bo
  %i.sj = lshr i64 %i.sa, 18
  %i.sk = and i64 %i.sj, 65535
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.sk
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !8
  %i.sn = add nsw i32 %i.sm, 16
  br label %.outer.i.i.preheader

bb.br:                                            ; preds = %bb.bn
  %.not7.i.i.i = icmp samesign ult i32 %i.sd, 256
  br i1 %.not7.i.i.i, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.so = lshr i64 %i.sa, 10
  %i.sp = and i64 %i.so, 16777215
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.sp
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !8
  %i.ss = add nsw i32 %i.sr, 8
  br label %.outer.i.i.preheader

bb.bt:                                            ; preds = %bb.br
  %i.st = and i64 %i.sc, 255
  %i.su = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.st
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !8
  br label %.outer.i.i.preheader

.outer.i.i.preheader:                             ; preds = %bb.bt, %bb.bs, %bb.bq, %bb.bp
  %.0449.ph.i.i.ph = phi i32 [ %i.sn, %bb.bq ], [ %i.ss, %bb.bs ], [ %i.sv, %bb.bt ], [ %i.si, %bb.bp ]
  br label %.outer.i.i

.outer.i.i:                                       ; preds = %.outer.i.i.backedge, %.outer.i.i.preheader
  %.sroa.23.0.i = phi i32 [ 0, %.outer.i.i.preheader ], [ %.sroa.23.0.i.be, %.outer.i.i.backedge ] ; 44 uses
  %.sroa.9.3.i = phi i32 [ %.sroa.9.1.i, %.outer.i.i.preheader ], [ %.sroa.9.3.i.be, %.outer.i.i.backedge ] ; 41 uses
  %.sroa.0.3.i = phi i32 [ %.sroa.0.1.i, %.outer.i.i.preheader ], [ %.sroa.0.3.i.be, %.outer.i.i.backedge ] ; 41 uses
  %.0462.ph.i.i = phi ptr [ %.045.i, %.outer.i.i.preheader ], [ %.0462.ph.i.i.be, %.outer.i.i.backedge ] ; 103 uses
  %.0459.ph.i.i = phi ptr [ %i.rx, %.outer.i.i.preheader ], [ %.0459.ph.i.i.be, %.outer.i.i.backedge ] ; 53 uses
  %.0456.ph.i.i = phi ptr [ %.047208.i, %.outer.i.i.preheader ], [ %.0456.ph.i.i.be, %.outer.i.i.backedge ] ; 118 uses
  %.0449.ph.i.i = phi i32 [ %.0449.ph.i.i.ph, %.outer.i.i.preheader ], [ %.0449.ph.i.i.be, %.outer.i.i.backedge ] ; 4 uses
  %.0445.ph.i.i = phi i32 [ 0, %.outer.i.i.preheader ], [ %.0445.ph.i.i.be, %.outer.i.i.backedge ] ; 49 uses
  %.0.ph.i.i = phi i32 [ -1, %.outer.i.i.preheader ], [ %.0.ph.i.i.be, %.outer.i.i.backedge ] ; 51 uses
  %i.sw = icmp slt i32 %.0449.ph.i.i, 0
  br i1 %i.sw, label %._crit_edge.i.i305, label %.lr.ph640.i.i

.lr.ph640.i.i:                                    ; preds = %.outer.i.i
  %i.sx = ptrtoint ptr %.0459.ph.i.i to i64       ; 2 uses
  %i.sy = ptrtoint ptr %.0462.ph.i.i to i64       ; 2 uses
  %i.sz = sub i64 %i.sx, %i.sy                    ; 3 uses
  %i.ta = ashr exact i64 %i.sz, 2                 ; 8 uses
  %i.tb = icmp slt i64 %i.ta, 9
  %i.tc = trunc i64 %i.ta to i32                  ; 8 uses
  %8 = trunc i64 %i.ta to i1                      ; 2 uses
  %i.td = add nsw i32 %i.tc, -1                   ; 4 uses
  %i.te = sdiv i32 %i.td, 2
  %i.tf = sext i32 %i.te to i64
  %i.tg = getelementptr inbounds [4 x i8], ptr %.0462.ph.i.i, i64 %i.tf ; 2 uses
  %i.th = sext i32 %i.td to i64
  %i.ti = getelementptr inbounds [4 x i8], ptr %.0462.ph.i.i, i64 %i.th ; 2 uses
  %i.tj = getelementptr inbounds i8, ptr %.0459.ph.i.i, i64 -4 ; 12 uses
  %i.tk = icmp ult ptr %.0462.ph.i.i, %i.tj
  br i1 %i.tb, label %.lr.ph640.split.us.i.i, label %.lr.ph640.split.i.i

.lr.ph640.split.us.i.i:                           ; preds = %.lr.ph640.i.i
  %.02135.i.i.i = getelementptr inbounds nuw i8, ptr %.0462.ph.i.i, i64 4 ; 2 uses
  %i.tl = icmp ult ptr %.02135.i.i.i, %.0459.ph.i.i
  br i1 %i.tl, label %.lr.ph.i561.us.us.i.i, label %._crit_edge.thread.i.i299

.lr.ph.i561.us.us.i.i:                            ; preds = %.lr.ph640.split.us.i.i, %bb.bx
  %.02137.i.us.us.i.i = phi ptr [ %.021.i.us.us.i.i, %bb.bx ], [ %.02135.i.i.i, %.lr.ph640.split.us.i.i ] ; 3 uses
  %.pn36.i.us.us.i.i = phi ptr [ %.02137.i.us.us.i.i, %bb.bx ], [ %.0462.ph.i.i, %.lr.ph640.split.us.i.i ] ; 3 uses
  %i.tm = load i32, ptr %.02137.i.us.us.i.i, align 4, !tbaa !8 ; 2 uses
  %i.tn = sext i32 %i.tm to i64
  %i.to = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.tn ; 2 uses
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !8  ; 3 uses
  %i.tq = load i32, ptr %.pn36.i.us.us.i.i, align 4, !tbaa !8 ; 2 uses
  %i.tr = sext i32 %i.tq to i64
  %i.ts = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.tr
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !8  ; 3 uses
  %i.tu = icmp slt i32 %i.tp, %i.tt
  br i1 %i.tu, label %.preheader.i563.us.us.i.i, label %.critedge.thread.i.us.us.i.i

.preheader.i563.us.us.i.i:                        ; preds = %.lr.ph.i561.us.us.i.i, %.critedge.loopexit.i.us.us.i.i
  %i.tv = phi i32 [ %i.ub, %.critedge.loopexit.i.us.us.i.i ], [ %i.tq, %.lr.ph.i561.us.us.i.i ]
  %i.tw = phi i32 [ %i.ug, %.critedge.loopexit.i.us.us.i.i ], [ %i.tt, %.lr.ph.i561.us.us.i.i ]
  %i.tx = phi i32 [ %i.ud, %.critedge.loopexit.i.us.us.i.i ], [ %i.tp, %.lr.ph.i561.us.us.i.i ]
  %.032.i.us.us.i.i = phi ptr [ %i.ua, %.critedge.loopexit.i.us.us.i.i ], [ %.pn36.i.us.us.i.i, %.lr.ph.i561.us.us.i.i ]
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bv, %.preheader.i563.us.us.i.i
  %i.ty = phi i32 [ %i.ub, %bb.bv ], [ %i.tv, %.preheader.i563.us.us.i.i ]
  %.1.i564.us.us.i.i = phi ptr [ %i.ua, %bb.bv ], [ %.032.i.us.us.i.i, %.preheader.i563.us.us.i.i ] ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.1.i564.us.us.i.i, i64 4
  store i32 %i.ty, ptr %i.tz, align 4, !tbaa !8
  %i.ua = getelementptr inbounds i8, ptr %.1.i564.us.us.i.i, i64 -4 ; 6 uses
  %.not.i565.us.us.i.i = icmp ugt ptr %.0462.ph.i.i, %i.ua
  br i1 %.not.i565.us.us.i.i, label %.critedge.thread.i.us.us.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !8  ; 4 uses
  %i.uc = icmp slt i32 %i.ub, 0
  br i1 %i.uc, label %bb.bu, label %.critedge.loopexit.i.us.us.i.i, !llvm.loop !42

.critedge.loopexit.i.us.us.i.i:                   ; preds = %bb.bv
  %i.ud = load i32, ptr %i.to, align 4, !tbaa !8  ; 3 uses
  %i.ue = zext nneg i32 %i.ub to i64
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %.0456.ph.i.i, i64 %i.ue
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !8  ; 3 uses
  %i.uh = icmp slt i32 %i.ud, %i.ug
  br i1 %i.uh, label %.preheader.i563.us.us.i.i, label %.critedge.thread.i.us.us.i.i, !llvm.loop !42

.critedge.thread.i.us.us.i.i:                     ; preds = %.critedge.loopexit.i.us.us.i.i, %bb.bu, %.lr.ph.i561.us.us.i.i
  %i.ui = phi i32 [ %i.tx, %bb.bu ], [ %i.tp, %.lr.ph.i561.us.us.i.i ], [ %i.ud, %.critedge.loopexit.i.us.us.i.i ]
  %i.uj = phi i32 [ %i.tw, %bb.bu ], [ %i.tt, %.lr.ph.i561.us.us.i.i ], [ %i.ug, %.critedge.loopexit.i.us.us.i.i ]
  %.2.i562.us.us.i.i = phi ptr [ %i.ua, %bb.bu ], [ %.pn36.i.us.us.i.i, %.lr.ph.i561.us.us.i.i ], [ %i.ua, %.critedge.loopexit.i.us.us.i.i ] ; 3 uses
  %i.uk = icmp eq i32 %i.ui, %i.uj
  br i1 %i.uk, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.critedge.thread.i.us.us.i.i
  %i.ul = load i32, ptr %.2.i562.us.us.i.i, align 4, !tbaa !8
  %i.um = xor i32 %i.ul, -1
  store i32 %i.um, ptr %.2.i562.us.us.i.i, align 4, !tbaa !8
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.critedge.thread.i.us.us.i.i
  %i.un = getelementptr inbounds nuw i8, ptr %.2.i562.us.us.i.i, i64 4
  store i32 %i.tm, ptr %i.un, align 4, !tbaa !8
  %.021.i.us.us.i.i = getelementptr inbounds nuw i8, ptr %.02137.i.us.us.i.i, i64 4 ; 2 uses
  %i.uo = icmp ult ptr %.021.i.us.us.i.i, %.0459.ph.i.i
  br i1 %i.uo, label %.lr.ph.i561.us.us.i.i, label %._crit_edge.thread.i.i299, !llvm.loop !43

._crit_edge.i.i305:                               ; preds = %.outer.i.i
  switch i32 %.0449.ph.i.i, label %._crit_edge.thread.i.i299 [
    i32 -1, label %bb.by
    i32 -2, label %bb.eq
  ]

bb.by:                                            ; preds = %._crit_edge.i.i305
  %i.up = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.rj ; 7 uses
  %i.uq = ptrtoint ptr %.0459.ph.i.i to i64       ; 3 uses
  %i.ur = sub i64 %i.uq, %i.re
  %i.us = lshr exact i64 %i.ur, 2
  %i.ut = trunc i64 %i.us to i32
  %i.uu = add i32 %i.ut, -1                       ; 12 uses
  %i.uv = getelementptr inbounds i8, ptr %.0462.ph.i.i, i64 -4
  br label %bb.bz

bb.bz:                                            ; preds = %bb.ca, %bb.by
  %.0154.i61.i = phi ptr [ %i.uv, %bb.by ], [ %i.uw, %bb.ca ] ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.0154.i61.i, i64 4 ; 9 uses
  %i.ux = icmp ult ptr %i.uw, %.0459.ph.i.i
  br i1 %i.ux, label %bb.ca, label %.critedge2.i62.i

bb.ca:                                            ; preds = %bb.bz
  %i.uy = load i32, ptr %i.uw, align 4, !tbaa !8
  %i.uz = sext i32 %i.uy to i64
  %i.va = getelementptr inbounds [4 x i8], ptr %i.up, i64 %i.uz
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !8  ; 2 uses
  %i.vc = icmp eq i32 %i.vb, %i.uu
  br i1 %i.vc, label %bb.bz, label %.critedge.i115.i, !llvm.loop !44

.critedge.i115.i:                                 ; preds = %bb.ca
  %i.vd = icmp slt i32 %i.vb, %i.uu
  br i1 %i.vd, label %.preheader206.i116.i, label %.critedge2.i62.i

.preheader206.i116.i:                             ; preds = %.critedge.i115.i
  %i.ve = getelementptr inbounds nuw i8, ptr %.0154.i61.i, i64 8 ; 3 uses
  %i.vf = icmp ult ptr %i.ve, %.0459.ph.i.i
  br i1 %i.vf, label %.lr.ph.i117.i, label %.critedge2.i62.i

.lr.ph.i117.i:                                    ; preds = %.preheader206.i116.i, %bb.cd
  %i.vg = phi ptr [ %i.vo, %bb.cd ], [ %i.ve, %.preheader206.i116.i ] ; 4 uses
  %.0159217.i118.i = phi ptr [ %.1160.i120.i, %bb.cd ], [ %i.uw, %.preheader206.i116.i ] ; 5 uses
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !8  ; 2 uses
  %i.vi = sext i32 %i.vh to i64
  %i.vj = getelementptr inbounds [4 x i8], ptr %i.up, i64 %i.vi
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !8  ; 2 uses
  %.not.i119.i = icmp sgt i32 %i.vk, %i.uu
  br i1 %.not.i119.i, label %.critedge2.i62.i, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.i117.i
  %i.vl = icmp eq i32 %i.vk, %i.uu
  br i1 %i.vl, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.vm = load i32, ptr %.0159217.i118.i, align 4, !tbaa !8
  store i32 %i.vm, ptr %i.vg, align 4, !tbaa !8
  store i32 %i.vh, ptr %.0159217.i118.i, align 4, !tbaa !8
  %i.vn = getelementptr inbounds nuw i8, ptr %.0159217.i118.i, i64 4
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.1160.i120.i = phi ptr [ %i.vn, %bb.cc ], [ %.0159217.i118.i, %bb.cb ] ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vg, i64 4 ; 3 uses
  %i.vp = icmp ult ptr %i.vo, %.0459.ph.i.i
  br i1 %i.vp, label %.lr.ph.i117.i, label %.critedge2.i62.i, !llvm.loop !45

.critedge2.i62.i:                                 ; preds = %bb.bz, %bb.cd, %.lr.ph.i117.i, %.preheader206.i116.i, %.critedge.i115.i
  %.2161.i63.i = phi ptr [ %i.uw, %.critedge.i115.i ], [ %.0159217.i118.i, %.lr.ph.i117.i ], [ %i.uw, %.preheader206.i116.i ], [ %.1160.i120.i, %bb.cd ], [ %i.uw, %bb.bz ] ; 2 uses
  %.2156.i64.i = phi ptr [ %i.uw, %.critedge.i115.i ], [ %i.vg, %.lr.ph.i117.i ], [ %i.ve, %.preheader206.i116.i ], [ %i.vo, %bb.cd ], [ %i.uw, %bb.bz ] ; 6 uses
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cf, %.critedge2.i62.i
  %.0149.i65.i = phi ptr [ %.0459.ph.i.i, %.critedge2.i62.i ], [ %i.vq, %bb.cf ] ; 2 uses
  %i.vq = getelementptr inbounds i8, ptr %.0149.i65.i, i64 -4 ; 9 uses
  %i.vr = icmp ult ptr %.2156.i64.i, %i.vq
  br i1 %i.vr, label %bb.cf, label %.critedge6.i66.i

bb.cf:                                            ; preds = %bb.ce
  %i.vs = load i32, ptr %i.vq, align 4, !tbaa !8
  %i.vt = sext i32 %i.vs to i64
  %i.vu = getelementptr inbounds [4 x i8], ptr %i.up, i64 %i.vt
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !8  ; 2 uses
  %i.vw = icmp eq i32 %i.vv, %i.uu
  br i1 %i.vw, label %bb.ce, label %.critedge4.i109.i, !llvm.loop !46

.critedge4.i109.i:                                ; preds = %bb.cf
  %i.vx = icmp sgt i32 %i.vv, %i.uu
  br i1 %i.vx, label %.preheader.i110.i, label %.critedge6.i66.i

.preheader.i110.i:                                ; preds = %.critedge4.i109.i
  %i.vy = getelementptr inbounds i8, ptr %.0149.i65.i, i64 -8 ; 3 uses
  %i.vz = icmp ult ptr %.2156.i64.i, %i.vy
  br i1 %i.vz, label %.lr.ph223.i111.i, label %.critedge6.i66.i

.lr.ph223.i111.i:                                 ; preds = %.preheader.i110.i, %bb.ci
  %i.wa = phi ptr [ %i.wi, %bb.ci ], [ %i.vy, %.preheader.i110.i ] ; 4 uses
  %.0143222.i112.i = phi ptr [ %.1144.i114.i, %bb.ci ], [ %i.vq, %.preheader.i110.i ] ; 5 uses
  %i.wb = load i32, ptr %i.wa, align 4, !tbaa !8  ; 2 uses
  %i.wc = sext i32 %i.wb to i64
  %i.wd = getelementptr inbounds [4 x i8], ptr %i.up, i64 %i.wc
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !8  ; 2 uses
  %.not197.i113.i = icmp slt i32 %i.we, %i.uu
  br i1 %.not197.i113.i, label %.critedge6.i66.i, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph223.i111.i
  %i.wf = icmp eq i32 %i.we, %i.uu
  br i1 %i.wf, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.wg = load i32, ptr %.0143222.i112.i, align 4, !tbaa !8
  store i32 %i.wg, ptr %i.wa, align 4, !tbaa !8
  store i32 %i.wb, ptr %.0143222.i112.i, align 4, !tbaa !8
  %i.wh = getelementptr inbounds i8, ptr %.0143222.i112.i, i64 -4
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.1144.i114.i = phi ptr [ %i.wh, %bb.ch ], [ %.0143222.i112.i, %bb.cg ] ; 2 uses
  %i.wi = getelementptr inbounds i8, ptr %i.wa, i64 -4 ; 3 uses
  %i.wj = icmp ult ptr %.2156.i64.i, %i.wi
  br i1 %i.wj, label %.lr.ph223.i111.i, label %.critedge6.i66.i, !llvm.loop !47

.critedge6.i66.i:                                 ; preds = %bb.ce, %bb.ci, %.lr.ph223.i111.i, %.preheader.i110.i, %.critedge4.i109.i
end_hunk_1
begin_hunk_2_@sort_typeBstar:.preheader340.preheader
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %.0456.ph.i.i, i64 %i.ann
  %i.anr = load i32, ptr %i.anq, align 4, !tbaa !8
  %.not517.i.i = icmp eq i32 %i.anp, %i.anr
  br i1 %.not517.i.i, label %tr_ilg.exit558.i.i, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.ans = ptrtoint ptr %i.ank to i64
  %i.ant = ptrtoint ptr %.1463.i.i to i64
  %i.anu = sub i64 %i.ans, %i.ant
  %i.anv = lshr exact i64 %i.anu, 2
  %i.anw = trunc i64 %i.anv to i32
  %i.anx = add i32 %i.anw, 1                      ; 7 uses
  %.not.i555.i.i = icmp ult i32 %i.anx, 65536
  br i1 %.not.i555.i.i, label %bb.fs, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %.not8.i556.i.i = icmp ult i32 %i.anx, 16777216
  br i1 %.not8.i556.i.i, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.any = lshr i32 %i.anx, 24
  %i.anz = zext nneg i32 %i.any to i64
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.anz
  %i.aob = load i32, ptr %i.aoa, align 4, !tbaa !8
  %i.aoc = add nsw i32 %i.aob, 24
  br label %tr_ilg.exit558.i.i

bb.fr:                                            ; preds = %bb.fp
  %i.aod = lshr i32 %i.anx, 16
  %i.aoe = zext nneg i32 %i.aod to i64
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.aoe
  %i.aog = load i32, ptr %i.aof, align 4, !tbaa !8
  %i.aoh = add nsw i32 %i.aog, 16
  br label %tr_ilg.exit558.i.i

bb.fs:                                            ; preds = %bb.fo
  %.not7.i557.i.i = icmp samesign ult i32 %i.anx, 256
  br i1 %.not7.i557.i.i, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.aoi = lshr i32 %i.anx, 8
  %i.aoj = zext nneg i32 %i.aoi to i64
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.aoj
  %i.aol = load i32, ptr %i.aok, align 4, !tbaa !8
  %i.aom = add nsw i32 %i.aol, 8
  br label %tr_ilg.exit558.i.i

bb.fu:                                            ; preds = %bb.fs
  %i.aon = zext nneg i32 %i.anx to i64
  %i.aoo = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.aon
  %i.aop = load i32, ptr %i.aoo, align 4, !tbaa !8
  br label %tr_ilg.exit558.i.i

tr_ilg.exit558.i.i:                               ; preds = %bb.fu, %bb.ft, %bb.fr, %bb.fq, %bb.fn
  %i.aoq = phi i32 [ -1, %bb.fn ], [ %i.aoh, %bb.fr ], [ %i.aoc, %bb.fq ], [ %i.aom, %bb.ft ], [ %i.aop, %bb.fu ] ; 3 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %i.ani, i64 8 ; 9 uses
  %i.aos = icmp ult ptr %i.aor, %.0459.ph.i.i
  %i.aot = ptrtoint ptr %i.aor to i64             ; 4 uses
  br i1 %i.aos, label %.lr.ph667.i.preheader.i, label %tr_ilg.exit558._crit_edge.i.i

.lr.ph667.i.preheader.i:                          ; preds = %tr_ilg.exit558.i.i
  %i.aou = sub i64 %i.aot, %i.re
  %i.aov = lshr exact i64 %i.aou, 2
  %i.aow = trunc i64 %i.aov to i32
  %i.aox = add i32 %i.aow, -1
  br label %.lr.ph667.i.i

.lr.ph667.i.i:                                    ; preds = %.lr.ph667.i.i, %.lr.ph667.i.preheader.i
  %i.aoy = phi ptr [ %i.apc, %.lr.ph667.i.i ], [ %.1463.i.i, %.lr.ph667.i.preheader.i ] ; 2 uses
  %i.aoz = load i32, ptr %i.aoy, align 4, !tbaa !8
  %i.apa = sext i32 %i.aoz to i64
  %i.apb = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.apa
  store i32 %i.aox, ptr %i.apb, align 4, !tbaa !8
  %i.apc = getelementptr inbounds nuw i8, ptr %i.aoy, i64 4 ; 2 uses
  %i.apd = icmp ult ptr %i.apc, %i.aor
  br i1 %i.apd, label %.lr.ph667.i.i, label %tr_ilg.exit558._crit_edge.i.i, !llvm.loop !82

tr_ilg.exit558._crit_edge.i.i:                    ; preds = %.lr.ph667.i.i, %tr_ilg.exit558.i.i
  %i.ape = ptrtoint ptr %.1463.i.i to i64
  %i.apf = sub i64 %i.aot, %i.ape                 ; 2 uses
  %i.apg = lshr exact i64 %i.apf, 2
  %i.aph = trunc i64 %i.apg to i32                ; 3 uses
  %.not.i559.i.i = icmp slt i32 %.sroa.9.3.i, %i.aph
  br i1 %.not.i559.i.i, label %bb.fv, label %bb.fx

bb.fv:                                            ; preds = %tr_ilg.exit558._crit_edge.i.i
  %i.api = icmp eq i32 %.sroa.0.3.i, 0
  br i1 %i.api, label %bb.gb, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.apj = add i32 %.sroa.9.3.i, %i.bt
  %i.apk = add nsw i32 %.sroa.0.3.i, -1
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %tr_ilg.exit558._crit_edge.i.i
  %.pn210.i = phi i32 [ %i.apj, %bb.fw ], [ %.sroa.9.3.i, %tr_ilg.exit558._crit_edge.i.i ]
  %.sroa.0.7.i = phi i32 [ %i.apk, %bb.fw ], [ %.sroa.0.3.i, %tr_ilg.exit558._crit_edge.i.i ] ; 3 uses
  %.sroa.9.7.i = sub i32 %.pn210.i, %i.aph        ; 3 uses
  %i.apl = ptrtoint ptr %.0459.ph.i.i to i64
  %i.apm = sub i64 %i.apl, %i.aot                 ; 2 uses
  %.not519.i.i = icmp sgt i64 %i.apf, %i.apm
  br i1 %.not519.i.i, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.apn = sext i32 %.0445.ph.i.i to i64
  %i.apo = getelementptr inbounds [32 x i8], ptr %5, i64 %i.apn ; 5 uses
  store ptr %.0456.ph.i.i, ptr %i.apo, align 16, !tbaa !67
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 8
  store ptr %i.aor, ptr %i.app, align 8, !tbaa !71
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apo, i64 16
  store ptr %.0459.ph.i.i, ptr %i.apq, align 16, !tbaa !72
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apo, i64 24
  store i32 -3, ptr %i.apr, align 8, !tbaa !73
  %i.aps = add nsw i32 %.0445.ph.i.i, 1
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apo, i64 28
  store i32 %.0.ph.i.i, ptr %i.apt, align 4, !tbaa !74
  %i.apu = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.ri
  br label %.outer.i.i.backedge

bb.fz:                                            ; preds = %bb.fx
  %i.apv = icmp sgt i64 %i.apm, 4
  %i.apw = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.ri ; 2 uses
  br i1 %i.apv, label %bb.ga, label %.outer.i.i.backedge

bb.ga:                                            ; preds = %bb.fz
  %i.apx = sext i32 %.0445.ph.i.i to i64
  %i.apy = getelementptr inbounds [32 x i8], ptr %5, i64 %i.apx ; 5 uses
  store ptr %i.apw, ptr %i.apy, align 16, !tbaa !67
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apy, i64 8
  store ptr %.1463.i.i, ptr %i.apz, align 8, !tbaa !71
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apy, i64 16
  store ptr %i.aor, ptr %i.aqa, align 16, !tbaa !72
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apy, i64 24
  store i32 %i.aoq, ptr %i.aqb, align 8, !tbaa !73
  %i.aqc = add nsw i32 %.0445.ph.i.i, 1
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.apy, i64 28
  store i32 %.0.ph.i.i, ptr %i.aqd, align 4, !tbaa !74
  br label %.outer.i.i.backedge

bb.gb:                                            ; preds = %bb.fv
  %i.aqe = add nsw i32 %.sroa.23.0.i, %i.aph      ; 3 uses
  %i.aqf = icmp sgt i32 %.0.ph.i.i, -1
  br i1 %i.aqf, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.aqg = zext nneg i32 %.0.ph.i.i to i64
  %i.aqh = getelementptr inbounds nuw [32 x i8], ptr %5, i64 %i.aqg
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqh, i64 24
  store i32 -1, ptr %i.aqi, align 8, !tbaa !73
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %i.aqj = ptrtoint ptr %.0459.ph.i.i to i64
  %i.aqk = sub i64 %i.aqj, %i.aot
  %i.aql = icmp sgt i64 %i.aqk, 4
  br i1 %i.aql, label %.outer.i.i.backedge, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.aqm = icmp eq i32 %.0445.ph.i.i, 0
  br i1 %i.aqm, label %tr_introsort.exit.i, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.aqn = add nsw i32 %.0445.ph.i.i, -1          ; 2 uses
  %i.aqo = sext i32 %i.aqn to i64
  %i.aqp = getelementptr inbounds [32 x i8], ptr %5, i64 %i.aqo ; 5 uses
  %i.aqq = load ptr, ptr %i.aqp, align 16, !tbaa !67
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqp, i64 8
  %i.aqs = load ptr, ptr %i.aqr, align 8, !tbaa !71
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqp, i64 16
  %i.aqu = load ptr, ptr %i.aqt, align 16, !tbaa !72
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqp, i64 24
  %i.aqw = load i32, ptr %i.aqv, align 8, !tbaa !73
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqp, i64 28
  %i.aqy = load i32, ptr %i.aqx, align 4, !tbaa !74
  br label %.outer.i.i.backedge

bb.gg:                                            ; preds = %.critedge.i.i300
  %i.aqz = icmp eq i32 %.0445.ph.i.i, 0
  br i1 %i.aqz, label %tr_introsort.exit.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.ara = add nsw i32 %.0445.ph.i.i, -1          ; 2 uses
  %i.arb = sext i32 %i.ara to i64
  %i.arc = getelementptr inbounds [32 x i8], ptr %5, i64 %i.arb ; 5 uses
  %i.ard = load ptr, ptr %i.arc, align 16, !tbaa !67
  %i.are = getelementptr inbounds nuw i8, ptr %i.arc, i64 8
  %i.arf = load ptr, ptr %i.are, align 8, !tbaa !71
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arc, i64 16
  %i.arh = load ptr, ptr %i.arg, align 16, !tbaa !72
  %i.ari = getelementptr inbounds nuw i8, ptr %i.arc, i64 24
  %i.arj = load i32, ptr %i.ari, align 8, !tbaa !73
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arc, i64 28
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !74
  br label %.outer.i.i.backedge

.lr.ph640.split.i.i:                              ; preds = %.lr.ph640.i.i
  %i.arm = icmp eq i32 %.0449.ph.i.i, 0
  br i1 %i.arm, label %bb.gi, label %bb.gr

bb.gi:                                            ; preds = %.lr.ph640.split.i.i
  br i1 %8, label %._crit_edge72.i.i.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.arn = load i32, ptr %i.tg, align 4, !tbaa !8 ; 2 uses
  %i.aro = sext i32 %i.arn to i64
  %i.arp = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.aro
  %i.arq = load i32, ptr %i.arp, align 4, !tbaa !8
  %i.arr = load i32, ptr %i.ti, align 4, !tbaa !8 ; 2 uses
  %i.ars = sext i32 %i.arr to i64
  %i.art = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.ars
  %i.aru = load i32, ptr %i.art, align 4, !tbaa !8
  %i.arv = icmp slt i32 %i.arq, %i.aru
  br i1 %i.arv, label %bb.gk, label %._crit_edge72.i.i.i

bb.gk:                                            ; preds = %bb.gj
  store i32 %i.arn, ptr %i.ti, align 4, !tbaa !8
  store i32 %i.arr, ptr %i.tg, align 4, !tbaa !8
  br label %._crit_edge72.i.i.i

._crit_edge72.i.i.i:                              ; preds = %bb.gk, %bb.gj, %bb.gi
  %.0.i566.i.i = phi i32 [ %i.td, %bb.gk ], [ %i.td, %bb.gj ], [ %i.tc, %bb.gi ] ; 8 uses
  %i.arw = icmp sgt i32 %.0.i566.i.i, 1           ; 3 uses
  br i1 %i.arw, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i567.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %._crit_edge72.i.i.i
  %i.arx = lshr i32 %.0.i566.i.i, 1
  %i.ary = zext nneg i32 %i.arx to i64
  %i.arz = zext nneg i32 %.0.i566.i.i to i64
  br label %.lr.ph.i569.i.i

.lr.ph.i569.i.i:                                  ; preds = %tr_fixdown.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.ary, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %tr_fixdown.exit.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 4 uses
  %i.asa = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %indvars.iv.next.i.i.i
  %i.asb = load i32, ptr %i.asa, align 4, !tbaa !8 ; 2 uses
  %i.asc = sext i32 %i.asb to i64
  %i.asd = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.asc
  %i.ase = load i32, ptr %i.asd, align 4, !tbaa !8
  %i.asf = shl nuw nsw i64 %indvars.iv.next.i.i.i, 1 ; 2 uses
  %i.asg = or disjoint i64 %i.asf, 1              ; 2 uses
  %i.ash = icmp samesign ult i64 %i.asg, %i.arz
  %i.asi = trunc nsw i64 %indvars.iv.next.i.i.i to i32 ; 2 uses
  br i1 %i.ash, label %.lr.ph.i.preheader.i.i.i, label %tr_fixdown.exit.i.i.i

.lr.ph.i.preheader.i.i.i:                         ; preds = %.lr.ph.i569.i.i
  %i.asj = trunc nuw nsw i64 %i.asg to i32
  %i.ask = trunc nsw i64 %i.asf to i32
  br label %.lr.ph.i.i.i.i304

.lr.ph.i.i.i.i304:                                ; preds = %bb.gl, %.lr.ph.i.preheader.i.i.i
  %i.asl = phi i32 [ %i.ath, %bb.gl ], [ %i.asj, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.asm = phi i32 [ %i.atg, %bb.gl ], [ %i.ask, %.lr.ph.i.preheader.i.i.i ]
  %.02530.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %bb.gl ], [ %i.asi, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %i.asn = add nuw nsw i32 %i.asm, 2              ; 2 uses
  %i.aso = zext nneg i32 %i.asl to i64
  %i.asp = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.aso
  %i.asq = load i32, ptr %i.asp, align 4, !tbaa !8
  %i.asr = sext i32 %i.asq to i64
  %i.ass = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.asr
  %i.ast = load i32, ptr %i.ass, align 4, !tbaa !8 ; 2 uses
  %i.asu = zext nneg i32 %i.asn to i64
  %i.asv = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.asu
  %i.asw = load i32, ptr %i.asv, align 4, !tbaa !8
  %i.asx = sext i32 %i.asw to i64
  %i.asy = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.asx
  %i.asz = load i32, ptr %i.asy, align 4, !tbaa !8 ; 2 uses
  %spec.select29.i.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.ast, i32 %i.asz)
  %.not.i.i.i.i = icmp sgt i32 %spec.select29.i.i.i.i, %i.ase
  br i1 %.not.i.i.i.i, label %bb.gl, label %tr_fixdown.exit.i.i.i

bb.gl:                                            ; preds = %.lr.ph.i.i.i.i304
  %i.ata = icmp slt i32 %i.ast, %i.asz
  %spec.select.i.i.i.i = select i1 %i.ata, i32 %i.asn, i32 %i.asl ; 4 uses
  %i.atb = zext nneg i32 %spec.select.i.i.i.i to i64
  %i.atc = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.atb
  %i.atd = load i32, ptr %i.atc, align 4, !tbaa !8
  %i.ate = zext nneg i32 %.02530.i.i.i.i to i64
  %i.atf = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.ate
  store i32 %i.atd, ptr %i.atf, align 4, !tbaa !8
  %i.atg = shl nuw nsw i32 %spec.select.i.i.i.i, 1 ; 2 uses
  %i.ath = or disjoint i32 %i.atg, 1              ; 2 uses
  %i.ati = icmp slt i32 %i.ath, %.0.i566.i.i
  br i1 %i.ati, label %.lr.ph.i.i.i.i304, label %tr_fixdown.exit.i.i.i, !llvm.loop !83

tr_fixdown.exit.i.i.i:                            ; preds = %bb.gl, %.lr.ph.i.i.i.i304, %.lr.ph.i569.i.i
  %.025.lcssa.i.i.i.i = phi i32 [ %i.asi, %.lr.ph.i569.i.i ], [ %.02530.i.i.i.i, %.lr.ph.i.i.i.i304 ], [ %spec.select.i.i.i.i, %bb.gl ]
  %i.atj = zext nneg i32 %.025.lcssa.i.i.i.i to i64
  %i.atk = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.atj
  store i32 %i.asb, ptr %i.atk, align 4, !tbaa !8
  %i.atl = icmp sgt i64 %indvars.iv.i.i.i, 1
  br i1 %i.atl, label %.lr.ph.i569.i.i, label %._crit_edge.i567.i.i, !llvm.loop !84

._crit_edge.i567.i.i:                             ; preds = %tr_fixdown.exit.i.i.i, %._crit_edge72.i.i.i
  br i1 %8, label %bb.go, label %bb.gm

bb.gm:                                            ; preds = %._crit_edge.i567.i.i
  %i.atm = load i32, ptr %.0462.ph.i.i, align 4, !tbaa !8
  %i.atn = sext i32 %.0.i566.i.i to i64
  %i.ato = getelementptr inbounds [4 x i8], ptr %.0462.ph.i.i, i64 %i.atn ; 2 uses
  %i.atp = load i32, ptr %i.ato, align 4, !tbaa !8
  store i32 %i.atp, ptr %.0462.ph.i.i, align 4, !tbaa !8
  store i32 %i.atm, ptr %i.ato, align 4, !tbaa !8
  %i.atq = load i32, ptr %.0462.ph.i.i, align 4, !tbaa !8 ; 2 uses
  %i.atr = sext i32 %i.atq to i64
  %i.ats = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.atr
  %i.att = load i32, ptr %i.ats, align 4, !tbaa !8
  br i1 %i.arw, label %.lr.ph.i50.i.i.i, label %tr_fixdown.exit55.i.i.i

.lr.ph.i50.i.i.i:                                 ; preds = %bb.gm, %bb.gn
  %i.atu = phi i32 [ %i.auq, %bb.gn ], [ 1, %bb.gm ] ; 2 uses
  %i.atv = phi i32 [ %i.aup, %bb.gn ], [ 0, %bb.gm ]
  %.02530.i51.i.i.i = phi i32 [ %spec.select.i54.i.i.i, %bb.gn ], [ 0, %bb.gm ] ; 2 uses
  %i.atw = add nuw nsw i32 %i.atv, 2              ; 2 uses
  %i.atx = zext nneg i32 %i.atu to i64
  %i.aty = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.atx
  %i.atz = load i32, ptr %i.aty, align 4, !tbaa !8
  %i.aua = sext i32 %i.atz to i64
  %i.aub = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.aua
  %i.auc = load i32, ptr %i.aub, align 4, !tbaa !8 ; 2 uses
  %i.aud = zext nneg i32 %i.atw to i64
  %i.aue = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.aud
  %i.auf = load i32, ptr %i.aue, align 4, !tbaa !8
  %i.aug = sext i32 %i.auf to i64
  %i.auh = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.aug
  %i.aui = load i32, ptr %i.auh, align 4, !tbaa !8 ; 2 uses
  %spec.select29.i52.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.auc, i32 %i.aui)
  %.not.i53.i.i.i = icmp sgt i32 %spec.select29.i52.i.i.i, %i.att
  br i1 %.not.i53.i.i.i, label %bb.gn, label %.lr.ph.i50.i.tr_fixdown.exit55.loopexit.i_crit_edge.i.i

.lr.ph.i50.i.tr_fixdown.exit55.loopexit.i_crit_edge.i.i: ; preds = %.lr.ph.i50.i.i.i
  %.pre690.i.i.a = zext nneg i32 %.02530.i51.i.i.i to i64
  br label %tr_fixdown.exit55.i.i.i

bb.gn:                                            ; preds = %.lr.ph.i50.i.i.i
  %i.auj = icmp slt i32 %i.auc, %i.aui
  %spec.select.i54.i.i.i = select i1 %i.auj, i32 %i.atw, i32 %i.atu ; 3 uses
  %i.auk = zext nneg i32 %spec.select.i54.i.i.i to i64 ; 2 uses
  %i.aul = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.auk
  %i.aum = load i32, ptr %i.aul, align 4, !tbaa !8
  %i.aun = zext nneg i32 %.02530.i51.i.i.i to i64
  %i.auo = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.aun
  store i32 %i.aum, ptr %i.auo, align 4, !tbaa !8
  %i.aup = shl nuw nsw i32 %spec.select.i54.i.i.i, 1 ; 2 uses
  %i.auq = or disjoint i32 %i.aup, 1              ; 2 uses
  %i.aur = icmp slt i32 %i.auq, %.0.i566.i.i
  br i1 %i.aur, label %.lr.ph.i50.i.i.i, label %tr_fixdown.exit55.i.i.i, !llvm.loop !83

tr_fixdown.exit55.i.i.i:                          ; preds = %bb.gn, %.lr.ph.i50.i.tr_fixdown.exit55.loopexit.i_crit_edge.i.i, %bb.gm
  %.025.lcssa.i49.i.i.i = phi i64 [ 0, %bb.gm ], [ %.pre690.i.i.a, %.lr.ph.i50.i.tr_fixdown.exit55.loopexit.i_crit_edge.i.i ], [ %i.auk, %bb.gn ]
  %i.aus = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %.025.lcssa.i49.i.i.i
  store i32 %i.atq, ptr %i.aus, align 4, !tbaa !8
  br label %bb.go

bb.go:                                            ; preds = %tr_fixdown.exit55.i.i.i, %._crit_edge.i567.i.i
  br i1 %i.arw, label %.lr.ph66.preheader.i.i.i, label %tr_heapsort.exit.i.i

.lr.ph66.preheader.i.i.i:                         ; preds = %bb.go
  %i.aut = zext nneg i32 %.0.i566.i.i to i64
  %indvars.iv.next70.i622.i.i = add nsw i64 %i.aut, -1 ; 2 uses
  %i.auu = load i32, ptr %.0462.ph.i.i, align 4, !tbaa !8 ; 2 uses
  %i.auv = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %indvars.iv.next70.i622.i.i ; 3 uses
  %i.auw = load i32, ptr %i.auv, align 4, !tbaa !8 ; 2 uses
  store i32 %i.auw, ptr %.0462.ph.i.i, align 4, !tbaa !8
  %.not.i568623.i.i = icmp eq i32 %.0.i566.i.i, 2
  br i1 %.not.i568623.i.i, label %tr_fixdown.exit62.thread.i.i.i, label %.lr.ph.i57.i.preheader.i.i

.lr.ph.i57.i.preheader.i.i:                       ; preds = %.lr.ph66.preheader.i.i.i, %tr_fixdown.exit62.i.i.i
  %i.aux = phi i32 [ %i.awd, %tr_fixdown.exit62.i.i.i ], [ %i.auw, %.lr.ph66.preheader.i.i.i ] ; 2 uses
  %i.auy = phi ptr [ %i.awc, %tr_fixdown.exit62.i.i.i ], [ %i.auv, %.lr.ph66.preheader.i.i.i ]
  %i.auz = phi i32 [ %i.awb, %tr_fixdown.exit62.i.i.i ], [ %i.auu, %.lr.ph66.preheader.i.i.i ]
  %indvars.iv.next70.i624.i.i = phi i64 [ %indvars.iv.next70.i.i.i, %tr_fixdown.exit62.i.i.i ], [ %indvars.iv.next70.i622.i.i, %.lr.ph66.preheader.i.i.i ] ; 3 uses
  %.pn.i.i303 = sext i32 %i.aux to i64
  %.in.i.i = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %.pn.i.i303
  %i.ava = load i32, ptr %.in.i.i, align 4, !tbaa !8
  br label %.lr.ph.i57.i.i.i

tr_fixdown.exit62.thread.i.i.i:                   ; preds = %tr_fixdown.exit62.i.i.i, %.lr.ph66.preheader.i.i.i
  %.lcssa601.i.i = phi i32 [ %i.auu, %.lr.ph66.preheader.i.i.i ], [ %i.awb, %tr_fixdown.exit62.i.i.i ]
  %.lcssa.i.i = phi ptr [ %i.auv, %.lr.ph66.preheader.i.i.i ], [ %i.awc, %tr_fixdown.exit62.i.i.i ]
  store i32 %.lcssa601.i.i, ptr %.lcssa.i.i, align 4, !tbaa !8
  br label %tr_heapsort.exit.i.i

.lr.ph.i57.i.i.i:                                 ; preds = %bb.gp, %.lr.ph.i57.i.preheader.i.i
  %i.avb = phi i32 [ %i.avx, %bb.gp ], [ 1, %.lr.ph.i57.i.preheader.i.i ] ; 2 uses
  %i.avc = phi i32 [ %i.avw, %bb.gp ], [ 0, %.lr.ph.i57.i.preheader.i.i ]
  %.02530.i58.i.i.i = phi i32 [ %spec.select.i61.i.i.i, %bb.gp ], [ 0, %.lr.ph.i57.i.preheader.i.i ] ; 2 uses
  %i.avd = add nuw nsw i32 %i.avc, 2              ; 2 uses
  %i.ave = zext nneg i32 %i.avb to i64
  %i.avf = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.ave
  %i.avg = load i32, ptr %i.avf, align 4, !tbaa !8
  %i.avh = sext i32 %i.avg to i64
  %i.avi = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.avh
  %i.avj = load i32, ptr %i.avi, align 4, !tbaa !8 ; 2 uses
  %i.avk = zext nneg i32 %i.avd to i64
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.avk
  %i.avm = load i32, ptr %i.avl, align 4, !tbaa !8
  %i.avn = sext i32 %i.avm to i64
  %i.avo = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.avn
  %i.avp = load i32, ptr %i.avo, align 4, !tbaa !8 ; 2 uses
  %spec.select29.i59.i.i.i = tail call i32 @llvm.smax.i32(i32 %i.avj, i32 %i.avp)
  %.not.i60.i.i.i = icmp sgt i32 %spec.select29.i59.i.i.i, %i.ava
  br i1 %.not.i60.i.i.i, label %bb.gp, label %.lr.ph.i57.i.tr_fixdown.exit62.i_crit_edge.i.i

.lr.ph.i57.i.tr_fixdown.exit62.i_crit_edge.i.i:   ; preds = %.lr.ph.i57.i.i.i
  %.pre692.i.i = zext nneg i32 %.02530.i58.i.i.i to i64
  br label %tr_fixdown.exit62.i.i.i

bb.gp:                                            ; preds = %.lr.ph.i57.i.i.i
  %i.avq = icmp slt i32 %i.avj, %i.avp
  %spec.select.i61.i.i.i = select i1 %i.avq, i32 %i.avd, i32 %i.avb ; 3 uses
  %i.avr = zext nneg i32 %spec.select.i61.i.i.i to i64 ; 2 uses
  %i.avs = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.avr
  %i.avt = load i32, ptr %i.avs, align 4, !tbaa !8
  %i.avu = zext nneg i32 %.02530.i58.i.i.i to i64
  %i.avv = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %i.avu
  store i32 %i.avt, ptr %i.avv, align 4, !tbaa !8
  %i.avw = shl nuw nsw i32 %spec.select.i61.i.i.i, 1 ; 2 uses
  %i.avx = or disjoint i32 %i.avw, 1              ; 2 uses
  %i.avy = zext nneg i32 %i.avx to i64
  %i.avz = icmp sgt i64 %indvars.iv.next70.i624.i.i, %i.avy
  br i1 %i.avz, label %.lr.ph.i57.i.i.i, label %tr_fixdown.exit62.i.i.i, !llvm.loop !83

tr_fixdown.exit62.i.i.i:                          ; preds = %bb.gp, %.lr.ph.i57.i.tr_fixdown.exit62.i_crit_edge.i.i
  %.pre-phi693.i.i = phi i64 [ %.pre692.i.i, %.lr.ph.i57.i.tr_fixdown.exit62.i_crit_edge.i.i ], [ %i.avr, %bb.gp ]
  %i.awa = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %.pre-phi693.i.i
  store i32 %i.aux, ptr %i.awa, align 4, !tbaa !8
  store i32 %i.auz, ptr %i.auy, align 4, !tbaa !8
  %indvars.iv.next70.i.i.i = add nsw i64 %indvars.iv.next70.i624.i.i, -1 ; 2 uses
  %i.awb = load i32, ptr %.0462.ph.i.i, align 4, !tbaa !8 ; 2 uses
  %i.awc = getelementptr inbounds nuw [4 x i8], ptr %.0462.ph.i.i, i64 %indvars.iv.next70.i.i.i ; 3 uses
  %i.awd = load i32, ptr %i.awc, align 4, !tbaa !8 ; 2 uses
  store i32 %i.awd, ptr %.0462.ph.i.i, align 4, !tbaa !8
  %.not.i568.i.i = icmp eq i64 %indvars.iv.next70.i624.i.i, 2
  br i1 %.not.i568.i.i, label %tr_fixdown.exit62.thread.i.i.i, label %.lr.ph.i57.i.preheader.i.i

tr_heapsort.exit.i.i:                             ; preds = %tr_fixdown.exit62.thread.i.i.i, %bb.go
  br i1 %i.tk, label %.lr.ph636.i.i, label %._crit_edge.thread.i.i299

.lr.ph636.i.i:                                    ; preds = %tr_heapsort.exit.i.i, %.critedge2.i.i
  %storemerge635.i.i = phi ptr [ %storemerge515.lcssa626.i.i, %.critedge2.i.i ], [ %i.tj, %tr_heapsort.exit.i.i ] ; 2 uses
  %i.awe = load i32, ptr %storemerge635.i.i, align 4, !tbaa !8
  %i.awf = sext i32 %i.awe to i64
  %i.awg = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.awf
  %i.awh = load i32, ptr %i.awg, align 4, !tbaa !8
  %storemerge515627.i.i = getelementptr inbounds i8, ptr %storemerge635.i.i, i64 -4 ; 3 uses
  %.not516628.i.i = icmp ugt ptr %.0462.ph.i.i, %storemerge515627.i.i
  br i1 %.not516628.i.i, label %.critedge2.i.i, label %.lr.ph.i.i302

.lr.ph.i.i302:                                    ; preds = %.lr.ph636.i.i, %bb.gq
  %storemerge515629.i.i = phi ptr [ %storemerge515.i.i, %bb.gq ], [ %storemerge515627.i.i, %.lr.ph636.i.i ] ; 4 uses
  %i.awi = load i32, ptr %storemerge515629.i.i, align 4, !tbaa !8 ; 2 uses
  %i.awj = sext i32 %i.awi to i64
  %i.awk = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.awj
  %i.awl = load i32, ptr %i.awk, align 4, !tbaa !8
  %i.awm = icmp eq i32 %i.awl, %i.awh
  br i1 %i.awm, label %bb.gq, label %.critedge2.i.i

bb.gq:                                            ; preds = %.lr.ph.i.i302
  %i.awn = xor i32 %i.awi, -1
  store i32 %i.awn, ptr %storemerge515629.i.i, align 4, !tbaa !8
  %storemerge515.i.i = getelementptr inbounds i8, ptr %storemerge515629.i.i, i64 -4 ; 3 uses
  %.not516.i.i = icmp ugt ptr %.0462.ph.i.i, %storemerge515.i.i
  br i1 %.not516.i.i, label %.critedge2.i.i, label %.lr.ph.i.i302, !llvm.loop !85

.critedge2.i.i:                                   ; preds = %bb.gq, %.lr.ph.i.i302, %.lr.ph636.i.i
  %storemerge515.lcssa626.i.i = phi ptr [ %storemerge515627.i.i, %.lr.ph636.i.i ], [ %storemerge515629.i.i, %.lr.ph.i.i302 ], [ %storemerge515.i.i, %bb.gq ] ; 2 uses
  %i.awo = icmp ult ptr %.0462.ph.i.i, %storemerge515.lcssa626.i.i
  br i1 %i.awo, label %.lr.ph636.i.i, label %._crit_edge.thread.i.i299, !llvm.loop !86

bb.gr:                                            ; preds = %.lr.ph640.split.i.i
  %i.awp = add nsw i32 %.0449.ph.i.i, -1          ; 20 uses
  %i.awq = lshr exact i64 %i.sz, 2
  %i.awr = trunc i64 %i.awq to i32                ; 4 uses
  %i.aws = sdiv i32 %i.awr, 2
  %i.awt = sext i32 %i.aws to i64
  %i.awu = getelementptr inbounds [4 x i8], ptr %.0462.ph.i.i, i64 %i.awt ; 11 uses
  %i.awv = icmp slt i32 %i.awr, 513
  br i1 %i.awv, label %bb.gs, label %bb.gw

bb.gs:                                            ; preds = %bb.gr
  %i.aww = icmp slt i32 %i.awr, 33
  br i1 %i.aww, label %bb.gt, label %bb.gv

bb.gt:                                            ; preds = %bb.gs
  %i.awx = load i32, ptr %.0462.ph.i.i, align 4, !tbaa !8 ; 5 uses
  %i.awy = sext i32 %i.awx to i64
  %i.awz = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.awy
  %i.axa = load i32, ptr %i.awz, align 4, !tbaa !8
  %i.axb = load i32, ptr %i.awu, align 4, !tbaa !8 ; 3 uses
  %i.axc = sext i32 %i.axb to i64
  %i.axd = getelementptr inbounds [4 x i8], ptr %.0456.ph.i.i, i64 %i.axc
  %i.axe = load i32, ptr %i.axd, align 4, !tbaa !8
  %i.axf = icmp sgt i32 %i.axa, %i.axe            ; 4 uses
  %spec.select22.i.i.i.i = select i1 %i.axf, ptr %.0462.ph.i.i, ptr %i.awu
end_hunk_2
begin_hunk_3_@divbwt:bb.a
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jo = icmp eq i64 %index.next, %n.vec
  br i1 %i.jo, label %middle.block, label %vector.body, !llvm.loop !123

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %.preheader, label %.lr.ph.preheader152

.lr.ph.preheader152:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.068.in, 3                 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader152, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader152 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader152 ]
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.070, i64 %indvars.iv.prol
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !8
  %i.jr = trunc i32 %i.jq to i8
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.prol
  store i8 %i.jr, ptr %i.js, align 1, !tbaa !9
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !124

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader152
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader152 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.jt = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ju = icmp ugt i64 %i.jt, -4
  br i1 %i.ju, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %construct_BWT.exit
  %.0.lcssa = phi i32 [ 0, %construct_BWT.exit ], [ %.068, %middle.block ], [ %.068, %.lr.ph ], [ %.068, %.lr.ph.prol.loopexit ] ; 5 uses
  %.195 = add nuw nsw i32 %.0.lcssa, 1
  %i.jv = icmp slt i32 %.195, %3
  br i1 %i.jv, label %.lr.ph97.preheader, label %._crit_edge

.lr.ph97.preheader:                               ; preds = %.preheader
  %narrow = add nuw i32 %.0.lcssa, 1
  %i.jw = zext i32 %narrow to i64                 ; 5 uses
  %i.jx = add nsw i32 %3, -2
  %i.jy = sub i32 %i.jx, %.0.lcssa                ; 2 uses
  %i.jz = zext i32 %i.jy to i64
  %i.ka = add nuw nsw i64 %i.jz, 1                ; 2 uses
  %min.iters.check140 = icmp ult i32 %i.jy, 31
  br i1 %min.iters.check140, label %.lr.ph97.preheader151, label %vector.memcheck131

vector.memcheck131:                               ; preds = %.lr.ph97.preheader
  %scevgep132 = getelementptr i8, ptr %1, i64 %i.jw
  %i.kb = zext nneg i32 %.0.lcssa to i64          ; 3 uses
  %i.kc = add nsw i32 %3, -2
  %i.kd = sub i32 %i.kc, %.0.lcssa
  %i.ke = zext i32 %i.kd to i64                   ; 2 uses
  %i.kf = getelementptr i8, ptr %1, i64 %i.kb
  %i.kg = getelementptr i8, ptr %i.kf, i64 %i.ke
  %scevgep133 = getelementptr i8, ptr %i.kg, i64 2
  %i.kh = shl nuw nsw i64 %i.kb, 2
  %i.ki = getelementptr i8, ptr %.070, i64 %i.kh
  %scevgep134 = getelementptr i8, ptr %i.ki, i64 4
  %i.kj = add nuw nsw i64 %i.kb, %i.ke
  %i.kk = shl nuw nsw i64 %i.kj, 2
  %i.kl = getelementptr i8, ptr %.070, i64 %i.kk
  %scevgep135 = getelementptr i8, ptr %i.kl, i64 8
  %bound0136 = icmp ult ptr %scevgep132, %scevgep135
  %bound1137 = icmp ult ptr %scevgep134, %scevgep133
  %found.conflict138 = and i1 %bound0136, %bound1137
  br i1 %found.conflict138, label %.lr.ph97.preheader151, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck131
  %n.vec142 = and i64 %i.ka, 8589934584           ; 3 uses
  %i.km = add nuw nsw i64 %n.vec142, %i.jw
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next147, %vector.body143 ] ; 2 uses
  %i.kn = add nuw i64 %index144, %i.jw            ; 2 uses
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.070, i64 %i.kn ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %wide.load145 = load <4 x i32>, ptr %i.ko, align 4, !tbaa !8, !alias.scope !126
  %wide.load146 = load <4 x i32>, ptr %i.kp, align 4, !tbaa !8, !alias.scope !126
  %i.kq = trunc <4 x i32> %wide.load145 to <4 x i8>
  %i.kr = trunc <4 x i32> %wide.load146 to <4 x i8>
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 %i.kn ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  store <4 x i8> %i.kq, ptr %i.ks, align 1, !tbaa !9, !alias.scope !129, !noalias !126
  store <4 x i8> %i.kr, ptr %i.kt, align 1, !tbaa !9, !alias.scope !129, !noalias !126
  %index.next147 = add nuw i64 %index144, 8       ; 2 uses
  %i.ku = icmp eq i64 %index.next147, %n.vec142
  br i1 %i.ku, label %middle.block148, label %vector.body143, !llvm.loop !131

middle.block148:                                  ; preds = %vector.body143
  %cmp.n149 = icmp eq i64 %i.ka, %n.vec142
  br i1 %cmp.n149, label %._crit_edge, label %.lr.ph97.preheader151

.lr.ph97.preheader151:                            ; preds = %vector.memcheck131, %.lr.ph97.preheader, %middle.block148
  %indvars.iv99.ph = phi i64 [ %i.jw, %vector.memcheck131 ], [ %i.jw, %.lr.ph97.preheader ], [ %i.km, %middle.block148 ]
  br label %.lr.ph97

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.070, i64 %indvars.iv
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !8
  %i.kx = trunc i32 %i.kw to i8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  store i8 %i.kx, ptr %i.ky, align 1, !tbaa !9
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %.070, i64 %indvars.iv.next
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !8
  %i.lb = trunc i32 %i.la to i8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  store i8 %i.lb, ptr %i.lc, align 1, !tbaa !9
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.070, i64 %indvars.iv.next.1
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !8
  %i.lf = trunc i32 %i.le to i8
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  store i8 %i.lf, ptr %i.lg, align 1, !tbaa !9
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.070, i64 %indvars.iv.next.2
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !8
  %i.lj = trunc i32 %i.li to i8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.3
  store i8 %i.lj, ptr %i.lk, align 1, !tbaa !9
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.preheader, label %.lr.ph, !llvm.loop !132

.lr.ph97:                                         ; preds = %.lr.ph97.preheader151, %.lr.ph97
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %.lr.ph97 ], [ %indvars.iv99.ph, %.lr.ph97.preheader151 ] ; 3 uses
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %.070, i64 %indvars.iv99
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !8
  %i.ln = trunc i32 %i.lm to i8
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv99
  store i8 %i.ln, ptr %i.lo, align 1, !tbaa !9
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1 ; 2 uses
  %i.lp = trunc nuw i64 %indvars.iv.next100 to i32
  %i.lq = icmp sgt i32 %3, %i.lp
  br i1 %i.lq, label %.lr.ph97, label %._crit_edge, !llvm.loop !133

._crit_edge:                                      ; preds = %.lr.ph97, %middle.block148, %.preheader
  %i.lr = add nsw i32 %.068, 1
  br label %bb.bi

bb.bi:                                            ; preds = %bb.g, %._crit_edge
  %.169 = phi i32 [ %i.lr, %._crit_edge ], [ -2, %bb.g ] ; 2 uses
  tail call void @free(ptr noundef %i.m) #8
  tail call void @free(ptr noundef %i.l) #8
  br i1 %i.g, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  tail call void @free(ptr noundef %.070) #8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bi, %bb.bj, %bb.c, %bb.d, %bb.a
  %.071 = phi i32 [ 0, %bb.c ], [ -1, %bb.a ], [ 1, %bb.d ], [ %.169, %bb.bj ], [ %.169, %bb.bi ]
  ret i32 %.071
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @ss_mintrosort(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #3 {
bb.a:
  %4 = alloca [16 x %struct.anon], align 16       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = and i64 %i.c, 261120
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.c, 10
  %i.f = and i64 %i.e, 255
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !8
  %i.i = add nsw i32 %i.h, 8
  br label %ss_ilg.exit.preheader

bb.c:                                             ; preds = %bb.a
  %i.j = lshr exact i64 %i.c, 2
  %i.k = and i64 %i.j, 255
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @lg_table, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8
  br label %ss_ilg.exit.preheader

ss_ilg.exit.preheader:                            ; preds = %bb.b, %bb.c
  %.0388.ph = phi i32 [ %i.i, %bb.b ], [ %i.m, %bb.c ]
  br label %ss_ilg.exit

ss_ilg.exit:                                      ; preds = %ss_ilg.exit.backedge, %ss_ilg.exit.preheader
  %.0432 = phi ptr [ %2, %ss_ilg.exit.preheader ], [ %.0432.be, %ss_ilg.exit.backedge ] ; 68 uses
  %.0429 = phi ptr [ %3, %ss_ilg.exit.preheader ], [ %.0429.be, %ss_ilg.exit.backedge ] ; 25 uses
  %.0426 = phi i32 [ 2, %ss_ilg.exit.preheader ], [ %.0426.be, %ss_ilg.exit.backedge ] ; 31 uses
  %.0392 = phi i32 [ 0, %ss_ilg.exit.preheader ], [ %.0392.be, %ss_ilg.exit.backedge ] ; 20 uses
  %.0388 = phi i32 [ %.0388.ph, %ss_ilg.exit.preheader ], [ %.0388.be, %ss_ilg.exit.backedge ] ; 4 uses
  %i.n = ptrtoint ptr %.0429 to i64               ; 4 uses
  %i.o = ptrtoint ptr %.0432 to i64               ; 2 uses
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 2                   ; 4 uses
  %i.r = icmp slt i64 %i.q, 9
  br i1 %i.r, label %bb.d, label %bb.m

bb.d:                                             ; preds = %ss_ilg.exit
  %i.s = icmp sgt i64 %i.q, 1
  br i1 %i.s, label %bb.e, label %ss_insertionsort.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds i8, ptr %.0429, i64 -8 ; 2 uses
  %.not43.i = icmp ugt ptr %.0432, %i.t
  br i1 %.not43.i, label %ss_insertionsort.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.u = sext i32 %.0426 to i64                   ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %0, i64 %i.u ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.critedge.thread.thread.i, %.lr.ph.i
  %.02344.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.br, %.critedge.thread.thread.i ] ; 3 uses
  %i.w = load i32, ptr %.02344.i, align 4, !tbaa !8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.02344.i, i64 4 ; 2 uses
  %i.y = sext i32 %i.w to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %1, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 4
  %.pre.i = load i32, ptr %i.x, align 4, !tbaa !8
  br label %.critedge.i

.critedge.loopexit.i:                             ; preds = %bb.i
  br label %.critedge.i, !llvm.loop !134

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %bb.f
  %i.ab = phi i32 [ %.pre.i, %bb.f ], [ %i.bl, %.critedge.loopexit.i ] ; 3 uses
  %.0.i = phi ptr [ %i.x, %bb.f ], [ %i.bj, %.critedge.loopexit.i ] ; 4 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ac ; 2 uses
  %.val.i = load i32, ptr %i.z, align 4, !tbaa !8
  %.val28.i = load i32, ptr %i.aa, align 4, !tbaa !8
  %.val29.i = load i32, ptr %i.ad, align 4, !tbaa !8
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %.val30.i = load i32, ptr %i.ae, align 4, !tbaa !8
  %i.af = sext i32 %.val.i to i64                 ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.v, i64 %i.af ; 2 uses
  %i.ah = sext i32 %.val29.i to i64               ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.v, i64 %i.ah ; 2 uses
  %i.aj = sext i32 %.val28.i to i64
  %i.ak = add nsw i64 %i.aj, 2                    ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %0, i64 %i.ak
  %i.am = sext i32 %.val30.i to i64
  %i.an = add nsw i64 %i.am, 2                    ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %0, i64 %i.an
  %i.ap = add nsw i64 %i.af, %i.u
  %i.aq = icmp slt i64 %i.ap, %i.ak               ; 2 uses
  %i.ar = add nsw i64 %i.ah, %i.u
  %i.as = icmp slt i64 %i.ar, %i.an               ; 2 uses
  %or.cond6.i.i = select i1 %i.aq, i1 %i.as, i1 false
  br i1 %or.cond6.i.i, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %.critedge.i, %bb.g
  %.08.i.i = phi ptr [ %i.ax, %bb.g ], [ %i.ai, %.critedge.i ] ; 2 uses
  %.0257.i.i = phi ptr [ %i.aw, %bb.g ], [ %i.ag, %.critedge.i ] ; 2 uses
  %i.at = load i8, ptr %.0257.i.i, align 1, !tbaa !9 ; 2 uses
  %i.au = load i8, ptr %.08.i.i, align 1, !tbaa !9 ; 2 uses
  %i.av = icmp eq i8 %i.at, %i.au
  br i1 %i.av, label %bb.g, label %ss_compare.exit.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.0257.i.i, i64 1 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1 ; 3 uses
  %i.ay = icmp ult ptr %i.aw, %i.al               ; 2 uses
  %i.az = icmp ult ptr %i.ax, %i.ao               ; 2 uses
  %or.cond.i.i = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !23

.critedge.i.i:                                    ; preds = %bb.g, %.critedge.i
  %.025.lcssa.i.i = phi ptr [ %i.ag, %.critedge.i ], [ %i.aw, %bb.g ]
  %.0.lcssa.i.i = phi ptr [ %i.ai, %.critedge.i ], [ %i.ax, %bb.g ]
  %.lcssa5.i.i = phi i1 [ %i.aq, %.critedge.i ], [ %i.ay, %bb.g ]
  %.lcssa.i.i = phi i1 [ %i.as, %.critedge.i ], [ %i.az, %bb.g ] ; 2 uses
  br i1 %.lcssa5.i.i, label %bb.h, label %ss_compare.exit.thread.i

bb.h:                                             ; preds = %.critedge.i.i
  br i1 %.lcssa.i.i, label %..thread.i_crit_edge.i, label %.preheader.i.preheader

..thread.i_crit_edge.i:                           ; preds = %bb.h
  %.pre57.i = load i8, ptr %.025.lcssa.i.i, align 1, !tbaa !9
  %.pre699 = load i8, ptr %.0.lcssa.i.i, align 1, !tbaa !9
  br label %ss_compare.exit.i

ss_compare.exit.thread.i:                         ; preds = %.critedge.i.i
  %i.ba = sext i1 %.lcssa.i.i to i32
  br label %.critedge.thread.i

ss_compare.exit.i:                                ; preds = %.lr.ph.i.i, %..thread.i_crit_edge.i
  %i.bb = phi i8 [ %.pre699, %..thread.i_crit_edge.i ], [ %i.au, %.lr.ph.i.i ]
  %i.bc = phi i8 [ %.pre57.i, %..thread.i_crit_edge.i ], [ %i.at, %.lr.ph.i.i ]
  %i.bd = zext i8 %i.bc to i32
  %i.be = zext i8 %i.bb to i32
  %i.bf = sub nsw i32 %i.bd, %i.be                ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.preheader.i.preheader, label %.critedge.thread.i

.preheader.i.preheader:                           ; preds = %ss_compare.exit.i, %bb.h
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.i
  %i.bh = phi i32 [ %i.bl, %bb.i ], [ %i.ab, %.preheader.i.preheader ]
  %.1.i = phi ptr [ %i.bj, %bb.i ], [ %.0.i, %.preheader.i.preheader ] ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %.1.i, i64 -4
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %.1.i, i64 4 ; 5 uses
  %i.bk = icmp ult ptr %i.bj, %.0429
  br i1 %i.bk, label %bb.i, label %.critedge.thread.thread.i

bb.i:                                             ; preds = %.preheader.i
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !8  ; 3 uses
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %.preheader.i, label %.critedge.loopexit.i, !llvm.loop !134

.critedge.thread.i:                               ; preds = %ss_compare.exit.i, %ss_compare.exit.thread.i
  %i.bn = phi i32 [ %i.ba, %ss_compare.exit.thread.i ], [ %i.bf, %ss_compare.exit.i ]
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.j, label %.critedge.thread.thread.i

bb.j:                                             ; preds = %.critedge.thread.i
  %i.bp = xor i32 %i.ab, -1
  store i32 %i.bp, ptr %.0.i, align 4, !tbaa !8
  br label %.critedge.thread.thread.i

.critedge.thread.thread.i:                        ; preds = %.preheader.i, %bb.j, %.critedge.thread.i
  %.271.i = phi ptr [ %.0.i, %.critedge.thread.i ], [ %.0.i, %bb.j ], [ %i.bj, %.preheader.i ]
  %i.bq = getelementptr inbounds i8, ptr %.271.i, i64 -4
  store i32 %i.w, ptr %i.bq, align 4, !tbaa !8
  %i.br = getelementptr inbounds i8, ptr %.02344.i, i64 -4 ; 2 uses
  %.not.i500 = icmp ugt ptr %.0432, %i.br
  br i1 %.not.i500, label %ss_insertionsort.exit, label %bb.f, !llvm.loop !135

ss_insertionsort.exit:                            ; preds = %.critedge.thread.thread.i, %bb.e, %bb.d
  %i.bs = icmp eq i32 %.0392, 0
  br i1 %i.bs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %ss_insertionsort.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret void

bb.l:                                             ; preds = %ss_insertionsort.exit
  %i.bt = add nsw i32 %.0392, -1                  ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [24 x i8], ptr %4, i64 %i.bu ; 4 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !136
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !138
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !139
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !140
  br label %ss_ilg.exit.backedge

bb.m:                                             ; preds = %ss_ilg.exit
  %i.cd = sext i32 %.0426 to i64
  %i.ce = getelementptr inbounds i8, ptr %0, i64 %i.cd ; 60 uses
  %i.cf = add nsw i32 %.0388, -1                  ; 10 uses
  %i.cg = icmp eq i32 %.0388, 0
  br i1 %i.cg, label %bb.n, label %ss_heapsort.exit

bb.n:                                             ; preds = %bb.m
  %i.ch = trunc i64 %i.q to i32                   ; 2 uses
  %5 = trunc i64 %i.q to i1                       ; 2 uses
  br i1 %5, label %._crit_edge77.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = add nsw i32 %i.ch, -1                   ; 4 uses
  %i.cj = sdiv i32 %i.ci, 2
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %.0432, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !8  ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !8
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %i.ce, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !9
  %i.ct = sext i32 %i.ci to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %.0432, i64 %i.ct ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !8  ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !8
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds i8, ptr %i.ce, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !9
  %i.dc = icmp ult i8 %i.cs, %i.db
  br i1 %i.dc, label %bb.p, label %._crit_edge77.i

bb.p:                                             ; preds = %bb.o
  store i32 %i.cm, ptr %i.cu, align 4, !tbaa !8
  store i32 %i.cv, ptr %i.cl, align 4, !tbaa !8
  br label %._crit_edge77.i

._crit_edge77.i:                                  ; preds = %bb.p, %bb.o, %bb.n
  %.0.i501 = phi i32 [ %i.ci, %bb.p ], [ %i.ci, %bb.o ], [ %i.ch, %bb.n ] ; 8 uses
  %i.dd = icmp sgt i32 %.0.i501, 1                ; 3 uses
  br i1 %i.dd, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge77.i
  %i.de = lshr i32 %.0.i501, 1
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = zext nneg i32 %.0.i501 to i64
  br label %.lr.ph.i503

.lr.ph.i503:                                      ; preds = %ss_fixdown.exit.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.df, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %ss_fixdown.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 4 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %indvars.iv.next.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !8  ; 2 uses
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !8
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds i8, ptr %i.ce, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !9
  %i.dp = shl nuw nsw i64 %indvars.iv.next.i, 1   ; 2 uses
  %i.dq = or disjoint i64 %i.dp, 1                ; 2 uses
  %i.dr = icmp samesign ult i64 %i.dq, %i.dg
  %i.ds = trunc nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  br i1 %i.dr, label %.lr.ph.i.preheader.i, label %ss_fixdown.exit.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i503
  %i.dt = trunc nuw nsw i64 %i.dq to i32
  %i.du = trunc nsw i64 %i.dp to i32
  br label %.lr.ph.i.i504

.lr.ph.i.i504:                                    ; preds = %bb.q, %.lr.ph.i.preheader.i
  %i.dv = phi i32 [ %i.ex, %bb.q ], [ %i.dt, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.dw = phi i32 [ %i.ew, %bb.q ], [ %i.du, %.lr.ph.i.preheader.i ]
  %.02833.i.i = phi i32 [ %spec.select.i.i, %bb.q ], [ %i.ds, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.dx = add nuw nsw i32 %i.dw, 2                ; 2 uses
  %i.dy = zext nneg i32 %i.dv to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !8
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %1, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !8
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds i8, ptr %i.ce, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !9   ; 2 uses
  %i.eh = zext nneg i32 %i.dx to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !8
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !8
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds i8, ptr %i.ce, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !9   ; 2 uses
  %spec.select32.i.i = tail call i8 @llvm.umax.i8(i8 %i.eg, i8 %i.ep)
  %.not.i.i = icmp ugt i8 %spec.select32.i.i, %i.do
  br i1 %.not.i.i, label %bb.q, label %ss_fixdown.exit.i

bb.q:                                             ; preds = %.lr.ph.i.i504
  %i.eq = icmp ult i8 %i.eg, %i.ep
  %spec.select.i.i = select i1 %i.eq, i32 %i.dx, i32 %i.dv ; 4 uses
  %i.er = zext nneg i32 %spec.select.i.i to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !tbaa !8
  %i.eu = zext nneg i32 %.02833.i.i to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.eu
  store i32 %i.et, ptr %i.ev, align 4, !tbaa !8
  %i.ew = shl nuw nsw i32 %spec.select.i.i, 1     ; 2 uses
  %i.ex = or disjoint i32 %i.ew, 1                ; 2 uses
  %i.ey = icmp slt i32 %i.ex, %.0.i501
  br i1 %i.ey, label %.lr.ph.i.i504, label %ss_fixdown.exit.i, !llvm.loop !141

ss_fixdown.exit.i:                                ; preds = %bb.q, %.lr.ph.i.i504, %.lr.ph.i503
  %.028.lcssa.i.i = phi i32 [ %i.ds, %.lr.ph.i503 ], [ %.02833.i.i, %.lr.ph.i.i504 ], [ %spec.select.i.i, %bb.q ]
  %i.ez = zext nneg i32 %.028.lcssa.i.i to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.ez
  store i32 %i.di, ptr %i.fa, align 4, !tbaa !8
  %i.fb = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.fb, label %.lr.ph.i503, label %._crit_edge.i, !llvm.loop !142

._crit_edge.i:                                    ; preds = %ss_fixdown.exit.i, %._crit_edge77.i
  br i1 %5, label %bb.t, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i
  %i.fc = load i32, ptr %.0432, align 4, !tbaa !8
  %i.fd = sext i32 %.0.i501 to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %.0432, i64 %i.fd ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !8
  store i32 %i.ff, ptr %.0432, align 4, !tbaa !8
  store i32 %i.fc, ptr %i.fe, align 4, !tbaa !8
  %i.fg = load i32, ptr %.0432, align 4, !tbaa !8 ; 2 uses
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fh
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !8
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds i8, ptr %i.ce, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !9
  br i1 %i.dd, label %.lr.ph.i55.i, label %ss_fixdown.exit60.i

.lr.ph.i55.i:                                     ; preds = %bb.r, %bb.s
  %i.fn = phi i32 [ %i.gp, %bb.s ], [ 1, %bb.r ]  ; 2 uses
  %i.fo = phi i32 [ %i.go, %bb.s ], [ 0, %bb.r ]
  %.02833.i56.i = phi i32 [ %spec.select.i59.i, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.fp = add nuw nsw i32 %i.fo, 2                ; 2 uses
  %i.fq = zext nneg i32 %i.fn to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !8
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !8
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds i8, ptr %i.ce, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !9   ; 2 uses
  %i.fz = zext nneg i32 %i.fp to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !8
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !8
  %i.gf = sext i32 %i.ge to i64
  %i.gg = getelementptr inbounds i8, ptr %i.ce, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !9   ; 2 uses
  %spec.select32.i57.i = tail call i8 @llvm.umax.i8(i8 %i.fy, i8 %i.gh)
  %.not.i58.i = icmp ugt i8 %spec.select32.i57.i, %i.fm
  br i1 %.not.i58.i, label %bb.s, label %.lr.ph.i55.i.ss_fixdown.exit60.loopexit.i_crit_edge

.lr.ph.i55.i.ss_fixdown.exit60.loopexit.i_crit_edge: ; preds = %.lr.ph.i55.i
  %.pre702.a = zext nneg i32 %.02833.i56.i to i64
  br label %ss_fixdown.exit60.i

bb.s:                                             ; preds = %.lr.ph.i55.i
  %i.gi = icmp ult i8 %i.fy, %i.gh
  %spec.select.i59.i = select i1 %i.gi, i32 %i.fp, i32 %i.fn ; 3 uses
  %i.gj = zext nneg i32 %spec.select.i59.i to i64 ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !8
  %i.gm = zext nneg i32 %.02833.i56.i to i64
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.gm
  store i32 %i.gl, ptr %i.gn, align 4, !tbaa !8
  %i.go = shl nuw nsw i32 %spec.select.i59.i, 1   ; 2 uses
  %i.gp = or disjoint i32 %i.go, 1                ; 2 uses
  %i.gq = icmp slt i32 %i.gp, %.0.i501
  br i1 %i.gq, label %.lr.ph.i55.i, label %ss_fixdown.exit60.i, !llvm.loop !141

ss_fixdown.exit60.i:                              ; preds = %bb.s, %.lr.ph.i55.i.ss_fixdown.exit60.loopexit.i_crit_edge, %bb.r
  %.028.lcssa.i54.i = phi i64 [ 0, %bb.r ], [ %.pre702.a, %.lr.ph.i55.i.ss_fixdown.exit60.loopexit.i_crit_edge ], [ %i.gj, %bb.s ]
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %.028.lcssa.i54.i
  store i32 %i.fg, ptr %i.gr, align 4, !tbaa !8
  br label %bb.t

bb.t:                                             ; preds = %ss_fixdown.exit60.i, %._crit_edge.i
  br i1 %i.dd, label %.lr.ph71.preheader.i, label %ss_heapsort.exit

.lr.ph71.preheader.i:                             ; preds = %bb.t
  %i.gs = zext nneg i32 %.0.i501 to i64
  %indvars.iv.next75.i596 = add nsw i64 %i.gs, -1 ; 2 uses
  %i.gt = load i32, ptr %.0432, align 4, !tbaa !8 ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %indvars.iv.next75.i596 ; 3 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !8  ; 2 uses
  store i32 %i.gv, ptr %.0432, align 4, !tbaa !8
  %.not.i502597 = icmp eq i32 %.0.i501, 2
  br i1 %.not.i502597, label %ss_fixdown.exit67.thread.i, label %.lr.ph.i62.i.preheader

.lr.ph.i62.i.preheader:                           ; preds = %.lr.ph71.preheader.i, %ss_fixdown.exit67.i
  %i.gw = phi i32 [ %i.ii, %ss_fixdown.exit67.i ], [ %i.gv, %.lr.ph71.preheader.i ] ; 2 uses
  %i.gx = phi ptr [ %i.ih, %ss_fixdown.exit67.i ], [ %i.gu, %.lr.ph71.preheader.i ]
  %i.gy = phi i32 [ %i.ig, %ss_fixdown.exit67.i ], [ %i.gt, %.lr.ph71.preheader.i ]
  %indvars.iv.next75.i598 = phi i64 [ %indvars.iv.next75.i, %ss_fixdown.exit67.i ], [ %indvars.iv.next75.i596, %.lr.ph71.preheader.i ] ; 3 uses
  %.pn661 = sext i32 %i.gw to i64
  %.pn.in.in = getelementptr inbounds [4 x i8], ptr %1, i64 %.pn661
  %.pn.in = load i32, ptr %.pn.in.in, align 4, !tbaa !8
  %.pn = sext i32 %.pn.in to i64
  %.in = getelementptr inbounds i8, ptr %i.ce, i64 %.pn
  %i.gz = load i8, ptr %.in, align 1, !tbaa !9
  br label %.lr.ph.i62.i

ss_fixdown.exit67.thread.i:                       ; preds = %ss_fixdown.exit67.i, %.lr.ph71.preheader.i
  %.lcssa561 = phi i32 [ %i.gt, %.lr.ph71.preheader.i ], [ %i.ig, %ss_fixdown.exit67.i ]
  %.lcssa = phi ptr [ %i.gu, %.lr.ph71.preheader.i ], [ %i.ih, %ss_fixdown.exit67.i ]
  store i32 %.lcssa561, ptr %.lcssa, align 4, !tbaa !8
  br label %ss_heapsort.exit

.lr.ph.i62.i:                                     ; preds = %.lr.ph.i62.i.preheader, %bb.u
  %i.ha = phi i32 [ %i.ic, %bb.u ], [ 1, %.lr.ph.i62.i.preheader ] ; 2 uses
  %i.hb = phi i32 [ %i.ib, %bb.u ], [ 0, %.lr.ph.i62.i.preheader ]
  %.02833.i63.i = phi i32 [ %spec.select.i66.i, %bb.u ], [ 0, %.lr.ph.i62.i.preheader ] ; 2 uses
  %i.hc = add nuw nsw i32 %i.hb, 2                ; 2 uses
  %i.hd = zext nneg i32 %i.ha to i64
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !8
  %i.hg = sext i32 %i.hf to i64
  %i.hh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !8
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds i8, ptr %i.ce, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !9   ; 2 uses
  %i.hm = zext nneg i32 %i.hc to i64
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !8
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !8
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds i8, ptr %i.ce, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !9   ; 2 uses
  %spec.select32.i64.i = tail call i8 @llvm.umax.i8(i8 %i.hl, i8 %i.hu)
  %.not.i65.i = icmp ugt i8 %spec.select32.i64.i, %i.gz
  br i1 %.not.i65.i, label %bb.u, label %.lr.ph.i62.i.ss_fixdown.exit67.i_crit_edge

.lr.ph.i62.i.ss_fixdown.exit67.i_crit_edge:       ; preds = %.lr.ph.i62.i
  %.pre704 = zext nneg i32 %.02833.i63.i to i64
  br label %ss_fixdown.exit67.i

bb.u:                                             ; preds = %.lr.ph.i62.i
  %i.hv = icmp ult i8 %i.hl, %i.hu
  %spec.select.i66.i = select i1 %i.hv, i32 %i.hc, i32 %i.ha ; 3 uses
  %i.hw = zext nneg i32 %spec.select.i66.i to i64 ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !8
  %i.hz = zext nneg i32 %.02833.i63.i to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %i.hz
  store i32 %i.hy, ptr %i.ia, align 4, !tbaa !8
  %i.ib = shl nuw nsw i32 %spec.select.i66.i, 1   ; 2 uses
  %i.ic = or disjoint i32 %i.ib, 1                ; 2 uses
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = icmp sgt i64 %indvars.iv.next75.i598, %i.id
  br i1 %i.ie, label %.lr.ph.i62.i, label %ss_fixdown.exit67.i, !llvm.loop !141

ss_fixdown.exit67.i:                              ; preds = %bb.u, %.lr.ph.i62.i.ss_fixdown.exit67.i_crit_edge
  %.pre-phi705 = phi i64 [ %.pre704, %.lr.ph.i62.i.ss_fixdown.exit67.i_crit_edge ], [ %i.hw, %bb.u ]
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %.pre-phi705
  store i32 %i.gw, ptr %i.if, align 4, !tbaa !8
  store i32 %i.gy, ptr %i.gx, align 4, !tbaa !8
  %indvars.iv.next75.i = add nsw i64 %indvars.iv.next75.i598, -1 ; 2 uses
  %i.ig = load i32, ptr %.0432, align 4, !tbaa !8 ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %.0432, i64 %indvars.iv.next75.i ; 3 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !8  ; 2 uses
  store i32 %i.ii, ptr %.0432, align 4, !tbaa !8
  %.not.i502 = icmp eq i64 %indvars.iv.next75.i598, 2
  br i1 %.not.i502, label %ss_fixdown.exit67.thread.i, label %.lr.ph.i62.i.preheader

ss_heapsort.exit:                                 ; preds = %ss_fixdown.exit67.thread.i, %bb.t, %bb.m
  %i.ij = icmp slt i32 %.0388, 1
  br i1 %i.ij, label %bb.v, label %bb.aq

bb.v:                                             ; preds = %ss_heapsort.exit
  %i.ik = load i32, ptr %.0432, align 4, !tbaa !8
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [4 x i8], ptr %1, i64 %i.il
  %i.in = load i32, ptr %i.im, align 4, !tbaa !8
  %i.io = sext i32 %i.in to i64                   ; 2 uses
  %i.ip = getelementptr inbounds i8, ptr %i.ce, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !9
  %i.ir = zext i8 %i.iq to i32                    ; 2 uses
  %.0419647 = getelementptr inbounds nuw i8, ptr %.0432, i64 4 ; 3 uses
  %i.is = icmp ult ptr %.0419647, %.0429
  br i1 %i.is, label %.lr.ph652, label %._crit_edge653

.lr.ph652:                                        ; preds = %bb.v, %bb.x
  %.0419650 = phi ptr [ %.0419, %bb.x ], [ %.0419647, %bb.v ] ; 5 uses
  %.0386649 = phi i32 [ %.1387, %bb.x ], [ %i.ir, %bb.v ] ; 3 uses
  %.1433648 = phi ptr [ %.2434, %bb.x ], [ %.0432, %bb.v ] ; 3 uses
  %i.it = load i32, ptr %.0419650, align 4, !tbaa !8
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds [4 x i8], ptr %1, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !8
  %i.ix = sext i32 %i.iw to i64
  %i.iy = getelementptr inbounds i8, ptr %i.ce, i64 %i.ix
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !9
  %i.ja = zext i8 %i.iz to i32                    ; 2 uses
  %.not496 = icmp eq i32 %.0386649, %i.ja
  br i1 %.not496, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph652
  %i.jb = ptrtoint ptr %.0419650 to i64
  %i.jc = ptrtoint ptr %.1433648 to i64
  %i.jd = sub i64 %i.jb, %i.jc
  %i.je = icmp sgt i64 %i.jd, 4
  br i1 %i.je, label %._crit_edge653.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph652
  %.2434 = phi ptr [ %.1433648, %.lr.ph652 ], [ %.0419650, %bb.w ] ; 2 uses
end_hunk_3
begin_hunk_4_@ss_swapmerge:bb.a
  %.0231.ph = phi ptr [ %3, %bb.a ], [ %.0231.ph.be, %.backedge.outer.backedge ]
  %.0229.ph = phi ptr [ %2, %bb.a ], [ %.0229.ph.be, %.backedge.outer.backedge ]
  %.0217.ph = phi i32 [ 0, %bb.a ], [ %.0217.ph.be, %.backedge.outer.backedge ]
  %.0215.ph = phi i32 [ 0, %bb.a ], [ %.0215.ph.be, %.backedge.outer.backedge ]
  %i.c = ptrtoint ptr %.0233.ph to i64            ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.outer, %bb.bq
  %.0231 = phi ptr [ %i.sh, %bb.bq ], [ %.0231.ph, %.backedge.outer ] ; 33 uses
  %.0229 = phi ptr [ %.1225, %bb.bq ], [ %.0229.ph, %.backedge.outer ] ; 29 uses
  %.0217 = phi i32 [ %i.tp, %bb.bq ], [ %.0217.ph, %.backedge.outer ] ; 10 uses
  %.0215 = phi i32 [ %i.tt, %bb.bq ], [ %.0215.ph, %.backedge.outer ] ; 12 uses
  %i.d = ptrtoint ptr %.0231 to i64               ; 2 uses
  %i.e = sub i64 %i.c, %i.d                       ; 8 uses
  %i.f = ashr exact i64 %i.e, 2                   ; 2 uses
  %.not = icmp sgt i64 %i.f, %i.a
  br i1 %.not, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %.backedge
  %i.g = icmp ult ptr %.0229, %.0231
  %i.h = icmp ult ptr %.0231, %.0233.ph
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.i = lshr exact i64 %i.e, 2                   ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %5, i64 %i.e
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -4 ; 2 uses
  %i.l = trunc i64 %i.i to i32                    ; 4 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.preheader, label %ss_blockswap.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.c
  %i.n = and i64 %i.i, 2147483647                 ; 2 uses
  %min.iters.check152 = icmp samesign ult i64 %i.n, 8
  br i1 %min.iters.check152, label %.lr.ph.i.i.preheader174, label %vector.memcheck143

vector.memcheck143:                               ; preds = %.lr.ph.i.i.preheader
  %i.o = add i64 %i.e, 17179869180
  %i.p = and i64 %i.o, 17179869180                ; 2 uses
  %scevgep145 = getelementptr i8, ptr %scevgep144, i64 %i.p
  %scevgep146 = getelementptr i8, ptr %.0231, i64 4
  %scevgep147 = getelementptr i8, ptr %scevgep146, i64 %i.p
  %bound0148 = icmp ult ptr %5, %scevgep147
  %bound1149 = icmp ult ptr %.0231, %scevgep145
  %found.conflict150 = and i1 %bound0148, %bound1149
  br i1 %found.conflict150, label %.lr.ph.i.i.preheader174, label %vector.ph153

vector.ph153:                                     ; preds = %vector.memcheck143
  %n.vec154 = and i64 %i.i, 2147483640            ; 4 uses
  %i.q = trunc nuw nsw i64 %n.vec154 to i32
  %i.r = sub nsw i32 %i.l, %i.q
  %i.s = shl nuw nsw i64 %n.vec154, 2             ; 2 uses
  %i.t = getelementptr i8, ptr %.0231, i64 %i.s
  %i.u = getelementptr i8, ptr %5, i64 %i.s
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph153
  %index156 = phi i64 [ 0, %vector.ph153 ], [ %index.next163, %vector.body155 ] ; 2 uses
  %i.v = shl i64 %index156, 2                     ; 2 uses
  %next.gep157 = getelementptr i8, ptr %.0231, i64 %i.v ; 3 uses
  %next.gep158 = getelementptr i8, ptr %5, i64 %i.v ; 3 uses
  %i.w = getelementptr i8, ptr %next.gep158, i64 16 ; 2 uses
  %wide.load159 = load <4 x i32>, ptr %next.gep158, align 4, !tbaa !8, !alias.scope !167, !noalias !170
  %wide.load160 = load <4 x i32>, ptr %i.w, align 4, !tbaa !8, !alias.scope !167, !noalias !170
  %i.x = getelementptr i8, ptr %next.gep157, i64 16 ; 2 uses
  %wide.load161 = load <4 x i32>, ptr %next.gep157, align 4, !tbaa !8, !alias.scope !170
  %wide.load162 = load <4 x i32>, ptr %i.x, align 4, !tbaa !8, !alias.scope !170
  store <4 x i32> %wide.load161, ptr %next.gep158, align 4, !tbaa !8, !alias.scope !167, !noalias !170
  store <4 x i32> %wide.load162, ptr %i.w, align 4, !tbaa !8, !alias.scope !167, !noalias !170
  store <4 x i32> %wide.load159, ptr %next.gep157, align 4, !tbaa !8, !alias.scope !170
  store <4 x i32> %wide.load160, ptr %i.x, align 4, !tbaa !8, !alias.scope !170
  %index.next163 = add nuw i64 %index156, 8       ; 2 uses
  %i.y = icmp eq i64 %index.next163, %n.vec154
  br i1 %i.y, label %middle.block164, label %vector.body155, !llvm.loop !172

middle.block164:                                  ; preds = %vector.body155
  %cmp.n165 = icmp eq i64 %i.n, %n.vec154
  br i1 %cmp.n165, label %ss_blockswap.exit.i, label %.lr.ph.i.i.preheader174

.lr.ph.i.i.preheader174:                          ; preds = %vector.memcheck143, %.lr.ph.i.i.preheader, %middle.block164
  %.012.i.i.ph = phi i32 [ %i.l, %vector.memcheck143 ], [ %i.l, %.lr.ph.i.i.preheader ], [ %i.r, %middle.block164 ]
  %.0811.i.i.ph = phi ptr [ %.0231, %vector.memcheck143 ], [ %.0231, %.lr.ph.i.i.preheader ], [ %i.t, %middle.block164 ]
  %.0910.i.i.ph = phi ptr [ %5, %vector.memcheck143 ], [ %5, %.lr.ph.i.i.preheader ], [ %i.u, %middle.block164 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader174, %.lr.ph.i.i
  %.012.i.i = phi i32 [ %i.ab, %.lr.ph.i.i ], [ %.012.i.i.ph, %.lr.ph.i.i.preheader174 ] ; 2 uses
  %.0811.i.i = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %.0811.i.i.ph, %.lr.ph.i.i.preheader174 ] ; 3 uses
  %.0910.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.0910.i.i.ph, %.lr.ph.i.i.preheader174 ] ; 3 uses
  %i.z = load i32, ptr %.0910.i.i, align 4, !tbaa !8
  %i.aa = load i32, ptr %.0811.i.i, align 4, !tbaa !8
  store i32 %i.aa, ptr %.0910.i.i, align 4, !tbaa !8
  store i32 %i.z, ptr %.0811.i.i, align 4, !tbaa !8
  %i.ab = add nsw i32 %.012.i.i, -1
  %i.ac = getelementptr inbounds nuw i8, ptr %.0910.i.i, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %.0811.i.i, i64 4
  %i.ae = icmp samesign ugt i32 %.012.i.i, 1
  br i1 %i.ae, label %.lr.ph.i.i, label %ss_blockswap.exit.i, !llvm.loop !173

ss_blockswap.exit.i:                              ; preds = %.lr.ph.i.i, %middle.block164, %bb.c
  %i.af = load i32, ptr %i.k, align 4, !tbaa !8   ; 3 uses
  %.lobit.i = ashr i32 %i.af, 31
  %.pn.in.i = xor i32 %.lobit.i, %i.af
  %.lobit186.i = lshr i32 %i.af, 31
  %.pn.i = zext i32 %.pn.in.i to i64
  %.0153.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pn.i
  %i.ag = getelementptr inbounds i8, ptr %.0231, i64 -4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !8  ; 3 uses
  %.lobit187.i = ashr i32 %i.ah, 31
  %.pn175.in.i = xor i32 %.lobit187.i, %i.ah
  %i.ai = lshr i32 %i.ah, 30
  %i.aj = and i32 %i.ai, 2
  %.1.i = or disjoint i32 %i.aj, %.lobit186.i
  %.pn175.i = zext i32 %.pn175.in.i to i64
  %.0150.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pn175.i
  %i.ak = getelementptr inbounds i8, ptr %.0233.ph, i64 -4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !8
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %ss_blockswap.exit.i
  %.1154.i.ph = phi ptr [ %.0153.i, %ss_blockswap.exit.i ], [ %.1154.i.ph.be, %.outer.backedge ] ; 2 uses
  %.1151.i.ph = phi ptr [ %.0150.i, %ss_blockswap.exit.i ], [ %.1151.i.ph.be, %.outer.backedge ]
  %.0141.i.ph = phi ptr [ %i.ak, %ss_blockswap.exit.i ], [ %.0141.i.ph.be, %.outer.backedge ]
  %.0133.i.ph = phi ptr [ %i.k, %ss_blockswap.exit.i ], [ %.0133.i.ph.be, %.outer.backedge ] ; 9 uses
  %.0127.i.ph = phi ptr [ %i.ag, %ss_blockswap.exit.i ], [ %.0127.i.ph.be, %.outer.backedge ]
  %.2.i.ph = phi i32 [ %.1.i, %ss_blockswap.exit.i ], [ %.2.i.ph.be, %.outer.backedge ]
  %i.am = getelementptr i8, ptr %.1154.i.ph, i64 4
  br label %bb.d

bb.d:                                             ; preds = %.backedge173, %.outer
  %.1151.i = phi ptr [ %.1151.i.ph, %.outer ], [ %.1151.i.be, %.backedge173 ] ; 4 uses
  %.0141.i = phi ptr [ %.0141.i.ph, %.outer ], [ %i.cs, %.backedge173 ] ; 6 uses
  %.0127.i = phi ptr [ %.0127.i.ph, %.outer ], [ %i.cu, %.backedge173 ] ; 8 uses
  %.2.i = phi i32 [ %.2.i.ph, %.outer ], [ %.2.i.be, %.backedge173 ] ; 9 uses
  %.1154.val.i = load i32, ptr %.1154.i.ph, align 4, !tbaa !8 ; 2 uses
  %.1154.val182.i = load i32, ptr %i.am, align 4, !tbaa !8 ; 2 uses
  %.1151.val.i = load i32, ptr %.1151.i, align 4, !tbaa !8 ; 2 uses
  %i.an = getelementptr i8, ptr %.1151.i, i64 4
  %.1151.val183.i = load i32, ptr %i.an, align 4, !tbaa !8 ; 2 uses
  %i.ao = sext i32 %.1154.val.i to i64
  %i.ap = getelementptr inbounds i8, ptr %i.b, i64 %i.ao ; 2 uses
  %i.aq = sext i32 %.1151.val.i to i64
  %i.ar = getelementptr inbounds i8, ptr %i.b, i64 %i.aq ; 2 uses
  %i.as = sext i32 %.1154.val182.i to i64
  %i.at = getelementptr i8, ptr %0, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 2
  %i.av = sext i32 %.1151.val183.i to i64
  %i.aw = getelementptr i8, ptr %0, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 2
  %i.ay = icmp slt i32 %.1154.val.i, %.1154.val182.i ; 2 uses
  %i.az = icmp slt i32 %.1151.val.i, %.1151.val183.i ; 2 uses
  %or.cond6.i.i = select i1 %i.ay, i1 %i.az, i1 false
  br i1 %or.cond6.i.i, label %.lr.ph.i184.i, label %.critedge.i.i

.lr.ph.i184.i:                                    ; preds = %bb.d, %bb.e
  %.08.i.i = phi ptr [ %i.be, %bb.e ], [ %i.ar, %bb.d ] ; 2 uses
  %.0257.i.i = phi ptr [ %i.bd, %bb.e ], [ %i.ap, %bb.d ] ; 2 uses
  %i.ba = load i8, ptr %.0257.i.i, align 1, !tbaa !9 ; 2 uses
  %i.bb = load i8, ptr %.08.i.i, align 1, !tbaa !9 ; 2 uses
  %i.bc = icmp eq i8 %i.ba, %i.bb
  br i1 %i.bc, label %bb.e, label %ss_compare.exit.i

bb.e:                                             ; preds = %.lr.ph.i184.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.0257.i.i, i64 1 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 1 ; 3 uses
  %i.bf = icmp ult ptr %i.bd, %i.au               ; 2 uses
  %i.bg = icmp ult ptr %i.be, %i.ax               ; 2 uses
  %or.cond.i.i = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i184.i, label %.critedge.i.i, !llvm.loop !23

.critedge.i.i:                                    ; preds = %bb.e, %bb.d
  %.025.lcssa.i.i = phi ptr [ %i.ap, %bb.d ], [ %i.bd, %bb.e ]
  %.0.lcssa.i.i = phi ptr [ %i.ar, %bb.d ], [ %i.be, %bb.e ]
  %.lcssa5.i.i = phi i1 [ %i.ay, %bb.d ], [ %i.bf, %bb.e ]
  %.lcssa.i.i = phi i1 [ %i.az, %bb.d ], [ %i.bg, %bb.e ] ; 2 uses
  br i1 %.lcssa5.i.i, label %bb.f, label %ss_compare.exit.thread185.i

bb.f:                                             ; preds = %.critedge.i.i
  br i1 %.lcssa.i.i, label %.ss_compare.exit_crit_edge.i, label %ss_compare.exit.thread.i

.ss_compare.exit_crit_edge.i:                     ; preds = %bb.f
  %.pre.i = load i8, ptr %.025.lcssa.i.i, align 1, !tbaa !9
  %.pre = load i8, ptr %.0.lcssa.i.i, align 1, !tbaa !9
  br label %ss_compare.exit.i

ss_compare.exit.thread185.i:                      ; preds = %.critedge.i.i
  %i.bh = sext i1 %.lcssa.i.i to i32
  br label %bb.k

ss_compare.exit.i:                                ; preds = %.lr.ph.i184.i, %.ss_compare.exit_crit_edge.i
  %i.bi = phi i8 [ %.pre, %.ss_compare.exit_crit_edge.i ], [ %i.bb, %.lr.ph.i184.i ]
  %i.bj = phi i8 [ %.pre.i, %.ss_compare.exit_crit_edge.i ], [ %i.ba, %.lr.ph.i184.i ]
  %i.bk = zext i8 %i.bj to i32
  %i.bl = zext i8 %i.bi to i32
  %i.bm = sub nsw i32 %i.bk, %i.bl                ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %ss_compare.exit.thread.i, label %bb.k

ss_compare.exit.thread.i:                         ; preds = %ss_compare.exit.i, %bb.f
  %.not180.i = trunc i32 %.2.i to i1
  %.pre255.i = load i32, ptr %.0133.i.ph, align 4, !tbaa !8 ; 2 uses
  br i1 %.not180.i, label %.preheader190.i, label %ss_compare.exit.thread._crit_edge.i

.preheader190.i:                                  ; preds = %ss_compare.exit.thread.i, %.preheader190.i
  %i.bo = phi i32 [ %i.bs, %.preheader190.i ], [ %.pre255.i, %ss_compare.exit.thread.i ]
  %.1142.i = phi ptr [ %i.bp, %.preheader190.i ], [ %.0141.i, %ss_compare.exit.thread.i ] ; 2 uses
  %.1134.i = phi ptr [ %i.br, %.preheader190.i ], [ %.0133.i.ph, %ss_compare.exit.thread.i ] ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.1142.i, i64 -4 ; 3 uses
  store i32 %i.bo, ptr %.1142.i, align 4, !tbaa !8
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !8
  %i.br = getelementptr inbounds i8, ptr %.1134.i, i64 -4 ; 3 uses
  store i32 %i.bq, ptr %.1134.i, align 4, !tbaa !8
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !8  ; 3 uses
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %.preheader190.i, label %bb.g, !llvm.loop !174

bb.g:                                             ; preds = %.preheader190.i
  %i.bu = and i32 %.2.i, -2
  br label %ss_compare.exit.thread._crit_edge.i

ss_compare.exit.thread._crit_edge.i:              ; preds = %bb.g, %ss_compare.exit.thread.i
  %i.bv = phi i32 [ %i.bs, %bb.g ], [ %.pre255.i, %ss_compare.exit.thread.i ]
  %.2143.i = phi ptr [ %i.bp, %bb.g ], [ %.0141.i, %ss_compare.exit.thread.i ] ; 2 uses
  %.2135.i = phi ptr [ %i.br, %bb.g ], [ %.0133.i.ph, %ss_compare.exit.thread.i ] ; 3 uses
  %.3.i = phi i32 [ %i.bu, %bb.g ], [ %.2.i, %ss_compare.exit.thread.i ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.2143.i, i64 -4 ; 3 uses
  store i32 %i.bv, ptr %.2143.i, align 4, !tbaa !8
  %.not181.i = icmp ugt ptr %.2135.i, %5
  br i1 %.not181.i, label %bb.h, label %ss_mergebackward.exit

bb.h:                                             ; preds = %ss_compare.exit.thread._crit_edge.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !8
  %i.by = getelementptr inbounds i8, ptr %.2135.i, i64 -4 ; 3 uses
  store i32 %i.bx, ptr %.2135.i, align 4, !tbaa !8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !8  ; 3 uses
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cb = xor i32 %i.bz, -1
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cc
  %i.ce = or disjoint i32 %.3.i, 1
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.i, %bb.j, %bb.r, %bb.s
  %.1154.i.ph.be = phi ptr [ %.2155.i, %bb.s ], [ %.2155.i, %bb.r ], [ %i.cg, %bb.j ], [ %i.cd, %bb.i ]
  %.1151.i.ph.be = phi ptr [ %i.et, %bb.s ], [ %i.eq, %bb.r ], [ %.1151.i, %bb.j ], [ %.1151.i, %bb.i ]
  %.0141.i.ph.be = phi ptr [ %i.ea, %bb.s ], [ %i.ea, %bb.r ], [ %i.bw, %bb.j ], [ %i.bw, %bb.i ]
  %.0133.i.ph.be = phi ptr [ %i.dr, %bb.s ], [ %i.dr, %bb.r ], [ %i.by, %bb.j ], [ %i.by, %bb.i ]
  %.0127.i.ph.be = phi ptr [ %i.ec, %bb.s ], [ %i.ec, %bb.r ], [ %.0127.i, %bb.j ], [ %.0127.i, %bb.i ]
  %.2.i.ph.be = phi i32 [ %.7.i, %bb.s ], [ %i.er, %bb.r ], [ %.3.i, %bb.j ], [ %i.ce, %bb.i ]
  br label %.outer

bb.j:                                             ; preds = %bb.h
  %i.cf = zext nneg i32 %i.bz to i64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cf
  br label %.outer.backedge

bb.k:                                             ; preds = %ss_compare.exit.i, %ss_compare.exit.thread185.i
  %i.ch = phi i32 [ %i.bh, %ss_compare.exit.thread185.i ], [ %i.bm, %ss_compare.exit.i ]
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cj = and i32 %.2.i, 2
  %.not179.i = icmp eq i32 %i.cj, 0
  %.pre253.i = load i32, ptr %.0127.i, align 4, !tbaa !8 ; 2 uses
  br i1 %.not179.i, label %._crit_edge252.i, label %.preheader191.i

.preheader191.i:                                  ; preds = %bb.l, %.preheader191.i
  %i.ck = phi i32 [ %i.co, %.preheader191.i ], [ %.pre253.i, %bb.l ]
  %.3144.i = phi ptr [ %i.cl, %.preheader191.i ], [ %.0141.i, %bb.l ] ; 2 uses
  %.1128.i = phi ptr [ %i.cn, %.preheader191.i ], [ %.0127.i, %bb.l ] ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.3144.i, i64 -4 ; 3 uses
  store i32 %i.ck, ptr %.3144.i, align 4, !tbaa !8
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !8
  %i.cn = getelementptr inbounds i8, ptr %.1128.i, i64 -4 ; 3 uses
  store i32 %i.cm, ptr %.1128.i, align 4, !tbaa !8
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !8  ; 3 uses
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %.preheader191.i, label %bb.m, !llvm.loop !175

bb.m:                                             ; preds = %.preheader191.i
  %i.cq = and i32 %.2.i, -3
  br label %._crit_edge252.i

._crit_edge252.i:                                 ; preds = %bb.m, %bb.l
  %i.cr = phi i32 [ %i.co, %bb.m ], [ %.pre253.i, %bb.l ]
  %.4145.i = phi ptr [ %i.cl, %bb.m ], [ %.0141.i, %bb.l ] ; 2 uses
  %.2129.i = phi ptr [ %i.cn, %bb.m ], [ %.0127.i, %bb.l ] ; 2 uses
  %.4.i = phi i32 [ %i.cq, %bb.m ], [ %.2.i, %bb.l ] ; 2 uses
  %i.cs = getelementptr inbounds i8, ptr %.4145.i, i64 -4 ; 4 uses
  store i32 %i.cr, ptr %.4145.i, align 4, !tbaa !8
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !8
  %i.cu = getelementptr inbounds i8, ptr %.2129.i, i64 -4 ; 3 uses
  store i32 %i.ct, ptr %.2129.i, align 4, !tbaa !8
  %i.cv = icmp ult ptr %i.cu, %.0229
  br i1 %i.cv, label %.preheader.i, label %.backedge173

.preheader.i:                                     ; preds = %._crit_edge252.i
  %i.cw = icmp ult ptr %5, %.0133.i.ph
  br i1 %i.cw, label %.lr.ph218.i, label %.sink.split.i

.lr.ph218.i:                                      ; preds = %.preheader.i, %.lr.ph218.i
  %.3136217.i = phi ptr [ %i.da, %.lr.ph218.i ], [ %.0133.i.ph, %.preheader.i ] ; 3 uses
  %.5146216.i = phi ptr [ %i.cy, %.lr.ph218.i ], [ %i.cs, %.preheader.i ] ; 2 uses
  %i.cx = load i32, ptr %.3136217.i, align 4, !tbaa !8
  %i.cy = getelementptr inbounds i8, ptr %.5146216.i, i64 -4 ; 3 uses
  store i32 %i.cx, ptr %.5146216.i, align 4, !tbaa !8
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !8
  %i.da = getelementptr inbounds i8, ptr %.3136217.i, i64 -4 ; 3 uses
  store i32 %i.cz, ptr %.3136217.i, align 4, !tbaa !8
  %i.db = icmp ult ptr %5, %i.da
  br i1 %i.db, label %.lr.ph218.i, label %.sink.split.i, !llvm.loop !176

.backedge173:                                     ; preds = %._crit_edge252.i
  %i.dc = load i32, ptr %i.cu, align 4, !tbaa !8  ; 3 uses
  %i.dd = icmp slt i32 %i.dc, 0                   ; 2 uses
  %i.de = xor i32 %i.dc, -1
  %i.df = or disjoint i32 %.4.i, 2
  %.pn.in = select i1 %i.dd, i32 %i.de, i32 %i.dc
  %.2.i.be = select i1 %i.dd, i32 %i.df, i32 %.4.i
  %.pn = zext i32 %.pn.in to i64
  %.1151.i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pn
  br label %bb.d

bb.n:                                             ; preds = %bb.k
  %.not.i = trunc i32 %.2.i to i1
  %.pre247.i = load i32, ptr %.0133.i.ph, align 4, !tbaa !8 ; 2 uses
  br i1 %.not.i, label %.preheader193.i, label %._crit_edge246.i

.preheader193.i:                                  ; preds = %bb.n, %.preheader193.i
  %i.dg = phi i32 [ %i.dk, %.preheader193.i ], [ %.pre247.i, %bb.n ]
  %.6147.i = phi ptr [ %i.dh, %.preheader193.i ], [ %.0141.i, %bb.n ] ; 2 uses
  %.4137.i = phi ptr [ %i.dj, %.preheader193.i ], [ %.0133.i.ph, %bb.n ] ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %.6147.i, i64 -4 ; 3 uses
  store i32 %i.dg, ptr %.6147.i, align 4, !tbaa !8
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !8
  %i.dj = getelementptr inbounds i8, ptr %.4137.i, i64 -4 ; 3 uses
  store i32 %i.di, ptr %.4137.i, align 4, !tbaa !8
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !8  ; 3 uses
  %i.dl = icmp slt i32 %i.dk, 0
  br i1 %i.dl, label %.preheader193.i, label %bb.o, !llvm.loop !177

bb.o:                                             ; preds = %.preheader193.i
  %i.dm = and i32 %.2.i, -2
  br label %._crit_edge246.i

._crit_edge246.i:                                 ; preds = %bb.o, %bb.n
  %i.dn = phi i32 [ %i.dk, %bb.o ], [ %.pre247.i, %bb.n ]
  %.7148.i = phi ptr [ %i.dh, %bb.o ], [ %.0141.i, %bb.n ] ; 2 uses
  %.5138.i = phi ptr [ %i.dj, %bb.o ], [ %.0133.i.ph, %bb.n ] ; 3 uses
  %.5.i = phi i32 [ %i.dm, %bb.o ], [ %.2.i, %bb.n ] ; 2 uses
  %i.do = xor i32 %i.dn, -1
  store i32 %i.do, ptr %.7148.i, align 4, !tbaa !8
  %.not176.i = icmp ugt ptr %.5138.i, %5
  br i1 %.not176.i, label %bb.p, label %ss_mergebackward.exit

bb.p:                                             ; preds = %._crit_edge246.i
  %i.dp = getelementptr inbounds i8, ptr %.7148.i, i64 -4 ; 3 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !8
  %i.dr = getelementptr inbounds i8, ptr %.5138.i, i64 -4 ; 6 uses
  store i32 %i.dq, ptr %.5138.i, align 4, !tbaa !8
  %i.ds = and i32 %.5.i, 2
  %.not177.i = icmp eq i32 %i.ds, 0
  %.pre250.i = load i32, ptr %.0127.i, align 4, !tbaa !8 ; 2 uses
  br i1 %.not177.i, label %._crit_edge249.i, label %.preheader192.i

.preheader192.i:                                  ; preds = %bb.p, %.preheader192.i
  %i.dt = phi i32 [ %i.dx, %.preheader192.i ], [ %.pre250.i, %bb.p ]
  %.8149.i = phi ptr [ %i.du, %.preheader192.i ], [ %i.dp, %bb.p ] ; 2 uses
  %.3130.i = phi ptr [ %i.dw, %.preheader192.i ], [ %.0127.i, %bb.p ] ; 2 uses
  %i.du = getelementptr inbounds i8, ptr %.8149.i, i64 -4 ; 3 uses
  store i32 %i.dt, ptr %.8149.i, align 4, !tbaa !8
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !8
  %i.dw = getelementptr inbounds i8, ptr %.3130.i, i64 -4 ; 3 uses
  store i32 %i.dv, ptr %.3130.i, align 4, !tbaa !8
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !8  ; 3 uses
  %i.dy = icmp slt i32 %i.dx, 0
  br i1 %i.dy, label %.preheader192.i, label %._crit_edge249.i, !llvm.loop !178

._crit_edge249.i:                                 ; preds = %.preheader192.i, %bb.p
  %i.dz = phi i32 [ %.pre250.i, %bb.p ], [ %i.dx, %.preheader192.i ]
  %.9.i = phi ptr [ %i.dp, %bb.p ], [ %i.du, %.preheader192.i ] ; 2 uses
  %.4131.i = phi ptr [ %.0127.i, %bb.p ], [ %i.dw, %.preheader192.i ] ; 2 uses
  %.6.i = phi i32 [ %.5.i, %bb.p ], [ 0, %.preheader192.i ]
  %i.ea = getelementptr inbounds i8, ptr %.9.i, i64 -4 ; 5 uses
  store i32 %i.dz, ptr %.9.i, align 4, !tbaa !8
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !8
  %i.ec = getelementptr inbounds i8, ptr %.4131.i, i64 -4 ; 4 uses
  store i32 %i.eb, ptr %.4131.i, align 4, !tbaa !8
  %i.ed = icmp ult ptr %i.ec, %.0229
  br i1 %i.ed, label %.preheader189.i, label %bb.q

.preheader189.i:                                  ; preds = %._crit_edge249.i
  %i.ee = icmp ult ptr %5, %i.dr
  br i1 %i.ee, label %.lr.ph.i, label %.sink.split.i

.lr.ph.i:                                         ; preds = %.preheader189.i, %.lr.ph.i
  %.6139214.i = phi ptr [ %i.ei, %.lr.ph.i ], [ %i.dr, %.preheader189.i ] ; 3 uses
  %.10213.i = phi ptr [ %i.eg, %.lr.ph.i ], [ %i.ea, %.preheader189.i ] ; 2 uses
  %i.ef = load i32, ptr %.6139214.i, align 4, !tbaa !8
  %i.eg = getelementptr inbounds i8, ptr %.10213.i, i64 -4 ; 3 uses
  store i32 %i.ef, ptr %.10213.i, align 4, !tbaa !8
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !8
  %i.ei = getelementptr inbounds i8, ptr %.6139214.i, i64 -4 ; 3 uses
  store i32 %i.eh, ptr %.6139214.i, align 4, !tbaa !8
  %i.ej = icmp ult ptr %5, %i.ei
  br i1 %i.ej, label %.lr.ph.i, label %.sink.split.i, !llvm.loop !179

bb.q:                                             ; preds = %._crit_edge249.i
  %i.ek = load i32, ptr %i.dr, align 4, !tbaa !8  ; 3 uses
  %.lobit188.i = ashr i32 %i.ek, 31
  %.pn178.in.i = xor i32 %.lobit188.i, %i.ek
  %i.el = lshr i32 %i.ek, 31
  %.7.i = or i32 %i.el, %.6.i                     ; 2 uses
  %.pn178.i = zext i32 %.pn178.in.i to i64
  %.2155.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.pn178.i ; 2 uses
  %i.em = load i32, ptr %i.ec, align 4, !tbaa !8  ; 3 uses
  %i.en = icmp slt i32 %i.em, 0
  br i1 %i.en, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.eo = xor i32 %i.em, -1
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ep
  %i.er = or disjoint i32 %.7.i, 2
  br label %.outer.backedge

bb.s:                                             ; preds = %bb.q
  %i.es = zext nneg i32 %i.em to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.es
  br label %.outer.backedge

.sink.split.i:                                    ; preds = %.lr.ph.i, %.lr.ph218.i, %.preheader189.i, %.preheader.i
  %.6139.lcssa.sink308.i = phi ptr [ %i.da, %.lr.ph218.i ], [ %.0133.i.ph, %.preheader.i ], [ %i.dr, %.preheader189.i ], [ %i.ei, %.lr.ph.i ] ; 2 uses
  %.10.lcssa.sink.i = phi ptr [ %i.cy, %.lr.ph218.i ], [ %i.cs, %.preheader.i ], [ %i.ea, %.preheader189.i ], [ %i.eg, %.lr.ph.i ]
  %i.eu = load i32, ptr %.6139.lcssa.sink308.i, align 4, !tbaa !8
  store i32 %i.eu, ptr %.10.lcssa.sink.i, align 4, !tbaa !8
  br label %ss_mergebackward.exit

ss_mergebackward.exit:                            ; preds = %ss_compare.exit.thread._crit_edge.i, %._crit_edge246.i, %.sink.split.i
  %.6139.lcssa.sink.i = phi ptr [ %.6139.lcssa.sink308.i, %.sink.split.i ], [ %5, %._crit_edge246.i ], [ %5, %ss_compare.exit.thread._crit_edge.i ]
  store i32 %i.al, ptr %.6139.lcssa.sink.i, align 4, !tbaa !8
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %ss_mergebackward.exit
  %.not267 = trunc i32 %.0215 to i1
  br i1 %.not267, label %._crit_edge659, label %bb.u

._crit_edge659:                                   ; preds = %bb.t
  %.pre660 = load i32, ptr %.0229, align 4, !tbaa !8
  br label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.ev = and i32 %.0215, 2
  %.not268 = icmp eq i32 %i.ev, 0
  br i1 %.not268, label %ss_compare.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ew = getelementptr inbounds i8, ptr %.0229, i64 -4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !8  ; 2 uses
  %.lobit = ashr i32 %i.ex, 31
  %i.ey = xor i32 %.lobit, %i.ex
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ez ; 2 uses
  %i.fb = load i32, ptr %.0229, align 4, !tbaa !8 ; 2 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fc ; 2 uses
  %.val298 = load i32, ptr %i.fa, align 4, !tbaa !8 ; 2 uses
  %i.fe = getelementptr i8, ptr %i.fa, i64 4
  %.val299 = load i32, ptr %i.fe, align 4, !tbaa !8 ; 2 uses
  %.val300 = load i32, ptr %i.fd, align 4, !tbaa !8 ; 2 uses
  %i.ff = getelementptr i8, ptr %i.fd, i64 4
  %.val301 = load i32, ptr %i.ff, align 4, !tbaa !8 ; 2 uses
  %i.fg = sext i32 %.val298 to i64
  %i.fh = getelementptr inbounds i8, ptr %i.b, i64 %i.fg ; 2 uses
  %i.fi = sext i32 %.val300 to i64
  %i.fj = getelementptr inbounds i8, ptr %i.b, i64 %i.fi ; 2 uses
  %i.fk = sext i32 %.val299 to i64
  %i.fl = getelementptr i8, ptr %0, i64 %i.fk
  %i.fm = getelementptr i8, ptr %i.fl, i64 2
  %i.fn = sext i32 %.val301 to i64
  %i.fo = getelementptr i8, ptr %0, i64 %i.fn
  %i.fp = getelementptr i8, ptr %i.fo, i64 2
  %i.fq = icmp slt i32 %.val298, %.val299         ; 2 uses
  %i.fr = icmp slt i32 %.val300, %.val301         ; 2 uses
  %or.cond6.i = select i1 %i.fq, i1 %i.fr, i1 false
  br i1 %or.cond6.i, label %.lr.ph.i302, label %.critedge.i

.lr.ph.i302:                                      ; preds = %bb.v, %bb.w
  %.08.i = phi ptr [ %i.fw, %bb.w ], [ %i.fj, %bb.v ] ; 3 uses
  %.0257.i = phi ptr [ %i.fv, %bb.w ], [ %i.fh, %bb.v ] ; 2 uses
  %i.fs = load i8, ptr %.0257.i, align 1, !tbaa !9 ; 2 uses
  %i.ft = load i8, ptr %.08.i, align 1, !tbaa !9
  %i.fu = icmp eq i8 %i.fs, %i.ft
  br i1 %i.fu, label %bb.w, label %.thread.i

bb.w:                                             ; preds = %.lr.ph.i302
  %i.fv = getelementptr inbounds nuw i8, ptr %.0257.i, i64 1 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.08.i, i64 1 ; 3 uses
  %i.fx = icmp ult ptr %i.fv, %i.fm               ; 2 uses
  %i.fy = icmp ult ptr %i.fw, %i.fp               ; 2 uses
  %or.cond.i = select i1 %i.fx, i1 %i.fy, i1 false
  br i1 %or.cond.i, label %.lr.ph.i302, label %.critedge.i, !llvm.loop !23

.critedge.i:                                      ; preds = %bb.w, %bb.v
  %.025.lcssa.i = phi ptr [ %i.fh, %bb.v ], [ %i.fv, %bb.w ]
  %.0.lcssa.i = phi ptr [ %i.fj, %bb.v ], [ %i.fw, %bb.w ]
  %.lcssa5.i = phi i1 [ %i.fq, %bb.v ], [ %i.fx, %bb.w ]
  %.lcssa.i = phi i1 [ %i.fr, %bb.v ], [ %i.fy, %bb.w ] ; 2 uses
  br i1 %.lcssa5.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.critedge.i
  br i1 %.lcssa.i, label %..thread.i_crit_edge, label %ss_compare.exit.thread

..thread.i_crit_edge:                             ; preds = %bb.x
  %.pre658 = load i8, ptr %.025.lcssa.i, align 1, !tbaa !9
  br label %.thread.i

.thread.i:                                        ; preds = %.lr.ph.i302, %..thread.i_crit_edge
  %i.fz = phi i8 [ %.pre658, %..thread.i_crit_edge ], [ %i.fs, %.lr.ph.i302 ]
  %.0.lcssa2328.i = phi ptr [ %.0.lcssa.i, %..thread.i_crit_edge ], [ %.08.i, %.lr.ph.i302 ]
  %i.ga = zext i8 %i.fz to i32
  %i.gb = load i8, ptr %.0.lcssa2328.i, align 1, !tbaa !9
  %i.gc = zext i8 %i.gb to i32
  %i.gd = sub nsw i32 %i.ga, %i.gc
  br label %ss_compare.exit

bb.y:                                             ; preds = %.critedge.i
  %i.ge = sext i1 %.lcssa.i to i32
  br label %ss_compare.exit

ss_compare.exit:                                  ; preds = %.thread.i, %bb.y
  %i.gf = phi i32 [ %i.ge, %bb.y ], [ %i.gd, %.thread.i ]
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %bb.z, label %ss_compare.exit.thread

bb.z:                                             ; preds = %._crit_edge659, %ss_compare.exit
  %i.gh = phi i32 [ %.pre660, %._crit_edge659 ], [ %i.fb, %ss_compare.exit ]
  %i.gi = xor i32 %i.gh, -1
  store i32 %i.gi, ptr %.0229, align 4, !tbaa !8
  br label %ss_compare.exit.thread

ss_compare.exit.thread:                           ; preds = %bb.x, %bb.z, %ss_compare.exit, %bb.u
  %i.gj = and i32 %.0215, 4
  %.not269 = icmp eq i32 %i.gj, 0
  br i1 %.not269, label %ss_compare.exit316.thread, label %bb.aa

bb.aa:                                            ; preds = %ss_compare.exit.thread
  %i.gk = getelementptr inbounds i8, ptr %.0233.ph, i64 -4
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !8  ; 2 uses
  %.lobit429 = ashr i32 %i.gl, 31
  %i.gm = xor i32 %.lobit429, %i.gl
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.gn ; 2 uses
  %i.gp = load i32, ptr %.0233.ph, align 4, !tbaa !8 ; 2 uses
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [4 x i8], ptr %1, i64 %i.gq ; 2 uses
  %.val294 = load i32, ptr %i.go, align 4, !tbaa !8 ; 2 uses
  %i.gs = getelementptr i8, ptr %i.go, i64 4
  %.val295 = load i32, ptr %i.gs, align 4, !tbaa !8 ; 2 uses
  %.val296 = load i32, ptr %i.gr, align 4, !tbaa !8 ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gr, i64 4
  %.val297 = load i32, ptr %i.gt, align 4, !tbaa !8 ; 2 uses
  %i.gu = sext i32 %.val294 to i64
  %i.gv = getelementptr inbounds i8, ptr %i.b, i64 %i.gu ; 2 uses
  %i.gw = sext i32 %.val296 to i64
  %i.gx = getelementptr inbounds i8, ptr %i.b, i64 %i.gw ; 2 uses
  %i.gy = sext i32 %.val295 to i64
  %i.gz = getelementptr i8, ptr %0, i64 %i.gy
  %i.ha = getelementptr i8, ptr %i.gz, i64 2
  %i.hb = sext i32 %.val297 to i64
  %i.hc = getelementptr i8, ptr %0, i64 %i.hb
  %i.hd = getelementptr i8, ptr %i.hc, i64 2
  %i.he = icmp slt i32 %.val294, %.val295         ; 2 uses
  %i.hf = icmp slt i32 %.val296, %.val297         ; 2 uses
  %or.cond6.i303 = select i1 %i.he, i1 %i.hf, i1 false
  br i1 %or.cond6.i303, label %.lr.ph.i312, label %.critedge.i304

.lr.ph.i312:                                      ; preds = %bb.aa, %bb.ab
  %.08.i313 = phi ptr [ %i.hk, %bb.ab ], [ %i.gx, %bb.aa ] ; 3 uses
  %.0257.i314 = phi ptr [ %i.hj, %bb.ab ], [ %i.gv, %bb.aa ] ; 2 uses
  %i.hg = load i8, ptr %.0257.i314, align 1, !tbaa !9 ; 2 uses
  %i.hh = load i8, ptr %.08.i313, align 1, !tbaa !9
  %i.hi = icmp eq i8 %i.hg, %i.hh
  br i1 %i.hi, label %bb.ab, label %.thread.i309

bb.ab:                                            ; preds = %.lr.ph.i312
  %i.hj = getelementptr inbounds nuw i8, ptr %.0257.i314, i64 1 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.08.i313, i64 1 ; 3 uses
  %i.hl = icmp ult ptr %i.hj, %i.ha               ; 2 uses
  %i.hm = icmp ult ptr %i.hk, %i.hd               ; 2 uses
  %or.cond.i315 = select i1 %i.hl, i1 %i.hm, i1 false
  br i1 %or.cond.i315, label %.lr.ph.i312, label %.critedge.i304, !llvm.loop !23

.critedge.i304:                                   ; preds = %bb.ab, %bb.aa
  %.025.lcssa.i305 = phi ptr [ %i.gv, %bb.aa ], [ %i.hj, %bb.ab ]
  %.0.lcssa.i306 = phi ptr [ %i.gx, %bb.aa ], [ %i.hk, %bb.ab ]
  %.lcssa5.i307 = phi i1 [ %i.he, %bb.aa ], [ %i.hl, %bb.ab ]
  %.lcssa.i308 = phi i1 [ %i.hf, %bb.aa ], [ %i.hm, %bb.ab ] ; 2 uses
  br i1 %.lcssa5.i307, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.critedge.i304
  br i1 %.lcssa.i308, label %..thread.i309_crit_edge, label %ss_compare.exit316.thread

..thread.i309_crit_edge:                          ; preds = %bb.ac
  %.pre661 = load i8, ptr %.025.lcssa.i305, align 1, !tbaa !9
  br label %.thread.i309

.thread.i309:                                     ; preds = %.lr.ph.i312, %..thread.i309_crit_edge
  %i.hn = phi i8 [ %.pre661, %..thread.i309_crit_edge ], [ %i.hg, %.lr.ph.i312 ]
  %.0.lcssa2328.i311 = phi ptr [ %.0.lcssa.i306, %..thread.i309_crit_edge ], [ %.08.i313, %.lr.ph.i312 ]
  %i.ho = zext i8 %i.hn to i32
  %i.hp = load i8, ptr %.0.lcssa2328.i311, align 1, !tbaa !9
  %i.hq = zext i8 %i.hp to i32
  %i.hr = sub nsw i32 %i.ho, %i.hq
  br label %ss_compare.exit316

bb.ad:                                            ; preds = %.critedge.i304
  %i.hs = sext i1 %.lcssa.i308 to i32
  br label %ss_compare.exit316

ss_compare.exit316:                               ; preds = %.thread.i309, %bb.ad
  %i.ht = phi i32 [ %i.hs, %bb.ad ], [ %i.hr, %.thread.i309 ]
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %bb.ae, label %ss_compare.exit316.thread

bb.ae:                                            ; preds = %ss_compare.exit316
  %i.hv = xor i32 %i.gp, -1
  store i32 %i.hv, ptr %.0233.ph, align 4, !tbaa !8
  br label %ss_compare.exit316.thread

ss_compare.exit316.thread:                        ; preds = %bb.ac, %ss_compare.exit.thread, %ss_compare.exit316, %bb.ae
  %i.hw = icmp eq i32 %.0217, 0
  br i1 %i.hw, label %bb.ch, label %bb.af

bb.af:                                            ; preds = %ss_compare.exit316.thread
  %i.hx = add nsw i32 %.0217, -1                  ; 2 uses
  %i.hy = sext i32 %i.hx to i64
  %i.hz = getelementptr inbounds [32 x i8], ptr %7, i64 %i.hy ; 4 uses
  %i.ia = load ptr, ptr %i.hz, align 16, !tbaa !180
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !182
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ie = load ptr, ptr %i.id, align 16, !tbaa !183
  %i.if = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !184
  br label %.backedge.outer.backedge
end_hunk_4
begin_hunk_5_@ss_swapmerge:bb.a
  %i.jw = getelementptr i8, ptr %0, i64 %i.jv
  %i.jx = getelementptr i8, ptr %i.jw, i64 2
  %i.jy = sext i32 %.val93.i to i64
  %i.jz = getelementptr i8, ptr %0, i64 %i.jy
  %i.ka = getelementptr i8, ptr %i.jz, i64 2
  %i.kb = icmp slt i32 %.val.i, %.val91.i         ; 2 uses
  %i.kc = icmp slt i32 %.val92.i, %.val93.i       ; 2 uses
  %or.cond6.i.i318 = select i1 %i.kb, i1 %i.kc, i1 false
  br i1 %or.cond6.i.i318, label %.lr.ph.i94.i, label %.critedge.i.i319

.lr.ph.i94.i:                                     ; preds = %.loopexit.i, %bb.aj
  %.08.i.i336 = phi ptr [ %i.kh, %bb.aj ], [ %i.ju, %.loopexit.i ] ; 2 uses
  %.0257.i.i337 = phi ptr [ %i.kg, %bb.aj ], [ %i.js, %.loopexit.i ] ; 2 uses
  %i.kd = load i8, ptr %.0257.i.i337, align 1, !tbaa !9 ; 2 uses
  %i.ke = load i8, ptr %.08.i.i336, align 1, !tbaa !9 ; 2 uses
  %i.kf = icmp eq i8 %i.kd, %i.ke
  br i1 %i.kf, label %bb.aj, label %.thread.i.i

bb.aj:                                            ; preds = %.lr.ph.i94.i
  %i.kg = getelementptr inbounds nuw i8, ptr %.0257.i.i337, i64 1 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.08.i.i336, i64 1 ; 3 uses
  %i.ki = icmp ult ptr %i.kg, %i.jx               ; 2 uses
  %i.kj = icmp ult ptr %i.kh, %i.ka               ; 2 uses
  %or.cond.i.i338 = select i1 %i.ki, i1 %i.kj, i1 false
  br i1 %or.cond.i.i338, label %.lr.ph.i94.i, label %.critedge.i.i319, !llvm.loop !23

.critedge.i.i319:                                 ; preds = %bb.aj, %.loopexit.i
  %.025.lcssa.i.i320 = phi ptr [ %i.js, %.loopexit.i ], [ %i.kg, %bb.aj ]
  %.0.lcssa.i.i321 = phi ptr [ %i.ju, %.loopexit.i ], [ %i.kh, %bb.aj ]
  %.lcssa5.i.i322 = phi i1 [ %i.kb, %.loopexit.i ], [ %i.ki, %bb.aj ]
  %.lcssa.i.i323 = phi i1 [ %i.kc, %.loopexit.i ], [ %i.kj, %bb.aj ] ; 2 uses
  br i1 %.lcssa5.i.i322, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.critedge.i.i319
  br i1 %.lcssa.i.i323, label %..thread.i_crit_edge.i, label %.preheader99.i.preheader

..thread.i_crit_edge.i:                           ; preds = %bb.ak
  %.pre.i334 = load i8, ptr %.025.lcssa.i.i320, align 1, !tbaa !9
  %.pre662 = load i8, ptr %.0.lcssa.i.i321, align 1, !tbaa !9
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.lr.ph.i94.i, %..thread.i_crit_edge.i
  %i.kk = phi i8 [ %.pre662, %..thread.i_crit_edge.i ], [ %i.ke, %.lr.ph.i94.i ]
  %i.kl = phi i8 [ %.pre.i334, %..thread.i_crit_edge.i ], [ %i.kd, %.lr.ph.i94.i ]
  %i.km = zext i8 %i.kl to i32
  %i.kn = zext i8 %i.kk to i32
  %i.ko = sub nsw i32 %i.km, %i.kn
  br label %ss_compare.exit.i324

bb.al:                                            ; preds = %.critedge.i.i319
  %i.kp = sext i1 %.lcssa.i.i323 to i32
  br label %ss_compare.exit.i324

ss_compare.exit.i324:                             ; preds = %bb.al, %.thread.i.i
  %i.kq = phi i32 [ %i.kp, %bb.al ], [ %i.ko, %.thread.i.i ] ; 2 uses
  %i.kr = icmp slt i32 %i.kq, 0
  br i1 %i.kr, label %.preheader96.i, label %ss_compare.exit.thread.i325

.preheader96.i:                                   ; preds = %ss_compare.exit.i324, %bb.an
  %i.ks = phi i32 [ %i.kw, %bb.an ], [ %i.jj, %ss_compare.exit.i324 ]
  %.176.i = phi ptr [ %i.kt, %bb.an ], [ %.075.i, %ss_compare.exit.i324 ] ; 2 uses
  %.172.i = phi ptr [ %i.kv, %bb.an ], [ %.071.i.ph, %ss_compare.exit.i324 ] ; 3 uses
  store i32 %i.ks, ptr %.176.i, align 4, !tbaa !8
  %.not90.i = icmp ugt ptr %i.in, %.172.i
  br i1 %.not90.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.preheader96.i
  store i32 %i.ji, ptr %i.in, align 4, !tbaa !8
  br label %ss_mergeforward.exit

bb.an:                                            ; preds = %.preheader96.i
  %i.kt = getelementptr inbounds nuw i8, ptr %.176.i, i64 4 ; 3 uses
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !8
  %i.kv = getelementptr inbounds nuw i8, ptr %.172.i, i64 4 ; 3 uses
  store i32 %i.ku, ptr %.172.i, align 4, !tbaa !8
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !8  ; 2 uses
  %i.kx = icmp slt i32 %i.kw, 0
  br i1 %i.kx, label %.preheader96.i, label %.loopexit.i.outer.backedge, !llvm.loop !192

ss_compare.exit.thread.i325:                      ; preds = %ss_compare.exit.i324
  %.not.i326 = icmp eq i32 %i.kq, 0
  br i1 %.not.i326, label %bb.ap, label %.preheader99.i.preheader

.preheader99.i.preheader:                         ; preds = %ss_compare.exit.thread.i325, %bb.ak
  br label %.preheader99.i

.preheader99.i:                                   ; preds = %.preheader99.i.preheader, %bb.ao
  %i.ky = phi i32 [ %i.lj, %bb.ao ], [ %i.jm, %.preheader99.i.preheader ]
  %.277.i = phi ptr [ %i.kz, %bb.ao ], [ %.075.i, %.preheader99.i.preheader ] ; 2 uses
  %.1.i327 = phi ptr [ %i.lb, %bb.ao ], [ %.0.i, %.preheader99.i.preheader ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.277.i, i64 4 ; 5 uses
  store i32 %i.ky, ptr %.277.i, align 4, !tbaa !8
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !8
  %i.lb = getelementptr inbounds nuw i8, ptr %.1.i327, i64 4 ; 4 uses
  store i32 %i.la, ptr %.1.i327, align 4, !tbaa !8
  %.not89.i = icmp ugt ptr %.0233.ph, %i.lb
  br i1 %.not89.i, label %bb.ao, label %.preheader95.i

.preheader95.i:                                   ; preds = %.preheader99.i
  %i.lc = icmp ult ptr %.071.i.ph, %i.in
  br i1 %i.lc, label %.lr.ph.i328, label %._crit_edge.i

.lr.ph.i328:                                      ; preds = %.preheader95.i, %.lr.ph.i328
  %.273122.i = phi ptr [ %i.lg, %.lr.ph.i328 ], [ %.071.i.ph, %.preheader95.i ] ; 3 uses
  %.378121.i = phi ptr [ %i.le, %.lr.ph.i328 ], [ %i.kz, %.preheader95.i ] ; 2 uses
  %i.ld = load i32, ptr %.273122.i, align 4, !tbaa !8
  %i.le = getelementptr inbounds nuw i8, ptr %.378121.i, i64 4 ; 3 uses
  store i32 %i.ld, ptr %.378121.i, align 4, !tbaa !8
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !8
  %i.lg = getelementptr inbounds nuw i8, ptr %.273122.i, i64 4 ; 3 uses
  store i32 %i.lf, ptr %.273122.i, align 4, !tbaa !8
  %i.lh = icmp ult ptr %i.lg, %i.in
  br i1 %i.lh, label %.lr.ph.i328, label %._crit_edge.i, !llvm.loop !193

._crit_edge.i:                                    ; preds = %.lr.ph.i328, %.preheader95.i
  %.378.lcssa.i = phi ptr [ %i.kz, %.preheader95.i ], [ %i.le, %.lr.ph.i328 ]
  %.273.lcssa.i = phi ptr [ %.071.i.ph, %.preheader95.i ], [ %i.lg, %.lr.ph.i328 ] ; 2 uses
  %i.li = load i32, ptr %.273.lcssa.i, align 4, !tbaa !8
  store i32 %i.li, ptr %.378.lcssa.i, align 4, !tbaa !8
  store i32 %i.ji, ptr %.273.lcssa.i, align 4, !tbaa !8
  br label %ss_mergeforward.exit

bb.ao:                                            ; preds = %.preheader99.i
  %i.lj = load i32, ptr %i.lb, align 4, !tbaa !8  ; 2 uses
  %i.lk = icmp slt i32 %i.lj, 0
  br i1 %i.lk, label %.preheader99.i, label %.loopexit.i, !llvm.loop !194

bb.ap:                                            ; preds = %ss_compare.exit.thread.i325
  %i.ll = xor i32 %i.jm, -1
  store i32 %i.ll, ptr %.0.i, align 4, !tbaa !8
  %.pre160.i = load i32, ptr %.071.i.ph, align 4, !tbaa !8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.as, %bb.ap
  %i.lm = phi i32 [ %.pre160.i, %bb.ap ], [ %i.lq, %bb.as ]
  %.479.i = phi ptr [ %.075.i, %bb.ap ], [ %i.ln, %bb.as ] ; 2 uses
  %.374.i = phi ptr [ %.071.i.ph, %bb.ap ], [ %i.lp, %bb.as ] ; 3 uses
  store i32 %i.lm, ptr %.479.i, align 4, !tbaa !8
  %.not87.i = icmp ugt ptr %i.in, %.374.i
  br i1 %.not87.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i32 %i.ji, ptr %i.in, align 4, !tbaa !8
  br label %ss_mergeforward.exit

bb.as:                                            ; preds = %bb.aq
  %i.ln = getelementptr inbounds nuw i8, ptr %.479.i, i64 4 ; 3 uses
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !8
  %i.lp = getelementptr inbounds nuw i8, ptr %.374.i, i64 4 ; 6 uses
  store i32 %i.lo, ptr %.374.i, align 4, !tbaa !8
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !8  ; 2 uses
  %i.lr = icmp slt i32 %i.lq, 0
  br i1 %i.lr, label %bb.aq, label %.preheader97.i, !llvm.loop !195

.preheader97.i:                                   ; preds = %bb.as
  %.pre161.i = load i32, ptr %.0.i, align 4, !tbaa !8
  br label %bb.at

bb.at:                                            ; preds = %bb.au, %.preheader97.i
  %i.ls = phi i32 [ %i.md, %bb.au ], [ %.pre161.i, %.preheader97.i ]
  %.580.i = phi ptr [ %i.lt, %bb.au ], [ %i.ln, %.preheader97.i ] ; 2 uses
  %.2.i332 = phi ptr [ %i.lv, %bb.au ], [ %.0.i, %.preheader97.i ] ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %.580.i, i64 4 ; 5 uses
  store i32 %i.ls, ptr %.580.i, align 4, !tbaa !8
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !8
  %i.lv = getelementptr inbounds nuw i8, ptr %.2.i332, i64 4 ; 4 uses
  store i32 %i.lu, ptr %.2.i332, align 4, !tbaa !8
  %.not88.i = icmp ugt ptr %.0233.ph, %i.lv
  br i1 %.not88.i, label %bb.au, label %.preheader.i333

.preheader.i333:                                  ; preds = %bb.at
  %i.lw = icmp ult ptr %i.lp, %i.in
  br i1 %i.lw, label %.lr.ph126.i, label %._crit_edge127.i

.lr.ph126.i:                                      ; preds = %.preheader.i333, %.lr.ph126.i
  %.4125.i = phi ptr [ %i.ma, %.lr.ph126.i ], [ %i.lp, %.preheader.i333 ] ; 3 uses
  %.6124.i = phi ptr [ %i.ly, %.lr.ph126.i ], [ %i.lt, %.preheader.i333 ] ; 2 uses
  %i.lx = load i32, ptr %.4125.i, align 4, !tbaa !8
  %i.ly = getelementptr inbounds nuw i8, ptr %.6124.i, i64 4 ; 3 uses
  store i32 %i.lx, ptr %.6124.i, align 4, !tbaa !8
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !8
  %i.ma = getelementptr inbounds nuw i8, ptr %.4125.i, i64 4 ; 3 uses
  store i32 %i.lz, ptr %.4125.i, align 4, !tbaa !8
  %i.mb = icmp ult ptr %i.ma, %i.in
  br i1 %i.mb, label %.lr.ph126.i, label %._crit_edge127.i, !llvm.loop !196

._crit_edge127.i:                                 ; preds = %.lr.ph126.i, %.preheader.i333
  %.6.lcssa.i = phi ptr [ %i.lt, %.preheader.i333 ], [ %i.ly, %.lr.ph126.i ]
  %.4.lcssa.i = phi ptr [ %i.lp, %.preheader.i333 ], [ %i.ma, %.lr.ph126.i ] ; 2 uses
  %i.mc = load i32, ptr %.4.lcssa.i, align 4, !tbaa !8
  store i32 %i.mc, ptr %.6.lcssa.i, align 4, !tbaa !8
  store i32 %i.ji, ptr %.4.lcssa.i, align 4, !tbaa !8
  br label %ss_mergeforward.exit

bb.au:                                            ; preds = %bb.at
  %i.md = load i32, ptr %i.lv, align 4, !tbaa !8  ; 2 uses
  %i.me = icmp slt i32 %i.md, 0
  br i1 %i.me, label %bb.at, label %.loopexit.i.outer.backedge, !llvm.loop !197

ss_mergeforward.exit:                             ; preds = %._crit_edge127.i, %bb.ar, %._crit_edge.i, %bb.am, %bb.ah
  %.not264 = trunc i32 %.0215 to i1
  br i1 %.not264, label %ss_mergeforward.exit._crit_edge, label %bb.av

ss_mergeforward.exit._crit_edge:                  ; preds = %ss_mergeforward.exit
  %.pre664 = load i32, ptr %.0229, align 4, !tbaa !8
  br label %bb.ba

bb.av:                                            ; preds = %ss_mergeforward.exit
  %i.mf = and i32 %.0215, 2
  %.not265 = icmp eq i32 %i.mf, 0
  br i1 %.not265, label %ss_compare.exit356.thread, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mg = getelementptr inbounds i8, ptr %.0229, i64 -4
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !8  ; 2 uses
  %.lobit430 = ashr i32 %i.mh, 31
  %i.mi = xor i32 %.lobit430, %i.mh
  %i.mj = zext nneg i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.mj ; 2 uses
  %i.ml = load i32, ptr %.0229, align 4, !tbaa !8 ; 2 uses
  %i.mm = sext i32 %i.ml to i64
  %i.mn = getelementptr inbounds [4 x i8], ptr %1, i64 %i.mm ; 2 uses
  %.val290 = load i32, ptr %i.mk, align 4, !tbaa !8 ; 2 uses
  %i.mo = getelementptr i8, ptr %i.mk, i64 4
  %.val291 = load i32, ptr %i.mo, align 4, !tbaa !8 ; 2 uses
  %.val292 = load i32, ptr %i.mn, align 4, !tbaa !8 ; 2 uses
  %i.mp = getelementptr i8, ptr %i.mn, i64 4
  %.val293 = load i32, ptr %i.mp, align 4, !tbaa !8 ; 2 uses
  %i.mq = sext i32 %.val290 to i64
  %i.mr = getelementptr inbounds i8, ptr %i.b, i64 %i.mq ; 2 uses
  %i.ms = sext i32 %.val292 to i64
  %i.mt = getelementptr inbounds i8, ptr %i.b, i64 %i.ms ; 2 uses
  %i.mu = sext i32 %.val291 to i64
  %i.mv = getelementptr i8, ptr %0, i64 %i.mu
  %i.mw = getelementptr i8, ptr %i.mv, i64 2
  %i.mx = sext i32 %.val293 to i64
  %i.my = getelementptr i8, ptr %0, i64 %i.mx
  %i.mz = getelementptr i8, ptr %i.my, i64 2
  %i.na = icmp slt i32 %.val290, %.val291         ; 2 uses
  %i.nb = icmp slt i32 %.val292, %.val293         ; 2 uses
  %or.cond6.i343 = select i1 %i.na, i1 %i.nb, i1 false
  br i1 %or.cond6.i343, label %.lr.ph.i352, label %.critedge.i344

.lr.ph.i352:                                      ; preds = %bb.aw, %bb.ax
  %.08.i353 = phi ptr [ %i.ng, %bb.ax ], [ %i.mt, %bb.aw ] ; 3 uses
  %.0257.i354 = phi ptr [ %i.nf, %bb.ax ], [ %i.mr, %bb.aw ] ; 2 uses
  %i.nc = load i8, ptr %.0257.i354, align 1, !tbaa !9 ; 2 uses
  %i.nd = load i8, ptr %.08.i353, align 1, !tbaa !9
  %i.ne = icmp eq i8 %i.nc, %i.nd
  br i1 %i.ne, label %bb.ax, label %.thread.i349

bb.ax:                                            ; preds = %.lr.ph.i352
  %i.nf = getelementptr inbounds nuw i8, ptr %.0257.i354, i64 1 ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %.08.i353, i64 1 ; 3 uses
  %i.nh = icmp ult ptr %i.nf, %i.mw               ; 2 uses
  %i.ni = icmp ult ptr %i.ng, %i.mz               ; 2 uses
  %or.cond.i355 = select i1 %i.nh, i1 %i.ni, i1 false
  br i1 %or.cond.i355, label %.lr.ph.i352, label %.critedge.i344, !llvm.loop !23

.critedge.i344:                                   ; preds = %bb.ax, %bb.aw
  %.025.lcssa.i345 = phi ptr [ %i.mr, %bb.aw ], [ %i.nf, %bb.ax ]
  %.0.lcssa.i346 = phi ptr [ %i.mt, %bb.aw ], [ %i.ng, %bb.ax ]
  %.lcssa5.i347 = phi i1 [ %i.na, %bb.aw ], [ %i.nh, %bb.ax ]
  %.lcssa.i348 = phi i1 [ %i.nb, %bb.aw ], [ %i.ni, %bb.ax ] ; 2 uses
  br i1 %.lcssa5.i347, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.critedge.i344
  br i1 %.lcssa.i348, label %..thread.i349_crit_edge, label %ss_compare.exit356.thread

..thread.i349_crit_edge:                          ; preds = %bb.ay
  %.pre663 = load i8, ptr %.025.lcssa.i345, align 1, !tbaa !9
  br label %.thread.i349

.thread.i349:                                     ; preds = %.lr.ph.i352, %..thread.i349_crit_edge
  %i.nj = phi i8 [ %.pre663, %..thread.i349_crit_edge ], [ %i.nc, %.lr.ph.i352 ]
  %.0.lcssa2328.i351 = phi ptr [ %.0.lcssa.i346, %..thread.i349_crit_edge ], [ %.08.i353, %.lr.ph.i352 ]
  %i.nk = zext i8 %i.nj to i32
  %i.nl = load i8, ptr %.0.lcssa2328.i351, align 1, !tbaa !9
  %i.nm = zext i8 %i.nl to i32
  %i.nn = sub nsw i32 %i.nk, %i.nm
  br label %ss_compare.exit356

bb.az:                                            ; preds = %.critedge.i344
  %i.no = sext i1 %.lcssa.i348 to i32
  br label %ss_compare.exit356

ss_compare.exit356:                               ; preds = %.thread.i349, %bb.az
  %i.np = phi i32 [ %i.no, %bb.az ], [ %i.nn, %.thread.i349 ]
  %i.nq = icmp eq i32 %i.np, 0
  br i1 %i.nq, label %bb.ba, label %ss_compare.exit356.thread

bb.ba:                                            ; preds = %ss_mergeforward.exit._crit_edge, %ss_compare.exit356
  %i.nr = phi i32 [ %.pre664, %ss_mergeforward.exit._crit_edge ], [ %i.ml, %ss_compare.exit356 ]
  %i.ns = xor i32 %i.nr, -1
  store i32 %i.ns, ptr %.0229, align 4, !tbaa !8
  br label %ss_compare.exit356.thread

ss_compare.exit356.thread:                        ; preds = %bb.ay, %bb.ba, %ss_compare.exit356, %bb.av
  %i.nt = and i32 %.0215, 4
  %.not266 = icmp eq i32 %i.nt, 0
  br i1 %.not266, label %ss_compare.exit370.thread, label %bb.bb

bb.bb:                                            ; preds = %ss_compare.exit356.thread
  %i.nu = getelementptr inbounds i8, ptr %.0233.ph, i64 -4
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !8  ; 2 uses
  %.lobit431 = ashr i32 %i.nv, 31
  %i.nw = xor i32 %.lobit431, %i.nv
  %i.nx = zext nneg i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.nx ; 2 uses
  %i.nz = load i32, ptr %.0233.ph, align 4, !tbaa !8 ; 2 uses
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds [4 x i8], ptr %1, i64 %i.oa ; 2 uses
  %.val286 = load i32, ptr %i.ny, align 4, !tbaa !8 ; 2 uses
  %i.oc = getelementptr i8, ptr %i.ny, i64 4
  %.val287 = load i32, ptr %i.oc, align 4, !tbaa !8 ; 2 uses
  %.val288 = load i32, ptr %i.ob, align 4, !tbaa !8 ; 2 uses
  %i.od = getelementptr i8, ptr %i.ob, i64 4
  %.val289 = load i32, ptr %i.od, align 4, !tbaa !8 ; 2 uses
  %i.oe = sext i32 %.val286 to i64
  %i.of = getelementptr inbounds i8, ptr %i.b, i64 %i.oe ; 2 uses
  %i.og = sext i32 %.val288 to i64
  %i.oh = getelementptr inbounds i8, ptr %i.b, i64 %i.og ; 2 uses
  %i.oi = sext i32 %.val287 to i64
  %i.oj = getelementptr i8, ptr %0, i64 %i.oi
  %i.ok = getelementptr i8, ptr %i.oj, i64 2
  %i.ol = sext i32 %.val289 to i64
  %i.om = getelementptr i8, ptr %0, i64 %i.ol
  %i.on = getelementptr i8, ptr %i.om, i64 2
  %i.oo = icmp slt i32 %.val286, %.val287         ; 2 uses
  %i.op = icmp slt i32 %.val288, %.val289         ; 2 uses
  %or.cond6.i357 = select i1 %i.oo, i1 %i.op, i1 false
  br i1 %or.cond6.i357, label %.lr.ph.i366, label %.critedge.i358

.lr.ph.i366:                                      ; preds = %bb.bb, %bb.bc
  %.08.i367 = phi ptr [ %i.ou, %bb.bc ], [ %i.oh, %bb.bb ] ; 3 uses
  %.0257.i368 = phi ptr [ %i.ot, %bb.bc ], [ %i.of, %bb.bb ] ; 2 uses
  %i.oq = load i8, ptr %.0257.i368, align 1, !tbaa !9 ; 2 uses
  %i.or = load i8, ptr %.08.i367, align 1, !tbaa !9
  %i.os = icmp eq i8 %i.oq, %i.or
  br i1 %i.os, label %bb.bc, label %.thread.i363

bb.bc:                                            ; preds = %.lr.ph.i366
  %i.ot = getelementptr inbounds nuw i8, ptr %.0257.i368, i64 1 ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.08.i367, i64 1 ; 3 uses
  %i.ov = icmp ult ptr %i.ot, %i.ok               ; 2 uses
  %i.ow = icmp ult ptr %i.ou, %i.on               ; 2 uses
  %or.cond.i369 = select i1 %i.ov, i1 %i.ow, i1 false
  br i1 %or.cond.i369, label %.lr.ph.i366, label %.critedge.i358, !llvm.loop !23

.critedge.i358:                                   ; preds = %bb.bc, %bb.bb
  %.025.lcssa.i359 = phi ptr [ %i.of, %bb.bb ], [ %i.ot, %bb.bc ]
  %.0.lcssa.i360 = phi ptr [ %i.oh, %bb.bb ], [ %i.ou, %bb.bc ]
  %.lcssa5.i361 = phi i1 [ %i.oo, %bb.bb ], [ %i.ov, %bb.bc ]
  %.lcssa.i362 = phi i1 [ %i.op, %bb.bb ], [ %i.ow, %bb.bc ] ; 2 uses
  br i1 %.lcssa5.i361, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.critedge.i358
  br i1 %.lcssa.i362, label %..thread.i363_crit_edge, label %ss_compare.exit370.thread

..thread.i363_crit_edge:                          ; preds = %bb.bd
  %.pre665 = load i8, ptr %.025.lcssa.i359, align 1, !tbaa !9
  br label %.thread.i363

.thread.i363:                                     ; preds = %.lr.ph.i366, %..thread.i363_crit_edge
  %i.ox = phi i8 [ %.pre665, %..thread.i363_crit_edge ], [ %i.oq, %.lr.ph.i366 ]
  %.0.lcssa2328.i365 = phi ptr [ %.0.lcssa.i360, %..thread.i363_crit_edge ], [ %.08.i367, %.lr.ph.i366 ]
  %i.oy = zext i8 %i.ox to i32
  %i.oz = load i8, ptr %.0.lcssa2328.i365, align 1, !tbaa !9
  %i.pa = zext i8 %i.oz to i32
  %i.pb = sub nsw i32 %i.oy, %i.pa
  br label %ss_compare.exit370

bb.be:                                            ; preds = %.critedge.i358
  %i.pc = sext i1 %.lcssa.i362 to i32
  br label %ss_compare.exit370

ss_compare.exit370:                               ; preds = %.thread.i363, %bb.be
  %i.pd = phi i32 [ %i.pc, %bb.be ], [ %i.pb, %.thread.i363 ]
  %i.pe = icmp eq i32 %i.pd, 0
  br i1 %i.pe, label %bb.bf, label %ss_compare.exit370.thread

bb.bf:                                            ; preds = %ss_compare.exit370
  %i.pf = xor i32 %i.nz, -1
  store i32 %i.pf, ptr %.0233.ph, align 4, !tbaa !8
  br label %ss_compare.exit370.thread

ss_compare.exit370.thread:                        ; preds = %bb.bd, %ss_compare.exit356.thread, %ss_compare.exit370, %bb.bf
  %i.pg = icmp eq i32 %.0217, 0
  br i1 %i.pg, label %bb.ch, label %bb.bg

bb.bg:                                            ; preds = %ss_compare.exit370.thread
  %i.ph = add nsw i32 %.0217, -1                  ; 2 uses
  %i.pi = sext i32 %i.ph to i64
  %i.pj = getelementptr inbounds [32 x i8], ptr %7, i64 %i.pi ; 4 uses
  %i.pk = load ptr, ptr %i.pj, align 16, !tbaa !180
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !182
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.po = load ptr, ptr %i.pn, align 16, !tbaa !183
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pj, i64 24
  %i.pq = load i32, ptr %i.pp, align 8, !tbaa !184
  br label %.backedge.outer.backedge
end_hunk_5
begin_hunk_6_@ss_swapmerge:bb.a
  %.012.i.ph = phi i32 [ %.1223, %bb.bl ], [ %i.rt, %middle.block ]
  %.0811.i.ph = phi ptr [ %.0231, %bb.bl ], [ %i.rv, %middle.block ]
  %.0910.i.ph = phi ptr [ %i.rr, %bb.bl ], [ %i.rw, %middle.block ]
  br label %.lr.ph.i386

.lr.ph.i386:                                      ; preds = %.lr.ph.i386.preheader, %.lr.ph.i386
  %.012.i = phi i32 [ %i.sd, %.lr.ph.i386 ], [ %.012.i.ph, %.lr.ph.i386.preheader ] ; 2 uses
  %.0811.i = phi ptr [ %i.sf, %.lr.ph.i386 ], [ %.0811.i.ph, %.lr.ph.i386.preheader ] ; 3 uses
  %.0910.i = phi ptr [ %i.se, %.lr.ph.i386 ], [ %.0910.i.ph, %.lr.ph.i386.preheader ] ; 3 uses
  %i.sb = load i32, ptr %.0910.i, align 4, !tbaa !8
  %i.sc = load i32, ptr %.0811.i, align 4, !tbaa !8
  store i32 %i.sc, ptr %.0910.i, align 4, !tbaa !8
  store i32 %i.sb, ptr %.0811.i, align 4, !tbaa !8
  %i.sd = add nsw i32 %.012.i, -1
  %i.se = getelementptr inbounds nuw i8, ptr %.0910.i, i64 4
  %i.sf = getelementptr inbounds nuw i8, ptr %.0811.i, i64 4
  %i.sg = icmp samesign ugt i32 %.012.i, 1
  br i1 %i.sg, label %.lr.ph.i386, label %ss_blockswap.exit, !llvm.loop !200

ss_blockswap.exit:                                ; preds = %.lr.ph.i386, %middle.block
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %.0231, i64 %i.rp ; 5 uses
  %i.si = icmp ult ptr %i.sh, %.0233.ph
  br i1 %i.si, label %bb.bm, label %.loopexit

bb.bm:                                            ; preds = %ss_blockswap.exit
  %i.sj = load i32, ptr %i.sh, align 4, !tbaa !8  ; 2 uses
  %i.sk = icmp slt i32 %i.sj, 0
  br i1 %i.sk, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.sl = xor i32 %i.sj, -1
  store i32 %i.sl, ptr %i.sh, align 4, !tbaa !8
  %i.sm = icmp ult ptr %.0229, %i.rr
  br i1 %i.sm, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.bn, %.preheader
  %.0226 = phi ptr [ %i.sn, %.preheader ], [ %.0231, %bb.bn ]
  %i.sn = getelementptr inbounds i8, ptr %.0226, i64 -4 ; 4 uses
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !8
  %i.sp = icmp slt i32 %i.so, 0
  br i1 %i.sp, label %.preheader, label %.loopexit.loopexit, !llvm.loop !201

bb.bo:                                            ; preds = %bb.bm
  %i.sq = icmp ult ptr %.0229, %i.rr
  br i1 %i.sq, label %.preheader439, label %.loopexit

.preheader439:                                    ; preds = %bb.bo, %.preheader439
  %.0224 = phi ptr [ %i.st, %.preheader439 ], [ %.0231, %bb.bo ] ; 4 uses
  %i.sr = load i32, ptr %.0224, align 4, !tbaa !8
  %i.ss = icmp slt i32 %i.sr, 0
  %i.st = getelementptr inbounds nuw i8, ptr %.0224, i64 4
  br i1 %i.ss, label %.preheader439, label %.loopexit.loopexit550, !llvm.loop !202

.loopexit.loopexit:                               ; preds = %.preheader
  %.pre671 = ptrtoint ptr %i.sn to i64
  %.pre672 = sub i64 %.pre671, %i.ih
  br label %.loopexit

.loopexit.loopexit550:                            ; preds = %.preheader439
  %.pre674 = ptrtoint ptr %.0224 to i64
  %.pre676 = sub i64 %i.c, %.pre674
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit550, %.loopexit.loopexit, %bb.bn, %bb.bo, %ss_blockswap.exit
  %.pre-phi677 = phi i64 [ %.pre676, %.loopexit.loopexit550 ], [ %i.e, %.loopexit.loopexit ], [ %i.e, %bb.bn ], [ %i.e, %bb.bo ], [ %i.e, %ss_blockswap.exit ]
  %.pre-phi673 = phi i64 [ %i.ii, %.loopexit.loopexit550 ], [ %.pre672, %.loopexit.loopexit ], [ %i.ii, %bb.bn ], [ %i.ii, %bb.bo ], [ %i.ii, %ss_blockswap.exit ]
  %.2228 = phi ptr [ %.0231, %.loopexit.loopexit550 ], [ %i.sn, %.loopexit.loopexit ], [ %.0231, %bb.bn ], [ %.0231, %bb.bo ], [ %.0231, %ss_blockswap.exit ] ; 2 uses
  %.1225 = phi ptr [ %.0224, %.loopexit.loopexit550 ], [ %.0231, %.loopexit.loopexit ], [ %.0231, %bb.bn ], [ %.0231, %bb.bo ], [ %.0231, %ss_blockswap.exit ] ; 3 uses
  %.1 = phi i32 [ 2, %.loopexit.loopexit550 ], [ 5, %.loopexit.loopexit ], [ 1, %bb.bn ], [ 0, %bb.bo ], [ 0, %ss_blockswap.exit ] ; 5 uses
  %.not262 = icmp sgt i64 %.pre-phi673, %.pre-phi677
  %i.su = and i32 %.0215, 3                       ; 2 uses
  br i1 %.not262, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.loopexit
  %i.sv = sext i32 %.0217 to i64
  %i.sw = getelementptr inbounds [32 x i8], ptr %7, i64 %i.sv ; 4 uses
  store ptr %.1225, ptr %i.sw, align 16, !tbaa !180
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  store ptr %i.sh, ptr %i.sx, align 8, !tbaa !182
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
  store ptr %.0233.ph, ptr %i.sy, align 16, !tbaa !183
  %i.sz = and i32 %.1, 3
  %i.ta = and i32 %.0215, 4
  %i.tb = or disjoint i32 %i.sz, %i.ta
  %i.tc = add nsw i32 %.0217, 1
  %i.td = getelementptr inbounds nuw i8, ptr %i.sw, i64 24
  store i32 %i.tb, ptr %i.td, align 8, !tbaa !184
  %i.te = and i32 %.1, 4
  %i.tf = or disjoint i32 %i.te, %i.su
  br label %.backedge.outer.backedge

bb.bq:                                            ; preds = %.loopexit
  %i.tg = and i32 %.1, 2
  %.not263 = icmp ne i32 %i.tg, 0
  %i.th = icmp eq ptr %.1225, %.0231
  %or.cond270 = and i1 %i.th, %.not263
  %i.ti = xor i32 %.1, 6
  %.2 = select i1 %or.cond270, i32 %i.ti, i32 %.1 ; 2 uses
  %i.tj = sext i32 %.0217 to i64
  %i.tk = getelementptr inbounds [32 x i8], ptr %7, i64 %i.tj ; 4 uses
  store ptr %.0229, ptr %i.tk, align 16, !tbaa !180
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  store ptr %i.rr, ptr %i.tl, align 8, !tbaa !182
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  store ptr %.2228, ptr %i.tm, align 16, !tbaa !183
  %i.tn = and i32 %.2, 4
  %i.to = or disjoint i32 %i.tn, %i.su
  %i.tp = add nsw i32 %.0217, 1
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tk, i64 24
  store i32 %i.to, ptr %i.tq, align 8, !tbaa !184
  %i.tr = and i32 %.2, 3
  %i.ts = and i32 %.0215, 4
  %i.tt = or disjoint i32 %i.tr, %i.ts
  br label %.backedge

._crit_edge.thread:                               ; preds = %bb.bh, %._crit_edge
  %i.tu = getelementptr inbounds i8, ptr %.0231, i64 -4
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !8  ; 2 uses
  %.lobit432 = ashr i32 %i.tv, 31
  %i.tw = xor i32 %.lobit432, %i.tv
  %i.tx = zext nneg i32 %i.tw to i64
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.tx ; 2 uses
  %i.tz = load i32, ptr %.0231, align 4, !tbaa !8 ; 2 uses
  %i.ua = sext i32 %i.tz to i64
  %i.ub = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ua ; 2 uses
  %.val278 = load i32, ptr %i.ty, align 4, !tbaa !8 ; 2 uses
  %i.uc = getelementptr i8, ptr %i.ty, i64 4
  %.val279 = load i32, ptr %i.uc, align 4, !tbaa !8 ; 2 uses
  %.val280 = load i32, ptr %i.ub, align 4, !tbaa !8 ; 2 uses
  %i.ud = getelementptr i8, ptr %i.ub, i64 4
  %.val281 = load i32, ptr %i.ud, align 4, !tbaa !8 ; 2 uses
  %i.ue = sext i32 %.val278 to i64
  %i.uf = getelementptr inbounds i8, ptr %i.b, i64 %i.ue ; 2 uses
  %i.ug = sext i32 %.val280 to i64
  %i.uh = getelementptr inbounds i8, ptr %i.b, i64 %i.ug ; 2 uses
  %i.ui = sext i32 %.val279 to i64
  %i.uj = getelementptr i8, ptr %0, i64 %i.ui
  %i.uk = getelementptr i8, ptr %i.uj, i64 2
  %i.ul = sext i32 %.val281 to i64
  %i.um = getelementptr i8, ptr %0, i64 %i.ul
  %i.un = getelementptr i8, ptr %i.um, i64 2
  %i.uo = icmp slt i32 %.val278, %.val279         ; 2 uses
  %i.up = icmp slt i32 %.val280, %.val281         ; 2 uses
  %or.cond6.i387 = select i1 %i.uo, i1 %i.up, i1 false
  br i1 %or.cond6.i387, label %.lr.ph.i396, label %.critedge.i388

.lr.ph.i396:                                      ; preds = %._crit_edge.thread, %bb.br
  %.08.i397 = phi ptr [ %i.uu, %bb.br ], [ %i.uh, %._crit_edge.thread ] ; 3 uses
  %.0257.i398 = phi ptr [ %i.ut, %bb.br ], [ %i.uf, %._crit_edge.thread ] ; 2 uses
  %i.uq = load i8, ptr %.0257.i398, align 1, !tbaa !9 ; 2 uses
  %i.ur = load i8, ptr %.08.i397, align 1, !tbaa !9
  %i.us = icmp eq i8 %i.uq, %i.ur
  br i1 %i.us, label %bb.br, label %.thread.i393

bb.br:                                            ; preds = %.lr.ph.i396
  %i.ut = getelementptr inbounds nuw i8, ptr %.0257.i398, i64 1 ; 3 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %.08.i397, i64 1 ; 3 uses
  %i.uv = icmp ult ptr %i.ut, %i.uk               ; 2 uses
  %i.uw = icmp ult ptr %i.uu, %i.un               ; 2 uses
  %or.cond.i399 = select i1 %i.uv, i1 %i.uw, i1 false
  br i1 %or.cond.i399, label %.lr.ph.i396, label %.critedge.i388, !llvm.loop !23

.critedge.i388:                                   ; preds = %bb.br, %._crit_edge.thread
  %.025.lcssa.i389 = phi ptr [ %i.uf, %._crit_edge.thread ], [ %i.ut, %bb.br ]
  %.0.lcssa.i390 = phi ptr [ %i.uh, %._crit_edge.thread ], [ %i.uu, %bb.br ]
  %.lcssa5.i391 = phi i1 [ %i.uo, %._crit_edge.thread ], [ %i.uv, %bb.br ]
  %.lcssa.i392 = phi i1 [ %i.up, %._crit_edge.thread ], [ %i.uw, %bb.br ] ; 2 uses
  br i1 %.lcssa5.i391, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %.critedge.i388
  br i1 %.lcssa.i392, label %..thread.i393_crit_edge, label %ss_compare.exit400.thread

..thread.i393_crit_edge:                          ; preds = %bb.bs
  %.pre667 = load i8, ptr %.025.lcssa.i389, align 1, !tbaa !9
  br label %.thread.i393

.thread.i393:                                     ; preds = %.lr.ph.i396, %..thread.i393_crit_edge
  %i.ux = phi i8 [ %.pre667, %..thread.i393_crit_edge ], [ %i.uq, %.lr.ph.i396 ]
  %.0.lcssa2328.i395 = phi ptr [ %.0.lcssa.i390, %..thread.i393_crit_edge ], [ %.08.i397, %.lr.ph.i396 ]
  %i.uy = zext i8 %i.ux to i32
  %i.uz = load i8, ptr %.0.lcssa2328.i395, align 1, !tbaa !9
  %i.va = zext i8 %i.uz to i32
  %i.vb = sub nsw i32 %i.uy, %i.va
  br label %ss_compare.exit400

bb.bt:                                            ; preds = %.critedge.i388
  %i.vc = sext i1 %.lcssa.i392 to i32
  br label %ss_compare.exit400

ss_compare.exit400:                               ; preds = %.thread.i393, %bb.bt
  %i.vd = phi i32 [ %i.vc, %bb.bt ], [ %i.vb, %.thread.i393 ]
  %i.ve = icmp eq i32 %i.vd, 0
  br i1 %i.ve, label %bb.bu, label %ss_compare.exit400.thread

bb.bu:                                            ; preds = %ss_compare.exit400
  %i.vf = xor i32 %i.tz, -1
  store i32 %i.vf, ptr %.0231, align 4, !tbaa !8
  br label %ss_compare.exit400.thread

ss_compare.exit400.thread:                        ; preds = %bb.bs, %ss_compare.exit400, %bb.bu
  %.not259 = trunc i32 %.0215 to i1
  br i1 %.not259, label %ss_compare.exit400.thread._crit_edge, label %bb.bv

ss_compare.exit400.thread._crit_edge:             ; preds = %ss_compare.exit400.thread
  %.pre669 = load i32, ptr %.0229, align 4, !tbaa !8
  br label %bb.ca

bb.bv:                                            ; preds = %ss_compare.exit400.thread
  %i.vg = and i32 %.0215, 2
  %.not260 = icmp eq i32 %i.vg, 0
  br i1 %.not260, label %ss_compare.exit414.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.vh = getelementptr inbounds i8, ptr %.0229, i64 -4
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !8  ; 2 uses
  %.lobit433 = ashr i32 %i.vi, 31
  %i.vj = xor i32 %.lobit433, %i.vi
  %i.vk = zext nneg i32 %i.vj to i64
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vk ; 2 uses
  %i.vm = load i32, ptr %.0229, align 4, !tbaa !8 ; 2 uses
  %i.vn = sext i32 %i.vm to i64
  %i.vo = getelementptr inbounds [4 x i8], ptr %1, i64 %i.vn ; 2 uses
  %.val274 = load i32, ptr %i.vl, align 4, !tbaa !8 ; 2 uses
  %i.vp = getelementptr i8, ptr %i.vl, i64 4
  %.val275 = load i32, ptr %i.vp, align 4, !tbaa !8 ; 2 uses
  %.val276 = load i32, ptr %i.vo, align 4, !tbaa !8 ; 2 uses
  %i.vq = getelementptr i8, ptr %i.vo, i64 4
  %.val277 = load i32, ptr %i.vq, align 4, !tbaa !8 ; 2 uses
  %i.vr = sext i32 %.val274 to i64
  %i.vs = getelementptr inbounds i8, ptr %i.b, i64 %i.vr ; 2 uses
  %i.vt = sext i32 %.val276 to i64
  %i.vu = getelementptr inbounds i8, ptr %i.b, i64 %i.vt ; 2 uses
  %i.vv = sext i32 %.val275 to i64
  %i.vw = getelementptr i8, ptr %0, i64 %i.vv
  %i.vx = getelementptr i8, ptr %i.vw, i64 2
  %i.vy = sext i32 %.val277 to i64
  %i.vz = getelementptr i8, ptr %0, i64 %i.vy
  %i.wa = getelementptr i8, ptr %i.vz, i64 2
  %i.wb = icmp slt i32 %.val274, %.val275         ; 2 uses
  %i.wc = icmp slt i32 %.val276, %.val277         ; 2 uses
  %or.cond6.i401 = select i1 %i.wb, i1 %i.wc, i1 false
  br i1 %or.cond6.i401, label %.lr.ph.i410, label %.critedge.i402

.lr.ph.i410:                                      ; preds = %bb.bw, %bb.bx
  %.08.i411 = phi ptr [ %i.wh, %bb.bx ], [ %i.vu, %bb.bw ] ; 3 uses
  %.0257.i412 = phi ptr [ %i.wg, %bb.bx ], [ %i.vs, %bb.bw ] ; 2 uses
  %i.wd = load i8, ptr %.0257.i412, align 1, !tbaa !9 ; 2 uses
  %i.we = load i8, ptr %.08.i411, align 1, !tbaa !9
  %i.wf = icmp eq i8 %i.wd, %i.we
  br i1 %i.wf, label %bb.bx, label %.thread.i407

bb.bx:                                            ; preds = %.lr.ph.i410
  %i.wg = getelementptr inbounds nuw i8, ptr %.0257.i412, i64 1 ; 3 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %.08.i411, i64 1 ; 3 uses
  %i.wi = icmp ult ptr %i.wg, %i.vx               ; 2 uses
  %i.wj = icmp ult ptr %i.wh, %i.wa               ; 2 uses
  %or.cond.i413 = select i1 %i.wi, i1 %i.wj, i1 false
  br i1 %or.cond.i413, label %.lr.ph.i410, label %.critedge.i402, !llvm.loop !23

.critedge.i402:                                   ; preds = %bb.bx, %bb.bw
  %.025.lcssa.i403 = phi ptr [ %i.vs, %bb.bw ], [ %i.wg, %bb.bx ]
  %.0.lcssa.i404 = phi ptr [ %i.vu, %bb.bw ], [ %i.wh, %bb.bx ]
  %.lcssa5.i405 = phi i1 [ %i.wb, %bb.bw ], [ %i.wi, %bb.bx ]
  %.lcssa.i406 = phi i1 [ %i.wc, %bb.bw ], [ %i.wj, %bb.bx ] ; 2 uses
  br i1 %.lcssa5.i405, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.critedge.i402
  br i1 %.lcssa.i406, label %..thread.i407_crit_edge, label %ss_compare.exit414.thread

..thread.i407_crit_edge:                          ; preds = %bb.by
  %.pre668 = load i8, ptr %.025.lcssa.i403, align 1, !tbaa !9
  br label %.thread.i407

.thread.i407:                                     ; preds = %.lr.ph.i410, %..thread.i407_crit_edge
  %i.wk = phi i8 [ %.pre668, %..thread.i407_crit_edge ], [ %i.wd, %.lr.ph.i410 ]
  %.0.lcssa2328.i409 = phi ptr [ %.0.lcssa.i404, %..thread.i407_crit_edge ], [ %.08.i411, %.lr.ph.i410 ]
  %i.wl = zext i8 %i.wk to i32
  %i.wm = load i8, ptr %.0.lcssa2328.i409, align 1, !tbaa !9
  %i.wn = zext i8 %i.wm to i32
  %i.wo = sub nsw i32 %i.wl, %i.wn
  br label %ss_compare.exit414

bb.bz:                                            ; preds = %.critedge.i402
  %i.wp = sext i1 %.lcssa.i406 to i32
  br label %ss_compare.exit414

ss_compare.exit414:                               ; preds = %.thread.i407, %bb.bz
  %i.wq = phi i32 [ %i.wp, %bb.bz ], [ %i.wo, %.thread.i407 ]
  %i.wr = icmp eq i32 %i.wq, 0
  br i1 %i.wr, label %bb.ca, label %ss_compare.exit414.thread

bb.ca:                                            ; preds = %ss_compare.exit400.thread._crit_edge, %ss_compare.exit414
  %i.ws = phi i32 [ %.pre669, %ss_compare.exit400.thread._crit_edge ], [ %i.vm, %ss_compare.exit414 ]
  %i.wt = xor i32 %i.ws, -1
  store i32 %i.wt, ptr %.0229, align 4, !tbaa !8
  br label %ss_compare.exit414.thread

ss_compare.exit414.thread:                        ; preds = %bb.by, %bb.ca, %ss_compare.exit414, %bb.bv
  %i.wu = and i32 %.0215, 4
  %.not261 = icmp eq i32 %i.wu, 0
  br i1 %.not261, label %ss_compare.exit428.thread, label %bb.cb

bb.cb:                                            ; preds = %ss_compare.exit414.thread
  %i.wv = getelementptr inbounds i8, ptr %.0233.ph, i64 -4
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !8  ; 2 uses
  %.lobit434 = ashr i32 %i.ww, 31
  %i.wx = xor i32 %.lobit434, %i.ww
  %i.wy = zext nneg i32 %i.wx to i64
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wy ; 2 uses
  %i.xa = load i32, ptr %.0233.ph, align 4, !tbaa !8 ; 2 uses
  %i.xb = sext i32 %i.xa to i64
  %i.xc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.xb ; 2 uses
  %.val = load i32, ptr %i.wz, align 4, !tbaa !8  ; 2 uses
  %i.xd = getelementptr i8, ptr %i.wz, i64 4
  %.val271 = load i32, ptr %i.xd, align 4, !tbaa !8 ; 2 uses
  %.val272 = load i32, ptr %i.xc, align 4, !tbaa !8 ; 2 uses
  %i.xe = getelementptr i8, ptr %i.xc, i64 4
  %.val273 = load i32, ptr %i.xe, align 4, !tbaa !8 ; 2 uses
  %i.xf = sext i32 %.val to i64
  %i.xg = getelementptr inbounds i8, ptr %i.b, i64 %i.xf ; 2 uses
  %i.xh = sext i32 %.val272 to i64
  %i.xi = getelementptr inbounds i8, ptr %i.b, i64 %i.xh ; 2 uses
  %i.xj = sext i32 %.val271 to i64
  %i.xk = getelementptr i8, ptr %0, i64 %i.xj
  %i.xl = getelementptr i8, ptr %i.xk, i64 2
  %i.xm = sext i32 %.val273 to i64
  %i.xn = getelementptr i8, ptr %0, i64 %i.xm
  %i.xo = getelementptr i8, ptr %i.xn, i64 2
  %i.xp = icmp slt i32 %.val, %.val271            ; 2 uses
  %i.xq = icmp slt i32 %.val272, %.val273         ; 2 uses
  %or.cond6.i415 = select i1 %i.xp, i1 %i.xq, i1 false
  br i1 %or.cond6.i415, label %.lr.ph.i424, label %.critedge.i416

.lr.ph.i424:                                      ; preds = %bb.cb, %bb.cc
  %.08.i425 = phi ptr [ %i.xv, %bb.cc ], [ %i.xi, %bb.cb ] ; 3 uses
  %.0257.i426 = phi ptr [ %i.xu, %bb.cc ], [ %i.xg, %bb.cb ] ; 2 uses
  %i.xr = load i8, ptr %.0257.i426, align 1, !tbaa !9 ; 2 uses
  %i.xs = load i8, ptr %.08.i425, align 1, !tbaa !9
  %i.xt = icmp eq i8 %i.xr, %i.xs
  br i1 %i.xt, label %bb.cc, label %.thread.i421

bb.cc:                                            ; preds = %.lr.ph.i424
  %i.xu = getelementptr inbounds nuw i8, ptr %.0257.i426, i64 1 ; 3 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %.08.i425, i64 1 ; 3 uses
  %i.xw = icmp ult ptr %i.xu, %i.xl               ; 2 uses
  %i.xx = icmp ult ptr %i.xv, %i.xo               ; 2 uses
  %or.cond.i427 = select i1 %i.xw, i1 %i.xx, i1 false
  br i1 %or.cond.i427, label %.lr.ph.i424, label %.critedge.i416, !llvm.loop !23

.critedge.i416:                                   ; preds = %bb.cc, %bb.cb
  %.025.lcssa.i417 = phi ptr [ %i.xg, %bb.cb ], [ %i.xu, %bb.cc ]
  %.0.lcssa.i418 = phi ptr [ %i.xi, %bb.cb ], [ %i.xv, %bb.cc ]
  %.lcssa5.i419 = phi i1 [ %i.xp, %bb.cb ], [ %i.xw, %bb.cc ]
  %.lcssa.i420 = phi i1 [ %i.xq, %bb.cb ], [ %i.xx, %bb.cc ] ; 2 uses
  br i1 %.lcssa5.i419, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.critedge.i416
  br i1 %.lcssa.i420, label %..thread.i421_crit_edge, label %ss_compare.exit428.thread

..thread.i421_crit_edge:                          ; preds = %bb.cd
  %.pre670 = load i8, ptr %.025.lcssa.i417, align 1, !tbaa !9
  br label %.thread.i421

.thread.i421:                                     ; preds = %.lr.ph.i424, %..thread.i421_crit_edge
  %i.xy = phi i8 [ %.pre670, %..thread.i421_crit_edge ], [ %i.xr, %.lr.ph.i424 ]
  %.0.lcssa2328.i423 = phi ptr [ %.0.lcssa.i418, %..thread.i421_crit_edge ], [ %.08.i425, %.lr.ph.i424 ]
  %i.xz = zext i8 %i.xy to i32
  %i.ya = load i8, ptr %.0.lcssa2328.i423, align 1, !tbaa !9
  %i.yb = zext i8 %i.ya to i32
  %i.yc = sub nsw i32 %i.xz, %i.yb
  br label %ss_compare.exit428

bb.ce:                                            ; preds = %.critedge.i416
  %i.yd = sext i1 %.lcssa.i420 to i32
  br label %ss_compare.exit428

ss_compare.exit428:                               ; preds = %.thread.i421, %bb.ce
  %i.ye = phi i32 [ %i.yd, %bb.ce ], [ %i.yc, %.thread.i421 ]
  %i.yf = icmp eq i32 %i.ye, 0
  br i1 %i.yf, label %bb.cf, label %ss_compare.exit428.thread

bb.cf:                                            ; preds = %ss_compare.exit428
  %i.yg = xor i32 %i.xa, -1
  store i32 %i.yg, ptr %.0233.ph, align 4, !tbaa !8
  br label %ss_compare.exit428.thread

ss_compare.exit428.thread:                        ; preds = %bb.cd, %ss_compare.exit414.thread, %ss_compare.exit428, %bb.cf
  %i.yh = icmp eq i32 %.0217, 0
  br i1 %i.yh, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %ss_compare.exit428.thread
  %i.yi = add nsw i32 %.0217, -1                  ; 2 uses
  %i.yj = sext i32 %i.yi to i64
  %i.yk = getelementptr inbounds [32 x i8], ptr %7, i64 %i.yj ; 4 uses
  %i.yl = load ptr, ptr %i.yk, align 16, !tbaa !180
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yk, i64 8
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !182
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yk, i64 16
  %i.yp = load ptr, ptr %i.yo, align 16, !tbaa !183
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yk, i64 24
  %i.yr = load i32, ptr %i.yq, align 8, !tbaa !184
  br label %.backedge.outer.backedge
end_hunk_6
