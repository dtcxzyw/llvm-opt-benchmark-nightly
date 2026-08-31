Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_sprintf?download=true
inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@stbsp__clamp_callback:bb.a
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %.pre36
  store ptr %i.ac, ptr %1, align 8, !tbaa !78
  %i.ad = sub nsw i32 %i.aa, %spec.select         ; 2 uses
  store i32 %i.ad, ptr %i.e, align 8, !tbaa !77
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.a
  %i.ae = phi i32 [ %i.ad, %.loopexit ], [ %i.f, %bb.a ] ; 2 uses
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.ah = icmp samesign ugt i32 %i.ae, 511
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %1, align 8, !tbaa !78
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.028 = phi ptr [ %i.ag, %bb.d ], [ %i.ai, %bb.f ], [ %i.aj, %bb.g ]
  ret ptr %.028
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define nonnull ptr @stbsp__count_clamp_callback(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(ret: address, provenance) %1, i32 noundef %2) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !75
  %i.c = add nsw i32 %i.b, %2
  store i32 %i.c, ptr %i.a, align 4, !tbaa !75
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define i32 @stbsp_vsnprintf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.stbsp__context, align 8     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.a = icmp ne i32 %1, 0
  %i.b = icmp ne ptr %0, null
  %or.cond = or i1 %i.b, %i.a
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.c, align 4, !tbaa !75
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = call i32 @stbsp_vsprintfcb(ptr noundef nonnull @stbsp__count_clamp_callback, ptr noundef nonnull %4, ptr noundef nonnull %i.d, ptr noundef %2, ptr noundef %3) ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %4, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %1, ptr %i.f, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !75
  %.not.i = icmp sgt i32 %1, -1
  br i1 %.not.i, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %.not34.i = icmp eq ptr %0, null
  %.pre36.i = sext i32 %1 to i64
  tail call void @llvm.assume(i1 %.not34.i)
  %i.h = getelementptr inbounds i8, ptr null, i64 %.pre36.i
  store ptr %i.h, ptr %4, align 8, !tbaa !78
  store i32 0, ptr %i.f, align 8, !tbaa !77
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %1, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %stbsp__clamp_callback.exit

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i32 %1, 511
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %spec.select17 = select i1 %i.k, ptr %0, ptr %i.l
  br label %stbsp__clamp_callback.exit

stbsp__clamp_callback.exit:                       ; preds = %bb.f, %bb.e
  %.028.i = phi ptr [ %i.j, %bb.e ], [ %spec.select17, %bb.f ]
  %i.m = call i32 @stbsp_vsprintfcb(ptr noundef nonnull @stbsp__clamp_callback, ptr noundef nonnull %4, ptr noundef %.028.i, ptr noundef %2, ptr noundef %3) ; 0 uses
  %i.n = load ptr, ptr %4, align 8, !tbaa !78
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %0 to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = add nsw i32 %1, -1
  %spec.select = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.s)
  %i.t = sext i32 %spec.select to i64
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t
  store i8 0, ptr %i.u, align 1, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %stbsp__clamp_callback.exit, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %i.w
}

; Function Attrs: nounwind uwtable
define i32 @stbsp_snprintf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #4 {
bb.a:
  %3 = alloca %struct.stbsp__context, align 8     ; 14 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.va_start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.a = icmp ne i32 %1, 0
  %i.b = icmp ne ptr %0, null
  %or.cond.i = or i1 %i.b, %i.a
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.c, align 4, !tbaa !75
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = call i32 @stbsp_vsprintfcb(ptr noundef nonnull @stbsp__count_clamp_callback, ptr noundef nonnull %3, ptr noundef nonnull %i.d, ptr noundef %2, ptr noundef nonnull %4) ; 0 uses
  br label %stbsp_vsnprintf.exit

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %3, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 %1, ptr %i.f, align 8, !tbaa !77
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !75
  %.not.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %.not34.i.i = icmp eq ptr %0, null
  %.pre36.i.i = sext i32 %1 to i64
  call void @llvm.assume(i1 %.not34.i.i)
  %i.h = getelementptr inbounds i8, ptr null, i64 %.pre36.i.i
  store ptr %i.h, ptr %3, align 8, !tbaa !78
  store i32 0, ptr %i.f, align 8, !tbaa !77
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %1, 0
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %.thread.i
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %stbsp__clamp_callback.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i32 %1, 511
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %spec.select17.i = select i1 %i.k, ptr %0, ptr %i.l
  br label %stbsp__clamp_callback.exit.i

stbsp__clamp_callback.exit.i:                     ; preds = %bb.f, %bb.e
  %.028.i.i = phi ptr [ %i.j, %bb.e ], [ %spec.select17.i, %bb.f ]
  %i.m = call i32 @stbsp_vsprintfcb(ptr noundef nonnull @stbsp__clamp_callback, ptr noundef nonnull %3, ptr noundef %.028.i.i, ptr noundef %2, ptr noundef nonnull %4) ; 0 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !78
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %0 to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  %i.s = add nsw i32 %1, -1
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.r, i32 %i.s)
  %i.t = sext i32 %spec.select.i to i64
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t
  store i8 0, ptr %i.u, align 1, !tbaa !8
  br label %stbsp_vsnprintf.exit

stbsp_vsnprintf.exit:                             ; preds = %bb.b, %stbsp__clamp_callback.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.va_end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %i.w
}

; Function Attrs: nounwind uwtable
define i32 @stbsp_vsprintf(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @stbsp_vsprintfcb(ptr noundef null, ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @stbsp__raise_to_power10(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, double noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %or.cond = icmp ult i32 %3, 23
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = zext nneg i32 %3 to i64
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @stbsp__bot, i64 %i.a
  %i.c = load double, ptr %i.b, align 8           ; 3 uses
  %i.d = fmul double %2, %i.c                     ; 2 uses
  %4 = bitcast double %2 to i64
  %i.e = and i64 %4, -134217728
  %i.f = bitcast i64 %i.e to double               ; 3 uses
  %i.g = bitcast double %i.c to i64
  %i.h = and i64 %i.g, -134217728
  %i.i = bitcast i64 %i.h to double               ; 3 uses
  %i.j = fsub double %2, %i.f                     ; 2 uses
  %i.k = fsub double %i.c, %i.i                   ; 2 uses
  %i.l = fneg double %i.d
  %i.m = tail call double @llvm.fmuladd.f64(double %i.f, double %i.i, double %i.l)
  %i.n = tail call double @llvm.fmuladd.f64(double %i.f, double %i.k, double %i.m)
  %i.o = tail call double @llvm.fmuladd.f64(double %i.j, double %i.i, double %i.n)
  %i.p = tail call double @llvm.fmuladd.f64(double %i.j, double %i.k, double %i.o)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.q = icmp slt i32 %3, 0
  %spec.select = tail call i32 @llvm.abs.i32(i32 %3, i1 true) ; 2 uses
  %i.r = mul nuw nsw i32 %spec.select, 713
  %i.s = lshr i32 %i.r, 14                        ; 3 uses
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.s, i32 13) ; 3 uses
  %.neg = mul nsw i32 %spec.store.select, -23
  %i.t = add nsw i32 %.neg, %spec.select          ; 5 uses
  %.not235 = icmp eq i32 %i.t, 0                  ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %.not235, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.t, -1
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr @stbsp__negbot, i64 %i.v
  %i.x = load double, ptr %i.w, align 8           ; 3 uses
  %i.y = fmul double %2, %i.x                     ; 2 uses
  %5 = bitcast double %2 to i64
  %i.z = and i64 %5, -134217728
  %i.aa = bitcast i64 %i.z to double              ; 3 uses
  %i.ab = bitcast double %i.x to i64
  %i.ac = and i64 %i.ab, -134217728
  %i.ad = bitcast i64 %i.ac to double             ; 3 uses
  %i.ae = fsub double %2, %i.aa                   ; 2 uses
  %i.af = fsub double %i.x, %i.ad                 ; 2 uses
  %i.ag = fneg double %i.y
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.ad, double %i.ag)
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.af, double %i.ah)
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ad, double %i.ai)
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.af, double %i.aj)
  %i.al = getelementptr inbounds [8 x i8], ptr @stbsp__negboterr, i64 %i.v
  %i.am = load double, ptr %i.al, align 8, !tbaa !20
  %i.an = tail call double @llvm.fmuladd.f64(double %2, double %i.am, double %i.ak)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi double [ %i.an, %bb.e ], [ 0.000000e+00, %bb.d ] ; 3 uses
  %i.ao = phi double [ %i.y, %bb.e ], [ %2, %bb.d ] ; 3 uses
  %.not236 = icmp eq i32 %i.s, 0
  br i1 %.not236, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = fadd double %.0, %i.ao                  ; 5 uses
  %i.aq = add nsw i32 %spec.store.select, -1
  %i.ar = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @stbsp__negtop, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8         ; 4 uses
  %6 = bitcast double %i.ap to i64
  %i.au = and i64 %6, -134217728
  %i.av = bitcast i64 %i.au to double             ; 3 uses
  %i.aw = bitcast double %i.at to i64
  %i.ax = and i64 %i.aw, -134217728
  %i.ay = bitcast i64 %i.ax to double             ; 3 uses
  %i.az = fsub double %i.ap, %i.ao
  %i.ba = fsub double %.0, %i.az
  %i.bb = fmul double %i.ap, %i.at                ; 2 uses
  %i.bc = fsub double %i.ap, %i.av                ; 2 uses
  %i.bd = fsub double %i.at, %i.ay                ; 2 uses
  %i.be = fneg double %i.bb
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.av, double %i.ay, double %i.be)
  %i.bg = tail call double @llvm.fmuladd.f64(double %i.av, double %i.bd, double %i.bf)
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.ay, double %i.bg)
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bd, double %i.bh)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr @stbsp__negtoperr, i64 %i.ar
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !20
  %i.bl = fmul double %i.ba, %i.at
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.bk, double %i.bl)
  %i.bn = fadd double %i.bi, %i.bm
  br label %bb.m

bb.h:                                             ; preds = %bb.c
  br i1 %.not235, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %spec.store.select2 = tail call i32 @llvm.smin.i32(i32 %i.t, i32 22) ; 2 uses
  %i.bo = sext i32 %spec.store.select2 to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr @stbsp__bot, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8         ; 3 uses
  %i.br = fmul double %2, %i.bq                   ; 4 uses
  %7 = bitcast double %2 to i64
  %i.bs = and i64 %7, -134217728
  %i.bt = bitcast i64 %i.bs to double             ; 3 uses
  %i.bu = bitcast double %i.bq to i64
  %i.bv = and i64 %i.bu, -134217728
  %i.bw = bitcast i64 %i.bv to double             ; 3 uses
  %i.bx = fsub double %2, %i.bt                   ; 2 uses
  %i.by = fsub double %i.bq, %i.bw                ; 2 uses
  %i.bz = fneg double %i.br
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.bw, double %i.bz)
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bt, double %i.by, double %i.ca)
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.bw, double %i.cb)
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.by, double %i.cc) ; 3 uses
  %.not233 = icmp slt i32 %i.t, 23
  br i1 %.not233, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ce = sub nsw i32 %i.t, %spec.store.select2
  %i.cf = fadd double %i.br, %i.cd                ; 4 uses
  %i.cg = zext nneg i32 %i.ce to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr @stbsp__bot, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8         ; 4 uses
  %8 = bitcast double %i.cf to i64
  %i.cj = and i64 %8, -134217728
  %i.ck = bitcast i64 %i.cj to double             ; 3 uses
  %i.cl = bitcast double %i.ci to i64
  %i.cm = and i64 %i.cl, -134217728
  %i.cn = bitcast i64 %i.cm to double             ; 3 uses
  %i.co = fsub double %i.cf, %i.br
  %i.cp = fsub double %i.cd, %i.co
  %i.cq = fmul double %i.cf, %i.ci                ; 2 uses
  %i.cr = fsub double %i.cf, %i.ck                ; 2 uses
  %i.cs = fsub double %i.ci, %i.cn                ; 2 uses
  %i.ct = fneg double %i.cq
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.cn, double %i.ct)
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.cs, double %i.cu)
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cn, double %i.cv)
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cs, double %i.cw)
  %i.cy = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.cp, double %i.cx)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.1 = phi double [ %i.cy, %bb.j ], [ %i.cd, %bb.i ], [ 0.000000e+00, %bb.h ] ; 3 uses
  %i.cz = phi double [ %i.cq, %bb.j ], [ %i.br, %bb.i ], [ %2, %bb.h ] ; 3 uses
  %.not234 = icmp eq i32 %i.s, 0
  br i1 %.not234, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.da = fadd double %.1, %i.cz                  ; 5 uses
  %i.db = add nsw i32 %spec.store.select, -1
  %i.dc = zext nneg i32 %i.db to i64              ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr @stbsp__top, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8         ; 4 uses
  %9 = bitcast double %i.da to i64
  %i.df = and i64 %9, -134217728
  %i.dg = bitcast i64 %i.df to double             ; 3 uses
  %i.dh = bitcast double %i.de to i64
  %i.di = and i64 %i.dh, -134217728
  %i.dj = bitcast i64 %i.di to double             ; 3 uses
  %i.dk = fsub double %i.da, %i.cz
  %i.dl = fsub double %.1, %i.dk
  %i.dm = fmul double %i.da, %i.de                ; 2 uses
  %i.dn = fsub double %i.da, %i.dg                ; 2 uses
  %i.do = fsub double %i.de, %i.dj                ; 2 uses
  %i.dp = fneg double %i.dm
  %i.dq = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.dj, double %i.dp)
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dg, double %i.do, double %i.dq)
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.dn, double %i.dj, double %i.dr)
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.dn, double %i.do, double %i.ds)
  %i.du = getelementptr inbounds nuw [8 x i8], ptr @stbsp__toperr, i64 %i.dc
  %i.dv = load double, ptr %i.du, align 8, !tbaa !20
  %i.dw = fmul double %i.dl, %i.de
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.da, double %i.dv, double %i.dw)
  %i.dy = fadd double %i.dt, %i.dx
  br label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.f, %bb.l, %bb.k, %bb.b
  %.3 = phi double [ %i.p, %bb.b ], [ %i.bn, %bb.g ], [ %.0, %bb.f ], [ %i.dy, %bb.l ], [ %.1, %bb.k ] ; 2 uses
  %i.dz = phi double [ %i.d, %bb.b ], [ %i.bb, %bb.g ], [ %i.ao, %bb.f ], [ %i.dm, %bb.l ], [ %i.cz, %bb.k ] ; 2 uses
  %i.ea = fadd double %.3, %i.dz                  ; 2 uses
  %i.eb = fsub double %i.ea, %i.dz
  %i.ec = fsub double %.3, %i.eb
  store double %i.ea, ptr %0, align 8, !tbaa !20
  store double %i.ec, ptr %1, align 8, !tbaa !20
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 omnipotent char", !17, i64 0}
!17 = !{!"any pointer", !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 int", !17, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"double", !6, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!"branch_weights", i32 8, i32 24}
!30 = distinct !{!30, !11, !27, !28}
!31 = distinct !{!31, !23}
!32 = distinct !{!32, !11, !27}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !23}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = !{!40, !40, i64 0}
!40 = !{!"long long", !6, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"short", !6, i64 0}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = distinct !{!46, !11}
!47 = distinct !{!47, !23}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11}
!52 = distinct !{!52, !11}
!53 = distinct !{!53, !23}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11}
!56 = distinct !{!56, !23}
!57 = distinct !{!57, !11, !27, !28}
!58 = !{!"branch_weights", i32 4, i32 28}
!59 = distinct !{!59, !11, !27, !28}
!60 = distinct !{!60, !23}
!61 = distinct !{!61, !11}
!62 = distinct !{!62, !11, !27}
!63 = distinct !{!63, !11}
!64 = distinct !{!64, !11}
!65 = distinct !{!65, !11}
!66 = distinct !{!66, !23}
!67 = distinct !{!67, !11}
!68 = distinct !{!68, !11}
!69 = distinct !{!69, !11}
!70 = distinct !{!70, !11}
!71 = distinct !{!71, !11}
!72 = distinct !{!72, !11}
!73 = distinct !{!73, !11}
!74 = distinct !{!74, !11}
!75 = !{!76, !5, i64 12}
!76 = !{!"stbsp__context", !16, i64 0, !5, i64 8, !5, i64 12, !6, i64 16}
!77 = !{!76, !5, i64 8}
!78 = !{!76, !16, i64 0}
!79 = distinct !{!79, !11, !27, !28}
!80 = distinct !{!80, !11, !27, !28}
!81 = distinct !{!81, !11, !27}
end_hunk_0
