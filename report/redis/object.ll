inline.NumInlined: 99
inline.NumDeleted: 11
begin_hunk_0_@getPositiveLongFromObjectOrReply:bb.a
  %.0 = phi i32 [ 0, %bb.c ], [ -1, %bb.d ], [ -1, %getLongFromObjectOrReply.exit.i ], [ -1, %bb.g ], [ -1, %getLongFromObjectOrReply.exit.i10 ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @getIntFromObjectOrReply(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call i32 @getLongLongFromObject(ptr noundef %1, ptr noundef nonnull %i.a)
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %bb.b, label %getLongFromObjectOrReply.exit.i

getLongFromObjectOrReply.exit.i:                  ; preds = %bb.a
  %.not7.i.i.i = icmp eq ptr %3, null
  %.str.25..i.i = select i1 %.not7.i.i.i, ptr @.str.25, ptr %3
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull %.str.25..i.i) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %getRangeLongFromObjectOrReply.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.d = add i64 %i.c, -2147483648
  %or.cond.i = icmp ult i64 %i.d, -4294967296
  br i1 %or.cond.i, label %bb.c, label %getRangeLongFromObjectOrReply.exit

bb.c:                                             ; preds = %bb.b
  %.not16.i = icmp eq ptr %3, null
  br i1 %.not16.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull %3) #13
  br label %getRangeLongFromObjectOrReply.exit.thread

bb.e:                                             ; preds = %bb.c
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef %0, ptr noundef nonnull @.str.27, i64 noundef -2147483648, i64 noundef 2147483647) #13
  br label %getRangeLongFromObjectOrReply.exit.thread

getRangeLongFromObjectOrReply.exit:               ; preds = %bb.b
  %i.e = trunc nsw i64 %i.c to i32
  store i32 %i.e, ptr %2, align 4, !tbaa !9
  br label %getRangeLongFromObjectOrReply.exit.thread

getRangeLongFromObjectOrReply.exit.thread:        ; preds = %bb.e, %getLongFromObjectOrReply.exit.i, %bb.d, %getRangeLongFromObjectOrReply.exit
  %.0 = phi i32 [ 0, %getRangeLongFromObjectOrReply.exit ], [ -1, %bb.d ], [ -1, %getLongFromObjectOrReply.exit.i ], [ -1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @strEncoding(i32 noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp ult i32 %0, 13
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.objectCommand, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.39, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @kvobjComputeSize(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = trunc i64 %i.a to i32
  %i.c = and i32 %i.b, 15
  switch i32 %i.c, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.b
    i32 2, label %bb.b
    i32 3, label %bb.b
    i32 4, label %bb.b
    i32 6, label %bb.b
    i32 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.d = tail call i64 @kvobjAllocSize(ptr noundef nonnull %1)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @je_malloc_usable_size(ptr noundef nonnull %1) #13
  %i.f = tail call i64 @moduleGetMemUsage(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3) #13
  %i.g = add i64 %i.f, %i.e
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1236, ptr noundef nonnull @.str.13) #13
  tail call void @abort() #14
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @kvobjAllocSize(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = lshr i64 %i.a, 32
  %i.c = trunc nuw i64 %i.b to i32
  %i.d = and i32 %i.c, 255
  %i.e = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.d)
  %i.f = shl nuw nsw i32 %i.e, 3
  %i.g = zext nneg i32 %i.f to i64
  %i.h = sub nsw i64 0, %i.g
  %i.i = getelementptr inbounds i8, ptr %0, i64 %i.h
  %i.j = tail call i64 @je_malloc_usable_size(ptr noundef nonnull %i.i) #13 ; 7 uses
  %i.k = load i64, ptr %0, align 8
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.l, 15
  switch i32 %i.m, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 6, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i64 @stringObjectAllocSize(ptr noundef nonnull %0)
  %i.o = add i64 %i.n, %i.j
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.p = tail call i64 @listTypeAllocSize(ptr noundef nonnull %0) #13
  %i.q = add i64 %i.p, %i.j
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.r = tail call i64 @setTypeAllocSize(ptr noundef nonnull %0) #13
  %i.s = add i64 %i.r, %i.j
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.t = tail call i64 @zsetAllocSize(ptr noundef nonnull %0) #13
  %i.u = add i64 %i.t, %i.j
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.v = tail call i64 @hashTypeAllocSize(ptr noundef nonnull %0) #13
  %i.w = add i64 %i.v, %i.j
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !123
  %i.ab = add i64 %i.aa, %i.j
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.c, %bb.e, %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i64 [ %i.o, %bb.b ], [ %i.q, %bb.c ], [ %i.s, %bb.d ], [ %i.u, %bb.e ], [ %i.w, %bb.f ], [ %i.ab, %bb.g ], [ %i.j, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind
declare i64 @je_malloc_usable_size(ptr noundef) local_unnamed_addr #10

declare i64 @moduleGetMemUsage(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @listTypeAllocSize(ptr noundef) local_unnamed_addr #2

declare i64 @setTypeAllocSize(ptr noundef) local_unnamed_addr #2

declare i64 @zsetAllocSize(ptr noundef) local_unnamed_addr #2

declare i64 @hashTypeAllocSize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @freeMemoryOverheadData(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124
  tail call void @zfree(ptr noundef %i.b) #13
  tail call void @zfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @getMemoryOverheadData() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @zmalloc_used_memory() #13 ; 5 uses
  %i.b = tail call noalias dereferenceable_or_null(256) ptr @zcalloc(i64 noundef 256) #15 ; 37 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.a, ptr %i.c, align 8, !tbaa !127
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 208), align 8, !tbaa !128 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %i.e, align 8, !tbaa !129
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2720), align 8, !tbaa !130
  store i64 %i.f, ptr %i.b, align 8, !tbaa !131
  %0 = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %1 = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %2 = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2904), align 8, !tbaa !132
  %3 = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2936), align 8, !tbaa !133
  %4 = sub i64 %2, %3                             ; 2 uses
  %5 = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2872), align 8, !tbaa !134
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2912), align 8, !tbaa !135
  %6 = sub i64 %5, %i.g
  %7 = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2864), align 8, !tbaa !136 ; 3 uses
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2856), align 8, !tbaa !137 ; 2 uses
  %8 = uitofp i64 %4 to float
  %i.i = uitofp i64 %6 to float
  %9 = uitofp i64 %i.h to float
  %10 = insertelement <2 x float> poison, float %9, i64 0
  %11 = insertelement <2 x float> %10, float %i.i, i64 1
  %i.j = sub i64 %7, %i.h
  store i64 %i.j, ptr %1, align 8, !tbaa !138
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %12 = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %4, ptr %12, align 8, !tbaa !139
  %13 = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %14 = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2888), align 8, !tbaa !140 ; 3 uses
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2880), align 8, !tbaa !141 ; 2 uses
  %15 = uitofp i64 %7 to float                    ; 2 uses
  %16 = insertelement <2 x float> poison, float %15, i64 0
  %17 = insertelement <2 x float> %16, float %8, i64 1
  %18 = fdiv <2 x float> %17, %11                 ; 2 uses
  %19 = extractelement <2 x float> %18, i64 0
  store float %19, ptr %0, align 8, !tbaa !142
  %20 = extractelement <2 x float> %18, i64 1
  %21 = fadd float %20, 1.000000e+00
  store float %21, ptr %i.k, align 8, !tbaa !143
  %22 = uitofp i64 %i.l to float                  ; 2 uses
  %i.n = uitofp i64 %i.m to float
  %23 = insertelement <2 x float> poison, float %22, i64 0
  %24 = insertelement <2 x float> %23, float %15, i64 1
  %25 = insertelement <2 x float> poison, float %i.n, i64 0
  %26 = insertelement <2 x float> %25, float %22, i64 1
  %27 = fdiv <2 x float> %24, %26                 ; 2 uses
  %28 = extractelement <2 x float> %27, i64 0
  store float %28, ptr %13, align 8, !tbaa !144
  %29 = sub i64 %i.l, %i.m
  store i64 %29, ptr %14, align 8, !tbaa !145
  %30 = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %31 = extractelement <2 x float> %27, i64 1
  store float %31, ptr %30, align 8, !tbaa !146
  %i.o = sub i64 %7, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store i64 %i.o, ptr %i.p, align 8, !tbaa !147
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1480), align 8, !tbaa !148
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !149
  %.not = icmp eq i64 %i.s, 0
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7400), align 8, !tbaa !151 ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7280), align 8, !tbaa !152 ; 3 uses
  %i.u = icmp sgt i64 %.pre, %i.t
  %i.v = sub i64 %.pre, %i.t
  %spec.select = select i1 %i.u, i64 %i.v, i64 0
  %spec.select136 = tail call i64 @llvm.smin.i64(i64 %.pre, i64 %i.t)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink = phi i64 [ 0, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %.pre.sink = phi i64 [ %.pre, %bb.a ], [ %spec.select136, %bb.b ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sink, ptr %i.w, align 8, !tbaa !153
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.pre.sink, ptr %i.x, align 8, !tbaa !154
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7272), align 8, !tbaa !155 ; 2 uses
  %.not124 = icmp eq ptr %i.y, null
  br i1 %.not124, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !156 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !18
  %i.ad = shl i64 %i.ac, 2
  %i.ae = tail call i64 @raxSize(ptr noundef %i.aa) #13
  %i.af = shl i64 %i.ae, 3
  %i.ag = add i64 %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !154
  %i.aj = add i64 %i.ag, %i.ai                    ; 2 uses
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !154
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.pre131 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !153
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ak = phi i64 [ %.pre131, %bb.d ], [ %.sink, %bb.c ]
  %i.al = phi i64 [ %i.aj, %bb.d ], [ %.pre.sink, %bb.c ]
  %i.am = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7304), align 8, !tbaa !158 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.am, ptr %i.an, align 8, !tbaa !159
  %i.ao = add i64 %i.am, %i.d
  %i.ap = add i64 %i.ao, %i.al
  %i.aq = add i64 %i.ap, %i.ak
  %i.ar = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3072), align 8, !tbaa !18
  %i.as = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3064), align 8, !tbaa !18
  %i.at = add i64 %i.as, %i.ar
  %i.au = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3048), align 8, !tbaa !18
  %i.av = add i64 %i.at, %i.au                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !160
  %i.ax = add i64 %i.aq, %i.av
  %i.ay = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !161 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !162
  %i.ba = add i64 %i.ax, %i.ay
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6668), align 4, !tbaa !163
  %.not125 = icmp eq i32 %i.bb, 0
  br i1 %.not125, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6752), align 8, !tbaa !164
  %i.bd = tail call i64 @sdsZmallocSize(ptr noundef %i.bc) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0117 = phi i64 [ %i.bd, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.0117, ptr %i.be, align 8, !tbaa !165
  %i.bf = add i64 %i.ba, %.0117
  %i.bg = tail call i64 @evalScriptsMemoryEngine() #13 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !166
  %i.bi = add i64 %i.bf, %i.bg
  %i.bj = tail call i64 @functionsMemoryEngine() #13 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !167
  %i.bl = add i64 %i.bi, %i.bj
  %i.bm = tail call i64 @evalScriptsMemoryVM() #13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.bo = tail call i64 @functionsMemoryVM() #13
  %i.bp = add i64 %i.bm, %i.bo                    ; 2 uses
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !168
  %i.bq = add i64 %i.bl, %i.bp
  %i.br = tail call i64 @asmGetImportInputBufferSize() #13 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !169
  %i.bt = tail call i64 @asmGetMigrateOutputBufferSize() #13 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !170
  %i.bv = add i64 %i.bq, %i.bt
  %i.bw = add i64 %i.bv, %i.br                    ; 2 uses
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !171
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %.0116128 = phi i64 [ %i.bw, %.lr.ph ], [ %.1, %bb.j ] ; 2 uses
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !172
  %i.cg = getelementptr inbounds nuw [96 x i8], ptr %i.cf, i64 %indvars.iv ; 7 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !173
  %i.ci = tail call i32 @kvstoreNumAllocatedDicts(ptr noundef %i.ch) #13
  %.not127 = icmp eq i32 %i.ci, 0
  br i1 %.not127, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !173
  %i.ck = tail call i64 @kvstoreSize(ptr noundef %i.cj) #13 ; 2 uses
  %i.cl = load i64, ptr %i.bz, align 8, !tbaa !176
  %i.cm = add i64 %i.cl, %i.ck
  store i64 %i.cm, ptr %i.bz, align 8, !tbaa !176
  %i.cn = load ptr, ptr %i.ca, align 8, !tbaa !124
  %i.co = load i64, ptr %i.cb, align 8, !tbaa !177 ; 2 uses
  %i.cp = mul i64 %i.co, 24
  %i.cq = add i64 %i.cp, 24
  %i.cr = tail call ptr @zrealloc(ptr noundef %i.cn, i64 noundef %i.cq) #17 ; 2 uses
  store ptr %i.cr, ptr %i.ca, align 8, !tbaa !124
  %i.cs = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %i.co
  store i64 %indvars.iv, ptr %i.cs, align 8, !tbaa !178
  %i.ct = load ptr, ptr %i.cg, align 8, !tbaa !173
  %i.cu = tail call i64 @kvstoreMemUsage(ptr noundef %i.ct) #13
  %i.cv = shl i64 %i.ck, 4
  %i.cw = add i64 %i.cu, %i.cv                    ; 2 uses
  %i.cx = load ptr, ptr %i.ca, align 8, !tbaa !124
  %i.cy = load i64, ptr %i.cb, align 8, !tbaa !177
  %i.cz = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i64 %i.cw, ptr %i.da, align 8, !tbaa !180
  %i.db = add i64 %i.cw, %.0116128
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 4 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !181
  %i.de = tail call i64 @kvstoreMemUsage(ptr noundef %i.dd) #13 ; 2 uses
  %i.df = load ptr, ptr %i.ca, align 8, !tbaa !124
  %i.dg = load i64, ptr %i.cb, align 8, !tbaa !177 ; 2 uses
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i64 %i.de, ptr %i.di, align 8, !tbaa !182
  %i.dj = add i64 %i.db, %i.de
  %i.dk = add i64 %i.dg, 1
  store i64 %i.dk, ptr %i.cb, align 8, !tbaa !177
  %i.dl = load ptr, ptr %i.cg, align 8, !tbaa !173
  %i.dm = tail call i64 @kvstoreOverheadHashtableLut(ptr noundef %i.dl) #13
  %i.dn = load i64, ptr %i.cc, align 8, !tbaa !183
  %i.do = add i64 %i.dn, %i.dm
  %i.dp = load ptr, ptr %i.dc, align 8, !tbaa !181
  %i.dq = tail call i64 @kvstoreOverheadHashtableLut(ptr noundef %i.dp) #13
  %i.dr = add i64 %i.do, %i.dq
  store i64 %i.dr, ptr %i.cc, align 8, !tbaa !183
  %i.ds = load ptr, ptr %i.cg, align 8, !tbaa !173
  %i.dt = tail call i64 @kvstoreOverheadHashtableRehashing(ptr noundef %i.ds) #13
  %i.du = load i64, ptr %i.cd, align 8, !tbaa !184
  %i.dv = add i64 %i.du, %i.dt
  %i.dw = load ptr, ptr %i.dc, align 8, !tbaa !181
  %i.dx = tail call i64 @kvstoreOverheadHashtableRehashing(ptr noundef %i.dw) #13
  %i.dy = add i64 %i.dv, %i.dx
  store i64 %i.dy, ptr %i.cd, align 8, !tbaa !184
  %i.dz = load ptr, ptr %i.cg, align 8, !tbaa !173
  %i.ea = tail call i64 @kvstoreDictRehashingCount(ptr noundef %i.dz) #13
  %i.eb = load i64, ptr %i.ce, align 8, !tbaa !185
  %i.ec = add i64 %i.eb, %i.ea
  %i.ed = load ptr, ptr %i.dc, align 8, !tbaa !181
  %i.ee = tail call i64 @kvstoreDictRehashingCount(ptr noundef %i.ed) #13
  %i.ef = add i64 %i.ec, %i.ee
  store i64 %i.ef, ptr %i.ce, align 8, !tbaa !185
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.1 = phi i64 [ %i.dj, %bb.i ], [ %.0116128, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eg = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !171
  %i.eh = sext i32 %i.eg to i64
  %i.ei = icmp slt i64 %indvars.iv.next, %i.eh
  br i1 %i.ei, label %bb.h, label %._crit_edge, !llvm.loop !186

._crit_edge:                                      ; preds = %bb.j, %bb.g
  %.0116.lcssa = phi i64 [ %i.bw, %bb.g ], [ %.1, %bb.j ]
  %i.ej = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !187
  %i.ek = tail call i64 @hotkeysGetMemoryUsage(ptr noundef %i.ej) #13
  %i.el = add i64 %i.ek, %.0116.lcssa             ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i64 %i.el, ptr %i.em, align 8, !tbaa !188
  %i.en = sub i64 %i.a, %i.el                     ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !189
  %i.ep = load i64, ptr %i.b, align 8, !tbaa !131
  %i.eq = uitofp i64 %i.ep to float
  %i.er = load i64, ptr %i.e, align 8, !tbaa !129 ; 2 uses
  %i.es = icmp ugt i64 %i.a, %i.er
  %i.et = sub nuw i64 %i.a, %i.er
  %i.eu = uitofp i64 %i.et to float
  %.0 = select i1 %i.es, float %i.eu, float 1.000000e+00
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ew = uitofp i64 %i.a to float
  %i.ex = uitofp i64 %i.en to float
  %i.ey = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.ez = insertelement <2 x float> %i.ey, float %i.ew, i64 1
  %i.fa = fmul nnan <2 x float> %i.ez, splat (float 1.000000e+02)
  %i.fb = insertelement <2 x float> poison, float %.0, i64 0
  %i.fc = insertelement <2 x float> %i.fb, float %i.eq, i64 1
  %i.fd = fdiv <2 x float> %i.fa, %i.fc
  store <2 x float> %i.fd, ptr %i.ev, align 8, !tbaa !190
  %i.fe = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !176 ; 2 uses
  %.not126 = icmp eq i64 %i.ff, 0
  br i1 %.not126, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.fg = udiv i64 %i.en, %i.ff
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k
  %i.fh = phi i64 [ %i.fg, %bb.k ], [ 0, %._crit_edge ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i64 %i.fh, ptr %i.fi, align 8, !tbaa !191
  ret ptr %i.b
}

declare i64 @zmalloc_used_memory() local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @zcalloc(i64 noundef) local_unnamed_addr #5

declare i64 @sdsZmallocSize(ptr noundef) local_unnamed_addr #2

declare i64 @evalScriptsMemoryEngine() local_unnamed_addr #2

declare i64 @functionsMemoryEngine() local_unnamed_addr #2

declare i64 @evalScriptsMemoryVM() local_unnamed_addr #2

declare i64 @functionsMemoryVM() local_unnamed_addr #2

declare i64 @asmGetImportInputBufferSize() local_unnamed_addr #2

declare i64 @asmGetMigrateOutputBufferSize() local_unnamed_addr #2

declare i32 @kvstoreNumAllocatedDicts(ptr noundef) local_unnamed_addr #2

declare i64 @kvstoreSize(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(1)
declare ptr @zrealloc(ptr noundef, i64 noundef) local_unnamed_addr #11

declare i64 @kvstoreMemUsage(ptr noundef) local_unnamed_addr #2

declare i64 @kvstoreOverheadHashtableLut(ptr noundef) local_unnamed_addr #2

declare i64 @kvstoreOverheadHashtableRehashing(ptr noundef) local_unnamed_addr #2

declare i64 @kvstoreDictRehashingCount(ptr noundef) local_unnamed_addr #2

declare i64 @hotkeysGetMemoryUsage(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @inputCatSds(ptr nofree noundef captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !192
  %i.b = tail call ptr @sdscat(ptr noundef %i.a, ptr noundef %1) #13
  store ptr %i.b, ptr %0, align 8, !tbaa !192
  ret void
}

declare ptr @sdscat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @getMemoryDoctorReport() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @getMemoryOverheadData()   ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !127  ; 2 uses
  %i.d = icmp ult i64 %i.c, 5242880
  br i1 %i.d, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !131
  %i.f = uitofp i64 %i.e to float
  %i.g = uitofp i64 %i.c to float
  %i.h = fdiv float %i.f, %i.g
  %i.i = fcmp ogt float %i.h, 1.500000e+00        ; 3 uses
  %.046 = zext i1 %i.i to i32                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.k = load float, ptr %i.j, align 8, !tbaa !142
  %i.l = fpext float %i.k to double
  %i.m = fcmp ogt double %i.l, 1.400000e+00
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.o = load i64, ptr %i.n, align 8, !tbaa !138
  %i.p = icmp slt i64 %i.o, 10485761              ; 2 uses
  %i.q = select i1 %i.i, i32 2, i32 1
  %spec.select = select i1 %i.p, i32 %.046, i32 %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.151 = phi i32 [ %.046, %bb.b ], [ %spec.select, %bb.c ] ; 2 uses
  %i.r = phi i1 [ true, %bb.b ], [ %i.p, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.t = load float, ptr %i.s, align 8, !tbaa !143
  %i.u = fpext float %i.t to double
  %i.v = fcmp ogt double %i.u, 1.100000e+00
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.x = load i64, ptr %i.w, align 8, !tbaa !139
  %i.y = icmp slt i64 %i.x, 10485761              ; 2 uses
  %not. = xor i1 %i.y, true
  %i.z = zext i1 %not. to i32
  %spec.select74 = add nuw nsw i32 %.151, %i.z
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = phi i1 [ true, %bb.d ], [ %i.y, %bb.e ]
  %.252 = phi i32 [ %.151, %bb.d ], [ %spec.select74, %bb.e ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !144
  %i.ad = fpext float %i.ac to double
  %i.ae = fcmp ogt double %i.ad, 1.100000e+00
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !145
  %i.ah = icmp slt i64 %i.ag, 10485761            ; 2 uses
  %not.110 = xor i1 %i.ah, true
  %i.ai = zext i1 %not.110 to i32
  %spec.select76 = add nuw nsw i32 %.252, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = phi i1 [ true, %bb.f ], [ %i.ah, %bb.g ]
  %.353 = phi i32 [ %.252, %bb.f ], [ %spec.select76, %bb.g ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.al = load float, ptr %i.ak, align 8, !tbaa !146
  %i.am = fpext float %i.al to double
  %i.an = fcmp ogt double %i.am, 1.100000e+00
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !147
  %i.aq = icmp ult i64 %i.ap, 10485761            ; 2 uses
  %not.112 = xor i1 %i.aq, true
  %i.ar = zext i1 %not.112 to i32
  %spec.select78 = add nuw nsw i32 %.353, %i.ar
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.as = phi i1 [ true, %bb.h ], [ %i.aq, %bb.i ]
  %.454 = phi i32 [ %.353, %bb.h ], [ %spec.select78, %bb.i ]
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1480), align 8, !tbaa !148
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load i64, ptr %i.au, align 8, !tbaa !149 ; 2 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1440), align 8, !tbaa !193
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !149
  %i.az = sub i64 %i.ay, %i.av
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !160
  %i.bc = udiv i64 %i.bb, %i.az
  %i.bd = icmp ugt i64 %i.bc, 204800              ; 2 uses
  %i.be = zext i1 %i.bd to i32
  %spec.select79 = add nuw nsw i32 %.454, %i.be   ; 2 uses
  %i.bf = icmp sgt i64 %i.av, 0
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !153
  %i.bi = icmp ult i64 %i.bh, 10485761            ; 2 uses
  %not.115 = xor i1 %i.bi, true
  %i.bj = zext i1 %not.115 to i32
  %spec.select81 = add nuw nsw i32 %spec.select79, %i.bj
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bk = phi i1 [ true, %bb.j ], [ %i.bi, %bb.k ]
  %.656 = phi i32 [ %spec.select79, %bb.j ], [ %spec.select81, %bb.k ]
  %i.bl = tail call ptr @evalScriptsDict() #13
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !18
  %i.bo = tail call ptr @evalScriptsDict() #13
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !18
  %i.br = add i64 %i.bq, %i.bn
  %i.bs = icmp ult i64 %i.br, 1001                ; 2 uses
  %i.bt = icmp eq i32 %.656, 0
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %i.bu, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bv = tail call ptr @sdsnew(ptr noundef nonnull @.str.40) #13
  br label %bb.af

bb.n:                                             ; preds = %bb.a
  %i.bw = tail call ptr @sdsnew(ptr noundef nonnull @.str.41) #13
  br label %bb.af

bb.o:                                             ; preds = %bb.l
  %i.bx = tail call ptr @sdsnew(ptr noundef nonnull @.str.42) #13 ; 2 uses
  br i1 %i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.by = tail call ptr @sdscat(ptr noundef %i.bx, ptr noundef nonnull @.str.43) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0 = phi ptr [ %i.by, %bb.p ], [ %i.bx, %bb.o ] ; 2 uses
  br i1 %i.r, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.0, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1 = phi ptr [ %i.bz, %bb.r ], [ %.0, %bb.q ]  ; 2 uses
  br i1 %i.aa, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.1, ptr noundef nonnull @.str.46) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2 = phi ptr [ %i.ca, %bb.t ], [ %.1, %bb.s ]  ; 2 uses
  br i1 %i.aj, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.2, ptr noundef nonnull @.str.47) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.3 = phi ptr [ %i.cb, %bb.v ], [ %.2, %bb.u ]  ; 2 uses
  br i1 %i.as, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.3, ptr noundef nonnull @.str.48) #13
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.4 = phi ptr [ %i.cc, %bb.x ], [ %.3, %bb.w ]  ; 2 uses
  br i1 %i.bk, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = tail call ptr @sdscat(ptr noundef %.4, ptr noundef nonnull @.str.49) #13
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.5 = phi ptr [ %i.cd, %bb.z ], [ %.4, %bb.y ]  ; 2 uses
  br i1 %i.bd, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ce = tail call ptr @sdscat(ptr noundef %.5, ptr noundef nonnull @.str.50) #13
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.6 = phi ptr [ %i.ce, %bb.ab ], [ %.5, %bb.aa ] ; 2 uses
  br i1 %i.bs, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cf = tail call ptr @sdscat(ptr noundef %.6, ptr noundef nonnull @.str.51) #13
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.7 = phi ptr [ %i.cf, %bb.ad ], [ %.6, %bb.ac ]
  %i.cg = tail call ptr @sdscat(ptr noundef %.7, ptr noundef nonnull @.str.52) #13
  br label %bb.af

bb.af:                                            ; preds = %bb.n, %bb.ae, %bb.m
  %.8 = phi ptr [ %i.bv, %bb.m ], [ %i.bw, %bb.n ], [ %i.cg, %bb.ae ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !124
  tail call void @zfree(ptr noundef %i.ci) #13
  tail call void @zfree(ptr noundef nonnull %i.a) #13
  ret ptr %.8
}

declare ptr @evalScriptsDict() local_unnamed_addr #2

declare ptr @sdsnew(ptr noundef) local_unnamed_addr #2

declare ptr @sdscatprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @objectSetLRUOrLFU(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7768), align 8, !tbaa !23
  %i.b = and i32 %i.a, 2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i64 %1, -1
  br i1 %i.c, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.d = icmp samesign ult i64 %1, 256
  br i1 %i.d, label %bb.e, label %bb.d, !prof !13

bb.d:                                             ; preds = %bb.c
  tail call void @_serverAssert(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.1, i32 noundef 1542) #13
  tail call void @abort() #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i64 @LFUGetTimeInMinutes() #13
end_hunk_0
begin_hunk_1_@memoryCommand:bb.a
  br label %bb.aq

bb.h:                                             ; preds = %bb.g
  %i.af = load i64, ptr %i.a, align 8, !tbaa !104 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !198
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.ah) #13
  br label %bb.aq

bb.j:                                             ; preds = %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ai = load i32, ptr %i.p, align 8, !tbaa !195 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %.not163 = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %.not163, label %.lr.ph183, label %..critedge_crit_edge, !llvm.loop !199

bb.k:                                             ; preds = %bb.f, %.lr.ph183
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 216), align 8, !tbaa !198
  call void @addReplyErrorObject(ptr noundef nonnull %0, ptr noundef %i.ak) #13
  br label %bb.aq

..critedge_crit_edge:                             ; preds = %bb.j
  %i.al = icmp eq i64 %i.af, 0
  %spec.select.le = select i1 %i.al, i64 9223372036854775807, i64 %i.af
  %.pre189 = load ptr, ptr %i.e, align 8, !tbaa !196
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %.preheader
  %i.am = phi ptr [ %.pre189, %..critedge_crit_edge ], [ %i.f, %.preheader ]
  %.0174.lcssa = phi i64 [ %spec.select.le, %..critedge_crit_edge ], [ 5, %.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !194
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !65
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !20
  %i.at = call ptr @dbFind(ptr noundef %i.ao, ptr noundef %i.as) #13 ; 5 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.critedge
  call void @addReplyNull(ptr noundef nonnull %0) #13
  br label %bb.aq

bb.m:                                             ; preds = %.critedge
  %i.av = load i64, ptr %i.at, align 8
  %i.aw = trunc i64 %i.av to i32
  %i.ax = and i32 %i.aw, 15
  switch i32 %i.ax, label %bb.p [
    i32 0, label %bb.n
    i32 1, label %bb.n
    i32 2, label %bb.n
    i32 3, label %bb.n
    i32 4, label %bb.n
    i32 6, label %bb.n
    i32 5, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.ay = call i64 @kvobjAllocSize(ptr noundef nonnull %i.at)
  br label %kvobjComputeSize.exit

bb.o:                                             ; preds = %bb.m
  %i.az = load ptr, ptr %i.an, align 8, !tbaa !194
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 72
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !200
  %i.bc = load ptr, ptr %i.e, align 8, !tbaa !196
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !65
  %i.bf = call i64 @je_malloc_usable_size(ptr noundef nonnull %i.at) #13
  %i.bg = call i64 @moduleGetMemUsage(ptr noundef %i.be, ptr noundef nonnull %i.at, i64 noundef %.0174.lcssa, i32 noundef %i.bb) #13
  %i.bh = add i64 %i.bg, %i.bf
  br label %kvobjComputeSize.exit

bb.p:                                             ; preds = %bb.m
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 1236, ptr noundef nonnull @.str.13) #13
  call void @abort() #14
  unreachable

kvobjComputeSize.exit:                            ; preds = %bb.n, %bb.o
  %.0.i168 = phi i64 [ %i.ay, %bb.n ], [ %i.bh, %bb.o ]
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.0.i168) #13
  br label %bb.aq

bb.q:                                             ; preds = %bb.e, %bb.d
  %i.bi = tail call i32 @strcasecmp(ptr noundef %i.j, ptr noundef nonnull @.str.86) #16
  %.not164 = icmp eq i32 %i.bi, 0
  br i1 %.not164, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !195
  %i.bl = icmp eq i32 %i.bk, 2
  br i1 %i.bl, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bm = tail call ptr @getMemoryOverheadData()  ; 33 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 200
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !177 ; 3 uses
  %i.bp = add i64 %i.bo, 33
  tail call void @addReplyMapLen(ptr noundef nonnull %0, i64 noundef %i.bp) #13
  tail call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.87) #13
  %i.bq = load i64, ptr %i.bm, align 8, !tbaa !131
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.bq) #13
  tail call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.88) #13
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !127
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.bs) #13
  tail call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.89) #13
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !129
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.bu) #13
  tail call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.90) #13
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !154
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.bw) #13
  tail call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.91) #13
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !159
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.by) #13
  tail call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.92) #13
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !153
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.ca) #13
  tail call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.93) #13
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !160
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.cc) #13
  tail call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.94) #13
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !162
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.ce) #13
  tail call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.95) #13
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bm, i64 64
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !165
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.cg) #13
  tail call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.96) #13
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !166
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.ci) #13
  tail call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.97) #13
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bm, i64 80
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !167
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.ck) #13
  tail call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.98) #13
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bm, i64 88
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !168
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.cm) #13
  %.not186 = icmp eq i64 %i.bo, 0
  br i1 %.not186, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bm, i64 248
  %.pre = load ptr, ptr %i.cn, align 8, !tbaa !124
  br label %bb.t

._crit_edge:                                      ; preds = %bb.t, %bb.s
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.102) #13
  %i.co = getelementptr inbounds nuw i8, ptr %i.bm, i64 208
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !183
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.cp) #13
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.103) #13
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bm, i64 216
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !184
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.cr) #13
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.104) #13
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bm, i64 96
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !188
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.ct) #13
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.105) #13
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bm, i64 224
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !185
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.cv) #13
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.106) #13
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bm, i64 112
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !176
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.cx) #13
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.107) #13
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bm, i64 120
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !191
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.cz) #13
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.108) #13
  %i.da = getelementptr inbounds nuw i8, ptr %i.bm, i64 104
  %i.db = load i64, ptr %i.da, align 8, !tbaa !189
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.db) #13
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.109) #13
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bm, i64 128
  %i.dd = load float, ptr %i.dc, align 8, !tbaa !201
  %i.de = fpext float %i.dd to double
  call void @addReplyDouble(ptr noundef nonnull %0, double noundef %i.de) #13
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.110) #13
  %i.df = getelementptr inbounds nuw i8, ptr %i.bm, i64 132
  %i.dg = load float, ptr %i.df, align 4, !tbaa !202
  %i.dh = fpext float %i.dg to double
  call void @addReplyDouble(ptr noundef nonnull %0, double noundef %i.dh) #13
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.111) #13
  %i.di = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2872), align 8, !tbaa !134
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.di) #13
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.112) #13
  %i.dj = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2880), align 8, !tbaa !141
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.dj) #13
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.113) #13
  %i.dk = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2888), align 8, !tbaa !140
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.dk) #13
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.114) #13
  %i.dl = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2896), align 8, !tbaa !203
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.dl) #13
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.115) #13
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bm, i64 152
  %i.dn = load float, ptr %i.dm, align 8, !tbaa !143
  %i.do = fpext float %i.dn to double
  call void @addReplyDouble(ptr noundef nonnull %0, double noundef %i.do) #13
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.116) #13
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bm, i64 160
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !139
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.dq) #13
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.117) #13
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bm, i64 168
  %i.ds = load float, ptr %i.dr, align 8, !tbaa !144
  %i.dt = fpext float %i.ds to double
  call void @addReplyDouble(ptr noundef nonnull %0, double noundef %i.dt) #13
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.118) #13
  %i.du = getelementptr inbounds nuw i8, ptr %i.bm, i64 176
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !145
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.dv) #13
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.119) #13
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bm, i64 184
  %i.dx = load float, ptr %i.dw, align 8, !tbaa !146
  %i.dy = fpext float %i.dx to double
  call void @addReplyDouble(ptr noundef nonnull %0, double noundef %i.dy) #13
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.120) #13
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bm, i64 192
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !147
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.ea) #13
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.121) #13
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bm, i64 136
  %i.ec = load float, ptr %i.eb, align 8, !tbaa !142
  %i.ed = fpext float %i.ec to double
  call void @addReplyDouble(ptr noundef nonnull %0, double noundef %i.ed) #13
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.122) #13
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bm, i64 144
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !138
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.ef) #13
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bm, i64 248
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !124
  call void @zfree(ptr noundef %i.eh) #13
  call void @zfree(ptr noundef nonnull %i.bm) #13
  br label %bb.aq

bb.t:                                             ; preds = %.lr.ph, %bb.t
  %.0155180 = phi i64 [ 0, %.lr.ph ], [ %i.ep, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %.0155180 ; 3 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !178
  %i.ek = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 32, ptr noundef nonnull @.str.99, i64 noundef %i.ej) #13 ; 0 uses
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #13
  call void @addReplyMapLen(ptr noundef nonnull %0, i64 noundef 2) #13
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.100) #13
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !180
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.em) #13
  call void @addReplyBulkCString(ptr noundef nonnull %0, ptr noundef nonnull @.str.101) #13
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !182
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.eo) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.ep = add nuw i64 %.0155180, 1                ; 2 uses
  %i.eq = icmp ult i64 %i.ep, %i.bo
  br i1 %i.eq, label %bb.t, label %._crit_edge, !llvm.loop !204

bb.u:                                             ; preds = %bb.r, %bb.q
  %i.er = tail call i32 @strcasecmp(ptr noundef %i.j, ptr noundef nonnull @.str.123) #16
  %.not165 = icmp eq i32 %i.er, 0
  br i1 %.not165, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.et = load i32, ptr %i.es, align 8, !tbaa !195
  %i.eu = icmp eq i32 %i.et, 2
  br i1 %i.eu, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.ev = tail call ptr @sdsempty() #13
  store ptr %i.ev, ptr %i.d, align 8, !tbaa !192
  call void @je_malloc_stats_print(ptr noundef nonnull @inputCatSds, ptr noundef nonnull %i.d, ptr noundef null) #13
  %i.ew = load ptr, ptr %i.d, align 8, !tbaa !192 ; 6 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 -1
  %.val.i = load i8, ptr %i.ex, align 1, !tbaa !15 ; 2 uses
  %i.ey = and i8 %.val.i, 7
  switch i8 %i.ey, label %sdslen.exit [
    i8 0, label %bb.x
    i8 1, label %bb.y
    i8 2, label %bb.z
    i8 3, label %bb.aa
    i8 4, label %bb.ab
  ]

bb.x:                                             ; preds = %bb.w
  %i.ez = lshr i8 %.val.i, 3
  %i.fa = zext nneg i8 %i.ez to i64
  br label %sdslen.exit

bb.y:                                             ; preds = %bb.w
  %i.fb = getelementptr inbounds i8, ptr %i.ew, i64 -3
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !15
  %i.fd = zext i8 %i.fc to i64
  br label %sdslen.exit

bb.z:                                             ; preds = %bb.w
  %i.fe = getelementptr inbounds i8, ptr %i.ew, i64 -5
  %i.ff = load i16, ptr %i.fe, align 1, !tbaa !16
  %i.fg = zext i16 %i.ff to i64
  br label %sdslen.exit

bb.aa:                                            ; preds = %bb.w
  %i.fh = getelementptr inbounds i8, ptr %i.ew, i64 -9
  %i.fi = load i32, ptr %i.fh, align 1, !tbaa !9
  %i.fj = zext i32 %i.fi to i64
  br label %sdslen.exit

bb.ab:                                            ; preds = %bb.w
  %i.fk = getelementptr inbounds i8, ptr %i.ew, i64 -17
  %i.fl = load i64, ptr %i.fk, align 1, !tbaa !18
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab
  %.0.i169 = phi i64 [ %i.fl, %bb.ab ], [ %i.fa, %bb.x ], [ %i.fd, %bb.y ], [ %i.fg, %bb.z ], [ %i.fj, %bb.aa ], [ 0, %bb.w ]
  call void @addReplyVerbatim(ptr noundef nonnull %0, ptr noundef nonnull %i.ew, i64 noundef %.0.i169, ptr noundef nonnull @.str.124) #13
  %i.fm = load ptr, ptr %i.d, align 8, !tbaa !192
  call void @sdsfree(ptr noundef %i.fm) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.aq

bb.ac:                                            ; preds = %bb.v, %bb.u
  %i.fn = tail call i32 @strcasecmp(ptr noundef %i.j, ptr noundef nonnull @.str.125) #16
  %.not166 = icmp eq i32 %i.fn, 0
  br i1 %.not166, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !195
  %i.fq = icmp eq i32 %i.fp, 2
  br i1 %i.fq, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.fr = tail call ptr @getMemoryDoctorReport()  ; 7 uses
  %i.fs = getelementptr i8, ptr %i.fr, i64 -1
  %.val.i170 = load i8, ptr %i.fs, align 1, !tbaa !15 ; 2 uses
  %i.ft = and i8 %.val.i170, 7
  switch i8 %i.ft, label %sdslen.exit172 [
    i8 0, label %bb.af
    i8 1, label %bb.ag
    i8 2, label %bb.ah
    i8 3, label %bb.ai
    i8 4, label %bb.aj
  ]

bb.af:                                            ; preds = %bb.ae
  %i.fu = lshr i8 %.val.i170, 3
  %i.fv = zext nneg i8 %i.fu to i64
  br label %sdslen.exit172

bb.ag:                                            ; preds = %bb.ae
  %i.fw = getelementptr inbounds i8, ptr %i.fr, i64 -3
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !15
  %i.fy = zext i8 %i.fx to i64
  br label %sdslen.exit172

bb.ah:                                            ; preds = %bb.ae
  %i.fz = getelementptr inbounds i8, ptr %i.fr, i64 -5
  %i.ga = load i16, ptr %i.fz, align 1, !tbaa !16
  %i.gb = zext i16 %i.ga to i64
  br label %sdslen.exit172

bb.ai:                                            ; preds = %bb.ae
  %i.gc = getelementptr inbounds i8, ptr %i.fr, i64 -9
  %i.gd = load i32, ptr %i.gc, align 1, !tbaa !9
  %i.ge = zext i32 %i.gd to i64
  br label %sdslen.exit172

bb.aj:                                            ; preds = %bb.ae
  %i.gf = getelementptr inbounds i8, ptr %i.fr, i64 -17
  %i.gg = load i64, ptr %i.gf, align 1, !tbaa !18
  br label %sdslen.exit172

sdslen.exit172:                                   ; preds = %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %.0.i171 = phi i64 [ %i.gg, %bb.aj ], [ %i.fv, %bb.af ], [ %i.fy, %bb.ag ], [ %i.gb, %bb.ah ], [ %i.ge, %bb.ai ], [ 0, %bb.ae ]
  tail call void @addReplyVerbatim(ptr noundef nonnull %0, ptr noundef nonnull %i.fr, i64 noundef %.0.i171, ptr noundef nonnull @.str.124) #13
  tail call void @sdsfree(ptr noundef nonnull %i.fr) #13
  br label %bb.aq

bb.ak:                                            ; preds = %bb.ad, %bb.ac
  %i.gh = tail call i32 @strcasecmp(ptr noundef %i.j, ptr noundef nonnull @.str.126) #16
  %.not167 = icmp eq i32 %i.gh, 0
  br i1 %.not167, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !195
  %i.gk = icmp eq i32 %i.gj, 2
  br i1 %i.gk, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.gl = tail call i32 @jemalloc_purge() #13
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gn = load ptr, ptr @shared, align 8, !tbaa !205
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.gn) #13
  br label %bb.aq

bb.ao:                                            ; preds = %bb.am
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.127) #13
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al, %bb.ak
  tail call void @addReplySubcommandSyntaxError(ptr noundef nonnull %0) #13
  br label %bb.aq

bb.aq:                                            ; preds = %bb.l, %kvobjComputeSize.exit, %getLongLongFromObjectOrReply.exit.thread, %bb.k, %bb.i, %sdslen.exit, %bb.ap, %bb.ao, %bb.an, %sdslen.exit172, %._crit_edge, %bb.c
  ret void
}

declare ptr @dbFind(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @addReplyNull(ptr noundef) local_unnamed_addr #2

declare void @addReplyMapLen(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #12

declare void @addReplyDouble(ptr noundef, double noundef) local_unnamed_addr #2

declare ptr @sdsempty() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @je_malloc_stats_print(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #10

declare void @addReplyVerbatim(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @jemalloc_purge() local_unnamed_addr #2

declare void @addReply(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @keyMetaResetModuleValues(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!11, !11, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"short", !11, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"long", !11, i64 0}
!20 = !{!21, !22, i64 8}
!21 = !{!"redisObject", !10, i64 0, !10, i64 0, !10, i64 1, !10, i64 3, !10, i64 4, !10, i64 5, !22, i64 8}
!22 = !{!"any pointer", !11, i64 0}
!23 = !{!24, !10, i64 7768}
!24 = !{!"redisServer", !10, i64 0, !19, i64 8, !25, i64 16, !25, i64 24, !26, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !28, i64 64, !29, i64 72, !29, i64 80, !30, i64 88, !31, i64 96, !10, i64 104, !10, i64 108, !11, i64 112, !11, i64 116, !32, i64 120, !11, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !25, i64 144, !10, i64 152, !10, i64 156, !11, i64 160, !10, i64 204, !19, i64 208, !10, i64 216, !10, i64 220, !10, i64 224, !25, i64 232, !25, i64 240, !10, i64 248, !10, i64 252, !19, i64 256, !11, i64 264, !29, i64 272, !29, i64 280, !29, i64 288, !33, i64 296, !11, i64 304, !10, i64 312, !10, i64 316, !11, i64 320, !10, i64 324, !10, i64 328, !10, i64 332, !11, i64 336, !10, i64 464, !25, i64 472, !25, i64 480, !10, i64 488, !11, i64 496, !10, i64 1328, !34, i64 1336, !33, i64 1440, !33, i64 1448, !33, i64 1456, !33, i64 1464, !33, i64 1472, !33, i64 1480, !33, i64 1488, !36, i64 1496, !36, i64 1504, !22, i64 1512, !31, i64 1520, !10, i64 1528, !31, i64 1536, !10, i64 1544, !33, i64 1552, !11, i64 1560, !11, i64 1624, !29, i64 1880, !11, i64 1888, !10, i64 1896, !10, i64 1900, !11, i64 1904, !10, i64 2416, !10, i64 2420, !37, i64 2424, !10, i64 2448, !32, i64 2456, !10, i64 2464, !10, i64 2468, !10, i64 2472, !10, i64 2476, !10, i64 2480, !19, i64 2488, !19, i64 2496, !19, i64 2504, !19, i64 2512, !19, i64 2520, !19, i64 2528, !32, i64 2536, !32, i64 2544, !32, i64 2552, !32, i64 2560, !32, i64 2568, !32, i64 2576, !39, i64 2584, !32, i64 2592, !32, i64 2600, !32, i64 2608, !32, i64 2616, !32, i64 2624, !32, i64 2632, !19, i64 2640, !32, i64 2648, !32, i64 2656, !32, i64 2664, !32, i64 2672, !32, i64 2680, !32, i64 2688, !32, i64 2696, !32, i64 2704, !19, i64 2712, !19, i64 2720, !19, i64 2728, !32, i64 2736, !32, i64 2744, !32, i64 2752, !32, i64 2760, !32, i64 2768, !39, i64 2776, !32, i64 2784, !32, i64 2792, !32, i64 2800, !32, i64 2808, !32, i64 2816, !33, i64 2824, !32, i64 2832, !32, i64 2840, !19, i64 2848, !40, i64 2856, !11, i64 2944, !11, i64 2952, !11, i64 2960, !11, i64 2968, !19, i64 2976, !19, i64 2984, !19, i64 2992, !19, i64 3000, !19, i64 3008, !19, i64 3016, !19, i64 3024, !19, i64 3032, !39, i64 3040, !11, i64 3048, !19, i64 3080, !32, i64 3088, !32, i64 3096, !32, i64 3104, !11, i64 3112, !11, i64 4136, !11, i64 5160, !32, i64 5168, !32, i64 5176, !32, i64 5184, !32, i64 5192, !11, i64 5200, !32, i64 6264, !32, i64 6272, !19, i64 6280, !32, i64 6288, !32, i64 6296, !19, i64 6304, !11, i64 6312, !41, i64 6408, !10, i64 6416, !10, i64 6420, !10, i64 6424, !10, i64 6428, !10, i64 6432, !10, i64 6436, !10, i64 6440, !10, i64 6444, !10, i64 6448, !10, i64 6452, !10, i64 6456, !10, i64 6460, !10, i64 6464, !19, i64 6472, !10, i64 6480, !10, i64 6484, !10, i64 6488, !10, i64 6492, !19, i64 6496, !19, i64 6504, !10, i64 6512, !10, i64 6516, !10, i64 6520, !10, i64 6524, !10, i64 6528, !10, i64 6532, !25, i64 6536, !11, i64 6544, !10, i64 6616, !10, i64 6620, !10, i64 6624, !42, i64 6632, !10, i64 6640, !10, i64 6644, !10, i64 6648, !10, i64 6652, !10, i64 6656, !10, i64 6660, !10, i64 6664, !10, i64 6668, !10, i64 6672, !25, i64 6680, !25, i64 6688, !10, i64 6696, !10, i64 6700, !19, i64 6704, !19, i64 6712, !19, i64 6720, !19, i64 6728, !19, i64 6736, !10, i64 6744, !10, i64 6748, !25, i64 6752, !10, i64 6760, !10, i64 6764, !32, i64 6768, !32, i64 6776, !19, i64 6784, !19, i64 6792, !19, i64 6800, !10, i64 6808, !10, i64 6812, !19, i64 6816, !10, i64 6824, !10, i64 6828, !10, i64 6832, !10, i64 6836, !10, i64 6840, !19, i64 6848, !10, i64 6856, !11, i64 6860, !11, i64 6864, !22, i64 6872, !10, i64 6880, !32, i64 6888, !32, i64 6896, !32, i64 6904, !32, i64 6912, !10, i64 6920, !43, i64 6928, !10, i64 6936, !25, i64 6944, !10, i64 6952, !10, i64 6956, !10, i64 6960, !19, i64 6968, !19, i64 6976, !19, i64 6984, !19, i64 6992, !10, i64 7000, !10, i64 7004, !10, i64 7008, !10, i64 7012, !10, i64 7016, !10, i64 7020, !44, i64 7024, !10, i64 7032, !10, i64 7036, !25, i64 7040, !10, i64 7048, !10, i64 7052, !10, i64 7056, !11, i64 7060, !10, i64 7068, !45, i64 7072, !10, i64 7088, !25, i64 7096, !10, i64 7104, !25, i64 7112, !10, i64 7120, !10, i64 7124, !10, i64 7128, !10, i64 7132, !10, i64 7136, !10, i64 7140, !10, i64 7144, !11, i64 7148, !11, i64 7189, !32, i64 7232, !32, i64 7240, !11, i64 7248, !32, i64 7256, !10, i64 7264, !10, i64 7268, !47, i64 7272, !32, i64 7280, !32, i64 7288, !48, i64 7296, !19, i64 7344, !19, i64 7352, !10, i64 7360, !10, i64 7364, !10, i64 7368, !10, i64 7372, !10, i64 7376, !10, i64 7380, !10, i64 7384, !10, i64 7388, !10, i64 7392, !19, i64 7400, !33, i64 7408, !19, i64 7416, !25, i64 7424, !25, i64 7432, !25, i64 7440, !10, i64 7448, !10, i64 7452, !36, i64 7456, !36, i64 7464, !10, i64 7472, !10, i64 7476, !10, i64 7480, !10, i64 7484, !19, i64 7488, !19, i64 7496, !19, i64 7504, !19, i64 7512, !19, i64 7520, !49, i64 7528, !49, i64 7536, !10, i64 7544, !25, i64 7552, !19, i64 7560, !10, i64 7568, !10, i64 7572, !10, i64 7576, !19, i64 7584, !19, i64 7592, !10, i64 7600, !10, i64 7604, !10, i64 7608, !10, i64 7612, !25, i64 7616, !10, i64 7624, !10, i64 7628, !11, i64 7632, !32, i64 7680, !10, i64 7688, !33, i64 7696, !10, i64 7704, !32, i64 7712, !32, i64 7720, !19, i64 7728, !19, i64 7736, !10, i64 7744, !32, i64 7752, !19, i64 7760, !10, i64 7768, !10, i64 7772, !10, i64 7776, !10, i64 7780, !10, i64 7784, !32, i64 7792, !11, i64 7800, !10, i64 7812, !10, i64 7816, !10, i64 7820, !11, i64 7824, !33, i64 7872, !33, i64 7880, !10, i64 7888, !19, i64 7896, !33, i64 7904, !33, i64 7912, !10, i64 7920, !10, i64 7924, !10, i64 7928, !10, i64 7932, !19, i64 7936, !19, i64 7944, !19, i64 7952, !19, i64 7960, !19, i64 7968, !19, i64 7976, !19, i64 7984, !19, i64 7992, !19, i64 8000, !32, i64 8008, !32, i64 8016, !32, i64 8024, !10, i64 8032, !10, i64 8036, !11, i64 8040, !19, i64 8048, !11, i64 8056, !32, i64 8064, !32, i64 8072, !10, i64 8080, !19, i64 8088, !32, i64 8096, !19, i64 8104, !32, i64 8112, !50, i64 8120, !29, i64 8128, !10, i64 8136, !50, i64 8144, !10, i64 8152, !10, i64 8156, !10, i64 8160, !10, i64 8164, !32, i64 8168, !32, i64 8176, !25, i64 8184, !32, i64 8192, !32, i64 8200, !32, i64 8208, !10, i64 8216, !51, i64 8224, !10, i64 8232, !10, i64 8236, !10, i64 8240, !10, i64 8244, !10, i64 8248, !25, i64 8256, !25, i64 8264, !25, i64 8272, !10, i64 8280, !10, i64 8284, !10, i64 8288, !10, i64 8292, !10, i64 8296, !10, i64 8300, !10, i64 8304, !10, i64 8308, !32, i64 8312, !10, i64 8320, !10, i64 8324, !10, i64 8328, !32, i64 8336, !10, i64 8344, !10, i64 8348, !10, i64 8352, !10, i64 8356, !10, i64 8360, !10, i64 8364, !10, i64 8368, !10, i64 8372, !10, i64 8376, !32, i64 8384, !29, i64 8392, !25, i64 8400, !19, i64 8408, !25, i64 8416, !10, i64 8424, !52, i64 8432, !10, i64 8472, !19, i64 8480, !10, i64 8488, !10, i64 8492, !10, i64 8496, !53, i64 8504, !25, i64 8624, !25, i64 8632, !25, i64 8640, !25, i64 8648, !54, i64 8656, !32, i64 8664, !10, i64 8672, !25, i64 8680, !10, i64 8688, !10, i64 8692, !10, i64 8696, !19, i64 8704, !10, i64 8712, !10, i64 8716, !25, i64 8720, !10, i64 8728, !10, i64 8732}
!25 = !{!"p1 omnipotent char", !22, i64 0}
!26 = !{!"p2 omnipotent char", !27, i64 0}
!27 = !{!"any p2 pointer", !22, i64 0}
!28 = !{!"p1 _ZTS7redisDb", !22, i64 0}
!29 = !{!"p1 _ZTS4dict", !22, i64 0}
!30 = !{!"p1 _ZTS11aeEventLoop", !22, i64 0}
!31 = !{!"p1 _ZTS3rax", !22, i64 0}
!32 = !{!"long long", !11, i64 0}
!33 = !{!"p1 _ZTS4list", !22, i64 0}
!34 = !{!"connListener", !11, i64 0, !10, i64 64, !26, i64 72, !10, i64 80, !10, i64 84, !35, i64 88, !22, i64 96}
!35 = !{!"p1 _ZTS14ConnectionType", !22, i64 0}
!36 = !{!"p1 _ZTS6client", !22, i64 0}
!37 = !{!"pendingCommandPool", !38, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!38 = !{!"p2 _ZTS14pendingCommand", !27, i64 0}
!39 = !{!"double", !11, i64 0}
!40 = !{!"malloc_stats", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80}
!41 = !{!"p1 _ZTS11hotkeyStats", !22, i64 0}
!42 = !{!"p1 double", !22, i64 0}
!43 = !{!"p1 _ZTS9saveparam", !22, i64 0}
!44 = !{!"p2 _ZTS10connection", !27, i64 0}
!45 = !{!"redisOpArray", !46, i64 0, !10, i64 8, !10, i64 12}
!46 = !{!"p1 _ZTS7redisOp", !22, i64 0}
!47 = !{!"p1 _ZTS11replBacklog", !22, i64 0}
!48 = !{!"replDataBuf", !33, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40}
!49 = !{!"p1 _ZTS10connection", !22, i64 0}
!50 = !{!"p1 _ZTS8_kvstore", !22, i64 0}
!51 = !{!"p1 _ZTS12clusterState", !22, i64 0}
!52 = !{!"aclInfo", !32, i64 0, !32, i64 8, !32, i64 16, !32, i64 24, !32, i64 32}
!53 = !{!"redisTLSContextConfig", !25, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !10, i64 48, !25, i64 56, !25, i64 64, !25, i64 72, !25, i64 80, !25, i64 88, !25, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116}
!54 = !{!"p1 _ZTS14sentinelConfig", !22, i64 0}
!55 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!56 = !{!57, !58, i64 0}
!57 = !{!"moduleValue", !58, i64 0, !22, i64 8}
!58 = !{!"p1 _ZTS15RedisModuleType", !22, i64 0}
!59 = !{!60, !22, i64 72}
!60 = !{!"RedisModuleType", !61, i64 0, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !22, i64 72, !22, i64 80, !22, i64 88, !22, i64 96, !22, i64 104, !22, i64 112, !22, i64 120, !22, i64 128, !22, i64 136, !22, i64 144, !22, i64 152, !22, i64 160, !10, i64 168}
!61 = !{!"ModuleEntityId", !62, i64 0, !11, i64 8, !19, i64 24}
!62 = !{!"p1 _ZTS11RedisModule", !22, i64 0}
!63 = !{!57, !22, i64 8}
!64 = !{ptr @freeModuleObject}
!65 = !{!66, !66, i64 0}
!66 = !{!"p1 _ZTS11redisObject", !22, i64 0}
!67 = !{!24, !32, i64 7752}
!68 = !{!69, !29, i64 0}
!69 = !{!"zset", !29, i64 0, !70, i64 8}
!70 = !{!"p1 _ZTS9zskiplist", !22, i64 0}
!71 = !{!69, !70, i64 8}
!72 = !{!24, !19, i64 256}
!73 = !{!74, !74, i64 0}
!74 = !{!"p1 _ZTS13quicklistNode", !22, i64 0}
!75 = !{!76, !25, i64 16}
!76 = !{!"quicklistNode", !74, i64 0, !74, i64 8, !25, i64 16, !19, i64 24, !10, i64 32, !10, i64 34, !10, i64 34, !10, i64 34, !10, i64 34, !10, i64 34, !10, i64 34}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.mustprogress"}
!79 = distinct !{!79, !78}
!80 = !{!81, !81, i64 0}
!81 = !{!"p2 _ZTS9dictEntry", !27, i64 0}
!82 = !{!83, !19, i64 16}
!83 = !{!"zskiplist", !84, i64 0, !84, i64 8, !19, i64 16, !10, i64 24, !19, i64 32}
!84 = !{!"p1 _ZTS13zskiplistNode", !22, i64 0}
!85 = !{!83, !84, i64 0}
!86 = !{!87, !84, i64 0}
!87 = !{!"zskiplistLevel", !84, i64 0, !19, i64 8}
!88 = distinct !{!88, !78}
!89 = distinct !{!89, !78}
!90 = !{!91, !22, i64 16}
!91 = !{!"listpackEx", !92, i64 0, !22, i64 16}
!92 = !{!"ExpireMeta", !10, i64 0, !17, i64 4, !10, i64 6, !10, i64 6, !10, i64 6, !10, i64 6, !10, i64 7, !10, i64 7, !10, i64 7, !22, i64 8}
!93 = !{!94, !31, i64 0}
!94 = !{!"stream", !31, i64 0, !19, i64 8, !95, i64 16, !95, i64 32, !95, i64 48, !19, i64 64, !19, i64 72, !31, i64 80, !31, i64 88, !95, i64 96, !10, i64 112, !19, i64 120, !19, i64 128, !31, i64 136, !19, i64 144, !19, i64 152}
!95 = !{!"streamID", !19, i64 0, !19, i64 8}
!96 = !{!97, !22, i64 24}
!97 = !{!"raxIterator", !10, i64 0, !31, i64 8, !25, i64 16, !22, i64 24, !19, i64 32, !19, i64 40, !11, i64 48, !98, i64 176, !99, i64 184, !22, i64 472, !22, i64 480}
!98 = !{!"p1 _ZTS7raxNode", !22, i64 0}
!99 = !{!"raxStack", !27, i64 0, !19, i64 8, !19, i64 16, !11, i64 24, !10, i64 280}
!100 = distinct !{!100, !78}
!101 = !{!24, !10, i64 252}
!102 = !{!103, !66, i64 200}
!103 = !{!"sharedObjectsStruct", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24, !66, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !11, i64 64, !11, i64 96, !11, i64 128, !11, i64 160, !66, i64 192, !66, i64 200, !66, i64 208, !66, i64 216, !66, i64 224, !66, i64 232, !66, i64 240, !66, i64 248, !66, i64 256, !66, i64 264, !66, i64 272, !66, i64 280, !66, i64 288, !66, i64 296, !66, i64 304, !66, i64 312, !66, i64 320, !66, i64 328, !66, i64 336, !66, i64 344, !66, i64 352, !66, i64 360, !66, i64 368, !66, i64 376, !66, i64 384, !66, i64 392, !66, i64 400, !66, i64 408, !66, i64 416, !66, i64 424, !66, i64 432, !66, i64 440, !66, i64 448, !66, i64 456, !66, i64 464, !66, i64 472, !66, i64 480, !66, i64 488, !66, i64 496, !66, i64 504, !66, i64 512, !66, i64 520, !66, i64 528, !66, i64 536, !66, i64 544, !66, i64 552, !66, i64 560, !66, i64 568, !66, i64 576, !66, i64 584, !66, i64 592, !66, i64 600, !66, i64 608, !66, i64 616, !66, i64 624, !66, i64 632, !66, i64 640, !66, i64 648, !66, i64 656, !66, i64 664, !66, i64 672, !66, i64 680, !66, i64 688, !66, i64 696, !66, i64 704, !66, i64 712, !66, i64 720, !66, i64 728, !66, i64 736, !66, i64 744, !66, i64 752, !66, i64 760, !66, i64 768, !66, i64 776, !66, i64 784, !66, i64 792, !66, i64 800, !66, i64 808, !11, i64 816, !11, i64 896, !11, i64 80896, !11, i64 81152, !11, i64 81408, !11, i64 81664, !25, i64 81920, !25, i64 81928}
!104 = !{!32, !32, i64 0}
!105 = !{!24, !36, i64 1504}
!106 = !{!107, !19, i64 8}
!107 = !{!"client", !19, i64 0, !19, i64 8, !49, i64 16, !11, i64 24, !11, i64 25, !11, i64 26, !11, i64 27, !10, i64 28, !28, i64 32, !66, i64 40, !66, i64 48, !66, i64 56, !25, i64 64, !19, i64 72, !19, i64 80, !10, i64 88, !108, i64 96, !10, i64 104, !10, i64 108, !108, i64 112, !19, i64 120, !109, i64 128, !110, i64 152, !111, i64 160, !10, i64 168, !108, i64 176, !10, i64 184, !10, i64 188, !112, i64 192, !112, i64 200, !112, i64 208, !112, i64 216, !22, i64 224, !10, i64 232, !10, i64 236, !19, i64 240, !33, i64 248, !32, i64 256, !33, i64 264, !19, i64 272, !19, i64 280, !19, i64 288, !10, i64 296, !10, i64 300, !113, i64 304, !19, i64 312, !19, i64 320, !19, i64 328, !32, i64 336, !32, i64 344, !10, i64 352, !10, i64 356, !10, i64 360, !10, i64 364, !19, i64 368, !19, i64 376, !25, i64 384, !32, i64 392, !32, i64 400, !32, i64 408, !32, i64 416, !32, i64 424, !32, i64 432, !32, i64 440, !32, i64 448, !32, i64 456, !32, i64 464, !32, i64 472, !11, i64 480, !10, i64 524, !25, i64 528, !10, i64 536, !10, i64 540, !19, i64 544, !114, i64 552, !115, i64 592, !32, i64 664, !33, i64 672, !29, i64 680, !29, i64 688, !29, i64 696, !25, i64 704, !25, i64 712, !116, i64 720, !116, i64 728, !116, i64 736, !22, i64 744, !22, i64 752, !22, i64 760, !22, i64 768, !22, i64 776, !19, i64 784, !31, i64 792, !19, i64 800, !10, i64 808, !116, i64 816, !22, i64 824, !116, i64 832, !19, i64 840, !116, i64 848, !19, i64 856, !116, i64 864, !19, i64 872, !117, i64 880, !117, i64 904, !19, i64 928, !19, i64 936, !19, i64 944, !32, i64 952, !19, i64 960, !19, i64 968, !25, i64 976, !11, i64 984, !118, i64 992, !32, i64 1000, !32, i64 1008, !32, i64 1016, !119, i64 1024, !25, i64 1032, !11, i64 1040}
!108 = !{!"p2 _ZTS11redisObject", !27, i64 0}
!109 = !{!"pendingCommandList", !110, i64 0, !110, i64 8, !10, i64 16, !10, i64 20}
!110 = !{!"p1 _ZTS14pendingCommand", !22, i64 0}
!111 = !{!"p1 _ZTS14deferredObject", !22, i64 0}
!112 = !{!"p1 _ZTS12redisCommand", !22, i64 0}
!113 = !{!"p1 _ZTS9dictEntry", !22, i64 0}
!114 = !{!"multiState", !38, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !19, i64 24, !10, i64 32}
!115 = !{!"blockingState", !10, i64 0, !32, i64 8, !10, i64 16, !29, i64 24, !10, i64 32, !10, i64 36, !32, i64 40, !22, i64 48, !22, i64 56, !19, i64 64}
!116 = !{!"p1 _ZTS8listNode", !22, i64 0}
!117 = !{!"listNode", !116, i64 0, !116, i64 8, !22, i64 16}
!118 = !{!"p1 _ZTS13payloadHeader", !22, i64 0}
!119 = !{!"p1 _ZTS7asmTask", !22, i64 0}
!120 = !{!39, !39, i64 0}
!121 = !{!122, !122, i64 0}
!122 = !{!"long double", !11, i64 0}
!123 = !{!94, !19, i64 72}
!124 = !{!125, !22, i64 248}
!125 = !{!"redisMemOverhead", !19, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !19, i64 104, !19, i64 112, !19, i64 120, !126, i64 128, !126, i64 132, !126, i64 136, !19, i64 144, !126, i64 152, !19, i64 160, !126, i64 168, !19, i64 176, !126, i64 184, !19, i64 192, !19, i64 200, !19, i64 208, !19, i64 216, !19, i64 224, !19, i64 232, !19, i64 240, !22, i64 248}
!126 = !{!"float", !11, i64 0}
!127 = !{!125, !19, i64 8}
!128 = !{!24, !19, i64 208}
!129 = !{!125, !19, i64 16}
!130 = !{!24, !19, i64 2720}
!131 = !{!125, !19, i64 0}
!132 = !{!24, !19, i64 2904}
!133 = !{!24, !19, i64 2936}
!134 = !{!24, !19, i64 2872}
!135 = !{!24, !19, i64 2912}
!136 = !{!24, !19, i64 2864}
!137 = !{!24, !19, i64 2856}
!138 = !{!125, !19, i64 144}
!139 = !{!125, !19, i64 160}
!140 = !{!24, !19, i64 2888}
!141 = !{!24, !19, i64 2880}
!142 = !{!125, !126, i64 136}
!143 = !{!125, !126, i64 152}
!144 = !{!125, !126, i64 168}
!145 = !{!125, !19, i64 176}
!146 = !{!125, !126, i64 184}
!147 = !{!125, !19, i64 192}
!148 = !{!24, !33, i64 1480}
!149 = !{!150, !19, i64 40}
!150 = !{!"list", !116, i64 0, !116, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !19, i64 40}
!151 = !{!24, !19, i64 7400}
!152 = !{!24, !32, i64 7280}
!153 = !{!125, !19, i64 40}
!154 = !{!125, !19, i64 24}
!155 = !{!24, !47, i64 7272}
!156 = !{!157, !31, i64 16}
!157 = !{!"replBacklog", !116, i64 0, !19, i64 8, !31, i64 16, !32, i64 24, !32, i64 32}
!158 = !{!24, !19, i64 7304}
!159 = !{!125, !19, i64 32}
!160 = !{!125, !19, i64 48}
!161 = !{!24, !19, i64 3080}
!162 = !{!125, !19, i64 56}
!163 = !{!24, !10, i64 6668}
!164 = !{!24, !25, i64 6752}
!165 = !{!125, !19, i64 64}
!166 = !{!125, !19, i64 72}
!167 = !{!125, !19, i64 80}
!168 = !{!125, !19, i64 88}
!169 = !{!125, !19, i64 232}
!170 = !{!125, !19, i64 240}
!171 = !{!24, !10, i64 6516}
!172 = !{!24, !28, i64 64}
!173 = !{!174, !50, i64 0}
!174 = !{!"redisDb", !50, i64 0, !50, i64 8, !175, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !29, i64 48, !29, i64 56, !29, i64 64, !10, i64 72, !32, i64 80, !19, i64 88}
!175 = !{!"p1 _ZTS7_estore", !22, i64 0}
!176 = !{!125, !19, i64 112}
!177 = !{!125, !19, i64 200}
!178 = !{!179, !19, i64 0}
!179 = !{!"", !19, i64 0, !19, i64 8, !19, i64 16}
!180 = !{!179, !19, i64 8}
!181 = !{!174, !50, i64 8}
!182 = !{!179, !19, i64 16}
!183 = !{!125, !19, i64 208}
!184 = !{!125, !19, i64 216}
!185 = !{!125, !19, i64 224}
!186 = distinct !{!186, !78}
!187 = !{!24, !41, i64 6408}
!188 = !{!125, !19, i64 96}
!189 = !{!125, !19, i64 104}
!190 = !{!126, !126, i64 0}
!191 = !{!125, !19, i64 120}
!192 = !{!25, !25, i64 0}
!193 = !{!24, !33, i64 1440}
!194 = !{!107, !28, i64 32}
!195 = !{!107, !10, i64 88}
!196 = !{!107, !108, i64 96}
!197 = !{!107, !10, i64 28}
!198 = !{!103, !66, i64 216}
!199 = distinct !{!199, !78}
!200 = !{!174, !10, i64 72}
!201 = !{!125, !126, i64 128}
!202 = !{!125, !126, i64 132}
!203 = !{!24, !19, i64 2896}
!204 = distinct !{!204, !78}
!205 = !{!103, !66, i64 0}
end_hunk_1
