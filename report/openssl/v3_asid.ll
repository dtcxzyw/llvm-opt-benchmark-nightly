Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/v3_asid?download=true
inline.NumInlined: 73
inline.NumDeleted: 7
begin_hunk_0_@asid_validate_path_internal:bb.a
  br i1 %i.bo, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %.not206 = icmp eq i32 %.2146, 0
  br i1 %.not206, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !13
  %i.br = tail call fastcc i32 @asid_contains(ptr noundef %i.bq, ptr noundef %.2161)
  %.not207 = icmp eq i32 %i.br, 0
  br i1 %.not207, label %bb.ah, label %._crit_edge295

._crit_edge295:                                   ; preds = %bb.af
  %.pre296.a = load ptr, ptr %i.an, align 8, !tbaa !78 ; 2 uses
  %.pre297.a = load ptr, ptr %.pre296.a, align 8, !tbaa !22
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge295, %bb.ae
  %i.bs = phi ptr [ %.pre297.a, %._crit_edge295 ], [ %i.bl, %bb.ae ]
  %i.bt = phi ptr [ %.pre296.a, %._crit_edge295 ], [ %i.bm, %bb.ae ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !13
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  br i1 %i.c, label %bb.ai, label %.critedge.thread

bb.ai:                                            ; preds = %bb.ah
  store i32 46, ptr %i.ai, align 8, !tbaa !43
  store i32 %.1154287, ptr %i.aj, align 4, !tbaa !79
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !80
  %i.bw = load ptr, ptr %i.al, align 8, !tbaa !42
  %i.bx = tail call i32 %i.bw(i32 noundef 0, ptr noundef nonnull %0) #7 ; 2 uses
  %.not208 = icmp eq i32 %i.bx, 0
  br i1 %.not208, label %.critedge.thread, label %.thread244

bb.aj:                                            ; preds = %bb.ag, %bb.ad, %bb.ac
  %i.by = phi ptr [ %i.bt, %bb.ag ], [ %i.bm, %bb.ac ], [ %i.bm, %bb.ad ]
  %.3162 = phi ptr [ %i.bv, %bb.ag ], [ %.2161, %bb.ac ], [ %.2161, %bb.ad ] ; 2 uses
  %.3147 = phi i32 [ 0, %bb.ag ], [ %.2146, %bb.ac ], [ %.2146, %bb.ad ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !23 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  %i.cc = icmp ne ptr %.1156281, null
  %or.cond5 = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %or.cond5, label %bb.ak, label %bb.al

.thread244:                                       ; preds = %bb.ai
  %i.cd = load ptr, ptr %i.an, align 8, !tbaa !78
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !23 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  %i.ch = icmp ne ptr %.1156281, null
  %or.cond5248 = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %or.cond5248, label %.thread253, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.c, label %.thread253, label %.critedge.thread

.thread253:                                       ; preds = %.thread244, %bb.ak
  %.3162250259 = phi ptr [ %.3162, %bb.ak ], [ %.2161, %.thread244 ]
  %.3147252257 = phi i32 [ %.3147, %bb.ak ], [ 0, %.thread244 ]
  store i32 46, ptr %i.ai, align 8, !tbaa !43
  store i32 %.1154287, ptr %i.aj, align 4, !tbaa !79
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !80
  %i.ci = load ptr, ptr %i.al, align 8, !tbaa !42
  %i.cj = tail call i32 %i.ci(i32 noundef 0, ptr noundef nonnull %0) #7 ; 2 uses
  %.not209 = icmp eq i32 %i.cj, 0
  br i1 %.not209, label %.critedge.thread, label %.thread253._crit_edge

.thread253._crit_edge:                            ; preds = %.thread253
  %.pre298.a = load ptr, ptr %i.an, align 8, !tbaa !78
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre298.a, i64 8
  %.pre299 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !23
  br label %bb.al

bb.al:                                            ; preds = %.thread253._crit_edge, %.thread244, %bb.aj
  %i.ck = phi ptr [ %i.ca, %bb.aj ], [ %.pre299, %.thread253._crit_edge ], [ %i.cf, %.thread244 ] ; 4 uses
  %.3147251 = phi i32 [ %.3147, %bb.aj ], [ %.3147252257, %.thread253._crit_edge ], [ 0, %.thread244 ] ; 4 uses
  %.3162249 = phi ptr [ %.3162, %bb.aj ], [ %.3162250259, %.thread253._crit_edge ], [ %.2161, %.thread244 ] ; 4 uses
  %.2157 = phi ptr [ %.1156281, %bb.aj ], [ null, %.thread253._crit_edge ], [ %.1156281, %.thread244 ] ; 4 uses
  %.11 = phi i32 [ %.7, %bb.aj ], [ %i.cj, %.thread253._crit_edge ], [ %i.bx, %.thread244 ] ; 3 uses
  %.2 = phi i32 [ %.1143285, %bb.aj ], [ 0, %.thread253._crit_edge ], [ %.1143285, %.thread244 ] ; 3 uses
  %.not210 = icmp eq ptr %i.ck, null
  br i1 %.not210, label %bb.as, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !12
  %i.cm = icmp eq i32 %i.cl, 1
  br i1 %i.cm, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %.not211 = icmp eq i32 %.2, 0
  br i1 %.not211, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !13
  %i.cp = tail call fastcc i32 @asid_contains(ptr noundef %i.co, ptr noundef %.2157)
  %.not212 = icmp eq i32 %i.cp, 0
  br i1 %.not212, label %bb.aq, label %._crit_edge300

._crit_edge300:                                   ; preds = %bb.ao
  %.pre301 = load ptr, ptr %i.an, align 8, !tbaa !78
  %.phi.trans.insert302 = getelementptr inbounds nuw i8, ptr %.pre301, i64 8
  %.pre303 = load ptr, ptr %.phi.trans.insert302, align 8, !tbaa !23
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge300, %bb.an
  %i.cq = phi ptr [ %.pre303, %._crit_edge300 ], [ %i.ck, %bb.an ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !13
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  br i1 %i.c, label %bb.ar, label %.critedge.thread

bb.ar:                                            ; preds = %bb.aq
  store i32 46, ptr %i.ai, align 8, !tbaa !43
  store i32 %.1154287, ptr %i.aj, align 4, !tbaa !79
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !80
  %i.ct = load ptr, ptr %i.al, align 8, !tbaa !42
  %i.cu = tail call i32 %i.ct(i32 noundef 0, ptr noundef nonnull %0) #7 ; 2 uses
  %.not213 = icmp eq i32 %i.cu, 0
  br i1 %.not213, label %.critedge.thread, label %bb.as

bb.as:                                            ; preds = %bb.al, %bb.am, %bb.ar, %bb.ap, %bb.v, %bb.x
  %.4163 = phi ptr [ %.1160280, %bb.x ], [ null, %bb.v ], [ %.3162249, %bb.ap ], [ %.3162249, %bb.ar ], [ %.3162249, %bb.am ], [ %.3162249, %bb.al ]
  %.3158 = phi ptr [ %.1156281, %bb.x ], [ null, %bb.v ], [ %i.cs, %bb.ap ], [ %.2157, %bb.ar ], [ %.2157, %bb.am ], [ %.2157, %bb.al ]
  %.13 = phi i32 [ %i.at, %bb.x ], [ %.2150283, %bb.v ], [ %.11, %bb.ap ], [ %i.cu, %bb.ar ], [ %.11, %bb.am ], [ %.11, %bb.al ] ; 2 uses
  %.4 = phi i32 [ %.1145284, %bb.x ], [ %.1145284, %bb.v ], [ %.3147251, %bb.ap ], [ %.3147251, %bb.ar ], [ %.3147251, %bb.am ], [ %.3147251, %bb.al ]
  %.3 = phi i32 [ %.1143285, %bb.x ], [ %.1143285, %bb.v ], [ 0, %bb.ap ], [ 0, %bb.ar ], [ %.2, %bb.am ], [ %.2, %bb.al ]
  %.1154 = add nuw nsw i32 %.1154287, 1           ; 3 uses
  %i.cv = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %1) #7
  %i.cw = icmp slt i32 %.1154, %i.cv
  br i1 %i.cw, label %bb.r, label %._crit_edge.thread, !llvm.loop !55

._crit_edge:                                      ; preds = %bb.q
  %.not196 = icmp eq ptr %.0, null
  br i1 %.not196, label %bb.at, label %._crit_edge.thread, !prof !81

bb.at:                                            ; preds = %._crit_edge
  br i1 %i.c, label %bb.au, label %.critedge.thread

bb.au:                                            ; preds = %bb.at
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 1, ptr %i.cx, align 8, !tbaa !43
  br label %.critedge.thread

._crit_edge.thread:                               ; preds = %bb.as, %._crit_edge
  %.1154.lcssa337 = phi i32 [ %.1154279, %._crit_edge ], [ %.1154, %bb.as ] ; 2 uses
  %.1.lcssa336 = phi ptr [ %.0, %._crit_edge ], [ %i.am, %bb.as ] ; 3 uses
  %.2150.lcssa335 = phi i32 [ %.1149, %._crit_edge ], [ %.13, %bb.as ] ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.1.lcssa336, i64 304 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !78 ; 4 uses
  %.not197 = icmp eq ptr %i.cz, null
  br i1 %.not197, label %.critedge.thread, label %bb.av

bb.av:                                            ; preds = %._crit_edge.thread
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !22 ; 2 uses
  %.not198 = icmp eq ptr %i.da, null
  br i1 %.not198, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.db = load i32, ptr %i.da, align 8, !tbaa !12
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.c, label %bb.ay, label %.critedge.thread

bb.ay:                                            ; preds = %bb.ax
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 46, ptr %i.dd, align 8, !tbaa !43
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %.1154.lcssa337, ptr %i.de, align 4, !tbaa !79
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %.1.lcssa336, ptr %i.df, align 8, !tbaa !80
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !42
  %i.di = tail call i32 %i.dh(i32 noundef 0, ptr noundef nonnull %0) #7 ; 2 uses
  %.not199 = icmp eq i32 %i.di, 0
  br i1 %.not199, label %.critedge.thread, label %._crit_edge304

._crit_edge304:                                   ; preds = %bb.ay
  %.pre305 = load ptr, ptr %i.cy, align 8, !tbaa !78
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge304, %bb.aw, %bb.av
  %i.dj = phi ptr [ %.pre305, %._crit_edge304 ], [ %i.cz, %bb.aw ], [ %i.cz, %bb.av ]
  %.15 = phi i32 [ %i.di, %._crit_edge304 ], [ %.2150.lcssa335, %bb.aw ], [ %.2150.lcssa335, %bb.av ] ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !23 ; 2 uses
  %.not200 = icmp eq ptr %i.dl, null
  br i1 %.not200, label %.critedge.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !12
  %i.dn = icmp eq i32 %i.dm, 0                    ; 2 uses
  %brmerge.not = and i1 %i.dn, %i.c
  %.15.mux = select i1 %i.dn, i32 0, i32 %.15
  br i1 %brmerge.not, label %bb.bb, label %.critedge.thread

bb.bb:                                            ; preds = %bb.ba
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 46, ptr %i.do, align 8, !tbaa !43
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %.1154.lcssa337, ptr %i.dp, align 4, !tbaa !79
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %.1.lcssa336, ptr %i.dq, align 8, !tbaa !80
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !42
  %i.dt = tail call i32 %i.ds(i32 noundef 0, ptr noundef nonnull %0) #7
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.aq, %bb.ak, %bb.ah, %bb.ab, %X509v3_asid_is_canonical.exit220.thread, %bb.w, %bb.x, %bb.z, %.thread237, %bb.ai, %.thread253, %bb.ar, %bb.ax, %X509v3_asid_is_canonical.exit.thread, %bb.c, %bb.ba, %bb.f, %bb.h, %bb.ay, %bb.az, %._crit_edge.thread, %bb.bb, %bb.at, %bb.au, %bb.s, %bb.t, %.critedge, %.critedge.thread222
  %.0165 = phi i32 [ 0, %bb.at ], [ 0, %.critedge ], [ 0, %bb.s ], [ 0, %.critedge.thread222 ], [ 0, %bb.t ], [ 0, %bb.au ], [ 0, %bb.ay ], [ %.2150.lcssa335, %._crit_edge.thread ], [ 0, %bb.h ], [ 0, %bb.ax ], [ 0, %bb.c ], [ 0, %X509v3_asid_is_canonical.exit.thread ], [ %i.dt, %bb.bb ], [ 1, %bb.f ], [ %.15.mux, %bb.ba ], [ %.15, %bb.az ], [ 0, %bb.ar ], [ 0, %.thread253 ], [ 0, %bb.ai ], [ 0, %.thread237 ], [ 0, %bb.z ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %X509v3_asid_is_canonical.exit220.thread ], [ 0, %bb.ab ], [ 0, %bb.ah ], [ 0, %bb.ak ], [ 0, %bb.aq ]
  ret i32 %.0165
}

; Function Attrs: nounwind uwtable
define i32 @X509v3_asid_validate_resource_set(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %X509v3_asid_inherits.exit.thread11, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %X509v3_asid_inherits.exit.thread11, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %0) #7
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %X509v3_asid_inherits.exit.thread11, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.e, label %X509v3_asid_inherits.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %.not7.i = icmp eq ptr %i.e, null
  br i1 %.not7.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = load i32, ptr %i.e, align 8, !tbaa !12
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %X509v3_asid_inherits.exit.thread11, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %.not8.i = icmp eq ptr %i.i, null
  br i1 %.not8.i, label %X509v3_asid_inherits.exit.thread, label %X509v3_asid_inherits.exit

X509v3_asid_inherits.exit:                        ; preds = %bb.g
  %i.j = load i32, ptr %i.i, align 8, !tbaa !12
  %.not13 = icmp eq i32 %i.j, 0
  br i1 %.not13, label %X509v3_asid_inherits.exit.thread11, label %X509v3_asid_inherits.exit.thread

X509v3_asid_inherits.exit.thread:                 ; preds = %bb.g, %X509v3_asid_inherits.exit, %bb.d
  %i.k = tail call fastcc i32 @asid_validate_path_internal(ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %X509v3_asid_inherits.exit.thread11

X509v3_asid_inherits.exit.thread11:               ; preds = %bb.f, %X509v3_asid_inherits.exit, %bb.b, %bb.c, %bb.a, %X509v3_asid_inherits.exit.thread
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ], [ %i.k, %X509v3_asid_inherits.exit.thread ], [ 0, %bb.c ], [ 0, %X509v3_asid_inherits.exit ], [ 0, %bb.f ]
  ret i32 %.0
}

declare ptr @ASN1_INTEGER_it() #2

declare ptr @ASN1_NULL_it() #2

declare i32 @ASN1_INTEGER_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BN_new() local_unnamed_addr #2

declare ptr @ASN1_INTEGER_to_BN(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_add_word(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @BN_to_ASN1_INTEGER(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BN_free(ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_sort(ptr noundef) local_unnamed_addr #2

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ossl_v3_name_cmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_add_error_data(i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @X509V3_get_value_int(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CRYPTO_strdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @s2i_ASN1_INTEGER(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @i2r_ASIdentifierChoice(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %2, ptr noundef nonnull @.str.23, ptr noundef %3) #7 ; 0 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !12
  switch i32 %i.c, label %.critedge [
    i32 0, label %bb.c
    i32 1, label %.preheader
  ]

.preheader:                                       ; preds = %bb.b
  %i.d = add nsw i32 %2, 2                        ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.g = tail call i32 @OPENSSL_sk_num(ptr noundef %i.f) #7
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.i = add nsw i32 %2, 2
  %i.j = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %i.i, ptr noundef nonnull @.str.23) #7 ; 0 uses
  br label %.critedge

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %.02834 = phi i32 [ %i.ae, %bb.i ], [ 0, %.preheader ] ; 2 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.l = tail call ptr @OPENSSL_sk_value(ptr noundef %i.k, i32 noundef %.02834) #7 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !15
  switch i32 %i.m, label %.critedge [
    i32 0, label %bb.d
    i32 1, label %bb.f
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !13
  %i.p = tail call ptr @i2s_ASN1_INTEGER(ptr noundef null, ptr noundef %i.o) #7 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %i.d, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.p) #7 ; 0 uses
  tail call void @CRYPTO_free(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.12, i32 noundef 83) #7
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !13
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18
  %i.v = tail call ptr @i2s_ASN1_INTEGER(ptr noundef null, ptr noundef %i.u) #7 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %i.d, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.v) #7 ; 0 uses
  tail call void @CRYPTO_free(ptr noundef nonnull %i.v, ptr noundef nonnull @.str.12, i32 noundef 89) #7
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !13
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19
  %i.ab = tail call ptr @i2s_ASN1_INTEGER(ptr noundef null, ptr noundef %i.aa) #7 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.ab) #7 ; 0 uses
  tail call void @CRYPTO_free(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.12, i32 noundef 93) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.ae = add nuw nsw i32 %.02834, 1              ; 2 uses
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.ag = tail call i32 @OPENSSL_sk_num(ptr noundef %i.af) #7
  %i.ah = icmp slt i32 %i.ae, %i.ag
  br i1 %i.ah, label %.lr.ph, label %.critedge, !llvm.loop !82

.critedge:                                        ; preds = %bb.i, %bb.d, %.lr.ph, %bb.f, %bb.g, %.preheader, %bb.c, %bb.b, %bb.a
  %.2 = phi i32 [ 1, %bb.c ], [ 1, %bb.a ], [ 0, %bb.b ], [ 1, %.preheader ], [ 0, %bb.f ], [ 0, %.lr.ph ], [ 0, %bb.d ], [ 1, %bb.i ], [ 0, %bb.g ]
  ret i32 %.2
}
end_hunk_0
