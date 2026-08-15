inline.NumInlined: 79
inline.NumDeleted: 40
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@compute_pack_layers:bb.a
  %i.ci = phi ptr [ %i.az, %bb.h ], [ %i.cb, %oe_set_layer.exit18 ], [ %i.az, %oe_set_layer.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cj = load i32, ptr %i.e, align 8, !tbaa !32
  %i.ck = zext i32 %i.cj to i64
  %i.cl = icmp samesign ult i64 %indvars.iv.next, %i.ck
  br i1 %i.cl, label %bb.b, label %.loopexit, !llvm.loop !149

.loopexit:                                        ; preds = %bb.k, %.preheader, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 2, %.preheader ], [ 2, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

declare i32 @repo_parse_tree_gently(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @kh_put_oid_map(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly byval(%struct.object_id) align 8 captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #5 {
bb.a:
  %3 = alloca %struct.object_id, align 8          ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !55
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !56
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !57
  %i.h = shl i32 %i.g, 1
  %i.i = icmp ugt i32 %i.e, %i.h
  %. = select i1 %i.i, i32 -1, i32 1
  %i.j = add i32 %i.e, %.
  tail call fastcc void @kh_resize_oid_map(ptr noundef nonnull %0, i32 noundef %i.j)
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %i.k = load i32, ptr %0, align 8, !tbaa !15     ; 5 uses
  %i.l = add i32 %i.k, -1                         ; 2 uses
  %.val = load i32, ptr %1, align 8
  %i.m = and i32 %.val, %i.l                      ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20   ; 3 uses
  %i.p = lshr i32 %i.m, 4
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !21
  %i.t = shl i32 %i.m, 1
  %i.u = and i32 %i.t, 30
  %i.v = shl nuw i32 2, %i.u
  %i.w = and i32 %i.v, %i.s
  %.not78 = icmp eq i32 %i.w, 0
  br i1 %.not78, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %.critedge2
  %.071 = phi i32 [ %spec.select, %.critedge2 ], [ %i.k, %.preheader ] ; 2 uses
  %.069 = phi i32 [ %i.az, %.critedge2 ], [ %i.m, %.preheader ] ; 6 uses
  %.0 = phi i32 [ %i.ax, %.critedge2 ], [ 0, %.preheader ]
  %i.y = lshr i32 %.069, 4
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !21 ; 3 uses
  %i.ac = shl i32 %.069, 1
  %i.ad = and i32 %i.ac, 30                       ; 3 uses
  %i.ae = lshr i32 %i.ab, %i.ad                   ; 2 uses
  %i.af = and i32 %i.ae, 2
  %.not79 = icmp eq i32 %i.af, 0
  br i1 %.not79, label %bb.d, label %.critedge.thread.loopexit

bb.d:                                             ; preds = %bb.c
  %i.ag = and i32 %i.ae, 1
  %.not80 = icmp eq i32 %i.ag, 0
  br i1 %.not80, label %bb.e, label %.critedge2

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.ai = zext i32 %.069 to i64
  %i.aj = getelementptr inbounds nuw [36 x i8], ptr %i.ah, i64 %i.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 4 dereferenceable(36) %i.aj, i64 36, i1 false), !tbaa.struct !23
  %i.ak = load i128, ptr %3, align 8
  %i.al = load i128, ptr %1, align 8
  %i.am = xor i128 %i.ak, %i.al
  %i.an = getelementptr i8, ptr %3, i64 16
  %i.ao = getelementptr i8, ptr %1, i64 16
  %i.ap = load i128, ptr %i.an, align 8
  %i.aq = load i128, ptr %i.ao, align 8
  %i.ar = xor i128 %i.ap, %i.aq
  %i.as = or i128 %i.am, %i.ar
  %i.at = icmp ne i128 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %.not.i.i.not = icmp eq i32 %i.au, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br i1 %.not.i.i.not, label %.critedge.thread.loopexit, label %.critedge2

.critedge2:                                       ; preds = %bb.d, %bb.e
  %i.av = shl nuw nsw i32 1, %i.ad
  %i.aw = and i32 %i.av, %i.ab
  %.not82 = icmp eq i32 %i.aw, 0
  %spec.select = select i1 %.not82, i32 %.071, i32 %.069 ; 3 uses
  %i.ax = add i32 %.0, 1                          ; 2 uses
  %i.ay = add i32 %i.ax, %.069
  %i.az = and i32 %i.ay, %i.l                     ; 2 uses
  %i.ba = icmp eq i32 %i.az, %i.m
  br i1 %i.ba, label %.critedge, label %bb.c, !llvm.loop !58

.critedge:                                        ; preds = %.critedge2
  %i.bb = icmp eq i32 %spec.select, %i.k
  br i1 %i.bb, label %.critedge.thread, label %bb.f

.critedge.thread.loopexit:                        ; preds = %bb.c, %bb.e
  %.pre = shl nuw i32 2, %i.ad
  %.pre101 = and i32 %.pre, %i.ab
  %i.bc = icmp eq i32 %.pre101, 0
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge, %.critedge.thread.loopexit
  %.pre-phi102 = phi i1 [ %i.bc, %.critedge.thread.loopexit ], [ true, %.critedge ]
  %.17092 = phi i32 [ %.069, %.critedge.thread.loopexit ], [ %i.m, %.critedge ]
  %.291 = phi i32 [ %.071, %.critedge.thread.loopexit ], [ %i.k, %.critedge ] ; 2 uses
  %.not84 = icmp eq i32 %.291, %i.k
  %or.cond = select i1 %.pre-phi102, i1 true, i1 %.not84
  %spec.select87 = select i1 %or.cond, i32 %.17092, i32 %.291
  br label %bb.f

bb.f:                                             ; preds = %.critedge.thread, %bb.b, %.critedge
  %.1 = phi i32 [ %spec.select, %.critedge ], [ %i.m, %bb.b ], [ %spec.select87, %.critedge.thread ] ; 5 uses
  %i.bd = lshr i32 %.1, 4
  %i.be = zext nneg i32 %i.bd to i64              ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !21
  %i.bh = shl i32 %.1, 1
  %i.bi = and i32 %i.bh, 30                       ; 3 uses
  %i.bj = lshr i32 %i.bg, %i.bi                   ; 2 uses
  %i.bk = and i32 %i.bj, 2
  %.not85 = icmp eq i32 %i.bk, 0
  br i1 %.not85, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !22
  %i.bn = zext i32 %.1 to i64
  %i.bo = getelementptr inbounds nuw [36 x i8], ptr %i.bm, i64 %i.bn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.bo, ptr noundef nonnull align 8 dereferenceable(36) %1, i64 36, i1 false), !tbaa.struct !23
  %i.bp = shl nuw i32 3, %i.bi
  %i.bq = xor i32 %i.bp, -1
  %i.br = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.be ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !21
  %i.bu = and i32 %i.bt, %i.bq
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !21
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bw = load <2 x i32>, ptr %i.bv, align 4, !tbaa !21
  %i.bx = add <2 x i32> %i.bw, splat (i32 1)
  store <2 x i32> %i.bx, ptr %i.bv, align 4, !tbaa !21
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.by = and i32 %i.bj, 1
  %.not86 = icmp eq i32 %i.by, 0
  br i1 %.not86, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !22
  %i.cb = zext i32 %.1 to i64
  %i.cc = getelementptr inbounds nuw [36 x i8], ptr %i.ca, i64 %i.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.cc, ptr noundef nonnull align 8 dereferenceable(36) %1, i64 36, i1 false), !tbaa.struct !23
  %i.cd = shl nuw i32 3, %i.bi
  %i.ce = xor i32 %i.cd, -1
  %i.cf = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.be ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !21
  %i.ci = and i32 %i.ch, %i.ce
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !21
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !57
  %i.cl = add i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !57
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.sink = phi i32 [ 2, %bb.i ], [ 1, %bb.g ], [ 0, %bb.h ]
  store i32 %.sink, ptr %2, align 4, !tbaa !21
  ret i32 %.1
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @kh_resize_oid_map(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %.sroa.7 = alloca [32 x i8], align 4            ; 6 uses
  %.sroa.4 = alloca [32 x i8], align 4            ; 4 uses
  %i.a = add i32 %1, -1                           ; 2 uses
  %i.b = lshr i32 %i.a, 1
  %i.c = or i32 %i.b, %i.a                        ; 2 uses
  %i.d = lshr i32 %i.c, 2
  %i.e = or i32 %i.d, %i.c                        ; 2 uses
  %i.f = lshr i32 %i.e, 4
  %i.g = or i32 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i32 %i.g, 8
  %i.i = or i32 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i32 %i.i, 16
  %i.k = or i32 %i.j, %i.i
  %i.l = add i32 %i.k, 1                          ; 2 uses
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.l, i32 4) ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !57
  %i.o = uitofp i32 %spec.store.select to double
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double 7.700000e-01, double 5.000000e-01)
  %i.q = fptoui double %i.p to i32                ; 2 uses
  %.not.not = icmp ult i32 %i.n, %i.q
  br i1 %.not.not, label %st_mult.exit, label %.critedge

st_mult.exit:                                     ; preds = %bb.a
  %i.r = icmp ult i32 %i.l, 16
  %i.s = lshr i32 %spec.store.select, 2
  %i.t = and i32 %i.s, 1073741820
  %i.u = select i1 %i.r, i32 4, i32 %i.t
  %i.v = zext nneg i32 %i.u to i64                ; 2 uses
  %i.w = tail call ptr @xmalloc(i64 noundef %i.v) #15 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 -86, i64 %i.v, i1 false)
  %i.x = load i32, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.y = icmp ult i32 %i.x, %spec.store.select
  br i1 %i.y, label %bb.b, label %.lr.ph148

bb.b:                                             ; preds = %st_mult.exit
  %i.z = zext i32 %spec.store.select to i64       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !22
  %i.ac = mul nuw nsw i64 %i.z, 36
  %i.ad = tail call ptr @xrealloc(ptr noundef %i.ab, i64 noundef %i.ac) #15
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !27
  %i.ag = shl nuw nsw i64 %i.z, 3
  %i.ah = tail call ptr @xrealloc(ptr noundef %i.af, i64 noundef %i.ag) #15
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !27
  %.pre = load i32, ptr %0, align 8, !tbaa !15    ; 2 uses
  %.not145 = icmp eq i32 %.pre, 0
  br i1 %.not145, label %._crit_edge149.thread, label %.lr.ph148

.lr.ph148:                                        ; preds = %st_mult.exit, %bb.b
  %i.ai = phi i32 [ %.pre, %bb.b ], [ %i.x, %st_mult.exit ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.al = add i32 %spec.store.select, -1          ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph148, %bb.h
  %i.an = phi i32 [ %i.ai, %.lr.ph148 ], [ %i.cy, %bb.h ]
  %.1146 = phi i32 [ 0, %.lr.ph148 ], [ %i.cz, %bb.h ] ; 4 uses
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !20 ; 2 uses
  %i.ap = lshr i32 %.1146, 4
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !21 ; 2 uses
  %i.at = shl i32 %.1146, 1
  %i.au = and i32 %i.at, 30                       ; 2 uses
  %i.av = shl nuw i32 3, %i.au
  %i.aw = and i32 %i.as, %i.av
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !22
  %i.az = zext i32 %.1146 to i64                  ; 2 uses
  %i.ba = getelementptr inbounds nuw [36 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.ba, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.7.0..sroa_idx, i64 32, i1 false), !tbaa.struct !150
  %i.bb = load ptr, ptr %i.am, align 8, !tbaa !27
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.az
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !28
  %i.be = shl nuw nsw i32 1, %i.au
  %i.bf = or i32 %i.as, %i.be
  store i32 %i.bf, ptr %i.ar, align 4, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.bg = phi ptr [ %i.ao, %bb.d ], [ %i.cp, %bb.g ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.copyload, %bb.d ], [ %.sroa.0121.0.copyload, %bb.g ] ; 3 uses
  %.098 = phi ptr [ %i.bd, %bb.d ], [ %i.cn, %bb.g ] ; 2 uses
  %.095136 = and i32 %.sroa.0.0, %i.al            ; 4 uses
  %i.bh = lshr i32 %.095136, 4
  %i.bi = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !21 ; 2 uses
  %i.bl = shl i32 %.095136, 1
  %i.bm = and i32 %i.bl, 30                       ; 2 uses
  %i.bn = shl nuw i32 2, %i.bm                    ; 2 uses
  %i.bo = and i32 %i.bn, %i.bk
  %.not102137 = icmp eq i32 %i.bo, 0
  br i1 %.not102137, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.095139 = phi i32 [ %.095, %.lr.ph ], [ %.095136, %bb.e ]
  %.094138 = phi i32 [ %i.bp, %.lr.ph ], [ 0, %bb.e ]
  %i.bp = add i32 %.094138, 1                     ; 2 uses
  %i.bq = add i32 %i.bp, %.095139
  %.095 = and i32 %i.bq, %i.al                    ; 4 uses
  %i.br = lshr i32 %.095, 4
  %i.bs = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !21 ; 2 uses
  %i.bv = shl i32 %.095, 1
  %i.bw = and i32 %i.bv, 30                       ; 2 uses
  %i.bx = shl nuw i32 2, %i.bw                    ; 2 uses
  %i.by = and i32 %i.bx, %i.bu
  %.not102 = icmp eq i32 %i.by, 0
  br i1 %.not102, label %.lr.ph, label %._crit_edge, !llvm.loop !151

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.lcssa135 = phi i64 [ %i.bi, %bb.e ], [ %i.bs, %.lr.ph ] ; 3 uses
  %.095.lcssa = phi i32 [ %.095136, %bb.e ], [ %.095, %.lr.ph ] ; 3 uses
  %.lcssa131 = phi i32 [ %i.bk, %bb.e ], [ %i.bu, %.lr.ph ]
  %.lcssa130 = phi i32 [ %i.bm, %bb.e ], [ %i.bw, %.lr.ph ] ; 2 uses
  %.lcssa = phi i32 [ %i.bn, %bb.e ], [ %i.bx, %.lr.ph ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.lcssa135
  %i.ca = xor i32 %.lcssa, -1
  %i.cb = and i32 %.lcssa131, %i.ca
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !21
  %i.cc = load i32, ptr %0, align 8, !tbaa !15
  %i.cd = icmp ult i32 %.095.lcssa, %i.cc
  br i1 %i.cd, label %bb.f, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre157 = load ptr, ptr %i.ak, align 8, !tbaa !22
  br label %split

bb.f:                                             ; preds = %._crit_edge
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %.lcssa135
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !21
  %i.cg = shl nuw i32 3, %.lcssa130
  %i.ch = and i32 %i.cf, %i.cg
  %i.ci = icmp eq i32 %i.ch, 0
  %.pre158 = load ptr, ptr %i.ak, align 8, !tbaa !22 ; 2 uses
  br i1 %i.ci, label %bb.g, label %split

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %i.cj = zext i32 %.095.lcssa to i64             ; 2 uses
  %i.ck = getelementptr inbounds nuw [36 x i8], ptr %.pre158, i64 %i.cj ; 3 uses
  %.sroa.0121.0.copyload = load i32, ptr %i.ck, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4.0..sroa_idx, i64 32, i1 false), !tbaa.struct !150
  store i32 %.sroa.0.0, ptr %i.ck, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.7, i64 32, i1 false), !tbaa.struct !150
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.4, i64 32, i1 false), !tbaa.struct !150
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.cl = load ptr, ptr %i.am, align 8, !tbaa !27
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cj ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !28
  store ptr %.098, ptr %i.cm, align 8, !tbaa !28
  %i.co = shl nuw nsw i32 1, %.lcssa130
  %i.cp = load ptr, ptr %i.aj, align 8, !tbaa !20 ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.lcssa135 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !21
  %i.cs = or i32 %i.cr, %i.co
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !21
  br label %bb.e

split:                                            ; preds = %bb.f, %._crit_edge._crit_edge
  %i.ct = phi ptr [ %.pre157, %._crit_edge._crit_edge ], [ %.pre158, %bb.f ]
  %i.cu = zext i32 %.095.lcssa to i64             ; 2 uses
  %i.cv = getelementptr inbounds nuw [36 x i8], ptr %i.ct, i64 %i.cu ; 2 uses
  store i32 %.sroa.0.0, ptr %i.cv, align 4
  %.sroa.7.0..sroa_idx120 = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.7.0..sroa_idx120, ptr noundef nonnull align 4 dereferenceable(32) %.sroa.7, i64 32, i1 false), !tbaa.struct !150
  %i.cw = load ptr, ptr %i.am, align 8, !tbaa !27
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cu
  store ptr %.098, ptr %i.cx, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %.pre159 = load i32, ptr %0, align 8, !tbaa !15
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %split
  %i.cy = phi i32 [ %i.an, %bb.c ], [ %.pre159, %split ] ; 3 uses
  %i.cz = add i32 %.1146, 1                       ; 2 uses
  %.not = icmp eq i32 %i.cz, %i.cy
  br i1 %.not, label %._crit_edge149, label %bb.c, !llvm.loop !152

._crit_edge149:                                   ; preds = %bb.h
  %i.da = icmp ugt i32 %i.cy, %spec.store.select
  br i1 %i.da, label %st_mult.exit111, label %._crit_edge149.thread

st_mult.exit111:                                  ; preds = %._crit_edge149
  %i.db = zext i32 %spec.store.select to i64      ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !22
  %i.de = mul nuw nsw i64 %i.db, 36
  %i.df = tail call ptr @xrealloc(ptr noundef %i.dd, i64 noundef %i.de) #15
  store ptr %i.df, ptr %i.dc, align 8, !tbaa !22
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !27
  %i.di = shl nuw nsw i64 %i.db, 3
  %i.dj = tail call ptr @xrealloc(ptr noundef %i.dh, i64 noundef %i.di) #15
  store ptr %i.dj, ptr %i.dg, align 8, !tbaa !27
  br label %._crit_edge149.thread

._crit_edge149.thread:                            ; preds = %bb.b, %st_mult.exit111, %._crit_edge149
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.dl) #15
  store ptr %i.w, ptr %i.dk, align 8, !tbaa !20
  store i32 %spec.store.select, ptr %0, align 8, !tbaa !15
  %i.dm = load i32, ptr %i.m, align 4, !tbaa !57
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.dm, ptr %i.dn, align 8, !tbaa !55
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.q, ptr %i.do, align 4, !tbaa !56
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %._crit_edge149.thread
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @stop_progress_msg(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #14

declare i32 @config_error_nonbool(ptr noundef) local_unnamed_addr #3

declare i32 @regcomp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @strbuf_release(ptr noundef) local_unnamed_addr #3

declare i32 @git_config_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @strbuf_grow(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

declare i32 @regexec(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @warning(ptr noundef, ...) local_unnamed_addr #3

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

declare void @oid_array_append(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @regfree(ptr noundef) local_unnamed_addr #3

declare ptr @parse_object(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @oid_array_clear(ptr noundef) local_unnamed_addr #3

declare i32 @repo_parse_commit_gently(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTS10kh_oid_map", !14, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!16, !9, i64 0}
!16 = !{!"kh_oid_map", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !17, i64 16, !18, i64 24, !19, i64 32}
!17 = !{!"p1 int", !14, i64 0}
!18 = !{!"p1 _ZTS9object_id", !14, i64 0}
!19 = !{!"any p2 pointer", !14, i64 0}
!20 = !{!16, !17, i64 16}
!21 = !{!9, !9, i64 0}
!22 = !{!16, !18, i64 24}
!23 = !{i64 0, i64 32, !24, i64 32, i64 4, !21}
!24 = !{!10, !10, i64 0}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!16, !19, i64 32}
!28 = !{!14, !14, i64 0}
!29 = distinct !{!29, !26}
!30 = !{!31, !31, i64 0}
!31 = !{!"p1 _ZTS8progress", !14, i64 0}
!32 = !{!33, !9, i64 16}
!33 = !{!"packing_data", !34, i64 0, !35, i64 8, !9, i64 16, !9, i64 20, !36, i64 24, !37, i64 32, !37, i64 40, !17, i64 48, !9, i64 56, !17, i64 64, !38, i64 72, !39, i64 80, !39, i64 88, !10, i64 96, !35, i64 136, !9, i64 144, !9, i64 148, !37, i64 152, !37, i64 160, !17, i64 168, !40, i64 176, !17, i64 184}
!34 = !{!"p1 _ZTS10repository", !14, i64 0}
!35 = !{!"p1 _ZTS12object_entry", !14, i64 0}
!36 = !{!"p1 _ZTS14packing_region", !14, i64 0}
!37 = !{!"long", !10, i64 0}
!38 = !{!"p1 long", !14, i64 0}
!39 = !{!"p2 _ZTS10packed_git", !19, i64 0}
!40 = !{!"p1 omnipotent char", !14, i64 0}
!41 = !{!33, !35, i64 8}
!42 = !{!43, !35, i64 0}
!43 = !{!"tree_islands_todo", !35, i64 0, !9, i64 8}
!44 = !{!33, !17, i64 168}
!45 = !{!43, !9, i64 8}
!46 = distinct !{!46, !26}
!47 = !{!48, !14, i64 48}
!48 = !{!"tree", !49, i64 0, !14, i64 48, !37, i64 56}
!49 = !{!"object", !9, i64 0, !9, i64 0, !9, i64 4, !50, i64 8}
!50 = !{!"object_id", !10, i64 0, !9, i64 32}
!51 = !{!48, !37, i64 56}
!52 = !{!53, !9, i64 52}
!53 = !{!"name_entry", !50, i64 0, !40, i64 40, !9, i64 48, !9, i64 52}
!54 = distinct !{!54, !26}
!55 = !{!16, !9, i64 8}
!56 = !{!16, !9, i64 12}
!57 = !{!16, !9, i64 4}
!58 = distinct !{!58, !26}
!59 = !{!60}
!60 = distinct !{!60, !61}
!61 = distinct !{!61, !"LVerDomain"}
!62 = !{!63}
!63 = distinct !{!63, !61}
!64 = distinct !{!64, !26, !65, !66}
!65 = !{!"llvm.loop.isvectorized", i32 1}
!66 = !{!"llvm.loop.unroll.runtime.disable"}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = distinct !{!69, !26, !65}
!70 = distinct !{!70, !26}
!71 = !{!72, !73, i64 0}
!72 = !{!"island_load_data", !73, i64 0, !74, i64 8, !37, i64 16, !37, i64 24}
!73 = !{!"p1 _ZTS6kh_str", !14, i64 0}
!74 = !{!"p1 _ZTS17re_pattern_buffer", !14, i64 0}
!75 = !{!72, !37, i64 16}
!76 = !{!72, !74, i64 8}
!77 = distinct !{!77, !26}
!78 = !{!79, !9, i64 4}
!79 = !{!"kh_str", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !17, i64 16, !80, i64 24, !19, i64 32}
!80 = !{!"p2 omnipotent char", !19, i64 0}
!81 = !{!79, !9, i64 0}
!82 = !{!79, !17, i64 16}
!83 = !{!79, !19, i64 32}
!84 = !{!85, !85, i64 0}
!85 = !{!"p1 _ZTS13remote_island", !14, i64 0}
!86 = distinct !{!86, !26}
!87 = distinct !{!87, !26}
!88 = !{!89, !37, i64 0}
!89 = !{!"remote_island", !37, i64 0, !90, i64 8}
!90 = !{!"oid_array", !18, i64 0, !37, i64 8, !37, i64 16, !9, i64 24}
!91 = distinct !{!91, !26}
!92 = !{!40, !40, i64 0}
!93 = distinct !{!93, !26}
!94 = !{!79, !80, i64 24}
!95 = distinct !{!95, !26}
!96 = !{!89, !37, i64 16}
!97 = !{!89, !18, i64 8}
!98 = !{!99, !100, i64 48}
!99 = !{!"tag", !49, i64 0, !100, i64 48, !40, i64 56, !37, i64 64}
!100 = !{!"p1 _ZTS6object", !14, i64 0}
!101 = distinct !{!101, !26}
!102 = distinct !{!102, !26}
!103 = distinct !{!103, !26}
!104 = !{!105, !105, i64 0}
!105 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!106 = !{!72, !37, i64 24}
!107 = !{!108, !40, i64 16}
!108 = !{!"strbuf", !37, i64 0, !37, i64 8, !40, i64 16}
!109 = !{!108, !37, i64 8}
!110 = !{!111, !40, i64 0}
!111 = !{!"reference", !40, i64 0, !40, i64 8, !18, i64 16, !18, i64 24, !9, i64 32}
!112 = distinct !{!112, !26}
!113 = !{!114, !9, i64 0}
!114 = !{!"", !9, i64 0, !9, i64 4}
!115 = !{!108, !37, i64 0}
!116 = !{!114, !9, i64 4}
!117 = distinct !{!117, !26}
!118 = !{!111, !18, i64 16}
!119 = !{!79, !9, i64 8}
!120 = !{!79, !9, i64 12}
!121 = distinct !{!121, !26}
!122 = distinct !{!122, !26}
!123 = distinct !{!123, !26}
!124 = !{!125}
!125 = distinct !{!125, !126}
!126 = distinct !{!126, !"LVerDomain"}
!127 = !{!128}
!128 = distinct !{!128, !126}
!129 = distinct !{!129, !26, !65, !66}
!130 = distinct !{!130, !68}
!131 = distinct !{!131, !26, !65}
!132 = !{!133, !133, i64 0}
!133 = !{!"p1 _ZTS11commit_list", !14, i64 0}
!134 = !{!135, !136, i64 0}
!135 = !{!"commit_list", !136, i64 0, !133, i64 8}
!136 = !{!"p1 _ZTS6commit", !14, i64 0}
!137 = !{!138}
!138 = distinct !{!138, !139}
!139 = distinct !{!139, !"LVerDomain"}
!140 = !{!141}
!141 = distinct !{!141, !139}
!142 = distinct !{!142, !26, !65, !66}
!143 = distinct !{!143, !68}
!144 = distinct !{!144, !26, !65}
!145 = distinct !{!145, !26}
!146 = distinct !{!146, !26}
!147 = !{!33, !40, i64 176}
!148 = !{!33, !9, i64 20}
!149 = distinct !{!149, !26}
!150 = !{i64 0, i64 28, !24, i64 28, i64 4, !21}
!151 = distinct !{!151, !26}
!152 = distinct !{!152, !26}
end_hunk_0
