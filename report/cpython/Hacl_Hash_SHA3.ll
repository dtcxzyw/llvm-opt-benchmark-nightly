begin_hunk_0
@.str.1 = private unnamed_addr constant [34 x i8] c"../Modules/_hacl/Hacl_Hash_SHA3.c\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"KaRaMeL incomplete match at %s:%d\0A\00", align 1
@switch.table.digest_.19 = private unnamed_addr constant [6 x i64] [i64 136, i64 144, i64 104, i64 72, i64 168, i64 136], align 8
@switch.table.digest_.20 = private unnamed_addr constant [4 x i32] [i32 136, i32 144, i32 104, i32 72], align 4
@switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len = private unnamed_addr constant [6 x i32] [i32 136, i32 144, i32 104, i32 72, i32 168, i32 136], align 4
end_hunk_0
begin_hunk_1
; Function Attrs: nofree nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext %0, ptr noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 9 uses
  %switch.tableidx = add i8 %0, -8                ; 2 uses
  %4 = icmp ult i8 %switch.tableidx, 6
  br i1 %4, label %switch.lookup.a, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !10
end_hunk_1
begin_hunk_2
  tail call void @exit(i32 noundef 253) #19
  unreachable

switch.lookup.a:                                  ; preds = %bb.a
  %5 = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %5
  %switch.load = load i32, ptr %switch.gep, align 4
  %6 = mul i32 %switch.load, %3
  %7 = zext nneg i8 %0 to i64
  %i.d = getelementptr [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %7
  %switch.gep49 = getelementptr i8, ptr %i.d, i64 -32
  %switch.load50 = load i32, ptr %switch.gep49, align 4
  %i.e = udiv i32 %6, %switch.load50
  %i.f = zext nneg i32 %i.e to i64
  br label %switch.lookup48

switch.lookup48:                                  ; preds = %block_len.exit23, %switch.lookup.a
  %indvars.iv = phi i64 [ %indvars.iv.next.a, %block_len.exit23 ], [ 0, %switch.lookup.a ] ; 7 uses
  %8 = icmp samesign ult i64 %indvars.iv, %i.f
  br i1 %8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %switch.lookup48
  ret void

bb.d:                                             ; preds = %switch.lookup48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  switch i8 %0, label %bb.e [
    i8 9, label %block_len.exit19.thread.a
    i8 8, label %block_len.exit19
    i8 10, label %block_len.exit19.thread25.a
    i8 11, label %block_len.exit19.thread27.a
    i8 12, label %block_len.exit19.thread29.a
    i8 13, label %block_len.exit19
  ]

block_len.exit19.thread.a:                        ; preds = %bb.d
  %i.g = mul nuw nsw i64 %indvars.iv, 144
  %i.h = and i64 %i.g, 4294967280
  %i.i = getelementptr i8, ptr %2, i64 %i.h
  br label %block_len.exit21.thread

block_len.exit19.thread25.a:                      ; preds = %bb.d
  %i.j = mul nuw nsw i64 %indvars.iv, 104
  %i.k = and i64 %i.j, 4294967288
  %i.l = getelementptr i8, ptr %2, i64 %i.k
  br label %block_len.exit21.thread34

block_len.exit19.thread27.a:                      ; preds = %bb.d
  %i.m = mul nuw nsw i64 %indvars.iv, 72
  %i.n = getelementptr i8, ptr %2, i64 %i.m
  br label %block_len.exit21.thread38

block_len.exit19.thread29.a:                      ; preds = %bb.d
  %i.o = mul nuw nsw i64 %indvars.iv, 168
  %i.p = and i64 %i.o, 4294967288
  %i.q = getelementptr i8, ptr %2, i64 %i.p
  br label %block_len.exit21.thread42

bb.e:                                             ; preds = %bb.d
  %9 = load ptr, ptr @stderr, align 8, !tbaa !10
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #18 ; 0 uses
  tail call void @exit(i32 noundef 253) #19
  unreachable

block_len.exit19:                                 ; preds = %bb.d, %bb.d
  %11 = mul nuw nsw i64 %indvars.iv, 136
  %12 = and i64 %11, 4294967288
  %13 = getelementptr i8, ptr %2, i64 %12         ; 5 uses
  switch i8 %0, label %default.unreachable44 [
    i8 9, label %block_len.exit21.thread
    i8 8, label %block_len.exit21
    i8 10, label %block_len.exit21.thread34
    i8 11, label %block_len.exit21.thread38
    i8 12, label %block_len.exit21.thread42
    i8 13, label %block_len.exit21
  ]

default.unreachable44:                            ; preds = %block_len.exit19
  unreachable

block_len.exit21.thread:                          ; preds = %block_len.exit19.thread.a, %block_len.exit19
  %.ph = phi ptr [ %i.i, %block_len.exit19.thread.a ], [ %13, %block_len.exit19 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, ptr noundef nonnull align 1 dereferenceable(144) %.ph, i64 144, i1 false)
  br label %block_len.exit23

block_len.exit21.thread34:                        ; preds = %block_len.exit19.thread25.a, %block_len.exit19
  %.ph33 = phi ptr [ %i.l, %block_len.exit19.thread25.a ], [ %13, %block_len.exit19 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.a, ptr noundef nonnull align 1 dereferenceable(104) %.ph33, i64 104, i1 false)
  br label %block_len.exit23

block_len.exit21.thread38:                        ; preds = %block_len.exit19.thread27.a, %block_len.exit19
  %.ph37 = phi ptr [ %i.n, %block_len.exit19.thread27.a ], [ %13, %block_len.exit19 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, ptr noundef nonnull align 1 dereferenceable(72) %.ph37, i64 72, i1 false)
  br label %block_len.exit23

block_len.exit21.thread42:                        ; preds = %block_len.exit19.thread29.a, %block_len.exit19
  %.ph41 = phi ptr [ %i.q, %block_len.exit19.thread29.a ], [ %13, %block_len.exit19 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.a, ptr noundef nonnull align 1 dereferenceable(168) %.ph41, i64 168, i1 false)
  br label %block_len.exit23

block_len.exit21:                                 ; preds = %block_len.exit19, %block_len.exit19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %i.a, ptr noundef nonnull align 1 dereferenceable(136) %13, i64 136, i1 false)
  br label %block_len.exit23

block_len.exit23:                                 ; preds = %block_len.exit21, %block_len.exit21.thread42, %block_len.exit21.thread38, %block_len.exit21.thread34, %block_len.exit21.thread
  call fastcc void @absorb_inner_32(ptr noundef %i.a, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv, 1
  br label %switch.lookup48, !llvm.loop !13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_2
begin_hunk_3
  %3 = alloca %struct.Hacl_Hash_SHA3_hash_buf_s, align 8 ; 2 uses
  %.sroa.697 = alloca [7 x i8], align 1           ; 2 uses
  %4 = alloca %struct.Hacl_Hash_SHA3_hash_buf_s, align 8 ; 3 uses
  %.sroa.0159.0.copyload = load i8, ptr %0, align 8, !tbaa !18 ; 28 uses
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
end_hunk_3
begin_hunk_4

block_len.exit232.thread:                         ; preds = %bb.j
  %i.ak = add i32 %2, -144
  br label %block_len.exit236.thread

block_len.exit232.thread294:                      ; preds = %bb.j
  %i.al = add i32 %2, -104
  br label %block_len.exit236.thread303

block_len.exit232.thread296:                      ; preds = %bb.j
  %i.am = add i32 %2, -72
  br label %block_len.exit236.thread307

block_len.exit232.thread298:                      ; preds = %bb.j
  %i.an = add i32 %2, -168
  br label %block_len.exit236.thread311

default.unreachable367:                           ; preds = %bb.j
  unreachable
end_hunk_4
begin_hunk_5

block_len.exit232:                                ; preds = %bb.j, %bb.j, %switch.lookup426
  %.0197 = phi i32 [ %i.aq, %switch.lookup426 ], [ 136, %bb.j ], [ 136, %bb.j ]
  %i.ar = sub i32 %2, %.0197                      ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable368 [
    i8 9, label %block_len.exit236.thread
    i8 8, label %block_len.exit236
    i8 10, label %block_len.exit236.thread303
    i8 11, label %block_len.exit236.thread307
    i8 12, label %block_len.exit236.thread311
    i8 13, label %block_len.exit236
  ]

default.unreachable368:                           ; preds = %block_len.exit232
  unreachable

block_len.exit236.thread:                         ; preds = %block_len.exit232.thread, %block_len.exit232
  %.ph = phi i32 [ %i.ak, %block_len.exit232.thread ], [ %i.ar, %block_len.exit232 ]
  %5 = udiv i32 %.ph, 144
  br label %block_len.exit238.thread

block_len.exit236.thread303:                      ; preds = %block_len.exit232.thread294, %block_len.exit232
  %.ph302 = phi i32 [ %i.al, %block_len.exit232.thread294 ], [ %i.ar, %block_len.exit232 ]
  %6 = udiv i32 %.ph302, 104
  br label %block_len.exit238.thread317

block_len.exit236.thread307:                      ; preds = %block_len.exit232.thread296, %block_len.exit232
  %.ph306 = phi i32 [ %i.am, %block_len.exit232.thread296 ], [ %i.ar, %block_len.exit232 ]
  %7 = udiv i32 %.ph306, 72
  br label %block_len.exit238.thread321

block_len.exit236.thread311:                      ; preds = %block_len.exit232.thread298, %block_len.exit232
  %.ph310 = phi i32 [ %i.an, %block_len.exit232.thread298 ], [ %i.ar, %block_len.exit232 ]
  %8 = udiv i32 %.ph310, 168
  br label %block_len.exit238.thread325

block_len.exit236:                                ; preds = %block_len.exit232, %block_len.exit232
  %9 = udiv i32 %i.ar, 136                        ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable369 [
    i8 9, label %block_len.exit238.thread
    i8 8, label %block_len.exit238
    i8 10, label %block_len.exit238.thread317
    i8 11, label %block_len.exit238.thread321
    i8 12, label %block_len.exit238.thread325
    i8 13, label %block_len.exit238
  ]

default.unreachable369:                           ; preds = %block_len.exit236
  unreachable

block_len.exit238.thread:                         ; preds = %block_len.exit236.thread, %block_len.exit236
  %.ph313 = phi i32 [ %5, %block_len.exit236.thread ], [ %9, %block_len.exit236 ]
  %10 = mul i32 %.ph313, 144                      ; 2 uses
  %i.as = zext i32 %10 to i64
  %i.at = getelementptr i8, ptr %1, i64 %i.as
  br label %block_len.exit240

block_len.exit238.thread317:                      ; preds = %block_len.exit236.thread303, %block_len.exit236
  %.ph316 = phi i32 [ %6, %block_len.exit236.thread303 ], [ %9, %block_len.exit236 ]
  %11 = mul nuw i32 %.ph316, 104                  ; 2 uses
  %i.au = zext i32 %11 to i64
  %i.av = getelementptr i8, ptr %1, i64 %i.au
  br label %block_len.exit240

block_len.exit238.thread321:                      ; preds = %block_len.exit236.thread307, %block_len.exit236
  %.ph320 = phi i32 [ %7, %block_len.exit236.thread307 ], [ %9, %block_len.exit236 ]
  %12 = mul nuw i32 %.ph320, 72                   ; 2 uses
  %i.aw = zext i32 %12 to i64
  %i.ax = getelementptr i8, ptr %1, i64 %i.aw
  br label %block_len.exit240

block_len.exit238.thread325:                      ; preds = %block_len.exit236.thread311, %block_len.exit236
  %.ph324 = phi i32 [ %8, %block_len.exit236.thread311 ], [ %9, %block_len.exit236 ]
  %13 = mul i32 %.ph324, 168                      ; 2 uses
  %i.ay = zext i32 %13 to i64
  %i.az = getelementptr i8, ptr %1, i64 %i.ay
  br label %block_len.exit240

block_len.exit238:                                ; preds = %block_len.exit236, %block_len.exit236
  %14 = mul nuw i32 %9, 136                       ; 6 uses
  %i.ba = zext i32 %14 to i64
  %i.bb = getelementptr i8, ptr %1, i64 %i.ba     ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable370 [
    i8 9, label %block_len.exit240
    i8 8, label %15
    i8 10, label %16
    i8 11, label %17
    i8 12, label %18
    i8 13, label %15
  ]

15:                                               ; preds = %block_len.exit238, %block_len.exit238
  br label %block_len.exit240

16:                                               ; preds = %block_len.exit238
  br label %block_len.exit240

17:                                               ; preds = %block_len.exit238
  br label %block_len.exit240

18:                                               ; preds = %block_len.exit238
  br label %block_len.exit240

default.unreachable370:                           ; preds = %block_len.exit238
  unreachable

block_len.exit240:                                ; preds = %block_len.exit238.thread325, %block_len.exit238.thread321, %block_len.exit238.thread317, %block_len.exit238.thread, %block_len.exit238, %15, %16, %17, %18
  %19 = phi ptr [ %i.bb, %block_len.exit238 ], [ %i.bb, %15 ], [ %i.at, %block_len.exit238.thread ], [ %i.bb, %16 ], [ %i.bb, %17 ], [ %i.av, %block_len.exit238.thread317 ], [ %i.ax, %block_len.exit238.thread321 ], [ %i.az, %block_len.exit238.thread325 ], [ %i.bb, %18 ]
  %20 = phi i32 [ %14, %block_len.exit238 ], [ %14, %15 ], [ %10, %block_len.exit238.thread ], [ %14, %16 ], [ %14, %17 ], [ %11, %block_len.exit238.thread317 ], [ %12, %block_len.exit238.thread321 ], [ %13, %block_len.exit238.thread325 ], [ %14, %18 ] ; 2 uses
  %.0.i239 = phi i32 [ 144, %block_len.exit238 ], [ 136, %15 ], [ 144, %block_len.exit238.thread ], [ 104, %16 ], [ 72, %17 ], [ 104, %block_len.exit238.thread317 ], [ 72, %block_len.exit238.thread321 ], [ 168, %block_len.exit238.thread325 ], [ 168, %18 ]
  %i.bc = sub i32 %2, %20
  %i.bd = udiv i32 %20, %.0.i239
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext %.sroa.0159.0.copyload, ptr noundef %.sroa.5103.0.copyload, ptr noundef %1, i32 noundef %i.bd)
  %i.be = zext i32 %i.bc to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.6104.0.copyload, ptr align 1 %19, i64 %i.be, i1 false)
  %i.bf = add i64 %.sroa.5162.0.copyload, %i.a
  store i8 %.sroa.0159.0.copyload, ptr %0, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4160.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.697, i64 7, i1 false)
end_hunk_5
begin_hunk_6
  unreachable

block_len.exit242:                                ; preds = %bb.k, %bb.k
  %i.bs = sub nsw i32 136, %.0194272              ; 6 uses
  %i.bt = zext i32 %i.bs to i64                   ; 6 uses
  %i.bu = getelementptr i8, ptr %1, i64 %i.bt     ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable389 [
    i8 9, label %block_len.exit244
    i8 8, label %21
    i8 10, label %22
    i8 11, label %23
    i8 12, label %24
    i8 13, label %21
  ]

21:                                               ; preds = %block_len.exit242, %block_len.exit242
  br label %block_len.exit244

22:                                               ; preds = %block_len.exit242
  br label %block_len.exit244

23:                                               ; preds = %block_len.exit242
  br label %block_len.exit244

24:                                               ; preds = %block_len.exit242
  br label %block_len.exit244

default.unreachable389:                           ; preds = %block_len.exit242
  unreachable

block_len.exit244:                                ; preds = %block_len.exit242.thread338, %block_len.exit242.thread334, %block_len.exit242.thread330, %block_len.exit242.thread, %block_len.exit242, %21, %22, %23, %24
  %25 = phi ptr [ %i.bu, %block_len.exit242 ], [ %i.bu, %21 ], [ %i.bi, %block_len.exit242.thread ], [ %i.bu, %22 ], [ %i.bu, %23 ], [ %i.bl, %block_len.exit242.thread330 ], [ %i.bo, %block_len.exit242.thread334 ], [ %i.br, %block_len.exit242.thread338 ], [ %i.bu, %24 ] ; 2 uses
  %26 = phi i64 [ %i.bt, %block_len.exit242 ], [ %i.bt, %21 ], [ %i.bh, %block_len.exit242.thread ], [ %i.bt, %22 ], [ %i.bt, %23 ], [ %i.bk, %block_len.exit242.thread330 ], [ %i.bn, %block_len.exit242.thread334 ], [ %i.bq, %block_len.exit242.thread338 ], [ %i.bt, %24 ] ; 2 uses
  %27 = phi i32 [ %i.bs, %block_len.exit242 ], [ %i.bs, %21 ], [ %i.bg, %block_len.exit242.thread ], [ %i.bs, %22 ], [ %i.bs, %23 ], [ %i.bj, %block_len.exit242.thread330 ], [ %i.bm, %block_len.exit242.thread334 ], [ %i.bp, %block_len.exit242.thread338 ], [ %i.bs, %24 ] ; 2 uses
  %.0.i243 = phi i64 [ 144, %block_len.exit242 ], [ 136, %21 ], [ 144, %block_len.exit242.thread ], [ 104, %22 ], [ 72, %23 ], [ 104, %block_len.exit242.thread330 ], [ 72, %block_len.exit242.thread334 ], [ 168, %block_len.exit242.thread338 ], [ 168, %24 ]
  %i.bv = urem i64 %.sroa.5162.0.copyload, %.0.i243
  %i.bw = icmp eq i64 %i.bv, 0
  %or.cond10 = and i1 %i.j, %i.bw
end_hunk_6
begin_hunk_7
block_len.exit246:                                ; preds = %switch.lookup430, %switch.lookup434
  %.0198 = phi i64 [ %i.by, %switch.lookup434 ], [ %switch.load432, %switch.lookup430 ]
  %i.bz = getelementptr i8, ptr %.sroa.454.0.copyload328, i64 %.0198
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr align 1 %1, i64 %26, i1 false)
  %i.ca = add i64 %26, %.sroa.5162.0.copyload     ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  store ptr %.sroa.454.0.copyload328, ptr %.sroa.5161.0..sroa_idx, align 8, !tbaa !21
  store i64 %i.ca, ptr %.sroa.5162.0..sroa_idx, align 8, !tbaa !15
end_hunk_7
begin_hunk_8
  br label %switch.lookup448

switch.lookup448:                                 ; preds = %switch.lookup460, %switch.lookup442
  %i.cr = sub i32 %2, %27                         ; 9 uses
  %i.cs = zext i32 %i.cr to i64
  %i.ct = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.cu = getelementptr [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.ct
end_hunk_8
begin_hunk_9
  %switch.load450 = load i32, ptr %switch.gep449, align 4
  %i.cv = urem i32 %i.cr, %switch.load450
  %i.cw = icmp ne i32 %i.cv, 0
  %.not203 = icmp eq i32 %2, %27
  %or.cond206 = select i1 %i.cw, i1 true, i1 %.not203
  br i1 %or.cond206, label %switch.lookup452, label %bb.m

end_hunk_9
begin_hunk_10
  br label %block_len.exit268

block_len.exit266:                                ; preds = %block_len.exit262, %block_len.exit262
  %i.dj = udiv i32 %i.de, 136                     ; 5 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable385 [
    i8 9, label %block_len.exit268
    i8 8, label %28
    i8 10, label %29
    i8 11, label %30
    i8 12, label %31
    i8 13, label %28
  ]

28:                                               ; preds = %block_len.exit266, %block_len.exit266
  br label %block_len.exit268

29:                                               ; preds = %block_len.exit266
  br label %block_len.exit268

30:                                               ; preds = %block_len.exit266
  br label %block_len.exit268

31:                                               ; preds = %block_len.exit266
  br label %block_len.exit268

default.unreachable385:                           ; preds = %block_len.exit266
  unreachable

block_len.exit268:                                ; preds = %block_len.exit266.thread361, %block_len.exit266.thread357, %block_len.exit266.thread353, %block_len.exit266.thread, %block_len.exit266, %28, %29, %30, %31
  %32 = phi i32 [ %i.dj, %block_len.exit266 ], [ %i.dj, %28 ], [ %i.df, %block_len.exit266.thread ], [ %i.dj, %29 ], [ %i.dj, %30 ], [ %i.dg, %block_len.exit266.thread353 ], [ %i.dh, %block_len.exit266.thread357 ], [ %i.di, %block_len.exit266.thread361 ], [ %i.dj, %31 ]
  %.0.i267 = phi i32 [ 144, %block_len.exit266 ], [ 136, %28 ], [ 144, %block_len.exit266.thread ], [ 104, %29 ], [ 72, %30 ], [ 104, %block_len.exit266.thread353 ], [ 72, %block_len.exit266.thread357 ], [ 168, %block_len.exit266.thread361 ], [ 168, %31 ]
  %switch.tableidx455 = add i8 %.sroa.0.0.copyload, -8 ; 2 uses
  %i.dk = icmp ult i8 %switch.tableidx455, 6
  br i1 %i.dk, label %switch.lookup456, label %bb.n
end_hunk_10
begin_hunk_11
  unreachable

switch.lookup456:                                 ; preds = %block_len.exit268
  %i.dn = mul i32 %.0.i267, %32                   ; 3 uses
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr i8, ptr %25, i64 %i.do
  %i.dq = sub i32 %i.cr, %i.dn
  %i.dr = zext nneg i8 %switch.tableidx455 to i64
  %switch.gep457 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.dr
  %switch.load458 = load i32, ptr %switch.gep457, align 4
  %i.ds = udiv i32 %i.dn, %switch.load458
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext %.sroa.0.0.copyload, ptr noundef %.sroa.5.0.copyload, ptr noundef %25, i32 noundef %i.ds)
  %i.dt = zext i32 %i.dq to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.454.0.copyload328, ptr align 1 %i.dp, i64 %i.dt, i1 false)
  %i.du = add i64 %i.ca, %i.cs
end_hunk_11
