Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/ecc?download=true
inline.NumInlined: 104
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@ecc_verify_hash:bb.a
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
  %i.l = add nsw i32 %1, -1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.n = lshr exact i32 %i.l, 1                   ; 4 uses
  %i.o = icmp eq i32 %.1, 0
  br i1 %i.o, label %bb.e, label %.thread69

bb.e:                                             ; preds = %bb.d
  %i.p = zext nneg i32 %2 to i64
  %i.q = getelementptr inbounds nuw [88 x i8], ptr @ecc_sets, i64 %i.p
  %i.r = load i32, ptr %i.q, align 8, !tbaa !27
  %.not57 = icmp eq i32 %i.n, %i.r
  br i1 %.not57, label %bb.f, label %.thread69

bb.f:                                             ; preds = %bb.e
  %i.s = tail call i32 @sp_read_unsigned_bin(ptr noundef nonnull %3, ptr noundef nonnull %i.m, i32 noundef %i.n) #15 ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %.thread69

bb.g:                                             ; preds = %bb.f
  %i.u = zext nneg i32 %i.n to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.u
  %i.w = tail call i32 @sp_read_unsigned_bin(ptr noundef nonnull %i.f, ptr noundef nonnull %i.v, i32 noundef %i.n) #15 ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %.thread69

bb.h:                                             ; preds = %bb.g
  %i.y = tail call i32 @sp_set(ptr noundef nonnull %i.g, i64 noundef 1) #15 ; 2 uses
  %.not58 = icmp eq i32 %i.y, 0
  br i1 %.not58, label %bb.i, label %.thread69

.thread69:                                        ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.572 = phi i32 [ %i.y, %bb.h ], [ %i.w, %bb.g ], [ %i.s, %bb.f ], [ -170, %bb.e ], [ %.1, %bb.d ]
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
  %.not54.a = icmp eq i32 %i.v, 0
  br i1 %.not54.a, label %bb.i, label %bb.k

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
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ecc_export_x963.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load i32, ptr %i.q, align 8, !tbaa !27   ; 6 uses
  %i.t = load i32, ptr %2, align 4, !tbaa !44
  %i.u = shl i32 %i.s, 1                          ; 2 uses
  %i.v = or disjoint i32 %i.u, 1
  %.not.i = icmp ugt i32 %i.t, %i.u
  br i1 %.not.i, label %bb.k, label %_ecc_export_x963.exit.sink.split

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.x = tail call i32 @sp_unsigned_bin_size(ptr noundef nonnull %i.w) #15 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.z = tail call i32 @sp_unsigned_bin_size(ptr noundef nonnull %i.y) #15 ; 2 uses
  %i.aa = icmp ugt i32 %i.x, %i.s
  %i.ab = icmp ugt i32 %i.z, %i.s
  %or.cond.i = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond.i, label %_ecc_export_x963.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 4, ptr %1, align 1, !tbaa !51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(257) %i.a, i8 0, i64 257, i1 false)
  %i.ac = sub nuw i32 %i.s, %i.x
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ad
  %i.af = call i32 @sp_to_unsigned_bin(ptr noundef nonnull %i.w, ptr noundef nonnull %i.ae) #15 ; 2 uses
  %.not65.i.a = icmp eq i32 %i.af, 0
  br i1 %.not65.i.a, label %bb.m, label %_ecc_export_x963.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.ah = zext i32 %i.s to i64                    ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 16 %i.a, i64 %i.ah, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(257) %i.a, i8 0, i64 257, i1 false)
  %i.ai = sub nuw i32 %i.s, %i.z
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aj
  %i.al = call i32 @sp_to_unsigned_bin(ptr noundef nonnull %i.y, ptr noundef nonnull %i.ak) #15 ; 2 uses
  %.not66.i = icmp eq i32 %i.al, 0
  br i1 %.not66.i, label %bb.n, label %_ecc_export_x963.exit

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull align 16 %i.a, i64 %i.ah, i1 false)
  br label %_ecc_export_x963.exit.sink.split

_ecc_export_x963.exit.sink.split:                 ; preds = %bb.j, %bb.n
  %.049.i.ph = phi i32 [ 0, %bb.n ], [ -132, %bb.j ]
  store i32 %i.v, ptr %2, align 4, !tbaa !44
  br label %_ecc_export_x963.exit

_ecc_export_x963.exit:                            ; preds = %_ecc_export_x963.exit.sink.split, %bb.h, %bb.i, %bb.g, %bb.k, %bb.l, %bb.m
  %.049.i = phi i32 [ -132, %bb.k ], [ -170, %bb.i ], [ -170, %bb.h ], [ %i.al, %bb.m ], [ %i.af, %bb.l ], [ -170, %bb.g ], [ %.049.i.ph, %_ecc_export_x963.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %bb.a, %_ecc_export_x963.exit, %bb.e
  %.0 = phi i32 [ %.049.i, %_ecc_export_x963.exit ], [ -202, %bb.e ], [ -170, %bb.a ], [ -246, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @wc_ecc_export_x963_ex(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @wc_ecc_export_x963(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -174, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @_ecc_is_point(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 {
bb.a:
  %3 = alloca [1 x %struct.sp_int], align 16      ; 19 uses
  %4 = alloca [1 x %struct.sp_int], align 16      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.a = call i32 @sp_init_multi(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #15 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.c = call i32 @sp_sqr(ptr noundef nonnull %i.b, ptr noundef nonnull %3) #15 ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %.critedge31

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @sp_sqr(ptr noundef nonnull %0, ptr noundef nonnull %4) #15 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %.critedge31

bb.d:                                             ; preds = %bb.c
  %i.g = call i32 @sp_mod(ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %4) #15 ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %.critedge31

bb.e:                                             ; preds = %bb.d
  %i.i = call i32 @sp_mul(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %4) #15 ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %.critedge31

bb.f:                                             ; preds = %bb.e
  %i.k = call i32 @sp_submod(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %3) #15 ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.g, label %.critedge31

bb.g:                                             ; preds = %bb.f
  %i.m = call i32 @sp_add(ptr noundef nonnull %3, ptr noundef nonnull %0, ptr noundef nonnull %3) #15 ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %.critedge31

bb.h:                                             ; preds = %bb.g
  %i.o = call i32 @sp_add(ptr noundef nonnull %3, ptr noundef nonnull %0, ptr noundef nonnull %3) #15 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.i, label %.critedge31

bb.i:                                             ; preds = %bb.h
  %i.q = call i32 @sp_add(ptr noundef nonnull %3, ptr noundef nonnull %0, ptr noundef nonnull %3) #15 ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.thread17, label %.critedge31

.thread17:                                        ; preds = %bb.i
  %i.s = call i32 @sp_mod(ptr noundef nonnull %3, ptr noundef %2, ptr noundef nonnull %3) #15 ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %.critedge31

.lr.ph:                                           ; preds = %.thread17, %bb.j
  %i.u = call i32 @sp_cmp(ptr noundef nonnull %3, ptr noundef %2) #15
  %.not29 = icmp eq i32 %i.u, -1
  br i1 %.not29, label %.critedge, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.v = call i32 @sp_sub(ptr noundef nonnull %3, ptr noundef %2, ptr noundef nonnull %3) #15 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %.critedge31, !llvm.loop !66

.critedge:                                        ; preds = %.lr.ph
  %i.x = call i32 @sp_cmp(ptr noundef nonnull %3, ptr noundef %1) #15
  %.not30 = icmp eq i32 %i.x, 0
  %. = select i1 %.not30, i32 0, i32 -214
  br label %.critedge31

.critedge31:                                      ; preds = %bb.j, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %.thread17, %.critedge
  %.10 = phi i32 [ %., %.critedge ], [ %i.s, %.thread17 ], [ %i.q, %bb.i ], [ %i.c, %bb.b ], [ %i.e, %bb.c ], [ %i.g, %bb.d ], [ %i.i, %bb.e ], [ %i.k, %bb.f ], [ %i.m, %bb.g ], [ %i.o, %bb.h ], [ %i.v, %bb.j ]
  call void @sp_clear(ptr noundef nonnull %3) #15
  call void @sp_clear(ptr noundef nonnull %4) #15
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %.critedge31
  %.026 = phi i32 [ %.10, %.critedge31 ], [ %i.a, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %.026
}

; Function Attrs: nounwind uwtable
define i32 @wc_ecc_check_key(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [640 x i8], align 16              ; 3 uses
  %1 = alloca %struct.ecc_curve_spec, align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %1, i8 0, i64 80, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.a, ptr %i.b, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i32 4, ptr %i.c, align 8, !tbaa !39
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %_ecc_validate_public_key.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.f = load i16, ptr %i.e, align 8, !tbaa !20
  %i.g = icmp eq i16 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d

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
end_hunk_0
