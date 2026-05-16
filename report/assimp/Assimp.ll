inline.NumInlined: 1626
inline.NumDeleted: 658
begin_hunk_0_@assimp_stbi_failure_reason:bb.a
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #23

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @assimp_stbi_image_free(ptr noundef captures(none) %0) local_unnamed_addr #24 {
bb.a:
  tail call void @free(ptr noundef %0) #47
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @assimp_stbi_set_flip_vertically_on_load(i32 noundef %0) local_unnamed_addr #26 {
bb.a:
  store i32 %0, ptr @_ZL36stbi__vertically_flip_on_load_global, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @assimp_stbi_set_flip_vertically_on_load_thread(i32 noundef %0) local_unnamed_addr #26 {
bb.a:
  %i.a = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL35stbi__vertically_flip_on_load_local)
  store i32 %0, ptr %i.a, align 4
  %i.b = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL33stbi__vertically_flip_on_load_set)
  store i32 1, ptr %i.b, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @assimp_stbi_load(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %0, ptr noundef nonnull @.str.3) ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.4, ptr %i.b, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 4 uses
  store ptr %i.h, ptr %i.j, align 8
  %i.k = load ptr, ptr %i.c, align 8
  %i.l = call noundef i32 %i.k(ptr noundef nonnull %i.a, ptr noundef nonnull %i.h, i32 noundef 128), !inline_history !25 ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8
  %i.n = load ptr, ptr %i.i, align 8
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = load i32, ptr %i.g, align 8
  %i.t = add nsw i32 %i.s, %i.r
  store i32 %i.t, ptr %i.g, align 8
  %i.u = icmp eq i32 %i.l, 0
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.h, align 8
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i

bb.e:                                             ; preds = %bb.c
  %i.w = sext i32 %i.l to i64
  %i.x = getelementptr inbounds i8, ptr %i.h, i64 %i.w
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i

_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i: ; preds = %bb.e, %bb.d
  %.sink.i.i.i.i = phi ptr [ %i.v, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  store ptr %i.h, ptr %i.j, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  store ptr %.sink.i.i.i.i, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i.i, ptr %i.z, align 8
  %i.aa = call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %assimp_stbi_load_from_file.exit, label %bb.f

bb.f:                                             ; preds = %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i
  %i.ab = load ptr, ptr %i.y, align 8
  %i.ac = load ptr, ptr %i.j, align 8
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %.neg.i = sub i64 %i.ae, %i.ad
  %sext.i = shl i64 %.neg.i, 32
  %i.af = ashr exact i64 %sext.i, 32
  %i.ag = call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef %i.af, i32 noundef 1) ; 0 uses
  br label %assimp_stbi_load_from_file.exit

assimp_stbi_load_from_file.exit:                  ; preds = %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  %i.ah = call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %assimp_stbi_load_from_file.exit, %bb.b
  %.0 = phi ptr [ %i.aa, %assimp_stbi_load_from_file.exit ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @assimp_stbi_load_from_file(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 4 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = call noundef i32 %i.i(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !26 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8
  %i.l = load ptr, ptr %i.g, align 8
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.f, align 8
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit

_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  store ptr %.sink.i.i.i, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i, ptr %i.x, align 8
  %i.y = call fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit
  %i.z = load ptr, ptr %i.w, align 8
  %i.aa = load ptr, ptr %i.h, align 8
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %.neg = sub i64 %i.ac, %i.ab
  %sext = shl i64 %.neg, 32
  %i.ad = ashr exact i64 %sext, 32
  %i.ae = call i32 @fseek(ptr noundef %0, i64 noundef %i.ad, i32 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  ret ptr %i.y
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL31stbi__load_and_postprocess_8bitP13stbi__contextPiS1_S1_i(ptr noundef nonnull %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef captures(address_is_null) %3, i32 noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %5 = alloca %struct.stbi__result_info, align 4  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  %i.b = call fastcc noundef ptr @_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %5, align 4
  %.not = icmp eq i32 %i.d, 8
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %1, align 4
  %i.f = load i32, ptr %2, align 4
  %i.g = icmp eq i32 %4, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %3, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.i = phi i32 [ %i.h, %bb.d ], [ %4, %bb.c ]
  %i.j = mul nsw i32 %i.f, %i.e
  %i.k = mul nsw i32 %i.j, %i.i                   ; 5 uses
  %i.l = sext i32 %i.k to i64
  %i.m = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.l) #50 ; 5 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.o = icmp sgt i32 %i.k, 0
  br i1 %i.o, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.k to i64  ; 6 uses
  %min.iters.check = icmp ult i32 %i.k, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check39 = icmp ult i32 %i.k, 16
  br i1 %min.iters.check39, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count.i, 12
  %n.vec = and i64 %wide.trip.count.i, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <8 x i16>, ptr %i.p, align 2
  %wide.load40 = load <8 x i16>, ptr %i.q, align 2
  %6 = lshr <8 x i16> %wide.load, splat (i16 8)
  %7 = lshr <8 x i16> %wide.load40, splat (i16 8)
  %8 = trunc nuw <8 x i16> %6 to <8 x i8>
  %9 = trunc nuw <8 x i16> %7 to <8 x i8>
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store <8 x i8> %8, ptr %i.r, align 1
  store <8 x i8> %9, ptr %i.s, align 1
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %index43
  %wide.load44 = load <4 x i16>, ptr %i.u, align 2
  %10 = lshr <4 x i16> %wide.load44, splat (i16 8)
  %11 = trunc nuw <4 x i16> %10 to <4 x i8>
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 %index43
  store <4 x i8> %11, ptr %i.v, align 1
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %i.w = icmp eq i64 %index.next45, %n.vec42
  br i1 %i.w, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %n.vec42, %wide.trip.count.i
  br i1 %cmp.n46, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ]
  br label %.lr.ph.i

bb.f:                                             ; preds = %bb.e
  %i.x = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.26, ptr %i.x, align 8
  br label %_ZL21stbi__convert_16_to_8Ptiii.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv.i
  %12 = load i16, ptr %i.y, align 2
  %13 = lshr i16 %12, 8
  %14 = trunc nuw i16 %13 to i8
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.i
  store i8 %14, ptr %i.z, align 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !32

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  tail call void @free(ptr noundef nonnull %i.b) #47
  br label %_ZL21stbi__convert_16_to_8Ptiii.exit

_ZL21stbi__convert_16_to_8Ptiii.exit:             ; preds = %bb.f, %._crit_edge.i
  store i32 8, ptr %5, align 4
  br label %bb.g

bb.g:                                             ; preds = %_ZL21stbi__convert_16_to_8Ptiii.exit, %bb.b
  %.020 = phi ptr [ %i.m, %_ZL21stbi__convert_16_to_8Ptiii.exit ], [ %i.b, %bb.b ] ; 4 uses
  %i.aa = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL33stbi__vertically_flip_on_load_set)
  %i.ab = load i32, ptr %i.aa, align 4
  %.not23 = icmp eq i32 %i.ab, 0
  %i.ac = tail call align 4 ptr @llvm.threadlocal.address.p0(ptr align 4 @_ZL35stbi__vertically_flip_on_load_local)
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = load i32, ptr @_ZL36stbi__vertically_flip_on_load_global, align 4
  %i.af = select i1 %.not23, i32 %i.ae, i32 %i.ad
  %.not24 = icmp eq i32 %i.af, 0
  br i1 %.not24, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not25 = icmp eq i32 %4, 0
  br i1 %.not25, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %3, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ah = phi i32 [ %i.ag, %bb.i ], [ %4, %bb.h ]
  %i.ai = load i32, ptr %1, align 4
  %i.aj = load i32, ptr %2, align 4               ; 2 uses
  %i.ak = sext i32 %i.ai to i64
  %i.al = sext i32 %i.ah to i64
  %i.am = mul nsw i64 %i.ak, %i.al                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.an = ashr i32 %i.aj, 1                       ; 2 uses
  %i.ao = icmp slt i32 %i.an, 1
  %.not32.i = icmp eq i64 %i.am, 0
  %or.cond.i = select i1 %i.ao, i1 true, i1 %.not32.i
  br i1 %or.cond.i, label %_ZL19stbi__vertical_flipPviii.exit, label %.lr.ph.preheader.i26

.lr.ph.preheader.i26:                             ; preds = %bb.j
  %wide.trip.count.i27 = zext nneg i32 %i.an to i64
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %._crit_edge.i30, %.lr.ph.preheader.i26
  %indvars.iv.i29 = phi i64 [ 0, %.lr.ph.preheader.i26 ], [ %indvars.iv.next.i31, %._crit_edge.i30 ] ; 3 uses
  %i.ap = mul i64 %indvars.iv.i29, %i.am
  %i.aq = getelementptr inbounds nuw i8, ptr %.020, i64 %i.ap
  %i.ar = trunc i64 %indvars.iv.i29 to i32
  %i.as = xor i32 %i.ar, -1
  %i.at = add i32 %i.aj, %i.as
  %i.au = sext i32 %i.at to i64
  %i.av = mul i64 %i.am, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %.020, i64 %i.av
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i28
  %.02935.i = phi i64 [ %i.am, %.lr.ph.i28 ], [ %i.ba, %bb.k ] ; 2 uses
  %.03034.i = phi ptr [ %i.aw, %.lr.ph.i28 ], [ %i.az, %bb.k ] ; 3 uses
  %.03133.i = phi ptr [ %i.aq, %.lr.ph.i28 ], [ %i.ay, %bb.k ] ; 3 uses
  %i.ax = tail call i64 @llvm.umin.i64(i64 %.02935.i, i64 2048) ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %.03133.i, i64 %i.ax, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03133.i, ptr align 1 %.03034.i, i64 %i.ax, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.03034.i, ptr nonnull align 16 %i.a, i64 %i.ax, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.03133.i, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.03034.i, i64 %i.ax
  %i.ba = sub i64 %.02935.i, %i.ax                ; 2 uses
  %.not.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i, label %._crit_edge.i30, label %bb.k, !llvm.loop !33

._crit_edge.i30:                                  ; preds = %bb.k
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i29, 1 ; 2 uses
  %exitcond.not.i32 = icmp eq i64 %indvars.iv.next.i31, %wide.trip.count.i27
  br i1 %exitcond.not.i32, label %_ZL19stbi__vertical_flipPviii.exit, label %.lr.ph.i28, !llvm.loop !34

_ZL19stbi__vertical_flipPviii.exit:               ; preds = %._crit_edge.i30, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %_ZL19stbi__vertical_flipPviii.exit, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.020, %_ZL19stbi__vertical_flipPviii.exit ], [ %.020, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @assimp_stbi_load_from_file_16(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %5 = alloca %struct.stbi__context, align 8      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @_ZL21stbi__stdio_callbacks, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 52
  store i32 128, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  store i32 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 3 uses
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 4 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = call noundef i32 %i.i(ptr noundef %0, ptr noundef nonnull %i.f, i32 noundef 128), !inline_history !26 ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8
  %i.l = load ptr, ptr %i.g, align 8
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  %i.q = load i32, ptr %i.e, align 8
  %i.r = add nsw i32 %i.q, %i.p
  store i32 %i.r, ptr %i.e, align 8
  %i.s = icmp eq i32 %i.j, 0
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.d, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 57
  store i8 0, ptr %i.f, align 8
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit

bb.c:                                             ; preds = %bb.a
  %i.u = sext i32 %i.j to i64
  %i.v = getelementptr inbounds i8, ptr %i.f, i64 %i.u
  br label %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit

_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit: ; preds = %bb.b, %bb.c
  %.sink.i.i.i = phi ptr [ %i.t, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  store ptr %i.f, ptr %i.h, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 200 ; 2 uses
  store ptr %.sink.i.i.i, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 216
  store ptr %.sink.i.i.i, ptr %i.x, align 8
  %i.y = call fastcc noundef ptr @_ZL32stbi__load_and_postprocess_16bitP13stbi__contextPiS1_S1_i(ptr noundef %5, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit
  %i.z = load ptr, ptr %i.w, align 8
  %i.aa = load ptr, ptr %i.h, align 8
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %.neg = sub i64 %i.ac, %i.ab
  %sext = shl i64 %.neg, 32
  %i.ad = ashr exact i64 %sext, 32
  %i.ae = call i32 @fseek(ptr noundef %0, i64 noundef %i.ad, i32 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZL16stbi__start_fileP13stbi__contextP8_IO_FILE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #47
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL32stbi__load_and_postprocess_16bitP13stbi__contextPiS1_S1_i(ptr noundef nonnull %0, ptr noundef captures(none) %1, ptr noundef captures(none) %2, ptr noundef captures(address_is_null) %3, i32 noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [2048 x i8], align 16             ; 4 uses
  %5 = alloca %struct.stbi__result_info, align 4  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #47
  %i.b = call fastcc noundef ptr @_ZL15stbi__load_mainP13stbi__contextPiS1_S1_iP17stbi__result_infoi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %5, align 4
  %.not = icmp eq i32 %i.d, 16
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %1, align 4
  %i.f = load i32, ptr %2, align 4
  %i.g = icmp eq i32 %4, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %3, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.i = phi i32 [ %i.h, %bb.d ], [ %4, %bb.c ]
  %i.j = mul nsw i32 %i.f, %i.e
  %i.k = mul nsw i32 %i.j, %i.i                   ; 5 uses
  %i.l = shl nsw i32 %i.k, 1
  %i.m = sext i32 %i.l to i64
  %i.n = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -2147483648, 4294967296) %i.m) #50 ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.p = icmp sgt i32 %i.k, 0
  br i1 %i.p, label %iter.check, label %._crit_edge.i

end_hunk_0
