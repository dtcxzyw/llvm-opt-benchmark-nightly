inline.NumInlined: 75479
inline.NumDeleted: 20342
loop-unroll.NumCompletelyUnrolled: 319
loop-unroll.NumRuntimeUnrolled: 204
loop-unroll.NumUnrolled: 523
begin_hunk_0_@_ZN8facebook5velox4exec12VectorReaderINS0_3MapINS0_7VarcharEdEEED2Ev
define linkonce_odr void @_ZN8facebook5velox4exec12VectorReaderINS0_3MapINS0_7VarcharEdEEED2Ev(ptr noundef nonnull align 8 dead_on_return(292) dereferenceable(292) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !725  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !777
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #43
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !778  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN8facebook5velox13DecodedVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !781
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #43
  br label %_ZN8facebook5velox13DecodedVectorD2Ev.exit

_ZN8facebook5velox13DecodedVectorD2Ev.exit:       ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !725  ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i1, label %_ZNSt6vectorImSaImEED2Ev.exit.i2, label %bb.d

bb.d:                                             ; preds = %_ZN8facebook5velox13DecodedVectorD2Ev.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !777
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #43
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i2

_ZNSt6vectorImSaImEED2Ev.exit.i2:                 ; preds = %bb.d, %_ZN8facebook5velox13DecodedVectorD2Ev.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !778  ; 3 uses
  %.not.i.i.i1.i3 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i1.i3, label %_ZN8facebook5velox13DecodedVectorD2Ev.exit4, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i2
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !781
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #43
  br label %_ZN8facebook5velox13DecodedVectorD2Ev.exit4

_ZN8facebook5velox13DecodedVectorD2Ev.exit4:      ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i2, %bb.e
  ret void
}

declare void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(94), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox4exec12VectorReaderINS0_3MapINS0_7VarcharEdEEE12containsNullEi(ptr noundef nonnull align 8 dereferenceable(292) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !20175, !nonnull !393, !align !891 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  %i.c = load i8, ptr %i.b, align 2, !tbaa !792, !range !392, !noundef !393
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  br i1 %i.d, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 59
  %i.f = load i8, ptr %i.e, align 1, !tbaa !793, !range !392, !noundef !393
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.i = load i32, ptr %i.h, align 8, !tbaa !794
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !795
  %i.l = sext i32 %1 to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.n, %bb.d ], [ %i.i, %bb.c ], [ %1, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !20289 ; 4 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  %i.r = load i8, ptr %i.q, align 1, !range !392
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i = select i1 %i.d, i1 true, i1 %i.s
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = zext i32 %1 to i64                       ; 2 uses
  %i.u = lshr i64 %i.t, 6
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !366
  %i.x = and i64 %i.t, 63
  %i.y = shl nuw i64 1, %i.x
  %i.z = and i64 %i.w, %i.y
  %.not.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 59
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !793, !range !392, !noundef !393
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !795
  %i.af = sext i32 %1 to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = lshr i64 %i.ai, 6
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !366
  %i.am = and i64 %i.ai, 63
  %i.an = shl nuw i64 1, %i.am
  %i.ao = and i64 %i.an, %i.al
  %.not.i7.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i7.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.g
  %i.ap = load i64, ptr %i.p, align 8, !tbaa !366
  %i.aq = and i64 %i.ap, 1
  %.not.i6.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i6.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.h, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !365, !range !392, !noundef !393
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.thread32

bb.i:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !20192
  %i.aw = sext i32 %.0.i to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3  ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !20193
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.aw
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3  ; 2 uses
  %i.bd = add nsw i32 %i.bc, %i.ay                ; 2 uses
  %i.be = icmp sgt i32 %i.bc, 0
  br i1 %i.be, label %.lr.ph.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.thread32

.lr.ph.i:                                         ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !17766, !nonnull !393, !align !891 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !20289 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bi, null
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 59
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.thread32, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 57
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 58
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !792, !range !392, !noundef !393
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = load i8, ptr %i.bl, align 1, !range !392
  %i.bq = trunc nuw i8 %i.bp to i1
  %or.cond.i.i.i = select i1 %i.bo, i1 true, i1 %i.bq
  br i1 %or.cond.i.i.i, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  %i.br = zext i32 %i.ay to i64                   ; 2 uses
  %i.bs = lshr i64 %i.br, 6
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !366
  %i.bv = and i64 %i.br, 63
  %i.bw = shl nuw i64 1, %i.bv
  %i.bx = and i64 %i.bu, %i.bw
  %.not.i.i.i.us34.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i.us34.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.preheader.i

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.preheader.i: ; preds = %.lr.ph.split.split.us.i
  %i.by = add i32 %i.bd, -1                       ; 2 uses
  %exitcond42.not.not.i58 = icmp eq i32 %i.ay, %i.by
  br i1 %exitcond42.not.not.i58, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.thread32, label %.lr.ph60, !llvm.loop !20290

.lr.ph60:                                         ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.preheader.i
  br label %bb.j, !llvm.loop !20290

bb.j:                                             ; preds = %.lr.ph60, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.i
  %.0711.us1735.i59 = phi i32 [ %i.ay, %.lr.ph60 ], [ %i.bz, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.i ]
  %i.bz = add nsw i32 %.0711.us1735.i59, 1        ; 3 uses
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = lshr i64 %i.ca, 6
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !366
  %i.ce = and i64 %i.ca, 63
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = and i64 %i.cd, %i.cf
  %.not.i.i.i.us.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.i.us.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.i, !llvm.loop !20290

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.i: ; preds = %bb.j
  %exitcond42.not.not.i = icmp eq i32 %i.bz, %i.by
  br i1 %exitcond42.not.not.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.thread32.loopexit54_crit_edge, label %bb.j, !llvm.loop !20290

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i
  %i.ch = load i8, ptr %i.bj, align 1, !tbaa !793, !range !392, !noundef !393
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit, label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.split.i
  %i.cj = load ptr, ptr %i.bk, align 8, !tbaa !795 ; 2 uses
  %i.ck = sext i32 %i.ay to i64                   ; 2 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3
  %i.cn = zext i32 %i.cm to i64                   ; 2 uses
  %i.co = lshr i64 %i.cn, 6
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.co
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !366
  %i.cr = and i64 %i.cn, 63
  %i.cs = shl nuw i64 1, %i.cr
  %i.ct = and i64 %i.cs, %i.cq
  %.not.i7.i.i27.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i7.i.i27.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.preheader.i

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.preheader.i: ; preds = %.lr.ph.split.split.split.i
  %i.cu = add nsw i32 %i.bd, -1                   ; 2 uses
  %wide.trip.count.i = sext i32 %i.cu to i64
  %exitcond.not.not.i56 = icmp eq i32 %i.ay, %i.cu
  br i1 %exitcond.not.not.i56, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.thread32, label %.lr.ph, !llvm.loop !20290

.lr.ph:                                           ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.preheader.i
  br label %bb.k, !llvm.loop !20290

bb.k:                                             ; preds = %.lr.ph, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i
  %indvars.iv.i57 = phi i64 [ %i.ck, %.lr.ph ], [ %indvars.iv.next.i, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i57, 1 ; 3 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %indvars.iv.next.i
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cx = zext i32 %i.cw to i64                   ; 2 uses
  %i.cy = lshr i64 %i.cx, 6
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !366
  %i.db = and i64 %i.cx, 63
  %i.dc = shl nuw i64 1, %i.db
  %i.dd = and i64 %i.dc, %i.da
  %.not.i7.i.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i7.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i, !llvm.loop !20290

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i: ; preds = %bb.k
  %exitcond.not.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.not.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.thread32.loopexit54_crit_edge, label %bb.k, !llvm.loop !20290

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit: ; preds = %.lr.ph.split.split.i
  %i.de = load i64, ptr %i.bi, align 8, !tbaa !366
  %i.df = and i64 %i.de, 1
  %.not.i6.i.i.us.i = icmp eq i64 %i.df, 0
  br i1 %.not.i6.i.i.us.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.thread32

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.thread32.loopexit54_crit_edge: ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.i
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.thread32, !llvm.loop !20290

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.thread32: ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.preheader.i, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.thread32.loopexit54_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.preheader.i, %.lr.ph.i, %bb.i, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 290
  %i.dh = load i8, ptr %i.dg, align 2, !tbaa !365, !range !392, !noundef !393
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.l, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit

bb.l:                                             ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.thread32
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !20192
  %i.dl = sext i32 %.0.i to i64                   ; 2 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3  ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !20193
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.dl
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !3  ; 2 uses
  %i.ds = add nsw i32 %i.dr, %i.dn                ; 2 uses
  %i.dt = icmp sgt i32 %i.dr, 0
  br i1 %i.dt, label %.lr.ph.i10, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit

.lr.ph.i10:                                       ; preds = %bb.l
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !7378, !nonnull !393, !align !891 ; 5 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !20289 ; 6 uses
  %.not.i.i.i11 = icmp eq ptr %i.dx, null
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 59
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  br i1 %.not.i.i.i11, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %.lr.ph.split.i12

.lr.ph.split.i12:                                 ; preds = %.lr.ph.i10
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 57
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 58
  %i.ec = load i8, ptr %i.eb, align 2, !tbaa !792, !range !392, !noundef !393
  %i.ed = trunc nuw i8 %i.ec to i1
  %i.ee = load i8, ptr %i.ea, align 1, !range !392
  %i.ef = trunc nuw i8 %i.ee to i1
  %or.cond.i.i.i13 = select i1 %i.ed, i1 true, i1 %i.ef
  br i1 %or.cond.i.i.i13, label %.lr.ph.split.split.us.i24, label %.lr.ph.split.split.i14

.lr.ph.split.split.us.i24:                        ; preds = %.lr.ph.split.i12
  %i.eg = zext i32 %i.dn to i64                   ; 2 uses
  %i.eh = lshr i64 %i.eg, 6
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !366
  %i.ek = and i64 %i.eg, 63
  %i.el = shl nuw i64 1, %i.ek
  %i.em = and i64 %i.ej, %i.el
  %.not.i.i.i.us34.i25 = icmp eq i64 %i.em, 0
  br i1 %.not.i.i.i.us34.i25, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.preheader.i

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.preheader.i: ; preds = %.lr.ph.split.split.us.i24
  %i.en = add i32 %i.ds, -1                       ; 2 uses
  %exitcond42.not.not.i27.not65 = icmp eq i32 %i.dn, %i.en
  br i1 %exitcond42.not.not.i27.not65, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %.lr.ph67, !llvm.loop !20291

.lr.ph67:                                         ; preds = %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.preheader.i
  br label %bb.m, !llvm.loop !20291

bb.m:                                             ; preds = %.lr.ph67, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i
  %.0711.us1735.i2666 = phi i32 [ %i.dn, %.lr.ph67 ], [ %i.eo, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i ]
  %i.eo = add nsw i32 %.0711.us1735.i2666, 1      ; 3 uses
  %i.ep = zext i32 %i.eo to i64                   ; 2 uses
  %i.eq = lshr i64 %i.ep, 6
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.eq
  %i.es = load i64, ptr %i.er, align 8, !tbaa !366
  %i.et = and i64 %i.ep, 63
  %i.eu = shl nuw i64 1, %i.et
  %i.ev = and i64 %i.es, %i.eu
  %.not.i.i.i.us.i28 = icmp eq i64 %i.ev, 0
  br i1 %.not.i.i.i.us.i28, label %._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit51_crit_edge, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i, !llvm.loop !20291

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i: ; preds = %bb.m
  %exitcond42.not.not.i27.not = icmp eq i32 %i.eo, %i.en
  br i1 %exitcond42.not.not.i27.not, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit51_crit_edge, label %bb.m, !llvm.loop !20291

.lr.ph.split.split.i14:                           ; preds = %.lr.ph.split.i12
  %i.ew = load i8, ptr %i.dy, align 1, !tbaa !793, !range !392, !noundef !393
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %.lr.ph.split.split.split.us.i22, label %.lr.ph.split.split.split.i15

.lr.ph.split.split.split.us.i22:                  ; preds = %.lr.ph.split.split.i14
  %i.ey = load i64, ptr %i.dx, align 8, !tbaa !366
  %i.ez = and i64 %i.ey, 1
  %.not.i6.i.i.us.i23 = icmp eq i64 %i.ez, 0
  br label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit

.lr.ph.split.split.split.i15:                     ; preds = %.lr.ph.split.split.i14
  %i.fa = load ptr, ptr %i.dz, align 8, !tbaa !795 ; 2 uses
  %i.fb = sext i32 %i.dn to i64                   ; 2 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.fb
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !3
  %i.fe = zext i32 %i.fd to i64                   ; 2 uses
  %i.ff = lshr i64 %i.fe, 6
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.ff
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !366
  %i.fi = and i64 %i.fe, 63
  %i.fj = shl nuw i64 1, %i.fi
  %i.fk = and i64 %i.fj, %i.fh
  %.not.i7.i.i27.i16 = icmp eq i64 %i.fk, 0
  br i1 %.not.i7.i.i27.i16, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.preheader.i

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.preheader.i: ; preds = %.lr.ph.split.split.split.i15
  %i.fl = add nsw i32 %i.ds, -1                   ; 2 uses
  %wide.trip.count.i17 = sext i32 %i.fl to i64
  %exitcond.not.not.i19.not61 = icmp eq i32 %i.dn, %i.fl
  br i1 %exitcond.not.not.i19.not61, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %.lr.ph63, !llvm.loop !20291

.lr.ph63:                                         ; preds = %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.preheader.i
  br label %bb.n, !llvm.loop !20291

bb.n:                                             ; preds = %.lr.ph63, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i
  %indvars.iv.i1862 = phi i64 [ %i.fb, %.lr.ph63 ], [ %indvars.iv.next.i20, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i ]
  %indvars.iv.next.i20 = add nsw i64 %indvars.iv.i1862, 1 ; 3 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %indvars.iv.next.i20
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %i.fp = lshr i64 %i.fo, 6
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.fp
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !366
  %i.fs = and i64 %i.fo, 63
  %i.ft = shl nuw i64 1, %i.fs
  %i.fu = and i64 %i.ft, %i.fr
  %.not.i7.i.i.i21 = icmp eq i64 %i.fu, 0
  br i1 %.not.i7.i.i.i21, label %._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit51_crit_edge, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i, !llvm.loop !20291

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i: ; preds = %bb.n
  %exitcond.not.not.i19.not = icmp eq i64 %indvars.iv.next.i20, %wide.trip.count.i17
  br i1 %exitcond.not.not.i19.not, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit51_crit_edge, label %bb.n, !llvm.loop !20291

._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit51_crit_edge: ; preds = %bb.n, %bb.m
  br label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, !llvm.loop !20291

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit51_crit_edge: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i
  br label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, !llvm.loop !20291

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit: ; preds = %bb.k, %bb.j, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.preheader.i, %._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit51_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit51_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.preheader.i, %.lr.ph.split.split.us.i, %.lr.ph.split.split.split.i, %.lr.ph.split.split.split.i15, %.lr.ph.split.split.split.us.i22, %.lr.ph.split.split.us.i24, %.lr.ph.i10, %bb.l, %bb.h, %bb.f, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.thread32, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.fv = phi i1 [ true, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit ], [ true, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit ], [ false, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.thread32 ], [ true, %.lr.ph.split.split.split.i ], [ true, %bb.f ], [ true, %bb.h ], [ false, %bb.l ], [ false, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.preheader.i ], [ false, %.lr.ph.i10 ], [ %.not.i6.i.i.us.i23, %.lr.ph.split.split.split.us.i22 ], [ true, %.lr.ph.split.split.split.i15 ], [ true, %.lr.ph.split.split.us.i24 ], [ true, %.lr.ph.split.split.us.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.preheader.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit51_crit_edge ], [ true, %bb.j ], [ true, %._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit51_crit_edge ], [ true, %bb.k ]
  ret i1 %i.fv
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_127CosineSimilarityFunctionMapINS0_4exec10VectorExecEE12callNullFreeERdRKNS4_7MapViewILb0ENS0_7VarcharEdEESC_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.facebook::velox::exec::IndexBasedIterator", align 8 ; 8 uses
  %4 = alloca %"class.facebook::velox::exec::IndexBasedIterator", align 8 ; 8 uses
  %5 = alloca %"class.facebook::velox::exec::MapView<false, facebook::velox::Varchar, double>::Element", align 8 ; 6 uses
  %6 = alloca %"class.facebook::velox::exec::IndexBasedIterator", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20198 ; 8 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !20198
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.p, label %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.lr.ph.i

_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.lr.ph.i: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !20197, !noalias !20292 ; 5 uses
  %i.i = add nsw i32 %i.h, %i.b                   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20196, !noalias !20292 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !7378, !noalias !20295, !nonnull !393, !align !891 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !783, !noalias !20295 ; 11 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 58
  %i.p = load i8, ptr %i.o, align 2, !tbaa !792, !range !392, !noalias !20295, !noundef !393
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  br i1 %i.q, label %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.preheader.i, label %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.lr.ph.split.i

_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.preheader.i: ; preds = %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.lr.ph.i
  %i.t = sext i32 %i.h to i64                     ; 2 uses
  %xtraiter52 = and i32 %i.b, 3                   ; 2 uses
  %lcmp.mod53.not = icmp eq i32 %xtraiter52, 0
  br i1 %lcmp.mod53.not, label %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.i.prol.loopexit, label %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.i.prol

_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.i.prol: ; preds = %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.preheader.i, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.i.prol
  %indvars.iv23.i.prol = phi i64 [ %indvars.iv.next24.i.prol, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.i.prol ], [ %i.t, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.preheader.i ] ; 2 uses
  %.010.us.i.prol = phi double [ %i.x, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.i.prol ], [ 0.000000e+00, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.preheader.i ]
  %prol.iter54 = phi i32 [ %prol.iter54.next, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.i.prol ], [ 0, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.preheader.i ]
  %i.u = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv23.i.prol
  %i.v = load double, ptr %i.u, align 8, !tbaa !1891, !noalias !20295 ; 2 uses
  %i.w = fmul double %i.v, %i.v
  %i.x = fadd double %.010.us.i.prol, %i.w        ; 3 uses
  %indvars.iv.next24.i.prol = add nsw i64 %indvars.iv23.i.prol, 1 ; 2 uses
  %prol.iter54.next = add i32 %prol.iter54, 1     ; 2 uses
  %prol.iter54.cmp.not = icmp eq i32 %prol.iter54.next, %xtraiter52
  br i1 %prol.iter54.cmp.not, label %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.i.prol.loopexit, label %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.i.prol, !llvm.loop !20300

_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.i.prol.loopexit: ; preds = %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.i.prol, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.preheader.i
  %.lcssa44.unr = phi double [ poison, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.preheader.i ], [ %i.x, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.i.prol ]
  %indvars.iv23.i.unr = phi i64 [ %i.t, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.preheader.i ], [ %indvars.iv.next24.i.prol, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.i.prol ]
  %.010.us.i.unr = phi double [ 0.000000e+00, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.preheader.i ], [ %i.x, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.i.prol ]
  %i.y = icmp ult i32 %i.b, 4
  br i1 %i.y, label %_ZN8facebook5velox9functions12_GLOBAL__N_127CosineSimilarityFunctionMapINS0_4exec10VectorExecEE9normalizeERKNS4_7MapViewILb0ENS0_7VarcharEdEE.exit, label %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.i

_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.i: ; preds = %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.i.prol.loopexit, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.i
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i.3, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.i ], [ %indvars.iv23.i.unr, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.i.prol.loopexit ] ; 5 uses
  %.010.us.i = phi double [ %i.ar, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.i ], [ %.010.us.i.unr, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.i.prol.loopexit ]
  %i.z = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv23.i
  %i.aa = load double, ptr %i.z, align 8, !tbaa !1891, !noalias !20295 ; 2 uses
  %i.ab = fmul double %i.aa, %i.aa
  %i.ac = fadd double %.010.us.i, %i.ab
  %i.ad = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv23.i
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = load double, ptr %i.ae, align 8, !tbaa !1891, !noalias !20295 ; 2 uses
  %i.ag = fmul double %i.af, %i.af
  %i.ah = fadd double %i.ac, %i.ag
  %i.ai = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv23.i
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !1891, !noalias !20295 ; 2 uses
  %i.al = fmul double %i.ak, %i.ak
  %i.am = fadd double %i.ah, %i.al
  %i.an = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv23.i
  %i.ao = getelementptr i8, ptr %i.an, i64 24
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !1891, !noalias !20295 ; 2 uses
  %i.aq = fmul double %i.ap, %i.ap
  %i.ar = fadd double %i.am, %i.aq                ; 2 uses
  %indvars.iv.next24.i.3 = add nsw i64 %indvars.iv23.i, 4 ; 2 uses
  %i.as = trunc nsw i64 %indvars.iv.next24.i.3 to i32
  %i.at = icmp eq i32 %i.i, %i.as
  br i1 %i.at, label %_ZN8facebook5velox9functions12_GLOBAL__N_127CosineSimilarityFunctionMapINS0_4exec10VectorExecEE9normalizeERKNS4_7MapViewILb0ENS0_7VarcharEdEE.exit, label %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us.i

_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.lr.ph.split.i: ; preds = %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 59
  %i.av = load i8, ptr %i.au, align 1, !tbaa !793, !range !392, !noalias !20295, !noundef !393
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.lr.ph.split.split.us.i, label %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.lr.ph.split.split.i

_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.lr.ph.split.split.us.i: ; preds = %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.lr.ph.split.i
  %i.ax = load i32, ptr %i.s, align 8, !tbaa !794, !noalias !20295
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !1891, !noalias !20295 ; 2 uses
  %i.bb = fmul double %i.ba, %i.ba                ; 9 uses
  %xtraiter49 = and i32 %i.b, 7                   ; 2 uses
  %lcmp.mod50.not = icmp eq i32 %xtraiter49, 0
  br i1 %lcmp.mod50.not, label %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us11.i.prol.loopexit, label %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us11.i.prol

_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us11.i.prol: ; preds = %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.lr.ph.split.split.us.i, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us11.i.prol
  %.010.us12.i.prol = phi double [ %i.bc, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us11.i.prol ], [ 0.000000e+00, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.lr.ph.split.split.us.i ]
  %.sroa.04.09.us13.i.prol = phi i32 [ %i.bd, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us11.i.prol ], [ %i.h, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.lr.ph.split.split.us.i ]
  %prol.iter51 = phi i32 [ %prol.iter51.next, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us11.i.prol ], [ 0, %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.lr.ph.split.split.us.i ]
  %i.bc = fadd double %i.bb, %.010.us12.i.prol    ; 3 uses
  %i.bd = add nsw i32 %.sroa.04.09.us13.i.prol, 1 ; 2 uses
  %prol.iter51.next = add i32 %prol.iter51, 1     ; 2 uses
  %prol.iter51.cmp.not = icmp eq i32 %prol.iter51.next, %xtraiter49
  br i1 %prol.iter51.cmp.not, label %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us11.i.prol.loopexit, label %_ZN8facebook5velox4exec7MapViewILb0ENS0_7VarcharEdE7Element8getFirstEPKNS1_12VectorReaderIS3_EEl.exit.i.i.i.us11.i.prol, !llvm.loop !20301
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESC_EEEJSC_SC_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EERKSK_IKNS0_4TypeEERNS1_7EvalCtxERSM_:bb.a
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %23) #37
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ch, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  invoke void @__cxa_end_catch()
          to label %.body.i.i unwind label %bb.co

bb.ci:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cj:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rs = load ptr, ptr %24, align 8, !tbaa !618
  %.not.i69.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.rs, null
  br i1 %.not.i69.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit70.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #37
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit70.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit70.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #37
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i.i.i.invoke.i.i

bb.cl:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rt = landingpad { ptr, i32 }
          cleanup
  %i.ru = load ptr, ptr %24, align 8, !tbaa !618
  %.not.i71.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ru, null
  br i1 %.not.i71.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit72.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #37
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit72.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit72.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cm, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #37
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit72.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ci
  %.pn.i30.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.rt, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit72.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.rr, %bb.ci ]
  invoke void @__cxa_end_catch()
          to label %.body.i.i unwind label %bb.co

bb.co:                                            ; preds = %bb.cn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rv = landingpad { ptr, i32 }
          catch ptr null
  %i.rw = extractvalue { ptr, i32 } %i.rv, 0
  call void @__clang_call_terminate(ptr %i.rw) #46
  unreachable

bb.cp:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS1_10VectorExecEEESA_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESE_EEEJSE_SE_EEEE7iterateIJNS1_12VectorReaderISE_EESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i.i.i.invoke.i.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESC_EEEJSC_SC_EEEE7iterateIJNS1_12VectorReaderISC_EESI_EEEvRNSF_12ApplyContextEDpRT_ENKUlT_E_clImEEDaSO_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rx = add nuw i64 %.0140.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ry = icmp ult i64 %i.rx, %i.nj
  br i1 %i.ry, label %bb.bo, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESG_EEEJSG_SG_EEEE7iterateIJNS3_12VectorReaderISG_EESM_EEEvRNSJ_12ApplyContextEDpRT_EUlT_E_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !20541

bb.cq:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS1_10VectorExecEEESA_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESE_EEEJSE_SE_EEEE7iterateIJNS1_12VectorReaderISE_EESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.015139.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aav, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS1_10VectorExecEEESA_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESE_EEEJSE_SE_EEEE7iterateIJNS1_12VectorReaderISE_EESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.rz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015139.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.sa = trunc nuw nsw i64 %i.rz to i32
  %i.sb = or disjoint i32 %i.ng, %i.sa            ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !1891
  %i.sc = load ptr, ptr %.sroa.4125.0..sroa_idx.i.i.i.i, align 8, !tbaa !20518, !nonnull !393, !align !891 ; 5 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 120
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !20514, !nonnull !393, !align !891 ; 8 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 58
  %i.sg = load i8, ptr %i.sf, align 2, !tbaa !792, !range !392, !noundef !393
  %i.sh = trunc nuw i8 %i.sg to i1                ; 2 uses
  br i1 %i.sh, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.si = getelementptr inbounds nuw i8, ptr %i.se, i64 59
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !793, !range !392, !noundef !393
  %i.sk = trunc nuw i8 %i.sj to i1
  br i1 %i.sk, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.sl = getelementptr inbounds nuw i8, ptr %i.se, i64 64
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !794
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.ct:                                            ; preds = %bb.cr
  %i.sn = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !795
  %i.sp = sext i32 %i.sb to i64
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.so, i64 %i.sp
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ct, %bb.cs, %bb.cq
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.sr, %bb.ct ], [ %i.sm, %bb.cs ], [ %i.sb, %bb.cq ]
  %i.ss = getelementptr inbounds nuw i8, ptr %i.se, i64 24
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !20289 ; 4 uses
  %.not.i.i37.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.st, null
  br i1 %.not.i.i37.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.su = getelementptr inbounds nuw i8, ptr %i.se, i64 57
  %i.sv = load i8, ptr %i.su, align 1, !range !392
  %i.sw = trunc nuw i8 %i.sv to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.sh, i1 true, i1 %i.sw
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.sx = zext i32 %i.sb to i64                   ; 2 uses
  %i.sy = lshr i64 %i.sx, 6
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %i.sy
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !366
  %i.tb = and i64 %i.sx, 63
  %i.tc = shl nuw i64 1, %i.tb
  %i.td = and i64 %i.ta, %i.tc
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.td, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

bb.cw:                                            ; preds = %bb.cu
  %i.te = getelementptr inbounds nuw i8, ptr %i.se, i64 59
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !793, !range !392, !noundef !393
  %i.tg = trunc nuw i8 %i.tf to i1
  br i1 %i.tg, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.th = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !795
  %i.tj = sext i32 %i.sb to i64
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.ti, i64 %i.tj
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !3
  %i.tm = zext i32 %i.tl to i64                   ; 2 uses
  %i.tn = lshr i64 %i.tm, 6
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %i.tn
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !366
  %i.tq = and i64 %i.tm, 63
  %i.tr = shl nuw i64 1, %i.tq
  %i.ts = and i64 %i.tr, %i.tp
  %.not.i7.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ts, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cw
  %i.tt = load i64, ptr %i.st, align 8, !tbaa !366
  %i.tu = and i64 %i.tt, 1
  %.not.i6.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.tu, 0
  br i1 %.not.i6.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cx, %bb.cv, %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.tv = getelementptr inbounds nuw i8, ptr %i.sc, i64 160
  %i.tw = load i8, ptr %i.tv, align 8, !tbaa !365, !range !392, !noundef !393
  %i.tx = trunc nuw i8 %i.tw to i1
  br i1 %i.tx, label %bb.cy, label %.noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i

bb.cy:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ty = getelementptr inbounds nuw i8, ptr %i.sc, i64 136
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !20511
  %i.ua = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.tz, i64 %i.ua
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !3  ; 6 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.sc, i64 144
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !20513
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.ua
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !3  ; 2 uses
  %i.uh = add nsw i32 %i.ug, %i.uc                ; 2 uses
  %i.ui = icmp sgt i32 %i.ug, 0
  br i1 %i.ui, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.cy
  %i.uj = getelementptr inbounds nuw i8, ptr %i.sc, i64 152
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !7378, !nonnull !393, !align !891 ; 5 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 24
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !20289 ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.um, null
  %i.un = getelementptr inbounds nuw i8, ptr %i.uk, i64 59
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.up = getelementptr inbounds nuw i8, ptr %i.uk, i64 57
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uk, i64 58
  %i.ur = load i8, ptr %i.uq, align 2, !tbaa !792, !range !392, !noundef !393
  %i.us = trunc nuw i8 %i.ur to i1
  %i.ut = load i8, ptr %i.up, align 1, !range !392
  %i.uu = trunc nuw i8 %i.ut to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.us, i1 true, i1 %i.uu
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.uv = zext i32 %i.uc to i64                   ; 2 uses
  %i.uw = lshr i64 %i.uv, 6
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %i.uw
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !366
  %i.uz = and i64 %i.uv, 63
  %i.va = shl nuw i64 1, %i.uz
  %i.vb = and i64 %i.uy, %i.va
  %.not.i.i.i.us34.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.vb, 0
  br i1 %.not.i.i.i.us34.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vc = add i32 %i.uh, -1                       ; 2 uses
  %exitcond42.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i271 = icmp eq i32 %i.uc, %i.vc
  br i1 %exitcond42.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i271, label %.noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph273, !llvm.loop !20291

.lr.ph273:                                        ; preds = %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.cz, !llvm.loop !20291

bb.cz:                                            ; preds = %.lr.ph273, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0711.us1735.i.i.i.i.i.i.i.i.i.i.i.i.i272 = phi i32 [ %i.uc, %.lr.ph273 ], [ %i.vd, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.vd = add nsw i32 %.0711.us1735.i.i.i.i.i.i.i.i.i.i.i.i.i272, 1 ; 3 uses
  %i.ve = zext i32 %i.vd to i64                   ; 2 uses
  %i.vf = lshr i64 %i.ve, 6
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %i.vf
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !366
  %i.vi = and i64 %i.ve, 63
  %i.vj = shl nuw i64 1, %i.vi
  %i.vk = and i64 %i.vh, %i.vj
  %.not.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.vk, 0
  br i1 %.not.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !20291

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cz
  %exitcond42.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.vd, %i.vc
  br i1 %exitcond42.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i.loopexit225_crit_edge, label %bb.cz, !llvm.loop !20291

.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vl = load i8, ptr %i.un, align 1, !tbaa !793, !range !392, !noundef !393
  %i.vm = trunc nuw i8 %i.vl to i1
  br i1 %i.vm, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vn = load ptr, ptr %i.uo, align 8, !tbaa !795 ; 2 uses
  %i.vo = sext i32 %i.uc to i64                   ; 2 uses
  %i.vp = getelementptr inbounds [4 x i8], ptr %i.vn, i64 %i.vo
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !3
  %i.vr = zext i32 %i.vq to i64                   ; 2 uses
  %i.vs = lshr i64 %i.vr, 6
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %i.vs
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !366
  %i.vv = and i64 %i.vr, 63
  %i.vw = shl nuw i64 1, %i.vv
  %i.vx = and i64 %i.vw, %i.vu
  %.not.i7.i.i27.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.vx, 0
  br i1 %.not.i7.i.i27.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vy = add nsw i32 %i.uh, -1                   ; 2 uses
  %wide.trip.count.i.i.i.i.i.i.i.i.i.i.i.i.i = sext i32 %i.vy to i64
  %exitcond.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i268 = icmp eq i32 %i.uc, %i.vy
  br i1 %exitcond.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i268, label %.noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph270, !llvm.loop !20291

.lr.ph270:                                        ; preds = %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.da, !llvm.loop !20291

bb.da:                                            ; preds = %.lr.ph270, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i.i269 = phi i64 [ %i.vo, %.lr.ph270 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i.i269, 1 ; 3 uses
  %i.vz = getelementptr inbounds [4 x i8], ptr %i.vn, i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !3
  %i.wb = zext i32 %i.wa to i64                   ; 2 uses
  %i.wc = lshr i64 %i.wb, 6
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %i.wc
  %i.we = load i64, ptr %i.wd, align 8, !tbaa !366
  %i.wf = and i64 %i.wb, 63
  %i.wg = shl nuw i64 1, %i.wf
  %i.wh = and i64 %i.wg, %i.we
  %.not.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.wh, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !20291

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.da
  %exitcond.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i.loopexit225_crit_edge, label %bb.da, !llvm.loop !20291

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wi = load i64, ptr %i.um, align 8, !tbaa !366
  %i.wj = and i64 %i.wi, 1
  %.not.i6.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.wj, 0
  br i1 %.not.i6.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.thread.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i.loopexit225_crit_edge: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %.noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !20291

.noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i.loopexit225_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cy, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wk = load ptr, ptr %35, align 8, !tbaa !20522, !nonnull !393, !align !891
  %i.wl = invoke noundef zeroext i1 @_ZNK8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEE12containsNullEi(ptr noundef nonnull align 8 dereferenceable(162) %i.wk, i32 noundef %i.sb)
          to label %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i.i.i.i.i

.noexc18.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.wl, label %.noexc.i.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.db

bb.db:                                            ; preds = %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wm = sext i32 %i.sb to i64                   ; 3 uses
  %i.wn = load ptr, ptr %.sroa.4125.0..sroa_idx.i.i.i.i, align 8, !tbaa !20518, !nonnull !393, !align !891 ; 4 uses
  %i.wo = load ptr, ptr %35, align 8, !tbaa !20522, !nonnull !393, !align !891 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #37, !noalias !20542
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wn, i64 120
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !20514, !nonnull !393, !align !891 ; 4 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 58
  %i.ws = load i8, ptr %i.wr, align 2, !tbaa !792, !range !392, !noundef !393
  %i.wt = trunc nuw i8 %i.ws to i1
  br i1 %i.wt, label %.noexc21.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wq, i64 59
  %i.wv = load i8, ptr %i.wu, align 1, !tbaa !793, !range !392, !noundef !393
  %i.ww = trunc nuw i8 %i.wv to i1
  br i1 %i.ww, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wq, i64 64
  %i.wy = load i32, ptr %i.wx, align 8, !tbaa !794
  br label %.noexc21.i.i.i.i.i.i.i.i.i.i.i.i

bb.de:                                            ; preds = %bb.dc
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !795
  %i.xb = shl nsw i64 %i.wm, 2
  %i.xc = getelementptr inbounds i8, ptr %i.xa, i64 %i.xb
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !3
  br label %.noexc21.i.i.i.i.i.i.i.i.i.i.i.i

.noexc21.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.de, %bb.dd, %bb.db
  %.0.i.i74.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.xd, %bb.de ], [ %i.wy, %bb.dd ], [ %i.sb, %bb.db ]
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wn, i64 152
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wn, i64 136
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !20511
  %i.xh = sext i32 %.0.i.i74.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.xi = getelementptr inbounds [4 x i8], ptr %i.xg, i64 %i.xh
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !3
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wn, i64 144
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !20513
  %i.xm = getelementptr inbounds [4 x i8], ptr %i.xl, i64 %i.xh
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !3
  %.sroa.4.8.insert.ext.i76.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.xn to i64
  %.sroa.4.8.insert.shift.i77.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.4.8.insert.ext.i76.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %.sroa.2.8.insert.ext.i78.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.xj to i64
  %.sroa.2.8.insert.insert.i79.i.i.i.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.4.8.insert.shift.i77.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.2.8.insert.ext.i78.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.xe, ptr %26, align 8, !noalias !20542
  store i64 %.sroa.2.8.insert.insert.i79.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.mz, align 8, !noalias !20542
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #37, !noalias !20545
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wo, i64 120
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !20514, !nonnull !393, !align !891 ; 4 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 58
  %i.xr = load i8, ptr %i.xq, align 2, !tbaa !792, !range !392, !noundef !393
  %i.xs = trunc nuw i8 %i.xr to i1
  br i1 %i.xs, label %.noexc24.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.df

bb.df:                                            ; preds = %.noexc21.i.i.i.i.i.i.i.i.i.i.i.i
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xp, i64 59
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !793, !range !392, !noundef !393
  %i.xv = trunc nuw i8 %i.xu to i1
  br i1 %i.xv, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xp, i64 64
  %i.xx = load i32, ptr %i.xw, align 8, !tbaa !794
  br label %.noexc24.i.i.i.i.i.i.i.i.i.i.i.i

bb.dh:                                            ; preds = %bb.df
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !795
  %i.ya = shl nsw i64 %i.wm, 2
  %i.yb = getelementptr inbounds i8, ptr %i.xz, i64 %i.ya
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !3
  br label %.noexc24.i.i.i.i.i.i.i.i.i.i.i.i

.noexc24.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.dh, %bb.dg, %.noexc21.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i83.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.yc, %bb.dh ], [ %i.xx, %bb.dg ], [ %i.sb, %.noexc21.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.yd = getelementptr inbounds nuw i8, ptr %i.wo, i64 152
  %i.ye = getelementptr inbounds nuw i8, ptr %i.wo, i64 136
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !20511
  %i.yg = sext i32 %.0.i.i83.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.yh = getelementptr inbounds [4 x i8], ptr %i.yf, i64 %i.yg
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !3
  %i.yj = getelementptr inbounds nuw i8, ptr %i.wo, i64 144
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !20513
  %i.yl = getelementptr inbounds [4 x i8], ptr %i.yk, i64 %i.yg
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !3
  %.sroa.4.8.insert.ext.i85.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.ym to i64
  %.sroa.4.8.insert.shift.i86.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.4.8.insert.ext.i85.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %.sroa.2.8.insert.ext.i87.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.yi to i64
  %.sroa.2.8.insert.insert.i88.i.i.i.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.4.8.insert.shift.i86.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.2.8.insert.ext.i87.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.yd, ptr %25, align 8, !noalias !20545
  store i64 %.sroa.2.8.insert.insert.i88.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.na, align 8, !noalias !20545
  invoke fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS0_4exec10VectorExecEE12callNullFreeERdRKNS4_9ArrayViewILb0EdEESB_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %25)
          to label %bb.di unwind label %.body.i.i.i.i.i.i.i.i.i.i.i.i

bb.di:                                            ; preds = %.noexc24.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37, !noalias !20545
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #37, !noalias !20542
  %i.yn = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !tbaa !20529, !nonnull !393, !align !891
  %i.yo = load double, ptr %i.e, align 8, !tbaa !1891
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yn, i64 16
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !20530, !nonnull !393, !align !891
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !7373
  %i.ys = getelementptr inbounds [8 x i8], ptr %i.yr, i64 %i.wm
  store double %i.yo, ptr %i.ys, align 8, !tbaa !1891
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESC_EEEJSC_SC_EEEE7iterateIJNS1_12VectorReaderISC_EESI_EEEvRNSF_12ApplyContextEDpRT_ENKUlT_E_clIiEEDaSO_.exit.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.thread.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.da, %bb.cz, %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cx, %bb.cv
  %i.yt = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !tbaa !20529, !nonnull !393, !align !891 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 8 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESC_EEEJSC_SC_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EERKSK_IKNS0_4TypeEERNS1_7EvalCtxERSM_:bb.a
  call void @_ZNSt6vectorISt8optionalIN8facebook5velox4exec18LocalDecodedVectorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %42) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #37
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESC_EEEJSC_SC_EEEE27supportsFlatNoNullsFastPathEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESC_EEEJSC_SC_EEEE34ensureStringEncodingSetAtAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESC_EEEJSC_SC_EEEE36propagateStringEncodingFromAllInputsEv(ptr nofree nonnull readonly align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESC_EEEJSC_SC_EEEE16getCanonicalNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEED2Ev(ptr noundef nonnull align 8 dead_on_return(162) dereferenceable(162) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !725  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !777
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #43
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !778  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN8facebook5velox13DecodedVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !781
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #43
  br label %_ZN8facebook5velox13DecodedVectorD2Ev.exit

_ZN8facebook5velox13DecodedVectorD2Ev.exit:       ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEE12containsNullEi(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20514, !nonnull !393, !align !891 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.d = load i8, ptr %i.c, align 2, !tbaa !792, !range !392, !noundef !393
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.e, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.g = load i8, ptr %i.f, align 1, !tbaa !793, !range !392, !noundef !393
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !794
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !795
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.o, %bb.d ], [ %i.j, %bb.c ], [ %1, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20289 ; 4 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.s = load i8, ptr %i.r, align 1, !range !392
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.t
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = zext i32 %1 to i64                       ; 2 uses
  %i.v = lshr i64 %i.u, 6
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !366
  %i.y = and i64 %i.u, 63
  %i.z = shl nuw i64 1, %i.y
  %i.aa = and i64 %i.x, %i.z
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !793, !range !392, !noundef !393
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !795
  %i.ag = sext i32 %1 to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 6
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !366
  %i.an = and i64 %i.aj, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.ao, %i.am
  %.not.i7.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i7.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.g
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !366
  %i.ar = and i64 %i.aq, 1
  %.not.i6.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i6.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.h, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.at = load i8, ptr %i.as, align 8, !tbaa !365, !range !392, !noundef !393
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit

bb.i:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !20511
  %i.ax = sext i32 %.0.i to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3  ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !20513
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ax
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3  ; 2 uses
  %i.be = add nsw i32 %i.bd, %i.az                ; 2 uses
  %i.bf = icmp sgt i32 %i.bd, 0
  br i1 %i.bf, label %.lr.ph.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit

.lr.ph.i:                                         ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !7378, !nonnull !393, !align !891 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !20289 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 59
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 57
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 58
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !792, !range !392, !noundef !393
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = load i8, ptr %i.bm, align 1, !range !392
  %i.br = trunc nuw i8 %i.bq to i1
  %or.cond.i.i.i = select i1 %i.bp, i1 true, i1 %i.br
  br i1 %or.cond.i.i.i, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  %i.bs = zext i32 %i.az to i64                   ; 2 uses
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !366
  %i.bw = and i64 %i.bs, 63
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = and i64 %i.bv, %i.bx
  %.not.i.i.i.us34.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.us34.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.preheader.i

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.preheader.i: ; preds = %.lr.ph.split.split.us.i
  %i.bz = add i32 %i.be, -1                       ; 2 uses
  %exitcond42.not.not.i.not19 = icmp eq i32 %i.az, %i.bz
  br i1 %exitcond42.not.not.i.not19, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %.lr.ph21, !llvm.loop !20291

.lr.ph21:                                         ; preds = %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.preheader.i
  br label %bb.j, !llvm.loop !20291

bb.j:                                             ; preds = %.lr.ph21, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i
  %.0711.us1735.i20 = phi i32 [ %i.az, %.lr.ph21 ], [ %i.ca, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i ]
  %i.ca = add nsw i32 %.0711.us1735.i20, 1        ; 3 uses
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = lshr i64 %i.cb, 6
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !366
  %i.cf = and i64 %i.cb, 63
  %i.cg = shl nuw i64 1, %i.cf
  %i.ch = and i64 %i.ce, %i.cg
  %.not.i.i.i.us.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.us.i, label %._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit14_crit_edge, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i, !llvm.loop !20291

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i: ; preds = %bb.j
  %exitcond42.not.not.i.not = icmp eq i32 %i.ca, %i.bz
  br i1 %exitcond42.not.not.i.not, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit14_crit_edge, label %bb.j, !llvm.loop !20291

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i
  %i.ci = load i8, ptr %i.bk, align 1, !tbaa !793, !range !392, !noundef !393
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %.lr.ph.split.split.split.us.i, label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.us.i:                    ; preds = %.lr.ph.split.split.i
  %i.ck = load i64, ptr %i.bj, align 8, !tbaa !366
  %i.cl = and i64 %i.ck, 1
  %.not.i6.i.i.us.i = icmp eq i64 %i.cl, 0
  br label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.split.i
  %i.cm = load ptr, ptr %i.bl, align 8, !tbaa !795 ; 2 uses
  %i.cn = sext i32 %i.az to i64                   ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = lshr i64 %i.cq, 6
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !366
  %i.cu = and i64 %i.cq, 63
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.ct
  %.not.i7.i.i27.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i7.i.i27.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.preheader.i

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.preheader.i: ; preds = %.lr.ph.split.split.split.i
  %i.cx = add nsw i32 %i.be, -1                   ; 2 uses
  %wide.trip.count.i = sext i32 %i.cx to i64
  %exitcond.not.not.i.not16 = icmp eq i32 %i.az, %i.cx
  br i1 %exitcond.not.not.i.not16, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %.lr.ph, !llvm.loop !20291

.lr.ph:                                           ; preds = %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.preheader.i
  br label %bb.k, !llvm.loop !20291

bb.k:                                             ; preds = %.lr.ph, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i
  %indvars.iv.i17 = phi i64 [ %i.cn, %.lr.ph ], [ %indvars.iv.next.i, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i17, 1 ; 3 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = zext i32 %i.cz to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 6
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !366
  %i.de = and i64 %i.da, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.dd
  %.not.i7.i.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i7.i.i.i, label %._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit14_crit_edge, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i, !llvm.loop !20291

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i: ; preds = %bb.k
  %exitcond.not.not.i.not = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.not.i.not, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit14_crit_edge, label %bb.k, !llvm.loop !20291

._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit14_crit_edge: ; preds = %bb.k, %bb.j
  br label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, !llvm.loop !20291

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit14_crit_edge: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i
  br label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, !llvm.loop !20291

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.preheader.i, %._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit14_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit14_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.preheader.i, %.lr.ph.split.split.split.i, %.lr.ph.split.split.split.us.i, %.lr.ph.split.split.us.i, %.lr.ph.i, %bb.i, %bb.h, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.dh = phi i1 [ true, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit ], [ false, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ], [ true, %bb.h ], [ true, %bb.f ], [ false, %bb.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.preheader.i ], [ false, %.lr.ph.i ], [ %.not.i6.i.i.us.i, %.lr.ph.split.split.split.us.i ], [ true, %.lr.ph.split.split.split.i ], [ true, %.lr.ph.split.split.us.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.preheader.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit14_crit_edge ], [ true, %._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit14_crit_edge ]
  ret i1 %i.dh
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS0_4exec10VectorExecEE12callNullFreeERdRKNS4_9ArrayViewILb0EdEESB_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20576 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20576
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b, !prof !442

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS0_4exec10VectorExecEE12callNullFreeERdRKNS4_9ArrayViewILb0EdEESB_E18veloxCheckFailArgs, ptr noundef nonnull @.str.263) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !20578, !noalias !20579 ; 5 uses
  %i.g = add nsw i32 %i.f, %i.b                   ; 3 uses
  %i.h = icmp eq i32 %i.b, 0
  br i1 %i.h, label %_ZN8facebook5velox9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS0_4exec10VectorExecEE9normalizeERKNS4_9ArrayViewILb0EdEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.i = load ptr, ptr %1, align 8, !tbaa !20582, !noalias !20579
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !7378, !nonnull !393, !align !891 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !783  ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 58
  %i.n = load i8, ptr %i.m, align 2, !tbaa !792, !range !392, !noundef !393
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  br i1 %i.o, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.preheader.i, label %.lr.ph.split.i

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.preheader.i: ; preds = %.lr.ph.i
  %i.r = sext i32 %i.f to i64                     ; 2 uses
  %xtraiter127 = and i32 %i.b, 3                  ; 2 uses
  %lcmp.mod128.not = icmp eq i32 %xtraiter127, 0
  br i1 %lcmp.mod128.not, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.i.prol.loopexit, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.i.prol

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.i.prol: ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.preheader.i, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.i.prol
  %indvars.iv19.i.prol = phi i64 [ %indvars.iv.next20.i.prol, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.i.prol ], [ %i.r, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.preheader.i ] ; 2 uses
  %.07.us.i.prol = phi double [ %i.v, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.i.prol ], [ 0.000000e+00, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.preheader.i ]
  %prol.iter129 = phi i32 [ %prol.iter129.next, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.i.prol ], [ 0, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.preheader.i ]
  %i.s = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv19.i.prol
  %i.t = load double, ptr %i.s, align 8, !tbaa !1891 ; 2 uses
  %i.u = fmul double %i.t, %i.t
  %i.v = fadd double %.07.us.i.prol, %i.u         ; 3 uses
  %indvars.iv.next20.i.prol = add nsw i64 %indvars.iv19.i.prol, 1 ; 2 uses
  %prol.iter129.next = add i32 %prol.iter129, 1   ; 2 uses
  %prol.iter129.cmp.not = icmp eq i32 %prol.iter129.next, %xtraiter127
  br i1 %prol.iter129.cmp.not, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.i.prol.loopexit, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.i.prol, !llvm.loop !20583

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.i.prol.loopexit: ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.i.prol, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.preheader.i
  %.lcssa119.unr = phi double [ poison, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.preheader.i ], [ %i.v, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.i.prol ]
  %indvars.iv19.i.unr = phi i64 [ %i.r, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.preheader.i ], [ %indvars.iv.next20.i.prol, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.i.prol ]
  %.07.us.i.unr = phi double [ 0.000000e+00, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.preheader.i ], [ %i.v, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.i.prol ]
  %i.w = icmp ult i32 %i.b, 4
  br i1 %i.w, label %_ZN8facebook5velox9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS0_4exec10VectorExecEE9normalizeERKNS4_9ArrayViewILb0EdEE.exit, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.i

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.i: ; preds = %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.i.prol.loopexit, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.i
  %indvars.iv19.i = phi i64 [ %indvars.iv.next20.i.3, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.i ], [ %indvars.iv19.i.unr, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.i.prol.loopexit ] ; 5 uses
  %.07.us.i = phi double [ %i.ap, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.i ], [ %.07.us.i.unr, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.i.prol.loopexit ]
  %i.x = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv19.i
  %i.y = load double, ptr %i.x, align 8, !tbaa !1891 ; 2 uses
  %i.z = fmul double %i.y, %i.y
  %i.aa = fadd double %.07.us.i, %i.z
  %i.ab = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv19.i
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !1891 ; 2 uses
  %i.ae = fmul double %i.ad, %i.ad
  %i.af = fadd double %i.aa, %i.ae
  %i.ag = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv19.i
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !1891 ; 2 uses
  %i.aj = fmul double %i.ai, %i.ai
  %i.ak = fadd double %i.af, %i.aj
  %i.al = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv19.i
  %i.am = getelementptr i8, ptr %i.al, i64 24
  %i.an = load double, ptr %i.am, align 8, !tbaa !1891 ; 2 uses
  %i.ao = fmul double %i.an, %i.an
  %i.ap = fadd double %i.ak, %i.ao                ; 2 uses
  %indvars.iv.next20.i.3 = add nsw i64 %indvars.iv19.i, 4 ; 2 uses
  %i.aq = trunc nsw i64 %indvars.iv.next20.i.3 to i32
  %i.ar = icmp eq i32 %i.g, %i.aq
  br i1 %i.ar, label %_ZN8facebook5velox9functions12_GLOBAL__N_129CosineSimilarityFunctionArrayINS0_4exec10VectorExecEE9normalizeERKNS4_9ArrayViewILb0EdEE.exit, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.j, i64 59
  %i.at = load i8, ptr %i.as, align 1, !tbaa !793, !range !392, !noundef !393
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  %i.av = load i32, ptr %i.q, align 8, !tbaa !794
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aw
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !1891 ; 2 uses
  %i.az = fmul double %i.ay, %i.ay                ; 9 uses
  %xtraiter124 = and i32 %i.b, 7                  ; 2 uses
  %lcmp.mod125.not = icmp eq i32 %xtraiter124, 0
  br i1 %lcmp.mod125.not, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us10.i.prol.loopexit, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us10.i.prol

_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us10.i.prol: ; preds = %.lr.ph.split.split.us.i, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us10.i.prol
  %.07.us8.i.prol = phi double [ %i.ba, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us10.i.prol ], [ 0.000000e+00, %.lr.ph.split.split.us.i ]
  %.sroa.02.06.us9.i.prol = phi i32 [ %i.bb, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us10.i.prol ], [ %i.f, %.lr.ph.split.split.us.i ]
  %prol.iter126 = phi i32 [ %prol.iter126.next, %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us10.i.prol ], [ 0, %.lr.ph.split.split.us.i ]
  %i.ba = fadd double %i.az, %.07.us8.i.prol      ; 3 uses
  %i.bb = add nsw i32 %.sroa.02.06.us9.i.prol, 1  ; 2 uses
  %prol.iter126.next = add i32 %prol.iter126, 1   ; 2 uses
  %prol.iter126.cmp.not = icmp eq i32 %prol.iter126.next, %xtraiter124
  br i1 %prol.iter126.cmp.not, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us10.i.prol.loopexit, label %_ZNK8facebook5velox4exec18IndexBasedIteratorINS1_9ArrayViewILb0EdE15ElementAccessorEEdeEv.exit.us10.i.prol, !llvm.loop !20584

end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115DotProductArrayINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESC_EEEJSC_SC_EEEE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISM_EERKSK_IKNS0_4TypeEERNS1_7EvalCtxERSM_:bb.a
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %23) #37
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ch, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  invoke void @__cxa_end_catch()
          to label %.body.i.i unwind label %bb.co

bb.ci:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.cj:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rs = load ptr, ptr %24, align 8, !tbaa !618
  %.not.i69.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.rs, null
  br i1 %.not.i69.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit70.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #37
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit70.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit70.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #37
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i.i.i.invoke.i.i

bb.cl:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rt = landingpad { ptr, i32 }
          cleanup
  %i.ru = load ptr, ptr %24, align 8, !tbaa !618
  %.not.i71.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ru, null
  br i1 %.not.i71.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit72.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #37
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit72.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit72.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cm, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #37
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit72.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ci
  %.pn.i30.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.rt, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit72.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.rr, %bb.ci ]
  invoke void @__cxa_end_catch()
          to label %.body.i.i unwind label %bb.co

bb.co:                                            ; preds = %bb.cn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit68.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rv = landingpad { ptr, i32 }
          catch ptr null
  %i.rw = extractvalue { ptr, i32 } %i.rv, 0
  call void @__clang_call_terminate(ptr %i.rw) #46
  unreachable

bb.cp:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115DotProductArrayINS1_10VectorExecEEESA_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESE_EEEJSE_SE_EEEE7iterateIJNS1_12VectorReaderISE_EESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clImEEDaSQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i.i.i.i.i.i.invoke.i.i, %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115DotProductArrayINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESC_EEEJSC_SC_EEEE7iterateIJNS1_12VectorReaderISC_EESI_EEEvRNSF_12ApplyContextEDpRT_ENKUlT_E_clImEEDaSO_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.rx = add nuw i64 %.0140.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ry = icmp ult i64 %i.rx, %i.nj
  br i1 %i.ry, label %bb.bo, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115DotProductArrayINS3_10VectorExecEEESC_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESG_EEEJSG_SG_EEEE7iterateIJNS3_12VectorReaderISG_EESM_EEEvRNSJ_12ApplyContextEDpRT_EUlT_E_ZNS4_22applyToSelectedNoThrowIST_EEvRKNS0_17SelectivityVectorESS_EUlSS_E_EEvSX_SS_T0_EUlSS_E_EEvPKmiibSS_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !20734

bb.cq:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115DotProductArrayINS1_10VectorExecEEESA_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESE_EEEJSE_SE_EEEE7iterateIJNS1_12VectorReaderISE_EESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %.015139.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.nf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aav, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115DotProductArrayINS1_10VectorExecEEESA_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESE_EEEJSE_SE_EEEE7iterateIJNS1_12VectorReaderISE_EESK_EEEvRNSH_12ApplyContextEDpRT_EUlT_E_ZNS2_22applyToSelectedNoThrowISR_EEvRKNS0_17SelectivityVectorESQ_EUlSQ_E_EEvSV_SQ_T0_ENKUlSQ_E_clIiEEDaSQ_.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.rz = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.015139.i.i.i.i.i.i.i.i.i.i.i.i, i1 true)
  %i.sa = trunc nuw nsw i64 %i.rz to i32
  %i.sb = or disjoint i32 %i.ng, %i.sa            ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !1891
  %i.sc = load ptr, ptr %.sroa.4125.0..sroa_idx.i.i.i.i, align 8, !tbaa !20712, !nonnull !393, !align !891 ; 5 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 120
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !20514, !nonnull !393, !align !891 ; 8 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 58
  %i.sg = load i8, ptr %i.sf, align 2, !tbaa !792, !range !392, !noundef !393
  %i.sh = trunc nuw i8 %i.sg to i1                ; 2 uses
  br i1 %i.sh, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.si = getelementptr inbounds nuw i8, ptr %i.se, i64 59
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !793, !range !392, !noundef !393
  %i.sk = trunc nuw i8 %i.sj to i1
  br i1 %i.sk, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.sl = getelementptr inbounds nuw i8, ptr %i.se, i64 64
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !794
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.ct:                                            ; preds = %bb.cr
  %i.sn = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !795
  %i.sp = sext i32 %i.sb to i64
  %i.sq = getelementptr inbounds [4 x i8], ptr %i.so, i64 %i.sp
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ct, %bb.cs, %bb.cq
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.sr, %bb.ct ], [ %i.sm, %bb.cs ], [ %i.sb, %bb.cq ]
  %i.ss = getelementptr inbounds nuw i8, ptr %i.se, i64 24
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !20289 ; 4 uses
  %.not.i.i37.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.st, null
  br i1 %.not.i.i37.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.su = getelementptr inbounds nuw i8, ptr %i.se, i64 57
  %i.sv = load i8, ptr %i.su, align 1, !range !392
  %i.sw = trunc nuw i8 %i.sv to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.sh, i1 true, i1 %i.sw
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.sx = zext i32 %i.sb to i64                   ; 2 uses
  %i.sy = lshr i64 %i.sx, 6
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %i.sy
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !366
  %i.tb = and i64 %i.sx, 63
  %i.tc = shl nuw i64 1, %i.tb
  %i.td = and i64 %i.ta, %i.tc
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.td, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

bb.cw:                                            ; preds = %bb.cu
  %i.te = getelementptr inbounds nuw i8, ptr %i.se, i64 59
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !793, !range !392, !noundef !393
  %i.tg = trunc nuw i8 %i.tf to i1
  br i1 %i.tg, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.th = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !795
  %i.tj = sext i32 %i.sb to i64
  %i.tk = getelementptr inbounds [4 x i8], ptr %i.ti, i64 %i.tj
  %i.tl = load i32, ptr %i.tk, align 4, !tbaa !3
  %i.tm = zext i32 %i.tl to i64                   ; 2 uses
  %i.tn = lshr i64 %i.tm, 6
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.st, i64 %i.tn
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !366
  %i.tq = and i64 %i.tm, 63
  %i.tr = shl nuw i64 1, %i.tq
  %i.ts = and i64 %i.tr, %i.tp
  %.not.i7.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ts, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cw
  %i.tt = load i64, ptr %i.st, align 8, !tbaa !366
  %i.tu = and i64 %i.tt, 1
  %.not.i6.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.tu, 0
  br i1 %.not.i6.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cx, %bb.cv, %_ZNK8facebook5velox13DecodedVector5indexEi.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.tv = getelementptr inbounds nuw i8, ptr %i.sc, i64 160
  %i.tw = load i8, ptr %i.tv, align 8, !tbaa !365, !range !392, !noundef !393
  %i.tx = trunc nuw i8 %i.tw to i1
  br i1 %i.tx, label %bb.cy, label %.noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i

bb.cy:                                            ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ty = getelementptr inbounds nuw i8, ptr %i.sc, i64 136
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !20511
  %i.ua = sext i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.ub = getelementptr inbounds [4 x i8], ptr %i.tz, i64 %i.ua
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !3  ; 6 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.sc, i64 144
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !20513
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.ue, i64 %i.ua
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !3  ; 2 uses
  %i.uh = add nsw i32 %i.ug, %i.uc                ; 2 uses
  %i.ui = icmp sgt i32 %i.ug, 0
  br i1 %i.ui, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.cy
  %i.uj = getelementptr inbounds nuw i8, ptr %i.sc, i64 152
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !7378, !nonnull !393, !align !891 ; 5 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 24
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !20289 ; 6 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.um, null
  %i.un = getelementptr inbounds nuw i8, ptr %i.uk, i64 59
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uk, i64 8
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.up = getelementptr inbounds nuw i8, ptr %i.uk, i64 57
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uk, i64 58
  %i.ur = load i8, ptr %i.uq, align 2, !tbaa !792, !range !392, !noundef !393
  %i.us = trunc nuw i8 %i.ur to i1
  %i.ut = load i8, ptr %i.up, align 1, !range !392
  %i.uu = trunc nuw i8 %i.ut to i1
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.us, i1 true, i1 %i.uu
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.uv = zext i32 %i.uc to i64                   ; 2 uses
  %i.uw = lshr i64 %i.uv, 6
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %i.uw
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !366
  %i.uz = and i64 %i.uv, 63
  %i.va = shl nuw i64 1, %i.uz
  %i.vb = and i64 %i.uy, %i.va
  %.not.i.i.i.us34.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.vb, 0
  br i1 %.not.i.i.i.us34.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vc = add i32 %i.uh, -1                       ; 2 uses
  %exitcond42.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i271 = icmp eq i32 %i.uc, %i.vc
  br i1 %exitcond42.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i271, label %.noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph273, !llvm.loop !20291

.lr.ph273:                                        ; preds = %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.cz, !llvm.loop !20291

bb.cz:                                            ; preds = %.lr.ph273, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.0711.us1735.i.i.i.i.i.i.i.i.i.i.i.i.i272 = phi i32 [ %i.uc, %.lr.ph273 ], [ %i.vd, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.vd = add nsw i32 %.0711.us1735.i.i.i.i.i.i.i.i.i.i.i.i.i272, 1 ; 3 uses
  %i.ve = zext i32 %i.vd to i64                   ; 2 uses
  %i.vf = lshr i64 %i.ve, 6
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %i.vf
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !366
  %i.vi = and i64 %i.ve, 63
  %i.vj = shl nuw i64 1, %i.vi
  %i.vk = and i64 %i.vh, %i.vj
  %.not.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.vk, 0
  br i1 %.not.i.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !20291

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cz
  %exitcond42.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.vd, %i.vc
  br i1 %exitcond42.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i.loopexit225_crit_edge, label %bb.cz, !llvm.loop !20291

.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vl = load i8, ptr %i.un, align 1, !tbaa !793, !range !392, !noundef !393
  %i.vm = trunc nuw i8 %i.vl to i1
  br i1 %i.vm, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vn = load ptr, ptr %i.uo, align 8, !tbaa !795 ; 2 uses
  %i.vo = sext i32 %i.uc to i64                   ; 2 uses
  %i.vp = getelementptr inbounds [4 x i8], ptr %i.vn, i64 %i.vo
  %i.vq = load i32, ptr %i.vp, align 4, !tbaa !3
  %i.vr = zext i32 %i.vq to i64                   ; 2 uses
  %i.vs = lshr i64 %i.vr, 6
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %i.vs
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !366
  %i.vv = and i64 %i.vr, 63
  %i.vw = shl nuw i64 1, %i.vv
  %i.vx = and i64 %i.vw, %i.vu
  %.not.i7.i.i27.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.vx, 0
  br i1 %.not.i7.i.i27.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vy = add nsw i32 %i.uh, -1                   ; 2 uses
  %wide.trip.count.i.i.i.i.i.i.i.i.i.i.i.i.i = sext i32 %i.vy to i64
  %exitcond.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i268 = icmp eq i32 %i.uc, %i.vy
  br i1 %exitcond.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i268, label %.noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph270, !llvm.loop !20291

.lr.ph270:                                        ; preds = %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.da, !llvm.loop !20291

bb.da:                                            ; preds = %.lr.ph270, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i.i269 = phi i64 [ %i.vo, %.lr.ph270 ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.i.i269, 1 ; 3 uses
  %i.vz = getelementptr inbounds [4 x i8], ptr %i.vn, i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !3
  %i.wb = zext i32 %i.wa to i64                   ; 2 uses
  %i.wc = lshr i64 %i.wb, 6
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %i.wc
  %i.we = load i64, ptr %i.wd, align 8, !tbaa !366
  %i.wf = and i64 %i.wb, 63
  %i.wg = shl nuw i64 1, %i.wf
  %i.wh = and i64 %i.wg, %i.we
  %.not.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.wh, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.thread.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !20291

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.da
  %exitcond.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.not.i.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i.loopexit225_crit_edge, label %bb.da, !llvm.loop !20291

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wi = load i64, ptr %i.um, align 8, !tbaa !366
  %i.wj = and i64 %i.wi, 1
  %.not.i6.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.wj, 0
  br i1 %.not.i6.i.i.us.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.thread.i.i.i.i.i.i.i.i.i.i.i, label %.noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i.loopexit225_crit_edge: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %.noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !20291

.noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i..noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i.loopexit225_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cy, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wk = load ptr, ptr %35, align 8, !tbaa !20715, !nonnull !393, !align !891
  %i.wl = invoke noundef zeroext i1 @_ZNK8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEE12containsNullEi(ptr noundef nonnull align 8 dereferenceable(162) %i.wk, i32 noundef %i.sb)
          to label %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i unwind label %.body.i.i.i.i.i.i.i.i.i.i.i.i

.noexc18.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc.i.thread39.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.wl, label %.noexc.i.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.db

bb.db:                                            ; preds = %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wm = sext i32 %i.sb to i64                   ; 3 uses
  %i.wn = load ptr, ptr %.sroa.4125.0..sroa_idx.i.i.i.i, align 8, !tbaa !20712, !nonnull !393, !align !891 ; 4 uses
  %i.wo = load ptr, ptr %35, align 8, !tbaa !20715, !nonnull !393, !align !891 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #37, !noalias !20735
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wn, i64 120
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !20514, !nonnull !393, !align !891 ; 4 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 58
  %i.ws = load i8, ptr %i.wr, align 2, !tbaa !792, !range !392, !noundef !393
  %i.wt = trunc nuw i8 %i.ws to i1
  br i1 %i.wt, label %.noexc21.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wq, i64 59
  %i.wv = load i8, ptr %i.wu, align 1, !tbaa !793, !range !392, !noundef !393
  %i.ww = trunc nuw i8 %i.wv to i1
  br i1 %i.ww, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wq, i64 64
  %i.wy = load i32, ptr %i.wx, align 8, !tbaa !794
  br label %.noexc21.i.i.i.i.i.i.i.i.i.i.i.i

bb.de:                                            ; preds = %bb.dc
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  %i.xa = load ptr, ptr %i.wz, align 8, !tbaa !795
  %i.xb = shl nsw i64 %i.wm, 2
  %i.xc = getelementptr inbounds i8, ptr %i.xa, i64 %i.xb
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !3
  br label %.noexc21.i.i.i.i.i.i.i.i.i.i.i.i

.noexc21.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.de, %bb.dd, %bb.db
  %.0.i.i74.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.xd, %bb.de ], [ %i.wy, %bb.dd ], [ %i.sb, %bb.db ]
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wn, i64 152
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wn, i64 136
  %i.xg = load ptr, ptr %i.xf, align 8, !tbaa !20511
  %i.xh = sext i32 %.0.i.i74.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.xi = getelementptr inbounds [4 x i8], ptr %i.xg, i64 %i.xh
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !3
  %i.xk = getelementptr inbounds nuw i8, ptr %i.wn, i64 144
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !20513
  %i.xm = getelementptr inbounds [4 x i8], ptr %i.xl, i64 %i.xh
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !3
  %.sroa.4.8.insert.ext.i76.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.xn to i64
  %.sroa.4.8.insert.shift.i77.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.4.8.insert.ext.i76.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %.sroa.2.8.insert.ext.i78.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.xj to i64
  %.sroa.2.8.insert.insert.i79.i.i.i.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.4.8.insert.shift.i77.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.2.8.insert.ext.i78.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.xe, ptr %26, align 8, !noalias !20735
  store i64 %.sroa.2.8.insert.insert.i79.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.mz, align 8, !noalias !20735
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #37, !noalias !20738
  %i.xo = getelementptr inbounds nuw i8, ptr %i.wo, i64 120
  %i.xp = load ptr, ptr %i.xo, align 8, !tbaa !20514, !nonnull !393, !align !891 ; 4 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 58
  %i.xr = load i8, ptr %i.xq, align 2, !tbaa !792, !range !392, !noundef !393
  %i.xs = trunc nuw i8 %i.xr to i1
  br i1 %i.xs, label %.noexc24.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.df

bb.df:                                            ; preds = %.noexc21.i.i.i.i.i.i.i.i.i.i.i.i
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xp, i64 59
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !793, !range !392, !noundef !393
  %i.xv = trunc nuw i8 %i.xu to i1
  br i1 %i.xv, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xp, i64 64
  %i.xx = load i32, ptr %i.xw, align 8, !tbaa !794
  br label %.noexc24.i.i.i.i.i.i.i.i.i.i.i.i

bb.dh:                                            ; preds = %bb.df
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xp, i64 8
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !795
  %i.ya = shl nsw i64 %i.wm, 2
  %i.yb = getelementptr inbounds i8, ptr %i.xz, i64 %i.ya
  %i.yc = load i32, ptr %i.yb, align 4, !tbaa !3
  br label %.noexc24.i.i.i.i.i.i.i.i.i.i.i.i

.noexc24.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.dh, %bb.dg, %.noexc21.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i83.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.yc, %bb.dh ], [ %i.xx, %bb.dg ], [ %i.sb, %.noexc21.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.yd = getelementptr inbounds nuw i8, ptr %i.wo, i64 152
  %i.ye = getelementptr inbounds nuw i8, ptr %i.wo, i64 136
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !20511
  %i.yg = sext i32 %.0.i.i83.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.yh = getelementptr inbounds [4 x i8], ptr %i.yf, i64 %i.yg
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !3
  %i.yj = getelementptr inbounds nuw i8, ptr %i.wo, i64 144
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !20513
  %i.yl = getelementptr inbounds [4 x i8], ptr %i.yk, i64 %i.yg
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !3
  %.sroa.4.8.insert.ext.i85.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.ym to i64
  %.sroa.4.8.insert.shift.i86.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw i64 %.sroa.4.8.insert.ext.i85.i.i.i.i.i.i.i.i.i.i.i.i, 32
  %.sroa.2.8.insert.ext.i87.i.i.i.i.i.i.i.i.i.i.i.i = zext i32 %i.yi to i64
  %.sroa.2.8.insert.insert.i88.i.i.i.i.i.i.i.i.i.i.i.i = or disjoint i64 %.sroa.4.8.insert.shift.i86.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.2.8.insert.ext.i87.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.yd, ptr %25, align 8, !noalias !20738
  store i64 %.sroa.2.8.insert.insert.i88.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.na, align 8, !noalias !20738
  invoke fastcc void @_ZN8facebook5velox9functions12_GLOBAL__N_115DotProductArrayINS0_4exec10VectorExecEE12callNullFreeERdRKNS4_9ArrayViewILb0EdEESB_(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %25)
          to label %bb.di unwind label %.body.i.i.i.i.i.i.i.i.i.i.i.i

bb.di:                                            ; preds = %.noexc24.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37, !noalias !20738
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #37, !noalias !20735
  %i.yn = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !tbaa !20722, !nonnull !393, !align !891
  %i.yo = load double, ptr %i.e, align 8, !tbaa !1891
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yn, i64 16
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !20723, !nonnull !393, !align !891
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !7373
  %i.ys = getelementptr inbounds [8 x i8], ptr %i.yr, i64 %i.wm
  store double %i.yo, ptr %i.ys, align 8, !tbaa !1891
  br label %_ZZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions12_GLOBAL__N_115DotProductArrayINS1_10VectorExecEEES8_dNS0_15ConstantCheckerIJNS0_5ArrayIdEESC_EEEJSC_SC_EEEE7iterateIJNS1_12VectorReaderISC_EESI_EEEvRNSF_12ApplyContextEDpRT_ENKUlT_E_clIiEEDaSO_.exit.i.i.i.i.i.i.i.i.i.i.i.i

.noexc.i.thread.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.da, %bb.cz, %.noexc18.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.split.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cx, %bb.cv
  %i.yt = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !tbaa !20722, !nonnull !393, !align !891 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 8 ; 2 uses
end_hunk_3
