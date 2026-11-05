Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mimalloc/original/bitmap?download=true
inline.NumInlined: 201
inline.NumDeleted: 65
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 40
begin_hunk_0_@mi_bchunk_try_find_and_clearNX:bb.a

bb.d:                                             ; preds = %bb.c
  %i.m = shl nuw i64 1, %i.g
  %i.n = add i64 %i.m, %.05489.us.us
  %i.o = and i64 %i.n, %.05489.us.us
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.p = xor i64 %i.j, -1
  %i.q = atomicrmw and ptr %i.e, i64 %i.p acq_rel, align 8 ; 3 uses
  %i.r = and i64 %i.q, %i.j                       ; 3 uses
  %i.s = icmp eq i64 %i.r, %i.j
  br i1 %i.s, label %.critedge72.critedge, label %bb.f, !prof !12

bb.f:                                             ; preds = %bb.e
  %.not.i.us.us = icmp eq i64 %i.r, 0
  br i1 %.not.i.us.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = atomicrmw or ptr %i.e, i64 %i.r acq_rel, align 8 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.256.us.us = phi i64 [ %i.o, %bb.d ], [ %i.q, %bb.f ], [ %i.q, %bb.g ] ; 2 uses
  %.not.i.i.not.us.us = icmp eq i64 %.256.us.us, 0
  br i1 %.not.i.i.not.us.us, label %.critedge71.us, label %.lr.ph.us, !llvm.loop !47

mi_bfield_find_least_bit.exit.split.us.us:        ; preds = %.lr.ph.us
  %.not82.us = icmp eq i64 %indvars.iv118, 7
  br i1 %.not82.us, label %.critedge74, label %bb.i

bb.i:                                             ; preds = %mi_bfield_find_least_bit.exit.split.us.us
  %i.u = xor i64 %.05489.us.us, -1
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 false) ; 3 uses
  %.not.us = icmp eq i64 %i.v, 0
  br i1 %.not.us, label %.critedge71.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.x = load atomic i64, ptr %i.w monotonic, align 8
  %i.y = xor i64 %i.x, -1
  %i.z = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.y, i1 false)
  %i.aa = add nuw nsw i64 %i.z, %i.v
  %.not67.us = icmp ult i64 %i.aa, %1
  br i1 %.not67.us, label %.critedge71.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = shl nuw nsw i64 %indvars.iv118, 6
  %reass.sub.us = sub nsw i64 %i.ab, %i.v
  %i.ac = add nsw i64 %reass.sub.us, 64           ; 2 uses
  %i.ad = tail call fastcc zeroext i1 @mi_bchunk_try_clearNX(ptr noundef nonnull %0, i64 noundef %i.ac, i64 noundef %1, ptr noundef null, ptr noundef null) #15
  br i1 %i.ad, label %.critedge74.sink.split, label %.critedge71.us

.critedge71.us:                                   ; preds = %bb.h, %.split.us, %bb.k, %bb.j, %bb.i
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next119, 8
  br i1 %exitcond121.not, label %.critedge74, label %.split.us, !llvm.loop !48

.split:                                           ; preds = %bb.b, %.critedge71
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge71 ], [ 0, %bb.b ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 4 uses
  %i.af = load atomic i64, ptr %i.ae monotonic, align 8 ; 2 uses
  %.not.i.i.not88 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.not88, label %.critedge71, label %.lr.ph

.lr.ph:                                           ; preds = %.split, %bb.q
  %.05489 = phi i64 [ %.256, %bb.q ], [ %i.af, %.split ] ; 5 uses
  %i.ag = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.05489, i1 true) ; 4 uses
  %i.ah = add nuw nsw i64 %i.ag, %1
  %i.ai = icmp ugt i64 %i.ah, 64
  br i1 %i.ai, label %mi_bfield_find_least_bit.exit.split, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.aj = shl i64 %i.d, %i.ag                     ; 5 uses
  %i.ak = and i64 %i.aj, %.05489
  %i.al = icmp eq i64 %i.ak, %i.aj
  br i1 %i.al, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.am = xor i64 %i.aj, -1
  %i.an = atomicrmw and ptr %i.ae, i64 %i.am acq_rel, align 8 ; 3 uses
  %i.ao = and i64 %i.an, %i.aj                    ; 3 uses
  %i.ap = icmp eq i64 %i.ao, %i.aj
  br i1 %i.ap, label %.critedge72.critedge, label %bb.n, !prof !12

bb.n:                                             ; preds = %bb.m
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = atomicrmw or ptr %i.ae, i64 %i.ao acq_rel, align 8 ; 0 uses
  store i8 1, ptr %3, align 1, !tbaa !16
  br label %bb.q

.critedge72.critedge:                             ; preds = %bb.m, %bb.e
  %.us-phi90.in = phi i64 [ %indvars.iv118, %bb.e ], [ %indvars.iv, %bb.m ]
  %.us-phi91 = phi i64 [ %i.g, %bb.e ], [ %i.ag, %bb.m ]
  %i.ar = shl i64 %.us-phi90.in, 6
  %i.as = and i64 %i.ar, 4294967232
  %i.at = or disjoint i64 %.us-phi91, %i.as
  br label %.critedge74.sink.split

bb.p:                                             ; preds = %bb.l
  %i.au = shl nuw i64 1, %i.ag
  %i.av = add i64 %i.au, %.05489
  %i.aw = and i64 %i.av, %.05489
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.p
  %.256 = phi i64 [ %i.aw, %bb.p ], [ %i.an, %bb.n ], [ %i.an, %bb.o ] ; 2 uses
  %.not.i.i.not = icmp eq i64 %.256, 0
  br i1 %.not.i.i.not, label %.critedge71, label %.lr.ph, !llvm.loop !47

mi_bfield_find_least_bit.exit.split:              ; preds = %.lr.ph
  %.not82 = icmp eq i64 %indvars.iv, 7
  br i1 %.not82, label %.critedge74, label %bb.r

bb.r:                                             ; preds = %mi_bfield_find_least_bit.exit.split
  %i.ax = xor i64 %.05489, -1
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ax, i1 false) ; 3 uses
  %.not = icmp eq i64 %i.ay, 0
  br i1 %.not, label %.critedge71, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ba = load atomic i64, ptr %i.az monotonic, align 8
  %i.bb = xor i64 %i.ba, -1
  %i.bc = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bb, i1 false)
  %i.bd = add nuw nsw i64 %i.bc, %i.ay
  %.not67 = icmp ult i64 %i.bd, %1
  br i1 %.not67, label %.critedge71, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = shl nuw nsw i64 %indvars.iv, 6
  %reass.sub = sub nsw i64 %i.be, %i.ay
  %i.bf = add nsw i64 %reass.sub, 64              ; 2 uses
  %i.bg = tail call fastcc zeroext i1 @mi_bchunk_try_clearNX(ptr noundef nonnull %0, i64 noundef %i.bf, i64 noundef %1, ptr noundef null, ptr noundef nonnull %3) #15
  br i1 %i.bg, label %.critedge74.sink.split, label %.critedge71

.critedge71:                                      ; preds = %bb.q, %.split, %bb.s, %bb.t, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %.critedge74, label %.split, !llvm.loop !48

.critedge74.sink.split:                           ; preds = %bb.t, %bb.k, %.critedge72.critedge
  %.sink = phi i64 [ %i.at, %.critedge72.critedge ], [ %i.ac, %bb.k ], [ %i.bf, %bb.t ]
  store i64 %.sink, ptr %2, align 8, !tbaa !9
  br label %.critedge74

.critedge74:                                      ; preds = %mi_bfield_find_least_bit.exit.split, %.critedge71, %mi_bfield_find_least_bit.exit.split.us.us, %.critedge71.us, %.critedge74.sink.split, %bb.a
  %.12 = phi i1 [ false, %bb.a ], [ true, %.critedge74.sink.split ], [ false, %mi_bfield_find_least_bit.exit.split.us.us ], [ false, %.critedge71.us ], [ false, %.critedge71 ], [ false, %mi_bfield_find_least_bit.exit.split ]
  ret i1 %.12
}

; Function Attrs: nooutline nounwind uwtable
define hidden noundef zeroext i1 @mi_bbitmap_try_find_and_clearNC(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc zeroext i1 @mi_bbitmap_try_find_and_clear_generic(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull @mi_bchunk_try_find_and_clearNC) #15
  ret i1 %i.a
}

; Function Attrs: noinline nooutline norecurse nounwind uwtable
define internal noundef zeroext i1 @mi_bchunk_try_find_and_clearNC(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(address_is_null) %3) #7 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = add i64 %1, -513
  %or.cond = icmp ult i64 %i.c, -512
  br i1 %or.cond, label %.critedge60, label %.lr.ph97

.lr.ph97:                                         ; preds = %bb.a
  %i.d = add nsw i64 %1, -1
  %i.e = lshr i64 %i.d, 6
  %i.f = sub nuw nsw i64 8, %i.e
  %i.g = icmp samesign ult i64 %1, 65
  %.not.i = icmp eq ptr %3, null                  ; 2 uses
  %i.h = icmp samesign ult i64 %1, 64
  %notmask.i.i = shl nsw i64 -1, %1
  %i.i = xor i64 %notmask.i.i, -1
  %i.j = select i1 %i.h, i64 %i.i, i64 -1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph97, %.thread65
  %.04995 = phi i64 [ 0, %.lr.ph97 ], [ %i.cr, %.thread65 ] ; 25 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.04995
  %i.l = load atomic i64, ptr %i.k monotonic, align 8
  %i.m = xor i64 %i.l, -1
  %i.n = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.m, i1 false) ; 4 uses
  %i.o = shl nuw nsw i64 %.04995, 6
  %reass.sub = sub nsw i64 %i.o, %i.n             ; 2 uses
  %i.p = add nsw i64 %reass.sub, 64               ; 3 uses
  %.not = icmp ult i64 %i.n, %1
  br i1 %.not, label %bb.c, label %.thread74

bb.c:                                             ; preds = %bb.b
  %.not56 = icmp eq i64 %i.n, 0
  br i1 %.not56, label %.thread65, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = sub nuw nsw i64 %1, %i.n                 ; 9 uses
  %i.r = icmp ult i64 %.04995, 7
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.s = add nuw nsw i64 %.04995, 1               ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.s
  %i.u = load atomic i64, ptr %i.t monotonic, align 8 ; 2 uses
  %i.v = xor i64 %i.u, -1
  %i.w = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.v, i1 false)
  %.not57 = icmp ult i64 %i.w, %i.q
  br i1 %.not57, label %bb.e, label %.thread68

bb.e:                                             ; preds = %.lr.ph.preheader
  %i.x = icmp eq i64 %i.u, -1
  br i1 %i.x, label %bb.f, label %.thread71

bb.f:                                             ; preds = %bb.e
  %i.y = add nsw i64 %i.q, -64                    ; 2 uses
  %i.z = add nuw nsw i64 %.04995, 2               ; 2 uses
  %exitcond.not = icmp eq i64 %.04995, 6
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z
  %i.ab = load atomic i64, ptr %i.aa monotonic, align 8 ; 2 uses
  %i.ac = xor i64 %i.ab, -1
  %i.ad = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ac, i1 false)
  %.not57.1 = icmp ult i64 %i.ad, %i.y
  br i1 %.not57.1, label %bb.g, label %.thread68

bb.g:                                             ; preds = %.lr.ph.1
  %i.ae = icmp eq i64 %i.ab, -1
  br i1 %i.ae, label %bb.h, label %.thread71

bb.h:                                             ; preds = %bb.g
  %i.af = add nsw i64 %i.q, -128                  ; 2 uses
  %i.ag = add nuw nsw i64 %.04995, 3              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %.04995, 5
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag
  %i.ai = load atomic i64, ptr %i.ah monotonic, align 8 ; 2 uses
  %i.aj = xor i64 %i.ai, -1
  %i.ak = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aj, i1 false)
  %.not57.2 = icmp ult i64 %i.ak, %i.af
  br i1 %.not57.2, label %bb.i, label %.thread68

bb.i:                                             ; preds = %.lr.ph.2
  %i.al = icmp eq i64 %i.ai, -1
  br i1 %i.al, label %bb.j, label %.thread71

bb.j:                                             ; preds = %bb.i
  %i.am = add nsw i64 %i.q, -192                  ; 2 uses
  %i.an = add nuw nsw i64 %.04995, 4              ; 2 uses
  %exitcond.not.2 = icmp eq i64 %.04995, 4
  br i1 %exitcond.not.2, label %._crit_edge, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.an
  %i.ap = load atomic i64, ptr %i.ao monotonic, align 8 ; 2 uses
  %i.aq = xor i64 %i.ap, -1
  %i.ar = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.aq, i1 false)
  %.not57.3 = icmp ult i64 %i.ar, %i.am
  br i1 %.not57.3, label %bb.k, label %.thread68

bb.k:                                             ; preds = %.lr.ph.3
  %i.as = icmp eq i64 %i.ap, -1
  br i1 %i.as, label %bb.l, label %.thread71

bb.l:                                             ; preds = %bb.k
  %i.at = add nsw i64 %i.q, -256                  ; 2 uses
  %i.au = add nuw nsw i64 %.04995, 5              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %.04995, 3
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %bb.l
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au
  %i.aw = load atomic i64, ptr %i.av monotonic, align 8 ; 2 uses
  %i.ax = xor i64 %i.aw, -1
  %i.ay = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ax, i1 false)
  %.not57.4 = icmp ult i64 %i.ay, %i.at
  br i1 %.not57.4, label %bb.m, label %.thread68

bb.m:                                             ; preds = %.lr.ph.4
  %i.az = icmp eq i64 %i.aw, -1
  br i1 %i.az, label %bb.n, label %.thread71

bb.n:                                             ; preds = %bb.m
  %i.ba = add nsw i64 %i.q, -320                  ; 2 uses
  %i.bb = add nuw nsw i64 %.04995, 6              ; 2 uses
  %exitcond.not.4 = icmp eq i64 %.04995, 2
  br i1 %exitcond.not.4, label %._crit_edge, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %bb.n
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bb
  %i.bd = load atomic i64, ptr %i.bc monotonic, align 8 ; 2 uses
  %i.be = xor i64 %i.bd, -1
  %i.bf = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.be, i1 false)
  %.not57.5 = icmp ult i64 %i.bf, %i.ba
  br i1 %.not57.5, label %bb.o, label %.thread68

bb.o:                                             ; preds = %.lr.ph.5
  %i.bg = icmp eq i64 %i.bd, -1
  br i1 %i.bg, label %bb.p, label %.thread71

bb.p:                                             ; preds = %bb.o
  %i.bh = add nsw i64 %i.q, -384                  ; 2 uses
  %i.bi = add nuw nsw i64 %.04995, 7              ; 2 uses
  %exitcond.not.5 = icmp eq i64 %.04995, 1
  br i1 %exitcond.not.5, label %._crit_edge, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bi
  %i.bk = load atomic i64, ptr %i.bj monotonic, align 8 ; 2 uses
  %i.bl = xor i64 %i.bk, -1
  %i.bm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.bl, i1 false)
  %.not57.6 = icmp ult i64 %i.bm, %i.bh
  br i1 %.not57.6, label %bb.q, label %.thread68

bb.q:                                             ; preds = %.lr.ph.6
  %i.bn = icmp eq i64 %i.bk, -1
  br i1 %i.bn, label %bb.r, label %.thread71

bb.r:                                             ; preds = %bb.q
  %i.bo = add nsw i64 %i.q, -448
  br label %._crit_edge

.thread71:                                        ; preds = %bb.q, %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e
  %.lcssa120 = phi i64 [ %i.s, %bb.e ], [ %i.z, %bb.g ], [ %i.ag, %bb.i ], [ %i.an, %bb.k ], [ %i.au, %bb.m ], [ %i.bb, %bb.o ], [ %i.bi, %bb.q ]
  %i.bp = add nsw i64 %.lcssa120, -1
  br label %.thread65

._crit_edge:                                      ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.n, %bb.p, %bb.r, %bb.d
  %.044.lcssa = phi i64 [ %i.q, %bb.d ], [ %i.y, %bb.f ], [ %i.af, %bb.h ], [ %i.am, %bb.j ], [ %i.at, %bb.l ], [ %i.ba, %bb.n ], [ %i.bh, %bb.p ], [ %i.bo, %bb.r ]
  %i.bq = icmp eq i64 %.044.lcssa, 0
  br i1 %i.bq, label %.thread68, label %.thread65

.thread68:                                        ; preds = %.lr.ph.preheader, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %._crit_edge
  br i1 %i.g, label %.thread74, label %.split

.thread74:                                        ; preds = %bb.b, %.thread68
  %i.br = lshr i64 %i.p, 6                        ; 2 uses
  %i.bs = and i64 %reass.sub, 63                  ; 5 uses
  %i.bt = add nuw nsw i64 %i.bs, %1
  %i.bu = icmp samesign ult i64 %i.bt, 65
  br i1 %i.bu, label %bb.s, label %bb.x, !prof !12

bb.s:                                             ; preds = %.thread74
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.br ; 3 uses
  %i.bw = shl i64 %i.j, %i.bs                     ; 5 uses
  %i.bx = load atomic i64, ptr %i.bv monotonic, align 8
  %i.by = and i64 %i.bx, %i.bw
  %i.bz = icmp eq i64 %i.by, %i.bw
  br i1 %i.bz, label %bb.t, label %.thread65

bb.t:                                             ; preds = %bb.s
  %i.ca = xor i64 %i.bw, -1
  %i.cb = atomicrmw and ptr %i.bv, i64 %i.ca acq_rel, align 8
  %i.cc = and i64 %i.cb, %i.bw                    ; 3 uses
  %i.cd = icmp eq i64 %i.cc, %i.bw
  br i1 %i.cd, label %.critedge, label %bb.u, !prof !12

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.i, label %.thread65, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = atomicrmw or ptr %i.bv, i64 %i.cc acq_rel, align 8 ; 0 uses
  br i1 %.not.i, label %.thread65, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 1, ptr %3, align 1, !tbaa !16
  br label %.thread65

bb.x:                                             ; preds = %.thread74
  %i.cf = sub nuw nsw i64 64, %i.bs               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.br ; 3 uses
  %.not35.i = icmp eq i64 %i.bs, 0
  %notmask.i32.i = shl nsw i64 -1, %i.cf
  %i.ch = xor i64 %notmask.i32.i, -1
  %i.ci = select i1 %.not35.i, i64 -1, i64 %i.ch
  %i.cj = shl i64 %i.ci, %i.bs                    ; 2 uses
  %i.ck = call fastcc zeroext i1 @mi_bfield_atomic_try_clear_mask(ptr noundef %i.cg, i64 noundef %i.cj, ptr noundef nonnull %i.a, ptr noundef %3) #15
  br i1 %i.ck, label %bb.y, label %mi_bchunk_try_clearN.exit.thread83

mi_bchunk_try_clearN.exit.thread83:               ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.thread65

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cm = sub nuw nsw i64 %1, %i.cf
  %notmask.i33.i = shl nsw i64 -1, %i.cm
  %i.cn = xor i64 %notmask.i33.i, -1
  %i.co = call fastcc zeroext i1 @mi_bfield_atomic_try_clear_mask(ptr noundef nonnull %i.cl, i64 noundef %i.cn, ptr noundef nonnull %i.b, ptr noundef %3) #15
  br i1 %i.co, label %mi_bchunk_try_clearN.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cp = atomicrmw or ptr %i.cg, i64 %i.cj acq_rel, align 8 ; 0 uses
  br i1 %.not.i, label %mi_bchunk_try_clearN.exit.thread86, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i8 1, ptr %3, align 1, !tbaa !16
  br label %mi_bchunk_try_clearN.exit.thread86

.split:                                           ; preds = %.thread68
  %i.cq = call fastcc zeroext i1 @mi_bchunk_try_clearNC(ptr noundef %0, i64 noundef range(i64 0, 513) %i.p, i64 noundef %1, ptr noundef null, ptr noundef %3) #15
  br i1 %i.cq, label %.critedge, label %.thread65

mi_bchunk_try_clearN.exit.thread86:               ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.thread65

mi_bchunk_try_clearN.exit:                        ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.critedge

.critedge:                                        ; preds = %bb.t, %.split, %mi_bchunk_try_clearN.exit
  store i64 %i.p, ptr %2, align 8, !tbaa !9
  br label %.critedge60

.thread65:                                        ; preds = %bb.w, %bb.v, %bb.u, %bb.s, %bb.c, %mi_bchunk_try_clearN.exit.thread86, %mi_bchunk_try_clearN.exit.thread83, %.split, %.thread71, %._crit_edge
  %.25163 = phi i64 [ %.04995, %mi_bchunk_try_clearN.exit.thread86 ], [ %.04995, %._crit_edge ], [ %.04995, %mi_bchunk_try_clearN.exit.thread83 ], [ %i.bp, %.thread71 ], [ %.04995, %bb.c ], [ %.04995, %.split ], [ %.04995, %bb.s ], [ %.04995, %bb.u ], [ %.04995, %bb.v ], [ %.04995, %bb.w ]
  %i.cr = add i64 %.25163, 1                      ; 2 uses
  %.not58 = icmp ult i64 %i.cr, %i.f
  br i1 %.not58, label %bb.b, label %.critedge60, !llvm.loop !49

.critedge60:                                      ; preds = %.thread65, %.critedge, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ true, %.critedge ], [ false, %.thread65 ]
  ret i1 %.4
}

; Function Attrs: nooutline nounwind uwtable
define hidden noundef zeroext i1 @mi_bbitmap_try_find_and_clearN_(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i64, ptr %0 monotonic, align 64 ; 2 uses
  %i.c = add i64 %2, 511
  %i.d = lshr i64 %i.c, 9                         ; 6 uses
  %i.e = icmp ult i64 %i.b, %i.d
  br i1 %i.e, label %.critedge, label %.preheader51

.preheader51:                                     ; preds = %bb.b
  %i.f = sub nuw i64 %i.b, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %.preheader50

.preheader50:                                     ; preds = %.preheader51, %mi_bchunk_try_clearN_.exit.thread49
  %.03361 = phi i64 [ 0, %.preheader51 ], [ %i.bk, %mi_bchunk_try_clearN_.exit.thread49 ] ; 5 uses
  %i.j = getelementptr [64 x i8], ptr %i.g, i64 %.03361 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader50, %mi_bchunk_all_are_set_relaxed.exit
  %.032 = phi i64 [ %spec.select, %mi_bchunk_all_are_set_relaxed.exit ], [ 0, %.preheader50 ] ; 9 uses
  %i.k = getelementptr [64 x i8], ptr %i.j, i64 %.032 ; 8 uses
  %i.l = load atomic i64, ptr %i.k monotonic, align 8
  %.not.i = icmp eq i64 %i.l, -1
  br i1 %.not.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load atomic i64, ptr %i.m monotonic, align 8
  %.not.1.i = icmp eq i64 %i.n, -1
  br i1 %.not.1.i, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load atomic i64, ptr %i.o monotonic, align 8
  %.not.2.i = icmp eq i64 %i.p, -1
  br i1 %.not.2.i, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.r = load atomic i64, ptr %i.q monotonic, align 8
  %.not.3.i = icmp eq i64 %i.r, -1
  br i1 %.not.3.i, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.t = load atomic i64, ptr %i.s monotonic, align 8
  %.not.4.i = icmp eq i64 %i.t, -1
  br i1 %.not.4.i, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.v = load atomic i64, ptr %i.u monotonic, align 8
  %.not.5.i = icmp eq i64 %i.v, -1
  br i1 %.not.5.i, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.x = load atomic i64, ptr %i.w monotonic, align 8
  %.not.6.i = icmp eq i64 %i.x, -1
  br i1 %.not.6.i, label %mi_bchunk_all_are_set_relaxed.exit, label %.thread

mi_bchunk_all_are_set_relaxed.exit:               ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.z = load atomic i64, ptr %i.y monotonic, align 8
  %.fr = freeze i64 %i.z
  %.not.7.i = icmp eq i64 %.fr, -1                ; 2 uses
  %i.aa = zext i1 %.not.7.i to i64
  %spec.select = add nuw i64 %.032, %i.aa         ; 3 uses
  %i.ab = icmp ult i64 %spec.select, %i.d
  %or.cond = and i1 %.not.7.i, %i.ab
  br i1 %or.cond, label %bb.c, label %.thread, !llvm.loop !50

.thread:                                          ; preds = %bb.c, %bb.g, %bb.d, %bb.e, %bb.h, %bb.f, %bb.i, %mi_bchunk_all_are_set_relaxed.exit
  %i.ac = phi i64 [ %spec.select, %mi_bchunk_all_are_set_relaxed.exit ], [ %.032, %bb.i ], [ %.032, %bb.f ], [ %.032, %bb.h ], [ %.032, %bb.e ], [ %.032, %bb.d ], [ %.032, %bb.g ], [ %.032, %bb.c ] ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %i.d
  br i1 %i.ad, label %.preheader, label %mi_bchunk_try_clearN_.exit.thread49

.preheader:                                       ; preds = %.thread, %mi_bchunk_try_clearN.exit.thread.i
  %.022.i60 = phi i64 [ %i.at, %mi_bchunk_try_clearN.exit.thread.i ], [ 0, %.thread ] ; 4 uses
  %.023.i59 = phi i64 [ %i.as, %mi_bchunk_try_clearN.exit.thread.i ], [ %2, %.thread ] ; 5 uses
  %i.ae = getelementptr [64 x i8], ptr %i.j, i64 %.022.i60 ; 4 uses
  %i.af = tail call i64 @llvm.umin.i64(i64 %.023.i59, i64 512) ; 2 uses
  %i.ag = icmp ult i64 %.023.i59, 65
  br i1 %i.ag, label %bb.j, label %mi_bchunk_try_clearN.exit.i

bb.j:                                             ; preds = %.preheader
  %.not35.i = icmp eq i64 %.023.i59, 64
  %notmask.i.i.i = shl nsw i64 -1, %i.af
  %i.ah = xor i64 %notmask.i.i.i, -1
  %i.ai = select i1 %.not35.i, i64 -1, i64 %i.ah  ; 5 uses
  %i.aj = load atomic i64, ptr %i.ae monotonic, align 8
  %i.ak = and i64 %i.aj, %i.ai
  %i.al = icmp eq i64 %i.ak, %i.ai
  br i1 %i.al, label %bb.k, label %.preheader.i

bb.k:                                             ; preds = %bb.j
  %i.am = xor i64 %i.ai, -1
  %i.an = atomicrmw and ptr %i.ae, i64 %i.am acq_rel, align 8
  %i.ao = and i64 %i.an, %i.ai                    ; 3 uses
  %i.ap = icmp eq i64 %i.ao, %i.ai
  br i1 %i.ap, label %mi_bchunk_try_clearN_.exit.thread, label %bb.l, !prof !12

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.i.i, label %.preheader.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = atomicrmw or ptr %i.ae, i64 %i.ao acq_rel, align 8 ; 0 uses
  br label %.preheader.i

mi_bchunk_try_clearN.exit.i:                      ; preds = %.preheader
  %i.ar = tail call fastcc zeroext i1 @mi_bchunk_try_clearNC(ptr noundef %i.ae, i64 noundef 0, i64 noundef %i.af, ptr noundef null, ptr noundef null) #15
  br i1 %i.ar, label %mi_bchunk_try_clearN.exit.thread.i, label %.preheader.i

mi_bchunk_try_clearN.exit.thread.i:               ; preds = %mi_bchunk_try_clearN.exit.i
  %i.as = add i64 %.023.i59, -512
  %i.at = add i64 %.022.i60, 1
  %.not.i43 = icmp ult i64 %.023.i59, 513
  br i1 %.not.i43, label %mi_bchunk_try_clearN_.exit.thread, label %.preheader

.preheader.i:                                     ; preds = %mi_bchunk_try_clearN.exit.i, %bb.j, %bb.m, %bb.l
  %.not2539.i = icmp eq i64 %.022.i60, 0
  br i1 %.not2539.i, label %mi_bchunk_try_clearN_.exit.thread49, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %mi_bbitmap_chunkmap_set.exit.i
  %.240.i = phi i64 [ %i.au, %mi_bbitmap_chunkmap_set.exit.i ], [ %.022.i60, %.preheader.i ]
  %i.au = add i64 %.240.i, -1                     ; 3 uses
  %i.av = add i64 %i.au, %.03361                  ; 5 uses
  %i.aw = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %i.av
  %i.ax = tail call fastcc zeroext i1 @mi_bchunk_xsetNC(i1 noundef zeroext true, ptr noundef nonnull %i.aw, i64 noundef 0, i64 noundef 512, ptr noundef null, ptr noundef null) #15 ; 0 uses
  %i.ay = lshr i64 %i.av, 6
  %i.az = and i64 %i.av, 63
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ay
  %i.bb = shl nuw i64 1, %i.az
  %i.bc = atomicrmw or ptr %i.ba, i64 %i.bb acq_rel, align 8 ; 0 uses
  %i.bd = load atomic i64, ptr %i.i monotonic, align 8 ; 2 uses
  %i.be = icmp ugt i64 %i.av, %i.bd
  br i1 %i.be, label %bb.n, label %mi_bbitmap_chunkmap_set.exit.i, !prof !10

bb.n:                                             ; preds = %.lr.ph.i
  %i.bf = cmpxchg ptr %i.i, i64 %i.bd, i64 %i.av monotonic monotonic, align 8 ; 0 uses
  br label %mi_bbitmap_chunkmap_set.exit.i

mi_bbitmap_chunkmap_set.exit.i:                   ; preds = %bb.n, %.lr.ph.i
  %.not25.i = icmp eq i64 %i.au, 0
  br i1 %.not25.i, label %mi_bchunk_try_clearN_.exit.thread49, label %.lr.ph.i, !llvm.loop !51

mi_bchunk_try_clearN_.exit.thread:                ; preds = %bb.k, %mi_bchunk_try_clearN.exit.thread.i
  %i.bg = shl i64 %.03361, 9
  store i64 %i.bg, ptr %3, align 8, !tbaa !9
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %mi_bchunk_try_clearN_.exit.thread, %.lr.ph
  %.064 = phi i64 [ %i.bi, %.lr.ph ], [ 0, %mi_bchunk_try_clearN_.exit.thread ] ; 2 uses
  %i.bh = add i64 %.064, %.03361
  tail call fastcc void @mi_bbitmap_set_chunk_bin(ptr noundef nonnull %0, i64 noundef %i.bh, i32 noundef 4) #15
  %i.bi = add nuw i64 %.064, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %i.d
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !52

mi_bchunk_try_clearN_.exit.thread49:              ; preds = %mi_bbitmap_chunkmap_set.exit.i, %.preheader.i, %.thread
  %.2 = phi i64 [ %i.ac, %.thread ], [ 0, %.preheader.i ], [ 0, %mi_bbitmap_chunkmap_set.exit.i ]
  %i.bj = add i64 %.03361, 1
  %i.bk = add i64 %i.bj, %.2                      ; 2 uses
  %.not.not = icmp ugt i64 %i.bk, %i.f
  br i1 %.not.not, label %.critedge, label %.preheader50, !llvm.loop !53

.critedge:                                        ; preds = %mi_bchunk_try_clearN_.exit.thread49, %.lr.ph, %mi_bchunk_try_clearN_.exit.thread, %bb.b, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %mi_bchunk_try_clearN_.exit.thread ], [ true, %.lr.ph ], [ false, %mi_bchunk_try_clearN_.exit.thread49 ]
  ret i1 %.4
}

; Function Attrs: nooutline nounwind uwtable
define internal fastcc void @mi_bbitmap_set_chunk_bin(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef range(i32 0, 6) %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = lshr i64 %1, 6
  %i.c = and i64 %1, 63
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b ; 10 uses
  %i.d = shl nuw i64 1, %i.c                      ; 16 uses
  %i.e = xor i64 %i.d, -1                         ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.g = icmp eq i32 %2, 0
  br i1 %i.g, label %bb.b, label %bb.d
end_hunk_0
