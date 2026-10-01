Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/cff?download=true
inline.NumInlined: 81
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@remove_style:bb.a
  br i1 %.not35, label %.preheader, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %i.e = icmp ugt ptr %i.h, %1
  br i1 %i.e, label %bb.c, label %.preheader, !llvm.loop !587

.preheader:                                       ; preds = %bb.b, %bb.a
  %.019.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.j, %bb.b ] ; 3 uses
  store i8 0, ptr %.019.lcssa, align 1, !tbaa !130
  %i.f = icmp ugt ptr %.019.lcssa, %0
  br i1 %i.f, label %.lr.ph, label %.critedge

bb.c:                                             ; preds = %.lr.ph34, %bb.b
  %.033 = phi ptr [ %i.d, %.lr.ph34 ], [ %i.h, %bb.b ]
  %.01932 = phi ptr [ %i.b, %.lr.ph34 ], [ %i.j, %bb.b ] ; 2 uses
  %i.g = icmp eq ptr %.01932, %0
  br i1 %i.g, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds i8, ptr %.033, i64 -1 ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !130
  %i.j = getelementptr inbounds i8, ptr %.01932, i64 -1 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !130
  %.not = icmp eq i8 %i.i, %i.k
  br i1 %.not, label %bb.b, label %.critedge, !llvm.loop !587

.backedge:                                        ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  store i8 0, ptr %i.m, align 1, !tbaa !130
  %i.l = icmp ugt ptr %i.m, %0
  br i1 %i.l, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader, %.backedge
  %.pn = phi ptr [ %i.m, %.backedge ], [ %.019.lcssa, %.preheader ]
  %i.m = getelementptr inbounds i8, ptr %.pn, i64 -1 ; 4 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !130
  switch i8 %i.n, label %.critedge [
    i8 45, label %.backedge
    i8 32, label %.backedge
    i8 95, label %.backedge
    i8 43, label %.backedge
  ]

.critedge:                                        ; preds = %bb.c, %bb.d, %.lr.ph, %.backedge, %.preheader
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

declare hidden i32 @FT_CMap_New(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare hidden i64 @FT_Stream_Pos(ptr noundef) local_unnamed_addr #9

declare hidden i32 @FT_Stream_ReadFields(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

declare hidden zeroext i16 @FT_Stream_ReadUShort(ptr noundef, ptr noundef) local_unnamed_addr #9

declare hidden zeroext i8 @FT_Stream_ReadByte(ptr noundef, ptr noundef) local_unnamed_addr #9

declare hidden i32 @FT_Stream_Skip(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cff_index_init(ptr noundef initializes((0, 64)) %0, ptr noundef %1, i8 noundef zeroext range(i8 0, 2) %2, i8 noundef zeroext range(i8 0, 2) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !141
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.d, i8 0, i64 56, i1 false)
  store ptr %1, ptr %0, align 8, !tbaa !139
  %i.e = tail call i64 @FT_Stream_Pos(ptr noundef %1) #18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !287
  %.not = icmp eq i8 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 @FT_Stream_ReadULong(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #18
  %i.h = load i32, ptr %i.a, align 4, !tbaa !67
  %.not48 = icmp eq i32 %i.h, 0
  br i1 %.not48, label %bb.e, label %.thread

bb.c:                                             ; preds = %bb.a
  %i.i = call zeroext i16 @FT_Stream_ReadUShort(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #18
  %i.j = load i32, ptr %i.a, align 4, !tbaa !67
  %.not47 = icmp eq i32 %i.j, 0
  br i1 %.not47, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.k = zext i16 %i.i to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sink = phi i32 [ 3, %bb.d ], [ 5, %bb.b ]
  %.044 = phi i32 [ %i.k, %bb.d ], [ %i.g, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink, ptr %i.l, align 8, !tbaa !288
  %.not49 = icmp eq i32 %.044, 0
  br i1 %.not49, label %thread-pre-split.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = call zeroext i8 @FT_Stream_ReadByte(ptr noundef nonnull %1, ptr noundef nonnull %i.a) #18 ; 3 uses
  %i.n = load i32, ptr %i.a, align 4, !tbaa !67
  %.not50 = icmp eq i32 %i.n, 0
  br i1 %.not50, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.o = add i8 %i.m, -5
  %or.cond = icmp ult i8 %i.o, -4
  br i1 %or.cond, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.044, ptr %i.p, align 4, !tbaa !285
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.m, ptr %i.q, align 8, !tbaa !286
  %i.r = add i32 %.044, 1
  %i.s = zext i32 %i.r to i64
  %i.t = zext nneg i8 %i.m to i64                 ; 2 uses
  %i.u = mul nuw nsw i64 %i.t, %i.s               ; 2 uses
  %i.v = load i64, ptr %i.f, align 8, !tbaa !287
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !288
  %i.y = zext i32 %i.x to i64
  %i.z = add i64 %i.v, %i.u
  %i.aa = add i64 %i.z, %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !290
  %i.ac = sub nsw i64 %i.u, %i.t
  %i.ad = call i32 @FT_Stream_Skip(ptr noundef nonnull %1, i64 noundef %i.ac) #18 ; 2 uses
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !67
  %.not51 = icmp eq i32 %i.ad, 0
  br i1 %.not51, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.ae = call fastcc i64 @cff_index_read_offset(ptr noundef nonnull %0, ptr noundef %i.a) ; 2 uses
  %i.af = load i32, ptr %i.a, align 4, !tbaa !67
  %.not52 = icmp eq i32 %i.af, 0
  br i1 %.not52, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp eq i64 %i.ae, 0
  br i1 %i.ag, label %.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add i64 %i.ae, -1                       ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !291
  %.not53 = icmp eq i8 %2, 0
  br i1 %.not53, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = call i32 @FT_Stream_ExtractFrame(ptr noundef nonnull %1, i64 noundef %i.ah, ptr noundef nonnull %i.aj) #18
  br label %thread-pre-split

bb.m:                                             ; preds = %bb.k
  %i.al = call i32 @FT_Stream_Skip(ptr noundef nonnull %1, i64 noundef %i.ah) #18
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.m, %bb.l
  %.sink61 = phi i32 [ %i.al, %bb.m ], [ %i.ak, %bb.l ] ; 2 uses
  store i32 %.sink61, ptr %i.a, align 4, !tbaa !67
  %.not56 = icmp eq i32 %.sink61, 0
  br i1 %.not56, label %thread-pre-split.thread, label %.thread

.thread.sink.split:                               ; preds = %bb.j, %bb.g
  store i32 8, ptr %i.a, align 4, !tbaa !67
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.b, %bb.c, %bb.i, %bb.h, %bb.f, %thread-pre-split
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !143
  call void @ft_mem_free(ptr noundef %i.c, ptr noundef %i.an) #18
  store ptr null, ptr %i.am, align 8, !tbaa !143
  %.pre = load i32, ptr %i.a, align 4, !tbaa !67
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.e, %.thread, %thread-pre-split
  %i.ao = phi i32 [ %.pre, %.thread ], [ 0, %thread-pre-split ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %i.ao
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cff_index_get_pointers(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %i.b = alloca i32, align 4                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4, !tbaa !67
  %i.c = load ptr, ptr %0, align 8, !tbaa !139    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !141  ; 6 uses
  store ptr null, ptr %1, align 8, !tbaa !593
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !143
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !285  ; 2 uses
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %cff_index_load_offsets.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i8, ptr %i.j, align 8, !tbaa !286   ; 2 uses
  %i.l = add i32 %i.i, 1
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = zext i8 %i.k to i64
  %i.o = mul nuw nsw i64 %i.n, %i.m               ; 3 uses
  %i.p = call ptr @ft_mem_qrealloc(ptr noundef %i.e, i64 noundef 8, i64 noundef 0, i64 noundef %i.m, ptr noundef null, ptr noundef nonnull %i.a) #18
  store ptr %i.p, ptr %i.f, align 8, !tbaa !143
  %i.q = load i32, ptr %i.a, align 4, !tbaa !67
  %.not63.i = icmp eq i32 %i.q, 0
  br i1 %.not63.i, label %bb.d, label %cff_index_load_offsets.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !287
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !288
  %i.v = zext i32 %i.u to i64
  %i.w = add i64 %i.s, %i.v
  %i.x = call i32 @FT_Stream_Seek(ptr noundef nonnull %i.c, i64 noundef %i.w) #18 ; 2 uses
  store i32 %i.x, ptr %i.a, align 4, !tbaa !67
  %.not64.i = icmp eq i32 %i.x, 0
  br i1 %.not64.i, label %bb.e, label %cff_index_load_offsets.exit

bb.e:                                             ; preds = %bb.d
  %i.y = call i32 @FT_Stream_EnterFrame(ptr noundef nonnull %i.c, i64 noundef %i.o) #18 ; 2 uses
  store i32 %i.y, ptr %i.a, align 4, !tbaa !67
  %.not65.i = icmp eq i32 %i.y, 0
  br i1 %.not65.i, label %bb.f, label %cff_index_load_offsets.exit

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !143  ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !254 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.o ; 4 uses
  %.not88.i = icmp eq i64 %i.o, 0                 ; 4 uses
  switch i8 %i.k, label %.preheader.i [
    i8 1, label %.preheader68.i
    i8 2, label %.preheader70.i
    i8 3, label %.preheader72.i
  ]

.preheader72.i:                                   ; preds = %bb.f
  br i1 %.not88.i, label %.loopexit.i, label %.lr.ph.i

.preheader70.i:                                   ; preds = %bb.f
  br i1 %.not88.i, label %.loopexit.i, label %.lr.ph78.i

.preheader68.i:                                   ; preds = %bb.f
  br i1 %.not88.i, label %.loopexit.i, label %.lr.ph81.i

.preheader.i:                                     ; preds = %bb.f
  br i1 %.not88.i, label %.loopexit.i, label %.lr.ph84.i

.lr.ph81.i:                                       ; preds = %.preheader68.i, %.lr.ph81.i
  %.05580.i = phi ptr [ %i.ag, %.lr.ph81.i ], [ %i.z, %.preheader68.i ] ; 2 uses
  %.05679.i = phi ptr [ %i.af, %.lr.ph81.i ], [ %i.ab, %.preheader68.i ] ; 2 uses
  %i.ad = load i8, ptr %.05679.i, align 1, !tbaa !130
  %i.ae = zext i8 %i.ad to i64
  store i64 %i.ae, ptr %.05580.i, align 8, !tbaa !116
  %i.af = getelementptr inbounds nuw i8, ptr %.05679.i, i64 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.05580.i, i64 8
  %i.ah = icmp ult ptr %i.af, %i.ac
  br i1 %i.ah, label %.lr.ph81.i, label %.loopexit.i, !llvm.loop !588

.lr.ph78.i:                                       ; preds = %.preheader70.i, %.lr.ph78.i
  %.177.i = phi ptr [ %i.aq, %.lr.ph78.i ], [ %i.z, %.preheader70.i ] ; 2 uses
  %.15776.i = phi ptr [ %i.ap, %.lr.ph78.i ], [ %i.ab, %.preheader70.i ] ; 3 uses
  %i.ai = load i8, ptr %.15776.i, align 1, !tbaa !130
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 8
  %i.al = getelementptr inbounds nuw i8, ptr %.15776.i, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !130
  %i.an = zext i8 %i.am to i64
  %i.ao = or disjoint i64 %i.ak, %i.an
  store i64 %i.ao, ptr %.177.i, align 8, !tbaa !116
  %i.ap = getelementptr inbounds nuw i8, ptr %.15776.i, i64 2 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.177.i, i64 8
  %i.ar = icmp ult ptr %i.ap, %i.ac
  br i1 %i.ar, label %.lr.ph78.i, label %.loopexit.i, !llvm.loop !589

.lr.ph.i:                                         ; preds = %.preheader72.i, %.lr.ph.i
  %.275.i = phi ptr [ %i.bf, %.lr.ph.i ], [ %i.z, %.preheader72.i ] ; 2 uses
  %.25874.i = phi ptr [ %i.be, %.lr.ph.i ], [ %i.ab, %.preheader72.i ] ; 4 uses
  %i.as = load i8, ptr %.25874.i, align 1, !tbaa !130
  %i.at = zext i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 16
  %i.av = getelementptr inbounds nuw i8, ptr %.25874.i, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !130
  %i.ax = zext i8 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 8
  %i.az = or disjoint i64 %i.ay, %i.au
  %i.ba = getelementptr inbounds nuw i8, ptr %.25874.i, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !130
  %i.bc = zext i8 %i.bb to i64
  %i.bd = or disjoint i64 %i.az, %i.bc
  store i64 %i.bd, ptr %.275.i, align 8, !tbaa !116
  %i.be = getelementptr inbounds nuw i8, ptr %.25874.i, i64 3 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.275.i, i64 8
  %i.bg = icmp ult ptr %i.be, %i.ac
  br i1 %i.bg, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !590

.lr.ph84.i:                                       ; preds = %.preheader.i, %.lr.ph84.i
  %.383.i = phi ptr [ %i.bl, %.lr.ph84.i ], [ %i.z, %.preheader.i ] ; 2 uses
  %.35982.i = phi ptr [ %i.bk, %.lr.ph84.i ], [ %i.ab, %.preheader.i ] ; 2 uses
  %i.bh = load i32, ptr %.35982.i, align 1
  %i.bi = call i32 @llvm.bswap.i32(i32 %i.bh)
  %i.bj = zext i32 %i.bi to i64
  store i64 %i.bj, ptr %.383.i, align 8, !tbaa !116
  %i.bk = getelementptr inbounds nuw i8, ptr %.35982.i, i64 4 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.383.i, i64 8
  %i.bm = icmp ult ptr %i.bk, %i.ac
  br i1 %i.bm, label %.lr.ph84.i, label %.loopexit.i, !llvm.loop !591

.loopexit.i:                                      ; preds = %.lr.ph.i, %.lr.ph78.i, %.lr.ph81.i, %.lr.ph84.i, %.preheader.i, %.preheader68.i, %.preheader70.i, %.preheader72.i
  call void @FT_Stream_ExitFrame(ptr noundef nonnull %i.c) #18
  %.pr.pre.i = load i32, ptr %i.a, align 4, !tbaa !67
  %i.bn = icmp eq i32 %.pr.pre.i, 0
  br i1 %i.bn, label %cff_index_load_offsets.exit.thread, label %cff_index_load_offsets.exit

cff_index_load_offsets.exit.thread:               ; preds = %.loopexit.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.b, align 4, !tbaa !67
  br label %bb.g

cff_index_load_offsets.exit:                      ; preds = %bb.c, %bb.d, %bb.e, %.loopexit.i
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !143
  call void @ft_mem_free(ptr noundef %i.e, ptr noundef %i.bo) #18
  store ptr null, ptr %i.f, align 8, !tbaa !143
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !67 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  store i32 %.pre.i, ptr %i.b, align 4, !tbaa !67
  %.not86 = icmp eq i32 %.pre.i, 0
  br i1 %.not86, label %bb.g, label %.thread.thread

bb.g:                                             ; preds = %cff_index_load_offsets.exit.thread, %cff_index_load_offsets.exit, %bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !291
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !285 ; 3 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = add i64 %i.bq, %i.bt                    ; 2 uses
  %.not87 = icmp eq i32 %i.bs, 0
  br i1 %.not87, label %.thread.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = add i32 %i.bs, 1
  %i.bw = zext i32 %i.bv to i64
  %i.bx = call ptr @ft_mem_qrealloc(ptr noundef %i.e, i64 noundef 8, i64 noundef 0, i64 noundef %i.bw, ptr noundef null, ptr noundef nonnull %i.b) #18 ; 11 uses
  %i.by = load i32, ptr %i.b, align 4, !tbaa !67  ; 2 uses
  %.not88 = icmp eq i32 %i.by, 0
  br i1 %.not88, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %.not89 = icmp eq ptr %2, null                  ; 2 uses
  br i1 %.not89, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = call ptr @ft_mem_alloc(ptr noundef %i.e, i64 noundef %i.bu, ptr noundef nonnull %i.b) #18 ; 6 uses
  %i.ca = load i32, ptr %i.b, align 4, !tbaa !67
  %.not90 = icmp eq i32 %i.ca, 0
  br i1 %.not90, label %.thread124, label %bb.x

bb.k:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !142 ; 4 uses
  store ptr %i.cc, ptr %i.bx, align 8, !tbaa !127
  %i.cd = load i32, ptr %i.br, align 4, !tbaa !285 ; 4 uses
  %.not91104 = icmp eq i32 %i.cd, 0
  br i1 %.not91104, label %._crit_edge, label %.lr.ph.split.us

.thread124:                                       ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !142
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !127
  %i.cg = load i32, ptr %i.br, align 4, !tbaa !285 ; 2 uses
  %.not91104127 = icmp eq i32 %i.cg, 0
  br i1 %.not91104127, label %._crit_edge.thread, label %.lr.ph.split.preheader

._crit_edge.thread:                               ; preds = %.thread124
  store ptr %i.bx, ptr %1, align 8, !tbaa !593
  br label %bb.u

.lr.ph.split.preheader:                           ; preds = %.thread124
  %.pre112 = load ptr, ptr %i.f, align 8, !tbaa !143
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %bb.k
  %i.ch = load ptr, ptr %i.f, align 8, !tbaa !143 ; 3 uses
  %i.ci = zext i32 %i.cd to i64                   ; 2 uses
  %xtraiter = and i64 %i.ci, 1
  %i.cj = icmp eq i32 %i.cd, 1
  br i1 %i.cj, label %.epil.preheader, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.lr.ph.split.us
  %unroll_iter = and i64 %i.ci, 4294967294
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.split.us.new
  %.076106.us = phi i64 [ 0, %.lr.ph.split.us.new ], [ %.0.us.1, %bb.p ] ; 2 uses
  %.077105.us = phi i64 [ 1, %.lr.ph.split.us.new ], [ %i.cz, %bb.p ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.new ], [ %niter.next.1, %bb.p ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.077105.us
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !116
  %i.cm = add i64 %i.cl, -1                       ; 2 uses
  %i.cn = icmp ult i64 %i.cm, %.076106.us
  br i1 %i.cn, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.co = load i64, ptr %i.bp, align 8, !tbaa !291
  %spec.select.us = call i64 @llvm.umin.i64(i64 %i.cm, i64 %i.co)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.us = phi i64 [ %spec.select.us, %bb.m ], [ %.076106.us, %bb.l ] ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.0.us
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.077105.us
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !127
  %i.cr = add nuw nsw i64 %.077105.us, 1          ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !116
  %i.cu = add i64 %i.ct, -1                       ; 2 uses
  %i.cv = icmp ult i64 %i.cu, %.0.us
  br i1 %i.cv, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cw = load i64, ptr %i.bp, align 8, !tbaa !291
  %spec.select.us.1 = call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.cw)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.us.1 = phi i64 [ %spec.select.us.1, %bb.o ], [ %.0.us, %bb.n ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.0.us.1
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cr
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !127
  %i.cz = add nuw nsw i64 %.077105.us, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.l, !llvm.loop !592

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.s
  %i.da = phi i32 [ %i.dw, %bb.s ], [ %i.cg, %.lr.ph.split.preheader ] ; 2 uses
  %4 = phi ptr [ %5, %bb.s ], [ %.pre112, %.lr.ph.split.preheader ] ; 3 uses
  %.076106.a = phi i64 [ %.1, %bb.s ], [ 0, %.lr.ph.split.preheader ] ; 5 uses
  %.077105.a = phi i64 [ %.0135, %bb.s ], [ 0, %.lr.ph.split.preheader ] ; 5 uses
  %.077105 = phi i64 [ %i.dx, %bb.s ], [ 1, %.lr.ph.split.preheader ] ; 5 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.077105
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !116
  %i.dd = add i64 %i.dc, -1                       ; 2 uses
  %i.de = icmp ult i64 %i.dd, %.077105.a
  br i1 %i.de, label %.thread132, label %bb.q

.thread132:                                       ; preds = %.lr.ph.split
  %i.df = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.077105.a
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 %.076106.a
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.077105
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !127
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph.split
  %i.di = load i64, ptr %i.bp, align 8, !tbaa !291
  %spec.select = call i64 @llvm.umin.i64(i64 %i.dd, i64 %i.di) ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bz, i64 %spec.select
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.076106.a ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.077105 ; 5 uses
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !127
  %.not93 = icmp eq i64 %spec.select, %.077105.a
  br i1 %.not93, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dm = getelementptr i8, ptr %i.dl, i64 -8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !127 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.077105.a
  %i.dp = ptrtoint ptr %i.dk to i64
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = sub i64 %i.dp, %i.dq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dn, ptr align 1 %i.do, i64 %i.dr, i1 false)
  %i.ds = load ptr, ptr %i.dl, align 8, !tbaa !127
  store i8 0, ptr %i.ds, align 1, !tbaa !130
  %i.dt = load ptr, ptr %i.dl, align 8, !tbaa !127
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  store ptr %i.du, ptr %i.dl, align 8, !tbaa !127
  %i.dv = add i64 %.076106.a, 1
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !143
  %.pre.a = load i32, ptr %i.br, align 4, !tbaa !285
  br label %bb.s

bb.s:                                             ; preds = %.thread132, %bb.q, %bb.r
  %.0135 = phi i64 [ %spec.select, %bb.r ], [ %spec.select, %bb.q ], [ %.077105.a, %.thread132 ]
  %i.dw = phi i32 [ %.pre.a, %bb.r ], [ %i.da, %bb.q ], [ %i.da, %.thread132 ] ; 2 uses
  %5 = phi ptr [ %.pre, %bb.r ], [ %4, %bb.q ], [ %4, %.thread132 ]
  %.1 = phi i64 [ %i.dv, %bb.r ], [ %.076106.a, %bb.q ], [ %.076106.a, %.thread132 ]
  %i.dx = add nuw nsw i64 %.077105, 1
  %i.dy = zext i32 %i.dw to i64
  %.not91.not = icmp samesign ult i64 %.077105, %i.dy
  br i1 %.not91.not, label %.lr.ph.split, label %._crit_edge, !llvm.loop !592

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.split.us
  %.076106.us.epil.init = phi i64 [ 0, %.lr.ph.split.us ], [ %.0.us.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.077105.us.epil.init = phi i64 [ 1, %.lr.ph.split.us ], [ %i.cz, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod151 = trunc i32 %i.cd to i1
  call void @llvm.assume(i1 %lcmp.mod151)
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.077105.us.epil.init
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !116
  %i.eb = add i64 %i.ea, -1                       ; 2 uses
  %i.ec = icmp ult i64 %i.eb, %.076106.us.epil.init
  br i1 %i.ec, label %._crit_edge.loopexit.epilog-lcssa, label %bb.t

bb.t:                                             ; preds = %.epil.preheader
  %i.ed = load i64, ptr %i.bp, align 8, !tbaa !291
  %spec.select.us.epil = call i64 @llvm.umin.i64(i64 %i.eb, i64 %i.ed)
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.t, %.epil.preheader
  %.0.us.epil = phi i64 [ %spec.select.us.epil, %bb.t ], [ %.076106.us.epil.init, %.epil.preheader ]
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.0.us.epil
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.077105.us.epil.init
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !127
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.s, %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %bb.k
  %.078129 = phi ptr [ null, %._crit_edge.loopexit.epilog-lcssa ], [ null, %bb.k ], [ null, %._crit_edge.loopexit.unr-lcssa ], [ %i.bz, %bb.s ] ; 2 uses
  store ptr %i.bx, ptr %1, align 8, !tbaa !593
  br i1 %.not89, label %bb.v, label %bb.u

bb.u:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.078129137 = phi ptr [ %i.bz, %._crit_edge.thread ], [ %.078129, %._crit_edge ] ; 2 uses
  store ptr %.078129137, ptr %2, align 8, !tbaa !127
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge
  %.078129138 = phi ptr [ %.078129137, %bb.u ], [ %.078129, %._crit_edge ] ; 2 uses
  %.not92 = icmp eq ptr %3, null
  br i1 %.not92, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i64 %i.bu, ptr %3, align 8, !tbaa !116
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.j
  %.179 = phi ptr [ %.078129138, %bb.v ], [ %i.bz, %bb.j ], [ %.078129138, %bb.w ] ; 2 uses
  %i.eg = load i32, ptr %i.b, align 4, !tbaa !67  ; 2 uses
  %i.eh = icmp ne i32 %i.eg, 0
  %i.ei = icmp ne ptr %.179, null
  %or.cond = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %or.cond, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  call void @ft_mem_free(ptr noundef %i.e, ptr noundef nonnull %.179) #18
  %.pre112.a = load i32, ptr %i.b, align 4, !tbaa !67
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.y, %bb.x
  %i.ej = phi i32 [ %i.by, %bb.h ], [ %.pre112.a, %bb.y ], [ %i.eg, %bb.x ] ; 2 uses
  %i.ek = icmp ne i32 %i.ej, 0
  %i.el = icmp ne ptr %i.bx, null
  %or.cond3 = select i1 %i.ek, i1 %i.el, i1 false
  br i1 %or.cond3, label %bb.z, label %.thread.thread

bb.z:                                             ; preds = %.thread
  call void @ft_mem_free(ptr noundef %i.e, ptr noundef nonnull %i.bx) #18
  %.pre113 = load i32, ptr %i.b, align 4, !tbaa !67
  br label %.thread.thread

.thread.thread:                                   ; preds = %cff_index_load_offsets.exit, %bb.g, %bb.z, %.thread
  %i.em = phi i32 [ %.pre.i, %cff_index_load_offsets.exit ], [ 0, %bb.g ], [ %.pre113, %bb.z ], [ %i.ej, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %i.em
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cff_subfont_load(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef range(i32 4096, 16385) %5, ptr noundef %6, ptr nofree noundef readonly captures(none) %7) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %8 = alloca %struct.CFF_ParserRec_, align 8     ; 12 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr null, ptr %i.b, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 920
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104  ; 2 uses
  %i.f = icmp eq i32 %5, 12288
  %i.g = icmp eq i32 %5, 16384
  %i.h = or i1 %i.f, %i.g                         ; 3 uses
  %i.i = zext i1 %i.h to i8
  %i.j = select i1 %i.h, i32 513, i32 96          ; 2 uses
  %i.k = load ptr, ptr %6, align 8, !tbaa !163    ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i8 0, i64 64, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 52
  store i32 %5, ptr %i.n, align 4, !tbaa !247
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr %0, ptr %i.o, align 8, !tbaa !248
  store ptr %i.k, ptr %8, align 8, !tbaa !249
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 66
  store i16 0, ptr %i.p, align 2, !tbaa !282
  %i.q = zext nneg i32 %i.j to i64
  %i.r = call ptr @ft_mem_qrealloc(ptr noundef %i.l, i64 noundef 8, i64 noundef 0, i64 noundef %i.q, ptr noundef null, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !250
  %i.t = load i32, ptr %i.a, align 4, !tbaa !67   ; 2 uses
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.b, label %cff_parser_init.exit

cff_parser_init.exit:                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i32 %i.j, ptr %i.u, align 8, !tbaa !251
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.r, ptr %i.v, align 8, !tbaa !252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.w, i8 0, i64 296, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 -100, ptr %i.x, align 8, !tbaa !596
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i16 50, ptr %i.y, align 2, !tbaa !597
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 2, ptr %i.z, align 8, !tbaa !598
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 65536, ptr %i.aa, align 8, !tbaa !599
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 65536, ptr %i.ab, align 8, !tbaa !600
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 8720, ptr %i.ac, align 8, !tbaa !601
  store <4 x i32> splat (i32 65535), ptr %0, align 8, !tbaa !67
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 65535, ptr %i.ad, align 8, !tbaa !124
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 65535, ptr %i.ae, align 4, !tbaa !134
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 65535, ptr %i.af, align 8, !tbaa !227
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  store i32 65535, ptr %i.ag, align 4, !tbaa !110
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 65535, ptr %i.ah, align 8, !tbaa !231
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i32 65535, ptr %i.ai, align 8, !tbaa !131
  %i.aj = select i1 %i.h, i32 513, i32 48
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !602
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !285
  %.not88 = icmp eq i32 %i.am, 0
  br i1 %.not88, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !290
  %i.ap = call i32 @FT_Stream_Seek(ptr noundef %3, i64 noundef %i.ao) #18 ; 2 uses
  %.not89 = icmp eq i32 %i.ap, 0
  br i1 %.not89, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !291
  %i.as = call i32 @FT_Stream_ExtractFrame(ptr noundef %3, i64 noundef %i.ar, ptr noundef nonnull %i.b) #18 ; 2 uses
  %.not90 = icmp eq i32 %i.as, 0
  br i1 %.not90, label %.thread, label %bb.v

bb.e:                                             ; preds = %bb.b
  %i.at = call fastcc i32 @cff_index_access_element(ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) ; 2 uses
  %.not91 = icmp eq i32 %i.at, 0
  br i1 %.not91, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e, %bb.d
  %.in = phi ptr [ %i.aq, %bb.d ], [ %i.c, %bb.e ]
  %i.au = load i64, ptr %.in, align 8
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !127 ; 3 uses
  %.not92 = icmp eq ptr %i.av, null
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.au
  %i.ax = select i1 %.not92, ptr null, ptr %i.aw
  %i.ay = call fastcc i32 @cff_parser_run(ptr noundef %8, ptr noundef %i.av, ptr noundef %i.ax)
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %.1 = phi i32 [ %i.at, %bb.e ], [ %i.ay, %.thread ] ; 2 uses
  %i.az = load i32, ptr %i.al, align 4, !tbaa !285
  %.not93 = icmp eq i32 %i.az, 0
  br i1 %.not93, label %cff_index_forget_element.exit.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !142
end_hunk_0
