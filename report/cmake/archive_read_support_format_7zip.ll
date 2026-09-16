Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_7zip?download=true
inline.NumInlined: 63
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@header_bytes:bb.a
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
  br i1 %.not.i, label %.thread18.i, label %.preheader.lr.ph.split.us.i

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader.lr.ph.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !127
  %i.ae = zext nneg i32 %i.x to i64
  br label %.preheader.us.i

.loopexit.i:                                      ; preds = %bb.c
  %indvars.iv.next27.i = add nsw i64 %indvars.iv26.i, -1
  %3 = icmp sgt i64 %indvars.iv26.i, 0
  br i1 %3, label %.preheader.us.i, label %folder_uncompressed_size.exit

.preheader.us.i:                                  ; preds = %.loopexit.i, %.preheader.lr.ph.split.us.i
  %indvars.iv26.i = phi i64 [ %i.ae, %.preheader.lr.ph.split.us.i ], [ %indvars.iv.next27.i, %.loopexit.i ] ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.ab
  br i1 %exitcond.not.i, label %.thread18.loopexit.i, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %bb.b, %.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !129
  %i.ai = icmp eq i64 %i.ah, %indvars.iv26.i
  br i1 %i.ai, label %.loopexit.i, label %bb.b

.thread18.loopexit.i:                             ; preds = %bb.b
  %i.aj = trunc nuw nsw i64 %indvars.iv26.i to i32
  br label %.thread18.i

.thread18.i:                                      ; preds = %.thread18.loopexit.i, %.preheader.lr.ph.i
  %.lcssa21.i = phi i32 [ %i.x, %.preheader.lr.ph.i ], [ %i.aj, %.thread18.loopexit.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !130
  %i.am = zext nneg i32 %.lcssa21.i to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !42
  br label %folder_uncompressed_size.exit

folder_uncompressed_size.exit:                    ; preds = %.loopexit.i, %bb.a, %.thread18.i
  %.2.i = phi i64 [ %i.ao, %.thread18.i ], [ 0, %bb.a ], [ 0, %.loopexit.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 264 ; 8 uses
  store i64 %.2.i, ptr %i.ap, align 8, !tbaa !75
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 240 ; 5 uses
  store i64 0, ptr %i.aq, align 8, !tbaa !77
  %i.ar = load i64, ptr %1, align 8, !tbaa !91    ; 5 uses
  %.not213 = icmp eq i64 %i.ar, 0
  br i1 %.not213, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %folder_uncompressed_size.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !92
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %i.au = phi i64 [ 0, %.lr.ph ], [ %i.bd, %bb.i ]
  %.0147206 = phi i32 [ 0, %.lr.ph ], [ %.1148, %bb.i ] ; 2 uses
  %.1150205 = phi i32 [ 0, %.lr.ph ], [ %i.bc, %bb.i ]
  %i.av = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !94
  switch i64 %i.aw, label %bb.i [
    i64 116457729, label %bb.e
    i64 116458243, label %bb.e
    i64 116459265, label %bb.e
    i64 50528539, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 20752
  store i32 1, ptr %i.ax, align 8, !tbaa !40
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !131 ; 2 uses
  %.not179 = icmp eq ptr %i.az, null
  br i1 %.not179, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @archive_entry_set_is_data_encrypted(ptr noundef nonnull %i.az, i8 noundef signext 1) #18
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !131
  tail call void @archive_entry_set_is_metadata_encrypted(ptr noundef %i.ba, i8 noundef signext 1) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.m) #18
  br label %bb.bt

bb.h:                                             ; preds = %bb.d
  %i.bb = add nsw i32 %.0147206, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h
  %.1148 = phi i32 [ %.0147206, %bb.d ], [ %i.bb, %bb.h ] ; 2 uses
  %i.bc = add i32 %.1150205, 1                    ; 2 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = icmp ugt i64 %i.ar, %i.bd
  br i1 %i.be, label %bb.d, label %._crit_edge, !llvm.loop !193

._crit_edge:                                      ; preds = %bb.i, %folder_uncompressed_size.exit
  %.0147.lcssa = phi i32 [ 0, %folder_uncompressed_size.exit ], [ %.1148, %bb.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.f, i64 20752 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !40
  %i.bh = icmp eq i32 %i.bg, -1
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  store i32 0, ptr %i.bf, align 8, !tbaa !40
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.bi = icmp samesign ugt i64 %i.ar, 2
  %i.bj = icmp eq i32 %.0147.lcssa, 0             ; 2 uses
  %or.cond.not173 = select i1 %i.bi, i1 %i.bj, i1 false
  %i.bk = icmp sgt i32 %.0147.lcssa, 1
  %or.cond4 = select i1 %or.cond.not173, i1 true, i1 %i.bk
  br i1 %or.cond4, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.39, ptr noundef nonnull %i.m) #18
  br label %bb.bt

bb.m:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !92 ; 10 uses
  %.not196 = icmp eq i64 %i.ar, 2                 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 40 ; 6 uses
  %.0151 = select i1 %.not196, ptr %i.bn, ptr null
  br i1 %i.bj, label %bb.bs, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.bo = icmp eq i64 %i.ar, 4
  br i1 %i.bo, label %bb.o, label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 120 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !94
  %i.br = icmp eq i64 %i.bq, 50528539
  br i1 %i.br, label %bb.p, label %.thread261

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !195
  %i.bu = icmp eq i64 %i.bt, 7
  %i.bv = icmp eq i64 %i.v, 4
  %or.cond = and i1 %i.bv, %i.bu
  %i.bw = icmp eq i32 %i.p, 4
  %or.cond193 = select i1 %or.cond, i1 %i.bw, i1 false
  br i1 %or.cond193, label %bb.q, label %.thread261

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !127
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !132
  %i.ca = icmp eq i64 %i.bz, 5
  br i1 %i.ca, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !130 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !42
  %i.cf = load i64, ptr %i.cc, align 8, !tbaa !42
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.ch = load i64, ptr %i.bm, align 8, !tbaa !94
  %i.ci = icmp eq i64 %i.ch, 0
  %.pre = load i64, ptr %i.bn, align 8, !tbaa !94
  %i.cj = icmp eq i64 %.pre, 0                    ; 2 uses
  br i1 %i.ci, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bm, i64 80 ; 2 uses
  br i1 %i.cj, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !94
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.x, label %.thread

bb.v:                                             ; preds = %bb.s
  br i1 %i.cj, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !94
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.x, label %.thread

.thread:                                          ; preds = %bb.u, %bb.w, %bb.v
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.40) #18
  br label %.thread188

bb.x:                                             ; preds = %bb.t, %bb.w, %bb.u, %bb.r
  %.sroa.7235.0 = phi ptr [ %i.bm, %bb.r ], [ @setup_decode_folder.coder_copy, %bb.w ], [ @setup_decode_folder.coder_copy, %bb.u ], [ @setup_decode_folder.coder_copy, %bb.t ]
  %.sroa.5234.0 = phi ptr [ %i.bn, %bb.r ], [ @setup_decode_folder.coder_copy, %bb.w ], [ @setup_decode_folder.coder_copy, %bb.u ], [ @setup_decode_folder.coder_copy, %bb.t ]
  %.sroa.7.0 = phi i64 [ %i.cf, %bb.r ], [ -1, %bb.w ], [ -1, %bb.u ], [ -1, %bb.t ]
  %.sroa.5.0 = phi i64 [ %i.ce, %bb.r ], [ -1, %bb.w ], [ -1, %bb.u ], [ -1, %bb.t ]
  %.sroa.8.0 = phi i64 [ 0, %bb.r ], [ 2, %bb.w ], [ 2, %bb.u ], [ 2, %bb.t ]
  %.sroa.6.0 = phi i64 [ 2, %bb.r ], [ 1, %bb.w ], [ 1, %bb.u ], [ 1, %bb.t ]
  %.sroa.0.0 = phi i64 [ 1, %bb.r ], [ 0, %bb.w ], [ 0, %bb.u ], [ 0, %bb.t ]
  %.0155 = phi ptr [ %i.cg, %bb.r ], [ %i.bm, %bb.w ], [ %i.bn, %bb.u ], [ %i.ck, %bb.t ]
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !130
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  br label %bb.ac

bb.y:                                             ; preds = %bb.n
  br i1 %.not196, label %bb.z, label %.thread261

bb.z:                                             ; preds = %bb.y
  %i.ct = load i64, ptr %i.bn, align 8, !tbaa !94
  %i.cu = icmp eq i64 %i.ct, 50528539
  %i.cv = icmp eq i32 %i.p, 4
  %or.cond194 = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %or.cond194, label %bb.aa, label %.thread261

bb.aa:                                            ; preds = %bb.z
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !195
  %i.cy = icmp eq i64 %i.cx, 5
  %i.cz = icmp eq i64 %i.v, 2
  %or.cond195 = and i1 %i.cz, %i.cy
  br i1 %or.cond195, label %bb.ab, label %.thread261

bb.ab:                                            ; preds = %bb.aa
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !130
  br label %bb.ac

.thread261:                                       ; preds = %bb.o, %bb.p, %bb.aa, %bb.z, %bb.y
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.40) #18
  br label %.thread188

bb.ac:                                            ; preds = %bb.ab, %bb.x
  %.sink.in = phi ptr [ %i.db, %bb.ab ], [ %i.cs, %bb.x ]
  %.sroa.7235.1 = phi ptr [ @setup_decode_folder.coder_copy, %bb.ab ], [ %.sroa.7235.0, %bb.x ]
end_hunk_0
begin_hunk_1_@read_StreamsInfo:bb.a
  %.0128 = phi i32 [ 0, %.lr.ph130 ], [ %i.md, %bb.bp ] ; 3 uses
  %.158127 = phi i32 [ 0, %.lr.ph130 ], [ %i.lr, %bb.bp ]
  %i.lv = getelementptr inbounds nuw [104 x i8], ptr %i.lo, i64 %i.lu ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 88
  store i32 %.0128, ptr %i.lw, align 8, !tbaa !123
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lv, i64 32
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !121 ; 2 uses
  %i.lz = icmp ugt i64 %i.ly, 4294967295
  br i1 %i.lz, label %.critedge, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ma = trunc nuw i64 %i.ly to i32              ; 2 uses
  %i.mb = xor i32 %i.ma, -1
  %i.mc = icmp ugt i32 %.0128, %i.mb
  br i1 %i.mc, label %.critedge, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.md = add i32 %.0128, %i.ma                   ; 2 uses
  %i.me = zext i32 %i.md to i64
  %i.mf = load i64, ptr %i.lq, align 8, !tbaa !117
  %i.mg = icmp ult i64 %i.mf, %i.me
  br i1 %i.mg, label %.critedge, label %bb.bp

._crit_edge131:                                   ; preds = %bb.bp, %read_CodersInfo.exit.thread100
  %i.mh = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %.not104 = icmp eq ptr %i.mh, null
  br i1 %.not104, label %.critedge, label %._crit_edge131._crit_edge

._crit_edge131._crit_edge:                        ; preds = %._crit_edge131
  %.pre = load i8, ptr %i.mh, align 1, !tbaa !41
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge131._crit_edge, %bb.r
  %i.mi = phi i8 [ %.pre, %._crit_edge131._crit_edge ], [ %i.bv, %bb.r ] ; 2 uses
  %i.mj = icmp eq i8 %i.mi, 8
  br i1 %i.mj, label %bb.bu, label %bb.cz

bb.bu:                                            ; preds = %bb.bt
  %i.mk = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !151 ; 5 uses
  %i.mo = load i64, ptr %i.ml, align 8, !tbaa !118 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mk, i8 0, i64 32, i1 false)
  %.not216.i = icmp eq i64 %i.mo, 0               ; 5 uses
  br i1 %.not216.i, label %._crit_edge.i88, label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %bb.bu, %.lr.ph.i85
  %indvars.iv.i86 = phi i64 [ %indvars.iv.next.i87, %.lr.ph.i85 ], [ 0, %bb.bu ] ; 2 uses
  %i.mp = getelementptr inbounds nuw [104 x i8], ptr %i.mn, i64 %indvars.iv.i86
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 80
  store i64 1, ptr %i.mq, align 8, !tbaa !152
  %indvars.iv.next.i87 = add i64 %indvars.iv.i86, 1 ; 2 uses
  %i.mr = and i64 %indvars.iv.next.i87, 4294967295
  %i.ms = icmp ugt i64 %i.mo, %i.mr
  br i1 %i.ms, label %.lr.ph.i85, label %._crit_edge.i88, !llvm.loop !263

._crit_edge.i88:                                  ; preds = %.lr.ph.i85, %bb.bu
  %i.mt = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.mu = icmp eq ptr %i.mt, null
  br i1 %i.mu, label %.critedge, label %bb.bv

bb.bv:                                            ; preds = %._crit_edge.i88
  %i.mv = load i8, ptr %i.mt, align 1, !tbaa !41  ; 2 uses
  %i.mw = icmp eq i8 %i.mv, 13
  br i1 %i.mw, label %.preheader171.i, label %bb.bz

.preheader171.i:                                  ; preds = %bb.bv
  br i1 %.not216.i, label %._crit_edge181.i, label %.lr.ph180.i

.lr.ph180.i:                                      ; preds = %.preheader171.i, %bb.bx
  %i.mx = phi i64 [ %i.nh, %bb.bx ], [ 0, %.preheader171.i ]
  %.1125179.i = phi i32 [ %i.ng, %bb.bx ], [ 0, %.preheader171.i ]
  %.0131178.i = phi i64 [ %i.nf, %bb.bx ], [ 0, %.preheader171.i ] ; 2 uses
  %i.my = getelementptr inbounds nuw [104 x i8], ptr %i.mn, i64 %i.mx
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 80 ; 2 uses
  %i.na = tail call fastcc i32 @parse_7zip_uint64(ptr noundef %0, ptr noundef nonnull %i.mz)
  %i.nb = icmp slt i32 %i.na, 0
  br i1 %i.nb, label %.critedge, label %bb.bw

bb.bw:                                            ; preds = %.lr.ph180.i
  %i.nc = load i64, ptr %i.mz, align 8, !tbaa !152 ; 2 uses
  %i.nd = icmp ugt i64 %i.nc, 100000000
  %i.ne = icmp ugt i64 %.0131178.i, -100000001
  %or.cond160.i = select i1 %i.nd, i1 true, i1 %i.ne
  br i1 %or.cond160.i, label %.critedge, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.nf = add nuw i64 %i.nc, %.0131178.i          ; 2 uses
  %i.ng = add i32 %.1125179.i, 1                  ; 2 uses
  %i.nh = zext i32 %i.ng to i64                   ; 2 uses
  %i.ni = icmp ugt i64 %i.mo, %i.nh
  br i1 %i.ni, label %.lr.ph180.i, label %._crit_edge181.i, !llvm.loop !264

._crit_edge181.i:                                 ; preds = %bb.bx, %.preheader171.i
  %.0131.lcssa.i = phi i64 [ 0, %.preheader171.i ], [ %i.nf, %bb.bx ]
  %i.nj = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.nk = icmp eq ptr %i.nj, null
  br i1 %i.nk, label %.critedge, label %bb.by

bb.by:                                            ; preds = %._crit_edge181.i
  %i.nl = load i8, ptr %i.nj, align 1, !tbaa !41
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bv
  %.1132.i = phi i64 [ %.0131.lcssa.i, %bb.by ], [ %i.mo, %bb.bv ] ; 6 uses
  %.0127.in.i = phi i8 [ %i.nl, %bb.by ], [ %i.mv, %bb.bv ] ; 3 uses
  store i64 %.1132.i, ptr %i.mk, align 8, !tbaa !279
  %.not.i89 = icmp eq i64 %.1132.i, 0             ; 2 uses
  br i1 %.not.i89, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.nm = tail call noalias ptr @calloc(i64 noundef %.1132.i, i64 noundef 8) #19 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %i.nm, ptr %i.nn, align 8, !tbaa !148
  %i.no = tail call noalias ptr @calloc(i64 noundef %.1132.i, i64 noundef 1) #19 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.no, ptr %i.np, align 8, !tbaa !149
  %i.nq = tail call noalias ptr @calloc(i64 noundef %.1132.i, i64 noundef 4) #19 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.nq, ptr %i.nr, align 8, !tbaa !150
  %i.ns = icmp eq ptr %i.nm, null
  br i1 %i.ns, label %.critedge, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.nt = icmp eq ptr %i.no, null
  %i.nu = icmp eq ptr %i.nq, null
  %or.cond.i90 = or i1 %i.nt, %i.nu
  br i1 %or.cond.i90, label %.critedge, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bz
  br i1 %.not216.i, label %._crit_edge192.i, label %.lr.ph191.i

.lr.ph191.i:                                      ; preds = %bb.cc
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !148
  %i.nx = icmp ne i8 %.0127.in.i, 9
  br label %bb.cd

bb.cd:                                            ; preds = %bb.ck, %.lr.ph191.i
  %i.ny = phi i64 [ 0, %.lr.ph191.i ], [ %i.pn, %bb.ck ]
  %.2126189.i = phi i32 [ 0, %.lr.ph191.i ], [ %i.pm, %bb.ck ]
  %.0133188.i = phi ptr [ %i.nw, %.lr.ph191.i ], [ %.3136.i, %bb.ck ] ; 3 uses
  %i.nz = getelementptr inbounds nuw [104 x i8], ptr %i.mn, i64 %i.ny ; 5 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 80 ; 2 uses
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !152 ; 2 uses
  %i.oc = icmp eq i64 %i.ob, 0
  br i1 %i.oc, label %bb.ck, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %.not260.i = icmp eq i64 %i.ob, 1
  %or.cond270.i = or i1 %i.nx, %.not260.i
  br i1 %or.cond270.i, label %.loopexit169.i, label %.lr.ph185.i

.lr.ph185.i:                                      ; preds = %bb.ce, %bb.cg
  %.0117184.i = phi i64 [ %i.oj, %bb.cg ], [ 0, %bb.ce ] ; 2 uses
  %.0119183.i = phi i32 [ %i.ok, %bb.cg ], [ 1, %bb.ce ]
  %.1134182.i = phi ptr [ %i.oi, %bb.cg ], [ %.0133188.i, %bb.ce ] ; 3 uses
  %i.od = tail call fastcc i32 @parse_7zip_uint64(ptr noundef %0, ptr noundef %.1134182.i)
  %i.oe = icmp slt i32 %i.od, 0
  br i1 %i.oe, label %.critedge, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph185.i
  %i.of = load i64, ptr %.1134182.i, align 8, !tbaa !42 ; 2 uses
  %i.og = xor i64 %.0117184.i, -1
  %i.oh = icmp ugt i64 %i.of, %i.og
  br i1 %i.oh, label %.critedge, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.oi = getelementptr inbounds nuw i8, ptr %.1134182.i, i64 8 ; 2 uses
  %i.oj = add i64 %i.of, %.0117184.i              ; 2 uses
  %i.ok = add i32 %.0119183.i, 1                  ; 2 uses
  %i.ol = zext i32 %i.ok to i64
  %i.om = load i64, ptr %i.oa, align 8, !tbaa !152
  %i.on = icmp ugt i64 %i.om, %i.ol
  br i1 %i.on, label %.lr.ph185.i, label %.loopexit169.i, !llvm.loop !265

.loopexit169.i:                                   ; preds = %bb.cg, %bb.ce
  %.2135.i = phi ptr [ %.0133188.i, %bb.ce ], [ %i.oi, %bb.cg ] ; 2 uses
  %.1118.i = phi i64 [ 0, %bb.ce ], [ %i.oj, %bb.cg ] ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.nz, i64 56
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !125
  %i.oq = trunc i64 %i.op to i32                  ; 2 uses
  %i.or = add nsw i32 %i.oq, -1                   ; 2 uses
  %i.os = icmp sgt i32 %i.oq, 0
  br i1 %i.os, label %.preheader.lr.ph.i.i, label %folder_uncompressed_size.exit.i

.preheader.lr.ph.i.i:                             ; preds = %.loopexit169.i
  %i.ot = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !126
  %i.ov = and i64 %i.ou, 4294967295               ; 2 uses
  %.not.i.i94 = icmp eq i64 %i.ov, 0
  br i1 %.not.i.i94, label %.thread18.i.i, label %.preheader.lr.ph.split.us.i.i

.preheader.lr.ph.split.us.i.i:                    ; preds = %.preheader.lr.ph.i.i
  %i.ow = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !127
  %i.oy = zext nneg i32 %i.or to i64
  br label %.preheader.us.i.i95

.loopexit.i.i:                                    ; preds = %bb.ci
  %indvars.iv.next27.i.i = add nsw i64 %indvars.iv26.i.i, -1
  %4 = icmp sgt i64 %indvars.iv26.i.i, 0
  br i1 %4, label %.preheader.us.i.i95, label %folder_uncompressed_size.exit.i

.preheader.us.i.i95:                              ; preds = %.loopexit.i.i, %.preheader.lr.ph.split.us.i.i
  %indvars.iv26.i.i = phi i64 [ %i.oy, %.preheader.lr.ph.split.us.i.i ], [ %indvars.iv.next27.i.i, %.loopexit.i.i ] ; 4 uses
  br label %bb.ci

bb.ch:                                            ; preds = %bb.ci
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.ov
  br i1 %exitcond.not.i.i, label %.thread18.loopexit.i.i, label %bb.ci, !llvm.loop !0

bb.ci:                                            ; preds = %bb.ch, %.preheader.us.i.i95
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.i.i95 ], [ %indvars.iv.next.i.i, %bb.ch ] ; 2 uses
  %i.oz = getelementptr inbounds nuw [16 x i8], ptr %i.ox, i64 %indvars.iv.i.i
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !129
  %i.pc = icmp eq i64 %i.pb, %indvars.iv26.i.i
  br i1 %i.pc, label %.loopexit.i.i, label %bb.ch

.thread18.loopexit.i.i:                           ; preds = %bb.ch
  %i.pd = trunc nuw nsw i64 %indvars.iv26.i.i to i32
  br label %.thread18.i.i

.thread18.i.i:                                    ; preds = %.thread18.loopexit.i.i, %.preheader.lr.ph.i.i
  %.lcssa21.i.i = phi i32 [ %i.or, %.preheader.lr.ph.i.i ], [ %i.pd, %.thread18.loopexit.i.i ]
  %i.pe = getelementptr inbounds nuw i8, ptr %i.nz, i64 64
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !130
  %i.pg = zext nneg i32 %.lcssa21.i.i to i64
  %i.ph = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %i.pg
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !42
  br label %folder_uncompressed_size.exit.i

folder_uncompressed_size.exit.i:                  ; preds = %.loopexit.i.i, %.thread18.i.i, %.loopexit169.i
  %.2.i.i = phi i64 [ %i.pi, %.thread18.i.i ], [ 0, %.loopexit169.i ], [ 0, %.loopexit.i.i ] ; 2 uses
  %i.pj = icmp ult i64 %.2.i.i, %.1118.i
  br i1 %i.pj, label %.critedge, label %bb.cj

bb.cj:                                            ; preds = %folder_uncompressed_size.exit.i
  %i.pk = sub nuw i64 %.2.i.i, %.1118.i
  %i.pl = getelementptr inbounds nuw i8, ptr %.2135.i, i64 8
  store i64 %i.pk, ptr %.2135.i, align 8, !tbaa !42
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.cd
  %.3136.i = phi ptr [ %i.pl, %bb.cj ], [ %.0133188.i, %bb.cd ]
  %i.pm = add i32 %.2126189.i, 1                  ; 2 uses
  %i.pn = zext i32 %i.pm to i64                   ; 2 uses
  %i.po = icmp ugt i64 %i.mo, %i.pn
  br i1 %i.po, label %bb.cd, label %._crit_edge192.i, !llvm.loop !266

._crit_edge192.i:                                 ; preds = %bb.ck, %bb.cc
  %i.pp = icmp eq i8 %.0127.in.i, 9
  br i1 %i.pp, label %bb.cl, label %bb.cn

bb.cl:                                            ; preds = %._crit_edge192.i
  %i.pq = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.pr = icmp eq ptr %i.pq, null
  br i1 %i.pr, label %.critedge, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ps = load i8, ptr %i.pq, align 1, !tbaa !41
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %._crit_edge192.i
  %.1128.in.i = phi i8 [ %i.ps, %bb.cm ], [ %.0127.in.i, %._crit_edge192.i ] ; 2 uses
  br i1 %.not.i89, label %.preheader167.i, label %.lr.ph195.i

.lr.ph195.i:                                      ; preds = %bb.cn
  %i.pt = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.pu = getelementptr inbounds nuw i8, ptr %1, i64 96
  br label %bb.co

.preheader167.i:                                  ; preds = %bb.co, %bb.cn
  br i1 %.not216.i, label %._crit_edge199.i, label %.lr.ph198.i

bb.co:                                            ; preds = %bb.co, %.lr.ph195.i
  %indvars.iv232.i = phi i64 [ 0, %.lr.ph195.i ], [ %indvars.iv.next233.i, %bb.co ] ; 3 uses
  %i.pv = load ptr, ptr %i.pt, align 8, !tbaa !149
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 %indvars.iv232.i
  store i8 0, ptr %i.pw, align 1, !tbaa !41
  %i.px = load ptr, ptr %i.pu, align 8, !tbaa !150
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.px, i64 %indvars.iv232.i
  store i32 0, ptr %i.py, align 4, !tbaa !76
  %indvars.iv.next233.i = add i64 %indvars.iv232.i, 1 ; 2 uses
  %i.pz = and i64 %indvars.iv.next233.i, 4294967295
  %i.qa = icmp ugt i64 %.1132.i, %i.pz
  br i1 %i.qa, label %bb.co, label %.preheader167.i, !llvm.loop !267

.lr.ph198.i:                                      ; preds = %.preheader167.i, %bb.cr
  %indvars.iv236.i = phi i64 [ %indvars.iv.next237.i, %bb.cr ], [ 0, %.preheader167.i ] ; 2 uses
  %.0122197.i = phi i32 [ %.1123.i, %bb.cr ], [ 0, %.preheader167.i ] ; 2 uses
  %i.qb = getelementptr inbounds nuw [104 x i8], ptr %i.mn, i64 %indvars.iv236.i ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 80
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !152 ; 2 uses
  %.not158.i = icmp eq i64 %i.qd, 1
  br i1 %.not158.i, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %.lr.ph198.i
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qb, i64 72
  %i.qf = load i8, ptr %i.qe, align 8, !tbaa !72
  %.not159.i = icmp eq i8 %i.qf, 0
  br i1 %.not159.i, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp, %.lr.ph198.i
  %i.qg = trunc i64 %i.qd to i32
  %i.qh = add i32 %.0122197.i, %i.qg
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.1123.i = phi i32 [ %i.qh, %bb.cq ], [ %.0122197.i, %bb.cp ] ; 2 uses
  %indvars.iv.next237.i = add i64 %indvars.iv236.i, 1 ; 2 uses
  %i.qi = and i64 %indvars.iv.next237.i, 4294967295
  %i.qj = icmp ugt i64 %i.mo, %i.qi
  br i1 %i.qj, label %.lr.ph198.i, label %._crit_edge199.loopexit.i, !llvm.loop !268

._crit_edge199.loopexit.i:                        ; preds = %bb.cr
  %i.qk = zext i32 %.1123.i to i64
  br label %._crit_edge199.i

._crit_edge199.i:                                 ; preds = %._crit_edge199.loopexit.i, %.preheader167.i
  %.0122.lcssa.i = phi i64 [ 0, %.preheader167.i ], [ %i.qk, %._crit_edge199.loopexit.i ]
  %i.ql = icmp eq i8 %.1128.in.i, 10
  br i1 %i.ql, label %bb.cs, label %read_SubStreamsInfo.exit

bb.cs:                                            ; preds = %._crit_edge199.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.qm = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !149
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !150
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.qq = call fastcc i32 @read_Digests(ptr noundef %0, ptr noundef nonnull %2, i64 noundef %.0122.lcssa.i)
  %i.qr = icmp slt i32 %i.qq, 0
  br i1 %i.qr, label %bb.ct, label %.preheader.i92

.preheader.i92:                                   ; preds = %bb.cs
  br i1 %.not216.i, label %._crit_edge215.i, label %.lr.ph214.i

.lr.ph214.i:                                      ; preds = %.preheader.i92
  %i.qs = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.qt = load ptr, ptr %2, align 8, !tbaa !142
  tail call void @free(ptr noundef %i.qt) #18
  %i.qu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !143
  tail call void @free(ptr noundef %i.qv) #18
  br label %.thread164.i

bb.cu:                                            ; preds = %.loopexit.i93, %.lr.ph214.i
  %indvars.iv244.i = phi i64 [ 0, %.lr.ph214.i ], [ %indvars.iv.next245.i, %.loopexit.i93 ] ; 2 uses
  %.0110213.i = phi i32 [ 0, %.lr.ph214.i ], [ %.2.i, %.loopexit.i93 ] ; 3 uses
  %.0111212.i = phi ptr [ %i.qp, %.lr.ph214.i ], [ %.2113.i, %.loopexit.i93 ] ; 4 uses
  %.0114211.i = phi ptr [ %i.qn, %.lr.ph214.i ], [ %.2116.i, %.loopexit.i93 ] ; 4 uses
  %i.qw = getelementptr inbounds nuw [104 x i8], ptr %i.mn, i64 %indvars.iv244.i ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 80 ; 2 uses
  %i.qy = load i64, ptr %i.qx, align 8, !tbaa !152
  switch i64 %i.qy, label %.lr.ph206.preheader.i [
    i64 1, label %bb.cv
    i64 0, label %.loopexit.i93
  ]

bb.cv:                                            ; preds = %bb.cu
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qw, i64 72
  %i.ra = load i8, ptr %i.qz, align 8, !tbaa !72
  %.not156.i = icmp eq i8 %i.ra, 0
  br i1 %.not156.i, label %.lr.ph206.preheader.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.rb = getelementptr inbounds nuw i8, ptr %.0114211.i, i64 1
  store i8 1, ptr %.0114211.i, align 1, !tbaa !41
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qw, i64 76
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !73
  %i.re = getelementptr inbounds nuw i8, ptr %.0111212.i, i64 4
  store i32 %i.rd, ptr %.0111212.i, align 4, !tbaa !76
  br label %.loopexit.i93

.lr.ph206.preheader.i:                            ; preds = %bb.cv, %bb.cu
  %i.rf = sext i32 %.0110213.i to i64
  br label %.lr.ph206.i

.lr.ph206.i:                                      ; preds = %.lr.ph206.i, %.lr.ph206.preheader.i
  %indvars.iv240.i = phi i64 [ %i.rf, %.lr.ph206.preheader.i ], [ %indvars.iv.next241.i, %.lr.ph206.i ] ; 3 uses
  %.0204.i = phi i32 [ 0, %.lr.ph206.preheader.i ], [ %i.ro, %.lr.ph206.i ]
  %.1112202.i = phi ptr [ %.0111212.i, %.lr.ph206.preheader.i ], [ %i.rn, %.lr.ph206.i ] ; 2 uses
  %.1115201.i = phi ptr [ %.0114211.i, %.lr.ph206.preheader.i ], [ %i.rj, %.lr.ph206.i ] ; 2 uses
  %i.rg = load ptr, ptr %2, align 8, !tbaa !142
  %i.rh = getelementptr inbounds i8, ptr %i.rg, i64 %indvars.iv240.i
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !41
  %i.rj = getelementptr inbounds nuw i8, ptr %.1115201.i, i64 1 ; 2 uses
  store i8 %i.ri, ptr %.1115201.i, align 1, !tbaa !41
  %i.rk = load ptr, ptr %i.qs, align 8, !tbaa !143
  %i.rl = getelementptr inbounds [4 x i8], ptr %i.rk, i64 %indvars.iv240.i
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !76
  %i.rn = getelementptr inbounds nuw i8, ptr %.1112202.i, i64 4 ; 2 uses
  store i32 %i.rm, ptr %.1112202.i, align 4, !tbaa !76
  %i.ro = add i32 %.0204.i, 1                     ; 2 uses
  %indvars.iv.next241.i = add nsw i64 %indvars.iv240.i, 1 ; 2 uses
  %i.rp = zext i32 %i.ro to i64
  %i.rq = load i64, ptr %i.qx, align 8, !tbaa !152
  %i.rr = icmp ugt i64 %i.rq, %i.rp
  br i1 %i.rr, label %.lr.ph206.i, label %.loopexit.loopexit.i, !llvm.loop !269

.loopexit.loopexit.i:                             ; preds = %.lr.ph206.i
  %i.rs = trunc nsw i64 %indvars.iv.next241.i to i32
  br label %.loopexit.i93

.loopexit.i93:                                    ; preds = %.loopexit.loopexit.i, %bb.cw, %bb.cu
  %.2116.i = phi ptr [ %i.rb, %bb.cw ], [ %.0114211.i, %bb.cu ], [ %i.rj, %.loopexit.loopexit.i ]
  %.2113.i = phi ptr [ %i.re, %bb.cw ], [ %.0111212.i, %bb.cu ], [ %i.rn, %.loopexit.loopexit.i ]
  %.2.i = phi i32 [ %.0110213.i, %bb.cw ], [ %.0110213.i, %bb.cu ], [ %i.rs, %.loopexit.loopexit.i ]
  %indvars.iv.next245.i = add i64 %indvars.iv244.i, 1 ; 2 uses
  %i.rt = and i64 %indvars.iv.next245.i, 4294967295
  %i.ru = icmp ugt i64 %i.mo, %i.rt
  br i1 %i.ru, label %bb.cu, label %._crit_edge215.i, !llvm.loop !270

._crit_edge215.i:                                 ; preds = %.loopexit.i93, %.preheader.i92
  %i.rv = load ptr, ptr %2, align 8, !tbaa !142
  tail call void @free(ptr noundef %i.rv) #18
  %i.rw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !143
  tail call void @free(ptr noundef %i.rx) #18
  %i.ry = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.rz = icmp eq ptr %i.ry, null
  br i1 %i.rz, label %.thread164.i, label %bb.cx

.thread164.i:                                     ; preds = %._crit_edge215.i, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %.critedge

bb.cx:                                            ; preds = %._crit_edge215.i
  %i.sa = load i8, ptr %i.ry, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
end_hunk_1
begin_hunk_2_@parse_7zip_uint64:bb.a
bb.q:                                             ; preds = %bb.p
  %i.bh = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !41
  %i.bk = zext i8 %i.bj to i64
  %i.bl = shl nuw i64 %i.bk, 56
  %i.bm = load i64, ptr %1, align 8, !tbaa !42
  %i.bn = or i64 %i.bl, %i.bm
  br label %.loopexit.sink.split

bb.s:                                             ; preds = %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %i.bo = phi i64 [ 0, %bb.b ], [ %i.j, %bb.d ], [ %i.r, %bb.f ], [ %i.z, %bb.h ], [ %i.ah, %bb.j ], [ %i.ap, %bb.l ], [ %i.ax, %bb.n ], [ %i.bf, %bb.p ]
  %.023.lcssa.wide = phi i64 [ 0, %bb.b ], [ 8, %bb.d ], [ 16, %bb.f ], [ 24, %bb.h ], [ 32, %bb.j ], [ 40, %bb.l ], [ 48, %bb.n ], [ 56, %bb.p ]
  %.01622.lcssa = phi i32 [ 383, %bb.b ], [ 319, %bb.d ], [ 287, %bb.f ], [ 271, %bb.h ], [ 263, %bb.j ], [ 259, %bb.l ], [ 257, %bb.n ], [ 256, %bb.p ]
  %i.bp = and i32 %.01622.lcssa, %i.d
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, %.023.lcssa.wide
  %i.bs = add i64 %i.bo, %i.br
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.s, %bb.r
  %.sink = phi i64 [ %i.bn, %bb.r ], [ %i.bs, %bb.s ]
  store i64 %.sink, ptr %1, align 8, !tbaa !42
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m, %bb.o, %bb.q, %bb.a
  %.017 = phi i32 [ -1, %bb.o ], [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.k ], [ -1, %bb.e ], [ -1, %bb.q ], [ -1, %bb.g ], [ -1, %bb.m ], [ -1, %bb.i ], [ 0, %.loopexit.sink.split ]
  ret i32 %.017
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @read_Digests(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %read_Bools.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.b, align 8
  %i.c = tail call noalias ptr @malloc(i64 noundef %2) #21 ; 2 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !142
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %read_Bools.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %read_Bools.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %i.e, align 1, !tbaa !41
  %i.h = icmp eq i8 %i.g, 0
  %i.i = load ptr, ptr %1, align 8, !tbaa !142    ; 2 uses
  br i1 %i.h, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.d, %bb.g
  %i.j = phi i64 [ %i.u, %bb.g ], [ 0, %bb.d ]
  %.019.i = phi i32 [ %.1.i, %bb.g ], [ 0, %bb.d ]
  %.01118.i = phi i32 [ %i.s, %bb.g ], [ 0, %bb.d ] ; 2 uses
  %.01317.i = phi i32 [ %i.t, %bb.g ], [ 0, %bb.d ]
  %i.k = icmp eq i32 %.01118.i, 0
  br i1 %i.k, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph.i
  %i.l = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %read_Bools.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i8, ptr %i.l, align 1, !tbaa !41
  %i.o = zext i8 %i.n to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %.112.i = phi i32 [ 128, %bb.f ], [ %.01118.i, %.lr.ph.i ] ; 2 uses
  %.1.i = phi i32 [ %i.o, %bb.f ], [ %.019.i, %.lr.ph.i ] ; 2 uses
  %i.p = and i32 %.1.i, %.112.i
  %.not.i = icmp ne i32 %i.p, 0
  %i.q = zext i1 %.not.i to i8
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 %i.q, ptr %i.r, align 1, !tbaa !41
  %i.s = lshr i32 %.112.i, 1
  %i.t = add i32 %.01317.i, 1                     ; 2 uses
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %i.v = icmp ugt i64 %2, %i.u
  br i1 %i.v, label %.lr.ph.i, label %read_Bools.exit, !llvm.loop !1

bb.h:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.i, i8 1, i64 %2, i1 false)
  br label %read_Bools.exit

read_Bools.exit:                                  ; preds = %bb.g, %bb.h
  %i.w = tail call noalias ptr @calloc(i64 noundef %2, i64 noundef 4) #19 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !143
  %i.y = icmp eq ptr %i.w, null
  br i1 %i.y, label %read_Bools.exit.thread, label %.preheader

.preheader:                                       ; preds = %read_Bools.exit, %bb.k
  %i.z = phi i64 [ %i.aj, %bb.k ], [ 0, %read_Bools.exit ] ; 2 uses
  %.031 = phi i32 [ %i.ai, %bb.k ], [ 0, %read_Bools.exit ]
  %i.aa = load ptr, ptr %1, align 8, !tbaa !142
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !41
  %.not = icmp eq i8 %i.ac, 0
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.preheader
  %i.ad = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 4) ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %read_Bools.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr %i.ad, align 1
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !143
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.z
  store i32 %i.af, ptr %i.ah, align 4, !tbaa !76
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.j
  %i.ai = add i32 %.031, 1                        ; 2 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = icmp ugt i64 %2, %i.aj
  br i1 %i.ak, label %.preheader, label %read_Bools.exit.thread, !llvm.loop !280

read_Bools.exit.thread:                           ; preds = %bb.e, %bb.k, %bb.i, %read_Bools.exit, %bb.c, %bb.b, %bb.a
  %.024 = phi i32 [ -1, %read_Bools.exit ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.i ], [ 0, %bb.k ], [ -1, %bb.e ]
  ret i32 %.024
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @read_Bools(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %.not22 = icmp eq i64 %2, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.a = phi i64 [ %i.l, %bb.d ], [ 0, %bb.a ]
  %.019 = phi i32 [ %.1, %bb.d ], [ 0, %bb.a ]
  %.01118 = phi i32 [ %i.j, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %.01317 = phi i32 [ %i.k, %bb.d ], [ 0, %bb.a ]
  %i.b = icmp eq i32 %.01118, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.c = tail call fastcc ptr @header_bytes(ptr noundef %0, i64 noundef 1) ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !41
  %i.f = zext i8 %i.e to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %.112 = phi i32 [ 128, %bb.c ], [ %.01118, %.lr.ph ] ; 2 uses
  %.1 = phi i32 [ %i.f, %bb.c ], [ %.019, %.lr.ph ] ; 2 uses
  %i.g = and i32 %.1, %.112
  %.not = icmp ne i32 %i.g, 0
  %i.h = zext i1 %.not to i8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  store i8 %i.h, ptr %i.i, align 1, !tbaa !41
  %i.j = lshr i32 %.112, 1
  %i.k = add i32 %.01317, 1                       ; 2 uses
  %i.l = zext i32 %i.k to i64                     ; 2 uses
  %i.m = icmp ugt i64 %2, %i.l
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %bb.b, %bb.d, %bb.a
  %.014 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ -1, %bb.b ]
  ret i32 %.014
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @folder_uncompressed_size(ptr nofree noundef readonly captures(none) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i64, ptr %i.a, align 8, !tbaa !125
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !126  ; 2 uses
  %i.f = add i32 %i.c, -1                         ; 2 uses
  %i.g = icmp sgt i32 %i.c, 0
  br i1 %i.g, label %.preheader.lr.ph, label %.loopexit20

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.h = and i64 %i.e, 4294967295
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.thread18, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !127
  %i.k = zext nneg i32 %i.f to i64
  %wide.trip.count = and i64 %i.e, 4294967295
  br label %.preheader.us

.loopexit:                                        ; preds = %bb.c
  %indvars.iv.next27 = add nsw i64 %indvars.iv26, -1
  %1 = icmp sgt i64 %indvars.iv26, 0
  br i1 %1, label %.preheader.us, label %.loopexit20

.preheader.us:                                    ; preds = %.preheader.lr.ph.split.us, %.loopexit
  %indvars.iv26 = phi i64 [ %i.k, %.preheader.lr.ph.split.us ], [ %indvars.iv.next27, %.loopexit ] ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread18.loopexit, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %.preheader.us, %bb.b
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !129
  %i.o = icmp eq i64 %i.n, %indvars.iv26
  br i1 %i.o, label %.loopexit, label %bb.b

.thread18.loopexit:                               ; preds = %bb.b
  %i.p = trunc nuw nsw i64 %indvars.iv26 to i32
  br label %.thread18

.thread18:                                        ; preds = %.thread18.loopexit, %.preheader.lr.ph
  %.lcssa21 = phi i32 [ %i.f, %.preheader.lr.ph ], [ %i.p, %.thread18.loopexit ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !130
  %i.s = zext nneg i32 %.lcssa21 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !42
  br label %.loopexit20

.loopexit20:                                      ; preds = %.loopexit, %bb.a, %.thread18
  %.2 = phi i64 [ %i.u, %.thread18 ], [ 0, %bb.a ], [ 0, %.loopexit ]
  ret i64 %.2
}

declare void @archive_entry_set_is_metadata_encrypted(ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @init_decompression(ptr noundef %0, ptr noundef initializes((296, 312)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.lzma_options_delta, align 8 ; 6 uses
  %5 = alloca [4 x %struct.lzma_filter], align 16 ; 18 uses
  %i.a = load i64, ptr %2, align 8, !tbaa !94     ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 4 uses
  store i64 %i.a, ptr %i.b, align 8, !tbaa !153
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 3 uses
  store i64 -1, ptr %i.c, align 8, !tbaa !154
  %.0154.sroa.gep = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  switch i64 %i.a, label %bb.bn [
    i64 0, label %bb.b
    i64 262658, label %bb.b
    i64 262408, label %bb.b
    i64 83300609, label %bb.b
    i64 197633, label %bb.b
    i64 196865, label %bb.h
    i64 33, label %bb.h
    i64 50528515, label %bb.bj
    i64 50528539, label %bb.bj
    i64 50528773, label %bb.bj
    i64 50529281, label %bb.bj
    i64 50529537, label %bb.bj
    i64 50530049, label %bb.bj
    i64 10, label %bb.bj
    i64 11, label %bb.bj
    i64 50530309, label %bb.bj
    i64 3, label %bb.bj
    i64 116457729, label %bb.bk
    i64 116458243, label %bb.bk
    i64 116459265, label %bb.bk
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr %3, align 8, !tbaa !94     ; 4 uses
  switch i64 %i.d, label %bb.d [
    i64 50528515, label %bb.e
    i64 50528539, label %bb.e
    i64 50529537, label %bb.e
    i64 10, label %bb.e
    i64 50528773, label %bb.e
    i64 50530309, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.41, i64 noundef %i.d, i64 noundef %i.a) #18
  br label %.thread248

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  store i64 %i.d, ptr %i.c, align 8, !tbaa !154
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 19996
  store i32 0, ptr %i.e, align 4, !tbaa !166
  switch i64 %i.d, label %bb.g [
    i64 50528515, label %bb.f
    i64 50529537, label %.sink.split
  ]

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20016
  store i64 -1, ptr %i.f, align 8, !tbaa !162
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20024
  store i32 0, ptr %i.g, align 8, !tbaa !163
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.f
  %.sink = phi i32 [ 5, %bb.f ], [ 8, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20028
  store i32 %.sink, ptr %i.h, align 4, !tbaa !164
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e, %bb.b
  switch i64 %i.a, label %bb.bn [
    i64 0, label %.thread248
    i64 196865, label %bb.h
    i64 33, label %bb.h
    i64 262658, label %bb.ah
    i64 83300609, label %bb.ar
    i64 262408, label %bb.au
    i64 197633, label %bb.ba
    i64 50528515, label %bb.bj
    i64 50528539, label %bb.bj
    i64 50528773, label %bb.bj
    i64 50529281, label %bb.bj
    i64 50529537, label %bb.bj
    i64 50530049, label %bb.bj
    i64 10, label %bb.bj
    i64 11, label %bb.bj
    i64 50530309, label %bb.bj
    i64 3, label %bb.bj
  ]

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.g, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !106
  %.not184 = icmp eq i32 %i.j, 0
  br i1 %.not184, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 312
  tail call void @lzma_end(ptr noundef nonnull %i.k) #18
  store i32 0, ptr %i.i, align 8, !tbaa !106
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not185 = icmp eq ptr %3, null
  br i1 %.not185, label %bb.z, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = load i64, ptr %3, align 8, !tbaa !94     ; 3 uses
  store i64 %i.l, ptr %i.c, align 8, !tbaa !154
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !282
  switch i64 %i.l, label %bb.y [
    i64 50528515, label %bb.l
    i64 50528539, label %bb.n
    i64 3, label %bb.o
    i64 50528773, label %bb.r
    i64 50529281, label %bb.s
    i64 50529537, label %bb.t
    i64 50530049, label %bb.u
    i64 10, label %bb.v
    i64 11, label %bb.w
    i64 50530309, label %bb.x
  ]

bb.l:                                             ; preds = %bb.k
  %i.n = load i64, ptr %i.b, align 8, !tbaa !153
  %i.o = icmp eq i64 %i.n, 33
  br i1 %i.o, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l
  store i64 4, ptr %5, align 16, !tbaa !283
  br label %bb.aa

bb.m:                                             ; preds = %bb.l
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 19996
  store i32 0, ptr %i.p, align 4, !tbaa !166
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20016
  store i64 -1, ptr %i.q, align 8, !tbaa !162
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20024
  store i32 0, ptr %i.r, align 8, !tbaa !163
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20028
  store i32 5, ptr %i.s, align 4, !tbaa !164
  br label %bb.z

bb.n:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 19996
  store i32 0, ptr %i.t, align 4, !tbaa !166
  br label %bb.z

bb.o:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !168
  %.not186 = icmp eq i64 %i.v, 1
  br i1 %.not186, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.42) #18
  br label %.critedge

bb.q:                                             ; preds = %bb.o
  store i64 3, ptr %5, align 16, !tbaa !283
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !146
  %i.y = load i8, ptr %i.x, align 1, !tbaa !41
  %i.z = zext i8 %i.y to i32
  %i.aa = add nuw nsw i32 %i.z, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !285
  store ptr %4, ptr %i.m, align 8, !tbaa !282
  br label %bb.z

bb.r:                                             ; preds = %bb.k
  store i64 5, ptr %5, align 16, !tbaa !283
  br label %bb.z

bb.s:                                             ; preds = %bb.k
  store i64 6, ptr %5, align 16, !tbaa !283
  br label %bb.z

bb.t:                                             ; preds = %bb.k
  store i64 7, ptr %5, align 16, !tbaa !283
  br label %bb.z

bb.u:                                             ; preds = %bb.k
  store i64 8, ptr %5, align 16, !tbaa !283
  br label %bb.z
end_hunk_2
