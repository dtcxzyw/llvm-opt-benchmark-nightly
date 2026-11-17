Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/clipper?download=true
inline.NumInlined: 2345
inline.NumDeleted: 743
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN10ClipperLib7Clipper15SetWindingCountERNS_5TEdgeE:bb.a

.loopexit:                                        ; preds = %bb.w, %bb.v, %.preheader102, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK10ClipperLib7Clipper17IsEvenOddFillTypeERKNS_5TEdgeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(135) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1) local_unnamed_addr #4 align 2 !guid !233 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
  %.0.in.in.v = select i1 %i.c, i64 128, i64 124
  %.0.in.in = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.in.v
  %.0.in = load i32, ptr %.0.in.in, align 4
  %.0 = icmp eq i32 %.0.in, 0
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK10ClipperLib7Clipper20IsEvenOddAltFillTypeERKNS_5TEdgeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(135) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1) local_unnamed_addr #4 align 2 !guid !234 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
  %.0.in.in.v = select i1 %i.c, i64 124, i64 128
  %.0.in.in = getelementptr inbounds nuw i8, ptr %0, i64 %.0.in.in.v
  %.0.in = load i32, ptr %.0.in.in, align 4
  %.0 = icmp eq i32 %.0.in, 0
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK10ClipperLib7Clipper14IsContributingERKNS_5TEdgeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(135) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %1) local_unnamed_addr #4 align 2 !guid !235 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.val = load i32, ptr %i.e, align 4             ; 3 uses
  %.val36 = load i32, ptr %i.d, align 8           ; 3 uses
  %.0 = select i1 %i.c, i32 %.val, i32 %.val36    ; 3 uses
  %.030 = select i1 %i.c, i32 %.val36, i32 %.val
  switch i32 %.030, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp ne i32 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.j = load i32, ptr %i.i, align 4
  %.not33 = icmp eq i32 %i.j, 1
  %or.cond = select i1 %i.h, i1 true, i1 %.not33
  br i1 %or.cond, label %bb.f, label %bb.ac

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call i32 @llvm.abs.i32(i32 %i.l, i1 false)
  %.not32 = icmp eq i32 %i.m, 1
  br i1 %.not32, label %bb.f, label %bb.ac

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.o = load i32, ptr %i.n, align 4
  %.not = icmp eq i32 %i.o, 1
  br i1 %.not, label %bb.f, label %bb.ac

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.q = load i32, ptr %i.p, align 4
  %.not34 = icmp eq i32 %i.q, -1
  br i1 %.not34, label %bb.f, label %bb.ac

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load i32, ptr %i.r, align 8
  switch i32 %i.s, label %bb.ac [
    i32 0, label %bb.g
    i32 1, label %bb.k
    i32 2, label %bb.o
    i32 3, label %bb.x
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i32, ptr %i.t, align 8              ; 3 uses
  switch i32 %.0, label %bb.j [
    i32 0, label %bb.h
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.v = icmp ne i32 %i.u, 0
  br label %bb.ac

bb.i:                                             ; preds = %bb.g
  %i.w = icmp sgt i32 %i.u, 0
  br label %bb.ac

bb.j:                                             ; preds = %bb.g
  %i.x = icmp slt i32 %i.u, 0
  br label %bb.ac

bb.k:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = load i32, ptr %i.y, align 8              ; 3 uses
  switch i32 %.0, label %bb.n [
    i32 0, label %bb.l
    i32 1, label %bb.l
    i32 2, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.aa = icmp eq i32 %i.z, 0
  br label %bb.ac

bb.m:                                             ; preds = %bb.k
  %i.ab = icmp slt i32 %i.z, 1
  br label %bb.ac

bb.n:                                             ; preds = %bb.k
  %i.ac = icmp sgt i32 %i.z, -1
  br label %bb.ac

bb.o:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ae = load i32, ptr %i.ad, align 8            ; 6 uses
  br i1 %i.c, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  switch i32 %.val, label %bb.s [
    i32 0, label %bb.q
    i32 1, label %bb.q
    i32 2, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.af = icmp eq i32 %i.ae, 0
  br label %bb.ac

bb.r:                                             ; preds = %bb.p
  %i.ag = icmp slt i32 %i.ae, 1
  br label %bb.ac

bb.s:                                             ; preds = %bb.p
  %i.ah = icmp sgt i32 %i.ae, -1
  br label %bb.ac

bb.t:                                             ; preds = %bb.o
  switch i32 %.val36, label %bb.w [
    i32 0, label %bb.u
    i32 1, label %bb.u
    i32 2, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.ai = icmp ne i32 %i.ae, 0
  br label %bb.ac

bb.v:                                             ; preds = %bb.t
  %i.aj = icmp sgt i32 %i.ae, 0
  br label %bb.ac

bb.w:                                             ; preds = %bb.t
  %i.ak = icmp slt i32 %i.ae, 0
  br label %bb.ac

bb.x:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.am = load i32, ptr %i.al, align 8
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ap = load i32, ptr %i.ao, align 8            ; 3 uses
  switch i32 %.0, label %bb.ab [
    i32 0, label %bb.z
    i32 1, label %bb.z
    i32 2, label %bb.aa
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.aq = icmp eq i32 %i.ap, 0
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.ar = icmp slt i32 %i.ap, 1
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.as = icmp sgt i32 %i.ap, -1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.f, %bb.x, %bb.e, %bb.d, %bb.c, %bb.b, %bb.ab, %bb.aa, %bb.z, %bb.w, %bb.v, %bb.u, %bb.s, %bb.r, %bb.q, %bb.n, %bb.m, %bb.l, %bb.j, %bb.i, %bb.h
  %.031 = phi i1 [ false, %bb.d ], [ true, %bb.x ], [ %i.x, %bb.j ], [ %i.v, %bb.h ], [ %i.w, %bb.i ], [ %i.ac, %bb.n ], [ %i.aa, %bb.l ], [ %i.ab, %bb.m ], [ %i.ah, %bb.s ], [ %i.af, %bb.q ], [ %i.ag, %bb.r ], [ %i.ak, %bb.w ], [ %i.ai, %bb.u ], [ %i.aj, %bb.v ], [ %i.as, %bb.ab ], [ %i.aq, %bb.z ], [ %i.ar, %bb.aa ], [ false, %bb.e ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.f ]
  ret i1 %.031
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10ClipperLib7Clipper15AddLocalMinPolyEPNS_5TEdgeES2_RKNS_8IntPointE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(135) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef captures(address) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #5 align 2 !guid !236 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = load double, ptr %i.a, align 8           ; 2 uses
  %i.c = fcmp oeq double %i.b, -1.000000e+40
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load double, ptr %i.d, align 8
  %i.f = fcmp ogt double %i.e, %i.b
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call noundef ptr @_ZN10ClipperLib7Clipper8AddOutPtEPNS_5TEdgeERKNS_8IntPointE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 76
  store i32 %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 1, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 2, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, %2
  br i1 %i.o, label %.sink.split, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef ptr @_ZN10ClipperLib7Clipper8AddOutPtEPNS_5TEdgeERKNS_8IntPointE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.r = load i32, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 76
  store i32 %i.r, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 60
  store i32 2, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 1, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp eq ptr %i.w, %1
  br i1 %i.x, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.d, %bb.c
  %.sink78 = phi ptr [ %2, %bb.c ], [ %1, %bb.d ]
  %.053.ph = phi ptr [ %1, %bb.c ], [ %2, %bb.d ]
  %.0.ph = phi ptr [ %i.g, %bb.c ], [ %i.p, %bb.d ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sink78, i64 112
  %i.z = load ptr, ptr %i.y, align 8
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d, %bb.c
  %.054 = phi ptr [ %i.w, %bb.d ], [ %i.n, %bb.c ], [ %i.z, %.sink.split ] ; 9 uses
  %.053 = phi ptr [ %2, %bb.d ], [ %1, %bb.c ], [ %.053.ph, %.sink.split ] ; 6 uses
  %.0 = phi ptr [ %i.p, %bb.d ], [ %i.g, %bb.c ], [ %.0.ph, %.sink.split ] ; 2 uses
  %.not = icmp eq ptr %.054, null
  br i1 %.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.054, i64 76
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %.054, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %.054, i64 40
  %i.af = load i64, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load i64, ptr %i.ag, align 8            ; 6 uses
  %i.ai = icmp slt i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %.053, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.053, i64 40 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = icmp slt i64 %i.al, %i.ah
  br i1 %i.am, label %_ZN10ClipperLib4TopXERNS_5TEdgeEx.exit67, label %bb.m

_ZN10ClipperLib4TopXERNS_5TEdgeEx.exit67:         ; preds = %bb.h
  %i.an = load i64, ptr %.054, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.054, i64 48
  %i.ap = load double, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.054, i64 8
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = sub nsw i64 %i.ah, %i.ar
  %i.at = sitofp i64 %i.as to double
  %i.au = fmul double %i.ap, %i.at                ; 2 uses
  %i.av = fcmp olt double %i.au, 0.000000e+00
  %.0.in.v.i.i = select i1 %i.av, double -5.000000e-01, double 5.000000e-01
  %.0.in.i.i = fadd double %i.au, %.0.in.v.i.i
  %.0.i.i = fptosi double %.0.in.i.i to i64
  %i.aw = add nsw i64 %i.an, %.0.i.i              ; 3 uses
  %i.ax = load i64, ptr %.053, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.053, i64 48
  %i.az = load double, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.053, i64 8
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = sub nsw i64 %i.ah, %i.bb
  %i.bd = sitofp i64 %i.bc to double
  %i.be = fmul double %i.az, %i.bd                ; 2 uses
  %i.bf = fcmp olt double %i.be, 0.000000e+00
  %.0.in.v.i.i64 = select i1 %i.bf, double -5.000000e-01, double 5.000000e-01
  %.0.in.i.i65 = fadd double %i.be, %.0.in.v.i.i64
  %.0.i.i66 = fptosi double %.0.in.i.i65 to i64
  %i.bg = add nsw i64 %i.ax, %.0.i.i66
  %i.bh = icmp eq i64 %i.aw, %i.bg
  br i1 %i.bh, label %bb.i, label %bb.m

bb.i:                                             ; preds = %_ZN10ClipperLib4TopXERNS_5TEdgeEx.exit67
  %i.bi = getelementptr inbounds nuw i8, ptr %.053, i64 64
  %i.bj = load i32, ptr %i.bi, align 8
  %.not62 = icmp eq i32 %i.bj, 0
  br i1 %.not62, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.054, i64 64
  %i.bl = load i32, ptr %i.bk, align 8
  %.not63 = icmp eq i32 %i.bl, 0
  br i1 %.not63, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.01.0.copyload = load i64, ptr %i.ad, align 8
  %i.bm = load ptr, ptr %0, align 8
  %i.bn = getelementptr i8, ptr %i.bm, i64 -24
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds i8, ptr %0, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load i8, ptr %i.bq, align 8, !range !75, !noundef !76
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = tail call noundef zeroext i1 @_ZN10ClipperLib11SlopesEqualENS_8IntPointES0_S0_S0_b(i64 %i.aw, i64 %i.ah, i64 %.sroa.01.0.copyload, i64 %i.af, i64 %i.aw, i64 %i.ah, ptr noundef nonnull byval(%"struct.ClipperLib::IntPoint") align 8 %i.aj, i1 noundef zeroext %i.bs)
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bu = tail call noundef ptr @_ZN10ClipperLib7Clipper8AddOutPtEPNS_5TEdgeERKNS_8IntPointE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %.054, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %.sroa.0.0.copyload = load i64, ptr %i.aj, align 8
  %.sroa.2.0.copyload = load i64, ptr %i.ak, align 8
  tail call void @_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef %.0, ptr noundef %i.bu, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  br label %bb.m

bb.m:                                             ; preds = %_ZN10ClipperLib4TopXERNS_5TEdgeEx.exit67, %bb.i, %bb.j, %bb.k, %bb.l, %bb.h, %bb.g, %bb.f, %bb.e
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN10ClipperLib7Clipper8AddOutPtEPNS_5TEdgeERKNS_8IntPointE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(135) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !guid !237 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef ptr @_ZN10ClipperLib11ClipperBase12CreateOutRecEv(ptr noundef nonnull align 8 dereferenceable(144) %i.g) ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 5 ; 2 uses
  %i.m = zext i1 %i.k to i8
  store i8 %i.m, ptr %i.l, align 1
  %i.n = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.n, ptr %i.p, align 8
  %i.q = load i32, ptr %i.h, align 8              ; 2 uses
  store i32 %i.q, ptr %i.n, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.n, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.n, ptr %i.s, align 8
  %i.t = load i8, ptr %i.l, align 1, !range !75, !noundef !76
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.017.in22.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.01723.i = load ptr, ptr %.017.in22.i, align 8 ; 2 uses
  %.not24.i = icmp eq ptr %.01723.i, null
  br i1 %.not24.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.g
  %.01726.i = phi ptr [ %.017.i, %bb.g ], [ %.01723.i, %bb.c ] ; 4 uses
  %.025.i = phi ptr [ %.1.i, %bb.g ], [ null, %bb.c ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01726.i, i64 76
  %i.w = load i32, ptr %i.v, align 4              ; 2 uses
  %i.x = icmp sgt i32 %i.w, -1
  br i1 %i.x, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph.i
end_hunk_0
