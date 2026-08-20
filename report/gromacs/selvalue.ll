inline.NumInlined: 6
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z18_gmx_selvalue_freeP18gmx_ana_selvalue_t:bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !12
  %i.e = icmp eq i32 %i.d, 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13   ; 5 uses
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 -8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.idx = mul i64 %i.j, 152                       ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.d
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 %.idx
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.m = phi ptr [ %i.n, %.preheader ], [ %i.l, %.preheader.preheader ]
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -152 ; 3 uses
  tail call void @_ZN13gmx_ana_pos_tD1Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.n) #10
  %i.o = icmp eq ptr %i.n, %i.g
  br i1 %i.o, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %.preheader, %bb.d
  %i.p = add i64 %.idx, 8
  tail call void @_ZdaPvm(ptr noundef nonnull %i.i, i64 noundef %i.p) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 67, ptr noundef %i.g)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit, %bb.c, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.q, align 8, !tbaa !13
  store i32 0, ptr %i.a, align 8, !tbaa !9
  ret void
}

; Function Attrs: nounwind
declare void @_ZN13gmx_ana_pos_tD1Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148)) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_Z9save_freePKcS0_iPv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_Z21_gmx_selvalue_reserveP18gmx_ana_selvalue_ti(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 5 uses
  %.not = icmp eq ptr %i.e, null                  ; 2 uses
  %i.f = icmp slt i32 %i.b, %1
  %or.cond = or i1 %i.f, %.not
  br i1 %or.cond, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %0, align 8, !tbaa !12
  switch i32 %i.g, label %.loopexit [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c
  %i.h = sext i32 %1 to i64
  %i.i = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 88, ptr noundef %i.e, i64 noundef range(i64 -2147483648, 2147483648) %i.h, i64 noundef 4)
  br label %.loopexit.sink.split

bb.e:                                             ; preds = %bb.c
  %i.j = sext i32 %1 to i64
  %i.k = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 89, ptr noundef %i.e, i64 noundef range(i64 -2147483648, 2147483648) %i.j, i64 noundef 4)
  br label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.c
  %i.l = sext i32 %1 to i64                       ; 4 uses
  %i.m = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 91, ptr noundef %i.e, i64 noundef range(i64 -2147483648, 2147483648) %i.l, i64 noundef 8)
  store ptr %i.m, ptr %i.d, align 8, !tbaa !14
  %i.n = load i32, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.o = icmp slt i32 %i.n, %1
  br i1 %i.o, label %.lr.ph48.preheader, label %.loopexit

.lr.ph48.preheader:                               ; preds = %bb.f
  %i.p = sext i32 %i.n to i64                     ; 4 uses
  %i.q = sub nsw i64 %i.l, %i.p
  %xtraiter = and i64 %i.q, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph48.prol.loopexit, label %.lr.ph48.prol

.lr.ph48.prol:                                    ; preds = %.lr.ph48.preheader, %.lr.ph48.prol
  %indvars.iv52.prol = phi i64 [ %indvars.iv.next53.prol, %.lr.ph48.prol ], [ %i.p, %.lr.ph48.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph48.prol ], [ 0, %.lr.ph48.preheader ]
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.s = getelementptr inbounds [8 x i8], ptr %i.r, i64 %indvars.iv52.prol
  store ptr null, ptr %i.s, align 8, !tbaa !18
  %indvars.iv.next53.prol = add nsw i64 %indvars.iv52.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph48.prol.loopexit, label %.lr.ph48.prol, !llvm.loop !20

.lr.ph48.prol.loopexit:                           ; preds = %.lr.ph48.prol, %.lr.ph48.preheader
  %indvars.iv52.unr = phi i64 [ %i.p, %.lr.ph48.preheader ], [ %indvars.iv.next53.prol, %.lr.ph48.prol ]
  %i.t = sub nsw i64 %i.p, %i.l
  %i.u = icmp ugt i64 %i.t, -8
  br i1 %i.u, label %.loopexit, label %.lr.ph48

.lr.ph48:                                         ; preds = %.lr.ph48.prol.loopexit, %.lr.ph48
  %indvars.iv52 = phi i64 [ %indvars.iv.next53.7, %.lr.ph48 ], [ %indvars.iv52.unr, %.lr.ph48.prol.loopexit ] ; 9 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv52
  store ptr null, ptr %i.w, align 8, !tbaa !18
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.y = getelementptr [8 x i8], ptr %i.x, i64 %indvars.iv52
  %i.z = getelementptr i8, ptr %i.y, i64 8
  store ptr null, ptr %i.z, align 8, !tbaa !18
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ab = getelementptr [8 x i8], ptr %i.aa, i64 %indvars.iv52
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store ptr null, ptr %i.ac, align 8, !tbaa !18
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %indvars.iv52
  %i.af = getelementptr i8, ptr %i.ae, i64 24
  store ptr null, ptr %i.af, align 8, !tbaa !18
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %indvars.iv52
  %i.ai = getelementptr i8, ptr %i.ah, i64 32
  store ptr null, ptr %i.ai, align 8, !tbaa !18
  %i.aj = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %indvars.iv52
  %i.al = getelementptr i8, ptr %i.ak, i64 40
  store ptr null, ptr %i.al, align 8, !tbaa !18
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %indvars.iv52
  %i.ao = getelementptr i8, ptr %i.an, i64 48
  store ptr null, ptr %i.ao, align 8, !tbaa !18
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aq = getelementptr [8 x i8], ptr %i.ap, i64 %indvars.iv52
  %i.ar = getelementptr i8, ptr %i.aq, i64 56
  store ptr null, ptr %i.ar, align 8, !tbaa !18
  %indvars.iv.next53.7 = add nsw i64 %indvars.iv52, 8 ; 2 uses
  %exitcond55.not.7 = icmp eq i64 %indvars.iv.next53.7, %i.l
  br i1 %exitcond55.not.7, label %.loopexit, label %.lr.ph48, !llvm.loop !22

bb.g:                                             ; preds = %bb.c
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ21_gmx_selvalue_reserveP18gmx_ana_selvalue_tiENK3$_0clEv", ptr noundef nonnull @.str.1, i32 noundef 99) #12
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.as = sext i32 %1 to i64                      ; 2 uses
  %i.at = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.as, i64 152) ; 2 uses
  %i.au = extractvalue { i64, i1 } %i.at, 1
  %i.av = extractvalue { i64, i1 } %i.at, 0       ; 2 uses
  %i.aw = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.av, i64 8) ; 2 uses
  %i.ax = extractvalue { i64, i1 } %i.aw, 1
  %i.ay = or i1 %i.au, %i.ax
  %i.az = extractvalue { i64, i1 } %i.aw, 0
  %i.ba = select i1 %i.ay, i64 -1, i64 %i.az      ; 2 uses
  %i.bb = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ba) #13 ; 5 uses
  store i64 %i.as, ptr %i.bb, align 16
  %.ptr36 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %i.bc = icmp eq i32 %1, 0
  br i1 %i.bc, label %.loopexit.sink.split, label %.preheader61

.preheader61:                                     ; preds = %bb.i, %bb.j
  %.idx = phi i64 [ %.add, %bb.j ], [ 8, %bb.i ]  ; 5 uses
  %.ptr.ptr = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx
  invoke void @_ZN13gmx_ana_pos_tC1Ev(ptr noundef nonnull align 8 dereferenceable(148) %.ptr.ptr)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %.preheader61
  %.add = add nuw nsw i64 %.idx, 152
  %i.bd = add nuw nsw i64 %.idx, 144
  %i.be = icmp eq i64 %i.bd, %i.av
  br i1 %i.be, label %.loopexit.sink.split, label %.preheader61

bb.k:                                             ; preds = %.preheader61
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = icmp eq i64 %.idx, 8
  br i1 %i.bg, label %.loopexit42, label %.preheader

.preheader:                                       ; preds = %bb.k, %.preheader
  %.idx37 = phi i64 [ %.add38, %.preheader ], [ %.idx, %bb.k ]
  %.add38 = add nuw nsw i64 %.idx37, -152         ; 2 uses
  %.ptr40 = getelementptr inbounds i8, ptr %i.bb, i64 %.add38
  tail call void @_ZN13gmx_ana_pos_tD1Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %.ptr40) #10
  br label %.preheader

.loopexit42:                                      ; preds = %bb.k
  tail call void @_ZdaPvm(ptr noundef nonnull %i.bb, i64 noundef %i.ba) #11
  resume { ptr, i32 } %i.bf

bb.l:                                             ; preds = %bb.c
  %i.bh = sext i32 %1 to i64
  %i.bi = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 103, ptr noundef %i.e, i64 noundef range(i64 -2147483648, 2147483648) %i.bh, i64 noundef 24)
  store ptr %i.bi, ptr %i.d, align 8, !tbaa !24
  %i.bj = load i32, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.bk = icmp slt i32 %i.bj, %1
  br i1 %i.bk, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.bl = sext i32 %i.bj to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.bl, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bn = getelementptr inbounds [24 x i8], ptr %i.bm, i64 %indvars.iv
  tail call void @_Z19gmx_ana_index_clearP15gmx_ana_index_t(ptr noundef %i.bn)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !26

.loopexit.sink.split:                             ; preds = %bb.j, %bb.i, %bb.d, %bb.e
  %.ptr36.sink = phi ptr [ %i.i, %bb.d ], [ %i.k, %bb.e ], [ %.ptr36, %bb.i ], [ %.ptr36, %bb.j ]
  store ptr %.ptr36.sink, ptr %i.d, align 8, !tbaa !13
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph48.prol.loopexit, %.lr.ph48, %.loopexit.sink.split, %bb.l, %bb.f, %bb.c
  store i32 %1, ptr %i.a, align 8, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

declare void @_ZN13gmx_ana_pos_tC1Ev(ptr noundef nonnull align 8 dereferenceable(148)) unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

declare void @_Z19gmx_ana_index_clearP15gmx_ana_index_t(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_Z34_gmx_selvalue_getstore_and_releaseP18gmx_ana_selvalue_tPPvPi(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  store ptr %i.b, ptr %1, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !9
  store i32 %i.d, ptr %2, align 4, !tbaa !28
  store ptr null, ptr %i.a, align 8, !tbaa !13
  store i32 0, ptr %i.c, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z22_gmx_selvalue_setstoreP18gmx_ana_selvalue_tPv(ptr nofree noundef writeonly captures(none) initializes((8, 20)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !13
  %.not = icmp ne ptr %1, null
  %i.b = sext i1 %.not to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.b, ptr %i.c, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_Z28_gmx_selvalue_setstore_allocP18gmx_ana_selvalue_tPvi(ptr nofree noundef writeonly captures(none) initializes((8, 20)) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %2, ptr %i.b, align 8, !tbaa !9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !6, i64 16}
!10 = !{!"_ZTS18gmx_ana_selvalue_t", !11, i64 0, !6, i64 4, !7, i64 8, !6, i64 16}
!11 = !{!"_ZTS12e_selvalue_t", !7, i64 0}
!12 = !{!10, !11, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p2 omnipotent char", !16, i64 0}
!16 = !{!"any p2 pointer", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 omnipotent char", !17, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTS15gmx_ana_index_t", !17, i64 0}
!26 = distinct !{!26, !23}
!27 = !{!17, !17, i64 0}
!28 = !{!6, !6, i64 0}
end_hunk_0
