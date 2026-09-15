Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/mquickjs?download=true
inline.NumInlined: 1970
inline.NumDeleted: 206
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@js_vsnprintf:bb.a
  %i.e = load ptr, ptr %4, align 8, !tbaa !48
  store i8 0, ptr %i.e, align 1, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #6

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @JS_NewString(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30
  %i.b = tail call i64 @JS_NewStringLen(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.a) #28
  ret i64 %i.b
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @build_backtrace(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef range(i32 -2147483647, -2147483648) %3, i32 noundef range(i32 -2147483647, -2147483648) %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [128 x i8], align 16              ; 7 uses
  %i.c = alloca ptr, align 8                      ; 13 uses
  %6 = alloca %struct.JSCStringBuf, align 1       ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %struct.JSGCRef, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.e = and i64 %1, 7
  %.not.i = icmp eq i64 %i.e, 1
  br i1 %.not.i, label %JS_IsError.exit, label %JS_IsError.exit.thread

JS_IsError.exit:                                  ; preds = %bb.a
  %i.f = add nsw i64 %1, -1
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 4094
  %narrow.i.not = icmp eq i64 %i.i, 146
  br i1 %narrow.i.not, label %bb.b, label %JS_IsError.exit.thread

bb.b:                                             ; preds = %JS_IsError.exit
  store ptr %i.b, ptr %i.c, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 9 uses
  store i8 0, ptr %i.b, align 16, !tbaa !51
  %.not48 = icmp eq ptr %2, null
  br i1 %.not48, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (ptr, ptr, ptr, ...) @cprintf(ptr noundef %i.c, ptr noundef %i.j, ptr noundef nonnull @.str.115, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %4) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !42   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44   ; 2 uses
  %.not71 = icmp eq ptr %i.l, %i.n
  br i1 %.not71, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.o = icmp eq i32 %5, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.s
  %i.p = phi ptr [ %i.cj, %bb.s ], [ %i.n, %.lr.ph.preheader ]
  %.070 = phi i32 [ %.1, %bb.s ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.04268 = phi ptr [ %i.co, %bb.s ], [ %i.l, %.lr.ph.preheader ] ; 3 uses
  %.04367 = phi i1 [ true, %bb.s ], [ %i.o, %.lr.ph.preheader ]
  br i1 %.04367, label %bb.e, label %bb.s

bb.e:                                             ; preds = %.lr.ph
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %.04268, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !46
  %i.t = call fastcc i64 @js_function_get_length_name1(ptr noundef nonnull %0, i64 %i.s, i32 noundef 1, ptr noundef nonnull %i.d) #28, !inline_history !177 ; 2 uses
  %.not = icmp eq i64 %i.t, 7
  br i1 %.not, label %get_func_name.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = call ptr @JS_ToCStringLen(ptr noundef nonnull %0, ptr noundef null, i64 noundef %i.t, ptr noundef nonnull %6) #28, !inline_history !178
  br label %get_func_name.exit

get_func_name.exit:                               ; preds = %bb.e, %bb.f
  %.0.i56 = phi ptr [ %i.u, %bb.f ], [ null, %bb.e ] ; 2 uses
  %.not50 = icmp eq ptr %.0.i56, null
  %spec.store.select = select i1 %.not50, ptr @.str.116, ptr %.0.i56
  call void (ptr, ptr, ptr, ...) @cprintf(ptr noundef %i.c, ptr noundef %i.j, ptr noundef nonnull @.str.117, ptr noundef nonnull %spec.store.select) #28
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !54   ; 5 uses
  %.not51 = icmp eq ptr %i.v, null
  br i1 %.not51, label %bb.p, label %bb.g

bb.g:                                             ; preds = %get_func_name.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load i64, ptr %i.w, align 8, !tbaa !57
  %i.y = call ptr @JS_ToCStringLen(ptr noundef nonnull %0, ptr noundef null, i64 noundef %i.x, ptr noundef nonnull %6) #28, !inline_history !182 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.04268, i64 -8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !46
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = ashr i32 %i.ab, 1
  %i.ad = add nsw i32 %i.ac, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !58 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 7
  br i1 %i.ag, label %find_line_col.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !59
  %i.aj = add i64 %i.ai, -1
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = add i64 %i.af, -1
  %i.am = inttoptr i64 %i.al to ptr               ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.ao = load i64, ptr %i.am, align 8
  %i.ap = lshr i64 %i.ao, 4                       ; 3 uses
  %.old1.not.i.i = icmp eq i64 %i.ap, 0
  br i1 %.old1.not.i.i, label %get_pc2line_hoisted_code_len.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.h, %.preheader.i.i
  %.010.i.i = phi i64 [ %i.aq, %.preheader.i.i ], [ %i.ap, %bb.h ]
  %.0.i.i = phi i32 [ %i.aw, %.preheader.i.i ], [ 0, %bb.h ]
  %i.aq = add nsw i64 %.010.i.i, -1               ; 3 uses
  %i.ar = shl i32 %.0.i.i, 7
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aq
  %i.at = load i8, ptr %i.as, align 1, !tbaa !51  ; 2 uses
  %i.au = and i8 %i.at, 127
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = or disjoint i32 %i.ar, %i.av            ; 2 uses
  %i.ax = icmp slt i8 %i.at, 0
  %i.ay = icmp ne i64 %i.aq, 0
  %or.cond.i.i = and i1 %i.ay, %i.ax
  br i1 %or.cond.i.i, label %.preheader.i.i, label %get_pc2line_hoisted_code_len.exit.i, !llvm.loop !179

get_pc2line_hoisted_code_len.exit.i:              ; preds = %.preheader.i.i, %bb.h
  %.1.i.i = phi i32 [ 0, %bb.h ], [ %i.aw, %.preheader.i.i ] ; 3 uses
  %spec.select.i = call i32 @llvm.umax.i32(i32 range(i32 -1073741825, 1073741823) %i.ad, i32 %.1.i.i)
  store i32 0, ptr %i.a, align 4, !tbaa !45
  %i.az = load i64, ptr %i.ak, align 8
  %i.ba = lshr i64 %i.az, 4                       ; 2 uses
  %i.bb = sext i32 %.1.i.i to i64                 ; 2 uses
  %i.bc = icmp ugt i64 %i.ba, %i.bb
  br i1 %i.bc, label %.lr.ph.i, label %find_line_col.exit.thread

.lr.ph.i:                                         ; preds = %get_pc2line_hoisted_code_len.exit.i
  %i.bd = trunc i64 %i.ap to i32                  ; 2 uses
  %i.be = load i64, ptr %i.v, align 8
  %i.bf = and i64 %i.be, 64
  %.not.i.i = icmp eq i64 %i.bf, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %.lr.ph.i
  %i.bh = phi i64 [ %i.bb, %.lr.ph.i ], [ %i.ce, %bb.m ]
  %.035.i = phi i32 [ %.1.i.i, %.lr.ph.i ], [ %i.cd, %bb.m ] ; 2 uses
  %.03134.i = phi i32 [ 1, %.lr.ph.i ], [ %.0.i27.i, %bb.m ]
  %.03233.i = phi i32 [ 1, %.lr.ph.i ], [ %i.bv, %bb.m ]
  %i.bi = call fastcc i32 @get_ugolomb(ptr noundef nonnull readonly %i.an, i32 noundef %i.bd, ptr noundef nonnull %i.a) #28 ; 2 uses
  %i.bj = lshr i32 %i.bi, 1                       ; 2 uses
  %i.bk = and i32 %i.bi, 1
  %i.bl = sub nsw i32 0, %i.bk                    ; 2 uses
  br i1 %.not.i.i, label %get_pc2line.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bm = icmp eq i32 %i.bj, %i.bl
  %i.bn = call fastcc i32 @get_ugolomb(ptr noundef nonnull readonly %i.an, i32 noundef %i.bd, ptr noundef nonnull %i.a) #28 ; 3 uses
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bo = lshr i32 %i.bn, 1
  %i.bp = and i32 %i.bn, 1
  %i.bq = sub nsw i32 0, %i.bp
  %i.br = xor i32 %i.bo, %i.bq
  %i.bs = add nsw i32 %i.br, %.03134.i
  br label %get_pc2line.exit.i

bb.l:                                             ; preds = %bb.j
  %i.bt = add i32 %i.bn, 1
  br label %get_pc2line.exit.i

get_pc2line.exit.i:                               ; preds = %bb.l, %bb.k, %bb.i
  %.0.i27.i = phi i32 [ %i.bs, %bb.k ], [ %i.bt, %bb.l ], [ 0, %bb.i ] ; 3 uses
  %i.bu = xor i32 %i.bj, %i.bl
  %i.bv = add nsw i32 %i.bu, %.03233.i            ; 3 uses
  %i.bw = icmp eq i32 %.035.i, %spec.select.i
  br i1 %i.bw, label %find_line_col.exit, label %bb.m

bb.m:                                             ; preds = %get_pc2line.exit.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bh
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !51
  %i.bz = zext i8 %i.by to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr @opcode_info, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 4, !tbaa !62
  %i.cc = zext i8 %i.cb to i32
  %i.cd = add nsw i32 %.035.i, %i.cc              ; 2 uses
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = icmp ugt i64 %i.ba, %i.ce
  br i1 %i.cf, label %bb.i, label %find_line_col.exit.thread, !llvm.loop !180

find_line_col.exit.thread:                        ; preds = %bb.m, %bb.g, %get_pc2line_hoisted_code_len.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void (ptr, ptr, ptr, ...) @cprintf(ptr noundef %i.c, ptr noundef %i.j, ptr noundef nonnull @.str.118, ptr noundef %i.y) #28
  br label %bb.p

find_line_col.exit:                               ; preds = %get_pc2line.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void (ptr, ptr, ptr, ...) @cprintf(ptr noundef %i.c, ptr noundef %i.j, ptr noundef nonnull @.str.118, ptr noundef %i.y) #28
  %.not52 = icmp eq i32 %i.bv, 0
  br i1 %.not52, label %bb.p, label %bb.n

bb.n:                                             ; preds = %find_line_col.exit
  call void (ptr, ptr, ptr, ...) @cprintf(ptr noundef %i.c, ptr noundef %i.j, ptr noundef nonnull @.str.119, i32 noundef %i.bv) #28
  %.not53 = icmp eq i32 %.0.i27.i, 0
  br i1 %.not53, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ptr, ptr, ...) @cprintf(ptr noundef %i.c, ptr noundef %i.j, ptr noundef nonnull @.str.119, i32 noundef %.0.i27.i) #28
  br label %bb.p

bb.p:                                             ; preds = %get_func_name.exit, %find_line_col.exit, %bb.o, %bb.n, %find_line_col.exit.thread
  %.str.120.sink = phi ptr [ @.str.29, %find_line_col.exit ], [ @.str.29, %find_line_col.exit.thread ], [ @.str.29, %bb.n ], [ @.str.29, %bb.o ], [ @.str.120, %get_func_name.exit ]
  call void (ptr, ptr, ptr, ...) @cprintf(ptr noundef %i.c, ptr noundef %i.j, ptr noundef nonnull %.str.120.sink) #28
  call void (ptr, ptr, ptr, ...) @cprintf(ptr noundef %i.c, ptr noundef %i.j, ptr noundef nonnull @.str.43) #28
  %i.cg = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %.not54 = icmp ult ptr %i.ch, %i.j
  br i1 %.not54, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr %i.q, align 1, !tbaa !51
  br label %.loopexit

bb.r:                                             ; preds = %bb.p
  %i.ci = add nsw i32 %.070, 1
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !44
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.r
  %i.cj = phi ptr [ %.pre, %bb.r ], [ %i.p, %.lr.ph ] ; 2 uses
  %.1 = phi i32 [ %i.ci, %bb.r ], [ %.070, %.lr.ph ] ; 2 uses
  %i.ck = load i64, ptr %.04268, align 8, !tbaa !46
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = ashr i32 %i.cl, 1
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds i8, ptr %0, i64 %i.cn ; 2 uses
  %i.cp = icmp ne ptr %i.co, %i.cj
  %i.cq = icmp slt i32 %.1, 10
  %i.cr = select i1 %i.cp, i1 %i.cq, i1 false
  br i1 %i.cr, label %.lr.ph, label %.loopexit, !llvm.loop !181

.loopexit:                                        ; preds = %bb.s, %bb.d, %bb.q
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !36
  %i.cu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !39
  store ptr %7, ptr %i.cs, align 8, !tbaa !36
  store i64 %1, ptr %7, align 8, !tbaa !40
  %i.cv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #30, !inline_history !52
  %i.cw = call i64 @JS_NewStringLen(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %i.cv) #28, !inline_history !52
  %i.cx = load i64, ptr %7, align 8, !tbaa !40
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !39
  store ptr %i.cy, ptr %i.cs, align 8, !tbaa !36
  %i.cz = add i64 %i.cx, -1
  %i.da = inttoptr i64 %i.cz to ptr
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  store i64 %i.cw, ptr %i.db, align 8, !tbaa !51
  br label %JS_IsError.exit.thread

JS_IsError.exit.thread:                           ; preds = %bb.a, %JS_IsError.exit, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local noundef i64 @JS_ThrowOutOfMemory(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i64 7, ptr %i.c, align 8, !tbaa !46
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 0, ptr %i.d, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i32 256, ptr %i.e, align 8, !tbaa !45
  %i.f = tail call i64 (ptr, i32, ptr, ...) @JS_ThrowError(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str) #28
  store i8 0, ptr %i.a, align 4
  store i32 512, ptr %i.e, align 8, !tbaa !45
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ 15, %bb.b ], [ %i.f, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @JS_NewFloat64(ptr noundef %0, double noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = fcmp oge double %1, f0xC1D0000000000000
  %i.b = fcmp ole double %1, f0x41CFFFFFFF800000
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = fptosi double %1 to i32                  ; 2 uses
  %i.d = bitcast double %1 to i64
  %i.e = sitofp i32 %i.c to double
  %i.f = bitcast double %i.e to i64
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = shl i32 %i.c, 1
  %i.i = sext i32 %i.h to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.j = tail call fastcc i64 @__JS_NewFloat64(ptr noundef %0, double noundef %1) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ %i.i, %bb.c ], [ %i.j, %bb.d ]
  ret i64 %.0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i64 @__JS_NewFloat64(ptr noundef %0, double noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = bitcast double %1 to i64                 ; 2 uses
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load i64, ptr %i.c, align 8, !tbaa !46
  br label %js_alloc_float64.exit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.f = fcmp ult double %i.e, f0x3800000000000000
  %i.g = fcmp ugt double %i.e, f0x47F0000000000000
  %or.cond = or i1 %i.f, %i.g
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = add i64 %i.a, 1729382256910270464        ; 2 uses
  %i.i = tail call noundef i64 @llvm.fshl.i64(i64 %i.h, i64 %i.h, i64 4)
  br label %js_alloc_float64.exit

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !42
  %i.l = tail call fastcc i32 @check_free_mem(ptr noundef %0, ptr noundef %i.k, i32 noundef 16) #28, !inline_history !1
  %.not.i8 = icmp eq i32 %i.l, 0
  br i1 %.not.i8, label %js_malloc.exit, label %js_alloc_float64.exit

js_malloc.exit:                                   ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.m, align 8, !tbaa !44
  store i64 4, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store double %1, ptr %i.p, align 8, !tbaa !66
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = add i64 %i.q, 1
  br label %js_alloc_float64.exit

js_alloc_float64.exit:                            ; preds = %bb.e, %js_malloc.exit, %bb.d, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.i, %bb.d ], [ %i.r, %js_malloc.exit ], [ 15, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind optsize uwtable
define dso_local i64 @JS_NewInt64(ptr noundef %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = add i64 %1, -1073741824
  %i.b = icmp ult i64 %i.a, -2147483648
  br i1 %i.b, label %bb.c, label %bb.b, !prof !67

bb.b:                                             ; preds = %bb.a
  %i.c = trunc nsw i64 %1 to i32
  %i.d = shl nsw i32 %i.c, 1
  %i.e = sext i32 %i.d to i64
end_hunk_0
begin_hunk_1_@js_vprintf:bb.a
  %i.fc = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.fd = getelementptr i8, ptr %i.fc, i64 8
  store ptr %i.fd, ptr %i.f, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.fe = phi ptr [ %i.fa, %bb.bc ], [ %i.fc, %bb.bd ]
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !83
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = call i64 @u64toa_radix(ptr noundef nonnull %i.i, i64 noundef %i.fg, i32 noundef 16) #31
  %i.fi = add i64 %i.fh, 2
  br label %bb.cf

bb.bf:                                            ; preds = %bb.q
  %i.fj = and i32 %.2135, 32
  %.not159 = icmp eq i32 %i.fj, 0
  %i.fk = load i32, ptr %3, align 8               ; 5 uses
  %i.fl = icmp ult i32 %i.fk, 41                  ; 2 uses
  br i1 %.not159, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.fl, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.fm = load ptr, ptr %i.g, align 8
  %i.fn = zext nneg i32 %i.fk to i64
  %i.fo = getelementptr i8, ptr %i.fm, i64 %i.fn
  %i.fp = add nuw nsw i32 %i.fk, 8
  store i32 %i.fp, ptr %3, align 8
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.fq = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fq, i64 8
  store ptr %i.fr, ptr %i.f, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.fs = phi ptr [ %i.fo, %bb.bh ], [ %i.fq, %bb.bi ]
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !46
  br label %bb.bo

bb.bk:                                            ; preds = %bb.bf
  br i1 %i.fl, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.fu = load ptr, ptr %i.g, align 8
  %i.fv = zext nneg i32 %i.fk to i64
  %i.fw = getelementptr i8, ptr %i.fu, i64 %i.fv
  %i.fx = add nuw nsw i32 %i.fk, 8
  store i32 %i.fx, ptr %3, align 8
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.fy = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.fz = getelementptr i8, ptr %i.fy, i64 8
  store ptr %i.fz, ptr %i.f, align 8
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.ga = phi ptr [ %i.fw, %bb.bl ], [ %i.fy, %bb.bm ]
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !45
  %i.gc = zext i32 %i.gb to i64
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bj
  %i.gd = phi i64 [ %i.ft, %bb.bj ], [ %i.gc, %bb.bn ] ; 5 uses
  %i.ge = trunc i64 %i.gd to i32                  ; 3 uses
  %i.gf = and i32 %i.ge, 1
  %.not160.not = icmp eq i32 %i.gf, 0
  br i1 %.not160.not, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.gg = ashr exact i32 %i.ge, 1
  %i.gh = call i64 @i32toa(ptr noundef nonnull %i.d, i32 noundef %i.gg) #31
  br label %bb.cc

bb.bq:                                            ; preds = %bb.bo
  %i.gi = and i64 %i.gd, 7
  switch i64 %i.gi, label %bb.br [
    i64 5, label %bb.cb
    i64 1, label %bb.bz
  ]

bb.br:                                            ; preds = %bb.bq
  %i.gj = and i64 %i.gd, 31
  %i.gk = add nsw i64 %i.gj, -3                   ; 2 uses
  %i.gl = call i64 @llvm.fshl.i64(i64 %i.gk, i64 %i.gk, i64 62)
  switch i64 %i.gl, label %bb.by [
    i64 1, label %bb.cb
    i64 2, label %bb.bs
    i64 5, label %bb.bt
    i64 0, label %bb.bu
    i64 6, label %bb.bv
  ]

bb.bs:                                            ; preds = %bb.br
  br label %bb.cb

bb.bt:                                            ; preds = %bb.br
  br label %bb.cb

bb.bu:                                            ; preds = %bb.br
  %i.gm = and i64 %i.gd, 4294967264
  %.not163 = icmp eq i64 %i.gm, 0
  %i.gn = select i1 %.not163, ptr @.str.106, ptr @.str.105
  br label %bb.cb

bb.bv:                                            ; preds = %bb.br
  %i.go = ashr i32 %i.ge, 5                       ; 3 uses
  %i.gp = icmp ult i32 %i.go, 128
  br i1 %i.gp, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.gq = trunc nuw nsw i32 %i.go to i8
  store i8 %i.gq, ptr %i.d, align 16, !tbaa !51
  br label %get_short_string.exit

bb.bx:                                            ; preds = %bb.bv
  %i.gr = call i64 @__unicode_to_utf8(ptr noundef nonnull %i.d, i32 noundef range(i32 -2147483648, 1073741824) %i.go) #31
  %i.gs = shl i64 %i.gr, 32
  %i.gt = ashr exact i64 %i.gs, 32
  br label %get_short_string.exit

get_short_string.exit:                            ; preds = %bb.bw, %bb.bx
  %.0.i.i = phi i64 [ 1, %bb.bw ], [ %i.gt, %bb.bx ] ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %i.d, i64 %.0.i.i
  store i8 0, ptr %i.gu, align 1, !tbaa !51
  br label %bb.cc

bb.by:                                            ; preds = %bb.br
  br label %bb.cb

bb.bz:                                            ; preds = %bb.bq
  %i.gv = add nsw i64 %i.gd, -1
  %i.gw = inttoptr i64 %i.gv to ptr               ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8            ; 2 uses
  %i.gy = and i64 %i.gx, 14
  %cond = icmp eq i64 %i.gy, 6
  br i1 %cond, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.ha = lshr i64 %i.gx, 7
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bq, %bb.bz, %bb.br, %bb.by, %bb.bu, %bb.bt, %bb.bs
  %.0130 = phi ptr [ %i.gn, %bb.bu ], [ @.str.101, %bb.br ], [ @.str.107, %bb.by ], [ @.str.102, %bb.bq ], [ @.str.103, %bb.bs ], [ @.str.104, %bb.bt ], [ @.str.108, %bb.bz ] ; 2 uses
  %i.hb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0130) #30
  br label %bb.cc

bb.cc:                                            ; preds = %bb.ca, %bb.cb, %get_short_string.exit, %bb.bp
  %.1131 = phi ptr [ %i.d, %bb.bp ], [ %.0130, %bb.cb ], [ %i.gz, %bb.ca ], [ %i.d, %get_short_string.exit ] ; 2 uses
  %.0127 = phi i64 [ %i.gh, %bb.bp ], [ %i.hb, %bb.cb ], [ %i.ha, %bb.ca ], [ %.0.i.i, %get_short_string.exit ] ; 4 uses
  %i.hc = and i32 %.2135, 2
  %i.hd = icmp ne i32 %i.hc, 0
  %i.he = icmp ne i64 %.0127, 0
  %or.cond3 = select i1 %i.hd, i1 %i.he, i1 false
  br i1 %or.cond3, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.hf = getelementptr i8, ptr %.1131, i64 %.0127
  %i.hg = getelementptr i8, ptr %i.hf, i64 -1
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !51
  %i.hi = icmp eq i8 %i.hh, 10
  %i.hj = sext i1 %i.hi to i64
  %spec.select = add i64 %.0127, %i.hj
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.1128 = phi i64 [ %.0127, %bb.cc ], [ %spec.select, %bb.cd ]
  %i.hk = and i32 %.2135, -2
  br label %bb.cf

bb.cf:                                            ; preds = %bb.aw, %bb.ba, %bb.an, %bb.ar, %bb.ae, %bb.ai, %bb.ce, %bb.be, %bb.z, %bb.v, %bb.r
  %.4137 = phi i32 [ %.2135, %bb.r ], [ %i.bx, %bb.v ], [ %i.cj, %bb.z ], [ %.2135, %bb.ae ], [ %.2135, %bb.ai ], [ %.2135, %bb.an ], [ %.2135, %bb.ar ], [ %.2135, %bb.aw ], [ %.2135, %bb.ba ], [ %.2135, %bb.be ], [ %i.hk, %bb.ce ] ; 3 uses
  %.2132 = phi ptr [ %i.d, %bb.r ], [ %i.d, %bb.v ], [ %spec.store.select, %bb.z ], [ %i.d, %bb.ae ], [ %i.d, %bb.ai ], [ %i.d, %bb.an ], [ %i.d, %bb.ar ], [ %i.d, %bb.aw ], [ %i.d, %bb.ba ], [ %i.d, %bb.be ], [ %.1131, %bb.ce ] ; 3 uses
  %.2129 = phi i64 [ 0, %bb.r ], [ 1, %bb.v ], [ %i.ci, %bb.z ], [ %i.cv, %bb.ae ], [ %i.de, %bb.ai ], [ %i.dq, %bb.an ], [ %i.dz, %bb.ar ], [ %i.el, %bb.aw ], [ %i.ev, %bb.ba ], [ %i.fi, %bb.be ], [ %.1128, %bb.ce ] ; 6 uses
  %i.hl = and i32 %.4137, 1
  %.not168 = icmp eq i32 %i.hl, 0
  br i1 %.not168, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.hm = trunc i64 %.2129 to i32                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  %.not.i = icmp sgt i32 %.1126, %i.hm
  br i1 %.not.i, label %bb.ch, label %.loopexit239

bb.ch:                                            ; preds = %bb.cg
  %i.hn = sub nsw i32 %.1126, %i.hm               ; 2 uses
  %..i.i = call noundef i32 @llvm.smin.i32(i32 %i.hn, i32 16)
  %i.ho = zext nneg i32 %..i.i to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.c, i8 48, i64 %i.ho, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ch, %.lr.ph.i
  %.017.i = phi i32 [ %i.hq, %.lr.ph.i ], [ %i.hn, %bb.ch ] ; 2 uses
  %..i15.i = call noundef i32 @llvm.smin.i32(i32 %.017.i, i32 16) ; 2 uses
  %i.hp = zext nneg i32 %..i15.i to i64
  call void %0(ptr noundef %1, ptr noundef nonnull %i.c, i64 noundef %i.hp) #31, !inline_history !366
  %i.hq = sub nsw i32 %.017.i, %..i15.i           ; 2 uses
  %.not14.i = icmp eq i32 %i.hq, 0
  br i1 %.not14.i, label %.loopexit239, label %.lr.ph.i, !llvm.loop !367

bb.ci:                                            ; preds = %bb.cf
  %i.hr = and i32 %.4137, 8
  %.not169 = icmp eq i32 %i.hr, 0
  br i1 %.not169, label %bb.cj, label %.thread237

.thread237:                                       ; preds = %bb.ci
  call void %0(ptr noundef %1, ptr noundef %.2132, i64 noundef %.2129) #31
  br label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.hs = trunc i64 %.2129 to i32                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %.not.i171 = icmp sgt i32 %.1126, %i.hs
  br i1 %.not.i171, label %bb.ck, label %.thread

bb.ck:                                            ; preds = %bb.cj
  %i.ht = sub nsw i32 %.1126, %i.hs               ; 2 uses
  %..i.i172 = call noundef i32 @llvm.smin.i32(i32 %i.ht, i32 16)
  %i.hu = zext nneg i32 %..i.i172 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 32, i64 %i.hu, i1 false)
  br label %.lr.ph.i174

.lr.ph.i174:                                      ; preds = %bb.ck, %.lr.ph.i174
  %.017.i175 = phi i32 [ %i.hw, %.lr.ph.i174 ], [ %i.ht, %bb.ck ] ; 2 uses
  %..i15.i176 = call noundef i32 @llvm.smin.i32(i32 %.017.i175, i32 16) ; 2 uses
  %i.hv = zext nneg i32 %..i15.i176 to i64
  call void %0(ptr noundef %1, ptr noundef nonnull %i.b, i64 noundef %i.hv) #31, !inline_history !366
  %i.hw = sub nsw i32 %.017.i175, %..i15.i176     ; 2 uses
  %.not14.i177 = icmp eq i32 %i.hw, 0
  br i1 %.not14.i177, label %.thread, label %.lr.ph.i174, !llvm.loop !367

.thread:                                          ; preds = %.lr.ph.i174, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void %0(ptr noundef %1, ptr noundef %.2132, i64 noundef %.2129) #31
  br label %bb.cn

.loopexit239:                                     ; preds = %.lr.ph.i, %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %.pre214 = and i32 %.4137, 8
  %i.hx = icmp eq i32 %.pre214, 0
  call void %0(ptr noundef %1, ptr noundef %.2132, i64 noundef %.2129) #31
  br i1 %i.hx, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %.thread237, %.loopexit239
  %i.hy = trunc i64 %.2129 to i32                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %.not.i179 = icmp sgt i32 %.1126, %i.hy
  br i1 %.not.i179, label %bb.cm, label %pad.exit186

bb.cm:                                            ; preds = %bb.cl
  %i.hz = sub nsw i32 %.1126, %i.hy               ; 2 uses
  %..i.i180 = call noundef i32 @llvm.smin.i32(i32 %i.hz, i32 16)
  %i.ia = zext nneg i32 %..i.i180 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 32, i64 %i.ia, i1 false)
  br label %.lr.ph.i182

.lr.ph.i182:                                      ; preds = %bb.cm, %.lr.ph.i182
  %.017.i183 = phi i32 [ %i.ic, %.lr.ph.i182 ], [ %i.hz, %bb.cm ] ; 2 uses
  %..i15.i184 = call noundef i32 @llvm.smin.i32(i32 %.017.i183, i32 16) ; 2 uses
  %i.ib = zext nneg i32 %..i15.i184 to i64
  call void %0(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef %i.ib) #31, !inline_history !366
  %i.ic = sub nsw i32 %.017.i183, %..i15.i184     ; 2 uses
  %.not14.i185 = icmp eq i32 %i.ic, 0
  br i1 %.not14.i185, label %pad.exit186, label %.lr.ph.i182, !llvm.loop !367

pad.exit186:                                      ; preds = %.lr.ph.i182, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.cn

bb.cn:                                            ; preds = %.thread, %pad.exit186, %.loopexit239
  %i.id = load i8, ptr %i.bl, align 1, !tbaa !51  ; 2 uses
  %.not = icmp eq i8 %i.id, 0
  br i1 %.not, label %._crit_edge, label %.preheader192, !llvm.loop !368

._crit_edge:                                      ; preds = %bb.e, %bb.cn, %bb.q, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @snprintf_write_func(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  %i.c = trunc i64 %2 to i32
  %i.d = add i32 %i.b, %i.c
  store i32 %i.d, ptr %i.a, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.g = load ptr, ptr %0, align 8, !tbaa !48     ; 2 uses
  %i.h = ptrtoaddr ptr %i.f to i64
  %i.i = ptrtoaddr ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 %i.j) ; 3 uses
  %.not = icmp eq i64 %..i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %1, i64 %..i, i1 false)
  %i.k = load ptr, ptr %0, align 8, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %..i
  store ptr %i.l, ptr %0, align 8, !tbaa !48
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: optsize
declare i64 @i64toa(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare i64 @u64toa(ptr noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare i64 @u32toa(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare i64 @u64toa_radix(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare i32 @__utf8_get(ptr noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: nounwind optsize uwtable
define internal fastcc noundef ptr @js_malloc(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 1, 8) %2) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add i32 %1, 7
  %i.c = and i32 %i.b, -8                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = tail call fastcc i32 @check_free_mem(ptr noundef %0, ptr noundef %i.e, i32 noundef %i.c) #28
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 3 uses
  %i.i = zext i32 %i.c to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  store ptr %i.j, ptr %i.g, align 8, !tbaa !44
  %i.k = shl nuw nsw i32 %2, 1
  %i.l = zext nneg i32 %i.k to i64
  store i64 %i.l, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.h, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: optsize
declare i64 @__unicode_to_utf8(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind optsize uwtable
define internal fastcc range(i32 -1, 1) i32 @js_update_props(ptr noundef %0, i64 noundef %1) unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.JSGCRef, align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.a = add i64 %1, -1
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !46
  %i.e = add i64 %i.d, -1                         ; 3 uses
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = ptrtoint ptr %0 to i64
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44
  %i.k = ptrtoint ptr %i.j to i64
  %.not = icmp ult i64 %i.e, %i.k
  br i1 %.not, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !39
  store ptr %2, ptr %i.l, align 8, !tbaa !36
  store i64 %1, ptr %2, align 8, !tbaa !40
  %i.o = load i64, ptr %i.f, align 8
  %i.p = lshr i64 %i.o, 4
  %i.q = trunc i64 %i.p to i32
  %i.r = call fastcc ptr @js_alloc_value_array(ptr noundef %0, i32 noundef 0, i32 noundef %i.q) #28 ; 5 uses
  %i.s = load i64, ptr %2, align 8, !tbaa !40
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !39
  store ptr %i.t, ptr %i.l, align 8, !tbaa !36
  %.not39 = icmp eq ptr %i.r, null
  br i1 %.not39, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.w = load i64, ptr %i.f, align 8
  %i.x = lshr i64 %i.w, 1
  %i.y = and i64 %i.x, 9223372036854775800
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 8 %i.v, i64 %i.y, i1 false)
  %i.z = load i64, ptr %i.u, align 8, !tbaa !46
  %i.aa = trunc i64 %i.z to i32
  %i.ab = ashr i32 %i.aa, 1                       ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !46
  %i.ae = trunc i64 %i.ad to i32
  %i.af = ashr i32 %i.ae, 1
  %i.ag = load i64, ptr %i.r, align 8
  %i.ah = lshr i64 %i.ag, 4
  %i.ai = add nsw i32 %i.af, 3                    ; 2 uses
  %i.aj = mul nsw i32 %i.ab, 3
  %i.ak = add nsw i32 %i.ai, %i.aj
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp eq i64 %i.ah, %i.al
  br i1 %i.am, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.d
  %i.an = icmp sgt i32 %i.ab, 0
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.aq = sext i32 %i.ai to i64
  %wide.trip.count = zext nneg i32 %i.ab to i64
  %invariant.gep = getelementptr [8 x i8], ptr %i.u, i64 %i.aq
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @__assert_fail(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.2, i32 noundef 2830, ptr noundef nonnull @__PRETTY_FUNCTION__.js_update_props) #27
  unreachable

bb.f:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.idx = mul i64 %indvars.iv, 24
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8            ; 2 uses
  %i.at = icmp ugt i32 %i.as, -1073741825
  br i1 %i.at, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.au = getelementptr inbounds nuw i8, ptr %gep, i64 8 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !79
  %i.aw = trunc i64 %i.av to i32
  %i.ax = ashr i32 %i.aw, 1                       ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, -1
  br i1 %i.ay, label %get_special_prop.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %i.ao, align 8, !tbaa !42
  %i.ba = xor i32 %i.ax, -1
  br label %get_special_prop.exit

get_special_prop.exit:                            ; preds = %bb.g, %bb.h
  %.sink9.i = phi i32 [ %i.ba, %bb.h ], [ %i.ax, %bb.g ]
  %.sink.i = phi ptr [ %i.az, %bb.h ], [ %i.ap, %bb.g ]
  %i.bb = zext nneg i32 %.sink9.i to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.sink.i, i64 %i.bb
end_hunk_1
