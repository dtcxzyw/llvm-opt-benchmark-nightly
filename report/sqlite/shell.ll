Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3_qrf_wcwidth:bb.a
  %i.g = load i32, ptr %i.f, align 4, !tbaa !49   ; 2 uses
  %i.h = icmp slt i32 %i.g, %0
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.i = icmp sgt i32 %i.g, %0
  br i1 %i.i, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %i.c, -1
  br label %bb.d

.thread:                                          ; preds = %bb.b
  %i.k = load i8, ptr %i.e, align 8, !tbaa !50
  br label %bb.h

bb.d:                                             ; preds = %bb.c, %.preheader
  %.222 = phi i32 [ %i.c, %.preheader ], [ %.02034, %bb.c ] ; 3 uses
  %.2 = phi i32 [ %.01935, %.preheader ], [ %i.j, %bb.c ] ; 3 uses
  %i.l = add nsw i32 %.2, -1
  %i.m = icmp slt i32 %.222, %i.l
  br i1 %i.m, label %.preheader, label %bb.e, !llvm.loop !0

bb.e:                                             ; preds = %bb.d
  %i.n = sext i32 %.2 to i64
  %i.o = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !49
  %i.r = icmp sgt i32 %i.q, %0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = sext i32 %.222 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.s
  %i.u = load i8, ptr %i.t, align 8, !tbaa !50
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.o, align 8, !tbaa !50
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.a, %bb.g, %bb.f
  %.225.shrunk = phi i8 [ %i.v, %bb.g ], [ %i.k, %.thread ], [ %i.u, %bb.f ], [ 1, %bb.a ]
  %.225 = zext i8 %.225.shrunk to i32
  ret i32 %.225
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 1, 5) i32 @sqlite3_qrf_decode_utf8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !52
  %i.b = zext i8 %i.a to i32                      ; 6 uses
  %i.c = and i32 %i.b, 224
  %i.d = icmp eq i32 %i.c, 192
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !52
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = and i32 %i.g, 192
  %i.i = icmp eq i32 %i.h, 128
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = shl nuw nsw i32 %i.b, 6
  %i.k = and i32 %i.j, 1984
  %i.l = and i32 %i.g, 63
  %i.m = or disjoint i32 %i.l, %i.k
  br label %bb.m

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.n = and i32 %i.b, 240
  %i.o = icmp eq i32 %i.n, 224
  br i1 %i.o, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !52
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %i.s = and i32 %i.r, 192
  %i.t = icmp eq i32 %i.s, 128
  br i1 %i.t, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !52
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = and i32 %i.w, 192
  %i.y = icmp eq i32 %i.x, 128
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.z = shl nuw nsw i32 %i.b, 12
  %i.aa = and i32 %i.z, 61440
  %i.ab = shl nuw nsw i32 %i.r, 6
  %i.ac = and i32 %i.ab, 4032
  %i.ad = or disjoint i32 %i.ac, %i.aa
  %i.ae = and i32 %i.w, 63
  %i.af = or disjoint i32 %i.ad, %i.ae
  br label %bb.m

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ag = and i32 %i.b, 248
  %i.ah = icmp eq i32 %i.ag, 240
  br i1 %i.ah, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !52
  %i.ak = zext i8 %i.aj to i32                    ; 2 uses
  %i.al = and i32 %i.ak, 192
  %i.am = icmp eq i32 %i.al, 128
  br i1 %i.am, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !52
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = and i32 %i.ap, 192
  %i.ar = icmp eq i32 %i.aq, 128
  br i1 %i.ar, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !52
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = and i32 %i.au, 192
  %i.aw = icmp eq i32 %i.av, 128
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = shl nuw nsw i32 %i.b, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.ak, 12
  %i.ba = and i32 %i.az, 258048
  %i.bb = or disjoint i32 %i.ba, %i.ay
  %i.bc = shl nuw nsw i32 %i.ap, 6
  %i.bd = and i32 %i.bc, 4032
  %i.be = or disjoint i32 %i.bb, %i.bd
  %i.bf = and i32 %i.au, 63
  %i.bg = or disjoint i32 %i.be, %i.bf
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.g, %bb.c
  %.sink = phi i32 [ %i.m, %bb.c ], [ %i.bg, %bb.l ], [ %i.af, %bb.g ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ]
  %.0 = phi i32 [ 2, %bb.c ], [ 4, %bb.l ], [ 3, %bb.g ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.i ], [ 1, %bb.h ]
  store i32 %.sink, ptr %1, align 4, !tbaa !53
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i64 @sqlite3_qrf_wcswidth(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !52      ; 2 uses
  %.not27 = icmp eq i8 %i.a, 0
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.y
  %i.b = phi i8 [ %i.da, %bb.y ], [ %i.a, %bb.a ] ; 4 uses
  %.029 = phi ptr [ %.2, %bb.y ], [ %0, %bb.a ]   ; 14 uses
  %.01528 = phi i64 [ %.116, %bb.y ], [ 0, %bb.a ] ; 4 uses
  %i.c = icmp ult i8 %i.b, 32
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i8 %i.b, 27
  br i1 %i.d, label %bb.c, label %qrfIsVt100.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.029, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !52
  %.not.i = icmp eq i8 %i.f, 91
  br i1 %.not.i, label %.preheader.i, label %qrfIsVt100.exit.thread

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 2, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.029, i64 %indvars.iv.i
  %i.h = load i8, ptr %i.g, align 1, !tbaa !52
  %i.i = and i8 %i.h, -16
  %or.cond.i = icmp eq i8 %i.i, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i, !llvm.loop !1

.critedge.i:                                      ; preds = %.preheader.i, %.critedge.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.critedge.i ], [ %indvars.iv.i, %.preheader.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.029, i64 %indvars.iv25.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !52    ; 2 uses
  %i.l = and i8 %i.k, -16
  %or.cond22.i = icmp eq i8 %i.l, 32
  %indvars.iv.next26.i = add nuw i64 %indvars.iv25.i, 1 ; 2 uses
  br i1 %or.cond22.i, label %.critedge.i, label %.critedge2.i, !llvm.loop !2

.critedge2.i:                                     ; preds = %.critedge.i
  %i.m = add i8 %i.k, -64
  %or.cond23.i = icmp ult i8 %i.m, 63
  br i1 %or.cond23.i, label %bb.d, label %qrfIsVt100.exit.thread

bb.d:                                             ; preds = %.critedge2.i
  %i.n = and i64 %indvars.iv.next26.i, 4294967295
  %i.o = getelementptr inbounds nuw i8, ptr %.029, i64 %i.n
  br label %bb.y

qrfIsVt100.exit.thread:                           ; preds = %.critedge2.i, %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.029, i64 1
  br label %bb.y

bb.e:                                             ; preds = %.lr.ph
  %i.q = icmp sgt i8 %i.b, -1
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = add i64 %.01528, 1
  %i.s = getelementptr inbounds nuw i8, ptr %.029, i64 1
  br label %bb.y

bb.g:                                             ; preds = %bb.e
  %i.t = zext i8 %i.b to i32                      ; 6 uses
  %i.u = and i32 %i.t, 224
  %i.v = icmp eq i32 %i.u, 192
  br i1 %i.v, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %.029, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !52
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = and i32 %i.y, 192
  %i.aa = icmp eq i32 %i.z, 128
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = shl nuw nsw i32 %i.t, 6
  %i.ac = and i32 %i.ab, 1984
  %i.ad = and i32 %i.y, 63
  %i.ae = or disjoint i32 %i.ad, %i.ac
  br label %sqlite3_qrf_decode_utf8.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.af = and i32 %i.t, 240
  %i.ag = icmp eq i32 %i.af, 224
  br i1 %i.ag, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %.029, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !52
  %i.aj = zext i8 %i.ai to i32                    ; 2 uses
  %i.ak = and i32 %i.aj, 192
  %i.al = icmp eq i32 %i.ak, 128
  br i1 %i.al, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %.029, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !52
  %i.ao = zext i8 %i.an to i32                    ; 2 uses
  %i.ap = and i32 %i.ao, 192
  %i.aq = icmp eq i32 %i.ap, 128
  br i1 %i.aq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ar = shl nuw nsw i32 %i.t, 12
  %i.as = and i32 %i.ar, 61440
  %i.at = shl nuw nsw i32 %i.aj, 6
  %i.au = and i32 %i.at, 4032
  %i.av = or disjoint i32 %i.au, %i.as
  %i.aw = and i32 %i.ao, 63
  %i.ax = or disjoint i32 %i.av, %i.aw
  br label %sqlite3_qrf_decode_utf8.exit

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ay = and i32 %i.t, 248
  %i.az = icmp eq i32 %i.ay, 240
  br i1 %i.az, label %bb.o, label %sqlite3_qrf_decode_utf8.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %.029, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !52
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = and i32 %i.bc, 192
  %i.be = icmp eq i32 %i.bd, 128
  br i1 %i.be, label %bb.p, label %sqlite3_qrf_decode_utf8.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %.029, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !52
  %i.bh = zext i8 %i.bg to i32                    ; 2 uses
  %i.bi = and i32 %i.bh, 192
  %i.bj = icmp eq i32 %i.bi, 128
  br i1 %i.bj, label %bb.q, label %sqlite3_qrf_decode_utf8.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.bk = getelementptr inbounds nuw i8, ptr %.029, i64 3
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !52
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %i.bn = and i32 %i.bm, 192
  %i.bo = icmp eq i32 %i.bn, 128
  br i1 %i.bo, label %bb.r, label %sqlite3_qrf_decode_utf8.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.bp = shl nuw nsw i32 %i.t, 18
  %i.bq = and i32 %i.bp, 1835008
  %i.br = shl nuw nsw i32 %i.bc, 12
  %i.bs = and i32 %i.br, 258048
  %i.bt = or disjoint i32 %i.bs, %i.bq
  %i.bu = shl nuw nsw i32 %i.bh, 6
  %i.bv = and i32 %i.bu, 4032
  %i.bw = or disjoint i32 %i.bt, %i.bv
  %i.bx = and i32 %i.bm, 63
  %i.by = or disjoint i32 %i.bw, %i.bx
  br label %sqlite3_qrf_decode_utf8.exit

sqlite3_qrf_decode_utf8.exit.thread:              ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %.029, i64 1
  br label %sqlite3_qrf_wcwidth.exit

sqlite3_qrf_decode_utf8.exit:                     ; preds = %bb.i, %bb.m, %bb.r
  %.sink.i = phi i32 [ %i.ae, %bb.i ], [ %i.by, %bb.r ], [ %i.ax, %bb.m ] ; 4 uses
  %.0.i = phi i64 [ 2, %bb.i ], [ 4, %bb.r ], [ 3, %bb.m ]
  %i.ca = getelementptr inbounds nuw i8, ptr %.029, i64 %.0.i ; 4 uses
  %i.cb = icmp samesign ult i32 %.sink.i, 768
  br i1 %i.cb, label %sqlite3_qrf_wcwidth.exit, label %.preheader.i21

.preheader.i21:                                   ; preds = %sqlite3_qrf_decode_utf8.exit, %bb.u
  %.01935.i = phi i32 [ %.2.i, %bb.u ], [ 302, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %.02034.i = phi i32 [ %.222.i, %bb.u ], [ 0, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %i.cc = add nsw i32 %.02034.i, %.01935.i
  %i.cd = sdiv i32 %i.cc, 2                       ; 3 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.ce ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !49 ; 2 uses
  %i.ci = icmp slt i32 %i.ch, %.sink.i
  br i1 %i.ci, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.preheader.i21
  %i.cj = icmp sgt i32 %i.ch, %.sink.i
  br i1 %i.cj, label %bb.t, label %.thread.i

bb.t:                                             ; preds = %bb.s
  %i.ck = add nsw i32 %i.cd, -1
  br label %bb.u

.thread.i:                                        ; preds = %bb.s
  %i.cl = load i8, ptr %i.cf, align 8, !tbaa !50
  br label %sqlite3_qrf_wcwidth.exit

bb.u:                                             ; preds = %bb.t, %.preheader.i21
  %.222.i = phi i32 [ %i.cd, %.preheader.i21 ], [ %.02034.i, %bb.t ] ; 3 uses
  %.2.i = phi i32 [ %.01935.i, %.preheader.i21 ], [ %i.ck, %bb.t ] ; 3 uses
  %i.cm = add nsw i32 %.2.i, -1
  %i.cn = icmp slt i32 %.222.i, %i.cm
  br i1 %i.cn, label %.preheader.i21, label %bb.v, !llvm.loop !0

bb.v:                                             ; preds = %bb.u
  %i.co = sext i32 %.2.i to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !49
  %i.cs = icmp sgt i32 %i.cr, %.sink.i
  br i1 %i.cs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ct = sext i32 %.222.i to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !50
  br label %sqlite3_qrf_wcwidth.exit

bb.x:                                             ; preds = %bb.v
  %i.cw = load i8, ptr %i.cp, align 8, !tbaa !50
  br label %sqlite3_qrf_wcwidth.exit

sqlite3_qrf_wcwidth.exit:                         ; preds = %sqlite3_qrf_decode_utf8.exit.thread, %sqlite3_qrf_decode_utf8.exit, %.thread.i, %bb.w, %bb.x
  %i.cx = phi ptr [ %i.ca, %bb.x ], [ %i.ca, %.thread.i ], [ %i.ca, %bb.w ], [ %i.ca, %sqlite3_qrf_decode_utf8.exit ], [ %i.bz, %sqlite3_qrf_decode_utf8.exit.thread ]
  %.225.shrunk.i = phi i8 [ %i.cw, %bb.x ], [ %i.cl, %.thread.i ], [ %i.cv, %bb.w ], [ 1, %sqlite3_qrf_decode_utf8.exit ], [ 1, %sqlite3_qrf_decode_utf8.exit.thread ]
  %i.cy = zext i8 %.225.shrunk.i to i64
  %i.cz = add i64 %.01528, %i.cy
  br label %bb.y

bb.y:                                             ; preds = %bb.d, %qrfIsVt100.exit.thread, %bb.f, %sqlite3_qrf_wcwidth.exit
  %.116 = phi i64 [ %i.cz, %sqlite3_qrf_wcwidth.exit ], [ %i.r, %bb.f ], [ %.01528, %qrfIsVt100.exit.thread ], [ %.01528, %bb.d ] ; 2 uses
  %.2 = phi ptr [ %i.cx, %sqlite3_qrf_wcwidth.exit ], [ %i.s, %bb.f ], [ %i.p, %qrfIsVt100.exit.thread ], [ %i.o, %bb.d ] ; 2 uses
  %i.da = load i8, ptr %.2, align 1, !tbaa !52    ; 2 uses
  %.not = icmp eq i8 %i.da, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.y, %bb.a
  %.015.lcssa = phi i64 [ 0, %bb.a ], [ %.116, %bb.y ]
  ret i64 %.015.lcssa
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_format_query_result(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %struct.qrfColData, align 8         ; 29 uses
end_hunk_0
begin_hunk_1_@qrfExplain:bb.a

.lr.ph207.preheader299:                           ; preds = %vector.scevcheck, %.lr.ph207.preheader, %middle.block
  %indvars.iv237.ph = phi i64 [ %i.cy, %vector.scevcheck ], [ %i.cy, %.lr.ph207.preheader ], [ %i.dm, %middle.block ]
  br label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph207.preheader299, %.lr.ph207
  %indvars.iv237 = phi i64 [ %indvars.iv.next238, %.lr.ph207 ], [ %indvars.iv237.ph, %.lr.ph207.preheader299 ] ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %.1146, i64 %indvars.iv237 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !53
  %i.dt = add nsw i32 %i.ds, 2
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !53
  %indvars.iv.next238 = add nsw i64 %indvars.iv237, 1 ; 2 uses
  %i.du = and i64 %indvars.iv.next238, 4294967295
  %exitcond.not = icmp eq i64 %i.du, %indvars.iv240
  br i1 %exitcond.not, label %qrfStringInArray.exit180.thread, label %.lr.ph207, !llvm.loop !742

qrfStringInArray.exit180.thread:                  ; preds = %.lr.ph207, %middle.block, %.lr.ph.i175, %qrfStringInArray.exit172.thread.thread191, %bb.f, %qrfStringInArray.exit180
  %indvars.iv.next241 = add nuw i64 %indvars.iv240, 1 ; 2 uses
  %i.dv = load ptr, ptr %0, align 8, !tbaa !68
  %i.dw = tail call i32 @sqlite3_step(ptr noundef %i.dv) #45
  %i.dx = icmp eq i32 %i.dw, 100
  br i1 %i.dx, label %bb.b, label %.critedge.loopexit, !llvm.loop !743

.critedge.loopexit:                               ; preds = %qrfStringInArray.exit180.thread, %bb.b
  %.0148.lcssa.ph = phi ptr [ %.0148208, %bb.b ], [ %.1149, %qrfStringInArray.exit180.thread ]
  %.0145.lcssa.ph = phi ptr [ %.0145209, %bb.b ], [ %.1146, %qrfStringInArray.exit180.thread ]
  %.0140.lcssa.ph = phi i64 [ %indvars.iv240, %bb.b ], [ %indvars.iv.next241, %qrfStringInArray.exit180.thread ]
  %sext = shl i64 %.0140.lcssa.ph, 32
  %i.dy = ashr exact i64 %sext, 32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.0148.lcssa = phi ptr [ null, %bb.a ], [ %.0148.lcssa.ph, %.critedge.loopexit ]
  %.0145.lcssa = phi ptr [ null, %bb.a ], [ %.0145.lcssa.ph, %.critedge.loopexit ] ; 7 uses
  %.0140.lcssa = phi i64 [ 0, %bb.a ], [ %i.dy, %.critedge.loopexit ]
  tail call void @sqlite3_free(ptr noundef %.0148.lcssa) #45
  %i.dz = load ptr, ptr %0, align 8, !tbaa !68
  %i.ea = tail call i32 @sqlite3_reset(ptr noundef %i.dz) #45 ; 0 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !70
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.g, label %qrfWrite.exit

bb.g:                                             ; preds = %.critedge
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !71 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !75
  %i.ei = icmp eq i8 %i.eh, 18
  br i1 %i.ei, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0134 = phi ptr [ @qrfExplain.aScanExpWidth, %bb.h ], [ @qrfExplain.aExplainWidth, %bb.g ] ; 3 uses
  %.0133 = phi ptr [ @qrfExplain.aScanExpMap, %bb.h ], [ @qrfExplain.aExplainMap, %bb.g ] ; 2 uses
  %.0132 = phi i32 [ 10, %bb.h ], [ 8, %bb.g ]
  %.0131 = phi i64 [ 3, %bb.h ], [ 1, %bb.g ]
  %i.ej = load ptr, ptr %0, align 8, !tbaa !68
  %i.ek = tail call i32 @sqlite3_step(ptr noundef %i.ej) #45
  %i.el = icmp eq i32 %i.ek, 100
  br i1 %i.el, label %.lr.ph227, label %.critedge7

.lr.ph227:                                        ; preds = %bb.i
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ef, i32 %.0132) ; 4 uses
  %i.em = icmp sgt i32 %i.ef, 0                   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.eo = add nsw i32 %spec.select, -1
  %i.ep = icmp ne ptr %.0145.lcssa, null
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.er = zext i32 %i.eo to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %spec.select to i64
  %wide.trip.count252 = zext nneg i32 %spec.select to i64
  %wide.trip.count258 = zext nneg i32 %spec.select to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph227, %._crit_edge
  %indvars.iv260 = phi i64 [ 0, %.lr.ph227 ], [ %indvars.iv.next261, %._crit_edge ] ; 4 uses
  %i.es = load i32, ptr %i.eb, align 8, !tbaa !70
  %.not157 = icmp eq i32 %i.es, 0
  br i1 %.not157, label %bb.k, label %.critedge7

bb.k:                                             ; preds = %bb.j
  %i.et = icmp eq i64 %indvars.iv260, 0
  br i1 %i.et, label %.preheader192, label %.loopexit

.preheader192:                                    ; preds = %bb.k
  br i1 %i.em, label %.lr.ph220, label %._crit_edge

.lr.ph220:                                        ; preds = %.preheader192, %bb.n
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %bb.n ], [ 0, %.preheader192 ] ; 4 uses
  %i.eu = load ptr, ptr %0, align 8, !tbaa !68
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.0133, i64 %indvars.iv243
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !53
  %i.ex = tail call ptr @sqlite3_column_name(ptr noundef %i.eu, i32 noundef %i.ew) #45
  %i.ey = load ptr, ptr %i.en, align 8, !tbaa !69
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.0134, i64 %indvars.iv243
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !53
  tail call fastcc void @qrfWidthPrint(ptr noundef %i.ey, i32 noundef %i.fa, ptr noundef %i.ex)
  %i.fb = icmp eq i64 %indvars.iv243, %i.er
  %i.fc = load ptr, ptr %i.en, align 8, !tbaa !69 ; 2 uses
  br i1 %i.fb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph220
  tail call void @sqlite3_str_append(ptr noundef %i.fc, ptr noundef nonnull @.str.125, i32 noundef 1) #45
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph220
  tail call void @sqlite3_str_append(ptr noundef %i.fc, ptr noundef nonnull @.str.230, i32 noundef 2) #45
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count
  br i1 %exitcond247.not, label %.lr.ph222, label %.lr.ph220, !llvm.loop !744

.lr.ph222:                                        ; preds = %bb.n, %bb.q
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %bb.q ], [ 0, %bb.n ] ; 3 uses
  %i.fd = load ptr, ptr %i.en, align 8, !tbaa !69
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %.0134, i64 %indvars.iv248
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !53
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.fd, ptr noundef nonnull @.str.231, i32 noundef %i.ff, i32 noundef 45) #45
  %i.fg = icmp eq i64 %indvars.iv248, %i.er
  %i.fh = load ptr, ptr %i.en, align 8, !tbaa !69 ; 2 uses
  br i1 %i.fg, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph222
  tail call void @sqlite3_str_append(ptr noundef %i.fh, ptr noundef nonnull @.str.125, i32 noundef 1) #45
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph222
  tail call void @sqlite3_str_append(ptr noundef %i.fh, ptr noundef nonnull @.str.230, i32 noundef 2) #45
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count252
  br i1 %exitcond253.not, label %.loopexit, label %.lr.ph222, !llvm.loop !745

.loopexit:                                        ; preds = %bb.q, %bb.k
  br i1 %i.em, label %.lr.ph224, label %._crit_edge

.lr.ph224:                                        ; preds = %.loopexit
  %i.fi = icmp slt i64 %indvars.iv260, %.0140.lcssa
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %.0145.lcssa, i64 %indvars.iv260
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph224, %bb.au
  %indvars.iv254 = phi i64 [ 0, %.lr.ph224 ], [ %indvars.iv.next255, %bb.au ] ; 5 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.0134, i64 %indvars.iv254
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !53
  %i.fm = load ptr, ptr %0, align 8, !tbaa !68
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %.0133, i64 %indvars.iv254
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !53
  %i.fp = tail call ptr @sqlite3_column_text(ptr noundef %i.fm, i32 noundef %i.fo) #45 ; 2 uses
  %i.fq = icmp eq i64 %indvars.iv254, %i.er       ; 2 uses
  %spec.select163 = select i1 %i.fq, i32 0, i32 %i.fl ; 2 uses
  %i.fr = icmp eq ptr %i.fp, null
  %spec.store.select = select i1 %i.fr, ptr @.str.48, ptr %i.fp ; 3 uses
  %i.fs = load i8, ptr %spec.store.select, align 1, !tbaa !52 ; 2 uses
  %.not27.i = icmp eq i8 %i.fs, 0
  br i1 %.not27.i, label %sqlite3_qrf_wcswidth.exit, label %.lr.ph.i181

.lr.ph.i181:                                      ; preds = %bb.r, %bb.ap
  %i.ft = phi i8 [ %i.js, %bb.ap ], [ %i.fs, %bb.r ] ; 4 uses
  %.029.i = phi ptr [ %.2.i, %bb.ap ], [ %spec.store.select, %bb.r ] ; 14 uses
  %.01528.i = phi i32 [ %.116.i, %bb.ap ], [ 0, %bb.r ] ; 4 uses
  %i.fu = icmp ult i8 %i.ft, 32
  br i1 %i.fu, label %bb.s, label %bb.v

bb.s:                                             ; preds = %.lr.ph.i181
  %i.fv = icmp eq i8 %i.ft, 27
  br i1 %i.fv, label %bb.t, label %qrfIsVt100.exit.thread.i

bb.t:                                             ; preds = %bb.s
  %i.fw = getelementptr inbounds nuw i8, ptr %.029.i, i64 1
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !52
  %.not.i.i = icmp eq i8 %i.fx, 91
  br i1 %.not.i.i, label %.preheader.i.i, label %qrfIsVt100.exit.thread.i

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.preheader.i.i ], [ 2, %bb.t ] ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.029.i, i64 %indvars.iv.i.i
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !52
  %i.ga = and i8 %i.fz, -16
  %or.cond.i.i = icmp eq i8 %i.ga, 48
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br i1 %or.cond.i.i, label %.preheader.i.i, label %.critedge.i.i, !llvm.loop !1

.critedge.i.i:                                    ; preds = %.preheader.i.i, %.critedge.i.i
  %indvars.iv25.i.i = phi i64 [ %indvars.iv.next26.i.i, %.critedge.i.i ], [ %indvars.iv.i.i, %.preheader.i.i ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.029.i, i64 %indvars.iv25.i.i
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !52  ; 2 uses
  %i.gd = and i8 %i.gc, -16
  %or.cond22.i.i = icmp eq i8 %i.gd, 32
  %indvars.iv.next26.i.i = add nuw i64 %indvars.iv25.i.i, 1 ; 2 uses
  br i1 %or.cond22.i.i, label %.critedge.i.i, label %.critedge2.i.i, !llvm.loop !2

.critedge2.i.i:                                   ; preds = %.critedge.i.i
  %i.ge = add i8 %i.gc, -64
  %or.cond23.i.i = icmp ult i8 %i.ge, 63
  br i1 %or.cond23.i.i, label %bb.u, label %qrfIsVt100.exit.thread.i

bb.u:                                             ; preds = %.critedge2.i.i
  %i.gf = and i64 %indvars.iv.next26.i.i, 4294967295
  %i.gg = getelementptr inbounds nuw i8, ptr %.029.i, i64 %i.gf
  br label %bb.ap

qrfIsVt100.exit.thread.i:                         ; preds = %.critedge2.i.i, %bb.t, %bb.s
  %i.gh = getelementptr inbounds nuw i8, ptr %.029.i, i64 1
  br label %bb.ap

bb.v:                                             ; preds = %.lr.ph.i181
  %i.gi = icmp sgt i8 %i.ft, -1
  br i1 %i.gi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gj = add i32 %.01528.i, 1
  %i.gk = getelementptr inbounds nuw i8, ptr %.029.i, i64 1
  br label %bb.ap

bb.x:                                             ; preds = %bb.v
  %i.gl = zext i8 %i.ft to i32                    ; 6 uses
  %i.gm = and i32 %i.gl, 224
  %i.gn = icmp eq i32 %i.gm, 192
  br i1 %i.gn, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.go = getelementptr inbounds nuw i8, ptr %.029.i, i64 1
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !52
  %i.gq = zext i8 %i.gp to i32                    ; 2 uses
  %i.gr = and i32 %i.gq, 192
  %i.gs = icmp eq i32 %i.gr, 128
  br i1 %i.gs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gt = shl nuw nsw i32 %i.gl, 6
  %i.gu = and i32 %i.gt, 1984
  %i.gv = and i32 %i.gq, 63
  %i.gw = or disjoint i32 %i.gv, %i.gu
  br label %sqlite3_qrf_decode_utf8.exit.i

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.gx = and i32 %i.gl, 240
  %i.gy = icmp eq i32 %i.gx, 224
  br i1 %i.gy, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.gz = getelementptr inbounds nuw i8, ptr %.029.i, i64 1
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !52
  %i.hb = zext i8 %i.ha to i32                    ; 2 uses
  %i.hc = and i32 %i.hb, 192
  %i.hd = icmp eq i32 %i.hc, 128
  br i1 %i.hd, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.he = getelementptr inbounds nuw i8, ptr %.029.i, i64 2
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !52
  %i.hg = zext i8 %i.hf to i32                    ; 2 uses
  %i.hh = and i32 %i.hg, 192
  %i.hi = icmp eq i32 %i.hh, 128
  br i1 %i.hi, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hj = shl nuw nsw i32 %i.gl, 12
  %i.hk = and i32 %i.hj, 61440
  %i.hl = shl nuw nsw i32 %i.hb, 6
  %i.hm = and i32 %i.hl, 4032
  %i.hn = or disjoint i32 %i.hm, %i.hk
  %i.ho = and i32 %i.hg, 63
  %i.hp = or disjoint i32 %i.hn, %i.ho
  br label %sqlite3_qrf_decode_utf8.exit.i

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.hq = and i32 %i.gl, 248
  %i.hr = icmp eq i32 %i.hq, 240
  br i1 %i.hr, label %bb.af, label %sqlite3_qrf_decode_utf8.exit.thread.i

bb.af:                                            ; preds = %bb.ae
  %i.hs = getelementptr inbounds nuw i8, ptr %.029.i, i64 1
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !52
  %i.hu = zext i8 %i.ht to i32                    ; 2 uses
  %i.hv = and i32 %i.hu, 192
  %i.hw = icmp eq i32 %i.hv, 128
  br i1 %i.hw, label %bb.ag, label %sqlite3_qrf_decode_utf8.exit.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.hx = getelementptr inbounds nuw i8, ptr %.029.i, i64 2
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !52
  %i.hz = zext i8 %i.hy to i32                    ; 2 uses
  %i.ia = and i32 %i.hz, 192
  %i.ib = icmp eq i32 %i.ia, 128
  br i1 %i.ib, label %bb.ah, label %sqlite3_qrf_decode_utf8.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  %i.ic = getelementptr inbounds nuw i8, ptr %.029.i, i64 3
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !52
  %i.ie = zext i8 %i.id to i32                    ; 2 uses
  %i.if = and i32 %i.ie, 192
  %i.ig = icmp eq i32 %i.if, 128
  br i1 %i.ig, label %bb.ai, label %sqlite3_qrf_decode_utf8.exit.thread.i

bb.ai:                                            ; preds = %bb.ah
  %i.ih = shl nuw nsw i32 %i.gl, 18
  %i.ii = and i32 %i.ih, 1835008
  %i.ij = shl nuw nsw i32 %i.hu, 12
  %i.ik = and i32 %i.ij, 258048
  %i.il = or disjoint i32 %i.ik, %i.ii
  %i.im = shl nuw nsw i32 %i.hz, 6
  %i.in = and i32 %i.im, 4032
  %i.io = or disjoint i32 %i.il, %i.in
  %i.ip = and i32 %i.ie, 63
  %i.iq = or disjoint i32 %i.io, %i.ip
  br label %sqlite3_qrf_decode_utf8.exit.i

sqlite3_qrf_decode_utf8.exit.thread.i:            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.ir = getelementptr inbounds nuw i8, ptr %.029.i, i64 1
  br label %sqlite3_qrf_wcwidth.exit.i

sqlite3_qrf_decode_utf8.exit.i:                   ; preds = %bb.ai, %bb.ad, %bb.z
  %.sink.i.i = phi i32 [ %i.gw, %bb.z ], [ %i.iq, %bb.ai ], [ %i.hp, %bb.ad ] ; 4 uses
  %.0.i.i = phi i64 [ 2, %bb.z ], [ 4, %bb.ai ], [ 3, %bb.ad ]
  %i.is = getelementptr inbounds nuw i8, ptr %.029.i, i64 %.0.i.i ; 4 uses
  %i.it = icmp samesign ult i32 %.sink.i.i, 768
  br i1 %i.it, label %sqlite3_qrf_wcwidth.exit.i, label %.preheader.i21.i

.preheader.i21.i:                                 ; preds = %sqlite3_qrf_decode_utf8.exit.i, %bb.al
  %.01935.i.i = phi i32 [ %.2.i.i, %bb.al ], [ 302, %sqlite3_qrf_decode_utf8.exit.i ] ; 2 uses
  %.02034.i.i = phi i32 [ %.222.i.i, %bb.al ], [ 0, %sqlite3_qrf_decode_utf8.exit.i ] ; 2 uses
  %i.iu = add nsw i32 %.02034.i.i, %.01935.i.i
  %i.iv = sdiv i32 %i.iu, 2                       ; 3 uses
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.iw ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !49 ; 2 uses
  %i.ja = icmp slt i32 %i.iz, %.sink.i.i
  br i1 %i.ja, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %.preheader.i21.i
  %i.jb = icmp sgt i32 %i.iz, %.sink.i.i
  br i1 %i.jb, label %bb.ak, label %.thread.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.jc = add nsw i32 %i.iv, -1
  br label %bb.al

.thread.i.i:                                      ; preds = %bb.aj
  %i.jd = load i8, ptr %i.ix, align 8, !tbaa !50
  br label %sqlite3_qrf_wcwidth.exit.i

bb.al:                                            ; preds = %bb.ak, %.preheader.i21.i
  %.222.i.i = phi i32 [ %i.iv, %.preheader.i21.i ], [ %.02034.i.i, %bb.ak ] ; 3 uses
  %.2.i.i = phi i32 [ %.01935.i.i, %.preheader.i21.i ], [ %i.jc, %bb.ak ] ; 3 uses
  %i.je = add nsw i32 %.2.i.i, -1
  %i.jf = icmp slt i32 %.222.i.i, %i.je
  br i1 %i.jf, label %.preheader.i21.i, label %bb.am, !llvm.loop !0

bb.am:                                            ; preds = %bb.al
  %i.jg = sext i32 %.2.i.i to i64
  %i.jh = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.jg ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 4
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !49
  %i.jk = icmp sgt i32 %i.jj, %.sink.i.i
  br i1 %i.jk, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.jl = sext i32 %.222.i.i to i64
  %i.jm = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 8, !tbaa !50
  br label %sqlite3_qrf_wcwidth.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.jo = load i8, ptr %i.jh, align 8, !tbaa !50
  br label %sqlite3_qrf_wcwidth.exit.i

sqlite3_qrf_wcwidth.exit.i:                       ; preds = %bb.ao, %bb.an, %.thread.i.i, %sqlite3_qrf_decode_utf8.exit.i, %sqlite3_qrf_decode_utf8.exit.thread.i
  %i.jp = phi ptr [ %i.is, %bb.ao ], [ %i.is, %.thread.i.i ], [ %i.is, %bb.an ], [ %i.is, %sqlite3_qrf_decode_utf8.exit.i ], [ %i.ir, %sqlite3_qrf_decode_utf8.exit.thread.i ]
  %.225.shrunk.i.i = phi i8 [ %i.jo, %bb.ao ], [ %i.jd, %.thread.i.i ], [ %i.jn, %bb.an ], [ 1, %sqlite3_qrf_decode_utf8.exit.i ], [ 1, %sqlite3_qrf_decode_utf8.exit.thread.i ]
  %i.jq = zext i8 %.225.shrunk.i.i to i32
  %i.jr = add i32 %.01528.i, %i.jq
  br label %bb.ap

bb.ap:                                            ; preds = %sqlite3_qrf_wcwidth.exit.i, %bb.w, %qrfIsVt100.exit.thread.i, %bb.u
  %.116.i = phi i32 [ %i.jr, %sqlite3_qrf_wcwidth.exit.i ], [ %i.gj, %bb.w ], [ %.01528.i, %qrfIsVt100.exit.thread.i ], [ %.01528.i, %bb.u ] ; 2 uses
  %.2.i = phi ptr [ %i.jp, %sqlite3_qrf_wcwidth.exit.i ], [ %i.gk, %bb.w ], [ %i.gh, %qrfIsVt100.exit.thread.i ], [ %i.gg, %bb.u ] ; 2 uses
  %i.js = load i8, ptr %.2.i, align 1, !tbaa !52  ; 2 uses
  %.not.i182 = icmp eq i8 %i.js, 0
  br i1 %.not.i182, label %sqlite3_qrf_wcswidth.exit, label %.lr.ph.i181, !llvm.loop !3

sqlite3_qrf_wcswidth.exit:                        ; preds = %bb.ap, %bb.r
  %.015.lcssa.i = phi i32 [ 0, %bb.r ], [ %.116.i, %bb.ap ] ; 2 uses
  %i.jt = icmp slt i32 %spec.select163, %.015.lcssa.i
  %.0129 = select i1 %i.jt, ptr @.str.177, ptr @.str.230
  %.1 = tail call i32 @llvm.smax.i32(i32 %spec.select163, i32 %.015.lcssa.i)
  %i.ju = icmp eq i64 %indvars.iv254, %.0131
  %or.cond9 = select i1 %i.ju, i1 %i.ep, i1 false
  %or.cond164 = select i1 %or.cond9, i1 %i.fi, i1 false
  br i1 %or.cond164, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %sqlite3_qrf_wcswidth.exit
  %i.jv = load ptr, ptr %i.en, align 8, !tbaa !69
  %i.jw = load i32, ptr %i.fj, align 4, !tbaa !53
end_hunk_1
begin_hunk_2_@qrfEncodeText:bb.a
._crit_edge.i:                                    ; preds = %bb.bf
  %i.dw = icmp eq i64 %.172.i, 0
  br i1 %i.dw, label %qrfEscape.exit, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge.i
  %i.dx = tail call i32 @sqlite3_str_length(ptr noundef %1) #45
  %i.dy = icmp eq i8 %i.df, 3                     ; 2 uses
  %i.dz = zext i1 %i.dy to i64
  %spec.select.i = shl nsw i64 %.172.i, %i.dz     ; 2 uses
  %i.ea = trunc i64 %spec.select.i to i32
  tail call void @sqlite3_str_appendchar(ptr noundef %1, i32 noundef %i.ea, i8 noundef signext 32) #45
  %i.eb = tail call ptr @sqlite3_str_value(ptr noundef %1) #45 ; 2 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %qrfEscape.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ed = sub nsw i32 %i.dx, %i.a
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds i8, ptr %i.eb, i64 %i.di ; 6 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 %spec.select.i ; 6 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.eg, ptr nonnull align 1 %i.ef, i64 %i.ee, i1 false)
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !52  ; 3 uses
  %.not8389.i = icmp eq i8 %i.eh, 0
  br i1 %.not8389.i, label %qrfEscape.exit, label %.lr.ph94.i

.lr.ph94.i:                                       ; preds = %bb.bh
  br i1 %i.dy, label %.lr.ph94.split.us.i, label %.lr.ph94.split.i

.lr.ph94.split.us.i:                              ; preds = %.lr.ph94.i, %bb.bn
  %i.ei = phi i8 [ %i.fc, %bb.bn ], [ %i.eh, %.lr.ph94.i ] ; 4 uses
  %i.ej = phi ptr [ %i.fb, %bb.bn ], [ %i.eg, %.lr.ph94.i ] ; 2 uses
  %.092.us.i = phi ptr [ %.1.us.i, %bb.bn ], [ %i.eg, %.lr.ph94.i ] ; 3 uses
  %.07391.us.i = phi i64 [ %.275.us.i, %bb.bn ], [ 0, %.lr.ph94.i ] ; 5 uses
  %.17790.us.i = phi i64 [ %i.fa, %bb.bn ], [ 0, %.lr.ph94.i ] ; 5 uses
  %i.ek = icmp ugt i8 %i.ei, 31
  %i.el = add i8 %i.ei, -9
  %i.em = icmp ult i8 %i.el, 2
  %or.cond11.us.i = or i1 %i.ek, %i.em
  br i1 %or.cond11.us.i, label %bb.bn, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph94.split.us.i
  %i.en = icmp eq i8 %i.ei, 13
  br i1 %i.en, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.eo = getelementptr i8, ptr %i.ej, i64 1
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !52
  %i.eq = icmp eq i8 %i.ep, 10
  br i1 %i.eq, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.er = icmp sgt i64 %.17790.us.i, 0
  br i1 %i.er, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.es = getelementptr inbounds i8, ptr %i.ef, i64 %.07391.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.es, ptr nonnull align 1 %.092.us.i, i64 %.17790.us.i, i1 false)
  %i.et = add nsw i64 %.17790.us.i, %.07391.us.i
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.174.us.i = phi i64 [ %i.et, %bb.bl ], [ %.07391.us.i, %bb.bk ] ; 2 uses
  %i.eu = getelementptr i8, ptr %i.ej, i64 1
  %i.ev = getelementptr inbounds i8, ptr %i.ef, i64 %.174.us.i ; 3 uses
  store i8 -30, ptr %i.ev, align 1, !tbaa !52
  %i.ew = getelementptr i8, ptr %i.ev, i64 1
  store i8 -112, ptr %i.ew, align 1, !tbaa !52
  %i.ex = or disjoint i8 %i.ei, -128
  %i.ey = add nsw i64 %.174.us.i, 3
  %i.ez = getelementptr i8, ptr %i.ev, i64 2
  store i8 %i.ex, ptr %i.ez, align 1, !tbaa !52
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bj, %.lr.ph94.split.us.i
  %.278.us.i = phi i64 [ %.17790.us.i, %.lr.ph94.split.us.i ], [ %.17790.us.i, %bb.bj ], [ -1, %bb.bm ]
  %.275.us.i = phi i64 [ %.07391.us.i, %.lr.ph94.split.us.i ], [ %.07391.us.i, %bb.bj ], [ %i.ey, %bb.bm ]
  %.1.us.i = phi ptr [ %.092.us.i, %.lr.ph94.split.us.i ], [ %.092.us.i, %bb.bj ], [ %i.eu, %bb.bm ] ; 2 uses
  %i.fa = add nsw i64 %.278.us.i, 1               ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %.1.us.i, i64 %i.fa ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !52  ; 2 uses
  %.not83.us.i = icmp eq i8 %i.fc, 0
  br i1 %.not83.us.i, label %qrfEscape.exit, label %.lr.ph94.split.us.i, !llvm.loop !1020

.lr.ph94.split.i:                                 ; preds = %.lr.ph94.i, %bb.bt
  %i.fd = phi i8 [ %i.fw, %bb.bt ], [ %i.eh, %.lr.ph94.i ] ; 4 uses
  %i.fe = phi ptr [ %i.fv, %bb.bt ], [ %i.eg, %.lr.ph94.i ] ; 2 uses
  %.092.i = phi ptr [ %.1.i131, %bb.bt ], [ %i.eg, %.lr.ph94.i ] ; 3 uses
  %.07391.i = phi i64 [ %.275.i, %bb.bt ], [ 0, %.lr.ph94.i ] ; 5 uses
  %.17790.i = phi i64 [ %i.fu, %bb.bt ], [ 0, %.lr.ph94.i ] ; 5 uses
  %i.ff = icmp ugt i8 %i.fd, 31
  %i.fg = add i8 %i.fd, -9
  %i.fh = icmp ult i8 %i.fg, 2
  %or.cond11.i = or i1 %i.ff, %i.fh
  br i1 %or.cond11.i, label %bb.bt, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph94.split.i
  %i.fi = icmp eq i8 %i.fd, 13
  br i1 %i.fi, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.fj = getelementptr i8, ptr %i.fe, i64 1
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !52
  %i.fl = icmp eq i8 %i.fk, 10
  br i1 %i.fl, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.fm = icmp sgt i64 %.17790.i, 0
  br i1 %i.fm, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.fn = getelementptr inbounds i8, ptr %i.ef, i64 %.07391.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.fn, ptr nonnull align 1 %.092.i, i64 %.17790.i, i1 false)
  %i.fo = add nsw i64 %.17790.i, %.07391.i
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.174.i = phi i64 [ %i.fo, %bb.br ], [ %.07391.i, %bb.bq ] ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fe, i64 1
  %i.fq = getelementptr inbounds i8, ptr %i.ef, i64 %.174.i ; 2 uses
  store i8 94, ptr %i.fq, align 1, !tbaa !52
  %i.fr = or disjoint i8 %i.fd, 64
  %i.fs = add nsw i64 %.174.i, 2
  %i.ft = getelementptr i8, ptr %i.fq, i64 1
  store i8 %i.fr, ptr %i.ft, align 1, !tbaa !52
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bp, %.lr.ph94.split.i
  %.278.i = phi i64 [ %.17790.i, %.lr.ph94.split.i ], [ %.17790.i, %bb.bp ], [ -1, %bb.bs ]
  %.275.i = phi i64 [ %.07391.i, %.lr.ph94.split.i ], [ %.07391.i, %bb.bp ], [ %i.fs, %bb.bs ]
  %.1.i131 = phi ptr [ %.092.i, %.lr.ph94.split.i ], [ %.092.i, %bb.bp ], [ %i.fp, %bb.bs ] ; 2 uses
  %i.fu = add nsw i64 %.278.i, 1                  ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %.1.i131, i64 %i.fu ; 2 uses
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !52  ; 2 uses
  %.not83.i = icmp eq i8 %i.fw, 0
  br i1 %.not83.i, label %qrfEscape.exit, label %.lr.ph94.split.i, !llvm.loop !1020

qrfEscape.exit:                                   ; preds = %bb.bt, %bb.bn, %bb.bh, %bb.bg, %._crit_edge.i, %bb.bb, %bb.ba, %.loopexit
  ret void
}

declare i32 @sqlite3_str_length(ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_str_finish(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @qrfTitleLimit(ptr nofree noundef captures(address) %0, i32 noundef range(i32 -32768, 32768) %1) unnamed_addr #27 {
bb.a:
  %i.a = add nsw i32 %1, -3                       ; 2 uses
  br label %.thread65.outer.outer

.thread65.outer.outer:                            ; preds = %.thread65.outer.outer.backedge, %bb.a
  %.052.ph.ph = phi ptr [ %0, %bb.a ], [ %.052.ph.ph.be, %.thread65.outer.outer.backedge ]
  %.048.ph.ph = phi i32 [ 0, %bb.a ], [ %.048.ph.ph.be, %.thread65.outer.outer.backedge ] ; 6 uses
  %.046.ph.ph = phi ptr [ null, %bb.a ], [ %.046.ph.ph.be, %.thread65.outer.outer.backedge ] ; 4 uses
  br label %.thread65.outer

.thread65.outer:                                  ; preds = %.thread65.outer.backedge, %.thread65.outer.outer
  %.052.ph = phi ptr [ %.052.ph.ph, %.thread65.outer.outer ], [ %.052.ph.be, %.thread65.outer.backedge ] ; 18 uses
  %.052.ph.promoted = load i8, ptr %.052.ph, align 1, !tbaa !52
  br label %.thread65

.thread65:                                        ; preds = %.thread65.backedge, %.thread65.outer
  %i.b = phi i8 [ 32, %.thread65.backedge ], [ %.052.ph.promoted, %.thread65.outer ] ; 4 uses
  %i.c = icmp ult i8 %i.b, 32
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.thread65
  switch i8 %i.b, label %.thread [
    i8 0, label %.thread73
    i8 27, label %bb.c
    i8 9, label %.thread65.backedge
    i8 10, label %.thread65.backedge
    i8 13, label %.thread65.backedge
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.052.ph, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !52
  %.not.i = icmp eq i8 %i.e, 91
  br i1 %.not.i, label %.preheader.i, label %.thread

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 2, %bb.c ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.052.ph, i64 %indvars.iv.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !52
  %i.h = and i8 %i.g, -16
  %or.cond.i = icmp eq i8 %i.h, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i, !llvm.loop !1

.critedge.i:                                      ; preds = %.preheader.i, %.critedge.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.critedge.i ], [ %indvars.iv.i, %.preheader.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.052.ph, i64 %indvars.iv25.i
  %i.j = load i8, ptr %i.i, align 1, !tbaa !52    ; 2 uses
  %i.k = and i8 %i.j, -16
  %or.cond22.i = icmp eq i8 %i.k, 32
  %indvars.iv.next26.i = add nuw i64 %indvars.iv25.i, 1 ; 2 uses
  br i1 %or.cond22.i, label %.critedge.i, label %.critedge2.i, !llvm.loop !2

.critedge2.i:                                     ; preds = %.critedge.i
  %i.l = add i8 %i.j, -64
  %or.cond23.i = icmp ult i8 %i.l, 63
  br i1 %or.cond23.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %.critedge2.i
  %i.m = and i64 %indvars.iv.next26.i, 4294967295
  %i.n = getelementptr inbounds nuw i8, ptr %.052.ph, i64 %i.m
  br label %.thread65.outer.backedge

.thread65.backedge:                               ; preds = %bb.b, %bb.b, %bb.b
  store i8 32, ptr %.052.ph, align 1, !tbaa !52
  br label %.thread65

.thread:                                          ; preds = %bb.b, %.critedge2.i, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.052.ph, i64 1
  br label %.thread65.outer.backedge

.thread65.outer.backedge:                         ; preds = %.thread, %bb.d
  %.052.ph.be = phi ptr [ %i.n, %bb.d ], [ %i.o, %.thread ]
  br label %.thread65.outer

bb.e:                                             ; preds = %.thread65
  %i.p = icmp sgt i8 %i.b, -1
  br i1 %i.p, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.q = icmp sge i32 %.048.ph.ph, %i.a
  %i.r = icmp eq ptr %.046.ph.ph, null
  %or.cond = select i1 %i.q, i1 %i.r, i1 false
  %spec.select = select i1 %or.cond, ptr %.052.ph, ptr %.046.ph.ph ; 2 uses
  %i.s = icmp eq i32 %.048.ph.ph, %1
  br i1 %i.s, label %bb.aa, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.052.ph, i64 1
  br label %.thread65.outer.outer.backedge

.thread65.outer.outer.backedge:                   ; preds = %bb.g, %.thread69
  %.052.ph.ph.be = phi ptr [ %i.cf, %.thread69 ], [ %i.t, %bb.g ]
  %.225.i.pn = phi i32 [ %.225.i, %.thread69 ], [ 1, %bb.g ]
  %.046.ph.ph.be = phi ptr [ %spec.select61, %.thread69 ], [ %spec.select, %bb.g ]
  %.048.ph.ph.be = add nuw nsw i32 %.048.ph.ph, %.225.i.pn
  br label %.thread65.outer.outer

bb.h:                                             ; preds = %bb.e
  %i.u = zext i8 %i.b to i32                      ; 6 uses
  %i.v = and i32 %i.u, 224
  %i.w = icmp eq i32 %i.v, 192
  br i1 %i.w, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.052.ph, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !52
  %i.z = zext i8 %i.y to i32                      ; 2 uses
  %i.aa = and i32 %i.z, 192
  %i.ab = icmp eq i32 %i.aa, 128
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = shl nuw nsw i32 %i.u, 6
  %i.ad = and i32 %i.ac, 1984
  %i.ae = and i32 %i.z, 63
  %i.af = or disjoint i32 %i.ae, %i.ad
  br label %sqlite3_qrf_decode_utf8.exit

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ag = and i32 %i.u, 240
  %i.ah = icmp eq i32 %i.ag, 224
  br i1 %i.ah, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %.052.ph, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !52
  %i.ak = zext i8 %i.aj to i32                    ; 2 uses
  %i.al = and i32 %i.ak, 192
  %i.am = icmp eq i32 %i.al, 128
  br i1 %i.am, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.052.ph, i64 2
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !52
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = and i32 %i.ap, 192
  %i.ar = icmp eq i32 %i.aq, 128
  br i1 %i.ar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = shl nuw nsw i32 %i.u, 12
  %i.at = and i32 %i.as, 61440
  %i.au = shl nuw nsw i32 %i.ak, 6
  %i.av = and i32 %i.au, 4032
  %i.aw = or disjoint i32 %i.av, %i.at
  %i.ax = and i32 %i.ap, 63
  %i.ay = or disjoint i32 %i.aw, %i.ax
  br label %sqlite3_qrf_decode_utf8.exit

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.az = and i32 %i.u, 248
  %i.ba = icmp eq i32 %i.az, 240
  br i1 %i.ba, label %bb.p, label %sqlite3_qrf_decode_utf8.exit

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %.052.ph, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !52
  %i.bd = zext i8 %i.bc to i32                    ; 2 uses
  %i.be = and i32 %i.bd, 192
  %i.bf = icmp eq i32 %i.be, 128
  br i1 %i.bf, label %bb.q, label %sqlite3_qrf_decode_utf8.exit

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %.052.ph, i64 2
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !52
  %i.bi = zext i8 %i.bh to i32                    ; 2 uses
  %i.bj = and i32 %i.bi, 192
  %i.bk = icmp eq i32 %i.bj, 128
  br i1 %i.bk, label %bb.r, label %sqlite3_qrf_decode_utf8.exit

bb.r:                                             ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %.052.ph, i64 3
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !52
  %i.bn = zext i8 %i.bm to i32                    ; 2 uses
  %i.bo = and i32 %i.bn, 192
  %i.bp = icmp eq i32 %i.bo, 128
  br i1 %i.bp, label %bb.s, label %sqlite3_qrf_decode_utf8.exit

bb.s:                                             ; preds = %bb.r
  %i.bq = shl nuw nsw i32 %i.u, 18
  %i.br = and i32 %i.bq, 1835008
  %i.bs = shl nuw nsw i32 %i.bd, 12
  %i.bt = and i32 %i.bs, 258048
  %i.bu = or disjoint i32 %i.bt, %i.br
  %i.bv = shl nuw nsw i32 %i.bi, 6
  %i.bw = and i32 %i.bv, 4032
  %i.bx = or disjoint i32 %i.bu, %i.bw
  %i.by = and i32 %i.bn, 63
  %i.bz = or disjoint i32 %i.bx, %i.by
  br label %sqlite3_qrf_decode_utf8.exit

sqlite3_qrf_decode_utf8.exit:                     ; preds = %bb.j, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.sink.i = phi i32 [ %i.af, %bb.j ], [ %i.bz, %bb.s ], [ %i.ay, %bb.n ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ] ; 4 uses
  %.0.i = phi i32 [ 2, %bb.j ], [ 4, %bb.s ], [ 3, %bb.n ], [ 1, %bb.r ], [ 1, %bb.q ], [ 1, %bb.p ], [ 1, %bb.o ] ; 2 uses
  %i.ca = add nuw nsw i32 %.0.i, %.048.ph.ph      ; 2 uses
  %i.cb = icmp sgt i32 %i.ca, %i.a
  %i.cc = icmp eq ptr %.046.ph.ph, null
  %or.cond3 = select i1 %i.cb, i1 %i.cc, i1 false
  %spec.select61 = select i1 %or.cond3, ptr %.052.ph, ptr %.046.ph.ph ; 2 uses
  %i.cd = icmp sgt i32 %i.ca, %1
  br i1 %i.cd, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %sqlite3_qrf_decode_utf8.exit
  %i.ce = zext nneg i32 %.0.i to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %.052.ph, i64 %i.ce
  %i.cg = icmp samesign ult i32 %.sink.i, 768
  br i1 %i.cg, label %.thread69, label %.preheader.i62

.preheader.i62:                                   ; preds = %bb.t, %bb.w
  %.01935.i = phi i32 [ %.2.i, %bb.w ], [ 302, %bb.t ] ; 2 uses
  %.02034.i = phi i32 [ %.222.i, %bb.w ], [ 0, %bb.t ] ; 2 uses
  %i.ch = add nsw i32 %.02034.i, %.01935.i
  %i.ci = sdiv i32 %i.ch, 2                       ; 3 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !49 ; 2 uses
  %i.cn = icmp slt i32 %i.cm, %.sink.i
  br i1 %i.cn, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.preheader.i62
  %i.co = icmp sgt i32 %i.cm, %.sink.i
  br i1 %i.co, label %bb.v, label %.thread.i

bb.v:                                             ; preds = %bb.u
  %i.cp = add nsw i32 %i.ci, -1
  br label %bb.w

.thread.i:                                        ; preds = %bb.u
  %i.cq = load i8, ptr %i.ck, align 8, !tbaa !50
  br label %.thread69

bb.w:                                             ; preds = %bb.v, %.preheader.i62
  %.222.i = phi i32 [ %i.ci, %.preheader.i62 ], [ %.02034.i, %bb.v ] ; 3 uses
  %.2.i = phi i32 [ %.01935.i, %.preheader.i62 ], [ %i.cp, %bb.v ] ; 3 uses
  %i.cr = add nsw i32 %.2.i, -1
  %i.cs = icmp slt i32 %.222.i, %i.cr
  br i1 %i.cs, label %.preheader.i62, label %bb.x, !llvm.loop !0

bb.x:                                             ; preds = %bb.w
  %i.ct = sext i32 %.2.i to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !49
  %i.cx = icmp sgt i32 %i.cw, %.sink.i
  br i1 %i.cx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cy = sext i32 %.222.i to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !50
  br label %.thread69

bb.z:                                             ; preds = %bb.x
  %i.db = load i8, ptr %i.cu, align 8, !tbaa !50
  br label %.thread69

.thread69:                                        ; preds = %bb.z, %bb.y, %.thread.i, %bb.t
  %.225.shrunk.i = phi i8 [ %i.db, %bb.z ], [ %i.cq, %.thread.i ], [ %i.da, %bb.y ], [ 1, %bb.t ]
  %.225.i = zext i8 %.225.shrunk.i to i32
  br label %.thread65.outer.outer.backedge

bb.aa:                                            ; preds = %sqlite3_qrf_decode_utf8.exit, %bb.f
  %.048.lcssa = phi i32 [ %.048.ph.ph, %sqlite3_qrf_decode_utf8.exit ], [ %1, %bb.f ] ; 2 uses
  %.5 = phi ptr [ %spec.select61, %sqlite3_qrf_decode_utf8.exit ], [ %spec.select, %bb.f ] ; 2 uses
  store i8 0, ptr %.052.ph, align 1, !tbaa !52
  %i.dc = icmp ne ptr %.5, null
  %i.dd = icmp sgt i32 %1, 2
  %or.cond5 = and i1 %i.dd, %i.dc
  br i1 %or.cond5, label %bb.ab, label %.thread73

bb.ab:                                            ; preds = %bb.aa
  store i32 3026478, ptr %.5, align 1
  br label %.thread73

.thread73:                                        ; preds = %bb.b, %bb.ab, %bb.aa
  %.04887 = phi i32 [ %.048.lcssa, %bb.aa ], [ %.048.lcssa, %bb.ab ], [ %.048.ph.ph, %bb.b ]
  ret i32 %.04887
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, -2147483648) i32 @qrfDisplayWidth(ptr nofree noundef readonly captures(address) %0, i64 noundef range(i64 -2147483648, 2147483648) %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #28 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %spec.store.select = select i1 %i.a, ptr @.str.48, ptr %0 ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %spec.store.select, i64 %1
  %i.c = icmp sgt i64 %1, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.aa
  %.060 = phi ptr [ %.2, %bb.aa ], [ %spec.store.select, %bb.a ] ; 15 uses
  %.03359 = phi i32 [ %.3, %bb.aa ], [ 0, %bb.a ] ; 8 uses
  %.03658 = phi i32 [ %.339, %bb.aa ], [ 0, %bb.a ] ; 8 uses
  %.04057 = phi i32 [ %.444, %bb.aa ], [ 0, %bb.a ] ; 8 uses
  %i.d = load i8, ptr %.060, align 1, !tbaa !52   ; 4 uses
  %i.e = icmp ult i8 %i.d, 32
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph
  switch i8 %i.d, label %.thread [
    i8 27, label %bb.c
    i8 9, label %bb.e
    i8 10, label %bb.f
    i8 13, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.060, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !52
  %.not.i = icmp eq i8 %i.g, 91
  br i1 %.not.i, label %.preheader.i, label %.thread

.preheader.i:                                     ; preds = %bb.c, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 2, %bb.c ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.060, i64 %indvars.iv.i
  %i.i = load i8, ptr %i.h, align 1, !tbaa !52
  %i.j = and i8 %i.i, -16
  %or.cond.i = icmp eq i8 %i.j, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i, !llvm.loop !1

.critedge.i:                                      ; preds = %.preheader.i, %.critedge.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.critedge.i ], [ %indvars.iv.i, %.preheader.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.060, i64 %indvars.iv25.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !52    ; 2 uses
  %i.m = and i8 %i.l, -16
  %or.cond22.i = icmp eq i8 %i.m, 32
  %indvars.iv.next26.i = add nuw i64 %indvars.iv25.i, 1 ; 2 uses
  br i1 %or.cond22.i, label %.critedge.i, label %.critedge2.i, !llvm.loop !2

.critedge2.i:                                     ; preds = %.critedge.i
  %i.n = add i8 %i.l, -64
  %or.cond23.i = icmp ult i8 %i.n, 63
  br i1 %or.cond23.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %.critedge2.i
  %i.o = and i64 %indvars.iv.next26.i, 4294967295
  %i.p = getelementptr inbounds nuw i8, ptr %.060, i64 %i.o
  br label %bb.aa

bb.e:                                             ; preds = %bb.b
  %i.q = and i32 %.03658, -8
  %i.r = add nsw i32 %i.q, 8
  br label %.thread

bb.f:                                             ; preds = %bb.b, %bb.b
  %i.s = add nsw i32 %.03359, 1
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.03658, i32 %.04057)
  br label %.thread

.thread:                                          ; preds = %bb.b, %.critedge2.i, %bb.c, %bb.f, %bb.e
  %.242 = phi i32 [ %.04057, %bb.e ], [ %spec.select, %bb.f ], [ %.04057, %bb.b ], [ %.04057, %.critedge2.i ], [ %.04057, %bb.c ]
  %.137 = phi i32 [ %i.r, %bb.e ], [ 0, %bb.f ], [ %.03658, %bb.b ], [ %.03658, %.critedge2.i ], [ %.03658, %bb.c ]
  %.134 = phi i32 [ %.03359, %bb.e ], [ %i.s, %bb.f ], [ %.03359, %bb.b ], [ %.03359, %.critedge2.i ], [ %.03359, %bb.c ]
  %i.t = getelementptr inbounds nuw i8, ptr %.060, i64 1
  br label %bb.aa

bb.g:                                             ; preds = %.lr.ph
  %i.u = icmp sgt i8 %i.d, -1
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.v = add nsw i32 %.03658, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.060, i64 1
  br label %bb.aa

bb.i:                                             ; preds = %bb.g
  %i.x = zext i8 %i.d to i32                      ; 6 uses
  %i.y = and i32 %i.x, 224
  %i.z = icmp eq i32 %i.y, 192
  br i1 %i.z, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.060, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !52
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = and i32 %i.ac, 192
  %i.ae = icmp eq i32 %i.ad, 128
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = shl nuw nsw i32 %i.x, 6
  %i.ag = and i32 %i.af, 1984
  %i.ah = and i32 %i.ac, 63
  %i.ai = or disjoint i32 %i.ah, %i.ag
  br label %sqlite3_qrf_decode_utf8.exit

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.aj = and i32 %i.x, 240
  %i.ak = icmp eq i32 %i.aj, 224
  br i1 %i.ak, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %.060, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !52
  %i.an = zext i8 %i.am to i32                    ; 2 uses
  %i.ao = and i32 %i.an, 192
  %i.ap = icmp eq i32 %i.ao, 128
  br i1 %i.ap, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %.060, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !52
  %i.as = zext i8 %i.ar to i32                    ; 2 uses
  %i.at = and i32 %i.as, 192
  %i.au = icmp eq i32 %i.at, 128
  br i1 %i.au, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.av = shl nuw nsw i32 %i.x, 12
  %i.aw = and i32 %i.av, 61440
  %i.ax = shl nuw nsw i32 %i.an, 6
  %i.ay = and i32 %i.ax, 4032
  %i.az = or disjoint i32 %i.ay, %i.aw
  %i.ba = and i32 %i.as, 63
  %i.bb = or disjoint i32 %i.az, %i.ba
  br label %sqlite3_qrf_decode_utf8.exit

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.bc = and i32 %i.x, 248
  %i.bd = icmp eq i32 %i.bc, 240
  br i1 %i.bd, label %bb.q, label %sqlite3_qrf_decode_utf8.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %.060, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !52
  %i.bg = zext i8 %i.bf to i32                    ; 2 uses
  %i.bh = and i32 %i.bg, 192
  %i.bi = icmp eq i32 %i.bh, 128
  br i1 %i.bi, label %bb.r, label %sqlite3_qrf_decode_utf8.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %.060, i64 2
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !52
  %i.bl = zext i8 %i.bk to i32                    ; 2 uses
  %i.bm = and i32 %i.bl, 192
  %i.bn = icmp eq i32 %i.bm, 128
  br i1 %i.bn, label %bb.s, label %sqlite3_qrf_decode_utf8.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %.060, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !52
  %i.bq = zext i8 %i.bp to i32                    ; 2 uses
  %i.br = and i32 %i.bq, 192
  %i.bs = icmp eq i32 %i.br, 128
  br i1 %i.bs, label %bb.t, label %sqlite3_qrf_decode_utf8.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.bt = shl nuw nsw i32 %i.x, 18
  %i.bu = and i32 %i.bt, 1835008
  %i.bv = shl nuw nsw i32 %i.bg, 12
  %i.bw = and i32 %i.bv, 258048
  %i.bx = or disjoint i32 %i.bw, %i.bu
  %i.by = shl nuw nsw i32 %i.bl, 6
  %i.bz = and i32 %i.by, 4032
  %i.ca = or disjoint i32 %i.bx, %i.bz
  %i.cb = and i32 %i.bq, 63
  %i.cc = or disjoint i32 %i.ca, %i.cb
  br label %sqlite3_qrf_decode_utf8.exit

sqlite3_qrf_decode_utf8.exit.thread:              ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %.060, i64 1
  br label %sqlite3_qrf_wcwidth.exit

sqlite3_qrf_decode_utf8.exit:                     ; preds = %bb.k, %bb.o, %bb.t
  %.sink.i = phi i32 [ %i.ai, %bb.k ], [ %i.cc, %bb.t ], [ %i.bb, %bb.o ] ; 4 uses
  %.0.i = phi i64 [ 2, %bb.k ], [ 4, %bb.t ], [ 3, %bb.o ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.060, i64 %.0.i ; 4 uses
  %i.cf = icmp samesign ult i32 %.sink.i, 768
  br i1 %i.cf, label %sqlite3_qrf_wcwidth.exit, label %.preheader.i51

.preheader.i51:                                   ; preds = %sqlite3_qrf_decode_utf8.exit, %bb.w
  %.01935.i = phi i32 [ %.2.i, %bb.w ], [ 302, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %.02034.i = phi i32 [ %.222.i, %bb.w ], [ 0, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %i.cg = add nsw i32 %.02034.i, %.01935.i
  %i.ch = sdiv i32 %i.cg, 2                       ; 3 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !49 ; 2 uses
  %i.cm = icmp slt i32 %i.cl, %.sink.i
  br i1 %i.cm, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.preheader.i51
  %i.cn = icmp sgt i32 %i.cl, %.sink.i
  br i1 %i.cn, label %bb.v, label %.thread.i

bb.v:                                             ; preds = %bb.u
  %i.co = add nsw i32 %i.ch, -1
  br label %bb.w

.thread.i:                                        ; preds = %bb.u
  %i.cp = load i8, ptr %i.cj, align 8, !tbaa !50
  br label %sqlite3_qrf_wcwidth.exit

bb.w:                                             ; preds = %bb.v, %.preheader.i51
  %.222.i = phi i32 [ %i.ch, %.preheader.i51 ], [ %.02034.i, %bb.v ] ; 3 uses
  %.2.i = phi i32 [ %.01935.i, %.preheader.i51 ], [ %i.co, %bb.v ] ; 3 uses
  %i.cq = add nsw i32 %.2.i, -1
  %i.cr = icmp slt i32 %.222.i, %i.cq
  br i1 %i.cr, label %.preheader.i51, label %bb.x, !llvm.loop !0

bb.x:                                             ; preds = %bb.w
  %i.cs = sext i32 %.2.i to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.cs ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !49
  %i.cw = icmp sgt i32 %i.cv, %.sink.i
  br i1 %i.cw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cx = sext i32 %.222.i to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !50
  br label %sqlite3_qrf_wcwidth.exit

bb.z:                                             ; preds = %bb.x
  %i.da = load i8, ptr %i.ct, align 8, !tbaa !50
  br label %sqlite3_qrf_wcwidth.exit

sqlite3_qrf_wcwidth.exit:                         ; preds = %sqlite3_qrf_decode_utf8.exit.thread, %sqlite3_qrf_decode_utf8.exit, %.thread.i, %bb.y, %bb.z
  %i.db = phi ptr [ %i.ce, %bb.z ], [ %i.ce, %.thread.i ], [ %i.ce, %bb.y ], [ %i.ce, %sqlite3_qrf_decode_utf8.exit ], [ %i.cd, %sqlite3_qrf_decode_utf8.exit.thread ]
  %.225.shrunk.i = phi i8 [ %i.da, %bb.z ], [ %i.cp, %.thread.i ], [ %i.cz, %bb.y ], [ 1, %sqlite3_qrf_decode_utf8.exit ], [ 1, %sqlite3_qrf_decode_utf8.exit.thread ]
  %.225.i = zext i8 %.225.shrunk.i to i32
  %i.dc = add nsw i32 %.03658, %.225.i
  br label %bb.aa

bb.aa:                                            ; preds = %bb.d, %.thread, %bb.h, %sqlite3_qrf_wcwidth.exit
  %.444 = phi i32 [ %.04057, %sqlite3_qrf_wcwidth.exit ], [ %.04057, %bb.h ], [ %.04057, %bb.d ], [ %.242, %.thread ] ; 2 uses
  %.339 = phi i32 [ %i.dc, %sqlite3_qrf_wcwidth.exit ], [ %i.v, %bb.h ], [ %.03658, %bb.d ], [ %.137, %.thread ] ; 2 uses
  %.3 = phi i32 [ %.03359, %sqlite3_qrf_wcwidth.exit ], [ %.03359, %bb.h ], [ %.03359, %bb.d ], [ %.134, %.thread ] ; 2 uses
  %.2 = phi ptr [ %i.db, %sqlite3_qrf_wcwidth.exit ], [ %i.w, %bb.h ], [ %i.p, %bb.d ], [ %i.t, %.thread ] ; 2 uses
  %i.dd = icmp ult ptr %.2, %i.b
  br i1 %i.dd, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !1021

._crit_edge.loopexit:                             ; preds = %bb.aa
  %i.de = tail call i32 @llvm.smax.i32(i32 %.444, i32 %.339)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.040.lcssa = phi i32 [ 0, %bb.a ], [ %i.de, %._crit_edge.loopexit ]
  %.033.lcssa = phi i32 [ 0, %bb.a ], [ %.3, %._crit_edge.loopexit ]
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  store i32 %.033.lcssa, ptr %2, align 4, !tbaa !53
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge
  ret i32 %.040.lcssa
end_hunk_2
begin_hunk_3_@qrfRenderValue:bb.a
  %i.fa = zext i8 %i.ey to i32                    ; 2 uses
  %i.fb = lshr i32 %i.fa, 4
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !52
  %i.ff = getelementptr i8, ptr %i.ez, i64 4
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !52
  %i.fg = and i32 %i.fa, 15
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !52
  %i.fk = getelementptr i8, ptr %i.ez, i64 5
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !52
  %i.fl = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv241
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !52
  %i.fo = getelementptr i8, ptr %i.et, i64 %indvars.iv239 ; 3 uses
  %i.fp = getelementptr i8, ptr %i.fo, i64 6
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.fp, align 1, !tbaa !52
  %i.fq = zext i8 %i.fn to i32                    ; 2 uses
  %i.fr = lshr i32 %i.fq, 4
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !52
  %i.fv = getelementptr i8, ptr %i.fo, i64 10
  store i8 %i.fu, ptr %i.fv, align 1, !tbaa !52
  %i.fw = and i32 %i.fq, 15
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !52
  %i.ga = getelementptr i8, ptr %i.fo, i64 11
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !52
  %indvars.iv.next242.1 = add nuw nsw i64 %indvars.iv241, 2 ; 2 uses
  %indvars.iv.next240.1 = add nsw i64 %indvars.iv239, 12 ; 2 uses
  %niter293.next.1 = add i64 %niter293, 2         ; 2 uses
  %niter293.ncmp.1 = icmp eq i64 %niter293.next.1, %unroll_iter292
  br i1 %niter293.ncmp.1, label %.loopexit.loopexit283.unr-lcssa, label %.lr.ph.split.us, !llvm.loop !1026

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv234 = phi i64 [ %indvars.iv.next235, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %i.ev, %.lr.ph ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv234
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !52  ; 3 uses
  %i.gd = getelementptr inbounds i8, ptr %i.et, i64 %indvars.iv ; 4 uses
  store i8 92, ptr %i.gd, align 1, !tbaa !52
  %i.ge = lshr i8 %i.gc, 6
  %i.gf = or disjoint i8 %i.ge, 48
  %i.gg = getelementptr i8, ptr %i.gd, i64 1
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !52
  %i.gh = lshr i8 %i.gc, 3
  %i.gi = and i8 %i.gh, 7
  %i.gj = or disjoint i8 %i.gi, 48
  %i.gk = getelementptr i8, ptr %i.gd, i64 2
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !52
  %i.gl = and i8 %i.gc, 7
  %i.gm = or disjoint i8 %i.gl, 48
  %i.gn = getelementptr i8, ptr %i.gd, i64 3
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !52
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 4
  %exitcond.not = icmp eq i64 %indvars.iv.next235, %wide.trip.count246
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split, !llvm.loop !1026

bb.ae:                                            ; preds = %.thread
  %i.go = call i32 @sqlite3_column_bytes(ptr noundef %i.cu, i32 noundef %2) #45
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %1, ptr noundef nonnull @.str.213, i32 noundef %i.go) #45
  br label %.loopexit

bb.af:                                            ; preds = %.thread
  %i.gp = call ptr @sqlite3_column_text(ptr noundef %i.cu, i32 noundef %2) #45
  call fastcc void @qrfEncodeText(ptr noundef %0, ptr noundef %1, ptr noundef %i.gp)
  br label %.loopexit

bb.ag:                                            ; preds = %.critedge
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !73
  tail call void @sqlite3_str_appendall(ptr noundef %1, ptr noundef %i.gr) #45
  br label %.loopexit

bb.ah:                                            ; preds = %.critedge
  %i.gs = load ptr, ptr %0, align 8, !tbaa !68
  %i.gt = tail call ptr @sqlite3_column_text(ptr noundef %i.gs, i32 noundef %2) #45
  tail call fastcc void @qrfEncodeText(ptr noundef %0, ptr noundef %1, ptr noundef %i.gt)
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph228
  %lcmp.mod296.not = icmp eq i64 %xtraiter294, 0
  br i1 %lcmp.mod296.not, label %.loopexit, label %.lr.ph228.epil.preheader

.lr.ph228.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph228.preheader
  %indvars.iv250.epil.init = phi i64 [ 0, %.lr.ph228.preheader ], [ %indvars.iv.next251.1, %.loopexit.loopexit.unr-lcssa ]
  %indvars.iv248.epil.init = phi i64 [ %i.dg, %.lr.ph228.preheader ], [ %indvars.iv.next249.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod297 = trunc i32 %i.cv to i1
  call void @llvm.assume(i1 %lcmp.mod297)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.cx, i64 %indvars.iv250.epil.init
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !52
  %i.gw = zext i8 %i.gv to i32                    ; 2 uses
  %i.gx = lshr i32 %i.gw, 4
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !52
  %i.hb = getelementptr inbounds i8, ptr %i.de, i64 %indvars.iv248.epil.init ; 2 uses
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !52
  %i.hc = and i32 %i.gw, 15
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !52
  %i.hg = getelementptr i8, ptr %i.hb, i64 1
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !52
  br label %.loopexit

.loopexit.loopexit283.unr-lcssa:                  ; preds = %.lr.ph.split.us
  %lcmp.mod290.not = icmp eq i64 %xtraiter288, 0
  br i1 %lcmp.mod290.not, label %.loopexit, label %.lr.ph.split.us.epil.preheader

.lr.ph.split.us.epil.preheader:                   ; preds = %.loopexit.loopexit283.unr-lcssa, %.lr.ph.split.us.preheader
  %indvars.iv241.epil.init = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next242.1, %.loopexit.loopexit283.unr-lcssa ]
  %indvars.iv239.epil.init = phi i64 [ %i.ev, %.lr.ph.split.us.preheader ], [ %indvars.iv.next240.1, %.loopexit.loopexit283.unr-lcssa ]
  %lcmp.mod291 = trunc i32 %i.ek to i1
  call void @llvm.assume(i1 %lcmp.mod291)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.em, i64 %indvars.iv241.epil.init
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !52
  %i.hj = getelementptr inbounds i8, ptr %i.et, i64 %indvars.iv239.epil.init ; 3 uses
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.hj, align 1, !tbaa !52
  %i.hk = zext i8 %i.hi to i32                    ; 2 uses
  %i.hl = lshr i32 %i.hk, 4
  %i.hm = zext nneg i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !52
  %i.hp = getelementptr i8, ptr %i.hj, i64 4
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !52
  %i.hq = and i32 %i.hk, 15
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr @hash_finish.zEncode, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !52
  %i.hu = getelementptr i8, ptr %i.hj, i64 5
  store i8 %i.ht, ptr %i.hu, align 1, !tbaa !52
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us.epil.preheader, %.loopexit.loopexit283.unr-lcssa, %.lr.ph228.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ad, %bb.z, %bb.t, %bb.s, %bb.ae, %bb.af, %bb.ah, %bb.ag, %bb.e, %bb.d, %.critedge
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !1029
  %i.hx = icmp sgt i32 %i.hw, 0
  br i1 %i.hx, label %bb.ai, label %.critedge200

bb.ai:                                            ; preds = %.loopexit
  %i.hy = call i32 @sqlite3_str_length(ptr noundef %1) #45
  %i.hz = sub nsw i32 %i.hy, %i.b
  %i.ia = load i32, ptr %i.hv, align 4, !tbaa !1029 ; 2 uses
  %i.ib = icmp sgt i32 %i.hz, %i.ia
  br i1 %i.ib, label %bb.aj, label %.critedge200

bb.aj:                                            ; preds = %bb.ai
  %i.ic = call ptr @sqlite3_str_value(ptr noundef %1) #45
  %i.id = sext i32 %i.b to i64
  %i.ie = getelementptr inbounds i8, ptr %i.ic, i64 %i.id
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.ia, i32 4) ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.thread213, %bb.aj
  %.0171 = phi i32 [ 0, %bb.aj ], [ %.4, %.thread213 ] ; 3 uses
  %.0 = phi i32 [ 0, %bb.aj ], [ %.1, %.thread213 ] ; 7 uses
  %i.if = sext i32 %.0171 to i64
  %i.ig = getelementptr inbounds i8, ptr %i.ie, i64 %i.if ; 10 uses
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !52  ; 4 uses
  %i.ii = icmp ult i8 %i.ih, 32
  br i1 %i.ii, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  switch i8 %i.ih, label %.thread213 [
    i8 27, label %bb.am
    i8 0, label %bb.bh
  ]

bb.am:                                            ; preds = %bb.al
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !52
  %.not.i203 = icmp eq i8 %i.ik, 91
  br i1 %.not.i203, label %.preheader.i, label %.thread212.a

.preheader.i:                                     ; preds = %bb.am, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 2, %bb.am ] ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv.i
  %i.im = load i8, ptr %i.il, align 1, !tbaa !52
  %i.in = and i8 %i.im, -16
  %or.cond.i = icmp eq i8 %i.in, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i204, !llvm.loop !1

.critedge.i204:                                   ; preds = %.preheader.i, %.critedge.i204
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.critedge.i204 ], [ %indvars.iv.i, %.preheader.i ] ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv25.i
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !52  ; 2 uses
  %i.iq = and i8 %i.ip, -16
  %or.cond22.i = icmp eq i8 %i.iq, 32
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  br i1 %or.cond22.i, label %.critedge.i204, label %.critedge2.i, !llvm.loop !2

.critedge2.i:                                     ; preds = %.critedge.i204
  %i.ir = trunc nuw nsw i64 %indvars.iv25.i to i32
  %i.is = add i8 %i.ip, -64
  %or.cond23.i = icmp ult i8 %i.is, 63
  %i.it = add nuw nsw i32 %i.ir, 1
  br i1 %or.cond23.i, label %.thread213, label %.thread212.a

.thread212.a:                                     ; preds = %bb.am, %.critedge2.i
  br label %.thread213

bb.an:                                            ; preds = %bb.ak
  %i.iu = icmp sgt i8 %i.ih, -1
  br i1 %i.iu, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.iv = add nsw i32 %.0, 1                      ; 2 uses
  %.not198 = icmp slt i32 %.0, %spec.store.select
  br i1 %.not198, label %.thread213, label %bb.bh

bb.ap:                                            ; preds = %bb.an
  %i.iw = zext i8 %i.ih to i32                    ; 6 uses
  %i.ix = and i32 %i.iw, 224
  %i.iy = icmp eq i32 %i.ix, 192
  br i1 %i.iy, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !52
  %i.jb = zext i8 %i.ja to i32                    ; 2 uses
  %i.jc = and i32 %i.jb, 192
  %i.jd = icmp eq i32 %i.jc, 128
  br i1 %i.jd, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.je = shl nuw nsw i32 %i.iw, 6
  %i.jf = and i32 %i.je, 1984
  %i.jg = and i32 %i.jb, 63
  %i.jh = or disjoint i32 %i.jg, %i.jf
  br label %sqlite3_qrf_decode_utf8.exit

bb.as:                                            ; preds = %bb.aq, %bb.ap
  %i.ji = and i32 %i.iw, 240
  %i.jj = icmp eq i32 %i.ji, 224
  br i1 %i.jj, label %bb.at, label %bb.aw

bb.at:                                            ; preds = %bb.as
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !52
  %i.jm = zext i8 %i.jl to i32                    ; 2 uses
  %i.jn = and i32 %i.jm, 192
  %i.jo = icmp eq i32 %i.jn, 128
  br i1 %i.jo, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ig, i64 2
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !52
  %i.jr = zext i8 %i.jq to i32                    ; 2 uses
  %i.js = and i32 %i.jr, 192
  %i.jt = icmp eq i32 %i.js, 128
  br i1 %i.jt, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ju = shl nuw nsw i32 %i.iw, 12
  %i.jv = and i32 %i.ju, 61440
  %i.jw = shl nuw nsw i32 %i.jm, 6
  %i.jx = and i32 %i.jw, 4032
  %i.jy = or disjoint i32 %i.jx, %i.jv
  %i.jz = and i32 %i.jr, 63
  %i.ka = or disjoint i32 %i.jy, %i.jz
  br label %sqlite3_qrf_decode_utf8.exit

bb.aw:                                            ; preds = %bb.au, %bb.at, %bb.as
  %i.kb = and i32 %i.iw, 248
  %i.kc = icmp eq i32 %i.kb, 240
  br i1 %i.kc, label %bb.ax, label %sqlite3_qrf_wcwidth.exit

bb.ax:                                            ; preds = %bb.aw
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !52
  %i.kf = zext i8 %i.ke to i32                    ; 2 uses
  %i.kg = and i32 %i.kf, 192
  %i.kh = icmp eq i32 %i.kg, 128
  br i1 %i.kh, label %bb.ay, label %sqlite3_qrf_wcwidth.exit

bb.ay:                                            ; preds = %bb.ax
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ig, i64 2
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !52
  %i.kk = zext i8 %i.kj to i32                    ; 2 uses
  %i.kl = and i32 %i.kk, 192
  %i.km = icmp eq i32 %i.kl, 128
  br i1 %i.km, label %bb.az, label %sqlite3_qrf_wcwidth.exit

bb.az:                                            ; preds = %bb.ay
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ig, i64 3
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !52
  %i.kp = zext i8 %i.ko to i32                    ; 2 uses
  %i.kq = and i32 %i.kp, 192
  %i.kr = icmp eq i32 %i.kq, 128
  br i1 %i.kr, label %bb.ba, label %sqlite3_qrf_wcwidth.exit

bb.ba:                                            ; preds = %bb.az
  %i.ks = shl nuw nsw i32 %i.iw, 18
  %i.kt = and i32 %i.ks, 1835008
  %i.ku = shl nuw nsw i32 %i.kf, 12
  %i.kv = and i32 %i.ku, 258048
  %i.kw = or disjoint i32 %i.kv, %i.kt
  %i.kx = shl nuw nsw i32 %i.kk, 6
  %i.ky = and i32 %i.kx, 4032
  %i.kz = or disjoint i32 %i.kw, %i.ky
  %i.la = and i32 %i.kp, 63
  %i.lb = or disjoint i32 %i.kz, %i.la
  br label %sqlite3_qrf_decode_utf8.exit

sqlite3_qrf_decode_utf8.exit:                     ; preds = %bb.ar, %bb.av, %bb.ba
  %.sink.i205 = phi i32 [ %i.jh, %bb.ar ], [ %i.lb, %bb.ba ], [ %i.ka, %bb.av ] ; 4 uses
  %.0.i = phi i32 [ 2, %bb.ar ], [ 4, %bb.ba ], [ 3, %bb.av ] ; 4 uses
  %i.lc = icmp samesign ult i32 %.sink.i205, 768
  br i1 %i.lc, label %sqlite3_qrf_wcwidth.exit, label %.preheader.i206

.preheader.i206:                                  ; preds = %sqlite3_qrf_decode_utf8.exit, %bb.bd
  %.01935.i = phi i32 [ %.2.i, %bb.bd ], [ 302, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %.02034.i = phi i32 [ %.222.i, %bb.bd ], [ 0, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %i.ld = add nsw i32 %.02034.i, %.01935.i
  %i.le = sdiv i32 %i.ld, 2                       ; 3 uses
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.lf ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !49 ; 2 uses
  %i.lj = icmp slt i32 %i.li, %.sink.i205
  br i1 %i.lj, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %.preheader.i206
  %i.lk = icmp sgt i32 %i.li, %.sink.i205
  br i1 %i.lk, label %bb.bc, label %.thread.i

bb.bc:                                            ; preds = %bb.bb
  %i.ll = add nsw i32 %i.le, -1
  br label %bb.bd

.thread.i:                                        ; preds = %bb.bb
  %i.lm = load i8, ptr %i.lg, align 8, !tbaa !50
  br label %sqlite3_qrf_wcwidth.exit

bb.bd:                                            ; preds = %bb.bc, %.preheader.i206
  %.222.i = phi i32 [ %i.le, %.preheader.i206 ], [ %.02034.i, %bb.bc ] ; 3 uses
  %.2.i = phi i32 [ %.01935.i, %.preheader.i206 ], [ %i.ll, %bb.bc ] ; 3 uses
  %i.ln = add nsw i32 %.2.i, -1
  %i.lo = icmp slt i32 %.222.i, %i.ln
  br i1 %i.lo, label %.preheader.i206, label %bb.be, !llvm.loop !0

bb.be:                                            ; preds = %bb.bd
  %i.lp = sext i32 %.2.i to i64
  %i.lq = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.lp ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 4
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !49
  %i.lt = icmp sgt i32 %i.ls, %.sink.i205
  br i1 %i.lt, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.lu = sext i32 %.222.i to i64
  %i.lv = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.lu
  %i.lw = load i8, ptr %i.lv, align 8, !tbaa !50
  br label %sqlite3_qrf_wcwidth.exit

bb.bg:                                            ; preds = %bb.be
  %i.lx = load i8, ptr %i.lq, align 8, !tbaa !50
  br label %sqlite3_qrf_wcwidth.exit

sqlite3_qrf_wcwidth.exit:                         ; preds = %bb.aw, %bb.ax, %bb.ay, %bb.az, %sqlite3_qrf_decode_utf8.exit, %.thread.i, %bb.bf, %bb.bg
  %.0.i218 = phi i32 [ %.0.i, %bb.bg ], [ %.0.i, %.thread.i ], [ %.0.i, %bb.bf ], [ %.0.i, %sqlite3_qrf_decode_utf8.exit ], [ 1, %bb.az ], [ 1, %bb.ay ], [ 1, %bb.ax ], [ 1, %bb.aw ]
  %.225.shrunk.i = phi i8 [ %i.lx, %bb.bg ], [ %i.lm, %.thread.i ], [ %i.lw, %bb.bf ], [ 1, %sqlite3_qrf_decode_utf8.exit ], [ 1, %bb.az ], [ 1, %bb.ay ], [ 1, %bb.ax ], [ 1, %bb.aw ]
  %.225.i = zext i8 %.225.shrunk.i to i32
  %i.ly = add nsw i32 %.0, %.225.i                ; 3 uses
  %i.lz = icmp sgt i32 %i.ly, %spec.store.select
  br i1 %i.lz, label %bb.bh, label %.thread213

.thread213:                                       ; preds = %bb.ao, %.thread212.a, %.critedge2.i, %bb.al, %sqlite3_qrf_wcwidth.exit
  %.pn.pn = phi i32 [ %.0.i218, %sqlite3_qrf_wcwidth.exit ], [ 1, %.thread212.a ], [ %i.it, %.critedge2.i ], [ 1, %bb.al ], [ 1, %bb.ao ]
  %.1 = phi i32 [ %i.ly, %sqlite3_qrf_wcwidth.exit ], [ %.0, %.thread212.a ], [ %.0, %.critedge2.i ], [ %.0, %bb.al ], [ %i.iv, %bb.ao ]
  %.4 = add nsw i32 %.pn.pn, %.0171
  br label %bb.ak

bb.bh:                                            ; preds = %bb.al, %sqlite3_qrf_wcwidth.exit, %bb.ao
  %.2 = phi i32 [ %i.ly, %sqlite3_qrf_wcwidth.exit ], [ %i.iv, %bb.ao ], [ %.0, %bb.al ]
  %i.ma = icmp sgt i32 %.2, %spec.store.select
  br i1 %i.ma, label %bb.bi, label %.critedge200

bb.bi:                                            ; preds = %bb.bh
  %i.mb = add nsw i32 %.0171, %i.b
  call void @sqlite3_str_truncate(ptr noundef %1, i32 noundef %i.mb) #45
  call void @sqlite3_str_append(ptr noundef %1, ptr noundef nonnull @.str.178, i32 noundef 3) #45
  br label %.critedge200

.critedge200:                                     ; preds = %bb.c, %bb.ac, %bb.y, %.loopexit, %bb.ai, %bb.bi, %bb.bh
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @qrfLoadAlignment(i32 %.8.val, ptr nofree writeonly captures(none) %.64.val, ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #28 {
bb.a:
  %i.a = sext i32 %.8.val to i64
  %i.b = icmp sgt i32 %.8.val, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.d = load i8, ptr %i.c, align 1, !tbaa !105   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.f = load i32, ptr %i.e, align 4, !tbaa !106
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = and i8 %i.d, 12                          ; 2 uses
  %i.k = or disjoint i8 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.01 = phi i64 [ 0, %.lr.ph ], [ %i.ab, %bb.g ] ; 6 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.64.val, i64 %.01
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i8 %i.d, ptr %i.n, align 8, !tbaa !95
  %i.o = icmp slt i64 %.01, %i.g
  br i1 %i.o, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !1030
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %.01
  %i.r = load i8, ptr %i.q, align 1, !tbaa !52
  %i.s = and i8 %i.r, 3                           ; 2 uses
  %.not = icmp eq i8 %i.s, 0
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = or disjoint i8 %i.s, %i.j
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.u = load i32, ptr %i.h, align 8, !tbaa !97
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %.01, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !1031
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %.01
  %i.z = load i16, ptr %i.y, align 2, !tbaa !98
  %i.aa = icmp slt i16 %i.z, 0
  br i1 %i.aa, label %.sink.split, label %bb.g

.sink.split:                                      ; preds = %bb.f, %bb.d
  %.sink = phi i8 [ %i.t, %bb.d ], [ %i.k, %bb.f ]
  store i8 %.sink, ptr %i.n, align 8, !tbaa !95
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.c, %bb.f, %bb.e
  %i.ab = add nuw nsw i64 %.01, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfSplitColumn(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !74
  %i.c = tail call ptr @sqlite3_malloc64(i64 noundef 8) #45 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

.loopexit:                                        ; preds = %bb.h
  %i.g = trunc nsw i64 %indvars.iv.next to i32
  %i.h = load i16, ptr %i.a, align 8, !tbaa !74
  %i.i = shl nsw i64 %indvars.iv.next, 2
  %i.j = tail call ptr @sqlite3_malloc64(i64 noundef %i.i) #45 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %._crit_edge, label %bb.b, !llvm.loop !1032

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0135.lcssa = phi ptr [ null, %bb.a ], [ %i.l, %.loopexit ]
  %.0129.lcssa = phi i64 [ 1, %bb.a ], [ %i.az, %.loopexit ]
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %.0132174, %.loopexit ]
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %1, i32 noundef 7, ptr noundef nonnull @.str.56)
  br label %qrfValidLayout.exit.thread

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %i.l = phi ptr [ %i.c, %.lr.ph ], [ %i.j, %.loopexit ] ; 8 uses
  %i.m = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.in = phi i16 [ %i.b, %.lr.ph ], [ %i.h, %.loopexit ]
  %.0176 = phi i32 [ 1, %.lr.ph ], [ %.0132174, %.loopexit ]
  %.0129175 = phi i64 [ 1, %.lr.ph ], [ %i.az, %.loopexit ]
  %.0132174 = phi i32 [ 2, %.lr.ph ], [ %i.g, %.loopexit ] ; 8 uses
  %.0135173 = phi ptr [ null, %.lr.ph ], [ %i.l, %.loopexit ] ; 2 uses
  %i.n = sext i16 %.in to i32
  %i.o = load i64, ptr %i.e, align 8, !tbaa !91   ; 4 uses
  %i.p = add nsw i64 %i.m, -1                     ; 2 uses
  %i.q = add i64 %i.p, %i.o
  %i.r = sdiv i64 %i.q, %i.m
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = icmp sgt i64 %i.o, 0
  br i1 %i.t, label %bb.c, label %._crit_edge.i

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !94   ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !53   ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %i.o, 1
  br i1 %exitcond.peel.not.i, label %._crit_edge.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.c, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 1, %bb.c ] ; 4 uses
  %.03847.i = phi i32 [ %.1.i, %bb.f ], [ %i.v, %bb.c ] ; 2 uses
  %i.w = trunc nuw nsw i64 %indvars.iv.i to i32   ; 2 uses
  %i.x = srem i32 %i.w, %i.s
  %i.y = sdiv i32 %i.w, %i.s
  %i.z = icmp eq i32 %i.x, 0
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.peel.next.i
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr [4 x i8], ptr %i.l, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -4
  store i32 %.03847.i, ptr %i.ac, align 4, !tbaa !53
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !53
  br label %bb.f

bb.e:                                             ; preds = %.peel.next.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !53
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 %.03847.i)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.i = phi i32 [ %i.ae, %bb.d ], [ %spec.select.i, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.o
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.peel.next.i, !llvm.loop !1033

._crit_edge.i:                                    ; preds = %bb.f, %bb.c, %bb.b
  %.038.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.v, %bb.c ], [ %.1.i, %bb.f ]
  %i.ah = add nsw i32 %.0132174, -1               ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.ai
  store i32 %.038.lcssa.i, ptr %i.aj, align 4, !tbaa !53
  %i.ak = icmp sgt i32 %.0132174, 0
  br i1 %i.ak, label %.lr.ph51.preheader.i, label %._crit_edge52.i

.lr.ph51.preheader.i:                             ; preds = %._crit_edge.i
  %wide.trip.count.i = zext nneg i32 %.0132174 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.0132174, 8
  br i1 %min.iters.check, label %.lr.ph51.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph51.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.an, %vector.body ]
  %vec.phi252 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ao, %vector.body ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %wide.load = load <4 x i32>, ptr %i.al, align 4, !tbaa !53
  %wide.load253 = load <4 x i32>, ptr %i.am, align 4, !tbaa !53
  %i.an = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ao = add <4 x i32> %wide.load253, %vec.phi252 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !1034

middle.block:                                     ; preds = %vector.body
end_hunk_3
begin_hunk_4_@qrfWrapLine:bb.a
  br label %sqlite3_qrf_decode_utf8.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.s = and i32 %i.g, 240
  %i.t = icmp eq i32 %i.s, 224
  br i1 %i.t, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !52
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = and i32 %i.w, 192
  %i.y = icmp eq i32 %i.x, 128
  br i1 %i.y, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !52
  %i.ab = zext i8 %i.aa to i32                    ; 2 uses
  %i.ac = and i32 %i.ab, 192
  %i.ad = icmp eq i32 %i.ac, 128
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = shl nuw nsw i32 %i.g, 12
  %i.af = and i32 %i.ae, 61440
  %i.ag = shl nuw nsw i32 %i.w, 6
  %i.ah = and i32 %i.ag, 4032
  %i.ai = or disjoint i32 %i.ah, %i.af
  %i.aj = and i32 %i.ab, 63
  %i.ak = or disjoint i32 %i.ai, %i.aj
  br label %sqlite3_qrf_decode_utf8.exit

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.al = and i32 %i.g, 248
  %i.am = icmp eq i32 %i.al, 240
  br i1 %i.am, label %bb.k, label %sqlite3_qrf_wcwidth.exit

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !52
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = and i32 %i.ap, 192
  %i.ar = icmp eq i32 %i.aq, 128
  br i1 %i.ar, label %bb.l, label %sqlite3_qrf_wcwidth.exit

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !52
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = and i32 %i.au, 192
  %i.aw = icmp eq i32 %i.av, 128
  br i1 %i.aw, label %bb.m, label %sqlite3_qrf_wcwidth.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !52
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = and i32 %i.az, 192
  %i.bb = icmp eq i32 %i.ba, 128
  br i1 %i.bb, label %bb.n, label %sqlite3_qrf_wcwidth.exit

bb.n:                                             ; preds = %bb.m
  %i.bc = shl nuw nsw i32 %i.g, 18
  %i.bd = and i32 %i.bc, 1835008
  %i.be = shl nuw nsw i32 %i.ap, 12
  %i.bf = and i32 %i.be, 258048
  %i.bg = or disjoint i32 %i.bf, %i.bd
  %i.bh = shl nuw nsw i32 %i.au, 6
  %i.bi = and i32 %i.bh, 4032
  %i.bj = or disjoint i32 %i.bg, %i.bi
  %i.bk = and i32 %i.az, 63
  %i.bl = or disjoint i32 %i.bj, %i.bk
  br label %sqlite3_qrf_decode_utf8.exit

sqlite3_qrf_decode_utf8.exit:                     ; preds = %bb.e, %bb.i, %bb.n
  %.sink.i = phi i32 [ %i.r, %bb.e ], [ %i.bl, %bb.n ], [ %i.ak, %bb.i ] ; 4 uses
  %.0.i = phi i32 [ 2, %bb.e ], [ 4, %bb.n ], [ 3, %bb.i ] ; 4 uses
  %i.bm = icmp samesign ult i32 %.sink.i, 768
  br i1 %i.bm, label %sqlite3_qrf_wcwidth.exit, label %.preheader.i

.preheader.i:                                     ; preds = %sqlite3_qrf_decode_utf8.exit, %bb.q
  %.01935.i = phi i32 [ %.2.i, %bb.q ], [ 302, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %.02034.i = phi i32 [ %.222.i, %bb.q ], [ 0, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %i.bn = add nsw i32 %.02034.i, %.01935.i
  %i.bo = sdiv i32 %i.bn, 2                       ; 3 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !49 ; 2 uses
  %i.bt = icmp slt i32 %i.bs, %.sink.i
  br i1 %i.bt, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.preheader.i
  %i.bu = icmp sgt i32 %i.bs, %.sink.i
  br i1 %i.bu, label %bb.p, label %.thread.i

bb.p:                                             ; preds = %bb.o
  %i.bv = add nsw i32 %i.bo, -1
  br label %bb.q

.thread.i:                                        ; preds = %bb.o
  %i.bw = load i8, ptr %i.bq, align 8, !tbaa !50
  br label %sqlite3_qrf_wcwidth.exit

bb.q:                                             ; preds = %bb.p, %.preheader.i
  %.222.i = phi i32 [ %i.bo, %.preheader.i ], [ %.02034.i, %bb.p ] ; 3 uses
  %.2.i = phi i32 [ %.01935.i, %.preheader.i ], [ %i.bv, %bb.p ] ; 3 uses
  %i.bx = add nsw i32 %.2.i, -1
  %i.by = icmp slt i32 %.222.i, %i.bx
  br i1 %i.by, label %.preheader.i, label %bb.r, !llvm.loop !0

bb.r:                                             ; preds = %bb.q
  %i.bz = sext i32 %.2.i to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !49
  %i.cd = icmp sgt i32 %i.cc, %.sink.i
  br i1 %i.cd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ce = sext i32 %.222.i to i64
  %i.cf = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 8, !tbaa !50
  br label %sqlite3_qrf_wcwidth.exit

bb.t:                                             ; preds = %bb.r
  %i.ch = load i8, ptr %i.ca, align 8, !tbaa !50
  br label %sqlite3_qrf_wcwidth.exit

sqlite3_qrf_wcwidth.exit:                         ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %sqlite3_qrf_decode_utf8.exit, %.thread.i, %bb.s, %bb.t
  %.0.i143 = phi i32 [ %.0.i, %bb.t ], [ %.0.i, %.thread.i ], [ %.0.i, %bb.s ], [ %.0.i, %sqlite3_qrf_decode_utf8.exit ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ]
  %.225.shrunk.i = phi i8 [ %i.ch, %bb.t ], [ %i.bw, %.thread.i ], [ %i.cg, %bb.s ], [ 1, %sqlite3_qrf_decode_utf8.exit ], [ 1, %bb.m ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ]
  %.225.i = zext i8 %.225.shrunk.i to i32
  %i.ci = add nsw i32 %.0110173, %.225.i          ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, %1
  %i.ck = add i32 %.0115172, -1
  %i.cl = add i32 %i.ck, %.0.i143
  br i1 %i.cj, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %bb.ad

bb.u:                                             ; preds = %.lr.ph
  %i.cm = icmp ugt i8 %i.e, 31
  br i1 %i.cm, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cn = icmp eq i32 %.0110173, %1
  br i1 %i.cn, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.co = add nsw i32 %.0110173, 1
  br label %bb.ad

bb.x:                                             ; preds = %bb.u
  switch i8 %i.e, label %qrfIsVt100.exit.thread [
    i8 10, label %sqlite3_qrf_wcwidth.exit._crit_edge
    i8 0, label %sqlite3_qrf_wcwidth.exit._crit_edge
    i8 13, label %bb.y
    i8 9, label %bb.z
    i8 27, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  %i.cp = add nsw i32 %.0115172, 1                ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %0, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !52
  %i.ct = icmp eq i8 %i.cs, 10
  br i1 %i.ct, label %.thread151, label %qrfIsVt100.exit.thread

bb.z:                                             ; preds = %bb.x
  %reass.sub = and i32 %.0110173, -8
  %i.cu = add i32 %reass.sub, 8                   ; 2 uses
  %i.cv = icmp sgt i32 %i.cu, %1
  br i1 %i.cv, label %.thread, label %bb.ad

bb.aa:                                            ; preds = %bb.x
  %i.cw = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !52
  %.not.i = icmp eq i8 %i.cx, 91
  br i1 %.not.i, label %.preheader.i140, label %qrfIsVt100.exit.thread

.preheader.i140:                                  ; preds = %bb.aa, %.preheader.i140
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i140 ], [ 2, %bb.aa ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !52
  %i.da = and i8 %i.cz, -16
  %or.cond.i = icmp eq i8 %i.da, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %.preheader.i140, label %.critedge.i, !llvm.loop !1

.critedge.i:                                      ; preds = %.preheader.i140, %.critedge.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.critedge.i ], [ %indvars.iv.i, %.preheader.i140 ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv25.i
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !52  ; 2 uses
  %i.dd = and i8 %i.dc, -16
  %or.cond22.i = icmp eq i8 %i.dd, 32
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  br i1 %or.cond22.i, label %.critedge.i, label %.critedge2.i, !llvm.loop !2

.critedge2.i:                                     ; preds = %.critedge.i
  %i.de = add i8 %i.dc, -64
  %or.cond23.i = icmp ult i8 %i.de, 63
  br i1 %or.cond23.i, label %bb.ab, label %qrfIsVt100.exit.thread

bb.ab:                                            ; preds = %.critedge2.i
  %i.df = trunc nuw nsw i64 %indvars.iv25.i to i32
  %i.dg = add nsw i32 %.0115172, %i.df
  br label %bb.ad

qrfIsVt100.exit.thread:                           ; preds = %.critedge2.i, %bb.aa, %bb.y, %bb.x
  %i.dh = icmp eq i32 %.0110173, %1
  br i1 %i.dh, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %bb.ac

bb.ac:                                            ; preds = %qrfIsVt100.exit.thread
  %i.di = add nsw i32 %.0110173, 1
  br label %bb.ad

bb.ad:                                            ; preds = %sqlite3_qrf_wcwidth.exit, %bb.z, %bb.ab, %bb.ac, %bb.w
  %.2117 = phi i32 [ %i.cl, %sqlite3_qrf_wcwidth.exit ], [ %.0115172, %bb.w ], [ %.0115172, %bb.z ], [ %i.dg, %bb.ab ], [ %.0115172, %bb.ac ]
  %.3 = phi i32 [ %i.ci, %sqlite3_qrf_wcwidth.exit ], [ %i.co, %bb.w ], [ %i.cu, %bb.z ], [ %.0110173, %bb.ab ], [ %i.di, %bb.ac ] ; 3 uses
  %i.dj = add nsw i32 %.2117, 1                   ; 2 uses
  %.not = icmp sgt i32 %.3, %1
  br i1 %.not, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %.lr.ph, !llvm.loop !1044

sqlite3_qrf_wcwidth.exit._crit_edge:              ; preds = %bb.ad, %bb.v, %qrfIsVt100.exit.thread, %bb.x, %bb.x, %sqlite3_qrf_wcwidth.exit
  %.0115.lcssa = phi i32 [ %.0115172, %sqlite3_qrf_wcwidth.exit ], [ %i.dj, %bb.ad ], [ %.0115172, %bb.v ], [ %.0115172, %qrfIsVt100.exit.thread ], [ %.0115172, %bb.x ], [ %.0115172, %bb.x ] ; 3 uses
  %.0110.lcssa = phi i32 [ %.0110173, %sqlite3_qrf_wcwidth.exit ], [ %.3, %bb.ad ], [ %1, %bb.v ], [ %1, %qrfIsVt100.exit.thread ], [ %.0110173, %bb.x ], [ %.0110173, %bb.x ] ; 3 uses
  switch i8 %i.e, label %.thread [
    i8 0, label %sqlite3_qrf_wcwidth.exit._crit_edge.thread
    i8 10, label %.thread151
  ]

sqlite3_qrf_wcwidth.exit._crit_edge.thread:       ; preds = %.preheader159, %sqlite3_qrf_wcwidth.exit._crit_edge
  %.0110.lcssa226 = phi i32 [ %.0110.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ 0, %.preheader159 ]
  %.0115.lcssa225 = phi i32 [ %.0115.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ 0, %.preheader159 ] ; 2 uses
  store i32 %.0115.lcssa225, ptr %3, align 4, !tbaa !53
  store i32 %.0110.lcssa226, ptr %4, align 4, !tbaa !53
  br label %bb.am

.thread151:                                       ; preds = %bb.y, %sqlite3_qrf_wcwidth.exit._crit_edge
  %.0110166.a = phi i32 [ %.0110.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ %.0110173, %bb.y ]
  %.3118155 = phi i32 [ %.0115.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ %i.cp, %bb.y ] ; 2 uses
  store i32 %.3118155, ptr %3, align 4, !tbaa !53
  store i32 %.0110166.a, ptr %4, align 4, !tbaa !53
  %i.dk = add nsw i32 %.3118155, 1
  br label %bb.am

.thread:                                          ; preds = %bb.z, %sqlite3_qrf_wcwidth.exit._crit_edge
  %.0115170 = phi i32 [ %.0115.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ %.0115172, %bb.z ] ; 10 uses
  %.0110167 = phi i32 [ %.0110.lcssa, %sqlite3_qrf_wcwidth.exit._crit_edge ], [ %.0110173, %bb.z ] ; 5 uses
  %.not129 = icmp eq i32 %2, 0
  %.pre = sext i32 %.0115170 to i64               ; 8 uses
  br i1 %.not129, label %.thread._crit_edge, label %bb.ae

bb.ae:                                            ; preds = %.thread
  %i.dl = getelementptr inbounds i8, ptr %0, i64 %.pre
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !52  ; 2 uses
  %.not130 = icmp eq i8 %i.dm, 0
  br i1 %.not130, label %.thread._crit_edge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !52  ; 2 uses
  %i.dq = and i8 %i.dp, 1
  %.not131 = icmp eq i8 %i.dq, 0
  br i1 %.not131, label %bb.ag, label %.thread._crit_edge

bb.ag:                                            ; preds = %bb.af
  %i.dr = zext i8 %i.e to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !52
  %i.du = and i8 %i.dt, 6
  %i.dv = icmp ne i8 %i.du, 0
  %i.dw = and i8 %i.dp, 6
  %i.dx = icmp eq i8 %i.dw, 0
  %i.dy = xor i1 %i.dx, %i.dv
  br i1 %i.dy, label %.preheader158, label %.thread._crit_edge

.preheader158:                                    ; preds = %bb.ag
  %i.dz = sdiv i32 %.0115170, 2                   ; 4 uses
  %i.ea = sext i32 %i.dz to i64                   ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %.0115170, i32 %i.dz)
  %i.eb = add i32 %smin, -1                       ; 3 uses
  %.not132.not254 = icmp sgt i32 %.0115170, 0
  br i1 %.not132.not254, label %.lr.ph256, label %.split.loop.exit237

bb.ah:                                            ; preds = %.lr.ph256
  %.not132.not = icmp sgt i64 %indvars.iv.next, %i.ea
  br i1 %.not132.not, label %.lr.ph256, label %.split.loop.exit237, !llvm.loop !1045

.lr.ph256:                                        ; preds = %.preheader158, %bb.ah
  %indvars.iv255 = phi i64 [ %indvars.iv.next, %bb.ah ], [ %.pre, %.preheader158 ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv255, -1 ; 4 uses
  %i.ec = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !52
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !52
  %i.eh = and i8 %i.eg, 1
  %.not133 = icmp eq i8 %i.eh, 0
  br i1 %.not133, label %bb.ah, label %.split.loop.exit, !llvm.loop !1045

.split.loop.exit:                                 ; preds = %.lr.ph256
  %i.ei = trunc nsw i64 %indvars.iv255 to i32
  %i.ej = trunc nsw i64 %indvars.iv.next to i32
  %i.ek = icmp sge i32 %i.dz, %i.ei
  br label %.split.loop.exit237

.split.loop.exit237:                              ; preds = %bb.ah, %.preheader158, %.split.loop.exit
  %.0112.in.lcssa = phi i1 [ %i.ek, %.split.loop.exit ], [ true, %.preheader158 ], [ true, %bb.ah ]
  %.0112.lcssa = phi i32 [ %i.ej, %.split.loop.exit ], [ %i.eb, %.preheader158 ], [ %i.eb, %bb.ah ]
  %i.el = icmp sgt i32 %.0115170, 1
  %or.cond = and i1 %i.el, %.0112.in.lcssa
  br i1 %or.cond, label %.lr.ph196, label %.loopexit

.lr.ph196:                                        ; preds = %.split.loop.exit237, %bb.ai
  %indvars.iv211 = phi i64 [ %indvars.iv.next212, %bb.ai ], [ %.pre, %.split.loop.exit237 ] ; 4 uses
  %i.em = getelementptr i8, ptr %0, i64 %indvars.iv211 ; 2 uses
  %i.en = getelementptr i8, ptr %i.em, i64 -1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !52
  %i.ep = zext i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !52
  %i.es = and i8 %i.er, 6
  %i.et = icmp ne i8 %i.es, 0
  %i.eu = load i8, ptr %i.em, align 1, !tbaa !52  ; 2 uses
  %i.ev = zext i8 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr @qrfCType, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !52
  %i.ey = and i8 %i.ex, 6
  %i.ez = icmp eq i8 %i.ey, 0
  %.not136 = xor i1 %i.et, %i.ez
  %.not137 = icmp slt i8 %i.eu, -64
  %or.cond139 = or i1 %.not137, %.not136
  br i1 %or.cond139, label %bb.ai, label %.loopexit.loopexit.split.loop.exit

bb.ai:                                            ; preds = %.lr.ph196
  %indvars.iv.next212 = add nsw i64 %indvars.iv211, -1
  %.not135.not = icmp sgt i64 %indvars.iv211, %i.ea
  br i1 %.not135.not, label %.lr.ph196, label %.loopexit, !llvm.loop !1046

.loopexit.loopexit.split.loop.exit:               ; preds = %.lr.ph196
  %i.fa = trunc nsw i64 %indvars.iv211 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ai, %.loopexit.loopexit.split.loop.exit, %.split.loop.exit237
  %.2114 = phi i32 [ %.0112.lcssa, %.split.loop.exit237 ], [ %i.fa, %.loopexit.loopexit.split.loop.exit ], [ %i.eb, %bb.ai ] ; 3 uses
  %.not138 = icmp slt i32 %.2114, %i.dz
  br i1 %.not138, label %.thread._crit_edge, label %bb.aj

bb.aj:                                            ; preds = %.loopexit
  %i.fb = sext i32 %.2114 to i64                  ; 2 uses
  %i.fc = tail call fastcc i32 @qrfDisplayWidth(ptr noundef nonnull %0, i64 noundef %i.fb, ptr noundef null)
  br label %.thread._crit_edge

.thread._crit_edge:                               ; preds = %.thread, %.loopexit, %bb.aj, %bb.ag, %bb.af, %bb.ae
  %.pre-phi = phi i64 [ %.pre, %bb.ae ], [ %.pre, %.loopexit ], [ %i.fb, %bb.aj ], [ %.pre, %bb.ag ], [ %.pre, %bb.af ], [ %.pre, %.thread ]
  %.4119 = phi i32 [ %.0115170, %bb.ae ], [ %.0115170, %.loopexit ], [ %.2114, %bb.aj ], [ %.0115170, %bb.ag ], [ %.0115170, %bb.af ], [ %.0115170, %.thread ]
  %.5 = phi i32 [ %.0110167, %bb.ae ], [ %.0110167, %.loopexit ], [ %i.fc, %bb.aj ], [ %.0110167, %bb.ag ], [ %.0110167, %bb.af ], [ %.0110167, %.thread ]
  store i32 %.4119, ptr %3, align 4, !tbaa !53
  store i32 %.5, ptr %4, align 4, !tbaa !53
  br label %bb.ak

bb.ak:                                            ; preds = %.critedge, %.thread._crit_edge
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %.critedge ], [ %.pre-phi, %.thread._crit_edge ] ; 3 uses
  %i.fd = getelementptr inbounds i8, ptr %0, i64 %indvars.iv214
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !52
  switch i8 %i.fe, label %bb.al [
    i8 32, label %.critedge
    i8 9, label %.critedge
    i8 13, label %.critedge
  ]

.critedge:                                        ; preds = %bb.ak, %bb.ak, %bb.ak
  %indvars.iv.next215 = add nsw i64 %indvars.iv214, 1
  br label %bb.ak, !llvm.loop !1047

bb.al:                                            ; preds = %bb.ak
  %i.ff = trunc nsw i64 %indvars.iv214 to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.thread151, %sqlite3_qrf_wcwidth.exit._crit_edge.thread, %bb.b
  %.sink = phi i32 [ %i.ff, %bb.al ], [ %i.dk, %.thread151 ], [ %.0115.lcssa225, %sqlite3_qrf_wcwidth.exit._crit_edge.thread ], [ 0, %bb.b ]
  store i32 %.sink, ptr %5, align 4, !tbaa !53
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfRTrim(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @sqlite3_str_length(ptr noundef %0) #45 ; 3 uses
  %i.b = tail call ptr @sqlite3_str_value(ptr noundef %0) #45
  %i.c = icmp sgt i32 %i.a, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.07 = phi i32 [ %i.i, %bb.b ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = zext nneg i32 %.07 to i64
  %i.e = getelementptr i8, ptr %i.b, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !52
  %i.h = icmp eq i8 %i.g, 32
  br i1 %i.h, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.i = add nsw i32 %.07, -1
  %i.j = icmp sgt i32 %.07, 1
  br i1 %i.j, label %.lr.ph, label %.critedge, !llvm.loop !5

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ 0, %bb.b ], [ %.07, %.lr.ph ]
  tail call void @sqlite3_str_truncate(ptr noundef %0, i32 noundef %.0.lcssa) #45
  ret void
}

declare void @sqlite3_str_appendchar(ptr noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #5

declare ptr @sqlite3_realloc64(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @sqlite3_str_appendall(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @sqlite3_str_appendf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #9

declare ptr @sqlite3_str_value(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

declare ptr @sqlite3_errstr(i32 noundef) local_unnamed_addr #5

declare ptr @sqlite3_value_dup(ptr noundef) local_unnamed_addr #5

declare ptr @sqlite3_column_value(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @sqlite3_value_free(ptr noundef) local_unnamed_addr #5

declare i64 @sqlite3_column_int64(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_column_bytes(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @sqlite3_column_blob(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @sqlite3_str_truncate(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @sqlite3_bind_blob(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfAppendWithTabs(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 6 uses
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ab
  %.073 = phi i32 [ %2, %.lr.ph ], [ %.2, %bb.ab ] ; 3 uses
  %.05072 = phi ptr [ %1, %.lr.ph ], [ %.252, %bb.ab ] ; 4 uses
  %.05371 = phi i32 [ 0, %.lr.ph ], [ %.255, %bb.ab ] ; 6 uses
  %.05670 = phi i32 [ 0, %.lr.ph ], [ %.157, %bb.ab ] ; 5 uses
  %i.e = sext i32 %.05670 to i64
  %i.f = getelementptr inbounds i8, ptr %.05072, i64 %i.e ; 15 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !52    ; 6 uses
  %i.h = icmp ult i8 %i.g, 32
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %.05072, i32 noundef %.05670) #45
  %i.i = sub nsw i32 %.073, %.05670               ; 4 uses
  switch i8 %i.g, label %bb.g [
    i8 27, label %bb.d
    i8 9, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !52
  %.not.i = icmp eq i8 %i.k, 91
  br i1 %.not.i, label %.preheader.i, label %.thread

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i ], [ 2, %bb.d ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !52
  %i.n = and i8 %i.m, -16
  %or.cond.i = icmp eq i8 %i.n, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %.preheader.i, label %.critedge.i, !llvm.loop !1

.critedge.i:                                      ; preds = %.preheader.i, %.critedge.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.critedge.i ], [ %indvars.iv.i, %.preheader.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv25.i
  %i.p = load i8, ptr %i.o, align 1, !tbaa !52    ; 2 uses
  %i.q = and i8 %i.p, -16
  %or.cond22.i = icmp eq i8 %i.q, 32
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  br i1 %or.cond22.i, label %.critedge.i, label %.critedge2.i, !llvm.loop !2

.critedge2.i:                                     ; preds = %.critedge.i
  %i.r = add i8 %i.p, -64
  %or.cond23.i = icmp ult i8 %i.r, 63
  br i1 %or.cond23.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %.critedge2.i
  %i.s = trunc nuw nsw i64 %indvars.iv25.i to i32
  %i.t = add nuw nsw i32 %i.s, 1                  ; 3 uses
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef %i.t) #45
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.u
  %i.w = sub nsw i32 %i.i, %i.t
  br label %bb.ab

bb.f:                                             ; preds = %bb.c
  %i.x = and i32 %.05371, 7
  %i.y = sub nuw nsw i32 8, %i.x                  ; 2 uses
  call void @sqlite3_str_appendchar(ptr noundef %0, i32 noundef %i.y, i8 noundef signext 32) #45
  %i.z = add i32 %i.y, %.05371
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ab = add nsw i32 %i.i, -1
  br label %bb.ab

bb.g:                                             ; preds = %bb.c
  %i.ac = icmp eq i8 %i.g, 13
  %i.ad = icmp eq i32 %i.i, 1
  %or.cond = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond, label %.thread79, label %.thread

.thread79:                                        ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  br label %._crit_edge

.thread:                                          ; preds = %.critedge2.i, %bb.d, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.af = add i32 %.05371, 1
  store i8 -30, ptr %i.a, align 1, !tbaa !52
  store i8 -112, ptr %i.c, align 1, !tbaa !52
  %i.ag = or disjoint i8 %i.g, -128
  store i8 %i.ag, ptr %i.d, align 1, !tbaa !52
  call void @sqlite3_str_append(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 3) #45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ai = add nsw i32 %i.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %bb.ab

bb.h:                                             ; preds = %bb.b
  %i.aj = icmp sgt i8 %i.g, -1
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = add nsw i32 %.05670, 1
  %i.al = add i32 %.05371, 1
  br label %bb.ab

bb.j:                                             ; preds = %bb.h
  %i.am = zext i8 %i.g to i32                     ; 6 uses
  %i.an = and i32 %i.am, 224
  %i.ao = icmp eq i32 %i.an, 192
  br i1 %i.ao, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !52
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %i.as = and i32 %i.ar, 192
  %i.at = icmp eq i32 %i.as, 128
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = shl nuw nsw i32 %i.am, 6
  %i.av = and i32 %i.au, 1984
  %i.aw = and i32 %i.ar, 63
  %i.ax = or disjoint i32 %i.aw, %i.av
  br label %sqlite3_qrf_decode_utf8.exit

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ay = and i32 %i.am, 240
  %i.az = icmp eq i32 %i.ay, 224
  br i1 %i.az, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !52
  %i.bc = zext i8 %i.bb to i32                    ; 2 uses
  %i.bd = and i32 %i.bc, 192
  %i.be = icmp eq i32 %i.bd, 128
  br i1 %i.be, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !52
  %i.bh = zext i8 %i.bg to i32                    ; 2 uses
  %i.bi = and i32 %i.bh, 192
  %i.bj = icmp eq i32 %i.bi, 128
  br i1 %i.bj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bk = shl nuw nsw i32 %i.am, 12
  %i.bl = and i32 %i.bk, 61440
  %i.bm = shl nuw nsw i32 %i.bc, 6
  %i.bn = and i32 %i.bm, 4032
  %i.bo = or disjoint i32 %i.bn, %i.bl
  %i.bp = and i32 %i.bh, 63
  %i.bq = or disjoint i32 %i.bo, %i.bp
  br label %sqlite3_qrf_decode_utf8.exit

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.m
  %i.br = and i32 %i.am, 248
  %i.bs = icmp eq i32 %i.br, 240
  br i1 %i.bs, label %bb.r, label %sqlite3_qrf_wcwidth.exit

bb.r:                                             ; preds = %bb.q
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !52
  %i.bv = zext i8 %i.bu to i32                    ; 2 uses
  %i.bw = and i32 %i.bv, 192
  %i.bx = icmp eq i32 %i.bw, 128
  br i1 %i.bx, label %bb.s, label %sqlite3_qrf_wcwidth.exit

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !52
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  %i.cb = and i32 %i.ca, 192
  %i.cc = icmp eq i32 %i.cb, 128
  br i1 %i.cc, label %bb.t, label %sqlite3_qrf_wcwidth.exit

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 3
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !52
  %i.cf = zext i8 %i.ce to i32                    ; 2 uses
  %i.cg = and i32 %i.cf, 192
  %i.ch = icmp eq i32 %i.cg, 128
  br i1 %i.ch, label %bb.u, label %sqlite3_qrf_wcwidth.exit

bb.u:                                             ; preds = %bb.t
  %i.ci = shl nuw nsw i32 %i.am, 18
  %i.cj = and i32 %i.ci, 1835008
  %i.ck = shl nuw nsw i32 %i.bv, 12
  %i.cl = and i32 %i.ck, 258048
  %i.cm = or disjoint i32 %i.cl, %i.cj
  %i.cn = shl nuw nsw i32 %i.ca, 6
  %i.co = and i32 %i.cn, 4032
  %i.cp = or disjoint i32 %i.cm, %i.co
  %i.cq = and i32 %i.cf, 63
  %i.cr = or disjoint i32 %i.cp, %i.cq
  br label %sqlite3_qrf_decode_utf8.exit

sqlite3_qrf_decode_utf8.exit:                     ; preds = %bb.l, %bb.p, %bb.u
  %.sink.i = phi i32 [ %i.ax, %bb.l ], [ %i.cr, %bb.u ], [ %i.bq, %bb.p ] ; 4 uses
  %.0.i = phi i32 [ 2, %bb.l ], [ 4, %bb.u ], [ 3, %bb.p ] ; 4 uses
  %i.cs = icmp samesign ult i32 %.sink.i, 768
  br i1 %i.cs, label %sqlite3_qrf_wcwidth.exit, label %.preheader.i62

.preheader.i62:                                   ; preds = %sqlite3_qrf_decode_utf8.exit, %bb.x
  %.01935.i = phi i32 [ %.2.i, %bb.x ], [ 302, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %.02034.i = phi i32 [ %.222.i, %bb.x ], [ 0, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %i.ct = add nsw i32 %.02034.i, %.01935.i
  %i.cu = sdiv i32 %i.ct, 2                       ; 3 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !49 ; 2 uses
  %i.cz = icmp slt i32 %i.cy, %.sink.i
  br i1 %i.cz, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.preheader.i62
  %i.da = icmp sgt i32 %i.cy, %.sink.i
  br i1 %i.da, label %bb.w, label %.thread.i

bb.w:                                             ; preds = %bb.v
  %i.db = add nsw i32 %i.cu, -1
  br label %bb.x

.thread.i:                                        ; preds = %bb.v
  %i.dc = load i8, ptr %i.cw, align 8, !tbaa !50
  br label %sqlite3_qrf_wcwidth.exit

bb.x:                                             ; preds = %bb.w, %.preheader.i62
  %.222.i = phi i32 [ %i.cu, %.preheader.i62 ], [ %.02034.i, %bb.w ] ; 3 uses
  %.2.i = phi i32 [ %.01935.i, %.preheader.i62 ], [ %i.db, %bb.w ] ; 3 uses
  %i.dd = add nsw i32 %.2.i, -1
  %i.de = icmp slt i32 %.222.i, %i.dd
  br i1 %i.de, label %.preheader.i62, label %bb.y, !llvm.loop !0

bb.y:                                             ; preds = %bb.x
  %i.df = sext i32 %.2.i to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.df ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !49
  %i.dj = icmp sgt i32 %i.di, %.sink.i
  br i1 %i.dj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dk = sext i32 %.222.i to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !50
  br label %sqlite3_qrf_wcwidth.exit

bb.aa:                                            ; preds = %bb.y
  %i.dn = load i8, ptr %i.dg, align 8, !tbaa !50
  br label %sqlite3_qrf_wcwidth.exit

end_hunk_4
begin_hunk_5_@qrfWidthPrint:bb.a
  %i.d = icmp eq ptr %2, null
  %spec.store.select1 = select i1 %i.d, ptr @.str.48, ptr %2 ; 3 uses
  %i.e = load i8, ptr %spec.store.select1, align 1, !tbaa !52 ; 2 uses
  %.not7 = icmp eq i8 %i.e, 0
  br i1 %.not7, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.x
  %i.f = phi i8 [ %i.db, %bb.x ], [ %i.e, %bb.a ] ; 3 uses
  %i.g = phi ptr [ %i.da, %bb.x ], [ %spec.store.select1, %bb.a ] ; 9 uses
  %.0519 = phi i32 [ %.2, %bb.x ], [ 0, %bb.a ]   ; 6 uses
  %.0528 = phi i32 [ %.254, %bb.x ], [ 0, %bb.a ] ; 3 uses
  %i.h = icmp ugt i8 %i.f, -65
  br i1 %i.h, label %bb.b, label %bb.t

bb.b:                                             ; preds = %.lr.ph
  %i.i = zext i8 %i.f to i32                      ; 6 uses
  %i.j = and i32 %i.i, 224
  %i.k = icmp eq i32 %i.j, 192
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !52
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = and i32 %i.n, 192
  %i.p = icmp eq i32 %i.o, 128
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = shl nuw nsw i32 %i.i, 6
  %i.r = and i32 %i.q, 1984
  %i.s = and i32 %i.n, 63
  %i.t = or disjoint i32 %i.s, %i.r
  br label %sqlite3_qrf_decode_utf8.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.u = and i32 %i.i, 240
  %i.v = icmp eq i32 %i.u, 224
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !52
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = and i32 %i.y, 192
  %i.aa = icmp eq i32 %i.z, 128
  br i1 %i.aa, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !52
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  %i.ae = and i32 %i.ad, 192
  %i.af = icmp eq i32 %i.ae, 128
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = shl nuw nsw i32 %i.i, 12
  %i.ah = and i32 %i.ag, 61440
  %i.ai = shl nuw nsw i32 %i.y, 6
  %i.aj = and i32 %i.ai, 4032
  %i.ak = or disjoint i32 %i.aj, %i.ah
  %i.al = and i32 %i.ad, 63
  %i.am = or disjoint i32 %i.ak, %i.al
  br label %sqlite3_qrf_decode_utf8.exit

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.an = and i32 %i.i, 248
  %i.ao = icmp eq i32 %i.an, 240
  br i1 %i.ao, label %bb.j, label %sqlite3_qrf_wcwidth.exit

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !52
  %i.ar = zext i8 %i.aq to i32                    ; 2 uses
  %i.as = and i32 %i.ar, 192
  %i.at = icmp eq i32 %i.as, 128
  br i1 %i.at, label %bb.k, label %sqlite3_qrf_wcwidth.exit

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !52
  %i.aw = zext i8 %i.av to i32                    ; 2 uses
  %i.ax = and i32 %i.aw, 192
  %i.ay = icmp eq i32 %i.ax, 128
  br i1 %i.ay, label %bb.l, label %sqlite3_qrf_wcwidth.exit

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !52
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = and i32 %i.bb, 192
  %i.bd = icmp eq i32 %i.bc, 128
  br i1 %i.bd, label %bb.m, label %sqlite3_qrf_wcwidth.exit

bb.m:                                             ; preds = %bb.l
  %i.be = shl nuw nsw i32 %i.i, 18
  %i.bf = and i32 %i.be, 1835008
  %i.bg = shl nuw nsw i32 %i.ar, 12
  %i.bh = and i32 %i.bg, 258048
  %i.bi = or disjoint i32 %i.bh, %i.bf
  %i.bj = shl nuw nsw i32 %i.aw, 6
  %i.bk = and i32 %i.bj, 4032
  %i.bl = or disjoint i32 %i.bi, %i.bk
  %i.bm = and i32 %i.bb, 63
  %i.bn = or disjoint i32 %i.bl, %i.bm
  br label %sqlite3_qrf_decode_utf8.exit

sqlite3_qrf_decode_utf8.exit:                     ; preds = %bb.d, %bb.h, %bb.m
  %.sink.i = phi i32 [ %i.t, %bb.d ], [ %i.bn, %bb.m ], [ %i.am, %bb.h ] ; 4 uses
  %.0.i = phi i32 [ 2, %bb.d ], [ 4, %bb.m ], [ 3, %bb.h ] ; 4 uses
  %i.bo = icmp samesign ult i32 %.sink.i, 768
  br i1 %i.bo, label %sqlite3_qrf_wcwidth.exit, label %.preheader.i

.preheader.i:                                     ; preds = %sqlite3_qrf_decode_utf8.exit, %bb.p
  %.01935.i = phi i32 [ %.2.i, %bb.p ], [ 302, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %.02034.i = phi i32 [ %.222.i, %bb.p ], [ 0, %sqlite3_qrf_decode_utf8.exit ] ; 2 uses
  %i.bp = add nsw i32 %.02034.i, %.01935.i
  %i.bq = sdiv i32 %i.bp, 2                       ; 3 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !49 ; 2 uses
  %i.bv = icmp slt i32 %i.bu, %.sink.i
  br i1 %i.bv, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.preheader.i
  %i.bw = icmp sgt i32 %i.bu, %.sink.i
  br i1 %i.bw, label %bb.o, label %.thread.i

bb.o:                                             ; preds = %bb.n
  %i.bx = add nsw i32 %i.bq, -1
  br label %bb.p

.thread.i:                                        ; preds = %bb.n
  %i.by = load i8, ptr %i.bs, align 8, !tbaa !50
  br label %sqlite3_qrf_wcwidth.exit

bb.p:                                             ; preds = %bb.o, %.preheader.i
  %.222.i = phi i32 [ %i.bq, %.preheader.i ], [ %.02034.i, %bb.o ] ; 3 uses
  %.2.i = phi i32 [ %.01935.i, %.preheader.i ], [ %i.bx, %bb.o ] ; 3 uses
  %i.bz = add nsw i32 %.2.i, -1
  %i.ca = icmp slt i32 %.222.i, %i.bz
  br i1 %i.ca, label %.preheader.i, label %bb.q, !llvm.loop !0

bb.q:                                             ; preds = %bb.p
  %i.cb = sext i32 %.2.i to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !49
  %i.cf = icmp sgt i32 %i.ce, %.sink.i
  br i1 %i.cf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cg = sext i32 %.222.i to i64
  %i.ch = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !50
  br label %sqlite3_qrf_wcwidth.exit

bb.s:                                             ; preds = %bb.q
  %i.cj = load i8, ptr %i.cc, align 8, !tbaa !50
  br label %sqlite3_qrf_wcwidth.exit

sqlite3_qrf_wcwidth.exit:                         ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %sqlite3_qrf_decode_utf8.exit, %.thread.i, %bb.r, %bb.s
  %.0.i3 = phi i32 [ %.0.i, %bb.s ], [ %.0.i, %.thread.i ], [ %.0.i, %bb.r ], [ %.0.i, %sqlite3_qrf_decode_utf8.exit ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.i ]
  %.225.shrunk.i = phi i8 [ %i.cj, %bb.s ], [ %i.by, %.thread.i ], [ %i.ci, %bb.r ], [ 1, %sqlite3_qrf_decode_utf8.exit ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.i ]
  %.225.i = zext i8 %.225.shrunk.i to i32
  %i.ck = add nsw i32 %.0519, %.225.i             ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, %i.c
  br i1 %i.cl, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %bb.x

bb.t:                                             ; preds = %.lr.ph
  %i.cm = icmp eq i8 %i.f, 27
  br i1 %i.cm, label %bb.u, label %qrfIsVt100.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !52
  %.not.i = icmp eq i8 %i.co, 91
  br i1 %.not.i, label %.preheader.i64, label %qrfIsVt100.exit.thread

.preheader.i64:                                   ; preds = %bb.u, %.preheader.i64
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader.i64 ], [ 2, %bb.u ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !52
  %i.cr = and i8 %i.cq, -16
  %or.cond.i = icmp eq i8 %i.cr, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %or.cond.i, label %.preheader.i64, label %.critedge.i, !llvm.loop !1

.critedge.i:                                      ; preds = %.preheader.i64, %.critedge.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %.critedge.i ], [ %indvars.iv.i, %.preheader.i64 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv25.i
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !52  ; 2 uses
  %i.cu = and i8 %i.ct, -16
  %or.cond22.i = icmp eq i8 %i.cu, 32
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  br i1 %or.cond22.i, label %.critedge.i, label %.critedge2.i, !llvm.loop !2

.critedge2.i:                                     ; preds = %.critedge.i
  %i.cv = add i8 %i.ct, -64
  %or.cond23.i = icmp ult i8 %i.cv, 63
  br i1 %or.cond23.i, label %bb.v, label %qrfIsVt100.exit.thread

bb.v:                                             ; preds = %.critedge2.i
  %i.cw = trunc nuw nsw i64 %indvars.iv25.i to i32
  %i.cx = add nuw nsw i32 %i.cw, 1
  br label %bb.x

qrfIsVt100.exit.thread:                           ; preds = %.critedge2.i, %bb.u, %bb.t
  %.not62 = icmp slt i32 %.0519, %i.c
  br i1 %.not62, label %bb.w, label %sqlite3_qrf_wcwidth.exit._crit_edge

bb.w:                                             ; preds = %qrfIsVt100.exit.thread
  %i.cy = add nsw i32 %.0519, 1
  br label %bb.x

bb.x:                                             ; preds = %sqlite3_qrf_wcwidth.exit, %bb.v, %bb.w
  %.0.i3.pn = phi i32 [ %.0.i3, %sqlite3_qrf_wcwidth.exit ], [ %i.cx, %bb.v ], [ 1, %bb.w ]
  %.2 = phi i32 [ %i.ck, %sqlite3_qrf_wcwidth.exit ], [ %.0519, %bb.v ], [ %i.cy, %bb.w ] ; 2 uses
  %.254 = add nsw i32 %.0.i3.pn, %.0528           ; 3 uses
  %i.cz = sext i32 %.254 to i64
  %i.da = getelementptr inbounds i8, ptr %spec.store.select1, i64 %i.cz ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !52  ; 2 uses
  %.not = icmp eq i8 %i.db, 0
  br i1 %.not, label %sqlite3_qrf_wcwidth.exit._crit_edge, label %.lr.ph, !llvm.loop !1049

sqlite3_qrf_wcwidth.exit._crit_edge:              ; preds = %bb.x, %qrfIsVt100.exit.thread, %sqlite3_qrf_wcwidth.exit, %bb.a
  %.052.lcssa = phi i32 [ 0, %bb.a ], [ %.0528, %sqlite3_qrf_wcwidth.exit ], [ %.0528, %qrfIsVt100.exit.thread ], [ %.254, %bb.x ] ; 3 uses
  %.051.lcssa = phi i32 [ 0, %bb.a ], [ %.0519, %sqlite3_qrf_wcwidth.exit ], [ %.0519, %qrfIsVt100.exit.thread ], [ %.2, %bb.x ] ; 3 uses
  %.not63 = icmp slt i32 %.051.lcssa, %i.c
  br i1 %.not63, label %bb.z, label %bb.y

bb.y:                                             ; preds = %sqlite3_qrf_wcwidth.exit._crit_edge
  tail call void @sqlite3_str_append(ptr noundef %0, ptr noundef %2, i32 noundef %.052.lcssa) #45
  br label %bb.ac

bb.z:                                             ; preds = %sqlite3_qrf_wcwidth.exit._crit_edge
  br i1 %i.b, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dc = sub nsw i32 %i.c, %.051.lcssa
  tail call void @sqlite3_str_appendchar(ptr noundef %0, i32 noundef %i.dc, i8 noundef signext 32) #45
  tail call void @sqlite3_str_append(ptr noundef %0, ptr noundef %2, i32 noundef %.052.lcssa) #45
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  tail call void @sqlite3_str_append(ptr noundef %0, ptr noundef %2, i32 noundef %.052.lcssa) #45
  %i.dd = sub nsw i32 %i.c, %.051.lcssa
  tail call void @sqlite3_str_appendchar(ptr noundef %0, i32 noundef %i.dd, i8 noundef signext 32) #45
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.y
  ret void
}

declare i32 @sqlite3_bind_pointer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfOneJsonRow(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !71
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !68
  %i.f = tail call ptr @sqlite3_column_name(ptr noundef %i.e, i32 noundef 0) #45
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !69
  tail call fastcc void @qrfEncodeText(ptr noundef %0, ptr noundef %.pre, ptr noundef %i.f)
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !69
  tail call void @sqlite3_str_append(ptr noundef %i.g, ptr noundef nonnull @.str.252, i32 noundef 1) #45
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !69
  tail call fastcc void @qrfRenderValue(ptr noundef %0, ptr noundef %i.h, i32 noundef 0)
  %i.i = load i32, ptr %i.a, align 4, !tbaa !71
  %i.j = icmp sgt i32 %i.i, 1
  br i1 %i.j, label %.peel.next, label %._crit_edge

.peel.next:                                       ; preds = %bb.b, %.peel.next
  %.017 = phi i32 [ %i.n, %.peel.next ], [ 1, %bb.b ] ; 3 uses
  %i.k = load ptr, ptr %0, align 8, !tbaa !68
  %i.l = tail call ptr @sqlite3_column_name(ptr noundef %i.k, i32 noundef %.017) #45
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !69
  tail call void @sqlite3_str_append(ptr noundef %i.m, ptr noundef nonnull @.str.163, i32 noundef 1) #45
  %i.n = add nuw nsw i32 %.017, 1                 ; 2 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !69
  tail call fastcc void @qrfEncodeText(ptr noundef %0, ptr noundef %i.o, ptr noundef %i.l)
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !69
  tail call void @sqlite3_str_append(ptr noundef %i.p, ptr noundef nonnull @.str.252, i32 noundef 1) #45
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !69
  tail call fastcc void @qrfRenderValue(ptr noundef %0, ptr noundef %i.q, i32 noundef %.017)
  %i.r = load i32, ptr %i.a, align 4, !tbaa !71
  %i.s = icmp slt i32 %i.n, %i.r
  br i1 %i.s, label %.peel.next, label %._crit_edge, !llvm.loop !1050

._crit_edge:                                      ; preds = %.peel.next, %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !107
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %qrfWrite.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !69
  %i.x = tail call i32 @sqlite3_str_length(ptr noundef %i.w) #45 ; 3 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.d, label %qrfWrite.exit

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !107
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !108
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !69
  %i.ad = tail call ptr @sqlite3_str_value(ptr noundef %i.ac) #45
  %i.ae = zext nneg i32 %i.x to i64
  %i.af = tail call i32 %i.z(ptr noundef %i.ab, ptr noundef %i.ad, i64 noundef %i.ae) #45, !inline_history !7 ; 2 uses
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !69
  tail call void @sqlite3_str_reset(ptr noundef %i.ag) #45
  %.not11.i = icmp eq i32 %i.af, 0
  br i1 %.not11.i, label %qrfWrite.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @qrfError(ptr noundef nonnull %0, i32 noundef %i.af, ptr noundef nonnull @.str.217, i32 noundef %i.x)
  br label %qrfWrite.exit

qrfWrite.exit:                                    ; preds = %._crit_edge, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @qrfEqpRender(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %qrfEqpReset.exit45, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !117  ; 6 uses
  %.not36 = icmp eq ptr %i.c, null
  br i1 %.not36, label %qrfEqpReset.exit45, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i8, ptr %i.d, align 8, !tbaa !52
  %i.f = icmp eq i8 %i.e, 45
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.lr.ph.i, label %bb.e

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.011.i = phi ptr [ %i.k, %.lr.ph.i ], [ %i.c, %bb.d ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.011.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !115  ; 2 uses
  tail call void @sqlite3_free(ptr noundef nonnull %.011.i) #45
  %.not9.i = icmp eq ptr %i.k, null
  br i1 %.not9.i, label %qrfEqpReset.exit45.sink.split.sink.split, label %.lr.ph.i, !llvm.loop !1051

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 19
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.m, ptr noundef nonnull @.str.253, ptr noundef nonnull %i.n) #45
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !115
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !52
  store ptr %i.o, ptr %i.p, align 8, !tbaa !117
  tail call void @sqlite3_free(ptr noundef nonnull %i.c) #45
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !69
  tail call void @sqlite3_str_appendall(ptr noundef %i.r, ptr noundef nonnull @.str.260) #45
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store i8 0, ptr %i.t, align 4, !tbaa !52
  tail call fastcc void @qrfEqpRenderLevel(ptr noundef %0, i32 noundef 0)
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %.not.i37 = icmp eq ptr %i.u, null
  br i1 %.not.i37, label %qrfEqpReset.exit45, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !117  ; 2 uses
  %.not910.i38 = icmp eq ptr %i.v, null
  br i1 %.not910.i38, label %qrfEqpReset.exit45.sink.split, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %bb.h, %.lr.ph.i39
  %.011.i40 = phi ptr [ %i.x, %.lr.ph.i39 ], [ %i.v, %bb.h ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i40, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !115  ; 2 uses
  tail call void @sqlite3_free(ptr noundef nonnull %.011.i40) #45
  %.not9.i41 = icmp eq ptr %i.x, null
  br i1 %.not9.i41, label %qrfEqpReset.exit45.sink.split.sink.split, label %.lr.ph.i39, !llvm.loop !1051

end_hunk_5
