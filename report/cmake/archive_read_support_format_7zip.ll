Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_7zip?download=true
inline.NumInlined: 63
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@archive_string_conversion_from_charset

declare void @archive_entry_set_is_data_encrypted(ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare i32 @_archive_entry_copy_pathname_l(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

declare ptr @archive_string_conversion_charset_name(ptr noundef) local_unnamed_addr #2

declare void @archive_entry_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @archive_entry_set_mtime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_ctime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_atime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_size(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

declare ptr @archive_entry_copy_fflags_text(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @_archive_entry_copy_symlink_l(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @__archive_read_consume(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @header_bytes(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !65
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 288 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !74   ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %bb.c, label %read_consume.exit

read_consume.exit:                                ; preds = %bb.b
  %i.j = tail call i64 @__archive_read_consume(ptr noundef nonnull %0, i64 noundef %i.i) #18 ; 0 uses
  %i.k = load i64, ptr %i.h, align 8, !tbaa !74
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 248 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !63
  %i.n = add i64 %i.m, %i.k
  store i64 %i.n, ptr %i.l, align 8, !tbaa !63
  store i64 0, ptr %i.h, align 8, !tbaa !74
  br label %bb.c

bb.c:                                             ; preds = %read_consume.exit, %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.p = load i32, ptr %i.o, align 4, !tbaa !67
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.r = tail call ptr @__archive_read_ahead(ptr noundef nonnull %0, i64 noundef %1, ptr noundef null) #18 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.e, align 8, !tbaa !65
  %i.u = sub i64 %i.t, %1
  store i64 %i.u, ptr %i.e, align 8, !tbaa !65
  store i64 %1, ptr %i.h, align 8, !tbaa !74
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.v = call fastcc i64 @read_stream(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %1, i64 noundef %1) ; 2 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.x = load i64, ptr %i.e, align 8, !tbaa !65
  %i.y = sub i64 %i.x, %i.v
  store i64 %i.y, ptr %i.e, align 8, !tbaa !65
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.1 = phi ptr [ %i.r, %bb.e ], [ %i.z, %bb.g ]  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !66
  %i.ac = trunc i64 %1 to i32
  %i.ad = tail call i64 @cm_zlib_crc32(i64 noundef %i.ab, ptr noundef %.1, i32 noundef %i.ac) #18
  store i64 %i.ad, ptr %i.aa, align 8, !tbaa !66
  br label %bb.i

.critedge:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.d, %bb.a, %bb.h
  %.127 = phi ptr [ null, %.critedge ], [ null, %bb.a ], [ %.1, %bb.h ], [ null, %bb.d ]
  ret ptr %.127
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @decode_encoded_header_info(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 104)) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  %i.d = tail call ptr @__errno_location() #20    ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !76
  %i.e = tail call fastcc i32 @read_StreamsInfo(ptr noundef %0, ptr noundef %1)
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.d, align 4, !tbaa !76
  %i.h = icmp eq i32 %i.g, 12
  %.str.20..str.17 = select i1 %i.h, ptr @.str.20, ptr @.str.17
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !117
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !118
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.p = load i64, ptr %i.o, align 8, !tbaa !64
  %i.q = load i64, ptr %1, align 8, !tbaa !119    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !120
  %i.t = load i64, ptr %i.s, align 8, !tbaa !42   ; 2 uses
  %i.u = add i64 %i.t, %i.q                       ; 2 uses
  %i.v = icmp ult i64 %i.p, %i.u
  %i.w = icmp slt i64 %i.u, 0
  %or.cond = or i1 %i.v, %i.w
  %i.x = icmp eq i64 %i.t, 0
  %or.cond17 = or i1 %i.x, %or.cond
  %i.y = icmp slt i64 %i.q, 0
  %or.cond18 = or i1 %i.y, %or.cond17
  br i1 %or.cond18, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %bb.e, %bb.c, %bb.d, %bb.b
  %.str.20.sink = phi ptr [ %.str.20..str.17, %bb.b ], [ @.str.17, %bb.c ], [ @.str.17, %bb.d ], [ @.str.35, %bb.e ]
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull %.str.20.sink) #18
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %.0 = phi i32 [ 0, %bb.e ], [ -30, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @read_consume(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 288 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !74   ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @__archive_read_consume(ptr noundef nonnull %0, i64 noundef %i.e) #18 ; 0 uses
  %i.g = load i64, ptr %i.d, align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 248 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !63
  %i.j = add i64 %i.i, %i.g
  store i64 %i.j, ptr %i.h, align 8, !tbaa !63
  store i64 0, ptr %i.d, align 8, !tbaa !74
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @setup_decode_folder(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca [3 x ptr], align 16               ; 10 uses
  %i.c = alloca [3 x i64], align 16               ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2072 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60   ; 27 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20040 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !115
  tail call void @free(ptr noundef %i.h) #18
  store ptr null, ptr %i.g, align 8, !tbaa !115
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 20048 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !115
  tail call void @free(ptr noundef %i.j) #18
  store ptr null, ptr %i.i, align 8, !tbaa !115
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 20056 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !115
  tail call void @free(ptr noundef %i.l) #18
  store ptr null, ptr %i.k, align 8, !tbaa !115
  %.not = icmp eq i32 %2, 0
  %i.m = select i1 %.not, ptr @.str.37, ptr @.str.36 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !121
  %i.p = trunc i64 %i.o to i32                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 276 ; 2 uses
  store i32 %i.p, ptr %i.q, align 4, !tbaa !122
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !123
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 272 ; 2 uses
  store i32 %i.s, ptr %i.t, align 8, !tbaa !124
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.v = load i64, ptr %i.u, align 8, !tbaa !125  ; 3 uses
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  %i.y = icmp sgt i32 %i.w, 0
  br i1 %i.y, label %.preheader.lr.ph.i, label %folder_uncompressed_size.exit

.preheader.lr.ph.i:                               ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !126
  %i.ab = and i64 %i.aa, 4294967295               ; 2 uses
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %.thread18.i, label %.preheader.lr.ph.split.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !127
  %i.ae = zext nneg i32 %i.x to i64
  br label %.preheader.i

.loopexit.i:                                      ; preds = %bb.c
  %indvars.iv.next27.i = add nsw i64 %indvars.iv26.i, -1
  %i.af = icmp sgt i64 %indvars.iv26.i, 0
  br i1 %i.af, label %.preheader.i, label %folder_uncompressed_size.exit

.preheader.i:                                     ; preds = %.loopexit.i, %.preheader.lr.ph.split.i
  %indvars.iv26.i = phi i64 [ %i.ae, %.preheader.lr.ph.split.i ], [ %indvars.iv.next27.i, %.loopexit.i ] ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ab
  br i1 %exitcond.not.i, label %.thread18.loopexit.i, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %bb.b, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !129
  %i.aj = icmp eq i64 %i.ai, %indvars.iv26.i
  br i1 %i.aj, label %.loopexit.i, label %bb.b

.thread18.loopexit.i:                             ; preds = %bb.b
  %i.ak = trunc nuw nsw i64 %indvars.iv26.i to i32
  br label %.thread18.i

.thread18.i:                                      ; preds = %.thread18.loopexit.i, %.preheader.lr.ph.i
  %.lcssa21.i = phi i32 [ %i.x, %.preheader.lr.ph.i ], [ %i.ak, %.thread18.loopexit.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !130
  %i.an = zext nneg i32 %.lcssa21.i to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !42
  br label %folder_uncompressed_size.exit

folder_uncompressed_size.exit:                    ; preds = %.loopexit.i, %bb.a, %.thread18.i
  %.2.i = phi i64 [ %i.ap, %.thread18.i ], [ 0, %bb.a ], [ 0, %.loopexit.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 264 ; 8 uses
  store i64 %.2.i, ptr %i.aq, align 8, !tbaa !75
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 240 ; 5 uses
  store i64 0, ptr %i.ar, align 8, !tbaa !77
  %i.as = load i64, ptr %1, align 8, !tbaa !91    ; 5 uses
  %.not213 = icmp eq i64 %i.as, 0
  br i1 %.not213, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %folder_uncompressed_size.exit
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !92
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %i.av = phi i64 [ 0, %.lr.ph ], [ %i.be, %bb.i ]
  %.0147206 = phi i32 [ 0, %.lr.ph ], [ %.1148, %bb.i ] ; 2 uses
  %.1150205 = phi i32 [ 0, %.lr.ph ], [ %i.bd, %bb.i ]
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !94
  switch i64 %i.ax, label %bb.i [
    i64 116457729, label %bb.e
    i64 116458243, label %bb.e
    i64 116459265, label %bb.e
    i64 50528539, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 20752
  store i32 1, ptr %i.ay, align 8, !tbaa !40
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !131 ; 2 uses
  %.not179 = icmp eq ptr %i.ba, null
  br i1 %.not179, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @archive_entry_set_is_data_encrypted(ptr noundef nonnull %i.ba, i8 noundef signext 1) #18
  %i.bb = load ptr, ptr %i.az, align 8, !tbaa !131
  tail call void @archive_entry_set_is_metadata_encrypted(ptr noundef %i.bb, i8 noundef signext 1) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.m) #18
  br label %bb.bt

bb.h:                                             ; preds = %bb.d
  %i.bc = add nsw i32 %.0147206, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h
  %.1148 = phi i32 [ %.0147206, %bb.d ], [ %i.bc, %bb.h ] ; 2 uses
  %i.bd = add i32 %.1150205, 1                    ; 2 uses
  %i.be = zext i32 %i.bd to i64                   ; 2 uses
  %i.bf = icmp ugt i64 %i.as, %i.be
  br i1 %i.bf, label %bb.d, label %._crit_edge, !llvm.loop !193

._crit_edge:                                      ; preds = %bb.i, %folder_uncompressed_size.exit
  %.0147.lcssa = phi i32 [ 0, %folder_uncompressed_size.exit ], [ %.1148, %bb.i ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 20752 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !40
  %i.bi = icmp eq i32 %i.bh, -1
  br i1 %i.bi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  store i32 0, ptr %i.bg, align 8, !tbaa !40
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.bj = icmp samesign ugt i64 %i.as, 2
  %i.bk = icmp eq i32 %.0147.lcssa, 0             ; 2 uses
  %or.cond.not173 = select i1 %i.bj, i1 %i.bk, i1 false
  %i.bl = icmp sgt i32 %.0147.lcssa, 1
  %or.cond4 = select i1 %or.cond.not173, i1 true, i1 %i.bl
  br i1 %or.cond4, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.39, ptr noundef nonnull %i.m) #18
  br label %bb.bt

bb.m:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !92 ; 10 uses
  %.not196 = icmp eq i64 %i.as, 2                 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40 ; 6 uses
  %.0151 = select i1 %.not196, ptr %i.bo, ptr null
  br i1 %i.bk, label %bb.bs, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.bp = icmp eq i64 %i.as, 4
  br i1 %i.bp, label %bb.o, label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 120 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !94
  %i.bs = icmp eq i64 %i.br, 50528539
  br i1 %i.bs, label %bb.p, label %.thread261

bb.p:                                             ; preds = %bb.o
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !195
  %i.bv = icmp eq i64 %i.bu, 7
  %i.bw = icmp eq i64 %i.v, 4
  %or.cond = and i1 %i.bw, %i.bv
  %i.bx = icmp eq i32 %i.p, 4
  %or.cond193 = select i1 %or.cond, i1 %i.bx, i1 false
  br i1 %or.cond193, label %bb.q, label %.thread261

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !127
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !132
  %i.cb = icmp eq i64 %i.ca, 5
  br i1 %i.cb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !130 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !42
  %i.cg = load i64, ptr %i.cd, align 8, !tbaa !42
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.ci = load i64, ptr %i.bn, align 8, !tbaa !94
  %i.cj = icmp eq i64 %i.ci, 0
  %.pre = load i64, ptr %i.bo, align 8, !tbaa !94
  %i.ck = icmp eq i64 %.pre, 0                    ; 2 uses
  br i1 %i.cj, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bn, i64 80 ; 2 uses
  br i1 %i.ck, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !94
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %bb.x, label %.thread

bb.v:                                             ; preds = %bb.s
  br i1 %i.ck, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.co = getelementptr inbounds nuw i8, ptr %i.bn, i64 80
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !94
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.x, label %.thread

.thread:                                          ; preds = %bb.u, %bb.w, %bb.v
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.40) #18
  br label %.thread188

bb.x:                                             ; preds = %bb.t, %bb.w, %bb.u, %bb.r
  %.sroa.7235.0 = phi ptr [ %i.bn, %bb.r ], [ @setup_decode_folder.coder_copy, %bb.w ], [ @setup_decode_folder.coder_copy, %bb.u ], [ @setup_decode_folder.coder_copy, %bb.t ]
  %.sroa.5234.0 = phi ptr [ %i.bo, %bb.r ], [ @setup_decode_folder.coder_copy, %bb.w ], [ @setup_decode_folder.coder_copy, %bb.u ], [ @setup_decode_folder.coder_copy, %bb.t ]
  %.sroa.7.0 = phi i64 [ %i.cg, %bb.r ], [ -1, %bb.w ], [ -1, %bb.u ], [ -1, %bb.t ]
  %.sroa.5.0 = phi i64 [ %i.cf, %bb.r ], [ -1, %bb.w ], [ -1, %bb.u ], [ -1, %bb.t ]
  %.sroa.8.0 = phi i64 [ 0, %bb.r ], [ 2, %bb.w ], [ 2, %bb.u ], [ 2, %bb.t ]
  %.sroa.6.0 = phi i64 [ 2, %bb.r ], [ 1, %bb.w ], [ 1, %bb.u ], [ 1, %bb.t ]
  %.sroa.0.0 = phi i64 [ 1, %bb.r ], [ 0, %bb.w ], [ 0, %bb.u ], [ 0, %bb.t ]
  %.0155 = phi ptr [ %i.ch, %bb.r ], [ %i.bn, %bb.w ], [ %i.bo, %bb.u ], [ %i.cl, %bb.t ]
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !130
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  br label %bb.ac

bb.y:                                             ; preds = %bb.n
  br i1 %.not196, label %bb.z, label %.thread261

bb.z:                                             ; preds = %bb.y
  %i.cu = load i64, ptr %i.bo, align 8, !tbaa !94
  %i.cv = icmp eq i64 %i.cu, 50528539
  %i.cw = icmp eq i32 %i.p, 4
  %or.cond194 = select i1 %i.cv, i1 %i.cw, i1 false
  br i1 %or.cond194, label %bb.aa, label %.thread261

bb.aa:                                            ; preds = %bb.z
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !195
  %i.cz = icmp eq i64 %i.cy, 5
  %i.da = icmp eq i64 %i.v, 2
  %or.cond195 = and i1 %i.da, %i.cz
  br i1 %or.cond195, label %bb.ab, label %.thread261

bb.ab:                                            ; preds = %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !130
  br label %bb.ac

.thread261:                                       ; preds = %bb.o, %bb.p, %bb.aa, %bb.z, %bb.y
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.40) #18
  br label %.thread188

bb.ac:                                            ; preds = %bb.ab, %bb.x
  %.sink.in = phi ptr [ %i.dc, %bb.ab ], [ %i.ct, %bb.x ]
  %.sroa.7235.1 = phi ptr [ @setup_decode_folder.coder_copy, %bb.ab ], [ %.sroa.7235.0, %bb.x ]
  %.sroa.5234.1 = phi ptr [ @setup_decode_folder.coder_copy, %bb.ab ], [ %.sroa.5234.0, %bb.x ]
  %.sroa.7.1 = phi i64 [ -1, %bb.ab ], [ %.sroa.7.0, %bb.x ] ; 2 uses
  %.sroa.5.1 = phi i64 [ -1, %bb.ab ], [ %.sroa.5.0, %bb.x ] ; 2 uses
  %.sroa.8.1 = phi i64 [ 2, %bb.ab ], [ %.sroa.8.0, %bb.x ] ; 2 uses
  %.sroa.6.1 = phi i64 [ 1, %bb.ab ], [ %.sroa.6.0, %bb.x ] ; 2 uses
  %.sroa.0.1 = phi i64 [ 0, %bb.ab ], [ %.sroa.0.0, %bb.x ] ; 2 uses
  %.1156 = phi ptr [ %i.bn, %bb.ab ], [ %.0155, %bb.x ]
  %.1152 = phi ptr [ %i.bo, %bb.ab ], [ %i.bq, %bb.x ]
  %.sink = load i64, ptr %.sink.in, align 8, !tbaa !42
  %i.dd = getelementptr inbounds nuw i8, ptr %i.f, i64 20032
  store i64 %.sink, ptr %i.dd, align 8, !tbaa !133
  %i.de = tail call fastcc i32 @seek_pack(ptr noundef %0) ; 2 uses
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %.thread188, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 280 ; 10 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !134
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 288 ; 4 uses
  store i64 %i.dh, ptr %i.di, align 8, !tbaa !74
  tail call fastcc void @read_consume(ptr noundef %0)
  %i.dj = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !60 ; 7 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 276 ; 3 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !122 ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge210.1, %._crit_edge210, %bb.ad
  %i.do = phi ptr [ %i.he, %._crit_edge210.1 ], [ null, %._crit_edge210 ], [ null, %bb.ad ]
  %i.dp = phi ptr [ %i.eu, %._crit_edge210.1 ], [ %i.eu, %._crit_edge210 ], [ null, %bb.ad ]
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.19) #18
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !135
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 272 ; 3 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !124 ; 2 uses
  %i.du = zext i32 %i.dt to i64                   ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !42
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dk, i64 280
  store i64 %i.dw, ptr %i.dx, align 8, !tbaa !134
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !136
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.du
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !42 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dk, i64 248 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !63
  %.not.i180 = icmp eq i64 %i.ed, %i.eb
  br i1 %.not.i180, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dk, i64 136
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !62
  %i.eg = add i64 %i.ef, %i.eb
  %i.eh = tail call i64 @__archive_read_seek(ptr noundef nonnull %0, i64 noundef %i.eg, i32 noundef 0) #18
  %i.ei = icmp slt i64 %i.eh, 0
  br i1 %i.ei, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !63
  %.pre.i = load i32, ptr %i.ds, align 8, !tbaa !124
  %.pre18.i = load i32, ptr %i.dl, align 4, !tbaa !122
  br label %bb.ai

.loopexit:                                        ; preds = %bb.ag, %bb.as, %bb.be, %bb.ae
  %i.ej = phi ptr [ %i.do, %bb.ae ], [ %i.he, %bb.be ], [ null, %bb.as ], [ null, %bb.ag ]
  %i.ek = phi ptr [ %i.dp, %bb.ae ], [ %i.eu, %bb.be ], [ %i.eu, %bb.as ], [ null, %bb.ag ]
  tail call void @free(ptr noundef %i.ek) #18
  tail call void @free(ptr noundef %i.ej) #18
  br label %.thread188

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %i.el = phi i32 [ %.pre18.i, %bb.ah ], [ %i.dm, %bb.af ]
  %i.em = phi i32 [ %.pre.i, %bb.ah ], [ %i.dt, %bb.af ]
  %i.en = add i32 %i.em, 1
  store i32 %i.en, ptr %i.ds, align 8, !tbaa !124
  %i.eo = add i32 %i.el, -1
  store i32 %i.eo, ptr %i.dl, align 4, !tbaa !122
  %i.ep = load i64, ptr %i.dg, align 8, !tbaa !134
  store i64 %i.ep, ptr %i.aq, align 8, !tbaa !75
  %i.eq = tail call fastcc i32 @init_decompression(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef nonnull @setup_decode_folder.coder_copy, ptr noundef null)
  %.not175 = icmp eq i32 %i.eq, 0
  br i1 %.not175, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.bi, %bb.aw, %bb.ai
  %i.er = phi ptr [ %i.he, %bb.bi ], [ null, %bb.aw ], [ null, %bb.ai ]
  %i.es = phi ptr [ %i.eu, %bb.bi ], [ %i.eu, %bb.aw ], [ null, %bb.ai ]
  tail call void @free(ptr noundef %i.es) #18
  tail call void @free(ptr noundef %i.er) #18
  br label %.thread188

bb.ak:                                            ; preds = %bb.ai
  %i.et = load i64, ptr %i.aq, align 8, !tbaa !75
  %i.eu = tail call noalias ptr @malloc(i64 noundef %i.et) #21 ; 12 uses
  store ptr %i.eu, ptr %i.b, align 16, !tbaa !115
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.al, label %.preheader197

.preheader197:                                    ; preds = %bb.ak
  %i.ew = load i64, ptr %i.dg, align 8, !tbaa !134
  %.not176208 = icmp eq i64 %i.ew, 0
  br i1 %.not176208, label %._crit_edge210, label %.lr.ph209

.lr.ph209:                                        ; preds = %.preheader197
  %.promoted = load i64, ptr %i.c, align 16
  br label %bb.am

bb.al:                                            ; preds = %bb.bj, %bb.ax, %bb.ak
  %i.ex = phi ptr [ %i.he, %bb.bj ], [ null, %bb.ax ], [ null, %bb.ak ]
  tail call void @free(ptr noundef %i.eu) #18
  tail call void @free(ptr noundef %i.ex) #18
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.23) #18
  br label %.thread188

bb.am:                                            ; preds = %.lr.ph209, %read_consume.exit
  %3 = phi i64 [ %.promoted, %.lr.ph209 ], [ %i.fm, %read_consume.exit ] ; 2 uses
  %i.ey = phi i64 [ 0, %.lr.ph209 ], [ %i.fm, %read_consume.exit ] ; 2 uses
  %i.ez = tail call fastcc i64 @extract_pack_stream(ptr noundef nonnull %0, i64 noundef 0) ; 2 uses
  %i.fa = icmp slt i64 %i.ez, 0
  br i1 %i.fa, label %.loopexit221.loopexit264, label %bb.an

.loopexit221.loopexit:                            ; preds = %bb.bk
  store i64 %5, ptr %i.jn, align 16
  br label %.loopexit221

.loopexit221.loopexit262:                         ; preds = %bb.ay
  store i64 %4, ptr %i.hi, align 8
  br label %.loopexit221

.loopexit221.loopexit264:                         ; preds = %bb.am
  store i64 %3, ptr %i.c, align 16
  br label %.loopexit221

.loopexit221:                                     ; preds = %.loopexit221.loopexit264, %.loopexit221.loopexit262, %.loopexit221.loopexit
  %i.fb = phi ptr [ null, %.loopexit221.loopexit262 ], [ %i.jj, %.loopexit221.loopexit ], [ null, %.loopexit221.loopexit264 ]
  %i.fc = phi ptr [ %i.he, %.loopexit221.loopexit262 ], [ %i.he, %.loopexit221.loopexit ], [ null, %.loopexit221.loopexit264 ]
  %.lcssa = phi i64 [ %i.hk, %.loopexit221.loopexit262 ], [ %i.jp, %.loopexit221.loopexit ], [ %i.ez, %.loopexit221.loopexit264 ]
  %i.fd = trunc nsw i64 %.lcssa to i32
  tail call void @free(ptr noundef %i.eu) #18
  tail call void @free(ptr noundef %i.fc) #18
  tail call void @free(ptr noundef %i.fb) #18
  br label %.thread188

bb.an:                                            ; preds = %bb.am
  %i.fe = load i64, ptr %i.ar, align 8, !tbaa !77
  %i.ff = call fastcc i64 @get_uncompressed_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.fe, i64 noundef 0) ; 4 uses
  %i.fg = icmp slt i64 %i.ff, 0
  br i1 %i.fg, label %.loopexit222.loopexit265, label %bb.ao

.loopexit222.loopexit:                            ; preds = %bb.bl
  store i64 %5, ptr %i.jn, align 16
  br label %.loopexit222

.loopexit222.loopexit263:                         ; preds = %bb.az
  store i64 %4, ptr %i.hi, align 8
  br label %.loopexit222

.loopexit222.loopexit265:                         ; preds = %bb.an
  store i64 %3, ptr %i.c, align 16
  br label %.loopexit222

.loopexit222:                                     ; preds = %.loopexit222.loopexit265, %.loopexit222.loopexit263, %.loopexit222.loopexit
  %i.fh = phi ptr [ null, %.loopexit222.loopexit263 ], [ %i.jj, %.loopexit222.loopexit ], [ null, %.loopexit222.loopexit265 ]
  %i.fi = phi ptr [ %i.he, %.loopexit222.loopexit263 ], [ %i.he, %.loopexit222.loopexit ], [ null, %.loopexit222.loopexit265 ]
  %.lcssa216 = phi i64 [ %i.hn, %.loopexit222.loopexit263 ], [ %i.js, %.loopexit222.loopexit ], [ %i.ff, %.loopexit222.loopexit265 ]
  tail call void @free(ptr noundef %i.eu) #18
  tail call void @free(ptr noundef %i.fi) #18
  tail call void @free(ptr noundef %i.fh) #18
  %i.fj = trunc i64 %.lcssa216 to i32
  br label %.thread188

bb.ao:                                            ; preds = %bb.an
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ey
  %i.fl = load ptr, ptr %i.a, align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fk, ptr align 1 %i.fl, i64 %i.ff, i1 false)
  %i.fm = add i64 %i.ey, %i.ff                    ; 3 uses
  %i.fn = load i64, ptr %i.di, align 8, !tbaa !74
  %.not177 = icmp eq i64 %i.fn, 0
  br i1 %.not177, label %read_consume.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fo = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !60 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 288 ; 3 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !74 ; 2 uses
  %.not.i181 = icmp eq i64 %i.fr, 0
  br i1 %.not.i181, label %read_consume.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fs = tail call i64 @__archive_read_consume(ptr noundef nonnull %0, i64 noundef %i.fr) #18 ; 0 uses
  %i.ft = load i64, ptr %i.fq, align 8, !tbaa !74
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 248 ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !63
  %i.fw = add i64 %i.fv, %i.ft
  store i64 %i.fw, ptr %i.fu, align 8, !tbaa !63
  store i64 0, ptr %i.fq, align 8, !tbaa !74
  br label %read_consume.exit

read_consume.exit:                                ; preds = %bb.aq, %bb.ap, %bb.ao
  %i.fx = load i64, ptr %i.dg, align 8, !tbaa !134
  %.not176 = icmp eq i64 %i.fx, 0
  br i1 %.not176, label %._crit_edge210.loopexit, label %bb.am, !llvm.loop !194

._crit_edge210.loopexit:                          ; preds = %read_consume.exit
  store i64 %i.fm, ptr %i.c, align 16
  br label %._crit_edge210

._crit_edge210:                                   ; preds = %._crit_edge210.loopexit, %.preheader197
  %i.fy = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !60 ; 7 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 276 ; 3 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !122 ; 2 uses
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %bb.ae, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge210
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !135
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fz, i64 272 ; 3 uses
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !124 ; 2 uses
  %i.gh = zext i32 %i.gg to i64                   ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.gh
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !42
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fz, i64 280
  store i64 %i.gj, ptr %i.gk, align 8, !tbaa !134
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !136
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gh
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !42 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fz, i64 248 ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !63
  %.not.i180.1 = icmp eq i64 %i.gq, %i.go
  br i1 %.not.i180.1, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fz, i64 136
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !62
  %i.gt = add i64 %i.gs, %i.go
  %i.gu = tail call i64 @__archive_read_seek(ptr noundef nonnull %0, i64 noundef %i.gt, i32 noundef 0) #18
  %i.gv = icmp slt i64 %i.gu, 0
  br i1 %i.gv, label %.loopexit, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i64 %i.go, ptr %i.gp, align 8, !tbaa !63
  %.pre.i.1 = load i32, ptr %i.gf, align 8, !tbaa !124
  %.pre18.i.1 = load i32, ptr %i.ga, align 4, !tbaa !122
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ar
  %i.gw = phi i32 [ %.pre18.i.1, %bb.at ], [ %i.gb, %bb.ar ]
  %i.gx = phi i32 [ %.pre.i.1, %bb.at ], [ %i.gg, %bb.ar ]
  %i.gy = add i32 %i.gx, 1
  store i32 %i.gy, ptr %i.gf, align 8, !tbaa !124
  %i.gz = add i32 %i.gw, -1
  store i32 %i.gz, ptr %i.ga, align 4, !tbaa !122
  %i.ha = icmp eq i64 %.sroa.5.1, -1
  br i1 %i.ha, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hb = load i64, ptr %i.dg, align 8, !tbaa !134
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %storemerge.1 = phi i64 [ %i.hb, %bb.av ], [ %.sroa.5.1, %bb.au ]
  store i64 %storemerge.1, ptr %i.aq, align 8, !tbaa !75
  %i.hc = tail call fastcc i32 @init_decompression(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef %.sroa.5234.1, ptr noundef null)
  %.not175.1 = icmp eq i32 %i.hc, 0
  br i1 %.not175.1, label %bb.ax, label %bb.aj

bb.ax:                                            ; preds = %bb.aw
  %i.hd = load i64, ptr %i.aq, align 8, !tbaa !75
  %i.he = tail call noalias ptr @malloc(i64 noundef %i.hd) #21 ; 11 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.he, ptr %i.hf, align 8, !tbaa !115
  %i.hg = icmp eq ptr %i.he, null
  br i1 %i.hg, label %bb.al, label %.preheader197.1

.preheader197.1:                                  ; preds = %bb.ax
  %i.hh = load i64, ptr %i.dg, align 8, !tbaa !134
  %.not176208.1 = icmp eq i64 %i.hh, 0
  br i1 %.not176208.1, label %._crit_edge210.1, label %.lr.ph209.1

.lr.ph209.1:                                      ; preds = %.preheader197.1
  %i.hi = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %.promoted285 = load i64, ptr %i.hi, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %read_consume.exit.1, %.lr.ph209.1
  %4 = phi i64 [ %i.hr, %read_consume.exit.1 ], [ %.promoted285, %.lr.ph209.1 ] ; 2 uses
  %i.hj = phi i64 [ %i.hr, %read_consume.exit.1 ], [ 0, %.lr.ph209.1 ] ; 2 uses
  %i.hk = tail call fastcc i64 @extract_pack_stream(ptr noundef nonnull %0, i64 noundef 0) ; 2 uses
  %i.hl = icmp slt i64 %i.hk, 0
  br i1 %i.hl, label %.loopexit221.loopexit262, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hm = load i64, ptr %i.ar, align 8, !tbaa !77
  %i.hn = call fastcc i64 @get_uncompressed_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.hm, i64 noundef 0) ; 4 uses
  %i.ho = icmp slt i64 %i.hn, 0
  br i1 %i.ho, label %.loopexit222.loopexit263, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hp = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hj
  %i.hq = load ptr, ptr %i.a, align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hp, ptr align 1 %i.hq, i64 %i.hn, i1 false)
  %i.hr = add i64 %i.hj, %i.hn                    ; 3 uses
  %i.hs = load i64, ptr %i.di, align 8, !tbaa !74
  %.not177.1 = icmp eq i64 %i.hs, 0
  br i1 %.not177.1, label %read_consume.exit.1, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ht = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !60 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 288 ; 3 uses
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !74 ; 2 uses
  %.not.i181.1 = icmp eq i64 %i.hw, 0
  br i1 %.not.i181.1, label %read_consume.exit.1, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hx = tail call i64 @__archive_read_consume(ptr noundef nonnull %0, i64 noundef %i.hw) #18 ; 0 uses
  %i.hy = load i64, ptr %i.hv, align 8, !tbaa !74
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 248 ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !63
  %i.ib = add i64 %i.ia, %i.hy
  store i64 %i.ib, ptr %i.hz, align 8, !tbaa !63
  store i64 0, ptr %i.hv, align 8, !tbaa !74
  br label %read_consume.exit.1

read_consume.exit.1:                              ; preds = %bb.bc, %bb.bb, %bb.ba
  %i.ic = load i64, ptr %i.dg, align 8, !tbaa !134
  %.not176.1 = icmp eq i64 %i.ic, 0
  br i1 %.not176.1, label %._crit_edge210.1.loopexit, label %bb.ay, !llvm.loop !194

._crit_edge210.1.loopexit:                        ; preds = %read_consume.exit.1
  store i64 %i.hr, ptr %i.hi, align 8
  br label %._crit_edge210.1

._crit_edge210.1:                                 ; preds = %._crit_edge210.1.loopexit, %.preheader197.1
  %i.id = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !60 ; 7 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 276 ; 3 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !122 ; 2 uses
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %bb.ae, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge210.1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !135
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ie, i64 272 ; 3 uses
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !124 ; 2 uses
  %i.im = zext i32 %i.il to i64                   ; 2 uses
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.im
  %i.io = load i64, ptr %i.in, align 8, !tbaa !42
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ie, i64 280
  store i64 %i.io, ptr %i.ip, align 8, !tbaa !134
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ie, i64 40
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !136
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.im
  %i.it = load i64, ptr %i.is, align 8, !tbaa !42 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ie, i64 248 ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !63
  %.not.i180.2 = icmp eq i64 %i.iv, %i.it
  br i1 %.not.i180.2, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ie, i64 136
  %i.ix = load i64, ptr %i.iw, align 8, !tbaa !62
  %i.iy = add i64 %i.ix, %i.it
  %i.iz = tail call i64 @__archive_read_seek(ptr noundef nonnull %0, i64 noundef %i.iy, i32 noundef 0) #18
  %i.ja = icmp slt i64 %i.iz, 0
  br i1 %i.ja, label %.loopexit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i64 %i.it, ptr %i.iu, align 8, !tbaa !63
  %.pre.i.2 = load i32, ptr %i.ik, align 8, !tbaa !124
  %.pre18.i.2 = load i32, ptr %i.if, align 4, !tbaa !122
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bd
  %i.jb = phi i32 [ %.pre18.i.2, %bb.bf ], [ %i.ig, %bb.bd ]
  %i.jc = phi i32 [ %.pre.i.2, %bb.bf ], [ %i.il, %bb.bd ]
  %i.jd = add i32 %i.jc, 1
  store i32 %i.jd, ptr %i.ik, align 8, !tbaa !124
  %i.je = add i32 %i.jb, -1
  store i32 %i.je, ptr %i.if, align 4, !tbaa !122
  %i.jf = icmp eq i64 %.sroa.7.1, -1
  br i1 %i.jf, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.jg = load i64, ptr %i.dg, align 8, !tbaa !134
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %storemerge.2 = phi i64 [ %i.jg, %bb.bh ], [ %.sroa.7.1, %bb.bg ]
  store i64 %storemerge.2, ptr %i.aq, align 8, !tbaa !75
  %i.jh = tail call fastcc i32 @init_decompression(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef %.sroa.7235.1, ptr noundef null)
  %.not175.2 = icmp eq i32 %i.jh, 0
  br i1 %.not175.2, label %bb.bj, label %bb.aj

bb.bj:                                            ; preds = %bb.bi
  %i.ji = load i64, ptr %i.aq, align 8, !tbaa !75
  %i.jj = tail call noalias ptr @malloc(i64 noundef %i.ji) #21 ; 5 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.jj, ptr %i.jk, align 16, !tbaa !115
  %i.jl = icmp eq ptr %i.jj, null
  br i1 %i.jl, label %bb.al, label %.preheader197.2

.preheader197.2:                                  ; preds = %bb.bj
  %i.jm = load i64, ptr %i.dg, align 8, !tbaa !134
  %.not176208.2 = icmp eq i64 %i.jm, 0
  br i1 %.not176208.2, label %._crit_edge210.2, label %.lr.ph209.2

.lr.ph209.2:                                      ; preds = %.preheader197.2
  %i.jn = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  %.promoted289 = load i64, ptr %i.jn, align 16
  br label %bb.bk

bb.bk:                                            ; preds = %read_consume.exit.2, %.lr.ph209.2
  %5 = phi i64 [ %i.jw, %read_consume.exit.2 ], [ %.promoted289, %.lr.ph209.2 ] ; 2 uses
  %i.jo = phi i64 [ %i.jw, %read_consume.exit.2 ], [ 0, %.lr.ph209.2 ] ; 2 uses
  %i.jp = tail call fastcc i64 @extract_pack_stream(ptr noundef nonnull %0, i64 noundef 0) ; 2 uses
  %i.jq = icmp slt i64 %i.jp, 0
  br i1 %i.jq, label %.loopexit221.loopexit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jr = load i64, ptr %i.ar, align 8, !tbaa !77
  %i.js = call fastcc i64 @get_uncompressed_data(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.jr, i64 noundef 0) ; 4 uses
  %i.jt = icmp slt i64 %i.js, 0
  br i1 %i.jt, label %.loopexit222.loopexit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jj, i64 %i.jo
  %i.jv = load ptr, ptr %i.a, align 8, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ju, ptr align 1 %i.jv, i64 %i.js, i1 false)
  %i.jw = add i64 %i.jo, %i.js                    ; 3 uses
  %i.jx = load i64, ptr %i.di, align 8, !tbaa !74
  %.not177.2 = icmp eq i64 %i.jx, 0
  br i1 %.not177.2, label %read_consume.exit.2, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jy = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !60 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 288 ; 3 uses
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !74 ; 2 uses
  %.not.i181.2 = icmp eq i64 %i.kb, 0
  br i1 %.not.i181.2, label %read_consume.exit.2, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kc = tail call i64 @__archive_read_consume(ptr noundef nonnull %0, i64 noundef %i.kb) #18 ; 0 uses
  %i.kd = load i64, ptr %i.ka, align 8, !tbaa !74
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jz, i64 248 ; 2 uses
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !63
  %i.kg = add i64 %i.kf, %i.kd
  store i64 %i.kg, ptr %i.ke, align 8, !tbaa !63
  store i64 0, ptr %i.ka, align 8, !tbaa !74
  br label %read_consume.exit.2

read_consume.exit.2:                              ; preds = %bb.bo, %bb.bn, %bb.bm
  %i.kh = load i64, ptr %i.dg, align 8, !tbaa !134
  %.not176.2 = icmp eq i64 %i.kh, 0
  br i1 %.not176.2, label %._crit_edge210.2.loopexit, label %bb.bk, !llvm.loop !194

._crit_edge210.2.loopexit:                        ; preds = %read_consume.exit.2
  store i64 %i.jw, ptr %i.jn, align 16
  br label %._crit_edge210.2

._crit_edge210.2:                                 ; preds = %._crit_edge210.2.loopexit, %.preheader197.2
  %i.ki = getelementptr inbounds nuw i8, ptr %i.f, i64 20064
  %i.kj = getelementptr inbounds nuw i8, ptr %i.f, i64 20088
  %i.kk = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.sroa.0.1
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !115
  store ptr %i.kl, ptr %i.g, align 8, !tbaa !115
  %i.km = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.sroa.0.1
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !42 ; 2 uses
  store i64 %i.kn, ptr %i.ki, align 8, !tbaa !42
  store i64 %i.kn, ptr %i.kj, align 8, !tbaa !42
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.sroa.6.1
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !115
  store ptr %i.kp, ptr %i.i, align 8, !tbaa !115
  %i.kq = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.sroa.6.1
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !42 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.f, i64 20072
  store i64 %i.kr, ptr %i.ks, align 8, !tbaa !42
  %i.kt = getelementptr inbounds nuw i8, ptr %i.f, i64 20096
  store i64 %i.kr, ptr %i.kt, align 8, !tbaa !42
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.sroa.8.1
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !115
  store ptr %i.kv, ptr %i.k, align 8, !tbaa !115
  %i.kw = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.sroa.8.1
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !42 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.f, i64 20080
  store i64 %i.kx, ptr %i.ky, align 8, !tbaa !42
  %i.kz = getelementptr inbounds nuw i8, ptr %i.f, i64 20104
  store i64 %i.kx, ptr %i.kz, align 8, !tbaa !42
  %i.la = getelementptr inbounds nuw i8, ptr %i.f, i64 20112 ; 2 uses
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !116
  %i.lc = icmp eq ptr %i.lb, null
  br i1 %i.lc, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %._crit_edge210.2
  %i.ld = getelementptr inbounds nuw i8, ptr %i.f, i64 20120
  store i64 32768, ptr %i.ld, align 8, !tbaa !137
  %i.le = tail call noalias dereferenceable_or_null(32768) ptr @malloc(i64 noundef 32768) #21 ; 2 uses
  store ptr %i.le, ptr %i.la, align 8, !tbaa !116
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.23) #18
  br label %.thread188

.thread188:                                       ; preds = %.thread261, %bb.bq, %.thread, %bb.ac, %.loopexit, %bb.aj, %bb.al, %.loopexit221, %.loopexit222
  %.2161.ph = phi i32 [ %i.de, %bb.ac ], [ -30, %.thread ], [ -30, %bb.bq ], [ -30, %.thread261 ], [ %i.fj, %.loopexit222 ], [ %i.fd, %.loopexit221 ], [ -30, %bb.al ], [ -30, %bb.aj ], [ -30, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.bt

bb.br:                                            ; preds = %._crit_edge210.2, %bb.bp
  %i.lg = getelementptr inbounds nuw i8, ptr %i.f, i64 20128
  %i.lh = getelementptr inbounds nuw i8, ptr %i.f, i64 20000
  store i64 0, ptr %i.lh, align 8, !tbaa !138
  %i.li = getelementptr inbounds nuw i8, ptr %i.f, i64 20672
  store i64 0, ptr %i.li, align 8, !tbaa !139
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.lg, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.q, align 4, !tbaa !122
  %i.lj = load i32, ptr %i.r, align 8, !tbaa !123
  store i32 %i.lj, ptr %i.t, align 8, !tbaa !124
  %i.lk = tail call fastcc i64 @folder_uncompressed_size(ptr noundef nonnull %1)
  store i64 %i.lk, ptr %i.aq, align 8, !tbaa !75
  store i64 0, ptr %i.ar, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.m
  %.3158 = phi ptr [ %.1156, %bb.br ], [ %i.bn, %bb.m ]
  %.3154 = phi ptr [ %.1152, %bb.br ], [ %.0151, %bb.m ]
  %i.ll = tail call fastcc i32 @init_decompression(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef %.3158, ptr noundef %.3154)
  %.not178 = icmp eq i32 %i.ll, 0
  %. = select i1 %.not178, i32 0, i32 -30
  br label %bb.bt

bb.bt:                                            ; preds = %.thread188, %bb.bs, %bb.l, %bb.g
  %.3162 = phi i32 [ -30, %bb.g ], [ -30, %bb.l ], [ %., %bb.bs ], [ %.2161.ph, %.thread188 ]
  ret i32 %.3162
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @seek_pack(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 276 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !122  ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.19) #18
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !135
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !124  ; 2 uses
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  store i64 %i.m, ptr %i.n, align 8, !tbaa !134
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !136
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.k
  %i.r = load i64, ptr %i.q, align 8, !tbaa !42   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 248 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !63
  %.not = icmp eq i64 %i.t, %i.r
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.v = load i64, ptr %i.u, align 8, !tbaa !62
  %i.w = add i64 %i.v, %i.r
  %i.x = tail call i64 @__archive_read_seek(ptr noundef nonnull %0, i64 noundef %i.w, i32 noundef 0) #18
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %i.r, ptr %i.s, align 8, !tbaa !63
  %.pre = load i32, ptr %i.i, align 8, !tbaa !124
  %.pre18 = load i32, ptr %i.d, align 4, !tbaa !122
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.z = phi i32 [ %.pre18, %bb.e ], [ %i.e, %bb.c ]
  %i.aa = phi i32 [ %.pre, %bb.e ], [ %i.j, %bb.c ]
  %i.ab = add i32 %i.aa, 1
  store i32 %i.ab, ptr %i.i, align 8, !tbaa !124
  %i.ac = add i32 %i.z, -1
  store i32 %i.ac, ptr %i.d, align 4, !tbaa !122
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.b
  %.0 = phi i32 [ -30, %bb.b ], [ 0, %bb.f ], [ -30, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @free_StreamsInfo(ptr nofree noundef readonly captures(none) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140
  tail call void @free(ptr noundef %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !141
  tail call void @free(ptr noundef %i.d) #18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !142
  tail call void @free(ptr noundef %i.f) #18
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143
  tail call void @free(ptr noundef %i.h) #18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !144  ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %free_CodersInfo.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.l = load i64, ptr %i.i, align 8, !tbaa !145
  %.not8.i = icmp eq i64 %i.l, 0
end_hunk_0
