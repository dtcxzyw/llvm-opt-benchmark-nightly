begin_hunk_0
@.str.1 = private unnamed_addr constant [34 x i8] c"../Modules/_hacl/Hacl_Hash_SHA3.c\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"KaRaMeL incomplete match at %s:%d\0A\00", align 1
@switch.table._Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3.2 = private unnamed_addr constant [4 x i32] [i32 144, i32 104, i32 72, i32 168], align 4
@switch.table.digest_.19 = private unnamed_addr constant [6 x i64] [i64 136, i64 144, i64 104, i64 72, i64 168, i64 136], align 8
@switch.table.digest_.20 = private unnamed_addr constant [4 x i32] [i32 136, i32 144, i32 104, i32 72], align 4
@switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len = private unnamed_addr constant [6 x i32] [i32 136, i32 144, i32 104, i32 72, i32 168, i32 136], align 4
end_hunk_0
begin_hunk_1
; Function Attrs: nofree nounwind uwtable
define hidden void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext %0, ptr noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 17 uses
  switch i8 %0, label %bb.b [
    i8 9, label %block_len.exit.thread
    i8 8, label %block_len.exit
    i8 10, label %4
    i8 11, label %5
    i8 12, label %6
    i8 13, label %block_len.exit
  ]

4:                                                ; preds = %bb.a
  br label %block_len.exit.thread

5:                                                ; preds = %bb.a
  br label %block_len.exit.thread

6:                                                ; preds = %bb.a
  br label %block_len.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !10
end_hunk_1
begin_hunk_2
  tail call void @exit(i32 noundef 253) #19
  unreachable

block_len.exit.thread:                            ; preds = %bb.a, %4, %5, %6
  %.0.i.ph = phi i32 [ 168, %6 ], [ 72, %5 ], [ 104, %4 ], [ 144, %bb.a ]
  %7 = mul i32 %.0.i.ph, %3
  br label %switch.lookup.a

block_len.exit:                                   ; preds = %bb.a, %bb.a
  %8 = mul i32 %3, 136                            ; 2 uses
  %.off = add nsw i8 %0, -9
  %switch = icmp ult i8 %.off, 4
  br i1 %switch, label %switch.lookup.a, label %block_len.exit.split.us.split.preheader

block_len.exit.split.us.split.preheader:          ; preds = %block_len.exit
  %switch.tableidx = add i8 %0, -9                ; 2 uses
  %9 = icmp ult i8 %switch.tableidx, 4
  %10 = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3.2, i64 %10
  br label %switch.lookup48

switch.lookup.a:                                  ; preds = %block_len.exit.thread, %block_len.exit
  %11 = phi i32 [ %7, %block_len.exit.thread ], [ %8, %block_len.exit ]
  %12 = sext i8 %0 to i64
  %i.d = getelementptr [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3.2, i64 %12
  %switch.gep49 = getelementptr i8, ptr %i.d, i64 -36
  %switch.load50 = load i32, ptr %switch.gep49, align 4
  %i.e = udiv i32 %11, %switch.load50
  %i.f = zext nneg i32 %i.e to i64
  br label %block_len.exit19

switch.lookup48:                                  ; preds = %block_len.exit.split.us.split.preheader, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %block_len.exit.split.us.split.preheader ] ; 7 uses
  br i1 %9, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %switch.lookup48
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup48, %switch.lookup
  %.0.i16.us = phi i32 [ %switch.load, %switch.lookup ], [ 136, %switch.lookup48 ]
  %13 = udiv i32 %8, %.0.i16.us
  %14 = zext nneg i32 %13 to i64
  %15 = icmp samesign ult i64 %indvars.iv, %14
  br i1 %15, label %bb.d, label %default.unreachable44

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  switch i8 %0, label %.split45.us [
    i8 9, label %block_len.exit19.thread29.a
    i8 12, label %block_len.exit19.thread27.a
    i8 10, label %block_len.exit19.thread25.a
    i8 11, label %block_len.exit19.thread27.us
    i8 13, label %block_len.exit19.thread.a
    i8 8, label %block_len.exit19.thread.a
  ]

block_len.exit19.thread.a:                        ; preds = %bb.d, %bb.d
  %i.g = mul nuw nsw i64 %indvars.iv, 136
  %i.h = and i64 %i.g, 4294967288
  %i.i = getelementptr i8, ptr %2, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %i.a, ptr noundef nonnull align 1 dereferenceable(136) %i.i, i64 136, i1 false)
  br label %bb.e

block_len.exit19.thread27.us:                     ; preds = %bb.d
  %16 = mul nuw nsw i64 %indvars.iv, 72
  %17 = getelementptr i8, ptr %2, i64 %16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, ptr noundef nonnull align 1 dereferenceable(72) %17, i64 72, i1 false)
  br label %bb.e

block_len.exit19.thread25.a:                      ; preds = %bb.d
  %i.j = mul nuw nsw i64 %indvars.iv, 104
  %i.k = and i64 %i.j, 4294967288
  %i.l = getelementptr i8, ptr %2, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.a, ptr noundef nonnull align 1 dereferenceable(104) %i.l, i64 104, i1 false)
  br label %bb.e

block_len.exit19.thread27.a:                      ; preds = %bb.d
  %i.m = mul nuw nsw i64 %indvars.iv, 168
  %18 = and i64 %i.m, 4294967288
  %i.n = getelementptr i8, ptr %2, i64 %18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.a, ptr noundef nonnull align 1 dereferenceable(168) %i.n, i64 168, i1 false)
  br label %bb.e

block_len.exit19.thread29.a:                      ; preds = %bb.d
  %i.o = mul nuw nsw i64 %indvars.iv, 144
  %i.p = and i64 %i.o, 4294967280
  %i.q = getelementptr i8, ptr %2, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, ptr noundef nonnull align 1 dereferenceable(144) %i.q, i64 144, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %block_len.exit19.thread.a, %block_len.exit19.thread29.a, %block_len.exit19.thread27.a, %block_len.exit19.thread25.a, %block_len.exit19.thread27.us
  call fastcc void @absorb_inner_32(ptr noundef %i.a, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %switch.lookup48, !llvm.loop !13

block_len.exit19:                                 ; preds = %switch.lookup.a, %block_len.exit23
  %indvars.iv54 = phi i64 [ 0, %switch.lookup.a ], [ %indvars.iv.next.a, %block_len.exit23 ] ; 6 uses
  %19 = icmp samesign ult i64 %indvars.iv54, %i.f
  br i1 %19, label %block_len.exit21.thread, label %default.unreachable44

default.unreachable44:                            ; preds = %bb.c, %block_len.exit19
  ret void

block_len.exit21.thread:                          ; preds = %block_len.exit19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  switch i8 %0, label %default.unreachable60 [
    i8 9, label %block_len.exit21.thread34
    i8 12, label %block_len.exit21
    i8 10, label %block_len.exit21.thread38
    i8 11, label %block_len.exit21.thread42
  ]

block_len.exit21.thread34:                        ; preds = %block_len.exit21.thread
  %20 = mul nuw nsw i64 %indvars.iv54, 144
  %21 = and i64 %20, 4294967280
  %22 = getelementptr i8, ptr %2, i64 %21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, ptr noundef nonnull align 1 dereferenceable(144) %22, i64 144, i1 false)
  br label %block_len.exit23

block_len.exit21.thread38:                        ; preds = %block_len.exit21.thread
  %23 = mul nuw nsw i64 %indvars.iv54, 104
  %24 = and i64 %23, 4294967288
  %25 = getelementptr i8, ptr %2, i64 %24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.a, ptr noundef nonnull align 1 dereferenceable(104) %25, i64 104, i1 false)
  br label %block_len.exit23

block_len.exit21.thread42:                        ; preds = %block_len.exit21.thread
  %26 = mul nuw nsw i64 %indvars.iv54, 72
  %27 = getelementptr i8, ptr %2, i64 %26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, ptr noundef nonnull align 1 dereferenceable(72) %27, i64 72, i1 false)
  br label %block_len.exit23

block_len.exit21:                                 ; preds = %block_len.exit21.thread
  %28 = mul nuw nsw i64 %indvars.iv54, 168
  %29 = and i64 %28, 4294967288
  %30 = getelementptr i8, ptr %2, i64 %29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(168) %i.a, ptr noundef nonnull align 1 dereferenceable(168) %30, i64 168, i1 false)
  br label %block_len.exit23

default.unreachable60:                            ; preds = %block_len.exit21.thread
  unreachable

.split45.us:                                      ; preds = %bb.d
  %31 = load ptr, ptr @stderr, align 8, !tbaa !10
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #18 ; 0 uses
  tail call void @exit(i32 noundef 253) #19
  unreachable

block_len.exit23:                                 ; preds = %block_len.exit21, %block_len.exit21.thread42, %block_len.exit21.thread38, %block_len.exit21.thread34
  call fastcc void @absorb_inner_32(ptr noundef %i.a, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv54, 1
  br label %block_len.exit19, !llvm.loop !13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_2
begin_hunk_3
  %3 = alloca %struct.Hacl_Hash_SHA3_hash_buf_s, align 8 ; 2 uses
  %.sroa.697 = alloca [7 x i8], align 1           ; 2 uses
  %4 = alloca %struct.Hacl_Hash_SHA3_hash_buf_s, align 8 ; 3 uses
  %.sroa.0159.0.copyload = load i8, ptr %0, align 8, !tbaa !18 ; 27 uses
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
end_hunk_3
begin_hunk_4

block_len.exit232.thread:                         ; preds = %bb.j
  %i.ak = add i32 %2, -144
  br label %block_len.exit238.thread

block_len.exit232.thread294:                      ; preds = %bb.j
  %i.al = add i32 %2, -104
  br label %block_len.exit238.thread317

block_len.exit232.thread296:                      ; preds = %bb.j
  %i.am = add i32 %2, -72
  br label %block_len.exit238.thread321

block_len.exit232.thread298:                      ; preds = %bb.j
  %i.an = add i32 %2, -168
  br label %block_len.exit238.thread325

default.unreachable367:                           ; preds = %bb.j
  unreachable
end_hunk_4
begin_hunk_5

block_len.exit232:                                ; preds = %bb.j, %bb.j, %switch.lookup426
  %.0197 = phi i32 [ %i.aq, %switch.lookup426 ], [ 136, %bb.j ], [ 136, %bb.j ]
  %i.ar = sub i32 %2, %.0197                      ; 6 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable369 [
    i8 9, label %block_len.exit238.thread
    i8 12, label %block_len.exit238.thread325
    i8 10, label %block_len.exit238.thread317
    i8 11, label %block_len.exit238.thread321
    i8 13, label %block_len.exit238
    i8 8, label %block_len.exit238
  ]

default.unreachable369:                           ; preds = %block_len.exit232
  unreachable

block_len.exit238.thread:                         ; preds = %block_len.exit232, %block_len.exit232.thread
  %.ph313 = phi i32 [ %i.ak, %block_len.exit232.thread ], [ %i.ar, %block_len.exit232 ] ; 2 uses
  %5 = urem i32 %.ph313, 144
  %6 = sub nuw i32 %.ph313, %5                    ; 2 uses
  %i.as = zext i32 %6 to i64
  %i.at = getelementptr i8, ptr %1, i64 %i.as
  br label %block_len.exit240

block_len.exit238.thread317:                      ; preds = %block_len.exit232, %block_len.exit232.thread294
  %.ph316 = phi i32 [ %i.al, %block_len.exit232.thread294 ], [ %i.ar, %block_len.exit232 ] ; 2 uses
  %7 = urem i32 %.ph316, 104
  %8 = sub nuw i32 %.ph316, %7                    ; 2 uses
  %i.au = zext i32 %8 to i64
  %i.av = getelementptr i8, ptr %1, i64 %i.au
  br label %block_len.exit240

block_len.exit238.thread321:                      ; preds = %block_len.exit232, %block_len.exit232.thread296
  %.ph320 = phi i32 [ %i.am, %block_len.exit232.thread296 ], [ %i.ar, %block_len.exit232 ] ; 2 uses
  %9 = urem i32 %.ph320, 72
  %10 = sub nuw i32 %.ph320, %9                   ; 2 uses
  %i.aw = zext i32 %10 to i64
  %i.ax = getelementptr i8, ptr %1, i64 %i.aw
  br label %block_len.exit240

block_len.exit238.thread325:                      ; preds = %block_len.exit232, %block_len.exit232.thread298
  %.ph324 = phi i32 [ %i.an, %block_len.exit232.thread298 ], [ %i.ar, %block_len.exit232 ] ; 2 uses
  %11 = urem i32 %.ph324, 168
  %12 = sub nuw i32 %.ph324, %11                  ; 2 uses
  %i.ay = zext i32 %12 to i64
  %i.az = getelementptr i8, ptr %1, i64 %i.ay
  br label %block_len.exit240

block_len.exit238:                                ; preds = %block_len.exit232, %block_len.exit232
  %13 = urem i32 %i.ar, 136
  %14 = sub nuw i32 %i.ar, %13                    ; 3 uses
  %i.ba = zext i32 %14 to i64
  %i.bb = getelementptr i8, ptr %1, i64 %i.ba     ; 2 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable370 [
    i8 13, label %block_len.exit240
    i8 8, label %block_len.exit240
  ]

default.unreachable370:                           ; preds = %block_len.exit238
  %15 = load ptr, ptr @stderr, align 8, !tbaa !10
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #18 ; 0 uses
  tail call void @exit(i32 noundef 253) #19
  unreachable

block_len.exit240:                                ; preds = %block_len.exit238, %block_len.exit238, %block_len.exit238.thread325, %block_len.exit238.thread321, %block_len.exit238.thread317, %block_len.exit238.thread
  %17 = phi ptr [ %i.av, %block_len.exit238.thread317 ], [ %i.ax, %block_len.exit238.thread321 ], [ %i.at, %block_len.exit238.thread ], [ %i.az, %block_len.exit238.thread325 ], [ %i.bb, %block_len.exit238 ], [ %i.bb, %block_len.exit238 ]
  %18 = phi i32 [ %8, %block_len.exit238.thread317 ], [ %10, %block_len.exit238.thread321 ], [ %6, %block_len.exit238.thread ], [ %12, %block_len.exit238.thread325 ], [ %14, %block_len.exit238 ], [ %14, %block_len.exit238 ] ; 2 uses
  %.0.i239 = phi i32 [ 104, %block_len.exit238.thread317 ], [ 72, %block_len.exit238.thread321 ], [ 144, %block_len.exit238.thread ], [ 168, %block_len.exit238.thread325 ], [ 136, %block_len.exit238 ], [ 136, %block_len.exit238 ]
  %i.bc = sub i32 %2, %18
  %i.bd = udiv i32 %18, %.0.i239
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext %.sroa.0159.0.copyload, ptr noundef %.sroa.5103.0.copyload, ptr noundef %1, i32 noundef %i.bd)
  %i.be = zext i32 %i.bc to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.6104.0.copyload, ptr align 1 %17, i64 %i.be, i1 false)
  %i.bf = add i64 %.sroa.5162.0.copyload, %i.a
  store i8 %.sroa.0159.0.copyload, ptr %0, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4160.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.697, i64 7, i1 false)
end_hunk_5
begin_hunk_6
  unreachable

block_len.exit242:                                ; preds = %bb.k, %bb.k
  %i.bs = sub nsw i32 136, %.0194272              ; 3 uses
  %i.bt = zext i32 %i.bs to i64                   ; 3 uses
  %i.bu = getelementptr i8, ptr %1, i64 %i.bt     ; 2 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable389 [
    i8 13, label %block_len.exit244
    i8 8, label %block_len.exit244
  ]

default.unreachable389:                           ; preds = %block_len.exit242
  %19 = load ptr, ptr @stderr, align 8, !tbaa !10
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #18 ; 0 uses
  tail call void @exit(i32 noundef 253) #19
  unreachable

block_len.exit244:                                ; preds = %block_len.exit242, %block_len.exit242, %block_len.exit242.thread338, %block_len.exit242.thread334, %block_len.exit242.thread330, %block_len.exit242.thread
  %21 = phi ptr [ %i.bl, %block_len.exit242.thread330 ], [ %i.bo, %block_len.exit242.thread334 ], [ %i.bi, %block_len.exit242.thread ], [ %i.br, %block_len.exit242.thread338 ], [ %i.bu, %block_len.exit242 ], [ %i.bu, %block_len.exit242 ] ; 2 uses
  %22 = phi i64 [ %i.bk, %block_len.exit242.thread330 ], [ %i.bn, %block_len.exit242.thread334 ], [ %i.bh, %block_len.exit242.thread ], [ %i.bq, %block_len.exit242.thread338 ], [ %i.bt, %block_len.exit242 ], [ %i.bt, %block_len.exit242 ] ; 2 uses
  %23 = phi i32 [ %i.bj, %block_len.exit242.thread330 ], [ %i.bm, %block_len.exit242.thread334 ], [ %i.bg, %block_len.exit242.thread ], [ %i.bp, %block_len.exit242.thread338 ], [ %i.bs, %block_len.exit242 ], [ %i.bs, %block_len.exit242 ] ; 2 uses
  %.0.i243 = phi i64 [ 104, %block_len.exit242.thread330 ], [ 72, %block_len.exit242.thread334 ], [ 144, %block_len.exit242.thread ], [ 168, %block_len.exit242.thread338 ], [ 136, %block_len.exit242 ], [ 136, %block_len.exit242 ]
  %i.bv = urem i64 %.sroa.5162.0.copyload, %.0.i243
  %i.bw = icmp eq i64 %i.bv, 0
  %or.cond10 = and i1 %i.j, %i.bw
end_hunk_6
begin_hunk_7
block_len.exit246:                                ; preds = %switch.lookup430, %switch.lookup434
  %.0198 = phi i64 [ %i.by, %switch.lookup434 ], [ %switch.load432, %switch.lookup430 ]
  %i.bz = getelementptr i8, ptr %.sroa.454.0.copyload328, i64 %.0198
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bz, ptr align 1 %1, i64 %22, i1 false)
  %i.ca = add i64 %22, %.sroa.5162.0.copyload     ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  store ptr %.sroa.454.0.copyload328, ptr %.sroa.5161.0..sroa_idx, align 8, !tbaa !21
  store i64 %i.ca, ptr %.sroa.5162.0..sroa_idx, align 8, !tbaa !15
end_hunk_7
begin_hunk_8
  br label %switch.lookup448

switch.lookup448:                                 ; preds = %switch.lookup460, %switch.lookup442
  %i.cr = sub i32 %2, %23                         ; 9 uses
  %i.cs = zext i32 %i.cr to i64
  %i.ct = zext nneg i8 %.sroa.0159.0.copyload to i64
  %i.cu = getelementptr [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.ct
end_hunk_8
begin_hunk_9
  %switch.load450 = load i32, ptr %switch.gep449, align 4
  %i.cv = urem i32 %i.cr, %switch.load450
  %i.cw = icmp ne i32 %i.cv, 0
  %.not203 = icmp eq i32 %2, %23
  %or.cond206 = select i1 %i.cw, i1 true, i1 %.not203
  br i1 %or.cond206, label %switch.lookup452, label %bb.m

end_hunk_9
begin_hunk_10
  br label %block_len.exit268

block_len.exit266:                                ; preds = %block_len.exit262, %block_len.exit262
  %i.dj = udiv i32 %i.de, 136                     ; 2 uses
  switch i8 %.sroa.0159.0.copyload, label %default.unreachable385 [
    i8 13, label %block_len.exit268
    i8 8, label %block_len.exit268
  ]

default.unreachable385:                           ; preds = %block_len.exit266
  %24 = load ptr, ptr @stderr, align 8, !tbaa !10
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 206) #18 ; 0 uses
  tail call void @exit(i32 noundef 253) #19
  unreachable

block_len.exit268:                                ; preds = %block_len.exit266, %block_len.exit266, %block_len.exit266.thread361, %block_len.exit266.thread357, %block_len.exit266.thread353, %block_len.exit266.thread
  %26 = phi i32 [ %i.dg, %block_len.exit266.thread353 ], [ %i.dh, %block_len.exit266.thread357 ], [ %i.df, %block_len.exit266.thread ], [ %i.di, %block_len.exit266.thread361 ], [ %i.dj, %block_len.exit266 ], [ %i.dj, %block_len.exit266 ]
  %.0.i267 = phi i32 [ 104, %block_len.exit266.thread353 ], [ 72, %block_len.exit266.thread357 ], [ 144, %block_len.exit266.thread ], [ 168, %block_len.exit266.thread361 ], [ 136, %block_len.exit266 ], [ 136, %block_len.exit266 ]
  %switch.tableidx455 = add i8 %.sroa.0.0.copyload, -8 ; 2 uses
  %i.dk = icmp ult i8 %switch.tableidx455, 6
  br i1 %i.dk, label %switch.lookup456, label %bb.n
end_hunk_10
begin_hunk_11
  unreachable

switch.lookup456:                                 ; preds = %block_len.exit268
  %i.dn = mul i32 %.0.i267, %26                   ; 3 uses
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr i8, ptr %21, i64 %i.do
  %i.dq = sub i32 %i.cr, %i.dn
  %i.dr = zext nneg i8 %switch.tableidx455 to i64
  %switch.gep457 = getelementptr inbounds nuw [4 x i8], ptr @switch.table._Py_LibHacl_Hacl_Hash_SHA3_block_len, i64 %i.dr
  %switch.load458 = load i32, ptr %switch.gep457, align 4
  %i.ds = udiv i32 %i.dn, %switch.load458
  tail call void @_Py_LibHacl_Hacl_Hash_SHA3_update_multi_sha3(i8 noundef zeroext %.sroa.0.0.copyload, ptr noundef %.sroa.5.0.copyload, ptr noundef %21, i32 noundef %i.ds)
  %i.dt = zext i32 %i.dq to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.454.0.copyload328, ptr align 1 %i.dp, i64 %i.dt, i1 false)
  %i.du = add i64 %i.ca, %i.cs
end_hunk_11
