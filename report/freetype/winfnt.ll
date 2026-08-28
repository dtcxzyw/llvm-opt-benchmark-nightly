Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/winfnt?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@FNT_Face_Init:bb.a

.thread:                                          ; preds = %bb.bg
  %.not114 = icmp eq i32 %i.hq, 0
  br i1 %.not114, label %.thread.thread, label %bb.ch

.thread.thread:                                   ; preds = %bb.bj, %.thread
  %i.ia = load ptr, ptr %i.j, align 8, !tbaa !29  ; 16 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 108 ; 3 uses
  %i.ic = load i16, ptr %i.ib, align 4, !tbaa !73
  %.not115 = icmp eq i16 %i.ic, 0
  br i1 %.not115, label %.thread141.sink.split, label %bb.bl

bb.bl:                                            ; preds = %.thread.thread
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %i.id, align 8, !tbaa !74
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !75 ; 2 uses
  %i.ig = or i64 %i.if, 18
  store i64 %i.ig, ptr %i.ie, align 8, !tbaa !75
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ia, i64 112 ; 2 uses
  %i.ii = load i16, ptr %i.ih, align 8, !tbaa !76
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ia, i64 114
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !77
  %i.il = icmp eq i16 %i.ii, %i.ik
  br i1 %i.il, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.im = or i64 %i.if, 22
  store i64 %i.im, ptr %i.ie, align 8, !tbaa !75
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.in = getelementptr inbounds nuw i8, ptr %i.ia, i64 98
  %i.io = load i8, ptr %i.in, align 2, !tbaa !78
  %.not116 = icmp eq i8 %i.io, 0
  br i1 %.not116, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !79
  %i.ir = or i64 %i.iq, 1
  store i64 %i.ir, ptr %i.ip, align 8, !tbaa !79
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.is = getelementptr inbounds nuw i8, ptr %i.ia, i64 102
  %i.it = load i16, ptr %i.is, align 2, !tbaa !80
  %i.iu = icmp ugt i16 %i.it, 799
  br i1 %i.iu, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !79
  %i.ix = or i64 %i.iw, 2
  store i64 %i.ix, ptr %i.iv, align 8, !tbaa !79
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.iy = call ptr @ft_mem_qalloc(ptr noundef %i.d, i64 noundef 32, ptr noundef nonnull %i.b) #10 ; 6 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.iy, ptr %i.iz, align 8, !tbaa !81
  %i.ja = load i32, ptr %i.b, align 4, !tbaa !32
  %.not117 = icmp eq i32 %i.ja, 0
  br i1 %.not117, label %bb.bs, label %.thread141

bb.bs:                                            ; preds = %bb.br
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 1, ptr %i.jb, align 8, !tbaa !82
  %i.jc = load i16, ptr %i.ih, align 8, !tbaa !76
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 2
  store i16 %i.jc, ptr %i.jd, align 2, !tbaa !83
  %i.je = load i16, ptr %i.ib, align 4, !tbaa !73
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ia, i64 96
  %i.jg = load i16, ptr %i.jf, align 8, !tbaa !85
  %i.jh = add i16 %i.jg, %i.je
  store i16 %i.jh, ptr %i.iy, align 8, !tbaa !86
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ia, i64 86
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !87
  %i.jk = zext i16 %i.jj to i64
  %i.jl = shl nuw nsw i64 %i.jk, 6                ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iy, i64 8 ; 3 uses
  store i64 %i.jl, ptr %i.jm, align 8, !tbaa !88
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ia, i64 90
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !89 ; 2 uses
  %.not118 = icmp eq i16 %i.jo, 0
  %spec.store.select = select i1 %.not118, i16 72, i16 %i.jo
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ia, i64 88
  %i.jq = load i16, ptr %i.jp, align 8, !tbaa !90 ; 2 uses
  %.not119 = icmp eq i16 %i.jq, 0
  %spec.store.select2 = select i1 %.not119, i16 72, i16 %i.jq
  %i.jr = zext i16 %spec.store.select2 to i64     ; 2 uses
  %i.js = call i64 @FT_MulDiv(i64 noundef %i.jl, i64 noundef %i.jr, i64 noundef 72) #10
  %i.jt = getelementptr inbounds nuw i8, ptr %i.iy, i64 24 ; 2 uses
  %i.ju = add nsw i64 %i.js, 32
  %i.jv = and i64 %i.ju, -64                      ; 2 uses
  store i64 %i.jv, ptr %i.jt, align 8, !tbaa !91
  %i.jw = load i16, ptr %i.ib, align 4, !tbaa !73
  %i.jx = zext i16 %i.jw to i64
  %i.jy = shl nuw nsw i64 %i.jx, 6                ; 3 uses
  %i.jz = icmp sgt i64 %i.jv, %i.jy
  br i1 %i.jz, label %bb.bt, label %._crit_edge

._crit_edge:                                      ; preds = %bb.bs
  %.pre = load i64, ptr %i.jm, align 8, !tbaa !88
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i64 %i.jy, ptr %i.jt, align 8, !tbaa !91
  %i.ka = call i64 @FT_MulDiv(i64 noundef %i.jy, i64 noundef 72, i64 noundef %i.jr) #10 ; 2 uses
  store i64 %i.ka, ptr %i.jm, align 8, !tbaa !88
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge, %bb.bt
  %i.kb = phi i64 [ %.pre, %._crit_edge ], [ %i.ka, %bb.bt ]
  %i.kc = zext i16 %spec.store.select to i64
  %i.kd = call i64 @FT_MulDiv(i64 noundef %i.kb, i64 noundef %i.kc, i64 noundef 72) #10
  %i.ke = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.kf = add nsw i64 %i.kd, 32
  %i.kg = and i64 %i.kf, -64
  store i64 %i.kg, ptr %i.ke, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #10
  %i.kh = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  store i64 0, ptr %i.kh, align 8
  store ptr %1, ptr %16, align 8, !tbaa !93
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ia, i64 104
  %i.kj = load i8, ptr %i.ki, align 8, !tbaa !96
  %i.kk = icmp eq i8 %i.kj, 77
  br i1 %i.kk, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.kl = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 1634889070, ptr %i.kh, align 8, !tbaa !97
  store i16 1, ptr %i.kl, align 4, !tbaa !98
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.km = call i32 @FT_CMap_New(ptr noundef nonnull @fnt_cmap_class_rec, ptr noundef null, ptr noundef nonnull %16, ptr noundef null) #10 ; 2 uses
  store i32 %i.km, ptr %i.b, align 4, !tbaa !32
  %.not120 = icmp eq i32 %i.km, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #10
  br i1 %.not120, label %bb.bx, label %.thread141

bb.bx:                                            ; preds = %bb.bw
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ia, i64 117
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !99  ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ia, i64 116
  %i.kq = load i8, ptr %i.kp, align 4, !tbaa !100 ; 2 uses
  %i.kr = icmp ult i8 %i.ko, %i.kq
  br i1 %i.kr, label %.thread141.sink.split, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %narrow = sub nuw i8 %i.ko, %i.kq
  %i.ks = zext i8 %narrow to i64
  %i.kt = add nuw nsw i64 %i.ks, 2
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %i.kt, ptr %i.ku, align 8, !tbaa !101
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ia, i64 136 ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !102 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ky = load i64, ptr %i.kx, align 8, !tbaa !103 ; 2 uses
  %.not121 = icmp ult i64 %i.kw, %i.ky
  br i1 %.not121, label %bb.bz, label %.thread141.sink.split

bb.bz:                                            ; preds = %bb.by
  %i.kz = sub nuw i64 %i.ky, %i.kw                ; 3 uses
  %i.la = add i64 %i.kz, 1                        ; 2 uses
  %i.lb = call ptr @ft_mem_qalloc(ptr noundef %i.d, i64 noundef %i.la, ptr noundef nonnull %i.b) #10 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ia, i64 232 ; 4 uses
  store ptr %i.lb, ptr %i.lc, align 8, !tbaa !71
  %i.ld = load i32, ptr %i.b, align 4, !tbaa !32
  %.not122 = icmp eq i32 %i.ld, 0
  br i1 %.not122, label %bb.ca, label %.thread141

bb.ca:                                            ; preds = %bb.bz
  %i.le = getelementptr inbounds nuw i8, ptr %i.ia, i64 216
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !70
  %i.lg = load i64, ptr %i.kv, align 8, !tbaa !102
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.lg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lb, ptr align 1 %i.lh, i64 %i.kz, i1 false)
  %i.li = load ptr, ptr %i.lc, align 8, !tbaa !71
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.kz
  store i8 0, ptr %i.lj, align 1, !tbaa !104
  %i.lk = load ptr, ptr %i.lc, align 8, !tbaa !71 ; 2 uses
  %i.ll = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lk) #11
  %i.lm = add i64 %i.ll, 1
  %i.ln = call ptr @ft_mem_qrealloc(ptr noundef %i.d, i64 noundef 1, i64 noundef %i.la, i64 noundef %i.lm, ptr noundef nonnull %i.lk, ptr noundef nonnull %i.b) #10 ; 2 uses
  store ptr %i.ln, ptr %i.lc, align 8, !tbaa !71
  %i.lo = load i32, ptr %i.b, align 4, !tbaa !32
  %.not123 = icmp eq i32 %i.lo, 0
  br i1 %.not123, label %bb.cb, label %.thread141

bb.cb:                                            ; preds = %bb.ca
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.ln, ptr %i.lp, align 8, !tbaa !105
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  store ptr @.str.3, ptr %i.lq, align 8, !tbaa !106
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !79 ; 2 uses
  %i.lt = and i64 %i.ls, 2
  %.not124 = icmp eq i64 %i.lt, 0
  %.not125 = trunc i64 %i.ls to i1                ; 2 uses
  br i1 %.not124, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  br i1 %.not125, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  store ptr @.str.4, ptr %i.lq, align 8, !tbaa !106
  br label %FNT_Face_Done.exit

bb.ce:                                            ; preds = %bb.cc
  store ptr @.str.5, ptr %i.lq, align 8, !tbaa !106
  br label %FNT_Face_Done.exit

bb.cf:                                            ; preds = %bb.cb
  br i1 %.not125, label %bb.cg, label %FNT_Face_Done.exit

bb.cg:                                            ; preds = %bb.cf
  store ptr @.str.6, ptr %i.lq, align 8, !tbaa !106
  br label %FNT_Face_Done.exit

bb.ch:                                            ; preds = %.thread
  %.not.i128 = icmp eq ptr %1, null
  br i1 %.not.i128, label %FNT_Face_Done.exit, label %.thread141

.thread141.sink.split:                            ; preds = %bb.by, %bb.bx, %.thread.thread, %bb.bj
  %.sink = phi i32 [ 6, %bb.bj ], [ 3, %bb.bx ], [ 3, %.thread.thread ], [ 3, %bb.by ]
  store i32 %.sink, ptr %i.b, align 4, !tbaa !32
  br label %.thread141

.thread141:                                       ; preds = %.thread141.sink.split, %bb.bk, %bb.bw, %bb.ca, %bb.bz, %bb.br, %bb.ch
  %i.lu = load ptr, ptr %i.c, align 8, !tbaa !8   ; 3 uses
  %i.lv = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.lw = load ptr, ptr %i.j, align 8, !tbaa !29  ; 4 uses
  %.not.i.i129 = icmp eq ptr %i.lw, null
  br i1 %.not.i.i129, label %fnt_font_done.exit.i, label %bb.ci

bb.ci:                                            ; preds = %.thread141
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 216 ; 2 uses
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !70
  %.not13.i.i130 = icmp eq ptr %i.ly, null
  br i1 %.not13.i.i130, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @FT_Stream_ReleaseFrame(ptr noundef %i.lv, ptr noundef nonnull %i.lx) #10
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 232 ; 2 uses
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !71
  call void @ft_mem_free(ptr noundef %i.lu, ptr noundef %i.ma) #10
  store ptr null, ptr %i.lz, align 8, !tbaa !71
  call void @ft_mem_free(ptr noundef %i.lu, ptr noundef nonnull %i.lw) #10
  store ptr null, ptr %i.j, align 8, !tbaa !29
  br label %fnt_font_done.exit.i

fnt_font_done.exit.i:                             ; preds = %bb.ck, %.thread141
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !81
  call void @ft_mem_free(ptr noundef %i.lu, ptr noundef %i.mc) #10
  store ptr null, ptr %i.mb, align 8, !tbaa !81
  %i.md = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 0, ptr %i.md, align 8, !tbaa !82
  %.pre162 = load i32, ptr %i.b, align 4, !tbaa !32
  br label %FNT_Face_Done.exit

FNT_Face_Done.exit:                               ; preds = %bb.cd, %bb.cg, %bb.cf, %bb.ce, %bb.bh, %fnt_font_done.exit.i, %bb.ch, %bb.bk, %fnt_face_get_dll_font.exit
  %i.me = phi i32 [ 0, %bb.cd ], [ 0, %bb.cg ], [ 0, %bb.cf ], [ 0, %bb.ce ], [ %i.hv, %bb.bh ], [ %.pre162, %fnt_font_done.exit.i ], [ %i.hq, %bb.ch ], [ 0, %bb.bk ], [ 0, %fnt_face_get_dll_font.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  ret i32 %i.me
}

; Function Attrs: nounwind uwtable
define internal void @FNT_Face_Done(ptr nofree noundef captures(address_is_null) %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 4 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %fnt_font_done.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 216 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70
  %.not13.i = icmp eq ptr %i.h, null
  br i1 %.not13.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @FT_Stream_ReleaseFrame(ptr noundef %i.d, ptr noundef nonnull %i.g) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 232 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.j) #10
  store ptr null, ptr %i.i, align 8, !tbaa !71
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef nonnull %i.f) #10
  store ptr null, ptr %i.e, align 8, !tbaa !29
  br label %fnt_font_done.exit

fnt_font_done.exit:                               ; preds = %bb.b, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !81
  tail call void @ft_mem_free(ptr noundef %i.b, ptr noundef %i.l) #10
  store ptr null, ptr %i.k, align 8, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.m, align 8, !tbaa !82
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %fnt_font_done.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @FNT_Load_Glyph(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !107    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 7 uses
  %.not97 = icmp eq ptr %i.e, null
  br i1 %.not97, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !101
  %i.h = trunc i64 %i.g to i32
  %.not98 = icmp ult i32 %2, %i.h
  br i1 %.not98, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %.not99 = icmp eq i32 %2, 0
  br i1 %.not99, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = add i32 %2, -1
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 118
  %i.k = load i8, ptr %i.j, align 2, !tbaa !111
  %i.l = zext i8 %i.k to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.091 = phi i32 [ %i.i, %bb.e ], [ %i.l, %bb.f ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load i16, ptr %i.m, align 8, !tbaa !112
  %i.o = icmp eq i16 %i.n, 768                    ; 4 uses
  %i.p = select i1 %i.o, i32 6, i32 4
  %i.q = select i1 %i.o, i32 148, i32 118
  %i.r = mul i32 %i.p, %.091
  %i.s = add i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !103  ; 2 uses
  %i.w = add i64 %i.v, -2
  %.neg = select i1 %i.o, i64 -4, i64 -2
  %i.x = add i64 %i.w, %.neg
  %.not100 = icmp ugt i64 %i.x, %i.t
  br i1 %.not100, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 216 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !70
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.t ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 1
  %i.ac = zext i16 %i.ab to i32                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !113
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 2 ; 2 uses
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = load i32, ptr %i.ae, align 1
  %i.ag = zext i32 %i.af to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ah = load i16, ptr %i.ae, align 1
  %i.ai = zext i16 %i.ah to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.088 = phi i64 [ %i.ag, %bb.i ], [ %i.ai, %bb.j ] ; 3 uses
  %.not101 = icmp ult i64 %.088, %i.v
  br i1 %.not101, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 108
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !73
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  store i32 %i.al, ptr %i.c, align 8, !tbaa !115
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 178
  store i8 1, ptr %i.am, align 2, !tbaa !116
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 0, ptr %i.an, align 8, !tbaa !117
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 92
  %i.ap = load i16, ptr %i.ao, align 4, !tbaa !127
  %i.aq = zext i16 %i.ap to i32                   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !128
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1651078259, ptr %i.as, align 8, !tbaa !129
  %i.at = shl nuw nsw i32 %i.ac, 6
  %i.au = zext nneg i32 %i.at to i64              ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i64 %i.au, ptr %i.av, align 8, !tbaa !130
  %i.aw = shl nuw nsw i32 %i.al, 6
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !131
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.au, ptr %i.az, align 8, !tbaa !132
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.ba, align 8, !tbaa !133
  %i.bb = shl nuw nsw i32 %i.aq, 6
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !134
  tail call void @ft_synthesize_vertical_metrics(ptr noundef nonnull %i.av, i64 noundef %i.ax) #10
  %i.be = and i32 %3, 4194304
  %.not102 = icmp eq i32 %i.be, 0
  br i1 %.not102, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bf = load ptr, ptr %i.y, align 8, !tbaa !70
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.088 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !135
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 184
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !8
  %i.bl = load i32, ptr %i.ad, align 4, !tbaa !113
  %i.bm = add i32 %i.bl, 7
  %i.bn = lshr i32 %i.bm, 3                       ; 8 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !136
  %.not103 = icmp eq i32 %i.bn, 0
  br i1 %.not103, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = load i32, ptr %i.c, align 8, !tbaa !115 ; 2 uses
  %i.bq = mul i32 %i.bp, %i.bn
  %i.br = zext i32 %i.bq to i64
  %i.bs = add nuw nsw i64 %.088, %i.br
  %i.bt = load i64, ptr %i.u, align 8, !tbaa !103
  %i.bu = icmp ugt i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = zext nneg i32 %i.bn to i64
  %i.bw = zext i32 %i.bp to i64
  %i.bx = call ptr @ft_mem_qrealloc(ptr noundef %i.bk, i64 noundef %i.bv, i64 noundef 0, i64 noundef %i.bw, ptr noundef null, ptr noundef nonnull %i.a) #10 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !137
  %i.bz = load i32, ptr %i.a, align 4, !tbaa !32  ; 2 uses
  %.not104 = icmp eq i32 %i.bz, 0
  br i1 %.not104, label %.preheader.preheader, label %bb.p

.preheader.preheader:                             ; preds = %bb.o
  %lcmp.mod.not = trunc i32 %i.bn to i1
  br i1 %lcmp.mod.not, label %.preheader.prol, label %.preheader.prol.loopexit

.preheader.prol:                                  ; preds = %.preheader.preheader
  %i.ca = load i32, ptr %i.c, align 8, !tbaa !115 ; 2 uses
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cb
  %.not111.prol = icmp eq i32 %i.ca, 0
  br i1 %.not111.prol, label %._crit_edge.prol, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.preheader.prol, %.lr.ph.prol
  %.085107.prol = phi ptr [ %i.ch, %.lr.ph.prol ], [ %i.bx, %.preheader.prol ] ; 2 uses
  %.1106.prol = phi ptr [ %i.ce, %.lr.ph.prol ], [ %i.bg, %.preheader.prol ] ; 2 uses
  %i.cd = load i8, ptr %.1106.prol, align 1, !tbaa !104
  store i8 %i.cd, ptr %.085107.prol, align 1, !tbaa !104
  %i.ce = getelementptr inbounds nuw i8, ptr %.1106.prol, i64 1 ; 3 uses
  %i.cf = load i32, ptr %i.bo, align 8, !tbaa !136
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds i8, ptr %.085107.prol, i64 %i.cg
  %i.ci = icmp ult ptr %i.ce, %i.cc
  br i1 %i.ci, label %.lr.ph.prol, label %._crit_edge.prol, !llvm.loop !138

._crit_edge.prol:                                 ; preds = %.lr.ph.prol, %.preheader.prol
  %.1.lcssa.prol = phi ptr [ %i.bg, %.preheader.prol ], [ %i.ce, %.lr.ph.prol ]
  %i.cj = add nsw i32 %i.bn, -1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 1
  br label %.preheader.prol.loopexit

.preheader.prol.loopexit:                         ; preds = %._crit_edge.prol, %.preheader.preheader
  %.086110.unr = phi ptr [ %i.bx, %.preheader.preheader ], [ %i.ck, %._crit_edge.prol ]
  %.087109.unr = phi i32 [ %i.bn, %.preheader.preheader ], [ %i.cj, %._crit_edge.prol ]
  %.089108.unr = phi ptr [ %i.bg, %.preheader.preheader ], [ %.1.lcssa.prol, %._crit_edge.prol ]
  %i.cl = icmp eq i32 %i.bn, 1
  br i1 %i.cl, label %.unr-lcssa, label %.preheader

.preheader:                                       ; preds = %.preheader.prol.loopexit, %._crit_edge.1
  %.086110 = phi ptr [ %i.dg, %._crit_edge.1 ], [ %.086110.unr, %.preheader.prol.loopexit ] ; 3 uses
  %.087109 = phi i32 [ %i.df, %._crit_edge.1 ], [ %.087109.unr, %.preheader.prol.loopexit ]
  %.089108 = phi ptr [ %.1.lcssa.1, %._crit_edge.1 ], [ %.089108.unr, %.preheader.prol.loopexit ] ; 3 uses
  %i.cm = load i32, ptr %i.c, align 8, !tbaa !115 ; 2 uses
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %.089108, i64 %i.cn
  %.not111 = icmp eq i32 %i.cm, 0
  br i1 %.not111, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.085107 = phi ptr [ %i.ct, %.lr.ph ], [ %.086110, %.preheader ] ; 2 uses
  %.1106 = phi ptr [ %i.cq, %.lr.ph ], [ %.089108, %.preheader ] ; 2 uses
  %i.cp = load i8, ptr %.1106, align 1, !tbaa !104
  store i8 %i.cp, ptr %.085107, align 1, !tbaa !104
  %i.cq = getelementptr inbounds nuw i8, ptr %.1106, i64 1 ; 3 uses
  %i.cr = load i32, ptr %i.bo, align 8, !tbaa !136
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %.085107, i64 %i.cs
  %i.cu = icmp ult ptr %i.cq, %i.co
  br i1 %i.cu, label %.lr.ph, label %._crit_edge, !llvm.loop !138

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.1.lcssa = phi ptr [ %.089108, %.preheader ], [ %i.cq, %.lr.ph ] ; 3 uses
  %i.cv = load i32, ptr %i.c, align 8, !tbaa !115 ; 2 uses
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 %i.cw
  %.not111.1 = icmp eq i32 %i.cv, 0
  br i1 %.not111.1, label %._crit_edge.1, label %.lr.ph.preheader.1

.lr.ph.preheader.1:                               ; preds = %._crit_edge
  %i.cy = getelementptr inbounds nuw i8, ptr %.086110, i64 1
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1, %.lr.ph.preheader.1
  %.085107.1 = phi ptr [ %i.dd, %.lr.ph.1 ], [ %i.cy, %.lr.ph.preheader.1 ] ; 2 uses
  %.1106.1 = phi ptr [ %i.da, %.lr.ph.1 ], [ %.1.lcssa, %.lr.ph.preheader.1 ] ; 2 uses
  %i.cz = load i8, ptr %.1106.1, align 1, !tbaa !104
  store i8 %i.cz, ptr %.085107.1, align 1, !tbaa !104
  %i.da = getelementptr inbounds nuw i8, ptr %.1106.1, i64 1 ; 3 uses
  %i.db = load i32, ptr %i.bo, align 8, !tbaa !136
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds i8, ptr %.085107.1, i64 %i.dc
  %i.de = icmp ult ptr %i.da, %i.cx
  br i1 %i.de, label %.lr.ph.1, label %._crit_edge.1, !llvm.loop !138

._crit_edge.1:                                    ; preds = %.lr.ph.1, %._crit_edge
  %.1.lcssa.1 = phi ptr [ %.1.lcssa, %._crit_edge ], [ %i.da, %.lr.ph.1 ]
  %i.df = add nsw i32 %.087109, -2                ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.086110, i64 2
  %.not105.1 = icmp eq i32 %i.df, 0
  br i1 %.not105.1, label %.unr-lcssa, label %.preheader, !llvm.loop !139

.unr-lcssa:                                       ; preds = %._crit_edge.1, %.preheader.prol.loopexit
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !140
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i32 1, ptr %i.dj, align 8, !tbaa !141
  %.pre = load i32, ptr %i.a, align 4, !tbaa !32
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.k, %bb.g, %bb.b, %bb.c, %bb.a, %.unr-lcssa, %bb.o, %bb.l
  %i.dk = phi i32 [ 3, %bb.k ], [ %.pre, %.unr-lcssa ], [ %i.bz, %bb.o ], [ 0, %bb.l ], [ 3, %bb.g ], [ 6, %bb.b ], [ 35, %bb.a ], [ 6, %bb.c ], [ 3, %bb.m ], [ 3, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %i.dk
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 24) i32 @FNT_Size_Request(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !107    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !81
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !145  ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !147  ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = zext i32 %i.g to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = add nsw i64 %i.k, 36
  %i.m = sdiv i64 %i.l, 72
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.n = phi i64 [ %i.m, %bb.b ], [ %i.i, %bb.a ]
  %i.o = add nsw i64 %i.n, 32
  %i.p = ashr i64 %i.o, 6                         ; 2 uses
  %i.q = load i32, ptr %1, align 8, !tbaa !148
  switch i32 %i.q, label %.thread [
    i32 0, label %.split
    i32 1, label %bb.d
  ]

.split:                                           ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !91
  %i.t = add nsw i64 %i.s, 32
  %i.u = ashr i64 %i.t, 6
  %i.v = icmp eq i64 %i.p, %i.u
  br i1 %i.v, label %bb.e, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.x = load i16, ptr %i.w, align 4, !tbaa !149
  %i.y = zext i16 %i.x to i64
  %i.z = icmp eq i64 %i.p, %i.y
  br i1 %i.z, label %bb.e, label %.thread

bb.e:                                             ; preds = %.split, %bb.d
  tail call void @FT_Select_Metrics(ptr noundef nonnull %i.a, i64 noundef 0) #10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !150 ; 2 uses
  %i.ac = zext i16 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 6
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !151
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.ag = load i16, ptr %i.af, align 4, !tbaa !149
  %i.ah = zext i16 %i.ag to i32
  %i.ai = zext i16 %i.ab to i32
  %.neg.i = sub nsw i32 %i.ai, %i.ah
  %i.aj = shl nsw i32 %.neg.i, 6
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !152
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 114
  %i.an = load i16, ptr %i.am, align 2, !tbaa !153
  %i.ao = zext i16 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 6
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !154
  br label %.thread

.thread:                                          ; preds = %bb.c, %.split, %bb.d, %bb.e
  %.016 = phi i32 [ 0, %bb.e ], [ 23, %bb.d ], [ 23, %.split ], [ 7, %bb.c ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @FNT_Size_Select(ptr nofree noundef captures(none) initializes((48, 64), (72, 80)) %0, i64 %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !107    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 3 uses
  tail call void @FT_Select_Metrics(ptr noundef %i.a, i64 noundef 0) #10
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  %i.e = load i16, ptr %i.d, align 4, !tbaa !150  ; 2 uses
  %i.f = zext i16 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.g, ptr %i.h, align 8, !tbaa !151
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.j = load i16, ptr %i.i, align 4, !tbaa !149
  %i.k = zext i16 %i.j to i32
  %i.l = zext i16 %i.e to i32
  %.neg = sub nsw i32 %i.l, %i.k
  %i.m = shl nsw i32 %.neg, 6
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.n, ptr %i.o, align 8, !tbaa !152
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 114
  %i.q = load i16, ptr %i.p, align 2, !tbaa !153
  %i.r = zext i16 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 6
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.s, ptr %i.t, align 8, !tbaa !154
  ret i32 0
}

declare hidden ptr @ft_service_list_lookup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @winfnt_get_header(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 208)) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %i.c, i64 208, i1 false), !tbaa.struct !155
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare hidden ptr @ft_mem_alloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @fnt_font_load(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !45
  %i.c = tail call i32 @FT_Stream_Seek(ptr noundef %1, i64 noundef %i.b) #10
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @FT_Stream_ReadFields(ptr noundef %1, ptr noundef nonnull @winfnt_header_fields, ptr noundef nonnull %i.a) #10
  %.not25 = icmp eq i32 %i.d, 0
  br i1 %.not25, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.e = load i16, ptr %i.a, align 8, !tbaa !158  ; 3 uses
  switch i16 %i.e, label %bb.j [
    i16 512, label %bb.d
    i16 768, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.f = icmp eq i16 %i.e, 768
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !159
  %i.i = select i1 %i.f, i64 148, i64 118
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq i16 %i.e, 512
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.n = load i16, ptr %i.m, align 4, !tbaa !160
  %.not28 = trunc i16 %i.n to i1
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = load i64, ptr %0, align 8, !tbaa !45
  %i.p = tail call i32 @FT_Stream_Seek(ptr noundef %1, i64 noundef %i.o) #10 ; 2 uses
  %.not29 = icmp eq i32 %i.p, 0
  br i1 %.not29, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = load i64, ptr %i.g, align 8, !tbaa !159
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.s = tail call i32 @FT_Stream_ExtractFrame(ptr noundef %1, i64 noundef %i.q, ptr noundef nonnull %i.r) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.d, %bb.c, %bb.b, %bb.a, %bb.i, %bb.h
  %.0 = phi i32 [ %i.s, %bb.i ], [ 2, %bb.b ], [ 2, %bb.c ], [ 2, %bb.d ], [ %i.p, %bb.h ], [ 2, %bb.a ], [ 2, %bb.g ]
  ret i32 %.0
}

declare hidden ptr @ft_mem_qalloc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @FT_MulDiv(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare hidden i32 @FT_CMap_New(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden ptr @ft_mem_qrealloc(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare hidden i32 @FT_Stream_Seek(ptr noundef, i64 noundef) local_unnamed_addr #1

declare hidden i32 @FT_Stream_ReadFields(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden i32 @FT_Stream_EnterFrame(ptr noundef, i64 noundef) local_unnamed_addr #1

declare hidden zeroext i16 @FT_Stream_GetUShortLE(ptr noundef) local_unnamed_addr #1

declare hidden i64 @FT_Stream_Pos(ptr noundef) local_unnamed_addr #1

declare hidden void @FT_Stream_ExitFrame(ptr noundef) local_unnamed_addr #1

declare hidden void @FT_Stream_ReleaseFrame(ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden void @ft_mem_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare hidden i32 @FT_Stream_ExtractFrame(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @fnt_cmap_init(ptr nofree noundef captures(none) initializes((24, 32)) %0, ptr nofree readnone captures(none) %1) #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !161
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 116
  %i.e = load i8, ptr %i.d, align 4, !tbaa !100
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.f, ptr %i.g, align 8, !tbaa !164
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 117
  %i.i = load i8, ptr %i.h, align 1, !tbaa !99
  %i.j = zext i8 %i.i to i32
  %reass.sub = sub nsw i32 %i.j, %i.f
  %i.k = add nsw i32 %reass.sub, 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.k, ptr %i.l, align 4, !tbaa !166
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @fnt_cmap_char_index(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !164
  %i.c = sub i32 %1, %i.b                         ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !166
  %i.f = icmp ult i32 %i.c, %i.e
  %i.g = add i32 %i.c, 1
  %spec.select = select i1 %i.f, i32 %i.g, i32 0
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal i32 @fnt_cmap_char_next(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #7 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !32
  %i.b = add i32 %i.a, 1                          ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !164  ; 3 uses
  %.not = icmp ugt i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i32 %i.b, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !166
  %i.h = icmp ult i32 %i.e, %i.g                  ; 2 uses
  %i.i = add i32 %i.e, 1
  %spec.select = select i1 %i.h, i32 %i.i, i32 0
  %spec.select18 = select i1 %i.h, i32 %i.b, i32 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.014 = phi i32 [ %spec.select, %bb.b ], [ 1, %bb.a ]
  %.0 = phi i32 [ %spec.select18, %bb.b ], [ %i.d, %bb.a ]
  store i32 %.0, ptr %1, align 4, !tbaa !32
  ret i32 %.014
}

declare hidden void @ft_synthesize_vertical_metrics(ptr noundef, i64 noundef) local_unnamed_addr #1

declare hidden void @FT_Select_Metrics(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!8 = !{!9, !23, i64 184}
!9 = !{!"FT_FaceRec_", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !11, i64 40, !11, i64 48, !5, i64 56, !13, i64 64, !5, i64 72, !14, i64 80, !16, i64 88, !17, i64 104, !18, i64 136, !18, i64 138, !18, i64 140, !18, i64 142, !18, i64 144, !18, i64 146, !18, i64 148, !18, i64 150, !19, i64 152, !20, i64 160, !21, i64 168, !22, i64 176, !23, i64 184, !24, i64 192, !25, i64 200, !16, i64 216, !12, i64 232, !27, i64 240}
!10 = !{!"long", !6, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTS15FT_Bitmap_Size_", !12, i64 0}
!14 = !{!"p2 _ZTS14FT_CharMapRec_", !15, i64 0}
!15 = !{!"any p2 pointer", !12, i64 0}
!16 = !{!"FT_Generic_", !12, i64 0, !12, i64 8}
!17 = !{!"FT_BBox_", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!18 = !{!"short", !6, i64 0}
!19 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !12, i64 0}
!20 = !{!"p1 _ZTS11FT_SizeRec_", !12, i64 0}
!21 = !{!"p1 _ZTS14FT_CharMapRec_", !12, i64 0}
!22 = !{!"p1 _ZTS13FT_DriverRec_", !12, i64 0}
!23 = !{!"p1 _ZTS13FT_MemoryRec_", !12, i64 0}
!24 = !{!"p1 _ZTS13FT_StreamRec_", !12, i64 0}
!25 = !{!"FT_ListRec_", !26, i64 0, !26, i64 8}
!26 = !{!"p1 _ZTS15FT_ListNodeRec_", !12, i64 0}
!27 = !{!"p1 _ZTS20FT_Face_InternalRec_", !12, i64 0}
!28 = !{!9, !24, i64 192}
!29 = !{!30, !31, i64 248}
!30 = !{!"FNT_FaceRec_", !9, i64 0, !31, i64 248}
!31 = !{!"p1 _ZTS12FNT_FontRec_", !12, i64 0}
!32 = !{!5, !5, i64 0}
!33 = !{!34, !18, i64 0}
!34 = !{!"WinMZ_HeaderRec_", !18, i64 0, !18, i64 2}
!35 = !{!34, !18, i64 2}
!36 = !{!37, !18, i64 0}
!37 = !{!"WinNE_HeaderRec_", !18, i64 0, !18, i64 2, !18, i64 4}
!38 = !{!37, !18, i64 2}
!39 = !{!37, !18, i64 4}
!40 = !{!41, !11, i64 72}
!41 = !{!"FT_StreamRec_", !11, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 32, !12, i64 40, !12, i64 48, !23, i64 56, !11, i64 64, !11, i64 72}
!42 = !{!41, !11, i64 64}
!43 = !{!41, !10, i64 8}
!44 = !{!30, !10, i64 0}
!45 = !{!46, !10, i64 0}
!46 = !{!"FNT_FontRec_", !10, i64 0, !47, i64 8, !11, i64 216, !10, i64 224, !11, i64 232}
!47 = !{!"FT_WinFNT_HeaderRec_", !18, i64 0, !10, i64 8, !6, i64 16, !18, i64 76, !18, i64 78, !18, i64 80, !18, i64 82, !18, i64 84, !18, i64 86, !18, i64 88, !6, i64 90, !6, i64 91, !6, i64 92, !18, i64 94, !6, i64 96, !18, i64 98, !18, i64 100, !6, i64 102, !18, i64 104, !18, i64 106, !6, i64 108, !6, i64 109, !6, i64 110, !6, i64 111, !18, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !6, i64 152, !10, i64 160, !18, i64 168, !18, i64 170, !18, i64 172, !18, i64 174, !6, i64 176}
!48 = !{!46, !10, i64 224}
!49 = !{!50, !10, i64 0}
!50 = !{!"WinPE32_HeaderRec_", !10, i64 0, !18, i64 8, !18, i64 10, !18, i64 12, !18, i64 14, !10, i64 16, !10, i64 24}
!51 = !{!50, !18, i64 10}
!52 = distinct !{!52, !53}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!50, !10, i64 16}
!55 = !{!56, !10, i64 8}
!56 = !{!"WinPE32_SectionRec_", !6, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!57 = !{!56, !10, i64 24}
!58 = !{!59, !18, i64 20}
!59 = !{!"WinPE_RsrcDirRec_", !10, i64 0, !10, i64 8, !18, i64 16, !18, i64 18, !18, i64 20, !18, i64 22}
!60 = !{!59, !18, i64 22}
!61 = !{!62, !10, i64 8}
!62 = !{!"WinPE_RsrcDirEntryRec_", !10, i64 0, !10, i64 8}
!63 = !{!62, !10, i64 0}
end_hunk_0
