Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/PercentPrinter?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
begin_hunk_0_@_ZN15CPercentPrinter10ClosePrintEv:bb.a
  %i.a = alloca [115 x i8], align 16              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !12   ; 3 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph25.preheader.i, label %_ZL9ClearPrevPci.exit

.lr.ph25.preheader.i:                             ; preds = %bb.b
  %i.f = zext nneg i32 %i.c to i64                ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 8, i64 %i.f, i1 false), !tbaa !13
  %scevgep.i = getelementptr i8, ptr %i.a, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 32, i64 %i.f, i1 false), !tbaa !13
  %scevgep29.i = getelementptr i8, ptr %scevgep.i, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep29.i, i8 8, i64 %i.f, i1 false), !tbaa !13
  %scevgep30.i = getelementptr i8, ptr %scevgep29.i, i64 %i.f
  br label %_ZL9ClearPrevPci.exit

_ZL9ClearPrevPci.exit:                            ; preds = %bb.b, %.lr.ph25.preheader.i
  %.214.lcssa.i = phi ptr [ %scevgep30.i, %.lr.ph25.preheader.i ], [ %i.a, %bb.b ]
  store i8 0, ptr %.214.lcssa.i, align 1, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull %i.a) ; 0 uses
  store i32 0, ptr %i.b, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZL9ClearPrevPci.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15CPercentPrinter11PrintStringEPKc(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [115 x i8], align 16              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !12   ; 3 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN15CPercentPrinter10ClosePrintEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph25.preheader.i.i, label %_ZL9ClearPrevPci.exit.i

.lr.ph25.preheader.i.i:                           ; preds = %bb.b
  %i.f = zext nneg i32 %i.c to i64                ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 8, i64 %i.f, i1 false), !tbaa !13
  %scevgep.i.i = getelementptr i8, ptr %i.a, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i, i8 32, i64 %i.f, i1 false), !tbaa !13
  %scevgep29.i.i = getelementptr i8, ptr %scevgep.i.i, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep29.i.i, i8 8, i64 %i.f, i1 false), !tbaa !13
  %scevgep30.i.i = getelementptr i8, ptr %scevgep29.i.i, i64 %i.f
  br label %_ZL9ClearPrevPci.exit.i

_ZL9ClearPrevPci.exit.i:                          ; preds = %.lr.ph25.preheader.i.i, %bb.b
  %.214.lcssa.i.i = phi ptr [ %scevgep30.i.i, %.lr.ph25.preheader.i.i ], [ %i.a, %bb.b ]
  store i8 0, ptr %.214.lcssa.i.i, align 1, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull %i.a) ; 0 uses
  store i32 0, ptr %i.b, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_ZN15CPercentPrinter10ClosePrintEv.exit

_ZN15CPercentPrinter10ClosePrintEv.exit:          ; preds = %bb.a, %_ZL9ClearPrevPci.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15CPercentPrinter11PrintStringEPKw(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [115 x i8], align 16              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !12   ; 3 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN15CPercentPrinter10ClosePrintEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph25.preheader.i.i, label %_ZL9ClearPrevPci.exit.i

.lr.ph25.preheader.i.i:                           ; preds = %bb.b
  %i.f = zext nneg i32 %i.c to i64                ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 8, i64 %i.f, i1 false), !tbaa !13
  %scevgep.i.i = getelementptr i8, ptr %i.a, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i, i8 32, i64 %i.f, i1 false), !tbaa !13
  %scevgep29.i.i = getelementptr i8, ptr %scevgep.i.i, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep29.i.i, i8 8, i64 %i.f, i1 false), !tbaa !13
  %scevgep30.i.i = getelementptr i8, ptr %scevgep29.i.i, i64 %i.f
  br label %_ZL9ClearPrevPci.exit.i

_ZL9ClearPrevPci.exit.i:                          ; preds = %.lr.ph25.preheader.i.i, %bb.b
  %.214.lcssa.i.i = phi ptr [ %scevgep30.i.i, %.lr.ph25.preheader.i.i ], [ %i.a, %bb.b ]
  store i8 0, ptr %.214.lcssa.i.i, align 1, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull %i.a) ; 0 uses
  store i32 0, ptr %i.b, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_ZN15CPercentPrinter10ClosePrintEv.exit

_ZN15CPercentPrinter10ClosePrintEv.exit:          ; preds = %bb.a, %_ZL9ClearPrevPci.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef %1) ; 0 uses
  ret void
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKw(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15CPercentPrinter12PrintNewLineEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [115 x i8], align 16              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !12   ; 3 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZN15CPercentPrinter10ClosePrintEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph25.preheader.i.i, label %_ZL9ClearPrevPci.exit.i

.lr.ph25.preheader.i.i:                           ; preds = %bb.b
  %i.f = zext nneg i32 %i.c to i64                ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 8, i64 %i.f, i1 false), !tbaa !13
  %scevgep.i.i = getelementptr i8, ptr %i.a, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i.i, i8 32, i64 %i.f, i1 false), !tbaa !13
  %scevgep29.i.i = getelementptr i8, ptr %scevgep.i.i, i64 %i.f ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep29.i.i, i8 8, i64 %i.f, i1 false), !tbaa !13
  %scevgep30.i.i = getelementptr i8, ptr %scevgep29.i.i, i64 %i.f
  br label %_ZL9ClearPrevPci.exit.i

_ZL9ClearPrevPci.exit.i:                          ; preds = %.lr.ph25.preheader.i.i, %bb.b
  %.214.lcssa.i.i = phi ptr [ %scevgep30.i.i, %.lr.ph25.preheader.i.i ], [ %i.a, %bb.b ]
  store i8 0, ptr %.214.lcssa.i.i, align 1, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14
  %i.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull %i.a) ; 0 uses
  store i32 0, ptr %i.b, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_ZN15CPercentPrinter10ClosePrintEv.exit

_ZN15CPercentPrinter10ClosePrintEv.exit:          ; preds = %bb.a, %_ZL9ClearPrevPci.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull @.str) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15CPercentPrinter12RePrintRatioEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  %i.b = alloca [114 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15
  %i.h = mul i64 %i.g, 100
  %i.i = udiv i64 %i.h, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ]
  call void @_Z21ConvertUInt64ToStringyPcj(i64 noundef %i.j, ptr noundef nonnull %i.a, i32 noundef 10)
  %i.k = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #7 ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = add nsw i32 %i.l, 1                      ; 4 uses
  %sext = shl i64 %i.k, 32
  %i.n = ashr exact i64 %sext, 32
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 %i.n
  store i8 37, ptr %i.o, align 1, !tbaa !13
  %i.p = sext i32 %i.m to i64
  %i.q = getelementptr inbounds i8, ptr %i.a, i64 %i.p
  store i8 0, ptr %i.q, align 1, !tbaa !13
  %i.r = call noundef i32 @llvm.smax.i32(i32 %i.m, i32 4)
  %i.s = add nuw i32 %i.r, 2                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !12   ; 3 uses
  %spec.select = call i32 @llvm.smax.i32(i32 %i.s, i32 %i.u) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.preheader24.preheader, label %bb.d

.preheader24.preheader:                           ; preds = %bb.c
  %i.w = call i32 @llvm.smax.i32(i32 %i.s, i32 1)
  %umax = zext nneg i32 %i.w to i64               ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.b, i8 32, i64 %umax, i1 false), !tbaa !13
  %scevgep = getelementptr i8, ptr %i.b, i64 %umax
  br label %bb.d

bb.d:                                             ; preds = %.preheader24.preheader, %bb.c
  %i.x = phi i32 [ %spec.select, %.preheader24.preheader ], [ %i.u, %bb.c ] ; 5 uses
  %.118 = phi ptr [ %scevgep, %.preheader24.preheader ], [ %i.b, %bb.c ] ; 6 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.d
  %i.z = zext nneg i32 %i.x to i64                ; 5 uses
  %min.iters.check = icmp ult i32 %i.x, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check42 = icmp ult i32 %i.x, 32
  br i1 %min.iters.check42, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aa = and i64 %i.z, 24
  %n.vec = and i64 %i.z, 2147483616               ; 5 uses
  %i.ab = trunc nuw nsw i64 %n.vec to i32
  %i.ac = getelementptr i8, ptr %.118, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.118, i64 %index ; 2 uses
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> splat (i8 8), ptr %next.gep, align 1, !tbaa !13
  store <16 x i8> splat (i8 8), ptr %i.ad, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.z
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aa, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !26

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec44 = and i64 %i.z, 2147483640             ; 4 uses
  %i.af = trunc nuw nsw i64 %n.vec44 to i32
  %i.ag = getelementptr i8, ptr %.118, i64 %n.vec44 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index45 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next47, %vec.epilog.vector.body ] ; 2 uses
  %next.gep46 = getelementptr i8, ptr %.118, i64 %index45
  store <8 x i8> splat (i8 8), ptr %next.gep46, align 1, !tbaa !13
  %index.next47 = add nuw i64 %index45, 8         ; 2 uses
  %i.ah = icmp eq i64 %index.next47, %n.vec44
  br i1 %i.ah, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !18

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n48 = icmp eq i64 %n.vec44, %i.z
  br i1 %cmp.n48, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.128.ph = phi i32 [ 0, %iter.check ], [ %i.ab, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  %.227.ph = phi ptr [ %.118, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.128 = phi i32 [ %i.aj, %.lr.ph ], [ %.128.ph, %.lr.ph.preheader ]
  %.227 = phi ptr [ %i.ai, %.lr.ph ], [ %.227.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.227, i64 1 ; 2 uses
  store i8 8, ptr %.227, align 1, !tbaa !13
  %i.aj = add nuw nsw i32 %.128, 1                ; 2 uses
  %i.ak = icmp slt i32 %i.aj, %i.x
  br i1 %i.ak, label %.lr.ph, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.d
  %.2.lcssa = phi ptr [ %.118, %bb.d ], [ %i.ag, %vec.epilog.middle.block ], [ %i.ac, %middle.block ], [ %i.ai, %.lr.ph ] ; 2 uses
  store i32 %spec.select, ptr %i.t, align 8, !tbaa !12
  %i.al = icmp slt i32 %i.m, %spec.select
  br i1 %i.al, label %.lr.ph32, label %.preheader.preheader

.lr.ph32:                                         ; preds = %._crit_edge, %.lr.ph32
  %.330 = phi ptr [ %i.am, %.lr.ph32 ], [ %.2.lcssa, %._crit_edge ] ; 2 uses
  %.02029 = phi i32 [ %i.an, %.lr.ph32 ], [ %i.m, %._crit_edge ]
  %i.am = getelementptr inbounds nuw i8, ptr %.330, i64 1 ; 2 uses
  store i8 32, ptr %.330, align 1, !tbaa !13
  %i.an = add nsw i32 %.02029, 1                  ; 2 uses
  %i.ao = load i32, ptr %i.t, align 8, !tbaa !12
  %i.ap = icmp slt i32 %i.an, %i.ao
  br i1 %i.ap, label %.lr.ph32, label %.preheader.preheader, !llvm.loop !20

.preheader.preheader:                             ; preds = %.lr.ph32, %._crit_edge
  %.04.i.ph = phi ptr [ %.2.lcssa, %._crit_edge ], [ %i.am, %.lr.ph32 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.04.i = phi ptr [ %i.as, %.preheader ], [ %.04.i.ph, %.preheader.preheader ] ; 2 uses
  %.0.i = phi ptr [ %i.aq, %.preheader ], [ %i.a, %.preheader.preheader ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.ar = load i8, ptr %.0.i, align 1, !tbaa !13  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.04.i, i64 1
  store i8 %i.ar, ptr %.04.i, align 1, !tbaa !13
  %.not.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i, label %_Z12MyStringCopyIcEPT_S1_PKS0_.exit, label %.preheader, !llvm.loop !21

_Z12MyStringCopyIcEPT_S1_PKS0_.exit:              ; preds = %.preheader
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !14
  %i.av = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN13CStdOutStreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull %i.b) ; 0 uses
  %i.aw = load ptr, ptr %i.at, align 8, !tbaa !14
  %i.ax = call noundef zeroext i1 @_ZN13CStdOutStream5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

declare void @_Z21ConvertUInt64ToStringyPcj(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN13CStdOutStream5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15CPercentPrinter10PrintRatioEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.f = add i64 %i.e, %i.d
  %i.g = icmp uge i64 %i.b, %i.f
  %i.h = add i64 %i.e, %i.b
  %i.i = icmp ule i64 %i.h, %i.d
  %or.cond.not6 = or i1 %i.g, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i32, ptr %i.j, align 8
  %.not = icmp eq i32 %i.k, 0
  %or.cond3 = select i1 %or.cond.not6, i1 true, i1 %.not
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN15CPercentPrinter12RePrintRatioEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"long long", !5, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS13CStdOutStream", !9, i64 0}
!11 = !{!"_ZTS15CPercentPrinter", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !6, i64 32, !10, i64 40}
!12 = !{!11, !6, i64 32}
!13 = !{!5, !5, i64 0}
!14 = !{!11, !10, i64 40}
!15 = !{!11, !8, i64 16}
!16 = !{!11, !8, i64 8}
!17 = distinct !{!17, !23, !24, !25}
!18 = distinct !{!18, !23, !24, !25}
!19 = distinct !{!19, !23, !25, !24}
!20 = distinct !{!20, !23}
!21 = distinct !{!21, !23}
!22 = !{!11, !8, i64 24}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!"branch_weights", i32 8, i32 24}
!27 = !{!11, !8, i64 0}
end_hunk_0
