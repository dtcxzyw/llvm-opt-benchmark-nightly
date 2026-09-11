Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/z19?download=true
begin_hunk_0_@ScaleToConstraint

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @InterposeScale(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 34), align 1, !tbaa !8 ; 2 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  store i32 %i.b, ptr @zz_size, align 4, !tbaa !7
  %i.c = zext i8 %i.a to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.c ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %i.h = tail call ptr @GetMemory(i32 noundef %i.b, ptr noundef %i.g) #5 ; 2 uses
  store ptr %i.h, ptr @zz_hold, align 8, !tbaa !13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr %i.e, ptr @zz_hold, align 8, !tbaa !13
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !8
  store ptr %i.i, ptr %i.d, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.h, %bb.b ], [ %i.e, %bb.c ] ; 22 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i8 34, ptr %i.k, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.j, ptr %i.l, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store ptr %i.j, ptr %i.m, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.j, ptr %i.n, align 8, !tbaa !8
  store ptr %i.j, ptr %i.j, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.p = load i16, ptr %i.o, align 2, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 34
  store i16 %i.p, ptr %i.q, align 2, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.s, 1048575                    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 36 ; 3 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, -1048576
  %i.x = or disjoint i32 %i.w, %i.t
  store i32 %i.x, ptr %i.u, align 4
  %i.y = load i32, ptr %i.r, align 4
  %i.z = and i32 %i.y, -1048576
  %i.aa = or disjoint i32 %i.z, %i.t
  store i32 %i.aa, ptr %i.u, align 4
  %i.ab = icmp eq i32 %2, 0                       ; 2 uses
  %spec.select = select i1 %i.ab, i32 %1, i32 128
  %spec.select49 = select i1 %i.ab, i32 128, i32 %1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i32 %spec.select, ptr %i.ac, align 8, !tbaa !8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i32 %spec.select49, ptr %i.ad, align 8, !tbaa !8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.af = zext nneg i32 %2 to i64                 ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !8
  %i.ai = mul nsw i32 %i.ah, %1
  %i.aj = sdiv i32 %i.ai, 128
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.af
  store i32 %i.aj, ptr %i.al, align 4, !tbaa !8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.af
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !8
  %i.ap = mul nsw i32 %i.ao, %1
  %i.aq = sdiv i32 %i.ap, 128
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.af
  store i32 %i.aq, ptr %i.as, align 4, !tbaa !8
  %i.at = xor i32 %2, 1
  %i.au = zext nneg i32 %i.at to i64              ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !8
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.au
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !8
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.au
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !8
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.au
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !8  ; 6 uses
  %i.be = icmp eq ptr %i.bd, %0
  br i1 %i.be, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  store ptr null, ptr @xx_tmp, align 8, !tbaa !13
  store ptr %i.j, ptr @zz_res, align 8, !tbaa !13
  store ptr null, ptr @zz_hold, align 8, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !8  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 3 uses
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store ptr %i.bd, ptr %i.bh, align 8, !tbaa !8
  store ptr %0, ptr %i.bc, align 8, !tbaa !8
  store ptr %0, ptr %i.bb, align 8, !tbaa !8
  store ptr %i.bd, ptr @xx_tmp, align 8, !tbaa !13
  store ptr %i.j, ptr @zz_res, align 8, !tbaa !13
  store ptr %i.bd, ptr @zz_hold, align 8, !tbaa !13
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !8  ; 3 uses
  store ptr %i.bi, ptr @zz_tmp, align 8, !tbaa !13
  %i.bj = load ptr, ptr %i.m, align 8, !tbaa !8   ; 2 uses
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr %i.bd, ptr %i.bk, align 8, !tbaa !8
  store ptr %i.bi, ptr %i.m, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %i.j, ptr %i.bl, align 8, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %i.bm = load i8, ptr @zz_lengths, align 1, !tbaa !8 ; 2 uses
  %i.bn = zext i8 %i.bm to i32                    ; 2 uses
  store i32 %i.bn, ptr @zz_size, align 4, !tbaa !7
  %i.bo = zext i8 %i.bm to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.bo ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !13 ; 4 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bs = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %i.bt = tail call ptr @GetMemory(i32 noundef %i.bn, ptr noundef %i.bs) #5
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store ptr %i.bq, ptr @zz_hold, align 8, !tbaa !13
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !8
  store ptr %i.bu, ptr %i.bp, align 8, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bv = phi ptr [ %i.bt, %bb.g ], [ %i.bq, %bb.h ] ; 12 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store i8 0, ptr %i.bw, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.bv, ptr %i.by, align 8, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bv, ptr %i.bz, align 8, !tbaa !8
  store ptr %i.bv, ptr %i.bv, align 8, !tbaa !8
  store ptr %i.bv, ptr @xx_link, align 8, !tbaa !13
  store ptr %i.bv, ptr @zz_res, align 8, !tbaa !13
  store ptr %i.j, ptr @zz_hold, align 8, !tbaa !13
  %i.ca = load ptr, ptr %i.j, align 8, !tbaa !8
  store ptr %i.ca, ptr @zz_tmp, align 8, !tbaa !13
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !8
  store ptr %i.cb, ptr %i.j, align 8, !tbaa !8
  %i.cc = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %i.cd = load ptr, ptr @zz_res, align 8, !tbaa !13 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.cc, ptr %i.cf, align 8, !tbaa !8
  %i.cg = load ptr, ptr @zz_tmp, align 8, !tbaa !13 ; 2 uses
  store ptr %i.cg, ptr %i.cd, align 8, !tbaa !8
  %i.ch = load ptr, ptr @zz_res, align 8, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !8
  %i.cj = load ptr, ptr @xx_link, align 8, !tbaa !13 ; 4 uses
  store ptr %i.cj, ptr @zz_res, align 8, !tbaa !13
  store ptr %0, ptr @zz_hold, align 8, !tbaa !13
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cl = load ptr, ptr %i.bb, align 8, !tbaa !8  ; 3 uses
  store ptr %i.cl, ptr @zz_tmp, align 8, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !8  ; 2 uses
  store ptr %i.cn, ptr %i.bb, align 8, !tbaa !8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store ptr %0, ptr %i.co, align 8, !tbaa !8
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %i.cj, ptr %i.cp, align 8, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret ptr %i.j
}

declare void @AdjustSize(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @InterposeWideOrHigh(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %2 = icmp eq i32 %1, 0
  %3 = select i1 %2, i32 26, i32 27               ; 2 uses
  %i.a = zext nneg i32 %3 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !8     ; 2 uses
  %i.d = zext i8 %i.c to i32                      ; 2 uses
  store i32 %i.d, ptr @zz_size, align 4, !tbaa !7
  %i.e = zext i8 %i.c to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.e ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %i.j = tail call ptr @GetMemory(i32 noundef %i.d, ptr noundef %i.i) #5 ; 2 uses
  store ptr %i.j, ptr @zz_hold, align 8, !tbaa !13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr %i.g, ptr @zz_hold, align 8, !tbaa !13
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !8
  store ptr %i.k, ptr %i.f, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.l = phi ptr [ %i.j, %bb.b ], [ %i.g, %bb.c ] ; 23 uses
  %i.m = trunc nuw nsw i32 %3 to i8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i8 %i.m, ptr %i.n, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.l, ptr %i.o, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 3 uses
  store ptr %i.l, ptr %i.p, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.l, ptr %i.q, align 8, !tbaa !8
  store ptr %i.l, ptr %i.l, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.s = load i16, ptr %i.r, align 2, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 34
  store i16 %i.s, ptr %i.t, align 2, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, 1048575                    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 36 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4
  %i.z = and i32 %i.y, -1048576
  %i.aa = or disjoint i32 %i.z, %i.w
  store i32 %i.aa, ptr %i.x, align 4
  %i.ab = load i32, ptr %i.u, align 4
  %i.ac = and i32 %i.ab, -1048576
  %i.ad = or disjoint i32 %i.ac, %i.w
  store i32 %i.ad, ptr %i.x, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.af = zext nneg i32 %1 to i64                 ; 4 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !8  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.af
  store i32 %i.ah, ptr %i.aj, align 4, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.af
  %i.am = load i32, ptr %i.al, align 4, !tbaa !8  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.af
  store i32 %i.am, ptr %i.ao, align 4, !tbaa !8
  %i.ap = xor i32 %1, 1
  %i.aq = zext nneg i32 %i.ap to i64              ; 4 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !8
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aq
  store i32 %i.as, ptr %i.at, align 4, !tbaa !8
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.aq
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.aq
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store i32 8388607, ptr %i.ax, align 8, !tbaa !8
  %i.ay = add nsw i32 %i.am, %i.ah
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 68
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  store i32 8388607, ptr %i.ba, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !8  ; 6 uses
  %i.be = icmp eq ptr %i.bd, %0
  br i1 %i.be, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  store ptr null, ptr @xx_tmp, align 8, !tbaa !13
  store ptr %i.l, ptr @zz_res, align 8, !tbaa !13
  store ptr null, ptr @zz_hold, align 8, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !8  ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 3 uses
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store ptr %i.bd, ptr %i.bh, align 8, !tbaa !8
  store ptr %0, ptr %i.bc, align 8, !tbaa !8
  store ptr %0, ptr %i.bb, align 8, !tbaa !8
  store ptr %i.bd, ptr @xx_tmp, align 8, !tbaa !13
  store ptr %i.l, ptr @zz_res, align 8, !tbaa !13
  store ptr %i.bd, ptr @zz_hold, align 8, !tbaa !13
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !8  ; 3 uses
  store ptr %i.bi, ptr @zz_tmp, align 8, !tbaa !13
  %i.bj = load ptr, ptr %i.p, align 8, !tbaa !8   ; 2 uses
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr %i.bd, ptr %i.bk, align 8, !tbaa !8
  store ptr %i.bi, ptr %i.p, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %i.l, ptr %i.bl, align 8, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %i.bm = load i8, ptr @zz_lengths, align 1, !tbaa !8 ; 2 uses
  %i.bn = zext i8 %i.bm to i32                    ; 2 uses
  store i32 %i.bn, ptr @zz_size, align 4, !tbaa !7
  %i.bo = zext i8 %i.bm to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.bo ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !13 ; 4 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bs = load ptr, ptr @no_fpos, align 8, !tbaa !10
  %i.bt = tail call ptr @GetMemory(i32 noundef %i.bn, ptr noundef %i.bs) #5
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store ptr %i.bq, ptr @zz_hold, align 8, !tbaa !13
  %i.bu = load ptr, ptr %i.bq, align 8, !tbaa !8
  store ptr %i.bu, ptr %i.bp, align 8, !tbaa !13
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bv = phi ptr [ %i.bt, %bb.g ], [ %i.bq, %bb.h ] ; 12 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store i8 0, ptr %i.bw, align 8, !tbaa !8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store ptr %i.bv, ptr %i.bx, align 8, !tbaa !8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr %i.bv, ptr %i.by, align 8, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.bv, ptr %i.bz, align 8, !tbaa !8
  store ptr %i.bv, ptr %i.bv, align 8, !tbaa !8
  store ptr %i.bv, ptr @xx_link, align 8, !tbaa !13
  store ptr %i.bv, ptr @zz_res, align 8, !tbaa !13
  store ptr %i.l, ptr @zz_hold, align 8, !tbaa !13
  %i.ca = load ptr, ptr %i.l, align 8, !tbaa !8
  store ptr %i.ca, ptr @zz_tmp, align 8, !tbaa !13
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !8
  store ptr %i.cb, ptr %i.l, align 8, !tbaa !8
  %i.cc = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %i.cd = load ptr, ptr @zz_res, align 8, !tbaa !13 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.cc, ptr %i.cf, align 8, !tbaa !8
  %i.cg = load ptr, ptr @zz_tmp, align 8, !tbaa !13 ; 2 uses
  store ptr %i.cg, ptr %i.cd, align 8, !tbaa !8
  %i.ch = load ptr, ptr @zz_res, align 8, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !8
  %i.cj = load ptr, ptr @xx_link, align 8, !tbaa !13 ; 4 uses
  store ptr %i.cj, ptr @zz_res, align 8, !tbaa !13
  store ptr %0, ptr @zz_hold, align 8, !tbaa !13
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cl = load ptr, ptr %i.bb, align 8, !tbaa !8  ; 3 uses
  store ptr %i.cl, ptr @zz_tmp, align 8, !tbaa !13
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 16 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !8  ; 2 uses
  store ptr %i.cn, ptr %i.bb, align 8, !tbaa !8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  store ptr %0, ptr %i.co, align 8, !tbaa !8
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %i.cj, ptr %i.cp, align 8, !tbaa !8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret ptr %i.l
}

declare ptr @Image(i32 noundef) local_unnamed_addr #2

declare void @Interpose(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Promote(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"p1 _ZTS3rec", !9, i64 0}
!13 = !{!12, !12, i64 0}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
end_hunk_0
