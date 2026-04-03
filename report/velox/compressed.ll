begin_hunk_0
inline.NumInlined: 976
inline.NumDeleted: 447
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"
end_hunk_0
begin_hunk_1
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Result.97", align 8  ; 12 uses
  %7 = alloca %"class.arrow::Result.97", align 8  ; 13 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %.lr.ph, label %bb.b

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
end_hunk_1
begin_hunk_2
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0..sroa_idx.i.i75 = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  br label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #30
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %.lr.ph, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit98
  %.041 = phi ptr [ %.243, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit98 ], [ %2, %.lr.ph ] ; 6 uses
  %.040 = phi i64 [ %.2, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit98 ], [ %3, %.lr.ph ] ; 7 uses
  %9 = icmp sgt i64 %.040, 0
  br i1 %9, label %bb.c, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !119  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !120
end_hunk_2
begin_hunk_3
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  invoke void %i.ac(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.97") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.z, i64 noundef %.040, ptr noundef %.041, i64 noundef %i.n, ptr noundef %i.y)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
end_hunk_3
begin_hunk_4

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %.critedge unwind label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.noexc
  store ptr %i.aw, ptr %0, align 8, !tbaa !42, !alias.scope !137
  br label %.critedge

bb.j:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.ay = landingpad { ptr, i32 }
end_hunk_5
begin_hunk_6
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !7
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.97") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.bm, i64 noundef %.040, ptr noundef %.041, i64 noundef %i.bb, ptr noundef %i.bl)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit73
end_hunk_6
begin_hunk_7

_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit.thread: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %.critedge

_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit._crit_edge: ; preds = %bb.k
  %.sroa.0.0.copyload.i.i74 = load i64, ptr %i.h, align 8, !tbaa !80
end_hunk_7
begin_hunk_8
bb.r:                                             ; preds = %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit._crit_edge, %bb.i, %bb.h
  %i.by = phi i64 [ %i.bx, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit._crit_edge ], [ %i.ai, %bb.i ], [ %i.ai, %bb.h ] ; 3 uses
  %.sroa.010.1 = phi i64 [ %.sroa.0.0.copyload.i.i74, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit._crit_edge ], [ 0, %bb.i ], [ %.sroa.0.0.copyload.i.i, %bb.h ] ; 4 uses
  %i.bz = getelementptr inbounds i8, ptr %.041, i64 %.sroa.010.1 ; 3 uses
  %i.ca = sub nsw i64 %.040, %.sroa.010.1         ; 3 uses
  %i.cb = load i64, ptr %i.i, align 8, !tbaa !143
  %i.cc = add nsw i64 %i.cb, %.sroa.010.1
  store i64 %i.cc, ptr %i.i, align 8, !tbaa !143
end_hunk_8
begin_hunk_9

_ZN5arrow6StatusD2Ev.exit88:                      ; preds = %.noexc85
  store ptr %i.cs, ptr %0, align 8, !tbaa !42, !alias.scope !150
  br label %.critedge

bb.u:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i84
  %i.cu = landingpad { ptr, i32 }
end_hunk_9
begin_hunk_10
  store ptr %i.dd, ptr %0, align 8, !tbaa !42, !alias.scope !158
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.de = icmp eq ptr %i.dd, null
  br label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.df = landingpad { ptr, i32 }
end_hunk_10
begin_hunk_11
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.z

.critedge:                                        ; preds = %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit.thread, %_ZN5arrow6StatusD2Ev.exit93, %_ZN5arrow6StatusD2Ev.exit88, %_ZN5arrow6StatusD2Ev.exit, %bb.v, %bb.e
  %.5 = phi i1 [ false, %bb.e ], [ %i.de, %_ZN5arrow6StatusD2Ev.exit93 ], [ false, %_ZN5arrow6StatusD2Ev.exit88 ], [ false, %_ZN5arrow6StatusD2Ev.exit ], [ false, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit.thread ], [ true, %bb.v ]
  %.243 = phi ptr [ %.041, %bb.e ], [ %i.bz, %_ZN5arrow6StatusD2Ev.exit93 ], [ %i.bz, %_ZN5arrow6StatusD2Ev.exit88 ], [ %.041, %_ZN5arrow6StatusD2Ev.exit ], [ %.041, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit.thread ], [ %i.bz, %bb.v ]
  %.2 = phi i64 [ %.040, %bb.e ], [ %i.ca, %_ZN5arrow6StatusD2Ev.exit93 ], [ %i.ca, %_ZN5arrow6StatusD2Ev.exit88 ], [ %.040, %_ZN5arrow6StatusD2Ev.exit ], [ %.040, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit.thread ], [ %i.ca, %bb.v ]
  %i.dg = load ptr, ptr %6, align 8, !tbaa !42
  %.not.i.i96 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i96, label %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit98, label %bb.y, !prof !45
end_hunk_11
begin_hunk_12

_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit98: ; preds = %.critedge, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br i1 %.5, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.ac, !llvm.loop !161

bb.z:                                             ; preds = %bb.j, %bb.u, %bb.x, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit83, %bb.m, %bb.g
  %.pn64 = phi { ptr, i32 } [ %i.ag, %bb.g ], [ %i.df, %bb.x ], [ %i.cu, %bb.u ], [ %i.bs, %bb.m ], [ %i.ay, %bb.j ], [ %i.bt, %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit83 ]
end_hunk_12
begin_hunk_13
  %i.di = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 0 uses
  resume { ptr, i32 } %.pn64.pn

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge: ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  store ptr null, ptr %0, align 8, !tbaa !42, !alias.scope !163
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN5arrow6ResultINS_4util10Compressor14CompressResultEED2Ev.exit98, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit._crit_edge
  %i.dj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #26 ; 0 uses
  ret void
}
end_hunk_13
