Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/encode_prefix_kernel?download=true
inline.NumInlined: 18
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ZS_encodePrefix(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, i64 noundef %4, ptr noalias nofree noundef readonly captures(none) %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %ZS_encodePrefix_fallback.exit, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 %6 ; 2 uses
  %.not80 = icmp eq i64 %i.h, 0
  br i1 %.not80, label %._crit_edge75, label %.lr.ph74

.lr.ph74:                                         ; preds = %._crit_edge
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -7 ; 2 uses
  br label %bb.n

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.067 = phi i64 [ %i.h, %.lr.ph ], [ %4, %bb.a ] ; 2 uses
  %.05366 = phi i64 [ %i.g, %.lr.ph ], [ 0, %bb.a ]
  %i.c = getelementptr [4 x i8], ptr %5, i64 %.067
  %i.d = getelementptr i8, ptr %i.c, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15
  %i.f = zext i32 %i.e to i64
  %i.g = add nuw nsw i64 %.05366, %i.f            ; 2 uses
  %i.h = add i64 %.067, -1                        ; 9 uses
  %i.i = icmp ne i64 %i.h, 0
  %i.j = icmp samesign ult i64 %i.g, 32
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !11

._crit_edge75:                                    ; preds = %ZS_wildcopy.exit, %._crit_edge
  %.058.lcssa = phi ptr [ %3, %._crit_edge ], [ %i.dj, %ZS_wildcopy.exit ]
  %.057.lcssa = phi ptr [ %0, %._crit_edge ], [ %i.da, %ZS_wildcopy.exit ]
  %.056.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.bm, %ZS_wildcopy.exit ]
  %.054.lcssa = phi ptr [ %3, %._crit_edge ], [ %.05868, %ZS_wildcopy.exit ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.h
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.h
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.h
  %i.o = sub i64 %4, %i.h
  %.not.i59 = icmp eq i64 %4, %i.h
  br i1 %.not.i59, label %ZS_encodePrefix_fallback.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge75
  %i.p = getelementptr inbounds i8, ptr %i.a, i64 -7 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %ZS_countBound.exit.i, %.lr.ph.i
  %.038.i = phi ptr [ %.054.lcssa, %.lr.ph.i ], [ %.02837.i, %ZS_countBound.exit.i ] ; 3 uses
  %.02837.i = phi ptr [ %.058.lcssa, %.lr.ph.i ], [ %i.bi, %ZS_countBound.exit.i ] ; 10 uses
  %.02936.i = phi ptr [ %.057.lcssa, %.lr.ph.i ], [ %i.bj, %ZS_countBound.exit.i ] ; 2 uses
  %.03035.i = phi i32 [ %.056.lcssa, %.lr.ph.i ], [ %i.r, %ZS_countBound.exit.i ]
  %.03134.i = phi i64 [ 0, %.lr.ph.i ], [ %i.bk, %ZS_countBound.exit.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.03134.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !15   ; 4 uses
  %i.s = tail call i32 @llvm.umin.i32(i32 %.03035.i, i32 %i.r)
  %i.t = zext i32 %i.s to i64                     ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.02837.i, i64 %i.t ; 5 uses
  %i.v = icmp ult ptr %i.p, %i.u
  %i.w = select i1 %i.v, ptr %i.p, ptr %i.u       ; 2 uses
  %i.x = icmp ult ptr %.02837.i, %i.w
  br i1 %i.x, label %bb.c, label %.loopexit.i.i

bb.c:                                             ; preds = %bb.b
  %.val87.i.i = load i64, ptr %.02837.i, align 1  ; 2 uses
  %.val.i.i = load i64, ptr %.038.i, align 1      ; 2 uses
  %.not.i.i = icmp eq i64 %.val87.i.i, %.val.i.i
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = xor i64 %.val.i.i, %.val87.i.i
  %i.z = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.y, i1 true)
  %i.aa = lshr i64 %i.z, 3
  %spec.select93.i.i = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.t)
  br label %ZS_countBound.exit.i

.preheader.i.i:                                   ; preds = %bb.c, %bb.e
  %.pn.i.i = phi ptr [ %.066.i.i, %bb.e ], [ %.02837.i, %bb.c ]
  %.pn94.i.i = phi ptr [ %.064.i.i, %bb.e ], [ %.038.i, %bb.c ]
  %.064.i.i = getelementptr inbounds nuw i8, ptr %.pn94.i.i, i64 8 ; 3 uses
  %.066.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8 ; 5 uses
  %i.ab = icmp ult ptr %.066.i.i, %i.w
  br i1 %i.ab, label %bb.e, label %.loopexit.i.i

bb.e:                                             ; preds = %.preheader.i.i
  %.066.val.i.i = load i64, ptr %.066.i.i, align 1 ; 2 uses
  %.064.val.i.i = load i64, ptr %.064.i.i, align 1 ; 2 uses
  %.not85.i.i = icmp eq i64 %.066.val.i.i, %.064.val.i.i
  br i1 %.not85.i.i, label %.preheader.i.i, label %.thread89.i.i

.thread89.i.i:                                    ; preds = %bb.e
  %i.ac = xor i64 %.064.val.i.i, %.066.val.i.i
  %i.ad = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.ac, i1 true)
  %i.ae = lshr i64 %i.ad, 3
  %i.af = getelementptr inbounds nuw i8, ptr %.066.i.i, i64 %i.ae
  %i.ag = ptrtoint ptr %.02837.i to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ah, %i.ag
  %..i.i = tail call i64 @llvm.smin.i64(i64 %i.t, i64 %i.ai)
  br label %ZS_countBound.exit.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %bb.b
  %.268.i.i = phi ptr [ %.02837.i, %bb.b ], [ %.066.i.i, %.preheader.i.i ] ; 5 uses
  %.2.i.i = phi ptr [ %.038.i, %bb.b ], [ %.064.i.i, %.preheader.i.i ] ; 4 uses
  %i.aj = getelementptr inbounds i8, ptr %i.u, i64 -3
  %i.ak = icmp ult ptr %.268.i.i, %i.aj
  br i1 %i.ak, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.loopexit.i.i
  %.268.val.i.i = load i32, ptr %.268.i.i, align 1
  %.2.val.i.i = load i32, ptr %.2.i.i, align 1
  %i.al = icmp eq i32 %.268.val.i.i, %.2.val.i.i
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.268.i.i, i64 4
  %i.an = getelementptr inbounds nuw i8, ptr %.2.i.i, i64 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.loopexit.i.i
  %.369.i.i = phi ptr [ %i.am, %bb.g ], [ %.268.i.i, %bb.f ], [ %.268.i.i, %.loopexit.i.i ] ; 5 uses
  %.3.i.i = phi ptr [ %i.an, %bb.g ], [ %.2.i.i, %bb.f ], [ %.2.i.i, %.loopexit.i.i ] ; 4 uses
  %i.ao = getelementptr inbounds i8, ptr %i.u, i64 -1
  %i.ap = icmp ult ptr %.369.i.i, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.369.val.i.i = load i16, ptr %.369.i.i, align 1
  %.3.val.i.i = load i16, ptr %.3.i.i, align 1
  %i.aq = icmp eq i16 %.369.val.i.i, %.3.val.i.i
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.369.i.i, i64 2
  %i.as = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.470.i.i = phi ptr [ %i.ar, %bb.j ], [ %.369.i.i, %bb.i ], [ %.369.i.i, %bb.h ] ; 4 uses
  %.4.i.i = phi ptr [ %i.as, %bb.j ], [ %.3.i.i, %bb.i ], [ %.3.i.i, %bb.h ]
  %i.at = icmp ult ptr %.470.i.i, %i.u
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = load i8, ptr %.470.i.i, align 1, !tbaa !17
  %i.av = load i8, ptr %.4.i.i, align 1, !tbaa !17
  %i.aw = icmp eq i8 %i.au, %i.av
  %spec.select.idx.i.i = zext i1 %i.aw to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.470.i.i, i64 %spec.select.idx.i.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.5.i.i = phi ptr [ %.470.i.i, %bb.k ], [ %spec.select.i.i, %bb.l ]
  %i.ax = ptrtoint ptr %.5.i.i to i64
  %i.ay = ptrtoint ptr %.02837.i to i64
  %i.az = sub i64 %i.ax, %i.ay
  %.86.i.i = tail call i64 @llvm.smin.i64(i64 %i.az, i64 %i.t)
  br label %ZS_countBound.exit.i

ZS_countBound.exit.i:                             ; preds = %bb.m, %.thread89.i.i, %bb.d
  %.374.i.i = phi i64 [ %..i.i, %.thread89.i.i ], [ %.86.i.i, %bb.m ], [ %spec.select93.i.i, %bb.d ] ; 2 uses
  %i.ba = trunc i64 %.374.i.i to i32              ; 2 uses
  %i.bb = sub i32 %i.r, %i.ba                     ; 2 uses
  %i.bc = and i64 %.374.i.i, 4294967295
  %i.bd = getelementptr inbounds nuw i8, ptr %.02837.i, i64 %i.bc
  %i.be = zext i32 %i.bb to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02936.i, ptr align 1 %i.bd, i64 %i.be, i1 false)
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.03134.i
  store i32 %i.ba, ptr %i.bf, align 4, !tbaa !15
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.03134.i
  store i32 %i.bb, ptr %i.bg, align 4, !tbaa !15
  %i.bh = zext i32 %i.r to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %.02837.i, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %.02936.i, i64 %i.be
  %i.bk = add nuw i64 %.03134.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bk, %i.o
  br i1 %exitcond.not.i, label %ZS_encodePrefix_fallback.exit, label %bb.b, !llvm.loop !12

ZS_encodePrefix_fallback.exit:                    ; preds = %ZS_countBound.exit.i, %bb.a, %._crit_edge75
  ret void

bb.n:                                             ; preds = %.lr.ph74, %ZS_wildcopy.exit
  %.05472 = phi ptr [ %3, %.lr.ph74 ], [ %.05868, %ZS_wildcopy.exit ] ; 3 uses
  %.05571 = phi i64 [ 0, %.lr.ph74 ], [ %i.dk, %ZS_wildcopy.exit ] ; 4 uses
  %.05670 = phi i32 [ 0, %.lr.ph74 ], [ %i.bm, %ZS_wildcopy.exit ]
  %.05769 = phi ptr [ %0, %.lr.ph74 ], [ %i.da, %ZS_wildcopy.exit ] ; 3 uses
  %.05868 = phi ptr [ %3, %.lr.ph74 ], [ %i.dj, %ZS_wildcopy.exit ] ; 11 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.05571
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !15 ; 5 uses
  %i.bn = tail call i32 @llvm.umin.i32(i32 %.05670, i32 %i.bm)
  %i.bo = zext i32 %i.bn to i64                   ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.05868, i64 %i.bo ; 5 uses
  %i.bq = icmp ult ptr %i.b, %i.bp
  %i.br = select i1 %i.bq, ptr %i.b, ptr %i.bp    ; 2 uses
  %i.bs = icmp ult ptr %.05868, %i.br
  br i1 %i.bs, label %bb.o, label %.loopexit.i

bb.o:                                             ; preds = %bb.n
  %.val87.i = load i64, ptr %.05868, align 1      ; 2 uses
  %.val.i = load i64, ptr %.05472, align 1        ; 2 uses
  %.not.i60 = icmp eq i64 %.val87.i, %.val.i
  br i1 %.not.i60, label %.preheader.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = xor i64 %.val.i, %.val87.i
  %i.bu = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bt, i1 true)
  %i.bv = lshr i64 %i.bu, 3
  %spec.select93.i = tail call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.bo)
  br label %ZS_countBound.exit

.preheader.i:                                     ; preds = %bb.o, %bb.q
  %.pn.i61 = phi ptr [ %.066.i, %bb.q ], [ %.05868, %bb.o ]
  %.pn94.i = phi ptr [ %.064.i, %bb.q ], [ %.05472, %bb.o ]
  %.064.i = getelementptr inbounds nuw i8, ptr %.pn94.i, i64 8 ; 3 uses
  %.066.i = getelementptr inbounds nuw i8, ptr %.pn.i61, i64 8 ; 5 uses
  %i.bw = icmp ult ptr %.066.i, %i.br
  br i1 %i.bw, label %bb.q, label %.loopexit.i

bb.q:                                             ; preds = %.preheader.i
  %.066.val.i = load i64, ptr %.066.i, align 1    ; 2 uses
  %.064.val.i = load i64, ptr %.064.i, align 1    ; 2 uses
  %.not85.i = icmp eq i64 %.066.val.i, %.064.val.i
  br i1 %.not85.i, label %.preheader.i, label %.thread89.i

.thread89.i:                                      ; preds = %bb.q
  %i.bx = xor i64 %.064.val.i, %.066.val.i
  %i.by = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.bx, i1 true)
  %i.bz = lshr i64 %i.by, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %.066.i, i64 %i.bz
  %i.cb = ptrtoint ptr %.05868 to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cc, %i.cb
  %..i = tail call i64 @llvm.smin.i64(i64 %i.bo, i64 %i.cd)
  br label %ZS_countBound.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.n
  %.268.i = phi ptr [ %.05868, %bb.n ], [ %.066.i, %.preheader.i ] ; 5 uses
  %.2.i = phi ptr [ %.05472, %bb.n ], [ %.064.i, %.preheader.i ] ; 4 uses
  %i.ce = getelementptr inbounds i8, ptr %i.bp, i64 -3
  %i.cf = icmp ult ptr %.268.i, %i.ce
  br i1 %i.cf, label %bb.r, label %bb.t
end_hunk_0
