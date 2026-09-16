Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jmemmgr?download=true
inline.NumInlined: 16
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@alloc_small:bb.a
  %i.ay = sub nuw nsw i64 32, %i.ax
  %.061.idx = select i1 %.not70, i64 0, i64 %i.ay
  %.061 = getelementptr inbounds nuw i8, ptr %i.av, i64 %.061.idx
  %i.az = getelementptr inbounds nuw i8, ptr %.164, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.061, i64 %i.au
  %i.bb = add i64 %i.au, %i.j
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !37
  %i.bc = getelementptr inbounds nuw i8, ptr %.164, i64 16
  %i.bd = sub i64 %i.at, %i.j
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !35
  ret ptr %i.ba
}

; Function Attrs: nounwind uwtable
define internal nonnull ptr @alloc_large(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = icmp ugt i64 %2, 1000000000
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 54, ptr %i.e, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 8, ptr %i.f, align 4, !tbaa !24
  %i.g = load ptr, ptr %0, align 8, !tbaa !19
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  tail call void %i.h(ptr noundef nonnull %0) #9, !inline_history !0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = add i64 %2, 31
  %i.j = and i64 %i.i, -32                        ; 2 uses
  %i.k = add i64 %i.j, 55                         ; 3 uses
  %i.l = icmp ugt i64 %i.k, 1000000000
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i32 54, ptr %i.n, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 44
  store i32 3, ptr %i.o, align 4, !tbaa !24
  %i.p = load ptr, ptr %0, align 8, !tbaa !19
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25
  tail call void %i.q(ptr noundef nonnull %0) #9, !inline_history !0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %or.cond = icmp ugt i32 %1, 1
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i32 14, ptr %i.s, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 44
  store i32 %1, ptr %i.t, align 4, !tbaa !24
  %i.u = load ptr, ptr %0, align 8, !tbaa !19
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25
  tail call void %i.v(ptr noundef nonnull %0) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.w = tail call ptr @jpeg_get_large(ptr noundef nonnull %0, i64 noundef %i.k) #9 ; 6 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store i32 54, ptr %i.z, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 44
  store i32 4, ptr %i.aa, align 4, !tbaa !24
  %i.ab = load ptr, ptr %0, align 8, !tbaa !19
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !25
  tail call void %i.ac(ptr noundef nonnull %0) #9, !inline_history !0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !30
  %i.af = add i64 %i.ae, %i.k
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ah = sext i32 %1 to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !39
  store ptr %i.aj, ptr %i.w, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.j, ptr %i.ak, align 8, !tbaa !42
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %i.al, align 8, !tbaa !43
  store ptr %i.w, ptr %i.ai, align 8, !tbaa !39
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = and i64 %i.an, 31                       ; 2 uses
  %.not = icmp eq i64 %i.ao, 0
  %i.ap = sub nuw nsw i64 32, %i.ao
  %.0.idx = select i1 %.not, i64 0, i64 %i.ap
  %.0 = getelementptr inbounds nuw i8, ptr %i.am, i64 %.0.idx
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal nonnull ptr @alloc_sarray(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44
  %.not = icmp eq i32 %i.d, 0
  %.in.v = select i1 %.not, i64 72, i64 296
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.e = load i32, ptr %.in, align 8, !tbaa !45   ; 3 uses
  %i.f = icmp sgt i32 %i.e, 8                     ; 3 uses
  %i.g = zext i32 %2 to i64
  %i.h = icmp ugt i32 %2, 1000000000
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i32 54, ptr %i.j, align 8, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  store i32 9, ptr %i.k, align 4, !tbaa !24
  %i.l = load ptr, ptr %0, align 8, !tbaa !19
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !25
  tail call void %i.m(ptr noundef nonnull %0) #9, !inline_history !0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.neg = select i1 %i.f, i64 4294967264, i64 4294967232
  %i.n = select i1 %i.f, i64 32, i64 64
  %i.o = add nuw nsw i64 %i.g, 4294967295
  %i.p = add nuw nsw i64 %i.o, %i.n
  %i.q = and i64 %i.p, %.neg                      ; 19 uses
  %i.r = zext i1 %i.f to i64                      ; 4 uses
  %i.s = shl nuw nsw i64 %i.q, %i.r               ; 2 uses
  %i.t = udiv i64 999999976, %i.s
  %i.u = icmp samesign ugt i64 %i.s, 999999976
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i32 70, ptr %i.w, align 8, !tbaa !23
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !25
  tail call void %i.x(ptr noundef nonnull %0) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = zext i32 %3 to i64                       ; 3 uses
  %.0106120 = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.y)
  %.0106 = trunc nuw nsw i64 %.0106120 to i32     ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i32 %.0106, ptr %i.z, align 8, !tbaa !46
  %i.aa = icmp slt i32 %i.e, 9
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = shl nuw nsw i64 %i.y, 3
  %i.ac = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %i.ab) ; 7 uses
  %.not153 = icmp eq i32 %3, 0
  br i1 %.not153, label %.loopexit121, label %.lr.ph150

.loopexit:                                        ; preds = %.lr.ph146.prol.loopexit, %.lr.ph146, %.lr.ph150
  %.1104.lcssa = phi i32 [ %.0103149, %.lr.ph150 ], [ %.lcssa.unr, %.lr.ph146.prol.loopexit ], [ %i.bc, %.lr.ph146 ] ; 2 uses
  %i.ad = icmp ult i32 %.1104.lcssa, %3
  br i1 %i.ad, label %.lr.ph150, label %.loopexit121, !llvm.loop !97

.lr.ph150:                                        ; preds = %bb.f, %.loopexit
  %.0103149 = phi i32 [ %.1104.lcssa, %.loopexit ], [ 0, %bb.f ] ; 4 uses
  %.1107148 = phi i32 [ %i.af, %.loopexit ], [ %.0106, %bb.f ]
  %i.ae = sub nuw i32 %3, %.0103149
  %i.af = tail call i32 @llvm.umin.i32(i32 %.1107148, i32 %i.ae) ; 7 uses
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = mul nuw nsw i64 %i.q, %i.ag
  %i.ai = shl nuw nsw i64 %i.ah, %i.r
  %i.aj = tail call ptr @alloc_large(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %i.ai) ; 2 uses
  %.not119142 = icmp eq i32 %i.af, 0
  br i1 %.not119142, label %.loopexit, label %.lr.ph146.preheader

.lr.ph146.preheader:                              ; preds = %.lr.ph150
  %xtraiter177 = and i32 %i.af, 3                 ; 2 uses
  %lcmp.mod178.not = icmp eq i32 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %.lr.ph146.prol.loopexit, label %.lr.ph146.prol

.lr.ph146.prol:                                   ; preds = %.lr.ph146.preheader, %.lr.ph146.prol
  %.0102145.prol = phi i32 [ %i.ao, %.lr.ph146.prol ], [ %i.af, %.lr.ph146.preheader ]
  %.1104144.prol = phi i32 [ %i.ak, %.lr.ph146.prol ], [ %.0103149, %.lr.ph146.preheader ] ; 2 uses
  %.0110143.prol = phi ptr [ %i.an, %.lr.ph146.prol ], [ %i.aj, %.lr.ph146.preheader ] ; 2 uses
  %prol.iter179 = phi i32 [ %prol.iter179.next, %.lr.ph146.prol ], [ 0, %.lr.ph146.preheader ]
  %i.ak = add i32 %.1104144.prol, 1               ; 3 uses
  %i.al = zext i32 %.1104144.prol to i64
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.al
  store ptr %.0110143.prol, ptr %i.am, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %.0110143.prol, i64 %i.q ; 2 uses
  %i.ao = add nsw i32 %.0102145.prol, -1          ; 2 uses
  %prol.iter179.next = add i32 %prol.iter179, 1   ; 2 uses
  %prol.iter179.cmp.not = icmp eq i32 %prol.iter179.next, %xtraiter177
  br i1 %prol.iter179.cmp.not, label %.lr.ph146.prol.loopexit, label %.lr.ph146.prol, !llvm.loop !98

.lr.ph146.prol.loopexit:                          ; preds = %.lr.ph146.prol, %.lr.ph146.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph146.preheader ], [ %i.ak, %.lr.ph146.prol ]
  %.0102145.unr = phi i32 [ %i.af, %.lr.ph146.preheader ], [ %i.ao, %.lr.ph146.prol ]
  %.1104144.unr = phi i32 [ %.0103149, %.lr.ph146.preheader ], [ %i.ak, %.lr.ph146.prol ]
  %.0110143.unr = phi ptr [ %i.aj, %.lr.ph146.preheader ], [ %i.an, %.lr.ph146.prol ]
  %i.ap = icmp samesign ult i32 %i.af, 4
  br i1 %i.ap, label %.loopexit, label %.lr.ph146

.lr.ph146:                                        ; preds = %.lr.ph146.prol.loopexit, %.lr.ph146
  %.0102145 = phi i32 [ %i.bg, %.lr.ph146 ], [ %.0102145.unr, %.lr.ph146.prol.loopexit ]
  %.1104144 = phi i32 [ %i.bc, %.lr.ph146 ], [ %.1104144.unr, %.lr.ph146.prol.loopexit ] ; 5 uses
  %.0110143 = phi ptr [ %i.bf, %.lr.ph146 ], [ %.0110143.unr, %.lr.ph146.prol.loopexit ] ; 2 uses
  %i.aq = add i32 %.1104144, 1
  %i.ar = zext i32 %.1104144 to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ar
  store ptr %.0110143, ptr %i.as, align 8, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %.0110143, i64 %i.q ; 2 uses
  %i.au = add i32 %.1104144, 2
  %i.av = zext i32 %i.aq to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.av
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.q ; 2 uses
  %i.ay = add i32 %.1104144, 3
  %i.az = zext i32 %i.au to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.az
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !48
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.q ; 2 uses
  %i.bc = add i32 %.1104144, 4                    ; 2 uses
  %i.bd = zext i32 %i.ay to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.bd
  store ptr %i.bb, ptr %i.be, align 8, !tbaa !48
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.q
  %i.bg = add nsw i32 %.0102145, -4               ; 2 uses
  %.not119.3 = icmp eq i32 %i.bg, 0
  br i1 %.not119.3, label %.loopexit, label %.lr.ph146, !llvm.loop !99

bb.g:                                             ; preds = %bb.e
  %i.bh = icmp samesign ult i32 %i.e, 13
  %i.bi = shl nuw nsw i64 %i.y, 3
  %i.bj = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %i.bi) ; 14 uses
  %.not152 = icmp eq i32 %3, 0                    ; 2 uses
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %.not152, label %.loopexit121, label %.lr.ph141

.loopexit122:                                     ; preds = %.lr.ph137.prol.loopexit, %.lr.ph137, %.lr.ph141
  %.3.lcssa = phi i32 [ %.2105140, %.lr.ph141 ], [ %.lcssa171.unr, %.lr.ph137.prol.loopexit ], [ %i.cj, %.lr.ph137 ] ; 2 uses
  %i.bk = icmp ult i32 %.3.lcssa, %3
  br i1 %i.bk, label %.lr.ph141, label %.loopexit121, !llvm.loop !100

.lr.ph141:                                        ; preds = %bb.h, %.loopexit122
  %.2105140 = phi i32 [ %.3.lcssa, %.loopexit122 ], [ 0, %bb.h ] ; 4 uses
  %.2108139 = phi i32 [ %i.bm, %.loopexit122 ], [ %.0106, %bb.h ]
  %i.bl = sub nuw i32 %3, %.2105140
  %i.bm = tail call i32 @llvm.umin.i32(i32 %.2108139, i32 %i.bl) ; 7 uses
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = mul nuw nsw i64 %i.q, %i.bn
  %i.bp = shl nuw nsw i64 %i.bo, %i.r
  %i.bq = tail call ptr @alloc_large(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %i.bp) ; 2 uses
  %.not118133 = icmp eq i32 %i.bm, 0
  br i1 %.not118133, label %.loopexit122, label %.lr.ph137.preheader

.lr.ph137.preheader:                              ; preds = %.lr.ph141
  %xtraiter174 = and i32 %i.bm, 3                 ; 2 uses
  %lcmp.mod175.not = icmp eq i32 %xtraiter174, 0
  br i1 %lcmp.mod175.not, label %.lr.ph137.prol.loopexit, label %.lr.ph137.prol

.lr.ph137.prol:                                   ; preds = %.lr.ph137.preheader, %.lr.ph137.prol
  %.0101136.prol = phi ptr [ %i.bu, %.lr.ph137.prol ], [ %i.bq, %.lr.ph137.preheader ] ; 2 uses
  %.1135.prol = phi i32 [ %i.bv, %.lr.ph137.prol ], [ %i.bm, %.lr.ph137.preheader ]
  %.3134.prol = phi i32 [ %i.br, %.lr.ph137.prol ], [ %.2105140, %.lr.ph137.preheader ] ; 2 uses
  %prol.iter176 = phi i32 [ %prol.iter176.next, %.lr.ph137.prol ], [ 0, %.lr.ph137.preheader ]
  %i.br = add i32 %.3134.prol, 1                  ; 3 uses
  %i.bs = zext i32 %.3134.prol to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bs
  store ptr %.0101136.prol, ptr %i.bt, align 8, !tbaa !51
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.0101136.prol, i64 %i.q ; 2 uses
  %i.bv = add nsw i32 %.1135.prol, -1             ; 2 uses
  %prol.iter176.next = add i32 %prol.iter176, 1   ; 2 uses
  %prol.iter176.cmp.not = icmp eq i32 %prol.iter176.next, %xtraiter174
  br i1 %prol.iter176.cmp.not, label %.lr.ph137.prol.loopexit, label %.lr.ph137.prol, !llvm.loop !101

.lr.ph137.prol.loopexit:                          ; preds = %.lr.ph137.prol, %.lr.ph137.preheader
  %.lcssa171.unr = phi i32 [ poison, %.lr.ph137.preheader ], [ %i.br, %.lr.ph137.prol ]
  %.0101136.unr = phi ptr [ %i.bq, %.lr.ph137.preheader ], [ %i.bu, %.lr.ph137.prol ]
  %.1135.unr = phi i32 [ %i.bm, %.lr.ph137.preheader ], [ %i.bv, %.lr.ph137.prol ]
  %.3134.unr = phi i32 [ %.2105140, %.lr.ph137.preheader ], [ %i.br, %.lr.ph137.prol ]
  %i.bw = icmp samesign ult i32 %i.bm, 4
  br i1 %i.bw, label %.loopexit122, label %.lr.ph137

.lr.ph137:                                        ; preds = %.lr.ph137.prol.loopexit, %.lr.ph137
  %.0101136 = phi ptr [ %i.cm, %.lr.ph137 ], [ %.0101136.unr, %.lr.ph137.prol.loopexit ] ; 2 uses
  %.1135 = phi i32 [ %i.cn, %.lr.ph137 ], [ %.1135.unr, %.lr.ph137.prol.loopexit ]
  %.3134 = phi i32 [ %i.cj, %.lr.ph137 ], [ %.3134.unr, %.lr.ph137.prol.loopexit ] ; 5 uses
  %i.bx = add i32 %.3134, 1
  %i.by = zext i32 %.3134 to i64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.by
  store ptr %.0101136, ptr %i.bz, align 8, !tbaa !51
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.0101136, i64 %i.q ; 2 uses
  %i.cb = add i32 %.3134, 2
  %i.cc = zext i32 %i.bx to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cc
  store ptr %i.ca, ptr %i.cd, align 8, !tbaa !51
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.q ; 2 uses
  %i.cf = add i32 %.3134, 3
  %i.cg = zext i32 %i.cb to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cg
  store ptr %i.ce, ptr %i.ch, align 8, !tbaa !51
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %i.q ; 2 uses
  %i.cj = add i32 %.3134, 4                       ; 2 uses
  %i.ck = zext i32 %i.cf to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.ck
  store ptr %i.ci, ptr %i.cl, align 8, !tbaa !51
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %i.q
  %i.cn = add nsw i32 %.1135, -4                  ; 2 uses
  %.not118.3 = icmp eq i32 %i.cn, 0
  br i1 %.not118.3, label %.loopexit122, label %.lr.ph137, !llvm.loop !102

bb.i:                                             ; preds = %bb.g
  br i1 %.not152, label %.loopexit121, label %.lr.ph132

.loopexit124:                                     ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph132
  %.5.lcssa = phi i32 [ %.4131, %.lr.ph132 ], [ %.lcssa173.unr, %.lr.ph.prol.loopexit ], [ %i.dn, %.lr.ph ] ; 2 uses
  %i.co = icmp ult i32 %.5.lcssa, %3
  br i1 %i.co, label %.lr.ph132, label %.loopexit121, !llvm.loop !103

.lr.ph132:                                        ; preds = %bb.i, %.loopexit124
  %.4131 = phi i32 [ %.5.lcssa, %.loopexit124 ], [ 0, %bb.i ] ; 4 uses
  %.3109130 = phi i32 [ %i.cq, %.loopexit124 ], [ %.0106, %bb.i ]
  %i.cp = sub nuw i32 %3, %.4131
  %i.cq = tail call i32 @llvm.umin.i32(i32 %.3109130, i32 %i.cp) ; 7 uses
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = mul nuw nsw i64 %i.q, %i.cr
  %i.ct = shl nuw nsw i64 %i.cs, %i.r
  %i.cu = tail call ptr @alloc_large(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %i.ct) ; 2 uses
  %.not117126 = icmp eq i32 %i.cq, 0
  br i1 %.not117126, label %.loopexit124, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph132
  %xtraiter = and i32 %i.cq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.0129.prol = phi ptr [ %i.cy, %.lr.ph.prol ], [ %i.cu, %.lr.ph.preheader ] ; 2 uses
  %.2128.prol = phi i32 [ %i.cz, %.lr.ph.prol ], [ %i.cq, %.lr.ph.preheader ]
  %.5127.prol = phi i32 [ %i.cv, %.lr.ph.prol ], [ %.4131, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.cv = add i32 %.5127.prol, 1                  ; 3 uses
  %i.cw = zext i32 %.5127.prol to i64
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cw
  store ptr %.0129.prol, ptr %i.cx, align 8, !tbaa !51
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %.0129.prol, i64 %i.q ; 2 uses
  %i.cz = add nsw i32 %.2128.prol, -1             ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !104

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa173.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.cv, %.lr.ph.prol ]
  %.0129.unr = phi ptr [ %i.cu, %.lr.ph.preheader ], [ %i.cy, %.lr.ph.prol ]
  %.2128.unr = phi i32 [ %i.cq, %.lr.ph.preheader ], [ %i.cz, %.lr.ph.prol ]
  %.5127.unr = phi i32 [ %.4131, %.lr.ph.preheader ], [ %i.cv, %.lr.ph.prol ]
  %i.da = icmp samesign ult i32 %i.cq, 4
  br i1 %i.da, label %.loopexit124, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.0129 = phi ptr [ %i.dq, %.lr.ph ], [ %.0129.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.2128 = phi i32 [ %i.dr, %.lr.ph ], [ %.2128.unr, %.lr.ph.prol.loopexit ]
  %.5127 = phi i32 [ %i.dn, %.lr.ph ], [ %.5127.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.db = add i32 %.5127, 1
  %i.dc = zext i32 %.5127 to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.dc
  store ptr %.0129, ptr %i.dd, align 8, !tbaa !51
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %.0129, i64 %i.q ; 2 uses
  %i.df = add i32 %.5127, 2
  %i.dg = zext i32 %i.db to i64
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.dg
  store ptr %i.de, ptr %i.dh, align 8, !tbaa !51
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %i.q ; 2 uses
  %i.dj = add i32 %.5127, 3
  %i.dk = zext i32 %i.df to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.dk
  store ptr %i.di, ptr %i.dl, align 8, !tbaa !51
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.q ; 2 uses
  %i.dn = add i32 %.5127, 4                       ; 2 uses
  %i.do = zext i32 %i.dj to i64
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.do
  store ptr %i.dm, ptr %i.dp, align 8, !tbaa !51
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %i.q
  %i.dr = add nsw i32 %.2128, -4                  ; 2 uses
  %.not117.3 = icmp eq i32 %i.dr, 0
  br i1 %.not117.3, label %.loopexit124, label %.lr.ph, !llvm.loop !105

.loopexit121:                                     ; preds = %.loopexit124, %.loopexit122, %.loopexit, %bb.i, %bb.h, %bb.f
  %.0111 = phi ptr [ %i.bj, %bb.h ], [ %i.ac, %bb.f ], [ %i.bj, %bb.i ], [ %i.bj, %.loopexit122 ], [ %i.ac, %.loopexit ], [ %i.bj, %.loopexit124 ]
  ret ptr %.0111
}

; Function Attrs: nounwind uwtable
define internal nonnull ptr @alloc_barray(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = zext i32 %2 to i64                       ; 6 uses
  %i.d = shl nuw nsw i64 %i.c, 7                  ; 2 uses
  %i.e = udiv i64 999999976, %i.d
  %i.f = icmp ugt i32 %2, 7812499
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i32 70, ptr %i.h, align 8, !tbaa !23
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !25
  tail call void %i.i(ptr noundef nonnull %0) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = zext i32 %3 to i64                       ; 2 uses
  %.03641 = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.j)
  %.036 = trunc nuw nsw i64 %.03641 to i32        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i32 %.036, ptr %i.k, align 8, !tbaa !46
  %i.l = shl nuw nsw i64 %i.j, 3
  %i.m = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %i.l) ; 6 uses
  %.not49 = icmp eq i32 %3, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph48

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.lr.ph48
  %.1.lcssa = phi i32 [ %.03547, %.lr.ph48 ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.al, %.lr.ph ] ; 2 uses
  %i.n = icmp ult i32 %.1.lcssa, %3
  br i1 %i.n, label %.lr.ph48, label %._crit_edge, !llvm.loop !1

.lr.ph48:                                         ; preds = %bb.c, %.loopexit
  %.03547 = phi i32 [ %.1.lcssa, %.loopexit ], [ 0, %bb.c ] ; 4 uses
  %.13746 = phi i32 [ %i.p, %.loopexit ], [ %.036, %bb.c ]
  %i.o = sub nuw i32 %3, %.03547
  %i.p = tail call i32 @llvm.umin.i32(i32 %.13746, i32 %i.o) ; 7 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul i64 %i.d, %i.q
  %i.s = tail call ptr @alloc_large(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %i.r) ; 2 uses
  %.not42 = icmp eq i32 %i.p, 0
  br i1 %.not42, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph48
  %xtraiter = and i32 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.045.prol = phi i32 [ %i.x, %.lr.ph.prol ], [ %i.p, %.lr.ph.preheader ]
  %.144.prol = phi i32 [ %i.t, %.lr.ph.prol ], [ %.03547, %.lr.ph.preheader ] ; 2 uses
  %.03843.prol = phi ptr [ %i.w, %.lr.ph.prol ], [ %i.s, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.t = add i32 %.144.prol, 1                    ; 3 uses
  %i.u = zext i32 %.144.prol to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.u
  store ptr %.03843.prol, ptr %i.v, align 8, !tbaa !51
  %i.w = getelementptr inbounds nuw [128 x i8], ptr %.03843.prol, i64 %i.c ; 2 uses
  %i.x = add nsw i32 %.045.prol, -1               ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !106

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %.045.unr = phi i32 [ %i.p, %.lr.ph.preheader ], [ %i.x, %.lr.ph.prol ]
  %.144.unr = phi i32 [ %.03547, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %.03843.unr = phi ptr [ %i.s, %.lr.ph.preheader ], [ %i.w, %.lr.ph.prol ]
  %i.y = icmp samesign ult i32 %i.p, 4
  br i1 %i.y, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.045 = phi i32 [ %i.ap, %.lr.ph ], [ %.045.unr, %.lr.ph.prol.loopexit ]
  %.144 = phi i32 [ %i.al, %.lr.ph ], [ %.144.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.03843 = phi ptr [ %i.ao, %.lr.ph ], [ %.03843.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.z = add i32 %.144, 1
  %i.aa = zext i32 %.144 to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.aa
  store ptr %.03843, ptr %i.ab, align 8, !tbaa !51
  %i.ac = getelementptr inbounds nuw [128 x i8], ptr %.03843, i64 %i.c ; 2 uses
  %i.ad = add i32 %.144, 2
  %i.ae = zext i32 %i.z to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ae
  store ptr %i.ac, ptr %i.af, align 8, !tbaa !51
  %i.ag = getelementptr inbounds nuw [128 x i8], ptr %i.ac, i64 %i.c ; 2 uses
  %i.ah = add i32 %.144, 3
  %i.ai = zext i32 %i.ad to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ai
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !51
  %i.ak = getelementptr inbounds nuw [128 x i8], ptr %i.ag, i64 %i.c ; 2 uses
  %i.al = add i32 %.144, 4                        ; 2 uses
  %i.am = zext i32 %i.ah to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.am
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !51
  %i.ao = getelementptr inbounds nuw [128 x i8], ptr %i.ak, i64 %i.c
  %i.ap = add nsw i32 %.045, -4                   ; 2 uses
  %.not.3 = icmp eq i32 %i.ap, 0
  br i1 %.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !2

._crit_edge:                                      ; preds = %.loopexit, %bb.c
  ret ptr %i.m
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @request_virt_sarray(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %.split, label %.split24

.split24:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 14, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %1, ptr %i.e, align 4, !tbaa !24
  %i.f = load ptr, ptr %0, align 8, !tbaa !19
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  tail call void %i.g(ptr noundef nonnull %0) #9
  br label %.split

.split:                                           ; preds = %bb.a, %.split24
  %.sink = phi i32 [ %1, %.split24 ], [ 1, %bb.a ]
  %i.h = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef %.sink, i64 noundef 152) ; 9 uses
  store ptr null, ptr %i.h, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %4, ptr %i.i, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %3, ptr %i.j, align 4, !tbaa !57
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 %5, ptr %i.k, align 8, !tbaa !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 %2, ptr %i.l, align 4, !tbaa !59
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i32 0, ptr %i.m, align 4, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.o, ptr %i.p, align 8, !tbaa !107
  store ptr %i.h, ptr %i.n, align 8, !tbaa !61
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define internal noundef nonnull ptr @request_virt_barray(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %.split, label %.split24

.split24:                                         ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 14, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %1, ptr %i.e, align 4, !tbaa !24
  %i.f = load ptr, ptr %0, align 8, !tbaa !19
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  tail call void %i.g(ptr noundef nonnull %0) #9
  br label %.split

.split:                                           ; preds = %bb.a, %.split24
  %.sink = phi i32 [ %1, %.split24 ], [ 1, %bb.a ]
  %i.h = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef %.sink, i64 noundef 152) ; 9 uses
  store ptr null, ptr %i.h, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i32 %4, ptr %i.i, align 8, !tbaa !65
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 %3, ptr %i.j, align 4, !tbaa !66
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 %5, ptr %i.k, align 8, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 %2, ptr %i.l, align 4, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  store i32 0, ptr %i.m, align 4, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !70
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.o, ptr %i.p, align 8, !tbaa !108
  store ptr %i.h, ptr %i.n, align 8, !tbaa !70
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define internal void @realize_virt_arrays(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44
  %.not = icmp eq i32 %i.d, 0
  %.in.v = select i1 %.not, i64 72, i64 296
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.e = load i32, ptr %.in, align 8, !tbaa !45
  %i.f = icmp sgt i32 %i.e, 8                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %.0100118 = load ptr, ptr %i.g, align 8, !tbaa !71 ; 2 uses
  %.not110119 = icmp eq ptr %.0100118, null
  br i1 %.not110119, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = zext i1 %i.f to i64                      ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.0100122 = phi ptr [ %.0100118, %.lr.ph ], [ %.0100, %bb.f ] ; 5 uses
  %.0103121 = phi i64 [ 0, %.lr.ph ], [ %.1104, %bb.f ] ; 3 uses
  %.0105120 = phi i64 [ 0, %.lr.ph ], [ %.1106, %bb.f ] ; 2 uses
  %i.i = load ptr, ptr %.0100122, align 8, !tbaa !55
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %.0100122, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !56
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %.0100122, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !57
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = mul nuw i64 %i.p, %i.m
  %i.r = shl i64 %i.q, %i.h                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0100122, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !58
  %i.u = zext i32 %i.t to i64
  %i.v = mul nuw i64 %i.u, %i.p
  %i.w = shl i64 %i.v, %i.h
  %i.x = add i64 %i.w, %.0105120
  %i.y = xor i64 %.0103121, -1
  %i.z = icmp ugt i64 %i.r, %i.y
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i32 54, ptr %i.ab, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 44
  store i32 10, ptr %i.ac, align 4, !tbaa !24
  %i.ad = load ptr, ptr %0, align 8, !tbaa !19
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !25
  tail call void %i.ae(ptr noundef nonnull %0) #9, !inline_history !0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.af = add i64 %i.r, %.0103121
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.1106 = phi i64 [ %i.x, %bb.e ], [ %.0105120, %bb.b ] ; 2 uses
  %.1104 = phi i64 [ %i.af, %bb.e ], [ %.0103121, %bb.b ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0100122, i64 48
  %.0100 = load ptr, ptr %i.ag, align 8, !tbaa !71 ; 2 uses
  %.not110 = icmp eq ptr %.0100, null
  br i1 %.not110, label %._crit_edge, label %bb.b, !llvm.loop !109

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %.0105.lcssa = phi i64 [ 0, %bb.a ], [ %.1106, %bb.f ] ; 2 uses
  %.0103.lcssa = phi i64 [ 0, %bb.a ], [ %.1104, %bb.f ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %.0124 = load ptr, ptr %i.ah, align 8, !tbaa !72 ; 2 uses
  %.not111125 = icmp eq ptr %.0124, null
  br i1 %.not111125, label %._crit_edge131, label %.lr.ph130

.lr.ph130:                                        ; preds = %._crit_edge, %bb.j
  %.0128 = phi ptr [ %.0, %bb.j ], [ %.0124, %._crit_edge ] ; 5 uses
  %.2127 = phi i64 [ %.3, %bb.j ], [ %.0103.lcssa, %._crit_edge ] ; 3 uses
  %.2107126 = phi i64 [ %.3108, %bb.j ], [ %.0105.lcssa, %._crit_edge ] ; 2 uses
  %i.ai = load ptr, ptr %.0128, align 8, !tbaa !64
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.g, label %bb.j

bb.g:                                             ; preds = %.lr.ph130
  %i.ak = getelementptr inbounds nuw i8, ptr %.0128, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !65
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr %.0128, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !66
  %i.ap = zext i32 %i.ao to i64                   ; 2 uses
  %i.aq = shl nuw nsw i64 %i.am, 7
  %i.ar = mul i64 %i.aq, %i.ap                    ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0128, i64 16
  %i.at = load i32, ptr %i.as, align 8, !tbaa !67
  %i.au = zext i32 %i.at to i64
  %i.av = shl nuw nsw i64 %i.ap, 7
  %i.aw = mul i64 %i.av, %i.au
  %i.ax = add i64 %i.aw, %.2107126
  %i.ay = xor i64 %.2127, -1
  %i.az = icmp ugt i64 %i.ar, %i.ay
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store i32 54, ptr %i.bb, align 8, !tbaa !23
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 44
end_hunk_0
begin_hunk_1_@realize_virt_arrays:bb.a
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !57
  %i.cj = zext i32 %i.ci to i64
  %i.ck = mul nuw i64 %i.cj, %i.bw
  %i.cl = shl i64 %i.ck, %i.bo
  tail call void @jpeg_open_backing_store(ptr noundef %0, ptr noundef nonnull %i.cg, i64 noundef %i.cl) #9
  %i.cm = getelementptr inbounds nuw i8, ptr %.1101136, i64 44
  store i32 1, ptr %i.cm, align 4, !tbaa !60
  %.pre = load i32, ptr %i.cf, align 4, !tbaa !73
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cn = phi i32 [ %.pre, %bb.q ], [ %i.bv, %bb.p ]
  %i.co = getelementptr inbounds nuw i8, ptr %.1101136, i64 12
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !57
  %i.cq = tail call ptr @alloc_sarray(ptr noundef %0, i32 noundef 1, i32 noundef %i.cp, i32 noundef %i.cn)
  store ptr %i.cq, ptr %.1101136, align 8, !tbaa !55
  %i.cr = load i32, ptr %i.bp, align 8, !tbaa !46
  %i.cs = getelementptr inbounds nuw i8, ptr %.1101136, i64 24
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !74
  %i.ct = getelementptr inbounds nuw i8, ptr %.1101136, i64 28
  store i32 0, ptr %i.ct, align 4, !tbaa !75
  %i.cu = getelementptr inbounds nuw i8, ptr %.1101136, i64 32
  store i32 0, ptr %i.cu, align 8, !tbaa !76
  %i.cv = getelementptr inbounds nuw i8, ptr %.1101136, i64 40
  store i32 0, ptr %i.cv, align 8, !tbaa !77
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %.1101136, i64 48
  %.1101 = load ptr, ptr %i.cw, align 8, !tbaa !71 ; 2 uses
  %.not113 = icmp eq ptr %.1101, null
  br i1 %.not113, label %.preheader, label %bb.n, !llvm.loop !111

bb.t:                                             ; preds = %.lr.ph142, %bb.af
  %.1141 = phi ptr [ %.1139, %.lr.ph142 ], [ %.1, %bb.af ] ; 15 uses
  %i.cx = load ptr, ptr %.1141, align 8, !tbaa !64
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.u, label %bb.af

bb.u:                                             ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %.1141, i64 8
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !65 ; 3 uses
  %i.db = zext i32 %i.da to i64                   ; 2 uses
  %i.dc = add nsw i64 %i.db, -1
  %i.dd = getelementptr inbounds nuw i8, ptr %.1141, i64 16
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !67 ; 2 uses
  %i.df = zext i32 %i.de to i64
  %i.dg = sdiv i64 %i.dc, %i.df
  %i.dh = add nsw i64 %i.dg, 1
  %.not115 = icmp ugt i64 %i.dh, %.0102
  br i1 %.not115, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.di = getelementptr inbounds nuw i8, ptr %.1141, i64 20
  store i32 %i.da, ptr %i.di, align 4, !tbaa !78
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.dj = mul i32 %i.de, %i.bq
  %i.dk = getelementptr inbounds nuw i8, ptr %.1141, i64 20 ; 2 uses
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !78
  %i.dl = getelementptr inbounds nuw i8, ptr %.1141, i64 56
  %i.dm = getelementptr inbounds nuw i8, ptr %.1141, i64 12
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !66
  %i.do = zext i32 %i.dn to i64
  %i.dp = shl nuw nsw i64 %i.db, 7
  %i.dq = mul i64 %i.dp, %i.do
  tail call void @jpeg_open_backing_store(ptr noundef %0, ptr noundef nonnull %i.dl, i64 noundef %i.dq) #9
  %i.dr = getelementptr inbounds nuw i8, ptr %.1141, i64 44
  store i32 1, ptr %i.dr, align 4, !tbaa !69
  %.pre144 = load i32, ptr %i.dk, align 4, !tbaa !78
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ds = phi i32 [ %.pre144, %bb.w ], [ %i.da, %bb.v ] ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.1141, i64 12
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !66 ; 2 uses
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.dw = zext i32 %i.du to i64                   ; 6 uses
  %i.dx = shl nuw nsw i64 %i.dw, 7                ; 2 uses
  %i.dy = udiv i64 999999976, %i.dx
  %i.dz = icmp ugt i32 %i.du, 7812499
  br i1 %i.dz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ea = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  store i32 70, ptr %i.eb, align 8, !tbaa !23
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !25
  tail call void %i.ec(ptr noundef nonnull %0) #9, !inline_history !115
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ed = zext i32 %i.ds to i64                   ; 2 uses
  %.03641.i = tail call i64 @llvm.umin.i64(i64 %i.dy, i64 %i.ed)
  %.036.i = trunc nuw nsw i64 %.03641.i to i32    ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 160
  store i32 %.036.i, ptr %i.ee, align 8, !tbaa !46
  %i.ef = shl nuw nsw i64 %i.ed, 3
  %i.eg = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %i.ef) ; 6 uses
  %.not49.i = icmp eq i32 %i.ds, 0
  br i1 %.not49.i, label %alloc_barray.exit, label %.lr.ph48.i

.loopexit.i:                                      ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %alloc_large.exit
  %.1.lcssa.i = phi i32 [ %.03547.i, %alloc_large.exit ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.gk, %.lr.ph.i ] ; 2 uses
  %i.eh = icmp ult i32 %.1.lcssa.i, %i.ds
  br i1 %i.eh, label %.lr.ph48.i, label %alloc_barray.exit, !llvm.loop !1

.lr.ph48.i:                                       ; preds = %bb.z, %.loopexit.i
  %.03547.i = phi i32 [ %.1.lcssa.i, %.loopexit.i ], [ 0, %bb.z ] ; 4 uses
  %.13746.i = phi i32 [ %i.ej, %.loopexit.i ], [ %.036.i, %bb.z ]
  %i.ei = sub nuw i32 %i.ds, %.03547.i
  %i.ej = tail call i32 @llvm.umin.i32(i32 %.13746.i, i32 %i.ei) ; 7 uses
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = mul i64 %i.dx, %i.ek                    ; 3 uses
  %i.em = load ptr, ptr %i.a, align 8, !tbaa !16  ; 2 uses
  %i.en = icmp ugt i64 %i.el, 1000000000
  br i1 %i.en, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph48.i
  %i.eo = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  store i32 54, ptr %i.ep, align 8, !tbaa !23
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 44
  store i32 8, ptr %i.eq, align 4, !tbaa !24
  %i.er = load ptr, ptr %0, align 8, !tbaa !19
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !25
  tail call void %i.es(ptr noundef nonnull %0) #9, !inline_history !112
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph48.i
  %i.et = or disjoint i64 %i.el, 55               ; 3 uses
  %i.eu = icmp ugt i64 %i.et, 1000000000
  br i1 %i.eu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ev = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
  store i32 54, ptr %i.ew, align 8, !tbaa !23
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 44
  store i32 3, ptr %i.ex, align 4, !tbaa !24
  %i.ey = load ptr, ptr %0, align 8, !tbaa !19
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !25
  tail call void %i.ez(ptr noundef nonnull %0) #9, !inline_history !112
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.fa = tail call ptr @jpeg_get_large(ptr noundef nonnull %0, i64 noundef %i.et) #9 ; 6 uses
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %bb.ae, label %alloc_large.exit

bb.ae:                                            ; preds = %bb.ad
  %i.fc = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 40
  store i32 54, ptr %i.fd, align 8, !tbaa !23
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 44
  store i32 4, ptr %i.fe, align 4, !tbaa !24
  %i.ff = load ptr, ptr %0, align 8, !tbaa !19
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !25
  tail call void %i.fg(ptr noundef nonnull %0) #9, !inline_history !112
  br label %alloc_large.exit

alloc_large.exit:                                 ; preds = %bb.ad, %bb.ae
  %i.fh = getelementptr inbounds nuw i8, ptr %i.em, i64 152 ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !30
  %i.fj = add i64 %i.fi, %i.et
  store i64 %i.fj, ptr %i.fh, align 8, !tbaa !30
  %i.fk = getelementptr inbounds nuw i8, ptr %i.em, i64 128 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !39
  store ptr %i.fl, ptr %i.fa, align 8, !tbaa !41
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store i64 %i.el, ptr %i.fm, align 8, !tbaa !42
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  store i64 0, ptr %i.fn, align 8, !tbaa !43
  store ptr %i.fa, ptr %i.fk, align 8, !tbaa !39
  %.not42.i = icmp eq i32 %i.ej, 0
  br i1 %.not42.i, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %alloc_large.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fa, i64 24 ; 2 uses
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = and i64 %i.fp, 31                       ; 2 uses
  %.not.i117 = icmp eq i64 %i.fq, 0
  %i.fr = sub nuw nsw i64 32, %i.fq
  %.0.idx.i = select i1 %.not.i117, i64 0, i64 %i.fr
  %.0.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.0.idx.i ; 2 uses
  %xtraiter = and i32 %i.ej, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.045.i.prol = phi i32 [ %i.fw, %.lr.ph.i.prol ], [ %i.ej, %.lr.ph.i.preheader ]
  %.144.i.prol = phi i32 [ %i.fs, %.lr.ph.i.prol ], [ %.03547.i, %.lr.ph.i.preheader ] ; 2 uses
  %.03843.i.prol = phi ptr [ %i.fv, %.lr.ph.i.prol ], [ %.0.i, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.fs = add i32 %.144.i.prol, 1                 ; 3 uses
  %i.ft = zext i32 %.144.i.prol to i64
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.ft
  store ptr %.03843.i.prol, ptr %i.fu, align 8, !tbaa !51
  %i.fv = getelementptr inbounds nuw [128 x i8], ptr %.03843.i.prol, i64 %i.dw ; 2 uses
  %i.fw = add nsw i32 %.045.i.prol, -1            ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !113

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i.preheader ], [ %i.fs, %.lr.ph.i.prol ]
  %.045.i.unr = phi i32 [ %i.ej, %.lr.ph.i.preheader ], [ %i.fw, %.lr.ph.i.prol ]
  %.144.i.unr = phi i32 [ %.03547.i, %.lr.ph.i.preheader ], [ %i.fs, %.lr.ph.i.prol ]
  %.03843.i.unr = phi ptr [ %.0.i, %.lr.ph.i.preheader ], [ %i.fv, %.lr.ph.i.prol ]
  %i.fx = icmp samesign ult i32 %i.ej, 4
  br i1 %i.fx, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.045.i = phi i32 [ %i.go, %.lr.ph.i ], [ %.045.i.unr, %.lr.ph.i.prol.loopexit ]
  %.144.i = phi i32 [ %i.gk, %.lr.ph.i ], [ %.144.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.03843.i = phi ptr [ %i.gn, %.lr.ph.i ], [ %.03843.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.fy = add i32 %.144.i, 1
  %i.fz = zext i32 %.144.i to i64
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.fz
  store ptr %.03843.i, ptr %i.ga, align 8, !tbaa !51
  %i.gb = getelementptr inbounds nuw [128 x i8], ptr %.03843.i, i64 %i.dw ; 2 uses
  %i.gc = add i32 %.144.i, 2
  %i.gd = zext i32 %i.fy to i64
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.gd
  store ptr %i.gb, ptr %i.ge, align 8, !tbaa !51
  %i.gf = getelementptr inbounds nuw [128 x i8], ptr %i.gb, i64 %i.dw ; 2 uses
  %i.gg = add i32 %.144.i, 3
  %i.gh = zext i32 %i.gc to i64
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.gh
  store ptr %i.gf, ptr %i.gi, align 8, !tbaa !51
  %i.gj = getelementptr inbounds nuw [128 x i8], ptr %i.gf, i64 %i.dw ; 2 uses
  %i.gk = add i32 %.144.i, 4                      ; 2 uses
  %i.gl = zext i32 %i.gg to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.gl
  store ptr %i.gj, ptr %i.gm, align 8, !tbaa !51
  %i.gn = getelementptr inbounds nuw [128 x i8], ptr %i.gj, i64 %i.dw
  %i.go = add nsw i32 %.045.i, -4                 ; 2 uses
  %.not.i.3 = icmp eq i32 %i.go, 0
  br i1 %.not.i.3, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !2

alloc_barray.exit:                                ; preds = %.loopexit.i, %bb.z
  store ptr %i.eg, ptr %.1141, align 8, !tbaa !64
  %i.gp = load i32, ptr %i.br, align 8, !tbaa !46
  %i.gq = getelementptr inbounds nuw i8, ptr %.1141, i64 24
  store i32 %i.gp, ptr %i.gq, align 8, !tbaa !79
  %i.gr = getelementptr inbounds nuw i8, ptr %.1141, i64 28
  store i32 0, ptr %i.gr, align 4, !tbaa !80
  %i.gs = getelementptr inbounds nuw i8, ptr %.1141, i64 32
  store i32 0, ptr %i.gs, align 8, !tbaa !81
  %i.gt = getelementptr inbounds nuw i8, ptr %.1141, i64 40
  store i32 0, ptr %i.gt, align 8, !tbaa !82
  br label %bb.af

bb.af:                                            ; preds = %bb.t, %alloc_barray.exit
  %i.gu = getelementptr inbounds nuw i8, ptr %.1141, i64 48
  %.1 = load ptr, ptr %i.gu, align 8, !tbaa !72   ; 2 uses
  %.not114 = icmp eq ptr %.1, null
  br i1 %.not114, label %.loopexit, label %bb.t, !llvm.loop !114

.loopexit:                                        ; preds = %bb.af, %.preheader, %._crit_edge131
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @access_virt_sarray(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = add i32 %3, %2                           ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !44
  %.not = icmp eq i32 %i.c, 0
  %.in.v = select i1 %.not, i64 72, i64 296
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.d = load i32, ptr %.in, align 8, !tbaa !45
  %i.e = icmp sgt i32 %i.d, 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !56
  %i.h = icmp ugt i32 %i.a, %i.g
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !58
  %i.k = icmp ugt i32 %3, %i.j
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !55
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store i32 22, ptr %i.o, align 8, !tbaa !23
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !25
  tail call void %i.p(ptr noundef nonnull %0) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 5 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !75   ; 2 uses
  %i.s = icmp ult i32 %2, %i.r
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !73
  %i.v = add i32 %i.u, %i.r
  %i.w = icmp ugt i32 %i.a, %i.v
  br i1 %i.w, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.y = load i32, ptr %i.x, align 4, !tbaa !60
  %.not78 = icmp eq i32 %i.y, 0
  br i1 %.not78, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %0, align 8, !tbaa !19     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i32 69, ptr %i.aa, align 8, !tbaa !23
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !25
  tail call void %i.ab(ptr noundef nonnull %0) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !77
  %.not79 = icmp eq i32 %i.ad, 0
  br i1 %.not79, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @do_sarray_io(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1)
  store i32 0, ptr %i.ac, align 8, !tbaa !77
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ae = load i32, ptr %i.q, align 4, !tbaa !75
  %i.af = icmp ugt i32 %2, %i.ae
  br i1 %i.af, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !73
  %i.ai = tail call i32 @llvm.usub.sat.i32(i32 %i.a, i32 %i.ah)
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %storemerge = phi i32 [ %i.ai, %bb.l ], [ %2, %bb.k ]
  store i32 %storemerge, ptr %i.q, align 4, !tbaa !75
  tail call fastcc void @do_sarray_io(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !76 ; 4 uses
  %i.al = icmp ult i32 %i.ak, %i.a
  br i1 %i.al, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.am = icmp ult i32 %i.ak, %2
  %.not80 = icmp eq i32 %4, 0                     ; 2 uses
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  br i1 %.not80, label %.thread93, label %.thread88

.thread88:                                        ; preds = %bb.p
  %i.an = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store i32 22, ptr %i.ao, align 8, !tbaa !23
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !25
  tail call void %i.ap(ptr noundef nonnull %0) #9
  br label %.thread

bb.q:                                             ; preds = %bb.o
  br i1 %.not80, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !59
  %.not82 = icmp eq i32 %i.ar, 0
  br i1 %.not82, label %.loopexit.thread, label %bb.s

.thread:                                          ; preds = %bb.q, %.thread88
  %.091 = phi i32 [ %2, %.thread88 ], [ %i.ak, %bb.q ]
  store i32 %i.a, ptr %i.aj, align 8, !tbaa !76
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.at = load i32, ptr %i.as, align 4, !tbaa !59
  %.not82110 = icmp eq i32 %i.at, 0
  br i1 %.not82110, label %.loopexit.thread115, label %bb.s

.thread93:                                        ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.av = load i32, ptr %i.au, align 4, !tbaa !59
  %.not8296 = icmp eq i32 %i.av, 0
  br i1 %.not8296, label %.loopexit.thread, label %bb.s

bb.s:                                             ; preds = %.thread, %.thread93, %bb.r
  %.08698 = phi i32 [ %2, %.thread93 ], [ %i.ak, %bb.r ], [ %.091, %.thread ]
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !57
  %i.ay = zext i32 %i.ax to i64
  %i.az = zext i1 %i.e to i64
  %i.ba = shl nuw nsw i64 %i.ay, %i.az
  %i.bb = load i32, ptr %i.q, align 4, !tbaa !75  ; 2 uses
  %i.bc = sub i32 %.08698, %i.bb                  ; 2 uses
  %i.bd = sub i32 %i.a, %i.bb                     ; 2 uses
  %i.be = icmp ult i32 %i.bc, %i.bd
  br i1 %i.be, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.bf = zext i32 %i.bc to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.bf, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.bg = load ptr, ptr %1, align 8, !tbaa !55
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !48
  tail call void @jzero_far(ptr noundef %i.bi, i64 noundef %i.ba) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bd, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !116

.loopexit.thread:                                 ; preds = %.thread93, %bb.r
  %i.bj = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  store i32 22, ptr %i.bk, align 8, !tbaa !23
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !25
  tail call void %i.bl(ptr noundef nonnull %0) #9
  br label %bb.t

.loopexit:                                        ; preds = %.lr.ph, %bb.s, %bb.n
  %.not83 = icmp eq i32 %4, 0
  br i1 %.not83, label %bb.t, label %.loopexit.thread115
end_hunk_1
