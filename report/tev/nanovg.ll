Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/nanovg?download=true
inline.NumInlined: 893
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 56
begin_hunk_0_@fonsResetAtlas:bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !70
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !70
  %i.h = icmp slt i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.j = load i32, ptr %i.i, align 4, !tbaa !70
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !70
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !171  ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !133
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !147
  tail call void %i.o(ptr noundef %i.q, ptr noundef nonnull %i.d, ptr noundef %i.s) #40, !inline_history !20
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = load <2 x i32>, ptr %0, align 8, !tbaa !70
  store <2 x i32> %i.t, ptr %i.d, align 8, !tbaa !70
  store i32 0, ptr %i.f, align 8, !tbaa !70
  store i32 0, ptr %i.k, align 4, !tbaa !70
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20600 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !170  ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %fons__flush.exit

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !172  ; 2 uses
  %.not26.i = icmp eq ptr %i.y, null
  br i1 %.not26.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !133
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8312
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16504
  tail call void %i.y(ptr noundef %i.aa, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad, i32 noundef %i.v) #40, !inline_history !20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 0, ptr %i.u, align 8, !tbaa !170
  br label %fons__flush.exit

fons__flush.exit:                                 ; preds = %bb.g, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !202 ; 2 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %fons__flush.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !133
  %i.ai = tail call i32 %i.af(ptr noundef %i.ah, i32 noundef %1, i32 noundef %2) #40
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k, %fons__flush.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !139 ; 4 uses
  store i32 %1, ptr %i.al, align 8, !tbaa !136
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 %2, ptr %i.am, align 4, !tbaa !137
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !138 ; 3 uses
  store i16 0, ptr %i.ap, align 2, !tbaa !201
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  store i16 0, ptr %i.aq, align 2, !tbaa !204
  %i.ar = trunc i32 %1 to i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !142
  store i32 1, ptr %i.an, align 8, !tbaa !143
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !147
  %i.av = mul nsw i32 %2, %1
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = tail call ptr @realloc(ptr noundef %i.au, i64 noundef %i.aw) #43 ; 3 uses
  store ptr %i.ax, ptr %i.at, align 8, !tbaa !147
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ax, i8 0, i64 %i.aw, i1 false)
  store i32 %1, ptr %i.d, align 8, !tbaa !70
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  store i32 %2, ptr %i.az, align 4, !tbaa !70
  store i32 0, ptr %i.f, align 8, !tbaa !70
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  store i32 0, ptr %i.ba, align 4, !tbaa !70
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !146
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !144
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !155 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 268
  store i32 0, ptr %i.bi, align 4, !tbaa !162
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.bj, i8 -1, i64 1024, i1 false), !tbaa !70
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bk = load i32, ptr %i.bb, align 4, !tbaa !146
  %i.bl = sext i32 %i.bk to i64
  %i.bm = icmp slt i64 %indvars.iv.next, %i.bl
  br i1 %i.bm, label %bb.n, label %._crit_edge, !llvm.loop !441

._crit_edge:                                      ; preds = %bb.n, %bb.m
  store i32 %1, ptr %0, align 8, !tbaa !131
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.bn, align 4, !tbaa !132
  %i.bo = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.bp = insertelement <2 x i32> %i.bo, i32 %2, i64 1
  %i.bq = sitofp <2 x i32> %i.bp to <2 x float>
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bs = fdiv <2 x float> splat (float 1.000000e+00), %i.bq
  store <2 x float> %i.bs, ptr %i.br, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.bt = load ptr, ptr %i.ak, align 8, !tbaa !139
  %i.bu = call fastcc i32 @fons__atlasAddRect(ptr noundef %i.bt, i32 noundef 2, i32 noundef 2, ptr noundef %i.a, ptr noundef %i.b)
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %fons__addWhiteRect.exit, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge
  %i.bw = load ptr, ptr %i.at, align 8, !tbaa !147
  %i.bx = load i32, ptr %i.a, align 4, !tbaa !70  ; 3 uses
  %i.by = load i32, ptr %i.b, align 4, !tbaa !70  ; 3 uses
  %i.bz = load i32, ptr %0, align 8, !tbaa !131
  %i.ca = mul nsw i32 %i.bz, %i.by
  %i.cb = add nsw i32 %i.ca, %i.bx
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds i8, ptr %i.bw, i64 %i.cc ; 2 uses
  store i16 -1, ptr %i.cd, align 1
  %i.ce = load i32, ptr %0, align 8, !tbaa !131
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds i8, ptr %i.cd, i64 %i.cf
  store i16 -1, ptr %i.cg, align 1
  %i.ch = load i32, ptr %i.d, align 8, !tbaa !70
  %i.ci = tail call noundef i32 @llvm.smin.i32(i32 %i.ch, i32 %i.bx)
  store i32 %i.ci, ptr %i.d, align 8, !tbaa !70
  %i.cj = load i32, ptr %i.az, align 4, !tbaa !70
  %i.ck = tail call noundef i32 @llvm.smin.i32(i32 %i.cj, i32 %i.by)
  store i32 %i.ck, ptr %i.az, align 4, !tbaa !70
  %i.cl = load i32, ptr %i.f, align 8, !tbaa !70
  %i.cm = add nsw i32 %i.bx, 2
  %i.cn = tail call noundef i32 @llvm.smax.i32(i32 %i.cl, i32 %i.cm)
  store i32 %i.cn, ptr %i.f, align 8, !tbaa !70
  %i.co = load i32, ptr %i.ba, align 4, !tbaa !70
  %i.cp = add nsw i32 %i.by, 2
  %i.cq = tail call noundef i32 @llvm.smax.i32(i32 %i.co, i32 %i.cp)
  store i32 %i.cq, ptr %i.ba, align 4, !tbaa !70
  br label %fons__addWhiteRect.exit

fons__addWhiteRect.exit:                          ; preds = %._crit_edge, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.k, %bb.a, %fons__addWhiteRect.exit
  %.044 = phi i32 [ 1, %fons__addWhiteRect.exit ], [ 0, %bb.a ], [ 0, %bb.k ], [ 0, %bb.l ]
  ret i32 %.044
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @nvgCreateInternal(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #24 {
bb.a:
  %1 = alloca %struct.FONSparams, align 8         ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  %i.a = tail call noalias dereferenceable_or_null(8920) ptr @malloc(i64 noundef 8920) #42 ; 43 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(8800) %i.c, i8 0, i64 8800, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(112) %0, i64 112, i1 false), !tbaa.struct !442
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8880 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false), !tbaa !70
  %i.e = tail call noalias dereferenceable_or_null(1024) ptr @malloc(i64 noundef 1024) #42 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %i.e, ptr %i.f, align 8, !tbaa !210
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  store i32 0, ptr %i.g, align 4, !tbaa !211
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i32 256, ptr %i.h, align 8, !tbaa !212
  %calloc.i = tail call dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64) ; 9 uses
  %i.i = icmp eq ptr %calloc.i, null
  br i1 %i.i, label %nvg__allocPathCache.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #42 ; 4 uses
  store ptr %i.j, ptr %calloc.i, align 8, !tbaa !217
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %.thread20.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %calloc.i, i64 12
  store i32 128, ptr %i.k, align 4, !tbaa !218
  %i.l = tail call noalias dereferenceable_or_null(896) ptr @malloc(i64 noundef 896) #42 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %calloc.i, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !219
  %.not18.i = icmp eq ptr %i.l, null
  br i1 %.not18.i, label %.thread20.thread.sink.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %calloc.i, i64 28
  store i32 16, ptr %i.n, align 4, !tbaa !220
  %i.o = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #42 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %calloc.i, i64 32
  store ptr %i.o, ptr %i.p, align 8, !tbaa !221
  %.not19.i = icmp eq ptr %i.o, null
  br i1 %.not19.i, label %bb.g, label %nvgSave.exit

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.j) #40
  br label %.thread20.thread.sink.split.i

.thread20.thread.sink.split.i:                    ; preds = %bb.g, %bb.e
  %.sink.i = phi ptr [ %i.l, %bb.g ], [ %i.j, %bb.e ]
  tail call void @free(ptr noundef nonnull %.sink.i) #40
  br label %.thread20.thread.i

.thread20.thread.i:                               ; preds = %.thread20.thread.sink.split.i, %bb.d
  tail call void @free(ptr noundef nonnull %calloc.i) #40
  br label %nvg__allocPathCache.exit.thread

nvg__allocPathCache.exit.thread:                  ; preds = %bb.c, %.thread20.thread.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8848
  store ptr null, ptr %i.q, align 8, !tbaa !222
  br label %bb.k

nvgSave.exit:                                     ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %calloc.i, i64 44
  store i32 256, ptr %i.r, align 4, !tbaa !223
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8848
  store ptr %calloc.i, ptr %i.s, align 8, !tbaa !222
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8840
  store i32 1, ptr %i.t, align 8, !tbaa !224
  %i.u = getelementptr i8, ptr %i.a, i64 136
  %i.v = getelementptr i8, ptr %i.a, i64 156
  %i.w = getelementptr i8, ptr %i.a, i64 180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.w, i8 0, i64 196, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.v, align 4, !tbaa !81
  %i.x = getelementptr i8, ptr %i.a, i64 172
  store <2 x float> zeroinitializer, ptr %i.x, align 4, !tbaa !81
  %i.y = getelementptr i8, ptr %i.a, i64 192
  store float 1.000000e+00, ptr %i.y, align 8, !tbaa !227
  %i.z = getelementptr i8, ptr %i.a, i64 196
  store <2 x float> splat (float 1.000000e+00), ptr %i.z, align 4
  %.sroa.3.0..sroa_idx.i.i = getelementptr i8, ptr %i.a, i64 204
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.3.0..sroa_idx.i.i, align 4, !tbaa !38
  %i.aa = getelementptr i8, ptr %i.a, i64 212
  store <2 x float> splat (float 1.000000e+00), ptr %i.aa, align 4
  %.sroa.3.0..sroa_idx7.i.i = getelementptr i8, ptr %i.a, i64 220
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.3.0..sroa_idx7.i.i, align 4, !tbaa !38
  %i.ab = getelementptr i8, ptr %i.a, i64 232
  %i.ac = getelementptr i8, ptr %i.a, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.ac, i8 0, i64 52, i1 false)
  store float 1.000000e+00, ptr %i.ab, align 8, !tbaa !81
  %i.ad = getelementptr i8, ptr %i.a, i64 244
  store float 1.000000e+00, ptr %i.ad, align 4, !tbaa !81
  %i.ae = getelementptr i8, ptr %i.a, i64 268
  store float 1.000000e+00, ptr %i.ae, align 4, !tbaa !227
  %.sroa.3.0..sroa_idx.i23.i = getelementptr i8, ptr %i.a, i64 280
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.3.0..sroa_idx.i23.i, align 8, !tbaa !38
  %.sroa.3.0..sroa_idx7.i24.i = getelementptr i8, ptr %i.a, i64 296
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.3.0..sroa_idx7.i24.i, align 8, !tbaa !38
  store i64 549755813890, ptr %i.u, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.a, i64 144
  store i64 549755813890, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.af = getelementptr i8, ptr %i.a, i64 152
  store i32 1, ptr %i.af, align 8, !tbaa !231
  %i.ag = getelementptr i8, ptr %i.a, i64 308
  store <2 x float> <float 1.000000e+00, float 1.000000e+01>, ptr %i.ag, align 4, !tbaa !81
  %i.ah = getelementptr i8, ptr %i.a, i64 316
  store i32 4, ptr %i.ah, align 4, !tbaa !232
  %i.ai = getelementptr i8, ptr %i.a, i64 324
  store <2 x float> splat (float 1.000000e+00), ptr %i.ai, align 4, !tbaa !81
  %i.aj = getelementptr i8, ptr %i.a, i64 340
  store float 1.000000e+00, ptr %i.aj, align 4, !tbaa !81
  %i.ak = getelementptr i8, ptr %i.a, i64 376
  store <4 x float> <float -1.000000e+00, float -1.000000e+00, float 1.600000e+01, float 0.000000e+00>, ptr %i.ak, align 8, !tbaa !81
  %i.al = getelementptr i8, ptr %i.a, i64 392
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.al, align 8, !tbaa !81
  %i.am = getelementptr i8, ptr %i.a, i64 400
  store i32 65, ptr %i.am, align 8, !tbaa !233
  %i.an = getelementptr i8, ptr %i.a, i64 404
  store i32 0, ptr %i.an, align 4, !tbaa !234
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8856
  store <4 x float> <float 2.500000e-01, float f0x3C23D70A, float 1.000000e+00, float 1.000000e+00>, ptr %i.ao, align 8, !tbaa !81
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !443
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !235 ; 2 uses
  %i.as = tail call i32 %i.aq(ptr noundef %i.ar) #40
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.k, label %bb.h

bb.h:                                             ; preds = %nvgSave.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, i8 0, i64 32, i1 false)
  store i32 512, ptr %1, align 8, !tbaa !444
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 512, ptr %i.av, align 4, !tbaa !445
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 1, ptr %i.aw, align 8, !tbaa !446
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  %i.az = call ptr @fonsCreateInternal(ptr noundef nonnull %1) ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8872
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !236
  %i.bb = icmp eq ptr %i.az, null
  br i1 %i.bb, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !237
  %i.be = tail call i32 %i.bd(ptr noundef %i.ar, i32 noundef 1, i32 noundef 512, i32 noundef 512, i32 noundef 0, ptr noundef null) #40 ; 2 uses
  store i32 %i.be, ptr %i.d, align 8, !tbaa !70
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 8896
  store i32 0, ptr %i.bg, align 8, !tbaa !238
  br label %bb.l

bb.k:                                             ; preds = %nvg__allocPathCache.exit.thread, %bb.i, %bb.h, %nvgSave.exit, %bb.b, %bb.a
  tail call void @nvgDeleteInternal(ptr noundef %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.028 = phi ptr [ null, %bb.k ], [ %i.a, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  ret ptr %.028
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @nvgSave(ptr nofree noundef captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8840 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !224  ; 4 uses
  %i.c = icmp sgt i32 %i.b, 31
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i32 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = zext nneg i32 %i.b to i64
  %i.g = getelementptr inbounds nuw [272 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.g, ptr noundef nonnull align 8 dereferenceable(272) %i.h, i64 272, i1 false)
  %.pre = load i32, ptr %i.a, align 8, !tbaa !224
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi i32 [ %.pre, %bb.c ], [ %i.b, %bb.b ]
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.a, align 8, !tbaa !224
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @nvgReset(ptr nofree noundef captures(none) %0) local_unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8840
  %i.b = load i32, ptr %i.a, align 8, !tbaa !224
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr [272 x i8], ptr %0, i64 %i.c ; 27 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -136
  %i.f = getelementptr i8, ptr %i.d, i64 -116
  %i.g = getelementptr i8, ptr %i.d, i64 -92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.g, i8 0, i64 196, i1 false)
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.f, align 4, !tbaa !81
  %i.h = getelementptr i8, ptr %i.d, i64 -100
  store <2 x float> zeroinitializer, ptr %i.h, align 4, !tbaa !81
  %i.i = getelementptr i8, ptr %i.d, i64 -80
  store float 1.000000e+00, ptr %i.i, align 4, !tbaa !227
  %i.j = getelementptr i8, ptr %i.d, i64 -76
  store <2 x float> splat (float 1.000000e+00), ptr %i.j, align 4
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.d, i64 -68
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !38
  %i.k = getelementptr i8, ptr %i.d, i64 -60
  store <2 x float> splat (float 1.000000e+00), ptr %i.k, align 4
  %.sroa.3.0..sroa_idx7.i = getelementptr i8, ptr %i.d, i64 -52
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.3.0..sroa_idx7.i, align 4, !tbaa !38
  %i.l = getelementptr i8, ptr %i.d, i64 -40
  %i.m = getelementptr i8, ptr %i.d, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.m, i8 0, i64 52, i1 false)
  store float 1.000000e+00, ptr %i.l, align 4, !tbaa !81
  %i.n = getelementptr i8, ptr %i.d, i64 -32
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.n, align 4, !tbaa !81
  %i.o = getelementptr i8, ptr %i.d, i64 -20
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !81
  %i.p = getelementptr i8, ptr %i.d, i64 -4
  store float 1.000000e+00, ptr %i.p, align 4, !tbaa !227
  %.sroa.3.0..sroa_idx.i23 = getelementptr i8, ptr %i.d, i64 8
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.3.0..sroa_idx.i23, align 4, !tbaa !38
  %.sroa.3.0..sroa_idx7.i24 = getelementptr i8, ptr %i.d, i64 24
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.3.0..sroa_idx7.i24, align 4, !tbaa !38
  store i64 549755813890, ptr %i.e, align 4
  %.sroa.4.0..sroa_idx = getelementptr i8, ptr %i.d, i64 -128
  store i64 549755813890, ptr %.sroa.4.0..sroa_idx, align 4
  %i.q = getelementptr i8, ptr %i.d, i64 -120
  store i32 1, ptr %i.q, align 4, !tbaa !231
  %i.r = getelementptr i8, ptr %i.d, i64 36
  store <2 x float> <float 1.000000e+00, float 1.000000e+01>, ptr %i.r, align 4, !tbaa !81
  %i.s = getelementptr i8, ptr %i.d, i64 44
  store i32 4, ptr %i.s, align 4, !tbaa !232
  %i.t = getelementptr i8, ptr %i.d, i64 52
  store <2 x float> splat (float 1.000000e+00), ptr %i.t, align 4, !tbaa !81
  %i.u = getelementptr i8, ptr %i.d, i64 64
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %i.u, align 4, !tbaa !81
  %i.v = getelementptr i8, ptr %i.d, i64 76
  store float 0.000000e+00, ptr %i.v, align 4, !tbaa !81
  %i.w = getelementptr i8, ptr %i.d, i64 104
  store <4 x float> <float -1.000000e+00, float -1.000000e+00, float 1.600000e+01, float 0.000000e+00>, ptr %i.w, align 4, !tbaa !81
  %i.x = getelementptr i8, ptr %i.d, i64 120
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %i.x, align 4, !tbaa !81
  %i.y = getelementptr i8, ptr %i.d, i64 128
  store i32 65, ptr %i.y, align 4, !tbaa !233
  %i.z = getelementptr i8, ptr %i.d, i64 132
  store i32 0, ptr %i.z, align 4, !tbaa !234
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @nvgDeleteInternal(ptr noundef captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !210  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.c) #40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8848
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !222  ; 5 uses
  %.not25 = icmp eq ptr %i.e, null
  br i1 %.not25, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !217  ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.f) #40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !219  ; 2 uses
  %.not11.i = icmp eq ptr %i.h, null
  br i1 %.not11.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.h) #40
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !221  ; 2 uses
  %.not12.i = icmp eq ptr %i.j, null
  br i1 %.not12.i, label %nvg__deletePathCache.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.j) #40
  br label %nvg__deletePathCache.exit

nvg__deletePathCache.exit:                        ; preds = %bb.i, %bb.j
  tail call void @free(ptr noundef nonnull %i.e) #40
  br label %bb.k

bb.k:                                             ; preds = %nvg__deletePathCache.exit, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8872
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !236  ; 2 uses
  %.not26 = icmp eq ptr %i.l, null
  br i1 %.not26, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @fonsDeleteInternal(ptr noundef nonnull %i.l)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8880 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.o = load i32, ptr %i.m, align 8, !tbaa !70   ; 2 uses
  %.not28 = icmp eq i32 %i.o, 0
  br i1 %.not28, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !239
  %i.q = load ptr, ptr %0, align 8, !tbaa !235
  %i.r = tail call i32 %i.p(ptr noundef %i.q, i32 noundef %i.o) #40, !inline_history !240 ; 0 uses
  store i32 0, ptr %i.m, align 8, !tbaa !70
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8884 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !70   ; 2 uses
  %.not28.1 = icmp eq i32 %i.t, 0
  br i1 %.not28.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
end_hunk_0
begin_hunk_1_@nvg__tesselateBezier:bb.a

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @nvg__addPoint(ptr noundef nonnull %0, float noundef %7, float noundef %8, i32 noundef %10)
  br label %.loopexit

tailrecurse:                                      ; preds = %bb.b
  %i.al = fadd <2 x float> %i.m, %i.n
  %i.am = fadd <2 x float> %i.n, %i.o
  %i.an = extractelement <2 x float> %i.o, i64 1
  %i.ao = fadd float %8, %i.an
  %i.ap = extractelement <2 x float> %i.o, i64 0
  %i.aq = fadd float %7, %i.ap
  %i.ar = fmul <2 x float> %i.al, splat (float 5.000000e-01) ; 3 uses
  %i.as = fmul <2 x float> %i.am, splat (float 5.000000e-01) ; 2 uses
  %i.at = fadd <2 x float> %i.ar, %i.as
  %i.au = fmul <2 x float> %i.at, splat (float 5.000000e-01) ; 3 uses
  %i.av = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.ao, i64 1
  %i.ax = fmul <2 x float> %i.aw, splat (float 5.000000e-01) ; 2 uses
  %i.ay = fadd <2 x float> %i.as, %i.ax
  %i.az = fmul <2 x float> %i.ay, splat (float 5.000000e-01) ; 2 uses
  %i.ba = fadd <2 x float> %i.au, %i.az
  %i.bb = fmul <2 x float> %i.ba, splat (float 5.000000e-01) ; 3 uses
  %i.bc = extractelement <2 x float> %i.bb, i64 1 ; 2 uses
  %i.bd = extractelement <2 x float> %i.bb, i64 0 ; 2 uses
  %i.be = add nsw i32 %.tr8290, 1                 ; 3 uses
  %i.bf = extractelement <2 x float> %i.au, i64 0
  %i.bg = extractelement <2 x float> %i.au, i64 1
  %i.bh = extractelement <2 x float> %i.ar, i64 0
  %i.bi = extractelement <2 x float> %i.ar, i64 1
  tail call fastcc void @nvg__tesselateBezier(ptr noundef nonnull %0, float noundef %.tr7484, float noundef %.tr7585, float noundef %i.bh, float noundef %i.bi, float noundef %i.bf, float noundef %i.bg, float noundef %i.bd, float noundef %i.bc, i32 noundef %i.be, i32 noundef 0)
  %exitcond = icmp eq i32 %i.be, 11
  br i1 %exitcond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @nvg__calculateJoins(ptr nofree readonly captures(none) %.8848.val, float noundef %0, i32 noundef %1, float noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = fcmp ogt float %0, 0.000000e+00
  %i.b = fdiv nnan float 1.000000e+00, %0
  %.071 = select i1 %i.a, float %i.b, float 0.000000e+00
  %i.c = getelementptr inbounds nuw i8, ptr %.8848.val, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !256  ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph7, label %._crit_edge8

.lr.ph7:                                          ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.8848.val, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !219
  %i.h = load ptr, ptr %.8848.val, align 8, !tbaa !217
  %i.i = and i32 %1, -3
  %i.j = icmp eq i32 %i.i, 1
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph7, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %i.g, i64 %indvars.iv ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !267
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !272  ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  store i32 0, ptr %i.o, align 4, !tbaa !274
  %i.p = icmp sgt i32 %i.n, 0
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.q = sext i32 %i.l to i64
  %i.r = getelementptr inbounds [32 x i8], ptr %i.h, i64 %i.q ; 2 uses
  %i.s = zext nneg i32 %i.n to i64
  %i.t = getelementptr [32 x i8], ptr %i.r, i64 %i.s ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -32
  %.phi.trans.insert = getelementptr i8, ptr %i.t, i64 -20
  %.pre = load float, ptr %.phi.trans.insert, align 4, !tbaa !280
  %.phi.trans.insert11 = getelementptr i8, ptr %i.t, i64 -24
  %.pre12 = load float, ptr %.phi.trans.insert11, align 4, !tbaa !279
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %i.v = phi i32 [ %i.bv, %bb.k ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.w = phi float [ %i.ab, %bb.k ], [ %.pre12, %.lr.ph.preheader ] ; 2 uses
  %i.x = phi float [ %i.z, %bb.k ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.04 = phi i32 [ %.1, %bb.k ], [ 0, %.lr.ph.preheader ]
  %.0693 = phi ptr [ %i.bw, %bb.k ], [ %i.r, %.lr.ph.preheader ] ; 8 uses
  %.0702 = phi ptr [ %.0693, %bb.k ], [ %i.u, %.lr.ph.preheader ]
  %.0721 = phi i32 [ %i.bx, %bb.k ], [ 0, %.lr.ph.preheader ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0693, i64 12
  %i.z = load float, ptr %i.y, align 4, !tbaa !280 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0693, i64 8
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !279 ; 3 uses
  %i.ac = fneg float %i.ab
  %i.ad = fadd float %i.x, %i.z
  %i.ae = fmul float %i.ad, 5.000000e-01          ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0693, i64 20 ; 2 uses
  store float %i.ae, ptr %i.af, align 4, !tbaa !535
  %i.ag = fsub float %i.ac, %i.w
  %i.ah = fmul float %i.ag, 5.000000e-01          ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0693, i64 24 ; 2 uses
  store float %i.ah, ptr %i.ai, align 4, !tbaa !536
  %i.aj = fmul float %i.ah, %i.ah
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.aj) ; 4 uses
  %i.al = fcmp ogt float %i.ak, f0x358637BD
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.am = fdiv float 1.000000e+00, %i.ak          ; 2 uses
  %i.an = fcmp ogt float %i.am, 6.000000e+02
  %spec.store.select = select i1 %i.an, float 6.000000e+02, float %i.am ; 2 uses
  %i.ao = fmul float %i.ae, %spec.store.select
  store float %i.ao, ptr %i.af, align 4, !tbaa !535
  %i.ap = fmul float %i.ah, %spec.store.select
  store float %i.ap, ptr %i.ai, align 4, !tbaa !536
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %.0693, i64 28 ; 4 uses
  %i.ar = load i8, ptr %i.aq, align 4, !tbaa !276
  %i.as = and i8 %i.ar, 1                         ; 2 uses
  %i.at = fneg float %i.z
  %i.au = fmul float %i.w, %i.at
  %i.av = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.x, float %i.au)
  %i.aw = fcmp ogt float %i.av, 0.000000e+00      ; 2 uses
  %i.ax = or disjoint i8 %i.as, 2
  %storemerge = select i1 %i.aw, i8 %i.ax, i8 %i.as ; 3 uses
  %i.ay = zext i1 %i.aw to i32
  %.1 = add nuw nsw i32 %.04, %i.ay               ; 2 uses
  store i8 %storemerge, ptr %i.aq, align 4, !tbaa !276
  %i.az = getelementptr inbounds nuw i8, ptr %.0702, i64 16
  %i.ba = load float, ptr %i.az, align 4, !tbaa !273 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0693, i64 16
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !273 ; 2 uses
  %i.bd = fcmp olt float %i.ba, %i.bc
  %i.be = select i1 %i.bd, float %i.ba, float %i.bc
  %i.bf = fmul float %.071, %i.be                 ; 2 uses
  %i.bg = fcmp olt float %i.bf, 1.010000e+00
  %i.bh = select i1 %i.bg, float 1.010000e+00, float %i.bf ; 2 uses
  %i.bi = fmul float %i.ak, %i.bh
  %i.bj = fmul float %i.bh, %i.bi
  %i.bk = fcmp olt float %i.bj, 1.000000e+00
  br i1 %i.bk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bl = or disjoint i8 %storemerge, 8           ; 2 uses
  store i8 %i.bl, ptr %i.aq, align 4, !tbaa !276
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bm = phi i8 [ %i.bl, %bb.e ], [ %storemerge, %bb.d ] ; 4 uses
  %i.bn = and i8 %i.bm, 1
  %.not = icmp eq i8 %i.bn, 0
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bo = fmul float %2, %i.ak
  %i.bp = fmul float %2, %i.bo
  %i.bq = fcmp olt float %i.bp, 1.000000e+00
  %or.cond3 = or i1 %i.j, %i.bq
  br i1 %or.cond3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.br = or i8 %i.bm, 4                          ; 2 uses
  store i8 %i.br, ptr %i.aq, align 4, !tbaa !276
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.bs = phi i8 [ %i.br, %bb.h ], [ %i.bm, %bb.g ], [ %i.bm, %bb.f ]
  %i.bt = and i8 %i.bs, 12
  %.not77 = icmp eq i8 %i.bt, 0
  br i1 %.not77, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = add nsw i32 %i.v, 1                     ; 2 uses
  store i32 %i.bu, ptr %i.o, align 4, !tbaa !274
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bv = phi i32 [ %i.bu, %bb.j ], [ %i.v, %bb.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0693, i64 32
  %i.bx = add nuw nsw i32 %.0721, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.bx, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !533

._crit_edge:                                      ; preds = %bb.k, %bb.b
  %.0.lcssa = phi i32 [ 0, %bb.b ], [ %.1, %bb.k ]
  %i.by = icmp eq i32 %.0.lcssa, %i.n
  %i.bz = zext i1 %i.by to i32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !275
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond10.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond10.not, label %._crit_edge8, label %bb.b, !llvm.loop !534

._crit_edge8:                                     ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @nvg__bevelJoin(ptr nofree noundef nonnull writeonly captures(ret: address, provenance) initializes((0, 36)) %0, float %.8.val, float %.12.val, ptr nofree noundef readonly captures(none) %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) unnamed_addr #9 {
bb.a:
  %i.a = fneg float %.8.val                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !81 ; 6 uses
  %i.d = extractelement <2 x float> %i.c, i64 0
  %i.e = fneg float %i.d                          ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.g = load i8, ptr %i.f, align 4, !tbaa !276   ; 3 uses
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = and i32 %i.h, 2
  %.not = icmp eq i32 %i.i, 0
  %i.j = and i32 %i.h, 8                          ; 2 uses
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.j, 0
  %i.k = load float, ptr %1, align 4, !tbaa !269  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load float, ptr %i.l, align 4, !tbaa !270 ; 2 uses
  %i.n = insertelement <2 x float> poison, float %.12.val, i64 0
  %i.o = insertelement <2 x float> %i.n, float %i.a, i64 1
  %i.p = insertelement <2 x float> poison, float %2, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.r = insertelement <2 x float> poison, float %i.k, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.m, i64 1 ; 2 uses
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.q, <2 x float> %i.s)
  %i.u = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.v = insertelement <2 x float> %i.u, float %i.e, i64 1
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.q, <2 x float> %i.s)
  br label %nvg__chooseBevel.exit

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.y = load float, ptr %i.l, align 4, !tbaa !270 ; 2 uses
  %i.z = load <2 x float>, ptr %i.x, align 4, !tbaa !81
  %i.aa = insertelement <2 x float> poison, float %2, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ac = insertelement <2 x float> poison, float %i.k, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.y, i64 1
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.ab, <2 x float> %i.ad) ; 2 uses
  br label %nvg__chooseBevel.exit

nvg__chooseBevel.exit:                            ; preds = %bb.c, %bb.d
  %i.af = phi float [ %i.y, %bb.d ], [ %i.m, %bb.c ] ; 3 uses
  %i.ag = phi <2 x float> [ %i.ae, %bb.d ], [ %i.w, %bb.c ] ; 3 uses
  %i.ah = phi <2 x float> [ %i.ae, %bb.d ], [ %i.t, %bb.c ] ; 3 uses
  store <2 x float> %i.ah, ptr %0, align 4, !tbaa !81
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %4, ptr %i.ai, align 4, !tbaa !282
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float 1.000000e+00, ptr %i.aj, align 4, !tbaa !283
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = fneg float %.12.val
  %i.am = insertelement <2 x float> poison, float %i.al, i64 0
  %i.an = insertelement <2 x float> %i.am, float %.8.val, i64 1
  %i.ao = insertelement <2 x float> poison, float %3, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.aq = insertelement <2 x float> poison, float %i.k, i64 0
  %i.ar = insertelement <2 x float> %i.aq, float %i.af, i64 1 ; 3 uses
  %i.as = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.ap, <2 x float> %i.ar) ; 4 uses
  store <2 x float> %i.as, ptr %i.ak, align 4, !tbaa !81
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %5, ptr %i.at, align 4, !tbaa !282
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 1.000000e+00, ptr %i.au, align 4, !tbaa !283
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aw = and i8 %i.g, 4
  %.not189 = icmp eq i8 %i.aw, 0
  br i1 %.not189, label %bb.f, label %bb.e

bb.e:                                             ; preds = %nvg__chooseBevel.exit
  %i.ax = extractelement <2 x float> %i.ah, i64 0
  store float %i.ax, ptr %i.av, align 4, !tbaa !278
  %i.ay = extractelement <2 x float> %i.ag, i64 0
  %i.az = extractelement <2 x float> %i.ag, i64 1
  %i.ba = extractelement <2 x float> %i.ah, i64 1
  br label %bb.g

bb.f:                                             ; preds = %nvg__chooseBevel.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.bc = load <2 x float>, ptr %i.bb, align 4, !tbaa !81
  %i.bd = fneg <2 x float> %i.bc
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.ap, <2 x float> %i.ar) ; 3 uses
  store float %i.k, ptr %i.av, align 4, !tbaa !278
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bg = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> <float poison, float 5.000000e-01, float 1.000000e+00, float poison>, <4 x i32> <i32 poison, i32 5, i32 6, i32 3>
  %i.bi = insertelement <4 x float> %i.bh, float %i.af, i64 0
  store <4 x float> %i.bi, ptr %i.bf, align 4, !tbaa !81
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bk = extractelement <2 x float> %i.as, i64 1
  store float %i.bk, ptr %i.bj, align 4, !tbaa !281
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %5, ptr %i.bl, align 4, !tbaa !282
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %i.bm, align 4, !tbaa !283
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bo = extractelement <2 x float> %i.be, i64 0
  store float %i.bo, ptr %i.bn, align 4, !tbaa !278
  %i.bp = extractelement <2 x float> %i.be, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink73 = phi i64 [ 68, %bb.f ], [ 36, %bb.e ]
  %.sink71 = phi float [ %i.bp, %bb.f ], [ %i.ba, %bb.e ]
  %.sink70 = phi i64 [ 72, %bb.f ], [ 40, %bb.e ]
  %.sink68 = phi float [ %5, %bb.f ], [ %4, %bb.e ]
  %.sink67 = phi i64 [ 76, %bb.f ], [ 44, %bb.e ]
  %.sink65 = phi i64 [ 80, %bb.f ], [ 48, %bb.e ]
  %.sink62 = phi i64 [ 84, %bb.f ], [ 52, %bb.e ]
  %.sink59 = phi i64 [ 88, %bb.f ], [ 56, %bb.e ]
  %.sink57 = phi i64 [ 92, %bb.f ], [ 60, %bb.e ]
  %.sink55 = phi i64 [ 96, %bb.f ], [ 64, %bb.e ]
  %.sink53 = phi float [ %i.k, %bb.f ], [ %i.ay, %bb.e ]
  %.sink52 = phi i64 [ 100, %bb.f ], [ 68, %bb.e ]
  %.sink50 = phi float [ %i.af, %bb.f ], [ %i.az, %bb.e ]
  %.sink49 = phi i64 [ 104, %bb.f ], [ 72, %bb.e ]
  %.sink47 = phi float [ 5.000000e-01, %bb.f ], [ %4, %bb.e ]
  %.sink46 = phi i64 [ 108, %bb.f ], [ 76, %bb.e ]
  %.sink44 = phi i64 [ 112, %bb.f ], [ 80, %bb.e ]
  %.sink40 = phi i64 [ 116, %bb.f ], [ 84, %bb.e ]
  %.sink37 = phi i64 [ 120, %bb.f ], [ 88, %bb.e ]
  %.sink35 = phi i64 [ 124, %bb.f ], [ 92, %bb.e ]
  %.sink = phi i64 [ 128, %bb.f ], [ 96, %bb.e ]
  %i.bq = phi <2 x float> [ %i.be, %bb.f ], [ %i.as, %bb.e ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %.sink73
  store float %.sink71, ptr %i.br, align 4, !tbaa !281
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %.sink70
  store float %.sink68, ptr %i.bs, align 4, !tbaa !282
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %.sink67
  store float 1.000000e+00, ptr %i.bt, align 4, !tbaa !283
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %.sink65
  %i.bv = extractelement <2 x float> %i.bq, i64 0
  store float %i.bv, ptr %i.bu, align 4, !tbaa !278
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %.sink62
  %i.bx = extractelement <2 x float> %i.bq, i64 1
  store float %i.bx, ptr %i.bw, align 4, !tbaa !281
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 %.sink59
  store float %5, ptr %i.by, align 4, !tbaa !282
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 %.sink57
  store float 1.000000e+00, ptr %i.bz, align 4, !tbaa !283
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 %.sink55
  store float %.sink53, ptr %i.ca, align 4, !tbaa !278
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 %.sink52
  store float %.sink50, ptr %i.cb, align 4, !tbaa !281
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %.sink49
  store float %.sink47, ptr %i.cc, align 4, !tbaa !282
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %.sink46
  store float 1.000000e+00, ptr %i.cd, align 4, !tbaa !283
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 %.sink44
  %i.cf = fneg <2 x float> %i.c
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> %i.c, <2 x i32> <i32 1, i32 2>
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.ap, <2 x float> %i.ar) ; 3 uses
  %i.ci = extractelement <2 x float> %i.ch, i64 0
  store float %i.ci, ptr %i.ce, align 4, !tbaa !278
  %i.cj = extractelement <2 x float> %i.ch, i64 1
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.ck = fneg float %3                           ; 3 uses
  %.not.i190 = icmp eq i32 %i.j, 0
  %i.cl = load float, ptr %1, align 4, !tbaa !269 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  br i1 %.not.i190, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !270 ; 3 uses
  %i.co = insertelement <2 x float> poison, float %.12.val, i64 0
  %i.cp = insertelement <2 x float> %i.co, float %.8.val, i64 1
  %i.cq = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %3, i64 1
  %i.cs = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.cn, i64 1
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %i.cr, <2 x float> %i.ct)
  %i.cv = insertelement <2 x float> poison, float %3, i64 0
  %i.cw = insertelement <2 x float> %i.cv, float %i.ck, i64 1
  %i.cx = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cl, i64 1
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.c, <2 x float> %i.cw, <2 x float> %i.cy)
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %nvg__chooseBevel.exit192

bb.j:                                             ; preds = %bb.h
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dc = load float, ptr %i.cm, align 4, !tbaa !270 ; 2 uses
  %i.dd = load <2 x float>, ptr %i.db, align 4, !tbaa !81
  %i.de = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.dh = insertelement <2 x float> %i.dg, float %i.dc, i64 1
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.df, <2 x float> %i.dh) ; 2 uses
  br label %nvg__chooseBevel.exit192

nvg__chooseBevel.exit192:                         ; preds = %bb.i, %bb.j
  %i.dj = phi float [ %i.dc, %bb.j ], [ %i.cn, %bb.i ] ; 3 uses
  %i.dk = phi <2 x float> [ %i.di, %bb.j ], [ %i.da, %bb.i ] ; 3 uses
  %i.dl = phi <2 x float> [ %i.di, %bb.j ], [ %i.cu, %bb.i ] ; 2 uses
end_hunk_1
