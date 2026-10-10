Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/Sample_TempObstacles?download=true
inline.NumInlined: 189
inline.NumDeleted: 108
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN20Sample_TempObstacles11drawDebugUIEv:bb.a
  %i.v = icmp eq i32 %i.u, 6
  %i.w = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.26, i1 noundef zeroext %i.v) #12
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 6, ptr %i.t, align 4, !tbaa !211
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @_ZN5ImGui11EndDisabledEv() #12
  %i.x = trunc nuw i8 %.sroa.0.0 to i1
  %i.y = xor i1 %i.x, true                        ; 5 uses
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext %i.y) #12
  %i.z = load i32, ptr %i.t, align 4, !tbaa !211
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.27, i1 noundef zeroext %i.aa) #12
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.t, align 4, !tbaa !211
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_ZN5ImGui11EndDisabledEv() #12
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext %i.y) #12
  %i.ac = load i32, ptr %i.t, align 4, !tbaa !211
  %i.ad = icmp eq i32 %i.ac, 5
  %i.ae = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.28, i1 noundef zeroext %i.ad) #12
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 5, ptr %i.t, align 4, !tbaa !211
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @_ZN5ImGui11EndDisabledEv() #12
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext %i.y) #12
  %i.af = load i32, ptr %i.t, align 4, !tbaa !211
  %i.ag = icmp eq i32 %i.af, 1
  %i.ah = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.29, i1 noundef zeroext %i.ag) #12
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.t, align 4, !tbaa !211
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void @_ZN5ImGui11EndDisabledEv() #12
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext %i.y) #12
  %i.ai = load i32, ptr %i.t, align 4, !tbaa !211
  %i.aj = icmp eq i32 %i.ai, 2
  %i.ak = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.30, i1 noundef zeroext %i.aj) #12
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 2, ptr %i.t, align 4, !tbaa !211
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @_ZN5ImGui11EndDisabledEv() #12
  %i.al = trunc nuw i8 %.sroa.12.0 to i1
  %i.am = xor i1 %i.al, true
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext %i.am) #12
  %i.an = load i32, ptr %i.t, align 4, !tbaa !211
  %i.ao = icmp eq i32 %i.an, 3
  %i.ap = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.31, i1 noundef zeroext %i.ao) #12
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 3, ptr %i.t, align 4, !tbaa !211
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @_ZN5ImGui11EndDisabledEv() #12
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext %i.y) #12
  %i.aq = load i32, ptr %i.t, align 4, !tbaa !211
  %i.ar = icmp eq i32 %i.aq, 4
  %i.as = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.32, i1 noundef zeroext %i.ar) #12
  br i1 %i.as, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 4, ptr %i.t, align 4, !tbaa !211
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  tail call void @_ZN5ImGui11EndDisabledEv() #12
  tail call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext %i.s) #12
  %i.at = load i32, ptr %i.t, align 4, !tbaa !211
  %i.au = icmp eq i32 %i.at, 7
  %i.av = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.33, i1 noundef zeroext %i.au) #12
  br i1 %i.av, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 7, ptr %i.t, align 4, !tbaa !211
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  tail call void @_ZN5ImGui11EndDisabledEv() #12
  %.not11 = icmp eq i32 %spec.select.7, 0
  br i1 %.not11, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.34) #12
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.35) #12
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.36) #12
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.c
  ret void
}

declare void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN5ImGui11EndDisabledEv() local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN20Sample_TempObstacles6renderEv(ptr noundef nonnull align 8 dereferenceable(276) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 7 uses
  %i.b = alloca [3 x float], align 4              ; 7 uses
  %i.c = alloca [6 x i32], align 16               ; 4 uses
  %i.d = alloca [3 x float], align 4              ; 8 uses
  %i.e = alloca [3 x float], align 4              ; 8 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30   ; 6 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = lshr exact i64 %i.p, 2
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = sdiv i32 %i.r, 3
  %.off = add i32 %i.r, 2
  %i.t = icmp ult i32 %.off, 5
  br i1 %i.t, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 6 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !211
  %.not19 = icmp eq i32 %i.w, 1
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load float, ptr %i.u, align 4, !tbaa !132
  %i.y = fmul float %i.x, 1.000000e+01
  %i.z = fdiv float 1.000000e+00, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !63 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 168
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !288
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ac to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = lshr exact i64 %i.aj, 2
  %i.al = trunc i64 %i.ak to i32
  %i.am = sdiv i32 %i.al, 3
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ao = load float, ptr %i.an, align 8, !tbaa !212
  tail call void @_Z23duDebugDrawTriMeshSlopeP11duDebugDrawPKfiPKiS2_iff(ptr noundef nonnull %i.aa, ptr noundef %i.m, i32 noundef %i.s, ptr noundef %i.ac, ptr noundef %i.ae, i32 noundef %i.am, float noundef %i.ao, float noundef %i.z) #12
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !30
  tail call void @_ZN9InputGeom22drawOffMeshConnectionsEP11duDebugDrawb(ptr noundef nonnull align 8 dereferenceable(448) %i.ap, ptr noundef nonnull %i.aa, i1 noundef zeroext false) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !105 ; 7 uses
  %.not20 = icmp eq ptr %i.ar, null
  br i1 %.not20, label %_ZN12_GLOBAL__N_113drawObstaclesEP11duDebugDrawPK11dtTileCache.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = load i32, ptr %i.v, align 4, !tbaa !211
  %i.at = icmp eq i32 %i.as, 7
  br i1 %i.at, label %bb.g, label %.thread32

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 84 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !150 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br label %bb.h

.preheader.i:                                     ; preds = %bb.j
  %i.bd = icmp sgt i32 %i.bs, 0
  br i1 %i.bd, label %.lr.ph34.i, label %.loopexit

.lr.ph34.i:                                       ; preds = %.preheader.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 52
  br label %bb.k

bb.h:                                             ; preds = %bb.j, %.lr.ph.i
  %i.bf = phi i32 [ %i.aw, %.lr.ph.i ], [ %i.bs, %bb.j ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %i.bg = load ptr, ptr %i.ay, align 8, !tbaa !151
  %i.bh = getelementptr inbounds nuw [56 x i8], ptr %i.bg, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !154 ; 2 uses
  %.not31.i = icmp eq ptr %i.bj, null
  br i1 %.not31.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNK11dtTileCache19calcTightTileBoundsEPK22dtTileCacheLayerHeaderPfS3_(ptr noundef nonnull align 8 dereferenceable(912) %i.ar, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #12
  %i.bk = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.bl = call noundef i32 @_Z10duIntToColii(i32 noundef %i.bk, i32 noundef 64) #12 ; 2 uses
  call void @_Z15duCalcBoxColorsPjjj(ptr noundef nonnull %i.c, i32 noundef %i.bl, i32 noundef %i.bl) #12
  %i.bm = load float, ptr %i.d, align 4, !tbaa !41
  %i.bn = load float, ptr %i.az, align 4, !tbaa !41
  %i.bo = load float, ptr %i.ba, align 4, !tbaa !41
  %i.bp = load float, ptr %i.e, align 4, !tbaa !41
  %i.bq = load float, ptr %i.bb, align 4, !tbaa !41
  %i.br = load float, ptr %i.bc, align 4, !tbaa !41
  call void @_Z14duDebugDrawBoxP11duDebugDrawffffffPKj(ptr noundef nonnull %i.au, float noundef %i.bm, float noundef %i.bn, float noundef %i.bo, float noundef %i.bp, float noundef %i.bq, float noundef %i.br, ptr noundef nonnull %i.c) #12
  %.pre.i = load i32, ptr %i.av, align 4, !tbaa !150
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bs = phi i32 [ %i.bf, %bb.h ], [ %.pre.i, %bb.i ] ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp slt i64 %indvars.iv.next.i, %i.bt
  br i1 %i.bu, label %bb.h, label %.preheader.i, !llvm.loop !285

bb.k:                                             ; preds = %bb.m, %.lr.ph34.i
  %i.bv = phi i32 [ %i.bs, %.lr.ph34.i ], [ %i.cg, %bb.m ]
  %indvars.iv36.i = phi i64 [ 0, %.lr.ph34.i ], [ %indvars.iv.next37.i, %bb.m ] ; 3 uses
  %i.bw = load ptr, ptr %i.ay, align 8, !tbaa !151
  %i.bx = getelementptr inbounds nuw [56 x i8], ptr %i.bw, i64 %indvars.iv36.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !154 ; 2 uses
  %.not.i = icmp eq ptr %i.bz, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZNK11dtTileCache19calcTightTileBoundsEPK22dtTileCacheLayerHeaderPfS3_(ptr noundef nonnull align 8 dereferenceable(912) %i.ar, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #12
  %i.ca = load float, ptr %i.be, align 4, !tbaa !213
  %i.cb = fmul float %i.ca, 1.000000e-01          ; 6 uses
  %i.cc = load float, ptr %i.d, align 4, !tbaa !41
  %i.cd = fsub float %i.cc, %i.cb
  %1 = load float, ptr %i.az, align 4, !tbaa !41
  %2 = fsub float %1, %i.cb
  %3 = load float, ptr %i.ba, align 4, !tbaa !41
  %4 = fsub float %3, %i.cb
  %i.ce = load float, ptr %i.e, align 4, !tbaa !41
  %i.cf = fadd float %i.cb, %i.ce
  %5 = load float, ptr %i.bb, align 4, !tbaa !41
  %6 = fadd float %i.cb, %5
  %7 = load float, ptr %i.bc, align 4, !tbaa !41
  %8 = fadd float %i.cb, %7
  %9 = trunc nuw nsw i64 %indvars.iv36.i to i32
  %10 = call noundef i32 @_Z10duIntToColii(i32 noundef %9, i32 noundef 255) #12
  call void @_Z18duDebugDrawBoxWireP11duDebugDrawffffffjf(ptr noundef nonnull %i.au, float noundef %i.cd, float noundef %2, float noundef %4, float noundef %i.cf, float noundef %6, float noundef %8, i32 noundef %10, float noundef 2.000000e+00) #12
  %.pre39.i = load i32, ptr %i.av, align 4, !tbaa !150
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cg = phi i32 [ %i.bv, %bb.k ], [ %.pre39.i, %bb.l ] ; 2 uses
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp slt i64 %indvars.iv.next37.i, %i.ch
  br i1 %i.ci, label %bb.k, label %.loopexit, !llvm.loop !286

.loopexit:                                        ; preds = %bb.m, %.preheader.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %.pr = load ptr, ptr %i.aq, align 8, !tbaa !105 ; 2 uses
  %.not21 = icmp eq ptr %.pr, null
  br i1 %.not21, label %_ZN12_GLOBAL__N_113drawObstaclesEP11duDebugDrawPK11dtTileCache.exit, label %.thread32

.thread32:                                        ; preds = %bb.f, %.loopexit
  %i.cj = phi ptr [ %.pr, %.loopexit ], [ %i.ar, %bb.f ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 88 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !214 ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph.i26, label %_ZN12_GLOBAL__N_113drawObstaclesEP11duDebugDrawPK11dtTileCache.exit

.lr.ph.i26:                                       ; preds = %.thread32
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 120
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %.lr.ph.i26
  %i.ct = phi i32 [ %i.cm, %.lr.ph.i26 ], [ %i.ds, %bb.q ]
  %indvars.iv.i27 = phi i64 [ 0, %.lr.ph.i26 ], [ %indvars.iv.next.i29, %bb.q ] ; 2 uses
  %i.cu = load ptr, ptr %i.co, align 8, !tbaa !215
  %i.cv = getelementptr inbounds nuw [112 x i8], ptr %i.cu, i64 %indvars.iv.i27 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 99 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !217
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @_ZNK11dtTileCache17getObstacleBoundsEPK19dtTileCacheObstaclePfS3_(ptr noundef nonnull align 8 dereferenceable(912) %i.cj, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #12
  %i.cz = load i8, ptr %i.cw, align 1, !tbaa !217
  %switch.tableidx = add i8 %i.cz, -1             ; 2 uses
  %i.da = icmp ult i8 %switch.tableidx, 3
  br i1 %i.da, label %switch.lookup, label %bb.p

switch.lookup:                                    ; preds = %bb.o
  %i.db = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN20Sample_TempObstacles6renderEv, i64 %i.db
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.p

bb.p:                                             ; preds = %switch.lookup, %bb.o
  %.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %bb.o ] ; 3 uses
  %i.dc = load float, ptr %i.a, align 4, !tbaa !41
  %i.dd = load float, ptr %i.cp, align 4, !tbaa !41
  %i.de = load float, ptr %i.cq, align 4, !tbaa !41
  %i.df = load float, ptr %i.b, align 4, !tbaa !41
  %i.dg = load float, ptr %i.cr, align 4, !tbaa !41
  %i.dh = load float, ptr %i.cs, align 4, !tbaa !41
  call void @_Z19duDebugDrawCylinderP11duDebugDrawffffffj(ptr noundef nonnull %i.ck, float noundef %i.dc, float noundef %i.dd, float noundef %i.de, float noundef %i.df, float noundef %i.dg, float noundef %i.dh, i32 noundef %.0.i) #12
  %i.di = load float, ptr %i.a, align 4, !tbaa !41
  %i.dj = load float, ptr %i.cp, align 4, !tbaa !41
  %i.dk = load float, ptr %i.cq, align 4, !tbaa !41
  %i.dl = load float, ptr %i.b, align 4, !tbaa !41
  %i.dm = load float, ptr %i.cr, align 4, !tbaa !41
  %i.dn = load float, ptr %i.cs, align 4, !tbaa !41
  %i.do = lshr i32 %.0.i, 1
  %i.dp = and i32 %i.do, 32639
  %i.dq = and i32 %.0.i, -1073741824
  %i.dr = or disjoint i32 %i.dp, %i.dq
  call void @_Z23duDebugDrawCylinderWireP11duDebugDrawffffffjf(ptr noundef nonnull %i.ck, float noundef %i.di, float noundef %i.dj, float noundef %i.dk, float noundef %i.dl, float noundef %i.dm, float noundef %i.dn, i32 noundef %i.dr, float noundef 2.000000e+00) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %.pre.i28 = load i32, ptr %i.cl, align 8, !tbaa !214
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.ds = phi i32 [ %i.ct, %bb.n ], [ %.pre.i28, %bb.p ] ; 2 uses
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i27, 1 ; 2 uses
  %i.dt = sext i32 %i.ds to i64
  %i.du = icmp slt i64 %indvars.iv.next.i29, %i.dt
  br i1 %i.du, label %bb.n, label %_ZN12_GLOBAL__N_113drawObstaclesEP11duDebugDrawPK11dtTileCache.exit, !llvm.loop !287

_ZN12_GLOBAL__N_113drawObstaclesEP11duDebugDrawPK11dtTileCache.exit: ; preds = %bb.q, %bb.e, %.thread32, %.loopexit
  call void @glDepthMask(i8 noundef zeroext 0) #12
  %i.dv = load ptr, ptr %i.h, align 8, !tbaa !30  ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 84
  %i.dx = load i8, ptr %i.dw, align 4, !tbaa !131, !range !65, !noundef !66
  %i.dy = trunc nuw i8 %i.dx to i1                ; 2 uses
  %.v.i = select i1 %i.dy, i64 56, i64 192
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.v.i ; 5 uses
  %.v.i30 = select i1 %i.dy, i64 68, i64 204
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.v.i30 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.ec = load float, ptr %i.dz, align 4, !tbaa !41
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 4 ; 2 uses
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !41
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !41
  %i.eh = load float, ptr %i.ea, align 4, !tbaa !41
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !41
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.el = load float, ptr %i.ek, align 4, !tbaa !41
  call void @_Z18duDebugDrawBoxWireP11duDebugDrawffffffjf(ptr noundef nonnull %i.eb, float noundef %i.ec, float noundef %i.ee, float noundef %i.eg, float noundef %i.eh, float noundef %i.ej, float noundef %i.el, i32 noundef -2130706433, float noundef 1.000000e+00) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 0, ptr %i.f, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store i32 0, ptr %i.g, align 4, !tbaa !62
  %i.em = load float, ptr %i.u, align 4, !tbaa !132
  call void @_Z14rcCalcGridSizePKfS0_fPiS1_(ptr noundef nonnull %i.dz, ptr noundef nonnull %i.ea, float noundef %i.em, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #12
  %i.en = load i32, ptr %i.f, align 4, !tbaa !62
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !88 ; 4 uses
  %i.eq = add i32 %i.ep, -1                       ; 2 uses
  %i.er = add i32 %i.eq, %i.en
  %i.es = sdiv i32 %i.er, %i.ep
  %i.et = load i32, ptr %i.g, align 4, !tbaa !62
  %i.eu = add i32 %i.eq, %i.et
  %i.ev = sdiv i32 %i.eu, %i.ep
  %i.ew = sitofp i32 %i.ep to float
  %i.ex = load float, ptr %i.u, align 4, !tbaa !132
  %i.ey = fmul float %i.ex, %i.ew
  %i.ez = load float, ptr %i.dz, align 4, !tbaa !41
  %i.fa = load float, ptr %i.ed, align 4, !tbaa !41
  %i.fb = load float, ptr %i.ef, align 4, !tbaa !41
  call void @_Z17duDebugDrawGridXZP11duDebugDrawfffiifjf(ptr noundef nonnull %i.eb, float noundef %i.ez, float noundef %i.fa, float noundef %i.fb, i32 noundef %i.es, i32 noundef %i.ev, float noundef %i.ey, i32 noundef 1073741824, float noundef 1.000000e+00) #12
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !104 ; 2 uses
  %.not22 = icmp eq ptr %i.fd, null
  br i1 %.not22, label %bb.z, label %bb.r

bb.r:                                             ; preds = %_ZN12_GLOBAL__N_113drawObstaclesEP11duDebugDrawPK11dtTileCache.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !136 ; 2 uses
  %.not23 = icmp eq ptr %i.ff, null
  br i1 %.not23, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fg = load i32, ptr %i.v, align 4, !tbaa !211 ; 2 uses
  %switch = icmp ult i32 %i.fg, 6
  br i1 %switch, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %.not24 = icmp eq i32 %i.fg, 5
  br i1 %.not24, label %.thread37.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fi = load i8, ptr %i.fh, align 8, !tbaa !289
  call void @_Z32duDebugDrawNavMeshWithClosedListP11duDebugDrawRK9dtNavMeshRK14dtNavMeshQueryh(ptr noundef nonnull %i.eb, ptr noundef nonnull align 8 dereferenceable(100) %i.fd, ptr noundef nonnull align 8 dereferenceable(104) %i.ff, i8 noundef zeroext %i.fi) #12
  %.pr34 = load i32, ptr %i.v, align 4, !tbaa !211 ; 2 uses
  %i.fj = icmp eq i32 %.pr34, 2
  br i1 %i.fj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fk = load ptr, ptr %i.fc, align 8, !tbaa !104
  call void @_Z24duDebugDrawNavMeshBVTreeP11duDebugDrawRK9dtNavMesh(ptr noundef nonnull %i.eb, ptr noundef nonnull align 8 dereferenceable(100) %i.fk) #12
  %.pr36 = load i32, ptr %i.v, align 4, !tbaa !211
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fl = phi i32 [ %.pr34, %bb.u ], [ %.pr36, %bb.v ] ; 2 uses
  %i.fm = icmp eq i32 %i.fl, 4
  br i1 %i.fm, label %bb.x, label %.thread37

bb.x:                                             ; preds = %bb.w
  %i.fn = load ptr, ptr %i.fc, align 8, !tbaa !104
  call void @_Z25duDebugDrawNavMeshPortalsP11duDebugDrawRK9dtNavMesh(ptr noundef nonnull %i.eb, ptr noundef nonnull align 8 dereferenceable(100) %i.fn) #12
  %.pr38.pre = load i32, ptr %i.v, align 4, !tbaa !211
  br label %.thread37

.thread37:                                        ; preds = %bb.x, %bb.w
  %.pr38 = phi i32 [ %.pr38.pre, %bb.x ], [ %i.fl, %bb.w ]
  %i.fo = icmp eq i32 %.pr38, 3
  br i1 %i.fo, label %bb.y, label %.thread37.thread

bb.y:                                             ; preds = %.thread37
  %i.fp = load ptr, ptr %i.fe, align 8, !tbaa !136
  call void @_Z23duDebugDrawNavMeshNodesP11duDebugDrawRK14dtNavMeshQuery(ptr noundef nonnull %i.eb, ptr noundef nonnull align 8 dereferenceable(104) %i.fp) #12
  br label %.thread37.thread

.thread37.thread:                                 ; preds = %bb.t, %bb.y, %.thread37
  %i.fq = load ptr, ptr %i.fc, align 8, !tbaa !104
  call void @_Z32duDebugDrawNavMeshPolysWithFlagsP11duDebugDrawRK9dtNavMeshtj(ptr noundef nonnull %i.eb, ptr noundef nonnull align 8 dereferenceable(100) %i.fq, i16 noundef zeroext 16, i32 noundef -2147483648) #12
  br label %bb.z

bb.z:                                             ; preds = %bb.s, %.thread37.thread, %bb.r, %_ZN12_GLOBAL__N_113drawObstaclesEP11duDebugDrawPK11dtTileCache.exit
  call void @glDepthMask(i8 noundef zeroext 1) #12
  %i.fr = load ptr, ptr %i.h, align 8, !tbaa !30
  call void @_ZN9InputGeom17drawConvexVolumesEP11duDebugDraw(ptr noundef nonnull align 8 dereferenceable(448) %i.fr, ptr noundef nonnull %i.eb) #12
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 112
end_hunk_0
