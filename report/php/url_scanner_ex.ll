inline.NumInlined: 24
inline.NumDeleted: 11
begin_hunk_0_@php_url_scanner_ex_deactivate:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !23
  %i.e = and i32 %i.d, 64
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %zend_string_release_ex.exit.i

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.b, align 4, !tbaa !36   ; 2 uses
  %i.g = icmp ne i32 %i.f, 0
  tail call void @llvm.assume(i1 %i.g)
  %i.h = add i32 %i.f, -1                         ; 2 uses
  store i32 %i.h, ptr %i.b, align 4, !tbaa !36
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %zend_string_release_ex.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_efree(ptr noundef nonnull %i.b) #18
  br label %zend_string_release_ex.exit.i

zend_string_release_ex.exit.i:                    ; preds = %bb.d, %bb.c, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !12
  br label %smart_str_free_ex.exit

smart_str_free_ex.exit:                           ; preds = %bb.a, %zend_string_release_ex.exit.i
  %i.j = select i1 %0, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 960), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1184)
  store i64 0, ptr %i.j, align 8, !tbaa !21
  %i.k = select i1 %0, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 936), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1160) ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12   ; 5 uses
  %.not.i5 = icmp eq ptr %i.l, null
  br i1 %.not.i5, label %smart_str_free_ex.exit8, label %bb.e

bb.e:                                             ; preds = %smart_str_free_ex.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !23
  %i.o = and i32 %i.n, 64
  %.not.i.i6 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i6, label %bb.f, label %zend_string_release_ex.exit.i7

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.l, align 4, !tbaa !36   ; 2 uses
  %i.q = icmp ne i32 %i.p, 0
  tail call void @llvm.assume(i1 %i.q)
  %i.r = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.r, ptr %i.l, align 4, !tbaa !36
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %zend_string_release_ex.exit.i7

bb.g:                                             ; preds = %bb.f
  tail call void @_efree(ptr noundef nonnull %i.l) #18
  br label %zend_string_release_ex.exit.i7

zend_string_release_ex.exit.i7:                   ; preds = %bb.g, %bb.f, %bb.e
  store ptr null, ptr %i.k, align 8, !tbaa !12
  br label %smart_str_free_ex.exit8

smart_str_free_ex.exit8:                          ; preds = %smart_str_free_ex.exit, %zend_string_release_ex.exit.i7
  %i.t = select i1 %0, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 944), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1168)
  store i64 0, ptr %i.t, align 8, !tbaa !21
  %i.u = load ptr, ptr %., align 8, !tbaa !12     ; 5 uses
  %.not.i9 = icmp eq ptr %i.u, null
  br i1 %.not.i9, label %smart_str_free_ex.exit12, label %bb.h

bb.h:                                             ; preds = %smart_str_free_ex.exit8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !23
  %i.x = and i32 %i.w, 64
  %.not.i.i10 = icmp eq i32 %i.x, 0
  br i1 %.not.i.i10, label %bb.i, label %zend_string_release_ex.exit.i11

bb.i:                                             ; preds = %bb.h
  %i.y = load i32, ptr %i.u, align 4, !tbaa !36   ; 2 uses
  %i.z = icmp ne i32 %i.y, 0
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add i32 %i.y, -1                        ; 2 uses
  store i32 %i.aa, ptr %i.u, align 4, !tbaa !36
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.j, label %zend_string_release_ex.exit.i11

bb.j:                                             ; preds = %bb.i
  tail call void @_efree(ptr noundef nonnull %i.u) #18
  br label %zend_string_release_ex.exit.i11

zend_string_release_ex.exit.i11:                  ; preds = %bb.j, %bb.i, %bb.h
  store ptr null, ptr %., align 8, !tbaa !12
  br label %smart_str_free_ex.exit12

smart_str_free_ex.exit12:                         ; preds = %smart_str_free_ex.exit8, %zend_string_release_ex.exit.i11
  %i.ac = select i1 %0, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 896), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1120)
  store i64 0, ptr %i.ac, align 8, !tbaa !21
  %i.ad = select i1 %0, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 904), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1128) ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !12 ; 5 uses
  %.not.i13 = icmp eq ptr %i.ae, null
  br i1 %.not.i13, label %smart_str_free_ex.exit16, label %bb.k

bb.k:                                             ; preds = %smart_str_free_ex.exit12
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !23
  %i.ah = and i32 %i.ag, 64
  %.not.i.i14 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i14, label %bb.l, label %zend_string_release_ex.exit.i15

bb.l:                                             ; preds = %bb.k
  %i.ai = load i32, ptr %i.ae, align 4, !tbaa !36 ; 2 uses
  %i.aj = icmp ne i32 %i.ai, 0
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add i32 %i.ai, -1                       ; 2 uses
  store i32 %i.ak, ptr %i.ae, align 4, !tbaa !36
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.m, label %zend_string_release_ex.exit.i15

bb.m:                                             ; preds = %bb.l
  tail call void @_efree(ptr noundef nonnull %i.ae) #18
  br label %zend_string_release_ex.exit.i15

zend_string_release_ex.exit.i15:                  ; preds = %bb.m, %bb.l, %bb.k
  store ptr null, ptr %i.ad, align 8, !tbaa !12
  br label %smart_str_free_ex.exit16

smart_str_free_ex.exit16:                         ; preds = %smart_str_free_ex.exit12, %zend_string_release_ex.exit.i15
  %i.am = select i1 %0, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 912), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1136)
  store i64 0, ptr %i.am, align 8, !tbaa !21
  %i.an = select i1 %0, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1024), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1248) ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !12 ; 5 uses
  %.not.i17 = icmp eq ptr %i.ao, null
  br i1 %.not.i17, label %smart_str_free_ex.exit20, label %bb.n

bb.n:                                             ; preds = %smart_str_free_ex.exit16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !23
  %i.ar = and i32 %i.aq, 64
  %.not.i.i18 = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i18, label %bb.o, label %zend_string_release_ex.exit.i19

bb.o:                                             ; preds = %bb.n
  %i.as = load i32, ptr %i.ao, align 4, !tbaa !36 ; 2 uses
  %i.at = icmp ne i32 %i.as, 0
  tail call void @llvm.assume(i1 %i.at)
  %i.au = add i32 %i.as, -1                       ; 2 uses
  store i32 %i.au, ptr %i.ao, align 4, !tbaa !36
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.p, label %zend_string_release_ex.exit.i19

bb.p:                                             ; preds = %bb.o
  tail call void @_efree(ptr noundef nonnull %i.ao) #18
  br label %zend_string_release_ex.exit.i19

zend_string_release_ex.exit.i19:                  ; preds = %bb.p, %bb.o, %bb.n
  store ptr null, ptr %i.an, align 8, !tbaa !12
  br label %smart_str_free_ex.exit20

smart_str_free_ex.exit20:                         ; preds = %smart_str_free_ex.exit16, %zend_string_release_ex.exit.i19
  %i.aw = select i1 %0, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1032), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1256)
  store i64 0, ptr %i.aw, align 8, !tbaa !21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @smart_str_erealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

declare void @_efree(ptr noundef) local_unnamed_addr #3

declare ptr @php_url_parse_ex(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @php_url_free(ptr noundef) local_unnamed_addr #3

declare i32 @zend_binary_strcasecmp(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @zend_string_tolower_ex(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @zend_hash_find(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nounwind uwtable
define internal void @php_url_scanner_session_handler(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  tail call fastcc void @php_url_scanner_session_handler_impl(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @php_url_scanner_output_handler(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  tail call fastcc void @php_url_scanner_session_handler_impl(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext false)
  ret void
}

declare ptr @php_escape_html_entities_ex(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare i32 @php_output_start_internal(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @php_url_scanner_session_handler_impl(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #5 {
bb.a:
  %. = select i1 %5, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 888), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1112) ; 10 uses
  %.val = load ptr, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 984), align 8
  %.val40 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1208), align 8
  %i.a = select i1 %5, ptr %.val, ptr %.val40
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !17
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.dp, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %4, 12
  %.not41 = icmp eq i32 %i.d, 0
  %i.e = select i1 %5, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 936), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1160) ; 9 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12   ; 3 uses
  %.not.i.i35.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i35.i, label %bb.d, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %i.i = add i64 %i.h, %1                         ; 3 uses
  %.val42 = load i64, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 944), align 8
  %.val43 = load i64, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1168), align 8
  %i.j = select i1 %5, i64 %.val42, i64 %.val43
  %.not12.i.i36.i = icmp ult i64 %i.i, %i.j
  br i1 %.not12.i.i36.i, label %smart_str_alloc.exit.i.i, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i.i37.i = phi i64 [ %1, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %i.e, i64 noundef %.0.i.i37.i) #18
  %.pre.i.i = load ptr, ptr %i.e, align 8, !tbaa !12 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 16
  %.pre479.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !17
  br label %smart_str_alloc.exit.i.i

smart_str_alloc.exit.i.i:                         ; preds = %bb.d, %bb.c
  %i.k = phi i64 [ %i.h, %bb.c ], [ %.pre479.i.i, %bb.d ]
  %i.l = phi ptr [ %i.f, %bb.c ], [ %.pre.i.i, %bb.d ]
  %.1.i.i38.i = phi i64 [ %i.i, %bb.c ], [ %.0.i.i37.i, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr readonly align 1 %0, i64 %1, i1 false)
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !12   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.1.i.i38.i, ptr %i.p, align 8, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 10 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.1.i.i38.i ; 24 uses
  %i.s = select i1 %5, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1016), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1240) ; 9 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !92
  switch i32 %i.t, label %.loopexit.i.i [
    i32 0, label %.preheader425.i.i
    i32 1, label %bb.k
    i32 2, label %.preheader419.i.i
    i32 3, label %bb.bl
    i32 4, label %smart_str_alloc.exit._crit_edge485.i.i
    i32 5, label %smart_str_alloc.exit._crit_edge.i.i
  ]

smart_str_alloc.exit._crit_edge485.i.i:           ; preds = %smart_str_alloc.exit.i.i
  %.pre486.i.i = ptrtoint ptr %i.q to i64
  br label %bb.by

smart_str_alloc.exit._crit_edge.i.i:              ; preds = %smart_str_alloc.exit.i.i
  %.pre487.i.i = ptrtoint ptr %i.r to i64
  %.pre489.i.i = ptrtoint ptr %i.q to i64
  br label %bb.cg

.loopexit.i.i:                                    ; preds = %passthru.exit307.i.i, %passthru.exit325.i.i, %bb.ap, %bb.aq, %bb.at, %bb.az, %check_host_whitelist.exit.i.i.i, %check_host_whitelist.exit.thread.i.i.i, %bb.bh, %smart_str_append_ex.exit.i.i.i, %select.unfold.i.i, %smart_str_alloc.exit.i.i
  %.0205.i.i = phi ptr [ %i.q, %smart_str_alloc.exit.i.i ], [ %.6.i.i, %select.unfold.i.i ], [ %i.gk, %check_host_whitelist.exit.thread.i.i.i ], [ %i.gk, %check_host_whitelist.exit.i.i.i ], [ %i.gk, %bb.az ], [ %i.gk, %bb.at ], [ %i.gk, %bb.aq ], [ %i.gk, %bb.ap ], [ %i.gk, %passthru.exit325.i.i ], [ %i.gk, %smart_str_append_ex.exit.i.i.i ], [ %.9.i.i, %passthru.exit307.i.i ], [ %i.gk, %bb.bh ]
  store i32 0, ptr %i.s, align 8, !tbaa !92
  br label %.preheader425.i.i

.preheader425.i.i:                                ; preds = %select.unfold.i.i, %.loopexit.i.i, %smart_str_alloc.exit.i.i
  %.1206.ph.i.i = phi ptr [ %i.q, %smart_str_alloc.exit.i.i ], [ %.6.i.i, %select.unfold.i.i ], [ %.0205.i.i, %.loopexit.i.i ] ; 7 uses
  %.not447.i.i = icmp ugt ptr %i.r, %.1206.ph.i.i
  br i1 %.not447.i.i, label %.lr.ph.i.i, label %.thread.i.i

.lr.ph.i.i:                                       ; preds = %.preheader425.i.i
  %i.u = select i1 %5, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 952), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1176) ; 8 uses
  %i.v = select i1 %5, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 960), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1184) ; 2 uses
  %i.w = load i8, ptr %.1206.ph.i.i, align 1, !tbaa !23
  %.not241.i75.i = icmp eq i8 %i.w, 60
  br i1 %.not241.i75.i, label %._crit_edge.i, label %.preheader423.i.preheader.i

.preheader423.i.preheader.i:                      ; preds = %.lr.ph.i.i, %bb.j
  %.1206448.i76.i = phi ptr [ %i.z, %bb.j ], [ %.1206.ph.i.i, %.lr.ph.i.i ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.1206448.i76.i, i64 1 ; 2 uses
  %.not242.i.i309 = icmp ugt ptr %i.r, %i.x
  br i1 %.not242.i.i309, label %.lr.ph, label %.thread.i.i

.preheader423.i.i:                                ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 2 uses
  %.not242.i.i = icmp ugt ptr %i.r, %i.y
  br i1 %.not242.i.i, label %.lr.ph, label %.thread.i.i

.lr.ph:                                           ; preds = %.preheader423.i.preheader.i, %.preheader423.i.i
  %i.z = phi ptr [ %i.y, %.preheader423.i.i ], [ %i.x, %.preheader423.i.preheader.i ] ; 7 uses
  %.2207.i.i310 = phi ptr [ %i.z, %.preheader423.i.i ], [ %.1206448.i76.i, %.preheader423.i.preheader.i ]
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !23
  %.not243.i.i = icmp eq i8 %i.aa, 60
  br i1 %.not243.i.i, label %bb.e, label %.preheader423.i.i

bb.e:                                             ; preds = %.lr.ph
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %.1206448.i76.i to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !12  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f, !prof !20

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !17 ; 2 uses
  %i.ah = add i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = load i64, ptr %i.v, align 8, !tbaa !21
  %.not12.i.i.i.i = icmp ult i64 %i.ah, %i.ai
  br i1 %.not12.i.i.i.i, label %bb.j, label %bb.g, !prof !22

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i64 [ %i.ad, %bb.e ], [ %i.ah, %bb.f ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %i.u, i64 noundef %.0.i.i.i.i) #18
  %.pre.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !12 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 16
  %.pre4.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !17
  br label %bb.j

._crit_edge.i:                                    ; preds = %.lr.ph.i.i
  %.pre.i = load ptr, ptr %i.u, align 8, !tbaa !12 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.1206.ph.i.i, i64 1 ; 2 uses
  %.not.i.i268.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i268.i.i, label %bb.i, label %._crit_edge.i._crit_edge, !prof !93

._crit_edge.i._crit_edge:                         ; preds = %._crit_edge.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i._crit_edge, %._crit_edge.thread.i
  %i.ak = phi i64 [ %.1.i.i.i.i, %._crit_edge.thread.i ], [ %.pre, %._crit_edge.i._crit_edge ] ; 2 uses
  %i.al = phi ptr [ %i.bf, %._crit_edge.thread.i ], [ %i.aj, %._crit_edge.i._crit_edge ] ; 2 uses
  %.1206448.i.lcssa200.i = phi ptr [ %i.z, %._crit_edge.thread.i ], [ %.1206.ph.i.i, %._crit_edge.i._crit_edge ]
  %i.am = phi ptr [ %i.bc, %._crit_edge.thread.i ], [ %.pre.i, %._crit_edge.i._crit_edge ]
  %i.an = add i64 %i.ak, 1                        ; 3 uses
  %i.ao = load i64, ptr %i.v, align 8, !tbaa !21
  %.not12.i.i269.i.i = icmp ult i64 %i.an, %i.ao
  br i1 %.not12.i.i269.i.i, label %.thread376.i.i, label %bb.i, !prof !22

bb.i:                                             ; preds = %bb.h, %._crit_edge.i
  %i.ap = phi ptr [ %i.aj, %._crit_edge.i ], [ %i.al, %bb.h ]
  %.1206448.i.lcssa201.i = phi ptr [ %.1206.ph.i.i, %._crit_edge.i ], [ %.1206448.i.lcssa200.i, %bb.h ]
  %.0.i.i270.i.i = phi i64 [ 1, %._crit_edge.i ], [ %i.an, %bb.h ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %i.u, i64 noundef %.0.i.i270.i.i) #18
  %.pre.i271.i.i = load ptr, ptr %i.u, align 8, !tbaa !12 ; 2 uses
  %.phi.trans.insert.i272.i.i = getelementptr inbounds nuw i8, ptr %.pre.i271.i.i, i64 16
  %.pre4.i273.i.i = load i64, ptr %.phi.trans.insert.i272.i.i, align 8, !tbaa !17
  %.pre480.i.i = load i8, ptr %.1206448.i.lcssa201.i, align 1
  br label %.thread376.i.i

.thread376.i.i:                                   ; preds = %bb.i, %bb.h
  %i.aq = phi ptr [ %i.al, %bb.h ], [ %i.ap, %bb.i ]
  %i.ar = phi i8 [ 60, %bb.h ], [ %.pre480.i.i, %bb.i ]
  %i.as = phi i64 [ %i.ak, %bb.h ], [ %.pre4.i273.i.i, %bb.i ]
  %i.at = phi ptr [ %i.am, %bb.h ], [ %.pre.i271.i.i, %bb.i ]
  %.1.i.i274.i.i = phi i64 [ %i.an, %bb.h ], [ %.0.i.i270.i.i, %bb.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.as
  store i8 %i.ar, ptr %i.av, align 1
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  store i64 %.1.i.i274.i.i, ptr %i.ax, align 8, !tbaa !17
  store i32 1, ptr %i.s, align 8, !tbaa !92
  br label %bb.k

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.ay = phi i64 [ %i.ag, %bb.f ], [ %.pre4.i.i.i, %bb.g ]
  %i.az = phi ptr [ %i.ae, %bb.f ], [ %.pre.i.i.i, %bb.g ]
  %.1.i.i.i.i = phi i64 [ %i.ah, %bb.f ], [ %.0.i.i.i.i, %bb.g ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bb, ptr noundef nonnull align 1 dereferenceable(1) %.1206448.i76.i, i64 %i.ad, i1 false)
  %i.bc = load ptr, ptr %i.u, align 8, !tbaa !12  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 %.1.i.i.i.i, ptr %i.bd, align 8, !tbaa !17
  %i.be = load i8, ptr %i.z, align 1, !tbaa !23
  %.not241.i.i = icmp eq i8 %i.be, 60
  br i1 %.not241.i.i, label %._crit_edge.thread.i, label %.preheader423.i.preheader.i

._crit_edge.thread.i:                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %.2207.i.i310, i64 2
  br label %bb.h

bb.k:                                             ; preds = %.thread376.i.i, %smart_str_alloc.exit.i.i
  %.4209.i.i = phi ptr [ %i.aq, %.thread376.i.i ], [ %i.q, %smart_str_alloc.exit.i.i ] ; 12 uses
  %.not244.i.i = icmp ugt ptr %i.r, %.4209.i.i
  br i1 %.not244.i.i, label %bb.l, label %.thread.i.i

bb.l:                                             ; preds = %bb.k
  %i.bg = load i8, ptr %.4209.i.i, align 1, !tbaa !23 ; 2 uses
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr @xx_mainloop.yybm.9, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !23
end_hunk_0
begin_hunk_1_@php_url_scanner_session_handler_impl:bb.a
bb.br:                                            ; preds = %.lr.ph319
  %i.kx = select i1 %5, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 952), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1176) ; 4 uses
  %i.ky = ptrtoint ptr %i.ks to i64               ; 2 uses
  %i.kz = ptrtoint ptr %.13.i.i to i64
  %i.la = sub i64 %i.ky, %i.kz                    ; 8 uses
  %i.lb = load ptr, ptr %i.kx, align 8, !tbaa !12 ; 3 uses
  %.not.i.i339.i.i = icmp eq ptr %i.lb, null
  br i1 %.not.i.i339.i.i, label %bb.bt, label %bb.bs, !prof !20

bb.bs:                                            ; preds = %bb.br
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 16
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !17 ; 2 uses
  %i.le = add i64 %i.ld, %i.la                    ; 3 uses
  %.val52 = load i64, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 960), align 8
  %.val53 = load i64, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1184), align 8
  %i.lf = select i1 %5, i64 %.val52, i64 %.val53
  %.not12.i.i340.i.i = icmp ult i64 %i.le, %i.lf
  br i1 %.not12.i.i340.i.i, label %passthru.exit347.i.i, label %bb.bt, !prof !22

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.0.i.i341.i.i = phi i64 [ %i.la, %bb.br ], [ %i.le, %bb.bs ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %i.kx, i64 noundef %.0.i.i341.i.i) #18
  %.pre.i342.i.i = load ptr, ptr %i.kx, align 8, !tbaa !12 ; 2 uses
  %.phi.trans.insert.i343.i.i = getelementptr inbounds nuw i8, ptr %.pre.i342.i.i, i64 16
  %.pre4.i344.i.i = load i64, ptr %.phi.trans.insert.i343.i.i, align 8, !tbaa !17
  br label %passthru.exit347.i.i

passthru.exit347.i.i:                             ; preds = %bb.bt, %bb.bs
  %i.lg = phi i64 [ %i.ld, %bb.bs ], [ %.pre4.i344.i.i, %bb.bt ]
  %i.lh = phi ptr [ %i.lb, %bb.bs ], [ %.pre.i342.i.i, %bb.bt ]
  %.1.i.i346.i.i = phi i64 [ %i.le, %bb.bs ], [ %.0.i.i341.i.i, %bb.bt ]
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 24
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.lg
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lj, ptr noundef nonnull align 1 dereferenceable(1) %.13.i.i, i64 %i.la, i1 false)
  %i.lk = load ptr, ptr %i.kx, align 8, !tbaa !12
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  store i64 %.1.i.i346.i.i, ptr %i.ll, align 8, !tbaa !17
  %i.lm = select i1 %5, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 904), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1128) ; 4 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !105 ; 3 uses
  %.not.i348.i.i = icmp eq ptr %i.ln, null
  br i1 %.not.i348.i.i, label %.thread.i355.i.i, label %bb.bu

bb.bu:                                            ; preds = %passthru.exit347.i.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  store i64 0, ptr %i.lo, align 8, !tbaa !17
  %.val54 = load i64, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 912), align 8
  %.val55 = load i64, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1136), align 8
  %i.lp = select i1 %5, i64 %.val54, i64 %.val55
  %.not12.i.i349.i.i = icmp ult i64 %i.la, %i.lp
  br i1 %.not12.i.i349.i.i, label %smart_str_alloc.exit.i353.i.i, label %.thread.i355.i.i, !prof !22

.thread.i355.i.i:                                 ; preds = %bb.bu, %passthru.exit347.i.i
  tail call void @smart_str_erealloc(ptr noundef nonnull %i.lm, i64 noundef %i.la) #18
  %.pre.i351.i.i = load ptr, ptr %i.lm, align 8, !tbaa !12 ; 2 uses
  %.phi.trans.insert.i352.i.i = getelementptr inbounds nuw i8, ptr %.pre.i351.i.i, i64 16
  %.pre11.i.i.i = load i64, ptr %.phi.trans.insert.i352.i.i, align 8, !tbaa !17
  br label %smart_str_alloc.exit.i353.i.i

smart_str_alloc.exit.i353.i.i:                    ; preds = %.thread.i355.i.i, %bb.bu
  %i.lq = phi i64 [ 0, %bb.bu ], [ %.pre11.i.i.i, %.thread.i355.i.i ]
  %i.lr = phi ptr [ %i.ln, %bb.bu ], [ %.pre.i351.i.i, %.thread.i355.i.i ]
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.lq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.lt, ptr noundef nonnull align 1 dereferenceable(1) %.13.i.i, i64 %i.la, i1 false)
  %i.lu = load ptr, ptr %i.lm, align 8, !tbaa !12 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 16
  store i64 %i.la, ptr %i.lv, align 8, !tbaa !17
  %.val56 = load i32, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1040), align 8
  %.val57 = load i32, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1264), align 8
  %i.lw = select i1 %5, i32 %.val56, i32 %.val57
  %i.lx = icmp eq i32 %i.lw, 1
  br i1 %i.lx, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %smart_str_alloc.exit.i353.i.i
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.lz = tail call i32 @strncasecmp(ptr noundef nonnull %i.ly, ptr noundef nonnull @.str.16, i64 noundef %i.la) #19
  %i.ma = icmp eq i32 %i.lz, 0
  br i1 %i.ma, label %.thread392.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %smart_str_alloc.exit.i353.i.i
  br label %.thread392.i.i

.thread392.i.i:                                   ; preds = %bb.bw, %bb.bv
  %.sink.i.i.i = phi i32 [ 0, %bb.bw ], [ 1, %bb.bv ]
  %i.mb = select i1 %5, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1044), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1268)
  store i32 %.sink.i.i.i, ptr %i.mb, align 4, !tbaa !106
  store i32 4, ptr %i.s, align 8, !tbaa !92
  br label %bb.by

bb.bx:                                            ; preds = %bb.bq, %bb.bp
  %i.mc = phi i8 [ %i.kf, %bb.bp ], [ %.pre482.i.i, %bb.bq ]
  %i.md = phi i64 [ %i.ko, %bb.bp ], [ %.pre4.i335.i.i, %bb.bq ]
  %i.me = phi ptr [ %i.km, %bb.bp ], [ %.pre.i333.i.i, %bb.bq ]
  %.1.i.i337.i.i = phi i64 [ %i.kp, %bb.bp ], [ %.0.i.i332.i.i, %bb.bq ]
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 24
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 %i.md
  store i8 %i.mc, ptr %i.mg, align 1
  %i.mh = load ptr, ptr %i.kl, align 8, !tbaa !12
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  store i64 %.1.i.i337.i.i, ptr %i.mi, align 8, !tbaa !17
  br label %.preheader419.sink.split.i.i

bb.by:                                            ; preds = %.thread392.i.i, %smart_str_alloc.exit._crit_edge485.i.i
  %.pre-phi.i.i = phi i64 [ %.pre486.i.i, %smart_str_alloc.exit._crit_edge485.i.i ], [ %i.ky, %.thread392.i.i ] ; 2 uses
  %.16.i.i = phi ptr [ %i.q, %smart_str_alloc.exit._crit_edge485.i.i ], [ %i.ks, %.thread392.i.i ] ; 13 uses
  %i.mj = ptrtoint ptr %i.r to i64                ; 2 uses
  %i.mk = sub i64 %i.mj, %.pre-phi.i.i
  %i.ml = icmp slt i64 %i.mk, 2
  br i1 %i.ml, label %.thread.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.mm = load i8, ptr %.16.i.i, align 1, !tbaa !23
  switch i8 %i.mm, label %.preheader419.sink.split.i.i [
    i8 32, label %bb.ca
    i8 61, label %.preheader411.i.i
  ]

bb.ca:                                            ; preds = %bb.bz
  %i.mn = getelementptr inbounds nuw i8, ptr %.16.i.i, i64 1 ; 2 uses
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !23
  switch i8 %i.mo, label %.preheader419.sink.split.i.i [
    i8 32, label %.preheader413.i.i.preheader
    i8 61, label %.preheader411.i.i
  ]

.preheader413.i.i.preheader:                      ; preds = %bb.ca
  %i.mp = getelementptr inbounds nuw i8, ptr %.16.i.i, i64 2 ; 2 uses
  %.not256.i.i320 = icmp ugt ptr %i.r, %i.mp
  br i1 %.not256.i.i320, label %.lr.ph321, label %.thread.i.i

.preheader411.i.i:                                ; preds = %.lr.ph321, %bb.ca, %bb.bz
  %.18.ph.i.i = phi ptr [ %.16.i.i, %bb.bz ], [ %i.mn, %bb.ca ], [ %i.nd, %.lr.ph321 ]
  %i.mq = getelementptr inbounds nuw i8, ptr %.18.ph.i.i, i64 1 ; 2 uses
  %.not257.i.i322 = icmp ugt ptr %i.r, %i.mq
  br i1 %.not257.i.i322, label %.lr.ph323, label %.thread.i.i

bb.cb:                                            ; preds = %.lr.ph323
  %i.mr = getelementptr inbounds nuw i8, ptr %i.ms, i64 1 ; 2 uses
  %.not257.i.i = icmp ugt ptr %i.r, %i.mr
  br i1 %.not257.i.i, label %.lr.ph323, label %.thread.i.i

.lr.ph323:                                        ; preds = %.preheader411.i.i, %bb.cb
  %i.ms = phi ptr [ %i.mr, %bb.cb ], [ %i.mq, %.preheader411.i.i ] ; 4 uses
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !23
  %.not258.not.i.i = icmp eq i8 %i.mt, 32
  br i1 %.not258.not.i.i, label %bb.cb, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph323
  %i.mu = select i1 %5, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 952), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1176) ; 4 uses
  %i.mv = ptrtoint ptr %i.ms to i64               ; 2 uses
  %i.mw = sub i64 %i.mv, %.pre-phi.i.i            ; 3 uses
  %i.mx = load ptr, ptr %i.mu, align 8, !tbaa !12 ; 3 uses
  %.not.i.i356.i.i = icmp eq ptr %i.mx, null
  br i1 %.not.i.i356.i.i, label %bb.ce, label %bb.cd, !prof !20

bb.cd:                                            ; preds = %bb.cc
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  %i.mz = load i64, ptr %i.my, align 8, !tbaa !17 ; 2 uses
  %i.na = add i64 %i.mz, %i.mw                    ; 3 uses
  %.val58 = load i64, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 960), align 8
  %.val59 = load i64, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1184), align 8
  %i.nb = select i1 %5, i64 %.val58, i64 %.val59
  %.not12.i.i357.i.i = icmp ult i64 %i.na, %i.nb
  br i1 %.not12.i.i357.i.i, label %bb.cf, label %bb.ce, !prof !22

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.0.i.i358.i.i = phi i64 [ %i.mw, %bb.cc ], [ %i.na, %bb.cd ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %i.mu, i64 noundef %.0.i.i358.i.i) #18
  %.pre.i359.i.i = load ptr, ptr %i.mu, align 8, !tbaa !12 ; 2 uses
  %.phi.trans.insert.i360.i.i = getelementptr inbounds nuw i8, ptr %.pre.i359.i.i, i64 16
  %.pre4.i361.i.i = load i64, ptr %.phi.trans.insert.i360.i.i, align 8, !tbaa !17
  br label %bb.cf

.preheader413.i.i:                                ; preds = %.lr.ph321
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nd, i64 1 ; 2 uses
  %.not256.i.i = icmp ugt ptr %i.r, %i.nc
  br i1 %.not256.i.i, label %.lr.ph321, label %.thread.i.i

.lr.ph321:                                        ; preds = %.preheader413.i.i.preheader, %.preheader413.i.i
  %i.nd = phi ptr [ %i.nc, %.preheader413.i.i ], [ %i.mp, %.preheader413.i.i.preheader ] ; 3 uses
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !23
  switch i8 %i.ne, label %.preheader419.sink.split.i.i [
    i8 32, label %.preheader413.i.i
    i8 61, label %.preheader411.i.i
  ]

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.nf = phi i64 [ %i.mz, %bb.cd ], [ %.pre4.i361.i.i, %bb.ce ]
  %i.ng = phi ptr [ %i.mx, %bb.cd ], [ %.pre.i359.i.i, %bb.ce ]
  %.1.i.i363.i.i = phi i64 [ %i.na, %bb.cd ], [ %.0.i.i358.i.i, %bb.ce ]
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 24
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 %i.nf
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ni, ptr nonnull align 1 %.16.i.i, i64 %i.mw, i1 false)
  %i.nj = load ptr, ptr %i.mu, align 8, !tbaa !12
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  store i64 %.1.i.i363.i.i, ptr %i.nk, align 8, !tbaa !17
  store i32 5, ptr %i.s, align 8, !tbaa !92
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %smart_str_alloc.exit._crit_edge.i.i
  %.pre-phi490.i.i = phi i64 [ %.pre489.i.i, %smart_str_alloc.exit._crit_edge.i.i ], [ %i.mv, %bb.cf ] ; 2 uses
  %.pre-phi488.i.i = phi i64 [ %.pre487.i.i, %smart_str_alloc.exit._crit_edge.i.i ], [ %i.mj, %bb.cf ]
  %.21.i.i = phi ptr [ %i.q, %smart_str_alloc.exit._crit_edge.i.i ], [ %i.ms, %bb.cf ] ; 14 uses
  %i.nl = sub i64 %.pre-phi488.i.i, %.pre-phi490.i.i
  %i.nm = icmp slt i64 %i.nl, 2
  br i1 %i.nm, label %.thread.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nn = load i8, ptr %.21.i.i, align 1, !tbaa !23 ; 4 uses
  %i.no = zext i8 %i.nn to i64
  %i.np = getelementptr inbounds nuw i8, ptr @xx_mainloop.yybm.13, i64 %i.no
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !23
  %i.nr = and i8 %i.nq, 32
  %.not259.i.i = icmp eq i8 %i.nr, 0
  br i1 %.not259.i.i, label %bb.ci, label %.preheader409.i.i.preheader

.preheader409.i.i.preheader:                      ; preds = %bb.ch
  %i.ns = getelementptr inbounds nuw i8, ptr %.21.i.i, i64 1 ; 2 uses
  %.not264.i.i324 = icmp ugt ptr %i.r, %i.ns
  br i1 %.not264.i.i324, label %.lr.ph325, label %.thread.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.nt = icmp ult i8 %i.nn, 33
  br i1 %i.nt, label %6, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.nu = icmp ult i8 %i.nn, 35
  br i1 %i.nu, label %bb.cn, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nv = icmp ult i8 %i.nn, 40
  br i1 %i.nv, label %bb.co, label %6

.preheader409.i.i:                                ; preds = %.lr.ph325
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nx, i64 1 ; 2 uses
  %.not264.i.i = icmp ugt ptr %i.r, %i.nw
  br i1 %.not264.i.i, label %.lr.ph325, label %.thread.i.i

.lr.ph325:                                        ; preds = %.preheader409.i.i.preheader, %.preheader409.i.i
  %i.nx = phi ptr [ %i.nw, %.preheader409.i.i ], [ %i.ns, %.preheader409.i.i.preheader ] ; 4 uses
  %i.ny = load i8, ptr %i.nx, align 1, !tbaa !23
  %i.nz = zext i8 %i.ny to i64
  %i.oa = getelementptr inbounds nuw i8, ptr @xx_mainloop.yybm.13, i64 %i.nz
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !23
  %i.oc = and i8 %i.ob, 32
  %.not265.i.i = icmp eq i8 %i.oc, 0
  br i1 %.not265.i.i, label %bb.cl, label %.preheader409.i.i

bb.cl:                                            ; preds = %.lr.ph325
  tail call fastcc void @handle_val(ptr noundef nonnull %., ptr noundef nonnull %.21.i.i, ptr noundef nonnull %i.nx, i8 noundef signext 0, i8 noundef signext 32)
  br label %.preheader419.sink.split.i.i

6:                                                ; preds = %bb.ck, %bb.ci
  %7 = getelementptr inbounds nuw i8, ptr %.21.i.i, i64 1
  br label %8

8:                                                ; preds = %bb.cv, %bb.cr, %bb.co, %bb.cn, %6
  %.23.i.i = phi ptr [ %7, %6 ], [ %i.od, %bb.cn ], [ %i.og, %bb.co ], [ %i.od, %bb.cr ], [ %i.og, %bb.cv ] ; 2 uses
  %9 = select i1 %5, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 952), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1176) ; 4 uses
  %10 = ptrtoint ptr %.23.i.i to i64
  %11 = sub i64 %10, %.pre-phi490.i.i             ; 3 uses
  %12 = load ptr, ptr %9, align 8, !tbaa !12      ; 3 uses
  %.not.i.i365.i.i = icmp eq ptr %12, null
  br i1 %.not.i.i365.i.i, label %bb.cm, label %13, !prof !20

13:                                               ; preds = %8
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 16
  %15 = load i64, ptr %14, align 8, !tbaa !17     ; 2 uses
  %16 = add i64 %15, %11                          ; 3 uses
  %.val60 = load i64, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 960), align 8
  %.val61 = load i64, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1184), align 8
  %17 = select i1 %5, i64 %.val60, i64 %.val61
  %.not12.i.i366.i.i = icmp ult i64 %16, %17
  br i1 %.not12.i.i366.i.i, label %passthru.exit373.i.i, label %bb.cm, !prof !22

bb.cm:                                            ; preds = %13, %8
  %.0.i.i367.i.i = phi i64 [ %11, %8 ], [ %16, %13 ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %9, i64 noundef %.0.i.i367.i.i) #18
  %.pre.i368.i.i = load ptr, ptr %9, align 8, !tbaa !12 ; 2 uses
  %.phi.trans.insert.i369.i.i = getelementptr inbounds nuw i8, ptr %.pre.i368.i.i, i64 16
  %.pre4.i370.i.i = load i64, ptr %.phi.trans.insert.i369.i.i, align 8, !tbaa !17
  br label %passthru.exit373.i.i

passthru.exit373.i.i:                             ; preds = %bb.cm, %13
  %18 = phi i64 [ %15, %13 ], [ %.pre4.i370.i.i, %bb.cm ]
  %19 = phi ptr [ %12, %13 ], [ %.pre.i368.i.i, %bb.cm ]
  %.1.i.i372.i.i = phi i64 [ %16, %13 ], [ %.0.i.i367.i.i, %bb.cm ]
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 24
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %21, ptr nonnull align 1 %.21.i.i, i64 %11, i1 false)
  %22 = load ptr, ptr %9, align 8, !tbaa !12
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 16
  store i64 %.1.i.i372.i.i, ptr %23, align 8, !tbaa !17
  br label %.preheader419.sink.split.i.i

bb.cn:                                            ; preds = %bb.cj
  %i.od = getelementptr inbounds nuw i8, ptr %.21.i.i, i64 1 ; 4 uses
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !23  ; 2 uses
  %i.of = icmp eq i8 %i.oe, 62
  br i1 %i.of, label %8, label %.preheader.i.i

bb.co:                                            ; preds = %bb.ck
  %i.og = getelementptr inbounds nuw i8, ptr %.21.i.i, i64 1 ; 4 uses
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !23  ; 2 uses
  %i.oi = icmp eq i8 %i.oh, 62
  br i1 %i.oi, label %8, label %.preheader407.i.i

bb.cp:                                            ; preds = %bb.cq
  %i.oj = load i8, ptr %i.ok, align 1, !tbaa !23
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.cn, %bb.cp
  %.24.i.i = phi ptr [ %i.ok, %bb.cp ], [ %i.od, %bb.cn ] ; 2 uses
  %.0.i40.i = phi i8 [ %i.oj, %bb.cp ], [ %i.oe, %bb.cn ] ; 2 uses
  switch i8 %.0.i40.i, label %bb.cq [
    i8 62, label %bb.cr
    i8 34, label %bb.cr
  ]

bb.cq:                                            ; preds = %.preheader.i.i
  %i.ok = getelementptr inbounds nuw i8, ptr %.24.i.i, i64 1 ; 3 uses
  %.not263.i.i = icmp ugt ptr %i.r, %i.ok
  br i1 %.not263.i.i, label %bb.cp, label %.thread.i.i

bb.cr:                                            ; preds = %.preheader.i.i, %.preheader.i.i
  %i.ol = icmp samesign ult i8 %.0.i40.i, 35
  br i1 %i.ol, label %bb.cs, label %8

bb.cs:                                            ; preds = %bb.cr
  %i.om = getelementptr inbounds nuw i8, ptr %.24.i.i, i64 1 ; 2 uses
  tail call fastcc void @handle_val(ptr noundef nonnull %., ptr noundef nonnull %.21.i.i, ptr noundef nonnull %i.om, i8 noundef signext 1, i8 noundef signext 34)
  br label %.preheader419.sink.split.i.i

bb.ct:                                            ; preds = %bb.cu
  %i.on = load i8, ptr %i.oo, align 1, !tbaa !23
  br label %.preheader407.i.i

.preheader407.i.i:                                ; preds = %bb.co, %bb.ct
  %.25.i.i = phi ptr [ %i.oo, %bb.ct ], [ %i.og, %bb.co ] ; 2 uses
  %.1.i39.i = phi i8 [ %i.on, %bb.ct ], [ %i.oh, %bb.co ] ; 2 uses
  switch i8 %.1.i39.i, label %bb.cu [
    i8 62, label %bb.cv
    i8 39, label %bb.cv
  ]

bb.cu:                                            ; preds = %.preheader407.i.i
  %i.oo = getelementptr inbounds nuw i8, ptr %.25.i.i, i64 1 ; 3 uses
  %.not261.i.i = icmp ugt ptr %i.r, %i.oo
  br i1 %.not261.i.i, label %bb.ct, label %.thread.i.i

bb.cv:                                            ; preds = %.preheader407.i.i, %.preheader407.i.i
  %i.op = icmp samesign ugt i8 %.1.i39.i, 39
  br i1 %i.op, label %8, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.oq = getelementptr inbounds nuw i8, ptr %.25.i.i, i64 1 ; 2 uses
  tail call fastcc void @handle_val(ptr noundef nonnull %., ptr noundef nonnull %.21.i.i, ptr noundef nonnull %i.oq, i8 noundef signext 1, i8 noundef signext 39)
  br label %.preheader419.sink.split.i.i

.thread.i.i:                                      ; preds = %.preheader423.i.preheader.i, %.preheader423.i.i, %.preheader421.i.i, %handle_form.exit.i.i, %.preheader417.i.i.preheader, %.preheader417.i.i, %.preheader415.i.i, %.preheader413.i.i, %bb.cb, %.preheader409.i.i, %bb.cu, %bb.cq, %.preheader421.i.i.preheader, %.preheader415.i.i.preheader, %.preheader413.i.i.preheader, %.preheader411.i.i, %.preheader409.i.i.preheader, %bb.cg, %bb.by, %bb.bl, %.preheader419.i.i, %bb.k, %.preheader425.i.i
  %.0204.i.i = phi ptr [ %.8.i77.i, %.preheader417.i.i.preheader ], [ %.16.i.i, %.preheader411.i.i ], [ %.16.i.i, %.preheader413.i.i.preheader ], [ %.1206.ph.i.i, %.preheader425.i.i ], [ %.21.i.i, %.preheader409.i.i.preheader ], [ %.21.i.i, %bb.cg ], [ %.13.i.i, %.preheader415.i.i ], [ %.4209.i.i, %.preheader421.i.i ], [ %.16.i.i, %bb.by ], [ %.1206448.i76.i, %.preheader423.i.i ], [ %.4209.i.i, %.preheader421.i.i.preheader ], [ %.4209.i.i, %bb.k ], [ %.13.i.i, %.preheader415.i.i.preheader ], [ %.13.i.i, %bb.bl ], [ %.8.ph.i.i, %.preheader419.i.i ], [ %.21.i.i, %bb.cq ], [ %.21.i.i, %bb.cu ], [ %.21.i.i, %.preheader409.i.i ], [ %.16.i.i, %bb.cb ], [ %.16.i.i, %.preheader413.i.i ], [ %.8.i77.i, %.preheader417.i.i ], [ %i.fw, %handle_form.exit.i.i ], [ %.1206448.i76.i, %.preheader423.i.preheader.i ] ; 3 uses
  %i.or = icmp ult ptr %i.r, %.0204.i.i
  %i.os = ptrtoint ptr %i.r to i64
  %i.ot = ptrtoint ptr %.0204.i.i to i64
  %i.ou = sub i64 %i.os, %i.ot
  %.0203.i.i = select i1 %i.or, i64 0, i64 %i.ou  ; 3 uses
  %.not266.i.i = icmp eq i64 %.0203.i.i, 0
  %.pre484.i.i = load ptr, ptr %i.e, align 8, !tbaa !107 ; 2 uses
  br i1 %.not266.i.i, label %xx_mainloop.exit.i, label %bb.cx

bb.cx:                                            ; preds = %.thread.i.i
  %i.ov = getelementptr inbounds nuw i8, ptr %.pre484.i.i, i64 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ov, ptr align 1 %.0204.i.i, i64 %.0203.i.i, i1 false)
  %.pre483.i.i = load ptr, ptr %i.e, align 8, !tbaa !107
  br label %xx_mainloop.exit.i

bb.cy:                                            ; preds = %select.unfold.i.i
  unreachable

xx_mainloop.exit.i:                               ; preds = %bb.cx, %.thread.i.i
  %i.ow = phi ptr [ %.pre483.i.i, %bb.cx ], [ %.pre484.i.i, %.thread.i.i ]
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  store i64 %.0203.i.i, ptr %i.ox, align 8, !tbaa !17
  %i.oy = select i1 %5, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 952), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1176) ; 10 uses
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !12 ; 3 uses
  %.not.i36 = icmp eq ptr %i.oz, null
  br i1 %.not.i36, label %._crit_edge112.i, label %.thread.i

.thread.i:                                        ; preds = %xx_mainloop.exit.i
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !17
  br label %smart_str_0.exit.i

._crit_edge112.i:                                 ; preds = %xx_mainloop.exit.i
  tail call void @smart_str_erealloc(ptr noundef nonnull %i.oy, i64 noundef 0) #18
  %i.pc = load ptr, ptr %i.oy, align 8, !tbaa !12 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  store i64 0, ptr %i.pd, align 8, !tbaa !17
  br label %smart_str_0.exit.i

smart_str_0.exit.i:                               ; preds = %._crit_edge112.i, %.thread.i
  %.1 = phi i64 [ 0, %._crit_edge112.i ], [ %i.pb, %.thread.i ] ; 3 uses
  %i.pe = phi ptr [ %i.pc, %._crit_edge112.i ], [ %i.oz, %.thread.i ]
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 24
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 %.1
  store i8 0, ptr %i.pg, align 1, !tbaa !23
  %.pre117.pre.i = load ptr, ptr %i.oy, align 8, !tbaa !12 ; 4 uses
  br i1 %.not41, label %bb.dl, label %bb.cz

bb.cz:                                            ; preds = %smart_str_0.exit.i
  %i.ph = load ptr, ptr %i.e, align 8, !tbaa !107 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 24
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !17 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pre117.pre.i, null
  br i1 %.not.i.i.i, label %bb.db, label %bb.da, !prof !20

bb.da:                                            ; preds = %bb.cz
  %i.pl = getelementptr inbounds nuw i8, ptr %.pre117.pre.i, i64 16
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !17 ; 2 uses
  %i.pn = add i64 %i.pm, %i.pk                    ; 3 uses
  %.val70.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 960), align 8
  %.val71.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1184), align 8
  %i.po = select i1 %5, i64 %.val70.a, i64 %.val71.a
  %.not12.i.i.i = icmp ult i64 %i.pn, %i.po
  br i1 %.not12.i.i.i, label %bb.dc, label %bb.db, !prof !22

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.0.i.i.i = phi i64 [ %i.pk, %bb.cz ], [ %i.pn, %bb.da ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %i.oy, i64 noundef %.0.i.i.i) #18
  %.pre114.i = load ptr, ptr %i.oy, align 8, !tbaa !12 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre114.i, i64 16
  %.pre115.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !17
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.pp = phi i64 [ %i.pm, %bb.da ], [ %.pre115.i, %bb.db ]
  %i.pq = phi ptr [ %.pre117.pre.i, %bb.da ], [ %.pre114.i, %bb.db ]
  %.1.i.i.i = phi i64 [ %i.pn, %bb.da ], [ %.0.i.i.i, %bb.db ]
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 24
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.pp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ps, ptr nonnull align 1 %i.pi, i64 %i.pk, i1 false)
  %i.pt = load ptr, ptr %i.oy, align 8, !tbaa !12
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 16
  store i64 %.1.i.i.i, ptr %i.pu, align 8, !tbaa !17
  %i.pv = load ptr, ptr %i.e, align 8, !tbaa !107 ; 5 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !17
  %i.py = add i64 %i.px, %.1
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pv, i64 4
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !23
  %i.qb = and i32 %i.qa, 64
  %.not.i.i22.i = icmp eq i32 %i.qb, 0
  br i1 %.not.i.i22.i, label %bb.dd, label %smart_str_free_ex.exit.i

bb.dd:                                            ; preds = %bb.dc
  %i.qc = load i32, ptr %i.pv, align 8, !tbaa !36 ; 2 uses
  %i.qd = icmp ne i32 %i.qc, 0
  tail call void @llvm.assume(i1 %i.qd)
  %i.qe = add i32 %i.qc, -1                       ; 2 uses
  store i32 %i.qe, ptr %i.pv, align 8, !tbaa !36
  %i.qf = icmp eq i32 %i.qe, 0
  br i1 %i.qf, label %bb.de, label %smart_str_free_ex.exit.i

bb.de:                                            ; preds = %bb.dd
  tail call void @_efree(ptr noundef nonnull %i.pv) #18
  br label %smart_str_free_ex.exit.i

smart_str_free_ex.exit.i:                         ; preds = %bb.de, %bb.dd, %bb.dc
  %i.qg = select i1 %5, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 920), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1144) ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !12 ; 5 uses
  %.not.i23.i = icmp eq ptr %i.qh, null
  br i1 %.not.i23.i, label %smart_str_free_ex.exit26.i, label %bb.df

bb.df:                                            ; preds = %smart_str_free_ex.exit.i
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 4
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !23
  %i.qk = and i32 %i.qj, 64
  %.not.i.i24.i = icmp eq i32 %i.qk, 0
  br i1 %.not.i.i24.i, label %bb.dg, label %zend_string_release_ex.exit.i25.i

bb.dg:                                            ; preds = %bb.df
  %i.ql = load i32, ptr %i.qh, align 4, !tbaa !36 ; 2 uses
  %i.qm = icmp ne i32 %i.ql, 0
  tail call void @llvm.assume(i1 %i.qm)
  %i.qn = add i32 %i.ql, -1                       ; 2 uses
  store i32 %i.qn, ptr %i.qh, align 4, !tbaa !36
  %i.qo = icmp eq i32 %i.qn, 0
  br i1 %i.qo, label %bb.dh, label %zend_string_release_ex.exit.i25.i

bb.dh:                                            ; preds = %bb.dg
  tail call void @_efree(ptr noundef nonnull %i.qh) #18
  br label %zend_string_release_ex.exit.i25.i

zend_string_release_ex.exit.i25.i:                ; preds = %bb.dh, %bb.dg, %bb.df
  store ptr null, ptr %i.qg, align 8, !tbaa !12
  br label %smart_str_free_ex.exit26.i

smart_str_free_ex.exit26.i:                       ; preds = %zend_string_release_ex.exit.i25.i, %smart_str_free_ex.exit.i
  %i.qp = select i1 %5, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 928), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1152)
  store i64 0, ptr %i.qp, align 8, !tbaa !21
  %i.qq = select i1 %5, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1024), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1248) ; 2 uses
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !12 ; 5 uses
  %.not.i27.i = icmp eq ptr %i.qr, null
  br i1 %.not.i27.i, label %smart_str_free_ex.exit30.i, label %bb.di

bb.di:                                            ; preds = %smart_str_free_ex.exit26.i
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 4
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !23
  %i.qu = and i32 %i.qt, 64
  %.not.i.i28.i = icmp eq i32 %i.qu, 0
  br i1 %.not.i.i28.i, label %bb.dj, label %zend_string_release_ex.exit.i29.i

bb.dj:                                            ; preds = %bb.di
  %i.qv = load i32, ptr %i.qr, align 4, !tbaa !36 ; 2 uses
  %i.qw = icmp ne i32 %i.qv, 0
  tail call void @llvm.assume(i1 %i.qw)
  %i.qx = add i32 %i.qv, -1                       ; 2 uses
  store i32 %i.qx, ptr %i.qr, align 4, !tbaa !36
  %i.qy = icmp eq i32 %i.qx, 0
  br i1 %i.qy, label %bb.dk, label %zend_string_release_ex.exit.i29.i

bb.dk:                                            ; preds = %bb.dj
  tail call void @_efree(ptr noundef nonnull %i.qr) #18
  br label %zend_string_release_ex.exit.i29.i

zend_string_release_ex.exit.i29.i:                ; preds = %bb.dk, %bb.dj, %bb.di
  store ptr null, ptr %i.qq, align 8, !tbaa !12
  br label %smart_str_free_ex.exit30.i

smart_str_free_ex.exit30.i:                       ; preds = %zend_string_release_ex.exit.i29.i, %smart_str_free_ex.exit26.i
  %i.qz = select i1 %5, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1032), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1256)
  store i64 0, ptr %i.qz, align 8, !tbaa !21
  %.pre116.i = load ptr, ptr %i.oy, align 8, !tbaa !108
  br label %bb.dl

bb.dl:                                            ; preds = %smart_str_free_ex.exit30.i, %smart_str_0.exit.i
  %.2 = phi i64 [ %i.py, %smart_str_free_ex.exit30.i ], [ %.1, %smart_str_0.exit.i ]
  %i.ra = phi ptr [ %.pre116.i, %smart_str_free_ex.exit30.i ], [ %.pre117.pre.i, %smart_str_0.exit.i ] ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 24
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  %i.rd = load i64, ptr %i.rc, align 8, !tbaa !17
  %i.re = tail call noalias ptr @_estrndup(ptr noundef nonnull %i.rb, i64 noundef %i.rd) #18
  %i.rf = load ptr, ptr %i.oy, align 8, !tbaa !12 ; 5 uses
  %.not.i31.i = icmp eq ptr %i.rf, null
  br i1 %.not.i31.i, label %url_adapt_ext.exit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 4
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !23
  %i.ri = and i32 %i.rh, 64
  %.not.i.i32.i = icmp eq i32 %i.ri, 0
  br i1 %.not.i.i32.i, label %bb.dn, label %zend_string_release_ex.exit.i33.i

bb.dn:                                            ; preds = %bb.dm
  %i.rj = load i32, ptr %i.rf, align 4, !tbaa !36 ; 2 uses
  %i.rk = icmp ne i32 %i.rj, 0
  tail call void @llvm.assume(i1 %i.rk)
  %i.rl = add i32 %i.rj, -1                       ; 2 uses
  store i32 %i.rl, ptr %i.rf, align 4, !tbaa !36
  %i.rm = icmp eq i32 %i.rl, 0
  br i1 %i.rm, label %bb.do, label %zend_string_release_ex.exit.i33.i

bb.do:                                            ; preds = %bb.dn
  tail call void @_efree(ptr noundef nonnull %i.rf) #18
  br label %zend_string_release_ex.exit.i33.i

zend_string_release_ex.exit.i33.i:                ; preds = %bb.do, %bb.dn, %bb.dm
  store ptr null, ptr %i.oy, align 8, !tbaa !12
  br label %url_adapt_ext.exit

url_adapt_ext.exit:                               ; preds = %bb.dl, %zend_string_release_ex.exit.i33.i
  %i.rn = select i1 %5, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 960), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1184)
  store i64 0, ptr %i.rn, align 8, !tbaa !21
  store ptr %i.re, ptr %2, align 8, !tbaa !109
  %spec.select39 = tail call i64 @llvm.umin.i64(i64 %.2, i64 4294967295)
  store i64 %spec.select39, ptr %3, align 8, !tbaa !35
  br label %bb.ed

bb.dp:                                            ; preds = %bb.a
  %i.ro = select i1 %5, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 936), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1160) ; 3 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !107 ; 3 uses
  %.not28 = icmp eq ptr %i.rp, null
  br i1 %.not28, label %bb.ec, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !17 ; 4 uses
  %.not29 = icmp eq i64 %i.rr, 0
  br i1 %.not29, label %bb.ec, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.rs = select i1 %5, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 952), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1176) ; 9 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rp, i64 24
  %i.ru = load ptr, ptr %i.rs, align 8, !tbaa !12 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ru, null
  br i1 %.not.i.i, label %bb.dt, label %bb.ds, !prof !20

bb.ds:                                            ; preds = %bb.dr
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !17 ; 2 uses
  %i.rx = add i64 %i.rw, %i.rr                    ; 3 uses
  %.val72.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 960), align 8
  %.val73.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1184), align 8
  %i.ry = select i1 %5, i64 %.val72.a, i64 %.val73.a
  %.not12.i.i = icmp ult i64 %i.rx, %i.ry
  br i1 %.not12.i.i, label %bb.du, label %bb.dt, !prof !22

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.0.i.i = phi i64 [ %i.rr, %bb.dr ], [ %i.rx, %bb.ds ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %i.rs, i64 noundef %.0.i.i) #18
  %.pre147.a = load ptr, ptr %i.rs, align 8, !tbaa !12 ; 2 uses
  %.phi.trans.insert148 = getelementptr inbounds nuw i8, ptr %.pre147.a, i64 16
  %.pre149 = load i64, ptr %.phi.trans.insert148, align 8, !tbaa !17
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.rz = phi i64 [ %i.rw, %bb.ds ], [ %.pre149, %bb.dt ]
  %i.sa = phi ptr [ %i.ru, %bb.ds ], [ %.pre147.a, %bb.dt ]
  %.1.i.i = phi i64 [ %i.rx, %bb.ds ], [ %.0.i.i, %bb.dt ] ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 24
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.rz
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sc, ptr nonnull align 1 %i.rt, i64 %i.rr, i1 false)
  %i.sd = load ptr, ptr %i.rs, align 8, !tbaa !12 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  store i64 %.1.i.i, ptr %i.se, align 8, !tbaa !17
  %i.sf = add i64 %.1.i.i, %1                     ; 4 uses
  %.val74 = load i64, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 960), align 8
  %.val75 = load i64, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1184), align 8
  %i.sg = select i1 %5, i64 %.val74, i64 %.val75
  %.not12.i = icmp ult i64 %i.sf, %i.sg
  br i1 %.not12.i, label %bb.dw, label %bb.dv, !prof !22

bb.dv:                                            ; preds = %bb.du
  tail call void @smart_str_erealloc(ptr noundef nonnull %i.rs, i64 noundef %i.sf) #18
  %.pre150.a = load ptr, ptr %i.rs, align 8, !tbaa !12 ; 2 uses
  %.phi.trans.insert151 = getelementptr inbounds nuw i8, ptr %.pre150.a, i64 16
  %.pre152 = load i64, ptr %.phi.trans.insert151, align 8, !tbaa !17
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %i.sh = phi i64 [ %.pre152, %bb.dv ], [ %.1.i.i, %bb.du ]
  %i.si = phi ptr [ %.pre150.a, %bb.dv ], [ %i.sd, %bb.du ]
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 24
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.sh
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sk, ptr align 1 %0, i64 %1, i1 false)
  %i.sl = load ptr, ptr %i.rs, align 8, !tbaa !12 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  store i64 %i.sf, ptr %i.sm, align 8, !tbaa !17
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sl, i64 24
  %i.so = tail call noalias ptr @_estrndup(ptr noundef nonnull %i.sn, i64 noundef %i.sf) #18
  store ptr %i.so, ptr %2, align 8, !tbaa !109
  %i.sp = load ptr, ptr %i.ro, align 8, !tbaa !107 ; 5 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 16
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !17
  %i.ss = add i64 %i.sr, %1
  store i64 %i.ss, ptr %3, align 8, !tbaa !35
  %i.st = getelementptr inbounds nuw i8, ptr %i.sp, i64 4
  %i.su = load i32, ptr %i.st, align 4, !tbaa !23
  %i.sv = and i32 %i.su, 64
  %.not.i.i31 = icmp eq i32 %i.sv, 0
  br i1 %.not.i.i31, label %bb.dx, label %smart_str_free_ex.exit

bb.dx:                                            ; preds = %bb.dw
  %i.sw = load i32, ptr %i.sp, align 8, !tbaa !36 ; 2 uses
  %i.sx = icmp ne i32 %i.sw, 0
  tail call void @llvm.assume(i1 %i.sx)
  %i.sy = add i32 %i.sw, -1                       ; 2 uses
  store i32 %i.sy, ptr %i.sp, align 8, !tbaa !36
  %i.sz = icmp eq i32 %i.sy, 0
  br i1 %i.sz, label %bb.dy, label %smart_str_free_ex.exit

bb.dy:                                            ; preds = %bb.dx
  tail call void @_efree(ptr noundef nonnull %i.sp) #18
  br label %smart_str_free_ex.exit

smart_str_free_ex.exit:                           ; preds = %bb.dw, %bb.dx, %bb.dy
  store ptr null, ptr %i.ro, align 8, !tbaa !12
  %i.ta = select i1 %5, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 944), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1168)
  store i64 0, ptr %i.ta, align 8, !tbaa !21
  %i.tb = load ptr, ptr %i.rs, align 8, !tbaa !12 ; 5 uses
  %.not.i32 = icmp eq ptr %i.tb, null
  br i1 %.not.i32, label %smart_str_free_ex.exit35, label %bb.dz

bb.dz:                                            ; preds = %smart_str_free_ex.exit
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 4
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !23
  %i.te = and i32 %i.td, 64
  %.not.i.i33 = icmp eq i32 %i.te, 0
  br i1 %.not.i.i33, label %bb.ea, label %zend_string_release_ex.exit.i34

bb.ea:                                            ; preds = %bb.dz
  %i.tf = load i32, ptr %i.tb, align 4, !tbaa !36 ; 2 uses
  %i.tg = icmp ne i32 %i.tf, 0
  tail call void @llvm.assume(i1 %i.tg)
  %i.th = add i32 %i.tf, -1                       ; 2 uses
  store i32 %i.th, ptr %i.tb, align 4, !tbaa !36
  %i.ti = icmp eq i32 %i.th, 0
  br i1 %i.ti, label %bb.eb, label %zend_string_release_ex.exit.i34

bb.eb:                                            ; preds = %bb.ea
  tail call void @_efree(ptr noundef nonnull %i.tb) #18
  br label %zend_string_release_ex.exit.i34

zend_string_release_ex.exit.i34:                  ; preds = %bb.eb, %bb.ea, %bb.dz
  store ptr null, ptr %i.rs, align 8, !tbaa !12
  br label %smart_str_free_ex.exit35

smart_str_free_ex.exit35:                         ; preds = %smart_str_free_ex.exit, %zend_string_release_ex.exit.i34
  %i.tj = select i1 %5, ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 960), ptr getelementptr inbounds nuw (i8, ptr @basic_globals, i64 1184)
  store i64 0, ptr %i.tj, align 8, !tbaa !21
  br label %bb.ed

bb.ec:                                            ; preds = %bb.dq, %bb.dp
  store i64 %1, ptr %3, align 8, !tbaa !35
  %i.tk = tail call noalias ptr @_estrndup(ptr noundef %0, i64 noundef %1) #18
  store ptr %i.tk, ptr %2, align 8, !tbaa !109
  br label %bb.ed

bb.ed:                                            ; preds = %smart_str_free_ex.exit35, %bb.ec, %url_adapt_ext.exit
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @handle_val(ptr noundef initializes((40, 48)) %0, ptr noundef %1, ptr noundef %2, i8 noundef signext range(i8 0, 2) %3, i8 noundef signext range(i8 32, 40) %4) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.b = zext nneg i8 %3 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %i.b ; 2 uses
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %1 to i64
  %i.f = shl nuw nsw i8 %3, 1
  %i.g = zext nneg i8 %i.f to i64
  %i.h = add i64 %i.e, %i.g
  %i.i = sub i64 %i.d, %i.h                       ; 6 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !12   ; 5 uses
  %.not.i3.i16 = icmp eq ptr %i.j, null
  br i1 %.not.i3.i16, label %smart_str_setl.exit24, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !23
  %i.m = and i32 %i.l, 64
  %.not.i.i.i17 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i17, label %bb.c, label %zend_string_release_ex.exit.i.i18

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.j, align 4, !tbaa !36   ; 2 uses
  %i.o = icmp ne i32 %i.n, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.p, ptr %i.j, align 4, !tbaa !36
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %zend_string_release_ex.exit.i.i18

bb.d:                                             ; preds = %bb.c
  tail call void @_efree(ptr noundef nonnull %i.j) #18
  br label %zend_string_release_ex.exit.i.i18

zend_string_release_ex.exit.i.i18:                ; preds = %bb.d, %bb.c, %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !12
  br label %smart_str_setl.exit24

smart_str_setl.exit24:                            ; preds = %zend_string_release_ex.exit.i.i18, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.r, align 8, !tbaa !21
  tail call void @smart_str_erealloc(ptr noundef nonnull %i.a, i64 noundef %i.i) #18
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.c, i64 %i.i, i1 false)
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store i64 %i.i, ptr %i.y, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !100
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %bb.e, label %bb.j

bb.e:                                             ; preds = %smart_str_setl.exit24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !106
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !12 ; 5 uses
  %.not.i3.i = icmp eq ptr %i.ag, null
  br i1 %.not.i3.i, label %smart_str_setl.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !23
  %i.aj = and i32 %i.ai, 64
  %.not.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.h, label %zend_string_release_ex.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ak = load i32, ptr %i.ag, align 4, !tbaa !36 ; 2 uses
  %i.al = icmp ne i32 %i.ak, 0
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.am, ptr %i.ag, align 4, !tbaa !36
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.i, label %zend_string_release_ex.exit.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_efree(ptr noundef nonnull %i.ag) #18
  br label %zend_string_release_ex.exit.i.i

zend_string_release_ex.exit.i.i:                  ; preds = %bb.i, %bb.h, %bb.g
  store ptr null, ptr %i.af, align 8, !tbaa !12
  br label %smart_str_setl.exit

smart_str_setl.exit:                              ; preds = %zend_string_release_ex.exit.i.i, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 0, ptr %i.ao, align 8, !tbaa !21
  tail call void @smart_str_erealloc(ptr noundef nonnull %i.af, i64 noundef %i.i) #18
  %i.ap = load ptr, ptr %i.af, align 8, !tbaa !12 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.as
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr align 1 %i.c, i64 %i.i, i1 false)
  %i.au = load ptr, ptr %i.af, align 8, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 %i.i, ptr %i.av, align 8, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %smart_str_setl.exit, %bb.e, %smart_str_setl.exit24
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !105 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !17
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ba
  store i8 0, ptr %i.bb, align 1, !tbaa !23
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !105
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !99
  %i.bg = tail call i32 @strcasecmp(ptr noundef nonnull %i.bd, ptr noundef %i.bf) #19
  %.not.not.i = icmp eq i32 %i.bg, 0
  %.not16.i = icmp eq i8 %3, 0                    ; 2 uses
  br i1 %.not16.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !12 ; 3 uses
  %.not.i.i.i25 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i25, label %bb.m, label %bb.l, !prof !20

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !17
  %i.bl = add i64 %i.bk, 1                        ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !21
  %.not12.i.i.i = icmp ult i64 %i.bl, %i.bn
  br i1 %.not12.i.i.i, label %smart_str_appendc_ex.exit.i, label %bb.m, !prof !22

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i64 [ 1, %bb.k ], [ %i.bl, %bb.l ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %i.bh, i64 noundef %.0.i.i.i) #18
  %.pre.i = load ptr, ptr %i.bh, align 8, !tbaa !12
  br label %smart_str_appendc_ex.exit.i

smart_str_appendc_ex.exit.i:                      ; preds = %bb.m, %bb.l
  %i.bo = phi ptr [ %i.bi, %bb.l ], [ %.pre.i, %bb.m ]
  %.1.i.i.i = phi i64 [ %i.bl, %bb.l ], [ %.0.i.i.i, %bb.m ] ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 23
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.1.i.i.i
  store i8 %4, ptr %i.bq, align 1, !tbaa !23
  %i.br = load ptr, ptr %i.bh, align 8, !tbaa !12
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store i64 %.1.i.i.i, ptr %i.bs, align 8, !tbaa !17
  br label %bb.n

bb.n:                                             ; preds = %smart_str_appendc_ex.exit.i, %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  br i1 %.not.not.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @core_globals, i64 208), align 8, !tbaa !25
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !53
  tail call fastcc void @append_modified_url(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.bu, ptr noundef %i.bv, i32 noundef %i.bx)
  br label %smart_str_append_smart_str_ex.exit.i

bb.p:                                             ; preds = %bb.n
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !12  ; 3 uses
  %.not.i.i26 = icmp eq ptr %i.by, null
  br i1 %.not.i.i26, label %smart_str_append_smart_str_ex.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !17 ; 4 uses
  %.not4.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not4.i.i, label %smart_str_append_smart_str_ex.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !12 ; 3 uses
  %.not.i.i23.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i23.i, label %bb.t, label %bb.s, !prof !20

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !17 ; 2 uses
  %i.cf = add i64 %i.ce, %i.ca                    ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !21
  %.not12.i.i24.i = icmp ult i64 %i.cf, %i.ch
  br i1 %.not12.i.i24.i, label %smart_str_append_ex.exit.i, label %bb.t, !prof !22

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0.i.i25.i = phi i64 [ %i.ca, %bb.r ], [ %i.cf, %bb.s ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %i.bt, i64 noundef %.0.i.i25.i) #18
  %.pre27.i = load ptr, ptr %i.bt, align 8, !tbaa !12 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre27.i, i64 16
end_hunk_1
begin_hunk_2_@php_ini_on_update_hosts:bb.a
  %i.g = load i8, ptr %.0214, align 1, !tbaa !23  ; 2 uses
  %.not251 = icmp eq i8 %i.g, 0
  br i1 %.not251, label %zend_string_release_ex.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.h = tail call ptr @__ctype_tolower_loc() #20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.i = phi i8 [ %i.g, %.lr.ph ], [ %i.p, %bb.b ]
  %.0222 = phi ptr [ %.0214, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !95
  %i.k = zext i8 %i.i to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !97
  %i.n = trunc i32 %i.m to i8
  store i8 %i.n, ptr %.0222, align 1, !tbaa !23
  %i.o = getelementptr inbounds nuw i8, ptr %.0222, i64 1 ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !23    ; 2 uses
  %.not25 = icmp eq i8 %i.p, 0
  br i1 %.not25, label %._crit_edge, label %bb.b, !llvm.loop !113

._crit_edge:                                      ; preds = %bb.b
  %i.q = ptrtoint ptr %.0214 to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.r, %i.q                       ; 4 uses
  %i.t = and i64 %i.s, -8
  %i.u = add i64 %i.t, 32
  %i.v = call noalias ptr @__zend_malloc(i64 noundef %i.u) #21 ; 9 uses
  store i32 1, ptr %i.v, align 4, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  store i32 150, ptr %i.w, align 4, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !104
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 %i.s, ptr %i.y, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 1 dereferenceable(1) %.0214, i64 %i.s, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.s
  store i8 0, ptr %i.aa, align 1, !tbaa !23
  %i.ab = call ptr @zend_hash_add_empty_element(ptr noundef nonnull %., ptr noundef nonnull %i.v) #18 ; 0 uses
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !23
  %i.ad = and i32 %i.ac, 64
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.c, label %zend_string_release_ex.exit

bb.c:                                             ; preds = %._crit_edge
  %i.ae = load i32, ptr %i.v, align 8, !tbaa !36  ; 2 uses
  %i.af = icmp ne i32 %i.ae, 0
  call void @llvm.assume(i1 %i.af)
  %i.ag = add i32 %i.ae, -1                       ; 2 uses
  store i32 %i.ag, ptr %i.v, align 8, !tbaa !36
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.d, label %zend_string_release_ex.exit

bb.d:                                             ; preds = %bb.c
  call void @free(ptr noundef nonnull %i.v) #18
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %.preheader, %bb.d, %bb.c, %._crit_edge
  %i.ai = call ptr @strtok_r(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull %i.a) #18 ; 2 uses
  %.not = icmp eq ptr %i.ai, null
  br i1 %.not, label %._crit_edge5, label %.preheader, !llvm.loop !114

._crit_edge5:                                     ; preds = %zend_string_release_ex.exit, %bb.a
  call void @_efree(ptr noundef %i.e) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

declare void @zend_hash_clean(ptr noundef) local_unnamed_addr #3

declare ptr @zend_hash_add_empty_element(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind willreturn memory(none) }
attributes #21 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !14, i64 0}
!13 = !{!"", !14, i64 0, !16, i64 8}
!14 = !{!"p1 _ZTS12_zend_string", !15, i64 0}
!15 = !{!"any pointer", !10, i64 0}
!16 = !{!"long", !10, i64 0}
!17 = !{!18, !16, i64 16}
!18 = !{!"_zend_string", !19, i64 0, !16, i64 8, !16, i64 16, !10, i64 24}
!19 = !{!"_zend_refcounted_h", !9, i64 0, !10, i64 4}
!20 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!21 = !{!13, !16, i64 8}
!22 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!23 = !{!10, !10, i64 0}
!24 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!25 = !{!26, !14, i64 208}
!26 = !{!"_php_core_globals", !16, i64 0, !27, i64 8, !27, i64 9, !10, i64 10, !27, i64 11, !27, i64 12, !27, i64 13, !27, i64 14, !27, i64 15, !28, i64 16, !28, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !28, i64 64, !28, i64 72, !28, i64 80, !28, i64 88, !28, i64 96, !27, i64 104, !28, i64 112, !28, i64 120, !28, i64 128, !28, i64 136, !16, i64 144, !28, i64 152, !28, i64 160, !28, i64 168, !28, i64 176, !28, i64 184, !28, i64 192, !28, i64 200, !29, i64 208, !28, i64 224, !30, i64 232, !31, i64 288, !27, i64 290, !10, i64 291, !32, i64 296, !10, i64 352, !27, i64 448, !27, i64 449, !27, i64 450, !27, i64 451, !27, i64 452, !28, i64 456, !28, i64 464, !16, i64 472, !10, i64 480, !27, i64 488, !27, i64 489, !27, i64 490, !27, i64 491, !27, i64 492, !27, i64 493, !9, i64 496, !9, i64 500, !14, i64 504, !14, i64 512, !28, i64 520, !16, i64 528, !16, i64 536, !28, i64 544, !16, i64 552, !28, i64 560, !28, i64 568, !14, i64 576, !27, i64 584, !27, i64 585, !27, i64 586, !27, i64 587, !27, i64 588, !27, i64 589, !16, i64 592, !28, i64 600, !16, i64 608, !16, i64 616}
!27 = !{!"_Bool", !10, i64 0}
!28 = !{!"p1 omnipotent char", !15, i64 0}
!29 = !{!"_arg_separators", !14, i64 0, !14, i64 8}
!30 = !{!"_zend_array", !19, i64 0, !10, i64 8, !9, i64 12, !10, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !16, i64 40, !15, i64 48}
!31 = !{!"short", !10, i64 0}
!32 = !{!"_zend_llist", !33, i64 0, !33, i64 8, !16, i64 16, !16, i64 24, !15, i64 32, !10, i64 40, !33, i64 48}
!33 = !{!"p1 _ZTS19_zend_llist_element", !15, i64 0}
!34 = !{}
!35 = !{!16, !16, i64 0}
!36 = !{!19, !9, i64 0}
!37 = !{!38, !14, i64 56}
!38 = !{!"php_url", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !31, i64 32, !14, i64 40, !14, i64 48, !14, i64 56}
!39 = !{!38, !14, i64 0}
!40 = !{!38, !14, i64 24}
!41 = !{!38, !14, i64 40}
!42 = !{!38, !14, i64 48}
!43 = !{!"branch_weights", !"expected", i32 1761156, i32 2145722492}
!44 = !{!38, !14, i64 8}
!45 = !{!38, !14, i64 16}
!46 = !{!38, !31, i64 32}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"branch_weights", !"expected", i32 2861879, i32 2144621769}
!50 = !{!51, !9, i64 112}
!51 = !{!"", !13, i64 0, !13, i64 16, !13, i64 32, !13, i64 48, !13, i64 64, !13, i64 80, !13, i64 96, !9, i64 112, !28, i64 120, !9, i64 128, !9, i64 132, !13, i64 136, !9, i64 152, !9, i64 156, !52, i64 160}
!52 = !{!"p1 _ZTS11_zend_array", !15, i64 0}
!53 = !{!51, !9, i64 132}
!54 = !{!51, !14, i64 96}
!55 = !{!56, !28, i64 408}
!56 = !{!"_sapi_globals_struct", !15, i64 0, !57, i64 8, !62, i64 160, !16, i64 240, !10, i64 248, !10, i64 249, !63, i64 256, !28, i64 400, !28, i64 408, !52, i64 416, !16, i64 424, !9, i64 432, !27, i64 436, !65, i64 440, !30, i64 448, !66, i64 504, !67, i64 520, !71, i64 560}
!57 = !{!"", !28, i64 0, !28, i64 8, !28, i64 16, !16, i64 24, !28, i64 32, !28, i64 40, !58, i64 48, !28, i64 56, !27, i64 64, !27, i64 65, !27, i64 66, !59, i64 72, !28, i64 80, !28, i64 88, !28, i64 96, !28, i64 104, !28, i64 112, !28, i64 120, !9, i64 128, !9, i64 132, !60, i64 136, !9, i64 144}
!58 = !{!"p1 _ZTS11_php_stream", !15, i64 0}
!59 = !{!"p1 _ZTS16_sapi_post_entry", !15, i64 0}
!60 = !{!"p2 omnipotent char", !61, i64 0}
!61 = !{!"any p2 pointer", !15, i64 0}
!62 = !{!"", !32, i64 0, !9, i64 56, !10, i64 60, !28, i64 64, !28, i64 72}
!63 = !{!"stat", !16, i64 0, !16, i64 8, !16, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !64, i64 72, !64, i64 88, !64, i64 104, !10, i64 120}
!64 = !{!"timespec", !16, i64 0, !16, i64 8}
!65 = !{!"double", !10, i64 0}
!66 = !{!"_zval_struct", !10, i64 0, !10, i64 8, !10, i64 12}
!67 = !{!"_zend_fcall_info_cache", !68, i64 0, !69, i64 8, !69, i64 16, !70, i64 24, !70, i64 32}
!68 = !{!"p1 _ZTS14_zend_function", !15, i64 0}
!69 = !{!"p1 _ZTS17_zend_class_entry", !15, i64 0}
!70 = !{!"p1 _ZTS12_zend_object", !15, i64 0}
!71 = !{!"", !27, i64 0, !10, i64 8}
!72 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!73 = distinct !{!73, !48}
!74 = distinct !{!74, !48}
!75 = !{!51, !14, i64 80}
!76 = distinct !{!76, !48}
!77 = !{!78, !9, i64 1000}
!78 = !{!"_php_basic_globals", !52, i64 0, !30, i64 8, !14, i64 64, !14, i64 72, !27, i64 80, !28, i64 88, !10, i64 96, !16, i64 352, !79, i64 360, !67, i64 424, !81, i64 464, !66, i64 472, !66, i64 488, !16, i64 504, !16, i64 512, !16, i64 520, !16, i64 528, !14, i64 536, !14, i64 544, !82, i64 552, !82, i64 696, !28, i64 840, !9, i64 848, !83, i64 856, !85, i64 872, !51, i64 888, !30, i64 1056, !51, i64 1112, !30, i64 1280, !52, i64 1336, !9, i64 1344, !16, i64 1352}
!79 = !{!"_zend_fcall_info", !16, i64 0, !66, i64 8, !80, i64 24, !80, i64 32, !70, i64 40, !9, i64 48, !52, i64 56}
!80 = !{!"p1 _ZTS12_zval_struct", !15, i64 0}
!81 = !{!"p1 _ZTS11_zend_llist", !15, i64 0}
!82 = !{!"_php_stream_statbuf", !63, i64 0}
!83 = !{!"", !84, i64 0, !9, i64 8}
!84 = !{!"p1 _ZTS18php_serialize_data", !15, i64 0}
!85 = !{!"", !86, i64 0, !9, i64 8}
!86 = !{!"p1 _ZTS20php_unserialize_data", !15, i64 0}
!87 = !{!78, !9, i64 1040}
!88 = !{!78, !9, i64 1044}
!89 = !{!78, !9, i64 1224}
!90 = !{!78, !9, i64 1264}
!91 = !{!78, !9, i64 1268}
!92 = !{!51, !9, i64 128}
!93 = !{!"branch_weights", !"expected", i32 1104739, i32 2146378909}
!94 = !{!51, !14, i64 0}
!95 = !{!96, !96, i64 0}
!96 = !{!"p1 int", !15, i64 0}
!97 = !{!9, !9, i64 0}
!98 = distinct !{!98, !48}
!99 = !{!51, !28, i64 120}
!100 = !{!51, !9, i64 152}
!101 = !{!102, !102, i64 0}
!102 = !{!"p2 _ZTS12_zend_string", !61, i64 0}
!103 = !{!14, !14, i64 0}
!104 = !{!18, !16, i64 8}
!105 = !{!51, !14, i64 16}
!106 = !{!51, !9, i64 156}
!107 = !{!51, !14, i64 48}
!108 = !{!51, !14, i64 64}
!109 = !{!28, !28, i64 0}
!110 = !{!51, !52, i64 160}
!111 = distinct !{!111, !48}
!112 = distinct !{!112, !48}
!113 = distinct !{!113, !48}
!114 = distinct !{!114, !48}
end_hunk_2
