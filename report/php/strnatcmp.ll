Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/strnatcmp?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @strnatcmp_ex(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 7 uses
  %i.c = icmp eq i64 %1, 0
  %i.d = icmp eq i64 %3, 0
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @llvm.ucmp.i32.i64(i64 %1, i64 %3)
  br label %compare_left.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.f = load i8, ptr %2, align 1, !tbaa !12
  %.051.pre = load i8, ptr %0, align 1, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.051 = phi i8 [ %.051.pre, %bb.c ], [ %i.l, %bb.f ] ; 2 uses
  %.0112 = phi ptr [ %0, %bb.c ], [ %i.h, %bb.f ] ; 2 uses
  %i.g = icmp eq i8 %.051, 48
  br i1 %i.g, label %bb.e, label %.critedge.preheader

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.0112, i64 1 ; 3 uses
  %i.i = icmp ult ptr %i.h, %i.a
  br i1 %i.i, label %bb.f, label %.critedge.preheader

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @__ctype_b_loc() #3
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.l = load i8, ptr %i.h, align 1, !tbaa !12    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !16
  %i.p = and i16 %i.o, 2048
  %.not = icmp eq i16 %i.p, 0
  br i1 %.not, label %.critedge.preheader, label %bb.d, !llvm.loop !18

.critedge.preheader:                              ; preds = %bb.e, %bb.d, %bb.f
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %bb.h
  %.0107 = phi ptr [ %i.r, %bb.h ], [ %2, %.critedge.preheader ] ; 2 uses
  %.052 = phi i8 [ %i.v, %bb.h ], [ %i.f, %.critedge.preheader ] ; 2 uses
  %i.q = icmp eq i8 %.052, 48
  br i1 %i.q, label %bb.g, label %.critedge3

bb.g:                                             ; preds = %.critedge
  %i.r = getelementptr inbounds nuw i8, ptr %.0107, i64 1 ; 3 uses
  %i.s = icmp ult ptr %i.r, %i.b
  br i1 %i.s, label %bb.h, label %.critedge3

bb.h:                                             ; preds = %bb.g
  %i.t = tail call ptr @__ctype_b_loc() #3
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !13
  %i.v = load i8, ptr %i.r, align 1, !tbaa !12    ; 2 uses
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2, !tbaa !16
  %i.z = and i16 %i.y, 2048
  %.not66 = icmp eq i16 %i.z, 0
  br i1 %.not66, label %.critedge3, label %.critedge, !llvm.loop !20

.critedge3:                                       ; preds = %bb.g, %.critedge, %bb.h
  %i.aa = tail call ptr @__ctype_b_loc() #3
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !13 ; 12 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.ah, %.critedge3
  %.1113 = phi ptr [ %.0112, %.critedge3 ], [ %i.dr, %bb.ah ] ; 2 uses
  %.1108 = phi ptr [ %.0107, %.critedge3 ], [ %i.ds, %bb.ah ] ; 2 uses
  %.153 = phi i8 [ %.052, %.critedge3 ], [ %i.du, %bb.ah ] ; 2 uses
  %.1 = phi i8 [ %.051, %.critedge3 ], [ %i.dt, %bb.ah ] ; 2 uses
  %i.ac = zext i8 %.1 to i64
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load i16, ptr %i.ad, align 2, !tbaa !16 ; 2 uses
  %i.af = and i16 %i.ae, 8192
  %.not67156 = icmp eq i16 %i.af, 0
  br i1 %.not67156, label %.preheader140, label %.lr.ph

.preheader140:                                    ; preds = %.lr.ph, %bb.i
  %.2114.lcssa = phi ptr [ %.1113, %bb.i ], [ %i.al, %.lr.ph ] ; 3 uses
  %.2.lcssa = phi i8 [ %.1, %bb.i ], [ %i.am, %.lr.ph ] ; 2 uses
  %.lcssa = phi i16 [ %i.ae, %bb.i ], [ %i.ap, %.lr.ph ]
  %i.ag = zext i8 %.153 to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !16
  %i.aj = zext i16 %i.ai to i32                   ; 2 uses
  %i.ak = and i32 %i.aj, 8192
  %.not68162 = icmp eq i32 %i.ak, 0
  br i1 %.not68162, label %._crit_edge, label %.lr.ph164

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %.2114157 = phi ptr [ %i.al, %.lr.ph ], [ %.1113, %bb.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %.2114157, i64 1 ; 3 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !12  ; 2 uses
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !16 ; 2 uses
  %i.aq = and i16 %i.ap, 8192
  %.not67 = icmp eq i16 %i.aq, 0
  br i1 %.not67, label %.preheader140, label %.lr.ph, !llvm.loop !21

.lr.ph164:                                        ; preds = %.preheader140, %.lr.ph164
  %.2109163 = phi ptr [ %i.ar, %.lr.ph164 ], [ %.1108, %.preheader140 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.2109163, i64 1 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !12  ; 2 uses
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !16
  %i.aw = zext i16 %i.av to i32                   ; 2 uses
  %i.ax = and i32 %i.aw, 8192
  %.not68 = icmp eq i32 %i.ax, 0
  br i1 %.not68, label %._crit_edge, label %.lr.ph164, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph164, %.preheader140
  %.2109.lcssa = phi ptr [ %.1108, %.preheader140 ], [ %i.ar, %.lr.ph164 ] ; 3 uses
  %.254.lcssa = phi i8 [ %.153, %.preheader140 ], [ %i.as, %.lr.ph164 ] ; 2 uses
  %.lcssa145 = phi i32 [ %i.aj, %.preheader140 ], [ %i.aw, %.lr.ph164 ]
  %i.ay = and i16 %.lcssa, 2048
  %.not69 = icmp eq i16 %i.ay, 0
  %i.az = and i32 %.lcssa145, 2048
  %.not70 = icmp eq i32 %i.az, 0
  %or.cond76 = or i1 %.not69, %.not70
  br i1 %or.cond76, label %bb.ac, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ba = icmp eq i8 %.2.lcssa, 48
  %i.bb = icmp eq i8 %.254.lcssa, 48
  %i.bc = or i1 %i.ba, %i.bb
  br i1 %i.bc, label %.preheader, label %.preheader137

.preheader:                                       ; preds = %bb.j, %bb.q
  %.5117 = phi ptr [ %i.bz, %bb.q ], [ %.2114.lcssa, %bb.j ] ; 6 uses
  %.5 = phi ptr [ %i.ca, %bb.q ], [ %.2109.lcssa, %bb.j ] ; 7 uses
  %i.bd = icmp eq ptr %.5117, %i.a                ; 2 uses
  br i1 %i.bd, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader
  %i.be = load i8, ptr %.5117, align 1, !tbaa !12 ; 2 uses
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !16
  %i.bi = and i16 %i.bh, 2048
  %.not.i = icmp eq i16 %i.bi, 0
  br i1 %.not.i, label %bb.l, label %.thread.i.thread

bb.l:                                             ; preds = %bb.k, %.preheader
  %i.bj = icmp eq ptr %.5, %i.b
  br i1 %i.bj, label %compare_left.exit.thread123, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bk = load i8, ptr %.5, align 1, !tbaa !12
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !16
  %i.bo = and i16 %i.bn, 2048
  %.not24.i = icmp eq i16 %i.bo, 0                ; 2 uses
  %brmerge.i = or i1 %i.bd, %.not24.i
  br i1 %brmerge.i, label %.split.loop.exit.i, label %.thread.i

.thread.i:                                        ; preds = %bb.m
  %.pre.i = load i8, ptr %.5117, align 1, !tbaa !12 ; 2 uses
  %.pre39.i = zext i8 %.pre.i to i64
  %.phi.trans.insert = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.pre39.i
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !16
  %.pre205 = and i16 %.pre, 2048
  %i.bp = icmp eq i16 %.pre205, 0
  br i1 %i.bp, label %compare_left.exit.thread, label %.thread.i.thread

.thread.i.thread:                                 ; preds = %bb.k, %.thread.i
  %i.bq = phi i8 [ %.pre.i, %.thread.i ], [ %i.be, %bb.k ] ; 2 uses
  %i.br = icmp eq ptr %.5, %i.b
  br i1 %i.br, label %compare_left.exit.thread, label %bb.n

bb.n:                                             ; preds = %.thread.i.thread
  %i.bs = load i8, ptr %.5, align 1, !tbaa !12    ; 3 uses
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !16
  %i.bw = and i16 %i.bv, 2048
  %.not26.i = icmp eq i16 %i.bw, 0
  br i1 %.not26.i, label %compare_left.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = icmp slt i8 %i.bq, %i.bs
  br i1 %i.bx, label %compare_left.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = icmp sgt i8 %i.bq, %i.bs
  br i1 %i.by, label %compare_left.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %.5117, i64 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.5, i64 1
  br label %.preheader

.split.loop.exit.i:                               ; preds = %bb.m
  %not..not24.le.i = xor i1 %.not24.i, true
  %.mux.le.i = sext i1 %not..not24.le.i to i32
  br label %compare_left.exit

.preheader137:                                    ; preds = %bb.j, %bb.aa
  %.6118 = phi ptr [ %i.cz, %bb.aa ], [ %.2114.lcssa, %bb.j ] ; 6 uses
  %.6 = phi ptr [ %i.da, %bb.aa ], [ %.2109.lcssa, %bb.j ] ; 7 uses
  %.0.i80 = phi i32 [ %.1.i, %bb.aa ], [ 0, %bb.j ] ; 6 uses
  %i.cb = icmp eq ptr %.6118, %i.a                ; 2 uses
  br i1 %i.cb, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.preheader137
  %i.cc = load i8, ptr %.6118, align 1, !tbaa !12 ; 2 uses
  %i.cd = zext i8 %i.cc to i64                    ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.cd
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !16
  %i.cg = and i16 %i.cf, 2048
  %.not.i81 = icmp eq i16 %i.cg, 0
  br i1 %.not.i81, label %bb.s, label %.thread.i82

bb.s:                                             ; preds = %bb.r, %.preheader137
  %i.ch = icmp eq ptr %.6, %i.b
  br i1 %i.ch, label %compare_left.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ci = load i8, ptr %.6, align 1, !tbaa !12
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.cj
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !16
  %i.cm = and i16 %i.cl, 2048
  %.not29.i = icmp eq i16 %i.cm, 0                ; 2 uses
  %brmerge.i84 = or i1 %i.cb, %.not29.i
  br i1 %brmerge.i84, label %.split.loop.exit.i87, label %..thread_crit_edge.i85

..thread_crit_edge.i85:                           ; preds = %bb.t
  %.pre.i86 = load i8, ptr %.6118, align 1, !tbaa !12 ; 2 uses
  %.pre43.i = zext i8 %.pre.i86 to i64
  br label %.thread.i82

.thread.i82:                                      ; preds = %..thread_crit_edge.i85, %bb.r
  %.pre-phi.i83 = phi i64 [ %.pre43.i, %..thread_crit_edge.i85 ], [ %i.cd, %bb.r ]
  %i.cn = phi i8 [ %.pre.i86, %..thread_crit_edge.i85 ], [ %i.cc, %bb.r ] ; 2 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.pre-phi.i83
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !16
  %i.cq = and i16 %i.cp, 2048
  %.not30.i = icmp eq i16 %i.cq, 0
  br i1 %.not30.i, label %compare_left.exit.thread, label %bb.u

bb.u:                                             ; preds = %.thread.i82
  %i.cr = icmp eq ptr %.6, %i.b
  br i1 %i.cr, label %compare_left.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cs = load i8, ptr %.6, align 1, !tbaa !12    ; 3 uses
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ct
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !16
  %i.cw = and i16 %i.cv, 2048
  %.not31.i = icmp eq i16 %i.cw, 0
  br i1 %.not31.i, label %compare_left.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = icmp slt i8 %i.cn, %i.cs
  br i1 %i.cx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %.not33.i = icmp eq i32 %.0.i80, 0
  %spec.store.select.i = select i1 %.not33.i, i32 -1, i32 %.0.i80
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.cy = icmp sgt i8 %i.cn, %i.cs
  br i1 %i.cy, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %spec.store.select1.i = tail call i32 @llvm.umax.i32(i32 %.0.i80, i32 1)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.1.i = phi i32 [ %spec.store.select.i, %bb.x ], [ %spec.store.select1.i, %bb.z ], [ %.0.i80, %bb.y ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.6118, i64 1
  %i.da = getelementptr inbounds nuw i8, ptr %.6, i64 1
  br label %.preheader137

.split.loop.exit.i87:                             ; preds = %bb.t
  br i1 %.not29.i, label %compare_left.exit, label %compare_left.exit.thread

compare_left.exit:                                ; preds = %bb.s, %.split.loop.exit.i87, %.split.loop.exit.i
  %.3115 = phi ptr [ %.5117, %.split.loop.exit.i ], [ %.6118, %.split.loop.exit.i87 ], [ %.6118, %bb.s ]
  %.3110 = phi ptr [ %.5, %.split.loop.exit.i ], [ %.6, %.split.loop.exit.i87 ], [ %.6, %bb.s ]
  %.057 = phi i32 [ %.mux.le.i, %.split.loop.exit.i ], [ %.0.i80, %.split.loop.exit.i87 ], [ %.0.i80, %bb.s ] ; 2 uses
  %.not71 = icmp eq i32 %.057, 0
  br i1 %.not71, label %compare_left.exit.thread123, label %compare_left.exit.thread

compare_left.exit.thread123:                      ; preds = %bb.l, %compare_left.exit
  %.3110129 = phi ptr [ %.3110, %compare_left.exit ], [ %.5, %bb.l ] ; 3 uses
  %.3115128 = phi ptr [ %.3115, %compare_left.exit ], [ %.5117, %bb.l ] ; 3 uses
  %i.db = icmp eq ptr %.3115128, %i.a             ; 3 uses
  %i.dc = icmp eq ptr %.3110129, %i.b             ; 2 uses
  %brmerge130 = select i1 %i.db, i1 true, i1 %i.dc
  br i1 %brmerge130, label %compare_left.exit.thread.loopexit141.split.loop.exit174, label %bb.ab

bb.ab:                                            ; preds = %compare_left.exit.thread123
  %i.dd = load i8, ptr %.3115128, align 1, !tbaa !12
  %i.de = load i8, ptr %.3110129, align 1, !tbaa !12
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge
  %.4116 = phi ptr [ %.2114.lcssa, %._crit_edge ], [ %.3115128, %bb.ab ]
  %.4111 = phi ptr [ %.2109.lcssa, %._crit_edge ], [ %.3110129, %bb.ab ]
  %.355 = phi i8 [ %.254.lcssa, %._crit_edge ], [ %i.de, %bb.ab ] ; 2 uses
  %.3 = phi i8 [ %.2.lcssa, %._crit_edge ], [ %i.dd, %bb.ab ] ; 2 uses
  br i1 %4, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.df = tail call ptr @__ctype_toupper_loc() #3
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !23 ; 2 uses
  %i.dh = zext i8 %.3 to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !25
  %i.dk = trunc i32 %i.dj to i8
  %i.dl = zext i8 %.355 to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !25
  %i.do = trunc i32 %i.dn to i8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.456 = phi i8 [ %i.do, %bb.ad ], [ %.355, %bb.ac ] ; 2 uses
  %.4 = phi i8 [ %i.dk, %bb.ad ], [ %.3, %bb.ac ] ; 2 uses
  %i.dp = icmp ult i8 %.4, %.456
  br i1 %i.dp, label %compare_left.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dq = icmp ugt i8 %.4, %.456
  br i1 %i.dq, label %compare_left.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dr = getelementptr inbounds nuw i8, ptr %.4116, i64 1 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.4111, i64 1 ; 3 uses
  %.not72 = icmp uge ptr %i.dr, %i.a              ; 3 uses
  %.not73 = icmp uge ptr %i.ds, %i.b              ; 2 uses
  %brmerge133 = select i1 %.not72, i1 true, i1 %.not73
  br i1 %brmerge133, label %compare_left.exit.thread.loopexit141.split.loop.exit176, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dt = load i8, ptr %i.dr, align 1, !tbaa !12
  %i.du = load i8, ptr %i.ds, align 1, !tbaa !12
  br label %bb.i

compare_left.exit.thread.loopexit141.split.loop.exit174: ; preds = %compare_left.exit.thread123
  %or.cond78.le = select i1 %i.db, i1 %i.dc, i1 false
  %not.or.cond78.le = xor i1 %or.cond78.le, true
  %.mux.le = sext i1 %not.or.cond78.le to i32
  %.mux.mux.le = select i1 %i.db, i32 %.mux.le, i32 1
  br label %compare_left.exit.thread

compare_left.exit.thread.loopexit141.split.loop.exit176: ; preds = %bb.ag
  %or.cond79.not136.le = select i1 %.not72, i1 %.not73, i1 false
  %not.or.cond79.not136.le = xor i1 %or.cond79.not136.le, true
  %.mux132.le = sext i1 %not.or.cond79.not136.le to i32
  %.mux132.mux.le = select i1 %.not72, i32 %.mux132.le, i32 1
  br label %compare_left.exit.thread

compare_left.exit.thread:                         ; preds = %compare_left.exit, %bb.ae, %bb.af, %.split.loop.exit.i87, %bb.u, %.thread.i82, %bb.v, %.thread.i.thread, %bb.o, %bb.p, %bb.n, %.thread.i, %compare_left.exit.thread.loopexit141.split.loop.exit174, %compare_left.exit.thread.loopexit141.split.loop.exit176, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 1, %bb.p ], [ %.mux132.mux.le, %compare_left.exit.thread.loopexit141.split.loop.exit176 ], [ %.mux.mux.le, %compare_left.exit.thread.loopexit141.split.loop.exit174 ], [ 1, %bb.u ], [ 1, %.thread.i.thread ], [ -1, %bb.o ], [ 1, %bb.n ], [ -1, %.thread.i ], [ -1, %.thread.i82 ], [ 1, %bb.v ], [ 1, %bb.af ], [ -1, %.split.loop.exit.i87 ], [ %.057, %compare_left.exit ], [ -1, %bb.ae ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

attributes #0 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
end_hunk_0
