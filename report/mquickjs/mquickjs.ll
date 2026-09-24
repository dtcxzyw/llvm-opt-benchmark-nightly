Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/mquickjs?download=true
inline.NumInlined: 1970
inline.NumDeleted: 206
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@js_array_sort:bb.a

bb.p:                                             ; preds = %bb.o, %bb.n
  %.161.i = phi i64 [ %i.cf, %bb.n ], [ %spec.select68.i, %bb.o ] ; 4 uses
  %i.cl = call fastcc i32 @js_array_sort_cmp(i64 noundef %.175.i, i64 noundef %.161.i, ptr noundef nonnull %5) #31, !callees !333, !inline_history !334
  %i.cm = icmp sgt i32 %i.cl, 0
  %.pre = load ptr, ptr %i.at, align 8, !tbaa !159 ; 2 uses
  br i1 %i.cm, label %._crit_edge78.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = load i64, ptr %.pre, align 8, !tbaa !46
  %i.co = add i64 %i.cn, -1
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %.idx.i = shl i64 %.175.i, 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx.i ; 2 uses
  %.idx20.i = shl i64 %.161.i, 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx20.i ; 2 uses
  %i.ct = load <2 x i64>, ptr %i.cr, align 8, !tbaa !46
  %i.cu = load <2 x i64>, ptr %i.cs, align 8, !tbaa !46
  store <2 x i64> %i.cu, ptr %i.cr, align 8, !tbaa !46
  store <2 x i64> %i.ct, ptr %i.cs, align 8, !tbaa !46
  %i.cv = shl i64 %.161.i, 1                      ; 2 uses
  %i.cw = or disjoint i64 %i.cv, 1                ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %.16383.i89
  br i1 %i.cx, label %bb.n, label %._crit_edge78.i, !llvm.loop !18

._crit_edge78.i:                                  ; preds = %bb.q, %bb.p
  %.163.i = add i64 %.16383.i89, -1               ; 3 uses
  %i.cy = load i64, ptr %.pre, align 8, !tbaa !46
  %i.cz = add i64 %i.cy, -1
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 3 uses
  %.idx20.i77 = shl i64 %.163.i, 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %.idx20.i77 ; 2 uses
  %i.dd = load <2 x i64>, ptr %i.db, align 8, !tbaa !46
  %i.de = load <2 x i64>, ptr %i.dc, align 8, !tbaa !46
  store <2 x i64> %i.de, ptr %i.db, align 8, !tbaa !46
  store <2 x i64> %i.dd, ptr %i.dc, align 8, !tbaa !46
  %i.df = icmp ugt i64 %.163.i, 1
  br i1 %i.df, label %.lr.ph77.i, label %rqsort_idx.exit

rqsort_idx.exit:                                  ; preds = %._crit_edge78.i, %.lr.ph84.i.preheader, %._crit_edge, %.preheader.i
  %i.dg = load i64, ptr %4, align 8, !tbaa !40
  %i.dh = load ptr, ptr %i.ar, align 8, !tbaa !39
  store ptr %i.dh, ptr %i.ap, align 8, !tbaa !36
  %i.di = add i64 %i.dg, -1                       ; 3 uses
  %i.dj = inttoptr i64 %i.di to ptr               ; 7 uses
  %i.dk = load i32, ptr %i.as, align 8, !tbaa !158
  %.not68 = icmp eq i32 %i.dk, 0
  br i1 %.not68, label %bb.u, label %bb.r

bb.r:                                             ; preds = %rqsort_idx.exit
  %.not.i73 = icmp eq i64 %i.di, 0
  br i1 %.not.i73, label %js_free.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val.i = load i64, ptr %i.dj, align 8
  %i.dl = call fastcc i32 @get_mblock_size(i64 %.val.i) #28
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds i8, ptr %i.dj, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !44
  %i.dq = icmp eq ptr %i.dn, %i.dp
  br i1 %i.dq, label %bb.t, label %js_free.exit

bb.t:                                             ; preds = %bb.s
  store ptr %i.dj, ptr %i.do, align 8, !tbaa !44
  br label %js_free.exit

bb.u:                                             ; preds = %rqsort_idx.exit
  %i.dr = load i64, ptr %1, align 8, !tbaa !46
  %i.ds = add i64 %i.dr, -1
  %i.dt = inttoptr i64 %i.ds to ptr               ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !51
  %..i = call noundef i32 @llvm.smin.i32(i32 %i.r, i32 %i.dv) ; 2 uses
  %i.dw = icmp sgt i32 %..i, 0
  br i1 %i.dw, label %.lr.ph93, label %._crit_edge94

.lr.ph93:                                         ; preds = %bb.u
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !51
  %i.dz = add i64 %i.dy, -1
  %i.ea = inttoptr i64 %i.dz to ptr
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %wide.trip.count100 = zext nneg i32 %..i to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph93, %bb.v
  %indvars.iv97 = phi i64 [ 0, %.lr.ph93 ], [ %indvars.iv.next98, %bb.v ] ; 3 uses
  %.idx = shl nuw nsw i64 %indvars.iv97, 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !46
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv97
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !46
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count100
  br i1 %exitcond101.not, label %._crit_edge94, label %bb.v, !llvm.loop !335

._crit_edge94:                                    ; preds = %bb.v, %bb.u
  %.not.i74 = icmp eq i64 %i.di, 0
  br i1 %.not.i74, label %js_free.exit76, label %bb.w

bb.w:                                             ; preds = %._crit_edge94
  %.val.i75 = load i64, ptr %i.dj, align 8
  %i.eg = call fastcc i32 @get_mblock_size(i64 %.val.i75) #28
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds i8, ptr %i.dj, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !44
  %i.el = icmp eq ptr %i.ei, %i.ek
  br i1 %i.el, label %bb.x, label %js_free.exit76

bb.x:                                             ; preds = %bb.w
  store ptr %i.dj, ptr %i.ej, align 8, !tbaa !44
  br label %js_free.exit76

js_free.exit76:                                   ; preds = %._crit_edge94, %bb.w, %bb.x
  %i.em = load i64, ptr %1, align 8, !tbaa !46
  br label %js_free.exit

js_free.exit:                                     ; preds = %bb.t, %bb.s, %bb.r, %js_get_array.exit.thread, %js_get_array.exit, %js_free.exit76, %JS_IsFunction.exit.thread
  %.061 = phi i64 [ 15, %js_get_array.exit ], [ %i.em, %js_free.exit76 ], [ 15, %js_get_array.exit.thread ], [ %i.i, %JS_IsFunction.exit.thread ], [ 15, %bb.r ], [ 15, %bb.s ], [ 15, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret i64 %.061
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc range(i32 -1, 16) i32 @js_array_sort_cmp(i64 noundef %0, i64 noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %3 = alloca %struct.JSGCRef, align 8            ; 7 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !157    ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !158
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %JS_StackCheck.exit.thread100

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !159
  %i.g = load i64, ptr %i.f, align 8, !tbaa !46
  %i.h = add i64 %i.g, -1
  %i.i = inttoptr i64 %i.h to ptr                 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !160
  %.not74 = icmp eq ptr %i.k, null
  br i1 %.not74, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.m = shl i64 %0, 1                            ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !46
  %i.p = shl i64 %1, 1                            ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.p
  %i.r = load i64, ptr %i.q, align 8, !tbaa !46
  %i.s = icmp eq i64 %i.o, %i.r
  br i1 %i.s, label %JS_StackCheck.exit.thread103, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !42
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -160 ; 2 uses
  %i.w = tail call fastcc i32 @check_free_mem(ptr noundef %i.b, ptr noundef nonnull %i.v, i32 noundef 160) #28, !inline_history !80
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.e, label %JS_StackCheck.exit.thread106

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.v, ptr %i.x, align 8, !tbaa !42
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !159
  %i.z = load i64, ptr %i.y, align 8, !tbaa !46
  %i.aa = add i64 %i.z, -1
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.p
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !46
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !42  ; 4 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -8
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !46
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.m
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !46
  %i.aj = getelementptr inbounds i8, ptr %i.af, i64 -16 ; 2 uses
  store ptr %i.aj, ptr %i.t, align 8, !tbaa !42
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !46
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !160
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !46
  %i.am = getelementptr inbounds i8, ptr %i.af, i64 -24
  store i64 %i.al, ptr %i.am, align 8, !tbaa !46
  %i.an = getelementptr inbounds i8, ptr %i.af, i64 -32 ; 2 uses
  store ptr %i.an, ptr %i.t, align 8, !tbaa !42
  store i64 11, ptr %i.an, align 8, !tbaa !46
  %i.ao = tail call i64 @JS_Call(ptr noundef nonnull %i.b, i32 noundef 2) #28 ; 3 uses
  %.not115 = icmp eq i64 %i.ao, 15
  br i1 %.not115, label %JS_StackCheck.exit.thread100, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = trunc i64 %i.ao to i32                  ; 2 uses
  %i.aq = and i32 %i.ap, 1
  %.not82.not = icmp eq i32 %i.aq, 0
  br i1 %.not82.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.lobit.neg = ashr exact i32 %i.ap, 1
  %4 = tail call i32 @llvm.scmp.i32.i32(i32 %.lobit.neg, i32 0)
  br label %JS_StackCheck.exit.thread97

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.ar = call i32 @JS_ToNumber(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i64 noundef %i.ao) #28
  %.not83 = icmp eq i32 %i.ar, 0
  br i1 %.not83, label %select.unfold, label %JS_StackCheck.exit

select.unfold:                                    ; preds = %bb.h
  %i.as = load double, ptr %i.a, align 8, !tbaa !73 ; 2 uses
  %i.at = fcmp ogt double %i.as, 0.000000e+00
  %i.au = zext i1 %i.at to i32
  %i.av = fcmp olt double %i.as, 0.000000e+00
  %.neg = sext i1 %i.av to i32
  %i.aw = add nsw i32 %.neg, %i.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %JS_StackCheck.exit.thread97

JS_StackCheck.exit:                               ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %JS_StackCheck.exit.thread106

bb.i:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.idx = shl i64 %0, 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !46 ; 6 uses
  %i.ba = and i64 %i.az, 7
  %.not.i88 = icmp eq i64 %i.ba, 1
  br i1 %.not.i88, label %.split, label %JS_IsString.exit

.split:                                           ; preds = %bb.i
  %i.bb = add nsw i64 %i.az, -1
  %i.bc = inttoptr i64 %i.bb to ptr
  %.val.i = load i64, ptr %i.bc, align 8
  %i.bd = and i64 %.val.i, 14
  %i.be = icmp eq i64 %i.bd, 6
  br i1 %i.be, label %bb.l, label %bb.j

JS_IsString.exit:                                 ; preds = %bb.i
  %i.bf = and i64 %i.az, 31
  %i.bg = icmp eq i64 %i.bf, 27
  br i1 %i.bg, label %bb.l, label %bb.j

bb.j:                                             ; preds = %.split, %JS_IsString.exit
  %i.bh = tail call i64 @JS_ToString(ptr noundef %i.b, i64 noundef %i.az) #28 ; 2 uses
  %.not116 = icmp eq i64 %i.bh, 15
  br i1 %.not116, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = load ptr, ptr %i.e, align 8, !tbaa !159
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !46
  %i.bk = add i64 %i.bj, -1
  %i.bl = inttoptr i64 %i.bk to ptr
  br label %bb.l

bb.l:                                             ; preds = %.split, %bb.k, %JS_IsString.exit
  %.073 = phi ptr [ %i.i, %JS_IsString.exit ], [ %i.bl, %bb.k ], [ %i.i, %.split ]
  %.065 = phi i64 [ %i.az, %JS_IsString.exit ], [ %i.bh, %bb.k ], [ %i.az, %.split ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.073, i64 8
  %.idx77 = shl i64 %1, 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx77
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !46 ; 6 uses
  %i.bp = and i64 %i.bo, 7
  %.not.i90 = icmp eq i64 %i.bp, 1
  br i1 %.not.i90, label %.split125, label %JS_IsString.exit94

.split125:                                        ; preds = %bb.l
  %i.bq = add nsw i64 %i.bo, -1
  %i.br = inttoptr i64 %i.bq to ptr
  %.val.i93 = load i64, ptr %i.br, align 8
  %i.bs = and i64 %.val.i93, 14
  %i.bt = icmp eq i64 %i.bs, 6
  br i1 %i.bt, label %bb.n, label %bb.m

JS_IsString.exit94:                               ; preds = %bb.l
  %i.bu = and i64 %i.bo, 31
  %i.bv = icmp eq i64 %i.bu, 27
  br i1 %i.bv, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.split125, %JS_IsString.exit94
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !36
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !39
  store ptr %3, ptr %i.bw, align 8, !tbaa !36
  store i64 %.065, ptr %3, align 8, !tbaa !40
  %i.bz = call i64 @JS_ToString(ptr noundef %i.b, i64 noundef %i.bo) #28 ; 2 uses
  %i.ca = load i64, ptr %3, align 8, !tbaa !40
  %i.cb = load ptr, ptr %i.by, align 8, !tbaa !39
  store ptr %i.cb, ptr %i.bw, align 8, !tbaa !36
  %.not117 = icmp eq i64 %i.bz, 15
  br i1 %.not117, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.j, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %JS_StackCheck.exit.thread106

bb.n:                                             ; preds = %.split125, %JS_IsString.exit94, %bb.m
  %.1 = phi i64 [ %.065, %JS_IsString.exit94 ], [ %i.ca, %bb.m ], [ %.065, %.split125 ]
  %.0 = phi i64 [ %i.bo, %JS_IsString.exit94 ], [ %i.bz, %bb.m ], [ %i.bo, %.split125 ]
  %i.cc = call fastcc i32 @js_string_compare(i64 noundef %.1, i64 noundef %.0) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %JS_StackCheck.exit.thread97

JS_StackCheck.exit.thread97:                      ; preds = %select.unfold, %bb.g, %bb.n
  %.4 = phi i32 [ %4, %bb.g ], [ %i.cc, %bb.n ], [ %i.aw, %select.unfold ] ; 2 uses
  %.not84 = icmp eq i32 %.4, 0
  br i1 %.not84, label %JS_StackCheck.exit.thread97.JS_StackCheck.exit.thread103_crit_edge, label %JS_StackCheck.exit.thread100

JS_StackCheck.exit.thread97.JS_StackCheck.exit.thread103_crit_edge: ; preds = %JS_StackCheck.exit.thread97
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !159
  %.pre118 = load i64, ptr %.pre, align 8, !tbaa !46
  %.pre119 = add i64 %.pre118, -1
  %.pre120 = inttoptr i64 %.pre119 to ptr
  br label %JS_StackCheck.exit.thread103

JS_StackCheck.exit.thread103:                     ; preds = %JS_StackCheck.exit.thread97.JS_StackCheck.exit.thread103_crit_edge, %bb.c
  %.pre-phi121 = phi ptr [ %.pre120, %JS_StackCheck.exit.thread97.JS_StackCheck.exit.thread103_crit_edge ], [ %i.i, %bb.c ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre-phi121, i64 8 ; 2 uses
  %.idx85 = shl i64 %0, 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx85
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !46
  %i.ch = trunc i64 %i.cg to i32
  %i.ci = ashr i32 %i.ch, 1
  %.idx86 = shl i64 %1, 4
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx86
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !46
  %i.cm = trunc i64 %i.cl to i32
  %i.cn = ashr i32 %i.cm, 1
  %i.co = call i32 @llvm.scmp.i32.i32(i32 %i.ci, i32 %i.cn)
  br label %JS_StackCheck.exit.thread100

JS_StackCheck.exit.thread106:                     ; preds = %JS_StackCheck.exit, %bb.d, %.thread
  store i32 1, ptr %i.c, align 8, !tbaa !158
  br label %JS_StackCheck.exit.thread100

JS_StackCheck.exit.thread100:                     ; preds = %bb.e, %JS_StackCheck.exit.thread97, %bb.a, %JS_StackCheck.exit.thread106, %JS_StackCheck.exit.thread103
  %.167 = phi i32 [ 0, %bb.a ], [ 15, %bb.e ], [ 0, %JS_StackCheck.exit.thread106 ], [ %i.co, %JS_StackCheck.exit.thread103 ], [ %.4, %JS_StackCheck.exit.thread97 ]
  ret i32 %.167
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @js_math_min_max(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %bb.b, label %bb.c, !prof !67

bb.b:                                             ; preds = %bb.a
  %.not42 = icmp eq i32 %4, 0
  %i.d = select i1 %.not42, double +inf, double -inf
  %i.e = tail call fastcc i64 @__JS_NewFloat64(ptr noundef %0, double noundef %i.d) #28
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %3, align 8, !tbaa !46     ; 2 uses
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = and i32 %i.g, 1
  %.not.not = icmp eq i32 %i.h, 0
  br i1 %.not.not, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.i = icmp sgt i32 %2, 1
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.j = ashr exact i32 %i.g, 1
  %.not41 = icmp eq i32 %4, 0
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %.053 = phi i32 [ %i.j, %.lr.ph ], [ %.1, %bb.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.l = load i64, ptr %i.k, align 8, !tbaa !46
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = and i32 %i.m, 1
  %.not38.not = icmp eq i32 %i.n, 0
  br i1 %.not38.not, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  %i.o = trunc nuw nsw i64 %indvars.iv to i32
  %i.p = sitofp i32 %.053 to double
  br label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.q = ashr exact i32 %i.m, 1                   ; 2 uses
  br i1 %.not41, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %..i = tail call noundef i32 @llvm.smax.i32(i32 %.053, i32 %i.q)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %..i43 = tail call noundef i32 @llvm.smin.i32(i32 %.053, i32 %i.q)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.1 = phi i32 [ %..i, %bb.g ], [ %..i43, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.e, !llvm.loop !336

._crit_edge.loopexit:                             ; preds = %bb.i
  %i.r = shl nsw i32 %.1, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %.0.lcssa = phi i32 [ %i.g, %bb.d ], [ %i.r, %._crit_edge.loopexit ]
  %i.s = sext i32 %.0.lcssa to i64
  br label %.loopexit

bb.j:                                             ; preds = %bb.c
  %i.t = call i32 @JS_ToNumber(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.f) #28
  %.not37 = icmp eq i32 %i.t, 0
  br i1 %.not37, label %._crit_edge72, label %.loopexit

._crit_edge72:                                    ; preds = %bb.j
  %.promoted.pre = load double, ptr %i.a, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge72, %.thread
  %.promoted = phi double [ %i.p, %.thread ], [ %.promoted.pre, %._crit_edge72 ] ; 2 uses
  %.133 = phi i32 [ %i.o, %.thread ], [ 1, %._crit_edge72 ] ; 2 uses
  %i.u = icmp slt i32 %.133, %2
  br i1 %i.u, label %.lr.ph60, label %._crit_edge61

.lr.ph60:                                         ; preds = %bb.k
  %.not40 = icmp eq i32 %4, 0
  %i.v = zext nneg i32 %.133 to i64
  %wide.trip.count70 = zext i32 %2 to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph60, %js_fmax.exit
  %indvars.iv67 = phi i64 [ %i.v, %.lr.ph60 ], [ %indvars.iv.next68, %js_fmax.exit ] ; 2 uses
  %.0.i485557 = phi double [ %.promoted, %.lr.ph60 ], [ %.0.i4854, %js_fmax.exit ] ; 9 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv67
  %i.x = load i64, ptr %i.w, align 8, !tbaa !46
  %i.y = call i32 @JS_ToNumber(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %i.x) #28
  %.not39 = icmp eq i32 %i.y, 0
  br i1 %.not39, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.z = fcmp uno double %.0.i485557, 0.000000e+00
  br i1 %i.z, label %js_fmax.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = load double, ptr %i.b, align 8, !tbaa !73 ; 9 uses
  %i.ab = fcmp uno double %i.aa, 0.000000e+00
  br i1 %i.ab, label %js_fmax.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = fcmp oeq double %.0.i485557, 0.000000e+00
  %i.ad = fcmp oeq double %i.aa, 0.000000e+00
  %or.cond.i45 = and i1 %i.ac, %i.ad              ; 2 uses
  br i1 %.not40, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %or.cond.i45, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ae = bitcast double %.0.i485557 to i64
  %i.af = bitcast double %i.aa to i64
  %i.ag = and i64 %i.af, %i.ae
  %i.ah = bitcast i64 %i.ag to double
  br label %js_fmax.exit

bb.r:                                             ; preds = %bb.p
  %.inv.i = fcmp oge double %.0.i485557, %i.aa
  %..i44 = select i1 %.inv.i, double %.0.i485557, double %i.aa
  br label %js_fmax.exit

bb.s:                                             ; preds = %bb.o
  br i1 %or.cond.i45, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ai = bitcast double %.0.i485557 to i64
  %i.aj = bitcast double %i.aa to i64
  %i.ak = or i64 %i.aj, %i.ai
  %i.al = bitcast i64 %i.ak to double
  br label %js_fmax.exit

bb.u:                                             ; preds = %bb.s
  %.inv.i46 = fcmp ole double %.0.i485557, %i.aa
  %..i47 = select i1 %.inv.i46, double %.0.i485557, double %i.aa
  br label %js_fmax.exit

js_fmax.exit:                                     ; preds = %bb.u, %bb.t, %bb.r, %bb.q, %bb.n, %bb.m
  %.0.i4854 = phi double [ %.0.i485557, %bb.m ], [ %..i44, %bb.r ], [ %i.aa, %bb.n ], [ %i.ah, %bb.q ], [ %i.al, %bb.t ], [ %..i47, %bb.u ] ; 2 uses
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %._crit_edge61, label %bb.l, !llvm.loop !337

._crit_edge61:                                    ; preds = %js_fmax.exit, %bb.k
  %.0.i4855.lcssa = phi double [ %.promoted, %bb.k ], [ %.0.i4854, %js_fmax.exit ]
  %i.am = tail call i64 @JS_NewFloat64(ptr noundef %0, double noundef %.0.i4855.lcssa) #28
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %._crit_edge, %bb.j, %._crit_edge61, %bb.b
  %.135 = phi i64 [ %i.e, %bb.b ], [ 15, %bb.j ], [ %i.am, %._crit_edge61 ], [ %i.s, %._crit_edge ], [ 15, %bb.l ]
end_hunk_0
