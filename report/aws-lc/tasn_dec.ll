Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/tasn_dec?download=true
inline.NumInlined: 22
inline.NumDeleted: 9
begin_hunk_0_@asn1_template_noexp_d2i:bb.a
bb.m:                                             ; preds = %bb.f, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 158, ptr noundef nonnull @.str, i32 noundef 534) #6
  br label %.thread113

bb.n:                                             ; preds = %._crit_edge129, %bb.l
  %i.z = phi ptr [ %.pre130, %._crit_edge129 ], [ %i.v, %bb.l ]
  %i.aa = phi i64 [ %.pre, %._crit_edge129 ], [ %i.y, %bb.l ] ; 2 uses
  store ptr %i.z, ptr %i.e, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.ab = load ptr, ptr %0, align 8, !tbaa !12    ; 4 uses
  %.not63 = icmp eq ptr %i.ab, null
  br i1 %.not63, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = call ptr @OPENSSL_sk_new_null() #6      ; 2 uses
  store ptr %i.ac, ptr %0, align 8, !tbaa !12
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.ad = call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.ab) #6
  %.not64122 = icmp eq i64 %i.ad, 0
  br i1 %.not64122, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph, %bb.q
  %i.af = call ptr @OPENSSL_sk_pop(ptr noundef nonnull %i.ab) #6
  store ptr %i.af, ptr %i.f, align 8, !tbaa !12
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !50
  call void @ASN1_item_ex_free(ptr noundef nonnull %i.f, ptr noundef %i.ag) #6
  %i.ah = call i64 @OPENSSL_sk_num(ptr noundef nonnull %i.ab) #6
  %.not64 = icmp eq i64 %i.ah, 0
  br i1 %.not64, label %._crit_edge, label %bb.q, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  %.pr = load ptr, ptr %0, align 8, !tbaa !12
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.o
  %i.ai = phi ptr [ %.pr, %._crit_edge ], [ %i.ac, %bb.o ]
  %.not65 = icmp eq ptr %i.ai, null
  br i1 %.not65, label %.thread109, label %.preheader

.preheader:                                       ; preds = %bb.r
  %i.aj = icmp sgt i64 %i.aa, 0
  br i1 %i.aj, label %.lr.ph124, label %._crit_edge125

.lr.ph124:                                        ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph124, %bb.ab
  %.084123 = phi i64 [ %i.aa, %.lr.ph124 ], [ %i.bc, %bb.ab ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !14  ; 4 uses
  %i.am = icmp eq i64 %.084123, 1
  br i1 %i.am, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.an = load i8, ptr %i.al, align 1, !tbaa !18
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !18
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  store ptr %i.as, ptr %i.e, align 8, !tbaa !14
  br i1 %.not31.i, label %bb.w, label %.thread105

bb.w:                                             ; preds = %bb.v
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 180, ptr noundef nonnull @.str, i32 noundef 562) #6
  br label %.thread

.thread105:                                       ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  br label %bb.ai

bb.x:                                             ; preds = %bb.s, %bb.u, %bb.t
  store ptr null, ptr %i.g, align 8, !tbaa !12
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !50
  %i.au = call fastcc i32 @asn1_item_ex_d2i(ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, i64 noundef %.084123, ptr noundef %i.at, i32 noundef -1, i32 noundef 0, i8 noundef signext 0, i32 noundef %5)
  %.not67 = icmp eq i32 %i.au, 0
  br i1 %.not67, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 158, ptr noundef nonnull @.str, i32 noundef 572) #6
  br label %.thread

bb.z:                                             ; preds = %bb.x
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.aw = load ptr, ptr %0, align 8, !tbaa !12
  %i.ax = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.ay = call i64 @OPENSSL_sk_push(ptr noundef %i.aw, ptr noundef %i.ax) #6
  %.not68 = icmp eq i64 %i.ay, 0
  br i1 %.not68, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.az = load ptr, ptr %i.ak, align 8, !tbaa !50
  call void @ASN1_item_ex_free(ptr noundef nonnull %i.g, ptr noundef %i.az) #6
  br label %.thread

.thread:                                          ; preds = %bb.w, %bb.y, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  br label %.thread109

bb.ab:                                            ; preds = %bb.z
  %i.ba = ptrtoint ptr %i.al to i64
  %i.bb = ptrtoint ptr %i.av to i64
  %.neg = add i64 %.084123, %i.ba
  %i.bc = sub i64 %.neg, %i.bb                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %bb.s, label %._crit_edge125

._crit_edge125:                                   ; preds = %bb.ab, %.preheader
  br i1 %.not31.i, label %bb.ai, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge125
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 153, ptr noundef nonnull @.str, i32 noundef 582) #6
  br label %.thread109

bb.ad:                                            ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !50 ; 2 uses
  br i1 %.not57, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !25
  %i.bi = call fastcc i32 @asn1_item_ex_d2i(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef %2, ptr noundef %i.bf, i32 noundef %i.bh, i32 noundef %i.i, i8 noundef signext %4, i32 noundef %5) ; 2 uses
  switch i32 %i.bi, label %bb.ai [
    i32 0, label %bb.af
    i32 -1, label %.thread113
  ]

bb.af:                                            ; preds = %bb.ae
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 158, ptr noundef nonnull @.str, i32 noundef 590) #6
  br label %.thread109

bb.ag:                                            ; preds = %bb.ad
  %i.bj = and i32 %i.h, 1024
  %i.bk = call fastcc i32 @asn1_item_ex_d2i(ptr noundef nonnull %0, ptr noundef nonnull %i.e, i64 noundef %2, ptr noundef %i.bf, i32 noundef -1, i32 noundef %i.bj, i8 noundef signext %4, i32 noundef %5) ; 2 uses
  switch i32 %i.bk, label %bb.ai [
    i32 0, label %bb.ah
    i32 -1, label %.thread113
  ]

bb.ah:                                            ; preds = %bb.ag
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 158, ptr noundef nonnull @.str, i32 noundef 600) #6
  br label %.thread109

bb.ai:                                            ; preds = %._crit_edge125, %.thread105, %bb.ag, %bb.ae
  %i.bl = load ptr, ptr %i.e, align 8, !tbaa !14
  store ptr %i.bl, ptr %1, align 8, !tbaa !14
  br label %.thread113

.thread109:                                       ; preds = %bb.r, %bb.ac, %.thread, %bb.ah, %bb.af
  call void @ASN1_template_free(ptr noundef nonnull %0, ptr noundef nonnull %3) #6
  br label %.thread113

.thread113:                                       ; preds = %asn1_check_tlen.exit, %bb.m, %bb.ai, %.thread109, %bb.ae, %bb.ag
  %.151 = phi i32 [ %i.bk, %bb.ag ], [ 1, %bb.ai ], [ 0, %.thread109 ], [ %i.bi, %bb.ae ], [ -1, %asn1_check_tlen.exit ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  ret i32 %.151
}

declare ptr @OPENSSL_sk_new_null() local_unnamed_addr #3

declare i64 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #3

declare ptr @OPENSSL_sk_pop(ptr noundef) local_unnamed_addr #3

declare i64 @OPENSSL_sk_push(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @asn1_collect(ptr noundef nonnull %0, ptr nofree noundef nonnull captures(none) %1, i64 noundef %2, i8 noundef signext %3, i32 noundef range(i32 0, 6) %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.f = load ptr, ptr %1, align 8, !tbaa !14     ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !14
  %i.g = and i8 %3, 1
  %.not = icmp eq i8 %i.g, 0                      ; 2 uses
  %i.h = icmp sgt i64 %2, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = icmp samesign ugt i32 %4, 4
  %i.j = add nuw nsw i32 %4, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %i.l = phi ptr [ %i.f, %.lr.ph ], [ %i.an, %bb.q ] ; 6 uses
  %.02362 = phi i64 [ %2, %.lr.ph ], [ %i.aq, %bb.q ] ; 4 uses
  %i.m = icmp eq i64 %.02362, 1
  br i1 %i.m, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i8, ptr %i.l, align 1, !tbaa !18
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  br i1 %.not, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 180, ptr noundef nonnull @.str, i32 noundef 970) #6
  br label %collect_data.exit.thread

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store ptr %i.l, ptr %i.d, align 8, !tbaa !14
  %i.t = call i32 @ASN1_get_object(ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %.02362) #6 ; 3 uses
  %i.u = and i32 %i.t, 128
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = and i32 %i.t, 1                          ; 2 uses
  %.not31.i = icmp eq i32 %i.v, 0
  br i1 %.not31.i, label %thread-pre-split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.l to i64
  %.neg.i = add i64 %.02362, %i.y
  %i.z = sub i64 %.neg.i, %i.x
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str, i32 noundef 1048) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 158, ptr noundef nonnull @.str, i32 noundef 979) #6
  br label %collect_data.exit.thread

thread-pre-split:                                 ; preds = %bb.h
  %.pr = load i64, ptr %i.c, align 8, !tbaa !9
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %thread-pre-split, %bb.i
  %i.aa = phi ptr [ %.pre, %thread-pre-split ], [ %i.w, %bb.i ] ; 4 uses
  %i.ab = phi i64 [ %.pr, %thread-pre-split ], [ %i.z, %bb.i ] ; 5 uses
  %i.ac = trunc nuw nsw i32 %i.v to i8
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.ad = and i32 %i.t, 32
  %.not29 = icmp eq i32 %i.ad, 0
  br i1 %.not29, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 159, ptr noundef nonnull @.str, i32 noundef 986) #6
  br label %collect_data.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.ae = call fastcc i32 @asn1_collect(ptr noundef %0, ptr noundef %i.e, i64 noundef %i.ab, i8 noundef signext %i.ac, i32 noundef %i.j)
  %.not32 = icmp eq i32 %i.ae, 0
  br i1 %.not32, label %collect_data.exit.thread, label %._crit_edge67

._crit_edge67:                                    ; preds = %bb.n
  %.pre68 = load ptr, ptr %i.e, align 8, !tbaa !14
  br label %bb.q

bb.o:                                             ; preds = %bb.k
  %.not30 = icmp eq i64 %i.ab, 0
  br i1 %.not30, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = load i64, ptr %0, align 8, !tbaa !27
  %i.ag = shl i64 %i.af, 32
  %i.ah = ashr exact i64 %i.ag, 32                ; 2 uses
  %i.ai = add nsw i64 %i.ah, %i.ab
  %i.aj = call i64 @BUF_MEM_grow_clean(ptr noundef nonnull %0, i64 noundef %i.ai) #6
  %.not.i35 = icmp eq i64 %i.aj, 0
  br i1 %.not.i35, label %collect_data.exit.thread, label %collect_data.exit

collect_data.exit:                                ; preds = %bb.p
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !28
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.al, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.aa, i64 range(i64 1, 0) %i.ab, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.aa, i64 %i.ab ; 2 uses
  store ptr %i.am, ptr %i.e, align 8, !tbaa !14
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge67, %collect_data.exit, %bb.o
  %i.an = phi ptr [ %.pre68, %._crit_edge67 ], [ %i.am, %collect_data.exit ], [ %i.aa, %bb.o ] ; 3 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.l to i64
  %.neg = add i64 %.02362, %i.ap
  %i.aq = sub i64 %.neg, %i.ao                    ; 2 uses
  %i.ar = icmp sgt i64 %i.aq, 0
  br i1 %i.ar, label %bb.b, label %._crit_edge, !llvm.loop !51

._crit_edge:                                      ; preds = %bb.q, %bb.a
  %i.as = phi ptr [ %i.f, %bb.a ], [ %i.an, %bb.q ]
  br i1 %.not, label %.thread, label %bb.r

bb.r:                                             ; preds = %._crit_edge
  call void @ERR_put_error(i32 noundef 12, i32 noundef 0, i32 noundef 153, ptr noundef nonnull @.str, i32 noundef 998) #6
  br label %collect_data.exit.thread

.thread:                                          ; preds = %bb.e, %._crit_edge
  %i.at = phi ptr [ %i.s, %bb.e ], [ %i.as, %._crit_edge ]
  store ptr %i.at, ptr %1, align 8, !tbaa !14
  br label %collect_data.exit.thread

collect_data.exit.thread:                         ; preds = %bb.p, %bb.n, %.thread, %bb.r, %bb.m, %bb.j, %bb.f
  %.0 = phi i32 [ 0, %bb.r ], [ 1, %.thread ], [ 0, %bb.f ], [ 0, %bb.m ], [ 0, %bb.j ], [ 0, %bb.n ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  ret i32 %.0
}

declare i64 @BUF_MEM_grow_clean(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @OPENSSL_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @ASN1_TYPE_new() local_unnamed_addr #3

declare void @ASN1_TYPE_set(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @c2i_ASN1_OBJECT(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @c2i_ASN1_BIT_STRING(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @c2i_ASN1_INTEGER(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @CBS_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @CBS_parse_utc_time(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @CBS_parse_generalized_time(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ASN1_STRING_type_new(i32 noundef) local_unnamed_addr #3

declare i32 @ASN1_STRING_set(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @ASN1_STRING_free(ptr noundef) local_unnamed_addr #3

declare void @ASN1_TYPE_free(ptr noundef) local_unnamed_addr #3

declare i32 @ASN1_get_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

end_hunk_0
