inline.NumInlined: 181
inline.NumDeleted: 7
begin_hunk_0_@_ZL13decUnitAddSubPKhiS0_iiPhi:bb.a
  %.0116.lcssa = phi i32 [ 0, %.loopexit154 ], [ %.1117, %bb.k ] ; 2 uses
  %i.as = icmp ult ptr %.2131.lcssa, %spec.select150
  br i1 %i.as, label %.preheader152, label %.loopexit

.preheader152:                                    ; preds = %._crit_edge
  %i.at = getelementptr inbounds i8, ptr %0, i64 %i.a
  br label %bb.l

bb.l:                                             ; preds = %.preheader152, %bb.t
  %.2170 = phi i32 [ %.0116.lcssa, %.preheader152 ], [ %.4, %bb.t ]
  %.3124169 = phi ptr [ %.2123.lcssa, %.preheader152 ], [ %.4125, %bb.t ] ; 4 uses
  %.1127168 = phi ptr [ %.0126.lcssa, %.preheader152 ], [ %.2128, %bb.t ] ; 3 uses
  %.3132167 = phi ptr [ %.2131.lcssa, %.preheader152 ], [ %i.br, %bb.t ] ; 4 uses
  %i.au = icmp ult ptr %.3124169, %i.at
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = load i8, ptr %.3124169, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = getelementptr inbounds nuw i8, ptr %.3124169, i64 1
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ay = load i8, ptr %.1127168, align 1
  %i.az = zext i8 %i.ay to i32
  %i.ba = mul nsw i32 %6, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.1127168, i64 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2128 = phi ptr [ %.1127168, %bb.m ], [ %i.bb, %bb.n ]
  %.4125 = phi ptr [ %i.ax, %bb.m ], [ %.3124169, %bb.n ]
  %.pn = phi i32 [ %i.aw, %bb.m ], [ %i.ba, %bb.n ]
  %.3 = add nsw i32 %.pn, %.2170                  ; 6 uses
  %i.bc = icmp ult i32 %.3, 10
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bd = trunc nuw nsw i32 %.3 to i8
  store i8 %i.bd, ptr %.3132167, align 1
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.be = icmp sgt i32 %.3, -1
  br i1 %i.be, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bf = lshr i32 %.3, 1
  %i.bg = mul i32 %i.bf, 26215
  %i.bh = lshr i32 %i.bg, 17                      ; 2 uses
  %.neg147 = mul nuw nsw i32 %i.bh, 246
  %i.bi = add nuw i32 %.neg147, %.3
  %i.bj = trunc i32 %i.bi to i8
  store i8 %i.bj, ptr %.3132167, align 1
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bk = add nsw i32 %.3, 100                    ; 2 uses
  %i.bl = lshr i32 %i.bk, 1
  %i.bm = mul i32 %i.bl, 26215
  %i.bn = lshr i32 %i.bm, 17                      ; 2 uses
  %.neg = mul nuw nsw i32 %i.bn, 246
  %i.bo = add nsw i32 %.neg, %i.bk
  %i.bp = trunc i32 %i.bo to i8
  store i8 %i.bp, ptr %.3132167, align 1
  %i.bq = add nsw i32 %i.bn, -10
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.p
  %.4 = phi i32 [ 0, %bb.p ], [ %i.bh, %bb.r ], [ %i.bq, %bb.s ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.3132167, i64 1 ; 3 uses
  %i.bs = icmp ult ptr %i.br, %spec.select150
  br i1 %i.bs, label %bb.l, label %.loopexit, !llvm.loop !181

.loopexit:                                        ; preds = %bb.t, %._crit_edge
  %.4133 = phi ptr [ %.2131.lcssa, %._crit_edge ], [ %i.br, %bb.t ] ; 3 uses
  %.5 = phi i32 [ %.0116.lcssa, %._crit_edge ], [ %.4, %bb.t ] ; 4 uses
  %i.bt = icmp eq i32 %.5, 0
  br i1 %i.bt, label %bb.x, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.bu = icmp sgt i32 %.5, 0
  br i1 %i.bu, label %bb.v, label %.preheader

.preheader:                                       ; preds = %bb.u
  %i.bv = icmp ult ptr %5, %spec.select150
  br i1 %i.bv, label %.lr.ph173, label %._crit_edge174

bb.v:                                             ; preds = %bb.u
  %i.bw = trunc i32 %.5 to i8
  store i8 %i.bw, ptr %.4133, align 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.4133, i64 1
  br label %bb.x

.lr.ph173:                                        ; preds = %.preheader, %.lr.ph173
  %.0115172 = phi i32 [ %.1, %.lr.ph173 ], [ 1, %.preheader ]
  %.5134171 = phi ptr [ %i.ce, %.lr.ph173 ], [ %5, %.preheader ] ; 3 uses
  %i.by = add nuw nsw i32 %.0115172, 9
  %i.bz = load i8, ptr %.5134171, align 1
  %i.ca = zext i8 %i.bz to i32
  %i.cb = sub nsw i32 %i.by, %i.ca                ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 9                   ; 2 uses
  %i.cd = trunc i32 %i.cb to i8
  %storemerge146 = select i1 %i.cc, i8 0, i8 %i.cd
  %.1 = zext i1 %i.cc to i32                      ; 2 uses
  store i8 %storemerge146, ptr %.5134171, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.5134171, i64 1 ; 3 uses
  %i.cf = icmp ult ptr %i.ce, %spec.select150
  br i1 %i.cf, label %.lr.ph173, label %._crit_edge174, !llvm.loop !182

._crit_edge174:                                   ; preds = %.lr.ph173, %.preheader
  %.5134.lcssa = phi ptr [ %5, %.preheader ], [ %i.ce, %.lr.ph173 ] ; 3 uses
  %.0115.lcssa = phi i32 [ 1, %.preheader ], [ %.1, %.lr.ph173 ]
  %i.cg = xor i32 %.5, -1
  %i.ch = add nsw i32 %.0115.lcssa, %i.cg         ; 2 uses
  %.not145 = icmp eq i32 %i.ch, 0
  br i1 %.not145, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge174
  %i.ci = trunc nsw i32 %i.ch to i8
  store i8 %i.ci, ptr %.5134.lcssa, align 1
  %i.cj = getelementptr inbounds nuw i8, ptr %.5134.lcssa, i64 1
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge174, %bb.w, %.loopexit, %bb.v
  %.sink204 = phi ptr [ %.4133, %.loopexit ], [ %i.bx, %bb.v ], [ %5, %bb.w ], [ %5, %._crit_edge174 ]
  %.6.sink = phi ptr [ %5, %.loopexit ], [ %5, %bb.v ], [ %i.cj, %bb.w ], [ %.5134.lcssa, %._crit_edge174 ]
  %i.ck = ptrtoint ptr %.sink204 to i64
  %i.cl = ptrtoint ptr %.6.sink to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %.0 = trunc i64 %i.cm to i32
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 -2147483648, 2) i32 @_ZL14decUnitComparePKhiS0_ii(ptr noundef readonly captures(address) %0, i32 noundef %1, ptr noundef readonly captures(none) %2, i32 noundef range(i32 0, -2147483648) %3, i32 noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [73 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = icmp eq i32 %4, 0
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %1, %3
  br i1 %i.c, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp slt i32 %1, %3
  br i1 %i.d, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = zext nneg i32 %1 to i64                  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.e
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.pn = phi ptr [ %i.f, %bb.d ], [ %.063, %bb.g ]
  %.pn76 = phi ptr [ %i.g, %bb.d ], [ %.062, %bb.g ]
  %.062 = getelementptr inbounds i8, ptr %.pn76, i64 -1 ; 2 uses
  %.063 = getelementptr inbounds i8, ptr %.pn, i64 -1 ; 3 uses
  %.not75 = icmp ult ptr %.063, %0
  br i1 %.not75, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load i8, ptr %.063, align 1              ; 2 uses
  %i.i = load i8, ptr %.062, align 1              ; 2 uses
  %i.j = icmp ugt i8 %i.h, %i.i
  br i1 %i.j, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = icmp ult i8 %i.h, %i.i
  br i1 %i.k, label %.loopexit, label %bb.e, !llvm.loop !48

bb.h:                                             ; preds = %bb.a
  %i.l = icmp slt i32 %4, 50
  br i1 %i.l, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.m = sext i32 %4 to i64
  %i.n = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = add nuw nsw i32 %3, %i.p                 ; 3 uses
  %i.r = icmp sgt i32 %1, %i.q
  br i1 %i.r, label %.loopexit, label %.thread78

.thread:                                          ; preds = %bb.h
  %i.s = add nuw nsw i32 %4, %3                   ; 3 uses
  %i.t = icmp sgt i32 %1, %i.s
  br i1 %i.t, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.u = add nsw i32 %1, 1
  %i.v = icmp slt i32 %i.u, %i.s
  br i1 %i.v, label %.loopexit, label %.thread79.a

.thread78:                                        ; preds = %bb.i
  %i.w = add nsw i32 %1, 1
  %i.x = icmp slt i32 %i.w, %i.q
  br i1 %i.x, label %.loopexit, label %.thread79

.thread79:                                        ; preds = %.thread78
  %5 = tail call i32 @llvm.smax.i32(i32 %i.q, i32 %1)
  br label %.thread79.a

.thread79.a:                                      ; preds = %bb.j, %.thread79
  %.pre-phi = phi i32 [ %i.s, %bb.j ], [ %5, %.thread79 ] ; 2 uses
  %i.y = icmp samesign ugt i32 %.pre-phi, 71
  br i1 %i.y, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread79.a
  %i.z = add nuw nsw i32 %.pre-phi, 2
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.aa) #16 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread79.a
  %.065 = phi ptr [ null, %.thread79.a ], [ %i.ab, %bb.k ] ; 2 uses
  %.060 = phi ptr [ %i.a, %.thread79.a ], [ %i.ab, %bb.k ] ; 4 uses
  %i.ad = call fastcc noundef i32 @_ZL13decUnitAddSubPKhiS0_iiPhi(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %.060, i32 noundef -1) ; 3 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = getelementptr i8, ptr %.060, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -1
  %i.ai = icmp samesign ugt i32 %i.ad, 1
  br i1 %i.ai, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %bb.m
  %.06180 = phi ptr [ %i.al, %bb.m ], [ %.060, %.preheader ] ; 3 uses
  %i.aj = load i8, ptr %.06180, align 1
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.m, label %.critedge

bb.m:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %.06180, i64 1 ; 3 uses
  %i.am = icmp ult ptr %i.al, %i.ah
  br i1 %i.am, label %.lr.ph, label %.critedge, !llvm.loop !183

.critedge:                                        ; preds = %.lr.ph, %bb.m, %.preheader
  %.061.lcssa = phi ptr [ %.060, %.preheader ], [ %i.al, %bb.m ], [ %.06180, %.lr.ph ]
  %i.an = load i8, ptr %.061.lcssa, align 1
  %i.ao = icmp ne i8 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %.critedge
  %.0 = phi i32 [ %i.ap, %.critedge ], [ -1, %bb.l ] ; 2 uses
  %.not = icmp eq ptr %.065, null
  br i1 %.not, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @uprv_free_78(ptr noundef nonnull %.065) #15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.g, %bb.f, %.thread78, %.thread, %bb.n, %bb.o, %bb.k, %bb.j, %bb.i, %bb.c, %bb.b
  %.059 = phi i32 [ -2147483648, %bb.k ], [ 1, %bb.b ], [ -1, %bb.c ], [ %.0, %bb.n ], [ 1, %.thread ], [ -1, %.thread78 ], [ 1, %bb.i ], [ -1, %bb.j ], [ %.0, %bb.o ], [ 0, %bb.e ], [ -1, %bb.g ], [ 1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.059
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL13decApplyRoundP9decNumberP10decContextiPj(ptr noundef %0, ptr noundef readonly captures(none) %1, i32 noundef %2, ptr noundef nonnull captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load i32, ptr %i.b, align 4
  switch i32 %i.c, label %bb.r [
    i32 7, label %bb.c
    i32 5, label %bb.e
    i32 4, label %bb.f
    i32 3, label %bb.g
    i32 2, label %bb.j
    i32 1, label %bb.k
    i32 0, label %bb.l
    i32 6, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.e = load i8, ptr %i.d, align 1
  %i.f = urem i8 %i.e, 5                          ; 2 uses
  %i.g = icmp slt i32 %2, 0
  %i.h = icmp ne i8 %i.f, 1
  %or.cond = select i1 %i.g, i1 %i.h, i1 false
  br i1 %or.cond, label %select.unfold123, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp sgt i32 %2, 0
  %i.j = icmp eq i8 %i.f, 0
  %or.cond4 = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond4, label %select.unfold, label %.critedge

bb.e:                                             ; preds = %bb.b
  %i.k = icmp slt i32 %2, 0
  br i1 %i.k, label %select.unfold123, label %.critedge

bb.f:                                             ; preds = %bb.b
  %i.l = icmp sgt i32 %2, 5
  br i1 %i.l, label %select.unfold, label %.critedge

bb.g:                                             ; preds = %bb.b
  %i.m = icmp sgt i32 %2, 5
  br i1 %i.m, label %select.unfold, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = icmp eq i32 %2, 5
  br i1 %i.n, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.p = load i8, ptr %i.o, align 1
  %i.q = and i8 %i.p, 1
  %.not96 = icmp eq i8 %i.q, 0
  br i1 %.not96, label %.critedge, label %select.unfold

bb.j:                                             ; preds = %bb.b
  %i.r = icmp sgt i32 %2, 4
  br i1 %i.r, label %select.unfold, label %.critedge

bb.k:                                             ; preds = %bb.b
  %i.s = icmp sgt i32 %2, 0
  br i1 %i.s, label %select.unfold, label %.critedge

bb.l:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i8, ptr %i.t, align 4
  %.not95 = icmp sgt i8 %i.u, -1
  br i1 %.not95, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = icmp slt i32 %2, 0
  br i1 %i.v, label %select.unfold123, label %.critedge

bb.n:                                             ; preds = %bb.l
  %i.w = icmp sgt i32 %2, 0
  br i1 %i.w, label %select.unfold, label %.critedge

bb.o:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i8, ptr %i.x, align 4
  %.not = icmp sgt i8 %i.y, -1
  br i1 %.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.z = icmp slt i32 %2, 0
  br i1 %i.z, label %select.unfold123, label %.critedge

bb.q:                                             ; preds = %bb.o
  %i.aa = icmp sgt i32 %2, 0
  br i1 %i.aa, label %select.unfold, label %.critedge

bb.r:                                             ; preds = %bb.b
  %i.ab = load i32, ptr %3, align 4
  %i.ac = or i32 %i.ab, 64
  store i32 %i.ac, ptr %3, align 4
  br label %.critedge

select.unfold:                                    ; preds = %bb.j, %bb.q, %bb.f, %bb.d, %bb.k, %bb.n, %bb.g, %bb.i
  %i.ad = load i32, ptr %0, align 4               ; 7 uses
  %.088.ptr144 = getelementptr i8, ptr %0, i64 9  ; 3 uses
  %i.ae = icmp ult i32 %i.ad, 2
  br i1 %i.ae, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %select.unfold
  %i.af = add i32 %i.ad, -2
  %i.ag = zext i32 %i.af to i64
  %i.ah = add nuw nsw i64 %i.ag, 10               ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.ah
  %i.ai = add i32 %i.ad, 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.u, %select.unfold
  %.088.idx.lcssa = phi i64 [ 9, %select.unfold ], [ %i.ah, %bb.u ] ; 2 uses
  %.087.lcssa = phi i32 [ %i.ad, %select.unfold ], [ 1, %bb.u ] ; 2 uses
  %.088.ptr.lcssa = phi ptr [ %.088.ptr144, %select.unfold ], [ %scevgep, %bb.u ] ; 2 uses
  %i.aj = load i8, ptr %.088.ptr.lcssa, align 1
  %i.ak = zext i8 %i.aj to i32
  %i.al = zext nneg i32 %.087.lcssa to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = add i32 %i.an, -1
  %.not105 = icmp eq i32 %i.ao, %i.ak
  br i1 %.not105, label %bb.s, label %.loopexit

bb.s:                                             ; preds = %._crit_edge
  %i.ap = add nsw i32 %.087.lcssa, -1
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = trunc i32 %i.as to i8
  store i8 %i.at, ptr %.088.ptr.lcssa, align 1
  %.not106150 = icmp slt i64 %.088.idx.lcssa, 10
  br i1 %.not106150, label %._crit_edge154, label %.lr.ph153.preheader

.lr.ph153.preheader:                              ; preds = %bb.s
  %i.au = add nsw i64 %.088.idx.lcssa, -9
  tail call void @llvm.memset.p0.i64(ptr align 1 %.088.ptr144, i8 0, i64 %i.au, i1 false)
  br label %._crit_edge154

._crit_edge154:                                   ; preds = %.lr.ph153.preheader, %bb.s
end_hunk_0
