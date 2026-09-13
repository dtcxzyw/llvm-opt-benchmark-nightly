Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 177
begin_hunk_0_@JS_GetGlobalObject:bb.a
; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_Throw(ptr nofree noundef readonly captures(none) %0, i64 %1, i64 %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1240 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1248 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = icmp ugt i32 %i.g, -10
  br i1 %i.h, label %bb.b, label %JS_FreeValueRT.exit

bb.b:                                             ; preds = %bb.a
  %i.i = inttoptr i64 %i.d to ptr
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !191  ; 2 uses
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !191
  %i.m = icmp slt i32 %i.k, 2
  br i1 %i.m, label %bb.c, label %JS_FreeValueRT.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @js_free_value_rt(ptr noundef nonnull %i.b, i64 %i.d, i64 %i.f), !inline_history !370
  br label %JS_FreeValueRT.exit

JS_FreeValueRT.exit:                              ; preds = %bb.a, %bb.b, %bb.c
  store i64 %1, ptr %i.c, align 8, !tbaa !218
  store i64 %2, ptr %i.e, align 8, !tbaa !240
  ret { i64, i64 } { i64 0, i64 6 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define { i64, i64 } @JS_GetException(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1240 ; 2 uses
  %.sroa.03.0.copyload = load i64, ptr %i.c, align 8, !tbaa !218
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1248 ; 2 uses
  %.sroa.24.0.copyload = load i64, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !240
  store i32 0, ptr %i.c, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1244
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !218
  store i64 4, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !240
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.03.0.copyload, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.24.0.copyload, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @JS_HasException(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !232
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1248
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 4294967295
  %i.f = icmp ne i64 %i.e, 4
  ret i1 %i.f
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_NewError(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call { i64, i64 } @JS_NewObjectClass(ptr noundef %0, i32 noundef 3) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 1        ; 3 uses
  %i.c = and i64 %i.b, 4294967295
  %i.d = icmp eq i64 %i.c, 6
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { i64, i64 } %i.a, 0        ; 2 uses
  tail call fastcc void @build_backtrace(ptr noundef %0, i64 %i.e, i64 %i.b, i64 0, i64 3, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0 = phi i64 [ %i.b, %bb.b ], [ 6, %bb.a ]
  %.sroa.05.0.insert.insert = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.05.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc void @build_backtrace(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef range(i32 0, 6) %8) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %9 = alloca %struct.JSValue, align 8            ; 6 uses
  %10 = alloca %struct.JSValue, align 8           ; 6 uses
  %11 = alloca %struct.JSValue, align 8           ; 6 uses
  %12 = alloca %struct.JSValue, align 8           ; 6 uses
  %13 = alloca %struct.JSValue, align 8           ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %14 = alloca %struct.DynBuf, align 8            ; 29 uses
  %15 = alloca [64 x %struct.JSCallSiteData], align 16 ; 19 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %16 = alloca [2 x %struct.JSValue], align 16    ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #49
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 28 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !232  ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1257 ; 3 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !1126, !range !234, !noundef !235
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.dz, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.f, align 1, !tbaa !1126
  %i.i = trunc i64 %2 to i32
  %i.j = icmp ugt i32 %i.i, -10                   ; 2 uses
  br i1 %i.j, label %bb.c, label %js_dup.exit

bb.c:                                             ; preds = %bb.b
  %i.k = inttoptr i64 %1 to ptr
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !191
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !191
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %bb.b, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 1240 ; 2 uses
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1248
  %i.p = load <2 x i64>, ptr %i.o, align 8, !tbaa !218
  store i32 0, ptr %i.o, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1244
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !218
  store i64 4, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !240
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.r = load i64, ptr %i.q, align 8              ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = trunc i64 %i.t to i32                    ; 3 uses
  %i.v = icmp ugt i32 %i.u, -10
  br i1 %i.v, label %.thread, label %js_dup.exit344

.thread:                                          ; preds = %js_dup.exit
  %i.w = inttoptr i64 %i.r to ptr
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !191
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !191
  br label %bb.g

js_dup.exit344:                                   ; preds = %js_dup.exit
  %i.aa = icmp ult i32 %i.u, 3
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %js_dup.exit344
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.r to i32
  %i.ab = sitofp i32 %.sroa.0.0.extract.trunc.i to double
  br label %JS_ToFloat64Free.exit

bb.e:                                             ; preds = %js_dup.exit344
  %i.ac = icmp eq i32 %i.u, 8
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = bitcast i64 %i.r to double
  br label %JS_ToFloat64Free.exit

bb.g:                                             ; preds = %.thread, %bb.e
  %i.ae = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef nonnull %0, i64 %i.r, i64 %i.t, i32 noundef 0), !inline_history !1104 ; 2 uses
  %i.af = extractvalue { i64, i64 } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.ae, 1      ; 2 uses
  %i.ah = and i64 %i.ag, 4294967295
  %i.ai = icmp eq i64 %i.ah, 6
  br i1 %i.ai, label %JS_ToFloat64Free.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = bitcast i64 %i.af to double
  %i.ak = trunc i64 %i.ag to i32
  switch i32 %i.ak, label %bb.j [
    i32 0, label %bb.i
    i32 8, label %JS_ToFloat64Free.exit
  ]

bb.i:                                             ; preds = %bb.h
  %.sroa.04.0.extract.trunc.i.i = trunc i64 %i.af to i32
  %i.al = sitofp i32 %.sroa.04.0.extract.trunc.i.i to double
  br label %JS_ToFloat64Free.exit

bb.j:                                             ; preds = %bb.h
  tail call void @abort() #50, !inline_history !1105
  unreachable

JS_ToFloat64Free.exit:                            ; preds = %bb.h, %bb.i, %bb.d, %bb.f
  %.0425 = phi double [ %i.ab, %bb.d ], [ %i.ad, %bb.f ], [ %i.aj, %bb.h ], [ %i.al, %bb.i ] ; 3 uses
  %or.cond = fcmp ult double %.0425, 0.000000e+00
  br i1 %or.cond, label %JS_ToFloat64Free.exit.thread, label %bb.k

bb.k:                                             ; preds = %JS_ToFloat64Free.exit
  %i.am = fcmp ogt double %.0425, f0x41DFFFFFFFC00000
  br i1 %i.am, label %JS_ToFloat64Free.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = tail call double @llvm.fabs.f64(double %.0425)
  %i.ao = fptosi double %i.an to i32
  %.fr568 = freeze i32 %i.ao
  %17 = tail call i32 @llvm.smax.i32(i32 %.fr568, i32 0)
  %i.ap = tail call i32 @llvm.umin.i32(i32 %17, i32 64)
  br label %JS_ToFloat64Free.exit.thread

JS_ToFloat64Free.exit.thread:                     ; preds = %bb.g, %bb.k, %JS_ToFloat64Free.exit, %bb.l
  %.0265 = phi i32 [ %i.ap, %bb.l ], [ 0, %JS_ToFloat64Free.exit ], [ 64, %bb.k ], [ 0, %bb.g ] ; 5 uses
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !232 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1240 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 1248
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = trunc i64 %i.au to i32
  %i.aw = icmp ugt i32 %i.av, -10
  br i1 %i.aw, label %bb.m, label %JS_FreeValue.exit

bb.m:                                             ; preds = %JS_ToFloat64Free.exit.thread
  %i.ax = inttoptr i64 %i.as to ptr
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -4 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !191 ; 2 uses
  %i.ba = add nsw i32 %i.az, -1
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !191
  %i.bb = icmp slt i32 %i.az, 2
  br i1 %i.bb, label %bb.n, label %JS_FreeValue.exit

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @js_free_value_rt(ptr noundef nonnull %i.aq, i64 %i.as, i64 %i.au), !inline_history !456
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %JS_ToFloat64Free.exit.thread, %bb.m, %bb.n
  store <2 x i64> %i.p, ptr %i.ar, align 8, !tbaa !218
  %.not = icmp samesign ult i32 %8, 4             ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = and i64 %i.be, 4294967295
  %i.bg = icmp eq i64 %i.bf, 2
  br i1 %i.bg, label %JS_IsFunction.exit.thread, label %bb.o

bb.o:                                             ; preds = %JS_FreeValue.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bi = load i64, ptr %i.bh, align 8            ; 11 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.bk = load i64, ptr %i.bj, align 8            ; 11 uses
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = icmp ugt i32 %i.bl, -10
  br i1 %i.bm, label %bb.p, label %js_dup.exit297

bb.p:                                             ; preds = %bb.o
  %i.bn = inttoptr i64 %i.bi to ptr
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -4 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !191
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !191
  br label %js_dup.exit297

js_dup.exit297:                                   ; preds = %bb.o, %bb.p
  %i.br = and i64 %i.bk, 4294967295
  %.not.i = icmp eq i64 %i.br, 4294967295
  br i1 %.not.i, label %bb.q, label %JS_IsFunction.exit.thread

bb.q:                                             ; preds = %js_dup.exit297
  %i.bs = inttoptr i64 %i.bi to ptr               ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 18
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !276 ; 2 uses
  switch i16 %i.bu, label %.split449 [
    i16 13, label %JS_IsFunction.exit.thread442
    i16 51, label %JS_IsFunction.exit
  ]

.split449:                                        ; preds = %bb.q
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !232
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1128
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !251
  %i.by = zext i16 %i.bu to i64
  %i.bz = getelementptr inbounds nuw [40 x i8], ptr %i.bx, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !255
  %.not528 = icmp eq ptr %i.cb, null
  br i1 %.not528, label %JS_IsFunction.exit.thread, label %JS_IsFunction.exit.thread442

JS_IsFunction.exit:                               ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !218
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load i8, ptr %i.ce, align 8, !tbaa !458
  %.not527 = icmp eq i8 %i.cf, 0
  br i1 %.not527, label %JS_IsFunction.exit.thread, label %JS_IsFunction.exit.thread442

JS_IsFunction.exit.thread442:                     ; preds = %bb.q, %.split449, %JS_IsFunction.exit
  %i.cg = load ptr, ptr %i.d, align 8, !tbaa !232 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1240 ; 2 uses
  %.sroa.24.0..sroa_idx.i299 = getelementptr inbounds nuw i8, ptr %i.cg, i64 1248
  %i.ci = load <2 x i64>, ptr %i.ch, align 8, !tbaa !218 ; 6 uses
  store i32 0, ptr %i.ch, align 8
  %.sroa.2.0..sroa_idx.i301 = getelementptr inbounds nuw i8, ptr %i.cg, i64 1244
  store i32 0, ptr %.sroa.2.0..sroa_idx.i301, align 4, !tbaa !218
  store i64 4, ptr %.sroa.24.0..sroa_idx.i299, align 8, !tbaa !240
  %i.cj = icmp eq i32 %.0265, 0
  br i1 %i.cj, label %.thread485, label %bb.r

bb.r:                                             ; preds = %JS_IsFunction.exit.thread442
  %.not278 = icmp eq ptr %5, null
  br i1 %.not278, label %js_new_callsite_data2.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %15, i64 16
  store i32 0, ptr %i.ck, align 16
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 0, ptr %.sroa.28.0..sroa_idx.i, align 4, !tbaa !218
  %.sroa.39.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 24
  store i64 2, ptr %.sroa.39.0..sroa_idx.i, align 8, !tbaa !240
  %i.cl = getelementptr inbounds nuw i8, ptr %15, i64 32
  store i32 0, ptr %i.cl, align 16
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 36
  store i32 0, ptr %.sroa.25.0..sroa_idx.i, align 4, !tbaa !218
  %.sroa.36.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i64 2, ptr %.sroa.36.0..sroa_idx.i, align 8, !tbaa !240
  %i.cm = getelementptr inbounds nuw i8, ptr %15, i64 48
  store i8 0, ptr %i.cm, align 16, !tbaa !460
  %i.cn = getelementptr inbounds nuw i8, ptr %15, i64 49
  store i8 0, ptr %i.cn, align 1, !tbaa !461
  %i.co = getelementptr inbounds nuw i8, ptr %15, i64 52
  store i32 %6, ptr %i.co, align 4, !tbaa !1127
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 56
  store i32 %7, ptr %i.cp, align 8, !tbaa !1128
  %i.cq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #52, !inline_history !1106
  %i.cr = tail call { i64, i64 } @JS_NewStringLen(ptr noundef nonnull %0, ptr noundef nonnull %5, i64 noundef %i.cq), !inline_history !1106 ; 2 uses
  %i.cs = extractvalue { i64, i64 } %i.cr, 0
  %i.ct = extractvalue { i64, i64 } %i.cr, 1      ; 2 uses
  store i64 %i.cs, ptr %15, align 16, !tbaa !218
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  store i64 %i.ct, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !240
  %i.cu = and i64 %i.ct, 4294967295
  %i.cv = icmp eq i64 %i.cu, 6
  br i1 %i.cv, label %bb.t, label %js_new_callsite_data2.exit

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %15, align 16
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 0, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !218
  store i64 2, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !240
  %i.cw = load ptr, ptr %i.d, align 8, !tbaa !232 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1240 ; 2 uses
  %.sroa.03.0.copyload.i346 = load i64, ptr %i.cx, align 8, !tbaa !218 ; 2 uses
  %.sroa.24.0..sroa_idx.i347 = getelementptr inbounds nuw i8, ptr %i.cw, i64 1248 ; 2 uses
  %.sroa.24.0.copyload.i348 = load i64, ptr %.sroa.24.0..sroa_idx.i347, align 8, !tbaa !240 ; 2 uses
  store i32 0, ptr %i.cx, align 8
  %.sroa.2.0..sroa_idx.i349 = getelementptr inbounds nuw i8, ptr %i.cw, i64 1244
  store i32 0, ptr %.sroa.2.0..sroa_idx.i349, align 4, !tbaa !218
  store i64 4, ptr %.sroa.24.0..sroa_idx.i347, align 8, !tbaa !240
  %i.cy = load ptr, ptr %i.d, align 8, !tbaa !232
  %i.cz = trunc i64 %.sroa.24.0.copyload.i348 to i32
  %i.da = icmp ugt i32 %i.cz, -10
  br i1 %i.da, label %bb.u, label %js_new_callsite_data2.exit

bb.u:                                             ; preds = %bb.t
  %i.db = inttoptr i64 %.sroa.03.0.copyload.i346 to ptr
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 -4 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !191 ; 2 uses
  %i.de = add nsw i32 %i.dd, -1
  store i32 %i.de, ptr %i.dc, align 4, !tbaa !191
  %i.df = icmp slt i32 %i.dd, 2
  br i1 %i.df, label %bb.v, label %js_new_callsite_data2.exit

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @js_free_value_rt(ptr noundef %i.cy, i64 %.sroa.03.0.copyload.i346, i64 %.sroa.24.0.copyload.i348), !inline_history !1107
  br label %js_new_callsite_data2.exit

JS_IsFunction.exit.thread:                        ; preds = %js_dup.exit297, %JS_FreeValue.exit, %.split449, %JS_IsFunction.exit
  %.sroa.6.0441 = phi i64 [ %i.bk, %.split449 ], [ %i.bk, %JS_IsFunction.exit ], [ %i.bk, %js_dup.exit297 ], [ undef, %JS_FreeValue.exit ] ; 3 uses
  %.sroa.0100.0438 = phi i64 [ %i.bi, %.split449 ], [ %i.bi, %JS_IsFunction.exit ], [ %i.bi, %js_dup.exit297 ], [ undef, %JS_FreeValue.exit ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %14, i8 0, i64 32, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %14, i64 40
  store ptr %0, ptr %i.dg, align 8, !tbaa !463
  %i.dh = getelementptr inbounds nuw i8, ptr %14, i64 32
  store ptr @js_dbuf_realloc, ptr %i.dh, align 8, !tbaa !464
  %i.di = icmp eq i32 %.0265, 0
  br i1 %i.di, label %.thread497.thread, label %bb.w

bb.w:                                             ; preds = %JS_IsFunction.exit.thread
  %.not276 = icmp eq ptr %5, null
  br i1 %.not276, label %js_new_callsite_data2.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ptr, ...) @dbuf_printf(ptr noundef %14, ptr noundef nonnull @.str.98, ptr noundef nonnull %5)
  %.not277 = icmp eq i32 %6, -1
  br i1 %.not277, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void (ptr, ptr, ...) @dbuf_printf(ptr noundef %14, ptr noundef nonnull @.str.99, i32 noundef %6, i32 noundef %7)
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dj = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !465
  %i.dl = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !466 ; 3 uses
  %i.dn = icmp eq i64 %i.dk, %i.dm
  br i1 %i.dn, label %bb.aa, label %bb.ab, !prof !192

bb.aa:                                            ; preds = %bb.z
  call fastcc void @__dbuf_putc(ptr noundef nonnull %14, i8 noundef zeroext 10)
  br label %js_new_callsite_data2.exit

bb.ab:                                            ; preds = %bb.z
  %i.do = load ptr, ptr %14, align 8, !tbaa !467
  %i.dp = add i64 %i.dm, 1
  store i64 %i.dp, ptr %i.dl, align 8, !tbaa !466
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dm
  store i8 10, ptr %i.dq, align 1, !tbaa !218
  br label %js_new_callsite_data2.exit

js_new_callsite_data2.exit:                       ; preds = %bb.ab, %bb.aa, %bb.s, %bb.t, %bb.u, %bb.v
  %.sroa.6.0439 = phi i64 [ %.sroa.6.0441, %bb.aa ], [ %.sroa.6.0441, %bb.ab ], [ %i.bk, %bb.s ], [ %i.bk, %bb.v ], [ %i.bk, %bb.u ], [ %i.bk, %bb.t ] ; 2 uses
  %.sroa.0100.0436 = phi i64 [ %.sroa.0100.0438, %bb.aa ], [ %.sroa.0100.0438, %bb.ab ], [ %i.bi, %bb.s ], [ %i.bi, %bb.v ], [ %i.bi, %bb.u ], [ %i.bi, %bb.t ] ; 2 uses
  %.0259433 = phi i1 [ false, %bb.aa ], [ false, %bb.ab ], [ true, %bb.s ], [ true, %bb.v ], [ true, %bb.u ], [ true, %bb.t ] ; 2 uses
  %i.dr = phi <2 x i64> [ <i64 0, i64 4>, %bb.aa ], [ <i64 0, i64 4>, %bb.ab ], [ %i.ci, %bb.s ], [ %i.ci, %bb.v ], [ %i.ci, %bb.u ], [ %i.ci, %bb.t ] ; 2 uses
  %i.ds = and i32 %8, 2
  %.not280 = icmp eq i32 %i.ds, 0
  br i1 %.not280, label %js_new_callsite_data2.exit.thread, label %.loopexit

js_new_callsite_data2.exit.thread:                ; preds = %bb.r, %bb.w, %js_new_callsite_data2.exit
  %.0263462 = phi i32 [ 1, %js_new_callsite_data2.exit ], [ 0, %bb.r ], [ 0, %bb.w ] ; 4 uses
  %.0259433461 = phi i1 [ %.0259433, %js_new_callsite_data2.exit ], [ true, %bb.r ], [ false, %bb.w ] ; 4 uses
  %.sroa.0100.0436460 = phi i64 [ %.sroa.0100.0436, %js_new_callsite_data2.exit ], [ %i.bi, %bb.r ], [ %.sroa.0100.0438, %bb.w ] ; 3 uses
  %.sroa.6.0439459 = phi i64 [ %.sroa.6.0439, %js_new_callsite_data2.exit ], [ %i.bk, %bb.r ], [ %.sroa.6.0441, %bb.w ] ; 3 uses
  %i.dt = phi <2 x i64> [ %i.dr, %js_new_callsite_data2.exit ], [ %i.ci, %bb.r ], [ <i64 0, i64 4>, %bb.w ] ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 1264
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !264 ; 5 uses
  br i1 %.not, label %.loopexit531, label %.preheader530

.preheader530:                                    ; preds = %js_new_callsite_data2.exit.thread
  %i.dw = icmp samesign ult i32 %.0263462, %.0265
  %i.dx = icmp ne ptr %i.dv, null
  %18 = select i1 %i.dx, i1 %i.dw, i1 false
  br i1 %18, label %.lr.ph.split, label %.loopexit531

.lr.ph.split:                                     ; preds = %.preheader530, %bb.ac
  %.0253546 = phi ptr [ %i.ed, %bb.ac ], [ %i.dv, %.preheader530 ] ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0253546, i64 8
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %.0253546, i64 16
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = tail call fastcc zeroext i1 @js_strict_eq2(i64 %i.dz, i64 %i.eb, i64 %3, i64 %4, i32 noundef 1)
  br i1 %i.ec, label %.loopexit531, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.split
  %i.ed = load ptr, ptr %.0253546, align 8, !tbaa !268 ; 2 uses
  %.not569.a = icmp eq ptr %i.ed, null
  br i1 %.not569.a, label %.loopexit531, label %.lr.ph.split, !llvm.loop !1108

.loopexit531:                                     ; preds = %bb.ac, %.lr.ph.split, %.preheader530, %js_new_callsite_data2.exit.thread
  %.0255 = phi ptr [ %i.dv, %js_new_callsite_data2.exit.thread ], [ %i.dv, %.preheader530 ], [ %i.dv, %bb.ac ], [ %.0253546, %.lr.ph.split ] ; 2 uses
  %i.ee = icmp ne ptr %.0255, null
  %i.ef = icmp samesign ult i32 %.0263462, %.0265
  %19 = select i1 %i.ee, i1 %i.ef, i1 false
  br i1 %19, label %.lr.ph555, label %.loopexit

.lr.ph555:                                        ; preds = %.loopexit531
  %i.eg = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph555, %bb.cb
  %.0554 = phi i32 [ %8, %.lr.ph555 ], [ %.1, %bb.cb ] ; 2 uses
  %.1254551 = phi ptr [ %.0255, %.lr.ph555 ], [ %i.nm, %bb.cb ] ; 7 uses
  %.1264550 = phi i32 [ %.0263462, %.lr.ph555 ], [ %.2, %bb.cb ] ; 3 uses
  %i.ei = and i32 %.0554, 1
  %.not281 = icmp eq i32 %i.ei, 0
  br i1 %.not281, label %bb.ae, label %bb.cb

bb.ae:                                            ; preds = %bb.ad
  %i.ej = getelementptr inbounds nuw i8, ptr %.1254551, i64 8 ; 4 uses
  %i.ek = load ptr, ptr %i.ej, align 8            ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 18
  %i.em = load i16, ptr %i.el, align 2, !tbaa !276
  %i.en = zext i16 %i.em to i32
  %i.eo = add nsw i32 %i.en, -13                  ; 2 uses
  %i.ep = call i32 @llvm.fshl.i32(i32 %i.eo, i32 %i.eo, i32 31)
  switch i32 %i.ep, label %js_class_has_bytecode.exit [
    i32 21, label %bb.af
    i32 2, label %bb.af
    i32 0, label %bb.af
    i32 23, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ek, i64 48
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !218 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.et = load i16, ptr %i.es, align 8
  %i.eu = and i16 %i.et, 2048
  %i.ev = icmp ne i16 %i.eu, 0
  br label %js_class_has_bytecode.exit

js_class_has_bytecode.exit:                       ; preds = %bb.ae, %bb.af
  %.0258 = phi i1 [ %i.ev, %bb.af ], [ false, %bb.ae ]
  %.0257 = phi ptr [ %i.er, %bb.af ], [ null, %bb.ae ] ; 4 uses
  br i1 %.0259433461, label %bb.ag, label %bb.bb

bb.ag:                                            ; preds = %js_class_has_bytecode.exit
  %i.ew = zext i32 %.1264550 to i64
  %i.ex = getelementptr inbounds nuw [64 x i8], ptr %15, i64 %i.ew ; 26 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.1254551, i64 61
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !270, !range !234, !noundef !235
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 49
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !461
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fc = load i64, ptr %i.ej, align 8            ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.1254551, i64 16 ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8            ; 2 uses
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = icmp ugt i32 %i.ff, -10
  br i1 %i.fg, label %bb.ah, label %js_dup.exit380

bb.ah:                                            ; preds = %bb.ag
  %i.fh = inttoptr i64 %i.fc to ptr
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 -4 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !191
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !191
  br label %js_dup.exit380

js_dup.exit380:                                   ; preds = %bb.ag, %bb.ah
  store i64 %i.fc, ptr %i.fb, align 16, !tbaa !218
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 24
  store i64 %i.fe, ptr %.sroa.418.0..sroa_idx.i, align 8, !tbaa !240
  %i.fl = load i64, ptr %i.fd, align 8
  %i.fm = and i64 %i.fl, 4294967295
  %.not.i365 = icmp eq i64 %i.fm, 4294967295
  br i1 %.not.i365, label %bb.ai, label %.split.i.thread

bb.ai:                                            ; preds = %js_dup.exit380
  %i.fn = load i64, ptr %i.ej, align 8
  %i.fo = inttoptr i64 %i.fn to ptr               ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !316 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !191 ; 2 uses
  %i.ft = and i32 %i.fs, 58
  %i.fu = zext i32 %i.fs to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 60 ; 2 uses
  %i.fx = xor i32 %i.ft, -1
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fw, i64 %i.fy
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !191 ; 2 uses
  %.not19.i.i = icmp eq i32 %i.ga, 0
  br i1 %.not19.i.i, label %.split.i.thread, label %.lr.ph.i.i367

.lr.ph.i.i367:                                    ; preds = %bb.ai, %bb.aj
  %.0.in20.i.i = phi i32 [ %i.gh, %bb.aj ], [ %i.ga, %bb.ai ]
  %.0.i.i368 = zext i32 %.0.in20.i.i to i64
  %i.gb = add nsw i64 %.0.i.i368, -1              ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.gb ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !319
  %i.gf = icmp eq i32 %i.ge, 58
  br i1 %i.gf, label %bb.ak, label %bb.aj, !prof !324

bb.aj:                                            ; preds = %.lr.ph.i.i367
  %i.gg = load i32, ptr %i.gc, align 4
  %i.gh = and i32 %i.gg, 67108863                 ; 2 uses
  %.not.i.i369 = icmp eq i32 %i.gh, 0
  br i1 %.not.i.i369, label %.split.i.thread, label %.lr.ph.i.i367, !llvm.loop !36

bb.ak:                                            ; preds = %.lr.ph.i.i367
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !317
  %i.gk = getelementptr inbounds nuw [16 x i8], ptr %i.gj, i64 %i.gb ; 2 uses
  %i.gl = load i32, ptr %i.gc, align 4
  %.not8.i372 = icmp ult i32 %i.gl, 1073741824
  br i1 %.not8.i372, label %bb.al, label %.split.i.thread

bb.al:                                            ; preds = %bb.ak
  %.sroa.4.0..sroa_idx.i373 = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %.sroa.4.0.copyload.i374 = load i64, ptr %.sroa.4.0..sroa_idx.i373, align 8, !tbaa !240 ; 2 uses
  %i.gm = and i64 %.sroa.4.0.copyload.i374, 4294967295
  %.not9.i375 = icmp eq i64 %i.gm, 4294967289
  br i1 %.not9.i375, label %get_func_name.exit377, label %.split.i.thread

get_func_name.exit377:                            ; preds = %bb.al
  %.sroa.0.0.copyload.i376 = load i64, ptr %i.gk, align 8, !tbaa !218
  %i.gn = call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef null, i64 %.sroa.0.0.copyload.i376, i64 %.sroa.4.0.copyload.i374, i1 noundef zeroext false), !inline_history !1109 ; 8 uses
  %.not.i305 = icmp eq ptr %i.gn, null
  br i1 %.not.i305, label %.split.i.thread, label %bb.am

bb.am:                                            ; preds = %get_func_name.exit377
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !218
  %i.gp = icmp eq i8 %i.go, 0
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ex, i64 32 ; 2 uses
  br i1 %i.gp, label %bb.an, label %bb.ap

.split.i.thread:                                  ; preds = %bb.aj, %get_func_name.exit377, %js_dup.exit380, %bb.ak, %bb.al, %bb.ai
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  store i32 0, ptr %i.gr, align 16
  %.sroa.215.0..sroa_idx.i474 = getelementptr inbounds nuw i8, ptr %i.ex, i64 36
  store i32 0, ptr %.sroa.215.0..sroa_idx.i474, align 4, !tbaa !218
  %.sroa.316.0..sroa_idx.i475 = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  store i64 2, ptr %.sroa.316.0..sroa_idx.i475, align 8, !tbaa !240
  br label %JS_FreeCString.exit364

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.gq, align 16
  %.sroa.215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 36
  store i32 0, ptr %.sroa.215.0..sroa_idx.i, align 4, !tbaa !218
  %.sroa.316.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  store i64 2, ptr %.sroa.316.0..sroa_idx.i, align 8, !tbaa !240
  %i.gs = load ptr, ptr %i.d, align 8, !tbaa !232
  %i.gt = getelementptr inbounds i8, ptr %i.gn, i64 -28 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !191 ; 2 uses
  %i.gv = add nsw i32 %i.gu, -1
  store i32 %i.gv, ptr %i.gt, align 4, !tbaa !191
  %i.gw = icmp slt i32 %i.gu, 2
  br i1 %i.gw, label %bb.ao, label %JS_FreeCString.exit364

bb.ao:                                            ; preds = %bb.an
  %i.gx = getelementptr inbounds i8, ptr %i.gn, i64 -24
  %i.gy = ptrtoint ptr %i.gx to i64
  call fastcc void @js_free_value_rt(ptr noundef %i.gs, i64 %i.gy, i64 -7), !inline_history !1110
  br label %JS_FreeCString.exit364

bb.ap:                                            ; preds = %bb.am
  %i.gz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gn) #52, !inline_history !1111
  %i.ha = call { i64, i64 } @JS_NewStringLen(ptr noundef %0, ptr noundef nonnull %i.gn, i64 noundef %i.gz), !inline_history !1111 ; 2 uses
  %i.hb = extractvalue { i64, i64 } %i.ha, 0
  %i.hc = extractvalue { i64, i64 } %i.ha, 1
  store i64 %i.hb, ptr %i.gq, align 16, !tbaa !218
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  store i64 %i.hc, ptr %.sroa.413.0..sroa_idx.i, align 8, !tbaa !240
  %i.hd = load ptr, ptr %i.d, align 8, !tbaa !232
  %i.he = getelementptr inbounds i8, ptr %i.gn, i64 -28 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !191 ; 2 uses
  %i.hg = add nsw i32 %i.hf, -1
  store i32 %i.hg, ptr %i.he, align 4, !tbaa !191
  %i.hh = icmp slt i32 %i.hf, 2
  br i1 %i.hh, label %bb.aq, label %JS_FreeCString.exit364

bb.aq:                                            ; preds = %bb.ap
  %i.hi = getelementptr inbounds i8, ptr %i.gn, i64 -24
  %i.hj = ptrtoint ptr %i.hi to i64
  call fastcc void @js_free_value_rt(ptr noundef %i.hd, i64 %i.hj, i64 -7), !inline_history !1110
  br label %JS_FreeCString.exit364

JS_FreeCString.exit364:                           ; preds = %bb.ap, %bb.aq, %.split.i.thread, %bb.an, %bb.ao
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ex, i64 40 ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 8
  %i.hm = and i64 %i.hl, 4294967295
  %i.hn = icmp eq i64 %i.hm, 6
  br i1 %i.hn, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %JS_FreeCString.exit364
  %i.ho = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  store i32 0, ptr %i.ho, align 16
  %.sroa.210.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 36
  store i32 0, ptr %.sroa.210.0..sroa_idx.i, align 4, !tbaa !218
  store i64 2, ptr %i.hk, align 8, !tbaa !240
end_hunk_0
begin_hunk_1_@js_atomics_wait:bb.a
  ]

bb.m:                                             ; preds = %js_dup.exit.i60, %js_dup.exit.i60, %js_dup.exit.i60, %js_dup.exit.i60
  %.sroa.017.0.extract.trunc.i.i = trunc i64 %.sroa.017.0.in.i.i to i32
  br label %bb.s

bb.n:                                             ; preds = %js_dup.exit.i60
  %i.bb = lshr i64 %.sroa.017.0.in.i.i, 52
  %i.bc = trunc nuw nsw i64 %i.bb to i32
  %i.bd = and i32 %i.bc, 2047                     ; 3 uses
  %i.be = icmp samesign ult i32 %i.bd, 1054
  br i1 %i.be, label %bb.o, label %bb.p, !prof !324

bb.o:                                             ; preds = %bb.n
  %.sroa.017.0.i.le.i = bitcast i64 %.sroa.017.0.in.i.i to double
  %i.bf = fptosi double %.sroa.017.0.i.le.i to i32
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.bg = icmp samesign ult i32 %i.bd, 1107
  br i1 %i.bg, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bh = and i64 %.sroa.017.0.in.i.i, 4503599627370495
  %i.bi = or disjoint i64 %i.bh, 4503599627370496
  %i.bj = add nsw i32 %i.bd, -1043
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = shl i64 %i.bi, %i.bk
  %i.bm = lshr i64 %i.bl, 32                      ; 2 uses
  %i.bn = trunc nuw i64 %i.bm to i32              ; 2 uses
  %i.bo = icmp slt i64 %.sroa.017.0.in.i.i, 0
  %i.bp = icmp ne i64 %i.bm, 2147483648
  %or.cond.i.i = select i1 %i.bo, i1 %i.bp, i1 false
  %i.bq = sub nsw i32 0, %i.bn
  %spec.select.i.i = select i1 %or.cond.i.i, i32 %i.bq, i32 %i.bn
  br label %bb.s

bb.r:                                             ; preds = %js_dup.exit.i60
  %i.br = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.017.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0) #51, !inline_history !103 ; 2 uses
  %i.bs = extractvalue { i64, i64 } %i.br, 0
  %i.bt = extractvalue { i64, i64 } %i.br, 1      ; 2 uses
  %i.bu = and i64 %i.bt, 4294967295
  %i.bv = icmp eq i64 %i.bu, 6
  br i1 %i.bv, label %JS_ToBigInt64.exit, label %js_dup.exit.i60

bb.s:                                             ; preds = %bb.p, %bb.m, %bb.o, %bb.q
  %storemerge.i.i61.ph = phi i32 [ %spec.select.i.i, %bb.q ], [ %i.bf, %bb.o ], [ %.sroa.017.0.extract.trunc.i.i, %bb.m ], [ 0, %bb.p ]
  %i.bw = sext i32 %storemerge.i.i61.ph to i64
  br label %JS_ToBigInt64.exit.thread

JS_ToBigInt64.exit.thread:                        ; preds = %bb.j, %bb.i, %bb.h, %bb.e, %bb.s
  %.069 = phi i64 [ %i.bw, %bb.s ], [ %.016.i.i, %bb.j ], [ %.016.i.i, %bb.i ], [ %.016.i.i, %bb.h ], [ %i.ad, %bb.e ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.by = load i64, ptr %i.bx, align 8            ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ca = load i64, ptr %i.bz, align 8            ; 2 uses
  %i.cb = trunc i64 %i.ca to i32                  ; 3 uses
  %i.cc = icmp ugt i32 %i.cb, -10
  br i1 %i.cc, label %.thread.i, label %js_dup.exit.i63

.thread.i:                                        ; preds = %JS_ToBigInt64.exit.thread
  %i.cd = inttoptr i64 %i.by to ptr
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -4 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !191
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !191
  br label %bb.w

js_dup.exit.i63:                                  ; preds = %JS_ToBigInt64.exit.thread
  %i.ch = icmp ult i32 %i.cb, 3
  br i1 %i.ch, label %bb.t, label %bb.u

bb.t:                                             ; preds = %js_dup.exit.i63
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.by to i32
  %i.ci = sitofp i32 %.sroa.0.0.extract.trunc.i.i to double
  br label %bb.aa

bb.u:                                             ; preds = %js_dup.exit.i63
  %i.cj = icmp eq i32 %i.cb, 8
  br i1 %i.cj, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ck = bitcast i64 %i.by to double
  br label %bb.aa

bb.w:                                             ; preds = %bb.u, %.thread.i
  %i.cl = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %i.by, i64 %i.ca, i32 noundef 0) #51, !inline_history !7 ; 2 uses
  %i.cm = extractvalue { i64, i64 } %i.cl, 0      ; 2 uses
  %i.cn = extractvalue { i64, i64 } %i.cl, 1      ; 2 uses
  %i.co = and i64 %i.cn, 4294967295
  %i.cp = icmp eq i64 %i.co, 6
  br i1 %i.cp, label %JS_ToBigInt64.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = bitcast i64 %i.cm to double
  %i.cr = trunc i64 %i.cn to i32
  switch i32 %i.cr, label %bb.z [
    i32 0, label %bb.y
    i32 8, label %bb.aa
  ]

bb.y:                                             ; preds = %bb.x
  %.sroa.04.0.extract.trunc.i.i = trunc i64 %i.cm to i32
  %i.cs = sitofp i32 %.sroa.04.0.extract.trunc.i.i to double
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  tail call void @abort() #50, !inline_history !8
  unreachable

bb.aa:                                            ; preds = %bb.t, %bb.v, %bb.x, %bb.y
  %.0.ph = phi double [ %i.cs, %bb.y ], [ %i.cq, %bb.x ], [ %i.ci, %bb.t ], [ %i.ck, %bb.v ] ; 4 uses
  %i.ct = fcmp uno double %.0.ph, 0.000000e+00
  %i.cu = fcmp oge double %.0.ph, f0x43E0000000000000
  %or.cond = or i1 %i.ct, %i.cu
  %.inv = fcmp ole double %.0.ph, 0.000000e+00
  %spec.select81 = select i1 %.inv, double 0.000000e+00, double %.0.ph
  %spec.select = fptosi double %spec.select81 to i64
  %.052 = select i1 %or.cond, i64 9223372036854775807, i64 %spec.select ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !232
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1432
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !308, !range !234, !noundef !235
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.1048) ; 0 uses
  br label %JS_ToBigInt64.exit

bb.ac:                                            ; preds = %bb.aa
  %i.db = load i64, ptr %i.a, align 8, !tbaa !240 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !218
  %i.de = zext i32 %i.dd to i64
  %.not59 = icmp ult i64 %i.db, %i.de
  br i1 %.not59, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.df = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.1045) ; 0 uses
  br label %JS_ToBigInt64.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !218
  %i.di = zext nneg i8 %i.o to i64
  %i.dj = shl i64 %i.db, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dj ; 3 uses
  %i.dl = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @js_atomics_mutex) #49
  %.not.i = icmp eq i32 %i.dl, 0
  br i1 %.not.i, label %js_mutex_lock.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @abort() #50
  unreachable

js_mutex_lock.exit:                               ; preds = %bb.ae
  br i1 %i.p, label %.split, label %bb.ag

.split:                                           ; preds = %js_mutex_lock.exit
  %i.dm = load i64, ptr %i.dk, align 8, !tbaa !240
  %.not83 = icmp eq i64 %i.dm, %.069
  br i1 %.not83, label %bb.ai, label %bb.ah

bb.ag:                                            ; preds = %js_mutex_lock.exit
  %i.dn = load i32, ptr %i.dk, align 4, !tbaa !191
  %i.do = sext i32 %i.dn to i64
  %.not82 = icmp eq i64 %.069, %i.do
  br i1 %.not82, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.split, %bb.ag
  tail call fastcc void @js_mutex_unlock()
  %i.dp = tail call { i64, i64 } @JS_AtomToString(ptr noundef nonnull %0, i32 noundef 151) ; 2 uses
  %i.dq = extractvalue { i64, i64 } %i.dp, 0      ; 2 uses
  %.sroa.10.0.extract.shift45 = and i64 %i.dq, -4294967296
  %i.dr = extractvalue { i64, i64 } %i.dp, 1
  br label %JS_ToBigInt64.exit

bb.ai:                                            ; preds = %.split, %bb.ag
  %i.ds = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr %i.dk, ptr %i.ds, align 8, !tbaa !970
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  call fastcc void @js_cond_init(ptr noundef %i.dt)
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i8 1, ptr %i.du, align 8, !tbaa !2262
  %i.dv = load ptr, ptr @js_atomics_waiter_list, align 8, !tbaa !223 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  store ptr %5, ptr %i.dw, align 8, !tbaa !222
  store ptr %i.dv, ptr %5, align 8, !tbaa !223
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr @js_atomics_waiter_list, ptr %i.dx, align 8, !tbaa !222
  store ptr %5, ptr @js_atomics_waiter_list, align 8, !tbaa !223
  %i.dy = icmp eq i64 %.052, 9223372036854775807
  br i1 %i.dy, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call fastcc void @js_cond_wait(ptr noundef %i.dt)
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %6 = sitofp i64 %.052 to double
  %i.dz = fmul nnan double %6, 1.000000e+06
  %i.ea = fptoui double %i.dz to i64
  %i.eb = call fastcc i32 @js_cond_timedwait(ptr noundef %i.dt, i64 noundef %i.ea)
  %i.ec = icmp eq i32 %i.eb, -1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.051 = phi i1 [ false, %bb.aj ], [ %i.ec, %bb.ak ]
  %i.ed = load i8, ptr %i.du, align 8, !tbaa !2262, !range !234, !noundef !235
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ef = load ptr, ptr %5, align 8, !tbaa !223   ; 2 uses
  %i.eg = load ptr, ptr %i.dx, align 8, !tbaa !222 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !222
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !223
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  call fastcc void @js_mutex_unlock()
  %i.ei = call i32 @pthread_cond_destroy(ptr noundef nonnull %i.dt) #49
  %.not.i66 = icmp eq i32 %i.ei, 0
  br i1 %.not.i66, label %js_cond_destroy.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @abort() #50
  unreachable

js_cond_destroy.exit:                             ; preds = %bb.an
  br i1 %.051, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %js_cond_destroy.exit
  %i.ej = call { i64, i64 } @JS_AtomToString(ptr noundef nonnull %0, i32 noundef 152) ; 2 uses
  %i.ek = extractvalue { i64, i64 } %i.ej, 0      ; 2 uses
  %.sroa.10.0.extract.shift47 = and i64 %i.ek, -4294967296
  %i.el = extractvalue { i64, i64 } %i.ej, 1
  br label %JS_ToBigInt64.exit

bb.aq:                                            ; preds = %js_cond_destroy.exit
  %i.em = call { i64, i64 } @JS_AtomToString(ptr noundef nonnull %0, i32 noundef 153) ; 2 uses
  %i.en = extractvalue { i64, i64 } %i.em, 0      ; 2 uses
  %.sroa.10.0.extract.shift49 = and i64 %i.en, -4294967296
  %i.eo = extractvalue { i64, i64 } %i.em, 1
  br label %JS_ToBigInt64.exit

JS_ToBigInt64.exit:                               ; preds = %bb.r, %bb.w, %js_dup.exit.i, %bb.a, %bb.aq, %bb.ap, %bb.ah, %bb.ad, %bb.ab
  %.sroa.038.0 = phi i64 [ 0, %bb.a ], [ 0, %js_dup.exit.i ], [ 0, %bb.ad ], [ %i.dq, %bb.ah ], [ %i.ek, %bb.ap ], [ %i.en, %bb.aq ], [ 0, %bb.ab ], [ 0, %bb.w ], [ 0, %bb.r ]
  %.sroa.10.0 = phi i64 [ 0, %bb.a ], [ 0, %js_dup.exit.i ], [ 0, %bb.ad ], [ %.sroa.10.0.extract.shift45, %bb.ah ], [ %.sroa.10.0.extract.shift47, %bb.ap ], [ %.sroa.10.0.extract.shift49, %bb.aq ], [ 0, %bb.ab ], [ 0, %bb.w ], [ 0, %bb.r ]
  %.sroa.14.0 = phi i64 [ 6, %bb.a ], [ 6, %js_dup.exit.i ], [ 6, %bb.ad ], [ %i.dr, %bb.ah ], [ %i.el, %bb.ap ], [ %i.eo, %bb.aq ], [ 6, %bb.ab ], [ 6, %bb.w ], [ 6, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.sroa.038.0.insert.ext = and i64 %.sroa.038.0, 4294967295
  %.sroa.038.0.insert.insert = or disjoint i64 %.sroa.10.0, %.sroa.038.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.038.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.14.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_atomics_notify(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %5 = alloca %struct.list_head, align 8          ; 11 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load i64, ptr %4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %i.g = load i64, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = load i64, ptr %i.h, align 8
  %i.j = call fastcc ptr @js_atomics_get_buf(ptr noundef %0, i64 %i.d, i64 %i.f, i64 %i.g, i64 %i.i, ptr noundef nonnull %i.b, ptr noundef %i.a, i32 noundef 1) ; 4 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %JS_ToInt32Clamp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 18
  %i.l = load i16, ptr %i.k, align 2, !tbaa !276
  %i.m = zext i16 %i.l to i64
  %i.n = getelementptr i8, ptr @typed_array_size_log2, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -22
  %i.p = load i8, ptr %i.o, align 1, !tbaa !218
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.r = load i64, ptr %i.q, align 8              ; 3 uses
  %i.s = and i64 %i.r, 4294967295
  %i.t = icmp eq i64 %i.s, 3
  br i1 %i.t, label %JS_ToInt32Clamp.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.v = load i64, ptr %i.u, align 8              ; 2 uses
  %i.w = trunc i64 %i.r to i32
  %i.x = icmp ugt i32 %i.w, -10
  br i1 %i.x, label %bb.d, label %js_dup.exit.i.preheader

bb.d:                                             ; preds = %bb.c
  %i.y = inttoptr i64 %i.v to ptr
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !191
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !191
  br label %js_dup.exit.i.preheader

js_dup.exit.i.preheader:                          ; preds = %bb.d, %bb.c
  br label %js_dup.exit.i

js_dup.exit.i:                                    ; preds = %js_dup.exit.i.preheader, %bb.h
  %.sroa.09.0.in.i.i = phi i64 [ %i.ag, %bb.h ], [ %i.v, %js_dup.exit.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i = phi i64 [ %i.ah, %bb.h ], [ %i.r, %js_dup.exit.i.preheader ] ; 2 uses
  %i.ac = trunc i64 %.sroa.6.0.i.i to i32
  switch i32 %i.ac, label %bb.h [
    i32 0, label %bb.e
    i32 1, label %bb.e
    i32 2, label %bb.e
    i32 3, label %bb.e
    i32 6, label %JS_ToInt32Clamp.exit
    i32 8, label %bb.f
  ]

bb.e:                                             ; preds = %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i
  %.sroa.09.0.extract.trunc.i.i = trunc i64 %.sroa.09.0.in.i.i to i32
  br label %bb.i

bb.f:                                             ; preds = %js_dup.exit.i
  %.sroa.09.0.le.i.i = bitcast i64 %.sroa.09.0.in.i.i to double ; 4 uses
  %i.ad = fcmp uno double %.sroa.09.0.le.i.i, 0.000000e+00
  %i.ae = fcmp olt double %.sroa.09.0.le.i.i, f0xC1E0000000000000
  %or.cond54 = or i1 %i.ad, %i.ae
  br i1 %or.cond54, label %JS_ToInt32Clamp.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.inv.i.i = fcmp oge double %.sroa.09.0.le.i.i, f0x41DFFFFFFFC00000
  %spec.select16.i.i = select i1 %.inv.i.i, double f0x41DFFFFFFFC00000, double %.sroa.09.0.le.i.i
  %spec.select.i.i = fptosi double %spec.select16.i.i to i32
  br label %bb.i

bb.h:                                             ; preds = %js_dup.exit.i
  %i.af = call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.09.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0), !inline_history !72 ; 2 uses
  %i.ag = extractvalue { i64, i64 } %i.af, 0
  %i.ah = extractvalue { i64, i64 } %i.af, 1      ; 2 uses
  %i.ai = and i64 %i.ah, 4294967295
  %i.aj = icmp eq i64 %i.ai, 6
  br i1 %i.aj, label %JS_ToInt32Clamp.exit, label %js_dup.exit.i

bb.i:                                             ; preds = %bb.g, %bb.e
  %.1.sink.i.ph.i = phi i32 [ %.sroa.09.0.extract.trunc.i.i, %bb.e ], [ %spec.select.i.i, %bb.g ]
  %spec.select = call i32 @llvm.smax.i32(i32 %.1.sink.i.ph.i, i32 0)
  br label %JS_ToInt32Clamp.exit.thread

JS_ToInt32Clamp.exit.thread:                      ; preds = %bb.i, %bb.f, %bb.b
  %.048 = phi i32 [ 2147483647, %bb.b ], [ %spec.select, %bb.i ], [ 0, %bb.f ] ; 2 uses
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !240 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.am = load i32, ptr %i.al, align 8, !tbaa !218
  %i.an = zext i32 %i.am to i64
  %.not41 = icmp ult i64 %i.ak, %i.an
  br i1 %.not41, label %bb.k, label %bb.j

bb.j:                                             ; preds = %JS_ToInt32Clamp.exit.thread
  %i.ao = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.1045) ; 0 uses
  br label %JS_ToInt32Clamp.exit

bb.k:                                             ; preds = %JS_ToInt32Clamp.exit.thread
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !972
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 10
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !741
  %i.as = icmp ne i8 %i.ar, 0
  %i.at = icmp ne i32 %.048, 0
  %or.cond = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond, label %bb.l, label %js_mutex_unlock.exit

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !218
  %i.aw = zext nneg i8 %i.p to i64
  %i.ax = shl i64 %i.ak, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ax
  %i.az = call i32 @pthread_mutex_lock(ptr noundef nonnull @js_atomics_mutex) #49
  %.not.i = icmp eq i32 %i.az, 0
  br i1 %.not.i, label %js_mutex_lock.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @abort() #50
  unreachable

js_mutex_lock.exit:                               ; preds = %bb.l
  store ptr %5, ptr %5, align 8, !tbaa !223
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %5, ptr %i.ba, align 8, !tbaa !222
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @js_atomics_waiter_list, i64 8), align 8, !tbaa !222 ; 2 uses
  %.not4259 = icmp eq ptr %i.bb, @js_atomics_waiter_list
  br i1 %.not4259, label %._crit_edge70, label %.lr.ph

.lr.ph:                                           ; preds = %js_mutex_lock.exit, %bb.o
end_hunk_1
