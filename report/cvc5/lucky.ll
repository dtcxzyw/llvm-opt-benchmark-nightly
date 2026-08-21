Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/lucky?download=true
inline.NumInlined: 127
inline.NumDeleted: 25
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN7CaDiCaL8Internal7unluckyEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef returned %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !154
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.d, align 8, !tbaa !154
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 %1
}

declare void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 11) i32 @_ZN7CaDiCaL8Internal27trivially_false_satisfiableEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155  ; 2 uses
  %.not96110 = icmp eq ptr %i.b, %i.d
  br i1 %.not96110, label %._crit_edge, label %.lr.ph112

.lr.ph112:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5672
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph112, %_ZN7CaDiCaL8Internal7unluckyEi.exit
  %.sroa.065.0111 = phi ptr [ %i.b, %.lr.ph112 ], [ %i.bc, %_ZN7CaDiCaL8Internal7unluckyEi.exit ] ; 2 uses
  %i.k = load volatile i8, ptr %i.e, align 8, !tbaa !156, !range !157, !noundef !158
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.g, align 4, !tbaa !159  ; 3 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.g, align 4, !tbaa !159
  %i.o = icmp eq i32 %i.m, 1
  br i1 %i.o, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !160
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 360
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !161  ; 3 uses
  %.not3.i = icmp eq ptr %i.r, null
  br i1 %.not3.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.f, align 8, !tbaa !180  ; 2 uses
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.f, align 8, !tbaa !180
  %.not4.i = icmp eq i32 %i.s, 0
  br i1 %.not4.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.i, align 8, !tbaa !181
  %i.v = mul nsw i32 %i.u, 100
  store i32 %i.v, ptr %i.f, align 8, !tbaa !180
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !182
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.r), !inline_history !184
  br i1 %i.z, label %.sink.split.i, label %bb.k

.sink.split.i:                                    ; preds = %bb.g, %bb.d
  store volatile i8 1, ptr %i.e, align 8, !tbaa !156
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit: ; preds = %bb.b, %.sink.split.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !8
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !154
  %.not.i48 = icmp eq ptr %i.ae, null
  br i1 %.not.i48, label %bb.ag, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.ad, align 8, !tbaa !154
  br label %bb.ag

bb.k:                                             ; preds = %bb.f, %bb.e, %bb.g
  %i.af = load ptr, ptr %.sroa.065.0111, align 8, !tbaa !185 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 2064
  %or.cond47 = icmp eq i32 %i.ai, 0
  br i1 %or.cond47, label %bb.l, label %_ZN7CaDiCaL8Internal7unluckyEi.exit

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !186 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %.idx = shl nsw i64 %i.am, 2
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 %.idx
  %.not45.not106 = icmp eq i32 %i.al, 0
  br i1 %.not45.not106, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !187
  br label %bb.n

bb.m:                                             ; preds = %.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %.0107, i64 4 ; 2 uses
  %.not45.not = icmp eq ptr %i.ap, %i.an
  br i1 %.not45.not, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %.0107 = phi ptr [ %i.aj, %.lr.ph ], [ %i.ap, %bb.m ] ; 2 uses
  %i.aq = load i32, ptr %.0107, align 4, !tbaa !186 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !188 ; 2 uses
  %i.au = icmp sgt i8 %i.at, 0
  br i1 %i.au, label %_ZN7CaDiCaL8Internal7unluckyEi.exit, label %.thread

.thread:                                          ; preds = %bb.n
  %i.av = icmp ne i8 %i.at, 0
  %i.aw = icmp sgt i32 %i.aq, 0
  %or.cond = or i1 %i.aw, %i.av
  br i1 %or.cond, label %bb.m, label %_ZN7CaDiCaL8Internal7unluckyEi.exit

.critedge:                                        ; preds = %bb.l, %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !8
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.critedge
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !154
  %.not.i49 = icmp eq ptr %i.bb, null
  br i1 %.not.i49, label %bb.ag, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.ba, align 8, !tbaa !154
  br label %bb.ag

_ZN7CaDiCaL8Internal7unluckyEi.exit:              ; preds = %bb.n, %.thread, %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.065.0111, i64 8 ; 2 uses
  %.not96 = icmp eq ptr %i.bc, %i.d
  br i1 %.not96, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_ZN7CaDiCaL8Internal7unluckyEi.exit, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 5688
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !189, !nonnull !158, !align !190
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !186 ; 2 uses
  %.not97113 = icmp eq i32 %i.bf, 0
  br i1 %.not97113, label %._crit_edge117, label %.lr.ph116

.lr.ph116:                                        ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 5672
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 472
  %zext = zext i32 %i.bf to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph116, %_ZN7CaDiCaL8Internal7unluckyEi.exit58
  %indvars.iv = phi i64 [ 1, %.lr.ph116 ], [ %indvars.iv.next, %_ZN7CaDiCaL8Internal7unluckyEi.exit58 ] ; 4 uses
  %i.bm = load volatile i8, ptr %i.bg, align 8, !tbaa !156, !range !157, !noundef !158
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit56, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = load i32, ptr %i.bi, align 4, !tbaa !159 ; 3 uses
  %.not.i51 = icmp eq i32 %i.bo, 0
  br i1 %.not.i51, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = add nsw i32 %i.bo, -1
  store i32 %i.bp, ptr %i.bi, align 4, !tbaa !159
  %i.bq = icmp eq i32 %i.bo, 1
  br i1 %i.bq, label %.sink.split.i55, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.br = load ptr, ptr %i.bj, align 8, !tbaa !160
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 360
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !161 ; 3 uses
  %.not3.i52 = icmp eq ptr %i.bt, null
  br i1 %.not3.i52, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = load i32, ptr %i.bh, align 8, !tbaa !180 ; 2 uses
  %i.bv = add nsw i32 %i.bu, -1
  store i32 %i.bv, ptr %i.bh, align 8, !tbaa !180
  %.not4.i53 = icmp eq i32 %i.bu, 0
  br i1 %.not4.i53, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.bw = load i32, ptr %i.bk, align 8, !tbaa !181
  %i.bx = mul nsw i32 %i.bw, 10
  store i32 %i.bx, ptr %i.bh, align 8, !tbaa !180
  %i.by = load ptr, ptr %i.bt, align 8, !tbaa !182
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = tail call noundef zeroext i1 %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bt), !inline_history !184
  br i1 %i.cb, label %.sink.split.i55, label %bb.aa

.sink.split.i55:                                  ; preds = %bb.w, %bb.t
  store volatile i8 1, ptr %i.bg, align 8, !tbaa !156
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit56

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit56: ; preds = %bb.r, %.sink.split.i55
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !8
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit56
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit56
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !154
  %.not.i57 = icmp eq ptr %i.cg, null
  br i1 %.not.i57, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr null, ptr %i.cf, align 8, !tbaa !154
  br label %bb.ag

bb.aa:                                            ; preds = %bb.v, %bb.u, %bb.w
  %i.ch = load ptr, ptr %i.bl, align 8, !tbaa !187
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %indvars.iv
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !188
  %.not46 = icmp eq i8 %i.cj, 0
  br i1 %.not46, label %bb.ab, label %_ZN7CaDiCaL8Internal7unluckyEi.exit58

bb.ab:                                            ; preds = %bb.aa
  %1 = trunc i64 %indvars.iv to i32
  %i.ck = sub i32 0, %1
  tail call void @_ZN7CaDiCaL8Internal22search_assume_decisionEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %i.ck)
  %i.cl = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.cl, label %_ZN7CaDiCaL8Internal7unluckyEi.exit58, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !8
  %i.co = icmp sgt i32 %i.cn, 0
  br i1 %i.co, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !154
  %.not.i59 = icmp eq ptr %i.cq, null
  br i1 %.not.i59, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store ptr null, ptr %i.cp, align 8, !tbaa !154
  br label %bb.ag

_ZN7CaDiCaL8Internal7unluckyEi.exit58:            ; preds = %bb.aa, %bb.ab
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not97 = icmp eq i64 %indvars.iv, %zext
  br i1 %.not97, label %._crit_edge117, label %bb.r

._crit_edge117:                                   ; preds = %_ZN7CaDiCaL8Internal7unluckyEi.exit58, %._crit_edge
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 4320 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !191
  %i.ct = add nsw i64 %i.cs, 1
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !191
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.y, %bb.z, %bb.q, %bb.p, %bb.j, %bb.i, %._crit_edge117
  %.7 = phi i32 [ 10, %._crit_edge117 ], [ -1, %bb.i ], [ 0, %bb.q ], [ 0, %bb.p ], [ -1, %bb.j ], [ 0, %bb.af ], [ 0, %bb.ae ], [ -1, %bb.y ], [ -1, %bb.z ]
  ret i32 %.7
}

declare void @_ZN7CaDiCaL8Internal22search_assume_decisionEi(ptr noundef nonnull align 8 dereferenceable(5704), i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 11) i32 @_ZN7CaDiCaL8Internal26trivially_true_satisfiableEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155  ; 2 uses
  %.not96110 = icmp eq ptr %i.b, %i.d
  br i1 %.not96110, label %._crit_edge, label %.lr.ph112

.lr.ph112:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5672
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph112, %_ZN7CaDiCaL8Internal7unluckyEi.exit
  %.sroa.065.0111 = phi ptr [ %i.b, %.lr.ph112 ], [ %i.bc, %_ZN7CaDiCaL8Internal7unluckyEi.exit ] ; 2 uses
  %i.k = load volatile i8, ptr %i.e, align 8, !tbaa !156, !range !157, !noundef !158
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.g, align 4, !tbaa !159  ; 3 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.g, align 4, !tbaa !159
  %i.o = icmp eq i32 %i.m, 1
  br i1 %i.o, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !160
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 360
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !161  ; 3 uses
  %.not3.i = icmp eq ptr %i.r, null
  br i1 %.not3.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.f, align 8, !tbaa !180  ; 2 uses
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.f, align 8, !tbaa !180
  %.not4.i = icmp eq i32 %i.s, 0
  br i1 %.not4.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.i, align 8, !tbaa !181
  %i.v = mul nsw i32 %i.u, 100
  store i32 %i.v, ptr %i.f, align 8, !tbaa !180
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !182
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.r), !inline_history !184
  br i1 %i.z, label %.sink.split.i, label %bb.k

.sink.split.i:                                    ; preds = %bb.g, %bb.d
  store volatile i8 1, ptr %i.e, align 8, !tbaa !156
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit: ; preds = %bb.b, %.sink.split.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !8
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !154
  %.not.i48 = icmp eq ptr %i.ae, null
  br i1 %.not.i48, label %bb.ag, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.ad, align 8, !tbaa !154
  br label %bb.ag

bb.k:                                             ; preds = %bb.f, %bb.e, %bb.g
  %i.af = load ptr, ptr %.sroa.065.0111, align 8, !tbaa !185 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 2064
  %or.cond47 = icmp eq i32 %i.ai, 0
  br i1 %or.cond47, label %bb.l, label %_ZN7CaDiCaL8Internal7unluckyEi.exit

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !186 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %.idx = shl nsw i64 %i.am, 2
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 %.idx
  %.not45.not106 = icmp eq i32 %i.al, 0
  br i1 %.not45.not106, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !187
  br label %bb.n

bb.m:                                             ; preds = %.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %.0107, i64 4 ; 2 uses
  %.not45.not = icmp eq ptr %i.ap, %i.an
  br i1 %.not45.not, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %.0107 = phi ptr [ %i.aj, %.lr.ph ], [ %i.ap, %bb.m ] ; 2 uses
  %i.aq = load i32, ptr %.0107, align 4, !tbaa !186 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !188 ; 2 uses
  %i.au = icmp sgt i8 %i.at, 0
  br i1 %i.au, label %_ZN7CaDiCaL8Internal7unluckyEi.exit, label %.thread

.thread:                                          ; preds = %bb.n
  %i.av = icmp ne i8 %i.at, 0
  %i.aw = icmp slt i32 %i.aq, 0
  %or.cond = or i1 %i.aw, %i.av
  br i1 %or.cond, label %bb.m, label %_ZN7CaDiCaL8Internal7unluckyEi.exit

.critedge:                                        ; preds = %bb.l, %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !8
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.critedge
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !154
  %.not.i49 = icmp eq ptr %i.bb, null
  br i1 %.not.i49, label %bb.ag, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.ba, align 8, !tbaa !154
  br label %bb.ag

_ZN7CaDiCaL8Internal7unluckyEi.exit:              ; preds = %bb.n, %.thread, %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.065.0111, i64 8 ; 2 uses
  %.not96 = icmp eq ptr %i.bc, %i.d
  br i1 %.not96, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_ZN7CaDiCaL8Internal7unluckyEi.exit, %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 5688
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !189, !nonnull !158, !align !190
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !186 ; 2 uses
  %.not97113 = icmp eq i32 %i.bf, 0
  br i1 %.not97113, label %._crit_edge117, label %.lr.ph116

.lr.ph116:                                        ; preds = %._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 5672
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 472
  %zext = zext i32 %i.bf to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph116, %_ZN7CaDiCaL8Internal7unluckyEi.exit58
  %indvars.iv = phi i64 [ 1, %.lr.ph116 ], [ %indvars.iv.next, %_ZN7CaDiCaL8Internal7unluckyEi.exit58 ] ; 4 uses
  %i.bm = load volatile i8, ptr %i.bg, align 8, !tbaa !156, !range !157, !noundef !158
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit56, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = load i32, ptr %i.bi, align 4, !tbaa !159 ; 3 uses
  %.not.i51 = icmp eq i32 %i.bo, 0
  br i1 %.not.i51, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = add nsw i32 %i.bo, -1
  store i32 %i.bp, ptr %i.bi, align 4, !tbaa !159
  %i.bq = icmp eq i32 %i.bo, 1
  br i1 %i.bq, label %.sink.split.i55, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.br = load ptr, ptr %i.bj, align 8, !tbaa !160
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 360
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !161 ; 3 uses
  %.not3.i52 = icmp eq ptr %i.bt, null
  br i1 %.not3.i52, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = load i32, ptr %i.bh, align 8, !tbaa !180 ; 2 uses
  %i.bv = add nsw i32 %i.bu, -1
  store i32 %i.bv, ptr %i.bh, align 8, !tbaa !180
  %.not4.i53 = icmp eq i32 %i.bu, 0
  br i1 %.not4.i53, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.bw = load i32, ptr %i.bk, align 8, !tbaa !181
  %i.bx = mul nsw i32 %i.bw, 10
  store i32 %i.bx, ptr %i.bh, align 8, !tbaa !180
  %i.by = load ptr, ptr %i.bt, align 8, !tbaa !182
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = tail call noundef zeroext i1 %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bt), !inline_history !184
  br i1 %i.cb, label %.sink.split.i55, label %bb.aa

.sink.split.i55:                                  ; preds = %bb.w, %bb.t
  store volatile i8 1, ptr %i.bg, align 8, !tbaa !156
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit56

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit56: ; preds = %bb.r, %.sink.split.i55
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !8
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit56
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit56
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !154
  %.not.i57 = icmp eq ptr %i.cg, null
  br i1 %.not.i57, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr null, ptr %i.cf, align 8, !tbaa !154
  br label %bb.ag

bb.aa:                                            ; preds = %bb.v, %bb.u, %bb.w
  %i.ch = load ptr, ptr %i.bl, align 8, !tbaa !187
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %indvars.iv
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !188
  %.not46 = icmp eq i8 %i.cj, 0
  br i1 %.not46, label %bb.ab, label %_ZN7CaDiCaL8Internal7unluckyEi.exit58

bb.ab:                                            ; preds = %bb.aa
  %1 = trunc nsw i64 %indvars.iv to i32
  tail call void @_ZN7CaDiCaL8Internal22search_assume_decisionEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %1)
  %i.ck = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.ck, label %_ZN7CaDiCaL8Internal7unluckyEi.exit58, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !8
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !154
  %.not.i59 = icmp eq ptr %i.cp, null
  br i1 %.not.i59, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store ptr null, ptr %i.co, align 8, !tbaa !154
  br label %bb.ag

_ZN7CaDiCaL8Internal7unluckyEi.exit58:            ; preds = %bb.aa, %bb.ab
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not97 = icmp eq i64 %indvars.iv, %zext
  br i1 %.not97, label %._crit_edge117, label %bb.r

._crit_edge117:                                   ; preds = %_ZN7CaDiCaL8Internal7unluckyEi.exit58, %._crit_edge
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 4312 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !192
  %i.cs = add nsw i64 %i.cr, 1
  store i64 %i.cs, ptr %i.cq, align 8, !tbaa !192
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.y, %bb.z, %bb.q, %bb.p, %bb.j, %bb.i, %._crit_edge117
  %.7 = phi i32 [ 10, %._crit_edge117 ], [ -1, %bb.i ], [ 0, %bb.q ], [ 0, %bb.p ], [ -1, %bb.j ], [ 0, %bb.af ], [ 0, %bb.ae ], [ -1, %bb.y ], [ -1, %bb.z ]
  ret i32 %.7
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 11) i32 @_ZN7CaDiCaL8Internal25forward_false_satisfiableEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5688
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189, !nonnull !158, !align !190
  %i.c = load i32, ptr %i.b, align 4, !tbaa !186  ; 2 uses
  %.not2023 = icmp eq i32 %i.c, 0
  br i1 %.not2023, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5672
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 472
  %zext = zext i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN7CaDiCaL8Internal7unluckyEi.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZN7CaDiCaL8Internal7unluckyEi.exit ] ; 4 uses
  %i.j = load volatile i8, ptr %i.d, align 8, !tbaa !156, !range !157, !noundef !158
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.f, align 4, !tbaa !159  ; 3 uses
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i32 %i.l, -1
  store i32 %i.m, ptr %i.f, align 4, !tbaa !159
  %i.n = icmp eq i32 %i.l, 1
  br i1 %i.n, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !160
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 360
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !161  ; 3 uses
  %.not3.i = icmp eq ptr %i.q, null
  br i1 %.not3.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.e, align 8, !tbaa !180  ; 2 uses
  %i.s = add nsw i32 %i.r, -1
  store i32 %i.s, ptr %i.e, align 8, !tbaa !180
  %.not4.i = icmp eq i32 %i.r, 0
  br i1 %.not4.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.h, align 8, !tbaa !181
  %i.u = mul nsw i32 %i.t, 100
  store i32 %i.u, ptr %i.e, align 8, !tbaa !180
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !182
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.q), !inline_history !184
  br i1 %i.y, label %.sink.split.i, label %bb.k

.sink.split.i:                                    ; preds = %bb.g, %bb.d
  store volatile i8 1, ptr %i.d, align 8, !tbaa !156
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit: ; preds = %bb.b, %.sink.split.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !8
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !154
  %.not.i9 = icmp eq ptr %i.ad, null
  br i1 %.not.i9, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.ac, align 8, !tbaa !154
  br label %bb.q

bb.k:                                             ; preds = %bb.f, %bb.e, %bb.g
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !187
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !188
  %.not = icmp eq i8 %i.ag, 0
  br i1 %.not, label %bb.l, label %_ZN7CaDiCaL8Internal7unluckyEi.exit

bb.l:                                             ; preds = %bb.k
  %1 = trunc i64 %indvars.iv to i32
  %i.ah = sub i32 0, %1
  tail call void @_ZN7CaDiCaL8Internal22search_assume_decisionEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %i.ah)
  %i.ai = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.ai, label %_ZN7CaDiCaL8Internal7unluckyEi.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !8
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !154
  %.not.i10 = icmp eq ptr %i.an, null
  br i1 %.not.i10, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %i.am, align 8, !tbaa !154
  br label %bb.q

_ZN7CaDiCaL8Internal7unluckyEi.exit:              ; preds = %bb.k, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not20 = icmp eq i64 %indvars.iv, %zext
  br i1 %.not20, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_ZN7CaDiCaL8Internal7unluckyEi.exit, %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 4336 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !193
  %i.aq = add nsw i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !193
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.i, %bb.j, %._crit_edge
  %.3 = phi i32 [ 10, %._crit_edge ], [ 0, %bb.p ], [ 0, %bb.o ], [ -1, %bb.i ], [ -1, %bb.j ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 11) i32 @_ZN7CaDiCaL8Internal24forward_true_satisfiableEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5688
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !189, !nonnull !158, !align !190
  %i.c = load i32, ptr %i.b, align 4, !tbaa !186  ; 2 uses
  %.not2023 = icmp eq i32 %i.c, 0
  br i1 %.not2023, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5672
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 472
  %zext = zext i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN7CaDiCaL8Internal7unluckyEi.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZN7CaDiCaL8Internal7unluckyEi.exit ] ; 4 uses
  %i.j = load volatile i8, ptr %i.d, align 8, !tbaa !156, !range !157, !noundef !158
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.f, align 4, !tbaa !159  ; 3 uses
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i32 %i.l, -1
  store i32 %i.m, ptr %i.f, align 4, !tbaa !159
  %i.n = icmp eq i32 %i.l, 1
  br i1 %i.n, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !160
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 360
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !161  ; 3 uses
  %.not3.i = icmp eq ptr %i.q, null
  br i1 %.not3.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.e, align 8, !tbaa !180  ; 2 uses
  %i.s = add nsw i32 %i.r, -1
  store i32 %i.s, ptr %i.e, align 8, !tbaa !180
  %.not4.i = icmp eq i32 %i.r, 0
  br i1 %.not4.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.h, align 8, !tbaa !181
  %i.u = mul nsw i32 %i.t, 10
  store i32 %i.u, ptr %i.e, align 8, !tbaa !180
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !182
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.q), !inline_history !184
  br i1 %i.y, label %.sink.split.i, label %bb.k

.sink.split.i:                                    ; preds = %bb.g, %bb.d
  store volatile i8 1, ptr %i.d, align 8, !tbaa !156
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit: ; preds = %bb.b, %.sink.split.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !8
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !154
  %.not.i9 = icmp eq ptr %i.ad, null
  br i1 %.not.i9, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.ac, align 8, !tbaa !154
  br label %bb.q

bb.k:                                             ; preds = %bb.f, %bb.e, %bb.g
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !187
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !188
  %.not = icmp eq i8 %i.ag, 0
  br i1 %.not, label %bb.l, label %_ZN7CaDiCaL8Internal7unluckyEi.exit

bb.l:                                             ; preds = %bb.k
  %1 = trunc nsw i64 %indvars.iv to i32
  tail call void @_ZN7CaDiCaL8Internal22search_assume_decisionEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %1)
  %i.ah = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.ah, label %_ZN7CaDiCaL8Internal7unluckyEi.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !154
  %.not.i10 = icmp eq ptr %i.am, null
  br i1 %.not.i10, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %i.al, align 8, !tbaa !154
  br label %bb.q

_ZN7CaDiCaL8Internal7unluckyEi.exit:              ; preds = %bb.k, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not20 = icmp eq i64 %indvars.iv, %zext
  br i1 %.not20, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_ZN7CaDiCaL8Internal7unluckyEi.exit, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 4328 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !194
  %i.ap = add nsw i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !194
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.i, %bb.j, %._crit_edge
  %.3 = phi i32 [ 10, %._crit_edge ], [ 0, %bb.p ], [ 0, %bb.o ], [ -1, %bb.i ], [ -1, %bb.j ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 11) i32 @_ZN7CaDiCaL8Internal26backward_false_satisfiableEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !195  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %_ZN7CaDiCaL8Internal7unluckyEi.exit

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5672
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.j = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ %i.j, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 4 uses
  %i.k = load volatile i8, ptr %i.d, align 8, !tbaa !156, !range !157, !noundef !158
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.f, align 4, !tbaa !159  ; 3 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.f, align 4, !tbaa !159
  %i.o = icmp eq i32 %i.m, 1
  br i1 %i.o, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !160
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 360
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !161  ; 3 uses
  %.not3.i = icmp eq ptr %i.r, null
  br i1 %.not3.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.e, align 8, !tbaa !180  ; 2 uses
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.e, align 8, !tbaa !180
  %.not4.i = icmp eq i32 %i.s, 0
  br i1 %.not4.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.h, align 8, !tbaa !181
  %i.v = mul nsw i32 %i.u, 10
  store i32 %i.v, ptr %i.e, align 8, !tbaa !180
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !182
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.r), !inline_history !184
  br i1 %i.z, label %.sink.split.i, label %bb.k

.sink.split.i:                                    ; preds = %bb.g, %bb.d
  store volatile i8 1, ptr %i.d, align 8, !tbaa !156
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit: ; preds = %bb.b, %.sink.split.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !8
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !154
  %.not.i8 = icmp eq ptr %i.ae, null
  br i1 %.not.i8, label %_ZN7CaDiCaL8Internal7unluckyEi.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.ad, align 8, !tbaa !154
  br label %_ZN7CaDiCaL8Internal7unluckyEi.exit.thread

bb.k:                                             ; preds = %bb.f, %bb.e, %bb.g
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !187
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !188
  %.not = icmp eq i8 %i.ah, 0
  br i1 %.not, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ai = trunc i64 %indvars.iv to i32
  %i.aj = sub i32 0, %i.ai
  tail call void @_ZN7CaDiCaL8Internal22search_assume_decisionEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %i.aj)
  %i.ak = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.ak, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.am = load i32, ptr %i.al, align 4, !tbaa !8
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !154
  %.not.i9 = icmp eq ptr %i.ap, null
  br i1 %.not.i9, label %_ZN7CaDiCaL8Internal7unluckyEi.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr null, ptr %i.ao, align 8, !tbaa !154
  br label %_ZN7CaDiCaL8Internal7unluckyEi.exit.thread

bb.q:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.aq = icmp sgt i64 %indvars.iv, 1
  br i1 %i.aq, label %bb.b, label %_ZN7CaDiCaL8Internal7unluckyEi.exit, !llvm.loop !196

_ZN7CaDiCaL8Internal7unluckyEi.exit:              ; preds = %bb.q, %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4352 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !198
  %i.at = add nsw i64 %i.as, 1
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !198
  br label %_ZN7CaDiCaL8Internal7unluckyEi.exit.thread

_ZN7CaDiCaL8Internal7unluckyEi.exit.thread:       ; preds = %bb.p, %bb.o, %bb.i, %bb.j, %_ZN7CaDiCaL8Internal7unluckyEi.exit
  %.1 = phi i32 [ 10, %_ZN7CaDiCaL8Internal7unluckyEi.exit ], [ 0, %bb.p ], [ 0, %bb.o ], [ -1, %bb.i ], [ -1, %bb.j ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 11) i32 @_ZN7CaDiCaL8Internal25backward_true_satisfiableEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !195  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %_ZN7CaDiCaL8Internal7unluckyEi.exit

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5672
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.j = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ %i.j, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 4 uses
  %i.k = load volatile i8, ptr %i.d, align 8, !tbaa !156, !range !157, !noundef !158
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.f, align 4, !tbaa !159  ; 3 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.f, align 4, !tbaa !159
  %i.o = icmp eq i32 %i.m, 1
  br i1 %i.o, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !160
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 360
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !161  ; 3 uses
  %.not3.i = icmp eq ptr %i.r, null
  br i1 %.not3.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.e, align 8, !tbaa !180  ; 2 uses
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.e, align 8, !tbaa !180
  %.not4.i = icmp eq i32 %i.s, 0
  br i1 %.not4.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.h, align 8, !tbaa !181
  %i.v = mul nsw i32 %i.u, 10
end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL8Internal25backward_true_satisfiableEv:bb.a

_ZN7CaDiCaL8Internal7unluckyEi.exit.thread:       ; preds = %bb.p, %bb.o, %bb.i, %bb.j, %_ZN7CaDiCaL8Internal7unluckyEi.exit
  %.1 = phi i32 [ 10, %_ZN7CaDiCaL8Internal7unluckyEi.exit ], [ 0, %bb.p ], [ 0, %bb.o ], [ -1, %bb.i ], [ -1, %bb.j ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 11) i32 @_ZN7CaDiCaL8Internal25positive_horn_satisfiableEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155  ; 2 uses
  %.not99110 = icmp eq ptr %i.b, %i.d
  br i1 %.not99110, label %._crit_edge114, label %.lr.ph113

.lr.ph113:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5672
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph113, %_ZN7CaDiCaL8Internal7unluckyEi.exit
  %.sroa.069.0111 = phi ptr [ %i.b, %.lr.ph113 ], [ %i.bi, %_ZN7CaDiCaL8Internal7unluckyEi.exit ] ; 2 uses
  %i.k = load volatile i8, ptr %i.e, align 8, !tbaa !156, !range !157, !noundef !158
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.g, align 4, !tbaa !159  ; 3 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.g, align 4, !tbaa !159
  %i.o = icmp eq i32 %i.m, 1
  br i1 %i.o, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !160
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 360
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !161  ; 3 uses
  %.not3.i = icmp eq ptr %i.r, null
  br i1 %.not3.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.f, align 8, !tbaa !180  ; 2 uses
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.f, align 8, !tbaa !180
  %.not4.i = icmp eq i32 %i.s, 0
  br i1 %.not4.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.i, align 8, !tbaa !181
  %i.v = mul nsw i32 %i.u, 10
  store i32 %i.v, ptr %i.f, align 8, !tbaa !180
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !182
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.r), !inline_history !184
  br i1 %i.z, label %.sink.split.i, label %bb.k

.sink.split.i:                                    ; preds = %bb.g, %bb.d
  store volatile i8 1, ptr %i.e, align 8, !tbaa !156
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit: ; preds = %bb.b, %.sink.split.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !8
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !154
  %.not.i50 = icmp eq ptr %i.ae, null
  br i1 %.not.i50, label %bb.al, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.ad, align 8, !tbaa !154
  br label %bb.al

bb.k:                                             ; preds = %bb.f, %bb.e, %bb.g
  %i.af = load ptr, ptr %.sroa.069.0111, align 8, !tbaa !185 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 2064
  %or.cond = icmp eq i32 %i.ai, 0
  br i1 %or.cond, label %bb.l, label %_ZN7CaDiCaL8Internal7unluckyEi.exit

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !186 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %.idx = shl nsw i64 %i.am, 2
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 %.idx
  %.not47107 = icmp eq i32 %i.al, 0
  br i1 %.not47107, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !187
  br label %bb.n

bb.m:                                             ; preds = %.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %.0108, i64 4 ; 2 uses
  %.not47 = icmp eq ptr %i.ap, %i.an
  br i1 %.not47, label %._crit_edge.thread, label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %.0108 = phi ptr [ %i.aj, %.lr.ph ], [ %i.ap, %bb.m ] ; 2 uses
  %i.aq = load i32, ptr %.0108, align 4, !tbaa !186 ; 4 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !188 ; 2 uses
  %i.au = icmp sgt i8 %i.at, 0
  br i1 %i.au, label %_ZN7CaDiCaL8Internal7unluckyEi.exit, label %.thread

.thread:                                          ; preds = %bb.n
  %i.av = icmp ne i8 %i.at, 0
  %i.aw = icmp slt i32 %i.aq, 0
  %or.cond101 = or i1 %i.aw, %i.av
  br i1 %or.cond101, label %bb.m, label %._crit_edge

._crit_edge:                                      ; preds = %.thread
  %.not48 = icmp eq i32 %i.aq, 0
  br i1 %.not48, label %._crit_edge.thread, label %bb.r

._crit_edge.thread:                               ; preds = %bb.l, %._crit_edge, %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !8
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %._crit_edge.thread
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.thread
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !154
  %.not.i51 = icmp eq ptr %i.bb, null
  br i1 %.not.i51, label %bb.al, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr %i.ba, align 8, !tbaa !154
  br label %bb.al

bb.r:                                             ; preds = %._crit_edge
  tail call void @_ZN7CaDiCaL8Internal22search_assume_decisionEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %i.aq)
  %i.bc = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.bc, label %_ZN7CaDiCaL8Internal7unluckyEi.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !8
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !154
  %.not.i53 = icmp eq ptr %i.bh, null
  br i1 %.not.i53, label %bb.al, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr null, ptr %i.bg, align 8, !tbaa !154
  br label %bb.al

_ZN7CaDiCaL8Internal7unluckyEi.exit:              ; preds = %bb.n, %bb.k, %bb.r
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.069.0111, i64 8 ; 2 uses
  %.not99 = icmp eq ptr %i.bi, %i.d
  br i1 %.not99, label %._crit_edge114, label %bb.b

._crit_edge114:                                   ; preds = %_ZN7CaDiCaL8Internal7unluckyEi.exit, %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 5688
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !189, !nonnull !158, !align !190
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !186 ; 2 uses
  %.not100115 = icmp eq i32 %i.bl, 0
  br i1 %.not100115, label %._crit_edge119, label %.lr.ph118

.lr.ph118:                                        ; preds = %._crit_edge114
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 5672
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 472
  %zext = zext i32 %i.bl to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph118, %_ZN7CaDiCaL8Internal7unluckyEi.exit62
  %indvars.iv = phi i64 [ 1, %.lr.ph118 ], [ %indvars.iv.next, %_ZN7CaDiCaL8Internal7unluckyEi.exit62 ] ; 4 uses
  %i.bs = load volatile i8, ptr %i.bm, align 8, !tbaa !156, !range !157, !noundef !158
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit60, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bu = load i32, ptr %i.bo, align 4, !tbaa !159 ; 3 uses
  %.not.i55 = icmp eq i32 %i.bu, 0
  br i1 %.not.i55, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = add nsw i32 %i.bu, -1
  store i32 %i.bv, ptr %i.bo, align 4, !tbaa !159
  %i.bw = icmp eq i32 %i.bu, 1
  br i1 %i.bw, label %.sink.split.i59, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bx = load ptr, ptr %i.bp, align 8, !tbaa !160
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 360
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !161 ; 3 uses
  %.not3.i56 = icmp eq ptr %i.bz, null
  br i1 %.not3.i56, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ca = load i32, ptr %i.bn, align 8, !tbaa !180 ; 2 uses
  %i.cb = add nsw i32 %i.ca, -1
  store i32 %i.cb, ptr %i.bn, align 8, !tbaa !180
  %.not4.i57 = icmp eq i32 %i.ca, 0
  br i1 %.not4.i57, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.cc = load i32, ptr %i.bq, align 8, !tbaa !181
  %i.cd = mul nsw i32 %i.cc, 10
  store i32 %i.cd, ptr %i.bn, align 8, !tbaa !180
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !182
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = tail call noundef zeroext i1 %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.bz), !inline_history !184
  br i1 %i.ch, label %.sink.split.i59, label %bb.af

.sink.split.i59:                                  ; preds = %bb.ab, %bb.y
  store volatile i8 1, ptr %i.bm, align 8, !tbaa !156
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit60

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit60: ; preds = %bb.w, %.sink.split.i59
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !8
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit60
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit60
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !154
  %.not.i61 = icmp eq ptr %i.cm, null
  br i1 %.not.i61, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr null, ptr %i.cl, align 8, !tbaa !154
  br label %bb.al

bb.af:                                            ; preds = %bb.aa, %bb.z, %bb.ab
  %i.cn = load ptr, ptr %i.br, align 8, !tbaa !187
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !188
  %.not49 = icmp eq i8 %i.cp, 0
  br i1 %.not49, label %bb.ag, label %_ZN7CaDiCaL8Internal7unluckyEi.exit62

bb.ag:                                            ; preds = %bb.af
  %1 = trunc i64 %indvars.iv to i32
  %i.cq = sub i32 0, %1
  tail call void @_ZN7CaDiCaL8Internal22search_assume_decisionEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %i.cq)
  %i.cr = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.cr, label %_ZN7CaDiCaL8Internal7unluckyEi.exit62, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !8
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !154
  %.not.i63 = icmp eq ptr %i.cw, null
  br i1 %.not.i63, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store ptr null, ptr %i.cv, align 8, !tbaa !154
  br label %bb.al

_ZN7CaDiCaL8Internal7unluckyEi.exit62:            ; preds = %bb.af, %bb.ag
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not100 = icmp eq i64 %indvars.iv, %zext
  br i1 %.not100, label %._crit_edge119, label %bb.w

._crit_edge119:                                   ; preds = %_ZN7CaDiCaL8Internal7unluckyEi.exit62, %._crit_edge114
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 4360 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !201
  %i.cz = add nsw i64 %i.cy, 1
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !201
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ad, %bb.ae, %bb.v, %bb.u, %bb.p, %bb.j, %bb.i, %bb.q, %._crit_edge119
  %.7 = phi i32 [ 10, %._crit_edge119 ], [ 0, %bb.q ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.p ], [ -1, %bb.j ], [ -1, %bb.i ], [ 0, %bb.ak ], [ 0, %bb.aj ], [ -1, %bb.ad ], [ -1, %bb.ae ]
  ret i32 %.7
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 11) i32 @_ZN7CaDiCaL8Internal25negative_horn_satisfiableEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !155  ; 2 uses
  %.not100111 = icmp eq ptr %i.b, %i.d
  br i1 %.not100111, label %._crit_edge115, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5672
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 472
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph114, %_ZN7CaDiCaL8Internal7unluckyEi.exit
  %.sroa.069.0112 = phi ptr [ %i.b, %.lr.ph114 ], [ %i.bj, %_ZN7CaDiCaL8Internal7unluckyEi.exit ] ; 2 uses
  %i.k = load volatile i8, ptr %i.e, align 8, !tbaa !156, !range !157, !noundef !158
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.g, align 4, !tbaa !159  ; 3 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.g, align 4, !tbaa !159
  %i.o = icmp eq i32 %i.m, 1
  br i1 %i.o, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !160
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 360
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !161  ; 3 uses
  %.not3.i = icmp eq ptr %i.r, null
  br i1 %.not3.i, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.f, align 8, !tbaa !180  ; 2 uses
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.f, align 8, !tbaa !180
  %.not4.i = icmp eq i32 %i.s, 0
  br i1 %.not4.i, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.i, align 8, !tbaa !181
  %i.v = mul nsw i32 %i.u, 10
  store i32 %i.v, ptr %i.f, align 8, !tbaa !180
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !182
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.r), !inline_history !184
  br i1 %i.z, label %.sink.split.i, label %bb.k

.sink.split.i:                                    ; preds = %bb.g, %bb.d
  store volatile i8 1, ptr %i.e, align 8, !tbaa !156
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit: ; preds = %bb.b, %.sink.split.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !8
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !154
  %.not.i50 = icmp eq ptr %i.ae, null
  br i1 %.not.i50, label %bb.al, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %i.ad, align 8, !tbaa !154
  br label %bb.al

bb.k:                                             ; preds = %bb.f, %bb.e, %bb.g
  %i.af = load ptr, ptr %.sroa.069.0112, align 8, !tbaa !185 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = and i32 %i.ah, 2064
  %or.cond = icmp eq i32 %i.ai, 0
  br i1 %or.cond, label %bb.l, label %_ZN7CaDiCaL8Internal7unluckyEi.exit

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !186 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %.idx = shl nsw i64 %i.am, 2
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 %.idx
  %.not47108 = icmp eq i32 %i.al, 0
  br i1 %.not47108, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !187
  br label %bb.n

bb.m:                                             ; preds = %.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %.0109, i64 4 ; 2 uses
  %.not47 = icmp eq ptr %i.ap, %i.an
  br i1 %.not47, label %._crit_edge.thread, label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.m
  %.0109 = phi ptr [ %i.aj, %.lr.ph ], [ %i.ap, %bb.m ] ; 2 uses
  %i.aq = load i32, ptr %.0109, align 4, !tbaa !186 ; 4 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !188 ; 2 uses
  %i.au = icmp sgt i8 %i.at, 0
  br i1 %i.au, label %_ZN7CaDiCaL8Internal7unluckyEi.exit, label %.thread

.thread:                                          ; preds = %bb.n
  %i.av = icmp ne i8 %i.at, 0
  %i.aw = icmp sgt i32 %i.aq, 0
  %or.cond102 = or i1 %i.aw, %i.av
  br i1 %or.cond102, label %bb.m, label %._crit_edge

._crit_edge:                                      ; preds = %.thread
  %.not48 = icmp eq i32 %i.aq, 0
  br i1 %.not48, label %._crit_edge.thread, label %bb.r

._crit_edge.thread:                               ; preds = %bb.l, %._crit_edge, %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !8
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %bb.o, label %.thread85

bb.o:                                             ; preds = %._crit_edge.thread
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  %.pr = load i32, ptr %i.ax, align 4, !tbaa !8
  %i.ba = icmp sgt i32 %.pr, 0
  br i1 %i.ba, label %bb.p, label %.thread85

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %.thread85

.thread85:                                        ; preds = %._crit_edge.thread, %bb.p, %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !154
  %.not.i51 = icmp eq ptr %i.bc, null
  br i1 %.not.i51, label %bb.al, label %bb.q

bb.q:                                             ; preds = %.thread85
  store ptr null, ptr %i.bb, align 8, !tbaa !154
  br label %bb.al

bb.r:                                             ; preds = %._crit_edge
  tail call void @_ZN7CaDiCaL8Internal22search_assume_decisionEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %i.aq)
  %i.bd = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.bd, label %_ZN7CaDiCaL8Internal7unluckyEi.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !8
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !154
  %.not.i53 = icmp eq ptr %i.bi, null
  br i1 %.not.i53, label %bb.al, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr null, ptr %i.bh, align 8, !tbaa !154
  br label %bb.al

_ZN7CaDiCaL8Internal7unluckyEi.exit:              ; preds = %bb.n, %bb.k, %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.069.0112, i64 8 ; 2 uses
  %.not100 = icmp eq ptr %i.bj, %i.d
  br i1 %.not100, label %._crit_edge115, label %bb.b

._crit_edge115:                                   ; preds = %_ZN7CaDiCaL8Internal7unluckyEi.exit, %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 5688
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !189, !nonnull !158, !align !190
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !186 ; 2 uses
  %.not101116 = icmp eq i32 %i.bm, 0
  br i1 %.not101116, label %._crit_edge120, label %.lr.ph119

.lr.ph119:                                        ; preds = %._crit_edge115
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 5672
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 472
  %zext = zext i32 %i.bm to i64
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph119, %_ZN7CaDiCaL8Internal7unluckyEi.exit62
  %indvars.iv = phi i64 [ 1, %.lr.ph119 ], [ %indvars.iv.next, %_ZN7CaDiCaL8Internal7unluckyEi.exit62 ] ; 4 uses
  %i.bt = load volatile i8, ptr %i.bn, align 8, !tbaa !156, !range !157, !noundef !158
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit60, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bv = load i32, ptr %i.bp, align 4, !tbaa !159 ; 3 uses
  %.not.i55 = icmp eq i32 %i.bv, 0
  br i1 %.not.i55, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bw = add nsw i32 %i.bv, -1
  store i32 %i.bw, ptr %i.bp, align 4, !tbaa !159
  %i.bx = icmp eq i32 %i.bv, 1
  br i1 %i.bx, label %.sink.split.i59, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.by = load ptr, ptr %i.bq, align 8, !tbaa !160
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 360
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !161 ; 3 uses
  %.not3.i56 = icmp eq ptr %i.ca, null
  br i1 %.not3.i56, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = load i32, ptr %i.bo, align 8, !tbaa !180 ; 2 uses
  %i.cc = add nsw i32 %i.cb, -1
  store i32 %i.cc, ptr %i.bo, align 8, !tbaa !180
  %.not4.i57 = icmp eq i32 %i.cb, 0
  br i1 %.not4.i57, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %i.cd = load i32, ptr %i.br, align 8, !tbaa !181
  %i.ce = mul nsw i32 %i.cd, 10
  store i32 %i.ce, ptr %i.bo, align 8, !tbaa !180
  %i.cf = load ptr, ptr %i.ca, align 8, !tbaa !182
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call noundef zeroext i1 %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.ca), !inline_history !184
  br i1 %i.ci, label %.sink.split.i59, label %bb.af

.sink.split.i59:                                  ; preds = %bb.ab, %bb.y
  store volatile i8 1, ptr %i.bn, align 8, !tbaa !156
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit60

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit60: ; preds = %bb.w, %.sink.split.i59
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !8
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit60
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit60
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !154
  %.not.i61 = icmp eq ptr %i.cn, null
  br i1 %.not.i61, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store ptr null, ptr %i.cm, align 8, !tbaa !154
  br label %bb.al

bb.af:                                            ; preds = %bb.aa, %bb.z, %bb.ab
  %i.co = load ptr, ptr %i.bs, align 8, !tbaa !187
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !188
  %.not49 = icmp eq i8 %i.cq, 0
  br i1 %.not49, label %bb.ag, label %_ZN7CaDiCaL8Internal7unluckyEi.exit62

bb.ag:                                            ; preds = %bb.af
  %1 = trunc nsw i64 %indvars.iv to i32
  tail call void @_ZN7CaDiCaL8Internal22search_assume_decisionEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %1)
  %i.cr = tail call noundef zeroext i1 @_ZN7CaDiCaL8Internal9propagateEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br i1 %i.cr, label %_ZN7CaDiCaL8Internal7unluckyEi.exit62, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !8
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef 0)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !154
  %.not.i63 = icmp eq ptr %i.cw, null
  br i1 %.not.i63, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store ptr null, ptr %i.cv, align 8, !tbaa !154
  br label %bb.al

_ZN7CaDiCaL8Internal7unluckyEi.exit62:            ; preds = %bb.af, %bb.ag
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not101 = icmp eq i64 %indvars.iv, %zext
  br i1 %.not101, label %._crit_edge120, label %bb.w

._crit_edge120:                                   ; preds = %_ZN7CaDiCaL8Internal7unluckyEi.exit62, %._crit_edge115
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 4368 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !202
  %i.cz = add nsw i64 %i.cy, 1
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !202
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ad, %bb.ae, %bb.v, %bb.u, %.thread85, %bb.j, %bb.i, %bb.q, %._crit_edge120
  %.7 = phi i32 [ 10, %._crit_edge120 ], [ 0, %bb.q ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %.thread85 ], [ -1, %bb.j ], [ -1, %bb.i ], [ 0, %bb.ak ], [ 0, %bb.aj ], [ -1, %bb.ad ], [ -1, %bb.ae ]
  ret i32 %.7
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 11) i32 @_ZN7CaDiCaL8Internal12lucky_phasesEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3560
  %i.b = load i32, ptr %i.a, align 8, !tbaa !203
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !204
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !204
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !204
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !204
  %i.l = icmp ne ptr %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.n = load i8, ptr %i.m, align 2, !range !157
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond = select i1 %i.l, i1 true, i1 %i.o
  br i1 %or.cond, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 11 ; 2 uses
  store i8 1, ptr %i.p, align 1, !tbaa !205
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4296 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !206
  %i.s = add nsw i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !206
  %i.t = tail call noundef i32 @_ZN7CaDiCaL8Internal27trivially_false_satisfiableEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) ; 2 uses
  %.not14 = icmp eq i32 %i.t, 0
  br i1 %.not14, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = tail call noundef i32 @_ZN7CaDiCaL8Internal26trivially_true_satisfiableEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i32 [ %i.t, %bb.d ], [ %i.u, %bb.e ]  ; 2 uses
  %.not15 = icmp eq i32 %.0, 0
  br i1 %.not15, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = tail call noundef i32 @_ZN7CaDiCaL8Internal24forward_true_satisfiableEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i32 [ %.0, %bb.f ], [ %i.v, %bb.g ]   ; 2 uses
  %.not16 = icmp eq i32 %.1, 0
  br i1 %.not16, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = tail call noundef i32 @_ZN7CaDiCaL8Internal25forward_false_satisfiableEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2 = phi i32 [ %.1, %bb.h ], [ %i.w, %bb.i ]   ; 2 uses
  %.not17 = icmp eq i32 %.2, 0
  br i1 %.not17, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = tail call noundef i32 @_ZN7CaDiCaL8Internal26backward_false_satisfiableEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.3 = phi i32 [ %.2, %bb.j ], [ %i.x, %bb.k ]   ; 2 uses
  %.not18 = icmp eq i32 %.3, 0
  br i1 %.not18, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.y = tail call noundef i32 @_ZN7CaDiCaL8Internal25backward_true_satisfiableEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.4 = phi i32 [ %.3, %bb.l ], [ %i.y, %bb.m ]   ; 2 uses
  %.not19 = icmp eq i32 %.4, 0
  br i1 %.not19, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.z = tail call noundef i32 @_ZN7CaDiCaL8Internal25positive_horn_satisfiableEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.5 = phi i32 [ %.4, %bb.n ], [ %i.z, %bb.o ]   ; 2 uses
  %.not20 = icmp eq i32 %.5, 0
  br i1 %.not20, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aa = tail call noundef i32 @_ZN7CaDiCaL8Internal25negative_horn_satisfiableEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.6 = phi i32 [ %.5, %bb.p ], [ %i.aa, %bb.q ]  ; 3 uses
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %.6, i32 0)
  %i.ab = icmp eq i32 %.6, 10
  br i1 %i.ab, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4304 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !207
  %i.ae = add nsw i64 %i.ad, 1
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !207
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.not21 = icmp slt i32 %.6, 1
  %i.af = zext i1 %.not21 to i32
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704) %0, i8 noundef signext 108, i32 noundef %i.af)
  store i8 0, ptr %i.p, align 1, !tbaa !205
  br label %bb.u

bb.u:                                             ; preds = %bb.b, %bb.c, %bb.a, %bb.t
  %.012 = phi i32 [ 0, %bb.a ], [ %spec.store.select, %bb.t ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.012
}

declare void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(5704), i8 noundef signext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 324}
!9 = !{!"_ZTSN7CaDiCaL8InternalE", !5, i64 0, !10, i64 4, !10, i64 5, !10, i64 6, !10, i64 7, !10, i64 8, !10, i64 9, !10, i64 10, !10, i64 11, !10, i64 12, !10, i64 13, !10, i64 14, !10, i64 15, !10, i64 16, !10, i64 17, !10, i64 18, !6, i64 19, !11, i64 24, !12, i64 72, !5, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !10, i64 120, !13, i64 128, !13, i64 152, !13, i64 176, !13, i64 200, !13, i64 224, !13, i64 248, !19, i64 272, !25, i64 296, !10, i64 320, !10, i64 321, !5, i64 324, !30, i64 328, !35, i64 472, !31, i64 480, !36, i64 504, !41, i64 528, !36, i64 552, !45, i64 576, !46, i64 600, !51, i64 624, !52, i64 632, !55, i64 688, !60, i64 712, !41, i64 736, !65, i64 760, !70, i64 784, !70, i64 808, !74, i64 832, !41, i64 856, !70, i64 880, !79, i64 904, !84, i64 928, !89, i64 952, !89, i64 960, !89, i64 968, !89, i64 976, !89, i64 984, !10, i64 992, !10, i64 993, !10, i64 994, !5, i64 996, !12, i64 1000, !89, i64 1008, !12, i64 1016, !12, i64 1024, !12, i64 1032, !12, i64 1040, !12, i64 1048, !12, i64 1056, !41, i64 1064, !41, i64 1088, !41, i64 1112, !41, i64 1136, !10, i64 1160, !10, i64 1161, !41, i64 1168, !41, i64 1192, !41, i64 1216, !41, i64 1240, !41, i64 1264, !41, i64 1288, !41, i64 1312, !90, i64 1336, !12, i64 2152, !41, i64 2160, !91, i64 2184, !19, i64 2208, !96, i64 2232, !101, i64 2800, !103, i64 2968, !110, i64 3056, !111, i64 3104, !112, i64 3112, !113, i64 3120, !118, i64 3144, !123, i64 3168, !128, i64 3192, !129, i64 3904, !146, i64 5552, !148, i64 5608, !149, i64 5632, !54, i64 5664, !151, i64 5672, !10, i64 5680, !152, i64 5688, !153, i64 5696}
!10 = !{!"bool", !6, i64 0}
!11 = !{!"_ZTSN7CaDiCaL9ReluctantE", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !10, i64 40, !10, i64 41}
!12 = !{!"long", !6, i64 0}
!13 = !{!"_ZTSSt6vectorImSaImEE", !14, i64 0}
!14 = !{!"_ZTSSt12_Vector_baseImSaImEE", !15, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !16, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!17 = !{!"p1 long", !18, i64 0}
!18 = !{!"any pointer", !6, i64 0}
!19 = !{!"_ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !20, i64 0}
!20 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE12_Vector_implE", !22, i64 0}
!22 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!23 = !{!"p2 _ZTSN7CaDiCaL6ClauseE", !24, i64 0}
!24 = !{!"any p2 pointer", !18, i64 0}
!25 = !{!"_ZTSSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE", !26, i64 0}
!26 = !{!"_ZTSSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE", !27, i64 0}
!27 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE12_Vector_implE", !28, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE17_Vector_impl_dataE", !29, i64 0, !29, i64 8, !29, i64 16}
!29 = !{!"p1 _ZTSSt6vectorIS_ImSaImEESaIS1_EE", !18, i64 0}
!30 = !{!"_ZTSN7CaDiCaL6PhasesE", !31, i64 0, !31, i64 24, !31, i64 48, !31, i64 72, !31, i64 96, !31, i64 120}
!31 = !{!"_ZTSSt6vectorIaSaIaEE", !32, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !33, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !34, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!35 = !{!"p1 omnipotent char", !18, i64 0}
!36 = !{!"_ZTSSt6vectorIjSaIjEE", !37, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !38, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !39, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!40 = !{!"p1 int", !18, i64 0}
!41 = !{!"_ZTSSt6vectorIiSaIiEE", !42, i64 0}
!42 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !43, i64 0}
!43 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !44, i64 0}
!44 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!45 = !{!"_ZTSN7CaDiCaL5QueueE", !5, i64 0, !5, i64 4, !5, i64 8, !12, i64 16}
!46 = !{!"_ZTSSt6vectorIN7CaDiCaL4LinkESaIS1_EE", !47, i64 0}
!47 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE", !48, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE12_Vector_implE", !49, i64 0}
!49 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!50 = !{!"p1 _ZTSN7CaDiCaL4LinkE", !18, i64 0}
end_hunk_1
