inline.NumInlined: 146
inline.NumDeleted: 25
begin_hunk_0_@dictGetRandomKey:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %_dictRehashStep.exit.thread75
  %i.w = phi i64 [ %i.ak, %bb.g ], [ %.pr78, %_dictRehashStep.exit.thread75 ]
  %i.x = tail call i64 @genrand64_int64() #21
  %i.y = load i8, ptr %i.m, align 4, !tbaa !19    ; 2 uses
  %i.z = icmp eq i8 %i.y, -1
  %i.aa = sext i8 %i.y to i64
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = select i1 %i.z, i64 0, i64 %i.ac
  %i.ae = load i8, ptr %i.t, align 1, !tbaa !19   ; 2 uses
  %i.af = icmp eq i8 %i.ae, -1
  %i.ag = sext i8 %i.ae to i64
  %i.ah = and i64 %i.ag, 4294967295
  %i.ai = shl nuw i64 1, %i.ah
  %i.aj = select i1 %i.af, i64 0, i64 %i.ai
  %i.ak = load i64, ptr %i.g, align 8, !tbaa !20  ; 2 uses
  %i.al = sub i64 %i.ad, %i.ak
  %i.am = add i64 %i.al, %i.aj
  %i.an = urem i64 %i.x, %i.am
  %i.ao = add i64 %i.an, %i.w                     ; 3 uses
  %.not50 = icmp ult i64 %i.ao, %i.s
  br i1 %.not50, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.u, align 8, !tbaa !16
  %i.aq = sub nuw i64 %i.ao, %i.s
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.as = load ptr, ptr %i.v, align 8, !tbaa !16
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ao
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.in = phi ptr [ %i.ar, %bb.e ], [ %i.at, %bb.f ]
  %i.au = load ptr, ptr %.in, align 8, !tbaa !37  ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.d, label %.loopexit57, !llvm.loop !90

_dictRehashStep.exit.thread:                      ; preds = %bb.b, %_dictRehashStep.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !19  ; 2 uses
  %i.ay = sext i8 %i.ax to i64
  %i.az = icmp eq i8 %i.ax, -1
  %i.ba = and i64 %i.ay, 4294967295
  %notmask = shl nsw i64 -1, %i.ba
  %i.bb = xor i64 %notmask, -1
  %i.bc = select i1 %i.az, i64 0, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_dictRehashStep.exit.thread
  %i.be = tail call i64 @genrand64_int64() #21
  %i.bf = and i64 %i.be, %i.bc
  %i.bg = load ptr, ptr %i.bd, align 8, !tbaa !16
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !37 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.h, label %.loopexit57, !llvm.loop !91

.loopexit57:                                      ; preds = %bb.g, %bb.h
  %.037 = phi ptr [ %i.bi, %bb.h ], [ %i.au, %bb.g ] ; 4 uses
  br label %bb.i

bb.i:                                             ; preds = %.loopexit57, %dictGetNext.exit
  %.161 = phi ptr [ %.037, %.loopexit57 ], [ %i.bn, %dictGetNext.exit ] ; 2 uses
  %.03960 = phi i32 [ 0, %.loopexit57 ], [ %i.bo, %dictGetNext.exit ] ; 2 uses
  %i.bk = ptrtoint ptr %.161 to i64
  %i.bl = and i64 %i.bk, 3
  %.not.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i, label %dictGetNext.exit, label %dictGetNext.exit.thread

dictGetNext.exit.thread:                          ; preds = %bb.i
  %i.bm = add nuw nsw i32 %.03960, 1
  br label %.loopexit81

dictGetNext.exit:                                 ; preds = %bb.i
  %i.bn = load ptr, ptr %.161, align 8, !tbaa !42 ; 2 uses
  %i.bo = add nuw nsw i32 %.03960, 1              ; 2 uses
  %.not51 = icmp eq ptr %i.bn, null
  br i1 %.not51, label %.loopexit81, label %bb.i, !llvm.loop !92

.loopexit81:                                      ; preds = %dictGetNext.exit, %dictGetNext.exit.thread
  %i.bp = phi i32 [ %i.bm, %dictGetNext.exit.thread ], [ %i.bo, %dictGetNext.exit ]
  %i.bq = tail call i64 @random() #21
  %i.br = zext nneg i32 %i.bp to i64
  %i.bs = srem i64 %i.bq, %i.br                   ; 2 uses
  %.not5262 = icmp eq i64 %i.bs, 0
  br i1 %.not5262, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.loopexit81
  %i.bt = trunc i64 %i.bs to i32                  ; 4 uses
  %i.bu = add i32 %i.bt, -1
  %xtraiter = and i32 %i.bt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %dictGetNext.exit55.prol
  %.264.prol = phi ptr [ %.0.i54.prol, %dictGetNext.exit55.prol ], [ %.037, %.lr.ph.preheader ] ; 2 uses
  %.03863.prol = phi i32 [ %i.bv, %dictGetNext.exit55.prol ], [ %i.bt, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %dictGetNext.exit55.prol ], [ 0, %.lr.ph.preheader ]
  %i.bv = add nsw i32 %.03863.prol, -1            ; 2 uses
  %i.bw = ptrtoint ptr %.264.prol to i64
  %i.bx = and i64 %i.bw, 3
  %.not.i53.prol = icmp eq i64 %i.bx, 0
  br i1 %.not.i53.prol, label %bb.j, label %dictGetNext.exit55.prol

bb.j:                                             ; preds = %.lr.ph.prol
  %i.by = load ptr, ptr %.264.prol, align 8, !tbaa !42
  br label %dictGetNext.exit55.prol

dictGetNext.exit55.prol:                          ; preds = %bb.j, %.lr.ph.prol
  %.0.i54.prol = phi ptr [ %i.by, %bb.j ], [ null, %.lr.ph.prol ] ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !93

.lr.ph.prol.loopexit:                             ; preds = %dictGetNext.exit55.prol, %.lr.ph.preheader
  %.0.i54.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.0.i54.prol, %dictGetNext.exit55.prol ]
  %.264.unr = phi ptr [ %.037, %.lr.ph.preheader ], [ %.0.i54.prol, %dictGetNext.exit55.prol ]
  %.03863.unr = phi i32 [ %i.bt, %.lr.ph.preheader ], [ %i.bv, %dictGetNext.exit55.prol ]
  %i.bz = icmp ult i32 %i.bu, 3
  br i1 %i.bz, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %dictGetNext.exit55.3
  %.264 = phi ptr [ %.0.i54.3, %dictGetNext.exit55.3 ], [ %.264.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.03863 = phi i32 [ %i.cj, %dictGetNext.exit55.3 ], [ %.03863.unr, %.lr.ph.prol.loopexit ]
  %i.ca = ptrtoint ptr %.264 to i64
  %i.cb = and i64 %i.ca, 3
  %.not.i53 = icmp eq i64 %i.cb, 0
  br i1 %.not.i53, label %bb.k, label %dictGetNext.exit55

bb.k:                                             ; preds = %.lr.ph
  %i.cc = load ptr, ptr %.264, align 8, !tbaa !42
  br label %dictGetNext.exit55

dictGetNext.exit55:                               ; preds = %.lr.ph, %bb.k
  %.0.i54 = phi ptr [ %i.cc, %bb.k ], [ null, %.lr.ph ] ; 2 uses
  %i.cd = ptrtoint ptr %.0.i54 to i64
  %i.ce = and i64 %i.cd, 3
  %.not.i53.1 = icmp eq i64 %i.ce, 0
  br i1 %.not.i53.1, label %bb.l, label %dictGetNext.exit55.1

bb.l:                                             ; preds = %dictGetNext.exit55
  %i.cf = load ptr, ptr %.0.i54, align 8, !tbaa !42
  br label %dictGetNext.exit55.1

dictGetNext.exit55.1:                             ; preds = %bb.l, %dictGetNext.exit55
  %.0.i54.1 = phi ptr [ %i.cf, %bb.l ], [ null, %dictGetNext.exit55 ] ; 2 uses
  %i.cg = ptrtoint ptr %.0.i54.1 to i64
  %i.ch = and i64 %i.cg, 3
  %.not.i53.2 = icmp eq i64 %i.ch, 0
  br i1 %.not.i53.2, label %bb.m, label %dictGetNext.exit55.2

bb.m:                                             ; preds = %dictGetNext.exit55.1
  %i.ci = load ptr, ptr %.0.i54.1, align 8, !tbaa !42
  br label %dictGetNext.exit55.2

dictGetNext.exit55.2:                             ; preds = %bb.m, %dictGetNext.exit55.1
  %.0.i54.2 = phi ptr [ %i.ci, %bb.m ], [ null, %dictGetNext.exit55.1 ] ; 2 uses
  %i.cj = add nsw i32 %.03863, -4                 ; 2 uses
  %i.ck = ptrtoint ptr %.0.i54.2 to i64
  %i.cl = and i64 %i.ck, 3
  %.not.i53.3 = icmp eq i64 %i.cl, 0
  br i1 %.not.i53.3, label %bb.n, label %dictGetNext.exit55.3

bb.n:                                             ; preds = %dictGetNext.exit55.2
  %i.cm = load ptr, ptr %.0.i54.2, align 8, !tbaa !42
  br label %dictGetNext.exit55.3

dictGetNext.exit55.3:                             ; preds = %bb.n, %dictGetNext.exit55.2
  %.0.i54.3 = phi ptr [ %i.cm, %bb.n ], [ null, %dictGetNext.exit55.2 ] ; 2 uses
  %.not52.3 = icmp eq i32 %i.cj, 0
  br i1 %.not52.3, label %.loopexit, label %.lr.ph, !llvm.loop !95

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %dictGetNext.exit55.3, %.loopexit81, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.037, %.loopexit81 ], [ %.0.i54.lcssa.unr, %.lr.ph.prol.loopexit ], [ %.0.i54.3, %dictGetNext.exit55.3 ]
  ret ptr %.0
}

declare i64 @genrand64_int64() local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @random() local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local i32 @dictGetSomeKeys(ptr noundef %0, ptr noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  %i.e = add i64 %i.d, %i.b
  %i.f = zext i32 %2 to i64
  %spec.select122 = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.f) ; 9 uses
  %i.g = mul nuw nsw i64 %spec.select122, 10
  %i.h = and i64 %i.g, 4294967294                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %.not146 = icmp eq i64 %spec.select122, 0       ; 2 uses
  br i1 %.not146, label %._crit_edgethread-pre-split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_dictRehashStep.exit
  %.093130 = phi i64 [ 0, %.lr.ph ], [ %i.o, %_dictRehashStep.exit ]
  %i.k = load i64, ptr %i.i, align 8, !tbaa !20
  %.not = icmp eq i64 %i.k, -1
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.j, align 8, !tbaa !9
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %_dictRehashStep.exit

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i32 @dictRehash(ptr noundef nonnull %0, i32 noundef 1) ; 0 uses
  br label %_dictRehashStep.exit

_dictRehashStep.exit:                             ; preds = %bb.c, %bb.d
  %i.o = add nuw nsw i64 %.093130, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %spec.select122
  br i1 %exitcond.not, label %._crit_edgethread-pre-split, label %bb.b, !llvm.loop !96

._crit_edgethread-pre-split:                      ; preds = %_dictRehashStep.exit, %bb.a
  %.pr = load i64, ptr %i.i, align 8, !tbaa !20
  %i.p = icmp ne i64 %.pr, -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edgethread-pre-split
  %i.q = phi i1 [ %i.p, %._crit_edgethread-pre-split ], [ false, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.s = load i8, ptr %i.r, align 4, !tbaa !19    ; 2 uses
  %i.t = sext i8 %i.s to i64
  %i.u = icmp eq i8 %i.s, -1
  %i.v = and i64 %i.t, 4294967295
  %notmask = shl nsw i64 -1, %i.v
  %i.w = xor i64 %notmask, -1
  %i.x = select i1 %i.u, i64 0, i64 %i.w          ; 3 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.z = load i8, ptr %i.y, align 1, !tbaa !19    ; 2 uses
  %i.aa = sext i8 %i.z to i64
  %.not123 = icmp eq i8 %i.z, -1
  %i.ab = and i64 %i.aa, 4294967295
  %notmask107 = shl nsw i64 -1, %i.ab
  %i.ac = xor i64 %notmask107, -1
  %i.ad = tail call i64 @llvm.umax.i64(i64 %i.x, i64 %i.ac)
  %spec.select121 = select i1 %.not123, i64 %i.x, i64 %i.ad
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  %.085 = phi i64 [ %i.x, %._crit_edge ], [ %spec.select121, %bb.e ] ; 2 uses
  %i.ae = tail call i64 @genrand64_int64() #21
  br i1 %.not146, label %.critedge, label %.lr.ph143

.lr.ph143:                                        ; preds = %bb.f
  %invariant.umax = tail call i64 @llvm.umax.i64(i64 %spec.select122, i64 4)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not109163 = icmp eq i64 %i.h, 0
  br i1 %.not109163, label %.critedge, label %.preheader124.preheader

bb.g:                                             ; preds = %bb.p
  %i.ah = add i64 %.5, 1
  %.not109 = icmp eq i64 %i.ai, 0
  br i1 %.not109, label %.critedge, label %.preheader124.preheader, !llvm.loop !97

.preheader124.preheader:                          ; preds = %.lr.ph143, %bb.g
  %.in = phi i64 [ %i.ai, %bb.g ], [ %i.h, %.lr.ph143 ]
  %.086138166 = phi i64 [ %.591, %bb.g ], [ 0, %.lr.ph143 ]
  %.pn140165 = phi i64 [ %i.ah, %bb.g ], [ %i.ae, %.lr.ph143 ]
  %.078141164 = phi i64 [ %.4, %bb.g ], [ 0, %.lr.ph143 ]
  %i.ai = add nsw i64 %.in, -1                    ; 2 uses
  %.079 = and i64 %.pn140165, %.085
  br label %.preheader124

.preheader124:                                    ; preds = %.preheader124.preheader, %.thread
  %.1137 = phi i64 [ %.4, %.thread ], [ %.078141164, %.preheader124.preheader ] ; 3 uses
  %.180136 = phi i64 [ %.5, %.thread ], [ %.079, %.preheader124.preheader ] ; 5 uses
  %.187135 = phi i64 [ %.591, %.thread ], [ %.086138166, %.preheader124.preheader ] ; 5 uses
  %or.cond = phi i1 [ false, %.thread ], [ %i.q, %.preheader124.preheader ] ; 2 uses
  %.194134 = phi i64 [ 1, %.thread ], [ 0, %.preheader124.preheader ] ; 2 uses
  br i1 %or.cond, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.preheader124
  %i.aj = load i64, ptr %i.i, align 8, !tbaa !20  ; 2 uses
  %i.ak = icmp ult i64 %.180136, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = load i8, ptr %i.af, align 1, !tbaa !19  ; 2 uses
  %i.am = icmp ne i8 %i.al, -1
  %i.an = sext i8 %i.al to i64
  %i.ao = and i64 %i.an, 4294967295
  %.180.highbits = lshr i64 %.180136, %i.ao
  %i.ap = icmp eq i64 %.180.highbits, 0
  %.not110 = select i1 %i.am, i1 %i.ap, i1 false
  br i1 %.not110, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.preheader124
  %.281 = phi i64 [ %.180136, %.preheader124 ], [ %.180136, %bb.h ], [ %i.aj, %bb.i ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 %.194134
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !19  ; 2 uses
  %i.as = icmp ne i8 %i.ar, -1
  %i.at = sext i8 %i.ar to i64
  %i.au = and i64 %i.at, 4294967295
  %.281.highbits = lshr i64 %.281, %i.au
  %i.av = icmp eq i64 %.281.highbits, 0
  %.not111 = select i1 %i.as, i1 %i.av, i1 false
  br i1 %.not111, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %.194134
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !16
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.281
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !37 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.l, label %.preheader

bb.l:                                             ; preds = %bb.k
  %i.bb = add i64 %.1137, 1                       ; 2 uses
  %or.cond114 = icmp ugt i64 %i.bb, %invariant.umax
  br i1 %or.cond114, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.bc = tail call i64 @genrand64_int64() #21
  %i.bd = and i64 %i.bc, %.085
  br label %.thread

.preheader:                                       ; preds = %bb.k, %dictGetNext.exit
  %.077133 = phi ptr [ %i.bn, %dictGetNext.exit ], [ %i.az, %bb.k ] ; 3 uses
  %.288132 = phi i64 [ %i.bo, %dictGetNext.exit ], [ %.187135, %bb.k ] ; 5 uses
  %i.be = icmp ult i64 %.288132, %spec.select122
  br i1 %i.be, label %.sink.split, label %bb.n

bb.n:                                             ; preds = %.preheader
  %i.bf = tail call i64 @genrand64_int64() #21
  %i.bg = add i64 %.288132, 1
  %i.bh = urem i64 %i.bf, %i.bg                   ; 2 uses
  %i.bi = icmp ult i64 %i.bh, %spec.select122
  br i1 %i.bi, label %.sink.split, label %bb.o

.sink.split:                                      ; preds = %bb.n, %.preheader
  %.sink159 = phi i64 [ %.288132, %.preheader ], [ %i.bh, %bb.n ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sink159
  store ptr %.077133, ptr %i.bj, align 8, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.n
  %i.bk = ptrtoint ptr %.077133 to i64
  %i.bl = and i64 %i.bk, 3
  %.not.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i, label %dictGetNext.exit, label %dictGetNext.exit.thread

dictGetNext.exit.thread:                          ; preds = %bb.o
  %i.bm = add i64 %.288132, 1
  br label %.loopexit

dictGetNext.exit:                                 ; preds = %bb.o
  %i.bn = load ptr, ptr %.077133, align 8, !tbaa !42 ; 2 uses
  %i.bo = add i64 %.288132, 1                     ; 2 uses
  %.not112 = icmp eq ptr %i.bn, null
  br i1 %.not112, label %.loopexit, label %.preheader, !llvm.loop !98

.loopexit:                                        ; preds = %dictGetNext.exit, %dictGetNext.exit.thread
  %i.bp = phi i64 [ %i.bm, %dictGetNext.exit.thread ], [ %i.bo, %dictGetNext.exit ] ; 3 uses
  %.not113 = icmp ult i64 %i.bp, %spec.select122
  br i1 %.not113, label %.thread, label %.critedge

.thread:                                          ; preds = %.loopexit, %bb.m, %bb.l, %bb.j, %bb.i
  %.591 = phi i64 [ %.187135, %bb.j ], [ %.187135, %bb.i ], [ %.187135, %bb.m ], [ %.187135, %bb.l ], [ %i.bp, %.loopexit ] ; 5 uses
  %.5 = phi i64 [ %.281, %bb.j ], [ %.180136, %bb.i ], [ %i.bd, %bb.m ], [ %.281, %bb.l ], [ %.281, %.loopexit ] ; 2 uses
  %.4 = phi i64 [ %.1137, %bb.j ], [ %.1137, %bb.i ], [ 0, %bb.m ], [ %i.bb, %bb.l ], [ 0, %.loopexit ] ; 2 uses
  br i1 %or.cond, label %.preheader124, label %bb.p, !llvm.loop !99

bb.p:                                             ; preds = %.thread
  %i.bq = icmp ult i64 %.591, %spec.select122
  br i1 %i.bq, label %bb.g, label %..critedge.loopexit160_crit_edge167, !llvm.loop !97

..critedge.loopexit160_crit_edge167:              ; preds = %bb.p
  br label %.critedge, !llvm.loop !97

.critedge:                                        ; preds = %bb.g, %.loopexit, %.lr.ph143, %..critedge.loopexit160_crit_edge167, %bb.f
  %.6 = phi i64 [ %i.bp, %.loopexit ], [ 0, %bb.f ], [ %.591, %..critedge.loopexit160_crit_edge167 ], [ 0, %.lr.ph143 ], [ %.591, %bb.g ]
  %3 = tail call i64 @llvm.umin.i64(i64 %.6, i64 %spec.select122)
  %i.br = trunc nuw i64 %3 to i32
  ret i32 %i.br
}

; Function Attrs: nounwind uwtable
define dso_local ptr @dictGetFairRandomKey(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [15 x ptr], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = call i32 @dictGetSomeKeys(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 15) ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @dictGetRandomKey(ptr noundef %0)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 @rand() #21
  %i.f = urem i32 %i.e, %i.b
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ %i.i, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %.0
}

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @dictScan(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @dictScanDefrag(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef null, ptr noundef %3)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @dictScanDefrag(ptr noundef captures(none) %0, i64 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  %i.e = sub i64 0, %i.d
  %i.f = icmp eq i64 %i.b, %i.e
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !9
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %.not = icmp eq i64 %i.k, -1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.m = load i8, ptr %i.l, align 4, !tbaa !19    ; 4 uses
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = sext i8 %i.m to i64
  %i.o = icmp eq i8 %i.m, -1
  %i.p = and i64 %i.n, 4294967295
  %notmask = shl nsw i64 -1, %i.p
  %i.q = xor i64 %notmask, -1
  %i.r = select i1 %i.o, i64 0, i64 %i.q          ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !16
  %i.u = and i64 %i.r, %1
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  tail call void @dictScanDefragBucket(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %i.v)
  %i.w = xor i64 %i.r, -1
  %i.x = or i64 %1, %i.w
  %i.y = tail call noundef i64 @llvm.bitreverse.i64(i64 %i.x)
  %i.z = add i64 %i.y, 1
  %i.aa = tail call noundef i64 @llvm.bitreverse.i64(i64 %i.z)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.ab = icmp ne i8 %i.m, -1
  %i.ac = sext i8 %i.m to i64
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = shl nuw i64 1, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !19  ; 2 uses
  %i.ah = icmp eq i8 %i.ag, -1
  %i.ai = sext i8 %i.ag to i64
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = shl nuw i64 1, %i.aj
  %i.al = icmp ult i64 %i.ak, %i.ae
  %i.am = select i1 %i.ah, i1 true, i1 %i.al
  %i.an = select i1 %i.ab, i1 %i.am, i1 false     ; 2 uses
  %.070 = zext i1 %i.an to i64                    ; 2 uses
  %not. = xor i1 %i.an, true
  %.069 = zext i1 %not. to i64                    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %.070
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !19  ; 2 uses
  %i.aq = sext i8 %i.ap to i64
  %i.ar = icmp eq i8 %i.ap, -1
  %i.as = and i64 %i.aq, 4294967295
  %notmask77 = shl nsw i64 -1, %i.as
  %i.at = xor i64 %notmask77, -1
  %i.au = select i1 %i.ar, i64 0, i64 %i.at       ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 %.069
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !19  ; 2 uses
  %i.ax = sext i8 %i.aw to i64
  %i.ay = icmp eq i8 %i.aw, -1
  %i.az = and i64 %i.ax, 4294967295
  %notmask78 = shl nsw i64 -1, %i.az
  %i.ba = xor i64 %notmask78, -1
  %i.bb = select i1 %i.ay, i64 0, i64 %i.ba       ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.070
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !16
  %i.bf = and i64 %i.au, %1
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bf
  tail call void @dictScanDefragBucket(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %i.bg)
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.069
  %i.bi = xor i64 %i.bb, -1
  %i.bj = xor i64 %i.bb, %i.au
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.071 = phi i64 [ %1, %bb.d ], [ %i.bq, %bb.e ] ; 2 uses
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !16
  %i.bl = and i64 %.071, %i.bb
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bl
  tail call void @dictScanDefragBucket(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %i.bm)
  %i.bn = or i64 %.071, %i.bi
  %i.bo = tail call noundef i64 @llvm.bitreverse.i64(i64 %i.bn)
  %i.bp = add i64 %i.bo, 1
  %i.bq = tail call noundef i64 @llvm.bitreverse.i64(i64 %i.bp) ; 3 uses
  %i.br = and i64 %i.bq, %i.bj
  %.not79 = icmp eq i64 %i.br, 0
  br i1 %.not79, label %.loopexit, label %bb.e, !llvm.loop !100

.loopexit:                                        ; preds = %bb.e, %bb.c
  %.1 = phi i64 [ %i.aa, %bb.c ], [ %i.bq, %bb.e ]
  %i.bs = load i32, ptr %i.g, align 8, !tbaa !9
  %i.bt = add i32 %i.bs, -1
  store i32 %i.bt, ptr %i.g, align 8, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.loopexit
  %.0 = phi i64 [ %.1, %.loopexit ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @dictScanDefragBucket(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(address_is_null) %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %dictDefragBucket.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !101    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !103  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104  ; 2 uses
  %.not74.i = icmp eq ptr %4, null
  br i1 %.not74.i, label %dictDefragBucket.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %.not53.i = icmp eq ptr %i.c, null
  %.not55.i = icmp eq ptr %i.e, null
  br label %bb.c

bb.c:                                             ; preds = %.thread.i, %.lr.ph.i
  %.075.i = phi ptr [ %4, %.lr.ph.i ], [ %i.al, %.thread.i ] ; 3 uses
  %i.f = load ptr, ptr %.075.i, align 8, !tbaa !37 ; 7 uses
  %.not52.i = icmp eq ptr %i.f, null
  br i1 %.not52.i, label %dictDefragBucket.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.pre = ptrtoint ptr %i.f to i64                ; 6 uses
  br i1 %.not53.i, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = and i64 %.pre, 1
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %bb.f, label %dictGetKey.exit.i

bb.f:                                             ; preds = %bb.e
  %i.h = and i64 %.pre, 2
  %.not6.i.i = icmp eq i64 %i.h, 0
  br i1 %.not6.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = and i64 %.pre, -8
  %i.j = inttoptr i64 %i.i to ptr
  br label %dictGetKey.exit.i

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44
end_hunk_0
