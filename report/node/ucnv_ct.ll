inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZL18_CompoundTextCloseP10UConverter:bb.a
  br i1 %.not11.13, label %.preheader.14, label %bb.o

bb.o:                                             ; preds = %.preheader.13
  tail call void @ucnv_unloadSharedDataIfReady_78(ptr noundef nonnull %i.ac) #9
  br label %.preheader.14

.preheader.14:                                    ; preds = %bb.o, %.preheader.13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not11.14 = icmp eq ptr %i.ae, null
  br i1 %.not11.14, label %.preheader.15, label %bb.p

bb.p:                                             ; preds = %.preheader.14
  tail call void @ucnv_unloadSharedDataIfReady_78(ptr noundef nonnull %i.ae) #9
  br label %.preheader.15

.preheader.15:                                    ; preds = %bb.p, %.preheader.14
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not11.15 = icmp eq ptr %i.ag, null
  br i1 %.not11.15, label %.preheader.16, label %bb.q

bb.q:                                             ; preds = %.preheader.15
  tail call void @ucnv_unloadSharedDataIfReady_78(ptr noundef nonnull %i.ag) #9
  br label %.preheader.16

.preheader.16:                                    ; preds = %bb.q, %.preheader.15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not11.16 = icmp eq ptr %i.ai, null
  br i1 %.not11.16, label %.preheader.17, label %bb.r

bb.r:                                             ; preds = %.preheader.16
  tail call void @ucnv_unloadSharedDataIfReady_78(ptr noundef nonnull %i.ai) #9
  br label %.preheader.17

.preheader.17:                                    ; preds = %bb.r, %.preheader.16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not11.17 = icmp eq ptr %i.ak, null
  br i1 %.not11.17, label %.preheader.18, label %bb.s

bb.s:                                             ; preds = %.preheader.17
  tail call void @ucnv_unloadSharedDataIfReady_78(ptr noundef nonnull %i.ak) #9
  br label %.preheader.18

.preheader.18:                                    ; preds = %bb.s, %.preheader.17
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not11.18 = icmp eq ptr %i.am, null
  br i1 %.not11.18, label %.preheader.19, label %bb.t

bb.t:                                             ; preds = %.preheader.18
  tail call void @ucnv_unloadSharedDataIfReady_78(ptr noundef nonnull %i.am) #9
  br label %.preheader.19

.preheader.19:                                    ; preds = %bb.t, %.preheader.18
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not11.19 = icmp eq ptr %i.ao, null
  br i1 %.not11.19, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader.19
  tail call void @ucnv_unloadSharedDataIfReady_78(ptr noundef nonnull %i.ao) #9
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.preheader.19
  %i.ap = load ptr, ptr %i.a, align 8
  tail call void @uprv_free_78(ptr noundef %i.ap) #9
  store ptr null, ptr %i.a, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZL18_CompoundTextResetP10UConverter21UConverterResetChoice(ptr nofree readnone captures(none) %0, i32 %1) #1 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL41UConverter_toUnicode_CompoundText_OFFSETSP23UConverterToUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.UConverterToUnicodeArgs, align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8              ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.k = load i16, ptr %0, align 8
  %narrow = tail call i16 @llvm.umin.i16(i16 %i.k, i16 56) ; 2 uses
  %i.l = zext nneg i16 %narrow to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %0, i64 %i.l, i1 false)
  store i16 %narrow, ptr %2, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 160 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp ult ptr %i.b, %i.f
  br i1 %i.o, label %.lr.ph130, label %.loopexit99

.lr.ph130:                                        ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.q = ptrtoint ptr %i.f to i64                 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph130, %.loopexit
  %.075129 = phi ptr [ %i.b, %.lr.ph130 ], [ %.5, %.loopexit ] ; 12 uses
  %.076128 = phi i32 [ %i.n, %.lr.ph130 ], [ %.278, %.loopexit ] ; 4 uses
  %.081127 = phi ptr [ %i.d, %.lr.ph130 ], [ %.283, %.loopexit ] ; 8 uses
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = icmp ult ptr %.081127, %i.v
  br i1 %i.w, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load i8, ptr %i.y, align 8               ; 2 uses
  %i.aa = icmp sgt i8 %i.z, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 65 ; 2 uses
  %.080.in.in = select i1 %i.aa, ptr %i.ab, ptr %.075129
  %.080.in = load i8, ptr %.080.in.in, align 1
  %i.ac = icmp eq i8 %.080.in, 27
  br i1 %i.ac, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.ad = sext i8 %i.z to i64                     ; 2 uses
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit.i, %bb.d
  %indvars.iv44.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next45.i, %.loopexit.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [5 x i8], ptr @_ZL18escSeqCompoundText, i64 %indvars.iv44.i ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.i ] ; 4 uses
  %i.af = phi i8 [ 27, %.lr.ph.preheader.i ], [ %i.ap, %bb.i ] ; 2 uses
  %i.ag = zext i8 %i.af to i32
  %i.ah = icmp slt i64 %indvars.iv.i, %i.ad
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv.i
  %i.aj = load i8, ptr %i.ai, align 1
  %.not33.i = icmp eq i8 %i.aj, %i.af
  br i1 %.not33.i, label %bb.i, label %.loopexit.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.ak = sub nsw i64 %indvars.iv.i, %i.ad
  %i.al = getelementptr inbounds nuw i8, ptr %.075129, i64 %i.ak ; 2 uses
  %.not31.i = icmp ult ptr %i.al, %i.f
  br i1 %.not31.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 11, ptr %1, align 4
  br label %.loopexit.i

bb.h:                                             ; preds = %bb.f
  %i.am = load i8, ptr %i.al, align 1
  %i.an = sext i8 %i.am to i32
  %.not32.i = icmp eq i32 %i.an, %i.ag
  br i1 %.not32.i, label %bb.i, label %.loopexit.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv.next.i
  %i.ap = load i8, ptr %i.ao, align 1             ; 2 uses
  %.not.not.i = icmp eq i8 %i.ap, 0
  br i1 %.not.not.i, label %_ZL19findStateFromEscSeqPKcS0_PKhiP10UErrorCode.exit, label %.lr.ph.i, !llvm.loop !5

.loopexit.i:                                      ; preds = %bb.h, %bb.e, %bb.g
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next45.i, 20
  br i1 %exitcond.i, label %_ZL19findStateFromEscSeqPKcS0_PKhiP10UErrorCode.exit.thread, label %.lr.ph.preheader.i, !llvm.loop !7

_ZL19findStateFromEscSeqPKcS0_PKhiP10UErrorCode.exit: ; preds = %bb.i
  %i.aq = load i32, ptr %1, align 4
  %i.ar = icmp eq i32 %i.aq, 11
  br i1 %i.ar, label %.preheader, label %bb.j

_ZL19findStateFromEscSeqPKcS0_PKhiP10UErrorCode.exit.thread: ; preds = %.loopexit.i
  %i.as = load i32, ptr %1, align 4
  %i.at = icmp eq i32 %i.as, 11
  br i1 %i.at, label %.preheader, label %.thread

.preheader:                                       ; preds = %_ZL19findStateFromEscSeqPKcS0_PKhiP10UErrorCode.exit, %_ZL19findStateFromEscSeqPKcS0_PKhiP10UErrorCode.exit.thread
  %i.au = icmp ult ptr %.075129, %i.f
  br i1 %i.au, label %.lr.ph135.preheader, label %._crit_edge

.lr.ph135.preheader:                              ; preds = %.preheader
  %.075129249251 = ptrtoaddr ptr %.075129 to i64  ; 2 uses
  %i.av = sub i64 %i.q, %.075129249251
  %xtraiter = and i64 %i.av, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph135.prol.loopexit, label %.lr.ph135.prol

.lr.ph135.prol:                                   ; preds = %.lr.ph135.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %.075129, i64 1 ; 2 uses
  %i.ax = load i8, ptr %.075129, align 1
  %i.ay = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 65
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 64 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 8             ; 2 uses
  %i.bc = add i8 %i.bb, 1
  store i8 %i.bc, ptr %i.ba, align 8
  %i.bd = sext i8 %i.bb to i64
  %i.be = getelementptr inbounds i8, ptr %i.az, i64 %i.bd
  store i8 %i.ax, ptr %i.be, align 1
  br label %.lr.ph135.prol.loopexit

.lr.ph135.prol.loopexit:                          ; preds = %.lr.ph135.prol, %.lr.ph135.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph135.preheader ], [ %i.aw, %.lr.ph135.prol ]
  %.1134.unr = phi ptr [ %.075129, %.lr.ph135.preheader ], [ %i.aw, %.lr.ph135.prol ]
  %i.bf = add i64 %i.q, -1
  %i.bg = icmp eq i64 %i.bf, %.075129249251
  br i1 %i.bg, label %._crit_edge, label %.lr.ph135

.lr.ph135:                                        ; preds = %.lr.ph135.prol.loopexit, %.lr.ph135
  %.1134 = phi ptr [ %i.bq, %.lr.ph135 ], [ %.1134.unr, %.lr.ph135.prol.loopexit ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.1134, i64 1
  %i.bi = load i8, ptr %.1134, align 1
  %i.bj = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 65
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 64 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 8             ; 2 uses
  %i.bn = add i8 %i.bm, 1
  store i8 %i.bn, ptr %i.bl, align 8
  %i.bo = sext i8 %i.bm to i64
  %i.bp = getelementptr inbounds i8, ptr %i.bk, i64 %i.bo
  store i8 %i.bi, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.1134, i64 2 ; 3 uses
  %i.br = load i8, ptr %i.bh, align 1
  %i.bs = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 65
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 64 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 8             ; 2 uses
  %i.bw = add i8 %i.bv, 1
  store i8 %i.bw, ptr %i.bu, align 8
  %i.bx = sext i8 %i.bv to i64
  %i.by = getelementptr inbounds i8, ptr %i.bt, i64 %i.bx
  store i8 %i.br, ptr %i.by, align 1
  %exitcond164.not.1 = icmp eq ptr %i.bq, %i.f
  br i1 %exitcond164.not.1, label %._crit_edge, label %.lr.ph135, !llvm.loop !8

._crit_edge:                                      ; preds = %.lr.ph135.prol.loopexit, %.lr.ph135, %.preheader
  %.1.lcssa = phi ptr [ %.075129, %.preheader ], [ %.lcssa.unr, %.lr.ph135.prol.loopexit ], [ %i.bq, %.lr.ph135 ]
  store i32 0, ptr %1, align 4
  br label %.loopexit99

.thread:                                          ; preds = %_ZL19findStateFromEscSeqPKcS0_PKhiP10UErrorCode.exit.thread
  %i.bz = load ptr, ptr %i.g, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cb = load i8, ptr %i.ca, align 8
  %i.cc = icmp eq i8 %i.cb, 0
  %spec.select.idx = zext i1 %i.cc to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.075129, i64 %spec.select.idx
  store i32 12, ptr %1, align 4
  br label %.loopexit99

bb.j:                                             ; preds = %_ZL19findStateFromEscSeqPKcS0_PKhiP10UErrorCode.exit
  %i.cd = trunc nuw nsw i64 %indvars.iv44.i to i32
  %i.ce = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #10
  %i.cf = load ptr, ptr %i.g, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 64 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 8
  %i.ci = sext i8 %i.ch to i64
  %i.cj = sub i64 %i.ce, %i.ci
  %sext = shl i64 %i.cj, 32
  %i.ck = ashr exact i64 %sext, 32
  %i.cl = getelementptr inbounds i8, ptr %.075129, i64 %i.ck
  store i8 0, ptr %i.cg, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.c
  %.278 = phi i32 [ %i.cd, %bb.j ], [ %.076128, %bb.c ] ; 6 uses
  %.3 = phi ptr [ %i.cl, %bb.j ], [ %.075129, %bb.c ] ; 10 uses
  %.3160 = ptrtoaddr ptr %.3 to i64
  %i.cm = icmp eq i32 %.278, 0
  %i.cn = icmp ult ptr %.3, %i.f                  ; 2 uses
  br i1 %i.cm, label %.preheader98, label %bb.o

.preheader98:                                     ; preds = %bb.k
  br i1 %i.cn, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader98
  %scevgep = getelementptr i8, ptr %.3, i64 %i.q
  %i.co = sub i64 0, %.3160
  %scevgep161 = getelementptr i8, ptr %scevgep, i64 %i.co
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %.4122 = phi ptr [ %i.ct, %bb.m ], [ %.3, %.lr.ph.preheader ] ; 4 uses
  %.182121 = phi ptr [ %i.cv, %bb.m ], [ %.081127, %.lr.ph.preheader ] ; 5 uses
  %i.cp = load i8, ptr %.4122, align 1            ; 2 uses
  %i.cq = icmp eq i8 %i.cp, 27
  br i1 %i.cq, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.cr = load ptr, ptr %i.p, align 8
  %i.cs = icmp ult ptr %.182121, %i.cr
  br i1 %i.cs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %.4122, i64 1 ; 3 uses
  %i.cu = zext i8 %i.cp to i16
  %i.cv = getelementptr inbounds nuw i8, ptr %.182121, i64 2 ; 2 uses
  store i16 %i.cu, ptr %.182121, align 2
  %exitcond.not = icmp eq ptr %i.ct, %scevgep161
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !9

bb.n:                                             ; preds = %bb.l
  store i32 15, ptr %1, align 4
  br label %.loopexit

bb.o:                                             ; preds = %bb.k
  br i1 %i.cn, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %3 = ptrtoint ptr %.3 to i64
  %i.cw = sub i64 %i.q, %3                        ; 4 uses
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = icmp sgt i32 %i.cx, 1
  br i1 %i.cy, label %.lr.ph.preheader.i90, label %_ZL11findNextEscPKcS0_.exit

.lr.ph.preheader.i90:                             ; preds = %bb.p
  %wide.trip.count.i = and i64 %i.cw, 2147483647
  br label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %bb.q, %.lr.ph.preheader.i90
  %indvars.iv.i92 = phi i64 [ 1, %.lr.ph.preheader.i90 ], [ %indvars.iv.next.i93, %bb.q ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.3, i64 %indvars.iv.i92
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = icmp eq i8 %i.da, 27
  br i1 %i.db, label %_ZL11findNextEscPKcS0_.exit, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i91
  %indvars.iv.next.i93 = add nuw nsw i64 %indvars.iv.i92, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i93, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL11findNextEscPKcS0_.exit, label %.lr.ph.i91, !llvm.loop !10

_ZL11findNextEscPKcS0_.exit:                      ; preds = %.lr.ph.i91, %bb.q, %bb.p
  %.09.i = phi i64 [ %i.cw, %bb.p ], [ %indvars.iv.i92, %.lr.ph.i91 ], [ %i.cw, %bb.q ]
  %sext97 = shl i64 %.09.i, 32
  %i.dc = ashr exact i64 %sext97, 32
  %i.dd = getelementptr inbounds i8, ptr %.3, i64 %i.dc
  store ptr %.3, ptr %i.r, align 8
  store ptr %i.dd, ptr %i.s, align 8
  store ptr %.081127, ptr %i.t, align 8
  %i.de = load ptr, ptr %i.u, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 48 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = sext i32 %.278 to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.dh
  %i.dj = load ptr, ptr %i.di, align 8
  store ptr %i.dj, ptr %i.df, align 8
  call void @ucnv_MBCSToUnicodeWithOffsets_78(ptr noundef nonnull %2, ptr noundef %1) #9
  %i.dk = load ptr, ptr %i.u, align 8             ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  store ptr %i.dg, ptr %i.dl, align 8
  %i.dm = load ptr, ptr %i.r, align 8             ; 3 uses
  %i.dn = load ptr, ptr %i.t, align 8             ; 3 uses
  %i.do = load i32, ptr %1, align 4               ; 2 uses
  %i.dp = icmp slt i32 %i.do, 1
  br i1 %i.dp, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %_ZL11findNextEscPKcS0_.exit
  %i.dq = icmp eq i32 %i.do, 15
  br i1 %i.dq, label %bb.s, label %.loopexit99

bb.s:                                             ; preds = %bb.r
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dk, i64 93 ; 3 uses
  %i.ds = load i8, ptr %i.dr, align 1             ; 3 uses
  %i.dt = icmp sgt i8 %i.ds, 0
  br i1 %i.dt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.du = load ptr, ptr %i.g, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 144
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dk, i64 144
  %i.dx = zext nneg i8 %i.ds to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dv, ptr nonnull align 8 %i.dw, i64 %i.dx, i1 false)
  %.pre = load i8, ptr %i.dr, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dy = phi i8 [ %.pre, %bb.t ], [ %i.ds, %bb.s ]
  %i.dz = load ptr, ptr %i.g, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 93
  store i8 %i.dy, ptr %i.ea, align 1
  store i8 0, ptr %i.dr, align 1
  br label %.loopexit99

bb.v:                                             ; preds = %bb.b
  store i32 15, ptr %1, align 4
  br label %.loopexit99

.loopexit:                                        ; preds = %bb.m, %.lr.ph, %.preheader98, %bb.n, %_ZL11findNextEscPKcS0_.exit, %bb.o
  %.283 = phi ptr [ %i.dn, %_ZL11findNextEscPKcS0_.exit ], [ %.182121, %bb.n ], [ %.081127, %bb.o ], [ %.081127, %.preheader98 ], [ %i.cv, %bb.m ], [ %.182121, %.lr.ph ] ; 2 uses
  %.5 = phi ptr [ %i.dm, %_ZL11findNextEscPKcS0_.exit ], [ %.4122, %bb.n ], [ %.3, %bb.o ], [ %.3, %.preheader98 ], [ %i.ct, %bb.m ], [ %.4122, %.lr.ph ] ; 3 uses
  %i.eb = icmp ult ptr %.5, %i.f
  br i1 %i.eb, label %bb.b, label %.loopexit99, !llvm.loop !11

.loopexit99:                                      ; preds = %.loopexit, %bb.a, %bb.r, %bb.u, %bb.v, %.thread, %._crit_edge
  %.384 = phi ptr [ %.081127, %._crit_edge ], [ %.081127, %.thread ], [ %i.dn, %bb.u ], [ %i.dn, %bb.r ], [ %.081127, %bb.v ], [ %i.d, %bb.a ], [ %.283, %.loopexit ]
  %.379 = phi i32 [ %.076128, %._crit_edge ], [ %.076128, %.thread ], [ %.278, %bb.u ], [ %.278, %bb.r ], [ %.076128, %bb.v ], [ %i.n, %bb.a ], [ %.278, %.loopexit ]
  %.6 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %spec.select, %.thread ], [ %i.dm, %bb.u ], [ %i.dm, %bb.r ], [ %.075129, %bb.v ], [ %i.b, %bb.a ], [ %.5, %.loopexit ]
  store i32 %.379, ptr %i.m, align 8
  store ptr %.384, ptr %i.c, align 8
  store ptr %.6, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL43UConverter_fromUnicode_CompoundText_OFFSETSP25UConverterFromUnicodeArgsP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = alloca [7 x i8], align 1                 ; 17 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = alloca i32, align 4                      ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %2 = ptrtoaddr ptr %i.i to i64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 63
  %i.o = load i8, ptr %i.n, align 1               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 13 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 160 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 84 ; 5 uses
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %.not = icmp ne i32 %i.u, 0
  %i.v = icmp ult ptr %i.g, %i.i
  %or.cond = select i1 %.not, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.e, label %.loopexit

..loopexit_crit_edge:                             ; preds = %.lr.ph186.new, %.prol.loopexit
  br label %.loopexit, !llvm.loop !12

.loopexit:                                        ; preds = %.preheader, %..loopexit_crit_edge, %thread-pre-split, %bb.a
  %.0116 = phi i32 [ %i.s, %bb.a ], [ %.5, %thread-pre-split ], [ %.5, %..loopexit_crit_edge ], [ %.5, %.preheader ] ; 5 uses
  %.0104 = phi ptr [ %i.k, %bb.a ], [ %.3107, %thread-pre-split ], [ %.3107, %..loopexit_crit_edge ], [ %.3107, %.preheader ] ; 5 uses
  %.0103 = phi ptr [ %i.g, %bb.a ], [ %.3.lcssa, %thread-pre-split ], [ %.3162, %..loopexit_crit_edge ], [ %.3162, %.preheader ] ; 6 uses
  %i.w = icmp ult ptr %.0104, %i.m
  br i1 %i.w, label %bb.b, label %bb.al

bb.b:                                             ; preds = %.loopexit
  %i.x = icmp ult ptr %.0103, %i.i
  br i1 %i.x, label %bb.c, label %bb.ak

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %.0104, i64 2 ; 3 uses
  %i.z = load i16, ptr %.0104, align 2
  %i.aa = zext i16 %i.z to i32                    ; 5 uses
  %i.ab = and i32 %i.aa, 63488
  %i.ac = icmp eq i32 %i.ab, 55296
  br i1 %i.ac, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.ad = and i32 %i.aa, 1024
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0128 = phi i32 [ %i.u, %bb.a ], [ %i.aa, %bb.d ] ; 3 uses
  %.1117 = phi i32 [ %i.s, %bb.a ], [ %.0116, %bb.d ] ; 3 uses
  %.1105 = phi ptr [ %i.k, %bb.a ], [ %i.y, %bb.d ] ; 5 uses
  %.1 = phi ptr [ %i.g, %bb.a ], [ %.0103, %bb.d ] ; 3 uses
  %i.af = icmp ult ptr %.1105, %i.m
  br i1 %i.af, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = load i16, ptr %.1105, align 2
  %i.ah = zext i16 %i.ag to i32                   ; 2 uses
  %i.ai = and i32 %i.ah, 64512
  %i.aj = icmp eq i32 %i.ai, 56320
  br i1 %i.aj, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  store i32 12, ptr %1, align 4
  store i32 %.0128, ptr %i.t, align 4
  br label %bb.al

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.1105, i64 2
  %i.al = shl i32 %.0128, 10
  %i.am = add i32 %i.al, -56613888
  %i.an = add i32 %i.am, %i.ah
  store i32 0, ptr %i.t, align 4
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  store i32 %.0128, ptr %i.t, align 4
  br label %bb.al

bb.i:                                             ; preds = %bb.d
  store i32 12, ptr %1, align 4
  store i32 %i.aa, ptr %i.t, align 4
  br label %bb.al

bb.j:                                             ; preds = %bb.g, %bb.c
  %.2130 = phi i32 [ %i.an, %bb.g ], [ %i.aa, %bb.c ] ; 45 uses
  %.2118 = phi i32 [ %.1117, %bb.g ], [ %.0116, %bb.c ] ; 5 uses
  %.3107 = phi ptr [ %i.ak, %bb.g ], [ %i.y, %bb.c ] ; 3 uses
  %.2 = phi ptr [ %.1, %bb.g ], [ %.0103, %bb.c ] ; 5 uses
  %.2217 = ptrtoaddr ptr %.2 to i64               ; 2 uses
  switch i32 %.2130, label %bb.k [
    i32 10, label %_ZL8getStatei.exit
    i32 9, label %_ZL8getStatei.exit
    i32 0, label %_ZL8getStatei.exit
  ]

bb.k:                                             ; preds = %bb.j
  %i.ao = and i32 %.2130, -160
  %i.ap = add i32 %i.ao, -32
  %or.cond.i = icmp ult i32 %i.ap, 96
  br i1 %or.cond.i, label %_ZL8getStatei.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %switch.tableidx = add i32 %.2130, -258         ; 2 uses
  %i.aq = icmp ult i32 %switch.tableidx, 16
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 -961, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond361 = select i1 %i.aq, i1 %switch.lobit, i1 false
  br i1 %or.cond361, label %_ZL8getStatei.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = and i32 %.2130, -4                      ; 7 uses
  %or.cond13.i = icmp eq i32 %i.ar, 280
  %i.as = and i32 %.2130, -5
  %i.at = add i32 %i.as, -313
  %i.au = icmp ult i32 %i.at, 2
  %or.cond21.i = or i1 %or.cond13.i, %i.au
  %i.av = and i32 %.2130, -6                      ; 2 uses
  %i.aw = icmp eq i32 %i.av, 336
  %or.cond365.i = or i1 %i.aw, %or.cond21.i
  br i1 %or.cond365.i, label %_ZL8getStatei.exit, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.m
  %switch.tableidx313 = add i32 %.2130, -321      ; 2 uses
  %i.ax = icmp ult i32 %switch.tableidx313, 7
  %switch.maskindex317 = trunc i32 %switch.tableidx313 to i8
  %switch.shifted318 = lshr i8 79, %switch.maskindex317
  %switch.lobit319 = trunc i8 %switch.shifted318 to i1
  %or.cond362 = select i1 %i.ax, i1 %switch.lobit319, i1 false
  br i1 %or.cond362, label %_ZL8getStatei.exit, label %bb.n

bb.n:                                             ; preds = %switch.early.test.i
  %or.cond37.i = icmp eq i32 %i.ar, 344
  %i.ay = and i32 %.2130, -2                      ; 3 uses
  %i.az = icmp eq i32 %i.ay, 350
  %or.cond41.i = or i1 %or.cond37.i, %i.az
  br i1 %or.cond41.i, label %_ZL8getStatei.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  switch i32 %.2130, label %bb.p [
    i32 369, label %_ZL8getStatei.exit
    i32 368, label %_ZL8getStatei.exit
    i32 367, label %_ZL8getStatei.exit
    i32 366, label %_ZL8getStatei.exit
    i32 357, label %_ZL8getStatei.exit
    i32 356, label %_ZL8getStatei.exit
    i32 355, label %_ZL8getStatei.exit
    i32 354, label %_ZL8getStatei.exit
    i32 353, label %_ZL8getStatei.exit
    i32 352, label %_ZL8getStatei.exit
    i32 733, label %_ZL8getStatei.exit
    i32 731, label %_ZL8getStatei.exit
    i32 729, label %_ZL8getStatei.exit
    i32 728, label %_ZL8getStatei.exit
    i32 711, label %_ZL8getStatei.exit
    i32 382, label %_ZL8getStatei.exit
    i32 381, label %_ZL8getStatei.exit
    i32 380, label %_ZL8getStatei.exit
    i32 379, label %_ZL8getStatei.exit
    i32 378, label %_ZL8getStatei.exit
    i32 377, label %_ZL8getStatei.exit
  ]

bb.p:                                             ; preds = %bb.o
  %or.cond65.i = icmp eq i32 %i.ar, 264
  br i1 %or.cond65.i, label %_ZL8getStatei.exit, label %switch.early.test357.i

switch.early.test357.i:                           ; preds = %bb.p
  %switch.tableidx320 = add i32 %.2130, -284      ; 2 uses
  %i.ba = icmp ult i32 %switch.tableidx320, 6
  %switch.maskindex324 = trunc i32 %switch.tableidx320 to i8
  %switch.shifted325 = lshr i8 51, %switch.maskindex324
  %switch.lobit326 = trunc i8 %switch.shifted325 to i1
  %or.cond363 = select i1 %i.ba, i1 %switch.lobit326, i1 false
  %or.cond75.i = icmp eq i32 %i.ar, 292
  %or.cond370 = or i1 %or.cond363, %or.cond75.i
  br i1 %or.cond370, label %_ZL8getStatei.exit, label %switch.early.test358.i

switch.early.test358.i:                           ; preds = %switch.early.test357.i
  %switch.tableidx327 = add i32 %.2130, -308      ; 2 uses
  %i.bb = icmp ult i32 %switch.tableidx327, 58
  %switch.maskindex331 = zext nneg i32 %switch.tableidx327 to i64
  %switch.shifted332 = lshr i64 216176080648667139, %switch.maskindex331
  %switch.lobit333 = trunc i64 %switch.shifted332 to i1
  %or.cond364 = select i1 %i.bb, i1 %switch.lobit333, i1 false
  br i1 %or.cond364, label %_ZL8getStatei.exit, label %bb.q

bb.q:                                             ; preds = %switch.early.test358.i
  %or.cond89.i = icmp eq i32 %i.ar, 372
  br i1 %or.cond89.i, label %_ZL8getStatei.exit, label %switch.early.test359.i

switch.early.test359.i:                           ; preds = %bb.q
  switch i32 %.2130, label %bb.r [
    i32 7923, label %_ZL8getStatei.exit
    i32 7922, label %_ZL8getStatei.exit
    i32 7787, label %_ZL8getStatei.exit
    i32 7786, label %_ZL8getStatei.exit
    i32 7777, label %_ZL8getStatei.exit
    i32 7776, label %_ZL8getStatei.exit
    i32 7767, label %_ZL8getStatei.exit
    i32 7766, label %_ZL8getStatei.exit
    i32 7745, label %_ZL8getStatei.exit
    i32 7744, label %_ZL8getStatei.exit
    i32 7711, label %_ZL8getStatei.exit
    i32 7710, label %_ZL8getStatei.exit
    i32 7691, label %_ZL8getStatei.exit
    i32 7690, label %_ZL8getStatei.exit
  ]

bb.r:                                             ; preds = %switch.early.test359.i
  %i.bc = add i32 %.2130, -7808
  %or.cond119.i = icmp ult i32 %i.bc, 6
  br i1 %or.cond119.i, label %_ZL8getStatei.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  switch i32 %.2130, label %bb.t [
    i32 8364, label %_ZL8getStatei.exit
    i32 376, label %_ZL8getStatei.exit
    i32 339, label %_ZL8getStatei.exit
    i32 338, label %_ZL8getStatei.exit
  ]

bb.t:                                             ; preds = %bb.s
  %i.bd = add i32 %.2130, -3585
  %or.cond127.i = icmp ult i32 %i.bd, 58
  %i.be = add i32 %.2130, -3647
  %or.cond129.i = icmp ult i32 %i.be, 29
  %or.cond360.i = or i1 %or.cond127.i, %or.cond129.i
  br i1 %or.cond360.i, label %_ZL8getStatei.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = icmp eq i32 %i.av, 274
  br i1 %i.bf, label %_ZL8getStatei.exit, label %switch.early.test361.i

switch.early.test361.i:                           ; preds = %bb.u
  %switch.tableidx334 = add i32 %.2130, -256      ; 2 uses
  %i.bg = icmp ult i32 %switch.tableidx334, 36
  %switch.maskindex338 = zext nneg i32 %switch.tableidx334 to i64
  %switch.shifted339 = lshr i64 51539607555, %switch.maskindex338
  %switch.lobit340 = trunc i64 %switch.shifted339 to i1
  %or.cond365 = select i1 %i.bg, i1 %switch.lobit340, i1 false
  br i1 %or.cond365, label %_ZL8getStatei.exit, label %bb.v

bb.v:                                             ; preds = %switch.early.test361.i
  %or.cond145.i = icmp eq i32 %i.ar, 296
  %i.bh = icmp eq i32 %i.ay, 302
  %or.cond149.i = or i1 %or.cond145.i, %i.bh
  br i1 %or.cond149.i, label %_ZL8getStatei.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %switch.tableidx341 = add i32 %.2130, -310      ; 2 uses
  %i.bi = icmp ult i32 %switch.tableidx341, 62
  %switch.maskindex345 = zext nneg i32 %switch.tableidx341 to i64
  %switch.shifted346 = lshr i64 3476497450254041191, %switch.maskindex345
  %switch.lobit347 = trunc i64 %switch.shifted346 to i1
  %or.cond366 = select i1 %i.bi, i1 %switch.lobit347, i1 false
  br i1 %or.cond366, label %_ZL8getStatei.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %or.cond173.i = icmp eq i32 %i.ay, 700
  br i1 %or.cond173.i, label %_ZL8getStatei.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bj = add i32 %.2130, -900
  %or.cond175.i = icmp ult i32 %i.bj, 75
  %i.bk = icmp eq i32 %.2130, 8213
  %or.cond177.i = or i1 %i.bk, %or.cond175.i
  br i1 %or.cond177.i, label %_ZL8getStatei.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  switch i32 %.2130, label %bb.aa [
    i32 1567, label %_ZL8getStatei.exit
    i32 1563, label %_ZL8getStatei.exit
    i32 1548, label %_ZL8getStatei.exit
  ]

bb.aa:                                            ; preds = %bb.z
  %i.bl = add i32 %.2130, -1569
  %or.cond183.i = icmp ult i32 %i.bl, 26
  %i.bm = add i32 %.2130, -1600
  %or.cond185.i = icmp ult i32 %i.bm, 19
  %or.cond362.i = or i1 %or.cond183.i, %or.cond185.i
  br i1 %or.cond362.i, label %_ZL8getStatei.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bn = add i32 %.2130, -1632
  %or.cond187.i = icmp ult i32 %i.bn, 14
  %i.bo = icmp eq i32 %.2130, 8203
  %or.cond189.i = or i1 %i.bo, %or.cond187.i
end_hunk_0
