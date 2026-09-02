Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/network?download=true
inline.NumInlined: 860
inline.NumDeleted: 422
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN8LightGBM7Network13ReduceScatterEPciiPKiS3_S1_iRKPFvPKcS1_iiE:bb.a
  %i.l = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E) ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !79   ; 3 uses
  %i.n = add nsw i32 %i.m, 1
  %i.o = load i32, ptr %i.a, align 4, !tbaa !79   ; 5 uses
  %i.p = srem i32 %i.n, %i.o
  %i.q = add i32 %i.o, -1                         ; 2 uses
  %i.r = add i32 %i.q, %i.m
  %i.s = srem i32 %i.r, %i.o                      ; 3 uses
  %i.t = icmp sgt i32 %i.o, 1
  br i1 %i.t, label %.lr.ph.i, label %_ZN8LightGBM7Network17ReduceScatterRingEPciiPKiS3_S1_iRKPFvPKcS1_iiE.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.u = add i32 %i.s, %i.q
  %i.v = srem i32 %i.u, %i.o
  %i.w = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network8linkers_E)
  br label %bb.h

._crit_edge.loopexit.i:                           ; preds = %bb.h
  %.pre.i = load i32, ptr %i.l, align 4, !tbaa !79
  br label %_ZN8LightGBM7Network17ReduceScatterRingEPciiPKiS3_S1_iRKPFvPKcS1_iiE.exit

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.031.i = phi i32 [ 1, %.lr.ph.i ], [ %i.au, %bb.h ]
  %.02730.i = phi i32 [ %i.v, %.lr.ph.i ], [ %i.at, %bb.h ] ; 2 uses
  %.02829.i = phi i32 [ %i.s, %.lr.ph.i ], [ %i.ar, %bb.h ] ; 2 uses
  tail call void @_ZTHN8LightGBM7Network8linkers_E()
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.y = sext i32 %.02829.i to i64                ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %3, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !79
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds [4 x i8], ptr %4, i64 %i.y
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !79
  %i.af = sext i32 %.02730.i to i64               ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %4, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !79
  tail call void @_ZN8LightGBM7Linkers8SendRecvEiPciiS1_i(ptr noundef nonnull align 8 dereferenceable(304) %i.x, i32 noundef %i.p, ptr noundef %i.ac, i32 noundef %i.ae, i32 noundef %i.s, ptr noundef %5, i32 noundef %i.ah)
  %i.ai = load ptr, ptr %7, align 8, !tbaa !109
  %i.aj = getelementptr inbounds [4 x i8], ptr %3, i64 %i.af
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !79
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %0, i64 %i.al
  %i.an = load i32, ptr %i.ag, align 4, !tbaa !79
  tail call void %i.ai(ptr noundef %5, ptr noundef %i.am, i32 noundef %2, i32 noundef %i.an), !inline_history !148
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !79  ; 4 uses
  %i.ap = add i32 %i.ao, -1                       ; 2 uses
  %i.aq = add i32 %i.ap, %.02829.i
  %i.ar = srem i32 %i.aq, %i.ao
  %i.as = add i32 %i.ap, %.02730.i
  %i.at = srem i32 %i.as, %i.ao
  %i.au = add nuw nsw i32 %.031.i, 1              ; 2 uses
  %i.av = icmp slt i32 %i.au, %i.ao
  br i1 %i.av, label %bb.h, label %._crit_edge.loopexit.i, !llvm.loop !3

_ZN8LightGBM7Network17ReduceScatterRingEPciiPKiS3_S1_iRKPFvPKcS1_iiE.exit: ; preds = %bb.g, %._crit_edge.loopexit.i
  %i.aw = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.m, %bb.g ]
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !79
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %0, i64 %i.ba
  %i.bc = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ax
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !79
  %i.be = sext i32 %i.bd to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %i.bb, i64 %i.be, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %_ZN8LightGBM7Network17ReduceScatterRingEPciiPKiS3_S1_iRKPFvPKcS1_iiE.exit, %bb.d
  ret void
}

; Function Attrs: uwtable
define void @_ZN8LightGBM7Network9AllgatherEPcPKiS3_S1_i(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network13num_machines_E) ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.12)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network18allgather_ext_fun_E)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !109  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E)
  %i.g = load i32, ptr %i.f, align 4, !tbaa !79
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %2, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !79
  %i.k = load i32, ptr %i.a, align 4, !tbaa !79
  tail call void %i.e(ptr noundef %0, i32 noundef %i.j, ptr noundef %1, ptr noundef %2, i32 noundef %i.k, ptr noundef %3, i32 noundef %4)
  br label %_ZN8LightGBM7Network13AllgatherRingEPcPKiS3_S1_i.exit

bb.e:                                             ; preds = %bb.c
  %i.l = icmp sgt i32 %4, 10485760
  %i.m = load i32, ptr %i.a, align 4
  %i.n = icmp slt i32 %i.m, 64
  %or.cond = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.o = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E) ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !79
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %1, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !79
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %3, i64 %i.t
  %i.v = getelementptr inbounds [4 x i8], ptr %2, i64 %i.q
  %i.w = load i32, ptr %i.v, align 4, !tbaa !79
  %i.x = sext i32 %i.w to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr readonly align 1 %0, i64 %i.x, i1 false)
  %i.y = load i32, ptr %i.o, align 4, !tbaa !79   ; 3 uses
  %i.z = add nsw i32 %i.y, 1
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !79  ; 4 uses
  %i.ab = srem i32 %i.z, %i.aa
  %i.ac = add nsw i32 %i.y, -1
  %i.ad = add nsw i32 %i.ac, %i.aa
  %i.ae = srem i32 %i.ad, %i.aa                   ; 2 uses
  %i.af = icmp sgt i32 %i.aa, 1
  br i1 %i.af, label %.lr.ph.i, label %_ZN8LightGBM7Network13AllgatherRingEPcPKiS3_S1_i.exit

.lr.ph.i:                                         ; preds = %bb.f
  %i.ag = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network8linkers_E)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %.024.i = phi i32 [ 1, %.lr.ph.i ], [ %i.bc, %bb.g ]
  %.02023.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.bb, %bb.g ] ; 2 uses
  %.02122.i = phi i32 [ %i.y, %.lr.ph.i ], [ %i.az, %bb.g ] ; 2 uses
  tail call void @_ZTHN8LightGBM7Network8linkers_E()
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19
  %i.ai = sext i32 %.02122.i to i64               ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !79
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %3, i64 %i.al
  %i.an = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ai
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !79
  %i.ap = sext i32 %.02023.i to i64               ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !79
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %3, i64 %i.as
  %i.au = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ap
  %i.av = load i32, ptr %i.au, align 4, !tbaa !79
  tail call void @_ZN8LightGBM7Linkers8SendRecvEiPciiS1_i(ptr noundef nonnull align 8 dereferenceable(304) %i.ah, i32 noundef %i.ab, ptr noundef %i.am, i32 noundef %i.ao, i32 noundef %i.ae, ptr noundef %i.at, i32 noundef %i.av)
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !79  ; 4 uses
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  %i.ay = add i32 %i.ax, %.02122.i
  %i.az = srem i32 %i.ay, %i.aw
  %i.ba = add i32 %i.ax, %.02023.i
  %i.bb = srem i32 %i.ba, %i.aw
  %i.bc = add nuw nsw i32 %.024.i, 1              ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.aw
  br i1 %i.bd, label %bb.g, label %_ZN8LightGBM7Network13AllgatherRingEPcPKiS3_S1_i.exit, !llvm.loop !4

bb.h:                                             ; preds = %bb.e
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.be = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network22recursive_halving_map_E)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !112, !range !113, !noundef !114
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bi = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E) ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !79
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !79
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %3, i64 %i.bn
  %i.bp = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bk
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !79
  %i.br = sext i32 %i.bq to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr readonly align 1 %0, i64 %i.br, i1 false)
  tail call void @_ZTHN8LightGBM7Network10bruck_map_E()
  %i.bs = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network10bruck_map_E) ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !80
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph48.i, label %_ZN8LightGBM7Network13AllgatherRingEPcPKiS3_S1_i.exit

.lr.ph48.i:                                       ; preds = %bb.i
  %i.bv = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network8linkers_E)
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i, %.lr.ph48.i
  %.04146.i = phi i32 [ 0, %.lr.ph48.i ], [ %i.cw, %._crit_edge.i ] ; 7 uses
  %i.bw = shl nuw i32 1, %.04146.i                ; 6 uses
  %i.bx = load i32, ptr %i.bi, align 4, !tbaa !79 ; 2 uses
  %i.by = sdiv i32 %i.bx, %i.bw                   ; 3 uses
  %i.bz = shl i32 %i.by, %.04146.i
  %5 = trunc i32 %i.by to i1                      ; 2 uses
  %i.ca = sub i32 0, %i.bw
  %.040.p.i = select i1 %5, i32 %i.ca, i32 %i.bw
  %.040.i = add i32 %.040.p.i, %i.bx              ; 2 uses
  %.pn.v.i = select i1 %5, i32 -1, i32 1
  %.pn.i = add nsw i32 %.pn.v.i, %i.by
  %.039.i = shl i32 %.pn.i, %.04146.i
  %.not50.i = icmp eq i32 %.04146.i, 31
  %.pre.i = sext i32 %i.bz to i64                 ; 2 uses
  %.pre53.i = sext i32 %.039.i to i64             ; 2 uses
  br i1 %.not50.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %invariant.gep.i = getelementptr [4 x i8], ptr %2, i64 %.pre.i ; 8 uses
  %invariant.gep56.i = getelementptr [4 x i8], ptr %2, i64 %.pre53.i ; 8 uses
  %min.iters.check = icmp slt i32 %i.bw, 8
  br i1 %min.iters.check, label %.lr.ph.i24, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %i.cb = and i32 %i.bw, 2147483640
  %n.vec = zext nneg i32 %i.cb to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ci, %vector.body ]
  %vec.phi34 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cj, %vector.body ]
  %vec.phi35 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ce, %vector.body ]
  %vec.phi36 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cf, %vector.body ]
  %i.cc = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 16
  %wide.load = load <4 x i32>, ptr %i.cc, align 4, !tbaa !79
  %wide.load37 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !79
  %i.ce = add <4 x i32> %wide.load, %vec.phi35    ; 2 uses
  %i.cf = add <4 x i32> %wide.load37, %vec.phi36  ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %invariant.gep56.i, i64 %index ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 16
  %wide.load38 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !79
  %wide.load39 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !79
  %i.ci = add <4 x i32> %wide.load38, %vec.phi    ; 2 uses
  %i.cj = add <4 x i32> %wide.load39, %vec.phi34  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cj, %i.ci
  %i.cl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %bin.rdx40 = add <4 x i32> %i.cf, %i.ce
  %i.cm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx40)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i24, %.lr.ph.i24.1, %.lr.ph.i24.3, %.lr.ph.i24.6, %middle.block, %bb.j
  %.038.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.cm, %middle.block ], [ %i.cz, %.lr.ph.i24 ], [ %i.dc, %.lr.ph.i24.1 ], [ %i.dw, %.lr.ph.i24.6 ], [ %i.dk, %.lr.ph.i24.3 ]
  %.037.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.cl, %middle.block ], [ %i.da, %.lr.ph.i24 ], [ %i.de, %.lr.ph.i24.1 ], [ %i.dy, %.lr.ph.i24.6 ], [ %i.dm, %.lr.ph.i24.3 ]
  tail call void @_ZTHN8LightGBM7Network8linkers_E()
  %i.cn = load ptr, ptr %i.bv, align 8, !tbaa !19
  %i.co = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre.i
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !79
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %3, i64 %i.cq
  %i.cs = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre53.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !79
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %3, i64 %i.cu
  tail call void @_ZN8LightGBM7Linkers8SendRecvEiPciiS1_i(ptr noundef nonnull align 8 dereferenceable(304) %i.cn, i32 noundef %.040.i, ptr noundef %i.cr, i32 noundef %.038.lcssa.i, i32 noundef %.040.i, ptr noundef %i.cv, i32 noundef %.037.lcssa.i)
  %i.cw = add nuw nsw i32 %.04146.i, 1            ; 2 uses
  tail call void @_ZTHN8LightGBM7Network10bruck_map_E()
  %i.cx = load i32, ptr %i.bs, align 8, !tbaa !80
  %i.cy = icmp slt i32 %i.cw, %i.cx
  br i1 %i.cy, label %bb.j, label %_ZN8LightGBM7Network13AllgatherRingEPcPKiS3_S1_i.exit, !llvm.loop !5

.lr.ph.i24:                                       ; preds = %.lr.ph.preheader.i
  %i.cz = load i32, ptr %invariant.gep.i, align 4, !tbaa !79 ; 2 uses
  %i.da = load i32, ptr %invariant.gep56.i, align 4, !tbaa !79 ; 2 uses
  %exitcond.not.i = icmp slt i32 %i.bw, 2
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i24.1

.lr.ph.i24.1:                                     ; preds = %.lr.ph.i24
  %gep.i.1 = getelementptr i8, ptr %invariant.gep.i, i64 4
  %i.db = load i32, ptr %gep.i.1, align 4, !tbaa !79
  %i.dc = add nsw i32 %i.db, %i.cz                ; 2 uses
  %gep57.i.1 = getelementptr i8, ptr %invariant.gep56.i, i64 4
  %i.dd = load i32, ptr %gep57.i.1, align 4, !tbaa !79
  %i.de = add nsw i32 %i.dd, %i.da                ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %.04146.i, 1
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i24.3

.lr.ph.i24.3:                                     ; preds = %.lr.ph.i24.1
  %gep57.i.2 = getelementptr i8, ptr %invariant.gep56.i, i64 8
  %i.df = load i32, ptr %gep57.i.2, align 4, !tbaa !79
  %i.dg = add nsw i32 %i.df, %i.de
  %gep.i.2 = getelementptr i8, ptr %invariant.gep.i, i64 8
  %i.dh = load i32, ptr %gep.i.2, align 4, !tbaa !79
  %i.di = add nsw i32 %i.dh, %i.dc
  %gep.i.3 = getelementptr i8, ptr %invariant.gep.i, i64 12
  %i.dj = load i32, ptr %gep.i.3, align 4, !tbaa !79
  %i.dk = add nsw i32 %i.dj, %i.di                ; 2 uses
  %gep57.i.3 = getelementptr i8, ptr %invariant.gep56.i, i64 12
  %i.dl = load i32, ptr %gep57.i.3, align 4, !tbaa !79
  %i.dm = add nsw i32 %i.dl, %i.dg                ; 2 uses
  %exitcond.not.i.3 = icmp eq i32 %.04146.i, 2
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i24.6

.lr.ph.i24.6:                                     ; preds = %.lr.ph.i24.3
  %gep57.i.5 = getelementptr i8, ptr %invariant.gep56.i, i64 20
  %i.dn = load i32, ptr %gep57.i.5, align 4, !tbaa !79
  %gep57.i.4 = getelementptr i8, ptr %invariant.gep56.i, i64 16
  %i.do = load i32, ptr %gep57.i.4, align 4, !tbaa !79
  %i.dp = add nsw i32 %i.do, %i.dm
  %i.dq = add nsw i32 %i.dn, %i.dp
  %gep.i.5 = getelementptr i8, ptr %invariant.gep.i, i64 20
  %i.dr = load i32, ptr %gep.i.5, align 4, !tbaa !79
  %gep.i.4 = getelementptr i8, ptr %invariant.gep.i, i64 16
  %i.ds = load i32, ptr %gep.i.4, align 4, !tbaa !79
  %i.dt = add nsw i32 %i.ds, %i.dk
  %i.du = add nsw i32 %i.dr, %i.dt
  %gep.i.6 = getelementptr i8, ptr %invariant.gep.i, i64 24
  %i.dv = load i32, ptr %gep.i.6, align 4, !tbaa !79
  %i.dw = add nsw i32 %i.dv, %i.du
  %gep57.i.6 = getelementptr i8, ptr %invariant.gep56.i, i64 24
  %i.dx = load i32, ptr %gep57.i.6, align 4, !tbaa !79
  %i.dy = add nsw i32 %i.dx, %i.dq
  br label %._crit_edge.i

bb.k:                                             ; preds = %bb.h
  tail call void @_ZN8LightGBM7Network14AllgatherBruckEPcPKiS3_S1_i(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4)
  br label %_ZN8LightGBM7Network13AllgatherRingEPcPKiS3_S1_i.exit

_ZN8LightGBM7Network13AllgatherRingEPcPKiS3_S1_i.exit: ; preds = %._crit_edge.i, %bb.g, %bb.i, %bb.f, %bb.k, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #18

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #19

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: uwtable
define void @_ZN8LightGBM7Network9AllgatherEPciS1_(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network13num_machines_E) ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.12)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZTHN8LightGBM7Network12block_start_E()
  %i.d = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network12block_start_E) ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  store i32 0, ptr %i.e, align 4, !tbaa !79
  tail call void @_ZTHN8LightGBM7Network10block_len_E()
  %i.f = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network10block_len_E) ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  store i32 %1, ptr %i.g, align 4, !tbaa !79
  %i.h = load i32, ptr %i.a, align 4, !tbaa !79
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  tail call void @_ZTHN8LightGBM7Network12block_start_E()
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !22
  tail call void @_ZTHN8LightGBM7Network10block_len_E()
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.l = load i32, ptr %i.a, align 4, !tbaa !79
  %i.m = mul nsw i32 %i.l, %1
  tail call void @_ZN8LightGBM7Network9AllgatherEPcPKiS3_S1_i(ptr noundef %0, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %2, i32 noundef %i.m)
  br label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.c ] ; 4 uses
  tail call void @_ZTHN8LightGBM7Network12block_start_E()
  %i.n = add nsw i64 %indvars.iv, -1              ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.n
  %i.q = load i32, ptr %i.p, align 4, !tbaa !79
  tail call void @_ZTHN8LightGBM7Network10block_len_E()
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.n
  %i.t = load i32, ptr %i.s, align 4, !tbaa !79
  %i.u = add nsw i32 %i.t, %i.q
  tail call void @_ZTHN8LightGBM7Network12block_start_E()
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  store i32 %i.u, ptr %i.w, align 4, !tbaa !79
  tail call void @_ZTHN8LightGBM7Network10block_len_E()
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  store i32 %1, ptr %i.y, align 4, !tbaa !79
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = load i32, ptr %i.a, align 4, !tbaa !79
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !150

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: uwtable
define void @_ZN8LightGBM7Network13AllgatherRingEPcPKiS3_S1_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E) ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %1, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !79
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.c
  %i.i = load i32, ptr %i.h, align 4, !tbaa !79
  %i.j = sext i32 %i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %0, i64 %i.j, i1 false)
  %i.k = load i32, ptr %i.a, align 4, !tbaa !79   ; 3 uses
  %i.l = add nsw i32 %i.k, 1
  %i.m = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network13num_machines_E) ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !79   ; 4 uses
  %i.o = srem i32 %i.l, %i.n
  %i.p = add nsw i32 %i.k, -1
  %i.q = add nsw i32 %i.p, %i.n
  %i.r = srem i32 %i.q, %i.n                      ; 2 uses
  %i.s = icmp sgt i32 %i.n, 1
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.t = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network8linkers_E)
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.024 = phi i32 [ 1, %.lr.ph ], [ %i.aq, %bb.b ]
  %.02023 = phi i32 [ %i.r, %.lr.ph ], [ %i.ap, %bb.b ] ; 2 uses
  %.02122 = phi i32 [ %i.k, %.lr.ph ], [ %i.am, %bb.b ] ; 2 uses
  tail call void @_ZTHN8LightGBM7Network8linkers_E()
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19
  %i.v = sext i32 %.02122 to i64                  ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %1, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !79
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %3, i64 %i.y
  %i.aa = getelementptr inbounds [4 x i8], ptr %2, i64 %i.v
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !79
  %i.ac = sext i32 %.02023 to i64                 ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !79
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %3, i64 %i.af
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ac
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !79
  tail call void @_ZN8LightGBM7Linkers8SendRecvEiPciiS1_i(ptr noundef nonnull align 8 dereferenceable(304) %i.u, i32 noundef %i.o, ptr noundef %i.z, i32 noundef %i.ab, i32 noundef %i.r, ptr noundef %i.ag, i32 noundef %i.ai)
  %i.aj = add nsw i32 %.02122, -1
  %i.ak = load i32, ptr %i.m, align 4, !tbaa !79  ; 5 uses
  %i.al = add nsw i32 %i.aj, %i.ak
  %i.am = srem i32 %i.al, %i.ak
  %i.an = add nsw i32 %.02023, -1
  %i.ao = add nsw i32 %i.an, %i.ak
  %i.ap = srem i32 %i.ao, %i.ak
  %i.aq = add nuw nsw i32 %.024, 1                ; 2 uses
  %i.ar = icmp slt i32 %i.aq, %i.ak
  br i1 %i.ar, label %bb.b, label %._crit_edge, !llvm.loop !4
}

; Function Attrs: uwtable
define void @_ZN8LightGBM7Network26AllgatherRecursiveDoublingEPcPKiS3_S1_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E) ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %1, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !79
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.c
  %i.i = load i32, ptr %i.h, align 4, !tbaa !79
  %i.j = sext i32 %i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %0, i64 %i.j, i1 false)
  tail call void @_ZTHN8LightGBM7Network10bruck_map_E()
  %i.k = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network10bruck_map_E) ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !80
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph48, label %._crit_edge49

.lr.ph48:                                         ; preds = %bb.a
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network8linkers_E)
  br label %bb.b

._crit_edge49:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph48, %._crit_edge
  %.04146 = phi i32 [ 0, %.lr.ph48 ], [ %i.ao, %._crit_edge ] ; 7 uses
  %i.o = shl nuw i32 1, %.04146                   ; 6 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !79   ; 2 uses
  %i.q = sdiv i32 %i.p, %i.o                      ; 3 uses
  %i.r = shl i32 %i.q, %.04146
  %5 = trunc i32 %i.q to i1                       ; 2 uses
  %i.s = sub i32 0, %i.o
  %.040.p = select i1 %5, i32 %i.s, i32 %i.o
  %.040 = add i32 %.040.p, %i.p                   ; 2 uses
  %.pn.v = select i1 %5, i32 -1, i32 1
  %.pn = add nsw i32 %.pn.v, %i.q
  %.039 = shl i32 %.pn, %.04146
  %.not50 = icmp eq i32 %.04146, 31
  %.pre = sext i32 %i.r to i64                    ; 2 uses
  %.pre53 = sext i32 %.039 to i64                 ; 2 uses
  br i1 %.not50, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %.pre ; 8 uses
  %invariant.gep56 = getelementptr [4 x i8], ptr %2, i64 %.pre53 ; 8 uses
  %min.iters.check = icmp slt i32 %i.o, 8
  br i1 %min.iters.check, label %.lr.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.t = and i32 %i.o, 2147483640
  %n.vec = zext nneg i32 %i.t to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %vec.phi59.a = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %vec.phi60.a = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi61 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %i.u = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %wide.load = load <4 x i32>, ptr %i.u, align 4, !tbaa !79
  %wide.load62.a = load <4 x i32>, ptr %i.v, align 4, !tbaa !79
  %i.w = add <4 x i32> %wide.load, %vec.phi60.a   ; 2 uses
  %i.x = add <4 x i32> %wide.load62.a, %vec.phi61 ; 2 uses
  %i.y = getelementptr [4 x i8], ptr %invariant.gep56, i64 %index ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %wide.load63.a = load <4 x i32>, ptr %i.y, align 4, !tbaa !79
  %wide.load64 = load <4 x i32>, ptr %i.z, align 4, !tbaa !79
  %i.aa = add <4 x i32> %wide.load63.a, %vec.phi  ; 2 uses
  %i.ab = add <4 x i32> %wide.load64, %vec.phi59.a ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !151

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ab, %i.aa
  %i.ad = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %bin.rdx65 = add <4 x i32> %i.x, %i.w
  %i.ae = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx65)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.3, %.lr.ph.6, %middle.block, %bb.b
  %.038.lcssa = phi i32 [ 0, %bb.b ], [ %i.ae, %middle.block ], [ %i.ar, %.lr.ph ], [ %i.au, %.lr.ph.1 ], [ %i.bo, %.lr.ph.6 ], [ %i.bc, %.lr.ph.3 ]
  %.037.lcssa = phi i32 [ 0, %bb.b ], [ %i.ad, %middle.block ], [ %i.as, %.lr.ph ], [ %i.aw, %.lr.ph.1 ], [ %i.bq, %.lr.ph.6 ], [ %i.be, %.lr.ph.3 ]
  tail call void @_ZTHN8LightGBM7Network8linkers_E()
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !19
  %i.ag = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !79
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %3, i64 %i.ai
  %i.ak = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre53
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !79
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %3, i64 %i.am
  tail call void @_ZN8LightGBM7Linkers8SendRecvEiPciiS1_i(ptr noundef nonnull align 8 dereferenceable(304) %i.af, i32 noundef %.040, ptr noundef %i.aj, i32 noundef %.038.lcssa, i32 noundef %.040, ptr noundef %i.an, i32 noundef %.037.lcssa)
  %i.ao = add nuw nsw i32 %.04146, 1              ; 2 uses
  tail call void @_ZTHN8LightGBM7Network10bruck_map_E()
  %i.ap = load i32, ptr %i.k, align 8, !tbaa !80
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.b, label %._crit_edge49, !llvm.loop !5

.lr.ph:                                           ; preds = %.lr.ph.preheader
  %i.ar = load i32, ptr %invariant.gep, align 4, !tbaa !79 ; 2 uses
  %i.as = load i32, ptr %invariant.gep56, align 4, !tbaa !79 ; 2 uses
  %exitcond.not = icmp slt i32 %i.o, 2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 4
  %i.at = load i32, ptr %gep.1, align 4, !tbaa !79
  %i.au = add nsw i32 %i.at, %i.ar                ; 2 uses
  %gep57.1 = getelementptr i8, ptr %invariant.gep56, i64 4
  %i.av = load i32, ptr %gep57.1, align 4, !tbaa !79
  %i.aw = add nsw i32 %i.av, %i.as                ; 2 uses
  %exitcond.not.1 = icmp eq i32 %.04146, 1
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.1
  %gep57.2 = getelementptr i8, ptr %invariant.gep56, i64 8
  %i.ax = load i32, ptr %gep57.2, align 4, !tbaa !79
  %i.ay = add nsw i32 %i.ax, %i.aw
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 8
  %i.az = load i32, ptr %gep.2, align 4, !tbaa !79
  %i.ba = add nsw i32 %i.az, %i.au
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 12
  %i.bb = load i32, ptr %gep.3, align 4, !tbaa !79
  %i.bc = add nsw i32 %i.bb, %i.ba                ; 2 uses
  %gep57.3 = getelementptr i8, ptr %invariant.gep56, i64 12
  %i.bd = load i32, ptr %gep57.3, align 4, !tbaa !79
  %i.be = add nsw i32 %i.bd, %i.ay                ; 2 uses
  %exitcond.not.3 = icmp eq i32 %.04146, 2
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.3
  %gep57.5 = getelementptr i8, ptr %invariant.gep56, i64 20
  %i.bf = load i32, ptr %gep57.5, align 4, !tbaa !79
  %gep57.4 = getelementptr i8, ptr %invariant.gep56, i64 16
  %i.bg = load i32, ptr %gep57.4, align 4, !tbaa !79
  %i.bh = add nsw i32 %i.bg, %i.be
  %i.bi = add nsw i32 %i.bf, %i.bh
  %gep.5 = getelementptr i8, ptr %invariant.gep, i64 20
  %i.bj = load i32, ptr %gep.5, align 4, !tbaa !79
  %gep.4 = getelementptr i8, ptr %invariant.gep, i64 16
  %i.bk = load i32, ptr %gep.4, align 4, !tbaa !79
  %i.bl = add nsw i32 %i.bk, %i.bc
  %i.bm = add nsw i32 %i.bj, %i.bl
  %gep.6 = getelementptr i8, ptr %invariant.gep, i64 24
  %i.bn = load i32, ptr %gep.6, align 4, !tbaa !79
  %i.bo = add nsw i32 %i.bn, %i.bm
  %gep57.6 = getelementptr i8, ptr %invariant.gep56, i64 24
  %i.bp = load i32, ptr %gep57.6, align 4, !tbaa !79
  %i.bq = add nsw i32 %i.bp, %i.bi
  br label %._crit_edge
}

; Function Attrs: uwtable
define void @_ZN8LightGBM7Network14AllgatherBruckEPcPKiS3_S1_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E) ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !79
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %2, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !79
  %i.f = sext i32 %i.e to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %0, i64 %i.f, i1 false)
  %i.g = load i32, ptr %i.a, align 4, !tbaa !79
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %2, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !79
  tail call void @_ZTHN8LightGBM7Network10bruck_map_E()
  %i.k = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network10bruck_map_E) ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !80
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph72, label %._crit_edge73

.lr.ph72:                                         ; preds = %bb.a
  %i.n = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network13num_machines_E) ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.q = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network8linkers_E)
  br label %bb.b

._crit_edge73:                                    ; preds = %._crit_edge, %bb.a
  %i.r = sext i32 %4 to i64
  %i.s = add nsw i64 %i.r, -1                     ; 2 uses
  %.012.i.i = getelementptr inbounds i8, ptr %3, i64 %i.s ; 2 uses
  %i.t = icmp sgt i32 %4, 1
  br i1 %i.t, label %.lr.ph.i.i, label %_ZSt7reverseIPcEvT_S1_.exit

.lr.ph.i.i:                                       ; preds = %._crit_edge73, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.012.i.i, %._crit_edge73 ] ; 3 uses
  %.0913.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %3, %._crit_edge73 ] ; 3 uses
  %i.u = load i8, ptr %.0913.i.i, align 1, !tbaa !87
  %i.v = load i8, ptr %.014.i.i, align 1, !tbaa !87
  store i8 %i.v, ptr %.0913.i.i, align 1, !tbaa !87
  store i8 %i.u, ptr %.014.i.i, align 1, !tbaa !87
  %i.w = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 1 ; 2 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.014.i.i, i64 -1 ; 2 uses
  %i.x = icmp ult ptr %i.w, %.0.i.i
  br i1 %i.x, label %.lr.ph.i.i, label %_ZSt7reverseIPcEvT_S1_.exit, !llvm.loop !152

_ZSt7reverseIPcEvT_S1_.exit:                      ; preds = %.lr.ph.i.i, %._crit_edge73
  %i.y = load i32, ptr %i.a, align 4, !tbaa !79
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %1, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !79 ; 3 uses
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = icmp sgt i32 %i.ab, 1
  br i1 %i.ad, label %.lr.ph.i.i49.preheader, label %_ZSt7reverseIPcEvT_S1_.exit53

.lr.ph.i.i49.preheader:                           ; preds = %_ZSt7reverseIPcEvT_S1_.exit
  %i.ae = getelementptr i8, ptr %3, i64 %i.ac
  %.012.i.i47 = getelementptr i8, ptr %i.ae, i64 -1
  br label %.lr.ph.i.i49

.lr.ph.i.i49:                                     ; preds = %.lr.ph.i.i49.preheader, %.lr.ph.i.i49
  %.014.i.i50 = phi ptr [ %.0.i.i52, %.lr.ph.i.i49 ], [ %.012.i.i47, %.lr.ph.i.i49.preheader ] ; 3 uses
  %.0913.i.i51 = phi ptr [ %i.ah, %.lr.ph.i.i49 ], [ %3, %.lr.ph.i.i49.preheader ] ; 3 uses
  %i.af = load i8, ptr %.0913.i.i51, align 1, !tbaa !87
  %i.ag = load i8, ptr %.014.i.i50, align 1, !tbaa !87
  store i8 %i.ag, ptr %.0913.i.i51, align 1, !tbaa !87
  store i8 %i.af, ptr %.014.i.i50, align 1, !tbaa !87
  %i.ah = getelementptr inbounds nuw i8, ptr %.0913.i.i51, i64 1 ; 2 uses
  %.0.i.i52 = getelementptr inbounds i8, ptr %.014.i.i50, i64 -1 ; 2 uses
  %i.ai = icmp ult ptr %i.ah, %.0.i.i52
  br i1 %i.ai, label %.lr.ph.i.i49, label %_ZSt7reverseIPcEvT_S1_.exit53.loopexit, !llvm.loop !152

_ZSt7reverseIPcEvT_S1_.exit53.loopexit:           ; preds = %.lr.ph.i.i49
  %.pre = load i32, ptr %i.a, align 4, !tbaa !79
  %.phi.trans.insert = sext i32 %.pre to i64
  %.phi.trans.insert76 = getelementptr inbounds [4 x i8], ptr %1, i64 %.phi.trans.insert
  %.pre77 = load i32, ptr %.phi.trans.insert76, align 4, !tbaa !79 ; 2 uses
  %.pre78 = sext i32 %.pre77 to i64
  br label %_ZSt7reverseIPcEvT_S1_.exit53
end_hunk_0
