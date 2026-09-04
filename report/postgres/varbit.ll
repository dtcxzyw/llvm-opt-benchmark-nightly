Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/varbit?download=true
inline.NumInlined: 250
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@bit_or:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.030 = phi ptr [ %i.ac, %.lr.ph ], [ %i.u, %.lr.ph.preheader ] ; 2 uses
  %.02129 = phi ptr [ %i.z, %.lr.ph ], [ %i.v, %.lr.ph.preheader ] ; 2 uses
  %.02228 = phi ptr [ %i.x, %.lr.ph ], [ %i.w, %.lr.ph.preheader ] ; 2 uses
  %.02327 = phi i32 [ %i.ad, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %.02228, i64 1
  %i.y = load i8, ptr %.02228, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %.02129, i64 1
  %i.aa = load i8, ptr %.02129, align 1
  %i.ab = or i8 %i.aa, %i.y
  %i.ac = getelementptr inbounds nuw i8, ptr %.030, i64 1
  store i8 %i.ab, ptr %.030, align 1
  %i.ad = add i32 %.02327, 1                      ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %.val = load i32, ptr %i.d, align 4
  %i.af = lshr i32 %.val, 2
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = add nsw i64 %i.ag, -8
  %i.ai = icmp ugt i64 %i.ah, %i.ae
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.aj = ptrtoint ptr %i.r to i64
  ret i64 %i.aj
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @bitxor(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #11 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum(ptr noundef %i.g) #11 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4
  %.not = icmp eq i32 %i.j, %i.l
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.n = tail call i32 @errcode(i32 noundef 101187714) #11 ; 0 uses
  %i.o = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.9) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1342, ptr noundef nonnull @__func__.bitxor) #11
  unreachable

bb.c:                                             ; preds = %bb.a
  %.val25 = load i32, ptr %i.d, align 4           ; 2 uses
  %i.p = lshr i32 %.val25, 2
  %i.q = zext nneg i32 %i.p to i64
  %i.r = tail call ptr @palloc(i64 noundef %i.q) #11 ; 4 uses
  %i.s = and i32 %.val25, -4
  store i32 %i.s, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %i.j, ptr %i.t, align 4
  %.val26 = load i32, ptr %i.d, align 4
  %.mask = and i32 %.val26, -4
  %.not31 = icmp eq i32 %.mask, 32
  br i1 %.not31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.030 = phi ptr [ %i.ac, %.lr.ph ], [ %i.u, %.lr.ph.preheader ] ; 2 uses
  %.02129 = phi ptr [ %i.z, %.lr.ph ], [ %i.v, %.lr.ph.preheader ] ; 2 uses
  %.02228 = phi ptr [ %i.x, %.lr.ph ], [ %i.w, %.lr.ph.preheader ] ; 2 uses
  %.02327 = phi i32 [ %i.ad, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.x = getelementptr inbounds nuw i8, ptr %.02228, i64 1
  %i.y = load i8, ptr %.02228, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %.02129, i64 1
  %i.aa = load i8, ptr %.02129, align 1
  %i.ab = xor i8 %i.aa, %i.y
  %i.ac = getelementptr inbounds nuw i8, ptr %.030, i64 1
  store i8 %i.ab, ptr %.030, align 1
  %i.ad = add i32 %.02327, 1                      ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %.val = load i32, ptr %i.d, align 4
  %i.af = lshr i32 %.val, 2
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = add nsw i64 %i.ag, -8
  %i.ai = icmp ugt i64 %i.ah, %i.ae
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.aj = ptrtoint ptr %i.r to i64
  ret i64 %i.aj
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @bitnot(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #11 ; 7 uses
  %.val23 = load i32, ptr %i.d, align 4
  %i.e = lshr i32 %.val23, 2
  %i.f = zext nneg i32 %i.e to i64
  %i.g = tail call ptr @palloc(i64 noundef %i.f) #11 ; 5 uses
  %.val22 = load i32, ptr %i.d, align 4
  %i.h = and i32 %.val22, -4                      ; 2 uses
  store i32 %i.h, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 2 uses
  store i32 %i.j, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.val2124 = load i32, ptr %i.d, align 4
  %i.m = icmp ugt i32 %.val2124, 35
  br i1 %i.m, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.026 = phi ptr [ %i.q, %.lr.ph ], [ %i.l, %.lr.ph.preheader ] ; 2 uses
  %.01925 = phi ptr [ %i.r, %.lr.ph ], [ %i.n, %.lr.ph.preheader ] ; 2 uses
  %i.o = load i8, ptr %.01925, align 1
  %i.p = xor i8 %i.o, -1
  %i.q = getelementptr inbounds nuw i8, ptr %.026, i64 1 ; 2 uses
  store i8 %i.p, ptr %.026, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.01925, i64 1 ; 2 uses
  %.val21 = load i32, ptr %i.d, align 4
  %i.s = lshr i32 %.val21, 2
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.t
  %i.v = icmp ult ptr %i.r, %i.u
  br i1 %i.v, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !29

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.val.pre = load i32, ptr %i.g, align 4
  %.pre = load i32, ptr %i.k, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.w = phi i32 [ %i.j, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.val = phi i32 [ %i.h, %bb.a ], [ %.val.pre, %._crit_edge.loopexit ]
  %.0.lcssa = phi ptr [ %i.l, %bb.a ], [ %i.q, %._crit_edge.loopexit ]
  %i.x = shl i32 %.val, 1
  %i.y = and i32 %i.x, -8
  %reass.sub = sub i32 %i.y, %i.w
  %i.z = add i32 %reass.sub, -64                  ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.ab = shl i32 255, %i.z
  %i.ac = getelementptr inbounds i8, ptr %.0.lcssa, i64 -1 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = trunc i32 %i.ab to i8
  %i.af = and i8 %i.ad, %i.ae
  store i8 %i.af, ptr %i.ac, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.ag = ptrtoint ptr %i.g to i64
  ret i64 %i.ag
}

; Function Attrs: nounwind uwtable
define dso_local i64 @bitshiftleft(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #11 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32                    ; 6 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @llvm.umax.i32(i32 %i.g, i32 -2147483640)
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = sub nsw i32 0, %i.i
  %i.l = zext nneg i32 %i.k to i64
  %i.m = tail call i64 @DirectFunctionCall2Coll(ptr noundef nonnull @bitshiftright, i32 noundef 0, i64 noundef %i.j, i64 noundef %i.l) #11
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %.val96 = load i32, ptr %i.d, align 4
  %i.n = lshr i32 %.val96, 2
  %i.o = zext nneg i32 %i.n to i64
  %i.p = tail call ptr @palloc(i64 noundef %i.o) #11 ; 11 uses
  %i.q = ptrtoaddr ptr %i.p to i64                ; 3 uses
  %.val95 = load i32, ptr %i.d, align 4
  %i.r = and i32 %.val95, -4                      ; 2 uses
  store i32 %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.t, ptr %i.u, align 4
  %i.v = getelementptr i8, ptr %i.p, i64 8        ; 8 uses
  %.not = icmp sgt i32 %i.t, %i.g
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val94 = load i32, ptr %i.d, align 4
  %i.w = lshr i32 %.val94, 2
  %i.x = zext nneg i32 %i.w to i64                ; 4 uses
  %i.y = add nsw i64 %i.x, -8                     ; 2 uses
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = and i64 %i.z, 7
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ac = and i64 %i.x, 7
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = icmp ult i64 %i.y, 1025
  %or.cond3 = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr i8, ptr %i.p, i64 %i.x
  %i.ag = icmp ult ptr %i.v, %i.af
  br i1 %i.ag, label %.lr.ph.preheader, label %.loopexit99

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.ah = add nsw i64 %i.x, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.ah, i1 false)
  br label %.loopexit99

bb.g:                                             ; preds = %bb.e, %bb.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.y, i1 false)
  br label %.loopexit99

.loopexit99:                                      ; preds = %.lr.ph.preheader, %bb.f, %bb.g
  %i.ai = ptrtoint ptr %i.p to i64
  br label %bb.p

bb.h:                                             ; preds = %bb.c
  %i.aj = lshr i32 %i.g, 3                        ; 3 uses
  %i.ak = and i32 %i.g, 7                         ; 3 uses
  %i.al = zext nneg i32 %i.aj to i64              ; 4 uses
  %i.am = add nuw nsw i64 %i.al, 8                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.am ; 2 uses
  %i.ao = icmp eq i32 %i.ak, 0
  %.val93 = load i32, ptr %i.d, align 4
  %i.ap = lshr i32 %.val93, 2                     ; 2 uses
  br i1 %i.ao, label %bb.i, label %.preheader98

.preheader98:                                     ; preds = %bb.h
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = icmp samesign ult i64 %i.am, %i.aq
  br i1 %i.ar, label %.lr.ph104, label %.preheader

.lr.ph104:                                        ; preds = %.preheader98
  %i.as = sub nuw nsw i32 8, %i.ak
  br label %bb.m

bb.i:                                             ; preds = %bb.h
  %reass.sub = sub nsw i32 %i.ap, %i.aj
  %i.at = add nsw i32 %reass.sub, -8
  %i.au = sext i32 %i.at to i64                   ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.v, ptr nonnull align 1 %i.an, i64 %i.au, i1 false)
  %i.av = getelementptr inbounds i8, ptr %i.v, i64 %i.au ; 3 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = and i64 %i.aw, 7
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.az = and i64 %i.al, 7
  %i.ba = icmp eq i64 %i.az, 0
  %i.bb = icmp samesign ult i32 %i.g, 8200
  %or.cond7 = and i1 %i.bb, %i.ba
  br i1 %or.cond7, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.not110 = icmp eq i32 %i.aj, 0
  br i1 %.not110, label %.loopexit, label %.lr.ph109.preheader

.lr.ph109.preheader:                              ; preds = %bb.k
  %i.bc = add i64 %i.q, %i.al
  %i.bd = add i64 %i.bc, %i.au
  %i.be = add i64 %i.bd, 8
  %i.bf = add i64 %i.q, %i.au
  %i.bg = add i64 %i.bf, 16
  %umax112 = tail call i64 @llvm.umax.i64(i64 %i.be, i64 %i.bg)
  %i.bh = add i64 %umax112, -9
  %i.bi = add i64 %i.q, %i.au
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = and i64 %i.bj, -8
  %i.bl = add i64 %i.bk, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.av, i8 0, i64 %i.bl, i1 false)
  br label %.loopexit

bb.l:                                             ; preds = %bb.j, %bb.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.av, i8 0, i64 %i.al, i1 false)
  br label %.loopexit

.preheader.loopexit:                              ; preds = %bb.o
  %.val105.pre = load i32, ptr %i.p, align 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader98
  %.val105 = phi i32 [ %i.r, %.preheader98 ], [ %.val105.pre, %.preheader.loopexit ]
  %.083.lcssa = phi ptr [ %i.v, %.preheader98 ], [ %i.ce, %.preheader.loopexit ] ; 2 uses
  %i.bm = lshr i32 %.val105, 2
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bn
  %i.bp = icmp ult ptr %.083.lcssa, %i.bo
  br i1 %i.bp, label %.lr.ph107, label %.loopexit

bb.m:                                             ; preds = %.lr.ph104, %bb.o
  %.083103 = phi ptr [ %i.v, %.lr.ph104 ], [ %i.ce, %bb.o ] ; 3 uses
  %.084102 = phi ptr [ %i.an, %.lr.ph104 ], [ %i.bu, %bb.o ] ; 2 uses
  %i.bq = load i8, ptr %.084102, align 1
  %i.br = zext i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, %i.ak            ; 2 uses
  %i.bt = trunc i32 %i.bs to i8
  store i8 %i.bt, ptr %.083103, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %.084102, i64 1 ; 4 uses
  %.val91 = load i32, ptr %i.d, align 4
  %i.bv = lshr i32 %.val91, 2
  %i.bw = zext nneg i32 %i.bv to i64              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.bw
  %i.by = icmp ult ptr %i.bu, %i.bx
  br i1 %i.by, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bz = load i8, ptr %i.bu, align 1
  %i.ca = zext i8 %i.bz to i32
  %i.cb = lshr i32 %i.ca, %i.as
  %i.cc = or i32 %i.cb, %i.bs
  %i.cd = trunc i32 %i.cc to i8
  store i8 %i.cd, ptr %.083103, align 1
  %.val92.pre = load i32, ptr %i.d, align 4
  %.pre = lshr i32 %.val92.pre, 2
  %.pre115 = zext nneg i32 %.pre to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.pre-phi116 = phi i64 [ %i.bw, %bb.m ], [ %.pre115, %bb.n ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.083103, i64 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 %.pre-phi116
  %i.cg = icmp ult ptr %i.bu, %i.cf
  br i1 %i.cg, label %bb.m, label %.preheader.loopexit, !llvm.loop !30

.lr.ph107:                                        ; preds = %.preheader, %.lr.ph107
  %.1106 = phi ptr [ %i.ch, %.lr.ph107 ], [ %.083.lcssa, %.preheader ] ; 2 uses
  store i8 0, ptr %.1106, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.1106, i64 1 ; 2 uses
  %.val = load i32, ptr %i.p, align 4
  %i.ci = lshr i32 %.val, 2
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.cj
  %i.cl = icmp ult ptr %i.ch, %i.ck
  br i1 %i.cl, label %.lr.ph107, label %.loopexit, !llvm.loop !31

.loopexit:                                        ; preds = %.lr.ph107, %.lr.ph109.preheader, %.preheader, %bb.k, %bb.l
  %i.cm = ptrtoint ptr %i.p to i64
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %.loopexit99, %bb.b
  %.085 = phi i64 [ %i.m, %bb.b ], [ %i.ai, %.loopexit99 ], [ %i.cm, %.loopexit ]
  ret i64 %.085
}

declare i64 @DirectFunctionCall2Coll(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @bitshiftright(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum(ptr noundef %i.c) #11 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = trunc i64 %i.f to i32                    ; 6 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i32 @llvm.umax.i32(i32 %i.g, i32 -2147483640)
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = sub nsw i32 0, %i.i
  %i.l = zext nneg i32 %i.k to i64
  %i.m = tail call i64 @DirectFunctionCall2Coll(ptr noundef nonnull @bitshiftleft, i32 noundef 0, i64 noundef %i.j, i64 noundef %i.l) #11
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %.val106 = load i32, ptr %i.d, align 4
  %i.n = lshr i32 %.val106, 2
  %i.o = zext nneg i32 %i.n to i64
  %i.p = tail call ptr @palloc(i64 noundef %i.o) #11 ; 12 uses
  %i.q = ptrtoaddr ptr %i.p to i64                ; 3 uses
  %.val105 = load i32, ptr %i.d, align 4          ; 2 uses
  %i.r = and i32 %.val105, -4                     ; 2 uses
  store i32 %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.t = load i32, ptr %i.s, align 4              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  store i32 %i.t, ptr %i.u, align 4
  %i.v = getelementptr i8, ptr %i.p, i64 8        ; 7 uses
  %.not = icmp sgt i32 %i.t, %i.g
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = and i64 %i.w, 7
  %i.y = icmp eq i64 %i.x, 0                      ; 2 uses
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val104 = load i32, ptr %i.d, align 4
  %i.z = lshr i32 %.val104, 2
  %i.aa = zext nneg i32 %i.z to i64               ; 4 uses
  %i.ab = add nsw i64 %i.aa, -8                   ; 2 uses
  br i1 %i.y, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ac = and i64 %i.aa, 7
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = icmp ult i64 %i.ab, 1025
  %or.cond3 = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond3, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr i8, ptr %i.p, i64 %i.aa
  %i.ag = icmp ult ptr %i.v, %i.af
  br i1 %i.ag, label %.lr.ph.preheader, label %.loopexit109

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.ah = add nsw i64 %i.aa, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.ah, i1 false)
  br label %.loopexit109

bb.g:                                             ; preds = %bb.e, %bb.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.ab, i1 false)
  br label %.loopexit109

.loopexit109:                                     ; preds = %.lr.ph.preheader, %bb.f, %bb.g
  %i.ai = ptrtoint ptr %i.p to i64
  br label %bb.s

bb.h:                                             ; preds = %bb.c
  %i.aj = lshr i32 %i.g, 3                        ; 3 uses
  %i.ak = and i32 %i.g, 7                         ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.am = zext nneg i32 %i.aj to i64              ; 5 uses
  br i1 %i.y, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.an = and i64 %i.am, 7
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = icmp samesign ult i32 %i.g, 8200
  %or.cond7 = and i1 %i.ap, %i.ao
  br i1 %or.cond7, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.not117 = icmp eq i32 %i.aj, 0
  br i1 %.not117, label %.loopexit108, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %bb.j
  %i.aq = add i64 %i.q, %i.am
  %i.ar = add i64 %i.aq, 8
  %i.as = add i64 %i.q, 16
  %umax119 = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 %i.as)
  %i.at = add i64 %umax119, -9
  %i.au = sub i64 %i.at, %i.q
  %i.av = and i64 %i.au, -8
  %i.aw = add i64 %i.av, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.aw, i1 false)
  br label %.loopexit108

bb.k:                                             ; preds = %bb.i, %bb.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.am, i1 false)
  br label %.loopexit108

.loopexit108:                                     ; preds = %.lr.ph112.preheader, %bb.j, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.am ; 5 uses
  %i.ay = icmp eq i32 %i.ak, 0
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit108
  %.val103 = load i32, ptr %i.d, align 4
  %i.az = lshr i32 %.val103, 2
  %reass.sub = sub nsw i32 %i.az, %i.aj
  %i.ba = add nsw i32 %reass.sub, -8
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr nonnull align 4 %i.al, i64 %i.bb, i1 false)
  %i.bc = getelementptr inbounds i8, ptr %i.ax, i64 %i.bb
  %.val.pre = load i32, ptr %i.p, align 4
  br label %.loopexit

bb.m:                                             ; preds = %.loopexit108
  %i.bd = lshr i32 %.val105, 2
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = add nuw nsw i64 %i.am, 8
  %i.bg = icmp samesign ult i64 %i.bf, %i.be
  br i1 %i.bg, label %.lr.ph116, label %.loopexit

.lr.ph116:                                        ; preds = %bb.m
  store i8 0, ptr %i.ax, align 1
  %i.bh = sub nuw nsw i32 8, %i.ak
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph116, %bb.p
  %.089115 = phi ptr [ %i.ax, %.lr.ph116 ], [ %i.bo, %bb.p ] ; 3 uses
  %.090114 = phi ptr [ %i.al, %.lr.ph116 ], [ %i.bx, %bb.p ] ; 3 uses
  %i.bi = load i8, ptr %.090114, align 1
  %i.bj = zext i8 %i.bi to i32
  %i.bk = lshr i32 %i.bj, %i.ak
  %i.bl = load i8, ptr %.089115, align 1
  %i.bm = trunc nuw nsw i32 %i.bk to i8
  %i.bn = or i8 %i.bl, %i.bm
  store i8 %i.bn, ptr %.089115, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %.089115, i64 1 ; 5 uses
  %.val100 = load i32, ptr %i.p, align 4          ; 2 uses
  %i.bp = lshr i32 %.val100, 2
  %i.bq = zext nneg i32 %i.bp to i64              ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bq
  %i.bs = icmp ult ptr %i.bo, %i.br
  br i1 %i.bs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bt = load i8, ptr %.090114, align 1
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, %i.bh
  %i.bw = trunc i32 %i.bv to i8
  store i8 %i.bw, ptr %i.bo, align 1
  %.val101.pre = load i32, ptr %i.p, align 4      ; 2 uses
  %.pre = lshr i32 %.val101.pre, 2
  %.pre122 = zext nneg i32 %.pre to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.pre-phi123 = phi i64 [ %i.bq, %bb.n ], [ %.pre122, %bb.o ]
  %.val101 = phi i32 [ %.val100, %bb.n ], [ %.val101.pre, %bb.o ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.090114, i64 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.p, i64 %.pre-phi123
  %i.bz = icmp ult ptr %i.bo, %i.by
  br i1 %i.bz, label %bb.n, label %.loopexit, !llvm.loop !32

.loopexit:                                        ; preds = %bb.p, %bb.m, %bb.l
  %.val = phi i32 [ %.val.pre, %bb.l ], [ %i.r, %bb.m ], [ %.val101, %bb.p ]
  %.1 = phi ptr [ %i.bc, %bb.l ], [ %i.ax, %bb.m ], [ %i.bo, %bb.p ]
  %i.ca = load i32, ptr %i.u, align 4
  %i.cb = shl i32 %.val, 1
  %i.cc = and i32 %i.cb, -8
  %reass.sub118 = sub i32 %i.cc, %i.ca
  %i.cd = add i32 %reass.sub118, -64              ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit
  %i.cf = shl i32 255, %i.cd
  %i.cg = getelementptr inbounds i8, ptr %.1, i64 -1 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = trunc i32 %i.cf to i8
  %i.cj = and i8 %i.ch, %i.ci
  store i8 %i.cj, ptr %i.cg, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit
  %i.ck = ptrtoint ptr %i.p to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit109, %bb.b
  %.091 = phi i64 [ %i.m, %bb.b ], [ %i.ai, %.loopexit109 ], [ %i.ck, %bb.r ]
  ret i64 %.091
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @bitfromint4(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32                    ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = add i32 %i.f, -2147483641                ; 2 uses
  %or.cond = icmp ult i32 %i.g, -2147483640
  %spec.store.select = select i1 %or.cond, i32 1, i32 %i.f ; 5 uses
  %i.h = add i32 %spec.store.select, 7
  %i.i = sdiv i32 %i.h, 8
  %narrow = add nsw i32 %i.i, 8                   ; 2 uses
  %i.j = sext i32 %narrow to i64
  %i.k = tail call ptr @palloc(i64 noundef %i.j) #11 ; 5 uses
  %i.l = shl nsw i32 %narrow, 2
  store i32 %i.l, ptr %i.k, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %spec.store.select, ptr %i.m, align 4
  %i.n = getelementptr i8, ptr %i.k, i64 8        ; 2 uses
  %i.o = tail call i32 @llvm.smin.i32(i32 %spec.store.select, i32 32) ; 3 uses
  %i.p = add nsw i32 %i.o, 8                      ; 2 uses
  %.not47 = icmp slt i32 %spec.store.select, %i.p
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.lobit = ashr i32 %i.c, 31
  %i.q = trunc nsw i32 %.lobit to i8
  %umax = tail call i32 @llvm.umax.i32(i32 %i.g, i32 -2147483640)
  %i.r = add nsw i32 %umax, 2147483633            ; 2 uses
  %i.s = sub i32 %i.r, %i.o                       ; 2 uses
  %i.t = lshr i32 %i.s, 3
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = add nuw nsw i64 %i.u, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.n, i8 %i.q, i64 %i.v, i1 false)
  %i.w = getelementptr i8, ptr %i.k, i64 %i.u
  %scevgep = getelementptr i8, ptr %i.w, i64 9
  %i.x = and i32 %i.s, -8
  %i.y = sub i32 %i.r, %i.x
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.043.lcssa = phi ptr [ %i.n, %bb.a ], [ %scevgep, %.lr.ph ] ; 3 uses
  %.042.lcssa = phi i32 [ %spec.store.select, %bb.a ], [ %i.y, %.lr.ph ] ; 4 uses
  %i.z = icmp sgt i32 %.042.lcssa, %i.o
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.aa = add i32 %.042.lcssa, -8                 ; 2 uses
  %i.ab = ashr i32 %i.c, %i.aa
  %i.ac = icmp slt i32 %i.c, 0
  %i.ad = sub i32 %i.p, %.042.lcssa
  %i.ae = shl nsw i32 -1, %i.ad
  %i.af = select i1 %i.ac, i32 %i.ae, i32 0
  %.0 = or i32 %i.af, %i.ab
  %i.ag = trunc i32 %.0 to i8
end_hunk_0
