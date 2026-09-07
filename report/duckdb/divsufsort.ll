Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/divsufsort?download=true
inline.NumInlined: 85
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN11duckdb_zstd10divsufsortEPKhPiii:bb.a
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
  %i.ag = load i32, ptr %.084102.i, align 4, !tbaa !7 ; 6 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  %i.ai = xor i32 %i.ag, -1
  store i32 %i.ai, ptr %.084102.i, align 4, !tbaa !7
  br i1 %i.ah, label %bb.g, label %bb.n

bb.g:                                             ; preds = %.lr.ph.i
  %i.aj = add nsw i32 %i.ag, -1                   ; 2 uses
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !8   ; 2 uses
  %i.an = zext i8 %i.am to i32                    ; 3 uses
  %.not96.i = icmp eq i32 %i.ag, 1
  br i1 %.not96.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = zext nneg i32 %i.ag to i64
  %i.ap = getelementptr i8, ptr %0, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 -2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8
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
  store i32 %i.ay, ptr %i.bb, align 4, !tbaa !7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bc = or disjoint i32 %i.u, %i.an
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !7
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bg
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.179.i = phi ptr [ %i.bh, %bb.l ], [ %.078100.i, %bb.i ] ; 2 uses
  %.1.i = phi i32 [ %i.an, %bb.l ], [ %.0101.i, %bb.i ]
  %i.bi = getelementptr inbounds i8, ptr %.179.i, i64 -4
  store i32 %.076.i, ptr %.179.i, align 4, !tbaa !7
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i
  %.280.i = phi ptr [ %i.bi, %bb.m ], [ %.078100.i, %.lr.ph.i ]
  %.2.i = phi i32 [ %.1.i, %bb.m ], [ %.0101.i, %.lr.ph.i ]
  %.084.i = getelementptr inbounds i8, ptr %.084102.i, i64 -4 ; 2 uses
  %.not95.i = icmp ugt ptr %i.aa, %.084.i
  br i1 %.not95.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %bb.n, %.preheader.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not120.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not120.i, label %.lr.ph108.i, label %.preheader.i, !llvm.loop !15

.lr.ph108.i:                                      ; preds = %._crit_edge.i, %bb.f
  %i.bj = add nsw i32 %2, -1                      ; 2 uses
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !8   ; 3 uses
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bq ; 2 uses
  %i.bs = zext nneg i32 %2 to i64                 ; 2 uses
  %i.bt = getelementptr i8, ptr %0, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 -2
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !8
  %i.bw = icmp ult i8 %i.bv, %i.bm
  %i.bx = sub nsw i32 0, %2
  %i.by = select i1 %i.bw, i32 %i.bx, i32 %i.bj
  store i32 %i.by, ptr %i.br, align 4, !tbaa !7
  %.idx111.i = shl nuw nsw i64 %i.bs, 2
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %.idx111.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.cb = zext i8 %i.bm to i32
  br label %bb.o

bb.o:                                             ; preds = %bb.w, %.lr.ph108.i
  %.3106.i = phi i32 [ %i.cb, %.lr.ph108.i ], [ %.5.i, %bb.w ] ; 4 uses
  %.381105.i = phi ptr [ %i.ca, %.lr.ph108.i ], [ %.583.i, %bb.w ] ; 3 uses
  %.085104.i = phi ptr [ %1, %.lr.ph108.i ], [ %i.dd, %bb.w ] ; 3 uses
  %i.cc = load i32, ptr %.085104.i, align 4, !tbaa !7 ; 5 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.ce = add nsw i32 %i.cc, -1                   ; 3 uses
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !8   ; 3 uses
  %i.ci = zext i8 %i.ch to i32                    ; 2 uses
  %i.cj = icmp eq i32 %i.ce, 0
  br i1 %i.cj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = zext nneg i32 %i.cc to i64
  %i.cl = getelementptr i8, ptr %0, i64 %i.ck
  %i.cm = getelementptr i8, ptr %i.cl, i64 -2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !8
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
  store i32 %i.ct, ptr %i.cv, align 4, !tbaa !7
  %i.cw = zext i8 %i.ch to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !7
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cz
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.482.i = phi ptr [ %i.da, %bb.t ], [ %.381105.i, %bb.s ] ; 2 uses
  %.4.i = phi i32 [ %i.ci, %bb.t ], [ %.3106.i, %bb.s ]
  %i.db = getelementptr inbounds nuw i8, ptr %.482.i, i64 4
  store i32 %.177.i, ptr %.482.i, align 4, !tbaa !7
  br label %bb.w

bb.v:                                             ; preds = %bb.o
  %i.dc = xor i32 %i.cc, -1
  store i32 %i.dc, ptr %.085104.i, align 4, !tbaa !7
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.583.i = phi ptr [ %i.db, %bb.u ], [ %.381105.i, %bb.v ]
  %.5.i = phi i32 [ %.4.i, %bb.u ], [ %.3106.i, %bb.v ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.085104.i, i64 4 ; 2 uses
  %i.de = icmp ult ptr %i.dd, %i.bz
  br i1 %i.de, label %bb.o, label %_ZN11duckdb_zstdL12construct_SAEPKhPiS2_S2_ii.exit, !llvm.loop !16

_ZN11duckdb_zstdL12construct_SAEPKhPiS2_S2_ii.exit: ; preds = %bb.w, %bb.e
  %.0 = phi i32 [ -2, %bb.e ], [ 0, %bb.w ]
  tail call void @free(ptr noundef %i.n) #8
  tail call void @free(ptr noundef %i.m) #8
  br label %bb.x

bb.x:                                             ; preds = %bb.b, %bb.a, %_ZN11duckdb_zstdL12construct_SAEPKhPiS2_S2_ii.exit, %bb.d, %bb.c
  %.035 = phi i32 [ %.0, %_ZN11duckdb_zstdL12construct_SAEPKhPiS2_S2_ii.exit ], [ -1, %bb.a ], [ 0, %bb.c ], [ 0, %bb.d ], [ %2, %bb.b ]
  ret i32 %.035
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 -2147483645, -2147483648) i32 @_ZN11duckdb_zstdL14sort_typeBstarEPKhPiS2_S2_ii(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr nofree noundef nonnull captures(none) initializes((0, 1024)) %2, ptr nofree noundef nonnull captures(none) initializes((0, 262144)) %3, i32 noundef range(i32 2, -2147483648) %4) unnamed_addr #3 {
.preheader339.preheader:
  %5 = alloca [64 x %struct.anon.1], align 16     ; 30 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %2, i8 0, i64 1024, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(262144) %3, i8 0, i64 262144, i1 false), !tbaa !7
  %i.a = add nsw i32 %4, -1                       ; 3 uses
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !8     ; 2 uses
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4, !tbaa !7
  %6 = zext i8 %i.d to i32
  br label %.lr.ph100

.preheader337.loopexit:                           ; preds = %.lr.ph
  %i.i = zext i8 %i.ak to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !7
  %.not32197 = icmp eq i32 %.4261418, 0
  br i1 %.not32197, label %.loopexit825, label %.lr.ph100, !llvm.loop !17

.lr.ph100:                                        ; preds = %.preheader339.preheader, %.preheader337.loopexit
  %.in = phi i32 [ %i.a, %.preheader339.preheader ], [ %.4261418, %.preheader337.loopexit ]
  %.0246425104 = phi i32 [ %4, %.preheader339.preheader ], [ %i.ad, %.preheader337.loopexit ] ; 2 uses
  %.0240426103 = phi i32 [ %6, %.preheader339.preheader ], [ %i.al, %.preheader337.loopexit ]
  %i.m = zext i32 %.in to i64
  br label %bb.b

bb.a:                                             ; preds = %bb.b
  %i.n = zext i8 %i.t to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.n ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !7
  %.not321 = icmp eq i64 %i.r, 0
  br i1 %.not321, label %.loopexit825, label %bb.b, !llvm.loop !18

bb.b:                                             ; preds = %.lr.ph100, %bb.a
  %.124199 = phi i32 [ %.0240426103, %.lr.ph100 ], [ %i.u, %bb.a ] ; 2 uses
  %indvars.iv98 = phi i64 [ %i.m, %.lr.ph100 ], [ %i.r, %bb.a ] ; 2 uses
  %i.r = add nsw i64 %indvars.iv98, -1            ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !8     ; 2 uses
  %i.u = zext i8 %i.t to i32                      ; 4 uses
  %.not289 = icmp sgt i32 %.124199, %i.u
  br i1 %.not289, label %bb.c, label %bb.a, !llvm.loop !18

bb.c:                                             ; preds = %bb.b
  %i.v = trunc nuw i64 %indvars.iv98 to i32       ; 2 uses
  %i.w = trunc nuw i64 %i.r to i32
  %i.x = shl nuw nsw i32 %i.u, 8
  %i.y = or i32 %i.x, %.124199
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !7
  %i.ad = add nsw i32 %.0246425104, -1            ; 5 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ae
  store i32 %i.w, ptr %i.af, align 4, !tbaa !7
  %i.ag = icmp sgt i32 %i.v, 1
  br i1 %i.ag, label %.lr.ph.preheader, label %.loopexit825

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ah = add nsw i32 %i.v, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.0419 = phi i32 [ %i.al, %bb.d ], [ %i.u, %.lr.ph.preheader ] ; 2 uses
  %.4261418 = phi i32 [ %i.as, %bb.d ], [ %i.ah, %.lr.ph.preheader ] ; 5 uses
  %i.ai = zext nneg i32 %.4261418 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8   ; 2 uses
  %i.al = zext i8 %i.ak to i32                    ; 4 uses
  %.not290 = icmp samesign ult i32 %.0419, %i.al
  br i1 %.not290, label %.preheader337.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.am = shl nuw nsw i32 %.0419, 8
  %i.an = or disjoint i32 %i.am, %i.al
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ao ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !7
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !7
  %i.as = add nsw i32 %.4261418, -1
  %i.at = icmp sgt i32 %.4261418, 0
  br i1 %i.at, label %.lr.ph, label %.loopexit825, !llvm.loop !19

.loopexit825:                                     ; preds = %bb.c, %.preheader337.loopexit, %bb.a, %bb.d
  %.1247.ph = phi i32 [ %.0246425104, %bb.a ], [ %i.ad, %bb.d ], [ %i.ad, %.preheader337.loopexit ], [ %i.ad, %bb.c ]
  br label %bb.e

.loopexit336:                                     ; preds = %.lr.ph430.prol.loopexit, %.lr.ph430, %bb.e
  %.7264.lcssa = phi i32 [ %i.bd, %bb.e ], [ %.lcssa335.unr, %.lr.ph430.prol.loopexit ], [ %i.bs, %.lr.ph430 ]
  %.1252.lcssa = phi i32 [ %.0251433, %bb.e ], [ %.lcssa336.unr, %.lr.ph430.prol.loopexit ], [ %i.bq, %.lr.ph430 ]
  %indvars.iv.next575 = add nuw nsw i64 %indvars.iv574, 1
  %exitcond582.not = icmp eq i64 %indvars.iv.next580, 256
  br i1 %exitcond582.not, label %bb.f, label %bb.e, !llvm.loop !20

bb.e:                                             ; preds = %.loopexit825, %.loopexit336
  %indvars.iv579 = phi i64 [ 0, %.loopexit825 ], [ %indvars.iv.next580, %.loopexit336 ] ; 9 uses
  %indvars.iv574 = phi i64 [ 1, %.loopexit825 ], [ %indvars.iv.next575, %.loopexit336 ] ; 5 uses
  %.0251433 = phi i32 [ 0, %.loopexit825 ], [ %.1252.lcssa, %.loopexit336 ] ; 4 uses
  %.6263432 = phi i32 [ 0, %.loopexit825 ], [ %.7264.lcssa, %.loopexit336 ] ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv579 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !7
  %i.aw = add nsw i32 %i.av, %.6263432
  %i.ax = add nsw i32 %.0251433, %.6263432
  store i32 %i.ax, ptr %i.au, align 4, !tbaa !7
  %i.ay = shl i64 %indvars.iv579, 8
  %i.az = and i64 %i.ay, 4294967040
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv579
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !7
  %i.bd = add nsw i32 %i.aw, %i.bc                ; 3 uses
  %indvars.iv.next580 = add nuw nsw i64 %indvars.iv579, 1 ; 2 uses
  %i.be = icmp samesign ult i64 %indvars.iv579, 255
  br i1 %i.be, label %.lr.ph430.preheader, label %.loopexit336

.lr.ph430.preheader:                              ; preds = %bb.e
  %.idx804 = shl nuw nsw i64 %indvars.iv579, 10
  %invariant.gep = getelementptr inbounds nuw i8, ptr %3, i64 %.idx804 ; 3 uses
  %invariant.gep915 = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv579 ; 3 uses
  %i.bf = and i64 %indvars.iv579, 1
  %lcmp.mod.not.not = icmp eq i64 %i.bf, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph430.prol, label %.lr.ph430.prol.loopexit

.lr.ph430.prol:                                   ; preds = %.lr.ph430.preheader
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv574 ; 2 uses
  %i.bg = load i32, ptr %gep.prol, align 4, !tbaa !7
  %i.bh = add nsw i32 %i.bg, %.0251433            ; 3 uses
  store i32 %i.bh, ptr %gep.prol, align 4, !tbaa !7
  %.idx805.prol = shl nuw nsw i64 %indvars.iv574, 10
  %gep916.prol = getelementptr inbounds nuw i8, ptr %invariant.gep915, i64 %.idx805.prol
  %i.bi = load i32, ptr %gep916.prol, align 4, !tbaa !7
  %i.bj = add nsw i32 %i.bi, %i.bd                ; 2 uses
  %indvars.iv.next577.prol = add nuw nsw i64 %indvars.iv574, 1
  br label %.lr.ph430.prol.loopexit

.lr.ph430.prol.loopexit:                          ; preds = %.lr.ph430.prol, %.lr.ph430.preheader
  %.lcssa336.unr = phi i32 [ poison, %.lr.ph430.preheader ], [ %i.bh, %.lr.ph430.prol ]
  %.lcssa335.unr = phi i32 [ poison, %.lr.ph430.preheader ], [ %i.bj, %.lr.ph430.prol ]
  %indvars.iv576.unr = phi i64 [ %indvars.iv574, %.lr.ph430.preheader ], [ %indvars.iv.next577.prol, %.lr.ph430.prol ]
  %.1252428.unr = phi i32 [ %.0251433, %.lr.ph430.preheader ], [ %i.bh, %.lr.ph430.prol ]
  %.7264427.unr = phi i32 [ %i.bd, %.lr.ph430.preheader ], [ %i.bj, %.lr.ph430.prol ]
  %i.bk = icmp eq i64 %indvars.iv579, 254
  br i1 %i.bk, label %.loopexit336, label %.lr.ph430

.lr.ph430:                                        ; preds = %.lr.ph430.prol.loopexit, %.lr.ph430
  %indvars.iv576 = phi i64 [ %indvars.iv.next577.1, %.lr.ph430 ], [ %indvars.iv576.unr, %.lr.ph430.prol.loopexit ] ; 4 uses
  %.1252428 = phi i32 [ %i.bq, %.lr.ph430 ], [ %.1252428.unr, %.lr.ph430.prol.loopexit ]
  %.7264427 = phi i32 [ %i.bs, %.lr.ph430 ], [ %.7264427.unr, %.lr.ph430.prol.loopexit ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv576 ; 2 uses
  %i.bl = load i32, ptr %gep, align 4, !tbaa !7
  %i.bm = add nsw i32 %i.bl, %.1252428            ; 2 uses
  store i32 %i.bm, ptr %gep, align 4, !tbaa !7
  %.idx805 = shl nuw nsw i64 %indvars.iv576, 10
  %gep916 = getelementptr inbounds nuw i8, ptr %invariant.gep915, i64 %.idx805
  %i.bn = load i32, ptr %gep916, align 4, !tbaa !7
  %i.bo = add nsw i32 %i.bn, %.7264427
  %indvars.iv.next577 = add nuw nsw i64 %indvars.iv576, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next577 ; 2 uses
  %i.bp = load i32, ptr %gep.1, align 4, !tbaa !7
  %i.bq = add nsw i32 %i.bp, %i.bm                ; 3 uses
  store i32 %i.bq, ptr %gep.1, align 4, !tbaa !7
  %.idx805.1 = shl nuw nsw i64 %indvars.iv.next577, 10
  %gep916.1 = getelementptr inbounds nuw i8, ptr %invariant.gep915, i64 %.idx805.1
  %i.br = load i32, ptr %gep916.1, align 4, !tbaa !7
  %i.bs = add nsw i32 %i.br, %i.bo                ; 2 uses
  %indvars.iv.next577.1 = add nuw nsw i64 %indvars.iv576, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next577.1, 256
  br i1 %exitcond.not.1, label %.loopexit336, label %.lr.ph430, !llvm.loop !21

bb.f:                                             ; preds = %.loopexit336
  %i.bt = sub nsw i32 %4, %.1247.ph               ; 20 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.bv = zext nneg i32 %4 to i64                 ; 3 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bv
  %i.bx = zext nneg i32 %i.bt to i64              ; 4 uses
  %i.by = sub nsw i64 0, %i.bx
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.by ; 14 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bx ; 27 uses
  %.not478 = icmp eq i32 %i.bt, 1
  br i1 %.not478, label %.preheader335.lr.ph, label %.lr.ph436.preheader

.lr.ph436.preheader:                              ; preds = %bb.g
  %i.cb = add nsw i32 %i.bt, -2                   ; 3 uses
  %i.cc = zext i32 %i.cb to i64                   ; 4 uses
  %i.cd = and i64 %i.cc, 1
  %lcmp.mod355.not.not = icmp eq i64 %i.cd, 0
  br i1 %lcmp.mod355.not.not, label %.lr.ph436.prol, label %.lr.ph436.prol.loopexit

.lr.ph436.prol:                                   ; preds = %.lr.ph436.preheader
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.cc
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !7
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %0, i64 %i.cg ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !8
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr i8, ptr %i.ch, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !8
  %i.cm = zext i8 %i.cl to i64
  %.idx288.prol = shl nuw nsw i64 %i.cj, 10
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 %.idx288.prol
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.cm ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !7
  %i.cq = add nsw i32 %i.cp, -1                   ; 2 uses
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !7
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cr
  store i32 %i.cb, ptr %i.cs, align 4, !tbaa !7
  %indvars.iv.next584.prol = add nsw i64 %i.cc, -1
  br label %.lr.ph436.prol.loopexit

.lr.ph436.prol.loopexit:                          ; preds = %.lr.ph436.prol, %.lr.ph436.preheader
  %indvars.iv583.unr = phi i64 [ %i.cc, %.lr.ph436.preheader ], [ %indvars.iv.next584.prol, %.lr.ph436.prol ]
  %i.ct = icmp eq i32 %i.cb, 0
  br i1 %i.ct, label %.preheader335.lr.ph, label %.lr.ph436

.lr.ph436:                                        ; preds = %.lr.ph436.prol.loopexit, %.lr.ph436
  %indvars.iv583 = phi i64 [ %indvars.iv.next584.1, %.lr.ph436 ], [ %indvars.iv583.unr, %.lr.ph436.prol.loopexit ] ; 4 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv583
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !7
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds i8, ptr %0, i64 %i.cw ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !8
  %i.cz = zext i8 %i.cy to i64
  %i.da = getelementptr i8, ptr %i.cx, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !8
  %i.dc = zext i8 %i.db to i64
  %.idx288 = shl nuw nsw i64 %i.cz, 10
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 %.idx288
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.dc ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !7
  %i.dg = add nsw i32 %i.df, -1                   ; 2 uses
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !7
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dh
  %i.dj = trunc nuw nsw i64 %indvars.iv583 to i32
  store i32 %i.dj, ptr %i.di, align 4, !tbaa !7
  %indvars.iv.next584 = add nsw i64 %indvars.iv583, -1 ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next584
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !7
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds i8, ptr %0, i64 %i.dm ; 2 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !8
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr i8, ptr %i.dn, i64 1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !8
  %i.ds = zext i8 %i.dr to i64
  %.idx288.1 = shl nuw nsw i64 %i.dp, 10
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 %.idx288.1
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.ds ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !7
  %i.dw = add nsw i32 %i.dv, -1                   ; 2 uses
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !7
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dx
  %i.dz = trunc nuw nsw i64 %indvars.iv.next584 to i32
  store i32 %i.dz, ptr %i.dy, align 4, !tbaa !7
  %indvars.iv.next584.1 = add nsw i64 %indvars.iv583, -2
  %.not919.1 = icmp eq i64 %indvars.iv.next584, 0
  br i1 %.not919.1, label %.preheader335.lr.ph, label %.lr.ph436, !llvm.loop !22

.preheader335.lr.ph:                              ; preds = %.lr.ph436.prol.loopexit, %.lr.ph436, %bb.g
  %i.ea = add nsw i32 %i.bt, -1                   ; 5 uses
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !7
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds i8, ptr %0, i64 %i.ee ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !8
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr i8, ptr %i.ef, i64 1
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !8
  %i.ek = zext i8 %i.ej to i64
  %.idx = shl nuw nsw i64 %i.eh, 10
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.ek ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !7
  %i.eo = add nsw i32 %i.en, -1                   ; 2 uses
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !7
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ep
  store i32 %i.ea, ptr %i.eq, align 4, !tbaa !7
  %i.er = shl nuw nsw i32 %i.bt, 1
  %i.es = sub nsw i32 %4, %i.er                   ; 6 uses
end_hunk_0
