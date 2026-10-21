Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/stbimage?download=true
inline.NumInlined: 826
inline.NumDeleted: 152
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 38
begin_hunk_0_@stbi_load:bb.a
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = load i32, ptr %i.g, align 8, !tbaa !28
  %i.t = add nsw i32 %i.s, %i.r
  store i32 %i.t, ptr %i.g, align 8, !tbaa !28
  %i.u = icmp eq i32 %i.l, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.h, align 8, !tbaa !32
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = sext i32 %i.l to i64
  %i.x = getelementptr inbounds i8, ptr %i.h, i64 %i.w
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i

_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i: ; preds = %bb.e, %bb.d
  %.sink.i.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  store ptr %i.h, ptr %i.j, align 8, !tbaa !30
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  store ptr %.sink.i.i.i.i, ptr %i.y, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i.i, ptr %i.z, align 8, !tbaa !34
  %i.aa = call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %stbi_load_from_file.exit, label %bb.f

bb.f:                                             ; preds = %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !33
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %.neg.i = sub i64 %i.ae, %i.ad
  %i.af = shl i64 %.neg.i, 32
  %i.ag = ashr exact i64 %i.af, 32
  %i.ah = call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef %i.ag, i32 noundef 1) ; 0 uses
  br label %stbi_load_from_file.exit

stbi_load_from_file.exit:                         ; preds = %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %i.ai = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %stbi_load_from_file.exit, %bb.b
  %.0 = phi ptr [ %i.aa, %stbi_load_from_file.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @stbi_load_from_file(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false), !tbaa.struct !22
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %0, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.c, align 4, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 4 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !30
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.j = call noundef i32 %i.i(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !0 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !29
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8, !tbaa !28
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8, !tbaa !28
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.f, align 8, !tbaa !32
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit

_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  store ptr %.sink.i.i.i, ptr %i.w, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i, ptr %i.x, align 8, !tbaa !34
  %i.y = call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %.neg = sub i64 %i.ac, %i.ab
  %i.ad = shl i64 %.neg, 32
  %i.ae = ashr exact i64 %i.ad, 32
  %i.af = call i32 @fseek(ptr noundef %0, i64 noundef %i.ae, i32 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  ret ptr %i.y
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 8 uses
  %5 = alloca %struct.stbi__result_info, align 4  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  %i.b = call fastcc noundef ptr @_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef 8) ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %5, align 4, !tbaa !36
  switch i32 %i.d, label %bb.c [
    i32 8, label %_ZL21stbi__convert_16_to_8Ptiii.exit
    i32 16, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4pbrt8LogFatalIJRA54_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 1249, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(54) @.str.4) #41
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = load i32, ptr %1, align 4, !tbaa !20
  %i.f = load i32, ptr %2, align 4, !tbaa !20
  %i.g = icmp eq i32 %4, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %3, align 4, !tbaa !20
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.i = phi i32 [ %i.h, %bb.e ], [ %4, %bb.d ]
  %i.j = mul nsw i32 %i.f, %i.e
  %i.k = mul nsw i32 %i.j, %i.i                   ; 5 uses
  %i.l = sext i32 %i.k to i64
  %i.m = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.l) #42 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.o = icmp sgt i32 %i.k, 0
  br i1 %i.o, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.k to i64  ; 6 uses
  %min.iters.check = icmp ult i32 %i.k, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check41 = icmp ult i32 %i.k, 64
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %wide.trip.count.i, 56
  %n.vec = and i64 %wide.trip.count.i, 2147483584 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %wide.load = load <16 x i16>, ptr %i.q, align 2, !tbaa !38
  %wide.load42 = load <16 x i16>, ptr %i.r, align 2, !tbaa !38
  %wide.load43 = load <16 x i16>, ptr %i.s, align 2, !tbaa !38
  %wide.load44 = load <16 x i16>, ptr %i.t, align 2, !tbaa !38
  %6 = lshr <16 x i16> %wide.load, splat (i16 8)
  %7 = lshr <16 x i16> %wide.load42, splat (i16 8)
  %8 = lshr <16 x i16> %wide.load43, splat (i16 8)
  %9 = lshr <16 x i16> %wide.load44, splat (i16 8)
  %10 = trunc nuw <16 x i16> %6 to <16 x i8>
  %11 = trunc nuw <16 x i16> %7 to <16 x i8>
  %12 = trunc nuw <16 x i16> %8 to <16 x i8>
  %13 = trunc nuw <16 x i16> %9 to <16 x i8>
  %14 = getelementptr inbounds nuw i8, ptr %i.m, i64 %index ; 4 uses
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 16
  %16 = getelementptr inbounds nuw i8, ptr %14, i64 32
  %17 = getelementptr inbounds nuw i8, ptr %14, i64 48
  store <16 x i8> %10, ptr %14, align 1, !tbaa !32
  store <16 x i8> %11, ptr %15, align 1, !tbaa !32
  store <16 x i8> %12, ptr %16, align 1, !tbaa !32
  store <16 x i8> %13, ptr %17, align 1, !tbaa !32
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !42

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next48, %vec.epilog.vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index46
  %wide.load47 = load <8 x i16>, ptr %i.v, align 2, !tbaa !38
  %i.w = lshr <8 x i16> %wide.load47, splat (i16 8)
  %i.x = trunc nuw <8 x i16> %i.w to <8 x i8>
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 %index46
  store <8 x i8> %i.x, ptr %i.y, align 1, !tbaa !32
  %index.next48 = add nuw i64 %index46, 8         ; 2 uses
  %i.z = icmp eq i64 %index.next48, %n.vec45
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !134

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n49 = icmp eq i64 %n.vec45, %wide.trip.count.i
  br i1 %cmp.n49, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec45, %vec.epilog.middle.block ]
  br label %.lr.ph.i

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.8, ptr %i.aa, align 8, !tbaa !19
  br label %_ZL21stbi__convert_16_to_8Ptiii.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !38
  %i.ad = lshr i16 %i.ac, 8
  %i.ae = trunc nuw i16 %i.ad to i8
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.i
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !32
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !135

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  tail call void @free(ptr noundef nonnull %i.b) #40
  br label %_ZL21stbi__convert_16_to_8Ptiii.exit

_ZL21stbi__convert_16_to_8Ptiii.exit:             ; preds = %._crit_edge.i, %bb.g, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ %i.m, %bb.g ], [ %i.m, %._crit_edge.i ] ; 8 uses
  %i.ag = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL33stbi__vertically_flip_on_load_set)
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !20
  %.not25 = icmp eq i32 %i.ah, 0
  %i.ai = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL35stbi__vertically_flip_on_load_local)
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = load i32, ptr @_ZL36stbi__vertically_flip_on_load_global, align 4
  %i.al = select i1 %.not25, i32 %i.ak, i32 %i.aj
  %.not26 = icmp eq i32 %i.al, 0
  br i1 %.not26, label %bb.n, label %bb.h

bb.h:                                             ; preds = %_ZL21stbi__convert_16_to_8Ptiii.exit
  %.not27 = icmp eq i32 %4, 0
  br i1 %.not27, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = load i32, ptr %3, align 4, !tbaa !20
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.an = phi i32 [ %i.am, %bb.i ], [ %4, %bb.h ]
  %i.ao = load i32, ptr %1, align 4, !tbaa !20
  %i.ap = load i32, ptr %2, align 4, !tbaa !20    ; 4 uses
  %i.aq = sext i32 %i.ao to i64
  %i.ar = sext i32 %i.an to i64
  %i.as = mul nsw i64 %i.aq, %i.ar                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.at = ashr i32 %i.ap, 1                       ; 4 uses
  %i.au = icmp slt i32 %i.at, 1
  %.not32.i = icmp eq i64 %i.as, 0
  %or.cond.i = select i1 %i.au, i1 true, i1 %.not32.i
  br i1 %or.cond.i, label %_ZL19stbi__vertical_flipPviii.exit, label %.lr.ph.preheader.i28

.lr.ph.preheader.i28:                             ; preds = %bb.j
  %wide.trip.count.i29 = zext nneg i32 %i.at to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i29, 1
  %i.av = icmp eq i32 %i.at, 1
  br i1 %i.av, label %.lr.ph.i30.epil.preheader, label %.lr.ph.preheader.i28.new

.lr.ph.preheader.i28.new:                         ; preds = %.lr.ph.preheader.i28
  %unroll_iter = and i64 %wide.trip.count.i29, 2147483646
  br label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %._crit_edge.i32.1, %.lr.ph.preheader.i28.new
  %indvars.iv.i31 = phi i64 [ 0, %.lr.ph.preheader.i28.new ], [ %indvars.iv.next.i33.1, %._crit_edge.i32.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i28.new ], [ %niter.next.1, %._crit_edge.i32.1 ]
  %i.aw = mul i64 %indvars.iv.i31, %i.as
  %i.ax = getelementptr inbounds nuw i8, ptr %.0, i64 %i.aw
  %i.ay = trunc i64 %indvars.iv.i31 to i32
  %i.az = xor i32 %i.ay, -1
  %i.ba = add i32 %i.ap, %i.az
  %i.bb = sext i32 %i.ba to i64
  %i.bc = mul i64 %i.as, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %.0, i64 %i.bc
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i30
  %.02935.i = phi i64 [ %i.as, %.lr.ph.i30 ], [ %i.bh, %bb.k ] ; 2 uses
  %.03034.i = phi ptr [ %i.bd, %.lr.ph.i30 ], [ %i.bg, %bb.k ] ; 3 uses
  %.03133.i = phi ptr [ %i.ax, %.lr.ph.i30 ], [ %i.bf, %bb.k ] ; 3 uses
  %i.be = tail call i64 @llvm.umin.i64(i64 %.02935.i, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i, i64 %i.be, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i, ptr align 1 %.03034.i, i64 %i.be, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i, ptr nonnull align 16 %i.a, i64 %i.be, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.03133.i, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %.03034.i, i64 %i.be
  %i.bh = sub nuw i64 %.02935.i, %i.be            ; 2 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %._crit_edge.i32, label %bb.k, !llvm.loop !1

._crit_edge.i32:                                  ; preds = %bb.k
  %indvars.iv.next.i33 = or disjoint i64 %indvars.iv.i31, 1 ; 2 uses
  %i.bi = mul i64 %indvars.iv.next.i33, %i.as
  %i.bj = getelementptr inbounds nuw i8, ptr %.0, i64 %i.bi
  %i.bk = trunc i64 %indvars.iv.next.i33 to i32
  %i.bl = xor i32 %i.bk, -1
  %i.bm = add i32 %i.ap, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = mul i64 %i.as, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %.0, i64 %i.bo
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %._crit_edge.i32
  %.02935.i.1 = phi i64 [ %i.as, %._crit_edge.i32 ], [ %i.bt, %bb.l ] ; 2 uses
  %.03034.i.1 = phi ptr [ %i.bp, %._crit_edge.i32 ], [ %i.bs, %bb.l ] ; 3 uses
  %.03133.i.1 = phi ptr [ %i.bj, %._crit_edge.i32 ], [ %i.br, %bb.l ] ; 3 uses
  %i.bq = tail call i64 @llvm.umin.i64(i64 %.02935.i.1, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i.1, i64 %i.bq, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i.1, ptr align 1 %.03034.i.1, i64 %i.bq, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i.1, ptr nonnull align 16 %i.a, i64 %i.bq, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %.03133.i.1, i64 %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %.03034.i.1, i64 %i.bq
  %i.bt = sub nuw i64 %.02935.i.1, %i.bq          ; 2 uses
  %.not.i.1 = icmp eq i64 %i.bt, 0
  br i1 %.not.i.1, label %._crit_edge.i32.1, label %bb.l, !llvm.loop !1

._crit_edge.i32.1:                                ; preds = %bb.l
  %indvars.iv.next.i33.1 = add nuw nsw i64 %indvars.iv.i31, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZL19stbi__vertical_flipPviii.exit.loopexit.unr-lcssa, label %.lr.ph.i30, !llvm.loop !2

_ZL19stbi__vertical_flipPviii.exit.loopexit.unr-lcssa: ; preds = %._crit_edge.i32.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL19stbi__vertical_flipPviii.exit, label %.lr.ph.i30.epil.preheader

.lr.ph.i30.epil.preheader:                        ; preds = %_ZL19stbi__vertical_flipPviii.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i28
  %indvars.iv.i31.epil.init = phi i64 [ 0, %.lr.ph.preheader.i28 ], [ %indvars.iv.next.i33.1, %_ZL19stbi__vertical_flipPviii.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod50 = trunc i32 %i.at to i1
  tail call void @llvm.assume(i1 %lcmp.mod50)
  %i.bu = mul i64 %indvars.iv.i31.epil.init, %i.as
  %i.bv = getelementptr inbounds nuw i8, ptr %.0, i64 %i.bu
  %i.bw = trunc i64 %indvars.iv.i31.epil.init to i32
  %i.bx = xor i32 %i.bw, -1
  %i.by = add i32 %i.ap, %i.bx
  %i.bz = sext i32 %i.by to i64
  %i.ca = mul i64 %i.as, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ca
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i30.epil.preheader
  %.02935.i.epil = phi i64 [ %i.as, %.lr.ph.i30.epil.preheader ], [ %i.cf, %bb.m ] ; 2 uses
  %.03034.i.epil = phi ptr [ %i.cb, %.lr.ph.i30.epil.preheader ], [ %i.ce, %bb.m ] ; 3 uses
  %.03133.i.epil = phi ptr [ %i.bv, %.lr.ph.i30.epil.preheader ], [ %i.cd, %bb.m ] ; 3 uses
  %i.cc = tail call i64 @llvm.umin.i64(i64 %.02935.i.epil, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i.epil, i64 %i.cc, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i.epil, ptr align 1 %.03034.i.epil, i64 %i.cc, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i.epil, ptr nonnull align 16 %i.a, i64 %i.cc, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %.03133.i.epil, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %.03034.i.epil, i64 %i.cc
  %i.cf = sub nuw i64 %.02935.i.epil, %i.cc       ; 2 uses
  %.not.i.epil = icmp eq i64 %i.cf, 0
  br i1 %.not.i.epil, label %_ZL19stbi__vertical_flipPviii.exit, label %bb.m, !llvm.loop !1

_ZL19stbi__vertical_flipPviii.exit:               ; preds = %_ZL19stbi__vertical_flipPviii.exit.loopexit.unr-lcssa, %bb.m, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %_ZL21stbi__convert_16_to_8Ptiii.exit, %_ZL19stbi__vertical_flipPviii.exit, %bb.a
  %.022 = phi ptr [ null, %bb.a ], [ %.0, %_ZL19stbi__vertical_flipPviii.exit ], [ %.0, %_ZL21stbi__convert_16_to_8Ptiii.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
end_hunk_0
begin_hunk_1_@_ZL15stbi__idct_simdPhiPs:bb.a
  %i.di = sub <4 x i32> %i.de, %i.bi
  %i.dj = ashr <4 x i32> %i.df, splat (i32 10)
  %i.dk = ashr <4 x i32> %i.dg, splat (i32 10)
  %i.dl = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dj, <4 x i32> %i.dk) ; 2 uses
  %i.dm = ashr <4 x i32> %i.dh, splat (i32 10)
  %i.dn = ashr <4 x i32> %i.di, splat (i32 10)
  %i.do = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.dm, <4 x i32> %i.dn) ; 2 uses
  %i.dp = shufflevector <8 x i16> %i.bz, <8 x i16> %i.do, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.dq = shufflevector <8 x i16> %i.bz, <8 x i16> %i.do, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dr = shufflevector <8 x i16> %i.cn, <8 x i16> %i.dc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ds = shufflevector <8 x i16> %i.cn, <8 x i16> %i.dc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dt = shufflevector <8 x i16> %i.cz, <8 x i16> %i.cq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.du = shufflevector <8 x i16> %i.cz, <8 x i16> %i.cq, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dv = shufflevector <8 x i16> %i.dl, <8 x i16> %i.cc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.dw = shufflevector <8 x i16> %i.dl, <8 x i16> %i.cc, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dx = shufflevector <8 x i16> %i.dp, <8 x i16> %i.dt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.dy = shufflevector <8 x i16> %i.dp, <8 x i16> %i.dt, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dz = shufflevector <8 x i16> %i.dr, <8 x i16> %i.dv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ea = shufflevector <8 x i16> %i.dr, <8 x i16> %i.dv, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.eb = shufflevector <8 x i16> %i.dq, <8 x i16> %i.du, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ec = shufflevector <8 x i16> %i.dq, <8 x i16> %i.du, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ed = shufflevector <8 x i16> %i.ds, <8 x i16> %i.dw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ee = shufflevector <8 x i16> %i.ds, <8 x i16> %i.dw, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ef = shufflevector <8 x i16> %i.dx, <8 x i16> %i.dz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.eg = shufflevector <8 x i16> %i.dx, <8 x i16> %i.dz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 3 uses
  %i.eh = shufflevector <8 x i16> %i.dy, <8 x i16> %i.ea, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ei = shufflevector <8 x i16> %i.dy, <8 x i16> %i.ea, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 3 uses
  %i.ej = shufflevector <8 x i16> %i.eb, <8 x i16> %i.ed, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ek = shufflevector <8 x i16> %i.eb, <8 x i16> %i.ed, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 3 uses
  %i.el = shufflevector <8 x i16> %i.ec, <8 x i16> %i.ee, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.em = shufflevector <8 x i16> %i.ec, <8 x i16> %i.ee, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 3 uses
  %i.en = shufflevector <8 x i16> %i.eh, <8 x i16> %i.el, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.eo = shufflevector <8 x i16> %i.eh, <8 x i16> %i.el, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ep = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.en, <8 x i16> <i16 2217, i16 -5350, i16 2217, i16 -5350, i16 2217, i16 -5350, i16 2217, i16 -5350>) ; 2 uses
  %i.eq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.eo, <8 x i16> <i16 2217, i16 -5350, i16 2217, i16 -5350, i16 2217, i16 -5350, i16 2217, i16 -5350>) ; 2 uses
  %i.er = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.en, <8 x i16> <i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217>) ; 2 uses
  %i.es = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.eo, <8 x i16> <i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217, i16 5352, i16 2217>) ; 2 uses
  %i.et = add <8 x i16> %i.ef, %i.ej              ; 2 uses
  %i.eu = sub <8 x i16> %i.ef, %i.ej              ; 2 uses
  %i.ev = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.et, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ew = bitcast <8 x i16> %i.ev to <4 x i32>
  %i.ex = ashr exact <4 x i32> %i.ew, splat (i32 4) ; 2 uses
  %i.ey = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.et, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ez = bitcast <8 x i16> %i.ey to <4 x i32>
  %i.fa = ashr exact <4 x i32> %i.ez, splat (i32 4) ; 2 uses
  %i.fb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eu, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fc = bitcast <8 x i16> %i.fb to <4 x i32>
  %i.fd = ashr exact <4 x i32> %i.fc, splat (i32 4) ; 2 uses
  %i.fe = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.eu, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ff = bitcast <8 x i16> %i.fe to <4 x i32>
  %i.fg = ashr exact <4 x i32> %i.ff, splat (i32 4) ; 2 uses
  %i.fh = sub <4 x i32> %i.ex, %i.er
  %i.fi = sub <4 x i32> %i.fa, %i.es
  %i.fj = sub <4 x i32> %i.fd, %i.ep
  %i.fk = sub <4 x i32> %i.fg, %i.eq
  %i.fl = shufflevector <8 x i16> %i.em, <8 x i16> %i.ei, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.fm = shufflevector <8 x i16> %i.em, <8 x i16> %i.ei, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.fn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fl, <8 x i16> <i16 -6811, i16 -8034, i16 -6811, i16 -8034, i16 -6811, i16 -8034, i16 -6811, i16 -8034>)
  %i.fo = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fm, <8 x i16> <i16 -6811, i16 -8034, i16 -6811, i16 -8034, i16 -6811, i16 -8034, i16 -6811, i16 -8034>)
  %i.fp = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fl, <8 x i16> <i16 -8034, i16 4552, i16 -8034, i16 4552, i16 -8034, i16 4552, i16 -8034, i16 4552>)
  %i.fq = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fm, <8 x i16> <i16 -8034, i16 4552, i16 -8034, i16 4552, i16 -8034, i16 4552, i16 -8034, i16 4552>)
  %i.fr = shufflevector <8 x i16> %i.ek, <8 x i16> %i.eg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.fs = shufflevector <8 x i16> %i.ek, <8 x i16> %i.eg, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.ft = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fr, <8 x i16> <i16 6813, i16 -1597, i16 6813, i16 -1597, i16 6813, i16 -1597, i16 6813, i16 -1597>)
  %i.fu = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fs, <8 x i16> <i16 6813, i16 -1597, i16 6813, i16 -1597, i16 6813, i16 -1597, i16 6813, i16 -1597>)
  %i.fv = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fr, <8 x i16> <i16 -1597, i16 4552, i16 -1597, i16 4552, i16 -1597, i16 4552, i16 -1597, i16 4552>)
  %i.fw = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fs, <8 x i16> <i16 -1597, i16 4552, i16 -1597, i16 4552, i16 -1597, i16 4552, i16 -1597, i16 4552>)
  %i.fx = add <8 x i16> %i.eg, %i.em              ; 2 uses
  %i.fy = add <8 x i16> %i.ei, %i.ek              ; 2 uses
  %i.fz = shufflevector <8 x i16> %i.fx, <8 x i16> %i.fy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.ga = shufflevector <8 x i16> %i.fx, <8 x i16> %i.fy, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.gb = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fz, <8 x i16> <i16 1131, i16 4816, i16 1131, i16 4816, i16 1131, i16 4816, i16 1131, i16 4816>) ; 2 uses
  %i.gc = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ga, <8 x i16> <i16 1131, i16 4816, i16 1131, i16 4816, i16 1131, i16 4816, i16 1131, i16 4816>) ; 2 uses
  %i.gd = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.fz, <8 x i16> <i16 4816, i16 -5681, i16 4816, i16 -5681, i16 4816, i16 -5681, i16 4816, i16 -5681>) ; 2 uses
  %i.ge = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ga, <8 x i16> <i16 4816, i16 -5681, i16 4816, i16 -5681, i16 4816, i16 -5681, i16 4816, i16 -5681>) ; 2 uses
  %i.gf = add <4 x i32> %i.gb, %i.fn              ; 2 uses
  %i.gg = add <4 x i32> %i.gc, %i.fo              ; 2 uses
  %i.gh = add <4 x i32> %i.gd, %i.ft              ; 2 uses
  %i.gi = add <4 x i32> %i.ge, %i.fu              ; 2 uses
  %i.gj = add <4 x i32> %i.gd, %i.fp              ; 2 uses
  %i.gk = add <4 x i32> %i.ge, %i.fq              ; 2 uses
  %i.gl = add <4 x i32> %i.gb, %i.fv              ; 2 uses
  %i.gm = add <4 x i32> %i.gc, %i.fw              ; 2 uses
  %i.gn = add <4 x i32> %i.er, splat (i32 16842752)
  %i.go = add <4 x i32> %i.gn, %i.ex              ; 2 uses
  %i.gp = add <4 x i32> %i.es, splat (i32 16842752)
  %i.gq = add <4 x i32> %i.gp, %i.fa              ; 2 uses
  %i.gr = add <4 x i32> %i.gl, %i.go
  %i.gs = add <4 x i32> %i.gm, %i.gq
  %i.gt = sub <4 x i32> %i.go, %i.gl
  %i.gu = sub <4 x i32> %i.gq, %i.gm
  %i.gv = ashr <4 x i32> %i.gr, splat (i32 17)
  %i.gw = ashr <4 x i32> %i.gs, splat (i32 17)
  %i.gx = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.gv, <4 x i32> %i.gw)
  %i.gy = ashr <4 x i32> %i.gt, splat (i32 17)
  %i.gz = ashr <4 x i32> %i.gu, splat (i32 17)
  %i.ha = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.gy, <4 x i32> %i.gz)
  %i.hb = add <4 x i32> %i.ep, splat (i32 16842752)
  %i.hc = add <4 x i32> %i.hb, %i.fd              ; 2 uses
  %i.hd = add <4 x i32> %i.eq, splat (i32 16842752)
  %i.he = add <4 x i32> %i.hd, %i.fg              ; 2 uses
  %i.hf = add <4 x i32> %i.gj, %i.hc
  %i.hg = add <4 x i32> %i.gk, %i.he
  %i.hh = sub <4 x i32> %i.hc, %i.gj
  %i.hi = sub <4 x i32> %i.he, %i.gk
  %i.hj = ashr <4 x i32> %i.hf, splat (i32 17)
  %i.hk = ashr <4 x i32> %i.hg, splat (i32 17)
  %i.hl = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hj, <4 x i32> %i.hk)
  %i.hm = ashr <4 x i32> %i.hh, splat (i32 17)
  %i.hn = ashr <4 x i32> %i.hi, splat (i32 17)
  %i.ho = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hm, <4 x i32> %i.hn)
  %i.hp = add <4 x i32> %i.fj, splat (i32 16842752) ; 2 uses
  %i.hq = add <4 x i32> %i.fk, splat (i32 16842752) ; 2 uses
  %i.hr = add <4 x i32> %i.gh, %i.hp
  %i.hs = add <4 x i32> %i.gi, %i.hq
  %i.ht = sub <4 x i32> %i.hp, %i.gh
  %i.hu = sub <4 x i32> %i.hq, %i.gi
  %i.hv = ashr <4 x i32> %i.hr, splat (i32 17)
  %i.hw = ashr <4 x i32> %i.hs, splat (i32 17)
  %i.hx = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hv, <4 x i32> %i.hw)
  %i.hy = ashr <4 x i32> %i.ht, splat (i32 17)
  %i.hz = ashr <4 x i32> %i.hu, splat (i32 17)
  %i.ia = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.hy, <4 x i32> %i.hz)
  %i.ib = add <4 x i32> %i.fh, splat (i32 16842752) ; 2 uses
  %i.ic = add <4 x i32> %i.fi, splat (i32 16842752) ; 2 uses
  %i.id = add <4 x i32> %i.gf, %i.ib
  %i.ie = add <4 x i32> %i.gg, %i.ic
  %i.if = sub <4 x i32> %i.ib, %i.gf
  %i.ig = sub <4 x i32> %i.ic, %i.gg
  %i.ih = ashr <4 x i32> %i.id, splat (i32 17)
  %i.ii = ashr <4 x i32> %i.ie, splat (i32 17)
  %i.ij = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ih, <4 x i32> %i.ii)
  %i.ik = ashr <4 x i32> %i.if, splat (i32 17)
  %i.il = ashr <4 x i32> %i.ig, splat (i32 17)
  %i.im = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.ik, <4 x i32> %i.il)
  %i.in = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gx, <8 x i16> %i.hl) ; 2 uses
  %i.io = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hx, <8 x i16> %i.ij) ; 2 uses
  %i.ip = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.im, <8 x i16> %i.ia) ; 2 uses
  %i.iq = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ho, <8 x i16> %i.ha) ; 2 uses
  %i.ir = shufflevector <16 x i8> %i.in, <16 x i8> %i.ip, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.is = shufflevector <16 x i8> %i.in, <16 x i8> %i.ip, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.it = shufflevector <16 x i8> %i.io, <16 x i8> %i.iq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.iu = shufflevector <16 x i8> %i.io, <16 x i8> %i.iq, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.iv = shufflevector <16 x i8> %i.ir, <16 x i8> %i.it, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.iw = shufflevector <16 x i8> %i.ir, <16 x i8> %i.it, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ix = shufflevector <16 x i8> %i.is, <16 x i8> %i.iu, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.iy = shufflevector <16 x i8> %i.is, <16 x i8> %i.iu, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.iz = shufflevector <16 x i8> %i.iv, <16 x i8> %i.ix, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.ja = bitcast <16 x i8> %i.iz to <2 x i64>
  %i.jb = shufflevector <16 x i8> %i.iv, <16 x i8> %i.ix, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.jc = bitcast <16 x i8> %i.jb to <2 x i64>
  %i.jd = shufflevector <16 x i8> %i.iw, <16 x i8> %i.iy, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 2 uses
  %i.je = bitcast <16 x i8> %i.jd to <2 x i64>
  %i.jf = shufflevector <16 x i8> %i.iw, <16 x i8> %i.iy, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.jg = bitcast <16 x i8> %i.jf to <2 x i64>
  %i.jh = extractelement <2 x i64> %i.ja, i64 0
  store i64 %i.jh, ptr %0, align 1, !tbaa !32
  %i.ji = sext i32 %1 to i64                      ; 7 uses
  %i.jj = getelementptr inbounds i8, ptr %0, i64 %i.ji ; 2 uses
  %i.jk = bitcast <16 x i8> %i.iz to <2 x i64>
  %i.jl = extractelement <2 x i64> %i.jk, i64 1
  store i64 %i.jl, ptr %i.jj, align 1, !tbaa !32
  %i.jm = getelementptr inbounds i8, ptr %i.jj, i64 %i.ji ; 2 uses
  %i.jn = extractelement <2 x i64> %i.jc, i64 0
  store i64 %i.jn, ptr %i.jm, align 1, !tbaa !32
  %i.jo = getelementptr inbounds i8, ptr %i.jm, i64 %i.ji ; 2 uses
  %i.jp = bitcast <16 x i8> %i.jb to <2 x i64>
  %i.jq = extractelement <2 x i64> %i.jp, i64 1
  store i64 %i.jq, ptr %i.jo, align 1, !tbaa !32
  %i.jr = getelementptr inbounds i8, ptr %i.jo, i64 %i.ji ; 2 uses
  %i.js = extractelement <2 x i64> %i.je, i64 0
  store i64 %i.js, ptr %i.jr, align 1, !tbaa !32
  %i.jt = getelementptr inbounds i8, ptr %i.jr, i64 %i.ji ; 2 uses
  %i.ju = bitcast <16 x i8> %i.jd to <2 x i64>
  %i.jv = extractelement <2 x i64> %i.ju, i64 1
  store i64 %i.jv, ptr %i.jt, align 1, !tbaa !32
  %i.jw = getelementptr inbounds i8, ptr %i.jt, i64 %i.ji ; 2 uses
  %i.jx = extractelement <2 x i64> %i.jg, i64 0
  store i64 %i.jx, ptr %i.jw, align 1, !tbaa !32
  %i.jy = getelementptr inbounds i8, ptr %i.jw, i64 %i.ji
  %i.jz = bitcast <16 x i8> %i.jf to <2 x i64>
  %i.ka = extractelement <2 x i64> %i.jz, i64 1
  store i64 %i.ka, ptr %i.jy, align 1, !tbaa !32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @_ZL23stbi__YCbCr_to_RGB_simdPhPKhS1_S1_ii(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) #28 {
bb.a:
  %i.a = icmp eq i32 %5, 4
  %i.b = icmp sgt i32 %4, 7
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext nneg i32 %4 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 4 uses
  %.090103 = phi ptr [ %0, %.lr.ph.preheader ], [ %i.al, %.lr.ph ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.e = load i64, ptr %i.d, align 1, !tbaa !32
  %i.f = insertelement <2 x i64> poison, i64 %i.e, i64 0
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.h = load i64, ptr %i.g, align 1, !tbaa !32
  %i.i = insertelement <2 x i64> poison, i64 %i.h, i64 0
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.k = load i64, ptr %i.j, align 1, !tbaa !32
  %i.l = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %i.m = bitcast <2 x i64> %i.f to <16 x i8>
  %i.n = shufflevector <16 x i8> <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.m, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.o = bitcast <2 x i64> %i.i to <16 x i8>
  %i.p = xor <16 x i8> %i.o, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.q = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.p, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.r = bitcast <2 x i64> %i.l to <16 x i8>
  %i.s = xor <16 x i8> %i.r, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.t = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.s, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.u = bitcast <16 x i8> %i.n to <8 x i16>
  %i.v = lshr exact <8 x i16> %i.u, splat (i16 4) ; 3 uses
  %i.w = bitcast <16 x i8> %i.q to <8 x i16>      ; 2 uses
  %i.x = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.w, <8 x i16> splat (i16 5743))
  %i.y = bitcast <16 x i8> %i.t to <8 x i16>      ; 2 uses
  %i.z = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.y, <8 x i16> splat (i16 -1410))
  %i.aa = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.y, <8 x i16> splat (i16 7258))
  %i.ab = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.w, <8 x i16> splat (i16 -2925))
  %i.ac = add <8 x i16> %i.x, %i.v
  %i.ad = add <8 x i16> %i.aa, %i.v
  %i.ae = add <8 x i16> %i.ab, %i.v
  %i.af = add <8 x i16> %i.ae, %i.z
  %i.ag = ashr <8 x i16> %i.ac, splat (i16 4)
  %i.ah = ashr <8 x i16> %i.ad, splat (i16 4)
  %i.ai = ashr <8 x i16> %i.af, splat (i16 4)
  %i.aj = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ag, <8 x i16> %i.ah) ; 2 uses
  %i.ak = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ai, <8 x i16> splat (i16 255)) ; 2 uses
  %6 = shufflevector <16 x i8> %i.aj, <16 x i8> %i.ak, <16 x i32> <i32 0, i32 16, i32 8, i32 24, i32 1, i32 17, i32 9, i32 25, i32 2, i32 18, i32 10, i32 26, i32 3, i32 19, i32 11, i32 27>
  %7 = shufflevector <16 x i8> %i.aj, <16 x i8> %i.ak, <16 x i32> <i32 4, i32 20, i32 12, i32 28, i32 5, i32 21, i32 13, i32 29, i32 6, i32 22, i32 14, i32 30, i32 7, i32 23, i32 15, i32 31>
  store <16 x i8> %6, ptr %.090103, align 1, !tbaa !32
  %8 = getelementptr inbounds nuw i8, ptr %.090103, i64 16
  store <16 x i8> %7, ptr %8, align 1, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %.090103, i64 32 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 3 uses
  %i.am = or disjoint i64 %indvars.iv.next, 7
  %i.an = icmp samesign ult i64 %i.am, %i.c
  br i1 %i.an, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !429

.loopexit.loopexit:                               ; preds = %.lr.ph
  %i.ao = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.192 = phi i32 [ 0, %bb.a ], [ %i.ao, %.loopexit.loopexit ] ; 2 uses
  %.1 = phi ptr [ %0, %bb.a ], [ %i.al, %.loopexit.loopexit ]
  %i.ap = icmp slt i32 %.192, %4
  br i1 %i.ap, label %.lr.ph107, label %._crit_edge

.lr.ph107:                                        ; preds = %.loopexit
  %i.aq = sext i32 %5 to i64
  %i.ar = zext nneg i32 %.192 to i64
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph107, %bb.b
  %indvars.iv110 = phi i64 [ %i.ar, %.lr.ph107 ], [ %indvars.iv.next111, %bb.b ] ; 4 uses
  %.2106 = phi ptr [ %.1, %.lr.ph107 ], [ %i.cd, %bb.b ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv110
  %i.at = load i8, ptr %i.as, align 1, !tbaa !32
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 20
  %i.aw = or disjoint i32 %i.av, 524288           ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv110
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !32
  %i.az = zext i8 %i.ay to i32
  %i.ba = add nsw i32 %i.az, -128                 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv110
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !32
  %i.bd = zext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -128                 ; 2 uses
  %i.bf = mul nsw i32 %i.ba, 1470208
  %i.bg = add nsw i32 %i.bf, %i.aw
  %i.bh = mul nsw i32 %i.ba, -748800
  %i.bi = add nsw i32 %i.bh, %i.aw
  %i.bj = mul nsw i32 %i.be, -360960
  %i.bk = and i32 %i.bj, -65536
  %i.bl = add i32 %i.bi, %i.bk
  %i.bm = mul nsw i32 %i.be, 1858048
  %i.bn = add nsw i32 %i.bm, %i.aw
  %i.bo = ashr i32 %i.bg, 20
  %i.bp = ashr i32 %i.bl, 20
  %i.bq = ashr i32 %i.bn, 20
  %i.br = tail call i32 @llvm.smax.i32(i32 %i.bo, i32 0)
  %i.bs = tail call i32 @llvm.umin.i32(i32 %i.br, i32 255)
  %i.bt = tail call i32 @llvm.smax.i32(i32 %i.bp, i32 0)
  %i.bu = tail call i32 @llvm.umin.i32(i32 %i.bt, i32 255)
  %i.bv = tail call i32 @llvm.smax.i32(i32 %i.bq, i32 0)
  %i.bw = tail call i32 @llvm.umin.i32(i32 %i.bv, i32 255)
  %i.bx = trunc nuw i32 %i.bs to i8
  store i8 %i.bx, ptr %.2106, align 1, !tbaa !32
  %i.by = trunc nuw i32 %i.bu to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %.2106, i64 1
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !32
  %i.ca = trunc nuw i32 %i.bw to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %.2106, i64 2
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !32
  %i.cc = getelementptr inbounds nuw i8, ptr %.2106, i64 3
  store i8 -1, ptr %i.cc, align 1, !tbaa !32
  %i.cd = getelementptr inbounds i8, ptr %.2106, i64 %i.aq
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !430

._crit_edge:                                      ; preds = %bb.b, %.loopexit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal noundef ptr @_ZL28stbi__resample_row_hv_2_simdPhS_S_ii(ptr nofree noundef returned writeonly captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 %4) #28 {
bb.a:
  %i.a = icmp eq i32 %3, 1
  %i.b = load i8, ptr %1, align 1, !tbaa !32      ; 2 uses
  %i.c = load i8, ptr %2, align 1, !tbaa !32      ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext i8 %i.b to i16
  %i.e = mul nuw nsw i16 %i.d, 3
  %i.f = zext i8 %i.c to i16
  %i.g = add nuw nsw i16 %i.f, 2
  %i.h = add nuw nsw i16 %i.g, %i.e
  %i.i = lshr i16 %i.h, 2
  %i.j = trunc nuw i16 %i.i to i8                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.j, ptr %i.k, align 1, !tbaa !32
  store i8 %i.j, ptr %0, align 1, !tbaa !32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = zext i8 %i.b to i32
  %i.m = mul nuw nsw i32 %i.l, 3
  %i.n = zext i8 %i.c to i32
  %i.o = add nuw nsw i32 %i.m, %i.n               ; 3 uses
  %i.p = icmp sgt i32 %3, 8
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.q = add nsw i32 %3, -1
  %i.r = and i32 %i.q, -8
  %i.s = zext nneg i32 %i.r to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 5 uses
  %.09092 = phi i32 [ %i.o, %.lr.ph.preheader ], [ %i.bq, %.lr.ph ]
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.u = load i64, ptr %i.t, align 1, !tbaa !32
  %i.v = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.x = load i64, ptr %i.w, align 1, !tbaa !32
  %i.y = insertelement <2 x i64> poison, i64 %i.x, i64 0
  %i.z = bitcast <2 x i64> %i.v to <16 x i8>
  %i.aa = shufflevector <16 x i8> %i.z, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ab = bitcast <2 x i64> %i.y to <16 x i8>
  %i.ac = shufflevector <16 x i8> %i.ab, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ad = bitcast <16 x i8> %i.aa to <8 x i16>
  %i.ae = bitcast <16 x i8> %i.ac to <8 x i16>    ; 2 uses
  %i.af = sub nsw <8 x i16> %i.ad, %i.ae
  %i.ag = shl nuw nsw <8 x i16> %i.ae, splat (i16 2)
  %i.ah = add nsw <8 x i16> %i.ag, %i.af          ; 5 uses
  %i.ai = shufflevector <8 x i16> %i.ah, <8 x i16> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6>
  %i.aj = trunc nuw nsw i32 %.09092 to i16
  %i.ak = insertelement <8 x i16> %i.ai, i16 %i.aj, i64 0
  %i.al = shufflevector <8 x i16> %i.ah, <8 x i16> poison, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison>
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.an = load i8, ptr %i.am, align 1, !tbaa !32
  %i.ao = zext i8 %i.an to i16
  %i.ap = mul nuw nsw i16 %i.ao, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !32
  %i.as = zext i8 %i.ar to i16
  %i.at = add nuw nsw i16 %i.ap, %i.as
  %i.au = insertelement <8 x i16> %i.al, i16 %i.at, i64 7
  %i.av = shl nsw <8 x i16> %i.ah, splat (i16 2)
  %i.aw = sub <8 x i16> %i.ak, %i.ah
  %i.ax = sub <8 x i16> %i.au, %i.ah
  %i.ay = add nsw <8 x i16> %i.av, splat (i16 8)  ; 2 uses
  %i.az = add <8 x i16> %i.aw, %i.ay              ; 2 uses
  %i.ba = add <8 x i16> %i.ax, %i.ay              ; 2 uses
  %i.bb = shufflevector <8 x i16> %i.az, <8 x i16> %i.ba, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bc = shufflevector <8 x i16> %i.az, <8 x i16> %i.ba, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bd = lshr <8 x i16> %i.bb, splat (i16 4)
  %i.be = lshr <8 x i16> %i.bc, splat (i16 4)
  %i.bf = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bd, <8 x i16> %i.be)
  %i.bg = shl nuw nsw i64 %indvars.iv, 1
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %i.bg
  store <16 x i8> %i.bf, ptr %i.bh, align 1, !tbaa !32
  %i.bi = or disjoint i64 %indvars.iv, 7          ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !32
  %i.bl = zext i8 %i.bk to i32
  %i.bm = mul nuw nsw i32 %i.bl, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 %i.bi
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !32
  %i.bp = zext i8 %i.bo to i32
  %i.bq = add nuw nsw i32 %i.bm, %i.bp            ; 2 uses
  %i.br = icmp samesign ult i64 %indvars.iv.next, %i.s
  br i1 %i.br, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !431

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %i.bu = trunc nuw nsw i64 %indvars.iv.next to i32
  %.pre = load i8, ptr %i.bs, align 1, !tbaa !32
  %.pre107 = load i8, ptr %i.bt, align 1, !tbaa !32
  %.pre108 = zext i8 %.pre to i32
  %.pre109 = mul nuw nsw i32 %.pre108, 3
  %.pre111 = zext i8 %.pre107 to i32
  %.pre113 = add nuw nsw i32 %.pre109, %.pre111
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.pre-phi114 = phi i32 [ %.pre113, %._crit_edge.loopexit ], [ %i.o, %bb.c ] ; 5 uses
  %.090.lcssa = phi i32 [ %i.bq, %._crit_edge.loopexit ], [ %i.o, %bb.c ]
  %.089.lcssa = phi i32 [ %i.bu, %._crit_edge.loopexit ], [ 0, %bb.c ] ; 3 uses
  %i.bv = mul nuw nsw i32 %.pre-phi114, 3
  %i.bw = add nuw nsw i32 %.090.lcssa, 8
  %i.bx = add nuw nsw i32 %i.bw, %i.bv
  %i.by = lshr i32 %i.bx, 4
  %i.bz = trunc nuw i32 %i.by to i8
  %i.ca = shl nuw nsw i32 %.089.lcssa, 1
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %i.cb
  store i8 %i.bz, ptr %i.cc, align 1, !tbaa !32
  %i.cd = or disjoint i32 %.089.lcssa, 1
  %i.ce = icmp slt i32 %i.cd, %3
  br i1 %i.ce, label %.lr.ph98.preheader, label %._crit_edge99

.lr.ph98.preheader:                               ; preds = %._crit_edge
  %i.cf = zext i32 %.089.lcssa to i64             ; 3 uses
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 6 uses
end_hunk_1
