inline.NumInlined: 181
inline.NumDeleted: 7
begin_hunk_0_@uprv_decNumberOr_78:bb.a
  %i.ay = icmp ne ptr %.081113, %i.as
  %brmerge = select i1 %i.ay, i1 true, i1 %.not101129
  %brmerge.fr = freeze i1 %brmerge
  %i.az = and i8 %i.ax, 1
  %.not98.us = icmp eq i8 %i.az, 0                ; 2 uses
  br i1 %brmerge.fr, label %.preheader.split.us, label %.preheader.split, !llvm.loop !114

.preheader.split.us:                              ; preds = %.preheader
  br i1 %.not98.us, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.preheader.split.us
  store i8 1, ptr %.081113, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.preheader.split.us
  %i.ba = urem i8 %.075, 10
  %i.bb = urem i8 %.073, 10
  %i.bc = or i8 %i.bb, %i.ba
  %i.bd = icmp samesign ugt i8 %i.bc, 1
  br i1 %i.bd, label %.split.us, label %.loopexit

.preheader.split:                                 ; preds = %.preheader
  br i1 %.not98.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.preheader.split
  store i8 1, ptr %.081113, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.preheader.split
  %i.be = urem i8 %.075, 10
  %i.bf = urem i8 %.073, 10
  %i.bg = or i8 %i.bf, %i.be
  %i.bh = icmp samesign ugt i8 %i.bg, 1
  br i1 %i.bh, label %.split.us, label %.loopexit

.split.us:                                        ; preds = %bb.s, %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bj, align 4
  store i32 1, ptr %0, align 4
  store i8 0, ptr %i.o, align 1
  store i8 32, ptr %i.bi, align 4
  %i.bk = tail call ptr @uprv_decContextSetStatus_78(ptr noundef nonnull %3, i32 noundef 128) #15 ; 0 uses
  br label %bb.u

.loopexit:                                        ; preds = %bb.q, %bb.s, %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %.079117, i64 1
  %i.bm = getelementptr inbounds nuw i8, ptr %.080116, i64 1
  %i.bn = getelementptr inbounds nuw i8, ptr %.081113, i64 1 ; 3 uses
  %.not96 = icmp ugt ptr %i.bn, %i.as
  br i1 %.not96, label %._crit_edge, label %.lr.ph, !llvm.loop !115

._crit_edge:                                      ; preds = %.loopexit, %bb.k
  %.081.lcssa = phi ptr [ %i.o, %bb.k ], [ %i.bn, %.loopexit ]
  %i.bo = ptrtoint ptr %.081.lcssa to i64
  %i.bp = ptrtoint ptr %i.o to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = trunc i64 %i.bq to i32                  ; 2 uses
  %sext = shl i64 %i.bq, 32
  %i.bs = ashr exact i64 %sext, 32
  %i.bt = getelementptr i8, ptr %i.o, i64 %i.bs
  %.01011.i = getelementptr i8, ptr %i.bt, i64 -1 ; 2 uses
  %.not12.i = icmp ult ptr %.01011.i, %i.o
  br i1 %.not12.i, label %_ZL12decGetDigitsPhi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.t
  %.01014.i = phi ptr [ %.010.i, %bb.t ], [ %.01011.i, %._crit_edge ] ; 2 uses
  %.013.i = phi i32 [ %i.bx, %bb.t ], [ %i.br, %._crit_edge ] ; 3 uses
  %i.bu = load i8, ptr %.01014.i, align 1
  %i.bv = icmp ne i8 %i.bu, 0
  %i.bw = icmp eq i32 %.013.i, 1
  %or.cond.i = select i1 %i.bv, i1 true, i1 %i.bw
  br i1 %or.cond.i, label %_ZL12decGetDigitsPhi.exit, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i
  %i.bx = add nsw i32 %.013.i, -1                 ; 2 uses
  %.010.i = getelementptr i8, ptr %.01014.i, i64 -1 ; 2 uses
  %.not.i = icmp ult ptr %.010.i, %i.o
  br i1 %.not.i, label %_ZL12decGetDigitsPhi.exit, label %.lr.ph.i, !llvm.loop !7

_ZL12decGetDigitsPhi.exit:                        ; preds = %.lr.ph.i, %bb.t, %._crit_edge
  %.0.lcssa.i = phi i32 [ %i.br, %._crit_edge ], [ %i.bx, %bb.t ], [ %.013.i, %.lr.ph.i ]
  store i32 %.0.lcssa.i, ptr %0, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bz, align 4
  br label %bb.u

bb.u:                                             ; preds = %.split.us, %_ZL12decGetDigitsPhi.exit, %bb.e
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @uprv_decNumberPlus_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.decNumber, align 4          ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %3, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 9
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4
  store i32 %i.f, ptr %i.c, align 4
  %i.g = call fastcc noundef ptr @_ZL8decAddOpP9decNumberPKS_S2_P10decContexthPj(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0, ptr noundef %i.a) ; 0 uses
  %i.h = load i32, ptr %i.a, align 4              ; 6 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.h, 221
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %_ZL9decStatusP9decNumberjP10decContext.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = and i32 %i.h, 1073741824
  %.not6.i = icmp eq i32 %i.j, 0
  br i1 %.not6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = and i32 %i.h, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.m, align 4
  store i32 1, ptr %0, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.n, align 1
  store i8 32, ptr %i.l, align 4
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.k, %bb.d ], [ %i.h, %bb.e ], [ %i.h, %bb.b ]
  %i.o = call ptr @uprv_decContextSetStatus_78(ptr noundef %2, i32 noundef %.0.i) #15 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZL9decStatusP9decNumberjP10decContext.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @uprv_decNumberMultiply_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4
  %i.b = call fastcc noundef ptr @_ZL13decMultiplyOpP9decNumberPKS_S2_P10decContextPj(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.a) ; 0 uses
  %i.c = load i32, ptr %i.a, align 4              ; 6 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.c, 221
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZL9decStatusP9decNumberjP10decContext.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = and i32 %i.c, 1073741824
  %.not6.i = icmp eq i32 %i.e, 0
  br i1 %.not6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = and i32 %i.c, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

bb.e:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.h, align 4
  store i32 1, ptr %0, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.i, align 1
  store i8 32, ptr %i.g, align 4
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.f, %bb.d ], [ %i.c, %bb.e ], [ %i.c, %bb.b ]
  %i.j = tail call ptr @uprv_decContextSetStatus_78(ptr noundef %3, i32 noundef %.0.i) #15 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZL9decStatusP9decNumberjP10decContext.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @uprv_decNumberPower_78(ptr noundef returned %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 20 uses
  %4 = alloca %struct.decContext, align 4         ; 16 uses
  %5 = alloca %struct.decNumber, align 4          ; 10 uses
  %6 = alloca [5 x %struct.decNumber], align 16   ; 6 uses
  %7 = alloca [5 x %struct.decNumber], align 16   ; 3 uses
  %i.d = load i32, ptr %3, align 4                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 0, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store i32 0, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4               ; 5 uses
  %i.g = zext i8 %i.f to i32                      ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load i8, ptr %i.h, align 4               ; 6 uses
  %i.j = zext i8 %i.i to i32                      ; 2 uses
  %i.k = or i32 %i.j, %i.g                        ; 2 uses
  %i.l = and i32 %i.k, 112
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = and i32 %i.k, 48
  %or.cond210 = icmp eq i32 %i.m, 0
  br i1 %or.cond210, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call fastcc noundef ptr @_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %i.c) ; 0 uses
  br label %.thread249

bb.d:                                             ; preds = %bb.b
  %i.o = and i32 %i.j, 64
  %.not186 = icmp eq i32 %i.o, 0
  br i1 %.not186, label %bb.x, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = and i8 %i.i, -128                        ; 2 uses
  %.not203 = icmp sgt i8 %i.f, -1
  br i1 %.not203, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.g, label %.thread254

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %1, align 4
  %i.u = icmp eq i32 %i.t, 1
  %i.v = and i32 %i.g, 64
  %i.w = icmp eq i32 %i.v, 0
  %or.cond212 = and i1 %i.w, %i.u
  br i1 %or.cond212, label %bb.h, label %.thread254

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.y, align 4
  store i32 1, ptr %5, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 1, ptr %i.z, align 1
  %i.aa = call ptr @uprv_decNumberCompare_78(ptr noundef nonnull %6, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef nonnull %3) ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i8 0, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 0, ptr %i.ac, align 4
  store i32 1, ptr %0, align 4
  %i.ad = getelementptr i8, ptr %0, i64 9         ; 4 uses
  store i8 0, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.af = load i8, ptr %i.ae, align 8
  %.not204 = icmp sgt i8 %i.af, -1
  br i1 %.not204, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not206 = icmp eq i8 %i.p, 0
  br i1 %.not206, label %.thread249, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 64, ptr %i.ab, align 4
  br label %.thread249

bb.k:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 9
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  %i.aj = load i32, ptr %3, align 4               ; 9 uses
  %i.ak = add nsw i32 %i.aj, -1                   ; 4 uses
  store i8 1, ptr %i.ad, align 1
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.thread249.thread.thread295, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = icmp slt i32 %i.aj, 2
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = sext i32 %i.ak to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = trunc i32 %i.ap to i8
  store i8 %i.aq, ptr %i.ad, align 1
  br label %.thread249.thread.thread295

bb.o:                                             ; preds = %bb.m
  %i.ar = icmp samesign ult i32 %i.aj, 51
  %i.as = zext nneg i32 %i.ak to i64              ; 2 uses
  br i1 %i.ar, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1             ; 2 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = zext i8 %i.au to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.pn.i = phi i64 [ %i.av, %bb.p ], [ %i.as, %bb.o ] ; 4 uses
  %i.ax = phi i32 [ %i.aw, %bb.p ], [ %i.ak, %bb.o ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.pn.i ; 3 uses
  %i.az = sub nsw i32 %i.aj, %i.ax                ; 2 uses
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %.lr.ph86.i.preheader, label %bb.r

.lr.ph86.i.preheader:                             ; preds = %bb.q
  store i8 1, ptr %i.ay, align 1
  br label %.loopexit76.i

bb.r:                                             ; preds = %bb.q
  %i.bb = icmp samesign ult i32 %i.aj, 50
  br i1 %i.bb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bc = zext nneg i32 %i.aj to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZL8d2utable, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bg = phi i32 [ %i.bf, %bb.s ], [ %i.aj, %bb.r ]
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = sext i32 %i.az to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4
  %.not72.i.not = icmp samesign ult i64 %.pn.i, %i.bh
  br i1 %.not72.i.not, label %bb.u, label %.loopexit76.loopexit92.i

bb.u:                                             ; preds = %bb.t
  store i8 0, ptr %i.ay, align 1
  br label %.loopexit76.loopexit92.i

.loopexit76.loopexit92.i:                         ; preds = %bb.u, %bb.t
  %i.bl = trunc i32 %i.bk to i8
  br label %.loopexit76.i

.loopexit76.i:                                    ; preds = %.lr.ph86.i.preheader, %.loopexit76.loopexit92.i
  %.162.i = phi i8 [ %i.bl, %.loopexit76.loopexit92.i ], [ 0, %.lr.ph86.i.preheader ]
  %.2.i = getelementptr inbounds i8, ptr %i.ay, i64 -1 ; 3 uses
  %.2.i275 = ptrtoint ptr %.2.i to i64            ; 3 uses
  %.not7488.i = icmp eq i64 %.pn.i, 0
  br i1 %.not7488.i, label %.thread249.thread.thread295, label %.lr.ph91.preheader.i

.lr.ph91.preheader.i:                             ; preds = %.loopexit76.i
  store i8 %.162.i, ptr %.2.i, align 1
  %.not74.peel.i = icmp eq i64 %.pn.i, 1
  br i1 %.not74.peel.i, label %.thread249.thread.thread295, label %.lr.ph91.i.preheader

.lr.ph91.i.preheader:                             ; preds = %.lr.ph91.preheader.i
  %i.bm = add i64 %.2.i275, -2
  %i.bn = add i64 %i.a, 8
  %umin = call i64 @llvm.umin.i64(i64 %i.bm, i64 %i.bn) ; 2 uses
  %i.bo = add i64 %umin, 1
  %i.bp = sub i64 %i.bo, %.2.i275
  %scevgep = getelementptr i8, ptr %.2.i, i64 %i.bp
  %i.bq = xor i64 %umin, -1
  %i.br = add i64 %i.bq, %.2.i275
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 0, i64 %i.br, i1 false)
  br label %.thread249.thread.thread295

.thread249.thread.thread295:                      ; preds = %.lr.ph91.preheader.i, %.loopexit76.i, %bb.n, %bb.l, %.lr.ph91.i.preheader
  store i32 %i.aj, ptr %0, align 4
  %i.bs = sub nsw i32 1, %i.aj
  store i32 %i.bs, ptr %i.ac, align 4
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

bb.v:                                             ; preds = %bb.k
  %.not205 = icmp eq i8 %i.p, 0
  br i1 %.not205, label %bb.w, label %.thread249

bb.w:                                             ; preds = %bb.v
  store i8 64, ptr %i.ab, align 4
  br label %.thread249
end_hunk_0
begin_hunk_1_@uprv_decNumberPower_78:bb.a
  store i32 1, ptr %0, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.fc, align 1
  store i8 %spec.select217, ptr %i.fa, align 4
  br label %.thread249

bb.an:                                            ; preds = %bb.ak, %bb.aj
  switch i32 %.3.i, label %bb.ay [
    i32 -2147483645, label %bb.ao
    i32 -2147483646, label %bb.ao
    i32 -2147483648, label %bb.ao
    i32 0, label %bb.ax
  ]

bb.ao:                                            ; preds = %bb.an, %bb.an, %bb.an
  %.not190 = icmp sgt i8 %i.f, -1
  br i1 %.not190, label %bb.ap, label %.thread254

bb.ap:                                            ; preds = %bb.ao
  %i.fd = icmp sgt i32 %i.d, 999999
  br i1 %i.fd, label %.thread249.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ff = load i32, ptr %i.fe, align 4
  %i.fg = icmp sgt i32 %i.ff, 999999
  br i1 %i.fg, label %.thread249.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = icmp slt i32 %i.fi, -999999
  br i1 %i.fj, label %.thread249.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fk = load i32, ptr %1, align 4               ; 3 uses
  %i.fl = icmp sgt i32 %i.fk, 999999
  br i1 %i.fl, label %.thread249.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fn = load i32, ptr %i.fm, align 4
  %i.fo = add i32 %i.fk, -1000001
  %i.fp = add i32 %i.fo, %i.fn
  %or.cond.i221 = icmp ult i32 %i.fp, -2999997
  br i1 %or.cond.i221, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fq = icmp eq i32 %i.fk, 1
  %i.fr = icmp samesign ult i8 %i.f, 16
  %i.fs = and i1 %i.fr, %i.fq
  %or.cond257 = and i1 %i.es, %i.fs
  br i1 %or.cond257, label %bb.av, label %.thread249.thread

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.ft = icmp sgt i32 %i.bt, 999999
  br i1 %i.ft, label %.thread254, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fu = add i32 %i.bw, 1999996
  %or.cond.i222 = icmp ult i32 %i.fu, 2999997
  %brmerge.not = and i1 %i.ca, %i.cd
  %or.cond = select i1 %or.cond.i222, i1 true, i1 %brmerge.not
  br i1 %or.cond, label %_ZL12decCheckMathPK9decNumberP10decContextPj.exit226.thread, label %.thread254

_ZL12decCheckMathPK9decNumberP10decContextPj.exit226.thread: ; preds = %bb.aw
  %i.fv = call ptr @uprv_decContextDefault_78(ptr noundef nonnull %4, i32 noundef 64) #15 ; 0 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 999999, ptr %i.fw, align 4
  %i.fx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 -999999, ptr %i.fx, align 4
  %i.fy = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.fy, align 4
  %i.fz = load i32, ptr %1, align 4
  %i.ga = load i32, ptr %3, align 4
  %. = call i32 @llvm.smax.i32(i32 %i.fz, i32 %i.ga)
  %i.gb = add nsw i32 %., 10                      ; 2 uses
  store i32 %i.gb, ptr %4, align 4
  br label %bb.az

bb.ax:                                            ; preds = %bb.an
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.gc, align 4
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.gd, align 4
  store i32 1, ptr %0, align 4
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %i.ge, align 1
  br label %.thread249

bb.ay:                                            ; preds = %bb.an
  %spec.select218 = tail call i32 @llvm.abs.i32(i32 %.3.i, i1 true)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %4, ptr noundef nonnull align 4 dereferenceable(28) %3, i64 28, i1 false)
  %i.gf = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 3, ptr %i.gf, align 4
  %i.gg = add nsw i32 %i.bw, %i.d                 ; 2 uses
  %i.gh = add nsw i32 %i.gg, 2                    ; 2 uses
  store i32 %i.gh, ptr %4, align 4
  %i.gi = icmp sgt i32 %i.gg, 999999997
  br i1 %i.gi, label %.thread254, label %bb.az

bb.az:                                            ; preds = %bb.ay, %_ZL12decCheckMathPK9decNumberP10decContextPj.exit226.thread
  %i.gj = phi i32 [ %i.gh, %bb.ay ], [ %i.gb, %_ZL12decCheckMathPK9decNumberP10decContextPj.exit226.thread ] ; 3 uses
  %.1159 = phi i32 [ %spec.select218, %bb.ay ], [ %.3.i, %_ZL12decCheckMathPK9decNumberP10decContextPj.exit226.thread ]
  %i.gk = icmp sgt i32 %i.gj, 49                  ; 2 uses
  br i1 %i.gk, label %.thread, label %bb.ba

.thread:                                          ; preds = %bb.az
  %narrow231 = add nuw i32 %i.gj, 11
  %i.gl = zext i32 %narrow231 to i64              ; 2 uses
  %i.gm = call noalias ptr @uprv_malloc_78(i64 noundef %i.gl) #16 ; 3 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %.thread254, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.go = sext i32 %i.gj to i64
  %i.gp = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1
  %i.gr = zext i8 %i.gq to i64
  %narrow = add nuw nsw i64 %i.gr, 11
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.thread
  %i.gs = phi i64 [ %narrow, %bb.ba ], [ %i.gl, %.thread ]
  %.0162 = phi ptr [ %6, %bb.ba ], [ %i.gm, %.thread ] ; 30 uses
  %.0153 = phi ptr [ null, %bb.ba ], [ %i.gm, %.thread ] ; 2 uses
  switch i32 %.3.i, label %bb.bi [
    i32 -2147483645, label %bb.bc
    i32 -2147483646, label %bb.bc
    i32 -2147483648, label %bb.bc
  ]

bb.bc:                                            ; preds = %bb.bb, %bb.bb, %bb.bb
  %i.gt = call fastcc noundef ptr @_ZL7decLnOpP9decNumberPKS_P10decContextPj(ptr noundef nonnull %.0162, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef %i.c) ; 0 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.0162, i64 9 ; 3 uses
  %i.gv = load i8, ptr %i.gu, align 1
  %i.gw = icmp eq i8 %i.gv, 0
  br i1 %i.gw, label %bb.bd, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %i.gx = load i32, ptr %.0162, align 4
  %i.gy = icmp eq i32 %i.gx, 1
  br i1 %i.gy, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.gz = getelementptr inbounds nuw i8, ptr %.0162, i64 8
  %i.ha = load i8, ptr %i.gz, align 4
  %i.hb = and i8 %i.ha, 112
  %i.hc = icmp eq i8 %i.hb, 0
  br i1 %i.hc, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  store i8 1, ptr %i.gu, align 1
  br i1 %.not187, label %bb.bg, label %bb.bw

bb.bg:                                            ; preds = %bb.bf
  %i.hd = load i32, ptr %3, align 4               ; 2 uses
  %i.he = add nsw i32 %i.hd, -1
  %i.hf = call fastcc noundef i32 @_ZL14decShiftToMostPhii(ptr noundef nonnull %i.gu, i32 noundef 1, i32 noundef %i.he)
  store i32 %i.hf, ptr %.0162, align 4
  %i.hg = sub nsw i32 1, %i.hd
  %i.hh = getelementptr inbounds nuw i8, ptr %.0162, i64 4
  store i32 %i.hg, ptr %i.hh, align 4
  %i.hi = load i32, ptr %i.c, align 4
  %i.hj = or i32 %i.hi, 2080
  store i32 %i.hj, ptr %i.c, align 4
  br label %bb.bw

bb.bh:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %i.hk = call fastcc noundef ptr @_ZL13decMultiplyOpP9decNumberPKS_S2_P10decContextPj(ptr noundef nonnull %.0162, ptr noundef nonnull %.0162, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef %i.c) ; 0 uses
  %i.hl = call fastcc noundef ptr @_ZL8decExpOpP9decNumberPKS_P10decContextPj(ptr noundef nonnull %.0162, ptr noundef nonnull %.0162, ptr noundef nonnull %4, ptr noundef %i.c) ; 0 uses
  br label %bb.bw

bb.bi:                                            ; preds = %bb.bb
  %i.hm = getelementptr inbounds nuw i8, ptr %.0162, i64 8 ; 4 uses
  store i8 0, ptr %i.hm, align 4
  %i.hn = getelementptr inbounds nuw i8, ptr %.0162, i64 4
  store i32 0, ptr %i.hn, align 4
  store i32 1, ptr %.0162, align 4
  %i.ho = getelementptr inbounds nuw i8, ptr %.0162, i64 9 ; 2 uses
  store i8 1, ptr %i.ho, align 1
  %i.hp = load i8, ptr %i.h, align 4
  %.not194 = icmp sgt i8 %i.hp, -1
  br i1 %.not194, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hq = call ptr @uprv_decNumberCopy_78(ptr noundef nonnull %5, ptr noundef nonnull %.0162) ; 0 uses
  %i.hr = call fastcc noundef ptr @_ZL11decDivideOpP9decNumberPKS_S2_P10decContexthPj(ptr noundef nonnull %.0162, ptr noundef nonnull %5, ptr noundef nonnull %1, ptr noundef nonnull %4, i8 noundef zeroext -128, ptr noundef %i.c) ; 0 uses
  br i1 %i.gk, label %bb.bk, label %.thread232

bb.bk:                                            ; preds = %bb.bj
  %i.hs = call noalias ptr @uprv_malloc_78(i64 noundef %i.gs) #16 ; 3 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %bb.bl, label %.thread232

.thread232:                                       ; preds = %bb.bj, %bb.bk
  %.0156 = phi ptr [ null, %bb.bj ], [ %i.hs, %bb.bk ]
  %.0 = phi ptr [ %7, %bb.bj ], [ %i.hs, %bb.bk ] ; 2 uses
  %i.hu = call ptr @uprv_decNumberCopy_78(ptr noundef nonnull %.0, ptr noundef nonnull %.0162) ; 0 uses
  %i.hv = call ptr @uprv_decNumberCopy_78(ptr noundef nonnull %.0162, ptr noundef nonnull %5) ; 0 uses
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.hw = load i32, ptr %i.c, align 4
  %i.hx = or i32 %i.hw, 16
  store i32 %i.hx, ptr %i.c, align 4
  br label %bb.bx

bb.bm:                                            ; preds = %.thread232, %bb.bi
  %.2 = phi ptr [ %.0156, %.thread232 ], [ null, %bb.bi ] ; 2 uses
  %.1 = phi ptr [ %.0, %.thread232 ], [ %1, %bb.bi ]
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bv, %bb.bm
  %.0169.a = phi i32 [ 1, %bb.bm ], [ %i.in, %bb.bv ] ; 3 uses
  %.0166 = phi i8 [ 0, %bb.bm ], [ %.1167238243, %bb.bv ]
  %.2160 = phi i32 [ %.1159, %bb.bm ], [ %i.ih, %bb.bv ]
  %8 = load i32, ptr %i.c, align 4                ; 2 uses
  %i.hy = and i32 %8, 8704                        ; 2 uses
  %.not195 = icmp eq i32 %i.hy, 0
  br i1 %.not195, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hz = and i32 %8, 512
  %.not196 = icmp eq i32 %i.hz, 0
  br i1 %.not196, label %bb.bp, label %split.thread

bb.bp:                                            ; preds = %bb.bo
  %i.ia = load i8, ptr %i.ho, align 1
  %i.ib = icmp eq i8 %i.ia, 0
  br i1 %i.ib, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.ic = load i32, ptr %.0162, align 4
  %i.id = icmp eq i32 %i.ic, 1
  br i1 %i.id, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ie = load i8, ptr %i.hm, align 4
  %i.if = and i8 %i.ie, 112
  %i.ig = icmp eq i8 %i.if, 0
  br i1 %i.ig, label %split.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.bp, %bb.bq, %bb.br, %bb.bn
  %i.ih = shl i32 %.2160, 1                       ; 2 uses
  %i.ii = icmp slt i32 %i.ih, 0
  br i1 %i.ii, label %.thread236, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ij = icmp eq i32 %.0169.a, 31
  br i1 %i.ij, label %split, label %bb.bu

.thread236:                                       ; preds = %bb.bs
  %i.ik = call fastcc noundef ptr @_ZL13decMultiplyOpP9decNumberPKS_S2_P10decContextPj(ptr noundef nonnull %.0162, ptr noundef nonnull %.0162, ptr noundef %.1, ptr noundef nonnull %4, ptr noundef %i.c) ; 0 uses
  %i.il = icmp eq i32 %.0169.a, 31
  br i1 %i.il, label %.thread236._crit_edge, label %.thread239

.thread236._crit_edge:                            ; preds = %.thread236
  %.pre.a = load i32, ptr %i.c, align 4
  %.pre277.a = and i32 %.pre.a, 8704
  br label %split

bb.bu:                                            ; preds = %bb.bt
  %.not197 = icmp eq i8 %.0166, 0
  br i1 %.not197, label %bb.bv, label %.thread239

.thread239:                                       ; preds = %.thread236, %bb.bu
  %i.im = call fastcc noundef ptr @_ZL13decMultiplyOpP9decNumberPKS_S2_P10decContextPj(ptr noundef nonnull %.0162, ptr noundef nonnull %.0162, ptr noundef nonnull %.0162, ptr noundef nonnull %4, ptr noundef %i.c) ; 0 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.thread239
  %.1167238243 = phi i8 [ 0, %bb.bu ], [ 1, %.thread239 ]
  %i.in = add nuw nsw i32 %.0169.a, 1
  br label %bb.bn, !llvm.loop !119

split:                                            ; preds = %bb.bt, %.thread236._crit_edge
  %.pre-phi = phi i32 [ %.pre277.a, %.thread236._crit_edge ], [ %i.hy, %bb.bt ]
  %.not198 = icmp eq i32 %.pre-phi, 0
  br i1 %.not198, label %bb.bw, label %split.thread

split.thread:                                     ; preds = %bb.bo, %bb.br, %split
  %i.io = load i8, ptr %i.hm, align 4
  %i.ip = and i8 %i.io, 127
  %i.iq = or disjoint i8 %i.ip, %spec.select213
  store i8 %i.iq, ptr %i.hm, align 4
  call fastcc void @_ZL11decFinalizeP9decNumberP10decContextPiPj(ptr noundef nonnull %.0162, ptr noundef nonnull %3, ptr noundef %i.b, ptr noundef %i.c)
  %i.ir = call ptr @uprv_decNumberCopy_78(ptr noundef %0, ptr noundef nonnull %.0162) ; 0 uses
  br label %bb.bx

bb.bw:                                            ; preds = %split, %bb.bh, %bb.bg, %bb.bf
  %.3 = phi ptr [ %.2, %split ], [ null, %bb.bf ], [ null, %bb.bg ], [ null, %bb.bh ]
  %i.is = getelementptr inbounds nuw i8, ptr %.0162, i64 8
  %i.it = load i8, ptr %i.is, align 4
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.it, ptr %i.iu, align 4
  %i.iv = getelementptr inbounds nuw i8, ptr %.0162, i64 4
  %i.iw = load i32, ptr %i.iv, align 4
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.iw, ptr %i.ix, align 4
  %i.iy = getelementptr inbounds nuw i8, ptr %.0162, i64 9
  %i.iz = load i32, ptr %.0162, align 4
  call fastcc void @_ZL11decSetCoeffP9decNumberP10decContextPKhiPiPj(ptr noundef %0, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %i.iy, i32 noundef %i.iz, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  call fastcc void @_ZL11decFinalizeP9decNumberP10decContextPiPj(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %i.b, ptr noundef %i.c)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bl, %bb.bw, %split.thread
  %.4 = phi ptr [ %.3, %bb.bw ], [ null, %bb.bl ], [ %.2, %split.thread ] ; 2 uses
  %.not207 = icmp eq ptr %.0153, null
  br i1 %.not207, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @uprv_free_78(ptr noundef nonnull %.0153) #15
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.not208 = icmp eq ptr %.4, null
  br i1 %.not208, label %.thread249, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @uprv_free_78(ptr noundef nonnull %.4) #15
  br label %.thread249

.thread249:                                       ; preds = %bb.c, %bb.am, %bb.ax, %bb.j, %bb.i, %bb.v, %bb.w, %bb.af, %bb.ai, %bb.ca, %bb.bz
  %.pr = load i32, ptr %i.c, align 4              ; 2 uses
  %.not209 = icmp eq i32 %.pr, 0
  br i1 %.not209, label %bb.cc, label %.thread249.thread

.thread249.thread:                                ; preds = %bb.au, %bb.as, %bb.ar, %bb.aq, %bb.ap, %.thread249
  %i.ja = phi i32 [ %.pr, %.thread249 ], [ 64, %bb.ap ], [ 64, %bb.ar ], [ 64, %bb.aq ], [ 128, %bb.as ], [ 128, %bb.au ] ; 5 uses
  %i.jb = and i32 %i.ja, 221
  %.not.i227 = icmp eq i32 %i.jb, 0
  br i1 %.not.i227, label %_ZL9decStatusP9decNumberjP10decContext.exit, label %.thread249.thread.thread

.thread249.thread.thread:                         ; preds = %.thread249.thread
  %i.jc = and i32 %i.ja, 1073741824
  %.not6.i = icmp eq i32 %i.jc, 0
  br i1 %.not6.i, label %.thread254, label %bb.cb

bb.cb:                                            ; preds = %.thread249.thread.thread
  %i.jd = and i32 %i.ja, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

.thread254:                                       ; preds = %.thread, %bb.ay, %bb.av, %bb.aw, %bb.ao, %bb.al, %bb.ah, %bb.f, %bb.g, %.thread249.thread.thread
  %i.je = phi i32 [ %i.ja, %.thread249.thread.thread ], [ 128, %bb.ao ], [ 128, %bb.ah ], [ 128, %bb.av ], [ 128, %bb.al ], [ 128, %bb.f ], [ 128, %bb.ay ], [ 128, %bb.g ], [ 128, %bb.aw ], [ 16, %.thread ]
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.jg, align 4
  store i32 1, ptr %0, align 4
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.jh, align 1
  store i8 32, ptr %i.jf, align 4
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %.thread249.thread.thread295, %.thread249.thread, %bb.cb, %.thread254
  %.0.i228 = phi i32 [ %i.jd, %bb.cb ], [ %i.je, %.thread254 ], [ %i.ja, %.thread249.thread ], [ 2080, %.thread249.thread.thread295 ]
  %i.ji = call ptr @uprv_decContextSetStatus_78(ptr noundef nonnull %3, i32 noundef %.0.i228) #15 ; 0 uses
  br label %bb.cc

bb.cc:                                            ; preds = %_ZL9decStatusP9decNumberjP10decContext.exit, %.thread249
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @_ZL14decShiftToMostPhii(ptr nofree noundef captures(address) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %2, %1                       ; 10 uses
  %i.d = icmp slt i32 %i.c, 2
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %0, align 1
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4
  %i.i = trunc i32 %i.h to i8
  %i.j = mul i8 %i.e, %i.i
  store i8 %i.j, ptr %0, align 1
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp slt i32 %1, 50
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = sext i32 %1 to i64
  %i.m = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.p = phi i32 [ %i.o, %bb.e ], [ %1, %bb.d ]   ; 2 uses
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 -1       ; 8 uses
  %i.t = icmp slt i32 %2, 50
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = zext nneg i32 %2 to i64
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.v = sext i32 %2 to i64
  %i.w = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  %i.y = zext i8 %i.x to i64
  %i.z = zext i8 %i.x to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.pn = phi i64 [ %i.y, %bb.h ], [ %i.u, %bb.g ]
  %i.aa = phi i32 [ %i.z, %bb.h ], [ %2, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 %.pn ; 8 uses
  %.neg75 = add i32 %2, 1
  %i.ac = sub i32 %.neg75, %i.aa                  ; 3 uses
  %i.ad = sub nsw i32 1, %i.ac                    ; 2 uses
  %i.ae = icmp eq i32 %i.ac, 1
  br i1 %i.ae, label %.preheader, label %bb.j

.preheader:                                       ; preds = %bb.i
  %.not7383 = icmp ult ptr %i.s, %0
  br i1 %.not7383, label %.loopexit76, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.af = add i64 %i.a, %i.q                      ; 2 uses
  %i.ag = sub i64 1, %i.af
  %i.ah = sub i64 0, %i.a
  %i.ai = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 %i.ah)
  %i.aj = add i64 %i.ai, %i.af                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.aj, 16
  br i1 %min.iters.check, label %.lr.ph86.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check112 = icmp ult i64 %i.aj, 32
  br i1 %min.iters.check112, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.aj, 16
  %n.vec = and i64 %i.aj, -32                     ; 4 uses
  %i.ak = sub i64 0, %n.vec                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.ab, i64 %i.ak  ; 2 uses
  %i.am = getelementptr i8, ptr %i.s, i64 %i.ak
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = sub i64 0, %index                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.an ; 2 uses
  %next.gep113 = getelementptr i8, ptr %i.s, i64 %i.an ; 2 uses
  %i.ao = getelementptr i8, ptr %next.gep113, i64 -15
  %i.ap = getelementptr i8, ptr %next.gep113, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ao, align 1
  %wide.load114 = load <16 x i8>, ptr %i.ap, align 1
  %i.aq = getelementptr i8, ptr %next.gep, i64 -15
  %i.ar = getelementptr i8, ptr %next.gep, i64 -31
  store <16 x i8> %wide.load, ptr %i.aq, align 1
  store <16 x i8> %wide.load114, ptr %i.ar, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !120

end_hunk_1
