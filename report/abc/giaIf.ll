Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaIf?download=true
inline.NumInlined: 1199
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 85
begin_hunk_0_@Gia_ManFromIfLogicCofVars:bb.a
  %i.ts = shl nsw i64 %i.tr, 2
  %scevgep.i205 = getelementptr i8, ptr %i.tq, i64 %i.ts
  %i.tt = sub nsw i64 %wide.trip.count.i.i204, %i.tr
  %i.tu = shl nuw nsw i64 %i.tt, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i205, i8 0, i64 %i.tu, i1 false), !tbaa !19
  br label %._crit_edge.i.i206

._crit_edge.i.i206:                               ; preds = %.lr.ph.i.i203, %Vec_IntGrow.exit.i.i201
  store i32 %i.ta, ptr %i.dv, align 4, !tbaa !56
  br label %Vec_IntSetEntry.exit211

Vec_IntSetEntry.exit211:                          ; preds = %bb.cs, %._crit_edge.i.i206
  %.val.i207 = load ptr, ptr %i.dw, align 8, !tbaa !51
  %i.tv = sext i32 %i.sz to i64
  %i.tw = getelementptr inbounds [4 x i8], ptr %.val.i207, i64 %i.tv
  store i32 %.val105, ptr %i.tw, align 4, !tbaa !19
  %.val104 = load i32, ptr %i.dr, align 4, !tbaa !56
  %i.tx = load i32, ptr %i.du, align 4, !tbaa !56 ; 7 uses
  %i.ty = load i32, ptr %7, align 8, !tbaa !64
  %i.tz = icmp eq i32 %i.tx, %i.ty
  br i1 %i.tz, label %bb.dd, label %Vec_IntSetEntry.exit211.Vec_IntPush.exit219_crit_edge

Vec_IntSetEntry.exit211.Vec_IntPush.exit219_crit_edge: ; preds = %Vec_IntSetEntry.exit211
  %.pre309 = load ptr, ptr %i.dx, align 8, !tbaa !51
  br label %Vec_IntPush.exit219

bb.dd:                                            ; preds = %Vec_IntSetEntry.exit211
  %i.ua = icmp slt i32 %i.tx, 16
  br i1 %i.ua, label %bb.de, label %bb.dh

bb.de:                                            ; preds = %bb.dd
  %i.ub = load ptr, ptr %i.dx, align 8, !tbaa !51 ; 2 uses
  %.not9.i.i217 = icmp eq ptr %i.ub, null
  br i1 %.not9.i.i217, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.uc = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ub, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i215

bb.dg:                                            ; preds = %bb.de
  %i.ud = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i215

bb.dh:                                            ; preds = %bb.dd
  %i.ue = icmp samesign ult i32 %i.tx, 1073741823
  %i.uf = shl nuw nsw i32 %i.tx, 1
  %spec.select.i212 = select i1 %i.ue, i32 %i.uf, i32 2147483647 ; 4 uses
  %.not.i9.i213 = icmp samesign ult i32 %i.tx, %spec.select.i212
  %.pre310 = load ptr, ptr %i.dx, align 8, !tbaa !51 ; 3 uses
  br i1 %.not.i9.i213, label %bb.di, label %Vec_IntPush.exit219

bb.di:                                            ; preds = %bb.dh
  %.not9.i10.i214 = icmp eq ptr %.pre310, null
  %i.ug = zext nneg i32 %spec.select.i212 to i64
  %i.uh = shl nuw nsw i64 %i.ug, 2                ; 2 uses
  br i1 %.not9.i10.i214, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ui = call ptr @realloc(ptr noundef nonnull %.pre310, i64 noundef %i.uh) #30
  br label %Vec_IntGrow.exit11.sink.split.i215

bb.dk:                                            ; preds = %bb.di
  %i.uj = call noalias ptr @malloc(i64 noundef %i.uh) #31
  br label %Vec_IntGrow.exit11.sink.split.i215

Vec_IntGrow.exit11.sink.split.i215:               ; preds = %bb.dj, %bb.dk, %bb.df, %bb.dg
  %i.uk = phi ptr [ %i.ud, %bb.dg ], [ %i.uc, %bb.df ], [ %i.ui, %bb.dj ], [ %i.uj, %bb.dk ] ; 2 uses
  %spec.select.sink.i216 = phi i32 [ 16, %bb.dg ], [ 16, %bb.df ], [ %spec.select.i212, %bb.dj ], [ %spec.select.i212, %bb.dk ]
  store ptr %i.uk, ptr %i.dx, align 8, !tbaa !51
  store i32 %spec.select.sink.i216, ptr %7, align 8, !tbaa !64
  %.pre311 = load i32, ptr %i.du, align 4, !tbaa !56
  br label %Vec_IntPush.exit219

Vec_IntPush.exit219:                              ; preds = %Vec_IntSetEntry.exit211.Vec_IntPush.exit219_crit_edge, %bb.dh, %Vec_IntGrow.exit11.sink.split.i215
  %i.ul = phi i32 [ %i.tx, %Vec_IntSetEntry.exit211.Vec_IntPush.exit219_crit_edge ], [ %i.tx, %bb.dh ], [ %.pre311, %Vec_IntGrow.exit11.sink.split.i215 ] ; 2 uses
  %i.um = phi ptr [ %.pre309, %Vec_IntSetEntry.exit211.Vec_IntPush.exit219_crit_edge ], [ %.pre310, %bb.dh ], [ %i.uk, %Vec_IntGrow.exit11.sink.split.i215 ] ; 3 uses
  %i.un = add nsw i32 %i.ul, 1
  store i32 %i.un, ptr %i.du, align 4, !tbaa !56
  %i.uo = sext i32 %i.ul to i64
  %i.up = getelementptr inbounds [4 x i8], ptr %i.um, i64 %i.uo
  store i32 %.val104, ptr %i.up, align 4, !tbaa !19
  %.val103257 = load i32, ptr %i.dr, align 4, !tbaa !56
  %i.uq = icmp sgt i32 %.val103257, 0
  br i1 %i.uq, label %.lr.ph259, label %.critedge4

.lr.ph259:                                        ; preds = %Vec_IntPush.exit219, %Vec_IntPush.exit227
  %i.ur = phi ptr [ %i.vf, %Vec_IntPush.exit227 ], [ %i.um, %Vec_IntPush.exit219 ] ; 3 uses
  %indvars.iv287 = phi i64 [ %indvars.iv.next288, %Vec_IntPush.exit227 ], [ 0, %Vec_IntPush.exit219 ] ; 2 uses
  %.val = load ptr, ptr %i.dt, align 8, !tbaa !51
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv287
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !19
  %i.uu = ashr i32 %i.ut, 1
  %i.uv = load i32, ptr %i.du, align 4, !tbaa !56 ; 7 uses
  %i.uw = load i32, ptr %7, align 8, !tbaa !64
  %i.ux = icmp eq i32 %i.uv, %i.uw
  br i1 %i.ux, label %bb.dl, label %Vec_IntPush.exit227

bb.dl:                                            ; preds = %.lr.ph259
  %i.uy = icmp slt i32 %i.uv, 16
  br i1 %i.uy, label %Vec_IntGrow.exit11.sink.split.i223, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.uz = icmp samesign ult i32 %i.uv, 1073741823
  %i.va = shl nuw nsw i32 %i.uv, 1
  %spec.select.i220 = select i1 %i.uz, i32 %i.va, i32 2147483647 ; 3 uses
  %.not.i9.i221 = icmp samesign ult i32 %i.uv, %spec.select.i220
  br i1 %.not.i9.i221, label %bb.dn, label %Vec_IntPush.exit227

bb.dn:                                            ; preds = %bb.dm
  %i.vb = zext nneg i32 %spec.select.i220 to i64
  %i.vc = shl nuw nsw i64 %i.vb, 2
  br label %Vec_IntGrow.exit11.sink.split.i223

Vec_IntGrow.exit11.sink.split.i223:               ; preds = %bb.dl, %bb.dn
  %.sink403 = phi i64 [ %i.vc, %bb.dn ], [ 64, %bb.dl ]
  %spec.select.sink.i224 = phi i32 [ %spec.select.i220, %bb.dn ], [ 16, %bb.dl ]
  %i.vd = call ptr @realloc(ptr noundef nonnull %i.ur, i64 noundef %.sink403) #30 ; 2 uses
  store ptr %i.vd, ptr %i.dx, align 8, !tbaa !51
  store i32 %spec.select.sink.i224, ptr %7, align 8, !tbaa !64
  %.pre312 = load i32, ptr %i.du, align 4, !tbaa !56
  br label %Vec_IntPush.exit227

Vec_IntPush.exit227:                              ; preds = %.lr.ph259, %bb.dm, %Vec_IntGrow.exit11.sink.split.i223
  %i.ve = phi i32 [ %i.uv, %.lr.ph259 ], [ %i.uv, %bb.dm ], [ %.pre312, %Vec_IntGrow.exit11.sink.split.i223 ] ; 2 uses
  %i.vf = phi ptr [ %i.ur, %.lr.ph259 ], [ %i.ur, %bb.dm ], [ %i.vd, %Vec_IntGrow.exit11.sink.split.i223 ] ; 3 uses
  %i.vg = add nsw i32 %i.ve, 1
  store i32 %i.vg, ptr %i.du, align 4, !tbaa !56
  %i.vh = sext i32 %i.ve to i64
  %i.vi = getelementptr inbounds [4 x i8], ptr %i.vf, i64 %i.vh
  store i32 %i.uu, ptr %i.vi, align 4, !tbaa !19
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1 ; 2 uses
  %.val103 = load i32, ptr %i.dr, align 4, !tbaa !56
  %i.vj = sext i32 %.val103 to i64
  %i.vk = icmp slt i64 %indvars.iv.next288, %i.vj
  br i1 %i.vk, label %.lr.ph259, label %.critedge4, !llvm.loop !339

.critedge4:                                       ; preds = %Vec_IntPush.exit227, %Vec_IntPush.exit219
  %i.vl = phi ptr [ %i.um, %Vec_IntPush.exit219 ], [ %i.vf, %Vec_IntPush.exit227 ] ; 3 uses
  %i.vm = load i32, ptr %i.du, align 4, !tbaa !56 ; 7 uses
  %i.vn = load i32, ptr %7, align 8, !tbaa !64
  %i.vo = icmp eq i32 %i.vm, %i.vn
  br i1 %i.vo, label %bb.do, label %Vec_IntPush.exit235

bb.do:                                            ; preds = %.critedge4
  %i.vp = icmp slt i32 %i.vm, 16
  br i1 %i.vp, label %Vec_IntGrow.exit11.sink.split.i231, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.vq = icmp samesign ult i32 %i.vm, 1073741823
  %i.vr = shl nuw nsw i32 %i.vm, 1
  %spec.select.i228 = select i1 %i.vq, i32 %i.vr, i32 2147483647 ; 3 uses
  %.not.i9.i229 = icmp samesign ult i32 %i.vm, %spec.select.i228
  br i1 %.not.i9.i229, label %bb.dq, label %Vec_IntPush.exit235

bb.dq:                                            ; preds = %bb.dp
  %i.vs = zext nneg i32 %spec.select.i228 to i64
  %i.vt = shl nuw nsw i64 %i.vs, 2
  br label %Vec_IntGrow.exit11.sink.split.i231

Vec_IntGrow.exit11.sink.split.i231:               ; preds = %bb.do, %bb.dq
  %.sink404 = phi i64 [ %i.vt, %bb.dq ], [ 64, %bb.do ]
  %spec.select.sink.i232 = phi i32 [ %spec.select.i228, %bb.dq ], [ 16, %bb.do ]
  %i.vu = call ptr @realloc(ptr noundef nonnull %i.vl, i64 noundef %.sink404) #30 ; 2 uses
  store ptr %i.vu, ptr %i.dx, align 8, !tbaa !51
  store i32 %spec.select.sink.i232, ptr %7, align 8, !tbaa !64
  %.pre313 = load i32, ptr %i.du, align 4, !tbaa !56
  br label %Vec_IntPush.exit235

Vec_IntPush.exit235:                              ; preds = %.critedge4, %bb.dp, %Vec_IntGrow.exit11.sink.split.i231
  %i.vv = phi i32 [ %i.vm, %.critedge4 ], [ %i.vm, %bb.dp ], [ %.pre313, %Vec_IntGrow.exit11.sink.split.i231 ] ; 2 uses
  %i.vw = phi ptr [ %i.vl, %.critedge4 ], [ %i.vl, %bb.dp ], [ %i.vu, %Vec_IntGrow.exit11.sink.split.i231 ]
  %i.vx = ashr i32 %.094, 1
  %i.vy = sub nsw i32 0, %i.vx
  %i.vz = add nsw i32 %i.vv, 1
  store i32 %i.vz, ptr %i.du, align 4, !tbaa !56
  %i.wa = sext i32 %i.vv to i64
  %i.wb = getelementptr inbounds [4 x i8], ptr %i.vw, i64 %i.wa
  store i32 %i.vy, ptr %i.wb, align 4, !tbaa !19
  %i.wc = load i64, ptr %i.g, align 4
  %i.wd = trunc i64 %i.wc to i32
  %i.we = lshr i32 %i.wd, 12
  %i.wf = and i32 %i.we, 1
  %i.wg = xor i32 %i.wf, %.1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %i.wg
}

; Function Attrs: nounwind uwtable
define i32 @Gia_ManFromIfLogicAndVars(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6, ptr nofree noundef captures(none) %7) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [12 x i32], align 16              ; 7 uses
  %i.b = alloca [12 x i32], align 16              ; 7 uses
  %i.c = alloca [12 x i32], align 16              ; 7 uses
  %i.d = alloca [64 x i64], align 16              ; 14 uses
  %i.e = alloca [64 x i64], align 16              ; 14 uses
  %i.f = alloca [64 x i64], align 16              ; 8 uses
  %i.g = alloca [2 x i64], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #29
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 2 uses
  %i.i = load i64, ptr %i.h, align 4              ; 2 uses
  %i.j = trunc i64 %i.i to i32                    ; 5 uses
  %i.k = lshr i32 %i.j, 24                        ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !114
  %i.n = ashr i32 %i.m, 1                         ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1704
  %i.p = zext nneg i32 %i.k to i64                ; 8 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !125
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %.val68 = load ptr, ptr %i.s, align 8, !tbaa !51
  %i.t = sext i32 %i.n to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %.val68, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !19   ; 4 uses
  %i.w = and i32 %i.v, 65535                      ; 7 uses
  %i.x = lshr i32 %i.v, 16
  %i.y = and i32 %i.x, 16383                      ; 7 uses
  %i.z = lshr i32 %i.v, 30                        ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1064
  %i.ab = lshr i64 %i.i, 24
  %i.ac = and i64 %i.ab, 255
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !113 ; 5 uses
  %.not.i = icmp eq ptr %i.ae, null
  %indvars.iv169.sroa.gep316 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br i1 %.not.i, label %If_CutTruthWR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !117
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !118
  %i.aj = ashr i32 %i.n, %i.ai
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !111
  %i.an = load i32, ptr %i.ae, align 8, !tbaa !119
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !120
  %i.aq = and i32 %i.ap, %i.n
  %i.ar = mul nsw i32 %i.aq, %i.an
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.as
  br label %If_CutTruthWR.exit

If_CutTruthWR.exit:                               ; preds = %bb.a, %bb.b
  %i.au = phi ptr [ %i.at, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 652
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.p
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !19 ; 4 uses
  %i.ay = and i32 %i.v, 1073741824
  %.not.i75 = icmp eq i32 %i.ay, 0
  %i.az = icmp sgt i32 %i.ax, 0                   ; 2 uses
  br i1 %.not.i75, label %.preheader.i, label %.preheader14.i

.preheader14.i:                                   ; preds = %If_CutTruthWR.exit
  br i1 %i.az, label %.lr.ph.preheader.i, label %Abc_TtCopy.exit

.lr.ph.preheader.i:                               ; preds = %.preheader14.i
  %wide.trip.count.i = zext nneg i32 %i.ax to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.ax, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load = load <2 x i64>, ptr %i.ba, align 8, !tbaa !110
  %wide.load247 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !110
  %i.bc = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.bd = xor <2 x i64> %wide.load247, splat (i64 -1)
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <2 x i64> %i.bc, ptr %i.be, align 16, !tbaa !110
  store <2 x i64> %i.bd, ptr %i.bf, align 16, !tbaa !110
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !340

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %Abc_TtCopy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %If_CutTruthWR.exit
  br i1 %i.az, label %.lr.ph18.preheader.i, label %Abc_TtCopy.exit

.lr.ph18.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count24.i = zext nneg i32 %i.ax to i64
  %i.bh = shl nuw nsw i64 %wide.trip.count24.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.f, ptr align 8 %i.au, i64 %i.bh, i1 false), !tbaa !110
  br label %Abc_TtCopy.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !110
  %i.bk = xor i64 %i.bj, -1
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !110
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Abc_TtCopy.exit, label %.lr.ph.i, !llvm.loop !341

Abc_TtCopy.exit:                                  ; preds = %.lr.ph.i, %middle.block, %.lr.ph18.preheader.i, %.preheader14.i, %.preheader.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.bn = call fastcc i64 @Abc_TtDeriveBiDecOne(ptr noundef nonnull readonly %i.f, i32 noundef range(i32 0, 256) %i.k, i32 noundef range(i32 0, 65536) %i.w) ; 3 uses
  store i64 %i.bn, ptr %i.g, align 16, !tbaa !110
  %i.bo = call fastcc i64 @Abc_TtDeriveBiDecOne(ptr noundef nonnull readonly %i.f, i32 noundef range(i32 0, 256) %i.k, i32 noundef range(i32 0, 16384) %i.y) ; 3 uses
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  %i.bp = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 range(i32 0, 65536) %i.w) ; 4 uses
  %i.bq = tail call range(i32 0, 15) i32 @llvm.ctpop.i32(i32 range(i32 0, 16384) %i.y) ; 4 uses
  %i.br = icmp ult i32 %i.j, 117440512
  %i.bs = add nsw i32 %i.k, -6
  %i.bt = shl nuw i32 1, %i.bs
  %i.bu = select i1 %i.br, i32 1, i32 %i.bt       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.d, i8 0, i64 512, i1 false)
  store i64 %i.bn, ptr %i.d, align 16, !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.e, i8 0, i64 512, i1 false)
  store i64 %i.bo, ptr %i.e, align 16, !tbaa !110
  %.not81.i.i = icmp ne i32 %i.k, 0               ; 4 uses
  br i1 %.not81.i.i, label %.lr.ph.i.i.preheader, label %._crit_edge.i.i

.lr.ph.i.i.preheader:                             ; preds = %Abc_TtCopy.exit
  %min.iters.check249 = icmp ult i32 %i.j, 134217728
  br i1 %min.iters.check249, label %.lr.ph.i.i.preheader293, label %vector.ph250

vector.ph250:                                     ; preds = %.lr.ph.i.i.preheader
  %n.vec251 = and i64 %i.p, 248                   ; 3 uses
  br label %vector.body252

vector.body252:                                   ; preds = %vector.body252, %vector.ph250
  %index253 = phi i64 [ 0, %vector.ph250 ], [ %index.next254, %vector.body252 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph250 ], [ %vec.ind.next, %vector.body252 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index253 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <4 x i32> %vec.ind, ptr %i.bv, align 16, !tbaa !19
  store <4 x i32> %step.add, ptr %i.bw, align 16, !tbaa !19
  %index.next254 = add nuw i64 %index253, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.bx = icmp eq i64 %index.next254, %n.vec251
  br i1 %i.bx, label %middle.block255, label %vector.body252, !llvm.loop !342

middle.block255:                                  ; preds = %vector.body252
  %cmp.n256 = icmp eq i64 %n.vec251, %i.p
  br i1 %cmp.n256, label %.lr.ph72.i.i.preheader, label %.lr.ph.i.i.preheader293

.lr.ph.i.i.preheader293:                          ; preds = %.lr.ph.i.i.preheader, %middle.block255
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec251, %middle.block255 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader293, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader293 ] ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i.i
  %i.bz = trunc nuw nsw i64 %indvars.iv.i.i to i32
  store i32 %i.bz, ptr %i.by, align 4, !tbaa !19
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.p
  br i1 %exitcond.not.i.i, label %.lr.ph72.i.i.preheader, label %.lr.ph.i.i, !llvm.loop !343

.lr.ph72.i.i.preheader:                           ; preds = %.lr.ph.i.i, %middle.block255
  %i.ca = add nsw i32 %i.k, -1                    ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %.lr.ph72.i.i.epil.preheader, label %.lr.ph72.i.i.preheader.new

.lr.ph72.i.i.preheader.new:                       ; preds = %.lr.ph72.i.i.preheader
  %unroll_iter = and i32 %i.k, 254
  br label %.lr.ph72.i.i

.lr.ph72.i.i:                                     ; preds = %bb.e, %.lr.ph72.i.i.preheader.new
  %.071.i.i = phi i32 [ 0, %.lr.ph72.i.i.preheader.new ], [ %.1.i.i.1, %bb.e ] ; 3 uses
  %.14270.i.i = phi i32 [ 0, %.lr.ph72.i.i.preheader.new ], [ %i.cn, %bb.e ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph72.i.i.preheader.new ], [ %niter.next.1, %bb.e ]
  %i.cc = shl nuw i32 1, %.14270.i.i
  %i.cd = and i32 %i.cc, %i.w
  %.not47.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not47.i.i, label %.lr.ph72.i.i.1, label %bb.c

bb.c:                                             ; preds = %.lr.ph72.i.i
  %i.ce = add nsw i32 %.071.i.i, 1
  %i.cf = sext i32 %.071.i.i to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cf
  store i32 %.14270.i.i, ptr %i.cg, align 4, !tbaa !19
  br label %.lr.ph72.i.i.1

.lr.ph72.i.i.1:                                   ; preds = %bb.c, %.lr.ph72.i.i
  %.1.i.i = phi i32 [ %i.ce, %bb.c ], [ %.071.i.i, %.lr.ph72.i.i ] ; 3 uses
  %i.ch = shl nuw i32 2, %.14270.i.i
  %i.ci = and i32 %i.ch, %i.w
  %.not47.i.i.1 = icmp eq i32 %i.ci, 0
  br i1 %.not47.i.i.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph72.i.i.1
  %i.cj = or disjoint i32 %.14270.i.i, 1
  %i.ck = add nsw i32 %.1.i.i, 1
  %i.cl = sext i32 %.1.i.i to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cl
  store i32 %i.cj, ptr %i.cm, align 4, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph72.i.i.1
  %.1.i.i.1 = phi i32 [ %i.ck, %bb.d ], [ %.1.i.i, %.lr.ph72.i.i.1 ] ; 2 uses
  %i.cn = add nuw nsw i32 %.14270.i.i, 2          ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
end_hunk_0
begin_hunk_1_@Gia_ManFromIfLogicAndVars:bb.a

scalar.ph276:                                     ; preds = %scalar.ph276.preheader, %scalar.ph276
  %indvars.iv.i53.i.i = phi i64 [ %indvars.iv.next.i55.i.i.3, %scalar.ph276 ], [ 0, %scalar.ph276.preheader ] ; 6 uses
  %niter310 = phi i64 [ %niter310.next.3, %scalar.ph276 ], [ 0, %scalar.ph276.preheader ]
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i53.i.i
  %i.fl = load i64, ptr %i.fk, align 16, !tbaa !110
  %gep.i54.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i52.i.i, i64 %indvars.iv.i53.i.i
  store i64 %i.fl, ptr %gep.i54.i.i, align 8, !tbaa !110
  %indvars.iv.next.i55.i.i = or disjoint i64 %indvars.iv.i53.i.i, 1 ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i55.i.i
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !110
  %gep.i54.i.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i52.i.i, i64 %indvars.iv.next.i55.i.i
  store i64 %i.fn, ptr %gep.i54.i.i.1, align 8, !tbaa !110
  %indvars.iv.next.i55.i.i.1 = or disjoint i64 %indvars.iv.i53.i.i, 2 ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i55.i.i.1
  %i.fp = load i64, ptr %i.fo, align 16, !tbaa !110
  %gep.i54.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i52.i.i, i64 %indvars.iv.next.i55.i.i.1
  store i64 %i.fp, ptr %gep.i54.i.i.2, align 8, !tbaa !110
  %indvars.iv.next.i55.i.i.2 = or disjoint i64 %indvars.iv.i53.i.i, 3 ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i55.i.i.2
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !110
  %gep.i54.i.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i52.i.i, i64 %indvars.iv.next.i55.i.i.2
  store i64 %i.fr, ptr %gep.i54.i.i.3, align 8, !tbaa !110
  %indvars.iv.next.i55.i.i.3 = add nuw nsw i64 %indvars.iv.i53.i.i, 4 ; 2 uses
  %niter310.next.3 = add i64 %niter310, 4         ; 2 uses
  %niter310.ncmp.3 = icmp eq i64 %niter310.next.3, %unroll_iter309
  br i1 %niter310.ncmp.3, label %middle.block287.loopexit.unr-lcssa, label %scalar.ph276, !llvm.loop !351

middle.block287.loopexit.unr-lcssa:               ; preds = %scalar.ph276
  br i1 %lcmp.mod307.not, label %middle.block287, label %scalar.ph276.epil.preheader

scalar.ph276.epil.preheader:                      ; preds = %middle.block287.loopexit.unr-lcssa, %scalar.ph276.preheader
  %indvars.iv.i53.i.i.epil.init = phi i64 [ 0, %scalar.ph276.preheader ], [ %indvars.iv.next.i55.i.i.3, %middle.block287.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod308)
  br label %scalar.ph276.epil

scalar.ph276.epil:                                ; preds = %scalar.ph276.epil, %scalar.ph276.epil.preheader
  %indvars.iv.i53.i.i.epil = phi i64 [ %indvars.iv.next.i55.i.i.epil, %scalar.ph276.epil ], [ %indvars.iv.i53.i.i.epil.init, %scalar.ph276.epil.preheader ] ; 3 uses
  %epil.iter306 = phi i64 [ %epil.iter306.next, %scalar.ph276.epil ], [ 0, %scalar.ph276.epil.preheader ]
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i53.i.i.epil
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !110
  %gep.i54.i.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i52.i.i, i64 %indvars.iv.i53.i.i.epil
  store i64 %i.ft, ptr %gep.i54.i.i.epil, align 8, !tbaa !110
  %indvars.iv.next.i55.i.i.epil = add nuw nsw i64 %indvars.iv.i53.i.i.epil, 1
  %epil.iter306.next = add i64 %epil.iter306, 1   ; 2 uses
  %epil.iter306.cmp.not = icmp eq i64 %epil.iter306.next, %xtraiter305
  br i1 %epil.iter306.cmp.not, label %middle.block287, label %scalar.ph276.epil, !llvm.loop !352

middle.block287:                                  ; preds = %vector.body282, %middle.block287.loopexit.unr-lcssa, %scalar.ph276.epil
  %indvars.iv.next27.i57.i.i = add nuw nsw i64 %indvars.iv26.i51.i.i, %i.ex ; 2 uses
  %i.fu = icmp samesign ult i64 %indvars.iv.next27.i57.i.i, %i.ey
  %indvar.next275 = add i64 %indvar274, 1
  br i1 %i.fu, label %.preheader.i50.i.i, label %Abc_TtStretch6.exit58.i.i, !llvm.loop !349

Abc_TtStretch6.exit58.i.i:                        ; preds = %middle.block287, %bb.l, %Abc_TtStretch6.exit.i.i
  %i.fv = icmp ne i32 %i.w, 0
  %i.fw = and i1 %.not81.i.i, %i.fv
  br i1 %i.fw, label %.lr.ph.preheader.i.i.i, label %Abc_TtExpand.exit.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %Abc_TtStretch6.exit58.i.i
  %i.fx = add nsw i32 %i.bp, -1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.p, %.lr.ph.preheader.i.i.i
  %indvars.iv.i59.i.i = phi i64 [ %i.p, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i60.i.i, %bb.p ] ; 2 uses
  %.017.i.i.i = phi i32 [ %i.fx, %.lr.ph.preheader.i.i.i ], [ %.1.i.i.i, %bb.p ] ; 4 uses
  %indvars.iv.next.i60.i.i = add nsw i64 %indvars.iv.i59.i.i, -1 ; 4 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i60.i.i
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !19
  %i.ga = zext nneg i32 %.017.i.i.i to i64        ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !19
  %i.gd = icmp sgt i32 %i.fz, %i.gc
  br i1 %i.gd, label %bb.p, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.ge = icmp samesign ugt i64 %indvars.iv.next.i60.i.i, %i.ga
  br i1 %i.ge, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.gf = trunc nuw nsw i64 %indvars.iv.next.i60.i.i to i32
  call fastcc void @Abc_TtSwapVars(ptr noundef nonnull %i.d, i32 noundef range(i32 0, 256) %i.k, i32 noundef %.017.i.i.i, i32 noundef %i.gf)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.gg = add nsw i32 %.017.i.i.i, -1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i.i.i
  %.1.i.i.i = phi i32 [ %.017.i.i.i, %.lr.ph.i.i.i ], [ %i.gg, %bb.o ] ; 2 uses
  %i.gh = icmp samesign ugt i64 %indvars.iv.i59.i.i, 1
  %i.gi = icmp sgt i32 %.1.i.i.i, -1
  %i.gj = select i1 %i.gh, i1 %i.gi, i1 false
  br i1 %i.gj, label %.lr.ph.i.i.i, label %Abc_TtExpand.exit.i.i, !llvm.loop !353

Abc_TtExpand.exit.i.i:                            ; preds = %bb.p, %Abc_TtStretch6.exit58.i.i
  %i.gk = icmp ne i32 %i.y, 0
  %i.gl = and i1 %.not81.i.i, %i.gk
  br i1 %i.gl, label %.lr.ph.preheader.i61.i.i, label %Abc_TtExpand.exit67.i.i

.lr.ph.preheader.i61.i.i:                         ; preds = %Abc_TtExpand.exit.i.i
  %i.gm = add nsw i32 %i.bq, -1
  br label %.lr.ph.i62.i.i

.lr.ph.i62.i.i:                                   ; preds = %bb.t, %.lr.ph.preheader.i61.i.i
  %indvars.iv.i63.i.i = phi i64 [ %i.p, %.lr.ph.preheader.i61.i.i ], [ %indvars.iv.next.i65.i.i, %bb.t ] ; 2 uses
  %.017.i64.i.i = phi i32 [ %i.gm, %.lr.ph.preheader.i61.i.i ], [ %.1.i66.i.i, %bb.t ] ; 4 uses
  %indvars.iv.next.i65.i.i = add nsw i64 %indvars.iv.i63.i.i, -1 ; 4 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i65.i.i
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !19
  %i.gp = zext nneg i32 %.017.i64.i.i to i64      ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !19
  %i.gs = icmp sgt i32 %i.go, %i.gr
  br i1 %i.gs, label %bb.t, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i62.i.i
  %i.gt = icmp samesign ugt i64 %indvars.iv.next.i65.i.i, %i.gp
  br i1 %i.gt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gu = trunc nuw nsw i64 %indvars.iv.next.i65.i.i to i32
  call fastcc void @Abc_TtSwapVars(ptr noundef nonnull %i.e, i32 noundef range(i32 0, 256) %i.k, i32 noundef %.017.i64.i.i, i32 noundef %i.gu)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.gv = add nsw i32 %.017.i64.i.i, -1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i62.i.i
  %.1.i66.i.i = phi i32 [ %.017.i64.i.i, %.lr.ph.i62.i.i ], [ %i.gv, %bb.s ] ; 2 uses
  %i.gw = icmp samesign ugt i64 %indvars.iv.i63.i.i, 1
  %i.gx = icmp sgt i32 %.1.i66.i.i, -1
  %i.gy = select i1 %i.gw, i1 %i.gx, i1 false
  br i1 %i.gy, label %.lr.ph.i62.i.i, label %Abc_TtExpand.exit67.i.i, !llvm.loop !353

Abc_TtExpand.exit67.i.i:                          ; preds = %bb.t, %Abc_TtExpand.exit.i.i
  %i.gz = icmp sgt i32 %i.bu, 0
  br i1 %i.gz, label %.lr.ph77.preheader.i.i, label %Abc_TtVerifyBiDec.exit.thread.i

.lr.ph77.preheader.i.i:                           ; preds = %Abc_TtExpand.exit67.i.i
  %wide.trip.count90.i.i = zext nneg i32 %i.bu to i64
  br label %.lr.ph77.i.i

bb.u:                                             ; preds = %.lr.ph77.i.i
  %indvars.iv.next88.i.i = add nuw nsw i64 %indvars.iv87.i.i, 1 ; 2 uses
  %exitcond91.not.i.i = icmp eq i64 %indvars.iv.next88.i.i, %wide.trip.count90.i.i
  br i1 %exitcond91.not.i.i, label %Abc_TtVerifyBiDec.exit.thread.i, label %.lr.ph77.i.i, !llvm.loop !354

.lr.ph77.i.i:                                     ; preds = %bb.u, %.lr.ph77.preheader.i.i
  %indvars.iv87.i.i = phi i64 [ 0, %.lr.ph77.preheader.i.i ], [ %indvars.iv.next88.i.i, %bb.u ] ; 4 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv87.i.i
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !110
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv87.i.i
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !110
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv87.i.i
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !110
  %i.hg = and i64 %i.hf, %i.hd
  %.not.i.i = icmp eq i64 %i.hb, %i.hg
  br i1 %.not.i.i, label %bb.u, label %bb.v

Abc_TtVerifyBiDec.exit.thread.i:                  ; preds = %bb.u, %Abc_TtExpand.exit67.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %Abc_TtDeriveBiDec.exit

bb.v:                                             ; preds = %.lr.ph77.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  %.pre = load i64, ptr %i.g, align 16
  %.pre172 = load i64, ptr %i.bm, align 8
  br label %Abc_TtDeriveBiDec.exit

Abc_TtDeriveBiDec.exit:                           ; preds = %Abc_TtVerifyBiDec.exit.thread.i, %bb.v
  %i.hh = phi i64 [ %i.bo, %Abc_TtVerifyBiDec.exit.thread.i ], [ %.pre172, %bb.v ]
  %i.hi = phi i64 [ %i.bn, %Abc_TtVerifyBiDec.exit.thread.i ], [ %.pre, %bb.v ]
  %i.hj = and i32 %i.z, 1                         ; 3 uses
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = sub nsw i64 0, %i.hk                    ; 2 uses
  %i.hm = xor i64 %i.hi, %i.hl
  store i64 %i.hm, ptr %i.g, align 16, !tbaa !110
  %i.hn = xor i64 %i.hh, %i.hl
  store i64 %i.hn, ptr %i.bm, align 8, !tbaa !110
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 9 uses
  %i.hp = getelementptr i8, ptr %3, i64 8
  %i.hq = getelementptr i8, ptr %4, i64 8         ; 5 uses
  %i.hr = getelementptr i8, ptr %7, i64 4         ; 23 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 6 uses
  %i.ht = getelementptr i8, ptr %6, i64 8         ; 10 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 13 uses
  br label %bb.w

bb.w:                                             ; preds = %Abc_TtDeriveBiDec.exit, %bb.bh
  %.sroa.0.0 = phi i32 [ undef, %Abc_TtDeriveBiDec.exit ], [ %spec.select, %bb.bh ]
  %.sroa.5.0 = phi i32 [ undef, %Abc_TtDeriveBiDec.exit ], [ %spec.select245, %bb.bh ]
  %.sroa.idx172 = phi i32 [ %i.w, %Abc_TtDeriveBiDec.exit ], [ %i.y, %bb.bh ]
  %.sroa.idx = phi i1 [ false, %Abc_TtDeriveBiDec.exit ], [ true, %bb.bh ] ; 2 uses
  %8 = phi i1 [ true, %Abc_TtDeriveBiDec.exit ], [ false, %bb.bh ]
  %indvars.iv169.sroa.phi315 = phi ptr [ %i.g, %Abc_TtDeriveBiDec.exit ], [ %indvars.iv169.sroa.gep316, %bb.bh ]
  store i32 0, ptr %i.ho, align 4, !tbaa !56
  br i1 %.not81.i.i, label %bb.x, label %._crit_edge

bb.x:                                             ; preds = %bb.w, %bb.ah
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ah ], [ 0, %bb.w ] ; 3 uses
  %i.hv = trunc nuw nsw i64 %indvars.iv to i32
  %i.hw = shl nuw i32 1, %i.hv
  %i.hx = and i32 %.sroa.idx172, %i.hw
  %.not66 = icmp eq i32 %i.hx, 0
  br i1 %.not66, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.val67 = load ptr, ptr %i.hp, align 8, !tbaa !51
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %.val67, i64 %indvars.iv
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !19
  %i.ia = load i32, ptr %i.ho, align 4, !tbaa !56 ; 7 uses
  %i.ib = load i32, ptr %4, align 8, !tbaa !64
  %i.ic = icmp eq i32 %i.ia, %i.ib
  br i1 %i.ic, label %bb.z, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.y
  %.pre173 = load ptr, ptr %i.hq, align 8, !tbaa !51
  br label %Vec_IntPush.exit

bb.z:                                             ; preds = %bb.y
  %i.id = icmp slt i32 %i.ia, 16
  br i1 %i.id, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.ie = load ptr, ptr %i.hq, align 8, !tbaa !51 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ie, null
  br i1 %.not9.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.if = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ie, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ac:                                            ; preds = %bb.aa
  %i.ig = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ad:                                            ; preds = %bb.z
  %i.ih = icmp samesign ult i32 %i.ia, 1073741823
  %i.ii = shl nuw nsw i32 %i.ia, 1
  %spec.select.i = select i1 %i.ih, i32 %i.ii, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.ia, %spec.select.i
  %.pre174 = load ptr, ptr %i.hq, align 8, !tbaa !51 ; 3 uses
  br i1 %.not.i9.i, label %bb.ae, label %Vec_IntPush.exit

bb.ae:                                            ; preds = %bb.ad
  %.not9.i10.i = icmp eq ptr %.pre174, null
  %i.ij = zext nneg i32 %spec.select.i to i64
  %i.ik = shl nuw nsw i64 %i.ij, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.il = call ptr @realloc(ptr noundef nonnull %.pre174, i64 noundef %i.ik) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.ag:                                            ; preds = %bb.ae
  %i.im = call noalias ptr @malloc(i64 noundef %i.ik) #31
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.af, %bb.ag, %bb.ab, %bb.ac
  %i.in = phi ptr [ %i.ig, %bb.ac ], [ %i.if, %bb.ab ], [ %i.il, %bb.af ], [ %i.im, %bb.ag ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.ac ], [ 16, %bb.ab ], [ %spec.select.i, %bb.af ], [ %spec.select.i, %bb.ag ]
  store ptr %i.in, ptr %i.hq, align 8, !tbaa !51
  store i32 %spec.select.sink.i, ptr %4, align 8, !tbaa !64
  %.pre175 = load i32, ptr %i.ho, align 4, !tbaa !56
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.ad, %Vec_IntGrow.exit11.sink.split.i
  %i.io = phi i32 [ %i.ia, %.Vec_IntPush.exit_crit_edge ], [ %i.ia, %bb.ad ], [ %.pre175, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ip = phi ptr [ %.pre173, %.Vec_IntPush.exit_crit_edge ], [ %.pre174, %bb.ad ], [ %i.in, %Vec_IntGrow.exit11.sink.split.i ]
  %i.iq = add nsw i32 %i.io, 1
  store i32 %i.iq, ptr %i.ho, align 4, !tbaa !56
  %i.ir = sext i32 %i.io to i64
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.ir
  store i32 %i.hz, ptr %i.is, align 4, !tbaa !19
  br label %bb.ah

bb.ah:                                            ; preds = %bb.x, %Vec_IntPush.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.p
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.x, !llvm.loop !355

._crit_edge.loopexit:                             ; preds = %bb.ah
  %.val74.pre = load i32, ptr %i.ho, align 4, !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.w
  %.val74 = phi i32 [ %.val74.pre, %._crit_edge.loopexit ], [ 0, %bb.w ]
  %i.it = call i32 @Kit_TruthToGia(ptr noundef %0, ptr noundef nonnull %indvars.iv169.sroa.phi315, i32 noundef %.val74, ptr noundef %5, ptr noundef nonnull %4, i32 noundef 0) #29 ; 3 uses
  %spec.select = select i1 %.sroa.idx, i32 %.sroa.0.0, i32 %i.it ; 3 uses
  %spec.select245 = select i1 %.sroa.idx, i32 %i.it, i32 %.sroa.5.0 ; 3 uses
  %.val73 = load i32, ptr %i.ho, align 4, !tbaa !56
  %i.iu = icmp eq i32 %.val73, 1
  br i1 %i.iu, label %bb.bh, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge
  %i.iv = ashr i32 %i.it, 1                       ; 7 uses
  %.val72 = load i32, ptr %i.hr, align 4, !tbaa !56
  %i.iw = add nsw i32 %i.iv, 1                    ; 5 uses
  %i.ix = load i32, ptr %i.hs, align 4, !tbaa !56 ; 4 uses
  %.not.i.not.i = icmp slt i32 %i.iv, %i.ix
  br i1 %.not.i.not.i, label %Vec_IntSetEntry.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.iy = load i32, ptr %6, align 8, !tbaa !64    ; 4 uses
  %i.iz = shl nsw i32 %i.iy, 1                    ; 2 uses
  %.not.i76 = icmp slt i32 %i.iv, %i.iz
  %.not.i.i.not.i = icmp sgt i32 %i.iy, %i.iv     ; 2 uses
  br i1 %.not.i76, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %.not.i.i.not.i, label %Vec_IntGrow.exit.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ja = load ptr, ptr %i.ht, align 8, !tbaa !51 ; 2 uses
  %.not9.i.i.i = icmp eq ptr %i.ja, null
  %i.jb = sext i32 %i.iw to i64
  %i.jc = shl nsw i64 %i.jb, 2                    ; 2 uses
  br i1 %.not9.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jd = call ptr @realloc(ptr noundef nonnull %i.ja, i64 noundef %i.jc) #30
  br label %Vec_IntGrow.exit.sink.split.i.i

bb.an:                                            ; preds = %bb.al
  %i.je = call noalias ptr @malloc(i64 noundef %i.jc) #31
  br label %Vec_IntGrow.exit.sink.split.i.i

bb.ao:                                            ; preds = %bb.aj
  br i1 %.not.i.i.not.i, label %Vec_IntGrow.exit.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jf = icmp slt i32 %i.iy, 1073741823
  %spec.select.i.i = select i1 %i.jf, i32 %i.iz, i32 2147483647 ; 4 uses
  %.not.i22.i.i = icmp slt i32 %i.iy, %spec.select.i.i
  br i1 %.not.i22.i.i, label %bb.aq, label %Vec_IntGrow.exit.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.jg = load ptr, ptr %i.ht, align 8, !tbaa !51 ; 2 uses
  %.not9.i23.i.i = icmp eq ptr %i.jg, null
  %i.jh = sext i32 %spec.select.i.i to i64
  %i.ji = shl nuw nsw i64 %i.jh, 2                ; 2 uses
  br i1 %.not9.i23.i.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jj = call ptr @realloc(ptr noundef nonnull %i.jg, i64 noundef %i.ji) #30
  br label %Vec_IntGrow.exit.sink.split.i.i

bb.as:                                            ; preds = %bb.aq
  %i.jk = call noalias ptr @malloc(i64 noundef %i.ji) #31
  br label %Vec_IntGrow.exit.sink.split.i.i

Vec_IntGrow.exit.sink.split.i.i:                  ; preds = %bb.ar, %bb.as, %bb.am, %bb.an
  %storemerge239 = phi ptr [ %i.je, %bb.an ], [ %i.jd, %bb.am ], [ %i.jj, %bb.ar ], [ %i.jk, %bb.as ]
  %spec.select.sink.i.i = phi i32 [ %i.iw, %bb.an ], [ %i.iw, %bb.am ], [ %spec.select.i.i, %bb.ar ], [ %spec.select.i.i, %bb.as ]
  store ptr %storemerge239, ptr %i.ht, align 8, !tbaa !51
  store i32 %spec.select.sink.i.i, ptr %6, align 8, !tbaa !64
  %.pre.i = load i32, ptr %i.hs, align 4, !tbaa !56
  br label %Vec_IntGrow.exit.i.i

Vec_IntGrow.exit.i.i:                             ; preds = %Vec_IntGrow.exit.sink.split.i.i, %bb.ap, %bb.ao, %bb.ak
  %i.jl = phi i32 [ %.pre.i, %Vec_IntGrow.exit.sink.split.i.i ], [ %i.ix, %bb.ap ], [ %i.ix, %bb.ao ], [ %i.ix, %bb.ak ] ; 2 uses
  %.not4.i = icmp sgt i32 %i.jl, %i.iv
  br i1 %.not4.i, label %._crit_edge.i.i79, label %.lr.ph.i.i77

.lr.ph.i.i77:                                     ; preds = %Vec_IntGrow.exit.i.i
  %i.jm = load ptr, ptr %i.ht, align 8, !tbaa !51
  %i.jn = sext i32 %i.jl to i64                   ; 2 uses
  %wide.trip.count.i.i78 = sext i32 %i.iw to i64
  %i.jo = shl nsw i64 %i.jn, 2
  %scevgep.i = getelementptr i8, ptr %i.jm, i64 %i.jo
  %i.jp = sub nsw i64 %wide.trip.count.i.i78, %i.jn
  %i.jq = shl nuw nsw i64 %i.jp, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.jq, i1 false), !tbaa !19
  br label %._crit_edge.i.i79

._crit_edge.i.i79:                                ; preds = %.lr.ph.i.i77, %Vec_IntGrow.exit.i.i
  store i32 %i.iw, ptr %i.hs, align 4, !tbaa !56
  br label %Vec_IntSetEntry.exit

Vec_IntSetEntry.exit:                             ; preds = %bb.ai, %._crit_edge.i.i79
  %.val.i = load ptr, ptr %i.ht, align 8, !tbaa !51
  %i.jr = sext i32 %i.iv to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.jr
  store i32 %.val72, ptr %i.js, align 4, !tbaa !19
  %.val71 = load i32, ptr %i.ho, align 4, !tbaa !56
  %i.jt = load i32, ptr %i.hr, align 4, !tbaa !56 ; 7 uses
  %i.ju = load i32, ptr %7, align 8, !tbaa !64
  %i.jv = icmp eq i32 %i.jt, %i.ju
  br i1 %i.jv, label %bb.at, label %Vec_IntSetEntry.exit.Vec_IntPush.exit87_crit_edge

Vec_IntSetEntry.exit.Vec_IntPush.exit87_crit_edge: ; preds = %Vec_IntSetEntry.exit
  %.pre177 = load ptr, ptr %i.hu, align 8, !tbaa !51
  br label %Vec_IntPush.exit87

bb.at:                                            ; preds = %Vec_IntSetEntry.exit
  %i.jw = icmp slt i32 %i.jt, 16
  br i1 %i.jw, label %bb.au, label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.jx = load ptr, ptr %i.hu, align 8, !tbaa !51 ; 2 uses
  %.not9.i.i85 = icmp eq ptr %i.jx, null
  br i1 %.not9.i.i85, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jy = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.jx, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i83

bb.aw:                                            ; preds = %bb.au
  %i.jz = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i83

bb.ax:                                            ; preds = %bb.at
  %i.ka = icmp samesign ult i32 %i.jt, 1073741823
  %i.kb = shl nuw nsw i32 %i.jt, 1
  %spec.select.i80 = select i1 %i.ka, i32 %i.kb, i32 2147483647 ; 4 uses
  %.not.i9.i81 = icmp samesign ult i32 %i.jt, %spec.select.i80
  %.pre178 = load ptr, ptr %i.hu, align 8, !tbaa !51 ; 3 uses
  br i1 %.not.i9.i81, label %bb.ay, label %Vec_IntPush.exit87

bb.ay:                                            ; preds = %bb.ax
  %.not9.i10.i82 = icmp eq ptr %.pre178, null
  %i.kc = zext nneg i32 %spec.select.i80 to i64
  %i.kd = shl nuw nsw i64 %i.kc, 2                ; 2 uses
  br i1 %.not9.i10.i82, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ke = call ptr @realloc(ptr noundef nonnull %.pre178, i64 noundef %i.kd) #30
  br label %Vec_IntGrow.exit11.sink.split.i83

bb.ba:                                            ; preds = %bb.ay
  %i.kf = call noalias ptr @malloc(i64 noundef %i.kd) #31
  br label %Vec_IntGrow.exit11.sink.split.i83

Vec_IntGrow.exit11.sink.split.i83:                ; preds = %bb.az, %bb.ba, %bb.av, %bb.aw
  %i.kg = phi ptr [ %i.jz, %bb.aw ], [ %i.jy, %bb.av ], [ %i.ke, %bb.az ], [ %i.kf, %bb.ba ] ; 2 uses
  %spec.select.sink.i84 = phi i32 [ 16, %bb.aw ], [ 16, %bb.av ], [ %spec.select.i80, %bb.az ], [ %spec.select.i80, %bb.ba ]
  store ptr %i.kg, ptr %i.hu, align 8, !tbaa !51
  store i32 %spec.select.sink.i84, ptr %7, align 8, !tbaa !64
  %.pre179 = load i32, ptr %i.hr, align 4, !tbaa !56
  br label %Vec_IntPush.exit87

Vec_IntPush.exit87:                               ; preds = %Vec_IntSetEntry.exit.Vec_IntPush.exit87_crit_edge, %bb.ax, %Vec_IntGrow.exit11.sink.split.i83
  %i.kh = phi i32 [ %i.jt, %Vec_IntSetEntry.exit.Vec_IntPush.exit87_crit_edge ], [ %i.jt, %bb.ax ], [ %.pre179, %Vec_IntGrow.exit11.sink.split.i83 ] ; 2 uses
  %i.ki = phi ptr [ %.pre177, %Vec_IntSetEntry.exit.Vec_IntPush.exit87_crit_edge ], [ %.pre178, %bb.ax ], [ %i.kg, %Vec_IntGrow.exit11.sink.split.i83 ] ; 3 uses
  %i.kj = add nsw i32 %i.kh, 1
  store i32 %i.kj, ptr %i.hr, align 4, !tbaa !56
  %i.kk = sext i32 %i.kh to i64
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.kk
  store i32 %.val71, ptr %i.kl, align 4, !tbaa !19
  %.val70160 = load i32, ptr %i.ho, align 4, !tbaa !56
  %i.km = icmp sgt i32 %.val70160, 0
  br i1 %i.km, label %.lr.ph162, label %.critedge

.lr.ph162:                                        ; preds = %Vec_IntPush.exit87, %Vec_IntPush.exit95
  %i.kn = phi ptr [ %i.lb, %Vec_IntPush.exit95 ], [ %i.ki, %Vec_IntPush.exit87 ] ; 3 uses
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %Vec_IntPush.exit95 ], [ 0, %Vec_IntPush.exit87 ] ; 2 uses
  %.val = load ptr, ptr %i.hq, align 8, !tbaa !51
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv166
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !19
  %i.kq = ashr i32 %i.kp, 1
  %i.kr = load i32, ptr %i.hr, align 4, !tbaa !56 ; 7 uses
  %i.ks = load i32, ptr %7, align 8, !tbaa !64
  %i.kt = icmp eq i32 %i.kr, %i.ks
  br i1 %i.kt, label %bb.bb, label %Vec_IntPush.exit95

bb.bb:                                            ; preds = %.lr.ph162
  %i.ku = icmp slt i32 %i.kr, 16
  br i1 %i.ku, label %Vec_IntGrow.exit11.sink.split.i91, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kv = icmp samesign ult i32 %i.kr, 1073741823
  %i.kw = shl nuw nsw i32 %i.kr, 1
  %spec.select.i88 = select i1 %i.kv, i32 %i.kw, i32 2147483647 ; 3 uses
  %.not.i9.i89 = icmp samesign ult i32 %i.kr, %spec.select.i88
  br i1 %.not.i9.i89, label %bb.bd, label %Vec_IntPush.exit95

bb.bd:                                            ; preds = %bb.bc
  %i.kx = zext nneg i32 %spec.select.i88 to i64
  %i.ky = shl nuw nsw i64 %i.kx, 2
  br label %Vec_IntGrow.exit11.sink.split.i91

Vec_IntGrow.exit11.sink.split.i91:                ; preds = %bb.bb, %bb.bd
  %.sink = phi i64 [ %i.ky, %bb.bd ], [ 64, %bb.bb ]
  %spec.select.sink.i92 = phi i32 [ %spec.select.i88, %bb.bd ], [ 16, %bb.bb ]
  %i.kz = call ptr @realloc(ptr noundef nonnull %i.kn, i64 noundef %.sink) #30 ; 2 uses
  store ptr %i.kz, ptr %i.hu, align 8, !tbaa !51
  store i32 %spec.select.sink.i92, ptr %7, align 8, !tbaa !64
  %.pre180 = load i32, ptr %i.hr, align 4, !tbaa !56
  br label %Vec_IntPush.exit95

Vec_IntPush.exit95:                               ; preds = %.lr.ph162, %bb.bc, %Vec_IntGrow.exit11.sink.split.i91
  %i.la = phi i32 [ %i.kr, %.lr.ph162 ], [ %i.kr, %bb.bc ], [ %.pre180, %Vec_IntGrow.exit11.sink.split.i91 ] ; 2 uses
  %i.lb = phi ptr [ %i.kn, %.lr.ph162 ], [ %i.kn, %bb.bc ], [ %i.kz, %Vec_IntGrow.exit11.sink.split.i91 ] ; 3 uses
  %i.lc = add nsw i32 %i.la, 1
  store i32 %i.lc, ptr %i.hr, align 4, !tbaa !56
  %i.ld = sext i32 %i.la to i64
  %i.le = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %i.ld
  store i32 %i.kq, ptr %i.le, align 4, !tbaa !19
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %.val70 = load i32, ptr %i.ho, align 4, !tbaa !56
  %i.lf = sext i32 %.val70 to i64
  %i.lg = icmp slt i64 %indvars.iv.next167, %i.lf
  br i1 %i.lg, label %.lr.ph162, label %.critedge, !llvm.loop !356

.critedge:                                        ; preds = %Vec_IntPush.exit95, %Vec_IntPush.exit87
  %i.lh = phi ptr [ %i.ki, %Vec_IntPush.exit87 ], [ %i.lb, %Vec_IntPush.exit95 ] ; 3 uses
  %i.li = load i32, ptr %i.hr, align 4, !tbaa !56 ; 7 uses
  %i.lj = load i32, ptr %7, align 8, !tbaa !64
  %i.lk = icmp eq i32 %i.li, %i.lj
  br i1 %i.lk, label %bb.be, label %Vec_IntPush.exit103

bb.be:                                            ; preds = %.critedge
  %i.ll = icmp slt i32 %i.li, 16
  br i1 %i.ll, label %Vec_IntGrow.exit11.sink.split.i99, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.lm = icmp samesign ult i32 %i.li, 1073741823
  %i.ln = shl nuw nsw i32 %i.li, 1
  %spec.select.i96 = select i1 %i.lm, i32 %i.ln, i32 2147483647 ; 3 uses
  %.not.i9.i97 = icmp samesign ult i32 %i.li, %spec.select.i96
  br i1 %.not.i9.i97, label %bb.bg, label %Vec_IntPush.exit103

bb.bg:                                            ; preds = %bb.bf
  %i.lo = zext nneg i32 %spec.select.i96 to i64
  %i.lp = shl nuw nsw i64 %i.lo, 2
  br label %Vec_IntGrow.exit11.sink.split.i99

Vec_IntGrow.exit11.sink.split.i99:                ; preds = %bb.be, %bb.bg
  %.sink243 = phi i64 [ %i.lp, %bb.bg ], [ 64, %bb.be ]
  %spec.select.sink.i100 = phi i32 [ %spec.select.i96, %bb.bg ], [ 16, %bb.be ]
  %i.lq = call ptr @realloc(ptr noundef nonnull %i.lh, i64 noundef %.sink243) #30 ; 2 uses
  store ptr %i.lq, ptr %i.hu, align 8, !tbaa !51
  store i32 %spec.select.sink.i100, ptr %7, align 8, !tbaa !64
  %.pre181 = load i32, ptr %i.hr, align 4, !tbaa !56
  br label %Vec_IntPush.exit103

Vec_IntPush.exit103:                              ; preds = %.critedge, %bb.bf, %Vec_IntGrow.exit11.sink.split.i99
  %i.lr = phi i32 [ %i.li, %.critedge ], [ %i.li, %bb.bf ], [ %.pre181, %Vec_IntGrow.exit11.sink.split.i99 ] ; 2 uses
  %i.ls = phi ptr [ %i.lh, %.critedge ], [ %i.lh, %bb.bf ], [ %i.lq, %Vec_IntGrow.exit11.sink.split.i99 ]
  %i.lt = add nsw i32 %i.lr, 1
  store i32 %i.lt, ptr %i.hr, align 4, !tbaa !56
  %i.lu = sext i32 %i.lr to i64
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.ls, i64 %i.lu
  store i32 %i.iv, ptr %i.lv, align 4, !tbaa !19
  br label %bb.bh

bb.bh:                                            ; preds = %._crit_edge, %Vec_IntPush.exit103
  br i1 %8, label %bb.w, label %bb.bi, !llvm.loop !357

bb.bi:                                            ; preds = %bb.bh
  %i.lw = xor i32 %spec.select, %i.hj
  %i.lx = xor i32 %spec.select245, %i.hj
  %i.ly = call fastcc i32 @Gia_ManAppendAnd(ptr noundef %0, i32 noundef %i.lw, i32 noundef %i.lx) ; 2 uses
  %i.lz = load i32, ptr %i.l, align 8, !tbaa !114
  %i.ma = ashr i32 %i.ly, 1                       ; 7 uses
  %.val69 = load i32, ptr %i.hr, align 4, !tbaa !56
  %i.mb = add nsw i32 %i.ma, 1                    ; 5 uses
  %i.mc = load i32, ptr %i.hs, align 4, !tbaa !56 ; 4 uses
  %.not.i.not.i104 = icmp slt i32 %i.ma, %i.mc
  br i1 %.not.i.not.i104, label %Vec_IntSetEntry.exit121, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.md = load i32, ptr %6, align 8, !tbaa !64    ; 4 uses
  %i.me = shl nsw i32 %i.md, 1                    ; 2 uses
  %.not.i105 = icmp slt i32 %i.ma, %i.me
  %.not.i.i.not.i106 = icmp sgt i32 %i.md, %i.ma  ; 2 uses
  br i1 %.not.i105, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  br i1 %.not.i.i.not.i106, label %Vec_IntGrow.exit.i.i111, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mf = load ptr, ptr %i.ht, align 8, !tbaa !51 ; 2 uses
  %.not9.i.i.i107 = icmp eq ptr %i.mf, null
  %i.mg = sext i32 %i.mb to i64
  %i.mh = shl nsw i64 %i.mg, 2                    ; 2 uses
  br i1 %.not9.i.i.i107, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.mi = call ptr @realloc(ptr noundef nonnull %i.mf, i64 noundef %i.mh) #30
  br label %Vec_IntGrow.exit.sink.split.i.i108

bb.bn:                                            ; preds = %bb.bl
  %i.mj = call noalias ptr @malloc(i64 noundef %i.mh) #31
  br label %Vec_IntGrow.exit.sink.split.i.i108

bb.bo:                                            ; preds = %bb.bj
  br i1 %.not.i.i.not.i106, label %Vec_IntGrow.exit.i.i111, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mk = icmp slt i32 %i.md, 1073741823
  %spec.select.i.i118 = select i1 %i.mk, i32 %i.me, i32 2147483647 ; 4 uses
  %.not.i22.i.i119 = icmp slt i32 %i.md, %spec.select.i.i118
  br i1 %.not.i22.i.i119, label %bb.bq, label %Vec_IntGrow.exit.i.i111

bb.bq:                                            ; preds = %bb.bp
  %i.ml = load ptr, ptr %i.ht, align 8, !tbaa !51 ; 2 uses
  %.not9.i23.i.i120 = icmp eq ptr %i.ml, null
  %i.mm = sext i32 %spec.select.i.i118 to i64
  %i.mn = shl nuw nsw i64 %i.mm, 2                ; 2 uses
  br i1 %.not9.i23.i.i120, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.mo = call ptr @realloc(ptr noundef nonnull %i.ml, i64 noundef %i.mn) #30
  br label %Vec_IntGrow.exit.sink.split.i.i108

bb.bs:                                            ; preds = %bb.bq
  %i.mp = call noalias ptr @malloc(i64 noundef %i.mn) #31
  br label %Vec_IntGrow.exit.sink.split.i.i108

Vec_IntGrow.exit.sink.split.i.i108:               ; preds = %bb.br, %bb.bs, %bb.bm, %bb.bn
  %storemerge241 = phi ptr [ %i.mj, %bb.bn ], [ %i.mi, %bb.bm ], [ %i.mo, %bb.br ], [ %i.mp, %bb.bs ]
  %spec.select.sink.i.i109 = phi i32 [ %i.mb, %bb.bn ], [ %i.mb, %bb.bm ], [ %spec.select.i.i118, %bb.br ], [ %spec.select.i.i118, %bb.bs ]
  store ptr %storemerge241, ptr %i.ht, align 8, !tbaa !51
  store i32 %spec.select.sink.i.i109, ptr %6, align 8, !tbaa !64
  %.pre.i110 = load i32, ptr %i.hs, align 4, !tbaa !56
  br label %Vec_IntGrow.exit.i.i111

Vec_IntGrow.exit.i.i111:                          ; preds = %Vec_IntGrow.exit.sink.split.i.i108, %bb.bp, %bb.bo, %bb.bk
  %i.mq = phi i32 [ %.pre.i110, %Vec_IntGrow.exit.sink.split.i.i108 ], [ %i.mc, %bb.bp ], [ %i.mc, %bb.bo ], [ %i.mc, %bb.bk ] ; 2 uses
  %.not4.i112 = icmp sgt i32 %i.mq, %i.ma
  br i1 %.not4.i112, label %._crit_edge.i.i116, label %.lr.ph.i.i113

.lr.ph.i.i113:                                    ; preds = %Vec_IntGrow.exit.i.i111
  %i.mr = load ptr, ptr %i.ht, align 8, !tbaa !51
  %i.ms = sext i32 %i.mq to i64                   ; 2 uses
  %wide.trip.count.i.i114 = sext i32 %i.mb to i64
  %i.mt = shl nsw i64 %i.ms, 2
  %scevgep.i115 = getelementptr i8, ptr %i.mr, i64 %i.mt
  %i.mu = sub nsw i64 %wide.trip.count.i.i114, %i.ms
  %i.mv = shl nuw nsw i64 %i.mu, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i115, i8 0, i64 %i.mv, i1 false), !tbaa !19
  br label %._crit_edge.i.i116

._crit_edge.i.i116:                               ; preds = %.lr.ph.i.i113, %Vec_IntGrow.exit.i.i111
  store i32 %i.mb, ptr %i.hs, align 4, !tbaa !56
  br label %Vec_IntSetEntry.exit121

Vec_IntSetEntry.exit121:                          ; preds = %bb.bi, %._crit_edge.i.i116
  %.val.i117 = load ptr, ptr %i.ht, align 8, !tbaa !51
  %i.mw = sext i32 %i.ma to i64
  %i.mx = getelementptr inbounds [4 x i8], ptr %.val.i117, i64 %i.mw
  store i32 %.val69, ptr %i.mx, align 4, !tbaa !19
  %i.my = load i32, ptr %i.hr, align 4, !tbaa !56 ; 7 uses
  %i.mz = load i32, ptr %7, align 8, !tbaa !64
  %i.na = icmp eq i32 %i.my, %i.mz
  br i1 %i.na, label %bb.bt, label %Vec_IntSetEntry.exit121.Vec_IntPush.exit129_crit_edge

Vec_IntSetEntry.exit121.Vec_IntPush.exit129_crit_edge: ; preds = %Vec_IntSetEntry.exit121
  %.pre182 = load ptr, ptr %i.hu, align 8, !tbaa !51
  br label %Vec_IntPush.exit129

bb.bt:                                            ; preds = %Vec_IntSetEntry.exit121
  %i.nb = icmp slt i32 %i.my, 16
  br i1 %i.nb, label %bb.bu, label %bb.bx

bb.bu:                                            ; preds = %bb.bt
  %i.nc = load ptr, ptr %i.hu, align 8, !tbaa !51 ; 2 uses
  %.not9.i.i127 = icmp eq ptr %i.nc, null
  br i1 %.not9.i.i127, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.nd = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.nc, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i125

bb.bw:                                            ; preds = %bb.bu
  %i.ne = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  br label %Vec_IntGrow.exit11.sink.split.i125

bb.bx:                                            ; preds = %bb.bt
  %i.nf = icmp samesign ult i32 %i.my, 1073741823
  %i.ng = shl nuw nsw i32 %i.my, 1
  %spec.select.i122 = select i1 %i.nf, i32 %i.ng, i32 2147483647 ; 4 uses
  %.not.i9.i123 = icmp samesign ult i32 %i.my, %spec.select.i122
  %.pre183 = load ptr, ptr %i.hu, align 8, !tbaa !51 ; 3 uses
  br i1 %.not.i9.i123, label %bb.by, label %Vec_IntPush.exit129

bb.by:                                            ; preds = %bb.bx
  %.not9.i10.i124 = icmp eq ptr %.pre183, null
  %i.nh = zext nneg i32 %spec.select.i122 to i64
  %i.ni = shl nuw nsw i64 %i.nh, 2                ; 2 uses
  br i1 %.not9.i10.i124, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nj = call ptr @realloc(ptr noundef nonnull %.pre183, i64 noundef %i.ni) #30
  br label %Vec_IntGrow.exit11.sink.split.i125

bb.ca:                                            ; preds = %bb.by
  %i.nk = call noalias ptr @malloc(i64 noundef %i.ni) #31
  br label %Vec_IntGrow.exit11.sink.split.i125

Vec_IntGrow.exit11.sink.split.i125:               ; preds = %bb.bz, %bb.ca, %bb.bv, %bb.bw
  %i.nl = phi ptr [ %i.ne, %bb.bw ], [ %i.nd, %bb.bv ], [ %i.nj, %bb.bz ], [ %i.nk, %bb.ca ] ; 2 uses
  %spec.select.sink.i126 = phi i32 [ 16, %bb.bw ], [ 16, %bb.bv ], [ %spec.select.i122, %bb.bz ], [ %spec.select.i122, %bb.ca ]
  store ptr %i.nl, ptr %i.hu, align 8, !tbaa !51
  store i32 %spec.select.sink.i126, ptr %7, align 8, !tbaa !64
  %.pre184 = load i32, ptr %i.hr, align 4, !tbaa !56
  br label %Vec_IntPush.exit129

Vec_IntPush.exit129:                              ; preds = %Vec_IntSetEntry.exit121.Vec_IntPush.exit129_crit_edge, %bb.bx, %Vec_IntGrow.exit11.sink.split.i125
  %i.nm = phi i32 [ %i.my, %Vec_IntSetEntry.exit121.Vec_IntPush.exit129_crit_edge ], [ %i.my, %bb.bx ], [ %.pre184, %Vec_IntGrow.exit11.sink.split.i125 ] ; 2 uses
  %i.nn = phi ptr [ %.pre182, %Vec_IntSetEntry.exit121.Vec_IntPush.exit129_crit_edge ], [ %.pre183, %bb.bx ], [ %i.nl, %Vec_IntGrow.exit11.sink.split.i125 ] ; 4 uses
  %i.no = add nsw i32 %i.nm, 1
  store i32 %i.no, ptr %i.hr, align 4, !tbaa !56
  %i.np = sext i32 %i.nm to i64
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.nn, i64 %i.np
  store i32 2, ptr %i.nq, align 4, !tbaa !19
  %i.nr = ashr i32 %spec.select, 1
  %i.ns = load i32, ptr %i.hr, align 4, !tbaa !56 ; 7 uses
  %i.nt = load i32, ptr %7, align 8, !tbaa !64
  %i.nu = icmp eq i32 %i.ns, %i.nt
  br i1 %i.nu, label %bb.cb, label %Vec_IntPush.exit137

bb.cb:                                            ; preds = %Vec_IntPush.exit129
  %i.nv = icmp slt i32 %i.ns, 16
  br i1 %i.nv, label %Vec_IntGrow.exit11.sink.split.i133, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.nw = icmp samesign ult i32 %i.ns, 1073741823
  %i.nx = shl nuw nsw i32 %i.ns, 1
  %spec.select.i130 = select i1 %i.nw, i32 %i.nx, i32 2147483647 ; 3 uses
  %.not.i9.i131 = icmp samesign ult i32 %i.ns, %spec.select.i130
  br i1 %.not.i9.i131, label %bb.cd, label %Vec_IntPush.exit137

bb.cd:                                            ; preds = %bb.cc
  %i.ny = zext nneg i32 %spec.select.i130 to i64
  %i.nz = shl nuw nsw i64 %i.ny, 2
  br label %Vec_IntGrow.exit11.sink.split.i133

Vec_IntGrow.exit11.sink.split.i133:               ; preds = %bb.cb, %bb.cd
  %.sink244 = phi i64 [ %i.nz, %bb.cd ], [ 64, %bb.cb ]
  %spec.select.sink.i134 = phi i32 [ %spec.select.i130, %bb.cd ], [ 16, %bb.cb ]
  %i.oa = call ptr @realloc(ptr noundef nonnull %i.nn, i64 noundef %.sink244) #30 ; 2 uses
  store ptr %i.oa, ptr %i.hu, align 8, !tbaa !51
  store i32 %spec.select.sink.i134, ptr %7, align 8, !tbaa !64
  %.pre185 = load i32, ptr %i.hr, align 4, !tbaa !56
  br label %Vec_IntPush.exit137

Vec_IntPush.exit137:                              ; preds = %Vec_IntPush.exit129, %bb.cc, %Vec_IntGrow.exit11.sink.split.i133
  %i.ob = phi i32 [ %i.ns, %Vec_IntPush.exit129 ], [ %i.ns, %bb.cc ], [ %.pre185, %Vec_IntGrow.exit11.sink.split.i133 ] ; 2 uses
  %i.oc = phi ptr [ %i.nn, %Vec_IntPush.exit129 ], [ %i.nn, %bb.cc ], [ %i.oa, %Vec_IntGrow.exit11.sink.split.i133 ] ; 4 uses
  %i.od = add nsw i32 %i.ob, 1
  store i32 %i.od, ptr %i.hr, align 4, !tbaa !56
  %i.oe = sext i32 %i.ob to i64
  %i.of = getelementptr inbounds [4 x i8], ptr %i.oc, i64 %i.oe
  store i32 %i.nr, ptr %i.of, align 4, !tbaa !19
  %i.og = ashr i32 %spec.select245, 1
  %i.oh = load i32, ptr %i.hr, align 4, !tbaa !56 ; 7 uses
  %i.oi = load i32, ptr %7, align 8, !tbaa !64
  %i.oj = icmp eq i32 %i.oh, %i.oi
  br i1 %i.oj, label %bb.ce, label %Vec_IntPush.exit145

bb.ce:                                            ; preds = %Vec_IntPush.exit137
  %i.ok = icmp slt i32 %i.oh, 16
  br i1 %i.ok, label %Vec_IntGrow.exit11.sink.split.i141, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ol = icmp samesign ult i32 %i.oh, 1073741823
  %i.om = shl nuw nsw i32 %i.oh, 1
  %spec.select.i138 = select i1 %i.ol, i32 %i.om, i32 2147483647 ; 3 uses
  %.not.i9.i139 = icmp samesign ult i32 %i.oh, %spec.select.i138
  br i1 %.not.i9.i139, label %bb.cg, label %Vec_IntPush.exit145

bb.cg:                                            ; preds = %bb.cf
  %i.on = zext nneg i32 %spec.select.i138 to i64
  %i.oo = shl nuw nsw i64 %i.on, 2
  br label %Vec_IntGrow.exit11.sink.split.i141

Vec_IntGrow.exit11.sink.split.i141:               ; preds = %bb.ce, %bb.cg
  %.sink245 = phi i64 [ %i.oo, %bb.cg ], [ 64, %bb.ce ]
  %spec.select.sink.i142 = phi i32 [ %spec.select.i138, %bb.cg ], [ 16, %bb.ce ]
  %i.op = call ptr @realloc(ptr noundef nonnull %i.oc, i64 noundef %.sink245) #30 ; 2 uses
  store ptr %i.op, ptr %i.hu, align 8, !tbaa !51
  store i32 %spec.select.sink.i142, ptr %7, align 8, !tbaa !64
  %.pre186 = load i32, ptr %i.hr, align 4, !tbaa !56
  br label %Vec_IntPush.exit145

Vec_IntPush.exit145:                              ; preds = %Vec_IntPush.exit137, %bb.cf, %Vec_IntGrow.exit11.sink.split.i141
  %i.oq = phi i32 [ %i.oh, %Vec_IntPush.exit137 ], [ %i.oh, %bb.cf ], [ %.pre186, %Vec_IntGrow.exit11.sink.split.i141 ] ; 2 uses
  %i.or = phi ptr [ %i.oc, %Vec_IntPush.exit137 ], [ %i.oc, %bb.cf ], [ %i.op, %Vec_IntGrow.exit11.sink.split.i141 ] ; 4 uses
  %i.os = add nsw i32 %i.oq, 1
  store i32 %i.os, ptr %i.hr, align 4, !tbaa !56
  %i.ot = sext i32 %i.oq to i64
  %i.ou = getelementptr inbounds [4 x i8], ptr %i.or, i64 %i.ot
  store i32 %i.og, ptr %i.ou, align 4, !tbaa !19
  %i.ov = load i32, ptr %i.hr, align 4, !tbaa !56 ; 7 uses
  %i.ow = load i32, ptr %7, align 8, !tbaa !64
  %i.ox = icmp eq i32 %i.ov, %i.ow
  br i1 %i.ox, label %bb.ch, label %Vec_IntPush.exit153

bb.ch:                                            ; preds = %Vec_IntPush.exit145
  %i.oy = icmp slt i32 %i.ov, 16
  br i1 %i.oy, label %Vec_IntGrow.exit11.sink.split.i149, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.oz = icmp samesign ult i32 %i.ov, 1073741823
  %i.pa = shl nuw nsw i32 %i.ov, 1
  %spec.select.i146 = select i1 %i.oz, i32 %i.pa, i32 2147483647 ; 3 uses
  %.not.i9.i147 = icmp samesign ult i32 %i.ov, %spec.select.i146
  br i1 %.not.i9.i147, label %bb.cj, label %Vec_IntPush.exit153

bb.cj:                                            ; preds = %bb.ci
  %i.pb = zext nneg i32 %spec.select.i146 to i64
  %i.pc = shl nuw nsw i64 %i.pb, 2
  br label %Vec_IntGrow.exit11.sink.split.i149

Vec_IntGrow.exit11.sink.split.i149:               ; preds = %bb.ch, %bb.cj
  %.sink246 = phi i64 [ %i.pc, %bb.cj ], [ 64, %bb.ch ]
  %spec.select.sink.i150 = phi i32 [ %spec.select.i146, %bb.cj ], [ 16, %bb.ch ]
  %i.pd = call ptr @realloc(ptr noundef nonnull %i.or, i64 noundef %.sink246) #30 ; 2 uses
  store ptr %i.pd, ptr %i.hu, align 8, !tbaa !51
  store i32 %spec.select.sink.i150, ptr %7, align 8, !tbaa !64
  %.pre187 = load i32, ptr %i.hr, align 4, !tbaa !56
  br label %Vec_IntPush.exit153

Vec_IntPush.exit153:                              ; preds = %Vec_IntPush.exit145, %bb.ci, %Vec_IntGrow.exit11.sink.split.i149
  %i.pe = phi i32 [ %i.ov, %Vec_IntPush.exit145 ], [ %i.ov, %bb.ci ], [ %.pre187, %Vec_IntGrow.exit11.sink.split.i149 ] ; 2 uses
  %i.pf = phi ptr [ %i.or, %Vec_IntPush.exit145 ], [ %i.or, %bb.ci ], [ %i.pd, %Vec_IntGrow.exit11.sink.split.i149 ]
  %i.pg = sub nsw i32 0, %i.ma
  %i.ph = add nsw i32 %i.pe, 1
  store i32 %i.ph, ptr %i.hr, align 4, !tbaa !56
  %i.pi = sext i32 %i.pe to i64
  %i.pj = getelementptr inbounds [4 x i8], ptr %i.pf, i64 %i.pi
  store i32 %i.pg, ptr %i.pj, align 4, !tbaa !19
  %i.pk = load i64, ptr %i.h, align 4
  %i.pl = trunc i64 %i.pk to i32
  %i.pm = lshr i32 %i.pl, 12
  %i.pn = xor i32 %i.lz, %i.pm
  %i.po = xor i32 %i.pn, %i.z
  %i.pp = and i32 %i.po, 1
  %i.pq = xor i32 %i.pp, %i.ly
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  ret i32 %i.pq
}

; Function Attrs: nounwind uwtable
define ptr @Gia_ManFromIfLogic(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [1000 x i8], align 16             ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 40         ; 8 uses
  %.val509 = load ptr, ptr %i.b, align 8, !tbaa !93
  %i.c = getelementptr i8, ptr %.val509, i64 4
  %.val509.val = load i32, ptr %i.c, align 4, !tbaa !96 ; 5 uses
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 26 uses
  %i.e = add i32 %.val509.val, -1
  %or.cond.i.i = icmp ult i32 %i.e, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val509.val ; 3 uses
  %i.f = getelementptr i8, ptr %i.d, i64 4        ; 12 uses
  store i32 %spec.store.select.i.i, ptr %i.d, align 8, !tbaa !64
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !51
  store i32 %.val509.val, ptr %i.f, align 4, !tbaa !56
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.h = sext i32 %spec.store.select.i.i to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #31 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !51
  store i32 %.val509.val, ptr %i.f, align 4, !tbaa !56
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %Vec_IntStart.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.l = sext i32 %.val509.val to i64
  %i.m = shl nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.j, i8 0, i64 %i.m, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %i.n = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 22 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 11 uses
  store i32 16, ptr %i.n, align 8, !tbaa !64
  %i.p = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 13 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !51
  store i32 1, ptr %i.o, align 4, !tbaa !56
  %.not.i518 = icmp eq ptr %i.p, null
  br i1 %.not.i518, label %Vec_IntStart.exit519, label %bb.c

bb.c:                                             ; preds = %Vec_IntStart.exit
  store i32 0, ptr %i.p, align 4
  br label %Vec_IntStart.exit519

Vec_IntStart.exit519:                             ; preds = %Vec_IntStart.exit, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !106  ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 176
  %i.u = load i32, ptr %i.t, align 8, !tbaa !128
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %Vec_IntStart.exit519
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 208
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30
  %.not401 = icmp eq ptr %i.w, null
  br i1 %.not401, label %bb.e, label %Vec_IntPush.exit

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 140
  %i.y = load i32, ptr %i.x, align 4, !tbaa !394
  %.not402 = icmp eq i32 %i.y, 0
  br i1 %.not402, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 144
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !395
  %.not403 = icmp eq i32 %i.aa, 0
  br i1 %.not403, label %bb.g, label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.d, %bb.e, %bb.f
  %i.ab = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 1000, ptr %i.ab, align 8, !tbaa !64
  %i.ad = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #31 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !51
  store i32 1, ptr %i.ac, align 4, !tbaa !56
  store i32 0, ptr %i.ad, align 4, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %Vec_IntPush.exit, %bb.f, %Vec_IntStart.exit519
  %.0390 = phi ptr [ %i.ab, %Vec_IntPush.exit ], [ null, %bb.f ], [ null, %Vec_IntStart.exit519 ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !396
  %.not404 = icmp eq i32 %i.ag, 0
  br i1 %.not404, label %bb.h, label %Vec_IntPush.exit527

Vec_IntPush.exit527:                              ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !124
  %i.aj = tail call i32 @If_DsdManTtBitNum(ptr noundef %i.ai) #29
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !124
  %i.al = tail call i32 @If_DsdManPermBitNum(ptr noundef %i.ak) #29
  %i.am = add i32 %i.aj, 1
  %i.an = add i32 %i.am, %i.al                    ; 2 uses
  %i.ao = ashr i32 %i.an, 5
  %i.ap = and i32 %i.an, 31
  %i.aq = icmp ne i32 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %i.as = add nsw i32 %i.ao, %i.ar
  %i.at = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 1000, ptr %i.at, align 8, !tbaa !64
  %i.av = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #31 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !51
  store i32 0, ptr %i.av, align 4, !tbaa !19
  store i32 2, ptr %i.au, align 4, !tbaa !56
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store i32 %i.as, ptr %i.ax, align 4, !tbaa !19
  %i.ay = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i32 0, ptr %i.az, align 4, !tbaa !67
  store i32 1000, ptr %i.ay, align 8, !tbaa !66
  %i.ba = tail call noalias dereferenceable_or_null(1000) ptr @malloc(i64 noundef 1000) #31
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !62
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !106
  br label %bb.h

bb.h:                                             ; preds = %Vec_IntPush.exit527, %bb.g
  %i.bc = phi ptr [ %.pre, %Vec_IntPush.exit527 ], [ %i.s, %bb.g ]
  %.0389 = phi ptr [ %i.at, %Vec_IntPush.exit527 ], [ null, %bb.g ] ; 4 uses
  %.1387 = phi ptr [ %i.ay, %Vec_IntPush.exit527 ], [ null, %bb.g ] ; 11 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 128
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !129
  %.not405 = icmp eq i32 %i.be, 0
  br i1 %.not405, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 0, ptr %i.bg, align 4, !tbaa !67
  store i32 1000, ptr %i.bf, align 8, !tbaa !66
  %i.bh = tail call noalias dereferenceable_or_null(1000) ptr @malloc(i64 noundef 1000) #31
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !62
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0388 = phi ptr [ %i.bf, %bb.i ], [ null, %bb.h ] ; 3 uses
  %.val508 = load ptr, ptr %i.b, align 8, !tbaa !93
  %i.bj = getelementptr i8, ptr %.val508, i64 4
  %.val508.val = load i32, ptr %i.bj, align 4, !tbaa !96
  %i.bk = tail call ptr @Gia_ManStart(i32 noundef %.val508.val) #29 ; 20 uses
  %i.bl = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 0, ptr %i.bm, align 4, !tbaa !56
  store i32 1000, ptr %i.bl, align 8, !tbaa !64
  %i.bn = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #31
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !51
  %i.bp = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 13 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store i32 0, ptr %i.bq, align 4, !tbaa !56
  store i32 65536, ptr %i.bp, align 8, !tbaa !64
  %i.br = tail call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #31
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !51
  %i.bt = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 16 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 10 uses
  store i32 0, ptr %i.bu, align 4, !tbaa !56
  store i32 16, ptr %i.bt, align 8, !tbaa !64
  %i.bv = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 7 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !51
  %i.bx = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 10 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 0, ptr %i.by, align 4, !tbaa !56
  store i32 16, ptr %i.bx, align 8, !tbaa !64
  %i.bz = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #31
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !51
  tail call void @If_ManCleanCutData(ptr noundef nonnull %0) #29
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !93  ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 4
  %.val503730 = load i32, ptr %i.cc, align 4, !tbaa !96
  %i.cd = icmp sgt i32 %.val503730, 0
  br i1 %i.cd, label %.lr.ph734, label %.critedge

.lr.ph734:                                        ; preds = %bb.j
  %i.ce = getelementptr i8, ptr %i.d, i64 8       ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
end_hunk_1
