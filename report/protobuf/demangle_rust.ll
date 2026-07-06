inline.NumInlined: 154
inline.NumDeleted: 25
begin_hunk_0_@_ZN4absl12lts_2025051218debugging_internal26DemangleRustSymbolEncodingEPKcPcm:bb.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser15ParseIdentifierEc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0, i8 noundef signext %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17   ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %.not.i.i = icmp eq i8 %i.g, 115
  br i1 %.not.i.i, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.d, 1                      ; 2 uses
  store i32 %i.h, ptr %i.c, align 8, !tbaa !17
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 %i.i ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13    ; 3 uses
  %.not.i.i.i = icmp eq i8 %i.k, 95
  br i1 %.not.i.i.i, label %.thread.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i: ; preds = %bb.b
  %i.l = and i8 %i.k, -33
  %i.m = add i8 %i.l, -65
  %i.n = icmp ult i8 %i.m, 26
  %i.o = add i8 %i.k, -48
  %i.p = icmp ult i8 %i.o, 10
  %or.cond28.i.i = or i1 %i.p, %i.n
  br i1 %or.cond28.i.i, label %.critedge.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser18ParseDisambiguatorERi.exit

.thread.i:                                        ; preds = %bb.b
  %i.q = add nsw i32 %i.d, 2
  store i32 %i.q, ptr %i.c, align 8, !tbaa !17
  br label %bb.j

.critedge.i.i:                                    ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i ], [ %i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ]
  %i.r = phi ptr [ %i.ah, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i ], [ %i.j, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ]
  %.01530.i.i = phi i1 [ %.116.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ]
  %.01729.i.i = phi i32 [ %.118.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i ], [ 0, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.s = trunc nsw i64 %indvars.iv.next.i.i to i32 ; 2 uses
  store i32 %i.s, ptr %i.c, align 8, !tbaa !17
  %i.t = load i8, ptr %i.r, align 1, !tbaa !13    ; 5 uses
  %.not.i5.i = icmp slt i32 %.01729.i.i, 34636833
  br i1 %.not.i5.i, label %bb.c, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i

bb.c:                                             ; preds = %.critedge.i.i
  %i.u = add i8 %i.t, -48
  %i.v = icmp ult i8 %i.u, 10
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = zext nneg i8 %i.t to i32
  %i.x = add nsw i32 %i.w, -48
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.y = add i8 %i.t, -97
  %i.z = icmp ult i8 %i.y, 26
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = zext nneg i8 %i.t to i32
  %i.ab = add nsw i32 %i.aa, -87
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ac = sext i8 %i.t to i32
  %i.ad = add nsw i32 %i.ac, -29
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i = phi i32 [ %i.x, %bb.d ], [ %i.ab, %bb.f ], [ %i.ad, %bb.g ]
  %i.ae = mul nsw i32 %.01729.i.i, 62
  %i.af = add nsw i32 %.0.i.i, %i.ae
  %i.ag = freeze i32 %i.af
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i: ; preds = %bb.h, %.critedge.i.i
  %.118.i.i = phi i32 [ %i.ag, %bb.h ], [ %.01729.i.i, %.critedge.i.i ] ; 3 uses
  %.116.i.i = phi i1 [ %.01530.i.i, %bb.h ], [ true, %.critedge.i.i ] ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next.i.i ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !13  ; 3 uses
  %i.aj = and i8 %i.ai, -33
  %i.ak = add i8 %i.aj, -65
  %i.al = icmp ult i8 %i.ak, 26
  %i.am = add i8 %i.ai, -48
  %i.an = icmp ult i8 %i.am, 10
  %or.cond.i.i = or i1 %i.an, %i.al
  br i1 %or.cond.i.i, label %.critedge.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i, !llvm.loop !19

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.i.i
  %i.ao = icmp eq i8 %i.ai, 95
  br i1 %i.ao, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser18ParseDisambiguatorERi.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i
  %i.ap = add nsw i32 %i.s, 1
  store i32 %i.ap, ptr %i.c, align 8, !tbaa !17
  br i1 %.116.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i
  %i.aq = add nsw i32 %.118.i.i, 2
  %.inv.inv.i = icmp slt i32 %.118.i.i, -1
  %spec.select.i = select i1 %.inv.inv.i, i32 -1, i32 %i.aq
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i, %.thread.i, %bb.a
  %.02.ph = phi i32 [ 1, %.thread.i ], [ %spec.select.i, %bb.i ], [ -1, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i.i ], [ 0, %bb.a ]
  %i.ar = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser30ParseUndisambiguatedIdentifierEci(ptr noundef nonnull align 8 dereferenceable(432) %0, i8 noundef signext %1, i32 noundef %.02.ph)
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser18ParseDisambiguatorERi.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser18ParseDisambiguatorERi.exit: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i, %bb.j
  %.0 = phi i1 [ %i.ar, %bb.j ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i.i ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser19ParseOptionalBinderEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !17   ; 3 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %.not.i = icmp eq i8 %i.g, 71
  br i1 %.not.i, label %bb.b, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.d, 1                      ; 2 uses
  store i32 %i.h, ptr %i.c, align 8, !tbaa !17
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !13    ; 3 uses
  %.not.i.i = icmp eq i8 %i.k, 95
  br i1 %.not.i.i, label %bb.c, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i: ; preds = %bb.b
  %i.l = and i8 %i.k, -33
  %i.m = add i8 %i.l, -65
  %i.n = icmp ult i8 %i.m, 26
  %i.o = add i8 %i.k, -48
  %i.p = icmp ult i8 %i.o, 10
  %or.cond28.i = or i1 %i.p, %i.n
  br i1 %or.cond28.i, label %.critedge.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

bb.c:                                             ; preds = %bb.b
  %i.q = add nsw i32 %i.d, 2
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split

.critedge.i:                                      ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i, %.critedge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.critedge.i ], [ %i.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.r = trunc nsw i64 %indvars.iv.next.i to i32  ; 2 uses
  store i32 %i.r, ptr %i.c, align 8, !tbaa !17
  %i.s = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next.i
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13    ; 3 uses
  %i.u = and i8 %i.t, -33
  %i.v = add i8 %i.u, -65
  %i.w = icmp ult i8 %i.v, 26
  %i.x = add i8 %i.t, -48
  %i.y = icmp ult i8 %i.x, 10
  %or.cond.i = or i1 %i.y, %i.w
  br i1 %or.cond.i, label %.critedge.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i, !llvm.loop !19

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i: ; preds = %.critedge.i
  %i.z = icmp eq i8 %i.t, 95
  br i1 %i.z, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i
  %i.aa = add nsw i32 %i.r, 1
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split: ; preds = %bb.c, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i
  %.sink = phi i32 [ %i.aa, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit24.i ], [ %i.q, %bb.c ]
  store i32 %.sink, ptr %i.c, align 8, !tbaa !17
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit: ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i, %bb.a
  %.0 = phi i1 [ true, %bb.a ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit._crit_edge.i ], [ false, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.preheader.i ], [ true, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser30ParseUndisambiguatedIdentifierEci(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(432) %0, i8 noundef signext %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 6 uses
  %3 = alloca %"struct.absl::lts_20250512::debugging_internal::DecodeRustPunycodeOptions", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7    ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 9 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !17   ; 3 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13    ; 2 uses
  %.not.i = icmp ne i8 %i.h, 117                  ; 3 uses
  br i1 %.not.i, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.e, 1                      ; 3 uses
  store i32 %i.i, ptr %i.d, align 8, !tbaa !17
  %.pre = sext i32 %i.i to i64                    ; 2 uses
  %.phi.trans.insert = getelementptr inbounds i8, ptr %i.c, i64 %.pre
  %.pre85 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit: ; preds = %bb.a, %bb.b
  %i.j = phi i8 [ %i.h, %bb.a ], [ %.pre85, %bb.b ]
  %.pre-phi = phi i64 [ %i.f, %bb.a ], [ %.pre, %bb.b ]
  %.val = phi i32 [ %i.e, %bb.a ], [ %i.i, %bb.b ]
  %i.k = add i8 %i.j, -48
  %i.l = icmp ult i8 %i.k, 10
  br i1 %i.l, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit
  %i.m = getelementptr inbounds i8, ptr %i.c, i64 %.pre-phi
  %i.n = add nsw i32 %.val, 1                     ; 4 uses
  store i32 %i.n, ptr %i.d, align 8, !tbaa !17
  %i.o = load i8, ptr %i.m, align 1, !tbaa !13
  %i.p = sext i8 %i.o to i32
  %i.q = add nsw i32 %i.p, -48                    ; 3 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.loopexit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c
  %4 = sext i32 %i.n to i64                       ; 2 uses
  %5 = getelementptr inbounds i8, ptr %i.c, i64 %4 ; 2 uses
  %6 = load i8, ptr %5, align 1, !tbaa !13
  %i.s = add i8 %6, -48
  %i.t = icmp ult i8 %i.s, 10
  br i1 %i.t, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.d
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %4, %.preheader.i ]
  %i.u = phi ptr [ %i.ac, %bb.d ], [ %5, %.preheader.i ]
  %.018.i = phi i32 [ %i.ab, %bb.d ], [ %i.q, %.preheader.i ] ; 2 uses
  %i.v = icmp slt i32 %.018.i, 214748364
  br i1 %i.v, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph.i
  %i.w = mul nsw i32 %.018.i, 10
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.x = trunc nsw i64 %indvars.iv.next.i to i32  ; 2 uses
  store i32 %i.x, ptr %i.d, align 8, !tbaa !17
  %i.y = load i8, ptr %i.u, align 1, !tbaa !13
  %i.z = sext i8 %i.y to i32
  %i.aa = add i32 %i.w, -48
  %i.ab = add i32 %i.aa, %i.z                     ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next.i ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !13
  %i.ae = add i8 %i.ad, -48
  %i.af = icmp ult i8 %i.ae, 10
  br i1 %i.af, label %.lr.ph.i, label %.loopexit, !llvm.loop !28

.loopexit:                                        ; preds = %bb.d, %.preheader.i, %bb.c
  %i.ag = phi i32 [ %i.n, %bb.c ], [ %i.n, %.preheader.i ], [ %i.x, %bb.d ] ; 3 uses
  %.0.ph = phi i32 [ 0, %bb.c ], [ %i.q, %.preheader.i ], [ %i.ab, %bb.d ] ; 5 uses
  %7 = sext i32 %i.ag to i64
  %8 = getelementptr inbounds i8, ptr %i.c, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !13
  %.not.i29 = icmp eq i8 %9, 95
  br i1 %.not.i29, label %bb.e, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit30

bb.e:                                             ; preds = %.loopexit
  %i.ah = add nsw i32 %i.ag, 1                    ; 2 uses
  store i32 %i.ah, ptr %i.d, align 8, !tbaa !17
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit30

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit30: ; preds = %.loopexit, %bb.e
  %i.ai = phi i32 [ %i.ag, %.loopexit ], [ %i.ah, %bb.e ]
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit30
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.c, i64 %i.aj ; 2 uses
  %i.al = sext i32 %.0.ph to i64
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  store ptr %i.ak, ptr %3, align 8, !tbaa !29
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !29
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = load <2 x ptr>, ptr %i.an, align 8, !tbaa !29
  store <2 x ptr> %i.ao, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !29
  %i.ap = tail call noundef ptr @_ZN4absl12lts_2025051218debugging_internal18DecodeRustPunycodeENS1_25DecodeRustPunycodeOptionsE(ptr noundef nonnull byval(%"struct.absl::lts_20250512::debugging_internal::DecodeRustPunycodeOptions") align 8 %3) ; 2 uses
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !11
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = load i32, ptr %i.d, align 8, !tbaa !17
  %i.ar = add i32 %i.aq, %.0.ph
  store i32 %i.ar, ptr %i.d, align 8, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser3EatEc.exit30
  %.not22 = icmp eq i8 %1, 0                      ; 2 uses
  br i1 %.not22, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit40.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !18
  %i.au = icmp sgt i32 %i.at, 0                   ; 3 uses
  switch i8 %1, label %bb.p [
    i8 67, label %bb.j
    i8 83, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  br i1 %i.au, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !12
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !11 ; 2 uses
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %.not.i31 = icmp ult i64 %i.bb, 9
  br i1 %.not.i31, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ay, ptr noundef nonnull align 1 dereferenceable(9) @.str.43, i64 9, i1 false)
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !11
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !11
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread

bb.m:                                             ; preds = %bb.i
  br i1 %i.au, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !11 ; 2 uses
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %.not.i33 = icmp ult i64 %i.bk, 6
  br i1 %.not.i33, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bh, ptr noundef nonnull align 1 dereferenceable(6) @.str.44, i64 6, i1 false)
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !11
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 5
  store ptr %i.bm, ptr %i.bg, align 8, !tbaa !11
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread

bb.p:                                             ; preds = %bb.i
  br i1 %i.au, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !12
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 6 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !11 ; 3 uses
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = icmp slt i64 %i.bt, 2
  br i1 %i.bu, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store ptr %i.bv, ptr %i.bp, align 8, !tbaa !11
  store i8 123, ptr %i.bq, align 1, !tbaa !13
  %i.bw = load ptr, ptr %i.bp, align 8, !tbaa !11
  store i8 0, ptr %i.bw, align 1, !tbaa !13
  %.pr = load i32, ptr %i.as, align 4, !tbaa !18
  %i.bx = icmp sgt i32 %.pr, 0
  br i1 %i.bx, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = load ptr, ptr %i.bn, align 8, !tbaa !12
  %i.bz = load ptr, ptr %i.bp, align 8, !tbaa !11 ; 3 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = icmp slt i64 %i.cc, 2
  br i1 %i.cd, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store ptr %i.ce, ptr %i.bp, align 8, !tbaa !11
  store i8 %1, ptr %i.bz, align 1, !tbaa !13
  %i.cf = load ptr, ptr %i.bp, align 8, !tbaa !11
  store i8 0, ptr %i.cf, align 1, !tbaa !13
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread: ; preds = %bb.p, %bb.r, %bb.t, %bb.o, %bb.m, %bb.l, %bb.j
  %i.cg = icmp sgt i32 %.0.ph, 0
  br i1 %i.cg, label %bb.u, label %.critedge27.thread

bb.u:                                             ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit.thread
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !18
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit40.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !12
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !11 ; 2 uses
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %.not.i38 = icmp ult i64 %i.cq, 2
  br i1 %.not.i38, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i16 58, ptr %i.cn, align 1
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !11
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store ptr %i.cs, ptr %i.cm, align 8, !tbaa !11
  br label %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit40.thread

_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit40.thread: ; preds = %bb.w, %bb.u, %bb.h
  %.not2378 = icmp sgt i32 %.0.ph, 0
  %or.cond81 = select i1 %.not.i, i1 %.not2378, i1 false
  br i1 %or.cond81, label %.lr.ph, label %.critedge27

.lr.ph:                                           ; preds = %_ZN4absl12lts_2025051218debugging_internal12_GLOBAL__N_116RustSymbolParser4EmitEPKc.exit40.thread
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph, %bb.ab
  %.01879 = phi i32 [ 0, %.lr.ph ], [ %i.dt, %bb.ab ]
  %i.cw = load ptr, ptr %i.b, align 8, !tbaa !7
  %i.cx = load i32, ptr %i.d, align 8, !tbaa !17  ; 2 uses
  %i.cy = add nsw i32 %i.cx, 1
  store i32 %i.cy, ptr %i.d, align 8, !tbaa !17
  %i.cz = sext i32 %i.cx to i64
  %i.da = getelementptr inbounds i8, ptr %i.cw, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !13  ; 5 uses
  %i.dc = and i8 %i.db, -33
  %i.dd = add i8 %i.dc, -91
  %i.de = icmp ult i8 %i.dd, -26
  %i.df = add i8 %i.db, -58
  %i.dg = icmp ult i8 %i.df, -10
  %i.dh = icmp ne i8 %i.db, 95
  %spec.select.i.not75 = and i1 %i.dh, %i.dg
  %.not72 = and i1 %i.de, %spec.select.i.not75
  %i.di = icmp sgt i8 %i.db, -1
  %or.cond = and i1 %i.di, %.not72
  br i1 %or.cond, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dj = load i32, ptr %i.ct, align 4, !tbaa !18
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = load ptr, ptr %i.cu, align 8, !tbaa !12
  %i.dm = load ptr, ptr %i.cv, align 8, !tbaa !11 ; 3 uses
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
end_hunk_0
