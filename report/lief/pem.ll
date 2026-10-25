Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/pem?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0_@mbedtls_pem_read_buffer:bb.a
  %i.bq = xor i128 %i.bp, 76021337611611262368037688035139863876
  %i.br = getelementptr i8, ptr %i.at, i64 6
  %i.bs = load i128, ptr %i.br, align 1
  %i.bt = xor i128 %i.bs, 58835259665366403139824926226107756390
  %i.bu = or i128 %i.bq, %i.bt
  %i.bv = icmp ne i128 %i.bu, 0
  %i.bw = zext i1 %i.bv to i32
  %i.bx = icmp eq i32 %i.bw, 0
  br i1 %i.bx, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = load i128, ptr %i.at, align 1
  %i.bz = xor i128 %i.by, 70709617925330133704050990290347705668
  %i.ca = getelementptr i8, ptr %i.at, i64 6
  %i.cb = load i128, ptr %i.ca, align 1
  %i.cc = xor i128 %i.cb, 58835259665371219972084197337935277926
  %i.cd = or i128 %i.bz, %i.cc
  %i.ce = icmp ne i128 %i.cd, 0
  %i.cf = zext i1 %i.ce to i32
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.095 = phi i32 [ 1, %bb.k ], [ 0, %bb.j ], [ 2, %bb.l ]
  %i.ch = getelementptr inbounds nuw i8, ptr %spec.select126, i64 23 ; 2 uses
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = sub i64 %i.aa, %i.ci
  %i.ck = icmp slt i64 %i.cj, 32
  br i1 %i.ck, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cl = call fastcc i32 @pem_get_iv(ptr noundef %i.ch, ptr noundef %i.b)
  %.not119 = icmp eq i32 %i.cl, 0
  br i1 %.not119, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %spec.select126, i64 55 ; 2 uses
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !8
  %i.co = icmp eq i8 %i.cn, 13
  %i.cp = getelementptr inbounds nuw i8, ptr %spec.select126, i64 56
  %spec.select127 = select i1 %i.co, ptr %i.cp, ptr %i.cm ; 2 uses
  %i.cq = load i8, ptr %spec.select127, align 1, !tbaa !8
  %i.cr = icmp eq i8 %i.cq, 10
  br i1 %i.cr, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %spec.select127, i64 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.f, %bb.e
  %.not122 = phi i1 [ false, %bb.p ], [ true, %bb.f ], [ true, %bb.e ]
  %.5 = phi ptr [ %i.cs, %bb.p ], [ %i.o, %bb.f ], [ %i.o, %bb.e ] ; 4 uses
  %.2 = phi i32 [ %.095, %bb.p ], [ -5, %bb.f ], [ -5, %bb.e ] ; 2 uses
  %.not120 = icmp ult ptr %.5, %i.f
  br i1 %.not120, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.ct = ptrtoint ptr %.5 to i64
  %i.cu = sub i64 %i.aa, %i.ct                    ; 2 uses
  %i.cv = call i32 @mbedtls_base64_decode(ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %.5, i64 noundef %i.cu) #10
  %i.cw = icmp eq i32 %i.cv, -44
  br i1 %i.cw, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = load i64, ptr %i.a, align 8, !tbaa !10  ; 3 uses
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cz = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.cx) #12 ; 10 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.db = call i32 @mbedtls_base64_decode(ptr noundef nonnull %i.cz, i64 noundef %i.cx, ptr noundef nonnull %i.a, ptr noundef nonnull %.5, i64 noundef %i.cu) #10 ; 2 uses
  %.not121 = icmp eq i32 %i.db, 0
  br i1 %.not121, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = load i64, ptr %i.a, align 8, !tbaa !10
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.cz, i64 noundef %i.dc) #10
  br label %.thread

bb.w:                                             ; preds = %bb.u
  br i1 %.not122, label %._crit_edge, label %bb.x

._crit_edge:                                      ; preds = %bb.w
  %.pre = load i64, ptr %i.a, align 8, !tbaa !10
  br label %.thread140

bb.x:                                             ; preds = %bb.w
  %i.dd = icmp eq ptr %4, null
  br i1 %i.dd, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.de = load i64, ptr %i.a, align 8, !tbaa !10
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.cz, i64 noundef %i.de) #10
  br label %.thread

bb.z:                                             ; preds = %bb.x
  %i.df = icmp ult i32 %.2, 3
  br i1 %i.df, label %switch.lookup, label %.thread130

switch.lookup:                                    ; preds = %bb.z
  %switch.idx.mult = shl nuw nsw i32 %.2, 3
  %switch.offset = add nuw nsw i32 %switch.idx.mult, 16
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !10
  %i.dh = call fastcc i32 @pem_aes_decrypt(ptr noundef %i.b, i32 noundef %switch.offset, ptr noundef %i.cz, i64 noundef %i.dg, ptr noundef %4, i64 noundef %5) ; 2 uses
  %.not123 = icmp eq i32 %i.dh, 0
  br i1 %.not123, label %.thread130, label %bb.aa

bb.aa:                                            ; preds = %switch.lookup
  %i.di = load i64, ptr %i.a, align 8, !tbaa !10
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.cz, i64 noundef %i.di) #10
  br label %.thread

.thread130:                                       ; preds = %bb.z, %switch.lookup
  %i.dj = load i64, ptr %i.a, align 8, !tbaa !10  ; 6 uses
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %.thread130
  %i.dl = getelementptr i8, ptr %i.cz, i64 %i.dj
  %i.dm = getelementptr i8, ptr %i.dl, i64 -1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !8   ; 3 uses
  %i.do = zext i8 %i.dn to i64                    ; 2 uses
  %i.dp = icmp ult i64 %i.dj, %i.do
  br i1 %i.dp, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dq = sub nuw i64 %i.dj, %i.do                ; 3 uses
  %.not21.i = icmp eq i8 %i.dn, 0
  br i1 %.not21.i, label %.thread140, label %.lr.ph.i

bb.ad:                                            ; preds = %.lr.ph.i
  %i.dr = add nuw i64 %.018.i, 1                  ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.dj
  br i1 %i.ds, label %.lr.ph.i, label %.thread140, !llvm.loop !17

.lr.ph.i:                                         ; preds = %bb.ac, %bb.ad
  %.018.i = phi i64 [ %i.dr, %bb.ad ], [ %i.dq, %bb.ac ] ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.018.i
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !8
  %.not.i = icmp eq i8 %i.du, %i.dn
  br i1 %.not.i, label %bb.ad, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i, %bb.ab, %.thread130
  %.1.i.ph = phi i32 [ -4352, %.thread130 ], [ -4992, %bb.ab ], [ -4992, %.lr.ph.i ]
  call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.cz, i64 noundef %i.dj) #10
  br label %.thread

.thread140:                                       ; preds = %bb.ad, %bb.ac, %._crit_edge
  %i.dv = phi i64 [ %.pre, %._crit_edge ], [ %i.dq, %bb.ac ], [ %i.dq, %bb.ad ]
  store ptr %i.cz, ptr %0, align 8, !tbaa !15
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dv, ptr %i.dw, align 8, !tbaa !16
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.i, %.loopexit, %bb.r, %bb.t, %bb.s, %bb.q, %bb.o, %bb.m, %bb.n, %bb.l, %bb.g, %bb.d, %bb.c, %bb.b, %bb.a, %.thread140, %bb.aa, %bb.y, %bb.v
  %.1105 = phi i32 [ -4224, %bb.c ], [ -135, %bb.a ], [ -4224, %bb.b ], [ -4352, %bb.g ], [ -4736, %bb.l ], [ -4608, %bb.m ], [ -4352, %bb.o ], [ -141, %bb.t ], [ -4352, %bb.q ], [ -135, %bb.s ], [ %i.db, %bb.v ], [ -4864, %bb.y ], [ %i.dh, %bb.aa ], [ 0, %.thread140 ], [ %.1.i.ph, %.loopexit ], [ -44, %bb.r ], [ -4736, %bb.h ], [ -4224, %bb.d ], [ -4608, %bb.n ], [ -4736, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.1105
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 -4608, 1) i32 @pem_get_iv(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) initializes((0, 16)) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %.02332 = phi i64 [ 0, %bb.a ], [ %i.p, %bb.e ] ; 3 uses
  %.02531 = phi ptr [ %0, %bb.a ], [ %i.q, %bb.e ] ; 2 uses
  %i.a = load i8, ptr %.02531, align 1, !tbaa !8  ; 4 uses
  %i.b = zext i8 %i.a to i64
  %i.c = add i8 %i.a, -48
  %or.cond = icmp ult i8 %i.c, 10
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add i8 %i.a, -65
  %or.cond29 = icmp ult i8 %i.d, 6
  br i1 %or.cond29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = add i8 %i.a, -97
  %or.cond30 = icmp ult i8 %i.e, 6
  br i1 %or.cond30, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sink = phi i64 [ -48, %bb.b ], [ -55, %bb.c ], [ -87, %bb.d ]
  %i.f = add nsw i64 %.sink, %i.b
  %i.g = shl nuw nsw i64 %.02332, 2
  %i.h = and i64 %i.g, 4
  %i.i = xor i64 %i.h, 4
  %i.j = shl nuw nsw i64 %i.f, %i.i
  %i.k = lshr i64 %.02332, 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8
  %i.n = trunc i64 %i.j to i8
  %i.o = or i8 %i.m, %i.n
  store i8 %i.o, ptr %i.l, align 1, !tbaa !8
  %i.p = add nuw nsw i64 %.02332, 1               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.02531, i64 1
  %exitcond.not = icmp eq i64 %i.p, 32
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !18

bb.f:                                             ; preds = %bb.e, %bb.d
  %.024 = phi i32 [ -4608, %bb.d ], [ 0, %bb.e ]
  ret i32 %.024
}

declare i32 @mbedtls_base64_decode(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

declare void @mbedtls_zeroize_and_free(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pem_aes_decrypt(ptr noundef nonnull %0, i32 noundef range(i32 16, 33) %1, ptr noundef nonnull %2, i64 noundef %3, ptr noundef nonnull %4, i64 noundef %5) unnamed_addr #2 {
bb.a:
  %6 = alloca %struct.mbedtls_md_context_t, align 8 ; 14 uses
  %i.a = alloca [16 x i8], align 16               ; 8 uses
  %7 = alloca %struct.mbedtls_aes_context, align 8 ; 6 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @mbedtls_aes_init(ptr noundef nonnull %7) #10
  %i.c = zext nneg i32 %1 to i64                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @mbedtls_md_init(ptr noundef nonnull %6) #10
  %i.d = call ptr @mbedtls_md_info_from_type(i32 noundef 3) #10
  %i.e = call i32 @mbedtls_md_setup(ptr noundef nonnull %6, ptr noundef %i.d, i32 noundef 0) #10 ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %pem_pbkdf1.exit

bb.b:                                             ; preds = %bb.a
  %i.f = call i32 @mbedtls_md_starts(ptr noundef nonnull %6) #10 ; 2 uses
  %.not29.i = icmp eq i32 %i.f, 0
  br i1 %.not29.i, label %bb.c, label %pem_pbkdf1.exit

bb.c:                                             ; preds = %bb.b
  %i.g = call i32 @mbedtls_md_update(ptr noundef nonnull %6, ptr noundef nonnull %4, i64 noundef %5) #10 ; 2 uses
  %.not30.i = icmp eq i32 %i.g, 0
  br i1 %.not30.i, label %bb.d, label %pem_pbkdf1.exit

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 @mbedtls_md_update(ptr noundef nonnull %6, ptr noundef nonnull %0, i64 noundef 8) #10 ; 2 uses
  %.not31.i = icmp eq i32 %i.h, 0
  br i1 %.not31.i, label %bb.e, label %pem_pbkdf1.exit

bb.e:                                             ; preds = %bb.d
  %i.i = call i32 @mbedtls_md_finish(ptr noundef nonnull %6, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not32.i = icmp eq i32 %i.i, 0
  br i1 %.not32.i, label %bb.f, label %pem_pbkdf1.exit

bb.f:                                             ; preds = %bb.e
  %i.j = icmp samesign ult i32 %1, 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  br i1 %i.j, label %pem_pbkdf1.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = call i32 @mbedtls_md_starts(ptr noundef nonnull %6) #10 ; 2 uses
  %.not33.i = icmp eq i32 %i.k, 0
  br i1 %.not33.i, label %bb.h, label %pem_pbkdf1.exit

bb.h:                                             ; preds = %bb.g
  %i.l = call i32 @mbedtls_md_update(ptr noundef nonnull %6, ptr noundef nonnull %i.a, i64 noundef 16) #10 ; 2 uses
  %.not34.i = icmp eq i32 %i.l, 0
  br i1 %.not34.i, label %bb.i, label %pem_pbkdf1.exit

bb.i:                                             ; preds = %bb.h
  %i.m = call i32 @mbedtls_md_update(ptr noundef nonnull %6, ptr noundef nonnull %4, i64 noundef %5) #10 ; 2 uses
  %.not35.i = icmp eq i32 %i.m, 0
  br i1 %.not35.i, label %bb.j, label %pem_pbkdf1.exit

bb.j:                                             ; preds = %bb.i
  %i.n = call i32 @mbedtls_md_update(ptr noundef nonnull %6, ptr noundef nonnull %0, i64 noundef 8) #10 ; 2 uses
  %.not36.i = icmp eq i32 %i.n, 0
  br i1 %.not36.i, label %bb.k, label %pem_pbkdf1.exit

bb.k:                                             ; preds = %bb.j
  %i.o = call i32 @mbedtls_md_finish(ptr noundef nonnull %6, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not37.i = icmp eq i32 %i.o, 0
  br i1 %.not37.i, label %bb.l, label %pem_pbkdf1.exit

bb.l:                                             ; preds = %bb.k
  %spec.select.i = add nsw i64 %i.c, -16
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.p, ptr nonnull align 16 %i.a, i64 %spec.select.i, i1 false)
  br label %pem_pbkdf1.exit

pem_pbkdf1.exit:                                  ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i = phi i32 [ %i.e, %bb.a ], [ %i.f, %bb.b ], [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ 0, %bb.l ], [ %i.k, %bb.g ], [ %i.l, %bb.h ], [ %i.m, %bb.i ], [ %i.n, %bb.j ], [ %i.o, %bb.k ], [ 0, %bb.f ] ; 2 uses
  call void @mbedtls_md_free(ptr noundef nonnull %6) #10
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.a, i64 noundef 16) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %.not = icmp eq i32 %.0.i, 0
  br i1 %.not, label %bb.m, label %bb.o

bb.m:                                             ; preds = %pem_pbkdf1.exit
  %i.q = shl nuw nsw i32 %1, 3
  %i.r = call i32 @mbedtls_aes_setkey_dec(ptr noundef nonnull %7, ptr noundef nonnull %i.b, i32 noundef %i.q) #10 ; 2 uses
  %.not12 = icmp eq i32 %i.r, 0
  br i1 %.not12, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.s = call i32 @mbedtls_aes_crypt_cbc(ptr noundef nonnull %7, i32 noundef 0, i64 noundef %3, ptr noundef nonnull %0, ptr noundef nonnull %2, ptr noundef nonnull %2) #10
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %pem_pbkdf1.exit, %bb.n
  %.0 = phi i32 [ %.0.i, %pem_pbkdf1.exit ], [ %i.r, %bb.m ], [ %i.s, %bb.n ]
  call void @mbedtls_aes_free(ptr noundef nonnull %7) #10
  call void @mbedtls_platform_zeroize(ptr noundef nonnull %i.b, i64 noundef %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define hidden void @mbedtls_pem_free(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !16
  tail call void @mbedtls_zeroize_and_free(ptr noundef nonnull %i.b, i64 noundef %i.d) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.f) #10
  tail call void @mbedtls_platform_zeroize(ptr noundef nonnull %0, i64 noundef 24) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare void @mbedtls_platform_zeroize(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden i32 @mbedtls_pem_write_buffer(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = call i32 @mbedtls_base64_encode(ptr noundef null, i64 noundef 0, ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %3) #10 ; 0 uses
  %i.c = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  %i.d = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %i.e = load i64, ptr %i.a, align 8, !tbaa !10   ; 5 uses
  %i.f = call i64 @llvm.usub.sat.i64(i64 %i.e, i64 2)
  %i.g = lshr i64 %i.f, 6
  %i.h = add i64 %i.c, 1
  %i.i = add i64 %i.h, %i.d
  %i.j = add i64 %i.i, %i.e
  %i.k = add i64 %i.j, %i.g                       ; 2 uses
  %i.l = icmp ugt i64 %i.k, %5
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.k, ptr %6, align 8, !tbaa !10
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.e) #12 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.044 = phi ptr [ %i.m, %bb.d ], [ null, %bb.c ] ; 4 uses
  %i.o = call i32 @mbedtls_base64_encode(ptr noundef %.044, i64 noundef %i.e, ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %3) #10 ; 2 uses
end_hunk_0
