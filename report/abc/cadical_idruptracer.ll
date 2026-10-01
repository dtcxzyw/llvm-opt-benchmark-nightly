Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_idruptracer?download=true
inline.NumInlined: 234
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN7CaDiCaL11IdrupTracerD2Ev:bb.a
  %.not.i.i.i10 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIiSaIiEED2Ev.exit11, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !47
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #16
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit11

_ZNSt6vectorIiSaIiEED2Ev.exit11:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7CaDiCaL4FileD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL11IdrupTracer13delete_clauseEPNS_11IdrupClauseE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45
  %i.c = add i64 %i.b, -1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !45
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %1) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL11IdrupTracerD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN7CaDiCaL11IdrupTracerD1Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 160) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL11IdrupTracer15enlarge_clausesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  %i.c = shl i64 %i.b, 1
  %spec.select = select i1 %.not, i64 1, i64 %i.c
  %spec.select.fr = freeze i64 %spec.select       ; 6 uses
  %i.d = icmp ugt i64 %spec.select.fr, 2305843009213693951
  %i.e = shl i64 %spec.select.fr, 3               ; 2 uses
  %i.f = select i1 %i.d, i64 -1, i64 %i.e
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #17 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.g, i8 0, i64 %i.e, i1 false)
  %i.h = load i64, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %.not29 = icmp eq i64 %i.h, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !40 ; 4 uses
  br i1 %.not29, label %._crit_edge28, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.a
  %i.i = icmp ult i64 %spec.select.fr, 4294967296
  %i.j = add i64 %spec.select.fr, -1              ; 2 uses
  br i1 %i.i, label %.lr.ph27.split.us, label %.lr.ph27.split

.lr.ph27.split.us:                                ; preds = %.lr.ph27, %._crit_edge.split.us.us
  %.01925.us = phi i64 [ %i.y, %._crit_edge.split.us.us ], [ 0, %.lr.ph27 ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.01925.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41   ; 2 uses
  %.not2223.us = icmp eq ptr %i.l, null
  br i1 %.not2223.us, label %._crit_edge.split.us.us, label %.lr.ph.i.preheader.us.us

.lr.ph.i.preheader.us.us:                         ; preds = %.lr.ph27.split.us, %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit.loopexit.us.us
  %.024.us.us = phi ptr [ %i.m, %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit.loopexit.us.us ], [ %i.l, %.lr.ph27.split.us ] ; 4 uses
  %i.m = load ptr, ptr %.024.us.us, align 8, !tbaa !44 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.024.us.us, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !48
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us, %.lr.ph.i.preheader.us.us
  %i.p = phi i64 [ %i.t, %.lr.ph.i.us.us ], [ 32, %.lr.ph.i.preheader.us.us ]
  %.014.i.us.us = phi i64 [ %i.r, %.lr.ph.i.us.us ], [ %i.o, %.lr.ph.i.preheader.us.us ] ; 2 uses
  %.01013.i.us.us = phi i32 [ %i.s, %.lr.ph.i.us.us ], [ 32, %.lr.ph.i.preheader.us.us ]
  %i.q = lshr i64 %.014.i.us.us, %i.p
  %i.r = xor i64 %i.q, %.014.i.us.us              ; 2 uses
  %i.s = lshr i32 %.01013.i.us.us, 1              ; 2 uses
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %.highbits.i.us.us = lshr i64 %spec.select.fr, %i.t
  %i.u = icmp eq i64 %.highbits.i.us.us, 0
  br i1 %i.u, label %.lr.ph.i.us.us, label %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit.loopexit.us.us, !llvm.loop !0

_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit.loopexit.us.us: ; preds = %.lr.ph.i.us.us
  %i.v = and i64 %i.r, %i.j
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !41
  store ptr %i.x, ptr %.024.us.us, align 8, !tbaa !44
  store ptr %.024.us.us, ptr %i.w, align 8, !tbaa !41
  %.not22.us.us = icmp eq ptr %i.m, null
  br i1 %.not22.us.us, label %._crit_edge.split.us.us, label %.lr.ph.i.preheader.us.us, !llvm.loop !74

._crit_edge.split.us.us:                          ; preds = %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit.loopexit.us.us, %.lr.ph27.split.us
  %i.y = add nuw i64 %.01925.us, 1                ; 2 uses
  %exitcond31.not = icmp eq i64 %i.y, %i.h
  br i1 %exitcond31.not, label %._crit_edge28, label %.lr.ph27.split.us, !llvm.loop !75

._crit_edge28:                                    ; preds = %._crit_edge.split.us.us, %bb.a
  %i.z = icmp eq ptr %.pre, null
  br i1 %i.z, label %bb.b, label %._crit_edge28.thread

.lr.ph27.split:                                   ; preds = %.lr.ph27, %._crit_edge.split
  %.01925 = phi i64 [ %i.ac, %._crit_edge.split ], [ 0, %.lr.ph27 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.01925
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 2 uses
  %.not2223 = icmp eq ptr %i.ab, null
  br i1 %.not2223, label %._crit_edge.split, label %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit

._crit_edge.split:                                ; preds = %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit, %.lr.ph27.split
  %i.ac = add nuw i64 %.01925, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.h
  br i1 %exitcond.not, label %._crit_edge28.thread, label %.lr.ph27.split, !llvm.loop !75

_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit:    ; preds = %.lr.ph27.split, %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit
  %.024 = phi ptr [ %i.ad, %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit ], [ %i.ab, %.lr.ph27.split ] ; 4 uses
  %i.ad = load ptr, ptr %.024, align 8, !tbaa !44 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.024, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !48
  %i.ag = and i64 %i.af, %i.j
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ag ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !41
  store ptr %i.ai, ptr %.024, align 8, !tbaa !44
  store ptr %.024, ptr %i.ah, align 8, !tbaa !41
  %.not22 = icmp eq ptr %i.ad, null
  br i1 %.not22, label %._crit_edge.split, label %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit, !llvm.loop !74

._crit_edge28.thread:                             ; preds = %._crit_edge.split, %._crit_edge28
  tail call void @_ZdaPv(ptr noundef nonnull %.pre) #16
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge28.thread, %._crit_edge28
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.g, ptr %i.aj, align 8, !tbaa !40
  store i64 %spec.select.fr, ptr %i.a, align 8, !tbaa !39
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp ult i64 %1, 4294967296
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.b = phi i64 [ %i.f, %.lr.ph ], [ 32, %bb.a ]
  %.014 = phi i64 [ %i.d, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.01013 = phi i32 [ %i.e, %.lr.ph ], [ 32, %bb.a ]
  %i.c = lshr i64 %.014, %i.b
  %i.d = xor i64 %i.c, %.014                      ; 2 uses
  %i.e = lshr i32 %.01013, 1                      ; 2 uses
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %.highbits = lshr i64 %1, %i.f
  %i.g = icmp eq i64 %.highbits, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %0, %bb.a ], [ %i.d, %.lr.ph ]
  %i.h = add i64 %1, -1
  %i.i = and i64 %.0.lcssa, %i.h
  ret i64 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull ptr @_ZN7CaDiCaL11IdrupTracer10new_clauseEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 2 uses
  %.not = icmp ne ptr %i.c, %i.d
  %.neg = zext i1 %.not to i64
  %i.i = add nsw i64 %i.h, %.neg
  %i.j = shl i64 %i.i, 2
  %i.k = add i64 %i.j, 32
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #17 ; 7 uses
  %1 = ptrtoaddr ptr %i.l to i64
  store ptr null, ptr %i.l, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load <2 x i64>, ptr %i.m, align 8, !tbaa !34
  store <2 x i64> %i.o, ptr %i.n, align 8, !tbaa !34
  %i.p = trunc i64 %i.h to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i32 %i.p, ptr %i.q, align 8, !tbaa !50
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !51   ; 6 uses
  %2 = ptrtoaddr ptr %i.r to i64                  ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !51   ; 3 uses
  %.not2021 = icmp eq ptr %i.r, %i.s
  br i1 %.not2021, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 28 ; 4 uses
  %i.u = ptrtoaddr ptr %i.s to i64
  %i.v = add i64 %i.u, -4
  %i.w = sub i64 %i.v, %2                         ; 2 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 60
  br i1 %min.iters.check, label %.lr.ph.preheader28, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %3 = sub i64 %1, %2
  %4 = add i64 %3, 27
  %diff.check = icmp ult i64 %4, 31
  br i1 %diff.check, label %.lr.ph.preheader28, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.z = shl i64 %n.vec, 2                        ; 2 uses
  %i.aa = getelementptr i8, ptr %i.t, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.r, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.t, i64 %i.ac ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.r, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep25, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep25, align 4, !tbaa !52
  %wide.load26 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !52
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !52
  store <4 x i32> %wide.load26, ptr %i.ae, align 4, !tbaa !52
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader28

.lr.ph.preheader28:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.023.ph = phi ptr [ %i.t, %vector.memcheck ], [ %i.t, %.lr.ph.preheader ], [ %i.aa, %middle.block ]
  %.sroa.017.022.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.l, ptr %i.ag, align 8, !tbaa !55
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !45
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !45
  ret ptr %i.l

.lr.ph:                                           ; preds = %.lr.ph.preheader28, %.lr.ph
  %.023 = phi ptr [ %i.al, %.lr.ph ], [ %.023.ph, %.lr.ph.preheader28 ] ; 2 uses
  %.sroa.017.022 = phi ptr [ %i.am, %.lr.ph ], [ %.sroa.017.022.ph, %.lr.ph.preheader28 ] ; 2 uses
  %i.ak = load i32, ptr %.sroa.017.022, align 4, !tbaa !52
  %i.al = getelementptr inbounds nuw i8, ptr %.023, i64 4
  store i32 %i.ak, ptr %.023, align 4, !tbaa !52
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.017.022, i64 4 ; 2 uses
  %.not20 = icmp eq ptr %i.am, %i.s
  br i1 %.not20, label %._crit_edge, label %.lr.ph, !llvm.loop !77
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i64 @_ZN7CaDiCaL11IdrupTracer12compute_hashEl(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0, i64 noundef %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = srem i64 %1, 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = and i64 %i.a, 4294967295
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34
  %i.f = mul i64 %i.e, %1                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.f, ptr %i.g, align 8, !tbaa !56
  ret i64 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7CaDiCaL11IdrupTracer15find_and_deleteEl(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = srem i64 %1, 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = and i64 %i.c, 4294967295
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !34
  %i.h = mul i64 %i.g, %1                         ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.h, ptr %i.i, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !39   ; 3 uses
  %i.l = icmp ult i64 %i.k, 4294967296
  br i1 %i.l, label %.lr.ph.i, label %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.m = phi i64 [ %i.q, %.lr.ph.i ], [ 32, %bb.b ]
  %.014.i = phi i64 [ %i.o, %.lr.ph.i ], [ %i.h, %bb.b ] ; 2 uses
  %.01013.i = phi i32 [ %i.p, %.lr.ph.i ], [ 32, %bb.b ]
  %i.n = lshr i64 %.014.i, %i.m
  %i.o = xor i64 %i.n, %.014.i                    ; 2 uses
  %i.p = lshr i32 %.01013.i, 1                    ; 2 uses
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %.highbits.i = lshr i64 %i.k, %i.q
  %i.r = icmp eq i64 %.highbits.i, 0
  br i1 %i.r, label %.lr.ph.i, label %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit, !llvm.loop !0

_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit:    ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi i64 [ %i.h, %bb.b ], [ %i.o, %.lr.ph.i ]
  %i.s = add i64 %i.k, -1
  %i.t = and i64 %.0.lcssa.i, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t ; 2 uses
  %.pr = load ptr, ptr %i.w, align 8, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit
  %i.x = phi ptr [ %i.ae, %bb.f ], [ %.pr, %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit ] ; 9 uses
  %.021 = phi ptr [ %i.x, %bb.f ], [ %i.w, %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit ]
  %.not25 = icmp eq ptr %i.x, null
  br i1 %.not25, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !48
  %i.aa = icmp eq i64 %i.z, %i.h
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !80
  %i.ad = icmp eq i64 %i.ac, %1
  br i1 %i.ad, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !41  ; 2 uses
  %.not26 = icmp eq ptr %i.ae, null
  br i1 %.not26, label %.critedge, label %bb.c, !llvm.loop !78

bb.g:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !44
  store ptr %i.af, ptr %.021, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 28
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !50
  %.not30 = icmp eq i32 %i.ai, 0
  br i1 %.not30, label %_ZN7CaDiCaL11IdrupTracer13delete_clauseEPNS_11IdrupClauseE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.pre = load ptr, ptr %i.ak, align 8, !tbaa !49
  %.pre33 = load ptr, ptr %i.al, align 8, !tbaa !47
  br label %bb.h

_ZN7CaDiCaL11IdrupTracer13delete_clauseEPNS_11IdrupClauseE.exit.loopexit: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre34 = load i64, ptr %i.a, align 8, !tbaa !45
  br label %_ZN7CaDiCaL11IdrupTracer13delete_clauseEPNS_11IdrupClauseE.exit

_ZN7CaDiCaL11IdrupTracer13delete_clauseEPNS_11IdrupClauseE.exit: ; preds = %_ZN7CaDiCaL11IdrupTracer13delete_clauseEPNS_11IdrupClauseE.exit.loopexit, %bb.g
  %i.am = phi i64 [ %.pre34, %_ZN7CaDiCaL11IdrupTracer13delete_clauseEPNS_11IdrupClauseE.exit.loopexit ], [ %i.b, %bb.g ]
  %i.an = add i64 %i.am, -1
  store i64 %i.an, ptr %i.a, align 8, !tbaa !45
  tail call void @_ZdaPv(ptr noundef nonnull %i.x) #16
  br label %.critedge

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ao = phi ptr [ %.pre33, %.lr.ph ], [ %i.bn, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %i.ap = phi ptr [ %.pre, %.lr.ph ], [ %i.bo, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %.029 = phi i64 [ 0, %.lr.ph ], [ %i.bp, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.029 ; 2 uses
  %.not.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !52
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !52
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  store ptr %i.as, ptr %i.ak, align 8, !tbaa !49
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.j:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !46 ; 4 uses
  %i.au = ptrtoint ptr %i.ao to i64
  %i.av = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 5 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775804
  br i1 %i.ax, label %bb.k, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #18
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.ay = ashr exact i64 %i.aw, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %i.az = add nsw i64 %.sroa.speculated.i.i.i, %i.ay ; 2 uses
  %i.ba = icmp ult i64 %i.az, %i.ay
  %i.bb = tail call i64 @llvm.umin.i64(i64 %i.az, i64 2305843009213693951)
  %i.bc = select i1 %i.ba, i64 2305843009213693951, i64 %i.bb ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #17 ; 4 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.aw ; 2 uses
  %i.bg = load i32, ptr %i.aq, align 4, !tbaa !52
  store i32 %i.bg, ptr %i.bf, align 4, !tbaa !52
  %i.bh = icmp sgt i64 %i.aw, 0
  br i1 %i.bh, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.be, ptr align 4 %i.at, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.l, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.bj = load ptr, ptr %i.al, align 8, !tbaa !47
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.bl) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.be, ptr %i.aj, align 8, !tbaa !46
  store ptr %i.bi, ptr %i.ak, align 8, !tbaa !49
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bc ; 2 uses
  store ptr %i.bm, ptr %i.al, align 8, !tbaa !47
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.bn = phi ptr [ %i.ao, %bb.i ], [ %i.bm, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.bo = phi ptr [ %i.as, %bb.i ], [ %i.bi, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.bp = add nuw nsw i64 %.029, 1                ; 2 uses
  %i.bq = load i32, ptr %i.ah, align 8, !tbaa !50
  %i.br = zext i32 %i.bq to i64
  %i.bs = icmp samesign ult i64 %i.bp, %i.br
  br i1 %i.bs, label %bb.h, label %_ZN7CaDiCaL11IdrupTracer13delete_clauseEPNS_11IdrupClauseE.exit.loopexit, !llvm.loop !79

.critedge:                                        ; preds = %bb.c, %bb.f, %_ZN7CaDiCaL11IdrupTracer13delete_clauseEPNS_11IdrupClauseE.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %_ZN7CaDiCaL11IdrupTracer13delete_clauseEPNS_11IdrupClauseE.exit ], [ false, %bb.f ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL11IdrupTracer6insertEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(160) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL11IdrupTracer15enlarge_clausesEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i64 [ %.pre, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !tbaa !57   ; 2 uses
  %i.i = srem i64 %i.h, 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = and i64 %i.i, 4294967295
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !34
  %i.n = mul i64 %i.m, %i.h                       ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store i64 %i.n, ptr %i.o, align 8, !tbaa !56
  %i.p = icmp ult i64 %i.f, 4294967296
  br i1 %i.p, label %.lr.ph.i, label %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.q = phi i64 [ %i.u, %.lr.ph.i ], [ 32, %bb.c ]
  %.014.i = phi i64 [ %i.s, %.lr.ph.i ], [ %i.n, %bb.c ] ; 2 uses
  %.01013.i = phi i32 [ %i.t, %.lr.ph.i ], [ 32, %bb.c ]
  %i.r = lshr i64 %.014.i, %i.q
  %i.s = xor i64 %i.r, %.014.i                    ; 2 uses
  %i.t = lshr i32 %.01013.i, 1                    ; 2 uses
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %.highbits.i = lshr i64 %i.f, %i.u
  %i.v = icmp eq i64 %.highbits.i, 0
  br i1 %i.v, label %.lr.ph.i, label %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit, !llvm.loop !0

_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit:    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %i.n, %bb.c ], [ %i.s, %.lr.ph.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !49   ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !46   ; 2 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = ashr exact i64 %i.ac, 2                 ; 2 uses
  %.not.i = icmp ne ptr %i.y, %i.z
  %.neg.i = zext i1 %.not.i to i64
  %i.ae = add nsw i64 %i.ad, %.neg.i
  %i.af = shl i64 %i.ae, 2
  %i.ag = add i64 %i.af, 32
  %i.ah = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ag) #17 ; 8 uses
  %1 = ptrtoaddr ptr %i.ah to i64
  store ptr null, ptr %i.ah, align 8, !tbaa !44
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load <2 x i64>, ptr %i.o, align 8, !tbaa !34
  store <2 x i64> %i.aj, ptr %i.ai, align 8, !tbaa !34
  %i.ak = trunc i64 %i.ad to i32
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !50
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !51  ; 6 uses
  %2 = ptrtoaddr ptr %i.am to i64                 ; 2 uses
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !51  ; 3 uses
  %.not2021.i = icmp eq ptr %i.am, %i.an
  br i1 %.not2021.i, label %_ZN7CaDiCaL11IdrupTracer10new_clauseEv.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 28 ; 4 uses
  %i.ap = ptrtoaddr ptr %i.an to i64
  %i.aq = add i64 %i.ap, -4
  %i.ar = sub i64 %i.aq, %2                       ; 2 uses
  %i.as = lshr i64 %i.ar, 2
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 60
  br i1 %min.iters.check, label %.lr.ph.i4.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %3 = sub i64 %1, %2
  %4 = add i64 %3, 27
  %diff.check = icmp ult i64 %4, 31
  br i1 %diff.check, label %.lr.ph.i4.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.at, 9223372036854775800     ; 3 uses
  %i.au = shl i64 %n.vec, 2                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.ao, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.am, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.ax ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.am, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep8, align 4, !tbaa !52
  %wide.load9 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !52
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !52
  store <4 x i32> %wide.load9, ptr %i.az, align 4, !tbaa !52
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZN7CaDiCaL11IdrupTracer10new_clauseEv.exit, label %.lr.ph.i4.preheader

.lr.ph.i4.preheader:                              ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %.023.i.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph.preheader.i ], [ %i.av, %middle.block ]
  %.sroa.017.022.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.preheader.i ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.lr.ph.i4.preheader, %.lr.ph.i4
  %.023.i = phi ptr [ %i.bc, %.lr.ph.i4 ], [ %.023.i.ph, %.lr.ph.i4.preheader ] ; 2 uses
  %.sroa.017.022.i = phi ptr [ %i.bd, %.lr.ph.i4 ], [ %.sroa.017.022.i.ph, %.lr.ph.i4.preheader ] ; 2 uses
  %i.bb = load i32, ptr %.sroa.017.022.i, align 4, !tbaa !52
  %i.bc = getelementptr inbounds nuw i8, ptr %.023.i, i64 4
  store i32 %i.bb, ptr %.023.i, align 4, !tbaa !52
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.017.022.i, i64 4 ; 2 uses
  %.not20.i = icmp eq ptr %i.bd, %i.an
  br i1 %.not20.i, label %_ZN7CaDiCaL11IdrupTracer10new_clauseEv.exit, label %.lr.ph.i4, !llvm.loop !82

_ZN7CaDiCaL11IdrupTracer10new_clauseEv.exit:      ; preds = %.lr.ph.i4, %middle.block, %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit
  %i.be = add i64 %i.f, -1
  %i.bf = and i64 %.0.lcssa.i, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.ah, ptr %i.bg, align 8, !tbaa !55
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !45
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !45
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !40
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bf ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !41
  store ptr %i.bm, ptr %i.ah, align 8, !tbaa !44
  store ptr %i.ah, ptr %i.bl, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL11IdrupTracer25idrup_add_restored_clauseERKSt6vectorIiSaIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !33, !range !58, !noundef !59
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !60   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !66   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67
  %.not.i.i = icmp ult ptr %i.i, %i.k
  br i1 %.not.i.i, label %putc_unlocked.exit.thread.i, label %putc_unlocked.exit.i, !prof !68

putc_unlocked.exit.thread.i:                      ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store ptr %i.l, ptr %i.h, align 8, !tbaa !66
  store i8 114, ptr %i.i, align 1, !tbaa !69
  br label %bb.c

putc_unlocked.exit.i:                             ; preds = %bb.b
  %i.m = tail call i32 @__overflow(ptr noundef nonnull %i.g, i32 noundef 114) #15, !inline_history !1
  %.not.i = icmp eq i32 %i.m, -1
  br i1 %.not.i, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.c

bb.c:                                             ; preds = %putc_unlocked.exit.i, %putc_unlocked.exit.thread.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !70
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !70
  br label %_ZN7CaDiCaL4File3putEc.exit

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 4 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !60   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !66   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !67
  %.not.i.i.i = icmp ult ptr %i.t, %i.v
  br i1 %.not.i.i.i, label %putc_unlocked.exit.thread.i.i, label %putc_unlocked.exit.i.i, !prof !68

putc_unlocked.exit.thread.i.i:                    ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.w, ptr %i.s, align 8, !tbaa !66
  store i8 114, ptr %i.t, align 1, !tbaa !69
  br label %bb.e

putc_unlocked.exit.i.i:                           ; preds = %bb.d
  %i.x = tail call i32 @__overflow(ptr noundef nonnull %i.r, i32 noundef 114) #15, !inline_history !1
  %.not.i.i6 = icmp eq i32 %i.x, -1
  br i1 %.not.i.i6, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.e

bb.e:                                             ; preds = %putc_unlocked.exit.i.i, %putc_unlocked.exit.thread.i.i
  %i.y = load i64, ptr %i.q, align 8, !tbaa !70
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.q, align 8, !tbaa !70
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !60  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !66 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !67
  %.not.i.i.i.1 = icmp ult ptr %i.ac, %i.ae
  br i1 %.not.i.i.i.1, label %putc_unlocked.exit.thread.i.i.1, label %putc_unlocked.exit.i.i.1, !prof !68

putc_unlocked.exit.i.i.1:                         ; preds = %bb.e
  %i.af = tail call i32 @__overflow(ptr noundef nonnull %i.aa, i32 noundef 32) #15, !inline_history !1
  %.not.i.i6.1 = icmp eq i32 %i.af, -1
  br i1 %.not.i.i6.1, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.f

putc_unlocked.exit.thread.i.i.1:                  ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store ptr %i.ag, ptr %i.ab, align 8, !tbaa !66
  store i8 32, ptr %i.ac, align 1, !tbaa !69
  br label %bb.f

bb.f:                                             ; preds = %putc_unlocked.exit.thread.i.i.1, %putc_unlocked.exit.i.i.1
  %i.ah = load i64, ptr %i.q, align 8, !tbaa !70
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.q, align 8, !tbaa !70
  br label %_ZN7CaDiCaL4File3putEc.exit

_ZN7CaDiCaL4File3putEc.exit:                      ; preds = %putc_unlocked.exit.i.i, %putc_unlocked.exit.i.i.1, %bb.f, %bb.c, %putc_unlocked.exit.i
  %i.aj = load ptr, ptr %1, align 8, !tbaa !51    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !51 ; 2 uses
  %.not34 = icmp eq ptr %i.aj, %i.al
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7CaDiCaL4File3putEc.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN7CaDiCaL11IdrupTracer14put_binary_litEi.exit, %_ZN7CaDiCaL4File3putEc.exit
  %i.an = load i8, ptr %i.a, align 8, !tbaa !33, !range !58, !noundef !59
  %i.ao = trunc nuw i8 %i.an to i1
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !32 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 3 uses
  br i1 %i.ao, label %bb.k, label %bb.m

bb.g:                                             ; preds = %.lr.ph, %_ZN7CaDiCaL11IdrupTracer14put_binary_litEi.exit
  %.sroa.031.035 = phi ptr [ %i.aj, %.lr.ph ], [ %i.cp, %_ZN7CaDiCaL11IdrupTracer14put_binary_litEi.exit ] ; 3 uses
  %i.as = load i8, ptr %i.a, align 8, !tbaa !33, !range !58, !noundef !59
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.au = load i32, ptr %.sroa.031.035, align 4, !tbaa !52 ; 2 uses
  %i.av = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true)
  %i.aw = tail call i32 @llvm.fshl.i32(i32 %i.av, i32 %i.au, i32 1) ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 127
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h, %_ZN7CaDiCaL4File3putEh.exit.i
  %.013.i = phi i32 [ %i.bn, %_ZN7CaDiCaL4File3putEh.exit.i ], [ %i.aw, %bb.h ] ; 3 uses
  %i.ay = trunc i32 %.013.i to i8
  %i.az = or i8 %i.ay, -128                       ; 2 uses
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !60 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !66 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !67
  %.not.i.i.i8 = icmp ult ptr %i.be, %i.bg
  br i1 %.not.i.i.i8, label %putc_unlocked.exit.thread.i.i11, label %putc_unlocked.exit.i.i9, !prof !68

putc_unlocked.exit.thread.i.i11:                  ; preds = %.lr.ph.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  store ptr %i.bh, ptr %i.bd, align 8, !tbaa !66
  store i8 %i.az, ptr %i.be, align 1, !tbaa !69
  br label %bb.i

putc_unlocked.exit.i.i9:                          ; preds = %.lr.ph.i
  %i.bi = zext i8 %i.az to i32
  %i.bj = tail call i32 @__overflow(ptr noundef nonnull %i.bc, i32 noundef %i.bi) #15, !inline_history !1
  %.not.i.i10 = icmp eq i32 %i.bj, -1
  br i1 %.not.i.i10, label %_ZN7CaDiCaL4File3putEh.exit.i, label %bb.i

bb.i:                                             ; preds = %putc_unlocked.exit.i.i9, %putc_unlocked.exit.thread.i.i11
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 40 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !70
  %i.bm = add i64 %i.bl, 1
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !70
  br label %_ZN7CaDiCaL4File3putEh.exit.i

_ZN7CaDiCaL4File3putEh.exit.i:                    ; preds = %bb.i, %putc_unlocked.exit.i.i9
  %i.bn = lshr i32 %.013.i, 7                     ; 2 uses
  %i.bo = icmp samesign ugt i32 %.013.i, 16383
  br i1 %i.bo, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %_ZN7CaDiCaL4File3putEh.exit.i, %bb.h
  %.0.lcssa.i = phi i32 [ %i.aw, %bb.h ], [ %i.bn, %_ZN7CaDiCaL4File3putEh.exit.i ] ; 2 uses
  %i.bp = load ptr, ptr %i.am, align 8, !tbaa !32 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !60 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !66 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !67
  %.not.i.i8.i = icmp ult ptr %i.bt, %i.bv
  br i1 %.not.i.i8.i, label %putc_unlocked.exit.thread.i11.i, label %putc_unlocked.exit.i9.i, !prof !68

putc_unlocked.exit.thread.i11.i:                  ; preds = %._crit_edge.i
end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL11IdrupTracer6closedEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60
  %.not.i = icmp eq ptr %i.d, null
  ret i1 %.not.i
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL11IdrupTracer5closeEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, i1 zeroext %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  tail call void @_ZN7CaDiCaL4File5closeEb(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i1 noundef zeroext false) #15
  ret void
}

declare void @_ZN7CaDiCaL4File5closeEb(ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL11IdrupTracer5flushEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, i1 zeroext %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  tail call void @_ZN7CaDiCaL4File5flushEv(ptr noundef nonnull align 8 dereferenceable(48) %i.b) #15
  ret void
}

declare void @_ZN7CaDiCaL4File5flushEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL6Tracer13demote_clauseEmRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL11IdrupTracer10strengthenEl(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL11IdrupTracer15finalize_clauseElRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL11IdrupTracer11begin_proofEl(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL11IdrupTracer14add_constraintERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL6Tracer18notify_equivalenceEii(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { builtin nounwind allocsize(0) }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !42}
!1 = distinct !{null}
!2 = distinct !{!2, !42}
!3 = distinct !{!3, !42}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"_ZTSN7CaDiCaL6TracerE"}
!15 = !{!"_ZTSN7CaDiCaL14InternalTracerE", !14, i64 0}
!16 = !{!"_ZTSN7CaDiCaL10FileTracerE", !15, i64 0}
!17 = !{!"any pointer", !8, i64 0}
!18 = !{!"p1 _ZTSN7CaDiCaL8InternalE", !17, i64 0}
!19 = !{!"p1 _ZTSN7CaDiCaL4FileE", !17, i64 0}
!20 = !{!"bool", !8, i64 0}
!21 = !{!"long", !8, i64 0}
!22 = !{!"any p2 pointer", !17, i64 0}
!23 = !{!"p2 _ZTSN7CaDiCaL11IdrupClauseE", !22, i64 0}
!24 = !{!"p1 int", !17, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!26 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !25, i64 0}
!27 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !26, i64 0}
!28 = !{!"_ZTSSt6vectorIiSaIiEE", !27, i64 0}
!29 = !{!"p1 _ZTSN7CaDiCaL11IdrupClauseE", !17, i64 0}
!30 = !{!"_ZTSN7CaDiCaL11IdrupTracerE", !16, i64 0, !18, i64 8, !19, i64 16, !20, i64 24, !20, i64 25, !21, i64 32, !21, i64 40, !23, i64 48, !28, i64 56, !28, i64 80, !8, i64 104, !21, i64 136, !21, i64 144, !29, i64 152}
!31 = !{!30, !18, i64 8}
!32 = !{!30, !19, i64 16}
!33 = !{!30, !20, i64 24}
!34 = !{!21, !21, i64 0}
!35 = !{!30, !20, i64 25}
!36 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!37 = !{!"p1 omnipotent char", !17, i64 0}
!38 = !{!"_ZTSN7CaDiCaL4FileE", !18, i64 0, !9, i64 8, !9, i64 12, !36, i64 16, !37, i64 24, !21, i64 32, !21, i64 40}
!39 = !{!30, !21, i64 40}
!40 = !{!30, !23, i64 48}
!41 = !{!29, !29, i64 0}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"_ZTSN7CaDiCaL11IdrupClauseE", !29, i64 0, !21, i64 8, !21, i64 16, !9, i64 24, !8, i64 28}
!44 = !{!43, !29, i64 0}
!45 = !{!30, !21, i64 32}
!46 = !{!25, !24, i64 0}
!47 = !{!25, !24, i64 16}
!48 = !{!43, !21, i64 8}
!49 = !{!25, !24, i64 8}
!50 = !{!43, !9, i64 24}
!51 = !{!24, !24, i64 0}
!52 = !{!9, !9, i64 0}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = !{!30, !29, i64 152}
!56 = !{!30, !21, i64 136}
!57 = !{!30, !21, i64 144}
!58 = !{i8 0, i8 2}
!59 = !{}
!60 = !{!38, !36, i64 16}
!61 = !{!"p1 _ZTS10_IO_marker", !17, i64 0}
!62 = !{!"short", !8, i64 0}
!63 = !{!"p1 _ZTS11_IO_codecvt", !17, i64 0}
!64 = !{!"p1 _ZTS13_IO_wide_data", !17, i64 0}
!65 = !{!"_ZTS8_IO_FILE", !9, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !61, i64 96, !36, i64 104, !9, i64 112, !9, i64 116, !21, i64 120, !62, i64 128, !8, i64 130, !8, i64 131, !17, i64 136, !21, i64 144, !63, i64 152, !64, i64 160, !36, i64 168, !17, i64 176, !21, i64 184, !9, i64 192, !8, i64 196}
!66 = !{!65, !37, i64 40}
!67 = !{!65, !37, i64 48}
!68 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!69 = !{!8, !8, i64 0}
!70 = !{!38, !21, i64 40}
!71 = !{!38, !18, i64 0}
!72 = distinct !{!72, !42}
!73 = distinct !{!73, !42}
!74 = distinct !{!74, !42}
!75 = distinct !{!75, !42}
!76 = distinct !{!76, !53, !54}
!77 = distinct !{!77, !53}
!78 = distinct !{!78, !42}
!79 = distinct !{!79, !42}
!80 = !{!43, !21, i64 16}
!81 = distinct !{!81, !53, !54}
!82 = distinct !{!82, !53}
!83 = distinct !{!83, !42}
!84 = distinct !{!84, !42}
!85 = distinct !{!85, !42}
!86 = !{!"p1 long", !17, i64 0}
!87 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !86, i64 0, !86, i64 8, !86, i64 16}
!88 = !{!87, !86, i64 8}
!89 = !{!87, !86, i64 0}
!90 = !{!86, !86, i64 0}
end_hunk_1
