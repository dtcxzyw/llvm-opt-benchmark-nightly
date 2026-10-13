Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/idruptracer?download=true
inline.NumInlined: 234
inline.NumDeleted: 73
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN7CaDiCaL11IdrupTracerD2Ev:bb.a

; Function Attrs: nounwind
declare void @_ZN7CaDiCaL4FileD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL11IdrupTracer13delete_clauseEPNS_11IdrupClauseE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) %0, ptr noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46
  %i.c = add i64 %i.b, -1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !46
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %1) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL11IdrupTracerD0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN7CaDiCaL11IdrupTracerD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) #17
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL11IdrupTracer15enlarge_clausesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  %i.c = shl i64 %i.b, 1
  %spec.select = select i1 %.not, i64 1, i64 %i.c
  %spec.select.fr = freeze i64 %spec.select       ; 6 uses
  %i.d = icmp ugt i64 %spec.select.fr, 2305843009213693951
  %i.e = shl i64 %spec.select.fr, 3               ; 2 uses
  %i.f = select i1 %i.d, i64 -1, i64 %i.e
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #18 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.g, i8 0, i64 %i.e, i1 false)
  %i.h = load i64, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %.not29 = icmp eq i64 %i.h, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !41 ; 4 uses
  br i1 %.not29, label %._crit_edge28, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.a
  %i.i = icmp ult i64 %spec.select.fr, 4294967296
  %i.j = add i64 %spec.select.fr, -1              ; 2 uses
  br i1 %i.i, label %.lr.ph27.split.us, label %.lr.ph27.split

.lr.ph27.split.us:                                ; preds = %.lr.ph27, %._crit_edge.split.us.us
  %.01925.us = phi i64 [ %i.y, %._crit_edge.split.us.us ], [ 0, %.lr.ph27 ] ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.01925.us
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42   ; 2 uses
  %.not2223.us = icmp eq ptr %i.l, null
  br i1 %.not2223.us, label %._crit_edge.split.us.us, label %.lr.ph.i.preheader.us.us

.lr.ph.i.preheader.us.us:                         ; preds = %.lr.ph27.split.us, %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit.loopexit.us.us
  %.024.us.us = phi ptr [ %i.m, %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit.loopexit.us.us ], [ %i.l, %.lr.ph27.split.us ] ; 4 uses
  %i.m = load ptr, ptr %.024.us.us, align 8, !tbaa !45 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.024.us.us, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !47
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
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !42
  store ptr %i.x, ptr %.024.us.us, align 8, !tbaa !45
  store ptr %.024.us.us, ptr %i.w, align 8, !tbaa !42
  %.not22.us.us = icmp eq ptr %i.m, null
  br i1 %.not22.us.us, label %._crit_edge.split.us.us, label %.lr.ph.i.preheader.us.us, !llvm.loop !80

._crit_edge.split.us.us:                          ; preds = %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit.loopexit.us.us, %.lr.ph27.split.us
  %i.y = add nuw i64 %.01925.us, 1                ; 2 uses
  %exitcond31.not = icmp eq i64 %i.y, %i.h
  br i1 %exitcond31.not, label %._crit_edge28, label %.lr.ph27.split.us, !llvm.loop !81

._crit_edge28:                                    ; preds = %._crit_edge.split.us.us, %bb.a
  %i.z = icmp eq ptr %.pre, null
  br i1 %i.z, label %bb.b, label %._crit_edge28.thread

.lr.ph27.split:                                   ; preds = %.lr.ph27, %._crit_edge.split
  %.01925 = phi i64 [ %i.ac, %._crit_edge.split ], [ 0, %.lr.ph27 ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %.01925
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42 ; 2 uses
  %.not2223 = icmp eq ptr %i.ab, null
  br i1 %.not2223, label %._crit_edge.split, label %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit

._crit_edge.split:                                ; preds = %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit, %.lr.ph27.split
  %i.ac = add nuw i64 %.01925, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.h
  br i1 %exitcond.not, label %._crit_edge28.thread, label %.lr.ph27.split, !llvm.loop !81

_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit:    ; preds = %.lr.ph27.split, %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit
  %.024 = phi ptr [ %i.ad, %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit ], [ %i.ab, %.lr.ph27.split ] ; 4 uses
  %i.ad = load ptr, ptr %.024, align 8, !tbaa !45 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.024, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !47
  %i.ag = and i64 %i.af, %i.j
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.ag ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42
  store ptr %i.ai, ptr %.024, align 8, !tbaa !45
  store ptr %.024, ptr %i.ah, align 8, !tbaa !42
  %.not22 = icmp eq ptr %i.ad, null
  br i1 %.not22, label %._crit_edge.split, label %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit, !llvm.loop !80

._crit_edge28.thread:                             ; preds = %._crit_edge.split, %._crit_edge28
  tail call void @_ZdaPv(ptr noundef nonnull %.pre) #16
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge28.thread, %._crit_edge28
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.g, ptr %i.aj, align 8, !tbaa !41
  store i64 %spec.select.fr, ptr %i.a, align 8, !tbaa !40
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #8 align 2 {
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

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN7CaDiCaL11IdrupTracer10new_clauseEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2                   ; 2 uses
  %.not = icmp ne ptr %i.c, %i.d
  %.neg = zext i1 %.not to i64
  %i.i = add nsw i64 %i.h, %.neg
  %i.j = shl i64 %i.i, 2
  %i.k = add i64 %i.j, 32
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #18 ; 6 uses
  store ptr null, ptr %i.l, align 8, !tbaa !45
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load <2 x i64>, ptr %i.m, align 8, !tbaa !34
  store <2 x i64> %i.o, ptr %i.n, align 8, !tbaa !34
  %i.p = trunc i64 %i.h to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i32 %i.p, ptr %i.q, align 8, !tbaa !49
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !50   ; 5 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !50   ; 3 uses
  %.not2021 = icmp eq ptr %i.r, %i.s
  br i1 %.not2021, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = ptrtoaddr ptr %i.r to i64
  %1 = getelementptr inbounds nuw i8, ptr %i.l, i64 28 ; 3 uses
  %i.v = add i64 %i.t, -4
  %i.w = sub i64 %i.v, %i.u                       ; 2 uses
  %i.x = lshr i64 %i.w, 2
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.w, 28
  br i1 %min.iters.check, label %.lr.ph.preheader28, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.y, 9223372036854775800      ; 3 uses
  %i.z = shl i64 %n.vec, 2                        ; 2 uses
  %i.aa = getelementptr i8, ptr %1, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.r, i64 %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.ac ; 2 uses
  %next.gep25 = getelementptr i8, ptr %i.r, i64 %i.ac ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep25, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep25, align 4, !tbaa !51
  %wide.load26 = load <4 x i32>, ptr %i.ad, align 4, !tbaa !51
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !51
  store <4 x i32> %wide.load26, ptr %i.ae, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !82

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader28

.lr.ph.preheader28:                               ; preds = %.lr.ph.preheader, %middle.block
  %.023.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.aa, %middle.block ]
  %.sroa.017.022.ph = phi ptr [ %i.r, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.l, ptr %i.ag, align 8, !tbaa !54
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !46
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !46
  ret ptr %i.l

.lr.ph:                                           ; preds = %.lr.ph.preheader28, %.lr.ph
  %.023 = phi ptr [ %i.al, %.lr.ph ], [ %.023.ph, %.lr.ph.preheader28 ] ; 2 uses
  %.sroa.017.022 = phi ptr [ %i.am, %.lr.ph ], [ %.sroa.017.022.ph, %.lr.ph.preheader28 ] ; 2 uses
  %i.ak = load i32, ptr %.sroa.017.022, align 4, !tbaa !51
  %i.al = getelementptr inbounds nuw i8, ptr %.023, i64 4
  store i32 %i.ak, ptr %.023, align 4, !tbaa !51
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.017.022, i64 4 ; 2 uses
  %.not20 = icmp eq ptr %i.am, %i.s
  br i1 %.not20, label %._crit_edge, label %.lr.ph, !llvm.loop !83
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i64 @_ZN7CaDiCaL11IdrupTracer12compute_hashEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) %0, i64 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = and i64 %1, 3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.a
  %i.d = load i64, ptr %i.c, align 8, !tbaa !34
  %i.e = mul i64 %i.d, %1                         ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.e, ptr %i.f, align 8, !tbaa !55
  ret i64 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7CaDiCaL11IdrupTracer15find_and_deleteEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %1, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.c
  %i.f = load i64, ptr %i.e, align 8, !tbaa !34
  %i.g = mul i64 %i.f, %1                         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.g, ptr %i.h, align 8, !tbaa !55
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !40   ; 3 uses
  %i.k = icmp ult i64 %i.j, 4294967296
  br i1 %i.k, label %.lr.ph.i, label %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.l = phi i64 [ %i.p, %.lr.ph.i ], [ 32, %bb.b ]
  %.014.i = phi i64 [ %i.n, %.lr.ph.i ], [ %i.g, %bb.b ] ; 2 uses
  %.01013.i = phi i32 [ %i.o, %.lr.ph.i ], [ 32, %bb.b ]
  %i.m = lshr i64 %.014.i, %i.l
  %i.n = xor i64 %i.m, %.014.i                    ; 2 uses
  %i.o = lshr i32 %.01013.i, 1                    ; 2 uses
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %.highbits.i = lshr i64 %i.j, %i.p
  %i.q = icmp eq i64 %.highbits.i, 0
  br i1 %i.q, label %.lr.ph.i, label %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit, !llvm.loop !0

_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit:    ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi i64 [ %i.g, %bb.b ], [ %i.n, %.lr.ph.i ]
  %i.r = add i64 %i.j, -1
  %i.s = and i64 %.0.lcssa.i, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s ; 2 uses
  %.pr = load ptr, ptr %i.v, align 8, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit
  %i.w = phi ptr [ %i.ad, %bb.f ], [ %.pr, %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit ] ; 9 uses
  %.021 = phi ptr [ %i.w, %bb.f ], [ %i.v, %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit ]
  %.not25 = icmp eq ptr %i.w, null
  br i1 %.not25, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !47
  %i.z = icmp eq i64 %i.y, %i.g
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !86
  %i.ac = icmp eq i64 %i.ab, %1
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !42  ; 2 uses
  %.not26 = icmp eq ptr %i.ad, null
  br i1 %.not26, label %.critedge, label %bb.c, !llvm.loop !84

bb.g:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !45
  store ptr %i.ae, ptr %.021, align 8, !tbaa !42
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !49
  %.not30 = icmp eq i32 %i.ah, 0
  br i1 %.not30, label %_ZN7CaDiCaL11IdrupTracer13delete_clauseEPNS_11IdrupClauseE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.pre = load ptr, ptr %i.aj, align 8, !tbaa !48
  %.pre33 = load ptr, ptr %i.ak, align 8, !tbaa !56
  br label %bb.h

_ZN7CaDiCaL11IdrupTracer13delete_clauseEPNS_11IdrupClauseE.exit.loopexit: ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.pre34 = load i64, ptr %i.a, align 8, !tbaa !46
  br label %_ZN7CaDiCaL11IdrupTracer13delete_clauseEPNS_11IdrupClauseE.exit

_ZN7CaDiCaL11IdrupTracer13delete_clauseEPNS_11IdrupClauseE.exit: ; preds = %_ZN7CaDiCaL11IdrupTracer13delete_clauseEPNS_11IdrupClauseE.exit.loopexit, %bb.g
  %i.al = phi i64 [ %.pre34, %_ZN7CaDiCaL11IdrupTracer13delete_clauseEPNS_11IdrupClauseE.exit.loopexit ], [ %i.b, %bb.g ]
  %i.am = add i64 %i.al, -1
  store i64 %i.am, ptr %i.a, align 8, !tbaa !46
  tail call void @_ZdaPv(ptr noundef nonnull %i.w) #16
  br label %.critedge

bb.h:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.an = phi ptr [ %.pre33, %.lr.ph ], [ %i.bj, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %i.ao = phi ptr [ %.pre, %.lr.ph ], [ %i.bk, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 3 uses
  %.029 = phi i64 [ 0, %.lr.ph ], [ %i.bl, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.029 ; 2 uses
  %.not.i = icmp eq ptr %i.ao, %i.an
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !51
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !51
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !48
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.j:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %i.ai, align 8, !tbaa !35 ; 4 uses
  %i.at = ptrtoint ptr %i.an to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 5 uses
  %i.aw = icmp eq i64 %i.av, 9223372036854775804
  br i1 %i.aw, label %bb.k, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.25) #19
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.ax = ashr exact i64 %i.av, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 1)
  %i.ay = add nsw i64 %.sroa.speculated.i.i.i, %i.ax ; 2 uses
  %i.az = icmp ult i64 %i.ay, %i.ax
  %i.ba = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 2305843009213693951)
  %i.bb = select i1 %i.az, i64 2305843009213693951, i64 %i.ba ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bc = shl nuw nsw i64 %i.bb, 2
  %i.bd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #18 ; 4 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %i.av ; 2 uses
  %i.bf = load i32, ptr %i.ap, align 4, !tbaa !51
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !51
  %i.bg = icmp sgt i64 %i.av, 0
  br i1 %i.bg, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bd, ptr align 4 %i.as, i64 %i.av, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.l, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.as) #16
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.bd, ptr %i.ai, align 8, !tbaa !35
  store ptr %i.bh, ptr %i.aj, align 8, !tbaa !48
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bb ; 2 uses
  store ptr %i.bi, ptr %i.ak, align 8, !tbaa !56
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.bj = phi ptr [ %i.an, %bb.i ], [ %i.bi, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.bk = phi ptr [ %i.ar, %bb.i ], [ %i.bh, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ]
  %i.bl = add nuw nsw i64 %.029, 1                ; 2 uses
  %i.bm = load i32, ptr %i.ag, align 8, !tbaa !49
  %i.bn = zext i32 %i.bm to i64
  %i.bo = icmp samesign ult i64 %i.bl, %i.bn
  br i1 %i.bo, label %bb.h, label %_ZN7CaDiCaL11IdrupTracer13delete_clauseEPNS_11IdrupClauseE.exit.loopexit, !llvm.loop !85

.critedge:                                        ; preds = %bb.c, %bb.f, %_ZN7CaDiCaL11IdrupTracer13delete_clauseEPNS_11IdrupClauseE.exit, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %_ZN7CaDiCaL11IdrupTracer13delete_clauseEPNS_11IdrupClauseE.exit ], [ false, %bb.f ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL11IdrupTracer6insertEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(208) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL11IdrupTracer15enlarge_clausesEv(ptr noundef nonnull align 8 dereferenceable(208) %0)
  %.pre = load i64, ptr %i.c, align 8, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i64 [ %.pre, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !tbaa !57   ; 2 uses
  %i.i = and i64 %i.h, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !34
  %i.m = mul i64 %i.l, %i.h                       ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store i64 %i.m, ptr %i.n, align 8, !tbaa !55
  %i.o = icmp ult i64 %i.f, 4294967296
  br i1 %i.o, label %.lr.ph.i, label %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.p = phi i64 [ %i.t, %.lr.ph.i ], [ 32, %bb.c ]
  %.014.i = phi i64 [ %i.r, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %.01013.i = phi i32 [ %i.s, %.lr.ph.i ], [ 32, %bb.c ]
  %i.q = lshr i64 %.014.i, %i.p
  %i.r = xor i64 %i.q, %.014.i                    ; 2 uses
  %i.s = lshr i32 %.01013.i, 1                    ; 2 uses
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %.highbits.i = lshr i64 %i.f, %i.t
  %i.u = icmp eq i64 %.highbits.i, 0
  br i1 %i.u, label %.lr.ph.i, label %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit, !llvm.loop !0

_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit:    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %i.m, %bb.c ], [ %i.r, %.lr.ph.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48   ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !35   ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2                 ; 2 uses
  %.not.i = icmp ne ptr %i.x, %i.y
  %.neg.i = zext i1 %.not.i to i64
  %i.ad = add nsw i64 %i.ac, %.neg.i
  %i.ae = shl i64 %i.ad, 2
  %i.af = add i64 %i.ae, 32
  %i.ag = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.af) #18 ; 7 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !45
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load <2 x i64>, ptr %i.n, align 8, !tbaa !34
  store <2 x i64> %i.ai, ptr %i.ah, align 8, !tbaa !34
  %i.aj = trunc i64 %i.ac to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !49
  %i.al = load ptr, ptr %i.v, align 8, !tbaa !50  ; 5 uses
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !50  ; 3 uses
  %.not2021.i = icmp eq ptr %i.al, %i.am
  br i1 %.not2021.i, label %_ZN7CaDiCaL11IdrupTracer10new_clauseEv.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit
  %i.an = ptrtoaddr ptr %i.am to i64
  %i.ao = ptrtoaddr ptr %i.al to i64
  %1 = getelementptr inbounds nuw i8, ptr %i.ag, i64 28 ; 3 uses
  %i.ap = add i64 %i.an, -4
  %i.aq = sub i64 %i.ap, %i.ao                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 28
  br i1 %min.iters.check, label %.lr.ph.i4.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.as, 9223372036854775800     ; 3 uses
  %i.at = shl i64 %n.vec, 2                       ; 2 uses
  %i.au = getelementptr i8, ptr %1, i64 %i.at
  %i.av = getelementptr i8, ptr %i.al, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.aw ; 2 uses
  %next.gep8 = getelementptr i8, ptr %i.al, i64 %i.aw ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep8, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep8, align 4, !tbaa !51
  %wide.load9 = load <4 x i32>, ptr %i.ax, align 4, !tbaa !51
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !51
  store <4 x i32> %wide.load9, ptr %i.ay, align 4, !tbaa !51
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZN7CaDiCaL11IdrupTracer10new_clauseEv.exit, label %.lr.ph.i4.preheader

.lr.ph.i4.preheader:                              ; preds = %.lr.ph.preheader.i, %middle.block
  %.023.i.ph = phi ptr [ %1, %.lr.ph.preheader.i ], [ %i.au, %middle.block ]
  %.sroa.017.022.i.ph = phi ptr [ %i.al, %.lr.ph.preheader.i ], [ %i.av, %middle.block ]
  br label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.lr.ph.i4.preheader, %.lr.ph.i4
  %.023.i = phi ptr [ %i.bb, %.lr.ph.i4 ], [ %.023.i.ph, %.lr.ph.i4.preheader ] ; 2 uses
  %.sroa.017.022.i = phi ptr [ %i.bc, %.lr.ph.i4 ], [ %.sroa.017.022.i.ph, %.lr.ph.i4.preheader ] ; 2 uses
  %i.ba = load i32, ptr %.sroa.017.022.i, align 4, !tbaa !51
  %i.bb = getelementptr inbounds nuw i8, ptr %.023.i, i64 4
  store i32 %i.ba, ptr %.023.i, align 4, !tbaa !51
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.017.022.i, i64 4 ; 2 uses
  %.not20.i = icmp eq ptr %i.bc, %i.am
  br i1 %.not20.i, label %_ZN7CaDiCaL11IdrupTracer10new_clauseEv.exit, label %.lr.ph.i4, !llvm.loop !88

_ZN7CaDiCaL11IdrupTracer10new_clauseEv.exit:      ; preds = %.lr.ph.i4, %middle.block, %_ZN7CaDiCaL11IdrupTracer11reduce_hashEmm.exit
  %i.bd = add i64 %i.f, -1
  %i.be = and i64 %.0.lcssa.i, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.ag, ptr %i.bf, align 8, !tbaa !54
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !46
  %i.bh = add i64 %i.bg, 1
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !46
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !41
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %i.be ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !42
  store ptr %i.bl, ptr %i.ag, align 8, !tbaa !45
  store ptr %i.ag, ptr %i.bk, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL11IdrupTracer25idrup_add_restored_clauseERKSt6vectorIiSaIiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !33, !range !58, !noundef !59
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
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
  %i.m = tail call i32 @__overflow(ptr noundef nonnull %i.g, i32 noundef 114), !inline_history !1
  %.not.i = icmp eq i32 %i.m, -1
  br i1 %.not.i, label %_ZN7CaDiCaL4File3putEc.exit, label %bb.c

bb.c:                                             ; preds = %putc_unlocked.exit.i, %putc_unlocked.exit.thread.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !70
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !70
  br label %_ZN7CaDiCaL4File3putEc.exit

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 4 uses
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
  %i.x = tail call i32 @__overflow(ptr noundef nonnull %i.r, i32 noundef 114), !inline_history !1
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
  %i.af = tail call i32 @__overflow(ptr noundef nonnull %i.aa, i32 noundef 32), !inline_history !1
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
  %i.aj = load ptr, ptr %1, align 8, !tbaa !50    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !50 ; 2 uses
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
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 3 uses
  br i1 %i.ao, label %bb.k, label %bb.m

bb.g:                                             ; preds = %.lr.ph, %_ZN7CaDiCaL11IdrupTracer14put_binary_litEi.exit
  %.sroa.031.035 = phi ptr [ %i.aj, %.lr.ph ], [ %i.cp, %_ZN7CaDiCaL11IdrupTracer14put_binary_litEi.exit ] ; 3 uses
  %i.as = load i8, ptr %i.a, align 8, !tbaa !33, !range !58, !noundef !59
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.au = load i32, ptr %.sroa.031.035, align 4, !tbaa !51 ; 2 uses
  %i.av = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true)
  %i.aw = tail call i32 @llvm.fshl.i32(i32 %i.av, i32 %i.au, i32 1) ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 127
  br i1 %i.ax, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h, %_ZN7CaDiCaL4File3putEh.exit.i
  %.013.i = phi i32 [ %i.bn, %_ZN7CaDiCaL4File3putEh.exit.i ], [ %i.aw, %bb.h ] ; 3 uses
  %i.ay = trunc i32 %.013.i to i8
  %i.az = or i8 %i.ay, -128                       ; 2 uses
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !60 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !66 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !67
  %.not.i.i.i8 = icmp ult ptr %i.be, %i.bg
  br i1 %.not.i.i.i8, label %putc_unlocked.exit.thread.i.i11, label %putc_unlocked.exit.i.i9, !prof !68

putc_unlocked.exit.thread.i.i11:                  ; preds = %.lr.ph.i
end_hunk_0
