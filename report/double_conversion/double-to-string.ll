Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/double_conversion/original/double-to-string?download=true
inline.NumInlined: 75
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
@.str.1 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(48) ptr @_ZN17double_conversion23DoubleToStringConverter19EcmaScriptConverterEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN17double_conversion23DoubleToStringConverter19EcmaScriptConverterEvE9converter acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN17double_conversion23DoubleToStringConverter19EcmaScriptConverterEvE9converter) #12
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 9, ptr @_ZZN17double_conversion23DoubleToStringConverter19EcmaScriptConverterEvE9converter, align 8, !tbaa !11
  store ptr @.str, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17double_conversion23DoubleToStringConverter19EcmaScriptConverterEvE9converter, i64 8), align 8, !tbaa !12
  store ptr @.str.1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17double_conversion23DoubleToStringConverter19EcmaScriptConverterEvE9converter, i64 16), align 8, !tbaa !24
  store i8 101, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17double_conversion23DoubleToStringConverter19EcmaScriptConverterEvE9converter, i64 24), align 8, !tbaa !13
  store <4 x i32> <i32 -6, i32 21, i32 6, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17double_conversion23DoubleToStringConverter19EcmaScriptConverterEvE9converter, i64 28), align 4, !tbaa !14
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17double_conversion23DoubleToStringConverter19EcmaScriptConverterEvE9converter, i64 44), align 4, !tbaa !25
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN17double_conversion23DoubleToStringConverter19EcmaScriptConverterEvE9converter) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN17double_conversion23DoubleToStringConverter19EcmaScriptConverterEvE9converter
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS_13StringBuilderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, double noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %1)
  %i.b = fcmp oeq double %i.a, +inf
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = fcmp olt double %1, 0.000000e+00
  br i1 %i.f, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !17
  %i.j = load ptr, ptr %2, align 8, !tbaa !18
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k
  store i8 45, ptr %i.l, align 1, !tbaa !19
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !12
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.m = fcmp ord double %1, 0.000000e+00
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  %or.cond = select i1 %i.m, i1 true, i1 %i.p
  br i1 %or.cond, label %bb.f, label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.c, %bb.d
  %.sink23 = phi ptr [ %i.d, %bb.c ], [ %.pre, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink23) #13 ; 2 uses
  %i.r = trunc i64 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !17
  %i.u = load ptr, ptr %2, align 8, !tbaa !18
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  %sext.i8 = shl i64 %i.q, 32
  %i.x = ashr exact i64 %sext.i8, 32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %.sink23, i64 %i.x, i1 false)
  %i.y = load i32, ptr %i.s, align 8, !tbaa !17
  %i.z = add nsw i32 %i.y, %i.r
  store i32 %i.z, ptr %i.s, align 8, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e, %bb.b
  %.0 = phi i1 [ true, %.sink.split ], [ false, %bb.e ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK17double_conversion23DoubleToStringConverter31CreateExponentialRepresentationEPKciiPNS_13StringBuilderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 9 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 19 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8, !tbaa !17
  %i.f = load ptr, ptr %4, align 8, !tbaa !18
  %i.g = sext i32 %i.d to i64
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  store i8 %i.b, ptr %i.h, align 1, !tbaa !19
  %i.i = icmp eq i32 %2, 1
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %0, align 8, !tbaa !11
  %i.k = and i32 %i.j, 32
  %.not = icmp eq i32 %i.k, 0
  %.pre48 = load i32, ptr %i.c, align 8, !tbaa !17 ; 3 uses
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %.pre48, 1
  store i32 %i.l, ptr %i.c, align 8, !tbaa !17
  %i.m = load ptr, ptr %4, align 8, !tbaa !18
  %i.n = sext i32 %.pre48 to i64
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 %i.n
  store i8 46, ptr %i.o, align 1, !tbaa !19
  %i.p = load i32, ptr %0, align 8, !tbaa !11
  %i.q = and i32 %i.p, 64
  %.not31 = icmp eq i32 %i.q, 0
  %.pre49 = load i32, ptr %i.c, align 8, !tbaa !17 ; 3 uses
  br i1 %.not31, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = add nsw i32 %.pre49, 1
  store i32 %i.r, ptr %i.c, align 8, !tbaa !17
  %i.s = load ptr, ptr %4, align 8, !tbaa !18
  %i.t = sext i32 %.pre49 to i64
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %i.t
  store i8 48, ptr %i.u, align 1, !tbaa !19
  %.pre = load i32, ptr %i.c, align 8, !tbaa !17
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.v = load i32, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.c, align 8, !tbaa !17
  %i.x = load ptr, ptr %4, align 8, !tbaa !18
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 %i.y
  store i8 46, ptr %i.z, align 1, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ab = add nsw i32 %2, -1                      ; 2 uses
  %i.ac = load i32, ptr %i.c, align 8, !tbaa !17
  %i.ad = load ptr, ptr %4, align 8, !tbaa !18
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 %i.ae
  %i.ag = sext i32 %i.ab to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %i.aa, i64 %i.ag, i1 false)
  %i.ah = load i32, ptr %i.c, align 8, !tbaa !17
  %i.ai = add nsw i32 %i.ah, %i.ab
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.e
  %i.aj = phi i32 [ %.pre48, %bb.b ], [ %.pre, %bb.d ], [ %.pre49, %bb.c ], [ %i.ai, %bb.e ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !13
  %i.am = add nsw i32 %i.aj, 1
  store i32 %i.am, ptr %i.c, align 8, !tbaa !17
  %i.an = load ptr, ptr %4, align 8, !tbaa !18
  %i.ao = sext i32 %i.aj to i64
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao
  store i8 %i.al, ptr %i.ap, align 1, !tbaa !19
  %i.aq = icmp slt i32 %3, 0
  br i1 %i.aq, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  %i.ar = load i32, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %i.as = add nsw i32 %i.ar, 1
  store i32 %i.as, ptr %i.c, align 8, !tbaa !17
  %i.at = load ptr, ptr %4, align 8, !tbaa !18
  %i.au = sext i32 %i.ar to i64
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  store i8 45, ptr %i.av, align 1, !tbaa !19
  %i.aw = sub nsw i32 0, %3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 0, ptr %i.ax, align 1, !tbaa !19
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i, %.thread
  %.12634.ph = phi i32 [ %i.aw, %.thread ], [ %3, %bb.i ]
  br label %.lr.ph

bb.g:                                             ; preds = %bb.f
  %i.ay = load i32, ptr %0, align 8, !tbaa !11
  %5 = trunc i32 %i.ay to i1
  br i1 %5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.az = load i32, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.c, align 8, !tbaa !17
  %i.bb = load ptr, ptr %4, align 8, !tbaa !18
  %i.bc = sext i32 %i.az to i64
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc
  store i8 43, ptr %i.bd, align 1, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 0, ptr %i.be, align 1, !tbaa !19
  %i.bf = icmp eq i32 %3, 0
  br i1 %i.bf, label %bb.j, label %.lr.ph.preheader

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 48, ptr %i.bg, align 1, !tbaa !19
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 5, %.lr.ph.preheader ]
  %.12634 = phi i32 [ %i.bl, %.lr.ph ], [ %.12634.ph, %.lr.ph.preheader ] ; 3 uses
  %i.bh = urem i32 %.12634, 10
  %i.bi = trunc nuw nsw i32 %i.bh to i8
  %i.bj = or disjoint i8 %i.bi, 48
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.bk = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !19
  %i.bl = udiv i32 %.12634, 10
  %.not40 = icmp ult i32 %.12634, 10
  br i1 %.not40, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !26

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.bm = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.j
  %.1 = phi i32 [ 4, %bb.j ], [ %i.bm, %.loopexit.loopexit ] ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !14
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.bo, i32 5) ; 3 uses
  %i.bp = sub nsw i32 5, %.1                      ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %.sroa.speculated
  br i1 %i.bq, label %.lr.ph37.preheader, label %._crit_edge

.lr.ph37.preheader:                               ; preds = %.loopexit
  %i.br = add i32 %.1, -1
  %i.bs = sext i32 %i.br to i64
  %i.bt = add i32 %.1, %.sroa.speculated
  %i.bu = add i32 %i.bt, -6
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %i.bw = sub nsw i64 %i.bs, %i.bv
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.bw
  %i.bx = add nuw nsw i64 %i.bv, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 48, i64 %i.bx, i1 false), !tbaa !19
  %i.by = sext i32 %.1 to i64
  %i.bz = sext i32 %.sroa.speculated to i64
  br label %.lr.ph37

.lr.ph37:                                         ; preds = %.lr.ph37.preheader, %.lr.ph37
  %indvars.iv45 = phi i64 [ %i.by, %.lr.ph37.preheader ], [ %indvars.iv.next46, %.lr.ph37 ] ; 2 uses
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1 ; 2 uses
  %i.ca = sub nsw i64 6, %indvars.iv45            ; 2 uses
  %i.cb = icmp slt i64 %i.ca, %i.bz
  br i1 %i.cb, label %.lr.ph37, label %._crit_edge.loopexit, !llvm.loop !27

._crit_edge.loopexit:                             ; preds = %.lr.ph37
  %i.cc = trunc nsw i64 %i.ca to i32
  %i.cd = trunc nsw i64 %indvars.iv.next46 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit
  %.2.lcssa = phi i32 [ %.1, %.loopexit ], [ %i.cd, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %i.bp, %.loopexit ], [ %i.cc, %._crit_edge.loopexit ] ; 2 uses
  %i.ce = sext i32 %.2.lcssa to i64
  %i.cf = getelementptr inbounds i8, ptr %i.a, i64 %i.ce
  %i.cg = load i32, ptr %i.c, align 8, !tbaa !17
  %i.ch = load ptr, ptr %4, align 8, !tbaa !18
  %i.ci = sext i32 %i.cg to i64
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 %i.ci
  %i.ck = sext i32 %.lcssa to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cj, ptr nonnull align 1 %i.cf, i64 %i.ck, i1 false)
  %i.cl = load i32, ptr %i.c, align 8, !tbaa !17
  %i.cm = add nsw i32 %i.cl, %.lcssa
  store i32 %i.cm, ptr %i.c, align 8, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZNK17double_conversion23DoubleToStringConverter27CreateDecimalRepresentationEPKciiiPNS_13StringBuilderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp slt i32 %3, 1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 19 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8, !tbaa !17
  %i.e = load ptr, ptr %5, align 8, !tbaa !18
  %i.f = sext i32 %i.c to i64
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.f
  store i8 48, ptr %i.g, align 1, !tbaa !19
  %i.h = icmp sgt i32 %4, 0
  br i1 %i.h, label %bb.c, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.b, align 8, !tbaa !17
  %i.k = load ptr, ptr %5, align 8, !tbaa !18
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l
  store i8 46, ptr %i.m, align 1, !tbaa !19
  %i.n = sub i32 0, %3                            ; 3 uses
  switch i32 %3, label %.lr.ph.i.preheader.new [
    i32 0, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit
    i32 -1, label %.lr.ph.i.epil.preheader
  ]

.lr.ph.i.preheader.new:                           ; preds = %bb.c
  %unroll_iter92 = and i32 %i.n, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %niter93 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter93.next.1, %.lr.ph.i ]
  %i.o = load i32, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.b, align 8, !tbaa !17
  %i.q = load ptr, ptr %5, align 8, !tbaa !18
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  store i8 48, ptr %i.s, align 1, !tbaa !19
  %i.t = load i32, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.b, align 8, !tbaa !17
  %i.v = load ptr, ptr %5, align 8, !tbaa !18
  %i.w = sext i32 %i.t to i64
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %i.w
  store i8 48, ptr %i.x, align 1, !tbaa !19
  %niter93.next.1 = add i32 %niter93, 2           ; 2 uses
  %niter93.ncmp.1 = icmp eq i32 %niter93.next.1, %unroll_iter92
  br i1 %niter93.ncmp.1, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !28

_ZN17double_conversion13StringBuilder10AddPaddingEci.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %6 = trunc i32 %i.n to i1
  br i1 %6, label %.lr.ph.i.epil.preheader, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit

.lr.ph.i.epil.preheader:                          ; preds = %bb.c, %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit.loopexit.unr-lcssa
  %lcmp.mod91 = trunc i32 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod91)
  %i.y = load i32, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.b, align 8, !tbaa !17
  %i.aa = load ptr, ptr %5, align 8, !tbaa !18
  %i.ab = sext i32 %i.y to i64
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %i.ab
  store i8 48, ptr %i.ac, align 1, !tbaa !19
  br label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit

_ZN17double_conversion13StringBuilder10AddPaddingEci.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit.loopexit.unr-lcssa, %bb.c
  %i.ad = load i32, ptr %i.b, align 8, !tbaa !17
  %i.ae = load ptr, ptr %5, align 8, !tbaa !18
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af
  %i.ah = sext i32 %2 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr align 1 %1, i64 %i.ah, i1 false)
  %i.ai = load i32, ptr %i.b, align 8, !tbaa !17
  %i.aj = add nsw i32 %i.ai, %2
  store i32 %i.aj, ptr %i.b, align 8, !tbaa !17
  %i.ak = sub i32 %3, %2
  %i.al = add i32 %i.ak, %4                       ; 4 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.i49.preheader, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread

.lr.ph.i49.preheader:                             ; preds = %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit
  %i.an = add i32 %4, %3
  %.neg100 = add i32 %2, 1
  %i.ao = icmp eq i32 %i.an, %.neg100
  br i1 %i.ao, label %.lr.ph.i49.epil.preheader, label %.lr.ph.i49.preheader.new

.lr.ph.i49.preheader.new:                         ; preds = %.lr.ph.i49.preheader
  %unroll_iter97 = and i32 %i.al, 2147483646
  br label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49, %.lr.ph.i49.preheader.new
  %niter98 = phi i32 [ 0, %.lr.ph.i49.preheader.new ], [ %niter98.next.1, %.lr.ph.i49 ]
  %i.ap = load i32, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.b, align 8, !tbaa !17
  %i.ar = load ptr, ptr %5, align 8, !tbaa !18
  %i.as = sext i32 %i.ap to i64
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.as
  store i8 48, ptr %i.at, align 1, !tbaa !19
  %i.au = load i32, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.b, align 8, !tbaa !17
  %i.aw = load ptr, ptr %5, align 8, !tbaa !18
  %i.ax = sext i32 %i.au to i64
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 %i.ax
  store i8 48, ptr %i.ay, align 1, !tbaa !19
  %niter98.next.1 = add i32 %niter98, 2           ; 2 uses
  %niter98.ncmp.1 = icmp eq i32 %niter98.next.1, %unroll_iter97
  br i1 %niter98.ncmp.1, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit.unr-lcssa, label %.lr.ph.i49, !llvm.loop !28

bb.d:                                             ; preds = %bb.a
  %.not = icmp slt i32 %3, %2
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 28 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !17
  %i.bb = load ptr, ptr %5, align 8, !tbaa !18
  %i.bc = sext i32 %i.ba to i64
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.bc ; 2 uses
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.be = sext i32 %2 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr align 1 %1, i64 %i.be, i1 false)
  %i.bf = load i32, ptr %i.az, align 8, !tbaa !17
  %i.bg = add nsw i32 %i.bf, %2
  store i32 %i.bg, ptr %i.az, align 8, !tbaa !17
  %i.bh = sub nsw i32 %3, %2                      ; 4 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i53.preheader, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56

.lr.ph.i53.preheader:                             ; preds = %bb.e
  %.neg = add i32 %2, 1
  %i.bj = icmp eq i32 %3, %.neg
  br i1 %i.bj, label %.lr.ph.i53.epil.preheader, label %.lr.ph.i53.preheader.new

.lr.ph.i53.preheader.new:                         ; preds = %.lr.ph.i53.preheader
  %unroll_iter = and i32 %i.bh, 2147483646
  br label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.lr.ph.i53, %.lr.ph.i53.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i53.preheader.new ], [ %niter.next.1, %.lr.ph.i53 ]
  %i.bk = load i32, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.az, align 8, !tbaa !17
  %i.bm = load ptr, ptr %5, align 8, !tbaa !18
  %i.bn = sext i32 %i.bk to i64
  %i.bo = getelementptr inbounds i8, ptr %i.bm, i64 %i.bn
  store i8 48, ptr %i.bo, align 1, !tbaa !19
  %i.bp = load i32, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.az, align 8, !tbaa !17
  %i.br = load ptr, ptr %5, align 8, !tbaa !18
  %i.bs = sext i32 %i.bp to i64
  %i.bt = getelementptr inbounds i8, ptr %i.br, i64 %i.bs
  store i8 48, ptr %i.bt, align 1, !tbaa !19
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56.loopexit.unr-lcssa, label %.lr.ph.i53, !llvm.loop !28

_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56.loopexit.unr-lcssa: ; preds = %.lr.ph.i53
  %7 = trunc i32 %i.bh to i1
  br i1 %7, label %.lr.ph.i53.epil.preheader, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56

.lr.ph.i53.epil.preheader:                        ; preds = %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56.loopexit.unr-lcssa, %.lr.ph.i53.preheader
  %lcmp.mod78 = trunc i32 %i.bh to i1
  tail call void @llvm.assume(i1 %lcmp.mod78)
  %i.bu = load i32, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.az, align 8, !tbaa !17
  %i.bw = load ptr, ptr %5, align 8, !tbaa !18
  %i.bx = sext i32 %i.bu to i64
  %i.by = getelementptr inbounds i8, ptr %i.bw, i64 %i.bx
  store i8 48, ptr %i.by, align 1, !tbaa !19
  br label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56

_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56: ; preds = %.lr.ph.i53.epil.preheader, %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56.loopexit.unr-lcssa, %bb.e
  %i.bz = icmp sgt i32 %4, 0
  br i1 %i.bz, label %.lr.ph.i57, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52

.lr.ph.i57:                                       ; preds = %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56
  %i.ca = load i32, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.az, align 8, !tbaa !17
  %i.cc = load ptr, ptr %5, align 8, !tbaa !18
  %i.cd = sext i32 %i.ca to i64
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 %i.cd
  store i8 46, ptr %i.ce, align 1, !tbaa !19
  %i.cf = icmp eq i32 %4, 1
  br i1 %i.cf, label %.epil.preheader, label %.lr.ph.i57.new

.lr.ph.i57.new:                                   ; preds = %.lr.ph.i57
  %unroll_iter82 = and i32 %4, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i57.new
  %niter83 = phi i32 [ 0, %.lr.ph.i57.new ], [ %niter83.next.1, %bb.f ]
  %i.cg = load i32, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.az, align 8, !tbaa !17
  %i.ci = load ptr, ptr %5, align 8, !tbaa !18
  %i.cj = sext i32 %i.cg to i64
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 %i.cj
  store i8 48, ptr %i.ck, align 1, !tbaa !19
  %i.cl = load i32, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.az, align 8, !tbaa !17
  %i.cn = load ptr, ptr %5, align 8, !tbaa !18
  %i.co = sext i32 %i.cl to i64
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %i.co
  store i8 48, ptr %i.cp, align 1, !tbaa !19
  %niter83.next.1 = add nuw nsw i32 %niter83, 2   ; 2 uses
  %niter83.ncmp.1 = icmp eq i32 %niter83.next.1, %unroll_iter82
  br i1 %niter83.ncmp.1, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit77.unr-lcssa, label %bb.f, !llvm.loop !28

bb.g:                                             ; preds = %bb.d
  %i.cq = zext nneg i32 %3 to i64                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr align 1 %1, i64 %i.cq, i1 false)
  %i.cr = load i32, ptr %i.az, align 8, !tbaa !17
  %i.cs = add nsw i32 %i.cr, %3                   ; 2 uses
  %i.ct = add nsw i32 %i.cs, 1
  store i32 %i.ct, ptr %i.az, align 8, !tbaa !17
  %i.cu = load ptr, ptr %5, align 8, !tbaa !18
  %i.cv = sext i32 %i.cs to i64
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  store i8 46, ptr %i.cw, align 1, !tbaa !19
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %i.cq
  %i.cy = sub nuw nsw i32 %2, %3                  ; 3 uses
  %i.cz = load i32, ptr %i.az, align 8, !tbaa !17
  %i.da = load ptr, ptr %5, align 8, !tbaa !18
  %i.db = sext i32 %i.cz to i64
  %i.dc = getelementptr inbounds i8, ptr %i.da, i64 %i.db
  %i.dd = zext nneg i32 %i.cy to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dc, ptr nonnull align 1 %i.cx, i64 %i.dd, i1 false)
  %i.de = load i32, ptr %i.az, align 8, !tbaa !17
  %i.df = add nsw i32 %i.de, %i.cy
  store i32 %i.df, ptr %i.az, align 8, !tbaa !17
  %i.dg = sub nsw i32 %4, %i.cy                   ; 4 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph.i61.preheader, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52

.lr.ph.i61.preheader:                             ; preds = %bb.g
  %i.di = add i32 %4, %3
  %.neg99 = add i32 %2, 1
  %i.dj = icmp eq i32 %i.di, %.neg99
  br i1 %i.dj, label %.lr.ph.i61.epil.preheader, label %.lr.ph.i61.preheader.new

.lr.ph.i61.preheader.new:                         ; preds = %.lr.ph.i61.preheader
  %unroll_iter87 = and i32 %i.dg, 2147483646
  br label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.lr.ph.i61, %.lr.ph.i61.preheader.new
  %niter88 = phi i32 [ 0, %.lr.ph.i61.preheader.new ], [ %niter88.next.1, %.lr.ph.i61 ]
  %i.dk = load i32, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %i.az, align 8, !tbaa !17
  %i.dm = load ptr, ptr %5, align 8, !tbaa !18
  %i.dn = sext i32 %i.dk to i64
  %i.do = getelementptr inbounds i8, ptr %i.dm, i64 %i.dn
  store i8 48, ptr %i.do, align 1, !tbaa !19
  %i.dp = load i32, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.dq = add nsw i32 %i.dp, 1
  store i32 %i.dq, ptr %i.az, align 8, !tbaa !17
  %i.dr = load ptr, ptr %5, align 8, !tbaa !18
  %i.ds = sext i32 %i.dp to i64
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 %i.ds
  store i8 48, ptr %i.dt, align 1, !tbaa !19
  %niter88.next.1 = add i32 %niter88, 2           ; 2 uses
  %niter88.ncmp.1 = icmp eq i32 %niter88.next.1, %unroll_iter87
  br i1 %niter88.ncmp.1, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.loopexit.unr-lcssa, label %.lr.ph.i61, !llvm.loop !28

_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.loopexit.unr-lcssa: ; preds = %.lr.ph.i61
  %8 = trunc i32 %i.dg to i1
  br i1 %8, label %.lr.ph.i61.epil.preheader, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52

.lr.ph.i61.epil.preheader:                        ; preds = %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.loopexit.unr-lcssa, %.lr.ph.i61.preheader
  %lcmp.mod86 = trunc i32 %i.dg to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.du = load i32, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.dv = add nsw i32 %i.du, 1
  store i32 %i.dv, ptr %i.az, align 8, !tbaa !17
  %i.dw = load ptr, ptr %5, align 8, !tbaa !18
  %i.dx = sext i32 %i.du to i64
  %i.dy = getelementptr inbounds i8, ptr %i.dw, i64 %i.dx
  store i8 48, ptr %i.dy, align 1, !tbaa !19
  br label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52

_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52: ; preds = %.lr.ph.i61.epil.preheader, %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.loopexit.unr-lcssa, %bb.g, %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56, %bb.b
  %i.dz = icmp eq i32 %4, 0
  br i1 %i.dz, label %bb.h, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread

bb.h:                                             ; preds = %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52
  %i.ea = load i32, ptr %0, align 8, !tbaa !11    ; 2 uses
  %i.eb = and i32 %i.ea, 2
  %.not47 = icmp eq i32 %i.eb, 0
  br i1 %.not47, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !17 ; 2 uses
  %i.ee = add nsw i32 %i.ed, 1
  store i32 %i.ee, ptr %i.ec, align 8, !tbaa !17
  %i.ef = load ptr, ptr %5, align 8, !tbaa !18
  %i.eg = sext i32 %i.ed to i64
  %i.eh = getelementptr inbounds i8, ptr %i.ef, i64 %i.eg
  store i8 46, ptr %i.eh, align 1, !tbaa !19
  %.pre = load i32, ptr %0, align 8, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ei = phi i32 [ %.pre, %bb.i ], [ %i.ea, %bb.h ]
  %i.ej = and i32 %i.ei, 4
  %.not48 = icmp eq i32 %i.ej, 0
  br i1 %.not48, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !17 ; 2 uses
  %i.em = add nsw i32 %i.el, 1
  store i32 %i.em, ptr %i.ek, align 8, !tbaa !17
  %i.en = load ptr, ptr %5, align 8, !tbaa !18
  %i.eo = sext i32 %i.el to i64
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 %i.eo
  store i8 48, ptr %i.ep, align 1, !tbaa !19
  br label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread

_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit.unr-lcssa: ; preds = %.lr.ph.i49
  %9 = trunc i32 %i.al to i1
  br i1 %9, label %.lr.ph.i49.epil.preheader, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread

.lr.ph.i49.epil.preheader:                        ; preds = %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit.unr-lcssa, %.lr.ph.i49.preheader
  %lcmp.mod96 = trunc i32 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod96)
  %i.eq = load i32, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.er = add nsw i32 %i.eq, 1
  store i32 %i.er, ptr %i.b, align 8, !tbaa !17
  %i.es = load ptr, ptr %5, align 8, !tbaa !18
  %i.et = sext i32 %i.eq to i64
  %i.eu = getelementptr inbounds i8, ptr %i.es, i64 %i.et
  store i8 48, ptr %i.eu, align 1, !tbaa !19
  br label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread

_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit77.unr-lcssa: ; preds = %bb.f
  %10 = trunc i32 %4 to i1
  br i1 %10, label %.epil.preheader, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread

.epil.preheader:                                  ; preds = %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit77.unr-lcssa, %.lr.ph.i57
  %lcmp.mod81 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %i.ev = load i32, ptr %i.az, align 8, !tbaa !17 ; 2 uses
  %i.ew = add nsw i32 %i.ev, 1
  store i32 %i.ew, ptr %i.az, align 8, !tbaa !17
  %i.ex = load ptr, ptr %5, align 8, !tbaa !18
  %i.ey = sext i32 %i.ev to i64
  %i.ez = getelementptr inbounds i8, ptr %i.ex, i64 %i.ey
  store i8 48, ptr %i.ez, align 1, !tbaa !19
  br label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread

_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread: ; preds = %.epil.preheader, %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit77.unr-lcssa, %.lr.ph.i49.epil.preheader, %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit.unr-lcssa, %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit, %bb.j, %bb.k, %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK17double_conversion23DoubleToStringConverter20ToShortestIeeeNumberEdPNS_13StringBuilderENS0_8DtoaModeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, double noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca [18 x i8], align 16               ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.f = fcmp ueq double %i.e, +inf
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = fcmp oeq double %i.e, +inf
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZNK17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS_13StringBuilderE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = fcmp olt double %1, 0.000000e+00
  br i1 %i.k, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !17   ; 2 uses
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 8, !tbaa !17
  %i.o = load ptr, ptr %2, align 8, !tbaa !18
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p
  store i8 45, ptr %i.q, align 1, !tbaa !19
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !12
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZNK17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS_13StringBuilderE.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.e, %bb.d
  %.sink23.i = phi ptr [ %i.i, %bb.d ], [ %.pre.i, %bb.e ], [ %i.s, %bb.f ] ; 2 uses
  %i.u = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink23.i) #13 ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !17
  %i.y = load ptr, ptr %2, align 8, !tbaa !18
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.z
  %sext.i8.i = shl i64 %i.u, 32
  %i.ab = ashr exact i64 %sext.i8.i, 32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr nonnull align 1 %.sink23.i, i64 %i.ab, i1 false)
  %i.ac = load i32, ptr %i.w, align 8, !tbaa !17
  %i.ad = add nsw i32 %i.ac, %i.v
  store i32 %i.ad, ptr %i.w, align 8, !tbaa !17
  br label %_ZNK17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS_13StringBuilderE.exit

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @_ZN17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS0_8DtoaModeEiPciPbPiS4_(double noundef %1, i32 noundef %3, i32 noundef 0, ptr noundef nonnull %i.c, i32 noundef 18, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.a)
  %i.ae = load i8, ptr %i.b, align 1, !tbaa !22, !range !29, !noundef !30
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = load i32, ptr %0, align 8, !tbaa !11
  %i.ah = and i32 %i.ag, 8
  %i.ai = icmp ne i32 %i.ah, 0
  %i.aj = fcmp oeq double %1, 0.000000e+00
  %or.cond = select i1 %i.aj, i1 %i.ai, i1 false
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !17 ; 2 uses
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !17
  %i.an = load ptr, ptr %2, align 8, !tbaa !18
  %i.ao = sext i32 %i.al to i64
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao
  store i8 45, ptr %i.ap, align 1, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.aq = load i32, ptr %i.a, align 4, !tbaa !14  ; 5 uses
  %i.ar = add nsw i32 %i.aq, -1
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.at = load i32, ptr %i.as, align 4, !tbaa !31
  %.not.not = icmp slt i32 %i.at, %i.aq
  br i1 %.not.not, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !32
  %.not = icmp sgt i32 %i.aq, %i.av
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = load i32, ptr %i.d, align 4, !tbaa !14  ; 2 uses
  %i.ax = sub nsw i32 %i.aw, %i.aq
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.ax, i32 0)
  call void @_ZNK17double_conversion23DoubleToStringConverter27CreateDecimalRepresentationEPKciiiPNS_13StringBuilderE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.c, i32 noundef %i.aw, i32 noundef %i.aq, i32 noundef %.sroa.speculated, ptr noundef %2)
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.ay = load i32, ptr %i.d, align 4, !tbaa !14
  call void @_ZNK17double_conversion23DoubleToStringConverter31CreateExponentialRepresentationEPKciiPNS_13StringBuilderE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.c, i32 noundef %i.ay, i32 noundef %i.ar, ptr noundef %2)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZNK17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS_13StringBuilderE.exit

_ZNK17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS_13StringBuilderE.exit: ; preds = %.sink.split.i, %bb.f, %bb.c, %bb.n
  %.0 = phi i1 [ true, %bb.n ], [ true, %.sink.split.i ], [ false, %bb.f ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS0_8DtoaModeEiPciPbPiS4_(double noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = bitcast double %0 to i64
  %.lobit = lshr i64 %i.a, 63
  %.sink = trunc nuw nsw i64 %.lobit to i8
  %.0 = tail call double @llvm.fabs.f64(double %0) ; 5 uses
  store i8 %.sink, ptr %5, align 1, !tbaa !22
  %i.b = icmp eq i32 %1, 3
  %i.c = icmp eq i32 %2, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1, !tbaa !19
  store i32 0, ptr %6, align 4, !tbaa !14
  store i32 0, ptr %7, align 4, !tbaa !14
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = fcmp oeq double %0, 0.000000e+00
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 48, ptr %3, align 1, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %i.e, align 1, !tbaa !19
  store i32 1, ptr %6, align 4, !tbaa !14
  store i32 1, ptr %7, align 4, !tbaa !14
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  switch i32 %1, label %bb.f [
    i32 0, label %.split
    i32 1, label %bb.g
    i32 2, label %.split58
    i32 3, label %.split57
  ]

.split:                                           ; preds = %bb.e
  %i.f = tail call noundef zeroext i1 @_ZN17double_conversion8FastDtoaEdNS_12FastDtoaModeEiNS_6VectorIcEEPiS3_(double noundef %.0, i32 noundef 0, i32 noundef 0, ptr %3, i32 %4, ptr noundef %6, ptr noundef %7)
  br i1 %i.f, label %bb.h, label %_ZN17double_conversionL20DtoaToBignumDtoaModeENS_23DoubleToStringConverter8DtoaModeE.exit

.split58:                                         ; preds = %bb.e
  %i.g = tail call noundef zeroext i1 @_ZN17double_conversion13FastFixedDtoaEdiNS_6VectorIcEEPiS2_(double noundef %.0, i32 noundef %2, ptr %3, i32 %4, ptr noundef %6, ptr noundef %7)
  br i1 %i.g, label %bb.h, label %_ZN17double_conversionL20DtoaToBignumDtoaModeENS_23DoubleToStringConverter8DtoaModeE.exit

.split57:                                         ; preds = %bb.e
  %i.h = tail call noundef zeroext i1 @_ZN17double_conversion8FastDtoaEdNS_12FastDtoaModeEiNS_6VectorIcEEPiS3_(double noundef %.0, i32 noundef 2, i32 noundef %2, ptr %3, i32 %4, ptr noundef %6, ptr noundef %7)
  br i1 %i.h, label %bb.h, label %_ZN17double_conversionL20DtoaToBignumDtoaModeENS_23DoubleToStringConverter8DtoaModeE.exit

bb.f:                                             ; preds = %bb.e
  tail call void @abort() #14
  unreachable

end_hunk_0
