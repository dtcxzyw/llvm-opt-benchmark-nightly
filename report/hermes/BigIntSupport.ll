Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/BigIntSupport?download=true
inline.NumInlined: 1517
inline.NumDeleted: 727
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6hermes6bigint12_GLOBAL__N_120exponentiateSlowPathENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefEj:bb.a
_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.q

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit: ; preds = %bb.k
  %i.cs = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef %.val76.val, ptr noundef nonnull %i.a, i32 noundef 0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.l, label %bb.q

bb.l:                                             ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit
  %.sroa.07.0.copyload = load ptr, ptr %.sroa.0127.0166, align 8, !tbaa !112 ; 4 uses
  %.sroa.28.0.copyload = load ptr, ptr %i.cq, align 8, !tbaa !111 ; 3 uses
  %.val75.val = load ptr, ptr %.sroa.0132.0160, align 8, !tbaa !51
  %.val75.val82 = load ptr, ptr %i.cm, align 8, !tbaa !52
  %.val75.val82.val = load i32, ptr %.val75.val82, align 4, !tbaa !9
  %i.cu = shl i32 %.val75.val82.val, 3            ; 4 uses
  %i.cv = zext i32 %i.cu to i64                   ; 2 uses
  %i.cw = load i32, ptr %.sroa.28.0.copyload, align 4, !tbaa !9
  %i.cx = shl i32 %i.cw, 3                        ; 2 uses
  %i.cy = icmp ugt i32 %i.cu, %i.cx
  br i1 %i.cy, label %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit118, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cz = icmp eq i32 %i.cu, 0
  br i1 %i.cz, label %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit118, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.07.0.copyload, ptr readonly align 1 %.val75.val, i64 %i.cv, i1 false)
  %i.da = sub nuw i32 %i.cx, %i.cu
  %i.db = getelementptr i8, ptr %.sroa.07.0.copyload, i64 %i.cv ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 -1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !10
  %i.de = ashr i8 %i.dd, 7
  %i.df = zext i32 %i.da to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.db, i8 %i.de, i64 %i.df, i1 false)
  %i.dg = load i32, ptr %.sroa.28.0.copyload, align 4, !tbaa !9
  %i.dh = shl i32 %i.dg, 3                        ; 2 uses
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit118, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dj = zext i32 %i.dh to i64                   ; 5 uses
  %i.dk = getelementptr i8, ptr %.sroa.07.0.copyload, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 -1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !10  ; 3 uses
  %i.dn = ashr i8 %i.dm, 7                        ; 3 uses
  %i.do = icmp eq i8 %i.dm, %i.dn
  br i1 %i.do, label %.lr.ph.i.i.i114.preheader, label %.critedge.thread.i.i.i.i108

.lr.ph.i.i.i114.preheader:                        ; preds = %bb.o
  %i.dp = add nsw i64 %i.dj, -1
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i114.preheader, %.lr.ph.i.i.i114
  %i.dq = phi i64 [ %i.dp, %.lr.ph.i.i.i114.preheader ], [ %i.dv, %.lr.ph.i.i.i114 ] ; 4 uses
  %.sroa.10.029.i4.i.i.i115225 = phi i64 [ %i.dj, %.lr.ph.i.i.i114.preheader ], [ %i.dq, %.lr.ph.i.i.i114 ]
  %i.dr = getelementptr i8, ptr %.sroa.07.0.copyload, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 -1
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !10  ; 2 uses
  %i.du = icmp eq i8 %i.dt, %i.dm
  br i1 %i.du, label %.lr.ph.i.i.i114, label %.critedge.i.loopexit.i.i.i116, !llvm.loop !0

.lr.ph.i.i.i114:                                  ; preds = %bb.p
  %i.dv = add nsw i64 %i.dq, -1                   ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %.critedge.thread.i.i.i.i108, label %bb.p, !llvm.loop !0

.critedge.i.loopexit.i.i.i116:                    ; preds = %bb.p
  %.pre.i.i.i117 = ashr i8 %i.dt, 7
  br label %.critedge.thread.i.i.i.i108

.critedge.thread.i.i.i.i108:                      ; preds = %.lr.ph.i.i.i114, %.critedge.i.loopexit.i.i.i116, %bb.o
  %.sroa.10.028.i.i.i.i109 = phi i64 [ %i.dj, %bb.o ], [ %i.dq, %.critedge.i.loopexit.i.i.i116 ], [ 0, %.lr.ph.i.i.i114 ]
  %.sroa.5.026.i.i.i.i110 = phi i64 [ %i.dj, %bb.o ], [ %.sroa.10.029.i4.i.i.i115225, %.critedge.i.loopexit.i.i.i116 ], [ 1, %.lr.ph.i.i.i114 ]
  %i.dx = phi i8 [ %i.dn, %bb.o ], [ %.pre.i.i.i117, %.critedge.i.loopexit.i.i.i116 ], [ 0, %.lr.ph.i.i.i114 ]
  %i.dy = icmp eq i8 %i.dx, %i.dn
  %.sroa.3.0.copyload4.i.i.i.i111 = select i1 %i.dy, i64 %.sroa.10.028.i.i.i.i109, i64 %.sroa.5.026.i.i.i.i110
  %i.dz = trunc nuw i64 %.sroa.3.0.copyload4.i.i.i.i111 to i32
  %i.ea = add nuw i32 %i.dz, 7
  %i.eb = lshr i32 %i.ea, 3
  br label %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit118

_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit118: ; preds = %bb.l, %bb.m, %bb.n, %.critedge.thread.i.i.i.i108
  %.sink.i.i112 = phi i32 [ 0, %bb.l ], [ 0, %bb.m ], [ %i.eb, %.critedge.thread.i.i.i.i108 ], [ 0, %bb.n ]
  %.1.i.i113 = phi i32 [ 1, %bb.l ], [ 0, %bb.m ], [ 0, %.critedge.thread.i.i.i.i108 ], [ 0, %bb.n ]
  store i32 %.sink.i.i112, ptr %.sroa.28.0.copyload, align 4, !tbaa !9
  br label %bb.r

bb.q:                                             ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit
  %.sroa.03.0.copyload = load ptr, ptr %.sroa.0127.0166, align 8, !tbaa !112
  %.sroa.24.0.copyload = load ptr, ptr %i.cq, align 8, !tbaa !111
  %.val74.val = load ptr, ptr %.sroa.0131.0163, align 8, !tbaa !51
  %.val74.val83 = load ptr, ptr %i.cr, align 8, !tbaa !52
  %.val74.val83.val = load i32, ptr %.val74.val83, align 4, !tbaa !9
  %.val73.val = load ptr, ptr %.sroa.0132.0160, align 8, !tbaa !51
  %.val73.val84 = load ptr, ptr %i.cm, align 8, !tbaa !52
  %.val73.val84.val = load i32, ptr %.val73.val84, align 4, !tbaa !9
  %i.ec = call noundef i32 @_ZN6hermes6bigint8multiplyENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_(ptr %.sroa.03.0.copyload, ptr %.sroa.24.0.copyload, ptr %.val74.val, i32 %.val74.val83.val, ptr %.val73.val, i32 %.val73.val84.val) ; 2 uses
  %i.ed = icmp ne i32 %i.ec, 0
  %i.ee = icmp ugt i32 %.sroa.10.0165, 1023
  %or.cond.i123 = and i1 %i.ee, %i.ed
  br i1 %or.cond.i123, label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit118
  %.047 = phi i32 [ %.1.i.i113, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit118 ], [ %i.ec, %bb.q ]
  %.not56 = icmp eq i32 %.047, 0
  br i1 %.not56, label %bb.s, label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit, !prof !54

bb.s:                                             ; preds = %bb.r, %bb.j
  %.sroa.11.1 = phi i32 [ %.sroa.11.0162, %bb.j ], [ %.sroa.10.0165, %bb.r ]
  %.sroa.0131.1 = phi ptr [ %.sroa.0131.0163, %bb.j ], [ %.sroa.0127.0166, %bb.r ] ; 4 uses
  %.sroa.10.1 = phi i32 [ %.sroa.10.0165, %bb.j ], [ %.sroa.11.0162, %bb.r ] ; 3 uses
  %.sroa.0127.1 = phi ptr [ %.sroa.0127.0166, %bb.j ], [ %.sroa.0131.0163, %bb.r ] ; 4 uses
  %.046 = lshr i32 %.046169, 1                    ; 2 uses
  %.not52 = icmp eq i32 %.046, 0
  br i1 %.not52, label %._crit_edge, label %.lr.ph, !llvm.loop !110

._crit_edge:                                      ; preds = %bb.s
  %.not53 = icmp eq ptr %.sroa.0131.1, %5
  br i1 %.not53, label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.ef = getelementptr i8, ptr %.sroa.0127.1, i64 8 ; 2 uses
  %.val66.val = load ptr, ptr %i.ef, align 8, !tbaa !52
  store i32 %.sroa.10.1, ptr %.val66.val, align 4, !tbaa !9
  %.val72.val = load ptr, ptr %.sroa.0131.1, align 8, !tbaa !51 ; 2 uses
  %i.eg = getelementptr i8, ptr %.sroa.0131.1, i64 8
  %.val72.val85 = load ptr, ptr %i.eg, align 8, !tbaa !52
  %.val72.val85.val = load i32, ptr %.val72.val85, align 4, !tbaa !9 ; 6 uses
  %i.eh = icmp ult i32 %.sroa.10.1, %.val72.val85.val
  br i1 %i.eh, label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ei = shl i32 %.val72.val85.val, 3
  %i.ej = load ptr, ptr %.sroa.0127.1, align 8, !tbaa !51
  %i.ek = zext i32 %i.ei to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ej, ptr readonly align 8 %.val72.val, i64 %i.ek, i1 false)
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !52, !nonnull !43, !align !53
  %i.em = load i32, ptr %i.el, align 4, !tbaa !9
  %i.en = sub i32 %i.em, %.val72.val85.val
  %i.eo = shl i32 %i.en, 3
  %i.ep = icmp eq i32 %.val72.val85.val, 0
  br i1 %i.ep, label %_ZN6hermes6bigint12_GLOBAL__N_124getBigIntRefSignExtValueINS0_18ImmutableBigIntRefEEEmRKT_.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eq = add i32 %.val72.val85.val, -1
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.val72.val, i64 %i.er
  %i.et = load i64, ptr %i.es, align 8, !tbaa !13
  %.neg.i.i.i = ashr i64 %i.et, 63
  %i.eu = trunc nsw i64 %.neg.i.i.i to i8
  br label %_ZN6hermes6bigint12_GLOBAL__N_124getBigIntRefSignExtValueINS0_18ImmutableBigIntRefEEEmRKT_.exit.i

_ZN6hermes6bigint12_GLOBAL__N_124getBigIntRefSignExtValueINS0_18ImmutableBigIntRefEEEmRKT_.exit.i: ; preds = %bb.v, %bb.u
  %i.ev = phi i8 [ %i.eu, %bb.v ], [ 0, %bb.u ]
  %i.ew = load ptr, ptr %.sroa.0127.1, align 8, !tbaa !51
  %i.ex = zext i32 %.val72.val85.val to i64
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ex
  %i.ez = zext i32 %i.eo to i64
  call void @llvm.memset.p0.i64(ptr align 8 %i.ey, i8 %i.ev, i64 %i.ez, i1 false)
  br label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit: ; preds = %bb.q, %bb.r, %.lr.ph, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98.thread, %_ZN6hermes6bigint12_GLOBAL__N_124getBigIntRefSignExtValueINS0_18ImmutableBigIntRefEEEmRKT_.exit.i, %bb.t, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit, %._crit_edge
  %.0 = phi i32 [ 1, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit ], [ 1, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98 ], [ 0, %._crit_edge ], [ 0, %_ZN6hermes6bigint12_GLOBAL__N_124getBigIntRefSignExtValueINS0_18ImmutableBigIntRefEEEmRKT_.exit.i ], [ 1, %bb.t ], [ 0, %_ZN6hermes6bigint12_GLOBAL__N_114initWithDigitsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefE.exit98.thread ], [ 1, %bb.r ], [ 2, %.lr.ph ], [ 2, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.fa = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.fb = icmp eq ptr %i.fa, %i.f
  br i1 %i.fb, label %_ZN6hermes6bigint10TmpStorageD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit
  call void @free(ptr noundef %i.fa) #16
  br label %_ZN6hermes6bigint10TmpStorageD2Ev.exit

_ZN6hermes6bigint10TmpStorageD2Ev.exit:           ; preds = %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes6bigint19leftShiftResultSizeENS0_18ImmutableBigIntRefES1_(ptr nofree readnone captures(none) %0, i32 %1, ptr %2, i32 %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %.not.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i, label %.thread56.i, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i: ; preds = %bb.a
  %i.c = add i32 %3, -1
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13, !noalias !115
  %.fr.i = freeze i64 %i.f                        ; 3 uses
  %i.g = icmp slt i64 %.fr.i, 0
  %.lobit.i = lshr i64 %.fr.i, 63
  %4 = trunc nuw nsw i64 %.lobit.i to i32         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !115
  store i64 -65536, ptr %i.b, align 8, !tbaa !13, !noalias !115
  %i.h = icmp sgt i64 %.fr.i, -1
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i
  %i.i = icmp eq i32 %3, 1
  br i1 %i.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !115
  br label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit.thread

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i: ; preds = %bb.b
  %i.j = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef nonnull %2, ptr noundef nonnull %i.b, i32 noundef 1) #16, !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !115
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit.thread, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i: ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !115
  store i64 65536, ptr %i.a, align 8, !tbaa !13, !noalias !115
  %i.l = load i64, ptr %2, align 8, !tbaa !13, !noalias !115
  %.fr.i.i1738.i = freeze i64 %i.l                ; 2 uses
  %i.m = icmp slt i64 %.fr.i.i1738.i, 0
  br i1 %i.m, label %.thread52.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i

bb.c:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !115
  store i64 65536, ptr %i.a, align 8, !tbaa !13, !noalias !115
  %i.n = icmp eq i32 %3, 1
  br i1 %i.n, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !115
  br label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i: ; preds = %bb.c, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i
  %i.o = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef %3) #16, !noalias !115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !115
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit, label %bb.d

.thread52.i:                                      ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !115
  br label %bb.e

bb.d:                                             ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i
  %i.q = load i64, ptr %2, align 8, !tbaa !13, !noalias !115 ; 2 uses
  br i1 %i.g, label %bb.e, label %.thread56.i

bb.e:                                             ; preds = %bb.d, %.thread52.i
  %.pn.i = phi i64 [ %.fr.i.i1738.i, %.thread52.i ], [ %i.q, %bb.d ]
  %i.r = sub nsw i64 0, %.pn.i
  br label %.thread56.i

.thread56.i:                                      ; preds = %bb.a, %bb.e, %bb.d
  %5 = phi i32 [ %4, %bb.e ], [ %4, %bb.d ], [ 0, %bb.a ]
  %i.s = phi i64 [ %i.r, %bb.e ], [ %i.q, %bb.d ], [ 0, %bb.a ]
  %i.t = trunc i64 %i.s to i32
  %i.u = add i32 %i.t, 63
  %i.v = lshr i32 %i.u, 6
  br label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit: ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i, %.thread56.i
  %.sink63.i = phi i32 [ %5, %.thread56.i ], [ %4, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i ], [ %4, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i ]
  %.sink.i = phi i32 [ %i.v, %.thread56.i ], [ 129, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i ], [ 129, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i ]
  %.sink63.i.fr = freeze i32 %.sink63.i
  %i.w = icmp eq i32 %.sink63.i.fr, 0
  %spec.select = select i1 %i.w, i32 %.sink.i, i32 0
  br label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit.thread

_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit.thread: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i
  %i.x = phi i32 [ 0, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i ], [ %spec.select, %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit ], [ 0, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i ]
  %i.y = add i32 %i.x, %1
  ret i32 %i.y
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6hermes6bigint26signedRightShiftResultSizeENS0_18ImmutableBigIntRefES1_(ptr nofree readnone captures(none) %0, i32 %1, ptr %2, i32 %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %.not.i.i = icmp eq i32 %3, 0
  br i1 %.not.i.i, label %.thread56.i, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i: ; preds = %bb.a
  %i.c = add i32 %3, -1
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13, !noalias !118
  %.fr.i = freeze i64 %i.f                        ; 3 uses
  %i.g = icmp slt i64 %.fr.i, 0
  %.lobit.i = lshr i64 %.fr.i, 63
  %4 = trunc nuw nsw i64 %.lobit.i to i32         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !118
  store i64 -65536, ptr %i.b, align 8, !tbaa !13, !noalias !118
  %i.h = icmp sgt i64 %.fr.i, -1
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i
  %i.i = icmp eq i32 %3, 1
  br i1 %i.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !118
  br label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i: ; preds = %bb.b
  %i.j = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef nonnull %2, ptr noundef nonnull %i.b, i32 noundef 1) #16, !noalias !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !118
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i: ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !118
  store i64 65536, ptr %i.a, align 8, !tbaa !13, !noalias !118
  %i.l = load i64, ptr %2, align 8, !tbaa !13, !noalias !118
  %.fr.i.i1738.i = freeze i64 %i.l                ; 2 uses
  %i.m = icmp slt i64 %.fr.i.i1738.i, 0
  br i1 %i.m, label %.thread52.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i

bb.c:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !118
  store i64 65536, ptr %i.a, align 8, !tbaa !13, !noalias !118
  %i.n = icmp eq i32 %3, 1
  br i1 %i.n, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !118
  br label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i: ; preds = %bb.c, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i
  %i.o = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef %3) #16, !noalias !118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !118
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit, label %bb.d

.thread52.i:                                      ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !118
  br label %bb.e

bb.d:                                             ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i
  %i.q = load i64, ptr %2, align 8, !tbaa !13, !noalias !118 ; 2 uses
  br i1 %i.g, label %bb.e, label %.thread56.i

bb.e:                                             ; preds = %bb.d, %.thread52.i
  %.pn.i = phi i64 [ %.fr.i.i1738.i, %.thread52.i ], [ %i.q, %bb.d ]
  %i.r = sub nsw i64 0, %.pn.i
  br label %.thread56.i

.thread56.i:                                      ; preds = %bb.a, %bb.e, %bb.d
  %5 = phi i32 [ %4, %bb.e ], [ %4, %bb.d ], [ 0, %bb.a ]
  %i.s = phi i64 [ %i.r, %bb.e ], [ %i.q, %bb.d ], [ 0, %bb.a ]
  %i.t = trunc i64 %i.s to i32
  %i.u = add i32 %i.t, 63
  %i.v = lshr i32 %i.u, 6
  br label %_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint12_GLOBAL__N_121getShiftAmountAndSignENS0_18ImmutableBigIntRefE.exit: ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i, %.thread56.i
  %.sink63.i = phi i32 [ %5, %.thread56.i ], [ %4, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i ], [ %4, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i ], [ %4, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i ], [ %4, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i ]
  %.sink.i = phi i32 [ %i.v, %.thread56.i ], [ 129, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i ], [ 129, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i ], [ 129, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i ], [ 129, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i ]
  %i.w = icmp eq i32 %.sink63.i, 1
  %.0.i = select i1 %i.w, i32 %.sink.i, i32 0
  %i.x = add i32 %.0.i, %1
  ret i32 %i.x
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN6hermes6bigint9leftShiftENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_(ptr %0, ptr nofree captures(none) %1, ptr nofree readonly captures(none) %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN6hermes6bigint12_GLOBAL__N_19shiftImplENS1_9ShiftOpIsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES4_(i32 noundef 0, ptr %0, ptr %1, ptr %2, i32 %3, ptr %4, i32 %5)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN6hermes6bigint12_GLOBAL__N_19shiftImplENS1_9ShiftOpIsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES4_(i32 noundef range(i32 0, 2) %0, ptr %1, ptr nofree captures(none) %2, ptr nofree readonly captures(none) %3, i32 %4, ptr %.0.val, i32 %.8.val) unnamed_addr #5 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %.not.i.i.i = icmp eq i32 %.8.val, 0
  br i1 %.not.i.i.i, label %.thread56.i.i, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i.i: ; preds = %bb.a
  %i.c = add i32 %.8.val, -1
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13, !noalias !123
  %.fr.i.i = freeze i64 %i.f                      ; 3 uses
  %i.g = icmp slt i64 %.fr.i.i, 0
  %.lobit.i.i = lshr i64 %.fr.i.i, 63
  %5 = trunc nuw nsw i64 %.lobit.i.i to i32       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !123
  store i64 -65536, ptr %i.b, align 8, !tbaa !13, !noalias !123
  %i.h = icmp sgt i64 %.fr.i.i, -1
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i.i
  %i.i = icmp eq i32 %.8.val, 1
  br i1 %i.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i.i

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !123
  br label %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i.i: ; preds = %bb.b
  %i.j = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef nonnull %.0.val, ptr noundef nonnull %i.b, i32 noundef 1) #16, !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !123
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit, label %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i.i

_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i.i: ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !123
  store i64 65536, ptr %i.a, align 8, !tbaa !13, !noalias !123
  %i.l = load i64, ptr %.0.val, align 8, !tbaa !13, !noalias !123
  %.fr.i.i1738.i.i = freeze i64 %i.l              ; 2 uses
  %i.m = icmp slt i64 %.fr.i.i1738.i.i, 0
  br i1 %i.m, label %.thread52.i.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i.i

bb.c:                                             ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !123
  store i64 65536, ptr %i.a, align 8, !tbaa !13, !noalias !123
  %i.n = icmp eq i32 %.8.val, 1
  br i1 %i.n, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i.i, label %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i.i

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !123
  br label %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit

_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i.i: ; preds = %bb.c, %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i.i
  %i.o = call noundef i32 @_ZN4llvh5APInt9tcCompareEPKmS2_j(ptr noundef nonnull %.0.val, ptr noundef nonnull %i.a, i32 noundef %.8.val) #16, !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !123
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit, label %bb.d

.thread52.i.i:                                    ; preds = %_ZN6hermes6bigint10isNegativeENS0_18ImmutableBigIntRefE.exit.i.i16.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !123
  br label %bb.e

bb.d:                                             ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i.i
  %i.q = load i64, ptr %.0.val, align 8, !tbaa !13, !noalias !123 ; 2 uses
  br i1 %i.g, label %bb.e, label %.thread56.i.i

bb.e:                                             ; preds = %bb.d, %.thread52.i.i
  %.pn.i.i = phi i64 [ %.fr.i.i1738.i.i, %.thread52.i.i ], [ %i.q, %bb.d ]
  %i.r = sub nsw i64 0, %.pn.i.i
  br label %.thread56.i.i

.thread56.i.i:                                    ; preds = %bb.e, %bb.d, %bb.a
  %6 = phi i32 [ %5, %bb.e ], [ %5, %bb.d ], [ 0, %bb.a ]
  %i.s = phi i64 [ %i.r, %bb.e ], [ %i.q, %bb.d ], [ 0, %bb.a ]
  %i.t = trunc i64 %i.s to i32
  br label %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit

_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit: ; preds = %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i.i, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i.i, %.thread56.i.i
  %.sink63.i.i = phi i32 [ %6, %.thread56.i.i ], [ %5, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i.i ], [ %5, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i.i ], [ %5, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i.i ], [ %5, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i.i ]
  %.sink.i.i = phi i32 [ %i.t, %.thread56.i.i ], [ 8193, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.thread.i.i ], [ 8193, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.thread32.i.i ], [ 8193, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit23.i.i ], [ 8193, %_ZN6hermes6bigint7compareENS0_18ImmutableBigIntRefEl.exit.i.i ] ; 2 uses
  %.not.i.not = icmp eq i32 %0, %.sink63.i.i      ; 2 uses
  %i.u = add i32 %.sink.i.i, 63
  %i.v = lshr i32 %i.u, 6
  %.0.i.i = select i1 %.not.i.not, i32 %i.v, i32 0
  %i.w = add i32 %.0.i.i, %4
  %_ZN6hermes6bigint12_GLOBAL__N_123signedRightShiftAdapterEPmjj._ZN4llvh5APInt11tcShiftLeftEPmjj = select i1 %.not.i.not, ptr @_ZN4llvh5APInt11tcShiftLeftEPmjj, ptr @_ZN6hermes6bigint12_GLOBAL__N_123signedRightShiftAdapterEPmjj
  %i.x = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.y = icmp ult i32 %i.x, %i.w
  %i.z = icmp ult i32 %i.x, %4
  %or.cond = or i1 %i.z, %i.y
  br i1 %or.cond, label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit
  %i.aa = shl i32 %4, 3
  %i.ab = zext i32 %i.aa to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %1, ptr readonly align 8 %3, i64 %i.ab, i1 false)
  %i.ac = load i32, ptr %2, align 4, !tbaa !9
  %i.ad = sub i32 %i.ac, %4
  %i.ae = shl i32 %i.ad, 3
  %i.af = icmp eq i32 %4, 0
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = add i32 %4, -1
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !13
  %.neg.i.i.i = ashr i64 %i.aj, 63
  %i.ak = trunc nsw i64 %.neg.i.i.i to i8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.al = phi i8 [ %i.ak, %bb.g ], [ 0, %bb.f ]
  %i.am = zext i32 %4 to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.am
  %i.ao = zext i32 %i.ae to i64
  call void @llvm.memset.p0.i64(ptr align 8 %i.an, i8 %i.al, i64 %i.ao, i1 false)
  %i.ap = load i32, ptr %2, align 4, !tbaa !9
  call void %_ZN6hermes6bigint12_GLOBAL__N_123signedRightShiftAdapterEPmjj._ZN4llvh5APInt11tcShiftLeftEPmjj(ptr noundef %1, i32 noundef %i.ap, i32 noundef %.sink.i.i) #16, !callees !124
  %i.aq = load i32, ptr %2, align 4, !tbaa !9
  %i.ar = shl i32 %i.aq, 3                        ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = zext i32 %i.ar to i64                   ; 5 uses
  %i.au = getelementptr i8, ptr %1, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 -1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !10  ; 3 uses
  %i.ax = ashr i8 %i.aw, 7                        ; 3 uses
  %i.ay = icmp eq i8 %i.aw, %i.ax
  br i1 %i.ay, label %.lr.ph.i.preheader, label %.critedge.thread.i.i

.lr.ph.i.preheader:                               ; preds = %bb.i
  %i.az = add nsw i64 %i.at, -1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.ba = phi i64 [ %i.az, %.lr.ph.i.preheader ], [ %i.bf, %.lr.ph.i ] ; 4 uses
  %.sroa.10.029.i4.i27 = phi i64 [ %i.at, %.lr.ph.i.preheader ], [ %i.ba, %.lr.ph.i ]
  %i.bb = getelementptr i8, ptr %1, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 -1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !10  ; 2 uses
  %i.be = icmp eq i8 %i.bd, %i.aw
  br i1 %i.be, label %.lr.ph.i, label %.critedge.i.loopexit.i, !llvm.loop !0

.lr.ph.i:                                         ; preds = %bb.j
  %i.bf = add nsw i64 %i.ba, -1                   ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %.critedge.thread.i.i, label %bb.j, !llvm.loop !0

.critedge.i.loopexit.i:                           ; preds = %bb.j
  %.pre.i = ashr i8 %i.bd, 7
  br label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %.lr.ph.i, %.critedge.i.loopexit.i, %bb.i
  %.sroa.10.028.i.i = phi i64 [ %i.at, %bb.i ], [ %i.ba, %.critedge.i.loopexit.i ], [ 0, %.lr.ph.i ]
  %.sroa.5.026.i.i = phi i64 [ %i.at, %bb.i ], [ %.sroa.10.029.i4.i27, %.critedge.i.loopexit.i ], [ 1, %.lr.ph.i ]
  %i.bh = phi i8 [ %i.ax, %bb.i ], [ %.pre.i, %.critedge.i.loopexit.i ], [ 0, %.lr.ph.i ]
  %i.bi = icmp eq i8 %i.bh, %i.ax
  %.sroa.3.0.copyload4.i.i = select i1 %i.bi, i64 %.sroa.10.028.i.i, i64 %.sroa.5.026.i.i
  %i.bj = trunc nuw i64 %.sroa.3.0.copyload4.i.i to i32
  %i.bk = add nuw i32 %i.bj, 7
  %i.bl = lshr i32 %i.bk, 3
  br label %_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit

_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit: ; preds = %bb.h, %.critedge.thread.i.i
  %.sroa.3.0.i.i = phi i32 [ %i.bl, %.critedge.thread.i.i ], [ 0, %bb.h ]
  store i32 %.sroa.3.0.i.i, ptr %2, align 4, !tbaa !9
  br label %_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit

_ZN6hermes6bigint12_GLOBAL__N_134initNonCanonicalWithReadOnlyBigIntERNS0_16MutableBigIntRefERKNS0_18ImmutableBigIntRefE.exit: ; preds = %_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit, %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit
  %.1 = phi i32 [ 1, %_ZN6hermes6bigint12_GLOBAL__N_131getShiftAmountSignAndResultSizeENS1_9ShiftOpIsENS0_18ImmutableBigIntRefES3_.exit ], [ 0, %_ZN6hermes6bigint12_GLOBAL__N_121ensureCanonicalResultERNS0_16MutableBigIntRefE.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN6hermes6bigint16signedRightShiftENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES2_(ptr %0, ptr nofree captures(none) %1, ptr nofree readonly captures(none) %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call fastcc noundef i32 @_ZN6hermes6bigint12_GLOBAL__N_19shiftImplENS1_9ShiftOpIsENS0_16MutableBigIntRefENS0_18ImmutableBigIntRefES4_(i32 noundef 1, ptr %0, ptr %1, ptr %2, i32 %3, ptr %4, i32 %5)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes6bigint19UniquingBigIntTable12getEntryListEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.44") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %1) local_unnamed_addr #5 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul nsw i64 %i.l, 21
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !61   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !129
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 24
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !62
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !61   ; 2 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 24
  %i.ac = add nsw i64 %i.u, %i.ab                 ; 4 uses
  %i.ad = icmp ugt i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.9) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not50 = icmp eq i64 %i.ac, 0
  br i1 %.not50, label %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = shl nuw nsw i64 %i.ac, 3
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #18 ; 4 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !132
  store ptr %i.ah, ptr %i.af, align 8, !tbaa !133
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ac ; 2 uses
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !134
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !61, !noalias !135
  %.pre35 = load ptr, ptr %i.a, align 8, !tbaa !61, !noalias !136
  br label %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE7reserveEm.exit

_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_M_allocateEm.exit.i
  %.promoted = phi ptr [ null, %bb.c ], [ %i.ai, %_ZNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_M_allocateEm.exit.i ]
  %.promoted26 = phi ptr [ null, %bb.c ], [ %i.ah, %_ZNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %i.aj = phi ptr [ %i.n, %bb.c ], [ %.pre35, %_ZNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %i.ak = phi ptr [ %i.x, %bb.c ], [ %.pre, %_ZNSt12_Vector_baseIN6hermes6bigint16BigIntTableEntryESaIS2_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.not27 = icmp eq ptr %i.ak, %i.aj
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE7reserveEm.exit
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !60, !noalias !135
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !62, !noalias !135
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit, %_ZNSt6vectorIN6hermes6bigint16BigIntTableEntryESaIS2_EE7reserveEm.exit
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit
  %i.ao = phi ptr [ %.promoted26, %.lr.ph ], [ %i.cf, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 4 uses
  %.031 = phi i32 [ 0, %.lr.ph ], [ %i.ci, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 3 uses
  %.sroa.020.030 = phi ptr [ %i.ak, %.lr.ph ], [ %.sroa.020.1, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 3 uses
  %.sroa.10.029 = phi ptr [ %i.am, %.lr.ph ], [ %.sroa.10.1, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 2 uses
  %.sroa.13.028 = phi ptr [ %i.al, %.lr.ph ], [ %.sroa.13.1, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 2 uses
  %i.ap = phi ptr [ %.promoted, %.lr.ph ], [ %i.ch, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 2 uses
  %i.aq = phi ptr [ %.promoted26, %.lr.ph ], [ %i.cg, %_ZNSt15_Deque_iteratorIN6hermes6bigint12ParsedBigIntERKS2_PS3_EppEv.exit ] ; 5 uses
  %i.ar = load ptr, ptr %.sroa.020.030, align 8, !tbaa !46 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.020.030, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !47
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 6 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_ZNK6hermes6bigint12ParsedBigInt8getBytesEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr i8, ptr %i.ar, i64 %i.aw
  %i.az = getelementptr i8, ptr %i.ay, i64 -1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !10  ; 3 uses
  %i.bb = ashr i8 %i.ba, 7                        ; 3 uses
  %i.bc = icmp eq i8 %i.ba, %i.bb
end_hunk_0
