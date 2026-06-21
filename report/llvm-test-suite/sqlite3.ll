inline.NumInlined: 3254
inline.NumDeleted: 427
begin_hunk_0_@sqlite3VdbeMemDynamicify:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !123
  %i.f = load i64, ptr %0, align 8, !tbaa !37
  %i.g = trunc i64 %i.f to i32
  %i.h = add i32 %i.e, %i.g
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 1)
  %i.i = tail call fastcc i32 @sqlite3VdbeMemGrow(ptr noundef nonnull %0, i32 noundef %spec.store.select.i, i32 noundef 1)
  %.not14.not.i = icmp eq i32 %i.i, 0
  br i1 %.not14.not.i, label %.thread.i, label %.sqlite3VdbeMemExpandBlob.exit_crit_edge

.sqlite3VdbeMemExpandBlob.exit_crit_edge:         ; preds = %bb.b
  %.pre = load i16, ptr %i.a, align 4, !tbaa !124
  br label %sqlite3VdbeMemExpandBlob.exit

.thread.i:                                        ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !119
  %i.l = load i32, ptr %i.d, align 8, !tbaa !123
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %i.k, i64 %i.m
  %i.o = load i64, ptr %0, align 8, !tbaa !37
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 0, i64 %i.o, i1 false)
  %i.p = load i64, ptr %0, align 8, !tbaa !37
  %i.q = load i32, ptr %i.d, align 8, !tbaa !123
  %i.r = trunc i64 %i.p to i32
  %i.s = add i32 %i.q, %i.r
  store i32 %i.s, ptr %i.d, align 8, !tbaa !123
  %i.t = load i16, ptr %i.a, align 4, !tbaa !124
  %i.u = and i16 %i.t, -2081                      ; 2 uses
  store i16 %i.u, ptr %i.a, align 4, !tbaa !124
  br label %sqlite3VdbeMemExpandBlob.exit

sqlite3VdbeMemExpandBlob.exit:                    ; preds = %.sqlite3VdbeMemExpandBlob.exit_crit_edge, %.thread.i, %bb.a
  %i.v = phi i16 [ %.pre, %.sqlite3VdbeMemExpandBlob.exit_crit_edge ], [ %i.u, %.thread.i ], [ %i.b, %bb.a ]
  %i.w = zext i16 %i.v to i32                     ; 2 uses
  %i.x = and i32 %i.w, 18
  %.not13 = icmp eq i32 %i.x, 0
  br i1 %.not13, label %bb.g, label %bb.c

bb.c:                                             ; preds = %sqlite3VdbeMemExpandBlob.exit
  %i.y = and i32 %i.w, 64
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !122
  %.not14 = icmp eq ptr %i.ab, null
  br i1 %.not14, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !123
  %i.ae = add nsw i32 %i.ad, 2
  %i.af = tail call fastcc i32 @sqlite3VdbeMemGrow(ptr noundef nonnull %0, i32 noundef %i.ae, i32 noundef 1)
  %.not15 = icmp eq i32 %i.af, 0
  br i1 %.not15, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !119
  %i.ai = load i32, ptr %i.ac, align 8, !tbaa !123
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 %i.aj
  store i8 0, ptr %i.ak, align 1, !tbaa !37
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !119
  %i.am = load i32, ptr %i.ac, align 8, !tbaa !123
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr i8, ptr %i.al, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.ao, i64 1
  store i8 0, ptr %i.ap, align 1, !tbaa !37
  %i.aq = load i16, ptr %i.a, align 4, !tbaa !124
  %i.ar = or i16 %i.aq, 32
  store i16 %i.ar, ptr %i.a, align 4, !tbaa !124
  br label %bb.g

bb.g:                                             ; preds = %sqlite3VdbeMemExpandBlob.exit, %bb.d, %bb.f, %bb.e
  %.0 = phi i32 [ 7, %bb.e ], [ 0, %bb.f ], [ 0, %bb.d ], [ 0, %sqlite3VdbeMemExpandBlob.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #32

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @sqlite3VdbeMemStringify(ptr noundef %0, i32 noundef range(i32 0, 256) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 5 uses
  %i.b = load i16, ptr %i.a, align 4, !tbaa !124  ; 2 uses
  %i.c = and i16 %i.b, 64
  %i.d = icmp eq i16 %i.c, 0
  br i1 %i.d, label %sqlite3MallocSize.exit.i.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !122
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %sqlite3MallocSize.exit.i.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !119  ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %sqlite3MallocSize.exit.i.thread, label %sqlite3MallocSize.exit.i

sqlite3MallocSize.exit.i:                         ; preds = %bb.c
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !28
  %i.k = trunc i64 %i.j to i32
  %i.l = icmp slt i32 %i.k, 32
  br i1 %i.l, label %sqlite3MallocSize.exit.i.thread, label %sqlite3VdbeMemGrow.exit

sqlite3MallocSize.exit.i.thread:                  ; preds = %bb.c, %sqlite3MallocSize.exit.i, %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !130  ; 2 uses
  %.not.i46.i = icmp eq ptr %i.n, null
  br i1 %.not.i46.i, label %.thread.i.i, label %bb.d

.thread.i.i:                                      ; preds = %sqlite3MallocSize.exit.i.thread
  %i.o = tail call ptr @sqlite3_malloc(i32 noundef 32) ; 2 uses
  %.not44.i = icmp eq ptr %i.o, null
  br i1 %.not44.i, label %sqlite3VdbeMemGrow.exit.thread, label %sqlite3DbMallocRaw.exit.thread51.i

bb.d:                                             ; preds = %sqlite3MallocSize.exit.i.thread
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 42 ; 2 uses
  %i.q = load i8, ptr %i.p, align 2, !tbaa !129
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.e, label %sqlite3VdbeMemGrow.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.s = tail call ptr @sqlite3_malloc(i32 noundef 32) ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %sqlite3DbMallocRaw.exit.thread51.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.p, align 2, !tbaa !129
  br label %sqlite3VdbeMemGrow.exit.thread

sqlite3DbMallocRaw.exit.thread51.i:               ; preds = %.thread.i.i, %bb.e
  %.136.i = phi ptr [ %i.o, %.thread.i.i ], [ %i.s, %bb.e ] ; 2 uses
  tail call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %0)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.136.i, ptr %i.u, align 8, !tbaa !119
  %i.v = load i16, ptr %i.a, align 4, !tbaa !124
  %i.w = and i16 %i.v, -449
  %i.x = or disjoint i16 %i.w, 64
  store i16 %i.x, ptr %i.a, align 4, !tbaa !124
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.y, align 8, !tbaa !122
  br label %sqlite3VdbeMemGrow.exit

sqlite3VdbeMemGrow.exit:                          ; preds = %sqlite3DbMallocRaw.exit.thread51.i, %sqlite3MallocSize.exit.i
  %i.z = phi ptr [ %.136.i, %sqlite3DbMallocRaw.exit.thread51.i ], [ %i.h, %sqlite3MallocSize.exit.i ] ; 2 uses
  %i.aa = and i16 %i.b, 4
  %.not14 = icmp eq i16 %i.aa, 0
  br i1 %.not14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %sqlite3VdbeMemGrow.exit
  %i.ab = load i64, ptr %0, align 8, !tbaa !37
  %i.ac = tail call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 32, ptr noundef nonnull %i.z, ptr noundef nonnull @.str.38, i64 noundef %i.ab) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %sqlite3VdbeMemGrow.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !167
  %i.af = tail call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 32, ptr noundef nonnull %i.z, ptr noundef nonnull @.str.39, double noundef %i.ae) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !119
  %i.ai = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ah) #42
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !123
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 39
  store i8 1, ptr %i.al, align 1, !tbaa !125
  %i.am = load i16, ptr %i.a, align 4, !tbaa !124
  %i.an = or i16 %i.am, 34
  store i16 %i.an, ptr %i.a, align 4, !tbaa !124
  %i.ao = tail call fastcc i32 @sqlite3VdbeChangeEncoding(ptr noundef nonnull %0, i32 noundef %1) ; 0 uses
  br label %sqlite3VdbeMemGrow.exit.thread

sqlite3VdbeMemGrow.exit.thread:                   ; preds = %bb.d, %bb.f, %.thread.i.i, %bb.i
  %.0 = phi i32 [ 0, %bb.i ], [ 7, %.thread.i.i ], [ 7, %bb.f ], [ 7, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 1, 102) i32 @sqlite3VdbeExec(ptr noundef nonnull %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [10 x i8], align 1                ; 19 uses
  %1 = alloca %struct.sqlite3_context, align 8    ; 13 uses
  %2 = alloca %struct.Mem, align 8                ; 5 uses
  %3 = alloca %struct.Mem, align 8                ; 5 uses
  %i.c = alloca i32, align 4                      ; 11 uses
  %4 = alloca %struct.Mem, align 8                ; 15 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 9 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 12 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 10 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i64, align 8                      ; 18 uses
  %i.p = alloca i32, align 4                      ; 9 uses
  %i.q = alloca i32, align 4                      ; 7 uses
  %i.r = alloca i64, align 8                      ; 5 uses
  %i.s = alloca i64, align 8                      ; 5 uses
  %i.t = alloca i32, align 4                      ; 4 uses
  %i.u = alloca i32, align 4                      ; 6 uses
  %i.v = alloca i32, align 4                      ; 4 uses
  %i.w = alloca i64, align 8                      ; 5 uses
  %i.x = alloca i32, align 4                      ; 4 uses
  %i.y = alloca i32, align 4                      ; 4 uses
  %i.z = alloca i32, align 4                      ; 4 uses
  %5 = alloca %struct.InitData, align 8           ; 8 uses
  %i.aa = alloca i32, align 4                     ; 5 uses
  %6 = alloca %struct.sqlite3_context, align 8    ; 12 uses
  %i.ab = alloca ptr, align 8                     ; 7 uses
  %i.ac = alloca i64, align 8                     ; 4 uses
  %7 = alloca %struct.sqlite3_context, align 8    ; 8 uses
  %i.ad = alloca i64, align 8                     ; 4 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !106   ; 39 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 18 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !235
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !236
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 145
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !240 ; 10 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 188 ; 11 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !127
  %i.an = icmp eq i32 %i.am, 7
  %indvars.iv.i.lcssa.sroa.gep3623 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %indvars.iv.i.lcssa.sroa.gep3624 = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %indvars.iv.i.lcssa.sroa.gep3625 = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %indvars.iv.i.lcssa.sroa.gep3626 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br i1 %i.an, label %sqlite3VtabUnlock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.al, align 4, !tbaa !127
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  store ptr null, ptr %i.ao, align 8, !tbaa !187
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 448
  store i32 0, ptr %i.ap, align 8, !tbaa !476
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 264 ; 4 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !37
  %.not = icmp eq i32 %i.ar, 0
  br i1 %.not, label %bb.c, label %.loopexit2547

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !107
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 42 ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 288
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 304
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 296
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 27 uses
  %i.ba = zext i8 %i.ak to i32                    ; 10 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 29 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 341 ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 52 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 15 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 339
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 120 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 52
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 8 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ae, i64 104 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ae, i64 76
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ae, i64 80 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ae, i64 208 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ae, i64 200 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ae, i64 64 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 340 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ae, i64 128 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.db = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ae, i64 144
  %.not2039 = icmp eq i8 %i.ak, 1
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %sqlite3VdbeIntegerAffinity.exit
  %.015832716 = phi i32 [ %i.at, %bb.c ], [ %i.dak, %sqlite3VdbeIntegerAffinity.exit ] ; 158 uses
  %.016162715 = phi ptr [ undef, %bb.c ], [ %.71623, %sqlite3VdbeIntegerAffinity.exit ] ; 4 uses
  %.016242714 = phi ptr [ undef, %bb.c ], [ %.31627, %sqlite3VdbeIntegerAffinity.exit ] ; 5 uses
  %.016282713 = phi ptr [ undef, %bb.c ], [ %.41632, %sqlite3VdbeIntegerAffinity.exit ] ; 6 uses
  %.016332712 = phi ptr [ undef, %bb.c ], [ %.61639, %sqlite3VdbeIntegerAffinity.exit ] ; 6 uses
  %.016412711 = phi i32 [ 0, %bb.c ], [ %.31644, %sqlite3VdbeIntegerAffinity.exit ] ; 3 uses
  %.017532710 = phi i64 [ undef, %bb.c ], [ %.21755, %sqlite3VdbeIntegerAffinity.exit ] ; 160 uses
  %.022512709 = phi i32 [ undef, %bb.c ], [ %.2, %sqlite3VdbeIntegerAffinity.exit ] ; 161 uses
  %i.dj = load i8, ptr %i.au, align 2, !tbaa !129
  %.not1849 = icmp eq i8 %i.dj, 0
  br i1 %.not1849, label %bb.e, label %sqlite3VtabUnlock.exit

bb.e:                                             ; preds = %bb.d
  %i.dk = load ptr, ptr %i.av, align 8, !tbaa !136
  %i.dl = sext i32 %.015832716 to i64
  %i.dm = getelementptr inbounds [24 x i8], ptr %i.dk, i64 %i.dl ; 197 uses
  %i.dn = load ptr, ptr %i.aw, align 8, !tbaa !477 ; 2 uses
  %.not1850 = icmp eq ptr %i.dn, null
  br i1 %.not1850, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.do = load i32, ptr %i.ax, align 8, !tbaa !478
  %i.dp = icmp eq i32 %i.do, %.016412711
  br i1 %i.dp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dq = load ptr, ptr %i.ay, align 8, !tbaa !479
  %i.dr = call i32 %i.dn(ptr noundef %i.dq) #43
  %.not1851 = icmp eq i32 %i.dr, 0
  br i1 %.not1851, label %bb.h, label %.loopexit2546

bb.h:                                             ; preds = %bb.g, %bb.f
  %.21643 = phi i32 [ 0, %bb.g ], [ %.016412711, %bb.f ]
  %i.ds = add nsw i32 %.21643, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.31644 = phi i32 [ %i.ds, %bb.h ], [ %.016412711, %bb.e ]
  %i.dt = load i8, ptr %i.dm, align 8, !tbaa !137 ; 8 uses
  %i.du = zext i8 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @opcodeProperty, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !37
  %i.dx = zext i8 %i.dw to i32                    ; 7 uses
  %i.dy = and i32 %i.dx, 2
  %.not1852 = icmp eq i32 %i.dy, 0
  br i1 %.not1852, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dz = load ptr, ptr %i.az, align 8, !tbaa !133
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !140
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [48 x i8], ptr %i.dz, i64 %i.ec ; 3 uses
  call fastcc void @sqlite3VdbeMemRelease(ptr noundef %i.ed)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 36
  store i16 1, ptr %i.ee, align 4, !tbaa !124
  %.pre = load i8, ptr %i.dm, align 8, !tbaa !137
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.ef = and i32 %i.dx, 4
  %.not1853 = icmp eq i32 %i.ef, 0
  br i1 %.not1853, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eg = load ptr, ptr %i.az, align 8, !tbaa !133 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !141
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds [48 x i8], ptr %i.eg, i64 %i.ej ; 4 uses
  %i.el = and i32 %i.dx, 8
end_hunk_0
begin_hunk_1_@sqlite3VdbeExec:bb.a

bb.gd:                                            ; preds = %bb.u
  %i.adh = getelementptr inbounds nuw i8, ptr %.11617, i64 36 ; 3 uses
  %i.adi = load i16, ptr %i.adh, align 4, !tbaa !124
  %i.adj = and i16 %i.adi, 1
  %.not1995 = icmp eq i16 %i.adj, 0
  br i1 %.not1995, label %bb.ge, label %sqlite3VdbeIntegerAffinity.exit

bb.ge:                                            ; preds = %bb.gd
  %i.adk = call fastcc i64 @sqlite3VdbeIntValue(ptr noundef nonnull %.11617)
  %i.adl = load i16, ptr %i.adh, align 4, !tbaa !124
  %i.adm = and i16 %i.adl, -32
  %i.adn = or disjoint i16 %i.adm, 4
  store i16 %i.adn, ptr %i.adh, align 4, !tbaa !124
  %.not1996 = icmp eq i64 %i.adk, 0
  %i.ado = zext i1 %.not1996 to i64
  store i64 %i.ado, ptr %.11617, align 8, !tbaa !37
  br label %sqlite3VdbeIntegerAffinity.exit

bb.gf:                                            ; preds = %bb.u
  %i.adp = getelementptr inbounds nuw i8, ptr %.11617, i64 36 ; 3 uses
  %i.adq = load i16, ptr %i.adp, align 4, !tbaa !124
  %i.adr = and i16 %i.adq, 1
  %.not1994 = icmp eq i16 %i.adr, 0
  br i1 %.not1994, label %bb.gg, label %sqlite3VdbeIntegerAffinity.exit

bb.gg:                                            ; preds = %bb.gf
  %i.ads = call fastcc i64 @sqlite3VdbeIntValue(ptr noundef nonnull %.11617)
  %i.adt = load i16, ptr %i.adp, align 4, !tbaa !124
  %i.adu = and i16 %i.adt, -32
  %i.adv = or disjoint i16 %i.adu, 4
  store i16 %i.adv, ptr %i.adp, align 4, !tbaa !124
  %i.adw = xor i64 %i.ads, -1
  store i64 %i.adw, ptr %.11617, align 8, !tbaa !37
  br label %sqlite3VdbeIntegerAffinity.exit

bb.gh:                                            ; preds = %bb.u, %bb.u
  %i.adx = getelementptr inbounds nuw i8, ptr %.11617, i64 36
  %i.ady = load i16, ptr %i.adx, align 4, !tbaa !124
  %i.adz = and i16 %i.ady, 1
  %.not1992 = icmp eq i16 %i.adz, 0
  br i1 %.not1992, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.aea = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  %i.aeb = load i32, ptr %i.aea, align 4, !tbaa !190
  %i.aec = icmp eq i32 %i.aeb, 0
  br i1 %i.aec, label %sqlite3VdbeIntegerAffinity.exit, label %bb.gk

bb.gj:                                            ; preds = %bb.gh
  %i.aed = call fastcc double @sqlite3VdbeRealValue(ptr noundef nonnull %.11617)
  %i.aee = fcmp une double %i.aed, 0.000000e+00
  %i.aef = load i8, ptr %i.dm, align 8, !tbaa !137
  %i.aeg = icmp ne i8 %i.aef, 64
  %spec.select = xor i1 %i.aee, %i.aeg
  br i1 %spec.select, label %sqlite3VdbeIntegerAffinity.exit, label %bb.gk

bb.gk:                                            ; preds = %bb.gi, %bb.gj
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.aei = load i32, ptr %i.aeh, align 8, !tbaa !140
  %i.aej = add nsw i32 %i.aei, -1
  br label %sqlite3VdbeIntegerAffinity.exit

bb.gl:                                            ; preds = %bb.u
  %i.aek = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  %i.ael = load i32, ptr %i.aek, align 4, !tbaa !190
  br label %bb.gm

bb.gm:                                            ; preds = %bb.go, %bb.gl
  %.01702 = phi i32 [ %i.ael, %bb.gl ], [ %i.aet, %bb.go ] ; 2 uses
  %.41620 = phi ptr [ %.11617, %bb.gl ], [ %i.aes, %bb.go ] ; 3 uses
  %i.aem = getelementptr inbounds nuw i8, ptr %.41620, i64 36
  %i.aen = load i16, ptr %i.aem, align 4, !tbaa !124
  %i.aeo = and i16 %i.aen, 1
  %.not1991 = icmp eq i16 %i.aeo, 0
  br i1 %.not1991, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.aep = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.aeq = load i32, ptr %i.aep, align 8, !tbaa !140
  %i.aer = add nsw i32 %i.aeq, -1
  br label %sqlite3VdbeIntegerAffinity.exit

bb.go:                                            ; preds = %bb.gm
  %i.aes = getelementptr inbounds nuw i8, ptr %.41620, i64 48 ; 2 uses
  %i.aet = add nsw i32 %.01702, -1
  %i.aeu = icmp sgt i32 %.01702, 1
  br i1 %i.aeu, label %bb.gm, label %sqlite3VdbeIntegerAffinity.exit, !llvm.loop !950

bb.gp:                                            ; preds = %bb.u
  %i.aev = getelementptr inbounds nuw i8, ptr %.11617, i64 36
  %i.aew = load i16, ptr %i.aev, align 4, !tbaa !124
  %i.aex = and i16 %i.aew, 1
  %i.aey = icmp eq i16 %i.aex, 0
  br i1 %i.aey, label %bb.gq, label %sqlite3VdbeIntegerAffinity.exit

bb.gq:                                            ; preds = %bb.gp
  %i.aez = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.afa = load i32, ptr %i.aez, align 8, !tbaa !140
  %i.afb = add nsw i32 %i.afa, -1
  br label %sqlite3VdbeIntegerAffinity.exit

bb.gr:                                            ; preds = %bb.u
  %i.afc = load ptr, ptr %i.bb, align 8, !tbaa !154
  %i.afd = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.afe = load i32, ptr %i.afd, align 4, !tbaa !141
  %i.aff = sext i32 %i.afe to i64
  %i.afg = getelementptr inbounds [8 x i8], ptr %i.afc, i64 %i.aff
  %i.afh = load ptr, ptr %i.afg, align 8, !tbaa !283
  %i.afi = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.afj = load i32, ptr %i.afi, align 8, !tbaa !140
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afh, i64 104
  store i32 %i.afj, ptr %i.afk, align 8, !tbaa !951
  br label %sqlite3VdbeIntegerAffinity.exit

bb.gs:                                            ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #43
  %i.afl = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.afm = load i32, ptr %i.afl, align 4, !tbaa !141
  %i.afn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.afo = load i32, ptr %i.afn, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  store i16 0, ptr %i.cn, align 4, !tbaa !124
  store ptr null, ptr %i.co, align 8, !tbaa !130
  %i.afp = load ptr, ptr %i.az, align 8, !tbaa !133
  %i.afq = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  %i.afr = load i32, ptr %i.afq, align 4, !tbaa !190
  %i.afs = sext i32 %i.afr to i64
  %i.aft = getelementptr inbounds [48 x i8], ptr %i.afp, i64 %i.afs ; 12 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 36 ; 8 uses
  %i.afv = load i16, ptr %i.afu, align 4, !tbaa !124
  %i.afw = and i16 %i.afv, -32
  %i.afx = or disjoint i16 %i.afw, 1
  store i16 %i.afx, ptr %i.afu, align 4, !tbaa !124
  %i.afy = load ptr, ptr %i.bb, align 8, !tbaa !154
  %i.afz = sext i32 %i.afm to i64
  %i.aga = getelementptr inbounds [8 x i8], ptr %i.afy, i64 %i.afz
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !283 ; 22 uses
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !293
  %.not1976 = icmp eq ptr %i.agc, null
  br i1 %.not1976, label %bb.ha, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.agd = call fastcc i32 @sqlite3VdbeCursorMoveto(ptr noundef nonnull %i.agb) ; 2 uses
  %.not1977 = icmp eq i32 %i.agd, 0
  br i1 %.not1977, label %bb.gu, label %bb.is

bb.gu:                                            ; preds = %bb.gt
  %i.age = load ptr, ptr %i.agb, align 8, !tbaa !293 ; 5 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.agb, i64 36
  %i.agg = load i8, ptr %i.agf, align 4, !tbaa !952
  %.not1978 = icmp eq i8 %i.agg, 0
  br i1 %.not1978, label %bb.gv, label %.thread2310

bb.gv:                                            ; preds = %bb.gu
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agb, i64 136
  %i.agi = load i32, ptr %i.agh, align 8, !tbaa !953
  %i.agj = load i32, ptr %i.cp, align 4, !tbaa !163
  %i.agk = icmp eq i32 %i.agi, %i.agj
  br i1 %i.agk, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.agl = getelementptr inbounds nuw i8, ptr %i.agb, i64 140
  %i.agm = load i32, ptr %i.agl, align 4, !tbaa !954 ; 2 uses
  store i32 %i.agm, ptr %i.c, align 4, !tbaa !4
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agb, i64 160
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !955
  br label %bb.hb

bb.gx:                                            ; preds = %bb.gv
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agb, i64 41
  %i.agq = load i8, ptr %i.agp, align 1, !tbaa !956
  %.not1979 = icmp eq i8 %i.agq, 0
  br i1 %.not1979, label %bb.gz, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #43
  %i.agr = call fastcc i32 @sqlite3BtreeKeySize(ptr noundef %i.age, ptr noundef %i.d) ; 0 uses
  %i.ags = load i64, ptr %i.d, align 8, !tbaa !28
  %i.agt = trunc i64 %i.ags to i32                ; 2 uses
  store i32 %i.agt, ptr %i.c, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  br label %bb.hb

bb.gz:                                            ; preds = %bb.gx
  call fastcc void @sqlite3BtreeDataSize(ptr noundef %i.age, ptr noundef %i.c)
  %.pr = load i32, ptr %i.c, align 4, !tbaa !4
  br label %bb.hb

bb.ha:                                            ; preds = %bb.gs
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agb, i64 64
  %i.agv = load i32, ptr %i.agu, align 8, !tbaa !957 ; 2 uses
  store i32 %i.agv, ptr %i.c, align 4, !tbaa !4
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agb, i64 72
  %i.agx = load ptr, ptr %i.agw, align 8, !tbaa !627
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agb, i64 136
  store i32 0, ptr %i.agy, align 8, !tbaa !953
  br label %bb.hb

bb.hb:                                            ; preds = %bb.gy, %bb.gz, %bb.gw, %bb.ha
  %i.agz = phi i32 [ %i.agv, %bb.ha ], [ %i.agt, %bb.gy ], [ %.pr, %bb.gz ], [ %i.agm, %bb.gw ] ; 4 uses
  %.01709 = phi ptr [ null, %bb.ha ], [ %i.age, %bb.gy ], [ %i.age, %bb.gz ], [ %i.age, %bb.gw ] ; 4 uses
  %.11705 = phi ptr [ %i.agx, %bb.ha ], [ null, %bb.gy ], [ null, %bb.gz ], [ %i.ago, %bb.gw ] ; 4 uses
  %.01720.in = getelementptr inbounds nuw i8, ptr %i.agb, i64 104
  %.01720 = load i32, ptr %.01720.in, align 8, !tbaa !951 ; 3 uses
  %i.aha = icmp eq i32 %i.agz, 0
  br i1 %i.aha, label %.thread2310, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.ahb = icmp ugt i32 %i.agz, 1000000000
  br i1 %i.ahb, label %.thread2314, label %bb.hd

.thread2314:                                      ; preds = %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  br label %sqlite3VdbeMemShallowCopy.exit

bb.hd:                                            ; preds = %bb.hc
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agb, i64 136 ; 2 uses
  %i.ahd = load i32, ptr %i.ahc, align 8, !tbaa !953
  %i.ahe = load i32, ptr %i.cp, align 4, !tbaa !163 ; 2 uses
  %i.ahf = icmp eq i32 %i.ahd, %i.ahe
  br i1 %i.ahf, label %bb.he, label %bb.hf

bb.he:                                            ; preds = %bb.hd
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agb, i64 144
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !285
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.agb, i64 152
  %i.ahj = load ptr, ptr %i.ahi, align 8, !tbaa !301
  br label %bb.ic

bb.hf:                                            ; preds = %bb.hd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #43
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.agb, i64 144 ; 3 uses
  %i.ahl = load ptr, ptr %i.ahk, align 8, !tbaa !285 ; 2 uses
  %i.ahm = icmp eq ptr %i.ahl, null
  br i1 %i.ahm, label %bb.hg, label %.thread2289

bb.hg:                                            ; preds = %bb.hf
  %i.ahn = load i8, ptr %i.au, align 2, !tbaa !129
  %i.aho = icmp eq i8 %i.ahn, 0
  br i1 %i.aho, label %bb.hh, label %.thread2318

bb.hh:                                            ; preds = %bb.hg
  %i.ahp = shl i32 %.01720, 4
  %i.ahq = call ptr @sqlite3_malloc(i32 noundef %i.ahp) ; 3 uses
  %i.ahr = icmp eq ptr %i.ahq, null
  br i1 %i.ahr, label %bb.hi, label %..thread2289_crit_edge

bb.hi:                                            ; preds = %bb.hh
  store i8 1, ptr %i.au, align 2, !tbaa !129
  br label %.thread2318

..thread2289_crit_edge:                           ; preds = %bb.hh
  store ptr %i.ahq, ptr %i.ahk, align 8, !tbaa !285
  %.pre2838.a = load i32, ptr %i.cp, align 4, !tbaa !163
  br label %.thread2289

.thread2318:                                      ; preds = %bb.hg, %bb.hi
  store ptr null, ptr %i.ahk, align 8, !tbaa !285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  br label %sqlite3VtabUnlock.exit

.thread2289:                                      ; preds = %..thread2289_crit_edge, %bb.hf
  %i.ahs = phi i32 [ %.pre2838.a, %..thread2289_crit_edge ], [ %i.ahe, %bb.hf ]
  %.017102291 = phi ptr [ %i.ahq, %..thread2289_crit_edge ], [ %i.ahl, %bb.hf ] ; 3 uses
  %i.aht = zext i32 %.01720 to i64                ; 2 uses
  %i.ahu = getelementptr inbounds nuw [4 x i8], ptr %.017102291, i64 %i.aht ; 3 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.agb, i64 152
  store ptr %i.ahu, ptr %i.ahv, align 8, !tbaa !301
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.agb, i64 140
  store i32 %i.agz, ptr %i.ahw, align 4, !tbaa !954
  store i32 %i.ahs, ptr %i.ahc, align 8, !tbaa !953
  %.not1980 = icmp eq ptr %.11705, null
  br i1 %.not1980, label %bb.hj, label %bb.hm

bb.hj:                                            ; preds = %.thread2289
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.agb, i64 41
  %i.ahy = load i8, ptr %i.ahx, align 1, !tbaa !956
  %.not1981 = icmp eq i8 %i.ahy, 0
  br i1 %.not1981, label %bb.hl, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.ahz = call fastcc ptr @sqlite3BtreeKeyFetch(ptr noundef %.01709, ptr noundef %i.f)
  br label %.sink.split

bb.hl:                                            ; preds = %bb.hj
  %i.aia = call fastcc ptr @sqlite3BtreeDataFetch(ptr noundef %.01709, ptr noundef %i.f)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.hl, %bb.hk
  %.01722 = phi ptr [ %i.ahz, %bb.hk ], [ %i.aia, %bb.hl ] ; 2 uses
  %i.aib = load i32, ptr %i.f, align 4, !tbaa !4  ; 2 uses
  %.not1982 = icmp ult i32 %i.aib, %i.agz
  %i.aic = getelementptr inbounds nuw i8, ptr %i.agb, i64 160
  %..01722 = select i1 %.not1982, ptr null, ptr %.01722 ; 2 uses
  store ptr %..01722, ptr %i.aic, align 8, !tbaa !955
  br label %bb.hm

bb.hm:                                            ; preds = %.sink.split, %.thread2289
  %i.aid = phi i32 [ undef, %.thread2289 ], [ %i.aib, %.sink.split ]
  %.11723 = phi ptr [ %.11705, %.thread2289 ], [ %.01722, %.sink.split ] ; 3 uses
  %.21706 = phi ptr [ %.11705, %.thread2289 ], [ %..01722, %.sink.split ] ; 2 uses
  %i.aie = load i8, ptr %.11723, align 1, !tbaa !37 ; 2 uses
  %i.aif = zext i8 %i.aie to i32                  ; 2 uses
  store i32 %i.aif, ptr %i.e, align 4, !tbaa !4
  %i.aig = icmp sgt i8 %i.aie, -1
  br i1 %i.aig, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.aih = call fastcc i32 @sqlite3GetVarint32(ptr noundef nonnull %.11723, ptr noundef %i.e)
  %i.aii = zext nneg i32 %i.aih to i64
  %.pre2839.pre = load i32, ptr %i.e, align 4, !tbaa !4
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hm, %bb.hn
  %.pre2839.a = phi i32 [ %.pre2839.pre, %bb.hn ], [ %i.aif, %bb.hm ] ; 5 uses
  %i.aij = phi i64 [ %i.aii, %bb.hn ], [ 1, %bb.hm ]
  %.not1983 = icmp eq ptr %.21706, null
  %i.aik = icmp ult i32 %i.aid, %.pre2839.a
  %or.cond3067 = select i1 %.not1983, i1 %i.aik, i1 false
  br i1 %or.cond3067, label %bb.hp, label %bb.hr

bb.hp:                                            ; preds = %bb.ho
  store i16 0, ptr %i.cn, align 4, !tbaa !124
  store ptr null, ptr %i.co, align 8, !tbaa !130
  %i.ail = getelementptr inbounds nuw i8, ptr %i.agb, i64 41
  %i.aim = load i8, ptr %i.ail, align 1, !tbaa !956
  %i.ain = zext i8 %i.aim to i32
  %i.aio = call fastcc i32 @sqlite3VdbeMemFromBtree(ptr noundef %.01709, i32 noundef 0, i32 noundef %.pre2839.a, i32 noundef %i.ain, ptr noundef %4) ; 2 uses
  %.not1984 = icmp eq i32 %i.aio, 0
  br i1 %.not1984, label %bb.hq, label %select.unfold

bb.hq:                                            ; preds = %bb.hp
  %i.aip = load ptr, ptr %i.cq, align 8, !tbaa !119
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %bb.ho
  %.21724 = phi ptr [ %.11723, %bb.ho ], [ %i.aip, %bb.hq ] ; 2 uses
  %i.aiq = zext i32 %.pre2839.a to i64
  %i.air = getelementptr inbounds nuw i8, ptr %.21724, i64 %i.aiq ; 2 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %.21724, i64 %i.aij ; 2 uses
  %.not2723 = icmp eq i32 %.01720, 0
  br i1 %.not2723, label %._crit_edge2697, label %.lr.ph2696

.lr.ph2696:                                       ; preds = %bb.hr, %bb.hy
  %8 = phi i32 [ %i.ajm, %bb.hy ], [ %.pre2839.a, %bb.hr ] ; 2 uses
  %indvars.iv2811 = phi i64 [ %indvars.iv.next2812, %bb.hy ], [ 0, %bb.hr ] ; 3 uses
  %.017252693 = phi ptr [ %.11726, %bb.hy ], [ %i.ais, %bb.hr ] ; 5 uses
  %i.ait = icmp ult ptr %.017252693, %i.air
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %i.ahu, i64 %indvars.iv2811 ; 2 uses
  br i1 %i.ait, label %bb.hs, label %bb.hx

bb.hs:                                            ; preds = %.lr.ph2696
  store i32 %8, ptr %i.aiu, align 4, !tbaa !4
  %i.aiv = load i8, ptr %.017252693, align 1, !tbaa !37 ; 2 uses
  %i.aiw = zext i8 %i.aiv to i32                  ; 2 uses
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %.017102291, i64 %indvars.iv2811 ; 3 uses
  store i32 %i.aiw, ptr %i.aix, align 4, !tbaa !4
  %i.aiy = icmp sgt i8 %i.aiv, -1
  br i1 %i.aiy, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.aiz = call fastcc i32 @sqlite3GetVarint32(ptr noundef nonnull %.017252693, ptr noundef %i.aix)
  %i.aja = zext nneg i32 %i.aiz to i64
  %.pr2293 = load i32, ptr %i.aix, align 4, !tbaa !4
  br label %bb.hu

bb.hu:                                            ; preds = %bb.hs, %bb.ht
  %i.ajb = phi i32 [ %i.aiw, %bb.hs ], [ %.pr2293, %bb.ht ] ; 3 uses
  %i.ajc = phi i64 [ 1, %bb.hs ], [ %i.aja, %bb.ht ]
  %i.ajd = getelementptr inbounds nuw i8, ptr %.017252693, i64 %i.ajc
  %i.aje = icmp ugt i32 %i.ajb, 11
  br i1 %i.aje, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  %i.ajf = add i32 %i.ajb, -12
  %i.ajg = lshr i32 %i.ajf, 1
  br label %sqlite3VdbeSerialTypeLen.exit

bb.hw:                                            ; preds = %bb.hu
  %i.ajh = zext nneg i32 %i.ajb to i64
  %i.aji = getelementptr inbounds nuw i8, ptr @sqlite3VdbeSerialTypeLen.aSize, i64 %i.ajh
  %i.ajj = load i8, ptr %i.aji, align 1, !tbaa !37
  %i.ajk = zext i8 %i.ajj to i32
  br label %sqlite3VdbeSerialTypeLen.exit

sqlite3VdbeSerialTypeLen.exit:                    ; preds = %bb.hv, %bb.hw
  %.0.i2136 = phi i32 [ %i.ajg, %bb.hv ], [ %i.ajk, %bb.hw ]
  %9 = load i32, ptr %i.e, align 4, !tbaa !4
  %i.ajl = add i32 %9, %.0.i2136                  ; 2 uses
  store i32 %i.ajl, ptr %i.e, align 4, !tbaa !4
  br label %bb.hy

bb.hx:                                            ; preds = %.lr.ph2696
  store i32 0, ptr %i.aiu, align 4, !tbaa !4
  br label %bb.hy

bb.hy:                                            ; preds = %sqlite3VdbeSerialTypeLen.exit, %bb.hx
  %i.ajm = phi i32 [ %i.ajl, %sqlite3VdbeSerialTypeLen.exit ], [ %8, %bb.hx ] ; 2 uses
  %.11726 = phi ptr [ %i.ajd, %sqlite3VdbeSerialTypeLen.exit ], [ %.017252693, %bb.hx ] ; 2 uses
  %indvars.iv.next2812 = add nuw nsw i64 %indvars.iv2811, 1 ; 2 uses
  %exitcond2815.not = icmp eq i64 %indvars.iv.next2812, %i.aht
  br i1 %exitcond2815.not, label %._crit_edge2697, label %.lr.ph2696, !llvm.loop !958

._crit_edge2697:                                  ; preds = %bb.hy, %bb.hr
  %i.ajn = phi i32 [ %.pre2839.a, %bb.hr ], [ %i.ajm, %bb.hy ]
  %.01725.lcssa = phi ptr [ %i.ais, %bb.hr ], [ %.11726, %bb.hy ]
  %i.ajo = load i16, ptr %i.cn, align 4, !tbaa !124
  %i.ajp = and i16 %i.ajo, 64
  %.not1985 = icmp eq i16 %i.ajp, 0
  br i1 %.not1985, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %._crit_edge2697
  call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %4)
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %._crit_edge2697
  store i16 1, ptr %i.cn, align 4, !tbaa !124
  %i.ajq = icmp ugt ptr %.01725.lcssa, %i.air
  %10 = load i32, ptr %i.c, align 4
  %i.ajr = icmp ugt i32 %i.ajn, %10
  %or.cond3069 = select i1 %i.ajq, i1 true, i1 %i.ajr
  br i1 %or.cond3069, label %select.unfold, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.he
  %.21715 = phi ptr [ %i.ahj, %bb.he ], [ %i.ahu, %bb.ib ]
  %.11711 = phi ptr [ %i.ahh, %bb.he ], [ %.017102291, %bb.ib ] ; 2 uses
  %.41708 = phi ptr [ %.11705, %bb.he ], [ %.21706, %bb.ib ] ; 2 uses
  %i.ajs = sext i32 %i.afo to i64                 ; 3 uses
  %i.ajt = getelementptr inbounds [4 x i8], ptr %.21715, i64 %i.ajs ; 2 uses
  %i.aju = load i32, ptr %i.ajt, align 4, !tbaa !4 ; 2 uses
  %.not1986 = icmp eq i32 %i.aju, 0
  br i1 %.not1986, label %bb.in, label %bb.id

bb.id:                                            ; preds = %bb.ic
  %.not1987 = icmp eq ptr %.41708, null
  br i1 %.not1987, label %bb.ih, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.ajv = load i16, ptr %i.afu, align 4, !tbaa !124
  %i.ajw = and i16 %i.ajv, 64
  %.not1989 = icmp eq i16 %i.ajw, 0
  %i.ajx = zext i32 %i.aju to i64
  %i.ajy = getelementptr inbounds nuw i8, ptr %.41708, i64 %i.ajx ; 2 uses
  %i.ajz = getelementptr inbounds [4 x i8], ptr %.11711, i64 %i.ajs
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !4 ; 2 uses
  br i1 %.not1989, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.akb = call fastcc i32 @sqlite3VdbeSerialGet(ptr noundef nonnull %i.ajy, i32 noundef %i.aka, ptr noundef nonnull %4) ; 0 uses
  store ptr %i.ae, ptr %i.co, align 8, !tbaa !130
  %i.akc = call fastcc i32 @sqlite3VdbeMemCopy(ptr noundef nonnull %i.aft, ptr noundef nonnull %4) ; 0 uses
  br label %bb.im

bb.ig:                                            ; preds = %bb.ie
  %i.akd = call fastcc i32 @sqlite3VdbeSerialGet(ptr noundef nonnull %i.ajy, i32 noundef %i.aka, ptr noundef nonnull %i.aft) ; 0 uses
  br label %bb.im

bb.ih:                                            ; preds = %bb.id
  %i.ake = getelementptr inbounds [4 x i8], ptr %.11711, i64 %i.ajs ; 2 uses
  %i.akf = load i32, ptr %i.ake, align 4, !tbaa !4 ; 3 uses
  %i.akg = icmp ugt i32 %i.akf, 11
  br i1 %i.akg, label %bb.ii, label %bb.ij

bb.ii:                                            ; preds = %bb.ih
  %i.akh = add i32 %i.akf, -12
  %i.aki = lshr i32 %i.akh, 1
  br label %sqlite3VdbeSerialTypeLen.exit2138

bb.ij:                                            ; preds = %bb.ih
  %i.akj = zext nneg i32 %i.akf to i64
  %i.akk = getelementptr inbounds nuw i8, ptr @sqlite3VdbeSerialTypeLen.aSize, i64 %i.akj
  %i.akl = load i8, ptr %i.akk, align 1, !tbaa !37
  %i.akm = zext i8 %i.akl to i32
  br label %sqlite3VdbeSerialTypeLen.exit2138

sqlite3VdbeSerialTypeLen.exit2138:                ; preds = %bb.ii, %bb.ij
  %.0.i2137 = phi i32 [ %i.aki, %bb.ii ], [ %i.akm, %bb.ij ]
  %i.akn = load i16, ptr %i.cn, align 4, !tbaa !124
  %i.ako = and i16 %i.akn, 64
  %.not.i2139 = icmp eq i16 %i.ako, 0
  br i1 %.not.i2139, label %sqlite3VdbeMemMove.exit2140, label %bb.ik

bb.ik:                                            ; preds = %sqlite3VdbeSerialTypeLen.exit2138
  call fastcc void @sqlite3VdbeMemRelease(ptr noundef nonnull %4)
  br label %sqlite3VdbeMemMove.exit2140

sqlite3VdbeMemMove.exit2140:                      ; preds = %sqlite3VdbeSerialTypeLen.exit2138, %bb.ik
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.aft, i64 48, i1 false)
  store i16 1, ptr %i.afu, align 4, !tbaa !124
  %i.akp = getelementptr inbounds nuw i8, ptr %i.aft, i64 40
  store ptr null, ptr %i.akp, align 8, !tbaa !122
  %i.akq = load i32, ptr %i.ajt, align 4, !tbaa !4
  %i.akr = getelementptr inbounds nuw i8, ptr %i.agb, i64 41
  %i.aks = load i8, ptr %i.akr, align 1, !tbaa !956
  %i.akt = zext i8 %i.aks to i32
  %i.aku = call fastcc i32 @sqlite3VdbeMemFromBtree(ptr noundef %.01709, i32 noundef %i.akq, i32 noundef %.0.i2137, i32 noundef %i.akt, ptr noundef %4) ; 2 uses
  %.not1988 = icmp eq i32 %i.aku, 0
  br i1 %.not1988, label %bb.il, label %.thread2310

bb.il:                                            ; preds = %sqlite3VdbeMemMove.exit2140
  %i.akv = load ptr, ptr %i.cq, align 8, !tbaa !119
  %i.akw = load i32, ptr %i.ake, align 4, !tbaa !4
  %i.akx = call fastcc i32 @sqlite3VdbeSerialGet(ptr noundef %i.akv, i32 noundef %i.akw, ptr noundef nonnull %i.aft) ; 0 uses
  br label %bb.im

bb.im:                                            ; preds = %bb.if, %bb.ig, %bb.il
  %i.aky = getelementptr inbounds nuw i8, ptr %i.aft, i64 39
  store i8 %i.ak, ptr %i.aky, align 1, !tbaa !125
  br label %sqlite3VdbeMemShallowCopy.exit2142

bb.in:                                            ; preds = %bb.ic
  %i.akz = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %i.ala = load i8, ptr %i.akz, align 1, !tbaa !191
  %i.alb = icmp eq i8 %i.ala, -8
  br i1 %i.alb, label %bb.io, label %sqlite3VdbeMemShallowCopy.exit2142

bb.io:                                            ; preds = %bb.in
  %i.alc = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.ald = load ptr, ptr %i.alc, align 8, !tbaa !37
  call fastcc void @sqlite3VdbeMemRelease(ptr noundef %i.aft)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aft, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.ald, i64 40, i1 false)
  %i.ale = getelementptr inbounds nuw i8, ptr %i.aft, i64 40
  store ptr null, ptr %i.ale, align 8, !tbaa !122
  %i.alf = load i16, ptr %i.afu, align 4, !tbaa !124 ; 2 uses
  %i.alg = and i16 %i.alf, 64
  %.not.i2141 = icmp eq i16 %i.alg, 0
  br i1 %.not.i2141, label %sqlite3VdbeMemShallowCopy.exit2142, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.alh = and i16 %i.alf, -449
  %i.ali = or disjoint i16 %i.alh, 128
  store i16 %i.ali, ptr %i.afu, align 4, !tbaa !124
  br label %sqlite3VdbeMemShallowCopy.exit2142

sqlite3VdbeMemShallowCopy.exit2142:               ; preds = %bb.ip, %bb.io, %bb.in, %bb.im
  %i.alj = load i16, ptr %i.cn, align 4, !tbaa !124
  %i.alk = and i16 %i.alj, 64
  %.not1990 = icmp eq i16 %i.alk, 0
  br i1 %.not1990, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %sqlite3VdbeMemShallowCopy.exit2142
  %i.all = load i16, ptr %i.afu, align 4, !tbaa !124
  %i.alm = and i16 %i.all, -481
  %i.aln = or disjoint i16 %i.alm, 96
  store i16 %i.aln, ptr %i.afu, align 4, !tbaa !124
  %i.alo = load ptr, ptr %i.cq, align 8, !tbaa !119
  %i.alp = getelementptr inbounds nuw i8, ptr %i.aft, i64 24
  store ptr %i.alo, ptr %i.alp, align 8, !tbaa !119
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %sqlite3VdbeMemShallowCopy.exit2142
  %i.alq = call fastcc range(i32 0, 8) i32 @sqlite3VdbeMemDynamicify(ptr noundef %i.aft)
  br label %.thread2310

select.unfold:                                    ; preds = %bb.hp, %bb.ia
  %.91593.ph = phi i32 [ %i.aio, %bb.hp ], [ 11, %bb.ia ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  br label %.thread2310

.thread2310:                                      ; preds = %bb.gu, %sqlite3VdbeMemMove.exit2140, %bb.hb, %bb.ir, %select.unfold
  %.111595.ph = phi i32 [ 0, %bb.hb ], [ %.91593.ph, %select.unfold ], [ %i.aku, %sqlite3VdbeMemMove.exit2140 ], [ %i.alq, %bb.ir ], [ 0, %bb.gu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  br label %sqlite3VdbeIntegerAffinity.exit

bb.is:                                            ; preds = %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #43
  br label %.thread2357

bb.it:                                            ; preds = %bb.u
  %i.alr = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.als = load i32, ptr %i.alr, align 4, !tbaa !141
  %i.alt = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.alu = load ptr, ptr %i.alt, align 8, !tbaa !37 ; 2 uses
  %i.alv = load ptr, ptr %i.az, align 8, !tbaa !133
  %i.alw = sext i32 %i.als to i64
  %i.alx = getelementptr inbounds [48 x i8], ptr %i.alv, i64 %i.alw ; 6 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.alz = load i32, ptr %i.aly, align 8, !tbaa !140
  %i.ama = sext i32 %i.alz to i64
  %i.amb = getelementptr [48 x i8], ptr %i.alx, i64 %i.ama
  %i.amc = getelementptr i8, ptr %i.amb, i64 -48  ; 4 uses
  %i.amd = load i8, ptr %i.ci, align 4, !tbaa !164 ; 2 uses
  %.not19672667 = icmp ugt ptr %i.alx, %i.amc     ; 2 uses
  br i1 %.not19672667, label %._crit_edge2676, label %.lr.ph2675

.lr.ph2675:                                       ; preds = %bb.it
  %.not1972 = icmp eq ptr %i.alu, null
  %i.ame = ptrtoint ptr %i.alx to i64
  %i.amf = icmp ugt i8 %i.amd, 3
  br label %bb.iu

bb.iu:                                            ; preds = %.lr.ph2675, %bb.jv
  %.017272671 = phi ptr [ %i.alx, %.lr.ph2675 ], [ %i.apm, %bb.jv ] ; 19 uses
  %.017302670 = phi i64 [ 0, %.lr.ph2675 ], [ %i.apg, %bb.jv ]
  %.017322669 = phi i32 [ 0, %.lr.ph2675 ], [ %i.aph, %bb.jv ]
  %.017342668 = phi i32 [ 0, %.lr.ph2675 ], [ %.11735, %bb.jv ] ; 2 uses
  br i1 %.not1972, label %applyAffinity.exit2149, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.amg = ptrtoint ptr %.017272671 to i64
  %i.amh = sub i64 %i.amg, %i.ame
  %i.ami = sdiv exact i64 %i.amh, 48
  %i.amj = getelementptr inbounds i8, ptr %i.alu, i64 %i.ami
  %i.amk = load i8, ptr %i.amj, align 1, !tbaa !37
  switch i8 %i.amk, label %bb.iz [
    i8 97, label %bb.iw
    i8 98, label %applyAffinity.exit2149
  ]

bb.iw:                                            ; preds = %bb.iv
  %i.aml = getelementptr inbounds nuw i8, ptr %.017272671, i64 36 ; 3 uses
  %i.amm = load i16, ptr %i.aml, align 4, !tbaa !124 ; 2 uses
end_hunk_1
begin_hunk_2_@sqlite3DeleteTriggerStep:bb.a
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %sqlite3_free.exit.sqlite3_free.exit12_crit_edge, label %.preheader.i

sqlite3_free.exit.sqlite3_free.exit12_crit_edge:  ; preds = %sqlite3_free.exit
  %.pre = load i64, ptr @mem.5, align 8, !tbaa !22
  br label %sqlite3_free.exit12

.preheader.i:                                     ; preds = %sqlite3_free.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %mem.5.promoted.i = load i64, ptr @mem.5, align 8 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1177 ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %sqlite3_free.exit.i
  %i.z = phi i32 [ %i.aj, %sqlite3_free.exit.i ], [ %i.x, %.preheader.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %sqlite3_free.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.aa = phi i64 [ %i.ak, %sqlite3_free.exit.i ], [ %mem.5.promoted.i, %.preheader.i ] ; 2 uses
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !1180
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1181 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %sqlite3_free.exit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !28
  %sext.i.i = shl i64 %i.ag, 32
  %i.ah = ashr exact i64 %sext.i.i, 32
  %i.ai = sub nsw i64 %i.aa, %i.ah
  tail call void @free(ptr noundef nonnull %i.af) #43
  %.pre.i = load i32, ptr %i.w, align 8, !tbaa !1177
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %bb.d, %.lr.ph.i
  %i.aj = phi i32 [ %i.z, %.lr.ph.i ], [ %.pre.i, %bb.d ] ; 2 uses
  %i.ak = phi i64 [ %i.aa, %.lr.ph.i ], [ %i.ai, %bb.d ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.al = sext i32 %i.aj to i64
  %i.am = icmp slt i64 %indvars.iv.next.i, %i.al
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1183

._crit_edge.i:                                    ; preds = %sqlite3_free.exit.i, %.preheader.i
  %i.an = phi i64 [ %mem.5.promoted.i, %.preheader.i ], [ %i.ak, %sqlite3_free.exit.i ] ; 2 uses
  %i.ao = load ptr, ptr %i.u, align 8, !tbaa !1180 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %sqlite3_free.exit11.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !28
  %sext.i8.i = shl i64 %i.ar, 32
  %i.as = ashr exact i64 %sext.i8.i, 32
  %i.at = sub nsw i64 %i.an, %i.as
  tail call void @free(ptr noundef nonnull %i.aq) #43
  br label %sqlite3_free.exit11.i

sqlite3_free.exit11.i:                            ; preds = %bb.e, %._crit_edge.i
  %i.au = phi i64 [ %i.an, %._crit_edge.i ], [ %i.at, %bb.e ]
  %i.av = getelementptr inbounds i8, ptr %i.u, i64 -8 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !28
  %sext.i10.i = shl i64 %i.aw, 32
  %i.ax = ashr exact i64 %sext.i10.i, 32
  %i.ay = sub nsw i64 %i.au, %i.ax
  tail call void @free(ptr noundef nonnull %i.av) #43
  br label %sqlite3_free.exit12

sqlite3_free.exit12:                              ; preds = %sqlite3_free.exit.sqlite3_free.exit12_crit_edge, %sqlite3_free.exit11.i
  %i.az = phi i64 [ %.pre, %sqlite3_free.exit.sqlite3_free.exit12_crit_edge ], [ %i.ay, %sqlite3_free.exit11.i ]
  %i.ba = getelementptr inbounds i8, ptr %.014, i64 -8 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !28
  %sext.i11 = shl i64 %i.bb, 32
  %i.bc = ashr exact i64 %sext.i11, 32
  %i.bd = sub nsw i64 %i.az, %i.bc
  store i64 %i.bd, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.ba) #43
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1193

._crit_edge:                                      ; preds = %sqlite3_free.exit12, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3ExprDelete(ptr noundef captures(address_is_null) %0) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %sqlite3_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1194 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %sqlite3_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !28
  %sext.i = shl i64 %i.i, 32
  %i.j = ashr exact i64 %sext.i, 32
  %i.k = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.l = sub nsw i64 %i.k, %i.j
  store i64 %i.l, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.h) #43
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.d, %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, 1
  %.not10 = icmp eq i32 %i.o, 0
  br i1 %.not10, label %sqlite3_free.exit12, label %bb.e

bb.e:                                             ; preds = %sqlite3_free.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1197 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %sqlite3_free.exit12, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !28
  %sext.i11 = shl i64 %i.t, 32
  %i.u = ashr exact i64 %sext.i11, 32
  %i.v = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.w = sub nsw i64 %i.v, %i.u
  store i64 %i.w, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.s) #43
  br label %sqlite3_free.exit12

sqlite3_free.exit12:                              ; preds = %bb.f, %bb.e, %sqlite3_free.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1198
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1199
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1200 ; 5 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %sqlite3ExprListDelete.exit, label %bb.g

bb.g:                                             ; preds = %sqlite3_free.exit12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1201 ; 2 uses
  %i.ag = load i32, ptr %i.ac, align 8, !tbaa !1204
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %sqlite3_free.exit20
  %.0.i24 = phi ptr [ %i.as, %sqlite3_free.exit20 ], [ %i.af, %bb.g ] ; 3 uses
  %.09.i23 = phi i32 [ %i.ar, %sqlite3_free.exit20 ], [ 0, %bb.g ]
  %i.ai = load ptr, ptr %.0.i24, align 8, !tbaa !1205
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.ai), !inline_history !1207
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i24, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1208 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %sqlite3_free.exit20, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -8 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !28
  %sext.i19 = shl i64 %i.an, 32
  %i.ao = ashr exact i64 %sext.i19, 32
  %i.ap = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.aq = sub nsw i64 %i.ap, %i.ao
  store i64 %i.aq, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.am) #43
  br label %sqlite3_free.exit20

sqlite3_free.exit20:                              ; preds = %.lr.ph, %bb.h
  %i.ar = add nuw nsw i32 %.09.i23, 1             ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i24, i64 24
  %i.at = load i32, ptr %i.ac, align 8, !tbaa !1204
  %i.au = icmp slt i32 %i.ar, %i.at
  br i1 %i.au, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !1209

._crit_edge.loopexit:                             ; preds = %sqlite3_free.exit20
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !1201
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.g
  %i.av = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.af, %bb.g ] ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  %.pre26.a = load i64, ptr @mem.5, align 8, !tbaa !22 ; 2 uses
  br i1 %i.aw, label %sqlite3_free.exit16, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 -8 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !28
  %sext.i17 = shl i64 %i.ay, 32
  %i.az = ashr exact i64 %sext.i17, 32
  %i.ba = sub nsw i64 %.pre26.a, %i.az
  store i64 %i.ba, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.ax) #43
  %.pre25 = load i64, ptr @mem.5, align 8, !tbaa !22
  br label %sqlite3_free.exit16

sqlite3_free.exit16:                              ; preds = %._crit_edge, %bb.i
  %i.bb = phi i64 [ %.pre26.a, %._crit_edge ], [ %.pre25, %bb.i ]
  %i.bc = getelementptr inbounds i8, ptr %i.ac, i64 -8 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !28
  %sext.i15 = shl i64 %i.bd, 32
  %i.be = ashr exact i64 %sext.i15, 32
  %i.bf = sub nsw i64 %i.bb, %i.be
  store i64 %i.bf, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.bc) #43
  br label %sqlite3ExprListDelete.exit

sqlite3ExprListDelete.exit:                       ; preds = %sqlite3_free.exit12, %sqlite3_free.exit16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !1210 ; 3 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %sqlite3ExprListDelete.exit.sqlite3_free.exit14_crit_edge, label %sqlite3_free.exit22

sqlite3ExprListDelete.exit.sqlite3_free.exit14_crit_edge: ; preds = %sqlite3ExprListDelete.exit
  %.pre27 = load i64, ptr @mem.5, align 8, !tbaa !22
  br label %sqlite3_free.exit14

sqlite3_free.exit22:                              ; preds = %sqlite3ExprListDelete.exit
  tail call fastcc void @clearSelect(ptr noundef %i.bh), !inline_history !1211
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !28
  %sext.i21 = shl i64 %i.bj, 32
  %i.bk = ashr exact i64 %sext.i21, 32
  %i.bl = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.bm = sub nsw i64 %i.bl, %i.bk
  tail call void @free(ptr noundef nonnull %i.bi) #43
  br label %sqlite3_free.exit14

sqlite3_free.exit14:                              ; preds = %sqlite3ExprListDelete.exit.sqlite3_free.exit14_crit_edge, %sqlite3_free.exit22
  %i.bn = phi i64 [ %.pre27, %sqlite3ExprListDelete.exit.sqlite3_free.exit14_crit_edge ], [ %i.bm, %sqlite3_free.exit22 ]
  %i.bo = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !28
  %sext.i13 = shl i64 %i.bp, 32
  %i.bq = ashr exact i64 %sext.i13, 32
  %i.br = sub nsw i64 %i.bn, %i.bq
  store i64 %i.br, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.bo) #43
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %sqlite3_free.exit14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3ExprListDelete(ptr noundef captures(address_is_null) %0) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1201 ; 2 uses
  %i.d = load i32, ptr %0, align 8, !tbaa !1204
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %sqlite3_free.exit
  %.016 = phi ptr [ %i.p, %sqlite3_free.exit ], [ %i.c, %bb.b ] ; 3 uses
  %.0915 = phi i32 [ %i.o, %sqlite3_free.exit ], [ 0, %bb.b ]
  %i.f = load ptr, ptr %.016, align 8, !tbaa !1205
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %.016, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1208 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %sqlite3_free.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !28
  %sext.i = shl i64 %i.k, 32
  %i.l = ashr exact i64 %sext.i, 32
  %i.m = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.n = sub nsw i64 %i.m, %i.l
  store i64 %i.n, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.j) #43
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %.lr.ph, %bb.c
  %i.o = add nuw nsw i32 %.0915, 1                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.016, i64 24
  %i.q = load i32, ptr %0, align 8, !tbaa !1204
  %i.r = icmp slt i32 %i.o, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !1209

._crit_edge.loopexit:                             ; preds = %sqlite3_free.exit
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !1201
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.s = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.c, %bb.b ] ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  %.pre17 = load i64, ptr @mem.5, align 8, !tbaa !22 ; 2 uses
  br i1 %i.t, label %sqlite3_free.exit14, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !28
  %sext.i11 = shl i64 %i.v, 32
  %i.w = ashr exact i64 %sext.i11, 32
  %i.x = sub nsw i64 %.pre17, %i.w
  tail call void @free(ptr noundef nonnull %i.u) #43
  br label %sqlite3_free.exit14

sqlite3_free.exit14:                              ; preds = %._crit_edge, %bb.d
  %i.y = phi i64 [ %.pre17, %._crit_edge ], [ %i.x, %bb.d ]
  %i.z = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !28
  %sext.i13 = shl i64 %i.aa, 32
  %i.ab = ashr exact i64 %sext.i13, 32
  %i.ac = sub nsw i64 %i.y, %i.ab
  store i64 %i.ac, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.z) #43
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %sqlite3_free.exit14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3SelectDelete(ptr noundef captures(address_is_null) %0) unnamed_addr #5 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %common.ret3, label %sqlite3_free.exit

common.ret3:                                      ; preds = %bb.a, %sqlite3_free.exit
  ret void

sqlite3_free.exit:                                ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !1212
  tail call fastcc void @sqlite3ExprListDelete(ptr noundef %i.a), !inline_history !1214
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1215
  tail call fastcc void @sqlite3SrcListDelete(ptr noundef %i.c), !inline_history !1214
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1216
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.e), !inline_history !1214
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1217
  tail call fastcc void @sqlite3ExprListDelete(ptr noundef %i.g), !inline_history !1214
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1218
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.i), !inline_history !1214
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1219
  tail call fastcc void @sqlite3ExprListDelete(ptr noundef %i.k), !inline_history !1214
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1220
  tail call fastcc void @sqlite3SelectDelete(ptr noundef %i.m), !inline_history !1214
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1221
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.o), !inline_history !1214
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1222
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.q), !inline_history !1214
  %i.r = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !28
  %sext.i = shl i64 %i.s, 32
  %i.t = ashr exact i64 %sext.i, 32
  %i.u = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.v = sub nsw i64 %i.u, %i.t
  store i64 %i.v, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.r) #43
  br label %common.ret3
}

; Function Attrs: nounwind uwtable
define internal fastcc void @clearSelect(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1212   ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %sqlite3ExprListDelete.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1201 ; 2 uses
  %i.e = load i32, ptr %i.a, align 8, !tbaa !1204
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %sqlite3_free.exit18
  %.0.i32 = phi ptr [ %i.q, %sqlite3_free.exit18 ], [ %i.d, %bb.b ] ; 3 uses
  %.09.i31 = phi i32 [ %i.p, %sqlite3_free.exit18 ], [ 0, %bb.b ]
  %i.g = load ptr, ptr %.0.i32, align 8, !tbaa !1205
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.g), !inline_history !1207
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i32, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1208 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %sqlite3_free.exit18, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !28
  %sext.i17 = shl i64 %i.l, 32
  %i.m = ashr exact i64 %sext.i17, 32
  %i.n = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.o = sub nsw i64 %i.n, %i.m
  store i64 %i.o, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.k) #43
  br label %sqlite3_free.exit18

sqlite3_free.exit18:                              ; preds = %.lr.ph, %bb.c
  %i.p = add nuw nsw i32 %.09.i31, 1              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i32, i64 24
  %i.r = load i32, ptr %i.a, align 8, !tbaa !1204
  %i.s = icmp slt i32 %i.p, %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !1209

._crit_edge.loopexit:                             ; preds = %sqlite3_free.exit18
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1201
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.t = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.d, %bb.b ] ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  %.pre44.a = load i64, ptr @mem.5, align 8, !tbaa !22 ; 2 uses
  br i1 %i.u, label %sqlite3_free.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !28
  %sext.i15 = shl i64 %i.w, 32
  %i.x = ashr exact i64 %sext.i15, 32
  %i.y = sub nsw i64 %.pre44.a, %i.x
  store i64 %i.y, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.v) #43
  %.pre43 = load i64, ptr @mem.5, align 8, !tbaa !22
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %._crit_edge, %bb.d
  %i.z = phi i64 [ %.pre44.a, %._crit_edge ], [ %.pre43, %bb.d ]
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 -8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !28
  %sext.i = shl i64 %i.ab, 32
  %i.ac = ashr exact i64 %sext.i, 32
  %i.ad = sub nsw i64 %i.z, %i.ac
  store i64 %i.ad, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.aa) #43
  br label %sqlite3ExprListDelete.exit

sqlite3ExprListDelete.exit:                       ; preds = %bb.a, %sqlite3_free.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1215
  tail call fastcc void @sqlite3SrcListDelete(ptr noundef %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1216
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1217 ; 5 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %sqlite3ExprListDelete.exit11, label %bb.e

bb.e:                                             ; preds = %sqlite3ExprListDelete.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !1201 ; 2 uses
  %i.an = load i32, ptr %i.aj, align 8, !tbaa !1204
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph36, label %._crit_edge37

.lr.ph36:                                         ; preds = %bb.e, %sqlite3_free.exit24
  %.0.i1034 = phi ptr [ %i.az, %sqlite3_free.exit24 ], [ %i.am, %bb.e ] ; 3 uses
  %.09.i933 = phi i32 [ %i.ay, %sqlite3_free.exit24 ], [ 0, %bb.e ]
  %i.ap = load ptr, ptr %.0.i1034, align 8, !tbaa !1205
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.ap), !inline_history !1207
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i1034, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1208 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %sqlite3_free.exit24, label %bb.f

bb.f:                                             ; preds = %.lr.ph36
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !28
  %sext.i23 = shl i64 %i.au, 32
  %i.av = ashr exact i64 %sext.i23, 32
  %i.aw = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.ax = sub nsw i64 %i.aw, %i.av
  store i64 %i.ax, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.at) #43
  br label %sqlite3_free.exit24

sqlite3_free.exit24:                              ; preds = %.lr.ph36, %bb.f
  %i.ay = add nuw nsw i32 %.09.i933, 1            ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i1034, i64 24
  %i.ba = load i32, ptr %i.aj, align 8, !tbaa !1204
  %i.bb = icmp slt i32 %i.ay, %i.ba
  br i1 %i.bb, label %.lr.ph36, label %._crit_edge37.loopexit, !llvm.loop !1209

._crit_edge37.loopexit:                           ; preds = %sqlite3_free.exit24
  %.pre45.a = load ptr, ptr %i.al, align 8, !tbaa !1201
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %._crit_edge37.loopexit, %bb.e
  %i.bc = phi ptr [ %.pre45.a, %._crit_edge37.loopexit ], [ %i.am, %bb.e ] ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  %.pre47.a = load i64, ptr @mem.5, align 8, !tbaa !22 ; 2 uses
  br i1 %i.bd, label %sqlite3_free.exit20, label %bb.g

bb.g:                                             ; preds = %._crit_edge37
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -8 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !28
  %sext.i21 = shl i64 %i.bf, 32
  %i.bg = ashr exact i64 %sext.i21, 32
  %i.bh = sub nsw i64 %.pre47.a, %i.bg
  store i64 %i.bh, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.be) #43
  %.pre46 = load i64, ptr @mem.5, align 8, !tbaa !22
  br label %sqlite3_free.exit20

sqlite3_free.exit20:                              ; preds = %._crit_edge37, %bb.g
  %i.bi = phi i64 [ %.pre47.a, %._crit_edge37 ], [ %.pre46, %bb.g ]
  %i.bj = getelementptr inbounds i8, ptr %i.aj, i64 -8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !28
  %sext.i19 = shl i64 %i.bk, 32
  %i.bl = ashr exact i64 %sext.i19, 32
  %i.bm = sub nsw i64 %i.bi, %i.bl
  store i64 %i.bm, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.bj) #43
  br label %sqlite3ExprListDelete.exit11

sqlite3ExprListDelete.exit11:                     ; preds = %sqlite3ExprListDelete.exit, %sqlite3_free.exit20
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1218
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.bo)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1219 ; 5 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %sqlite3ExprListDelete.exit14, label %bb.h

bb.h:                                             ; preds = %sqlite3ExprListDelete.exit11
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1201 ; 2 uses
  %i.bu = load i32, ptr %i.bq, align 8, !tbaa !1204
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph41, label %._crit_edge42

.lr.ph41:                                         ; preds = %bb.h, %sqlite3_free.exit30
  %.0.i1339 = phi ptr [ %i.cg, %sqlite3_free.exit30 ], [ %i.bt, %bb.h ] ; 3 uses
  %.09.i1238 = phi i32 [ %i.cf, %sqlite3_free.exit30 ], [ 0, %bb.h ]
  %i.bw = load ptr, ptr %.0.i1339, align 8, !tbaa !1205
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.bw), !inline_history !1207
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i1339, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1208 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %sqlite3_free.exit30, label %bb.i

bb.i:                                             ; preds = %.lr.ph41
  %i.ca = getelementptr inbounds i8, ptr %i.by, i64 -8 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !28
  %sext.i29 = shl i64 %i.cb, 32
  %i.cc = ashr exact i64 %sext.i29, 32
  %i.cd = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.ce = sub nsw i64 %i.cd, %i.cc
  store i64 %i.ce, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.ca) #43
  br label %sqlite3_free.exit30

sqlite3_free.exit30:                              ; preds = %.lr.ph41, %bb.i
  %i.cf = add nuw nsw i32 %.09.i1238, 1           ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i1339, i64 24
  %i.ch = load i32, ptr %i.bq, align 8, !tbaa !1204
  %i.ci = icmp slt i32 %i.cf, %i.ch
  br i1 %i.ci, label %.lr.ph41, label %._crit_edge42.loopexit, !llvm.loop !1209

._crit_edge42.loopexit:                           ; preds = %sqlite3_free.exit30
  %.pre48 = load ptr, ptr %i.bs, align 8, !tbaa !1201
  br label %._crit_edge42

._crit_edge42:                                    ; preds = %._crit_edge42.loopexit, %bb.h
  %i.cj = phi ptr [ %.pre48, %._crit_edge42.loopexit ], [ %i.bt, %bb.h ] ; 2 uses
  %i.ck = icmp eq ptr %i.cj, null
  %.pre50 = load i64, ptr @mem.5, align 8, !tbaa !22 ; 2 uses
  br i1 %i.ck, label %sqlite3_free.exit26, label %bb.j

bb.j:                                             ; preds = %._crit_edge42
  %i.cl = getelementptr inbounds i8, ptr %i.cj, i64 -8 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !28
  %sext.i27 = shl i64 %i.cm, 32
  %i.cn = ashr exact i64 %sext.i27, 32
  %i.co = sub nsw i64 %.pre50, %i.cn
  store i64 %i.co, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.cl) #43
  %.pre49 = load i64, ptr @mem.5, align 8, !tbaa !22
  br label %sqlite3_free.exit26

sqlite3_free.exit26:                              ; preds = %._crit_edge42, %bb.j
  %i.cp = phi i64 [ %.pre50, %._crit_edge42 ], [ %.pre49, %bb.j ]
  %i.cq = getelementptr inbounds i8, ptr %i.bq, i64 -8 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !28
  %sext.i25 = shl i64 %i.cr, 32
  %i.cs = ashr exact i64 %sext.i25, 32
  %i.ct = sub nsw i64 %i.cp, %i.cs
  store i64 %i.ct, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.cq) #43
  br label %sqlite3ExprListDelete.exit14

sqlite3ExprListDelete.exit14:                     ; preds = %sqlite3ExprListDelete.exit11, %sqlite3_free.exit26
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !1220
  tail call fastcc void @sqlite3SelectDelete(ptr noundef %i.cv)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !1221
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.cx)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1222
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.cz)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3SrcListDelete(ptr noundef captures(address_is_null) %0) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %0, align 8, !tbaa !1223
  %i.c = icmp sgt i16 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %sqlite3_free.exit20

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %sqlite3IdListDelete.exit
  %.022 = phi ptr [ %i.bo, %sqlite3IdListDelete.exit ], [ %i.d, %.lr.ph.preheader ] ; 8 uses
  %.01321 = phi i32 [ %i.bn, %sqlite3IdListDelete.exit ], [ 0, %.lr.ph.preheader ]
  %i.e = load ptr, ptr %.022, align 8, !tbaa !81  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %sqlite3_free.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28
  %sext.i = shl i64 %i.h, 32
  %i.i = ashr exact i64 %sext.i, 32
  %i.j = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.k = sub nsw i64 %i.j, %i.i
  store i64 %i.k, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.g) #43
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %.lr.ph, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.022, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !87   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %sqlite3_free.exit16, label %bb.d

bb.d:                                             ; preds = %sqlite3_free.exit
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !28
  %sext.i15 = shl i64 %i.p, 32
  %i.q = ashr exact i64 %sext.i15, 32
  %i.r = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.s = sub nsw i64 %i.r, %i.q
  store i64 %i.s, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.o) #43
  br label %sqlite3_free.exit16

sqlite3_free.exit16:                              ; preds = %sqlite3_free.exit, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.022, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1225 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %sqlite3_free.exit18, label %bb.e

bb.e:                                             ; preds = %sqlite3_free.exit16
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !28
  %sext.i17 = shl i64 %i.x, 32
  %i.y = ashr exact i64 %sext.i17, 32
  %i.z = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.aa = sub nsw i64 %i.z, %i.y
  store i64 %i.aa, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.w) #43
  br label %sqlite3_free.exit18

sqlite3_free.exit18:                              ; preds = %sqlite3_free.exit16, %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %.022, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1226
  tail call fastcc void @sqlite3DeleteTable(ptr noundef %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %.022, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1227
  tail call fastcc void @sqlite3SelectDelete(ptr noundef %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %.022, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1228
  tail call fastcc void @sqlite3ExprDelete(ptr noundef %i.ag)
  %i.ah = getelementptr inbounds nuw i8, ptr %.022, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1229 ; 5 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %sqlite3IdListDelete.exit, label %.preheader.i

.preheader.i:                                     ; preds = %sqlite3_free.exit18
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %mem.5.promoted.i = load i64, ptr @mem.5, align 8 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1177 ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %sqlite3_free.exit.i
  %i.an = phi i32 [ %i.ax, %sqlite3_free.exit.i ], [ %i.al, %.preheader.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %sqlite3_free.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.ao = phi i64 [ %i.ay, %sqlite3_free.exit.i ], [ %mem.5.promoted.i, %.preheader.i ] ; 2 uses
  %i.ap = load ptr, ptr %i.ai, align 8, !tbaa !1180
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %indvars.iv.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !1181 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %sqlite3_free.exit.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !28
  %sext.i.i = shl i64 %i.au, 32
  %i.av = ashr exact i64 %sext.i.i, 32
  %i.aw = sub nsw i64 %i.ao, %i.av
  tail call void @free(ptr noundef nonnull %i.at) #43
  %.pre.i = load i32, ptr %i.ak, align 8, !tbaa !1177
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %bb.f, %.lr.ph.i
  %i.ax = phi i32 [ %i.an, %.lr.ph.i ], [ %.pre.i, %bb.f ] ; 2 uses
  %i.ay = phi i64 [ %i.ao, %.lr.ph.i ], [ %i.aw, %bb.f ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.az = sext i32 %i.ax to i64
  %i.ba = icmp slt i64 %indvars.iv.next.i, %i.az
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1183

._crit_edge.i:                                    ; preds = %sqlite3_free.exit.i, %.preheader.i
  %i.bb = phi i64 [ %mem.5.promoted.i, %.preheader.i ], [ %i.ay, %sqlite3_free.exit.i ] ; 2 uses
  %i.bc = load ptr, ptr %i.ai, align 8, !tbaa !1180 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %sqlite3_free.exit11.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 -8 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !28
  %sext.i8.i = shl i64 %i.bf, 32
  %i.bg = ashr exact i64 %sext.i8.i, 32
  %i.bh = sub nsw i64 %i.bb, %i.bg
  tail call void @free(ptr noundef nonnull %i.be) #43
  br label %sqlite3_free.exit11.i

sqlite3_free.exit11.i:                            ; preds = %bb.g, %._crit_edge.i
  %i.bi = phi i64 [ %i.bb, %._crit_edge.i ], [ %i.bh, %bb.g ]
  %i.bj = getelementptr inbounds i8, ptr %i.ai, i64 -8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !28
  %sext.i10.i = shl i64 %i.bk, 32
  %i.bl = ashr exact i64 %sext.i10.i, 32
  %i.bm = sub nsw i64 %i.bi, %i.bl
  store i64 %i.bm, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.bj) #43
  br label %sqlite3IdListDelete.exit

sqlite3IdListDelete.exit:                         ; preds = %sqlite3_free.exit18, %sqlite3_free.exit11.i
  %i.bn = add nuw nsw i32 %.01321, 1              ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.022, i64 72
  %i.bp = load i16, ptr %0, align 8, !tbaa !1223
  %i.bq = sext i16 %i.bp to i32
  %i.br = icmp slt i32 %i.bn, %i.bq
  br i1 %i.br, label %.lr.ph, label %sqlite3_free.exit20, !llvm.loop !1230

sqlite3_free.exit20:                              ; preds = %sqlite3IdListDelete.exit, %bb.b
  %i.bs = getelementptr inbounds i8, ptr %0, i64 -8 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !28
  %sext.i19 = shl i64 %i.bt, 32
  %i.bu = ashr exact i64 %sext.i19, 32
  %i.bv = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.bw = sub nsw i64 %i.bv, %i.bu
  store i64 %i.bw, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.bs) #43
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %sqlite3_free.exit20
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @checkList(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 2) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 9 uses
  %i.h = icmp sgt i32 %3, 0
  br i1 %i.h, label %.lr.ph98, label %.critedge
end_hunk_2
begin_hunk_3_@sqlite3Parser:bb.a
bb.ry:                                            ; preds = %heightOfExpr.exit.i.i, %.lr.ph.i.i628
  %spec.store.select810.i = phi i32 [ %.promoted.i, %.lr.ph.i.i628 ], [ %spec.store.select89.i, %heightOfExpr.exit.i.i ] ; 3 uses
  %i.byu = phi i32 [ %i.byq, %.lr.ph.i.i628 ], [ %i.bza, %heightOfExpr.exit.i.i ] ; 2 uses
  %indvars.iv.i.i629 = phi i64 [ 0, %.lr.ph.i.i628 ], [ %indvars.iv.next.i.i631, %heightOfExpr.exit.i.i ] ; 2 uses
  %i.byv = getelementptr inbounds nuw [24 x i8], ptr %i.byt, i64 %indvars.iv.i.i629
  %i.byw = load ptr, ptr %i.byv, align 8, !tbaa !1205 ; 2 uses
  %.not.i.i.i630 = icmp eq ptr %i.byw, null
  br i1 %.not.i.i.i630, label %heightOfExpr.exit.i.i, label %bb.rz

bb.rz:                                            ; preds = %bb.ry
  %i.byx = getelementptr inbounds nuw i8, ptr %i.byw, i64 112
  %i.byy = load i32, ptr %i.byx, align 8, !tbaa !1314 ; 2 uses
  %i.byz = icmp sgt i32 %i.byy, %spec.store.select810.i
  %spec.store.select8.i = call i32 @llvm.smax.i32(i32 %i.byy, i32 %spec.store.select810.i)
  %spec.select.i = select i1 %i.byz, i32 %i.byq, i32 %i.byu
  br label %heightOfExpr.exit.i.i

heightOfExpr.exit.i.i:                            ; preds = %bb.rz, %bb.ry
  %spec.store.select89.i = phi i32 [ %spec.store.select810.i, %bb.ry ], [ %spec.store.select8.i, %bb.rz ] ; 2 uses
  %i.bza = phi i32 [ %i.byu, %bb.ry ], [ %spec.select.i, %bb.rz ] ; 2 uses
  %indvars.iv.next.i.i631 = add nuw nsw i64 %indvars.iv.i.i629, 1 ; 2 uses
  %i.bzb = zext nneg i32 %i.bza to i64
  %i.bzc = icmp samesign ult i64 %indvars.iv.next.i.i631, %i.bzb
  br i1 %i.bzc, label %bb.ry, label %heightOfExprList.exit.loopexit.i, !llvm.loop !1336

heightOfExprList.exit.loopexit.i:                 ; preds = %heightOfExpr.exit.i.i
  store i32 %spec.store.select89.i, ptr %i.g, align 4
  br label %sqlite3ExprSetHeight.exit

sqlite3ExprSetHeight.exit:                        ; preds = %heightOfExpr.exit6.i, %.preheader.i.i627, %heightOfExprList.exit.loopexit.i
  %i.bzd = getelementptr inbounds nuw i8, ptr %i.byc, i64 96
  %i.bze = load ptr, ptr %i.bzd, align 8, !tbaa !1210
  call fastcc void @heightOfSelect(ptr noundef %i.bze, ptr noundef %i.g)
  %i.bzf = load i32, ptr %i.g, align 4, !tbaa !4
  %i.bzg = add nsw i32 %i.bzf, 1
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.byc, i64 112
  store i32 %i.bzg, ptr %i.bzh, align 8, !tbaa !1314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #43
  br label %bb.sb

bb.sa:                                            ; preds = %bb.rt
  call fastcc void @sqlite3ExprListDelete(ptr noundef %i.bye), !inline_history !1307
  br label %bb.sb

bb.sb:                                            ; preds = %bb.sa, %sqlite3ExprSetHeight.exit
  %i.bzi = getelementptr inbounds i8, ptr %i.ac, i64 -88
  %i.bzj = load i32, ptr %i.bzi, align 8, !tbaa !37
  %.not630.i = icmp eq i32 %i.bzj, 0
  br i1 %.not630.i, label %bb.sd, label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  %.val658.i = load ptr, ptr %i.ca, align 8, !tbaa !244
  %i.bzk = call fastcc noundef ptr @sqlite3Expr(ptr noundef %.val658.i, i32 noundef 16, ptr noundef %i.byc, ptr noundef null, ptr noundef null)
  br label %bb.sd

bb.sd:                                            ; preds = %bb.sc, %bb.sb
  %.sroa.0.3 = phi ptr [ %i.byc, %bb.sb ], [ %i.bzk, %bb.sc ] ; 8 uses
  %i.bzl = load ptr, ptr %i.bya, align 8, !tbaa !37 ; 2 uses
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.bzl, i64 56 ; 2 uses
  %i.bzn = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %.not.i632 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i632, label %sqlite3CommitTransaction.exit, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.bzo = load ptr, ptr %i.bzn, align 8, !tbaa !77
  %.not13.i633 = icmp eq ptr %i.bzo, null
  br i1 %.not13.i633, label %sqlite3CommitTransaction.exit, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.bzp = load ptr, ptr %i.bzm, align 8, !tbaa !77 ; 2 uses
  %.not14.i634 = icmp eq ptr %i.bzp, null
  br i1 %.not14.i634, label %sqlite3CommitTransaction.exit, label %bb.sg

bb.sg:                                            ; preds = %bb.sf
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.bzl, i64 64
  %i.bzr = load i32, ptr %i.bzq, align 8
  %i.bzs = and i32 %i.bzr, 1
  %i.bzt = icmp eq i32 %i.bzs, 0
  br i1 %i.bzt, label %bb.sh, label %bb.sj

bb.sh:                                            ; preds = %bb.sg
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.bzv = load i32, ptr %i.bzu, align 8
  %i.bzw = and i32 %i.bzv, 1
  %i.bzx = icmp eq i32 %i.bzw, 0
  br i1 %i.bzx, label %bb.si, label %bb.sj

bb.si:                                            ; preds = %bb.sh
  %i.bzy = getelementptr inbounds nuw i8, ptr %.sroa.0.3, i64 56
  store ptr %i.bzp, ptr %i.bzy, align 8, !tbaa !1194
  %i.bzz = load i32, ptr %i.bzu, align 8
  %i.caa = load ptr, ptr %i.bzn, align 8, !tbaa !77
  %i.cab = load ptr, ptr %i.bzm, align 8, !tbaa !77
  %i.cac = ptrtoint ptr %i.caa to i64
  %i.cad = ptrtoint ptr %i.cab to i64
  %i.cae = sub i64 %i.cac, %i.cad
  %i.caf = trunc i64 %i.cae to i32
  %i.cag = getelementptr inbounds nuw i8, ptr %.sroa.0.3, i64 64 ; 2 uses
  %i.cah = load i32, ptr %i.cag, align 8
  %i.cai = shl i32 %i.caf, 1
  %i.caj = add i32 %i.cai, %i.bzz
  %i.cak = and i32 %i.caj, -2
  %i.cal = and i32 %i.cah, 1
  %i.cam = or disjoint i32 %i.cak, %i.cal
  store i32 %i.cam, ptr %i.cag, align 8
  br label %sqlite3CommitTransaction.exit

bb.sj:                                            ; preds = %bb.sh, %bb.sg
  %i.can = getelementptr inbounds nuw i8, ptr %.sroa.0.3, i64 56
  store ptr null, ptr %i.can, align 8, !tbaa !1194
  br label %sqlite3CommitTransaction.exit

bb.sk:                                            ; preds = %bb.p
  %.val657.i = load ptr, ptr %i.ca, align 8, !tbaa !244 ; 2 uses
  %.not.i.i.i636 = icmp eq ptr %.val657.i, null
  br i1 %.not.i.i.i636, label %sqlite3DbMallocRaw.exit.i.i640, label %bb.sl

bb.sl:                                            ; preds = %bb.sk
  %i.cao = getelementptr inbounds nuw i8, ptr %.val657.i, i64 42 ; 2 uses
  %i.cap = load i8, ptr %i.cao, align 2, !tbaa !129
  %i.caq = icmp eq i8 %i.cap, 0
  br i1 %i.caq, label %bb.sm, label %.thread

bb.sm:                                            ; preds = %bb.sl
  %i.car = call ptr @sqlite3_malloc(i32 noundef 120) ; 2 uses
  %i.cas = icmp eq ptr %i.car, null
  br i1 %i.cas, label %bb.sn, label %bb.so

bb.sn:                                            ; preds = %bb.sm
  store i8 1, ptr %i.cao, align 2, !tbaa !129
  br label %.thread

sqlite3DbMallocRaw.exit.i.i640:                   ; preds = %bb.sk
  %i.cat = call ptr @sqlite3_malloc(i32 noundef 120) ; 2 uses
  %.not.i.i641 = icmp eq ptr %i.cat, null
  br i1 %.not.i.i641, label %.thread, label %bb.so

.thread:                                          ; preds = %bb.sl, %bb.sn, %sqlite3DbMallocRaw.exit.i.i640
  %i.cau = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.cav = load ptr, ptr %i.cau, align 8, !tbaa !37
  call fastcc void @sqlite3SelectDelete(ptr noundef %i.cav), !inline_history !1307
  br label %sqlite3CommitTransaction.exit

bb.so:                                            ; preds = %bb.sm, %sqlite3DbMallocRaw.exit.i.i640
  %.0.i11.i.i638 = phi ptr [ %i.cat, %sqlite3DbMallocRaw.exit.i.i640 ], [ %i.car, %bb.sm ] ; 13 uses
  %i.caw = getelementptr inbounds nuw i8, ptr %.0.i11.i.i638, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(119) %i.caw, i8 0, i64 119, i1 false)
  store i8 110, ptr %.0.i11.i.i638, align 8, !tbaa !1311
  %i.cax = getelementptr inbounds nuw i8, ptr %.0.i11.i.i638, i64 16
  %i.cay = getelementptr inbounds nuw i8, ptr %.0.i11.i.i638, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cax, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.cay, align 8, !tbaa !1312
  %i.caz = getelementptr inbounds nuw i8, ptr %.0.i11.i.i638, i64 112 ; 2 uses
  store i32 1, ptr %i.caz, align 8, !tbaa !1314
  %i.cba = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.cbb = load ptr, ptr %i.cba, align 8, !tbaa !37 ; 2 uses
  %i.cbc = getelementptr inbounds nuw i8, ptr %.0.i11.i.i638, i64 96
  store ptr %i.cbb, ptr %i.cbc, align 8, !tbaa !1210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #43
  store i32 0, ptr %i.f, align 4, !tbaa !4
  call fastcc void @heightOfSelect(ptr noundef %i.cbb, ptr noundef %i.f)
  %i.cbd = load i32, ptr %i.f, align 4, !tbaa !4
  %i.cbe = add nsw i32 %i.cbd, 1
  store i32 %i.cbe, ptr %i.caz, align 8, !tbaa !1314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #43
  %i.cbf = getelementptr inbounds i8, ptr %i.ac, i64 -56 ; 2 uses
  %i.cbg = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.cbh = load ptr, ptr %i.cbg, align 8, !tbaa !77
  %.not13.i663 = icmp eq ptr %i.cbh, null
  br i1 %.not13.i663, label %sqlite3CommitTransaction.exit, label %bb.sp

bb.sp:                                            ; preds = %bb.so
  %i.cbi = load ptr, ptr %i.cbf, align 8, !tbaa !77 ; 2 uses
  %.not14.i664 = icmp eq ptr %i.cbi, null
  br i1 %.not14.i664, label %sqlite3CommitTransaction.exit, label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  %i.cbj = getelementptr inbounds i8, ptr %i.ac, i64 -48
  %i.cbk = load i32, ptr %i.cbj, align 8
  %i.cbl = and i32 %i.cbk, 1
  %i.cbm = icmp eq i32 %i.cbl, 0
  br i1 %i.cbm, label %bb.sr, label %bb.st

bb.sr:                                            ; preds = %bb.sq
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.cbo = load i32, ptr %i.cbn, align 8
  %i.cbp = and i32 %i.cbo, 1
  %i.cbq = icmp eq i32 %i.cbp, 0
  br i1 %i.cbq, label %bb.ss, label %bb.st

bb.ss:                                            ; preds = %bb.sr
  %i.cbr = getelementptr inbounds nuw i8, ptr %.0.i11.i.i638, i64 56
  store ptr %i.cbi, ptr %i.cbr, align 8, !tbaa !1194
  %i.cbs = load i32, ptr %i.cbn, align 8
  %i.cbt = load ptr, ptr %i.cbg, align 8, !tbaa !77
  %i.cbu = load ptr, ptr %i.cbf, align 8, !tbaa !77
  %i.cbv = ptrtoint ptr %i.cbt to i64
  %i.cbw = ptrtoint ptr %i.cbu to i64
  %i.cbx = sub i64 %i.cbv, %i.cbw
  %i.cby = trunc i64 %i.cbx to i32
  %i.cbz = getelementptr inbounds nuw i8, ptr %.0.i11.i.i638, i64 64 ; 2 uses
  %12 = load i32, ptr %i.cbz, align 8
  %i.cca = shl i32 %i.cby, 1
  %i.ccb = add i32 %i.cca, %i.cbs
  %13 = and i32 %i.ccb, -2
  %i.ccc = and i32 %12, 1
  %14 = or disjoint i32 %13, %i.ccc
  store i32 %14, ptr %i.cbz, align 8
  br label %sqlite3CommitTransaction.exit

bb.st:                                            ; preds = %bb.sr, %bb.sq
  %i.ccd = getelementptr inbounds nuw i8, ptr %.0.i11.i.i638, i64 56
  store ptr null, ptr %i.ccd, align 8, !tbaa !1194
  br label %sqlite3CommitTransaction.exit

bb.su:                                            ; preds = %bb.p
  %i.cce = getelementptr inbounds i8, ptr %i.ac, i64 -120 ; 2 uses
  %i.ccf = load ptr, ptr %i.cce, align 8, !tbaa !37
  %.val656.i = load ptr, ptr %i.ca, align 8, !tbaa !244
  %i.ccg = call fastcc noundef ptr @sqlite3Expr(ptr noundef %.val656.i, i32 noundef 64, ptr noundef %i.ccf, ptr noundef null, ptr noundef null) ; 8 uses
  %.not626.i = icmp eq ptr %i.ccg, null
  %i.cch = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %i.cci = load ptr, ptr %i.cch, align 8, !tbaa !37 ; 3 uses
  br i1 %.not626.i, label %bb.tb, label %bb.sv

bb.sv:                                            ; preds = %bb.su
  %i.ccj = getelementptr inbounds nuw i8, ptr %i.ccg, i64 96
  store ptr %i.cci, ptr %i.ccj, align 8, !tbaa !1210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #43
  store i32 0, ptr %i.e, align 4, !tbaa !4
  %i.cck = getelementptr inbounds nuw i8, ptr %i.ccg, i64 16
  %i.ccl = load ptr, ptr %i.cck, align 8, !tbaa !1198 ; 2 uses
  %.not.i.i666 = icmp eq ptr %i.ccl, null
  br i1 %.not.i.i666, label %heightOfExpr.exit.i667, label %bb.sw

bb.sw:                                            ; preds = %bb.sv
  %i.ccm = getelementptr inbounds nuw i8, ptr %i.ccl, i64 112
  %i.ccn = load i32, ptr %i.ccm, align 8, !tbaa !1314 ; 3 uses
  %i.cco = icmp sgt i32 %i.ccn, 0
  br i1 %i.cco, label %bb.sx, label %heightOfExpr.exit.i667

bb.sx:                                            ; preds = %bb.sw
  store i32 %i.ccn, ptr %i.e, align 4, !tbaa !4
  br label %heightOfExpr.exit.i667

heightOfExpr.exit.i667:                           ; preds = %bb.sx, %bb.sw, %bb.sv
  %i.ccp = phi i32 [ 0, %bb.sv ], [ 0, %bb.sw ], [ %i.ccn, %bb.sx ] ; 2 uses
  %i.ccq = getelementptr inbounds nuw i8, ptr %i.ccg, i64 24
  %i.ccr = load ptr, ptr %i.ccq, align 8, !tbaa !1199 ; 2 uses
  %.not.i5.i668 = icmp eq ptr %i.ccr, null
  br i1 %.not.i5.i668, label %heightOfExpr.exit6.i670, label %bb.sy

bb.sy:                                            ; preds = %heightOfExpr.exit.i667
  %i.ccs = getelementptr inbounds nuw i8, ptr %i.ccr, i64 112
  %i.cct = load i32, ptr %i.ccs, align 8, !tbaa !1314
  %spec.store.select.i669 = call i32 @llvm.smax.i32(i32 %i.cct, i32 %i.ccp) ; 2 uses
  store i32 %spec.store.select.i669, ptr %i.e, align 4
  br label %heightOfExpr.exit6.i670

heightOfExpr.exit6.i670:                          ; preds = %bb.sy, %heightOfExpr.exit.i667
  %.promoted.i671 = phi i32 [ %spec.store.select.i669, %bb.sy ], [ %i.ccp, %heightOfExpr.exit.i667 ]
  %i.ccu = getelementptr inbounds nuw i8, ptr %i.ccg, i64 32
  %i.ccv = load ptr, ptr %i.ccu, align 8, !tbaa !1200 ; 3 uses
  %.not.i7.i672 = icmp eq ptr %i.ccv, null
  br i1 %.not.i7.i672, label %sqlite3ExprSetHeight.exit684, label %.preheader.i.i673

.preheader.i.i673:                                ; preds = %heightOfExpr.exit6.i670
  %i.ccw = load i32, ptr %i.ccv, align 8, !tbaa !1204 ; 3 uses
  %i.ccx = icmp sgt i32 %i.ccw, 0
  br i1 %i.ccx, label %.lr.ph.i.i674, label %sqlite3ExprSetHeight.exit684

.lr.ph.i.i674:                                    ; preds = %.preheader.i.i673
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.ccv, i64 16
  %i.ccz = load ptr, ptr %i.ccy, align 8, !tbaa !1201
  br label %bb.sz

bb.sz:                                            ; preds = %heightOfExpr.exit.i.i680, %.lr.ph.i.i674
  %spec.store.select810.i675 = phi i32 [ %.promoted.i671, %.lr.ph.i.i674 ], [ %spec.store.select89.i681, %heightOfExpr.exit.i.i680 ] ; 3 uses
  %i.cda = phi i32 [ %i.ccw, %.lr.ph.i.i674 ], [ %i.cdg, %heightOfExpr.exit.i.i680 ] ; 2 uses
  %indvars.iv.i.i676 = phi i64 [ 0, %.lr.ph.i.i674 ], [ %indvars.iv.next.i.i682, %heightOfExpr.exit.i.i680 ] ; 2 uses
  %i.cdb = getelementptr inbounds nuw [24 x i8], ptr %i.ccz, i64 %indvars.iv.i.i676
  %i.cdc = load ptr, ptr %i.cdb, align 8, !tbaa !1205 ; 2 uses
  %.not.i.i.i677 = icmp eq ptr %i.cdc, null
  br i1 %.not.i.i.i677, label %heightOfExpr.exit.i.i680, label %bb.ta

bb.ta:                                            ; preds = %bb.sz
  %i.cdd = getelementptr inbounds nuw i8, ptr %i.cdc, i64 112
  %i.cde = load i32, ptr %i.cdd, align 8, !tbaa !1314 ; 2 uses
  %i.cdf = icmp sgt i32 %i.cde, %spec.store.select810.i675
  %spec.store.select8.i678 = call i32 @llvm.smax.i32(i32 %i.cde, i32 %spec.store.select810.i675)
  %spec.select.i679 = select i1 %i.cdf, i32 %i.ccw, i32 %i.cda
  br label %heightOfExpr.exit.i.i680

heightOfExpr.exit.i.i680:                         ; preds = %bb.ta, %bb.sz
  %spec.store.select89.i681 = phi i32 [ %spec.store.select810.i675, %bb.sz ], [ %spec.store.select8.i678, %bb.ta ] ; 2 uses
  %i.cdg = phi i32 [ %i.cda, %bb.sz ], [ %spec.select.i679, %bb.ta ] ; 2 uses
  %indvars.iv.next.i.i682 = add nuw nsw i64 %indvars.iv.i.i676, 1 ; 2 uses
  %i.cdh = zext nneg i32 %i.cdg to i64
  %i.cdi = icmp samesign ult i64 %indvars.iv.next.i.i682, %i.cdh
  br i1 %i.cdi, label %bb.sz, label %heightOfExprList.exit.loopexit.i683, !llvm.loop !1336

heightOfExprList.exit.loopexit.i683:              ; preds = %heightOfExpr.exit.i.i680
  store i32 %spec.store.select89.i681, ptr %i.e, align 4
  br label %sqlite3ExprSetHeight.exit684

sqlite3ExprSetHeight.exit684:                     ; preds = %heightOfExpr.exit6.i670, %.preheader.i.i673, %heightOfExprList.exit.loopexit.i683
  call fastcc void @heightOfSelect(ptr noundef %i.cci, ptr noundef %i.e)
  %i.cdj = load i32, ptr %i.e, align 4, !tbaa !4
  %i.cdk = add nsw i32 %i.cdj, 1
  %i.cdl = getelementptr inbounds nuw i8, ptr %i.ccg, i64 112
  store i32 %i.cdk, ptr %i.cdl, align 8, !tbaa !1314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #43
  br label %bb.tc

bb.tb:                                            ; preds = %bb.su
  call fastcc void @sqlite3SelectDelete(ptr noundef %i.cci), !inline_history !1307
  br label %bb.tc

bb.tc:                                            ; preds = %bb.tb, %sqlite3ExprSetHeight.exit684
  %i.cdm = getelementptr inbounds i8, ptr %i.ac, i64 -88
  %i.cdn = load i32, ptr %i.cdm, align 8, !tbaa !37
  %.not627.i = icmp eq i32 %i.cdn, 0
  br i1 %.not627.i, label %bb.te, label %bb.td

bb.td:                                            ; preds = %bb.tc
  %.val655.i = load ptr, ptr %i.ca, align 8, !tbaa !244
  %i.cdo = call fastcc noundef ptr @sqlite3Expr(ptr noundef %.val655.i, i32 noundef 16, ptr noundef %i.ccg, ptr noundef null, ptr noundef null)
  br label %bb.te

bb.te:                                            ; preds = %bb.td, %bb.tc
  %.sroa.0.2 = phi ptr [ %i.ccg, %bb.tc ], [ %i.cdo, %bb.td ] ; 8 uses
  %i.cdp = load ptr, ptr %i.cce, align 8, !tbaa !37 ; 2 uses
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.cdp, i64 56 ; 2 uses
  %i.cdr = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %.not.i685 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i685, label %sqlite3CommitTransaction.exit, label %bb.tf

bb.tf:                                            ; preds = %bb.te
  %i.cds = load ptr, ptr %i.cdr, align 8, !tbaa !77
  %.not13.i686 = icmp eq ptr %i.cds, null
  br i1 %.not13.i686, label %sqlite3CommitTransaction.exit, label %bb.tg

bb.tg:                                            ; preds = %bb.tf
  %i.cdt = load ptr, ptr %i.cdq, align 8, !tbaa !77 ; 2 uses
  %.not14.i687 = icmp eq ptr %i.cdt, null
  br i1 %.not14.i687, label %sqlite3CommitTransaction.exit, label %bb.th

bb.th:                                            ; preds = %bb.tg
  %i.cdu = getelementptr inbounds nuw i8, ptr %i.cdp, i64 64
  %i.cdv = load i32, ptr %i.cdu, align 8
  %i.cdw = and i32 %i.cdv, 1
  %i.cdx = icmp eq i32 %i.cdw, 0
  br i1 %i.cdx, label %bb.ti, label %bb.tk

bb.ti:                                            ; preds = %bb.th
  %i.cdy = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %i.cdz = load i32, ptr %i.cdy, align 8
  %i.cea = and i32 %i.cdz, 1
  %i.ceb = icmp eq i32 %i.cea, 0
  br i1 %i.ceb, label %bb.tj, label %bb.tk

bb.tj:                                            ; preds = %bb.ti
  %i.cec = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 56
  store ptr %i.cdt, ptr %i.cec, align 8, !tbaa !1194
  %i.ced = load i32, ptr %i.cdy, align 8
  %i.cee = load ptr, ptr %i.cdr, align 8, !tbaa !77
  %i.cef = load ptr, ptr %i.cdq, align 8, !tbaa !77
  %i.ceg = ptrtoint ptr %i.cee to i64
  %i.ceh = ptrtoint ptr %i.cef to i64
  %i.cei = sub i64 %i.ceg, %i.ceh
  %i.cej = trunc i64 %i.cei to i32
  %i.cek = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 64 ; 2 uses
  %i.cel = load i32, ptr %i.cek, align 8
  %i.cem = shl i32 %i.cej, 1
  %i.cen = add i32 %i.cem, %i.ced
  %i.ceo = and i32 %i.cen, -2
  %i.cep = and i32 %i.cel, 1
  %i.ceq = or disjoint i32 %i.ceo, %i.cep
  store i32 %i.ceq, ptr %i.cek, align 8
  br label %sqlite3CommitTransaction.exit

bb.tk:                                            ; preds = %bb.ti, %bb.th
  %i.cer = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 56
  store ptr null, ptr %i.cer, align 8, !tbaa !1194
  br label %sqlite3CommitTransaction.exit

bb.tl:                                            ; preds = %bb.p
  %i.ces = load ptr, ptr %i.ca, align 8, !tbaa !244
  %i.cet = getelementptr inbounds i8, ptr %i.ac, i64 -24 ; 2 uses
  %i.ceu = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.cev = call fastcc ptr @sqlite3SrcListAppend(ptr noundef %i.ces, ptr noundef null, ptr noundef nonnull %i.cet, ptr noundef nonnull %i.ceu), !inline_history !1307 ; 2 uses
  %i.cew = getelementptr inbounds i8, ptr %i.ac, i64 -88 ; 2 uses
  %i.cex = load ptr, ptr %i.cew, align 8, !tbaa !37
  %.val654.i = load ptr, ptr %i.ca, align 8, !tbaa !244
  %i.cey = call fastcc noundef ptr @sqlite3Expr(ptr noundef %.val654.i, i32 noundef 64, ptr noundef %i.cex, ptr noundef null, ptr noundef null) ; 8 uses
  %.not623.i = icmp eq ptr %i.cey, null
  br i1 %.not623.i, label %bb.ts, label %bb.tm

bb.tm:                                            ; preds = %bb.tl
  %i.cez = call fastcc ptr @sqlite3SelectNew(ptr noundef nonnull %i.ca, ptr noundef null, ptr noundef %i.cev, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !1307 ; 2 uses
  %i.cfa = getelementptr inbounds nuw i8, ptr %i.cey, i64 96
  store ptr %i.cez, ptr %i.cfa, align 8, !tbaa !1210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #43
  store i32 0, ptr %i.d, align 4, !tbaa !4
  %i.cfb = getelementptr inbounds nuw i8, ptr %i.cey, i64 16
  %i.cfc = load ptr, ptr %i.cfb, align 8, !tbaa !1198 ; 2 uses
  %.not.i.i689 = icmp eq ptr %i.cfc, null
  br i1 %.not.i.i689, label %heightOfExpr.exit.i690, label %bb.tn
end_hunk_3
begin_hunk_4_@sqlite3Expr:bb.a
  %i.at = and i16 %i.as, 256
  %.not37 = icmp eq i16 %i.at, 0
  br i1 %.not37, label %.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 2
  store i16 256, ptr %i.au, align 2, !tbaa !1335
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1423
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !1423
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  store i32 0, ptr %i.a, align 4, !tbaa !4
  br label %bb.r

bb.q:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !1313
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  store i32 0, ptr %i.a, align 4, !tbaa !4
  %.not.i.i39 = icmp eq ptr %2, null
  br i1 %.not.i.i39, label %heightOfExpr.exit.i, label %bb.r

bb.r:                                             ; preds = %.thread, %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !1314 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %heightOfExpr.exit.i.sink.split, label %heightOfExpr.exit.i

heightOfExpr.exit.i.sink.split:                   ; preds = %bb.r, %.thread53
  %.sink = phi i32 [ 0, %.thread53 ], [ %i.bb, %bb.r ] ; 2 uses
  store i32 %.sink, ptr %i.a, align 4, !tbaa !4
  br label %heightOfExpr.exit.i

heightOfExpr.exit.i:                              ; preds = %heightOfExpr.exit.i.sink.split, %bb.r, %bb.q
  %i.bd = phi i32 [ 0, %bb.q ], [ 0, %bb.r ], [ %.sink, %heightOfExpr.exit.i.sink.split ]
  %.not.i5.i = icmp eq ptr %3, null
  br i1 %.not.i5.i, label %sqlite3ExprSetHeight.exit, label %bb.s

bb.s:                                             ; preds = %heightOfExpr.exit.i
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !1314
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.bf, i32 %i.bd)
  store i32 %spec.store.select.i, ptr %i.a, align 4
  br label %sqlite3ExprSetHeight.exit

sqlite3ExprSetHeight.exit:                        ; preds = %heightOfExpr.exit.i, %bb.s
  call fastcc void @heightOfSelect(ptr noundef null, ptr noundef %i.a)
  %i.bg = load i32, ptr %i.a, align 4, !tbaa !4
  %i.bh = add nsw i32 %i.bg, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 112
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !1314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.t

bb.t:                                             ; preds = %sqlite3ExprSetHeight.exit, %bb.e
  %.0 = phi ptr [ null, %bb.e ], [ %.0.i11.i, %sqlite3ExprSetHeight.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @matchOrderByTermToExprList(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef range(i32 0, 2) %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %struct.NameContext, align 8        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  %i.b = load ptr, ptr %1, align 8, !tbaa !1212   ; 6 uses
  %i.c = call fastcc i32 @sqlite3ExprIsInteger(ptr noundef %2, ptr noundef %i.a)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %.thread57

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.b, align 8, !tbaa !1204
  %i.g = add nsw i32 %i.f, 1
  br label %.thread57

bb.d:                                             ; preds = %bb.a
  %i.h = load i8, ptr %2, align 8, !tbaa !1311
  switch i8 %i.h, label %bb.s [
    i8 23, label %bb.f
    i8 88, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1197 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !37
  %.not41 = icmp eq i8 %i.k, 39
  br i1 %.not41, label %bb.s, label %.thread

bb.f:                                             ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !77 ; 2 uses
  %i.l = icmp eq ptr %.pre, null
  br i1 %i.l, label %.thread57, label %.thread

.thread:                                          ; preds = %bb.e, %bb.f
  %i.m = phi ptr [ %.pre, %bb.f ], [ %i.j, %bb.e ]
  %i.n = load ptr, ptr %0, align 8, !tbaa !244
  %.in.in = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.in = load i32, ptr %.in.in, align 8
  %i.o = lshr i32 %.in, 1                         ; 2 uses
  %i.p = add nuw nsw i32 %i.o, 1
  %i.q = tail call ptr @sqlite3_malloc(i32 noundef %i.p) ; 13 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %sqlite3StrNDup.exit.i.i, label %bb.g

sqlite3StrNDup.exit.i.i:                          ; preds = %.thread
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 42
  store i8 1, ptr %i.r, align 2, !tbaa !129
  br label %.thread57

bb.g:                                             ; preds = %.thread
  %i.s = zext nneg i32 %i.o to i64                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %i.m, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s
  store i8 0, ptr %i.t, align 1, !tbaa !37
  %i.u = load i8, ptr %i.q, align 1, !tbaa !37    ; 2 uses
  %i.v = sext i8 %i.u to i32                      ; 3 uses
  switch i8 %i.u, label %sqlite3NameFromToken.exit [
    i8 39, label %bb.i
    i8 34, label %bb.i
    i8 96, label %bb.i
    i8 91, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.g, %bb.g
  %.023.i.i = phi i32 [ %i.v, %bb.g ], [ %i.v, %bb.g ], [ %i.v, %bb.g ], [ 93, %bb.h ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !37    ; 2 uses
  %.not27.i.i = icmp eq i8 %i.x, 0
  br i1 %.not27.i.i, label %sqlite3NameFromToken.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i
  %i.y = trunc nuw nsw i32 %.023.i.i to i8
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.m ] ; 3 uses
  %i.z = phi i8 [ %i.x, %.lr.ph.i.i ], [ %i.ao, %bb.m ] ; 2 uses
  %.02128.i.i = phi i32 [ 1, %.lr.ph.i.i ], [ %i.al, %bb.m ] ; 2 uses
  %i.aa = sext i8 %i.z to i32
  %i.ab = icmp eq i32 %.023.i.i, %i.aa
  br i1 %i.ab, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ac = add nsw i32 %.02128.i.i, 1              ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds i8, ptr %i.q, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !37
  %i.ag = sext i8 %i.af to i32
  %i.ah = icmp eq i32 %.023.i.i, %i.ag
  br i1 %i.ah, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = and i64 %indvars.iv.i.i, 4294967295
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ai
  store i8 0, ptr %i.aj, align 1, !tbaa !37
  br label %sqlite3NameFromToken.exit

bb.m:                                             ; preds = %bb.k, %bb.j
  %.sink.i.i = phi i8 [ %i.y, %bb.k ], [ %i.z, %bb.j ]
  %.122.i.i = phi i32 [ %i.ac, %bb.k ], [ %.02128.i.i, %bb.j ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv.i.i
  store i8 %.sink.i.i, ptr %i.ak, align 1, !tbaa !37
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.al = add nsw i32 %.122.i.i, 1                ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %i.q, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !37  ; 2 uses
  %.not.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i, label %sqlite3NameFromToken.exit, label %bb.j, !llvm.loop !1308

sqlite3NameFromToken.exit:                        ; preds = %bb.m, %bb.g, %bb.i, %bb.l
  %i.ap = load i32, ptr %i.b, align 8, !tbaa !1204 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !4
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sqlite3NameFromToken.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1201
  %wide.trip.count = zext nneg i32 %i.ap to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.r
  %6 = phi i32 [ 0, %.lr.ph ], [ %i.bx, %bb.r ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %indvars.iv
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !1208 ; 3 uses
  %.not42 = icmp eq ptr %i.av, null
  br i1 %.not42, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !37  ; 2 uses
  %.not10.i = icmp eq i8 %i.aw, 0
  br i1 %.not10.i, label %sqlite3StrICmp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.o, %bb.p
  %i.ax = phi i8 [ %i.bi, %bb.p ], [ %i.aw, %bb.o ] ; 2 uses
  %.012.i = phi ptr [ %i.bh, %bb.p ], [ %i.q, %bb.o ] ; 3 uses
  %.0911.i = phi ptr [ %i.bg, %bb.p ], [ %i.av, %bb.o ]
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !37
  %i.bb = load i8, ptr %.012.i, align 1, !tbaa !37
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !37
  %i.bf = icmp eq i8 %i.ba, %i.be
  br i1 %i.bf, label %bb.p, label %.critedge.loopexit.isplit

bb.p:                                             ; preds = %.lr.ph.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i, i64 1 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i, i64 1 ; 2 uses
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !37  ; 2 uses
  %.not.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i, label %..critedge.loopexit.i_crit_edge, label %.lr.ph.i, !llvm.loop !266

..critedge.loopexit.i_crit_edge:                  ; preds = %bb.p
  br label %sqlite3StrICmp.exit, !llvm.loop !266

.critedge.loopexit.isplit:                        ; preds = %.lr.ph.i
  %i.bj = zext i8 %i.ax to i64
  br label %sqlite3StrICmp.exit

sqlite3StrICmp.exit:                              ; preds = %..critedge.loopexit.i_crit_edge, %.critedge.loopexit.isplit, %bb.o
  %.0.lcssa.i = phi ptr [ %i.q, %bb.o ], [ %i.bh, %..critedge.loopexit.i_crit_edge ], [ %.012.i, %.critedge.loopexit.isplit ]
  %.lcssa.i = phi i64 [ 0, %bb.o ], [ 0, %..critedge.loopexit.i_crit_edge ], [ %i.bj, %.critedge.loopexit.isplit ]
  %i.bk = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.lcssa.i
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !37
  %i.bm = load i8, ptr %.0.lcssa.i, align 1, !tbaa !37
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !37
  %i.bq = icmp eq i8 %i.bl, %i.bp
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %sqlite3StrICmp.exit
  %i.br = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !28
  %sext.i = shl i64 %i.bs, 32
  %i.bt = ashr exact i64 %sext.i, 32
  %i.bu = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.bv = sub nsw i64 %i.bu, %i.bt
  store i64 %i.bv, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.br) #43
  %i.bw = add nsw i32 %6, 1
  br label %.thread57

bb.r:                                             ; preds = %sqlite3StrICmp.exit, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bx = trunc nuw nsw i64 %indvars.iv.next to i32 ; 2 uses
  store i32 %i.bx, ptr %i.a, align 4, !tbaa !4
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !1614

._crit_edge:                                      ; preds = %bb.r, %sqlite3NameFromToken.exit
  %i.by = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !28
  %sext.i48 = shl i64 %i.bz, 32
  %i.ca = ashr exact i64 %sext.i48, 32
  %i.cb = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.cc = sub nsw i64 %i.cb, %i.ca
  store i64 %i.cc, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.by) #43
  br label %bb.s

bb.s:                                             ; preds = %bb.e, %bb.d, %._crit_edge
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cd, i8 0, i64 32, i1 false)
  store ptr %0, ptr %5, align 8, !tbaa !1399
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1215
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !1402
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.b, ptr %i.ch, align 8, !tbaa !1583
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.ci, align 8, !tbaa !1572
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !1314
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !1404
  %i.cn = add nsw i32 %i.cm, %i.ck                ; 2 uses
  %i.co = icmp sgt i32 %i.cn, 1000
  br i1 %i.co, label %sqlite3ExprResolveNames.exit.thread, label %bb.t

sqlite3ExprResolveNames.exit.thread:              ; preds = %bb.s
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.303, i32 noundef 1000), !inline_history !1405
  br label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i32 %i.cn, ptr %i.cl, align 8, !tbaa !1404
  %i.cq = getelementptr inbounds nuw i8, ptr %5, i64 33
  %i.cr = call fastcc i32 @walkExprTree(ptr noundef nonnull %2, ptr noundef nonnull @nameResolverStep, ptr noundef nonnull %5), !inline_history !1405 ; 0 uses
  %i.cs = load i32, ptr %i.cj, align 8, !tbaa !1314
  %i.ct = load ptr, ptr %5, align 8, !tbaa !1399
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 344 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !1404
  %i.cw = sub nsw i32 %i.cv, %i.cs
  store i32 %i.cw, ptr %i.cu, align 8, !tbaa !1404
  %i.cx = load i32, ptr %i.cp, align 4, !tbaa !1407
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !1335
  %i.db = or i16 %i.da, 8
  store i16 %i.db, ptr %i.cz, align 2, !tbaa !1335
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dc = load i8, ptr %i.cq, align 1, !tbaa !1406 ; 2 uses
  %.not.i50 = icmp eq i8 %i.dc, 0
  br i1 %.not.i50, label %sqlite3ExprResolveNames.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !1335
  %i.df = or i16 %i.de, 2
  store i16 %i.df, ptr %i.dd, align 2, !tbaa !1335
  br label %sqlite3ExprResolveNames.exit

sqlite3ExprResolveNames.exit:                     ; preds = %bb.v, %bb.w
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !1335
  %i.di = and i16 %i.dh, 8
  %.not43 = icmp eq i16 %i.di, 0
  br i1 %.not43, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %sqlite3ExprResolveNames.exit.thread, %sqlite3ExprResolveNames.exit
  %.not47 = icmp eq i32 %3, 0
  br i1 %.not47, label %.thread57, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !263 ; 2 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %sqlite3ErrorClear.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = getelementptr inbounds i8, ptr %i.dk, i64 -8 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !28
  %sext.i.i = shl i64 %i.dn, 32
  %i.do = ashr exact i64 %sext.i.i, 32
  %i.dp = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.dq = sub nsw i64 %i.dp, %i.do
  store i64 %i.dq, ptr @mem.5, align 8, !tbaa !22
  call void @free(ptr noundef nonnull %i.dm) #43
  br label %sqlite3ErrorClear.exit

sqlite3ErrorClear.exit:                           ; preds = %bb.y, %bb.z
  store ptr null, ptr %i.dj, align 8, !tbaa !263
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.dr, align 8, !tbaa !252
  br label %.thread57

bb.aa:                                            ; preds = %sqlite3ExprResolveNames.exit
  %i.ds = icmp ne i8 %i.dc, 0
  %i.dt = icmp ne ptr %4, null
  %or.cond = and i1 %i.dt, %i.ds
  br i1 %or.cond, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr %4, align 1, !tbaa !37
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.not44 = icmp eq i32 %3, 0
  br i1 %.not44, label %.thread57, label %.preheader

.preheader:                                       ; preds = %bb.ac
  %i.du = load i32, ptr %i.b, align 8, !tbaa !1204 ; 2 uses
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph67, label %.thread57

.lr.ph67:                                         ; preds = %.preheader
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !1201
  %wide.trip.count74 = zext nneg i32 %i.du to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph67, %bb.af
  %indvars.iv71 = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next72, %bb.af ] ; 3 uses
  %i.dy = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %indvars.iv71
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !1205
  %i.ea = call fastcc i32 @sqlite3ExprCompare(ptr noundef %i.dz, ptr noundef nonnull %2)
  %.not46 = icmp eq i32 %i.ea, 0
  br i1 %.not46, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eb = trunc nuw nsw i64 %indvars.iv71 to i32
  %i.ec = add nuw nsw i32 %i.eb, 1
  br label %.thread57

bb.af:                                            ; preds = %bb.ad
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count74
  br i1 %exitcond75.not, label %.thread57, label %bb.ad, !llvm.loop !1615

.thread57:                                        ; preds = %bb.af, %.preheader, %bb.b, %bb.c, %bb.f, %sqlite3StrNDup.exit.i.i, %bb.q, %bb.ac, %bb.x, %bb.ae, %sqlite3ErrorClear.exit
  %.3 = phi i32 [ %i.d, %bb.b ], [ 0, %sqlite3ErrorClear.exit ], [ 0, %bb.ac ], [ %i.ec, %bb.ae ], [ -1, %bb.x ], [ -1, %bb.f ], [ %i.bw, %bb.q ], [ -1, %sqlite3StrNDup.exit.i.i ], [ %i.g, %bb.c ], [ 0, %.preheader ], [ 0, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret i32 %.3
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @sqlite3ExprIsInteger(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #36 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.c, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.g, %bb.c ]   ; 4 uses
  %i.b = load i8, ptr %.tr, align 8, !tbaa !1311
  switch i8 %i.b, label %.loopexit [
    i8 124, label %bb.b
    i8 86, label %bb.c
    i8 85, label %bb.d
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.c = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1197
  %i.e = tail call fastcc i32 @sqlite3GetInt32(ptr noundef %i.d, ptr noundef %1)
  %.not9 = icmp eq i32 %i.e, 0
  br i1 %.not9, label %.loopexit, label %bb.f

bb.c:                                             ; preds = %tailrecurse
  %i.f = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1198
  br label %tailrecurse

bb.d:                                             ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.h = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1198
  %i.j = call fastcc i32 @sqlite3ExprIsInteger(ptr noundef %i.i, ptr noundef %i.a)
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.k = load i32, ptr %i.a, align 4, !tbaa !4
  %i.l = sub nsw i32 0, %i.k
  store i32 %i.l, ptr %1, align 4, !tbaa !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_4
