Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/network?download=true
inline.NumInlined: 860
inline.NumDeleted: 422
begin_hunk_0_@_ZN8LightGBM7Network13ReduceScatterEPciiPKiS3_S1_iRKPFvPKcS1_iiE:bb.a
bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8LightGBM7Network29ReduceScatterRecursiveHalvingEPciiPKiS3_S1_iRKPFvPKcS1_iiE(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 poison, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.l = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E) ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !73   ; 3 uses
  %i.n = add nsw i32 %i.m, 1
  %i.o = load i32, ptr %i.a, align 4, !tbaa !73   ; 5 uses
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
  %.pre.i = load i32, ptr %i.l, align 4, !tbaa !73
  br label %_ZN8LightGBM7Network17ReduceScatterRingEPciiPKiS3_S1_iRKPFvPKcS1_iiE.exit

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %.031.i = phi i32 [ 1, %.lr.ph.i ], [ %i.au, %bb.h ]
  %.02730.i = phi i32 [ %i.v, %.lr.ph.i ], [ %i.at, %bb.h ] ; 2 uses
  %.02829.i = phi i32 [ %i.s, %.lr.ph.i ], [ %i.ar, %bb.h ] ; 2 uses
  tail call void @_ZTHN8LightGBM7Network8linkers_E()
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !9
  %i.y = sext i32 %.02829.i to i64                ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %3, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !73
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds [4 x i8], ptr %4, i64 %i.y
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !73
  %i.af = sext i32 %.02730.i to i64               ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %4, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !73
  tail call void @_ZN8LightGBM7Linkers8SendRecvEiPciiS1_i(ptr noundef nonnull align 8 dereferenceable(304) %i.x, i32 noundef %i.p, ptr noundef %i.ac, i32 noundef %i.ae, i32 noundef %i.s, ptr noundef %5, i32 noundef %i.ah)
  %i.ai = load ptr, ptr %7, align 8, !tbaa !123
  %i.aj = getelementptr inbounds [4 x i8], ptr %3, i64 %i.af
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !73
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %0, i64 %i.al
  %i.an = load i32, ptr %i.ag, align 4, !tbaa !73
  tail call void %i.ai(ptr noundef %5, ptr noundef %i.am, i32 noundef %2, i32 noundef %i.an), !inline_history !137
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !73  ; 4 uses
  %i.ap = add i32 %i.ao, -1                       ; 2 uses
  %i.aq = add i32 %i.ap, %.02829.i
  %i.ar = srem i32 %i.aq, %i.ao
  %i.as = add i32 %i.ap, %.02730.i
  %i.at = srem i32 %i.as, %i.ao
  %i.au = add nuw nsw i32 %.031.i, 1              ; 2 uses
  %i.av = icmp slt i32 %i.au, %i.ao
  br i1 %i.av, label %bb.h, label %._crit_edge.loopexit.i, !llvm.loop !138

_ZN8LightGBM7Network17ReduceScatterRingEPciiPKiS3_S1_iRKPFvPKcS1_iiE.exit: ; preds = %bb.g, %._crit_edge.loopexit.i
  %i.aw = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.m, %bb.g ]
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !73
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %0, i64 %i.ba
  %i.bc = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ax
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !73
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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !73
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.12)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network18allgather_ext_fun_E)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !123  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E)
  %i.g = load i32, ptr %i.f, align 4, !tbaa !73
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %2, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !73
  %i.k = load i32, ptr %i.a, align 4, !tbaa !73
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
  %i.p = load i32, ptr %i.o, align 4, !tbaa !73
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %1, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !73
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %3, i64 %i.t
  %i.v = getelementptr inbounds [4 x i8], ptr %2, i64 %i.q
  %i.w = load i32, ptr %i.v, align 4, !tbaa !73
  %i.x = sext i32 %i.w to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.u, ptr readonly align 1 %0, i64 %i.x, i1 false)
  %i.y = load i32, ptr %i.o, align 4, !tbaa !73   ; 3 uses
  %i.z = add nsw i32 %i.y, 1
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !73  ; 4 uses
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
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !9
  %i.ai = sext i32 %.02122.i to i64               ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !73
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %3, i64 %i.al
  %i.an = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ai
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !73
  %i.ap = sext i32 %.02023.i to i64               ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !73
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %3, i64 %i.as
  %i.au = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ap
  %i.av = load i32, ptr %i.au, align 4, !tbaa !73
  tail call void @_ZN8LightGBM7Linkers8SendRecvEiPciiS1_i(ptr noundef nonnull align 8 dereferenceable(304) %i.ah, i32 noundef %i.ab, ptr noundef %i.am, i32 noundef %i.ao, i32 noundef %i.ae, ptr noundef %i.at, i32 noundef %i.av)
  %i.aw = load i32, ptr %i.a, align 4, !tbaa !73  ; 4 uses
  %i.ax = add i32 %i.aw, -1                       ; 2 uses
  %i.ay = add i32 %i.ax, %.02122.i
  %i.az = srem i32 %i.ay, %i.aw
  %i.ba = add i32 %i.ax, %.02023.i
  %i.bb = srem i32 %i.ba, %i.aw
  %i.bc = add nuw nsw i32 %.024.i, 1              ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %i.aw
  br i1 %i.bd, label %bb.g, label %_ZN8LightGBM7Network13AllgatherRingEPcPKiS3_S1_i.exit, !llvm.loop !139

bb.h:                                             ; preds = %bb.e
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.be = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network22recursive_halving_map_E)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !134, !range !135, !noundef !136
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bi = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E) ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !73
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !73
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %3, i64 %i.bn
  %i.bp = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bk
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !73
  %i.br = sext i32 %i.bq to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bo, ptr readonly align 1 %0, i64 %i.br, i1 false)
  tail call void @_ZTHN8LightGBM7Network10bruck_map_E()
  %i.bs = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network10bruck_map_E) ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !75
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph48.i, label %_ZN8LightGBM7Network13AllgatherRingEPcPKiS3_S1_i.exit

.lr.ph48.i:                                       ; preds = %bb.i
  %i.bv = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network8linkers_E)
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i, %.lr.ph48.i
  %.04146.i = phi i32 [ 0, %.lr.ph48.i ], [ %i.cw, %._crit_edge.i ] ; 5 uses
  %i.bw = shl nuw i32 1, %.04146.i                ; 5 uses
  %5 = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 1)
  %smax = zext nneg i32 %5 to i64                 ; 2 uses
  %i.bx = load i32, ptr %i.bi, align 4, !tbaa !73 ; 2 uses
  %i.by = sdiv i32 %i.bx, %i.bw                   ; 3 uses
  %i.bz = shl i32 %i.by, %.04146.i
  %i.ca = and i32 %i.by, 1
  %.not.i = icmp eq i32 %i.ca, 0                  ; 2 uses
  %i.cb = sub i32 0, %i.bw
  %.040.p.i = select i1 %.not.i, i32 %i.bw, i32 %i.cb
  %.040.i = add i32 %.040.p.i, %i.bx              ; 2 uses
  %.pn.v.i = select i1 %.not.i, i32 1, i32 -1
  %.pn.i = add nsw i32 %.pn.v.i, %i.by
  %.039.i = shl i32 %.pn.i, %.04146.i
  %.not50.i = icmp eq i32 %.04146.i, 31
  %.pre.i = sext i32 %i.bz to i64                 ; 2 uses
  %.pre53.i = sext i32 %.039.i to i64             ; 2 uses
  br i1 %.not50.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %invariant.gep.i = getelementptr [4 x i8], ptr %2, i64 %.pre.i ; 2 uses
  %invariant.gep56.i = getelementptr [4 x i8], ptr %2, i64 %.pre53.i ; 2 uses
  %min.iters.check = icmp slt i32 %i.bw, 8
  br i1 %min.iters.check, label %.lr.ph.i24.3, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %smax, 2147483640
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ci, %vector.body ]
  %vec.phi34 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cj, %vector.body ]
  %vec.phi35 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ce, %vector.body ]
  %vec.phi36 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cf, %vector.body ]
  %i.cc = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 16
  %wide.load = load <4 x i32>, ptr %i.cc, align 4, !tbaa !73
  %wide.load37 = load <4 x i32>, ptr %i.cd, align 4, !tbaa !73
  %i.ce = add <4 x i32> %wide.load, %vec.phi35    ; 2 uses
  %i.cf = add <4 x i32> %wide.load37, %vec.phi36  ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %invariant.gep56.i, i64 %index ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cg, i64 16
  %wide.load38 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !73
  %wide.load39 = load <4 x i32>, ptr %i.ch, align 4, !tbaa !73
  %i.ci = add <4 x i32> %wide.load38, %vec.phi    ; 2 uses
  %i.cj = add <4 x i32> %wide.load39, %vec.phi34  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !140

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cj, %i.ci
  %i.cl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  %bin.rdx40 = add <4 x i32> %i.cf, %i.ce
  %i.cm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx40)
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i24.3, %middle.block, %bb.j
  %.038.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.cm, %middle.block ], [ %i.da, %.lr.ph.i24.3 ]
  %.037.lcssa.i = phi i32 [ 0, %bb.j ], [ %i.cl, %middle.block ], [ %i.dc, %.lr.ph.i24.3 ]
  tail call void @_ZTHN8LightGBM7Network8linkers_E()
  %i.cn = load ptr, ptr %i.bv, align 8, !tbaa !9
  %i.co = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre.i
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !73
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %3, i64 %i.cq
  %i.cs = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre53.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !73
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %3, i64 %i.cu
  tail call void @_ZN8LightGBM7Linkers8SendRecvEiPciiS1_i(ptr noundef nonnull align 8 dereferenceable(304) %i.cn, i32 noundef %.040.i, ptr noundef %i.cr, i32 noundef %.038.lcssa.i, i32 noundef %.040.i, ptr noundef %i.cv, i32 noundef %.037.lcssa.i)
  %i.cw = add nuw nsw i32 %.04146.i, 1            ; 2 uses
  tail call void @_ZTHN8LightGBM7Network10bruck_map_E()
  %i.cx = load i32, ptr %i.bs, align 8, !tbaa !75
  %i.cy = icmp slt i32 %i.cw, %i.cx
  br i1 %i.cy, label %bb.j, label %_ZN8LightGBM7Network13AllgatherRingEPcPKiS3_S1_i.exit, !llvm.loop !143

.lr.ph.i24.3:                                     ; preds = %.lr.ph.preheader.i, %.lr.ph.i24.3
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i24.3 ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.03743.i = phi i32 [ %i.dc, %.lr.ph.i24.3 ], [ 0, %.lr.ph.preheader.i ]
  %.03842.i = phi i32 [ %i.da, %.lr.ph.i24.3 ], [ 0, %.lr.ph.preheader.i ]
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.cz = load i32, ptr %gep.i, align 4, !tbaa !73
  %i.da = add nsw i32 %i.cz, %.03842.i            ; 2 uses
  %gep57.i = getelementptr [4 x i8], ptr %invariant.gep56.i, i64 %indvars.iv.i
  %i.db = load i32, ptr %gep57.i, align 4, !tbaa !73
  %i.dc = add nsw i32 %i.db, %.03743.i            ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i, %smax
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i24.3, !llvm.loop !144

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
  %i.b = load i32, ptr %i.a, align 4, !tbaa !73
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.12)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_ZTHN8LightGBM7Network12block_start_E()
  %i.d = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network12block_start_E) ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  store i32 0, ptr %i.e, align 4, !tbaa !73
  tail call void @_ZTHN8LightGBM7Network10block_len_E()
  %i.f = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network10block_len_E) ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  store i32 %1, ptr %i.g, align 4, !tbaa !73
  %i.h = load i32, ptr %i.a, align 4, !tbaa !73
  %i.i = icmp sgt i32 %i.h, 1
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  tail call void @_ZTHN8LightGBM7Network12block_start_E()
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !12
  tail call void @_ZTHN8LightGBM7Network10block_len_E()
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.l = load i32, ptr %i.a, align 4, !tbaa !73
  %i.m = mul nsw i32 %i.l, %1
  tail call void @_ZN8LightGBM7Network9AllgatherEPcPKiS3_S1_i(ptr noundef %0, ptr noundef %i.j, ptr noundef %i.k, ptr noundef %2, i32 noundef %i.m)
  br label %bb.d

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.c ] ; 4 uses
  tail call void @_ZTHN8LightGBM7Network12block_start_E()
  %i.n = add nsw i64 %indvars.iv, -1              ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.n
  %i.q = load i32, ptr %i.p, align 4, !tbaa !73
  tail call void @_ZTHN8LightGBM7Network10block_len_E()
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.n
  %i.t = load i32, ptr %i.s, align 4, !tbaa !73
  %i.u = add nsw i32 %i.t, %i.q
  tail call void @_ZTHN8LightGBM7Network12block_start_E()
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv
  store i32 %i.u, ptr %i.w, align 4, !tbaa !73
  tail call void @_ZTHN8LightGBM7Network10block_len_E()
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  store i32 %1, ptr %i.y, align 4, !tbaa !73
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = load i32, ptr %i.a, align 4, !tbaa !73
  %i.aa = sext i32 %i.z to i64
  %i.ab = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.ab, label %.lr.ph, label %._crit_edge, !llvm.loop !145

bb.d:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: uwtable
define void @_ZN8LightGBM7Network13AllgatherRingEPcPKiS3_S1_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E) ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !73
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %1, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !73
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.c
  %i.i = load i32, ptr %i.h, align 4, !tbaa !73
  %i.j = sext i32 %i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %0, i64 %i.j, i1 false)
  %i.k = load i32, ptr %i.a, align 4, !tbaa !73   ; 3 uses
  %i.l = add nsw i32 %i.k, 1
  %i.m = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network13num_machines_E) ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !73   ; 4 uses
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !9
  %i.v = sext i32 %.02122 to i64                  ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %1, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !73
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %3, i64 %i.y
  %i.aa = getelementptr inbounds [4 x i8], ptr %2, i64 %i.v
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !73
  %i.ac = sext i32 %.02023 to i64                 ; 2 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !73
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %3, i64 %i.af
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ac
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !73
  tail call void @_ZN8LightGBM7Linkers8SendRecvEiPciiS1_i(ptr noundef nonnull align 8 dereferenceable(304) %i.u, i32 noundef %i.o, ptr noundef %i.z, i32 noundef %i.ab, i32 noundef %i.r, ptr noundef %i.ag, i32 noundef %i.ai)
  %i.aj = add nsw i32 %.02122, -1
  %i.ak = load i32, ptr %i.m, align 4, !tbaa !73  ; 5 uses
  %i.al = add nsw i32 %i.aj, %i.ak
  %i.am = srem i32 %i.al, %i.ak
  %i.an = add nsw i32 %.02023, -1
  %i.ao = add nsw i32 %i.an, %i.ak
  %i.ap = srem i32 %i.ao, %i.ak
  %i.aq = add nuw nsw i32 %.024, 1                ; 2 uses
  %i.ar = icmp slt i32 %i.aq, %i.ak
  br i1 %i.ar, label %bb.b, label %._crit_edge, !llvm.loop !139
}

; Function Attrs: uwtable
define void @_ZN8LightGBM7Network26AllgatherRecursiveDoublingEPcPKiS3_S1_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E) ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !73
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %1, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !73
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  %i.h = getelementptr inbounds [4 x i8], ptr %2, i64 %i.c
  %i.i = load i32, ptr %i.h, align 4, !tbaa !73
  %i.j = sext i32 %i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %0, i64 %i.j, i1 false)
  tail call void @_ZTHN8LightGBM7Network10bruck_map_E()
  %i.k = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network10bruck_map_E) ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !75
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph48, label %._crit_edge49

.lr.ph48:                                         ; preds = %bb.a
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network8linkers_E)
  br label %bb.b

._crit_edge49:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph48, %._crit_edge
  %.04146 = phi i32 [ 0, %.lr.ph48 ], [ %i.ao, %._crit_edge ] ; 5 uses
  %i.o = shl nuw i32 1, %.04146                   ; 5 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !73   ; 2 uses
  %i.q = sdiv i32 %i.p, %i.o                      ; 3 uses
  %i.r = shl i32 %i.q, %.04146
  %i.s = and i32 %i.q, 1
  %.not = icmp eq i32 %i.s, 0                     ; 2 uses
  %i.t = sub i32 0, %i.o
  %.040.p = select i1 %.not, i32 %i.o, i32 %i.t
  %.040 = add i32 %.040.p, %i.p                   ; 2 uses
  %.pn.v = select i1 %.not, i32 1, i32 -1
  %.pn = add nsw i32 %.pn.v, %i.q
  %.039 = shl i32 %.pn, %.04146
  %.not50 = icmp eq i32 %.04146, 31
  %.pre = sext i32 %i.r to i64                    ; 2 uses
  %.pre53 = sext i32 %.039 to i64                 ; 2 uses
  br i1 %.not50, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %5 = sext i32 %i.o to i64                       ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %2, i64 %.pre ; 2 uses
  %invariant.gep56 = getelementptr [4 x i8], ptr %2, i64 %.pre53 ; 2 uses
  %6 = tail call i64 @llvm.smax.i64(i64 %5, i64 1) ; 2 uses
  %min.iters.check = icmp slt i32 %i.o, 8
  br i1 %min.iters.check, label %.lr.ph.preheader67, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %6, 2147483640                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.aa, %vector.body ]
  %vec.phi59 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ab, %vector.body ]
  %vec.phi60 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %vec.phi61 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.x, %vector.body ]
  %i.u = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %wide.load = load <4 x i32>, ptr %i.u, align 4, !tbaa !73
  %wide.load62 = load <4 x i32>, ptr %i.v, align 4, !tbaa !73
  %i.w = add <4 x i32> %wide.load, %vec.phi60     ; 2 uses
  %i.x = add <4 x i32> %wide.load62, %vec.phi61   ; 2 uses
  %i.y = getelementptr [4 x i8], ptr %invariant.gep56, i64 %index ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %wide.load63 = load <4 x i32>, ptr %i.y, align 4, !tbaa !73
  %wide.load64 = load <4 x i32>, ptr %i.z, align 4, !tbaa !73
  %i.aa = add <4 x i32> %wide.load63, %vec.phi    ; 2 uses
  %i.ab = add <4 x i32> %wide.load64, %vec.phi59  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !146

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ab, %i.aa
  %i.ad = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx65 = add <4 x i32> %i.x, %i.w
  %i.ae = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx65) ; 2 uses
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader67

.lr.ph.preheader67:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.03743.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ad, %middle.block ]
  %.03842.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.3

._crit_edge:                                      ; preds = %.lr.ph.3, %middle.block, %bb.b
  %.038.lcssa = phi i32 [ 0, %bb.b ], [ %i.ae, %middle.block ], [ %i.as, %.lr.ph.3 ]
  %.037.lcssa = phi i32 [ 0, %bb.b ], [ %i.ad, %middle.block ], [ %i.au, %.lr.ph.3 ]
  tail call void @_ZTHN8LightGBM7Network8linkers_E()
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !9
  %i.ag = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !73
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %3, i64 %i.ai
  %i.ak = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre53
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !73
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %3, i64 %i.am
  tail call void @_ZN8LightGBM7Linkers8SendRecvEiPciiS1_i(ptr noundef nonnull align 8 dereferenceable(304) %i.af, i32 noundef %.040, ptr noundef %i.aj, i32 noundef %.038.lcssa, i32 noundef %.040, ptr noundef %i.an, i32 noundef %.037.lcssa)
  %i.ao = add nuw nsw i32 %.04146, 1              ; 2 uses
  tail call void @_ZTHN8LightGBM7Network10bruck_map_E()
  %i.ap = load i32, ptr %i.k, align 8, !tbaa !75
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.b, label %._crit_edge49, !llvm.loop !143

.lr.ph.3:                                         ; preds = %.lr.ph.preheader67, %.lr.ph.3
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.3 ], [ %indvars.iv.ph, %.lr.ph.preheader67 ] ; 3 uses
  %.03743 = phi i32 [ %i.au, %.lr.ph.3 ], [ %.03743.ph, %.lr.ph.preheader67 ]
  %.03842 = phi i32 [ %i.as, %.lr.ph.3 ], [ %.03842.ph, %.lr.ph.preheader67 ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ar = load i32, ptr %gep, align 4, !tbaa !73
  %i.as = add nsw i32 %i.ar, %.03842              ; 2 uses
  %gep57 = getelementptr [4 x i8], ptr %invariant.gep56, i64 %indvars.iv
  %i.at = load i32, ptr %gep57, align 4, !tbaa !73
  %i.au = add nsw i32 %i.at, %.03743              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %7 = icmp slt i64 %indvars.iv.next, %5
  br i1 %7, label %.lr.ph.3, label %._crit_edge, !llvm.loop !147
}

; Function Attrs: uwtable
define void @_ZN8LightGBM7Network14AllgatherBruckEPcPKiS3_S1_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E) ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !73
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %2, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !73
  %i.f = sext i32 %i.e to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %0, i64 %i.f, i1 false)
  %i.g = load i32, ptr %i.a, align 4, !tbaa !73
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %2, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !73
  tail call void @_ZTHN8LightGBM7Network10bruck_map_E()
  %i.k = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network10bruck_map_E) ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !75
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
  %i.u = load i8, ptr %.0913.i.i, align 1, !tbaa !82
  %i.v = load i8, ptr %.014.i.i, align 1, !tbaa !82
  store i8 %i.v, ptr %.0913.i.i, align 1, !tbaa !82
  store i8 %i.u, ptr %.014.i.i, align 1, !tbaa !82
  %i.w = getelementptr inbounds nuw i8, ptr %.0913.i.i, i64 1 ; 2 uses
  %.0.i.i = getelementptr inbounds i8, ptr %.014.i.i, i64 -1 ; 2 uses
  %i.x = icmp ult ptr %i.w, %.0.i.i
  br i1 %i.x, label %.lr.ph.i.i, label %_ZSt7reverseIPcEvT_S1_.exit, !llvm.loop !148

_ZSt7reverseIPcEvT_S1_.exit:                      ; preds = %.lr.ph.i.i, %._crit_edge73
  %i.y = load i32, ptr %i.a, align 4, !tbaa !73
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %1, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !73 ; 3 uses
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
  %i.af = load i8, ptr %.0913.i.i51, align 1, !tbaa !82
  %i.ag = load i8, ptr %.014.i.i50, align 1, !tbaa !82
  store i8 %i.ag, ptr %.0913.i.i51, align 1, !tbaa !82
  store i8 %i.af, ptr %.014.i.i50, align 1, !tbaa !82
  %i.ah = getelementptr inbounds nuw i8, ptr %.0913.i.i51, i64 1 ; 2 uses
  %.0.i.i52 = getelementptr inbounds i8, ptr %.014.i.i50, i64 -1 ; 2 uses
  %i.ai = icmp ult ptr %i.ah, %.0.i.i52
  br i1 %i.ai, label %.lr.ph.i.i49, label %_ZSt7reverseIPcEvT_S1_.exit53.loopexit, !llvm.loop !148

_ZSt7reverseIPcEvT_S1_.exit53.loopexit:           ; preds = %.lr.ph.i.i49
  %.pre = load i32, ptr %i.a, align 4, !tbaa !73
  %.phi.trans.insert = sext i32 %.pre to i64
  %.phi.trans.insert76 = getelementptr inbounds [4 x i8], ptr %1, i64 %.phi.trans.insert
  %.pre77 = load i32, ptr %.phi.trans.insert76, align 4, !tbaa !73 ; 2 uses
  %.pre78 = sext i32 %.pre77 to i64
  br label %_ZSt7reverseIPcEvT_S1_.exit53

_ZSt7reverseIPcEvT_S1_.exit53:                    ; preds = %_ZSt7reverseIPcEvT_S1_.exit53.loopexit, %_ZSt7reverseIPcEvT_S1_.exit
  %.pre-phi79 = phi i64 [ %.pre78, %_ZSt7reverseIPcEvT_S1_.exit53.loopexit ], [ %i.ac, %_ZSt7reverseIPcEvT_S1_.exit ] ; 2 uses
  %i.aj = phi i32 [ %.pre77, %_ZSt7reverseIPcEvT_S1_.exit53.loopexit ], [ %i.ab, %_ZSt7reverseIPcEvT_S1_.exit ]
  %i.ak = icmp ne i32 %i.aj, %4
  %i.al = icmp sgt i64 %i.s, %.pre-phi79
  %or.cond.i.i55 = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond.i.i55, label %.lr.ph.i.i56.preheader, label %_ZSt7reverseIPcEvT_S1_.exit60

.lr.ph.i.i56.preheader:                           ; preds = %_ZSt7reverseIPcEvT_S1_.exit53
  %i.am = getelementptr inbounds i8, ptr %3, i64 %.pre-phi79
  br label %.lr.ph.i.i56

.lr.ph.i.i56:                                     ; preds = %.lr.ph.i.i56.preheader, %.lr.ph.i.i56
  %.014.i.i57 = phi ptr [ %.0.i.i59, %.lr.ph.i.i56 ], [ %.012.i.i, %.lr.ph.i.i56.preheader ] ; 3 uses
  %.0913.i.i58 = phi ptr [ %i.ap, %.lr.ph.i.i56 ], [ %i.am, %.lr.ph.i.i56.preheader ] ; 3 uses
  %i.an = load i8, ptr %.0913.i.i58, align 1, !tbaa !82
  %i.ao = load i8, ptr %.014.i.i57, align 1, !tbaa !82
  store i8 %i.ao, ptr %.0913.i.i58, align 1, !tbaa !82
  store i8 %i.an, ptr %.014.i.i57, align 1, !tbaa !82
  %i.ap = getelementptr inbounds nuw i8, ptr %.0913.i.i58, i64 1 ; 2 uses
  %.0.i.i59 = getelementptr inbounds i8, ptr %.014.i.i57, i64 -1 ; 2 uses
  %i.aq = icmp ult ptr %i.ap, %.0.i.i59
  br i1 %i.aq, label %.lr.ph.i.i56, label %_ZSt7reverseIPcEvT_S1_.exit60, !llvm.loop !148

_ZSt7reverseIPcEvT_S1_.exit60:                    ; preds = %.lr.ph.i.i56, %_ZSt7reverseIPcEvT_S1_.exit53
  ret void

bb.b:                                             ; preds = %.lr.ph72, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next, %._crit_edge ] ; 4 uses
  %.04469 = phi i32 [ 1, %.lr.ph72 ], [ %i.bi, %._crit_edge ] ; 3 uses
  %.04568 = phi i32 [ %i.j, %.lr.ph72 ], [ %i.bh, %._crit_edge ] ; 2 uses
  %i.ar = trunc nuw nsw i64 %indvars.iv to i32
  %i.as = shl nuw i32 1, %i.ar
  %i.at = load i32, ptr %i.n, align 4, !tbaa !73
  %i.au = sub i32 %i.at, %.04469
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %i.as) ; 3 uses
  tail call void @_ZTHN8LightGBM7Network10bruck_map_E()
  %i.av = load ptr, ptr %i.o, align 8, !tbaa !12
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !73
  tail call void @_ZTHN8LightGBM7Network10bruck_map_E()
  %i.ay = load ptr, ptr %i.p, align 8, !tbaa !12
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !73
  %i.bb = icmp sgt i32 %.sroa.speculated, 0
  br i1 %i.bb, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.bc = load i32, ptr %i.a, align 4, !tbaa !73  ; 2 uses
  %i.bd = load i32, ptr %i.n, align 4, !tbaa !73  ; 2 uses
  %invariant.op = add i32 %.04469, %i.bc
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.042.lcssa = phi i32 [ 0, %bb.b ], [ %i.br, %bb.c ]
  %.041.lcssa = phi i32 [ 0, %bb.b ], [ %i.bw, %bb.c ] ; 2 uses
  tail call void @_ZTHN8LightGBM7Network8linkers_E()
  %i.be = load ptr, ptr %i.q, align 8, !tbaa !9
  %i.bf = sext i32 %.04568 to i64
  %i.bg = getelementptr inbounds i8, ptr %3, i64 %i.bf
  tail call void @_ZN8LightGBM7Linkers8SendRecvEiPciiS1_i(ptr noundef nonnull align 8 dereferenceable(304) %i.be, i32 noundef %i.ax, ptr noundef %3, i32 noundef %.042.lcssa, i32 noundef %i.ba, ptr noundef %i.bg, i32 noundef %.041.lcssa)
  %i.bh = add nsw i32 %.041.lcssa, %.04568
  %i.bi = add nsw i32 %.sroa.speculated, %.04469
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  tail call void @_ZTHN8LightGBM7Network10bruck_map_E()
  %i.bj = load i32, ptr %i.k, align 8, !tbaa !75
  %i.bk = sext i32 %i.bj to i64
  %i.bl = icmp slt i64 %indvars.iv.next, %i.bk
  br i1 %i.bl, label %bb.b, label %._crit_edge73, !llvm.loop !149

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.066 = phi i32 [ 0, %.lr.ph ], [ %i.bx, %bb.c ] ; 3 uses
  %.04165 = phi i32 [ 0, %.lr.ph ], [ %i.bw, %bb.c ]
  %.04264 = phi i32 [ 0, %.lr.ph ], [ %i.br, %bb.c ]
  %i.bm = add nsw i32 %i.bc, %.066
  %i.bn = srem i32 %i.bm, %i.bd
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !73
  %i.br = add nsw i32 %i.bq, %.04264              ; 2 uses
  %.reass = add i32 %.066, %invariant.op
  %i.bs = srem i32 %.reass, %i.bd
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !73
  %i.bw = add nsw i32 %i.bv, %.04165              ; 2 uses
  %i.bx = add nuw nsw i32 %.066, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bx, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !150
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8LightGBM7Linkers8SendRecvEiPciiS1_i(ptr noundef nonnull align 8 dereferenceable(304) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::unique_ptr.56", align 8 ; 6 uses
  %8 = alloca %"class.std::thread", align 8       ; 8 uses
  %i.a = tail call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #1
  %i.b = icmp slt i32 %3, 100000
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %3, 1
  br i1 %i.c, label %_ZNK8LightGBM7Linkers4SendEiPci.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.e = sext i32 %1 to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i, %.preheader.i
  %.010.i = phi i32 [ 0, %.preheader.i ], [ %i.t, %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i ] ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !151
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !152
  %i.i = sext i32 %.010.i to i64
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  %i.k = sub nsw i32 %3, %.010.i
  %i.l = load i32, ptr %i.h, align 4, !tbaa !153
  %i.m = zext nneg i32 %i.k to i64
  %i.n = tail call i64 @send(i32 noundef %i.l, ptr noundef %i.j, i64 noundef %i.m, i32 noundef 0)
  %i.o = trunc i64 %i.n to i32                    ; 2 uses
  %i.p = icmp eq i32 %i.o, -1
  br i1 %i.p, label %bb.d, label %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i

bb.d:                                             ; preds = %bb.c
  %i.q = tail call ptr @__errno_location() #32
  %i.r = load i32, ptr %i.q, align 4, !tbaa !73   ; 2 uses
  %i.s = tail call ptr @strerror(i32 noundef %i.r) #1
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.15, ptr noundef %i.s, i32 noundef %i.r)
  br label %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i

_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i:         ; preds = %bb.d, %bb.c
  %i.t = add nsw i32 %.010.i, %i.o                ; 2 uses
  %i.u = icmp slt i32 %i.t, %3
  br i1 %i.u, label %bb.c, label %_ZNK8LightGBM7Linkers4SendEiPci.exit, !llvm.loop !155

_ZNK8LightGBM7Linkers4SendEiPci.exit:             ; preds = %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i, %bb.b
  %i.v = icmp sgt i32 %6, 0
  br i1 %i.v, label %.lr.ph.i, label %_ZNK8LightGBM7Linkers4RecvEiPci.exit

.lr.ph.i:                                         ; preds = %_ZNK8LightGBM7Linkers4SendEiPci.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.x = sext i32 %4 to i64
  br label %bb.e

bb.e:                                             ; preds = %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i, %.lr.ph.i
  %.010.i15 = phi i32 [ 0, %.lr.ph.i ], [ %i.am, %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i ] ; 3 uses
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !151
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !152
  %i.ab = sext i32 %.010.i15 to i64
  %i.ac = getelementptr inbounds i8, ptr %5, i64 %i.ab
  %i.ad = sub nsw i32 %6, %.010.i15
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 100000)
  %i.ae = load i32, ptr %i.aa, align 4, !tbaa !153
  %i.af = zext nneg i32 %.sroa.speculated.i to i64
  %i.ag = tail call i64 @recv(i32 noundef %i.ae, ptr noundef %i.ac, i64 noundef %i.af, i32 noundef 0)
  %i.ah = trunc i64 %i.ag to i32                  ; 2 uses
  %i.ai = icmp eq i32 %i.ah, -1
  br i1 %i.ai, label %bb.f, label %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i

bb.f:                                             ; preds = %bb.e
  %i.aj = tail call ptr @__errno_location() #32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !73 ; 2 uses
  %i.al = tail call ptr @strerror(i32 noundef %i.ak) #1
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.16, ptr noundef %i.al, i32 noundef %i.ak)
  br label %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i

_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i:          ; preds = %bb.f, %bb.e
  %i.am = add nsw i32 %.010.i15, %i.ah            ; 2 uses
  %i.an = icmp slt i32 %i.am, %6
  br i1 %i.an, label %bb.e, label %_ZNK8LightGBM7Linkers4RecvEiPci.exit, !llvm.loop !156

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #1
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 0, ptr %8, align 8, !tbaa !157
  %i.ao = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN8LightGBM7Linkers8SendRecvEiPciiS5_iEUlvE_EEEEEE, i64 16), ptr %i.ao, align 8, !tbaa !159
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %0, ptr %i.ap, align 8, !tbaa !9
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i32 %1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !73
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %2, ptr %.sroa.529.0..sroa_idx, align 8, !tbaa !93
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store i32 %3, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !73
  store ptr %i.ao, ptr %7, align 8, !tbaa !161
  invoke void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr nofree noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @_ZNSt6thread24_M_thread_deps_never_runEv)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %7, align 8, !tbaa !161   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZNSt6threadC2IZN8LightGBM7Linkers8SendRecvEiPciiS3_iEUlvE_JEvEEOT_DpOT0_.exit, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i: ; preds = %bb.h
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !159
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aq) #1, !inline_history !163
  br label %_ZNSt6threadC2IZN8LightGBM7Linkers8SendRecvEiPciiS3_iEUlvE_JEvEEOT_DpOT0_.exit

bb.i:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %7, align 8, !tbaa !161   ; 3 uses
  %.not.i5.i = icmp eq ptr %i.av, null
  br i1 %.not.i5.i, label %common.resume, label %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i

_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i: ; preds = %bb.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !159
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.av) #1, !inline_history !163
  br label %common.resume

common.resume:                                    ; preds = %bb.i, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i, %_ZNSt6threadD2Ev.exit24
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %_ZNSt6threadD2Ev.exit24 ], [ %i.au, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i6.i ], [ %i.au, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6threadC2IZN8LightGBM7Linkers8SendRecvEiPciiS3_iEUlvE_JEvEEOT_DpOT0_.exit: ; preds = %bb.h, %_ZNKSt14default_deleteINSt6thread6_StateEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.az = icmp sgt i32 %6, 0
  br i1 %i.az, label %.lr.ph.i16, label %_ZNK8LightGBM7Linkers4RecvEiPci.exit21

.lr.ph.i16:                                       ; preds = %_ZNSt6threadC2IZN8LightGBM7Linkers8SendRecvEiPciiS3_iEUlvE_JEvEEOT_DpOT0_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bb = sext i32 %4 to i64
  br label %bb.j

bb.j:                                             ; preds = %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i19, %.lr.ph.i16
  %.010.i17 = phi i32 [ 0, %.lr.ph.i16 ], [ %i.bq, %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i19 ] ; 3 uses
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !151
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bb
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !152
  %i.bf = sext i32 %.010.i17 to i64
  %i.bg = getelementptr inbounds i8, ptr %5, i64 %i.bf
  %i.bh = sub nsw i32 %6, %.010.i17
  %.sroa.speculated.i18 = call i32 @llvm.smin.i32(i32 %i.bh, i32 100000)
  %i.bi = load i32, ptr %i.be, align 4, !tbaa !153
  %i.bj = zext nneg i32 %.sroa.speculated.i18 to i64
  %i.bk = invoke i64 @recv(i32 noundef %i.bi, ptr noundef %i.bg, i64 noundef %i.bj, i32 noundef 0)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.j
  %i.bl = trunc i64 %i.bk to i32                  ; 2 uses
  %i.bm = icmp eq i32 %i.bl, -1
  br i1 %i.bm, label %bb.k, label %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i19

bb.k:                                             ; preds = %.noexc
  %i.bn = tail call ptr @__errno_location() #32
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !73 ; 2 uses
  %i.bp = call ptr @strerror(i32 noundef %i.bo) #1
  invoke void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.16, ptr noundef %i.bp, i32 noundef %i.bo)
          to label %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i19 unwind label %.loopexit

_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i19:        ; preds = %bb.k, %.noexc
  %i.bq = add nsw i32 %.010.i17, %i.bl            ; 2 uses
  %i.br = icmp slt i32 %i.bq, %6
  br i1 %i.br, label %bb.j, label %_ZNK8LightGBM7Linkers4RecvEiPci.exit21, !llvm.loop !156

_ZNK8LightGBM7Linkers4RecvEiPci.exit21:           ; preds = %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i19, %_ZNSt6threadC2IZN8LightGBM7Linkers8SendRecvEiPciiS3_iEUlvE_JEvEEOT_DpOT0_.exit
  invoke void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.l unwind label %.loopexit.split-lp

bb.l:                                             ; preds = %_ZNK8LightGBM7Linkers4RecvEiPci.exit21
  %.sroa.0.0.copyload.i.i = load i64, ptr %8, align 8, !tbaa !81
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZNSt6threadD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZSt9terminatev() #28
  unreachable

_ZNSt6threadD2Ev.exit:                            ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #1
  br label %_ZNK8LightGBM7Linkers4RecvEiPci.exit

.loopexit:                                        ; preds = %bb.j, %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.loopexit.split-lp:                               ; preds = %_ZNK8LightGBM7Linkers4RecvEiPci.exit21
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.sroa.0.0.copyload.i.i22 = load i64, ptr %8, align 8, !tbaa !81
  %.not.i23 = icmp eq i64 %.sroa.0.0.copyload.i.i22, 0
  br i1 %.not.i23, label %_ZNSt6threadD2Ev.exit24, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZSt9terminatev() #28
  unreachable

_ZNSt6threadD2Ev.exit24:                          ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #1
  br label %common.resume

_ZNK8LightGBM7Linkers4RecvEiPci.exit:             ; preds = %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i, %_ZNK8LightGBM7Linkers4SendEiPci.exit, %_ZNSt6threadD2Ev.exit
  %i.bs = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #1
  %i.bt = sub nsw i64 %i.bs, %i.a
  %i.bu = sitofp i64 %i.bt to double
  %i.bv = fdiv double %i.bu, 1.000000e+06
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !164
  %i.by = fadd double %i.bx, %i.bv
  store double %i.by, ptr %i.bw, align 8, !tbaa !164
  ret void
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212system_clock3nowEv() local_unnamed_addr #5

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

declare i64 @send(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #21

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

declare void @_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE(ptr noundef nonnull align 8 dereferenceable(8), ptr nofree noundef align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread24_M_thread_deps_never_runEv() #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN8LightGBM7Linkers8SendRecvEiPciiS5_iEUlvE_EEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZNSt6thread6_StateD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #1
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZN8LightGBM7Linkers8SendRecvEiPciiS5_iEUlvE_EEEEE6_M_runEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !167  ; 3 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %_ZNSt6thread8_InvokerISt5tupleIJZN8LightGBM7Linkers8SendRecvEiPciiS4_iEUlvE_EEEclEv.exit, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !168
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !169
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 272
  %i.k = sext i32 %i.h to i64
  br label %bb.b

bb.b:                                             ; preds = %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i32 [ 0, %.preheader.i.i.i.i.i.i ], [ %i.z, %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i.i.i.i.i.i ] ; 3 uses
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !151
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.k
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !152
  %i.o = sext i32 %.010.i.i.i.i.i.i to i64
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 %i.o
  %i.q = sub nsw i32 %i.d, %.010.i.i.i.i.i.i
  %i.r = load i32, ptr %i.n, align 4, !tbaa !153
  %i.s = zext nneg i32 %i.q to i64
  %i.t = tail call i64 @send(i32 noundef %i.r, ptr noundef %i.p, i64 noundef %i.s, i32 noundef 0)
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.c, label %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.w = tail call ptr @__errno_location() #32
  %i.x = load i32, ptr %i.w, align 4, !tbaa !73   ; 2 uses
  %i.y = tail call ptr @strerror(i32 noundef %i.x) #1
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.15, ptr noundef %i.y, i32 noundef %i.x)
  br label %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i.i.i.i.i.i

_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.z = add nsw i32 %.010.i.i.i.i.i.i, %i.u      ; 2 uses
  %i.aa = icmp slt i32 %i.z, %i.d
  br i1 %i.aa, label %bb.b, label %_ZNSt6thread8_InvokerISt5tupleIJZN8LightGBM7Linkers8SendRecvEiPciiS4_iEUlvE_EEEclEv.exit, !llvm.loop !155

_ZNSt6thread8_InvokerISt5tupleIJZN8LightGBM7Linkers8SendRecvEiPciiS4_iEUlvE_EEEclEv.exit: ; preds = %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: uwtable
define void @_ZN8LightGBM7Network29ReduceScatterRecursiveHalvingEPciiPKiS3_S1_iRKPFvPKcS1_iiE(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, i32 %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) local_unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.a = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network22recursive_halving_map_E) ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !134, !range !135, !noundef !136
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZNK8LightGBM7Linkers4SendEiPci.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !170
  %i.g = icmp eq i32 %i.f, 2
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @_ZTHN8LightGBM7Network8linkers_E()
  %i.h = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network8linkers_E)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.j = icmp slt i32 %1, 1
  br i1 %i.j, label %_ZNK8LightGBM7Linkers4SendEiPci.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !171
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 272
  %i.n = sext i32 %i.l to i64
  br label %bb.d

bb.d:                                             ; preds = %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i, %.preheader.i
  %.010.i = phi i32 [ 0, %.preheader.i ], [ %i.ac, %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i ] ; 3 uses
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !151
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !152
  %i.r = sext i32 %.010.i to i64
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r
  %i.t = sub nsw i32 %1, %.010.i
  %i.u = load i32, ptr %i.q, align 4, !tbaa !153
  %i.v = zext nneg i32 %i.t to i64
  %i.w = tail call i64 @send(i32 noundef %i.u, ptr noundef %i.s, i64 noundef %i.v, i32 noundef 0)
  %i.x = trunc i64 %i.w to i32                    ; 2 uses
  %i.y = icmp eq i32 %i.x, -1
  br i1 %i.y, label %bb.e, label %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i

bb.e:                                             ; preds = %bb.d
  %i.z = tail call ptr @__errno_location() #32
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !73  ; 2 uses
  %i.ab = tail call ptr @strerror(i32 noundef %i.aa) #1
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.15, ptr noundef %i.ab, i32 noundef %i.aa)
  br label %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i

_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i:         ; preds = %bb.e, %bb.d
  %i.ac = add nsw i32 %.010.i, %i.x               ; 2 uses
  %i.ad = icmp slt i32 %i.ac, %1
  br i1 %i.ad, label %bb.d, label %_ZNK8LightGBM7Linkers4SendEiPci.exit, !llvm.loop !155

bb.f:                                             ; preds = %bb.b
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.ae = load i32, ptr %i.e, align 4, !tbaa !170
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.g, label %_ZNK8LightGBM7Linkers4SendEiPci.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZTHN8LightGBM7Network8linkers_E()
  %i.ag = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network8linkers_E)
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !9
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.ai = icmp sgt i32 %1, 0
  br i1 %i.ai, label %.lr.ph.i, label %_ZNK8LightGBM7Linkers4RecvEiPci.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !171
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 272
  %i.am = sext i32 %i.ak to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i, %.lr.ph.i
  %.010.i57 = phi i32 [ 0, %.lr.ph.i ], [ %i.bb, %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i ] ; 3 uses
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !151
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.am
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !152
  %i.aq = sext i32 %.010.i57 to i64
  %i.ar = getelementptr inbounds i8, ptr %5, i64 %i.aq
  %i.as = sub nsw i32 %1, %.010.i57
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %i.as, i32 100000)
  %i.at = load i32, ptr %i.ap, align 4, !tbaa !153
  %i.au = zext nneg i32 %.sroa.speculated.i to i64
  %i.av = tail call i64 @recv(i32 noundef %i.at, ptr noundef %i.ar, i64 noundef %i.au, i32 noundef 0)
  %i.aw = trunc i64 %i.av to i32                  ; 2 uses
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %bb.i, label %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i

bb.i:                                             ; preds = %bb.h
  %i.ay = tail call ptr @__errno_location() #32
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !73 ; 2 uses
  %i.ba = tail call ptr @strerror(i32 noundef %i.az) #1
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.16, ptr noundef %i.ba, i32 noundef %i.az)
  br label %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i

_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i:          ; preds = %bb.i, %bb.h
  %i.bb = add nsw i32 %.010.i57, %i.aw            ; 2 uses
  %i.bc = icmp slt i32 %i.bb, %1
  br i1 %i.bc, label %bb.h, label %_ZNK8LightGBM7Linkers4RecvEiPci.exit, !llvm.loop !156

_ZNK8LightGBM7Linkers4RecvEiPci.exit:             ; preds = %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i, %bb.g
  %i.bd = load ptr, ptr %7, align 8, !tbaa !123
  tail call void %i.bd(ptr noundef %5, ptr noundef %0, i32 noundef %2, i32 noundef %1)
  br label %_ZNK8LightGBM7Linkers4SendEiPci.exit

_ZNK8LightGBM7Linkers4SendEiPci.exit:             ; preds = %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i, %bb.c, %_ZNK8LightGBM7Linkers4RecvEiPci.exit, %bb.f, %bb.a
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !170
  %.not = icmp eq i32 %i.bf, 2
  br i1 %.not, label %.loopexit, label %.preheader67

.preheader67:                                     ; preds = %_ZNK8LightGBM7Linkers4SendEiPci.exit
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.bg = load i32, ptr %i.a, align 8, !tbaa !172
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph75, label %.loopexit

.lr.ph75:                                         ; preds = %.preheader67
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.bn = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network8linkers_E)
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph75, %._crit_edge
  %indvars.iv81 = phi i64 [ 0, %.lr.ph75 ], [ %indvars.iv.next82, %._crit_edge ] ; 8 uses
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.bo = load ptr, ptr %i.bi, align 8, !tbaa !12
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv81
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !73 ; 2 uses
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.br = load ptr, ptr %i.bj, align 8, !tbaa !12
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv81
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !73 ; 2 uses
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.bu = load ptr, ptr %i.bk, align 8, !tbaa !12
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv81
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !73
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.bx = load ptr, ptr %i.bl, align 8, !tbaa !12
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv81
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !73
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.cb = sext i32 %i.bt to i64
  %invariant.gep = getelementptr [4 x i8], ptr %4, i64 %i.cb
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.j
  %.056.lcssa = phi i32 [ 0, %bb.j ], [ %i.ci, %.lr.ph ]
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.cc = load ptr, ptr %i.bm, align 8, !tbaa !12
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv81
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !73
  %i.cf = icmp sgt i32 %i.ce, 0
  %i.cg = sext i32 %i.bw to i64                   ; 2 uses
  br i1 %i.cf, label %.lr.ph72.preheader, label %._crit_edge

.lr.ph72.preheader:                               ; preds = %.preheader
  %invariant.gep91 = getelementptr [4 x i8], ptr %4, i64 %i.cg
  br label %.lr.ph72

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.05668 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ci, %.lr.ph ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ch = load i32, ptr %gep, align 4, !tbaa !73
  %i.ci = add nsw i32 %i.ch, %.05668              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.cj = load ptr, ptr %i.bl, align 8, !tbaa !12
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv81
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !73
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp slt i64 %indvars.iv.next, %i.cm
  br i1 %i.cn, label %.lr.ph, label %.preheader, !llvm.loop !173

._crit_edge:                                      ; preds = %.lr.ph72, %.preheader
  %.054.lcssa = phi i32 [ 0, %.preheader ], [ %i.dd, %.lr.ph72 ] ; 2 uses
  tail call void @_ZTHN8LightGBM7Network8linkers_E()
  %i.co = load ptr, ptr %i.bn, align 8, !tbaa !9
  %i.cp = sext i32 %i.bt to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !73
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %0, i64 %i.cs
  tail call void @_ZN8LightGBM7Linkers8SendRecvEiPciiS1_i(ptr noundef nonnull align 8 dereferenceable(304) %i.co, i32 noundef %i.bq, ptr noundef %i.ct, i32 noundef %.056.lcssa, i32 noundef %i.bq, ptr noundef %5, i32 noundef %.054.lcssa)
  %i.cu = load ptr, ptr %7, align 8, !tbaa !123
  %i.cv = getelementptr inbounds [4 x i8], ptr %3, i64 %i.cg
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !73
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %0, i64 %i.cx
  tail call void %i.cu(ptr noundef %5, ptr noundef %i.cy, i32 noundef %2, i32 noundef %.054.lcssa)
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.cz = load i32, ptr %i.a, align 8, !tbaa !172
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next82, %i.da
  br i1 %i.db, label %bb.j, label %.loopexit, !llvm.loop !174

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %.lr.ph72
  %indvars.iv78 = phi i64 [ 0, %.lr.ph72.preheader ], [ %indvars.iv.next79, %.lr.ph72 ] ; 2 uses
  %.05470 = phi i32 [ 0, %.lr.ph72.preheader ], [ %i.dd, %.lr.ph72 ]
  %gep92 = getelementptr [4 x i8], ptr %invariant.gep91, i64 %indvars.iv78
  %i.dc = load i32, ptr %gep92, align 4, !tbaa !73
  %i.dd = add nsw i32 %i.dc, %.05470              ; 2 uses
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.de = load ptr, ptr %i.bm, align 8, !tbaa !12
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv81
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !73
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp slt i64 %indvars.iv.next79, %i.dh
  br i1 %i.di, label %.lr.ph72, label %._crit_edge, !llvm.loop !175

.loopexit:                                        ; preds = %._crit_edge, %.preheader67, %_ZNK8LightGBM7Linkers4SendEiPci.exit
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.dj = load i8, ptr %i.b, align 8, !tbaa !134, !range !135, !noundef !136
  %i.dk = trunc nuw i8 %i.dj to i1
  br i1 %i.dk, label %_ZNK8LightGBM7Linkers4SendEiPci.exit61, label %bb.k

bb.k:                                             ; preds = %.loopexit
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.dl = load i32, ptr %i.be, align 4, !tbaa !170
  %i.dm = icmp eq i32 %i.dl, 1
  br i1 %i.dm, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  tail call void @_ZTHN8LightGBM7Network8linkers_E()
  %i.dn = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network8linkers_E)
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !9
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !171
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !171
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !73
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr %0, i64 %i.dv
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.dx = load i32, ptr %i.dp, align 4, !tbaa !171
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %4, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !73 ; 3 uses
  %i.eb = icmp slt i32 %i.ea, 1
  br i1 %i.eb, label %_ZNK8LightGBM7Linkers4SendEiPci.exit61, label %.preheader.i58

.preheader.i58:                                   ; preds = %bb.l
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 272
  %i.ed = sext i32 %i.dq to i64
  br label %bb.m

bb.m:                                             ; preds = %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i60, %.preheader.i58
  %.010.i59 = phi i32 [ 0, %.preheader.i58 ], [ %i.es, %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i60 ] ; 3 uses
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !151
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ed
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !152
  %i.eh = sext i32 %.010.i59 to i64
  %i.ei = getelementptr inbounds i8, ptr %i.dw, i64 %i.eh
  %i.ej = sub nsw i32 %i.ea, %.010.i59
  %i.ek = load i32, ptr %i.eg, align 4, !tbaa !153
  %i.el = zext nneg i32 %i.ej to i64
  %i.em = tail call i64 @send(i32 noundef %i.ek, ptr noundef %i.ei, i64 noundef %i.el, i32 noundef 0)
  %i.en = trunc i64 %i.em to i32                  ; 2 uses
  %i.eo = icmp eq i32 %i.en, -1
  br i1 %i.eo, label %bb.n, label %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i60

bb.n:                                             ; preds = %bb.m
  %i.ep = tail call ptr @__errno_location() #32
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !73 ; 2 uses
  %i.er = tail call ptr @strerror(i32 noundef %i.eq) #1
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.15, ptr noundef %i.er, i32 noundef %i.eq)
  br label %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i60

_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i60:       ; preds = %bb.n, %bb.m
  %i.es = add nsw i32 %.010.i59, %i.en            ; 2 uses
  %i.et = icmp slt i32 %i.es, %i.ea
  br i1 %i.et, label %bb.m, label %_ZNK8LightGBM7Linkers4SendEiPci.exit61, !llvm.loop !155

bb.o:                                             ; preds = %bb.k
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.eu = load i32, ptr %i.be, align 4, !tbaa !170
  %i.ev = icmp eq i32 %i.eu, 2
  br i1 %i.ev, label %bb.p, label %_ZNK8LightGBM7Linkers4SendEiPci.exit61

bb.p:                                             ; preds = %bb.o
  %i.ew = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E)
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !73
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !73 ; 3 uses
  tail call void @_ZTHN8LightGBM7Network8linkers_E()
  %i.fb = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network8linkers_E)
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !9
  tail call void @_ZTHN8LightGBM7Network22recursive_halving_map_E()
  %i.fd = icmp sgt i32 %i.fa, 0
  br i1 %i.fd, label %.lr.ph.i62, label %_ZNK8LightGBM7Linkers4RecvEiPci.exit66

.lr.ph.i62:                                       ; preds = %bb.p
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !171
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 272
  %i.fh = sext i32 %i.ff to i64
  br label %bb.q

bb.q:                                             ; preds = %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i65, %.lr.ph.i62
  %.010.i63 = phi i32 [ 0, %.lr.ph.i62 ], [ %i.fw, %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i65 ] ; 3 uses
  %i.fi = load ptr, ptr %i.fg, align 8, !tbaa !151
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fh
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !152
  %i.fl = sext i32 %.010.i63 to i64
  %i.fm = getelementptr inbounds i8, ptr %5, i64 %i.fl
  %i.fn = sub nsw i32 %i.fa, %.010.i63
  %.sroa.speculated.i64 = tail call i32 @llvm.smin.i32(i32 %i.fn, i32 100000)
  %i.fo = load i32, ptr %i.fk, align 4, !tbaa !153
  %i.fp = zext nneg i32 %.sroa.speculated.i64 to i64
  %i.fq = tail call i64 @recv(i32 noundef %i.fo, ptr noundef %i.fm, i64 noundef %i.fp, i32 noundef 0)
  %i.fr = trunc i64 %i.fq to i32                  ; 2 uses
  %i.fs = icmp eq i32 %i.fr, -1
  br i1 %i.fs, label %bb.r, label %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i65

bb.r:                                             ; preds = %bb.q
  %i.ft = tail call ptr @__errno_location() #32
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !73 ; 2 uses
  %i.fv = tail call ptr @strerror(i32 noundef %i.fu) #1
  tail call void (ptr, ...) @_ZN8LightGBM3Log5FatalEPKcz(ptr noundef nonnull @.str.16, ptr noundef %i.fv, i32 noundef %i.fu)
  br label %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i65

_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i65:        ; preds = %bb.r, %bb.q
  %i.fw = add nsw i32 %.010.i63, %i.fr            ; 2 uses
  %i.fx = icmp slt i32 %i.fw, %i.fa
  br i1 %i.fx, label %bb.q, label %_ZNK8LightGBM7Linkers4RecvEiPci.exit66, !llvm.loop !156

_ZNK8LightGBM7Linkers4SendEiPci.exit61:           ; preds = %_ZN8LightGBM9TcpSocket4SendEPKcii.exit.i60, %bb.l, %bb.o, %.loopexit
  %i.fy = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E)
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !73
  %i.ga = sext i32 %i.fz to i64                   ; 2 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !73
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds i8, ptr %0, i64 %i.gd
  %i.gf = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ga
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !73
  %i.gh = sext i32 %i.gg to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %i.ge, i64 %i.gh, i1 false)
  br label %_ZNK8LightGBM7Linkers4RecvEiPci.exit66

_ZNK8LightGBM7Linkers4RecvEiPci.exit66:           ; preds = %_ZN8LightGBM9TcpSocket4RecvEPcii.exit.i65, %bb.p, %_ZNK8LightGBM7Linkers4SendEiPci.exit61
  ret void
}

; Function Attrs: uwtable
define void @_ZN8LightGBM7Network17ReduceScatterRingEPciiPKiS3_S1_iRKPFvPKcS1_iiE(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, i32 noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E) ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !73   ; 3 uses
  %i.c = add nsw i32 %i.b, 1
  %i.d = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network13num_machines_E) ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !73   ; 5 uses
  %i.f = srem i32 %i.c, %i.e
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = add i32 %i.g, %i.b
  %i.i = srem i32 %i.h, %i.e                      ; 3 uses
  %i.j = icmp sgt i32 %i.e, 1
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = add i32 %i.g, %i.i
  %i.l = srem i32 %i.k, %i.e
  %i.m = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network8linkers_E)
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %.pre = load i32, ptr %i.a, align 4, !tbaa !73
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.n = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ]
  %i.o = sext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %3, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !73
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.r
  %i.t = getelementptr inbounds [4 x i8], ptr %4, i64 %i.o
  %i.u = load i32, ptr %i.t, align 4, !tbaa !73
  %i.v = sext i32 %i.u to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %i.s, i64 %i.v, i1 false)
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.031 = phi i32 [ 1, %.lr.ph ], [ %i.au, %bb.b ]
  %.02730 = phi i32 [ %i.l, %.lr.ph ], [ %i.at, %bb.b ] ; 2 uses
  %.02829 = phi i32 [ %i.i, %.lr.ph ], [ %i.aq, %bb.b ] ; 2 uses
  tail call void @_ZTHN8LightGBM7Network8linkers_E()
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.x = sext i32 %.02829 to i64                  ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %3, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !73
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %0, i64 %i.aa
  %i.ac = getelementptr inbounds [4 x i8], ptr %4, i64 %i.x
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !73
  %i.ae = sext i32 %.02730 to i64                 ; 2 uses
  %i.af = getelementptr inbounds [4 x i8], ptr %4, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !73
  tail call void @_ZN8LightGBM7Linkers8SendRecvEiPciiS1_i(ptr noundef nonnull align 8 dereferenceable(304) %i.w, i32 noundef %i.f, ptr noundef %i.ab, i32 noundef %i.ad, i32 noundef %i.i, ptr noundef %5, i32 noundef %i.ag)
  %i.ah = load ptr, ptr %7, align 8, !tbaa !123
  %i.ai = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ae
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !73
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %0, i64 %i.ak
  %i.am = load i32, ptr %i.af, align 4, !tbaa !73
  tail call void %i.ah(ptr noundef %5, ptr noundef %i.al, i32 noundef %2, i32 noundef %i.am)
  %i.an = add nsw i32 %.02829, -1
  %i.ao = load i32, ptr %i.d, align 4, !tbaa !73  ; 5 uses
  %i.ap = add nsw i32 %i.an, %i.ao
  %i.aq = srem i32 %i.ap, %i.ao
  %i.ar = add nsw i32 %.02730, -1
  %i.as = add nsw i32 %i.ar, %i.ao
  %i.at = srem i32 %i.as, %i.ao
  %i.au = add nuw nsw i32 %.031, 1                ; 2 uses
  %i.av = icmp slt i32 %i.au, %i.ao
  br i1 %i.av, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !138
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN8LightGBM7Network4rankEv() local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E)
  %i.b = load i32, ptr %i.a, align 4, !tbaa !73
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN8LightGBM7Network12num_machinesEv() local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network13num_machines_E)
  %i.b = load i32, ptr %i.a, align 4, !tbaa !73
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.17() #23 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define internal void @__tls_init() #7 {
bb.a:
  %i.a = load i8, ptr @__tls_guard, align 1
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c, !prof !176

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @__tls_guard, align 1
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @__tls_guard) ; 0 uses
  %i.d = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt10unique_ptrIN8LightGBM7LinkersESt14default_deleteIS1_EED2Ev, ptr nonnull @_ZN8LightGBM7Network8linkers_E, ptr nonnull @__dso_handle) #1 ; 0 uses
  tail call fastcc void @__cxx_global_var_init.2()
  tail call fastcc void @__cxx_global_var_init.3()
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN8LightGBM7Network12block_start_E, i8 0, i64 24, i1 false)
  %i.e = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIiSaIiEED2Ev, ptr nonnull @_ZN8LightGBM7Network12block_start_E, ptr nonnull @__dso_handle) #1 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN8LightGBM7Network10block_len_E, i8 0, i64 24, i1 false)
  %i.f = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIiSaIiEED2Ev, ptr nonnull @_ZN8LightGBM7Network10block_len_E, ptr nonnull @__dso_handle) #1 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN8LightGBM7Network7buffer_E, i8 0, i64 24, i1 false)
  %i.g = tail call i32 @__cxa_thread_atexit(ptr nonnull @_ZNSt6vectorIcSaIcEED2Ev, ptr nonnull @_ZN8LightGBM7Network7buffer_E, ptr nonnull @__dso_handle) #1 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: uwtable
define weak_odr hidden noundef ptr @_ZTWN8LightGBM7Network13num_machines_E() local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network13num_machines_E)
  ret ptr %i.a
}

; Function Attrs: uwtable
define weak_odr hidden noundef ptr @_ZTWN8LightGBM7Network5rank_E() local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network5rank_E)
  ret ptr %i.a
}

; Function Attrs: uwtable
define weak_odr hidden noundef ptr @_ZTWN8LightGBM7Network12buffer_size_E() local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZN8LightGBM7Network12buffer_size_E)
  ret ptr %i.a
}

; Function Attrs: uwtable
define weak_odr hidden noundef ptr @_ZTWN8LightGBM7Network23reduce_scatter_ext_fun_E() local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network23reduce_scatter_ext_fun_E)
  ret ptr %i.a
}

; Function Attrs: uwtable
define weak_odr hidden noundef ptr @_ZTWN8LightGBM7Network18allgather_ext_fun_E() local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN8LightGBM7Network18allgather_ext_fun_E)
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #26

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold noreturn }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nofree nounwind }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { noreturn }
attributes #31 = { cold nounwind }
attributes #32 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTSN8LightGBM7LinkersE", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!14 = !{!"p1 int", !11, i64 0}
!15 = !{!13, !14, i64 16}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!18 = !{!"p1 omnipotent char", !11, i64 0}
!19 = !{!17, !18, i64 16}
!20 = !{!21, !6, i64 1464}
!21 = !{!"_ZTSN8LightGBM6ConfigE", !22, i64 0, !25, i64 32, !22, i64 40, !22, i64 72, !22, i64 104, !22, i64 136, !26, i64 168, !6, i64 192, !31, i64 200, !6, i64 208, !22, i64 216, !6, i64 248, !22, i64 256, !6, i64 288, !32, i64 292, !32, i64 293, !32, i64 294, !31, i64 296, !6, i64 304, !6, i64 308, !31, i64 312, !31, i64 320, !31, i64 328, !31, i64 336, !6, i64 344, !6, i64 348, !32, i64 352, !31, i64 360, !31, i64 368, !6, i64 376, !32, i64 380, !6, i64 384, !6, i64 388, !31, i64 392, !32, i64 400, !31, i64 408, !31, i64 416, !31, i64 424, !31, i64 432, !31, i64 440, !31, i64 448, !6, i64 456, !31, i64 464, !32, i64 472, !32, i64 473, !6, i64 476, !31, i64 480, !31, i64 488, !6, i64 496, !6, i64 500, !31, i64 504, !31, i64 512, !6, i64 520, !6, i64 524, !33, i64 528, !22, i64 552, !31, i64 584, !37, i64 592, !22, i64 616, !31, i64 648, !31, i64 656, !31, i64 664, !37, i64 672, !37, i64 696, !31, i64 720, !22, i64 728, !6, i64 760, !22, i64 768, !22, i64 800, !6, i64 832, !6, i64 836, !32, i64 840, !6, i64 844, !32, i64 848, !32, i64 849, !32, i64 850, !6, i64 852, !42, i64 856, !6, i64 880, !6, i64 884, !6, i64 888, !32, i64 892, !32, i64 893, !32, i64 894, !32, i64 895, !32, i64 896, !32, i64 897, !32, i64 898, !32, i64 899, !22, i64 904, !22, i64 936, !22, i64 968, !22, i64 1000, !22, i64 1032, !22, i64 1064, !32, i64 1096, !32, i64 1097, !22, i64 1104, !6, i64 1136, !6, i64 1140, !32, i64 1144, !32, i64 1145, !32, i64 1146, !32, i64 1147, !32, i64 1148, !6, i64 1152, !31, i64 1160, !22, i64 1168, !22, i64 1200, !22, i64 1232, !6, i64 1264, !6, i64 1268, !32, i64 1272, !31, i64 1280, !31, i64 1288, !32, i64 1296, !32, i64 1297, !31, i64 1304, !31, i64 1312, !31, i64 1320, !31, i64 1328, !6, i64 1336, !32, i64 1340, !37, i64 1344, !31, i64 1368, !26, i64 1376, !6, i64 1400, !32, i64 1404, !42, i64 1408, !6, i64 1432, !37, i64 1440, !6, i64 1464, !6, i64 1468, !6, i64 1472, !22, i64 1480, !22, i64 1512, !6, i64 1544, !6, i64 1548, !22, i64 1552, !32, i64 1584, !6, i64 1588, !24, i64 1592, !32, i64 1600, !32, i64 1601, !45, i64 1608, !50, i64 1632}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !23, i64 0, !24, i64 8, !7, i64 16}
!23 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!24 = !{!"long", !7, i64 0}
!25 = !{!"_ZTSN8LightGBM8TaskTypeE", !7, i64 0}
!26 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !27, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !28, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!30 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!31 = !{!"double", !7, i64 0}
!32 = !{!"bool", !7, i64 0}
!33 = !{!"_ZTSSt6vectorIaSaIaEE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!37 = !{!"_ZTSSt6vectorIdSaIdEE", !38, i64 0}
!38 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !40, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!41 = !{!"p1 double", !11, i64 0}
!42 = !{!"_ZTSSt6vectorIiSaIiEE", !43, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !44, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !13, i64 0}
!45 = !{!"_ZTSSt6vectorIS_IdSaIdEESaIS1_EE", !46, i64 0}
!46 = !{!"_ZTSSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE", !47, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE17_Vector_impl_dataE", !49, i64 0, !49, i64 8, !49, i64 16}
!49 = !{!"p1 _ZTSSt6vectorIdSaIdEE", !11, i64 0}
!50 = !{!"_ZTSSt6vectorIS_IiSaIiEESaIS1_EE", !51, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implE", !53, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!54 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !11, i64 0}
!55 = !{!56, !6, i64 0}
!56 = !{!"_ZTSN8LightGBM7LinkersE", !6, i64 0, !6, i64 4, !57, i64 8, !58, i64 64, !60, i64 200, !32, i64 208, !26, i64 216, !42, i64 240, !6, i64 264, !6, i64 268, !61, i64 272, !66, i64 296}
!57 = !{!"_ZTSN8LightGBM8BruckMapE", !6, i64 0, !42, i64 8, !42, i64 32}
!58 = !{!"_ZTSN8LightGBM19RecursiveHalvingMapE", !6, i64 0, !59, i64 4, !32, i64 8, !6, i64 12, !42, i64 16, !42, i64 40, !42, i64 64, !42, i64 88, !42, i64 112}
!59 = !{!"_ZTSN8LightGBM24RecursiveHalvingNodeTypeE", !7, i64 0}
!60 = !{!"_ZTSNSt6chrono8durationIdSt5ratioILl1ELl1000EEEE", !31, i64 0}
!61 = !{!"_ZTSSt6vectorISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE", !62, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE", !63, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !64, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!65 = !{!"p1 _ZTSSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EE", !11, i64 0}
!66 = !{!"_ZTSSt10unique_ptrIN8LightGBM9TcpSocketESt14default_deleteIS1_EE", !67, i64 0}
!67 = !{!"_ZTSSt15__uniq_ptr_dataIN8LightGBM9TcpSocketESt14default_deleteIS1_ELb1ELb1EE", !68, i64 0}
!68 = !{!"_ZTSSt15__uniq_ptr_implIN8LightGBM9TcpSocketESt14default_deleteIS1_EE", !69, i64 0}
!69 = !{!"_ZTSSt5tupleIJPN8LightGBM9TcpSocketESt14default_deleteIS1_EEE", !70, i64 0}
!70 = !{!"_ZTSSt11_Tuple_implILm0EJPN8LightGBM9TcpSocketESt14default_deleteIS1_EEE", !71, i64 0}
!71 = !{!"_ZTSSt10_Head_baseILm0EPN8LightGBM9TcpSocketELb0EE", !72, i64 0}
!72 = !{!"p1 _ZTSN8LightGBM9TcpSocketE", !11, i64 0}
!73 = !{!6, !6, i64 0}
!74 = !{!56, !6, i64 4}
!75 = !{!57, !6, i64 0}
!76 = !{!13, !14, i64 8}
!77 = !{!17, !18, i64 8}
!78 = !{!23, !18, i64 0}
!79 = !{!22, !18, i64 0}
!80 = !{!22, !24, i64 8}
!81 = !{!24, !24, i64 0}
!82 = !{!7, !7, i64 0}
!83 = !{!21, !25, i64 32}
!84 = !{!29, !30, i64 8}
!85 = !{!29, !30, i64 0}
!86 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!87 = !{!29, !30, i64 16}
!88 = !{!30, !30, i64 0}
!89 = !{!21, !6, i64 248}
!90 = !{!36, !18, i64 8}
!91 = !{!36, !18, i64 0}
!92 = !{!36, !18, i64 16}
!93 = !{!18, !18, i64 0}
!94 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!95 = !{!21, !31, i64 584}
!96 = !{!40, !41, i64 8}
!97 = !{!40, !41, i64 0}
!98 = !{!40, !41, i64 16}
!99 = !{!41, !41, i64 0}
!100 = !{!31, !31, i64 0}
!101 = !{!21, !31, i64 720}
!102 = !{!21, !6, i64 760}
!103 = !{!14, !14, i64 0}
!104 = !{!21, !31, i64 1368}
!105 = !{!21, !6, i64 1432}
!106 = !{!48, !49, i64 8}
!107 = !{!48, !49, i64 0}
!108 = !{!48, !49, i64 16}
!109 = !{!49, !49, i64 0}
!110 = !{!53, !54, i64 8}
!111 = !{!53, !54, i64 0}
!112 = !{!53, !54, i64 16}
!113 = !{!54, !54, i64 0}
!114 = distinct !{!114, !115}
!115 = !{!"llvm.loop.mustprogress"}
!116 = distinct !{!116, !115}
!117 = distinct !{!117, !115}
!118 = distinct !{!118, !115}
!119 = distinct !{!119, !115}
!120 = distinct !{!120, !115}
!121 = !{!122, !122, i64 0}
!122 = !{!"_ZTSN8LightGBM8LogLevelE", !7, i64 0}
!123 = !{!11, !11, i64 0}
!124 = !{!125, !125, i64 0}
!125 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!126 = !{!127}
!127 = distinct !{!127, !128, !"vprintf: argument 0"}
!128 = distinct !{!128, !"vprintf"}
!129 = distinct !{null}
!130 = !{!56, !32, i64 208}
!131 = distinct !{!131, !115}
!132 = distinct !{!132, !115}
!133 = distinct !{!133, !115}
!134 = !{!58, !32, i64 8}
!135 = !{i8 0, i8 2}
!136 = !{}
!137 = !{ptr @_ZN8LightGBM7Network17ReduceScatterRingEPciiPKiS3_S1_iRKPFvPKcS1_iiE}
!138 = distinct !{!138, !115}
!139 = distinct !{!139, !115}
!140 = distinct !{!140, !115, !141, !142}
!141 = !{!"llvm.loop.isvectorized", i32 1}
!142 = !{!"llvm.loop.unroll.runtime.disable"}
!143 = distinct !{!143, !115}
!144 = distinct !{!144, !115, !142, !141}
!145 = distinct !{!145, !115}
!146 = distinct !{!146, !115, !141, !142}
!147 = distinct !{!147, !115, !142, !141}
!148 = distinct !{!148, !115}
!149 = distinct !{!149, !115}
!150 = distinct !{!150, !115}
!151 = !{!64, !65, i64 0}
!152 = !{!72, !72, i64 0}
!153 = !{!154, !6, i64 0}
!154 = !{!"_ZTSN8LightGBM9TcpSocketE", !6, i64 0}
!155 = distinct !{!155, !115}
!156 = distinct !{!156, !115}
!157 = !{!158, !24, i64 0}
!158 = !{!"_ZTSNSt6thread2idE", !24, i64 0}
!159 = !{!160, !160, i64 0}
!160 = !{!"vtable pointer", !8, i64 0}
!161 = !{!162, !162, i64 0}
!162 = !{!"p1 _ZTSNSt6thread6_StateE", !11, i64 0}
!163 = distinct !{null, null, null}
!164 = !{!60, !31, i64 0}
!165 = !{!166, !18, i64 16}
!166 = !{!"_ZTSZN8LightGBM7Linkers8SendRecvEiPciiS1_iEUlvE_", !10, i64 0, !6, i64 8, !18, i64 16, !6, i64 24}
!167 = !{!166, !6, i64 24}
!168 = !{!166, !6, i64 8}
!169 = !{!166, !10, i64 0}
!170 = !{!58, !59, i64 4}
!171 = !{!58, !6, i64 12}
!172 = !{!58, !6, i64 0}
!173 = distinct !{!173, !115}
!174 = distinct !{!174, !115}
!175 = distinct !{!175, !115}
!176 = !{!"branch_weights", i32 1, i32 1023}
end_hunk_0
