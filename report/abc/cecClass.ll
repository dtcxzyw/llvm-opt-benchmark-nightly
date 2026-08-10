inline.NumInlined: 225
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 24
begin_hunk_0_@Cec_ManSimCreateInfo:bb.a
  br i1 %i.bf, label %.lr.ph68, label %._crit_edge69.loopexit, !llvm.loop !157

._crit_edge69.loopexit:                           ; preds = %.lr.ph68
  %.val44.pre = load i32, ptr %i.o, align 8, !tbaa !127
  br label %._crit_edge69

._crit_edge69:                                    ; preds = %._crit_edge69.loopexit, %.lr.ph74.split
  %.val44 = phi i32 [ %.val44.pre, %._crit_edge69.loopexit ], [ %.val44104, %.lr.ph74.split ] ; 2 uses
  %i.bg = phi i32 [ %i.bd, %._crit_edge69.loopexit ], [ %i.ap, %.lr.ph74.split ]
  %i.bh = add nuw nsw i32 %.13872, 1              ; 2 uses
  %i.bi = icmp slt i32 %i.bh, %.val44
  br i1 %i.bi, label %.lr.ph74.split, label %.loopexit, !llvm.loop !158

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bj = getelementptr i8, ptr %.pre106, i64 64
  %.val79 = load ptr, ptr %i.bj, align 8, !tbaa !113
  %i.bk = getelementptr i8, ptr %.val79, i64 4
  %.val.val80 = load i32, ptr %i.bk, align 4, !tbaa !26
  %i.bl = icmp sgt i32 %.val.val80, 0
  br i1 %i.bl, label %.lr.ph83, label %.loopexit

.lr.ph83:                                         ; preds = %bb.c
  %i.bm = getelementptr i8, ptr %1, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !62 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph83.split, label %.loopexit

.lr.ph83.split:                                   ; preds = %.lr.ph83, %._crit_edge78
  %i.bq = phi ptr [ %i.ca, %._crit_edge78 ], [ %.pre106, %.lr.ph83 ]
  %i.br = phi i32 [ %i.cb, %._crit_edge78 ], [ %i.bo, %.lr.ph83 ] ; 2 uses
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %._crit_edge78 ], [ 0, %.lr.ph83 ] ; 2 uses
  %.val40 = load ptr, ptr %i.bm, align 8, !tbaa !121
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.val40, i64 %indvars.iv100
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !123
  %i.bu = icmp sgt i32 %i.br, 0
  br i1 %i.bu, label %.lr.ph77, label %._crit_edge78

.lr.ph77:                                         ; preds = %.lr.ph83.split, %.lr.ph77
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %.lr.ph77 ], [ 0, %.lr.ph83.split ] ; 2 uses
  %i.bv = tail call i32 @Gia_ManRandom(i32 noundef 0) #24
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv97
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !8
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.bx = load i32, ptr %i.bn, align 8, !tbaa !62 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.next98, %i.by
  br i1 %i.bz, label %.lr.ph77, label %._crit_edge78.loopexit, !llvm.loop !159

._crit_edge78.loopexit:                           ; preds = %.lr.ph77
  %.pre107 = load ptr, ptr %0, align 8, !tbaa !61
  br label %._crit_edge78

._crit_edge78:                                    ; preds = %._crit_edge78.loopexit, %.lr.ph83.split
  %i.ca = phi ptr [ %.pre107, %._crit_edge78.loopexit ], [ %i.bq, %.lr.ph83.split ] ; 2 uses
  %i.cb = phi i32 [ %i.bx, %._crit_edge78.loopexit ], [ %i.br, %.lr.ph83.split ]
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %i.cc = getelementptr i8, ptr %i.ca, i64 64
  %.val = load ptr, ptr %i.cc, align 8, !tbaa !113
  %i.cd = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.cd, align 4, !tbaa !26
  %i.ce = sext i32 %.val.val to i64
  %i.cf = icmp slt i64 %indvars.iv.next101, %i.ce
  br i1 %i.cf, label %.lr.ph83.split, label %.loopexit, !llvm.loop !160

.loopexit:                                        ; preds = %._crit_edge69, %._crit_edge78, %.lr.ph83, %.lr.ph74, %.preheader, %bb.c
  ret void
}

declare i32 @Gia_ManRandom(i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Cec_ManSimClassesPrepare(ptr noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !61     ; 4 uses
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %.val123 = load i32, ptr %i.b, align 8, !tbaa !71
  %i.c = sext i32 %.val123 to i64                 ; 2 uses
  %i.d = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 4) #25
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store ptr %i.d, ptr %i.e, align 8, !tbaa !31
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.c, i64 noundef 4) #25
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store ptr %i.f, ptr %i.g, align 8, !tbaa !50
  tail call void @Gia_ManCreateValueRefs(ptr noundef %i.a) #24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i32, ptr %i.j, align 4, !tbaa !161
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.c, label %.preheader139

.preheader139:                                    ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8, !tbaa !61     ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !71
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader139, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader139 ] ; 2 uses
  %i.p = phi ptr [ %i.v, %bb.b ], [ %i.l, %.preheader139 ] ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 32
  %.val112 = load ptr, ptr %i.q, align 8, !tbaa !85
  %.not97 = icmp eq ptr %.val112, null
  br i1 %.not97, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.r = getelementptr i8, ptr %i.p, i64 192
  %.val109 = load ptr, ptr %i.r, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val109, i64 %indvars.iv ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = or i32 %i.t, 268435455
  store i32 %i.u, ptr %i.s, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !61     ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !71
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %.lr.ph, label %.critedge, !llvm.loop !162

bb.c:                                             ; preds = %bb.a
  %i.aa = icmp eq i32 %1, -1
  %i.ab = load ptr, ptr %0, align 8, !tbaa !61    ; 4 uses
  br i1 %i.aa, label %.preheader138, label %bb.e

.preheader138:                                    ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !71
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph150, label %.critedge

.lr.ph150:                                        ; preds = %.preheader138, %bb.d
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %bb.d ], [ 0, %.preheader138 ] ; 3 uses
  %i.af = phi ptr [ %i.ar, %bb.d ], [ %i.ab, %.preheader138 ] ; 3 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 32
  %.val111 = load ptr, ptr %i.ag, align 8, !tbaa !85 ; 2 uses
  %.not95 = icmp eq ptr %.val111, null
  br i1 %.not95, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph150
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %.val111, i64 %indvars.iv168
  %.val125 = load i64, ptr %i.ah, align 4         ; 2 uses
  %i.ai = and i64 %.val125, 2147483648
  %.not.i = icmp ne i64 %i.ai, 0
  %i.aj = and i64 %.val125, 536870911
  %i.ak = icmp eq i64 %i.aj, 536870911
  %narrow.i.not = or i1 %.not.i, %i.ak
  %i.al = select i1 %narrow.i.not, i32 268435455, i32 0
  %i.am = getelementptr i8, ptr %i.af, i64 192
  %.val108 = load ptr, ptr %i.am, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.val108, i64 %indvars.iv168 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = and i32 %i.ao, -268435456
  %i.aq = or disjoint i32 %i.al, %i.ap
  store i32 %i.aq, ptr %i.an, align 4
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !61    ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !71
  %i.au = sext i32 %i.at to i64
  %i.av = icmp slt i64 %indvars.iv.next169, %i.au
  br i1 %i.av, label %.lr.ph150, label %.critedge, !llvm.loop !163

bb.e:                                             ; preds = %bb.c
  %i.aw = tail call i32 @Gia_ManLevelNum(ptr noundef %i.ab) #24 ; 0 uses
  %i.ax = load ptr, ptr %0, align 8, !tbaa !61    ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !71
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph146, label %.critedge4

.lr.ph146:                                        ; preds = %bb.e, %bb.s
  %indvars.iv165 = phi i64 [ %indvars.iv.next166.pre-phi, %bb.s ], [ 0, %bb.e ] ; 10 uses
  %i.bb = phi ptr [ %i.cx, %bb.s ], [ %i.ax, %bb.e ] ; 4 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 32
  %.val110 = load ptr, ptr %i.bc, align 8, !tbaa !85 ; 2 uses
  %.not92 = icmp eq ptr %.val110, null
  br i1 %.not92, label %.critedge4, label %bb.f

bb.f:                                             ; preds = %.lr.ph146
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %.val110, i64 %indvars.iv165
  %.val124 = load i64, ptr %i.bd, align 4         ; 2 uses
  %i.be = and i64 %.val124, 2147483648
  %.not.i132 = icmp ne i64 %i.be, 0
  %i.bf = and i64 %.val124, 536870911
  %i.bg = icmp eq i64 %i.bf, 536870911
  %narrow.i133.not = or i1 %.not.i132, %i.bg
  br i1 %narrow.i133.not, label %._crit_edge180, label %bb.g

._crit_edge180:                                   ; preds = %bb.f
  %.pre181 = add nuw nsw i64 %indvars.iv165, 1
  br label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.bh = getelementptr i8, ptr %i.bb, i64 160
  %.val128 = load ptr, ptr %i.bh, align 8, !tbaa !164 ; 7 uses
  %i.bi = add nuw nsw i64 %indvars.iv165, 1       ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val128, i64 4 ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !26 ; 4 uses
  %i.bl = sext i32 %i.bk to i64                   ; 4 uses
  %.not.i.not.i.i.i = icmp slt i64 %indvars.iv165, %i.bl
  br i1 %.not.i.not.i.i.i, label %Gia_ObjLevel.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = load i32, ptr %.val128, align 8, !tbaa !58 ; 4 uses
  %i.bn = shl nsw i32 %i.bm, 1                    ; 2 uses
  %2 = sext i32 %i.bn to i64
  %.not.i.i.i = icmp slt i64 %indvars.iv165, %2
  %i.bo = sext i32 %i.bm to i64
  %.not.i.i.not.i.i.i.a = icmp slt i64 %indvars.iv165, %i.bo ; 2 uses
  br i1 %.not.i.i.i, label %bb.m, label %3

3:                                                ; preds = %bb.h
  br i1 %.not.i.i.not.i.i.i.a, label %Vec_IntGrow.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %3
  %i.bp = getelementptr inbounds nuw i8, ptr %.val128, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !30 ; 2 uses
  %.not9.i.i.i.i.i = icmp eq ptr %i.bq, null
  %i.br = shl nuw nsw i64 %i.bi, 2                ; 2 uses
  br i1 %.not9.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = tail call ptr @realloc(ptr noundef nonnull %i.bq, i64 noundef %i.br) #22
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bt = tail call noalias ptr @malloc(i64 noundef %i.br) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bu = phi ptr [ %i.bs, %bb.j ], [ %i.bt, %bb.k ]
  store ptr %i.bu, ptr %i.bp, align 8, !tbaa !30
  %i.bv = trunc nuw nsw i64 %i.bi to i32
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

bb.m:                                             ; preds = %bb.h
  br i1 %.not.i.i.not.i.i.i.a, label %Vec_IntGrow.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = icmp slt i32 %i.bm, 1073741823
  %spec.select.i.i.i.i = select i1 %i.bw, i32 %i.bn, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i.i = icmp slt i32 %i.bm, %spec.select.i.i.i.i
  br i1 %.not.i22.i.i.i.i, label %bb.o, label %Vec_IntGrow.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %.val128, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !30 ; 2 uses
  %.not9.i23.i.i.i.i = icmp eq ptr %i.by, null
  %i.bz = sext i32 %spec.select.i.i.i.i to i64
  %i.ca = shl nsw i64 %i.bz, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cb = tail call ptr @realloc(ptr noundef nonnull %i.by, i64 noundef %i.ca) #22
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cc = tail call noalias ptr @malloc(i64 noundef %i.ca) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cd = phi ptr [ %i.cb, %bb.p ], [ %i.cc, %bb.q ]
  store ptr %i.cd, ptr %i.bx, align 8, !tbaa !30
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i:              ; preds = %bb.r, %bb.l
  %spec.select.sink.i.i.i.i = phi i32 [ %spec.select.i.i.i.i, %bb.r ], [ %i.bv, %bb.l ]
  store i32 %spec.select.sink.i.i.i.i, ptr %.val128, align 8, !tbaa !58
  %.pre.i.i.i = load i32, ptr %i.bj, align 4, !tbaa !26 ; 2 uses
  %.pre179 = sext i32 %.pre.i.i.i to i64
  br label %Vec_IntGrow.exit.i.i.i.i

Vec_IntGrow.exit.i.i.i.i:                         ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i, %bb.n, %bb.m, %3
  %.pre-phi = phi i64 [ %.pre179, %Vec_IntGrow.exit.sink.split.i.i.i.i ], [ %i.bl, %bb.n ], [ %i.bl, %bb.m ], [ %i.bl, %3 ] ; 2 uses
  %4 = phi i32 [ %.pre.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i ], [ %i.bk, %bb.n ], [ %i.bk, %bb.m ], [ %i.bk, %3 ]
  %.not3.i.i.i = icmp sgt i64 %.pre-phi, %indvars.iv165
  br i1 %.not3.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %Vec_IntGrow.exit.i.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.val128, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !30
  %i.cg = shl nsw i64 %.pre-phi, 2
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.cf, i64 %i.cg
  %i.ch = trunc nuw nsw i64 %indvars.iv165 to i32
  %i.ci = sub i32 %i.ch, %4
  %i.cj = zext i32 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 2
  %i.cl = add nuw nsw i64 %i.ck, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i.i.i, i8 0, i64 %i.cl, i1 false), !tbaa !8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i
  %i.cm = trunc nuw nsw i64 %i.bi to i32
  store i32 %i.cm, ptr %i.bj, align 4, !tbaa !26
  br label %Gia_ObjLevel.exit

Gia_ObjLevel.exit:                                ; preds = %bb.g, %._crit_edge.i.i.i.i
  %i.cn = getelementptr i8, ptr %.val128, i64 8
  %.val.i.i.i = load ptr, ptr %i.cn, align 8, !tbaa !30
  %sext.i = shl nuw nsw i64 %indvars.iv165, 2
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %sext.i
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !8
  %.not94 = icmp sgt i32 %i.cp, %1
  %i.cq = select i1 %.not94, i32 268435455, i32 0
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge180, %Gia_ObjLevel.exit
  %indvars.iv.next166.pre-phi = phi i64 [ %.pre181, %._crit_edge180 ], [ %i.bi, %Gia_ObjLevel.exit ] ; 2 uses
  %i.cr = phi i32 [ 268435455, %._crit_edge180 ], [ %i.cq, %Gia_ObjLevel.exit ]
  %i.cs = getelementptr i8, ptr %i.bb, i64 192
  %.val107 = load ptr, ptr %i.cs, align 8, !tbaa !31
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.val107, i64 %indvars.iv165 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = and i32 %i.cu, -268435456
  %i.cw = or disjoint i32 %i.cv, %i.cr
  store i32 %i.cw, ptr %i.ct, align 4
  %i.cx = load ptr, ptr %0, align 8, !tbaa !61    ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !71
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next166.pre-phi, %i.da
  br i1 %i.db, label %.lr.ph146, label %.critedge4, !llvm.loop !165

.critedge4:                                       ; preds = %.lr.ph146, %bb.s, %bb.e
  %.lcssa = phi ptr [ %i.ax, %bb.e ], [ %i.cx, %bb.s ], [ %i.bb, %.lr.ph146 ] ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.lcssa, i64 160 ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !166 ; 3 uses
  %i.de = icmp eq ptr %i.dd, null
  br i1 %i.de, label %.critedge, label %bb.t

bb.t:                                             ; preds = %.critedge4
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !30 ; 2 uses
  %.not.i134 = icmp eq ptr %i.dg, null
  br i1 %.not.i134, label %bb.u, label %.thread.i

.thread.i:                                        ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.dg) #24
  %i.dh = load ptr, ptr %i.dc, align 8, !tbaa !166 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store ptr null, ptr %i.di, align 8, !tbaa !30
  br label %bb.u

bb.u:                                             ; preds = %.thread.i, %bb.t
  %i.dj = phi ptr [ %i.dh, %.thread.i ], [ %i.dd, %bb.t ]
  tail call void @free(ptr noundef nonnull %i.dj) #24
  store ptr null, ptr %i.dc, align 8, !tbaa !166
  %.pre174.pre = load ptr, ptr %0, align 8, !tbaa !61
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.lr.ph, %.lr.ph150, %bb.d, %.preheader139, %.preheader138, %bb.u, %.critedge4
  %.pre174 = phi ptr [ %i.af, %.lr.ph150 ], [ %.lcssa, %.critedge4 ], [ %i.l, %.preheader139 ], [ %i.ab, %.preheader138 ], [ %.pre174.pre, %bb.u ], [ %i.ar, %bb.d ], [ %i.v, %bb.b ], [ %i.p, %.lr.ph ] ; 4 uses
  %i.dk = load ptr, ptr %i.h, align 8, !tbaa !98
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 28
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !153
  %.not98 = icmp eq i32 %i.dm, 0
  br i1 %.not98, label %.critedge6, label %.preheader

.preheader:                                       ; preds = %.critedge
  %i.dn = getelementptr i8, ptr %.pre174, i64 16
  %.val115152 = load i32, ptr %i.dn, align 8, !tbaa !127 ; 2 uses
  %i.do = icmp sgt i32 %.val115152, 0
  br i1 %i.do, label %.lr.ph155, label %.critedge6

.lr.ph155:                                        ; preds = %.preheader, %bb.x
  %i.dp = phi ptr [ %i.eh, %bb.x ], [ %.pre174, %.preheader ] ; 5 uses
  %.val115154 = phi i32 [ %.val115, %bb.x ], [ %.val115152, %.preheader ]
  %.3153 = phi i32 [ %i.ei, %bb.x ], [ 0, %.preheader ] ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 32
  %.val129 = load ptr, ptr %i.dq, align 8, !tbaa !85 ; 2 uses
  %.not99 = icmp eq ptr %.val129, null
  br i1 %.not99, label %.critedge6, label %bb.v

bb.v:                                             ; preds = %.lr.ph155
  %i.dr = getelementptr i8, ptr %i.dp, i64 64
  %.val117 = load ptr, ptr %i.dr, align 8, !tbaa !113 ; 2 uses
  %i.ds = getelementptr i8, ptr %.val117, i64 8
  %.val130.val = load ptr, ptr %i.ds, align 8, !tbaa !30
  %i.dt = sub i32 %.3153, %.val115154
  %i.du = getelementptr i8, ptr %.val117, i64 4
  %.val117.val = load i32, ptr %i.du, align 4, !tbaa !26
  %i.dv = add i32 %i.dt, %.val117.val
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %.val130.val, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !8
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %i.ea = getelementptr inbounds [12 x i8], ptr %.val129, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !86
  %.not106 = icmp eq i32 %i.ec, 0
  br i1 %.not106, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ed = getelementptr i8, ptr %i.dp, i64 192
  %.val = load ptr, ptr %i.ed, align 8, !tbaa !31
  %i.ee = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.dz ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = and i32 %i.ef, -268435456
  store i32 %i.eg, ptr %i.ee, align 4
  %.pre = load ptr, ptr %0, align 8, !tbaa !61
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.eh = phi ptr [ %i.dp, %bb.v ], [ %.pre, %bb.w ] ; 3 uses
  %i.ei = add nuw nsw i32 %.3153, 1               ; 2 uses
  %i.ej = getelementptr i8, ptr %i.eh, i64 16
  %.val115 = load i32, ptr %i.ej, align 8, !tbaa !127 ; 2 uses
  %i.ek = icmp slt i32 %i.ei, %.val115
  br i1 %i.ek, label %.lr.ph155, label %.critedge6, !llvm.loop !167

.critedge6:                                       ; preds = %bb.x, %.lr.ph155, %.preheader, %.critedge
  %i.el = phi ptr [ %.pre174, %.critedge ], [ %.pre174, %.preheader ], [ %i.eh, %bb.x ], [ %i.dp, %.lr.ph155 ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 840
  %i.en = load i32, ptr %i.em, align 8, !tbaa !168 ; 2 uses
  %.not100 = icmp eq i32 %i.en, 0
  br i1 %.not100, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %.critedge6
  %i.eo = shl nsw i32 %i.en, 1
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.eo, ptr %i.ep, align 8, !tbaa !62
  %i.eq = getelementptr i8, ptr %i.el, i64 64
  %.val113157 = load ptr, ptr %i.eq, align 8, !tbaa !113
  %i.er = getelementptr i8, ptr %.val113157, i64 4
  %.val113.val158 = load i32, ptr %i.er, align 4, !tbaa !26
  %i.es = icmp sgt i32 %.val113.val158, 0
  br i1 %i.es, label %.lr.ph160, label %._crit_edge

.lr.ph160:                                        ; preds = %bb.y
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.z

bb.z:                                             ; preds = %.lr.ph160, %bb.z
  %indvars.iv171 = phi i64 [ 0, %.lr.ph160 ], [ %indvars.iv.next172, %bb.z ] ; 3 uses
  %i.eu = phi ptr [ %i.el, %.lr.ph160 ], [ %i.fk, %bb.z ] ; 2 uses
  %i.ev = load ptr, ptr %i.et, align 8, !tbaa !120
  %i.ew = getelementptr i8, ptr %i.ev, i64 8
  %.val114 = load ptr, ptr %i.ew, align 8, !tbaa !121
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.val114, i64 %indvars.iv171
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !123
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 872
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !169
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 840
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !168 ; 2 uses
  %i.fd = trunc nuw nsw i64 %indvars.iv171 to i32
  %i.fe = mul nsw i32 %i.fc, %i.fd
  %i.ff = getelementptr i8, ptr %i.fa, i64 8
  %.val131 = load ptr, ptr %i.ff, align 8, !tbaa !170
  %i.fg = sext i32 %i.fe to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %.val131, i64 %i.fg
  %i.fi = sext i32 %i.fc to i64
  %i.fj = shl nsw i64 %i.fi, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ey, ptr align 8 %i.fh, i64 %i.fj, i1 false)
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %i.fk = load ptr, ptr %0, align 8, !tbaa !61    ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 64
  %.val113 = load ptr, ptr %i.fl, align 8, !tbaa !113
  %i.fm = getelementptr i8, ptr %.val113, i64 4
  %.val113.val = load i32, ptr %i.fm, align 4, !tbaa !26
  %i.fn = sext i32 %.val113.val to i64
  %i.fo = icmp slt i64 %indvars.iv.next172, %i.fn
  br i1 %i.fo, label %bb.z, label %._crit_edge, !llvm.loop !173

._crit_edge:                                      ; preds = %bb.z, %bb.y
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !120
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !132
  %i.ft = tail call fastcc range(i32 0, 2) i32 @Cec_ManSimSimulateRoundInt(ptr noundef nonnull %0, ptr noundef readonly %i.fq, ptr noundef readonly %i.fs, ptr noundef null)
  %.not104 = icmp eq i32 %i.ft, 0
  br i1 %.not104, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %._crit_edge
  %i.fu = load ptr, ptr %i.h, align 8, !tbaa !98  ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 44
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !174
  %.not105 = icmp eq i32 %i.fw, 0
  br i1 %.not105, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fx = load ptr, ptr %0, align 8, !tbaa !61
  %i.fy = getelementptr i8, ptr %0, i64 48
  %.val121 = load i32, ptr %i.fy, align 8, !tbaa !88
  %.val120.val = load i32, ptr %i.fu, align 4, !tbaa !151
  %i.fz = sitofp i32 %.val121 to double
end_hunk_0
