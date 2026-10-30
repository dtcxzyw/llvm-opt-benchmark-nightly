Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/double_conversion/original/double-to-string?download=true
inline.NumInlined: 75
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN17double_conversion23DoubleToStringConverter19EcmaScriptConverterEv:bb.a

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
  %i.az = and i32 %i.ay, 1
  %.not32 = icmp eq i32 %i.az, 0
  br i1 %.not32, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = load i32, ptr %i.c, align 8, !tbaa !17  ; 2 uses
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.c, align 8, !tbaa !17
  %i.bc = load ptr, ptr %4, align 8, !tbaa !18
  %i.bd = sext i32 %i.ba to i64
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.bd
  store i8 43, ptr %i.be, align 1, !tbaa !19
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 0, ptr %i.bf, align 1, !tbaa !19
  %i.bg = icmp eq i32 %3, 0
  br i1 %i.bg, label %bb.j, label %.lr.ph.preheader

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 48, ptr %i.bh, align 1, !tbaa !19
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 5, %.lr.ph.preheader ]
  %.12634 = phi i32 [ %i.bm, %.lr.ph ], [ %.12634.ph, %.lr.ph.preheader ] ; 3 uses
  %i.bi = urem i32 %.12634, 10
  %i.bj = trunc nuw nsw i32 %i.bi to i8
  %i.bk = or disjoint i8 %i.bj, 48
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.bl = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !19
  %i.bm = udiv i32 %.12634, 10
  %.not40 = icmp ult i32 %.12634, 10
  br i1 %.not40, label %.loopexit.loopexit, label %.lr.ph, !llvm.loop !26

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.bn = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.j
  %.1.a = phi i32 [ 4, %bb.j ], [ %i.bn, %.loopexit.loopexit ] ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !14
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.bp, i32 5) ; 3 uses
  %5 = sub nsw i32 5, %.1.a                       ; 2 uses
  %i.bq = icmp slt i32 %5, %.sroa.speculated
  br i1 %i.bq, label %.lr.ph37.preheader, label %._crit_edge

.lr.ph37.preheader:                               ; preds = %.loopexit
  %6 = add i32 %.1.a, -1
  %7 = sext i32 %6 to i64
  %i.br = add i32 %.1.a, %.sroa.speculated
  %i.bs = add i32 %i.br, -6
  %i.bt = zext i32 %i.bs to i64                   ; 2 uses
  %i.bu = sub nsw i64 %7, %i.bt
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.bu
  %i.bv = add nuw nsw i64 %i.bt, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 48, i64 %i.bv, i1 false), !tbaa !19
  %8 = sext i32 %.1.a to i64
  %i.bw = sext i32 %.sroa.speculated to i64
  br label %.lr.ph37

.lr.ph37:                                         ; preds = %.lr.ph37.preheader, %.lr.ph37
  %indvars.iv45 = phi i64 [ %8, %.lr.ph37.preheader ], [ %indvars.iv.next46, %.lr.ph37 ] ; 2 uses
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, -1 ; 2 uses
  %i.bx = sub nsw i64 6, %indvars.iv45            ; 2 uses
  %i.by = icmp slt i64 %i.bx, %i.bw
  br i1 %i.by, label %.lr.ph37, label %._crit_edge.loopexit, !llvm.loop !27

._crit_edge.loopexit:                             ; preds = %.lr.ph37
  %i.bz = trunc nsw i64 %i.bx to i32
  %i.ca = trunc nsw i64 %indvars.iv.next46 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit
  %.2.lcssa = phi i32 [ %.1.a, %.loopexit ], [ %i.ca, %._crit_edge.loopexit ]
  %.lcssa = phi i32 [ %5, %.loopexit ], [ %i.bz, %._crit_edge.loopexit ] ; 2 uses
  %i.cb = sext i32 %.2.lcssa to i64
  %i.cc = getelementptr inbounds i8, ptr %i.a, i64 %i.cb
  %i.cd = load i32, ptr %i.c, align 8, !tbaa !17
  %i.ce = load ptr, ptr %4, align 8, !tbaa !18
  %i.cf = sext i32 %i.cd to i64
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 %i.cf
  %i.ch = sext i32 %.lcssa to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr nonnull align 1 %i.cc, i64 %i.ch, i1 false)
  %i.ci = load i32, ptr %i.c, align 8, !tbaa !17
  %i.cj = add nsw i32 %i.ci, %.lcssa
  store i32 %i.cj, ptr %i.c, align 8, !tbaa !17
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
  %.not65 = icmp eq i32 %3, 0
  br i1 %.not65, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.c
  %xtraiter89 = and i32 %i.n, 1
  %i.o = icmp eq i32 %3, -1
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter92 = and i32 %i.n, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %niter93 = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter93.next.1, %.lr.ph.i ]
  %i.p = load i32, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.b, align 8, !tbaa !17
  %i.r = load ptr, ptr %5, align 8, !tbaa !18
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  store i8 48, ptr %i.t, align 1, !tbaa !19
  %i.u = load i32, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.b, align 8, !tbaa !17
  %i.w = load ptr, ptr %5, align 8, !tbaa !18
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  store i8 48, ptr %i.y, align 1, !tbaa !19
  %niter93.next.1 = add i32 %niter93, 2           ; 2 uses
  %niter93.ncmp.1 = icmp eq i32 %niter93.next.1, %unroll_iter92
  br i1 %niter93.ncmp.1, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !28

_ZN17double_conversion13StringBuilder10AddPaddingEci.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod90.not = icmp eq i32 %xtraiter89, 0
  br i1 %lcmp.mod90.not, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %lcmp.mod91 = trunc i32 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod91)
  %i.z = load i32, ptr %i.b, align 8, !tbaa !17   ; 2 uses
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.b, align 8, !tbaa !17
  %i.ab = load ptr, ptr %5, align 8, !tbaa !18
  %i.ac = sext i32 %i.z to i64
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac
  store i8 48, ptr %i.ad, align 1, !tbaa !19
  br label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit

_ZN17double_conversion13StringBuilder10AddPaddingEci.exit: ; preds = %.lr.ph.i.epil.preheader, %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit.loopexit.unr-lcssa, %bb.c
  %i.ae = load i32, ptr %i.b, align 8, !tbaa !17
  %i.af = load ptr, ptr %5, align 8, !tbaa !18
  %i.ag = sext i32 %i.ae to i64
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 %i.ag
  %i.ai = sext i32 %2 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr align 1 %1, i64 %i.ai, i1 false)
  %i.aj = load i32, ptr %i.b, align 8, !tbaa !17
  %i.ak = add nsw i32 %i.aj, %2
  store i32 %i.ak, ptr %i.b, align 8, !tbaa !17
  %i.al = sub i32 %3, %2
  %i.am = add i32 %i.al, %4                       ; 4 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.i49.preheader, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread

.lr.ph.i49.preheader:                             ; preds = %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit
  %i.ao = add i32 %4, %3
  %.neg100 = add i32 %2, 1
  %xtraiter94 = and i32 %i.am, 1
  %i.ap = icmp eq i32 %i.ao, %.neg100
  br i1 %i.ap, label %.lr.ph.i49.epil.preheader, label %.lr.ph.i49.preheader.new

.lr.ph.i49.preheader.new:                         ; preds = %.lr.ph.i49.preheader
  %unroll_iter97 = and i32 %i.am, 2147483646
  br label %.lr.ph.i49

.lr.ph.i49:                                       ; preds = %.lr.ph.i49, %.lr.ph.i49.preheader.new
  %niter98 = phi i32 [ 0, %.lr.ph.i49.preheader.new ], [ %niter98.next.1, %.lr.ph.i49 ]
  %i.aq = load i32, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.b, align 8, !tbaa !17
  %i.as = load ptr, ptr %5, align 8, !tbaa !18
  %i.at = sext i32 %i.aq to i64
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  store i8 48, ptr %i.au, align 1, !tbaa !19
  %i.av = load i32, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.b, align 8, !tbaa !17
  %i.ax = load ptr, ptr %5, align 8, !tbaa !18
  %i.ay = sext i32 %i.av to i64
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 %i.ay
  store i8 48, ptr %i.az, align 1, !tbaa !19
  %niter98.next.1 = add i32 %niter98, 2           ; 2 uses
  %niter98.ncmp.1 = icmp eq i32 %niter98.next.1, %unroll_iter97
  br i1 %niter98.ncmp.1, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit52.thread.loopexit.unr-lcssa, label %.lr.ph.i49, !llvm.loop !28

bb.d:                                             ; preds = %bb.a
  %.not = icmp slt i32 %3, %2
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 28 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !17
  %i.bc = load ptr, ptr %5, align 8, !tbaa !18
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.bd ; 2 uses
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = sext i32 %2 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.be, ptr align 1 %1, i64 %i.bf, i1 false)
  %i.bg = load i32, ptr %i.ba, align 8, !tbaa !17
  %i.bh = add nsw i32 %i.bg, %2
  store i32 %i.bh, ptr %i.ba, align 8, !tbaa !17
  %i.bi = sub nsw i32 %3, %2                      ; 4 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i53.preheader, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56

.lr.ph.i53.preheader:                             ; preds = %bb.e
  %.neg = add i32 %2, 1
  %xtraiter = and i32 %i.bi, 1
  %i.bk = icmp eq i32 %3, %.neg
  br i1 %i.bk, label %.lr.ph.i53.epil.preheader, label %.lr.ph.i53.preheader.new

.lr.ph.i53.preheader.new:                         ; preds = %.lr.ph.i53.preheader
  %unroll_iter = and i32 %i.bi, 2147483646
  br label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.lr.ph.i53, %.lr.ph.i53.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i53.preheader.new ], [ %niter.next.1, %.lr.ph.i53 ]
  %i.bl = load i32, ptr %i.ba, align 8, !tbaa !17 ; 2 uses
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !17
  %i.bn = load ptr, ptr %5, align 8, !tbaa !18
  %i.bo = sext i32 %i.bl to i64
  %i.bp = getelementptr inbounds i8, ptr %i.bn, i64 %i.bo
  store i8 48, ptr %i.bp, align 1, !tbaa !19
  %i.bq = load i32, ptr %i.ba, align 8, !tbaa !17 ; 2 uses
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.ba, align 8, !tbaa !17
  %i.bs = load ptr, ptr %5, align 8, !tbaa !18
  %i.bt = sext i32 %i.bq to i64
  %i.bu = getelementptr inbounds i8, ptr %i.bs, i64 %i.bt
  store i8 48, ptr %i.bu, align 1, !tbaa !19
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56.loopexit.unr-lcssa, label %.lr.ph.i53, !llvm.loop !28

_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56.loopexit.unr-lcssa: ; preds = %.lr.ph.i53
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56, label %.lr.ph.i53.epil.preheader

.lr.ph.i53.epil.preheader:                        ; preds = %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56.loopexit.unr-lcssa, %.lr.ph.i53.preheader
  %lcmp.mod78 = trunc i32 %i.bi to i1
  tail call void @llvm.assume(i1 %lcmp.mod78)
  %i.bv = load i32, ptr %i.ba, align 8, !tbaa !17 ; 2 uses
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.ba, align 8, !tbaa !17
  %i.bx = load ptr, ptr %5, align 8, !tbaa !18
  %i.by = sext i32 %i.bv to i64
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 %i.by
  store i8 48, ptr %i.bz, align 1, !tbaa !19
  br label %_ZN17double_conversion13StringBuilder10AddPaddingEci.exit56
end_hunk_0
begin_hunk_1_@_ZNK17double_conversion23DoubleToStringConverter13ToExponentialEdiPNS_13StringBuilderE:bb.a
  %i.ay = zext i32 %i.ax to i64
  %i.az = add nuw nsw i64 %i.ay, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 48, i64 %i.az, i1 false), !tbaa !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %_ZN17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS0_8DtoaModeEiPciPbPiS4_.exit31
  store i32 %i.ao, ptr %i.c, align 4, !tbaa !14
  br label %_ZN17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS0_8DtoaModeEiPciPbPiS4_.exit

_ZN17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS0_8DtoaModeEiPciPbPiS4_.exit: ; preds = %_ZN17double_conversionL20DtoaToBignumDtoaModeENS_23DoubleToStringConverter8DtoaModeE.exit.i, %bb.k, %bb.j, %._crit_edge
  %i.ba = icmp slt i64 %i.d, 0
  br i1 %i.ba, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS0_8DtoaModeEiPciPbPiS4_.exit
  %i.bb = load i32, ptr %0, align 8, !tbaa !11
  %i.bc = and i32 %i.bb, 8
  %i.bd = icmp ne i32 %i.bc, 0
  %i.be = fcmp oeq double %1, 0.000000e+00
  %or.cond = select i1 %i.be, i1 %i.bd, i1 false
  br i1 %or.cond, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !17 ; 2 uses
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !17
  %i.bi = load ptr, ptr %3, align 8, !tbaa !18
  %i.bj = sext i32 %i.bg to i64
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 %i.bj
  store i8 45, ptr %i.bk, align 1, !tbaa !19
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %_ZN17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS0_8DtoaModeEiPciPbPiS4_.exit
  %i.bl = load i32, ptr %i.a, align 4, !tbaa !14
  %i.bm = add nsw i32 %i.bl, -1
  %i.bn = load i32, ptr %i.c, align 4, !tbaa !14
  call void @_ZNK17double_conversion23DoubleToStringConverter31CreateExponentialRepresentationEPKciiPNS_13StringBuilderE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, i32 noundef %i.bn, i32 noundef %i.bm, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZNK17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS_13StringBuilderE.exit

_ZNK17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS_13StringBuilderE.exit: ; preds = %.sink.split.i, %bb.f, %bb.c, %bb.g, %bb.q
  %.0 = phi i1 [ false, %bb.g ], [ true, %bb.q ], [ true, %.sink.split.i ], [ false, %bb.f ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK17double_conversion23DoubleToStringConverter11ToPrecisionEdiPNS_13StringBuilderE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, double noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [121 x i8], align 16              ; 12 uses
  %i.c = alloca i32, align 4                      ; 11 uses
  %i.d = bitcast double %1 to i64                 ; 2 uses
  %i.e = and i64 %i.d, 9218868437227405312
  %i.f = icmp eq i64 %i.e, 9218868437227405312
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = tail call double @llvm.fabs.f64(double %1)
  %i.h = fcmp oeq double %i.g, +inf
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS_13StringBuilderE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = fcmp olt double %1, 0.000000e+00
  br i1 %i.l, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !17
  %i.p = load ptr, ptr %3, align 8, !tbaa !18
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds i8, ptr %i.p, i64 %i.q
  store i8 45, ptr %i.r, align 1, !tbaa !19
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !12
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.s = fcmp ord double %1, 0.000000e+00
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  %or.cond.i = select i1 %i.s, i1 true, i1 %i.v
  br i1 %or.cond.i, label %_ZNK17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS_13StringBuilderE.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.e, %bb.d
  %.sink23.i = phi ptr [ %i.j, %bb.d ], [ %.pre.i, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink23.i) #13 ; 2 uses
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !17
  %i.aa = load ptr, ptr %3, align 8, !tbaa !18
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %i.ab
  %sext.i8.i = shl i64 %i.w, 32
  %i.ad = ashr exact i64 %sext.i8.i, 32
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ac, ptr nonnull align 1 %.sink23.i, i64 %i.ad, i1 false)
  %i.ae = load i32, ptr %i.y, align 8, !tbaa !17
  %i.af = add nsw i32 %i.ae, %i.x
  store i32 %i.af, ptr %i.y, align 8, !tbaa !17
  br label %_ZNK17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS_13StringBuilderE.exit

bb.g:                                             ; preds = %bb.a
  %i.ag = add i32 %2, -121
  %or.cond = icmp ult i32 %i.ag, -120
  br i1 %or.cond, label %_ZNK17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS_13StringBuilderE.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %.0.i24 = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.ah = fcmp oeq double %1, 0.000000e+00        ; 2 uses
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 48, ptr %i.b, align 16, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 0, ptr %i.ai, align 1, !tbaa !19
  store i32 1, ptr %i.c, align 4, !tbaa !14
  store i32 1, ptr %i.a, align 4, !tbaa !14
  br label %_ZN17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS0_8DtoaModeEiPciPbPiS4_.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = call noundef zeroext i1 @_ZN17double_conversion8FastDtoaEdNS_12FastDtoaModeEiNS_6VectorIcEEPiS3_(double noundef %.0.i24, i32 noundef 2, i32 noundef %2, ptr nonnull %i.b, i32 121, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
  br i1 %i.aj, label %_ZN17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS0_8DtoaModeEiPciPbPiS4_.exit, label %_ZN17double_conversionL20DtoaToBignumDtoaModeENS_23DoubleToStringConverter8DtoaModeE.exit.i

_ZN17double_conversionL20DtoaToBignumDtoaModeENS_23DoubleToStringConverter8DtoaModeE.exit.i: ; preds = %bb.j
  call void @_ZN17double_conversion10BignumDtoaEdNS_14BignumDtoaModeEiNS_6VectorIcEEPiS3_(double noundef %.0.i24, i32 noundef 3, i32 noundef %2, ptr nonnull %i.b, i32 121, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a)
  %i.ak = load i32, ptr %i.c, align 4, !tbaa !14
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.b, i64 %i.al
  store i8 0, ptr %i.am, align 1, !tbaa !19
  br label %_ZN17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS0_8DtoaModeEiPciPbPiS4_.exit

_ZN17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS0_8DtoaModeEiPciPbPiS4_.exit: ; preds = %bb.i, %bb.j, %_ZN17double_conversionL20DtoaToBignumDtoaModeENS_23DoubleToStringConverter8DtoaModeE.exit.i
  %i.an = icmp slt i64 %i.d, 0
  br i1 %i.an, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZN17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS0_8DtoaModeEiPciPbPiS4_.exit
  %i.ao = load i32, ptr %0, align 8, !tbaa !11
  %i.ap = and i32 %i.ao, 8
  %i.aq = icmp ne i32 %i.ap, 0
  %or.cond3 = select i1 %i.ah, i1 %i.aq, i1 false
  br i1 %or.cond3, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !17 ; 2 uses
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !17
  %i.au = load ptr, ptr %3, align 8, !tbaa !18
  %i.av = sext i32 %i.as to i64
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.av
  store i8 45, ptr %i.aw, align 1, !tbaa !19
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %_ZN17double_conversion23DoubleToStringConverter13DoubleToAsciiEdNS0_8DtoaModeEiPciPbPiS4_.exit
  %i.ax = load i32, ptr %i.a, align 4, !tbaa !14  ; 6 uses
  %i.ay = add nsw i32 %i.ax, -1
  %i.az = sub i32 1, %i.ax
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !34
  %i.bc = icmp sgt i32 %i.az, %i.bb
  %i.bd = load i32, ptr %0, align 8, !tbaa !11    ; 3 uses
  br i1 %i.bc, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = lshr i32 %i.bd, 2
  %.lobit = and i32 %i.be, 1
  %i.bf = sub i32 %i.ax, %2
  %i.bg = add nsw i32 %i.bf, %.lobit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !35
  %i.bj = icmp sgt i32 %i.bg, %i.bi               ; 2 uses
  %i.bk = and i32 %i.bd, 16
  %.not = icmp eq i32 %i.bk, 0
  br i1 %.not, label %bb.q, label %bb.o

.thread:                                          ; preds = %bb.m
  %i.bl = and i32 %i.bd, 16
  %.not50 = icmp eq i32 %i.bl, 0
  br i1 %.not50, label %.thread..thread52_crit_edge, label %.thread51

.thread..thread52_crit_edge:                      ; preds = %.thread
  %.pre65 = load i32, ptr %i.c, align 4, !tbaa !14
  br label %.thread52

bb.o:                                             ; preds = %bb.n
  br i1 %i.bj, label %.thread51, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.speculated31 = call i32 @llvm.smax.i32(i32 %i.ax, i32 1)
  br label %.thread51

.thread51:                                        ; preds = %.thread, %bb.o, %bb.p
  %i.bm = phi i1 [ false, %bb.p ], [ true, %bb.o ], [ true, %.thread ]
  %i.bn = phi i32 [ %.sroa.speculated31, %bb.p ], [ 1, %bb.o ], [ 1, %.thread ] ; 3 uses
  %.promoted = load i32, ptr %i.c, align 4, !tbaa !14 ; 6 uses
  %i.bo = icmp sgt i32 %.promoted, %i.bn
  br i1 %i.bo, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.thread51
  %i.bp = zext nneg i32 %.promoted to i64         ; 2 uses
  %4 = zext nneg i32 %i.bn to i64
  %i.bq = getelementptr i8, ptr %i.b, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 -1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !19
  %i.bt = icmp eq i8 %i.bs, 48
  br i1 %i.bt, label %.lr.ph78, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph78
  %i.bu = getelementptr i8, ptr %i.b, i64 %indvars.iv.next
  %i.bv = getelementptr i8, ptr %i.bu, i64 -1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !19
  %i.bx = icmp eq i8 %i.bw, 48
  br i1 %i.bx, label %.lr.ph78, label %.lr.ph..critedge.loopexit.split.loop.exit70_crit_edge, !llvm.loop !33

.lr.ph78:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv77 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.bp, %.lr.ph.preheader ]
  %indvars.iv.next = add nsw i64 %indvars.iv77, -1 ; 5 uses
  %i.by = trunc nuw nsw i64 %indvars.iv.next to i32 ; 4 uses
  %i.bz = icmp sgt i64 %indvars.iv.next, %4
  br i1 %i.bz, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !33

.lr.ph..critedge.loopexit.split.loop.exit70_crit_edge: ; preds = %.lr.ph
  store i32 %i.by, ptr %i.c, align 4, !tbaa !14
  %i.ca = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.critedge

.critedge.loopexit:                               ; preds = %.lr.ph78
  store i32 %i.by, ptr %i.c, align 4, !tbaa !14
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph.preheader, %.lr.ph..critedge.loopexit.split.loop.exit70_crit_edge, %.thread51
  %i.cb = phi i32 [ %.promoted, %.thread51 ], [ %.promoted, %.lr.ph.preheader ], [ %i.by, %.lr.ph..critedge.loopexit.split.loop.exit70_crit_edge ], [ %i.by, %.critedge.loopexit ] ; 2 uses
  %.lcssa = phi i32 [ %.promoted, %.thread51 ], [ %.promoted, %.lr.ph.preheader ], [ %i.ca, %.lr.ph..critedge.loopexit.split.loop.exit70_crit_edge ], [ %i.bn, %.critedge.loopexit ]
  %.sroa.speculated41 = call i32 @llvm.smin.i32(i32 %.lcssa, i32 %2) ; 2 uses
  br i1 %i.bm, label %.thread52, label %._crit_edge64

bb.q:                                             ; preds = %bb.n
  %.pre66 = load i32, ptr %i.c, align 4, !tbaa !14 ; 2 uses
  br i1 %i.bj, label %.thread52, label %._crit_edge64

.thread52:                                        ; preds = %.thread..thread52_crit_edge, %.critedge, %bb.q
  %i.cc = phi i32 [ %i.cb, %.critedge ], [ %.pre66, %bb.q ], [ %.pre65, %.thread..thread52_crit_edge ] ; 3 uses
  %.04954 = phi i32 [ %.sroa.speculated41, %.critedge ], [ %2, %bb.q ], [ %2, %.thread..thread52_crit_edge ] ; 3 uses
  %i.cd = icmp slt i32 %i.cc, %.04954
  br i1 %i.cd, label %.lr.ph59.preheader, label %._crit_edge

.lr.ph59.preheader:                               ; preds = %.thread52
  %i.ce = sext i32 %i.cc to i64
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.ce
  %i.cf = xor i32 %i.cc, -1
  %i.cg = add i32 %.04954, %i.cf
  %i.ch = zext i32 %i.cg to i64
  %i.ci = add nuw nsw i64 %i.ch, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i8 48, i64 %i.ci, i1 false), !tbaa !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph59.preheader, %.thread52
  call void @_ZNK17double_conversion23DoubleToStringConverter31CreateExponentialRepresentationEPKciiPNS_13StringBuilderE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, i32 noundef %.04954, i32 noundef %i.ay, ptr noundef %3)
  br label %bb.r

._crit_edge64:                                    ; preds = %bb.q, %.critedge
  %i.cj = phi i32 [ %i.cb, %.critedge ], [ %.pre66, %bb.q ]
  %.04955 = phi i32 [ %.sroa.speculated41, %.critedge ], [ %2, %bb.q ]
  %i.ck = sub nsw i32 %.04955, %i.ax
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.ck, i32 0)
  call void @_ZNK17double_conversion23DoubleToStringConverter27CreateDecimalRepresentationEPKciiiPNS_13StringBuilderE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %i.b, i32 noundef %i.cj, i32 noundef %i.ax, i32 noundef %.sroa.speculated, ptr noundef %3)
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge64, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZNK17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS_13StringBuilderE.exit

_ZNK17double_conversion23DoubleToStringConverter19HandleSpecialValuesEdPNS_13StringBuilderE.exit: ; preds = %.sink.split.i, %bb.f, %bb.c, %bb.g, %bb.r
  %.021 = phi i1 [ false, %bb.g ], [ true, %bb.r ], [ true, %.sink.split.i ], [ false, %bb.f ], [ false, %bb.c ]
  ret i1 %.021
}

declare noundef zeroext i1 @_ZN17double_conversion8FastDtoaEdNS_12FastDtoaModeEiNS_6VectorIcEEPiS3_(double noundef, i32 noundef, i32 noundef, ptr, i32, ptr noundef, ptr noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN17double_conversion13FastFixedDtoaEdiNS_6VectorIcEEPiS2_(double noundef, i32 noundef, ptr, i32, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

declare void @_ZN17double_conversion10BignumDtoaEdNS_14BignumDtoaModeEiNS_6VectorIcEEPiS3_(double noundef, i32 noundef, i32 noundef, ptr, i32, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!"_ZTSN17double_conversion23DoubleToStringConverterE", !5, i64 0, !9, i64 8, !9, i64 16, !4, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44}
!11 = !{!10, !5, i64 0}
!12 = !{!10, !9, i64 8}
!13 = !{!10, !4, i64 24}
!14 = !{!5, !5, i64 0}
!15 = !{!"_ZTSN17double_conversion6VectorIcEE", !9, i64 0, !5, i64 8}
!16 = !{!"_ZTSN17double_conversion13StringBuilderE", !15, i64 0, !5, i64 16}
!17 = !{!16, !5, i64 16}
!18 = !{!15, !9, i64 0}
!19 = !{!4, !4, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"bool", !4, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"branch_weights", i32 1, i32 1048575}
!24 = !{!10, !9, i64 16}
!25 = !{!10, !5, i64 44}
!26 = distinct !{!26, !20}
!27 = distinct !{!27, !20}
!28 = distinct !{!28, !20}
!29 = !{i8 0, i8 2}
!30 = !{}
!31 = !{!10, !5, i64 28}
!32 = !{!10, !5, i64 32}
!33 = distinct !{!33, !20}
!34 = !{!10, !5, i64 36}
!35 = !{!10, !5, i64 40}
end_hunk_1
