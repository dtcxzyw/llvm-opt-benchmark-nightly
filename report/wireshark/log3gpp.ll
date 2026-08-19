inline.NumInlined: 14
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@log3gpp_read:bb.a
  %i.m = tail call ptr @__errno_location() #13    ; 3 uses
  store i32 0, ptr %i.m, align 4
  %i.n = load ptr, ptr %0, align 8                ; 4 uses
  %i.o = tail call i64 @file_tell(ptr noundef %i.n)
  %i.p = tail call ptr @file_gets(ptr noundef %i.f, i32 noundef 65536, ptr noundef %i.n)
  %.not32.not.not.not.not.not = icmp ne ptr %i.p, null ; 2 uses
  br i1 %.not32.not.not.not.not.not, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.q = tail call i64 @file_tell(ptr noundef %i.n)
  %i.r = sub i64 %i.q, %i.o                       ; 2 uses
  %i.s = trunc i64 %i.r to i32                    ; 4 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.u = add i64 %i.r, 4294967295
  %i.v = and i64 %i.u, 4294967295
  %i.w = getelementptr i8, ptr %i.f, i64 %i.v     ; 2 uses
  %i.x = load i8, ptr %i.w, align 1
  %i.y = icmp eq i8 %i.x, 10
  br i1 %i.y, label %thread-pre-split.i, label %thread-pre-split.thread.i

thread-pre-split.i:                               ; preds = %bb.f
  store i8 0, ptr %i.w, align 1
  %i.z = add nsw i32 %i.s, -1                     ; 2 uses
  %.not33 = icmp eq i32 %i.z, 0
  br i1 %.not33, label %bb.i, label %thread-pre-split.thread.i

thread-pre-split.thread.i:                        ; preds = %thread-pre-split.i, %bb.f
  %.023 = phi i32 [ %i.z, %thread-pre-split.i ], [ %i.s, %bb.f ] ; 3 uses
  %i.aa = zext nneg i32 %.023 to i64
  %i.ab = getelementptr i8, ptr %i.f, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -1     ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = icmp eq i8 %i.ad, 13
  br i1 %i.ae, label %bb.g, label %bb.i

bb.g:                                             ; preds = %thread-pre-split.thread.i
  store i8 0, ptr %i.ac, align 1
  %i.af = add nsw i32 %.023, -1
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.ag = tail call i32 @file_error(ptr noundef %i.n, ptr noundef %3) ; 2 uses
  store i32 %i.ag, ptr %2, align 4
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.k, label %.thread

bb.i:                                             ; preds = %bb.e, %thread-pre-split.i, %thread-pre-split.thread.i, %bb.g
  %.124.ph = phi i32 [ %i.s, %bb.e ], [ 0, %thread-pre-split.i ], [ %.023, %thread-pre-split.thread.i ], [ %i.af, %bb.g ]
  %i.ah = tail call fastcc zeroext i1 @parse_line_into_record(ptr noundef %0, ptr noundef %1, ptr noundef %i.d, i32 noundef %.124.ph)
  br i1 %i.ah, label %bb.j, label %bb.b

bb.j:                                             ; preds = %bb.i
  store i64 %.019, ptr %4, align 8
  store i32 0, ptr %i.m, align 4
  br label %.thread.sink.split

bb.k:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %i.m, align 4
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.k, %bb.j
  %.sink = phi i32 [ 0, %bb.j ], [ %i.ai, %bb.k ]
  store i32 %.sink, ptr %2, align 4
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.h
  %.not32.not.not48 = phi i1 [ false, %bb.h ], [ %.not32.not.not.not.not.not, %.thread.sink.split ]
  ret i1 %.not32.not.not48
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal noundef zeroext i1 @log3gpp_seek_read(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef initializes((0, 4)) %3, ptr noundef %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = tail call ptr @__errno_location() #13    ; 3 uses
  store i32 0, ptr %i.c, align 4
  store i32 0, ptr %3, align 4
  %i.d = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i64 @file_seek(ptr noundef %i.e, i64 noundef %1, i32 noundef 0, ptr noundef %3)
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.i = getelementptr i8, ptr %i.b, i64 134      ; 3 uses
  %i.j = tail call i64 @file_tell(ptr noundef %i.h)
  %i.k = tail call ptr @file_gets(ptr noundef %i.i, i32 noundef 65536, ptr noundef %i.h)
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %read_new_line.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call i64 @file_tell(ptr noundef %i.h)
  %i.m = sub i64 %i.l, %i.j                       ; 2 uses
  %i.n = trunc i64 %i.m to i32                    ; 4 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.p = add i64 %i.m, 4294967295
  %i.q = and i64 %i.p, 4294967295
  %i.r = getelementptr i8, ptr %i.i, i64 %i.q     ; 2 uses
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp eq i8 %i.s, 10
  br i1 %i.t, label %thread-pre-split.i, label %thread-pre-split.thread.i

thread-pre-split.i:                               ; preds = %bb.d
  store i8 0, ptr %i.r, align 1
  %i.u = add nsw i32 %i.n, -1                     ; 2 uses
  %.not21 = icmp eq i32 %i.u, 0
  br i1 %.not21, label %bb.f, label %thread-pre-split.thread.i

thread-pre-split.thread.i:                        ; preds = %thread-pre-split.i, %bb.d
  %.018 = phi i32 [ %i.u, %thread-pre-split.i ], [ %i.n, %bb.d ] ; 3 uses
  %i.v = zext nneg i32 %.018 to i64
  %i.w = getelementptr i8, ptr %i.i, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 -1       ; 2 uses
  %i.y = load i8, ptr %i.x, align 1
  %i.z = icmp eq i8 %i.y, 13
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %thread-pre-split.thread.i
  store i8 0, ptr %i.x, align 1
  %i.aa = add nsw i32 %.018, -1
  br label %bb.f

read_new_line.exit:                               ; preds = %bb.b
  %i.ab = tail call i32 @file_error(ptr noundef %i.h, ptr noundef %4)
  store i32 %i.ab, ptr %3, align 4
  br label %bb.i

bb.f:                                             ; preds = %bb.c, %thread-pre-split.i, %thread-pre-split.thread.i, %bb.e
  %.1.ph = phi i32 [ %i.n, %bb.c ], [ 0, %thread-pre-split.i ], [ %.018, %thread-pre-split.thread.i ], [ %i.aa, %bb.e ]
  %i.ac = tail call fastcc zeroext i1 @parse_line_into_record(ptr noundef %0, ptr noundef %2, ptr noundef %i.b, i32 noundef %.1.ph)
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.c, align 4
  store i32 0, ptr %3, align 4
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ad = load i32, ptr %i.c, align 4
  store i32 %i.ad, ptr %3, align 4
  %i.ae = tail call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.3, i64 noundef %1)
  store ptr %i.ae, ptr %4, align 8
  br label %bb.i

bb.i:                                             ; preds = %read_new_line.exit, %bb.a, %bb.h, %bb.g
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.g ], [ false, %bb.h ], [ false, %read_new_line.exit ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @log3gpp_close(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @g_free(ptr noundef %i.b)
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @wtap_add_generated_idb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @register_log3gpp() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @wtap_register_file_type_subtype(ptr noundef nonnull @log3gpp_info) ; 2 uses
  store i32 %i.a, ptr @log3gpp_file_type_subtype, align 4
  tail call void @wtap_register_backwards_compatibility_lua_name(ptr noundef nonnull @.str, i32 noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_register_file_type_subtype(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @wtap_register_backwards_compatibility_lua_name(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i64 @file_tell(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc noundef zeroext i1 @parse_line_into_record(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [17 x i8], align 16               ; 9 uses
  %i.b = alloca [4 x i8], align 1                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = getelementptr i8, ptr %2, i64 134        ; 12 uses
  %i.d = load ptr, ptr @g_ascii_table, align 8    ; 8 uses
  %i.e = sext i32 %3 to i64                       ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 5 uses
  %i.f = getelementptr i8, ptr %i.c, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1               ; 3 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr [2 x i8], ptr %i.d, i64 %i.h
  %i.j = load i16, ptr %i.i, align 2
  %i.k = and i16 %i.j, 8
  %.not = icmp eq i16 %i.k, 0
  %i.l = icmp slt i64 %indvars.iv, %i.e           ; 2 uses
  %i.m = and i1 %i.l, %.not
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.m, label %bb.b, label %bb.c, !llvm.loop !6

bb.c:                                             ; preds = %bb.b
  br i1 %i.l, label %.preheader179, label %.loopexit

.preheader179:                                    ; preds = %bb.c
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  %.not244 = icmp eq i8 %i.g, 46
  br i1 %.not244, label %.preheader177, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader179, %bb.d
  %indvars.iv269 = phi i64 [ %indvars.iv.next270, %bb.d ], [ %indvars.iv, %.preheader179 ]
  %indvars.iv267 = phi i64 [ %indvars.iv.next268, %bb.d ], [ 0, %.preheader179 ] ; 5 uses
  %i.o = phi i8 [ %i.v, %bb.d ], [ %i.g, %.preheader179 ] ; 2 uses
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr [2 x i8], ptr %i.d, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2
  %i.s = and i16 %i.r, 8
  %.not166 = icmp eq i16 %i.s, 0
  br i1 %.not166, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.t = getelementptr i8, ptr %i.a, i64 %indvars.iv267
  store i8 %i.o, ptr %i.t, align 1
  %indvars.iv.next270 = add nuw nsw i64 %indvars.iv269, 1 ; 3 uses
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 6 uses
  %i.u = getelementptr i8, ptr %i.c, i64 %indvars.iv.next270
  %i.v = load i8, ptr %i.u, align 1               ; 3 uses
  %i.w = icmp ne i8 %i.v, 46
  %i.x = icmp samesign ult i64 %indvars.iv267, 16
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  %i.y = trunc nuw i64 %indvars.iv.next270 to i32 ; 2 uses
  %i.z = icmp sgt i32 %3, %i.y                    ; 2 uses
  %i.aa = and i1 %i.z, %or.cond
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.d
  %i.ab = icmp eq i8 %i.v, 46
  %i.ac = icmp samesign ult i64 %indvars.iv267, 16
  %or.cond167 = and i1 %i.z, %i.ac
  br i1 %or.cond167, label %.lr.ph214.preheader, label %.loopexit

.lr.ph214.preheader:                              ; preds = %._crit_edge
  %i.ad = getelementptr i8, ptr %i.a, i64 %indvars.iv.next268
  store i8 0, ptr %i.ad, align 1
  %xtraiter = and i64 %indvars.iv.next268, 3      ; 3 uses
  %i.ae = icmp samesign ult i64 %indvars.iv267, 3
  br i1 %i.ae, label %.lr.ph214.epil.preheader, label %.lr.ph214.preheader.new

.lr.ph214.preheader.new:                          ; preds = %.lr.ph214.preheader
  %unroll_iter = and i64 %indvars.iv.next268, 28
  br label %.lr.ph214

._crit_edge215.unr-lcssa:                         ; preds = %.lr.ph214
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge215, label %.lr.ph214.epil.preheader

.lr.ph214.epil.preheader:                         ; preds = %._crit_edge215.unr-lcssa, %.lr.ph214.preheader
  %indvars.iv271.epil.init = phi i64 [ %indvars.iv.next268, %.lr.ph214.preheader ], [ %indvars.iv.next272.3, %._crit_edge215.unr-lcssa ]
  %.0133211.epil.init = phi i32 [ 1, %.lr.ph214.preheader ], [ %i.bw, %._crit_edge215.unr-lcssa ]
  %.0135210.epil.init = phi i32 [ 0, %.lr.ph214.preheader ], [ %i.bv, %._crit_edge215.unr-lcssa ]
  %lcmp.mod387 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod387)
  br label %.lr.ph214.epil

.lr.ph214.epil:                                   ; preds = %.lr.ph214.epil, %.lr.ph214.epil.preheader
  %indvars.iv271.epil = phi i64 [ %indvars.iv271.epil.init, %.lr.ph214.epil.preheader ], [ %indvars.iv.next272.epil, %.lr.ph214.epil ]
  %.0133211.epil = phi i32 [ %.0133211.epil.init, %.lr.ph214.epil.preheader ], [ %i.al, %.lr.ph214.epil ] ; 2 uses
  %.0135210.epil = phi i32 [ %.0135210.epil.init, %.lr.ph214.epil.preheader ], [ %i.ak, %.lr.ph214.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph214.epil.preheader ], [ %epil.iter.next, %.lr.ph214.epil ]
  %indvars.iv.next272.epil = add nsw i64 %indvars.iv271.epil, -1 ; 2 uses
  %i.af = getelementptr i8, ptr %i.a, i64 %indvars.iv.next272.epil
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = sext i8 %i.ag to i32
  %i.ai = add nsw i32 %i.ah, -48
  %i.aj = mul i32 %i.ai, %.0133211.epil
  %i.ak = add i32 %i.aj, %.0135210.epil           ; 2 uses
  %i.al = mul i32 %.0133211.epil, 10
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge215, label %.lr.ph214.epil, !llvm.loop !9

._crit_edge215:                                   ; preds = %.lr.ph214.epil, %._crit_edge215.unr-lcssa
  %.lcssa378 = phi i32 [ %i.bv, %._crit_edge215.unr-lcssa ], [ %i.ak, %.lr.ph214.epil ]
  br i1 %i.ab, label %.preheader177, label %.loopexit

.preheader177:                                    ; preds = %.preheader179, %._crit_edge215
  %.0135.lcssa323 = phi i32 [ %.lcssa378, %._crit_edge215 ], [ 0, %.preheader179 ]
  %.1145.lcssa311318322 = phi i32 [ %i.y, %._crit_edge215 ], [ %i.n, %.preheader179 ] ; 2 uses
  %.2217 = add i32 %.1145.lcssa311318322, 1       ; 2 uses
  %i.am = sext i32 %.2217 to i64                  ; 6 uses
  %i.an = getelementptr i8, ptr %i.c, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1             ; 4 uses
  %i.ap = icmp ne i8 %i.ao, 32
  %i.aq = icmp slt i32 %.2217, %3                 ; 2 uses
  %i.ar = and i1 %i.aq, %i.ap
  br i1 %i.ar, label %.lr.ph220, label %._crit_edge221

.lr.ph214:                                        ; preds = %.lr.ph214, %.lr.ph214.preheader.new
  %indvars.iv271 = phi i64 [ %indvars.iv.next268, %.lr.ph214.preheader.new ], [ %indvars.iv.next272.3, %.lr.ph214 ] ; 4 uses
  %.0133211 = phi i32 [ 1, %.lr.ph214.preheader.new ], [ %i.bw, %.lr.ph214 ] ; 5 uses
  %.0135210 = phi i32 [ 0, %.lr.ph214.preheader.new ], [ %i.bv, %.lr.ph214 ]
  %niter = phi i64 [ 0, %.lr.ph214.preheader.new ], [ %niter.next.3, %.lr.ph214 ]
  %i.as = getelementptr i8, ptr %i.a, i64 %indvars.iv271
  %i.at = getelementptr i8, ptr %i.as, i64 -1
  %i.au = load i8, ptr %i.at, align 1
  %i.av = sext i8 %i.au to i32
  %i.aw = add nsw i32 %i.av, -48
  %i.ax = mul i32 %i.aw, %.0133211
  %i.ay = add i32 %i.ax, %.0135210
  %i.az = mul i32 %.0133211, 10
  %i.ba = getelementptr i8, ptr %i.a, i64 %indvars.iv271
  %i.bb = getelementptr i8, ptr %i.ba, i64 -2
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = sext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -48
  %i.bf = mul i32 %i.be, %i.az
  %i.bg = add i32 %i.bf, %i.ay
  %i.bh = mul i32 %.0133211, 100
  %i.bi = getelementptr i8, ptr %i.a, i64 %indvars.iv271
  %i.bj = getelementptr i8, ptr %i.bi, i64 -3
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = sext i8 %i.bk to i32
  %i.bm = add nsw i32 %i.bl, -48
  %i.bn = mul i32 %i.bm, %i.bh
  %i.bo = add i32 %i.bn, %i.bg
  %i.bp = mul i32 %.0133211, 1000
  %indvars.iv.next272.3 = add nsw i64 %indvars.iv271, -4 ; 3 uses
  %i.bq = getelementptr i8, ptr %i.a, i64 %indvars.iv.next272.3
  %i.br = load i8, ptr %i.bq, align 1
  %i.bs = sext i8 %i.br to i32
  %i.bt = add nsw i32 %i.bs, -48
  %i.bu = mul i32 %i.bt, %i.bp
  %i.bv = add i32 %i.bu, %i.bo                    ; 3 uses
  %i.bw = mul i32 %.0133211, 10000                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge215.unr-lcssa, label %.lr.ph214, !llvm.loop !11

.lr.ph220:                                        ; preds = %.preheader177
  %i.bx = zext i8 %i.ao to i64
  %i.by = getelementptr [2 x i8], ptr %i.d, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2
  %i.ca = and i16 %i.bz, 8
  %.not165 = icmp eq i16 %i.ca, 0
  br i1 %.not165, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph220
  store i8 %i.ao, ptr %i.b, align 1
  %indvars.iv.next275 = add nuw nsw i64 %i.am, 1  ; 3 uses
  %i.cb = getelementptr i8, ptr %i.c, i64 %indvars.iv.next275
  %i.cc = load i8, ptr %i.cb, align 1             ; 4 uses
  %i.cd = icmp ne i8 %i.cc, 32
  %i.ce = icmp slt i64 %indvars.iv.next275, %i.e  ; 2 uses
  %i.cf = and i1 %i.ce, %i.cd
  br i1 %i.cf, label %.lr.ph220.1, label %._crit_edge221.loopexit

.lr.ph220.1:                                      ; preds = %bb.e
  %i.cg = zext i8 %i.cc to i64
  %i.ch = getelementptr [2 x i8], ptr %i.d, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = and i16 %i.ci, 8
  %.not165.1 = icmp eq i16 %i.cj, 0
  br i1 %.not165.1, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.lr.ph220.1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.cc, ptr %i.ck, align 1
  %indvars.iv.next275.1 = add nuw nsw i64 %i.am, 2 ; 3 uses
  %i.cl = getelementptr i8, ptr %i.c, i64 %indvars.iv.next275.1
  %i.cm = load i8, ptr %i.cl, align 1             ; 4 uses
  %i.cn = icmp ne i8 %i.cm, 32
  %i.co = icmp slt i64 %indvars.iv.next275.1, %i.e ; 2 uses
  %i.cp = and i1 %i.co, %i.cn
  br i1 %i.cp, label %.lr.ph220.2, label %._crit_edge221.loopexit

.lr.ph220.2:                                      ; preds = %bb.f
  %i.cq = zext i8 %i.cm to i64
  %i.cr = getelementptr [2 x i8], ptr %i.d, i64 %i.cq
  %i.cs = load i16, ptr %i.cr, align 2
  %i.ct = and i16 %i.cs, 8
  %.not165.2 = icmp eq i16 %i.ct, 0
  br i1 %.not165.2, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph220.2
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.cm, ptr %i.cu, align 1
  %indvars.iv.next275.2 = add nuw nsw i64 %i.am, 3 ; 3 uses
  %i.cv = getelementptr i8, ptr %i.c, i64 %indvars.iv.next275.2
  %i.cw = load i8, ptr %i.cv, align 1             ; 4 uses
  %i.cx = icmp ne i8 %i.cw, 32
  %i.cy = icmp slt i64 %indvars.iv.next275.2, %i.e ; 2 uses
  %i.cz = and i1 %i.cy, %i.cx
  br i1 %i.cz, label %.lr.ph220.3, label %._crit_edge221.loopexit

.lr.ph220.3:                                      ; preds = %bb.g
  %i.da = zext i8 %i.cw to i64
  %i.db = getelementptr [2 x i8], ptr %i.d, i64 %i.da
  %i.dc = load i16, ptr %i.db, align 2
  %i.dd = and i16 %i.dc, 8
  %.not165.3 = icmp eq i16 %i.dd, 0
  br i1 %.not165.3, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph220.3
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.cw, ptr %i.de, align 1
  %indvars.iv.next275.3 = add nuw nsw i64 %i.am, 4 ; 2 uses
  %i.df = getelementptr i8, ptr %i.c, i64 %indvars.iv.next275.3
  %i.dg = load i8, ptr %i.df, align 1
  %i.dh = icmp slt i64 %indvars.iv.next275.3, %i.e
  br label %._crit_edge221.loopexit

._crit_edge221.loopexit:                          ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %indvars.iv.next277.lcssa = phi i32 [ 1, %bb.e ], [ 2, %bb.f ], [ 3, %bb.g ], [ 4, %bb.h ]
  %.lcssa377 = phi i8 [ %i.cc, %bb.e ], [ %i.cm, %bb.f ], [ %i.cw, %bb.g ], [ %i.dg, %bb.h ] ; 2 uses
  %.lcssa376 = phi i1 [ %i.ce, %bb.e ], [ %i.co, %bb.f ], [ %i.cy, %bb.g ], [ %i.dh, %bb.h ]
  %i.di = phi i1 [ true, %bb.e ], [ true, %bb.f ], [ true, %bb.g ], [ false, %bb.h ]
  %indvars.iv274.lcssa374 = phi i64 [ %i.am, %bb.e ], [ %indvars.iv.next275, %bb.f ], [ %indvars.iv.next275.1, %bb.g ], [ %indvars.iv.next275.2, %bb.h ]
  br i1 %.lcssa376, label %.preheader176, label %.loopexit

._crit_edge221:                                   ; preds = %.preheader177
  br i1 %i.aq, label %.lr.ph227.preheader, label %.loopexit

.preheader176:                                    ; preds = %._crit_edge221.loopexit
  %4 = trunc nsw i64 %indvars.iv274.lcssa374 to i32 ; 2 uses
  br i1 %i.di, label %.lr.ph227.preheader, label %._crit_edge228

.lr.ph227.preheader:                              ; preds = %._crit_edge221, %.preheader176
  %.2.in.lcssa324334 = phi i32 [ %4, %.preheader176 ], [ %.1145.lcssa311318322, %._crit_edge221 ]
  %.0139.lcssa325332 = phi i32 [ %indvars.iv.next277.lcssa, %.preheader176 ], [ 0, %._crit_edge221 ] ; 2 uses
  %.lcssa193326331 = phi i8 [ %.lcssa377, %.preheader176 ], [ %i.ao, %._crit_edge221 ]
  %i.dj = zext nneg i32 %.0139.lcssa325332 to i64
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.dj
  %narrow = sub nuw nsw i32 4, %.0139.lcssa325332
  %i.dk = zext nneg i32 %narrow to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep, i8 48, i64 %i.dk, i1 false)
  br label %._crit_edge228

._crit_edge228:                                   ; preds = %.lr.ph227.preheader, %.preheader176
  %.2.in.lcssa324333 = phi i32 [ %.2.in.lcssa324334, %.lr.ph227.preheader ], [ %4, %.preheader176 ]
  %.lcssa193326330 = phi i8 [ %.lcssa193326331, %.lr.ph227.preheader ], [ %.lcssa377, %.preheader176 ]
  %i.dl = load i8, ptr %i.b, align 1
  %i.dm = sext i8 %i.dl to i32
  %i.dn = mul nsw i32 %i.dm, 100000
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.dp = load i8, ptr %i.do, align 1
  %i.dq = sext i8 %i.dp to i32
  %i.dr = mul nsw i32 %i.dq, 10000
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = sext i8 %i.dt to i32
  %i.dv = mul nsw i32 %i.du, 1000
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.dx = load i8, ptr %i.dw, align 1
  %i.dy = sext i8 %i.dx to i32
  %i.dz = mul nsw i32 %i.dy, 100
  %i.ea = add nsw i32 %i.dn, -5332800
  %i.eb = add nsw i32 %i.ea, %i.dr
  %i.ec = add nsw i32 %i.eb, %i.dv
  %i.ed = add nsw i32 %i.ec, %i.dz
  %.not155 = icmp eq i8 %.lcssa193326330, 32
  br i1 %.not155, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %._crit_edge228
  %i.ee = add i32 %.2.in.lcssa324333, 2           ; 3 uses
  %i.ef = sext i32 %i.ee to i64                   ; 3 uses
  %i.eg = getelementptr i8, ptr %i.c, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1             ; 2 uses
  %i.ei = icmp ne i8 %i.eh, 32
  %i.ej = icmp slt i32 %i.ee, %3                  ; 2 uses
  %i.ek = and i1 %i.ej, %i.ei
  br i1 %i.ek, label %.lr.ph233, label %._crit_edge234

.lr.ph233:                                        ; preds = %bb.i
  %i.el = getelementptr i8, ptr %2, i64 4
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph233, %bb.k
  %indvars.iv283.a = phi i64 [ %i.ef, %.lr.ph233 ], [ %indvars.iv.next284.a, %bb.k ]
  %indvars.iv281 = phi i64 [ 0, %.lr.ph233 ], [ %indvars.iv.next282, %bb.k ] ; 3 uses
  %i.em = phi i8 [ %i.eh, %.lr.ph233 ], [ %i.es, %bb.k ] ; 3 uses
  %i.en = zext i8 %i.em to i64
  %i.eo = getelementptr [2 x i8], ptr %i.d, i64 %i.en
  %i.ep = load i16, ptr %i.eo, align 2
  %.fr = freeze i16 %i.ep
  %.not161 = trunc i16 %.fr to i1
  br i1 %.not161, label %bb.k, label %switch.early.test

switch.early.test:                                ; preds = %bb.j
  switch i8 %i.em, label %.loopexit [
    i8 95, label %bb.k
    i8 46, label %bb.k
    i8 45, label %bb.k
  ]

bb.k:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %bb.j
  %i.eq = getelementptr i8, ptr %i.el, i64 %indvars.iv281
  store i8 %i.em, ptr %i.eq, align 1
  %indvars.iv.next284.a = add nuw nsw i64 %indvars.iv283.a, 1 ; 5 uses
  %indvars.iv.next282 = add nuw nsw i64 %indvars.iv281, 1 ; 2 uses
  %i.er = getelementptr i8, ptr %i.c, i64 %indvars.iv.next284.a
  %i.es = load i8, ptr %i.er, align 1             ; 2 uses
  %i.et = icmp ne i8 %i.es, 32
  %i.eu = icmp samesign ult i64 %indvars.iv281, 63
  %or.cond5 = select i1 %i.et, i1 %i.eu, i1 false
  %i.ev = icmp slt i64 %indvars.iv.next284.a, %i.e ; 2 uses
  %i.ew = and i1 %i.ev, %or.cond5
  br i1 %i.ew, label %bb.j, label %._crit_edge234.loopexit, !llvm.loop !12

._crit_edge234.loopexit:                          ; preds = %bb.k
  %i.ex = trunc nsw i64 %indvars.iv.next284.a to i32
  %i.ey = trunc nuw nsw i64 %indvars.iv.next282 to i32
  br label %._crit_edge234

._crit_edge234:                                   ; preds = %._crit_edge234.loopexit, %bb.i
  %.lcssa229 = phi i64 [ %i.ef, %bb.i ], [ %indvars.iv.next284.a, %._crit_edge234.loopexit ]
  %.3.lcssa = phi i32 [ %i.ee, %bb.i ], [ %i.ex, %._crit_edge234.loopexit ] ; 3 uses
  %.0143.lcssa = phi i32 [ 0, %bb.i ], [ %i.ey, %._crit_edge234.loopexit ] ; 2 uses
  %.lcssa185 = phi i1 [ %i.ej, %bb.i ], [ %i.ev, %._crit_edge234.loopexit ]
  %i.ez = icmp ne i32 %.0143.lcssa, 64
  %or.cond172 = and i1 %.lcssa185, %i.ez
  br i1 %or.cond172, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %._crit_edge234
  %i.fa = getelementptr i8, ptr %i.c, i64 %.lcssa229
  %i.fb = getelementptr i8, ptr %2, i64 4         ; 2 uses
  %i.fc = zext nneg i32 %.0143.lcssa to i64
  %i.fd = getelementptr i8, ptr %i.fb, i64 %i.fc
  store i8 0, ptr %i.fd, align 1
  %i.fe = load i8, ptr %i.fa, align 1
  %.not157 = icmp eq i8 %i.fe, 32
  br i1 %.not157, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.l
  %i.ff = sext i32 %.3.lcssa to i64
  %i.fg = add nuw i32 %.3.lcssa, 2
  %i.fh = add i32 %3, -2
  %i.fi = sub i32 %i.fh, %.3.lcssa
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv297 = phi i32 [ %i.fi, %.preheader.preheader ], [ %indvars.iv.next298, %.preheader ] ; 3 uses
  %indvars.iv290.a = phi i32 [ %i.fg, %.preheader.preheader ], [ %indvars.iv.next291.a, %.preheader ] ; 2 uses
  %indvars.iv285 = phi i64 [ %i.ff, %.preheader.preheader ], [ %indvars.iv.next286, %.preheader ] ; 2 uses
  %indvars.iv.next286 = add nsw i64 %indvars.iv285, 1 ; 5 uses
  %i.fj = getelementptr i8, ptr %i.c, i64 %indvars.iv.next286
  %i.fk = load i8, ptr %i.fj, align 1             ; 2 uses
  %i.fl = zext i8 %i.fk to i64
  %i.fm = getelementptr [2 x i8], ptr %i.d, i64 %i.fl
  %i.fn = load i16, ptr %i.fm, align 2
  %i.fo = and i16 %i.fn, 1
  %.not158 = icmp eq i16 %i.fo, 0
  %i.fp = icmp slt i64 %indvars.iv.next286, %i.e  ; 2 uses
  %i.fq = and i1 %i.fp, %.not158
  %indvars.iv.next291.a = add i32 %indvars.iv290.a, 1
  %indvars.iv.next298 = add i32 %indvars.iv297, -1
  br i1 %i.fq, label %.preheader, label %bb.m, !llvm.loop !13

bb.m:                                             ; preds = %.preheader
  %i.fr = trunc nsw i64 %indvars.iv285 to i32
  br i1 %i.fp, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.fs = trunc nsw i64 %indvars.iv.next286 to i32
  %i.ft = tail call i32 @strcmp(ptr noundef %i.fb, ptr noundef nonnull dereferenceable(4) @.str.1) #14
  %i.fu = icmp eq i32 %i.ft, 0                    ; 2 uses
  br i1 %i.fu, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  switch i8 %i.fk, label %.loopexit [
    i8 117, label %bb.q
    i8 100, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.0137 = phi i32 [ 1, %bb.p ], [ 0, %bb.o ]
  %i.fv = add nsw i32 %i.fr, 2
  %i.fw = icmp slt i32 %i.fv, %3
  br i1 %i.fw, label %.lr.ph242, label %.critedge.thread

.lr.ph242:                                        ; preds = %bb.q
  %i.fx = getelementptr i8, ptr %2, i64 69
  %i.fy = sext i32 %indvars.iv290.a to i64
  %wide.trip.count = zext i32 %indvars.iv297 to i64
  br label %bb.r

.critedge.thread.loopexit:                        ; preds = %bb.s
  %i.fz = zext nneg i32 %indvars.iv297 to i64
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.q, %.critedge.thread.loopexit
  %.0142.lcssa = phi i64 [ %i.fz, %.critedge.thread.loopexit ], [ 0, %bb.q ]
  %i.ga = getelementptr i8, ptr %2, i64 69
  %i.gb = getelementptr i8, ptr %i.ga, i64 %.0142.lcssa
  store i8 0, ptr %i.gb, align 1
  br label %.loopexit

bb.r:                                             ; preds = %.lr.ph242, %bb.s
  %indvars.iv292 = phi i64 [ %i.fy, %.lr.ph242 ], [ %indvars.iv.next293, %bb.s ] ; 3 uses
  %indvars.iv288 = phi i64 [ 0, %.lr.ph242 ], [ %indvars.iv.next289, %bb.s ] ; 4 uses
  %i.gc = getelementptr i8, ptr %i.c, i64 %indvars.iv292
  %i.gd = load i8, ptr %i.gc, align 1             ; 2 uses
  %i.ge = icmp ne i8 %i.gd, 36
  %i.gf = icmp samesign ult i64 %indvars.iv288, 64
  %or.cond7 = select i1 %i.ge, i1 %i.gf, i1 false
  %i.gg = getelementptr i8, ptr %i.fx, i64 %indvars.iv288 ; 2 uses
  br i1 %or.cond7, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  store i8 %i.gd, ptr %i.gg, align 1
  %indvars.iv.next293 = add nsw i64 %indvars.iv292, 1
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.thread.loopexit, label %bb.r, !llvm.loop !14

.critedge:                                        ; preds = %bb.r
  store i8 0, ptr %i.gg, align 1
  %.not175 = icmp eq i64 %indvars.iv288, 64
  br i1 %.not175, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %.critedge
  %i.gh = trunc nsw i64 %indvars.iv292 to i32
  %i.gi = add nsw i32 %i.gh, 1                    ; 2 uses
  %i.gj = sext i32 %i.gi to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.n, %bb.t
  %.0138 = phi i64 [ %i.gj, %bb.t ], [ %indvars.iv.next286, %bb.n ]
  %.1 = phi i32 [ %.0137, %bb.t ], [ 0, %bb.n ]
  %.4.pn = phi i32 [ %i.gi, %bb.t ], [ %i.fs, %bb.n ]
  %.0134 = sub i32 %3, %.4.pn
  tail call fastcc void @build_packet_record(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %.0135.lcssa323, i32 noundef %i.ed, i64 noundef %.0138, i32 noundef %.0134, i32 noundef %.1, i1 noundef zeroext %i.fu)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph220, %.lr.ph220.1, %.lr.ph220.2, %.lr.ph220.3, %switch.early.test, %._crit_edge221.loopexit, %.critedge.thread, %bb.u, %._crit_edge215, %._crit_edge221, %._crit_edge228, %._crit_edge234, %bb.l, %bb.m, %bb.o, %.critedge, %._crit_edge, %bb.c
  %.1147 = phi i1 [ false, %._crit_edge ], [ false, %bb.c ], [ false, %switch.early.test ], [ false, %bb.m ], [ false, %._crit_edge215 ], [ false, %._crit_edge221.loopexit ], [ false, %._crit_edge221 ], [ false, %._crit_edge228 ], [ false, %.critedge.thread ], [ false, %._crit_edge234 ], [ false, %bb.l ], [ true, %bb.u ], [ false, %bb.o ], [ false, %.critedge ], [ false, %.lr.ph220 ], [ false, %.lr.ph220.3 ], [ false, %.lr.ph220.2 ], [ false, %.lr.ph220.1 ], [ false, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
end_hunk_0
