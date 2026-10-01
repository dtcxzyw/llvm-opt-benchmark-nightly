Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/rs16?download=true
inline.NumInlined: 12
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN9RSCoder164InitEjjPb:bb.a

.lr.ph.i36.peel.next:                             ; preds = %_ZN9RSCoder165gfInvEj.exit.i37.peel
  %i.fp = add i32 %i.ex, %.0811.i                 ; 6 uses
  %i.fq = mul i32 %i.ex, %.0811.i                 ; 3 uses
  br i1 %i.ez, label %.lr.ph.i36.epil.preheader, label %.lr.ph.i36

._crit_edge.i38.loopexit.unr-lcssa:               ; preds = %_ZN9RSCoder165gfInvEj.exit.i37.1
  br i1 %lcmp.mod94.not, label %._crit_edge.i38, label %.lr.ph.i36.epil.preheader

.lr.ph.i36.epil.preheader:                        ; preds = %._crit_edge.i38.loopexit.unr-lcssa, %.lr.ph.i36.peel.next
  %.010.i.epil.init = phi i32 [ 1, %.lr.ph.i36.peel.next ], [ %i.hm, %._crit_edge.i38.loopexit.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod95)
  %i.fr = icmp eq i32 %.010.i.epil.init, %i.fp
  br i1 %i.fr, label %_ZN9RSCoder165gfInvEj.exit.i37.epil, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i36.epil.preheader
  %i.fs = xor i32 %i.fp, %.010.i.epil.init
  %i.ft = load ptr, ptr %0, align 8, !tbaa !18
  %i.fu = load ptr, ptr %i.ew, align 8, !tbaa !19
  %i.fv = zext i32 %i.fs to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !20
  %i.fy = sub i32 65535, %i.fx
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !20
  br label %_ZN9RSCoder165gfInvEj.exit.i37.epil

_ZN9RSCoder165gfInvEj.exit.i37.epil:              ; preds = %bb.u, %.lr.ph.i36.epil.preheader
  %i.gc = phi i32 [ %i.gb, %bb.u ], [ 0, %.lr.ph.i36.epil.preheader ]
  %i.gd = add i32 %i.fq, %.010.i.epil.init
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.ge
  store i32 %i.gc, ptr %i.gf, align 4, !tbaa !20
  br label %._crit_edge.i38

._crit_edge.i38:                                  ; preds = %_ZN9RSCoder165gfInvEj.exit.i37.epil, %._crit_edge.i38.loopexit.unr-lcssa, %_ZN9RSCoder165gfInvEj.exit.i37.peel
  %i.gg = add nuw i32 %.0811.i, 1                 ; 2 uses
  %exitcond61.not = icmp eq i32 %i.gg, %i.ev
  br i1 %exitcond61.not, label %_ZN9RSCoder1617MakeEncoderMatrixEv.exit, label %.lr.ph.i36.preheader, !llvm.loop !2

.lr.ph.i36:                                       ; preds = %.lr.ph.i36.peel.next, %_ZN9RSCoder165gfInvEj.exit.i37.1
  %.010.i = phi i32 [ %i.hm, %_ZN9RSCoder165gfInvEj.exit.i37.1 ], [ 1, %.lr.ph.i36.peel.next ] ; 5 uses
  %niter97 = phi i32 [ %niter97.next.1, %_ZN9RSCoder165gfInvEj.exit.i37.1 ], [ 0, %.lr.ph.i36.peel.next ]
  %i.gh = icmp eq i32 %.010.i, %i.fp
  br i1 %i.gh, label %_ZN9RSCoder165gfInvEj.exit.i37, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i36
  %i.gi = xor i32 %i.fp, %.010.i
  %i.gj = load ptr, ptr %0, align 8, !tbaa !18
  %i.gk = load ptr, ptr %i.ew, align 8, !tbaa !19
  %i.gl = zext i32 %i.gi to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !20
  %i.go = sub i32 65535, %i.gn
  %i.gp = zext i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !20
  br label %_ZN9RSCoder165gfInvEj.exit.i37

_ZN9RSCoder165gfInvEj.exit.i37:                   ; preds = %bb.v, %.lr.ph.i36
  %i.gs = phi i32 [ %i.gr, %bb.v ], [ 0, %.lr.ph.i36 ]
  %i.gt = add i32 %i.fq, %.010.i
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.gu
  store i32 %i.gs, ptr %i.gv, align 4, !tbaa !20
  %i.gw = add nuw i32 %.010.i, 1                  ; 3 uses
  %i.gx = icmp eq i32 %i.gw, %i.fp
  br i1 %i.gx, label %_ZN9RSCoder165gfInvEj.exit.i37.1, label %bb.w

bb.w:                                             ; preds = %_ZN9RSCoder165gfInvEj.exit.i37
  %i.gy = xor i32 %i.fp, %i.gw
  %i.gz = load ptr, ptr %0, align 8, !tbaa !18
  %i.ha = load ptr, ptr %i.ew, align 8, !tbaa !19
  %i.hb = zext i32 %i.gy to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !20
  %i.he = sub i32 65535, %i.hd
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.hf
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !20
  br label %_ZN9RSCoder165gfInvEj.exit.i37.1

_ZN9RSCoder165gfInvEj.exit.i37.1:                 ; preds = %bb.w, %_ZN9RSCoder165gfInvEj.exit.i37
  %i.hi = phi i32 [ %i.hh, %bb.w ], [ 0, %_ZN9RSCoder165gfInvEj.exit.i37 ]
  %i.hj = add i32 %i.fq, %i.gw
  %i.hk = zext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.hk
  store i32 %i.hi, ptr %i.hl, align 4, !tbaa !20
  %i.hm = add nuw i32 %.010.i, 2                  ; 2 uses
  %niter97.next.1 = add i32 %niter97, 2           ; 2 uses
  %niter97.ncmp.1 = icmp eq i32 %niter97.next.1, %unroll_iter96
  br i1 %niter97.ncmp.1, label %._crit_edge.i38.loopexit.unr-lcssa, label %.lr.ph.i36, !llvm.loop !38

_ZN9RSCoder1617MakeEncoderMatrixEv.exit:          ; preds = %._crit_edge.i38, %.preheader, %.preheader.lr.ph.i, %bb.s, %_ZN9RSCoder1617MakeDecoderMatrixEv.exit, %._crit_edge65, %._crit_edge
  %.125 = phi i1 [ false, %._crit_edge ], [ false, %._crit_edge65 ], [ true, %_ZN9RSCoder1617MakeDecoderMatrixEv.exit ], [ true, %bb.s ], [ true, %.preheader.lr.ph.i ], [ false, %.preheader ], [ true, %._crit_edge.i38 ]
  ret i1 %.125
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN9RSCoder1617MakeDecoderMatrixEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !24   ; 3 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge24, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !23   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  br label %bb.b

._crit_edge24:                                    ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph23, %bb.d
  %i.h = phi i32 [ %i.b, %.lr.ph23 ], [ %i.am, %bb.d ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph23 ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.01321 = phi i32 [ 0, %.lr.ph23 ], [ %.1, %bb.d ] ; 3 uses
  %.01420 = phi i32 [ %i.b, %.lr.ph23 ], [ %.2, %bb.d ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1, !tbaa !27, !range !28, !noundef !29
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %.preheader17

.preheader17:                                     ; preds = %bb.b, %.preheader17
  %.115 = phi i32 [ %i.p, %.preheader17 ], [ %.01420, %bb.b ] ; 4 uses
  %i.l = zext i32 %.115 to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !27, !range !28, !noundef !29
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = add i32 %.115, 1                         ; 2 uses
  br i1 %i.o, label %.preheader, label %.preheader17, !llvm.loop !0

.preheader:                                       ; preds = %.preheader17
  %.not25 = icmp eq i32 %i.h, 0
  br i1 %.not25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.q = load ptr, ptr %0, align 8
  %i.r = load ptr, ptr %i.e, align 8
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN9RSCoder165gfInvEj.exit, %.preheader
  %i.s = phi i32 [ 0, %.preheader ], [ %i.ak, %_ZN9RSCoder165gfInvEj.exit ]
  %i.t = add i32 %.01321, 1
  br label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN9RSCoder165gfInvEj.exit
  %i.u = phi i32 [ %i.ak, %_ZN9RSCoder165gfInvEj.exit ], [ %i.h, %.lr.ph.preheader ]
  %.018 = phi i32 [ %i.aj, %_ZN9RSCoder165gfInvEj.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.v = icmp eq i32 %.018, %.115
  br i1 %i.v, label %_ZN9RSCoder165gfInvEj.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.w = xor i32 %.018, %.115
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !20
  %i.aa = sub i32 65535, %i.z
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !20
  br label %_ZN9RSCoder165gfInvEj.exit

_ZN9RSCoder165gfInvEj.exit:                       ; preds = %.lr.ph, %bb.c
  %i.ae = phi i32 [ %i.ad, %bb.c ], [ 0, %.lr.ph ]
  %i.af = mul i32 %i.u, %.01321
  %i.ag = add i32 %i.af, %.018
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ah
  store i32 %i.ae, ptr %i.ai, align 4, !tbaa !20
  %i.aj = add nuw i32 %.018, 1                    ; 2 uses
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !24  ; 3 uses
  %i.al = icmp ult i32 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !40

bb.d:                                             ; preds = %bb.b, %._crit_edge
  %i.am = phi i32 [ %i.h, %bb.b ], [ %i.s, %._crit_edge ] ; 2 uses
  %.2 = phi i32 [ %.01420, %bb.b ], [ %i.p, %._crit_edge ]
  %.1 = phi i32 [ %.01321, %bb.b ], [ %i.t, %._crit_edge ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = zext i32 %i.am to i64
  %i.ao = icmp samesign ult i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %bb.b, label %._crit_edge24, !llvm.loop !1
}

; Function Attrs: mustprogress uwtable
define void @_ZN9RSCoder1619InvertDecoderMatrixEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !24
  %i.e = mul i32 %i.d, %i.b
  %i.f = zext i32 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 2
  %i.h = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.g) #9 ; 12 uses
  %i.i = load i32, ptr %i.c, align 4, !tbaa !24   ; 6 uses
  %i.j = load i32, ptr %i.a, align 4, !tbaa !26   ; 7 uses
  %i.k = mul i32 %i.j, %i.i
  %i.l = zext i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.h, i8 0, i64 %i.m, i1 false)
  %.not99 = icmp eq i32 %i.j, 0
  br i1 %.not99, label %.preheader79, label %.preheader80.lr.ph

.preheader80.lr.ph:                               ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23   ; 3 uses
  %xtraiter = and i32 %i.j, 1
  %i.p = icmp eq i32 %i.j, 1
  br i1 %i.p, label %.preheader80.epil.preheader, label %.preheader80.lr.ph.new

.preheader80.lr.ph.new:                           ; preds = %.preheader80.lr.ph
  %unroll_iter = and i32 %i.j, -2
  br label %.preheader80

.preheader80:                                     ; preds = %bb.e, %.preheader80.lr.ph.new
  %.07382 = phi i32 [ 0, %.preheader80.lr.ph.new ], [ %i.ar, %bb.e ]
  %.07581 = phi i32 [ 0, %.preheader80.lr.ph.new ], [ %i.aw, %bb.e ] ; 3 uses
  %niter = phi i32 [ 0, %.preheader80.lr.ph.new ], [ %niter.next.1, %bb.e ]
  br label %bb.c

.preheader79.loopexit.unr-lcssa:                  ; preds = %bb.e
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader79, label %.preheader80.epil.preheader

.preheader80.epil.preheader:                      ; preds = %.preheader79.loopexit.unr-lcssa, %.preheader80.lr.ph
  %.07382.epil.init = phi i32 [ 0, %.preheader80.lr.ph ], [ %i.ar, %.preheader79.loopexit.unr-lcssa ]
  %.07581.epil.init = phi i32 [ 0, %.preheader80.lr.ph ], [ %i.aw, %.preheader79.loopexit.unr-lcssa ]
  %lcmp.mod174 = trunc i32 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod174)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader80.epil.preheader
  %.174.epil = phi i32 [ %i.u, %bb.b ], [ %.07382.epil.init, %.preheader80.epil.preheader ] ; 3 uses
  %i.q = zext i32 %.174.epil to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !27, !range !28, !noundef !29
  %i.t = trunc nuw i8 %i.s to i1
  %i.u = add i32 %.174.epil, 1
  br i1 %i.t, label %bb.b, label %.preheader79.loopexit.epilog-lcssa, !llvm.loop !41

.preheader79.loopexit.epilog-lcssa:               ; preds = %bb.b
  %i.v = mul i32 %.07581.epil.init, %i.i
  %i.w = add i32 %.174.epil, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.x
  store i32 1, ptr %i.y, align 4, !tbaa !20
  br label %.preheader79

.preheader79:                                     ; preds = %.preheader79.loopexit.epilog-lcssa, %.preheader79.loopexit.unr-lcssa, %bb.a
  %.not100 = icmp eq i32 %i.i, 0
  br i1 %.not100, label %._crit_edge98, label %.preheader78.lr.ph

.preheader78.lr.ph:                               ; preds = %.preheader79
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !23  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %.preheader78

bb.c:                                             ; preds = %bb.c, %.preheader80
  %.174 = phi i32 [ %i.ah, %bb.c ], [ %.07382, %.preheader80 ] ; 3 uses
  %i.ad = zext i32 %.174 to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !27, !range !28, !noundef !29
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = add i32 %.174, 1                        ; 2 uses
  br i1 %i.ag, label %bb.c, label %.preheader80.1, !llvm.loop !41

.preheader80.1:                                   ; preds = %bb.c
  %i.ai = mul i32 %.07581, %i.i
  %i.aj = add i32 %.174, %i.ai
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ak
  store i32 1, ptr %i.al, align 4, !tbaa !20
  %i.am = or disjoint i32 %.07581, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader80.1
  %.174.1 = phi i32 [ %i.ar, %bb.d ], [ %i.ah, %.preheader80.1 ] ; 3 uses
  %i.an = zext i32 %.174.1 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !27, !range !28, !noundef !29
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = add i32 %.174.1, 1                      ; 3 uses
  br i1 %i.aq, label %bb.d, label %bb.e, !llvm.loop !41

bb.e:                                             ; preds = %bb.d
  %i.as = mul i32 %i.am, %i.i
  %i.at = add i32 %.174.1, %i.as
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.au
  store i32 1, ptr %i.av, align 4, !tbaa !20
  %i.aw = add nuw i32 %.07581, 2                  ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader79.loopexit.unr-lcssa, label %.preheader80, !llvm.loop !42

.preheader78:                                     ; preds = %.preheader78.lr.ph, %._crit_edge
  %i.ax = phi i32 [ %i.i, %.preheader78.lr.ph ], [ %i.fd, %._crit_edge ] ; 9 uses
  %i.ay = phi i32 [ %i.j, %.preheader78.lr.ph ], [ %i.fe, %._crit_edge ] ; 4 uses
  %.07193 = phi i32 [ 0, %.preheader78.lr.ph ], [ %i.fg, %._crit_edge ] ; 4 uses
  %.07292 = phi i32 [ 0, %.preheader78.lr.ph ], [ %i.ff, %._crit_edge ] ; 3 uses
  %i.az = zext i32 %.07193 to i64                 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !27, !range !28, !noundef !29
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %.preheader.lr.ph, label %.critedge

.preheader.lr.ph:                                 ; preds = %.preheader78
  %.not101 = icmp eq i32 %i.ay, 0
  br i1 %.not101, label %.preheader, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.bd = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 4 uses
  %wide.trip.count = zext i32 %i.ay to i64        ; 6 uses
  %i.be = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check = icmp ult i32 %i.ay, 12
  %ident.check = icmp ne i32 %i.ax, 1
  %i.bf = trunc i64 %i.be to i32
  %i.bg = icmp ugt i64 %i.be, 4294967295
  %invariant.op = or i1 %i.bg, %ident.check
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter175 = and i64 %wide.trip.count, 1
  %lcmp.mod176.not = icmp eq i64 %xtraiter175, 0
  %i.bh = add nsw i64 %wide.trip.count, -1
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %.184.us = phi i32 [ %.07193, %.preheader.lr.ph.split.us ], [ %i.cx, %._crit_edge.us ] ; 6 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us
  %i.bi = xor i32 %.184.us, -1
  %i.bj = icmp ult i32 %i.bi, %i.bf
  %.reass = or i1 %i.bj, %invariant.op
  br i1 %.reass, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.bk = trunc nuw i64 %index to i32
  %i.bl = add i32 %.184.us, %i.bk
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load = load <4 x i32>, ptr %i.bn, align 4, !tbaa !20
  %wide.load161 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !20
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bm ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %wide.load162 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !20
  %wide.load163 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !20
  %i.br = xor <4 x i32> %wide.load162, %wide.load
  %i.bs = xor <4 x i32> %wide.load163, %wide.load161
  store <4 x i32> %i.br, ptr %i.bp, align 4, !tbaa !20
  store <4 x i32> %i.bs, ptr %i.bq, align 4, !tbaa !20
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bt = icmp eq i64 %index.next, %n.vec
  br i1 %i.bt, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.us ], [ %n.vec, %middle.block ] ; 4 uses
  br i1 %lcmp.mod176.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bu = trunc nuw i64 %indvars.iv.ph to i32
  %i.bv = mul i32 %i.ax, %i.bu
  %i.bw = add i32 %i.bv, %.184.us
  %i.bx = zext i32 %i.bw to i64                   ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !20
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.bx ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !20
  %i.cc = xor i32 %i.cb, %i.bz
  store i32 %i.cc, ptr %i.ca, align 4, !tbaa !20
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cd = icmp eq i64 %indvars.iv.ph, %i.bh
  br i1 %i.cd, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ce = trunc nuw i64 %indvars.iv to i32
  %i.cf = mul i32 %i.ax, %i.ce
  %i.cg = add i32 %i.cf, %.184.us
  %i.ch = zext i32 %i.cg to i64                   ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !20
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ch ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !20
  %i.cm = xor i32 %i.cl, %i.cj
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !20
  %i.cn = trunc i64 %indvars.iv to i32
  %i.co = add i32 %i.cn, 1
  %i.cp = mul i32 %i.ax, %i.co
  %i.cq = add i32 %i.cp, %.184.us
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !20
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.cr ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !20
  %i.cw = xor i32 %i.cv, %i.ct
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond112.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond112.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !44

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.cx = add nuw i32 %.184.us, 1                 ; 4 uses
  %i.cy = zext i32 %i.cx to i64                   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !27, !range !28, !noundef !29
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = icmp ult i32 %i.cx, %i.ax
  %or.cond.us = and i1 %i.dc, %i.db
  br i1 %or.cond.us, label %.preheader.us, label %.critedge, !llvm.loop !45

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.184 = phi i32 [ %i.dd, %.preheader ], [ %.07193, %.preheader.lr.ph ]
  %i.dd = add nuw i32 %.184, 1                    ; 4 uses
  %i.de = zext i32 %i.dd to i64                   ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !27, !range !28, !noundef !29
  %i.dh = trunc nuw i8 %i.dg to i1
  %i.di = icmp ult i32 %i.dd, %i.ax
  %or.cond = and i1 %i.di, %i.dh
  br i1 %or.cond, label %.preheader, label %.critedge, !llvm.loop !45

.critedge:                                        ; preds = %._crit_edge.us, %.preheader, %.preheader78
  %.1.lcssa = phi i32 [ %.07193, %.preheader78 ], [ %i.dd, %.preheader ], [ %i.cx, %._crit_edge.us ] ; 2 uses
  %.lcssa = phi i64 [ %i.az, %.preheader78 ], [ %i.de, %.preheader ], [ %i.cy, %._crit_edge.us ] ; 2 uses
  %i.dj = icmp eq i32 %.1.lcssa, %i.ax
  br i1 %i.dj, label %.critedge._crit_edge, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.dk = load ptr, ptr %i.ab, align 8, !tbaa !22 ; 2 uses
  %i.dl = mul i32 %i.ax, %.07292
  %i.dm = zext i32 %i.dl to i64                   ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.dm ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dm ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.lcssa
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !20 ; 2 uses
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %.lr.ph, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ds = load ptr, ptr %0, align 8, !tbaa !18
  %i.dt = load ptr, ptr %i.ac, align 8, !tbaa !19
  %i.du = zext i32 %i.dq to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !20
  %i.dx = sub i32 65535, %i.dw
  %i.dy = zext i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !20
  %i.eb = zext i32 %i.ea to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.f
  %i.ec = phi i64 [ %i.eb, %bb.g ], [ 0, %bb.f ]
  %i.ed = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ee = load ptr, ptr %i.ac, align 8, !tbaa !19 ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ec ; 2 uses
  %.pre = load i32, ptr %i.ef, align 4, !tbaa !20
  br label %bb.h

.preheader77:                                     ; preds = %bb.h
  %.pre122 = load i32, ptr %i.a, align 4, !tbaa !26 ; 2 uses
  %.not103 = icmp eq i32 %.pre122, 0
  br i1 %.not103, label %._crit_edge, label %.lr.ph91

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %i.eg = phi i32 [ %.pre, %.lr.ph ], [ %i.ev, %bb.h ]
  %indvars.iv113 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next114, %bb.h ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv113 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !20
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !20
  %i.em = add i32 %i.eg, %i.el
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.en
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !20
  store i32 %i.ep, ptr %i.eh, align 4, !tbaa !20
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv113 ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !20
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !20
  %i.ev = load i32, ptr %i.ef, align 4, !tbaa !20 ; 2 uses
  %i.ew = add i32 %i.ev, %i.eu
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !20
  store i32 %i.ez, ptr %i.eq, align 4, !tbaa !20
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %i.fa = load i32, ptr %i.c, align 4, !tbaa !24  ; 4 uses
  %i.fb = zext i32 %i.fa to i64
  %i.fc = icmp samesign ult i64 %indvars.iv.next114, %i.fb
  br i1 %i.fc, label %bb.h, label %.preheader77, !llvm.loop !46

._crit_edge:                                      ; preds = %.loopexit, %.preheader77
  %i.fd = phi i32 [ %i.fa, %.preheader77 ], [ %i.gy, %.loopexit ] ; 3 uses
  %i.fe = phi i32 [ 0, %.preheader77 ], [ %i.gz, %.loopexit ] ; 2 uses
  %i.ff = add i32 %.07292, 1
  %i.fg = add i32 %.1.lcssa, 1                    ; 2 uses
  %i.fh = icmp ult i32 %i.fg, %i.fd
  br i1 %i.fh, label %.preheader78, label %.critedge._crit_edge, !llvm.loop !47

.lr.ph91:                                         ; preds = %.preheader77, %.loopexit
  %i.fi = phi i32 [ %i.gy, %.loopexit ], [ %i.fa, %.preheader77 ] ; 2 uses
  %i.fj = phi i32 [ %i.gz, %.loopexit ], [ %.pre122, %.preheader77 ] ; 2 uses
  %i.fk = phi i32 [ %i.ha, %.loopexit ], [ %i.fa, %.preheader77 ] ; 3 uses
  %.06890 = phi i32 [ %i.hb, %.loopexit ], [ 0, %.preheader77 ] ; 3 uses
  %.not = icmp eq i32 %.06890, %.07292
  br i1 %.not, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.lr.ph91
  %i.fl = mul i32 %i.fk, %.06890
  %i.fm = zext i32 %i.fl to i64                   ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.fm ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.fm
  %.not104 = icmp eq i32 %i.fk, 0
  br i1 %.not104, label %.loopexit, label %.lr.ph89

.lr.ph89:                                         ; preds = %bb.i
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %.lcssa
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !20
  %i.fr = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.fs = load ptr, ptr %i.ac, align 8, !tbaa !19 ; 3 uses
  %i.ft = zext i32 %i.fq to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.ft ; 2 uses
  %.pre123 = load i32, ptr %i.fu, align 4, !tbaa !20
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph89, %bb.j
  %i.fv = phi i32 [ %.pre123, %.lr.ph89 ], [ %i.gn, %bb.j ]
  %indvars.iv116 = phi i64 [ 0, %.lr.ph89 ], [ %indvars.iv.next117, %bb.j ] ; 5 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %indvars.iv116
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !20
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !20
  %i.gb = add i32 %i.fv, %i.ga
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !20
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv116 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !20
  %i.gh = xor i32 %i.gg, %i.ge
  store i32 %i.gh, ptr %i.gf, align 4, !tbaa !20
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv116
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !20
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !20
  %i.gn = load i32, ptr %i.fu, align 4, !tbaa !20 ; 2 uses
  %i.go = add i32 %i.gn, %i.gm
  %i.gp = zext i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !20
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv116 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !20
  %i.gu = xor i32 %i.gt, %i.gr
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !20
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %i.gv = load i32, ptr %i.c, align 4, !tbaa !24  ; 3 uses
  %i.gw = zext i32 %i.gv to i64
  %i.gx = icmp samesign ult i64 %indvars.iv.next117, %i.gw
  br i1 %i.gx, label %bb.j, label %.loopexit.loopexit, !llvm.loop !48

.loopexit.loopexit:                               ; preds = %bb.j
  %.pre124 = load i32, ptr %i.a, align 4, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.i, %.lr.ph91
  %i.gy = phi i32 [ %i.gv, %.loopexit.loopexit ], [ %i.fi, %bb.i ], [ %i.fi, %.lr.ph91 ] ; 2 uses
  %i.gz = phi i32 [ %.pre124, %.loopexit.loopexit ], [ %i.fj, %bb.i ], [ %i.fj, %.lr.ph91 ] ; 3 uses
  %i.ha = phi i32 [ %i.gv, %.loopexit.loopexit ], [ 0, %bb.i ], [ %i.fk, %.lr.ph91 ]
  %i.hb = add nuw i32 %.06890, 1                  ; 2 uses
  %i.hc = icmp ult i32 %i.hb, %i.gz
  br i1 %i.hc, label %.lr.ph91, label %._crit_edge, !llvm.loop !49

.critedge._crit_edge:                             ; preds = %._crit_edge, %.critedge
  %i.hd = phi i32 [ %i.ax, %.critedge ], [ %i.fd, %._crit_edge ]
  %i.he = phi i32 [ %i.ay, %.critedge ], [ %i.fe, %._crit_edge ]
  %i.hf = mul i32 %i.hd, %i.he
  %i.hg = icmp eq i32 %i.hf, 0
  br i1 %i.hg, label %._crit_edge98, label %.lr.ph97

.lr.ph97:                                         ; preds = %.critedge._crit_edge
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !22
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph97, %bb.k
  %indvars.iv119 = phi i64 [ 0, %.lr.ph97 ], [ %indvars.iv.next120, %bb.k ] ; 3 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv119
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !20
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv119
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !20
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.hm = load i32, ptr %i.a, align 4, !tbaa !26
  %i.hn = load i32, ptr %i.c, align 4, !tbaa !24
  %i.ho = mul i32 %i.hn, %i.hm
  %i.hp = zext i32 %i.ho to i64
  %i.hq = icmp samesign ult i64 %indvars.iv.next120, %i.hp
  br i1 %i.hq, label %bb.k, label %._crit_edge98, !llvm.loop !50

._crit_edge98:                                    ; preds = %bb.k, %.preheader79, %.critedge._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN9RSCoder1617MakeEncoderMatrixEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge12, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load i32, ptr %i.c, align 4, !tbaa !24   ; 2 uses
  %.not13 = icmp eq i32 %i.g, 0
  br i1 %.not13, label %._crit_edge12, label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.h = phi i32 [ %i.l, %._crit_edge ], [ %i.b, %.preheader.lr.ph ]
  %i.i = phi i32 [ %i.m, %._crit_edge ], [ %i.g, %.preheader.lr.ph ] ; 2 uses
  %.0811 = phi i32 [ %i.n, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %.not14 = icmp eq i32 %i.i, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.j = load ptr, ptr %0, align 8
  %i.k = load ptr, ptr %i.d, align 8
  br label %.lr.ph

._crit_edge12:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge.loopexit:                             ; preds = %_ZN9RSCoder165gfInvEj.exit
  %.pre = load i32, ptr %i.a, align 8, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.l = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.h, %.preheader ] ; 2 uses
  %i.m = phi i32 [ %i.ag, %._crit_edge.loopexit ], [ 0, %.preheader ]
  %i.n = add nuw i32 %.0811, 1                    ; 2 uses
  %i.o = icmp ult i32 %i.n, %i.l
  br i1 %i.o, label %.preheader, label %._crit_edge12, !llvm.loop !2

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN9RSCoder165gfInvEj.exit
  %i.p = phi i32 [ %i.ag, %_ZN9RSCoder165gfInvEj.exit ], [ %i.i, %.lr.ph.preheader ] ; 2 uses
  %.010 = phi i32 [ %i.af, %_ZN9RSCoder165gfInvEj.exit ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.q = add i32 %i.p, %.0811                     ; 2 uses
  %i.r = icmp eq i32 %.010, %i.q
  br i1 %i.r, label %_ZN9RSCoder165gfInvEj.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.s = xor i32 %i.q, %.010
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !20
  %i.w = sub i32 65535, %i.v
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !20
  br label %_ZN9RSCoder165gfInvEj.exit

_ZN9RSCoder165gfInvEj.exit:                       ; preds = %.lr.ph, %bb.b
  %i.aa = phi i32 [ %i.z, %bb.b ], [ 0, %.lr.ph ]
  %i.ab = mul i32 %i.p, %.0811
  %i.ac = add i32 %i.ab, %.010
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ad
  store i32 %i.aa, ptr %i.ae, align 4, !tbaa !20
  %i.af = add nuw i32 %.010, 1                    ; 2 uses
  %i.ag = load i32, ptr %i.c, align 4, !tbaa !24  ; 3 uses
  %i.ah = icmp ult i32 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !51
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define void @_ZN9RSCoder169UpdateECCEjjPKhPhm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4, i64 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr align 1 %4, i8 0, i64 %5, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !55
  %.not = icmp eq i64 %i.d, %5
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = icmp ugt i64 %5, 4611686018427387903
  %i.i = shl nuw i64 %5, 2
  %i.j = select i1 %i.h, i64 -1, i64 %i.i
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #9
  store ptr %i.k, ptr %i.e, align 8, !tbaa !21
  store i64 %5, ptr %i.c, align 8, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.not52 = icmp eq i64 %5, 0
  br i1 %.not52, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21   ; 5 uses
  %i.p = add i64 %5, -1
  %i.q = lshr i64 %i.p, 1
  %i.r = add nuw i64 %i.q, 1                      ; 2 uses
  %xtraiter = and i64 %i.r, 3                     ; 3 uses
  %i.s = icmp ult i64 %5, 7
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.r, -4
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.new
  %.04549 = phi i64 [ 0, %.lr.ph.new ], [ %i.au, %bb.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 %.04549
  %i.u = load i16, ptr %i.t, align 2, !tbaa !57
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !20
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.04549
  store i32 %i.x, ptr %i.y, align 4, !tbaa !20
  %i.z = or disjoint i64 %.04549, 2               ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !57
  %i.ac = zext i16 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !20
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.z
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !20
  %i.ag = or disjoint i64 %.04549, 4              ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !57
  %i.aj = zext i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !20
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ag
  store i32 %i.al, ptr %i.am, align 4, !tbaa !20
  %i.an = or disjoint i64 %.04549, 6              ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !57
  %i.aq = zext i16 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !20
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.an
  store i32 %i.as, ptr %i.at, align 4, !tbaa !20
  %i.au = add nuw i64 %.04549, 8                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.loopexit.loopexit.unr-lcssa, label %bb.i, !llvm.loop !52

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %.04549.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.au, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod55 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod55)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %.04549.epil = phi i64 [ %.04549.epil.init, %.epil.preheader ], [ %i.bb, %bb.j ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 %.04549.epil
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !57
  %i.ax = zext i16 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !20
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.04549.epil
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !20
  %i.bb = add nuw i64 %.04549.epil, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.j, !llvm.loop !53

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.j, %bb.h, %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !19
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !22
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !24
  %i.bi = mul i32 %i.bh, %2
  %i.bj = add i32 %i.bi, %1
  %i.bk = zext i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !20
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !20 ; 3 uses
  %.not53 = icmp eq i64 %5, 0
  br i1 %.not53, label %._crit_edge, label %.lr.ph51

.lr.ph51:                                         ; preds = %.loopexit
  %i.bq = load ptr, ptr %0, align 8, !tbaa !18    ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !21 ; 3 uses
  %i.bt = add i64 %5, -1                          ; 2 uses
  %i.bu = lshr i64 %i.bt, 1                       ; 2 uses
  %i.bv = add nuw i64 %i.bu, 1                    ; 2 uses
  %i.bw = icmp eq i64 %i.bu, 0
  br i1 %i.bw, label %.epil.preheader56, label %.lr.ph51.new

.lr.ph51.new:                                     ; preds = %.lr.ph51
  %unroll_iter61 = and i64 %i.bv, -2
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph51.new
  %.04450 = phi i64 [ 0, %.lr.ph51.new ], [ %i.cs, %bb.k ] ; 4 uses
  %niter62 = phi i64 [ 0, %.lr.ph51.new ], [ %niter62.next.1, %bb.k ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.04450
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !20
  %i.bz = add i32 %i.by, %i.bp
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !20
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 %.04450 ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !57
  %i.cf = trunc i32 %i.cc to i16
  %i.cg = xor i16 %i.ce, %i.cf
  store i16 %i.cg, ptr %i.cd, align 2, !tbaa !57
  %i.ch = or disjoint i64 %.04450, 2              ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !20
  %i.ck = add i32 %i.cj, %i.bp
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !20
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 %i.ch ; 2 uses
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !57
  %i.cq = trunc i32 %i.cn to i16
  %i.cr = xor i16 %i.cp, %i.cq
  store i16 %i.cr, ptr %i.co, align 2, !tbaa !57
  %i.cs = add nuw i64 %.04450, 4                  ; 2 uses
  %niter62.next.1 = add nuw i64 %niter62, 2       ; 2 uses
  %niter62.ncmp.1.not = icmp eq i64 %niter62.next.1, %unroll_iter61
  br i1 %niter62.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.k, !llvm.loop !54

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.k
  %i.ct = and i64 %i.bt, 2
  %lcmp.mod59.not.not = icmp eq i64 %i.ct, 0
  br i1 %lcmp.mod59.not.not, label %.epil.preheader56, label %._crit_edge

.epil.preheader56:                                ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph51
  %.04450.epil.init = phi i64 [ 0, %.lr.ph51 ], [ %i.cs, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod60 = trunc i64 %i.bv to i1
  tail call void @llvm.assume(i1 %lcmp.mod60)
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.04450.epil.init
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !20
  %i.cw = add i32 %i.cv, %i.bp
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !20
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 %.04450.epil.init ; 2 uses
  %i.db = load i16, ptr %i.da, align 2, !tbaa !57
  %i.dc = trunc i32 %i.cz to i16
  %i.dd = xor i16 %i.db, %i.dc
  store i16 %i.dd, ptr %i.da, align 2, !tbaa !57
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader56, %._crit_edge.loopexit.unr-lcssa, %.loopexit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { builtin allocsize(0) }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !30}
!1 = distinct !{!1, !30}
!2 = distinct !{!2, !30, !33}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"bool", !7, i64 0}
!14 = !{!"p1 bool", !11, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"_ZTS9RSCoder16", !12, i64 0, !12, i64 8, !13, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !14, i64 32, !12, i64 40, !12, i64 48, !15, i64 56}
!17 = !{!16, !13, i64 16}
!18 = !{!16, !12, i64 0}
!19 = !{!16, !12, i64 8}
!20 = !{!8, !8, i64 0}
!21 = !{!16, !12, i64 48}
!22 = !{!16, !12, i64 40}
!23 = !{!16, !14, i64 32}
!24 = !{!16, !8, i64 20}
!25 = !{!16, !8, i64 24}
!26 = !{!16, !8, i64 28}
!27 = !{!13, !13, i64 0}
!28 = !{i8 0, i8 2}
!29 = !{}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!"llvm.loop.unswitch.partial.disable"}
!34 = distinct !{!34, !30, !31, !32}
!35 = distinct !{!35, !30}
!36 = distinct !{!36, !30, !32, !31}
!37 = distinct !{!37, !30, !39}
!38 = distinct !{!38, !30, !39}
!39 = !{!"llvm.loop.peeled.count", i32 1}
!40 = distinct !{!40, !30}
!41 = distinct !{!41, !30}
!42 = distinct !{!42, !30}
!43 = distinct !{!43, !30, !31, !32}
!44 = distinct !{!44, !30, !31}
!45 = distinct !{!45, !30}
!46 = distinct !{!46, !30}
!47 = distinct !{!47, !30}
!48 = distinct !{!48, !30}
!49 = distinct !{!49, !30}
!50 = distinct !{!50, !30}
!51 = distinct !{!51, !30}
!52 = distinct !{!52, !30}
!53 = distinct !{!53, !58}
!54 = distinct !{!54, !30}
!55 = !{!16, !15, i64 56}
!56 = !{!"short", !7, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
