Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/simdutf?download=true
inline.NumInlined: 2210
inline.NumDeleted: 453
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 167
begin_hunk_0_@_ZN7simdutf17trim_partial_utf8EPKcm:bb.a

bb.h:                                             ; preds = %bb.g
  %i.q = add i64 %1, -3                           ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp ugt i8 %i.s, -17
  %.26.i = select i1 %i.t, i64 %i.q, i64 %1
  br label %_ZN7simdutf6scalar12_GLOBAL__N_14utf817trim_partial_utf8EPKcm.exit

_ZN7simdutf6scalar12_GLOBAL__N_14utf817trim_partial_utf8EPKcm.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.0.i = phi i64 [ %1, %bb.b ], [ %i.i, %bb.f ], [ %.26.i, %bb.h ], [ %i.m, %bb.g ], [ %.25.i, %bb.e ], [ %..i, %bb.d ], [ 1, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZN7simdutf20trim_partial_utf16beEPKDsm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1618trim_partial_utf16ILNS_10endiannessE1EEEmPKDsm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr [2 x i8], ptr %0, i64 %1
  %i.c = getelementptr i8, ptr %i.b, i64 -2
  %i.d = load i16, ptr %i.c, align 2
  %i.e = and i16 %i.d, 252
  %i.f = icmp eq i16 %i.e, 216
  %.neg.i = sext i1 %i.f to i64
  %i.g = add i64 %1, %.neg.i
  br label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1618trim_partial_utf16ILNS_10endiannessE1EEEmPKDsm.exit

_ZN7simdutf6scalar12_GLOBAL__N_15utf1618trim_partial_utf16ILNS_10endiannessE1EEEmPKDsm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.g, %bb.b ], [ %1, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZN7simdutf20trim_partial_utf16leEPKDsm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1618trim_partial_utf16ILNS_10endiannessE0EEEmPKDsm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr [2 x i8], ptr %0, i64 %1
  %i.c = getelementptr i8, ptr %i.b, i64 -2
  %i.d = load i16, ptr %i.c, align 2
  %i.e = and i16 %i.d, -1024
  %i.f = icmp eq i16 %i.e, -10240
  %.neg.i = sext i1 %i.f to i64
  %i.g = add i64 %1, %.neg.i
  br label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1618trim_partial_utf16ILNS_10endiannessE0EEEmPKDsm.exit

_ZN7simdutf6scalar12_GLOBAL__N_15utf1618trim_partial_utf16ILNS_10endiannessE0EEEmPKDsm.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.g, %bb.b ], [ %1, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZN7simdutf18trim_partial_utf16EPKDsm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i64 %1, 2
  br i1 %i.a, label %_ZN7simdutf20trim_partial_utf16leEPKDsm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr [2 x i8], ptr %0, i64 %1
  %i.c = getelementptr i8, ptr %i.b, i64 -2
  %i.d = load i16, ptr %i.c, align 2
  %i.e = and i16 %i.d, -1024
  %i.f = icmp eq i16 %i.e, -10240
  %.neg.i.i = sext i1 %i.f to i64
  %i.g = add i64 %1, %.neg.i.i
  br label %_ZN7simdutf20trim_partial_utf16leEPKDsm.exit

_ZN7simdutf20trim_partial_utf16leEPKDsm.exit:     ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ %i.g, %bb.b ], [ %1, %bb.a ]
  ret i64 %.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 17) i32 @_ZNK7simdutf8fallback14implementation16detect_encodingsEPKcm(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp ugt i64 %2, 1
  br i1 %i.a, label %bb.b, label %_ZN7simdutf3BOM9check_bomEPKcm.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1                 ; 3 uses
  switch i8 %i.b, label %.critedge.i.i [
    i8 -1, label %bb.c
    i8 -2, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, -2
  br i1 %i.e, label %bb.d, label %.critedge.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = icmp ugt i64 %2, 3
  br i1 %i.f, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  br label %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread

bb.h:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.n = load i8, ptr %i.m, align 1
  %i.o = icmp eq i8 %i.n, -1
  br i1 %i.o, label %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.h, %bb.c, %bb.b
  %i.p = icmp ugt i64 %2, 3
  br i1 %i.p, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.critedge.i.i
  switch i8 %i.b, label %_ZN7simdutf3BOM9check_bomEPKcm.exit [
    i8 0, label %bb.j
    i8 -17, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.k, label %_ZN7simdutf3BOM9check_bomEPKcm.exit

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.u = load i8, ptr %i.t, align 1
  %i.v = icmp eq i8 %i.u, -2
  br i1 %i.v, label %bb.l, label %_ZN7simdutf3BOM9check_bomEPKcm.exit

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.x = load i8, ptr %i.w, align 1
  %i.y = icmp eq i8 %i.x, -1
  br i1 %i.y, label %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread, label %_ZN7simdutf3BOM9check_bomEPKcm.exit

bb.m:                                             ; preds = %.critedge.i.i
  %.not.i.i = icmp ne i64 %2, 2
  %i.z = icmp eq i8 %i.b, -17
  %or.cond.i.i = and i1 %.not.i.i, %i.z
  br i1 %or.cond.i.i, label %bb.n, label %_ZN7simdutf3BOM9check_bomEPKcm.exit

bb.n:                                             ; preds = %bb.m, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp eq i8 %i.ab, -69
  br i1 %i.ac, label %bb.o, label %_ZN7simdutf3BOM9check_bomEPKcm.exit

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = icmp eq i8 %i.ae, -65
  br i1 %i.af, label %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread, label %_ZN7simdutf3BOM9check_bomEPKcm.exit

_ZN7simdutf3BOM9check_bomEPKcm.exit:              ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.a
  %i.ag = tail call noundef zeroext i1 @_ZNK7simdutf8fallback14implementation13validate_utf8EPKcm(ptr nonnull align 8 poison, ptr noundef %1, i64 noundef %2) #47
  %spec.select = zext i1 %i.ag to i32             ; 4 uses
  %i.ah = and i64 %2, 1
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.p, label %_ZNK7simdutf8fallback14implementation16validate_utf16leEPKDsm.exit

bb.p:                                             ; preds = %_ZN7simdutf3BOM9check_bomEPKcm.exit
  %i.aj = lshr exact i64 %2, 1                    ; 2 uses
  %i.ak = icmp eq i64 %2, 0
  br i1 %i.ak, label %.loopexit30, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.p, %bb.s
  %.02236.i.i = phi i64 [ %.4.i.i, %bb.s ], [ 0, %bb.p ] ; 3 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02236.i.i
  %i.am = load i16, ptr %i.al, align 2            ; 2 uses
  %i.an = and i16 %i.am, -2048
  %i.ao = icmp eq i16 %i.an, -10240
  %i.ap = add nuw i64 %.02236.i.i, 1              ; 3 uses
  br i1 %i.ao, label %bb.q, label %bb.s

bb.q:                                             ; preds = %.lr.ph.i.i
  %.not.i.i21 = icmp ult i64 %i.ap, %i.aj
  %i.aq = and i16 %i.am, -9216
  %.not32.i.i = icmp eq i16 %i.aq, -10240
  %or.cond.i.i22 = and i1 %.not.i.i21, %.not32.i.i
  br i1 %or.cond.i.i22, label %bb.r, label %_ZNK7simdutf8fallback14implementation16validate_utf16leEPKDsm.exit

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ap
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = and i16 %i.as, -1024
  %.not34.i.i = icmp eq i16 %i.at, -9216
  %i.au = add i64 %.02236.i.i, 2
  br i1 %.not34.i.i, label %bb.s, label %_ZNK7simdutf8fallback14implementation16validate_utf16leEPKDsm.exit

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.i
  %.4.i.i = phi i64 [ %i.au, %bb.r ], [ %i.ap, %.lr.ph.i.i ] ; 2 uses
  %.not41.i.i = icmp ult i64 %.4.i.i, %i.aj
  br i1 %.not41.i.i, label %.lr.ph.i.i, label %.loopexit30, !llvm.loop !3

.loopexit30:                                      ; preds = %bb.s, %bb.p
  %i.av = or disjoint i32 %spec.select, 2
  br label %_ZNK7simdutf8fallback14implementation16validate_utf16leEPKDsm.exit

_ZNK7simdutf8fallback14implementation16validate_utf16leEPKDsm.exit: ; preds = %bb.r, %bb.q, %.loopexit30, %_ZN7simdutf3BOM9check_bomEPKcm.exit
  %.1 = phi i32 [ %spec.select, %_ZN7simdutf3BOM9check_bomEPKcm.exit ], [ %i.av, %.loopexit30 ], [ %spec.select, %bb.q ], [ %spec.select, %bb.r ] ; 3 uses
  %i.aw = and i64 %2, 3
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.t, label %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread

bb.t:                                             ; preds = %_ZNK7simdutf8fallback14implementation16validate_utf16leEPKDsm.exit
  %i.ay = lshr exact i64 %2, 2
  %i.az = icmp eq i64 %2, 0
  br i1 %i.az, label %.loopexit, label %.lr.ph.i.i23

bb.u:                                             ; preds = %.lr.ph.i.i23
  %i.ba = add nuw nsw i64 %.01115.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ba, %i.ay
  br i1 %exitcond.not.i.i, label %.loopexit, label %.lr.ph.i.i23, !llvm.loop !4

.lr.ph.i.i23:                                     ; preds = %bb.t, %bb.u
  %.01115.i.i = phi i64 [ %i.ba, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01115.i.i
  %i.bc = load i32, ptr %i.bb, align 4            ; 2 uses
  %i.bd = icmp ult i32 %i.bc, 1114112
  %i.be = and i32 %i.bc, 2095104
  %or.cond.i.i24 = icmp ne i32 %i.be, 55296
  %or.cond14.not.i.i = and i1 %i.bd, %or.cond.i.i24
  br i1 %or.cond14.not.i.i, label %bb.u, label %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread

.loopexit:                                        ; preds = %bb.u, %bb.t
  %i.bf = or i32 %.1, 8
  br label %_ZN7simdutf3BOM9check_bomEPKcm.exit.thread

_ZN7simdutf3BOM9check_bomEPKcm.exit.thread:       ; preds = %.lr.ph.i.i23, %bb.o, %bb.l, %bb.h, %bb.f, %bb.g, %.loopexit, %_ZNK7simdutf8fallback14implementation16validate_utf16leEPKDsm.exit
  %.017 = phi i32 [ 2, %bb.g ], [ %.1, %_ZNK7simdutf8fallback14implementation16validate_utf16leEPKDsm.exit ], [ %i.bf, %.loopexit ], [ 1, %bb.o ], [ 16, %bb.l ], [ 4, %bb.h ], [ 8, %bb.f ], [ %.1, %.lr.ph.i.i23 ]
  ret i32 %.017
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK7simdutf8fallback14implementation13validate_utf8EPKcm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %.not140.i = icmp eq i64 %2, 0
  br i1 %.not140.i, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf88validateEPKcm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.t
  %.081113.i = phi i64 [ %.5.i, %bb.t ], [ 0, %bb.a ] ; 3 uses
  %i.a = add i64 %.081113.i, 16                   ; 2 uses
  %.not.i = icmp ugt i64 %i.a, %2
  br i1 %.not.i, label %.preheader, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.081113.i ; 2 uses
  %.0.copyload18.i = load i64, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.0.copyload.i = load i64, ptr %i.c, align 1
  %i.d = or i64 %.0.copyload.i, %.0.copyload18.i
  %i.e = and i64 %i.d, -9187201950435737472
  %.not97.i = icmp eq i64 %i.e, 0
  br i1 %.not97.i, label %bb.t, label %.preheader

.preheader:                                       ; preds = %bb.b, %.lr.ph.i
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %.3.i = phi i64 [ %i.g, %bb.d ], [ %.081113.i, %.preheader ] ; 6 uses
  %.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 %.3.i
  %.0.i = load i8, ptr %.0.in.i, align 1          ; 2 uses
  %i.f = icmp sgt i8 %.0.i, -1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = add i64 %.3.i, 1                         ; 2 uses
  %i.h = icmp eq i64 %i.g, %2
  br i1 %i.h, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf88validateEPKcm.exit, label %bb.c, !llvm.loop !144

bb.e:                                             ; preds = %bb.c
  %.0.in.i.le = getelementptr inbounds nuw i8, ptr %1, i64 %.3.i ; 6 uses
  %i.i = zext i8 %.0.i to i32                     ; 6 uses
  %i.j = and i32 %i.i, 224
  %i.k = icmp eq i32 %i.j, 192
  br i1 %i.k, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.l = add i64 %.3.i, 2                         ; 2 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf88validateEPKcm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %.0.in.i.le, i64 1
  %i.o = load i8, ptr %i.n, align 1
  %.not103.i = icmp sgt i8 %i.o, -65
  %i.p = and i32 %i.i, 30
  %i.q = icmp eq i32 %i.p, 0
  %or.cond.i = or i1 %i.q, %.not103.i
  br i1 %or.cond.i, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf88validateEPKcm.exit, label %bb.t

bb.h:                                             ; preds = %bb.e
  %i.r = and i32 %i.i, 240
  %i.s = icmp eq i32 %i.r, 224
  br i1 %i.s, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.t = add i64 %.3.i, 3                         ; 2 uses
  %i.u = icmp ugt i64 %i.t, %2
  br i1 %i.u, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf88validateEPKcm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %.0.in.i.le, i64 1
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %i.y = and i32 %i.x, 192
  %.not101.i = icmp eq i32 %i.y, 128
  br i1 %.not101.i, label %bb.k, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf88validateEPKcm.exit

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %.0.in.i.le, i64 2
  %i.aa = load i8, ptr %i.z, align 1
  %.not102.i = icmp slt i8 %i.aa, -64
  br i1 %.not102.i, label %bb.l, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf88validateEPKcm.exit

bb.l:                                             ; preds = %bb.k
  %i.ab = shl nuw nsw i32 %i.i, 12
  %i.ac = and i32 %i.ab, 61440                    ; 2 uses
  %i.ad = shl nuw nsw i32 %i.x, 6
  %i.ae = and i32 %i.ad, 4032
  %i.af = or disjoint i32 %i.ae, %i.ac            ; 2 uses
  %i.ag = icmp samesign ult i32 %i.af, 2048
  br i1 %i.ag, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf88validateEPKcm.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = icmp samesign ugt i32 %i.af, 55295
  %i.ai = icmp samesign ult i32 %i.ac, 57344
  %or.cond5.i = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond5.i, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf88validateEPKcm.exit, label %bb.t

bb.n:                                             ; preds = %bb.h
  %i.aj = and i32 %i.i, 248
  %i.ak = icmp eq i32 %i.aj, 240
  br i1 %i.ak, label %bb.o, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf88validateEPKcm.exit

bb.o:                                             ; preds = %bb.n
  %i.al = add i64 %.3.i, 4                        ; 2 uses
  %i.am = icmp ugt i64 %i.al, %2
  br i1 %i.am, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf88validateEPKcm.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr i8, ptr %.0.in.i.le, i64 1
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = and i32 %i.ap, 192
  %.not98.i = icmp eq i32 %i.aq, 128
  br i1 %.not98.i, label %bb.q, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf88validateEPKcm.exit

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr i8, ptr %.0.in.i.le, i64 2
  %i.as = load i8, ptr %i.ar, align 1
  %.not99.i = icmp slt i8 %i.as, -64
  br i1 %.not99.i, label %bb.r, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf88validateEPKcm.exit

bb.r:                                             ; preds = %bb.q
  %i.at = getelementptr i8, ptr %.0.in.i.le, i64 3
  %i.au = load i8, ptr %i.at, align 1
  %.not100.i = icmp slt i8 %i.au, -64
  br i1 %.not100.i, label %bb.s, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf88validateEPKcm.exit

bb.s:                                             ; preds = %bb.r
  %i.av = shl nuw nsw i32 %i.i, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.ap, 12
  %i.ay = and i32 %i.ax, 196608
  %i.az = add nsw i32 %i.aw, -1114112
  %i.ba = add nsw i32 %i.az, %i.ay
  %or.cond7.i = icmp ult i32 %i.ba, -1048576
  br i1 %or.cond7.i, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf88validateEPKcm.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.m, %bb.g, %bb.b
  %.5.i = phi i64 [ %i.a, %bb.b ], [ %i.l, %bb.g ], [ %i.t, %bb.m ], [ %i.al, %bb.s ] ; 2 uses
  %i.bb = icmp ult i64 %.5.i, %2
  br i1 %i.bb, label %.lr.ph.i, label %_ZN7simdutf6scalar12_GLOBAL__N_14utf88validateEPKcm.exit

_ZN7simdutf6scalar12_GLOBAL__N_14utf88validateEPKcm.exit: ; preds = %bb.f, %bb.g, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.d, %bb.a
  %.387.i = phi i1 [ true, %bb.d ], [ true, %bb.a ], [ true, %bb.t ], [ false, %bb.r ], [ false, %bb.q ], [ false, %bb.p ], [ false, %bb.o ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.n ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.s ], [ false, %bb.m ]
  ret i1 %.387.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK7simdutf8fallback14implementation16validate_utf16leEPKDsm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.02236.i = phi i64 [ %.4.i, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02236.i
  %i.c = load i16, ptr %i.b, align 2              ; 2 uses
  %i.d = and i16 %i.c, -2048
  %i.e = icmp eq i16 %i.d, -10240
  %i.f = add nuw i64 %.02236.i, 1                 ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %.not.i = icmp ult i64 %i.f, %2
  %i.g = and i16 %i.c, -9216
  %.not32.i = icmp eq i16 %i.g, -10240
  %or.cond.i = and i1 %.not.i, %.not32.i
  br i1 %or.cond.i, label %bb.c, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.f
  %i.i = load i16, ptr %i.h, align 2
  %i.j = and i16 %i.i, -1024
  %.not34.i = icmp eq i16 %i.j, -9216
  %i.k = add i64 %.02236.i, 2
  br i1 %.not34.i, label %bb.d, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.4.i = phi i64 [ %i.k, %bb.c ], [ %i.f, %.lr.ph.i ] ; 2 uses
  %.not41.i = icmp ult i64 %.4.i, %2
  br i1 %.not41.i, label %.lr.ph.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit, !llvm.loop !3

_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.lcssa.i = phi i1 [ true, %bb.a ], [ true, %bb.d ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK7simdutf8fallback14implementation14validate_utf32EPKDim(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf328validateEPKDim.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.01115.i = phi i64 [ %i.f, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01115.i
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp ult i32 %i.c, 1114112
  %i.e = and i32 %i.c, 2095104
  %or.cond.i = icmp ne i32 %i.e, 55296
  %or.cond14.not.i = and i1 %i.d, %or.cond.i      ; 2 uses
  %i.f = add nuw i64 %.01115.i, 1                 ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.f, %2
  %or.cond.not = select i1 %or.cond14.not.i, i1 %exitcond.not.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf328validateEPKDim.exit, !llvm.loop !4

_ZN7simdutf6scalar12_GLOBAL__N_15utf328validateEPKDim.exit: ; preds = %.lr.ph.i, %bb.a
  %.lcssa.i = phi i1 [ true, %bb.a ], [ %or.cond14.not.i, %.lr.ph.i ]
  ret i1 %.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i32, i64 } @_ZNK7simdutf8fallback14implementation25validate_utf8_with_errorsEPKcm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_14utf820validate_with_errorsEPKcm(ptr noundef %1, i64 noundef %2) #47
  ret { i32, i64 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_14utf820validate_with_errorsEPKcm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #6 {
bb.a:
  %.not171 = icmp eq i64 %1, 0
  br i1 %.not171, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.w
  %.097127 = phi i64 [ %.5, %bb.w ], [ 0, %bb.a ] ; 3 uses
  %i.a = add i64 %.097127, 16                     ; 2 uses
  %.not = icmp ugt i64 %i.a, %1
  br i1 %.not, label %.preheader, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.097127 ; 2 uses
  %.0.copyload17 = load i64, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.0.copyload = load i64, ptr %i.c, align 1
  %i.d = or i64 %.0.copyload, %.0.copyload17
  %i.e = and i64 %i.d, -9187201950435737472
  %.not111 = icmp eq i64 %i.e, 0
  br i1 %.not111, label %bb.w, label %.preheader

.preheader:                                       ; preds = %bb.b, %.lr.ph
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %.3 = phi i64 [ %i.g, %bb.d ], [ %.097127, %.preheader ] ; 21 uses
  %.0.in = getelementptr inbounds nuw i8, ptr %0, i64 %.3
  %.0 = load i8, ptr %.0.in, align 1              ; 2 uses
  %i.f = icmp sgt i8 %.0, -1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = add i64 %.3, 1                           ; 2 uses
  %i.h = icmp eq i64 %i.g, %1
  br i1 %i.h, label %.thread, label %bb.c, !llvm.loop !145

bb.e:                                             ; preds = %bb.c
  %.0.in.le = getelementptr inbounds nuw i8, ptr %0, i64 %.3 ; 6 uses
  %i.i = zext i8 %.0 to i32                       ; 7 uses
  %i.j = and i32 %i.i, 224
  %i.k = icmp eq i32 %i.j, 192
  br i1 %i.k, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.l = add i64 %.3, 2                           ; 2 uses
  %i.m = icmp ugt i64 %i.l, %1
  br i1 %i.m, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %.0.in.le, i64 1
  %i.o = load i8, ptr %i.n, align 1
  %.not117 = icmp slt i8 %i.o, -64
  br i1 %.not117, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.p = and i32 %i.i, 30
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.thread, label %bb.w

bb.i:                                             ; preds = %bb.e
  %i.r = and i32 %i.i, 240
  %i.s = icmp eq i32 %i.r, 224
  br i1 %i.s, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.t = add i64 %.3, 3                           ; 2 uses
  %i.u = icmp ugt i64 %i.t, %1
  br i1 %i.u, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr i8, ptr %.0.in.le, i64 1
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %i.y = and i32 %i.x, 192
  %.not115 = icmp eq i32 %i.y, 128
  br i1 %.not115, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr i8, ptr %.0.in.le, i64 2
  %i.aa = load i8, ptr %i.z, align 1
  %.not116 = icmp slt i8 %i.aa, -64
  br i1 %.not116, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.ab = shl nuw nsw i32 %i.i, 12
  %i.ac = and i32 %i.ab, 61440                    ; 2 uses
  %i.ad = shl nuw nsw i32 %i.x, 6
  %i.ae = and i32 %i.ad, 4032
  %i.af = or disjoint i32 %i.ae, %i.ac            ; 2 uses
  %i.ag = icmp samesign ult i32 %i.af, 2048
  br i1 %i.ag, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = icmp samesign ugt i32 %i.af, 55295
  %i.ai = icmp samesign ult i32 %i.ac, 57344
  %or.cond5 = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond5, label %.thread, label %bb.w

bb.o:                                             ; preds = %bb.i
  %i.aj = and i32 %i.i, 248
  %i.ak = icmp eq i32 %i.aj, 240
  br i1 %i.ak, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.al = add i64 %.3, 4                          ; 2 uses
  %i.am = icmp ugt i64 %i.al, %1
  br i1 %i.am, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr i8, ptr %.0.in.le, i64 1
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i32                    ; 2 uses
  %i.aq = and i32 %i.ap, 192
  %.not112 = icmp eq i32 %i.aq, 128
  br i1 %.not112, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.ar = getelementptr i8, ptr %.0.in.le, i64 2
  %i.as = load i8, ptr %i.ar, align 1
  %.not113 = icmp slt i8 %i.as, -64
  br i1 %.not113, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  %i.at = getelementptr i8, ptr %.0.in.le, i64 3
  %i.au = load i8, ptr %i.at, align 1
  %.not114 = icmp slt i8 %i.au, -64
  br i1 %.not114, label %bb.t, label %.thread

bb.t:                                             ; preds = %bb.s
  %i.av = shl nuw nsw i32 %i.i, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.ap, 12
  %i.ay = and i32 %i.ax, 258048
  %i.az = or disjoint i32 %i.ay, %i.aw            ; 2 uses
  %i.ba = icmp samesign ult i32 %i.az, 65536
  br i1 %i.ba, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bb = icmp samesign ugt i32 %i.az, 1114111
  br i1 %i.bb, label %.thread, label %bb.w

bb.v:                                             ; preds = %bb.o
  %i.bc = and i32 %i.i, 192
  %i.bd = icmp eq i32 %i.bc, 128
  %spec.select = select i1 %i.bd, i32 3, i32 1
  br label %.thread

bb.w:                                             ; preds = %bb.n, %bb.u, %bb.h, %bb.b
  %.5 = phi i64 [ %i.a, %bb.b ], [ %i.al, %bb.u ], [ %i.l, %bb.h ], [ %i.t, %bb.n ] ; 2 uses
  %i.be = icmp ult i64 %.5, %1
  br i1 %i.be, label %.lr.ph, label %.thread

.thread:                                          ; preds = %bb.w, %bb.f, %bb.g, %bb.j, %bb.k, %bb.l, %bb.m, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.h, %bb.n, %bb.u, %bb.d, %bb.a, %bb.v
  %.sroa.19.2 = phi i64 [ %.3, %bb.v ], [ 0, %bb.a ], [ %1, %bb.d ], [ %.3, %bb.f ], [ %.3, %bb.k ], [ %.3, %bb.t ], [ %.3, %bb.j ], [ %.3, %bb.g ], [ %.3, %bb.l ], [ %.3, %bb.r ], [ %.3, %bb.h ], [ %.3, %bb.q ], [ %.3, %bb.p ], [ %.3, %bb.m ], [ %.3, %bb.s ], [ %.3, %bb.n ], [ %1, %bb.w ], [ %.3, %bb.u ]
  %.sroa.0.2 = phi i32 [ %spec.select, %bb.v ], [ 0, %bb.a ], [ 0, %bb.d ], [ 2, %bb.f ], [ 2, %bb.k ], [ 4, %bb.t ], [ 2, %bb.j ], [ 2, %bb.g ], [ 2, %bb.l ], [ 2, %bb.r ], [ 4, %bb.h ], [ 2, %bb.q ], [ 2, %bb.p ], [ 4, %bb.m ], [ 2, %bb.s ], [ 6, %bb.n ], [ 0, %bb.w ], [ 5, %bb.u ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.19.2, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK7simdutf8fallback14implementation14validate_asciiEPKcm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.018.i = phi i64 [ 0, %bb.a ], [ %i.a, %bb.c ] ; 4 uses
  %i.a = add i64 %.018.i, 16                      ; 2 uses
  %.not.i = icmp ugt i64 %i.a, %2
  br i1 %.not.i, label %.preheader.i, label %bb.c

.preheader.i:                                     ; preds = %bb.b
  %i.b = icmp ult i64 %.018.i, %2
  br i1 %i.b, label %.lr.ph.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15ascii8validateEPKcm.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.018.i ; 2 uses
  %.0.copyload3.i = load i64, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.0.copyload.i = load i64, ptr %i.d, align 1
  %i.e = or i64 %.0.copyload.i, %.0.copyload3.i
  %i.f = and i64 %i.e, -9187201950435737472
  %.not22.i = icmp eq i64 %i.f, 0
  br i1 %.not22.i, label %bb.b, label %_ZN7simdutf6scalar12_GLOBAL__N_15ascii8validateEPKcm.exit, !llvm.loop !146

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.125.i = phi i64 [ %i.j, %.lr.ph.i ], [ %.018.i, %.preheader.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.125.i
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp sgt i8 %i.h, -1                     ; 2 uses
  %i.j = add i64 %.125.i, 1                       ; 2 uses
  %exitcond.not.i = icmp ne i64 %i.j, %2
  %or.cond.not = and i1 %exitcond.not.i, %i.i
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15ascii8validateEPKcm.exit, !llvm.loop !147

_ZN7simdutf6scalar12_GLOBAL__N_15ascii8validateEPKcm.exit: ; preds = %bb.c, %.lr.ph.i, %.preheader.i
  %.2.i = phi i1 [ true, %.preheader.i ], [ %i.i, %.lr.ph.i ], [ false, %bb.c ]
  ret i1 %.2.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i32, i64 } @_ZNK7simdutf8fallback14implementation26validate_ascii_with_errorsEPKcm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %.not33.i = icmp ult i64 %2, 16
  br i1 %.not33.i, label %.preheader.i, label %.lr.ph35.i

.preheader.i:                                     ; preds = %.loopexit.i, %bb.a
  %.025.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.k, %.loopexit.i ] ; 3 uses
  %i.a = icmp ult i64 %.025.lcssa.i, %2
  br i1 %i.a, label %.lr.ph38.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit

.lr.ph35.i:                                       ; preds = %bb.a, %.loopexit.i
  %.02534.i = phi i64 [ %i.k, %.loopexit.i ], [ 0, %bb.a ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.02534.i ; 2 uses
  %.0.copyload3.i = load i64, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.0.copyload.i = load i64, ptr %i.c, align 1
  %i.d = or i64 %.0.copyload.i, %.0.copyload3.i
  %i.e = and i64 %i.d, -9187201950435737472
  %.not27.i = icmp ne i64 %i.e, 0
  %i.f = icmp ult i64 %.02534.i, %2
  %or.cond.i = and i1 %i.f, %.not27.i
  br i1 %or.cond.i, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.lr.ph35.i, %bb.b
  %.132.i = phi i64 [ %i.j, %bb.b ], [ %.02534.i, %.lr.ph35.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.132.i
  %i.h = load i8, ptr %i.g, align 1
  %i.i = icmp slt i8 %i.h, 0
  br i1 %i.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = add i64 %.132.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.j, %2
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !5

.loopexit.i:                                      ; preds = %bb.b, %.lr.ph35.i
  %.3.i = phi i64 [ %.02534.i, %.lr.ph35.i ], [ %2, %bb.b ] ; 2 uses
  %i.k = add i64 %.3.i, 16                        ; 2 uses
  %i.l = add i64 %.3.i, 32
  %.not.i = icmp ugt i64 %i.l, %2
  br i1 %.not.i, label %.preheader.i, label %.lr.ph35.i, !llvm.loop !6

.lr.ph38.i:                                       ; preds = %.preheader.i, %bb.c
  %.437.i = phi i64 [ %i.p, %bb.c ], [ %.025.lcssa.i, %.preheader.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.437.i
  %i.n = load i8, ptr %i.m, align 1
  %i.o = icmp slt i8 %i.n, 0
  br i1 %i.o, label %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph38.i
  %i.p = add i64 %.437.i, 1                       ; 2 uses
  %exitcond47.not.i = icmp eq i64 %i.p, %2
  br i1 %exitcond47.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit, label %.lr.ph38.i, !llvm.loop !7

_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit: ; preds = %.lr.ph.i, %.lr.ph38.i, %bb.c, %.preheader.i
  %.sroa.4.0.i = phi i64 [ %2, %bb.c ], [ %.025.lcssa.i, %.preheader.i ], [ %.437.i, %.lr.ph38.i ], [ %.132.i, %.lr.ph.i ]
  %.sroa.0.0.i = phi i32 [ 0, %bb.c ], [ 0, %.preheader.i ], [ 5, %.lr.ph38.i ], [ 5, %.lr.ph.i ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.4.0.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK7simdutf8fallback14implementation16validate_utf16beEPKDsm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.02236.i = phi i64 [ %.4.i, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02236.i
  %i.c = load i16, ptr %i.b, align 2
  %i.d = tail call noundef i16 @llvm.bswap.i16(i16 %i.c) ; 2 uses
  %i.e = and i16 %i.d, -2048
  %i.f = icmp eq i16 %i.e, -10240
  %i.g = add nuw i64 %.02236.i, 1                 ; 3 uses
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %.not.i = icmp ult i64 %i.g, %2
  %i.h = and i16 %i.d, -9216
  %.not32.i = icmp eq i16 %i.h, -10240
  %or.cond.i = and i1 %.not.i, %.not32.i
  br i1 %or.cond.i, label %bb.c, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.g
  %i.j = load i16, ptr %i.i, align 2
  %i.k = and i16 %i.j, 252
  %.not34.i = icmp eq i16 %i.k, 220
  %i.l = add i64 %.02236.i, 2
  br i1 %.not34.i, label %bb.d, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.4.i = phi i64 [ %i.l, %bb.c ], [ %i.g, %.lr.ph.i ] ; 2 uses
  %.not41.i = icmp ult i64 %.4.i, %2
  br i1 %.not41.i, label %.lr.ph.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit, !llvm.loop !8

_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.lcssa.i = phi i1 [ true, %bb.a ], [ true, %bb.d ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i32, i64 } @_ZNK7simdutf8fallback14implementation28validate_utf16le_with_errorsEPKDsm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %.not45.i = icmp eq i64 %2, 0
  br i1 %.not45.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.02537.i = phi i64 [ %.4.i, %bb.d ], [ 0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02537.i
  %i.b = load i16, ptr %i.a, align 2              ; 2 uses
  %i.c = and i16 %i.b, -2048
  %i.d = icmp eq i16 %i.c, -10240
  %i.e = add nuw i64 %.02537.i, 1                 ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %.not.i = icmp ult i64 %i.e, %2
  %i.f = and i16 %i.b, -9216
  %.not30.i = icmp eq i16 %i.f, -10240
  %or.cond.i = and i1 %.not.i, %.not30.i
  br i1 %or.cond.i, label %bb.c, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.e
  %i.h = load i16, ptr %i.g, align 2
  %i.i = and i16 %i.h, -1024
  %.not32.i = icmp eq i16 %i.i, -9216
  br i1 %.not32.i, label %.thread.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit

.thread.i:                                        ; preds = %bb.c
  %i.j = add i64 %.02537.i, 2
  br label %bb.d

bb.d:                                             ; preds = %.thread.i, %.lr.ph.i
  %.4.i = phi i64 [ %i.j, %.thread.i ], [ %i.e, %.lr.ph.i ] ; 3 uses
  %i.k = icmp ult i64 %.4.i, %2
  br i1 %i.k, label %.lr.ph.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit, !llvm.loop !9

_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.025.lcssa.i = phi i64 [ 0, %bb.a ], [ %.02537.i, %bb.b ], [ %.02537.i, %bb.c ], [ %.4.i, %bb.d ]
  %.sroa.0.3.i = phi i32 [ 0, %bb.a ], [ 6, %bb.b ], [ 6, %bb.c ], [ 0, %bb.d ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.0.3.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.025.lcssa.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i32, i64 } @_ZNK7simdutf8fallback14implementation28validate_utf16be_with_errorsEPKDsm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %.not45.i = icmp eq i64 %2, 0
  br i1 %.not45.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.d
  %.02537.i = phi i64 [ %.4.i, %bb.d ], [ 0, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.02537.i
  %i.b = load i16, ptr %i.a, align 2
  %i.c = tail call noundef i16 @llvm.bswap.i16(i16 %i.b) ; 2 uses
  %i.d = and i16 %i.c, -2048
  %i.e = icmp eq i16 %i.d, -10240
  %i.f = add nuw i64 %.02537.i, 1                 ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %.not.i = icmp ult i64 %i.f, %2
  %i.g = and i16 %i.c, -9216
  %.not30.i = icmp eq i16 %i.g, -10240
  %or.cond.i = and i1 %.not.i, %.not30.i
  br i1 %or.cond.i, label %bb.c, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.f
  %i.i = load i16, ptr %i.h, align 2
  %i.j = and i16 %i.i, 252
  %.not32.i = icmp eq i16 %i.j, 220
  br i1 %.not32.i, label %.thread.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit

.thread.i:                                        ; preds = %bb.c
  %i.k = add i64 %.02537.i, 2
  br label %bb.d

bb.d:                                             ; preds = %.thread.i, %.lr.ph.i
  %.4.i = phi i64 [ %i.k, %.thread.i ], [ %i.f, %.lr.ph.i ] ; 3 uses
  %i.l = icmp ult i64 %.4.i, %2
  br i1 %i.l, label %.lr.ph.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit, !llvm.loop !10

_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.025.lcssa.i = phi i64 [ 0, %bb.a ], [ %.02537.i, %bb.b ], [ %.02537.i, %bb.c ], [ %.4.i, %bb.d ]
  %.sroa.0.3.i = phi i32 [ 0, %bb.a ], [ 6, %bb.b ], [ 6, %bb.c ], [ 0, %bb.d ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.0.3.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.025.lcssa.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK7simdutf8fallback14implementation22to_well_formed_utf16leEPKDsmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #7 align 2 {
bb.a:
  %.not33.i = icmp eq i64 %2, 0
  br i1 %.not33.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620to_well_formed_utf16ILNS_10endiannessE0EEEvPKDsmPDs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %.031.i = phi i64 [ %i.j, %bb.e ], [ 0, %bb.a ] ; 4 uses
  %.02930.i = phi i1 [ %i.d, %bb.e ], [ false, %bb.a ]
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.031.i ; 2 uses
  %i.b = load i16, ptr %i.a, align 2
  %i.c = and i16 %i.b, -1024                      ; 2 uses
  %i.d = icmp eq i16 %i.c, -10240                 ; 2 uses
  %i.e = icmp eq i16 %i.c, -9216                  ; 2 uses
  %.not.i = xor i1 %.02930.i, true                ; 2 uses
  %or.cond.i = or i1 %i.e, %.not.i
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = getelementptr [2 x i8], ptr %3, i64 %.031.i
  %i.g = getelementptr i8, ptr %i.f, i64 -2
  store i16 -3, ptr %i.g, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %or.cond4.i = and i1 %i.e, %.not.i
  br i1 %or.cond4.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i16, ptr %i.a, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink.i = phi i16 [ %i.h, %bb.d ], [ -3, %bb.c ]
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.031.i
  store i16 %.sink.i, ptr %i.i, align 2
  %i.j = add nuw i64 %.031.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.j, %2
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !148

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.d, label %bb.f, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620to_well_formed_utf16ILNS_10endiannessE0EEEvPKDsmPDs.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.k = getelementptr [2 x i8], ptr %3, i64 %2
  %i.l = getelementptr i8, ptr %i.k, i64 -2
  store i16 -3, ptr %i.l, align 2
  br label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620to_well_formed_utf16ILNS_10endiannessE0EEEvPKDsmPDs.exit

_ZN7simdutf6scalar12_GLOBAL__N_15utf1620to_well_formed_utf16ILNS_10endiannessE0EEEvPKDsmPDs.exit: ; preds = %bb.a, %._crit_edge.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK7simdutf8fallback14implementation22to_well_formed_utf16beEPKDsmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #7 align 2 {
bb.a:
  %.not33.i = icmp eq i64 %2, 0
  br i1 %.not33.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620to_well_formed_utf16ILNS_10endiannessE1EEEvPKDsmPDs.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.e
  %.031.i = phi i64 [ %i.j, %bb.e ], [ 0, %bb.a ] ; 4 uses
  %.02930.i = phi i1 [ %i.d, %bb.e ], [ false, %bb.a ]
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.031.i ; 2 uses
  %i.b = load i16, ptr %i.a, align 2
  %i.c = and i16 %i.b, 252                        ; 2 uses
  %i.d = icmp eq i16 %i.c, 216                    ; 2 uses
  %i.e = icmp eq i16 %i.c, 220                    ; 2 uses
  %.not.i = xor i1 %.02930.i, true                ; 2 uses
  %or.cond.i = or i1 %i.e, %.not.i
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.f = getelementptr [2 x i8], ptr %3, i64 %.031.i
  %i.g = getelementptr i8, ptr %i.f, i64 -2
  store i16 -513, ptr %i.g, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %or.cond4.i = and i1 %i.e, %.not.i
  br i1 %or.cond4.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i16, ptr %i.a, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink.i = phi i16 [ %i.h, %bb.d ], [ -513, %bb.c ]
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.031.i
  store i16 %.sink.i, ptr %i.i, align 2
  %i.j = add nuw i64 %.031.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.j, %2
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !149

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.d, label %bb.f, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620to_well_formed_utf16ILNS_10endiannessE1EEEvPKDsmPDs.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.k = getelementptr [2 x i8], ptr %3, i64 %2
  %i.l = getelementptr i8, ptr %i.k, i64 -2
  store i16 -513, ptr %i.l, align 2
  br label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620to_well_formed_utf16ILNS_10endiannessE1EEEvPKDsmPDs.exit

_ZN7simdutf6scalar12_GLOBAL__N_15utf1620to_well_formed_utf16ILNS_10endiannessE1EEEvPKDsmPDs.exit: ; preds = %bb.a, %._crit_edge.i, %bb.f
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i32, i64 } @_ZNK7simdutf8fallback14implementation26validate_utf32_with_errorsEPKDim(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3220validate_with_errorsEPKDim.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.01315.i = phi i64 [ %i.e, %bb.c ], [ 0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01315.i
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp ugt i32 %i.b, 1114111
  br i1 %i.c, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3220validate_with_errorsEPKDim.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.d = and i32 %i.b, 2095104
  %or.cond.i = icmp eq i32 %i.d, 55296
  br i1 %or.cond.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3220validate_with_errorsEPKDim.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i64 %.01315.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.e, %2
  br i1 %exitcond.not.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf3220validate_with_errorsEPKDim.exit, label %.lr.ph.i, !llvm.loop !11

_ZN7simdutf6scalar12_GLOBAL__N_15utf3220validate_with_errorsEPKDim.exit: ; preds = %.lr.ph.i, %bb.b, %bb.c, %bb.a
  %.013.lcssa.i = phi i64 [ 0, %bb.a ], [ %.01315.i, %.lr.ph.i ], [ %.01315.i, %bb.b ], [ %2, %bb.c ]
  %.sroa.0.0.i = phi i32 [ 0, %bb.a ], [ 5, %.lr.ph.i ], [ 6, %bb.b ], [ 0, %bb.c ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.0.0.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.013.lcssa.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK7simdutf8fallback14implementation22convert_latin1_to_utf8EPKcmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #7 align 2 {
bb.a:
  %.not54.i = icmp eq i64 %2, 0
  br i1 %.not54.i, label %_ZN7simdutf6scalar12_GLOBAL__N_114latin1_to_utf87convertEPKcmPc.exit, label %.lr.ph52.i

.lr.ph52.i:                                       ; preds = %bb.a, %.backedge.i
  %.03651.i = phi i64 [ %.036.be.i, %.backedge.i ], [ 0, %bb.a ] ; 7 uses
  %.03750.i = phi i64 [ %.037.be.i, %.backedge.i ], [ 0, %bb.a ] ; 5 uses
  %i.a = add i64 %.03750.i, 16                    ; 2 uses
  %.not.i = icmp ugt i64 %i.a, %2
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 %.03750.i ; 17 uses
  br i1 %.not.i, label %.lr.ph52..thread_crit_edge.i, label %bb.b

.lr.ph52..thread_crit_edge.i:                     ; preds = %.lr.ph52.i
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1
  br label %.thread.i

bb.b:                                             ; preds = %.lr.ph52.i
  %.0.copyload8.i = load i64, ptr %.phi.trans.insert.i, align 1 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 8 ; 2 uses
  %.0.copyload.i = load i64, ptr %i.b, align 1
  %i.c = or i64 %.0.copyload.i, %.0.copyload8.i
  %i.d = and i64 %i.c, -9187201950435737472
  %i.e = icmp eq i64 %i.d, 0
  %i.f = trunc i64 %.0.copyload8.i to i8          ; 2 uses
  br i1 %i.e, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %bb.b
  %i.g = icmp ult i64 %.03750.i, -16
  br i1 %i.g, label %.lr.ph.preheader.i, label %.backedge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %.03651.i ; 16 uses
  store i8 %i.f, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = getelementptr i8, ptr %i.h, i64 1
  store i8 %i.j, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 2
  %i.m = load i8, ptr %i.l, align 1
  %i.n = getelementptr i8, ptr %i.h, i64 2
  store i8 %i.m, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 3
  %i.p = load i8, ptr %i.o, align 1
  %i.q = getelementptr i8, ptr %i.h, i64 3
  store i8 %i.p, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 4
end_hunk_0
begin_hunk_1_@_ZNK7simdutf8fallback14implementation23convert_latin1_to_utf32EPKcmPDi:bb.a
  %.011.i.unr = phi i64 [ %.011.i.ph, %.lr.ph.i.preheader5 ], [ %i.o, %.lr.ph.i.prol ]
  %.0910.i.unr = phi ptr [ %.0910.i.ph, %.lr.ph.i.preheader5 ], [ %i.n, %.lr.ph.i.prol ]
  %i.p = sub i64 %.011.i.ph, %2
  %i.q = icmp ugt i64 %i.p, -8
  br i1 %i.q, label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.011.i = phi i64 [ %i.be, %.lr.ph.i ], [ %.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.0910.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %.0910.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.011.i
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %.0910.i, i64 4
  store i32 %i.t, ptr %.0910.i, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %.011.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %.0910.i, i64 8
  store i32 %i.y, ptr %i.u, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.011.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  %i.ac = load i8, ptr %i.ab, align 1
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i, i64 12
  store i32 %i.ad, ptr %i.z, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %.011.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i, i64 16
  store i32 %i.ai, ptr %i.ae, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %.011.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i8, ptr %i.al, align 1
  %i.an = zext i8 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i, i64 20
  store i32 %i.an, ptr %i.aj, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %.011.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 5
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i, i64 24
  store i32 %i.as, ptr %i.ao, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %.011.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 6
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = zext i8 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i, i64 28
  store i32 %i.ax, ptr %i.at, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %.011.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 7
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i, i64 32 ; 2 uses
  store i32 %i.bc, ptr %i.ay, align 4
  %i.be = add nuw i64 %.011.i, 8                  ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %i.be, %2
  br i1 %exitcond.not.i.7, label %_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit, label %.lr.ph.i, !llvm.loop !173

_ZN7simdutf6scalar12_GLOBAL__N_115latin1_to_utf327convertEPKcmPDi.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.09.lcssa.i = phi ptr [ %3, %bb.a ], [ %i.c, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.bd, %.lr.ph.i ]
  %i.bf = ptrtoint ptr %.09.lcssa.i to i64
  %i.bg = ptrtoint ptr %3 to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 2
  ret i64 %i.bi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK7simdutf8fallback14implementation22convert_utf8_to_latin1EPKcmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #7 align 2 {
bb.a:
  %.not81.i = icmp eq i64 %2, 0
  br i1 %.not81.i, label %._crit_edge.i, label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %bb.a, %.backedge.i
  %.04778.i = phi i64 [ %.047.be.i, %.backedge.i ], [ 0, %bb.a ] ; 6 uses
  %.05077.i = phi ptr [ %.050.be.i, %.backedge.i ], [ %3, %bb.a ] ; 20 uses
  %i.a = add i64 %.04778.i, 16                    ; 2 uses
  %.not.i = icmp ugt i64 %i.a, %2
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 %.04778.i ; 17 uses
  br i1 %.not.i, label %.lr.ph79..thread_crit_edge.i, label %bb.b

.lr.ph79..thread_crit_edge.i:                     ; preds = %.lr.ph79.i
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1
  br label %.thread.i

bb.b:                                             ; preds = %.lr.ph79.i
  %.0.copyload15.i = load i64, ptr %.phi.trans.insert.i, align 1 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 8 ; 2 uses
  %.0.copyload.i = load i64, ptr %i.b, align 1
  %i.c = or i64 %.0.copyload.i, %.0.copyload15.i
  %i.d = and i64 %i.c, -9187201950435737472
  %i.e = icmp eq i64 %i.d, 0
  %i.f = trunc i64 %.0.copyload15.i to i8         ; 2 uses
  br i1 %i.e, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %bb.b
  %i.g = icmp ult i64 %.04778.i, -16
  br i1 %i.g, label %.lr.ph.preheader.i, label %.backedge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05077.i, i64 1
  store i8 %i.f, ptr %.05077.i, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.05077.i, i64 2
  store i8 %i.j, ptr %i.h, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 2
  %i.m = load i8, ptr %i.l, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.05077.i, i64 3
  store i8 %i.m, ptr %i.k, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 3
  %i.p = load i8, ptr %i.o, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.05077.i, i64 4
  store i8 %i.p, ptr %i.n, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 4
  %i.s = load i8, ptr %i.r, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %.05077.i, i64 5
  store i8 %i.s, ptr %i.q, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 5
  %i.v = load i8, ptr %i.u, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %.05077.i, i64 6
  store i8 %i.v, ptr %i.t, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 6
  %i.y = load i8, ptr %i.x, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %.05077.i, i64 7
  store i8 %i.y, ptr %i.w, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 7
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.05077.i, i64 8
  store i8 %i.ab, ptr %i.z, align 1
  %i.ad = load i8, ptr %i.b, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.05077.i, i64 9
  store i8 %i.ad, ptr %i.ac, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 9
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.05077.i, i64 10
  store i8 %i.ag, ptr %i.ae, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 10
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.05077.i, i64 11
  store i8 %i.aj, ptr %i.ah, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 11
  %i.am = load i8, ptr %i.al, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.05077.i, i64 12
  store i8 %i.am, ptr %i.ak, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 12
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.05077.i, i64 13
  store i8 %i.ap, ptr %i.an, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 13
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.05077.i, i64 14
  store i8 %i.as, ptr %i.aq, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 14
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.05077.i, i64 15
  store i8 %i.av, ptr %i.at, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 15
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.05077.i, i64 16
  store i8 %i.ay, ptr %i.aw, align 1
  br label %.backedge.i

.thread.i:                                        ; preds = %bb.b, %.lr.ph79..thread_crit_edge.i
  %i.ba = phi i8 [ %.pre.i, %.lr.ph79..thread_crit_edge.i ], [ %i.f, %bb.b ] ; 4 uses
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = icmp sgt i8 %i.ba, -1
  br i1 %i.bc, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.thread.i
  %i.bd = and i32 %i.bb, 224
  %i.be = icmp eq i32 %i.bd, 192
  br i1 %i.be, label %bb.d, label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit

bb.d:                                             ; preds = %bb.c
  %i.bf = add nuw i64 %.04778.i, 1                ; 2 uses
  %.not67.i = icmp ult i64 %i.bf, %2
  br i1 %.not67.i, label %bb.e, label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit

bb.e:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1             ; 2 uses
  %.not68.i = icmp slt i8 %i.bh, -64
  %i.bi = and i32 %i.bb, 30
  %or.cond.not.i = icmp eq i32 %i.bi, 2
  %or.cond.i = and i1 %or.cond.not.i, %.not68.i
  br i1 %or.cond.i, label %bb.f, label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit

bb.f:                                             ; preds = %bb.e
  %i.bj = shl i8 %i.ba, 6
  %i.bk = and i8 %i.bh, 63
  %i.bl = or disjoint i8 %i.bk, %i.bj
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.sink87.i = phi i8 [ %i.bl, %bb.f ], [ %i.ba, %.thread.i ]
  %.sink.i = phi i64 [ 2, %bb.f ], [ 1, %.thread.i ]
  store i8 %.sink87.i, ptr %.05077.i, align 1
  %i.bm = add i64 %.sink.i, %.04778.i
  %.656.i = getelementptr inbounds nuw i8, ptr %.05077.i, i64 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.g, %.lr.ph.preheader.i, %.preheader.i
  %.050.be.i = phi ptr [ %.656.i, %bb.g ], [ %.05077.i, %.preheader.i ], [ %i.az, %.lr.ph.preheader.i ] ; 2 uses
  %.047.be.i = phi i64 [ %i.bm, %bb.g ], [ %.04778.i, %.preheader.i ], [ %i.a, %.lr.ph.preheader.i ] ; 2 uses
  %i.bn = icmp ult i64 %.047.be.i, %2
  br i1 %i.bn, label %.lr.ph79.i, label %._crit_edge.i, !llvm.loop !13

._crit_edge.i:                                    ; preds = %.backedge.i, %bb.a
  %.050.lcssa.i = phi ptr [ %3, %bb.a ], [ %.050.be.i, %.backedge.i ]
  %i.bo = ptrtoint ptr %.050.lcssa.i to i64
  %i.bp = ptrtoint ptr %3 to i64
  %i.bq = sub i64 %i.bo, %i.bp
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit

_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit: ; preds = %bb.c, %bb.d, %bb.e, %._crit_edge.i
  %.461.i = phi i64 [ %i.bq, %._crit_edge.i ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i64 %.461.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden { i32, i64 } @_ZNK7simdutf8fallback14implementation34convert_utf8_to_latin1_with_errorsEPKcmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #7 align 2 {
bb.a:
  %i.a = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin119convert_with_errorsEPKcmPc(ptr noundef %1, i64 noundef %2, ptr noundef %3)
  ret { i32, i64 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin119convert_with_errorsEPKcmPc(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2) unnamed_addr #8 {
bb.a:
  %.not90 = icmp eq i64 %1, 0
  br i1 %.not90, label %._crit_edge, label %.lr.ph88

.lr.ph88:                                         ; preds = %bb.a, %.backedge
  %.05687 = phi i64 [ %.056.be, %.backedge ], [ 0, %bb.a ] ; 27 uses
  %.05986 = phi ptr [ %.059.be, %.backedge ], [ %2, %bb.a ] ; 20 uses
  %i.a = add i64 %.05687, 16                      ; 2 uses
  %.not = icmp ugt i64 %i.a, %1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 %.05687 ; 3 uses
  br i1 %.not, label %.lr.ph88..thread_crit_edge, label %bb.b

.lr.ph88..thread_crit_edge:                       ; preds = %.lr.ph88
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %.thread

bb.b:                                             ; preds = %.lr.ph88
  %.0.copyload17 = load i64, ptr %.phi.trans.insert, align 1 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.0.copyload = load i64, ptr %i.b, align 1
  %i.c = or i64 %.0.copyload, %.0.copyload17
  %i.d = and i64 %i.c, -9187201950435737472
  %i.e = icmp eq i64 %i.d, 0
  %i.f = trunc i64 %.0.copyload17 to i8           ; 2 uses
  br i1 %i.e, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.b
  %i.g = icmp ult i64 %.05687, -16
  br i1 %i.g, label %.lr.ph.preheader, label %.backedge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %.05986, i64 1
  store i8 %i.f, ptr %.05986, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.05687
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %.05986, i64 2
  store i8 %i.k, ptr %i.h, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %.05687
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.o = load i8, ptr %i.n, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.05986, i64 3
  store i8 %i.o, ptr %i.l, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.05687
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.s = load i8, ptr %i.r, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %.05986, i64 4
  store i8 %i.s, ptr %i.p, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.05687
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i8, ptr %i.v, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %.05986, i64 5
  store i8 %i.w, ptr %i.t, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.05687
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %.05986, i64 6
  store i8 %i.aa, ptr %i.x, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 %.05687
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 6
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %.05986, i64 7
  store i8 %i.ae, ptr %i.ab, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.05687
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 7
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.05986, i64 8
  store i8 %i.ai, ptr %i.af, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %.05687
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i8, ptr %i.al, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.05986, i64 9
  store i8 %i.am, ptr %i.aj, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %.05687
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 9
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.05986, i64 10
  store i8 %i.aq, ptr %i.an, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %.05687
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 10
  %i.au = load i8, ptr %i.at, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %.05986, i64 11
  store i8 %i.au, ptr %i.ar, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.05687
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 11
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.05986, i64 12
  store i8 %i.ay, ptr %i.av, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %.05687
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.05986, i64 13
  store i8 %i.bc, ptr %i.az, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.05687
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 13
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %.05986, i64 14
  store i8 %i.bg, ptr %i.bd, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 %.05687
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 14
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = getelementptr inbounds nuw i8, ptr %.05986, i64 15
  store i8 %i.bk, ptr %i.bh, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %.05687
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 15
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.05986, i64 16
  store i8 %i.bo, ptr %i.bl, align 1
  br label %.backedge

.thread:                                          ; preds = %.lr.ph88..thread_crit_edge, %bb.b
  %i.bq = phi i8 [ %.pre, %.lr.ph88..thread_crit_edge ], [ %i.f, %bb.b ] ; 3 uses
  %i.br = zext i8 %i.bq to i32                    ; 5 uses
  %i.bs = icmp sgt i8 %i.bq, -1
  br i1 %i.bs, label %bb.k, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.bt = and i32 %i.br, 224
  %i.bu = icmp eq i32 %i.bt, 192
  br i1 %i.bu, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.bv = add nuw i64 %.05687, 1                  ; 2 uses
  %.not71 = icmp ult i64 %i.bv, %1
  br i1 %.not71, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = zext i8 %i.bx to i32                    ; 2 uses
  %i.bz = and i32 %i.by, 192
  %.not72 = icmp eq i32 %i.bz, 128
  br i1 %.not72, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ca = shl nuw nsw i32 %i.br, 6                ; 2 uses
  %i.cb = and i32 %i.ca, 1984                     ; 2 uses
  %i.cc = and i32 %i.by, 63
  %i.cd = or disjoint i32 %i.cc, %i.ca
  %i.ce = icmp samesign ult i32 %i.cb, 128
  br i1 %i.ce, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cf = icmp samesign ugt i32 %i.cb, 255
  br i1 %i.cf, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cg = trunc i32 %i.cd to i8
  br label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.ch = and i32 %i.br, 240
  %i.ci = icmp eq i32 %i.ch, 224
  %i.cj = and i32 %i.br, 248
  %i.ck = icmp eq i32 %i.cj, 240
  %or.cond = or i1 %i.ci, %i.ck
  br i1 %or.cond, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cl = and i32 %i.br, 192
  %i.cm = icmp eq i32 %i.cl, 128
  %spec.select = select i1 %i.cm, i32 3, i32 1
  br label %.critedge

bb.k:                                             ; preds = %.thread, %bb.h
  %.sink103 = phi i8 [ %i.cg, %bb.h ], [ %i.bq, %.thread ]
  %.sink = phi i64 [ 2, %bb.h ], [ 1, %.thread ]
  store i8 %.sink103, ptr %.05986, align 1
  %i.cn = add i64 %.05687, %.sink
  %.665 = getelementptr inbounds nuw i8, ptr %.05986, i64 1
  br label %.backedge

.backedge:                                        ; preds = %.lr.ph.preheader, %.preheader, %bb.k
  %.059.be = phi ptr [ %.665, %bb.k ], [ %.05986, %.preheader ], [ %i.bp, %.lr.ph.preheader ] ; 2 uses
  %.056.be = phi i64 [ %i.cn, %bb.k ], [ %.05687, %.preheader ], [ %i.a, %.lr.ph.preheader ] ; 2 uses
  %i.co = icmp ult i64 %.056.be, %1
  br i1 %i.co, label %.lr.ph88, label %._crit_edge, !llvm.loop !176

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.059.lcssa = phi ptr [ %2, %bb.a ], [ %.059.be, %.backedge ]
  %i.cp = ptrtoint ptr %.059.lcssa to i64
  %i.cq = ptrtoint ptr %2 to i64
  %i.cr = sub i64 %i.cp, %i.cq
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.j, %bb.i, %._crit_edge
  %.sroa.10.0 = phi i64 [ %i.cr, %._crit_edge ], [ %.05687, %bb.j ], [ %.05687, %bb.i ], [ %.05687, %bb.d ], [ %.05687, %bb.e ], [ %.05687, %bb.f ], [ %.05687, %bb.g ]
  %.sroa.0.0 = phi i32 [ 0, %._crit_edge ], [ %spec.select, %bb.j ], [ 5, %bb.i ], [ 5, %bb.g ], [ 4, %bb.f ], [ 2, %bb.e ], [ 2, %bb.d ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.10.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef i64 @_ZNK7simdutf8fallback14implementation28convert_valid_utf8_to_latin1EPKcmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #7 align 2 {
bb.a:
  %.not80.i = icmp eq i64 %2, 0
  br i1 %.not80.i, label %.thread66.i, label %.lr.ph76.i

.lr.ph76.i:                                       ; preds = %bb.a, %.backedge.i
  %.04475.i = phi i64 [ %.044.be.i, %.backedge.i ], [ 0, %bb.a ] ; 6 uses
  %.04774.i = phi ptr [ %.047.be.i, %.backedge.i ], [ %3, %bb.a ] ; 21 uses
  %i.a = add i64 %.04475.i, 16                    ; 2 uses
  %.not.i = icmp ugt i64 %i.a, %2
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 %.04475.i ; 17 uses
  br i1 %.not.i, label %.lr.ph76..thread_crit_edge.i, label %bb.b

.lr.ph76..thread_crit_edge.i:                     ; preds = %.lr.ph76.i
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1
  br label %.thread.i

bb.b:                                             ; preds = %.lr.ph76.i
  %.0.copyload10.i = load i64, ptr %.phi.trans.insert.i, align 1 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 8 ; 2 uses
  %.0.copyload.i = load i64, ptr %i.b, align 1
  %i.c = or i64 %.0.copyload.i, %.0.copyload10.i
  %i.d = and i64 %i.c, -9187201950435737472
  %i.e = icmp eq i64 %i.d, 0
  %i.f = trunc i64 %.0.copyload10.i to i8         ; 2 uses
  br i1 %i.e, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %bb.b
  %i.g = icmp ult i64 %.04475.i, -16
  br i1 %i.g, label %.lr.ph.preheader.i, label %.backedge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.h = getelementptr inbounds nuw i8, ptr %.04774.i, i64 1
  store i8 %i.f, ptr %.04774.i, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.04774.i, i64 2
  store i8 %i.j, ptr %i.h, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 2
  %i.m = load i8, ptr %i.l, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.04774.i, i64 3
  store i8 %i.m, ptr %i.k, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 3
  %i.p = load i8, ptr %i.o, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.04774.i, i64 4
  store i8 %i.p, ptr %i.n, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 4
  %i.s = load i8, ptr %i.r, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %.04774.i, i64 5
  store i8 %i.s, ptr %i.q, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 5
  %i.v = load i8, ptr %i.u, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %.04774.i, i64 6
  store i8 %i.v, ptr %i.t, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 6
  %i.y = load i8, ptr %i.x, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %.04774.i, i64 7
  store i8 %i.y, ptr %i.w, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 7
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.04774.i, i64 8
  store i8 %i.ab, ptr %i.z, align 1
  %i.ad = load i8, ptr %i.b, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.04774.i, i64 9
  store i8 %i.ad, ptr %i.ac, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 9
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.04774.i, i64 10
  store i8 %i.ag, ptr %i.ae, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 10
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.04774.i, i64 11
  store i8 %i.aj, ptr %i.ah, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 11
  %i.am = load i8, ptr %i.al, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.04774.i, i64 12
  store i8 %i.am, ptr %i.ak, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 12
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.04774.i, i64 13
  store i8 %i.ap, ptr %i.an, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 13
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.04774.i, i64 14
  store i8 %i.as, ptr %i.aq, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 14
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.04774.i, i64 15
  store i8 %i.av, ptr %i.at, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 15
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %.04774.i, i64 16
  store i8 %i.ay, ptr %i.aw, align 1
  br label %.backedge.i

.thread.i:                                        ; preds = %bb.b, %.lr.ph76..thread_crit_edge.i
  %i.ba = phi i8 [ %.pre.i, %.lr.ph76..thread_crit_edge.i ], [ %i.f, %bb.b ] ; 4 uses
  %i.bb = icmp sgt i8 %i.ba, -1
  br i1 %i.bb, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.thread.i
  %i.bc = and i8 %i.ba, -32
  %i.bd = icmp eq i8 %i.bc, -64
  br i1 %i.bd, label %bb.d, label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit

bb.d:                                             ; preds = %bb.c
  %i.be = add nuw i64 %.04475.i, 1                ; 2 uses
  %.not57.i = icmp ult i64 %i.be, %2
  br i1 %.not57.i, label %bb.e, label %.thread66.i

bb.e:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1             ; 2 uses
  %.not58.i = icmp slt i8 %i.bg, -64
  br i1 %.not58.i, label %bb.f, label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit

bb.f:                                             ; preds = %bb.e
  %i.bh = shl i8 %i.ba, 6
  %i.bi = and i8 %i.bg, 63
  %i.bj = or disjoint i8 %i.bi, %i.bh
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread.i
  %.sink86.i = phi i8 [ %i.bj, %bb.f ], [ %i.ba, %.thread.i ]
  %.sink.i = phi i64 [ 2, %bb.f ], [ 1, %.thread.i ]
  store i8 %.sink86.i, ptr %.04774.i, align 1
  %i.bk = add i64 %.sink.i, %.04475.i
  %.451.i = getelementptr inbounds nuw i8, ptr %.04774.i, i64 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.g, %.lr.ph.preheader.i, %.preheader.i
  %.047.be.i = phi ptr [ %.451.i, %bb.g ], [ %.04774.i, %.preheader.i ], [ %i.az, %.lr.ph.preheader.i ] ; 2 uses
  %.044.be.i = phi i64 [ %i.bk, %bb.g ], [ %.04475.i, %.preheader.i ], [ %i.a, %.lr.ph.preheader.i ] ; 2 uses
  %i.bl = icmp ult i64 %.044.be.i, %2
  br i1 %i.bl, label %.lr.ph76.i, label %.thread66.i

.thread66.i:                                      ; preds = %.backedge.i, %bb.d, %bb.a
  %.047.lcssa.i = phi ptr [ %3, %bb.a ], [ %.047.be.i, %.backedge.i ], [ %.04774.i, %bb.d ]
  %i.bm = ptrtoint ptr %.047.lcssa.i to i64
  %i.bn = ptrtoint ptr %3 to i64
  %i.bo = sub i64 %i.bm, %i.bn
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit

_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit: ; preds = %bb.c, %bb.e, %.thread66.i
  %.2.i = phi i64 [ %i.bo, %.thread66.i ], [ 0, %bb.e ], [ 0, %bb.c ]
  ret i64 %.2.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden noundef range(i64 -4611686018427387904, 4611686018427387904) i64 @_ZNK7simdutf8fallback14implementation23convert_utf8_to_utf16leEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #7 align 2 {
bb.a:
  %i.a = tail call fastcc noundef i64 @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf167convertILNS_10endiannessE0EEEmPKcmPDs(ptr noundef %1, i64 noundef %2, ptr noundef %3)
  ret i64 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef range(i64 -4611686018427387904, 4611686018427387904) i64 @_ZN7simdutf6scalar12_GLOBAL__N_113utf8_to_utf167convertILNS_10endiannessE0EEEmPKcmPDs(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2) unnamed_addr #8 {
bb.a:
  %.not173 = icmp eq i64 %1, 0
  br i1 %.not173, label %._crit_edge, label %.lr.ph171

.lr.ph171:                                        ; preds = %bb.a, %.backedge
  %.0113170 = phi i64 [ %.0113.be, %.backedge ], [ 0, %bb.a ] ; 27 uses
  %.0118169 = phi ptr [ %.0118.be, %.backedge ], [ %2, %bb.a ] ; 27 uses
  %i.a = add i64 %.0113170, 16                    ; 2 uses
  %.not = icmp ugt i64 %i.a, %1
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 %.0113170 ; 3 uses
  br i1 %.not, label %.lr.ph171..thread_crit_edge, label %bb.b

.lr.ph171..thread_crit_edge:                      ; preds = %.lr.ph171
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %.thread

bb.b:                                             ; preds = %.lr.ph171
  %.0.copyload46 = load i64, ptr %.phi.trans.insert, align 1 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.0.copyload = load i64, ptr %i.b, align 1
  %i.c = or i64 %.0.copyload, %.0.copyload46
  %i.d = and i64 %i.c, -9187201950435737472
  %i.e = icmp eq i64 %i.d, 0
  %i.f = trunc i64 %.0.copyload46 to i8           ; 2 uses
  br i1 %i.e, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.b
  %i.g = icmp ult i64 %.0113170, -16
  br i1 %i.g, label %.lr.ph.preheader, label %.backedge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.h = sext i8 %i.f to i16
  %i.i = getelementptr inbounds nuw i8, ptr %.0118169, i64 2
  store i16 %i.h, ptr %.0118169, align 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 %.0113170
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.l = load i8, ptr %i.k, align 1
  %i.m = sext i8 %i.l to i16
  %i.n = getelementptr inbounds nuw i8, ptr %.0118169, i64 4
  store i16 %i.m, ptr %i.i, align 2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.0113170
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.q = load i8, ptr %i.p, align 1
  %i.r = sext i8 %i.q to i16
  %i.s = getelementptr inbounds nuw i8, ptr %.0118169, i64 6
  store i16 %i.r, ptr %i.n, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.0113170
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.v = load i8, ptr %i.u, align 1
  %i.w = sext i8 %i.v to i16
  %i.x = getelementptr inbounds nuw i8, ptr %.0118169, i64 8
  store i16 %i.w, ptr %i.s, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.0113170
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = sext i8 %i.aa to i16
  %i.ac = getelementptr inbounds nuw i8, ptr %.0118169, i64 10
  store i16 %i.ab, ptr %i.x, align 2
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %.0113170
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 5
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = sext i8 %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %.0118169, i64 12
  store i16 %i.ag, ptr %i.ac, align 2
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.0113170
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sext i8 %i.ak to i16
  %i.am = getelementptr inbounds nuw i8, ptr %.0118169, i64 14
  store i16 %i.al, ptr %i.ah, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.0113170
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 7
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = sext i8 %i.ap to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %.0118169, i64 16
  store i16 %i.aq, ptr %i.am, align 2
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %.0113170
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i8, ptr %i.at, align 1
  %i.av = sext i8 %i.au to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %.0118169, i64 18
  store i16 %i.av, ptr %i.ar, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %.0113170
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 9
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = sext i8 %i.az to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %.0118169, i64 20
  store i16 %i.ba, ptr %i.aw, align 2
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %.0113170
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 10
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = sext i8 %i.be to i16
  %i.bg = getelementptr inbounds nuw i8, ptr %.0118169, i64 22
  store i16 %i.bf, ptr %i.bb, align 2
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %.0113170
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 11
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = sext i8 %i.bj to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %.0118169, i64 24
  store i16 %i.bk, ptr %i.bg, align 2
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %.0113170
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = sext i8 %i.bo to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %.0118169, i64 26
  store i16 %i.bp, ptr %i.bl, align 2
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %.0113170
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 13
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = sext i8 %i.bt to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %.0118169, i64 28
  store i16 %i.bu, ptr %i.bq, align 2
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %.0113170
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 14
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = sext i8 %i.by to i16
  %i.ca = getelementptr inbounds nuw i8, ptr %.0118169, i64 30
  store i16 %i.bz, ptr %i.bv, align 2
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %.0113170
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 15
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = sext i8 %i.cd to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %.0118169, i64 32
  store i16 %i.ce, ptr %i.ca, align 2
  br label %.backedge

.thread:                                          ; preds = %.lr.ph171..thread_crit_edge, %bb.b
  %i.cg = phi i8 [ %.pre, %.lr.ph171..thread_crit_edge ], [ %i.f, %bb.b ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 %.0113170 ; 3 uses
  %i.ci = zext i8 %i.cg to i32                    ; 6 uses
  %i.cj = icmp sgt i8 %i.cg, -1
  br i1 %i.cj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  %i.ck = zext nneg i8 %i.cg to i16
  %i.cl = getelementptr inbounds nuw i8, ptr %.0118169, i64 2
  store i16 %i.ck, ptr %.0118169, align 2
  %i.cm = add i64 %.0113170, 1
  br label %.backedge

bb.d:                                             ; preds = %.thread
  %i.cn = and i32 %i.ci, 224
  %i.co = icmp eq i32 %i.cn, 192
  br i1 %i.co, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.cp = add i64 %.0113170, 1                    ; 2 uses
  %.not150 = icmp ult i64 %i.cp, %1
  br i1 %.not150, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1
  %i.cs = zext i8 %i.cr to i32                    ; 2 uses
  %i.ct = and i32 %i.cs, 192
  %.not151 = icmp eq i32 %i.ct, 128
  br i1 %.not151, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.cu = shl nuw nsw i32 %i.ci, 6
  %i.cv = and i32 %i.cu, 1984                     ; 2 uses
  %i.cw = icmp samesign ugt i32 %i.cv, 127
  br i1 %i.cw, label %.thread155, label %.critedge

.thread155:                                       ; preds = %bb.g
  %i.cx = and i32 %i.cs, 63
  %i.cy = or disjoint i32 %i.cx, %i.cv
  %i.cz = trunc nuw nsw i32 %i.cy to i16
  %i.da = getelementptr inbounds nuw i8, ptr %.0118169, i64 2
  store i16 %i.cz, ptr %.0118169, align 2
end_hunk_1
begin_hunk_2_@_ZNK7simdutf7haswell14implementation26validate_ascii_with_errorsEPKcm:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit.i
  %.sroa.454.1.i = phi i64 [ %.sroa.454.0.i, %bb.g ], [ %i.ad, %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit.i ] ; 2 uses
  %.sroa.053.1.i = phi i32 [ %.sroa.053.0.i, %bb.g ], [ %.sroa.0.0.i.i, %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit.i ] ; 2 uses
  %.sroa.11.1.i = phi i64 [ %i.ae, %bb.g ], [ %.sroa.11.0.i, %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit.i ]
  %.1.i = phi i64 [ %i.af, %bb.g ], [ %.0.i, %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit.i ]
  br i1 %i.k, label %bb.b, label %_ZN7simdutf7haswell12_GLOBAL__N_116ascii_validation34generic_validate_ascii_with_errorsEPKcm.exit, !llvm.loop !507

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ag = icmp eq i64 %2, %.sroa.11.0.i
  br i1 %i.ag, label %_ZNK7simdutf7haswell12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.thread.i, label %_ZNK7simdutf7haswell12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.i

_ZNK7simdutf7haswell12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.i: ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 32, i64 64, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.i
  %i.ai = sub i64 %2, %.sroa.11.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.ah, i64 %i.ai, i1 false)
  %.0..0..0..0..0..pre.i = load <4 x i64>, ptr %i.a, align 16, !noalias !514
  %.32..32..32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.32..32..32..32..32..pre.i = load <4 x i64>, ptr %.32..32..32..32..32..sroa_idx, align 16, !noalias !515
  %i.aj = or <4 x i64> %.32..32..32..32..32..pre.i, %.0..0..0..0..0..pre.i
  %i.ak = bitcast <4 x i64> %i.aj to <32 x i8>
  %i.al = icmp slt <32 x i8> %i.ak, zeroinitializer
  %i.am = bitcast <32 x i1> %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZNK7simdutf7haswell12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %_ZNK7simdutf7haswell12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i ; 3 uses
  %i.ap = sub i64 %2, %.0.i                       ; 8 uses
  %.not33.i19.i = icmp ult i64 %i.ap, 16
  br i1 %.not33.i19.i, label %.preheader.i29.i, label %.lr.ph35.i20.i

.preheader.i29.i:                                 ; preds = %.loopexit.i26.i, %bb.j
  %.025.lcssa.i30.i = phi i64 [ 0, %bb.j ], [ %i.ba, %.loopexit.i26.i ] ; 3 uses
  %i.aq = icmp ult i64 %.025.lcssa.i30.i, %i.ap
  br i1 %i.aq, label %.lr.ph38.i35.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit41.i

.lr.ph35.i20.i:                                   ; preds = %bb.j, %.loopexit.i26.i
  %.02534.i21.i = phi i64 [ %i.ba, %.loopexit.i26.i ], [ 0, %bb.j ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.02534.i21.i ; 2 uses
  %.0.copyload3.i22.i = load i64, ptr %i.ar, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.0.copyload.i23.i = load i64, ptr %i.as, align 1
  %i.at = or i64 %.0.copyload.i23.i, %.0.copyload3.i22.i
  %i.au = and i64 %i.at, -9187201950435737472
  %.not27.i24.i = icmp ne i64 %i.au, 0
  %i.av = icmp ult i64 %.02534.i21.i, %i.ap
  %or.cond.i25.i = and i1 %i.av, %.not27.i24.i
  br i1 %or.cond.i25.i, label %.lr.ph.i38.i, label %.loopexit.i26.i

.lr.ph.i38.i:                                     ; preds = %.lr.ph35.i20.i, %bb.k
  %.132.i39.i = phi i64 [ %i.az, %bb.k ], [ %.02534.i21.i, %.lr.ph35.i20.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.132.i39.i
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = icmp slt i8 %i.ax, 0
  br i1 %i.ay, label %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit41.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i38.i
  %i.az = add i64 %.132.i39.i, 1                  ; 2 uses
  %exitcond.not.i40.i = icmp eq i64 %i.az, %i.ap
  br i1 %exitcond.not.i40.i, label %.loopexit.i26.i, label %.lr.ph.i38.i, !llvm.loop !5

.loopexit.i26.i:                                  ; preds = %bb.k, %.lr.ph35.i20.i
  %.3.i27.i = phi i64 [ %.02534.i21.i, %.lr.ph35.i20.i ], [ %i.ap, %bb.k ] ; 2 uses
  %i.ba = add i64 %.3.i27.i, 16                   ; 2 uses
  %i.bb = add i64 %.3.i27.i, 32
  %.not.i28.i = icmp ugt i64 %i.bb, %i.ap
  br i1 %.not.i28.i, label %.preheader.i29.i, label %.lr.ph35.i20.i, !llvm.loop !6

.lr.ph38.i35.i:                                   ; preds = %.preheader.i29.i, %bb.l
  %.437.i36.i = phi i64 [ %i.bf, %bb.l ], [ %.025.lcssa.i30.i, %.preheader.i29.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.437.i36.i
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = icmp slt i8 %i.bd, 0
  br i1 %i.be, label %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit41.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph38.i35.i
  %i.bf = add i64 %.437.i36.i, 1                  ; 2 uses
  %exitcond47.not.i37.i = icmp eq i64 %i.bf, %i.ap
  br i1 %exitcond47.not.i37.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit41.i, label %.lr.ph38.i35.i, !llvm.loop !7

_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit41.i: ; preds = %.lr.ph.i38.i, %bb.l, %.lr.ph38.i35.i, %.preheader.i29.i
  %.sroa.4.0.i31.i = phi i64 [ %i.ap, %bb.l ], [ %.025.lcssa.i30.i, %.preheader.i29.i ], [ %.437.i36.i, %.lr.ph38.i35.i ], [ %.132.i39.i, %.lr.ph.i38.i ]
  %.sroa.0.0.i32.i = phi i32 [ 0, %bb.l ], [ 0, %.preheader.i29.i ], [ 5, %.lr.ph38.i35.i ], [ 5, %.lr.ph.i38.i ]
  %i.bg = add i64 %.sroa.4.0.i31.i, %.0.i
  br label %_ZNK7simdutf7haswell12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.thread.i

_ZNK7simdutf7haswell12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.thread.i: ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit41.i, %_ZNK7simdutf7haswell12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.i, %bb.i
  %.sroa.454.2.i = phi i64 [ %i.bg, %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit41.i ], [ %2, %_ZNK7simdutf7haswell12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.i ], [ %2, %bb.i ]
  %.sroa.053.2.i = phi i32 [ %.sroa.0.0.i32.i, %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit41.i ], [ 0, %_ZNK7simdutf7haswell12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.i ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN7simdutf7haswell12_GLOBAL__N_116ascii_validation34generic_validate_ascii_with_errorsEPKcm.exit

_ZN7simdutf7haswell12_GLOBAL__N_116ascii_validation34generic_validate_ascii_with_errorsEPKcm.exit: ; preds = %bb.h, %_ZNK7simdutf7haswell12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.thread.i
  %.sroa.454.3.i = phi i64 [ %.sroa.454.2.i, %_ZNK7simdutf7haswell12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.thread.i ], [ %.sroa.454.1.i, %bb.h ]
  %.sroa.053.3.i = phi i32 [ %.sroa.053.2.i, %_ZNK7simdutf7haswell12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.thread.i ], [ %.sroa.053.1.i, %bb.h ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.053.3.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.454.3.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK7simdutf7haswell14implementation16validate_utf16leEPKDsm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #18 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit, label %bb.b, !prof !71

bb.b:                                             ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %2, 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %i.c = icmp ugt i64 %2, 64
  br i1 %i.c, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.029161.i = phi ptr [ %.4.i, %bb.e ], [ %1, %bb.b ] ; 3 uses
  %i.d = load <16 x i16>, ptr %.029161.i, align 1, !noalias !520
  %i.e = getelementptr inbounds nuw i8, ptr %.029161.i, i64 32 ; 3 uses
  %i.f = load <16 x i16>, ptr %i.e, align 1, !noalias !521
  %i.g = lshr <16 x i16> %i.d, splat (i16 8)      ; 2 uses
  %i.h = lshr <16 x i16> %i.f, splat (i16 8)      ; 2 uses
  %i.i = shufflevector <16 x i16> %i.g, <16 x i16> %i.h, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.j = bitcast <16 x i16> %i.h to <8 x i32>
  %i.k = bitcast <16 x i16> %i.g to <8 x i32>
  %i.l = shufflevector <8 x i32> %i.k, <8 x i32> %i.j, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.m = bitcast <8 x i32> %i.l to <16 x i16>
  %i.n = tail call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.i, <16 x i16> %i.m) ; 2 uses
  %i.o = and <32 x i8> %i.n, splat (i8 -8)
  %i.p = icmp eq <32 x i8> %i.o, splat (i8 -40)
  %i.q = bitcast <32 x i1> %i.p to i32            ; 3 uses
  %i.r = and i32 %i.q, 65535
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.t = and <32 x i8> %i.n, splat (i8 -4)
  %i.u = icmp eq <32 x i8> %i.t, splat (i8 -36)
  %i.v = bitcast <32 x i1> %i.u to i32            ; 2 uses
  %i.w = lshr i32 %i.v, 1
  %i.x = and i32 %i.v, 32767
  %i.y = xor i32 %i.x, 32767
  %i.z = and i32 %i.y, %i.w                       ; 2 uses
  %i.aa = and i32 %i.z, %i.q
  %i.ab = shl nuw nsw i32 %i.aa, 1
  %.masked34.i = xor i32 %i.q, -1
  %i.ac = or i32 %i.ab, %.masked34.i
  %i.ad = or i32 %i.ac, %i.z
  %trunc.i = trunc i32 %i.ad to i16
  switch i16 %trunc.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit [
    i16 -1, label %bb.e
    i16 32767, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.029161.i, i64 30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i
  %.4.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.e, %bb.c ], [ %i.ae, %bb.d ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.4.i, i64 128
  %i.ag = icmp ult ptr %i.af, %i.b
  br i1 %i.ag, label %.lr.ph.i, label %.loopexit, !llvm.loop !44

.loopexit:                                        ; preds = %bb.e, %bb.b
  %.029.lcssa.i = phi ptr [ %1, %bb.b ], [ %.4.i, %bb.e ]
  %i.ah = ptrtoint ptr %.029.lcssa.i to i64
  %i.ai = ptrtoint ptr %1 to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 2 uses
  %i.ak = ashr exact i64 %i.aj, 1                 ; 2 uses
  %i.al = icmp eq i64 %i.ak, %2
  br i1 %i.al, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.aj ; 2 uses
  %i.an = sub i64 %2, %i.ak                       ; 2 uses
  br label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.f, %bb.i
  %.02236.i = phi i64 [ %.4.i9, %bb.i ], [ 0, %bb.f ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %.02236.i
  %i.ap = load i16, ptr %i.ao, align 2            ; 2 uses
  %i.aq = and i16 %i.ap, -2048
  %i.ar = icmp eq i16 %i.aq, -10240
  %i.as = add nuw i64 %.02236.i, 1                ; 3 uses
  br i1 %i.ar, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i8
  %.not.i = icmp ult i64 %i.as, %i.an
  %i.at = and i16 %i.ap, -9216
  %.not32.i = icmp eq i16 %i.at, -10240
  %or.cond.i = and i1 %.not.i, %.not32.i
  br i1 %or.cond.i, label %bb.h, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.as
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = and i16 %i.av, -1024
  %.not34.i = icmp eq i16 %i.aw, -9216
  %i.ax = add i64 %.02236.i, 2
  br i1 %.not34.i, label %bb.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit

bb.i:                                             ; preds = %bb.h, %.lr.ph.i8
  %.4.i9 = phi i64 [ %i.ax, %bb.h ], [ %i.as, %.lr.ph.i8 ] ; 2 uses
  %.not41.i = icmp ult i64 %.4.i9, %i.an
  br i1 %.not41.i, label %.lr.ph.i8, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit, !llvm.loop !3

_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit: ; preds = %bb.c, %bb.g, %bb.h, %bb.i, %.loopexit, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %.loopexit ], [ true, %bb.i ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK7simdutf7haswell14implementation16validate_utf16beEPKDsm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #18 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit, label %bb.b, !prof !71

bb.b:                                             ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %2, 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %i.c = icmp ugt i64 %2, 64
  br i1 %i.c, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.029161.i = phi ptr [ %.4.i, %bb.e ], [ %1, %bb.b ] ; 3 uses
  %i.d = load <4 x i64>, ptr %.029161.i, align 1, !noalias !526
  %i.e = getelementptr inbounds nuw i8, ptr %.029161.i, i64 32 ; 3 uses
  %i.f = load <4 x i64>, ptr %i.e, align 1, !noalias !527
  %i.g = and <4 x i64> %i.d, splat (i64 71777214294589695) ; 2 uses
  %i.h = and <4 x i64> %i.f, splat (i64 71777214294589695) ; 2 uses
  %i.i = shufflevector <4 x i64> %i.g, <4 x i64> %i.h, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.j = shufflevector <4 x i64> %i.g, <4 x i64> %i.h, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.k = bitcast <4 x i64> %i.i to <16 x i16>
  %i.l = bitcast <4 x i64> %i.j to <16 x i16>
  %i.m = tail call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.k, <16 x i16> %i.l) ; 2 uses
  %i.n = and <32 x i8> %i.m, splat (i8 -8)
  %i.o = icmp eq <32 x i8> %i.n, splat (i8 -40)
  %i.p = bitcast <32 x i1> %i.o to i32            ; 3 uses
  %i.q = and i32 %i.p, 65535
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = and <32 x i8> %i.m, splat (i8 -4)
  %i.t = icmp eq <32 x i8> %i.s, splat (i8 -36)
  %i.u = bitcast <32 x i1> %i.t to i32            ; 2 uses
  %i.v = lshr i32 %i.u, 1
  %i.w = and i32 %i.u, 32767
  %i.x = xor i32 %i.w, 32767
  %i.y = and i32 %i.x, %i.v                       ; 2 uses
  %i.z = and i32 %i.y, %i.p
  %i.aa = shl nuw nsw i32 %i.z, 1
  %.masked34.i = xor i32 %i.p, -1
  %i.ab = or i32 %i.aa, %.masked34.i
  %i.ac = or i32 %i.ab, %i.y
  %trunc.i = trunc i32 %i.ac to i16
  switch i16 %trunc.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit [
    i16 -1, label %bb.e
    i16 32767, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.029161.i, i64 30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i
  %.4.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.e, %bb.c ], [ %i.ad, %bb.d ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.4.i, i64 128
  %i.af = icmp ult ptr %i.ae, %i.b
  br i1 %i.af, label %.lr.ph.i, label %.loopexit, !llvm.loop !45

.loopexit:                                        ; preds = %bb.e, %bb.b
  %.029.lcssa.i = phi ptr [ %1, %bb.b ], [ %.4.i, %bb.e ]
  %i.ag = ptrtoint ptr %.029.lcssa.i to i64
  %i.ah = ptrtoint ptr %1 to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = ashr exact i64 %i.ai, 1                 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, %2
  br i1 %i.ak, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai ; 2 uses
  %i.am = sub i64 %2, %i.aj                       ; 2 uses
  br label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.f, %bb.i
  %.02236.i = phi i64 [ %.4.i9, %bb.i ], [ 0, %bb.f ] ; 3 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %.02236.i
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %i.ao) ; 2 uses
  %i.aq = and i16 %i.ap, -2048
  %i.ar = icmp eq i16 %i.aq, -10240
  %i.as = add nuw i64 %.02236.i, 1                ; 3 uses
  br i1 %i.ar, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i8
  %.not.i = icmp ult i64 %i.as, %i.am
  %i.at = and i16 %i.ap, -9216
  %.not32.i = icmp eq i16 %i.at, -10240
  %or.cond.i = and i1 %.not.i, %.not32.i
  br i1 %or.cond.i, label %bb.h, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.as
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = and i16 %i.av, 252
  %.not34.i = icmp eq i16 %i.aw, 220
  %i.ax = add i64 %.02236.i, 2
  br i1 %.not34.i, label %bb.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit

bb.i:                                             ; preds = %bb.h, %.lr.ph.i8
  %.4.i9 = phi i64 [ %i.ax, %bb.h ], [ %i.as, %.lr.ph.i8 ] ; 2 uses
  %.not41.i = icmp ult i64 %.4.i9, %i.am
  br i1 %.not41.i, label %.lr.ph.i8, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit, !llvm.loop !8

_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit: ; preds = %bb.c, %bb.g, %bb.h, %bb.i, %.loopexit, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %.loopexit ], [ true, %bb.i ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i32, i64 } @_ZNK7simdutf7haswell14implementation28validate_utf16le_with_errorsEPKDsm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #18 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN7simdutf7haswell12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE0EEEKNS_6resultEPKDsm.exit, label %bb.b, !prof !71

bb.b:                                             ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %2, 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %i.c = icmp ugt i64 %2, 64
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.029161.i = phi ptr [ %.4.i, %bb.e ], [ %1, %bb.b ] ; 4 uses
  %i.d = load <16 x i16>, ptr %.029161.i, align 1, !noalias !532
  %i.e = getelementptr inbounds nuw i8, ptr %.029161.i, i64 32 ; 3 uses
  %i.f = load <16 x i16>, ptr %i.e, align 1, !noalias !533
  %i.g = lshr <16 x i16> %i.d, splat (i16 8)      ; 2 uses
  %i.h = lshr <16 x i16> %i.f, splat (i16 8)      ; 2 uses
  %i.i = shufflevector <16 x i16> %i.g, <16 x i16> %i.h, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.j = bitcast <16 x i16> %i.h to <8 x i32>
  %i.k = bitcast <16 x i16> %i.g to <8 x i32>
  %i.l = shufflevector <8 x i32> %i.k, <8 x i32> %i.j, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.m = bitcast <8 x i32> %i.l to <16 x i16>
  %i.n = tail call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.i, <16 x i16> %i.m) ; 2 uses
  %i.o = and <32 x i8> %i.n, splat (i8 -8)
  %i.p = icmp eq <32 x i8> %i.o, splat (i8 -40)
  %i.q = bitcast <32 x i1> %i.p to i32            ; 3 uses
  %i.r = and i32 %i.q, 65535
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.t = and <32 x i8> %i.n, splat (i8 -4)
  %i.u = icmp eq <32 x i8> %i.t, splat (i8 -36)
  %i.v = bitcast <32 x i1> %i.u to i32            ; 2 uses
  %i.w = lshr i32 %i.v, 1
  %i.x = and i32 %i.v, 32767
  %i.y = xor i32 %i.x, 32767
  %i.z = and i32 %i.y, %i.w                       ; 2 uses
  %i.aa = and i32 %i.z, %i.q
  %i.ab = shl nuw nsw i32 %i.aa, 1
  %.masked34.i = xor i32 %i.q, -1
  %i.ac = or i32 %i.ab, %.masked34.i
  %i.ad = or i32 %i.ac, %i.z
  %trunc.i = trunc i32 %i.ad to i16
  switch i16 %trunc.i, label %.critedge.critedge.i [
    i16 -1, label %bb.e
    i16 32767, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.029161.i, i64 30
  br label %bb.e

.critedge.critedge.i:                             ; preds = %bb.c
  %i.af = ptrtoint ptr %.029161.i to i64
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 1
  br label %_ZN7simdutf7haswell12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE0EEEKNS_6resultEPKDsm.exit

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i
  %.4.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.e, %bb.c ], [ %i.ae, %bb.d ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.4.i, i64 128
  %i.ak = icmp ult ptr %i.aj, %i.b
  br i1 %i.ak, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !44

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.029.lcssa.i = phi ptr [ %1, %bb.b ], [ %.4.i, %bb.e ]
  %i.al = ptrtoint ptr %.029.lcssa.i to i64
  %i.am = ptrtoint ptr %1 to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 1
  br label %_ZN7simdutf7haswell12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE0EEEKNS_6resultEPKDsm.exit

_ZN7simdutf7haswell12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE0EEEKNS_6resultEPKDsm.exit: ; preds = %bb.a, %.critedge.critedge.i, %._crit_edge.i
  %.sroa.057.1.i = phi i32 [ 0, %bb.a ], [ 6, %.critedge.critedge.i ], [ 0, %._crit_edge.i ]
  %.sroa.4.1.i = phi i64 [ 0, %bb.a ], [ %i.ai, %.critedge.critedge.i ], [ %i.ao, %._crit_edge.i ] ; 4 uses
  %.not = icmp eq i64 %.sroa.4.1.i, %2
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE0EEEKNS_6resultEPKDsm.exit
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.4.1.i ; 2 uses
  %i.aq = sub i64 %2, %.sroa.4.1.i                ; 2 uses
  br label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.f, %bb.i
  %.02537.i = phi i64 [ %.4.i13, %bb.i ], [ 0, %bb.f ] ; 5 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %.02537.i
  %i.as = load i16, ptr %i.ar, align 2            ; 2 uses
  %i.at = and i16 %i.as, -2048
  %i.au = icmp eq i16 %i.at, -10240
  %i.av = add nuw i64 %.02537.i, 1                ; 3 uses
  br i1 %i.au, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i12
  %.not.i = icmp ult i64 %i.av, %i.aq
  %i.aw = and i16 %i.as, -9216
  %.not30.i = icmp eq i16 %i.aw, -10240
  %or.cond.i = and i1 %.not.i, %.not30.i
  br i1 %or.cond.i, label %bb.h, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.av
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = and i16 %i.ay, -1024
  %.not32.i = icmp eq i16 %i.az, -9216
  br i1 %.not32.i, label %.thread.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit

.thread.i:                                        ; preds = %bb.h
  %i.ba = add i64 %.02537.i, 2
  br label %bb.i

bb.i:                                             ; preds = %.thread.i, %.lr.ph.i12
  %.4.i13 = phi i64 [ %i.ba, %.thread.i ], [ %i.av, %.lr.ph.i12 ] ; 3 uses
  %i.bb = icmp ult i64 %.4.i13, %i.aq
  br i1 %i.bb, label %.lr.ph.i12, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit, !llvm.loop !9

_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.025.lcssa.i = phi i64 [ %.02537.i, %bb.g ], [ %.4.i13, %bb.i ], [ %.02537.i, %bb.h ]
  %.sroa.0.3.i = phi i32 [ 6, %bb.g ], [ 0, %bb.i ], [ 6, %bb.h ]
  %i.bc = add i64 %.025.lcssa.i, %.sroa.4.1.i
  br label %bb.j

bb.j:                                             ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE0EEEKNS_6resultEPKDsm.exit, %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit
  %.sroa.3.0 = phi i64 [ %i.bc, %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit ], [ %2, %_ZN7simdutf7haswell12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE0EEEKNS_6resultEPKDsm.exit ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.3.i, %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit ], [ %.sroa.057.1.i, %_ZN7simdutf7haswell12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE0EEEKNS_6resultEPKDsm.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i32, i64 } @_ZNK7simdutf7haswell14implementation28validate_utf16be_with_errorsEPKDsm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #18 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN7simdutf7haswell12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE1EEEKNS_6resultEPKDsm.exit, label %bb.b, !prof !71

bb.b:                                             ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %2, 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %i.c = icmp ugt i64 %2, 64
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.029161.i = phi ptr [ %.4.i, %bb.e ], [ %1, %bb.b ] ; 4 uses
  %i.d = load <4 x i64>, ptr %.029161.i, align 1, !noalias !538
  %i.e = getelementptr inbounds nuw i8, ptr %.029161.i, i64 32 ; 3 uses
  %i.f = load <4 x i64>, ptr %i.e, align 1, !noalias !539
  %i.g = and <4 x i64> %i.d, splat (i64 71777214294589695) ; 2 uses
  %i.h = and <4 x i64> %i.f, splat (i64 71777214294589695) ; 2 uses
  %i.i = shufflevector <4 x i64> %i.g, <4 x i64> %i.h, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.j = shufflevector <4 x i64> %i.g, <4 x i64> %i.h, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.k = bitcast <4 x i64> %i.i to <16 x i16>
  %i.l = bitcast <4 x i64> %i.j to <16 x i16>
  %i.m = tail call <32 x i8> @llvm.x86.avx2.packuswb(<16 x i16> %i.k, <16 x i16> %i.l) ; 2 uses
  %i.n = and <32 x i8> %i.m, splat (i8 -8)
  %i.o = icmp eq <32 x i8> %i.n, splat (i8 -40)
  %i.p = bitcast <32 x i1> %i.o to i32            ; 3 uses
  %i.q = and i32 %i.p, 65535
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.s = and <32 x i8> %i.m, splat (i8 -4)
  %i.t = icmp eq <32 x i8> %i.s, splat (i8 -36)
  %i.u = bitcast <32 x i1> %i.t to i32            ; 2 uses
  %i.v = lshr i32 %i.u, 1
  %i.w = and i32 %i.u, 32767
  %i.x = xor i32 %i.w, 32767
  %i.y = and i32 %i.x, %i.v                       ; 2 uses
  %i.z = and i32 %i.y, %i.p
  %i.aa = shl nuw nsw i32 %i.z, 1
  %.masked34.i = xor i32 %i.p, -1
  %i.ab = or i32 %i.aa, %.masked34.i
  %i.ac = or i32 %i.ab, %i.y
  %trunc.i = trunc i32 %i.ac to i16
  switch i16 %trunc.i, label %.critedge.critedge.i [
    i16 -1, label %bb.e
    i16 32767, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %.029161.i, i64 30
  br label %bb.e

.critedge.critedge.i:                             ; preds = %bb.c
  %i.ae = ptrtoint ptr %.029161.i to i64
  %i.af = ptrtoint ptr %1 to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 1
  br label %_ZN7simdutf7haswell12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE1EEEKNS_6resultEPKDsm.exit

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i
  %.4.i = phi ptr [ %i.e, %.lr.ph.i ], [ %i.e, %bb.c ], [ %i.ad, %bb.d ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.4.i, i64 128
  %i.aj = icmp ult ptr %i.ai, %i.b
  br i1 %i.aj, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !45

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.029.lcssa.i = phi ptr [ %1, %bb.b ], [ %.4.i, %bb.e ]
  %i.ak = ptrtoint ptr %.029.lcssa.i to i64
  %i.al = ptrtoint ptr %1 to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = ashr exact i64 %i.am, 1
  br label %_ZN7simdutf7haswell12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE1EEEKNS_6resultEPKDsm.exit

_ZN7simdutf7haswell12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE1EEEKNS_6resultEPKDsm.exit: ; preds = %bb.a, %.critedge.critedge.i, %._crit_edge.i
  %.sroa.057.1.i = phi i32 [ 0, %bb.a ], [ 6, %.critedge.critedge.i ], [ 0, %._crit_edge.i ]
  %.sroa.4.1.i = phi i64 [ 0, %bb.a ], [ %i.ah, %.critedge.critedge.i ], [ %i.an, %._crit_edge.i ] ; 4 uses
  %.not = icmp eq i64 %.sroa.4.1.i, %2
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE1EEEKNS_6resultEPKDsm.exit
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.4.1.i ; 2 uses
  %i.ap = sub i64 %2, %.sroa.4.1.i                ; 2 uses
  br label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.f, %bb.i
  %.02537.i = phi i64 [ %.4.i13, %bb.i ], [ 0, %bb.f ] ; 5 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %.02537.i
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar) ; 2 uses
  %i.at = and i16 %i.as, -2048
  %i.au = icmp eq i16 %i.at, -10240
  %i.av = add nuw i64 %.02537.i, 1                ; 3 uses
  br i1 %i.au, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i12
  %.not.i = icmp ult i64 %i.av, %i.ap
  %i.aw = and i16 %i.as, -9216
  %.not30.i = icmp eq i16 %i.aw, -10240
  %or.cond.i = and i1 %.not.i, %.not30.i
  br i1 %or.cond.i, label %bb.h, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.av
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = and i16 %i.ay, 252
  %.not32.i = icmp eq i16 %i.az, 220
  br i1 %.not32.i, label %.thread.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit

.thread.i:                                        ; preds = %bb.h
  %i.ba = add i64 %.02537.i, 2
  br label %bb.i

bb.i:                                             ; preds = %.thread.i, %.lr.ph.i12
  %.4.i13 = phi i64 [ %i.ba, %.thread.i ], [ %i.av, %.lr.ph.i12 ] ; 3 uses
  %i.bb = icmp ult i64 %.4.i13, %i.ap
  br i1 %i.bb, label %.lr.ph.i12, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit, !llvm.loop !10

_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.025.lcssa.i = phi i64 [ %.02537.i, %bb.g ], [ %.4.i13, %bb.i ], [ %.02537.i, %bb.h ]
  %.sroa.0.3.i = phi i32 [ 6, %bb.g ], [ 0, %bb.i ], [ 6, %bb.h ]
  %i.bc = add i64 %.025.lcssa.i, %.sroa.4.1.i
  br label %bb.j

bb.j:                                             ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE1EEEKNS_6resultEPKDsm.exit, %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit
  %.sroa.3.0 = phi i64 [ %i.bc, %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit ], [ %2, %_ZN7simdutf7haswell12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE1EEEKNS_6resultEPKDsm.exit ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.3.i, %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit ], [ %.sroa.057.1.i, %_ZN7simdutf7haswell12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE1EEEKNS_6resultEPKDsm.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK7simdutf7haswell14implementation22to_well_formed_utf16leEPKDsmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, ptr nofree noundef captures(address) %3) unnamed_addr #16 align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 17
  br i1 %i.a, label %bb.b, label %bb.an

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i64 %2, 9
  br i1 %i.b, label %bb.c, label %bb.ai

bb.c:                                             ; preds = %bb.b
  %.not33.i.i.i = icmp eq i64 %2, 0
  br i1 %.not33.i.i.i, label %_ZN7simdutf7haswell12_GLOBAL__N_112utf16fix_avxILNS_10endiannessE0EEEvPKDsmPDs.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.c = load i16, ptr %1, align 2
  %i.d = and i16 %i.c, -1024                      ; 2 uses
  %i.e = icmp eq i16 %i.d, -10240                 ; 2 uses
  %i.f = icmp eq i16 %i.d, -9216
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.g = load i16, ptr %1, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.sink.i.i.i = phi i16 [ %i.g, %bb.d ], [ -3, %.lr.ph.i.i.i ]
  store i16 %.sink.i.i.i, ptr %3, align 2
  %exitcond.not.i.i.i = icmp eq i64 %2, 1
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.i = load i16, ptr %i.h, align 2
  %i.j = and i16 %i.i, -1024                      ; 2 uses
  %i.k = icmp eq i16 %i.j, -10240                 ; 2 uses
  %i.l = icmp eq i16 %i.j, -9216                  ; 2 uses
  %.not.i.i.i.1 = xor i1 %i.e, true               ; 2 uses
  %or.cond.i.i.i.1 = or i1 %i.l, %.not.i.i.i.1
  br i1 %or.cond.i.i.i.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.1
  store i16 -3, ptr %3, align 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i.1
  %or.cond4.i.i.i.1 = and i1 %i.l, %.not.i.i.i.1
  br i1 %or.cond4.i.i.i.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = load i16, ptr %i.h, align 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink.i.i.i.1 = phi i16 [ %i.m, %bb.h ], [ -3, %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %.sink.i.i.i.1, ptr %i.n, align 2
  %exitcond.not.i.i.i.1 = icmp eq i64 %2, 2
  br i1 %exitcond.not.i.i.i.1, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.p = load i16, ptr %i.o, align 2
  %i.q = and i16 %i.p, -1024                      ; 2 uses
  %i.r = icmp eq i16 %i.q, -10240                 ; 2 uses
  %i.s = icmp eq i16 %i.q, -9216                  ; 2 uses
  %.not.i.i.i.2 = xor i1 %i.k, true               ; 2 uses
  %or.cond.i.i.i.2 = or i1 %i.s, %.not.i.i.i.2
  br i1 %or.cond.i.i.i.2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.2
  %i.t = getelementptr i8, ptr %3, i64 2
  store i16 -3, ptr %i.t, align 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.i.i.i.2
  %or.cond4.i.i.i.2 = and i1 %i.s, %.not.i.i.i.2
  br i1 %or.cond4.i.i.i.2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = load i16, ptr %i.o, align 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink.i.i.i.2 = phi i16 [ %i.u, %bb.l ], [ -3, %bb.k ]
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 %.sink.i.i.i.2, ptr %i.v, align 2
  %exitcond.not.i.i.i.2 = icmp eq i64 %2, 3
  br i1 %exitcond.not.i.i.i.2, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.3

.lr.ph.i.i.i.3:                                   ; preds = %bb.m
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2
  %i.y = and i16 %i.x, -1024                      ; 2 uses
  %i.z = icmp eq i16 %i.y, -10240                 ; 2 uses
  %i.aa = icmp eq i16 %i.y, -9216                 ; 2 uses
  %.not.i.i.i.3 = xor i1 %i.r, true               ; 2 uses
  %or.cond.i.i.i.3 = or i1 %i.aa, %.not.i.i.i.3
  br i1 %or.cond.i.i.i.3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.3
  %i.ab = getelementptr i8, ptr %3, i64 4
  store i16 -3, ptr %i.ab, align 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i.i.3
  %or.cond4.i.i.i.3 = and i1 %i.aa, %.not.i.i.i.3
  br i1 %or.cond4.i.i.i.3, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = load i16, ptr %i.w, align 2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink.i.i.i.3 = phi i16 [ %i.ac, %bb.p ], [ -3, %bb.o ]
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i16 %.sink.i.i.i.3, ptr %i.ad, align 2
  %exitcond.not.i.i.i.3 = icmp eq i64 %2, 4
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.4

.lr.ph.i.i.i.4:                                   ; preds = %bb.q
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = and i16 %i.af, -1024                    ; 2 uses
  %i.ah = icmp eq i16 %i.ag, -10240               ; 2 uses
  %i.ai = icmp eq i16 %i.ag, -9216                ; 2 uses
  %.not.i.i.i.4 = xor i1 %i.z, true               ; 2 uses
  %or.cond.i.i.i.4 = or i1 %i.ai, %.not.i.i.i.4
  br i1 %or.cond.i.i.i.4, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i.4
  %i.aj = getelementptr i8, ptr %3, i64 6
  store i16 -3, ptr %i.aj, align 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.i.i.4
  %or.cond4.i.i.i.4 = and i1 %i.ai, %.not.i.i.i.4
  br i1 %or.cond4.i.i.i.4, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = load i16, ptr %i.ae, align 2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink.i.i.i.4 = phi i16 [ %i.ak, %bb.t ], [ -3, %bb.s ]
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 %.sink.i.i.i.4, ptr %i.al, align 2
  %exitcond.not.i.i.i.4 = icmp eq i64 %2, 5
  br i1 %exitcond.not.i.i.i.4, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.5

.lr.ph.i.i.i.5:                                   ; preds = %bb.u
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = and i16 %i.an, -1024                    ; 2 uses
  %i.ap = icmp eq i16 %i.ao, -10240               ; 2 uses
  %i.aq = icmp eq i16 %i.ao, -9216                ; 2 uses
  %.not.i.i.i.5 = xor i1 %i.ah, true              ; 2 uses
  %or.cond.i.i.i.5 = or i1 %i.aq, %.not.i.i.i.5
  br i1 %or.cond.i.i.i.5, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.5
  %i.ar = getelementptr i8, ptr %3, i64 8
  store i16 -3, ptr %i.ar, align 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i.i.i.5
  %or.cond4.i.i.i.5 = and i1 %i.aq, %.not.i.i.i.5
  br i1 %or.cond4.i.i.i.5, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.as = load i16, ptr %i.am, align 2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sink.i.i.i.5 = phi i16 [ %i.as, %bb.x ], [ -3, %bb.w ]
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i16 %.sink.i.i.i.5, ptr %i.at, align 2
  %exitcond.not.i.i.i.5 = icmp eq i64 %2, 6
  br i1 %exitcond.not.i.i.i.5, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.6
end_hunk_2
begin_hunk_3_@_ZNK7simdutf7haswell14implementation22convert_utf8_to_latin1EPKcmPc:bb.a

bb.e:                                             ; preds = %.lr.ph628
  store <2 x i64> %.val, ptr %.1624, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.1624, i64 12
  br label %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit

bb.f:                                             ; preds = %.lr.ph628
  %i.cc = and i64 %.043.i626, 4095
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf1612utf8bigindexE, i64 %i.cc ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 2             ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = icmp ugt i8 %i.ce, 63
  br i1 %i.ch, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = zext nneg i8 %i.ce to i64
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.ci
  %i.ck = load <16 x i8>, ptr %i.cj, align 16
  %i.cl = bitcast <2 x i64> %.val to <16 x i8>
  %i.cm = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.cl, <16 x i8> %i.ck) ; 2 uses
  %i.cn = bitcast <16 x i8> %i.cm to <2 x i64>
  %i.co = and <2 x i64> %i.cn, splat (i64 35747867511423103)
  %i.cp = bitcast <16 x i8> %i.cm to <8 x i16>
  %i.cq = lshr <8 x i16> %i.cp, splat (i16 2)
  %i.cr = bitcast <8 x i16> %i.cq to <2 x i64>
  %i.cs = and <2 x i64> %i.cr, splat (i64 558454875139082176)
  %i.ct = or <2 x i64> %i.cs, %i.co
  %i.cu = bitcast <2 x i64> %i.ct to <8 x i16>
  %i.cv = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cu, <8 x i16> poison)
  %i.cw = bitcast <16 x i8> %i.cv to <2 x i64>
  %i.cx = extractelement <2 x i64> %i.cw, i64 0
  store i64 %i.cx, ptr %.1624, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %.1624, i64 6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.4 = phi ptr [ %.1624, %bb.f ], [ %i.cy, %bb.g ]
  %.0.i = zext i8 %i.cg to i64
  br label %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit

_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit: ; preds = %bb.e, %bb.h
  %.5 = phi ptr [ %i.cb, %bb.e ], [ %.4, %bb.h ]  ; 2 uses
  %.1.i = phi i64 [ 12, %bb.e ], [ %.0.i, %bb.h ] ; 2 uses
  %i.cz = add i64 %.1.i, %.150.i625               ; 3 uses
  %i.da = lshr i64 %.043.i626, %.1.i
  %i.db = icmp ult i64 %i.cz, %i.bq
  br i1 %i.db, label %.lr.ph628, label %.loopexit, !llvm.loop !560

.loopexit:                                        ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit, %bb.d, %bb.b
  %.2 = phi ptr [ %i.y, %bb.b ], [ %.0632, %bb.d ], [ %.5, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 2 uses
  %.sroa.0.1 = phi <4 x i64> [ %.sroa.0.0633, %bb.b ], [ %i.bl, %bb.d ], [ %i.bl, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 2 uses
  %.453.i = phi i64 [ %i.n, %bb.b ], [ %.049.i634, %bb.d ], [ %i.cz, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 3 uses
  %i.dc = add i64 %.453.i, 64                     ; 2 uses
  %i.dd = add i64 %i.l, %i.dc
  %.not.i = icmp ugt i64 %i.dd, %2
  br i1 %.not.i, label %._crit_edge637, label %.lr.ph636, !llvm.loop !561

._crit_edge637:                                   ; preds = %.loopexit, %._crit_edge
  %.0.lcssa = phi ptr [ %3, %._crit_edge ], [ %.2, %.loopexit ] ; 5 uses
  %.sroa.0.0.lcssa = phi <4 x i64> [ zeroinitializer, %._crit_edge ], [ %.sroa.0.1, %.loopexit ] ; 2 uses
  %.049.i.lcssa = phi i64 [ 0, %._crit_edge ], [ %.453.i, %.loopexit ] ; 3 uses
  %i.de = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %.sroa.0.0.lcssa, <4 x i64> %.sroa.0.0.lcssa)
  %.not = icmp eq i32 %i.de, 0
  br i1 %.not, label %_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge637
  %i.df = icmp ult i64 %.049.i.lcssa, %2
  br i1 %i.df, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %.049.i.lcssa ; 2 uses
  %i.dh = sub nuw i64 %2, %.049.i.lcssa           ; 3 uses
  br label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %bb.j, %.backedge.i
  %.04778.i = phi i64 [ %.047.be.i, %.backedge.i ], [ 0, %bb.j ] ; 6 uses
  %.05077.i = phi ptr [ %.050.be.i, %.backedge.i ], [ %.0.lcssa, %bb.j ] ; 20 uses
  %i.di = add i64 %.04778.i, 16                   ; 2 uses
  %.not.i2 = icmp ugt i64 %i.di, %i.dh
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.04778.i ; 17 uses
  br i1 %.not.i2, label %.lr.ph79..thread_crit_edge.i, label %bb.k

.lr.ph79..thread_crit_edge.i:                     ; preds = %.lr.ph79.i
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1
  br label %.thread.i

bb.k:                                             ; preds = %.lr.ph79.i
  %.0.copyload15.i = load i64, ptr %.phi.trans.insert.i, align 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 8 ; 2 uses
  %.0.copyload.i = load i64, ptr %i.dj, align 1
  %i.dk = or i64 %.0.copyload.i, %.0.copyload15.i
  %i.dl = and i64 %i.dk, -9187201950435737472
  %i.dm = icmp eq i64 %i.dl, 0
  %i.dn = trunc i64 %.0.copyload15.i to i8        ; 2 uses
  br i1 %i.dm, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %bb.k
  %i.do = icmp ult i64 %.04778.i, -16
  br i1 %i.do, label %.lr.ph.preheader.i, label %.backedge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.05077.i, i64 1
  store i8 %i.dn, ptr %.05077.i, align 1
  %i.dq = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 1
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %.05077.i, i64 2
  store i8 %i.dr, ptr %i.dp, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 2
  %i.du = load i8, ptr %i.dt, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %.05077.i, i64 3
  store i8 %i.du, ptr %i.ds, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 3
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %.05077.i, i64 4
  store i8 %i.dx, ptr %i.dv, align 1
  %i.dz = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 4
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %.05077.i, i64 5
  store i8 %i.ea, ptr %i.dy, align 1
  %i.ec = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 5
  %i.ed = load i8, ptr %i.ec, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %.05077.i, i64 6
  store i8 %i.ed, ptr %i.eb, align 1
  %i.ef = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 6
  %i.eg = load i8, ptr %i.ef, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %.05077.i, i64 7
  store i8 %i.eg, ptr %i.ee, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 7
  %i.ej = load i8, ptr %i.ei, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %.05077.i, i64 8
  store i8 %i.ej, ptr %i.eh, align 1
  %i.el = load i8, ptr %i.dj, align 1
  %i.em = getelementptr inbounds nuw i8, ptr %.05077.i, i64 9
  store i8 %i.el, ptr %i.ek, align 1
  %i.en = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 9
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = getelementptr inbounds nuw i8, ptr %.05077.i, i64 10
  store i8 %i.eo, ptr %i.em, align 1
  %i.eq = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 10
  %i.er = load i8, ptr %i.eq, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %.05077.i, i64 11
  store i8 %i.er, ptr %i.ep, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 11
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = getelementptr inbounds nuw i8, ptr %.05077.i, i64 12
  store i8 %i.eu, ptr %i.es, align 1
  %i.ew = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 12
  %i.ex = load i8, ptr %i.ew, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %.05077.i, i64 13
  store i8 %i.ex, ptr %i.ev, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 13
  %i.fa = load i8, ptr %i.ez, align 1
  %i.fb = getelementptr inbounds nuw i8, ptr %.05077.i, i64 14
  store i8 %i.fa, ptr %i.ey, align 1
  %i.fc = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 14
  %i.fd = load i8, ptr %i.fc, align 1
  %i.fe = getelementptr inbounds nuw i8, ptr %.05077.i, i64 15
  store i8 %i.fd, ptr %i.fb, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 15
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = getelementptr inbounds nuw i8, ptr %.05077.i, i64 16
  store i8 %i.fg, ptr %i.fe, align 1
  br label %.backedge.i

.thread.i:                                        ; preds = %bb.k, %.lr.ph79..thread_crit_edge.i
  %i.fi = phi i8 [ %.pre.i, %.lr.ph79..thread_crit_edge.i ], [ %i.dn, %bb.k ] ; 4 uses
  %i.fj = zext i8 %i.fi to i32                    ; 2 uses
  %i.fk = icmp sgt i8 %i.fi, -1
  br i1 %i.fk, label %bb.p, label %bb.l

bb.l:                                             ; preds = %.thread.i
  %i.fl = and i32 %i.fj, 224
  %i.fm = icmp eq i32 %i.fl, 192
  br i1 %i.fm, label %bb.m, label %_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit

bb.m:                                             ; preds = %bb.l
  %i.fn = add nuw i64 %.04778.i, 1                ; 2 uses
  %.not67.i = icmp ult i64 %i.fn, %i.dh
  br i1 %.not67.i, label %bb.n, label %_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit

bb.n:                                             ; preds = %bb.m
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1             ; 2 uses
  %.not68.i = icmp slt i8 %i.fp, -64
  %i.fq = and i32 %i.fj, 30
  %or.cond.not.i = icmp eq i32 %i.fq, 2
  %or.cond.i = and i1 %or.cond.not.i, %.not68.i
  br i1 %or.cond.i, label %bb.o, label %_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit

bb.o:                                             ; preds = %bb.n
  %i.fr = shl i8 %i.fi, 6
  %i.fs = and i8 %i.fp, 63
  %i.ft = or disjoint i8 %i.fs, %i.fr
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread.i
  %.sink87.i = phi i8 [ %i.ft, %bb.o ], [ %i.fi, %.thread.i ]
  %.sink.i = phi i64 [ 2, %bb.o ], [ 1, %.thread.i ]
  store i8 %.sink87.i, ptr %.05077.i, align 1
  %i.fu = add i64 %.sink.i, %.04778.i
  %.656.i = getelementptr inbounds nuw i8, ptr %.05077.i, i64 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.p, %.lr.ph.preheader.i, %.preheader.i
  %.050.be.i = phi ptr [ %.656.i, %bb.p ], [ %.05077.i, %.preheader.i ], [ %i.fh, %.lr.ph.preheader.i ] ; 3 uses
  %.047.be.i = phi i64 [ %i.fu, %bb.p ], [ %.04778.i, %.preheader.i ], [ %i.di, %.lr.ph.preheader.i ] ; 2 uses
  %i.fv = icmp ult i64 %.047.be.i, %i.dh
  br i1 %i.fv, label %.lr.ph79.i, label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit, !llvm.loop !13

_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit: ; preds = %.backedge.i
  %.not56.i = icmp eq ptr %.050.be.i, %.0.lcssa
  br i1 %.not56.i, label %_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit, label %bb.q

bb.q:                                             ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit
  %i.fw = ptrtoint ptr %.0.lcssa to i64
  %i.fx = ptrtoint ptr %.050.be.i to i64
  %i.fy = sub i64 %i.fx, %i.fw
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %i.fy
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.i
  %.3 = phi ptr [ %i.fz, %bb.q ], [ %.0.lcssa, %bb.i ]
  %i.ga = ptrtoint ptr %.3 to i64
  %i.gb = ptrtoint ptr %3 to i64
  %i.gc = sub i64 %i.ga, %i.gb
  br label %_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit

_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit: ; preds = %bb.c, %bb.l, %bb.n, %bb.m, %._crit_edge637, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit, %bb.r
  %.5.i = phi i64 [ 0, %bb.l ], [ 0, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit ], [ %i.gc, %bb.r ], [ 0, %._crit_edge637 ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.c ]
  ret i64 %.5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i32, i64 } @_ZNK7simdutf7haswell14implementation34convert_utf8_to_latin1_with_errorsEPKcmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #20 align 2 {
bb.a:
  %.not701 = icmp eq i64 %2, 0
  br i1 %.not701, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.054.i677 = phi i64 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.055.i676 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %i.a = getelementptr i8, ptr %1, i64 %.054.i677
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp sgt i8 %i.c, -65
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %.055.i676, %i.e         ; 2 uses
  %i.g = add i64 %.054.i677, -1                   ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp samesign ult i64 %i.f, 8
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !564

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.054.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  %i.k = add i64 %2, 1
  %i.l = sub i64 %i.k, %.054.i.lcssa              ; 2 uses
  %i.m = add i64 %i.l, 64
  %.not.i686 = icmp ugt i64 %i.m, %2
  br i1 %.not.i686, label %._crit_edge694, label %.lr.ph693

.lr.ph693:                                        ; preds = %._crit_edge, %.loopexit.thread
  %i.n = phi i64 [ %i.dq, %.loopexit.thread ], [ 64, %._crit_edge ]
  %i.o = phi i64 [ %i.dp, %.loopexit.thread ], [ 0, %._crit_edge ]
  %.0.i691 = phi i64 [ %.4.i, %.loopexit.thread ], [ 0, %._crit_edge ] ; 9 uses
  %.sroa.0.0690 = phi <4 x i64> [ %.sroa.0.1, %.loopexit.thread ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.0689 = phi ptr [ %.3, %.loopexit.thread ], [ %3, %._crit_edge ] ; 7 uses
  %.sroa.056.0688 = phi i32 [ %.sroa.056.2, %.loopexit.thread ], [ undef, %._crit_edge ] ; 3 uses
  %.sroa.757.0687 = phi i64 [ %.sroa.757.2, %.loopexit.thread ], [ undef, %._crit_edge ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i691 ; 4 uses
  %i.q = load <4 x i64>, ptr %i.p, align 1, !noalias !571 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load <4 x i64>, ptr %i.r, align 1, !noalias !572 ; 6 uses
  %i.t = or <4 x i64> %i.s, %i.q
  %i.u = bitcast <4 x i64> %i.t to <32 x i8>
  %i.v = icmp slt <32 x i8> %i.u, zeroinitializer
  %i.w = bitcast <32 x i1> %i.v to i32
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph693
  store <4 x i64> %i.q, ptr %.0689, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %.0689, i64 32
  store <4 x i64> %i.s, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %.0689, i64 64
  br label %.loopexit.thread

bb.c:                                             ; preds = %.lr.ph693
  %i.aa = bitcast <4 x i64> %i.q to <32 x i8>
  %i.ab = shufflevector <4 x i64> <i64 poison, i64 poison, i64 poison, i64 0>, <4 x i64> %i.q, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.ac = bitcast <4 x i64> %i.ab to <32 x i8>
  %i.ad = shufflevector <32 x i8> %i.ac, <32 x i8> %i.aa, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.ae = bitcast <32 x i8> %i.ad to <16 x i16>
  %i.af = lshr <16 x i16> %i.ae, splat (i16 4)
  %i.ag = bitcast <16 x i16> %i.af to <32 x i8>
  %i.ah = and <32 x i8> %i.ag, splat (i8 15)
  %i.ai = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 -1, i8 -1, i8 -1, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 -1, i8 -1, i8 -1>, <32 x i8> %i.ah)
  %i.aj = and <32 x i8> %i.ad, splat (i8 15)
  %i.ak = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -25, i8 -93, i8 -125, i8 -125, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <32 x i8> %i.aj)
  %i.al = bitcast <4 x i64> %i.q to <16 x i16>
  %i.am = lshr <16 x i16> %i.al, splat (i16 4)
  %i.an = bitcast <16 x i16> %i.am to <32 x i8>
  %i.ao = and <32 x i8> %i.an, splat (i8 15)
  %i.ap = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.ao)
  %i.aq = and <32 x i8> %i.ak, %i.ai
  %i.ar = and <32 x i8> %i.aq, %i.ap
  %i.as = bitcast <4 x i64> %i.s to <32 x i8>
  %i.at = shufflevector <4 x i64> %i.q, <4 x i64> %i.s, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.au = bitcast <4 x i64> %i.at to <32 x i8>
  %i.av = shufflevector <32 x i8> %i.au, <32 x i8> %i.as, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.aw = bitcast <32 x i8> %i.av to <16 x i16>
  %i.ax = lshr <16 x i16> %i.aw, splat (i16 4)
  %i.ay = bitcast <16 x i16> %i.ax to <32 x i8>
  %i.az = and <32 x i8> %i.ay, splat (i8 15)
  %i.ba = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 -1, i8 -1, i8 -1, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 -1, i8 -1, i8 -1>, <32 x i8> %i.az)
  %i.bb = and <32 x i8> %i.av, splat (i8 15)
  %i.bc = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -25, i8 -93, i8 -125, i8 -125, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <32 x i8> %i.bb)
  %i.bd = bitcast <4 x i64> %i.s to <16 x i16>
  %i.be = lshr <16 x i16> %i.bd, splat (i16 4)
  %i.bf = bitcast <16 x i16> %i.be to <32 x i8>
  %i.bg = and <32 x i8> %i.bf, splat (i8 15)
  %i.bh = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.bg)
  %i.bi = and <32 x i8> %i.bc, %i.ba
  %i.bj = and <32 x i8> %i.bi, %i.bh
  %i.bk = or <32 x i8> %i.bj, %i.ar
  %i.bl = bitcast <32 x i8> %i.bk to <4 x i64>
  %i.bm = or <4 x i64> %.sroa.0.0690, %i.bl       ; 4 uses
  %i.bn = tail call noundef i32 @llvm.x86.avx.ptestz.256(<4 x i64> %i.bm, <4 x i64> %i.bm)
  %.not = icmp eq i32 %i.bn, 0                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.bo = add i64 %i.o, %2
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.02566.i = phi i64 [ 0, %bb.d ], [ %i.bv, %bb.g ] ; 6 uses
  %i.bp = sub nsw i64 0, %.02566.i                ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.p, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1             ; 2 uses
  %i.bs = icmp sgt i8 %i.br, -65
  br i1 %i.bs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bt = icmp ne i64 %.02566.i, 0
  %i.bu = icmp sgt i8 %i.br, -1
  %or.cond.i = and i1 %i.bt, %i.bu
  br i1 %or.cond.i, label %bb.h, label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.bv = add i64 %.02566.i, 1                    ; 2 uses
  %.not.i2 = icmp ugt i64 %i.bv, %.0.i691
  br i1 %.not.i2, label %bb.i, label %bb.e, !llvm.loop !29

bb.h:                                             ; preds = %bb.f
  %i.bw = sub i64 1, %.02566.i
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit

bb.i:                                             ; preds = %bb.g
  %i.bx = sub i64 0, %.0.i691
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit

bb.j:                                             ; preds = %bb.f
  %i.by = getelementptr inbounds i8, ptr %i.p, i64 %i.bp
  %i.bz = add i64 %i.bo, %.02566.i
  %i.ca = tail call fastcc { i32, i64 } @_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin119convert_with_errorsEPKcmPc(ptr noundef nonnull readonly %i.by, i64 noundef %i.bz, ptr noundef %.0689) ; 2 uses
  %i.cb = extractvalue { i32, i64 } %i.ca, 0      ; 2 uses
  %i.cc = extractvalue { i32, i64 } %i.ca, 1
  %.not33.i = icmp eq i32 %i.cb, 0
  %i.cd = select i1 %.not33.i, i64 0, i64 %.02566.i
  %spec.select.i = sub i64 %i.cc, %i.cd
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit

_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit: ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.4.3.i = phi i64 [ %spec.select.i, %bb.j ], [ %i.bx, %bb.i ], [ %i.bw, %bb.h ]
  %.sroa.0.3.i = phi i32 [ %i.cb, %bb.j ], [ 3, %bb.i ], [ 3, %bb.h ]
  %i.ce = add i64 %.sroa.4.3.i, %.0.i691
  br label %.loopexit

bb.k:                                             ; preds = %bb.c
  %i.cf = add i64 %.0.i691, 52
  %i.cg = icmp ult i64 %.0.i691, -52
  br i1 %i.cg, label %.lr.ph682.preheader, label %.loopexit.thread

.lr.ph682.preheader:                              ; preds = %bb.k
  %i.ch = shufflevector <4 x i64> %i.q, <4 x i64> %i.s, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ci = bitcast <8 x i64> %i.ch to <64 x i8>
  %i.cj = icmp sgt <64 x i8> %i.ci, splat (i8 -65)
  %i.ck = bitcast <64 x i1> %i.cj to i64
  %i.cl = lshr i64 %i.ck, 1
  br label %.lr.ph682

.lr.ph682:                                        ; preds = %.lr.ph682.preheader, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit
  %.1.i680 = phi i64 [ %i.dm, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %.0.i691, %.lr.ph682.preheader ] ; 2 uses
  %.051.i679 = phi i64 [ %i.dn, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %i.cl, %.lr.ph682.preheader ] ; 3 uses
  %.1678 = phi ptr [ %.6, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %.0689, %.lr.ph682.preheader ] ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i680
  %.val = load <2 x i64>, ptr %i.cm, align 1      ; 2 uses
  %i.cn = icmp eq i64 %.051.i679, 4095
  br i1 %i.cn, label %bb.l, label %bb.m
end_hunk_3
begin_hunk_4_@_ZNK7simdutf7haswell14implementation28convert_valid_utf8_to_latin1EPKcmPc:bb.a
  %i.af = lshr i64 %i.ae, 1
  br label %.lr.ph103

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit
  %.1.i101 = phi i64 [ %i.bg, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %.0.i108, %.lr.ph103.preheader ] ; 2 uses
  %.034.i100 = phi i64 [ %i.bh, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %i.af, %.lr.ph103.preheader ] ; 3 uses
  %.199 = phi ptr [ %.5, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %.0107, %.lr.ph103.preheader ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i101
  %.val = load <2 x i64>, ptr %i.ag, align 1      ; 2 uses
  %i.ah = icmp eq i64 %.034.i100, 4095
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph103
  store <2 x i64> %.val, ptr %.199, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.199, i64 12
  br label %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit

bb.e:                                             ; preds = %.lr.ph103
  %i.aj = and i64 %.034.i100, 4095
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf1612utf8bigindexE, i64 %i.aj ; 2 uses
  %i.al = load i8, ptr %i.ak, align 2             ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = icmp ugt i8 %i.al, 63
  br i1 %i.ao, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = zext nneg i8 %i.al to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.ap
  %i.ar = load <16 x i8>, ptr %i.aq, align 16
  %i.as = bitcast <2 x i64> %.val to <16 x i8>
  %i.at = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.as, <16 x i8> %i.ar) ; 2 uses
  %i.au = bitcast <16 x i8> %i.at to <2 x i64>
  %i.av = and <2 x i64> %i.au, splat (i64 35747867511423103)
  %i.aw = bitcast <16 x i8> %i.at to <8 x i16>
  %i.ax = lshr <8 x i16> %i.aw, splat (i16 2)
  %i.ay = bitcast <8 x i16> %i.ax to <2 x i64>
  %i.az = and <2 x i64> %i.ay, splat (i64 558454875139082176)
  %i.ba = or <2 x i64> %i.az, %i.av
  %i.bb = bitcast <2 x i64> %i.ba to <8 x i16>
  %i.bc = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bb, <8 x i16> poison)
  %i.bd = bitcast <16 x i8> %i.bc to <2 x i64>
  %i.be = extractelement <2 x i64> %i.bd, i64 0
  store i64 %i.be, ptr %.199, align 1
  %i.bf = getelementptr inbounds nuw i8, ptr %.199, i64 6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.4 = phi ptr [ %.199, %bb.e ], [ %i.bf, %bb.f ]
  %.0.i2 = zext i8 %i.an to i64
  br label %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit

_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit: ; preds = %bb.d, %bb.g
  %.5 = phi ptr [ %i.ai, %bb.d ], [ %.4, %bb.g ]  ; 2 uses
  %.1.i3 = phi i64 [ 12, %bb.d ], [ %.0.i2, %bb.g ] ; 2 uses
  %i.bg = add i64 %.1.i3, %.1.i101                ; 3 uses
  %i.bh = lshr i64 %.034.i100, %.1.i3
  %i.bi = icmp ult i64 %i.bg, %i.z
  br i1 %i.bi, label %.lr.ph103, label %.loopexit, !llvm.loop !578

.loopexit:                                        ; preds = %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit, %bb.c, %bb.b
  %.2 = phi ptr [ %i.y, %bb.b ], [ %.0107, %bb.c ], [ %.5, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 2 uses
  %.2.i = phi i64 [ %i.n, %bb.b ], [ %.0.i108, %bb.c ], [ %i.bg, %_ZN7simdutf7haswell12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 3 uses
  %i.bj = add i64 %.2.i, 64                       ; 2 uses
  %i.bk = add i64 %i.l, %i.bj
  %.not.i = icmp ugt i64 %i.bk, %2
  br i1 %.not.i, label %._crit_edge111, label %.lr.ph110, !llvm.loop !579

._crit_edge111:                                   ; preds = %.loopexit, %._crit_edge
  %.0.lcssa = phi ptr [ %3, %._crit_edge ], [ %.2, %.loopexit ] ; 4 uses
  %.0.i.lcssa = phi i64 [ 0, %._crit_edge ], [ %.2.i, %.loopexit ] ; 3 uses
  %i.bl = icmp ult i64 %.0.i.lcssa, %2
  br i1 %i.bl, label %bb.h, label %_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit

bb.h:                                             ; preds = %._crit_edge111
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i.lcssa ; 2 uses
  %i.bn = sub nuw i64 %2, %.0.i.lcssa             ; 3 uses
  br label %.lr.ph76.i

.lr.ph76.i:                                       ; preds = %bb.h, %.backedge.i
  %.04475.i = phi i64 [ %.044.be.i, %.backedge.i ], [ 0, %bb.h ] ; 6 uses
  %.04774.i = phi ptr [ %.047.be.i, %.backedge.i ], [ %.0.lcssa, %bb.h ] ; 21 uses
  %i.bo = add i64 %.04475.i, 16                   ; 2 uses
  %.not.i4 = icmp ugt i64 %i.bo, %i.bn
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.04475.i ; 17 uses
  br i1 %.not.i4, label %.lr.ph76..thread_crit_edge.i, label %bb.i

.lr.ph76..thread_crit_edge.i:                     ; preds = %.lr.ph76.i
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1
  br label %.thread.i

bb.i:                                             ; preds = %.lr.ph76.i
  %.0.copyload10.i = load i64, ptr %.phi.trans.insert.i, align 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 8 ; 2 uses
  %.0.copyload.i = load i64, ptr %i.bp, align 1
  %i.bq = or i64 %.0.copyload.i, %.0.copyload10.i
  %i.br = and i64 %i.bq, -9187201950435737472
  %i.bs = icmp eq i64 %i.br, 0
  %i.bt = trunc i64 %.0.copyload10.i to i8        ; 2 uses
  br i1 %i.bs, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %bb.i
  %i.bu = icmp ult i64 %.04475.i, -16
  br i1 %i.bu, label %.lr.ph.preheader.i, label %.backedge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.04774.i, i64 1
  store i8 %i.bt, ptr %.04774.i, align 1
  %i.bw = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 1
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %.04774.i, i64 2
  store i8 %i.bx, ptr %i.bv, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 2
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.04774.i, i64 3
  store i8 %i.ca, ptr %i.by, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 3
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = getelementptr inbounds nuw i8, ptr %.04774.i, i64 4
  store i8 %i.cd, ptr %i.cb, align 1
  %i.cf = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 4
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.04774.i, i64 5
  store i8 %i.cg, ptr %i.ce, align 1
  %i.ci = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 5
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %.04774.i, i64 6
  store i8 %i.cj, ptr %i.ch, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 6
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.04774.i, i64 7
  store i8 %i.cm, ptr %i.ck, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 7
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %.04774.i, i64 8
  store i8 %i.cp, ptr %i.cn, align 1
  %i.cr = load i8, ptr %i.bp, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %.04774.i, i64 9
  store i8 %i.cr, ptr %i.cq, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 9
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %.04774.i, i64 10
  store i8 %i.cu, ptr %i.cs, align 1
  %i.cw = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 10
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %.04774.i, i64 11
  store i8 %i.cx, ptr %i.cv, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 11
  %i.da = load i8, ptr %i.cz, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %.04774.i, i64 12
  store i8 %i.da, ptr %i.cy, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 12
  %i.dd = load i8, ptr %i.dc, align 1
  %i.de = getelementptr inbounds nuw i8, ptr %.04774.i, i64 13
  store i8 %i.dd, ptr %i.db, align 1
  %i.df = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 13
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = getelementptr inbounds nuw i8, ptr %.04774.i, i64 14
  store i8 %i.dg, ptr %i.de, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 14
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %.04774.i, i64 15
  store i8 %i.dj, ptr %i.dh, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 15
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = getelementptr inbounds nuw i8, ptr %.04774.i, i64 16
  store i8 %i.dm, ptr %i.dk, align 1
  br label %.backedge.i

.thread.i:                                        ; preds = %bb.i, %.lr.ph76..thread_crit_edge.i
  %i.do = phi i8 [ %.pre.i, %.lr.ph76..thread_crit_edge.i ], [ %i.bt, %bb.i ] ; 4 uses
  %i.dp = icmp sgt i8 %i.do, -1
  br i1 %i.dp, label %bb.n, label %bb.j

bb.j:                                             ; preds = %.thread.i
  %i.dq = and i8 %i.do, -32
  %i.dr = icmp eq i8 %i.dq, -64
  br i1 %i.dr, label %bb.k, label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit

bb.k:                                             ; preds = %bb.j
  %i.ds = add nuw i64 %.04475.i, 1                ; 2 uses
  %.not57.i = icmp ult i64 %i.ds, %i.bn
  br i1 %.not57.i, label %bb.l, label %.thread66.i

bb.l:                                             ; preds = %bb.k
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1             ; 2 uses
  %.not58.i = icmp slt i8 %i.du, -64
  br i1 %.not58.i, label %bb.m, label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit

bb.m:                                             ; preds = %bb.l
  %i.dv = shl i8 %i.do, 6
  %i.dw = and i8 %i.du, 63
  %i.dx = or disjoint i8 %i.dw, %i.dv
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread.i
  %.sink86.i = phi i8 [ %i.dx, %bb.m ], [ %i.do, %.thread.i ]
  %.sink.i = phi i64 [ 2, %bb.m ], [ 1, %.thread.i ]
  store i8 %.sink86.i, ptr %.04774.i, align 1
  %i.dy = add i64 %.sink.i, %.04475.i
  %.451.i = getelementptr inbounds nuw i8, ptr %.04774.i, i64 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.n, %.lr.ph.preheader.i, %.preheader.i
  %.047.be.i = phi ptr [ %.451.i, %bb.n ], [ %.04774.i, %.preheader.i ], [ %i.dn, %.lr.ph.preheader.i ] ; 2 uses
  %.044.be.i = phi i64 [ %i.dy, %bb.n ], [ %.04475.i, %.preheader.i ], [ %i.bo, %.lr.ph.preheader.i ] ; 2 uses
  %i.dz = icmp ult i64 %.044.be.i, %i.bn
  br i1 %i.dz, label %.lr.ph76.i, label %.thread66.i

.thread66.i:                                      ; preds = %.backedge.i, %bb.k
  %.047.lcssa.i = phi ptr [ %.047.be.i, %.backedge.i ], [ %.04774.i, %bb.k ]
  %i.ea = ptrtoint ptr %.047.lcssa.i to i64
  %i.eb = ptrtoint ptr %.0.lcssa to i64
  %i.ec = sub i64 %i.ea, %i.eb
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit

_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit: ; preds = %bb.j, %bb.l, %.thread66.i
  %.2.i5 = phi i64 [ %i.ec, %.thread66.i ], [ 0, %bb.l ], [ 0, %bb.j ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %.2.i5
  br label %_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit

_ZN7simdutf7haswell12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit: ; preds = %._crit_edge111, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit
  %.3 = phi ptr [ %i.ed, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit ], [ %.0.lcssa, %._crit_edge111 ]
  %i.ee = ptrtoint ptr %.3 to i64
  %i.ef = ptrtoint ptr %3 to i64
  %i.eg = sub i64 %i.ee, %i.ef
  ret i64 %i.eg
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i64 -4611686018427387904, 4611686018427387904) i64 @_ZNK7simdutf7haswell14implementation23convert_utf8_to_utf16leEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #20 align 2 {
bb.a:
  %.not988 = icmp eq i64 %2, 0
  br i1 %.not988, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.047.i970 = phi i64 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.048.i969 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %i.a = getelementptr i8, ptr %1, i64 %.047.i970
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp sgt i8 %i.c, -65
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %.048.i969, %i.e         ; 2 uses
  %i.g = add i64 %.047.i970, -1                   ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp samesign ult i64 %i.f, 8
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !582

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.047.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  %i.k = add i64 %2, 1
  %i.l = sub i64 %i.k, %.047.i.lcssa              ; 2 uses
  %i.m = add i64 %i.l, 64
  %.not.i978 = icmp ugt i64 %i.m, %2
  br i1 %.not.i978, label %._crit_edge984, label %.lr.ph983

.lr.ph983:                                        ; preds = %._crit_edge, %.loopexit
  %i.n = phi i64 [ %i.hq, %.loopexit ], [ 64, %._crit_edge ]
  %.049.i981 = phi i64 [ %.453.i, %.loopexit ], [ 0, %._crit_edge ] ; 5 uses
  %.sroa.0.0980 = phi <4 x i64> [ %.sroa.0.1, %.loopexit ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.0979 = phi ptr [ %.2, %.loopexit ], [ %3, %._crit_edge ] ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.049.i981 ; 2 uses
  %i.p = load <4 x i64>, ptr %i.o, align 1, !noalias !589 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = load <4 x i64>, ptr %i.q, align 1, !noalias !590 ; 6 uses
  %i.s = or <4 x i64> %i.r, %i.p
  %i.t = bitcast <4 x i64> %i.s to <32 x i8>
  %i.u = icmp slt <32 x i8> %i.t, zeroinitializer
  %i.v = bitcast <32 x i1> %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph983
  %i.x = bitcast <4 x i64> %i.p to <32 x i8>
  %i.y = shufflevector <32 x i8> %i.x, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.z = zext <16 x i8> %i.y to <16 x i16>
  %i.aa = bitcast <4 x i64> %i.p to <32 x i8>
  %i.ab = shufflevector <32 x i8> %i.aa, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ac = zext <16 x i8> %i.ab to <16 x i16>
  store <16 x i16> %i.z, ptr %.0979, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.0979, i64 32
  store <16 x i16> %i.ac, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.0979, i64 64
  %i.af = bitcast <4 x i64> %i.r to <32 x i8>
  %i.ag = shufflevector <32 x i8> %i.af, <32 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ah = zext <16 x i8> %i.ag to <16 x i16>
  %i.ai = bitcast <4 x i64> %i.r to <32 x i8>
  %i.aj = shufflevector <32 x i8> %i.ai, <32 x i8> poison, <16 x i32> <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ak = zext <16 x i8> %i.aj to <16 x i16>
  store <16 x i16> %i.ah, ptr %i.ae, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.0979, i64 96
  store <16 x i16> %i.ak, ptr %i.al, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %.0979, i64 128
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph983
  %i.an = bitcast <4 x i64> %i.p to <32 x i8>     ; 4 uses
  %i.ao = shufflevector <4 x i64> <i64 poison, i64 poison, i64 poison, i64 0>, <4 x i64> %i.p, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.ap = bitcast <4 x i64> %i.ao to <32 x i8>    ; 3 uses
  %i.aq = shufflevector <32 x i8> %i.ap, <32 x i8> %i.an, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.ar = bitcast <32 x i8> %i.aq to <16 x i16>
  %i.as = lshr <16 x i16> %i.ar, splat (i16 4)
  %i.at = bitcast <16 x i16> %i.as to <32 x i8>
  %i.au = and <32 x i8> %i.at, splat (i8 15)
  %i.av = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.au)
  %i.aw = and <32 x i8> %i.aq, splat (i8 15)
  %i.ax = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.aw)
  %i.ay = bitcast <4 x i64> %i.p to <16 x i16>
  %i.az = lshr <16 x i16> %i.ay, splat (i16 4)
  %i.ba = bitcast <16 x i16> %i.az to <32 x i8>
  %i.bb = and <32 x i8> %i.ba, splat (i8 15)
  %i.bc = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.bb)
  %i.bd = and <32 x i8> %i.ax, %i.av
  %i.be = and <32 x i8> %i.bd, %i.bc
  %i.bf = shufflevector <32 x i8> %i.ap, <32 x i8> %i.an, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.bg = shufflevector <32 x i8> %i.ap, <32 x i8> %i.an, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.bh = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.bf, <32 x i8> splat (i8 96))
  %i.bi = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.bg, <32 x i8> splat (i8 112))
  %i.bj = or <32 x i8> %i.bh, %i.bi
  %.inner1001 = and <32 x i8> %i.bj, splat (i8 -128)
  %.inner1002 = xor <32 x i8> %.inner1001, %i.be
  %i.bk = bitcast <4 x i64> %i.r to <32 x i8>     ; 4 uses
  %i.bl = shufflevector <4 x i64> %i.p, <4 x i64> %i.r, <4 x i32> <i32 poison, i32 3, i32 poison, i32 5>
  %i.bm = bitcast <4 x i64> %i.bl to <32 x i8>    ; 3 uses
  %i.bn = shufflevector <32 x i8> %i.bm, <32 x i8> %i.bk, <32 x i32> <i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62> ; 2 uses
  %i.bo = bitcast <32 x i8> %i.bn to <16 x i16>
  %i.bp = lshr <16 x i16> %i.bo, splat (i16 4)
  %i.bq = bitcast <16 x i16> %i.bp to <32 x i8>
  %i.br = and <32 x i8> %i.bq, splat (i8 15)
  %i.bs = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <32 x i8> %i.br)
  %i.bt = and <32 x i8> %i.bn, splat (i8 15)
  %i.bu = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53, i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <32 x i8> %i.bt)
  %i.bv = bitcast <4 x i64> %i.r to <16 x i16>
  %i.bw = lshr <16 x i16> %i.bv, splat (i16 4)
  %i.bx = bitcast <16 x i16> %i.bw to <32 x i8>
  %i.by = and <32 x i8> %i.bx, splat (i8 15)
  %i.bz = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <32 x i8> %i.by)
  %i.ca = and <32 x i8> %i.bu, %i.bs
  %i.cb = and <32 x i8> %i.ca, %i.bz
  %i.cc = shufflevector <32 x i8> %i.bm, <32 x i8> %i.bk, <32 x i32> <i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61>
  %i.cd = shufflevector <32 x i8> %i.bm, <32 x i8> %i.bk, <32 x i32> <i32 13, i32 14, i32 15, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 29, i32 30, i32 31, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60>
  %i.ce = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.cc, <32 x i8> splat (i8 96))
  %i.cf = tail call <32 x i8> @llvm.usub.sat.v32i8(<32 x i8> %i.cd, <32 x i8> splat (i8 112))
  %i.cg = or <32 x i8> %i.ce, %i.cf
  %.inner1005 = and <32 x i8> %i.cg, splat (i8 -128)
  %.inner1006 = xor <32 x i8> %.inner1005, %i.cb
  %.inner1007 = or <32 x i8> %.inner1002, %.inner1006
  %i.ch = bitcast <32 x i8> %.inner1007 to <4 x i64>
  %i.ci = or <4 x i64> %.sroa.0.0980, %i.ch       ; 2 uses
  %i.cj = icmp slt <32 x i8> %i.an, splat (i8 -64)
  %i.ck = bitcast <32 x i1> %i.cj to i32
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %i.cm = and i64 %i.cl, 1
  %.not57.i = icmp eq i64 %i.cm, 0
  br i1 %.not57.i, label %bb.d, label %_ZN7simdutf7haswell12_GLOBAL__N_113utf8_to_utf1621validating_transcoder7convertILNS_10endiannessE0EEEmPKcmPDs.exit

bb.d:                                             ; preds = %bb.c
  %i.cn = add i64 %.049.i981, 52
  %i.co = icmp ult i64 %.049.i981, -52
  br i1 %i.co, label %.lr.ph975.preheader, label %.loopexit

.lr.ph975.preheader:                              ; preds = %bb.d
  %i.cp = icmp slt <32 x i8> %i.bk, splat (i8 -64)
  %i.cq = bitcast <32 x i1> %i.cp to i32
  %i.cr = zext i32 %i.cq to i64
  %i.cs = shl nuw i64 %i.cr, 32
  %i.ct = or disjoint i64 %i.cs, %i.cl
  %i.cu = xor i64 %i.ct, -1
  %i.cv = lshr i64 %i.cu, 1
  br label %.lr.ph975

.lr.ph975:                                        ; preds = %.lr.ph975.preheader, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit
  %.043.i973 = phi i64 [ %i.ho, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ], [ %i.cv, %.lr.ph975.preheader ] ; 4 uses
  %.150.i972 = phi i64 [ %i.hn, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ], [ %.049.i981, %.lr.ph975.preheader ] ; 2 uses
  %.1971 = phi ptr [ %.6, %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit ], [ %.0979, %.lr.ph975.preheader ] ; 14 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %.150.i972
  %.val = load <2 x i64>, ptr %i.cw, align 1      ; 6 uses
  %i.cx = icmp eq i64 %.043.i973, 4095
  br i1 %i.cx, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph975
  %i.cy = bitcast <2 x i64> %.val to <16 x i8>
  %i.cz = zext <16 x i8> %i.cy to <16 x i16>
  store <16 x i16> %i.cz, ptr %.1971, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %.1971, i64 24
  br label %_ZN7simdutf7haswell12_GLOBAL__N_128convert_masked_utf8_to_utf16ILNS_10endiannessE0EEEmPKcmRPDs.exit

bb.f:                                             ; preds = %.lr.ph975
  %i.db = and i64 %.043.i973, 65535
  %i.dc = icmp eq i64 %i.db, 43690
  br i1 %i.dc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dd = bitcast <2 x i64> %.val to <16 x i8>
  %i.de = shufflevector <16 x i8> %i.dd, <16 x i8> poison, <16 x i32> <i32 1, i32 0, i32 3, i32 2, i32 5, i32 4, i32 7, i32 6, i32 9, i32 8, i32 11, i32 10, i32 13, i32 12, i32 15, i32 14> ; 2 uses
  %i.df = bitcast <16 x i8> %i.de to <2 x i64>
  %i.dg = and <2 x i64> %i.df, splat (i64 35747867511423103)
  %i.dh = bitcast <16 x i8> %i.de to <8 x i16>
end_hunk_4
begin_hunk_5_@_ZNK7simdutf8westmere14implementation26validate_ascii_with_errorsEPKcm:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit.i
  %.sroa.458.1.i = phi i64 [ %.sroa.458.0.i, %bb.g ], [ %i.aj, %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit.i ] ; 2 uses
  %.sroa.057.1.i = phi i32 [ %.sroa.057.0.i, %bb.g ], [ %.sroa.0.0.i.i, %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit.i ] ; 2 uses
  %.sroa.11.1.i = phi i64 [ %i.ak, %bb.g ], [ %.sroa.11.0.i, %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit.i ]
  %.1.i = phi i64 [ %i.al, %bb.g ], [ %.0.i, %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit.i ]
  br i1 %i.q, label %bb.b, label %_ZN7simdutf8westmere12_GLOBAL__N_116ascii_validation34generic_validate_ascii_with_errorsEPKcm.exit, !llvm.loop !1062

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.am = icmp eq i64 %2, %.sroa.11.0.i
  br i1 %i.am, label %_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.thread.i, label %_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.i

_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.i: ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 32, i64 64, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.11.0.i
  %i.ao = sub i64 %2, %.sroa.11.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.an, i64 %i.ao, i1 false)
  %.0..0..0..0..0..pre.i = load <2 x i64>, ptr %i.a, align 16
  %.16..16..16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.16..16..16..16..16..pre.i = load <2 x i64>, ptr %.16..16..16..16..16..sroa_idx, align 16
  %.32..32..32..32..32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.32..32..32..32..32..pre.i = load <2 x i64>, ptr %.32..32..32..32..32..sroa_idx, align 16
  %.48..48..48..48..48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.48..48..48..48..48..pre.i = load <2 x i64>, ptr %.48..48..48..48..48..sroa_idx, align 16
  %i.ap = or <2 x i64> %.16..16..16..16..16..pre.i, %.0..0..0..0..0..pre.i
  %i.aq = or <2 x i64> %i.ap, %.32..32..32..32..32..pre.i
  %i.ar = or <2 x i64> %i.aq, %.48..48..48..48..48..pre.i
  %i.as = bitcast <2 x i64> %i.ar to <16 x i8>
  %i.at = icmp slt <16 x i8> %i.as, zeroinitializer
  %i.au = bitcast <16 x i1> %i.at to i16
  %i.av = icmp eq i16 %i.au, 0
  br i1 %i.av, label %_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i ; 3 uses
  %i.ax = sub i64 %2, %.0.i                       ; 8 uses
  %.not33.i21.i = icmp ult i64 %i.ax, 16
  br i1 %.not33.i21.i, label %.preheader.i31.i, label %.lr.ph35.i22.i

.preheader.i31.i:                                 ; preds = %.loopexit.i28.i, %bb.j
  %.025.lcssa.i32.i = phi i64 [ 0, %bb.j ], [ %i.bi, %.loopexit.i28.i ] ; 3 uses
  %i.ay = icmp ult i64 %.025.lcssa.i32.i, %i.ax
  br i1 %i.ay, label %.lr.ph38.i37.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit43.i

.lr.ph35.i22.i:                                   ; preds = %bb.j, %.loopexit.i28.i
  %.02534.i23.i = phi i64 [ %i.bi, %.loopexit.i28.i ], [ 0, %bb.j ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.02534.i23.i ; 2 uses
  %.0.copyload3.i24.i = load i64, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.0.copyload.i25.i = load i64, ptr %i.ba, align 1
  %i.bb = or i64 %.0.copyload.i25.i, %.0.copyload3.i24.i
  %i.bc = and i64 %i.bb, -9187201950435737472
  %.not27.i26.i = icmp ne i64 %i.bc, 0
  %i.bd = icmp ult i64 %.02534.i23.i, %i.ax
  %or.cond.i27.i = and i1 %i.bd, %.not27.i26.i
  br i1 %or.cond.i27.i, label %.lr.ph.i40.i, label %.loopexit.i28.i

.lr.ph.i40.i:                                     ; preds = %.lr.ph35.i22.i, %bb.k
  %.132.i41.i = phi i64 [ %i.bh, %bb.k ], [ %.02534.i23.i, %.lr.ph35.i22.i ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.132.i41.i
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = icmp slt i8 %i.bf, 0
  br i1 %i.bg, label %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit43.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i40.i
  %i.bh = add i64 %.132.i41.i, 1                  ; 2 uses
  %exitcond.not.i42.i = icmp eq i64 %i.bh, %i.ax
  br i1 %exitcond.not.i42.i, label %.loopexit.i28.i, label %.lr.ph.i40.i, !llvm.loop !5

.loopexit.i28.i:                                  ; preds = %bb.k, %.lr.ph35.i22.i
  %.3.i29.i = phi i64 [ %.02534.i23.i, %.lr.ph35.i22.i ], [ %i.ax, %bb.k ] ; 2 uses
  %i.bi = add i64 %.3.i29.i, 16                   ; 2 uses
  %i.bj = add i64 %.3.i29.i, 32
  %.not.i30.i = icmp ugt i64 %i.bj, %i.ax
  br i1 %.not.i30.i, label %.preheader.i31.i, label %.lr.ph35.i22.i, !llvm.loop !6

.lr.ph38.i37.i:                                   ; preds = %.preheader.i31.i, %bb.l
  %.437.i38.i = phi i64 [ %i.bn, %bb.l ], [ %.025.lcssa.i32.i, %.preheader.i31.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.437.i38.i
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = icmp slt i8 %i.bl, 0
  br i1 %i.bm, label %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit43.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph38.i37.i
  %i.bn = add i64 %.437.i38.i, 1                  ; 2 uses
  %exitcond47.not.i39.i = icmp eq i64 %i.bn, %i.ax
  br i1 %exitcond47.not.i39.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit43.i, label %.lr.ph38.i37.i, !llvm.loop !7

_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit43.i: ; preds = %.lr.ph.i40.i, %bb.l, %.lr.ph38.i37.i, %.preheader.i31.i
  %.sroa.4.0.i33.i = phi i64 [ %i.ax, %bb.l ], [ %.025.lcssa.i32.i, %.preheader.i31.i ], [ %.437.i38.i, %.lr.ph38.i37.i ], [ %.132.i41.i, %.lr.ph.i40.i ]
  %.sroa.0.0.i34.i = phi i32 [ 0, %bb.l ], [ 0, %.preheader.i31.i ], [ 5, %.lr.ph38.i37.i ], [ 5, %.lr.ph.i40.i ]
  %i.bo = add i64 %.sroa.4.0.i33.i, %.0.i
  br label %_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.thread.i

_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.thread.i: ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit43.i, %_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.i, %bb.i
  %.sroa.458.2.i = phi i64 [ %i.bo, %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit43.i ], [ %2, %_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.i ], [ %2, %bb.i ]
  %.sroa.057.2.i = phi i32 [ %.sroa.0.0.i34.i, %_ZN7simdutf6scalar12_GLOBAL__N_15ascii20validate_with_errorsEPKcm.exit43.i ], [ 0, %_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.i ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN7simdutf8westmere12_GLOBAL__N_116ascii_validation34generic_validate_ascii_with_errorsEPKcm.exit

_ZN7simdutf8westmere12_GLOBAL__N_116ascii_validation34generic_validate_ascii_with_errorsEPKcm.exit: ; preds = %bb.h, %_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.thread.i
  %.sroa.458.3.i = phi i64 [ %.sroa.458.2.i, %_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.thread.i ], [ %.sroa.458.1.i, %bb.h ]
  %.sroa.057.3.i = phi i32 [ %.sroa.057.2.i, %_ZNK7simdutf8westmere12_GLOBAL__N_116buf_block_readerILm64EE13get_remainderEPh.exit.thread.i ], [ %.sroa.057.1.i, %bb.h ]
  %.fca.0.insert.i = insertvalue { i32, i64 } poison, i32 %.sroa.057.3.i, 0
  %.fca.1.insert.i = insertvalue { i32, i64 } %.fca.0.insert.i, i64 %.sroa.458.3.i, 1
  ret { i32, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK7simdutf8westmere14implementation16validate_utf16leEPKDsm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #26 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit, label %bb.b, !prof !71

bb.b:                                             ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %2, 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %i.c = icmp ugt i64 %2, 32
  br i1 %i.c, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.04070.i = phi ptr [ %i.z, %bb.e ], [ %1, %bb.b ] ; 3 uses
  %i.d = load <8 x i16>, ptr %.04070.i, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %.04070.i, i64 16
  %i.f = load <8 x i16>, ptr %i.e, align 1
  %i.g = lshr <8 x i16> %i.d, splat (i16 8)
  %i.h = lshr <8 x i16> %i.f, splat (i16 8)
  %i.i = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.g, <8 x i16> %i.h) ; 2 uses
  %i.j = and <16 x i8> %i.i, splat (i8 -8)
  %i.k = icmp eq <16 x i8> %i.j, splat (i8 -40)
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = zext i16 %i.l to i32                     ; 2 uses
  %i.o = and <16 x i8> %i.i, splat (i8 -4)
  %i.p = icmp eq <16 x i8> %i.o, splat (i8 -36)
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = xor i32 %i.r, -1
  %i.t = lshr i32 %i.r, 1
  %i.u = and i32 %i.t, %i.s                       ; 2 uses
  %i.v = and i32 %i.u, %i.n
  %i.w = shl nuw nsw i32 %i.v, 1
  %.masked45.i = xor i32 %i.n, 65535
  %i.x = or i32 %.masked45.i, %i.w
  %i.y = or i32 %i.x, %i.u
  switch i32 %i.y, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit [
    i32 65535, label %bb.e
    i32 32767, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i
  %.sink.i = phi i64 [ 30, %bb.d ], [ 32, %.lr.ph.i ], [ 32, %bb.c ]
  %i.z = getelementptr inbounds nuw i8, ptr %.04070.i, i64 %.sink.i ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ab = icmp ult ptr %i.aa, %i.b
  br i1 %i.ab, label %.lr.ph.i, label %.loopexit, !llvm.loop !56

.loopexit:                                        ; preds = %bb.e, %bb.b
  %.040.lcssa.i = phi ptr [ %1, %bb.b ], [ %i.z, %bb.e ]
  %i.ac = ptrtoint ptr %.040.lcssa.i to i64
  %i.ad = ptrtoint ptr %1 to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = ashr exact i64 %i.ae, 1                 ; 2 uses
  %i.ag = icmp eq i64 %i.af, %2
  br i1 %i.ag, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae ; 2 uses
  %i.ai = sub i64 %2, %i.af                       ; 2 uses
  br label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.f, %bb.i
  %.02236.i = phi i64 [ %.4.i, %bb.i ], [ 0, %bb.f ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %.02236.i
  %i.ak = load i16, ptr %i.aj, align 2            ; 2 uses
  %i.al = and i16 %i.ak, -2048
  %i.am = icmp eq i16 %i.al, -10240
  %i.an = add nuw i64 %.02236.i, 1                ; 3 uses
  br i1 %i.am, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i8
  %.not.i = icmp ult i64 %i.an, %i.ai
  %i.ao = and i16 %i.ak, -9216
  %.not32.i = icmp eq i16 %i.ao, -10240
  %or.cond.i = and i1 %.not.i, %.not32.i
  br i1 %or.cond.i, label %bb.h, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.an
  %i.aq = load i16, ptr %i.ap, align 2
  %i.ar = and i16 %i.aq, -1024
  %.not34.i = icmp eq i16 %i.ar, -9216
  %i.as = add i64 %.02236.i, 2
  br i1 %.not34.i, label %bb.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit

bb.i:                                             ; preds = %bb.h, %.lr.ph.i8
  %.4.i = phi i64 [ %i.as, %bb.h ], [ %i.an, %.lr.ph.i8 ] ; 2 uses
  %.not41.i = icmp ult i64 %.4.i, %i.ai
  br i1 %.not41.i, label %.lr.ph.i8, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit, !llvm.loop !3

_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE0EEEbPKDsm.exit: ; preds = %bb.c, %bb.g, %bb.h, %bb.i, %.loopexit, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %.loopexit ], [ true, %bb.i ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK7simdutf8westmere14implementation16validate_utf16beEPKDsm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #26 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit, label %bb.b, !prof !71

bb.b:                                             ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %2, 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %i.c = icmp ugt i64 %2, 32
  br i1 %i.c, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.04070.i = phi ptr [ %i.z, %bb.e ], [ %1, %bb.b ] ; 3 uses
  %i.d = load <8 x i16>, ptr %.04070.i, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %.04070.i, i64 16
  %i.f = load <8 x i16>, ptr %i.e, align 1
  %i.g = and <8 x i16> %i.d, splat (i16 255)
  %i.h = and <8 x i16> %i.f, splat (i16 255)
  %i.i = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.g, <8 x i16> %i.h) ; 2 uses
  %i.j = and <16 x i8> %i.i, splat (i8 -8)
  %i.k = icmp eq <16 x i8> %i.j, splat (i8 -40)
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = zext i16 %i.l to i32                     ; 2 uses
  %i.o = and <16 x i8> %i.i, splat (i8 -4)
  %i.p = icmp eq <16 x i8> %i.o, splat (i8 -36)
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = xor i32 %i.r, -1
  %i.t = lshr i32 %i.r, 1
  %i.u = and i32 %i.t, %i.s                       ; 2 uses
  %i.v = and i32 %i.u, %i.n
  %i.w = shl nuw nsw i32 %i.v, 1
  %.masked45.i = xor i32 %i.n, 65535
  %i.x = or i32 %.masked45.i, %i.w
  %i.y = or i32 %i.x, %i.u
  switch i32 %i.y, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit [
    i32 65535, label %bb.e
    i32 32767, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i
  %.sink.i = phi i64 [ 30, %bb.d ], [ 32, %.lr.ph.i ], [ 32, %bb.c ]
  %i.z = getelementptr inbounds nuw i8, ptr %.04070.i, i64 %.sink.i ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ab = icmp ult ptr %i.aa, %i.b
  br i1 %i.ab, label %.lr.ph.i, label %.loopexit, !llvm.loop !57

.loopexit:                                        ; preds = %bb.e, %bb.b
  %.040.lcssa.i = phi ptr [ %1, %bb.b ], [ %i.z, %bb.e ]
  %i.ac = ptrtoint ptr %.040.lcssa.i to i64
  %i.ad = ptrtoint ptr %1 to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = ashr exact i64 %i.ae, 1                 ; 2 uses
  %i.ag = icmp eq i64 %i.af, %2
  br i1 %i.ag, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae ; 2 uses
  %i.ai = sub i64 %2, %i.af                       ; 2 uses
  br label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %bb.f, %bb.i
  %.02236.i = phi i64 [ %.4.i, %bb.i ], [ 0, %bb.f ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %.02236.i
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak) ; 2 uses
  %i.am = and i16 %i.al, -2048
  %i.an = icmp eq i16 %i.am, -10240
  %i.ao = add nuw i64 %.02236.i, 1                ; 3 uses
  br i1 %i.an, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i8
  %.not.i = icmp ult i64 %i.ao, %i.ai
  %i.ap = and i16 %i.al, -9216
  %.not32.i = icmp eq i16 %i.ap, -10240
  %or.cond.i = and i1 %.not.i, %.not32.i
  br i1 %or.cond.i, label %bb.h, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.ao
  %i.ar = load i16, ptr %i.aq, align 2
  %i.as = and i16 %i.ar, 252
  %.not34.i = icmp eq i16 %i.as, 220
  %i.at = add i64 %.02236.i, 2
  br i1 %.not34.i, label %bb.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit

bb.i:                                             ; preds = %bb.h, %.lr.ph.i8
  %.4.i = phi i64 [ %i.at, %bb.h ], [ %i.ao, %.lr.ph.i8 ] ; 2 uses
  %.not41.i = icmp ult i64 %.4.i, %i.ai
  br i1 %.not41.i, label %.lr.ph.i8, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit, !llvm.loop !8

_ZN7simdutf6scalar12_GLOBAL__N_15utf168validateILNS_10endiannessE1EEEbPKDsm.exit: ; preds = %bb.c, %bb.g, %bb.h, %bb.i, %.loopexit, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %.loopexit ], [ true, %bb.i ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i32, i64 } @_ZNK7simdutf8westmere14implementation28validate_utf16le_with_errorsEPKDsm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #26 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE0EEEKNS_6resultEPKDsm.exit, label %bb.b, !prof !71

bb.b:                                             ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %2, 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %i.c = icmp ugt i64 %2, 32
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.04070.i = phi ptr [ %i.ad, %bb.e ], [ %1, %bb.b ] ; 4 uses
  %i.d = load <8 x i16>, ptr %.04070.i, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %.04070.i, i64 16
  %i.f = load <8 x i16>, ptr %i.e, align 1
  %i.g = lshr <8 x i16> %i.d, splat (i16 8)
  %i.h = lshr <8 x i16> %i.f, splat (i16 8)
  %i.i = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.g, <8 x i16> %i.h) ; 2 uses
  %i.j = and <16 x i8> %i.i, splat (i8 -8)
  %i.k = icmp eq <16 x i8> %i.j, splat (i8 -40)
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = zext i16 %i.l to i32                     ; 2 uses
  %i.o = and <16 x i8> %i.i, splat (i8 -4)
  %i.p = icmp eq <16 x i8> %i.o, splat (i8 -36)
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = xor i32 %i.r, -1
  %i.t = lshr i32 %i.r, 1
  %i.u = and i32 %i.t, %i.s                       ; 2 uses
  %i.v = and i32 %i.u, %i.n
  %i.w = shl nuw nsw i32 %i.v, 1
  %.masked45.i = xor i32 %i.n, 65535
  %i.x = or i32 %.masked45.i, %i.w
  %i.y = or i32 %i.x, %i.u
  switch i32 %i.y, label %.critedge.critedge.i [
    i32 65535, label %bb.e
    i32 32767, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.e

.critedge.critedge.i:                             ; preds = %bb.c
  %i.z = ptrtoint ptr %.04070.i to i64
  %i.aa = ptrtoint ptr %1 to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 1
  br label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE0EEEKNS_6resultEPKDsm.exit

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i
  %.sink.i = phi i64 [ 30, %bb.d ], [ 32, %.lr.ph.i ], [ 32, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.04070.i, i64 %.sink.i ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.af = icmp ult ptr %i.ae, %i.b
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !56

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.040.lcssa.i = phi ptr [ %1, %bb.b ], [ %i.ad, %bb.e ]
  %i.ag = ptrtoint ptr %.040.lcssa.i to i64
  %i.ah = ptrtoint ptr %1 to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 1
  br label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE0EEEKNS_6resultEPKDsm.exit

_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE0EEEKNS_6resultEPKDsm.exit: ; preds = %bb.a, %.critedge.critedge.i, %._crit_edge.i
  %.sroa.4.0.i = phi i64 [ %i.aj, %._crit_edge.i ], [ %i.ac, %.critedge.critedge.i ], [ 0, %bb.a ] ; 4 uses
  %.sroa.052.0.i = phi i32 [ 0, %._crit_edge.i ], [ 6, %.critedge.critedge.i ], [ 0, %bb.a ]
  %.not = icmp eq i64 %.sroa.4.0.i, %2
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE0EEEKNS_6resultEPKDsm.exit
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.4.0.i ; 2 uses
  %i.al = sub i64 %2, %.sroa.4.0.i                ; 2 uses
  br label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.f, %bb.i
  %.02537.i = phi i64 [ %.4.i, %bb.i ], [ 0, %bb.f ] ; 5 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %.02537.i
  %i.an = load i16, ptr %i.am, align 2            ; 2 uses
  %i.ao = and i16 %i.an, -2048
  %i.ap = icmp eq i16 %i.ao, -10240
  %i.aq = add nuw i64 %.02537.i, 1                ; 3 uses
  br i1 %i.ap, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i12
  %.not.i = icmp ult i64 %i.aq, %i.al
  %i.ar = and i16 %i.an, -9216
  %.not30.i = icmp eq i16 %i.ar, -10240
  %or.cond.i = and i1 %.not.i, %.not30.i
  br i1 %or.cond.i, label %bb.h, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %i.aq
  %i.at = load i16, ptr %i.as, align 2
  %i.au = and i16 %i.at, -1024
  %.not32.i = icmp eq i16 %i.au, -9216
  br i1 %.not32.i, label %.thread.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit

.thread.i:                                        ; preds = %bb.h
  %i.av = add i64 %.02537.i, 2
  br label %bb.i

bb.i:                                             ; preds = %.thread.i, %.lr.ph.i12
  %.4.i = phi i64 [ %i.av, %.thread.i ], [ %i.aq, %.lr.ph.i12 ] ; 3 uses
  %i.aw = icmp ult i64 %.4.i, %i.al
  br i1 %i.aw, label %.lr.ph.i12, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit, !llvm.loop !9

_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.025.lcssa.i = phi i64 [ %.02537.i, %bb.g ], [ %.4.i, %bb.i ], [ %.02537.i, %bb.h ]
  %.sroa.0.3.i = phi i32 [ 6, %bb.g ], [ 0, %bb.i ], [ 6, %bb.h ]
  %i.ax = add i64 %.025.lcssa.i, %.sroa.4.0.i
  br label %bb.j

bb.j:                                             ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE0EEEKNS_6resultEPKDsm.exit, %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit
  %.sroa.3.0 = phi i64 [ %i.ax, %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit ], [ %2, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE0EEEKNS_6resultEPKDsm.exit ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.3.i, %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE0EEENS_6resultEPKDsm.exit ], [ %.sroa.052.0.i, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE0EEEKNS_6resultEPKDsm.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { i32, i64 } @_ZNK7simdutf8westmere14implementation28validate_utf16be_with_errorsEPKDsm(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #26 align 2 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE1EEEKNS_6resultEPKDsm.exit, label %bb.b, !prof !71

bb.b:                                             ; preds = %bb.a
  %.idx.i = shl nuw nsw i64 %2, 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.i
  %i.c = icmp ugt i64 %2, 32
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.04070.i = phi ptr [ %i.ad, %bb.e ], [ %1, %bb.b ] ; 4 uses
  %i.d = load <8 x i16>, ptr %.04070.i, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %.04070.i, i64 16
  %i.f = load <8 x i16>, ptr %i.e, align 1
  %i.g = and <8 x i16> %i.d, splat (i16 255)
  %i.h = and <8 x i16> %i.f, splat (i16 255)
  %i.i = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.g, <8 x i16> %i.h) ; 2 uses
  %i.j = and <16 x i8> %i.i, splat (i8 -8)
  %i.k = icmp eq <16 x i8> %i.j, splat (i8 -40)
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = zext i16 %i.l to i32                     ; 2 uses
  %i.o = and <16 x i8> %i.i, splat (i8 -4)
  %i.p = icmp eq <16 x i8> %i.o, splat (i8 -36)
  %i.q = bitcast <16 x i1> %i.p to i16
  %i.r = zext i16 %i.q to i32                     ; 2 uses
  %i.s = xor i32 %i.r, -1
  %i.t = lshr i32 %i.r, 1
  %i.u = and i32 %i.t, %i.s                       ; 2 uses
  %i.v = and i32 %i.u, %i.n
  %i.w = shl nuw nsw i32 %i.v, 1
  %.masked45.i = xor i32 %i.n, 65535
  %i.x = or i32 %.masked45.i, %i.w
  %i.y = or i32 %i.x, %i.u
  switch i32 %i.y, label %.critedge.critedge.i [
    i32 65535, label %bb.e
    i32 32767, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.e

.critedge.critedge.i:                             ; preds = %bb.c
  %i.z = ptrtoint ptr %.04070.i to i64
  %i.aa = ptrtoint ptr %1 to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 1
  br label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE1EEEKNS_6resultEPKDsm.exit

bb.e:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i
  %.sink.i = phi i64 [ 30, %bb.d ], [ 32, %.lr.ph.i ], [ 32, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.04070.i, i64 %.sink.i ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.af = icmp ult ptr %i.ae, %i.b
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !57

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.040.lcssa.i = phi ptr [ %1, %bb.b ], [ %i.ad, %bb.e ]
  %i.ag = ptrtoint ptr %.040.lcssa.i to i64
  %i.ah = ptrtoint ptr %1 to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 1
  br label %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE1EEEKNS_6resultEPKDsm.exit

_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE1EEEKNS_6resultEPKDsm.exit: ; preds = %bb.a, %.critedge.critedge.i, %._crit_edge.i
  %.sroa.4.0.i = phi i64 [ %i.aj, %._crit_edge.i ], [ %i.ac, %.critedge.critedge.i ], [ 0, %bb.a ] ; 4 uses
  %.sroa.052.0.i = phi i32 [ 0, %._crit_edge.i ], [ 6, %.critedge.critedge.i ], [ 0, %bb.a ]
  %.not = icmp eq i64 %.sroa.4.0.i, %2
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE1EEEKNS_6resultEPKDsm.exit
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.sroa.4.0.i ; 2 uses
  %i.al = sub i64 %2, %.sroa.4.0.i                ; 2 uses
  br label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.f, %bb.i
  %.02537.i = phi i64 [ %.4.i, %bb.i ], [ 0, %bb.f ] ; 5 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %.02537.i
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = tail call noundef i16 @llvm.bswap.i16(i16 %i.an) ; 2 uses
  %i.ap = and i16 %i.ao, -2048
  %i.aq = icmp eq i16 %i.ap, -10240
  %i.ar = add nuw i64 %.02537.i, 1                ; 3 uses
  br i1 %i.aq, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i12
  %.not.i = icmp ult i64 %i.ar, %i.al
  %i.as = and i16 %i.ao, -9216
  %.not30.i = icmp eq i16 %i.as, -10240
  %or.cond.i = and i1 %.not.i, %.not30.i
  br i1 %or.cond.i, label %bb.h, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %i.ar
  %i.au = load i16, ptr %i.at, align 2
  %i.av = and i16 %i.au, 252
  %.not32.i = icmp eq i16 %i.av, 220
  br i1 %.not32.i, label %.thread.i, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit

.thread.i:                                        ; preds = %bb.h
  %i.aw = add i64 %.02537.i, 2
  br label %bb.i

bb.i:                                             ; preds = %.thread.i, %.lr.ph.i12
  %.4.i = phi i64 [ %i.aw, %.thread.i ], [ %i.ar, %.lr.ph.i12 ] ; 3 uses
  %i.ax = icmp ult i64 %.4.i, %i.al
  br i1 %i.ax, label %.lr.ph.i12, label %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit, !llvm.loop !10

_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit: ; preds = %bb.g, %bb.h, %bb.i
  %.025.lcssa.i = phi i64 [ %.02537.i, %bb.g ], [ %.4.i, %bb.i ], [ %.02537.i, %bb.h ]
  %.sroa.0.3.i = phi i32 [ 6, %bb.g ], [ 0, %bb.i ], [ 6, %bb.h ]
  %i.ay = add i64 %.025.lcssa.i, %.sroa.4.0.i
  br label %bb.j

bb.j:                                             ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE1EEEKNS_6resultEPKDsm.exit, %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit
  %.sroa.3.0 = phi i64 [ %i.ay, %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit ], [ %2, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE1EEEKNS_6resultEPKDsm.exit ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.3.i, %_ZN7simdutf6scalar12_GLOBAL__N_15utf1620validate_with_errorsILNS_10endiannessE1EEENS_6resultEPKDsm.exit ], [ %.sroa.052.0.i, %_ZN7simdutf8westmere12_GLOBAL__N_15utf1626validate_utf16_with_errorsILNS_10endiannessE1EEEKNS_6resultEPKDsm.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK7simdutf8westmere14implementation22to_well_formed_utf16leEPKDsmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, ptr nofree noundef captures(address) %3) unnamed_addr #25 align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 9
  br i1 %i.a, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  %.not33.i.i = icmp eq i64 %2, 0
  br i1 %.not33.i.i, label %_ZN7simdutf8westmere12_GLOBAL__N_112utf16fix_sseILNS_10endiannessE0EEEvPKDsmPDs.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.b = load i16, ptr %1, align 2
  %i.c = and i16 %i.b, -1024                      ; 2 uses
  %i.d = icmp eq i16 %i.c, -10240                 ; 2 uses
  %i.e = icmp eq i16 %i.c, -9216
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.f = load i16, ptr %1, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %.sink.i.i = phi i16 [ %i.f, %bb.c ], [ -3, %.lr.ph.i.i ]
  store i16 %.sink.i.i, ptr %3, align 2
  %exitcond.not.i.i = icmp eq i64 %2, 1
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2
  %i.i = and i16 %i.h, -1024                      ; 2 uses
  %i.j = icmp eq i16 %i.i, -10240                 ; 2 uses
  %i.k = icmp eq i16 %i.i, -9216                  ; 2 uses
  %.not.i51.i.1 = xor i1 %i.d, true               ; 2 uses
  %or.cond.i.i.1 = or i1 %i.k, %.not.i51.i.1
  br i1 %or.cond.i.i.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.1
  store i16 -3, ptr %3, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.1
  %or.cond4.i.i.1 = and i1 %i.k, %.not.i51.i.1
  br i1 %or.cond4.i.i.1, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load i16, ptr %i.g, align 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i.i.1 = phi i16 [ %i.l, %bb.g ], [ -3, %bb.f ]
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i16 %.sink.i.i.1, ptr %i.m, align 2
  %exitcond.not.i.i.1 = icmp eq i64 %2, 2
  br i1 %exitcond.not.i.i.1, label %._crit_edge.i.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.o = load i16, ptr %i.n, align 2
  %i.p = and i16 %i.o, -1024                      ; 2 uses
  %i.q = icmp eq i16 %i.p, -10240                 ; 2 uses
  %i.r = icmp eq i16 %i.p, -9216                  ; 2 uses
  %.not.i51.i.2 = xor i1 %i.j, true               ; 2 uses
  %or.cond.i.i.2 = or i1 %i.r, %.not.i51.i.2
  br i1 %or.cond.i.i.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.2
  %i.s = getelementptr i8, ptr %3, i64 2
  store i16 -3, ptr %i.s, align 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i.2
  %or.cond4.i.i.2 = and i1 %i.r, %.not.i51.i.2
  br i1 %or.cond4.i.i.2, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load i16, ptr %i.n, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink.i.i.2 = phi i16 [ %i.t, %bb.k ], [ -3, %bb.j ]
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 %.sink.i.i.2, ptr %i.u, align 2
  %exitcond.not.i.i.2 = icmp eq i64 %2, 3
  br i1 %exitcond.not.i.i.2, label %._crit_edge.i.i, label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.w = load i16, ptr %i.v, align 2
  %i.x = and i16 %i.w, -1024                      ; 2 uses
  %i.y = icmp eq i16 %i.x, -10240                 ; 2 uses
  %i.z = icmp eq i16 %i.x, -9216                  ; 2 uses
  %.not.i51.i.3 = xor i1 %i.q, true               ; 2 uses
  %or.cond.i.i.3 = or i1 %i.z, %.not.i51.i.3
  br i1 %or.cond.i.i.3, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.3
  %i.aa = getelementptr i8, ptr %3, i64 4
  store i16 -3, ptr %i.aa, align 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i.3
  %or.cond4.i.i.3 = and i1 %i.z, %.not.i51.i.3
  br i1 %or.cond4.i.i.3, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = load i16, ptr %i.v, align 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink.i.i.3 = phi i16 [ %i.ab, %bb.o ], [ -3, %bb.n ]
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 6
  store i16 %.sink.i.i.3, ptr %i.ac, align 2
  %exitcond.not.i.i.3 = icmp eq i64 %2, 4
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %.lr.ph.i.i.4

.lr.ph.i.i.4:                                     ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 2
  %i.af = and i16 %i.ae, -1024                    ; 2 uses
  %i.ag = icmp eq i16 %i.af, -10240               ; 2 uses
  %i.ah = icmp eq i16 %i.af, -9216                ; 2 uses
  %.not.i51.i.4 = xor i1 %i.y, true               ; 2 uses
  %or.cond.i.i.4 = or i1 %i.ah, %.not.i51.i.4
  br i1 %or.cond.i.i.4, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.4
  %i.ai = getelementptr i8, ptr %3, i64 6
  store i16 -3, ptr %i.ai, align 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i.i.4
  %or.cond4.i.i.4 = and i1 %i.ah, %.not.i51.i.4
  br i1 %or.cond4.i.i.4, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = load i16, ptr %i.ad, align 2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sink.i.i.4 = phi i16 [ %i.aj, %bb.s ], [ -3, %bb.r ]
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 %.sink.i.i.4, ptr %i.ak, align 2
  %exitcond.not.i.i.4 = icmp eq i64 %2, 5
  br i1 %exitcond.not.i.i.4, label %._crit_edge.i.i, label %.lr.ph.i.i.5

.lr.ph.i.i.5:                                     ; preds = %bb.t
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.am = load i16, ptr %i.al, align 2
  %i.an = and i16 %i.am, -1024                    ; 2 uses
  %i.ao = icmp eq i16 %i.an, -10240               ; 2 uses
  %i.ap = icmp eq i16 %i.an, -9216                ; 2 uses
  %.not.i51.i.5 = xor i1 %i.ag, true              ; 2 uses
  %or.cond.i.i.5 = or i1 %i.ap, %.not.i51.i.5
  br i1 %or.cond.i.i.5, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.5
  %i.aq = getelementptr i8, ptr %3, i64 8
  store i16 -3, ptr %i.aq, align 2
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.i.5
  %or.cond4.i.i.5 = and i1 %i.ap, %.not.i51.i.5
  br i1 %or.cond4.i.i.5, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ar = load i16, ptr %i.al, align 2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.sink.i.i.5 = phi i16 [ %i.ar, %bb.w ], [ -3, %bb.v ]
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 10
  store i16 %.sink.i.i.5, ptr %i.as, align 2
  %exitcond.not.i.i.5 = icmp eq i64 %2, 6
  br i1 %exitcond.not.i.i.5, label %._crit_edge.i.i, label %.lr.ph.i.i.6

.lr.ph.i.i.6:                                     ; preds = %bb.x
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.au = load i16, ptr %i.at, align 2
end_hunk_5
begin_hunk_6_@_ZNK7simdutf8westmere14implementation22convert_utf8_to_latin1EPKcmPc:bb.a

bb.e:                                             ; preds = %.lr.ph243
  store <2 x i64> %.val, ptr %.1239, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %.1239, i64 12
  br label %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit

bb.f:                                             ; preds = %.lr.ph243
  %i.dv = and i64 %.050.i241, 4095
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf1612utf8bigindexE, i64 %i.dv ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 2             ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 1
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = icmp ugt i8 %i.dx, 63
  br i1 %i.ea, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.eb = zext nneg i8 %i.dx to i64
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.eb
  %i.ed = load <16 x i8>, ptr %i.ec, align 16
  %i.ee = bitcast <2 x i64> %.val to <16 x i8>
  %i.ef = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.ee, <16 x i8> %i.ed) ; 2 uses
  %i.eg = bitcast <16 x i8> %i.ef to <2 x i64>
  %i.eh = and <2 x i64> %i.eg, splat (i64 35747867511423103)
  %i.ei = bitcast <16 x i8> %i.ef to <8 x i16>
  %i.ej = lshr <8 x i16> %i.ei, splat (i16 2)
  %i.ek = bitcast <8 x i16> %i.ej to <2 x i64>
  %i.el = and <2 x i64> %i.ek, splat (i64 558454875139082176)
  %i.em = or <2 x i64> %i.el, %i.eh
  %i.en = bitcast <2 x i64> %i.em to <8 x i16>
  %i.eo = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.en, <8 x i16> poison)
  %i.ep = bitcast <16 x i8> %i.eo to <2 x i64>
  %i.eq = extractelement <2 x i64> %i.ep, i64 0
  store i64 %i.eq, ptr %.1239, align 1
  %i.er = getelementptr inbounds nuw i8, ptr %.1239, i64 6
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.4 = phi ptr [ %.1239, %bb.f ], [ %i.er, %bb.g ]
  %.0.i = zext i8 %i.dz to i64
  br label %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit

_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit: ; preds = %bb.e, %bb.h
  %.5 = phi ptr [ %i.du, %bb.e ], [ %.4, %bb.h ]  ; 2 uses
  %.1.i = phi i64 [ 12, %bb.e ], [ %.0.i, %bb.h ] ; 2 uses
  %i.es = add i64 %.1.i, %.155.i240               ; 3 uses
  %i.et = lshr i64 %.050.i241, %.1.i
  %i.eu = icmp ult i64 %i.es, %i.dc
  br i1 %i.eu, label %.lr.ph243, label %.loopexit, !llvm.loop !1083

.loopexit:                                        ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit, %bb.d, %bb.b
  %.2 = phi ptr [ %i.ag, %bb.b ], [ %.0247, %bb.d ], [ %.5, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 2 uses
  %.sroa.0.1 = phi <2 x i64> [ %.sroa.0.0248, %bb.b ], [ %i.cx, %bb.d ], [ %i.cx, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 2 uses
  %.458.i = phi i64 [ %i.n, %bb.b ], [ %.054.i249, %bb.d ], [ %i.es, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 3 uses
  %i.ev = add i64 %.458.i, 64                     ; 2 uses
  %i.ew = add i64 %i.l, %i.ev
  %.not.i = icmp ugt i64 %i.ew, %2
  br i1 %.not.i, label %._crit_edge252, label %.lr.ph251, !llvm.loop !1084

._crit_edge252:                                   ; preds = %.loopexit, %._crit_edge
  %.0.lcssa = phi ptr [ %3, %._crit_edge ], [ %.2, %.loopexit ] ; 5 uses
  %.sroa.0.0.lcssa = phi <2 x i64> [ zeroinitializer, %._crit_edge ], [ %.sroa.0.1, %.loopexit ] ; 2 uses
  %.054.i.lcssa = phi i64 [ 0, %._crit_edge ], [ %.458.i, %.loopexit ] ; 3 uses
  %i.ex = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %.sroa.0.0.lcssa, <2 x i64> %.sroa.0.0.lcssa)
  %.not = icmp eq i32 %i.ex, 0
  br i1 %.not, label %_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge252
  %i.ey = icmp ult i64 %.054.i.lcssa, %2
  br i1 %i.ey, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 %.054.i.lcssa ; 2 uses
  %i.fa = sub nuw i64 %2, %.054.i.lcssa           ; 3 uses
  br label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %bb.j, %.backedge.i
  %.04778.i = phi i64 [ %.047.be.i, %.backedge.i ], [ 0, %bb.j ] ; 6 uses
  %.05077.i = phi ptr [ %.050.be.i, %.backedge.i ], [ %.0.lcssa, %bb.j ] ; 20 uses
  %i.fb = add i64 %.04778.i, 16                   ; 2 uses
  %.not.i5 = icmp ugt i64 %i.fb, %i.fa
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.04778.i ; 17 uses
  br i1 %.not.i5, label %.lr.ph79..thread_crit_edge.i, label %bb.k

.lr.ph79..thread_crit_edge.i:                     ; preds = %.lr.ph79.i
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1
  br label %.thread.i

bb.k:                                             ; preds = %.lr.ph79.i
  %.0.copyload15.i = load i64, ptr %.phi.trans.insert.i, align 1 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 8 ; 2 uses
  %.0.copyload.i = load i64, ptr %i.fc, align 1
  %i.fd = or i64 %.0.copyload.i, %.0.copyload15.i
  %i.fe = and i64 %i.fd, -9187201950435737472
  %i.ff = icmp eq i64 %i.fe, 0
  %i.fg = trunc i64 %.0.copyload15.i to i8        ; 2 uses
  br i1 %i.ff, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %bb.k
  %i.fh = icmp ult i64 %.04778.i, -16
  br i1 %i.fh, label %.lr.ph.preheader.i, label %.backedge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.fi = getelementptr inbounds nuw i8, ptr %.05077.i, i64 1
  store i8 %i.fg, ptr %.05077.i, align 1
  %i.fj = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 1
  %i.fk = load i8, ptr %i.fj, align 1
  %i.fl = getelementptr inbounds nuw i8, ptr %.05077.i, i64 2
  store i8 %i.fk, ptr %i.fi, align 1
  %i.fm = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 2
  %i.fn = load i8, ptr %i.fm, align 1
  %i.fo = getelementptr inbounds nuw i8, ptr %.05077.i, i64 3
  store i8 %i.fn, ptr %i.fl, align 1
  %i.fp = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 3
  %i.fq = load i8, ptr %i.fp, align 1
  %i.fr = getelementptr inbounds nuw i8, ptr %.05077.i, i64 4
  store i8 %i.fq, ptr %i.fo, align 1
  %i.fs = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 4
  %i.ft = load i8, ptr %i.fs, align 1
  %i.fu = getelementptr inbounds nuw i8, ptr %.05077.i, i64 5
  store i8 %i.ft, ptr %i.fr, align 1
  %i.fv = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 5
  %i.fw = load i8, ptr %i.fv, align 1
  %i.fx = getelementptr inbounds nuw i8, ptr %.05077.i, i64 6
  store i8 %i.fw, ptr %i.fu, align 1
  %i.fy = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 6
  %i.fz = load i8, ptr %i.fy, align 1
  %i.ga = getelementptr inbounds nuw i8, ptr %.05077.i, i64 7
  store i8 %i.fz, ptr %i.fx, align 1
  %i.gb = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 7
  %i.gc = load i8, ptr %i.gb, align 1
  %i.gd = getelementptr inbounds nuw i8, ptr %.05077.i, i64 8
  store i8 %i.gc, ptr %i.ga, align 1
  %i.ge = load i8, ptr %i.fc, align 1
  %i.gf = getelementptr inbounds nuw i8, ptr %.05077.i, i64 9
  store i8 %i.ge, ptr %i.gd, align 1
  %i.gg = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 9
  %i.gh = load i8, ptr %i.gg, align 1
  %i.gi = getelementptr inbounds nuw i8, ptr %.05077.i, i64 10
  store i8 %i.gh, ptr %i.gf, align 1
  %i.gj = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 10
  %i.gk = load i8, ptr %i.gj, align 1
  %i.gl = getelementptr inbounds nuw i8, ptr %.05077.i, i64 11
  store i8 %i.gk, ptr %i.gi, align 1
  %i.gm = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 11
  %i.gn = load i8, ptr %i.gm, align 1
  %i.go = getelementptr inbounds nuw i8, ptr %.05077.i, i64 12
  store i8 %i.gn, ptr %i.gl, align 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 12
  %i.gq = load i8, ptr %i.gp, align 1
  %i.gr = getelementptr inbounds nuw i8, ptr %.05077.i, i64 13
  store i8 %i.gq, ptr %i.go, align 1
  %i.gs = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 13
  %i.gt = load i8, ptr %i.gs, align 1
  %i.gu = getelementptr inbounds nuw i8, ptr %.05077.i, i64 14
  store i8 %i.gt, ptr %i.gr, align 1
  %i.gv = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 14
  %i.gw = load i8, ptr %i.gv, align 1
  %i.gx = getelementptr inbounds nuw i8, ptr %.05077.i, i64 15
  store i8 %i.gw, ptr %i.gu, align 1
  %i.gy = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 15
  %i.gz = load i8, ptr %i.gy, align 1
  %i.ha = getelementptr inbounds nuw i8, ptr %.05077.i, i64 16
  store i8 %i.gz, ptr %i.gx, align 1
  br label %.backedge.i

.thread.i:                                        ; preds = %bb.k, %.lr.ph79..thread_crit_edge.i
  %i.hb = phi i8 [ %.pre.i, %.lr.ph79..thread_crit_edge.i ], [ %i.fg, %bb.k ] ; 4 uses
  %i.hc = zext i8 %i.hb to i32                    ; 2 uses
  %i.hd = icmp sgt i8 %i.hb, -1
  br i1 %i.hd, label %bb.p, label %bb.l

bb.l:                                             ; preds = %.thread.i
  %i.he = and i32 %i.hc, 224
  %i.hf = icmp eq i32 %i.he, 192
  br i1 %i.hf, label %bb.m, label %_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit

bb.m:                                             ; preds = %bb.l
  %i.hg = add nuw i64 %.04778.i, 1                ; 2 uses
  %.not67.i = icmp ult i64 %i.hg, %i.fa
  br i1 %.not67.i, label %bb.n, label %_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit

bb.n:                                             ; preds = %bb.m
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1             ; 2 uses
  %.not68.i = icmp slt i8 %i.hi, -64
  %i.hj = and i32 %i.hc, 30
  %or.cond.not.i = icmp eq i32 %i.hj, 2
  %or.cond.i = and i1 %or.cond.not.i, %.not68.i
  br i1 %or.cond.i, label %bb.o, label %_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit

bb.o:                                             ; preds = %bb.n
  %i.hk = shl i8 %i.hb, 6
  %i.hl = and i8 %i.hi, 63
  %i.hm = or disjoint i8 %i.hl, %i.hk
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread.i
  %.sink87.i = phi i8 [ %i.hm, %bb.o ], [ %i.hb, %.thread.i ]
  %.sink.i = phi i64 [ 2, %bb.o ], [ 1, %.thread.i ]
  store i8 %.sink87.i, ptr %.05077.i, align 1
  %i.hn = add i64 %.sink.i, %.04778.i
  %.656.i = getelementptr inbounds nuw i8, ptr %.05077.i, i64 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.p, %.lr.ph.preheader.i, %.preheader.i
  %.050.be.i = phi ptr [ %.656.i, %bb.p ], [ %.05077.i, %.preheader.i ], [ %i.ha, %.lr.ph.preheader.i ] ; 3 uses
  %.047.be.i = phi i64 [ %i.hn, %bb.p ], [ %.04778.i, %.preheader.i ], [ %i.fb, %.lr.ph.preheader.i ] ; 2 uses
  %i.ho = icmp ult i64 %.047.be.i, %i.fa
  br i1 %i.ho, label %.lr.ph79.i, label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit, !llvm.loop !13

_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit: ; preds = %.backedge.i
  %.not63.i = icmp eq ptr %.050.be.i, %.0.lcssa
  br i1 %.not63.i, label %_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit, label %bb.q

bb.q:                                             ; preds = %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit
  %i.hp = ptrtoint ptr %.0.lcssa to i64
  %i.hq = ptrtoint ptr %.050.be.i to i64
  %i.hr = sub i64 %i.hq, %i.hp
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %i.hr
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.i
  %.3 = phi ptr [ %i.hs, %bb.q ], [ %.0.lcssa, %bb.i ]
  %i.ht = ptrtoint ptr %.3 to i64
  %i.hu = ptrtoint ptr %3 to i64
  %i.hv = sub i64 %i.ht, %i.hu
  br label %_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit

_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin121validating_transcoder7convertEPKcmPc.exit: ; preds = %bb.c, %bb.l, %bb.n, %bb.m, %._crit_edge252, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit, %bb.r
  %.5.i = phi i64 [ 0, %bb.l ], [ 0, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin17convertEPKcmPc.exit ], [ %i.hv, %bb.r ], [ 0, %._crit_edge252 ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.c ]
  ret i64 %.5.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { i32, i64 } @_ZNK7simdutf8westmere14implementation34convert_utf8_to_latin1_with_errorsEPKcmPc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #28 align 2 {
bb.a:
  %.not312 = icmp eq i64 %2, 0
  br i1 %.not312, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.061.i288 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %.062.i287 = phi i64 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.a = getelementptr i8, ptr %1, i64 %.062.i287
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp sgt i8 %i.c, -65
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %.061.i288, %i.e         ; 2 uses
  %i.g = add i64 %.062.i287, -1                   ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp samesign ult i64 %i.f, 8
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !1085

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.062.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  %i.k = add i64 %2, 1
  %i.l = sub i64 %i.k, %.062.i.lcssa              ; 2 uses
  %i.m = add i64 %i.l, 64
  %.not.i297 = icmp ugt i64 %i.m, %2
  br i1 %.not.i297, label %._crit_edge305, label %.lr.ph304

.lr.ph304:                                        ; preds = %._crit_edge, %.loopexit.thread
  %i.n = phi i64 [ %i.fm, %.loopexit.thread ], [ 64, %._crit_edge ]
  %i.o = phi i64 [ %i.fl, %.loopexit.thread ], [ 0, %._crit_edge ]
  %.0.i302 = phi i64 [ %.4.i, %.loopexit.thread ], [ 0, %._crit_edge ] ; 9 uses
  %.sroa.0.0301 = phi <2 x i64> [ %.sroa.0.1, %.loopexit.thread ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.0300 = phi ptr [ %.3, %.loopexit.thread ], [ %3, %._crit_edge ] ; 9 uses
  %.sroa.064.0299 = phi i32 [ %.sroa.064.2, %.loopexit.thread ], [ undef, %._crit_edge ] ; 3 uses
  %.sroa.765.0298 = phi i64 [ %.sroa.765.2, %.loopexit.thread ], [ undef, %._crit_edge ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i302 ; 6 uses
  %i.q = load <2 x i64>, ptr %i.p, align 1        ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.s = load <2 x i64>, ptr %i.r, align 1        ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.u = load <2 x i64>, ptr %i.t, align 1        ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.w = load <2 x i64>, ptr %i.v, align 1        ; 4 uses
  %i.x = or <2 x i64> %i.s, %i.q
  %i.y = or <2 x i64> %i.x, %i.u
  %i.z = or <2 x i64> %i.y, %i.w
  %i.aa = bitcast <2 x i64> %i.z to <16 x i8>
  %i.ab = icmp slt <16 x i8> %i.aa, zeroinitializer
  %i.ac = bitcast <16 x i1> %i.ab to i16
  %i.ad = icmp eq i16 %i.ac, 0
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph304
  store <2 x i64> %i.q, ptr %.0300, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.0300, i64 16
  store <2 x i64> %i.s, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %.0300, i64 32
  store <2 x i64> %i.u, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.0300, i64 48
  store <2 x i64> %i.w, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.0300, i64 64
  br label %.loopexit.thread

bb.c:                                             ; preds = %.lr.ph304
  %i.ai = bitcast <2 x i64> %i.q to <16 x i8>     ; 3 uses
  %i.aj = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.ai, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.ak = bitcast <16 x i8> %i.aj to <8 x i16>
  %i.al = lshr <8 x i16> %i.ak, splat (i16 4)
  %i.am = bitcast <8 x i16> %i.al to <16 x i8>
  %i.an = and <16 x i8> %i.am, splat (i8 15)
  %i.ao = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 -1, i8 -1, i8 -1>, <16 x i8> %i.an)
  %i.ap = and <16 x i8> %i.aj, splat (i8 15)
  %i.aq = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <16 x i8> %i.ap)
  %i.ar = bitcast <2 x i64> %i.q to <8 x i16>
  %i.as = lshr <8 x i16> %i.ar, splat (i16 4)
  %i.at = bitcast <8 x i16> %i.as to <16 x i8>
  %i.au = and <16 x i8> %i.at, splat (i8 15)
  %i.av = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.au)
  %i.aw = and <16 x i8> %i.aq, %i.ao
  %i.ax = and <16 x i8> %i.aw, %i.av
  %i.ay = bitcast <2 x i64> %i.s to <16 x i8>     ; 3 uses
  %i.az = shufflevector <16 x i8> %i.ai, <16 x i8> %i.ay, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.ba = bitcast <16 x i8> %i.az to <8 x i16>
  %i.bb = lshr <8 x i16> %i.ba, splat (i16 4)
  %i.bc = bitcast <8 x i16> %i.bb to <16 x i8>
  %i.bd = and <16 x i8> %i.bc, splat (i8 15)
  %i.be = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 -1, i8 -1, i8 -1>, <16 x i8> %i.bd)
  %i.bf = and <16 x i8> %i.az, splat (i8 15)
  %i.bg = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <16 x i8> %i.bf)
  %i.bh = bitcast <2 x i64> %i.s to <8 x i16>
  %i.bi = lshr <8 x i16> %i.bh, splat (i16 4)
  %i.bj = bitcast <8 x i16> %i.bi to <16 x i8>
  %i.bk = and <16 x i8> %i.bj, splat (i8 15)
  %i.bl = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.bk)
  %i.bm = and <16 x i8> %i.bg, %i.be
  %i.bn = and <16 x i8> %i.bm, %i.bl
  %i.bo = or <16 x i8> %i.bn, %i.ax
  %i.bp = bitcast <2 x i64> %i.u to <16 x i8>     ; 3 uses
  %i.bq = shufflevector <16 x i8> %i.ay, <16 x i8> %i.bp, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.br = bitcast <16 x i8> %i.bq to <8 x i16>
  %i.bs = lshr <8 x i16> %i.br, splat (i16 4)
  %i.bt = bitcast <8 x i16> %i.bs to <16 x i8>
  %i.bu = and <16 x i8> %i.bt, splat (i8 15)
  %i.bv = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 -1, i8 -1, i8 -1>, <16 x i8> %i.bu)
  %i.bw = and <16 x i8> %i.bq, splat (i8 15)
  %i.bx = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <16 x i8> %i.bw)
  %i.by = bitcast <2 x i64> %i.u to <8 x i16>
  %i.bz = lshr <8 x i16> %i.by, splat (i16 4)
  %i.ca = bitcast <8 x i16> %i.bz to <16 x i8>
  %i.cb = and <16 x i8> %i.ca, splat (i8 15)
  %i.cc = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.cb)
  %i.cd = and <16 x i8> %i.bx, %i.bv
  %i.ce = and <16 x i8> %i.cd, %i.cc
  %i.cf = or <16 x i8> %i.bo, %i.ce
  %i.cg = bitcast <2 x i64> %i.w to <16 x i8>     ; 2 uses
  %i.ch = shufflevector <16 x i8> %i.bp, <16 x i8> %i.cg, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.ci = bitcast <16 x i8> %i.ch to <8 x i16>
  %i.cj = lshr <8 x i16> %i.ci, splat (i16 4)
  %i.ck = bitcast <8 x i16> %i.cj to <16 x i8>
  %i.cl = and <16 x i8> %i.ck, splat (i8 15)
  %i.cm = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 -1, i8 -1, i8 -1>, <16 x i8> %i.cl)
  %i.cn = and <16 x i8> %i.ch, splat (i8 15)
  %i.co = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>, <16 x i8> %i.cn)
  %i.cp = bitcast <2 x i64> %i.w to <8 x i16>
  %i.cq = lshr <8 x i16> %i.cp, splat (i16 4)
  %i.cr = bitcast <8 x i16> %i.cq to <16 x i8>
  %i.cs = and <16 x i8> %i.cr, splat (i8 15)
  %i.ct = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.cs)
  %i.cu = and <16 x i8> %i.co, %i.cm
  %i.cv = and <16 x i8> %i.cu, %i.ct
  %i.cw = or <16 x i8> %i.cf, %i.cv
  %i.cx = bitcast <16 x i8> %i.cw to <2 x i64>
  %i.cy = or <2 x i64> %.sroa.0.0301, %i.cx       ; 4 uses
  %i.cz = tail call noundef i32 @llvm.x86.sse41.ptestz(<2 x i64> %i.cy, <2 x i64> %i.cy)
  %.not = icmp eq i32 %i.cz, 0                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.da = add i64 %i.o, %2
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d
  %.02566.i = phi i64 [ 0, %bb.d ], [ %i.dh, %bb.g ] ; 6 uses
  %i.db = sub nsw i64 0, %.02566.i                ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %i.p, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1             ; 2 uses
  %i.de = icmp sgt i8 %i.dd, -65
  br i1 %i.de, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.df = icmp ne i64 %.02566.i, 0
  %i.dg = icmp sgt i8 %i.dd, -1
  %or.cond.i = and i1 %i.df, %i.dg
  br i1 %or.cond.i, label %bb.h, label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.dh = add i64 %.02566.i, 1                    ; 2 uses
  %.not.i5 = icmp ugt i64 %i.dh, %.0.i302
  br i1 %.not.i5, label %bb.i, label %bb.e, !llvm.loop !29

bb.h:                                             ; preds = %bb.f
  %i.di = sub i64 1, %.02566.i
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin130rewind_and_convert_with_errorsEmPKcmPc.exit

bb.i:                                             ; preds = %bb.g
  %i.dj = sub i64 0, %.0.i302
end_hunk_6
begin_hunk_7_@_ZNK7simdutf8westmere14implementation28convert_valid_utf8_to_latin1EPKcmPc:bb.a
  %i.bb = lshr i64 %i.ba, 1
  br label %.lr.ph51

.lr.ph51:                                         ; preds = %.lr.ph51.preheader, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit
  %.1.i49 = phi i64 [ %i.cc, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %.0.i56, %.lr.ph51.preheader ] ; 2 uses
  %.034.i48 = phi i64 [ %i.cd, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %i.bb, %.lr.ph51.preheader ] ; 3 uses
  %.147 = phi ptr [ %.5, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ], [ %.055, %.lr.ph51.preheader ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %.1.i49
  %.val = load <2 x i64>, ptr %i.bc, align 1      ; 2 uses
  %i.bd = icmp eq i64 %.034.i48, 4095
  br i1 %i.bd, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph51
  store <2 x i64> %.val, ptr %.147, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %.147, i64 12
  br label %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit

bb.e:                                             ; preds = %.lr.ph51
  %i.bf = and i64 %.034.i48, 4095
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf1612utf8bigindexE, i64 %i.bf ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 2             ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = icmp ugt i8 %i.bh, 63
  br i1 %i.bk, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bl = zext nneg i8 %i.bh to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr @_ZN7simdutf12_GLOBAL__N_16tables13utf8_to_utf168shufutf8E, i64 %i.bl
  %i.bn = load <16 x i8>, ptr %i.bm, align 16
  %i.bo = bitcast <2 x i64> %.val to <16 x i8>
  %i.bp = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> %i.bo, <16 x i8> %i.bn) ; 2 uses
  %i.bq = bitcast <16 x i8> %i.bp to <2 x i64>
  %i.br = and <2 x i64> %i.bq, splat (i64 35747867511423103)
  %i.bs = bitcast <16 x i8> %i.bp to <8 x i16>
  %i.bt = lshr <8 x i16> %i.bs, splat (i16 2)
  %i.bu = bitcast <8 x i16> %i.bt to <2 x i64>
  %i.bv = and <2 x i64> %i.bu, splat (i64 558454875139082176)
  %i.bw = or <2 x i64> %i.bv, %i.br
  %i.bx = bitcast <2 x i64> %i.bw to <8 x i16>
  %i.by = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bx, <8 x i16> poison)
  %i.bz = bitcast <16 x i8> %i.by to <2 x i64>
  %i.ca = extractelement <2 x i64> %i.bz, i64 0
  store i64 %i.ca, ptr %.147, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %.147, i64 6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.4 = phi ptr [ %.147, %bb.e ], [ %i.cb, %bb.f ]
  %.0.i2 = zext i8 %i.bj to i64
  br label %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit

_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit: ; preds = %bb.d, %bb.g
  %.5 = phi ptr [ %i.be, %bb.d ], [ %.4, %bb.g ]  ; 2 uses
  %.1.i3 = phi i64 [ 12, %bb.d ], [ %.0.i2, %bb.g ] ; 2 uses
  %i.cc = add i64 %.1.i3, %.1.i49                 ; 3 uses
  %i.cd = lshr i64 %.034.i48, %.1.i3
  %i.ce = icmp ult i64 %i.cc, %i.ah
  br i1 %i.ce, label %.lr.ph51, label %.loopexit, !llvm.loop !1089

.loopexit:                                        ; preds = %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit, %bb.c, %bb.b
  %.2 = phi ptr [ %i.ag, %bb.b ], [ %.055, %bb.c ], [ %.5, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 2 uses
  %.2.i = phi i64 [ %i.n, %bb.b ], [ %.0.i56, %bb.c ], [ %i.cc, %_ZN7simdutf8westmere12_GLOBAL__N_129convert_masked_utf8_to_latin1EPKcmRPc.exit ] ; 3 uses
  %i.cf = add i64 %.2.i, 64                       ; 2 uses
  %i.cg = add i64 %i.l, %i.cf
  %.not.i = icmp ugt i64 %i.cg, %2
  br i1 %.not.i, label %._crit_edge59, label %.lr.ph58, !llvm.loop !1090

._crit_edge59:                                    ; preds = %.loopexit, %._crit_edge
  %.0.lcssa = phi ptr [ %3, %._crit_edge ], [ %.2, %.loopexit ] ; 4 uses
  %.0.i.lcssa = phi i64 [ 0, %._crit_edge ], [ %.2.i, %.loopexit ] ; 3 uses
  %i.ch = icmp ult i64 %.0.i.lcssa, %2
  br i1 %i.ch, label %bb.h, label %_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit

bb.h:                                             ; preds = %._crit_edge59
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 %.0.i.lcssa ; 2 uses
  %i.cj = sub nuw i64 %2, %.0.i.lcssa             ; 3 uses
  br label %.lr.ph76.i

.lr.ph76.i:                                       ; preds = %bb.h, %.backedge.i
  %.04475.i = phi i64 [ %.044.be.i, %.backedge.i ], [ 0, %bb.h ] ; 6 uses
  %.04774.i = phi ptr [ %.047.be.i, %.backedge.i ], [ %.0.lcssa, %bb.h ] ; 21 uses
  %i.ck = add i64 %.04475.i, 16                   ; 2 uses
  %.not.i4 = icmp ugt i64 %i.ck, %i.cj
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.04475.i ; 17 uses
  br i1 %.not.i4, label %.lr.ph76..thread_crit_edge.i, label %bb.i

.lr.ph76..thread_crit_edge.i:                     ; preds = %.lr.ph76.i
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1
  br label %.thread.i

bb.i:                                             ; preds = %.lr.ph76.i
  %.0.copyload10.i = load i64, ptr %.phi.trans.insert.i, align 1 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 8 ; 2 uses
  %.0.copyload.i = load i64, ptr %i.cl, align 1
  %i.cm = or i64 %.0.copyload.i, %.0.copyload10.i
  %i.cn = and i64 %i.cm, -9187201950435737472
  %i.co = icmp eq i64 %i.cn, 0
  %i.cp = trunc i64 %.0.copyload10.i to i8        ; 2 uses
  br i1 %i.co, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %bb.i
  %i.cq = icmp ult i64 %.04475.i, -16
  br i1 %i.cq, label %.lr.ph.preheader.i, label %.backedge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.04774.i, i64 1
  store i8 %i.cp, ptr %.04774.i, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 1
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %.04774.i, i64 2
  store i8 %i.ct, ptr %i.cr, align 1
  %i.cv = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 2
  %i.cw = load i8, ptr %i.cv, align 1
  %i.cx = getelementptr inbounds nuw i8, ptr %.04774.i, i64 3
  store i8 %i.cw, ptr %i.cu, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 3
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %.04774.i, i64 4
  store i8 %i.cz, ptr %i.cx, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 4
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = getelementptr inbounds nuw i8, ptr %.04774.i, i64 5
  store i8 %i.dc, ptr %i.da, align 1
  %i.de = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 5
  %i.df = load i8, ptr %i.de, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %.04774.i, i64 6
  store i8 %i.df, ptr %i.dd, align 1
  %i.dh = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 6
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = getelementptr inbounds nuw i8, ptr %.04774.i, i64 7
  store i8 %i.di, ptr %i.dg, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 7
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = getelementptr inbounds nuw i8, ptr %.04774.i, i64 8
  store i8 %i.dl, ptr %i.dj, align 1
  %i.dn = load i8, ptr %i.cl, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %.04774.i, i64 9
  store i8 %i.dn, ptr %i.dm, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 9
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %.04774.i, i64 10
  store i8 %i.dq, ptr %i.do, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 10
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = getelementptr inbounds nuw i8, ptr %.04774.i, i64 11
  store i8 %i.dt, ptr %i.dr, align 1
  %i.dv = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 11
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %.04774.i, i64 12
  store i8 %i.dw, ptr %i.du, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 12
  %i.dz = load i8, ptr %i.dy, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %.04774.i, i64 13
  store i8 %i.dz, ptr %i.dx, align 1
  %i.eb = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 13
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = getelementptr inbounds nuw i8, ptr %.04774.i, i64 14
  store i8 %i.ec, ptr %i.ea, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 14
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = getelementptr inbounds nuw i8, ptr %.04774.i, i64 15
  store i8 %i.ef, ptr %i.ed, align 1
  %i.eh = getelementptr inbounds nuw i8, ptr %.phi.trans.insert.i, i64 15
  %i.ei = load i8, ptr %i.eh, align 1
  %i.ej = getelementptr inbounds nuw i8, ptr %.04774.i, i64 16
  store i8 %i.ei, ptr %i.eg, align 1
  br label %.backedge.i

.thread.i:                                        ; preds = %bb.i, %.lr.ph76..thread_crit_edge.i
  %i.ek = phi i8 [ %.pre.i, %.lr.ph76..thread_crit_edge.i ], [ %i.cp, %bb.i ] ; 4 uses
  %i.el = icmp sgt i8 %i.ek, -1
  br i1 %i.el, label %bb.n, label %bb.j

bb.j:                                             ; preds = %.thread.i
  %i.em = and i8 %i.ek, -32
  %i.en = icmp eq i8 %i.em, -64
  br i1 %i.en, label %bb.k, label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit

bb.k:                                             ; preds = %bb.j
  %i.eo = add nuw i64 %.04475.i, 1                ; 2 uses
  %.not57.i = icmp ult i64 %i.eo, %i.cj
  br i1 %.not57.i, label %bb.l, label %.thread66.i

bb.l:                                             ; preds = %bb.k
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1             ; 2 uses
  %.not58.i = icmp slt i8 %i.eq, -64
  br i1 %.not58.i, label %bb.m, label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit

bb.m:                                             ; preds = %bb.l
  %i.er = shl i8 %i.ek, 6
  %i.es = and i8 %i.eq, 63
  %i.et = or disjoint i8 %i.es, %i.er
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread.i
  %.sink86.i = phi i8 [ %i.et, %bb.m ], [ %i.ek, %.thread.i ]
  %.sink.i = phi i64 [ 2, %bb.m ], [ 1, %.thread.i ]
  store i8 %.sink86.i, ptr %.04774.i, align 1
  %i.eu = add i64 %.sink.i, %.04475.i
  %.451.i = getelementptr inbounds nuw i8, ptr %.04774.i, i64 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.n, %.lr.ph.preheader.i, %.preheader.i
  %.047.be.i = phi ptr [ %.451.i, %bb.n ], [ %.04774.i, %.preheader.i ], [ %i.ej, %.lr.ph.preheader.i ] ; 2 uses
  %.044.be.i = phi i64 [ %i.eu, %bb.n ], [ %.04475.i, %.preheader.i ], [ %i.ck, %.lr.ph.preheader.i ] ; 2 uses
  %i.ev = icmp ult i64 %.044.be.i, %i.cj
  br i1 %i.ev, label %.lr.ph76.i, label %.thread66.i

.thread66.i:                                      ; preds = %.backedge.i, %bb.k
  %.047.lcssa.i = phi ptr [ %.047.be.i, %.backedge.i ], [ %.04774.i, %bb.k ]
  %i.ew = ptrtoint ptr %.047.lcssa.i to i64
  %i.ex = ptrtoint ptr %.0.lcssa to i64
  %i.ey = sub i64 %i.ew, %i.ex
  br label %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit

_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit: ; preds = %bb.j, %bb.l, %.thread66.i
  %.2.i5 = phi i64 [ %i.ey, %.thread66.i ], [ 0, %bb.l ], [ 0, %bb.j ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 %.2.i5
  br label %_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit

_ZN7simdutf8westmere12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit: ; preds = %._crit_edge59, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit
  %.3 = phi ptr [ %i.ez, %_ZN7simdutf6scalar12_GLOBAL__N_114utf8_to_latin113convert_validEPKcmPc.exit ], [ %.0.lcssa, %._crit_edge59 ]
  %i.fa = ptrtoint ptr %.3 to i64
  %i.fb = ptrtoint ptr %3 to i64
  %i.fc = sub i64 %i.fa, %i.fb
  ret i64 %i.fc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef range(i64 -4611686018427387904, 4611686018427387904) i64 @_ZNK7simdutf8westmere14implementation23convert_utf8_to_utf16leEPKcmPDs(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) unnamed_addr #28 align 2 {
bb.a:
  %.not396 = icmp eq i64 %2, 0
  br i1 %.not396, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.059.i378 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %.060.i377 = phi i64 [ %i.g, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %i.a = getelementptr i8, ptr %1, i64 %.060.i377
  %i.b = getelementptr i8, ptr %i.a, i64 -1
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp sgt i8 %i.c, -65
  %i.e = zext i1 %i.d to i64
  %i.f = add nuw nsw i64 %.059.i378, %i.e         ; 2 uses
  %i.g = add i64 %.060.i377, -1                   ; 3 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp samesign ult i64 %i.f, 8
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !1091

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.060.i.lcssa = phi i64 [ 0, %bb.a ], [ %i.g, %.lr.ph ]
  %i.k = add i64 %2, 1
  %i.l = sub i64 %i.k, %.060.i.lcssa              ; 2 uses
  %i.m = add i64 %i.l, 64
  %.not.i386 = icmp ugt i64 %i.m, %2
  br i1 %.not.i386, label %._crit_edge392, label %.lr.ph391

.lr.ph391:                                        ; preds = %._crit_edge, %.loopexit
  %i.n = phi i64 [ %i.ke, %.loopexit ], [ 64, %._crit_edge ]
  %.054.i389 = phi i64 [ %.458.i, %.loopexit ], [ 0, %._crit_edge ] ; 5 uses
  %.sroa.0.0388 = phi <2 x i64> [ %.sroa.0.1, %.loopexit ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.0387 = phi ptr [ %.2, %.loopexit ], [ %3, %._crit_edge ] ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.054.i389 ; 4 uses
  %i.p = load <2 x i64>, ptr %i.o, align 1        ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load <2 x i64>, ptr %i.q, align 1        ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.t = load <2 x i64>, ptr %i.s, align 1        ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.v = load <2 x i64>, ptr %i.u, align 1        ; 5 uses
  %i.w = or <2 x i64> %i.r, %i.p
  %i.x = or <2 x i64> %i.w, %i.t
  %i.y = or <2 x i64> %i.x, %i.v
  %i.z = bitcast <2 x i64> %i.y to <16 x i8>
  %i.aa = icmp slt <16 x i8> %i.z, zeroinitializer
  %i.ab = bitcast <16 x i1> %i.aa to i16
  %i.ac = icmp eq i16 %i.ab, 0
  %i.ad = bitcast <2 x i64> %i.p to <16 x i8>     ; 9 uses
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph391
  %i.ae = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.af = zext <8 x i8> %i.ae to <8 x i16>
  %i.ag = shufflevector <16 x i8> %i.ad, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ah = zext <8 x i8> %i.ag to <8 x i16>
  store <8 x i16> %i.af, ptr %.0387, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.0387, i64 16
  store <8 x i16> %i.ah, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %.0387, i64 32
  %i.ak = bitcast <2 x i64> %i.r to <16 x i8>     ; 2 uses
  %i.al = shufflevector <16 x i8> %i.ak, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.am = zext <8 x i8> %i.al to <8 x i16>
  %i.an = shufflevector <16 x i8> %i.ak, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ao = zext <8 x i8> %i.an to <8 x i16>
  store <8 x i16> %i.am, ptr %i.aj, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %.0387, i64 48
  store <8 x i16> %i.ao, ptr %i.ap, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.0387, i64 64
  %i.ar = bitcast <2 x i64> %i.t to <16 x i8>     ; 2 uses
  %i.as = shufflevector <16 x i8> %i.ar, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.at = zext <8 x i8> %i.as to <8 x i16>
  %i.au = shufflevector <16 x i8> %i.ar, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.av = zext <8 x i8> %i.au to <8 x i16>
  store <8 x i16> %i.at, ptr %i.aq, align 1
  %i.aw = getelementptr inbounds nuw i8, ptr %.0387, i64 80
  store <8 x i16> %i.av, ptr %i.aw, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.0387, i64 96
  %i.ay = bitcast <2 x i64> %i.v to <16 x i8>     ; 2 uses
  %i.az = shufflevector <16 x i8> %i.ay, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ba = zext <8 x i8> %i.az to <8 x i16>
  %i.bb = shufflevector <16 x i8> %i.ay, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bc = zext <8 x i8> %i.bb to <8 x i16>
  store <8 x i16> %i.ba, ptr %i.ax, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.0387, i64 112
  store <8 x i16> %i.bc, ptr %i.bd, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %.0387, i64 128
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph391
  %i.bf = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.ad, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.bg = bitcast <16 x i8> %i.bf to <8 x i16>
  %i.bh = lshr <8 x i16> %i.bg, splat (i16 4)
  %i.bi = bitcast <8 x i16> %i.bh to <16 x i8>
  %i.bj = and <16 x i8> %i.bi, splat (i8 15)
  %i.bk = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.bj)
  %i.bl = and <16 x i8> %i.bf, splat (i8 15)
  %i.bm = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.bl)
  %i.bn = bitcast <2 x i64> %i.p to <8 x i16>
  %i.bo = lshr <8 x i16> %i.bn, splat (i16 4)
  %i.bp = bitcast <8 x i16> %i.bo to <16 x i8>
  %i.bq = and <16 x i8> %i.bp, splat (i8 15)
  %i.br = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.bq)
  %i.bs = and <16 x i8> %i.bm, %i.bk
  %i.bt = and <16 x i8> %i.bs, %i.br
  %i.bu = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.ad, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.bv = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0>, <16 x i8> %i.ad, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.bw = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.bu, <16 x i8> splat (i8 96))
  %i.bx = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.bv, <16 x i8> splat (i8 112))
  %i.by = or <16 x i8> %i.bw, %i.bx
  %.inner409 = and <16 x i8> %i.by, splat (i8 -128)
  %.inner410 = xor <16 x i8> %.inner409, %i.bt
  %i.bz = bitcast <2 x i64> %i.r to <16 x i8>     ; 7 uses
  %i.ca = shufflevector <16 x i8> %i.ad, <16 x i8> %i.bz, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.cb = bitcast <16 x i8> %i.ca to <8 x i16>
  %i.cc = lshr <8 x i16> %i.cb, splat (i16 4)
  %i.cd = bitcast <8 x i16> %i.cc to <16 x i8>
  %i.ce = and <16 x i8> %i.cd, splat (i8 15)
  %i.cf = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.ce)
  %i.cg = and <16 x i8> %i.ca, splat (i8 15)
  %i.ch = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.cg)
  %i.ci = bitcast <2 x i64> %i.r to <8 x i16>
  %i.cj = lshr <8 x i16> %i.ci, splat (i16 4)
  %i.ck = bitcast <8 x i16> %i.cj to <16 x i8>
  %i.cl = and <16 x i8> %i.ck, splat (i8 15)
  %i.cm = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.cl)
  %i.cn = and <16 x i8> %i.ch, %i.cf
  %i.co = and <16 x i8> %i.cn, %i.cm
  %i.cp = shufflevector <16 x i8> %i.ad, <16 x i8> %i.bz, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.cq = shufflevector <16 x i8> %i.ad, <16 x i8> %i.bz, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.cr = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.cp, <16 x i8> splat (i8 96))
  %i.cs = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.cq, <16 x i8> splat (i8 112))
  %i.ct = or <16 x i8> %i.cr, %i.cs
  %.inner413 = and <16 x i8> %i.ct, splat (i8 -128)
  %.inner414 = xor <16 x i8> %.inner413, %i.co
  %i.cu = bitcast <2 x i64> %i.t to <16 x i8>     ; 6 uses
  %i.cv = shufflevector <16 x i8> %i.bz, <16 x i8> %i.cu, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.cw = bitcast <16 x i8> %i.cv to <8 x i16>
  %i.cx = lshr <8 x i16> %i.cw, splat (i16 4)
  %i.cy = bitcast <8 x i16> %i.cx to <16 x i8>
  %i.cz = and <16 x i8> %i.cy, splat (i8 15)
  %i.da = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.cz)
  %i.db = and <16 x i8> %i.cv, splat (i8 15)
  %i.dc = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.db)
  %i.dd = bitcast <2 x i64> %i.t to <8 x i16>
  %i.de = lshr <8 x i16> %i.dd, splat (i16 4)
  %i.df = bitcast <8 x i16> %i.de to <16 x i8>
  %i.dg = and <16 x i8> %i.df, splat (i8 15)
  %i.dh = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 -26, i8 -82, i8 -70, i8 -70, i8 1, i8 1, i8 1, i8 1>, <16 x i8> %i.dg)
  %i.di = and <16 x i8> %i.dc, %i.da
  %i.dj = and <16 x i8> %i.di, %i.dh
  %i.dk = shufflevector <16 x i8> %i.bz, <16 x i8> %i.cu, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.dl = shufflevector <16 x i8> %i.bz, <16 x i8> %i.cu, <16 x i32> <i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28>
  %i.dm = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.dk, <16 x i8> splat (i8 96))
  %i.dn = tail call <16 x i8> @llvm.usub.sat.v16i8(<16 x i8> %i.dl, <16 x i8> splat (i8 112))
  %i.do = or <16 x i8> %i.dm, %i.dn
  %.inner417 = and <16 x i8> %i.do, splat (i8 -128)
  %.inner418 = xor <16 x i8> %.inner417, %i.dj
  %i.dp = bitcast <2 x i64> %i.v to <16 x i8>     ; 3 uses
  %i.dq = shufflevector <16 x i8> %i.cu, <16 x i8> %i.dp, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30> ; 2 uses
  %i.dr = bitcast <16 x i8> %i.dq to <8 x i16>
  %i.ds = lshr <8 x i16> %i.dr, splat (i16 4)
  %i.dt = bitcast <8 x i16> %i.ds to <16 x i8>
  %i.du = and <16 x i8> %i.dt, splat (i8 15)
  %i.dv = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 -128, i8 -128, i8 -128, i8 -128, i8 33, i8 1, i8 21, i8 73>, <16 x i8> %i.du)
  %i.dw = and <16 x i8> %i.dq, splat (i8 15)
  %i.dx = tail call <16 x i8> @llvm.x86.ssse3.pshuf.b.128(<16 x i8> <i8 -25, i8 -93, i8 -125, i8 -125, i8 -117, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -53, i8 -37, i8 -53, i8 -53>, <16 x i8> %i.dw)
  %i.dy = bitcast <2 x i64> %i.v to <8 x i16>
  %i.dz = lshr <8 x i16> %i.dy, splat (i16 4)
  %i.ea = bitcast <8 x i16> %i.dz to <16 x i8>
end_hunk_7
