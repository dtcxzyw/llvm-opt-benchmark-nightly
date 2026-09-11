Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/t1?download=true
inline.NumInlined: 305
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@opj_t1_cblk_encode_processor:bb.a
  %i.cjm = sub i32 %i.cjj, %i.cjl
  %i.cjn = getelementptr inbounds nuw i8, ptr %i.cjc, i64 16
  store i32 %i.cjm, ptr %i.cjn, align 8, !tbaa !310
  %i.cjo = getelementptr inbounds nuw [24 x i8], ptr %i.cic, i64 %indvars.iv511.i ; 3 uses
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cjo, i64 24 ; 2 uses
  %i.cjq = load i32, ptr %i.cjp, align 8, !tbaa !308 ; 2 uses
  %i.cjr = add i32 %i.cjq, -1                     ; 3 uses
  %i.cjs = zext i32 %i.cjr to i64
  %i.cjt = getelementptr inbounds nuw i8, ptr %i.cis, i64 %i.cjs
  %i.cju = load i8, ptr %i.cjt, align 1, !tbaa !43
  %i.cjv = icmp eq i8 %i.cju, -1
  br i1 %i.cjv, label %bb.oe, label %bb.of

bb.oe:                                            ; preds = %.peel.next.i.1
  store i32 %i.cjr, ptr %i.cjp, align 8, !tbaa !308
  br label %bb.of

bb.of:                                            ; preds = %bb.oe, %.peel.next.i.1
  %i.cjw = phi i32 [ %i.cjr, %bb.oe ], [ %i.cjq, %.peel.next.i.1 ]
  %i.cjx = load i32, ptr %i.cjo, align 8, !tbaa !308
  %i.cjy = sub i32 %i.cjw, %i.cjx
  %i.cjz = getelementptr inbounds nuw i8, ptr %i.cjo, i64 40
  store i32 %i.cjy, ptr %i.cjz, align 8, !tbaa !310
  %indvars.iv.next512.i.1 = add nuw nsw i64 %indvars.iv511.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %opj_t1_encode_cblk.exit.loopexit.unr-lcssa, label %.peel.next.i, !llvm.loop !287

.loopexit.sink.split.i:                           ; preds = %bb.u, %bb.t, %.thread.i
  %i.cka = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 0, ptr %i.cka, align 4, !tbaa !309
  br label %opj_t1_encode_cblk.exit

opj_t1_encode_cblk.exit.loopexit.unr-lcssa:       ; preds = %bb.of
  %lcmp.mod914.not = icmp eq i64 %xtraiter913, 0
  br i1 %lcmp.mod914.not, label %opj_t1_encode_cblk.exit, label %.peel.next.i.epil.preheader

.peel.next.i.epil.preheader:                      ; preds = %opj_t1_encode_cblk.exit.loopexit.unr-lcssa, %.peel.next.i.preheader
  %indvars.iv511.i.epil.init = phi i64 [ 1, %.peel.next.i.preheader ], [ %indvars.iv.next512.i.1, %opj_t1_encode_cblk.exit.loopexit.unr-lcssa ]
  %lcmp.mod915 = trunc i64 %i.cie to i1
  tail call void @llvm.assume(i1 %lcmp.mod915)
  %i.ckb = getelementptr inbounds nuw [24 x i8], ptr %i.cic, i64 %indvars.iv511.i.epil.init ; 4 uses
  %i.ckc = load i32, ptr %i.ckb, align 8, !tbaa !308 ; 2 uses
  %i.ckd = add i32 %i.ckc, -1                     ; 3 uses
  %i.cke = zext i32 %i.ckd to i64
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.cis, i64 %i.cke
  %i.ckg = load i8, ptr %i.ckf, align 1, !tbaa !43
  %i.ckh = icmp eq i8 %i.ckg, -1
  br i1 %i.ckh, label %bb.og, label %opj_t1_encode_cblk.exit.loopexit.epilog-lcssa

bb.og:                                            ; preds = %.peel.next.i.epil.preheader
  store i32 %i.ckd, ptr %i.ckb, align 8, !tbaa !308
  br label %opj_t1_encode_cblk.exit.loopexit.epilog-lcssa

opj_t1_encode_cblk.exit.loopexit.epilog-lcssa:    ; preds = %bb.og, %.peel.next.i.epil.preheader
  %i.cki = phi i32 [ %i.ckd, %bb.og ], [ %i.ckc, %.peel.next.i.epil.preheader ]
  %i.ckj = getelementptr i8, ptr %i.ckb, i64 -24
  %i.ckk = load i32, ptr %i.ckj, align 8, !tbaa !308
  %i.ckl = sub i32 %i.cki, %i.ckk
  %i.ckm = getelementptr inbounds nuw i8, ptr %i.ckb, i64 16
  store i32 %i.ckl, ptr %i.ckm, align 8, !tbaa !310
  br label %opj_t1_encode_cblk.exit

opj_t1_encode_cblk.exit:                          ; preds = %opj_t1_encode_cblk.exit.loopexit.epilog-lcssa, %opj_t1_encode_cblk.exit.loopexit.unr-lcssa, %._crit_edge400.i, %bb.nv, %bb.oc, %.loopexit.sink.split.i
  %.0129.i = phi double [ %i.chb, %bb.nv ], [ 0.000000e+00, %.loopexit.sink.split.i ], [ %i.chb, %bb.oc ], [ %i.chb, %._crit_edge400.i ], [ %i.chb, %opj_t1_encode_cblk.exit.loopexit.unr-lcssa ], [ %i.chb, %opj_t1_encode_cblk.exit.loopexit.epilog-lcssa ] ; 2 uses
  %i.ckn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cko = load ptr, ptr %i.ckn, align 8, !tbaa !118 ; 2 uses
  %.not178 = icmp eq ptr %i.cko, null
  br i1 %.not178, label %.thread, label %bb.oh

.thread:                                          ; preds = %opj_t1_encode_cblk.exit
  %i.ckp = load ptr, ptr %i.il, align 8, !tbaa !109
  %i.ckq = getelementptr inbounds nuw i8, ptr %i.ckp, i64 40 ; 2 uses
  %i.ckr = load double, ptr %i.ckq, align 8, !tbaa !102
  %i.cks = fadd double %.0129.i, %i.ckr
  store double %i.cks, ptr %i.ckq, align 8, !tbaa !102
  br label %bb.oj

bb.oh:                                            ; preds = %opj_t1_encode_cblk.exit
  tail call void @opj_mutex_lock(ptr noundef nonnull %i.cko) #12
  %.pr = load ptr, ptr %i.ckn, align 8, !tbaa !118 ; 2 uses
  %i.ckt = load ptr, ptr %i.il, align 8, !tbaa !109
  %i.cku = getelementptr inbounds nuw i8, ptr %i.ckt, i64 40 ; 2 uses
  %i.ckv = load double, ptr %i.cku, align 8, !tbaa !102
  %i.ckw = fadd double %.0129.i, %i.ckv
  store double %i.ckw, ptr %i.cku, align 8, !tbaa !102
  %.not179 = icmp eq ptr %.pr, null
  br i1 %.not179, label %bb.oj, label %bb.oi

bb.oi:                                            ; preds = %bb.oh
  tail call void @opj_mutex_unlock(ptr noundef nonnull %.pr) #12
  br label %bb.oj

bb.oj:                                            ; preds = %bb.oh, %bb.oi, %.thread, %bb.a, %bb.j
  tail call void @opj_free(ptr noundef nonnull %0) #12
  ret void
}

declare void @opj_thread_pool_wait_completion(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @opj_mutex_destroy(ptr noundef) local_unnamed_addr #2

declare ptr @opj_aligned_malloc(i64 noundef) local_unnamed_addr #2

declare void @opj_mutex_lock(ptr noundef) local_unnamed_addr #2

declare i32 @opj_event_msg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @opj_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare ptr @opj_tls_get(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @opj_tls_set(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @opj_t1_destroy_wrapper(ptr noundef %0) #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %opj_t1_destroy.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not11.i = icmp eq ptr %i.b, null
  br i1 %.not11.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @opj_aligned_free(ptr noundef nonnull %i.b) #12
  store ptr null, ptr %i.a, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %.not12.i = icmp eq ptr %i.d, null
  br i1 %.not12.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @opj_aligned_free(ptr noundef nonnull %i.d) #12
  store ptr null, ptr %i.c, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  tail call void @opj_free(ptr noundef %i.f) #12
  tail call void @opj_free(ptr noundef nonnull %0) #12
  br label %opj_t1_destroy.exit

opj_t1_destroy.exit:                              ; preds = %bb.a, %bb.f
  ret void
}

declare i32 @opj_t1_ht_decode_cblk(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @opj_t1_allocate_buffers(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = mul i32 %2, %1                           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !318
  %i.d = icmp ugt i32 %i.a, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @opj_aligned_free(ptr noundef %i.f) #12
  %i.g = zext i32 %i.a to i64
  %i.h = shl nuw nsw i64 %i.g, 2
  %i.i = tail call ptr @opj_aligned_malloc(i64 noundef %i.h) #12 ; 3 uses
  store ptr %i.i, ptr %i.e, align 8, !tbaa !15
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.b
  store i32 %i.a, ptr %i.b, align 8, !tbaa !318
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.not76 = icmp eq ptr %i.f, null
  br i1 %.not76, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.j = phi ptr [ %i.i, %.thread ], [ %i.f, %bb.c ]
  %i.k = zext i32 %i.a to i64
  %i.l = shl nuw nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.j, i8 0, i64 %i.l, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = add i32 %1, 2                            ; 13 uses
  %i.n = add i32 %2, 3
  %i.o = lshr i32 %i.n, 2                         ; 3 uses
  %i.p = add nuw nsw i32 %i.o, 2
  %i.q = mul i32 %i.p, %i.m                       ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !319
  %i.t = icmp ugt i32 %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !16   ; 2 uses
  br i1 %i.t, label %bb.f, label %._crit_edge100

._crit_edge100:                                   ; preds = %bb.e
  %.pre103 = zext i32 %i.q to i64
  %.pre104 = shl nuw nsw i64 %.pre103, 2
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @opj_aligned_free(ptr noundef %i.v) #12
  %i.w = zext i32 %i.q to i64
  %i.x = shl nuw nsw i64 %i.w, 2                  ; 2 uses
  %i.y = tail call ptr @opj_aligned_malloc(i64 noundef %i.x) #12 ; 3 uses
  store ptr %i.y, ptr %i.u, align 8, !tbaa !16
  %.not77 = icmp eq ptr %i.y, null
  br i1 %.not77, label %.critedge, label %bb.g

bb.g:                                             ; preds = %._crit_edge100, %bb.f
  %.pre-phi105 = phi i64 [ %.pre104, %._crit_edge100 ], [ %i.x, %bb.f ]
  %i.z = phi ptr [ %i.v, %._crit_edge100 ], [ %i.y, %bb.f ]
  store i32 %i.q, ptr %i.r, align 4, !tbaa !319
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.z, i8 0, i64 %.pre-phi105, i1 false)
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !16 ; 5 uses
  %.not94 = icmp eq i32 %i.m, 0
  br i1 %.not94, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.ac = zext i32 %i.m to i64                    ; 2 uses
  %min.iters.check = icmp ult i32 %i.m, 8
  br i1 %min.iters.check, label %.lr.ph.preheader148, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ac, 4294967288              ; 4 uses
  %i.ad = trunc nuw i64 %n.vec to i32
  %i.ae = shl nuw nsw i64 %n.vec, 2
  %i.af = getelementptr i8, ptr %i.ab, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ab, i64 %i.ag ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> splat (i32 1226833920), ptr %next.gep, align 4, !tbaa !6
  store <4 x i32> splat (i32 1226833920), ptr %i.ah, align 4, !tbaa !6
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !312

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ac
  br i1 %cmp.n, label %.lr.ph88.preheader, label %.lr.ph.preheader148

.lr.ph.preheader148:                              ; preds = %.lr.ph.preheader, %middle.block
  %.06284.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ad, %middle.block ]
  %.06383.ph = phi ptr [ %i.ab, %.lr.ph.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader148, %.lr.ph
  %.06284 = phi i32 [ %i.ak, %.lr.ph ], [ %.06284.ph, %.lr.ph.preheader148 ]
  %.06383 = phi ptr [ %i.aj, %.lr.ph ], [ %.06383.ph, %.lr.ph.preheader148 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.06383, i64 4
  store i32 1226833920, ptr %.06383, align 4, !tbaa !6
  %i.ak = add nuw i32 %.06284, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.ak, %i.m
  br i1 %exitcond.not, label %.lr.ph88.preheader, label %.lr.ph, !llvm.loop !313

.lr.ph88.preheader:                               ; preds = %.lr.ph, %middle.block
  %i.al = add nuw nsw i32 %i.o, 1
  %i.am = mul i32 %i.al, %i.m
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.an ; 3 uses
  %i.ap = zext i32 %i.m to i64                    ; 2 uses
  %min.iters.check123 = icmp ult i32 %i.m, 8
  br i1 %min.iters.check123, label %.lr.ph88.preheader147, label %vector.ph124

vector.ph124:                                     ; preds = %.lr.ph88.preheader
  %n.vec125 = and i64 %i.ap, 4294967288           ; 4 uses
  %i.aq = trunc nuw i64 %n.vec125 to i32
  %i.ar = shl nuw nsw i64 %n.vec125, 2
  %i.as = getelementptr i8, ptr %i.ao, i64 %i.ar
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph124
  %index127 = phi i64 [ 0, %vector.ph124 ], [ %index.next129, %vector.body126 ] ; 2 uses
  %i.at = shl i64 %index127, 2
  %next.gep128 = getelementptr i8, ptr %i.ao, i64 %i.at ; 2 uses
  %i.au = getelementptr i8, ptr %next.gep128, i64 16
  store <4 x i32> splat (i32 1226833920), ptr %next.gep128, align 4, !tbaa !6
  store <4 x i32> splat (i32 1226833920), ptr %i.au, align 4, !tbaa !6
  %index.next129 = add nuw i64 %index127, 8       ; 2 uses
  %i.av = icmp eq i64 %index.next129, %n.vec125
  br i1 %i.av, label %middle.block130, label %vector.body126, !llvm.loop !314

middle.block130:                                  ; preds = %vector.body126
  %cmp.n131 = icmp eq i64 %n.vec125, %i.ap
  br i1 %cmp.n131, label %._crit_edge89.thread, label %.lr.ph88.preheader147

.lr.ph88.preheader147:                            ; preds = %.lr.ph88.preheader, %middle.block130
  %.186.ph = phi i32 [ 0, %.lr.ph88.preheader ], [ %i.aq, %middle.block130 ]
  %.16485.ph = phi ptr [ %i.ao, %.lr.ph88.preheader ], [ %i.as, %middle.block130 ]
  br label %.lr.ph88

.lr.ph88:                                         ; preds = %.lr.ph88.preheader147, %.lr.ph88
  %.186 = phi i32 [ %i.ax, %.lr.ph88 ], [ %.186.ph, %.lr.ph88.preheader147 ]
  %.16485 = phi ptr [ %i.aw, %.lr.ph88 ], [ %.16485.ph, %.lr.ph88.preheader147 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.16485, i64 4
  store i32 1226833920, ptr %.16485, align 4, !tbaa !6
  %i.ax = add nuw i32 %.186, 1                    ; 2 uses
  %exitcond97.not = icmp eq i32 %i.ax, %i.m
  br i1 %exitcond97.not, label %._crit_edge89.thread, label %.lr.ph88, !llvm.loop !315

._crit_edge89.thread:                             ; preds = %.lr.ph88, %middle.block130
  %i.ay = and i32 %2, 3                           ; 3 uses
  %.not78114 = icmp eq i32 %i.ay, 0
  br i1 %.not78114, label %.loopexit, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %._crit_edge89.thread
  %switch.selectcmp116 = icmp eq i32 %i.ay, 2
  %switch.select117 = select i1 %switch.selectcmp116, i32 1207959552, i32 1073741824
  %switch.selectcmp81118 = icmp eq i32 %i.ay, 1
  %switch.select82119 = select i1 %switch.selectcmp81118, i32 1224736768, i32 %switch.select117 ; 2 uses
  %i.az = mul i32 %i.o, %i.m
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ba ; 3 uses
  %i.bc = zext i32 %i.m to i64                    ; 2 uses
  %min.iters.check135 = icmp ult i32 %i.m, 8
  br i1 %min.iters.check135, label %.lr.ph93.preheader146, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph93.preheader
  %n.vec137 = and i64 %i.bc, 4294967288           ; 4 uses
  %i.bd = trunc nuw i64 %n.vec137 to i32
  %i.be = shl nuw nsw i64 %n.vec137, 2
  %i.bf = getelementptr i8, ptr %i.bb, i64 %i.be
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %switch.select82119, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph136
  %index139 = phi i64 [ 0, %vector.ph136 ], [ %index.next141, %vector.body138 ] ; 2 uses
  %i.bg = shl i64 %index139, 2
  %next.gep140 = getelementptr i8, ptr %i.bb, i64 %i.bg ; 2 uses
  %i.bh = getelementptr i8, ptr %next.gep140, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep140, align 4, !tbaa !6
  store <4 x i32> %broadcast.splat, ptr %i.bh, align 4, !tbaa !6
  %index.next141 = add nuw i64 %index139, 8       ; 2 uses
  %i.bi = icmp eq i64 %index.next141, %n.vec137
  br i1 %i.bi, label %middle.block142, label %vector.body138, !llvm.loop !316

middle.block142:                                  ; preds = %vector.body138
  %cmp.n143 = icmp eq i64 %n.vec137, %i.bc
  br i1 %cmp.n143, label %.loopexit, label %.lr.ph93.preheader146

.lr.ph93.preheader146:                            ; preds = %.lr.ph93.preheader, %middle.block142
  %.291.ph = phi i32 [ 0, %.lr.ph93.preheader ], [ %i.bd, %middle.block142 ]
  %.26590.ph = phi ptr [ %i.bb, %.lr.ph93.preheader ], [ %i.bf, %middle.block142 ]
  br label %.lr.ph93

.lr.ph93:                                         ; preds = %.lr.ph93.preheader146, %.lr.ph93
  %.291 = phi i32 [ %i.bk, %.lr.ph93 ], [ %.291.ph, %.lr.ph93.preheader146 ]
  %.26590 = phi ptr [ %i.bj, %.lr.ph93 ], [ %.26590.ph, %.lr.ph93.preheader146 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.26590, i64 4
  store i32 %switch.select82119, ptr %.26590, align 4, !tbaa !6
  %i.bk = add nuw i32 %.291, 1                    ; 2 uses
  %exitcond98.not = icmp eq i32 %i.bk, %i.m
  br i1 %exitcond98.not, label %.loopexit, label %.lr.ph93, !llvm.loop !317

.loopexit:                                        ; preds = %.lr.ph93, %middle.block142, %bb.g, %._crit_edge89.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 %1, ptr %i.bl, align 8, !tbaa !78
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 %2, ptr %i.bm, align 4, !tbaa !79
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.b, %.loopexit
  %.270 = phi i32 [ 1, %.loopexit ], [ 0, %bb.b ], [ 0, %bb.f ]
  ret i32 %.270
}

declare void @opj_mqc_resetstates(ptr noundef) local_unnamed_addr #2

declare void @opj_mqc_setstate(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @opj_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @opj_mqc_raw_init_dec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @opj_mqc_init_dec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @opj_t1_dec_sigpass_mqc(ptr noundef nonnull %0, i32 noundef range(i32 1, 31) %1, i32 noundef %2) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !78   ; 18 uses
  %i.c = icmp eq i32 %i.b, 64
  br i1 %i.c, label %bb.b, label %bb.lt

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.e = load i32, ptr %i.d, align 4, !tbaa !79
  %i.f = icmp eq i32 %i.e, 64
  br i1 %i.f, label %bb.c, label %bb.lt

bb.c:                                             ; preds = %bb.b
  %i.g = and i32 %2, 8
  %.not11 = icmp eq i32 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 268 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !83   ; 2 uses
  %i.o = load i32, ptr %0, align 8, !tbaa !81     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !84   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !80   ; 2 uses
  %i.t = shl nuw nsw i32 1, %1                    ; 2 uses
  %i.u = lshr exact i32 %i.t, 1
  %i.v = or i32 %i.u, %i.t                        ; 9 uses
  %i.w = getelementptr i8, ptr %0, i64 200        ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 96 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 64 uses
  %i.aa = sub nsw i32 0, %i.v                     ; 8 uses
  br i1 %.not11, label %.preheader.i12, label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %bb.fk
  %.0621974.i = phi i32 [ %.66.i, %bb.fk ], [ %i.s, %bb.c ]
  %.0645973.i = phi i32 [ %.42687.i, %bb.fk ], [ %i.q, %bb.c ]
  %.0688972.i = phi i32 [ %.66754.i, %bb.fk ], [ %i.o, %bb.c ]
  %.0755971.i = phi ptr [ %.10765.i, %bb.fk ], [ %i.n, %bb.c ]
  %.0766970.i = phi ptr [ %i.zj, %bb.fk ], [ %i.l, %bb.c ]
  %.0769969.i = phi ptr [ %i.zi, %bb.fk ], [ %i.i, %bb.c ]
  %.0772968.i = phi i32 [ %i.zh, %bb.fk ], [ 0, %bb.c ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.fj, %.preheader.i
  %.1622967.i = phi i32 [ %.0621974.i, %.preheader.i ], [ %.66.i, %bb.fj ] ; 5 uses
  %.1646966.i = phi i32 [ %.0645973.i, %.preheader.i ], [ %.42687.i, %bb.fj ] ; 3 uses
  %.1689965.i = phi i32 [ %.0688972.i, %.preheader.i ], [ %.66754.i, %bb.fj ] ; 5 uses
  %.1756964.i = phi ptr [ %.0755971.i, %.preheader.i ], [ %.10765.i, %bb.fj ] ; 2 uses
  %.1767963.i = phi ptr [ %.0766970.i, %.preheader.i ], [ %i.zg, %bb.fj ] ; 15 uses
  %.1770962.i = phi ptr [ %.0769969.i, %.preheader.i ], [ %i.zf, %bb.fj ] ; 6 uses
  %.0774961.i = phi i32 [ 0, %.preheader.i ], [ %i.ze, %bb.fj ]
  %i.ab = load i32, ptr %.1767963.i, align 4, !tbaa !6 ; 9 uses
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %bb.fj, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = and i32 %i.ab, 2097168
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = and i32 %i.ab, 495                      ; 2 uses
  %.not841.i = icmp eq i32 %i.ae, 0
  %or.cond.i = or i1 %i.ad, %.not841.i
  br i1 %or.cond.i, label %bb.as, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val889.i = load ptr, ptr %i.w, align 8, !tbaa !75
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %.val889.i, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !43
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.ai ; 4 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !86 ; 6 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !88 ; 6 uses
  %i.am = sub i32 %.1646966.i, %i.al              ; 5 uses
  %i.an = lshr i32 %.1689965.i, 16
  %i.ao = icmp ult i32 %i.an, %i.al
  br i1 %i.ao, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp ult i32 %i.am, %i.al               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !89 ; 2 uses
  %.sink.i = select i1 %i.ap, i64 8, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sink.i
  %storemerge844.i = load ptr, ptr %i.as, align 8, !tbaa !86
  store ptr %storemerge844.i, ptr %i.aj, align 8, !tbaa !86
  br label %bb.h

bb.h:                                             ; preds = %bb.n, %bb.g
  %.2690.i = phi i32 [ %.1689965.i, %bb.g ], [ %i.bj, %bb.n ] ; 4 uses
  %.3648.i = phi i32 [ %i.al, %bb.g ], [ %i.bi, %bb.n ]
  %.2623.i = phi i32 [ %.1622967.i, %bb.g ], [ %i.bk, %bb.n ] ; 2 uses
  %i.at = icmp eq i32 %.2623.i, 0
  br i1 %i.at, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.au = load ptr, ptr %i.y, align 8, !tbaa !82  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !43  ; 2 uses
  %i.ax = zext i8 %i.aw to i32                    ; 2 uses
  %i.ay = load i8, ptr %i.au, align 1, !tbaa !43
  %i.az = icmp eq i8 %i.ay, -1
  br i1 %i.az, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ba = icmp ugt i8 %i.aw, -113
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bb = add i32 %.2690.i, 65280
  %i.bc = load i32, ptr %i.z, align 4, !tbaa !90
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.z, align 4, !tbaa !90
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  store ptr %i.av, ptr %i.y, align 8, !tbaa !82
  %i.be = shl nuw nsw i32 %i.ax, 9
  %i.bf = add i32 %i.be, %.2690.i
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  store ptr %i.av, ptr %i.y, align 8, !tbaa !82
  %i.bg = shl nuw nsw i32 %i.ax, 8
  %i.bh = add i32 %i.bg, %.2690.i
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.h
  %.4692.i = phi i32 [ %.2690.i, %bb.h ], [ %i.bb, %bb.k ], [ %i.bf, %bb.l ], [ %i.bh, %bb.m ]
  %.4625.i = phi i32 [ %.2623.i, %bb.h ], [ 8, %bb.k ], [ 7, %bb.l ], [ 8, %bb.m ]
  %i.bi = shl i32 %.3648.i, 1                     ; 3 uses
  %i.bj = shl i32 %.4692.i, 1                     ; 2 uses
  %i.bk = add i32 %.4625.i, -1                    ; 2 uses
  %i.bl = icmp ult i32 %i.bi, 32768
  br i1 %i.bl, label %bb.h, label %.loopexit912.i.loopexit, !llvm.loop !320

bb.o:                                             ; preds = %bb.f
  %i.bm = shl nuw i32 %i.al, 16
  %i.bn = sub i32 %.1689965.i, %i.bm              ; 2 uses
  %i.bo = and i32 %i.am, 32768
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.p, label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bq = icmp ult i32 %i.am, %i.al               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !89 ; 2 uses
  %.sink1136.i = select i1 %i.bq, i64 16, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.sink1136.i
  %storemerge.i = load ptr, ptr %i.bt, align 8, !tbaa !86
  store ptr %storemerge.i, ptr %i.aj, align 8, !tbaa !86
  br label %bb.q

bb.q:                                             ; preds = %bb.w, %bb.p
  %.5693.i = phi i32 [ %i.bn, %bb.p ], [ %i.ck, %bb.w ] ; 4 uses
  %.4649.i = phi i32 [ %i.am, %bb.p ], [ %i.cj, %bb.w ]
  %.5626.i = phi i32 [ %.1622967.i, %bb.p ], [ %i.cl, %bb.w ] ; 2 uses
end_hunk_0
