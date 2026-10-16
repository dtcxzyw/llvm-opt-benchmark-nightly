Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/jv_print?download=true
inline.NumInlined: 59
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@jq_set_colors:bb.a
  %i.bl = getelementptr i8, ptr %.04067, i64 %i.bi ; 5 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 2
  store i8 109, ptr %i.bm, align 1, !tbaa !12
  %i.bn = getelementptr i8, ptr %i.bl, i64 3
  store i8 0, ptr %i.bn, align 1, !tbaa !12
  %i.bo = getelementptr i8, ptr %i.bl, i64 4      ; 3 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr @colors, i64 %i.bc
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !15
  %i.bq = add nuw nsw i64 %.04166, 2              ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 16, !tbaa !15 ; 3 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 -1
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.be to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 2 uses
  store i8 27, ptr %i.bo, align 1, !tbaa !12
  %i.bx = getelementptr i8, ptr %i.bl, i64 5
  store i8 91, ptr %i.bx, align 1, !tbaa !12
  %i.by = getelementptr i8, ptr %i.bl, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr align 1 %i.be, i64 %i.bw, i1 false)
  %i.bz = getelementptr i8, ptr %i.bo, i64 %i.bw  ; 3 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 2
  store i8 109, ptr %i.ca, align 1, !tbaa !12
  %i.cb = getelementptr i8, ptr %i.bz, i64 3
  store i8 0, ptr %i.cb, align 1, !tbaa !12
  %i.cc = getelementptr i8, ptr %i.bz, i64 4      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit53.unr-lcssa, label %bb.n, !llvm.loop !19

.loopexit53.unr-lcssa:                            ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit53, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit53.unr-lcssa, %bb.m
  %.epil.init = phi ptr [ %0, %bb.m ], [ %i.bs, %.loopexit53.unr-lcssa ] ; 2 uses
  %.04067.epil.init = phi ptr [ %i.ay, %bb.m ], [ %i.cc, %.loopexit53.unr-lcssa ] ; 5 uses
  %.04166.epil.init = phi i64 [ 0, %bb.m ], [ %i.bq, %.loopexit53.unr-lcssa ] ; 2 uses
  %lcmp.mod95 = trunc i64 %.144 to i1
  tail call void @llvm.assume(i1 %lcmp.mod95)
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr @colors, i64 %.04166.epil.init
  store ptr %.04067.epil.init, ptr %i.cd, align 8, !tbaa !15
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.04166.epil.init
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !15
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -1
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %.epil.init to i64
  %i.ck = sub i64 %i.ci, %i.cj                    ; 2 uses
  store i8 27, ptr %.04067.epil.init, align 1, !tbaa !12
  %i.cl = getelementptr inbounds nuw i8, ptr %.04067.epil.init, i64 1
  store i8 91, ptr %i.cl, align 1, !tbaa !12
  %i.cm = getelementptr inbounds nuw i8, ptr %.04067.epil.init, i64 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cm, ptr align 1 %.epil.init, i64 %i.ck, i1 false)
  %i.cn = getelementptr i8, ptr %.04067.epil.init, i64 %i.ck ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 2
  store i8 109, ptr %i.co, align 1, !tbaa !12
  %i.cp = getelementptr i8, ptr %i.cn, i64 3
  store i8 0, ptr %i.cp, align 1, !tbaa !12
  br label %.loopexit53

.loopexit53:                                      ; preds = %.loopexit53.unr-lcssa, %.epil.preheader
  %i.cq = icmp samesign ult i64 %.144, 8
  br i1 %i.cq, label %.lr.ph70.preheader, label %.loopexit

.lr.ph70.preheader:                               ; preds = %bb.l, %bb.k, %.loopexit53
  %.14294 = phi i64 [ %.144, %.loopexit53 ], [ 0, %bb.k ], [ 0, %bb.l ]
  %i.cr = shl nuw nsw i64 %.14294, 3              ; 3 uses
  %scevgep = getelementptr i8, ptr @colors, i64 %i.cr
  %scevgep73 = getelementptr i8, ptr @default_colors, i64 %i.cr
  %i.cs = sub nuw nsw i64 64, %i.cr
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep73, i64 %i.cs, i1 false), !tbaa !15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph70.preheader, %.loopexit53
  %.0 = phi i32 [ 1, %.loopexit53 ], [ 1, %.lr.ph70.preheader ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %.loopexit
  %.1 = phi i32 [ %.0, %.loopexit ], [ 1, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

declare void @jv_mem_free(ptr noundef) local_unnamed_addr #3

declare ptr @jv_mem_realloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @jv_dumpf(i64 %0, ptr %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @tsd_dtoa_context_get() #9
  tail call fastcc void @jv_dump_term(ptr noundef %i.a, i64 %0, ptr %1, i32 noundef %3, i32 noundef 0, ptr noundef %2, ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @jv_dump_term(ptr noundef %0, i64 %1, ptr %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 7 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %i.e = alloca i8, align 1                       ; 8 uses
  %i.f = alloca i8, align 1                       ; 8 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 7 uses
  %i.i = alloca i8, align 1                       ; 16 uses
  %i.j = alloca i8, align 1                       ; 12 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i8, align 1                       ; 5 uses
  %i.m = alloca [64 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #9
  %i.n = and i32 %3, 32
  %.not = icmp eq i32 %i.n, 0                     ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call i32 @jv_get_refcnt(i64 %1, ptr %2) #9
  %i.p = add nsw i32 %i.o, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.q = phi i32 [ %i.p, %bb.b ], [ -1, %bb.a ]   ; 3 uses
  %i.r = and i32 %3, 4
  %.not324 = icmp eq i32 %i.r, 0
  br i1 %.not324, label %put_str.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = tail call i32 @jv_get_kind(i64 %1, ptr %2) #9
  %.not325 = icmp eq i32 %i.s, 0
  br i1 %.not325, label %put_str.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call i32 @jv_get_kind(i64 %1, ptr %2) #9
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr [8 x i8], ptr @colors, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15   ; 6 uses
  %i.y = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #10 ; 2 uses
  %.not.i.i = icmp eq ptr %6, null
  br i1 %.not.i.i, label %put_str.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = trunc i64 %i.y to i32
  %i.aa = load i64, ptr %6, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call { i64, ptr } @jv_string_append_buf(i64 %i.aa, ptr %i.ac, ptr noundef nonnull %i.x, i32 noundef %i.z) #9 ; 2 uses
  %i.ae = extractvalue { i64, ptr } %i.ad, 0
  %i.af = extractvalue { i64, ptr } %i.ad, 1
  store i64 %i.ae, ptr %6, align 8
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !12
  br label %put_str.exit

put_str.exit:                                     ; preds = %bb.f, %bb.d, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ %i.x, %bb.f ] ; 3 uses
  %i.ag = icmp sgt i32 %4, 10000
  br i1 %i.ag, label %bb.g, label %bb.i

put_str.exit.thread:                              ; preds = %bb.e
  %sext.i = shl i64 %i.y, 32
  %i.ah = ashr exact i64 %sext.i, 32
  %i.ai = tail call i64 @fwrite(ptr noundef nonnull %i.x, i64 noundef 1, i64 noundef %i.ah, ptr noundef %5) ; 0 uses
  %i.aj = icmp sgt i32 %4, 10000
  br i1 %i.aj, label %.thread, label %bb.i

bb.g:                                             ; preds = %put_str.exit
  %.not.i.i354 = icmp eq ptr %6, null
  br i1 %.not.i.i354, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load i64, ptr %6, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call { i64, ptr } @jv_string_append_buf(i64 %i.ak, ptr %i.am, ptr noundef nonnull @.str.10, i32 noundef 19) #9 ; 2 uses
  %i.ao = extractvalue { i64, ptr } %i.an, 0
  %i.ap = extractvalue { i64, ptr } %i.an, 1
  store i64 %i.ao, ptr %6, align 8
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !12
  br label %put_str.exit356

.thread:                                          ; preds = %put_str.exit.thread, %bb.g
  %.0448452 = phi ptr [ %.0, %bb.g ], [ %i.x, %put_str.exit.thread ]
  %i.aq = tail call i64 @fwrite(ptr noundef nonnull @.str.10, i64 noundef 1, i64 noundef 19, ptr noundef %5) ; 0 uses
  br label %put_str.exit356

bb.i:                                             ; preds = %put_str.exit.thread, %put_str.exit
  %.0447 = phi ptr [ %i.x, %put_str.exit.thread ], [ %.0, %put_str.exit ] ; 42 uses
  %i.ar = tail call i32 @jv_get_kind(i64 %1, ptr %2) #9
  switch i32 %i.ar, label %bb.j [
    i32 7, label %bb.bg
    i32 1, label %bb.s
    i32 2, label %bb.v
    i32 3, label %bb.y
    i32 4, label %bb.ab
    i32 5, label %bb.ai
    i32 6, label %bb.ak
  ]

bb.j:                                             ; preds = %bb.i
  %i.as = and i32 %3, 16
  %.not349 = icmp eq i32 %i.as, 0
  br i1 %.not349, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = tail call { i64, ptr } @jv_copy(i64 %1, ptr %2) #9 ; 2 uses
  %i.au = extractvalue { i64, ptr } %i.at, 0
  %i.av = extractvalue { i64, ptr } %i.at, 1
  %i.aw = tail call { i64, ptr } @jv_invalid_get_msg(i64 %i.au, ptr %i.av) #9 ; 2 uses
  %i.ax = extractvalue { i64, ptr } %i.aw, 0      ; 3 uses
  %i.ay = extractvalue { i64, ptr } %i.aw, 1      ; 3 uses
  %i.az = tail call i32 @jv_get_kind(i64 %i.ax, ptr %i.ay) #9
  %i.ba = icmp eq i32 %i.az, 5
  %.not.i.i357 = icmp eq ptr %6, null             ; 2 uses
  br i1 %i.ba, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  br i1 %.not.i.i357, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = load i64, ptr %6, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call { i64, ptr } @jv_string_append_buf(i64 %i.bb, ptr %i.bd, ptr noundef nonnull @.str.11, i32 noundef 9) #9 ; 2 uses
  %i.bf = extractvalue { i64, ptr } %i.be, 0
  %i.bg = extractvalue { i64, ptr } %i.be, 1
  store i64 %i.bf, ptr %6, align 8
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !12
  %i.bh = or i32 %3, 2
  tail call fastcc void @jvp_dump_string(i64 %i.ax, ptr %i.ay, i32 noundef %i.bh, ptr noundef %5, ptr noundef nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 62, ptr %i.l, align 1, !tbaa !12
  %i.bi = load i64, ptr %6, align 8
  %i.bj = load ptr, ptr %i.bc, align 8
  %i.bk = call { i64, ptr } @jv_string_append_buf(i64 %i.bi, ptr %i.bj, ptr noundef nonnull %i.l, i32 noundef 1) #9 ; 2 uses
  %i.bl = extractvalue { i64, ptr } %i.bk, 0
  %i.bm = extractvalue { i64, ptr } %i.bk, 1
  store i64 %i.bl, ptr %6, align 8
  store ptr %i.bm, ptr %i.bc, align 8, !tbaa !12
  br label %put_char.exit

bb.n:                                             ; preds = %bb.l
  %i.bn = tail call i64 @fwrite(ptr noundef nonnull @.str.11, i64 noundef 1, i64 noundef 9, ptr noundef %5) ; 0 uses
  %i.bo = or i32 %3, 2
  tail call fastcc void @jvp_dump_string(i64 %i.ax, ptr %i.ay, i32 noundef %i.bo, ptr noundef %5, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %fputc.i = tail call i32 @fputc(i32 62, ptr %5) ; 0 uses
  br label %put_char.exit

put_char.exit:                                    ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %put_str.exit356

bb.o:                                             ; preds = %bb.k
  br i1 %.not.i.i357, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = load i64, ptr %6, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call { i64, ptr } @jv_string_append_buf(i64 %i.bp, ptr %i.br, ptr noundef nonnull @.str.12, i32 noundef 9) #9 ; 2 uses
  %i.bt = extractvalue { i64, ptr } %i.bs, 0
  %i.bu = extractvalue { i64, ptr } %i.bs, 1
  store i64 %i.bt, ptr %6, align 8
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !12
  br label %put_str.exit356

bb.q:                                             ; preds = %bb.o
  %i.bv = tail call i64 @fwrite(ptr noundef nonnull @.str.12, i64 noundef 1, i64 noundef 9, ptr noundef %5) ; 0 uses
  br label %put_str.exit356

bb.r:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.4, i32 noundef 242, ptr noundef nonnull @__PRETTY_FUNCTION__.jv_dump_term) #11
  unreachable

bb.s:                                             ; preds = %bb.i
  %.not.i.i364 = icmp eq ptr %6, null
  br i1 %.not.i.i364, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bw = load i64, ptr %6, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call { i64, ptr } @jv_string_append_buf(i64 %i.bw, ptr %i.by, ptr noundef nonnull @.str.14, i32 noundef 4) #9 ; 2 uses
  %i.ca = extractvalue { i64, ptr } %i.bz, 0
  %i.cb = extractvalue { i64, ptr } %i.bz, 1
  store i64 %i.ca, ptr %6, align 8
  store ptr %i.cb, ptr %i.bx, align 8, !tbaa !12
  br label %put_str.exit356

bb.u:                                             ; preds = %bb.s
  %i.cc = tail call i64 @fwrite(ptr noundef nonnull @.str.14, i64 noundef 1, i64 noundef 4, ptr noundef %5) ; 0 uses
  br label %put_str.exit356

bb.v:                                             ; preds = %bb.i
  %.not.i.i367 = icmp eq ptr %6, null
  br i1 %.not.i.i367, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = load i64, ptr %6, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = tail call { i64, ptr } @jv_string_append_buf(i64 %i.cd, ptr %i.cf, ptr noundef nonnull @.str.15, i32 noundef 5) #9 ; 2 uses
  %i.ch = extractvalue { i64, ptr } %i.cg, 0
  %i.ci = extractvalue { i64, ptr } %i.cg, 1
  store i64 %i.ch, ptr %6, align 8
  store ptr %i.ci, ptr %i.ce, align 8, !tbaa !12
  br label %put_str.exit356

bb.x:                                             ; preds = %bb.v
  %i.cj = tail call i64 @fwrite(ptr noundef nonnull @.str.15, i64 noundef 1, i64 noundef 5, ptr noundef %5) ; 0 uses
  br label %put_str.exit356

bb.y:                                             ; preds = %bb.i
  %.not.i.i370 = icmp eq ptr %6, null
  br i1 %.not.i.i370, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ck = load i64, ptr %6, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = tail call { i64, ptr } @jv_string_append_buf(i64 %i.ck, ptr %i.cm, ptr noundef nonnull @.str.16, i32 noundef 4) #9 ; 2 uses
  %i.co = extractvalue { i64, ptr } %i.cn, 0
  %i.cp = extractvalue { i64, ptr } %i.cn, 1
  store i64 %i.co, ptr %6, align 8
  store ptr %i.cp, ptr %i.cl, align 8, !tbaa !12
  br label %put_str.exit356

bb.aa:                                            ; preds = %bb.y
  %i.cq = tail call i64 @fwrite(ptr noundef nonnull @.str.16, i64 noundef 1, i64 noundef 4, ptr noundef %5) ; 0 uses
  br label %put_str.exit356

bb.ab:                                            ; preds = %bb.i
  %i.cr = tail call i32 @jvp_number_is_nan(i64 %1, ptr %2) #9
  %.not335 = icmp eq i32 %i.cr, 0
  br i1 %.not335, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cs = tail call { i64, ptr } @jv_null() #9    ; 2 uses
  %i.ct = extractvalue { i64, ptr } %i.cs, 0
  %i.cu = extractvalue { i64, ptr } %i.cs, 1
  tail call fastcc void @jv_dump_term(ptr noundef %0, i64 %i.ct, ptr %i.cu, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6)
  br label %put_str.exit356

bb.ad:                                            ; preds = %bb.ab
  %i.cv = tail call ptr @jv_number_get_literal(i64 %1, ptr %2) #9 ; 2 uses
  %.not336 = icmp eq ptr %i.cv, null
  br i1 %.not336, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call fastcc void @put_str(ptr noundef nonnull %i.cv, ptr noundef %5, ptr noundef %6)
  br label %put_str.exit356

bb.af:                                            ; preds = %bb.ad
  %i.cw = tail call double @jv_number_value(i64 %1, ptr %2) #9 ; 3 uses
  %i.cx = fcmp uno double %i.cw, 0.000000e+00
  br i1 %i.cx, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call fastcc void @put_str(ptr noundef nonnull @.str.14, ptr noundef %5, ptr noundef %6)
  br label %put_str.exit356

bb.ah:                                            ; preds = %bb.af
  %i.cy = fcmp ogt double %i.cw, f0x7FEFFFFFFFFFFFFF
  %spec.store.select = select i1 %i.cy, double f0x7FEFFFFFFFFFFFFF, double %i.cw ; 2 uses
  %i.cz = fcmp olt double %spec.store.select, f0xFFEFFFFFFFFFFFFF
  %spec.store.select1 = select i1 %i.cz, double f0xFFEFFFFFFFFFFFFF, double %spec.store.select
  %i.da = call ptr @jvp_dtoa_fmt(ptr noundef %0, ptr noundef nonnull %i.m, double noundef %spec.store.select1) #9
  call fastcc void @put_str(ptr noundef %i.da, ptr noundef %5, ptr noundef %6)
  br label %put_str.exit356

bb.ai:                                            ; preds = %bb.i
  %i.db = and i32 %3, 2
  tail call fastcc void @jvp_dump_string(i64 %1, ptr %2, i32 noundef %i.db, ptr noundef %5, ptr noundef %6)
  br i1 %.not, label %put_str.exit356, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @put_refcnt(ptr noundef %0, i32 noundef %i.q, ptr noundef %5, ptr noundef %6)
  br label %put_str.exit356

bb.ak:                                            ; preds = %bb.i
  %i.dc = tail call { i64, ptr } @jv_copy(i64 %1, ptr %2) #9 ; 2 uses
  %i.dd = extractvalue { i64, ptr } %i.dc, 0
  %i.de = extractvalue { i64, ptr } %i.dc, 1
  %i.df = tail call i32 @jv_array_length(i64 %i.dd, ptr %i.de) #9
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %.not.i.i373 = icmp eq ptr %6, null
  br i1 %.not.i.i373, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dh = load i64, ptr %6, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = tail call { i64, ptr } @jv_string_append_buf(i64 %i.dh, ptr %i.dj, ptr noundef nonnull @.str.17, i32 noundef 2) #9 ; 2 uses
  %i.dl = extractvalue { i64, ptr } %i.dk, 0
  %i.dm = extractvalue { i64, ptr } %i.dk, 1
  store i64 %i.dl, ptr %6, align 8
  store ptr %i.dm, ptr %i.di, align 8, !tbaa !12
  br label %put_str.exit356

bb.an:                                            ; preds = %bb.al
  %i.dn = tail call i64 @fwrite(ptr noundef nonnull @.str.17, i64 noundef 1, i64 noundef 2, ptr noundef %5) ; 0 uses
  br label %put_str.exit356

bb.ao:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i8 91, ptr %i.k, align 1, !tbaa !12
  %.not.i.i376 = icmp eq ptr %6, null             ; 7 uses
  br i1 %.not.i.i376, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.do = load i64, ptr %6, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = call { i64, ptr } @jv_string_append_buf(i64 %i.do, ptr %i.dq, ptr noundef nonnull %i.k, i32 noundef 1) #9 ; 2 uses
  %i.ds = extractvalue { i64, ptr } %i.dr, 0
  %i.dt = extractvalue { i64, ptr } %i.dr, 1
  store i64 %i.ds, ptr %6, align 8
  store ptr %i.dt, ptr %i.dp, align 8, !tbaa !12
  br label %put_char.exit378

bb.aq:                                            ; preds = %bb.ao
  %fputc.i377 = tail call i32 @fputc(i32 91, ptr %5) ; 0 uses
  br label %put_char.exit378

put_char.exit378:                                 ; preds = %bb.ap, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.du = call { i64, ptr } @jv_copy(i64 %1, ptr %2) #9 ; 2 uses
  %i.dv = extractvalue { i64, ptr } %i.du, 0
  %i.dw = extractvalue { i64, ptr } %i.du, 1
  %i.dx = call i32 @jv_array_length(i64 %i.dv, ptr %i.dw) #9 ; 3 uses
  %.not330506 = icmp sgt i32 %i.dx, 0
  br i1 %.not330506, label %bb.ar, label %put_char.exit381..critedge_crit_edge

put_char.exit381..critedge_crit_edge:             ; preds = %put_char.exit378
  %.pre524 = and i32 %3, 1
  br label %.loopexit505

bb.ar:                                            ; preds = %put_char.exit378
  %.not332 = icmp eq ptr %.0447, null             ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 12 uses
  %8 = and i32 %3, 1                              ; 3 uses
  %.not334457 = icmp eq i32 %8, 0                 ; 7 uses
  %9 = add nsw i32 %4, 1                          ; 4 uses
  %i.dy = call { i64, ptr } @jv_copy(i64 %1, ptr %2) #9 ; 2 uses
  %i.dz = extractvalue { i64, ptr } %i.dy, 0
  %i.ea = extractvalue { i64, ptr } %i.dy, 1
  %i.eb = call { i64, ptr } @jv_array_get(i64 %i.dz, ptr %i.ea, i32 noundef 0) #9 ; 2 uses
  %i.ec = extractvalue { i64, ptr } %i.eb, 0
  %i.ed = extractvalue { i64, ptr } %i.eb, 1
  br i1 %.not332, label %put_str.exit387.peel, label %bb.as

bb.as:                                            ; preds = %bb.ar
  br i1 %.not.i.i376, label %put_str.exit387.thread461.peel, label %put_str.exit387.thread.peel

put_str.exit387.thread.peel:                      ; preds = %bb.as
  %i.ee = load i64, ptr %6, align 8
  %i.ef = load ptr, ptr %7, align 8
  %i.eg = call { i64, ptr } @jv_string_append_buf(i64 %i.ee, ptr %i.ef, ptr noundef nonnull @.str.18, i32 noundef 4) #9 ; 2 uses
  %i.eh = extractvalue { i64, ptr } %i.eg, 0      ; 2 uses
  %i.ei = extractvalue { i64, ptr } %i.eg, 1      ; 2 uses
  store i64 %i.eh, ptr %6, align 8
  store ptr %i.ei, ptr %7, align 8, !tbaa !12
  br i1 %.not334457, label %bb.aw, label %.thread460.peel

.thread460.peel:                                  ; preds = %put_str.exit387.thread.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 1, !tbaa !12
  br label %bb.au

put_str.exit387.thread461.peel:                   ; preds = %bb.as
  %i.ej = call i64 @fwrite(ptr noundef nonnull @.str.18, i64 noundef 1, i64 noundef 4, ptr noundef %5) ; 0 uses
  br i1 %.not334457, label %bb.aw, label %.thread463.peel

.thread463.peel:                                  ; preds = %put_str.exit387.thread461.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 1, !tbaa !12
  br label %bb.av

put_str.exit387.peel:                             ; preds = %bb.ar
  br i1 %.not334457, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %put_str.exit387.peel
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 1, !tbaa !12
  br i1 %.not.i.i376, label %bb.av, label %._crit_edge

._crit_edge:                                      ; preds = %bb.at
  %.pre = load i64, ptr %6, align 8
  %.pre510 = load ptr, ptr %7, align 8
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge, %.thread460.peel
  %i.ek = phi ptr [ %.pre510, %._crit_edge ], [ %i.ei, %.thread460.peel ]
  %i.el = phi i64 [ %.pre, %._crit_edge ], [ %i.eh, %.thread460.peel ]
  %i.em = call { i64, ptr } @jv_string_append_buf(i64 %i.el, ptr %i.ek, ptr noundef nonnull %i.i, i32 noundef 1) #9 ; 2 uses
  %i.en = extractvalue { i64, ptr } %i.em, 0
  %i.eo = extractvalue { i64, ptr } %i.em, 1
  store i64 %i.en, ptr %6, align 8
  store ptr %i.eo, ptr %7, align 8, !tbaa !12
  br label %put_char.exit390.peel

bb.av:                                            ; preds = %bb.at, %.thread463.peel
  %fputc.i389.peel = call i32 @fputc(i32 10, ptr %5) ; 0 uses
  br label %put_char.exit390.peel

put_char.exit390.peel:                            ; preds = %bb.av, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call fastcc void @put_indent(i32 noundef %9, i32 noundef %3, ptr noundef %5, ptr noundef %6)
  br label %bb.aw

bb.aw:                                            ; preds = %put_char.exit390.peel, %put_str.exit387.peel, %put_str.exit387.thread461.peel, %put_str.exit387.thread.peel
  call fastcc void @jv_dump_term(ptr noundef %0, i64 %i.ec, ptr %i.ed, i32 noundef %3, i32 noundef %9, ptr noundef %5, ptr noundef %6)
  %exitcond.peel.not = icmp eq i32 %i.dx, 1
  br i1 %exitcond.peel.not, label %.loopexit505, label %.lr.ph.peel.next

.loopexit505:                                     ; preds = %bb.az, %bb.aw, %put_char.exit381..critedge_crit_edge
  %.pre-phi = phi i32 [ %.pre524, %put_char.exit381..critedge_crit_edge ], [ %8, %bb.aw ], [ %8, %bb.az ]
  %.not327 = icmp eq i32 %.pre-phi, 0
  br i1 %.not327, label %bb.bb, label %bb.ba

.lr.ph.peel.next:                                 ; preds = %bb.aw, %bb.az
  %.1507 = phi i32 [ %i.ft, %bb.az ], [ 1, %bb.aw ] ; 2 uses
  %i.ep = call { i64, ptr } @jv_copy(i64 %1, ptr %2) #9 ; 2 uses
  %i.eq = extractvalue { i64, ptr } %i.ep, 0
  %i.er = extractvalue { i64, ptr } %i.ep, 1
  %i.es = call { i64, ptr } @jv_array_get(i64 %i.eq, ptr %i.er, i32 noundef %.1507) #9 ; 2 uses
  %i.et = extractvalue { i64, ptr } %i.es, 0
  %i.eu = extractvalue { i64, ptr } %i.es, 1
  br i1 %.not332, label %put_str.exit381, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.peel.next
  %i.ev = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0447) #10 ; 2 uses
  br i1 %.not.i.i376, label %put_str.exit387.thread461, label %put_str.exit387.thread

put_str.exit381:                                  ; preds = %.lr.ph.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 44, ptr %i.j, align 1, !tbaa !12
  br i1 %.not.i.i376, label %put_str.exit387, label %put_str.exit387.thread536

put_str.exit387:                                  ; preds = %put_str.exit381
  %fputc.i383539 = call i32 @fputc(i32 44, ptr %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.not334457, label %bb.az, label %.thread463

put_str.exit387.thread536:                        ; preds = %put_str.exit381
  %.pre511.a = load i64, ptr %6, align 8
  %.pre512.a = load ptr, ptr %7, align 8
  %i.ew = call { i64, ptr } @jv_string_append_buf(i64 %.pre511.a, ptr %.pre512.a, ptr noundef nonnull %i.j, i32 noundef 1) #9 ; 2 uses
  %i.ex = extractvalue { i64, ptr } %i.ew, 0
  %i.ey = extractvalue { i64, ptr } %i.ew, 1
  store i64 %i.ex, ptr %6, align 8
  store ptr %i.ey, ptr %7, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br i1 %.not334457, label %bb.az, label %._crit_edge513

put_str.exit387.thread461:                        ; preds = %bb.ax
  %sext.i380 = shl i64 %i.ev, 32
  %i.ez = ashr exact i64 %sext.i380, 32
  %i.fa = call i64 @fwrite(ptr noundef nonnull %.0447, i64 noundef 1, i64 noundef %i.ez, ptr noundef %5) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 44, ptr %i.j, align 1, !tbaa !12
  %fputc.i383 = call i32 @fputc(i32 44, ptr %5)   ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.fb = call i64 @fwrite(ptr noundef nonnull @.str.18, i64 noundef 1, i64 noundef 4, ptr noundef %5) ; 0 uses
  br i1 %.not334457, label %bb.az, label %.thread463

put_str.exit387.thread:                           ; preds = %bb.ax
  %i.fc = trunc i64 %i.ev to i32
  %i.fd = load i64, ptr %6, align 8
  %i.fe = load ptr, ptr %7, align 8
  %i.ff = call { i64, ptr } @jv_string_append_buf(i64 %i.fd, ptr %i.fe, ptr noundef nonnull %.0447, i32 noundef %i.fc) #9 ; 2 uses
  %i.fg = extractvalue { i64, ptr } %i.ff, 0      ; 2 uses
  %i.fh = extractvalue { i64, ptr } %i.ff, 1      ; 2 uses
  store i64 %i.fg, ptr %6, align 8
  store ptr %i.fh, ptr %7, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 44, ptr %i.j, align 1, !tbaa !12
  %i.fi = call { i64, ptr } @jv_string_append_buf(i64 %i.fg, ptr %i.fh, ptr noundef nonnull %i.j, i32 noundef 1) #9 ; 2 uses
  %i.fj = extractvalue { i64, ptr } %i.fi, 0      ; 2 uses
  %i.fk = extractvalue { i64, ptr } %i.fi, 1      ; 2 uses
  store i64 %i.fj, ptr %6, align 8
  store ptr %i.fk, ptr %7, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.fl = call { i64, ptr } @jv_string_append_buf(i64 %i.fj, ptr %i.fk, ptr noundef nonnull @.str.18, i32 noundef 4) #9 ; 2 uses
  %i.fm = extractvalue { i64, ptr } %i.fl, 0      ; 2 uses
  %i.fn = extractvalue { i64, ptr } %i.fl, 1      ; 2 uses
  store i64 %i.fm, ptr %6, align 8
  store ptr %i.fn, ptr %7, align 8, !tbaa !12
  br i1 %.not334457, label %bb.az, label %.thread460

.thread460:                                       ; preds = %put_str.exit387.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 1, !tbaa !12
  br label %bb.ay

._crit_edge513:                                   ; preds = %put_str.exit387.thread536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 1, !tbaa !12
  %.pre514.a = load i64, ptr %6, align 8
  %.pre515.a = load ptr, ptr %7, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %._crit_edge513, %.thread460
  %i.fo = phi ptr [ %.pre515.a, %._crit_edge513 ], [ %i.fn, %.thread460 ]
  %i.fp = phi i64 [ %.pre514.a, %._crit_edge513 ], [ %i.fm, %.thread460 ]
  %i.fq = call { i64, ptr } @jv_string_append_buf(i64 %i.fp, ptr %i.fo, ptr noundef nonnull %i.i, i32 noundef 1) #9 ; 2 uses
  %i.fr = extractvalue { i64, ptr } %i.fq, 0
  %i.fs = extractvalue { i64, ptr } %i.fq, 1
  store i64 %i.fr, ptr %6, align 8
  store ptr %i.fs, ptr %7, align 8, !tbaa !12
  br label %put_char.exit390

.thread463:                                       ; preds = %put_str.exit387, %put_str.exit387.thread461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 1, !tbaa !12
  %fputc.i389 = call i32 @fputc(i32 10, ptr %5)   ; 0 uses
  br label %put_char.exit390

put_char.exit390:                                 ; preds = %bb.ay, %.thread463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call fastcc void @put_indent(i32 noundef %9, i32 noundef %3, ptr noundef %5, ptr noundef %6)
  br label %bb.az

bb.az:                                            ; preds = %put_str.exit387.thread536, %put_str.exit387.thread461, %put_str.exit387.thread, %put_char.exit390, %put_str.exit387
  call fastcc void @jv_dump_term(ptr noundef %0, i64 %i.et, ptr %i.eu, i32 noundef %3, i32 noundef %9, ptr noundef %5, ptr noundef %6)
  %i.ft = add nuw nsw i32 %.1507, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ft, %i.dx
  br i1 %exitcond.not, label %.loopexit505, label %.lr.ph.peel.next, !llvm.loop !20

bb.ba:                                            ; preds = %.loopexit505
  call fastcc void @put_char(i8 noundef signext 10, ptr noundef %5, ptr noundef %6)
  call fastcc void @put_indent(i32 noundef %4, i32 noundef %3, ptr noundef %5, ptr noundef %6)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %.loopexit505
  %.not328 = icmp eq ptr %.0447, null
  br i1 %.not328, label %put_str.exit393, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0447) #10 ; 2 uses
  br i1 %.not.i.i376, label %put_str.exit393.thread, label %put_str.exit393.thread464

put_str.exit393.thread464:                        ; preds = %bb.bc
  %i.fv = trunc i64 %i.fu to i32
  %i.fw = load i64, ptr %6, align 8
  %10 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fx = load ptr, ptr %10, align 8
  %i.fy = call { i64, ptr } @jv_string_append_buf(i64 %i.fw, ptr %i.fx, ptr noundef nonnull %.0447, i32 noundef %i.fv) #9 ; 2 uses
  %i.fz = extractvalue { i64, ptr } %i.fy, 0      ; 2 uses
  %i.ga = extractvalue { i64, ptr } %i.fy, 1      ; 2 uses
  store i64 %i.fz, ptr %6, align 8
  store ptr %i.ga, ptr %10, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 93, ptr %i.h, align 1, !tbaa !12
  br label %bb.bd

put_str.exit393.thread:                           ; preds = %bb.bc
  %sext.i392 = shl i64 %i.fu, 32
  %i.gb = ashr exact i64 %sext.i392, 32
  %i.gc = call i64 @fwrite(ptr noundef nonnull %.0447, i64 noundef 1, i64 noundef %i.gb, ptr noundef %5) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br label %bb.be

put_str.exit393:                                  ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 93, ptr %i.h, align 1, !tbaa !12
  br i1 %.not.i.i376, label %bb.be, label %put_str.exit393._crit_edge

put_str.exit393._crit_edge:                       ; preds = %put_str.exit393
  %.pre516.a = load i64, ptr %6, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre517 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.bd

bb.bd:                                            ; preds = %put_str.exit393._crit_edge, %put_str.exit393.thread464
  %i.gd = phi ptr [ %.pre517, %put_str.exit393._crit_edge ], [ %i.ga, %put_str.exit393.thread464 ]
  %i.ge = phi i64 [ %.pre516.a, %put_str.exit393._crit_edge ], [ %i.fz, %put_str.exit393.thread464 ]
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gf = call { i64, ptr } @jv_string_append_buf(i64 %i.ge, ptr %i.gd, ptr noundef nonnull %i.h, i32 noundef 1) #9 ; 2 uses
  %i.gg = extractvalue { i64, ptr } %i.gf, 0
  %i.gh = extractvalue { i64, ptr } %i.gf, 1
  store i64 %i.gg, ptr %6, align 8
  store ptr %i.gh, ptr %11, align 8, !tbaa !12
  br label %put_char.exit396

bb.be:                                            ; preds = %put_str.exit393.thread, %put_str.exit393
  %fputc.i395 = call i32 @fputc(i32 93, ptr %5)   ; 0 uses
  br label %put_char.exit396

put_char.exit396:                                 ; preds = %bb.bd, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %.not, label %put_str.exit356, label %bb.bf

bb.bf:                                            ; preds = %put_char.exit396
  call fastcc void @put_refcnt(ptr noundef %0, i32 noundef %i.q, ptr noundef %5, ptr noundef %6)
  br label %put_str.exit356

bb.bg:                                            ; preds = %bb.i
  %i.gi = tail call { i64, ptr } @jv_copy(i64 %1, ptr %2) #9 ; 2 uses
  %i.gj = extractvalue { i64, ptr } %i.gi, 0
  %i.gk = extractvalue { i64, ptr } %i.gi, 1
  %i.gl = tail call i32 @jv_object_length(i64 %i.gj, ptr %i.gk) #9
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %.not.i.i397 = icmp eq ptr %6, null
  br i1 %.not.i.i397, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gn = load i64, ptr %6, align 8
  %i.go = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8
  %i.gq = tail call { i64, ptr } @jv_string_append_buf(i64 %i.gn, ptr %i.gp, ptr noundef nonnull @.str.19, i32 noundef 2) #9 ; 2 uses
  %i.gr = extractvalue { i64, ptr } %i.gq, 0
  %i.gs = extractvalue { i64, ptr } %i.gq, 1
  store i64 %i.gr, ptr %6, align 8
  store ptr %i.gs, ptr %i.go, align 8, !tbaa !12
  br label %put_str.exit356

bb.bj:                                            ; preds = %bb.bh
  %i.gt = tail call i64 @fwrite(ptr noundef nonnull @.str.19, i64 noundef 1, i64 noundef 2, ptr noundef %5) ; 0 uses
  br label %put_str.exit356

bb.bk:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 123, ptr %i.g, align 1, !tbaa !12
  %.not.i.i400 = icmp eq ptr %6, null             ; 10 uses
  br i1 %.not.i.i400, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gu = load i64, ptr %6, align 8
  %i.gv = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8
  %i.gx = call { i64, ptr } @jv_string_append_buf(i64 %i.gu, ptr %i.gw, ptr noundef nonnull %i.g, i32 noundef 1) #9 ; 2 uses
  %i.gy = extractvalue { i64, ptr } %i.gx, 0
  %i.gz = extractvalue { i64, ptr } %i.gx, 1
  store i64 %i.gy, ptr %6, align 8
  store ptr %i.gz, ptr %i.gv, align 8, !tbaa !12
  br label %put_char.exit402

bb.bm:                                            ; preds = %bb.bk
  %fputc.i401 = tail call i32 @fputc(i32 123, ptr %5) ; 0 uses
  br label %put_char.exit402

put_char.exit402:                                 ; preds = %bb.bl, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ha = call { i64, ptr } @jv_null() #9         ; 2 uses
  %i.hb = extractvalue { i64, ptr } %i.ha, 0
  %i.hc = extractvalue { i64, ptr } %i.ha, 1
  %i.hd = and i32 %3, 8
  %.not337 = icmp eq i32 %i.hd, 0
  %.not344 = icmp eq ptr %.0447, null             ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 22 uses
  %i.hf = and i32 %3, 1
  %.not346466 = icmp eq i32 %i.hf, 0              ; 4 uses
  %i.hg = add nsw i32 %4, 1                       ; 2 uses
  %i.hh = and i32 %3, 2                           ; 2 uses
  br label %bb.bn

bb.bn:                                            ; preds = %bb.cm, %put_char.exit402
  %.sroa.025.0 = phi i64 [ %i.hb, %put_char.exit402 ], [ %.sroa.025.2, %bb.cm ] ; 2 uses
  %.sroa.728.0 = phi ptr [ %i.hc, %put_char.exit402 ], [ %.sroa.728.2, %bb.cm ] ; 2 uses
  %.0320 = phi i32 [ 0, %put_char.exit402 ], [ %.3, %bb.cm ] ; 2 uses
  %.not340 = phi i1 [ false, %put_char.exit402 ], [ true, %bb.cm ] ; 3 uses
  br i1 %.not337, label %bb.bu, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  br i1 %.not340, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hi = call { i64, ptr } @jv_copy(i64 %1, ptr %2) #9 ; 2 uses
  %i.hj = extractvalue { i64, ptr } %i.hi, 0
  %i.hk = extractvalue { i64, ptr } %i.hi, 1
  %i.hl = call { i64, ptr } @jv_keys(i64 %i.hj, ptr %i.hk) #9 ; 2 uses
  %i.hm = extractvalue { i64, ptr } %i.hl, 0
  %i.hn = extractvalue { i64, ptr } %i.hl, 1
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.ho = add nsw i32 %.0320, 1
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.sroa.025.1 = phi i64 [ %i.hm, %bb.bp ], [ %.sroa.025.0, %bb.bq ] ; 4 uses
  %.sroa.728.1 = phi ptr [ %i.hn, %bb.bp ], [ %.sroa.728.0, %bb.bq ] ; 4 uses
  %.1321 = phi i32 [ 0, %bb.bp ], [ %i.ho, %bb.bq ] ; 3 uses
  %i.hp = call { i64, ptr } @jv_copy(i64 %.sroa.025.1, ptr %.sroa.728.1) #9 ; 2 uses
  %i.hq = extractvalue { i64, ptr } %i.hp, 0
  %i.hr = extractvalue { i64, ptr } %i.hp, 1
  %i.hs = call i32 @jv_array_length(i64 %i.hq, ptr %i.hr) #9
  %.not341 = icmp slt i32 %.1321, %i.hs
  br i1 %.not341, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @jv_free(i64 %.sroa.025.1, ptr %.sroa.728.1) #9
  br label %.loopexit

bb.bt:                                            ; preds = %bb.br
  %i.ht = call { i64, ptr } @jv_copy(i64 %.sroa.025.1, ptr %.sroa.728.1) #9 ; 2 uses
  %i.hu = extractvalue { i64, ptr } %i.ht, 0
  %i.hv = extractvalue { i64, ptr } %i.ht, 1
  %i.hw = call { i64, ptr } @jv_array_get(i64 %i.hu, ptr %i.hv, i32 noundef %.1321) #9 ; 2 uses
  %i.hx = extractvalue { i64, ptr } %i.hw, 0      ; 2 uses
  %i.hy = extractvalue { i64, ptr } %i.hw, 1      ; 2 uses
  %i.hz = call { i64, ptr } @jv_copy(i64 %1, ptr %2) #9 ; 2 uses
  %i.ia = extractvalue { i64, ptr } %i.hz, 0
  %i.ib = extractvalue { i64, ptr } %i.hz, 1
  %i.ic = call { i64, ptr } @jv_copy(i64 %i.hx, ptr %i.hy) #9 ; 2 uses
  %i.id = extractvalue { i64, ptr } %i.ic, 0
  %i.ie = extractvalue { i64, ptr } %i.ic, 1
  %i.if = call { i64, ptr } @jv_object_get(i64 %i.ia, ptr %i.ib, i64 %i.id, ptr %i.ie) #9
  br label %bb.bz

bb.bu:                                            ; preds = %bb.bn
  br i1 %.not340, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ig = call i32 @jv_object_iter(i64 %1, ptr %2) #9
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.ih = call i32 @jv_object_iter_next(i64 %1, ptr %2, i32 noundef %.0320) #9
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.2 = phi i32 [ %i.ig, %bb.bv ], [ %i.ih, %bb.bw ] ; 4 uses
  %i.ii = call i32 @jv_object_iter_valid(i64 %1, ptr %2, i32 noundef %.2) #9
  %.not339 = icmp eq i32 %i.ii, 0
  br i1 %.not339, label %.loopexit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ij = call { i64, ptr } @jv_object_iter_key(i64 %1, ptr %2, i32 noundef %.2) #9 ; 2 uses
  %i.ik = extractvalue { i64, ptr } %i.ij, 0
  %i.il = extractvalue { i64, ptr } %i.ij, 1
  %i.im = call { i64, ptr } @jv_object_iter_value(i64 %1, ptr %2, i32 noundef %.2) #9
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bt
  %.pn = phi { i64, ptr } [ %i.if, %bb.bt ], [ %i.im, %bb.by ] ; 2 uses
  %.sroa.020.0 = phi i64 [ %i.hx, %bb.bt ], [ %i.ik, %bb.by ] ; 4 uses
  %.sroa.7.0 = phi ptr [ %i.hy, %bb.bt ], [ %i.il, %bb.by ] ; 4 uses
  %.sroa.025.2 = phi i64 [ %.sroa.025.1, %bb.bt ], [ %.sroa.025.0, %bb.by ]
  %.sroa.728.2 = phi ptr [ %.sroa.728.1, %bb.bt ], [ %.sroa.728.0, %bb.by ]
  %.3 = phi i32 [ %.1321, %bb.bt ], [ %.2, %bb.by ]
  %.sroa.5.0 = extractvalue { i64, ptr } %.pn, 1
  %.sroa.019.0 = extractvalue { i64, ptr } %.pn, 0
  br i1 %.not340, label %bb.ca, label %bb.ce

bb.ca:                                            ; preds = %bb.bz
  br i1 %.not344, label %put_str.exit405, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.in = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0447) #10 ; 2 uses
  br i1 %.not.i.i400, label %put_str.exit405.thread, label %put_str.exit405.thread465

put_str.exit405.thread465:                        ; preds = %bb.cb
  %i.io = trunc i64 %i.in to i32
  %i.ip = load i64, ptr %6, align 8
  %i.iq = load ptr, ptr %i.he, align 8
  %i.ir = call { i64, ptr } @jv_string_append_buf(i64 %i.ip, ptr %i.iq, ptr noundef nonnull %.0447, i32 noundef %i.io) #9 ; 2 uses
  %i.is = extractvalue { i64, ptr } %i.ir, 0      ; 2 uses
  %i.it = extractvalue { i64, ptr } %i.ir, 1      ; 2 uses
  store i64 %i.is, ptr %6, align 8
  store ptr %i.it, ptr %i.he, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 44, ptr %i.f, align 1, !tbaa !12
  br label %bb.cc

put_str.exit405.thread:                           ; preds = %bb.cb
  %sext.i404 = shl i64 %i.in, 32
  %i.iu = ashr exact i64 %sext.i404, 32
  %i.iv = call i64 @fwrite(ptr noundef nonnull %.0447, i64 noundef 1, i64 noundef %i.iu, ptr noundef %5) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 44, ptr %i.f, align 1, !tbaa !12
  br label %bb.cd

put_str.exit405:                                  ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 44, ptr %i.f, align 1, !tbaa !12
  br i1 %.not.i.i400, label %bb.cd, label %put_str.exit405._crit_edge

put_str.exit405._crit_edge:                       ; preds = %put_str.exit405
end_hunk_0
