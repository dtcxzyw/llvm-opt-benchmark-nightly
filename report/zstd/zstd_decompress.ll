Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zstd/original/zstd_decompress?download=true
inline.NumInlined: 232
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ZSTD_decodeFrameHeader:bb.a
bb.b:                                             ; preds = %bb.a
  %.not21 = icmp eq i64 %i.e, 0
  br i1 %.not21, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 30224
  %i.h = load i32, ptr %i.g, align 8, !tbaa !40
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %bb.d, label %ZSTD_DCtx_selectFrameDDict.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 30216
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35   ; 4 uses
  %.not22 = icmp eq ptr %i.k, null
  br i1 %.not22, label %ZSTD_DCtx_selectFrameDDict.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 30192 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !81
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %ZSTD_DCtx_selectFrameDDict.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 29956 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !91   ; 2 uses
  %i.p = getelementptr i8, ptr %i.k, i64 8
  %.val.i.i = load i64, ptr %i.p, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.o, ptr %i.a, align 4, !tbaa !50
  %i.q = call i64 @ZSTD_XXH64(ptr noundef nonnull captures(address) %i.a, i64 noundef 4, i64 noundef 0) #18
  %i.r = add i64 %.val.i.i, -1                    ; 2 uses
  %i.s = and i64 %i.q, %i.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.014.i.i = phi i64 [ %i.s, %bb.f ], [ %i.aa, %bb.g ] ; 3 uses
  %i.t = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.014.i.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !93
  %i.w = call i32 @ZSTD_getDictID_fromDDict(ptr noundef %i.v) #15 ; 2 uses
  %i.x = icmp eq i32 %i.w, %i.o
  %i.y = icmp eq i32 %i.w, 0
  %or.cond.i.i = or i1 %i.x, %i.y
  %i.z = and i64 %.014.i.i, %i.r
  %i.aa = add i64 %i.z, 1
  br i1 %or.cond.i.i, label %ZSTD_DDictHashSet_getDDict.exit.i, label %bb.g

ZSTD_DDictHashSet_getDDict.exit.i:                ; preds = %bb.g
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.014.i.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !93 ; 2 uses
  %.not10.i = icmp eq ptr %i.ad, null
  br i1 %.not10.i, label %ZSTD_DCtx_selectFrameDDict.exit, label %bb.h

bb.h:                                             ; preds = %ZSTD_DDictHashSet_getDDict.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 30184 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !22
  %i.ag = call i64 @ZSTD_freeDDict(ptr noundef %i.af) #15 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 30208
  store i64 0, ptr %i.ae, align 8
  %i.ai = load i32, ptr %i.n, align 4, !tbaa !91
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 30200
  store i32 %i.ai, ptr %i.aj, align 8, !tbaa !68
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !81
  store i32 -1, ptr %i.ah, align 8, !tbaa !27
  br label %ZSTD_DCtx_selectFrameDDict.exit

ZSTD_DCtx_selectFrameDDict.exit:                  ; preds = %bb.h, %ZSTD_DDictHashSet_getDDict.exit.i, %bb.e, %bb.c, %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 29956
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !91 ; 2 uses
  %.not23 = icmp eq i32 %i.al, 0
  br i1 %.not23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %ZSTD_DCtx_selectFrameDDict.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 30200
  %i.an = load i32, ptr %i.am, align 8, !tbaa !68
  %.not24 = icmp eq i32 %i.an, %i.al
  br i1 %.not24, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i, %ZSTD_DCtx_selectFrameDDict.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 29960
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !74
  %.not25 = icmp eq i32 %i.ap, 0
  br i1 %.not25, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 30108
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !39
  %.not26 = icmp eq i32 %i.ar, 0                  ; 2 uses
  %i.as = zext i1 %.not26 to i32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 30112
  store i32 %i.as, ptr %i.at, align 8, !tbaa !72
  br i1 %.not26, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 30008
  %i.av = call i32 @ZSTD_XXH64_reset(ptr noundef nonnull captures(address) %i.au, i64 noundef 0) #15 ; 0 uses
  br label %bb.m

.critedge:                                        ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 30112
  store i32 0, ptr %i.aw, align 8, !tbaa !72
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.l, %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 29976 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !90
  %i.az = add i64 %i.ay, %2
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !90
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.b, %bb.a, %bb.m
  %.0 = phi i64 [ 0, %bb.m ], [ %i.e, %bb.a ], [ -72, %bb.b ], [ -32, %bb.i ]
  ret i64 %.0
}

declare i64 @ZSTD_getcBlockSize(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @ZSTD_decompressBlock_internal(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @ZSTD_XXH64_update(ptr noundef captures(address), ptr noundef captures(address), i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @ZSTD_DCtx_trace_end(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ZSTD_Trace, align 8         ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 95968 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.c = icmp ne i64 %i.b, 0
  %i.d = icmp ne ptr @ZSTD_trace_decompress_end, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  store i32 10600, ptr %4, align 8, !tbaa !79
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %3, ptr %i.f, align 4, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 30192 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @ZSTD_getDictID_fromDDict(ptr noundef nonnull %i.h) #15
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.i, ptr %i.j, align 8, !tbaa !82
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.l = tail call i64 @ZSTD_DDict_dictSize(ptr noundef %i.k) #15
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !83
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 30204
  %i.o = load i32, ptr %i.n, align 4, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.o, ptr %i.p, align 4, !tbaa !84
  %.pre = load i64, ptr %i.a, align 8, !tbaa !66
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = phi i64 [ %.pre, %bb.c ], [ %i.b, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %1, ptr %i.r, align 8, !tbaa !85
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %2, ptr %i.s, align 8, !tbaa !86
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr %0, ptr %i.t, align 8, !tbaa !87
  call void @ZSTD_trace_decompress_end(i64 noundef %i.q, ptr noundef nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @ZSTD_XXH64_digest(ptr noundef captures(address)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define i64 @ZSTD_loadDEntropy(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i16], align 16              ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca [53 x i16], align 16              ; 5 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca [36 x i16], align 16              ; 5 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.k = icmp ult i64 %2, 9
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10264
  %i.n = ptrtoint ptr %i.j to i64                 ; 2 uses
  %gepdiff = add i64 %2, -8                       ; 3 uses
  %i.o = tail call i64 @HUF_readDTableX2_wksp(ptr noundef nonnull %i.m, ptr noundef nonnull %i.l, i64 noundef %gepdiff, ptr noundef %0, i64 noundef 10264, i32 noundef 0) #15 ; 4 uses
  %i.p = icmp ult i64 %i.o, -119
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o ; 2 uses
  br i1 %i.p, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i32 31, ptr %i.b, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %gepdiff98 = sub i64 %gepdiff, %i.o
  %i.r = call i64 @FSE_readNCount(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.q, i64 noundef %gepdiff98) #15 ; 3 uses
  %i.s = icmp ult i64 %i.r, -119
  br i1 %i.s, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.b, align 4, !tbaa !50   ; 2 uses
  %i.u = icmp ugt i32 %i.t, 31
  br i1 %i.u, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.c, align 4, !tbaa !50   ; 2 uses
  %i.w = icmp ugt i32 %i.v, 8
  br i1 %i.w, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4104
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 26664 ; 3 uses
  call void @ZSTD_buildFSETable(ptr noundef nonnull %i.x, ptr noundef nonnull %i.a, i32 noundef %i.t, ptr noundef nonnull @OF_base, ptr noundef nonnull @OF_bits, i32 noundef %i.v, ptr noundef nonnull %i.y, i64 noundef 628, i32 noundef 0) #15
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store i32 52, ptr %i.e, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %3 = add i64 %i.o, %i.r
  %gepdiff99 = sub i64 %gepdiff, %3
  %i.aa = call i64 @FSE_readNCount(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.z, i64 noundef %gepdiff99) #15 ; 2 uses
  %i.ab = icmp ult i64 %i.aa, -119
  br i1 %i.ab, label %bb.g, label %.critedge90

bb.g:                                             ; preds = %bb.f
  %i.ac = load i32, ptr %i.e, align 4, !tbaa !50  ; 2 uses
  %i.ad = icmp ugt i32 %i.ac, 52
  br i1 %i.ad, label %.critedge90, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load i32, ptr %i.f, align 4, !tbaa !50  ; 2 uses
  %i.af = icmp ugt i32 %i.ae, 9
  br i1 %i.af, label %.critedge90, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 6160
  call void @ZSTD_buildFSETable(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.d, i32 noundef %i.ac, ptr noundef nonnull @ML_base, ptr noundef nonnull @ML_bits, i32 noundef %i.ae, ptr noundef nonnull %i.y, i64 noundef 628, i32 noundef 0) #15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  store i32 35, ptr %i.h, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #15
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.n, %i.ai
  %i.ak = call i64 @FSE_readNCount(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.ah, i64 noundef %i.aj) #15 ; 2 uses
  %i.al = icmp ult i64 %i.ak, -119
  br i1 %i.al, label %bb.j, label %.critedge92

bb.j:                                             ; preds = %bb.i
  %i.am = load i32, ptr %i.h, align 4, !tbaa !50  ; 2 uses
  %i.an = icmp ugt i32 %i.am, 35
  br i1 %i.an, label %.critedge92, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = load i32, ptr %i.i, align 4, !tbaa !50  ; 2 uses
  %i.ap = icmp ugt i32 %i.ao, 9
  br i1 %i.ap, label %.critedge92, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @ZSTD_buildFSETable(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i32 noundef %i.am, ptr noundef nonnull @LL_base, ptr noundef nonnull @LL_bits, i32 noundef %i.ao, ptr noundef nonnull %i.y, i64 noundef 628, i32 noundef 0) #15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ak ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12 ; 2 uses
  %i.as = icmp ugt ptr %i.ar, %i.j
  br i1 %i.as, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.n, %i.at                     ; 3 uses
  %.470.val = load i32, ptr %i.aq, align 1, !tbaa !50 ; 3 uses
  %i.av = icmp eq i32 %.470.val, 0
  %i.aw = zext i32 %.470.val to i64
  %i.ax = icmp ult i64 %i.au, %i.aw
  %or.cond = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond, label %.loopexit, label %.critedge95

.critedge95:                                      ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 26652
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 %.470.val, ptr %i.ay, align 4, !tbaa !50
  %.470.val.1 = load i32, ptr %i.az, align 1, !tbaa !50 ; 3 uses
  %i.ba = icmp eq i32 %.470.val.1, 0
  %i.bb = zext i32 %.470.val.1 to i64
  %i.bc = icmp ult i64 %i.au, %i.bb
  %or.cond.1 = select i1 %i.ba, i1 true, i1 %i.bc
  br i1 %or.cond.1, label %.loopexit, label %.critedge95.1

.critedge95.1:                                    ; preds = %.critedge95
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 26656
  store i32 %.470.val.1, ptr %i.be, align 4, !tbaa !50
  %.470.val.2 = load i32, ptr %i.bd, align 1, !tbaa !50 ; 3 uses
  %i.bf = icmp eq i32 %.470.val.2, 0
  %i.bg = zext i32 %.470.val.2 to i64
  %i.bh = icmp ult i64 %i.au, %i.bg
  %or.cond.2 = select i1 %i.bf, i1 true, i1 %i.bh
  br i1 %or.cond.2, label %.loopexit, label %.critedge95.2

.critedge95.2:                                    ; preds = %.critedge95.1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 26660
  store i32 %.470.val.2, ptr %i.bj, align 4, !tbaa !50
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = ptrtoint ptr %1 to i64
  %i.bm = sub i64 %i.bk, %i.bl
  br label %.loopexit

.critedge:                                        ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.loopexit

.critedge90:                                      ; preds = %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %.loopexit

.critedge92:                                      ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.critedge95, %.critedge95.1, %bb.l, %.critedge92, %.critedge90, %.critedge, %bb.a, %bb.b, %.critedge95.2
  %.7 = phi i64 [ -30, %bb.b ], [ -30, %bb.a ], [ %i.bm, %.critedge95.2 ], [ -30, %bb.l ], [ -30, %.critedge92 ], [ -30, %.critedge90 ], [ -30, %.critedge ], [ -30, %.critedge95.1 ], [ -30, %.critedge95 ], [ -30, %bb.m ]
  ret i64 %.7
}

declare i64 @HUF_readDTableX2_wksp(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @FSE_readNCount(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @ZSTD_buildFSETable(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef i64 @ZSTD_decompressBegin(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr @ZSTD_trace_decompress_begin, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @ZSTD_trace_decompress_begin(ptr noundef %0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 95968
  store i64 %i.b, ptr %i.c, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 30104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !36
  %i.f = icmp eq i32 %i.e, 0
  %i.g = select i1 %i.f, i64 5, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 %i.g, ptr %i.h, align 8, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 29976
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 29888
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10296 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i32 201326604, ptr %i.l, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 30200
  store i32 0, ptr %i.m, align 8, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 29992
  store <4 x i32> <i32 3, i32 0, i32 0, i32 0>, ptr %i.n, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 30176
  store i32 1, ptr %i.o, align 8, !tbaa !30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 26684
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, ptr noundef nonnull align 4 dereferenceable(12) @repStartValue, i64 12, i1 false)
  store ptr %i.k, ptr %0, align 8, !tbaa !94
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 6192
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8, !tbaa !95
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4136
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !96
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.l, ptr %i.u, align 8, !tbaa !97
  ret i64 0
}

declare extern_weak i64 @ZSTD_trace_decompress_begin(ptr noundef) #1

; Function Attrs: nounwind uwtable
define range(i64 -30, 1) i64 @ZSTD_decompressBegin_usingDict(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr @ZSTD_trace_decompress_begin, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @ZSTD_trace_decompress_begin(ptr noundef %0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 95968
  store i64 %i.b, ptr %i.c, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 30104
  %i.e = load i32, ptr %i.d, align 8, !tbaa !36
  %i.f = icmp eq i32 %i.e, 0
  %i.g = select i1 %i.f, i64 5, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 29920
  store i64 %i.g, ptr %i.h, align 8, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 29976
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 29888 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 10296 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i32 201326604, ptr %i.l, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 30004
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 30000
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 30200 ; 2 uses
end_hunk_0
