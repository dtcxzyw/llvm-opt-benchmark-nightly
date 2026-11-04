Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaCSat3?download=true
inline.NumInlined: 322
inline.NumDeleted: 99
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Cbs3_ManResolve:bb.a
  br i1 %.not63, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.bw, align 1, !tbaa !49
  %i.by = load i32, ptr %i.b, align 4, !tbaa !54  ; 4 uses
  %i.bz = load i32, ptr %i.d, align 8, !tbaa !55
  %i.ca = icmp eq i32 %i.by, %i.bz
  br i1 %i.ca, label %bb.r, label %._crit_edge.i88

._crit_edge.i88:                                  ; preds = %bb.q
  %.pre.i90 = load ptr, ptr %i.af, align 8, !tbaa !56
  br label %Cbs3_QuePush.exit94

bb.r:                                             ; preds = %bb.q
  %i.cb = shl nsw i32 %i.by, 1                    ; 2 uses
  store i32 %i.cb, ptr %i.d, align 8, !tbaa !55
  %i.cc = load ptr, ptr %i.af, align 8, !tbaa !56 ; 2 uses
  %.not.i91 = icmp eq ptr %i.cc, null
  %i.cd = sext i32 %i.cb to i64
  %i.ce = shl nsw i64 %i.cd, 2                    ; 2 uses
  br i1 %.not.i91, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = tail call ptr @realloc(ptr noundef nonnull %i.cc, i64 noundef %i.ce) #25
  %.pre11.pre.i92 = load i32, ptr %i.b, align 4, !tbaa !54
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cg = tail call noalias ptr @malloc(i64 noundef %i.ce) #24
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pre11.i93 = phi i32 [ %.pre11.pre.i92, %bb.s ], [ %i.by, %bb.t ]
  %i.ch = phi ptr [ %i.cf, %bb.s ], [ %i.cg, %bb.t ] ; 2 uses
  store ptr %i.ch, ptr %i.af, align 8, !tbaa !56
  br label %Cbs3_QuePush.exit94

Cbs3_QuePush.exit94:                              ; preds = %._crit_edge.i88, %bb.u
  %i.ci = phi i32 [ %i.by, %._crit_edge.i88 ], [ %.pre11.i93, %bb.u ] ; 2 uses
  %i.cj = phi ptr [ %.pre.i90, %._crit_edge.i88 ], [ %i.ch, %bb.u ]
  %i.ck = add nsw i32 %i.ci, 1
  store i32 %i.ck, ptr %i.b, align 4, !tbaa !54
  %i.cl = sext i32 %i.ci to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.cl
  store i32 %i.bu, ptr %i.cm, align 4, !tbaa !40
  %.val72 = load ptr, ptr %i.br, align 8, !tbaa !36
  %i.cn = mul nsw i32 %i.bu, 3
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %.val72, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !40
  %spec.select65 = tail call i32 @llvm.smax.i32(i32 %.2105, i32 %i.cq)
  br label %bb.v

bb.v:                                             ; preds = %Cbs3_QuePush.exit94, %bb.p
  %.3 = phi i32 [ %.2105, %bb.p ], [ %spec.select65, %Cbs3_QuePush.exit94 ] ; 2 uses
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  %.val = load ptr, ptr %i.af, align 8, !tbaa !31 ; 2 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.bn
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !40
  %i.ct = sext i32 %i.cs to i64
  %.not61.not = icmp slt i64 %indvars.iv114, %i.ct
  br i1 %.not61.not, label %bb.o, label %.critedge2, !llvm.loop !113

.critedge2:                                       ; preds = %bb.o, %bb.v, %.critedge
  %.2.lcssa = phi i32 [ %.0.lcssa, %.critedge ], [ %.3, %bb.v ], [ %.2105, %bb.o ]
  %i.cu = load i32, ptr %i.a, align 8, !tbaa !53  ; 2 uses
  %i.cv = add nsw i32 %i.cu, 2
  %i.cw = load i32, ptr %i.b, align 4, !tbaa !54
  %i.cx = icmp slt i32 %i.cv, %i.cw
  br i1 %i.cx, label %.lr.ph112, label %._crit_edge

.lr.ph112:                                        ; preds = %.critedge2
  %i.cy = getelementptr i8, ptr %0, i64 232
  %i.cz = sext i32 %i.cu to i64
  %i.da = add nsw i64 %i.cz, 2
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph112, %bb.w
  %indvars.iv117 = phi i64 [ %i.da, %.lr.ph112 ], [ %indvars.iv.next118, %bb.w ] ; 2 uses
  %i.db = load ptr, ptr %i.af, align 8, !tbaa !56
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.db, i64 %indvars.iv117
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !40
  %.val69 = load ptr, ptr %i.cy, align 8, !tbaa !47
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %.val69, i64 %i.de
  store i8 0, ptr %i.df, align 1, !tbaa !49
  %indvars.iv.next118 = add nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.dg = load i32, ptr %i.b, align 4, !tbaa !54
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp slt i64 %indvars.iv.next118, %i.dh
  br i1 %i.di, label %bb.w, label %._crit_edge, !llvm.loop !114

._crit_edge:                                      ; preds = %bb.w, %.critedge2
  %i.dj = tail call fastcc i32 @Cbs3_ManDeriveReason(ptr noundef nonnull %0, i32 noundef %.2.lcssa)
  ret i32 %i.dj
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -1, 2) i32 @Cbs3_ManSolve(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %Cbs3_ManSolveInt.exit._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.d = ashr i32 %1, 1                           ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 216        ; 2 uses
  %i.f = trunc i32 %1 to i8
  %i.g = and i8 %i.f, 1
  %i.h = xor i8 %i.g, 1
  %i.i = sext i32 %i.d to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.l = mul nsw i32 %i.d, 3
  %i.m = getelementptr i8, ptr %0, i64 248        ; 2 uses
  %i.n = sext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 184
  %i.s = getelementptr i8, ptr %0, i64 152
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %Cbs3_ManSolveInt.exit
  %i.x = add nuw nsw i32 %.0811, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, %2
  br i1 %exitcond.not, label %Cbs3_ManSolveInt.exit._crit_edge, label %bb.c, !llvm.loop !115

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.0811 = phi i32 [ 0, %.lr.ph ], [ %i.x, %bb.b ]
  store i32 0, ptr %i.b, align 8, !tbaa !61
  store i32 0, ptr %i.c, align 4, !tbaa !63
  %.val.i.i = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.y = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.i
  store i8 %i.h, ptr %i.y, align 1, !tbaa !49
  %i.z = load i32, ptr %i.j, align 4, !tbaa !54   ; 4 uses
  %i.aa = load i32, ptr %i.k, align 8, !tbaa !55
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.d, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !56
  br label %Cbs3_ManAssign.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ac = shl nsw i32 %i.z, 1                     ; 2 uses
  store i32 %i.ac, ptr %i.k, align 8, !tbaa !55
  %i.ad = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  %i.ae = sext i32 %i.ac to i64
  %i.af = shl nsw i64 %i.ae, 2                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = tail call ptr @realloc(ptr noundef nonnull %i.ad, i64 noundef %i.af) #25
  %.pre11.pre.i.i.i = load i32, ptr %i.j, align 4, !tbaa !54
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.af) #24
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pre11.i.i.i = phi i32 [ %.pre11.pre.i.i.i, %bb.e ], [ %i.z, %bb.f ]
  %i.ai = phi ptr [ %i.ag, %bb.e ], [ %i.ah, %bb.f ] ; 2 uses
  store ptr %i.ai, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !56
  br label %Cbs3_ManAssign.exit.i

Cbs3_ManAssign.exit.i:                            ; preds = %bb.g, %._crit_edge.i.i.i
  %i.aj = phi i32 [ %i.z, %._crit_edge.i.i.i ], [ %.pre11.i.i.i, %bb.g ] ; 2 uses
  %i.ak = phi ptr [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.ai, %bb.g ]
  %i.al = add nsw i32 %i.aj, 1
  store i32 %i.al, ptr %i.j, align 4, !tbaa !54
  %i.am = sext i32 %i.aj to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.am
  store i32 %1, ptr %i.an, align 4, !tbaa !40
  %.val16.i.i = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.ao = getelementptr [4 x i8], ptr %.val16.i.i, i64 %i.n ; 3 uses
  store i32 0, ptr %i.ao, align 4, !tbaa !40
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  store i32 0, ptr %i.ap, align 4, !tbaa !40
  %i.aq = getelementptr i8, ptr %i.ao, i64 8
  store i32 0, ptr %i.aq, align 4, !tbaa !40
  %i.ar = tail call i32 @Cbs3_ManSolve2_rec(ptr noundef nonnull %0, i32 noundef 0)
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %bb.h, label %Cbs3_ManAssign.exit.Cbs3_ManSaveModel.exit_crit_edge.i

Cbs3_ManAssign.exit.Cbs3_ManSaveModel.exit_crit_edge.i: ; preds = %Cbs3_ManAssign.exit.i
  %.pre.i = load i32, ptr %i.j, align 4, !tbaa !59
  br label %Cbs3_ManSaveModel.exit.i

bb.h:                                             ; preds = %Cbs3_ManAssign.exit.i
  %i.as = load <2 x i32>, ptr %i.c, align 4, !tbaa !40
  %i.at = load <2 x i32>, ptr %0, align 8, !tbaa !40
  %i.au = icmp sgt <2 x i32> %i.as, %i.at         ; 3 uses
  %i.av = shufflevector <2 x i1> %i.au, <2 x i1> poison, <2 x i32> <i32 1, i32 0>
  %i.aw = zext <2 x i1> %i.av to <2 x i32>
  %i.ax = load <2 x i32>, ptr %i.o, align 4, !tbaa !40
  %i.ay = add nsw <2 x i32> %i.ax, %i.aw
  store <2 x i32> %i.ay, ptr %i.o, align 4, !tbaa !40
  %3 = extractelement <2 x i1> %i.au, i64 0
  %4 = extractelement <2 x i1> %i.au, i64 1
  %5 = select i1 %4, i1 true, i1 %3
  %.pre27.i = load i32, ptr %i.j, align 4, !tbaa !59 ; 3 uses
  br i1 %5, label %Cbs3_ManSaveModel.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = load ptr, ptr %i.p, align 8, !tbaa !37  ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 4 uses
  store i32 0, ptr %i.ba, align 4, !tbaa !34
  store i32 0, ptr %i.q, align 8, !tbaa !58
  %i.bb = icmp sgt i32 %.pre27.i, 0
  br i1 %i.bb, label %.lr.ph.i.i, label %Cbs3_ManSolveInt.exit

.lr.ph.i.i:                                       ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.u, %.lr.ph.i.i
  %i.bd = phi i32 [ %.pre27.i, %.lr.ph.i.i ], [ %i.cl, %bb.u ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.u ] ; 2 uses
  %i.be = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !29
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i.i
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !40 ; 4 uses
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %Cbs3_ManSaveModel.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val14.i.i = load ptr, ptr %i.r, align 8, !tbaa !36
  %i.bh = and i32 %i.bg, -2
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %.val14.i.i, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !40
  %.not15.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not15.i.i, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.bl = ashr i32 %i.bg, 1
  %.val.i19.i = load ptr, ptr %i.s, align 8, !tbaa !36
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %.val.i19.i, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %i.bp = shl nsw i32 %i.bo, 1
  %i.bq = or i32 %i.bg, -2
  %i.br = add i32 %i.bp, %i.bq
  %i.bs = load i32, ptr %i.ba, align 4, !tbaa !34 ; 7 uses
  %i.bt = load i32, ptr %i.az, align 8, !tbaa !35
  %i.bu = icmp eq i32 %i.bs, %i.bt
  br i1 %i.bu, label %bb.m, label %.Vec_IntPush.exit_crit_edge.i.i

.Vec_IntPush.exit_crit_edge.i.i:                  ; preds = %bb.l
  %.pre.i.i = load ptr, ptr %i.bc, align 8, !tbaa !36
  br label %Vec_IntPush.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.bv = icmp slt i32 %i.bs, 16
  br i1 %i.bv, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bw = load ptr, ptr %i.bc, align 8, !tbaa !36 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not9.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bw, i64 noundef 64) #25
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.by = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.q:                                             ; preds = %bb.m
  %i.bz = icmp samesign ult i32 %i.bs, 1073741823
  %i.ca = shl nuw nsw i32 %i.bs, 1
  %spec.select.i.i.i = select i1 %i.bz, i32 %i.ca, i32 2147483647 ; 4 uses
  %.not.i9.i.i.i = icmp samesign ult i32 %i.bs, %spec.select.i.i.i
  %.pre19.i.i = load ptr, ptr %i.bc, align 8, !tbaa !36 ; 3 uses
  br i1 %.not.i9.i.i.i, label %bb.r, label %Vec_IntPush.exit.i.i

bb.r:                                             ; preds = %bb.q
  %.not9.i10.i.i.i = icmp eq ptr %.pre19.i.i, null
  %i.cb = zext nneg i32 %spec.select.i.i.i to i64
  %i.cc = shl nuw nsw i64 %i.cb, 2                ; 2 uses
  br i1 %.not9.i10.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = tail call ptr @realloc(ptr noundef nonnull %.pre19.i.i, i64 noundef %i.cc) #25
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.ce = tail call noalias ptr @malloc(i64 noundef %i.cc) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

Vec_IntGrow.exit11.sink.split.i.i.i:              ; preds = %bb.t, %bb.s, %bb.p, %bb.o
  %i.cf = phi ptr [ %i.by, %bb.p ], [ %i.bx, %bb.o ], [ %i.cd, %bb.s ], [ %i.ce, %bb.t ] ; 2 uses
  %spec.select.sink.i.i.i = phi i32 [ 16, %bb.p ], [ 16, %bb.o ], [ %spec.select.i.i.i, %bb.s ], [ %spec.select.i.i.i, %bb.t ]
  store ptr %i.cf, ptr %i.bc, align 8, !tbaa !36
  store i32 %spec.select.sink.i.i.i, ptr %i.az, align 8, !tbaa !35
  %.pre20.i.i = load i32, ptr %i.ba, align 4, !tbaa !34
  br label %Vec_IntPush.exit.i.i

Vec_IntPush.exit.i.i:                             ; preds = %Vec_IntGrow.exit11.sink.split.i.i.i, %bb.q, %.Vec_IntPush.exit_crit_edge.i.i
  %i.cg = phi i32 [ %i.bs, %.Vec_IntPush.exit_crit_edge.i.i ], [ %i.bs, %bb.q ], [ %.pre20.i.i, %Vec_IntGrow.exit11.sink.split.i.i.i ] ; 2 uses
  %i.ch = phi ptr [ %.pre.i.i, %.Vec_IntPush.exit_crit_edge.i.i ], [ %.pre19.i.i, %bb.q ], [ %i.cf, %Vec_IntGrow.exit11.sink.split.i.i.i ]
  %i.ci = add nsw i32 %i.cg, 1
  store i32 %i.ci, ptr %i.ba, align 4, !tbaa !34
  %i.cj = sext i32 %i.cg to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.cj
  store i32 %i.br, ptr %i.ck, align 4, !tbaa !40
  %.pre21.i.i = load i32, ptr %i.j, align 4, !tbaa !59
  br label %bb.u

bb.u:                                             ; preds = %Vec_IntPush.exit.i.i, %bb.k
  %i.cl = phi i32 [ %i.bd, %bb.k ], [ %.pre21.i.i, %Vec_IntPush.exit.i.i ] ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp slt i64 %indvars.iv.next.i.i, %i.cm
  br i1 %i.cn, label %bb.j, label %Cbs3_ManSaveModel.exit.i, !llvm.loop !116

Cbs3_ManSaveModel.exit.i:                         ; preds = %bb.u, %bb.j, %bb.h, %Cbs3_ManAssign.exit.Cbs3_ManSaveModel.exit_crit_edge.i
  %i.co = phi i32 [ %.pre.i, %Cbs3_ManAssign.exit.Cbs3_ManSaveModel.exit_crit_edge.i ], [ %.pre27.i, %bb.h ], [ %i.cl, %bb.u ], [ %i.bd, %bb.j ]
  %.0.i = phi i32 [ 1, %Cbs3_ManAssign.exit.Cbs3_ManSaveModel.exit_crit_edge.i ], [ 1, %bb.h ], [ 0, %bb.j ], [ 0, %bb.u ] ; 3 uses
  store i32 0, ptr %i.q, align 8, !tbaa !58
  %i.cp = icmp sgt i32 %i.co, 0
  br i1 %i.cp, label %.lr.ph.i20.i, label %Cbs3_ManSolveInt.exit

.lr.ph.i20.i:                                     ; preds = %Cbs3_ManSaveModel.exit.i, %bb.v
  %indvars.iv.i21.i = phi i64 [ %indvars.iv.next.i23.i, %bb.v ], [ 0, %Cbs3_ManSaveModel.exit.i ] ; 2 uses
  %i.cq = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !29
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.i21.i
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !40 ; 2 uses
  %.not.i22.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i22.i, label %Cbs3_ManSolveInt.exit, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i20.i
  %i.ct = ashr i32 %i.cs, 1                       ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr %.val.i.i.i, i64 %i.cu ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !49
  %i.cx = add i8 %i.cw, 2
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !49
  %.val6.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.cy = mul nsw i32 %i.ct, 3
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %.val6.i.i.i, i64 %i.cz
  store i32 -1, ptr %i.da, align 4, !tbaa !40
  %indvars.iv.next.i23.i = add nuw nsw i64 %indvars.iv.i21.i, 1 ; 2 uses
  %i.db = load i32, ptr %i.j, align 4, !tbaa !59
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp slt i64 %indvars.iv.next.i23.i, %i.dc
  br i1 %i.dd, label %.lr.ph.i20.i, label %Cbs3_ManSolveInt.exit, !llvm.loop !0

Cbs3_ManSolveInt.exit:                            ; preds = %.lr.ph.i20.i, %bb.v, %bb.i, %Cbs3_ManSaveModel.exit.i
  %.035.i = phi i32 [ 0, %bb.i ], [ %.0.i, %Cbs3_ManSaveModel.exit.i ], [ %.0.i, %bb.v ], [ %.0.i, %.lr.ph.i20.i ]
  store i32 0, ptr %i.j, align 4, !tbaa !59
  store i32 0, ptr %i.u, align 4, !tbaa !52
  store i32 0, ptr %i.t, align 8, !tbaa !57
  %i.de = load i32, ptr %i.v, align 4, !tbaa !118
  %i.df = load i32, ptr %i.w, align 8, !tbaa !119
  %i.dg = load <2 x i32>, ptr %i.c, align 4, !tbaa !40 ; 3 uses
  %i.dh = extractelement <2 x i32> %i.dg, i64 0
  %i.di = add nsw i32 %i.de, %i.dh
  store i32 %i.di, ptr %i.v, align 4, !tbaa !118
  %i.dj = extractelement <2 x i32> %i.dg, i64 1
  %i.dk = tail call noundef i32 @llvm.smax.i32(i32 %i.df, i32 %i.dj)
  store i32 %i.dk, ptr %i.w, align 8, !tbaa !119
  %i.dl = load <2 x i32>, ptr %0, align 8, !tbaa !40
  %i.dm = icmp sgt <2 x i32> %i.dg, %i.dl         ; 3 uses
  %i.dn = shufflevector <2 x i1> %i.dm, <2 x i1> poison, <2 x i32> <i32 1, i32 0>
  %i.do = zext <2 x i1> %i.dn to <2 x i32>
  %i.dp = load <2 x i32>, ptr %i.o, align 4, !tbaa !40
  %i.dq = add nsw <2 x i32> %i.dp, %i.do
  store <2 x i32> %i.dq, ptr %i.o, align 4, !tbaa !40
  %6 = extractelement <2 x i1> %i.dm, i64 0
  %7 = extractelement <2 x i1> %i.dm, i64 1
  %8 = select i1 %7, i1 true, i1 %6
  br i1 %8, label %bb.b, label %Cbs3_ManSolveInt.exit._crit_edge

Cbs3_ManSolveInt.exit._crit_edge:                 ; preds = %bb.b, %Cbs3_ManSolveInt.exit, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ %.035.i, %Cbs3_ManSolveInt.exit ], [ -1, %bb.b ]
  %i.dr = getelementptr i8, ptr %0, i64 292       ; 3 uses
  %.val89.i = load i32, ptr %i.dr, align 4, !tbaa !34
  %i.ds = icmp sgt i32 %.val89.i, 0
  br i1 %i.ds, label %.lr.ph.i, label %Cbs3_ManCleanWatch.exit

.lr.ph.i:                                         ; preds = %Cbs3_ManSolveInt.exit._crit_edge
  %i.dt = getelementptr i8, ptr %0, i64 296
  %.val7.i = load ptr, ptr %i.dt, align 8, !tbaa !36
  %i.du = getelementptr i8, ptr %0, i64 280
  %.val.i = load ptr, ptr %i.du, align 8, !tbaa !36
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.w ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.val7.i, i64 %indvars.iv.i
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !40
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.dx
  store i32 0, ptr %i.dy, align 4, !tbaa !40
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val8.i = load i32, ptr %i.dr, align 4, !tbaa !34
  %i.dz = sext i32 %.val8.i to i64
  %i.ea = icmp slt i64 %indvars.iv.next.i, %i.dz
  br i1 %i.ea, label %bb.w, label %Cbs3_ManCleanWatch.exit, !llvm.loop !117

Cbs3_ManCleanWatch.exit:                          ; preds = %bb.w, %Cbs3_ManSolveInt.exit._crit_edge
  store i32 0, ptr %i.dr, align 4, !tbaa !34
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %i.ec, align 4, !tbaa !32
  store i32 1, ptr %i.eb, align 8, !tbaa !33
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define void @Cbs3_ManSatPrintStats(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = getelementptr i8, ptr %i.b, i64 72
  %.val = load ptr, ptr %i.c, align 8, !tbaa !78
  %i.d = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.d, align 4, !tbaa !34
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.val.val) ; 0 uses
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !120
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !121
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %.val3.i = load i32, ptr %i.k, align 4, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78
  %i.n = getelementptr i8, ptr %i.m, i64 4
  %.val.i = load i32, ptr %i.n, align 4, !tbaa !34
  %i.o = add i32 %.val.i, %.val3.i
  %i.p = xor i32 %i.o, -1
  %i.q = add i32 %i.h, %i.p
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.q) ; 0 uses
  %i.s = load i32, ptr %0, align 8, !tbaa !25
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.s) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !79
  %i.w = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.v) ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !62
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.y) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !80 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !81 ; 2 uses
  %.not = icmp eq i32 %i.ad, 0
  %i.ae = sitofp i32 %i.ab to double              ; 2 uses
  %i.af = fmul nnan double %i.ae, 1.000000e+02
  %i.ag = sitofp i32 %i.ad to double
  %i.ah = fdiv double %i.af, %i.ag
  %i.ai = select i1 %.not, double 0.000000e+00, double %i.ah
  %.not47 = icmp eq i32 %i.ab, 0
  br i1 %.not47, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !82
  %i.al = sitofp i32 %i.ak to double
  %i.am = fdiv double %i.al, %i.ae
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.an = phi double [ %i.am, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.ao = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.ab, double noundef %i.ai, double noundef %i.an) ; 0 uses
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !83
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 4 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !84 ; 2 uses
  %.not48 = icmp eq i64 %i.as, 0
  %i.at = sitofp i64 %i.as to double
  %i.au = sitofp i64 %i.aq to double
  %i.av = insertelement <2 x double> poison, double %i.au, i64 0
  %i.aw = shufflevector <2 x double> %i.av, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = fmul nnan <2 x double> %i.aw, <double 1.000000e+00, double 1.000000e+02>
  %i.ay = insertelement <2 x double> <double 1.000000e+06, double poison>, double %i.at, i64 1
  %i.az = fdiv <2 x double> %i.ax, %i.ay          ; 2 uses
  %i.ba = extractelement <2 x double> %i.az, i64 1
  %i.bb = select i1 %.not48, double 0.000000e+00, double %i.ba
  %i.bc = extractelement <2 x double> %i.az, i64 0
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.9, double noundef %i.bc, double noundef %i.bb)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !85 ; 3 uses
  %i.bf = load i32, ptr %i.ac, align 4, !tbaa !81 ; 2 uses
  %.not49 = icmp eq i32 %i.bf, 0
  %i.bg = sitofp i32 %i.be to double              ; 2 uses
  %i.bh = fmul nnan double %i.bg, 1.000000e+02
  %i.bi = sitofp i32 %i.bf to double
  %i.bj = fdiv double %i.bh, %i.bi
  %i.bk = select i1 %.not49, double 0.000000e+00, double %i.bj
  %.not50 = icmp eq i32 %i.be, 0
  br i1 %.not50, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !86
  %i.bn = sitofp i32 %i.bm to double
  %i.bo = fdiv double %i.bn, %i.bg
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bp = phi double [ %i.bo, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.bq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.be, double noundef %i.bk, double noundef %i.bp) ; 0 uses
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !87
  %i.bt = load i64, ptr %i.ar, align 8, !tbaa !84 ; 2 uses
  %.not51 = icmp eq i64 %i.bt, 0
  %i.bu = sitofp i64 %i.bt to double
  %i.bv = sitofp i64 %i.bs to double
  %i.bw = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = fmul nnan <2 x double> %i.bx, <double 1.000000e+00, double 1.000000e+02>
  %i.bz = insertelement <2 x double> <double 1.000000e+06, double poison>, double %i.bu, i64 1
  %i.ca = fdiv <2 x double> %i.by, %i.bz          ; 2 uses
  %i.cb = extractelement <2 x double> %i.ca, i64 1
  %i.cc = select i1 %.not51, double 0.000000e+00, double %i.cb
  %i.cd = extractelement <2 x double> %i.ca, i64 0
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.9, double noundef %i.cd, double noundef %i.cc)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !88 ; 3 uses
  %i.cg = load i32, ptr %i.ac, align 4, !tbaa !81 ; 2 uses
  %i.ch = sitofp i32 %i.cf to double              ; 2 uses
  %.not53 = icmp eq i32 %i.cf, 0
  br i1 %.not53, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !89
  %i.ck = sitofp i32 %i.cj to double
  %i.cl = fdiv double %i.ck, %i.ch
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.cm = phi double [ %i.cl, %bb.f ], [ 0.000000e+00, %bb.e ]
  %.not52 = icmp eq i32 %i.cg, 0
  %i.cn = fmul nnan double %i.ch, 1.000000e+02
  %i.co = sitofp i32 %i.cg to double
  %i.cp = fdiv double %i.cn, %i.co
  %i.cq = select i1 %.not52, double 0.000000e+00, double %i.cp
  %i.cr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %i.cf, double noundef %i.cq, double noundef %i.cm) ; 0 uses
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !90
  %i.cu = sitofp i64 %i.ct to double              ; 2 uses
  %i.cv = load i64, ptr %i.ar, align 8, !tbaa !84 ; 2 uses
  %.not54 = icmp eq i64 %i.cv, 0
  %i.cw = sitofp i64 %i.cv to double
  %i.cx = fmul nnan double %i.cu, 1.000000e+02
  %i.cy = fdiv double %i.cx, %i.cw
  %i.cz = select i1 %.not54, double 0.000000e+00, double %i.cy
  %i.da = fdiv double %i.cu, 1.000000e+06
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.9, double noundef %i.da, double noundef %i.cz)
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.12)
  %i.db = load i64, ptr %i.ar, align 8, !tbaa !84
  %i.dc = sitofp i64 %i.db to double
  %i.dd = fdiv double %i.dc, 1.000000e+06
  tail call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.13, double noundef %i.dd)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #14 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !40
end_hunk_0
