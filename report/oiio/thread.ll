inline.NumInlined: 2270
inline.NumDeleted: 1313
begin_hunk_0_@_ZN11OpenImageIO4v3_123parallel_for_chunked_idElllOSt8functionIFvillEENS0_6paroptE:bb.a
bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.0 = phi i64 [ %.sroa.speculated29, %bb.c ], [ %.sroa.speculated17, %bb.e ], [ %i.k, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !197  ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %bb.g, label %_ZN11OpenImageIO4v3_18task_setC2EPNS0_11thread_poolE.exit
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_123parallel_for_chunked_idElllOSt8functionIFvillEENS0_6paroptE:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.h

._crit_edge:                                      ; preds = %bb.ac, %_ZN11OpenImageIO4v3_18task_setC2EPNS0_11thread_poolE.exit
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_123parallel_for_chunked_idElllOSt8functionIFvillEENS0_6paroptE:bb.a
  ret void

bb.h:                                             ; preds = %.lr.ph, %bb.ac
  %i.aj = phi i64 [ %i.j, %.lr.ph ], [ %i.di, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  %i.ak = add nsw i64 %i.aj, %.0                  ; 2 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.ak, i64 %1) ; 2 uses
  store i64 %.sroa.speculated, ptr %i.e, align 8, !tbaa !77
  %i.al = icmp sle i64 %1, %i.ak
  %7 = load i32, ptr %4, align 8
  %i.am = icmp eq i32 %7, 1
  %or.cond = select i1 %i.al, i1 true, i1 %i.am
  br i1 %or.cond, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = load ptr, ptr %i.u, align 8, !tbaa !197
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !7  ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 128 ; 4 uses
  %i.aq = atomicrmw xchg ptr %i.ap, i8 1 acquire, align 1
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_123parallel_for_chunked_idElllOSt8functionIFvillEENS0_6paroptE:bb.a

bb.p:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %8 = load ptr, ptr %i.u, align 8, !tbaa !197
  invoke void @_ZN11OpenImageIO4v3_111thread_pool4pushIRSt8functionIFvillEEJRlS7_EEESt6futureIDTclfp_Li0Espfp0_EEEOT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::future") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.q unwind label %bb.z

bb.q:                                             ; preds = %bb.p
end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_123parallel_for_chunked_idElllOSt8functionIFvillEENS0_6paroptE:bb.a
  %i.cr = load atomic i64, ptr %i.cq acquire, align 8 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 4294967297
  %i.ct = trunc i64 %i.cr to i32                  ; 2 uses
  br i1 %i.cs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
end_hunk_4
begin_hunk_5_@_ZN11OpenImageIO4v3_123parallel_for_chunked_idElllOSt8functionIFvillEENS0_6paroptE:bb.a
  br label %_ZNSt14__basic_futureIvED2Ev.exit

_ZNSt14__basic_futureIvED2Ev.exit:                ; preds = %_ZN11OpenImageIO4v3_18task_set4pushEOSt6futureIvE.exit, %bb.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.ac

end_hunk_5
begin_hunk_6_@_ZN11OpenImageIO4v3_123parallel_for_chunked_idElllOSt8functionIFvillEENS0_6paroptE:bb.a
  br label %bb.ad

bb.ac:                                            ; preds = %_ZNKSt8functionIFvillEEclEill.exit, %_ZNSt14__basic_futureIvED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  %i.dh = load i64, ptr %i.d, align 8, !tbaa !77
  %i.di = add nsw i64 %i.dh, %.0                  ; 3 uses
end_hunk_6
begin_hunk_7_@_ZN11OpenImageIO4v3_126parallel_for_chunked_2D_idEllllllOSt8functionIFvillllEENS0_6paroptE:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @_ZN11OpenImageIO4v3_16paropt7resolveEv(ptr noundef nonnull align 8 dereferenceable(25) %7)
  %i.n = load i32, ptr %7, align 8, !tbaa !201
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.i, label %bb.d

end_hunk_7
begin_hunk_8_@_ZN11OpenImageIO4v3_126parallel_for_chunked_2D_idEllllllOSt8functionIFvillllEENS0_6paroptE:bb.a
  br i1 %or.cond, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !197
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !7    ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 128 ; 4 uses
  %i.v = atomicrmw xchg ptr %i.u, i8 1 acquire, align 1
end_hunk_8
begin_hunk_9_@_ZN11OpenImageIO4v3_126parallel_for_chunked_2D_idEllllllOSt8functionIFvillllEENS0_6paroptE:bb.a
  br i1 %i.br, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %10 = load i32, ptr %7, align 8, !tbaa !201
  %i.bs = shl nsw i32 %10, 1
  %i.bt = sext i32 %i.bs to i64
  %i.bu = sdiv i64 %i.q, %i.bt
  %.sroa.speculated65 = tail call i64 @llvm.smax.i64(i64 %i.bu, i64 1)
end_hunk_9
begin_hunk_10_@_ZN11OpenImageIO4v3_126parallel_for_chunked_2D_idEllllllOSt8functionIFvillllEENS0_6paroptE:bb.a
bb.m:                                             ; preds = %bb.l, %bb.k
  %.025 = phi i64 [ %.sroa.speculated65, %bb.l ], [ %5, %bb.k ] ; 4 uses
  %i.bv = icmp slt i64 %2, 1
  br i1 %i.bv, label %bb.n, label %12

bb.n:                                             ; preds = %bb.m
  %i.bw = sdiv i64 %i.q, %.025
  %.sroa.speculated59 = tail call i64 @llvm.smax.i64(i64 %i.bw, i64 1)
  %11 = load i32, ptr %7, align 8, !tbaa !201
  %i.bx = sext i32 %11 to i64
  %i.by = sdiv i64 %i.bx, %.sroa.speculated59
  %.sroa.speculated53 = tail call i64 @llvm.smax.i64(i64 %i.by, i64 1)
  %i.bz = sdiv i64 %i.p, %.sroa.speculated53
  %.sroa.speculated47 = tail call i64 @llvm.smax.i64(i64 %i.bz, i64 1)
  br label %12

12:                                               ; preds = %bb.n, %bb.m
  %.024 = phi i64 [ %.sroa.speculated47, %bb.n ], [ %2, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %13 = load ptr, ptr %i.r, align 8, !tbaa !197   ; 2 uses
  %.not.i = icmp eq ptr %13, null
  br i1 %.not.i, label %14, label %_ZN11OpenImageIO4v3_18task_setC2EPNS0_11thread_poolE.exit

14:                                               ; preds = %12
  %15 = tail call noundef ptr @_ZN11OpenImageIO4v3_119default_thread_poolEv()
  br label %_ZN11OpenImageIO4v3_18task_setC2EPNS0_11thread_poolE.exit

_ZN11OpenImageIO4v3_18task_setC2EPNS0_11thread_poolE.exit: ; preds = %12, %14
  %16 = phi ptr [ %15, %14 ], [ %13, %12 ]
  store ptr %16, ptr %8, align 8, !tbaa !173
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cb = tail call i64 @pthread_self() #33
  store i64 %i.cb, ptr %i.ca, align 8
end_hunk_10
