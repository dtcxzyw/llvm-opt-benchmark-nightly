Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/ecc?download=true
inline.NumInlined: 104
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@ecc_verify_hash:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3128) %i.cb, i8 0, i64 3128, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 3120 ; 3 uses
  store i8 1, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 1040 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 2080 ; 3 uses
  %i.cg = call i32 @sp_init_multi(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.ce, ptr noundef nonnull %i.cf, ptr noundef null, ptr noundef null, ptr noundef null) #15 ; 3 uses
  %.not.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i, label %wc_ecc_new_point_ex.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ch = load i8, ptr %i.cd, align 8
  %i.ci = and i8 %i.ch, 1
  %.not21.i = icmp eq i8 %i.ci, 0
  br i1 %.not21.i, label %wc_ecc_del_point_ex.exit157, label %wc_ecc_del_point_ex.exit157.sink.split

wc_ecc_new_point_ex.exit:                         ; preds = %bb.m
  %i.cj = call ptr @wolfSSL_Malloc(i64 noundef 3128) #15 ; 22 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %.thread397, label %bb.o

bb.o:                                             ; preds = %wc_ecc_new_point_ex.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3128) %i.cj, i8 0, i64 3128, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 3120 ; 2 uses
  store i8 1, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 1040 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 2080 ; 2 uses
  %i.co = call i32 @sp_init_multi(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cn, ptr noundef null, ptr noundef null, ptr noundef null) #15 ; 3 uses
  %.not.i149 = icmp eq i32 %i.co, 0
  br i1 %.not.i149, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = load i8, ptr %i.cl, align 8
  %i.cq = and i8 %i.cp, 1
  %.not21.i150 = icmp eq i8 %i.cq, 0
  br i1 %.not21.i150, label %.thread397, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @wolfSSL_Free(ptr noundef nonnull %i.cj) #15
  br label %.thread397

bb.r:                                             ; preds = %bb.o
  %i.cr = load ptr, ptr %i.ap, align 8, !tbaa !43
  %i.cs = call i32 @sp_invmod(ptr noundef nonnull %1, ptr noundef %i.cr, ptr noundef nonnull %i.ak) #15 ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.s, label %.thread397

bb.s:                                             ; preds = %bb.r
  %i.cu = load ptr, ptr %i.ap, align 8, !tbaa !43
  %i.cv = call i32 @sp_mulmod(ptr noundef nonnull %i.am, ptr noundef nonnull %i.ak, ptr noundef %i.cu, ptr noundef nonnull %i.am) #15 ; 2 uses
  %i.cw = icmp eq i32 %i.cv, 0
  br i1 %i.cw, label %bb.t, label %.thread397

bb.t:                                             ; preds = %bb.s
  %i.cx = load ptr, ptr %i.ap, align 8, !tbaa !43
  %i.cy = call i32 @sp_mulmod(ptr noundef nonnull %0, ptr noundef nonnull %i.ak, ptr noundef %i.cx, ptr noundef nonnull %i.ak) #15 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.u, label %.thread397

bb.u:                                             ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !47
  %i.dc = call i32 @sp_copy(ptr noundef %i.db, ptr noundef nonnull %i.cb) #15 ; 2 uses
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.v, label %.thread397

bb.v:                                             ; preds = %bb.u
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !48
  %i.dg = call i32 @sp_copy(ptr noundef %i.df, ptr noundef nonnull %i.ce) #15 ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.w, label %.thread397

bb.w:                                             ; preds = %bb.v
  %i.di = call i32 @sp_set(ptr noundef nonnull %i.cf, i64 noundef 1) #15 ; 2 uses
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %bb.x, label %.thread397

bb.x:                                             ; preds = %bb.w
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.dl = call i32 @sp_copy(ptr noundef nonnull %i.dk, ptr noundef nonnull %i.cj) #15 ; 2 uses
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.y, label %.thread397

bb.y:                                             ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 1072
  %i.do = call i32 @sp_copy(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.cm) #15 ; 2 uses
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.z, label %.thread397

bb.z:                                             ; preds = %bb.y
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 2112
  %i.dr = call i32 @sp_copy(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.cn) #15 ; 2 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %bb.aa, label %.thread397

bb.aa:                                            ; preds = %bb.z
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !42
  %i.dv = call i32 @ecc_mul2add(ptr noundef nonnull %i.cb, ptr noundef nonnull %i.am, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.cb, ptr poison, ptr noundef %i.du, ptr poison) ; 2 uses
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %bb.ab, label %.thread397

bb.ab:                                            ; preds = %bb.aa
  %i.dx = load ptr, ptr %i.ap, align 8, !tbaa !43
  %i.dy = call i32 @sp_mod(ptr noundef nonnull %i.cb, ptr noundef %i.dx, ptr noundef nonnull %i.ak) #15 ; 2 uses
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %bb.ac, label %.thread397

bb.ac:                                            ; preds = %bb.ab
  %i.ea = call i32 @sp_cmp(ptr noundef nonnull %i.ak, ptr noundef nonnull %0) #15
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.ad, label %.thread397

bb.ad:                                            ; preds = %bb.ac
  store i32 1, ptr %4, align 4, !tbaa !44
  br label %.thread397

.thread397:                                       ; preds = %bb.p, %bb.q, %wc_ecc_new_point_ex.exit, %bb.ab, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.0225232246254268276290298312320331338350 = phi ptr [ %i.cj, %bb.aa ], [ %i.cj, %bb.ab ], [ %i.cj, %bb.z ], [ %i.cj, %bb.y ], [ %i.cj, %bb.x ], [ %i.cj, %bb.w ], [ %i.cj, %bb.v ], [ %i.cj, %bb.u ], [ %i.cj, %bb.t ], [ %i.cj, %bb.s ], [ %i.cj, %bb.r ], [ %i.cj, %bb.ac ], [ %i.cj, %bb.ad ], [ null, %wc_ecc_new_point_ex.exit ], [ null, %bb.q ], [ null, %bb.p ] ; 6 uses
  %.14340347 = phi i32 [ %i.dv, %bb.aa ], [ %i.dy, %bb.ab ], [ %i.dr, %bb.z ], [ %i.do, %bb.y ], [ %i.dl, %bb.x ], [ %i.di, %bb.w ], [ %i.dg, %bb.v ], [ %i.dc, %bb.u ], [ %i.cy, %bb.t ], [ %i.cv, %bb.s ], [ %i.cs, %bb.r ], [ 0, %bb.ac ], [ 0, %bb.ad ], [ -125, %wc_ecc_new_point_ex.exit ], [ %i.co, %bb.q ], [ %i.co, %bb.p ] ; 3 uses
  call void @sp_clear(ptr noundef nonnull %i.cb) #15
  call void @sp_clear(ptr noundef nonnull %i.ce) #15
  call void @sp_clear(ptr noundef nonnull %i.cf) #15
  %i.ec = load i8, ptr %i.cd, align 8
  %i.ed = and i8 %i.ec, 1
  %.not8.i = icmp eq i8 %i.ed, 0
  br i1 %.not8.i, label %wc_ecc_del_point_ex.exit, label %bb.ae

bb.ae:                                            ; preds = %.thread397
  call void @wolfSSL_Free(ptr noundef nonnull %i.cb) #15
  br label %wc_ecc_del_point_ex.exit

wc_ecc_del_point_ex.exit:                         ; preds = %.thread397, %bb.ae
  %.not.i155 = icmp eq ptr %.0225232246254268276290298312320331338350, null
  br i1 %.not.i155, label %wc_ecc_del_point_ex.exit157, label %bb.af

bb.af:                                            ; preds = %wc_ecc_del_point_ex.exit
  call void @sp_clear(ptr noundef nonnull %.0225232246254268276290298312320331338350) #15
  %i.ee = getelementptr inbounds nuw i8, ptr %.0225232246254268276290298312320331338350, i64 1040
  call void @sp_clear(ptr noundef nonnull %i.ee) #15
  %i.ef = getelementptr inbounds nuw i8, ptr %.0225232246254268276290298312320331338350, i64 2080
  call void @sp_clear(ptr noundef nonnull %i.ef) #15
  %i.eg = getelementptr inbounds nuw i8, ptr %.0225232246254268276290298312320331338350, i64 3120
  %i.eh = load i8, ptr %i.eg, align 8
  %i.ei = and i8 %i.eh, 1
  %.not8.i156 = icmp eq i8 %i.ei, 0
  br i1 %.not8.i156, label %wc_ecc_del_point_ex.exit157, label %wc_ecc_del_point_ex.exit157.sink.split

wc_ecc_del_point_ex.exit157.sink.split:           ; preds = %bb.af, %bb.n
  %.sink = phi ptr [ %i.cb, %bb.n ], [ %.0225232246254268276290298312320331338350, %bb.af ]
  %.14340348410.ph = phi i32 [ %i.cg, %bb.n ], [ %.14340347, %bb.af ]
  call void @wolfSSL_Free(ptr noundef nonnull %.sink) #15
  br label %wc_ecc_del_point_ex.exit157

wc_ecc_del_point_ex.exit157:                      ; preds = %wc_ecc_del_point_ex.exit157.sink.split, %.thread445, %.thread191, %.thread188.thread, %bb.n, %bb.l, %.thread198, %wc_ecc_del_point_ex.exit, %bb.af
  %.14340348410 = phi i32 [ %i.aw, %.thread191 ], [ %.14340347, %wc_ecc_del_point_ex.exit ], [ %.14340347, %bb.af ], [ %i.cg, %bb.n ], [ %i.bz, %.thread198 ], [ -125, %bb.l ], [ %i.aw, %.thread445 ], [ %i.aw, %.thread188.thread ], [ %.14340348410.ph, %wc_ecc_del_point_ex.exit157.sink.split ]
  call void @sp_clear(ptr noundef nonnull %i.am) #15
  call void @sp_clear(ptr noundef nonnull %i.ak) #15
  br label %bb.ag

bb.ag:                                            ; preds = %.thread, %bb.f, %wc_ecc_del_point_ex.exit157
  %.0105 = phi i32 [ %.14340348410, %wc_ecc_del_point_ex.exit157 ], [ -234, %.thread ], [ -125, %bb.f ]
  ret i32 %.0105
}

; Function Attrs: nounwind uwtable
define i32 @wc_ecc_import_point_der_ex(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 %4) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %3, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp slt i32 %2, 0
  %or.cond3 = or i1 %i.c, %or.cond
  br i1 %or.cond3, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %narrow.i = icmp samesign ugt i32 %2, 4
  %i.d = and i32 %1, 1
  %i.e = icmp eq i32 %i.d, 0
  %or.cond61 = or i1 %narrow.i, %i.e
  br i1 %or.cond61, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @sp_clear(ptr noundef nonnull %3) #15
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 1040 ; 4 uses
  tail call void @sp_clear(ptr noundef nonnull %i.f) #15
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 2080 ; 4 uses
  tail call void @sp_clear(ptr noundef nonnull %i.g) #15
  %i.h = tail call i32 @sp_init_multi(ptr noundef nonnull %3, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef null, ptr noundef null, ptr noundef null) #15
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %0, align 1, !tbaa !51      ; 2 uses
  %i.j = add i8 %i.i, -5
  %or.cond9 = icmp ult i8 %i.j, -3
  %spec.select = select i1 %or.cond9, i32 -140, i32 0
  %i.k = and i8 %i.i, -2
  %or.cond12 = icmp eq i8 %i.k, 2
  %.1 = select i1 %or.cond12, i32 -174, i32 %spec.select ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.m = lshr i32 %1, 1                           ; 4 uses
  %i.n = icmp eq i32 %.1, 0
  br i1 %i.n, label %bb.e, label %.thread69

bb.e:                                             ; preds = %bb.d
  %i.o = zext nneg i32 %2 to i64
  %i.p = getelementptr inbounds nuw [88 x i8], ptr @ecc_sets, i64 %i.o
  %i.q = load i32, ptr %i.p, align 8, !tbaa !27
  %.not57 = icmp eq i32 %i.m, %i.q
  br i1 %.not57, label %bb.f, label %.thread69

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @sp_read_unsigned_bin(ptr noundef nonnull %3, ptr noundef nonnull %i.l, i32 noundef %i.m) #15 ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %.thread69

bb.g:                                             ; preds = %bb.f
  %i.t = zext nneg i32 %i.m to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.t
  %i.v = tail call i32 @sp_read_unsigned_bin(ptr noundef nonnull %i.f, ptr noundef nonnull %i.u, i32 noundef %i.m) #15 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %.thread69

bb.h:                                             ; preds = %bb.g
  %i.x = tail call i32 @sp_set(ptr noundef nonnull %i.g, i64 noundef 1) #15 ; 2 uses
  %.not58 = icmp eq i32 %i.x, 0
  br i1 %.not58, label %bb.i, label %.thread69

.thread69:                                        ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.572 = phi i32 [ %i.x, %bb.h ], [ %i.v, %bb.g ], [ %i.r, %bb.f ], [ -170, %bb.e ], [ %.1, %bb.d ]
  tail call void @sp_clear(ptr noundef nonnull %3) #15
  tail call void @sp_clear(ptr noundef nonnull %i.f) #15
  tail call void @sp_clear(ptr noundef nonnull %i.g) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread69, %bb.c, %bb.a, %bb.b
  %.052 = phi i32 [ -125, %bb.c ], [ -170, %bb.a ], [ 0, %bb.h ], [ -170, %bb.b ], [ %.572, %.thread69 ]
  ret i32 %.052
}

; Function Attrs: nounwind uwtable
define i32 @wc_ecc_import_point_der(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call i32 @wc_ecc_import_point_der_ex(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 poison)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @wc_ecc_export_point_der_ex(i32 noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i32 %4, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @wc_ecc_export_point_der(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -174, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @wc_ecc_export_point_der(i32 noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [257 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %narrow.i = icmp ugt i32 %0, 4
  br i1 %narrow.i, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [88 x i8], ptr @ecc_sets, i64 %i.b
  %i.d = load i32, ptr %i.c, align 8, !tbaa !27   ; 7 uses
  %i.e = icmp ne ptr %1, null                     ; 2 uses
  %i.f = icmp eq ptr %2, null                     ; 2 uses
  %i.g = icmp ne ptr %3, null                     ; 2 uses
  %i.h = and i1 %i.e, %i.g
  %or.cond3 = and i1 %i.f, %i.h
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = shl i32 %i.d, 1
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %.demorgan = and i1 %i.e, %i.g
  %i.j = xor i1 %.demorgan, true
  %or.cond7 = or i1 %i.f, %i.j
  br i1 %or.cond7, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %3, align 4, !tbaa !44
  %i.l = shl i32 %i.d, 1                          ; 3 uses
  %.not = icmp ugt i32 %i.k, %i.l
  br i1 %.not, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @sp_unsigned_bin_size(ptr noundef nonnull %1) #15
  %i.n = icmp ugt i32 %i.m, %i.d
  br i1 %i.n, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1040 ; 3 uses
  %i.p = tail call i32 @sp_unsigned_bin_size(ptr noundef nonnull %i.o) #15
  %i.q = icmp ugt i32 %i.p, %i.d
  br i1 %i.q, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 4, ptr %2, align 1, !tbaa !51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(257) %i.a, i8 0, i64 257, i1 false)
  %i.r = tail call i32 @sp_unsigned_bin_size(ptr noundef nonnull %1) #15
  %i.s = sub i32 %i.d, %i.r
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  %i.v = call i32 @sp_to_unsigned_bin(ptr noundef nonnull %1, ptr noundef nonnull %i.u) #15 ; 2 uses
  %.not54 = icmp eq i32 %i.v, 0
  br i1 %.not54, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  %i.x = zext i32 %i.d to i64                     ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 16 %i.a, i64 %i.x, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(257) %i.a, i8 0, i64 257, i1 false)
  %i.y = call i32 @sp_unsigned_bin_size(ptr noundef nonnull %i.o) #15
  %i.z = sub i32 %i.d, %i.y
  %i.aa = zext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aa
  %i.ac = call i32 @sp_to_unsigned_bin(ptr noundef nonnull %i.o, ptr noundef nonnull %i.ab) #15 ; 2 uses
  %.not55 = icmp eq i32 %i.ac, 0
  br i1 %.not55, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 16 %i.a, i64 %i.x, i1 false)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.c, %bb.j
  %.sink.in = phi i32 [ %i.l, %bb.j ], [ %i.i, %bb.c ], [ %i.l, %bb.e ]
  %.043.ph = phi i32 [ 0, %bb.j ], [ -202, %bb.c ], [ -132, %bb.e ]
  %.sink = or disjoint i32 %.sink.in, 1
  store i32 %.sink, ptr %3, align 4, !tbaa !44
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i, %bb.h, %bb.f, %bb.g, %bb.d, %bb.a
  %.043 = phi i32 [ -170, %bb.f ], [ -170, %bb.g ], [ -170, %bb.a ], [ %i.v, %bb.h ], [ -170, %bb.d ], [ %i.ac, %bb.i ], [ %.043.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.043
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define i32 @wc_ecc_export_x963(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [257 x i8], align 16              ; 8 uses
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %2, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27
  %i.h = shl i32 %i.g, 1
  %i.i = or disjoint i32 %i.h, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.j = phi i32 [ %i.i, %bb.d ], [ 133, %bb.c ]
  store i32 %i.j, ptr %2, align 4, !tbaa !44
  br label %bb.o

bb.f:                                             ; preds = %bb.b
  %i.k = load i32, ptr %0, align 8, !tbaa !34     ; 2 uses
  %i.l = icmp eq i32 %i.k, 3
  br i1 %i.l, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %cond = icmp eq i32 %i.k, 0
  br i1 %cond, label %_ecc_export_x963.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16
  %i.o = add i32 %i.n, -5
  %narrow.i.i = icmp ult i32 %i.o, -6
  br i1 %narrow.i.i, label %_ecc_export_x963.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
end_hunk_0
begin_hunk_1_@wc_ecc_check_key:bb.a

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.i = load i16, ptr %i.h, align 8, !tbaa !20
  %i.j = icmp eq i16 %i.i, 0
  br i1 %i.j, label %_ecc_validate_public_key.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17
  %i.m = call fastcc i32 @wc_ecc_curve_load(ptr noundef %i.l, ptr nonnull %1, i8 noundef zeroext 15) ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %ecc_check_pubkey_order.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42   ; 7 uses
  %i.s = call i32 @sp_cmp(ptr noundef nonnull %i.e, ptr noundef %i.r) #15
  %.not28.i = icmp eq i32 %i.s, -1
  br i1 %.not28.i, label %bb.f, label %ecc_check_pubkey_order.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.u = call i32 @sp_cmp(ptr noundef nonnull %i.t, ptr noundef %i.r) #15
  %.not29.i = icmp eq i32 %i.u, -1
  br i1 %.not29.i, label %bb.g, label %ecc_check_pubkey_order.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %i.v = call fastcc i32 @_ecc_is_point(ptr noundef nonnull %i.e, ptr noundef %i.p, ptr noundef %i.r) ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %ecc_check_pubkey_order.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !41
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !43  ; 2 uses
  %i.ab = call i32 @sp_count_bits(ptr noundef nonnull %i.e) #15
  %i.ac = call i32 @sp_count_bits(ptr noundef %i.r) #15
  %i.ad = icmp sgt i32 %i.ab, %i.ac
  br i1 %i.ad, label %ecc_check_pubkey_order.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = call i32 @sp_count_bits(ptr noundef nonnull %i.t) #15
  %i.af = call i32 @sp_count_bits(ptr noundef %i.r) #15
  %i.ag = icmp sgt i32 %i.ae, %i.af
  br i1 %i.ag, label %ecc_check_pubkey_order.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2112
  %i.ai = call i32 @sp_count_bits(ptr noundef nonnull %i.ah) #15
  %i.aj = call i32 @sp_count_bits(ptr noundef %i.r) #15
  %i.ak = icmp sgt i32 %i.ai, %i.aj
  br i1 %i.ak, label %ecc_check_pubkey_order.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = call ptr @wolfSSL_Malloc(i64 noundef 3128) #15 ; 10 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %ecc_check_pubkey_order.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(3128) %i.al, i8 0, i64 3128, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 3120 ; 3 uses
  store i8 1, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 1040 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 2080 ; 2 uses
  %i.aq = call i32 @sp_init_multi(ptr noundef nonnull %i.al, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ap, ptr noundef null, ptr noundef null, ptr noundef null) #15 ; 3 uses
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i.i, label %wc_ecc_new_point_ex.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load i8, ptr %i.an, align 8
  %i.as = and i8 %i.ar, 1
  %.not21.i.i.i = icmp eq i8 %i.as, 0
  br i1 %.not21.i.i.i, label %ecc_check_pubkey_order.exit.thread.i, label %wc_ecc_del_point_ex.exit.sink.split.i.i

wc_ecc_new_point_ex.exit.i.i:                     ; preds = %bb.l
  %i.at = call i32 @wc_ecc_mulmod_ex(ptr noundef %i.aa, ptr noundef nonnull %i.e, ptr noundef nonnull %i.al, ptr noundef readnone %i.y, ptr noundef %i.r, i32 noundef 1, ptr poison) ; 2 uses
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.n, label %bb.q

bb.n:                                             ; preds = %wc_ecc_new_point_ex.exit.i.i
  %i.av = load i16, ptr %i.al, align 8, !tbaa !20
  %i.aw = icmp eq i16 %i.av, 0
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = load i16, ptr %i.ao, align 8, !tbaa !20
  %i.ay = icmp eq i16 %i.ax, 0
  br i1 %i.ay, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %wc_ecc_new_point_ex.exit.i.i
  %.0.ph.i.i = phi i32 [ 0, %bb.o ], [ -215, %bb.p ], [ %i.at, %wc_ecc_new_point_ex.exit.i.i ] ; 2 uses
  call void @sp_clear(ptr noundef nonnull %i.al) #15
  call void @sp_clear(ptr noundef nonnull %i.ao) #15
  call void @sp_clear(ptr noundef nonnull %i.ap) #15
  %i.az = load i8, ptr %i.an, align 8
  %i.ba = and i8 %i.az, 1
  %.not8.i.i.i = icmp eq i8 %i.ba, 0
  br i1 %.not8.i.i.i, label %ecc_check_pubkey_order.exit.i, label %wc_ecc_del_point_ex.exit.sink.split.i.i

wc_ecc_del_point_ex.exit.sink.split.i.i:          ; preds = %bb.q, %bb.m
  %.017.ph.i.i = phi i32 [ %i.aq, %bb.m ], [ %.0.ph.i.i, %bb.q ]
  call void @wolfSSL_Free(ptr noundef nonnull %i.al) #15
  br label %ecc_check_pubkey_order.exit.i

ecc_check_pubkey_order.exit.i:                    ; preds = %wc_ecc_del_point_ex.exit.sink.split.i.i, %bb.q
  %.4.i = phi i32 [ %.0.ph.i.i, %bb.q ], [ %.017.ph.i.i, %wc_ecc_del_point_ex.exit.sink.split.i.i ] ; 2 uses
  %i.bb = icmp eq i32 %.4.i, 0
  br i1 %i.bb, label %bb.r, label %ecc_check_pubkey_order.exit.thread.i

bb.r:                                             ; preds = %ecc_check_pubkey_order.exit.i
  %i.bc = load i32, ptr %0, align 8, !tbaa !34
  %i.bd = icmp eq i32 %i.bc, 2
  br i1 %i.bd, label %bb.s, label %ecc_check_pubkey_order.exit.thread.i

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3160 ; 2 uses
  %i.bf = load i16, ptr %i.be, align 8, !tbaa !20
  %i.bg = icmp eq i16 %i.bf, 0
  br i1 %i.bg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = call i32 @sp_cmp(ptr noundef nonnull %i.be, ptr noundef %i.aa) #15
  %.not30.i = icmp eq i32 %i.bh, -1
  br i1 %.not30.i, label %ecc_check_pubkey_order.exit.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  br label %ecc_check_pubkey_order.exit.thread.i

ecc_check_pubkey_order.exit.thread.i:             ; preds = %bb.u, %bb.t, %bb.r, %ecc_check_pubkey_order.exit.i, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.5.i = phi i32 [ -216, %bb.u ], [ 0, %bb.t ], [ 0, %bb.r ], [ %.4.i, %ecc_check_pubkey_order.exit.i ], [ %i.aq, %bb.m ], [ -125, %bb.k ], [ -214, %bb.i ], [ -214, %bb.j ], [ -214, %bb.h ], [ %i.v, %bb.g ], [ -217, %bb.f ], [ %i.m, %bb.d ], [ -217, %bb.e ]
  call fastcc void @wc_ecc_curve_free(ptr noundef nonnull %1)
  br label %_ecc_validate_public_key.exit

_ecc_validate_public_key.exit:                    ; preds = %bb.a, %bb.c, %ecc_check_pubkey_order.exit.thread.i
  %.026.i = phi i32 [ %.5.i, %ecc_check_pubkey_order.exit.thread.i ], [ -173, %bb.a ], [ -215, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.026.i
}

; Function Attrs: nounwind uwtable
define i32 @wc_ecc_import_x963_ex2(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %1, 1
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc i32 @_ecc_import_x963_ex2(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.e, %bb.c ], [ -173, %bb.a ], [ -170, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_ecc_import_x963_ex2(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %3, i32 noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = and i32 %1, 1
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.thread89, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 3160 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 1072 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 2112 ; 3 uses
  %i.h = tail call i32 @sp_init_multi(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef null, ptr noundef null) #15
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %.thread89

bb.c:                                             ; preds = %bb.b
  %i.i = load i8, ptr %0, align 1, !tbaa !51      ; 2 uses
  %i.j = add i8 %i.i, -5
  %or.cond7 = icmp ult i8 %i.j, -3
  %spec.select = select i1 %or.cond7, i32 -140, i32 0
  %i.k = and i8 %i.i, -2
  %or.cond10 = icmp eq i8 %i.k, 2
  %.1 = select i1 %or.cond10, i32 -174, i32 %spec.select ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.m = icmp eq i32 %.1, 0
  br i1 %i.m, label %bb.d, label %.thread93

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i32 %1, 1                           ; 4 uses
  %i.o = icmp eq i32 %i.n, 0
  %i.p = icmp slt i32 %3, 0
  %or.cond.i = and i1 %i.o, %i.p
  br i1 %or.cond.i, label %.thread72, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ugt i32 %1, 133
  br i1 %i.q, label %.thread72, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %.not.i = icmp eq i32 %i.s, -1
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.r, align 4, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !17
  %i.u = icmp sgt i32 %3, 0
  br i1 %i.u, label %.split.us.preheader.i, label %.split.i

.split.us.preheader.i:                            ; preds = %bb.g
  %switch.tableidx = add nsw i32 %3, -4           ; 4 uses
  %i.v = icmp ult i32 %switch.tableidx, 13
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 7177, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.v, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %.thread72

.split.i:                                         ; preds = %bb.g
  %.not2836.i = icmp samesign ugt i32 %1, 57
  br i1 %.not2836.i, label %.lr.ph.preheader.i, label %.thread29.i

.lr.ph.preheader.i:                               ; preds = %.split.i
  %.not28.i = icmp samesign ugt i32 %1, 61
  br i1 %.not28.i, label %.lr.ph.1.i, label %.thread29.i

.lr.ph.1.i:                                       ; preds = %.lr.ph.preheader.i
  %.not28.1.i = icmp samesign ugt i32 %1, 65
  br i1 %.not28.1.i, label %.lr.ph.2.i, label %.thread29.i

.lr.ph.2.i:                                       ; preds = %.lr.ph.1.i
  %.not28.2.i = icmp samesign ugt i32 %1, 97      ; 2 uses
  %spec.select.i = select i1 %.not28.2.i, i32 4, i32 3
  %spec.select53.i = select i1 %.not28.2.i, ptr getelementptr inbounds nuw (i8, ptr @ecc_sets, i64 352), ptr getelementptr inbounds nuw (i8, ptr @ecc_sets, i64 264)
  br label %.thread29.i

switch.lookup:                                    ; preds = %.split.us.preheader.i
  %i.w = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.wc_ecc_import_private_key_ex, i64 %i.w
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.x = zext nneg i32 %switch.tableidx to i64
  %switch.gep101 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.wc_ecc_import_private_key_ex.14, i64 %i.x
  %switch.load102 = load ptr, ptr %switch.gep101, align 8
  br label %.thread29.i

.thread29.i:                                      ; preds = %switch.lookup, %.lr.ph.2.i, %.lr.ph.1.i, %.lr.ph.preheader.i, %.split.i
  %.us-phi.i = phi i32 [ 1, %.lr.ph.preheader.i ], [ 0, %.split.i ], [ %switch.ext, %switch.lookup ], [ 2, %.lr.ph.1.i ], [ %spec.select.i, %.lr.ph.2.i ]
  %.us-phi33.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @ecc_sets, i64 88), %.lr.ph.preheader.i ], [ @ecc_sets, %.split.i ], [ %switch.load102, %switch.lookup ], [ getelementptr inbounds nuw (i8, ptr @ecc_sets, i64 176), %.lr.ph.1.i ], [ %spec.select53.i, %.lr.ph.2.i ]
  store i32 %.us-phi.i, ptr %i.r, align 4, !tbaa !16
  store ptr %.us-phi33.i, ptr %i.t, align 8, !tbaa !17
  br label %bb.h

.thread72:                                        ; preds = %.split.us.preheader.i, %bb.e, %bb.d
  %.1.i.ph = phi i32 [ -173, %bb.d ], [ -172, %.split.us.preheader.i ], [ -170, %bb.e ]
  store i32 1, ptr %2, align 8, !tbaa !34
  br label %.thread93

bb.h:                                             ; preds = %.thread29.i, %bb.f
  store i32 1, ptr %2, align 8, !tbaa !34
  %i.y = tail call i32 @sp_read_unsigned_bin(ptr noundef nonnull %i.e, ptr noundef nonnull %i.l, i32 noundef %i.n) #15 ; 2 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.i, label %.thread93

bb.i:                                             ; preds = %bb.h
  %i.aa = zext nneg i32 %i.n to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aa
  %i.ac = tail call i32 @sp_read_unsigned_bin(ptr noundef nonnull %i.f, ptr noundef nonnull %i.ab, i32 noundef %i.n) #15 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.j, label %.thread93

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call i32 @sp_set(ptr noundef nonnull %i.g, i64 noundef 1) #15 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = icmp ne i32 %4, 0
  %or.cond12 = and i1 %i.ag, %i.af
  br i1 %or.cond12, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ah = load i16, ptr %i.e, align 8, !tbaa !20
  %i.ai = icmp eq i16 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = load i16, ptr %i.f, align 8, !tbaa !20
  %i.ak = icmp eq i16 %i.aj, 0
  br i1 %i.ak, label %.thread93, label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.al = load i32, ptr %i.r, align 4, !tbaa !16  ; 2 uses
  %.not66 = icmp eq i32 %i.al, -1
  br i1 %.not66, label %.thread89, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = tail call i32 @wc_ecc_point_is_on_curve(ptr noundef nonnull %i.e, i32 noundef %i.al)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %.7 = phi i32 [ %i.am, %bb.n ], [ %i.ae, %bb.j ] ; 2 uses
  %.not67 = icmp eq i32 %.7, 0
  br i1 %.not67, label %.thread89, label %.thread93

.thread93:                                        ; preds = %bb.l, %bb.c, %.thread72, %bb.h, %bb.i, %bb.o
  %.796 = phi i32 [ %.7, %bb.o ], [ %.1, %bb.c ], [ %i.ac, %bb.i ], [ %i.y, %bb.h ], [ %.1.i.ph, %.thread72 ], [ -215, %bb.l ]
  tail call void @sp_clear(ptr noundef nonnull %i.e) #15
  tail call void @sp_clear(ptr noundef nonnull %i.f) #15
  tail call void @sp_clear(ptr noundef nonnull %i.g) #15
  tail call void @sp_forcezero(ptr noundef nonnull %i.d) #15
  br label %.thread89

.thread89:                                        ; preds = %bb.m, %bb.o, %.thread93, %bb.b, %bb.a
  %.060 = phi i32 [ -125, %bb.b ], [ -170, %bb.a ], [ %.796, %.thread93 ], [ 0, %bb.o ], [ 0, %bb.m ]
  ret i32 %.060
}

; Function Attrs: nounwind uwtable
define i32 @wc_ecc_import_x963_ex(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %wc_ecc_import_x963_ex2.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %1, 1
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %wc_ecc_import_x963_ex2.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc i32 @_ecc_import_x963_ex2(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 1)
  br label %wc_ecc_import_x963_ex2.exit

wc_ecc_import_x963_ex2.exit:                      ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.c ], [ -173, %bb.a ], [ -170, %bb.b ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define i32 @wc_ecc_import_x963(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond.i.i = or i1 %i.a, %i.b
  br i1 %or.cond.i.i, label %wc_ecc_import_x963_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %1, 1
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %wc_ecc_import_x963_ex.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc i32 @_ecc_import_x963_ex2(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %wc_ecc_import_x963_ex.exit

wc_ecc_import_x963_ex.exit:                       ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi i32 [ %i.e, %bb.c ], [ -173, %bb.a ], [ -170, %bb.b ]
  ret i32 %.0.i.i
}

; Function Attrs: nounwind uwtable
define i32 @wc_ecc_export_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ecc_export_ex.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !16
  %i.d = add i32 %i.c, -5
  %narrow.i.i = icmp ult i32 %i.d, -6
  br i1 %narrow.i.i, label %_ecc_export_ex.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_ecc_export_ex.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.f, align 8, !tbaa !27   ; 3 uses
  %.not.i = icmp eq ptr %5, null
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq ptr %6, null
  br i1 %i.i, label %_ecc_export_ex.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load i32, ptr %0, align 8, !tbaa !34
  %i.k = and i32 %i.j, -2
  %switch.i = icmp eq i32 %i.k, 2
  br i1 %switch.i, label %bb.g, label %_ecc_export_ex.exit

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3160
  %i.m = tail call i32 @wc_export_int(ptr noundef nonnull %i.l, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %i.h, i32 noundef %7) #15 ; 2 uses
  %.not54.i = icmp eq i32 %i.m, 0
  br i1 %.not54.i, label %bb.h, label %_ecc_export_ex.exit

bb.h:                                             ; preds = %bb.g, %bb.d
  %.not55.i = icmp eq ptr %1, null
  br i1 %.not55.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = icmp eq ptr %2, null
  br i1 %i.n, label %_ecc_export_ex.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = load i32, ptr %0, align 8, !tbaa !34
  %i.p = icmp eq i32 %i.o, 3
  br i1 %i.p, label %_ecc_export_ex.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = tail call i32 @wc_export_int(ptr noundef nonnull %i.q, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %i.h, i32 noundef %7) #15 ; 2 uses
  %.not56.i = icmp eq i32 %i.r, 0
  br i1 %.not56.i, label %bb.l, label %_ecc_export_ex.exit

bb.l:                                             ; preds = %bb.k, %bb.h
  %.not57.i = icmp eq ptr %3, null
  br i1 %.not57.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = icmp eq ptr %4, null
  br i1 %i.s, label %_ecc_export_ex.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = load i32, ptr %0, align 8, !tbaa !34
  %i.u = icmp eq i32 %i.t, 3
  br i1 %i.u, label %_ecc_export_ex.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
end_hunk_1
