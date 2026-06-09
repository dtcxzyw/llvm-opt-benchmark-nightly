inline.NumInlined: 1255
inline.NumDeleted: 622
begin_hunk_0
@.str.12 = private unnamed_addr constant [16 x i8] c"Cannot convert \00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c" to BigInt\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"Invalid error ID passed to getOriginalNativeErrorConstructor\00", align 1
@_ZN6hermes2vm15HandleRootOwner15undefinedValue_E = external global %"class.hermes::vm::PinnedHermesValue", align 8
@_ZN6hermes2vm6VTable11vtableArrayE = external local_unnamed_addr global %"struct.std::array.234", align 8
@_ZN6hermes2vm15HandleRootOwner12nullPointer_E = external global %"class.hermes::vm::PinnedHermesValue", align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm26silentObjectSetPrototypeOfEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !12, !noalias !13 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !16 ; 2 uses
  %i.e = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.e, label %bb.b, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.f = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %i.i = add i32 %i.h, -436207616
  %i.j = icmp ult i32 %i.i, 855638016
  %i.k = icmp ne i32 %i.b, 1
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit13, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread

_ZNK6hermes2vm10NativeArgs6getArgEj.exit13:       ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.c, i64 -16
  %.sroa.0.0.copyload.i12 = load i64, ptr %i.l, align 8, !tbaa !16 ; 3 uses
  %.mask.i = and i64 %.sroa.0.0.copyload.i12, -140737488355328
  %i.m = icmp eq i64 %.mask.i, -1548112371908608
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit13
  %i.n = icmp ugt i64 %.sroa.0.0.copyload.i12, -281474976710657
  br i1 %i.n, label %bb.d, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = and i64 %.sroa.0.0.copyload.i12, 281474976710655
  %i.p = inttoptr i64 %i.o to ptr
  br label %bb.e

bb.e:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit13, %bb.d
  %.0 = phi ptr [ %i.p, %bb.d ], [ null, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit13 ]
  %i.q = tail call i32 @_ZN6hermes2vm8JSObject9setParentEPS1_RNS0_7RuntimeES2_NS0_11PropOpFlagsE(ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %.0, i32 0) #10 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 720
  store i64 -1970324836974592, ptr %i.r, align 8, !tbaa !18
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread

_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread:  ; preds = %bb.a, %bb.e, %bb.c, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %bb.b
  ret { i32, i64 } { i32 1, i64 -1688849860263936 }
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @_ZN6hermes2vm8JSObject9setParentEPS1_RNS0_7RuntimeES2_NS0_11PropOpFlagsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm30hermesBuiltinGetTemplateObjectEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %6 = alloca %"class.hermes::vm::GCScope", align 8 ; 14 uses
  %7 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %8 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %9 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %10 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !7    ; 4 uses
  %i.d = icmp ult i32 %i.c, 3
  br i1 %i.d, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, !prof !20

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 33, ptr %i.f, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.g, align 8, !tbaa !25
  store ptr @.str, ptr %3, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.h, align 8, !tbaa !27
  %i.i = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.x

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.a
  %i.j = load ptr, ptr %2, align 8, !tbaa !12, !noalias !28 ; 2 uses
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.k, align 8, !tbaa !16
  %i.l = icmp ult i64 %.sroa.0.0.copyload.i, -1970324836974592
  br i1 %i.l, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit95, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit92, !prof !31

_ZN6hermes2vm11TwineChar16C2EPKc.exit92:          ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.m, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 33, ptr %i.n, align 8, !tbaa !24
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.o, align 8, !tbaa !25
  store ptr @.str.1, ptr %4, align 8, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.p, align 8, !tbaa !27
  %i.q = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.x

_ZNK6hermes2vm10NativeArgs6getArgEj.exit95:       ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.r = getelementptr inbounds i8, ptr %i.j, i64 -16
  %.sroa.0.0.copyload.i94 = load i64, ptr %i.r, align 8, !tbaa !16
  %.mask.i = and i64 %.sroa.0.0.copyload.i94, -140737488355328
  %i.s = icmp eq i64 %.mask.i, -1407374883553280
  br i1 %i.s, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit100, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit97, !prof !31

_ZN6hermes2vm11TwineChar16C2EPKc.exit97:          ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit95
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 1, ptr %i.t, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 32, ptr %i.u, align 8, !tbaa !24
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 0, ptr %i.v, align 8, !tbaa !25
  store ptr @.str.2, ptr %5, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 3, ptr %i.w, align 8, !tbaa !27
  %i.x = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.x

_ZNK6hermes2vm10NativeArgs6getArgEj.exit100:      ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit95
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  store ptr %1, ptr %6, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !34
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 144 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 152
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 156
  store i32 4, ptr %i.af, align 4, !tbaa !46
  store ptr %i.ac, ptr %i.ad, align 8
  store i32 1, ptr %i.ae, align 8, !tbaa !47
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 192 ; 3 uses
  store ptr %i.ac, ptr %i.ag, align 8, !tbaa !48
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 200 ; 2 uses
  store ptr %i.ab, ptr %i.ah, align 8, !tbaa !49
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 208 ; 3 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !50
  store ptr %6, ptr %i.z, align 8, !tbaa !34
  %.sroa.0.0.copyload.i99176 = load double, ptr %i.k, align 8, !tbaa !16
  %i.aj = fptoui double %.sroa.0.0.copyload.i99176 to i32 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 9472
  %.sroa.0.0.copyload.i101 = load ptr, ptr %i.ak, align 8, !tbaa !51
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i101, i64 -24
  %i.am = load i64, ptr %i.al, align 8, !tbaa !18 ; 2 uses
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit105, label %bb.b, !prof !20

_ZN6hermes2vm11TwineChar16C2EPKc.exit105:         ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit100
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 1, ptr %i.an, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 33, ptr %i.ao, align 8, !tbaa !24
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.ap, align 8, !tbaa !25
  store ptr @.str.3, ptr %7, align 8, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 3, ptr %i.aq, align 8, !tbaa !27
  %i.ar = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %bb.w

bb.b:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit100
  %i.as = inttoptr i64 %i.am to ptr
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !52 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 168 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !57 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 184
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !60 ; 2 uses
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit108, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.az = mul i32 %i.aj, 37
  %i.ba = add i32 %i.ax, -1                       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  %.02744.i.i.i = and i32 %i.ba, %i.az            ; 2 uses
  %i.bb = zext i32 %.02744.i.i.i to i64           ; 2 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3  ; 2 uses
  %i.be = icmp eq i32 %i.bd, %i.aj
  br i1 %i.be, label %_ZN6hermes2vm13RuntimeModule24findCachedTemplateObjectEj.exit, label %.lr.ph.i.i.i, !prof !61

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %i.bf = phi i32 [ %i.bl, %bb.d ], [ %i.bd, %bb.c ]
  %.02747.i.i.i = phi i32 [ %.027.i.i.i, %bb.d ], [ %.02744.i.i.i, %bb.c ]
  %.02546.i.i.i = phi i32 [ %i.bh, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.bg = icmp eq i32 %i.bf, -1
  br i1 %i.bg, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit108, label %bb.d, !prof !31

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.bh = add i32 %.02546.i.i.i, 1
  %i.bi = add i32 %.02546.i.i.i, %.02747.i.i.i
  %.027.i.i.i = and i32 %i.bi, %i.ba              ; 2 uses
  %i.bj = zext i32 %.027.i.i.i to i64             ; 2 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3  ; 2 uses
  %i.bm = icmp eq i32 %i.bl, %i.aj
  br i1 %i.bm, label %_ZN6hermes2vm13RuntimeModule24findCachedTemplateObjectEj.exit, label %.lr.ph.i.i.i, !prof !62, !llvm.loop !63

_ZN6hermes2vm13RuntimeModule24findCachedTemplateObjectEj.exit: ; preds = %bb.d, %bb.c
  %i.bn = phi i64 [ %i.bb, %bb.c ], [ %i.bj, %bb.d ]
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !65 ; 2 uses
  %.not89 = icmp eq ptr %i.bq, null
  br i1 %.not89, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit108, label %bb.e

bb.e:                                             ; preds = %_ZN6hermes2vm13RuntimeModule24findCachedTemplateObjectEj.exit
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = or i64 %i.br, -281474976710656
  br label %bb.w

_ZNK6hermes2vm10NativeArgs6getArgEj.exit108:      ; preds = %.lr.ph.i.i.i, %_ZN6hermes2vm13RuntimeModule24findCachedTemplateObjectEj.exit, %bb.b
  %i.bt = load ptr, ptr %2, align 8, !tbaa !12, !noalias !67
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -16
  %.sroa.0.0.copyload.i107 = load i64, ptr %i.bu, align 8, !tbaa !16
  %i.bv = trunc i64 %.sroa.0.0.copyload.i107 to i1 ; 2 uses
  br i1 %i.bv, label %.critedge90, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit108.thread

_ZNK6hermes2vm10NativeArgs6getArgEj.exit108.thread: ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit108
  %i.bw = trunc i32 %i.c to i1
  br i1 %i.bw, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit110, label %.critedge, !prof !20

_ZN6hermes2vm11TwineChar16C2EPKc.exit110:         ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit108.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i32 1, ptr %i.bx, align 8, !tbaa !21
  %i.by = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 56, ptr %i.by, align 8, !tbaa !24
  %i.bz = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 0, ptr %i.bz, align 8, !tbaa !25
  store ptr @.str.4, ptr %8, align 8, !tbaa !26
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 3, ptr %i.ca, align 8, !tbaa !27
  %i.cb = call noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %8) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.w

.critedge90:                                      ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit108
  %i.cc = add i32 %i.c, -2
  br label %bb.f

.critedge:                                        ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit108.thread
  %i.cd = lshr exact i32 %i.c, 1
  %i.ce = add nsw i32 %i.cd, -1
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %.critedge90
  %i.cf = phi i32 [ %i.cc, %.critedge90 ], [ %i.ce, %.critedge ] ; 5 uses
  %i.cg = call ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.cf, i32 noundef 0) #10 ; 5 uses
  %.not177 = icmp eq ptr %i.cg, inttoptr (i64 -1 to ptr)
  br i1 %.not177, label %bb.w, label %bb.g, !prof !20

bb.g:                                             ; preds = %bb.f
  %i.ch = call ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.cf, i32 noundef 0) #10 ; 7 uses
  %.not178 = icmp eq ptr %i.ch, inttoptr (i64 -1 to ptr)
  br i1 %.not178, label %bb.w, label %bb.h, !prof !20

bb.h:                                             ; preds = %bb.g
  %i.ci = load ptr, ptr %i.z, align 8, !tbaa !34  ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 192 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !48 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 200
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !49 ; 2 uses
  %i.cn = icmp ult ptr %i.ck, %i.cm
  br i1 %i.cn, label %bb.i, label %bb.j, !prof !31

bb.i:                                             ; preds = %bb.h
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  store ptr %i.co, ptr %i.cj, align 8, !tbaa !48
  store i64 -1688849860263936, ptr %i.ck, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

bb.j:                                             ; preds = %bb.h
  %i.cp = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ci, i64 -1688849860263936) #10
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !34  ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 192
  %.pre185 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !48
  %.phi.trans.insert186 = getelementptr inbounds nuw i8, ptr %.pre, i64 200
  %.pre187 = load ptr, ptr %.phi.trans.insert186, align 8, !tbaa !49
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit: ; preds = %bb.i, %bb.j
  %i.cq = phi ptr [ %i.cm, %bb.i ], [ %.pre187, %bb.j ] ; 2 uses
  %i.cr = phi ptr [ %i.co, %bb.i ], [ %.pre185, %bb.j ] ; 4 uses
  %i.cs = phi ptr [ %i.ci, %bb.i ], [ %.pre, %bb.j ] ; 3 uses
  %.0.i.i.i.i.i.i = phi ptr [ %i.ck, %bb.i ], [ %i.cp, %bb.j ] ; 3 uses
  %i.ct = icmp ult ptr %i.cr, %i.cq
  br i1 %i.ct, label %bb.k, label %bb.l, !prof !31

bb.k:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 192
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  store ptr %i.cv, ptr %i.cu, align 8, !tbaa !48
  store i64 -1688849860263936, ptr %i.cr, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit112

bb.l:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit
  %i.cw = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.cs, i64 -1688849860263936) #10
  %.pre188 = load ptr, ptr %i.z, align 8, !tbaa !34 ; 3 uses
  %.phi.trans.insert189 = getelementptr inbounds nuw i8, ptr %.pre188, i64 192
  %.pre190 = load ptr, ptr %.phi.trans.insert189, align 8, !tbaa !48
  %.phi.trans.insert191 = getelementptr inbounds nuw i8, ptr %.pre188, i64 200
  %.pre192 = load ptr, ptr %.phi.trans.insert191, align 8, !tbaa !49
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit112

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit112: ; preds = %bb.k, %bb.l
  %i.cx = phi ptr [ %i.cq, %bb.k ], [ %.pre192, %bb.l ]
  %i.cy = phi ptr [ %i.cv, %bb.k ], [ %.pre190, %bb.l ] ; 4 uses
  %i.cz = phi ptr [ %i.cs, %bb.k ], [ %.pre188, %bb.l ] ; 2 uses
  %.0.i.i.i.i.i.i111 = phi ptr [ %i.cr, %bb.k ], [ %i.cw, %bb.l ] ; 2 uses
  %i.da = icmp ult ptr %i.cy, %i.cx
  br i1 %i.da, label %bb.m, label %bb.n, !prof !31

bb.m:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit112
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 192
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !48
  store i64 -1688849860263936, ptr %i.cy, align 8, !tbaa !16
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit114

bb.n:                                             ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit112
  %i.dd = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.cz, i64 -1688849860263936) #10
  br label %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit114

_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit114: ; preds = %bb.m, %bb.n
  %.0.i.i.i.i.i.i113 = phi ptr [ %i.cy, %bb.m ], [ %i.dd, %bb.n ] ; 2 uses
  %i.de = add nuw i32 %i.cf, 2
  %i.df = select i1 %i.bv, i32 2, i32 %i.de
  %i.dg = load ptr, ptr %i.ag, align 8, !tbaa !48
  %i.dh = load i32, ptr %i.ai, align 8, !tbaa !50 ; 2 uses
  %.not183 = icmp eq i32 %i.cf, 0
  br i1 %.not183, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit114
  %i.di = zext i32 %i.dh to i64
  %wide.trip.count = zext i32 %i.cf to i64
  br label %bb.o

._crit_edge:                                      ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit123, %_ZN6hermes2vm13MutableHandleINS0_11HermesValueEEC2ERNS0_15HandleRootOwnerES2_.exit114
  %i.dj = call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %i.cg, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 85, i32 48, ptr nonnull @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, i32 1) #10 ; 2 uses
  %.mask = and i32 %i.dj, 255
  %i.dk = icmp eq i32 %.mask, 0
  br i1 %i.dk, label %bb.w, label %bb.r, !prof !20

bb.o:                                             ; preds = %.lr.ph, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit123
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit123 ] ; 2 uses
  %i.dl = trunc nuw i64 %indvars.iv to i32        ; 3 uses
  %i.dm = uitofp i32 %i.dl to double
  store double %i.dm, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !18
  %i.dn = add i32 %i.df, %i.dl                    ; 2 uses
  %i.do = load i32, ptr %i.b, align 8, !tbaa !7
  %i.dp = icmp ult i32 %i.dn, %i.do
  br i1 %i.dp, label %bb.p, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit120

bb.p:                                             ; preds = %bb.o
  %i.dq = load ptr, ptr %2, align 8, !tbaa !12, !noalias !70
  %i.dr = zext i32 %i.dn to i64
  %i.ds = sub nsw i64 0, %i.dr
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.ds
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -8
  %.sroa.0.0.copyload.i119 = load i64, ptr %i.du, align 8, !tbaa !16
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit120

_ZNK6hermes2vm10NativeArgs6getArgEj.exit120:      ; preds = %bb.o, %bb.p
  %.sroa.0.0.i118 = phi i64 [ %.sroa.0.0.copyload.i119, %bb.p ], [ -1688849860263936, %bb.o ]
  store i64 %.sroa.0.0.i118, ptr %.0.i.i.i.i.i.i113, align 8, !tbaa !18
  %i.dv = call i32 @_ZN6hermes2vm8JSObject26defineOwnComputedPrimitiveENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS0_19DefinePropertyFlagsES7_NS0_11PropOpFlagsE(ptr %i.ch, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.0.i.i.i.i.i.i, i32 313, ptr nonnull %.0.i.i.i.i.i.i113, i32 0) #10 ; 0 uses
  %i.dw = add i32 %i.dl, 2                        ; 2 uses
  %i.dx = load i32, ptr %i.b, align 8, !tbaa !7
  %i.dy = icmp ult i32 %i.dw, %i.dx
  br i1 %i.dy, label %bb.q, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit123

bb.q:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit120
  %i.dz = load ptr, ptr %2, align 8, !tbaa !12, !noalias !73
end_hunk_0
begin_hunk_1_@"_ZN6hermes2vm8JSObject23forEachOwnPropertyWhileIZNS0_31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEE3$_0ZNS0_31hermesBuiltinCopyDataPropertiesES3_S5_S6_E3$_1EEbNS0_6HandleIS1_EES5_RKT_RKT0_":bb.a
  %i.fl = or i64 %i.fk, -844424930131968
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i.i.i

bb.x:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i
  %i.fm = and i32 %.sroa.0.0.i.i.i.i.i, -8
  %i.fn = zext i32 %i.fm to i64
  %i.fo = add i64 %i.fn, %i.ca
  %i.fp = inttoptr i64 %i.fo to ptr
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !113 ; 2 uses
  %i.fs = fcmp uno double %i.fr, 0.000000e+00
  %i.ft = bitcast double %i.fr to i64
  %.sroa.0.0.i.i21.i.i.i = select i1 %i.fs, i64 9221120237041090560, i64 %i.ft, !prof !20
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i.i.i

bb.y:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i
  %i.fu = ashr i32 %.sroa.0.0.i.i.i.i.i, 3
  %i.fv = sitofp i32 %i.fu to double
  %i.fw = bitcast double %i.fv to i64
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i.i.i

bb.z:                                             ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i
  %i.fx = lshr i32 %.sroa.0.0.i.i.i.i.i, 3
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = or disjoint i64 %i.fy, -1266637395197952
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i.i.i

bb.aa:                                            ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i
  %i.ga = icmp ugt i32 %.sroa.0.0.i.i.i.i.i, 15
  %i.gb = zext i1 %i.ga to i64
  %i.gc = or disjoint i64 %i.gb, -1407374883553280
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i.i.i

bb.ab:                                            ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i.i.i

bb.ac:                                            ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i
  br label %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i.i.i

default.unreachable:                              ; preds = %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i
  unreachable

_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i.i.i: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i
  %.sroa.05.0.i.i.i.i = phi i64 [ %i.fd, %bb.u ], [ %i.fh, %bb.v ], [ %i.fl, %bb.w ], [ %.sroa.0.0.i.i21.i.i.i, %bb.x ], [ %i.fw, %bb.y ], [ %i.fz, %bb.z ], [ %i.gc, %bb.aa ], [ -1548112371908608, %bb.ac ], [ -1970324836974592, %bb.ab ], [ -1688849860263936, %_ZN6hermes2vm8JSObject23getNamedSlotValueUnsafeEPS1_RNS0_11PointerBaseENS0_23NamedPropertyDescriptorE.exit.i.i.i ] ; 3 uses
  %i.gd = load ptr, ptr %i.k, align 8, !tbaa !34  ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 192 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !48 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 200
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !49
  %i.gi = icmp ult ptr %i.gf, %i.gh
  br i1 %i.gi, label %bb.ad, label %bb.ae, !prof !31

bb.ad:                                            ; preds = %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store ptr %i.gj, ptr %i.ge, align 8, !tbaa !48
  store i64 %.sroa.05.0.i.i.i.i, ptr %i.gf, align 8, !tbaa !16
  br label %"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_1clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i"

bb.ae:                                            ; preds = %_ZNK6hermes2vm13HermesValue329unboxToHVERNS0_11PointerBaseE.exit.i.i.i
  %i.gk = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.gd, i64 %.sroa.05.0.i.i.i.i) #10
  %.sroa.0.0.copyload.i.i.i.i22.pre.i.i.i = load i64, ptr %i.gk, align 8, !tbaa !16
  br label %"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_1clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i"

"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_1clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i": ; preds = %bb.ae, %bb.ad
  %.sroa.0.0.copyload.i.i.i.i22.i.i.i = phi i64 [ %.sroa.05.0.i.i.i.i, %bb.ad ], [ %.sroa.0.0.copyload.i.i.i.i22.pre.i.i.i, %bb.ae ]
  %i.gl = load ptr, ptr %i.dl, align 8, !tbaa !152, !nonnull !136, !align !137 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !51
  store i64 %.sroa.0.0.copyload.i.i.i.i22.i.i.i, ptr %i.gm, align 8, !tbaa !18
  %i.gn = load ptr, ptr %i.dm, align 8, !tbaa !153, !nonnull !136, !align !137
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %i.gn, align 8
  %.sroa.0.0.copyload.i.i7.i = load ptr, ptr %i.gl, align 8
  %i.go = call i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr %.sroa.03.0.copyload.i.i.i, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 %i.dv, i32 319, ptr %.sroa.0.0.copyload.i.i7.i, i32 0) #10
  %.mask.i.i.i = and i32 %i.go, 255
  %.not29.i.i = icmp eq i32 %.mask.i.i.i, 0
  br i1 %.not29.i.i, label %"_ZN6hermes2vm11HiddenClass20forEachPropertyWhileIZNS0_31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEE3$_1EEbNS0_6HandleIS1_EES5_RKT_.exit", label %"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_1clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.thread.i.i"

"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_1clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.thread.i.i": ; preds = %"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_1clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i", %bb.q, %bb.o
  %i.gp = load ptr, ptr %i.dn, align 8, !tbaa !45
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.do
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !51
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 128
  store i32 %i.df, ptr %i.de, align 8, !tbaa !50
  store ptr %i.gs, ptr %i.dp, align 8, !tbaa !49
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !48
  br label %bb.af

bb.af:                                            ; preds = %"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_1clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.thread.i.i", %bb.n
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.dq
  br i1 %.not.i.i, label %"_ZN6hermes2vm11HiddenClass20forEachPropertyWhileIZNS0_31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEE3$_1EEbNS0_6HandleIS1_EES5_RKT_.exit", label %bb.n, !llvm.loop !154

"_ZN6hermes2vm11HiddenClass20forEachPropertyWhileIZNS0_31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEE3$_1EEbNS0_6HandleIS1_EES5_RKT_.exit": ; preds = %"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_1clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i", %bb.af, %..critedge_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %..critedge_crit_edge.i.i ], [ %i.do, %bb.af ], [ %i.do, %"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_1clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i" ]
  %.not.lcssa.i.i = phi i1 [ true, %..critedge_crit_edge.i.i ], [ false, %"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_1clES3_NS0_8SymbolIDENS0_23NamedPropertyDescriptorE.exit.i.i" ], [ true, %bb.af ]
  %i.gt = getelementptr inbounds nuw i8, ptr %i.dc, i64 144
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !45
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %.pre-phi.i.i
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !51
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 128
  store i32 %i.df, ptr %i.de, align 8, !tbaa !50
  %i.gy = getelementptr inbounds nuw i8, ptr %i.dc, i64 200
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !49
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !48
  %.pre53 = zext i32 %i.p to i64
  br label %.loopexit

.loopexit:                                        ; preds = %"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_jNS0_26ComputedPropertyDescriptorE.exit", %"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_jNS0_26ComputedPropertyDescriptorE.exit.thread40", %"_ZN6hermes2vm11HiddenClass20forEachPropertyWhileIZNS0_31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEE3$_1EEbNS0_6HandleIS1_EES5_RKT_.exit"
  %.pre-phi = phi i64 [ %.pre53, %"_ZN6hermes2vm11HiddenClass20forEachPropertyWhileIZNS0_31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEE3$_1EEbNS0_6HandleIS1_EES5_RKT_.exit" ], [ %i.x, %"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_jNS0_26ComputedPropertyDescriptorE.exit.thread40" ], [ %i.x, %"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_jNS0_26ComputedPropertyDescriptorE.exit" ]
  %.4 = phi i1 [ %.not.lcssa.i.i, %"_ZN6hermes2vm11HiddenClass20forEachPropertyWhileIZNS0_31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEE3$_1EEbNS0_6HandleIS1_EES5_RKT_.exit" ], [ false, %"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_jNS0_26ComputedPropertyDescriptorE.exit.thread40" ], [ false, %"_ZZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsEENK3$_0clES3_jNS0_26ComputedPropertyDescriptorE.exit" ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !45
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %.pre-phi
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !51
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 128
  store i32 %i.p, ptr %i.o, align 8, !tbaa !50
  %i.he = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  store ptr %i.hd, ptr %i.he, align 8, !tbaa !49
  store ptr %i.n, ptr %i.m, align 8, !tbaa !48
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm25hermesBuiltinCopyRestArgsEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 9472
  %.sroa.0.0.copyload.i = load ptr, ptr %i.g, align 8, !tbaa !51
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 9432
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !155
  %i.j = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i, i64 -8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !18
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  %i.m = icmp eq ptr %i.i, %i.l
  br i1 %i.m, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !7
  %.not48 = icmp eq i32 %i.o, 0
  br i1 %.not48, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit:         ; preds = %bb.b
  %i.p = load ptr, ptr %2, align 8, !tbaa !12, !noalias !384
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8
  %.sroa.0.0.copyload.i27 = load i64, ptr %i.q, align 8 ; 2 uses
  %i.r = icmp ult i64 %.sroa.0.0.copyload.i27, -1970324836974592
  %i.s = bitcast i64 %.sroa.0.0.copyload.i27 to double ; 3 uses
  br i1 %i.r, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit30, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread

_ZNK6hermes2vm10NativeArgs6getArgEj.exit30:       ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.t = fptoui double %i.s to i64                ; 2 uses
  %i.u = shl i64 %i.t, 1
  %i.v = ashr exact i64 %i.u, 1
  %i.w = sitofp i64 %i.v to double
  %i.x = fcmp une double %i.s, %i.w
  %i.y = trunc i64 %i.t to i32
  br i1 %i.x, label %bb.c, label %_ZN6hermes16truncateToUInt32Ed.exit

bb.c:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit30
  %i.z = tail call noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef %i.s) #10
  br label %_ZN6hermes16truncateToUInt32Ed.exit

_ZN6hermes16truncateToUInt32Ed.exit:              ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit30, %bb.c
  %.1.i.i = phi i32 [ %i.y, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit30 ], [ %i.z, %bb.c ] ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %i.l, i64 -32
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !18
  %i.ac = trunc i64 %i.ab to i32                  ; 2 uses
  %i.ad = tail call i32 @llvm.usub.sat.i32(i32 %i.ac, i32 %.1.i.i) ; 4 uses
  %i.ae = tail call ptr @_ZN6hermes2vm7JSArray6createERNS0_7RuntimeEjj(ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.ad, i32 noundef %i.ad) #10 ; 4 uses
  %.not50 = icmp eq ptr %i.ae, inttoptr (i64 -1 to ptr)
  br i1 %.not50, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread, label %bb.d, !prof !20

bb.d:                                             ; preds = %_ZN6hermes16truncateToUInt32Ed.exit
  %i.af = tail call noundef i32 @_ZN6hermes2vm9ArrayImpl18setStorageEndIndexENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr %i.ae, ptr noundef nonnull align 8 dereferenceable(9816) %1, i32 noundef %i.ad) #10 ; 0 uses
  %.not51.not = icmp ult i32 %.1.i.i, %i.ac
  br i1 %.not51.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.ag = ptrtoint ptr %1 to i64                  ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1648 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 1656
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 856 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 1632
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit, %bb.d
  %.sroa.0.0.copyload.i32 = load i64, ptr %i.ae, align 8, !tbaa !16
  br label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread

bb.e:                                             ; preds = %.lr.ph, %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit
  %.053 = phi i32 [ %.1.i.i, %.lr.ph ], [ %i.cy, %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit ] ; 2 uses
  %.02452 = phi i32 [ 0, %.lr.ph ], [ %i.cz, %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit ] ; 2 uses
  %i.al = sext i32 %.053 to i64
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr [8 x i8], ptr %i.l, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 -64    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ao) ]
  %.sroa.02.0.copyload = load i64, ptr %i.ao, align 8, !tbaa !16 ; 9 uses
  %i.ap = ashr i64 %.sroa.02.0.copyload, 47
  switch i64 %i.ap, label %bb.m [
    i64 -14, label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
    i64 -12, label %bb.f
    i64 -11, label %bb.g
    i64 -10, label %bb.h
    i64 -9, label %bb.i
    i64 -6, label %bb.j
    i64 -5, label %bb.j
    i64 -4, label %bb.k
    i64 -3, label %bb.k
    i64 -2, label %bb.l
    i64 -1, label %bb.l
  ]

bb.f:                                             ; preds = %bb.e
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.g:                                             ; preds = %bb.e
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.h:                                             ; preds = %bb.e
  %i.aq = trunc i64 %.sroa.02.0.copyload to i1
  %i.ar = select i1 %i.aq, i32 22, i32 6
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.i:                                             ; preds = %bb.e
  %i.as = trunc i64 %.sroa.02.0.copyload to i32
  %i.at = shl i32 %i.as, 3
  %i.au = or disjoint i32 %i.at, 5
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.j:                                             ; preds = %bb.e, %bb.e
  %i.av = sub i64 %.sroa.02.0.copyload, %i.ag
  %i.aw = trunc i64 %i.av to i32
  %i.ax = or i32 %i.aw, 2
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.k:                                             ; preds = %bb.e, %bb.e
  %i.ay = sub i64 %.sroa.02.0.copyload, %i.ag
  %i.az = trunc i64 %i.ay to i32
  %i.ba = or i32 %i.az, 1
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.l:                                             ; preds = %bb.e, %bb.e
  %i.bb = sub i64 %.sroa.02.0.copyload, %i.ag
  %i.bc = trunc i64 %i.bb to i32
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.m:                                             ; preds = %bb.e
  %i.bd = bitcast i64 %.sroa.02.0.copyload to double
  %i.be = fptosi double %i.bd to i32
  %i.bf = shl i32 %i.be, 3                        ; 2 uses
  %i.bg = ashr exact i32 %i.bf, 3
  %i.bh = sitofp i32 %i.bg to double
  %i.bi = bitcast double %i.bh to i64
  %i.bj = icmp eq i64 %.sroa.02.0.copyload, %i.bi
  br i1 %i.bj, label %bb.n, label %bb.o, !prof !31

bb.n:                                             ; preds = %bb.m
  %i.bk = or disjoint i32 %i.bf, 4
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

bb.o:                                             ; preds = %bb.m
  %i.bl = load ptr, ptr %i.ah, align 8, !tbaa !387 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.bn = load ptr, ptr %i.ai, align 8, !tbaa !388
  %.not.i.not.i.i.i.i.i.i.i.i = icmp ugt ptr %i.bm, %i.bn
  br i1 %.not.i.not.i.i.i.i.i.i.i.i, label %bb.p, label %bb.q, !prof !20

bb.p:                                             ; preds = %bb.o
  %i.bo = tail call noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112) %i.aj, i32 noundef 16) #10
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

bb.q:                                             ; preds = %bb.o
  store ptr %i.bm, ptr %i.ah, align 8, !tbaa !387
  br label %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i

_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i: ; preds = %bb.q, %bb.p
  %i.bp = phi ptr [ %i.bo, %bb.p ], [ %i.bl, %bb.q ] ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i64 %.sroa.02.0.copyload, ptr %i.bq, align 8, !tbaa !113
  store i32 402653200, ptr %i.bp, align 8, !tbaa !26
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.br, %i.ag
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = or i32 %i.bt, 3
  br label %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit

_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.n, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i
  %.sroa.04.0.i = phi i32 [ 7, %bb.e ], [ %i.bc, %bb.l ], [ 14, %bb.f ], [ 15, %bb.g ], [ %i.ar, %bb.h ], [ %i.au, %bb.i ], [ %i.ax, %bb.j ], [ %i.ba, %bb.k ], [ %i.bk, %bb.n ], [ %i.bu, %_ZN6hermes2vm11BoxedDouble6createEdRNS0_7RuntimeE.exit.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ae, align 8, !tbaa !16
  %i.bv = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.bw = inttoptr i64 %i.bv to ptr               ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 28
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.bx, align 4, !tbaa !3 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i, 0
  %i.by = zext i32 %.sroa.0.0.copyload.i.i.i.i to i64
  %i.bz = add i64 %i.by, %i.ag
  %i.ca = inttoptr i64 %i.bz to ptr               ; 2 uses
  %i.cb = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 20
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !111
  %i.ce = sub i32 %.02452, %i.cd                  ; 4 uses
  %i.cf = icmp ult i32 %i.ce, 4096
  br i1 %i.cf, label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i, label %bb.r, !prof !31

bb.r:                                             ; preds = %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %i.cg = add i32 %i.ce, -4096
  %i.ch = lshr i32 %i.cg, 10
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 16392
  %i.cj = zext nneg i32 %i.ch to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !112
  %i.cm = zext i32 %i.cl to i64
  %i.cn = add i64 %i.cm, %i.ag
  %i.co = inttoptr i64 %i.cn to ptr
  %i.cp = and i32 %i.ce, 1023
  br label %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i

_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i: ; preds = %bb.r, %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit
  %.sink6.i.i.i.i = phi ptr [ %i.co, %bb.r ], [ %i.cb, %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit ]
  %.sink5.i.i.i.i = phi i32 [ %i.cp, %bb.r ], [ %i.ce, %_ZN6hermes2vm13HermesValue3217encodeHermesValueENS0_11HermesValueERNS0_7RuntimeE.exit ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.sink6.i.i.i.i, i64 8
  %i.cr = zext nneg i32 %.sink5.i.i.i.i to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cr ; 3 uses
  %i.ct = load ptr, ptr %i.ak, align 8, !tbaa !389
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = and i64 %i.cu, -4194304
  %i.cw = inttoptr i64 %i.cv to ptr
  %i.cx = icmp eq ptr %i.ct, %i.cw
  br i1 %i.cx, label %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit, label %bb.s, !prof !31

bb.s:                                             ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i
  tail call void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112) %i.aj, ptr noundef nonnull align 4 dereferenceable(4) %i.cs, i32 %.sroa.04.0.i) #10
  br label %_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit

_ZN6hermes2vm9ArrayImpl26unsafeSetExistingElementAtEPS1_RNS0_7RuntimeEjNS0_13HermesValue32E.exit: ; preds = %_ZN6hermes2vm18SegmentedArrayBaseINS0_13HermesValue32EE5atRefILNS3_6InlineE0EEERNS0_17GCHermesValueBaseIS2_EERNS0_11PointerBaseEj.exit.i.i, %bb.s
  store i32 %.sroa.04.0.i, ptr %i.cs, align 4, !tbaa !112
  %i.cy = add i32 %.053, 1
  %i.cz = add nuw i32 %.02452, 1                  ; 2 uses
  %.not = icmp eq i32 %i.cz, %i.ad
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !390

_ZNK6hermes2vm10NativeArgs6getArgEj.exit.thread:  ; preds = %bb.b, %._crit_edge, %_ZN6hermes16truncateToUInt32Ed.exit, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %bb.a
  %.sroa.046.1 = phi i32 [ 1, %bb.a ], [ 1, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit ], [ 0, %_ZN6hermes16truncateToUInt32Ed.exit ], [ 1, %._crit_edge ], [ 1, %bb.b ]
  %.sroa.5.1 = phi i64 [ -1688849860263936, %bb.a ], [ -1688849860263936, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit ], [ undef, %_ZN6hermes16truncateToUInt32Ed.exit ], [ %.sroa.0.0.copyload.i32, %._crit_edge ], [ -1688849860263936, %bb.b ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.db = zext i32 %i.f to i64
  %i.dc = load ptr, ptr %i.da, align 8, !tbaa !45
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.db
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !51
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 128
  store i32 %i.f, ptr %i.e, align 8, !tbaa !50
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !49
  store ptr %i.d, ptr %i.c, align 8, !tbaa !48
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.046.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.5.1, 1
  ret { i32, i64 } %.fca.1.insert
}

declare noundef i32 @_ZN6hermes2vm9ArrayImpl18setStorageEndIndexENS0_6HandleIS1_EERNS0_7RuntimeEj(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm24hermesBuiltinArraySpreadEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %4 = alloca %"struct.hermes::vm::NamedPropertyDescriptor", align 8 ; 8 uses
  %5 = alloca %"class.hermes::vm::CallResult.198", align 8 ; 5 uses
  %6 = alloca %"struct.hermes::vm::IteratorRecord", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !50   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !7    ; 2 uses
  %.not172 = icmp eq i32 %i.h, 0
  br i1 %.not172, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_7JSArrayEEENS0_6HandleIT_EEj.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %2, align 8, !tbaa !12, !noalias !391
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.j, align 8, !tbaa !16 ; 2 uses
  %i.k = icmp ugt i64 %.sroa.0.0.copyload.i, -844424930131969
  br i1 %i.k, label %_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit.i, label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_7JSArrayEEENS0_6HandleIT_EEj.exit

_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit.i: ; preds = %bb.b
  %i.l = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load i32, ptr %i.m, align 4
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.n, -16777216
  %i.o = icmp eq i32 %.mask.i.i.i.i.i.i.i.i, 536870912
  %spec.select.i = select i1 %i.o, ptr %i.j, ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E
  br label %_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_7JSArrayEEENS0_6HandleIT_EEj.exit

_ZNK6hermes2vm10NativeArgs10dyncastArgINS0_7JSArrayEEENS0_6HandleIT_EEj.exit: ; preds = %bb.a, %bb.b, %_ZN6hermes2vm5vmisaINS0_7JSArrayEEEbNS0_11HermesValueE.exit.i
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm25hermesBuiltinExponentiateEPvRNS0_7RuntimeENS0_10NativeArgsE:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.bc, align 8, !tbaa !21
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 10, ptr %i.bd, align 8, !tbaa !24
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 0, ptr %i.be, align 8, !tbaa !25
  store ptr @.str.13, ptr %4, align 8, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.bf, align 8, !tbaa !27
  %i.bg = call noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueERKNS0_11TwineChar16ENS0_6HandleINS0_11HermesValueEEES4_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr nonnull %.sroa.02.0.i18, ptr noundef nonnull align 8 dereferenceable(48) %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr %i.ac, align 8, !tbaa !34 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 192 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !48 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 200
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !49
  %i.bm = icmp ult ptr %i.bj, %i.bl
  br i1 %i.bm, label %bb.m, label %bb.n, !prof !31

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !48
  store i64 %i.ar, ptr %i.bj, align 8, !tbaa !16
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit22

bb.n:                                             ; preds = %bb.l
  %i.bo = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.bh, i64 %i.ar) #10
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit22

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit22: ; preds = %bb.m, %bb.n
  %.0.i.i.i.i.i.i21 = phi ptr [ %i.bj, %bb.m ], [ %i.bo, %bb.n ]
  %i.bp = tail call { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive12exponentiateERNS0_7RuntimeENS0_6HandleIS1_EES5_(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr %.0.i.i.i.i.i.i, ptr %.0.i.i.i.i.i.i21) #10 ; 2 uses
  %i.bq = extractvalue { i32, i64 } %i.bp, 0
  %i.br = extractvalue { i32, i64 } %i.bp, 1
  br label %bb.o

bb.o:                                             ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit, %_ZN6hermes2vm5expOpEdd.exit, %bb.c, %bb.a, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit22
  %.sroa.033.1 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %i.bq, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit22 ], [ %i.bg, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %_ZN6hermes2vm5expOpEdd.exit ], [ 0, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit ]
  %.sroa.7.1 = phi i64 [ undef, %bb.a ], [ undef, %bb.c ], [ %i.br, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit22 ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.0.0.i, %_ZN6hermes2vm5expOpEdd.exit ], [ undef, %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15BigIntPrimitiveEEENS0_6HandleIT_EEPS5_.exit ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.033.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.7.1, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { i32, i64 } @_ZN6hermes2vm13toNumeric_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime22raiseTypeErrorForValueERKNS0_11TwineChar16ENS0_6HandleINS0_11HermesValueEEES4_(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48), ptr, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm15BigIntPrimitive12exponentiateERNS0_7RuntimeENS0_6HandleIS1_EES5_(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm33hermesBuiltinInitRegexNamedGroupsEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
_ZNK6hermes2vm10NativeArgs6getArgEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %.not = icmp ne i32 %i.b, 0
  tail call void @llvm.assume(i1 %.not)
  %i.c = load ptr, ptr %2, align 8, !tbaa !12, !noalias !431
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !16
  %i.e = icmp ugt i32 %i.b, 1
  br i1 %i.e, label %_ZNK6hermes2vm10NativeArgs6getArgEj.exit7, label %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit

_ZNK6hermes2vm10NativeArgs6getArgEj.exit7:        ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit
  %i.f = load ptr, ptr %2, align 8, !tbaa !12, !noalias !434
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -16
  %.sroa.0.0.copyload.i6 = load i64, ptr %i.g, align 8, !tbaa !16 ; 2 uses
  %i.h = icmp ugt i64 %.sroa.0.0.copyload.i6, -844424930131969
  br i1 %i.h, label %bb.a, label %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit

bb.a:                                             ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit7
  %i.i = and i64 %.sroa.0.0.copyload.i6, 281474976710655
  %i.j = inttoptr i64 %i.i to ptr                 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add i32 %i.k, -436207616
  %i.m = icmp ult i32 %i.l, 855638016
  %spec.select.i.i.i8 = select i1 %i.m, ptr %i.j, ptr null
  br label %_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit

_ZN6hermes2vm10dyn_vmcastINS0_8JSObjectEEEPT_NS0_11HermesValueE.exit: ; preds = %_ZNK6hermes2vm10NativeArgs6getArgEj.exit, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit7, %bb.a
  %i.n = phi ptr [ %spec.select.i.i.i8, %bb.a ], [ null, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit7 ], [ null, %_ZNK6hermes2vm10NativeArgs6getArgEj.exit ]
  %i.o = and i64 %.sroa.0.0.copyload.i, 281474976710655
  %i.p = inttoptr i64 %i.o to ptr
  tail call void @_ZN6hermes2vm8JSRegExp20setGroupNameMappingsERNS0_7RuntimeEPNS0_8JSObjectE(ptr noundef nonnull align 8 dereferenceable(48) %i.p, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef %i.n) #10
  ret { i32, i64 } { i32 1, i64 -1688849860263936 }
}

declare void @_ZN6hermes2vm8JSRegExp20setGroupNameMappingsERNS0_7RuntimeEPNS0_8JSObjectE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden { i32, i64 } @_ZN6hermes2vm46hermesBuiltinGetOriginalNativeErrorConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr nofree readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nofree noundef readonly captures(none) dead_on_return %2) #0 {
bb.a:
  %3 = alloca %"class.hermes::vm::TwineChar16", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %.not = icmp eq i32 %i.b, 0
  %i.c = load ptr, ptr %2, align 8
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %.sroa.02.0.i = select i1 %.not, ptr @_ZN6hermes2vm15HandleRootOwner15undefinedValue_E, ptr %i.d
  %i.e = tail call { i32, i64 } @_ZN6hermes2vm11toInt32_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr nonnull %.sroa.02.0.i) #10 ; 2 uses
  %i.f = extractvalue { i32, i64 } %i.e, 0
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.l, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { i32, i64 } %i.e, 1
  %i.i = bitcast i64 %i.h to double
  %i.j = fptoui double %i.i to i32
  %i.k = trunc i32 %i.j to i8
  switch i8 %i.k, label %_ZN6hermes2vm11TwineChar16C2EPKc.exit [
    i8 0, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
  ]

_ZN6hermes2vm11TwineChar16C2EPKc.exit:            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.l, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 60, ptr %i.m, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.n, align 8, !tbaa !25
  store ptr @.str.14, ptr %3, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.o, align 8, !tbaa !27
  %i.p = call noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816) %1, ptr noundef nonnull align 8 dereferenceable(48) %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.08.0.copyload = load i64, ptr %i.q, align 8, !tbaa !16
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.07.0.copyload = load i64, ptr %i.r, align 8, !tbaa !16
  br label %bb.l

bb.e:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.06.0.copyload = load i64, ptr %i.s, align 8, !tbaa !16
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.05.0.copyload = load i64, ptr %i.t, align 8, !tbaa !16
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.04.0.copyload = load i64, ptr %i.u, align 8, !tbaa !16
  br label %bb.l

bb.h:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.sroa.03.0.copyload = load i64, ptr %i.v, align 8, !tbaa !16
  br label %bb.l

bb.i:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.sroa.02.0.copyload = load i64, ptr %i.w, align 8, !tbaa !16
  br label %bb.l

bb.j:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.sroa.01.0.copyload = load i64, ptr %i.x, align 8, !tbaa !16
  br label %bb.l

bb.k:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 200
  %.sroa.0.0.copyload = load i64, ptr %i.y, align 8, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_ZN6hermes2vm11TwineChar16C2EPKc.exit, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.sroa.021.0 = phi i32 [ 1, %bb.k ], [ %i.p, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 0, %bb.a ]
  %.sroa.12.0 = phi i64 [ %.sroa.0.0.copyload, %bb.k ], [ undef, %_ZN6hermes2vm11TwineChar16C2EPKc.exit ], [ %.sroa.08.0.copyload, %bb.c ], [ %.sroa.07.0.copyload, %bb.d ], [ %.sroa.06.0.copyload, %bb.e ], [ %.sroa.05.0.copyload, %bb.f ], [ %.sroa.04.0.copyload, %bb.g ], [ %.sroa.03.0.copyload, %bb.h ], [ %.sroa.02.0.copyload, %bb.i ], [ %.sroa.01.0.copyload, %bb.j ], [ undef, %bb.a ]
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.021.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.12.0, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { i32, i64 } @_ZN6hermes2vm11toInt32_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes2vm20createHermesBuiltinsERNS0_7RuntimeEN4llvh15MutableArrayRefIPNS0_8CallableEEE(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nofree writeonly captures(none) %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 15 uses
  %i.b = tail call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm26silentObjectSetPrototypeOfEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 442, i32 noundef 2, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 0) #10
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.b, align 8, !tbaa !16
  %i.c = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.d = inttoptr i64 %i.c to ptr
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 296
  store ptr %i.d, ptr %i.e, align 8, !tbaa !437
  %i.f = tail call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm30hermesBuiltinGetTemplateObjectEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 448, i32 noundef 0, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 0) #10
  %.sroa.0.0.copyload.i.i.i.i30 = load i64, ptr %i.f, align 8, !tbaa !16
  %i.g = and i64 %.sroa.0.0.copyload.i.i.i.i30, 281474976710655
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 312
  store ptr %i.h, ptr %i.i, align 8, !tbaa !437
  %i.j = tail call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm25hermesBuiltinEnsureObjectEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 449, i32 noundef 2, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 0) #10
  %.sroa.0.0.copyload.i.i.i.i31 = load i64, ptr %i.j, align 8, !tbaa !16
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i.i31, 281474976710655
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 320
  store ptr %i.l, ptr %i.m, align 8, !tbaa !437
  %i.n = tail call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm22hermesBuiltinGetMethodEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 450, i32 noundef 2, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 0) #10
  %.sroa.0.0.copyload.i.i.i.i32 = load i64, ptr %i.n, align 8, !tbaa !16
  %i.o = and i64 %.sroa.0.0.copyload.i.i.i.i32, 281474976710655
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 328
  store ptr %i.p, ptr %i.q, align 8, !tbaa !437
  %i.r = tail call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm27hermesBuiltinThrowTypeErrorEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 451, i32 noundef 1, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 0) #10
  %.sroa.0.0.copyload.i.i.i.i33 = load i64, ptr %i.r, align 8, !tbaa !16
  %i.s = and i64 %.sroa.0.0.copyload.i.i.i.i33, 281474976710655
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 336
  store ptr %i.t, ptr %i.u, align 8, !tbaa !437
  %i.v = tail call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm34hermesBuiltinGeneratorSetDelegatedEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 452, i32 noundef 1, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 0) #10
  %.sroa.0.0.copyload.i.i.i.i34 = load i64, ptr %i.v, align 8, !tbaa !16
  %i.w = and i64 %.sroa.0.0.copyload.i.i.i.i34, 281474976710655
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 344
  store ptr %i.x, ptr %i.y, align 8, !tbaa !437
  %i.z = tail call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm31hermesBuiltinCopyDataPropertiesEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 453, i32 noundef 3, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 0) #10
  %.sroa.0.0.copyload.i.i.i.i35 = load i64, ptr %i.z, align 8, !tbaa !16
  %i.aa = and i64 %.sroa.0.0.copyload.i.i.i.i35, 281474976710655
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 352
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !437
  %i.ad = tail call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm25hermesBuiltinCopyRestArgsEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 454, i32 noundef 1, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 0) #10
  %.sroa.0.0.copyload.i.i.i.i36 = load i64, ptr %i.ad, align 8, !tbaa !16
  %i.ae = and i64 %.sroa.0.0.copyload.i.i.i.i36, 281474976710655
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 360
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !437
  %i.ah = tail call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm24hermesBuiltinArraySpreadEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 455, i32 noundef 2, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 0) #10
  %.sroa.0.0.copyload.i.i.i.i37 = load i64, ptr %i.ah, align 8, !tbaa !16
  %i.ai = and i64 %.sroa.0.0.copyload.i.i.i.i37, 281474976710655
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 368
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !437
  %i.al = tail call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm18hermesBuiltinApplyEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 136, i32 noundef 2, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 0) #10
  %.sroa.0.0.copyload.i.i.i.i38 = load i64, ptr %i.al, align 8, !tbaa !16
  %i.am = and i64 %.sroa.0.0.copyload.i.i.i.i38, 281474976710655
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 376
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !437
  %i.ap = tail call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm22hermesBuiltinExportAllEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 456, i32 noundef 0, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 0) #10
  %.sroa.0.0.copyload.i.i.i.i39 = load i64, ptr %i.ap, align 8, !tbaa !16
  %i.aq = and i64 %.sroa.0.0.copyload.i.i.i.i39, 281474976710655
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 384
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !437
  %i.at = tail call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm25hermesBuiltinExponentiateEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 457, i32 noundef 0, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 0) #10
  %.sroa.0.0.copyload.i.i.i.i40 = load i64, ptr %i.at, align 8, !tbaa !16
  %i.au = and i64 %.sroa.0.0.copyload.i.i.i.i40, 281474976710655
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 392
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !437
  %i.ax = tail call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm33hermesBuiltinInitRegexNamedGroupsEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 458, i32 noundef 0, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 0) #10
  %.sroa.0.0.copyload.i.i.i.i41 = load i64, ptr %i.ax, align 8, !tbaa !16
  %i.ay = and i64 %.sroa.0.0.copyload.i.i.i.i41, 281474976710655
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 400
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !437
  %i.bb = tail call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm46hermesBuiltinGetOriginalNativeErrorConstructorEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 460, i32 noundef 0, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 0) #10
  %.sroa.0.0.copyload.i.i.i.i42 = load i64, ptr %i.bb, align 8, !tbaa !16
  %i.bc = and i64 %.sroa.0.0.copyload.i.i.i.i42, 281474976710655
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 408
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !437
  %i.bf = tail call ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nonnull %i.a, ptr noundef null, ptr noundef nonnull @_ZN6hermes2vm11requireFastEPvRNS0_7RuntimeENS0_10NativeArgsE, i32 471, i32 noundef 1, i64 ptrtoint (ptr @_ZN6hermes2vm15HandleRootOwner12nullPointer_E to i64), i32 noundef 0) #10
  %.sroa.0.0.copyload.i.i.i.i43 = load i64, ptr %i.bf, align 8, !tbaa !16
  %i.bg = and i64 %.sroa.0.0.copyload.i.i.i.i43, 281474976710655
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 304
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !437
  ret void
}

declare { i32, i64 } @_ZN6hermes2vm11requireFastEPvRNS0_7RuntimeENS0_10NativeArgsE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef dead_on_return) #2

declare i32 @_ZN6hermes2vm8JSObject25defineOwnPropertyInternalENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_19DefinePropertyFlagsENS2_INS0_11HermesValueEEENS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i32, ptr, i32) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E16FindAndConstructERKj(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !57     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !60   ; 7 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 4, !tbaa !3      ; 3 uses
  %i.g = mul i32 %i.f, 37
  %i.h = add i32 %i.d, -1                         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  %.02744.i.i = and i32 %i.g, %i.h                ; 2 uses
  %i.i = zext i32 %.02744.i.i to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.i ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3    ; 2 uses
  %i.l = icmp eq i32 %i.f, %i.k
  br i1 %i.l, label %.loopexit, label %.lr.ph.i.i, !prof !61

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.d
  %i.m = phi i32 [ %i.w, %bb.d ], [ %i.k, %bb.b ] ; 2 uses
  %i.n = phi ptr [ %i.v, %bb.d ], [ %i.j, %bb.b ] ; 2 uses
  %.02747.i.i = phi i32 [ %.027.i.i, %bb.d ], [ %.02744.i.i, %bb.b ]
  %.02546.i.i = phi i32 [ %i.s, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02945.i.i = phi ptr [ %spec.select.i.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.o = icmp eq i32 %i.m, -1
  br i1 %i.o, label %bb.c, label %bb.d, !prof !31

bb.c:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq ptr %.02945.i.i, null
  %i.p = select i1 %.not.i.i, ptr %i.n, ptr %.02945.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPSA_.exit

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.q = icmp eq i32 %i.m, -2
  %i.r = icmp eq ptr %.02945.i.i, null
  %or.cond.not.i.i = select i1 %i.q, i1 %i.r, i1 false
  %spec.select.i.i = select i1 %or.cond.not.i.i, ptr %i.n, ptr %.02945.i.i
  %i.s = add i32 %.02546.i.i, 1
  %i.t = add i32 %.02546.i.i, %.02747.i.i
  %.027.i.i = and i32 %i.t, %i.h                  ; 2 uses
  %i.u = zext i32 %.027.i.i to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.u ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3    ; 2 uses
  %i.x = icmp eq i32 %i.f, %i.w
  br i1 %i.x, label %.loopexit, label %.lr.ph.i.i, !prof !62, !llvm.loop !63

_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPSA_.exit: ; preds = %bb.c, %bb.a
  %.sink.i.i = phi ptr [ %i.p, %bb.c ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sink.i.i, ptr %i.a, align 8, !tbaa !439
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !440  ; 3 uses
  %i.aa = shl i32 %i.z, 2
  %i.ab = add i32 %i.aa, 4
  %i.ac = mul i32 %i.d, 3
  %.not.i.i4 = icmp ult i32 %i.ab, %i.ac
  br i1 %.not.i.i4, label %bb.f, label %bb.e, !prof !31

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPSA_.exit
  %i.ad = shl i32 %i.d, 1
  br label %.sink.split.i.i

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPSA_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !441
  %.neg.i.i = xor i32 %i.z, -1
  %.neg11.i.i = add i32 %i.d, %.neg.i.i
  %i.ag = sub i32 %.neg11.i.i, %i.af
  %i.ah = lshr i32 %i.d, 3
  %.not9.i.i = icmp ugt i32 %i.ag, %i.ah
  br i1 %.not9.i.i, label %bb.g, label %.sink.split.i.i, !prof !31

.sink.split.i.i:                                  ; preds = %bb.f, %bb.e
  %.sink.i.i5 = phi i32 [ %i.ad, %bb.e ], [ %i.d, %bb.f ]
  tail call void @_ZN4llvh8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %.sink.i.i5)
  %i.ai = call noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %i.y, align 8, !tbaa !440
  %.pre8.i = load ptr, ptr %i.a, align 8, !tbaa !439
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i.i, %bb.f
  %i.aj = phi ptr [ %.pre8.i, %.sink.split.i.i ], [ %.sink.i.i, %bb.f ] ; 4 uses
  %i.ak = phi i32 [ %.pre.i, %.sink.split.i.i ], [ %i.z, %bb.f ]
  %i.al = add i32 %i.ak, 1
  store i32 %i.al, ptr %i.y, align 8, !tbaa !440
  %i.am = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E16InsertIntoBucketIRKjJEEEPSA_SG_OT_DpOT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !441
  %i.aq = add i32 %i.ap, -1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !441
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E16InsertIntoBucketIRKjJEEEPSA_SG_OT_DpOT0_.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E16InsertIntoBucketIRKjJEEEPSA_SG_OT_DpOT0_.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ar = load i32, ptr %1, align 4, !tbaa !3
  store i32 %i.ar, ptr %i.aj, align 4, !tbaa !3
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr null, ptr %i.as, align 8, !tbaa !65
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E16InsertIntoBucketIRKjJEEEPSA_SG_OT_DpOT0_.exit
  %.0 = phi ptr [ %i.aj, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E16InsertIntoBucketIRKjJEEEPSA_SG_OT_DpOT0_.exit ], [ %i.j, %bb.b ], [ %i.v, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !57     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !60   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPKSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !3      ; 3 uses
  %i.f = mul i32 %i.e, 37
  %i.g = add i32 %i.c, -1                         ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.a) ]
  %.02744.i = and i32 %i.f, %i.g                  ; 2 uses
  %i.h = zext i32 %.02744.i to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.h ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3    ; 2 uses
  %i.k = icmp eq i32 %i.e, %i.j
  br i1 %i.k, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPKSA_.exit, label %.lr.ph.i, !prof !61

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.l = phi i32 [ %i.v, %bb.d ], [ %i.j, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %i.u, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %.02747.i = phi i32 [ %.027.i, %bb.d ], [ %.02744.i, %bb.b ]
  %.02546.i = phi i32 [ %i.r, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02945.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.n = icmp eq i32 %i.l, -1
  br i1 %i.n, label %bb.c, label %bb.d, !prof !31

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.02945.i, null
  %i.o = select i1 %.not.i, ptr %i.m, ptr %.02945.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPKSA_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.p = icmp eq i32 %i.l, -2
  %i.q = icmp eq ptr %.02945.i, null
  %or.cond.not.i = select i1 %i.p, i1 %i.q, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.m, ptr %.02945.i
  %i.r = add i32 %.02546.i, 1
  %i.s = add i32 %.02546.i, %.02747.i
  %.027.i = and i32 %i.s, %i.g                    ; 2 uses
  %i.t = zext i32 %.027.i to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3    ; 2 uses
  %i.w = icmp eq i32 %i.e, %i.v
  br i1 %i.w, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPKSA_.exit, label %.lr.ph.i, !prof !62, !llvm.loop !63

_ZNK4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPKSA_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.o, %bb.c ], [ null, %bb.a ], [ %i.i, %bb.b ], [ %i.u, %bb.d ]
  %.2.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !439
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZN4llvh8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !57     ; 4 uses
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 4
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 16
  %i.o = or i64 %i.n, %i.m
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = add i32 %i.p, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.q, i32 64) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.a, align 8, !tbaa !60
  %i.r = zext i32 %.sroa.speculated to i64
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #11 ; 9 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !57
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !440
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !441
  %i.w = load i32, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 4               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i
  %.not5.i = icmp eq i32 %i.w, 0
  br i1 %.not5.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E9initEmptyEv.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.z = add nsw i64 %.idx.i, -16                 ; 2 uses
  %i.aa = lshr exact i64 %i.z, 4
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter31 = and i64 %i.ab, 7                  ; 2 uses
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.06.i.prol = phi ptr [ %i.ac, %.lr.ph.i.prol ], [ %i.t, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter33 = phi i64 [ %prol.iter33.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store i32 -1, ptr %.06.i.prol, align 4, !tbaa !3
  %i.ac = getelementptr inbounds nuw i8, ptr %.06.i.prol, i64 16 ; 2 uses
  %prol.iter33.next = add i64 %prol.iter33, 1     ; 2 uses
  %prol.iter33.cmp.not = icmp eq i64 %prol.iter33.next, %xtraiter31
  br i1 %prol.iter33.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !442

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.06.i.unr = phi ptr [ %i.t, %.lr.ph.i.preheader ], [ %i.ac, %.lr.ph.i.prol ]
  %i.ad = icmp ult i64 %i.z, 112
  br i1 %i.ad, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E9initEmptyEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.06.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.06.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  store i32 -1, ptr %.06.i, align 4, !tbaa !3
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i, i64 16
  store i32 -1, ptr %i.ae, align 4, !tbaa !3
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i, i64 32
  store i32 -1, ptr %i.af, align 4, !tbaa !3
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i, i64 48
  store i32 -1, ptr %i.ag, align 4, !tbaa !3
  %i.ah = getelementptr inbounds nuw i8, ptr %.06.i, i64 64
  store i32 -1, ptr %i.ah, align 4, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %.06.i, i64 80
  store i32 -1, ptr %i.ai, align 4, !tbaa !3
  %i.aj = getelementptr inbounds nuw i8, ptr %.06.i, i64 96
  store i32 -1, ptr %i.aj, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %.06.i, i64 112
  store i32 -1, ptr %i.ak, align 4, !tbaa !3
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i, i64 128 ; 2 uses
  %.not.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E9initEmptyEv.exit, label %.lr.ph.i, !llvm.loop !444

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEE15allocateBucketsEj.exit
  %i.am = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.am, 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.ao, align 8, !tbaa !440
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !441
  %i.aq = load i32, ptr %i.a, align 8, !tbaa !60  ; 4 uses
  %i.ar = zext i32 %i.aq to i64
  %.idx.i.i = shl nuw nsw i64 %i.ar, 4            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not5.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not5.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E9initEmptyEv.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.at = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.au = lshr exact i64 %i.at, 4
  %i.av = add nuw nsw i64 %i.au, 1
  %xtraiter = and i64 %i.av, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.06.i.i.prol = phi ptr [ %i.aw, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store i32 -1, ptr %.06.i.i.prol, align 4, !tbaa !3
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !445

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.06.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.aw, %.lr.ph.i.i.prol ]
  %i.ax = icmp ult i64 %i.at, 112
  br i1 %i.ax, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store i32 -1, ptr %.06.i.i, align 4, !tbaa !3
  %i.ay = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 16
  store i32 -1, ptr %i.ay, align 4, !tbaa !3
  %i.az = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 32
  store i32 -1, ptr %i.az, align 4, !tbaa !3
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 48
  store i32 -1, ptr %i.ba, align 4, !tbaa !3
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 64
  store i32 -1, ptr %i.bb, align 4, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 80
  store i32 -1, ptr %i.bc, align 4, !tbaa !3
  %i.bd = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 96
  store i32 -1, ptr %i.bd, align 4, !tbaa !3
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 112
  store i32 -1, ptr %i.be, align 4, !tbaa !3
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 128 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.bf, %i.as
  br i1 %.not.i.i.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !444

_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E9initEmptyEv.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b
  %.not18.i = icmp eq i32 %i.b, 0
  br i1 %.not18.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E18moveFromOldBucketsEPSA_SD_.exit, label %.lr.ph.i6.preheader

.lr.ph.i6.preheader:                              ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E9initEmptyEv.exit.i
  %i.bg = icmp ne i32 %i.aq, 0
  %i.bh = add i32 %i.aq, -1                       ; 2 uses
  br label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %.lr.ph.i6.preheader, %bb.f
  %i.bi = phi i32 [ %i.cf, %bb.f ], [ 0, %.lr.ph.i6.preheader ] ; 2 uses
  %.019.i = phi ptr [ %i.cg, %bb.f ], [ %i.c, %.lr.ph.i6.preheader ] ; 3 uses
  %i.bj = load i32, ptr %.019.i, align 4, !tbaa !3 ; 5 uses
  %switch.i = icmp ugt i32 %i.bj, -3
  br i1 %switch.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i6
  tail call void @llvm.assume(i1 %i.bg)
  %i.bk = mul i32 %i.bj, 37
  %.02744.i.i.i = and i32 %i.bk, %i.bh            ; 2 uses
  %i.bl = zext i32 %.02744.i.i.i to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.bl ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3  ; 2 uses
  %i.bo = icmp eq i32 %i.bj, %i.bn
  br i1 %i.bo, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPSA_.exit.i, label %.lr.ph.i.i.i, !prof !61

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %i.bp = phi i32 [ %i.bz, %bb.e ], [ %i.bn, %bb.c ] ; 2 uses
  %i.bq = phi ptr [ %i.by, %bb.e ], [ %i.bm, %bb.c ] ; 2 uses
  %.02747.i.i.i = phi i32 [ %.027.i.i.i, %bb.e ], [ %.02744.i.i.i, %bb.c ]
  %.02546.i.i.i = phi i32 [ %i.bv, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.02945.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.e ], [ null, %bb.c ] ; 4 uses
  %i.br = icmp eq i32 %i.bp, -1
  br i1 %i.br, label %bb.d, label %bb.e, !prof !31

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.02945.i.i.i, null
  %i.bs = select i1 %.not.i.i.i, ptr %i.bq, ptr %.02945.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPSA_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.bt = icmp eq i32 %i.bp, -2
  %i.bu = icmp eq ptr %.02945.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.bt, i1 %i.bu, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.bq, ptr %.02945.i.i.i
  %i.bv = add i32 %.02546.i.i.i, 1
  %i.bw = add i32 %.02546.i.i.i, %.02747.i.i.i
  %.027.i.i.i = and i32 %i.bw, %i.bh              ; 2 uses
  %i.bx = zext i32 %.027.i.i.i to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.bx ; 3 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3  ; 2 uses
  %i.ca = icmp eq i32 %i.bj, %i.bz
  br i1 %i.ca, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPSA_.exit.i, label %.lr.ph.i.i.i, !prof !62, !llvm.loop !63

_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPSA_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i.i.i = phi ptr [ %i.bs, %bb.d ], [ %i.bm, %bb.c ], [ %i.by, %bb.e ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sink.i.i.i) ]
  store i32 %i.bj, ptr %.sink.i.i.i, align 4, !tbaa !3
  %i.cb = getelementptr inbounds nuw i8, ptr %.sink.i.i.i, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.019.i, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !65
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !65
  %i.ce = add i32 %i.bi, 1                        ; 2 uses
  store i32 %i.ce, ptr %i.ao, align 8, !tbaa !440
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPSA_.exit.i, %.lr.ph.i6
  %i.cf = phi i32 [ %i.ce, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E15LookupBucketForIjEEbRKT_RPSA_.exit.i ], [ %i.bi, %.lr.ph.i6 ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.019.i, i64 16 ; 2 uses
  %.not.i7 = icmp eq ptr %i.cg, %i.an
  br i1 %.not.i7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E18moveFromOldBucketsEPSA_SD_.exit, label %.lr.ph.i6, !llvm.loop !446

_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E18moveFromOldBucketsEPSA_SD_.exit: ; preds = %bb.f, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #10
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E9initEmptyEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS5_EEEEjS5_S7_SA_E18moveFromOldBucketsEPSA_SD_.exit
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm8JSObject18getOwnPropertyKeysENS0_6HandleIS1_EERNS0_7RuntimeENS0_12OwnKeysFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

declare ptr @_ZN6hermes2vm12toString_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8JSObject33getOwnComputedPrimitiveDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEENS1_11IgnoreProxyERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8JSObject24getOwnComputedDescriptorENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEERNS0_13MutableHandleINS0_8SymbolIDEEERNS0_26ComputedPropertyDescriptorE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes23truncateToInt32SlowPathEd(double noundef) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm7HadesGC9allocSlowEj(ptr noundef nonnull align 8 dereferenceable(8112), i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm7HadesGC16writeBarrierSlowEPKNS0_17GCHermesValueBaseINS0_13HermesValue32EEES3_(ptr noundef nonnull align 8 dereferenceable(8112), ptr noundef, i32) local_unnamed_addr #2

declare noundef ptr @_ZN6hermes2vm8JSObject24getNamedDescriptorUnsafeENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS0_13PropertyFlagsERNS0_23NamedPropertyDescriptorE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, i16, ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8JSObject27getComputedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS2_INS0_11HermesValueEEES7_(ptr, ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, ptr) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, ptr, i32) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, i32, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #8

declare ptr @_ZN6hermes2vm14NativeFunction6createERNS0_7RuntimeENS0_6HandleINS0_8JSObjectEEEPvPFNS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEES7_S3_NS0_10NativeArgsEENS0_8SymbolIDEjS6_j(ptr noundef nonnull align 8 dereferenceable(9816), ptr, ptr noundef, ptr noundef, i32, i32 noundef, i64, i32 noundef) local_unnamed_addr #2

declare void @_ZN6hermes2vm11HiddenClass28initializeMissingPropertyMapENS0_6HandleIS1_EERNS0_7RuntimeE(ptr, ptr noundef nonnull align 8 dereferenceable(9816)) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8JSObject17hasNamedOrIndexedENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.uadd.sat.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 8}
!8 = !{!"_ZTSN6hermes2vm10NativeArgsE", !9, i64 0, !4, i64 8, !10, i64 16}
!9 = !{!"_ZTSSt16reverse_iteratorIPKN6hermes2vm17PinnedHermesValueEE", !10, i64 0}
!10 = !{!"p1 _ZTSN6hermes2vm17PinnedHermesValueE", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!9, !10, i64 0}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!15 = distinct !{!15, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!19, !17, i64 0}
!19 = !{!"_ZTSN6hermes2vm11HermesValueE", !17, i64 0}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = !{!22, !23, i64 24}
!22 = !{!"_ZTSN6hermes2vm11TwineChar16E", !5, i64 0, !23, i64 8, !5, i64 16, !23, i64 24, !17, i64 32, !17, i64 40}
!23 = !{!"_ZTSN6hermes2vm11TwineChar168NodeKindE", !5, i64 0}
!24 = !{!22, !17, i64 32}
!25 = !{!22, !17, i64 40}
!26 = !{!5, !5, i64 0}
!27 = !{!22, !23, i64 8}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!30 = distinct !{!30, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!31 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 _ZTSN6hermes2vm15HandleRootOwnerE", !11, i64 0}
!34 = !{!35, !36, i64 8}
!35 = !{!"_ZTSN6hermes2vm15HandleRootOwnerE", !36, i64 8}
!36 = !{!"p1 _ZTSN6hermes2vm7GCScopeE", !11, i64 0}
!37 = !{!38, !36, i64 8}
!38 = !{!"_ZTSN6hermes2vm7GCScopeE", !33, i64 0, !36, i64 8, !5, i64 16, !39, i64 144, !10, i64 192, !10, i64 200, !4, i64 208}
!39 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes2vm17PinnedHermesValueELj4EEE", !40, i64 0, !44, i64 16}
!40 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes2vm17PinnedHermesValueEEE", !41, i64 0}
!41 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes2vm17PinnedHermesValueELb1EEE", !42, i64 0}
!42 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes2vm17PinnedHermesValueEvEE", !43, i64 0}
!43 = !{!"_ZTSN4llvh15SmallVectorBaseE", !11, i64 0, !4, i64 8, !4, i64 12}
!44 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes2vm17PinnedHermesValueELj4EEE", !5, i64 0}
!45 = !{!43, !11, i64 0}
!46 = !{!43, !4, i64 12}
!47 = !{!43, !4, i64 8}
!48 = !{!38, !10, i64 192}
!49 = !{!38, !10, i64 200}
!50 = !{!38, !4, i64 208}
!51 = !{!10, !10, i64 0}
!52 = !{!53, !54, i64 0}
!53 = !{!"_ZTSN6hermes2vm9CodeBlockE", !54, i64 0, !55, i64 8, !56, i64 16, !4, i64 24, !4, i64 28, !4, i64 32}
!54 = !{!"p1 _ZTSN6hermes2vm13RuntimeModuleE", !11, i64 0}
!55 = !{!"_ZTSN6hermes3hbc21RuntimeFunctionHeaderE", !56, i64 0}
!56 = !{!"p1 omnipotent char", !11, i64 0}
!57 = !{!58, !59, i64 0}
!58 = !{!"_ZTSN4llvh8DenseMapIjPN6hermes2vm8JSObjectENS_12DenseMapInfoIjEENS_6detail12DenseMapPairIjS4_EEEE", !59, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!59 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIjPN6hermes2vm8JSObjectEEE", !11, i64 0}
!60 = !{!58, !4, i64 16}
!61 = !{!"branch_weights", i32 1999, i32 1}
!62 = !{!"branch_weights", i32 1, i32 0}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!66, !66, i64 0}
!66 = !{!"p1 _ZTSN6hermes2vm8JSObjectE", !11, i64 0}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!69 = distinct !{!69, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!72 = distinct !{!72, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!75 = distinct !{!75, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!76 = distinct !{!76, !64}
!77 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!78 = !{!79, !99, i64 60}
!79 = !{!"_ZTSN6hermes2vm22GeneratorInnerFunctionE", !80, i64 0, !94, i64 36, !4, i64 40, !95, i64 44, !96, i64 48, !4, i64 52, !98, i64 56, !99, i64 60}
!80 = !{!"_ZTSN6hermes2vm10JSFunctionE", !81, i64 0, !92, i64 24, !93, i64 32}
!81 = !{!"_ZTSN6hermes2vm8CallableE", !82, i64 0, !91, i64 20}
!82 = !{!"_ZTSN6hermes2vm8JSObjectE", !83, i64 0, !84, i64 4, !85, i64 8, !89, i64 12, !90, i64 16}
!83 = !{!"_ZTSN6hermes2vm6GCCellE", !5, i64 0}
!84 = !{!"_ZTSN6hermes2vm11ObjectFlagsE", !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 1}
!85 = !{!"_ZTSN6hermes2vm9GCPointerINS0_8JSObjectEEE", !86, i64 0}
!86 = !{!"_ZTSN6hermes2vm13GCPointerBaseE", !87, i64 0}
!87 = !{!"_ZTSN6hermes2vm17CompressedPointerE", !88, i64 0}
!88 = !{!"_ZTSN6hermes2vm12BasedPointerE", !4, i64 0}
!89 = !{!"_ZTSN6hermes2vm9GCPointerINS0_11HiddenClassEEE", !86, i64 0}
!90 = !{!"_ZTSN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_13HermesValue32EEEEE", !86, i64 0}
!91 = !{!"_ZTSN6hermes2vm9GCPointerINS0_11EnvironmentEEE", !86, i64 0}
!92 = !{!"_ZTSN6hermes2vm6XorPtrINS0_9CodeBlockELNS0_11XorPtrKeyIDE1EEE", !17, i64 0}
!93 = !{!"_ZTSN6hermes2vm9GCPointerINS0_6DomainEEE", !86, i64 0}
!94 = !{!"_ZTSN6hermes2vm22GeneratorInnerFunction5StateE", !5, i64 0}
!95 = !{!"_ZTSN6hermes2vm9GCPointerINS0_16ArrayStorageBaseINS0_11HermesValueEEEEE", !86, i64 0}
!96 = !{!"_ZTSN6hermes2vm17GCHermesValueBaseINS0_13HermesValue32EEE", !97, i64 0}
!97 = !{!"_ZTSN6hermes2vm13HermesValue32E", !4, i64 0}
!98 = !{!"_ZTSN6hermes2vm22GeneratorInnerFunction6ActionE", !5, i64 0}
!99 = !{!"bool", !5, i64 0}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZNK6hermes2vm10NativeArgs5beginEv: argument 0"}
!102 = distinct !{!102, !"_ZNK6hermes2vm10NativeArgs5beginEv"}
!103 = !{!104}
end_hunk_2
