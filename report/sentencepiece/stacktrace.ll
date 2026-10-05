Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/stacktrace?download=true
inline.NumInlined: 24
inline.NumDeleted: 10
begin_hunk_0_@_ZL10UnwindImplILb0ELb1EEiPPvPmPiiiPKvS3_:bb.a

_ZL14NextStackFrameILb1ELb1EEPPvS1_PKvmm.exit:    ; preds = %bb.j, %bb.l, %bb.m, %bb.n
  %.0.i = phi ptr [ %..i, %bb.n ], [ null, %bb.l ], [ null, %bb.j ], [ null, %bb.m ] ; 3 uses
  %i.av = icmp sgt i32 %.03351, 0
  br i1 %i.av, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZL14NextStackFrameILb1ELb1EEPPvS1_PKvmm.exit
  %i.aw = add nsw i32 %.03351, -1
  br label %bb.q

bb.p:                                             ; preds = %_ZL14NextStackFrameILb1ELb1EEPPvS1_PKvmm.exit
  %i.ax = sext i32 %.03152 to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ax
  store ptr %i.af, ptr %i.ay, align 8, !tbaa !14
  %i.az = add nsw i32 %.03152, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.134 = phi i32 [ %i.aw, %bb.o ], [ %.03351, %bb.p ] ; 2 uses
  %.132 = phi i32 [ %.03152, %bb.o ], [ %i.az, %bb.p ] ; 3 uses
  %i.ba = icmp ne ptr %.0.i, null
  %i.bb = icmp slt i32 %.132, %3
  %i.bc = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %i.bc, label %.lr.ph.split, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.q, %.lr.ph.split, %bb.h, %.lr.ph.split.us, %bb.a
  %.033.lcssa = phi i32 [ %4, %bb.a ], [ %.03351.us, %.lr.ph.split.us ], [ %.134.us, %bb.h ], [ %.03351, %.lr.ph.split ], [ %.134, %bb.q ] ; 2 uses
  %.031.lcssa = phi i32 [ 0, %bb.a ], [ %.03152.us, %.lr.ph.split.us ], [ %.132.us, %bb.h ], [ %.03152, %.lr.ph.split ], [ %.132, %bb.q ]
  %.029.lcssa = phi ptr [ %i.a, %bb.a ], [ %.02953.us, %.lr.ph.split.us ], [ %.0.i.us, %bb.h ], [ %.02953, %.lr.ph.split ], [ %.0.i, %bb.q ] ; 3 uses
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.y, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %.not73 = icmp eq ptr %.029.lcssa, null
  br i1 %.not73, label %._crit_edge70, label %.lr.ph69

.lr.ph69:                                         ; preds = %.preheader
  %i.bd = icmp eq ptr %5, null
  br i1 %i.bd, label %.lr.ph69.split.us, label %.lr.ph69.split

.lr.ph69.split.us:                                ; preds = %.lr.ph69, %_ZL14NextStackFrameILb1ELb1EEPPvS1_PKvmm.exit50.us
  %.068.us = phi i32 [ %i.br, %_ZL14NextStackFrameILb1ELb1EEPPvS1_PKvmm.exit50.us ], [ 0, %.lr.ph69 ] ; 2 uses
  %.02867.us = phi i32 [ %.1.us, %_ZL14NextStackFrameILb1ELb1EEPPvS1_PKvmm.exit50.us ], [ 0, %.lr.ph69 ]
  %.13066.us = phi ptr [ %i.bh, %_ZL14NextStackFrameILb1ELb1EEPPvS1_PKvmm.exit50.us ], [ %.029.lcssa, %.lr.ph69 ] ; 4 uses
  %.265.us = phi i32 [ %.3.us, %_ZL14NextStackFrameILb1ELb1EEPPvS1_PKvmm.exit50.us ], [ %.033.lcssa, %.lr.ph69 ] ; 2 uses
  %i.be = icmp sgt i32 %.265.us, 0                ; 2 uses
  %i.bf = sext i1 %i.be to i32
  %.3.us = add nsw i32 %.265.us, %i.bf
  %not..us = xor i1 %i.be, true
  %i.bg = zext i1 %not..us to i32
  %.1.us = add nuw nsw i32 %.02867.us, %i.bg      ; 4 uses
  %i.bh = load ptr, ptr %.13066.us, align 8, !tbaa !14 ; 5 uses
  %i.bi = ptrtoint ptr %.13066.us to i64          ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64               ; 3 uses
  %.not45.i42.us = icmp ule ptr %i.bh, %.13066.us
  %i.bk = sub i64 %i.bj, %i.bi
  %i.bl = icmp ugt i64 %i.bk, 100000
  %or.cond.i43.us = or i1 %.not45.i42.us, %i.bl
  br i1 %or.cond.i43.us, label %._crit_edge70, label %bb.r

bb.r:                                             ; preds = %.lr.ph69.split.us
  %i.bm = icmp ult i64 %i.c, %i.bi
  %i.bn = icmp ult ptr %.13066.us, inttoptr (i64 -8 to ptr)
  %or.cond48.i44.us = and i1 %i.bn, %i.bm
  br i1 %or.cond48.i44.us, label %bb.s, label %_ZL14NextStackFrameILb1ELb1EEPPvS1_PKvmm.exit50.us

bb.s:                                             ; preds = %bb.r
  %i.bo = icmp ult i64 %i.c, %i.bj
  %i.bp = icmp ult ptr %i.bh, inttoptr (i64 -8 to ptr)
  %or.cond49.i48.us = and i1 %i.bp, %i.bo
  br i1 %or.cond49.i48.us, label %_ZL14NextStackFrameILb1ELb1EEPPvS1_PKvmm.exit50.us, label %._crit_edge70

_ZL14NextStackFrameILb1ELb1EEPPvS1_PKvmm.exit50.us: ; preds = %bb.r, %bb.s
  %i.bq = and i64 %i.bj, 7
  %.not46.i45.us = icmp eq i64 %i.bq, 0
  %i.br = add nuw nsw i32 %.068.us, 1
  %i.bs = icmp ne ptr %i.bh, null
  %i.bt = and i1 %.not46.i45.us, %i.bs
  %i.bu = icmp samesign ult i32 %.068.us, 999
  %i.bv = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %i.bv, label %.lr.ph69.split.us, label %._crit_edge70, !llvm.loop !25

.lr.ph69.split:                                   ; preds = %.lr.ph69
  %i.bw = getelementptr i8, ptr %5, i64 160
  %i.bx = getelementptr i8, ptr %5, i64 120
  %.val.i36 = load i64, ptr %i.bx, align 8, !tbaa !27 ; 3 uses
  %.val51.i37 = load i64, ptr %i.bw, align 8, !tbaa !27 ; 3 uses
  %.not.i.i38 = icmp sge i64 %.val.i36, %.val51.i37
  %i.by = sub nsw i64 %.val.i36, %.val51.i37
  %i.bz = icmp slt i64 %i.by, 100001
  %or.cond.i.i39 = select i1 %.not.i.i38, i1 %i.bz, i1 false
  %.0.i.i40 = select i1 %or.cond.i.i39, i64 %.val.i36, i64 %.val51.i37
  br label %bb.t

._crit_edge70:                                    ; preds = %bb.x, %bb.u, %bb.w, %_ZL14NextStackFrameILb1ELb1EEPPvS1_PKvmm.exit50, %.lr.ph69.split.us, %bb.s, %_ZL14NextStackFrameILb1ELb1EEPPvS1_PKvmm.exit50.us, %.preheader
  %.028.lcssa = phi i32 [ 0, %.preheader ], [ %.1.us, %.lr.ph69.split.us ], [ %.1.us, %_ZL14NextStackFrameILb1ELb1EEPPvS1_PKvmm.exit50.us ], [ %.1.us, %bb.s ], [ %.1, %_ZL14NextStackFrameILb1ELb1EEPPvS1_PKvmm.exit50 ], [ %.1, %bb.w ], [ %.1, %bb.u ], [ %.1, %bb.x ]
  store i32 %.028.lcssa, ptr %6, align 4, !tbaa !16
  br label %bb.y

bb.t:                                             ; preds = %.lr.ph69.split, %_ZL14NextStackFrameILb1ELb1EEPPvS1_PKvmm.exit50
  %.068 = phi i32 [ 0, %.lr.ph69.split ], [ %i.cp, %_ZL14NextStackFrameILb1ELb1EEPPvS1_PKvmm.exit50 ] ; 2 uses
  %.02867 = phi i32 [ 0, %.lr.ph69.split ], [ %.1, %_ZL14NextStackFrameILb1ELb1EEPPvS1_PKvmm.exit50 ]
  %.13066 = phi ptr [ %.029.lcssa, %.lr.ph69.split ], [ %i.cd, %_ZL14NextStackFrameILb1ELb1EEPPvS1_PKvmm.exit50 ] ; 5 uses
  %.265 = phi i32 [ %.033.lcssa, %.lr.ph69.split ], [ %.3, %_ZL14NextStackFrameILb1ELb1EEPPvS1_PKvmm.exit50 ] ; 2 uses
  %i.ca = icmp sgt i32 %.265, 0                   ; 2 uses
  %i.cb = sext i1 %i.ca to i32
  %.3 = add nsw i32 %.265, %i.cb
  %not. = xor i1 %i.ca, true
  %i.cc = zext i1 %not. to i32
  %.1 = add nuw nsw i32 %.02867, %i.cc            ; 5 uses
  %i.cd = load ptr, ptr %.13066, align 8, !tbaa !14 ; 7 uses
  %i.ce = ptrtoint ptr %.13066 to i64             ; 2 uses
  %i.cf = ptrtoint ptr %i.cd to i64               ; 4 uses
  %.not.i41 = icmp eq i64 %.0.i.i40, %i.cf
  br i1 %.not.i41, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not45.i42 = icmp ule ptr %i.cd, %.13066
  %i.cg = sub i64 %i.cf, %i.ce
  %i.ch = icmp ugt i64 %i.cg, 100000
  %or.cond.i43 = or i1 %.not45.i42, %i.ch
  br i1 %or.cond.i43, label %._crit_edge70, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = icmp ult i64 %i.c, %i.ce
  %i.cj = icmp ult ptr %.13066, inttoptr (i64 -8 to ptr)
  %or.cond48.i44 = and i1 %i.cj, %i.ci
  br i1 %or.cond48.i44, label %bb.w, label %_ZL14NextStackFrameILb1ELb1EEPPvS1_PKvmm.exit50

bb.w:                                             ; preds = %bb.v
  %i.ck = icmp ult i64 %i.c, %i.cf
  %i.cl = icmp ult ptr %i.cd, inttoptr (i64 -8 to ptr)
  %or.cond49.i48 = and i1 %i.cl, %i.ck
  br i1 %or.cond49.i48, label %_ZL14NextStackFrameILb1ELb1EEPPvS1_PKvmm.exit50, label %._crit_edge70

bb.x:                                             ; preds = %bb.t
  %i.cm = icmp eq ptr %i.cd, null
  %i.cn = icmp eq ptr %i.cd, %.13066
  %or.cond50.i49 = or i1 %i.cm, %i.cn
  br i1 %or.cond50.i49, label %._crit_edge70, label %_ZL14NextStackFrameILb1ELb1EEPPvS1_PKvmm.exit50

_ZL14NextStackFrameILb1ELb1EEPPvS1_PKvmm.exit50:  ; preds = %bb.v, %bb.w, %bb.x
  %i.co = and i64 %i.cf, 7
  %.not46.i45 = icmp eq i64 %i.co, 0
  %i.cp = add nuw nsw i32 %.068, 1
  %i.cq = icmp ne ptr %i.cd, null
  %i.cr = and i1 %.not46.i45, %i.cq
  %i.cs = icmp samesign ult i32 %.068, 999
  %i.ct = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %i.ct, label %bb.t, label %._crit_edge70, !llvm.loop !25

bb.y:                                             ; preds = %._crit_edge70, %._crit_edge
  ret i32 %.031.lcssa
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef i32 @_ZL10UnwindImplILb1ELb0EEiPPvPmPiiiPKvS3_(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, ptr nofree readnone captures(none) %5, ptr nofree noundef writeonly captures(address_is_null) %6) unnamed_addr #6 {
bb.a:
  %i.a = tail call ptr @llvm.frameaddress.p0(i32 0) ; 5 uses
  %i.b = tail call i32 @getpagesize() #11         ; 2 uses
  %i.c = icmp ne ptr %i.a, null
  %i.d = icmp sgt i32 %3, 0
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = sext i32 %i.b to i64
  %i.g = sub nsw i64 0, %i.f                      ; 3 uses
  %.not = icmp eq ptr %1, null                    ; 2 uses
  %.not52 = icmp eq ptr %2, null
  br i1 %.not52, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.j
  %.04261.us = phi ptr [ %.1.i.us, %bb.j ], [ %i.a, %.lr.ph ] ; 6 uses
  %.04460.us = phi i32 [ %.145.us, %bb.j ], [ 0, %.lr.ph ] ; 4 uses
  %.04659.us = phi i32 [ %.147.us, %bb.j ], [ %4, %.lr.ph ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.04261.us, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.k = load ptr, ptr %.04261.us, align 8, !tbaa !14 ; 5 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = icmp ne ptr %i.k, null
  %i.n = icmp ne ptr %i.k, %.04261.us
  %or.cond.not3.i.us = and i1 %i.m, %i.n
  %i.o = and i64 %i.l, 7
  %.not.i.us = icmp eq i64 %i.o, 0
  %or.cond18.i.us = and i1 %or.cond.not3.i.us, %.not.i.us
  br i1 %or.cond18.i.us, label %bb.c, label %_ZL14NextStackFrameILb0ELb0EEPPvS1_PKvmm.exit.us

bb.c:                                             ; preds = %bb.b
  %i.p = ptrtoint ptr %.04261.us to i64
  %i.q = xor i64 %i.l, %i.p
  %i.r = and i64 %i.q, %i.g
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %7 = call noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal17AddressIsReadableEPKv(ptr noundef nonnull %i.k)
  br i1 %7, label %bb.e, label %_ZL14NextStackFrameILb0ELb0EEPPvS1_PKvmm.exit.us

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %_ZL14NextStackFrameILb0ELb0EEPPvS1_PKvmm.exit.us

_ZL14NextStackFrameILb0ELb0EEPPvS1_PKvmm.exit.us: ; preds = %bb.e, %bb.d, %bb.b
  %.1.i.us = phi ptr [ %i.k, %bb.e ], [ null, %bb.b ], [ null, %bb.d ] ; 3 uses
  %i.t = icmp sgt i32 %.04659.us, 0
  br i1 %i.t, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZL14NextStackFrameILb0ELb0EEPPvS1_PKvmm.exit.us
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.v = sext i32 %.04460.us to i64               ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.v
  store ptr %i.u, ptr %i.w, align 8, !tbaa !14
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = ptrtoint ptr %.04261.us to i64
  %i.y = add i64 %i.x, 16
  %i.z = getelementptr inbounds [8 x i8], ptr %1, i64 %i.v
  store i64 %i.y, ptr %i.z, align 8, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = add nsw i32 %.04460.us, 1
  br label %bb.j

bb.i:                                             ; preds = %_ZL14NextStackFrameILb0ELb0EEPPvS1_PKvmm.exit.us
  %i.ab = add nsw i32 %.04659.us, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.147.us = phi i32 [ %i.ab, %bb.i ], [ %.04659.us, %bb.h ] ; 2 uses
  %.145.us = phi i32 [ %.04460.us, %bb.i ], [ %i.aa, %bb.h ] ; 3 uses
  %i.ac = icmp ne ptr %.1.i.us, null
  %i.ad = icmp slt i32 %.145.us, %3
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !28

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.q
  %.04261.us73 = phi ptr [ %.1.i.us80, %bb.q ], [ %i.a, %.lr.ph.split ] ; 7 uses
  %.04460.us74 = phi i32 [ %.145.us82, %bb.q ], [ 0, %.lr.ph.split ] ; 4 uses
  %.04659.us75 = phi i32 [ %.147.us81, %bb.q ], [ %4, %.lr.ph.split ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.04261.us73, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !14
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.split.us
  %i.ai = load ptr, ptr %.04261.us73, align 8, !tbaa !14 ; 5 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ak = icmp ne ptr %i.ai, null
  %i.al = icmp ne ptr %i.ai, %.04261.us73
  %or.cond.not3.i.us76 = and i1 %i.ak, %i.al
  %i.am = and i64 %i.aj, 7
  %.not.i.us77 = icmp eq i64 %i.am, 0
  %or.cond18.i.us78 = and i1 %or.cond.not3.i.us76, %.not.i.us77
  br i1 %or.cond18.i.us78, label %bb.l, label %_ZL14NextStackFrameILb0ELb0EEPPvS1_PKvmm.exit.us79

bb.l:                                             ; preds = %bb.k
  %i.an = ptrtoint ptr %.04261.us73 to i64
  %i.ao = xor i64 %i.aj, %i.an
  %i.ap = and i64 %i.ao, %i.g
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %8 = call noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal17AddressIsReadableEPKv(ptr noundef nonnull %i.ai)
  br i1 %8, label %bb.n, label %_ZL14NextStackFrameILb0ELb0EEPPvS1_PKvmm.exit.us79

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %_ZL14NextStackFrameILb0ELb0EEPPvS1_PKvmm.exit.us79

_ZL14NextStackFrameILb0ELb0EEPPvS1_PKvmm.exit.us79: ; preds = %bb.n, %bb.m, %bb.k
  %.1.i.us80 = phi ptr [ %i.ai, %bb.n ], [ null, %bb.k ], [ null, %bb.m ] ; 5 uses
  %i.ar = icmp sgt i32 %.04659.us75, 0
  br i1 %i.ar, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZL14NextStackFrameILb0ELb0EEPPvS1_PKvmm.exit.us79
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !14
  %i.at = sext i32 %.04460.us74 to i64            ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %i.at
  store ptr %i.as, ptr %i.au, align 8, !tbaa !14
  %i.av = icmp ugt ptr %.1.i.us80, %.04261.us73
  %i.aw = ptrtoint ptr %.1.i.us80 to i64
  %i.ax = ptrtoint ptr %.04261.us73 to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32
  %.sink = select i1 %i.av, i32 %i.az, i32 0
  %i.ba = getelementptr inbounds [4 x i8], ptr %2, i64 %i.at
  store i32 %.sink, ptr %i.ba, align 4, !tbaa !16
  %i.bb = add nsw i32 %.04460.us74, 1
  br label %bb.q

bb.p:                                             ; preds = %_ZL14NextStackFrameILb0ELb0EEPPvS1_PKvmm.exit.us79
  %i.bc = add nsw i32 %.04659.us75, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.147.us81 = phi i32 [ %i.bc, %bb.p ], [ %.04659.us75, %bb.o ] ; 2 uses
  %.145.us82 = phi i32 [ %.04460.us74, %bb.p ], [ %i.bb, %bb.o ] ; 3 uses
  %i.bd = icmp ne ptr %.1.i.us80, null
  %i.be = icmp slt i32 %.145.us82, %3
  %i.bf = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %i.bf, label %.lr.ph.split.split.us, label %._crit_edge, !llvm.loop !28

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.x
  %.04261 = phi ptr [ %.1.i, %bb.x ], [ %i.a, %.lr.ph.split ] ; 7 uses
  %.04460 = phi i32 [ %.145, %bb.x ], [ 0, %.lr.ph.split ] ; 4 uses
  %.04659 = phi i32 [ %.147, %bb.x ], [ %4, %.lr.ph.split ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.04261, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !14
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.split
  %i.bj = load ptr, ptr %.04261, align 8, !tbaa !14 ; 5 uses
  %i.bk = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bl = icmp ne ptr %i.bj, null
  %i.bm = icmp ne ptr %i.bj, %.04261
  %or.cond.not3.i = and i1 %i.bl, %i.bm
  %i.bn = and i64 %i.bk, 7
  %.not.i = icmp eq i64 %i.bn, 0
  %or.cond18.i = and i1 %or.cond.not3.i, %.not.i
  br i1 %or.cond18.i, label %bb.s, label %_ZL14NextStackFrameILb0ELb0EEPPvS1_PKvmm.exit

bb.s:                                             ; preds = %bb.r
  %i.bo = ptrtoint ptr %.04261 to i64
  %i.bp = xor i64 %i.bk, %i.bo
  %i.bq = and i64 %i.bp, %i.g
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %9 = call noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal17AddressIsReadableEPKv(ptr noundef nonnull %i.bj)
  br i1 %9, label %bb.u, label %_ZL14NextStackFrameILb0ELb0EEPPvS1_PKvmm.exit

bb.u:                                             ; preds = %bb.t, %bb.s
  br label %_ZL14NextStackFrameILb0ELb0EEPPvS1_PKvmm.exit

_ZL14NextStackFrameILb0ELb0EEPPvS1_PKvmm.exit:    ; preds = %bb.r, %bb.t, %bb.u
  %.1.i = phi ptr [ %i.bj, %bb.u ], [ null, %bb.r ], [ null, %bb.t ] ; 5 uses
  %i.bs = icmp sgt i32 %.04659, 0
  br i1 %i.bs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZL14NextStackFrameILb0ELb0EEPPvS1_PKvmm.exit
  %i.bt = add nsw i32 %.04659, -1
  br label %bb.x

bb.w:                                             ; preds = %_ZL14NextStackFrameILb0ELb0EEPPvS1_PKvmm.exit
  %i.bu = load ptr, ptr %i.bg, align 8, !tbaa !14
  %i.bv = sext i32 %.04460 to i64                 ; 3 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bv
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !14
  %i.bx = ptrtoint ptr %.04261 to i64             ; 2 uses
  %i.by = add i64 %i.bx, 16
  %i.bz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bv
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !11
  %i.ca = icmp ugt ptr %.1.i, %.04261
  %i.cb = ptrtoint ptr %.1.i to i64
  %i.cc = sub i64 %i.cb, %i.bx
  %i.cd = trunc i64 %i.cc to i32
  %.sink111 = select i1 %i.ca, i32 %i.cd, i32 0
  %i.ce = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bv
  store i32 %.sink111, ptr %i.ce, align 4, !tbaa !16
  %i.cf = add nsw i32 %.04460, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.147 = phi i32 [ %i.bt, %bb.v ], [ %.04659, %bb.w ] ; 2 uses
  %.145 = phi i32 [ %.04460, %bb.v ], [ %i.cf, %bb.w ] ; 3 uses
  %i.cg = icmp ne ptr %.1.i, null
  %i.ch = icmp slt i32 %.145, %3
  %i.ci = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %i.ci, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.x, %.lr.ph.split.split, %bb.q, %.lr.ph.split.split.us, %bb.j, %.lr.ph.split.us, %bb.a
  %.046.lcssa = phi i32 [ %4, %bb.a ], [ %.147.us81, %bb.q ], [ %.04659.us, %.lr.ph.split.us ], [ %.147.us, %bb.j ], [ %.04659.us75, %.lr.ph.split.split.us ], [ %.04659, %.lr.ph.split.split ], [ %.147, %bb.x ]
  %.044.lcssa = phi i32 [ 0, %bb.a ], [ %.145.us82, %bb.q ], [ %.04460.us, %.lr.ph.split.us ], [ %.145.us, %bb.j ], [ %.04460.us74, %.lr.ph.split.split.us ], [ %.04460, %.lr.ph.split.split ], [ %.145, %bb.x ]
  %.042.lcssa = phi ptr [ %i.a, %bb.a ], [ %.1.i.us80, %bb.q ], [ %.04261.us, %.lr.ph.split.us ], [ %.1.i.us, %bb.j ], [ %.04261.us73, %.lr.ph.split.split.us ], [ %.04261, %.lr.ph.split.split ], [ %.1.i, %bb.x ] ; 2 uses
  %.not53 = icmp eq ptr %6, null
  br i1 %.not53, label %bb.ab, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %.not102 = icmp eq ptr %.042.lcssa, null
  br i1 %.not102, label %._crit_edge100, label %.lr.ph99

.lr.ph99:                                         ; preds = %.preheader
  %i.cj = sext i32 %i.b to i64
  %i.ck = sub nsw i64 0, %i.cj
  br label %bb.y

._crit_edge100:                                   ; preds = %bb.aa, %bb.y, %_ZL14NextStackFrameILb0ELb0EEPPvS1_PKvmm.exit58, %.preheader
  %.041.lcssa = phi i32 [ 0, %.preheader ], [ %.1, %_ZL14NextStackFrameILb0ELb0EEPPvS1_PKvmm.exit58 ], [ %.1, %bb.y ], [ %.1, %bb.aa ]
  store i32 %.041.lcssa, ptr %6, align 4, !tbaa !16
  br label %bb.ab

bb.y:                                             ; preds = %.backedge, %.lr.ph99
  %.098 = phi i32 [ 0, %.lr.ph99 ], [ %.098.be, %.backedge ] ; 3 uses
  %.04197 = phi i32 [ 0, %.lr.ph99 ], [ %.1, %.backedge ]
  %.14396 = phi ptr [ %.042.lcssa, %.lr.ph99 ], [ %i.co, %.backedge ] ; 3 uses
  %.295 = phi i32 [ %.046.lcssa, %.lr.ph99 ], [ %.3, %.backedge ] ; 2 uses
  %i.cl = icmp sgt i32 %.295, 0                   ; 2 uses
  %i.cm = sext i1 %i.cl to i32
  %.3 = add nsw i32 %.295, %i.cm
  %not. = xor i1 %i.cl, true
  %i.cn = zext i1 %not. to i32
  %.1 = add nuw nsw i32 %.04197, %i.cn            ; 4 uses
  %i.co = load ptr, ptr %.14396, align 8, !tbaa !14 ; 5 uses
  %i.cp = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cq = icmp ne ptr %i.co, null
  %i.cr = icmp ne ptr %i.co, %.14396
  %or.cond.not3.i54 = and i1 %i.cq, %i.cr
  %i.cs = and i64 %i.cp, 7
  %.not.i55 = icmp eq i64 %i.cs, 0
  %or.cond18.i56 = and i1 %or.cond.not3.i54, %.not.i55
  br i1 %or.cond18.i56, label %bb.z, label %._crit_edge100

bb.z:                                             ; preds = %bb.y
  %i.ct = ptrtoint ptr %.14396 to i64
  %i.cu = xor i64 %i.cp, %i.ct
  %i.cv = and i64 %i.cu, %i.ck
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_ZL14NextStackFrameILb0ELb0EEPPvS1_PKvmm.exit58, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %10 = call noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal17AddressIsReadableEPKv(ptr noundef nonnull %i.co)
  %i.cx = icmp samesign ult i32 %.098, 999
  %or.cond = select i1 %10, i1 %i.cx, i1 false
  br i1 %or.cond, label %.backedge, label %._crit_edge100

_ZL14NextStackFrameILb0ELb0EEPPvS1_PKvmm.exit58:  ; preds = %bb.z
  %.old138 = icmp samesign ult i32 %.098, 999
  br i1 %.old138, label %.backedge, label %._crit_edge100

.backedge:                                        ; preds = %_ZL14NextStackFrameILb0ELb0EEPPvS1_PKvmm.exit58, %bb.aa
  %.098.be = add nuw nsw i32 %.098, 1
  br label %bb.y, !llvm.loop !29

bb.ab:                                            ; preds = %._crit_edge100, %._crit_edge
  ret i32 %.044.lcssa
}

; Function Attrs: mustprogress noinline uwtable
define internal noundef i32 @_ZL10UnwindImplILb1ELb1EEiPPvPmPiiiPKvS3_(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, ptr nofree readnone captures(none) %5, ptr nofree noundef writeonly captures(address_is_null) %6) unnamed_addr #6 {
bb.a:
  %i.a = tail call ptr @llvm.frameaddress.p0(i32 0) ; 5 uses
  %i.b = tail call i32 @getpagesize() #11         ; 2 uses
  %i.c = icmp ne ptr %i.a, null
  %i.d = icmp sgt i32 %3, 0
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = sext i32 %i.b to i64
  %i.g = sub nsw i64 0, %i.f                      ; 3 uses
  %.not = icmp eq ptr %1, null                    ; 2 uses
  %.not52 = icmp eq ptr %2, null
  br i1 %.not52, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.j
  %.04261.us = phi ptr [ %.1.i.us, %bb.j ], [ %i.a, %.lr.ph ] ; 6 uses
  %.04460.us = phi i32 [ %.145.us, %bb.j ], [ 0, %.lr.ph ] ; 4 uses
  %.04659.us = phi i32 [ %.147.us, %bb.j ], [ %4, %.lr.ph ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.04261.us, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.k = load ptr, ptr %.04261.us, align 8, !tbaa !14 ; 5 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = icmp ne ptr %i.k, null
  %i.n = icmp ne ptr %i.k, %.04261.us
  %or.cond.not3.i.us = and i1 %i.m, %i.n
  %i.o = and i64 %i.l, 7
  %.not.i.us = icmp eq i64 %i.o, 0
  %or.cond18.i.us = and i1 %or.cond.not3.i.us, %.not.i.us
  br i1 %or.cond18.i.us, label %bb.c, label %_ZL14NextStackFrameILb0ELb1EEPPvS1_PKvmm.exit.us

bb.c:                                             ; preds = %bb.b
  %i.p = ptrtoint ptr %.04261.us to i64
  %i.q = xor i64 %i.l, %i.p
  %i.r = and i64 %i.q, %i.g
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %7 = call noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal17AddressIsReadableEPKv(ptr noundef nonnull %i.k)
  br i1 %7, label %bb.e, label %_ZL14NextStackFrameILb0ELb1EEPPvS1_PKvmm.exit.us

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %_ZL14NextStackFrameILb0ELb1EEPPvS1_PKvmm.exit.us

_ZL14NextStackFrameILb0ELb1EEPPvS1_PKvmm.exit.us: ; preds = %bb.e, %bb.d, %bb.b
  %.1.i.us = phi ptr [ %i.k, %bb.e ], [ null, %bb.b ], [ null, %bb.d ] ; 3 uses
  %i.t = icmp sgt i32 %.04659.us, 0
  br i1 %i.t, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZL14NextStackFrameILb0ELb1EEPPvS1_PKvmm.exit.us
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.v = sext i32 %.04460.us to i64               ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %0, i64 %i.v
  store ptr %i.u, ptr %i.w, align 8, !tbaa !14
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = ptrtoint ptr %.04261.us to i64
  %i.y = add i64 %i.x, 16
  %i.z = getelementptr inbounds [8 x i8], ptr %1, i64 %i.v
  store i64 %i.y, ptr %i.z, align 8, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = add nsw i32 %.04460.us, 1
  br label %bb.j

bb.i:                                             ; preds = %_ZL14NextStackFrameILb0ELb1EEPPvS1_PKvmm.exit.us
  %i.ab = add nsw i32 %.04659.us, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.147.us = phi i32 [ %i.ab, %bb.i ], [ %.04659.us, %bb.h ] ; 2 uses
  %.145.us = phi i32 [ %.04460.us, %bb.i ], [ %i.aa, %bb.h ] ; 3 uses
  %i.ac = icmp ne ptr %.1.i.us, null
  %i.ad = icmp slt i32 %.145.us, %3
  %i.ae = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %i.ae, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !30

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.q
  %.04261.us73 = phi ptr [ %.1.i.us80, %bb.q ], [ %i.a, %.lr.ph.split ] ; 7 uses
  %.04460.us74 = phi i32 [ %.145.us82, %bb.q ], [ 0, %.lr.ph.split ] ; 4 uses
  %.04659.us75 = phi i32 [ %.147.us81, %bb.q ], [ %4, %.lr.ph.split ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.04261.us73, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !14
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.split.us
  %i.ai = load ptr, ptr %.04261.us73, align 8, !tbaa !14 ; 5 uses
  %i.aj = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.ak = icmp ne ptr %i.ai, null
  %i.al = icmp ne ptr %i.ai, %.04261.us73
  %or.cond.not3.i.us76 = and i1 %i.ak, %i.al
  %i.am = and i64 %i.aj, 7
  %.not.i.us77 = icmp eq i64 %i.am, 0
  %or.cond18.i.us78 = and i1 %or.cond.not3.i.us76, %.not.i.us77
  br i1 %or.cond18.i.us78, label %bb.l, label %_ZL14NextStackFrameILb0ELb1EEPPvS1_PKvmm.exit.us79

bb.l:                                             ; preds = %bb.k
  %i.an = ptrtoint ptr %.04261.us73 to i64
  %i.ao = xor i64 %i.aj, %i.an
  %i.ap = and i64 %i.ao, %i.g
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %8 = call noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal17AddressIsReadableEPKv(ptr noundef nonnull %i.ai)
  br i1 %8, label %bb.n, label %_ZL14NextStackFrameILb0ELb1EEPPvS1_PKvmm.exit.us79

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %_ZL14NextStackFrameILb0ELb1EEPPvS1_PKvmm.exit.us79

_ZL14NextStackFrameILb0ELb1EEPPvS1_PKvmm.exit.us79: ; preds = %bb.n, %bb.m, %bb.k
  %.1.i.us80 = phi ptr [ %i.ai, %bb.n ], [ null, %bb.k ], [ null, %bb.m ] ; 5 uses
  %i.ar = icmp sgt i32 %.04659.us75, 0
  br i1 %i.ar, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZL14NextStackFrameILb0ELb1EEPPvS1_PKvmm.exit.us79
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !14
  %i.at = sext i32 %.04460.us74 to i64            ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %0, i64 %i.at
  store ptr %i.as, ptr %i.au, align 8, !tbaa !14
  %i.av = icmp ugt ptr %.1.i.us80, %.04261.us73
  %i.aw = ptrtoint ptr %.1.i.us80 to i64
  %i.ax = ptrtoint ptr %.04261.us73 to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32
  %.sink = select i1 %i.av, i32 %i.az, i32 0
  %i.ba = getelementptr inbounds [4 x i8], ptr %2, i64 %i.at
  store i32 %.sink, ptr %i.ba, align 4, !tbaa !16
  %i.bb = add nsw i32 %.04460.us74, 1
  br label %bb.q

bb.p:                                             ; preds = %_ZL14NextStackFrameILb0ELb1EEPPvS1_PKvmm.exit.us79
  %i.bc = add nsw i32 %.04659.us75, -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.147.us81 = phi i32 [ %i.bc, %bb.p ], [ %.04659.us75, %bb.o ] ; 2 uses
  %.145.us82 = phi i32 [ %.04460.us74, %bb.p ], [ %i.bb, %bb.o ] ; 3 uses
  %i.bd = icmp ne ptr %.1.i.us80, null
  %i.be = icmp slt i32 %.145.us82, %3
  %i.bf = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %i.bf, label %.lr.ph.split.split.us, label %._crit_edge, !llvm.loop !30

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.x
  %.04261 = phi ptr [ %.1.i, %bb.x ], [ %i.a, %.lr.ph.split ] ; 7 uses
  %.04460 = phi i32 [ %.145, %bb.x ], [ 0, %.lr.ph.split ] ; 4 uses
  %.04659 = phi i32 [ %.147, %bb.x ], [ %4, %.lr.ph.split ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.04261, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !14
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %._crit_edge, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split.split
  %i.bj = load ptr, ptr %.04261, align 8, !tbaa !14 ; 5 uses
  %i.bk = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bl = icmp ne ptr %i.bj, null
  %i.bm = icmp ne ptr %i.bj, %.04261
  %or.cond.not3.i = and i1 %i.bl, %i.bm
  %i.bn = and i64 %i.bk, 7
  %.not.i = icmp eq i64 %i.bn, 0
  %or.cond18.i = and i1 %or.cond.not3.i, %.not.i
  br i1 %or.cond18.i, label %bb.s, label %_ZL14NextStackFrameILb0ELb1EEPPvS1_PKvmm.exit

bb.s:                                             ; preds = %bb.r
  %i.bo = ptrtoint ptr %.04261 to i64
  %i.bp = xor i64 %i.bk, %i.bo
  %i.bq = and i64 %i.bp, %i.g
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %9 = call noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal17AddressIsReadableEPKv(ptr noundef nonnull %i.bj)
  br i1 %9, label %bb.u, label %_ZL14NextStackFrameILb0ELb1EEPPvS1_PKvmm.exit

bb.u:                                             ; preds = %bb.t, %bb.s
  br label %_ZL14NextStackFrameILb0ELb1EEPPvS1_PKvmm.exit

_ZL14NextStackFrameILb0ELb1EEPPvS1_PKvmm.exit:    ; preds = %bb.r, %bb.t, %bb.u
  %.1.i = phi ptr [ %i.bj, %bb.u ], [ null, %bb.r ], [ null, %bb.t ] ; 5 uses
  %i.bs = icmp sgt i32 %.04659, 0
  br i1 %i.bs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZL14NextStackFrameILb0ELb1EEPPvS1_PKvmm.exit
  %i.bt = add nsw i32 %.04659, -1
  br label %bb.x

bb.w:                                             ; preds = %_ZL14NextStackFrameILb0ELb1EEPPvS1_PKvmm.exit
  %i.bu = load ptr, ptr %i.bg, align 8, !tbaa !14
  %i.bv = sext i32 %.04460 to i64                 ; 3 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bv
  store ptr %i.bu, ptr %i.bw, align 8, !tbaa !14
  %i.bx = ptrtoint ptr %.04261 to i64             ; 2 uses
  %i.by = add i64 %i.bx, 16
  %i.bz = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bv
  store i64 %i.by, ptr %i.bz, align 8, !tbaa !11
  %i.ca = icmp ugt ptr %.1.i, %.04261
  %i.cb = ptrtoint ptr %.1.i to i64
  %i.cc = sub i64 %i.cb, %i.bx
  %i.cd = trunc i64 %i.cc to i32
  %.sink111 = select i1 %i.ca, i32 %i.cd, i32 0
  %i.ce = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bv
  store i32 %.sink111, ptr %i.ce, align 4, !tbaa !16
  %i.cf = add nsw i32 %.04460, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.147 = phi i32 [ %i.bt, %bb.v ], [ %.04659, %bb.w ] ; 2 uses
  %.145 = phi i32 [ %.04460, %bb.v ], [ %i.cf, %bb.w ] ; 3 uses
  %i.cg = icmp ne ptr %.1.i, null
  %i.ch = icmp slt i32 %.145, %3
  %i.ci = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %i.ci, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.x, %.lr.ph.split.split, %bb.q, %.lr.ph.split.split.us, %bb.j, %.lr.ph.split.us, %bb.a
  %.046.lcssa = phi i32 [ %4, %bb.a ], [ %.147.us81, %bb.q ], [ %.04659.us, %.lr.ph.split.us ], [ %.147.us, %bb.j ], [ %.04659.us75, %.lr.ph.split.split.us ], [ %.04659, %.lr.ph.split.split ], [ %.147, %bb.x ]
  %.044.lcssa = phi i32 [ 0, %bb.a ], [ %.145.us82, %bb.q ], [ %.04460.us, %.lr.ph.split.us ], [ %.145.us, %bb.j ], [ %.04460.us74, %.lr.ph.split.split.us ], [ %.04460, %.lr.ph.split.split ], [ %.145, %bb.x ]
  %.042.lcssa = phi ptr [ %i.a, %bb.a ], [ %.1.i.us80, %bb.q ], [ %.04261.us, %.lr.ph.split.us ], [ %.1.i.us, %bb.j ], [ %.04261.us73, %.lr.ph.split.split.us ], [ %.04261, %.lr.ph.split.split ], [ %.1.i, %bb.x ] ; 2 uses
  %.not53 = icmp eq ptr %6, null
  br i1 %.not53, label %bb.ab, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %.not102 = icmp eq ptr %.042.lcssa, null
  br i1 %.not102, label %._crit_edge100, label %.lr.ph99

.lr.ph99:                                         ; preds = %.preheader
  %i.cj = sext i32 %i.b to i64
  %i.ck = sub nsw i64 0, %i.cj
  br label %bb.y

._crit_edge100:                                   ; preds = %bb.aa, %bb.y, %_ZL14NextStackFrameILb0ELb1EEPPvS1_PKvmm.exit58, %.preheader
  %.041.lcssa = phi i32 [ 0, %.preheader ], [ %.1, %_ZL14NextStackFrameILb0ELb1EEPPvS1_PKvmm.exit58 ], [ %.1, %bb.y ], [ %.1, %bb.aa ]
  store i32 %.041.lcssa, ptr %6, align 4, !tbaa !16
  br label %bb.ab

bb.y:                                             ; preds = %.backedge, %.lr.ph99
  %.098 = phi i32 [ 0, %.lr.ph99 ], [ %.098.be, %.backedge ] ; 3 uses
  %.04197 = phi i32 [ 0, %.lr.ph99 ], [ %.1, %.backedge ]
  %.14396 = phi ptr [ %.042.lcssa, %.lr.ph99 ], [ %i.co, %.backedge ] ; 3 uses
  %.295 = phi i32 [ %.046.lcssa, %.lr.ph99 ], [ %.3, %.backedge ] ; 2 uses
  %i.cl = icmp sgt i32 %.295, 0                   ; 2 uses
  %i.cm = sext i1 %i.cl to i32
  %.3 = add nsw i32 %.295, %i.cm
  %not. = xor i1 %i.cl, true
  %i.cn = zext i1 %not. to i32
  %.1 = add nuw nsw i32 %.04197, %i.cn            ; 4 uses
  %i.co = load ptr, ptr %.14396, align 8, !tbaa !14 ; 5 uses
  %i.cp = ptrtoint ptr %i.co to i64               ; 2 uses
  %i.cq = icmp ne ptr %i.co, null
  %i.cr = icmp ne ptr %i.co, %.14396
  %or.cond.not3.i54 = and i1 %i.cq, %i.cr
  %i.cs = and i64 %i.cp, 7
  %.not.i55 = icmp eq i64 %i.cs, 0
  %or.cond18.i56 = and i1 %or.cond.not3.i54, %.not.i55
  br i1 %or.cond18.i56, label %bb.z, label %._crit_edge100

bb.z:                                             ; preds = %bb.y
  %i.ct = ptrtoint ptr %.14396 to i64
  %i.cu = xor i64 %i.cp, %i.ct
  %i.cv = and i64 %i.cu, %i.ck
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %_ZL14NextStackFrameILb0ELb1EEPPvS1_PKvmm.exit58, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %10 = call noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal17AddressIsReadableEPKv(ptr noundef nonnull %i.co)
  %i.cx = icmp samesign ult i32 %.098, 999
  %or.cond = select i1 %10, i1 %i.cx, i1 false
  br i1 %or.cond, label %.backedge, label %._crit_edge100

_ZL14NextStackFrameILb0ELb1EEPPvS1_PKvmm.exit58:  ; preds = %bb.z
  %.old138 = icmp samesign ult i32 %.098, 999
  br i1 %.old138, label %.backedge, label %._crit_edge100

.backedge:                                        ; preds = %_ZL14NextStackFrameILb0ELb1EEPPvS1_PKvmm.exit58, %bb.aa
  %.098.be = add nuw nsw i32 %.098, 1
  br label %bb.y, !llvm.loop !31

bb.ab:                                            ; preds = %._crit_edge100, %._crit_edge
  ret i32 %.044.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define weak dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619internal_stacktrace16ShouldFixUpStackEv() local_unnamed_addr #3 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define weak dso_local void @_ZN4absl12lts_2026052619internal_stacktrace10FixUpStackEPPvPmPimRm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #3 {
bb.a:
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @getpagesize() local_unnamed_addr #8

declare noundef zeroext i1 @_ZN4absl12lts_2026052618debugging_internal17AddressIsReadableEPKv(ptr noundef) local_unnamed_addr #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline uwtable "disable-tail-calls"="true" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{i64 2149544533}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!7, !7, i64 0}
!17 = distinct !{null}
!18 = distinct !{null}
!19 = distinct !{null}
!20 = !{ptr @_ZL10UnwindImplILb0ELb0EEiPPvPmPiiiPKvS3_, ptr @_ZL10UnwindImplILb0ELb1EEiPPvPmPiiiPKvS3_, ptr @_ZL10UnwindImplILb1ELb0EEiPPvPmPiiiPKvS3_, ptr @_ZL10UnwindImplILb1ELb1EEiPPvPmPiiiPKvS3_}
!21 = !{i64 2149544868}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = !{!"long long", !6, i64 0}
!27 = !{!26, !26, i64 0}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
end_hunk_0
