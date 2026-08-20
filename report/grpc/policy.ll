inline.NumInlined: 115
inline.NumDeleted: 52
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.x509_policy_node_st = type { ptr, ptr, i32, i32 }
%struct.POLICYINFO_st = type { ptr, ptr }
%struct.POLICY_MAPPING_st = type { ptr, ptr }

$sk_POLICYINFO_call_cmp_func = comdat any

$_Z39sk_X509_POLICY_NODE_call_delete_if_funcPFiPvS_ES_S_ = comdat any

$_Z33sk_X509_POLICY_NODE_call_cmp_funcPFiPKPKvS2_ES0_S0_ = comdat any

$sk_ASN1_OBJECT_call_free_func = comdat any

$_Z34sk_X509_POLICY_NODE_call_free_funcPFvPvES_ = comdat any

$sk_POLICY_MAPPING_call_cmp_func = comdat any

$sk_POLICY_MAPPING_call_free_func = comdat any

$sk_ASN1_OBJECT_call_cmp_func = comdat any

$_Z35sk_X509_POLICY_LEVEL_call_free_funcPFvPvES_ = comdat any

@.str = private unnamed_addr constant [81 x i8] c"/opt-bench/work/grpc/grpc/third_party/boringssl-with-bazel/crypto/x509/policy.cc\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden range(i32 0, 44) i32 @X509_policy_check(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.x509_policy_node_st, align 8 ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %5 = alloca %struct.x509_policy_node_st, align 8 ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %6 = alloca %struct.x509_policy_node_st, align 8 ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %7 = alloca %struct.x509_policy_node_st, align 8 ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  store ptr null, ptr %3, align 8, !tbaa !11
  %i.k = tail call i64 @OPENSSL_sk_num(ptr noundef %0) #5 ; 4 uses
  %i.l = icmp ult i64 %i.k, 2
  br i1 %i.l, label %bb.ce, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef ptr @OPENSSL_sk_new_null() #5 ; 7 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZL19has_explicit_policyP26stack_st_X509_POLICY_LEVELPK20stack_st_ASN1_OBJECT.exit.thread203, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.o = add i64 %i.k, -2
  %i.p = and i64 %2, 256
  %.not = icmp eq i64 %i.p, 0
  %i.q = add i64 %i.k, 1                          ; 3 uses
  %i.r = select i1 %.not, i64 %i.q, i64 0
  %i.s = and i64 %2, 512
  %.not87 = icmp eq i64 %i.s, 0
  %i.t = select i1 %.not87, i64 %i.q, i64 0
  %i.u = and i64 %2, 1024
  %.not88 = icmp eq i64 %i.u, 0
  %i.v = select i1 %.not88, i64 %i.q, i64 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.bp
  %.0367 = phi i64 [ %i.jv, %bb.bp ], [ %i.o, %.lr.ph.preheader ] ; 4 uses
  %.061366 = phi ptr [ %.263170, %bb.bp ], [ null, %.lr.ph.preheader ] ; 3 uses
  %.0140365 = phi i64 [ %.6143, %bb.bp ], [ %i.v, %.lr.ph.preheader ] ; 3 uses
  %.0145364 = phi i64 [ %.3148.ph, %bb.bp ], [ %i.t, %.lr.ph.preheader ] ; 3 uses
  %.0151363 = phi i64 [ %.8159, %bb.bp ], [ %i.r, %.lr.ph.preheader ] ; 3 uses
  %i.w = call ptr @OPENSSL_sk_value(ptr noundef %0, i64 noundef %.0367) #5 ; 8 uses
  %i.x = call i32 @x509v3_cache_extensions(ptr noundef %i.w) #5
  %.not89 = icmp eq i32 %i.x, 0
  br i1 %.not89, label %_ZL19has_explicit_policyP26stack_st_X509_POLICY_LEVELPK20stack_st_ASN1_OBJECT.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !14
  %i.aa = and i32 %i.z, 32
  %i.ab = icmp ne i32 %i.aa, 0                    ; 2 uses
  %i.ac = icmp eq ptr %.061366, null
  br i1 %i.ac, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ad = call ptr @OPENSSL_zalloc(i64 noundef 16) #5 ; 5 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZL19has_explicit_policyP26stack_st_X509_POLICY_LEVELPK20stack_st_ASN1_OBJECT.exit.thread203, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = call noundef ptr @OPENSSL_sk_new(ptr noundef nonnull @_ZL20x509_policy_node_cmpPKPK19x509_policy_node_stS3_) #5 ; 2 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !26
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %_ZL22x509_policy_level_freeP20x509_policy_level_st.exit.i, label %_ZL21x509_policy_level_newv.exit

_ZL22x509_policy_level_freeP20x509_policy_level_st.exit.i: ; preds = %bb.e
  call void @OPENSSL_sk_pop_free_ex(ptr noundef null, ptr noundef nonnull @_Z34sk_X509_POLICY_NODE_call_free_funcPFvPvES_, ptr noundef nonnull @_ZL21x509_policy_node_freeP19x509_policy_node_st) #5
  call void @OPENSSL_free(ptr noundef nonnull %i.ad) #5
  br label %_ZL19has_explicit_policyP26stack_st_X509_POLICY_LEVELPK20stack_st_ASN1_OBJECT.exit.thread203

_ZL21x509_policy_level_newv.exit:                 ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 1, ptr %i.ah, align 8, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %_ZL21x509_policy_level_newv.exit, %bb.c
  %.162 = phi ptr [ %i.ad, %_ZL21x509_policy_level_newv.exit ], [ %.061366, %bb.c ] ; 29 uses
  %.not90 = icmp ne i64 %.0145364, 0
  %i.ai = icmp ne i64 %.0367, 0
  %i.aj = select i1 %i.ai, i1 %i.ab, i1 false
  %narrow = select i1 %.not90, i1 true, i1 %i.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #5
  %i.ak = call ptr @X509_get_ext_d2i(ptr noundef nonnull %i.w, i32 noundef 89, ptr noundef nonnull %i.j, ptr noundef null) #5 ; 16 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.am = load i32, ptr %i.j, align 4, !tbaa !30
  %.not76.i = icmp eq i32 %i.am, -1
  br i1 %.not76.i, label %bb.h, label %_ZL28process_certificate_policiesPK7x509_stP20x509_policy_level_sti.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.162, i64 8
  store i32 0, ptr %i.an, align 8, !tbaa !29
  %i.ao = load ptr, ptr %.162, align 8, !tbaa !26
  %i.ap = call noundef i64 @OPENSSL_sk_num(ptr noundef %i.ao) #5
  %.not.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i, label %_ZL28process_certificate_policiesPK7x509_stP20x509_policy_level_sti.exit.thread163, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %_ZL21x509_policy_node_freeP19x509_policy_node_st.exit.i.i
  %.06.i.i = phi i64 [ %i.av, %_ZL21x509_policy_node_freeP19x509_policy_node_st.exit.i.i ], [ 0, %bb.h ] ; 2 uses
  %i.aq = load ptr, ptr %.162, align 8, !tbaa !26
  %i.ar = call noundef ptr @OPENSSL_sk_value(ptr noundef %i.aq, i64 noundef %.06.i.i) #5 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %_ZL21x509_policy_node_freeP19x509_policy_node_st.exit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31
  call void @ASN1_OBJECT_free(ptr noundef %i.as) #5
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !35
  call void @OPENSSL_sk_pop_free_ex(ptr noundef %i.au, ptr noundef nonnull @sk_ASN1_OBJECT_call_free_func, ptr noundef nonnull @ASN1_OBJECT_free) #5
  call void @OPENSSL_free(ptr noundef nonnull %i.ar) #5
  br label %_ZL21x509_policy_node_freeP19x509_policy_node_st.exit.i.i

_ZL21x509_policy_node_freeP19x509_policy_node_st.exit.i.i: ; preds = %bb.i, %.lr.ph.i.i
  %i.av = add nuw i64 %.06.i.i, 1                 ; 2 uses
  %i.aw = load ptr, ptr %.162, align 8, !tbaa !26
  %i.ax = call noundef i64 @OPENSSL_sk_num(ptr noundef %i.aw) #5
  %i.ay = icmp ult i64 %i.av, %i.ax
  br i1 %i.ay, label %.lr.ph.i.i, label %_ZL28process_certificate_policiesPK7x509_stP20x509_policy_level_sti.exit.thread163, !llvm.loop !36

_ZL28process_certificate_policiesPK7x509_stP20x509_policy_level_sti.exit.thread163: ; preds = %_ZL21x509_policy_node_freeP19x509_policy_node_st.exit.i.i, %bb.h
  %i.az = load ptr, ptr %.162, align 8, !tbaa !26
  call void @OPENSSL_sk_zero(ptr noundef %i.az) #5
  br label %bb.w

bb.j:                                             ; preds = %bb.f
  %i.ba = call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.ak) #5
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @ERR_put_error(i32 noundef 11, i32 noundef 0, i32 noundef 144, ptr noundef nonnull @.str, i32 noundef 250) #5
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.bc = call ptr @OPENSSL_sk_set_cmp_func(ptr noundef nonnull %i.ak, ptr noundef nonnull @_ZL14policyinfo_cmpPKPK13POLICYINFO_stS3_) #5 ; 0 uses
  call void @OPENSSL_sk_sort(ptr noundef nonnull %i.ak, ptr noundef nonnull @sk_POLICYINFO_call_cmp_func) #5
  %i.bd = call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.ak) #5
  %.not119.i = icmp eq i64 %i.bd, 0
  br i1 %.not119.i, label %._crit_edge.thread.i, label %bb.m

._crit_edge.thread.i:                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %.162, i64 8 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !29
  br label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bg = call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.ak, i64 noundef 0) #5
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !38
  %i.bi = call i32 @OBJ_obj2nid(ptr noundef %i.bh) #5
  %.not.peel.i = icmp eq i32 %i.bi, 746           ; 2 uses
  %i.bj = call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.ak) #5
  %i.bk = icmp ugt i64 %i.bj, 1
  br i1 %i.bk, label %.lr.ph.peel.next.i.preheader, label %._crit_edge.i

.lr.ph.peel.next.i.preheader:                     ; preds = %bb.m
  %spec.select.peel.i = zext i1 %.not.peel.i to i32
  br label %.lr.ph.peel.next.i

.lr.ph.peel.next.i:                               ; preds = %.lr.ph.peel.next.i.preheader, %bb.n
  %.053116.i = phi i64 [ %i.bt, %bb.n ], [ 1, %.lr.ph.peel.next.i.preheader ] ; 3 uses
  %.054115.i = phi i32 [ %spec.select.i, %bb.n ], [ %spec.select.peel.i, %.lr.ph.peel.next.i.preheader ]
  %i.bl = call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.ak, i64 noundef %.053116.i) #5 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !38
  %i.bn = call i32 @OBJ_obj2nid(ptr noundef %i.bm) #5
  %8 = add i64 %.053116.i, -1
  %i.bo = call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.ak, i64 noundef %8) #5
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !38
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !38
  %i.br = call i32 @OBJ_cmp(ptr noundef %i.bp, ptr noundef %i.bq) #5
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %.loopexit.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.peel.next.i
  %.not.i = icmp eq i32 %i.bn, 746
  %spec.select.i = select i1 %.not.i, i32 1, i32 %.054115.i ; 2 uses
  %i.bt = add nuw i64 %.053116.i, 1               ; 2 uses
  %i.bu = call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.ak) #5
  %i.bv = icmp ult i64 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph.peel.next.i, label %._crit_edge.loopexit.loopexit.i, !llvm.loop !41

.loopexit.i:                                      ; preds = %.lr.ph.peel.next.i
  call void @ERR_put_error(i32 noundef 11, i32 noundef 0, i32 noundef 144, ptr noundef nonnull @.str, i32 noundef 265) #5
  br label %.critedge

._crit_edge.loopexit.loopexit.i:                  ; preds = %bb.n
  %i.bw = icmp ne i32 %spec.select.i, 0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.loopexit.i, %bb.m
  %.054.lcssa.i = phi i1 [ %i.bw, %._crit_edge.loopexit.loopexit.i ], [ %.not.peel.i, %bb.m ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.162, i64 8 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !29 ; 2 uses
  %or.cond.i = and i1 %narrow, %.054.lcssa.i
  br i1 %or.cond.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %i.bz = phi i32 [ %i.bf, %._crit_edge.thread.i ], [ %i.by, %._crit_edge.i ]
  %i.ca = phi ptr [ %i.be, %._crit_edge.thread.i ], [ %i.bx, %._crit_edge.i ]
  %i.cb = load ptr, ptr %.162, align 8, !tbaa !26
  call void @OPENSSL_sk_delete_if(ptr noundef %i.cb, ptr noundef nonnull @_Z39sk_X509_POLICY_NODE_call_delete_if_funcPFiPvS_ES_S_, ptr noundef nonnull @_ZL25delete_if_not_in_policiesP19x509_policy_node_stPv, ptr noundef nonnull %i.ak) #5
  store i32 0, ptr %i.ca, align 8, !tbaa !29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i
  %i.cc = phi i32 [ %i.by, %._crit_edge.i ], [ %i.bz, %bb.o ]
  %.not72.i = icmp eq i32 %i.cc, 0
  br i1 %.not72.i, label %_ZL28process_certificate_policiesPK7x509_stP20x509_policy_level_sti.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = call noundef ptr @OPENSSL_sk_new_null() #5 ; 11 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %.critedge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.q
  %i.cf = call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.ak) #5
  %.not120.i = icmp eq i64 %i.cf, 0
  br i1 %.not120.i, label %.split.i, label %.lr.ph118.i

.lr.ph118.i:                                      ; preds = %.preheader.i, %bb.u
  %.0117.i = phi i64 [ %i.df, %bb.u ], [ 0, %.preheader.i ] ; 2 uses
  %i.cg = call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.ak, i64 noundef %.0117.i) #5 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !38
  %i.ci = call i32 @OBJ_obj2nid(ptr noundef %i.ch) #5
  %.not106.i = icmp eq i32 %i.ci, 746
  br i1 %.not106.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %.lr.ph118.i
  %i.cj = load ptr, ptr %i.cg, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  store ptr %i.cj, ptr %7, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #5
  %i.ck = load ptr, ptr %.162, align 8, !tbaa !26
  %i.cl = call noundef i32 @OPENSSL_sk_find(ptr noundef %i.ck, ptr noundef nonnull %i.i, ptr noundef nonnull %7, ptr noundef nonnull @_Z33sk_X509_POLICY_NODE_call_cmp_funcPFiPKPKvS2_ES0_S0_) #5
  %.not.i79.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i79.i, label %_ZL22x509_policy_level_findP20x509_policy_level_stPK14asn1_object_st.exit.thread.i, label %_ZL22x509_policy_level_findP20x509_policy_level_stPK14asn1_object_st.exit.i

_ZL22x509_policy_level_findP20x509_policy_level_stPK14asn1_object_st.exit.thread.i: ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  br label %bb.s

_ZL22x509_policy_level_findP20x509_policy_level_stPK14asn1_object_st.exit.i: ; preds = %bb.r
  %i.cm = load ptr, ptr %.162, align 8, !tbaa !26
  %i.cn = load i64, ptr %i.i, align 8, !tbaa !43
  %i.co = call noundef ptr @OPENSSL_sk_value(ptr noundef %i.cm, i64 noundef %i.cn) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZL22x509_policy_level_findP20x509_policy_level_stPK14asn1_object_st.exit.i, %_ZL22x509_policy_level_findP20x509_policy_level_stPK14asn1_object_st.exit.thread.i
  %i.cq = load ptr, ptr %i.cg, align 8, !tbaa !38
  %i.cr = call ptr @OPENSSL_zalloc(i64 noundef 24) #5 ; 10 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = call ptr @OBJ_dup(ptr noundef %i.cq) #5
  store ptr %i.ct, ptr %i.cr, align 8, !tbaa !31
  %i.cu = call ptr @OPENSSL_sk_new_null() #5      ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !35
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !31 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  %i.cy = icmp eq ptr %i.cu, null
  %or.cond.i.i = select i1 %i.cx, i1 true, i1 %i.cy
  br i1 %or.cond.i.i, label %_ZL21x509_policy_node_freeP19x509_policy_node_st.exit.i81.i, label %_ZL20x509_policy_node_newPK14asn1_object_st.exit.i

_ZL21x509_policy_node_freeP19x509_policy_node_st.exit.i81.i: ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  call void @ASN1_OBJECT_free(ptr noundef %i.cw) #5
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !35
  call void @OPENSSL_sk_pop_free_ex(ptr noundef %i.da, ptr noundef nonnull @sk_ASN1_OBJECT_call_free_func, ptr noundef nonnull @ASN1_OBJECT_free) #5
  call void @OPENSSL_free(ptr noundef nonnull %i.cr) #5
  br label %.critedge

_ZL20x509_policy_node_newPK14asn1_object_st.exit.i: ; preds = %bb.t
  %i.db = call noundef i64 @OPENSSL_sk_push(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.cr) #5
  %.not74.i = icmp eq i64 %i.db, 0
  br i1 %.not74.i, label %_ZL21x509_policy_node_freeP19x509_policy_node_st.exit.i, label %bb.u

_ZL21x509_policy_node_freeP19x509_policy_node_st.exit.i: ; preds = %_ZL20x509_policy_node_newPK14asn1_object_st.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.dd = load ptr, ptr %i.cr, align 8, !tbaa !31
  call void @ASN1_OBJECT_free(ptr noundef %i.dd) #5
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !35
  call void @OPENSSL_sk_pop_free_ex(ptr noundef %i.de, ptr noundef nonnull @sk_ASN1_OBJECT_call_free_func, ptr noundef nonnull @ASN1_OBJECT_free) #5
  call void @OPENSSL_free(ptr noundef nonnull %i.cr) #5
  br label %.critedge

bb.u:                                             ; preds = %_ZL20x509_policy_node_newPK14asn1_object_st.exit.i, %_ZL22x509_policy_level_findP20x509_policy_level_stPK14asn1_object_st.exit.i, %.lr.ph118.i
  %i.df = add nuw i64 %.0117.i, 1                 ; 2 uses
  %i.dg = call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.ak) #5
  %i.dh = icmp ult i64 %i.df, %i.dg
  br i1 %i.dh, label %.lr.ph118.i, label %.split.i, !llvm.loop !44

.split.i:                                         ; preds = %bb.u, %.preheader.i
  %i.di = call noundef i64 @OPENSSL_sk_num(ptr noundef nonnull %i.cd) #5
  %.not.i83.i = icmp eq i64 %i.di, 0
  br i1 %.not.i83.i, label %_ZL27x509_policy_level_add_nodesP20x509_policy_level_stP25stack_st_X509_POLICY_NODE.exit.i, label %.lr.ph.i84.i

.lr.ph.i84.i:                                     ; preds = %.split.i, %bb.v
  %.01216.i.i = phi i64 [ %i.dn, %bb.v ], [ 0, %.split.i ] ; 3 uses
  %i.dj = call noundef ptr @OPENSSL_sk_value(ptr noundef nonnull %i.cd, i64 noundef %.01216.i.i) #5
  %i.dk = load ptr, ptr %.162, align 8, !tbaa !26
  %i.dl = call noundef i64 @OPENSSL_sk_push(ptr noundef %i.dk, ptr noundef %i.dj) #5
  %.not.not.i.i = icmp eq i64 %i.dl, 0
  br i1 %.not.not.i.i, label %.critedge, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i84.i
  %i.dm = call noundef ptr @OPENSSL_sk_set(ptr noundef nonnull %i.cd, i64 noundef %.01216.i.i, ptr noundef null) #5 ; 0 uses
  %i.dn = add nuw i64 %.01216.i.i, 1              ; 2 uses
  %i.do = call noundef i64 @OPENSSL_sk_num(ptr noundef nonnull %i.cd) #5
  %i.dp = icmp ult i64 %i.dn, %i.do
  br i1 %i.dp, label %.lr.ph.i84.i, label %_ZL27x509_policy_level_add_nodesP20x509_policy_level_stP25stack_st_X509_POLICY_NODE.exit.i, !llvm.loop !45

_ZL27x509_policy_level_add_nodesP20x509_policy_level_stP25stack_st_X509_POLICY_NODE.exit.i: ; preds = %bb.v, %.split.i
  %i.dq = load ptr, ptr %.162, align 8, !tbaa !26
  call void @OPENSSL_sk_sort(ptr noundef %i.dq, ptr noundef nonnull @_Z33sk_X509_POLICY_NODE_call_cmp_funcPFiPKPKvS2_ES0_S0_) #5
  br label %_ZL28process_certificate_policiesPK7x509_stP20x509_policy_level_sti.exit

_ZL28process_certificate_policiesPK7x509_stP20x509_policy_level_sti.exit: ; preds = %bb.p, %_ZL27x509_policy_level_add_nodesP20x509_policy_level_stP25stack_st_X509_POLICY_NODE.exit.i
  %.361.i = phi ptr [ %i.cd, %_ZL27x509_policy_level_add_nodesP20x509_policy_level_stP25stack_st_X509_POLICY_NODE.exit.i ], [ null, %bb.p ]
  call void @OPENSSL_sk_pop_free_ex(ptr noundef %.361.i, ptr noundef nonnull @_Z34sk_X509_POLICY_NODE_call_free_funcPFvPvES_, ptr noundef nonnull @_ZL21x509_policy_node_freeP19x509_policy_node_st) #5
  call void @CERTIFICATEPOLICIES_free(ptr noundef nonnull %i.ak) #5
  br label %bb.w

.critedge:                                        ; preds = %bb.q, %bb.s, %.lr.ph.i84.i, %_ZL21x509_policy_node_freeP19x509_policy_node_st.exit.i, %_ZL21x509_policy_node_freeP19x509_policy_node_st.exit.i81.i, %.loopexit.i, %bb.k
  %.361.i.ph = phi ptr [ %i.cd, %bb.s ], [ null, %bb.k ], [ %i.cd, %_ZL21x509_policy_node_freeP19x509_policy_node_st.exit.i ], [ %i.cd, %.lr.ph.i84.i ], [ %i.cd, %_ZL21x509_policy_node_freeP19x509_policy_node_st.exit.i81.i ], [ null, %.loopexit.i ], [ null, %bb.q ]
  call void @OPENSSL_sk_pop_free_ex(ptr noundef %.361.i.ph, ptr noundef nonnull @_Z34sk_X509_POLICY_NODE_call_free_funcPFvPvES_, ptr noundef nonnull @_ZL21x509_policy_node_freeP19x509_policy_node_st) #5
  call void @CERTIFICATEPOLICIES_free(ptr noundef nonnull %i.ak) #5
  br label %_ZL28process_certificate_policiesPK7x509_stP20x509_policy_level_sti.exit.thread

_ZL28process_certificate_policiesPK7x509_stP20x509_policy_level_sti.exit.thread: ; preds = %bb.g, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  br label %_ZL19has_explicit_policyP26stack_st_X509_POLICY_LEVELPK20stack_st_ASN1_OBJECT.exit.sink.split

bb.w:                                             ; preds = %_ZL28process_certificate_policiesPK7x509_stP20x509_policy_level_sti.exit, %_ZL28process_certificate_policiesPK7x509_stP20x509_policy_level_sti.exit.thread163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  %i.dr = icmp eq i64 %.0151363, 0
  br i1 %i.dr, label %bb.x, label %_ZL26x509_policy_level_is_emptyPK20x509_policy_level_st.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.ds = getelementptr inbounds nuw i8, ptr %.162, i64 8
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !29
  %.not.i101 = icmp eq i32 %i.dt, 0
  br i1 %.not.i101, label %_ZL26x509_policy_level_is_emptyPK20x509_policy_level_st.exit, label %_ZL26x509_policy_level_is_emptyPK20x509_policy_level_st.exit.thread

_ZL26x509_policy_level_is_emptyPK20x509_policy_level_st.exit: ; preds = %bb.x
  %i.du = load ptr, ptr %.162, align 8, !tbaa !26
  %i.dv = call noundef i64 @OPENSSL_sk_num(ptr noundef %i.du) #5
  %.not224 = icmp eq i64 %i.dv, 0
  br i1 %.not224, label %_ZL19has_explicit_policyP26stack_st_X509_POLICY_LEVELPK20stack_st_ASN1_OBJECT.exit.thread212, label %_ZL26x509_policy_level_is_emptyPK20x509_policy_level_st.exit.thread

_ZL26x509_policy_level_is_emptyPK20x509_policy_level_st.exit.thread: ; preds = %bb.x, %_ZL26x509_policy_level_is_emptyPK20x509_policy_level_st.exit, %bb.w
  %i.dw = call noundef i64 @OPENSSL_sk_push(ptr noundef nonnull %i.m, ptr noundef nonnull %.162) #5
  %.not93 = icmp eq i64 %i.dw, 0
  br i1 %.not93, label %_ZL19has_explicit_policyP26stack_st_X509_POLICY_LEVELPK20stack_st_ASN1_OBJECT.exit.thread212, label %bb.y

bb.y:                                             ; preds = %_ZL26x509_policy_level_is_emptyPK20x509_policy_level_st.exit.thread
  %.not94 = icmp eq i64 %.0367, 0
  br i1 %.not94, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not225 = icmp eq i64 %.0140365, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
end_hunk_0
