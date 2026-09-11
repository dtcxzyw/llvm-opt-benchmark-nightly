Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/v3_conf?download=true
inline.NumInlined: 28
inline.NumDeleted: 11
begin_hunk_0_@X509V3_EXT_add_nconf_sk:bb.a
  br i1 %or.cond.fr, label %.lr.ph63.split.us.split.us, label %.lr.ph63.split.us.split

.lr.ph63.split.us.split.us:                       ; preds = %.lr.ph63.split.us, %bb.d
  %.14862.us.us = phi i32 [ %i.t, %bb.d ], [ 0, %.lr.ph63.split.us ] ; 4 uses
  %i.i = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.a, i32 noundef %.14862.us.us) #7
  %i.j = icmp eq i32 %.14862.us.us, %.045.lcssa
  br i1 %i.j, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %.lr.ph63.split.us.split.us
  %i.k = icmp eq i32 %.14862.us.us, %.0.lcssa
  br i1 %i.k, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %.lr.ph63.split.us.split.us, %bb.b
  %.0.lcssa.sink = phi i32 [ %.045.lcssa, %bb.b ], [ %.0.lcssa, %.lr.ph63.split.us.split.us ]
  %i.l = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.a, i32 noundef %.0.lcssa.sink) #7
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.049.us.us = phi ptr [ %i.i, %bb.b ], [ %i.l, %.sink.split ] ; 3 uses
  %i.m = load ptr, ptr %.049.us.us, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %.049.us.us, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %.049.us.us, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46
  %i.r = tail call fastcc ptr @X509V3_EXT_nconf_int(ptr noundef %0, ptr noundef %1, ptr noundef %i.m, ptr noundef %i.o, ptr noundef %i.q) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @X509_EXTENSION_free(ptr noundef nonnull %i.r) #7
  %i.t = add nuw nsw i32 %.14862.us.us, 1         ; 2 uses
  %i.u = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.a) #7
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %.lr.ph63.split.us.split.us, label %._crit_edge, !llvm.loop !40

.lr.ph63.split.us.split:                          ; preds = %.lr.ph63.split.us, %bb.e
  %.14862.us = phi i32 [ %i.ae, %bb.e ], [ 0, %.lr.ph63.split.us ] ; 2 uses
  %i.w = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.a, i32 noundef %.14862.us) #7 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !44
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !46
  %i.ac = tail call fastcc ptr @X509V3_EXT_nconf_int(ptr noundef %0, ptr noundef %1, ptr noundef %i.x, ptr noundef %i.z, ptr noundef %i.ab) ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph63.split.us.split
  tail call void @X509_EXTENSION_free(ptr noundef nonnull %i.ac) #7
  %i.ae = add nuw nsw i32 %.14862.us, 1           ; 2 uses
  %i.af = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.a) #7
  %i.ag = icmp slt i32 %i.ae, %i.af
  br i1 %i.ag, label %.lr.ph63.split.us.split, label %._crit_edge, !llvm.loop !40

.lr.ph:                                           ; preds = %.preheader56, %bb.g
  %.060 = phi i32 [ %.1, %bb.g ], [ -1, %.preheader56 ] ; 2 uses
  %.04559 = phi i32 [ %.146, %bb.g ], [ -1, %.preheader56 ]
  %.04758 = phi i32 [ %i.ao, %bb.g ], [ 0, %.preheader56 ] ; 4 uses
  %i.ah = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.a, i32 noundef %.04758) #7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !45 ; 2 uses
  %i.ak = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aj, ptr noundef nonnull dereferenceable(23) @.str.1) #6
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.am = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aj, ptr noundef nonnull dereferenceable(21) @.str.2) #6
  %i.an = icmp eq i32 %i.am, 0
  %spec.select = select i1 %i.an, i32 %.04758, i32 %.060
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %.146 = phi i32 [ %.04559, %bb.f ], [ %.04758, %.lr.ph ] ; 2 uses
  %.1 = phi i32 [ %spec.select, %bb.f ], [ %.060, %.lr.ph ] ; 2 uses
  %i.ao = add nuw nsw i32 %.04758, 1              ; 2 uses
  %i.ap = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.a) #7
  %i.aq = icmp slt i32 %i.ao, %i.ap
  br i1 %i.aq, label %.lr.ph, label %.preheader, !llvm.loop !41

.lr.ph63.split:                                   ; preds = %.lr.ph63, %bb.m
  %.14862 = phi i32 [ %i.bo, %bb.m ], [ 0, %.lr.ph63 ] ; 4 uses
  %i.ar = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.a, i32 noundef %.14862) #7 ; 2 uses
  br i1 %or.cond.fr, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph63.split
  %i.as = icmp eq i32 %.14862, %.045.lcssa
  br i1 %i.as, label %.sink.split86, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = icmp eq i32 %.14862, %.0.lcssa
  br i1 %i.at, label %.sink.split86, label %bb.j

.sink.split86:                                    ; preds = %bb.i, %bb.h
  %.0.lcssa.sink87 = phi i32 [ %.0.lcssa, %bb.h ], [ %.045.lcssa, %bb.i ]
  %i.au = tail call ptr @OPENSSL_sk_value(ptr noundef nonnull %i.a, i32 noundef %.0.lcssa.sink87) #7
  br label %bb.j

bb.j:                                             ; preds = %.sink.split86, %bb.i, %.lr.ph63.split
  %.049 = phi ptr [ %i.ar, %bb.i ], [ %i.ar, %.lr.ph63.split ], [ %i.au, %.sink.split86 ] ; 3 uses
  %i.av = load ptr, ptr %.049, align 8, !tbaa !44
  %i.aw = getelementptr inbounds nuw i8, ptr %.049, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !45
  %i.ay = getelementptr inbounds nuw i8, ptr %.049, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !46
  %i.ba = tail call fastcc ptr @X509V3_EXT_nconf_int(ptr noundef %0, ptr noundef %1, ptr noundef %i.av, ptr noundef %i.ax, ptr noundef %i.az) ; 4 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = load i32, ptr %1, align 8, !tbaa !29
  %i.bd = icmp eq i32 %i.bc, 2
  br i1 %i.bd, label %bb.l, label %delete_ext.exit

bb.l:                                             ; preds = %bb.k
  %i.be = load ptr, ptr %3, align 8, !tbaa !31    ; 3 uses
  %i.bf = tail call ptr @X509_EXTENSION_get_object(ptr noundef nonnull %i.ba) #7 ; 2 uses
  %i.bg = tail call i32 @X509v3_get_ext_by_OBJ(ptr noundef %i.be, ptr noundef %i.bf, i32 noundef -1) #7 ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, -1
  br i1 %i.bh, label %.lr.ph.i, label %delete_ext.exit

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %i.bi = phi i32 [ %i.bk, %.lr.ph.i ], [ %i.bg, %bb.l ]
  %i.bj = tail call ptr @X509v3_delete_ext(ptr noundef %i.be, i32 noundef %i.bi) #7
  tail call void @X509_EXTENSION_free(ptr noundef %i.bj) #7
  %i.bk = tail call i32 @X509v3_get_ext_by_OBJ(ptr noundef %i.be, ptr noundef %i.bf, i32 noundef -1) #7 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, -1
  br i1 %i.bl, label %.lr.ph.i, label %delete_ext.exit, !llvm.loop !42

delete_ext.exit:                                  ; preds = %.lr.ph.i, %bb.l, %bb.k
  %i.bm = tail call ptr @X509v3_add_ext(ptr noundef nonnull %3, ptr noundef nonnull %i.ba, i32 noundef -1) #7
  %i.bn = icmp eq ptr %i.bm, null
  tail call void @X509_EXTENSION_free(ptr noundef nonnull %i.ba) #7
  br i1 %i.bn, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %delete_ext.exit
  %i.bo = add nuw nsw i32 %.14862, 1              ; 2 uses
  %i.bp = tail call i32 @OPENSSL_sk_num(ptr noundef nonnull %i.a) #7
  %i.bq = icmp slt i32 %i.bo, %i.bp
  br i1 %i.bq, label %.lr.ph63.split, label %._crit_edge.thread, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.e, %bb.d, %.preheader
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %.loopexit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.m, %._crit_edge
  %i.br = load ptr, ptr %3, align 8, !tbaa !31
  %i.bs = tail call i32 @OPENSSL_sk_num(ptr noundef %i.br) #7
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %._crit_edge.thread
  %i.bu = load ptr, ptr %3, align 8, !tbaa !31
  tail call void @OPENSSL_sk_free(ptr noundef %i.bu) #7
  store ptr null, ptr %3, align 8, !tbaa !31
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %delete_ext.exit, %.lr.ph63.split.us.split, %bb.c, %._crit_edge, %._crit_edge.thread, %bb.n, %bb.a
  %.050 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.a ], [ 0, %.lr.ph63.split.us.split ], [ 1, %bb.n ], [ 1, %._crit_edge.thread ], [ 0, %bb.c ], [ 0, %delete_ext.exit ], [ 0, %bb.j ]
  ret i32 %.050
}

declare ptr @NCONF_get_section(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare ptr @X509v3_add_ext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @X509_EXTENSION_free(ptr noundef) #2

declare void @OPENSSL_sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509V3_EXT_add_nconf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %3, null
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 104
  %spec.select = select i1 %.not, ptr null, ptr %i.a
  %i.b = tail call i32 @X509V3_EXT_add_nconf_sk(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %spec.select)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @X509V3_EXT_CRL_add_nconf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %3, null
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 56
  %spec.select = select i1 %.not, ptr null, ptr %i.a
  %i.b = tail call i32 @X509V3_EXT_add_nconf_sk(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %spec.select)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define i32 @X509V3_EXT_REQ_add_nconf(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr null, ptr %i.b, align 8, !tbaa !31
  %.not19 = icmp eq ptr %3, null
  br i1 %.not19, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.c = call i32 @X509V3_EXT_add_nconf_sk(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.b)
  br label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @X509_REQ_get_extension_nids() #7 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !48   ; 2 uses
  %.not21 = icmp eq i32 %i.e, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.f = phi i32 [ %i.k, %bb.c ], [ %i.e, %bb.b ]
  %.022 = phi ptr [ %i.j, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.g = tail call ptr @ossl_x509_req_get1_extensions_by_nid(ptr noundef nonnull %3, i32 noundef %i.f) #7 ; 3 uses
  %i.h = tail call i32 @OPENSSL_sk_num(ptr noundef %i.g) #7
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @OPENSSL_sk_free(ptr noundef %i.g) #7
  %i.j = getelementptr inbounds nuw i8, ptr %.022, i64 4 ; 3 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !48   ; 2 uses
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.sink.split, label %.lr.ph, !llvm.loop !47

.sink.split:                                      ; preds = %.lr.ph, %bb.c
  %.lcssa.sink = phi ptr [ null, %bb.c ], [ %i.g, %.lr.ph ]
  %.0.lcssa.ph = phi ptr [ %i.j, %bb.c ], [ %.022, %.lr.ph ]
  store ptr %.lcssa.sink, ptr %i.b, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.sink.split, %bb.b
  %.0.lcssa = phi ptr [ %i.d, %bb.b ], [ %.0.lcssa.ph, %.sink.split ] ; 2 uses
  %i.l = call i32 @X509V3_EXT_add_nconf_sk(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.b)
  %.not20 = icmp eq i32 %i.l, 0
  br i1 %.not20, label %bb.m, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !31   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !15
  %i.n = load i32, ptr %.0.lcssa, align 4, !tbaa !48 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = call ptr @X509_REQ_get_extension_nids() #7 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %update_req_extensions.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %.pre.i = load i32, ptr %i.p, align 4, !tbaa !48
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %bb.d
  %i.r = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.n, %bb.d ]
  %.022.i = phi ptr [ %i.p, %._crit_edge.i ], [ %.0.lcssa, %bb.d ]
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !61
  %i.u = call i32 @X509at_get_attr_by_NID(ptr noundef %i.t, i32 noundef %i.r, i32 noundef -1) #7 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = call ptr @X509_EXTENSIONS_it() #7
  %i.w = call i32 @ASN1_item_i2d(ptr noundef nonnull %i.m, ptr noundef nonnull %i.a, ptr noundef %i.v) #7 ; 2 uses
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %update_req_extensions.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.019.i = phi i32 [ %i.w, %bb.g ], [ 0, %bb.f ]
  %.not29.i = icmp eq i32 %i.u, -1
  br i1 %.not29.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = call ptr @X509_REQ_delete_attr(ptr noundef nonnull %3, i32 noundef %i.u) #7 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.l, label %.thread.i

.thread.i:                                        ; preds = %bb.i
  call void @X509_ATTRIBUTE_free(ptr noundef nonnull %i.y) #7
  br label %bb.j

bb.j:                                             ; preds = %.thread.i, %bb.h
  %i.aa = call i32 @OPENSSL_sk_num(ptr noundef %i.m) #7
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = load i32, ptr %.022.i, align 4, !tbaa !48
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.ae = call i32 @X509_REQ_add1_attr_by_NID(ptr noundef nonnull %3, i32 noundef %i.ac, i32 noundef 16, ptr noundef %i.ad, i32 noundef %.019.i) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.020.i = phi i32 [ %i.ae, %bb.k ], [ 1, %bb.j ], [ 0, %bb.i ]
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !15
  call void @CRYPTO_free(ptr noundef %i.af, ptr noundef nonnull @.str, i32 noundef 413) #7
  br label %update_req_extensions.exit

update_req_extensions.exit:                       ; preds = %bb.e, %bb.g, %bb.l
  %.021.i = phi i32 [ %.020.i, %bb.l ], [ 0, %bb.e ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.m

bb.m:                                             ; preds = %.thread, %update_req_extensions.exit, %._crit_edge
  %.013 = phi i32 [ %.021.i, %update_req_extensions.exit ], [ 0, %._crit_edge ], [ %i.c, %.thread ]
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !31
  call void @OPENSSL_sk_pop_free(ptr noundef %i.ag, ptr noundef nonnull @X509_EXTENSION_free) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i32 %.013
}

declare ptr @X509_REQ_get_extension_nids() local_unnamed_addr #2

declare ptr @ossl_x509_req_get1_extensions_by_nid(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @OPENSSL_sk_pop_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @X509V3_get_string(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %.not11 = icmp eq ptr %i.d, null
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %.not12 = icmp eq ptr %i.e, null
  br i1 %.not12, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 454, ptr noundef nonnull @__func__.X509V3_get_string) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 148, ptr noundef null) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = tail call ptr %i.e(ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %2) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.f, %bb.e ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @X509V3_get_section(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %.not10 = icmp eq ptr %i.d, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63   ; 2 uses
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 463, ptr noundef nonnull @__func__.X509V3_get_section) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 34, i32 noundef 148, ptr noundef null) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.g = tail call ptr %i.f(ptr noundef nonnull %i.b, ptr noundef %1) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.g, %bb.e ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define void @X509V3_string_free(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  tail call void %i.d(ptr noundef %i.f, ptr noundef nonnull %1) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @X509V3_section_free(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !65   ; 2 uses
  %.not6 = icmp eq ptr %i.d, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  tail call void %i.d(ptr noundef %i.f, ptr noundef nonnull %1) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
end_hunk_0
