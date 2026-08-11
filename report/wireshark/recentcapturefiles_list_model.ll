inline.NumInlined: 143
inline.NumDeleted: 66
begin_hunk_0_@_ZNK27RecentCaptureFilesListModel5flagsERK11QModelIndex:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load i8, ptr %i.s, align 8, !range !15, !noundef !16
  %i.u = trunc nuw i8 %i.t to i1
  %spec.select = select i1 %i.u, i32 33, i32 0
  br label %_ZNK11QModelIndex7isValidEv.exit.thread

_ZNK11QModelIndex7isValidEv.exit.thread:          ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ %spec.select, %bb.d ]
  ret i32 %.sroa.0.0
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN35RecentCaptureFilesReverseProxyModelC2EP7QObject(ptr noundef align 8 dereferenceable_or_null(16) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN21QSortFilterProxyModelC2EP7QObject(ptr noundef align 8 dereferenceable_or_null(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 456) (i8, ptr @_ZTV35RecentCaptureFilesReverseProxyModel, i64 16), ptr %0, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN21QSortFilterProxyModelC2EP7QObject(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK35RecentCaptureFilesReverseProxyModel11mapToSourceERK11QModelIndex(ptr dead_on_unwind noalias writable sret(%class.QModelIndex) align 8 %0, ptr noundef align 8 dereferenceable_or_null(16) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.QModelIndex, align 8         ; 6 uses
  %4 = alloca %class.QModelIndex, align 8         ; 6 uses
  %i.a = load i32, ptr %2, align 8
  %i.b = icmp sgt i32 %i.a, -1
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp sgt i32 %i.d, -1
  %or.cond11 = select i1 %i.b, i1 %i.e, i1 false
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp ne ptr %i.g, null
  %or.cond14 = select i1 %or.cond11, i1 %i.h, i1 false
  br i1 %or.cond14, label %bb.b, label %_ZNK11QModelIndex7isValidEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZNK19QAbstractProxyModel11sourceModelEv(ptr noundef align 8 dereferenceable_or_null(16) %1)
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %_ZNK11QModelIndex7isValidEv.exit.thread, label %bb.c

_ZNK11QModelIndex7isValidEv.exit.thread:          ; preds = %bb.a, %bb.b
  store i32 -1, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef ptr @_ZNK19QAbstractProxyModel11sourceModelEv(ptr noundef align 8 dereferenceable_or_null(16) %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i32 -1, ptr %3, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call noundef i32 %i.q(ptr noundef align 8 dereferenceable_or_null(16) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.s = load i32, ptr %2, align 8
  %i.t = xor i32 %i.s, -1
  %i.u = add i32 %i.r, %i.t                       ; 3 uses
  %i.v = icmp sgt i32 %i.u, -1
  %.not8 = icmp slt i32 %i.u, %i.r
  %or.cond = and i1 %i.v, %.not8
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.y = call noundef ptr @_ZNK19QAbstractProxyModel11sourceModelEv(ptr noundef align 8 dereferenceable_or_null(16) %1) ; 2 uses
  %i.z = load i32, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i32 -1, ptr %4, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 -1, ptr %i.aa, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = load ptr, ptr %i.y, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr dead_on_unwind writable sret(%class.QModelIndex) align 8 %0, ptr noundef align 8 dereferenceable_or_null(16) %i.y, i32 noundef %i.u, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %_ZNK11QModelIndex7isValidEv.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noundef ptr @_ZNK19QAbstractProxyModel11sourceModelEv(ptr noundef align 8 dereferenceable_or_null(16)) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK35RecentCaptureFilesReverseProxyModel13mapFromSourceERK11QModelIndex(ptr dead_on_unwind noalias writable sret(%class.QModelIndex) align 8 %0, ptr noundef align 8 dereferenceable_or_null(16) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.QModelIndex, align 8         ; 6 uses
  %4 = alloca %class.QModelIndex, align 8         ; 6 uses
  %i.a = load i32, ptr %2, align 8
  %i.b = icmp sgt i32 %i.a, -1
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp sgt i32 %i.d, -1
  %or.cond11 = select i1 %i.b, i1 %i.e, i1 false
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp ne ptr %i.g, null
  %or.cond14 = select i1 %or.cond11, i1 %i.h, i1 false
  br i1 %or.cond14, label %bb.b, label %_ZNK11QModelIndex7isValidEv.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef ptr @_ZNK19QAbstractProxyModel11sourceModelEv(ptr noundef align 8 dereferenceable_or_null(16) %1)
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %_ZNK11QModelIndex7isValidEv.exit.thread, label %bb.c

_ZNK11QModelIndex7isValidEv.exit.thread:          ; preds = %bb.a, %bb.b
  store i32 -1, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noundef ptr @_ZNK19QAbstractProxyModel11sourceModelEv(ptr noundef align 8 dereferenceable_or_null(16) %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i32 -1, ptr %3, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call noundef i32 %i.q(ptr noundef align 8 dereferenceable_or_null(16) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %i.s = load i32, ptr %2, align 8
  %i.t = xor i32 %i.s, -1
  %i.u = add i32 %i.r, %i.t                       ; 3 uses
  %i.v = icmp sgt i32 %i.u, -1
  %.not8 = icmp slt i32 %i.u, %i.r
  %or.cond = and i1 %i.v, %.not8
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 -1, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 -1, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.y = load i32, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i32 -1, ptr %4, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 -1, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  %i.ab = load ptr, ptr %1, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr dead_on_unwind writable sret(%class.QModelIndex) align 8 %0, ptr noundef align 8 dereferenceable_or_null(16) %1, i32 noundef %i.u, i32 noundef %i.y, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %_ZNK11QModelIndex7isValidEv.exit.thread
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN26RecentCaptureFilesDelegateC2EP7QObject(ptr noundef align 8 dereferenceable_or_null(16) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN19QStyledItemDelegateC2EP7QObject(ptr noundef align 8 dereferenceable_or_null(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 192) (i8, ptr @_ZTV26RecentCaptureFilesDelegate, i64 16), ptr %0, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN19QStyledItemDelegateC2EP7QObject(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK26RecentCaptureFilesDelegate14formatFileSizeEx(ptr dead_on_unwind noalias writable sret(%class.QString) align 8 %0, ptr nofree readnone align 8 captures(none) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QString, align 8             ; 11 uses
  %4 = alloca %class.QString, align 8             ; 11 uses
  %5 = alloca %class.QString, align 8             ; 11 uses
  %6 = alloca %class.QString, align 8             ; 11 uses
  %7 = lshr i64 %2, 10
  %.zext = and i64 %7, 4194303
  %8 = lshr i64 %2, 20
  %i.a = icmp sgt i64 %2, 11811160063
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %2, 30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store ptr null, ptr %3, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 5, ptr %i.d, align 8
  invoke void @_ZNK7QString3argExii5QChar(ptr dead_on_unwind writable sret(%class.QString) align 8 %0, ptr noundef nonnull align 8 dereferenceable_or_null(24) %3, i64 noundef %i.b, i32 noundef 0, i32 noundef 10, i16 32)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN17QArrayDataPointerIDsED2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.c
  %i.f = atomicrmw sub ptr %i.e, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.f, 1
  br i1 %.not.i.i, label %bb.d, label %_ZN17QArrayDataPointerIDsED2Ev.exit

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.g = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.g, i64 noundef 2, i64 noundef 8) #10
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit

_ZN17QArrayDataPointerIDsED2Ev.exit:              ; preds = %bb.d, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.x

bb.e:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %3, align 8                ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i14, label %_ZN17QArrayDataPointerIDsED2Ev.exit21, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i15

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i15:    ; preds = %bb.e
  %i.j = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %.not.i.i16 = icmp eq i32 %i.j, 1
  br i1 %.not.i.i16, label %bb.f, label %_ZN17QArrayDataPointerIDsED2Ev.exit21

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i15
  %i.k = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.k, i64 noundef 2, i64 noundef 8) #10
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit21

_ZN17QArrayDataPointerIDsED2Ev.exit21:            ; preds = %bb.f, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i15, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.y

bb.g:                                             ; preds = %bb.a
  %i.l = icmp sgt i64 %2, 11534335
  br i1 %i.l, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store ptr null, ptr %4, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.2, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 5, ptr %i.n, align 8
  invoke void @_ZNK7QString3argExii5QChar(ptr dead_on_unwind writable sret(%class.QString) align 8 %0, ptr noundef nonnull align 8 dereferenceable_or_null(24) %4, i64 noundef %8, i32 noundef 0, i32 noundef 10, i16 32)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %4, align 8                ; 2 uses
  %.not.i.i.i22 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i22, label %_ZN17QArrayDataPointerIDsED2Ev.exit29, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i23

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i23:    ; preds = %bb.i
  %i.p = atomicrmw sub ptr %i.o, i32 1 acq_rel, align 4
  %.not.i.i24 = icmp eq i32 %i.p, 1
  br i1 %.not.i.i24, label %bb.j, label %_ZN17QArrayDataPointerIDsED2Ev.exit29

bb.j:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i23
  %i.q = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.q, i64 noundef 2, i64 noundef 8) #10
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit29

_ZN17QArrayDataPointerIDsED2Ev.exit29:            ; preds = %bb.j, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i23, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.x

bb.k:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %4, align 8                ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i30, label %_ZN17QArrayDataPointerIDsED2Ev.exit37, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i31

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i31:    ; preds = %bb.k
  %i.t = atomicrmw sub ptr %i.s, i32 1 acq_rel, align 4
  %.not.i.i32 = icmp eq i32 %i.t, 1
  br i1 %.not.i.i32, label %bb.l, label %_ZN17QArrayDataPointerIDsED2Ev.exit37

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i31
  %i.u = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.u, i64 noundef 2, i64 noundef 8) #10
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit37

_ZN17QArrayDataPointerIDsED2Ev.exit37:            ; preds = %bb.l, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i31, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.y

bb.m:                                             ; preds = %bb.g
  %i.v = icmp sgt i64 %2, 11263
  br i1 %i.v, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store ptr null, ptr %5, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.3, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 5, ptr %i.x, align 8
  invoke void @_ZNK7QString3argExii5QChar(ptr dead_on_unwind writable sret(%class.QString) align 8 %0, ptr noundef nonnull align 8 dereferenceable_or_null(24) %5, i64 noundef %.zext, i32 noundef 0, i32 noundef 10, i16 32)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.y = load ptr, ptr %5, align 8                ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i38, label %_ZN17QArrayDataPointerIDsED2Ev.exit45, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i39

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i39:    ; preds = %bb.o
  %i.z = atomicrmw sub ptr %i.y, i32 1 acq_rel, align 4
  %.not.i.i40 = icmp eq i32 %i.z, 1
  br i1 %.not.i.i40, label %bb.p, label %_ZN17QArrayDataPointerIDsED2Ev.exit45

bb.p:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i39
  %i.aa = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aa, i64 noundef 2, i64 noundef 8) #10
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit45

_ZN17QArrayDataPointerIDsED2Ev.exit45:            ; preds = %bb.p, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i39, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.x

bb.q:                                             ; preds = %bb.n
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i46 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i46, label %_ZN17QArrayDataPointerIDsED2Ev.exit53, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i47

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i47:    ; preds = %bb.q
  %i.ad = atomicrmw sub ptr %i.ac, i32 1 acq_rel, align 4
  %.not.i.i48 = icmp eq i32 %i.ad, 1
  br i1 %.not.i.i48, label %bb.r, label %_ZN17QArrayDataPointerIDsED2Ev.exit53

bb.r:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i47
  %i.ae = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ae, i64 noundef 2, i64 noundef 8) #10
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit53

_ZN17QArrayDataPointerIDsED2Ev.exit53:            ; preds = %bb.r, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i47, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.y

bb.s:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store ptr null, ptr %6, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.4, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 8, ptr %i.ag, align 8
  invoke void @_ZNK7QString3argExii5QChar(ptr dead_on_unwind writable sret(%class.QString) align 8 %0, ptr noundef nonnull align 8 dereferenceable_or_null(24) %6, i64 noundef %2, i32 noundef 0, i32 noundef 10, i16 32)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ah = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i.i.i54 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i54, label %_ZN17QArrayDataPointerIDsED2Ev.exit61, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i55

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i55:    ; preds = %bb.t
  %i.ai = atomicrmw sub ptr %i.ah, i32 1 acq_rel, align 4
  %.not.i.i56 = icmp eq i32 %i.ai, 1
  br i1 %.not.i.i56, label %bb.u, label %_ZN17QArrayDataPointerIDsED2Ev.exit61

bb.u:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i55
  %i.aj = load ptr, ptr %6, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aj, i64 noundef 2, i64 noundef 8) #10
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit61

_ZN17QArrayDataPointerIDsED2Ev.exit61:            ; preds = %bb.u, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i55, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.ak = landingpad { ptr, i32 }
          cleanup
  %i.al = load ptr, ptr %6, align 8               ; 2 uses
  %.not.i.i.i62 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i62, label %_ZN17QArrayDataPointerIDsED2Ev.exit69, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i63

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i63:    ; preds = %bb.v
  %i.am = atomicrmw sub ptr %i.al, i32 1 acq_rel, align 4
  %.not.i.i64 = icmp eq i32 %i.am, 1
  br i1 %.not.i.i64, label %bb.w, label %_ZN17QArrayDataPointerIDsED2Ev.exit69

bb.w:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i63
  %i.an = load ptr, ptr %6, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.an, i64 noundef 2, i64 noundef 8) #10
  br label %_ZN17QArrayDataPointerIDsED2Ev.exit69

_ZN17QArrayDataPointerIDsED2Ev.exit69:            ; preds = %bb.w, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i63, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.y

bb.x:                                             ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit61, %_ZN17QArrayDataPointerIDsED2Ev.exit45, %_ZN17QArrayDataPointerIDsED2Ev.exit29, %_ZN17QArrayDataPointerIDsED2Ev.exit
  ret void

bb.y:                                             ; preds = %_ZN17QArrayDataPointerIDsED2Ev.exit69, %_ZN17QArrayDataPointerIDsED2Ev.exit53, %_ZN17QArrayDataPointerIDsED2Ev.exit37, %_ZN17QArrayDataPointerIDsED2Ev.exit21
  %.pn = phi { ptr, i32 } [ %i.h, %_ZN17QArrayDataPointerIDsED2Ev.exit21 ], [ %i.r, %_ZN17QArrayDataPointerIDsED2Ev.exit37 ], [ %i.ab, %_ZN17QArrayDataPointerIDsED2Ev.exit53 ], [ %i.ak, %_ZN17QArrayDataPointerIDsED2Ev.exit69 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: null_pointer_is_valid
declare void @_ZNK7QString3argExii5QChar(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(24), i64 noundef, i32 noundef, i32 noundef, i16) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK26RecentCaptureFilesDelegate11displayTextERK8QVariantRK7QLocale(ptr dead_on_unwind noalias writable sret(%class.QString) align 8 %0, ptr nofree noundef readnone align 8 captures(none) dereferenceable_or_null(16) %1, ptr noundef align 8 dereferenceable(32) %2, ptr nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZNK8QVariant8toStringEv(ptr dead_on_unwind writable sret(%class.QString) align 8 %0, ptr noundef align 8 dereferenceable_or_null(32) %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZNK8QVariant8toStringEv(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(32)) local_unnamed_addr #1

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZNK26RecentCaptureFilesDelegate15initStyleOptionEP20QStyleOptionViewItemRK11QModelIndex(ptr noundef align 8 dereferenceable_or_null(16) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QString, align 8             ; 9 uses
  %4 = alloca %class.QString, align 8             ; 9 uses
  %5 = alloca %class.QString, align 16            ; 11 uses
  %6 = alloca %class.QVariant, align 8            ; 9 uses
  %7 = alloca %class.QVariant, align 8            ; 9 uses
  %8 = alloca %class.QVariant, align 8            ; 9 uses
  %9 = alloca %class.QString, align 16            ; 14 uses
  %10 = alloca %class.QString, align 8            ; 9 uses
  %11 = alloca %class.QString, align 8            ; 9 uses
  tail call void @_ZNK19QStyledItemDelegate15initStyleOptionEP20QStyleOptionViewItemRK11QModelIndex(ptr noundef align 8 dereferenceable_or_null(16) %0, ptr noundef %1, ptr noundef align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !noalias !17 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !noalias !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !noalias !17
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%class.QVariant) align 8 %6, ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.b, ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %2, i32 noundef 256), !inline_history !20
  br label %_ZNK11QModelIndex4dataEi.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 24, i1 false), !alias.scope !17
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 2, ptr %i.f, align 8, !alias.scope !17
  br label %_ZNK11QModelIndex4dataEi.exit

_ZNK11QModelIndex4dataEi.exit:                    ; preds = %bb.b, %bb.c
  invoke void @_ZNK8QVariant8toStringEv(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %5, ptr noundef nonnull align 8 dereferenceable_or_null(32) %6)
          to label %bb.d unwind label %bb.u

bb.d:                                             ; preds = %_ZNK11QModelIndex4dataEi.exit
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.g = load ptr, ptr %i.a, align 8, !noalias !21 ; 3 uses
  %.not.i32 = icmp eq ptr %i.g, null
  br i1 %.not.i32, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.g, align 8, !noalias !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.j = load ptr, ptr %i.i, align 8, !noalias !21
  invoke void %i.j(ptr dead_on_unwind nonnull writable sret(%class.QVariant) align 8 %7, ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.g, ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %2, i32 noundef 257)
          to label %_ZNK11QModelIndex4dataEi.exit33 unwind label %bb.v, !inline_history !20

bb.f:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 24, i1 false), !alias.scope !21
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 2, ptr %i.k, align 8, !alias.scope !21
  br label %_ZNK11QModelIndex4dataEi.exit33

_ZNK11QModelIndex4dataEi.exit33:                  ; preds = %bb.f, %bb.e
  %i.l = invoke noundef i64 @_ZNK8QVariant10toLongLongEPb(ptr noundef nonnull align 8 dereferenceable_or_null(32) %7, ptr noundef null)
          to label %bb.g unwind label %bb.w

bb.g:                                             ; preds = %_ZNK11QModelIndex4dataEi.exit33
  call void @_ZN8QVariantD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable_or_null(32) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.m = load ptr, ptr %i.a, align 8, !noalias !24 ; 3 uses
  %.not.i34 = icmp eq ptr %i.m, null
  br i1 %.not.i34, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %i.m, align 8, !noalias !24
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  %i.p = load ptr, ptr %i.o, align 8, !noalias !24
  invoke void %i.p(ptr dead_on_unwind nonnull writable sret(%class.QVariant) align 8 %8, ptr noundef nonnull align 8 dereferenceable_or_null(16) %i.m, ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %2, i32 noundef 258)
          to label %_ZNK11QModelIndex4dataEi.exit36 unwind label %bb.y, !inline_history !20

bb.i:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 24, i1 false), !alias.scope !24
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 2, ptr %i.q, align 8, !alias.scope !24
  br label %_ZNK11QModelIndex4dataEi.exit36

_ZNK11QModelIndex4dataEi.exit36:                  ; preds = %bb.i, %bb.h
end_hunk_0
