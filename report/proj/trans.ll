Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/trans?download=true
inline.NumInlined: 143
inline.NumDeleted: 83
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@proj_trans:bb.a
bb.dk:                                            ; preds = %bb.dj
  %i.ls = call noundef zeroext i1 @_Z8pj_fwd4dR8PJ_COORDP8PJconsts(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %1) ; 0 uses
  br label %bb.dm

bb.dl:                                            ; preds = %bb.dj
  %i.lt = call noundef zeroext i1 @_Z8pj_inv4dR8PJ_COORDP8PJconsts(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %1) ; 0 uses
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dk, %bb.dl, %bb.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !22
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dd, %bb.g, %bb.b
  ret void
}

declare noundef i32 @_Z21pj_opposite_direction12PJ_DIRECTION(i32 noundef) local_unnamed_addr #2

declare i32 @proj_errno_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_Z16proj_coord_errorv(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8) local_unnamed_addr #2

declare i32 @proj_errno_reset(ptr noundef) local_unnamed_addr #2

declare i32 @proj_log_level(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @proj_context_errno_string(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0 align 2

declare noundef zeroext i1 @_Z8pj_inv4dR8PJ_COORDP8PJconsts(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

declare i32 @proj_errno(ptr noundef) local_unnamed_addr #2

declare void @_ZN14projCppContext18getDatabaseContextEv(ptr dead_on_unwind writable sret(%"class.dropbox::oxygen::nn") align 8, ptr noundef nonnull align 8 dereferenceable(272)) local_unnamed_addr #2

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #3

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define ptr @proj_trans_get_last_used_operation(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.c = load i32, ptr %i.b, align 8, !tbaa !54   ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.i = icmp eq ptr %i.f, %i.h
  %i.j = load ptr, ptr %0, align 8, !tbaa !49
  br i1 %i.i, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.c to i64
  %i.l = getelementptr inbounds nuw [192 x i8], ptr %i.f, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !55
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d
  %.sink = phi ptr [ %i.n, %bb.d ], [ %0, %bb.c ]
  %i.o = tail call ptr @proj_clone(ptr noundef %i.j, ptr noundef %.sink)
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %i.o, %.sink.split ]
  ret ptr %.0
}

declare ptr @proj_clone(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i32 @proj_trans_array(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %union.PJ_COORD, align 8            ; 4 uses
  %.not32 = icmp eq i64 %2, 0
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.031 = phi i1 [ %.1, %.lr.ph ], [ true, %bb.a ] ; 2 uses
  %.01930 = phi i1 [ %.120, %.lr.ph ], [ false, %bb.a ] ; 3 uses
  %.02129 = phi i32 [ %.122, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %.02328 = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !49
  call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %i.a, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %.02328 ; 2 uses
  call void @proj_trans(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %4, ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull byval(%union.PJ_COORD) align 8 %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.c = call i32 @proj_errno(ptr noundef nonnull %0) ; 3 uses
  %.not = icmp ne i32 %i.c, 0                     ; 3 uses
  %brmerge.not = select i1 %.not, i1 %.01930, i1 false
  %.not25 = icmp ne i32 %.02129, %i.c
  %or.cond.not = select i1 %.031, i1 %.not25, i1 false ; 2 uses
  %spec.select = select i1 %or.cond.not, i32 2048, i32 %.02129
  %.021.mux = select i1 %.01930, i32 %spec.select, i32 %i.c
  %.122 = select i1 %.not, i32 %.021.mux, i32 %.02129 ; 2 uses
  %.120 = select i1 %.not, i1 true, i1 %.01930
  %spec.select27 = select i1 %brmerge.not, i1 %or.cond.not, i1 false
  %.1 = xor i1 %.031, %spec.select27
  %i.d = add nuw i64 %.02328, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.d, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !122

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.021.lcssa = phi i32 [ 0, %bb.a ], [ %.122, %.lr.ph ] ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !49
  call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %i.e, i32 noundef %.021.lcssa)
  ret i32 %.021.lcssa
}

declare void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define i64 @proj_trans_generic(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef captures(address_is_null) %5, i64 noundef %6, i64 noundef %7, ptr nofree noundef captures(address_is_null) %8, i64 noundef %9, i64 noundef %10, ptr nofree noundef captures(address_is_null) %11, i64 noundef %12, i64 noundef %13) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %14 = alloca %union.PJ_COORD, align 8           ; 27 uses
  %15 = alloca %union.PJ_COORD, align 8           ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store double +inf, ptr %i.b, align 8, !tbaa !124
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i32, ptr %i.d, align 8, !tbaa !52
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef i32 @_Z21pj_opposite_direction12PJ_DIRECTION(i32 noundef %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.093 = phi i32 [ %i.f, %bb.c ], [ %1, %bb.b ]  ; 7 uses
  %i.g = icmp eq ptr %2, null
  %spec.select = select i1 %i.g, i64 0, i64 %4    ; 5 uses
  %i.h = icmp eq ptr %5, null
  %.097 = select i1 %i.h, i64 0, i64 %7           ; 6 uses
  %i.i = icmp eq ptr %8, null
  %.092 = select i1 %i.i, i64 0, i64 %10          ; 6 uses
  %i.j = icmp eq ptr %11, null
  %.087 = select i1 %i.j, i64 0, i64 %13          ; 6 uses
  %i.k = icmp eq i64 %spec.select, 0
  %.098 = select i1 %i.k, ptr %i.a, ptr %2        ; 12 uses
  %i.l = icmp eq i64 %.097, 0
  %.0101 = select i1 %i.l, ptr %i.a, ptr %5       ; 11 uses
  %i.m = icmp eq i64 %.092, 0
  %.094 = select i1 %i.m, ptr %i.a, ptr %8        ; 9 uses
  %i.n = icmp eq i64 %.087, 0
  %.089 = select i1 %i.n, ptr %i.b, ptr %11       ; 9 uses
  %i.o = add i64 %.097, %spec.select
  %i.p = add i64 %i.o, %.092
  %i.q = sub i64 0, %.087
  %i.r = icmp eq i64 %i.p, %i.q
  br i1 %i.r, label %bb.aa, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ugt i64 %spec.select, 1             ; 3 uses
  br i1 %i.s, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp ugt i64 %.097, 1
  br i1 %i.t, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp ugt i64 %.092, 1
  br i1 %i.u, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = tail call i64 @llvm.umax.i64(i64 %.087, i64 1)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.h
  %i.w = phi i64 [ %i.v, %bb.h ], [ %4, %bb.e ], [ %7, %bb.f ], [ %10, %bb.g ] ; 2 uses
  %i.x = tail call i64 @llvm.umin.i64(i64 %spec.select, i64 %i.w)
  %.0 = select i1 %i.s, i64 %i.x, i64 %i.w        ; 2 uses
  %i.y = icmp ugt i64 %.097, 1                    ; 3 uses
  %i.z = tail call i64 @llvm.umin.i64(i64 %.097, i64 %.0)
  %.1 = select i1 %i.y, i64 %i.z, i64 %.0         ; 3 uses
  %i.aa = icmp ugt i64 %.092, 1                   ; 4 uses
  %i.ab = tail call i64 @llvm.umin.i64(i64 %.092, i64 %.1) ; 2 uses
  %.2 = select i1 %i.aa, i64 %i.ab, i64 %.1       ; 4 uses
  %i.ac = icmp ugt i64 %.087, 1                   ; 5 uses
  %i.ad = tail call i64 @llvm.umin.i64(i64 %.087, i64 %.2) ; 5 uses
  %.3 = select i1 %i.ac, i64 %i.ad, i64 %.2       ; 6 uses
  %cond = icmp eq i32 %.093, 0
  br i1 %cond, label %bb.aa, label %.preheader

.preheader:                                       ; preds = %bb.i
  %.not221 = icmp eq i64 %.3, 0
  br i1 %.not221, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 6 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 6 uses
  %.sroa.8.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 6 uses
  %.sroa.11.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 6 uses
  %.sroa.14.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 6 uses
  br i1 %i.s, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.o
  %.086114.us = phi i64 [ %i.am, %bb.o ], [ 0, %.lr.ph ]
  %.190113.us = phi ptr [ %.291.us, %bb.o ], [ %.089, %.lr.ph ] ; 4 uses
  %.195112.us = phi ptr [ %.296.us, %bb.o ], [ %.094, %.lr.ph ] ; 4 uses
  %.199111.us = phi ptr [ %i.ai, %bb.o ], [ %.098, %.lr.ph ] ; 3 uses
  %.1102110.us = phi ptr [ %.2103.us, %bb.o ], [ %.0101, %.lr.ph ] ; 4 uses
  %i.ae = load double, ptr %.199111.us, align 8, !tbaa !124
  %i.af = load double, ptr %.1102110.us, align 8, !tbaa !124
  %i.ag = load double, ptr %.195112.us, align 8, !tbaa !124
  %i.ah = load double, ptr %.190113.us, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  store double %i.ae, ptr %15, align 8
  store double %i.af, ptr %.sroa.8.0..sroa_idx, align 8
  store double %i.ag, ptr %.sroa.11.0..sroa_idx, align 8
  store double %i.ah, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !21
  call void @proj_trans(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %14, ptr noundef nonnull %0, i32 noundef %.093, ptr noundef nonnull byval(%union.PJ_COORD) align 8 %15)
  %.sroa.0.0.copyload10.us = load double, ptr %14, align 8 ; 2 uses
  %.sroa.8.0.copyload12.us = load double, ptr %.sroa.8.0..sroa_idx11, align 8 ; 2 uses
  %.sroa.11.0.copyload15.us = load double, ptr %.sroa.11.0..sroa_idx14, align 8 ; 2 uses
  %.sroa.14.0.copyload18.us = load double, ptr %.sroa.14.0..sroa_idx17, align 8, !tbaa !21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  store double %.sroa.0.0.copyload10.us, ptr %.199111.us, align 8, !tbaa !124
  %i.ai = getelementptr inbounds nuw i8, ptr %.199111.us, i64 %3 ; 2 uses
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split.us
  store double %.sroa.8.0.copyload12.us, ptr %.1102110.us, align 8, !tbaa !124
  %i.aj = getelementptr inbounds nuw i8, ptr %.1102110.us, i64 %6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.split.us
  %.2103.us = phi ptr [ %i.aj, %bb.j ], [ %.1102110.us, %.lr.ph.split.us ] ; 2 uses
  br i1 %i.aa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store double %.sroa.11.0.copyload15.us, ptr %.195112.us, align 8, !tbaa !124
  %i.ak = getelementptr inbounds nuw i8, ptr %.195112.us, i64 %9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.296.us = phi ptr [ %i.ak, %bb.l ], [ %.195112.us, %bb.k ] ; 2 uses
  br i1 %i.ac, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %.sroa.14.0.copyload18.us, ptr %.190113.us, align 8, !tbaa !124
  %i.al = getelementptr inbounds nuw i8, ptr %.190113.us, i64 %12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.291.us = phi ptr [ %i.al, %bb.n ], [ %.190113.us, %bb.m ] ; 2 uses
  %i.am = add nuw i64 %.086114.us, 1              ; 2 uses
  %exitcond242.not = icmp eq i64 %i.am, %.3
  br i1 %exitcond242.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !123

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.y, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.s
  %.086114.us131 = phi i64 [ %i.au, %bb.s ], [ 0, %.lr.ph.split ]
  %.190113.us132 = phi ptr [ %.291.us141, %bb.s ], [ %.089, %.lr.ph.split ] ; 4 uses
  %.195112.us133 = phi ptr [ %.296.us140, %bb.s ], [ %.094, %.lr.ph.split ] ; 4 uses
  %.1102110.us134 = phi ptr [ %i.ar, %bb.s ], [ %.0101, %.lr.ph.split ] ; 3 uses
  %i.an = load double, ptr %.098, align 8, !tbaa !124
  %i.ao = load double, ptr %.1102110.us134, align 8, !tbaa !124
  %i.ap = load double, ptr %.195112.us133, align 8, !tbaa !124
  %i.aq = load double, ptr %.190113.us132, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  store double %i.an, ptr %15, align 8
  store double %i.ao, ptr %.sroa.8.0..sroa_idx, align 8
  store double %i.ap, ptr %.sroa.11.0..sroa_idx, align 8
  store double %i.aq, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !21
  call void @proj_trans(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %14, ptr noundef nonnull %0, i32 noundef %.093, ptr noundef nonnull byval(%union.PJ_COORD) align 8 %15)
  %.sroa.0.0.copyload10.us135 = load double, ptr %14, align 8
  %.sroa.8.0.copyload12.us136 = load double, ptr %.sroa.8.0..sroa_idx11, align 8 ; 2 uses
  %.sroa.11.0.copyload15.us137 = load double, ptr %.sroa.11.0..sroa_idx14, align 8 ; 2 uses
  %.sroa.14.0.copyload18.us138 = load double, ptr %.sroa.14.0..sroa_idx17, align 8, !tbaa !21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  store double %.sroa.8.0.copyload12.us136, ptr %.1102110.us134, align 8, !tbaa !124
  %i.ar = getelementptr inbounds nuw i8, ptr %.1102110.us134, i64 %6 ; 2 uses
  br i1 %i.aa, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.split.split.us
  store double %.sroa.11.0.copyload15.us137, ptr %.195112.us133, align 8, !tbaa !124
  %i.as = getelementptr inbounds nuw i8, ptr %.195112.us133, i64 %9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.split.split.us
  %.296.us140 = phi ptr [ %i.as, %bb.p ], [ %.195112.us133, %.lr.ph.split.split.us ] ; 2 uses
  br i1 %i.ac, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double %.sroa.14.0.copyload18.us138, ptr %.190113.us132, align 8, !tbaa !124
  %i.at = getelementptr inbounds nuw i8, ptr %.190113.us132, i64 %12
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.291.us141 = phi ptr [ %i.at, %bb.r ], [ %.190113.us132, %bb.q ] ; 2 uses
  %i.au = add nuw i64 %.086114.us131, 1           ; 2 uses
  %exitcond241.not = icmp eq i64 %i.au, %.3
  br i1 %exitcond241.not, label %._crit_edge, label %.lr.ph.split.split.us, !llvm.loop !123

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %i.aa, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  br i1 %i.ac, label %.lr.ph.split.split.split.us.split.us, label %.lr.ph.split.split.split.us.split

.lr.ph.split.split.split.us.split.us:             ; preds = %.lr.ph.split.split.split.us, %.lr.ph.split.split.split.us.split.us
  %.086114.us160.us = phi i64 [ %i.bb, %.lr.ph.split.split.split.us.split.us ], [ 0, %.lr.ph.split.split.split.us ]
  %.190113.us161.us = phi ptr [ %i.ba, %.lr.ph.split.split.split.us.split.us ], [ %.089, %.lr.ph.split.split.split.us ] ; 3 uses
  %.195112.us162.us = phi ptr [ %i.az, %.lr.ph.split.split.split.us.split.us ], [ %.094, %.lr.ph.split.split.split.us ] ; 3 uses
  %i.av = load double, ptr %.098, align 8, !tbaa !124
  %i.aw = load double, ptr %.0101, align 8, !tbaa !124
  %i.ax = load double, ptr %.195112.us162.us, align 8, !tbaa !124
  %i.ay = load double, ptr %.190113.us161.us, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  store double %i.av, ptr %15, align 8
  store double %i.aw, ptr %.sroa.8.0..sroa_idx, align 8
  store double %i.ax, ptr %.sroa.11.0..sroa_idx, align 8
  store double %i.ay, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !21
  call void @proj_trans(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %14, ptr noundef nonnull %0, i32 noundef %.093, ptr noundef nonnull byval(%union.PJ_COORD) align 8 %15)
  %.sroa.0.0.copyload10.us163.us = load double, ptr %14, align 8
  %.sroa.8.0.copyload12.us164.us = load double, ptr %.sroa.8.0..sroa_idx11, align 8
  %.sroa.11.0.copyload15.us165.us = load double, ptr %.sroa.11.0..sroa_idx14, align 8 ; 2 uses
  %.sroa.14.0.copyload18.us166.us = load double, ptr %.sroa.14.0..sroa_idx17, align 8, !tbaa !21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  store double %.sroa.11.0.copyload15.us165.us, ptr %.195112.us162.us, align 8, !tbaa !124
  %i.az = getelementptr inbounds nuw i8, ptr %.195112.us162.us, i64 %9 ; 2 uses
  store double %.sroa.14.0.copyload18.us166.us, ptr %.190113.us161.us, align 8, !tbaa !124
  %i.ba = getelementptr inbounds nuw i8, ptr %.190113.us161.us, i64 %12 ; 2 uses
  %i.bb = add nuw i64 %.086114.us160.us, 1        ; 2 uses
  %exitcond240.not = icmp eq i64 %i.bb, %i.ad
  br i1 %exitcond240.not, label %._crit_edge, label %.lr.ph.split.split.split.us.split.us, !llvm.loop !123

.lr.ph.split.split.split.us.split:                ; preds = %.lr.ph.split.split.split.us, %.lr.ph.split.split.split.us.split
  %.086114.us160 = phi i64 [ %i.bh, %.lr.ph.split.split.split.us.split ], [ 0, %.lr.ph.split.split.split.us ]
  %.195112.us162 = phi ptr [ %i.bg, %.lr.ph.split.split.split.us.split ], [ %.094, %.lr.ph.split.split.split.us ] ; 3 uses
  %i.bc = load double, ptr %.098, align 8, !tbaa !124
  %i.bd = load double, ptr %.0101, align 8, !tbaa !124
  %i.be = load double, ptr %.195112.us162, align 8, !tbaa !124
  %i.bf = load double, ptr %.089, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  store double %i.bc, ptr %15, align 8
  store double %i.bd, ptr %.sroa.8.0..sroa_idx, align 8
  store double %i.be, ptr %.sroa.11.0..sroa_idx, align 8
  store double %i.bf, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !21
  call void @proj_trans(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %14, ptr noundef nonnull %0, i32 noundef %.093, ptr noundef nonnull byval(%union.PJ_COORD) align 8 %15)
  %.sroa.0.0.copyload10.us163 = load double, ptr %14, align 8
  %.sroa.8.0.copyload12.us164 = load double, ptr %.sroa.8.0..sroa_idx11, align 8
  %.sroa.11.0.copyload15.us165 = load double, ptr %.sroa.11.0..sroa_idx14, align 8 ; 2 uses
  %.sroa.14.0.copyload18.us166 = load double, ptr %.sroa.14.0..sroa_idx17, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  store double %.sroa.11.0.copyload15.us165, ptr %.195112.us162, align 8, !tbaa !124
  %i.bg = getelementptr inbounds nuw i8, ptr %.195112.us162, i64 %9 ; 2 uses
  %i.bh = add nuw i64 %.086114.us160, 1           ; 2 uses
  %exitcond239.not = icmp eq i64 %i.bh, %.2
  br i1 %exitcond239.not, label %._crit_edge, label %.lr.ph.split.split.split.us.split, !llvm.loop !123

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  br i1 %i.ac, label %.lr.ph.split.split.split.split.us, label %.lr.ph.split.split.split.split

.lr.ph.split.split.split.split.us:                ; preds = %.lr.ph.split.split.split, %.lr.ph.split.split.split.split.us
  %.086114.us187 = phi i64 [ %i.bn, %.lr.ph.split.split.split.split.us ], [ 0, %.lr.ph.split.split.split ]
  %.190113.us188 = phi ptr [ %i.bm, %.lr.ph.split.split.split.split.us ], [ %.089, %.lr.ph.split.split.split ] ; 3 uses
  %i.bi = load double, ptr %.098, align 8, !tbaa !124
  %i.bj = load double, ptr %.0101, align 8, !tbaa !124
  %i.bk = load double, ptr %.094, align 8, !tbaa !124
  %i.bl = load double, ptr %.190113.us188, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  store double %i.bi, ptr %15, align 8
  store double %i.bj, ptr %.sroa.8.0..sroa_idx, align 8
  store double %i.bk, ptr %.sroa.11.0..sroa_idx, align 8
  store double %i.bl, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !21
  call void @proj_trans(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %14, ptr noundef nonnull %0, i32 noundef %.093, ptr noundef nonnull byval(%union.PJ_COORD) align 8 %15)
  %.sroa.0.0.copyload10.us189 = load double, ptr %14, align 8
  %.sroa.8.0.copyload12.us190 = load double, ptr %.sroa.8.0..sroa_idx11, align 8
  %.sroa.11.0.copyload15.us191 = load double, ptr %.sroa.11.0..sroa_idx14, align 8
  %.sroa.14.0.copyload18.us192 = load double, ptr %.sroa.14.0..sroa_idx17, align 8, !tbaa !21 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  store double %.sroa.14.0.copyload18.us192, ptr %.190113.us188, align 8, !tbaa !124
  %i.bm = getelementptr inbounds nuw i8, ptr %.190113.us188, i64 %12 ; 2 uses
  %i.bn = add nuw i64 %.086114.us187, 1           ; 2 uses
  %exitcond238.not = icmp eq i64 %i.bn, %i.ad
  br i1 %exitcond238.not, label %._crit_edge, label %.lr.ph.split.split.split.split.us, !llvm.loop !123

.lr.ph.split.split.split.split:                   ; preds = %.lr.ph.split.split.split, %.lr.ph.split.split.split.split
  %.086114 = phi i64 [ %i.bs, %.lr.ph.split.split.split.split ], [ 0, %.lr.ph.split.split.split ]
  %i.bo = load double, ptr %.098, align 8, !tbaa !124
  %i.bp = load double, ptr %.0101, align 8, !tbaa !124
  %i.bq = load double, ptr %.094, align 8, !tbaa !124
  %i.br = load double, ptr %.089, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  store double %i.bo, ptr %15, align 8
  store double %i.bp, ptr %.sroa.8.0..sroa_idx, align 8
  store double %i.bq, ptr %.sroa.11.0..sroa_idx, align 8
  store double %i.br, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !21
  call void @proj_trans(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %14, ptr noundef nonnull %0, i32 noundef %.093, ptr noundef nonnull byval(%union.PJ_COORD) align 8 %15)
  %.sroa.0.0.copyload10 = load double, ptr %14, align 8
  %.sroa.8.0.copyload12 = load double, ptr %.sroa.8.0..sroa_idx11, align 8
  %.sroa.11.0.copyload15 = load double, ptr %.sroa.11.0..sroa_idx14, align 8
  %.sroa.14.0.copyload18 = load double, ptr %.sroa.14.0..sroa_idx17, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  %i.bs = add nuw i64 %.086114, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.bs, %.2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.split.split, !llvm.loop !123

._crit_edge:                                      ; preds = %.lr.ph.split.split.split.split, %.lr.ph.split.split.split.split.us, %.lr.ph.split.split.split.us.split, %.lr.ph.split.split.split.us.split.us, %bb.s, %bb.o, %.preheader
  %.1102.lcssa = phi ptr [ %.0101, %.preheader ], [ %.0101, %.lr.ph.split.split.split.us.split.us ], [ %.0101, %.lr.ph.split.split.split.us.split ], [ %.2103.us, %bb.o ], [ %.0101, %.lr.ph.split.split.split.split.us ], [ %i.ar, %bb.s ], [ %.0101, %.lr.ph.split.split.split.split ]
  %.199.lcssa = phi ptr [ %.098, %.preheader ], [ %.098, %.lr.ph.split.split.split.us.split.us ], [ %.098, %.lr.ph.split.split.split.us.split ], [ %i.ai, %bb.o ], [ %.098, %.lr.ph.split.split.split.split.us ], [ %.098, %bb.s ], [ %.098, %.lr.ph.split.split.split.split ]
  %.195.lcssa = phi ptr [ %.094, %.preheader ], [ %i.az, %.lr.ph.split.split.split.us.split.us ], [ %i.bg, %.lr.ph.split.split.split.us.split ], [ %.296.us, %bb.o ], [ %.094, %.lr.ph.split.split.split.split.us ], [ %.296.us140, %bb.s ], [ %.094, %.lr.ph.split.split.split.split ]
  %.190.lcssa = phi ptr [ %.089, %.preheader ], [ %i.ba, %.lr.ph.split.split.split.us.split.us ], [ %.089, %.lr.ph.split.split.split.us.split ], [ %.291.us, %bb.o ], [ %i.bm, %.lr.ph.split.split.split.split.us ], [ %.291.us141, %bb.s ], [ %.089, %.lr.ph.split.split.split.split ]
  %.sroa.0.0.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %.sroa.0.0.copyload10.us163.us, %.lr.ph.split.split.split.us.split.us ], [ %.sroa.0.0.copyload10.us163, %.lr.ph.split.split.split.us.split ], [ %.sroa.0.0.copyload10.us, %bb.o ], [ %.sroa.0.0.copyload10.us189, %.lr.ph.split.split.split.split.us ], [ %.sroa.0.0.copyload10.us135, %bb.s ], [ %.sroa.0.0.copyload10, %.lr.ph.split.split.split.split ]
  %.sroa.8.0.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %.sroa.8.0.copyload12.us164.us, %.lr.ph.split.split.split.us.split.us ], [ %.sroa.8.0.copyload12.us164, %.lr.ph.split.split.split.us.split ], [ %.sroa.8.0.copyload12.us, %bb.o ], [ %.sroa.8.0.copyload12.us190, %.lr.ph.split.split.split.split.us ], [ %.sroa.8.0.copyload12.us136, %bb.s ], [ %.sroa.8.0.copyload12, %.lr.ph.split.split.split.split ]
  %.sroa.11.0.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %.sroa.11.0.copyload15.us165.us, %.lr.ph.split.split.split.us.split.us ], [ %.sroa.11.0.copyload15.us165, %.lr.ph.split.split.split.us.split ], [ %.sroa.11.0.copyload15.us, %bb.o ], [ %.sroa.11.0.copyload15.us191, %.lr.ph.split.split.split.split.us ], [ %.sroa.11.0.copyload15.us137, %bb.s ], [ %.sroa.11.0.copyload15, %.lr.ph.split.split.split.split ]
  %.sroa.14.0.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %.sroa.14.0.copyload18.us166.us, %.lr.ph.split.split.split.us.split.us ], [ %.sroa.14.0.copyload18.us166, %.lr.ph.split.split.split.us.split ], [ %.sroa.14.0.copyload18.us, %bb.o ], [ %.sroa.14.0.copyload18.us192, %.lr.ph.split.split.split.split.us ], [ %.sroa.14.0.copyload18.us138, %bb.s ], [ %.sroa.14.0.copyload18, %.lr.ph.split.split.split.split ]
  %.086.lcssa = phi i64 [ 0, %.preheader ], [ %i.ad, %.lr.ph.split.split.split.us.split.us ], [ %i.ab, %.lr.ph.split.split.split.us.split ], [ %.3, %bb.o ], [ %i.ad, %.lr.ph.split.split.split.split.us ], [ %.3, %bb.s ], [ %.1, %.lr.ph.split.split.split.split ] ; 2 uses
  %i.bt = icmp eq i64 %spec.select, 1
  br i1 %i.bt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  store double %.sroa.0.0.lcssa, ptr %.199.lcssa, align 8, !tbaa !124
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge
  %i.bu = icmp eq i64 %.097, 1
  br i1 %i.bu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store double %.sroa.8.0.lcssa, ptr %.1102.lcssa, align 8, !tbaa !124
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bv = icmp eq i64 %.092, 1
  br i1 %i.bv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store double %.sroa.11.0.lcssa, ptr %.195.lcssa, align 8, !tbaa !124
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bw = icmp eq i64 %.087, 1
  br i1 %i.bw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store double %.sroa.14.0.lcssa, ptr %.190.lcssa, align 8, !tbaa !124
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.i, %bb.d, %bb.a
  %.088 = phi i64 [ %.3, %bb.i ], [ 0, %bb.a ], [ 0, %bb.d ], [ %.086.lcssa, %bb.z ], [ %.086.lcssa, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i64 %.088
}

; Function Attrs: mustprogress uwtable
define double @proj_roundtrip(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %union.PJ_COORD, align 8            ; 4 uses
  %5 = alloca %union.PJ_COORD, align 8            ; 4 uses
  %6 = alloca %union.PJ_COORD, align 16           ; 7 uses
  %7 = alloca %union.PJ_COORD, align 8            ; 2 uses
  %8 = alloca %union.PJ_COORD, align 16           ; 3 uses
  %9 = alloca %union.PJ_COORD, align 16           ; 5 uses
  %10 = alloca %union.PJ_COORD, align 16          ; 3 uses
  %11 = alloca %union.PJ_COORD, align 8           ; 4 uses
  %12 = alloca %union.PJ_COORD, align 16          ; 3 uses
  %13 = alloca %union.PJ_COORD, align 8           ; 4 uses
  %14 = alloca %union.PJ_COORD, align 16          ; 3 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %2, 1
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.10)
  %i.c = tail call i32 @proj_errno_set(ptr noundef nonnull %0, i32 noundef 4097) ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %.sroa.0.sroa.0.0.copyload = load double, ptr %3, align 8 ; 4 uses
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.sroa.7.0.copyload = load double, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8
  %.fr.i = freeze double %.sroa.0.sroa.7.0.copyload ; 4 uses
  %.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = load <2 x double>, ptr %.sroa.0.sroa.8.0..sroa_idx, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store double %.sroa.0.sroa.0.0.copyload, ptr %5, align 8
  %.sroa.0.sroa.7.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %.fr.i, ptr %.sroa.0.sroa.7.0..sroa_idx76, align 8
  %.sroa.0.sroa.8.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <2 x double> %i.d, ptr %.sroa.0.sroa.8.0..sroa_idx82, align 8
  call void @proj_trans(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %4, ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull byval(%union.PJ_COORD) align 8 %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !tbaa.struct !22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.e = load <2 x double>, ptr %3, align 8       ; 2 uses
  %i.f = load <2 x double>, ptr %.sroa.0.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.not102 = icmp eq i32 %2, 1
  br i1 %.not102, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %.sroa.01.sroa.11.0..sroa_idx47 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.01.sroa.10.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.01.sroa.11.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.01.sroa.12.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.g = add nsw i32 %2, -2
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.098 = phi i32 [ 0, %.lr.ph ], [ %i.m, %bb.e ] ; 2 uses
  %i.h = phi <2 x double> [ %i.e, %.lr.ph ], [ %i.n, %bb.e ]
  %i.i = phi <2 x double> [ %i.f, %.lr.ph ], [ %i.o, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.j = call noundef i32 @_Z21pj_opposite_direction12PJ_DIRECTION(i32 noundef %1)
  store <2 x double> %i.h, ptr %8, align 16
  store <2 x double> %i.i, ptr %.sroa.01.sroa.11.0..sroa_idx47, align 16
  call void @proj_trans(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %7, ptr noundef nonnull %0, i32 noundef %i.j, ptr noundef nonnull byval(%union.PJ_COORD) align 8 %8)
  call void @proj_trans(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %6, ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull byval(%union.PJ_COORD) align 8 %7)
  %.sroa.01.sroa.10.0.copyload38 = load double, ptr %.sroa.01.sroa.10.0..sroa_idx37, align 8
  %i.k = load <2 x double>, ptr %6, align 16      ; 2 uses
  %.sroa.01.sroa.12.0.copyload62 = load double, ptr %.sroa.01.sroa.12.0..sroa_idx61, align 8, !tbaa !21
  %i.l = load <2 x double>, ptr %.sroa.01.sroa.11.0..sroa_idx49, align 16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %i.m = add nuw nsw i32 %.098, 1
  %exitcond.not = icmp eq i32 %.098, %i.g
  %i.n = insertelement <2 x double> %i.k, double %.sroa.01.sroa.10.0.copyload38, i64 1
  %i.o = insertelement <2 x double> %i.l, double %.sroa.01.sroa.12.0.copyload62, i64 1
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !125

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %i.p = phi <2 x double> [ %i.e, %bb.d ], [ %i.k, %bb.e ]
  %i.q = phi <2 x double> [ %i.f, %bb.d ], [ %i.l, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  %i.r = call noundef i32 @_Z21pj_opposite_direction12PJ_DIRECTION(i32 noundef %1)
  store <2 x double> %i.p, ptr %10, align 16
  %.sroa.01.sroa.11.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %10, i64 16
  store <2 x double> %i.q, ptr %.sroa.01.sroa.11.0..sroa_idx51, align 16
  call void @proj_trans(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %9, ptr noundef nonnull %0, i32 noundef %i.r, ptr noundef nonnull byval(%union.PJ_COORD) align 8 %10)
  %i.s = load <2 x double>, ptr %9, align 16      ; 3 uses
  %.sroa.01.sroa.11.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.t = load <2 x double>, ptr %.sroa.01.sroa.11.0..sroa_idx53, align 16 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %or.cond.i = fcmp uno double %.sroa.0.sroa.0.0.copyload, %.fr.i
  %i.u = extractelement <2 x double> %i.d, i64 0
  %i.v = fcmp uno double %i.u, 0.000000e+00
  %or.cond5.i = select i1 %or.cond.i, i1 true, i1 %i.v
  %i.w = extractelement <2 x double> %i.d, i64 1
  %i.x = fcmp uno double %i.w, 0.000000e+00
  %i.y = select i1 %or.cond5.i, i1 true, i1 %i.x
  %i.z = shufflevector <2 x double> %i.s, <2 x double> %i.t, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %.fr = freeze <4 x double> %i.z
  %i.aa = fcmp ord <4 x double> %.fr, zeroinitializer
  %i.ab = bitcast <4 x i1> %i.aa to i4
  %i.ac = icmp eq i4 %i.ab, 0
  %or.cond = and i1 %i.y, %i.ac
  br i1 %or.cond, label %bb.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.ad = call i32 @proj_angular_input(ptr noundef nonnull %0, i32 noundef %1)
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store double %.sroa.0.sroa.0.0.copyload, ptr %11, align 8
  %.sroa.0.sroa.7.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store double %.fr.i, ptr %.sroa.0.sroa.7.0..sroa_idx78, align 8
  %.sroa.0.sroa.8.0..sroa_idx84 = getelementptr inbounds nuw i8, ptr %11, i64 16
  store <2 x double> %i.d, ptr %.sroa.0.sroa.8.0..sroa_idx84, align 8
  store <2 x double> %i.s, ptr %12, align 16
  %.sroa.01.sroa.11.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %12, i64 16
  store <2 x double> %i.t, ptr %.sroa.01.sroa.11.0..sroa_idx55, align 16
  %i.ae = call double @proj_lpz_dist(ptr noundef nonnull %0, ptr noundef nonnull byval(%union.PJ_COORD) align 8 %11, ptr noundef nonnull byval(%union.PJ_COORD) align 8 %12)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store double %.sroa.0.sroa.0.0.copyload, ptr %13, align 8
  %.sroa.0.sroa.7.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %13, i64 8
  store double %.fr.i, ptr %.sroa.0.sroa.7.0..sroa_idx80, align 8
  %.sroa.0.sroa.8.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %13, i64 16
  store <2 x double> %i.d, ptr %.sroa.0.sroa.8.0..sroa_idx86, align 8
  store <2 x double> %i.s, ptr %14, align 16
  %.sroa.01.sroa.11.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store <2 x double> %i.t, ptr %.sroa.01.sroa.11.0..sroa_idx57, align 16
  %i.af = call double @proj_xyz_dist(ptr noundef nonnull byval(%union.PJ_COORD) align 8 %13, ptr noundef nonnull byval(%union.PJ_COORD) align 8 %14)
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.a, %bb.h, %bb.g, %bb.c
  %.022 = phi double [ %i.af, %bb.h ], [ +inf, %bb.c ], [ +inf, %bb.a ], [ %i.ae, %bb.g ], [ 0.000000e+00, %._crit_edge ]
  ret double %.022
}

declare void @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @proj_angular_input(ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @proj_lpz_dist(ptr noundef, ptr noundef byval(%union.PJ_COORD) align 8, ptr noundef byval(%union.PJ_COORD) align 8) local_unnamed_addr #2

declare double @proj_xyz_dist(ptr noundef byval(%union.PJ_COORD) align 8, ptr noundef byval(%union.PJ_COORD) align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN5osgeo4proj9operation15GridDescriptionES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !127
  tail call void @_ZNSt8_Rb_treeIN5osgeo4proj9operation15GridDescriptionES3_St9_IdentityIS3_ESt4lessIS3_ESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !128  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  tail call void @_ZN5osgeo4proj9operation15GridDescriptionD1Ev(ptr noundef nonnull align 8 dead_on_return(131) dereferenceable(131) %i.e) #16
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 168) #18
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !126

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #16 ; 0 uses
  tail call void @_ZSt9terminatev() #19
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN5osgeo4proj9operation15GridDescriptionD1Ev(ptr noundef nonnull align 8 dead_on_return(131) dereferenceable(131)) unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
end_hunk_0
