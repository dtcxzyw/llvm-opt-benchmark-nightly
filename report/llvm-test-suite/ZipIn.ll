inline.NumInlined: 218
inline.NumDeleted: 82
begin_hunk_0_@_ZN8NArchive4NZip10CInArchive10ReadBufferER7CBufferIhEj:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.d ], [ %i.f, %bb.c ], [ null, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %.0.i, ptr %i.j, align 8, !tbaa !34
  store i64 %i.b, ptr %i.c, align 8, !tbaa !33
  br label %_ZN7CBufferIhE11SetCapacityEm.exit

_ZN7CBufferIhE11SetCapacityEm.exit:               ; preds = %bb.a, %bb.g
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit, label %bb.h

bb.h:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.o = call noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef %i.n, i32 noundef %2, ptr noundef nonnull %i.a)
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.p, align 4, !tbaa !54
  call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i: ; preds = %bb.h
  %i.q = load i32, ptr %i.a, align 4, !tbaa !4
  %i.r = icmp eq i32 %i.q, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.r, label %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit, label %bb.j

bb.j:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
  %i.s = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !54
  call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit: ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i, %_ZN7CBufferIhE11SetCapacityEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i16 @_ZN8NArchive4NZip10CInArchive10ReadUInt16Ev(ptr noundef nonnull align 8 dereferenceable(138) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [2 x i8], align 2                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.c = call noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.b, i32 noundef 2, ptr noundef nonnull %i.a)
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.d, align 4, !tbaa !54
  call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i: ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !4
  %i.f = icmp eq i32 %i.e, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.f, label %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
  %i.g = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !54
  call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit: ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
  %i.h = load i16, ptr %i.b, align 2, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret i16 %i.h
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev(ptr noundef nonnull align 8 dereferenceable(138) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.c = call noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull %i.a)
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.d, align 4, !tbaa !54
  call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i: ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !4
  %i.f = icmp eq i32 %i.e, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.f, label %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
  %i.g = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !54
  call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit: ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
  %i.h = load i32, ptr %i.b, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret i32 %i.h
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN8NArchive4NZip10CInArchive10ReadUInt64Ev(ptr noundef nonnull align 8 dereferenceable(138) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.c = call noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.b, i32 noundef 8, ptr noundef nonnull %i.a)
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.d, align 4, !tbaa !54
  call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i: ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !4
  %i.f = icmp eq i32 %i.e, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.f, label %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
  %i.g = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 0, ptr %i.g, align 4, !tbaa !54
  call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit: ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
  %i.h = load i64, ptr %i.b, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret i64 %i.h
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NArchive4NZip10CInArchive10ReadUInt32ERj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.c = call noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull %i.a)
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.d, align 4, !tbaa !54
  call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit: ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !4
  %i.f = icmp eq i32 %i.e, 4                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit
  %i.g = load i32, ptr %i.b, align 4, !tbaa !4
  store i32 %i.g, ptr %1, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret i1 %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive4NZip10CInArchive12ReadFileNameEjR11CStringBaseIcE(ptr noundef nonnull align 8 dereferenceable(138) %0, i32 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %.split10, label %.split

.split:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !58   ; 2 uses
  %.not.i = icmp slt i32 %1, %i.e
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.split
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !60
  br label %_ZN11CStringBaseIcE9GetBufferEi.exit

bb.c:                                             ; preds = %.split
  %3 = add nsw i32 %1, 1                          ; 2 uses
  %i.f = sext i32 %3 to i64
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #20 ; 11 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = icmp sgt i32 %i.e, 0
  br i1 %i.i, label %.preheader.i.i, label %bb.d

.preheader.i.i:                                   ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !61   ; 4 uses
  %i.l = icmp sgt i32 %i.k, 0
  %.pre.i.i = load ptr, ptr %2, align 8, !tbaa !60 ; 10 uses
  br i1 %i.l, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.preheader.i.i
  %.pre.i.i28 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %i.k to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %i.k, 4
  %i.m = sub i64 %i.h, %.pre.i.i28
  %diff.check = icmp ult i64 %i.m, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check29 = icmp ult i32 %i.k, 32
  br i1 %min.iters.check29, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1, !tbaa !36
  %wide.load30 = load <16 x i8>, ptr %i.o, align 1, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <16 x i8> %wide.load, ptr %i.p, align 1, !tbaa !36
  store <16 x i8> %wide.load30, ptr %i.q, align 1, !tbaa !36
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !65

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec32 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index33 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index33
  %wide.load34 = load <4 x i8>, ptr %i.s, align 1, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 %index33
  store <4 x i8> %wide.load34, ptr %i.t, align 1, !tbaa !36
  %index.next35 = add nuw i64 %index33, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next35, %n.vec32
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !66

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n36 = icmp eq i64 %n.vec32, %wide.trip.count.i.i
  br i1 %cmp.n36, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec32, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.w = load i8, ptr %i.v, align 1, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i.prol
  store i8 %i.w, ptr %i.x, align 1, !tbaa !36
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !67

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.y = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.aa = icmp eq ptr %.pre.i.i, null
  br i1 %i.aa, label %bb.d, label %._crit_edge.thread.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !36
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !36
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.next.i.i
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !36
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.next.i.i.1
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !36
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !36
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.next.i.i.2
  store i8 %i.al, ptr %i.am, align 1, !tbaa !36
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph, !llvm.loop !68

._crit_edge.thread.i.i:                           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #18
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %bb.c
  store ptr %i.g, ptr %2, align 8, !tbaa !60
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !61
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds i8, ptr %i.g, i64 %i.ap
  store i8 0, ptr %i.aq, align 1, !tbaa !36
  store i32 %3, ptr %i.d, align 4, !tbaa !58
  br label %_ZN11CStringBaseIcE9GetBufferEi.exit

_ZN11CStringBaseIcE9GetBufferEi.exit:             ; preds = %bb.b, %bb.d
  %4 = phi ptr [ %.pre.i, %bb.b ], [ %i.g, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.ar = call noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef %4, i32 noundef %1, ptr noundef nonnull %i.b)
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN11CStringBaseIcE9GetBufferEi.exit
  %i.as = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.as, align 4, !tbaa !54
  call void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i: ; preds = %_ZN11CStringBaseIcE9GetBufferEi.exit
  %i.at = load i32, ptr %i.b, align 4, !tbaa !4
  %i.au = icmp eq i32 %i.at, %1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br i1 %i.au, label %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
  %i.av = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 0, ptr %i.av, align 4, !tbaa !54
  call void @__cxa_throw(ptr nonnull %i.av, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

.split10:                                         ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i32 0, ptr %i.aw, align 8, !tbaa !61
  %i.ax = load ptr, ptr %2, align 8, !tbaa !60
  store i8 0, ptr %i.ax, align 1, !tbaa !36
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !58
  %.not.i11 = icmp sgt i32 %i.az, 0
  br i1 %.not.i11, label %.split10._ZN11CStringBaseIcE9GetBufferEi.exit21_crit_edge, label %bb.g

.split10._ZN11CStringBaseIcE9GetBufferEi.exit21_crit_edge: ; preds = %.split10
  %.pre = load ptr, ptr %2, align 8, !tbaa !60
  br label %_ZN11CStringBaseIcE9GetBufferEi.exit21

bb.g:                                             ; preds = %.split10
  %i.ba = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znam(i64 noundef 1) #20 ; 3 uses
  store ptr %i.ba, ptr %2, align 8, !tbaa !60
  %i.bb = load i32, ptr %i.aw, align 8, !tbaa !61
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds i8, ptr %i.ba, i64 %i.bc
  store i8 0, ptr %i.bd, align 1, !tbaa !36
  store i32 1, ptr %i.ay, align 4, !tbaa !58
  br label %_ZN11CStringBaseIcE9GetBufferEi.exit21

_ZN11CStringBaseIcE9GetBufferEi.exit21:           ; preds = %.split10._ZN11CStringBaseIcE9GetBufferEi.exit21_crit_edge, %bb.g
  %i.be = phi ptr [ %.pre, %.split10._ZN11CStringBaseIcE9GetBufferEi.exit21_crit_edge ], [ %i.ba, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.bf = call noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef %i.be, i32 noundef 0, ptr noundef nonnull %i.a)
  %.not.i.i22 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i22, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i23, label %bb.h

bb.h:                                             ; preds = %_ZN11CStringBaseIcE9GetBufferEi.exit21
  %i.bg = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.bg, align 4, !tbaa !54
  call void @__cxa_throw(ptr nonnull %i.bg, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i23: ; preds = %_ZN11CStringBaseIcE9GetBufferEi.exit21
  %i.bh = load i32, ptr %i.a, align 4, !tbaa !4
  %i.bi = icmp eq i32 %i.bh, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.bi, label %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit, label %bb.i

bb.i:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i23
  %i.bj = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 0, ptr %i.bj, align 4, !tbaa !54
  call void @__cxa_throw(ptr nonnull %i.bj, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit: ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i23, %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
  %phi.call = phi ptr [ %4, %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i ], [ %i.be, %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i23 ]
  %i.bk = zext i32 %1 to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %phi.call, i64 %i.bk
  store i8 0, ptr %i.bl, align 1, !tbaa !36
  %i.bm = load ptr, ptr %2, align 8, !tbaa !60    ; 2 uses
  %strlen.i.i = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bm) ; 2 uses
  %i.bn = trunc i64 %strlen.i.i to i32
  %sext.i = shl i64 %strlen.i.i, 32
  %i.bo = ashr exact i64 %sext.i, 32
  %i.bp = getelementptr inbounds i8, ptr %i.bm, i64 %i.bo
  store i8 0, ptr %i.bp, align 1, !tbaa !36
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.bn, ptr %i.bq, align 8, !tbaa !61
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8NArchive4NZip10CInArchive9ReadExtraEjRNS0_11CExtraBlockERyS4_S4_Rj(ptr noundef nonnull align 8 dereferenceable(138) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 16 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 3 uses
  %i.d = alloca i8, align 1                       ; 6 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca [2 x i8], align 2                 ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca [2 x i8], align 2                 ; 4 uses
  %7 = alloca %"struct.NArchive::NZip::CExtraSubBlock", align 8 ; 9 uses
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.z = icmp ugt i32 %1, 3
  br i1 %i.z, label %.lr.ph261, label %.loopexit

.lr.ph261:                                        ; preds = %bb.a, %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit
  %.044260 = phi i32 [ %.6174, %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit ], [ %1, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.q, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #19
  %i.aa = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.p, i32 noundef 2, ptr noundef nonnull %i.o)
          to label %.noexc unwind label %.loopexit105

.noexc:                                           ; preds = %.lr.ph261
  %.not.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i, label %.invoke

.invoke:                                          ; preds = %.noexc, %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i
  %.sink = phi i32 [ 0, %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i ], [ 6, %.noexc ]
  %i.ab = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 %.sink, ptr %i.ab, align 4, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.ab, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
          to label %.cont unwind label %.loopexit.split-lp106

.cont:                                            ; preds = %.invoke
  unreachable

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i: ; preds = %.noexc
  %i.ac = load i32, ptr %i.o, align 4, !tbaa !4
  %i.ad = icmp eq i32 %i.ac, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #19
  br i1 %i.ad, label %bb.b, label %.invoke

bb.b:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i
  %i.ae = load i16, ptr %i.p, align 2, !tbaa !37  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #19
  store i16 %i.ae, ptr %7, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #19
  %i.af = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.n, i32 noundef 2, ptr noundef nonnull %i.m)
          to label %.noexc58 unwind label %.loopexit110

.noexc58:                                         ; preds = %bb.b
  %.not.i.i.i56 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i56, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i57, label %.invoke223

.invoke223:                                       ; preds = %.noexc58, %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i80, %.noexc81, %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i74, %.noexc75, %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i68, %.noexc69, %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i63, %.noexc64, %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i57
  %.sink229 = phi i32 [ 6, %.noexc81 ], [ 0, %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i74 ], [ 6, %.noexc75 ], [ 0, %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i68 ], [ 6, %.noexc69 ], [ 0, %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i63 ], [ 6, %.noexc64 ], [ 0, %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i57 ], [ 0, %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i80 ], [ 6, %.noexc58 ]
  %i.ag = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 %.sink229, ptr %i.ag, align 4, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
          to label %.cont224 unwind label %.loopexit.split-lp111

.cont224:                                         ; preds = %.invoke223
  unreachable

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i57: ; preds = %.noexc58
  %i.ah = load i32, ptr %i.m, align 4, !tbaa !4
  %i.ai = icmp eq i32 %i.ah, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  br i1 %i.ai, label %bb.c, label %.invoke223

bb.c:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i57
  %i.aj = load i16, ptr %i.n, align 2, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  %i.ak = zext i16 %i.aj to i32
  %i.al = add i32 %.044260, -4                    ; 4 uses
  %spec.select = call i32 @llvm.umin.i32(i32 %i.al, i32 %i.ak) ; 5 uses
  %i.am = icmp eq i16 %i.ae, 1
  br i1 %i.am, label %bb.d, label %bb.ae

.loopexit105:                                     ; preds = %.lr.ph261
  %lpad.loopexit107 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp106:                            ; preds = %.invoke
  %lpad.loopexit.split-lp108 = landingpad { ptr, i32 }
          cleanup
  br label %.bodythread-pre-split

.loopexit110:                                     ; preds = %bb.ae, %bb.b, %bb.f, %bb.j, %bb.n, %bb.r, %bb.af, %_ZN8NArchive4NZip14CExtraSubBlockC2ERKS1_.exit.i
  %lpad.loopexit112 = landingpad { ptr, i32 }
          cleanup
  br label %.bodythread-pre-split

.loopexit.split-lp111:                            ; preds = %.invoke223
  %lpad.loopexit.split-lp113 = landingpad { ptr, i32 }
          cleanup
  br label %.bodythread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.an = load i64, ptr %3, align 8, !tbaa !41
  %i.ao = icmp eq i64 %i.an, 4294967295
  br i1 %i.ao, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ap = icmp samesign ult i32 %spec.select, 8
  br i1 %i.ap, label %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #19
  %i.aq = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.l, i32 noundef 8, ptr noundef nonnull %i.k)
          to label %.noexc64 unwind label %.loopexit110

.noexc64:                                         ; preds = %bb.f
  %.not.i.i.i62 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i62, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i63, label %.invoke223

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i63: ; preds = %.noexc64
  %i.ar = load i32, ptr %i.k, align 4, !tbaa !4
  %i.as = icmp eq i32 %i.ar, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #19
  br i1 %i.as, label %bb.g, label %.invoke223

bb.g:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i63
  %i.at = load i64, ptr %i.l, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  store i64 %i.at, ptr %3, align 8, !tbaa !41
  %i.au = add i32 %.044260, -12
  %i.av = add nsw i32 %spec.select, -8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.145 = phi i32 [ %i.au, %bb.g ], [ %i.al, %bb.d ] ; 3 uses
  %.1 = phi i32 [ %i.av, %bb.g ], [ %spec.select, %bb.d ] ; 3 uses
  %i.aw = load i64, ptr %4, align 8, !tbaa !41
  %i.ax = icmp eq i64 %i.aw, 4294967295
  br i1 %i.ax, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ay = icmp samesign ult i32 %.1, 8
  br i1 %i.ay, label %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #19
  %i.az = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.j, i32 noundef 8, ptr noundef nonnull %i.i)
          to label %.noexc69 unwind label %.loopexit110

.noexc69:                                         ; preds = %bb.j
  %.not.i.i.i67 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i67, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i68, label %.invoke223

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i68: ; preds = %.noexc69
  %i.ba = load i32, ptr %i.i, align 4, !tbaa !4
  %i.bb = icmp eq i32 %i.ba, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #19
  br i1 %i.bb, label %bb.k, label %.invoke223

bb.k:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i68
  %i.bc = load i64, ptr %i.j, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #19
  store i64 %i.bc, ptr %4, align 8, !tbaa !41
  %i.bd = add i32 %.145, -8
  %i.be = add nsw i32 %.1, -8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.246 = phi i32 [ %i.bd, %bb.k ], [ %.145, %bb.h ] ; 3 uses
  %.2 = phi i32 [ %i.be, %bb.k ], [ %.1, %bb.h ]  ; 3 uses
  %i.bf = load i64, ptr %5, align 8, !tbaa !41
  %i.bg = icmp eq i64 %i.bf, 4294967295
  br i1 %i.bg, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
end_hunk_0
begin_hunk_1_@_ZN8NArchive4NZip10CInArchive9ReadExtraEjRNS0_11CExtraBlockERyS4_S4_Rj:bb.a

bb.ai:                                            ; preds = %bb.ah
  call void @_ZdaPv(ptr noundef nonnull %.pre.pre) #18, !inline_history !43
  br label %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit

_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit:       ; preds = %.thread176, %bb.ah, %bb.ai
  %.6174 = phi i32 [ %i.eg, %.thread176 ], [ %i.em, %bb.ah ], [ %i.em, %bb.ai ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.eo = icmp ugt i32 %.6174, 3
  br i1 %i.eo, label %.lr.ph261, label %.loopexit

.bodythread-pre-split:                            ; preds = %bb.ag, %.loopexit149, %.loopexit.split-lp106, %.loopexit.split-lp111, %.loopexit110, %.loopexit.split-lp, %.loopexit104.loopexit.split-lp, %.loopexit104.loopexit
  %.pn.pn.ph = phi { ptr, i32 } [ %lpad.loopexit.split-lp148, %.loopexit104.loopexit.split-lp ], [ %lpad.loopexit147, %.loopexit104.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit112, %.loopexit110 ], [ %lpad.loopexit.split-lp113, %.loopexit.split-lp111 ], [ %lpad.loopexit.split-lp108, %.loopexit.split-lp106 ], [ %i.ef, %bb.ag ], [ %.lcssa, %.loopexit149 ]
  %.pr = load ptr, ptr %i.s, align 8, !tbaa !34
  br label %.body

.body:                                            ; preds = %.bodythread-pre-split, %.loopexit105
  %i.ep = phi ptr [ %.pr, %.bodythread-pre-split ], [ null, %.loopexit105 ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %.pn.pn.ph, %.bodythread-pre-split ], [ %lpad.loopexit107, %.loopexit105 ]
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit91, label %bb.aj

bb.aj:                                            ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.ep) #18, !inline_history !43
  br label %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit91

_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit91:     ; preds = %.body, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  resume { ptr, i32 } %.pn.pn

.loopexit:                                        ; preds = %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit, %bb.a, %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit.thread
  %.7 = phi i32 [ %.6.ph, %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit.thread ], [ %1, %bb.a ], [ %.6174, %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit ] ; 2 uses
  %i.er = zext i32 %.7 to i64
  %.not.i = icmp eq i32 %.7, 0
  br i1 %.not.i, label %_ZN8NArchive4NZip10CInArchive4SkipEy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit, %_ZN8NArchive4NZip10CInArchive8ReadByteEv.exit.i
  %.03.i = phi i64 [ %i.ex, %_ZN8NArchive4NZip10CInArchive8ReadByteEv.exit.i ], [ 0, %.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.es = call noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef nonnull %i.b)
  %.not.i.i.i.i92 = icmp eq i32 %i.es, 0
  br i1 %.not.i.i.i.i92, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i
  %i.et = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.et, align 4, !tbaa !54
  call void @__cxa_throw(ptr nonnull %i.et, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i.i: ; preds = %.lr.ph.i
  %i.eu = load i32, ptr %i.b, align 4, !tbaa !4
  %i.ev = icmp eq i32 %i.eu, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br i1 %i.ev, label %_ZN8NArchive4NZip10CInArchive8ReadByteEv.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i.i
  %i.ew = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 0, ptr %i.ew, align 4, !tbaa !54
  call void @__cxa_throw(ptr nonnull %i.ew, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive8ReadByteEv.exit.i:  ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  %i.ex = add nuw nsw i64 %.03.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ex, %i.er
  br i1 %exitcond.not.i, label %_ZN8NArchive4NZip10CInArchive4SkipEy.exit, label %.lr.ph.i, !llvm.loop !57

_ZN8NArchive4NZip10CInArchive4SkipEy.exit:        ; preds = %_ZN8NArchive4NZip10CInArchive8ReadByteEv.exit.i, %.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NZip10CInArchive13ReadLocalItemERNS0_7CItemExE(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull align 8 dereferenceable(186) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [26 x i8], align 16               ; 10 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.e = call noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.b, i32 noundef 26, ptr noundef nonnull %i.a)
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.f, align 4, !tbaa !54
  call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i: ; preds = %bb.a
  %i.g = load i32, ptr %i.a, align 4, !tbaa !4
  %i.h = icmp eq i32 %i.g, 26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.h, label %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
  %i.i = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 0, ptr %i.i, align 4, !tbaa !54
  call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit: ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
  %i.j = load i8, ptr %i.b, align 16, !tbaa !36
  store i8 %i.j, ptr %1, align 8, !tbaa !77
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !36
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.l, ptr %i.m, align 1, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.p = load <2 x i16>, ptr %i.n, align 2, !tbaa !37
  store <2 x i16> %i.p, ptr %i.o, align 2, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load <2 x i32>, ptr %i.q, align 2, !tbaa !4
  store <2 x i32> %i.s, ptr %i.r, align 8, !tbaa !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.v = load <2 x i32>, ptr %i.t, align 2, !tbaa !4
  %i.w = zext <2 x i32> %i.v to <2 x i64>
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.y = load i16, ptr %i.x, align 2, !tbaa !37
  %i.z = zext i16 %i.y to i32                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !37
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  store i16 %i.ab, ptr %i.ac, align 8, !tbaa !84
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_ZN8NArchive4NZip10CInArchive12ReadFileNameEjR11CStringBaseIcE(ptr noundef nonnull align 8 dereferenceable(138) %0, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.ad)
  %i.ae = add nuw nsw i32 %i.z, 30
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 180
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !88
  %i.ag = load i16, ptr %i.ac, align 8, !tbaa !84 ; 2 uses
  %.not = icmp eq i16 %i.ag, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 0, ptr %i.c, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !4
  %i.ai = zext i16 %i.ag to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @_ZN8NArchive4NZip10CInArchive9ReadExtraEjRNS0_11CExtraBlockERyS4_S4_Rj(ptr noundef nonnull align 8 dereferenceable(138) %0, i32 noundef %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN8NArchive4NZip10CInArchive13SafeReadBytesEPvj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NZip10CInArchive24ReadLocalItemAfterCdItemERNS0_7CItemExE(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull align 8 dereferenceable(186) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %2 = alloca %"class.NArchive::NZip::CItemEx", align 8 ; 25 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !tbaa !89, !range !44, !noundef !45
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load i64, ptr %i.f, align 8, !tbaa !90
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.i = load i64, ptr %i.h, align 8, !tbaa !91
  %i.j = add i64 %i.i, %i.g
  %i.k = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = invoke noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef %i.j, i32 noundef 0, ptr noundef null)
          to label %_ZN8NArchive4NZip10CInArchive4SeekEy.exit unwind label %bb.c, !inline_history !92 ; 2 uses

_ZN8NArchive4NZip10CInArchive4SeekEy.exit:        ; preds = %bb.b
  %.not.not = icmp eq i32 %i.o, 0
  br i1 %.not.not, label %bb.d, label %bb.y

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.x

bb.d:                                             ; preds = %_ZN8NArchive4NZip10CInArchive4SeekEy.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 0, ptr %i.r, align 8
  %i.s = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #20
          to label %bb.e unwind label %bb.g       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 44
  store ptr %i.s, ptr %i.q, align 8, !tbaa !60
  store i8 0, ptr %i.s, align 1, !tbaa !36
  store i32 4, ptr %i.t, align 4, !tbaa !58
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.w, align 8, !tbaa !93
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.u, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.z, align 8, !tbaa !93
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.x, align 8, !tbaa !23
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.aa, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.ab, i8 0, i64 19, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.ac = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull %i.a)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i, label %.invoke

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i: ; preds = %.noexc
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !4
  %i.ae = icmp eq i32 %i.ad, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.ae, label %bb.f, label %.invoke

.invoke:                                          ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i, %.noexc
  %.sink = phi i32 [ 6, %.noexc ], [ 0, %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i ]
  %i.af = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 %.sink, ptr %i.af, align 4, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
          to label %.cont unwind label %bb.h

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.ah = load i32, ptr @_ZN8NArchive4NZip10NSignature16kLocalFileHeaderE, align 4, !tbaa !4
  %.not26 = icmp eq i32 %i.ag, %i.ah
  br i1 %.not26, label %bb.i, label %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread39

bb.g:                                             ; preds = %bb.d
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.w

bb.h:                                             ; preds = %.invoke, %.noexc36, %bb.q, %bb.e
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.v

bb.i:                                             ; preds = %bb.f
  %i.ak = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive13ReadLocalItemERNS0_7CItemExE(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull align 8 dereferenceable(186) %2)
          to label %bb.k unwind label %bb.j       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.v

bb.k:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val = load i16, ptr %i.am, align 2            ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val31 = load i16, ptr %i.an, align 4, !tbaa !94 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 2
  %.val32 = load i16, ptr %i.ao, align 2          ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val33 = load i16, ptr %i.ap, align 4, !tbaa !94
  %.not.i = icmp eq i16 %.val31, %.val33
  br i1 %.not.i, label %bb.l, label %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread39

bb.l:                                             ; preds = %bb.k
  %i.aq = icmp eq i16 %.val, %.val32
  br i1 %i.aq, label %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread, label %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit

_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit: ; preds = %bb.l
  %cond.i = icmp eq i16 %.val31, 8
  %i.ar = icmp ult i16 %.val31, 7
  %spec.select.i = select i1 %i.ar, i32 32767, i32 65535
  %.0.i = select i1 %cond.i, i32 32761, i32 %spec.select.i
  %i.as = xor i16 %.val32, %.val
  %i.at = zext i16 %i.as to i32
  %i.au = and i32 %.0.i, %i.at
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread, label %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread39

_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread: ; preds = %bb.l, %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit
  %i.aw = and i16 %.val32, 8
  %.not = icmp eq i16 %i.aw, 0
  br i1 %.not, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !95
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !95
  %.not27 = icmp eq i32 %i.ay, %i.ba
  br i1 %.not27, label %bb.n, label %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread39

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !96
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !96
  %.not28 = icmp eq i64 %i.bc, %i.be
  br i1 %.not28, label %bb.o, label %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread39

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !97
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !97
  %.not29 = icmp eq i64 %i.bg, %i.bi
  br i1 %.not29, label %bb.p, label %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread39

bb.p:                                             ; preds = %bb.o, %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !61
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !61
  %.not30 = icmp eq i32 %i.bk, %i.bm
  br i1 %.not30, label %bb.q, label %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread39

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 180
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !88
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 180
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !88
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.br = load i16, ptr %i.bq, align 8, !tbaa !84
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 184
  store i16 %i.br, ptr %i.bs, align 8, !tbaa !84
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.bt)
          to label %.noexc36 unwind label %bb.h

.noexc36:                                         ; preds = %bb.q
  %i.bu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN8NArchive4NZip11CExtraBlockaSERKS1_.exit unwind label %bb.h ; 0 uses

_ZN8NArchive4NZip11CExtraBlockaSERKS1_.exit:      ; preds = %.noexc36
  store i8 1, ptr %i.c, align 8, !tbaa !89
  br label %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread39

_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread39: ; preds = %bb.k, %bb.m, %bb.n, %bb.o, %bb.p, %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit, %bb.f, %_ZN8NArchive4NZip11CExtraBlockaSERKS1_.exit
  %spec.select = phi i32 [ 1, %bb.f ], [ 1, %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit ], [ 0, %_ZN8NArchive4NZip11CExtraBlockaSERKS1_.exit ], [ 1, %bb.p ], [ 1, %bb.o ], [ 1, %bb.n ], [ 1, %bb.m ], [ 1, %bb.k ]
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.aa, align 8, !tbaa !23
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !34 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZN7CBufferIhED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread39
  call void @_ZdaPv(ptr noundef nonnull %i.bw) #18, !inline_history !43
  br label %_ZN7CBufferIhED2Ev.exit.i

_ZN7CBufferIhED2Ev.exit.i:                        ; preds = %bb.r, %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread39
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.x, align 8, !tbaa !23
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i unwind label %bb.s, !inline_history !98

bb.s:                                             ; preds = %_ZN7CBufferIhED2Ev.exit.i
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #22, !inline_history !98
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i:        ; preds = %_ZN7CBufferIhED2Ev.exit.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.x) #19, !inline_history !98
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.u, align 8, !tbaa !23
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i unwind label %bb.t, !inline_history !98

bb.t:                                             ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #22, !inline_history !98
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i:      ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.u) #19, !inline_history !98
  %i.cc = load ptr, ptr %i.q, align 8, !tbaa !60  ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZN8NArchive4NZip5CItemD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.cc) #18
  br label %_ZN8NArchive4NZip5CItemD2Ev.exit

_ZN8NArchive4NZip5CItemD2Ev.exit:                 ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.y

bb.v:                                             ; preds = %bb.j, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.h ], [ %i.al, %bb.j ]
  call void @_ZN8NArchive4NZip5CItemD2Ev(ptr noundef nonnull align 8 dereferenceable(186) %2) #19
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.v ], [ %i.ai, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.w ], [ %i.p, %bb.c ]
  %.225 = extractvalue { ptr, i32 } %.pn.pn.pn, 0
  %i.ce = call ptr @__cxa_begin_catch(ptr %.225) #19 ; 0 uses
  call void @__cxa_end_catch()
  br label %bb.y

bb.y:                                             ; preds = %_ZN8NArchive4NZip5CItemD2Ev.exit, %_ZN8NArchive4NZip10CInArchive4SeekEy.exit, %bb.a, %bb.x
  %.3 = phi i32 [ %i.o, %_ZN8NArchive4NZip10CInArchive4SeekEy.exit ], [ 0, %bb.a ], [ %spec.select, %_ZN8NArchive4NZip5CItemD2Ev.exit ], [ 1, %bb.x ]
  ret i32 %.3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8NArchive4NZip5CItemD2Ev(ptr noundef nonnull align 8 dereferenceable(179) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.a, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN7CBufferIhED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #18, !inline_history !43
  br label %_ZN7CBufferIhED2Ev.exit

_ZN7CBufferIhED2Ev.exit:                          ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.e, align 8, !tbaa !23
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit unwind label %bb.c, !inline_history !98

bb.c:                                             ; preds = %_ZN7CBufferIhED2Ev.exit
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #22, !inline_history !98
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit:          ; preds = %_ZN7CBufferIhED2Ev.exit
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.e) #19, !inline_history !98
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.h, align 8, !tbaa !23
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i unwind label %bb.d, !inline_history !98

bb.d:                                             ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #22, !inline_history !98
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i:        ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.h) #19, !inline_history !98
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN8NArchive4NZip10CLocalItemD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #18
  br label %_ZN8NArchive4NZip10CLocalItemD2Ev.exit

_ZN8NArchive4NZip10CLocalItemD2Ev.exit:           ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NZip10CInArchive23ReadLocalItemDescriptorERNS0_7CItemExE(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(186) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 15 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = load i16, ptr %i.c, align 2, !tbaa !99
  %i.e = and i16 %i.d, 8
  %.not89 = icmp eq i16 %i.e, 0
  br i1 %.not89, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.f = call noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.a, i32 noundef 4096, ptr noundef nonnull %i.b) ; 2 uses
  %.not97 = icmp eq i32 %i.f, 0
  br i1 %.not97, label %.lr.ph102.preheader, label %_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit66.sink.split

.lr.ph102.preheader:                              ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %.lr.ph102.preheader, %._crit_edge
  %.04199 = phi i32 [ 15, %._crit_edge ], [ 0, %.lr.ph102.preheader ] ; 2 uses
  %.05098 = phi i32 [ %i.ar, %._crit_edge ], [ 0, %.lr.ph102.preheader ] ; 2 uses
  %i.l = load i32, ptr %i.b, align 4, !tbaa !4    ; 2 uses
  %i.m = add i32 %i.l, %.04199                    ; 3 uses
  %i.n = icmp ult i32 %i.m, 16
  br i1 %i.n, label %_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit66.sink.split, label %.preheader

.preheader:                                       ; preds = %.lr.ph102
  %i.o = load i32, ptr @_ZN8NArchive4NZip10NSignature15kDataDescriptorE, align 4, !tbaa !4
  %i.p = add i32 %i.m, -15                        ; 2 uses
  %i.q = add nsw i32 %.04199, -15
  %i.r = add i32 %i.q, %i.l
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %indvars115 = trunc i64 %indvars.iv to i32      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv ; 4 uses
  %i.t = load i32, ptr %i.s, align 1, !tbaa !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load i32, ptr %i.u, align 1, !tbaa !4    ; 2 uses
  %i.w = icmp eq i32 %i.t, %i.o
  %i.x = add i32 %.05098, %indvars115
  %i.y = icmp eq i32 %i.v, %i.x
  %or.cond = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.aa = load i32, ptr %i.z, align 1, !tbaa !4
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !95
  %i.ac = zext i32 %i.v to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !96
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.af = load i32, ptr %i.ae, align 1, !tbaa !4
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !97
  %reass.sub = sub i32 %indvars115, %i.m
  %i.ai = add i32 %reass.sub, 16
  %i.aj = sext i32 %i.ai to i64
  %i.ak = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !23
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef i32 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, i64 noundef %i.aj, i32 noundef 1, ptr noundef nonnull %i.al), !inline_history !100
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit66.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 7, ptr %i.aq, align 4, !tbaa !54
  call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

bb.f:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.r, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !101

._crit_edge:                                      ; preds = %bb.f
  %i.ar = add i32 %i.p, %.05098
  %i.as = zext i32 %i.p to i64                    ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.as
  %i.au = load <8 x i8>, ptr %i.at, align 1, !tbaa !36
  store <8 x i8> %i.au, ptr %i.a, align 16, !tbaa !36
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.as
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load <4 x i8>, ptr %i.aw, align 1, !tbaa !36
  store <4 x i8> %i.ax, ptr %i.g, align 8, !tbaa !36
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.as
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !36
  store i8 %i.ba, ptr %i.h, align 4, !tbaa !36
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.as
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 13
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !36
  store i8 %i.bd, ptr %i.i, align 1, !tbaa !36
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.as
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 14
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !36
  store i8 %i.bg, ptr %i.j, align 2, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.bh = call noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.k, i32 noundef 4081, ptr noundef nonnull %i.b) ; 2 uses
  %.not = icmp eq i32 %i.bh, 0
  br i1 %.not, label %.lr.ph102, label %_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit66.sink.split

bb.g:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !96
  %i.bk = load ptr, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !23
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef i32 %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, i64 noundef %i.bj, i32 noundef 1, ptr noundef nonnull %i.bl), !inline_history !100
  %.not.i65 = icmp eq i32 %i.bp, 0
  br i1 %.not.i65, label %_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit66, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = tail call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 7, ptr %i.bq, align 4, !tbaa !54
  tail call void @__cxa_throw(ptr nonnull %i.bq, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit66.sink.split: ; preds = %._crit_edge, %.lr.ph102, %bb.b, %bb.d
  %.3.ph = phi i32 [ 0, %bb.d ], [ %i.f, %bb.b ], [ %i.bh, %._crit_edge ], [ 1, %.lr.ph102 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit66

_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit66: ; preds = %_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit66.sink.split, %bb.g
  %.3 = phi i32 [ 0, %bb.g ], [ %.3.ph, %_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy.exit66.sink.split ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NZip10CInArchive28ReadLocalItemAfterCdItemFullERNS0_7CItemExE(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull align 8 dereferenceable(186) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.d = load i8, ptr %i.c, align 8, !tbaa !89, !range !44, !noundef !45
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive24ReadLocalItemAfterCdItemERNS0_7CItemExE(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull align 8 dereferenceable(186) %1)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %.not.not = icmp eq i32 %i.f, 0
  br i1 %.not.not, label %bb.e, label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !99
  %i.j = and i16 %i.i, 8
  %.not = icmp eq i16 %i.j, 0
  br i1 %.not, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load i64, ptr %i.k, align 8, !tbaa !90
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.n = load i64, ptr %i.m, align 8, !tbaa !91
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.p = load i32, ptr %i.o, align 4, !tbaa !88
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.s = load i16, ptr %i.r, align 8, !tbaa !84
  %i.t = zext i16 %i.s to i64
end_hunk_1
begin_hunk_2_@_ZN8NArchive4NZip10CInArchive6FindCdERNS0_7CCdInfoE:bb.a

.noexc83:                                         ; preds = %bb.p
  %.not.i.i78 = icmp eq i32 %i.bo, 0
  br i1 %.not.i.i78, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i79, label %.invoke

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i79: ; preds = %.noexc83
  %i.bp = load i32, ptr %i.a, align 4, !tbaa !4
  %i.bq = icmp eq i32 %i.bp, 56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.bq, label %bb.q, label %_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE.exit85.thread95

bb.q:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i79
  %i.br = load i32, ptr %i.b, align 16, !tbaa !4
  %i.bs = load i32, ptr @_ZN8NArchive4NZip10NSignature21kZip64EndOfCentralDirE, align 4, !tbaa !4
  %.not8.i81 = icmp eq i32 %i.br, %i.bs
  br i1 %.not8.i81, label %bb.r, label %_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE.exit85.thread95

_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE.exit85.thread95: ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i79, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %.thread

bb.r:                                             ; preds = %bb.q
  %i.bt = trunc nuw i64 %indvars.iv to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bw = load <2 x i64>, ptr %i.bv, align 8, !tbaa !41
  store <2 x i64> %i.bw, ptr %1, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.bx = load i64, ptr %i.af, align 8, !tbaa !42
  store i64 %i.bx, ptr %i.bu, align 8, !tbaa !90
  br label %.loopexit

.thread:                                          ; preds = %.noexc82, %_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE.exit85.thread95, %bb.l, %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.thread
  %i.cb = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  store i64 %i.ce, ptr %1, align 8, !tbaa !108
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !4
  %i.ch = zext i32 %i.cg to i64                   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !110
  %i.cj = load i64, ptr %i.f, align 8, !tbaa !41
  %i.ck = sub i64 %i.cj, %i.n
  %i.cl = add i64 %i.ck, %indvars.iv              ; 2 uses
  %i.cm = add nuw nsw i64 %i.ch, %i.ce            ; 2 uses
  %.not69 = icmp eq i64 %i.cl, %i.cm
  br i1 %.not69, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !90
  br label %.loopexit

bb.u:                                             ; preds = %bb.j, %.thread
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.cp = trunc nuw i64 %indvars.iv to i32
  %i.cq = icmp slt i32 %i.cp, 1
  br i1 %i.cq, label %.loopexit, label %bb.j, !llvm.loop !111

.loopexit:                                        ; preds = %bb.u, %_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE.exit, %bb.r, %bb.s, %bb.t
  %.061116 = phi i32 [ %i.cb, %bb.t ], [ %i.be, %_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE.exit ], [ %i.bt, %bb.r ], [ %i.cb, %bb.s ], [ %i.ah, %bb.u ]
  %.061.lobit = lshr i32 %.061116, 31
  br label %_ZN7CBufferIhED2Ev.exit

_ZN7CBufferIhED2Ev.exit:                          ; preds = %.loopexit, %bb.c, %bb.e, %bb.h, %_ZN7CBufferIhE11SetCapacityEm.exit
  %.10 = phi i32 [ 1, %_ZN7CBufferIhE11SetCapacityEm.exit ], [ %i.w, %bb.c ], [ 1, %bb.h ], [ %.061.lobit, %.loopexit ], [ 1, %bb.e ]
  call void @_ZdaPv(ptr noundef nonnull %i.l) #18, !inline_history !43
  br label %bb.v

_ZN7CBufferIhED2Ev.exit86:                        ; preds = %.loopexit106, %.loopexit.split-lp, %bb.i, %bb.d
  %.pn.pn.ph = phi { ptr, i32 } [ %i.x, %bb.d ], [ %i.ad, %bb.i ], [ %lpad.loopexit, %.loopexit106 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZdaPv(ptr noundef nonnull %i.l) #18, !inline_history !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  resume { ptr, i32 } %.pn.pn.ph

bb.v:                                             ; preds = %bb.a, %_ZN7CBufferIhED2Ev.exit
  %.11 = phi i32 [ %.10, %_ZN7CBufferIhED2Ev.exit ], [ %i.k, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  ret i32 %.11
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7CBufferIhED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NZip10CInArchive9TryReadCdER13CObjectVectorINS0_7CItemExEEyyPNS0_13CProgressVirtE(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %5 = alloca %"class.NArchive::NZip::CItemEx", align 8 ; 19 uses
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.c = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %2, i32 noundef 0, ptr noundef nonnull %i.d) ; 2 uses
  %.not.not = icmp eq i32 %i.h, 0
  br i1 %.not.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.d, align 8, !tbaa !29
  %.not37 = icmp eq i64 %i.i, %2
  br i1 %.not37, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.k = tail call noundef zeroext i1 @_ZN9CInBuffer6CreateEj(ptr noundef nonnull align 8 dereferenceable(45) %i.j, i32 noundef 32768)
  br i1 %i.k, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %0, align 8, !tbaa !26
  tail call void @_ZN9CInBuffer9SetStreamEP19ISequentialInStream(ptr noundef nonnull align 8 dereferenceable(45) %i.j, ptr noundef %i.l)
  tail call void @_ZN9CInBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(45) %i.j)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %i.m, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 152 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 180
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.not39 = icmp ne ptr %4, null
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 168
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 40
  br label %bb.e

bb.e:                                             ; preds = %_ZN8NArchive4NZip5CItemD2Ev.exit, %bb.d
  %.1 = phi i32 [ 0, %bb.d ], [ %.5, %_ZN8NArchive4NZip5CItemD2Ev.exit ] ; 2 uses
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !29
  %i.ad = sub i64 %i.ac, %2                       ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %3
  br i1 %i.ae, label %bb.f, label %bb.x

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.af = call noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull %i.a)
  %.not.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.ag, align 4, !tbaa !54
  call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i: ; preds = %bb.f
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !4
  %i.ai = icmp eq i32 %i.ah, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.ai, label %_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i
  %i.aj = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 0, ptr %i.aj, align 4, !tbaa !54
  call void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev.exit: ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i.i
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %i.al = load i32, ptr @_ZN8NArchive4NZip10NSignature18kCentralFileHeaderE, align 4, !tbaa !4
  %.not38 = icmp eq i32 %i.ak, %i.al
  br i1 %.not38, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 0, ptr %i.ab, align 8
  %i.am = call noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #20 ; 2 uses
  store ptr %i.am, ptr %i.n, align 8, !tbaa !60
  store i8 0, ptr %i.am, align 1, !tbaa !36
  store i32 4, ptr %i.o, align 4, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.r, align 8, !tbaa !93
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.p, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.u, align 8, !tbaa !93
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.s, align 8, !tbaa !23
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.v, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.w, i8 0, i64 19, i1 false)
  %i.an = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive10ReadCdItemERNS0_7CItemExE(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull align 8 dereferenceable(186) %5)
          to label %bb.k unwind label %bb.j       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.i
  %i.ap = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #20
          to label %.noexc unwind label %bb.q     ; 4 uses

.noexc:                                           ; preds = %bb.k
  invoke void @_ZN8NArchive4NZip5CItemC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(186) %i.ap, ptr noundef nonnull align 8 dereferenceable(186) %5)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %.noexc
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.aq, ptr noundef nonnull align 4 dereferenceable(6) %i.x, i64 6, i1 false)
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.n unwind label %bb.q

bb.m:                                             ; preds = %.noexc
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 192) #18
  br label %.body

bb.n:                                             ; preds = %bb.l
  %i.as = load ptr, ptr %i.y, align 8, !tbaa !73
  %i.at = load i32, ptr %i.z, align 4, !tbaa !75  ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.au
  store ptr %i.ap, ptr %i.av, align 8, !tbaa !76
  %i.aw = add nsw i32 %i.at, 1                    ; 3 uses
  store i32 %i.aw, ptr %i.z, align 4, !tbaa !75
  %i.ax = srem i32 %i.aw, 1000
  %i.ay = icmp eq i32 %i.ax, 0
  %or.cond = select i1 %.not39, i1 %i.ay, i1 false
  br i1 %or.cond, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.az = sext i32 %i.aw to i64
  %i.ba = load ptr, ptr %4, align 8, !tbaa !23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = invoke noundef i32 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %i.az)
          to label %bb.p unwind label %bb.r       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %.not41 = icmp eq i32 %i.bd, 0                  ; 2 uses
  %.1. = select i1 %.not41, i32 %.1, i32 %i.bd
  br label %bb.s

bb.q:                                             ; preds = %bb.l, %bb.k
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.o
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.p, %bb.n
  %.331 = phi i1 [ %.not41, %bb.p ], [ true, %bb.n ]
  %.5 = phi i32 [ %.1., %bb.p ], [ %.1, %bb.n ]   ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.v, align 8, !tbaa !23
  %i.bg = load ptr, ptr %i.aa, align 8, !tbaa !34 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN7CBufferIhED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.bg) #18, !inline_history !43
  br label %_ZN7CBufferIhED2Ev.exit.i

_ZN7CBufferIhED2Ev.exit.i:                        ; preds = %bb.t, %bb.s
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.s, align 8, !tbaa !23
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i unwind label %bb.u, !inline_history !98

bb.u:                                             ; preds = %_ZN7CBufferIhED2Ev.exit.i
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #22, !inline_history !98
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i:        ; preds = %_ZN7CBufferIhED2Ev.exit.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.s) #19, !inline_history !98
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.p, align 8, !tbaa !23
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i unwind label %bb.v, !inline_history !98

bb.v:                                             ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #22, !inline_history !98
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i:      ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.p) #19, !inline_history !98
  %i.bm = load ptr, ptr %i.n, align 8, !tbaa !60  ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN8NArchive4NZip5CItemD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #18
  br label %_ZN8NArchive4NZip5CItemD2Ev.exit

_ZN8NArchive4NZip5CItemD2Ev.exit:                 ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br i1 %.331, label %bb.e, label %.loopexit

.body:                                            ; preds = %bb.q, %bb.m, %bb.r, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.r ], [ %i.ao, %bb.j ], [ %i.be, %bb.q ], [ %i.ar, %bb.m ]
  call void @_ZN8NArchive4NZip5CItemD2Ev(ptr noundef nonnull align 8 dereferenceable(186) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %.pn

bb.x:                                             ; preds = %bb.e
  %i.bo = icmp ne i64 %i.ad, %3
  %i.bp = zext i1 %i.bo to i32
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN8NArchive4NZip5CItemD2Ev.exit, %_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev.exit, %bb.a, %bb.c, %bb.b, %bb.x
  %.6 = phi i32 [ %i.h, %bb.a ], [ -2147024882, %bb.c ], [ 1, %bb.b ], [ %i.bp, %bb.x ], [ 1, %_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev.exit ], [ %.5, %_ZN8NArchive4NZip5CItemD2Ev.exit ]
  ret i32 %.6
}

declare void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN9CInBuffer6CreateEj(ptr noundef nonnull align 8 dereferenceable(45), i32 noundef) local_unnamed_addr #2

declare void @_ZN9CInBuffer9SetStreamEP19ISequentialInStream(ptr noundef nonnull align 8 dereferenceable(45), ptr noundef) local_unnamed_addr #2

declare void @_ZN9CInBuffer4InitEv(ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NZip10CInArchive6ReadCdER13CObjectVectorINS0_7CItemExEERyS6_PNS0_13CProgressVirtE(ptr noundef nonnull align 8 dereferenceable(138) initializes((88, 96)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %5 = alloca %"struct.NArchive::NZip::CCdInfo", align 8 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  store i64 0, ptr %i.c, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.d = call noundef i32 @_ZN8NArchive4NZip10CInArchive6FindCdERNS0_7CCdInfoE(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull align 8 dereferenceable(16) %5) ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %5, align 8, !tbaa !108
  store i64 %i.e, ptr %3, align 8, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !110  ; 3 uses
  store i64 %i.g, ptr %2, align 8, !tbaa !41
  %i.h = load i64, ptr %i.c, align 8, !tbaa !90
  %i.i = add i64 %i.h, %i.g
  %i.j = load i64, ptr %3, align 8, !tbaa !41
  %i.k = tail call noundef i32 @_ZN8NArchive4NZip10CInArchive9TryReadCdER13CObjectVectorINS0_7CItemExEEyyPNS0_13CProgressVirtE(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.i, i64 noundef %i.j, ptr noundef %4) ; 2 uses
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.c, align 8, !tbaa !90
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42
  %i.q = add i64 %i.p, %i.g
  %i.r = load i64, ptr %3, align 8, !tbaa !41
  %i.s = tail call noundef i32 @_ZN8NArchive4NZip10CInArchive9TryReadCdER13CObjectVectorINS0_7CItemExEEyyPNS0_13CProgressVirtE(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.q, i64 noundef %i.r, ptr noundef %4) ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.o, align 8, !tbaa !42
  store i64 %i.u, ptr %i.c, align 8, !tbaa !90
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.e ], [ %i.s, %bb.d ], [ 1, %bb.c ], [ %i.k, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.w = call noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull %i.a)
  %.not.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.x, align 4, !tbaa !54
  call void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
  unreachable

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i: ; preds = %bb.f
  %i.y = load i32, ptr %i.a, align 4, !tbaa !4
  %i.z = icmp eq i32 %i.y, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.z, label %bb.h, label %_ZN8NArchive4NZip10CInArchive10ReadUInt32ERj.exit

bb.h:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !4
  store i32 %i.aa, ptr %i.v, align 8, !tbaa !4
  br label %_ZN8NArchive4NZip10CInArchive10ReadUInt32ERj.exit

_ZN8NArchive4NZip10CInArchive10ReadUInt32ERj.exit: ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i, %bb.h
  %.0. = phi i32 [ 1, %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i ], [ %.0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN8NArchive4NZip10CInArchive10ReadUInt32ERj.exit
  %.2 = phi i32 [ %.0., %_ZN8NArchive4NZip10CInArchive10ReadUInt32ERj.exit ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NZip10CInArchive15ReadLocalsAndCdER13CObjectVectorINS0_7CItemExEEPNS0_13CProgressVirtERyRi(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
.preheader263:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  %5 = alloca %"class.NArchive::NZip::CItemEx", align 8 ; 24 uses
  %6 = alloca %"class.NArchive::NZip::CItemEx", align 8 ; 29 uses
  tail call void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
  store i32 0, ptr %4, align 4, !tbaa !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 120 ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 152 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 160
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 88
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 176
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 180
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 8 uses
  %.not = icmp ne ptr %2, null                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.y = load i32, ptr %i.e, align 8, !tbaa !112
  %i.z = load i32, ptr @_ZN8NArchive4NZip10NSignature16kLocalFileHeaderE, align 4, !tbaa !4
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %.lr.ph303, label %.loopexit264

.lr.ph303:                                        ; preds = %.preheader263, %_ZN8NArchive4NZip5CItemD2Ev.exit.jt0
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i64 0, ptr %i.x, align 8
  %i.ab = call noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #20 ; 2 uses
  store ptr %i.ab, ptr %i.f, align 8, !tbaa !60
  store i8 0, ptr %i.ab, align 1, !tbaa !36
  store i32 4, ptr %i.g, align 4, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.j, align 8, !tbaa !93
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.h, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.m, align 8, !tbaa !93
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.k, align 8, !tbaa !23
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.n, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.o, i8 0, i64 19, i1 false)
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !29
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !28
  %i.ae = add i64 %i.ac, -4
  %i.af = sub i64 %i.ae, %i.ad
  store i64 %i.af, ptr %i.r, align 8, !tbaa !91
  %i.ag = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive13ReadLocalItemERNS0_7CItemExE(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull align 8 dereferenceable(186) %5)
          to label %bb.b unwind label %bb.a       ; 0 uses

bb.a:                                             ; preds = %.lr.ph303
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.b:                                             ; preds = %.lr.ph303
  store i8 1, ptr %i.s, align 8, !tbaa !89
  %i.ai = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive23ReadLocalItemDescriptorERNS0_7CItemExE(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull align 8 dereferenceable(186) %5)
          to label %bb.c unwind label %.loopexit170 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.aj = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #20
          to label %.noexc unwind label %.loopexit170 ; 4 uses

.noexc:                                           ; preds = %bb.c
  invoke void @_ZN8NArchive4NZip5CItemC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(186) %i.aj, ptr noundef nonnull align 8 dereferenceable(186) %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.ak, ptr noundef nonnull align 4 dereferenceable(6) %i.t, i64 6, i1 false)
  invoke void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %.loopexit170

bb.e:                                             ; preds = %.noexc
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 192) #18
  br label %.body

bb.f:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.an = load i32, ptr %i.v, align 4, !tbaa !75  ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ao
  store ptr %i.aj, ptr %i.ap, align 8, !tbaa !76
  %i.aq = add nsw i32 %i.an, 1                    ; 3 uses
  store i32 %i.aq, ptr %i.v, align 4, !tbaa !75
  %i.ar = srem i32 %i.aq, 100
  %i.as = icmp eq i32 %i.ar, 0
  %or.cond163 = select i1 %.not, i1 %i.as, i1 false
  br i1 %or.cond163, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.at = sext i32 %i.aq to i64
  %i.au = load ptr, ptr %2, align 8, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef i32 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.at)
          to label %bb.h unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %bb.g
  %.not118 = icmp eq i32 %i.ax, 0
  br i1 %.not118, label %bb.j, label %bb.n

.loopexit170:                                     ; preds = %bb.b, %bb.c, %bb.d, %bb.j
  %lpad.loopexit172 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp171:                            ; preds = %bb.k
  %lpad.loopexit.split-lp173 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %bb.g
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.az = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.d, i32 noundef 4, ptr noundef nonnull %i.c)
          to label %.noexc140 unwind label %.loopexit170

.noexc140:                                        ; preds = %bb.j
  %.not.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i, label %bb.k

bb.k:                                             ; preds = %.noexc140
  %i.ba = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.ba, align 4, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.ba, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
          to label %.noexc141 unwind label %.loopexit.split-lp171

.noexc141:                                        ; preds = %bb.k
  unreachable

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i: ; preds = %.noexc140
  %i.bb = load i32, ptr %i.c, align 4, !tbaa !4
  %i.bc = icmp eq i32 %i.bb, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  br i1 %i.bc, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.n, align 8, !tbaa !23
  %i.bd = load ptr, ptr %i.w, align 8, !tbaa !34  ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %_ZN7CBufferIhED2Ev.exit.i.jt3, label %bb.o

bb.m:                                             ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i
  %i.bf = load i32, ptr %i.d, align 4, !tbaa !4
  store i32 %i.bf, ptr %i.e, align 8, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.n, align 8, !tbaa !23
  %i.bg = load ptr, ptr %i.w, align 8, !tbaa !34  ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN7CBufferIhED2Ev.exit.i.jt0, label %bb.p

bb.n:                                             ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.n, align 8, !tbaa !23
  %i.bi = load ptr, ptr %i.w, align 8, !tbaa !34  ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZN7CBufferIhED2Ev.exit.i.jt1, label %bb.q

bb.o:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.bd) #18, !inline_history !43
  br label %_ZN7CBufferIhED2Ev.exit.i.jt3

bb.p:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.bg) #18, !inline_history !43
  br label %_ZN7CBufferIhED2Ev.exit.i.jt0

bb.q:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.bi) #18, !inline_history !43
  br label %_ZN7CBufferIhED2Ev.exit.i.jt1

_ZN7CBufferIhED2Ev.exit.i.jt3:                    ; preds = %bb.o, %bb.l
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.k, align 8, !tbaa !23
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.jt3 unwind label %.loopexit.split-lp266, !inline_history !98

_ZN7CBufferIhED2Ev.exit.i.jt0:                    ; preds = %bb.p, %bb.m
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.k, align 8, !tbaa !23
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.jt0 unwind label %.loopexit265, !inline_history !98

_ZN7CBufferIhED2Ev.exit.i.jt1:                    ; preds = %bb.q, %bb.n
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.k, align 8, !tbaa !23
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.jt1 unwind label %.loopexit.split-lp266, !inline_history !98

.loopexit265:                                     ; preds = %_ZN7CBufferIhED2Ev.exit.i.jt0
  %lpad.loopexit267 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.r

.loopexit.split-lp266:                            ; preds = %_ZN7CBufferIhED2Ev.exit.i.jt1, %_ZN7CBufferIhED2Ev.exit.i.jt3
  %lpad.loopexit.split-lp268 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp266, %.loopexit265
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit267, %.loopexit265 ], [ %lpad.loopexit.split-lp268, %.loopexit.split-lp266 ]
  %i.bk = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.bk) #22, !inline_history !98
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.jt3:    ; preds = %_ZN7CBufferIhED2Ev.exit.i.jt3
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.k) #19, !inline_history !98
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.h, align 8, !tbaa !23
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i.jt3 unwind label %.loopexit.split-lp270, !inline_history !98

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.jt0:    ; preds = %_ZN7CBufferIhED2Ev.exit.i.jt0
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.k) #19, !inline_history !98
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.h, align 8, !tbaa !23
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i.jt0 unwind label %.loopexit269, !inline_history !98

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.jt1:    ; preds = %_ZN7CBufferIhED2Ev.exit.i.jt1
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.k) #19, !inline_history !98
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.h, align 8, !tbaa !23
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i.jt1 unwind label %.loopexit.split-lp270, !inline_history !98

.loopexit269:                                     ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.jt0
  %lpad.loopexit271 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

.loopexit.split-lp270:                            ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.jt1, %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.jt3
  %lpad.loopexit.split-lp272 = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp270, %.loopexit269
  %lpad.phi273 = phi { ptr, i32 } [ %lpad.loopexit271, %.loopexit269 ], [ %lpad.loopexit.split-lp272, %.loopexit.split-lp270 ]
  %i.bl = extractvalue { ptr, i32 } %lpad.phi273, 0
  call void @__clang_call_terminate(ptr %i.bl) #22, !inline_history !98
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i.jt3:  ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.jt3
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.h) #19, !inline_history !98
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !60  ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN8NArchive4NZip5CItemD2Ev.exit.jt3, label %bb.t

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i.jt0:  ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.jt0
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.h) #19, !inline_history !98
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !60  ; 2 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %_ZN8NArchive4NZip5CItemD2Ev.exit.jt0, label %bb.u

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i.jt1:  ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.jt1
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.h) #19, !inline_history !98
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !60  ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN8NArchive4NZip5CItemD2Ev.exit.jt1, label %bb.v

bb.t:                                             ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i.jt3
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #18
  br label %_ZN8NArchive4NZip5CItemD2Ev.exit.jt3

bb.u:                                             ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i.jt0
  call void @_ZdaPv(ptr noundef nonnull %i.bo) #18
  br label %_ZN8NArchive4NZip5CItemD2Ev.exit.jt0

bb.v:                                             ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i.jt1
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #18
  br label %_ZN8NArchive4NZip5CItemD2Ev.exit.jt1

_ZN8NArchive4NZip5CItemD2Ev.exit.jt3:             ; preds = %bb.t, %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i.jt3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %.loopexit264

_ZN8NArchive4NZip5CItemD2Ev.exit.jt0:             ; preds = %bb.u, %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i.jt0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.bs = load i32, ptr %i.e, align 8, !tbaa !112
  %i.bt = load i32, ptr @_ZN8NArchive4NZip10NSignature16kLocalFileHeaderE, align 4, !tbaa !4
  %i.bu = icmp eq i32 %i.bs, %i.bt
  br i1 %i.bu, label %.lr.ph303, label %.loopexit264

_ZN8NArchive4NZip5CItemD2Ev.exit.jt1:             ; preds = %bb.v, %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i.jt1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %.loopexit

.body:                                            ; preds = %.loopexit170, %.loopexit.split-lp171, %bb.e, %bb.i, %bb.a
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.a ], [ %i.ay, %bb.i ], [ %i.al, %bb.e ], [ %lpad.loopexit172, %.loopexit170 ], [ %lpad.loopexit.split-lp173, %.loopexit.split-lp171 ]
  call void @_ZN8NArchive4NZip5CItemD2Ev(ptr noundef nonnull align 8 dereferenceable(186) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.bg

.loopexit264:                                     ; preds = %_ZN8NArchive4NZip5CItemD2Ev.exit.jt0, %.preheader263, %_ZN8NArchive4NZip5CItemD2Ev.exit.jt3
  %i.bv = load i64, ptr %i.p, align 8, !tbaa !29
  %i.bw = add i64 %i.bv, -4
  store i64 %i.bw, ptr %3, align 8, !tbaa !41
  %i.bx = load i32, ptr %i.v, align 4, !tbaa !75  ; 2 uses
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph211, label %.loopexit

.lr.ph211:                                        ; preds = %.loopexit264
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.cb = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 120 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.ch = getelementptr inbounds nuw i8, ptr %6, i64 152 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 82
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 84
  %i.cu = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 177
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 40
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph211, %bb.bc
  %i.cx = phi i32 [ %i.bx, %.lr.ph211 ], [ %i.it, %bb.bc ]
  %.6210 = phi i32 [ undef, %.lr.ph211 ], [ %.14, %bb.bc ]
  %.0107209 = phi i32 [ 0, %.lr.ph211 ], [ %i.iq, %bb.bc ] ; 3 uses
  %i.cy = urem i32 %.0107209, 1000
  %i.cz = icmp eq i32 %i.cy, 0
  %or.cond = and i1 %.not, %i.cz
  br i1 %or.cond, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.da = sext i32 %i.cx to i64
  %i.db = load ptr, ptr %2, align 8, !tbaa !23
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = call noundef i32 %i.dd(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %i.da) ; 2 uses
  %.not121 = icmp eq i32 %i.de, 0
  br i1 %.not121, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.df = load i32, ptr %i.e, align 8, !tbaa !112 ; 2 uses
  %i.dg = load i32, ptr @_ZN8NArchive4NZip10NSignature16kEndOfCentralDirE, align 4, !tbaa !4
  %i.dh = icmp eq i32 %i.df, %i.dg
  br i1 %i.dh, label %.._crit_edge.loopexit_crit_edge, label %bb.z

.._crit_edge.loopexit_crit_edge:                  ; preds = %bb.y
  %.pre240.pre = load i32, ptr %i.v, align 4, !tbaa !75
  br label %._crit_edge

bb.z:                                             ; preds = %bb.y
  %i.di = load i32, ptr @_ZN8NArchive4NZip10NSignature18kCentralFileHeaderE, align 4, !tbaa !4
  %.not122 = icmp eq i32 %i.df, %i.di
  br i1 %.not122, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store i64 0, ptr %i.cw, align 8
  %i.dj = call noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #20 ; 2 uses
  store ptr %i.dj, ptr %i.bz, align 8, !tbaa !60
  store i8 0, ptr %i.dj, align 1, !tbaa !36
  store i32 4, ptr %i.ca, align 4, !tbaa !58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.cd, align 8, !tbaa !93
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.cb, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.cg, align 8, !tbaa !93
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.ce, align 8, !tbaa !23
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.ch, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(19) %i.ci, i8 0, i64 19, i1 false)
  %i.dk = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive10ReadCdItemERNS0_7CItemExE(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull align 8 dereferenceable(186) %6)
          to label %bb.ac unwind label %bb.ab     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.ac:                                            ; preds = %bb.aa
  %i.dm = icmp eq i32 %.0107209, 0
  %.pre239 = load i32, ptr %i.v, align 4, !tbaa !75 ; 3 uses
  br i1 %i.dm, label %.preheader, label %bb.ah

.preheader:                                       ; preds = %bb.ac
  %i.dn = icmp sgt i32 %.pre239, 0
  br i1 %i.dn, label %.lr.ph, label %.loopexit167

.lr.ph:                                           ; preds = %.preheader, %bb.ag
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ag ], [ 0, %.preheader ] ; 3 uses
  %i.do = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !76 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !60
  %i.dt = load ptr, ptr %i.bz, align 8, !tbaa !60
  %i.du = invoke noundef i32 @_Z15MyStringComparePKcS0_(ptr noundef %i.ds, ptr noundef %i.dt)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.lr.ph
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %.lr.ph
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.af:                                            ; preds = %bb.ad
  %i.dx = trunc nuw nsw i64 %indvars.iv to i32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 88
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !91
  %i.ea = load i64, ptr %i.cj, align 8, !tbaa !91
  %i.eb = sub i64 %i.dz, %i.ea
  store i64 %i.eb, ptr %i.ck, align 8, !tbaa !90
  %.pre = load i32, ptr %i.v, align 4, !tbaa !75
  br label %.loopexit167

bb.ag:                                            ; preds = %bb.ad
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ec = load i32, ptr %i.v, align 4, !tbaa !75  ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp slt i64 %indvars.iv.next, %i.ed
  br i1 %i.ee, label %.lr.ph, label %.loopexit167.loopexit, !llvm.loop !113

.loopexit167.loopexit:                            ; preds = %bb.ag
  %i.ef = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit167

.loopexit167:                                     ; preds = %.loopexit167.loopexit, %.preheader, %bb.af
  %i.eg = phi i32 [ %.pre, %bb.af ], [ %.pre239, %.preheader ], [ %i.ec, %.loopexit167.loopexit ] ; 2 uses
  %.0106178 = phi i32 [ %i.dx, %bb.af ], [ 0, %.preheader ], [ %i.ef, %.loopexit167.loopexit ]
  %.not123 = icmp eq i32 %.0106178, %i.eg
  br i1 %.not123, label %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread160, label %bb.ah

bb.ah:                                            ; preds = %.loopexit167, %bb.ac
  %i.eh = phi i32 [ %i.eg, %.loopexit167 ], [ %.pre239, %bb.ac ]
  %i.ei = load ptr, ptr %i.u, align 8
  %i.ej = load i64, ptr %i.ck, align 8
  %i.ek = load i64, ptr %i.cj, align 8            ; 3 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %.088 = phi i32 [ 0, %bb.ah ], [ %.290, %bb.aj ] ; 3 uses
  %.085 = phi i32 [ %i.eh, %bb.ah ], [ %.287, %bb.aj ] ; 3 uses
  %.not124 = icmp slt i32 %.088, %.085
  br i1 %.not124, label %bb.aj, label %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread160

bb.aj:                                            ; preds = %bb.ai
  %i.el = add nuw nsw i32 %.085, %.088
  %i.em = lshr i32 %i.el, 1                       ; 3 uses
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !76 ; 17 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 88
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !91
  %i.es = sub i64 %i.er, %i.ej                    ; 3 uses
  %.not166 = icmp eq i64 %i.ek, %i.es
  %.not165 = icmp ult i64 %i.ek, %i.es
  %i.et = add nuw nsw i32 %i.em, 1
  %.not164 = icmp ugt i64 %i.ek, %i.es
  %.290 = select i1 %.not164, i32 %i.et, i32 %.088
  %.287 = select i1 %.not165, i32 %i.em, i32 %.085
  br i1 %.not166, label %bb.ak, label %bb.ai

bb.ak:                                            ; preds = %bb.aj
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 80
  %i.ev = load i16, ptr %i.cl, align 8
  store i16 %i.ev, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 120 ; 2 uses
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ew)
          to label %.noexc143 unwind label %.loopexit169

.noexc143:                                        ; preds = %bb.ak
  %i.ex = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.ew, ptr noundef nonnull align 8 dereferenceable(32) %i.ce)
          to label %_ZN8NArchive4NZip11CExtraBlockaSERKS1_.exit unwind label %.loopexit169 ; 0 uses

_ZN8NArchive4NZip11CExtraBlockaSERKS1_.exit:      ; preds = %.noexc143
  %i.ey = getelementptr i8, ptr %i.ep, i64 2
  %.val = load i16, ptr %i.ey, align 2            ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ep, i64 4
  %.val136 = load i16, ptr %i.ez, align 4, !tbaa !94 ; 3 uses
  %.val137 = load i16, ptr %i.cm, align 2         ; 2 uses
  %.val138 = load i16, ptr %i.cn, align 4, !tbaa !94
  %.not.i = icmp eq i16 %.val136, %.val138
  br i1 %.not.i, label %bb.al, label %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread160

bb.al:                                            ; preds = %_ZN8NArchive4NZip11CExtraBlockaSERKS1_.exit
  %i.fa = icmp eq i16 %.val, %.val137
  br i1 %i.fa, label %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread, label %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit

_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit: ; preds = %bb.al
  %cond.i = icmp eq i16 %.val136, 8
  %i.fb = icmp ult i16 %.val136, 7
  %spec.select.i = select i1 %i.fb, i32 32767, i32 65535
  %.0.i = select i1 %cond.i, i32 32761, i32 %spec.select.i
  %i.fc = xor i16 %.val137, %.val
  %i.fd = zext i16 %i.fc to i32
  %i.fe = and i32 %.0.i, %i.fd
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread, label %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread160

_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread: ; preds = %bb.al, %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !95
  %i.fi = load i32, ptr %i.co, align 4, !tbaa !95
  %.not125 = icmp eq i32 %i.fh, %i.fi
  br i1 %.not125, label %bb.am, label %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread160

.loopexit169:                                     ; preds = %bb.ak, %.noexc143, %bb.ar, %_ZN7CBufferIhE11SetCapacityEm.exit.i, %_ZN7CBufferIhEaSERKS0_.exit
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

.loopexit.split-lp:                               ; preds = %bb.av
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.am:                                            ; preds = %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ep, i64 32 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ep, i64 40 ; 5 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !61
  %i.fm = load i32, ptr %i.cp, align 8, !tbaa !61
  %.not126 = icmp eq i32 %i.fl, %i.fm
  br i1 %.not126, label %bb.an, label %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread160

bb.an:                                            ; preds = %bb.am
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !96
  %i.fp = load i64, ptr %i.cq, align 8, !tbaa !96
  %.not127 = icmp eq i64 %i.fo, %i.fp
  br i1 %.not127, label %bb.ao, label %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread160

bb.ao:                                            ; preds = %bb.an
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !97
  %i.fs = load i64, ptr %i.cr, align 8, !tbaa !97
  %.not128 = icmp eq i64 %i.fr, %i.fs
  br i1 %.not128, label %bb.ap, label %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread160

bb.ap:                                            ; preds = %bb.ao
  %i.ft = icmp eq ptr %6, %i.ep
  br i1 %i.ft, label %_ZN11CStringBaseIcEaSERKS0_.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.fk, align 8, !tbaa !61
  %i.fu = load ptr, ptr %i.fj, align 8, !tbaa !60
  store i8 0, ptr %i.fu, align 1, !tbaa !36
  %i.fv = load i32, ptr %i.cp, align 8, !tbaa !61
  %i.fw = add nsw i32 %i.fv, 1                    ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ep, i64 44 ; 2 uses
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !58 ; 2 uses
  %i.fz = icmp eq i32 %i.fw, %i.fy
  br i1 %i.fz, label %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i, label %bb.ar

._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i: ; preds = %bb.aq
  %.pre8.i = load ptr, ptr %i.fj, align 8, !tbaa !60
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.ga = sext i32 %i.fw to i64
  %i.gb = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ga) #20
          to label %.noexc146 unwind label %.loopexit169 ; 11 uses

.noexc146:                                        ; preds = %bb.ar
  %i.gc = ptrtoaddr ptr %i.gb to i64
  %i.gd = icmp sgt i32 %i.fy, 0
  %.pre7.i = load i32, ptr %i.fk, align 8, !tbaa !61 ; 6 uses
  br i1 %i.gd, label %.preheader.i.i, label %bb.as

.preheader.i.i:                                   ; preds = %.noexc146
  %i.ge = icmp sgt i32 %.pre7.i, 0
  %.pre.i.i = load ptr, ptr %i.fj, align 8, !tbaa !60 ; 10 uses
  br i1 %i.ge, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %.preheader.i.i
  %.pre.i.i304 = ptrtoaddr ptr %.pre.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %.pre7.i to i64 ; 8 uses
  %min.iters.check = icmp ult i32 %.pre7.i, 4
  %i.gf = sub i64 %i.gc, %.pre.i.i304
  %diff.check = icmp ult i64 %i.gf, 32
  %or.cond313 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond313, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check305 = icmp ult i32 %.pre7.i, 32
  br i1 %min.iters.check305, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i.i, 28
  %n.vec = and i64 %wide.trip.count.i.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %wide.load = load <16 x i8>, ptr %i.gg, align 1, !tbaa !36
  %wide.load306 = load <16 x i8>, ptr %i.gh, align 1, !tbaa !36
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gb, i64 %index ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  store <16 x i8> %wide.load, ptr %i.gi, align 1, !tbaa !36
  store <16 x i8> %wide.load306, ptr %i.gj, align 1, !tbaa !36
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gk = icmp eq i64 %index.next, %n.vec
  br i1 %i.gk, label %middle.block, label %vector.body, !llvm.loop !114

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !65

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec308 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index309 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next311, %vec.epilog.vector.body ] ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %index309
  %wide.load310 = load <4 x i8>, ptr %i.gl, align 1, !tbaa !36
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gb, i64 %index309
  store <4 x i8> %wide.load310, ptr %i.gm, align 1, !tbaa !36
  %index.next311 = add nuw i64 %index309, 4       ; 2 uses
  %i.gn = icmp eq i64 %index.next311, %n.vec308
  br i1 %i.gn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !115

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n312 = icmp eq i64 %n.vec308, %wide.trip.count.i.i
  br i1 %cmp.n312, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec308, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.go = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i.prol
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !36
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gb, i64 %indvars.iv.i.i.prol
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !36
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !116

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.gr = sub nsw i64 %indvars.iv.i.i.ph, %wide.trip.count.i.i
  %i.gs = icmp ugt i64 %i.gr, -4
  br i1 %i.gs, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph

._crit_edge.i.i:                                  ; preds = %.preheader.i.i
  %i.gt = icmp eq ptr %.pre.i.i, null
  br i1 %i.gt, label %bb.as, label %._crit_edge.thread.i.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.i.i
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !36
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gb, i64 %indvars.iv.i.i
  store i8 %i.gv, ptr %i.gw, align 1, !tbaa !36
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !36
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gb, i64 %indvars.iv.next.i.i
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !36
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i.1
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !36
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %indvars.iv.next.i.i.1
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !36
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %indvars.iv.next.i.i.2
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !36
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gb, i64 %indvars.iv.next.i.i.2
  store i8 %i.he, ptr %i.hf, align 1, !tbaa !36
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.thread.i.i, label %vec.epilog.scalar.ph, !llvm.loop !117

._crit_edge.thread.i.i:                           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #18
  %.pre.i = load i32, ptr %i.fk, align 8, !tbaa !61
  br label %bb.as

bb.as:                                            ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i, %.noexc146
  %i.hg = phi i32 [ %.pre.i, %._crit_edge.thread.i.i ], [ %.pre7.i, %._crit_edge.i.i ], [ %.pre7.i, %.noexc146 ]
  store ptr %i.gb, ptr %i.fj, align 8, !tbaa !60
  %i.hh = sext i32 %i.hg to i64
  %i.hi = getelementptr inbounds i8, ptr %i.gb, i64 %i.hh
  store i8 0, ptr %i.hi, align 1, !tbaa !36
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !58
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i

_ZN11CStringBaseIcE11SetCapacityEi.exit.i:        ; preds = %bb.as, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i
  %i.hj = phi ptr [ %.pre8.i, %._ZN11CStringBaseIcE11SetCapacityEi.exit_crit_edge.i ], [ %i.gb, %bb.as ]
  %i.hk = load ptr, ptr %i.bz, align 8, !tbaa !60
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i
  %.04.i.i = phi ptr [ %i.hk, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.hl, %bb.at ] ; 2 uses
  %.0.i.i = phi ptr [ %i.hj, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i ], [ %i.hn, %bb.at ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.04.i.i, i64 1
  %i.hm = load i8, ptr %.04.i.i, align 1, !tbaa !36 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  store i8 %i.hm, ptr %.0.i.i, align 1, !tbaa !36
  %.not.i.i145 = icmp eq i8 %i.hm, 0
  br i1 %.not.i.i145, label %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i, label %bb.at, !llvm.loop !118

_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i:            ; preds = %bb.at
  %i.ho = load i32, ptr %i.cp, align 8, !tbaa !61
  store i32 %i.ho, ptr %i.fk, align 8, !tbaa !61
  br label %_ZN11CStringBaseIcEaSERKS0_.exit

_ZN11CStringBaseIcEaSERKS0_.exit:                 ; preds = %_Z12MyStringCopyIcEPT_S1_PKS0_.exit.i, %bb.ap
  %i.hp = load i16, ptr %i.cs, align 2, !tbaa !105
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ep, i64 82
  store i16 %i.hp, ptr %i.hq, align 2, !tbaa !105
  %i.hr = load i32, ptr %i.ct, align 4, !tbaa !106
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ep, i64 84
  store i32 %i.hr, ptr %i.hs, align 4, !tbaa !106
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ep, i64 168 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !34 ; 2 uses
  %i.hv = icmp eq ptr %i.hu, null
  br i1 %i.hv, label %_ZN7CBufferIhE4FreeEv.exit.i, label %bb.au

bb.au:                                            ; preds = %_ZN11CStringBaseIcEaSERKS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.hu) #18
  br label %_ZN7CBufferIhE4FreeEv.exit.i

_ZN7CBufferIhE4FreeEv.exit.i:                     ; preds = %bb.au, %_ZN11CStringBaseIcEaSERKS0_.exit
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ep, i64 160 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hw, i8 0, i64 16, i1 false)
  %i.hx = load i64, ptr %i.ci, align 8, !tbaa !33 ; 3 uses
  %.not.i147 = icmp eq i64 %i.hx, 0
  br i1 %.not.i147, label %_ZN7CBufferIhEaSERKS0_.exit, label %_ZN7CBufferIhE11SetCapacityEm.exit.i

_ZN7CBufferIhE11SetCapacityEm.exit.i:             ; preds = %_ZN7CBufferIhE4FreeEv.exit.i
  %i.hy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.hx) #20
          to label %.noexc148 unwind label %.loopexit169 ; 2 uses

.noexc148:                                        ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit.i
  store ptr %i.hy, ptr %i.ht, align 8, !tbaa !34
  store i64 %i.hx, ptr %i.hw, align 8, !tbaa !33
  %i.hz = load ptr, ptr %i.cu, align 8, !tbaa !34
  %i.ia = load i64, ptr %i.ci, align 8, !tbaa !33
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hy, ptr align 1 %i.hz, i64 %i.ia, i1 false)
  br label %_ZN7CBufferIhEaSERKS0_.exit

_ZN7CBufferIhEaSERKS0_.exit:                      ; preds = %.noexc148, %_ZN7CBufferIhE4FreeEv.exit.i
  %i.ib = load i8, ptr %i.cv, align 1, !tbaa !102, !range !44, !noundef !45
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ep, i64 177
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.id = invoke noundef i32 @_ZN8NArchive4NZip10CInArchive9ReadBytesEPvjPj(ptr noundef nonnull align 8 dereferenceable(138) %0, ptr noundef nonnull %i.b, i32 noundef 4, ptr noundef nonnull %i.a)
          to label %.noexc151 unwind label %.loopexit169

.noexc151:                                        ; preds = %_ZN7CBufferIhEaSERKS0_.exit
  %.not.i.i149 = icmp eq i32 %i.id, 0
  br i1 %.not.i.i149, label %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i150, label %bb.av

bb.av:                                            ; preds = %.noexc151
  %i.ie = call ptr @__cxa_allocate_exception(i64 4) #19 ; 2 uses
  store i32 6, ptr %i.ie, align 4, !tbaa !54
  invoke void @__cxa_throw(ptr nonnull %i.ie, ptr nonnull @_ZTIN8NArchive4NZip19CInArchiveExceptionE, ptr null) #21
          to label %.noexc152 unwind label %.loopexit.split-lp

.noexc152:                                        ; preds = %bb.av
  unreachable

_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i150: ; preds = %.noexc151
  %i.if = load i32, ptr %i.a, align 4, !tbaa !4
  %i.ig = icmp eq i32 %i.if, 4                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.ig, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i150
  %i.ih = load i32, ptr %i.b, align 4, !tbaa !4
  store i32 %i.ih, ptr %i.e, align 8, !tbaa !4
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i150
  %.11. = phi i32 [ %.6210, %bb.aw ], [ 1, %_ZN8NArchive4NZip10CInArchive20ReadBytesAndTestSizeEPvj.exit.i150 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread160

_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread160: ; preds = %bb.ai, %_ZN8NArchive4NZip11CExtraBlockaSERKS1_.exit, %bb.ax, %bb.am, %bb.an, %bb.ao, %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit, %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread, %.loopexit167
  %.10105 = phi i1 [ false, %.loopexit167 ], [ false, %_ZN8NArchive4NZip11CExtraBlockaSERKS1_.exit ], [ %i.ig, %bb.ax ], [ false, %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit ], [ false, %bb.am ], [ false, %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread ], [ false, %bb.ao ], [ false, %bb.an ], [ false, %bb.ai ]
  %.14 = phi i32 [ 1, %.loopexit167 ], [ 1, %_ZN8NArchive4NZip11CExtraBlockaSERKS1_.exit ], [ %.11., %bb.ax ], [ 1, %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit ], [ 1, %bb.am ], [ 1, %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread ], [ 1, %bb.ao ], [ 1, %bb.an ], [ 1, %bb.ai ] ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.ch, align 8, !tbaa !23
  %i.ii = load ptr, ptr %i.cu, align 8, !tbaa !34 ; 2 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %_ZN7CBufferIhED2Ev.exit.i154, label %bb.ay

bb.ay:                                            ; preds = %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread160
  call void @_ZdaPv(ptr noundef nonnull %i.ii) #18, !inline_history !43
  br label %_ZN7CBufferIhED2Ev.exit.i154

_ZN7CBufferIhED2Ev.exit.i154:                     ; preds = %bb.ay, %_ZN8NArchive4NZipL12FlagsAreSameERNS0_5CItemES2_.exit.thread160
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.ce, align 8, !tbaa !23
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.ce)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i155 unwind label %bb.az, !inline_history !98

bb.az:                                            ; preds = %_ZN7CBufferIhED2Ev.exit.i154
  %i.ik = landingpad { ptr, i32 }
          catch ptr null
  %i.il = extractvalue { ptr, i32 } %i.ik, 0
  call void @__clang_call_terminate(ptr %i.il) #22, !inline_history !98
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i155:     ; preds = %_ZN7CBufferIhED2Ev.exit.i154
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.ce) #19, !inline_history !98
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.cb, align 8, !tbaa !23
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.cb)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i156 unwind label %bb.ba, !inline_history !98

bb.ba:                                            ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i155
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #22, !inline_history !98
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i156:   ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i155
  call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.cb) #19, !inline_history !98
  %i.io = load ptr, ptr %i.bz, align 8, !tbaa !60 ; 2 uses
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %_ZN8NArchive4NZip5CItemD2Ev.exit157, label %bb.bb

bb.bb:                                            ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i156
  call void @_ZdaPv(ptr noundef nonnull %i.io) #18
  br label %_ZN8NArchive4NZip5CItemD2Ev.exit157

_ZN8NArchive4NZip5CItemD2Ev.exit157:              ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit.i.i156, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br i1 %.10105, label %bb.bc, label %.loopexit

bb.bc:                                            ; preds = %_ZN8NArchive4NZip5CItemD2Ev.exit157
  %i.iq = add nuw nsw i32 %.0107209, 1            ; 2 uses
  %i.ir = load i32, ptr %4, align 4, !tbaa !4
  %i.is = add nsw i32 %i.ir, 1
  store i32 %i.is, ptr %4, align 4, !tbaa !4
  %i.it = load i32, ptr %i.v, align 4, !tbaa !75  ; 3 uses
  %i.iu = icmp slt i32 %i.iq, %i.it
  br i1 %i.iu, label %bb.w, label %._crit_edge, !llvm.loop !119

bb.bd:                                            ; preds = %.loopexit169, %.loopexit.split-lp, %bb.ae, %bb.ab
  %.pn129.pn = phi { ptr, i32 } [ %i.dl, %bb.ab ], [ %i.dw, %bb.ae ], [ %lpad.loopexit, %.loopexit169 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN8NArchive4NZip5CItemD2Ev(ptr noundef nonnull align 8 dereferenceable(186) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.bg

._crit_edge:                                      ; preds = %bb.bc, %.._crit_edge.loopexit_crit_edge
  %i.iv = phi i32 [ %.pre240.pre, %.._crit_edge.loopexit_crit_edge ], [ %i.it, %bb.bc ] ; 3 uses
  %i.iw = icmp sgt i32 %i.iv, 0
  br i1 %i.iw, label %.lr.ph217, label %.loopexit

.lr.ph217:                                        ; preds = %._crit_edge
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !90 ; 5 uses
  %i.iz = load ptr, ptr %i.u, align 8, !tbaa !73  ; 5 uses
  %wide.trip.count = zext nneg i32 %i.iv to i64   ; 2 uses
  %xtraiter330 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.ja = icmp ult i32 %i.iv, 4
  br i1 %i.ja, label %.epil.preheader, label %.lr.ph217.new

.lr.ph217.new:                                    ; preds = %.lr.ph217
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.be

bb.be:                                            ; preds = %bb.be, %.lr.ph217.new
  %indvars.iv236 = phi i64 [ 0, %.lr.ph217.new ], [ %indvars.iv.next237.3, %bb.be ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph217.new ], [ %niter.next.3, %bb.be ]
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv236
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !76
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 88 ; 2 uses
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !91
  %i.jf = sub i64 %i.je, %i.iy
  store i64 %i.jf, ptr %i.jd, align 8, !tbaa !91
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv236
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !76
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 88 ; 2 uses
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !91
  %i.jl = sub i64 %i.jk, %i.iy
  store i64 %i.jl, ptr %i.jj, align 8, !tbaa !91
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv236
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !76
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 88 ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !91
  %i.jr = sub i64 %i.jq, %i.iy
  store i64 %i.jr, ptr %i.jp, align 8, !tbaa !91
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv236
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !76
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 88 ; 2 uses
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !91
  %i.jx = sub i64 %i.jw, %i.iy
  store i64 %i.jx, ptr %i.jv, align 8, !tbaa !91
  %indvars.iv.next237.3 = add nuw nsw i64 %indvars.iv236, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.be, !llvm.loop !120

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.be
  %lcmp.mod331.not = icmp eq i64 %xtraiter330, 0
  br i1 %lcmp.mod331.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph217
  %indvars.iv236.epil.init = phi i64 [ 0, %.lr.ph217 ], [ %indvars.iv.next237.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod332 = icmp ne i64 %xtraiter330, 0
  call void @llvm.assume(i1 %lcmp.mod332)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.epil.preheader
  %indvars.iv236.epil = phi i64 [ %indvars.iv236.epil.init, %.epil.preheader ], [ %indvars.iv.next237.epil, %bb.bf ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bf ]
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %indvars.iv236.epil
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !76
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 88 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !91
  %i.kc = sub i64 %i.kb, %i.iy
  store i64 %i.kc, ptr %i.ka, align 8, !tbaa !91
  %indvars.iv.next237.epil = add nuw nsw i64 %indvars.iv236.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter330
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.bf, !llvm.loop !121

.loopexit:                                        ; preds = %_ZN8NArchive4NZip5CItemD2Ev.exit157, %bb.x, %bb.z, %.loopexit.loopexit.unr-lcssa, %bb.bf, %.loopexit264, %_ZN8NArchive4NZip5CItemD2Ev.exit.jt1, %._crit_edge
  %.16 = phi i32 [ 0, %._crit_edge ], [ 0, %.loopexit.loopexit.unr-lcssa ], [ 0, %.loopexit264 ], [ %i.ax, %_ZN8NArchive4NZip5CItemD2Ev.exit.jt1 ], [ 0, %bb.bf ], [ %.14, %_ZN8NArchive4NZip5CItemD2Ev.exit157 ], [ %i.de, %bb.x ], [ 1, %bb.z ]
  ret i32 %.16

bb.bg:                                            ; preds = %bb.bd, %.body
  %.pn129.pn.pn = phi { ptr, i32 } [ %.pn129.pn, %bb.bd ], [ %.pn, %.body ]
  resume { ptr, i32 } %.pn129.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN8NArchive4NZip4CEcd5ParseEPKh(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(20) initializes((0, 18)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i16, ptr %1, align 2, !tbaa !37
  store i16 %i.a, ptr %0, align 4, !tbaa !122
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.c, ptr %i.d, align 2, !tbaa !124
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i16, ptr %i.e, align 2, !tbaa !37
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.f, ptr %i.g, align 4, !tbaa !125
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.i = load i16, ptr %i.h, align 2, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.i, ptr %i.j, align 2, !tbaa !126
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.l, ptr %i.m, align 4, !tbaa !127
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.o, ptr %i.p, align 4, !tbaa !128
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i16, ptr %i.q, align 4, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.r, ptr %i.s, align 4, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN8NArchive4NZip6CEcd645ParseEPKh(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 12), (16, 48)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i16, ptr %1, align 2, !tbaa !37
  store i16 %i.a, ptr %0, align 8, !tbaa !130
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.c, ptr %i.d, align 2, !tbaa !132
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.f, ptr %i.g, align 4, !tbaa !133
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.i, ptr %i.j, align 8, !tbaa !134
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i64, ptr %i.k, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !135
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.o = load i64, ptr %i.n, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.o, ptr %i.p, align 8, !tbaa !136
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.r = load i64, ptr %i.q, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.r, ptr %i.s, align 8, !tbaa !137
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.u = load i64, ptr %i.t, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.u, ptr %i.v, align 8, !tbaa !138
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN8NArchive4NZip10CInArchive11ReadHeadersER13CObjectVectorINS0_7CItemExEEPNS0_13CProgressVirtE(ptr noundef nonnull align 8 dereferenceable(138) initializes((88, 96), (136, 137)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [4 x i8], align 1                 ; 3 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca [4 x i8], align 1                 ; 3 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca [4 x i8], align 4                 ; 5 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i8, align 1                       ; 3 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN8NArchive4NZip10CInArchive11ReadHeadersER13CObjectVectorINS0_7CItemExEEPNS0_13CProgressVirtE:bb.a

.thread136:                                       ; preds = %_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev.exit107, %bb.at, %bb.ak, %.thread133, %bb.aj, %_ZN8NArchive4NZip10CInArchive10ReadUInt32ERj.exit, %bb.f, %bb.i, %bb.e
  %.8 = phi i32 [ %i.at, %bb.e ], [ 1, %_ZN8NArchive4NZip10CInArchive10ReadUInt32ERj.exit ], [ %i.bc, %bb.i ], [ 1, %bb.f ], [ 1, %.thread133 ], [ %.6, %bb.at ], [ 1, %bb.aj ], [ 1, %bb.ak ], [ 1, %_ZN8NArchive4NZip10CInArchive10ReadUInt32Ev.exit107 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #19
  br label %bb.au

bb.au:                                            ; preds = %bb.c, %.thread136
  %.9 = phi i32 [ %.8, %.thread136 ], [ %i.y, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #19
  ret i32 %.9

bb.av:                                            ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #19
  resume { ptr, i32 } %i.z
}

declare void @_ZN9CInBuffer4FreeEv(ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN8NArchive4NZip10CInArchive19CreateLimitedStreamEyy(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(138) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #20 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 0, ptr %i.c, align 4, !tbaa !142
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV26CLimitedSequentialInStream, i64 16), ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr null, ptr %i.d, align 8, !tbaa !22
  %i.e = load ptr, ptr getelementptr inbounds nuw inrange(-24, 40) (i8, ptr @_ZTV26CLimitedSequentialInStream, i64 24), align 8
  %i.f = tail call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b), !inline_history !144 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i64, ptr %i.g, align 8, !tbaa !90
  %i.i = add i64 %i.h, %1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.j = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef i32 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, i64 noundef %i.i, i32 noundef 0, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.e, !inline_history !145 ; 0 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.o = load ptr, ptr %0, align 8, !tbaa !26     ; 4 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef i32 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %.noexc unwind label %bb.e, !inline_history !146 ; 0 uses

.noexc:                                           ; preds = %bb.c, %bb.b
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !22   ; 3 uses
  %.not6.i.i = icmp eq ptr %i.t, null
  br i1 %.not6.i.i, label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit unwind label %bb.e, !inline_history !146 ; 0 uses

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit:    ; preds = %bb.d, %.noexc
  store ptr %i.o, ptr %i.d, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %2, ptr %i.y, align 8, !tbaa !147
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %i.z, align 8, !tbaa !151
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i8 0, ptr %i.aa, align 8, !tbaa !152
  ret ptr %i.b

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = invoke noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit12 unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #22
  unreachable

_ZN9CMyComPtrI19ISequentialInStreamED2Ev.exit12:  ; preds = %bb.e
  resume { ptr, i32 } %i.ab
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN8NArchive4NZip10CInArchive13SeekInArchiveEy(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(138) %0, i64 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %1, i32 noundef 0, ptr noundef nonnull %i.a)
  %.not = icmp eq i32 %i.f, 0
  %i.g = load i64, ptr %i.a, align 8
  %i.h = icmp eq i64 %i.g, %1
  %.0 = select i1 %.not, i1 %i.h, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN8NArchive4NZip10CInArchive12CreateStreamEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(138) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !26     ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN9CMyComPtrI9IInStreamED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a), !inline_history !153 ; 0 uses
  br label %_ZN9CMyComPtrI9IInStreamED2Ev.exit

_ZN9CMyComPtrI9IInStreamED2Ev.exit:               ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7CBufferIhED0Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN7CBufferIhED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #18, !inline_history !43
  br label %_ZN7CBufferIhED2Ev.exit

_ZN7CBufferIhED2Ev.exit:                          ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #18
  ret void
}

declare noundef zeroext i1 @_ZN9CInBuffer9ReadBlockEv(ptr noundef nonnull align 8 dereferenceable(45)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8NArchive4NZip11CExtraBlockD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %0, align 8, !tbaa !23
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev.exit unwind label %bb.b, !inline_history !98

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #22, !inline_history !98
  unreachable

_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19, !inline_history !98
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8NArchive4NZip10CLocalItemD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.a, align 8, !tbaa !23
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit unwind label %bb.b, !inline_history !98

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #22, !inline_history !98
  unreachable

_ZN8NArchive4NZip11CExtraBlockD2Ev.exit:          ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #19, !inline_history !98
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN11CStringBaseIcED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #18
  br label %_ZN11CStringBaseIcED2Ev.exit

_ZN11CStringBaseIcED2Ev.exit:                     ; preds = %_ZN8NArchive4NZip11CExtraBlockD2Ev.exit, %bb.c
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %0, align 8, !tbaa !23
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #22
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %0, align 8, !tbaa !23
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev.exit unwind label %bb.b, !inline_history !98

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #22, !inline_history !98
  unreachable

_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev.exit: ; preds = %bb.a
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19, !inline_history !98
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #18
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit:
  %i.a = add nsw i32 %2, %1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !75   ; 2 uses
  %i.d = icmp sgt i32 %i.a, %i.c
  %i.e = sub nsw i32 %i.c, %1
  %spec.select = select i1 %i.d, i32 %i.e, i32 %2 ; 3 uses
  %i.f = icmp sgt i32 %spec.select, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = sext i32 %1 to i64
  %i.i = zext nneg i32 %spec.select to i64
  br label %bb.a

._crit_edge:                                      ; preds = %bb.d, %_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  tail call void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %spec.select)
  ret void

bb.a:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.h
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76   ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.o, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !34   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #18, !inline_history !43
  br label %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit

_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit:       ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 32) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN8NArchive4NZip14CExtraSubBlockD2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.s, label %bb.a, label %._crit_edge, !llvm.loop !154
}

; Function Attrs: nounwind
declare void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #10

declare void @_ZN17CBaseRecordVector6DeleteEii(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !75   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !75
  %i.e = add nsw i32 %i.d, %i.b
  tail call void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %i.e)
  %i.f = icmp sgt i32 %i.b, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE3AddERKS2_.exit, %bb.a
  ret ptr %0

bb.b:                                             ; preds = %.lr.ph, %_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE3AddERKS2_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE3AddERKS2_.exit ] ; 2 uses
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !76   ; 3 uses
  %i.l = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20 ; 6 uses
  %i.m = load i16, ptr %i.k, align 8, !tbaa !69
  store i16 %i.m, ptr %i.l, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.n, align 8, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.q = load i64, ptr %i.p, align 8, !tbaa !33   ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i.i, label %_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE3AddERKS2_.exit, label %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i.i

_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i.i:       ; preds = %bb.b
  %i.r = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #20
          to label %.noexc.i unwind label %bb.c   ; 2 uses

.noexc.i:                                         ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.r, ptr %i.s, align 8, !tbaa !34
  store i64 %i.q, ptr %i.o, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !34
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.u, i64 %i.q, i1 false)
  br label %_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE3AddERKS2_.exit

bb.c:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit.i.i.i.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 32) #18
  resume { ptr, i32 } %i.v

_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE3AddERKS2_.exit: ; preds = %bb.b, %.noexc.i
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !73
  %i.x = load i32, ptr %i.c, align 4, !tbaa !75   ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.y
  store ptr %i.l, ptr %i.z, align 8, !tbaa !76
  %i.aa = add nsw i32 %i.x, 1
  store i32 %i.aa, ptr %i.c, align 4, !tbaa !75
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !155
}

declare void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

declare void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN8NArchive4NZip5CItemC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(179) %0, ptr noundef nonnull align 8 dereferenceable(179) %1) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 32, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.d = load i32, ptr %i.c, align 8, !tbaa !61   ; 2 uses
  %i.e = add nsw i32 %i.d, 1                      ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = sext i32 %i.e to i64
  %i.i = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.h) #20 ; 3 uses
  store ptr %i.i, ptr %i.a, align 8, !tbaa !60
  store i8 0, ptr %i.i, align 1, !tbaa !36
  store i32 %i.e, ptr %i.g, align 4, !tbaa !58
  br label %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i:      ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ null, %bb.a ], [ %i.i, %bb.b ]
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !60
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.k, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.j, %_ZN11CStringBaseIcE11SetCapacityEi.exit.i.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 1
  %i.m = load i8, ptr %.04.i.i.i, align 1, !tbaa !36 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  store i8 %i.m, ptr %.0.i.i.i, align 1, !tbaa !36
  %.not.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i.i, label %_ZN11CStringBaseIcEC2ERKS0_.exit.i, label %bb.c, !llvm.loop !118

_ZN11CStringBaseIcEC2ERKS0_.exit.i:               ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.d, ptr %i.o, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.r, align 8, !tbaa !93
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.p, align 8, !tbaa !23
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.p)
          to label %.noexc.i.i.i unwind label %.body.i

.noexc.i.i.i:                                     ; preds = %_ZN11CStringBaseIcEC2ERKS0_.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.s)
          to label %_ZN8NArchive4NZip10CLocalItemC2ERKS1_.exit unwind label %.body.i ; 0 uses

.body.i:                                          ; preds = %.noexc.i.i.i, %_ZN11CStringBaseIcEC2ERKS0_.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.p) #19
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %common.resume, label %bb.d

bb.d:                                             ; preds = %.body.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.v) #18
  br label %common.resume

common.resume:                                    ; preds = %.body.i, %bb.d, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn, %.body ], [ %i.u, %bb.d ], [ %i.u, %.body.i ]
  resume { ptr, i32 } %common.resume.op

_ZN8NArchive4NZip10CLocalItemC2ERKS1_.exit:       ; preds = %.noexc.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %i.y, i64 40, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  store i64 8, ptr %i.ab, align 8, !tbaa !93
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE, i64 16), ptr %i.z, align 8, !tbaa !23
  invoke void @_ZN17CBaseRecordVector5ClearEv(ptr noundef nonnull align 8 dereferenceable(32) %i.z)
          to label %.noexc.i.i unwind label %bb.e

.noexc.i.i:                                       ; preds = %_ZN8NArchive4NZip10CLocalItemC2ERKS1_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEEpLERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %.noexc.i.i, %_ZN8NArchive4NZip10CLocalItemC2ERKS1_.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN17CBaseRecordVectorD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.z) #19
  br label %.body

_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit:      ; preds = %.noexc.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV7CBufferIhE, i64 16), ptr %i.af, align 8, !tbaa !23
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !33 ; 3 uses
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %_ZN7CBufferIhEC2ERKS0_.exit, label %_ZN7CBufferIhE11SetCapacityEm.exit.i.i

_ZN7CBufferIhE11SetCapacityEm.exit.i.i:           ; preds = %_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit
  %i.aj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ai) #20
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !34
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !34
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr align 1 %i.am, i64 %i.an, i1 false)
  br label %_ZN7CBufferIhEC2ERKS0_.exit

_ZN7CBufferIhEC2ERKS0_.exit:                      ; preds = %.noexc, %_ZN8NArchive4NZip11CExtraBlockC2ERKS1_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.ao, ptr noundef nonnull align 8 dereferenceable(3) %i.ap, i64 3, i1 false)
  ret void

bb.f:                                             ; preds = %_ZN7CBufferIhE11SetCapacityEm.exit.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8NArchive4NZip11CExtraBlockD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.z) #19
  br label %.body

.body:                                            ; preds = %bb.e, %bb.f
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %i.ae, %bb.e ]
  tail call void @_ZN8NArchive4NZip10CLocalItemD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) #19
  br label %common.resume
}

declare noundef i32 @_Z15MyStringComparePKcS0_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind memory(none) }
attributes #4 = { cold noreturn }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { noreturn }
attributes #22 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !14, i64 32}
!9 = !{!"_ZTSN8NArchive4NZip10CInArchiveE", !10, i64 0, !5, i64 8, !13, i64 16, !13, i64 24, !14, i64 32, !15, i64 40, !19, i64 88, !14, i64 136, !14, i64 137}
!10 = !{!"_ZTS9CMyComPtrI9IInStreamE", !11, i64 0}
!11 = !{!"p1 _ZTS9IInStream", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long long", !6, i64 0}
!14 = !{!"bool", !6, i64 0}
!15 = !{!"_ZTS9CInBuffer", !16, i64 0, !16, i64 8, !16, i64 16, !17, i64 24, !13, i64 32, !5, i64 40, !14, i64 44}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"_ZTS9CMyComPtrI19ISequentialInStreamE", !18, i64 0}
!18 = !{!"p1 _ZTS19ISequentialInStream", !12, i64 0}
!19 = !{!"_ZTSN8NArchive4NZip14CInArchiveInfoE", !13, i64 0, !13, i64 8, !13, i64 16, !20, i64 24}
!20 = !{!"_ZTS7CBufferIhE", !21, i64 8, !16, i64 16}
!21 = !{!"long", !6, i64 0}
!22 = !{!17, !18, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !7, i64 0}
!25 = distinct !{ptr @_ZN8NArchive4NZip10CInArchive5CloseEv, null, null}
!26 = !{!10, !11, i64 0}
!27 = distinct !{ptr @_ZN8NArchive4NZip10CInArchive5CloseEv, null}
!28 = !{!9, !13, i64 16}
!29 = !{!9, !13, i64 24}
!30 = distinct !{null}
!31 = distinct !{null, null}
!32 = distinct !{null}
!33 = !{!20, !21, i64 8}
!34 = !{!20, !16, i64 16}
!35 = !{!21, !21, i64 0}
!36 = !{!6, !6, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"short", !6, i64 0}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!13, !13, i64 0}
!42 = !{!9, !13, i64 96}
!43 = !{ptr @_ZN7CBufferIhED2Ev}
!44 = !{i8 0, i8 2}
!45 = !{}
!46 = !{!15, !16, i64 8}
!47 = !{!15, !16, i64 0}
!48 = distinct !{!48, !49}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = distinct !{!50, !40}
!51 = distinct !{!51, !40}
!52 = !{!53, !5, i64 0}
!53 = !{!"_ZTS16CSystemException", !5, i64 0}
!54 = !{!55, !56, i64 0}
!55 = !{!"_ZTSN8NArchive4NZip19CInArchiveExceptionE", !56, i64 0}
!56 = !{!"_ZTSN8NArchive4NZip19CInArchiveException10ECauseTypeE", !6, i64 0}
!57 = distinct !{!57, !40}
!58 = !{!59, !5, i64 12}
!59 = !{!"_ZTS11CStringBaseIcE", !16, i64 0, !5, i64 8, !5, i64 12}
!60 = !{!59, !16, i64 0}
!61 = !{!59, !5, i64 8}
!62 = distinct !{!62, !40, !63, !64}
!63 = !{!"llvm.loop.isvectorized", i32 1}
!64 = !{!"llvm.loop.unroll.runtime.disable"}
!65 = !{!"branch_weights", i32 4, i32 28}
!66 = distinct !{!66, !40, !63, !64}
!67 = distinct !{!67, !49}
!68 = distinct !{!68, !40, !63}
!69 = !{!70, !38, i64 0}
!70 = !{!"_ZTSN8NArchive4NZip14CExtraSubBlockE", !38, i64 0, !20, i64 8}
!71 = distinct !{!71, !40, !72}
!72 = !{!"llvm.loop.peeled.count", i32 1}
!73 = !{!74, !12, i64 16}
!74 = !{!"_ZTS17CBaseRecordVector", !5, i64 8, !5, i64 12, !12, i64 16, !21, i64 24}
!75 = !{!74, !5, i64 12}
!76 = !{!12, !12, i64 0}
!77 = !{!78, !6, i64 0}
!78 = !{!"_ZTSN8NArchive4NZip10CLocalItemE", !79, i64 0, !38, i64 2, !38, i64 4, !5, i64 8, !5, i64 12, !13, i64 16, !13, i64 24, !59, i64 32, !80, i64 48}
!79 = !{!"_ZTSN8NArchive4NZip8CVersionE", !6, i64 0, !6, i64 1}
!80 = !{!"_ZTSN8NArchive4NZip11CExtraBlockE", !81, i64 0}
!81 = !{!"_ZTS13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEE", !82, i64 0}
!82 = !{!"_ZTS13CRecordVectorIPvE", !74, i64 0}
!83 = !{!78, !6, i64 1}
!84 = !{!85, !38, i64 184}
!85 = !{!"_ZTSN8NArchive4NZip7CItemExE", !86, i64 0, !5, i64 180, !38, i64 184}
!86 = !{!"_ZTSN8NArchive4NZip5CItemE", !78, i64 0, !79, i64 80, !38, i64 82, !5, i64 84, !13, i64 88, !87, i64 96, !87, i64 104, !87, i64 112, !80, i64 120, !20, i64 152, !14, i64 176, !14, i64 177, !14, i64 178}
!87 = !{!"_ZTS9_FILETIME", !5, i64 0, !5, i64 4}
!88 = !{!85, !5, i64 180}
!89 = !{!86, !14, i64 176}
!90 = !{!9, !13, i64 88}
!91 = !{!86, !13, i64 88}
!92 = !{ptr @_ZN8NArchive4NZip10CInArchive4SeekEy}
!93 = !{!74, !21, i64 24}
!94 = !{!78, !38, i64 4}
!95 = !{!78, !5, i64 12}
!96 = !{!78, !13, i64 16}
!97 = !{!78, !13, i64 24}
!98 = !{ptr @_ZN13CObjectVectorIN8NArchive4NZip14CExtraSubBlockEED2Ev}
!99 = !{!78, !38, i64 2}
!100 = !{ptr @_ZN8NArchive4NZip10CInArchive20IncreaseRealPositionEy}
!101 = distinct !{!101, !40}
!102 = !{!86, !14, i64 177}
!103 = !{!86, !6, i64 80}
!104 = !{!86, !6, i64 81}
!105 = !{!86, !38, i64 82}
!106 = !{!86, !5, i64 84}
!107 = !{ptr @_ZN8NArchive4NZip10CInArchive8TryEcd64EyRNS0_7CCdInfoE}
!108 = !{!109, !13, i64 0}
!109 = !{!"_ZTSN8NArchive4NZip7CCdInfoE", !13, i64 0, !13, i64 8}
!110 = !{!109, !13, i64 8}
!111 = distinct !{!111, !40}
!112 = !{!9, !5, i64 8}
!113 = distinct !{!113, !40}
!114 = distinct !{!114, !40, !63, !64}
!115 = distinct !{!115, !40, !63, !64}
!116 = distinct !{!116, !49}
!117 = distinct !{!117, !40, !63}
!118 = distinct !{!118, !40}
!119 = distinct !{!119, !40}
!120 = distinct !{!120, !40}
!121 = distinct !{!121, !49}
!122 = !{!123, !38, i64 0}
!123 = !{!"_ZTSN8NArchive4NZip4CEcdE", !38, i64 0, !38, i64 2, !38, i64 4, !38, i64 6, !5, i64 8, !5, i64 12, !38, i64 16}
!124 = !{!123, !38, i64 2}
!125 = !{!123, !38, i64 4}
!126 = !{!123, !38, i64 6}
!127 = !{!123, !5, i64 8}
!128 = !{!123, !5, i64 12}
!129 = !{!123, !38, i64 16}
!130 = !{!131, !38, i64 0}
!131 = !{!"_ZTSN8NArchive4NZip6CEcd64E", !38, i64 0, !38, i64 2, !5, i64 4, !5, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40}
!132 = !{!131, !38, i64 2}
!133 = !{!131, !5, i64 4}
!134 = !{!131, !5, i64 8}
!135 = !{!131, !13, i64 16}
!136 = !{!131, !13, i64 24}
!137 = !{!131, !13, i64 32}
!138 = !{!131, !13, i64 40}
!139 = !{!9, !14, i64 136}
!140 = !{!9, !14, i64 137}
!141 = !{!9, !13, i64 104}
!142 = !{!143, !5, i64 0}
!143 = !{!"_ZTS13CMyUnknownImp", !5, i64 0}
!144 = distinct !{null}
!145 = !{ptr @_ZN8NArchive4NZip10CInArchive13SeekInArchiveEy}
!146 = distinct !{null}
!147 = !{!148, !13, i64 24}
!148 = !{!"_ZTS26CLimitedSequentialInStream", !149, i64 0, !143, i64 8, !17, i64 16, !13, i64 24, !13, i64 32, !14, i64 40}
!149 = !{!"_ZTS19ISequentialInStream", !150, i64 0}
!150 = !{!"_ZTS8IUnknown"}
!151 = !{!148, !13, i64 32}
!152 = !{!148, !14, i64 40}
!153 = distinct !{null}
!154 = distinct !{!154, !40}
!155 = distinct !{!155, !40}
end_hunk_3
