Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/d1_both?download=true
inline.NumInlined: 628
inline.NumDeleted: 363
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN4bssl17DTLSMessageBitmap9MarkRangeEmm:bb.a
  store i8 %i.aj, ptr %i.ah, align 1, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %._crit_edge
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !20  ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8, !tbaa !23 ; 2 uses
  %i.al = icmp ult i64 %.promoted, %i.ak
  %.pre = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  br i1 %i.al, label %_ZN4bssl5ArrayIhEixEm.exit15, label %.critedge

_ZN4bssl5ArrayIhEixEm.exit15:                     ; preds = %bb.j, %bb.k
  %i.am = phi i64 [ %i.aq, %bb.k ], [ %.promoted, %bb.j ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !21
  %i.ap = icmp eq i8 %i.ao, -1
  br i1 %i.ap, label %bb.k, label %.critedge.thread

bb.k:                                             ; preds = %_ZN4bssl5ArrayIhEixEm.exit15
  %i.aq = add i64 %i.am, 1                        ; 3 uses
  store i64 %i.aq, ptr %i.a, align 8, !tbaa !23
  %exitcond40.not = icmp eq i64 %i.aq, %i.ak
  br i1 %exitcond40.not, label %.critedge, label %_ZN4bssl5ArrayIhEixEm.exit15, !llvm.loop !168

.critedge:                                        ; preds = %bb.k, %bb.j
  tail call void @OPENSSL_free(ptr noundef %.pre)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %_ZN4bssl5ArrayIhEixEm.exit15, %bb.a, %.critedge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i64, i64 } @_ZNK4bssl17DTLSMessageBitmap17NextUnmarkedRangeEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !23
  %i.c = shl i64 %i.b, 3
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.c) ; 2 uses
  %i.d = lshr i64 %.sroa.speculated, 3            ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20   ; 5 uses
  %.not = icmp ult i64 %i.d, %i.f
  br i1 %.not, label %_ZNK4bssl5ArrayIhEixEm.exit, label %_ZNK4bssl5ArrayIhEixEm.exit32

_ZNK4bssl5ArrayIhEixEm.exit:                      ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.d
  %i.i = load i8, ptr %i.h, align 1, !tbaa !21
  %i.j = trunc i64 %.sroa.speculated to i8
  %i.k = and i8 %i.j, 7
  %notmask2.i = shl nsw i8 -1, %i.k
  %i.l = xor i8 %notmask2.i, -1
  %i.m = or i8 %i.i, %i.l                         ; 2 uses
  %i.n = icmp eq i8 %i.m, -1
  br i1 %i.n, label %.preheader55.preheader, label %_ZNK4bssl5ArrayIhEixEm.exit32.thread

.preheader55.preheader:                           ; preds = %_ZNK4bssl5ArrayIhEixEm.exit
  %i.o = add i64 %i.f, -1                         ; 2 uses
  %exitcond.not75 = icmp eq i64 %i.d, %i.o
  br i1 %exitcond.not75, label %_ZNK4bssl5ArrayIhEixEm.exit32, label %_ZNK4bssl5ArrayIhEixEm.exit31

.preheader55:                                     ; preds = %_ZNK4bssl5ArrayIhEixEm.exit31
  %exitcond.not = icmp eq i64 %.025, %i.o
  br i1 %exitcond.not, label %_ZNK4bssl5ArrayIhEixEm.exit32, label %_ZNK4bssl5ArrayIhEixEm.exit31, !llvm.loop !169

_ZNK4bssl5ArrayIhEixEm.exit31:                    ; preds = %.preheader55.preheader, %.preheader55
  %.025.in76 = phi i64 [ %.025, %.preheader55 ], [ %i.d, %.preheader55.preheader ]
  %.025 = add nuw i64 %.025.in76, 1               ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 %.025
  %i.q = load i8, ptr %i.p, align 1, !tbaa !21    ; 2 uses
  %.not28 = icmp eq i8 %i.q, -1
  br i1 %.not28, label %.preheader55, label %_ZNK4bssl5ArrayIhEixEm.exit32.thread, !llvm.loop !169

_ZNK4bssl5ArrayIhEixEm.exit32.thread:             ; preds = %_ZNK4bssl5ArrayIhEixEm.exit31, %_ZNK4bssl5ArrayIhEixEm.exit
  %.126 = phi i64 [ %i.d, %_ZNK4bssl5ArrayIhEixEm.exit ], [ %.025, %_ZNK4bssl5ArrayIhEixEm.exit31 ] ; 4 uses
  %.1 = phi i8 [ %i.m, %_ZNK4bssl5ArrayIhEixEm.exit ], [ %i.q, %_ZNK4bssl5ArrayIhEixEm.exit31 ] ; 2 uses
  %i.r = zext i8 %.1 to i32                       ; 15 uses
  %i.s = and i32 %i.r, 1
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i, label %bb.b

bb.b:                                             ; preds = %_ZNK4bssl5ArrayIhEixEm.exit32.thread
  %i.u = and i32 %i.r, 2
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = and i32 %i.r, 4
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = and i32 %i.r, 8
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = and i32 %i.r, 16
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = and i32 %i.r, 32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = and i32 %i.r, 64
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = icmp sgt i8 %.1, -1
  br i1 %i.ag, label %.lr.ph.i, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit.thread

.lr.ph.i:                                         ; preds = %_ZNK4bssl5ArrayIhEixEm.exit32.thread, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.011.lcssa.ph.i = phi i64 [ 4, %bb.e ], [ 6, %bb.g ], [ 3, %bb.d ], [ 5, %bb.f ], [ 2, %bb.c ], [ 7, %bb.h ], [ 1, %bb.b ], [ 0, %_ZNK4bssl5ArrayIhEixEm.exit32.thread ] ; 18 uses
  %i.ah = trunc nuw nsw i64 %.011.lcssa.ph.i to i32
  %i.ai = shl nuw nsw i32 1, %i.ah
  %i.aj = and i32 %i.ai, %i.r
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %bb.i, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit

bb.i:                                             ; preds = %.lr.ph.i
  %i.ak = add nuw nsw i64 %.011.lcssa.ph.i, 1     ; 3 uses
  %exitcond.not.i = icmp eq i64 %i.ak, 8
  br i1 %exitcond.not.i, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit.thread, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.i
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = shl nuw nsw i32 1, %i.al
  %i.an = and i32 %i.am, %i.r
  %.not.i.1 = icmp eq i32 %i.an, 0
  br i1 %.not.i.1, label %bb.j, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit

bb.j:                                             ; preds = %.lr.ph.i.1
  %i.ao = add nuw nsw i64 %.011.lcssa.ph.i, 2     ; 3 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ao, 8
  br i1 %exitcond.not.i.1, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit.thread, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %bb.j
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = shl nuw nsw i32 1, %i.ap
  %i.ar = and i32 %i.aq, %i.r
  %.not.i.2 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.2, label %bb.k, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit

bb.k:                                             ; preds = %.lr.ph.i.2
  %i.as = add nuw nsw i64 %.011.lcssa.ph.i, 3     ; 3 uses
  %exitcond.not.i.2 = icmp eq i64 %i.as, 8
  br i1 %exitcond.not.i.2, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit.thread, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %bb.k
  %i.at = trunc nuw nsw i64 %i.as to i32
  %i.au = shl nuw nsw i32 1, %i.at
  %i.av = and i32 %i.au, %i.r
  %.not.i.3 = icmp eq i32 %i.av, 0
  br i1 %.not.i.3, label %bb.l, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit

bb.l:                                             ; preds = %.lr.ph.i.3
  %i.aw = add nuw nsw i64 %.011.lcssa.ph.i, 4     ; 3 uses
  %exitcond.not.i.3 = icmp eq i64 %i.aw, 8
  br i1 %exitcond.not.i.3, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit.thread, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %bb.l
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %i.ay = shl nuw nsw i32 1, %i.ax
  %i.az = and i32 %i.ay, %i.r
  %.not.i.4 = icmp eq i32 %i.az, 0
  br i1 %.not.i.4, label %bb.m, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit

bb.m:                                             ; preds = %.lr.ph.i.4
  %i.ba = add nuw nsw i64 %.011.lcssa.ph.i, 5     ; 3 uses
  %exitcond.not.i.4 = icmp eq i64 %i.ba, 8
  br i1 %exitcond.not.i.4, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit.thread, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %bb.m
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = shl nuw nsw i32 1, %i.bb
  %i.bd = and i32 %i.bc, %i.r
  %.not.i.5 = icmp eq i32 %i.bd, 0
  br i1 %.not.i.5, label %bb.n, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit

bb.n:                                             ; preds = %.lr.ph.i.5
  %i.be = add nuw nsw i64 %.011.lcssa.ph.i, 6     ; 3 uses
  %exitcond.not.i.5 = icmp eq i64 %i.be, 8
  br i1 %exitcond.not.i.5, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit.thread, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %bb.n
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = shl nuw nsw i32 1, %i.bf
  %i.bh = and i32 %i.bg, %i.r
  %.not.i.6 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.6, label %bb.o, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit

bb.o:                                             ; preds = %.lr.ph.i.6
  %i.bi = add nuw nsw i64 %.011.lcssa.ph.i, 7     ; 3 uses
  %exitcond.not.i.6 = icmp eq i64 %i.bi, 8
  br i1 %exitcond.not.i.6, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit.thread, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %bb.o
  %2 = trunc nuw nsw i64 %i.bi to i32
  %3 = shl nuw nsw i32 1, %2
  %i.bj = and i32 %3, %i.r
  %.not.i.7 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.7, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit.thread, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit

_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit.thread: ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %.lr.ph.i.7, %bb.h
  %.011.lcssa17.i.ph = phi i64 [ 8, %bb.h ], [ %.011.lcssa.ph.i, %.lr.ph.i.7 ], [ %.011.lcssa.ph.i, %bb.o ], [ %.011.lcssa.ph.i, %bb.n ], [ %.011.lcssa.ph.i, %bb.m ], [ %.011.lcssa.ph.i, %bb.l ], [ %.011.lcssa.ph.i, %bb.k ], [ %.011.lcssa.ph.i, %bb.j ], [ %.011.lcssa.ph.i, %bb.i ]
  %i.bk = shl i64 %.126, 3
  %i.bl = add i64 %.011.lcssa17.i.ph, %i.bk       ; 3 uses
  %i.bm = add i64 %.126, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.bm)
  %.277 = add i64 %.126, 1                        ; 2 uses
  %i.bn = icmp ult i64 %.277, %i.f
  br i1 %i.bn, label %_ZNK4bssl5ArrayIhEixEm.exit33, label %.preheader._crit_edge

_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit:       ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.7
  %.013.i.lcssa = phi i64 [ %.011.lcssa.ph.i, %.lr.ph.i ], [ %i.ak, %.lr.ph.i.1 ], [ %i.ao, %.lr.ph.i.2 ], [ %i.as, %.lr.ph.i.3 ], [ %i.aw, %.lr.ph.i.4 ], [ %i.ba, %.lr.ph.i.5 ], [ %i.be, %.lr.ph.i.6 ], [ %i.bi, %.lr.ph.i.7 ]
  %i.bo = shl i64 %.126, 3                        ; 2 uses
  %i.bp = or disjoint i64 %.011.lcssa.ph.i, %i.bo
  %i.bq = add i64 %.013.i.lcssa, %i.bo
  br label %_ZNK4bssl5ArrayIhEixEm.exit32

.preheader:                                       ; preds = %_ZNK4bssl5ArrayIhEixEm.exit33
  %.2 = add i64 %.278, 1                          ; 2 uses
  %i.br = icmp ult i64 %.2, %i.f
  br i1 %i.br, label %_ZNK4bssl5ArrayIhEixEm.exit33, label %.preheader._crit_edge, !llvm.loop !170

_ZNK4bssl5ArrayIhEixEm.exit33:                    ; preds = %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit.thread, %.preheader
  %.278 = phi i64 [ %.2, %.preheader ], [ %.277, %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit.thread ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 %.278
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !21  ; 3 uses
  %.not30 = icmp eq i8 %i.bt, 0
  br i1 %.not30, label %.preheader, label %_ZNK4bssl5ArrayIhEixEm.exit34, !llvm.loop !170

.preheader._crit_edge:                            ; preds = %.preheader, %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit.thread
  %i.bu = shl i64 %umax, 3
  br label %_ZNK4bssl5ArrayIhEixEm.exit32

_ZNK4bssl5ArrayIhEixEm.exit34:                    ; preds = %_ZNK4bssl5ArrayIhEixEm.exit33
  %i.bv = shl i64 %.278, 3                        ; 2 uses
  %i.bw = zext i8 %i.bt to i32                    ; 15 uses
  %i.bx = and i32 %i.bw, 1
  %i.by = icmp eq i32 %i.bx, 0                    ; 2 uses
  br i1 %i.by, label %.lr.ph.i41, label %bb.p

bb.p:                                             ; preds = %_ZNK4bssl5ArrayIhEixEm.exit34
  %i.bz = and i32 %i.bw, 2
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.i41, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = and i32 %i.bw, 4
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %.lr.ph.i41, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cd = and i32 %i.bw, 8
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph.i41, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = and i32 %i.bw, 16
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph.i41, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = and i32 %i.bw, 32
  %i.ci = icmp eq i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph.i41, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = and i32 %i.bw, 64
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph.i41, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cl = icmp sgt i8 %i.bt, -1
  br i1 %i.cl, label %.lr.ph.i41, label %_ZNK4bssl5ArrayIhEixEm.exit32

.lr.ph.i41:                                       ; preds = %_ZNK4bssl5ArrayIhEixEm.exit34, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v
  %.013.i42.ph = phi i64 [ 0, %_ZNK4bssl5ArrayIhEixEm.exit34 ], [ 1, %bb.p ], [ 7, %bb.v ], [ 2, %bb.q ], [ 5, %bb.t ], [ 3, %bb.r ], [ 6, %bb.u ], [ 4, %bb.s ] ; 9 uses
  %i.cm = trunc nuw nsw i64 %.013.i42.ph to i32
  %i.cn = shl nuw nsw i32 1, %i.cm
  %i.co = and i32 %i.cn, %i.bw
  %.not.i43 = icmp eq i32 %i.co, 0
  br i1 %.not.i43, label %bb.w, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit45

bb.w:                                             ; preds = %.lr.ph.i41
  %i.cp = add nuw nsw i64 %.013.i42.ph, 1         ; 3 uses
  %exitcond.not.i44 = icmp eq i64 %i.cp, 8
  br i1 %exitcond.not.i44, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit45, label %.lr.ph.i41.1

.lr.ph.i41.1:                                     ; preds = %bb.w
  %i.cq = trunc nuw nsw i64 %i.cp to i32
  %i.cr = shl nuw nsw i32 1, %i.cq
  %i.cs = and i32 %i.cr, %i.bw
  %.not.i43.1 = icmp eq i32 %i.cs, 0
  br i1 %.not.i43.1, label %bb.x, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit45

bb.x:                                             ; preds = %.lr.ph.i41.1
  %i.ct = add nuw nsw i64 %.013.i42.ph, 2         ; 3 uses
  %exitcond.not.i44.1 = icmp eq i64 %i.ct, 8
  br i1 %exitcond.not.i44.1, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit45, label %.lr.ph.i41.2

.lr.ph.i41.2:                                     ; preds = %bb.x
  %i.cu = trunc nuw nsw i64 %i.ct to i32
  %i.cv = shl nuw nsw i32 1, %i.cu
  %i.cw = and i32 %i.cv, %i.bw
  %.not.i43.2 = icmp eq i32 %i.cw, 0
  br i1 %.not.i43.2, label %bb.y, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit45

bb.y:                                             ; preds = %.lr.ph.i41.2
  %i.cx = add nuw nsw i64 %.013.i42.ph, 3         ; 3 uses
  %exitcond.not.i44.2 = icmp eq i64 %i.cx, 8
  br i1 %exitcond.not.i44.2, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit45, label %.lr.ph.i41.3

.lr.ph.i41.3:                                     ; preds = %bb.y
  %i.cy = trunc nuw nsw i64 %i.cx to i32
  %i.cz = shl nuw nsw i32 1, %i.cy
  %i.da = and i32 %i.cz, %i.bw
  %.not.i43.3 = icmp eq i32 %i.da, 0
  br i1 %.not.i43.3, label %bb.z, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit45

bb.z:                                             ; preds = %.lr.ph.i41.3
  %i.db = add nuw nsw i64 %.013.i42.ph, 4         ; 3 uses
  %exitcond.not.i44.3 = icmp eq i64 %i.db, 8
  br i1 %exitcond.not.i44.3, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit45, label %.lr.ph.i41.4

.lr.ph.i41.4:                                     ; preds = %bb.z
  %i.dc = trunc nuw nsw i64 %i.db to i32
  %i.dd = shl nuw nsw i32 1, %i.dc
  %i.de = and i32 %i.dd, %i.bw
  %.not.i43.4 = icmp eq i32 %i.de, 0
  br i1 %.not.i43.4, label %bb.aa, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit45

bb.aa:                                            ; preds = %.lr.ph.i41.4
  %i.df = add nuw nsw i64 %.013.i42.ph, 5         ; 3 uses
  %exitcond.not.i44.4 = icmp eq i64 %i.df, 8
  br i1 %exitcond.not.i44.4, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit45, label %.lr.ph.i41.5

.lr.ph.i41.5:                                     ; preds = %bb.aa
  %i.dg = trunc nuw nsw i64 %i.df to i32
  %i.dh = shl nuw nsw i32 1, %i.dg
  %i.di = and i32 %i.dh, %i.bw
  %.not.i43.5 = icmp eq i32 %i.di, 0
  br i1 %.not.i43.5, label %bb.ab, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit45

bb.ab:                                            ; preds = %.lr.ph.i41.5
  %i.dj = add nuw nsw i64 %.013.i42.ph, 6         ; 3 uses
  %exitcond.not.i44.5 = icmp eq i64 %i.dj, 8
  br i1 %exitcond.not.i44.5, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit45, label %.lr.ph.i41.6

.lr.ph.i41.6:                                     ; preds = %bb.ab
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = shl nuw nsw i32 1, %i.dk
  %i.dm = and i32 %i.dl, %i.bw
  %.not.i43.6 = icmp eq i32 %i.dm, 0
  br i1 %.not.i43.6, label %bb.ac, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit45

bb.ac:                                            ; preds = %.lr.ph.i41.6
  %i.dn = add nuw nsw i64 %.013.i42.ph, 7         ; 3 uses
  %exitcond.not.i44.6 = icmp eq i64 %i.dn, 8
  br i1 %exitcond.not.i44.6, label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit45, label %.lr.ph.i41.7

.lr.ph.i41.7:                                     ; preds = %bb.ac
  %4 = trunc nuw nsw i64 %i.dn to i32
  %5 = shl nuw nsw i32 1, %4
  %i.do = and i32 %5, %i.bw
  %.not.i43.7 = icmp eq i32 %i.do, 0
  %spec.select90 = select i1 %.not.i43.7, i64 8, i64 %i.dn
  br label %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit45

_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit45:     ; preds = %.lr.ph.i41.7, %bb.ac, %.lr.ph.i41.6, %bb.ab, %.lr.ph.i41.5, %bb.aa, %.lr.ph.i41.4, %bb.z, %.lr.ph.i41.3, %bb.y, %.lr.ph.i41.2, %bb.x, %.lr.ph.i41.1, %.lr.ph.i41, %bb.w
  %.0.lcssa.i36 = phi i64 [ 8, %bb.w ], [ %.013.i42.ph, %.lr.ph.i41 ], [ %i.cp, %.lr.ph.i41.1 ], [ 8, %bb.x ], [ %i.ct, %.lr.ph.i41.2 ], [ 8, %bb.y ], [ %i.cx, %.lr.ph.i41.3 ], [ 8, %bb.z ], [ %i.db, %.lr.ph.i41.4 ], [ 8, %bb.aa ], [ %i.df, %.lr.ph.i41.5 ], [ 8, %bb.ab ], [ %i.dj, %.lr.ph.i41.6 ], [ 8, %bb.ac ], [ %spec.select90, %.lr.ph.i41.7 ]
  %i.dp = select i1 %i.by, i64 %.0.lcssa.i36, i64 0
  %spec.select = add i64 %i.dp, %i.bv
  br label %_ZNK4bssl5ArrayIhEixEm.exit32

_ZNK4bssl5ArrayIhEixEm.exit32:                    ; preds = %.preheader55, %.preheader55.preheader, %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit45, %bb.v, %.preheader._crit_edge, %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit, %bb.a
  %.sroa.020.1 = phi i64 [ 0, %bb.a ], [ %i.bp, %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit ], [ %i.bl, %.preheader._crit_edge ], [ %i.bl, %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit45 ], [ %i.bl, %bb.v ], [ 0, %.preheader55.preheader ], [ 0, %.preheader55 ]
  %.sroa.6.4 = phi i64 [ 0, %bb.a ], [ %i.bq, %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit ], [ %i.bu, %.preheader._crit_edge ], [ %spec.select, %_ZN4bsslL24FirstUnmarkedRangeInByteEh.exit45 ], [ %i.bv, %bb.v ], [ 0, %.preheader55.preheader ], [ 0, %.preheader55 ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.020.1, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.4, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN4bssl33dtls1_process_handshake_fragmentsEP6ssl_stPhNS_16DTLSRecordNumberENS_4SpanIKhEE(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.bssl::internal::StackAllocated", align 8 ; 13 uses
  %6 = alloca %"class.std::unique_ptr.51", align 8 ; 5 uses
  %7 = alloca %struct.cbs_st, align 8             ; 5 uses
  %8 = alloca %"struct.bssl::hm_header_st", align 4 ; 11 uses
  %9 = alloca %struct.cbs_st, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store ptr %3, ptr %7, align 8, !tbaa !26
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 %4, ptr %i.a, align 8, !tbaa !27
  %.not134 = icmp eq i64 %4, 0
  br i1 %.not134, label %.thread154, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.g = lshr i64 %2, 48
  %i.h = trunc nuw i64 %i.g to i16
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.b

thread-pre-split:                                 ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit, %bb.bc, %bb.p, %bb.f, %bb.g
  %.254 = phi i1 [ %.052135, %bb.f ], [ %.052135, %bb.g ], [ true, %bb.p ], [ %.052135, %bb.bc ], [ %.052135, %_ZL14OPENSSL_memcpyPvPKvm.exit ] ; 3 uses
  %.351 = phi i1 [ %.048136, %bb.f ], [ %.048136, %bb.g ], [ %.149, %bb.p ], [ %.149, %bb.bc ], [ %.149, %_ZL14OPENSSL_memcpyPvPKvm.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  %.pr = load i64, ptr %i.a, align 8, !tbaa !27
  %.not = icmp eq i64 %.pr, 0
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph, %thread-pre-split
  %.048136 = phi i1 [ false, %.lr.ph ], [ %.351, %thread-pre-split ] ; 5 uses
  %.052135 = phi i1 [ false, %.lr.ph ], [ %.254, %thread-pre-split ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.j = call noundef zeroext i1 @_ZN4bssl20dtls1_parse_fragmentEP6cbs_stPNS_12hm_header_stES1_(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9)
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 109, ptr noundef nonnull @.str, i32 noundef 264)
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.k = load i32, ptr %i.b, align 4, !tbaa !176  ; 2 uses
  %i.l = zext i32 %i.k to i64                     ; 5 uses
  %i.m = load i32, ptr %i.c, align 4, !tbaa !30
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = load i32, ptr %i.d, align 4, !tbaa !31   ; 2 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = icmp ugt i32 %i.k, %i.o
  %i.r = sub nsw i64 %i.p, %i.l
  %i.s = icmp ult i64 %i.r, %i.n
  %or.cond = select i1 %i.q, i1 true, i1 %i.s
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 109, ptr noundef nonnull @.str, i32 noundef 273)
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.t = load i16, ptr %i.e, align 4, !tbaa !32
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !76   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i16, ptr %i.v, align 4, !tbaa !127
  %i.x = icmp ult i16 %i.t, %i.w
  br i1 %i.x, label %thread-pre-split, label %bb.g, !llvm.loop !171

bb.g:                                             ; preds = %bb.f
  %i.y = load i16, ptr %i.u, align 8
  %i.z = and i16 %i.y, 16
  %.not63 = icmp eq i16 %i.z, 0
  br i1 %.not63, label %bb.h, label %thread-pre-split, !llvm.loop !171

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !128
  %.not64 = icmp eq i16 %i.ab, %i.h
  br i1 %.not64, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !177
  %.not76 = icmp eq ptr %i.ad, null
  br i1 %.not76, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 255, ptr noundef nonnull @.str, i32 noundef 294)
  br label %.thread

bb.k:                                             ; preds = %bb.i
  %i.ae = call noundef i64 @_ZN4bssl29ssl_max_handshake_message_lenEPK6ssl_st(ptr noundef nonnull %0)
  %i.af = icmp ult i64 %i.ae, %i.p
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 150, ptr noundef nonnull @.str, i32 noundef 300)
  br label %.thread

bb.m:                                             ; preds = %bb.k
  %i.ag = call i32 @SSL_in_init(ptr noundef nonnull %0)
  %.not65 = icmp eq i32 %i.ag, 0
  br i1 %.not65, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = call noundef zeroext i1 @_ZN4bssl21ssl_has_final_versionEPK6ssl_st(ptr noundef nonnull %0)
  br i1 %i.ah, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ai = call noundef zeroext i16 @_ZN4bssl20ssl_protocol_versionEPK6ssl_st(ptr noundef nonnull %0)
  %i.aj = icmp ugt i16 %i.ai, 771
  %spec.select = select i1 %i.aj, i1 true, i1 %.048136
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m
  %.149 = phi i1 [ %.048136, %bb.m ], [ %spec.select, %bb.o ], [ %.048136, %bb.n ] ; 3 uses
  %i.ak = load i16, ptr %i.e, align 4, !tbaa !32  ; 4 uses
  %i.al = zext i16 %i.ak to i32
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !76  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = load i16, ptr %i.an, align 4, !tbaa !127 ; 3 uses
  %i.ap = zext i16 %i.ao to i32
  %i.aq = sub nsw i32 %i.al, %i.ap
  %i.ar = icmp sgt i32 %i.aq, 7
  br i1 %i.ar, label %thread-pre-split, label %bb.q, !llvm.loop !171

bb.q:                                             ; preds = %bb.p
  %i.as = icmp ult i16 %i.ak, %i.ao
  %narrow.i = sub nuw i16 %i.ak, %i.ao
  %i.at = icmp ugt i16 %narrow.i, 6
  %or.cond.i = select i1 %i.as, i1 true, i1 %i.at
  br i1 %or.cond.i, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = urem i16 %i.ak, 7
  %i.av = zext nneg i16 %i.au to i64              ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 248
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !130 ; 4 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !132
  %i.ba = load i8, ptr %8, align 4, !tbaa !133
  %.not26.i = icmp eq i8 %i.az, %i.ba
  br i1 %.not26.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !20 ; 2 uses
  %i.bd = icmp ult i64 %i.bc, 12
  br i1 %i.bd, label %bb.u, label %_ZNK4bssl19DTLSIncomingMessage7msg_lenEv.exit.i

bb.u:                                             ; preds = %bb.t
  call void @abort() #15
  unreachable

_ZNK4bssl19DTLSIncomingMessage7msg_lenEv.exit.i:  ; preds = %bb.t
  %i.be = add i64 %i.bc, -12
  %i.bf = load i32, ptr %i.d, align 4, !tbaa !31
  %i.bg = zext i32 %i.bf to i64
  %.not27.i = icmp eq i64 %i.be, %i.bg
  br i1 %.not27.i, label %bb.bc, label %bb.v

bb.v:                                             ; preds = %_ZNK4bssl19DTLSIncomingMessage7msg_lenEv.exit.i, %bb.s
  call void @ERR_put_error(i32 noundef 16, i32 noundef 0, i32 noundef 152, ptr noundef nonnull @.str, i32 noundef 237)
  br label %.thread

bb.w:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16, !noalias !178
  call void @CBB_zero(ptr noundef nonnull align 8 dereferenceable(48) %5), !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16, !noalias !178
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.bh = invoke ptr @OPENSSL_malloc(i64 noundef 48)
          to label %.noexc.i.i unwind label %bb.x, !noalias !178 ; 11 uses

.noexc.i.i:                                       ; preds = %bb.w
end_hunk_0
