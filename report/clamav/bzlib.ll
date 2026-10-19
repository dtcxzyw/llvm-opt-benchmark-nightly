Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/bzlib?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define range(i32 -3, 1) i32 @nsis_BZ2_bzDecompressInit(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %or.cond = icmp ugt i32 %2, 1
  %or.cond38 = or i1 %i.a, %or.cond
  %or.cond3 = icmp ugt i32 %1, 4
  %or.cond39 = or i1 %or.cond3, %or.cond38
  br i1 %or.cond39, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr @default_bzalloc, ptr %i.b, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ @default_bzalloc, %bb.c ], [ %i.c, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store ptr @default_bzfree, ptr %i.f, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.k = tail call ptr %i.e(ptr noundef %i.j, i32 noundef 64144, i32 noundef 1) #8 ; 11 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %0, ptr %i.k, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %i.m, align 8, !tbaa !18
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 10, ptr %i.n, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  store i32 0, ptr %i.o, align 4, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i32 0, ptr %i.p, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 3188
  store i32 0, ptr %i.q, align 4, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !22
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.s, align 8, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.t, align 4, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.u, align 8, !tbaa !25
  %i.v = trunc nuw nsw i32 %2 to i8
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  store i8 %i.v, ptr %i.w, align 4, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 3152
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i32 0, ptr %i.y, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  store i32 %1, ptr %i.z, align 4, !tbaa !32
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.a, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ -2, %bb.a ], [ -3, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal ptr @default_bzalloc(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = sext i32 %2 to i64
  %i.c = mul nsw i64 %i.b, %i.a
  %i.d = tail call ptr @cli_max_malloc(i64 noundef %i.c) #8
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @default_bzfree(ptr nofree readnone captures(none) %0, ptr noundef captures(address_is_null) %1) #2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %1) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -4, 5) i32 @nsis_BZ2_bzDecompress(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 15 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %unRLE_obuf_to_output_SMALL.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 367 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %unRLE_obuf_to_output_SMALL.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !17
  %.not = icmp eq ptr %i.f, %0
  br i1 %.not, label %.preheader, label %unRLE_obuf_to_output_SMALL.exit.thread

.preheader:                                       ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 23 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 1092 ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 64080 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 60 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 8 uses
  %i.p = getelementptr i8, ptr %i.d, i64 1096     ; 24 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 3160 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 3168 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 3184 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 3152 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 64036 ; 3 uses
  %.phi.trans.insert1848.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64040 ; 2 uses
  %.phi.trans.insert1850.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64044 ; 2 uses
  %.phi.trans.insert1852.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64048 ; 2 uses
  %.phi.trans.insert1854.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64052 ; 2 uses
  %.phi.trans.insert1856.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64056 ; 2 uses
  %.phi.trans.insert1858.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64060 ; 2 uses
  %.phi.trans.insert1860.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64064 ; 2 uses
  %.phi.trans.insert1862.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64068 ; 2 uses
  %.phi.trans.insert1864.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64072 ; 2 uses
  %.phi.trans.insert1866.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64076 ; 2 uses
  %.phi.trans.insert1870.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64084 ; 2 uses
  %.phi.trans.insert1872.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64088 ; 2 uses
  %.phi.trans.insert1874.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64092 ; 2 uses
  %.phi.trans.insert1876.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64096 ; 2 uses
  %.phi.trans.insert1878.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64100 ; 2 uses
  %.phi.trans.insert1880.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64104 ; 2 uses
  %.phi.trans.insert1882.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64108 ; 2 uses
  %.phi.trans.insert1884.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64112 ; 2 uses
  %.phi.trans.insert1886.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64116 ; 2 uses
  %.phi.trans.insert1888.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64120 ; 2 uses
  %.phi.trans.insert1890.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64128 ; 2 uses
  %.phi.trans.insert1892.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64136 ; 2 uses
  %.phi.trans.insert1946.i = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 54 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 54 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 3196 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 3192 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 3468 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 25886 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 7884 ; 6 uses
  %scevgep1736.i = getelementptr i8, ptr %i.a, i64 -1 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 43888 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 45436 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 51628 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 57820 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 64012 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 68 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 3724 ; 41 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 7820 ; 9 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 2124 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 3452 ; 2 uses
  %.pre = load i32, ptr %i.g, align 8, !tbaa !19  ; 4 uses
  %i.am = icmp sgt i32 %.pre, 9
  br label %bb.d

bb.d:                                             ; preds = %bb.ao, %.preheader
  switch i32 %.pre, label %bb.ao [
    i32 1, label %unRLE_obuf_to_output_SMALL.exit.thread
    i32 2, label %.loopexit
  ]

.loopexit:                                        ; preds = %bb.d, %BZ2_decompress.exit.thread
  %i.an = load i8, ptr %i.h, align 4, !tbaa !26
  %.not29 = icmp eq i8 %i.an, 0
  br i1 %.not29, label %bb.u, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !48
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %unRLE_obuf_to_output_SMALL.exit, label %.lr.ph.lr.ph.i

.lr.ph.lr.ph.i:                                   ; preds = %bb.e
  %.pre.pre.i = load i32, ptr %i.i, align 8, !tbaa !49
  br label %.lr.ph.i.outer

.lr.ph.i.outer:                                   ; preds = %.lr.ph.lr.ph.i, %bb.h
  %.ph727 = phi ptr [ %i.ao, %.lr.ph.lr.ph.i ], [ %i.ba, %bb.h ] ; 2 uses
  %.ph728 = phi i32 [ %.pre.pre.i, %.lr.ph.lr.ph.i ], [ %i.az, %bb.h ]
  %i.as = icmp eq i32 %.ph728, 0
  %i.at = getelementptr inbounds nuw i8, ptr %.ph727, i64 32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.outer, %.backedge.i
  %i.au = phi i1 [ false, %.backedge.i ], [ %i.as, %.lr.ph.i.outer ]
  br i1 %i.au, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.av = load i8, ptr %i.j, align 4, !tbaa !50
  %i.aw = getelementptr inbounds nuw i8, ptr %.ph727, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !51
  store i8 %i.av, ptr %i.ax, align 1, !tbaa !52
  %i.ay = load i32, ptr %i.i, align 8, !tbaa !49
  %i.az = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.az, ptr %i.i, align 8, !tbaa !49
  %i.ba = load ptr, ptr %i.d, align 8, !tbaa !17  ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !51
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !51
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !48
  %i.bg = add i32 %i.bf, -1                       ; 2 uses
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !48
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 36 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !24
  %i.bj = add i32 %i.bi, 1                        ; 2 uses
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !24
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 40 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !25
  %i.bn = add i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bo = icmp eq i32 %i.bg, 0
  br i1 %i.bo, label %unRLE_obuf_to_output_SMALL.exit, label %.lr.ph.i.outer

bb.i:                                             ; preds = %.lr.ph.i
  %i.bp = load i32, ptr %i.k, align 4, !tbaa !53  ; 8 uses
  %i.bq = load i32, ptr %i.l, align 8, !tbaa !54  ; 4 uses
  %i.br = add nsw i32 %i.bq, 1                    ; 2 uses
  %i.bs = icmp eq i32 %i.bp, %i.br
  br i1 %i.bs, label %unRLE_obuf_to_output_SMALL.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bt = icmp sgt i32 %i.bp, %i.br
  br i1 %i.bt, label %unRLE_obuf_to_output_SMALL.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.i, align 8, !tbaa !49
  %i.bu = load i32, ptr %i.m, align 8, !tbaa !55  ; 4 uses
  %i.bv = trunc i32 %i.bu to i8
  store i8 %i.bv, ptr %i.j, align 4, !tbaa !50
  %i.bw = load i32, ptr %i.n, align 4, !tbaa !56  ; 5 uses
  %i.bx = load i32, ptr %i.o, align 8, !tbaa !57
  %i.by = mul i32 %i.bx, 100000                   ; 5 uses
  %.not.i = icmp ult i32 %i.bw, %i.by
  br i1 %.not.i, label %.preheader145.i, label %unRLE_obuf_to_output_SMALL.exit.thread

.preheader145.i:                                  ; preds = %bb.k, %.preheader145.i
  %.09.i.i = phi i32 [ %.09..i.i, %.preheader145.i ], [ 0, %bb.k ] ; 2 uses
  %.0.i.i = phi i32 [ %..0.i.i, %.preheader145.i ], [ 256, %bb.k ] ; 2 uses
  %i.bz = add nsw i32 %.0.i.i, %.09.i.i
  %i.ca = ashr i32 %i.bz, 1                       ; 3 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !58
  %.not.i.i = icmp slt i32 %i.bw, %i.cd           ; 2 uses
  %.09..i.i = select i1 %.not.i.i, i32 %.09.i.i, i32 %i.ca ; 3 uses
  %..0.i.i = select i1 %.not.i.i, i32 %i.ca, i32 %.0.i.i ; 2 uses
  %i.ce = sub nsw i32 %..0.i.i, %.09..i.i
  %.not11.i.i = icmp eq i32 %i.ce, 1
  br i1 %.not11.i.i, label %indexIntoF.exit.i, label %.preheader145.i

indexIntoF.exit.i:                                ; preds = %.preheader145.i
  %i.cf = load ptr, ptr %i.q, align 8, !tbaa !27  ; 5 uses
  %i.cg = zext i32 %i.bw to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !60
  %i.cj = zext i16 %i.ci to i32                   ; 2 uses
  %i.ck = load ptr, ptr %i.r, align 8, !tbaa !28  ; 5 uses
  %i.cl = lshr i32 %i.bw, 1
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !52
  %i.cp = zext i8 %i.co to i32
  %i.cq = shl i32 %i.bw, 2
  %i.cr = and i32 %i.cq, 4
  %i.cs = lshr i32 %i.cp, %i.cr
  %i.ct = shl nuw nsw i32 %i.cs, 16
  %i.cu = and i32 %i.ct, 983040
  %i.cv = or disjoint i32 %i.cu, %i.cj            ; 5 uses
  store i32 %i.cv, ptr %i.n, align 4, !tbaa !56
  %i.cw = add nsw i32 %i.bp, 1                    ; 2 uses
  store i32 %i.cw, ptr %i.k, align 4, !tbaa !53
  %i.cx = icmp eq i32 %i.bp, %i.bq
  br i1 %i.cx, label %.backedge.i, label %bb.l

bb.l:                                             ; preds = %indexIntoF.exit.i
  %i.cy = and i32 %.09..i.i, 255                  ; 2 uses
  %.not105.i = icmp eq i32 %i.cy, %i.bu
  br i1 %.not105.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.cy, ptr %i.m, align 8, !tbaa !55
  br label %.backedge.i

.backedge.i:                                      ; preds = %indexIntoF.exit139.i, %bb.s, %indexIntoF.exit125.i, %bb.p, %indexIntoF.exit118.i, %bb.m, %indexIntoF.exit.i
  %i.cz = load i32, ptr %i.at, align 8, !tbaa !48
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %unRLE_obuf_to_output_SMALL.exit, label %.lr.ph.i

bb.n:                                             ; preds = %bb.l
  store i32 2, ptr %i.i, align 8, !tbaa !49
  %.not106.i = icmp ult i32 %i.cv, %i.by
  br i1 %.not106.i, label %.preheader142.i, label %unRLE_obuf_to_output_SMALL.exit.thread

.preheader142.i:                                  ; preds = %bb.n, %.preheader142.i
  %.09.i112.i = phi i32 [ %.09..i115.i, %.preheader142.i ], [ 0, %bb.n ] ; 2 uses
  %.0.i113.i = phi i32 [ %..0.i116.i, %.preheader142.i ], [ 256, %bb.n ] ; 2 uses
  %i.db = add nsw i32 %.0.i113.i, %.09.i112.i
  %i.dc = ashr i32 %i.db, 1                       ; 3 uses
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !58
  %.not.i114.i = icmp slt i32 %i.cv, %i.df        ; 2 uses
  %.09..i115.i = select i1 %.not.i114.i, i32 %.09.i112.i, i32 %i.dc ; 3 uses
  %..0.i116.i = select i1 %.not.i114.i, i32 %i.dc, i32 %.0.i113.i ; 2 uses
  %i.dg = sub nsw i32 %..0.i116.i, %.09..i115.i
  %.not11.i117.i = icmp eq i32 %i.dg, 1
  br i1 %.not11.i117.i, label %indexIntoF.exit118.i, label %.preheader142.i

indexIntoF.exit118.i:                             ; preds = %.preheader142.i
  %i.dh = zext nneg i32 %i.cv to i64
  %i.di = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.dh
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !60
  %i.dk = zext i16 %i.dj to i32                   ; 2 uses
  %i.dl = lshr i32 %i.cv, 1
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !52
  %i.dp = zext i8 %i.do to i32
  %i.dq = shl nuw nsw i32 %i.cj, 2
  %i.dr = and i32 %i.dq, 4
  %i.ds = lshr i32 %i.dp, %i.dr
  %i.dt = shl nuw nsw i32 %i.ds, 16
  %i.du = and i32 %i.dt, 983040
  %i.dv = or disjoint i32 %i.du, %i.dk            ; 5 uses
  store i32 %i.dv, ptr %i.n, align 4, !tbaa !56
  %i.dw = add nsw i32 %i.bp, 2                    ; 2 uses
  store i32 %i.dw, ptr %i.k, align 4, !tbaa !53
  %i.dx = icmp eq i32 %i.cw, %i.bq
  br i1 %i.dx, label %.backedge.i, label %bb.o

bb.o:                                             ; preds = %indexIntoF.exit118.i
  %i.dy = and i32 %.09..i115.i, 255               ; 2 uses
  %.not107.i = icmp eq i32 %i.dy, %i.bu
  br i1 %.not107.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.dy, ptr %i.m, align 8, !tbaa !55
  br label %.backedge.i

end_hunk_0
begin_hunk_1_@nsis_BZ2_bzDecompress:bb.a
.preheader1410.i:                                 ; preds = %.lr.ph1584.i, %.lr.ph1584.i.prol.loopexit
  %.lcssa629 = phi i32 [ %.lcssa629.unr, %.lr.ph1584.i.prol.loopexit ], [ %i.bmf, %.lr.ph1584.i ] ; 2 uses
  %.not13511586.i = icmp eq i32 %.lcssa629, 0
  br i1 %.not13511586.i, label %._crit_edge1589.i, label %iter.check576

iter.check576:                                    ; preds = %.preheader1410.i, %bb.fv
  %.0941.lcssa2111.i = phi i32 [ %.lcssa629, %.preheader1410.i ], [ %i.bil, %bb.fv ] ; 7 uses
  %i.bjg = zext nneg i32 %.0941.lcssa2111.i to i64 ; 5 uses
  %i.bjh = add nsw i32 %.0941.lcssa2111.i, -1     ; 3 uses
  %i.bji = zext i32 %i.bjh to i64
  %i.bjj = add nuw nsw i64 %i.bji, 1              ; 5 uses
  %min.iters.check562 = icmp ult i32 %i.bjh, 3
  br i1 %min.iters.check562, label %.lr.ph1588.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check576
  %i.bjk = add i32 %.0941.lcssa2111.i, %i.bin
  %i.bjl = add i32 %i.bin, 1
  %i.bjm = icmp ugt i32 %i.bjl, %i.bjk
  %i.bjn = sub nsw i32 0, %.0941.lcssa2111.i
  %i.bjo = icmp ugt i32 %i.bin, %i.bjn
  %i.bjp = or i1 %i.bjm, %i.bjo
  br i1 %i.bjp, label %.lr.ph1588.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bjq = add i32 %.0941.lcssa2111.i, %i.bin     ; 2 uses
  %i.bjr = add i32 %i.bjq, -1
  %i.bjs = zext i32 %i.bjr to i64
  %i.bjt = zext i32 %i.bjq to i64
  %i.bju = sub nsw i64 %i.bjt, %i.bjs
  %diff.check = icmp ugt i64 %i.bju, -32
  br i1 %diff.check, label %.lr.ph1588.i.preheader, label %vector.main.loop.iter.check563

vector.main.loop.iter.check563:                   ; preds = %vector.memcheck
  %min.iters.check564 = icmp ult i32 %i.bjh, 31
  br i1 %min.iters.check564, label %vec.epilog.ph580, label %vector.ph565

vector.ph565:                                     ; preds = %vector.main.loop.iter.check563
  %i.bjv = and i64 %i.bjj, 28
  %n.vec566 = and i64 %i.bjj, 8589934560          ; 4 uses
  %i.bjw = sub nsw i64 %i.bjg, %n.vec566
  br label %vector.body567

vector.body567:                                   ; preds = %vector.ph565, %vector.body567
  %index568 = phi i64 [ 0, %vector.ph565 ], [ %index.next571, %vector.body567 ] ; 2 uses
  %i.bjx = trunc i64 %index568 to i32
  %i.bjy = sub i32 %.0941.lcssa2111.i, %i.bjx
  %i.bjz = add i32 %i.bin, %i.bjy                 ; 2 uses
  %i.bka = add i32 %i.bjz, -1
  %i.bkb = zext i32 %i.bka to i64
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bkb ; 2 uses
  %i.bkd = getelementptr inbounds i8, ptr %i.bkc, i64 -15
  %i.bke = getelementptr inbounds i8, ptr %i.bkc, i64 -31
  %wide.load569 = load <16 x i8>, ptr %i.bkd, align 1, !tbaa !52
  %wide.load570 = load <16 x i8>, ptr %i.bke, align 1, !tbaa !52
  %i.bkf = zext i32 %i.bjz to i64
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bkf ; 2 uses
  %i.bkh = getelementptr inbounds i8, ptr %i.bkg, i64 -15
  %i.bki = getelementptr inbounds i8, ptr %i.bkg, i64 -31
  store <16 x i8> %wide.load569, ptr %i.bkh, align 1, !tbaa !52
  store <16 x i8> %wide.load570, ptr %i.bki, align 1, !tbaa !52
  %index.next571 = add nuw i64 %index568, 32      ; 2 uses
  %i.bkj = icmp eq i64 %index.next571, %n.vec566
  br i1 %i.bkj, label %middle.block572, label %vector.body567, !llvm.loop !45

middle.block572:                                  ; preds = %vector.body567
  %cmp.n573 = icmp eq i64 %i.bjj, %n.vec566
  br i1 %cmp.n573, label %._crit_edge1589.i, label %vec.epilog.iter.check578

vec.epilog.iter.check578:                         ; preds = %middle.block572
  %min.epilog.iters.check579 = icmp eq i64 %i.bjv, 0
  br i1 %min.epilog.iters.check579, label %.lr.ph1588.i.preheader, label %vec.epilog.ph580, !prof !93

vec.epilog.ph580:                                 ; preds = %vector.main.loop.iter.check563, %vec.epilog.iter.check578
  %vec.epilog.resume.val574 = phi i64 [ %n.vec566, %vec.epilog.iter.check578 ], [ 0, %vector.main.loop.iter.check563 ]
  %n.vec581 = and i64 %i.bjj, 8589934588          ; 3 uses
  %i.bkk = sub nsw i64 %i.bjg, %n.vec581
  br label %vec.epilog.vector.body582

vec.epilog.vector.body582:                        ; preds = %vec.epilog.vector.body582, %vec.epilog.ph580
  %index583 = phi i64 [ %vec.epilog.resume.val574, %vec.epilog.ph580 ], [ %index.next585, %vec.epilog.vector.body582 ] ; 2 uses
  %i.bkl = trunc i64 %index583 to i32
  %i.bkm = sub i32 %.0941.lcssa2111.i, %i.bkl
  %i.bkn = add i32 %i.bin, %i.bkm                 ; 2 uses
  %i.bko = add i32 %i.bkn, -1
  %i.bkp = zext i32 %i.bko to i64
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bkp
  %i.bkr = getelementptr inbounds i8, ptr %i.bkq, i64 -3
  %wide.load584 = load <4 x i8>, ptr %i.bkr, align 1, !tbaa !52
  %i.bks = zext i32 %i.bkn to i64
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bks
  %i.bku = getelementptr inbounds i8, ptr %i.bkt, i64 -3
  store <4 x i8> %wide.load584, ptr %i.bku, align 1, !tbaa !52
  %index.next585 = add nuw i64 %index583, 4       ; 2 uses
  %i.bkv = icmp eq i64 %index.next585, %n.vec581
  br i1 %i.bkv, label %vec.epilog.middle.block586, label %vec.epilog.vector.body582, !llvm.loop !46

vec.epilog.middle.block586:                       ; preds = %vec.epilog.vector.body582
  %cmp.n587 = icmp eq i64 %i.bjj, %n.vec581
  br i1 %cmp.n587, label %._crit_edge1589.i, label %.lr.ph1588.i.preheader

.lr.ph1588.i.preheader:                           ; preds = %iter.check576, %vector.scevcheck, %vector.memcheck, %vec.epilog.iter.check578, %vec.epilog.middle.block586
  %indvars.iv1788.i.ph = phi i64 [ %i.bjg, %iter.check576 ], [ %i.bjg, %vector.scevcheck ], [ %i.bjg, %vector.memcheck ], [ %i.bjw, %vec.epilog.iter.check578 ], [ %i.bkk, %vec.epilog.middle.block586 ] ; 4 uses
  %i.bkw = trunc i64 %indvars.iv1788.i.ph to i32  ; 2 uses
  %xtraiter752 = and i32 %i.bkw, 1
  %lcmp.mod753.not = icmp eq i32 %xtraiter752, 0
  br i1 %lcmp.mod753.not, label %.lr.ph1588.i.prol.loopexit, label %.lr.ph1588.i.prol

.lr.ph1588.i.prol:                                ; preds = %.lr.ph1588.i.preheader
  %i.bkx = trunc nuw i64 %indvars.iv1788.i.ph to i32
  %i.bky = add i32 %i.bin, %i.bkx                 ; 2 uses
  %i.bkz = add i32 %i.bky, -1
  %i.bla = zext i32 %i.bkz to i64
  %i.blb = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bla
  %i.blc = load i8, ptr %i.blb, align 1, !tbaa !52
  %i.bld = zext i32 %i.bky to i64
  %i.ble = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bld
  store i8 %i.blc, ptr %i.ble, align 1, !tbaa !52
  %indvars.iv.next1789.i.prol = add nsw i64 %indvars.iv1788.i.ph, -1
  br label %.lr.ph1588.i.prol.loopexit

.lr.ph1588.i.prol.loopexit:                       ; preds = %.lr.ph1588.i.prol, %.lr.ph1588.i.preheader
  %indvars.iv1788.i.unr = phi i64 [ %indvars.iv1788.i.ph, %.lr.ph1588.i.preheader ], [ %indvars.iv.next1789.i.prol, %.lr.ph1588.i.prol ]
  %i.blf = icmp eq i32 %i.bkw, 1
  br i1 %i.blf, label %._crit_edge1589.i, label %.lr.ph1588.i.preheader.new

.lr.ph1588.i.preheader.new:                       ; preds = %.lr.ph1588.i.prol.loopexit
  %invariant.op846 = add i32 -1, %i.bin
  br label %.lr.ph1588.i

.lr.ph1584.i:                                     ; preds = %.lr.ph1584.i, %.lr.ph1584.preheader.i.new
  %indvars.iv1785.i = phi i64 [ %indvars.iv1785.i.unr, %.lr.ph1584.preheader.i.new ], [ %indvars.iv.next1786.i.3, %.lr.ph1584.i ] ; 5 uses
  %i.blg = trunc i64 %indvars.iv1785.i to i32
  %i.blh = add i32 %i.bin, %i.blg
  %i.bli = sext i32 %i.blh to i64
  %i.blj = getelementptr i8, ptr %i.ai, i64 %i.bli ; 2 uses
  %i.blk = getelementptr i8, ptr %i.blj, i64 -3
  %i.bll = getelementptr i8, ptr %i.blj, i64 -4
  %i.blm = load <4 x i8>, ptr %i.bll, align 1, !tbaa !52
  store <4 x i8> %i.blm, ptr %i.blk, align 1, !tbaa !52
  %i.bln = trunc i64 %indvars.iv1785.i to i32
  %.reass = add i32 %i.bln, %invariant.op
  %i.blo = sext i32 %.reass to i64
  %i.blp = getelementptr i8, ptr %i.ai, i64 %i.blo ; 2 uses
  %i.blq = getelementptr i8, ptr %i.blp, i64 -3
  %i.blr = getelementptr i8, ptr %i.blp, i64 -4
  %i.bls = load <4 x i8>, ptr %i.blr, align 1, !tbaa !52
  store <4 x i8> %i.bls, ptr %i.blq, align 1, !tbaa !52
  %i.blt = trunc i64 %indvars.iv1785.i to i32
  %.reass843 = add i32 %i.blt, %invariant.op842
  %i.blu = sext i32 %.reass843 to i64
  %i.blv = getelementptr i8, ptr %i.ai, i64 %i.blu ; 2 uses
  %i.blw = getelementptr i8, ptr %i.blv, i64 -3
  %i.blx = getelementptr i8, ptr %i.blv, i64 -4
  %i.bly = load <4 x i8>, ptr %i.blx, align 1, !tbaa !52
  store <4 x i8> %i.bly, ptr %i.blw, align 1, !tbaa !52
  %i.blz = trunc i64 %indvars.iv1785.i to i32
  %.reass845 = add i32 %i.blz, %invariant.op844
  %i.bma = sext i32 %.reass845 to i64
  %i.bmb = getelementptr i8, ptr %i.ai, i64 %i.bma ; 2 uses
  %i.bmc = getelementptr i8, ptr %i.bmb, i64 -3
  %i.bmd = getelementptr i8, ptr %i.bmb, i64 -4
  %i.bme = load <4 x i8>, ptr %i.bmd, align 1, !tbaa !52
  store <4 x i8> %i.bme, ptr %i.bmc, align 1, !tbaa !52
  %indvars.iv.next1786.i.3 = add nsw i64 %indvars.iv1785.i, -16 ; 2 uses
  %i.bmf = trunc i64 %indvars.iv.next1786.i.3 to i32 ; 2 uses
  %i.bmg = icmp ugt i32 %i.bmf, 3
  br i1 %i.bmg, label %.lr.ph1584.i, label %.preheader1410.i

.lr.ph1588.i:                                     ; preds = %.lr.ph1588.i, %.lr.ph1588.i.preheader.new
  %indvars.iv1788.i = phi i64 [ %indvars.iv1788.i.unr, %.lr.ph1588.i.preheader.new ], [ %indvars.iv.next1789.i.1, %.lr.ph1588.i ] ; 3 uses
  %i.bmh = trunc nuw i64 %indvars.iv1788.i to i32
  %i.bmi = add i32 %i.bin, %i.bmh                 ; 2 uses
  %i.bmj = add i32 %i.bmi, -1
  %i.bmk = zext i32 %i.bmj to i64
  %i.bml = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bmk
  %i.bmm = load i8, ptr %i.bml, align 1, !tbaa !52
  %i.bmn = zext i32 %i.bmi to i64
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bmn
  store i8 %i.bmm, ptr %i.bmo, align 1, !tbaa !52
  %i.bmp = trunc i64 %indvars.iv1788.i to i32
  %.reass847 = add i32 %i.bmp, %invariant.op846   ; 2 uses
  %i.bmq = add i32 %.reass847, -1
  %i.bmr = zext i32 %i.bmq to i64
  %i.bms = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bmr
  %i.bmt = load i8, ptr %i.bms, align 1, !tbaa !52
  %i.bmu = zext i32 %.reass847 to i64
  %i.bmv = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bmu
  store i8 %i.bmt, ptr %i.bmv, align 1, !tbaa !52
  %indvars.iv.next1789.i.1 = add nsw i64 %indvars.iv1788.i, -2 ; 2 uses
  %i.bmw = and i64 %indvars.iv.next1789.i.1, 4294967295
  %.not1351.i.1 = icmp eq i64 %i.bmw, 0
  br i1 %.not1351.i.1, label %._crit_edge1589.i, label %.lr.ph1588.i, !llvm.loop !47

._crit_edge1589.i:                                ; preds = %.lr.ph1588.i.prol.loopexit, %.lr.ph1588.i, %middle.block572, %vec.epilog.middle.block586, %.preheader1410.i
  %i.bmx = sext i32 %i.bin to i64
  %i.bmy = getelementptr inbounds i8, ptr %i.ai, i64 %i.bmx
  store i8 %i.bir, ptr %i.bmy, align 1, !tbaa !52
  br label %.loopexit1413.i

bb.fw:                                            ; preds = %bb.fu
  %i.bmz = lshr i32 %i.bil, 4
  %i.bna = and i32 %i.bil, 15                     ; 2 uses
  %i.bnb = zext nneg i32 %i.bmz to i64            ; 2 uses
  %i.bnc = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bnb ; 3 uses
  %i.bnd = load i32, ptr %i.bnc, align 4, !tbaa !58 ; 3 uses
  %i.bne = add nsw i32 %i.bnd, %i.bna
  %i.bnf = sext i32 %i.bne to i64
  %i.bng = getelementptr inbounds i8, ptr %i.ai, i64 %i.bnf
  %i.bnh = load i8, ptr %i.bng, align 1, !tbaa !52 ; 3 uses
  %.not1670.i = icmp eq i32 %i.bna, 0
  br i1 %.not1670.i, label %.lr.ph1576.preheader.i.a, label %.lr.ph1571.preheader.i

.lr.ph1571.preheader.i:                           ; preds = %bb.fw
  %i.bni = sext i32 %i.bnd to i64
  %i.bnj = add i32 %.01116.i, 15
  %i.bnk = and i32 %i.bnj, 15
  %i.bnl = zext nneg i32 %i.bnk to i64
  %i.bnm = add nsw i64 %i.bni, %i.bnl
  br label %.lr.ph1571.i

.lr.ph1571.i:                                     ; preds = %.lr.ph1571.i, %.lr.ph1571.preheader.i
  %indvars.iv1770.i = phi i64 [ %i.bnm, %.lr.ph1571.preheader.i ], [ %indvars.iv.next1771.i, %.lr.ph1571.i ] ; 2 uses
  %i.bnn = getelementptr i8, ptr %i.ai, i64 %indvars.iv1770.i ; 2 uses
  %i.bno = getelementptr i8, ptr %i.bnn, i64 -1
  %i.bnp = load i8, ptr %i.bno, align 1, !tbaa !52
  store i8 %i.bnp, ptr %i.bnn, align 1, !tbaa !52
  %indvars.iv.next1771.i = add nsw i64 %indvars.iv1770.i, -1 ; 2 uses
  %i.bnq = load i32, ptr %i.bnc, align 4, !tbaa !58 ; 2 uses
  %i.bnr = sext i32 %i.bnq to i64
  %i.bns = icmp sgt i64 %indvars.iv.next1771.i, %i.bnr
  br i1 %i.bns, label %.lr.ph1571.i, label %.lr.ph1576.preheader.i.a

.lr.ph1576.preheader.i.a:                         ; preds = %.lr.ph1571.i, %bb.fw
  %.lcssa1480.i = phi i32 [ %i.bnd, %bb.fw ], [ %i.bnq, %.lr.ph1571.i ]
  %i.bnt = add nsw i32 %.lcssa1480.i, 1
  store i32 %i.bnt, ptr %i.bnc, align 4, !tbaa !58
  br label %.lr.ph1576.i

.lr.ph1576.i:                                     ; preds = %.lr.ph1576.i, %.lr.ph1576.preheader.i.a
  %indvars.iv1773.i = phi i64 [ %i.bnb, %.lr.ph1576.preheader.i.a ], [ %indvars.iv.next1774.i, %.lr.ph1576.i ] ; 3 uses
  %i.bnu = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv1773.i ; 3 uses
  %i.bnv = load i32, ptr %i.bnu, align 4, !tbaa !58
  %i.bnw = add nsw i32 %i.bnv, -1                 ; 2 uses
  store i32 %i.bnw, ptr %i.bnu, align 4, !tbaa !58
  %i.bnx = getelementptr i8, ptr %i.bnu, i64 -4
  %i.bny = load i32, ptr %i.bnx, align 4, !tbaa !58
  %i.bnz = sext i32 %i.bny to i64
  %i.boa = getelementptr i8, ptr %i.ai, i64 %i.bnz
  %i.bob = getelementptr i8, ptr %i.boa, i64 15
  %i.boc = load i8, ptr %i.bob, align 1, !tbaa !52
  %i.bod = sext i32 %i.bnw to i64
  %i.boe = getelementptr inbounds i8, ptr %i.ai, i64 %i.bod
  store i8 %i.boc, ptr %i.boe, align 1, !tbaa !52
  %indvars.iv.next1774.i = add nsw i64 %indvars.iv1773.i, -1
  %1 = icmp samesign ugt i64 %indvars.iv1773.i, 1
  br i1 %1, label %.lr.ph1576.i, label %._crit_edge1577.i

._crit_edge1577.i:                                ; preds = %.lr.ph1576.i
  %i.bof = load i32, ptr %i.aj, align 4, !tbaa !58
  %i.bog = add nsw i32 %i.bof, -1                 ; 2 uses
  store i32 %i.bog, ptr %i.aj, align 4, !tbaa !58
  %i.boh = sext i32 %i.bog to i64
  %i.boi = getelementptr inbounds i8, ptr %i.ai, i64 %i.boh
  store i8 %i.bnh, ptr %i.boi, align 1, !tbaa !52
  %i.boj = load i32, ptr %i.aj, align 4, !tbaa !58
  %i.bok = icmp eq i32 %i.boj, 0
  br i1 %i.bok, label %.preheader1411.i, label %.loopexit1413.i

.preheader1411.i:                                 ; preds = %._crit_edge1577.i, %.preheader1411.i
  %indvars.iv1780.i = phi i64 [ %indvars.iv.next1781.i, %.preheader1411.i ], [ 15, %._crit_edge1577.i ] ; 3 uses
  %indvars.iv1778.i = phi i64 [ %indvars.iv.next1779.i, %.preheader1411.i ], [ 4095, %._crit_edge1577.i ] ; 3 uses
  %i.bol = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv1780.i ; 17 uses
  %i.bom = load i32, ptr %i.bol, align 4, !tbaa !58
  %i.bon = sext i32 %i.bom to i64
  %i.boo = getelementptr i8, ptr %i.ai, i64 %i.bon
  %i.bop = getelementptr i8, ptr %i.boo, i64 15
  %i.boq = load i8, ptr %i.bop, align 1, !tbaa !52
  %i.bor = getelementptr inbounds i8, ptr %i.ai, i64 %indvars.iv1778.i ; 15 uses
  store i8 %i.boq, ptr %i.bor, align 1, !tbaa !52
  %i.bos = load i32, ptr %i.bol, align 4, !tbaa !58
  %i.bot = sext i32 %i.bos to i64
  %i.bou = getelementptr i8, ptr %i.ai, i64 %i.bot
  %i.bov = getelementptr i8, ptr %i.bou, i64 14
  %i.bow = load i8, ptr %i.bov, align 1, !tbaa !52
  %i.box = getelementptr i8, ptr %i.bor, i64 -1
  store i8 %i.bow, ptr %i.box, align 1, !tbaa !52
  %i.boy = load i32, ptr %i.bol, align 4, !tbaa !58
  %i.boz = sext i32 %i.boy to i64
  %i.bpa = getelementptr i8, ptr %i.ai, i64 %i.boz
  %i.bpb = getelementptr i8, ptr %i.bpa, i64 13
  %i.bpc = load i8, ptr %i.bpb, align 1, !tbaa !52
  %i.bpd = getelementptr i8, ptr %i.bor, i64 -2
  store i8 %i.bpc, ptr %i.bpd, align 1, !tbaa !52
  %i.bpe = load i32, ptr %i.bol, align 4, !tbaa !58
  %i.bpf = sext i32 %i.bpe to i64
  %i.bpg = getelementptr i8, ptr %i.ai, i64 %i.bpf
  %i.bph = getelementptr i8, ptr %i.bpg, i64 12
  %i.bpi = load i8, ptr %i.bph, align 1, !tbaa !52
  %i.bpj = getelementptr i8, ptr %i.bor, i64 -3
  store i8 %i.bpi, ptr %i.bpj, align 1, !tbaa !52
  %i.bpk = load i32, ptr %i.bol, align 4, !tbaa !58
  %i.bpl = sext i32 %i.bpk to i64
  %i.bpm = getelementptr i8, ptr %i.ai, i64 %i.bpl
  %i.bpn = getelementptr i8, ptr %i.bpm, i64 11
  %i.bpo = load i8, ptr %i.bpn, align 1, !tbaa !52
  %i.bpp = getelementptr i8, ptr %i.bor, i64 -4
  store i8 %i.bpo, ptr %i.bpp, align 1, !tbaa !52
  %i.bpq = load i32, ptr %i.bol, align 4, !tbaa !58
  %i.bpr = sext i32 %i.bpq to i64
  %i.bps = getelementptr i8, ptr %i.ai, i64 %i.bpr
  %i.bpt = getelementptr i8, ptr %i.bps, i64 10
  %i.bpu = load i8, ptr %i.bpt, align 1, !tbaa !52
  %i.bpv = getelementptr i8, ptr %i.bor, i64 -5
  store i8 %i.bpu, ptr %i.bpv, align 1, !tbaa !52
  %i.bpw = load i32, ptr %i.bol, align 4, !tbaa !58
  %i.bpx = sext i32 %i.bpw to i64
  %i.bpy = getelementptr i8, ptr %i.ai, i64 %i.bpx
  %i.bpz = getelementptr i8, ptr %i.bpy, i64 9
  %i.bqa = load i8, ptr %i.bpz, align 1, !tbaa !52
  %i.bqb = getelementptr i8, ptr %i.bor, i64 -6
  store i8 %i.bqa, ptr %i.bqb, align 1, !tbaa !52
  %i.bqc = load i32, ptr %i.bol, align 4, !tbaa !58
  %i.bqd = sext i32 %i.bqc to i64
  %i.bqe = getelementptr i8, ptr %i.ai, i64 %i.bqd
  %i.bqf = getelementptr i8, ptr %i.bqe, i64 8
  %i.bqg = load i8, ptr %i.bqf, align 1, !tbaa !52
  %i.bqh = getelementptr i8, ptr %i.bor, i64 -7
  store i8 %i.bqg, ptr %i.bqh, align 1, !tbaa !52
  %i.bqi = load i32, ptr %i.bol, align 4, !tbaa !58
  %i.bqj = sext i32 %i.bqi to i64
  %i.bqk = getelementptr i8, ptr %i.ai, i64 %i.bqj
  %i.bql = getelementptr i8, ptr %i.bqk, i64 7
  %i.bqm = load i8, ptr %i.bql, align 1, !tbaa !52
  %i.bqn = getelementptr i8, ptr %i.bor, i64 -8
  store i8 %i.bqm, ptr %i.bqn, align 1, !tbaa !52
  %i.bqo = load i32, ptr %i.bol, align 4, !tbaa !58
  %i.bqp = sext i32 %i.bqo to i64
  %i.bqq = getelementptr i8, ptr %i.ai, i64 %i.bqp
  %i.bqr = getelementptr i8, ptr %i.bqq, i64 6
  %i.bqs = load i8, ptr %i.bqr, align 1, !tbaa !52
  %i.bqt = getelementptr i8, ptr %i.bor, i64 -9
  store i8 %i.bqs, ptr %i.bqt, align 1, !tbaa !52
  %i.bqu = load i32, ptr %i.bol, align 4, !tbaa !58
  %i.bqv = sext i32 %i.bqu to i64
  %i.bqw = getelementptr i8, ptr %i.ai, i64 %i.bqv
  %i.bqx = getelementptr i8, ptr %i.bqw, i64 5
  %i.bqy = load i8, ptr %i.bqx, align 1, !tbaa !52
  %i.bqz = getelementptr i8, ptr %i.bor, i64 -10
  store i8 %i.bqy, ptr %i.bqz, align 1, !tbaa !52
  %i.bra = load i32, ptr %i.bol, align 4, !tbaa !58
  %i.brb = sext i32 %i.bra to i64
  %i.brc = getelementptr i8, ptr %i.ai, i64 %i.brb
  %i.brd = getelementptr i8, ptr %i.brc, i64 4
  %i.bre = load i8, ptr %i.brd, align 1, !tbaa !52
  %i.brf = getelementptr i8, ptr %i.bor, i64 -11
  store i8 %i.bre, ptr %i.brf, align 1, !tbaa !52
  %i.brg = load i32, ptr %i.bol, align 4, !tbaa !58
  %i.brh = sext i32 %i.brg to i64
  %i.bri = getelementptr i8, ptr %i.ai, i64 %i.brh
  %i.brj = getelementptr i8, ptr %i.bri, i64 3
  %i.brk = load i8, ptr %i.brj, align 1, !tbaa !52
  %i.brl = getelementptr i8, ptr %i.bor, i64 -12
  store i8 %i.brk, ptr %i.brl, align 1, !tbaa !52
  %i.brm = load i32, ptr %i.bol, align 4, !tbaa !58
  %i.brn = sext i32 %i.brm to i64
  %i.bro = getelementptr i8, ptr %i.ai, i64 %i.brn
  %i.brp = getelementptr i8, ptr %i.bro, i64 2
  %i.brq = load i8, ptr %i.brp, align 1, !tbaa !52
  %i.brr = getelementptr i8, ptr %i.bor, i64 -13
  store i8 %i.brq, ptr %i.brr, align 1, !tbaa !52
  %i.brs = load i32, ptr %i.bol, align 4, !tbaa !58
  %i.brt = sext i32 %i.brs to i64
  %i.bru = getelementptr i8, ptr %i.ai, i64 %i.brt
  %i.brv = getelementptr i8, ptr %i.bru, i64 1
  %i.brw = load i8, ptr %i.brv, align 1, !tbaa !52
  %i.brx = getelementptr i8, ptr %i.bor, i64 -14
  store i8 %i.brw, ptr %i.brx, align 1, !tbaa !52
  %indvars.iv.next1776.14.i = add nsw i64 %indvars.iv1778.i, -15 ; 2 uses
  %i.bry = load i32, ptr %i.bol, align 4, !tbaa !58
  %i.brz = sext i32 %i.bry to i64
  %i.bsa = getelementptr inbounds i8, ptr %i.ai, i64 %i.brz
  %i.bsb = load i8, ptr %i.bsa, align 1, !tbaa !52
  %i.bsc = getelementptr inbounds i8, ptr %i.ai, i64 %indvars.iv.next1776.14.i
  store i8 %i.bsb, ptr %i.bsc, align 1, !tbaa !52
  %i.bsd = trunc nsw i64 %indvars.iv.next1776.14.i to i32
  %indvars.iv.next1779.i = add nsw i64 %indvars.iv1778.i, -16
  store i32 %i.bsd, ptr %i.bol, align 4, !tbaa !58
  %indvars.iv.next1781.i = add nsw i64 %indvars.iv1780.i, -1
  %.not2088.i = icmp eq i64 %indvars.iv1780.i, 0
  br i1 %.not2088.i, label %.loopexit1413.i, label %.preheader1411.i

.loopexit1413.i:                                  ; preds = %.preheader1411.i, %._crit_edge1577.i, %._crit_edge1589.i
  %.0939.i = phi i8 [ %i.bir, %._crit_edge1589.i ], [ %i.bnh, %._crit_edge1577.i ], [ %i.bnh, %.preheader1411.i ]
  %i.bse = zext i8 %.0939.i to i64
  %i.bsf = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bse
  %i.bsg = load i8, ptr %i.bsf, align 1, !tbaa !52 ; 3 uses
  %i.bsh = zext i8 %i.bsg to i64
  %i.bsi = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.bsh ; 2 uses
  %i.bsj = load i32, ptr %i.bsi, align 4, !tbaa !58
  %i.bsk = add nsw i32 %i.bsj, 1
  store i32 %i.bsk, ptr %i.bsi, align 4, !tbaa !58
  %i.bsl = load i8, ptr %i.h, align 4, !tbaa !26
  %.not1352.i = icmp eq i8 %i.bsl, 0
  %i.bsm = sext i32 %.31140.i to i64              ; 2 uses
  br i1 %.not1352.i, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %.loopexit1413.i
  %i.bsn = zext i8 %i.bsg to i16
  %i.bso = load ptr, ptr %i.q, align 8, !tbaa !27
  %i.bsp = getelementptr inbounds [2 x i8], ptr %i.bso, i64 %i.bsm
  store i16 %i.bsn, ptr %i.bsp, align 2, !tbaa !60
  br label %bb.fz

bb.fy:                                            ; preds = %.loopexit1413.i
  %i.bsq = zext i8 %i.bsg to i32
  %i.bsr = load ptr, ptr %i.t, align 8, !tbaa !29
  %i.bss = getelementptr inbounds [4 x i8], ptr %i.bsr, i64 %i.bsm
  store i32 %i.bsq, ptr %i.bss, align 4, !tbaa !58
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  %i.bst = add nsw i32 %.31140.i, 1               ; 2 uses
  %i.bsu = icmp eq i32 %.41105.i, 0
  br i1 %i.bsu, label %bb.ga, label %bb.gc

bb.ga:                                            ; preds = %bb.fz
  %i.bsv = add nsw i32 %.41090.i, 1               ; 4 uses
  %.not1353.i = icmp slt i32 %i.bsv, %.121065.i
  br i1 %.not1353.i, label %bb.gb, label %BZ2_decompress.exit

bb.gb:                                            ; preds = %bb.ga
  %i.bsw = sext i32 %i.bsv to i64
  %i.bsx = getelementptr inbounds i8, ptr %i.ab, i64 %i.bsw
  %i.bsy = load i8, ptr %i.bsx, align 1, !tbaa !52 ; 2 uses
  %i.bsz = zext i8 %i.bsy to i32
  %i.bta = zext i8 %i.bsy to i64                  ; 4 uses
  %i.btb = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.bta
  %i.btc = load i32, ptr %i.btb, align 4, !tbaa !58
  %i.btd = getelementptr inbounds nuw [1032 x i8], ptr %i.ad, i64 %i.bta
  %i.bte = getelementptr inbounds nuw [1032 x i8], ptr %i.af, i64 %i.bta
  %i.btf = getelementptr inbounds nuw [1032 x i8], ptr %i.ae, i64 %i.bta
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.fz
  %.101235.i = phi i32 [ %i.bsz, %bb.gb ], [ %.41229.i, %bb.fz ]
  %.101220.i = phi i32 [ %i.btc, %bb.gb ], [ %.41214.i, %bb.fz ] ; 2 uses
  %.101205.i = phi ptr [ %i.btd, %bb.gb ], [ %.41199.i, %bb.fz ]
  %.101190.i = phi ptr [ %i.btf, %bb.gb ], [ %.41184.i, %bb.fz ]
  %.101175.i = phi ptr [ %i.bte, %bb.gb ], [ %.41169.i, %bb.fz ]
  %.101111.i = phi i32 [ 50, %bb.gb ], [ %.41105.i, %bb.fz ]
  %.101096.i = phi i32 [ %i.bsv, %bb.gb ], [ %.41090.i, %bb.fz ]
  %i.btg = add nsw i32 %.101111.i, -1
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.aq
  %i.bth = phi i32 [ %i.bdu, %bb.gc ], [ %.pre1877.i, %bb.aq ] ; 3 uses
  %.51298.i = phi i32 [ %.01293.i, %bb.gc ], [ %.pre1873.i, %bb.aq ] ; 3 uses
  %.151289.i = phi i32 [ %.101284.i, %bb.gc ], [ %.pre1875.i, %bb.aq ] ; 3 uses
end_hunk_1
