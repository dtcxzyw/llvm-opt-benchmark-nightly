Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Sha1?download=true
inline.NumInlined: 10
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN7NCrypto5NSha18CContext6UpdateEPKhm:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN7NCrypto5NSha18CContext9UpdateRarEPhmb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(100) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 2 !guid !28 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %.not34 = icmp eq i64 %2, 0
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %.in = phi i64 [ %2, %.lr.ph ], [ %i.t, %.loopexit ]
  %.037 = phi ptr [ %1, %.lr.ph ], [ %i.z, %.loopexit ] ; 18 uses
  %.02836 = phi i32 [ %i.b, %.lr.ph ], [ %.1, %.loopexit ] ; 3 uses
  %.02935 = phi i1 [ false, %.lr.ph ], [ %.130, %.loopexit ] ; 3 uses
  %i.t = add i64 %.in, -1                         ; 2 uses
  %i.u = and i32 %.02836, 3                       ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  %i.w = lshr i32 %.02836, 2
  %i.x = zext nneg i32 %i.w to i64                ; 2 uses
  br i1 %i.v, label %bb.c, label %._crit_edge39

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.x
  store i32 0, ptr %i.y, align 4, !tbaa !7
  br label %._crit_edge39

._crit_edge39:                                    ; preds = %bb.b, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.037, i64 1
  %i.aa = load i8, ptr %.037, align 1, !tbaa !14
  %i.ab = zext i8 %i.aa to i32
  %i.ac = shl nuw nsw i32 %i.u, 3
  %i.ad = xor i32 %i.ac, 24
  %i.ae = shl nuw i32 %i.ab, %i.ad
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.x ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7
  %i.ah = or i32 %i.ae, %i.ag
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !7
  %i.ai = add i32 %.02836, 1                      ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 64
  br i1 %i.aj, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %._crit_edge39
  tail call void @_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(32) %0, i1 noundef zeroext %.02935)
  %i.ak = load i64, ptr %i.d, align 8, !tbaa !10
  %i.al = add i64 %i.ak, 1
  store i64 %i.al, ptr %i.d, align 8, !tbaa !10
  br i1 %.02935, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.d
  %i.am = load <4 x i8>, ptr %i.c, align 4, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %.037, i64 4294967233
  store <4 x i8> %i.am, ptr %i.an, align 1, !tbaa !14
  %i.ao = load <4 x i8>, ptr %i.e, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %.037, i64 4294967237
  store <4 x i8> %i.ao, ptr %i.ap, align 1, !tbaa !14
  %i.aq = load <4 x i8>, ptr %i.f, align 4, !tbaa !7
  %i.ar = getelementptr inbounds nuw i8, ptr %.037, i64 4294967241
  store <4 x i8> %i.aq, ptr %i.ar, align 1, !tbaa !14
  %i.as = load <4 x i8>, ptr %i.g, align 8, !tbaa !7
  %i.at = getelementptr inbounds nuw i8, ptr %.037, i64 4294967245
  store <4 x i8> %i.as, ptr %i.at, align 1, !tbaa !14
  %i.au = load <4 x i8>, ptr %i.h, align 4, !tbaa !7
  %i.av = getelementptr inbounds nuw i8, ptr %.037, i64 4294967249
  store <4 x i8> %i.au, ptr %i.av, align 1, !tbaa !14
  %i.aw = load <4 x i8>, ptr %i.i, align 8, !tbaa !7
  %i.ax = getelementptr inbounds nuw i8, ptr %.037, i64 4294967253
  store <4 x i8> %i.aw, ptr %i.ax, align 1, !tbaa !14
  %i.ay = load <4 x i8>, ptr %i.j, align 4, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %.037, i64 4294967257
  store <4 x i8> %i.ay, ptr %i.az, align 1, !tbaa !14
  %i.ba = load <4 x i8>, ptr %i.k, align 8, !tbaa !7
  %i.bb = getelementptr inbounds nuw i8, ptr %.037, i64 4294967261
  store <4 x i8> %i.ba, ptr %i.bb, align 1, !tbaa !14
  %i.bc = load <4 x i8>, ptr %i.l, align 4, !tbaa !7
  %i.bd = getelementptr inbounds nuw i8, ptr %.037, i64 4294967265
  store <4 x i8> %i.bc, ptr %i.bd, align 1, !tbaa !14
  %i.be = load <4 x i8>, ptr %i.m, align 8, !tbaa !7
  %i.bf = getelementptr inbounds nuw i8, ptr %.037, i64 4294967269
  store <4 x i8> %i.be, ptr %i.bf, align 1, !tbaa !14
  %i.bg = load <4 x i8>, ptr %i.n, align 4, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %.037, i64 4294967273
  store <4 x i8> %i.bg, ptr %i.bh, align 1, !tbaa !14
  %i.bi = load <4 x i8>, ptr %i.o, align 8, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %.037, i64 4294967277
  store <4 x i8> %i.bi, ptr %i.bj, align 1, !tbaa !14
  %i.bk = load <4 x i8>, ptr %i.p, align 4, !tbaa !7
  %i.bl = getelementptr inbounds nuw i8, ptr %.037, i64 4294967281
  store <4 x i8> %i.bk, ptr %i.bl, align 1, !tbaa !14
  %i.bm = load <4 x i8>, ptr %i.q, align 8, !tbaa !7
  %i.bn = getelementptr inbounds nuw i8, ptr %.037, i64 4294967285
  store <4 x i8> %i.bm, ptr %i.bn, align 1, !tbaa !14
  %i.bo = load <4 x i8>, ptr %i.r, align 4, !tbaa !7
  %i.bp = getelementptr inbounds nuw i8, ptr %.037, i64 4294967289
  store <4 x i8> %i.bo, ptr %i.bp, align 1, !tbaa !14
  %i.bq = load <4 x i8>, ptr %i.s, align 8, !tbaa !7
  %i.br = getelementptr inbounds nuw i8, ptr %.037, i64 4294967293
  store <4 x i8> %i.bq, ptr %i.br, align 1, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.d, %._crit_edge39
  %.130 = phi i1 [ %.02935, %._crit_edge39 ], [ %3, %bb.d ], [ %3, %.preheader.preheader ]
  %.1 = phi i32 [ %i.ai, %._crit_edge39 ], [ 0, %bb.d ], [ 0, %.preheader.preheader ] ; 2 uses
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !27

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.028.lcssa = phi i32 [ %i.b, %bb.a ], [ %.1, %.loopexit ]
  store i32 %.028.lcssa, ptr %i.a, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN7NCrypto5NSha18CContext5FinalEPh(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(100) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #1 align 2 !guid !30 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  %i.e = and i32 %i.d, 3                          ; 2 uses
  %i.f = lshr i32 %i.d, 2                         ; 2 uses
  %i.g = icmp eq i32 %i.e, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.i = zext nneg i32 %i.f to i64                ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i ; 2 uses
  br i1 %i.g, label %bb.b, label %._crit_edge33

._crit_edge33:                                    ; preds = %bb.a
  %.pre = load i32, ptr %i.j, align 4, !tbaa !7
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.j, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge33, %bb.b
  %i.k = phi i32 [ %.pre, %._crit_edge33 ], [ 0, %bb.b ]
  %i.l = shl nuw nsw i32 %i.e, 3
  %i.m = lshr exact i32 -2147483648, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.i
  %i.p = or i32 %i.k, %i.m
  store i32 %i.p, ptr %i.o, align 4, !tbaa !7
  %.02627 = add nuw nsw i32 %i.f, 1               ; 2 uses
  %.not28 = icmp eq i32 %.02627, 14
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.02629 = phi i32 [ %.026, %bb.e ], [ %.02627, %bb.c ]
  %i.q = and i32 %.02629, 15                      ; 3 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  tail call void @_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %i.n, ptr noundef nonnull align 8 dereferenceable(100) %0, i1 noundef zeroext false)
  %i.s = load i64, ptr %i.a, align 8, !tbaa !10
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.a, align 8, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.u = zext nneg i32 %i.q to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.u
  store i32 0, ptr %i.v, align 4, !tbaa !7
  %.026 = add nuw nsw i32 %i.q, 1                 ; 2 uses
  %.not = icmp eq i32 %.026, 14
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %i.w = zext i32 %i.d to i64
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = shl i64 %i.b, 9
  %i.z = add i64 %i.x, %i.y                       ; 2 uses
  %i.aa = lshr i64 %i.z, 32
  %i.ab = trunc nuw i64 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !7
  %i.ad = trunc i64 %i.z to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !7
  tail call void @_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %i.n, ptr noundef nonnull align 8 dereferenceable(100) %0, i1 noundef zeroext false)
  %i.af = load i32, ptr %0, align 8, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %i.af)
  store i32 %2, ptr %1, align 1, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %3 = tail call i32 @llvm.bswap.i32(i32 %i.ai)
  store i32 %3, ptr %i.ag, align 1, !tbaa !14
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 12
  %4 = tail call i32 @llvm.bswap.i32(i32 %i.al)
  store i32 %4, ptr %i.aj, align 1, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %5 = tail call i32 @llvm.bswap.i32(i32 %i.ao)
  store i32 %5, ptr %i.am, align 1, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !7
  %6 = tail call i32 @llvm.bswap.i32(i32 %i.ar)
  store i32 %6, ptr %i.ap, align 1, !tbaa !14
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 8, !tbaa !7
  store i32 -1009589776, ptr %i.aq, align 8, !tbaa !7
  store i64 0, ptr %i.a, align 8, !tbaa !10
  store i32 0, ptr %i.c, align 8, !tbaa !13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN7NCrypto5NSha110CContext326UpdateEPKjm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(100) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #1 align 2 !guid !32 {
bb.a:
  %.not3 = icmp eq i64 %2, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.pre5 = load i32, ptr %i.b, align 8, !tbaa !13
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.d = phi i32 [ %.pre5, %.lr.ph ], [ %i.n, %bb.d ] ; 2 uses
  %.in = phi i64 [ %2, %.lr.ph ], [ %i.e, %bb.d ]
  %.024 = phi ptr [ %1, %.lr.ph ], [ %i.f, %bb.d ] ; 2 uses
  %i.e = add i64 %.in, -1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.024, i64 4
  %i.g = load i32, ptr %.024, align 4, !tbaa !7
  %i.h = add i32 %i.d, 1                          ; 3 uses
  store i32 %i.h, ptr %i.b, align 8, !tbaa !13
  %i.i = zext i32 %i.d to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.i
  store i32 %i.g, ptr %i.j, align 4, !tbaa !7
  %i.k = icmp eq i32 %i.h, 16
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !13
  tail call void @_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %i.a, ptr noundef nonnull align 8 dereferenceable(100) %0, i1 noundef zeroext false)
  %i.l = load i64, ptr %i.c, align 8, !tbaa !10
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.c, align 8, !tbaa !10
  %.pre = load i32, ptr %i.b, align 8, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi i32 [ %.pre, %bb.c ], [ %i.h, %bb.b ]
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN7NCrypto5NSha110CContext325FinalEPj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(100) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #1 align 2 !guid !34 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.e
  store i32 -2147483648, ptr %i.g, align 4, !tbaa !7
  %.010 = add i32 %i.d, 1                         ; 2 uses
  %.not11 = icmp eq i32 %.010, 14
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.012 = phi i32 [ %.0, %bb.c ], [ %.010, %bb.a ]
  %i.h = and i32 %.012, 15                        ; 3 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(100) %0, i1 noundef zeroext false)
  %i.j = load i64, ptr %i.a, align 8, !tbaa !10
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.a, align 8, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.l = zext nneg i32 %i.h to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.l
  store i32 0, ptr %i.m, align 4, !tbaa !7
  %.0 = add nuw nsw i32 %i.h, 1                   ; 2 uses
  %.not = icmp eq i32 %.0, 14
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !33

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %i.n = shl i64 %i.b, 9
  %i.o = shl nuw nsw i64 %i.e, 5
  %i.p = add i64 %i.o, %i.n                       ; 2 uses
  %i.q = lshr i64 %i.p, 32
  %i.r = trunc nuw i64 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 %i.r, ptr %i.s, align 4, !tbaa !7
  %i.t = trunc i64 %i.p to i32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.t, ptr %i.u, align 8, !tbaa !7
  tail call void @_ZN7NCrypto5NSha112CContextBase14GetBlockDigestEPjS2_b(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.f, ptr noundef %1, i1 noundef zeroext false)
  store <4 x i32> <i32 1732584193, i32 -271733879, i32 -1732584194, i32 271733878>, ptr %0, align 8, !tbaa !7
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -1009589776, ptr %i.v, align 8, !tbaa !7
  store i64 0, ptr %i.a, align 8, !tbaa !10
  store i32 0, ptr %i.c, align 8, !tbaa !13
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"long long", !5, i64 0}
!9 = !{!"_ZTSN7NCrypto5NSha112CContextBaseE", !5, i64 0, !8, i64 24}
!10 = !{!9, !8, i64 24}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"_ZTSN7NCrypto5NSha113CContextBase2E", !9, i64 0, !6, i64 32, !5, i64 36}
!13 = !{!12, !6, i64 32}
!14 = !{!5, !5, i64 0}
!15 = !{i64 -408003588905552484}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = !{i64 2272432631417647191}
!20 = distinct !{!20, !23}
!21 = distinct !{!21, !11, !24}
!22 = !{i64 -2327498743533910878}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = distinct !{!25, !11}
!26 = !{i64 -2669415944036423949}
!27 = distinct !{!27, !11}
!28 = !{i64 -987383387609579797}
!29 = distinct !{!29, !11}
!30 = !{i64 4246024659948084540}
!31 = distinct !{!31, !11}
!32 = !{i64 6674459686267718848}
!33 = distinct !{!33, !11}
!34 = !{i64 -703392214278256516}
end_hunk_0
