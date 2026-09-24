Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourNavMeshQuery?download=true
inline.NumInlined: 321
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK14dtNavMeshQuery22findLocalNeighbourhoodEjPKffPK13dtQueryFilterPjS5_Pii:bb.a
  br i1 %exitcond208.not, label %.critedge165.loopexit, label %.lr.ph178

.critedge165.loopexit:                            ; preds = %.loopexit, %.preheader
  %i.gr = icmp slt i32 %.2116183, %8
  br i1 %i.gr, label %bb.u, label %bb.x

bb.u:                                             ; preds = %.critedge165.loopexit
  %i.gs = sext i32 %.2116183 to i64               ; 2 uses
  %i.gt = getelementptr inbounds [4 x i8], ptr %5, i64 %i.gs
  store i32 %i.bf, ptr %i.gt, align 4, !tbaa !54
  br i1 %.not156, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gu = getelementptr inbounds [4 x i8], ptr %6, i64 %i.gs
  store i32 %i.ay, ptr %i.gu, align 4, !tbaa !54
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.gv = add nsw i32 %.2116183, 1
  br label %bb.y

bb.x:                                             ; preds = %.critedge165.loopexit
  %i.gw = or i32 %.2120182, 16
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.3121 = phi i32 [ %.2120182, %bb.w ], [ %i.gw, %bb.x ] ; 2 uses
  %.3117 = phi i32 [ %i.gv, %bb.w ], [ %.2116183, %bb.x ] ; 2 uses
  %i.gx = icmp slt i32 %.1129181, 48
  br i1 %i.gx, label %bb.z, label %.loopexit196

bb.z:                                             ; preds = %bb.y
  %i.gy = add nsw i32 %.1129181, 1
  %i.gz = sext i32 %.1129181 to i64
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.gz
  store ptr %i.bh, ptr %i.ha, align 8, !tbaa !60
  br label %.loopexit196

.loopexit196:                                     ; preds = %._crit_edge176, %bb.z, %bb.y, %bb.p
  %.4132 = phi i32 [ %.1129181, %bb.p ], [ %.1129181, %bb.y ], [ %i.gy, %bb.z ], [ %.1129181, %._crit_edge176 ]
  %.5123 = phi i32 [ %.2120182, %bb.p ], [ %.3121, %bb.y ], [ %.3121, %bb.z ], [ %.2120182, %._crit_edge176 ]
  %.5 = phi i32 [ %.2116183, %bb.p ], [ %.3117, %bb.y ], [ %.3117, %bb.z ], [ %.2116183, %._crit_edge176 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  br label %bb.aa

bb.aa:                                            ; preds = %bb.o, %bb.n, %.loopexit196
  %.6134 = phi i32 [ %.1129181, %bb.n ], [ %.4132, %.loopexit196 ], [ %.1129181, %bb.o ]
  %.7125 = phi i32 [ %.2120182, %bb.n ], [ %.5123, %.loopexit196 ], [ %.2120182, %bb.o ]
  %.7 = phi i32 [ %.2116183, %bb.n ], [ %.5, %.loopexit196 ], [ %.2116183, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.l, %bb.m, %bb.k
  %.8136 = phi i32 [ %.1129181, %bb.k ], [ %.1129181, %bb.l ], [ %.6134, %bb.aa ], [ %.1129181, %bb.m ] ; 2 uses
  %.9127 = phi i32 [ %.2120182, %bb.k ], [ %.2120182, %bb.l ], [ %.7125, %bb.aa ], [ %.2120182, %bb.m ] ; 2 uses
  %.9 = phi i32 [ %.2116183, %bb.k ], [ %.2116183, %bb.l ], [ %.7, %bb.aa ], [ %.2116183, %bb.m ] ; 2 uses
  %i.hb = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 32
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !61 ; 2 uses
  %i.he = getelementptr inbounds nuw [12 x i8], ptr %i.hd, i64 %i.bd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 4
  %.0112 = load i32, ptr %i.hf, align 4, !tbaa !54 ; 2 uses
  %.not151 = icmp eq i32 %.0112, -1
  br i1 %.not151, label %._crit_edge187, label %bb.k

bb.ac:                                            ; preds = %._crit_edge187
  store i32 %.2116.lcssa, ptr %7, align 4, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_Z11dtVisfinitePKf.exit.thread

_Z11dtVisfinitePKf.exit.thread:                   ; preds = %bb.c, %bb.d, %bb.b, %_Z11dtVisfinitePKf.exit, %bb.e, %bb.a, %bb.ac
  %.0137 = phi i32 [ -2147483640, %bb.a ], [ %.2120.lcssa, %bb.ac ], [ -2147483640, %bb.e ], [ -2147483640, %_Z11dtVisfinitePKf.exit ], [ -2147483640, %bb.b ], [ -2147483640, %bb.d ], [ -2147483640, %bb.c ]
  ret i32 %.0137
}

declare noundef zeroext i1 @_Z19dtOverlapPolyPoly2DPKfiS0_i(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noundef range(i32 1073741824, -2147483639) i32 @_ZNK14dtNavMeshQuery19getPolyWallSegmentsEjPK13dtQueryFilterPfPjPii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, i32 noundef %6) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %7 = alloca [16 x %struct.dtSegInterval], align 16 ; 13 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %bb.ai, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %5, align 4, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8, !tbaa !56
  %i.e = load ptr, ptr %0, align 8, !tbaa !27
  %i.f = call noundef i32 @_ZNK9dtNavMesh19getTileAndPolyByRefEjPPK10dtMeshTilePPK6dtPoly(ptr noundef nonnull align 8 dereferenceable(100) %i.e, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #15
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.ah, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq ptr %2, null
  %i.i = icmp eq ptr %3, null
  %or.cond.not130 = or i1 %i.h, %i.i
  %i.j = icmp slt i32 %6, 0
  %or.cond3 = or i1 %or.cond.not130, %i.j
  br i1 %or.cond3, label %bb.ah, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.k = icmp ne ptr %4, null                     ; 4 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 30
  %i.n = load i8, ptr %i.m, align 2, !tbaa !51    ; 2 uses
  %.not215 = icmp eq i8 %i.n, 0
  br i1 %.not215, label %._crit_edge212, label %.lr.ph211

.lr.ph211:                                        ; preds = %bb.d
  %i.o = zext i8 %i.n to i32
  %i.p = add nsw i32 %i.o, -1
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 258 ; 2 uses
  br label %bb.e

._crit_edge212:                                   ; preds = %.loopexit, %bb.d
  %.0110.lcssa = phi i32 [ 0, %bb.d ], [ %.8118, %.loopexit ]
  %.0108.lcssa = phi i32 [ 1073741824, %bb.d ], [ %.8, %.loopexit ]
  store i32 %.0110.lcssa, ptr %5, align 4, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.ah

bb.e:                                             ; preds = %.lr.ph211, %.loopexit
  %indvars.iv220 = phi i64 [ 0, %.lr.ph211 ], [ %indvars.iv.next221, %.loopexit ] ; 4 uses
  %i.s = phi ptr [ %i.l, %.lr.ph211 ], [ %i.jh, %.loopexit ] ; 2 uses
  %.0106209 = phi i32 [ %i.p, %.lr.ph211 ], [ %i.jm, %.loopexit ] ; 2 uses
  %.0108207 = phi i32 [ 1073741824, %.lr.ph211 ], [ %.8, %.loopexit ] ; 5 uses
  %.0110206 = phi i32 [ 0, %.lr.ph211 ], [ %.8118, %.loopexit ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = sext i32 %.0106209 to i64                ; 3 uses
  %i.v = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !53   ; 3 uses
  %i.x = zext nneg i16 %i.w to i32
  %.not131 = icmp sgt i16 %i.w, -1
  br i1 %.not131, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.0105194 = load i32, ptr %i.s, align 4, !tbaa !54 ; 2 uses
  %.not134195 = icmp eq i32 %.0105194, -1
  br i1 %.not134195, label %._crit_edge.i.._crit_edge._crit_edge.i_crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !55
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre223 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !61
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.o
  %i.y = icmp sgt i32 %.2, 15
  br i1 %i.y, label %_ZL14insertIntervalP13dtSegIntervalRiissj.exit156, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge
  %i.z = icmp sgt i32 %.2, 0
  br i1 %i.z, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %.2 to i64   ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i16, ptr %i.ab, align 4, !tbaa !238
  %.not.i = icmp slt i16 %i.ac, 0
  br i1 %.not.i, label %bb.f, label %._crit_edge.loopexit.i

bb.f:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL14insertIntervalP13dtSegIntervalRiissj.exit, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.ad = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.ad, %._crit_edge.loopexit.i ] ; 3 uses
  %.not26.i = icmp eq i32 %.2, %.0.lcssa.i
  br i1 %.not26.i, label %._crit_edge.i.._crit_edge._crit_edge.i_crit_edge, label %bb.g

._crit_edge.i.._crit_edge._crit_edge.i_crit_edge: ; preds = %.preheader, %._crit_edge.i
  %.0182.lcssa243246251 = phi i32 [ %.2, %._crit_edge.i ], [ 0, %.preheader ] ; 2 uses
  %.pre227 = zext nneg i32 %.0182.lcssa243246251 to i64
  br label %_ZL14insertIntervalP13dtSegIntervalRiissj.exit

bb.g:                                             ; preds = %._crit_edge.i
  %i.ae = sub nuw nsw i32 %.2, %.0.lcssa.i
  %i.af = zext nneg i32 %.0.lcssa.i to i64        ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = sext i32 %i.ae to i64
  %i.aj = shl nsw i64 %i.ai, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull align 8 %i.ag, i64 %i.aj, i1 false)
  br label %_ZL14insertIntervalP13dtSegIntervalRiissj.exit

_ZL14insertIntervalP13dtSegIntervalRiissj.exit:   ; preds = %bb.f, %._crit_edge.i.._crit_edge._crit_edge.i_crit_edge, %bb.g
  %.0182.lcssa244 = phi i32 [ %.2, %bb.g ], [ %.0182.lcssa243246251, %._crit_edge.i.._crit_edge._crit_edge.i_crit_edge ], [ %.2, %bb.f ] ; 4 uses
  %.pre-phi.i = phi i64 [ %i.af, %bb.g ], [ %.pre227, %._crit_edge.i.._crit_edge._crit_edge.i_crit_edge ], [ %wide.trip.count.i, %bb.f ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.pre-phi.i ; 3 uses
  store i32 0, ptr %i.ak, align 8, !tbaa !239
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i16 -1, ptr %i.al, align 4, !tbaa !238
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 6
  store i16 0, ptr %i.am, align 2, !tbaa !240
  %i.an = add nsw i32 %.0182.lcssa244, 1          ; 4 uses
  %i.ao = icmp eq i32 %.0182.lcssa244, 15
  br i1 %i.ao, label %_ZL14insertIntervalP13dtSegIntervalRiissj.exit156, label %.preheader.i140

.preheader.i140:                                  ; preds = %_ZL14insertIntervalP13dtSegIntervalRiissj.exit
  %i.ap = icmp sgt i32 %.0182.lcssa244, -1
  br i1 %i.ap, label %.lr.ph.preheader.i148, label %._crit_edge.i141

.lr.ph.preheader.i148:                            ; preds = %.preheader.i140
  %wide.trip.count.i149 = zext nneg i32 %i.an to i64 ; 2 uses
  br label %.lr.ph.i150

.lr.ph.i150:                                      ; preds = %bb.h, %.lr.ph.preheader.i148
  %indvars.iv.i151 = phi i64 [ 0, %.lr.ph.preheader.i148 ], [ %indvars.iv.next.i154, %bb.h ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i151
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i16, ptr %i.ar, align 4, !tbaa !238
  %.not.i152 = icmp slt i16 %i.as, 256
  br i1 %.not.i152, label %bb.h, label %._crit_edge.loopexit.i153

bb.h:                                             ; preds = %.lr.ph.i150
  %indvars.iv.next.i154 = add nuw nsw i64 %indvars.iv.i151, 1 ; 2 uses
  %exitcond.not.i155 = icmp eq i64 %indvars.iv.next.i154, %wide.trip.count.i149
  br i1 %exitcond.not.i155, label %._crit_edge._crit_edge.i145, label %.lr.ph.i150

._crit_edge.loopexit.i153:                        ; preds = %.lr.ph.i150
  %i.at = trunc nuw nsw i64 %indvars.iv.i151 to i32
  br label %._crit_edge.i141

._crit_edge.i141:                                 ; preds = %._crit_edge.loopexit.i153, %.preheader.i140
  %.0.lcssa.i142 = phi i32 [ 0, %.preheader.i140 ], [ %i.at, %._crit_edge.loopexit.i153 ] ; 3 uses
  %.not26.i143 = icmp eq i32 %i.an, %.0.lcssa.i142
  br i1 %.not26.i143, label %._crit_edge.i141.._crit_edge._crit_edge.i145_crit_edge, label %bb.i

._crit_edge.i141.._crit_edge._crit_edge.i145_crit_edge: ; preds = %._crit_edge.i141
  %.pre228 = zext nneg i32 %i.an to i64
  br label %._crit_edge._crit_edge.i145

bb.i:                                             ; preds = %._crit_edge.i141
  %i.au = sub nuw nsw i32 %i.an, %.0.lcssa.i142
  %i.av = zext nneg i32 %.0.lcssa.i142 to i64     ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = sext i32 %i.au to i64
  %i.az = shl nsw i64 %i.ay, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr nonnull align 8 %i.aw, i64 %i.az, i1 false)
  br label %._crit_edge._crit_edge.i145

._crit_edge._crit_edge.i145:                      ; preds = %bb.h, %._crit_edge.i141.._crit_edge._crit_edge.i145_crit_edge, %bb.i
  %.pre-phi.i144 = phi i64 [ %i.av, %bb.i ], [ %.pre228, %._crit_edge.i141.._crit_edge._crit_edge.i145_crit_edge ], [ %wide.trip.count.i149, %bb.h ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.pre-phi.i144 ; 3 uses
  store i32 0, ptr %i.ba, align 8, !tbaa !239
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i16 255, ptr %i.bb, align 4, !tbaa !238
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 6
  store i16 256, ptr %i.bc, align 2, !tbaa !240
  %i.bd = add nsw i32 %.0182.lcssa244, 2
  br label %_ZL14insertIntervalP13dtSegIntervalRiissj.exit156

_ZL14insertIntervalP13dtSegIntervalRiissj.exit156: ; preds = %._crit_edge, %_ZL14insertIntervalP13dtSegIntervalRiissj.exit, %._crit_edge._crit_edge.i145
  %.4 = phi i32 [ 16, %_ZL14insertIntervalP13dtSegIntervalRiissj.exit ], [ %i.bd, %._crit_edge._crit_edge.i145 ], [ %.2, %._crit_edge ] ; 2 uses
  %i.be = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !52 ; 2 uses
  %i.bh = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %i.bj = getelementptr inbounds [2 x i8], ptr %i.bi, i64 %i.u
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !53
  %i.bl = zext i16 %i.bk to i64
  %.idx135 = mul nuw nsw i64 %i.bl, 12
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx135 ; 6 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv220
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !53
  %i.bp = zext i16 %i.bo to i64
  %.idx136 = mul nuw nsw i64 %i.bp, 12
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx136 ; 6 uses
  %i.br = icmp sgt i32 %.4, 1
  br i1 %i.br, label %.lr.ph203, label %.loopexit

.lr.ph203:                                        ; preds = %_ZL14insertIntervalP13dtSegIntervalRiissj.exit156
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %wide.trip.count = zext nneg i32 %.4 to i64
  br label %bb.v

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %i.bw = phi ptr [ %i.dm, %bb.o ], [ %.pre223, %.lr.ph.preheader ] ; 3 uses
  %.0105199 = phi i32 [ %.0105, %bb.o ], [ %.0105194, %.lr.ph.preheader ]
  %.0182196 = phi i32 [ %.2, %bb.o ], [ 0, %.lr.ph.preheader ] ; 11 uses
  %i.bx = zext i32 %.0105199 to i64               ; 2 uses
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %i.bw, i64 %i.bx ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !66
  %i.cb = zext i8 %i.ca to i32
  %i.cc = icmp eq i32 %.0106209, %i.cb
  br i1 %i.cc, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph
  %i.cd = load i32, ptr %i.by, align 4, !tbaa !63
  %.not139 = icmp eq i32 %i.cd, 0
  br i1 %.not139, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store ptr null, ptr %i.c, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store ptr null, ptr %i.d, align 8, !tbaa !56
  %i.ce = load ptr, ptr %0, align 8, !tbaa !27
  %i.cf = load i32, ptr %i.by, align 4, !tbaa !63
  call void @_ZNK9dtNavMesh25getTileAndPolyByRefUnsafeEjPPK10dtMeshTilePPK6dtPoly(ptr noundef nonnull align 8 dereferenceable(100) %i.ce, i32 noundef %i.cf, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #15
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 28
  %i.ci = load i16, ptr %i.ch, align 4, !tbaa !50 ; 2 uses
  %i.cj = load i16, ptr %i.q, align 4, !tbaa !13
  %i.ck = and i16 %i.cj, %i.ci
  %.not.i157 = icmp ne i16 %i.ck, 0
  %i.cl = load i16, ptr %i.r, align 2
  %i.cm = and i16 %i.cl, %i.ci
  %i.cn = icmp eq i16 %i.cm, 0
  %i.co = select i1 %.not.i157, i1 %i.cn, i1 false
  br i1 %i.co, label %bb.l, label %_ZL14insertIntervalP13dtSegIntervalRiissj.exit174

bb.l:                                             ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %i.by, i64 10
  %i.cq = load i8, ptr %i.cp, align 2, !tbaa !68
  %i.cr = zext i8 %i.cq to i16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.by, i64 11
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !69
  %i.cu = zext i8 %i.ct to i16                    ; 2 uses
  %i.cv = load i32, ptr %i.by, align 4, !tbaa !63
  %i.cw = icmp sgt i32 %.0182196, 15
  br i1 %i.cw, label %_ZL14insertIntervalP13dtSegIntervalRiissj.exit174, label %.preheader.i158

.preheader.i158:                                  ; preds = %bb.l
  %i.cx = icmp sgt i32 %.0182196, 0
  br i1 %i.cx, label %.lr.ph.preheader.i166, label %._crit_edge.i159

.lr.ph.preheader.i166:                            ; preds = %.preheader.i158
  %wide.trip.count.i167 = zext nneg i32 %.0182196 to i64 ; 2 uses
  br label %.lr.ph.i168

.lr.ph.i168:                                      ; preds = %bb.m, %.lr.ph.preheader.i166
  %indvars.iv.i169 = phi i64 [ 0, %.lr.ph.preheader.i166 ], [ %indvars.iv.next.i172, %bb.m ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.i169
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.da = load i16, ptr %i.cz, align 4, !tbaa !238
  %.not.i170 = icmp slt i16 %i.da, %i.cu
  br i1 %.not.i170, label %bb.m, label %._crit_edge.loopexit.i171

bb.m:                                             ; preds = %.lr.ph.i168
  %indvars.iv.next.i172 = add nuw nsw i64 %indvars.iv.i169, 1 ; 2 uses
  %exitcond.not.i173 = icmp eq i64 %indvars.iv.next.i172, %wide.trip.count.i167
  br i1 %exitcond.not.i173, label %._crit_edge._crit_edge.i163, label %.lr.ph.i168

._crit_edge.loopexit.i171:                        ; preds = %.lr.ph.i168
  %i.db = trunc nuw nsw i64 %indvars.iv.i169 to i32
  br label %._crit_edge.i159

._crit_edge.i159:                                 ; preds = %._crit_edge.loopexit.i171, %.preheader.i158
  %.0.lcssa.i160 = phi i32 [ 0, %.preheader.i158 ], [ %i.db, %._crit_edge.loopexit.i171 ] ; 3 uses
  %.not26.i161 = icmp eq i32 %.0182196, %.0.lcssa.i160
  br i1 %.not26.i161, label %._crit_edge.i159.._crit_edge._crit_edge.i163_crit_edge, label %bb.n

._crit_edge.i159.._crit_edge._crit_edge.i163_crit_edge: ; preds = %._crit_edge.i159
  %.pre229 = zext nneg i32 %.0182196 to i64
  br label %._crit_edge._crit_edge.i163

bb.n:                                             ; preds = %._crit_edge.i159
  %i.dc = sub nuw nsw i32 %.0182196, %.0.lcssa.i160
  %i.dd = zext nneg i32 %.0.lcssa.i160 to i64     ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.dd ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = sext i32 %i.dc to i64
  %i.dh = shl nsw i64 %i.dg, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.df, ptr nonnull align 8 %i.de, i64 %i.dh, i1 false)
  br label %._crit_edge._crit_edge.i163

._crit_edge._crit_edge.i163:                      ; preds = %bb.m, %._crit_edge.i159.._crit_edge._crit_edge.i163_crit_edge, %bb.n
  %.pre-phi.i162 = phi i64 [ %i.dd, %bb.n ], [ %.pre229, %._crit_edge.i159.._crit_edge._crit_edge.i163_crit_edge ], [ %wide.trip.count.i167, %bb.m ]
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.pre-phi.i162 ; 3 uses
  store i32 %i.cv, ptr %i.di, align 8, !tbaa !239
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  store i16 %i.cr, ptr %i.dj, align 4, !tbaa !238
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 6
  store i16 %i.cu, ptr %i.dk, align 2, !tbaa !240
  %i.dl = add nsw i32 %.0182196, 1
  br label %_ZL14insertIntervalP13dtSegIntervalRiissj.exit174

_ZL14insertIntervalP13dtSegIntervalRiissj.exit174: ; preds = %._crit_edge._crit_edge.i163, %bb.l, %bb.k
  %.1183 = phi i32 [ %.0182196, %bb.k ], [ %.0182196, %bb.l ], [ %i.dl, %._crit_edge._crit_edge.i163 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %.pre224 = load ptr, ptr %i.a, align 8, !tbaa !55
  %.phi.trans.insert225 = getelementptr inbounds nuw i8, ptr %.pre224, i64 32
  %.pre226 = load ptr, ptr %.phi.trans.insert225, align 8, !tbaa !61
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %_ZL14insertIntervalP13dtSegIntervalRiissj.exit174, %.lr.ph
  %i.dm = phi ptr [ %i.bw, %bb.j ], [ %.pre226, %_ZL14insertIntervalP13dtSegIntervalRiissj.exit174 ], [ %i.bw, %.lr.ph ] ; 2 uses
  %.2 = phi i32 [ %.0182196, %bb.j ], [ %.1183, %_ZL14insertIntervalP13dtSegIntervalRiissj.exit174 ], [ %.0182196, %.lr.ph ] ; 10 uses
  %i.dn = getelementptr inbounds nuw [12 x i8], ptr %i.dm, i64 %i.bx
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %.0105 = load i32, ptr %i.do, align 4, !tbaa !54 ; 2 uses
  %.not134 = icmp eq i32 %.0105, -1
  br i1 %.not134, label %._crit_edge, label %.lr.ph

bb.p:                                             ; preds = %bb.e
  %.not132 = icmp eq i16 %i.w, 0
  br i1 %.not132, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dp = add nsw i32 %i.x, -1                    ; 2 uses
  %i.dq = load ptr, ptr %0, align 8, !tbaa !27
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.ds = call noundef i32 @_ZNK9dtNavMesh14getPolyRefBaseEPK10dtMeshTile(ptr noundef nonnull align 8 dereferenceable(100) %i.dq, ptr noundef %i.dr) #15
  %i.dt = or i32 %i.ds, %i.dp
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !47
  %i.dx = zext nneg i32 %i.dp to i64
  %i.dy = getelementptr inbounds nuw [32 x i8], ptr %i.dw, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 28
  %i.ea = load i16, ptr %i.dz, align 4, !tbaa !50 ; 2 uses
  %i.eb = load i16, ptr %i.q, align 4, !tbaa !13
  %i.ec = and i16 %i.eb, %i.ea
  %.not.i175 = icmp ne i16 %i.ec, 0
  %i.ed = load i16, ptr %i.r, align 2
  %i.ee = and i16 %i.ed, %i.ea
  %i.ef = icmp eq i16 %i.ee, 0
  %i.eg = select i1 %.not.i175, i1 %i.ef, i1 false
  %spec.select = select i1 %i.eg, i32 %i.dt, i32 0 ; 2 uses
  %i.eh = icmp eq i32 %spec.select, 0
  %or.cond5 = or i1 %i.k, %i.eh
  br i1 %or.cond5, label %.thread, label %.loopexit

.thread:                                          ; preds = %bb.p, %bb.q
  %.1190 = phi i32 [ %spec.select, %bb.q ], [ 0, %bb.p ]
  %i.ei = icmp slt i32 %.0110206, %6
  br i1 %i.ei, label %bb.r, label %bb.u

bb.r:                                             ; preds = %.thread
  %i.ej = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !52 ; 2 uses
  %i.em = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4 ; 2 uses
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.en, i64 %i.u
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !53
  %i.eq = zext i16 %i.ep to i64
  %.idx = mul nuw nsw i64 %i.eq, 12
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx ; 3 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %indvars.iv220
  %i.et = load i16, ptr %i.es, align 2, !tbaa !53
  %i.eu = zext i16 %i.et to i64
  %.idx133 = mul nuw nsw i64 %i.eu, 12
  %i.ev = getelementptr inbounds nuw i8, ptr %i.el, i64 %.idx133 ; 3 uses
  %i.ew = mul nsw i32 %.0110206, 6
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ex ; 6 uses
  %i.ez = load float, ptr %i.er, align 4, !tbaa !15
  store float %i.ez, ptr %i.ey, align 4, !tbaa !15
  %i.fa = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !15
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  store float %i.fb, ptr %i.fc, align 4, !tbaa !15
  %i.fd = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !15
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store float %i.fe, ptr %i.ff, align 4, !tbaa !15
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  %i.fh = load float, ptr %i.ev, align 4, !tbaa !15
  store float %i.fh, ptr %i.fg, align 4, !tbaa !15
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !15
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store float %i.fj, ptr %i.fk, align 4, !tbaa !15
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !15
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ey, i64 20
  store float %i.fm, ptr %i.fn, align 4, !tbaa !15
  br i1 %i.k, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.fo = sext i32 %.0110206 to i64
  %i.fp = getelementptr inbounds [4 x i8], ptr %4, i64 %i.fo
  store i32 %.1190, ptr %i.fp, align 4, !tbaa !54
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fq = add nsw i32 %.0110206, 1
  br label %.loopexit

bb.u:                                             ; preds = %.thread
  %i.fr = or i32 %.0108207, 16
  br label %.loopexit

bb.v:                                             ; preds = %.lr.ph203, %bb.ag
  %indvars.iv = phi i64 [ 1, %.lr.ph203 ], [ %indvars.iv.next, %bb.ag ] ; 3 uses
  %.3201 = phi i32 [ %.0108207, %.lr.ph203 ], [ %.7, %bb.ag ] ; 4 uses
  %.3113200 = phi i32 [ %.0110206, %.lr.ph203 ], [ %.7117, %bb.ag ] ; 7 uses
  br i1 %i.k, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !239 ; 2 uses
  %.not137 = icmp eq i32 %i.ft, 0
  br i1 %.not137, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fu = icmp slt i32 %.3113200, %6
  br i1 %i.fu, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fw = load <2 x i16>, ptr %i.fv, align 4, !tbaa !53
  %i.fx = sitofp <2 x i16> %i.fw to <2 x float>
  %i.fy = fdiv <2 x float> %i.fx, splat (float 2.550000e+02) ; 2 uses
  %i.fz = mul nsw i32 %.3113200, 6
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ga ; 6 uses
  %i.gc = load float, ptr %i.bm, align 4, !tbaa !15 ; 2 uses
  %i.gd = load float, ptr %i.bq, align 4, !tbaa !15
  %i.ge = fsub float %i.gd, %i.gc
  %i.gf = extractelement <2 x float> %i.fy, i64 0 ; 3 uses
  %i.gg = call float @llvm.fmuladd.f32(float %i.ge, float %i.gf, float %i.gc)
  store float %i.gg, ptr %i.gb, align 4, !tbaa !15
  %i.gh = load float, ptr %i.bs, align 4, !tbaa !15 ; 2 uses
  %i.gi = load float, ptr %i.bt, align 4, !tbaa !15
  %i.gj = fsub float %i.gi, %i.gh
  %i.gk = call float @llvm.fmuladd.f32(float %i.gj, float %i.gf, float %i.gh)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  store float %i.gk, ptr %i.gl, align 4, !tbaa !15
  %i.gm = load float, ptr %i.bu, align 4, !tbaa !15 ; 2 uses
  %i.gn = load float, ptr %i.bv, align 4, !tbaa !15
  %i.go = fsub float %i.gn, %i.gm
  %i.gp = call float @llvm.fmuladd.f32(float %i.go, float %i.gf, float %i.gm)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  store float %i.gp, ptr %i.gq, align 4, !tbaa !15
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gb, i64 12
  %i.gs = load float, ptr %i.bm, align 4, !tbaa !15 ; 2 uses
  %i.gt = load float, ptr %i.bq, align 4, !tbaa !15
  %i.gu = fsub float %i.gt, %i.gs
  %i.gv = extractelement <2 x float> %i.fy, i64 1 ; 3 uses
  %i.gw = call float @llvm.fmuladd.f32(float %i.gu, float %i.gv, float %i.gs)
  store float %i.gw, ptr %i.gr, align 4, !tbaa !15
  %i.gx = load float, ptr %i.bs, align 4, !tbaa !15 ; 2 uses
  %i.gy = load float, ptr %i.bt, align 4, !tbaa !15
  %i.gz = fsub float %i.gy, %i.gx
  %i.ha = call float @llvm.fmuladd.f32(float %i.gz, float %i.gv, float %i.gx)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  store float %i.ha, ptr %i.hb, align 4, !tbaa !15
  %i.hc = load float, ptr %i.bu, align 4, !tbaa !15 ; 2 uses
  %i.hd = load float, ptr %i.bv, align 4, !tbaa !15
  %i.he = fsub float %i.hd, %i.hc
  %i.hf = call float @llvm.fmuladd.f32(float %i.he, float %i.gv, float %i.hc)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gb, i64 20
  store float %i.hf, ptr %i.hg, align 4, !tbaa !15
  %i.hh = sext i32 %.3113200 to i64
  %i.hi = getelementptr inbounds [4 x i8], ptr %4, i64 %i.hh
  store i32 %i.ft, ptr %i.hi, align 4, !tbaa !54
  %i.hj = add nsw i32 %.3113200, 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.hk = or i32 %.3201, 16
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.w, %bb.v
  %.5115 = phi i32 [ %.3113200, %bb.v ], [ %.3113200, %bb.w ], [ %i.hj, %bb.y ], [ %.3113200, %bb.z ] ; 6 uses
end_hunk_0
