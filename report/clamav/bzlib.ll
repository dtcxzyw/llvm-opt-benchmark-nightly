Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/bzlib?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 19
begin_hunk_0_@nsis_BZ2_bzDecompressInit:bb.a
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
  %.ph727 = phi ptr [ %i.ao, %.lr.ph.lr.ph.i ], [ %i.az, %bb.h ] ; 2 uses
  %.ph728 = phi i32 [ %.pre.pre.i, %.lr.ph.lr.ph.i ], [ %i.ay, %bb.h ]
  %i.as = icmp eq i32 %.ph728, 0
  %i.at = getelementptr inbounds nuw i8, ptr %.ph727, i64 32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.outer, %.backedge.i
  %1 = phi i1 [ false, %.backedge.i ], [ %i.as, %.lr.ph.i.outer ]
  br i1 %1, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.au = load i8, ptr %i.j, align 4, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %.ph727, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !51
  store i8 %i.au, ptr %i.aw, align 1, !tbaa !52
  %i.ax = load i32, ptr %i.i, align 8, !tbaa !49
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %i.i, align 8, !tbaa !49
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !17  ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !51
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !51
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !48
  %i.bf = add i32 %i.be, -1                       ; 2 uses
  store i32 %i.bf, ptr %i.bd, align 8, !tbaa !48
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 36 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !24
  %i.bi = add i32 %i.bh, 1                        ; 2 uses
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !24
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 40 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !25
  %i.bm = add i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 8, !tbaa !25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bn = icmp eq i32 %i.bf, 0
  br i1 %i.bn, label %unRLE_obuf_to_output_SMALL.exit, label %.lr.ph.i.outer

bb.i:                                             ; preds = %.lr.ph.i
  %i.bo = load i32, ptr %i.k, align 4, !tbaa !53  ; 8 uses
  %i.bp = load i32, ptr %i.l, align 8, !tbaa !54  ; 4 uses
  %i.bq = add nsw i32 %i.bp, 1                    ; 2 uses
  %i.br = icmp eq i32 %i.bo, %i.bq
  br i1 %i.br, label %unRLE_obuf_to_output_SMALL.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = icmp sgt i32 %i.bo, %i.bq
  br i1 %i.bs, label %unRLE_obuf_to_output_SMALL.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.i, align 8, !tbaa !49
  %i.bt = load i32, ptr %i.m, align 8, !tbaa !55  ; 4 uses
  %i.bu = trunc i32 %i.bt to i8
  store i8 %i.bu, ptr %i.j, align 4, !tbaa !50
  %i.bv = load i32, ptr %i.n, align 4, !tbaa !56  ; 5 uses
  %i.bw = load i32, ptr %i.o, align 8, !tbaa !57
  %i.bx = mul i32 %i.bw, 100000                   ; 5 uses
  %.not.i = icmp ult i32 %i.bv, %i.bx
  br i1 %.not.i, label %.preheader145.i, label %unRLE_obuf_to_output_SMALL.exit.thread

.preheader145.i:                                  ; preds = %bb.k, %.preheader145.i
  %.09.i.i = phi i32 [ %.09..i.i, %.preheader145.i ], [ 0, %bb.k ] ; 2 uses
  %.0.i.i = phi i32 [ %..0.i.i, %.preheader145.i ], [ 256, %bb.k ] ; 2 uses
  %i.by = add nsw i32 %.0.i.i, %.09.i.i
  %i.bz = ashr i32 %i.by, 1                       ; 3 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !58
  %.not.i.i = icmp slt i32 %i.bv, %i.cc           ; 2 uses
  %.09..i.i = select i1 %.not.i.i, i32 %.09.i.i, i32 %i.bz ; 3 uses
  %..0.i.i = select i1 %.not.i.i, i32 %i.bz, i32 %.0.i.i ; 2 uses
  %i.cd = sub nsw i32 %..0.i.i, %.09..i.i
  %.not11.i.i = icmp eq i32 %i.cd, 1
  br i1 %.not11.i.i, label %indexIntoF.exit.i, label %.preheader145.i

indexIntoF.exit.i:                                ; preds = %.preheader145.i
  %i.ce = load ptr, ptr %i.q, align 8, !tbaa !27  ; 5 uses
  %i.cf = zext i32 %i.bv to i64
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !60
  %i.ci = zext i16 %i.ch to i32                   ; 2 uses
  %i.cj = load ptr, ptr %i.r, align 8, !tbaa !28  ; 5 uses
  %i.ck = lshr i32 %i.bv, 1
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !52
  %i.co = zext i8 %i.cn to i32
  %i.cp = shl i32 %i.bv, 2
  %i.cq = and i32 %i.cp, 4
  %i.cr = lshr i32 %i.co, %i.cq
  %i.cs = shl nuw nsw i32 %i.cr, 16
  %i.ct = and i32 %i.cs, 983040
  %i.cu = or disjoint i32 %i.ct, %i.ci            ; 5 uses
  store i32 %i.cu, ptr %i.n, align 4, !tbaa !56
  %i.cv = add nsw i32 %i.bo, 1                    ; 2 uses
  store i32 %i.cv, ptr %i.k, align 4, !tbaa !53
  %i.cw = icmp eq i32 %i.bo, %i.bp
  br i1 %i.cw, label %.backedge.i, label %bb.l

bb.l:                                             ; preds = %indexIntoF.exit.i
  %i.cx = and i32 %.09..i.i, 255                  ; 2 uses
  %.not105.i = icmp eq i32 %i.cx, %i.bt
  br i1 %.not105.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.cx, ptr %i.m, align 8, !tbaa !55
  br label %.backedge.i

.backedge.i:                                      ; preds = %indexIntoF.exit139.i, %bb.s, %indexIntoF.exit125.i, %bb.p, %indexIntoF.exit118.i, %bb.m, %indexIntoF.exit.i
  %i.cy = load i32, ptr %i.at, align 8, !tbaa !48
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %unRLE_obuf_to_output_SMALL.exit, label %.lr.ph.i

bb.n:                                             ; preds = %bb.l
  store i32 2, ptr %i.i, align 8, !tbaa !49
  %.not106.i = icmp ult i32 %i.cu, %i.bx
  br i1 %.not106.i, label %.preheader142.i, label %unRLE_obuf_to_output_SMALL.exit.thread

.preheader142.i:                                  ; preds = %bb.n, %.preheader142.i
  %.09.i112.i = phi i32 [ %.09..i115.i, %.preheader142.i ], [ 0, %bb.n ] ; 2 uses
  %.0.i113.i = phi i32 [ %..0.i116.i, %.preheader142.i ], [ 256, %bb.n ] ; 2 uses
  %i.da = add nsw i32 %.0.i113.i, %.09.i112.i
  %i.db = ashr i32 %i.da, 1                       ; 3 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !58
  %.not.i114.i = icmp slt i32 %i.cu, %i.de        ; 2 uses
  %.09..i115.i = select i1 %.not.i114.i, i32 %.09.i112.i, i32 %i.db ; 3 uses
  %..0.i116.i = select i1 %.not.i114.i, i32 %i.db, i32 %.0.i113.i ; 2 uses
  %i.df = sub nsw i32 %..0.i116.i, %.09..i115.i
  %.not11.i117.i = icmp eq i32 %i.df, 1
  br i1 %.not11.i117.i, label %indexIntoF.exit118.i, label %.preheader142.i

indexIntoF.exit118.i:                             ; preds = %.preheader142.i
  %i.dg = zext nneg i32 %i.cu to i64
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !60
  %i.dj = zext i16 %i.di to i32                   ; 2 uses
  %i.dk = lshr i32 %i.cu, 1
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !52
  %i.do = zext i8 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.ci, 2
  %i.dq = and i32 %i.dp, 4
  %i.dr = lshr i32 %i.do, %i.dq
  %i.ds = shl nuw nsw i32 %i.dr, 16
  %i.dt = and i32 %i.ds, 983040
  %i.du = or disjoint i32 %i.dt, %i.dj            ; 5 uses
  store i32 %i.du, ptr %i.n, align 4, !tbaa !56
  %i.dv = add nsw i32 %i.bo, 2                    ; 2 uses
  store i32 %i.dv, ptr %i.k, align 4, !tbaa !53
  %i.dw = icmp eq i32 %i.cv, %i.bp
  br i1 %i.dw, label %.backedge.i, label %bb.o

bb.o:                                             ; preds = %indexIntoF.exit118.i
  %i.dx = and i32 %.09..i115.i, 255               ; 2 uses
  %.not107.i = icmp eq i32 %i.dx, %i.bt
  br i1 %.not107.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 %i.dx, ptr %i.m, align 8, !tbaa !55
  br label %.backedge.i

bb.q:                                             ; preds = %bb.o
  store i32 3, ptr %i.i, align 8, !tbaa !49
  %.not108.i = icmp ult i32 %i.du, %i.bx
  br i1 %.not108.i, label %.preheader141.i, label %unRLE_obuf_to_output_SMALL.exit.thread

.preheader141.i:                                  ; preds = %bb.q, %.preheader141.i
  %.09.i119.i = phi i32 [ %.09..i122.i, %.preheader141.i ], [ 0, %bb.q ] ; 2 uses
  %.0.i120.i = phi i32 [ %..0.i123.i, %.preheader141.i ], [ 256, %bb.q ] ; 2 uses
  %i.dy = add nsw i32 %.0.i120.i, %.09.i119.i
  %i.dz = ashr i32 %i.dy, 1                       ; 3 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !58
  %.not.i121.i = icmp slt i32 %i.du, %i.ec        ; 2 uses
  %.09..i122.i = select i1 %.not.i121.i, i32 %.09.i119.i, i32 %i.dz ; 3 uses
  %..0.i123.i = select i1 %.not.i121.i, i32 %i.dz, i32 %.0.i120.i ; 2 uses
  %i.ed = sub nsw i32 %..0.i123.i, %.09..i122.i
  %.not11.i124.i = icmp eq i32 %i.ed, 1
  br i1 %.not11.i124.i, label %indexIntoF.exit125.i, label %.preheader141.i

indexIntoF.exit125.i:                             ; preds = %.preheader141.i
  %i.ee = zext nneg i32 %i.du to i64
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %i.ee
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !60
  %i.eh = zext i16 %i.eg to i32                   ; 2 uses
  %i.ei = lshr i32 %i.du, 1
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !52
  %i.em = zext i8 %i.el to i32
  %i.en = shl nuw nsw i32 %i.dj, 2
  %i.eo = and i32 %i.en, 4
  %i.ep = lshr i32 %i.em, %i.eo
  %i.eq = shl nuw nsw i32 %i.ep, 16
  %i.er = and i32 %i.eq, 983040
  %i.es = or disjoint i32 %i.er, %i.eh            ; 5 uses
  store i32 %i.es, ptr %i.n, align 4, !tbaa !56
  %i.et = add nsw i32 %i.bo, 3
  store i32 %i.et, ptr %i.k, align 4, !tbaa !53
  %i.eu = icmp eq i32 %i.dv, %i.bp
  br i1 %i.eu, label %.backedge.i, label %bb.r

bb.r:                                             ; preds = %indexIntoF.exit125.i
  %i.ev = and i32 %.09..i122.i, 255               ; 2 uses
  %.not109.i = icmp eq i32 %i.ev, %i.bt
  br i1 %.not109.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %i.ev, ptr %i.m, align 8, !tbaa !55
  br label %.backedge.i

bb.t:                                             ; preds = %bb.r
  %.not110.i = icmp ult i32 %i.es, %i.bx
  br i1 %.not110.i, label %.preheader140.i, label %unRLE_obuf_to_output_SMALL.exit.thread

.preheader140.i:                                  ; preds = %bb.t, %.preheader140.i
  %.09.i126.i = phi i32 [ %.09..i129.i, %.preheader140.i ], [ 0, %bb.t ] ; 2 uses
  %.0.i127.i = phi i32 [ %..0.i130.i, %.preheader140.i ], [ 256, %bb.t ] ; 2 uses
  %i.ew = add nsw i32 %.0.i127.i, %.09.i126.i
  %i.ex = ashr i32 %i.ew, 1                       ; 3 uses
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !58
  %.not.i128.i = icmp slt i32 %i.es, %i.fa        ; 2 uses
  %.09..i129.i = select i1 %.not.i128.i, i32 %.09.i126.i, i32 %i.ex ; 3 uses
  %..0.i130.i = select i1 %.not.i128.i, i32 %i.ex, i32 %.0.i127.i ; 2 uses
  %i.fb = sub nsw i32 %..0.i130.i, %.09..i129.i
  %.not11.i131.i = icmp eq i32 %i.fb, 1
  br i1 %.not11.i131.i, label %indexIntoF.exit132.i, label %.preheader140.i

indexIntoF.exit132.i:                             ; preds = %.preheader140.i
  %i.fc = zext nneg i32 %i.es to i64
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %i.fc
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !60
  %i.ff = zext i16 %i.fe to i32                   ; 2 uses
  %i.fg = lshr i32 %i.es, 1
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !52
  %i.fk = zext i8 %i.fj to i32
  %i.fl = shl nuw nsw i32 %i.eh, 2
  %i.fm = and i32 %i.fl, 4
  %i.fn = lshr i32 %i.fk, %i.fm
  %i.fo = shl nuw nsw i32 %i.fn, 16
  %i.fp = and i32 %i.fo, 983040
  %i.fq = or disjoint i32 %i.fp, %i.ff            ; 5 uses
  store i32 %i.fq, ptr %i.n, align 4, !tbaa !56
  %i.fr = add nsw i32 %i.bo, 4
  store i32 %i.fr, ptr %i.k, align 4, !tbaa !53
  %i.fs = and i32 %.09..i129.i, 255
  %i.ft = add nuw nsw i32 %i.fs, 4
  store i32 %i.ft, ptr %i.i, align 8, !tbaa !49
  %.not111.i = icmp ult i32 %i.fq, %i.bx
  br i1 %.not111.i, label %.preheader.i, label %unRLE_obuf_to_output_SMALL.exit.thread

.preheader.i:                                     ; preds = %indexIntoF.exit132.i, %.preheader.i
  %.09.i133.i = phi i32 [ %.09..i136.i, %.preheader.i ], [ 0, %indexIntoF.exit132.i ] ; 2 uses
  %.0.i134.i = phi i32 [ %..0.i137.i, %.preheader.i ], [ 256, %indexIntoF.exit132.i ] ; 2 uses
  %i.fu = add nsw i32 %.0.i134.i, %.09.i133.i
  %i.fv = ashr i32 %i.fu, 1                       ; 3 uses
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !58
  %.not.i135.i = icmp slt i32 %i.fq, %i.fy        ; 2 uses
  %.09..i136.i = select i1 %.not.i135.i, i32 %.09.i133.i, i32 %i.fv ; 3 uses
  %..0.i137.i = select i1 %.not.i135.i, i32 %i.fv, i32 %.0.i134.i ; 2 uses
  %i.fz = sub nsw i32 %..0.i137.i, %.09..i136.i
  %.not11.i138.i = icmp eq i32 %i.fz, 1
  br i1 %.not11.i138.i, label %indexIntoF.exit139.i, label %.preheader.i

indexIntoF.exit139.i:                             ; preds = %.preheader.i
  store i32 %.09..i136.i, ptr %i.m, align 8, !tbaa !55
  %i.ga = zext nneg i32 %i.fq to i64
  %i.gb = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %i.ga
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !60
  %i.gd = zext i16 %i.gc to i32
  %i.ge = lshr i32 %i.fq, 1
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !52
  %i.gi = zext i8 %i.gh to i32
  %i.gj = shl nuw nsw i32 %i.ff, 2
  %i.gk = and i32 %i.gj, 4
  %i.gl = lshr i32 %i.gi, %i.gk
  %i.gm = shl nuw nsw i32 %i.gl, 16
  %i.gn = and i32 %i.gm, 983040
  %i.go = or disjoint i32 %i.gn, %i.gd
  store i32 %i.go, ptr %i.n, align 4, !tbaa !56
  %i.gp = add nsw i32 %i.bo, 5
  store i32 %i.gp, ptr %i.k, align 4, !tbaa !53
  br label %.backedge.i

bb.u:                                             ; preds = %.loopexit
  %i.gq = load i32, ptr %i.s, align 8, !tbaa !61
  %i.gr = load i8, ptr %i.j, align 4, !tbaa !50
  %i.gs = load i32, ptr %i.i, align 8, !tbaa !49
  %i.gt = load i32, ptr %i.k, align 4, !tbaa !53
  %i.gu = load i32, ptr %i.m, align 8, !tbaa !55
  %i.gv = load ptr, ptr %i.t, align 8, !tbaa !29  ; 6 uses
  %i.gw = load i32, ptr %i.n, align 4, !tbaa !56
  %i.gx = load ptr, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !51
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !48 ; 2 uses
  %i.hc = load i32, ptr %i.o, align 8, !tbaa !57
  %i.hd = load i32, ptr %i.l, align 8, !tbaa !54  ; 2 uses
  %i.he = add nsw i32 %i.hd, 1                    ; 7 uses
end_hunk_0
