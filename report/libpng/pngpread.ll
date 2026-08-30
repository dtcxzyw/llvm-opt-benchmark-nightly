Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngpread?download=true
inline.NumInlined: 25
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0
@.str.2 = private unnamed_addr constant [39 x i8] c"PNG file corrupted by ASCII conversion\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Missing IHDR before IDAT\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Missing PLTE before IDAT\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Too many IDATs found\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Invalid IHDR length\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Potential overflow of save_buffer\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"Insufficient memory for save_buffer\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"save_buffer error\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Not enough compressed data\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"No IDAT data (internal error)\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Truncated compressed data in IDAT\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"IDAT: ADLER32 checksum mismatch\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Decompression error in IDAT\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Extra compressed data in IDAT\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Extra compression data in IDAT\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"bad adaptive filter value\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"progressive row overflow\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"internal progressive row size calculation error\00", align 1
@png_pass_inc = internal unnamed_addr constant [7 x i8] c"\08\08\04\04\02\02\01", align 1
@png_pass_start = internal unnamed_addr constant [7 x i8] c"\00\04\00\02\00\01\00", align 1
@png_pass_yinc = internal unnamed_addr constant [7 x i8] c"\08\08\08\04\04\02\02", align 1
@png_pass_ystart = internal unnamed_addr constant [7 x i8] c"\00\00\04\00\02\00\01", align 1

; Function Attrs: nounwind uwtable
define void @png_process_data(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 888
  store ptr %2, ptr %i.c, align 8, !tbaa !8, !alias.scope !25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i64 %3, ptr %i.d, align 8, !tbaa !28, !alias.scope !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.f = load i64, ptr %i.e, align 8, !tbaa !29, !alias.scope !25
  %i.g = add i64 %i.f, %3                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 3 uses
  store i64 %i.g, ptr %i.h, align 8, !tbaa !30, !alias.scope !25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 880
  store ptr %2, ptr %i.i, align 8, !tbaa !31, !alias.scope !25
  %.not9 = icmp eq i64 %i.g, 0
  br i1 %.not9, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 936
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %png_process_some_data.exit
  %i.k = load i32, ptr %i.j, align 8, !tbaa !32, !alias.scope !33, !noalias !36
  switch i32 %i.k, label %png_process_some_data.exit.thread [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @png_push_read_sig(ptr noundef nonnull %0, ptr noundef %1)
  br label %png_process_some_data.exit

bb.e:                                             ; preds = %bb.c
  tail call void @png_push_read_chunk(ptr noundef nonnull %0, ptr noundef %1)
  br label %png_process_some_data.exit

bb.f:                                             ; preds = %bb.c
  tail call void @png_push_read_IDAT(ptr noundef nonnull %0), !noalias !36
  br label %png_process_some_data.exit

png_process_some_data.exit.thread:                ; preds = %bb.c
  store i64 0, ptr %i.h, align 8, !tbaa !30, !alias.scope !33, !noalias !36
  br label %.loopexit

png_process_some_data.exit:                       ; preds = %bb.d, %bb.e, %bb.f
  %.pr.pr = load i64, ptr %i.h, align 8, !tbaa !30
  %.not = icmp eq i64 %.pr.pr, 0
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !38

.loopexit:                                        ; preds = %png_process_some_data.exit, %png_process_some_data.exit.thread, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @png_push_restore_buffer(ptr noalias nofree noundef captures(none) initializes((880, 896), (920, 936)) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 888
  store ptr %1, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 928
  store i64 %2, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29
  %i.e = add i64 %i.d, %2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 920
  store i64 %i.e, ptr %i.f, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 880
  store ptr %1, ptr %i.g, align 8, !tbaa !31
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_process_some_data(ptr noalias noundef %0, ptr noalias noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.c = load i32, ptr %i.b, align 8, !tbaa !32
  switch i32 %i.c, label %bb.f [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @png_push_read_sig(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  tail call void @png_push_read_chunk(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  tail call void @png_push_read_IDAT(ptr noundef nonnull %0)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 920
  store i64 0, ptr %i.d, align 8, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @png_process_data_pause(ptr noalias noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not14 = icmp eq i32 %1, 0
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @png_push_save_buffer(ptr noundef nonnull %0)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  store i64 0, ptr %i.a, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.d = load i64, ptr %i.c, align 8, !tbaa !29   ; 2 uses
  %.not15 = icmp ult i64 %i.d, %i.b
  %i.e = sub nuw i64 %i.b, %i.d
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.1 = phi i64 [ 0, %bb.e ], [ %i.e, %bb.d ]
  ret i64 %.1
}

; Function Attrs: nounwind uwtable
define void @png_push_save_buffer(ptr noalias noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29   ; 13 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !41   ; 7 uses
  %.not58 = icmp eq ptr %i.d, %i.f
  br i1 %.not58, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.b
  %i.g = ptrtoaddr ptr %i.f to i64
  %i.h = ptrtoaddr ptr %i.d to i64
  %min.iters.check = icmp ult i64 %i.b, 4
  %i.i = sub i64 %i.h, %i.g
  %diff.check = icmp ugt i64 %i.i, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.preheader.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check71 = icmp ult i64 %i.b, 32
  br i1 %min.iters.check71, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.b, 28
  %n.vec = and i64 %i.b, -32                      ; 6 uses
  %i.k = getelementptr i8, ptr %i.f, i64 %n.vec
  %i.l = getelementptr i8, ptr %i.d, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.f, i64 %index ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.d, i64 %index ; 2 uses
  %i.m = getelementptr i8, ptr %next.gep72, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep72, align 1, !tbaa !42
  %wide.load73 = load <16 x i8>, ptr %i.m, align 1, !tbaa !42
  %i.n = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !42
  store <16 x i8> %wide.load73, ptr %i.n, align 1, !tbaa !42
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec75 = and i64 %i.b, -4                     ; 5 uses
  %i.p = getelementptr i8, ptr %i.f, i64 %n.vec75
  %i.q = getelementptr i8, ptr %i.d, i64 %n.vec75
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index76 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next80, %vec.epilog.vector.body ] ; 3 uses
  %next.gep77 = getelementptr i8, ptr %i.f, i64 %index76
  %next.gep78 = getelementptr i8, ptr %i.d, i64 %index76
  %wide.load79 = load <4 x i8>, ptr %next.gep78, align 1, !tbaa !42
  store <4 x i8> %wide.load79, ptr %next.gep77, align 1, !tbaa !42
  %index.next80 = add nuw i64 %index76, 4         ; 2 uses
  %i.r = icmp eq i64 %index.next80, %n.vec75
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !47

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n81 = icmp eq i64 %i.b, %n.vec75
  br i1 %cmp.n81, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.064.ph = phi ptr [ %i.f, %iter.check ], [ %i.k, %vec.epilog.iter.check ], [ %i.p, %vec.epilog.middle.block ] ; 2 uses
  %.04963.ph = phi ptr [ %i.d, %iter.check ], [ %i.l, %vec.epilog.iter.check ], [ %i.q, %vec.epilog.middle.block ] ; 2 uses
  %.05062.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec75, %vec.epilog.middle.block ] ; 4 uses
  %i.s = sub i64 %i.b, %.05062.ph
  %xtraiter = and i64 %i.s, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.prol.loopexit, label %.preheader.prol

.preheader.prol:                                  ; preds = %.preheader.preheader, %.preheader.prol
  %.064.prol = phi ptr [ %i.w, %.preheader.prol ], [ %.064.ph, %.preheader.preheader ] ; 2 uses
  %.04963.prol = phi ptr [ %i.v, %.preheader.prol ], [ %.04963.ph, %.preheader.preheader ] ; 2 uses
  %.05062.prol = phi i64 [ %i.u, %.preheader.prol ], [ %.05062.ph, %.preheader.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.prol ], [ 0, %.preheader.preheader ]
  %i.t = load i8, ptr %.04963.prol, align 1, !tbaa !42
  store i8 %i.t, ptr %.064.prol, align 1, !tbaa !42
  %i.u = add nuw i64 %.05062.prol, 1              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.04963.prol, i64 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.064.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.prol.loopexit, label %.preheader.prol, !llvm.loop !48

.preheader.prol.loopexit:                         ; preds = %.preheader.prol, %.preheader.preheader
  %.064.unr = phi ptr [ %.064.ph, %.preheader.preheader ], [ %i.w, %.preheader.prol ]
  %.04963.unr = phi ptr [ %.04963.ph, %.preheader.preheader ], [ %i.v, %.preheader.prol ]
  %.05062.unr = phi i64 [ %.05062.ph, %.preheader.preheader ], [ %i.u, %.preheader.prol ]
  %i.x = sub i64 %.05062.ph, %i.b
  %i.y = icmp ugt i64 %i.x, -8
  br i1 %i.y, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %.preheader
  %.064 = phi ptr [ %i.ax, %.preheader ], [ %.064.unr, %.preheader.prol.loopexit ] ; 9 uses
  %.04963 = phi ptr [ %i.aw, %.preheader ], [ %.04963.unr, %.preheader.prol.loopexit ] ; 9 uses
  %.05062 = phi i64 [ %i.av, %.preheader ], [ %.05062.unr, %.preheader.prol.loopexit ]
  %i.z = load i8, ptr %.04963, align 1, !tbaa !42
  store i8 %i.z, ptr %.064, align 1, !tbaa !42
  %i.aa = getelementptr inbounds nuw i8, ptr %.04963, i64 1
  %i.ab = getelementptr inbounds nuw i8, ptr %.064, i64 1
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !42
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %.04963, i64 2
  %i.ae = getelementptr inbounds nuw i8, ptr %.064, i64 2
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !42
  store i8 %i.af, ptr %i.ae, align 1, !tbaa !42
  %i.ag = getelementptr inbounds nuw i8, ptr %.04963, i64 3
  %i.ah = getelementptr inbounds nuw i8, ptr %.064, i64 3
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !42
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !42
  %i.aj = getelementptr inbounds nuw i8, ptr %.04963, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.064, i64 4
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !42
  store i8 %i.al, ptr %i.ak, align 1, !tbaa !42
  %i.am = getelementptr inbounds nuw i8, ptr %.04963, i64 5
  %i.an = getelementptr inbounds nuw i8, ptr %.064, i64 5
  %i.ao = load i8, ptr %i.am, align 1, !tbaa !42
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !42
  %i.ap = getelementptr inbounds nuw i8, ptr %.04963, i64 6
  %i.aq = getelementptr inbounds nuw i8, ptr %.064, i64 6
  %i.ar = load i8, ptr %i.ap, align 1, !tbaa !42
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !42
  %i.as = getelementptr inbounds nuw i8, ptr %.04963, i64 7
  %i.at = getelementptr inbounds nuw i8, ptr %.064, i64 7
  %i.au = load i8, ptr %i.as, align 1, !tbaa !42
  store i8 %i.au, ptr %i.at, align 1, !tbaa !42
  %i.av = add nuw i64 %.05062, 8                  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.04963, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.064, i64 8
  %exitcond.not.7 = icmp eq i64 %i.av, %i.b
  br i1 %exitcond.not.7, label %.loopexit, label %.preheader, !llvm.loop !50

.loopexit:                                        ; preds = %.preheader.prol.loopexit, %.preheader, %middle.block, %vec.epilog.middle.block, %bb.b, %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 4 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !28 ; 3 uses
  %i.ba = add i64 %i.az, %i.b                     ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !51
  %i.bd = icmp ugt i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.c, label %bb.l

bb.c:                                             ; preds = %.loopexit
  %i.be = sub i64 -257, %i.az
  %i.bf = icmp ugt i64 %i.b, %i.be
  br i1 %i.bf, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.bg = add i64 %i.ba, 256                      ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !41 ; 4 uses
  %i.bj = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %0, i64 noundef %i.bg) #11 ; 3 uses
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !41
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.bi) #11
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #10
  unreachable

bb.g:                                             ; preds = %bb.e
  %.not59 = icmp eq ptr %i.bi, null
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !29  ; 2 uses
  br i1 %.not59, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr nonnull align 1 %i.bi, i64 %i.bl, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not60 = icmp eq i64 %i.bl, 0
  br i1 %.not60, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #10
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.h
  tail call void @png_free(ptr noundef nonnull %0, ptr noundef %i.bi) #11
  store i64 %i.bg, ptr %i.bb, align 8, !tbaa !51
  %.pr = load i64, ptr %i.ay, align 8, !tbaa !28
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %i.bm = phi i64 [ %.pr, %bb.k ], [ %i.az, %.loopexit ] ; 2 uses
  %.not61 = icmp eq i64 %i.bm, 0
  br i1 %.not61, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !41
  %i.bp = load i64, ptr %i.a, align 8, !tbaa !29
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bq, ptr align 1 %i.bs, i64 %i.bm, i1 false)
  %i.bt = load i64, ptr %i.ay, align 8, !tbaa !28
  %i.bu = load i64, ptr %i.a, align 8, !tbaa !29
  %i.bv = add i64 %i.bu, %i.bt
  store i64 %i.bv, ptr %i.a, align 8, !tbaa !29
  store i64 0, ptr %i.ay, align 8, !tbaa !28
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !41
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 864
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !40
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 920
  store i64 0, ptr %i.bz, align 8, !tbaa !30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define noundef i32 @png_process_data_skip(ptr noalias noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @png_app_warning(ptr noundef %0, ptr noundef nonnull @.str) #11
  ret i32 0
}

declare void @png_app_warning(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @png_push_read_sig(ptr noalias noundef %0, ptr noalias noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 629 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !52    ; 3 uses
  %i.c = zext i8 %i.b to i64                      ; 4 uses
  %i.d = sub nsw i64 8, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30   ; 3 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.d) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !29   ; 3 uses
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %..i = tail call i64 @llvm.umin.i64(i64 %spec.select, i64 %i.j) ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr align 1 %i.l, i64 %..i, i1 false)
  %i.m = sub nuw i64 %spec.select, %..i
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %..i
  %i.o = sub i64 %i.f, %..i                       ; 2 uses
  store i64 %i.o, ptr %i.e, align 8, !tbaa !30
  %i.p = sub i64 %i.j, %..i
  store i64 %i.p, ptr %i.i, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %..i
  store ptr %i.q, ptr %i.k, align 8, !tbaa !40
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = phi i64 [ %i.o, %bb.b ], [ %i.f, %bb.a ]
  %.036.i = phi i64 [ %i.m, %bb.b ], [ %spec.select, %bb.a ] ; 2 uses
  %.035.i = phi ptr [ %i.n, %bb.b ], [ %i.h, %bb.a ]
  %.not41.i = icmp eq i64 %.036.i, 0
  br i1 %.not41.i, label %png_push_fill_buffer.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !28   ; 3 uses
  %.not42.i = icmp eq i64 %i.t, 0
  br i1 %.not42.i, label %png_push_fill_buffer.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.036..i = tail call i64 @llvm.umin.i64(i64 %.036.i, i64 %i.t) ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !31   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.035.i, ptr align 1 %i.v, i64 %.036..i, i1 false)
  %i.w = sub i64 %i.r, %.036..i
  store i64 %i.w, ptr %i.e, align 8, !tbaa !30
  %i.x = sub nuw i64 %i.t, %.036..i
  store i64 %i.x, ptr %i.s, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.036..i
  store ptr %i.y, ptr %i.u, align 8, !tbaa !31
  br label %png_push_fill_buffer.exit

png_push_fill_buffer.exit:                        ; preds = %bb.c, %bb.d, %bb.e
  %i.z = trunc i64 %spec.select to i8
  %i.aa = add i8 %i.b, %i.z                       ; 2 uses
  store i8 %i.aa, ptr %i.a, align 1, !tbaa !52
  %i.ab = tail call i32 @png_sig_cmp(ptr noundef nonnull %i.g, i64 noundef %i.c, i64 noundef %spec.select) #11
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %png_push_fill_buffer.exit
  %i.ac = icmp ult i8 %i.b, 4
  br i1 %i.ac, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ad = add nsw i64 %spec.select, -4
  %i.ae = tail call i32 @png_sig_cmp(ptr noundef nonnull %i.g, i64 noundef %i.c, i64 noundef %i.ad) #11
  %.not25 = icmp eq i32 %i.ae, 0
  br i1 %.not25, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.1) #10
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.2) #10
  unreachable

bb.j:                                             ; preds = %png_push_fill_buffer.exit
  %i.af = icmp ugt i8 %i.aa, 7
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i32 1, ptr %i.ag, align 8, !tbaa !32
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_push_read_chunk(ptr noalias noundef %0, ptr noalias noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 10 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !53   ; 2 uses
  %i.c = and i32 %i.b, 256
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30
  %i.g = icmp ult i64 %i.f, 8
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @png_push_save_buffer(ptr noundef nonnull %0)
  br label %bb.am

bb.d:                                             ; preds = %bb.b
  %i.h = tail call i32 @png_read_chunk_header(ptr noundef nonnull %0) #11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 896
  store i32 %i.h, ptr %i.i, align 8, !tbaa !54
  %i.j = load i32, ptr %i.a, align 4, !tbaa !53
  %i.k = or i32 %i.j, 256                         ; 2 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !53
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.l = phi i32 [ %i.k, %bb.d ], [ %i.b, %bb.a ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.n = load i32, ptr %i.m, align 8, !tbaa !55   ; 4 uses
  %i.o = icmp eq i32 %i.n, 1229209940
  br i1 %i.o, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.p = and i32 %i.l, 8
  %.not76 = icmp eq i32 %i.p, 0
  br i1 %.not76, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = or i32 %i.l, 8192                        ; 2 uses
  store i32 %i.q, ptr %i.a, align 4, !tbaa !53
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = phi i32 [ %i.q, %bb.g ], [ %i.l, %bb.f ] ; 5 uses
  %i.s = and i32 %i.r, 1
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.3) #10
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 623
  %i.v = load i8, ptr %i.u, align 1, !tbaa !56
  %i.w = icmp eq i8 %i.v, 3
  %i.x = and i32 %i.r, 2
  %i.y = icmp eq i32 %i.x, 0
  %or.cond = and i1 %i.y, %i.w
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #10
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  store i32 2, ptr %i.z, align 8, !tbaa !32
  %i.aa = and i32 %i.r, 8196
  %or.cond83 = icmp eq i32 %i.aa, 4
  br i1 %or.cond83, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !54
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.am, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ae = or i32 %i.r, 4
  store i32 %i.ae, ptr %i.a, align 4, !tbaa !53
  %i.af = and i32 %i.r, 8
  %.not78 = icmp eq i32 %i.af, 0
  br i1 %.not78, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @png_benign_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #11
  br label %.thread

bb.p:                                             ; preds = %bb.e
  %i.ag = and i32 %i.l, 4
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = or i32 %i.l, 8200
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !53
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  switch i32 %i.n, label %.thread85 [
    i32 1229472850, label %bb.s
    i32 1229278788, label %bb.x
  ]

bb.s:                                             ; preds = %bb.r
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !54
  %.not80 = icmp eq i32 %i.aj, 13
  br i1 %.not80, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #10
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !30
  %i.am = icmp ult i64 %i.al, 17
  br i1 %i.am, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @png_push_save_buffer(ptr noundef nonnull %0)
  br label %bb.am

bb.w:                                             ; preds = %bb.u
  %i.an = tail call i32 @png_handle_chunk(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 13) #11 ; 0 uses
  br label %png_push_have_end.exit

bb.x:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !54 ; 2 uses
  %i.aq = add i32 %i.ap, 4
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.at = load i64, ptr %i.as, align 8, !tbaa !30
  %i.au = icmp ult i64 %i.at, %i.ar
  br i1 %i.au, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @png_push_save_buffer(ptr noundef nonnull %0)
  br label %bb.am

bb.z:                                             ; preds = %bb.x
  %i.av = tail call i32 @png_handle_chunk(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.ap) #11 ; 0 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i32 6, ptr %i.aw, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !57, !alias.scope !58, !noalias !61 ; 2 uses
  %.not.i = icmp eq ptr %i.ay, null
  br i1 %.not.i, label %png_push_have_end.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void %i.ay(ptr noundef nonnull %0, ptr noundef %1) #11, !inline_history !63
  br label %png_push_have_end.exit

.thread:                                          ; preds = %bb.o, %bb.n
  %i.az = tail call i32 @png_chunk_unknown_handling(ptr noundef nonnull %0, i32 noundef 1229209940) #11 ; 2 uses
  %.not79 = icmp eq i32 %i.az, 0
  br i1 %.not79, label %bb.af, label %bb.ab

.thread85:                                        ; preds = %bb.r
  %i.ba = tail call i32 @png_chunk_unknown_handling(ptr noundef nonnull %0, i32 noundef %i.n) #11 ; 2 uses
  %.not7986 = icmp eq i32 %i.ba, 0
  br i1 %.not7986, label %.thread87, label %bb.ab

bb.ab:                                            ; preds = %.thread85, %.thread
  %i.bb = phi i32 [ %i.ba, %.thread85 ], [ %i.az, %.thread ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !54 ; 2 uses
  %i.be = add i32 %i.bd, 4
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !30
  %i.bi = icmp ult i64 %i.bh, %i.bf
  br i1 %i.bi, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  tail call void @png_push_save_buffer(ptr noundef nonnull %0)
  br label %bb.am

bb.ad:                                            ; preds = %bb.ab
  %i.bj = tail call i32 @png_handle_unknown(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.bd, i32 noundef %i.bb) #11 ; 0 uses
  %i.bk = icmp eq i32 %i.n, 1347179589
  br i1 %i.bk, label %bb.ae, label %png_push_have_end.exit

bb.ae:                                            ; preds = %bb.ad
  %i.bl = load i32, ptr %i.a, align 4, !tbaa !53
  %i.bm = or i32 %i.bl, 2
  store i32 %i.bm, ptr %i.a, align 4, !tbaa !53
  br label %png_push_have_end.exit

bb.af:                                            ; preds = %.thread
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !54
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !64
  store i32 2, ptr %i.z, align 8, !tbaa !32
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !65, !alias.scope !66, !noalias !69 ; 2 uses
  %.not.i84 = icmp eq ptr %i.br, null
  br i1 %.not.i84, label %png_push_have_info.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void %i.br(ptr noundef nonnull %0, ptr noundef %1) #11, !inline_history !71
  br label %png_push_have_info.exit

png_push_have_info.exit:                          ; preds = %bb.af, %bb.ag
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 626
  %i.bt = load i8, ptr %i.bs, align 2, !tbaa !72  ; 3 uses
  %i.bu = icmp ugt i8 %i.bt, 7
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !73
  %i.bx = zext i32 %i.bw to i64                   ; 2 uses
  br i1 %i.bu, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %png_push_have_info.exit
  %i.by = lshr i8 %i.bt, 3
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = mul nuw nsw i64 %i.bx, %i.bz
  br label %bb.aj

bb.ai:                                            ; preds = %png_push_have_info.exit
  %i.cb = zext nneg i8 %i.bt to i64
  %i.cc = mul nuw nsw i64 %i.bx, %i.cb
  %i.cd = add nuw nsw i64 %i.cc, 7
  %i.ce = lshr i64 %i.cd, 3
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.cf = phi i64 [ %i.ca, %bb.ah ], [ %i.ce, %bb.ai ]
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = add i32 %i.cg, 1
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 %i.ch, ptr %i.ci, align 8, !tbaa !74
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !75
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !76
  br label %bb.am

.thread87:                                        ; preds = %.thread85
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !54 ; 2 uses
  %i.co = add i32 %i.cn, 4
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !30
  %i.cs = icmp ult i64 %i.cr, %i.cp
  br i1 %i.cs, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.thread87
  tail call void @png_push_save_buffer(ptr noundef nonnull %0)
  br label %bb.am

bb.al:                                            ; preds = %.thread87
  %i.ct = tail call i32 @png_handle_chunk(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.cn) #11 ; 0 uses
  br label %png_push_have_end.exit

png_push_have_end.exit:                           ; preds = %bb.aa, %bb.z, %bb.ad, %bb.ae, %bb.al, %bb.w
  %i.cu = load i32, ptr %i.a, align 4, !tbaa !53
  %i.cv = and i32 %i.cu, -257
  store i32 %i.cv, ptr %i.a, align 4, !tbaa !53
  br label %bb.am

bb.am:                                            ; preds = %bb.m, %png_push_have_end.exit, %bb.ak, %bb.aj, %bb.ac, %bb.y, %bb.v, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define void @png_push_read_IDAT(ptr noalias noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !53
  %i.e = and i32 %i.d, 256
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 592
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !64
  br label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !30   ; 3 uses
  %i.i = icmp ult i64 %i.h, 8
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @png_push_save_buffer(ptr noundef nonnull %0)
  br label %.thread86

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !29   ; 4 uses
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %..i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 4) ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.a, ptr align 1 %i.m, i64 %..i, i1 false)
  %i.n = sub nuw nsw i64 4, %..i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 %..i
  %i.p = sub nuw i64 %i.h, %..i                   ; 2 uses
  store i64 %i.p, ptr %i.g, align 8, !tbaa !30
  %i.q = sub nuw i64 %i.k, %..i
  store i64 %i.q, ptr %i.j, align 8, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %..i
  store ptr %i.r, ptr %i.l, align 8, !tbaa !40
  %.not41.i = icmp ugt i64 %i.k, 3
  br i1 %.not41.i, label %png_push_fill_buffer.exit, label %.thread

.thread:                                          ; preds = %bb.d, %bb.e
  %i.s = phi i64 [ %i.p, %bb.e ], [ %i.h, %bb.d ]
  %.035.i85 = phi ptr [ %i.o, %bb.e ], [ %i.a, %bb.d ]
  %.036.i84 = phi i64 [ %i.n, %bb.e ], [ 4, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !28   ; 3 uses
  %.not42.i = icmp eq i64 %i.u, 0
  br i1 %.not42.i, label %png_push_fill_buffer.exit, label %bb.f

bb.f:                                             ; preds = %.thread
  %.036..i = tail call i64 @llvm.umin.i64(i64 %.036.i84, i64 %i.u) ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.035.i85, ptr align 1 %i.w, i64 %.036..i, i1 false)
  %i.x = sub nuw i64 %i.s, %.036..i
  store i64 %i.x, ptr %i.g, align 8, !tbaa !30
  %i.y = sub i64 %i.u, %.036..i
  store i64 %i.y, ptr %i.t, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.036..i
  store ptr %i.z, ptr %i.v, align 8, !tbaa !31
  br label %png_push_fill_buffer.exit

png_push_fill_buffer.exit:                        ; preds = %bb.e, %.thread, %bb.f
  %i.aa = call i32 @png_get_uint_31(ptr noundef nonnull %0, ptr noundef nonnull %i.a) #11
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !54
  call void @png_reset_crc(ptr noundef nonnull %0) #11
  call void @png_crc_read(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef 4) #11
  %i.ac = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ad = call i32 @llvm.bswap.i32(i32 %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !55
  %i.af = load i32, ptr %i.c, align 4, !tbaa !53
  %i.ag = or i32 %i.af, 256
  store i32 %i.ag, ptr %i.c, align 4, !tbaa !53
  %.not = icmp eq i32 %i.ac, 1413563465
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %png_push_fill_buffer.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 936
  store i32 1, ptr %i.ah, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !77
  %i.ak = and i32 %i.aj, 8
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.h, label %.thread86

bb.h:                                             ; preds = %bb.g
  call void @png_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.10) #10
  unreachable

.thread86:                                        ; preds = %bb.c, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %.thread108

bb.i:                                             ; preds = %png_push_fill_buffer.exit
  %i.am = load i32, ptr %i.ab, align 8, !tbaa !54 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i32 %i.am, ptr %i.an, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %i.ao = phi i32 [ %.pre, %._crit_edge ], [ %i.am, %bb.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 4 uses
  %.not77 = icmp eq i32 %i.ao, 0
  br i1 %.not77, label %.thread93, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !29 ; 2 uses
  %.not78 = icmp eq i64 %i.ar, 0
  br i1 %.not78, label %.thread104, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = zext i32 %i.ao to i64
  %.069 = call i64 @llvm.umin.i64(i64 %i.ar, i64 %i.as) ; 6 uses
  %.068 = trunc nuw i64 %.069 to i32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !40
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef %i.au, i64 noundef %.069) #11
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !40
  call void @png_process_IDAT_data(ptr noundef nonnull %0, ptr noundef %i.av, i64 noundef %.069)
  %i.aw = load i32, ptr %i.ap, align 8, !tbaa !64
  %i.ax = sub i32 %i.aw, %.068                    ; 3 uses
  store i32 %i.ax, ptr %i.ap, align 8, !tbaa !64
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !30
  %i.ba = sub i64 %i.az, %.069
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !30
  %i.bb = load i64, ptr %i.aq, align 8, !tbaa !29
  %i.bc = sub i64 %i.bb, %.069
  store i64 %i.bc, ptr %i.aq, align 8, !tbaa !29
  %i.bd = load ptr, ptr %i.at, align 8, !tbaa !40
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.069
  store ptr %i.be, ptr %i.at, align 8, !tbaa !40
  %.not79 = icmp eq i32 %i.ax, 0
  br i1 %.not79, label %.thread93, label %.thread104

.thread104:                                       ; preds = %bb.k, %bb.l
  %.pr107 = phi i32 [ %i.ax, %bb.l ], [ %i.ao, %bb.k ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !28 ; 2 uses
  %.not80 = icmp eq i64 %i.bg, 0
  br i1 %.not80, label %.thread108, label %bb.m

bb.m:                                             ; preds = %.thread104
  %i.bh = zext i32 %.pr107 to i64
  %.067 = call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bh) ; 5 uses
  %.0 = trunc nuw i64 %.067 to i32                ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !31
  call void @png_calculate_crc(ptr noundef nonnull %0, ptr noundef %i.bj, i64 noundef %.067) #11
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !31
  call void @png_process_IDAT_data(ptr noundef nonnull %0, ptr noundef %i.bk, i64 noundef %.067)
  %i.bl = load i32, ptr %i.ap, align 8, !tbaa !64 ; 2 uses
  %i.bm = sub i32 %i.bl, %.0
  store i32 %i.bm, ptr %i.ap, align 8, !tbaa !64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.bo = load <2 x i64>, ptr %i.bn, align 8, !tbaa !78
  %i.bp = insertelement <2 x i64> poison, i64 %.067, i64 0
  %i.bq = shufflevector <2 x i64> %i.bp, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.br = sub <2 x i64> %i.bo, %i.bq
  store <2 x i64> %i.br, ptr %i.bn, align 8, !tbaa !78
  %i.bs = load ptr, ptr %i.bi, align 8, !tbaa !31
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.067
  store ptr %i.bt, ptr %i.bi, align 8, !tbaa !31
  %i.bu = icmp eq i32 %i.bl, %.0
  br i1 %i.bu, label %.thread93, label %.thread108

.thread93:                                        ; preds = %bb.j, %bb.l, %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !30
  %i.bx = icmp ult i64 %i.bw, 4
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread93
  call void @png_push_save_buffer(ptr noundef nonnull %0)
  br label %.thread108

bb.o:                                             ; preds = %.thread93
  %i.by = call i32 @png_crc_finish(ptr noundef nonnull %0, i32 noundef 0) #11 ; 0 uses
  %i.bz = load i32, ptr %i.c, align 4, !tbaa !53
  %i.ca = and i32 %i.bz, -265
  %i.cb = or disjoint i32 %i.ca, 8
  store i32 %i.cb, ptr %i.c, align 4, !tbaa !53
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 0, ptr %i.cc, align 8, !tbaa !79
  br label %.thread108

.thread108:                                       ; preds = %.thread104, %.thread86, %bb.o, %bb.n, %bb.m
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @png_push_fill_buffer(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %. = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.c) ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.e, i64 %., i1 false)
  %i.f = sub nuw i64 %2, %.
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !30
  %i.j = sub i64 %i.i, %.
  store i64 %i.j, ptr %i.h, align 8, !tbaa !30
  %i.k = load i64, ptr %i.b, align 8, !tbaa !29
  %i.l = sub i64 %i.k, %.
  store i64 %i.l, ptr %i.b, align 8, !tbaa !29
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %.
  store ptr %i.n, ptr %i.d, align 8, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.036 = phi i64 [ %i.f, %bb.c ], [ %2, %bb.b ]  ; 2 uses
  %.035 = phi ptr [ %i.g, %bb.c ], [ %1, %bb.b ]
  %.not41 = icmp eq i64 %.036, 0
  br i1 %.not41, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.p = load i64, ptr %i.o, align 8, !tbaa !28   ; 2 uses
  %.not42 = icmp eq i64 %i.p, 0
  br i1 %.not42, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.036. = tail call i64 @llvm.umin.i64(i64 %.036, i64 %i.p) ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.035, ptr align 1 %i.r, i64 %.036., i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.t = load <2 x i64>, ptr %i.s, align 8, !tbaa !78
  %i.u = insertelement <2 x i64> poison, i64 %.036., i64 0
  %i.v = shufflevector <2 x i64> %i.u, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.w = sub <2 x i64> %i.t, %i.v
  store <2 x i64> %i.w, ptr %i.s, align 8, !tbaa !78
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %.036.
  store ptr %i.y, ptr %i.q, align 8, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.a
  ret void
}

declare i32 @png_sig_cmp(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @png_error(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @png_read_chunk_header(ptr noundef) local_unnamed_addr #3

declare void @png_benign_error(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @png_handle_chunk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @png_push_have_end(ptr noalias noundef %0, ptr noalias noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b(ptr noundef nonnull %0, ptr noundef %1) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare i32 @png_chunk_unknown_handling(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @png_handle_unknown(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @png_push_have_info(ptr noalias noundef %0, ptr noalias noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b(ptr noundef nonnull %0, ptr noundef %1) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noalias ptr @png_malloc_warn(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @png_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @png_get_uint_31(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @png_reset_crc(ptr noundef) local_unnamed_addr #3

declare void @png_crc_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @png_calculate_crc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @png_process_IDAT_data(ptr noalias noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @png_error(ptr noundef %0, ptr noundef nonnull @.str.11) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %1, ptr %i.c, align 8, !tbaa !80
  %i.d = trunc i64 %2 to i32                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  store i32 %i.d, ptr %i.e, align 8, !tbaa !81
  %.not60 = icmp eq i32 %i.d, 0
  br i1 %.not60, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 626
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 516 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 621 ; 2 uses
  br label %bb.d

thread-pre-split:                                 ; preds = %bb.x, %bb.w
  %.pr = load i32, ptr %i.e, align 8, !tbaa !81
  %.not = icmp eq i32 %.pr, 0
  br i1 %.not, label %.critedge.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph, %thread-pre-split
  %i.o = load i32, ptr %i.f, align 8, !tbaa !77
  %i.p = and i32 %i.o, 8
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %i.g, align 8, !tbaa !74
  %.not51 = icmp eq i32 %i.r, 0
  br i1 %.not51, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.s = load i8, ptr %i.h, align 2, !tbaa !72    ; 3 uses
  %i.t = icmp ugt i8 %i.s, 7
  %i.u = load i32, ptr %i.i, align 8, !tbaa !73
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = lshr i8 %i.s, 3
  %i.x = zext nneg i8 %i.w to i64
  %i.y = mul nuw nsw i64 %i.v, %i.x
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = zext nneg i8 %i.s to i64
  %i.aa = mul nuw nsw i64 %i.v, %i.z
  %i.ab = add nuw nsw i64 %i.aa, 7
  %i.ac = lshr i64 %i.ab, 3
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = phi i64 [ %i.y, %bb.g ], [ %i.ac, %bb.h ]
  %i.ae = trunc i64 %i.ad to i32
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.g, align 8, !tbaa !74
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !75
  store ptr %i.ag, ptr %i.k, align 8, !tbaa !76
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %i.ah = tail call i32 @png_zlib_inflate(ptr noundef nonnull %0, i32 noundef 2) #11 ; 3 uses
  %or.cond3 = icmp ugt i32 %i.ah, 1
  br i1 %or.cond3, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.ai = load i32, ptr %i.f, align 8, !tbaa !77
  %i.aj = or i32 %i.ai, 8
  store i32 %i.aj, ptr %i.f, align 8, !tbaa !77
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 0, ptr %i.ak, align 8, !tbaa !79
  %i.al = load i32, ptr %i.l, align 4, !tbaa !82
  %i.am = load i32, ptr %i.m, align 4, !tbaa !83
  %.not54 = icmp ult i32 %i.al, %i.am
  br i1 %.not54, label %bb.l, label %bb.m
end_hunk_0
