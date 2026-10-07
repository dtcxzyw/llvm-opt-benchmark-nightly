Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/stripifier?download=true
inline.NumInlined: 11
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@meshopt_stripify:bb.a
bb.ai:                                            ; preds = %bb.ah
  %i.ln = trunc nuw i64 %.02639.i244 to i32
  %i.lo = shl nuw i32 %i.ln, 2
  %i.lp = or disjoint i32 %i.lo, 1
  br label %_ZN7meshoptL13findStripNextEPA3_Kjjjj.exit249.thread

bb.aj:                                            ; preds = %bb.ah
  %i.lq = add nuw nsw i64 %.02639.i244, 1         ; 2 uses
  %exitcond.not.i248 = icmp eq i64 %i.lq, %i.jd
  br i1 %exitcond.not.i248, label %_ZN7meshoptL13findStripNextEPA3_Kjjjj.exit249.thread, label %.lr.ph.i243, !llvm.loop !18

_ZN7meshoptL13findStripNextEPA3_Kjjjj.exit249.thread: ; preds = %bb.aj, %bb.ai, %bb.ag, %bb.ae
  %i.lr = phi i32 [ %i.lg, %bb.ae ], [ %i.lp, %bb.ai ], [ %i.lk, %bb.ag ], [ -1, %bb.aj ] ; 3 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %.fr, i32 %i.kv)
  %i.ls = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.lr)
  %i.lt = tail call i32 @llvm.umin.i32(i32 %i.ls, i32 2147483647) ; 3 uses
  %i.lu = icmp eq i32 %.fr, %i.lt
  br i1 %i.lu, label %.thread318, label %bb.ak

bb.ak:                                            ; preds = %_ZN7meshoptL13findStripNextEPA3_Kjjjj.exit249.thread
  %i.lv = icmp eq i32 %i.kv, %i.lt
  br i1 %i.lv, label %.thread318, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.lw = icmp eq i32 %i.lr, %i.lt
  br i1 %i.lw, label %bb.am, label %.thread318

bb.am:                                            ; preds = %bb.al
  br label %.thread318

.thread318:                                       ; preds = %_ZN7meshoptL14findStripFirstEPA3_KjjPKh.exit, %bb.ak, %_ZN7meshoptL13findStripNextEPA3_Kjjjj.exit249.thread, %bb.am, %bb.al
  %.2185 = phi i32 [ %.0183279, %bb.al ], [ %.fr, %_ZN7meshoptL13findStripNextEPA3_Kjjjj.exit249.thread ], [ %i.lr, %bb.am ], [ %i.kv, %bb.ak ], [ %.0183279, %_ZN7meshoptL14findStripFirstEPA3_KjjPKh.exit ]
  %.0182 = phi i32 [ %i.ie, %bb.al ], [ %i.ie, %_ZN7meshoptL13findStripNextEPA3_Kjjjj.exit249.thread ], [ %i.ii, %bb.am ], [ %i.ig, %bb.ak ], [ %i.ie, %_ZN7meshoptL14findStripFirstEPA3_KjjPKh.exit ] ; 3 uses
  %.0181 = phi i32 [ %i.ig, %bb.al ], [ %i.ig, %_ZN7meshoptL13findStripNextEPA3_Kjjjj.exit249.thread ], [ %i.ie, %bb.am ], [ %i.ii, %bb.ak ], [ %i.ig, %_ZN7meshoptL14findStripFirstEPA3_KjjPKh.exit ] ; 4 uses
  %.0180 = phi i32 [ %i.ii, %bb.al ], [ %i.ii, %_ZN7meshoptL13findStripNextEPA3_Kjjjj.exit249.thread ], [ %i.ig, %bb.am ], [ %i.ie, %bb.ak ], [ %i.ii, %_ZN7meshoptL14findStripFirstEPA3_KjjPKh.exit ] ; 4 uses
  %.not207 = icmp eq i64 %.0191276, 0             ; 2 uses
  br i1 %.not206, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %.thread318
  br i1 %.not207, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.lx = add i64 %.0191276, 1
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0191276
  store i32 %4, ptr %i.ly, align 4, !tbaa !12
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.2193 = phi i64 [ %i.lx, %bb.ao ], [ 0, %bb.an ] ; 2 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.2193 ; 3 uses
  store i32 %.0182, ptr %i.lz, align 4, !tbaa !12
  %i.ma = getelementptr i8, ptr %i.lz, i64 4
  store i32 %.0181, ptr %i.ma, align 4, !tbaa !12
  %i.mb = getelementptr i8, ptr %i.lz, i64 8
  store i32 %.0180, ptr %i.mb, align 4, !tbaa !12
  br label %bb.at

bb.aq:                                            ; preds = %.thread318
  br i1 %.not207, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0191276 ; 2 uses
  store i32 %.sroa.10.0278, ptr %i.mc, align 4, !tbaa !12
  %i.md = add i64 %.0191276, 2
  %i.me = getelementptr i8, ptr %i.mc, i64 4
  store i32 %.0182, ptr %i.me, align 4, !tbaa !12
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.3194 = phi i64 [ %i.md, %bb.ar ], [ 0, %bb.aq ] ; 2 uses
  %.not208 = icmp eq i32 %.0187277, 0             ; 2 uses
  %i.mf = select i1 %.not208, i32 %.0181, i32 %.0180 ; 2 uses
  %i.mg = select i1 %.not208, i32 %.0180, i32 %.0181 ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.3194 ; 3 uses
  store i32 %.0182, ptr %i.mh, align 4, !tbaa !12
  %i.mi = getelementptr i8, ptr %i.mh, i64 4
  store i32 %i.mf, ptr %i.mi, align 4, !tbaa !12
  %i.mj = getelementptr i8, ptr %i.mh, i64 8
  store i32 %i.mg, ptr %i.mj, align 4, !tbaa !12
  %i.mk = xor i32 %.0187277, 1
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ap
  %.4.in = phi i64 [ %.2193, %bb.ap ], [ %.3194, %bb.as ]
  %.2189 = phi i32 [ 1, %bb.ap ], [ %i.mk, %bb.as ]
  %.sroa.10.2 = phi i32 [ %.0180, %bb.ap ], [ %i.mg, %bb.as ]
  %.sroa.0.2 = phi i32 [ %.0181, %bb.ap ], [ %i.mf, %bb.as ]
  %.4 = add i64 %.4.in, 3
  br label %bb.au

bb.au:                                            ; preds = %bb.q, %_ZN7meshoptL13findStripNextEPA3_Kjjjj.exit221.thread, %bb.at
  %.5 = phi i64 [ %.4, %bb.at ], [ %i.gy, %bb.q ], [ %i.hb, %_ZN7meshoptL13findStripNextEPA3_Kjjjj.exit221.thread ] ; 2 uses
  %.3190 = phi i32 [ %.2189, %bb.at ], [ %.0187277, %bb.q ], [ %i.hd, %_ZN7meshoptL13findStripNextEPA3_Kjjjj.exit221.thread ]
  %.sroa.10.3 = phi i32 [ %.sroa.10.2, %bb.at ], [ %i.ee, %bb.q ], [ %i.ee, %_ZN7meshoptL13findStripNextEPA3_Kjjjj.exit221.thread ]
  %.3 = phi i32 [ %.2185, %bb.at ], [ %i.gv, %bb.q ], [ %i.ha, %_ZN7meshoptL13findStripNextEPA3_Kjjjj.exit221.thread ]
  %.sroa.0.3 = phi i32 [ %.sroa.0.2, %bb.at ], [ %.sroa.0.0280, %bb.q ], [ %.sroa.10.0278, %_ZN7meshoptL13findStripNextEPA3_Kjjjj.exit221.thread ]
  %.2 = phi i32 [ %i.iq, %bb.at ], [ %i.ek, %bb.q ], [ %i.ek, %_ZN7meshoptL13findStripNextEPA3_Kjjjj.exit221.thread ] ; 2 uses
  %i.ml = icmp ne i32 %.2, 0
  %i.mm = icmp ult i64 %.1179.lcssa, %2
  %i.mn = select i1 %i.ml, i1 true, i1 %i.mm
  br i1 %i.mn, label %.preheader, label %.lr.ph.i250, !llvm.loop !20

.lr.ph.i250:                                      ; preds = %bb.au, %bb.b
  %.0191.lcssa = phi i64 [ 0, %bb.b ], [ %.5, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.mo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !14
  %i.mp = load ptr, ptr %5, align 8, !tbaa !11
  invoke void %i.mo(ptr noundef %i.mp)
          to label %_ZN17meshopt_AllocatorD2Ev.exit unwind label %bb.av

bb.av:                                            ; preds = %.lr.ph.i250
  %i.mq = landingpad { ptr, i32 }
          catch ptr null
  %i.mr = extractvalue { ptr, i32 } %i.mq, 0
  tail call void @__clang_call_terminate(ptr %i.mr) #13
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %.lr.ph.i250
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret i64 %.0191.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %.not3 = icmp eq i64 %i.b, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.04 = phi i64 [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !14
  %i.d = getelementptr [8 x i8], ptr %0, i64 %.04
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11
  invoke void %i.c(ptr noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = add i64 %.04, -1                         ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24

bb.c:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #13
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @meshopt_stripifyBound(i64 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = udiv i64 %0, 3
  %i.b = mul i64 %i.a, 5
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i64 @meshopt_unstripify(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %.not54 = icmp eq i64 %2, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %switch = icmp ult i64 %2, 3
  br i1 %switch, label %._crit_edge, label %.lr.ph.split.us.peel.next57

.lr.ph.split.us.peel.next57:                      ; preds = %.lr.ph.split.us.preheader, %bb.c
  %.053.us = phi i64 [ %.2.us, %bb.c ], [ 0, %.lr.ph.split.us.preheader ] ; 3 uses
  %.03952.us = phi i64 [ %i.l, %bb.c ], [ 2, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.a = getelementptr [4 x i8], ptr %1, i64 %.03952.us ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 -8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12   ; 3 uses
  %i.d = getelementptr i8, ptr %i.a, i64 -4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !12   ; 3 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !12   ; 3 uses
  %.not45.us = trunc i64 %.03952.us to i1         ; 2 uses
  %spec.select.us = select i1 %.not45.us, i32 %i.e, i32 %i.c ; 2 uses
  %spec.select49.us = select i1 %.not45.us, i32 %i.c, i32 %i.e ; 2 uses
  %.not46.us = icmp eq i32 %i.e, %i.c
  %.not47.us = icmp eq i32 %spec.select.us, %i.f
  %.not48.us = icmp eq i32 %spec.select49.us, %i.f
  %i.g = or i1 %.not47.us, %.not48.us
  %or.cond50.us = select i1 %.not46.us, i1 true, i1 %i.g
  br i1 %or.cond50.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us.peel.next57
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.053.us ; 3 uses
  store i32 %spec.select.us, ptr %i.h, align 4, !tbaa !12
  %i.i = getelementptr i8, ptr %i.h, i64 4
  store i32 %spec.select49.us, ptr %i.i, align 4, !tbaa !12
  %i.j = getelementptr i8, ptr %i.h, i64 8
  store i32 %i.f, ptr %i.j, align 4, !tbaa !12
  %i.k = add i64 %.053.us, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.peel.next57
  %.2.us = phi i64 [ %.053.us, %.lr.ph.split.us.peel.next57 ], [ %i.k, %bb.b ] ; 2 uses
  %i.l = add nuw i64 %.03952.us, 1                ; 2 uses
  %exitcond56.not = icmp eq i64 %i.l, %2
  br i1 %exitcond56.not, label %._crit_edge, label %.lr.ph.split.us.peel.next57, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.h, %bb.c, %.lr.ph.split.us.preheader, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph.split.us.preheader ], [ %.2.us, %bb.c ], [ %.2, %bb.h ]
  ret i64 %.0.lcssa

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %.053 = phi i64 [ %.2, %bb.h ], [ 0, %.lr.ph ]  ; 5 uses
  %.03952 = phi i64 [ %i.ab, %bb.h ], [ 0, %.lr.ph ] ; 4 uses
  %.04051 = phi i64 [ %.141, %bb.h ], [ 0, %.lr.ph ] ; 4 uses
  %i.m = getelementptr [4 x i8], ptr %1, i64 %.03952 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !12   ; 4 uses
  %i.o = icmp eq i32 %i.n, %3
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.split
  %i.p = add nuw i64 %.03952, 1
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph.split
  %i.q = sub i64 %.03952, %.04051                 ; 2 uses
  %i.r = icmp ugt i64 %i.q, 1
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.m, i64 -8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !12   ; 3 uses
  %i.u = getelementptr i8, ptr %i.m, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !12   ; 3 uses
  %.not45 = trunc i64 %i.q to i1                  ; 2 uses
  %spec.select = select i1 %.not45, i32 %i.v, i32 %i.t ; 2 uses
  %spec.select49 = select i1 %.not45, i32 %i.t, i32 %i.v ; 2 uses
  %.not46 = icmp eq i32 %i.v, %i.t
  %.not47 = icmp eq i32 %spec.select, %i.n
  %.not48 = icmp eq i32 %spec.select49, %i.n
  %i.w = or i1 %.not47, %.not48
  %or.cond50 = or i1 %.not46, %i.w
  br i1 %or.cond50, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.053 ; 3 uses
  store i32 %spec.select, ptr %i.x, align 4, !tbaa !12
  %i.y = getelementptr i8, ptr %i.x, i64 4
  store i32 %spec.select49, ptr %i.y, align 4, !tbaa !12
  %i.z = getelementptr i8, ptr %i.x, i64 8
  store i32 %i.n, ptr %i.z, align 4, !tbaa !12
  %i.aa = add i64 %.053, 3
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.e
  %.141 = phi i64 [ %i.p, %bb.d ], [ %.04051, %bb.e ], [ %.04051, %bb.g ], [ %.04051, %bb.f ]
  %.2 = phi i64 [ %.053, %bb.d ], [ %.053, %bb.e ], [ %i.aa, %bb.g ], [ %.053, %bb.f ] ; 2 uses
  %i.ab = add nuw i64 %.03952, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ab, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !29
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @meshopt_unstripifyBound(i64 noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = mul i64 %0, 3
  %i.c = add i64 %i.b, -6
  %i.d = select i1 %i.a, i64 0, i64 %i.c
  ret i64 %i.d
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"_ZTSN17meshopt_Allocator7StorageE", !9, i64 0, !9, i64 8}
!11 = !{!9, !9, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!10, !9, i64 8}
!15 = distinct !{null}
!16 = distinct !{!16, !23}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = !{!10, !9, i64 0}
!22 = !{!5, !5, i64 0}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !13}
!25 = !{!"long", !5, i64 0}
!26 = !{!"_ZTS17meshopt_Allocator", !5, i64 0, !25, i64 192}
!27 = !{!26, !25, i64 192}
!28 = distinct !{!28, !13, !30}
!29 = distinct !{!29, !13}
!30 = !{!"llvm.loop.peeled.count", i32 2}
end_hunk_0
