Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/util?download=true
inline.NumInlined: 40
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@phar_compress_filter:bb.a
    i16 8192, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  %i.d = select i1 %.not, ptr null, ptr @.str.23
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi ptr [ %i.d, %bb.c ], [ @.str.22, %bb.b ], [ @.str.21, %bb.a ]
  ret ptr %.0
}

; Function Attrs: allocsize(0,1)
declare noalias ptr @_ecalloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @phar_verify_signature(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr nofree noundef captures(none) %6, ptr nofree noundef writeonly captures(none) %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca [1024 x i8], align 16             ; 14 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca [64 x i8], align 16               ; 7 uses
  %9 = alloca %struct.PHP_SHA512_CTX, align 8     ; 6 uses
  %i.f = alloca [32 x i8], align 16               ; 8 uses
  %10 = alloca %struct.PHP_SHA256_CTX, align 4    ; 6 uses
  %i.g = alloca [20 x i8], align 16               ; 26 uses
  %11 = alloca %struct.PHP_SHA1_CTX, align 4      ; 6 uses
  %i.h = alloca [16 x i8], align 16               ; 21 uses
  %12 = alloca %struct.PHP_MD5_CTX, align 4       ; 6 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.i = tail call i32 @_php_stream_seek(ptr noundef %0, i64 noundef 0, i32 noundef 0) #15 ; 0 uses
  switch i32 %2, label %bb.bg [
    i32 18, label %bb.b
    i32 17, label %bb.b
    i32 16, label %bb.b
    i32 4, label %bb.u
    i32 3, label %bb.ae
    i32 2, label %bb.ao
    i32 1, label %bb.ax
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.j = tail call ptr @zend_hash_str_find(ptr noundef nonnull @module_registry, ptr noundef nonnull @.str.35, i64 noundef 7) #15
  %.not234 = icmp eq ptr %i.j, null
  br i1 %.not234, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not169 = icmp eq ptr %8, null
  br i1 %.not169, label %.critedge177, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %8, i64 noundef 0, ptr noundef nonnull @.str.36) #15 ; 0 uses
  br label %.critedge177

bb.e:                                             ; preds = %bb.b
  %i.l = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.d, i64 noundef 0, ptr noundef nonnull @.str.37, ptr noundef %5) #15 ; 0 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !23
  %i.n = call ptr @_php_stream_open_wrapper_ex(ptr noundef %i.m, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef null, ptr noundef null) #15 ; 4 uses
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !23
  call void @_efree(ptr noundef %i.o) #15
  %.not170 = icmp eq ptr %i.n, null
  br i1 %.not170, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = call ptr @_php_stream_copy_to_mem(ptr noundef nonnull %i.n, i64 noundef -1, i1 noundef zeroext false) #15 ; 10 uses
  %.not171 = icmp eq ptr %i.p, null
  br i1 %.not171, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !30
  %.not172 = icmp eq i64 %i.r, 0
  br i1 %.not172, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.s = call i32 @_php_stream_free(ptr noundef nonnull %i.n, i32 noundef 3) #15 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.h
  %.not173 = icmp eq ptr %8, null
  br i1 %.not173, label %.critedge177, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.t = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %8, i64 noundef 0, ptr noundef nonnull @.str.38) #15 ; 0 uses
  br label %.critedge177

bb.j:                                             ; preds = %bb.g
  %i.u = call i32 @_php_stream_free(ptr noundef nonnull %i.n, i32 noundef 3) #15 ; 0 uses
  store i64 %4, ptr %i.c, align 8, !tbaa !56
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.w = load i64, ptr %i.q, align 8, !tbaa !30
  %i.x = call fastcc i32 @phar_call_openssl_signverify(i1 noundef zeroext false, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.v, i64 noundef %i.w, ptr noundef %i.a, ptr noundef %i.c, i32 noundef %2)
  %i.y = icmp eq i32 %i.x, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !24
  %i.ab = and i32 %i.aa, 64
  %.not.i192 = icmp eq i32 %i.ab, 0               ; 2 uses
  br i1 %i.y, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  br i1 %.not.i192, label %bb.l, label %zend_string_release_ex.exit193

bb.l:                                             ; preds = %bb.k
  %i.ac = load i32, ptr %i.p, align 8, !tbaa !26  ; 2 uses
  %i.ad = icmp ne i32 %i.ac, 0
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add i32 %i.ac, -1                       ; 2 uses
  store i32 %i.ae, ptr %i.p, align 8, !tbaa !26
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.m, label %zend_string_release_ex.exit193

bb.m:                                             ; preds = %bb.l
  call void @_efree(ptr noundef nonnull %i.p) #15
  br label %zend_string_release_ex.exit193

zend_string_release_ex.exit193:                   ; preds = %bb.k, %bb.l, %bb.m
  %.not174 = icmp eq ptr %8, null
  br i1 %.not174, label %.critedge177, label %bb.n

bb.n:                                             ; preds = %zend_string_release_ex.exit193
  %i.ag = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %8, i64 noundef 0, ptr noundef nonnull @.str.39) #15 ; 0 uses
  br label %.critedge177

bb.o:                                             ; preds = %bb.j
  br i1 %.not.i192, label %bb.p, label %zend_string_release_ex.exit

bb.p:                                             ; preds = %bb.o
  %i.ah = load i32, ptr %i.p, align 8, !tbaa !26  ; 2 uses
  %i.ai = icmp ne i32 %i.ah, 0
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add i32 %i.ah, -1                       ; 2 uses
  store i32 %i.aj, ptr %i.p, align 8, !tbaa !26
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.q, label %zend_string_release_ex.exit

bb.q:                                             ; preds = %bb.p
  call void @_efree(ptr noundef nonnull %i.p) #15
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.o, %bb.p, %bb.q
  %i.al = load i64, ptr %i.c, align 8, !tbaa !56  ; 7 uses
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !23  ; 3 uses
  %i.an = load i8, ptr getelementptr inbounds nuw (i8, ptr @phar_globals, i64 194), align 2, !tbaa !114, !range !73, !noundef !32
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.r, label %bb.s

bb.r:                                             ; preds = %zend_string_release_ex.exit
  %i.ap = call noalias ptr @_safe_malloc(i64 noundef %i.al, i64 noundef 2, i64 noundef 1) #15
  br label %bb.t

bb.s:                                             ; preds = %zend_string_release_ex.exit
  %i.aq = call noalias ptr @_safe_emalloc(i64 noundef %i.al, i64 noundef 2, i64 noundef 1) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ar = phi ptr [ %i.ap, %bb.r ], [ %i.aq, %bb.s ] ; 2 uses
  store ptr %i.ar, ptr %6, align 8, !tbaa !23
  %.not.i194 = icmp eq i64 %i.al, 0
  br i1 %.not.i194, label %phar_hex_str.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.t
  %xtraiter = and i64 %i.al, 1
  %i.as = icmp eq i64 %i.al, 1
  br i1 %i.as, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.al, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ -1, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.018.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.ca, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 %.018.i ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !24
  %i.av = lshr i8 %i.au, 4
  %i.aw = zext nneg i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !24
  %i.az = load ptr, ptr %6, align 8, !tbaa !23
  %i.ba = getelementptr i8, ptr %i.az, i64 %indvars.iv.i
  %i.bb = getelementptr i8, ptr %i.ba, i64 1
  store i8 %i.ay, ptr %i.bb, align 1, !tbaa !24
  %i.bc = load i8, ptr %i.at, align 1, !tbaa !24
  %i.bd = and i8 %i.bc, 15
  %i.be = zext nneg i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !24
  %i.bh = load ptr, ptr %6, align 8, !tbaa !23
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv.next.i
  store i8 %i.bg, ptr %i.bi, align 1, !tbaa !24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.am, i64 %.018.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !24
  %i.bm = lshr i8 %i.bl, 4
  %i.bn = zext nneg i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !24
  %i.bq = load ptr, ptr %6, align 8, !tbaa !23
  %i.br = getelementptr i8, ptr %i.bq, i64 %indvars.iv.next.i
  %i.bs = getelementptr i8, ptr %i.br, i64 1
  store i8 %i.bp, ptr %i.bs, align 1, !tbaa !24
  %i.bt = load i8, ptr %i.bk, align 1, !tbaa !24
  %i.bu = and i8 %i.bt, 15
  %i.bv = zext nneg i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !24
  %i.by = load ptr, ptr %6, align 8, !tbaa !23
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 4 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %indvars.iv.next.i.1
  store i8 %i.bx, ptr %i.bz, align 1, !tbaa !24
  %i.ca = add nuw i64 %.018.i, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !115

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ -1, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.018.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.ca, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod265 = trunc i64 %i.al to i1
  call void @llvm.assume(i1 %lcmp.mod265)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.am, i64 %.018.i.epil.init ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !24
  %i.cd = lshr i8 %i.cc, 4
  %i.ce = zext nneg i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !24
  %i.ch = load ptr, ptr %6, align 8, !tbaa !23
  %i.ci = getelementptr i8, ptr %i.ch, i64 %indvars.iv.i.epil.init
  %i.cj = getelementptr i8, ptr %i.ci, i64 1
  store i8 %i.cg, ptr %i.cj, align 1, !tbaa !24
  %i.ck = load i8, ptr %i.cb, align 1, !tbaa !24
  %i.cl = and i8 %i.ck, 15
  %i.cm = zext nneg i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !24
  %i.cp = load ptr, ptr %6, align 8, !tbaa !23
  %indvars.iv.next.i.epil = add nsw i64 %indvars.iv.i.epil.init, 2 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %indvars.iv.next.i.epil
  store i8 %i.co, ptr %i.cq, align 1, !tbaa !24
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.next.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil.preheader ]
  %13 = trunc nuw nsw i64 %indvars.iv.i.lcssa to i32
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !23
  %14 = add nsw i32 %13, 1
  br label %phar_hex_str.exit

phar_hex_str.exit:                                ; preds = %bb.t, %._crit_edge.loopexit.i
  %i.cr = phi ptr [ %i.ar, %bb.t ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.016.lcssa.i = phi i32 [ 0, %bb.t ], [ %14, %._crit_edge.loopexit.i ] ; 2 uses
  %15 = zext nneg i32 %.016.lcssa.i to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %15
  store i8 0, ptr %i.cs, align 1, !tbaa !24
  %16 = sext i32 %.016.lcssa.i to i64
  store i64 %16, ptr %7, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.bi

bb.u:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.ct = icmp ult i64 %4, 64
  br i1 %i.ct, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %.not168 = icmp eq ptr %8, null
  br i1 %.not168, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = tail call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %8, i64 noundef 0, ptr noundef nonnull @.str.40) #15 ; 0 uses
  br label %bb.ad

bb.x:                                             ; preds = %bb.u
  call void @PHP_SHA512InitArgs(ptr noundef nonnull %9, ptr noundef null) #15
  %. = call i64 @llvm.umin.i64(i64 %1, i64 1024)  ; 2 uses
  %i.cv = call i64 @_php_stream_read(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %.) #15 ; 2 uses
  %.not164251 = icmp eq i64 %i.cv, 0
  br i1 %.not164251, label %._crit_edge256, label %.lr.ph255

.lr.ph255:                                        ; preds = %bb.x, %.lr.ph255
  %i.cw = phi i64 [ %i.cy, %.lr.ph255 ], [ %i.cv, %bb.x ] ; 2 uses
  %.0109253 = phi i64 [ %i.cx, %.lr.ph255 ], [ %1, %bb.x ]
  %.1114252 = phi i64 [ %spec.select, %.lr.ph255 ], [ %., %bb.x ]
  call void @PHP_SHA512Update(ptr noundef nonnull %9, ptr noundef nonnull %i.b, i64 noundef %i.cw) #15
  %i.cx = sub nsw i64 %.0109253, %i.cw            ; 2 uses
  %spec.select = call i64 @llvm.umin.i64(i64 %i.cx, i64 %.1114252) ; 2 uses
  %i.cy = call i64 @_php_stream_read(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %spec.select) #15 ; 2 uses
  %.not164 = icmp eq i64 %i.cy, 0
  br i1 %.not164, label %._crit_edge256, label %.lr.ph255, !llvm.loop !116

._crit_edge256:                                   ; preds = %.lr.ph255, %bb.x
  call void @PHP_SHA512Final(ptr noundef nonnull %i.e, ptr noundef nonnull %9) #15
  %bcmp165 = call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %i.e, ptr noundef nonnull dereferenceable(64) %3, i64 64)
  %.not166 = icmp eq i32 %bcmp165, 0
  br i1 %.not166, label %.critedge179, label %bb.y

bb.y:                                             ; preds = %._crit_edge256
  %.not167 = icmp eq ptr %8, null
  br i1 %.not167, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cz = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %8, i64 noundef 0, ptr noundef nonnull @.str.40) #15 ; 0 uses
  br label %bb.ad

.critedge179:                                     ; preds = %._crit_edge256
  %i.da = load i8, ptr getelementptr inbounds nuw (i8, ptr @phar_globals, i64 194), align 2, !tbaa !114, !range !73, !noundef !32
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.critedge179
  %i.dc = call noalias ptr @_safe_malloc(i64 noundef 64, i64 noundef 2, i64 noundef 1) #15
  br label %bb.ac

bb.ab:                                            ; preds = %.critedge179
  %i.dd = call noalias ptr @_safe_emalloc(i64 noundef 64, i64 noundef 2, i64 noundef 1) #15
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.de = phi ptr [ %i.dc, %bb.aa ], [ %i.dd, %bb.ab ]
  store ptr %i.de, ptr %6, align 8, !tbaa !23
  br label %.lr.ph.i195

.lr.ph.i195:                                      ; preds = %.lr.ph.i195, %bb.ac
  %indvars.iv.i196 = phi i64 [ -1, %bb.ac ], [ %indvars.iv.next.i198.1, %.lr.ph.i195 ] ; 3 uses
  %.018.i197 = phi i64 [ 0, %bb.ac ], [ %i.em, %.lr.ph.i195 ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 %.018.i197 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 2, !tbaa !24
  %i.dh = lshr i8 %i.dg, 4
  %i.di = zext nneg i8 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !24
  %i.dl = load ptr, ptr %6, align 8, !tbaa !23
  %i.dm = getelementptr i8, ptr %i.dl, i64 %indvars.iv.i196
  %i.dn = getelementptr i8, ptr %i.dm, i64 1
  store i8 %i.dk, ptr %i.dn, align 1, !tbaa !24
  %i.do = load i8, ptr %i.df, align 2, !tbaa !24
  %i.dp = and i8 %i.do, 15
  %i.dq = zext nneg i8 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !24
  %i.dt = load ptr, ptr %6, align 8, !tbaa !23
  %indvars.iv.next.i198 = add nsw i64 %indvars.iv.i196, 2 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv.next.i198
  store i8 %i.ds, ptr %i.du, align 1, !tbaa !24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 %.018.i197
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 1 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !24
  %i.dy = lshr i8 %i.dx, 4
  %i.dz = zext nneg i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !24
  %i.ec = load ptr, ptr %6, align 8, !tbaa !23
  %i.ed = getelementptr i8, ptr %i.ec, i64 %indvars.iv.next.i198
  %i.ee = getelementptr i8, ptr %i.ed, i64 1
  store i8 %i.eb, ptr %i.ee, align 1, !tbaa !24
  %i.ef = load i8, ptr %i.dw, align 1, !tbaa !24
  %i.eg = and i8 %i.ef, 15
  %i.eh = zext nneg i8 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !24
  %i.ek = load ptr, ptr %6, align 8, !tbaa !23
  %indvars.iv.next.i198.1 = add nsw i64 %indvars.iv.i196, 4 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 %indvars.iv.next.i198.1
  store i8 %i.ej, ptr %i.el, align 1, !tbaa !24
  %i.em = add nuw nsw i64 %.018.i197, 2           ; 2 uses
  %exitcond.not.i199.1 = icmp eq i64 %i.em, 64
  br i1 %exitcond.not.i199.1, label %phar_hex_str.exit203, label %.lr.ph.i195, !llvm.loop !115

phar_hex_str.exit203:                             ; preds = %.lr.ph.i195
  %.pre.i201 = load ptr, ptr %6, align 8, !tbaa !23
  %i.en = getelementptr inbounds nuw i8, ptr %.pre.i201, i64 128
  store i8 0, ptr %i.en, align 1, !tbaa !24
  store i64 128, ptr %7, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  br label %bb.bi

bb.ad:                                            ; preds = %bb.y, %bb.z, %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  br label %bb.bi

bb.ae:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.eo = icmp ult i64 %4, 32
  br i1 %i.eo, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %.not163 = icmp eq ptr %8, null
  br i1 %.not163, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ep = tail call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %8, i64 noundef 0, ptr noundef nonnull @.str.40) #15 ; 0 uses
  br label %bb.an

bb.ah:                                            ; preds = %bb.ae
  call void @PHP_SHA256InitArgs(ptr noundef nonnull %10, ptr noundef null) #15
  %.180 = call i64 @llvm.umin.i64(i64 %1, i64 1024) ; 2 uses
  %i.eq = call i64 @_php_stream_read(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %.180) #15 ; 2 uses
  %.not159245 = icmp eq i64 %i.eq, 0
  br i1 %.not159245, label %._crit_edge250, label %.lr.ph249

.lr.ph249:                                        ; preds = %bb.ah, %.lr.ph249
  %i.er = phi i64 [ %i.et, %.lr.ph249 ], [ %i.eq, %bb.ah ] ; 2 uses
  %.1110247 = phi i64 [ %i.es, %.lr.ph249 ], [ %1, %bb.ah ]
  %.4117246 = phi i64 [ %spec.select181, %.lr.ph249 ], [ %.180, %bb.ah ]
  call void @PHP_SHA256Update(ptr noundef nonnull %10, ptr noundef nonnull %i.b, i64 noundef %i.er) #15
  %i.es = sub nsw i64 %.1110247, %i.er            ; 2 uses
  %spec.select181 = call i64 @llvm.umin.i64(i64 %i.es, i64 %.4117246) ; 2 uses
  %i.et = call i64 @_php_stream_read(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %spec.select181) #15 ; 2 uses
  %.not159 = icmp eq i64 %i.et, 0
  br i1 %.not159, label %._crit_edge250, label %.lr.ph249, !llvm.loop !117

._crit_edge250:                                   ; preds = %.lr.ph249, %bb.ah
  call void @PHP_SHA256Final(ptr noundef nonnull %i.f, ptr noundef nonnull %10) #15
  %i.eu = load i128, ptr %i.f, align 16
  %i.ev = load i128, ptr %3, align 1
  %i.ew = xor i128 %i.eu, %i.ev
  %i.ex = getelementptr i8, ptr %i.f, i64 16
  %i.ey = getelementptr i8, ptr %3, i64 16
  %i.ez = load i128, ptr %i.ex, align 16
  %i.fa = load i128, ptr %i.ey, align 1
  %i.fb = xor i128 %i.ez, %i.fa
  %i.fc = or i128 %i.ew, %i.fb
  %i.fd = icmp ne i128 %i.fc, 0
  %i.fe = zext i1 %i.fd to i32
  %.not161 = icmp eq i32 %i.fe, 0
  br i1 %.not161, label %.critedge183, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge250
  %.not162 = icmp eq ptr %8, null
  br i1 %.not162, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ff = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %8, i64 noundef 0, ptr noundef nonnull @.str.40) #15 ; 0 uses
  br label %bb.an

.critedge183:                                     ; preds = %._crit_edge250
  %i.fg = load i8, ptr getelementptr inbounds nuw (i8, ptr @phar_globals, i64 194), align 2, !tbaa !114, !range !73, !noundef !32
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.critedge183
  %i.fi = call noalias ptr @_safe_malloc(i64 noundef 32, i64 noundef 2, i64 noundef 1) #15
  br label %bb.am

bb.al:                                            ; preds = %.critedge183
  %i.fj = call noalias ptr @_safe_emalloc(i64 noundef 32, i64 noundef 2, i64 noundef 1) #15
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fk = phi ptr [ %i.fi, %bb.ak ], [ %i.fj, %bb.al ]
  store ptr %i.fk, ptr %6, align 8, !tbaa !23
  br label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %.lr.ph.i204, %bb.am
  %indvars.iv.i205 = phi i64 [ -1, %bb.am ], [ %indvars.iv.next.i207.1, %.lr.ph.i204 ] ; 3 uses
  %.018.i206 = phi i64 [ 0, %bb.am ], [ %i.gs, %.lr.ph.i204 ] ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 %.018.i206 ; 2 uses
  %i.fm = load i8, ptr %i.fl, align 2, !tbaa !24
  %i.fn = lshr i8 %i.fm, 4
  %i.fo = zext nneg i8 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !24
  %i.fr = load ptr, ptr %6, align 8, !tbaa !23
  %i.fs = getelementptr i8, ptr %i.fr, i64 %indvars.iv.i205
  %i.ft = getelementptr i8, ptr %i.fs, i64 1
  store i8 %i.fq, ptr %i.ft, align 1, !tbaa !24
  %i.fu = load i8, ptr %i.fl, align 2, !tbaa !24
  %i.fv = and i8 %i.fu, 15
  %i.fw = zext nneg i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !24
  %i.fz = load ptr, ptr %6, align 8, !tbaa !23
  %indvars.iv.next.i207 = add nsw i64 %indvars.iv.i205, 2 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %indvars.iv.next.i207
  store i8 %i.fy, ptr %i.ga, align 1, !tbaa !24
  %i.gb = getelementptr inbounds nuw i8, ptr %i.f, i64 %.018.i206
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1 ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !24
  %i.ge = lshr i8 %i.gd, 4
  %i.gf = zext nneg i8 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !24
  %i.gi = load ptr, ptr %6, align 8, !tbaa !23
  %i.gj = getelementptr i8, ptr %i.gi, i64 %indvars.iv.next.i207
  %i.gk = getelementptr i8, ptr %i.gj, i64 1
  store i8 %i.gh, ptr %i.gk, align 1, !tbaa !24
  %i.gl = load i8, ptr %i.gc, align 1, !tbaa !24
  %i.gm = and i8 %i.gl, 15
  %i.gn = zext nneg i8 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !24
  %i.gq = load ptr, ptr %6, align 8, !tbaa !23
  %indvars.iv.next.i207.1 = add nsw i64 %indvars.iv.i205, 4 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv.next.i207.1
  store i8 %i.gp, ptr %i.gr, align 1, !tbaa !24
  %i.gs = add nuw nsw i64 %.018.i206, 2           ; 2 uses
  %exitcond.not.i208.1 = icmp eq i64 %i.gs, 32
  br i1 %exitcond.not.i208.1, label %phar_hex_str.exit212, label %.lr.ph.i204, !llvm.loop !115

phar_hex_str.exit212:                             ; preds = %.lr.ph.i204
  %.pre.i210 = load ptr, ptr %6, align 8, !tbaa !23
  %i.gt = getelementptr inbounds nuw i8, ptr %.pre.i210, i64 64
  store i8 0, ptr %i.gt, align 1, !tbaa !24
  store i64 64, ptr %7, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  br label %bb.bi

bb.an:                                            ; preds = %bb.ai, %bb.aj, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  br label %bb.bi

bb.ao:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.gu = icmp ult i64 %4, 20
  br i1 %i.gu, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %.not158 = icmp eq ptr %8, null
  br i1 %.not158, label %bb.aw, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gv = tail call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %8, i64 noundef 0, ptr noundef nonnull @.str.40) #15 ; 0 uses
  br label %bb.aw

bb.ar:                                            ; preds = %bb.ao
  call void @PHP_SHA1InitArgs(ptr noundef nonnull %11, ptr noundef null) #15
  %.184 = call i64 @llvm.umin.i64(i64 %1, i64 1024) ; 2 uses
  %i.gw = call i64 @_php_stream_read(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %.184) #15 ; 2 uses
  %.not154239 = icmp eq i64 %i.gw, 0
  br i1 %.not154239, label %._crit_edge244, label %.lr.ph243

.lr.ph243:                                        ; preds = %bb.ar, %.lr.ph243
  %i.gx = phi i64 [ %i.gz, %.lr.ph243 ], [ %i.gw, %bb.ar ] ; 2 uses
  %.2111241 = phi i64 [ %i.gy, %.lr.ph243 ], [ %1, %bb.ar ]
  %.7240 = phi i64 [ %spec.select185, %.lr.ph243 ], [ %.184, %bb.ar ]
  call void @PHP_SHA1Update(ptr noundef nonnull %11, ptr noundef nonnull %i.b, i64 noundef %i.gx) #15
  %i.gy = sub nsw i64 %.2111241, %i.gx            ; 2 uses
  %spec.select185 = call i64 @llvm.umin.i64(i64 %i.gy, i64 %.7240) ; 2 uses
  %i.gz = call i64 @_php_stream_read(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %spec.select185) #15 ; 2 uses
  %.not154 = icmp eq i64 %i.gz, 0
  br i1 %.not154, label %._crit_edge244, label %.lr.ph243, !llvm.loop !118

._crit_edge244:                                   ; preds = %.lr.ph243, %bb.ar
  call void @PHP_SHA1Final(ptr noundef nonnull %i.g, ptr noundef nonnull %11) #15
  %i.ha = load i128, ptr %i.g, align 16
  %i.hb = load i128, ptr %3, align 1
  %i.hc = xor i128 %i.ha, %i.hb
  %i.hd = getelementptr i8, ptr %i.g, i64 16
  %i.he = getelementptr i8, ptr %3, i64 16
  %i.hf = load i32, ptr %i.hd, align 16
  %i.hg = load i32, ptr %i.he, align 1
  %i.hh = zext i32 %i.hf to i128
  %i.hi = zext i32 %i.hg to i128
  %i.hj = xor i128 %i.hh, %i.hi
  %i.hk = or i128 %i.hc, %i.hj
  %i.hl = icmp ne i128 %i.hk, 0
  %i.hm = zext i1 %i.hl to i32
  %.not156 = icmp eq i32 %i.hm, 0
  br i1 %.not156, label %.critedge187, label %bb.as

bb.as:                                            ; preds = %._crit_edge244
  %.not157 = icmp eq ptr %8, null
  br i1 %.not157, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.hn = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %8, i64 noundef 0, ptr noundef nonnull @.str.40) #15 ; 0 uses
  br label %bb.aw

.critedge187:                                     ; preds = %._crit_edge244
  %i.ho = load i8, ptr getelementptr inbounds nuw (i8, ptr @phar_globals, i64 194), align 2, !tbaa !114, !range !73, !noundef !32
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.critedge187
  %i.hq = call noalias ptr @_safe_malloc(i64 noundef 20, i64 noundef 2, i64 noundef 1) #15
  br label %.lr.ph.i213

bb.av:                                            ; preds = %.critedge187
  %i.hr = call noalias ptr @_safe_emalloc(i64 noundef 20, i64 noundef 2, i64 noundef 1) #15
  br label %.lr.ph.i213

.lr.ph.i213:                                      ; preds = %bb.av, %bb.au
  %i.hs = phi ptr [ %i.hq, %bb.au ], [ %i.hr, %bb.av ] ; 15 uses
  store ptr %i.hs, ptr %6, align 8, !tbaa !23
  %i.ht = load i8, ptr %i.g, align 16, !tbaa !24  ; 2 uses
  %i.hu = lshr i8 %i.ht, 4
  %i.hv = zext nneg i8 %i.hu to i64
  %i.hw = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !24
  store i8 %i.hx, ptr %i.hs, align 1, !tbaa !24
  %i.hy = and i8 %i.ht, 15
  %i.hz = zext nneg i8 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !24
  %i.ic = getelementptr i8, ptr %i.hs, i64 1
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !24
  %i.id = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !24  ; 2 uses
  %i.if = lshr i8 %i.ie, 4
  %i.ig = zext nneg i8 %i.if to i64
  %i.ih = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !24
  %i.ij = getelementptr i8, ptr %i.hs, i64 2
  store i8 %i.ii, ptr %i.ij, align 1, !tbaa !24
  %i.ik = and i8 %i.ie, 15
  %i.il = zext nneg i8 %i.ik to i64
  %i.im = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.il
  %i.in = load i8, ptr %i.im, align 1, !tbaa !24
  %i.io = getelementptr i8, ptr %i.hs, i64 3
  store i8 %i.in, ptr %i.io, align 1, !tbaa !24
  %i.ip = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.iq = load i8, ptr %i.ip, align 2, !tbaa !24  ; 2 uses
  %i.ir = lshr i8 %i.iq, 4
  %i.is = zext nneg i8 %i.ir to i64
  %i.it = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.is
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !24
  %i.iv = getelementptr i8, ptr %i.hs, i64 4
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !24
  %i.iw = and i8 %i.iq, 15
  %i.ix = zext nneg i8 %i.iw to i64
  %i.iy = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.ix
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !24
  %i.ja = getelementptr i8, ptr %i.hs, i64 5
  store i8 %i.iz, ptr %i.ja, align 1, !tbaa !24
  %i.jb = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !24  ; 2 uses
  %i.jd = lshr i8 %i.jc, 4
  %i.je = zext nneg i8 %i.jd to i64
  %i.jf = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !24
  %i.jh = getelementptr i8, ptr %i.hs, i64 6
  store i8 %i.jg, ptr %i.jh, align 1, !tbaa !24
  %i.ji = and i8 %i.jc, 15
  %i.jj = zext nneg i8 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.jj
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !24
  %i.jm = getelementptr i8, ptr %i.hs, i64 7
  store i8 %i.jl, ptr %i.jm, align 1, !tbaa !24
  %i.jn = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.jo = load i8, ptr %i.jn, align 4, !tbaa !24  ; 2 uses
  %i.jp = lshr i8 %i.jo, 4
  %i.jq = zext nneg i8 %i.jp to i64
  %i.jr = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !24
  %i.jt = getelementptr i8, ptr %i.hs, i64 8
  store i8 %i.js, ptr %i.jt, align 1, !tbaa !24
  %i.ju = and i8 %i.jo, 15
  %i.jv = zext nneg i8 %i.ju to i64
  %i.jw = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.jv
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !24
  %i.jy = getelementptr i8, ptr %i.hs, i64 9
  store i8 %i.jx, ptr %i.jy, align 1, !tbaa !24
  %i.jz = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !24  ; 2 uses
  %i.kb = lshr i8 %i.ka, 4
  %i.kc = zext nneg i8 %i.kb to i64
  %i.kd = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !24
  %i.kf = getelementptr i8, ptr %i.hs, i64 10
  store i8 %i.ke, ptr %i.kf, align 1, !tbaa !24
  %i.kg = and i8 %i.ka, 15
  %i.kh = zext nneg i8 %i.kg to i64
  %i.ki = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.kh
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !24
  %i.kk = getelementptr i8, ptr %i.hs, i64 11
  store i8 %i.kj, ptr %i.kk, align 1, !tbaa !24
  %i.kl = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %i.km = load i8, ptr %i.kl, align 2, !tbaa !24  ; 2 uses
  %i.kn = lshr i8 %i.km, 4
  %i.ko = zext nneg i8 %i.kn to i64
  %i.kp = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.ko
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !24
  %i.kr = getelementptr i8, ptr %i.hs, i64 12
  store i8 %i.kq, ptr %i.kr, align 1, !tbaa !24
  %i.ks = and i8 %i.km, 15
  %i.kt = zext nneg i8 %i.ks to i64
  %i.ku = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.kt
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !24
  %i.kw = getelementptr inbounds nuw i8, ptr %i.hs, i64 13
  store i8 %i.kv, ptr %i.kw, align 1, !tbaa !24
  %i.kx = getelementptr inbounds nuw i8, ptr %i.g, i64 7 ; 2 uses
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !24
  %i.kz = lshr i8 %i.ky, 4
  %i.la = zext nneg i8 %i.kz to i64
  %i.lb = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.la
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !24
  %i.ld = load ptr, ptr %6, align 8, !tbaa !23
  %i.le = getelementptr i8, ptr %i.ld, i64 14
  store i8 %i.lc, ptr %i.le, align 1, !tbaa !24
  %i.lf = load i8, ptr %i.kx, align 1, !tbaa !24
  %i.lg = and i8 %i.lf, 15
end_hunk_0
begin_hunk_1_@phar_create_signature:bb.a
  %i.l = load i32, ptr %i.k, align 4, !tbaa !136
  switch i32 %i.l, label %bb.e [
    i32 4, label %bb.d
    i32 3, label %bb.f
    i32 18, label %bb.g
    i32 17, label %bb.g
    i32 16, label %bb.g
    i32 2, label %bb.k
    i32 1, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @PHP_SHA512InitArgs(ptr noundef nonnull %5, ptr noundef null) #15
  %i.m = call i64 @_php_stream_read(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef 1024) #15 ; 2 uses
  %.not4754 = icmp eq i64 %i.m, 0
  br i1 %.not4754, label %._crit_edge57, label %.lr.ph56

.lr.ph56:                                         ; preds = %bb.d, %.lr.ph56
  %i.n = phi i64 [ %i.o, %.lr.ph56 ], [ %i.m, %bb.d ]
  call void @PHP_SHA512Update(ptr noundef nonnull %5, ptr noundef nonnull %i.a, i64 noundef %i.n) #15
  %i.o = call i64 @_php_stream_read(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef 1024) #15 ; 2 uses
  %.not47 = icmp eq i64 %i.o, 0
  br i1 %.not47, label %._crit_edge57, label %.lr.ph56, !llvm.loop !137

._crit_edge57:                                    ; preds = %.lr.ph56, %bb.d
  call void @PHP_SHA512Final(ptr noundef nonnull %i.b, ptr noundef nonnull %5) #15
  %i.p = call noalias ptr @_estrndup(ptr noundef nonnull %i.b, i64 noundef 64) #15 ; 2 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !23
  store i64 64, ptr %3, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  store i32 3, ptr %i.k, align 4, !tbaa !136
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @PHP_SHA256InitArgs(ptr noundef nonnull %6, ptr noundef null) #15
  %i.q = call i64 @_php_stream_read(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef 1024) #15 ; 2 uses
  %.not4858 = icmp eq i64 %i.q, 0
  br i1 %.not4858, label %._crit_edge61, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.f, %.lr.ph60
  %i.r = phi i64 [ %i.s, %.lr.ph60 ], [ %i.q, %bb.f ]
  call void @PHP_SHA256Update(ptr noundef nonnull %6, ptr noundef nonnull %i.a, i64 noundef %i.r) #15
  %i.s = call i64 @_php_stream_read(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef 1024) #15 ; 2 uses
  %.not48 = icmp eq i64 %i.s, 0
  br i1 %.not48, label %._crit_edge61, label %.lr.ph60, !llvm.loop !138

._crit_edge61:                                    ; preds = %.lr.ph60, %bb.f
  call void @PHP_SHA256Final(ptr noundef nonnull %i.c, ptr noundef nonnull %6) #15
  %i.t = call noalias ptr @_estrndup(ptr noundef nonnull %i.c, i64 noundef 32) #15 ; 2 uses
  store ptr %i.t, ptr %2, align 8, !tbaa !23
  store i64 32, ptr %3, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.m

bb.g:                                             ; preds = %bb.c, %bb.c, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store ptr null, ptr %i.d, align 8, !tbaa !23
  store i64 0, ptr %i.e, align 8, !tbaa !56
  %i.u = tail call i32 @_php_stream_seek(ptr noundef %1, i64 noundef 0, i32 noundef 2) #15 ; 0 uses
  %i.v = tail call i64 @_php_stream_tell(ptr noundef %1) #15
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @phar_globals, i64 400), align 8, !tbaa !139
  %i.x = load i32, ptr getelementptr inbounds nuw (i8, ptr @phar_globals, i64 408), align 8, !tbaa !140
  %i.y = zext i32 %i.x to i64
  %i.z = load i32, ptr %i.k, align 4, !tbaa !136
  %i.aa = call fastcc i32 @phar_call_openssl_signverify(i1 noundef zeroext true, ptr noundef %1, i64 noundef %i.v, ptr noundef %i.w, i64 noundef %i.y, ptr noundef %i.d, ptr noundef %i.e, i32 noundef %i.z)
  %.not46 = icmp eq i32 %i.aa, -1
  br i1 %.not46, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not45 = icmp eq ptr %4, null
  br i1 %.not45, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %0, align 8, !tbaa !46
  %i.ac = tail call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %4, i64 noundef 0, ptr noundef nonnull @.str.42, ptr noundef %i.ab) #15 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !23  ; 2 uses
  store ptr %i.ad, ptr %2, align 8, !tbaa !23
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !56  ; 2 uses
  store i64 %i.ae, ptr %3, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %bb.m

bb.k:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @PHP_SHA1InitArgs(ptr noundef nonnull %7, ptr noundef null) #15
  %i.af = call i64 @_php_stream_read(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef 1024) #15 ; 2 uses
  %.not4450 = icmp eq i64 %i.af, 0
  br i1 %.not4450, label %._crit_edge53, label %.lr.ph52

.lr.ph52:                                         ; preds = %bb.k, %.lr.ph52
  %i.ag = phi i64 [ %i.ah, %.lr.ph52 ], [ %i.af, %bb.k ]
  call void @PHP_SHA1Update(ptr noundef nonnull %7, ptr noundef nonnull %i.a, i64 noundef %i.ag) #15
  %i.ah = call i64 @_php_stream_read(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef 1024) #15 ; 2 uses
  %.not44 = icmp eq i64 %i.ah, 0
  br i1 %.not44, label %._crit_edge53, label %.lr.ph52, !llvm.loop !141

._crit_edge53:                                    ; preds = %.lr.ph52, %bb.k
  call void @PHP_SHA1Final(ptr noundef nonnull %i.f, ptr noundef nonnull %7) #15
  %i.ai = call noalias ptr @_estrndup(ptr noundef nonnull %i.f, i64 noundef 20) #15 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !23
  store i64 20, ptr %3, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  br label %bb.m

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @PHP_MD5InitArgs(ptr noundef nonnull %8, ptr noundef null) #15
  %i.aj = call i64 @_php_stream_read(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef 1024) #15 ; 2 uses
  %.not4349 = icmp eq i64 %i.aj, 0
  br i1 %.not4349, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %i.ak = phi i64 [ %i.al, %.lr.ph ], [ %i.aj, %bb.l ]
  call void @PHP_MD5Update(ptr noundef nonnull %8, ptr noundef nonnull %i.a, i64 noundef %i.ak) #15
  %i.al = call i64 @_php_stream_read(ptr noundef %1, ptr noundef nonnull %i.a, i64 noundef 1024) #15 ; 2 uses
  %.not43 = icmp eq i64 %i.al, 0
  br i1 %.not43, label %._crit_edge, label %.lr.ph, !llvm.loop !142

._crit_edge:                                      ; preds = %.lr.ph, %bb.l
  call void @PHP_MD5Final(ptr noundef nonnull %i.g, ptr noundef nonnull %8) #15
  %i.am = call noalias ptr @_estrndup(ptr noundef nonnull %i.g, i64 noundef 16) #15 ; 2 uses
  store ptr %i.am, ptr %2, align 8, !tbaa !23
  store i64 16, ptr %3, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %._crit_edge, %._crit_edge53, %._crit_edge61, %._crit_edge57
  %i.an = phi ptr [ %i.ad, %bb.j ], [ %i.am, %._crit_edge ], [ %i.ai, %._crit_edge53 ], [ %i.t, %._crit_edge61 ], [ %i.p, %._crit_edge57 ] ; 3 uses
  %i.ao = phi i64 [ %i.ae, %bb.j ], [ 16, %._crit_edge ], [ 20, %._crit_edge53 ], [ 32, %._crit_edge61 ], [ 64, %._crit_edge57 ] ; 7 uses
  %i.ap = load i8, ptr getelementptr inbounds nuw (i8, ptr @phar_globals, i64 194), align 2, !tbaa !114, !range !73, !noundef !32
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ar = call noalias ptr @_safe_malloc(i64 noundef %i.ao, i64 noundef 2, i64 noundef 1) #15
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.as = call noalias ptr @_safe_emalloc(i64 noundef %i.ao, i64 noundef 2, i64 noundef 1) #15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.at = phi ptr [ %i.ar, %bb.n ], [ %i.as, %bb.o ] ; 2 uses
  store ptr %i.at, ptr %i.i, align 8, !tbaa !23
  %.not.i = icmp eq i64 %i.ao, 0
  br i1 %.not.i, label %phar_hex_str.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.p
  %xtraiter = and i64 %i.ao, 1
  %i.au = icmp eq i64 %i.ao, 1
  br i1 %i.au, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.ao, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %indvars.iv.i = phi i64 [ -1, %.lr.ph.i.preheader.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %.018.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.cc, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 %.018.i ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !24
  %i.ax = lshr i8 %i.aw, 4
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !24
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.bc = getelementptr i8, ptr %i.bb, i64 %indvars.iv.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 1
  store i8 %i.ba, ptr %i.bd, align 1, !tbaa !24
  %i.be = load i8, ptr %i.av, align 1, !tbaa !24
  %i.bf = and i8 %i.be, 15
  %i.bg = zext nneg i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !24
  %i.bj = load ptr, ptr %i.i, align 8, !tbaa !23
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv.next.i
  store i8 %i.bi, ptr %i.bk, align 1, !tbaa !24
  %i.bl = getelementptr inbounds nuw i8, ptr %i.an, i64 %.018.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !24
  %i.bo = lshr i8 %i.bn, 4
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !24
  %i.bs = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.bt = getelementptr i8, ptr %i.bs, i64 %indvars.iv.next.i
  %i.bu = getelementptr i8, ptr %i.bt, i64 1
  store i8 %i.br, ptr %i.bu, align 1, !tbaa !24
  %i.bv = load i8, ptr %i.bm, align 1, !tbaa !24
  %i.bw = and i8 %i.bv, 15
  %i.bx = zext nneg i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !24
  %i.ca = load ptr, ptr %i.i, align 8, !tbaa !23
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, 4 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv.next.i.1
  store i8 %i.bz, ptr %i.cb, align 1, !tbaa !24
  %i.cc = add nuw i64 %.018.i, 2                  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !115

._crit_edge.loopexit.i.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ -1, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.1, %._crit_edge.loopexit.i.unr-lcssa ] ; 2 uses
  %.018.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.cc, %._crit_edge.loopexit.i.unr-lcssa ]
  %lcmp.mod69 = trunc i64 %i.ao to i1
  call void @llvm.assume(i1 %lcmp.mod69)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.an, i64 %.018.i.epil.init ; 2 uses
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !24
  %i.cf = lshr i8 %i.ce, 4
  %i.cg = zext nneg i8 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !24
  %i.cj = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.ck = getelementptr i8, ptr %i.cj, i64 %indvars.iv.i.epil.init
  %i.cl = getelementptr i8, ptr %i.ck, i64 1
  store i8 %i.ci, ptr %i.cl, align 1, !tbaa !24
  %i.cm = load i8, ptr %i.cd, align 1, !tbaa !24
  %i.cn = and i8 %i.cm, 15
  %i.co = zext nneg i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr @hexChars, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !24
  %i.cr = load ptr, ptr %i.i, align 8, !tbaa !23
  %indvars.iv.next.i.epil = add nsw i64 %indvars.iv.i.epil.init, 2 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %indvars.iv.next.i.epil
  store i8 %i.cq, ptr %i.cs, align 1, !tbaa !24
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.1, %._crit_edge.loopexit.i.unr-lcssa ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil.preheader ]
  %i.ct = trunc nuw nsw i64 %indvars.iv.next.i.lcssa to i32
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.cu = add nsw i32 %i.ct, 1
  br label %phar_hex_str.exit

phar_hex_str.exit:                                ; preds = %bb.p, %._crit_edge.loopexit.i
  %i.cv = phi ptr [ %i.at, %bb.p ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.016.lcssa.i = phi i32 [ 0, %bb.p ], [ %i.cu, %._crit_edge.loopexit.i ] ; 2 uses
  %9 = zext nneg i32 %.016.lcssa.i to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %9
  store i8 0, ptr %i.cw, align 1, !tbaa !24
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i32 %.016.lcssa.i, ptr %i.cx, align 8, !tbaa !143
  br label %bb.q

bb.q:                                             ; preds = %.thread, %phar_hex_str.exit
  %.1 = phi i32 [ 0, %phar_hex_str.exit ], [ -1, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.1
}

declare ptr @zend_hash_add_empty_element(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @zend_hash_str_add(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare noalias ptr @_estrdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: allocsize(0)
declare noalias ptr @__zend_malloc(i64 noundef) local_unnamed_addr #10

declare noalias ptr @_emalloc_32() local_unnamed_addr #2

declare noalias ptr @_emalloc_160() local_unnamed_addr #2

declare noalias ptr @_emalloc_320() local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #10

declare ptr @zend_hash_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

declare ptr @zend_hash_str_find(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @_php_stream_truncate_set_size(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @zend_hash_find(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @zend_call_known_function(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_efree_32(ptr noundef) local_unnamed_addr #2

declare void @zval_ptr_dtor(ptr noundef) local_unnamed_addr #2

declare noalias ptr @_safe_malloc(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare noalias ptr @_safe_emalloc(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memrchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

declare void @phar_metadata_tracker_clone(ptr noundef) local_unnamed_addr #2

declare void @_zend_hash_init(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @destroy_phar_manifest_entry(ptr noundef) #2

declare void @zend_hash_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @phar_manifest_copy_ctor(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = tail call noalias ptr @_emalloc_160() #15 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 1 dereferenceable(152) %i.b, i64 152, i1 false)
  store ptr %i.a, ptr %0, align 8, !tbaa !24
  ret void
}

declare void @zend_hash_apply_with_argument(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @phar_update_cached_entry(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %1, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias ptr @_estrdup(ptr noundef nonnull %i.d) #15
  store ptr %i.e, ptr %i.c, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !51   ; 2 uses
  %.not13 = icmp eq ptr %i.g, null
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noalias ptr @_estrdup(ptr noundef nonnull %i.g) #15
  store ptr %i.h, ptr %i.f, align 8, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !24
  %i.m = and i32 %i.l, 64
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %bb.f, label %zend_string_addref.exit

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %i.j, align 4, !tbaa !26
  %i.o = add i32 %i.n, 1
  store i32 %i.o, ptr %i.j, align 4, !tbaa !26
  br label %zend_string_addref.exit

zend_string_addref.exit:                          ; preds = %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 146 ; 2 uses
  %i.q = load i16, ptr %i.p, align 2
  %i.r = and i16 %i.q, -257
  store i16 %i.r, ptr %i.p, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @phar_metadata_tracker_clone(ptr noundef nonnull %i.s) #15
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !20, i64 128}
!13 = !{!"_phar_entry_info", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !14, i64 24, !16, i64 48, !9, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !19, i64 88, !19, i64 96, !9, i64 104, !9, i64 108, !20, i64 112, !21, i64 120, !20, i64 128, !10, i64 136, !9, i64 140, !22, i64 144, !9, i64 146, !9, i64 146, !9, i64 146, !9, i64 146, !9, i64 146, !9, i64 146, !9, i64 146, !9, i64 146, !9, i64 147}
!14 = !{!"_phar_metadata_tracker", !15, i64 0, !16, i64 16}
!15 = !{!"_zval_struct", !10, i64 0, !10, i64 8, !10, i64 12}
!16 = !{!"p1 _ZTS12_zend_string", !17, i64 0}
!17 = !{!"any pointer", !10, i64 0}
!18 = !{!"long", !10, i64 0}
!19 = !{!"p1 _ZTS11_php_stream", !17, i64 0}
!20 = !{!"p1 omnipotent char", !17, i64 0}
!21 = !{!"p1 _ZTS18_phar_archive_data", !17, i64 0}
!22 = !{!"short", !10, i64 0}
!23 = !{!20, !20, i64 0}
!24 = !{!10, !10, i64 0}
!25 = !{!13, !16, i64 48}
!26 = !{!27, !9, i64 0}
!27 = !{!"_zend_refcounted_h", !9, i64 0, !10, i64 4}
!28 = !{!29, !18, i64 8}
!29 = !{!"_zend_string", !27, i64 0, !18, i64 8, !18, i64 16, !10, i64 24}
!30 = !{!29, !18, i64 16}
!31 = !{!13, !21, i64 120}
!32 = !{}
!33 = !{!9, !9, i64 0}
!34 = !{!35, !37, i64 112}
!35 = !{!"_zend_phar_globals", !36, i64 0, !36, i64 56, !37, i64 112, !36, i64 120, !9, i64 176, !20, i64 184, !38, i64 192, !38, i64 193, !38, i64 194, !38, i64 195, !38, i64 196, !38, i64 197, !38, i64 198, !38, i64 199, !38, i64 200, !38, i64 201, !38, i64 202, !38, i64 203, !17, i64 208, !17, i64 216, !17, i64 224, !17, i64 232, !17, i64 240, !17, i64 248, !17, i64 256, !17, i64 264, !17, i64 272, !17, i64 280, !17, i64 288, !17, i64 296, !17, i64 304, !17, i64 312, !17, i64 320, !17, i64 328, !17, i64 336, !17, i64 344, !17, i64 352, !17, i64 360, !17, i64 368, !17, i64 376, !20, i64 384, !9, i64 392, !38, i64 396, !20, i64 400, !9, i64 408, !20, i64 416, !9, i64 424, !20, i64 432, !9, i64 440, !21, i64 448, !36, i64 456}
end_hunk_1
