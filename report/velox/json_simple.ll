Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/json_simple?download=true
inline.NumInlined: 15359
inline.NumDeleted: 6624
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5arrow9rapidjson8internal19StrtodFullPrecisionIcEEddiPKT_mmi:bb.a
  %.0152332.i = phi i32 [ %1, %bb.c ], [ 22, %.thread.i ]
  %i.l = zext nneg i32 %.0152332.i to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @_ZZN5arrow9rapidjson8internal5Pow10EiE1e, i64 %i.l
  %i.n = load double, ptr %i.m, align 8, !tbaa !677
  %i.o = fmul double %.0162233.i, %i.n
  br label %.critedge2.thread78

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i32 0, %1
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @_ZZN5arrow9rapidjson8internal5Pow10EiE1e, i64 %i.q
  %i.s = load double, ptr %i.r, align 8, !tbaa !677
  %i.t = fdiv double %0, %i.s
  br label %.critedge2.thread78

bb.e:                                             ; preds = %.thread.i, %bb.b
  %i.u = trunc i64 %3 to i32                      ; 4 uses
  %.neg = sub i64 %4, %3
  %.neg39 = trunc i64 %.neg to i32
  %i.v = add i32 %5, %.neg39                      ; 2 uses
  %i.w = icmp sgt i32 %i.u, 0
  br i1 %i.w, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.03247 = phi i32 [ %i.z, %bb.f ], [ %i.u, %bb.e ] ; 3 uses
  %.03746 = phi ptr [ %i.aa, %bb.f ], [ %2, %bb.e ] ; 4 uses
  %i.x = load i8, ptr %.03746, align 1, !tbaa !99
  %i.y = icmp eq i8 %i.x, 48
  br i1 %i.y, label %bb.f, label %.lr.ph54

bb.f:                                             ; preds = %.lr.ph
  %i.z = add nsw i32 %.03247, -1
  %i.aa = getelementptr inbounds nuw i8, ptr %.03746, i64 1
  %i.ab = icmp sgt i32 %.03247, 1
  br i1 %i.ab, label %.lr.ph, label %.critedge2.thread78, !llvm.loop !5943

.lr.ph54:                                         ; preds = %.lr.ph, %bb.g
  %.053 = phi i32 [ %i.ai, %bb.g ], [ %i.v, %.lr.ph ] ; 2 uses
  %.13352 = phi i32 [ %i.ah, %bb.g ], [ %.03247, %.lr.ph ] ; 4 uses
  %i.ac = zext nneg i32 %.13352 to i64
  %i.ad = getelementptr i8, ptr %.03746, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 -1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !99
  %i.ag = icmp eq i8 %i.af, 48
  br i1 %i.ag, label %bb.g, label %.critedge2.thread

bb.g:                                             ; preds = %.lr.ph54
  %i.ah = add nsw i32 %.13352, -1
  %i.ai = add nsw i32 %.053, 1
  %i.aj = icmp sgt i32 %.13352, 1
  br i1 %i.aj, label %.lr.ph54, label %.critedge2.thread78, !llvm.loop !5944

.critedge2:                                       ; preds = %bb.e
  %i.ak = icmp eq i32 %i.u, 0
  br i1 %i.ak, label %.critedge2.thread78, label %.critedge2.thread

.critedge2.thread:                                ; preds = %.lr.ph54, %.critedge2
  %.037.lcssa72 = phi ptr [ %2, %.critedge2 ], [ %.03746, %.lr.ph54 ] ; 3 uses
  %.13345 = phi i32 [ %i.u, %.critedge2 ], [ %.13352, %.lr.ph54 ] ; 2 uses
  %.043 = phi i32 [ %i.v, %.critedge2 ], [ %.053, %.lr.ph54 ]
  %.2 = tail call i32 @llvm.smin.i32(i32 %.13345, i32 768) ; 4 uses
  %i.al = tail call i32 @llvm.smax.i32(i32 %.13345, i32 768)
  %i.am = add nsw i32 %i.al, -768
  %.1 = add nsw i32 %i.am, %.043                  ; 3 uses
  %i.an = add nsw i32 %.1, %.2                    ; 2 uses
  %i.ao = icmp slt i32 %i.an, -323
  br i1 %i.ao, label %.critedge2.thread78, label %bb.h

bb.h:                                             ; preds = %.critedge2.thread
  %i.ap = icmp sgt i32 %i.an, 309
  br i1 %i.ap, label %.critedge2.thread78, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = call noundef zeroext i1 @_ZN5arrow9rapidjson8internal11StrtodDiyFpIcEEbPKT_iiPd(ptr noundef %.037.lcssa72, i32 noundef %.2, i32 noundef %.1, ptr noundef nonnull %i.a)
  %i.ar = load double, ptr %i.a, align 8, !tbaa !677 ; 5 uses
  br i1 %i.aq, label %.critedge2.thread78, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.as = zext i32 %.2 to i64                     ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 3328
  store i64 1, ptr %i.at, align 8, !tbaa !679
  store i64 0, ptr %6, align 8, !tbaa !101
  %i.au = icmp ugt i32 %.2, 18
  br i1 %i.au, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %.015.i.i = phi i64 [ %i.ay, %.lr.ph.i.i ], [ 0, %bb.j ] ; 2 uses
  %.01314.i.i = phi i64 [ %i.ax, %.lr.ph.i.i ], [ %i.as, %bb.j ]
  %i.av = getelementptr inbounds nuw i8, ptr %.037.lcssa72, i64 %.015.i.i ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 19
  call void @_ZN5arrow9rapidjson8internal10BigInteger15AppendDecimal64IcEEvPKT_S6_(ptr noundef nonnull align 8 dereferenceable(3336) %6, ptr noundef %i.av, ptr noundef nonnull %i.aw)
  %i.ax = add i64 %.01314.i.i, -19                ; 3 uses
  %i.ay = add i64 %.015.i.i, 19                   ; 2 uses
  %i.az = icmp ugt i64 %i.ax, 18
  br i1 %i.az, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !5945

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.j
  %.013.lcssa.i.i = phi i64 [ %i.as, %bb.j ], [ %i.ax, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.i.i = phi i64 [ 0, %bb.j ], [ %i.ay, %.lr.ph.i.i ]
  %.not.i.i = icmp eq i64 %.013.lcssa.i.i, 0
  br i1 %.not.i.i, label %_ZN5arrow9rapidjson8internal10BigIntegerC2IcEEPKT_m.exit.i, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.037.lcssa72, i64 %.0.lcssa.i.i ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.013.lcssa.i.i
  call void @_ZN5arrow9rapidjson8internal10BigInteger15AppendDecimal64IcEEvPKT_S6_(ptr noundef nonnull align 8 dereferenceable(3336) %6, ptr noundef %i.ba, ptr noundef nonnull %i.bb)
  br label %_ZN5arrow9rapidjson8internal10BigIntegerC2IcEEPKT_m.exit.i

_ZN5arrow9rapidjson8internal10BigIntegerC2IcEEPKT_m.exit.i: ; preds = %bb.k, %._crit_edge.i.i
  %i.bc = call noundef i32 @_ZN5arrow9rapidjson8internal18CheckWithinHalfULPEdRKNS1_10BigIntegerEi(double noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(3336) %6, i32 noundef %.1) ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %_ZN5arrow9rapidjson8internal16StrtodBigIntegerIcEEddPKT_ii.exit, label %bb.l

bb.l:                                             ; preds = %_ZN5arrow9rapidjson8internal10BigIntegerC2IcEEPKT_m.exit.i
  %i.be = icmp eq i32 %i.bc, 0
  %i.bf = bitcast double %i.ar to i64             ; 3 uses
  br i1 %i.be, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bg = and i64 %i.bf, 1
  %.not.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i, label %_ZN5arrow9rapidjson8internal16StrtodBigIntegerIcEEddPKT_ii.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = add i64 %i.bf, 1
  %i.bi = bitcast i64 %i.bh to double
  br label %_ZN5arrow9rapidjson8internal16StrtodBigIntegerIcEEddPKT_ii.exit

bb.o:                                             ; preds = %bb.l
  %i.bj = add i64 %i.bf, 1
  %i.bk = bitcast i64 %i.bj to double
  br label %_ZN5arrow9rapidjson8internal16StrtodBigIntegerIcEEddPKT_ii.exit

_ZN5arrow9rapidjson8internal16StrtodBigIntegerIcEEddPKT_ii.exit: ; preds = %_ZN5arrow9rapidjson8internal10BigIntegerC2IcEEPKT_m.exit.i, %bb.m, %bb.n, %bb.o
  %.0.i = phi double [ %i.bk, %bb.o ], [ %i.bi, %bb.n ], [ %i.ar, %_ZN5arrow9rapidjson8internal10BigIntegerC2IcEEPKT_m.exit.i ], [ %i.ar, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.critedge2.thread78

.critedge2.thread78:                              ; preds = %bb.f, %bb.g, %bb.i, %.thread26.i, %bb.d, %bb.h, %.critedge2, %.critedge2.thread, %_ZN5arrow9rapidjson8internal16StrtodBigIntegerIcEEddPKT_ii.exit
  %.236 = phi double [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %.critedge2 ], [ %.0.i, %_ZN5arrow9rapidjson8internal16StrtodBigIntegerIcEEddPKT_ii.exit ], [ 0.000000e+00, %.critedge2.thread ], [ %i.o, %.thread26.i ], [ +inf, %bb.h ], [ %i.ar, %bb.i ], [ %i.t, %bb.d ], [ 0.000000e+00, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret double %.236
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN5arrow9rapidjson8internal11StrtodDiyFpIcEEbPKT_iiPd(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph._crit_edge ] ; 3 uses
  %.082118 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.k, %.lr.ph._crit_edge ] ; 2 uses
  %i.c = icmp eq i64 %.082118, 1844674407370955161
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !99    ; 2 uses
  %i.f = icmp sgt i8 %i.e, 53
  %or.cond130 = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond130, label %._crit_edge.loopexit, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
  %i.g = mul nuw i64 %.082118, 10
  %i.h = sext i8 %i.e to i64
  %i.i = add nsw i64 %i.h, 4294967248
  %i.j = and i64 %i.i, 4294967295
  %i.k = add i64 %i.j, %i.g                       ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.l = icmp samesign uge i64 %indvars.iv.next, %i.b
  %i.m = icmp ugt i64 %i.k, 1844674407370955161
  %or.cond = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !5946

._crit_edge.loopexit:                             ; preds = %.lr.ph, %.lr.ph._crit_edge
  %.083.lcssa.ph.in = phi i64 [ %indvars.iv.next, %.lr.ph._crit_edge ], [ %indvars.iv, %.lr.ph ]
  %.082.lcssa.ph = phi i64 [ %i.k, %.lr.ph._crit_edge ], [ 1844674407370955161, %.lr.ph ]
  %.083.lcssa.ph = trunc i64 %.083.lcssa.ph.in to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.083.lcssa = phi i32 [ 0, %bb.a ], [ %.083.lcssa.ph, %._crit_edge.loopexit ] ; 4 uses
  %.082.lcssa = phi i64 [ 0, %bb.a ], [ %.082.lcssa.ph, %._crit_edge.loopexit ] ; 2 uses
  %i.n = icmp slt i32 %.083.lcssa, %1
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.o = zext nneg i32 %.083.lcssa to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !99
  %i.r = icmp sgt i8 %i.q, 52
  %i.s = zext i1 %i.r to i64
  %spec.select = add i64 %.082.lcssa, %i.s
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.1 = phi i64 [ %.082.lcssa, %._crit_edge ], [ %spec.select, %bb.b ] ; 2 uses
  %i.t = sub nuw nsw i32 %1, %.083.lcssa
  %i.u = icmp eq i32 %1, %.083.lcssa
  %i.v = select i1 %i.u, i64 0, i64 4
  %i.w = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.1, i1 true) ; 3 uses
  %i.x = trunc nuw nsw i64 %i.w to i32            ; 2 uses
  %i.y = sub nsw i32 0, %i.x
  %i.z = shl i64 %.1, %i.w                        ; 3 uses
  %i.aa = shl i64 %i.v, %i.w                      ; 3 uses
  %i.ab = add nsw i32 %i.t, %2                    ; 3 uses
  %i.ac = add nsw i32 %i.ab, 348                  ; 2 uses
  %i.ad = lshr i32 %i.ac, 3
  %i.ae = and i32 %i.ac, -8
  %i.af = add nsw i32 %i.ae, -348                 ; 2 uses
  %i.ag = zext nneg i32 %i.ad to i64              ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr @_ZZN5arrow9rapidjson8internal21GetCachedPowerByIndexEmE15kCachedPowers_F, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !101 ; 2 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr @_ZZN5arrow9rapidjson8internal21GetCachedPowerByIndexEmE15kCachedPowers_E, i64 %i.ag
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !291
  %i.al = sext i16 %i.ak to i32
  %.not = icmp eq i32 %i.af, %i.ab
  br i1 %.not, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = load atomic i8, ptr @_ZGVZN5arrow9rapidjson8internal11StrtodDiyFpIcEEbPKT_iiPdE6kPow10 acquire, align 8
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %bb.e, label %bb.g, !prof !5947

bb.e:                                             ; preds = %bb.d
  %i.ao = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow9rapidjson8internal11StrtodDiyFpIcEEbPKT_iiPdE6kPow10) #30
  %.not88 = icmp eq i32 %i.ao, 0
  br i1 %.not88, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 -6917529027641081856, ptr @_ZZN5arrow9rapidjson8internal11StrtodDiyFpIcEEbPKT_iiPdE6kPow10, align 16, !tbaa !581
  store i32 -60, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow9rapidjson8internal11StrtodDiyFpIcEEbPKT_iiPdE6kPow10, i64 8), align 8, !tbaa !582
  store i64 -4035225266123964416, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow9rapidjson8internal11StrtodDiyFpIcEEbPKT_iiPdE6kPow10, i64 16), align 16, !tbaa !581
  store i32 -57, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow9rapidjson8internal11StrtodDiyFpIcEEbPKT_iiPdE6kPow10, i64 24), align 8, !tbaa !582
  store i64 -432345564227567616, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow9rapidjson8internal11StrtodDiyFpIcEEbPKT_iiPdE6kPow10, i64 32), align 16, !tbaa !581
  store i32 -54, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow9rapidjson8internal11StrtodDiyFpIcEEbPKT_iiPdE6kPow10, i64 40), align 8, !tbaa !582
  store i64 -7187745005283311616, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow9rapidjson8internal11StrtodDiyFpIcEEbPKT_iiPdE6kPow10, i64 48), align 16, !tbaa !581
  store i32 -50, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow9rapidjson8internal11StrtodDiyFpIcEEbPKT_iiPdE6kPow10, i64 56), align 8, !tbaa !582
  store i64 -4372995238176751616, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow9rapidjson8internal11StrtodDiyFpIcEEbPKT_iiPdE6kPow10, i64 64), align 16, !tbaa !581
  store i32 -47, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow9rapidjson8internal11StrtodDiyFpIcEEbPKT_iiPdE6kPow10, i64 72), align 8, !tbaa !582
  store i64 -854558029293551616, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow9rapidjson8internal11StrtodDiyFpIcEEbPKT_iiPdE6kPow10, i64 80), align 16, !tbaa !581
  store i32 -44, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow9rapidjson8internal11StrtodDiyFpIcEEbPKT_iiPdE6kPow10, i64 88), align 8, !tbaa !582
  store i64 -7451627795949551616, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow9rapidjson8internal11StrtodDiyFpIcEEbPKT_iiPdE6kPow10, i64 96), align 16, !tbaa !581
  store i32 -40, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5arrow9rapidjson8internal11StrtodDiyFpIcEEbPKT_iiPdE6kPow10, i64 104), align 8, !tbaa !582
  %i.ap = tail call ptr @llvm.invariant.start.p0(i64 112, ptr nonnull @_ZZN5arrow9rapidjson8internal11StrtodDiyFpIcEEbPKT_iiPdE6kPow10) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow9rapidjson8internal11StrtodDiyFpIcEEbPKT_iiPdE6kPow10) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.aq = sub nsw i32 %i.ab, %i.af                ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [16 x i8], ptr @_ZZN5arrow9rapidjson8internal11StrtodDiyFpIcEEbPKT_iiPdE6kPow10, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 -16
  %i.au = lshr i64 %i.z, 32                       ; 2 uses
  %i.av = and i64 %i.z, 4294967295                ; 2 uses
  %i.aw = load i64, ptr %i.at, align 16, !tbaa !581 ; 2 uses
  %i.ax = lshr i64 %i.aw, 32                      ; 2 uses
  %i.ay = and i64 %i.aw, 4294967295               ; 2 uses
  %i.az = mul nuw i64 %i.ax, %i.au
  %i.ba = mul nuw i64 %i.ax, %i.av                ; 2 uses
  %i.bb = mul nuw i64 %i.ay, %i.au                ; 2 uses
  %i.bc = mul nuw i64 %i.ay, %i.av
  %i.bd = lshr i64 %i.bc, 32
  %i.be = and i64 %i.bb, 4294967295
  %i.bf = and i64 %i.ba, 4294967295
  %i.bg = add nuw nsw i64 %i.be, 2147483648
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  %i.bi = add nuw nsw i64 %i.bh, %i.bf
  %i.bj = lshr i64 %i.bb, 32
  %i.bk = add nuw i64 %i.bj, %i.az
  %i.bl = lshr i64 %i.ba, 32
  %i.bm = add nuw i64 %i.bk, %i.bl
  %i.bn = lshr i64 %i.bi, 32
  %i.bo = add i64 %i.bm, %i.bn
  %i.bp = getelementptr i8, ptr %i.as, i64 -8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !582
  %reass.sub123 = sub i32 %i.bq, %i.x
  %i.br = add i32 %reass.sub123, 64
  %i.bs = add nsw i32 %i.aq, %1
  %i.bt = icmp sgt i32 %i.bs, 19
  %i.bu = add nsw i64 %i.aa, 4
  %spec.select92 = select i1 %i.bt, i64 %i.bu, i64 %i.aa
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %.sroa.0105.0 = phi i64 [ %i.z, %bb.c ], [ %i.bo, %bb.g ] ; 2 uses
  %.sroa.15.0 = phi i32 [ %i.y, %bb.c ], [ %i.br, %bb.g ]
  %.185 = phi i64 [ %i.aa, %bb.c ], [ %spec.select92, %bb.g ] ; 2 uses
  %i.bv = lshr i64 %.sroa.0105.0, 32              ; 2 uses
  %i.bw = and i64 %.sroa.0105.0, 4294967295       ; 2 uses
  %i.bx = lshr i64 %i.ai, 32                      ; 2 uses
  %i.by = and i64 %i.ai, 4294967295               ; 2 uses
  %i.bz = mul nuw i64 %i.bv, %i.bx
  %i.ca = mul nuw i64 %i.bw, %i.bx                ; 2 uses
  %i.cb = mul nuw i64 %i.bv, %i.by                ; 2 uses
  %i.cc = mul nuw i64 %i.bw, %i.by
  %i.cd = lshr i64 %i.cc, 32
  %i.ce = and i64 %i.cb, 4294967295
  %i.cf = and i64 %i.ca, 4294967295
  %i.cg = add nuw nsw i64 %i.ce, 2147483648
  %i.ch = add nuw nsw i64 %i.cg, %i.cd
  %i.ci = add nuw nsw i64 %i.ch, %i.cf
  %i.cj = lshr i64 %i.cb, 32
  %i.ck = add nuw i64 %i.cj, %i.bz
  %i.cl = lshr i64 %i.ca, 32
  %i.cm = add nuw i64 %i.ck, %i.cl
  %i.cn = lshr i64 %i.ci, 32
  %i.co = add i64 %i.cm, %i.cn                    ; 2 uses
  %.not89 = icmp eq i64 %.185, 0
  %i.cp = select i1 %.not89, i64 8, i64 9
  %i.cq = add nsw i64 %i.cp, %.185
  %i.cr = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.co, i1 true) ; 3 uses
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  %i.ct = shl i64 %i.co, %i.cr                    ; 2 uses
  %i.cu = add nsw i32 %i.al, 64
  %i.cv = add i32 %i.cu, %.sroa.15.0
  %i.cw = sub i32 %i.cv, %i.cs                    ; 4 uses
  %i.cx = shl i64 %i.cq, %i.cr                    ; 2 uses
  %i.cy = add nsw i32 %i.cw, 64
  %i.cz = icmp sgt i32 %i.cw, -1086
  %spec.select.i = tail call i32 @llvm.usub.sat.i32(i32 %i.cy, i32 -1074)
  %.0.i = select i1 %i.cz, i32 53, i32 %spec.select.i ; 3 uses
  %i.da = sub nsw i32 64, %.0.i
  %i.db = icmp samesign ult i32 %.0.i, 4
  br i1 %i.db, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dc = sub nuw nsw i32 4, %.0.i                ; 2 uses
  %i.dd = zext nneg i32 %i.dc to i64              ; 2 uses
  %i.de = lshr i64 %i.ct, %i.dd
  %i.df = add nsw i32 %i.dc, %i.cw
  %i.dg = ashr i64 %i.cx, %i.dd
  %i.dh = add nsw i64 %i.dg, 9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0105.1 = phi i64 [ %i.de, %bb.i ], [ %i.ct, %bb.h ] ; 2 uses
  %.sroa.15.1 = phi i32 [ %i.df, %bb.i ], [ %i.cw, %bb.h ]
  %.2 = phi i64 [ %i.dh, %bb.i ], [ %i.cx, %bb.h ]
  %.0 = phi i32 [ 60, %bb.i ], [ %i.da, %bb.h ]   ; 3 uses
  %i.di = zext i32 %.0 to i64                     ; 2 uses
  %i.dj = lshr i64 %.sroa.0105.1, %i.di           ; 2 uses
  %i.dk = add nsw i32 %.0, %.sroa.15.1            ; 3 uses
  %notmask = shl nsw i64 -1, %i.di
  %i.dl = xor i64 %notmask, -1
  %i.dm = and i64 %.sroa.0105.1, %i.dl
  %i.dn = shl i64 %i.dm, 3                        ; 2 uses
  %i.do = add nsw i32 %.0, -1
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = shl i64 8, %i.dp                        ; 2 uses
  %i.dr = and i64 %.2, 4294967295                 ; 2 uses
  %i.ds = add nuw i64 %i.dq, %i.dr
  %i.dt = icmp uge i64 %i.dn, %i.ds               ; 2 uses
  br i1 %i.dt, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.du = add i64 %i.dj, 1                        ; 3 uses
  %i.dv = and i64 %i.du, 9007199254740992
  %.not90 = icmp eq i64 %i.dv, 0
  br i1 %.not90, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dw = lshr i64 %i.du, 1
  %i.dx = add nsw i32 %i.dk, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.sroa.7.0 = phi i32 [ %i.dk, %bb.k ], [ %i.dx, %bb.l ], [ %i.dk, %bb.j ] ; 4 uses
  %.sroa.0.0 = phi i64 [ %i.du, %bb.k ], [ %i.dw, %bb.l ], [ %i.dj, %bb.j ] ; 2 uses
  %i.dy = icmp slt i32 %.sroa.7.0, -1074
  br i1 %i.dy, label %_ZNK5arrow9rapidjson8internal5DiyFp8ToDoubleEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dz = icmp sgt i32 %.sroa.7.0, 971
  br i1 %i.dz, label %_ZNK5arrow9rapidjson8internal5DiyFp8ToDoubleEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ea = icmp eq i32 %.sroa.7.0, -1074
  %i.eb = and i64 %.sroa.0.0, 4503599627370496
  %i.ec = icmp eq i64 %i.eb, 0
  %or.cond.i = select i1 %i.ea, i1 %i.ec, i1 false
  %i.ed = add nsw i32 %.sroa.7.0, 1075
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = shl nuw nsw i64 %i.ee, 52
  %i.eg = select i1 %or.cond.i, i64 0, i64 %i.ef
  %i.eh = and i64 %.sroa.0.0, 4503599627370495
  %i.ei = or disjoint i64 %i.eg, %i.eh
  %i.ej = bitcast i64 %i.ei to double
  br label %_ZNK5arrow9rapidjson8internal5DiyFp8ToDoubleEv.exit

_ZNK5arrow9rapidjson8internal5DiyFp8ToDoubleEv.exit: ; preds = %bb.m, %bb.n, %bb.o
  %.0.i100 = phi double [ %i.ej, %bb.o ], [ 0.000000e+00, %bb.m ], [ +inf, %bb.n ]
  store double %.0.i100, ptr %3, align 8, !tbaa !677
  %i.ek = sub i64 %i.dq, %i.dr
  %.not91 = icmp uge i64 %i.ek, %i.dn
  %spec.select93 = or i1 %.not91, %i.dt
  ret i1 %spec.select93
}
end_hunk_0
