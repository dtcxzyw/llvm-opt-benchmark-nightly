Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/XMPUtils?download=true
inline.NumInlined: 806
inline.NumDeleted: 389
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8XMPUtils14ConvertToFloatEPKc:bb.a
bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.z = select i1 %i.p, ptr %i.x, ptr %i.y
  %i.aa = call ptr @setlocale(i32 noundef 6, ptr noundef %i.z) #26 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not11 = icmp eq i32 %i.n, 0
  br i1 %.not11, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14
  %.not12 = icmp eq i8 %i.ac, 0
  br i1 %.not12, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ad = call ptr @__cxa_allocate_exception(i64 24) #26 ; 4 uses
  store i32 4, ptr %i.ad, align 8, !tbaa !17
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr @.str.40, ptr %i.ae, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i8 0, ptr %i.af, align 8, !tbaa !19
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTI9XMP_Error, ptr null) #27
          to label %bb.r unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ah = load i8, ptr %1, align 8
  %i.ai = trunc i8 %i.ah to i1
  br i1 %i.ai, label %bb.o, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !14
  call void @_ZdlPv(ptr noundef %i.ak) #25
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  ret double %i.m

bb.p:                                             ; preds = %bb.m, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.m ], [ %i.k, %bb.g ]
  %i.al = load i8, ptr %1, align 8
  %i.am = trunc i8 %i.al to i1
  br i1 %i.am, label %bb.q, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit14

bb.q:                                             ; preds = %bb.p
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !14
  call void @_ZdlPv(ptr noundef %i.ao) #25
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit14

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit14: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  resume { ptr, i32 } %.pn

bb.r:                                             ; preds = %bb.l
  unreachable
}

; Function Attrs: nounwind
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8XMPUtils13ConvertToDateEPKcP12XMP_DateTime(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !14
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 4 uses
  store i32 5, ptr %i.d, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @.str.25, ptr %i.e, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 0, ptr %i.f, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTI9XMP_Error, ptr null) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  %i.g = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28 ; 2 uses
  %i.h = load i8, ptr %0, align 1, !tbaa !14
  %i.i = icmp eq i8 %i.h, 84
  br i1 %i.i, label %.thread269.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp ugt i64 %i.g, 1
  br i1 %i.j, label %bb.f, label %.thread268

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !14
  %i.m = icmp eq i8 %i.l, 58
  br i1 %i.m, label %.thread273, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not = icmp eq i64 %i.g, 2
  br i1 %.not, label %.thread268, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14
  %i.p = icmp eq i8 %i.o, 58
  br i1 %i.p, label %.thread, label %.thread268

.thread268:                                       ; preds = %bb.e, %bb.g, %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.q, align 4, !tbaa !30
  %i.r = load i8, ptr %0, align 1, !tbaa !14
  %i.s = icmp eq i8 %i.r, 45                      ; 2 uses
  %spec.select275 = zext i1 %i.s to i64           ; 3 uses
  %.0.in23.i = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select275
  %.024.i = load i8, ptr %.0.in23.i, align 1, !tbaa !14 ; 2 uses
  %i.t = add i8 %.024.i, -48
  %i.u = icmp ult i8 %i.t, 10
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.thread.i

._crit_edge.i:                                    ; preds = %bb.j
  %.0.in.i.le = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  %i.v = icmp eq i64 %i.ae, %spec.select275
  br i1 %i.v, label %._crit_edge.thread.i, label %_ZL9GatherIntPKcPmS0_.exit

.lr.ph.i:                                         ; preds = %.thread268, %bb.j
  %.027.i = phi i8 [ %.0.i, %bb.j ], [ %.024.i, %.thread268 ]
  %.01726.i = phi i64 [ %i.z, %bb.j ], [ 0, %.thread268 ]
  %.01825.i = phi i64 [ %i.ae, %bb.j ], [ %spec.select275, %.thread268 ] ; 2 uses
  %i.w = zext nneg i8 %.027.i to i64
  %i.x = mul nsw i64 %.01726.i, 10
  %i.y = add nsw i64 %i.w, -48
  %i.z = add i64 %i.y, %i.x                       ; 3 uses
  %i.aa = icmp sgt i64 %i.z, 2147483647
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.ab = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 4 uses
  store i32 5, ptr %i.ab, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @.str.41, ptr %i.ac, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i8 0, ptr %i.ad, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTI9XMP_Error, ptr null) #27
  unreachable

bb.j:                                             ; preds = %.lr.ph.i
  %i.ae = add i64 %.01825.i, 1                    ; 4 uses
  %.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.ae
  %.0.i = load i8, ptr %.0.in.i, align 1, !tbaa !14 ; 3 uses
  %i.af = add i8 %.0.i, -48
  %i.ag = icmp ult i8 %i.af, 10
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !83

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %.thread268
  %i.ah = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 4 uses
  store i32 4, ptr %i.ah, align 8, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr @.str.41, ptr %i.ai, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i8 0, ptr %i.aj, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.ah, ptr nonnull @_ZTI9XMP_Error, ptr null) #27
  unreachable

_ZL9GatherIntPKcPmS0_.exit:                       ; preds = %._crit_edge.i
  switch i8 %.0.i, label %bb.k [
    i8 0, label %bb.l
    i8 45, label %bb.l
  ]

bb.k:                                             ; preds = %_ZL9GatherIntPKcPmS0_.exit
  %i.ak = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 4 uses
  store i32 4, ptr %i.ak, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @.str.42, ptr %i.al, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i8 0, ptr %i.am, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.ak, ptr nonnull @_ZTI9XMP_Error, ptr null) #27
  unreachable

bb.l:                                             ; preds = %_ZL9GatherIntPKcPmS0_.exit, %_ZL9GatherIntPKcPmS0_.exit
  %i.an = trunc i64 %i.z to i32                   ; 4 uses
  %i.ao = sub nsw i32 0, %i.an
  %spec.select = select i1 %i.s, i32 %i.ao, i32 %i.an
  store i32 %spec.select, ptr %1, align 4, !tbaa !29
  %i.ap = load i8, ptr %.0.in.i.le, align 1, !tbaa !14
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %bb.bo, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = add i64 %.01825.i, 2                    ; 3 uses
  %.0.in23.i146 = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  %.024.i147 = load i8, ptr %.0.in23.i146, align 1, !tbaa !14 ; 2 uses
  %i.as = add i8 %.024.i147, -48
  %i.at = icmp ult i8 %i.as, 10
  br i1 %i.at, label %.lr.ph.i149, label %._crit_edge.thread.i148

._crit_edge.i155:                                 ; preds = %bb.o
  %.0.in.i153.le = getelementptr inbounds nuw i8, ptr %0, i64 %i.bd
  %i.au = icmp eq i64 %i.bd, %i.ar
  br i1 %i.au, label %._crit_edge.thread.i148, label %_ZL9GatherIntPKcPmS0_.exit156

.lr.ph.i149:                                      ; preds = %bb.m, %bb.o
  %.027.i150 = phi i8 [ %.0.i154, %bb.o ], [ %.024.i147, %bb.m ]
  %.01726.i151 = phi i64 [ %i.ay, %bb.o ], [ 0, %bb.m ]
  %.01825.i152 = phi i64 [ %i.bd, %bb.o ], [ %i.ar, %bb.m ] ; 2 uses
  %i.av = zext nneg i8 %.027.i150 to i64
  %i.aw = mul nsw i64 %.01726.i151, 10
  %i.ax = add nsw i64 %i.av, -48
  %i.ay = add i64 %i.ax, %i.aw                    ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 2147483647
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i149
  %i.ba = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 4 uses
  store i32 5, ptr %i.ba, align 8, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr @.str.43, ptr %i.bb, align 8, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i8 0, ptr %i.bc, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.ba, ptr nonnull @_ZTI9XMP_Error, ptr null) #27
  unreachable

bb.o:                                             ; preds = %.lr.ph.i149
  %i.bd = add i64 %.01825.i152, 1                 ; 4 uses
  %.0.in.i153 = getelementptr inbounds nuw i8, ptr %0, i64 %i.bd
  %.0.i154 = load i8, ptr %.0.in.i153, align 1, !tbaa !14 ; 3 uses
  %i.be = add i8 %.0.i154, -48
  %i.bf = icmp ult i8 %i.be, 10
  br i1 %i.bf, label %.lr.ph.i149, label %._crit_edge.i155, !llvm.loop !83

._crit_edge.thread.i148:                          ; preds = %._crit_edge.i155, %bb.m
  %i.bg = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 4 uses
  store i32 4, ptr %i.bg, align 8, !tbaa !17
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr @.str.43, ptr %i.bh, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i8 0, ptr %i.bi, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTI9XMP_Error, ptr null) #27
  unreachable

_ZL9GatherIntPKcPmS0_.exit156:                    ; preds = %._crit_edge.i155
  switch i8 %.0.i154, label %bb.p [
    i8 0, label %bb.q
    i8 45, label %bb.q
  ]

bb.p:                                             ; preds = %_ZL9GatherIntPKcPmS0_.exit156
  %i.bj = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 4 uses
  store i32 4, ptr %i.bj, align 8, !tbaa !17
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr @.str.44, ptr %i.bk, align 8, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i8 0, ptr %i.bl, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.bj, ptr nonnull @_ZTI9XMP_Error, ptr null) #27
  unreachable

bb.q:                                             ; preds = %_ZL9GatherIntPKcPmS0_.exit156, %_ZL9GatherIntPKcPmS0_.exit156
  %i.bm = trunc i64 %i.ay to i32                  ; 2 uses
  %.not123 = icmp eq i32 %i.an, 0
  %i.bn = tail call i32 @llvm.smax.i32(i32 %i.bm, i32 1)
  %spec.store.select6 = select i1 %.not123, i32 %i.bm, i32 %i.bn ; 3 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %spec.store.select6, i32 12)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 %spec.store.select, ptr %i.bo, align 4, !tbaa !35
  %i.bp = load i8, ptr %.0.in.i153.le, align 1, !tbaa !14
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.bo, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = add i64 %.01825.i152, 2                 ; 3 uses
  %.0.in23.i157 = getelementptr inbounds nuw i8, ptr %0, i64 %i.br
  %.024.i158 = load i8, ptr %.0.in23.i157, align 1, !tbaa !14 ; 2 uses
  %i.bs = add i8 %.024.i158, -48
  %i.bt = icmp ult i8 %i.bs, 10
  br i1 %i.bt, label %.lr.ph.i160, label %._crit_edge.thread.i159

._crit_edge.i166:                                 ; preds = %bb.t
  %.0.in.i164.le = getelementptr inbounds nuw i8, ptr %0, i64 %i.cd
  %i.bu = icmp eq i64 %i.cd, %i.br
  br i1 %i.bu, label %._crit_edge.thread.i159, label %_ZL9GatherIntPKcPmS0_.exit167

.lr.ph.i160:                                      ; preds = %bb.r, %bb.t
  %.027.i161 = phi i8 [ %.0.i165, %bb.t ], [ %.024.i158, %bb.r ]
  %.01726.i162 = phi i64 [ %i.by, %bb.t ], [ 0, %bb.r ]
  %.01825.i163 = phi i64 [ %i.cd, %bb.t ], [ %i.br, %bb.r ]
  %i.bv = zext nneg i8 %.027.i161 to i64
  %i.bw = mul nsw i64 %.01726.i162, 10
  %i.bx = add nsw i64 %i.bv, -48
  %i.by = add i64 %i.bx, %i.bw                    ; 3 uses
  %i.bz = icmp sgt i64 %i.by, 2147483647
  br i1 %i.bz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i160
  %i.ca = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 4 uses
  store i32 5, ptr %i.ca, align 8, !tbaa !17
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr @.str.45, ptr %i.cb, align 8, !tbaa !18
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i8 0, ptr %i.cc, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.ca, ptr nonnull @_ZTI9XMP_Error, ptr null) #27
  unreachable

bb.t:                                             ; preds = %.lr.ph.i160
  %i.cd = add i64 %.01825.i163, 1                 ; 6 uses
  %.0.in.i164 = getelementptr inbounds nuw i8, ptr %0, i64 %i.cd
  %.0.i165 = load i8, ptr %.0.in.i164, align 1, !tbaa !14 ; 3 uses
  %i.ce = add i8 %.0.i165, -48
  %i.cf = icmp ult i8 %i.ce, 10
  br i1 %i.cf, label %.lr.ph.i160, label %._crit_edge.i166, !llvm.loop !83

._crit_edge.thread.i159:                          ; preds = %._crit_edge.i166, %bb.r
  %i.cg = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 4 uses
  store i32 4, ptr %i.cg, align 8, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store ptr @.str.45, ptr %i.ch, align 8, !tbaa !18
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i8 0, ptr %i.ci, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.cg, ptr nonnull @_ZTI9XMP_Error, ptr null) #27
  unreachable

_ZL9GatherIntPKcPmS0_.exit167:                    ; preds = %._crit_edge.i166
  %i.cj = trunc i64 %i.by to i32                  ; 3 uses
  switch i8 %.0.i165, label %bb.u [
    i8 0, label %bb.v
    i8 84, label %bb.v
  ]

bb.u:                                             ; preds = %_ZL9GatherIntPKcPmS0_.exit167
  %i.ck = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 4 uses
  store i32 4, ptr %i.ck, align 8, !tbaa !17
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr @.str.46, ptr %i.cl, align 8, !tbaa !18
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store i8 0, ptr %i.cm, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.ck, ptr nonnull @_ZTI9XMP_Error, ptr null) #27
  unreachable

bb.v:                                             ; preds = %_ZL9GatherIntPKcPmS0_.exit167, %_ZL9GatherIntPKcPmS0_.exit167
  %spec.store.select2 = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 31)
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 %spec.store.select2, ptr %i.cn, align 4, !tbaa !36
  %i.co = load i8, ptr %.0.in.i164.le, align 1, !tbaa !14
  %i.cp = icmp eq i8 %i.co, 0
  br i1 %i.cp, label %bb.bo, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cq = or i32 %spec.store.select6, %i.cj
  %2 = or i32 %i.cq, %i.an
  %or.cond276 = icmp eq i32 %2, 0
  br i1 %or.cond276, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = icmp slt i32 %spec.store.select6, 1
  br i1 %i.cr, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 1, ptr %i.bo, align 4, !tbaa !35
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cs = icmp slt i32 %i.cj, 1
  br i1 %i.cs, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 1, ptr %i.cn, align 4, !tbaa !36
  br label %bb.ab

bb.ab:                                            ; preds = %bb.w, %bb.aa, %bb.z
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 %i.cd
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !14
  %i.cv = icmp eq i8 %i.cu, 84
  br i1 %i.cv, label %.thread269.thread, label %bb.ac

.thread:                                          ; preds = %bb.h
  %i.cw = load i8, ptr %0, align 1, !tbaa !14
  %i.cx = icmp eq i8 %i.cw, 84
  br i1 %i.cx, label %.thread269.thread, label %.thread273

.thread269.thread:                                ; preds = %.thread, %bb.d, %bb.ab
  %.1264271 = phi i64 [ 0, %bb.d ], [ %i.cd, %bb.ab ], [ 0, %.thread ]
  %i.cy = add i64 %.1264271, 1
  br label %.thread273

bb.ac:                                            ; preds = %bb.ab
  %i.cz = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 4 uses
  store i32 4, ptr %i.cz, align 8, !tbaa !17
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr @.str.47, ptr %i.da, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i8 0, ptr %i.db, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.cz, ptr nonnull @_ZTI9XMP_Error, ptr null) #27
  unreachable

.thread273:                                       ; preds = %.thread, %bb.f, %.thread269.thread
  %.2265 = phi i64 [ %i.cy, %.thread269.thread ], [ 0, %bb.f ], [ 0, %.thread ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 25
  store i8 1, ptr %i.dc, align 1, !tbaa !32
  %.0.in23.i168 = getelementptr inbounds nuw i8, ptr %0, i64 %.2265
  %.024.i169 = load i8, ptr %.0.in23.i168, align 1, !tbaa !14 ; 2 uses
  %i.dd = add i8 %.024.i169, -48
  %i.de = icmp ult i8 %i.dd, 10
  br i1 %i.de, label %.lr.ph.i171, label %._crit_edge.thread.i170

._crit_edge.i177:                                 ; preds = %bb.ae
  %i.df = icmp eq i64 %i.do, %.2265
  br i1 %i.df, label %._crit_edge.thread.i170, label %_ZL9GatherIntPKcPmS0_.exit178

.lr.ph.i171:                                      ; preds = %.thread273, %bb.ae
  %.027.i172 = phi i8 [ %.0.i176, %bb.ae ], [ %.024.i169, %.thread273 ]
  %.01726.i173 = phi i64 [ %i.dj, %bb.ae ], [ 0, %.thread273 ]
  %.01825.i174 = phi i64 [ %i.do, %bb.ae ], [ %.2265, %.thread273 ] ; 2 uses
  %i.dg = zext nneg i8 %.027.i172 to i64
  %i.dh = mul nsw i64 %.01726.i173, 10
  %i.di = add nsw i64 %i.dg, -48
  %i.dj = add i64 %i.di, %i.dh                    ; 3 uses
  %i.dk = icmp sgt i64 %i.dj, 2147483647
  br i1 %i.dk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i171
  %i.dl = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 4 uses
  store i32 5, ptr %i.dl, align 8, !tbaa !17
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr @.str.48, ptr %i.dm, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store i8 0, ptr %i.dn, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.dl, ptr nonnull @_ZTI9XMP_Error, ptr null) #27
  unreachable

bb.ae:                                            ; preds = %.lr.ph.i171
  %i.do = add i64 %.01825.i174, 1                 ; 3 uses
  %.0.in.i175 = getelementptr inbounds nuw i8, ptr %0, i64 %i.do
  %.0.i176 = load i8, ptr %.0.in.i175, align 1, !tbaa !14 ; 3 uses
  %i.dp = add i8 %.0.i176, -48
  %i.dq = icmp ult i8 %i.dp, 10
  br i1 %i.dq, label %.lr.ph.i171, label %._crit_edge.i177, !llvm.loop !83

._crit_edge.thread.i170:                          ; preds = %._crit_edge.i177, %.thread273
  %i.dr = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 4 uses
  store i32 4, ptr %i.dr, align 8, !tbaa !17
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr @.str.48, ptr %i.ds, align 8, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store i8 0, ptr %i.dt, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTI9XMP_Error, ptr null) #27
  unreachable

_ZL9GatherIntPKcPmS0_.exit178:                    ; preds = %._crit_edge.i177
  %.not129 = icmp eq i8 %.0.i176, 58
  br i1 %.not129, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_ZL9GatherIntPKcPmS0_.exit178
  %i.du = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 4 uses
  store i32 4, ptr %i.du, align 8, !tbaa !17
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr @.str.49, ptr %i.dv, align 8, !tbaa !18
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store i8 0, ptr %i.dw, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.du, ptr nonnull @_ZTI9XMP_Error, ptr null) #27
  unreachable

bb.ag:                                            ; preds = %_ZL9GatherIntPKcPmS0_.exit178
  %i.dx = trunc i64 %i.dj to i32
  %spec.store.select3 = tail call i32 @llvm.smin.i32(i32 %i.dx, i32 23)
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %spec.store.select3, ptr %i.dy, align 4, !tbaa !31
  %i.dz = add i64 %.01825.i174, 2                 ; 3 uses
  %.0.in23.i179 = getelementptr inbounds nuw i8, ptr %0, i64 %i.dz
  %.024.i180 = load i8, ptr %.0.in23.i179, align 1, !tbaa !14 ; 2 uses
  %i.ea = add i8 %.024.i180, -48
  %i.eb = icmp ult i8 %i.ea, 10
  br i1 %i.eb, label %.lr.ph.i182, label %._crit_edge.thread.i181

._crit_edge.i188:                                 ; preds = %bb.ai
  %.0.in.i186.le = getelementptr inbounds nuw i8, ptr %0, i64 %i.el
  %i.ec = icmp eq i64 %i.el, %i.dz
  br i1 %i.ec, label %._crit_edge.thread.i181, label %_ZL9GatherIntPKcPmS0_.exit189

.lr.ph.i182:                                      ; preds = %bb.ag, %bb.ai
  %.027.i183 = phi i8 [ %.0.i187, %bb.ai ], [ %.024.i180, %bb.ag ]
  %.01726.i184 = phi i64 [ %i.eg, %bb.ai ], [ 0, %bb.ag ]
  %.01825.i185 = phi i64 [ %i.el, %bb.ai ], [ %i.dz, %bb.ag ] ; 2 uses
  %i.ed = zext nneg i8 %.027.i183 to i64
  %i.ee = mul nsw i64 %.01726.i184, 10
  %i.ef = add nsw i64 %i.ed, -48
  %i.eg = add i64 %i.ef, %i.ee                    ; 3 uses
  %i.eh = icmp sgt i64 %i.eg, 2147483647
  br i1 %i.eh, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i182
  %i.ei = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 4 uses
  store i32 5, ptr %i.ei, align 8, !tbaa !17
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr @.str.50, ptr %i.ej, align 8, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i8 0, ptr %i.ek, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.ei, ptr nonnull @_ZTI9XMP_Error, ptr null) #27
  unreachable

bb.ai:                                            ; preds = %.lr.ph.i182
  %i.el = add i64 %.01825.i185, 1                 ; 5 uses
  %.0.in.i186 = getelementptr inbounds nuw i8, ptr %0, i64 %i.el
  %.0.i187 = load i8, ptr %.0.in.i186, align 1, !tbaa !14 ; 3 uses
  %i.em = add i8 %.0.i187, -48
  %i.en = icmp ult i8 %i.em, 10
  br i1 %i.en, label %.lr.ph.i182, label %._crit_edge.i188, !llvm.loop !83

._crit_edge.thread.i181:                          ; preds = %._crit_edge.i188, %bb.ag
  %i.eo = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 4 uses
  store i32 4, ptr %i.eo, align 8, !tbaa !17
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store ptr @.str.50, ptr %i.ep, align 8, !tbaa !18
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store i8 0, ptr %i.eq, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.eo, ptr nonnull @_ZTI9XMP_Error, ptr null) #27
  unreachable

_ZL9GatherIntPKcPmS0_.exit189:                    ; preds = %._crit_edge.i188
  switch i8 %.0.i187, label %bb.aj [
    i8 58, label %bb.ak
    i8 90, label %bb.ak
    i8 43, label %bb.ak
    i8 45, label %bb.ak
    i8 0, label %bb.ak
  ]

bb.aj:                                            ; preds = %_ZL9GatherIntPKcPmS0_.exit189
  %i.er = tail call ptr @__cxa_allocate_exception(i64 24) #26 ; 4 uses
  store i32 4, ptr %i.er, align 8, !tbaa !17
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store ptr @.str.51, ptr %i.es, align 8, !tbaa !18
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store i8 0, ptr %i.et, align 8, !tbaa !19
  tail call void @__cxa_throw(ptr nonnull %i.er, ptr nonnull @_ZTI9XMP_Error, ptr null) #27
  unreachable

bb.ak:                                            ; preds = %_ZL9GatherIntPKcPmS0_.exit189, %_ZL9GatherIntPKcPmS0_.exit189, %_ZL9GatherIntPKcPmS0_.exit189, %_ZL9GatherIntPKcPmS0_.exit189, %_ZL9GatherIntPKcPmS0_.exit189
  %i.eu = trunc i64 %i.eg to i32
  %spec.store.select4 = tail call i32 @llvm.smin.i32(i32 %i.eu, i32 59)
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %spec.store.select4, ptr %i.ev, align 4, !tbaa !39
  %i.ew = load i8, ptr %.0.in.i186.le, align 1, !tbaa !14 ; 2 uses
  %i.ex = icmp eq i8 %i.ew, 58
  br i1 %i.ex, label %bb.al, label %bb.aw

bb.al:                                            ; preds = %bb.ak
  %i.ey = add i64 %.01825.i185, 2                 ; 3 uses
  %.0.in23.i190 = getelementptr inbounds nuw i8, ptr %0, i64 %i.ey
  %.024.i191 = load i8, ptr %.0.in23.i190, align 1, !tbaa !14 ; 2 uses
  %i.ez = add i8 %.024.i191, -48
end_hunk_0
