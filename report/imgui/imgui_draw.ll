Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_draw?download=true
inline.NumInlined: 1480
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 299
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 353
begin_hunk_0_@_ZN10ImDrawList17_ResetForNewFrameEv:bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !91
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, i8 0, i64 40, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.aq, align 4, !tbaa !92
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  %i.au = load i32, ptr %i.at, align 4, !tbaa !93
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %bb.m, label %_ZN8ImVectorI6ImVec4E6resizeEi.exit

bb.m:                                             ; preds = %_ZN8ImVectorI10ImDrawVertE6resizeEi.exit
  %i.aw = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !80 ; 2 uses
  %.not6.i.i3 = icmp eq ptr %i.ay, null
  br i1 %.not6.i.i3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = load i32, ptr %i.as, align 8, !tbaa !94
  %i.ba = sext i32 %i.az to i64
  %i.bb = shl nsw i64 %i.ba, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aw, ptr nonnull align 4 %i.ay, i64 %i.bb, i1 false)
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !80
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.bc)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !80
  store i32 0, ptr %i.at, align 4, !tbaa !93
  br label %_ZN8ImVectorI6ImVec4E6resizeEi.exit

_ZN8ImVectorI6ImVec4E6resizeEi.exit:              ; preds = %_ZN8ImVectorI10ImDrawVertE6resizeEi.exit, %bb.o
  store i32 0, ptr %i.as, align 8, !tbaa !94
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !95
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %bb.p, label %_ZN8ImVectorI12ImTextureRefE6resizeEi.exit

bb.p:                                             ; preds = %_ZN8ImVectorI6ImVec4E6resizeEi.exit
  %i.bh = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !79 ; 2 uses
  %.not6.i.i4 = icmp eq ptr %i.bj, null
  br i1 %.not6.i.i4, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = load i32, ptr %i.bd, align 8, !tbaa !96
  %i.bl = sext i32 %i.bk to i64
  %i.bm = shl nsw i64 %i.bl, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.bh, ptr nonnull align 8 %i.bj, i64 %i.bm, i1 false)
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !79
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.bn)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !79
  store i32 0, ptr %i.be, align 4, !tbaa !95
  br label %_ZN8ImVectorI12ImTextureRefE6resizeEi.exit

_ZN8ImVectorI12ImTextureRefE6resizeEi.exit:       ; preds = %_ZN8ImVectorI6ImVec4E6resizeEi.exit, %bb.r
  store i32 0, ptr %i.bd, align 8, !tbaa !96
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !97
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %bb.s, label %_ZN8ImVectorIhE6resizeEi.exit

bb.s:                                             ; preds = %_ZN8ImVectorI12ImTextureRefE6resizeEi.exit
  %i.bs = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !78 ; 2 uses
  %.not6.i.i5 = icmp eq ptr %i.bu, null
  br i1 %.not6.i.i5, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = load i32, ptr %i.bo, align 8, !tbaa !98
  %i.bw = sext i32 %i.bv to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr nonnull align 1 %i.bu, i64 %i.bw, i1 false)
  %i.bx = load ptr, ptr %i.bt, align 8, !tbaa !78
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.bx)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !78
  store i32 0, ptr %i.bp, align 4, !tbaa !97
  br label %_ZN8ImVectorIhE6resizeEi.exit

_ZN8ImVectorIhE6resizeEi.exit:                    ; preds = %_ZN8ImVectorI12ImTextureRefE6resizeEi.exit, %bb.u
  store i32 0, ptr %i.bo, align 8, !tbaa !98
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !99
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %bb.v, label %_ZN8ImVectorI6ImVec2E6resizeEi.exit

bb.v:                                             ; preds = %_ZN8ImVectorIhE6resizeEi.exit
  %i.cc = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !47 ; 2 uses
  %.not6.i.i6 = icmp eq ptr %i.ce, null
  br i1 %.not6.i.i6, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = load i32, ptr %i.by, align 8, !tbaa !100
  %i.cg = sext i32 %i.cf to i64
  %i.ch = shl nsw i64 %i.cg, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cc, ptr nonnull align 4 %i.ce, i64 %i.ch, i1 false)
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !47
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ci)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !47
  store i32 0, ptr %i.bz, align 4, !tbaa !99
  br label %_ZN8ImVectorI6ImVec2E6resizeEi.exit

_ZN8ImVectorI6ImVec2E6resizeEi.exit:              ; preds = %_ZN8ImVectorIhE6resizeEi.exit, %bb.x
  store i32 0, ptr %i.by, align 8, !tbaa !100
  store i32 0, ptr %i.a, align 8, !tbaa !101
  store i32 1, ptr %i.b, align 4, !tbaa !102
  %i.cj = load i32, ptr %0, align 8, !tbaa !86    ; 6 uses
  %i.ck = load i32, ptr %i.e, align 4, !tbaa !85
  %i.cl = icmp eq i32 %i.cj, %i.ck
  br i1 %i.cl, label %bb.y, label %._ZN8ImVectorI9ImDrawCmdE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI9ImDrawCmdE7reserveEi.exit_crit_edge.i: ; preds = %_ZN8ImVectorI6ImVec2E6resizeEi.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !84
  br label %_ZN8ImVectorI9ImDrawCmdE9push_backERKS0_.exit

bb.y:                                             ; preds = %_ZN8ImVectorI6ImVec2E6resizeEi.exit
  %i.cm = add nsw i32 %i.cj, 1
  %.not.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = sdiv i32 %i.cj, 2
  %i.co = add nsw i32 %i.cn, %i.cj
  br label %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i

_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i: ; preds = %bb.z, %bb.y
  %i.cp = phi i32 [ %i.co, %bb.z ], [ 8, %bb.y ]
  %i.cq = tail call noundef i32 @llvm.smax.i32(i32 %i.cp, i32 %i.cm) ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul nsw i64 %i.cr, 72
  %i.ct = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.cs) ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !84 ; 2 uses
  %.not6.i.i7 = icmp eq ptr %i.cv, null
  br i1 %.not6.i.i7, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i
  %i.cw = load i32, ptr %0, align 8, !tbaa !86
  %i.cx = sext i32 %i.cw to i64
  %i.cy = mul nsw i64 %i.cx, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ct, ptr nonnull align 8 %i.cv, i64 %i.cy, i1 false)
  %i.cz = load ptr, ptr %i.cu, align 8, !tbaa !84
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.cz)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !84
  store i32 %i.cq, ptr %i.e, align 4, !tbaa !85
  %.pre3.i = load i32, ptr %0, align 8, !tbaa !86
  br label %_ZN8ImVectorI9ImDrawCmdE9push_backERKS0_.exit

_ZN8ImVectorI9ImDrawCmdE9push_backERKS0_.exit:    ; preds = %._ZN8ImVectorI9ImDrawCmdE7reserveEi.exit_crit_edge.i, %bb.ab
  %i.da = phi i32 [ %i.cj, %._ZN8ImVectorI9ImDrawCmdE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.ab ]
  %i.db = phi ptr [ %.pre.i, %._ZN8ImVectorI9ImDrawCmdE7reserveEi.exit_crit_edge.i ], [ %i.ct, %bb.ab ]
  %i.dc = sext i32 %i.da to i64
  %i.dd = getelementptr inbounds [72 x i8], ptr %i.db, i64 %i.dc
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dd, i8 0, i64 72, i1 false)
  %i.de = load i32, ptr %0, align 8, !tbaa !86
  %i.df = add nsw i32 %i.de, 1
  store i32 %i.df, ptr %0, align 8, !tbaa !86
  %i.dg = load ptr, ptr %i.ak, align 8, !tbaa !73
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  %i.di = load float, ptr %i.dh, align 8, !tbaa !45
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 208
  store float %i.di, ptr %i.dj, align 8, !tbaa !103
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN18ImDrawListSplitter5MergeEP10ImDrawList(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.0.i109 = alloca { %struct.ImVec4, %struct.ImTextureRef }, align 8 ; 5 uses
  %.sroa.0.i = alloca { %struct.ImVec4, %struct.ImTextureRef }, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !102
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.at, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef 0)
  %.pr.i = load i32, ptr %1, align 8, !tbaa !104  ; 3 uses
  %i.d = icmp sgt i32 %.pr.i, 0
  br i1 %i.d, label %.lr.ph.i, label %_ZN10ImDrawList17_PopUnusedDrawCmdEv.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !105
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %2 = phi i32 [ %.pr.i, %.lr.ph.i ], [ %4, %bb.e ] ; 5 uses
  %3 = zext nneg i32 %2 to i64
  %i.g = getelementptr [72 x i8], ptr %i.f, i64 %3 ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !107
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.d, label %_ZN10ImDrawList17_PopUnusedDrawCmdEv.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.g, i64 -24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108
  %.not4.i = icmp eq ptr %i.k, null
  br i1 %.not4.i, label %bb.e, label %_ZN10ImDrawList17_PopUnusedDrawCmdEv.exit

bb.e:                                             ; preds = %bb.d
  %4 = add nsw i32 %2, -1                         ; 3 uses
  store i32 %4, ptr %1, align 8, !tbaa !86
  %i.l = icmp sgt i32 %2, 1
  br i1 %i.l, label %bb.c, label %_ZN10ImDrawList17_PopUnusedDrawCmdEv.exit

_ZN10ImDrawList17_PopUnusedDrawCmdEv.exit:        ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %5 = phi i32 [ %.pr.i, %bb.b ], [ %2, %bb.c ], [ %2, %bb.d ], [ %4, %bb.e ] ; 4 uses
  %i.m = load i32, ptr %i.a, align 4, !tbaa !102  ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %bb.f, label %._crit_edge134

bb.f:                                             ; preds = %_ZN10ImDrawList17_PopUnusedDrawCmdEv.exit
  %i.o = icmp sgt i32 %5, 0
  br i1 %i.o, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.r = zext nneg i32 %5 to i64
  %i.s = getelementptr [72 x i8], ptr %i.q, i64 %i.r ; 3 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -72      ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr %i.s, i64 -36
  %i.v = load i32, ptr %i.u, align 4, !tbaa !109
  %i.w = getelementptr i8, ptr %i.s, i64 -32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !107
  %i.y = add i32 %i.x, %i.v
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  %i.z = phi ptr [ %i.t, %bb.h ], [ null, %bb.g ], [ null, %bb.f ]
  %i.aa = phi i32 [ %i.y, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ]
  %.not202 = icmp eq i32 %i.m, 1
  br i1 %.not202, label %._crit_edge134, label %.lr.ph133

.lr.ph133:                                        ; preds = %.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.q

._crit_edge134.loopexit:                          ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8, !tbaa !104
  br label %._crit_edge134

._crit_edge134:                                   ; preds = %_ZN10ImDrawList17_PopUnusedDrawCmdEv.exit, %._crit_edge134.loopexit, %.thread
  %i.ac = phi i32 [ %5, %.thread ], [ %.pre, %._crit_edge134.loopexit ], [ %5, %_ZN10ImDrawList17_PopUnusedDrawCmdEv.exit ]
  %.095.lcssa = phi i32 [ 0, %.thread ], [ %i.ej, %._crit_edge134.loopexit ], [ 0, %_ZN10ImDrawList17_PopUnusedDrawCmdEv.exit ] ; 2 uses
  %.094.lcssa = phi i32 [ 0, %.thread ], [ %i.ek, %._crit_edge134.loopexit ], [ 0, %_ZN10ImDrawList17_PopUnusedDrawCmdEv.exit ] ; 2 uses
  %i.ad = add nsw i32 %i.ac, %.095.lcssa          ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 6 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !85 ; 4 uses
  %i.ag = icmp sgt i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.i, label %_ZN8ImVectorI9ImDrawCmdE6resizeEi.exit

bb.i:                                             ; preds = %._crit_edge134
  %.not.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = sdiv i32 %i.af, 2
  %i.ai = add nsw i32 %i.ah, %i.af
  br label %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i

_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i: ; preds = %bb.j, %bb.i
  %i.aj = phi i32 [ %i.ai, %bb.j ], [ 8, %bb.i ]
  %i.ak = tail call noundef i32 @llvm.smax.i32(i32 %i.aj, i32 %i.ad) ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.al, 72
  %i.an = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.am) ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !84 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.ap, null
  br i1 %.not6.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i
  %i.aq = load i32, ptr %1, align 8, !tbaa !86
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul nsw i64 %i.ar, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.an, ptr nonnull align 8 %i.ap, i64 %i.as, i1 false)
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !84
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.at)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !84
  store i32 %i.ak, ptr %i.ae, align 4, !tbaa !85
  br label %_ZN8ImVectorI9ImDrawCmdE6resizeEi.exit

_ZN8ImVectorI9ImDrawCmdE6resizeEi.exit:           ; preds = %._crit_edge134, %bb.l
  store i32 %i.ad, ptr %1, align 8, !tbaa !86
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !110
  %i.aw = add nsw i32 %i.av, %.094.lcssa          ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !87 ; 4 uses
  %i.az = icmp sgt i32 %i.aw, %i.ay
  br i1 %i.az, label %bb.m, label %_ZN8ImVectorI9ImDrawCmdE6resizeEi.exit._ZN8ImVectorItE6resizeEi.exit_crit_edge

_ZN8ImVectorI9ImDrawCmdE6resizeEi.exit._ZN8ImVectorItE6resizeEi.exit_crit_edge: ; preds = %_ZN8ImVectorI9ImDrawCmdE6resizeEi.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.pre152 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !111
  br label %_ZN8ImVectorItE6resizeEi.exit

bb.m:                                             ; preds = %_ZN8ImVectorI9ImDrawCmdE6resizeEi.exit
  %.not.i.i107 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i107, label %_ZNK8ImVectorItE14_grow_capacityEi.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = sdiv i32 %i.ay, 2
  %i.bb = add nsw i32 %i.ba, %i.ay
  br label %_ZNK8ImVectorItE14_grow_capacityEi.exit.i

_ZNK8ImVectorItE14_grow_capacityEi.exit.i:        ; preds = %bb.n, %bb.m
  %i.bc = phi i32 [ %i.bb, %bb.n ], [ 8, %bb.m ]
  %i.bd = tail call noundef i32 @llvm.smax.i32(i32 %i.bc, i32 %i.aw) ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = shl nsw i64 %i.be, 1
  %i.bg = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bf) ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !83 ; 2 uses
  %.not6.i.i108 = icmp eq ptr %i.bi, null
  br i1 %.not6.i.i108, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK8ImVectorItE14_grow_capacityEi.exit.i
  %i.bj = load i32, ptr %i.au, align 8, !tbaa !88
  %i.bk = sext i32 %i.bj to i64
  %i.bl = shl nsw i64 %i.bk, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bg, ptr nonnull align 2 %i.bi, i64 %i.bl, i1 false)
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !83
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.bm)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK8ImVectorItE14_grow_capacityEi.exit.i
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !83
  store i32 %i.bd, ptr %i.ax, align 4, !tbaa !87
  %.pre154.pre = load i32, ptr %1, align 8, !tbaa !104
  br label %_ZN8ImVectorItE6resizeEi.exit

_ZN8ImVectorItE6resizeEi.exit:                    ; preds = %_ZN8ImVectorI9ImDrawCmdE6resizeEi.exit._ZN8ImVectorItE6resizeEi.exit_crit_edge, %bb.p
  %.pre154 = phi i32 [ %i.ad, %_ZN8ImVectorI9ImDrawCmdE6resizeEi.exit._ZN8ImVectorItE6resizeEi.exit_crit_edge ], [ %.pre154.pre, %bb.p ] ; 2 uses
  %i.bn = phi ptr [ %.pre152, %_ZN8ImVectorI9ImDrawCmdE6resizeEi.exit._ZN8ImVectorItE6resizeEi.exit_crit_edge ], [ %i.bg, %bb.p ]
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !88
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.bp = sext i32 %i.aw to i64
  %i.bq = getelementptr inbounds [2 x i8], ptr %i.bn, i64 %i.bp
  %i.br = sext i32 %.094.lcssa to i64
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.bq, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.a, align 4, !tbaa !102
  %i.bv = icmp sgt i32 %i.bu, 1
  br i1 %i.bv, label %.lr.ph140, label %._crit_edge141

.lr.ph140:                                        ; preds = %_ZN8ImVectorItE6resizeEi.exit
  %i.bw = load ptr, ptr %i.bo, align 8, !tbaa !105
  %i.bx = sext i32 %.pre154 to i64
  %i.by = getelementptr inbounds [72 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = sext i32 %.095.lcssa to i64
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr inbounds [72 x i8], ptr %i.by, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.aa

bb.q:                                             ; preds = %.lr.ph133, %._crit_edge
  %indvars.iv146 = phi i64 [ 1, %.lr.ph133 ], [ %indvars.iv.next147, %._crit_edge ] ; 2 uses
  %.090131 = phi i32 [ %i.aa, %.lr.ph133 ], [ %.3.lcssa, %._crit_edge ] ; 5 uses
  %.092129 = phi ptr [ %i.z, %.lr.ph133 ], [ %.193188, %._crit_edge ] ; 5 uses
  %.094128 = phi i32 [ 0, %.lr.ph133 ], [ %i.ek, %._crit_edge ]
  %.095127 = phi i32 [ 0, %.lr.ph133 ], [ %i.ej, %._crit_edge ]
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !81
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %i.cd, i64 %indvars.iv146 ; 10 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !558 ; 6 uses
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %bb.r, label %._crit_edge.sink.split

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !84
  %i.cj = zext nneg i32 %i.cf to i64
  %i.ck = getelementptr [72 x i8], ptr %i.ci, i64 %i.cj ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 -32
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !107
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.co = getelementptr i8, ptr %i.ck, i64 -24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !108
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cr = add nsw i32 %i.cf, -1                   ; 2 uses
  store i32 %i.cr, ptr %i.ce, align 8, !tbaa !86
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.pr = phi i32 [ %i.cr, %bb.t ], [ %i.cf, %bb.s ], [ %i.cf, %bb.r ] ; 5 uses
  %i.cs = icmp ne i32 %.pr, 0
  %i.ct = icmp ne ptr %.092129, null
  %or.cond = select i1 %i.cs, i1 %i.ct, i1 false
  br i1 %or.cond, label %bb.v, label %thread-pre-split

bb.v:                                             ; preds = %bb.u
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !84 ; 5 uses
  %bcmp103 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(36) %.092129, ptr noundef nonnull dereferenceable(36) %i.cv, i64 36)
  %i.cw = icmp eq i32 %bcmp103, 0
  br i1 %i.cw, label %bb.w, label %.lr.ph

bb.w:                                             ; preds = %bb.v
  %i.cx = getelementptr inbounds nuw i8, ptr %.092129, i64 48
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !108
  %i.cz = icmp eq ptr %i.cy, null
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = icmp eq ptr %i.db, null
  %or.cond106 = select i1 %i.cz, i1 %i.dc, i1 false
  br i1 %or.cond106, label %bb.x, label %.lr.ph

bb.x:                                             ; preds = %bb.w
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 40 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !107
  %i.df = getelementptr inbounds nuw i8, ptr %.092129, i64 40 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !107
  %i.dh = add i32 %i.dg, %i.de
  store i32 %i.dh, ptr %i.df, align 8, !tbaa !107
  %i.di = load i32, ptr %i.dd, align 8, !tbaa !107
  %i.dj = add i32 %i.di, %.090131
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cv, i64 72
  %i.dl = zext nneg i32 %.pr to i64
  %i.dm = mul nuw nsw i64 %i.dl, 72
  %i.dn = add nsw i64 %i.dm, -72
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cv, ptr nonnull align 8 %i.dk, i64 %i.dn, i1 false)
  %i.do = load i32, ptr %i.ce, align 8, !tbaa !86
  %i.dp = add nsw i32 %i.do, -1                   ; 2 uses
  store i32 %i.dp, ptr %i.ce, align 8, !tbaa !86
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.x, %bb.u
  %i.dq = phi i32 [ %.pr, %bb.u ], [ %i.dp, %bb.x ] ; 3 uses
  %.2 = phi i32 [ %.090131, %bb.u ], [ %i.dj, %bb.x ] ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph, label %._crit_edge.sink.split

.lr.ph:                                           ; preds = %bb.w, %bb.v, %thread-pre-split
  %.pr.sink199 = phi i32 [ %i.dq, %thread-pre-split ], [ %.pr, %bb.v ], [ %.pr, %bb.w ] ; 5 uses
end_hunk_0
begin_hunk_1_@_ZNK10ImDrawList11CloneOutputEv:bb.a
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.an, ptr nonnull align 2 %i.ao, i64 %i.ar, i1 false)
  %i.as = load ptr, ptr %i.aa, align 8, !tbaa !83
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.as)
  br label %_ZN8ImVectorItE6resizeEi.exit.i

_ZN8ImVectorItE6resizeEi.exit.i:                  ; preds = %bb.k, %_ZNK8ImVectorItE14_grow_capacityEi.exit.i.i
  store ptr %i.an, ptr %i.aa, align 8, !tbaa !83
  store i32 %i.ak, ptr %i.ae, align 4, !tbaa !87
  store i32 %i.ad, ptr %i.z, align 8, !tbaa !88
  %.not.i10 = icmp eq ptr %i.an, null
  br i1 %.not.i10, label %_ZN8ImVectorItEaSERKS0_.exit, label %bb.l

bb.l:                                             ; preds = %_ZN8ImVectorItE6resizeEi.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !83 ; 2 uses
  %.not5.i11 = icmp eq ptr %i.au, null
  br i1 %.not5.i11, label %_ZN8ImVectorItEaSERKS0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = sext i32 %i.ad to i64
  %i.aw = shl nsw i64 %i.av, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.an, ptr nonnull align 2 %i.au, i64 %i.aw, i1 false)
  br label %_ZN8ImVectorItEaSERKS0_.exit

_ZN8ImVectorItEaSERKS0_.exit:                     ; preds = %_ZN8ImVectorItE6resizeEi.exit.thread.i, %_ZN8ImVectorItE6resizeEi.exit.i, %bb.l, %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 5 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !82 ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i12, label %_ZN8ImVectorI10ImDrawVertE5clearEv.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZN8ImVectorItEaSERKS0_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 0, ptr %i.bb, align 4, !tbaa !89
  store i32 0, ptr %i.ay, align 8, !tbaa !90
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ba)
  store ptr null, ptr %i.az, align 8, !tbaa !82
  br label %_ZN8ImVectorI10ImDrawVertE5clearEv.exit.i

_ZN8ImVectorI10ImDrawVertE5clearEv.exit.i:        ; preds = %bb.n, %_ZN8ImVectorItEaSERKS0_.exit
  %i.bc = load i32, ptr %i.ax, align 8, !tbaa !90 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !89 ; 4 uses
  %i.bf = icmp sgt i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.o, label %_ZN8ImVectorI10ImDrawVertE6resizeEi.exit.thread.i

_ZN8ImVectorI10ImDrawVertE6resizeEi.exit.thread.i: ; preds = %_ZN8ImVectorI10ImDrawVertE5clearEv.exit.i
  store i32 %i.bc, ptr %i.ay, align 8, !tbaa !90
  br label %_ZN8ImVectorI10ImDrawVertEaSERKS1_.exit

bb.o:                                             ; preds = %_ZN8ImVectorI10ImDrawVertE5clearEv.exit.i
  %.not.i.i.i13 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i13, label %_ZNK8ImVectorI10ImDrawVertE14_grow_capacityEi.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = sdiv i32 %i.be, 2
  %i.bh = add nsw i32 %i.bg, %i.be
  br label %_ZNK8ImVectorI10ImDrawVertE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorI10ImDrawVertE14_grow_capacityEi.exit.i.i: ; preds = %bb.p, %bb.o
  %i.bi = phi i32 [ %i.bh, %bb.p ], [ 8, %bb.o ]
  %i.bj = tail call noundef i32 @llvm.smax.i32(i32 %i.bi, i32 %i.bc) ; 2 uses
  %i.bk = sext i32 %i.bj to i64
  %i.bl = mul nsw i64 %i.bk, 20
  %i.bm = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bl) ; 4 uses
  %i.bn = load ptr, ptr %i.az, align 8, !tbaa !82 ; 2 uses
  %.not6.i.i.i14 = icmp eq ptr %i.bn, null
  br i1 %.not6.i.i.i14, label %_ZN8ImVectorI10ImDrawVertE6resizeEi.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNK8ImVectorI10ImDrawVertE14_grow_capacityEi.exit.i.i
  %i.bo = load i32, ptr %i.ay, align 8, !tbaa !90
  %i.bp = sext i32 %i.bo to i64
  %i.bq = mul nsw i64 %i.bp, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bm, ptr nonnull align 4 %i.bn, i64 %i.bq, i1 false)
  %i.br = load ptr, ptr %i.az, align 8, !tbaa !82
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.br)
  br label %_ZN8ImVectorI10ImDrawVertE6resizeEi.exit.i

_ZN8ImVectorI10ImDrawVertE6resizeEi.exit.i:       ; preds = %bb.q, %_ZNK8ImVectorI10ImDrawVertE14_grow_capacityEi.exit.i.i
  store ptr %i.bm, ptr %i.az, align 8, !tbaa !82
  store i32 %i.bj, ptr %i.bd, align 4, !tbaa !89
  store i32 %i.bc, ptr %i.ay, align 8, !tbaa !90
  %.not.i15 = icmp eq ptr %i.bm, null
  br i1 %.not.i15, label %_ZN8ImVectorI10ImDrawVertEaSERKS1_.exit, label %bb.r

bb.r:                                             ; preds = %_ZN8ImVectorI10ImDrawVertE6resizeEi.exit.i
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !82 ; 2 uses
  %.not5.i16 = icmp eq ptr %i.bt, null
  br i1 %.not5.i16, label %_ZN8ImVectorI10ImDrawVertEaSERKS1_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = sext i32 %i.bc to i64
  %i.bv = mul nsw i64 %i.bu, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bm, ptr nonnull align 4 %i.bt, i64 %i.bv, i1 false)
  br label %_ZN8ImVectorI10ImDrawVertEaSERKS1_.exit

_ZN8ImVectorI10ImDrawVertEaSERKS1_.exit:          ; preds = %_ZN8ImVectorI10ImDrawVertE6resizeEi.exit.thread.i, %_ZN8ImVectorI10ImDrawVertE6resizeEi.exit.i, %bb.r, %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !91
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !91
  ret ptr %i.a
}

declare noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList10AddDrawCmdEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.0 = alloca { %struct.ImVec4, %struct.ImTextureRef }, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.0.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !116
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load i32, ptr %i.c, align 8, !tbaa !117
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !110
  %i.g = load i32, ptr %0, align 8, !tbaa !86     ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !85
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.b, label %._ZN8ImVectorI9ImDrawCmdE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI9ImDrawCmdE7reserveEi.exit_crit_edge.i: ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !84
  br label %_ZN8ImVectorI9ImDrawCmdE9push_backERKS0_.exit

bb.b:                                             ; preds = %bb.a
  %i.k = add nsw i32 %i.g, 1
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sdiv i32 %i.g, 2
  %i.m = add nsw i32 %i.l, %i.g
  br label %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i

_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i: ; preds = %bb.c, %bb.b
  %i.n = phi i32 [ %i.m, %bb.c ], [ 8, %bb.b ]
  %i.o = tail call noundef i32 @llvm.smax.i32(i32 %i.n, i32 %i.k) ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.p, 72
  %i.r = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.q) ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !84   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.t, null
  br i1 %.not6.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i
  %i.u = load i32, ptr %0, align 8, !tbaa !86
  %i.v = sext i32 %i.u to i64
  %i.w = mul nsw i64 %i.v, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.r, ptr nonnull align 8 %i.t, i64 %i.w, i1 false)
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !84
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.x)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i
  store ptr %i.r, ptr %i.s, align 8, !tbaa !84
  store i32 %i.o, ptr %i.h, align 4, !tbaa !85
  %.pre3.i = load i32, ptr %0, align 8, !tbaa !86
  br label %_ZN8ImVectorI9ImDrawCmdE9push_backERKS0_.exit

_ZN8ImVectorI9ImDrawCmdE9push_backERKS0_.exit:    ; preds = %._ZN8ImVectorI9ImDrawCmdE7reserveEi.exit_crit_edge.i, %bb.e
  %i.y = phi i32 [ %i.g, %._ZN8ImVectorI9ImDrawCmdE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.e ]
  %i.z = phi ptr [ %.pre.i, %._ZN8ImVectorI9ImDrawCmdE7reserveEi.exit_crit_edge.i ], [ %i.r, %bb.e ]
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr inbounds [72 x i8], ptr %i.z, i64 %i.aa ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i32 %i.d, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 36
  store i32 %i.f, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx, i8 0, i64 32, i1 false)
  %i.ac = load i32, ptr %0, align 8, !tbaa !86
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN10ImDrawList17_PopUnusedDrawCmdEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0) local_unnamed_addr #13 align 2 {
bb.a:
  %.pr = load i32, ptr %0, align 8, !tbaa !104    ; 2 uses
  %i.a = icmp sgt i32 %.pr, 0
  br i1 %i.a, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %1 = phi i32 [ %.pr, %.lr.ph ], [ %3, %bb.d ]   ; 3 uses
  %2 = zext nneg i32 %1 to i64
  %i.d = getelementptr [72 x i8], ptr %i.c, i64 %2 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !107
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.d, i64 -24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108
  %.not4 = icmp eq ptr %i.h, null
  br i1 %.not4, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %3 = add nsw i32 %1, -1                         ; 2 uses
  store i32 %3, ptr %0, align 8, !tbaa !86
  %i.i = icmp sgt i32 %1, 1
  br i1 %i.i, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawList11AddCallbackEPFvPKS_PK9ImDrawCmdEPvm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(224) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 align 2 {
bb.a:
  %.sroa.0.i24 = alloca { %struct.ImVec4, %struct.ImTextureRef }, align 8 ; 5 uses
  %.sroa.0.i = alloca { %struct.ImVec4, %struct.ImTextureRef }, align 8 ; 5 uses
  %i.a = icmp eq ptr %1, inttoptr (i64 -8 to ptr)
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 3168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !563  ; 2 uses
  %.not22 = icmp eq ptr %i.g, null
  %spec.select = select i1 %.not22, ptr %1, ptr %i.g
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.017 = phi ptr [ %1, %bb.a ], [ %spec.select, %bb.c ], [ inttoptr (i64 -8 to ptr), %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105  ; 2 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !104    ; 6 uses
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr [72 x i8], ptr %i.i, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 -32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !107
  %.not23 = icmp eq i32 %i.n, 0
  br i1 %.not23, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.0.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.16..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !116
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = load i32, ptr %i.q, align 8, !tbaa !117
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !110
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !85
  %i.w = icmp eq i32 %i.j, %i.v
  br i1 %i.w, label %bb.f, label %_ZN10ImDrawList10AddDrawCmdEv.exit

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.j, 1
  %.not.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i, label %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = sdiv i32 %i.j, 2
  %i.z = add nsw i32 %i.y, %i.j
  br label %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i: ; preds = %bb.g, %bb.f
  %i.aa = phi i32 [ %i.z, %bb.g ], [ 8, %bb.f ]
  %i.ab = tail call noundef i32 @llvm.smax.i32(i32 %i.aa, i32 %i.x) ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.ac, 72
  %i.ae = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ad) ; 3 uses
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !84  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not6.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i
  %i.ag = load i32, ptr %0, align 8, !tbaa !86
  %i.ah = sext i32 %i.ag to i64
  %i.ai = mul nsw i64 %i.ah, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ae, ptr nonnull align 8 %i.af, i64 %i.ai, i1 false)
  %i.aj = load ptr, ptr %i.h, align 8, !tbaa !84
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.aj)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZNK8ImVectorI9ImDrawCmdE14_grow_capacityEi.exit.i.i
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !84
  store i32 %i.ab, ptr %i.u, align 4, !tbaa !85
  %.pre3.i.i = load i32, ptr %0, align 8, !tbaa !86
  %.pre38 = sext i32 %.pre3.i.i to i64
  br label %_ZN10ImDrawList10AddDrawCmdEv.exit

_ZN10ImDrawList10AddDrawCmdEv.exit:               ; preds = %bb.e, %bb.i
  %.pre-phi = phi i64 [ %i.k, %bb.e ], [ %.pre38, %bb.i ]
  %i.ak = phi ptr [ %i.i, %bb.e ], [ %i.ae, %bb.i ]
  %i.al = getelementptr inbounds [72 x i8], ptr %i.ak, i64 %.pre-phi ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.i, i64 32, i1 false)
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i32 %i.r, ptr %.sroa.6.0..sroa_idx.i, align 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  store i32 %i.t, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.8.0..sroa_idx.i, i8 0, i64 32, i1 false)
  %i.am = load i32, ptr %0, align 8, !tbaa !86
  %i.an = add nsw i32 %i.am, 1                    ; 2 uses
  store i32 %i.an, ptr %0, align 8, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !105
  %i.ap = sext i32 %i.an to i64
  %i.aq = getelementptr [72 x i8], ptr %i.ao, i64 %i.ap
  br label %bb.j

bb.j:                                             ; preds = %_ZN10ImDrawList10AddDrawCmdEv.exit, %bb.d
  %.pn = phi ptr [ %i.aq, %_ZN10ImDrawList10AddDrawCmdEv.exit ], [ %i.l, %bb.d ] ; 6 uses
  %i.ar = getelementptr i8, ptr %.pn, i64 -24
  store ptr %.017, ptr %i.ar, align 8, !tbaa !108
  %i.as = icmp eq i64 %3, 0
  %i.at = getelementptr i8, ptr %.pn, i64 -16     ; 2 uses
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %2, ptr %i.at, align 8, !tbaa !231
  %i.au = getelementptr i8, ptr %.pn, i64 -8
  store i32 0, ptr %i.au, align 8, !tbaa !232
  %i.av = getelementptr i8, ptr %.pn, i64 -4
  store i32 -1, ptr %i.av, align 4, !tbaa !233
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  store ptr null, ptr %i.at, align 8, !tbaa !231
  %i.aw = trunc i64 %3 to i32                     ; 2 uses
  %i.ax = getelementptr i8, ptr %.pn, i64 -8
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !232
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !234 ; 3 uses
  %i.ba = getelementptr i8, ptr %.pn, i64 -4      ; 2 uses
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !233
  %i.bb = add nsw i32 %i.az, %i.aw                ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !97 ; 4 uses
  %i.be = icmp sgt i32 %i.bb, %i.bd
  br i1 %i.be, label %bb.m, label %._ZN8ImVectorIhE6resizeEi.exit_crit_edge

._ZN8ImVectorIhE6resizeEi.exit_crit_edge:         ; preds = %bb.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !235
  br label %_ZN8ImVectorIhE6resizeEi.exit

bb.m:                                             ; preds = %bb.l
  %.not.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorIhE14_grow_capacityEi.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = sdiv i32 %i.bd, 2
  %i.bg = add nsw i32 %i.bf, %i.bd
  br label %_ZNK8ImVectorIhE14_grow_capacityEi.exit.i

_ZNK8ImVectorIhE14_grow_capacityEi.exit.i:        ; preds = %bb.n, %bb.m
  %i.bh = phi i32 [ %i.bg, %bb.n ], [ 8, %bb.m ]
  %i.bi = tail call noundef i32 @llvm.smax.i32(i32 %i.bh, i32 %i.bb) ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %i.bk = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.bj) ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !78 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.bm, null
  br i1 %.not6.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK8ImVectorIhE14_grow_capacityEi.exit.i
  %i.bn = load i32, ptr %i.ay, align 8, !tbaa !98
  %i.bo = sext i32 %i.bn to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr nonnull align 1 %i.bm, i64 %i.bo, i1 false)
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !78
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.bp)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK8ImVectorIhE14_grow_capacityEi.exit.i
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !78
  store i32 %i.bi, ptr %i.bc, align 4, !tbaa !97
  %.pre37 = load i32, ptr %i.ba, align 4, !tbaa !233
  br label %_ZN8ImVectorIhE6resizeEi.exit

_ZN8ImVectorIhE6resizeEi.exit:                    ; preds = %._ZN8ImVectorIhE6resizeEi.exit_crit_edge, %bb.p
  %i.bq = phi i32 [ %i.az, %._ZN8ImVectorIhE6resizeEi.exit_crit_edge ], [ %.pre37, %bb.p ]
  %i.br = phi ptr [ %.pre, %._ZN8ImVectorIhE6resizeEi.exit_crit_edge ], [ %i.bk, %bb.p ]
  store i32 %i.bb, ptr %i.ay, align 8, !tbaa !98
  %i.bs = sext i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bs
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr align 1 %2, i64 %3, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %_ZN8ImVectorIhE6resizeEi.exit, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i24)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i24, ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i64 16, i1 false), !tbaa.struct !30
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.0.16..sroa_idx.i25 = getelementptr inbounds nuw i8, ptr %.sroa.0.i24, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.16..sroa_idx.i25, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !116
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !117
end_hunk_1
begin_hunk_2_@_ZN18ImDrawListSplitter17SetCurrentChannelEP10ImDrawListi:bb.a
; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawData5ClearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) initializes((0, 1), (4, 16), (32, 76)) %0) local_unnamed_addr #10 align 2 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !604
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.a, align 4, !tbaa !291
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !292
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !605
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !77
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %_ZN8ImVectorIP10ImDrawListE6resizeEi.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !48   ; 2 uses
  %.not6.i.i = icmp eq ptr %i.j, null
  br i1 %.not6.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.d, align 8, !tbaa !74
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.h, ptr nonnull align 8 %i.j, i64 %i.m, i1 false)
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !48
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.n)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.h, ptr %i.i, align 8, !tbaa !48
  store i32 0, ptr %i.e, align 4, !tbaa !77
  br label %_ZN8ImVectorIP10ImDrawListE6resizeEi.exit

_ZN8ImVectorIP10ImDrawListE6resizeEi.exit:        ; preds = %bb.a, %bb.d
  store i32 0, ptr %i.d, align 8, !tbaa !74
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.o, i8 0, i64 44, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui23AddDrawListToDrawDataExEP10ImDrawDataP8ImVectorIP10ImDrawListES4_(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !104    ; 2 uses
  switch i32 %i.a, label %bb.d [
    i32 0, label %bb.n
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !107
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.k = load i32, ptr %i.j, align 8, !tbaa !234
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !84   ; 2 uses
  %i.o = sext i32 %i.a to i64
  %.idx = mul nsw i64 %i.o, 72
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 %.idx
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 200
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.i
  %.023 = phi ptr [ %i.n, %.lr.ph ], [ %i.ac, %bb.i ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.023, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !108
  %.not16 = icmp eq ptr %i.s, null
  br i1 %.not16, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.023, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !233  ; 2 uses
  %.not17 = icmp eq i32 %i.u, -1
  br i1 %.not17, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.023, i64 64
  %i.w = load i32, ptr %i.v, align 8, !tbaa !232
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !235
  %i.z = sext i32 %i.u to i64
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %.023, i64 56
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !231
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.023, i64 72 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.p
  br i1 %.not, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %bb.i, %bb.d
  %i.ad = load i32, ptr %1, align 8, !tbaa !74    ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !77
  %i.ag = icmp eq i32 %i.ad, %i.af
  br i1 %i.ag, label %bb.j, label %._ZN8ImVectorIP10ImDrawListE7reserveEi.exit_crit_edge.i

._ZN8ImVectorIP10ImDrawListE7reserveEi.exit_crit_edge.i: ; preds = %.loopexit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !48
  br label %_ZN8ImVectorIP10ImDrawListE9push_backERKS1_.exit

bb.j:                                             ; preds = %.loopexit
  %i.ah = add nsw i32 %i.ad, 1
  %.not.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorIP10ImDrawListE14_grow_capacityEi.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = sdiv i32 %i.ad, 2
  %i.aj = add nsw i32 %i.ai, %i.ad
  br label %_ZNK8ImVectorIP10ImDrawListE14_grow_capacityEi.exit.i

_ZNK8ImVectorIP10ImDrawListE14_grow_capacityEi.exit.i: ; preds = %bb.k, %bb.j
  %i.ak = phi i32 [ %i.aj, %bb.k ], [ 8, %bb.j ]
  %i.al = tail call noundef i32 @llvm.smax.i32(i32 %i.ak, i32 %i.ah) ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = shl nsw i64 %i.am, 3
  %i.ao = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.an) ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !48 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.aq, null
  br i1 %.not6.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK8ImVectorIP10ImDrawListE14_grow_capacityEi.exit.i
  %i.ar = load i32, ptr %1, align 8, !tbaa !74
  %i.as = sext i32 %i.ar to i64
  %i.at = shl nsw i64 %i.as, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ao, ptr nonnull align 8 %i.aq, i64 %i.at, i1 false)
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !48
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.au)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNK8ImVectorIP10ImDrawListE14_grow_capacityEi.exit.i
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !48
  store i32 %i.al, ptr %i.ae, align 4, !tbaa !77
  %.pre3.i = load i32, ptr %1, align 8, !tbaa !74
  br label %_ZN8ImVectorIP10ImDrawListE9push_backERKS1_.exit

_ZN8ImVectorIP10ImDrawListE9push_backERKS1_.exit: ; preds = %._ZN8ImVectorIP10ImDrawListE7reserveEi.exit_crit_edge.i, %bb.m
  %i.av = phi i32 [ %i.ad, %._ZN8ImVectorIP10ImDrawListE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.m ]
  %i.aw = phi ptr [ %.pre.i, %._ZN8ImVectorIP10ImDrawListE7reserveEi.exit_crit_edge.i ], [ %i.ao, %bb.m ]
  %i.ax = sext i32 %i.av to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  %i.az = ptrtoint ptr %2 to i64
  store i64 %i.az, ptr %i.ay, align 8
  %i.ba = load i32, ptr %1, align 8, !tbaa !74
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %1, align 8, !tbaa !74
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !240
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !291
  %i.bg = add nsw i32 %i.bf, %i.bd
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !291
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !110
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !292
  %i.bl = add nsw i32 %i.bk, %i.bi
  store i32 %i.bl, ptr %i.bj, align 8, !tbaa !292
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.c, %_ZN8ImVectorIP10ImDrawListE9push_backERKS1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawData11AddDrawListEP10ImDrawList(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) %0, ptr noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %.pr.i = load i32, ptr %1, align 8, !tbaa !104  ; 2 uses
  %i.a = icmp sgt i32 %.pr.i, 0
  br i1 %i.a, label %.lr.ph.i, label %_ZN10ImDrawList17_PopUnusedDrawCmdEv.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %2 = phi i32 [ %.pr.i, %.lr.ph.i ], [ %4, %bb.d ] ; 3 uses
  %3 = zext nneg i32 %2 to i64
  %i.d = getelementptr [72 x i8], ptr %i.c, i64 %3 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !107
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.c, label %_ZN10ImDrawList17_PopUnusedDrawCmdEv.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.d, i64 -24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108
  %.not4.i = icmp eq ptr %i.h, null
  br i1 %.not4.i, label %bb.d, label %_ZN10ImDrawList17_PopUnusedDrawCmdEv.exit

bb.d:                                             ; preds = %bb.c
  %4 = add nsw i32 %2, -1                         ; 2 uses
  store i32 %4, ptr %1, align 8, !tbaa !86
  %i.i = icmp sgt i32 %2, 1
  br i1 %i.i, label %bb.b, label %_ZN10ImDrawList17_PopUnusedDrawCmdEv.exit

_ZN10ImDrawList17_PopUnusedDrawCmdEv.exit:        ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5ImGui23AddDrawListToDrawDataExEP10ImDrawDataP8ImVectorIP10ImDrawListES4_(ptr noundef nonnull %0, ptr noundef nonnull %i.j, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN10ImDrawData17DeIndexAllBuffersEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(76) initializes((8, 16)) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.ImVector.3, align 8         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !292
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 0, ptr %i.b, align 4, !tbaa !291
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !74   ; 2 uses
  %i.g = sext i32 %i.f to i64
  %.idx = shl nsw i64 %i.g, 3
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %.idx
  %.not27 = icmp eq i32 %i.f, 0
  br i1 %.not27, label %_ZN8ImVectorI10ImDrawVertED2Ev.exit, label %.lr.ph30

.lr.ph30:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.d

._crit_edge31:                                    ; preds = %bb.n
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %_ZN8ImVectorI10ImDrawVertED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge31
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.bo)
          to label %_ZN8ImVectorI10ImDrawVertED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #39
  unreachable

_ZN8ImVectorI10ImDrawVertED2Ev.exit:              ; preds = %bb.a, %._crit_edge31, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  ret void

bb.d:                                             ; preds = %.lr.ph30, %bb.n
  %i.m = phi i32 [ 0, %.lr.ph30 ], [ %i.bn, %bb.n ] ; 2 uses
  %i.n = phi ptr [ null, %.lr.ph30 ], [ %i.bo, %bb.n ] ; 5 uses
  %i.o = phi i32 [ 0, %.lr.ph30 ], [ %i.bp, %bb.n ] ; 6 uses
  %.02028 = phi ptr [ %i.e, %.lr.ph30 ], [ %i.bq, %bb.n ] ; 2 uses
  %i.p = load ptr, ptr %.02028, align 8, !tbaa !76 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !88   ; 6 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.n, label %bb.f

bb.e:                                             ; preds = %bb.k, %bb.j, %bb.i, %_ZNK8ImVectorI10ImDrawVertE14_grow_capacityEi.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8ImVectorI10ImDrawVertED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  resume { ptr, i32 } %i.t

bb.f:                                             ; preds = %bb.d
  %i.u = icmp sgt i32 %i.r, %i.o
  br i1 %i.u, label %bb.g, label %_ZN8ImVectorI10ImDrawVertE6resizeEi.exit

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI10ImDrawVertE14_grow_capacityEi.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = sdiv i32 %i.o, 2
  %i.w = add nsw i32 %i.v, %i.o
  br label %_ZNK8ImVectorI10ImDrawVertE14_grow_capacityEi.exit.i

_ZNK8ImVectorI10ImDrawVertE14_grow_capacityEi.exit.i: ; preds = %bb.h, %bb.g
  %i.x = phi i32 [ %i.w, %bb.h ], [ 8, %bb.g ]
  %i.y = tail call noundef i32 @llvm.smax.i32(i32 %i.x, i32 %i.r) ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = mul nsw i64 %i.z, 20
  %i.ab = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.aa)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %_ZNK8ImVectorI10ImDrawVertE14_grow_capacityEi.exit.i
  %.not6.i.i = icmp eq ptr %i.n, null
  br i1 %.not6.i.i, label %.noexc21, label %bb.i

bb.i:                                             ; preds = %.noexc
  %i.ac = sext i32 %i.m to i64
  %i.ad = mul nsw i64 %i.ac, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ab, ptr nonnull align 4 %i.n, i64 %i.ad, i1 false)
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.n)
          to label %.noexc21 unwind label %bb.e

.noexc21:                                         ; preds = %bb.i, %.noexc
  %.pre = load i32, ptr %i.q, align 8, !tbaa !110
  br label %_ZN8ImVectorI10ImDrawVertE6resizeEi.exit

_ZN8ImVectorI10ImDrawVertE6resizeEi.exit:         ; preds = %bb.f, %.noexc21
  %i.ae = phi i32 [ %i.o, %bb.f ], [ %i.y, %.noexc21 ]
  %i.af = phi ptr [ %i.n, %bb.f ], [ %i.ab, %.noexc21 ] ; 2 uses
  %i.ag = phi i32 [ %i.r, %bb.f ], [ %.pre, %.noexc21 ]
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN8ImVectorI10ImDrawVertE6resizeEi.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  br label %bb.l

._crit_edge:                                      ; preds = %bb.l, %_ZN8ImVectorI10ImDrawVertE6resizeEi.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !90 ; 2 uses
  store i32 %i.al, ptr %1, align 8, !tbaa !90
  store i32 %i.r, ptr %i.ak, align 8, !tbaa !90
  %i.am = getelementptr inbounds nuw i8, ptr %i.p, i64 36 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !89 ; 2 uses
  store i32 %i.an, ptr %i.i, align 4, !tbaa !89
  store i32 %i.ae, ptr %i.am, align 4, !tbaa !89
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 40 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !82 ; 2 uses
  store ptr %i.ap, ptr %i.j, align 8, !tbaa !82
  store ptr %i.af, ptr %i.ao, align 8, !tbaa !82
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 20 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !87
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.j, label %bb.m

bb.j:                                             ; preds = %._crit_edge
  %i.at = invoke noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0)
          to label %.noexc24 unwind label %bb.e   ; 2 uses

.noexc24:                                         ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !83 ; 2 uses
  %.not6.i.i23 = icmp eq ptr %i.av, null
  br i1 %.not6.i.i23, label %.noexc25, label %bb.k

bb.k:                                             ; preds = %.noexc24
  %i.aw = load i32, ptr %i.q, align 8, !tbaa !88
  %i.ax = sext i32 %i.aw to i64
  %i.ay = shl nsw i64 %i.ax, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.at, ptr nonnull align 2 %i.av, i64 %i.ay, i1 false)
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !83
  invoke void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.az)
          to label %.noexc25 unwind label %bb.e

.noexc25:                                         ; preds = %bb.k, %.noexc24
  store ptr %i.at, ptr %i.au, align 8, !tbaa !83
  store i32 0, ptr %i.aq, align 4, !tbaa !87
  %.pre33 = load i32, ptr %i.ak, align 8, !tbaa !240
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.ba = load ptr, ptr %i.ai, align 8, !tbaa !83
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ba, i64 %indvars.iv
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !243
  %i.bd = load ptr, ptr %i.aj, align 8, !tbaa !82
  %i.be = zext i16 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [20 x i8], ptr %i.bd, i64 %i.be
  %i.bg = getelementptr inbounds nuw [20 x i8], ptr %i.af, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bg, ptr noundef nonnull align 4 dereferenceable(20) %i.bf, i64 20, i1 false), !tbaa.struct !293
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 8, !tbaa !110
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %bb.l, label %._crit_edge, !llvm.loop !606

bb.m:                                             ; preds = %.noexc25, %._crit_edge
  %i.bk = phi i32 [ %.pre33, %.noexc25 ], [ %i.r, %._crit_edge ]
  store i32 0, ptr %i.q, align 8, !tbaa !88
  %i.bl = load i32, ptr %i.b, align 4, !tbaa !291
  %i.bm = add nsw i32 %i.bl, %i.bk
  store i32 %i.bm, ptr %i.b, align 4, !tbaa !291
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.m
  %i.bn = phi i32 [ %i.m, %bb.d ], [ %i.al, %bb.m ]
  %i.bo = phi ptr [ %i.n, %bb.d ], [ %i.ap, %bb.m ] ; 3 uses
  %i.bp = phi i32 [ %i.o, %bb.d ], [ %i.an, %bb.m ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.02028, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bq, %i.h
  br i1 %.not, label %._crit_edge31, label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN10ImDrawData14ScaleClipRectsERK6ImVec2(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #21 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
end_hunk_2
