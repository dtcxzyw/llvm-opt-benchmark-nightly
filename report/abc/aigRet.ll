Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/aigRet?download=true
inline.NumInlined: 206
inline.NumDeleted: 57
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Rtm_ObjRetimeBwd:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge.i = phi i32 [ %i.ay, %bb.d ], [ %i.am, %bb.c ] ; 3 uses
  store i32 %storemerge.i, ptr %i.q, align 8
  %i.az = and i32 %storemerge.i, 4095
  %i.ba = icmp eq i32 %i.az, 10
  br i1 %i.ba, label %bb.f, label %Rtm_ObjRemLast.exit

bb.f:                                             ; preds = %bb.e
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.bb = lshr i32 %storemerge.i, 12
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !32
  %i.bf = shl i32 %i.be, 12
  %i.bg = or disjoint i32 %i.bf, 10
  store i32 %i.bg, ptr %i.q, align 8
  br label %Rtm_ObjRemLast.exit

Rtm_ObjRemLast.exit:                              ; preds = %bb.e, %bb.f
  %i.bh = add nuw nsw i32 %.015, 1                ; 2 uses
  %i.bi = load i32, ptr %i.a, align 4, !tbaa !47
  %i.bj = icmp slt i32 %i.bh, %i.bi
  br i1 %i.bj, label %bb.b, label %.critedge.preheader, !llvm.loop !57

.critedge:                                        ; preds = %.critedge.preheader, %.critedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge ], [ 0, %.critedge.preheader ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.bk = getelementptr i8, ptr %1, i64 %.idx
  %i.bl = getelementptr i8, ptr %i.bk, i64 32
  tail call fastcc void @Rtm_ObjAddFirst(ptr noundef %0, ptr noundef %i.bl, i32 noundef 3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bm = load i32, ptr %i.f, align 8
  %i.bn = lshr i32 %i.bm, 7
  %i.bo = and i32 %i.bn, 255
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = icmp samesign ult i64 %indvars.iv.next, %i.bp
  br i1 %i.bq, label %.critedge, label %.critedge2, !llvm.loop !58

.critedge2:                                       ; preds = %.critedge, %.critedge.preheader
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Rtm_ObjAddFirst(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 1, 4) %2) unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 5 uses
  %i.b = and i32 %i.a, 4095                       ; 2 uses
  %i.c = icmp eq i32 %i.b, 10
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !54   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !55   ; 2 uses
  %.not.i = icmp slt i32 %i.e, %i.g
  br i1 %.not.i, label %._crit_edge.i, label %bb.c

._crit_edge.i:                                    ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !36
  br label %Rtm_ObjTransferToBig.exit

bb.c:                                             ; preds = %bb.b
  %i.h = shl nsw i32 %i.g, 1
  %i.i = tail call range(i32 -2147483647, -2147483648) i32 @llvm.smax.i32(i32 %i.h, i32 1024) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !36   ; 2 uses
  %.not15.i = icmp eq ptr %i.k, null
  %i.l = zext nneg i32 %i.i to i64
  %i.m = shl nuw nsw i64 %i.l, 2                  ; 2 uses
  br i1 %.not15.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = tail call ptr @realloc(ptr noundef nonnull %i.k, i64 noundef %i.m) #25
  %.pre16.pre.i = load i32, ptr %i.d, align 8, !tbaa !54
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.m) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre16.i = phi i32 [ %.pre16.pre.i, %bb.d ], [ %i.e, %bb.e ]
  %i.p = phi ptr [ %i.n, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  store ptr %i.p, ptr %i.j, align 8, !tbaa !36
  store i32 %i.i, ptr %i.f, align 4, !tbaa !55
  %.pre = load i32, ptr %1, align 8
  br label %Rtm_ObjTransferToBig.exit

Rtm_ObjTransferToBig.exit:                        ; preds = %._crit_edge.i, %bb.f
  %i.q = phi i32 [ %i.a, %._crit_edge.i ], [ %.pre, %bb.f ]
  %i.r = phi i32 [ %i.e, %._crit_edge.i ], [ %.pre16.i, %bb.f ]
  %i.s = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.p, %bb.f ]
  %i.t = lshr i32 %i.q, 12
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.u
  store i32 %i.t, ptr %i.v, align 4, !tbaa !32
  %i.w = load i32, ptr %i.d, align 8, !tbaa !54   ; 2 uses
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.d, align 8, !tbaa !54
  %i.y = load i32, ptr %1, align 8
  %i.z = shl i32 %i.w, 12
  %i.aa = and i32 %i.y, 4095
  %i.ab = or disjoint i32 %i.aa, %i.z             ; 2 uses
  store i32 %i.ab, ptr %1, align 8
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.ac = and i32 %i.a, 15
  %i.ad = icmp eq i32 %i.ac, 15
  br i1 %i.ad, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ae = add nuw nsw i32 %i.b, 1                 ; 2 uses
  %i.af = lshr exact i32 %i.ae, 4                 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !54 ; 3 uses
  %i.ai = add nsw i32 %i.ah, %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !55 ; 2 uses
  %.not.i11 = icmp slt i32 %i.ai, %i.ak
  br i1 %.not.i11, label %._crit_edge.i12, label %bb.i

._crit_edge.i12:                                  ; preds = %bb.h
  %.phi.trans.insert.i13 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre.i14 = load ptr, ptr %.phi.trans.insert.i13, align 8, !tbaa !36
  br label %Rtm_ObjTransferToBigger.exit

bb.i:                                             ; preds = %bb.h
  %i.al = shl nsw i32 %i.ak, 1
  %i.am = tail call range(i32 -2147483647, -2147483648) i32 @llvm.smax.i32(i32 %i.al, i32 1024) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !36 ; 2 uses
  %.not24.i = icmp eq ptr %i.ao, null
  %i.ap = zext nneg i32 %i.am to i64
  %i.aq = shl nuw nsw i64 %i.ap, 2                ; 2 uses
  br i1 %.not24.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = tail call ptr @realloc(ptr noundef nonnull %i.ao, i64 noundef %i.aq) #25
  %.pre25.pre.i = load i32, ptr %i.ag, align 8, !tbaa !54
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.as = tail call noalias ptr @malloc(i64 noundef %i.aq) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pre25.i = phi i32 [ %.pre25.pre.i, %bb.j ], [ %i.ah, %bb.k ]
  %i.at = phi ptr [ %i.ar, %bb.j ], [ %i.as, %bb.k ] ; 2 uses
  store ptr %i.at, ptr %i.an, align 8, !tbaa !36
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !55
  %.pre26.i = load i32, ptr %1, align 8
  br label %Rtm_ObjTransferToBigger.exit

Rtm_ObjTransferToBigger.exit:                     ; preds = %._crit_edge.i12, %bb.l
  %i.au = phi i32 [ %i.a, %._crit_edge.i12 ], [ %.pre26.i, %bb.l ]
  %i.av = phi i32 [ %i.ah, %._crit_edge.i12 ], [ %.pre25.i, %bb.l ]
  %i.aw = phi ptr [ %.pre.i14, %._crit_edge.i12 ], [ %i.at, %bb.l ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = sext i32 %i.av to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ay
  %i.ba = lshr i32 %i.au, 12
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.bb
  %i.bd = lshr exact i32 %i.ae, 2
  %i.be = zext nneg i32 %i.bd to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.az, ptr noundef nonnull align 4 dereferenceable(1) %i.bc, i64 %i.be, i1 false)
  %i.bf = load ptr, ptr %i.ax, align 8, !tbaa !36
  %i.bg = load i32, ptr %i.ag, align 8, !tbaa !54
  %i.bh = add nsw i32 %i.bg, %i.af
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bi
  store i32 0, ptr %i.bj, align 4, !tbaa !32
  %i.bk = load i32, ptr %i.ag, align 8, !tbaa !54
  %i.bl = load i32, ptr %1, align 8
  %i.bm = shl i32 %i.bk, 12
  %i.bn = and i32 %i.bl, 4095
  %i.bo = or disjoint i32 %i.bn, %i.bm
  store i32 %i.bo, ptr %1, align 8
  %i.bp = add nuw nsw i32 %i.af, 1
  %i.bq = load i32, ptr %i.ag, align 8, !tbaa !54
  %i.br = add nsw i32 %i.bp, %i.bq
  store i32 %i.br, ptr %i.ag, align 8, !tbaa !54
  %.pre18 = load i32, ptr %1, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %Rtm_ObjTransferToBigger.exit, %Rtm_ObjTransferToBig.exit
  %i.bs = phi i32 [ %i.a, %bb.g ], [ %.pre18, %Rtm_ObjTransferToBigger.exit ], [ %i.ab, %Rtm_ObjTransferToBig.exit ] ; 6 uses
  %i.bt = and i32 %i.bs, 4094
  %i.bu = icmp samesign ugt i32 %i.bt, 9
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bv = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.bv, align 8, !tbaa !36 ; 2 uses
  %i.bw = lshr i32 %i.bs, 12
  %i.bx = zext nneg i32 %i.bw to i64              ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.bx ; 4 uses
  %narrow.i = add i32 %i.bs, 1
  %i.bz = and i32 %narrow.i, 4095                 ; 2 uses
  %i.ca = and i32 %i.bs, -4096
  %i.cb = or disjoint i32 %i.bz, %i.ca
  store i32 %i.cb, ptr %1, align 8
  %i.cc = add nuw nsw i32 %i.bz, 15
  %i.cd = lshr i32 %i.cc, 2
  %i.ce = and i32 %i.cd, 2044                     ; 2 uses
  %.idx.i = zext nneg i32 %i.ce to i64            ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx.i
  %.not.i15 = icmp eq i32 %i.ce, 0
  br i1 %.not.i15, label %Rtm_ObjAddFirst2.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.n
  %i.cg = ptrtoaddr ptr %.val to i64              ; 3 uses
  %i.ch = shl nuw nsw i64 %i.bx, 2                ; 3 uses
  %i.ci = add i64 %i.cg, %.idx.i
  %i.cj = add i64 %i.ci, %i.ch
  %i.ck = add i64 %i.ch, %i.cg
  %i.cl = add i64 %i.ck, 4
  %i.cm = tail call i64 @llvm.umax.i64(i64 %i.cj, i64 %i.cl)
  %i.cn = xor i64 %i.cg, -1
  %i.co = add i64 %i.cm, %i.cn
  %i.cp = sub i64 %i.co, %i.ch                    ; 2 uses
  %i.cq = lshr i64 %i.cp, 2
  %i.cr = add nuw nsw i64 %i.cq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cp, 28
  br i1 %min.iters.check, label %.lr.ph.i.preheader25, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.cr, 9223372036854775800     ; 3 uses
  %i.cs = shl i64 %n.vec, 2
  %i.ct = getelementptr i8, ptr %i.by, i64 %i.cs
  %vector.recur.init = insertelement <4 x i32> poison, i32 %2, i64 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph ], [ %i.cx, %vector.body ]
  %i.cu = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.by, i64 %i.cu ; 3 uses
  %i.cv = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !32 ; 2 uses
  %wide.load24 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !32 ; 2 uses
  %i.cw = lshr <4 x i32> %wide.load, splat (i32 30) ; 2 uses
  %i.cx = lshr <4 x i32> %wide.load24, splat (i32 30) ; 3 uses
  %i.cy = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.cw, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.cz = shufflevector <4 x i32> %i.cw, <4 x i32> %i.cx, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.da = shl <4 x i32> %wide.load, splat (i32 2)
  %i.db = shl <4 x i32> %wide.load24, splat (i32 2)
  %i.dc = or disjoint <4 x i32> %i.da, %i.cy
  %i.dd = or disjoint <4 x i32> %i.db, %i.cz
  store <4 x i32> %i.dc, ptr %next.gep, align 4, !tbaa !32
  store <4 x i32> %i.dd, ptr %i.cv, align 4, !tbaa !32
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.de = icmp eq i64 %index.next, %n.vec
  br i1 %i.de, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.cx, i64 3
  %cmp.n = icmp eq i64 %i.cr, %n.vec
  br i1 %cmp.n, label %Rtm_ObjAddFirst2.exit, label %.lr.ph.i.preheader25

.lr.ph.i.preheader25:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.02.i.ph = phi ptr [ %i.by, %.lr.ph.i.preheader ], [ %i.ct, %middle.block ]
  %.0111.i.ph = phi i32 [ %2, %.lr.ph.i.preheader ], [ %vector.recur.extract, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader25, %.lr.ph.i
  %.02.i = phi ptr [ %i.dj, %.lr.ph.i ], [ %.02.i.ph, %.lr.ph.i.preheader25 ] ; 3 uses
  %.0111.i = phi i32 [ %i.dg, %.lr.ph.i ], [ %.0111.i.ph, %.lr.ph.i.preheader25 ]
  %i.df = load i32, ptr %.02.i, align 4, !tbaa !32 ; 2 uses
  %i.dg = lshr i32 %i.df, 30
  %i.dh = shl i32 %i.df, 2
  %i.di = or disjoint i32 %i.dh, %.0111.i
  store i32 %i.di, ptr %.02.i, align 4, !tbaa !32
  %i.dj = getelementptr inbounds nuw i8, ptr %.02.i, i64 4 ; 2 uses
  %i.dk = icmp ult ptr %i.dj, %i.cf
  br i1 %i.dk, label %.lr.ph.i, label %Rtm_ObjAddFirst2.exit, !llvm.loop !60

bb.o:                                             ; preds = %bb.m
  %i.dl = lshr i32 %i.bs, 10
  %i.dm = and i32 %i.dl, 1048572
  %i.dn = or disjoint i32 %i.dm, %2
  %i.do = shl nuw i32 %i.dn, 12
  %narrow.i17 = add i32 %i.bs, 1
  %i.dp = and i32 %narrow.i17, 4095
  %i.dq = or disjoint i32 %i.do, %i.dp
  store i32 %i.dq, ptr %1, align 8
  br label %Rtm_ObjAddFirst2.exit

Rtm_ObjAddFirst2.exit:                            ; preds = %.lr.ph.i, %middle.block, %bb.n, %bb.o
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Rtm_ObjMarkAutoFwd_rec(ptr nofree noundef captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 16
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = or disjoint i32 %i.b, 16
  store i32 %i.d, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !47
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.07 = phi i32 [ 0, %.lr.ph ], [ %i.q, %bb.c ]  ; 2 uses
  %i.i = load i32, ptr %i.a, align 8
  %i.j = lshr i32 %i.i, 7
  %i.k = and i32 %i.j, 255
  %i.l = add nuw nsw i32 %i.k, %.07
  %i.m = shl nuw nsw i32 %i.l, 1
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !37
  tail call void @Rtm_ObjMarkAutoFwd_rec(ptr noundef %i.p)
  %i.q = add nuw nsw i32 %.07, 1                  ; 2 uses
  %i.r = load i32, ptr %i.e, align 4, !tbaa !47
  %i.s = icmp slt i32 %i.q, %i.r
  br i1 %i.s, label %bb.c, label %.critedge, !llvm.loop !61

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Rtm_ManMarkAutoFwd(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !29
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val23 = load ptr, ptr %i.b, align 8, !tbaa !28
  %i.c = load ptr, ptr %.val23, align 8, !tbaa !37
  tail call void @Rtm_ObjMarkAutoFwd_rec(ptr noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %.val2024 = load i32, ptr %i.f, align 4, !tbaa !25
  %i.g = icmp sgt i32 %.val2024, 0
  br i1 %i.g, label %.lr.ph, label %.critedge.preheader

.critedge.preheader:                              ; preds = %.lr.ph, %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.val26 = load i32, ptr %i.i, align 4, !tbaa !25
  %i.j = icmp sgt i32 %.val26, 0
  br i1 %i.j, label %.critedge, label %.critedge2

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.o, %.lr.ph ], [ %i.e, %bb.a ]
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %.val22 = load ptr, ptr %i.l, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val22, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !37
  tail call void @Rtm_ObjMarkAutoFwd_rec(ptr noundef %i.n)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %.val20 = load i32, ptr %i.p, align 4, !tbaa !25
  %i.q = sext i32 %.val20 to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %.lr.ph, label %.critedge.preheader, !llvm.loop !62

.critedge:                                        ; preds = %.critedge.preheader, %.critedge
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %.critedge ], [ 0, %.critedge.preheader ] ; 2 uses
  %i.s = phi ptr [ %i.ac, %.critedge ], [ %i.h, %.critedge.preheader ]
  %.028 = phi i32 [ %i.ab, %.critedge ], [ 0, %.critedge.preheader ]
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val21 = load ptr, ptr %i.t, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val21, i64 %indvars.iv32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !37
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = xor i32 %i.x, 16                         ; 2 uses
  store i32 %i.y, ptr %i.w, align 8
  %i.z = lshr i32 %i.y, 4
  %i.aa = and i32 %i.z, 1
  %i.ab = add nuw nsw i32 %i.aa, %.028            ; 2 uses
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %.val = load i32, ptr %i.ad, align 4, !tbaa !25
  %i.ae = sext i32 %.val to i64
  %i.af = icmp slt i64 %indvars.iv.next33, %i.ae
  br i1 %i.af, label %.critedge, label %.critedge2, !llvm.loop !63

.critedge2:                                       ; preds = %.critedge, %.critedge.preheader
  %.0.lcssa = phi i32 [ 0, %.critedge.preheader ], [ %i.ab, %.critedge ]
  ret i32 %.0.lcssa
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @Rtm_ObjMarkAutoBwd_rec(ptr nofree noundef captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = and i32 %i.b, 16
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.d = or disjoint i32 %i.b, 16
  store i32 %i.d, ptr %i.a, align 8
  %i.e = and i32 %i.b, 32640
  %.not8 = icmp eq i32 %i.e, 0
  br i1 %.not8, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
end_hunk_0
