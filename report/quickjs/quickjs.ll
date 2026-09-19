Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 177
begin_hunk_0_@js_array_pop:bb.a
  br i1 %i.bm, label %bb.q, label %JS_FreeValue.exit61

bb.q:                                             ; preds = %bb.p
  %i.bn = inttoptr i64 %.sroa.09.3 to ptr
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -4 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !191 ; 2 uses
  %i.bq = add nsw i32 %i.bp, -1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !191
  %i.br = icmp slt i32 %i.bp, 2
  br i1 %i.br, label %bb.r, label %JS_FreeValue.exit61

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bk, i64 %.sroa.09.3, i64 %.sroa.11.3), !inline_history !291
  br label %JS_FreeValue.exit61

JS_FreeValue.exit61:                              ; preds = %.thread71, %bb.p, %bb.q, %bb.r
  %i.bs = phi ptr [ %i.f, %.thread71 ], [ %i.bj, %bb.p ], [ %i.bj, %bb.q ], [ %i.bj, %bb.r ]
  %i.bt = trunc i64 %i.d to i32
  %i.bu = icmp ugt i32 %i.bt, -10
  br i1 %i.bu, label %bb.s, label %JS_FreeValue.exit

bb.s:                                             ; preds = %JS_FreeValue.exit61
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !232
  %i.bw = inttoptr i64 %i.c to ptr
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -4 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !191 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !191
  %i.ca = icmp slt i32 %i.by, 2
  br i1 %i.ca, label %JS_FreeValue.exit.sink.split, label %JS_FreeValue.exit

JS_FreeValue.exit.sink.split:                     ; preds = %bb.s, %bb.o
  %.sink77 = phi ptr [ %i.bd, %bb.o ], [ %i.bv, %bb.s ]
  %.sroa.455.0.ph = phi i64 [ %.sroa.11.2, %bb.o ], [ 6, %bb.s ]
  %.sroa.054.0.insert.insert.ph = phi i64 [ %.sroa.09.2, %bb.o ], [ 0, %bb.s ]
  tail call fastcc void @js_free_value_rt(ptr noundef %.sink77, i64 %i.c, i64 %i.d)
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %JS_FreeValue.exit.sink.split, %bb.s, %JS_FreeValue.exit61, %bb.o, %bb.n
  %.sroa.455.0 = phi i64 [ 6, %bb.s ], [ %.sroa.11.2, %bb.n ], [ %.sroa.11.2, %bb.o ], [ 6, %JS_FreeValue.exit61 ], [ %.sroa.455.0.ph, %JS_FreeValue.exit.sink.split ]
  %.sroa.054.0.insert.insert = phi i64 [ 0, %bb.s ], [ %.sroa.09.2, %bb.n ], [ %.sroa.09.2, %bb.o ], [ 0, %JS_FreeValue.exit61 ], [ %.sroa.054.0.insert.insert.ph, %JS_FreeValue.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.054.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.455.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @JS_CopySubArray(ptr noundef %0, i64 %1, i64 %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef range(i32 -1, 2) %6) unnamed_addr #2 {
bb.a:
  %7 = alloca %struct.JSValue, align 8            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  %i.a = and i64 %2, 4294967295
  %i.b = icmp eq i64 %i.a, 4294967295
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.e = load i16, ptr %i.d, align 2, !tbaa !276
  %.not = icmp eq i16 %i.e, 2
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i16, ptr %i.f, align 8
  %i.h = and i16 %i.g, 16
  %.not90 = icmp eq i16 %i.h, 0
  br i1 %.not90, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.078 = phi ptr [ null, %bb.d ], [ %i.c, %bb.c ], [ null, %bb.a ] ; 4 uses
  %i.i = icmp sgt i64 %5, 0
  br i1 %i.i, label %.lr.ph109, label %._crit_edge

.lr.ph109:                                        ; preds = %bb.e
  %i.j = icmp slt i32 %6, 0                       ; 3 uses
  %i.k = add nsw i64 %5, %4                       ; 2 uses
  %i.l = add nsw i64 %5, %3                       ; 2 uses
  %.not91 = icmp eq ptr %.078, null
  %i.m = getelementptr inbounds nuw i8, ptr %.078, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %.078, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %.078, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  br i1 %.not91, label %.lr.ph109.split.us, label %.lr.ph109.split

.lr.ph109.split.us:                               ; preds = %.lr.ph109
  br i1 %i.j, label %.lr.ph109.split.us.split.us, label %.lr.ph109.split.us.split

.lr.ph109.split.us.split.us:                      ; preds = %.lr.ph109.split.us, %bb.i
  %.079108.us.us = phi i64 [ %.1.us.us, %bb.i ], [ 0, %.lr.ph109.split.us ] ; 2 uses
  %i.r = xor i64 %.079108.us.us, -1               ; 2 uses
  %i.s = add i64 %i.k, %i.r
  %i.t = add i64 %i.l, %i.r                       ; 2 uses
  %i.u = call fastcc i32 @JS_TryGetPropertyInt64(ptr noundef %0, i64 %1, i64 %2, i64 noundef %i.s, ptr noundef nonnull %7) ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph109.split.us.split.us
  %.not92.us.us = icmp eq i32 %i.u, 0
  br i1 %.not92.us.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i64, ptr %7, align 8
  %i.x = load i64, ptr %i.q, align 8
  %i.y = tail call i32 @JS_SetPropertyInt64(ptr noundef %0, i64 %1, i64 %2, i64 noundef %i.t, i64 %i.w, i64 %i.x)
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %._crit_edge, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.aa = tail call i32 @JS_DeletePropertyInt64(ptr noundef %0, i64 %1, i64 %2, i64 noundef %i.t, i32 noundef 16384)
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %._crit_edge, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.us.us = add nuw nsw i64 %.079108.us.us, 1   ; 2 uses
  %exitcond130.not = icmp eq i64 %.1.us.us, %5
  br i1 %exitcond130.not, label %._crit_edge, label %.lr.ph109.split.us.split.us, !llvm.loop !1917

.lr.ph109.split.us.split:                         ; preds = %.lr.ph109.split.us, %bb.m
  %.079108.us = phi i64 [ %.1.us, %bb.m ], [ 0, %.lr.ph109.split.us ] ; 3 uses
  %i.ac = add nsw i64 %.079108.us, %4
  %i.ad = add nsw i64 %.079108.us, %3             ; 2 uses
  %i.ae = call fastcc i32 @JS_TryGetPropertyInt64(ptr noundef %0, i64 %1, i64 %2, i64 noundef %i.ac, ptr noundef nonnull %7) ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %.lr.ph109.split.us.split
  %.not92.us = icmp eq i32 %i.ae, 0
  br i1 %.not92.us, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load i64, ptr %7, align 8
  %i.ah = load i64, ptr %i.q, align 8
  %i.ai = tail call i32 @JS_SetPropertyInt64(ptr noundef %0, i64 %1, i64 %2, i64 noundef %i.ad, i64 %i.ag, i64 %i.ah)
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %._crit_edge, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ak = tail call i32 @JS_DeletePropertyInt64(ptr noundef %0, i64 %1, i64 %2, i64 noundef %i.ad, i32 noundef 16384)
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.us = add nuw nsw i64 %.079108.us, 1         ; 2 uses
  %exitcond129.not = icmp eq i64 %.1.us, %5
  br i1 %exitcond129.not, label %._crit_edge, label %.lr.ph109.split.us.split, !llvm.loop !1917

.lr.ph109.split:                                  ; preds = %.lr.ph109, %.loopexit
  %.079108 = phi i64 [ %.1, %.loopexit ], [ 0, %.lr.ph109 ] ; 5 uses
  br i1 %i.j, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph109.split
  %i.am = xor i64 %.079108, -1                    ; 2 uses
  %i.an = add i64 %i.k, %i.am
  %i.ao = add i64 %i.l, %i.am
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph109.split
  %i.ap = add nsw i64 %.079108, %4
  %i.aq = add nsw i64 %.079108, %3
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.084 = phi i64 [ %i.ao, %bb.n ], [ %i.aq, %bb.o ] ; 7 uses
  %.080 = phi i64 [ %i.an, %bb.n ], [ %i.ap, %bb.o ] ; 7 uses
  %i.ar = load i16, ptr %i.m, align 8
  %i.as = and i16 %i.ar, 16
  %i.at = icmp ne i16 %i.as, 0
  %i.au = icmp sgt i64 %.080, -1
  %or.cond = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond, label %bb.q, label %bb.aa

bb.q:                                             ; preds = %bb.p
  %i.av = load i32, ptr %i.n, align 8, !tbaa !218
  %i.aw = zext i32 %i.av to i64                   ; 4 uses
  %i.ax = icmp samesign ult i64 %.080, %i.aw
  %i.ay = icmp ult i64 %.084, %i.aw
  %or.cond93 = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %or.cond93, label %bb.r, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.az = sub nsw i64 %5, %.079108                ; 2 uses
  br i1 %i.j, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.ba = add nuw nsw i64 %.080, 1
  %..i = tail call noundef i64 @llvm.smin.i64(i64 %i.az, i64 %i.ba)
  %i.bb = add nuw nsw i64 %.084, 1
  %..i94 = tail call noundef i64 @llvm.smin.i64(i64 %..i, i64 %i.bb) ; 4 uses
  %i.bc = icmp sgt i64 %..i94, 0
  br i1 %i.bc, label %.lr.ph107, label %.loopexit

.lr.ph107:                                        ; preds = %bb.s, %set_value.exit
  %.081106 = phi i64 [ %i.bz, %set_value.exit ], [ 0, %bb.s ] ; 3 uses
  %i.bd = load ptr, ptr %i.o, align 8, !tbaa !218 ; 2 uses
  %i.be = sub nsw i64 %.084, %.081106
  %i.bf = getelementptr inbounds [16 x i8], ptr %i.bd, i64 %i.be ; 3 uses
  %i.bg = sub nsw i64 %.080, %.081106
  %i.bh = getelementptr inbounds [16 x i8], ptr %i.bd, i64 %i.bg ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load i64, ptr %i.bj, align 8            ; 2 uses
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = icmp ugt i32 %i.bl, -10
  br i1 %i.bm, label %bb.t, label %js_dup.exit

bb.t:                                             ; preds = %.lr.ph107
  %i.bn = inttoptr i64 %i.bi to ptr
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -4 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !191
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !191
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %.lr.ph107, %bb.t
  %.sroa.0.0.copyload.i = load i64, ptr %i.bf, align 8, !tbaa !218 ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !240 ; 2 uses
  store i64 %i.bi, ptr %i.bf, align 8, !tbaa !218
  store i64 %i.bk, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !240
  %i.br = load ptr, ptr %i.p, align 8, !tbaa !232
  %i.bs = trunc i64 %.sroa.4.0.copyload.i to i32
  %i.bt = icmp ugt i32 %i.bs, -10
  br i1 %i.bt, label %bb.u, label %set_value.exit

bb.u:                                             ; preds = %js_dup.exit
  %i.bu = inttoptr i64 %.sroa.0.0.copyload.i to ptr
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -4 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !191 ; 2 uses
  %i.bx = add nsw i32 %i.bw, -1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !191
  %i.by = icmp slt i32 %i.bw, 2
  br i1 %i.by, label %bb.v, label %set_value.exit

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @js_free_value_rt(ptr noundef %i.br, i64 %.sroa.0.0.copyload.i, i64 %.sroa.4.0.copyload.i), !inline_history !387
  br label %set_value.exit

set_value.exit:                                   ; preds = %js_dup.exit, %bb.u, %bb.v
  %i.bz = add nuw nsw i64 %.081106, 1             ; 2 uses
  %exitcond128.not = icmp eq i64 %i.bz, %..i94
  br i1 %exitcond128.not, label %.loopexit, label %.lr.ph107, !llvm.loop !1918

bb.w:                                             ; preds = %bb.r
  %i.ca = sub nuw nsw i64 %i.aw, %.080
  %..i95 = tail call noundef i64 @llvm.smin.i64(i64 %i.az, i64 %i.ca)
  %i.cb = sub nuw nsw i64 %i.aw, %.084
  %..i96 = tail call noundef i64 @llvm.smin.i64(i64 %..i95, i64 %i.cb) ; 4 uses
  %i.cc = icmp sgt i64 %..i96, 0
  br i1 %i.cc, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.w, %set_value.exit103
  %.182105 = phi i64 [ %i.cz, %set_value.exit103 ], [ 0, %bb.w ] ; 3 uses
  %i.cd = load ptr, ptr %i.o, align 8, !tbaa !218 ; 2 uses
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %.084
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %.182105 ; 3 uses
  %i.cg = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %.080
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %.182105 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8            ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ck = load i64, ptr %i.cj, align 8            ; 2 uses
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = icmp ugt i32 %i.cl, -10
  br i1 %i.cm, label %bb.x, label %js_dup.exit99

bb.x:                                             ; preds = %.lr.ph
  %i.cn = inttoptr i64 %i.ci to ptr
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -4 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !191
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 4, !tbaa !191
  br label %js_dup.exit99

js_dup.exit99:                                    ; preds = %.lr.ph, %bb.x
  %.sroa.0.0.copyload.i100 = load i64, ptr %i.cf, align 8, !tbaa !218 ; 2 uses
  %.sroa.4.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  %.sroa.4.0.copyload.i102 = load i64, ptr %.sroa.4.0..sroa_idx.i101, align 8, !tbaa !240 ; 2 uses
  store i64 %i.ci, ptr %i.cf, align 8, !tbaa !218
  store i64 %i.ck, ptr %.sroa.4.0..sroa_idx.i101, align 8, !tbaa !240
  %i.cr = load ptr, ptr %i.p, align 8, !tbaa !232
  %i.cs = trunc i64 %.sroa.4.0.copyload.i102 to i32
  %i.ct = icmp ugt i32 %i.cs, -10
  br i1 %i.ct, label %bb.y, label %set_value.exit103

bb.y:                                             ; preds = %js_dup.exit99
  %i.cu = inttoptr i64 %.sroa.0.0.copyload.i100 to ptr
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -4 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !191 ; 2 uses
  %i.cx = add nsw i32 %i.cw, -1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !191
  %i.cy = icmp slt i32 %i.cw, 2
  br i1 %i.cy, label %bb.z, label %set_value.exit103

bb.z:                                             ; preds = %bb.y
  tail call fastcc void @js_free_value_rt(ptr noundef %i.cr, i64 %.sroa.0.0.copyload.i100, i64 %.sroa.4.0.copyload.i102), !inline_history !387
  br label %set_value.exit103

set_value.exit103:                                ; preds = %js_dup.exit99, %bb.y, %bb.z
  %i.cz = add nuw nsw i64 %.182105, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.cz, %..i96
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !1919

bb.aa:                                            ; preds = %bb.q, %bb.p
  %i.da = call fastcc i32 @JS_TryGetPropertyInt64(ptr noundef %0, i64 %1, i64 %2, i64 noundef %.080, ptr noundef nonnull %7) ; 2 uses
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %._crit_edge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not92 = icmp eq i32 %i.da, 0
  br i1 %.not92, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dc = load i64, ptr %7, align 8
  %i.dd = load i64, ptr %i.q, align 8
  %i.de = tail call i32 @JS_SetPropertyInt64(ptr noundef %0, i64 %1, i64 %2, i64 noundef %.084, i64 %i.dc, i64 %i.dd)
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %._crit_edge, label %.loopexit

bb.ad:                                            ; preds = %bb.ab
  %i.dg = tail call i32 @JS_DeletePropertyInt64(ptr noundef %0, i64 %1, i64 %2, i64 noundef %.084, i32 noundef 16384)
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %._crit_edge, label %.loopexit

.loopexit:                                        ; preds = %set_value.exit103, %set_value.exit, %bb.w, %bb.s, %bb.ac, %bb.ad
  %.083.pn = phi i64 [ %..i94, %bb.s ], [ 1, %bb.ac ], [ 1, %bb.ad ], [ %..i96, %bb.w ], [ %..i94, %set_value.exit ], [ %..i96, %set_value.exit103 ]
  %.1 = add nsw i64 %.083.pn, %.079108            ; 2 uses
  %i.di = icmp slt i64 %.1, %5
  br i1 %i.di, label %.lr.ph109.split, label %._crit_edge, !llvm.loop !1917

._crit_edge:                                      ; preds = %.loopexit, %bb.ad, %bb.ac, %bb.aa, %bb.m, %bb.l, %bb.k, %.lr.ph109.split.us.split, %bb.i, %bb.h, %bb.g, %.lr.ph109.split.us.split.us, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -1, %.lr.ph109.split.us.split ], [ -1, %.lr.ph109.split.us.split.us ], [ -1, %bb.g ], [ -1, %bb.h ], [ 0, %bb.i ], [ -1, %bb.k ], [ 0, %bb.m ], [ -1, %bb.l ], [ -1, %bb.ad ], [ -1, %bb.ac ], [ -1, %bb.aa ], [ 0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @JS_TryGetPropertyInt64(ptr noundef %0, i64 %1, i64 %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 5 uses
  %i.b = and i64 %2, 4294967295
  %i.c = icmp eq i64 %i.b, 4294967295
  %i.d = icmp ult i64 %3, 2147483648              ; 2 uses
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.c, !prof !324

bb.b:                                             ; preds = %bb.a
  %i.f = inttoptr i64 %1 to ptr
  %i.g = trunc nuw nsw i64 %3 to i32              ; 2 uses
  %i.h = tail call fastcc zeroext i1 @js_get_fast_array_element(ptr noundef %0, ptr noundef %i.f, i32 noundef %i.g, ptr noundef %4)
  br i1 %i.h, label %bb.k, label %JS_NewAtomInt64.exit.thread

bb.c:                                             ; preds = %bb.a
  br i1 %i.d, label %.JS_NewAtomInt64.exit.thread_crit_edge, label %bb.d

.JS_NewAtomInt64.exit.thread_crit_edge:           ; preds = %bb.c
  %.pre = trunc nuw nsw i64 %3 to i32
  br label %JS_NewAtomInt64.exit.thread

JS_NewAtomInt64.exit.thread:                      ; preds = %.JS_NewAtomInt64.exit.thread_crit_edge, %bb.b
  %.pre-phi = phi i32 [ %.pre, %.JS_NewAtomInt64.exit.thread_crit_edge ], [ %i.g, %bb.b ]
  %i.i = or disjoint i32 %.pre-phi, -2147483648
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.j = call i64 @i64toa(ptr noundef nonnull %i.a, i64 noundef %3) #49, !inline_history !67
  %i.k = trunc i64 %i.j to i32
  %i.l = call fastcc { i64, i64 } @js_new_string8_len(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.k), !inline_history !67 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 1
  %i.n = and i64 %i.m, 4294967295
  %i.o = icmp eq i64 %i.n, 6
  br i1 %i.o, label %JS_NewAtomInt64.exit.thread47, label %JS_NewAtomInt64.exit

JS_NewAtomInt64.exit.thread47:                    ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %bb.j

JS_NewAtomInt64.exit:                             ; preds = %bb.d
  %i.p = extractvalue { i64, i64 } %i.l, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !232
  %i.s = inttoptr i64 %i.p to ptr
  %i.t = call fastcc i32 @__JS_NewAtom(ptr noundef %i.r, ptr noundef %i.s, i32 noundef 1), !inline_history !67 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.j, label %bb.e, !prof !625

bb.e:                                             ; preds = %JS_NewAtomInt64.exit.thread, %JS_NewAtomInt64.exit
  %.1.i46 = phi i32 [ %i.i, %JS_NewAtomInt64.exit.thread ], [ %i.t, %JS_NewAtomInt64.exit ] ; 3 uses
  %i.u = call i32 @JS_HasProperty(ptr noundef %0, i64 %1, i64 %2, i32 noundef %.1.i46) ; 4 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef %.1.i46, i64 %1, i64 %2, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0        ; 3 uses
  %i.y = extractvalue { i64, i64 } %i.w, 1        ; 3 uses
  %.sroa.012.sroa.7.0.extract.shift = lshr i64 %i.x, 32 ; 2 uses
  %i.z = and i64 %i.y, 4294967295
end_hunk_0
