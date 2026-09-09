Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/mt19937-64?download=true
inline.NumInlined: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@mt = internal unnamed_addr global [312 x i64] zeroinitializer, align 16
@mti = internal unnamed_addr global i32 313, align 4
@genrand64_int64.mag01 = internal unnamed_addr constant [2 x i64] [i64 0, i64 -5403634167711393303], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @init_genrand64(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  store i64 %0, ptr @mt, align 16, !tbaa !14
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i64 [ %0, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.1, %bb.c ] ; 4 uses
  %i.a = getelementptr [8 x i8], ptr @mt, i64 %indvars.iv
  %i.b = lshr i64 %store_forwarded, 62
  %i.c = xor i64 %i.b, %store_forwarded
  %i.d = mul i64 %i.c, 6364136223846793005
  %i.e = add i64 %i.d, %indvars.iv                ; 3 uses
  store i64 %i.e, ptr %i.a, align 8, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 312
  br i1 %exitcond.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr [8 x i8], ptr @mt, i64 %indvars.iv.next
  %i.g = lshr i64 %i.e, 62
  %i.h = xor i64 %i.g, %i.e
  %i.i = mul i64 %i.h, 6364136223846793005
  %i.j = add i64 %i.i, %indvars.iv.next           ; 2 uses
  store i64 %i.j, ptr %i.f, align 8, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  store i32 312, ptr @mti, align 4, !tbaa !12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @init_by_array64(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  store i64 19650218, ptr @mt, align 16, !tbaa !14
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded = phi i64 [ 19650218, %bb.a ], [ %i.j, %bb.c ] ; 2 uses
  %indvars.iv.i = phi i64 [ 1, %bb.a ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %i.a = getelementptr [8 x i8], ptr @mt, i64 %indvars.iv.i
  %i.b = lshr i64 %store_forwarded, 62
  %i.c = xor i64 %i.b, %store_forwarded
  %i.d = mul i64 %i.c, 6364136223846793005
  %i.e = add i64 %i.d, %indvars.iv.i              ; 3 uses
  store i64 %i.e, ptr %i.a, align 8, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 312
  br i1 %exitcond.not.i, label %init_genrand64.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr [8 x i8], ptr @mt, i64 %indvars.iv.next.i
  %i.g = lshr i64 %i.e, 62
  %i.h = xor i64 %i.g, %i.e
  %i.i = mul i64 %i.h, 6364136223846793005
  %i.j = add i64 %i.i, %indvars.iv.next.i         ; 2 uses
  store i64 %i.j, ptr %i.f, align 8, !tbaa !14
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  br label %bb.b

init_genrand64.exit:                              ; preds = %bb.b
  store i32 312, ptr @mti, align 4, !tbaa !12
  %i.k = tail call i64 @llvm.umax.i64(i64 %1, i64 312)
  br label %bb.d

bb.d:                                             ; preds = %init_genrand64.exit, %bb.f
  %.033 = phi i64 [ %i.k, %init_genrand64.exit ], [ %i.ab, %bb.f ]
  %.02432 = phi i64 [ 0, %init_genrand64.exit ], [ %spec.store.select, %bb.f ] ; 3 uses
  %.02531 = phi i64 [ 1, %init_genrand64.exit ], [ %.126, %bb.f ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @mt, i64 %.02531 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !14
  %i.n = getelementptr i8, ptr %i.l, i64 -8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14   ; 2 uses
  %i.p = lshr i64 %i.o, 62
  %i.q = xor i64 %i.p, %i.o
  %i.r = mul i64 %i.q, 3935559000370003845
  %i.s = xor i64 %i.r, %i.m
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.02432
  %i.u = load i64, ptr %i.t, align 8, !tbaa !14
  %i.v = add i64 %i.u, %.02432
  %i.w = add i64 %i.v, %i.s
  store i64 %i.w, ptr %i.l, align 8, !tbaa !14
  %i.x = add nuw nsw i64 %.02531, 1
  %i.y = add i64 %.02432, 1                       ; 2 uses
  %i.z = icmp ugt i64 %.02531, 310
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @mt, i64 2488), align 8, !tbaa !14
  store i64 %i.aa, ptr @mt, align 16, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.126 = phi i64 [ 1, %bb.e ], [ %i.x, %bb.d ]   ; 2 uses
  %.not30 = icmp ult i64 %i.y, %1
  %spec.store.select = select i1 %.not30, i64 %i.y, i64 0
  %i.ab = add i64 %.033, -1                       ; 2 uses
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %.preheader, label %bb.d, !llvm.loop !16

.preheader:                                       ; preds = %bb.f, %bb.h
  %.135 = phi i64 [ %i.ao, %bb.h ], [ 311, %bb.f ]
  %.234 = phi i64 [ %.3, %bb.h ], [ %.126, %bb.f ] ; 4 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @mt, i64 %.234 ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !14
  %i.ae = getelementptr i8, ptr %i.ac, i64 -8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !14 ; 2 uses
  %i.ag = lshr i64 %i.af, 62
  %i.ah = xor i64 %i.ag, %i.af
  %i.ai = mul i64 %i.ah, 2862933555777941757
  %i.aj = xor i64 %i.ai, %i.ad
  %i.ak = sub i64 %i.aj, %.234
  store i64 %i.ak, ptr %i.ac, align 8, !tbaa !14
  %i.al = add nuw nsw i64 %.234, 1
  %i.am = icmp ugt i64 %.234, 310
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader
  %i.an = load i64, ptr getelementptr inbounds nuw (i8, ptr @mt, i64 2488), align 8, !tbaa !14
  store i64 %i.an, ptr @mt, align 16, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.g
  %.3 = phi i64 [ 1, %bb.g ], [ %i.al, %.preheader ]
  %i.ao = add nsw i64 %.135, -1                   ; 2 uses
  %.not29 = icmp eq i64 %i.ao, 0
  br i1 %.not29, label %bb.i, label %.preheader, !llvm.loop !17

bb.i:                                             ; preds = %bb.h
  store i64 -9223372036854775808, ptr @mt, align 16, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @genrand64_int64() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @mti, align 4, !tbaa !12   ; 4 uses
  %i.b = icmp sgt i32 %i.a, 311
  br i1 %i.b, label %bb.b, label %._crit_edge36

._crit_edge36:                                    ; preds = %bb.a
  %.phi.trans.insert = sext i32 %i.a to i64
  %.phi.trans.insert37 = getelementptr inbounds [8 x i8], ptr @mt, i64 %.phi.trans.insert
  %.pre38 = load i64, ptr %.phi.trans.insert37, align 8, !tbaa !14
  %i.c = add nsw i32 %i.a, 1
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.a, 313
  br i1 %i.d, label %bb.c, label %init_genrand64.exit

bb.c:                                             ; preds = %bb.b
  store i64 5489, ptr @mt, align 16, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %store_forwarded = phi i64 [ 5489, %bb.c ], [ %i.n, %bb.e ] ; 2 uses
  %indvars.iv.i = phi i64 [ 1, %bb.c ], [ %indvars.iv.next.i.1, %bb.e ] ; 4 uses
  %i.e = getelementptr [8 x i8], ptr @mt, i64 %indvars.iv.i
  %i.f = lshr i64 %store_forwarded, 62
  %i.g = xor i64 %i.f, %store_forwarded
  %i.h = mul i64 %i.g, 6364136223846793005
  %i.i = add i64 %i.h, %indvars.iv.i              ; 3 uses
  store i64 %i.i, ptr %i.e, align 8, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 312
  br i1 %exitcond.not.i, label %init_genrand64.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr [8 x i8], ptr @mt, i64 %indvars.iv.next.i
  %i.k = lshr i64 %i.i, 62
  %i.l = xor i64 %i.k, %i.i
  %i.m = mul i64 %i.l, 6364136223846793005
  %i.n = add i64 %i.m, %indvars.iv.next.i         ; 2 uses
  store i64 %i.n, ptr %i.j, align 8, !tbaa !14
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  br label %bb.d

init_genrand64.exit:                              ; preds = %bb.d, %bb.b
  %.pre = load i64, ptr @mt, align 16, !tbaa !14
  br label %bb.f

.lr.ph.preheader:                                 ; preds = %bb.f
  %.pre35 = load i64, ptr getelementptr inbounds nuw (i8, ptr @mt, i64 1248), align 16, !tbaa !14
  br label %.lr.ph

bb.f:                                             ; preds = %bb.f, %init_genrand64.exit
  %i.o = phi i64 [ %.pre, %init_genrand64.exit ], [ %i.ag, %bb.f ]
  %indvars.iv = phi i64 [ 0, %init_genrand64.exit ], [ %indvars.iv.next.1, %bb.f ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @mt, i64 %indvars.iv ; 2 uses
  %i.q = and i64 %i.o, -2147483648
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @mt, i64 %indvars.iv.next
  %i.s = load i64, ptr %i.r, align 8, !tbaa !14   ; 3 uses
  %i.t = and i64 %i.s, 2147483646
  %i.u = or disjoint i64 %i.t, %i.q
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 1248
  %i.w = load i64, ptr %i.v, align 16, !tbaa !14
  %i.x = lshr exact i64 %i.u, 1
  %i.y = and i64 %i.s, 1
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @genrand64_int64.mag01, i64 %i.y
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !14
  %i.ab = xor i64 %i.aa, %i.w
  %i.ac = xor i64 %i.ab, %i.x
  store i64 %i.ac, ptr %i.p, align 16, !tbaa !14
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr @mt, i64 %indvars.iv.next ; 2 uses
  %i.ae = and i64 %i.s, -2147483648
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr @mt, i64 %indvars.iv.next.1
  %i.ag = load i64, ptr %i.af, align 16, !tbaa !14 ; 3 uses
  %i.ah = and i64 %i.ag, 2147483646
  %i.ai = or disjoint i64 %i.ah, %i.ae
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 1248
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !14
  %i.al = lshr exact i64 %i.ai, 1
  %i.am = and i64 %i.ag, 1
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @genrand64_int64.mag01, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !14
  %i.ap = xor i64 %i.ao, %i.ak
  %i.aq = xor i64 %i.ap, %i.al
  store i64 %i.aq, ptr %i.ad, align 8, !tbaa !14
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 156
  br i1 %exitcond.not.1, label %.lr.ph.preheader, label %bb.f, !llvm.loop !18

.lr.ph:                                           ; preds = %.lr.ph.1, %.lr.ph.preheader
  %i.ar = phi i64 [ %.pre35, %.lr.ph.preheader ], [ %i.bj, %.lr.ph.1 ]
  %indvars.iv31 = phi i64 [ 156, %.lr.ph.preheader ], [ %indvars.iv.next32.1, %.lr.ph.1 ] ; 4 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @mt, i64 %indvars.iv31 ; 2 uses
  %i.at = and i64 %i.ar, -2147483648
  %indvars.iv.next32 = or disjoint i64 %indvars.iv31, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @mt, i64 %indvars.iv.next32
  %i.av = load i64, ptr %i.au, align 8, !tbaa !14 ; 3 uses
  %i.aw = and i64 %i.av, 2147483646
  %i.ax = or disjoint i64 %i.aw, %i.at
  %i.ay = getelementptr i8, ptr %i.as, i64 -1248
  %i.az = load i64, ptr %i.ay, align 16, !tbaa !14
  %i.ba = lshr exact i64 %i.ax, 1
  %i.bb = and i64 %i.av, 1
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @genrand64_int64.mag01, i64 %i.bb
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !14
  %i.be = xor i64 %i.bd, %i.az
  %i.bf = xor i64 %i.be, %i.ba
  store i64 %i.bf, ptr %i.as, align 16, !tbaa !14
  %exitcond34.not = icmp eq i64 %indvars.iv31, 310
  br i1 %exitcond34.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @mt, i64 %indvars.iv.next32 ; 2 uses
  %i.bh = and i64 %i.av, -2147483648
  %indvars.iv.next32.1 = add nuw nsw i64 %indvars.iv31, 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr @mt, i64 %indvars.iv.next32.1
  %i.bj = load i64, ptr %i.bi, align 16, !tbaa !14 ; 3 uses
  %i.bk = and i64 %i.bj, 2147483646
  %i.bl = or disjoint i64 %i.bk, %i.bh
  %i.bm = getelementptr i8, ptr %i.bg, i64 -1248
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !14
  %i.bo = lshr exact i64 %i.bl, 1
  %i.bp = and i64 %i.bj, 1
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr @genrand64_int64.mag01, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !14
  %i.bs = xor i64 %i.br, %i.bn
  %i.bt = xor i64 %i.bs, %i.bo
  store i64 %i.bt, ptr %i.bg, align 8, !tbaa !14
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.bu = load i64, ptr getelementptr inbounds nuw (i8, ptr @mt, i64 2488), align 8, !tbaa !14
  %i.bv = and i64 %i.bu, -2147483648
  %i.bw = load i64, ptr @mt, align 16, !tbaa !14  ; 3 uses
  %i.bx = and i64 %i.bw, 2147483646
  %i.by = or disjoint i64 %i.bx, %i.bv
  %i.bz = load i64, ptr getelementptr inbounds nuw (i8, ptr @mt, i64 1240), align 8, !tbaa !14
  %i.ca = lshr exact i64 %i.by, 1
  %i.cb = and i64 %i.bw, 1
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr @genrand64_int64.mag01, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !14
  %i.ce = xor i64 %i.cd, %i.bz
  %i.cf = xor i64 %i.ce, %i.ca
  store i64 %i.cf, ptr getelementptr inbounds nuw (i8, ptr @mt, i64 2488), align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge36, %._crit_edge
  %i.cg = phi i64 [ %i.bw, %._crit_edge ], [ %.pre38, %._crit_edge36 ] ; 2 uses
  %i.ch = phi i32 [ 1, %._crit_edge ], [ %i.c, %._crit_edge36 ]
  store i32 %i.ch, ptr @mti, align 4, !tbaa !12
  %i.ci = lshr i64 %i.cg, 29
  %i.cj = and i64 %i.ci, 22906492245
  %i.ck = xor i64 %i.cj, %i.cg                    ; 2 uses
  %i.cl = shl i64 %i.ck, 17
  %i.cm = and i64 %i.cl, 8202884508482404352
  %i.cn = xor i64 %i.cm, %i.ck                    ; 2 uses
  %i.co = shl i64 %i.cn, 37
  %i.cp = and i64 %i.co, -2270628950310912
  %i.cq = xor i64 %i.cp, %i.cn                    ; 2 uses
  %i.cr = lshr i64 %i.cq, 43
  %i.cs = xor i64 %i.cr, %i.cq
  ret i64 %i.cs
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, -9223372036854775808) i64 @genrand64_int63() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @genrand64_int64()
  %i.b = lshr i64 %i.a, 1
  ret i64 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local double @genrand64_real1() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @genrand64_int64()
  %i.b = lshr i64 %i.a, 11
  %i.c = uitofp nneg i64 %i.b to double
  %i.d = fmul nnan double %i.c, f0x3CA0000000000001
  ret double %i.d
end_hunk_0
