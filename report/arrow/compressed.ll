begin_hunk_0
inline.NumInlined: 1038
inline.NumDeleted: 448
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Result.96", align 8  ; 15 uses
  %7 = alloca %"class.arrow::Result.96", align 8  ; 13 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #27 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader, label %bb.b

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader: ; preds = %bb.a
  %9 = icmp sgt i64 %3, 0
  br i1 %9, label %.lr.ph, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge

.lr.ph:                                           ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
end_hunk_1
begin_hunk_2
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0..sroa_idx.i.i88 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #31
  unreachable

bb.c:                                             ; preds = %.lr.ph, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit115
  %.040127 = phi i64 [ %3, %.lr.ph ], [ %i.cf, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit115 ] ; 3 uses
  %.041126 = phi ptr [ %2, %.lr.ph ], [ %i.ce, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit115 ] ; 3 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !111  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !112
end_hunk_2
begin_hunk_3
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.96") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.z, i64 noundef %.040127, ptr noundef %.041126, i64 noundef %i.n, ptr noundef %i.y)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
end_hunk_3
begin_hunk_4
bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %0, align 8, !tbaa !39
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.critedge80 unwind label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.noexc
  store ptr %i.aw, ptr %0, align 8, !tbaa !39
  br label %.critedge80

bb.j:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.ay = landingpad { ptr, i32 }
end_hunk_5
begin_hunk_6
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.96") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i64 noundef %.040127, ptr noundef %.041126, i64 noundef %i.bb, ptr noundef %i.bl)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit84
end_hunk_6
begin_hunk_7

_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit.thread: ; preds = %_ZN5arrow6StatusC2ERKS0_.exit86, %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %.critedge80

_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit._crit_edge: ; preds = %bb.k
  %.sroa.0.0.copyload.i.i87 = load i64, ptr %i.h, align 8, !tbaa !103
end_hunk_7
begin_hunk_8
bb.s:                                             ; preds = %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit._crit_edge, %bb.i, %bb.h
  %i.cd = phi i64 [ %i.bz, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit._crit_edge ], [ %i.ai, %bb.i ], [ %i.ai, %bb.h ] ; 3 uses
  %.sroa.010.1 = phi i64 [ %.sroa.0.0.copyload.i.i87, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit._crit_edge ], [ 0, %bb.i ], [ %.sroa.0.0.copyload.i.i, %bb.h ] ; 4 uses
  %i.ce = getelementptr inbounds i8, ptr %.041126, i64 %.sroa.010.1
  %i.cf = sub nsw i64 %.040127, %.sroa.010.1      ; 2 uses
  %i.cg = load i64, ptr %i.i, align 8, !tbaa !127
  %i.ch = add nsw i64 %i.cg, %.sroa.010.1
  store i64 %i.ch, ptr %i.i, align 8, !tbaa !127
end_hunk_8
begin_hunk_9

_ZN5arrow6StatusD2Ev.exit101:                     ; preds = %.noexc98
  store ptr %i.cx, ptr %0, align 8, !tbaa !39
  br label %.critedge80

bb.v:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i97
  %i.cz = landingpad { ptr, i32 }
end_hunk_9
begin_hunk_10
  store ptr %i.di, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %.critedge, label %.critedge80

bb.y:                                             ; preds = %bb.x
  %i.dk = landingpad { ptr, i32 }
end_hunk_10
begin_hunk_11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  br label %bb.ab

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit108, %bb.w
  %i.dl = load ptr, ptr %6, align 8, !tbaa !39    ; 2 uses
  %.not.i.i113 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i113, label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit115, label %bb.z, !prof !42
end_hunk_11
begin_hunk_12

_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit115: ; preds = %.critedge, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %10 = icmp sgt i64 %i.cf, 0
  br i1 %10, label %bb.c, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge, !llvm.loop !134

bb.ab:                                            ; preds = %bb.j, %bb.v, %bb.y, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit96, %bb.m, %bb.g
  %.pn73 = phi { ptr, i32 } [ %i.ag, %bb.g ], [ %i.dk, %bb.y ], [ %i.cz, %bb.v ], [ %i.bs, %bb.m ], [ %i.ay, %bb.j ], [ %i.bt, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit96 ]
end_hunk_12
begin_hunk_13
  %i.dt = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #27 ; 0 uses
  resume { ptr, i32 } %.pn73.pn

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge: ; preds = %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit115, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.preheader
  store ptr null, ptr %0, align 8, !tbaa !39, !alias.scope !136
  br label %bb.af

.critedge80:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit108, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit.thread, %_ZN5arrow6StatusD2Ev.exit101, %_ZN5arrow6StatusD2Ev.exit, %bb.e
  %11 = load ptr, ptr %6, align 8, !tbaa !39      ; 2 uses
  %.not.i.i119 = icmp eq ptr %11, null
  br i1 %.not.i.i119, label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit121, label %12, !prof !42

12:                                               ; preds = %.critedge80
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !43, !range !52, !noundef !53
  %15 = trunc nuw i8 %14 to i1
  br i1 %15, label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit121, label %16

16:                                               ; preds = %12
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #27
  br label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit121

_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit121: ; preds = %.critedge80, %12, %16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.af

bb.af:                                            ; preds = %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit121, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge
  %i.du = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #27 ; 0 uses
  ret void
}
end_hunk_13
