Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/localtime?download=true
inline.NumInlined: 55
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@tzparse:bb.a
  br i1 %i.gh, label %bb.aw, label %.thread328, !llvm.loop !40

.thread328:                                       ; preds = %bb.bk, %increment_overflow_time.exit287.thread, %bb.at, %bb.au, %bb.av
  %.2213.lcssa = phi i32 [ %.2213.peel, %bb.at ], [ %.2213.peel, %bb.au ], [ %.2213.peel, %bb.av ], [ %.2213, %increment_overflow_time.exit287.thread ], [ %.2213, %bb.bk ] ; 2 uses
  %.0218.lcssa.ph = phi i32 [ %.lcssa, %bb.at ], [ %.lcssa, %bb.au ], [ %i.eq, %bb.av ], [ %i.gg, %bb.bk ], [ %.0218362, %increment_overflow_time.exit287.thread ]
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.2213.lcssa, ptr %i.gi, align 4
  %.not262 = icmp eq i32 %.2213.lcssa, 0
  br i1 %.not262, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.thread328
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(24) %i.ce, i64 24, i1 false)
  store i32 1, ptr %i.bw, align 8
  br label %bb.bo

bb.bm:                                            ; preds = %.thread328.thread, %.thread328
  %.0218344 = phi i32 [ %.0218362, %.thread328.thread ], [ %.0218.lcssa.ph, %.thread328 ]
  %i.gj = sub nuw i32 %.0218344, %.lcssa
  %i.gk = icmp sgt i32 %i.gj, 400
  br i1 %i.gk, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  store i8 1, ptr %i.ae, align 1
  store i8 1, ptr %i.af, align 8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bl, %bb.bn, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.bx

bb.bp:                                            ; preds = %bb.bq
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.bq, !llvm.loop !41

bb.bq:                                            ; preds = %.lr.ph, %bb.bp
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.bp ] ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv
  %i.gm = load i8, ptr %i.gl, align 1
  %i.gn = zext i8 %i.gm to i64
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load i8, ptr %i.gp, align 8, !range !9, !noundef !10
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.bp, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gs = load i64, ptr %i.go, align 8
  %i.gt = sub i64 0, %i.gs
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.bp, %bb.br
  %.0199 = phi i64 [ %i.gt, %bb.br ], [ 0, %bb.bp ]
  %.pre396 = load i64, ptr %i.a, align 8          ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 16024
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 18024
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gx = zext nneg i32 %i.bk to i64
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge, %bb.bw
  %indvars.iv388 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next389, %bb.bw ] ; 3 uses
  %.1200356 = phi i64 [ %.0199, %._crit_edge ], [ %.2201, %bb.bw ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gu, i64 %indvars.iv388 ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1
  %i.ha = zext i8 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %i.gv, i64 %i.ha ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8 ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 8, !range !9, !noundef !10 ; 2 uses
  store i8 %i.hd, ptr %i.gy, align 1
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 17
  %i.hf = load i8, ptr %i.he, align 1, !range !9, !noundef !10
  %i.hg = trunc nuw i8 %i.hf to i1
  br i1 %i.hg, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hh = sub i64 %.pre396, %.1200356
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv388 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8
  %i.hk = add i64 %i.hh, %i.hj
  store i64 %i.hk, ptr %i.hi, align 8
  %.pre395 = load i8, ptr %i.hc, align 8, !range !9
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.hl = phi i8 [ %.pre395, %bb.bt ], [ %i.hd, %bb.bs ]
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hn = load i64, ptr %i.hb, align 8
  %i.ho = sub i64 0, %i.hn
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv
  %.2201 = phi i64 [ %i.ho, %bb.bv ], [ %.1200356, %bb.bu ]
  %indvars.iv.next389 = add nuw nsw i64 %indvars.iv388, 1 ; 2 uses
  %i.hp = icmp samesign ult i64 %indvars.iv.next389, %i.gx
  br i1 %i.hp, label %bb.bs, label %._crit_edge360, !llvm.loop !42

._crit_edge360:                                   ; preds = %bb.bw, %._crit_edge.thread
  %.pre396426 = phi i64 [ %.pre396425, %._crit_edge.thread ], [ %.pre396, %bb.bw ]
  %i.hq = getelementptr inbounds nuw i8, ptr %1, i64 18024
  %i.hr = sub i64 0, %.pre396426
  store i64 %i.hr, ptr %i.hq, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 18032
  store i8 0, ptr %i.hs, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 18036
  store i32 0, ptr %i.ht, align 4
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 18040
  store i8 0, ptr %i.hu, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 18041
  store i8 0, ptr %i.hv, align 1
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 18048
  %i.hx = load i64, ptr %i.b, align 8
  %i.hy = sub i64 0, %i.hx
  %i.hz = trunc nuw nsw i64 %i.ac to i32
  store i64 %i.hy, ptr %i.hw, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 18056
  store i8 1, ptr %i.ia, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 18060
  store i32 %i.hz, ptr %i.ib, align 4
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 18064
  store i8 0, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 18065
  store i8 0, ptr %i.id, align 1
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.ie, align 8
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 25480
  store i32 0, ptr %i.if, align 8
  br label %bb.bx

.thread334:                                       ; preds = %bb.l
  %i.ig = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.ig, align 8
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.ih, align 4
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 18024
  %i.ij = load i64, ptr %i.a, align 8
  %i.ik = sub i64 0, %i.ij
  store i64 %i.ik, ptr %i.ii, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 18032
  store i8 0, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 18036
  store i32 0, ptr %i.im, align 4
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 18040
  store i8 0, ptr %i.in, align 8
  %i.io = getelementptr inbounds nuw i8, ptr %1, i64 18041
  store i8 0, ptr %i.io, align 1
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 25480
  store i32 0, ptr %i.ip, align 8
  %i.iq = trunc nuw nsw i64 %i.ac to i32
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.iq, ptr %i.ir, align 4
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 24168 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.is, ptr align 1 %.1231, i64 %.1227, i1 false)
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 %.1227
  store i8 0, ptr %i.it, align 1
  br label %.critedge267

bb.bx:                                            ; preds = %._crit_edge360, %bb.bo
  %i.iu = trunc nuw nsw i64 %i.ba to i32
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.iu, ptr %i.iv, align 4
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 24168 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.iw, ptr align 1 %.1231, i64 %.1227, i1 false)
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %.1227 ; 2 uses
  store i8 0, ptr %i.ix, align 1
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 1 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iy, ptr nonnull align 1 %.0228, i64 %.0224, i1 false)
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.0224
  store i8 0, ptr %i.iz, align 1
  br label %.critedge267

.critedge:                                        ; preds = %bb.z, %bb.y, %bb.x, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.critedge267

.critedge267:                                     ; preds = %bb.e, %bb.n, %bb.w, %.thread334, %bb.bx, %.critedge, %bb.u, %bb.s, %bb.r, %bb.k, %bb.j, %bb.i
  %.2204 = phi i1 [ false, %bb.j ], [ false, %bb.k ], [ false, %bb.r ], [ false, %bb.s ], [ true, %.thread334 ], [ false, %.critedge ], [ false, %bb.w ], [ true, %bb.bx ], [ false, %bb.i ], [ false, %bb.n ], [ false, %bb.u ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i1 %.2204
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @getoffset(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  %i.b = icmp eq i8 %i.a, 45                      ; 2 uses
  %i.c = icmp eq i8 %i.a, 43
  %i.d = or i1 %i.b, %i.c
  %.012.idx = zext i1 %i.d to i64
  %.012 = getelementptr inbounds nuw i8, ptr %0, i64 %.012.idx ; 2 uses
  %i.e = load i8, ptr %.012, align 1              ; 2 uses
  %2 = add i8 %i.e, -48
  %i.f = icmp ult i8 %2, 10
  br i1 %i.f, label %.preheader.i.i, label %getsecs.exit.thread

.preheader.i.i:                                   ; preds = %bb.a, %bb.b
  %.015.i.i = phi ptr [ %i.k, %bb.b ], [ %.012, %bb.a ] ; 2 uses
  %.013.i.i = phi i8 [ %i.l, %bb.b ], [ %i.e, %bb.a ]
  %.0.i.i = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]
  %i.g = mul i32 %.0.i.i, 10
  %3 = zext nneg i8 %.013.i.i to i32
  %i.h = add nsw i32 %3, -48
  %i.i = add i32 %i.h, %i.g                       ; 4 uses
  %i.j = icmp sgt i32 %i.i, 167
  br i1 %i.j, label %getsecs.exit.thread, label %bb.b

bb.b:                                             ; preds = %.preheader.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 1 ; 4 uses
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %4 = add i8 %i.l, -48
  %i.m = icmp ult i8 %4, 10
  br i1 %i.m, label %.preheader.i.i, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %bb.b
  %i.n = icmp slt i32 %i.i, 0
  br i1 %i.n, label %getsecs.exit.thread, label %getnum.exit.i

getnum.exit.i:                                    ; preds = %bb.c
  %i.o = zext nneg i32 %i.i to i64
  %i.p = mul nuw nsw i64 %i.o, 3600               ; 3 uses
  store i64 %i.p, ptr %1, align 8
  %i.q = load i8, ptr %i.k, align 1
  %i.r = icmp eq i8 %i.q, 58
  br i1 %i.r, label %bb.d, label %getsecs.exit

bb.d:                                             ; preds = %getnum.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 2 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1               ; 2 uses
  %5 = add i8 %i.t, -48
  %i.u = icmp ult i8 %5, 10
  br i1 %i.u, label %.preheader.i20.i, label %getsecs.exit.thread

.preheader.i20.i:                                 ; preds = %bb.d, %bb.e
  %.015.i21.i = phi ptr [ %i.z, %bb.e ], [ %i.s, %bb.d ] ; 2 uses
  %.013.i22.i = phi i8 [ %i.aa, %bb.e ], [ %i.t, %bb.d ]
  %.0.i23.i = phi i32 [ %i.x, %bb.e ], [ 0, %bb.d ]
  %i.v = mul i32 %.0.i23.i, 10
  %6 = zext nneg i8 %.013.i22.i to i32
  %i.w = add nsw i32 %6, -48
  %i.x = add i32 %i.w, %i.v                       ; 4 uses
  %i.y = icmp sgt i32 %i.x, 59
  br i1 %i.y, label %getsecs.exit.thread, label %bb.e

bb.e:                                             ; preds = %.preheader.i20.i
  %i.z = getelementptr inbounds nuw i8, ptr %.015.i21.i, i64 1 ; 4 uses
  %i.aa = load i8, ptr %i.z, align 1              ; 2 uses
  %7 = add i8 %i.aa, -48
  %i.ab = icmp ult i8 %7, 10
  br i1 %i.ab, label %.preheader.i20.i, label %bb.f, !llvm.loop !0

bb.f:                                             ; preds = %bb.e
  %i.ac = icmp slt i32 %i.x, 0
  br i1 %i.ac, label %getsecs.exit.thread, label %getnum.exit24.i

getnum.exit24.i:                                  ; preds = %bb.f
  %i.ad = mul nuw nsw i32 %i.x, 60
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = add nuw nsw i64 %i.p, %i.ae             ; 3 uses
  store i64 %i.af, ptr %1, align 8
  %i.ag = load i8, ptr %i.z, align 1
  %i.ah = icmp eq i8 %i.ag, 58
  br i1 %i.ah, label %bb.g, label %getsecs.exit

bb.g:                                             ; preds = %getnum.exit24.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.015.i21.i, i64 2 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1             ; 2 uses
  %8 = add i8 %i.aj, -48
  %i.ak = icmp ult i8 %8, 10
  br i1 %i.ak, label %.preheader.i26.i, label %getsecs.exit.thread

.preheader.i26.i:                                 ; preds = %bb.g, %bb.h
  %.015.i27.i = phi ptr [ %i.ap, %bb.h ], [ %i.ai, %bb.g ]
  %.013.i28.i = phi i8 [ %i.aq, %bb.h ], [ %i.aj, %bb.g ]
  %.0.i29.i = phi i32 [ %i.an, %bb.h ], [ 0, %bb.g ]
  %i.al = mul i32 %.0.i29.i, 10
  %9 = zext nneg i8 %.013.i28.i to i32
  %i.am = add nsw i32 %9, -48
  %i.an = add i32 %i.am, %i.al                    ; 4 uses
  %i.ao = icmp sgt i32 %i.an, 60
  br i1 %i.ao, label %getsecs.exit.thread, label %bb.h

bb.h:                                             ; preds = %.preheader.i26.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.015.i27.i, i64 1 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1             ; 2 uses
  %10 = add i8 %i.aq, -48
  %i.ar = icmp ult i8 %10, 10
  br i1 %i.ar, label %.preheader.i26.i, label %bb.i, !llvm.loop !0

bb.i:                                             ; preds = %bb.h
  %i.as = icmp slt i32 %i.an, 0
  br i1 %i.as, label %getsecs.exit.thread, label %getnum.exit30.i

getnum.exit30.i:                                  ; preds = %bb.i
  %i.at = zext nneg i32 %i.an to i64
  %i.au = add nuw nsw i64 %i.af, %i.at            ; 2 uses
  store i64 %i.au, ptr %1, align 8
  br label %getsecs.exit

getsecs.exit:                                     ; preds = %getnum.exit.i, %getnum.exit24.i, %getnum.exit30.i
  %i.av = phi i64 [ %i.au, %getnum.exit30.i ], [ %i.p, %getnum.exit.i ], [ %i.af, %getnum.exit24.i ]
  %.0.i = phi ptr [ %i.ap, %getnum.exit30.i ], [ %i.k, %getnum.exit.i ], [ %i.z, %getnum.exit24.i ] ; 2 uses
  br i1 %i.b, label %bb.j, label %getsecs.exit.thread

bb.j:                                             ; preds = %getsecs.exit
  %i.aw = sub nsw i64 0, %i.av
  store i64 %i.aw, ptr %1, align 8
  br label %getsecs.exit.thread

getsecs.exit.thread:                              ; preds = %.preheader.i.i, %.preheader.i20.i, %.preheader.i26.i, %bb.i, %bb.g, %bb.f, %bb.a, %bb.c, %bb.d, %getsecs.exit, %bb.j
  %.0.i18 = phi ptr [ %.0.i, %bb.j ], [ %.0.i, %getsecs.exit ], [ null, %bb.d ], [ null, %bb.i ], [ null, %.preheader.i26.i ], [ null, %bb.c ], [ null, %bb.a ], [ null, %.preheader.i20.i ], [ null, %bb.f ], [ null, %bb.g ], [ null, %.preheader.i.i ]
  ret ptr %.0.i18
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef ptr @getrule(ptr nofree noundef readonly captures(ret: address, provenance) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 2 uses
  switch i8 %i.a, label %bb.r [
    i8 74, label %bb.b
    i8 77, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i8, ptr %i.b, align 1               ; 2 uses
  %2 = add i8 %i.d, -48
  %i.e = icmp ult i8 %2, 10
  br i1 %i.e, label %.preheader.i, label %getnum.exit40.thread

.preheader.i:                                     ; preds = %bb.b, %bb.c
  %.015.i = phi ptr [ %i.j, %bb.c ], [ %i.b, %bb.b ]
  %.013.i = phi i8 [ %i.k, %bb.c ], [ %i.d, %bb.b ]
  %.0.i = phi i32 [ %i.h, %bb.c ], [ 0, %bb.b ]
  %i.f = mul i32 %.0.i, 10
  %3 = zext nneg i8 %.013.i to i32
  %i.g = add nsw i32 %3, -48
  %i.h = add i32 %i.g, %i.f                       ; 4 uses
  %i.i = icmp sgt i32 %i.h, 365
  br i1 %i.i, label %getnum.exit40.thread, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %i.j = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %4 = add i8 %i.k, -48
  %i.l = icmp ult i8 %4, 10
  br i1 %i.l, label %.preheader.i, label %bb.d, !llvm.loop !0

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i32 %i.h, 1
  br i1 %i.m, label %getnum.exit40.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.h, ptr %i.c, align 4
  br label %getnum.exit

bb.f:                                             ; preds = %bb.a
  store i32 2, ptr %1, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.p = load i8, ptr %i.n, align 1               ; 2 uses
  %5 = add i8 %i.p, -48
  %i.q = icmp ult i8 %5, 10
  br i1 %i.q, label %.preheader.i36, label %getnum.exit40.thread

.preheader.i36:                                   ; preds = %bb.f, %bb.g
  %.015.i37 = phi ptr [ %i.v, %bb.g ], [ %i.n, %bb.f ] ; 2 uses
  %.013.i38 = phi i8 [ %i.w, %bb.g ], [ %i.p, %bb.f ]
  %.0.i39 = phi i32 [ %i.t, %bb.g ], [ 0, %bb.f ]
  %i.r = mul i32 %.0.i39, 10
  %6 = zext nneg i8 %.013.i38 to i32
  %i.s = add nsw i32 %6, -48
  %i.t = add i32 %i.s, %i.r                       ; 4 uses
  %i.u = icmp sgt i32 %i.t, 12
  br i1 %i.u, label %getnum.exit40.thread, label %bb.g

bb.g:                                             ; preds = %.preheader.i36
  %i.v = getelementptr inbounds nuw i8, ptr %.015.i37, i64 1 ; 3 uses
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  %7 = add i8 %i.w, -48
  %i.x = icmp ult i8 %7, 10
  br i1 %i.x, label %.preheader.i36, label %bb.h, !llvm.loop !0

bb.h:                                             ; preds = %bb.g
  %i.y = icmp slt i32 %i.t, 1
  br i1 %i.y, label %getnum.exit40.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.t, ptr %i.o, align 4
  %i.z = load i8, ptr %i.v, align 1
  %.not = icmp eq i8 %i.z, 46
  br i1 %.not, label %bb.j, label %getnum.exit40.thread

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.015.i37, i64 2 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load i8, ptr %i.aa, align 1             ; 2 uses
  %8 = add i8 %i.ac, -48
  %i.ad = icmp ult i8 %8, 10
  br i1 %i.ad, label %.preheader.i42, label %getnum.exit40.thread

.preheader.i42:                                   ; preds = %bb.j, %bb.k
  %.015.i43 = phi ptr [ %i.ai, %bb.k ], [ %i.aa, %bb.j ] ; 2 uses
  %.013.i44 = phi i8 [ %i.aj, %bb.k ], [ %i.ac, %bb.j ]
  %.0.i45 = phi i32 [ %i.ag, %bb.k ], [ 0, %bb.j ]
  %i.ae = mul i32 %.0.i45, 10
  %9 = zext nneg i8 %.013.i44 to i32
  %i.af = add nsw i32 %9, -48
  %i.ag = add i32 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp sgt i32 %i.ag, 5
  br i1 %i.ah, label %getnum.exit40.thread, label %bb.k

bb.k:                                             ; preds = %.preheader.i42
  %i.ai = getelementptr inbounds nuw i8, ptr %.015.i43, i64 1 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1             ; 2 uses
  %10 = add i8 %i.aj, -48
  %i.ak = icmp ult i8 %10, 10
  br i1 %i.ak, label %.preheader.i42, label %bb.l, !llvm.loop !0

bb.l:                                             ; preds = %bb.k
  %i.al = icmp slt i32 %i.ag, 1
  br i1 %i.al, label %getnum.exit40.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 %i.ag, ptr %i.ab, align 8
  %i.am = load i8, ptr %i.ai, align 1
  %.not34 = icmp eq i8 %i.am, 46
  br i1 %.not34, label %bb.n, label %getnum.exit40.thread

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %.015.i43, i64 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ap = load i8, ptr %i.an, align 1             ; 2 uses
  %11 = add i8 %i.ap, -48
  %i.aq = icmp ult i8 %11, 10
  br i1 %i.aq, label %.preheader.i48, label %getnum.exit40.thread

.preheader.i48:                                   ; preds = %bb.n, %bb.o
  %.015.i49 = phi ptr [ %i.av, %bb.o ], [ %i.an, %bb.n ]
  %.013.i50 = phi i8 [ %i.aw, %bb.o ], [ %i.ap, %bb.n ]
  %.0.i51 = phi i32 [ %i.at, %bb.o ], [ 0, %bb.n ]
  %i.ar = mul i32 %.0.i51, 10
  %12 = zext nneg i8 %.013.i50 to i32
  %i.as = add nsw i32 %12, -48
  %i.at = add i32 %i.as, %i.ar                    ; 4 uses
  %i.au = icmp sgt i32 %i.at, 6
  br i1 %i.au, label %getnum.exit40.thread, label %bb.o

bb.o:                                             ; preds = %.preheader.i48
  %i.av = getelementptr inbounds nuw i8, ptr %.015.i49, i64 1 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1             ; 2 uses
  %13 = add i8 %i.aw, -48
  %i.ax = icmp ult i8 %13, 10
  br i1 %i.ax, label %.preheader.i48, label %bb.p, !llvm.loop !0

bb.p:                                             ; preds = %bb.o
  %i.ay = icmp slt i32 %i.at, 0
  br i1 %i.ay, label %getnum.exit40.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %i.at, ptr %i.ao, align 4
  br label %getnum.exit

bb.r:                                             ; preds = %bb.a
  %14 = add i8 %i.a, -48
  %i.az = icmp ult i8 %14, 10
  br i1 %i.az, label %bb.s, label %getnum.exit40.thread

bb.s:                                             ; preds = %bb.r
  store i32 1, ptr %1, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bb = load i8, ptr %0, align 1                ; 2 uses
  %15 = add i8 %i.bb, -48
  %i.bc = icmp ult i8 %15, 10
  br i1 %i.bc, label %.preheader.i54, label %getnum.exit40.thread

.preheader.i54:                                   ; preds = %bb.s, %bb.t
  %.015.i55 = phi ptr [ %i.bh, %bb.t ], [ %0, %bb.s ]
  %.013.i56 = phi i8 [ %i.bi, %bb.t ], [ %i.bb, %bb.s ]
  %.0.i57 = phi i32 [ %i.bf, %bb.t ], [ 0, %bb.s ]
  %i.bd = mul i32 %.0.i57, 10
  %16 = zext nneg i8 %.013.i56 to i32
  %i.be = add nsw i32 %16, -48
  %i.bf = add i32 %i.be, %i.bd                    ; 4 uses
  %i.bg = icmp sgt i32 %i.bf, 365
  br i1 %i.bg, label %getnum.exit40.thread, label %bb.t

bb.t:                                             ; preds = %.preheader.i54
  %i.bh = getelementptr inbounds nuw i8, ptr %.015.i55, i64 1 ; 3 uses
  %i.bi = load i8, ptr %i.bh, align 1             ; 2 uses
  %17 = add i8 %i.bi, -48
  %i.bj = icmp ult i8 %17, 10
  br i1 %i.bj, label %.preheader.i54, label %bb.u, !llvm.loop !0

bb.u:                                             ; preds = %bb.t
  %i.bk = icmp slt i32 %i.bf, 0
  br i1 %i.bk, label %getnum.exit40.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.bf, ptr %i.ba, align 4
  br label %getnum.exit

getnum.exit:                                      ; preds = %bb.e, %bb.q, %bb.v
  %.030 = phi ptr [ %i.av, %bb.q ], [ %i.bh, %bb.v ], [ %i.j, %bb.e ] ; 3 uses
  %i.bl = load i8, ptr %.030, align 1
  %i.bm = icmp eq i8 %i.bl, 47
  br i1 %i.bm, label %bb.w, label %bb.x

bb.w:                                             ; preds = %getnum.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %.030, i64 1
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bp = tail call fastcc ptr @getoffset(ptr noundef nonnull %i.bn, ptr noundef %i.bo)
  br label %getnum.exit40.thread

bb.x:                                             ; preds = %getnum.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 7200, ptr %i.bq, align 8
  br label %getnum.exit40.thread

getnum.exit40.thread:                             ; preds = %.preheader.i36, %.preheader.i42, %.preheader.i48, %.preheader.i, %.preheader.i54, %bb.s, %bb.u, %bb.p, %bb.d, %bb.b, %bb.n, %bb.j, %bb.l, %bb.f, %bb.h, %bb.w, %bb.x, %bb.r, %bb.m, %bb.i
  %.0 = phi ptr [ null, %bb.r ], [ null, %bb.j ], [ null, %bb.m ], [ %.030, %bb.x ], [ null, %bb.i ], [ null, %bb.f ], [ %i.bp, %bb.w ], [ null, %.preheader.i48 ], [ null, %bb.h ], [ null, %.preheader.i ], [ null, %bb.l ], [ null, %bb.n ], [ null, %bb.b ], [ null, %.preheader.i42 ], [ null, %bb.d ], [ null, %.preheader.i54 ], [ null, %bb.p ], [ null, %bb.s ], [ null, %bb.u ], [ null, %.preheader.i36 ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc i64 @transtime(i32 noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = and i32 %0, 3
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = srem i32 %0, 100
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = srem i32 %0, 400
  %i.e = icmp eq i32 %i.d, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.f = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %i.e, %bb.c ] ; 3 uses
  %i.g = load i32, ptr %1, align 8
  switch i32 %i.g, label %.loopexit [
    i32 0, label %bb.e
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = add i32 %i.i, -1
  %i.k = sext i32 %i.j to i64
  %i.l = mul nsw i64 %i.k, 86400                  ; 2 uses
  %i.m = icmp sgt i32 %i.i, 59
  %or.cond = select i1 %i.f, i1 %i.m, i1 false
  %i.n = add nsw i64 %i.l, 86400
  %spec.select54 = select i1 %or.cond, i64 %i.n, i64 %i.l
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i32, ptr %i.o, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.q, 86400
  br label %.loopexit

bb.g:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load i32, ptr %i.s, align 4              ; 4 uses
  %i.u = add i32 %i.t, 9
  %i.v = srem i32 %i.u, 12
  %i.w = icmp slt i32 %i.t, 3
  %i.x = sext i1 %i.w to i32
  %i.y = add i32 %0, %i.x                         ; 3 uses
  %.neg = sdiv i32 %i.y, -100
  %i.z = srem i32 %i.y, 100                       ; 2 uses
  %i.aa = trunc nsw i32 %i.v to i16
  %i.ab = mul nsw i16 %i.aa, 26
  %.lhs.trunc = add nsw i16 %i.ab, 24
  %i.ac = sdiv i16 %.lhs.trunc, 10
  %narrow = add nsw i16 %i.ac, 1
  %i.ad = sext i16 %narrow to i32
  %.lhs.trunc55 = trunc nsw i32 %i.z to i8
  %i.ae = sdiv i8 %.lhs.trunc55, 4
  %.sext56 = sext i8 %i.ae to i32
  %i.af = sdiv i32 %i.y, 400
  %.neg52 = shl nsw i32 %.neg, 1
  %i.ag = add nsw i32 %i.af, %i.z
  %i.ah = add nsw i32 %i.ag, %.neg52
  %i.ai = add nsw i32 %i.ah, %.sext56
  %i.aj = add nsw i32 %i.ai, %i.ad
  %i.ak = srem i32 %i.aj, 7                       ; 3 uses
  %i.al = icmp slt i32 %i.ak, 0
  %i.am = add nsw i32 %i.ak, 7
  %spec.select = select i1 %i.al, i32 %i.am, i32 %i.ak
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = sub i32 %i.ao, %spec.select             ; 3 uses
  %i.aq = icmp slt i32 %i.ap, 0
  %i.ar = add nsw i32 %i.ap, 7
  %.042 = select i1 %i.aq, i32 %i.ar, i32 %i.ap   ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load i32, ptr %i.as, align 8            ; 5 uses
  %i.au = icmp sgt i32 %i.at, 1
  br i1 %i.au, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.g
  %.pre = add i32 %i.t, -1
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.av = zext i1 %i.f to i64
  %i.aw = getelementptr inbounds nuw [48 x i8], ptr @mon_lengths, i64 %i.av
  %i.ax = add i32 %i.t, -1                        ; 5 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4            ; 2 uses
  %i.bb = mul i32 %i.at, 7
  %i.bc = add i32 %.042, %i.bb
  %i.bd = add i32 %i.bc, -7                       ; 2 uses
  %i.be = add nsw i32 %i.at, -1                   ; 2 uses
  %min.iters.check = icmp ult i32 %i.at, 17
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i32 %i.be, -16                     ; 4 uses
  %i.bf = mul i32 %n.vec, 7
  %i.bg = add i32 %.042, %i.bf
  %i.bh = or disjoint i32 %n.vec, 1
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.ba, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert70 = insertelement <16 x i32> poison, i32 %.042, i64 0
  %broadcast.splat71 = shufflevector <16 x i32> %broadcast.splatinsert70, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add <16 x i32> %broadcast.splat71, <i32 0, i32 7, i32 14, i32 21, i32 28, i32 35, i32 42, i32 49, i32 56, i32 63, i32 70, i32 77, i32 84, i32 91, i32 98, i32 105>
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 2 uses
  %i.bi = add <16 x i32> %vec.ind, splat (i32 7)
  %i.bj = icmp sge <16 x i32> %i.bi, %broadcast.splat
  %i.bk = freeze <16 x i1> %i.bj                  ; 2 uses
  %i.bl = bitcast <16 x i1> %i.bk to i16
  %.not73 = icmp eq i16 %i.bl, 0
  br i1 %.not73, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 112)
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.bm = icmp eq i32 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i32 %i.be, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.158.ph = phi i32 [ %.042, %.lr.ph ], [ %i.bg, %middle.block ]
  %.04357.ph = phi i32 [ 1, %.lr.ph ], [ %i.bh, %middle.block ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body
  %i.bn = tail call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %i.bk, i1 false)
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = add i32 %index, %i.bo
  %i.bq = mul i32 %i.bp, 7
  %i.br = add i32 %.042, %i.bq
  br label %._crit_edge

bb.h:                                             ; preds = %scalar.ph
  %i.bs = add nuw nsw i32 %.04357, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.bs, %i.at
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !45

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.h
  %.158 = phi i32 [ %i.bt, %bb.h ], [ %.158.ph, %scalar.ph.preheader ] ; 2 uses
  %.04357 = phi i32 [ %i.bs, %bb.h ], [ %.04357.ph, %scalar.ph.preheader ]
  %i.bt = add i32 %.158, 7                        ; 2 uses
  %.not53 = icmp slt i32 %i.bt, %i.ba
  br i1 %.not53, label %bb.h, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h, %scalar.ph, %middle.block, %vector.early.exit, %.._crit_edge_crit_edge
  %.pre-phi = phi i32 [ %.pre, %.._crit_edge_crit_edge ], [ %i.ax, %vector.early.exit ], [ %i.ax, %middle.block ], [ %i.ax, %scalar.ph ], [ %i.ax, %bb.h ] ; 3 uses
  %.1.lcssa = phi i32 [ %.042, %.._crit_edge_crit_edge ], [ %i.br, %vector.early.exit ], [ %i.bd, %middle.block ], [ %i.bd, %bb.h ], [ %.158, %scalar.ph ]
  %i.bu = sext i32 %.1.lcssa to i64
  %i.bv = mul nsw i64 %i.bu, 86400                ; 3 uses
  %i.bw = icmp sgt i32 %.pre-phi, 0
  br i1 %i.bw, label %.lr.ph64, label %.loopexit

end_hunk_0
