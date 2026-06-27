inline.NumInlined: 17
inline.NumDeleted: 6
begin_hunk_0
@__func__.OSSL_STORE_INFO_get1_PARAMS = private unnamed_addr constant [28 x i8] c"OSSL_STORE_INFO_get1_PARAMS\00", align 1
@__func__.OSSL_STORE_INFO_get1_PUBKEY = private unnamed_addr constant [28 x i8] c"OSSL_STORE_INFO_get1_PUBKEY\00", align 1
@__func__.OSSL_STORE_INFO_get1_PKEY = private unnamed_addr constant [26 x i8] c"OSSL_STORE_INFO_get1_PKEY\00", align 1
@__func__.OSSL_STORE_INFO_get1_CERT = private unnamed_addr constant [26 x i8] c"OSSL_STORE_INFO_get1_CERT\00", align 1
@__func__.OSSL_STORE_INFO_get1_CRL = private unnamed_addr constant [25 x i8] c"OSSL_STORE_INFO_get1_CRL\00", align 1
@__func__.OSSL_STORE_SEARCH_by_key_fingerprint = private unnamed_addr constant [37 x i8] c"OSSL_STORE_SEARCH_by_key_fingerprint\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"%s size is %d, fingerprint size is %zu\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"properties\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @OSSL_STORE_open_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca [2 x %struct.ossl_param_st], align 16 ; 11 uses
  %9 = alloca %struct.ossl_param_st, align 8      ; 8 uses
  %10 = alloca %struct.ossl_passphrase_data_st, align 8 ; 10 uses
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = alloca [2 x ptr], align 16               ; 6 uses
  %11 = alloca %struct.ossl_store_ctx_st, align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 82, ptr noundef nonnull @__func__.OSSL_STORE_open_ex) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 44, i32 noundef 786690, ptr noundef null) #8
  br label %bb.aq

bb.c:                                             ; preds = %bb.a
  store ptr @.str.1, ptr %i.b, align 16, !tbaa !9
  %i.d = call i64 @OPENSSL_strlcpy(ptr noundef nonnull %i.a, ptr noundef nonnull %0, i64 noundef 256) #8 ; 0 uses
  %i.e = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 58) #9 ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.e, align 1, !tbaa !12
  %i.f = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1) #8
  %.not114 = icmp eq i32 %i.f, 0
  br i1 %.not114, label %bb.e, label %sub_0

sub_0:                                            ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %.not166 = icmp eq i8 %i.h, 47
  br i1 %.not166, label %.tail, label %.thread190

.tail:                                            ; preds = %sub_0
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.j = load i8, ptr %i.i, align 1
  %.fr = freeze i8 %i.j
  %i.k = icmp ne i8 %.fr, 47                      ; 2 uses
  %spec.select194 = select i1 %i.k, i64 8, i64 0
  br label %.thread190

.thread190:                                       ; preds = %.tail, %sub_0
  %i.l = phi i1 [ true, %sub_0 ], [ %i.k, %.tail ]
  %i.m = phi i64 [ 8, %sub_0 ], [ %spec.select194, %.tail ]
  %spec.select.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.m
  store ptr %i.a, ptr %spec.select.sroa.sel.idx.sroa.sel, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread190, %bb.c
  %.182 = phi i1 [ %i.l, %.thread190 ], [ false, %bb.d ], [ false, %bb.c ]
  %i.n = call i32 @ERR_set_mark() #8              ; 0 uses
  %.not115 = icmp eq ptr %3, null
  br i1 %.not115, label %.peel.begin, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = call i32 @ossl_pw_set_ui_method(ptr noundef nonnull %10, ptr noundef nonnull %3, ptr noundef %4) #8
  %.not116 = icmp eq i32 %i.o, 0
  br i1 %.not116, label %.thread156, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call i32 @ossl_pw_enable_passphrase_caching(ptr noundef nonnull %10) #8
  %.not117 = icmp eq i32 %i.p, 0
  br i1 %.not117, label %.thread156, label %.peel.begin

.thread156:                                       ; preds = %bb.f, %bb.g
  call void @ERR_new() #8
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 115, ptr noundef nonnull @__func__.OSSL_STORE_open_ex) #8
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 44, i32 noundef 524303, ptr noundef null) #8
  %i.q = call i32 @ERR_clear_last_mark() #8       ; 0 uses
  br label %bb.ap

.peel.begin:                                      ; preds = %bb.g, %bb.e
  %.not.i = icmp eq ptr %5, null                  ; 2 uses
  %.not14.i = icmp eq ptr %2, null                ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 16, !tbaa !9   ; 2 uses
  %i.t = call i32 @ERR_set_mark() #8              ; 0 uses
  %i.u = call ptr @ossl_store_get0_loader_int(ptr noundef %i.s) #8 ; 7 uses
  %.not120.peel = icmp eq ptr %i.u, null
  br i1 %.not120.peel, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.peel.begin
  %i.v = call i32 @ERR_clear_last_mark() #8       ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !13   ; 2 uses
  %.not121.peel = icmp eq ptr %i.x, null
  br i1 %.not121.peel, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = call ptr %i.x(ptr noundef nonnull %i.u, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #8
  br label %.thread.peel

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.ab = call ptr %i.aa(ptr noundef nonnull %i.u, ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4) #8
  br label %.thread.peel

bb.k:                                             ; preds = %.peel.begin
  %i.ac = call i32 @ERR_pop_to_mark() #8          ; 0 uses
  %i.ad = call ptr @OSSL_STORE_LOADER_fetch(ptr noundef %1, ptr noundef %i.s, ptr noundef %2) #8 ; 12 uses
  %.not122.peel = icmp eq ptr %i.ad, null
  br i1 %.not122.peel, label %.thread.peel, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = call ptr @OSSL_STORE_LOADER_get0_provider(ptr noundef nonnull %i.ad) #8
  %i.af = call ptr @OSSL_PROVIDER_get0_provider_ctx(ptr noundef %i.ae) #8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 208
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19 ; 2 uses
  %.not123.peel = icmp eq ptr %i.ah, null
  br i1 %.not123.peel, label %bb.m, label %loader_set_params.exit.peel

loader_set_params.exit.peel:                      ; preds = %bb.l
  %i.ai = call ptr %i.ah(ptr noundef %i.af, ptr noundef nonnull %0, ptr noundef %5, ptr noundef nonnull @ossl_pw_passphrase_callback_dec, ptr noundef nonnull %10) #8 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %loader_set_params.exit.thread136.peel, label %loader_set_params.exit.thread141.peel

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !20 ; 2 uses
  %.not124.peel = icmp eq ptr %i.al, null
  br i1 %.not124.peel, label %loader_set_params.exit.thread136.peel, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = call ptr %i.al(ptr noundef %i.af, ptr noundef nonnull %0) #8 ; 7 uses
  %.not125.peel = icmp eq ptr %i.am, null
  br i1 %.not125.peel, label %loader_set_params.exit.thread136.peel, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !21
  %i.ap = call i32 %i.ao(ptr noundef nonnull %i.am, ptr noundef nonnull %5) #8, !inline_history !22
  %.not13.i.peel = icmp eq i32 %i.ap, 0
  br i1 %.not13.i.peel, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.not14.i, label %loader_set_params.exit.thread141.peel, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.aq = call ptr @OSSL_PARAM_locate_const(ptr noundef %5, ptr noundef nonnull @.str.13) #8
  %.not15.i.peel = icmp eq ptr %i.aq, null
  br i1 %.not15.i.peel, label %bb.s, label %.thread.i.peel

.thread.i.peel:                                   ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %loader_set_params.exit.thread141.peel

bb.s:                                             ; preds = %bb.r
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %8, ptr noundef nonnull @.str.13, ptr noundef nonnull %2, i64 noundef 0) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %9) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21
  %i.at = call i32 %i.as(ptr noundef nonnull %i.am, ptr noundef nonnull %8) #8, !inline_history !22
  %.not16.not.i.peel = icmp eq i32 %i.at, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br i1 %.not16.not.i.peel, label %bb.t, label %loader_set_params.exit.thread141.peel

bb.t:                                             ; preds = %bb.s, %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 184
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !27
  %i.aw = call i32 %i.av(ptr noundef nonnull %i.am) #8 ; 0 uses
  br label %loader_set_params.exit.thread136.peel

loader_set_params.exit.thread136.peel:            ; preds = %bb.t, %bb.n, %bb.m, %loader_set_params.exit.peel
  call void @OSSL_STORE_LOADER_free(ptr noundef nonnull %i.ad) #8
  br label %loader_set_params.exit.thread141.peel

loader_set_params.exit.thread141.peel:            ; preds = %loader_set_params.exit.thread136.peel, %bb.s, %.thread.i.peel, %bb.q, %loader_set_params.exit.peel
  %.291138.peel = phi ptr [ null, %loader_set_params.exit.thread136.peel ], [ %i.ai, %loader_set_params.exit.peel ], [ %i.am, %.thread.i.peel ], [ %i.am, %bb.s ], [ %i.am, %bb.q ]
  %.193.peel = phi ptr [ null, %loader_set_params.exit.thread136.peel ], [ %i.ad, %loader_set_params.exit.peel ], [ %i.ad, %.thread.i.peel ], [ %i.ad, %bb.s ], [ %i.ad, %bb.q ] ; 2 uses
  call void @ossl_pw_clear_passphrase_cache(ptr noundef nonnull %10) #8
  br label %.thread.peel

.thread.peel:                                     ; preds = %loader_set_params.exit.thread141.peel, %bb.k, %bb.j, %bb.i
  %.294.peel = phi ptr [ %.193.peel, %loader_set_params.exit.thread141.peel ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.j ] ; 3 uses
  %.3.peel = phi ptr [ %.291138.peel, %loader_set_params.exit.thread141.peel ], [ null, %bb.k ], [ %i.y, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %.285.peel = phi i1 [ false, %loader_set_params.exit.thread141.peel ], [ true, %bb.k ], [ false, %bb.i ], [ false, %bb.j ] ; 2 uses
  %.1.peel = phi ptr [ %.193.peel, %loader_set_params.exit.thread141.peel ], [ null, %bb.k ], [ %i.u, %bb.i ], [ %i.u, %bb.j ]
  %i.ax = icmp eq ptr %.3.peel, null              ; 2 uses
  %i.ay = and i1 %i.ax, %.182
  br i1 %i.ay, label %.peel.newph, label %bb.ah

.peel.newph:                                      ; preds = %.thread.peel
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !9  ; 2 uses
  %i.bb = call i32 @ERR_set_mark() #8             ; 0 uses
  %i.bc = call ptr @ossl_store_get0_loader_int(ptr noundef %i.ba) #8 ; 7 uses
  %.not120 = icmp eq ptr %i.bc, null
  br i1 %.not120, label %bb.x, label %bb.u

bb.u:                                             ; preds = %.peel.newph
  %i.bd = call i32 @ERR_clear_last_mark() #8      ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 88
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !13 ; 2 uses
  %.not121 = icmp eq ptr %i.bf, null
  br i1 %.not121, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = call ptr %i.bf(ptr noundef nonnull %i.bc, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #8
  br label %.loopexit

bb.w:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !18
  %i.bj = call ptr %i.bi(ptr noundef nonnull %i.bc, ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4) #8
  br label %.loopexit

bb.x:                                             ; preds = %.peel.newph
  %i.bk = call i32 @ERR_pop_to_mark() #8          ; 0 uses
  %i.bl = call ptr @OSSL_STORE_LOADER_fetch(ptr noundef %1, ptr noundef %i.ba, ptr noundef %2) #8 ; 12 uses
  %.not122 = icmp eq ptr %i.bl, null
  br i1 %.not122, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bm = call ptr @OSSL_STORE_LOADER_get0_provider(ptr noundef nonnull %i.bl) #8
  %i.bn = call ptr @OSSL_PROVIDER_get0_provider_ctx(ptr noundef %i.bm) #8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 208
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !19 ; 2 uses
  %.not123 = icmp eq ptr %i.bp, null
  br i1 %.not123, label %bb.z, label %loader_set_params.exit

bb.z:                                             ; preds = %bb.y
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 136
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !20 ; 2 uses
  %.not124 = icmp eq ptr %i.br, null
  br i1 %.not124, label %loader_set_params.exit.thread136, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bs = call ptr %i.br(ptr noundef %i.bn, ptr noundef nonnull %0) #8 ; 7 uses
  %.not125 = icmp eq ptr %i.bs, null
  br i1 %.not125, label %loader_set_params.exit.thread136, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 160
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !21
  %i.bv = call i32 %i.bu(ptr noundef nonnull %i.bs, ptr noundef nonnull %5) #8, !inline_history !22
  %.not13.i = icmp eq i32 %i.bv, 0
  br i1 %.not13.i, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  br i1 %.not14.i, label %loader_set_params.exit.thread141, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.bw = call ptr @OSSL_PARAM_locate_const(ptr noundef %5, ptr noundef nonnull @.str.13) #8
  %.not15.i = icmp eq ptr %i.bw, null
  br i1 %.not15.i, label %bb.af, label %.thread.i

.thread.i:                                        ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %loader_set_params.exit.thread141

bb.af:                                            ; preds = %bb.ae
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %8, ptr noundef nonnull @.str.13, ptr noundef nonnull %2, i64 noundef 0) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %9) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 160
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !21
  %i.bz = call i32 %i.by(ptr noundef nonnull %i.bs, ptr noundef nonnull %8) #8, !inline_history !22
  %.not16.not.i = icmp eq i32 %i.bz, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br i1 %.not16.not.i, label %bb.ag, label %loader_set_params.exit.thread141

bb.ag:                                            ; preds = %bb.af, %bb.ac
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 184
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !27
  %i.cc = call i32 %i.cb(ptr noundef nonnull %i.bs) #8 ; 0 uses
  br label %loader_set_params.exit.thread136

loader_set_params.exit:                           ; preds = %bb.y
  %i.cd = call ptr %i.bp(ptr noundef %i.bn, ptr noundef nonnull %0, ptr noundef %5, ptr noundef nonnull @ossl_pw_passphrase_callback_dec, ptr noundef nonnull %10) #8 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %loader_set_params.exit.thread136, label %loader_set_params.exit.thread141

loader_set_params.exit.thread136:                 ; preds = %bb.aa, %bb.ag, %bb.z, %loader_set_params.exit
  call void @OSSL_STORE_LOADER_free(ptr noundef nonnull %i.bl) #8
  br label %loader_set_params.exit.thread141

loader_set_params.exit.thread141:                 ; preds = %bb.ad, %bb.af, %.thread.i, %loader_set_params.exit.thread136, %loader_set_params.exit
  %.291138 = phi ptr [ null, %loader_set_params.exit.thread136 ], [ %i.cd, %loader_set_params.exit ], [ %i.bs, %.thread.i ], [ %i.bs, %bb.af ], [ %i.bs, %bb.ad ]
  %.193 = phi ptr [ null, %loader_set_params.exit.thread136 ], [ %i.bl, %loader_set_params.exit ], [ %i.bl, %.thread.i ], [ %i.bl, %bb.af ], [ %i.bl, %bb.ad ] ; 2 uses
  call void @ossl_pw_clear_passphrase_cache(ptr noundef nonnull %10) #8
  br label %.loopexit

.loopexit:                                        ; preds = %loader_set_params.exit.thread141, %bb.x, %bb.v, %bb.w
  %.294 = phi ptr [ %.193, %loader_set_params.exit.thread141 ], [ null, %bb.x ], [ %.294.peel, %bb.v ], [ %.294.peel, %bb.w ]
  %.3 = phi ptr [ %.291138, %loader_set_params.exit.thread141 ], [ null, %bb.x ], [ %i.bg, %bb.v ], [ %i.bj, %bb.w ] ; 2 uses
  %.285 = phi i1 [ false, %loader_set_params.exit.thread141 ], [ %.285.peel, %bb.x ], [ false, %bb.v ], [ false, %bb.w ]
  %.1 = phi ptr [ %.193, %loader_set_params.exit.thread141 ], [ null, %bb.x ], [ %i.bc, %bb.v ], [ %i.bc, %bb.w ]
  %i.cf = icmp eq ptr %.3, null
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit, %.thread.peel
  %.294.lcssa = phi ptr [ %.294.peel, %.thread.peel ], [ %.294, %.loopexit ] ; 5 uses
  %.3.lcssa = phi ptr [ %.3.peel, %.thread.peel ], [ %.3, %.loopexit ] ; 4 uses
  %.285.lcssa = phi i1 [ %.285.peel, %.thread.peel ], [ %.285, %.loopexit ]
  %.1.lcssa = phi ptr [ %.1.peel, %.thread.peel ], [ %.1, %.loopexit ] ; 4 uses
  %.lcssa = phi i1 [ %i.ax, %.thread.peel ], [ %i.cf, %.loopexit ] ; 2 uses
  %or.cond = or i1 %.lcssa, %.285.lcssa
  br i1 %or.cond, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not14.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cg = call ptr @CRYPTO_strdup(ptr noundef nonnull %2, ptr noundef nonnull @.str, i32 noundef 189) #8 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %.thread144, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.086 = phi ptr [ %i.cg, %bb.aj ], [ null, %bb.ai ] ; 2 uses
  %i.ci = call noalias ptr @CRYPTO_zalloc(i64 noundef 120, ptr noundef nonnull @.str, i32 noundef 190) #8 ; 9 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %.thread144, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  store ptr %.086, ptr %i.ck, align 8, !tbaa !28
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store ptr %.294.lcssa, ptr %i.cl, align 8, !tbaa !34
  store ptr %.1.lcssa, ptr %i.ci, align 8, !tbaa !35
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr %.3.lcssa, ptr %i.cm, align 8, !tbaa !36
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store ptr %6, ptr %i.cn, align 8, !tbaa !37
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 32
  store ptr %7, ptr %i.co, align 8, !tbaa !38
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cp, ptr noundef nonnull align 8 dereferenceable(48) %10, i64 48, i1 false), !tbaa.struct !39
  %i.cq = call i32 @ERR_pop_to_mark() #8          ; 0 uses
  br label %bb.aq

.thread144:                                       ; preds = %bb.aj, %bb.ak
  %.187.ph = phi ptr [ %.086, %bb.ak ], [ null, %bb.aj ]
  %i.cr = call i32 @ERR_clear_last_mark() #8      ; 0 uses
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.cs = call i32 @ERR_clear_last_mark() #8      ; 0 uses
  br i1 %.lcssa, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %.thread144, %bb.am
  %.187153 = phi ptr [ %.187.ph, %.thread144 ], [ null, %bb.am ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.ct = getelementptr inbounds nuw i8, ptr %11, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ct, i8 0, i64 96, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store ptr %.294.lcssa, ptr %i.cu, align 8, !tbaa !34
  store ptr %.1.lcssa, ptr %11, align 8, !tbaa !35
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %.3.lcssa, ptr %i.cv, align 8, !tbaa !36
  %.not.i127 = icmp eq ptr %.294.lcssa, null
  br i1 %.not.i127, label %.thread.i129, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cw = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 184
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !27
  %i.cy = call i32 %i.cx(ptr noundef nonnull %.3.lcssa) #8, !inline_history !40 ; 0 uses
  %.pr.i = load ptr, ptr %i.cu, align 8, !tbaa !34 ; 2 uses
  %i.cz = icmp eq ptr %.pr.i, null
  br i1 %i.cz, label %..thread.i129_crit_edge, label %ossl_store_close_it.exit

..thread.i129_crit_edge:                          ; preds = %bb.ao
  %.pre = load ptr, ptr %11, align 8, !tbaa !35
  %.pre168 = load ptr, ptr %i.cv, align 8, !tbaa !36
  br label %.thread.i129

.thread.i129:                                     ; preds = %..thread.i129_crit_edge, %bb.an
  %i.da = phi ptr [ %.pre168, %..thread.i129_crit_edge ], [ %.3.lcssa, %bb.an ]
  %i.db = phi ptr [ %.pre, %..thread.i129_crit_edge ], [ %.1.lcssa, %bb.an ]
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 80
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !41
  %i.de = call i32 %i.dd(ptr noundef %i.da) #8, !inline_history !40 ; 0 uses
  %.pre169 = load ptr, ptr %i.cu, align 8, !tbaa !34
  br label %ossl_store_close_it.exit

ossl_store_close_it.exit:                         ; preds = %bb.ao, %.thread.i129
  %i.df = phi ptr [ %.pr.i, %bb.ao ], [ %.pre169, %.thread.i129 ]
  %i.dg = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !42
  call void @OPENSSL_sk_pop_free(ptr noundef %i.dh, ptr noundef nonnull @OSSL_STORE_INFO_free) #8
  call void @OSSL_STORE_LOADER_free(ptr noundef %i.df) #8
  %i.di = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !28
  call void @CRYPTO_free(ptr noundef %i.dj, ptr noundef nonnull @.str, i32 noundef 590) #8
  %i.dk = getelementptr inbounds nuw i8, ptr %11, i64 72
  call void @ossl_pw_clear_passphrase_data(ptr noundef nonnull %i.dk) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  br label %bb.ap

bb.ap:                                            ; preds = %.thread156, %ossl_store_close_it.exit, %bb.am
  %.187154 = phi ptr [ %.187153, %ossl_store_close_it.exit ], [ null, %bb.am ], [ null, %.thread156 ]
  %.395151 = phi ptr [ %.294.lcssa, %ossl_store_close_it.exit ], [ %.294.lcssa, %bb.am ], [ null, %.thread156 ]
  call void @OSSL_STORE_LOADER_free(ptr noundef %.395151) #8
  call void @CRYPTO_free(ptr noundef %.187154, ptr noundef nonnull @.str, i32 noundef 235) #8
  call void @CRYPTO_free(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 236) #8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.al, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.ap ], [ %i.ci, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i64 @OPENSSL_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @OPENSSL_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ERR_set_mark() local_unnamed_addr #3

declare i32 @ossl_pw_set_ui_method(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ossl_pw_enable_passphrase_caching(ptr noundef) local_unnamed_addr #3

declare ptr @ossl_store_get0_loader_int(ptr noundef) local_unnamed_addr #3

declare i32 @ERR_clear_last_mark() local_unnamed_addr #3

declare i32 @ERR_pop_to_mark() local_unnamed_addr #3

declare ptr @OSSL_STORE_LOADER_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @OSSL_STORE_LOADER_get0_provider(ptr noundef) local_unnamed_addr #3

declare ptr @OSSL_PROVIDER_get0_provider_ctx(ptr noundef) local_unnamed_addr #3

declare i32 @ossl_pw_passphrase_callback_dec(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @OSSL_STORE_LOADER_free(ptr noundef) local_unnamed_addr #3

declare void @ossl_pw_clear_passphrase_cache(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @CRYPTO_strdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @OSSL_STORE_open(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OSSL_STORE_open_ex(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef %3, ptr noundef %4)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @OSSL_STORE_ctrl(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [2 x %struct.ossl_param_st], align 16 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %.not15.i = icmp eq ptr %i.e, null
  br i1 %.not15.i, label %OSSL_STORE_vctrl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  %cond.i = icmp eq i32 %1, 1
  br i1 %cond.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.f = load i32, ptr %3, align 16               ; 3 uses
  %i.g = icmp ult i32 %i.f, 41
  br i1 %i.g, label %bb.e, label %bb.f

end_hunk_0
