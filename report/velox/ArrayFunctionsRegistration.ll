inline.NumInlined: 171859
inline.NumDeleted: 43813
loop-unroll.NumCompletelyUnrolled: 1306
loop-unroll.NumRuntimeUnrolled: 817
loop-unroll.NumUnrolled: 2123
begin_hunk_0_@_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayIaEEED2Ev:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1236
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #43
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1237 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN8facebook5velox13DecodedVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1240
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #43
  br label %_ZN8facebook5velox13DecodedVectorD2Ev.exit

_ZN8facebook5velox13DecodedVectorD2Ev.exit:       ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.c
  ret void
}

declare void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorERKNS0_17SelectivityVectorEb(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(94), ptr noundef nonnull align 8 dereferenceable(38), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #23

declare void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(94), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr void @_ZSt27__throw_bad_optional_accessv() local_unnamed_addr #24 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt19bad_optional_access, i64 16), ptr %i.a, align 8, !tbaa !78
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTISt19bad_optional_access, ptr nonnull @_ZNSt9exceptionD2Ev) #45
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19bad_optional_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #33
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #43
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt19bad_optional_access4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr @.str.129
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #25

declare void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZSt17current_exceptionv(ptr dead_on_unwind writable sret(%"class.std::__exception_ptr::exception_ptr") align 8) local_unnamed_addr #17

declare void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox4exec12VectorReaderINS0_5ArrayIaEEE12containsNullEi(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1526, !nonnull !797, !align !916 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.d = load i8, ptr %i.c, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.e, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.g = load i8, ptr %i.f, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1255
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1529
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.o, %bb.d ], [ %i.j, %bb.c ], [ %1, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1530 ; 4 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.s = load i8, ptr %i.r, align 1, !range !796
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.t
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = zext i32 %1 to i64                       ; 2 uses
  %i.v = lshr i64 %i.u, 6
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !855
  %i.y = and i64 %i.u, 63
  %i.z = shl nuw i64 1, %i.y
  %i.aa = and i64 %i.x, %i.z
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1529
  %i.ag = sext i32 %1 to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 6
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !855
  %i.an = and i64 %i.aj, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.ao, %i.am
  %.not.i7.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i7.i, label %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.g
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !855
  %i.ar = and i64 %i.aq, 1
  %.not.i6.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i6.i, label %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.h, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.at = load i8, ptr %i.as, align 8, !tbaa !88, !range !796, !noundef !797
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.i, label %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEii.exit

bb.i:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1261
  %i.ax = sext i32 %.0.i to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3  ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1265
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ax
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3  ; 2 uses
  %i.be = add nsw i32 %i.bd, %i.az                ; 2 uses
  %i.bf = icmp sgt i32 %i.bd, 0
  br i1 %i.bf, label %.lr.ph.i, label %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEii.exit

.lr.ph.i:                                         ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1531, !nonnull !797, !align !916 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1530 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 59
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEii.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 57
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 58
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = load i8, ptr %i.bm, align 1, !range !796
  %i.br = trunc nuw i8 %i.bq to i1
  %or.cond.i.i.i = select i1 %i.bp, i1 true, i1 %i.br
  br i1 %or.cond.i.i.i, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  %i.bs = zext i32 %i.az to i64                   ; 2 uses
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !855
  %i.bw = and i64 %i.bs, 63
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = and i64 %i.bv, %i.bx
  %.not.i.i.i.us34.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.us34.i, label %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.us18.preheader.i

_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.us18.preheader.i: ; preds = %.lr.ph.split.split.us.i
  %i.bz = add i32 %i.be, -1                       ; 2 uses
  %exitcond42.not.not.i.not19 = icmp eq i32 %i.az, %i.bz
  br i1 %exitcond42.not.not.i.not19, label %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEii.exit, label %.lr.ph21, !llvm.loop !1532

.lr.ph21:                                         ; preds = %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.us18.preheader.i
  br label %bb.j, !llvm.loop !1532

bb.j:                                             ; preds = %.lr.ph21, %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.us18.i
  %.0711.us1735.i20 = phi i32 [ %i.az, %.lr.ph21 ], [ %i.ca, %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.us18.i ]
  %i.ca = add nsw i32 %.0711.us1735.i20, 1        ; 3 uses
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = lshr i64 %i.cb, 6
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !855
  %i.cf = and i64 %i.cb, 63
  %i.cg = shl nuw i64 1, %i.cf
  %i.ch = and i64 %i.ce, %i.cg
  %.not.i.i.i.us.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.us.i, label %._ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEii.exit.loopexit14_crit_edge, label %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.us18.i, !llvm.loop !1532

_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.us18.i: ; preds = %bb.j
  %exitcond42.not.not.i.not = icmp eq i32 %i.ca, %i.bz
  br i1 %exitcond42.not.not.i.not, label %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEii.exit.loopexit14_crit_edge, label %bb.j, !llvm.loop !1532

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i
  %i.ci = load i8, ptr %i.bk, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %.lr.ph.split.split.split.us.i, label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.us.i:                    ; preds = %.lr.ph.split.split.i
  %i.ck = load i64, ptr %i.bj, align 8, !tbaa !855
  %i.cl = and i64 %i.ck, 1
  %.not.i6.i.i.us.i = icmp eq i64 %i.cl, 0
  br label %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEii.exit

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.split.i
  %i.cm = load ptr, ptr %i.bl, align 8, !tbaa !1529 ; 2 uses
  %i.cn = sext i32 %i.az to i64                   ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = lshr i64 %i.cq, 6
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !855
  %i.cu = and i64 %i.cq, 63
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.ct
  %.not.i7.i.i27.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i7.i.i27.i, label %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.preheader.i

_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.preheader.i: ; preds = %.lr.ph.split.split.split.i
  %i.cx = add nsw i32 %i.be, -1                   ; 2 uses
  %wide.trip.count.i = sext i32 %i.cx to i64
  %exitcond.not.not.i.not16 = icmp eq i32 %i.az, %i.cx
  br i1 %exitcond.not.not.i.not16, label %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEii.exit, label %.lr.ph, !llvm.loop !1532

.lr.ph:                                           ; preds = %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.preheader.i
  br label %bb.k, !llvm.loop !1532

bb.k:                                             ; preds = %.lr.ph, %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.i
  %indvars.iv.i17 = phi i64 [ %i.cn, %.lr.ph ], [ %indvars.iv.next.i, %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i17, 1 ; 3 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = zext i32 %i.cz to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 6
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !855
  %i.de = and i64 %i.da, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.dd
  %.not.i7.i.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i7.i.i.i, label %._ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEii.exit.loopexit14_crit_edge, label %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.i, !llvm.loop !1532

_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.i: ; preds = %bb.k
  %exitcond.not.not.i.not = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.not.i.not, label %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEii.exit.loopexit14_crit_edge, label %bb.k, !llvm.loop !1532

._ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEii.exit.loopexit14_crit_edge: ; preds = %bb.k, %bb.j
  br label %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEii.exit, !llvm.loop !1532

_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEii.exit.loopexit14_crit_edge: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.i, %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.us18.i
  br label %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEii.exit, !llvm.loop !1532

_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEii.exit: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.preheader.i, %._ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEii.exit.loopexit14_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEii.exit.loopexit14_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.us18.preheader.i, %.lr.ph.split.split.split.i, %.lr.ph.split.split.split.us.i, %.lr.ph.split.split.us.i, %.lr.ph.i, %bb.i, %bb.h, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.dh = phi i1 [ true, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit ], [ false, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ], [ true, %bb.h ], [ true, %bb.f ], [ false, %bb.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.us18.preheader.i ], [ false, %.lr.ph.i ], [ %.not.i6.i.i.us.i, %.lr.ph.split.split.split.us.i ], [ true, %.lr.ph.split.split.split.i ], [ true, %.lr.ph.split.split.us.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.preheader.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEii.exit.loopexit14_crit_edge ], [ true, %._ZNK8facebook5velox4exec12VectorReaderIaE12containsNullEii.exit.loopexit14_crit_edge ]
  ret i1 %i.dh
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i64 } @_ZNK8facebook5velox4exec12VectorReaderINS0_5ArrayIaEEE12readNullFreeEm(ptr noundef nonnull align 8 dereferenceable(162) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1526, !nonnull !797, !align !916 ; 4 uses
  %i.c = trunc i64 %1 to i32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.e = load i8, ptr %i.d, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.h = load i8, ptr %i.g, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1255
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1529
  %sext = shl i64 %1, 32
  %i.n = ashr exact i64 %sext, 30
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.p, %bb.d ], [ %i.k, %bb.c ], [ %i.c, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1261
  %i.t = sext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1265
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.t
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.q, 0
  %.sroa.4.8.insert.ext = zext i32 %i.z to i64
  %.sroa.4.8.insert.shift = shl nuw i64 %.sroa.4.8.insert.ext, 32
  %.sroa.2.8.insert.ext = zext i32 %i.v to i64
  %.sroa.2.8.insert.insert = or disjoint i64 %.sroa.4.8.insert.shift, %.sroa.2.8.insert.ext
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.2.8.insert.insert, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1533   ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN8facebook5velox6Status5StateD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !13
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #43
  br label %_ZN8facebook5velox6Status5StateD2Ev.exit

_ZN8facebook5velox6Status5StateD2Ev.exit:         ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 40) #43
  br label %bb.c

bb.c:                                             ; preds = %_ZN8facebook5velox6Status5StateD2Ev.exit, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !1533
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #26

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_aNS0_15ConstantCheckerIJNS0_5ArrayIaEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.583) align 8 %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1266, !range !796, !noundef !797
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !88, !range !796
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1536
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1538 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1539
  %i.l = icmp eq i32 %i.i, %i.k
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox13AlignedBuffer10reallocateIsEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E:bb.a

.sink.split.i.i.i54:                              ; preds = %bb.ah
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !78
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(64) %i.dm)
          to label %.noexc.i.i55 unwind label %bb.ai, !inline_history !1301

.noexc.i.i55:                                     ; preds = %.sink.split.i.i.i54
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1302
  %.not.i.i.i56 = icmp eq ptr %i.du, null
  %i.dv = load ptr, ptr %i.dm, align 8, !tbaa !78
  %..i.i.i57 = select i1 %.not.i.i.i56, i64 8, i64 48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %..i.i.i57
  %i.dx = load ptr, ptr %i.dw, align 8
  invoke void %i.dx(ptr noundef nonnull align 8 dereferenceable(64) %i.dm)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEPS3_.exit unwind label %bb.ai, !inline_history !1301

bb.ai:                                            ; preds = %.noexc.i.i55, %.sink.split.i.i.i54
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  tail call void @__clang_call_terminate(ptr %i.dz) #44
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEPS3_.exit: ; preds = %.noexc.i.i55, %bb.ah, %_ZN8facebook5velox6Buffer7setSizeEm.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayIsEEED2Ev(ptr noundef nonnull align 8 dead_on_return(162) dereferenceable(162) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1234 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1236
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #43
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1237 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN8facebook5velox13DecodedVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1240
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #43
  br label %_ZN8facebook5velox13DecodedVectorD2Ev.exit

_ZN8facebook5velox13DecodedVectorD2Ev.exit:       ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox4exec12VectorReaderINS0_5ArrayIsEEE12containsNullEi(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3232, !nonnull !797, !align !916 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.d = load i8, ptr %i.c, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.e, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.g = load i8, ptr %i.f, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1255
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1529
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.o, %bb.d ], [ %i.j, %bb.c ], [ %1, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1530 ; 4 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.s = load i8, ptr %i.r, align 1, !range !796
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.t
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = zext i32 %1 to i64                       ; 2 uses
  %i.v = lshr i64 %i.u, 6
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !855
  %i.y = and i64 %i.u, 63
  %i.z = shl nuw i64 1, %i.y
  %i.aa = and i64 %i.x, %i.z
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1529
  %i.ag = sext i32 %1 to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 6
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !855
  %i.an = and i64 %i.aj, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.ao, %i.am
  %.not.i7.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i7.i, label %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.g
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !855
  %i.ar = and i64 %i.aq, 1
  %.not.i6.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i6.i, label %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.h, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.at = load i8, ptr %i.as, align 8, !tbaa !88, !range !796, !noundef !797
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.i, label %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEii.exit

bb.i:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !3161
  %i.ax = sext i32 %.0.i to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3  ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !3164
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ax
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3  ; 2 uses
  %i.be = add nsw i32 %i.bd, %i.az                ; 2 uses
  %i.bf = icmp sgt i32 %i.bd, 0
  br i1 %i.bf, label %.lr.ph.i, label %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEii.exit

.lr.ph.i:                                         ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !3233, !nonnull !797, !align !916 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1530 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 59
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEii.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 57
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 58
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = load i8, ptr %i.bm, align 1, !range !796
  %i.br = trunc nuw i8 %i.bq to i1
  %or.cond.i.i.i = select i1 %i.bp, i1 true, i1 %i.br
  br i1 %or.cond.i.i.i, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  %i.bs = zext i32 %i.az to i64                   ; 2 uses
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !855
  %i.bw = and i64 %i.bs, 63
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = and i64 %i.bv, %i.bx
  %.not.i.i.i.us34.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.us34.i, label %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.us18.preheader.i

_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.us18.preheader.i: ; preds = %.lr.ph.split.split.us.i
  %i.bz = add i32 %i.be, -1                       ; 2 uses
  %exitcond42.not.not.i.not19 = icmp eq i32 %i.az, %i.bz
  br i1 %exitcond42.not.not.i.not19, label %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEii.exit, label %.lr.ph21, !llvm.loop !3234

.lr.ph21:                                         ; preds = %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.us18.preheader.i
  br label %bb.j, !llvm.loop !3234

bb.j:                                             ; preds = %.lr.ph21, %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.us18.i
  %.0711.us1735.i20 = phi i32 [ %i.az, %.lr.ph21 ], [ %i.ca, %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.us18.i ]
  %i.ca = add nsw i32 %.0711.us1735.i20, 1        ; 3 uses
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = lshr i64 %i.cb, 6
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !855
  %i.cf = and i64 %i.cb, 63
  %i.cg = shl nuw i64 1, %i.cf
  %i.ch = and i64 %i.ce, %i.cg
  %.not.i.i.i.us.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.us.i, label %._ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEii.exit.loopexit14_crit_edge, label %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.us18.i, !llvm.loop !3234

_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.us18.i: ; preds = %bb.j
  %exitcond42.not.not.i.not = icmp eq i32 %i.ca, %i.bz
  br i1 %exitcond42.not.not.i.not, label %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEii.exit.loopexit14_crit_edge, label %bb.j, !llvm.loop !3234

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i
  %i.ci = load i8, ptr %i.bk, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %.lr.ph.split.split.split.us.i, label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.us.i:                    ; preds = %.lr.ph.split.split.i
  %i.ck = load i64, ptr %i.bj, align 8, !tbaa !855
  %i.cl = and i64 %i.ck, 1
  %.not.i6.i.i.us.i = icmp eq i64 %i.cl, 0
  br label %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEii.exit

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.split.i
  %i.cm = load ptr, ptr %i.bl, align 8, !tbaa !1529 ; 2 uses
  %i.cn = sext i32 %i.az to i64                   ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = lshr i64 %i.cq, 6
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !855
  %i.cu = and i64 %i.cq, 63
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.ct
  %.not.i7.i.i27.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i7.i.i27.i, label %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.preheader.i

_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.preheader.i: ; preds = %.lr.ph.split.split.split.i
  %i.cx = add nsw i32 %i.be, -1                   ; 2 uses
  %wide.trip.count.i = sext i32 %i.cx to i64
  %exitcond.not.not.i.not16 = icmp eq i32 %i.az, %i.cx
  br i1 %exitcond.not.not.i.not16, label %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEii.exit, label %.lr.ph, !llvm.loop !3234

.lr.ph:                                           ; preds = %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.preheader.i
  br label %bb.k, !llvm.loop !3234

bb.k:                                             ; preds = %.lr.ph, %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.i
  %indvars.iv.i17 = phi i64 [ %i.cn, %.lr.ph ], [ %indvars.iv.next.i, %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i17, 1 ; 3 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = zext i32 %i.cz to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 6
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !855
  %i.de = and i64 %i.da, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.dd
  %.not.i7.i.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i7.i.i.i, label %._ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEii.exit.loopexit14_crit_edge, label %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.i, !llvm.loop !3234

_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.i: ; preds = %bb.k
  %exitcond.not.not.i.not = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.not.i.not, label %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEii.exit.loopexit14_crit_edge, label %bb.k, !llvm.loop !3234

._ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEii.exit.loopexit14_crit_edge: ; preds = %bb.k, %bb.j
  br label %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEii.exit, !llvm.loop !3234

_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEii.exit.loopexit14_crit_edge: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.i, %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.us18.i
  br label %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEii.exit, !llvm.loop !3234

_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEii.exit: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.preheader.i, %._ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEii.exit.loopexit14_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEii.exit.loopexit14_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.us18.preheader.i, %.lr.ph.split.split.split.i, %.lr.ph.split.split.split.us.i, %.lr.ph.split.split.us.i, %.lr.ph.i, %bb.i, %bb.h, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.dh = phi i1 [ true, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit ], [ false, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ], [ true, %bb.h ], [ true, %bb.f ], [ false, %bb.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.us18.preheader.i ], [ false, %.lr.ph.i ], [ %.not.i6.i.i.us.i, %.lr.ph.split.split.split.us.i ], [ true, %.lr.ph.split.split.split.i ], [ true, %.lr.ph.split.split.us.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.preheader.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEii.exit.loopexit14_crit_edge ], [ true, %._ZNK8facebook5velox4exec12VectorReaderIsE12containsNullEii.exit.loopexit14_crit_edge ]
  ret i1 %i.dh
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i64 } @_ZNK8facebook5velox4exec12VectorReaderINS0_5ArrayIsEEE12readNullFreeEm(ptr noundef nonnull align 8 dereferenceable(162) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3232, !nonnull !797, !align !916 ; 4 uses
  %i.c = trunc i64 %1 to i32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.e = load i8, ptr %i.d, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.h = load i8, ptr %i.g, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1255
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1529
  %sext = shl i64 %1, 32
  %i.n = ashr exact i64 %sext, 30
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.p, %bb.d ], [ %i.k, %bb.c ], [ %i.c, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3161
  %i.t = sext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !3164
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.t
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.q, 0
  %.sroa.4.8.insert.ext = zext i32 %i.z to i64
  %.sroa.4.8.insert.shift = shl nuw i64 %.sroa.4.8.insert.ext, 32
  %.sroa.2.8.insert.ext = zext i32 %i.v to i64
  %.sroa.2.8.insert.insert = or disjoint i64 %.sroa.4.8.insert.shift, %.sroa.2.8.insert.ext
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.2.8.insert.insert, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_sNS0_15ConstantCheckerIJNS0_5ArrayIsEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.1061) align 8 %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1266, !range !796, !noundef !797
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !88, !range !796
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1536
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1538 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1539
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !1234   ; 2 uses
  %.not.i.i26 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i26, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i195.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i195.not, label %.critedge.i.i.i, label %.lr.ph197

bb.f:                                             ; preds = %.lr.ph197
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i196, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph197, label %.critedge.i.i.i, !llvm.loop !1540

.lr.ph197:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.i196 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i196, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !855
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1540

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox13AlignedBuffer10reallocateIiEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E:bb.a

.sink.split.i.i.i54:                              ; preds = %bb.ah
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !78
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(64) %i.dm)
          to label %.noexc.i.i55 unwind label %bb.ai, !inline_history !1301

.noexc.i.i55:                                     ; preds = %.sink.split.i.i.i54
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1302
  %.not.i.i.i56 = icmp eq ptr %i.du, null
  %i.dv = load ptr, ptr %i.dm, align 8, !tbaa !78
  %..i.i.i57 = select i1 %.not.i.i.i56, i64 8, i64 48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %..i.i.i57
  %i.dx = load ptr, ptr %i.dw, align 8
  invoke void %i.dx(ptr noundef nonnull align 8 dereferenceable(64) %i.dm)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEPS3_.exit unwind label %bb.ai, !inline_history !1301

bb.ai:                                            ; preds = %.noexc.i.i55, %.sink.split.i.i.i54
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  tail call void @__clang_call_terminate(ptr %i.dz) #44
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEPS3_.exit: ; preds = %.noexc.i.i55, %bb.ah, %_ZN8facebook5velox6Buffer7setSizeEm.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayIiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(162) dereferenceable(162) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1234 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1236
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #43
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1237 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN8facebook5velox13DecodedVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1240
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #43
  br label %_ZN8facebook5velox13DecodedVectorD2Ev.exit

_ZN8facebook5velox13DecodedVectorD2Ev.exit:       ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox4exec12VectorReaderINS0_5ArrayIiEEE12containsNullEi(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3586, !nonnull !797, !align !916 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.d = load i8, ptr %i.c, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.e, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.g = load i8, ptr %i.f, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1255
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1529
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.o, %bb.d ], [ %i.j, %bb.c ], [ %1, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1530 ; 4 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.s = load i8, ptr %i.r, align 1, !range !796
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.t
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = zext i32 %1 to i64                       ; 2 uses
  %i.v = lshr i64 %i.u, 6
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !855
  %i.y = and i64 %i.u, 63
  %i.z = shl nuw i64 1, %i.y
  %i.aa = and i64 %i.x, %i.z
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1529
  %i.ag = sext i32 %1 to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 6
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !855
  %i.an = and i64 %i.aj, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.ao, %i.am
  %.not.i7.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i7.i, label %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.g
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !855
  %i.ar = and i64 %i.aq, 1
  %.not.i6.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i6.i, label %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.h, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.at = load i8, ptr %i.as, align 8, !tbaa !88, !range !796, !noundef !797
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.i, label %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEii.exit

bb.i:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !3520
  %i.ax = sext i32 %.0.i to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3  ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !3523
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ax
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3  ; 2 uses
  %i.be = add nsw i32 %i.bd, %i.az                ; 2 uses
  %i.bf = icmp sgt i32 %i.bd, 0
  br i1 %i.bf, label %.lr.ph.i, label %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEii.exit

.lr.ph.i:                                         ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !3587, !nonnull !797, !align !916 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1530 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 59
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEii.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 57
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 58
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = load i8, ptr %i.bm, align 1, !range !796
  %i.br = trunc nuw i8 %i.bq to i1
  %or.cond.i.i.i = select i1 %i.bp, i1 true, i1 %i.br
  br i1 %or.cond.i.i.i, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  %i.bs = zext i32 %i.az to i64                   ; 2 uses
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !855
  %i.bw = and i64 %i.bs, 63
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = and i64 %i.bv, %i.bx
  %.not.i.i.i.us34.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.us34.i, label %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.us18.preheader.i

_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.us18.preheader.i: ; preds = %.lr.ph.split.split.us.i
  %i.bz = add i32 %i.be, -1                       ; 2 uses
  %exitcond42.not.not.i.not19 = icmp eq i32 %i.az, %i.bz
  br i1 %exitcond42.not.not.i.not19, label %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEii.exit, label %.lr.ph21, !llvm.loop !3588

.lr.ph21:                                         ; preds = %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.us18.preheader.i
  br label %bb.j, !llvm.loop !3588

bb.j:                                             ; preds = %.lr.ph21, %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.us18.i
  %.0711.us1735.i20 = phi i32 [ %i.az, %.lr.ph21 ], [ %i.ca, %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.us18.i ]
  %i.ca = add nsw i32 %.0711.us1735.i20, 1        ; 3 uses
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = lshr i64 %i.cb, 6
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !855
  %i.cf = and i64 %i.cb, 63
  %i.cg = shl nuw i64 1, %i.cf
  %i.ch = and i64 %i.ce, %i.cg
  %.not.i.i.i.us.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.us.i, label %._ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEii.exit.loopexit14_crit_edge, label %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.us18.i, !llvm.loop !3588

_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.us18.i: ; preds = %bb.j
  %exitcond42.not.not.i.not = icmp eq i32 %i.ca, %i.bz
  br i1 %exitcond42.not.not.i.not, label %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEii.exit.loopexit14_crit_edge, label %bb.j, !llvm.loop !3588

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i
  %i.ci = load i8, ptr %i.bk, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %.lr.ph.split.split.split.us.i, label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.us.i:                    ; preds = %.lr.ph.split.split.i
  %i.ck = load i64, ptr %i.bj, align 8, !tbaa !855
  %i.cl = and i64 %i.ck, 1
  %.not.i6.i.i.us.i = icmp eq i64 %i.cl, 0
  br label %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEii.exit

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.split.i
  %i.cm = load ptr, ptr %i.bl, align 8, !tbaa !1529 ; 2 uses
  %i.cn = sext i32 %i.az to i64                   ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = lshr i64 %i.cq, 6
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !855
  %i.cu = and i64 %i.cq, 63
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.ct
  %.not.i7.i.i27.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i7.i.i27.i, label %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.preheader.i

_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.preheader.i: ; preds = %.lr.ph.split.split.split.i
  %i.cx = add nsw i32 %i.be, -1                   ; 2 uses
  %wide.trip.count.i = sext i32 %i.cx to i64
  %exitcond.not.not.i.not16 = icmp eq i32 %i.az, %i.cx
  br i1 %exitcond.not.not.i.not16, label %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEii.exit, label %.lr.ph, !llvm.loop !3588

.lr.ph:                                           ; preds = %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.preheader.i
  br label %bb.k, !llvm.loop !3588

bb.k:                                             ; preds = %.lr.ph, %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.i
  %indvars.iv.i17 = phi i64 [ %i.cn, %.lr.ph ], [ %indvars.iv.next.i, %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i17, 1 ; 3 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = zext i32 %i.cz to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 6
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !855
  %i.de = and i64 %i.da, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.dd
  %.not.i7.i.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i7.i.i.i, label %._ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEii.exit.loopexit14_crit_edge, label %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.i, !llvm.loop !3588

_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.i: ; preds = %bb.k
  %exitcond.not.not.i.not = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.not.i.not, label %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEii.exit.loopexit14_crit_edge, label %bb.k, !llvm.loop !3588

._ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEii.exit.loopexit14_crit_edge: ; preds = %bb.k, %bb.j
  br label %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEii.exit, !llvm.loop !3588

_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEii.exit.loopexit14_crit_edge: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.i, %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.us18.i
  br label %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEii.exit, !llvm.loop !3588

_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEii.exit: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.preheader.i, %._ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEii.exit.loopexit14_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEii.exit.loopexit14_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.us18.preheader.i, %.lr.ph.split.split.split.i, %.lr.ph.split.split.split.us.i, %.lr.ph.split.split.us.i, %.lr.ph.i, %bb.i, %bb.h, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.dh = phi i1 [ true, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit ], [ false, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ], [ true, %bb.h ], [ true, %bb.f ], [ false, %bb.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.us18.preheader.i ], [ false, %.lr.ph.i ], [ %.not.i6.i.i.us.i, %.lr.ph.split.split.split.us.i ], [ true, %.lr.ph.split.split.split.i ], [ true, %.lr.ph.split.split.us.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.preheader.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEii.exit.loopexit14_crit_edge ], [ true, %._ZNK8facebook5velox4exec12VectorReaderIiE12containsNullEii.exit.loopexit14_crit_edge ]
  ret i1 %i.dh
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i64 } @_ZNK8facebook5velox4exec12VectorReaderINS0_5ArrayIiEEE12readNullFreeEm(ptr noundef nonnull align 8 dereferenceable(162) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3586, !nonnull !797, !align !916 ; 4 uses
  %i.c = trunc i64 %1 to i32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.e = load i8, ptr %i.d, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.h = load i8, ptr %i.g, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1255
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1529
  %sext = shl i64 %1, 32
  %i.n = ashr exact i64 %sext, 30
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.p, %bb.d ], [ %i.k, %bb.c ], [ %i.c, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3520
  %i.t = sext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !3523
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.t
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.q, 0
  %.sroa.4.8.insert.ext = zext i32 %i.z to i64
  %.sroa.4.8.insert.shift = shl nuw i64 %.sroa.4.8.insert.ext, 32
  %.sroa.2.8.insert.ext = zext i32 %i.v to i64
  %.sroa.2.8.insert.insert = or disjoint i64 %.sroa.4.8.insert.shift, %.sroa.2.8.insert.ext
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.2.8.insert.insert, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_iNS0_15ConstantCheckerIJNS0_5ArrayIiEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.1223) align 8 %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1266, !range !796, !noundef !797
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !88, !range !796
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1536
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1538 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1539
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !1234   ; 2 uses
  %.not.i.i26 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i26, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i198.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i198.not, label %.critedge.i.i.i, label %.lr.ph200

bb.f:                                             ; preds = %.lr.ph200
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i199, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph200, label %.critedge.i.i.i, !llvm.loop !1540

.lr.ph200:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.i199 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i199, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !855
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1540

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox13AlignedBuffer10reallocateIlEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E:bb.a

.sink.split.i.i.i54:                              ; preds = %bb.ah
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !78
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(64) %i.dm)
          to label %.noexc.i.i55 unwind label %bb.ai, !inline_history !1301

.noexc.i.i55:                                     ; preds = %.sink.split.i.i.i54
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1302
  %.not.i.i.i56 = icmp eq ptr %i.du, null
  %i.dv = load ptr, ptr %i.dm, align 8, !tbaa !78
  %..i.i.i57 = select i1 %.not.i.i.i56, i64 8, i64 48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %..i.i.i57
  %i.dx = load ptr, ptr %i.dw, align 8
  invoke void %i.dx(ptr noundef nonnull align 8 dereferenceable(64) %i.dm)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEPS3_.exit unwind label %bb.ai, !inline_history !1301

bb.ai:                                            ; preds = %.noexc.i.i55, %.sink.split.i.i.i54
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  tail call void @__clang_call_terminate(ptr %i.dz) #44
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEPS3_.exit: ; preds = %.noexc.i.i55, %bb.ah, %_ZN8facebook5velox6Buffer7setSizeEm.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayIlEEED2Ev(ptr noundef nonnull align 8 dead_on_return(162) dereferenceable(162) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1234 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1236
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #43
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1237 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN8facebook5velox13DecodedVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1240
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #43
  br label %_ZN8facebook5velox13DecodedVectorD2Ev.exit

_ZN8facebook5velox13DecodedVectorD2Ev.exit:       ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox4exec12VectorReaderINS0_5ArrayIlEEE12containsNullEi(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3944, !nonnull !797, !align !916 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.d = load i8, ptr %i.c, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.e, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.g = load i8, ptr %i.f, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1255
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1529
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.o, %bb.d ], [ %i.j, %bb.c ], [ %1, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1530 ; 4 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.s = load i8, ptr %i.r, align 1, !range !796
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.t
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = zext i32 %1 to i64                       ; 2 uses
  %i.v = lshr i64 %i.u, 6
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !855
  %i.y = and i64 %i.u, 63
  %i.z = shl nuw i64 1, %i.y
  %i.aa = and i64 %i.x, %i.z
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1529
  %i.ag = sext i32 %1 to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 6
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !855
  %i.an = and i64 %i.aj, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.ao, %i.am
  %.not.i7.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i7.i, label %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.g
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !855
  %i.ar = and i64 %i.aq, 1
  %.not.i6.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i6.i, label %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.h, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.at = load i8, ptr %i.as, align 8, !tbaa !88, !range !796, !noundef !797
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.i, label %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEii.exit

bb.i:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !3877
  %i.ax = sext i32 %.0.i to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3  ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !3880
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ax
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3  ; 2 uses
  %i.be = add nsw i32 %i.bd, %i.az                ; 2 uses
  %i.bf = icmp sgt i32 %i.bd, 0
  br i1 %i.bf, label %.lr.ph.i, label %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEii.exit

.lr.ph.i:                                         ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !3945, !nonnull !797, !align !916 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1530 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 59
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEii.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 57
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 58
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = load i8, ptr %i.bm, align 1, !range !796
  %i.br = trunc nuw i8 %i.bq to i1
  %or.cond.i.i.i = select i1 %i.bp, i1 true, i1 %i.br
  br i1 %or.cond.i.i.i, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  %i.bs = zext i32 %i.az to i64                   ; 2 uses
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !855
  %i.bw = and i64 %i.bs, 63
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = and i64 %i.bv, %i.bx
  %.not.i.i.i.us34.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.us34.i, label %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.us18.preheader.i

_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.us18.preheader.i: ; preds = %.lr.ph.split.split.us.i
  %i.bz = add i32 %i.be, -1                       ; 2 uses
  %exitcond42.not.not.i.not19 = icmp eq i32 %i.az, %i.bz
  br i1 %exitcond42.not.not.i.not19, label %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEii.exit, label %.lr.ph21, !llvm.loop !3946

.lr.ph21:                                         ; preds = %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.us18.preheader.i
  br label %bb.j, !llvm.loop !3946

bb.j:                                             ; preds = %.lr.ph21, %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.us18.i
  %.0711.us1735.i20 = phi i32 [ %i.az, %.lr.ph21 ], [ %i.ca, %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.us18.i ]
  %i.ca = add nsw i32 %.0711.us1735.i20, 1        ; 3 uses
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = lshr i64 %i.cb, 6
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !855
  %i.cf = and i64 %i.cb, 63
  %i.cg = shl nuw i64 1, %i.cf
  %i.ch = and i64 %i.ce, %i.cg
  %.not.i.i.i.us.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.us.i, label %._ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEii.exit.loopexit14_crit_edge, label %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.us18.i, !llvm.loop !3946

_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.us18.i: ; preds = %bb.j
  %exitcond42.not.not.i.not = icmp eq i32 %i.ca, %i.bz
  br i1 %exitcond42.not.not.i.not, label %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEii.exit.loopexit14_crit_edge, label %bb.j, !llvm.loop !3946

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i
  %i.ci = load i8, ptr %i.bk, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %.lr.ph.split.split.split.us.i, label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.us.i:                    ; preds = %.lr.ph.split.split.i
  %i.ck = load i64, ptr %i.bj, align 8, !tbaa !855
  %i.cl = and i64 %i.ck, 1
  %.not.i6.i.i.us.i = icmp eq i64 %i.cl, 0
  br label %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEii.exit

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.split.i
  %i.cm = load ptr, ptr %i.bl, align 8, !tbaa !1529 ; 2 uses
  %i.cn = sext i32 %i.az to i64                   ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = lshr i64 %i.cq, 6
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !855
  %i.cu = and i64 %i.cq, 63
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.ct
  %.not.i7.i.i27.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i7.i.i27.i, label %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.preheader.i

_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.preheader.i: ; preds = %.lr.ph.split.split.split.i
  %i.cx = add nsw i32 %i.be, -1                   ; 2 uses
  %wide.trip.count.i = sext i32 %i.cx to i64
  %exitcond.not.not.i.not16 = icmp eq i32 %i.az, %i.cx
  br i1 %exitcond.not.not.i.not16, label %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEii.exit, label %.lr.ph, !llvm.loop !3946

.lr.ph:                                           ; preds = %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.preheader.i
  br label %bb.k, !llvm.loop !3946

bb.k:                                             ; preds = %.lr.ph, %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.i
  %indvars.iv.i17 = phi i64 [ %i.cn, %.lr.ph ], [ %indvars.iv.next.i, %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i17, 1 ; 3 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = zext i32 %i.cz to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 6
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !855
  %i.de = and i64 %i.da, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.dd
  %.not.i7.i.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i7.i.i.i, label %._ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEii.exit.loopexit14_crit_edge, label %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.i, !llvm.loop !3946

_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.i: ; preds = %bb.k
  %exitcond.not.not.i.not = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.not.i.not, label %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEii.exit.loopexit14_crit_edge, label %bb.k, !llvm.loop !3946

._ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEii.exit.loopexit14_crit_edge: ; preds = %bb.k, %bb.j
  br label %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEii.exit, !llvm.loop !3946

_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEii.exit.loopexit14_crit_edge: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.i, %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.us18.i
  br label %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEii.exit, !llvm.loop !3946

_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEii.exit: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.preheader.i, %._ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEii.exit.loopexit14_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEii.exit.loopexit14_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.us18.preheader.i, %.lr.ph.split.split.split.i, %.lr.ph.split.split.split.us.i, %.lr.ph.split.split.us.i, %.lr.ph.i, %bb.i, %bb.h, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.dh = phi i1 [ true, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit ], [ false, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ], [ true, %bb.h ], [ true, %bb.f ], [ false, %bb.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.us18.preheader.i ], [ false, %.lr.ph.i ], [ %.not.i6.i.i.us.i, %.lr.ph.split.split.split.us.i ], [ true, %.lr.ph.split.split.split.i ], [ true, %.lr.ph.split.split.us.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.preheader.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEii.exit.loopexit14_crit_edge ], [ true, %._ZNK8facebook5velox4exec12VectorReaderIlE12containsNullEii.exit.loopexit14_crit_edge ]
  ret i1 %i.dh
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, i64 } @_ZNK8facebook5velox4exec12VectorReaderINS0_5ArrayIlEEE12readNullFreeEm(ptr noundef nonnull align 8 dereferenceable(162) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3944, !nonnull !797, !align !916 ; 4 uses
  %i.c = trunc i64 %1 to i32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.e = load i8, ptr %i.d, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.h = load i8, ptr %i.g, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1255
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1529
  %sext = shl i64 %1, 32
  %i.n = ashr exact i64 %sext, 30
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.p, %bb.d ], [ %i.k, %bb.c ], [ %i.c, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !3877
  %i.t = sext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !3880
  %i.y = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.t
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %i.q, 0
  %.sroa.4.8.insert.ext = zext i32 %i.z to i64
  %.sroa.4.8.insert.shift = shl nuw i64 %.sroa.4.8.insert.ext, 32
  %.sroa.2.8.insert.ext = zext i32 %i.v to i64
  %.sroa.2.8.insert.insert = or disjoint i64 %.sroa.4.8.insert.shift, %.sroa.2.8.insert.ext
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.2.8.insert.insert, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_lNS0_15ConstantCheckerIJNS0_5ArrayIlEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.1385) align 8 %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1266, !range !796, !noundef !797
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !88, !range !796
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1536
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1538 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1539
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !1234   ; 2 uses
  %.not.i.i26 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i26, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i198.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i198.not, label %.critedge.i.i.i, label %.lr.ph200

bb.f:                                             ; preds = %.lr.ph200
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i199, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph200, label %.critedge.i.i.i, !llvm.loop !1540

.lr.ph200:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.i199 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i199, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !855
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1540

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
end_hunk_3
begin_hunk_4_@_ZN8facebook5velox13AlignedBuffer10reallocateInEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E:bb.a

.sink.split.i.i.i54:                              ; preds = %bb.ah
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !78
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(64) %i.dm)
          to label %.noexc.i.i55 unwind label %bb.ai, !inline_history !1301

.noexc.i.i55:                                     ; preds = %.sink.split.i.i.i54
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1302
  %.not.i.i.i56 = icmp eq ptr %i.du, null
  %i.dv = load ptr, ptr %i.dm, align 8, !tbaa !78
  %..i.i.i57 = select i1 %.not.i.i.i56, i64 8, i64 48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %..i.i.i57
  %i.dx = load ptr, ptr %i.dw, align 8
  invoke void %i.dx(ptr noundef nonnull align 8 dereferenceable(64) %i.dm)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEPS3_.exit unwind label %bb.ai, !inline_history !1301

bb.ai:                                            ; preds = %.noexc.i.i55, %.sink.split.i.i.i54
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  tail call void @__clang_call_terminate(ptr %i.dz) #44
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEPS3_.exit: ; preds = %.noexc.i.i55, %bb.ah, %_ZN8facebook5velox6Buffer7setSizeEm.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayInEEED2Ev(ptr noundef nonnull align 8 dead_on_return(162) dereferenceable(162) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1234 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1236
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #43
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1237 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN8facebook5velox13DecodedVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1240
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #43
  br label %_ZN8facebook5velox13DecodedVectorD2Ev.exit

_ZN8facebook5velox13DecodedVectorD2Ev.exit:       ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox4exec12VectorReaderINS0_5ArrayInEEE12containsNullEi(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4306, !nonnull !797, !align !916 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.d = load i8, ptr %i.c, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.e, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.g = load i8, ptr %i.f, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1255
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1529
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.o, %bb.d ], [ %i.j, %bb.c ], [ %1, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1530 ; 4 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.s = load i8, ptr %i.r, align 1, !range !796
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.t
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = zext i32 %1 to i64                       ; 2 uses
  %i.v = lshr i64 %i.u, 6
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !855
  %i.y = and i64 %i.u, 63
  %i.z = shl nuw i64 1, %i.y
  %i.aa = and i64 %i.x, %i.z
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1529
  %i.ag = sext i32 %1 to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 6
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !855
  %i.an = and i64 %i.aj, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.ao, %i.am
  %.not.i7.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i7.i, label %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.g
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !855
  %i.ar = and i64 %i.aq, 1
  %.not.i6.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i6.i, label %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.h, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.at = load i8, ptr %i.as, align 8, !tbaa !88, !range !796, !noundef !797
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.i, label %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEii.exit

bb.i:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !4236
  %i.ax = sext i32 %.0.i to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3  ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !4239
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ax
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3  ; 2 uses
  %i.be = add nsw i32 %i.bd, %i.az                ; 2 uses
  %i.bf = icmp sgt i32 %i.bd, 0
  br i1 %i.bf, label %.lr.ph.i, label %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEii.exit

.lr.ph.i:                                         ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !4307, !nonnull !797, !align !916 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1530 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 59
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEii.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 57
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 58
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = load i8, ptr %i.bm, align 1, !range !796
  %i.br = trunc nuw i8 %i.bq to i1
  %or.cond.i.i.i = select i1 %i.bp, i1 true, i1 %i.br
  br i1 %or.cond.i.i.i, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  %i.bs = zext i32 %i.az to i64                   ; 2 uses
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !855
  %i.bw = and i64 %i.bs, 63
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = and i64 %i.bv, %i.bx
  %.not.i.i.i.us34.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.us34.i, label %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.us18.preheader.i

_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.us18.preheader.i: ; preds = %.lr.ph.split.split.us.i
  %i.bz = add i32 %i.be, -1                       ; 2 uses
  %exitcond42.not.not.i.not19 = icmp eq i32 %i.az, %i.bz
  br i1 %exitcond42.not.not.i.not19, label %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEii.exit, label %.lr.ph21, !llvm.loop !4308

.lr.ph21:                                         ; preds = %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.us18.preheader.i
  br label %bb.j, !llvm.loop !4308

bb.j:                                             ; preds = %.lr.ph21, %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.us18.i
  %.0711.us1735.i20 = phi i32 [ %i.az, %.lr.ph21 ], [ %i.ca, %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.us18.i ]
  %i.ca = add nsw i32 %.0711.us1735.i20, 1        ; 3 uses
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = lshr i64 %i.cb, 6
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !855
  %i.cf = and i64 %i.cb, 63
  %i.cg = shl nuw i64 1, %i.cf
  %i.ch = and i64 %i.ce, %i.cg
  %.not.i.i.i.us.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.us.i, label %._ZNK8facebook5velox4exec12VectorReaderInE12containsNullEii.exit.loopexit14_crit_edge, label %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.us18.i, !llvm.loop !4308

_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.us18.i: ; preds = %bb.j
  %exitcond42.not.not.i.not = icmp eq i32 %i.ca, %i.bz
  br i1 %exitcond42.not.not.i.not, label %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderInE12containsNullEii.exit.loopexit14_crit_edge, label %bb.j, !llvm.loop !4308

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i
  %i.ci = load i8, ptr %i.bk, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %.lr.ph.split.split.split.us.i, label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.us.i:                    ; preds = %.lr.ph.split.split.i
  %i.ck = load i64, ptr %i.bj, align 8, !tbaa !855
  %i.cl = and i64 %i.ck, 1
  %.not.i6.i.i.us.i = icmp eq i64 %i.cl, 0
  br label %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEii.exit

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.split.i
  %i.cm = load ptr, ptr %i.bl, align 8, !tbaa !1529 ; 2 uses
  %i.cn = sext i32 %i.az to i64                   ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = lshr i64 %i.cq, 6
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !855
  %i.cu = and i64 %i.cq, 63
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.ct
  %.not.i7.i.i27.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i7.i.i27.i, label %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.preheader.i

_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.preheader.i: ; preds = %.lr.ph.split.split.split.i
  %i.cx = add nsw i32 %i.be, -1                   ; 2 uses
  %wide.trip.count.i = sext i32 %i.cx to i64
  %exitcond.not.not.i.not16 = icmp eq i32 %i.az, %i.cx
  br i1 %exitcond.not.not.i.not16, label %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEii.exit, label %.lr.ph, !llvm.loop !4308

.lr.ph:                                           ; preds = %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.preheader.i
  br label %bb.k, !llvm.loop !4308

bb.k:                                             ; preds = %.lr.ph, %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.i
  %indvars.iv.i17 = phi i64 [ %i.cn, %.lr.ph ], [ %indvars.iv.next.i, %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i17, 1 ; 3 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = zext i32 %i.cz to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 6
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !855
  %i.de = and i64 %i.da, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.dd
  %.not.i7.i.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i7.i.i.i, label %._ZNK8facebook5velox4exec12VectorReaderInE12containsNullEii.exit.loopexit14_crit_edge, label %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.i, !llvm.loop !4308

_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.i: ; preds = %bb.k
  %exitcond.not.not.i.not = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.not.i.not, label %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderInE12containsNullEii.exit.loopexit14_crit_edge, label %bb.k, !llvm.loop !4308

._ZNK8facebook5velox4exec12VectorReaderInE12containsNullEii.exit.loopexit14_crit_edge: ; preds = %bb.k, %bb.j
  br label %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEii.exit, !llvm.loop !4308

_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderInE12containsNullEii.exit.loopexit14_crit_edge: ; preds = %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.i, %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.us18.i
  br label %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEii.exit, !llvm.loop !4308

_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEii.exit: ; preds = %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.preheader.i, %._ZNK8facebook5velox4exec12VectorReaderInE12containsNullEii.exit.loopexit14_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderInE12containsNullEii.exit.loopexit14_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.us18.preheader.i, %.lr.ph.split.split.split.i, %.lr.ph.split.split.split.us.i, %.lr.ph.split.split.us.i, %.lr.ph.i, %bb.i, %bb.h, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.dh = phi i1 [ true, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit ], [ false, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ], [ true, %bb.h ], [ true, %bb.f ], [ false, %bb.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.us18.preheader.i ], [ false, %.lr.ph.i ], [ %.not.i6.i.i.us.i, %.lr.ph.split.split.split.us.i ], [ true, %.lr.ph.split.split.split.i ], [ true, %.lr.ph.split.split.us.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.preheader.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderInE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderInE12containsNullEii.exit.loopexit14_crit_edge ], [ true, %._ZNK8facebook5velox4exec12VectorReaderInE12containsNullEii.exit.loopexit14_crit_edge ]
  ret i1 %i.dh
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.1555) align 8 %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1266, !range !796, !noundef !797
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !88, !range !796
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1536
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1538 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1539
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !1234   ; 2 uses
  %.not.i.i26 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i26, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i195.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i195.not, label %.critedge.i.i.i, label %.lr.ph197

bb.f:                                             ; preds = %.lr.ph197
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i196, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph197, label %.critedge.i.i.i, !llvm.loop !1540

.lr.ph197:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.i196 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i196, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !855
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1540

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !855
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph197, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph197 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i25 = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i25, label %bb.h, label %bb.bb

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1538 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1536 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit134

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !4246 ; 2 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !4309, !nonnull !797, !align !916 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.an = sext i32 %i.ag to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit
  %indvars.iv168 = phi i64 [ %i.an, %.lr.ph ], [ %indvars.iv.next169, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_nNS0_15ConstantCheckerIJNS0_5ArrayInEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !4310, !nonnull !797, !align !916 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !4306, !nonnull !797, !align !916 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 58
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = trunc nsw i64 %indvars.iv168 to i32     ; 3 uses
  br i1 %i.at, label %.noexc5, label %bb.j

end_hunk_4
begin_hunk_5_@_ZN8facebook5velox13AlignedBuffer10reallocateIfEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E:bb.a

.sink.split.i.i.i54:                              ; preds = %bb.ah
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !78
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(64) %i.dm)
          to label %.noexc.i.i55 unwind label %bb.ai, !inline_history !1301

.noexc.i.i55:                                     ; preds = %.sink.split.i.i.i54
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1302
  %.not.i.i.i56 = icmp eq ptr %i.du, null
  %i.dv = load ptr, ptr %i.dm, align 8, !tbaa !78
  %..i.i.i57 = select i1 %.not.i.i.i56, i64 8, i64 48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %..i.i.i57
  %i.dx = load ptr, ptr %i.dw, align 8
  invoke void %i.dx(ptr noundef nonnull align 8 dereferenceable(64) %i.dm)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEPS3_.exit unwind label %bb.ai, !inline_history !1301

bb.ai:                                            ; preds = %.noexc.i.i55, %.sink.split.i.i.i54
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  tail call void @__clang_call_terminate(ptr %i.dz) #44
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEPS3_.exit: ; preds = %.noexc.i.i55, %bb.ah, %_ZN8facebook5velox6Buffer7setSizeEm.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(162) dereferenceable(162) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1234 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1236
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #43
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1237 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN8facebook5velox13DecodedVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1240
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #43
  br label %_ZN8facebook5velox13DecodedVectorD2Ev.exit

_ZN8facebook5velox13DecodedVectorD2Ev.exit:       ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox4exec12VectorReaderINS0_5ArrayIfEEE12containsNullEi(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4623, !nonnull !797, !align !916 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.d = load i8, ptr %i.c, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.e, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.g = load i8, ptr %i.f, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1255
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1529
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.o, %bb.d ], [ %i.j, %bb.c ], [ %1, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1530 ; 4 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.s = load i8, ptr %i.r, align 1, !range !796
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.t
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = zext i32 %1 to i64                       ; 2 uses
  %i.v = lshr i64 %i.u, 6
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !855
  %i.y = and i64 %i.u, 63
  %i.z = shl nuw i64 1, %i.y
  %i.aa = and i64 %i.x, %i.z
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1529
  %i.ag = sext i32 %1 to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 6
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !855
  %i.an = and i64 %i.aj, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.ao, %i.am
  %.not.i7.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i7.i, label %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.g
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !855
  %i.ar = and i64 %i.aq, 1
  %.not.i6.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i6.i, label %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.h, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.at = load i8, ptr %i.as, align 8, !tbaa !88, !range !796, !noundef !797
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.i, label %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEii.exit

bb.i:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !4552
  %i.ax = sext i32 %.0.i to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3  ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !4555
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ax
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3  ; 2 uses
  %i.be = add nsw i32 %i.bd, %i.az                ; 2 uses
  %i.bf = icmp sgt i32 %i.bd, 0
  br i1 %i.bf, label %.lr.ph.i, label %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEii.exit

.lr.ph.i:                                         ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !4624, !nonnull !797, !align !916 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1530 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 59
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEii.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 57
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 58
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = load i8, ptr %i.bm, align 1, !range !796
  %i.br = trunc nuw i8 %i.bq to i1
  %or.cond.i.i.i = select i1 %i.bp, i1 true, i1 %i.br
  br i1 %or.cond.i.i.i, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  %i.bs = zext i32 %i.az to i64                   ; 2 uses
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !855
  %i.bw = and i64 %i.bs, 63
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = and i64 %i.bv, %i.bx
  %.not.i.i.i.us34.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.us34.i, label %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.us18.preheader.i

_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.us18.preheader.i: ; preds = %.lr.ph.split.split.us.i
  %i.bz = add i32 %i.be, -1                       ; 2 uses
  %exitcond42.not.not.i.not19 = icmp eq i32 %i.az, %i.bz
  br i1 %exitcond42.not.not.i.not19, label %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEii.exit, label %.lr.ph21, !llvm.loop !4625

.lr.ph21:                                         ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.us18.preheader.i
  br label %bb.j, !llvm.loop !4625

bb.j:                                             ; preds = %.lr.ph21, %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.us18.i
  %.0711.us1735.i20 = phi i32 [ %i.az, %.lr.ph21 ], [ %i.ca, %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.us18.i ]
  %i.ca = add nsw i32 %.0711.us1735.i20, 1        ; 3 uses
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = lshr i64 %i.cb, 6
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !855
  %i.cf = and i64 %i.cb, 63
  %i.cg = shl nuw i64 1, %i.cf
  %i.ch = and i64 %i.ce, %i.cg
  %.not.i.i.i.us.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.us.i, label %._ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEii.exit.loopexit14_crit_edge, label %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.us18.i, !llvm.loop !4625

_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.us18.i: ; preds = %bb.j
  %exitcond42.not.not.i.not = icmp eq i32 %i.ca, %i.bz
  br i1 %exitcond42.not.not.i.not, label %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEii.exit.loopexit14_crit_edge, label %bb.j, !llvm.loop !4625

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i
  %i.ci = load i8, ptr %i.bk, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %.lr.ph.split.split.split.us.i, label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.us.i:                    ; preds = %.lr.ph.split.split.i
  %i.ck = load i64, ptr %i.bj, align 8, !tbaa !855
  %i.cl = and i64 %i.ck, 1
  %.not.i6.i.i.us.i = icmp eq i64 %i.cl, 0
  br label %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEii.exit

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.split.i
  %i.cm = load ptr, ptr %i.bl, align 8, !tbaa !1529 ; 2 uses
  %i.cn = sext i32 %i.az to i64                   ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = lshr i64 %i.cq, 6
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !855
  %i.cu = and i64 %i.cq, 63
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.ct
  %.not.i7.i.i27.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i7.i.i27.i, label %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.preheader.i

_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.preheader.i: ; preds = %.lr.ph.split.split.split.i
  %i.cx = add nsw i32 %i.be, -1                   ; 2 uses
  %wide.trip.count.i = sext i32 %i.cx to i64
  %exitcond.not.not.i.not16 = icmp eq i32 %i.az, %i.cx
  br i1 %exitcond.not.not.i.not16, label %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEii.exit, label %.lr.ph, !llvm.loop !4625

.lr.ph:                                           ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.preheader.i
  br label %bb.k, !llvm.loop !4625

bb.k:                                             ; preds = %.lr.ph, %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.i
  %indvars.iv.i17 = phi i64 [ %i.cn, %.lr.ph ], [ %indvars.iv.next.i, %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i17, 1 ; 3 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = zext i32 %i.cz to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 6
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !855
  %i.de = and i64 %i.da, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.dd
  %.not.i7.i.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i7.i.i.i, label %._ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEii.exit.loopexit14_crit_edge, label %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.i, !llvm.loop !4625

_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.i: ; preds = %bb.k
  %exitcond.not.not.i.not = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.not.i.not, label %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEii.exit.loopexit14_crit_edge, label %bb.k, !llvm.loop !4625

._ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEii.exit.loopexit14_crit_edge: ; preds = %bb.k, %bb.j
  br label %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEii.exit, !llvm.loop !4625

_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEii.exit.loopexit14_crit_edge: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.i, %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.us18.i
  br label %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEii.exit, !llvm.loop !4625

_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEii.exit: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.preheader.i, %._ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEii.exit.loopexit14_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEii.exit.loopexit14_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.us18.preheader.i, %.lr.ph.split.split.split.i, %.lr.ph.split.split.split.us.i, %.lr.ph.split.split.us.i, %.lr.ph.i, %bb.i, %bb.h, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.dh = phi i1 [ true, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit ], [ false, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ], [ true, %bb.h ], [ true, %bb.f ], [ false, %bb.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.us18.preheader.i ], [ false, %.lr.ph.i ], [ %.not.i6.i.i.us.i, %.lr.ph.split.split.split.us.i ], [ true, %.lr.ph.split.split.split.i ], [ true, %.lr.ph.split.split.us.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.preheader.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEii.exit.loopexit14_crit_edge ], [ true, %._ZNK8facebook5velox4exec12VectorReaderIfE12containsNullEii.exit.loopexit14_crit_edge ]
  ret i1 %i.dh
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.1725) align 8 %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1266, !range !796, !noundef !797
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !88, !range !796
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1536
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1538 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1539
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !1234   ; 2 uses
  %.not.i.i28 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i28, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i193.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i193.not, label %.critedge.i.i.i, label %.lr.ph195

bb.f:                                             ; preds = %.lr.ph195
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i194, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph195, label %.critedge.i.i.i, !llvm.loop !1540

.lr.ph195:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.i194 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i194, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !855
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1540

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !855
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph195, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph195 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i27 = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i27, label %bb.h, label %bb.az

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1538 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1536 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit136

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !4562 ; 2 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !4626, !nonnull !797, !align !916 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.an = sext i32 %i.ag to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit
  %indvars.iv170 = phi i64 [ %i.an, %.lr.ph ], [ %indvars.iv.next171, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_fNS0_15ConstantCheckerIJNS0_5ArrayIfEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !4627, !nonnull !797, !align !916 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !4623, !nonnull !797, !align !916 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 58
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = trunc nsw i64 %indvars.iv170 to i32     ; 3 uses
  br i1 %i.at, label %.noexc5, label %bb.j

end_hunk_5
begin_hunk_6_@_ZN8facebook5velox13AlignedBuffer10reallocateIdEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E:bb.a

.sink.split.i.i.i54:                              ; preds = %bb.ah
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !78
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 64
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(64) %i.dm)
          to label %.noexc.i.i55 unwind label %bb.ai, !inline_history !1301

.noexc.i.i55:                                     ; preds = %.sink.split.i.i.i54
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1302
  %.not.i.i.i56 = icmp eq ptr %i.du, null
  %i.dv = load ptr, ptr %i.dm, align 8, !tbaa !78
  %..i.i.i57 = select i1 %.not.i.i.i56, i64 8, i64 48
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %..i.i.i57
  %i.dx = load ptr, ptr %i.dw, align 8
  invoke void %i.dx(ptr noundef nonnull align 8 dereferenceable(64) %i.dm)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEPS3_.exit unwind label %bb.ai, !inline_history !1301

bb.ai:                                            ; preds = %.noexc.i.i55, %.sink.split.i.i.i54
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  tail call void @__clang_call_terminate(ptr %i.dz) #44
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSEPS3_.exit: ; preds = %.noexc.i.i55, %bb.ah, %_ZN8facebook5velox6Buffer7setSizeEm.exit, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEED2Ev(ptr noundef nonnull align 8 dead_on_return(162) dereferenceable(162) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1234 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1236
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #43
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1237 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN8facebook5velox13DecodedVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1240
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #43
  br label %_ZN8facebook5velox13DecodedVectorD2Ev.exit

_ZN8facebook5velox13DecodedVectorD2Ev.exit:       ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox4exec12VectorReaderINS0_5ArrayIdEEE12containsNullEi(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !4941, !nonnull !797, !align !916 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.d = load i8, ptr %i.c, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.e, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.g = load i8, ptr %i.f, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1255
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1529
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.o, %bb.d ], [ %i.j, %bb.c ], [ %1, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1530 ; 4 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.s = load i8, ptr %i.r, align 1, !range !796
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.t
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = zext i32 %1 to i64                       ; 2 uses
  %i.v = lshr i64 %i.u, 6
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !855
  %i.y = and i64 %i.u, 63
  %i.z = shl nuw i64 1, %i.y
  %i.aa = and i64 %i.x, %i.z
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1529
  %i.ag = sext i32 %1 to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 6
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !855
  %i.an = and i64 %i.aj, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.ao, %i.am
  %.not.i7.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i7.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.g
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !855
  %i.ar = and i64 %i.aq, 1
  %.not.i6.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i6.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.h, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.at = load i8, ptr %i.as, align 8, !tbaa !88, !range !796, !noundef !797
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit

bb.i:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !4869
  %i.ax = sext i32 %.0.i to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3  ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !4872
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ax
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3  ; 2 uses
  %i.be = add nsw i32 %i.bd, %i.az                ; 2 uses
  %i.bf = icmp sgt i32 %i.bd, 0
  br i1 %i.bf, label %.lr.ph.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit

.lr.ph.i:                                         ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !4942, !nonnull !797, !align !916 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1530 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 59
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 57
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 58
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = load i8, ptr %i.bm, align 1, !range !796
  %i.br = trunc nuw i8 %i.bq to i1
  %or.cond.i.i.i = select i1 %i.bp, i1 true, i1 %i.br
  br i1 %or.cond.i.i.i, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  %i.bs = zext i32 %i.az to i64                   ; 2 uses
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !855
  %i.bw = and i64 %i.bs, 63
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = and i64 %i.bv, %i.bx
  %.not.i.i.i.us34.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.us34.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.preheader.i

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.preheader.i: ; preds = %.lr.ph.split.split.us.i
  %i.bz = add i32 %i.be, -1                       ; 2 uses
  %exitcond42.not.not.i.not19 = icmp eq i32 %i.az, %i.bz
  br i1 %exitcond42.not.not.i.not19, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %.lr.ph21, !llvm.loop !4943

.lr.ph21:                                         ; preds = %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.preheader.i
  br label %bb.j, !llvm.loop !4943

bb.j:                                             ; preds = %.lr.ph21, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i
  %.0711.us1735.i20 = phi i32 [ %i.az, %.lr.ph21 ], [ %i.ca, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i ]
  %i.ca = add nsw i32 %.0711.us1735.i20, 1        ; 3 uses
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = lshr i64 %i.cb, 6
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !855
  %i.cf = and i64 %i.cb, 63
  %i.cg = shl nuw i64 1, %i.cf
  %i.ch = and i64 %i.ce, %i.cg
  %.not.i.i.i.us.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.us.i, label %._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit14_crit_edge, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i, !llvm.loop !4943

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i: ; preds = %bb.j
  %exitcond42.not.not.i.not = icmp eq i32 %i.ca, %i.bz
  br i1 %exitcond42.not.not.i.not, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit14_crit_edge, label %bb.j, !llvm.loop !4943

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i
  %i.ci = load i8, ptr %i.bk, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %.lr.ph.split.split.split.us.i, label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.us.i:                    ; preds = %.lr.ph.split.split.i
  %i.ck = load i64, ptr %i.bj, align 8, !tbaa !855
  %i.cl = and i64 %i.ck, 1
  %.not.i6.i.i.us.i = icmp eq i64 %i.cl, 0
  br label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.split.i
  %i.cm = load ptr, ptr %i.bl, align 8, !tbaa !1529 ; 2 uses
  %i.cn = sext i32 %i.az to i64                   ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = lshr i64 %i.cq, 6
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !855
  %i.cu = and i64 %i.cq, 63
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.ct
  %.not.i7.i.i27.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i7.i.i27.i, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.preheader.i

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.preheader.i: ; preds = %.lr.ph.split.split.split.i
  %i.cx = add nsw i32 %i.be, -1                   ; 2 uses
  %wide.trip.count.i = sext i32 %i.cx to i64
  %exitcond.not.not.i.not16 = icmp eq i32 %i.az, %i.cx
  br i1 %exitcond.not.not.i.not16, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, label %.lr.ph, !llvm.loop !4943

.lr.ph:                                           ; preds = %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.preheader.i
  br label %bb.k, !llvm.loop !4943

bb.k:                                             ; preds = %.lr.ph, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i
  %indvars.iv.i17 = phi i64 [ %i.cn, %.lr.ph ], [ %indvars.iv.next.i, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i17, 1 ; 3 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = zext i32 %i.cz to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 6
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !855
  %i.de = and i64 %i.da, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.dd
  %.not.i7.i.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i7.i.i.i, label %._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit14_crit_edge, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i, !llvm.loop !4943

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i: ; preds = %bb.k
  %exitcond.not.not.i.not = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.not.i.not, label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit14_crit_edge, label %bb.k, !llvm.loop !4943

._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit14_crit_edge: ; preds = %bb.k, %bb.j
  br label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, !llvm.loop !4943

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit14_crit_edge: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.i
  br label %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit, !llvm.loop !4943

_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit: ; preds = %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.preheader.i, %._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit14_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit14_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.preheader.i, %.lr.ph.split.split.split.i, %.lr.ph.split.split.split.us.i, %.lr.ph.split.split.us.i, %.lr.ph.i, %bb.i, %bb.h, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.dh = phi i1 [ true, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit ], [ false, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ], [ true, %bb.h ], [ true, %bb.f ], [ false, %bb.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.us18.preheader.i ], [ false, %.lr.ph.i ], [ %.not.i6.i.i.us.i, %.lr.ph.split.split.split.us.i ], [ true, %.lr.ph.split.split.split.i ], [ true, %.lr.ph.split.split.us.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.preheader.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit14_crit_edge ], [ true, %._ZNK8facebook5velox4exec12VectorReaderIdE12containsNullEii.exit.loopexit14_crit_edge ]
  ret i1 %i.dh
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSF_EEEE7iterateIJNS3_12VectorReaderISF_EEEEEvRNSI_12ApplyContextEDpRT_EUlT_E1_ZNS4_22applyToSelectedNoThrowISS_EEvRKS1_SR_EUlSR_E_EEvSV_SR_T0_EUlSR_E_EEvSR_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.1895) align 8 %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1266, !range !796, !noundef !797
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !88, !range !796
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1536
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1538 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1539
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !1234   ; 2 uses
  %.not.i.i28 = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i28, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i193.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i193.not, label %.critedge.i.i.i, label %.lr.ph195

bb.f:                                             ; preds = %.lr.ph195
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i194, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph195, label %.critedge.i.i.i, !llvm.loop !1540

.lr.ph195:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.i194 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i194, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !855
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1540

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !855
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph195, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph195 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i27 = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i27, label %bb.h, label %bb.az

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1538 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1536 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit136

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !4879 ; 2 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !4944, !nonnull !797, !align !916 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.an = sext i32 %i.ag to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit
  %indvars.iv170 = phi i64 [ %i.an, %.lr.ph ], [ %indvars.iv.next171, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS1_10VectorExecEEES9_dNS0_15ConstantCheckerIJNS0_5ArrayIdEEEEEJSD_EEEE7iterateIJNS1_12VectorReaderISD_EEEEEvRNSG_12ApplyContextEDpRT_EUlT_E1_ZNS2_22applyToSelectedNoThrowISQ_EEvRKNS0_17SelectivityVectorESP_EUlSP_E_EEvSU_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.ao = load ptr, ptr %i.al, align 8, !tbaa !4945, !nonnull !797, !align !916 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 120
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !4941, !nonnull !797, !align !916 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 58
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = trunc nsw i64 %indvars.iv170 to i32     ; 3 uses
  br i1 %i.at, label %.noexc5, label %bb.j

end_hunk_6
begin_hunk_7_@_ZN8facebook5velox4exec12VectorWriterINS0_7VarcharEvE10commitNullEv:bb.a
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !1286 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.j = load i8, ptr %i.i, align 4, !tbaa !1287
  %i.k = and i8 %i.j, 2
  %.not.i3.i = icmp eq i8 %i.k, 0
  br i1 %.not.i3.i, label %_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit, label %bb.b, !prof !721

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #45
  unreachable

_ZN8facebook5velox10FlatVectorINS0_10StringViewEE7setNullEib.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1292
  %i.n = zext i32 %i.d to i64                     ; 2 uses
  %i.o = lshr i64 %i.n, 3
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13
  %i.r = and i64 %i.n, 7
  %i.s = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13
  %i.u = and i8 %i.t, %i.q
  store i8 %i.u, ptr %i.p, align 1, !tbaa !13
  %i.v = load ptr, ptr %0, align 8, !tbaa !78
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(112) %0)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayINS0_7VarcharEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(162) dereferenceable(162) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1234 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1236
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #43
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1237 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZN8facebook5velox13DecodedVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1240
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #43
  br label %_ZN8facebook5velox13DecodedVectorD2Ev.exit

_ZN8facebook5velox13DecodedVectorD2Ev.exit:       ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox4exec12VectorReaderINS0_5ArrayINS0_7VarcharEEEE12containsNullEi(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !5518, !nonnull !797, !align !916 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.d = load i8, ptr %i.c, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.e, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.g = load i8, ptr %i.f, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1255
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1529
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.o, %bb.d ], [ %i.j, %bb.c ], [ %1, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1530 ; 4 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.s = load i8, ptr %i.r, align 1, !range !796
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.t
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = zext i32 %1 to i64                       ; 2 uses
  %i.v = lshr i64 %i.u, 6
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !855
  %i.y = and i64 %i.u, 63
  %i.z = shl nuw i64 1, %i.y
  %i.aa = and i64 %i.x, %i.z
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1529
  %i.ag = sext i32 %1 to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 6
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !855
  %i.an = and i64 %i.aj, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.ao, %i.am
  %.not.i7.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i7.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.g
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !855
  %i.ar = and i64 %i.aq, 1
  %.not.i6.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i6.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.h, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.at = load i8, ptr %i.as, align 8, !tbaa !88, !range !796, !noundef !797
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit

bb.i:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !5483
  %i.ax = sext i32 %.0.i to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3  ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !5486
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ax
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3  ; 2 uses
  %i.be = add nsw i32 %i.bd, %i.az                ; 2 uses
  %i.bf = icmp sgt i32 %i.bd, 0
  br i1 %i.bf, label %.lr.ph.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit

.lr.ph.i:                                         ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !5519, !nonnull !797, !align !916 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1530 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 59
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 57
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 58
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = load i8, ptr %i.bm, align 1, !range !796
  %i.br = trunc nuw i8 %i.bq to i1
  %or.cond.i.i.i = select i1 %i.bp, i1 true, i1 %i.br
  br i1 %or.cond.i.i.i, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  %i.bs = zext i32 %i.az to i64                   ; 2 uses
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !855
  %i.bw = and i64 %i.bs, 63
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = and i64 %i.bv, %i.bx
  %.not.i.i.i.us34.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.us34.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.preheader.i

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.preheader.i: ; preds = %.lr.ph.split.split.us.i
  %i.bz = add i32 %i.be, -1                       ; 2 uses
  %exitcond42.not.not.i.not19 = icmp eq i32 %i.az, %i.bz
  br i1 %exitcond42.not.not.i.not19, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit, label %.lr.ph21, !llvm.loop !5520

.lr.ph21:                                         ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.preheader.i
  br label %bb.j, !llvm.loop !5520

bb.j:                                             ; preds = %.lr.ph21, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.i
  %.0711.us1735.i20 = phi i32 [ %i.az, %.lr.ph21 ], [ %i.ca, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.i ]
  %i.ca = add nsw i32 %.0711.us1735.i20, 1        ; 3 uses
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = lshr i64 %i.cb, 6
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !855
  %i.cf = and i64 %i.cb, 63
  %i.cg = shl nuw i64 1, %i.cf
  %i.ch = and i64 %i.ce, %i.cg
  %.not.i.i.i.us.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.us.i, label %._ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.loopexit14_crit_edge, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.i, !llvm.loop !5520

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.i: ; preds = %bb.j
  %exitcond42.not.not.i.not = icmp eq i32 %i.ca, %i.bz
  br i1 %exitcond42.not.not.i.not, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.loopexit14_crit_edge, label %bb.j, !llvm.loop !5520

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i
  %i.ci = load i8, ptr %i.bk, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %.lr.ph.split.split.split.us.i, label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.us.i:                    ; preds = %.lr.ph.split.split.i
  %i.ck = load i64, ptr %i.bj, align 8, !tbaa !855
  %i.cl = and i64 %i.ck, 1
  %.not.i6.i.i.us.i = icmp eq i64 %i.cl, 0
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.split.i
  %i.cm = load ptr, ptr %i.bl, align 8, !tbaa !1529 ; 2 uses
  %i.cn = sext i32 %i.az to i64                   ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = lshr i64 %i.cq, 6
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !855
  %i.cu = and i64 %i.cq, 63
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.ct
  %.not.i7.i.i27.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i7.i.i27.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.preheader.i

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.preheader.i: ; preds = %.lr.ph.split.split.split.i
  %i.cx = add nsw i32 %i.be, -1                   ; 2 uses
  %wide.trip.count.i = sext i32 %i.cx to i64
  %exitcond.not.not.i.not16 = icmp eq i32 %i.az, %i.cx
  br i1 %exitcond.not.not.i.not16, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit, label %.lr.ph, !llvm.loop !5520

.lr.ph:                                           ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.preheader.i
  br label %bb.k, !llvm.loop !5520

bb.k:                                             ; preds = %.lr.ph, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i
  %indvars.iv.i17 = phi i64 [ %i.cn, %.lr.ph ], [ %indvars.iv.next.i, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i17, 1 ; 3 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = zext i32 %i.cz to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 6
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !855
  %i.de = and i64 %i.da, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.dd
  %.not.i7.i.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i7.i.i.i, label %._ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.loopexit14_crit_edge, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i, !llvm.loop !5520

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i: ; preds = %bb.k
  %exitcond.not.not.i.not = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.not.i.not, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.loopexit14_crit_edge, label %bb.k, !llvm.loop !5520

._ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.loopexit14_crit_edge: ; preds = %bb.k, %bb.j
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit, !llvm.loop !5520

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.loopexit14_crit_edge: ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.i
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit, !llvm.loop !5520

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit: ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.preheader.i, %._ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.loopexit14_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.loopexit14_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.preheader.i, %.lr.ph.split.split.split.i, %.lr.ph.split.split.split.us.i, %.lr.ph.split.split.us.i, %.lr.ph.i, %bb.i, %bb.h, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.dh = phi i1 [ true, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit ], [ false, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ], [ true, %bb.h ], [ true, %bb.f ], [ false, %bb.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.preheader.i ], [ false, %.lr.ph.i ], [ %.not.i6.i.i.us.i, %.lr.ph.split.split.split.us.i ], [ true, %.lr.ph.split.split.split.i ], [ true, %.lr.ph.split.split.us.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.preheader.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.loopexit14_crit_edge ], [ true, %._ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.loopexit14_crit_edge ]
  ret i1 %i.dh
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions16ArrayMinFunctionINS3_10VectorExecEEESB_NS0_7VarcharENS0_15ConstantCheckerIJNS0_5ArrayISD_EEEEEJSG_EEEE8applyUdfIZNKSJ_7iterateIJNS3_12VectorReaderISG_EEEEEvRNSJ_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSP_ST_EUlST_E_ZNKSK_ISY_EEvSP_ST_EUlST_E0_EEvRKS1_ST_SV_EUlST_E_EEvST_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.2217) align 8 %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.facebook::velox::StringView", align 8 ; 8 uses
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  %4 = alloca %"struct.facebook::velox::StringView", align 8 ; 9 uses
  %5 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  %6 = alloca %"class.facebook::velox::Status", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %8 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1266, !range !796, !noundef !797
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !88, !range !796
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1536
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1538 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1539
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !1234   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i224.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i224.not, label %.critedge.i.i.i, label %.lr.ph227

bb.f:                                             ; preds = %.lr.ph227
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i225, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph227, label %.critedge.i.i.i, !llvm.loop !1540

.lr.ph227:                                        ; preds = %bb.e, %bb.f
  %indvars.iv.i225 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i225, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !855
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1540

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !855
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph227, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph227 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i33 = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i33, label %bb.h, label %bb.bx

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1538 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1536 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit172

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !5487 ; 2 uses
  %i.ak = load ptr, ptr %1, align 8, !tbaa !5521, !nonnull !797, !align !916 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !797, !align !916 ; 2 uses
  %i.aw = sext i32 %i.ag to i64
  br label %bb.i
end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17ArrayJoinFunctionINS1_10VectorExecENS0_10CustomTypeINS0_5JsonTELb0EEEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_5ArrayISA_EESC_EEEJSF_SC_EEEE6unpackILi0ELb0EJEEEvRNSI_12ApplyContextERSt6vectorISt8optionalINS1_18LocalDecodedVectorEESaISP_EERKSM_ISt10shared_ptrINS0_10BaseVectorEESaISV_EEDpRT1_:bb.a
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !1259
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !19301
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 120
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !1264
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !19304
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !1164
  invoke void @_ZN8facebook5velox13DecodedVector6decodeERKNS0_10BaseVectorEb(ptr noundef nonnull align 8 dereferenceable(162) %5, ptr noundef nonnull align 8 dereferenceable(94) %i.bf, i1 noundef zeroext true)
          to label %_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayINS0_10CustomTypeINS0_5JsonTELb0EEEEEEC2EPKNS0_13DecodedVectorE.exit unwind label %bb.k

bb.k:                                             ; preds = %_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox13DecodedVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(162) %5) #33
  br label %common.resume

_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayINS0_10CustomTypeINS0_5JsonTELb0EEEEEEC2EPKNS0_13DecodedVectorE.exit: ; preds = %_ZNRSt8optionalIN8facebook5velox4exec18LocalDecodedVectorEE5valueEv.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 152
  store ptr %5, ptr %i.bh, align 8, !tbaa !1233
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 161
  store i8 0, ptr %i.bi, align 1, !tbaa !1266
  invoke void @_ZNK8facebook5velox4exec21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17ArrayJoinFunctionINS1_10VectorExecENS0_10CustomTypeINS0_5JsonTELb0EEEEES7_NS0_7VarcharENS0_15ConstantCheckerIJNS0_5ArrayISA_EESC_EEEJSF_SC_EEEE6unpackILi1ELb0EJNS1_12VectorReaderISF_EEEEEvRNSI_12ApplyContextERSt6vectorISt8optionalINS1_18LocalDecodedVectorEESaISR_EERKSO_ISt10shared_ptrINS0_10BaseVectorEESaISX_EEDpRT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(138) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(162) %5)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayINS0_10CustomTypeINS0_5JsonTELb0EEEEEEC2EPKNS0_13DecodedVectorE.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 96
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1234 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1236
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bp) #43
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i.i

_ZNSt6vectorImSaImEED2Ev.exit.i.i:                ; preds = %bb.m, %bb.l
  %i.bq = load ptr, ptr %i.as, align 8, !tbaa !1237 ; 3 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i1.i.i, label %_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayINS0_10CustomTypeINS0_5JsonTELb0EEEEEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1240
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #43
  br label %_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayINS0_10CustomTypeINS0_5JsonTELb0EEEEEED2Ev.exit

_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayINS0_10CustomTypeINS0_5JsonTELb0EEEEEED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  ret void

bb.o:                                             ; preds = %_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayINS0_10CustomTypeINS0_5JsonTELb0EEEEEEC2EPKNS0_13DecodedVectorE.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8facebook5velox4exec12VectorReaderINS0_5ArrayINS0_10CustomTypeINS0_5JsonTELb0EEEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(162) dereferenceable(162) %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK8facebook5velox4exec12VectorReaderINS0_5ArrayINS0_10CustomTypeINS0_5JsonTELb0EEEEEE12containsNullEi(ptr noundef nonnull align 8 dereferenceable(162) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19305, !nonnull !797, !align !916 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  %i.d = load i8, ptr %i.c, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.e, label %_ZNK8facebook5velox13DecodedVector5indexEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.g = load i8, ptr %i.f, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.j = load i32, ptr %i.i, align 8, !tbaa !1255
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1529
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector5indexEi.exit

_ZNK8facebook5velox13DecodedVector5indexEi.exit:  ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i32 [ %i.o, %bb.d ], [ %i.j, %bb.c ], [ %1, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1530 ; 4 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  %i.s = load i8, ptr %i.r, align 1, !range !796
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i = select i1 %i.e, i1 true, i1 %i.t
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = zext i32 %1 to i64                       ; 2 uses
  %i.v = lshr i64 %i.u, 6
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !855
  %i.y = and i64 %i.u, 63
  %i.z = shl nuw i64 1, %i.y
  %i.aa = and i64 %i.x, %i.z
  %.not.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 59
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1529
  %i.ag = sext i32 %1 to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = lshr i64 %i.aj, 6
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !855
  %i.an = and i64 %i.aj, 63
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = and i64 %i.ao, %i.am
  %.not.i7.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i7.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.g
  %i.aq = load i64, ptr %i.q, align 8, !tbaa !855
  %i.ar = and i64 %i.aq, 1
  %.not.i6.i = icmp eq i64 %i.ar, 0
  br i1 %.not.i6.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread: ; preds = %_ZNK8facebook5velox13DecodedVector5indexEi.exit, %bb.h, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.at = load i8, ptr %i.as, align 8, !tbaa !88, !range !796, !noundef !797
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit

bb.i:                                             ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !19301
  %i.ax = sext i32 %.0.i to i64                   ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3  ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !19304
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.ax
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3  ; 2 uses
  %i.be = add nsw i32 %i.bd, %i.az                ; 2 uses
  %i.bf = icmp sgt i32 %i.bd, 0
  br i1 %i.bf, label %.lr.ph.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit

.lr.ph.i:                                         ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !5519, !nonnull !797, !align !916 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1530 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 59
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  br i1 %.not.i.i.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 57
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 58
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !1527, !range !796, !noundef !797
  %i.bp = trunc nuw i8 %i.bo to i1
  %i.bq = load i8, ptr %i.bm, align 1, !range !796
  %i.br = trunc nuw i8 %i.bq to i1
  %or.cond.i.i.i = select i1 %i.bp, i1 true, i1 %i.br
  br i1 %or.cond.i.i.i, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  %i.bs = zext i32 %i.az to i64                   ; 2 uses
  %i.bt = lshr i64 %i.bs, 6
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !855
  %i.bw = and i64 %i.bs, 63
  %i.bx = shl nuw i64 1, %i.bw
  %i.by = and i64 %i.bv, %i.bx
  %.not.i.i.i.us34.i = icmp eq i64 %i.by, 0
  br i1 %.not.i.i.i.us34.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.preheader.i

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.preheader.i: ; preds = %.lr.ph.split.split.us.i
  %i.bz = add i32 %i.be, -1                       ; 2 uses
  %exitcond42.not.not.i.not19 = icmp eq i32 %i.az, %i.bz
  br i1 %exitcond42.not.not.i.not19, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit, label %.lr.ph21, !llvm.loop !5520

.lr.ph21:                                         ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.preheader.i
  br label %bb.j, !llvm.loop !5520

bb.j:                                             ; preds = %.lr.ph21, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.i
  %.0711.us1735.i20 = phi i32 [ %i.az, %.lr.ph21 ], [ %i.ca, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.i ]
  %i.ca = add nsw i32 %.0711.us1735.i20, 1        ; 3 uses
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = lshr i64 %i.cb, 6
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !855
  %i.cf = and i64 %i.cb, 63
  %i.cg = shl nuw i64 1, %i.cf
  %i.ch = and i64 %i.ce, %i.cg
  %.not.i.i.i.us.i = icmp eq i64 %i.ch, 0
  br i1 %.not.i.i.i.us.i, label %._ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.loopexit14_crit_edge, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.i, !llvm.loop !5520

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.i: ; preds = %bb.j
  %exitcond42.not.not.i.not = icmp eq i32 %i.ca, %i.bz
  br i1 %exitcond42.not.not.i.not, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.loopexit14_crit_edge, label %bb.j, !llvm.loop !5520

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i
  %i.ci = load i8, ptr %i.bk, align 1, !tbaa !1528, !range !796, !noundef !797
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %.lr.ph.split.split.split.us.i, label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.us.i:                    ; preds = %.lr.ph.split.split.i
  %i.ck = load i64, ptr %i.bj, align 8, !tbaa !855
  %i.cl = and i64 %i.ck, 1
  %.not.i6.i.i.us.i = icmp eq i64 %i.cl, 0
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.split.i
  %i.cm = load ptr, ptr %i.bl, align 8, !tbaa !1529 ; 2 uses
  %i.cn = sext i32 %i.az to i64                   ; 2 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cq = zext i32 %i.cp to i64                   ; 2 uses
  %i.cr = lshr i64 %i.cq, 6
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !855
  %i.cu = and i64 %i.cq, 63
  %i.cv = shl nuw i64 1, %i.cu
  %i.cw = and i64 %i.cv, %i.ct
  %.not.i7.i.i27.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i7.i.i27.i, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.preheader.i

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.preheader.i: ; preds = %.lr.ph.split.split.split.i
  %i.cx = add nsw i32 %i.be, -1                   ; 2 uses
  %wide.trip.count.i = sext i32 %i.cx to i64
  %exitcond.not.not.i.not16 = icmp eq i32 %i.az, %i.cx
  br i1 %exitcond.not.not.i.not16, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit, label %.lr.ph, !llvm.loop !5520

.lr.ph:                                           ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.preheader.i
  br label %bb.k, !llvm.loop !5520

bb.k:                                             ; preds = %.lr.ph, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i
  %indvars.iv.i17 = phi i64 [ %i.cn, %.lr.ph ], [ %indvars.iv.next.i, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i17, 1 ; 3 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3
  %i.da = zext i32 %i.cz to i64                   ; 2 uses
  %i.db = lshr i64 %i.da, 6
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !855
  %i.de = and i64 %i.da, 63
  %i.df = shl nuw i64 1, %i.de
  %i.dg = and i64 %i.df, %i.dd
  %.not.i7.i.i.i = icmp eq i64 %i.dg, 0
  br i1 %.not.i7.i.i.i, label %._ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.loopexit14_crit_edge, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i, !llvm.loop !5520

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i: ; preds = %bb.k
  %exitcond.not.not.i.not = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.not.i.not, label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.loopexit14_crit_edge, label %bb.k, !llvm.loop !5520

._ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.loopexit14_crit_edge: ; preds = %bb.k, %bb.j
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit, !llvm.loop !5520

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.loopexit14_crit_edge: ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.i
  br label %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit, !llvm.loop !5520

_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit: ; preds = %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.preheader.i, %._ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.loopexit14_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.loopexit14_crit_edge, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.preheader.i, %.lr.ph.split.split.split.i, %.lr.ph.split.split.split.us.i, %.lr.ph.split.split.us.i, %.lr.ph.i, %bb.i, %bb.h, %bb.f, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.dh = phi i1 [ true, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit ], [ false, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit.thread ], [ true, %bb.h ], [ true, %bb.f ], [ false, %bb.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.us18.preheader.i ], [ false, %.lr.ph.i ], [ %.not.i6.i.i.us.i, %.lr.ph.split.split.split.us.i ], [ true, %.lr.ph.split.split.split.i ], [ true, %.lr.ph.split.split.us.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.preheader.i ], [ false, %_ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEi.exit.thread.i._ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.loopexit14_crit_edge ], [ true, %._ZNK8facebook5velox4exec12VectorReaderINS0_7VarcharEE12containsNullEii.exit.loopexit14_crit_edge ]
  ret i1 %i.dh
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNK8facebook5velox17SelectivityVector15applyToSelectedIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS3_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17ArrayJoinFunctionINS3_10VectorExecENS0_10CustomTypeINS0_5JsonTELb0EEEEESB_NS0_7VarcharENS0_15ConstantCheckerIJNS0_5ArrayISE_EESG_EEEJSJ_SG_EEEE8applyUdfIZNKSM_7iterateIJNS3_12VectorReaderISJ_EENS3_24ConstantFlatVectorReaderISG_EEEEEvRNSM_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSU_SY_EUlSY_E_ZNKSN_IS13_EEvSU_SY_EUlSY_E0_EEvRKS1_SY_S10_EUlSY_E_EEvSY_(ptr noundef nonnull align 8 dereferenceable(38) %0, ptr noundef byval(%class.anon.6263) align 8 %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::optional.166", align 8 ; 7 uses
  %3 = alloca %"struct.facebook::velox::StringView", align 8 ; 5 uses
  %4 = alloca %"class.facebook::velox::exec::ArrayView.6244", align 8 ; 5 uses
  %5 = alloca %"class.facebook::velox::Status", align 8 ; 8 uses
  %6 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %7 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1266, !range !796, !noundef !797
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, label %bb.b

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i:     ; preds = %bb.a
  %.0.in.pre.i = load i8, ptr %i.a, align 4, !tbaa !88, !range !796
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1536
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1538 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !1539
  %i.l = icmp eq i32 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !1234   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.i, 0
  br i1 %.not.i.i, label %bb.e, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

bb.e:                                             ; preds = %bb.d
  %i.n = and i32 %i.i, 2147483584                 ; 3 uses
  %i.o = zext nneg i32 %i.n to i64
  %.not37.i.i.not.i76.not = icmp eq i32 %i.n, 0
  br i1 %.not37.i.i.not.i76.not, label %.critedge.i.i.i, label %.lr.ph78

bb.f:                                             ; preds = %.lr.ph78
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i77, 64 ; 2 uses
  %.not37.i.i.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.o
  br i1 %.not37.i.i.not.i, label %.lr.ph78, label %.critedge.i.i.i, !llvm.loop !1540

.lr.ph78:                                         ; preds = %bb.e, %bb.f
  %indvars.iv.i77 = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.p = lshr exact i64 %indvars.iv.i77, 3
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !855
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, !llvm.loop !1540

.critedge.i.i.i:                                  ; preds = %bb.f, %bb.e
  %.not38.i.i.i = icmp eq i32 %i.i, %i.n
  br i1 %.not38.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i, label %bb.g

bb.g:                                             ; preds = %.critedge.i.i.i
  %i.t = lshr i32 %i.i, 6
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %notmask.i40.i.i.i = shl nsw i64 -1, %i.v
  %i.w = zext nneg i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !855
  %.demorgan.i = or i64 %i.y, %notmask.i40.i.i.i
  %i.z = icmp eq i64 %.demorgan.i, -1
  %i.aa = zext i1 %i.z to i16
  %i.ab = or disjoint i16 %i.aa, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i:   ; preds = %.lr.ph78, %bb.g, %.critedge.i.i.i, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.insert.ext.i = phi i16 [ 256, %bb.c ], [ 256, %bb.b ], [ 257, %bb.d ], [ 257, %.critedge.i.i.i ], [ %i.ab, %bb.g ], [ 256, %.lr.ph78 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i, ptr %i.a, align 4
  %i.ac = trunc i16 %.sroa.0.0.insert.ext.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit: ; preds = %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i
  %.0.in.i = phi i8 [ %.0.in.pre.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i ], [ %i.ac, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i ]
  %.0.i = trunc nuw i8 %.0.in.i to i1
  br i1 %.0.i, label %bb.h, label %bb.ai

bb.h:                                             ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1538 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1536 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, %i.ae
  br i1 %i.ah, label %.lr.ph, label %.loopexit40

.lr.ph:                                           ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ao = sext i32 %i.ag to i64
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !19316 ; 2 uses
  %.pre59 = load ptr, ptr %1, align 8, !tbaa !19318 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre59, i64 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17ArrayJoinFunctionINS1_10VectorExecENS0_10CustomTypeINS0_5JsonTELb0EEEEES9_NS0_7VarcharENS0_15ConstantCheckerIJNS0_5ArrayISC_EESE_EEEJSH_SE_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISH_EENS1_24ConstantFlatVectorReaderISE_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSL_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_ENKUlSW_E_clIiEEDaSW_.exit
  %indvars.iv = phi i64 [ %i.ao, %.lr.ph ], [ %indvars.iv.next, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS1_21SimpleFunctionAdapterINS0_4core9UDFHolderINS0_9functions17ArrayJoinFunctionINS1_10VectorExecENS0_10CustomTypeINS0_5JsonTELb0EEEEES9_NS0_7VarcharENS0_15ConstantCheckerIJNS0_5ArrayISC_EESE_EEEJSH_SE_EEEE8applyUdfIZNKSK_7iterateIJNS1_12VectorReaderISH_EENS1_24ConstantFlatVectorReaderISE_EEEEEvRNSK_12ApplyContextEDpRT_EUlRT_RT0_T1_E1_EEvSS_SW_EUlSW_E_ZNKSL_IS11_EEvSS_SW_EUlSW_E0_EEvRKNS0_17SelectivityVectorESW_SY_ENKUlSW_E_clIiEEDaSW_.exit ] ; 4 uses
  %i.aq = load ptr, ptr %.pre59, align 8, !tbaa !19319, !nonnull !797, !align !916
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.as = trunc nsw i64 %indvars.iv to i32        ; 4 uses
end_hunk_8
