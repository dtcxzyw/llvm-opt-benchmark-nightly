Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/pmbtoken?download=true
inline.NumInlined: 106
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL13pmbtoken_signPK15PMBTOKEN_METHODPK22TRUST_TOKEN_ISSUER_KEYP6cbb_stP6cbs_stmmh:bb.a
  br i1 %.not143, label %.thread180, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cg = call fastcc noundef i32 @_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE(ptr noundef nonnull %8, ptr noundef %i.e, ptr noundef nonnull %i.bd)
  %.not144 = icmp eq i32 %i.cg, 0
  br i1 %.not144, label %.thread180, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw [216 x i8], ptr %i.g, i64 %.0116192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ch, ptr noundef nonnull align 8 dereferenceable(216) %10, i64 216, i1 false), !tbaa.struct !28
  %i.ci = getelementptr inbounds nuw [216 x i8], ptr %i.h, i64 %.0116192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ci, ptr noundef nonnull align 16 dereferenceable(216) %13, i64 216, i1 false), !tbaa.struct !28
  %i.cj = getelementptr inbounds nuw [216 x i8], ptr %i.i, i64 %.0116192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.cj, ptr noundef nonnull align 8 dereferenceable(216) %i.ay, i64 216, i1 false), !tbaa.struct !28
  %i.ck = getelementptr inbounds nuw [216 x i8], ptr %i.j, i64 %.0116192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ck, ptr noundef nonnull align 16 dereferenceable(216) %i.az, i64 216, i1 false), !tbaa.struct !28
  %i.cl = call i32 @CBB_flush(ptr noundef %2) #4
  %.not145 = icmp eq i32 %i.cl, 0
  br i1 %.not145, label %.thread180, label %bb.z

.thread180:                                       ; preds = %bb.u, %bb.n, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.x, %bb.w, %bb.v, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  br label %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit.thread

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  %i.cm = add nuw i64 %.0116192, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cm, %5
  br i1 %exitcond.not, label %.lr.ph194, label %bb.k, !llvm.loop !34

bb.aa:                                            ; preds = %.lr.ph194
  %i.cn = add nuw i64 %.0115193, 1                ; 2 uses
  %exitcond197.not = icmp eq i64 %i.cn, %5
  br i1 %exitcond197.not, label %._crit_edge, label %.lr.ph194, !llvm.loop !35

.lr.ph194:                                        ; preds = %bb.z, %bb.aa
  %.0115193 = phi i64 [ %i.cn, %bb.aa ], [ 0, %bb.z ] ; 3 uses
  %i.co = getelementptr inbounds nuw [72 x i8], ptr %i.k, i64 %.0115193
  %i.cp = call fastcc noundef i32 @_ZL12hash_c_batchPK15PMBTOKEN_METHODP9EC_SCALARPK6cbb_stm(ptr noundef nonnull %0, ptr noundef nonnull %i.co, ptr noundef %8, i64 noundef %.0115193)
  %.not146 = icmp eq i32 %i.cp, 0
  br i1 %.not146, label %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit.thread, label %bb.aa

._crit_edge:                                      ; preds = %bb.aa, %.preheader191
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #4
  %i.cq = call i32 @ec_point_mul_scalar_public_batch(ptr noundef %i.e, ptr noundef nonnull %15, ptr noundef null, ptr noundef nonnull %i.g, ptr noundef nonnull %i.k, i64 noundef %5) #4
  %.not147 = icmp eq i32 %i.cq, 0
  br i1 %.not147, label %bb.ak, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge
  %i.cr = call i32 @ec_point_mul_scalar_public_batch(ptr noundef %i.e, ptr noundef nonnull %16, ptr noundef null, ptr noundef nonnull %i.h, ptr noundef nonnull %i.k, i64 noundef %5) #4
  %.not148 = icmp eq i32 %i.cr, 0
  br i1 %.not148, label %bb.ak, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cs = call i32 @ec_point_mul_scalar_public_batch(ptr noundef %i.e, ptr noundef nonnull %17, ptr noundef null, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k, i64 noundef %5) #4
  %.not149 = icmp eq i32 %i.cs, 0
  br i1 %.not149, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = call i32 @ec_point_mul_scalar_public_batch(ptr noundef %i.e, ptr noundef nonnull %18, ptr noundef null, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, i64 noundef %5) #4
  %.not150 = icmp eq i32 %i.ct, 0
  br i1 %.not150, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #4
  %i.cu = call i32 @CBB_add_u16_length_prefixed(ptr noundef %2, ptr noundef nonnull %19) #4
  %.not151 = icmp eq i32 %i.cu, 0
  br i1 %.not151, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cv = call fastcc noundef i32 @_ZL13dleq_generatePK15PMBTOKEN_METHODP6cbb_stPK22TRUST_TOKEN_ISSUER_KEYPK11EC_JACOBIANS9_S9_S9_h(ptr noundef nonnull %0, ptr noundef %19, ptr noundef %1, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, i8 noundef zeroext %6)
  %.not152 = icmp eq i32 %i.cv, 0
  br i1 %.not152, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cw = call i32 @CBB_flush(ptr noundef %2) #4
  %.not153 = icmp eq i32 %i.cw, 0
  br i1 %.not153, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cx = call i64 @ec_point_byte_len(ptr noundef %i.e, i32 noundef 4) #4
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 9184
  %i.cz = load i8, ptr %i.cy, align 8
  %i.da = shl i8 %i.cz, 1
  %i.db = and i8 %i.da, 2
  %i.dc = zext nneg i8 %i.db to i64
  %spec.select = add i64 %i.cx, %i.dc
  %i.dd = sub nuw i64 %4, %5
  %i.de = mul i64 %spec.select, %i.dd
  %i.df = call i32 @CBS_skip(ptr noundef %3, i64 noundef %i.de) #4
  %.not155 = icmp eq i32 %i.df, 0
  br i1 %.not155, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @ERR_put_error(i32 noundef 32, i32 noundef 0, i32 noundef 105, ptr noundef nonnull @.str, i32 noundef 904) #4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ae, %bb.af, %bb.ag
  %.1 = phi i32 [ 0, %bb.ae ], [ 0, %bb.ag ], [ 0, %bb.af ], [ 0, %bb.ai ], [ 1, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #4
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge, %bb.ab, %bb.ac, %bb.ad, %bb.aj
  %.2 = phi i32 [ %.1, %bb.aj ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #4
  br label %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit.thread

_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit.thread: ; preds = %.lr.ph194, %.thread, %.thread180, %bb.i, %bb.g, %bb.e, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit162, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit159, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit, %bb.d, %bb.c, %bb.ak, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit.thread166, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit159.thread170, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit162.thread174
  %.3 = phi i32 [ 0, %bb.c ], [ %.2, %bb.ak ], [ 0, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit162.thread174 ], [ 0, %bb.i ], [ 0, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit162 ], [ 0, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit159 ], [ 0, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit ], [ 0, %bb.d ], [ 0, %.thread ], [ 0, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit.thread166 ], [ 0, %bb.e ], [ 0, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit159.thread170 ], [ 0, %bb.g ], [ 0, %.thread180 ], [ 0, %.lr.ph194 ]
  call void @OPENSSL_free(ptr noundef %i.g) #4
  call void @OPENSSL_free(ptr noundef %i.h) #4
  call void @OPENSSL_free(ptr noundef %i.i) #4
  call void @OPENSSL_free(ptr noundef %i.j) #4
  call void @OPENSSL_free(ptr noundef %i.k) #4
  call void @CBB_cleanup(ptr noundef nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  br label %bb.al

bb.al:                                            ; preds = %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit.thread, %bb.b
  %.1123 = phi i32 [ 0, %bb.b ], [ %.3, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit.thread ]
  ret i32 %.1123
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @pmbtoken_exp1_unblind(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  tail call void @CRYPTO_once(ptr noundef nonnull @_ZL25pmbtoken_exp1_method_once, ptr noundef nonnull @_ZL30pmbtoken_exp1_init_method_implv) #4
  %i.a = load i32, ptr @_ZL16pmbtoken_exp1_ok, align 4, !tbaa !11
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_ZL25pmbtoken_exp1_init_methodv.exit.thread, label %_ZL25pmbtoken_exp1_init_methodv.exit

_ZL25pmbtoken_exp1_init_methodv.exit.thread:      ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 32, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 1217) #4
  br label %bb.b

_ZL25pmbtoken_exp1_init_methodv.exit:             ; preds = %bb.a
  %i.b = tail call fastcc noundef ptr @_ZL16pmbtoken_unblindPK15PMBTOKEN_METHODPK22TRUST_TOKEN_CLIENT_KEYPK29stack_st_TRUST_TOKEN_PRETOKENP6cbs_stmj(ptr noundef nonnull @_ZL20pmbtoken_exp1_method, ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4)
  br label %bb.b

bb.b:                                             ; preds = %_ZL25pmbtoken_exp1_init_methodv.exit.thread, %_ZL25pmbtoken_exp1_init_methodv.exit
  %.0 = phi ptr [ %i.b, %_ZL25pmbtoken_exp1_init_methodv.exit ], [ null, %_ZL25pmbtoken_exp1_init_methodv.exit.thread ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL16pmbtoken_unblindPK15PMBTOKEN_METHODPK22TRUST_TOKEN_CLIENT_KEYPK29stack_st_TRUST_TOKEN_PRETOKENP6cbs_stmj(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %struct.cbs_st, align 8             ; 7 uses
  %7 = alloca %struct.cbs_st, align 8             ; 7 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %8 = alloca %struct.cbb_st, align 8             ; 14 uses
  %i.g = alloca [64 x i8], align 16               ; 8 uses
  %9 = alloca %struct.EC_AFFINE, align 8          ; 9 uses
  %10 = alloca %struct.EC_AFFINE, align 8         ; 9 uses
  %11 = alloca %struct.EC_AFFINE, align 8         ; 7 uses
  %12 = alloca [3 x %struct.EC_JACOBIAN], align 16 ; 8 uses
  %13 = alloca [3 x %struct.EC_AFFINE], align 16  ; 8 uses
  %14 = alloca %struct.cbb_st, align 8            ; 14 uses
  %15 = alloca %struct.EC_JACOBIAN, align 8       ; 2 uses
  %16 = alloca %struct.EC_JACOBIAN, align 8       ; 2 uses
  %17 = alloca %struct.EC_JACOBIAN, align 8       ; 2 uses
  %18 = alloca %struct.EC_JACOBIAN, align 8       ; 2 uses
  %19 = alloca %struct.cbs_st, align 8            ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !17     ; 28 uses
  %i.i = tail call i64 @OPENSSL_sk_num(ptr noundef %2) #4
  %i.j = icmp ugt i64 %4, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 32, i32 noundef 0, i32 noundef 105, ptr noundef nonnull @.str, i32 noundef 927) #4
  br label %bb.az

bb.c:                                             ; preds = %bb.a
  %i.k = tail call ptr @OPENSSL_sk_new_null() #4  ; 4 uses
  %i.l = tail call ptr @OPENSSL_calloc(i64 noundef %4, i64 noundef 216) #4 ; 5 uses
  %i.m = tail call ptr @OPENSSL_calloc(i64 noundef %4, i64 noundef 216) #4 ; 5 uses
  %i.n = tail call ptr @OPENSSL_calloc(i64 noundef %4, i64 noundef 216) #4 ; 5 uses
  %i.o = tail call ptr @OPENSSL_calloc(i64 noundef %4, i64 noundef 216) #4 ; 5 uses
  %i.p = tail call ptr @OPENSSL_calloc(i64 noundef %4, i64 noundef 72) #4 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  call void @CBB_zero(ptr noundef nonnull %8) #4
  %i.q = insertelement <4 x ptr> poison, ptr %i.k, i64 0
  %i.r = insertelement <4 x ptr> %i.q, ptr %i.l, i64 1
  %i.s = insertelement <4 x ptr> %i.r, ptr %i.m, i64 2
  %i.t = insertelement <4 x ptr> %i.s, ptr %i.n, i64 3
  %.fr = freeze <4 x ptr> %i.t
  %i.u = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.v = icmp eq ptr %i.o, null
  %i.w = icmp eq ptr %i.p, null
  %i.x = bitcast <4 x i1> %i.u to i4
  %i.y = icmp ne i4 %i.x, 0
  %op.rdx = select i1 %i.y, i1 true, i1 %i.v
  %op.rdx270 = select i1 %op.rdx, i1 true, i1 %i.w
  br i1 %op.rdx270, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = call i32 @CBB_init(ptr noundef nonnull %8, i64 noundef 0) #4
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ac = call i64 @ec_point_byte_len(ptr noundef %i.aa, i32 noundef 4) #4 ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  %i.ae = call i32 @CBB_add_space(ptr noundef nonnull %8, ptr noundef nonnull %i.f, i64 noundef %i.ac) #4
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit.thread197, label %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit

_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit.thread197: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  br label %.critedge

_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit: ; preds = %bb.f
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !26
  %i.ag = call i64 @ec_point_to_bytes(ptr noundef %i.aa, ptr noundef nonnull %i.ab, i32 noundef 4, ptr noundef %i.af, i64 noundef %i.ac) #4
  %.not242 = icmp eq i64 %i.ag, %i.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  br i1 %.not242, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit
  %i.ah = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.ai = call i64 @ec_point_byte_len(ptr noundef %i.ah, i32 noundef 4) #4 ; 4 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  %i.ak = call i32 @CBB_add_space(ptr noundef nonnull %8, ptr noundef nonnull %i.e, i64 noundef %i.ai) #4
  %.not.i172 = icmp eq i32 %i.ak, 0
  br i1 %.not.i172, label %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit174.thread201, label %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit174

_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit174.thread201: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  br label %.critedge

_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit174: ; preds = %bb.h
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.am = call i64 @ec_point_to_bytes(ptr noundef %i.ah, ptr noundef nonnull %1, i32 noundef 4, ptr noundef %i.al, i64 noundef %i.ai) #4
  %.not243 = icmp eq i64 %i.am, %i.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  br i1 %.not243, label %bb.i, label %.critedge

bb.i:                                             ; preds = %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit174
  %i.an = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ap = call i64 @ec_point_byte_len(ptr noundef %i.an, i32 noundef 4) #4 ; 4 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.ar = call i32 @CBB_add_space(ptr noundef nonnull %8, ptr noundef nonnull %i.d, i64 noundef %i.ap) #4
  %.not.i175 = icmp eq i32 %i.ar, 0
  br i1 %.not.i175, label %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit177.thread205, label %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit177

_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit177.thread205: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br label %.critedge

_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit177: ; preds = %bb.j
  %i.as = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.at = call i64 @ec_point_to_bytes(ptr noundef %i.an, ptr noundef nonnull %i.ao, i32 noundef 4, ptr noundef %i.as, i64 noundef %i.ap) #4
  %.not244 = icmp eq i64 %i.at, %i.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br i1 %.not244, label %.preheader248, label %.critedge

.preheader248:                                    ; preds = %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit177
  %.not252 = icmp eq i64 %4, 0
  br i1 %.not252, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader248
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 9184 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 9160
  %i.ay = getelementptr inbounds nuw i8, ptr %12, i64 216
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 432
  %i.ba = getelementptr inbounds nuw i8, ptr %13, i64 144
  %i.bb = getelementptr inbounds nuw i8, ptr %13, i64 288
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.ap
  %.0128249 = phi i64 [ 0, %.lr.ph ], [ %i.dy, %bb.ap ] ; 6 uses
  %i.bc = call ptr @OPENSSL_sk_value(ptr noundef %2, i64 noundef %.0128249) #4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #4
  %i.bd = call i32 @CBS_copy_bytes(ptr noundef %3, ptr noundef nonnull %i.g, i64 noundef 64) #4
  %.not142 = icmp eq i32 %i.bd, 0
  br i1 %.not142, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load i8, ptr %i.au, align 8
  %i.bf = and i8 %i.be, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  %.not.i178 = icmp eq i8 %i.bf, 0
  br i1 %.not.i178, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = call i32 @CBS_get_u16_length_prefixed(ptr noundef %3, ptr noundef nonnull %7) #4
  %.not10.i = icmp eq i32 %i.bg, 0
  br i1 %.not10.i, label %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit.thread, label %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit

bb.n:                                             ; preds = %bb.l
  %i.bh = call i64 @ec_point_byte_len(ptr noundef %i.h, i32 noundef 4) #4
  %i.bi = call i32 @CBS_get_bytes(ptr noundef %3, ptr noundef nonnull %7, i64 noundef %i.bh) #4
  %.not9.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not9.not.i, label %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit.thread, label %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit

_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit.thread: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  br label %.loopexit

_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit: ; preds = %bb.m, %bb.n
  %i.bj = load ptr, ptr %7, align 8, !tbaa !21
  %i.bk = load i64, ptr %i.av, align 8, !tbaa !22
  %i.bl = call i32 @ec_point_from_uncompressed(ptr noundef %i.h, ptr noundef nonnull %9, ptr noundef %i.bj, i64 noundef %i.bk) #4
  %.not11.i.not = icmp eq i32 %i.bl, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  br i1 %.not11.i.not, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit
  %i.bm = load i8, ptr %i.au, align 8
  %i.bn = and i8 %i.bm, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  %.not.i179 = icmp eq i8 %i.bn, 0
  br i1 %.not.i179, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = call i32 @CBS_get_u16_length_prefixed(ptr noundef %3, ptr noundef nonnull %6) #4
  %.not10.i180 = icmp eq i32 %i.bo, 0
  br i1 %.not10.i180, label %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit185.thread, label %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit185

bb.q:                                             ; preds = %bb.o
  %i.bp = call i64 @ec_point_byte_len(ptr noundef %i.h, i32 noundef 4) #4
  %i.bq = call i32 @CBS_get_bytes(ptr noundef %3, ptr noundef nonnull %6, i64 noundef %i.bp) #4
  %.not9.not.i184 = icmp eq i32 %i.bq, 0
  br i1 %.not9.not.i184, label %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit185.thread, label %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit185

_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit185.thread: ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  br label %.loopexit

_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit185: ; preds = %bb.p, %bb.q
  %i.br = load ptr, ptr %6, align 8, !tbaa !21
  %i.bs = load i64, ptr %i.aw, align 8, !tbaa !22
  %i.bt = call i32 @ec_point_from_uncompressed(ptr noundef %i.h, ptr noundef nonnull %10, ptr noundef %i.br, i64 noundef %i.bs) #4
  %.not11.i181.not = icmp eq i32 %i.bt, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  br i1 %.not11.i181.not, label %.loopexit, label %bb.r

.loopexit:                                        ; preds = %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit185, %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit, %bb.k, %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit185.thread, %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit.thread
  call void @ERR_put_error(i32 noundef 32, i32 noundef 0, i32 noundef 105, ptr noundef nonnull @.str, i32 noundef 963) #4
  br label %.thread

bb.r:                                             ; preds = %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit185
  %i.bu = getelementptr inbounds nuw [216 x i8], ptr %i.l, i64 %.0128249
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bc, i64 200 ; 3 uses
  call void @ec_affine_to_jacobian(ptr noundef %i.h, ptr noundef %i.bu, ptr noundef nonnull %i.bv) #4
  %i.bw = getelementptr inbounds nuw [216 x i8], ptr %i.n, i64 %.0128249 ; 2 uses
  call void @ec_affine_to_jacobian(ptr noundef %i.h, ptr noundef %i.bw, ptr noundef nonnull %9) #4
  %i.bx = getelementptr inbounds nuw [216 x i8], ptr %i.o, i64 %.0128249 ; 2 uses
  call void @ec_affine_to_jacobian(ptr noundef %i.h, ptr noundef %i.bx, ptr noundef nonnull %10) #4
  %i.by = load ptr, ptr %i.ax, align 8, !tbaa !27
  %i.bz = getelementptr inbounds nuw [216 x i8], ptr %i.m, i64 %.0128249 ; 3 uses
  %i.ca = call noundef i32 %i.by(ptr noundef %i.h, ptr noundef %i.bz, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.g) #4
  %.not145 = icmp eq i32 %i.ca, 0
  br i1 %.not145, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #4
  %i.cb = call i64 @ec_point_byte_len(ptr noundef %i.h, i32 noundef 4) #4 ; 4 uses
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %.thread226, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.cd = call i32 @CBB_add_space(ptr noundef nonnull %8, ptr noundef nonnull %i.c, i64 noundef %i.cb) #4
  %.not.i186 = icmp eq i32 %i.cd, 0
  br i1 %.not.i186, label %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit188.thread213, label %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit188

_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit188.thread213: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  br label %.thread226

_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit188: ; preds = %bb.t
  %i.ce = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.cf = call i64 @ec_point_to_bytes(ptr noundef %i.h, ptr noundef nonnull %i.bv, i32 noundef 4, ptr noundef %i.ce, i64 noundef %i.cb) #4
  %.not245 = icmp eq i64 %i.cf, %i.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  br i1 %.not245, label %bb.u, label %.thread226

bb.u:                                             ; preds = %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit188
  %i.cg = call i32 @ec_jacobian_to_affine(ptr noundef %i.h, ptr noundef nonnull %11, ptr noundef %i.bz) #4
  %.not147 = icmp eq i32 %i.cg, 0
  br i1 %.not147, label %.thread226, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = call i64 @ec_point_byte_len(ptr noundef %i.h, i32 noundef 4) #4 ; 4 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.thread226, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.cj = call i32 @CBB_add_space(ptr noundef nonnull %8, ptr noundef nonnull %i.b, i64 noundef %i.ch) #4
  %.not.i189 = icmp eq i32 %i.cj, 0
  br i1 %.not.i189, label %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit191.thread217, label %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit191

_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit191.thread217: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %.thread226

_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit191: ; preds = %bb.w
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.cl = call i64 @ec_point_to_bytes(ptr noundef %i.h, ptr noundef nonnull %11, i32 noundef 4, ptr noundef %i.ck, i64 noundef %i.ch) #4
  %.not246 = icmp eq i64 %i.cl, %i.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br i1 %.not246, label %bb.x, label %.thread226

bb.x:                                             ; preds = %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit191
  %i.cm = call i64 @ec_point_byte_len(ptr noundef %i.h, i32 noundef 4) #4 ; 4 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %.thread226, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.co = call i32 @CBB_add_space(ptr noundef nonnull %8, ptr noundef nonnull %i.a, i64 noundef %i.cm) #4
  %.not.i192 = icmp eq i32 %i.co, 0
  br i1 %.not.i192, label %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit194.thread221, label %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit194

_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit194.thread221: ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.thread226

_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit194: ; preds = %bb.y
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.cq = call i64 @ec_point_to_bytes(ptr noundef %i.h, ptr noundef nonnull %9, i32 noundef 4, ptr noundef %i.cp, i64 noundef %i.cm) #4
  %.not247 = icmp eq i64 %i.cq, %i.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br i1 %.not247, label %bb.z, label %.thread226

bb.z:                                             ; preds = %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit194
  %i.cr = call fastcc noundef i32 @_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE(ptr noundef nonnull %8, ptr noundef %i.h, ptr noundef nonnull %10)
  %.not150 = icmp eq i32 %i.cr, 0
  br i1 %.not150, label %.thread226, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bc, i64 128 ; 3 uses
  %i.ct = call i32 @ec_point_mul_scalar(ptr noundef %i.h, ptr noundef nonnull %12, ptr noundef %i.bz, ptr noundef nonnull %i.cs) #4
  %.not151 = icmp eq i32 %i.ct, 0
  br i1 %.not151, label %.thread230, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cu = call i32 @ec_point_mul_scalar(ptr noundef %i.h, ptr noundef nonnull %i.ay, ptr noundef %i.bw, ptr noundef nonnull %i.cs) #4
  %.not152 = icmp eq i32 %i.cu, 0
  br i1 %.not152, label %.thread230, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cv = call i32 @ec_point_mul_scalar(ptr noundef %i.h, ptr noundef nonnull %i.az, ptr noundef %i.bx, ptr noundef nonnull %i.cs) #4
  %.not153 = icmp eq i32 %i.cv, 0
  br i1 %.not153, label %.thread230, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cw = call i32 @ec_jacobian_to_affine_batch(ptr noundef %i.h, ptr noundef nonnull %13, ptr noundef nonnull %12, i64 noundef 3) #4
  %.not154 = icmp eq i32 %i.cw, 0
  br i1 %.not154, label %.thread230, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #4
  %i.cx = call i64 @ec_point_byte_len(ptr noundef %i.h, i32 noundef 4) #4
  %i.cy = mul i64 %i.cx, 3
  %i.cz = add i64 %i.cy, 74
  %i.da = call i32 @CBB_init(ptr noundef nonnull %14, i64 noundef %i.cz) #4
  %.not155 = icmp eq i32 %i.da, 0
  br i1 %.not155, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.db = call i32 @CBB_add_u32(ptr noundef nonnull %14, i32 noundef %5) #4
  %.not156 = icmp eq i32 %i.db, 0
  br i1 %.not156, label %bb.al, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dc = call i32 @CBB_add_bytes(ptr noundef nonnull %14, ptr noundef nonnull %i.bc, i64 noundef 64) #4
  %.not157 = icmp eq i32 %i.dc, 0
  br i1 %.not157, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dd = load i8, ptr %i.au, align 8
  %i.de = and i8 %i.dd, 1
  %i.df = sub nsw i8 0, %i.de
  %i.dg = sext i8 %i.df to i32
  %i.dh = call fastcc noundef i32 @_ZL22cbb_add_prefixed_pointP6cbb_stPK11ec_group_stPK9EC_AFFINEi(ptr noundef nonnull %14, ptr noundef %i.h, ptr noundef %13, i32 noundef %i.dg)
  %.not158 = icmp eq i32 %i.dh, 0
  br i1 %.not158, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.di = load i8, ptr %i.au, align 8
  %i.dj = and i8 %i.di, 1
  %i.dk = sub nsw i8 0, %i.dj
  %i.dl = sext i8 %i.dk to i32
  %i.dm = call fastcc noundef i32 @_ZL22cbb_add_prefixed_pointP6cbb_stPK11ec_group_stPK9EC_AFFINEi(ptr noundef nonnull %14, ptr noundef %i.h, ptr noundef %i.ba, i32 noundef %i.dl)
  %.not159 = icmp eq i32 %i.dm, 0
  br i1 %.not159, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dn = load i8, ptr %i.au, align 8
  %i.do = and i8 %i.dn, 1
  %i.dp = sub nsw i8 0, %i.do
  %i.dq = sext i8 %i.dp to i32
  %i.dr = call fastcc noundef i32 @_ZL22cbb_add_prefixed_pointP6cbb_stPK11ec_group_stPK9EC_AFFINEi(ptr noundef nonnull %14, ptr noundef %i.h, ptr noundef %i.bb, i32 noundef %i.dq)
  %.not160 = icmp eq i32 %i.dr, 0
  br i1 %.not160, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ds = call i32 @CBB_flush(ptr noundef nonnull %14) #4
  %.not161 = icmp eq i32 %i.ds, 0
  br i1 %.not161, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae
  call void @CBB_cleanup(ptr noundef nonnull %14) #4
  br label %.thread234

bb.am:                                            ; preds = %bb.ak
  %i.dt = call ptr @CBB_data(ptr noundef nonnull %14) #4
  %i.du = call i64 @CBB_len(ptr noundef nonnull %14) #4
  %i.dv = call ptr @TRUST_TOKEN_new(ptr noundef %i.dt, i64 noundef %i.du) #4 ; 3 uses
  call void @CBB_cleanup(ptr noundef nonnull %14) #4
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dx = call i64 @OPENSSL_sk_push(ptr noundef %i.k, ptr noundef nonnull %i.dv) #4
  %.not162 = icmp eq i64 %i.dx, 0
  br i1 %.not162, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.am
  call void @TRUST_TOKEN_free(ptr noundef %i.dv) #4
  br label %.thread234

.thread:                                          ; preds = %bb.r, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  br label %.critedge

.thread226:                                       ; preds = %bb.z, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit194, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit191, %bb.u, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit188, %bb.s, %bb.v, %bb.x, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit188.thread213, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit191.thread217, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit194.thread221
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  br label %.critedge

.thread230:                                       ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  br label %.critedge

.thread234:                                       ; preds = %bb.al, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  br label %.critedge

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  %i.dy = add nuw i64 %.0128249, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.dy, %4
  br i1 %exitcond.not, label %.lr.ph251, label %bb.k, !llvm.loop !36

bb.aq:                                            ; preds = %.lr.ph251
  %i.dz = add nuw i64 %.0250, 1                   ; 2 uses
  %exitcond255.not = icmp eq i64 %i.dz, %4
  br i1 %exitcond255.not, label %._crit_edge, label %.lr.ph251, !llvm.loop !37

.lr.ph251:                                        ; preds = %bb.ap, %bb.aq
  %.0250 = phi i64 [ %i.dz, %bb.aq ], [ 0, %bb.ap ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %.0250
  %i.eb = call fastcc noundef i32 @_ZL12hash_c_batchPK15PMBTOKEN_METHODP9EC_SCALARPK6cbb_stm(ptr noundef nonnull %0, ptr noundef %i.ea, ptr noundef %8, i64 noundef %.0250)
  %.not163 = icmp eq i32 %i.eb, 0
  br i1 %.not163, label %.critedge, label %bb.aq

._crit_edge:                                      ; preds = %bb.aq, %.preheader248
  %i.ec = call i32 @ec_point_mul_scalar_public_batch(ptr noundef %i.h, ptr noundef nonnull %15, ptr noundef null, ptr noundef %i.l, ptr noundef %i.p, i64 noundef %4) #4
  %.not164 = icmp eq i32 %i.ec, 0
  br i1 %.not164, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge
  %i.ed = call i32 @ec_point_mul_scalar_public_batch(ptr noundef %i.h, ptr noundef nonnull %16, ptr noundef null, ptr noundef %i.m, ptr noundef %i.p, i64 noundef %4) #4
  %.not165 = icmp eq i32 %i.ed, 0
  br i1 %.not165, label %.critedge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ee = call i32 @ec_point_mul_scalar_public_batch(ptr noundef %i.h, ptr noundef nonnull %17, ptr noundef null, ptr noundef %i.n, ptr noundef %i.p, i64 noundef %4) #4
  %.not166 = icmp eq i32 %i.ee, 0
  br i1 %.not166, label %.critedge, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ef = call i32 @ec_point_mul_scalar_public_batch(ptr noundef %i.h, ptr noundef nonnull %18, ptr noundef null, ptr noundef %i.o, ptr noundef %i.p, i64 noundef %4) #4
  %.not167 = icmp eq i32 %i.ef, 0
  br i1 %.not167, label %.critedge, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eg = call i32 @CBS_get_u16_length_prefixed(ptr noundef %3, ptr noundef nonnull %19) #4
  %.not168 = icmp eq i32 %i.eg, 0
  br i1 %.not168, label %.critedge, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eh = call fastcc noundef i32 @_ZL11dleq_verifyPK15PMBTOKEN_METHODP6cbs_stPK22TRUST_TOKEN_CLIENT_KEYPK11EC_JACOBIANS9_S9_S9_(ptr noundef nonnull %0, ptr noundef %19, ptr noundef nonnull %1, ptr noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18)
  %.not169 = icmp eq i32 %i.eh, 0
  br i1 %.not169, label %.critedge, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ei = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !22
  %.not170.not = icmp eq i64 %i.ej, 0
  call void @OPENSSL_free(ptr noundef %i.l) #4
  call void @OPENSSL_free(ptr noundef %i.m) #4
  call void @OPENSSL_free(ptr noundef %i.n) #4
  call void @OPENSSL_free(ptr noundef %i.o) #4
  call void @OPENSSL_free(ptr noundef %i.p) #4
  call void @CBB_cleanup(ptr noundef nonnull %8) #4
  br i1 %.not170.not, label %bb.ay, label %bb.ax

.critedge:                                        ; preds = %.lr.ph251, %.thread230, %.thread226, %.thread, %.thread234, %bb.i, %bb.g, %bb.e, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit177.thread205, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit174.thread201, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit.thread197, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit174, %_ZL12point_to_cbbP6cbb_stPK11ec_group_stPK9EC_AFFINE.exit177, %._crit_edge, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.d, %bb.c
  call void @OPENSSL_free(ptr noundef %i.l) #4
  call void @OPENSSL_free(ptr noundef %i.m) #4
  call void @OPENSSL_free(ptr noundef %i.n) #4
  call void @OPENSSL_free(ptr noundef %i.o) #4
  call void @OPENSSL_free(ptr noundef %i.p) #4
  call void @CBB_cleanup(ptr noundef nonnull %8) #4
  br label %bb.ax

bb.ax:                                            ; preds = %.critedge, %bb.aw
  call void @OPENSSL_sk_pop_free_ex(ptr noundef %i.k, ptr noundef nonnull @sk_TRUST_TOKEN_call_free_func, ptr noundef nonnull @TRUST_TOKEN_free) #4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.0132 = phi ptr [ null, %bb.ax ], [ %i.k, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.b
  %.1133 = phi ptr [ null, %bb.b ], [ %.0132, %bb.ay ]
  ret ptr %.1133
}

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 2) i32 @pmbtoken_exp1_read(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6, i64 noundef %7) local_unnamed_addr #0 {
bb.a:
  tail call void @CRYPTO_once(ptr noundef nonnull @_ZL25pmbtoken_exp1_method_once, ptr noundef nonnull @_ZL30pmbtoken_exp1_init_method_implv) #4
  %i.a = load i32, ptr @_ZL16pmbtoken_exp1_ok, align 4, !tbaa !11
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_ZL25pmbtoken_exp1_init_methodv.exit.thread, label %_ZL25pmbtoken_exp1_init_methodv.exit

_ZL25pmbtoken_exp1_init_methodv.exit.thread:      ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 32, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 1217) #4
  br label %bb.b

_ZL25pmbtoken_exp1_init_methodv.exit:             ; preds = %bb.a
  %i.b = tail call fastcc noundef i32 @_ZL13pmbtoken_readPK15PMBTOKEN_METHODPK22TRUST_TOKEN_ISSUER_KEYPhS5_PKhmiS7_m(ptr noundef nonnull @_ZL20pmbtoken_exp1_method, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6, i64 noundef %7)
  br label %bb.b

bb.b:                                             ; preds = %_ZL25pmbtoken_exp1_init_methodv.exit.thread, %_ZL25pmbtoken_exp1_init_methodv.exit
  %.0 = phi i32 [ %i.b, %_ZL25pmbtoken_exp1_init_methodv.exit ], [ 0, %_ZL25pmbtoken_exp1_init_methodv.exit.thread ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL13pmbtoken_readPK15PMBTOKEN_METHODPK22TRUST_TOKEN_ISSUER_KEYPhS5_PKhmiS7_m(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef %4, i64 noundef %5, i32 noundef %6, ptr noundef %7, i64 noundef %8) unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.cbs_st, align 8             ; 7 uses
  %10 = alloca %struct.cbs_st, align 8            ; 7 uses
  %11 = alloca %struct.cbs_st, align 8            ; 7 uses
  %12 = alloca %struct.cbs_st, align 8            ; 11 uses
  %13 = alloca %struct.cbs_st, align 8            ; 7 uses
  %14 = alloca %struct.EC_AFFINE, align 8         ; 4 uses
  %15 = alloca %struct.EC_AFFINE, align 8         ; 5 uses
  %16 = alloca %struct.EC_AFFINE, align 8         ; 4 uses
  %17 = alloca %struct.sha512_state_st, align 8   ; 6 uses
  %18 = alloca %struct.EC_JACOBIAN, align 8       ; 4 uses
  %19 = alloca %struct.EC_JACOBIAN, align 8       ; 4 uses
  %20 = alloca %union.EC_PRECOMP, align 8         ; 6 uses
  %21 = alloca %union.EC_PRECOMP, align 8         ; 6 uses
  %22 = alloca %struct.EC_JACOBIAN, align 8       ; 4 uses
  %23 = alloca %struct.EC_JACOBIAN, align 8       ; 4 uses
  %24 = alloca %struct.EC_JACOBIAN, align 8       ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #4
  store ptr %4, ptr %12, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %5, ptr %i.b, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #4
  %i.c = call i32 @CBS_get_bytes(ptr noundef nonnull %12, ptr noundef nonnull %13, i64 noundef 64) #4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9184 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = and i8 %i.e, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #4
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %12, ptr noundef nonnull %11) #4
  %.not10.i = icmp eq i32 %i.g, 0
  br i1 %.not10.i, label %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit.thread, label %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit

bb.d:                                             ; preds = %bb.b
  %i.h = call i64 @ec_point_byte_len(ptr noundef %i.a, i32 noundef 4) #4
  %i.i = call i32 @CBS_get_bytes(ptr noundef nonnull %12, ptr noundef nonnull %11, i64 noundef %i.h) #4
  %.not9.not.i = icmp eq i32 %i.i, 0
  br i1 %.not9.not.i, label %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit.thread, label %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit

_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit.thread: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  br label %bb.k

_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit: ; preds = %bb.c, %bb.d
  %i.j = load ptr, ptr %11, align 8, !tbaa !21
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !22
  %i.m = call i32 @ec_point_from_uncompressed(ptr noundef %i.a, ptr noundef nonnull %14, ptr noundef %i.j, i64 noundef %i.l) #4
  %.not11.i.not = icmp eq i32 %i.m, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  br i1 %.not11.i.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit
  %i.n = load i8, ptr %i.d, align 8
  %i.o = and i8 %i.n, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #4
  %.not.i50 = icmp eq i8 %i.o, 0
  br i1 %.not.i50, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = call i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %12, ptr noundef nonnull %10) #4
  %.not10.i51 = icmp eq i32 %i.p, 0
  br i1 %.not10.i51, label %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit56.thread, label %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit56

bb.g:                                             ; preds = %bb.e
  %i.q = call i64 @ec_point_byte_len(ptr noundef %i.a, i32 noundef 4) #4
  %i.r = call i32 @CBS_get_bytes(ptr noundef nonnull %12, ptr noundef nonnull %10, i64 noundef %i.q) #4
  %.not9.not.i55 = icmp eq i32 %i.r, 0
  br i1 %.not9.not.i55, label %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit56.thread, label %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit56

_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit56.thread: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #4
  br label %bb.k

_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit56: ; preds = %bb.f, %bb.g
  %i.s = load ptr, ptr %10, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !22
  %i.v = call i32 @ec_point_from_uncompressed(ptr noundef %i.a, ptr noundef nonnull %15, ptr noundef %i.s, i64 noundef %i.u) #4
  %.not11.i52.not = icmp eq i32 %i.v, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #4
  br i1 %.not11.i52.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit56
  %i.w = load i8, ptr %i.d, align 8
  %i.x = and i8 %i.w, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4
  %.not.i57 = icmp eq i8 %i.x, 0
  br i1 %.not.i57, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = call i32 @CBS_get_u16_length_prefixed(ptr noundef nonnull %12, ptr noundef nonnull %9) #4
  %.not10.i58 = icmp eq i32 %i.y, 0
  br i1 %.not10.i58, label %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit63.thread, label %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit63

bb.j:                                             ; preds = %bb.h
  %i.z = call i64 @ec_point_byte_len(ptr noundef %i.a, i32 noundef 4) #4
  %i.aa = call i32 @CBS_get_bytes(ptr noundef nonnull %12, ptr noundef nonnull %9, i64 noundef %i.z) #4
  %.not9.not.i62 = icmp eq i32 %i.aa, 0
  br i1 %.not9.not.i62, label %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit63.thread, label %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit63

_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit63.thread: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  br label %bb.k

_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit63: ; preds = %bb.i, %bb.j
  %i.ab = load ptr, ptr %9, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !22
  %i.ae = call i32 @ec_point_from_uncompressed(ptr noundef %i.a, ptr noundef nonnull %16, ptr noundef %i.ab, i64 noundef %i.ad) #4
  %.not11.i59 = icmp ne i32 %i.ae, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  %i.af = load i64, ptr %i.b, align 8
  %.not40 = icmp eq i64 %i.af, 0
  %or.cond = select i1 %.not11.i59, i1 %.not40, i1 false
  br i1 %or.cond, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit63.thread, %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit56.thread, %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit.thread, %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit63, %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit56, %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit, %bb.a
  call void @ERR_put_error(i32 noundef 32, i32 noundef 0, i32 noundef 110, ptr noundef nonnull @.str, i32 noundef 1081) #4
  br label %bb.ad

bb.l:                                             ; preds = %_ZL22cbs_get_prefixed_pointP6cbs_stPK11ec_group_stP9EC_AFFINEi.exit63
  %.not41 = icmp eq i32 %6, 0
  br i1 %.not41, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #4
  %i.ag = call i32 @SHA512_Init(ptr noundef nonnull %17) #4 ; 0 uses
  %i.ah = load ptr, ptr %13, align 8, !tbaa !21
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !22
  %i.ak = call i32 @SHA512_Update(ptr noundef nonnull %17, ptr noundef %i.ah, i64 noundef %i.aj) #4 ; 0 uses
  %i.al = call i32 @SHA512_Update(ptr noundef nonnull %17, ptr noundef %7, i64 noundef %8) #4 ; 0 uses
  %i.am = call i32 @SHA512_Final(ptr noundef %2, ptr noundef nonnull %17) #4 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #4
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

bb.n:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !22 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = load ptr, ptr %13, align 8, !tbaa !21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr readonly align 1 %i.aq, i64 %i.ao, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.o, %bb.n, %bb.m
end_hunk_0
