Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_asm?download=true
inline.NumInlined: 532
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@ra_evict:bb.a
  br i1 %.not178, label %bb.au, label %bb.at, !prof !80

bb.at:                                            ; preds = %bb.as
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !26
  %spec.select223 = tail call i32 @llvm.umin.i32(i32 %i.bn, i32 %.20)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.21 = phi i32 [ %.20, %bb.as ], [ %spec.select223, %bb.at ] ; 2 uses
  %i.bo = and i32 %1, 33554432
  %.not179 = icmp eq i32 %i.bo, 0
  br i1 %.not179, label %bb.aw, label %bb.av, !prof !80

bb.av:                                            ; preds = %bb.au
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !26
  %spec.select224 = tail call i32 @llvm.umin.i32(i32 %i.bq, i32 %.21)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.22 = phi i32 [ %.21, %bb.au ], [ %spec.select224, %bb.av ] ; 2 uses
  %i.br = and i32 %1, 67108864
  %.not180 = icmp eq i32 %i.br, 0
  br i1 %.not180, label %bb.ay, label %bb.ax, !prof !80

bb.ax:                                            ; preds = %bb.aw
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !26
  %spec.select225 = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 %.22)
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.23 = phi i32 [ %.22, %bb.aw ], [ %spec.select225, %bb.ax ] ; 2 uses
  %i.bu = and i32 %1, 134217728
  %.not181 = icmp eq i32 %i.bu, 0
  br i1 %.not181, label %bb.ba, label %bb.az, !prof !80

bb.az:                                            ; preds = %bb.ay
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !26
  %spec.select226 = tail call i32 @llvm.umin.i32(i32 %i.bw, i32 %.23)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.24 = phi i32 [ %.23, %bb.ay ], [ %spec.select226, %bb.az ] ; 2 uses
  %i.bx = and i32 %1, 268435456
  %.not182 = icmp eq i32 %i.bx, 0
  br i1 %.not182, label %bb.bc, label %bb.bb, !prof !80

bb.bb:                                            ; preds = %bb.ba
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !26
  %spec.select227 = tail call i32 @llvm.umin.i32(i32 %i.bz, i32 %.24)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.25 = phi i32 [ %.24, %bb.ba ], [ %spec.select227, %bb.bb ] ; 2 uses
  %i.ca = and i32 %1, 536870912
  %.not183 = icmp eq i32 %i.ca, 0
  br i1 %.not183, label %bb.be, label %bb.bd, !prof !80

bb.bd:                                            ; preds = %bb.bc
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !26
  %spec.select228 = tail call i32 @llvm.umin.i32(i32 %i.cc, i32 %.25)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.26 = phi i32 [ %.25, %bb.bc ], [ %spec.select228, %bb.bd ] ; 2 uses
  %i.cd = and i32 %1, 1073741824
  %.not184 = icmp eq i32 %i.cd, 0
  br i1 %.not184, label %bb.bg, label %bb.bf, !prof !80

bb.bf:                                            ; preds = %bb.be
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !26
  %spec.select229 = tail call i32 @llvm.umin.i32(i32 %i.cf, i32 %.26)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.27 = phi i32 [ %.26, %bb.be ], [ %spec.select229, %bb.bf ] ; 2 uses
  %i.cg = icmp slt i32 %1, 0
  br i1 %i.cg, label %.sink.split, label %bb.bh, !prof !39

.sink.split:                                      ; preds = %bb.bg, %bb.ab
  %.sink = phi i64 [ 60, %bb.ab ], [ 124, %bb.bg ]
  %.27.sink = phi i32 [ %.12, %bb.ab ], [ %.27, %bb.bg ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !26
  %spec.select230 = tail call i32 @llvm.umin.i32(i32 %i.ci, i32 %.27.sink)
  br label %bb.bh

bb.bh:                                            ; preds = %.sink.split, %bb.bg, %bb.ab
  %.28 = phi i32 [ %.27, %bb.bg ], [ %.12, %bb.ab ], [ %spec.select230, %.sink.split ]
  %i.cj = and i32 %.28, 65535                     ; 5 uses
  %i.ck = icmp samesign ult i32 %i.cj, 32768
  br i1 %i.ck, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !82 ; 2 uses
  %i.cn = and i32 %i.cm, %1                       ; 2 uses
  %.not200 = icmp eq i32 %i.cn, 0
  br i1 %.not200, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !57
  %i.cq = zext nneg i32 %i.cj to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 6
  %i.ct = load i8, ptr %i.cs, align 2, !tbaa !25
  %i.cu = zext nneg i8 %i.ct to i32
  %i.cv = shl nuw i32 1, %i.cu
  %i.cw = and i32 %i.cv, %i.cm
  %.not201 = icmp eq i32 %i.cw, 0
  br i1 %.not201, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.cx = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cn, i1 true)
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !26
  %i.db = and i32 %i.da, 65535
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk, %bb.bi, %bb.bh
  %.1134 = phi i32 [ %i.cj, %bb.bh ], [ %i.cj, %bb.bi ], [ %i.cj, %bb.bj ], [ %i.db, %bb.bk ]
  %i.dc = tail call fastcc i32 @ra_restore(ptr noundef %0, i32 noundef %.1134)
  ret i32 %i.dc
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @emit_loadk64(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 256) %1, ptr noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %.not = icmp samesign ult i32 %1, 16            ; 3 uses
  %i.b = or disjoint i32 %1, 524800
  %.051 = select i1 %.not, i32 %i.b, i32 %1       ; 4 uses
  %.0 = select i1 %.not, i32 -1962934018, i32 269480700 ; 4 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !81   ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = select i1 %.not, i32 855638270, i32 1460601085 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !52   ; 3 uses
  %i.h = shl nuw nsw i32 %1, 3
  %i.i = and i32 %1, 7
  %i.j = or disjoint i32 %i.i, %i.h
  %i.k = trunc i32 %i.j to i8
  %i.l = or i8 %i.k, -64
  %i.m = getelementptr inbounds i8, ptr %i.g, i64 -1
  store i8 %i.l, ptr %i.m, align 1, !tbaa !25
  %i.n = shl i32 %i.e, 24
  %i.o = ashr exact i32 %i.n, 24
  %i.p = getelementptr inbounds i8, ptr %i.g, i64 -5
  store i32 %i.e, ptr %i.p, align 4, !tbaa !26
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds i8, ptr %i.g, i64 %i.q ; 2 uses
  %i.s = lshr i32 %1, 1
  %i.t = and i32 %i.s, 4
  %i.u = lshr i32 %1, 3
  %i.v = and i32 %i.u, 1
  %i.w = or disjoint i32 %i.v, %i.t               ; 2 uses
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %emit_rr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = trunc nuw nsw i32 %i.w to i8
  %i.y = or disjoint i8 %i.x, 64
  %i.z = getelementptr inbounds i8, ptr %i.r, i64 -1 ; 2 uses
  store i8 %i.y, ptr %i.z, align 1, !tbaa !25
  br label %emit_rr.exit

emit_rr.exit:                                     ; preds = %bb.b, %bb.c
  %.046.i.i = phi ptr [ %i.r, %bb.b ], [ %i.z, %bb.c ]
  store ptr %.046.i.i, ptr %i.f, align 8, !tbaa !52
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.aa = ptrtoint ptr %i.a to i64
  %i.ab = add i64 %i.aa, 2147483648               ; 4 uses
  %i.ac = icmp ult i64 %i.ab, 4294967296
  br i1 %i.ac, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 3256
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.ab, %i.ag
  %i.ai = icmp ult i64 %i.ah, 4294967296
  br i1 %i.ai, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !52 ; 2 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.ab, %i.al
  %i.an = icmp ult i64 %i.am, 4294967296
  br i1 %i.an, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !51
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.ab, %i.aq
  %i.as = icmp ult i64 %i.ar, 4294967296
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.d
  tail call fastcc void @emit_rma(ptr noundef %0, i32 noundef %.0, i32 noundef %.051, ptr noundef nonnull %i.a)
  br label %bb.r

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.at = load i32, ptr %2, align 8, !tbaa !25    ; 2 uses
  %.not53 = icmp eq i32 %i.at, 0
  br i1 %.not53, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.av = load i32, ptr %i.au, align 8, !tbaa !58
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !68
  %.not54 = icmp ugt i32 %i.av, %i.ax
  br i1 %.not54, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = shl nuw i32 1, %1
  %i.az = and i32 %i.ay, 49135
  %.not55 = icmp eq i32 %i.az, 0
  br i1 %.not55, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @emit_loadu64(ptr noundef %0, i32 noundef %1, i64 noundef %i.c)
  br label %bb.r

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 5 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !53 ; 3 uses
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = and i64 %i.bc, 7
  %.not5666 = icmp eq i64 %i.bd, 0
  br i1 %.not5666, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %.lr.ph
  %i.be = phi ptr [ %i.bg, %.lr.ph ], [ %i.bb, %bb.m ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store ptr %i.bf, ptr %i.ba, align 8, !tbaa !53
  store i8 -52, ptr %i.be, align 1, !tbaa !25
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !53 ; 3 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = and i64 %i.bh, 7
  %.not56 = icmp eq i64 %i.bi, 0
  br i1 %.not56, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !179

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i64, ptr %i.a, align 8, !tbaa !81
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.m
  %i.bj = phi i64 [ %i.c, %bb.m ], [ %.pre, %._crit_edge.loopexit ]
  %.lcssa64 = phi ptr [ %i.bb, %bb.m ], [ %i.bg, %._crit_edge.loopexit ] ; 2 uses
  %.lcssa.pre-phi = ptrtoint ptr %.lcssa64 to i64
  store i64 %i.bj, ptr %.lcssa64, align 8, !tbaa !81
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !51
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = sub i64 %i.bm, %.lcssa.pre-phi
  %i.bo = trunc i64 %i.bn to i32
  store i32 %i.bo, ptr %2, align 8, !tbaa !25
  %i.bp = load ptr, ptr %i.ba, align 8, !tbaa !53 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  store ptr %i.bq, ptr %i.ba, align 8, !tbaa !53
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !54
  %i.bt = load ptr, ptr %i.ad, align 8, !tbaa !44
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 3064
  store ptr %i.bq, ptr %i.bu, align 8, !tbaa !55
  %.pre71.a = load i32, ptr %2, align 8, !tbaa !25
  %.pre72 = load ptr, ptr %i.aj, align 8, !tbaa !52
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %._crit_edge
  %i.bv = phi ptr [ %i.ak, %bb.i ], [ %.pre72, %._crit_edge ] ; 4 uses
  %i.bw = phi i32 [ %i.at, %bb.i ], [ %.pre71.a, %._crit_edge ]
  %.pre-phi = ptrtoint ptr %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !51
  %i.bz = sext i32 %i.bw to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.by, i64 %i.ca
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.cc, %.pre-phi
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = getelementptr inbounds i8, ptr %i.bv, i64 -4 ; 2 uses
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !26
  %.051.tr = trunc i32 %.051 to i8
  %i.cg = shl i8 %.051.tr, 3
  %i.ch = and i8 %i.cg, 56
  %i.ci = or disjoint i8 %i.ch, 5
  %i.cj = getelementptr inbounds i8, ptr %i.bv, i64 -5
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !25
  %i.ck = shl i32 %.0, 24                         ; 2 uses
  %i.cl = ashr exact i32 %i.ck, 24
  %i.cm = getelementptr inbounds i8, ptr %i.bv, i64 -9
  store i32 %.0, ptr %i.cm, align 4, !tbaa !26
  %i.cn = sext i32 %i.cl to i64
  %i.co = getelementptr inbounds i8, ptr %i.cf, i64 %i.cn ; 3 uses
  %i.cp = lshr i32 %.051, 1
  %i.cq = and i32 %i.cp, 260                      ; 2 uses
  %.not.i.i59 = icmp eq i32 %i.cq, 0
  br i1 %.not.i.i59, label %emit_rmro.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cr = lshr i32 %.051, 16
  %i.cs = or disjoint i32 %i.cr, %i.cq
  %i.ct = or disjoint i32 %i.cs, 64               ; 2 uses
  %i.cu = icmp eq i32 %i.ck, -67108864
  br i1 %i.cu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cv = trunc i32 %i.ct to i8
  store i8 %i.cv, ptr %i.co, align 1, !tbaa !25
  %i.cw = lshr i32 %.0, 8
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.0.i.i60 = phi i32 [ %i.cw, %bb.p ], [ %i.ct, %bb.o ]
  %i.cx = trunc i32 %.0.i.i60 to i8
  %i.cy = getelementptr inbounds i8, ptr %i.co, i64 -1 ; 2 uses
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !25
  br label %emit_rmro.exit

emit_rmro.exit:                                   ; preds = %bb.n, %bb.q
  %.046.i.i61 = phi ptr [ %i.co, %bb.n ], [ %i.cy, %bb.q ]
  store ptr %.046.i.i61, ptr %i.aj, align 8, !tbaa !52
  br label %bb.r

bb.r:                                             ; preds = %emit_rr.exit, %emit_rmro.exit, %bb.h, %bb.l
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @emit_rmro(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 256) %3, i32 noundef %4) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 6 uses
  %.not = icmp samesign ult i32 %3, 128
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %3, 37
  br i1 %i.c, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -4 ; 2 uses
  store i32 %4, ptr %i.d, align 4, !tbaa !26
  br label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ne i32 %4, 0
  %i.f = and i32 %3, 7                            ; 2 uses
  %.not34 = icmp eq i32 %i.f, 5
  %or.cond = or i1 %i.e, %.not34
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = add i32 %4, 128
  %i.h = icmp ult i32 %i.g, 256
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = trunc nsw i32 %4 to i8
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 -1 ; 2 uses
  store i8 %i.i, ptr %i.j, align 1, !tbaa !25
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds i8, ptr %i.b, i64 -4 ; 2 uses
  store i32 %4, ptr %i.k, align 4, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e
  %.029 = phi ptr [ %i.b, %bb.c ], [ %i.k, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.c ], [ 128, %bb.f ], [ 64, %bb.e ] ; 2 uses
  %i.l = icmp eq i32 %i.f, 4
  br i1 %i.l, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds i8, ptr %.029, i64 -1 ; 2 uses
  store i8 36, ptr %i.m, align 1, !tbaa !25
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %i.b, i64 -4
  store i32 %4, ptr %i.n, align 4, !tbaa !26
  %i.o = getelementptr inbounds i8, ptr %i.b, i64 -5 ; 2 uses
  store i8 37, ptr %i.o, align 1, !tbaa !25
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.g, %bb.h, %bb.i
  %.031 = phi i32 [ 4, %bb.i ], [ %3, %bb.h ], [ %3, %bb.g ], [ 37, %.thread ] ; 3 uses
  %.130 = phi ptr [ %i.o, %bb.i ], [ %i.m, %bb.h ], [ %.029, %bb.g ], [ %i.d, %.thread ] ; 4 uses
  %.1 = phi i32 [ 0, %bb.i ], [ %.0, %bb.h ], [ %.0, %bb.g ], [ 0, %.thread ]
  %i.p = shl i32 %2, 3
  %i.q = and i32 %i.p, 56
  %i.r = and i32 %.031, 7
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = add nuw nsw i32 %i.s, %.1
  %i.u = trunc nuw i32 %i.t to i8
  %i.v = getelementptr inbounds i8, ptr %.130, i64 -1
  store i8 %i.u, ptr %i.v, align 1, !tbaa !25
  %i.w = shl i32 %1, 24                           ; 3 uses
  %i.x = icmp eq i32 %i.w, -1006632960
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.y = lshr i32 %2, 1
  %i.z = and i32 %i.y, 4
  %i.aa = lshr i32 %.031, 3
  %i.ab = and i32 %i.aa, 1
  %i.ac = or disjoint i32 %i.ab, %i.z
  %i.ad = shl nuw nsw i32 %i.ac, 13
  %i.ae = xor i32 %i.ad, %1
  %i.af = getelementptr inbounds i8, ptr %.130, i64 -5 ; 2 uses
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !26
  br label %emit_op.exit

bb.l:                                             ; preds = %bb.j
  %i.ag = ashr exact i32 %i.w, 24
  %i.ah = getelementptr inbounds i8, ptr %.130, i64 -5
  store i32 %1, ptr %i.ah, align 4, !tbaa !26
  %i.ai = sext i32 %i.ag to i64
  %i.aj = getelementptr inbounds i8, ptr %.130, i64 %i.ai ; 4 uses
  %i.ak = lshr i32 %2, 1
  %i.al = and i32 %i.ak, 260
  %i.am = lshr i32 %.031, 3
  %i.an = and i32 %i.am, 1
  %i.ao = or disjoint i32 %i.an, %i.al            ; 2 uses
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %emit_op.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = lshr i32 %2, 16
  %i.aq = or i32 %i.ap, %i.ao
  %i.ar = or i32 %i.aq, 64                        ; 3 uses
  %i.as = icmp eq i32 %i.w, -67108864
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.at = trunc i32 %i.ar to i8
  store i8 %i.at, ptr %i.aj, align 1, !tbaa !25
  %i.au = lshr i32 %1, 8
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.av = and i32 %1, 16777215
  %i.aw = icmp eq i32 %i.av, 6684925
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ax = trunc i32 %i.ar to i8
  store i8 %i.ax, ptr %i.aj, align 1, !tbaa !25
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.0.i = phi i32 [ %i.au, %bb.n ], [ 102, %bb.p ], [ %i.ar, %bb.o ]
  %i.ay = trunc i32 %.0.i to i8
  %i.az = getelementptr inbounds i8, ptr %i.aj, i64 -1 ; 2 uses
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !25
  br label %emit_op.exit

emit_op.exit:                                     ; preds = %bb.k, %bb.l, %bb.q
  %.046.i = phi ptr [ %i.af, %bb.k ], [ %i.az, %bb.q ], [ %i.aj, %bb.l ]
  store ptr %.046.i, ptr %i.a, align 8, !tbaa !52
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 256) i32 @ra_restore(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 65536) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ult i32 %1, 32769
  br i1 %i.a, label %bb.b, label %bb.c
end_hunk_0
begin_hunk_1_@asm_guardcc:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !86
  %i.ar = add nsw i32 %i.aq, 6
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !86
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.as = ptrtoint ptr %.0 to i64
  %i.at = ptrtoint ptr %i.o to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = trunc i64 %i.au to i32
  %i.aw = getelementptr inbounds i8, ptr %i.o, i64 -4
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !26
  %i.ax = trunc i32 %.022 to i8
  %i.ay = and i8 %i.ax, 15
  %i.az = or disjoint i8 %i.ay, -128
  %i.ba = getelementptr inbounds i8, ptr %i.o, i64 -5
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.sink26 = phi i64 [ -6, %bb.h ], [ -2, %bb.e ]
  %.sink = phi i8 [ 15, %bb.h ], [ %i.al, %bb.e ]
  %i.bb = getelementptr inbounds i8, ptr %i.o, i64 %.sink26 ; 2 uses
  store i8 %.sink, ptr %i.bb, align 1, !tbaa !25
  store ptr %i.bb, ptr %i.n, align 8, !tbaa !52
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 256) i32 @asm_fuseload(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 65536) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 8 uses
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c ; 31 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 6 ; 2 uses
  %i.f = load i8, ptr %i.e, align 2, !tbaa !25    ; 2 uses
  %i.g = zext nneg i8 %i.f to i32
  %.not = icmp sgt i8 %i.f, -1
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %.not113 = icmp eq i32 %2, 0
  br i1 %.not113, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = shl nuw i32 1, %i.g
  %i.i = xor i32 %i.h, -1
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !82
  %i.l = and i32 %i.k, %i.i
  store i32 %i.l, ptr %i.j, align 8, !tbaa !82
  %i.m = load i8, ptr %i.e, align 2, !tbaa !25
  %i.n = zext i8 %i.m to i32
  br label %.critedge128

bb.d:                                             ; preds = %bb.bn, %bb.bo, %bb.bp, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 4, ptr %i.p, align 4, !tbaa !56
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 7 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !25    ; 2 uses
  %i.s = zext i8 %i.r to i32
  %.not.i = icmp eq i8 %i.r, 0
  br i1 %.not.i, label %bb.e, label %ra_spill.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.u = load i8, ptr %i.t, align 4, !tbaa !25
  %i.v = and i8 %i.u, 31
  %i.w = zext nneg i8 %i.v to i32
  %i.x = shl nuw i32 1, %i.w
  %i.y = and i32 %i.x, 6315993
  %.not18.i = icmp eq i32 %i.y, 0
  br i1 %.not18.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !70  ; 2 uses
  %i.ab = add nsw i32 %i.aa, 2                    ; 2 uses
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !70
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !74 ; 2 uses
  %.not19.i = icmp eq i32 %i.ad, 0
  br i1 %.not19.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ac, align 4, !tbaa !74
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8, !tbaa !70
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !70 ; 3 uses
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ac, align 4, !tbaa !74
  %i.ah = add nsw i32 %i.af, 2                    ; 2 uses
  store i32 %i.ah, ptr %i.ae, align 8, !tbaa !70
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f
  %i.ai = phi i32 [ %i.ab, %bb.f ], [ %.pre.i, %bb.h ], [ %i.ah, %bb.i ]
  %.0.i = phi i32 [ %i.aa, %bb.f ], [ %i.ad, %bb.h ], [ %i.af, %bb.i ] ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 256
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !44
  tail call void @lj_trace_err(ptr noundef %i.al, i32 noundef 30) #15
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.am = trunc i32 %.0.i to i8
  store i8 %i.am, ptr %i.q, align 1, !tbaa !25
  br label %ra_spill.exit

ra_spill.exit:                                    ; preds = %bb.d, %bb.l
  %.1.i = phi i32 [ %i.s, %bb.d ], [ %.0.i, %bb.l ]
  %i.an = shl nsw i32 %.1.i, 2
  store i32 %i.an, ptr %i.o, align 8, !tbaa !86
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 165
  store i8 -128, ptr %i.ao, align 1, !tbaa !87
  br label %.critedge128

bb.m:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !25  ; 6 uses
  %i.ar = icmp eq i8 %i.aq, 28
  br i1 %i.ar, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.at = load i32, ptr %i.as, align 8, !tbaa !83
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.av = load i32, ptr %i.au, align 4, !tbaa !71
  %i.aw = xor i32 %i.av, -1
  %i.ax = and i32 %i.at, -65536
  %i.ay = and i32 %i.ax, %i.aw
  %i.az = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.ay)
  %.not122 = icmp samesign ugt i32 %i.az, 1
  br i1 %.not122, label %.critedge.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.bb = ptrtoint ptr %i.ba to i64               ; 4 uses
  %i.bc = add i64 %i.bb, 2147483648               ; 2 uses
  %i.bd = icmp ult i64 %i.bc, 4294967296
  br i1 %i.bd, label %asm_fuseloadk64.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !44
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 3256
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bb, %i.bh                    ; 2 uses
  %i.bj = add i64 %i.bi, 2147483648
  %i.bk = icmp ult i64 %i.bj, 4294967296
  br i1 %i.bk, label %asm_fuseloadk64.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !52
  %i.bn = ptrtoint ptr %i.bm to i64               ; 3 uses
  %i.bo = sub i64 %i.bb, %i.bn                    ; 2 uses
  %i.bp = add i64 %i.bo, 2147483648
  %i.bq = icmp ult i64 %i.bp, 4294967296
  br i1 %i.bq, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = add i64 %i.bs, 2147483648               ; 2 uses
  %i.bu = sub i64 %i.bt, %i.bn
  %i.bv = icmp ult i64 %i.bu, 4294967296
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !51
  %i.by = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.bz = sub i64 %i.bc, %i.by
  %i.ca = sub i64 %i.bt, %i.by
  %i.cb = or i64 %i.bz, %i.ca
  %or.cond.i = icmp ult i64 %i.cb, 4294967296
  br i1 %or.cond.i, label %asm_fuseloadk64.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.cc = load i32, ptr %i.d, align 8, !tbaa !25  ; 2 uses
  %.not.i138 = icmp eq i32 %i.cc, 0
  br i1 %.not.i138, label %.preheader.i, label %bb.u

.preheader.i:                                     ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 5 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !53 ; 3 uses
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = and i64 %i.cf, 7
  %.not5357.i = icmp eq i64 %i.cg, 0
  br i1 %.not5357.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.ch = phi ptr [ %i.cj, %.lr.ph.i ], [ %i.ce, %.preheader.i ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  store ptr %i.ci, ptr %i.cd, align 8, !tbaa !53
  store i8 -52, ptr %i.ch, align 1, !tbaa !25
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !53 ; 3 uses
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = and i64 %i.ck, 7
  %.not53.i = icmp eq i64 %i.cl, 0
  br i1 %.not53.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !182

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.lcssa55.i = phi ptr [ %i.ce, %.preheader.i ], [ %i.cj, %.lr.ph.i ] ; 2 uses
  %.lcssa.pre-phi.i.pre-phi = ptrtoint ptr %.lcssa55.i to i64
  %i.cm = load i64, ptr %i.ba, align 8, !tbaa !81
  store i64 %i.cm, ptr %.lcssa55.i, align 8, !tbaa !81
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !51
  %i.cp = ptrtoint ptr %i.co to i64
  %i.cq = sub i64 %i.cp, %.lcssa.pre-phi.i.pre-phi
  %i.cr = trunc i64 %i.cq to i32
  store i32 %i.cr, ptr %i.d, align 8, !tbaa !25
  %i.cs = load ptr, ptr %i.cd, align 8, !tbaa !53 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  store ptr %i.ct, ptr %i.cd, align 8, !tbaa !53
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !54
  %i.cw = load ptr, ptr %i.be, align 8, !tbaa !44
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 3064
  store ptr %i.ct, ptr %i.cx, align 8, !tbaa !55
  %.pre.i139 = load i32, ptr %i.d, align 8, !tbaa !25
  %.pre62.i.a = load ptr, ptr %i.bl, align 8, !tbaa !52
  %.pre63.i = ptrtoint ptr %.pre62.i.a to i64
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i, %bb.t
  %.pre-phi.i = phi i64 [ %i.bn, %bb.t ], [ %.pre63.i, %._crit_edge.i ]
  %i.cy = phi i32 [ %i.cc, %bb.t ], [ %.pre.i139, %._crit_edge.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !51
  %i.db = sext i32 %i.cy to i64
  %i.dc = sub nsw i64 0, %i.db
  %i.dd = getelementptr inbounds i8, ptr %i.da, i64 %i.dc
  %i.de = ptrtoint ptr %i.dd to i64
  %i.df = sub i64 %i.de, %.pre-phi.i
  br label %asm_fuseloadk64.exit

asm_fuseloadk64.exit:                             ; preds = %bb.p, %bb.o, %bb.s, %bb.u
  %.sink69.in.i = phi i64 [ %i.bb, %bb.o ], [ %i.df, %bb.u ], [ %i.bo, %bb.s ], [ %i.bi, %bb.p ]
  %.sink.i = phi i8 [ -128, %bb.o ], [ 37, %bb.u ], [ 37, %bb.s ], [ 14, %bb.p ]
  %.sink69.i = trunc i64 %.sink69.in.i to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %.sink69.i, ptr %i.dg, align 8, !tbaa !86
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 %.sink.i, ptr %i.dh, align 4, !tbaa !56
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 165
  store i8 -128, ptr %i.di, align 1, !tbaa !87
  br label %.critedge128

bb.v:                                             ; preds = %bb.m
  %i.dj = icmp eq i32 %1, 32768                   ; 2 uses
  %i.dk = icmp eq i8 %i.aq, 29
  %or.cond124 = or i1 %i.dj, %i.dk
  br i1 %or.cond124, label %bb.w, label %bb.ag

bb.w:                                             ; preds = %bb.v
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !83
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !71
  %i.dp = xor i32 %i.do, -1
  %i.dq = and i32 %i.dm, 49135
  %i.dr = and i32 %i.dq, %i.dp
  %i.ds = tail call range(i32 0, 15) i32 @llvm.ctpop.i32(i32 %i.dr)
  %.not121 = icmp samesign ugt i32 %i.ds, 1
  br i1 %.not121, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.dj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 -3616, ptr %i.dt, align 8, !tbaa !86
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 14, ptr %i.du, align 4, !tbaa !56
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 165
  store i8 -128, ptr %i.dv, align 1, !tbaa !87
  br label %.critedge128

bb.z:                                             ; preds = %bb.x
  %i.dw = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.dx = ptrtoint ptr %i.dw to i64               ; 4 uses
  %i.dy = add i64 %i.dx, 2147483648               ; 2 uses
  %i.dz = icmp ult i64 %i.dy, 4294967296
  br i1 %i.dz, label %asm_fuseloadk64.exit156, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !44
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 3256
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.dx, %i.ed                    ; 2 uses
  %i.ef = add i64 %i.ee, 2147483648
  %i.eg = icmp ult i64 %i.ef, 4294967296
  br i1 %i.eg, label %asm_fuseloadk64.exit156, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !52
  %i.ej = ptrtoint ptr %i.ei to i64               ; 3 uses
  %i.ek = sub i64 %i.dx, %i.ej                    ; 2 uses
  %i.el = add i64 %i.ek, 2147483648
  %i.em = icmp ult i64 %i.el, 4294967296
  br i1 %i.em, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = add i64 %i.eo, 2147483648               ; 2 uses
  %i.eq = sub i64 %i.ep, %i.ej
  %i.er = icmp ult i64 %i.eq, 4294967296
  br i1 %i.er, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !51
  %i.eu = ptrtoint ptr %i.et to i64               ; 2 uses
  %i.ev = sub i64 %i.dy, %i.eu
  %i.ew = sub i64 %i.ep, %i.eu
  %i.ex = or i64 %i.ev, %i.ew
  %or.cond.i155 = icmp ult i64 %i.ex, 4294967296
  br i1 %or.cond.i155, label %asm_fuseloadk64.exit156, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.ey = load i32, ptr %i.d, align 8, !tbaa !25  ; 2 uses
  %.not.i140 = icmp eq i32 %i.ey, 0
  br i1 %.not.i140, label %.preheader.i145, label %bb.af

.preheader.i145:                                  ; preds = %bb.ae
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 5 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !53 ; 3 uses
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = and i64 %i.fb, 7
  %.not5357.i146 = icmp eq i64 %i.fc, 0
  br i1 %.not5357.i146, label %._crit_edge.i149, label %.lr.ph.i147

.lr.ph.i147:                                      ; preds = %.preheader.i145, %.lr.ph.i147
  %i.fd = phi ptr [ %i.ff, %.lr.ph.i147 ], [ %i.fa, %.preheader.i145 ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1
  store ptr %i.fe, ptr %i.ez, align 8, !tbaa !53
  store i8 -52, ptr %i.fd, align 1, !tbaa !25
  %i.ff = load ptr, ptr %i.ez, align 8, !tbaa !53 ; 3 uses
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = and i64 %i.fg, 7
  %.not53.i148 = icmp eq i64 %i.fh, 0
  br i1 %.not53.i148, label %._crit_edge.i149, label %.lr.ph.i147, !llvm.loop !182

._crit_edge.i149:                                 ; preds = %.lr.ph.i147, %.preheader.i145
  %.lcssa55.i150 = phi ptr [ %i.fa, %.preheader.i145 ], [ %i.ff, %.lr.ph.i147 ] ; 2 uses
  %.lcssa.pre-phi.i151.pre-phi = ptrtoint ptr %.lcssa55.i150 to i64
  %i.fi = load i64, ptr %i.dw, align 8, !tbaa !81
  store i64 %i.fi, ptr %.lcssa55.i150, align 8, !tbaa !81
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !51
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = sub i64 %i.fl, %.lcssa.pre-phi.i151.pre-phi
  %i.fn = trunc i64 %i.fm to i32
  store i32 %i.fn, ptr %i.d, align 8, !tbaa !25
  %i.fo = load ptr, ptr %i.ez, align 8, !tbaa !53 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8 ; 2 uses
  store ptr %i.fp, ptr %i.ez, align 8, !tbaa !53
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 72
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !54
  %i.fs = load ptr, ptr %i.ea, align 8, !tbaa !44
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 3064
  store ptr %i.fp, ptr %i.ft, align 8, !tbaa !55
  %.pre.i152 = load i32, ptr %i.d, align 8, !tbaa !25
  %.pre62.i153 = load ptr, ptr %i.eh, align 8, !tbaa !52
  %.pre63.i154 = ptrtoint ptr %.pre62.i153 to i64
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge.i149, %bb.ae
  %.pre-phi.i141 = phi i64 [ %i.ej, %bb.ae ], [ %.pre63.i154, %._crit_edge.i149 ]
  %i.fu = phi i32 [ %i.ey, %bb.ae ], [ %.pre.i152, %._crit_edge.i149 ]
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !51
  %i.fx = sext i32 %i.fu to i64
  %i.fy = sub nsw i64 0, %i.fx
  %i.fz = getelementptr inbounds i8, ptr %i.fw, i64 %i.fy
  %i.ga = ptrtoint ptr %i.fz to i64
  %i.gb = sub i64 %i.ga, %.pre-phi.i141
  br label %asm_fuseloadk64.exit156

asm_fuseloadk64.exit156:                          ; preds = %bb.aa, %bb.z, %bb.ad, %bb.af
  %.sink69.in.i142 = phi i64 [ %i.dx, %bb.z ], [ %i.gb, %bb.af ], [ %i.ek, %bb.ad ], [ %i.ee, %bb.aa ]
  %.sink.i143 = phi i8 [ -128, %bb.z ], [ 37, %bb.af ], [ 37, %bb.ad ], [ 14, %bb.aa ]
  %.sink69.i144 = trunc i64 %.sink69.in.i142 to i32
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %.sink69.i144, ptr %i.gc, align 8, !tbaa !86
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 %.sink.i143, ptr %i.gd, align 4, !tbaa !56
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 165
  store i8 -128, ptr %i.ge, align 1, !tbaa !87
  br label %.critedge128

bb.ag:                                            ; preds = %bb.v
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !63
  %i.gh = icmp ugt i32 %1, %i.gg
  br i1 %i.gh, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %bb.ag
  %i.gi = and i32 %2, 49135
  %.not114 = icmp eq i32 %i.gi, 0
  %i.gj = select i1 %.not114, i32 49135, i32 %2   ; 5 uses
  switch i8 %i.aq, label %.critedge.thread [
    i8 71, label %bb.ai
    i8 69, label %bb.ao
    i8 66, label %bb.at
    i8 67, label %bb.at
    i8 68, label %bb.at
    i8 70, label %bb.aw
    i8 72, label %bb.bb
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.gk = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !25
  %i.gm = and i16 %i.gl, 9
  %.not119 = icmp eq i16 %i.gm, 0
  br i1 %.not119, label %bb.aj, label %.critedge.thread

bb.aj:                                            ; preds = %bb.ai
  %i.gn = getelementptr i8, ptr %0, i64 200
  %.val137 = load i32, ptr %i.gn, align 8, !tbaa !58 ; 2 uses
  %i.go = add nuw nsw i32 %1, 31
  %i.gp = icmp ugt i32 %.val137, %i.go
  br i1 %i.gp, label %.critedge.thread, label %.preheader.i157

.preheader.i157:                                  ; preds = %bb.aj
  %i.gq = add nsw i32 %.val137, -1                ; 2 uses
  %i.gr = icmp ugt i32 %i.gq, %1
  br i1 %i.gr, label %.lr.ph.split.split.us.i, label %noconflict.exit

.lr.ph.split.split.us.i:                          ; preds = %.preheader.i157, %bb.am
  %i.gs = phi i32 [ %i.hf, %bb.am ], [ %i.gq, %.preheader.i157 ] ; 2 uses
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.gt ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 5
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !25
  %i.gx = icmp eq i8 %i.gw, 11
  br i1 %i.gx, label %.critedge, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.split.split.us.i
  %i.gy = load i16, ptr %i.gu, align 8, !tbaa !25
  %i.gz = zext i16 %i.gy to i32
  %i.ha = icmp eq i32 %1, %i.gz
  br i1 %i.ha, label %.critedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gu, i64 2
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !25
  %i.hd = zext i16 %i.hc to i32
  %i.he = icmp eq i32 %1, %i.hd
  br i1 %i.he, label %.critedge, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hf = add i32 %i.gs, -1                       ; 2 uses
  %i.hg = icmp ugt i32 %i.hf, %1
  br i1 %i.hg, label %.lr.ph.split.split.us.i, label %noconflict.exit, !llvm.loop !2

noconflict.exit:                                  ; preds = %bb.am, %.preheader.i157
  %i.hh = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.hi = load i8, ptr %i.hh, align 4, !tbaa !25
  %i.hj = and i8 %i.hi, 31
  %i.hk = add nsw i8 %i.hj, -3
  %i.hl = icmp ult i8 %i.hk, 10
  br i1 %i.hl, label %.critedge, label %bb.an

bb.an:                                            ; preds = %noconflict.exit
  %i.hm = tail call fastcc i32 @ra_alloc1(ptr noundef %0, i32 noundef 32768, i32 noundef %i.gj)
  %i.hn = trunc nuw i32 %i.hm to i8
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i8 %i.hn, ptr %i.hp, align 4, !tbaa !56
  %i.hq = load i16, ptr %i.d, align 8, !tbaa !25
  %i.hr = zext i16 %i.hq to i32
  %i.hs = shl nuw nsw i32 %i.hr, 3
  %i.ht = add nsw i32 %i.hs, -16
  store i32 %i.ht, ptr %i.ho, align 8, !tbaa !86
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 165
  store i8 -128, ptr %i.hu, align 1, !tbaa !87
  br label %.critedge128

bb.ao:                                            ; preds = %bb.ah
  %i.hv = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.hw = load i8, ptr %i.hv, align 4, !tbaa !25
  %i.hx = and i8 %i.hw, 31                        ; 2 uses
  %.off = add nsw i8 %i.hx, -19
  %switch = icmp ult i8 %.off, 2
  %i.hy = add nsw i8 %i.hx, -3
  %i.hz = icmp ult i8 %i.hy, 10
  %or.cond130 = select i1 %switch, i1 true, i1 %i.hz
  br i1 %or.cond130, label %bb.ap, label %.critedge.thread201

bb.ap:                                            ; preds = %bb.ao
  %i.ia = getelementptr i8, ptr %0, i64 200
  %.val135 = load i32, ptr %i.ia, align 8, !tbaa !58 ; 2 uses
  %i.ib = add nuw nsw i32 %1, 31
  %i.ic = icmp ugt i32 %.val135, %i.ib
  br i1 %i.ic, label %.critedge.thread201, label %.preheader.i159

.preheader.i159:                                  ; preds = %bb.ap
  %i.id = add nsw i32 %.val135, -1                ; 2 uses
  %i.ie = icmp ugt i32 %i.id, %1
  br i1 %i.ie, label %.lr.ph.split.split.us.i162, label %noconflict.exit163

.lr.ph.split.split.us.i162:                       ; preds = %.preheader.i159, %bb.as
  %i.if = phi i32 [ %i.is, %bb.as ], [ %i.id, %.preheader.i159 ] ; 2 uses
  %i.ig = zext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ig ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 5
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !25
  %i.ik = icmp eq i8 %i.ij, 77
  br i1 %i.ik, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.split.split.us.i162
  %i.il = load i16, ptr %i.ih, align 8, !tbaa !25
  %i.im = zext i16 %i.il to i32
  %i.in = icmp eq i32 %1, %i.im
  br i1 %i.in, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.io = getelementptr inbounds nuw i8, ptr %i.ih, i64 2
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !25
  %i.iq = zext i16 %i.ip to i32
  %i.ir = icmp eq i32 %1, %i.iq
  br i1 %i.ir, label %.critedge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.is = add i32 %i.if, -1                       ; 2 uses
  %i.it = icmp ugt i32 %i.is, %1
  br i1 %i.it, label %.lr.ph.split.split.us.i162, label %noconflict.exit163, !llvm.loop !2

noconflict.exit163:                               ; preds = %bb.as, %.preheader.i159
  tail call fastcc void @asm_fusefref(ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef %i.gj)
  br label %.critedge128

bb.at:                                            ; preds = %bb.ah, %bb.ah, %bb.ah
  %i.iu = zext nneg i8 %i.aq to i32
  %i.iv = add nuw nsw i32 %i.iu, 8
  %.not116 = icmp eq i8 %i.aq, 68
  %i.iw = select i1 %.not116, i32 2, i32 3
  %i.ix = getelementptr i8, ptr %0, i64 200
  %.val133 = load i32, ptr %i.ix, align 8, !tbaa !58
  %i.iy = tail call fastcc i32 @noconflict(ptr nonnull %i.b, i32 %.val133, i32 noundef %1, i32 noundef %i.iv, i32 noundef %i.iw)
  %.not117 = icmp eq i32 %i.iy, 0
  br i1 %.not117, label %.critedge.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iz = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ja = load i8, ptr %i.iz, align 4, !tbaa !25
  %i.jb = and i8 %i.ja, 31
  %i.jc = add nsw i8 %i.jb, -3
  %i.jd = icmp ult i8 %i.jc, 10
end_hunk_1
