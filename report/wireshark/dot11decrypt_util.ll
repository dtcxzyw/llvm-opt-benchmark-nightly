inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@dot11decrypt_construct_aad:bb.a
  %.sink45 = phi i64 [ 30, %bb.b ], [ 24, %bb.c ] ; 2 uses
  %.sink42 = phi i64 [ 28, %bb.b ], [ 22, %bb.c ]
  %.sink39 = phi i64 [ 29, %bb.b ], [ 23, %bb.c ]
  %i.af = getelementptr i8, ptr %0, i64 %.sink45
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = and i8 %i.ag, 15
  %i.ai = getelementptr i8, ptr %4, i64 %.sink42
  store i8 %i.ah, ptr %i.ai, align 1
  %i.aj = getelementptr i8, ptr %4, i64 %.sink39
  store i8 0, ptr %i.aj, align 1
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.b
  %.0 = phi i64 [ 22, %bb.c ], [ 28, %bb.b ], [ %.sink45, %.sink.split ]
  store i64 %.0, ptr %5, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i1 @dot11decrypt_prf(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, i32 noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %i.b = alloca [1024 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = tail call i32 @gcry_md_get_algo_dlen(i32 noundef %5)
  %i.d = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.e = insertelement <4 x ptr> %i.d, ptr %2, i64 1
  %i.f = insertelement <4 x ptr> %i.e, ptr %3, i64 2
  %i.g = insertelement <4 x ptr> %i.f, ptr %6, i64 3
  %i.h = icmp eq <4 x ptr> %i.g, splat (ptr null)
  %i.i = bitcast <4 x i1> %i.h to i4
  %i.j = icmp eq i4 %i.i, 0
  br i1 %i.j, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #9 ; 4 uses
  %i.l = add i64 %i.k, 1                          ; 3 uses
  %i.m = add i64 %i.l, %4                         ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 2 uses
  %i.o = icmp ugt i64 %i.n, 256
  %i.p = icmp ugt i64 %7, 64
  %or.cond7 = or i1 %i.p, %i.o
  br i1 %or.cond7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.1, i64 noundef 137, ptr noundef nonnull @__func__.dot11decrypt_prf, ptr noundef nonnull @.str.2)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.q = call ptr @__memcpy_chk(ptr noundef nonnull %i.a, ptr noundef nonnull %2, i64 noundef %i.k, i64 noundef 256) #8, !alias.scope !6 ; 0 uses
  %i.r = getelementptr i8, ptr %i.a, i64 %i.k
  store i8 0, ptr %i.r, align 1
  %i.s = getelementptr i8, ptr %i.a, i64 %i.l
  %i.t = sub i64 255, %i.k
  %i.u = icmp ugt i64 %i.l, 256
  %i.v = select i1 %i.u, i64 0, i64 %i.t          ; 2 uses
  %i.w = icmp ne i64 %i.v, -1
  call void @llvm.assume(i1 %i.w)
  %i.x = call ptr @__memcpy_chk(ptr noundef %i.s, ptr noundef nonnull %3, i64 noundef %4, i64 noundef %i.v) #8, !alias.scope !10 ; 0 uses
  %.lhs.trunc = trunc nuw i64 %7 to i8
  %i.y = udiv i8 %.lhs.trunc, 20
  %.zext = zext nneg i8 %i.y to i64
  %i.z = getelementptr i8, ptr %i.a, i64 %i.m
  %i.aa = and i32 %i.c, 65535
  %i.ab = zext nneg i32 %i.aa to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.ac = add nuw nsw i64 %.050, 1
  %exitcond.not = icmp eq i64 %.050, %.zext
  br i1 %exitcond.not, label %.critedge, label %bb.f, !llvm.loop !14

bb.f:                                             ; preds = %bb.d, %bb.e
  %.050 = phi i64 [ 0, %bb.d ], [ %i.ac, %bb.e ]  ; 4 uses
  %i.ad = trunc nuw nsw i64 %.050 to i8
  store i8 %i.ad, ptr %i.z, align 1
  %i.ae = mul nuw nsw i64 %.050, %i.ab
  %i.af = getelementptr i8, ptr %i.b, i64 %i.ae
  %i.ag = call i32 @ws_hmac_buffer(i32 noundef %5, ptr noundef %i.af, ptr noundef nonnull %i.a, i64 noundef %i.n, ptr noundef nonnull %0, i64 noundef %1)
  %.not49 = icmp eq i32 %i.ag, 0
  br i1 %.not49, label %bb.e, label %.loopexit

.critedge:                                        ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %6, ptr noundef nonnull align 16 %i.b, i64 noundef %7, i1 noundef false) #8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.a, %.critedge, %bb.c
  %.1 = phi i1 [ false, %bb.c ], [ true, %.critedge ], [ false, %bb.a ], [ false, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i1 %.1
}

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_md_get_algo_dlen(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @ws_log_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i32 @ws_hmac_buffer(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i1 @dot11decrypt_kdf(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, i64 noundef %4, i32 noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 7 uses
  %i.b = alloca [1024 x i8], align 16             ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.d = tail call i32 @gcry_md_get_algo_dlen(i32 noundef %5)
  %i.e = zext i32 %i.d to i64                     ; 4 uses
  %i.f = shl i64 %7, 3                            ; 3 uses
  %i.g = udiv i64 %i.f, %i.e                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.h = trunc i64 %i.f to i16
  store i16 %i.h, ptr %i.c, align 2
  %i.i = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.j = insertelement <4 x ptr> %i.i, ptr %2, i64 1
  %i.k = insertelement <4 x ptr> %i.j, ptr %3, i64 2
  %i.l = insertelement <4 x ptr> %i.k, ptr %6, i64 3
  %i.m = icmp eq <4 x ptr> %i.l, splat (ptr null)
  %i.n = bitcast <4 x i1> %i.m to i4
  %i.o = icmp eq i4 %i.n, 0
  br i1 %i.o, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #9 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 3 uses
  %i.r = add i64 %i.q, %4                         ; 3 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = icmp ugt i64 %i.s, 256
  %i.u = mul i64 %i.g, %i.e
  %i.v = icmp ugt i64 %i.u, 1024
  %or.cond52 = or i1 %i.v, %i.t
  br i1 %or.cond52, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.1, i64 noundef 197, ptr noundef nonnull @__func__.dot11decrypt_kdf, ptr noundef nonnull @.str.3)
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.x = call ptr @__memcpy_chk(ptr noundef nonnull %i.w, ptr noundef nonnull %2, i64 noundef %i.p, i64 noundef 254) #8, !alias.scope !16 ; 0 uses
  %i.y = getelementptr i8, ptr %i.a, i64 %i.q
  %i.z = sub i64 254, %i.p
  %i.aa = icmp ugt i64 %i.q, 256
  %i.ab = select i1 %i.aa, i64 0, i64 %i.z        ; 2 uses
  %i.ac = icmp ne i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ac)
  %i.ad = call ptr @__memcpy_chk(ptr noundef %i.y, ptr noundef nonnull %3, i64 noundef %4, i64 noundef %i.ab) #8, !alias.scope !20 ; 0 uses
  %i.ae = getelementptr i8, ptr %i.a, i64 %i.r
  %i.af = call i64 @llvm.usub.sat.i64(i64 256, i64 %i.r)
  %i.ag = call ptr @__memcpy_chk(ptr noundef %i.ae, ptr noundef nonnull %i.c, i64 noundef 2, i64 noundef %i.af) #8, !alias.scope !24 ; 0 uses
  %.not58 = icmp ult i64 %i.f, %i.e
  br i1 %.not58, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.ah = icmp ult i64 %i.ai, %i.g
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !28

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.04457 = phi i64 [ %i.ai, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.ai = add nuw i64 %.04457, 1                  ; 3 uses
  %i.aj = trunc i64 %i.ai to i16
  store i16 %i.aj, ptr %i.a, align 16
  %i.ak = mul i64 %.04457, %i.e
  %i.al = getelementptr i8, ptr %i.b, i64 %i.ak
  %i.am = call i32 @ws_hmac_buffer(i32 noundef %5, ptr noundef %i.al, ptr noundef nonnull %i.a, i64 noundef %i.s, ptr noundef nonnull %0, i64 noundef %1)
  %.not = icmp eq i32 %i.am, 0
  br i1 %.not, label %bb.e, label %.loopexit, !llvm.loop !28

._crit_edge:                                      ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %6, ptr noundef nonnull align 16 %i.b, i64 noundef %7, i1 noundef false) #8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.a, %._crit_edge, %bb.c
  %.2 = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %._crit_edge ], [ false, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i1 %.2
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i1 @dot11decrypt_derive_pmk_r0(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(address_is_null) %5, i64 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7, i32 noundef %8, ptr noundef %9, ptr nofree noundef writeonly captures(address_is_null) %10, ptr noundef %11) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca [256 x i8], align 16              ; 11 uses
  %i.c = alloca [80 x i8], align 16               ; 5 uses
  %12 = alloca [32 x i8], align 16                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  %i.d = tail call i32 @gcry_md_get_algo_dlen(i32 noundef %8) ; 2 uses
  %i.e = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.f = insertelement <8 x ptr> %i.e, ptr %2, i64 1
  %i.g = insertelement <8 x ptr> %i.f, ptr %4, i64 2
  %i.h = insertelement <8 x ptr> %i.g, ptr %5, i64 3
  %i.i = insertelement <8 x ptr> %i.h, ptr %7, i64 4
  %i.j = insertelement <8 x ptr> %i.i, ptr %9, i64 5
  %i.k = insertelement <8 x ptr> %i.j, ptr %10, i64 6
  %i.l = insertelement <8 x ptr> %i.k, ptr %11, i64 7
  %i.m = icmp eq <8 x ptr> %i.l, splat (ptr null)
  %i.n = bitcast <8 x i1> %i.m to i8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.p = add i64 %3, 4                            ; 3 uses
  %i.q = add i64 %6, %i.p                         ; 3 uses
  %i.r = add i64 %i.q, 6                          ; 2 uses
  %i.s = icmp ugt i64 %i.r, 256
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str, i32 noundef 5, ptr noundef nonnull @.str.1, i64 noundef 286, ptr noundef nonnull @__func__.dot11decrypt_derive_pmk_r0, ptr noundef nonnull @.str.3)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.t = trunc i64 %3 to i8
  store i8 %i.t, ptr %i.b, align 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.v = call ptr @__memcpy_chk(ptr noundef nonnull %i.u, ptr noundef nonnull %2, i64 noundef %3, i64 noundef 255) #8, !alias.scope !29 ; 0 uses
  %i.w = getelementptr i8, ptr %i.b, i64 %3       ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 1
  %i.y = sub nsw i64 255, %3
  %i.z = add i64 %3, -256
  %i.aa = icmp ult i64 %i.z, -257
  %i.ab = select i1 %i.aa, i64 0, i64 %i.y        ; 2 uses
  %i.ac = icmp ne i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ac)
  %i.ad = call ptr @__memcpy_chk(ptr noundef %i.x, ptr noundef nonnull %4, i64 noundef 2, i64 noundef %i.ab) #8, !alias.scope !33 ; 0 uses
  %i.ae = trunc i64 %6 to i8
  %i.af = getelementptr i8, ptr %i.w, i64 3
  store i8 %i.ae, ptr %i.af, align 1
  %i.ag = getelementptr i8, ptr %i.b, i64 %i.p
  %i.ah = sub nsw i64 252, %3
  %i.ai = icmp ugt i64 %i.p, 256
  %i.aj = select i1 %i.ai, i64 0, i64 %i.ah       ; 2 uses
  %i.ak = icmp ne i64 %i.aj, -1
  call void @llvm.assume(i1 %i.ak)
  %i.al = call ptr @__memcpy_chk(ptr noundef %i.ag, ptr noundef nonnull %5, i64 noundef %6, i64 noundef %i.aj) #8, !alias.scope !37 ; 0 uses
  %i.am = getelementptr i8, ptr %i.b, i64 %i.q
  %i.an = call i64 @llvm.usub.sat.i64(i64 256, i64 %i.q)
  %i.ao = call ptr @__memcpy_chk(ptr noundef %i.am, ptr noundef nonnull %7, i64 noundef 6, i64 noundef %i.an) #8, !alias.scope !41 ; 0 uses
  %i.ap = add i32 %i.d, 16
  %i.aq = zext i32 %i.ap to i64
  %i.ar = call zeroext i1 @dot11decrypt_kdf(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.b, i64 noundef %i.r, i32 noundef %8, ptr noundef nonnull %i.c, i64 noundef %i.aq) ; 0 uses
  %i.as = zext i32 %i.d to i64                    ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %9, ptr noundef nonnull align 16 %i.c, i64 noundef %i.as, i1 noundef false) #8
  store i64 %i.as, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.b, ptr noundef nonnull align 1 dereferenceable(6) @.str.4, i64 noundef 6, i1 noundef false) #8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.au = getelementptr i8, ptr %i.c, i64 %i.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.at, ptr noundef align 1 dereferenceable(16) %i.au, i64 noundef 16, i1 noundef false) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.av = call i32 @gcry_md_open(ptr noundef nonnull %i.a, i32 noundef 8, i32 noundef 0)
  %.not.i = icmp eq i32 %i.av, 0
  br i1 %.not.i, label %bb.e, label %sha256.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.aw = load ptr, ptr %i.a, align 8
  call void @gcry_md_write(ptr noundef %i.aw, ptr noundef nonnull %i.b, i64 noundef 22)
  %i.ax = load ptr, ptr %i.a, align 8
  %i.ay = call ptr @gcry_md_read(ptr noundef %i.ax, i32 noundef 8) ; 2 uses
  %.not7.i = icmp eq ptr %i.ay, null
  br i1 %.not7.i, label %sha256.exit.thread, label %bb.f

sha256.exit.thread:                               ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %12, ptr noundef nonnull align 1 dereferenceable(32) %i.ay, i64 noundef 32, i1 noundef false) #8
  %i.az = load ptr, ptr %i.a, align 8
  call void @gcry_md_close(ptr noundef %i.az)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %11, ptr noundef nonnull align 16 dereferenceable(16) %12, i64 noundef 16, i1 noundef false) #8
  br label %bb.g

bb.g:                                             ; preds = %sha256.exit.thread, %bb.a, %bb.f, %bb.c
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.f ], [ false, %bb.a ], [ false, %sha256.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i1 @dot11decrypt_derive_pmk_r1(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5, ptr noundef %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr noundef %8) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca [34 x i8], align 16               ; 9 uses
  %9 = alloca [32 x i8], align 16                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.c = insertelement <4 x ptr> poison, ptr %0, i64 0
  %i.d = insertelement <4 x ptr> %i.c, ptr %2, i64 1
  %i.e = insertelement <4 x ptr> %i.d, ptr %3, i64 2
  %i.f = insertelement <4 x ptr> %i.e, ptr %4, i64 3
  %i.g = icmp ne ptr %6, null
  %i.h = icmp ne ptr %7, null
  %i.i = icmp ne ptr %8, null
  %i.j = icmp eq <4 x ptr> %i.f, splat (ptr null)
  %i.k = bitcast <4 x i1> %i.j to i4
  %i.l = icmp eq i4 %i.k, 0
  %op.rdx = and i1 %i.l, %i.g
  %op.rdx55 = and i1 %i.h, %i.i
  %op.rdx56 = and i1 %op.rdx, %op.rdx55
  br i1 %op.rdx56, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i32 @gcry_md_get_algo_dlen(i32 noundef %5)
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  store i64 %i.n, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.b, ptr noundef nonnull align 1 dereferenceable(6) %3, i64 noundef 6, i1 noundef false) #8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 6 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.o, ptr noundef nonnull align 1 dereferenceable(6) %4, i64 noundef 6, i1 noundef false) #8
  %i.p = call zeroext i1 @dot11decrypt_kdf(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.b, i64 noundef 12, i32 noundef %5, ptr noundef nonnull %6, i64 noundef %i.n) ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.b, ptr noundef nonnull align 1 dereferenceable(6) @.str.6, i64 noundef 6, i1 noundef false) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %i.o, ptr noundef nonnull align 1 dereferenceable(16) %2, i64 noundef 16, i1 noundef false) #8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.q, ptr noundef nonnull align 1 dereferenceable(6) %3, i64 noundef 6, i1 noundef false) #8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.r, ptr noundef nonnull align 1 dereferenceable(6) %4, i64 noundef 6, i1 noundef false) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.s = call i32 @gcry_md_open(ptr noundef nonnull %i.a, i32 noundef 8, i32 noundef 0)
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.c, label %sha256.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.a, align 8
  call void @gcry_md_write(ptr noundef %i.t, ptr noundef nonnull %i.b, i64 noundef 34)
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = call ptr @gcry_md_read(ptr noundef %i.u, i32 noundef 8) ; 2 uses
  %.not7.i = icmp eq ptr %i.v, null
  br i1 %.not7.i, label %sha256.exit.thread, label %bb.d

sha256.exit.thread:                               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 1 dereferenceable(32) %i.v, i64 noundef 32, i1 noundef false) #8
  %i.w = load ptr, ptr %i.a, align 8
  call void @gcry_md_close(ptr noundef %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) %9, i64 noundef 16, i1 noundef false) #8
  br label %bb.e

bb.e:                                             ; preds = %sha256.exit.thread, %bb.a, %bb.d
  %.0 = phi i1 [ true, %bb.d ], [ false, %bb.a ], [ false, %sha256.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden noundef zeroext i1 @dot11decrypt_derive_ft_ptk(ptr noundef %0, i64 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7, ptr noundef %8, i64 noundef %9, ptr nofree noundef readnone captures(none) %10) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [76 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef align 1 dereferenceable(32) %3, i64 noundef 32, i1 noundef false) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef align 1 dereferenceable(32) %4, i64 noundef 32, i1 noundef false) #8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) %i.c, ptr noundef align 1 dereferenceable(6) %5, i64 noundef 6, i1 noundef false) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.d, ptr noundef align 1 dereferenceable(6) %6, i64 noundef 6, i1 noundef false) #8
  %i.e = call zeroext i1 @dot11decrypt_kdf(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a, i64 noundef 76, i32 noundef %7, ptr noundef %8, i64 noundef %9) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite)
declare ptr @__memcpy_chk(ptr noalias noundef writeonly, ptr noalias noundef readonly captures(none), i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @gcry_md_open(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @gcry_md_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @gcry_md_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare void @gcry_md_close(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{!7, !9}
!7 = distinct !{!7, !8, !"memcpy.inline: argument 0"}
!8 = distinct !{!8, !"memcpy.inline"}
!9 = distinct !{!9, !8, !"memcpy.inline: argument 1"}
!10 = !{!11, !13}
!11 = distinct !{!11, !12, !"memcpy.inline: argument 0"}
!12 = distinct !{!12, !"memcpy.inline"}
!13 = distinct !{!13, !12, !"memcpy.inline: argument 1"}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !19}
!17 = distinct !{!17, !18, !"memcpy.inline: argument 0"}
!18 = distinct !{!18, !"memcpy.inline"}
!19 = distinct !{!19, !18, !"memcpy.inline: argument 1"}
!20 = !{!21, !23}
!21 = distinct !{!21, !22, !"memcpy.inline: argument 0"}
!22 = distinct !{!22, !"memcpy.inline"}
!23 = distinct !{!23, !22, !"memcpy.inline: argument 1"}
!24 = !{!25, !27}
!25 = distinct !{!25, !26, !"memcpy.inline: argument 0"}
!26 = distinct !{!26, !"memcpy.inline"}
!27 = distinct !{!27, !26, !"memcpy.inline: argument 1"}
!28 = distinct !{!28, !15}
!29 = !{!30, !32}
!30 = distinct !{!30, !31, !"memcpy.inline: argument 0"}
!31 = distinct !{!31, !"memcpy.inline"}
!32 = distinct !{!32, !31, !"memcpy.inline: argument 1"}
!33 = !{!34, !36}
!34 = distinct !{!34, !35, !"memcpy.inline: argument 0"}
!35 = distinct !{!35, !"memcpy.inline"}
!36 = distinct !{!36, !35, !"memcpy.inline: argument 1"}
!37 = !{!38, !40}
!38 = distinct !{!38, !39, !"memcpy.inline: argument 0"}
!39 = distinct !{!39, !"memcpy.inline"}
!40 = distinct !{!40, !39, !"memcpy.inline: argument 1"}
!41 = !{!42, !44}
!42 = distinct !{!42, !43, !"memcpy.inline: argument 0"}
!43 = distinct !{!43, !"memcpy.inline"}
!44 = distinct !{!44, !43, !"memcpy.inline: argument 1"}
end_hunk_0
