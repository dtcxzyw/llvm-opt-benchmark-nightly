Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ctrl_params_translate?download=true
inline.NumInlined: 63
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@fix_ecdh_cofactor:bb.a
  store i32 %i.v, ptr %i.aj, align 4, !tbaa !32
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %bb.q, %bb.s, %bb.v, %bb.w, %bb.u, %bb.r, %bb.p, %bb.o, %bb.n, %bb.k, %bb.h, %bb.b
  %.037 = phi i32 [ 0, %bb.h ], [ %i.n, %bb.k ], [ -2, %bb.n ], [ %i.v, %bb.o ], [ 0, %bb.b ], [ -1, %bb.s ], [ %i.v, %bb.r ], [ %i.v, %bb.u ], [ %i.v, %bb.w ], [ %i.v, %bb.v ], [ %i.v, %bb.q ], [ %i.v, %bb.p ], [ %i.v, %bb.t ]
  ret i32 %.037
}

; Function Attrs: nounwind uwtable
define internal i32 @fix_ec_kdf_type(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i32 @fix_kdf_type(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @fix_ec_kdf_type.kdf_type_map)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @fix_rsa_padding_mode(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %i.a = tail call fastcc i32 @default_check(i32 noundef %0, ptr noundef %1) ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %0, label %.critedge.thread [
    i32 1, label %bb.c
    i32 8, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !30
  switch i32 %i.d, label %.critedge.thread [
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.f, ptr %i.g, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.h, ptr %i.e, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 50, ptr %i.i, align 4, !tbaa !32
  br label %.critedge.thread

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 28
  call void @OSSL_PARAM_construct_int(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %3, ptr noundef %i.m, ptr noundef nonnull %i.n) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %.thread

bb.f:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !30
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.g, label %.critedge.thread

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 5 uses
  switch i32 %i.u, label %.preheader [
    i32 1, label %bb.h
    i32 2, label %bb.i
  ]

.preheader:                                       ; preds = %bb.g
  %i.w = load i32, ptr %i.v, align 4, !tbaa !32
  switch i32 %i.w, label %bb.j [
    i32 1, label %bb.l
    i32 3, label %.fold.split
    i32 4, label %.fold.split89
    i32 5, label %.fold.split90
    i32 6, label %.fold.split91
    i32 7, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  %i.x = tail call i32 @OSSL_PARAM_get_int(ptr noundef nonnull %i.s, ptr noundef nonnull %i.v) #7
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.y = tail call i32 @OSSL_PARAM_get_uint(ptr noundef nonnull %i.s, ptr noundef nonnull %i.v) #7
  br label %.thread

bb.j:                                             ; preds = %.preheader
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1327, ptr noundef nonnull @__func__.fix_rsa_padding_mode) #7
  %i.z = load i32, ptr %i.o, align 8, !tbaa !30
  %i.aa = load i32, ptr %i.v, align 4, !tbaa !32
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 118, ptr noundef nonnull @.str.93, i32 noundef %i.z, i32 noundef 8, i32 noundef %i.aa) #7
  br label %.thread

bb.k:                                             ; preds = %.preheader
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1337, ptr noundef nonnull @__func__.fix_rsa_padding_mode) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 147, ptr noundef null) #7
  br label %.thread

.fold.split:                                      ; preds = %.preheader
  br label %bb.l

.fold.split89:                                    ; preds = %.preheader
  br label %bb.l

.fold.split90:                                    ; preds = %.preheader
  br label %bb.l

.fold.split91:                                    ; preds = %.preheader
  br label %bb.l

bb.l:                                             ; preds = %.preheader, %.fold.split91, %.fold.split90, %.fold.split89, %.fold.split
  %.064.lcssa.ph = phi i64 [ 4, %.fold.split90 ], [ 2, %.fold.split89 ], [ 1, %.fold.split ], [ 0, %.preheader ], [ 5, %.fold.split91 ]
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr @fix_rsa_padding_mode.str_value_map, i64 %.064.lcssa.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !61 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !33
  %i.af = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ad) #8
  %i.ag = trunc i64 %i.af to i32
  store i32 %i.ag, ptr %i.v, align 4, !tbaa !32
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.b, %bb.c, %bb.l, %bb.f, %bb.d
  %i.ah = tail call i32 @default_fixup_args(i32 noundef %0, ptr noundef %1, ptr noundef %2) ; 5 uses
  %i.ai = icmp slt i32 %i.ah, 1
  br i1 %i.ai, label %.thread, label %bb.m

bb.m:                                             ; preds = %.critedge.thread
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !30 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 2
  %i.am = icmp eq i32 %0, 7
  %or.cond = and i1 %i.am, %i.al
  br i1 %or.cond, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = icmp eq i32 %i.ak, 1
  %i.ao = icmp eq i32 %0, 2
  %or.cond3 = and i1 %i.ao, %i.an
  br i1 %or.cond3, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !33 ; 7 uses
  %i.ar = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aq, ptr noundef nonnull dereferenceable(6) @.str.87) #8
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.thread76, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aq, ptr noundef nonnull dereferenceable(5) @.str.88) #8
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.thread76, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aq, ptr noundef nonnull dereferenceable(5) @.str.89) #8
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.thread76, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aq, ptr noundef nonnull dereferenceable(5) @.str.90) #8
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.thread76, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aq, ptr noundef nonnull dereferenceable(5) @.str.91) #8
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.thread76, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aq, ptr noundef nonnull dereferenceable(4) @.str.92) #8
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %.thread76, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aq, ptr noundef nonnull dereferenceable(1) null) #8
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %.thread76, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1357, ptr noundef nonnull @__func__.fix_rsa_padding_mode) #7
  %i.bf = load i32, ptr %i.aj, align 8, !tbaa !30
  %i.bg = load ptr, ptr %i.ap, align 8, !tbaa !33
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 118, ptr noundef nonnull @.str.94, i32 noundef %i.bf, i32 noundef %0, ptr noundef %i.bg) #7
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 -2, ptr %i.bh, align 4, !tbaa !32
  br label %bb.y

.thread76:                                        ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  %.080.lcssa = phi i64 [ 0, %bb.o ], [ 1, %bb.p ], [ 2, %bb.q ], [ 3, %bb.r ], [ 4, %bb.s ], [ 5, %bb.t ], [ 6, %bb.u ]
  %i.bi = icmp eq i32 %0, 2
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr @fix_rsa_padding_mode.str_value_map, i64 %.080.lcssa
  %i.bk = load i32, ptr %i.bj, align 16, !tbaa !62 ; 2 uses
  br i1 %i.bi, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.thread76
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !58
  store i32 %i.bk, ptr %i.bm, align 4, !tbaa !42
  br label %bb.y

bb.x:                                             ; preds = %.thread76
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %i.bk, ptr %i.bn, align 4, !tbaa !32
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v
  %.066 = phi i32 [ -2, %bb.v ], [ %i.ah, %bb.w ], [ %i.ah, %bb.x ]
  store ptr null, ptr %i.ap, align 8, !tbaa !33
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.h, %bb.k, %bb.j, %bb.n, %bb.y, %.critedge.thread, %bb.a, %bb.e
  %.168 = phi i32 [ %i.ah, %bb.n ], [ %i.a, %bb.a ], [ %i.ah, %.critedge.thread ], [ 1, %bb.e ], [ %.066, %bb.y ], [ %i.y, %bb.i ], [ %i.x, %bb.h ], [ -2, %bb.k ], [ -2, %bb.j ]
  ret i32 %.168
}

; Function Attrs: nounwind uwtable
define internal i32 @fix_rsa_pss_saltlen(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i32 @default_check(i32 noundef %0, ptr noundef %1) ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %0, 1
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30   ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.h, ptr %i.i, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.j, ptr %i.g, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 50, ptr %i.k, align 4, !tbaa !32
  br label %.thread63

bb.e:                                             ; preds = %bb.c
  %i.l = icmp eq i32 %i.e, 2
  br i1 %i.l, label %bb.g, label %.thread63

bb.f:                                             ; preds = %bb.b
  %i.m = icmp eq i32 %0, 8
  %or.cond3 = and i1 %i.m, %i.f
  br i1 %or.cond3, label %bb.g, label %.thread63

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !32   ; 3 uses
  %i.p = icmp ugt i32 %i.o, -4
  br i1 %i.p, label %switch.lookup, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.r = tail call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.q, i64 noundef 50, ptr noundef nonnull @.str.97, i32 noundef %i.o) #7 ; 0 uses
  br label %bb.i

switch.lookup:                                    ; preds = %bb.g
  %switch.tableidx = add i32 %i.o, 3
  %i.s = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.fix_rsa_pss_saltlen, i64 %i.s
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr @fix_rsa_pss_saltlen.str_value_map, i64 %switch.ext
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !61
  %i.x = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(1) %i.w, i64 noundef 49) #7 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 113
  store i8 0, ptr %i.y, align 1, !tbaa !38
  br label %bb.i

bb.i:                                             ; preds = %switch.lookup, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !33
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #8
  %i.ac = trunc i64 %i.ab to i32
  store i32 %i.ac, ptr %i.n, align 4, !tbaa !32
  br label %.thread63

.thread63:                                        ; preds = %bb.e, %bb.f, %bb.i, %bb.d
  %i.ad = tail call i32 @default_fixup_args(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2) ; 4 uses
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %bb.t, label %bb.j

bb.j:                                             ; preds = %.thread63
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !30 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, 2
  %i.ai = icmp eq i32 %0, 7
  %or.cond5 = and i1 %i.ai, %i.ah
  br i1 %or.cond5, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = icmp eq i32 %i.ag, 1
  %i.ak = icmp eq i32 %0, 2
  %or.cond7 = and i1 %i.ak, %i.aj
  br i1 %or.cond7, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !33 ; 4 uses
  %i.an = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.am, ptr noundef nonnull dereferenceable(7) @.str.31) #8
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.thread66, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.am, ptr noundef nonnull dereferenceable(4) @.str.95) #8
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.thread66, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.am, ptr noundef nonnull dereferenceable(5) @.str.96) #8
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.thread66, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.at = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.am, ptr noundef null, i32 noundef 10) #7, !inline_history !0
  %i.au = trunc i64 %i.at to i32
  br label %bb.p

.thread66:                                        ; preds = %bb.n, %bb.m, %bb.l
  %.072.lcssa = phi i64 [ 0, %bb.l ], [ 1, %bb.m ], [ 2, %bb.n ]
  %i.av = getelementptr inbounds nuw [16 x i8], ptr @fix_rsa_pss_saltlen.str_value_map, i64 %.072.lcssa
  %i.aw = load i32, ptr %i.av, align 16, !tbaa !62
  br label %bb.p

bb.p:                                             ; preds = %.thread66, %bb.o
  %i.ax = phi i32 [ %i.au, %bb.o ], [ %i.aw, %.thread66 ] ; 2 uses
  %i.ay = icmp eq i32 %0, 2
  br i1 %i.ay, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !58
  store i32 %i.ax, ptr %i.ba, align 4, !tbaa !42
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %i.ax, ptr %i.bb, align 4, !tbaa !32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  store ptr null, ptr %i.al, align 8, !tbaa !33
  br label %bb.t

bb.t:                                             ; preds = %bb.k, %bb.s, %.thread63, %bb.a
  %.059 = phi i32 [ %i.ad, %.thread63 ], [ %i.a, %bb.a ], [ %i.ad, %bb.s ], [ %i.ad, %bb.k ]
  ret i32 %.059
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 2) i32 @fix_hkdf_mode(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i32 @default_check(i32 noundef %0, ptr noundef %1) ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.e = icmp eq i32 %i.d, 2
  %i.f = icmp eq i32 %0, 1
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %i.d, 1
  %i.h = icmp eq i32 %0, 8
  %or.cond4 = and i1 %i.h, %i.g
  br i1 %or.cond4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !32   ; 2 uses
  %i.k = icmp ult i32 %i.j, 3
  br i1 %i.k, label %switch.lookup, label %.critedge

switch.lookup:                                    ; preds = %bb.d
  %switch.idx.cast = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr @fix_hkdf_mode.str_value_map, i64 %switch.idx.cast
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.n, ptr %i.o, align 8, !tbaa !33
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #8
  %i.q = trunc i64 %i.p to i32
  store i32 %i.q, ptr %i.i, align 4, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %switch.lookup, %bb.c
  %i.r = tail call i32 @default_fixup_args(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2) ; 2 uses
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.u = icmp eq i32 %i.t, 2
  %i.v = icmp eq i32 %0, 7
  %or.cond6 = and i1 %i.v, %i.u
  br i1 %or.cond6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = icmp eq i32 %i.t, 1
  %i.x = icmp eq i32 %0, 2
  %or.cond8 = and i1 %i.x, %i.w
  br i1 %or.cond8, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !33   ; 3 uses
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(19) @.str.98) #8
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.thread55, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(13) @.str.99) #8
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.thread55, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(12) @.str.100) #8
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.thread55, label %.critedge

.thread55:                                        ; preds = %bb.j, %bb.i, %bb.h
  %.062.lcssa = phi i64 [ 0, %bb.h ], [ 1, %bb.i ], [ 2, %bb.j ]
  %i.ag = icmp eq i32 %0, 2
  br i1 %i.ag, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread55
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr @fix_hkdf_mode.str_value_map, i64 %.062.lcssa
  %i.ai = load i32, ptr %i.ah, align 16, !tbaa !62
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !32
  br label %bb.l

bb.l:                                             ; preds = %.thread55, %bb.k
  store ptr null, ptr %i.y, align 8, !tbaa !33
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.j, %bb.g, %bb.l, %bb.e, %bb.a
  %.3 = phi i32 [ 0, %bb.d ], [ 1, %bb.g ], [ %i.a, %bb.a ], [ %i.r, %bb.e ], [ 1, %bb.l ], [ 0, %bb.j ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal i32 @fix_cipher(i32 noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i32 @default_check(i32 noundef %0, ptr noundef readonly %1) ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %fix_cipher_md.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %0, label %.critedge.thread.i [
    i32 1, label %bb.c
    i32 8, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !30
  switch i32 %i.d, label %.critedge.thread.i [
    i32 1, label %bb.d
    i32 2, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr %i.f, ptr %i.g, align 8, !tbaa !58
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  store ptr %i.h, ptr %i.e, align 8, !tbaa !33
  br label %.critedge.thread.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.m = load i32, ptr %i.l, align 4, !tbaa !32
  %i.n = tail call ptr @OBJ_nid2sn(i32 noundef %i.m) #7
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.o = tail call ptr @EVP_CIPHER_get0_name(ptr noundef nonnull %i.j) #7
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi ptr [ %i.n, %bb.f ], [ %i.o, %bb.g ] ; 2 uses
  store ptr %i.p, ptr %i.i, align 8, !tbaa !33
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #8
  %i.r = trunc i64 %i.q to i32
  br label %.critedge.thread.sink.split.i

bb.i:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !30
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.j, label %.critedge.thread.i

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33   ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = tail call ptr @EVP_CIPHER_get0_name(ptr noundef nonnull %i.w) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.z = phi ptr [ %i.y, %bb.k ], [ @.str.82, %bb.j ] ; 2 uses
  store ptr %i.z, ptr %i.v, align 8, !tbaa !33
  %i.aa = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #8
  %i.ab = trunc i64 %i.aa to i32
  br label %.critedge.thread.sink.split.i

.critedge.thread.sink.split.i:                    ; preds = %bb.l, %bb.h, %bb.d
  %.sink.i = phi i32 [ %i.r, %bb.h ], [ %i.ab, %bb.l ], [ 50, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %.sink.i, ptr %i.ac, align 4, !tbaa !32
  br label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.thread.sink.split.i, %bb.i, %bb.c, %bb.b
  %i.ad = tail call i32 @default_fixup_args(i32 noundef %0, ptr noundef readonly %1, ptr noundef %2) ; 6 uses
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %fix_cipher_md.exit, label %bb.m

bb.m:                                             ; preds = %.critedge.thread.i
  switch i32 %0, label %fix_cipher_md.exit [
    i32 2, label %bb.n
    i32 7, label %bb.p
  ]

bb.n:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !30
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %bb.o, label %fix_cipher_md.exit

bb.o:                                             ; preds = %bb.n
  %i.ai = load ptr, ptr %2, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !59
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !33
  %i.an = tail call ptr @evp_get_cipherbyname_ex(ptr noundef %i.ak, ptr noundef %i.am) #7
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !58
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !43
  br label %.sink.split.i

bb.p:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !30
  %i.as = icmp eq i32 %i.ar, 2
  br i1 %i.as, label %bb.q, label %fix_cipher_md.exit

bb.q:                                             ; preds = %bb.p
  %i.at = load ptr, ptr %2, align 8, !tbaa !34
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !59
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !33
  %i.ay = tail call ptr @evp_get_cipherbyname_ex(ptr noundef %i.av, ptr noundef %i.ax) #7
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !33
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.q, %bb.o
  %.sink56.i = phi i32 [ 1, %bb.o ], [ 0, %bb.q ]
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %.sink56.i, ptr %i.az, align 4, !tbaa !32
  br label %fix_cipher_md.exit

fix_cipher_md.exit:                               ; preds = %bb.a, %.critedge.thread.i, %bb.m, %bb.n, %bb.p, %.sink.split.i
  %.0.i = phi i32 [ %i.ad, %.critedge.thread.i ], [ %i.a, %bb.a ], [ %i.ad, %bb.m ], [ %i.ad, %bb.n ], [ %i.ad, %bb.p ], [ %i.ad, %.sink.split.i ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @fix_group_ecx(i32 noundef %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !41
  switch i32 %0, label %bb.h [
    i32 7, label %bb.b
    i32 8, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !34
  %i.c = load i32, ptr %i.b, align 8, !tbaa !37
  %i.d = and i32 %i.c, 6
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !30
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.h = call i32 @OSSL_PARAM_get_utf8_string_ptr(ptr noundef %i.g, ptr noundef nonnull %i.a) #7
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %2, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !72
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.n = call i32 @OPENSSL_strcasecmp(ptr noundef %i.l, ptr noundef %i.m) #7
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @ERR_new() #7
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2071, ptr noundef nonnull @__func__.fix_group_ecx) #7
end_hunk_0
