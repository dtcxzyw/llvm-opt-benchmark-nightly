Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/object?download=true
inline.NumInlined: 99
inline.NumDeleted: 11
begin_hunk_0_@getPositiveLongFromObjectOrReply:bb.a
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.g, label %getRangeLongFromObjectOrReply.exit

bb.g:                                             ; preds = %bb.f
  call void @addReplyError(ptr noundef %0, ptr noundef nonnull @.str.28) #13
  br label %getRangeLongFromObjectOrReply.exit

getRangeLongFromObjectOrReply.exit:               ; preds = %bb.g, %bb.f, %getLongFromObjectOrReply.exit.i10, %bb.d, %bb.c, %getLongFromObjectOrReply.exit.i
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
  %i.c = load i64, ptr %i.a, align 8, !tbaa !77   ; 2 uses
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
  store i32 %i.e, ptr %2, align 4, !tbaa !12
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
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !22
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !170
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !96
  tail call void @zfree(ptr noundef %i.b) #13
  tail call void @zfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @getMemoryOverheadData() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @zmalloc_used_memory() #13 ; 5 uses
  %i.b = tail call noalias dereferenceable_or_null(256) ptr @zcalloc(i64 noundef 256) #15 ; 35 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.a, ptr %i.c, align 8, !tbaa !97
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 208), align 8, !tbaa !172 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.d, ptr %i.e, align 8, !tbaa !98
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2720), align 8, !tbaa !173 ; 2 uses
  store i64 %i.f, ptr %i.b, align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2904), align 8, !tbaa !174
  %i.j = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2936), align 8, !tbaa !175
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2872), align 8, !tbaa !100
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2912), align 8, !tbaa !176
  %i.n = sub i64 %i.l, %i.m
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2864), align 8, !tbaa !177 ; 3 uses
  %i.p = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2856), align 8, !tbaa !178 ; 2 uses
  %i.q = uitofp i64 %i.k to float
  %i.r = uitofp i64 %i.n to float
  %i.s = uitofp i64 %i.p to float
  %i.t = insertelement <2 x float> poison, float %i.s, i64 0
  %i.u = insertelement <2 x float> %i.t, float %i.r, i64 1
  %i.v = sub i64 %i.o, %i.p
  store i64 %i.v, ptr %i.h, align 8, !tbaa !101
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 %i.k, ptr %i.x, align 8, !tbaa !102
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2888), align 8, !tbaa !103 ; 3 uses
  %i.ab = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2880), align 8, !tbaa !104 ; 2 uses
  %i.ac = uitofp i64 %i.o to float                ; 2 uses
  %i.ad = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ae = insertelement <2 x float> %i.ad, float %i.q, i64 1
  %i.af = fdiv <2 x float> %i.ae, %i.u            ; 2 uses
  %i.ag = extractelement <2 x float> %i.af, i64 0
  store float %i.ag, ptr %i.g, align 8, !tbaa !105
  %i.ah = extractelement <2 x float> %i.af, i64 1
  %i.ai = fadd float %i.ah, 1.000000e+00
  store float %i.ai, ptr %i.w, align 8, !tbaa !106
  %i.aj = uitofp i64 %i.aa to float               ; 2 uses
  %i.ak = uitofp i64 %i.ab to float
  %i.al = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.ac, i64 1
  %i.an = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.aj, i64 1
  %i.ap = fdiv <2 x float> %i.am, %i.ao           ; 2 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 0
  store float %i.aq, ptr %i.y, align 8, !tbaa !107
  %i.ar = sub i64 %i.aa, %i.ab
  store i64 %i.ar, ptr %i.z, align 8, !tbaa !108
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.at = extractelement <2 x float> %i.ap, i64 1
  store float %i.at, ptr %i.as, align 8, !tbaa !109
  %i.au = sub i64 %i.o, %i.aa
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store i64 %i.au, ptr %i.av, align 8, !tbaa !110
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1480), align 8, !tbaa !111
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !113
  %.not = icmp eq i64 %i.ay, 0
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7400), align 8, !tbaa !179 ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.az = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7280), align 8, !tbaa !180 ; 3 uses
  %i.ba = icmp sgt i64 %.pre, %i.az
  %i.bb = sub i64 %.pre, %i.az
  %spec.select = select i1 %i.ba, i64 %i.bb, i64 0
  %spec.select136 = tail call i64 @llvm.smin.i64(i64 %.pre, i64 %i.az)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink = phi i64 [ 0, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %.pre.sink = phi i64 [ %.pre, %bb.a ], [ %spec.select136, %bb.b ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.sink, ptr %i.bc, align 8, !tbaa !114
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.pre.sink, ptr %i.bd, align 8, !tbaa !115
  %i.be = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7272), align 8, !tbaa !181 ; 2 uses
  %.not124 = icmp eq ptr %i.be, null
  br i1 %.not124, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !183 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !19
  %i.bj = shl i64 %i.bi, 2
  %i.bk = tail call i64 @raxSize(ptr noundef %i.bg) #13
  %i.bl = shl i64 %i.bk, 3
  %i.bm = add i64 %i.bl, %i.bj
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bo = add i64 %i.bm, %.pre.sink               ; 2 uses
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !115
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bp = phi i64 [ %i.bo, %bb.d ], [ %.pre.sink, %bb.c ]
  %i.bq = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 7304), align 8, !tbaa !184 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !116
  %i.bs = add i64 %i.bq, %i.d
  %i.bt = add i64 %i.bs, %i.bp
  %i.bu = add i64 %i.bt, %.sink
  %i.bv = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3072), align 8, !tbaa !19
  %i.bw = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3064), align 8, !tbaa !19
  %i.bx = add i64 %i.bw, %i.bv
  %i.by = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3048), align 8, !tbaa !19
  %i.bz = add i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !117
  %i.cb = add i64 %i.bu, %i.bz
  %i.cc = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 3080), align 8, !tbaa !185 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !118
  %i.ce = add i64 %i.cb, %i.cc
  %i.cf = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6668), align 4, !tbaa !186
  %.not125 = icmp eq i32 %i.cf, 0
  br i1 %.not125, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6752), align 8, !tbaa !187
  %i.ch = tail call i64 @sdsZmallocSize(ptr noundef %i.cg) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0116 = phi i64 [ %i.ch, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.0116, ptr %i.ci, align 8, !tbaa !119
  %i.cj = add i64 %i.ce, %.0116
  %i.ck = tail call i64 @evalScriptsMemoryEngine() #13 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !120
  %i.cm = add i64 %i.cj, %i.ck
  %i.cn = tail call i64 @functionsMemoryEngine() #13 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !121
  %i.cp = add i64 %i.cm, %i.cn
  %i.cq = tail call i64 @evalScriptsMemoryVM() #13
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.cs = tail call i64 @functionsMemoryVM() #13
  %i.ct = add i64 %i.cs, %i.cq                    ; 2 uses
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !122
  %i.cu = add i64 %i.cp, %i.ct
  %i.cv = tail call i64 @asmGetImportInputBufferSize() #13 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !188
  %i.cx = tail call i64 @asmGetMigrateOutputBufferSize() #13 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !189
  %i.cz = add i64 %i.cu, %i.cv
  %i.da = add i64 %i.cz, %i.cx                    ; 2 uses
  %i.db = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !190
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %.0117128 = phi i64 [ %i.da, %.lr.ph ], [ %.1, %bb.j ] ; 2 uses
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !191
  %i.dk = getelementptr inbounds nuw [96 x i8], ptr %i.dj, i64 %indvars.iv ; 7 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !192
  %i.dm = tail call i32 @kvstoreNumAllocatedDicts(ptr noundef %i.dl) #13
  %.not127 = icmp eq i32 %i.dm, 0
  br i1 %.not127, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dn = load ptr, ptr %i.dk, align 8, !tbaa !192
  %i.do = tail call i64 @kvstoreSize(ptr noundef %i.dn) #13 ; 2 uses
  %i.dp = load i64, ptr %i.dd, align 8, !tbaa !125
  %i.dq = add i64 %i.dp, %i.do
  store i64 %i.dq, ptr %i.dd, align 8, !tbaa !125
  %i.dr = load ptr, ptr %i.de, align 8, !tbaa !96
  %i.ds = load i64, ptr %i.df, align 8, !tbaa !126 ; 3 uses
  %i.dt = mul i64 %i.ds, 24
  %i.du = add i64 %i.dt, 24
  %i.dv = tail call ptr @zrealloc(ptr noundef %i.dr, i64 noundef %i.du) #17 ; 2 uses
  store ptr %i.dv, ptr %i.de, align 8, !tbaa !96
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %i.dv, i64 %i.ds ; 3 uses
  store i64 %indvars.iv, ptr %i.dw, align 8, !tbaa !128
  %i.dx = load ptr, ptr %i.dk, align 8, !tbaa !192
  %i.dy = tail call i64 @kvstoreMemUsage(ptr noundef %i.dx) #13
  %i.dz = shl i64 %i.do, 4
  %i.ea = add i64 %i.dy, %i.dz                    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store i64 %i.ea, ptr %i.eb, align 8, !tbaa !129
  %i.ec = add i64 %i.ea, %.0117128
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 4 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !193
  %i.ef = tail call i64 @kvstoreMemUsage(ptr noundef %i.ee) #13 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !130
  %i.eh = add i64 %i.ec, %i.ef
  %i.ei = add i64 %i.ds, 1
  store i64 %i.ei, ptr %i.df, align 8, !tbaa !126
  %i.ej = load ptr, ptr %i.dk, align 8, !tbaa !192
  %i.ek = tail call i64 @kvstoreOverheadHashtableLut(ptr noundef %i.ej) #13
  %i.el = load i64, ptr %i.dg, align 8, !tbaa !131
  %i.em = add i64 %i.el, %i.ek
  %i.en = load ptr, ptr %i.ed, align 8, !tbaa !193
  %i.eo = tail call i64 @kvstoreOverheadHashtableLut(ptr noundef %i.en) #13
  %i.ep = add i64 %i.eo, %i.em
  store i64 %i.ep, ptr %i.dg, align 8, !tbaa !131
  %i.eq = load ptr, ptr %i.dk, align 8, !tbaa !192
  %i.er = tail call i64 @kvstoreOverheadHashtableRehashing(ptr noundef %i.eq) #13
  %i.es = load i64, ptr %i.dh, align 8, !tbaa !132
  %i.et = add i64 %i.es, %i.er
  %i.eu = load ptr, ptr %i.ed, align 8, !tbaa !193
  %i.ev = tail call i64 @kvstoreOverheadHashtableRehashing(ptr noundef %i.eu) #13
  %i.ew = add i64 %i.ev, %i.et
  store i64 %i.ew, ptr %i.dh, align 8, !tbaa !132
  %i.ex = load ptr, ptr %i.dk, align 8, !tbaa !192
  %i.ey = tail call i64 @kvstoreDictRehashingCount(ptr noundef %i.ex) #13
  %i.ez = load i64, ptr %i.di, align 8, !tbaa !133
  %i.fa = add i64 %i.ez, %i.ey
  %i.fb = load ptr, ptr %i.ed, align 8, !tbaa !193
  %i.fc = tail call i64 @kvstoreDictRehashingCount(ptr noundef %i.fb) #13
  %i.fd = add i64 %i.fc, %i.fa
  store i64 %i.fd, ptr %i.di, align 8, !tbaa !133
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.1 = phi i64 [ %i.eh, %bb.i ], [ %.0117128, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fe = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !190
  %i.ff = sext i32 %i.fe to i64
  %i.fg = icmp slt i64 %indvars.iv.next, %i.ff
  br i1 %i.fg, label %bb.h, label %._crit_edge, !llvm.loop !171

._crit_edge:                                      ; preds = %bb.j, %bb.g
  %.0117.lcssa = phi i64 [ %i.da, %bb.g ], [ %.1, %bb.j ]
  %i.fh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6408), align 8, !tbaa !194
  %i.fi = tail call i64 @hotkeysGetMemoryUsage(ptr noundef %i.fh) #13
  %i.fj = add i64 %i.fi, %.0117.lcssa             ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i64 %i.fj, ptr %i.fk, align 8, !tbaa !134
  %i.fl = sub i64 %i.a, %i.fj                     ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !135
  %i.fn = uitofp i64 %i.f to float
  %i.fo = icmp ugt i64 %i.a, %i.d
  %i.fp = sub nuw i64 %i.a, %i.d
  %i.fq = uitofp i64 %i.fp to float
  %.0 = select i1 %i.fo, float %i.fq, float 1.000000e+00
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.fs = uitofp i64 %i.a to float
  %i.ft = uitofp i64 %i.fl to float
  %i.fu = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fv = insertelement <2 x float> %i.fu, float %i.fs, i64 1
  %i.fw = fmul nnan <2 x float> %i.fv, splat (float 1.000000e+02)
  %i.fx = insertelement <2 x float> poison, float %.0, i64 0
  %i.fy = insertelement <2 x float> %i.fx, float %i.fn, i64 1
  %i.fz = fdiv <2 x float> %i.fw, %i.fy
  store <2 x float> %i.fz, ptr %i.fr, align 8, !tbaa !195
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !125 ; 2 uses
  %.not126 = icmp eq i64 %i.gb, 0
  br i1 %.not126, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.gc = udiv i64 %i.fl, %i.gb
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k
  %i.gd = phi i64 [ %i.gc, %bb.k ], [ 0, %._crit_edge ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !136
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !137
  %i.b = tail call ptr @sdscat(ptr noundef %i.a, ptr noundef %1) #13
  store ptr %i.b, ptr %0, align 8, !tbaa !137
  ret void
}

declare ptr @sdscat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @getMemoryDoctorReport() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @getMemoryOverheadData()   ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !97   ; 2 uses
  %i.d = icmp ult i64 %i.c, 5242880
  br i1 %i.d, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !99
  %i.f = uitofp i64 %i.e to float
  %i.g = uitofp i64 %i.c to float
  %i.h = fdiv float %i.f, %i.g
  %i.i = fcmp ogt float %i.h, 1.500000e+00        ; 3 uses
  %spec.select = zext i1 %i.i to i32              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.k = load float, ptr %i.j, align 8, !tbaa !105
  %i.l = fpext float %i.k to double
  %i.m = fcmp ogt double %i.l, 1.400000e+00
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.o = load i64, ptr %i.n, align 8, !tbaa !101
  %i.p = icmp slt i64 %i.o, 10485761              ; 2 uses
  %i.q = select i1 %i.i, i32 2, i32 1
  %spec.select73 = select i1 %i.p, i32 %spec.select, i32 %i.q
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi i1 [ true, %bb.b ], [ %i.p, %bb.c ]
  %.146 = phi i32 [ %spec.select, %bb.b ], [ %spec.select73, %bb.c ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.t = load float, ptr %i.s, align 8, !tbaa !106
  %i.u = fpext float %i.t to double
  %i.v = fcmp ogt double %i.u, 1.100000e+00
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.x = load i64, ptr %i.w, align 8, !tbaa !102
  %i.y = icmp slt i64 %i.x, 10485761              ; 2 uses
  %not. = xor i1 %i.y, true
  %i.z = zext i1 %not. to i32
  %spec.select75 = add nuw nsw i32 %.146, %i.z
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = phi i1 [ true, %bb.d ], [ %i.y, %bb.e ]
  %.247 = phi i32 [ %.146, %bb.d ], [ %spec.select75, %bb.e ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !107
  %i.ad = fpext float %i.ac to double
  %i.ae = fcmp ogt double %i.ad, 1.100000e+00
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !108
  %i.ah = icmp slt i64 %i.ag, 10485761            ; 2 uses
  %not.111 = xor i1 %i.ah, true
  %i.ai = zext i1 %not.111 to i32
  %spec.select77 = add nuw nsw i32 %.247, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = phi i1 [ true, %bb.f ], [ %i.ah, %bb.g ]
  %.348 = phi i32 [ %.247, %bb.f ], [ %spec.select77, %bb.g ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.al = load float, ptr %i.ak, align 8, !tbaa !109
  %i.am = fpext float %i.al to double
  %i.an = fcmp ogt double %i.am, 1.100000e+00
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !110
  %i.aq = icmp ult i64 %i.ap, 10485761            ; 2 uses
  %not.113 = xor i1 %i.aq, true
  %i.ar = zext i1 %not.113 to i32
  %spec.select79 = add nuw nsw i32 %.348, %i.ar
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.as = phi i1 [ true, %bb.h ], [ %i.aq, %bb.i ]
  %.449 = phi i32 [ %.348, %bb.h ], [ %spec.select79, %bb.i ]
  %i.at = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1480), align 8, !tbaa !111
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = load i64, ptr %i.au, align 8, !tbaa !113 ; 2 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 1440), align 8, !tbaa !196
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !113
  %i.az = sub i64 %i.ay, %i.av
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !117
  %i.bc = udiv i64 %i.bb, %i.az
  %i.bd = icmp ugt i64 %i.bc, 204800              ; 2 uses
  %i.be = zext i1 %i.bd to i32
  %spec.select80 = add nuw nsw i32 %.449, %i.be   ; 2 uses
  %i.bf = icmp sgt i64 %i.av, 0
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !114
  %i.bi = icmp ult i64 %i.bh, 10485761            ; 2 uses
  %not.116 = xor i1 %i.bi, true
  %i.bj = zext i1 %not.116 to i32
  %spec.select82 = add nuw nsw i32 %spec.select80, %i.bj
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bk = phi i1 [ true, %bb.j ], [ %i.bi, %bb.k ]
  %.651 = phi i32 [ %spec.select80, %bb.j ], [ %spec.select82, %bb.k ]
  %i.bl = tail call ptr @evalScriptsDict() #13
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !19
  %i.bo = tail call ptr @evalScriptsDict() #13
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !19
  %i.br = add i64 %i.bq, %i.bn
  %i.bs = icmp ult i64 %i.br, 1001                ; 2 uses
  %i.bt = icmp eq i32 %.651, 0
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
end_hunk_0
