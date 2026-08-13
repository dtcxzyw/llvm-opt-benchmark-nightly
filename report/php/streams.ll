inline.NumInlined: 31
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@php_stream_get_record:bb.a
  %i.m = add i64 %3, -1
  br i1 %i.a, label %.lr.ph.split.split, label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph, %.critedge.backedge.us
  %.080111.us = phi i64 [ %i.w, %.critedge.backedge.us ], [ %i.h, %.lr.ph ] ; 3 uses
  %i.n = sub nuw i64 %1, %.080111.us
  %i.o = load i64, ptr %i.k, align 8, !tbaa !63
  %..us = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.o)
  %i.p = add i64 %..us, %.080111.us
  %i.q = tail call i32 @_php_stream_fill_read_buffer(ptr noundef nonnull %0, i64 noundef %i.p)
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.split.us.split
  %i.s = load i16, ptr %i.l, align 8
  %i.t = and i16 %i.s, 512
  %.not91.us = icmp eq i16 %i.t, 0
  br i1 %.not91.us, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.us.split
  %i.u = load i64, ptr %i.d, align 8, !tbaa !121  ; 2 uses
  %i.v = load i64, ptr %i.f, align 8, !tbaa !122  ; 2 uses
  %i.w = sub nsw i64 %i.u, %i.v                   ; 3 uses
  %.not = icmp eq i64 %i.w, %.080111.us
  br i1 %.not, label %.thread106, label %.critedge.backedge.us

.critedge.backedge.us:                            ; preds = %bb.f
  %i.x = icmp ult i64 %i.w, %1
  br i1 %i.x, label %.lr.ph.split.us.split, label %.thread102..thread106_crit_edge

.lr.ph.split.split:                               ; preds = %.lr.ph, %.critedge.backedge
  %.080111 = phi i64 [ %i.ah, %.critedge.backedge ], [ %i.h, %.lr.ph ] ; 4 uses
  %i.y = sub nuw i64 %1, %.080111
  %i.z = load i64, ptr %i.k, align 8, !tbaa !63
  %. = tail call i64 @llvm.umin.i64(i64 %i.y, i64 %i.z)
  %i.aa = add i64 %., %.080111
  %i.ab = tail call i32 @_php_stream_fill_read_buffer(ptr noundef nonnull %0, i64 noundef %i.aa)
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.split.split
  %i.ad = load i16, ptr %i.l, align 8
  %i.ae = and i16 %i.ad, 512
  %.not91 = icmp eq i16 %i.ae, 0
  br i1 %.not91, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %.lr.ph.split.split
  %i.af = load i64, ptr %i.d, align 8, !tbaa !121 ; 2 uses
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !122 ; 2 uses
  %i.ah = sub nsw i64 %i.af, %i.ag                ; 3 uses
  %.not121 = icmp eq i64 %i.ah, %.080111
  br i1 %.not121, label %.thread106, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = tail call i64 @llvm.usub.sat.i64(i64 %.080111, i64 %i.m)
  %i.aj = tail call fastcc ptr @_php_stream_search_delim(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %i.ai, ptr noundef %2, i64 noundef %3) ; 2 uses
  %.not93 = icmp eq ptr %i.aj, null
  br i1 %.not93, label %.critedge.backedge, label %.thread102

.critedge.backedge:                               ; preds = %bb.i
  %i.ak = icmp ult i64 %i.ah, %1
  br i1 %i.ak, label %.lr.ph.split.split, label %.thread102..thread106_crit_edge

.thread102:                                       ; preds = %bb.i, %bb.d
  %.4 = phi ptr [ %.076, %bb.d ], [ %i.aj, %bb.i ] ; 2 uses
  %i.al = icmp ne ptr %.4, null                   ; 2 uses
  %or.cond = and i1 %i.a, %i.al
  br i1 %or.cond, label %bb.j, label %.thread102..thread106_crit_edge

.thread102..thread106_crit_edge:                  ; preds = %.critedge.backedge.us, %.critedge.backedge, %.thread102
  %i.am = phi i1 [ %i.al, %.thread102 ], [ false, %.critedge.backedge ], [ false, %.critedge.backedge.us ]
  %.pre.pre = load i64, ptr %i.d, align 8, !tbaa !121
  %.pre127.pre = load i64, ptr %i.f, align 8, !tbaa !122
  br label %.thread106

bb.j:                                             ; preds = %.thread102
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !67
  %i.ap = load i64, ptr %i.f, align 8, !tbaa !122
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 %i.ap
  %i.ar = ptrtoint ptr %.4 to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as
  br label %zend_string_alloc.exit

.thread106:                                       ; preds = %bb.f, %bb.h, %.thread102..thread106_crit_edge
  %.pre127 = phi i64 [ %.pre127.pre, %.thread102..thread106_crit_edge ], [ %i.ag, %bb.h ], [ %i.v, %bb.f ] ; 2 uses
  %.pre = phi i64 [ %.pre.pre, %.thread102..thread106_crit_edge ], [ %i.af, %bb.h ], [ %i.u, %bb.f ] ; 2 uses
  %i.au = phi i1 [ %i.am, %.thread102..thread106_crit_edge ], [ false, %bb.h ], [ false, %bb.f ] ; 2 uses
  %.pre130 = sub nsw i64 %.pre, %.pre127          ; 3 uses
  %.not94 = icmp ult i64 %.pre130, %1
  %or.cond154 = select i1 %i.a, i1 true, i1 %.not94
  br i1 %or.cond154, label %.thread106._crit_edge, label %zend_string_alloc.exit

.thread106._crit_edge:                            ; preds = %.thread106
  %i.av = icmp ult i64 %.pre130, %1
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread106._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ax = load i16, ptr %i.aw, align 8
  %i.ay = and i16 %i.ax, 8
  %.not95 = icmp eq i16 %i.ay, 0
  br i1 %.not95, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread106._crit_edge
  %i.az = icmp eq i64 %.pre, %.pre127
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bb = load i16, ptr %i.ba, align 8
  %i.bc = and i16 %i.bb, 8
  %.not96 = icmp eq i16 %i.bc, 0
  br i1 %.not96, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m, %bb.l
  %.97 = tail call i64 @llvm.umin.i64(i64 %.pre130, i64 %1)
  br label %zend_string_alloc.exit

zend_string_alloc.exit:                           ; preds = %bb.j, %bb.n, %.thread106
  %i.bd = phi i1 [ true, %bb.j ], [ %i.au, %bb.n ], [ %i.au, %.thread106 ]
  %.082 = phi i64 [ %i.at, %bb.j ], [ %.97, %bb.n ], [ %1, %.thread106 ] ; 3 uses
  %i.be = and i64 %.082, -8
  %i.bf = add i64 %i.be, 32
  %i.bg = tail call noalias ptr @_emalloc(i64 noundef %i.bf) #27 ; 6 uses
  store i32 1, ptr %i.bg, align 4, !tbaa !49
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  store i32 22, ptr %i.bh, align 4, !tbaa !27
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !51
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  store i64 %.082, ptr %i.bj, align 8, !tbaa !53
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  %i.bl = tail call i64 @_php_stream_read(ptr noundef nonnull %0, ptr noundef nonnull %i.bk, i64 noundef %.082) ; 2 uses
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !53
  br i1 %i.bd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %zend_string_alloc.exit
  %i.bm = load i64, ptr %i.f, align 8, !tbaa !122
  %i.bn = add i64 %i.bm, %3
  store i64 %i.bn, ptr %i.f, align 8, !tbaa !122
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !146
  %i.bq = add i64 %i.bp, %3
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !146
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %zend_string_alloc.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  store i8 0, ptr %i.br, align 1, !tbaa !27
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.g, %bb.m, %bb.k, %bb.a, %bb.p
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.m ], [ %i.bg, %bb.p ], [ null, %bb.k ], [ null, %bb.g ], [ null, %bb.e ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_php_stream_search_delim(ptr nofree noundef readonly captures(none) %0, i64 noundef range(i64 1, 0) %1, i64 noundef %2, ptr noundef %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load i64, ptr %i.a, align 8, !tbaa !121
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load i64, ptr %i.c, align 8, !tbaa !122  ; 2 uses
  %i.e = sub nsw i64 %i.b, %i.d
  %. = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %1) ; 4 uses
  %.not = icmp ugt i64 %., %2
  br i1 %.not, label %bb.b, label %zend_memnstr.exit

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i64 %4, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !67
  %i.i = getelementptr i8, ptr %i.h, i64 %i.d     ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 %2       ; 5 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load i8, ptr %3, align 1, !tbaa !27
  %i.l = sext i8 %i.k to i32
  %i.m = sub i64 %., %2
  %i.n = tail call ptr @memchr(ptr noundef %i.j, i32 noundef %i.l, i64 noundef %i.m) #26
  br label %zend_memnstr.exit

bb.d:                                             ; preds = %bb.b
  %i.o = getelementptr i8, ptr %i.i, i64 %.       ; 3 uses
  %i.p = icmp uge ptr %i.o, %i.j
  tail call void @llvm.assume(i1 %i.p)
  %gepdiff = sub i64 %., %2                       ; 2 uses
  %i.q = icmp ugt i64 %4, %gepdiff
  br i1 %i.q, label %zend_memnstr.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp ult i64 %gepdiff, 1024
  %i.s = icmp ult i64 %4, 9
  %i.t = or i1 %i.s, %i.r
  br i1 %i.t, label %bb.f, label %bb.k, !prof !147

bb.f:                                             ; preds = %bb.e
  %5 = getelementptr i8, ptr %3, i64 %4
  %i.u = getelementptr i8, ptr %5, i64 -1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !27
  %i.w = sub i64 0, %4
  %i.x = getelementptr inbounds i8, ptr %i.o, i64 %i.w ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 1
  %.not.i28 = icmp ugt ptr %i.j, %i.x
  br i1 %.not.i28, label %zend_memnstr.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.z = load i8, ptr %3, align 1, !tbaa !27
  %i.aa = sext i8 %i.z to i32
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = add i64 %i.ab, 1
  %i.ad = add i64 %4, -2
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.j
  %.038.i29 = phi ptr [ %i.j, %.lr.ph ], [ %i.al, %bb.j ] ; 2 uses
  %i.ae = ptrtoint ptr %.038.i29 to i64
  %i.af = sub i64 %i.ac, %i.ae
  %i.ag = tail call ptr @memchr(ptr noundef %.038.i29, i32 noundef %i.aa, i64 noundef %i.af) #26 ; 5 uses
  %.not43.i = icmp eq ptr %i.ag, null
  br i1 %.not43.i, label %zend_memnstr.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %6 = getelementptr i8, ptr %i.ag, i64 %4
  %i.ah = getelementptr i8, ptr %6, i64 -1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !27
  %i.aj = icmp eq i8 %i.v, %i.ai
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.y, ptr nonnull %i.ak, i64 %i.ad)
  %.not44.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not44.i, label %zend_memnstr.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 1 ; 2 uses
  %.not.i = icmp ugt ptr %i.al, %i.x
  br i1 %.not.i, label %zend_memnstr.exit, label %bb.g, !llvm.loop !153

bb.k:                                             ; preds = %bb.e
  %i.am = tail call ptr @zend_memnstr_ex(ptr noundef %i.j, ptr noundef %3, i64 noundef range(i64 2, 0) %4, ptr noundef %i.o) #25
  br label %zend_memnstr.exit

zend_memnstr.exit:                                ; preds = %bb.j, %bb.g, %bb.i, %bb.f, %bb.k, %bb.d, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ %i.n, %bb.c ], [ %i.am, %bb.k ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.j ], [ %i.ag, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @_php_stream_write_filtered(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef range(i32 0, 3) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %4 = alloca %struct._php_stream_bucket_brigade, align 8 ; 6 uses
  %5 = alloca %struct._php_stream_bucket_brigade, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 0, ptr %i.a, align 8, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @php_stream_bucket_new(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #25
  call void @php_stream_bucket_append(ptr noundef nonnull %4, ptr noundef %i.b) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.045 = load ptr, ptr %i.c, align 8, !tbaa !124 ; 2 uses
  %.not4046 = icmp eq ptr %.045, null
  br i1 %.not4046, label %._crit_edge.thread68, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.049 = phi ptr [ %.0, %bb.d ], [ %.045, %bb.c ] ; 4 uses
  %.03348 = phi ptr [ %.03447, %bb.d ], [ %5, %bb.c ] ; 4 uses
  %.03447 = phi ptr [ %.03348, %bb.d ], [ %4, %bb.c ] ; 5 uses
  %i.d = load ptr, ptr %.049, align 8, !tbaa !125
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !126
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.g = icmp eq ptr %.049, %i.f
  %. = select i1 %i.g, ptr %i.a, ptr null
  %i.h = call i32 %i.e(ptr noundef nonnull %0, ptr noundef nonnull %.049, ptr noundef nonnull %.03447, ptr noundef nonnull %.03348, ptr noundef %., i32 noundef %3) #25
  switch i32 %i.h, label %.loopexit [
    i32 2, label %bb.d
    i32 1, label %.loopexit83
    i32 0, label %._crit_edge.thread68
  ]

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.03447, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %.049, i64 24
  %.0 = load ptr, ptr %i.i, align 8, !tbaa !124   ; 2 uses
  %.not40 = icmp eq ptr %.0, null
  br i1 %.not40, label %.preheader, label %.lr.ph, !llvm.loop !154

.preheader:                                       ; preds = %bb.d
  %i.j = load ptr, ptr %.03348, align 8, !tbaa !129 ; 2 uses
  %.not4357 = icmp eq ptr %i.j, null
  br i1 %.not4357, label %.loopexit, label %.lr.ph58

.lr.ph58:                                         ; preds = %.preheader, %bb.f
  %i.k = phi ptr [ %i.r, %bb.f ], [ %i.j, %.preheader ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !134
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !131
  %i.p = call fastcc i64 @_php_stream_write_buffer(ptr noundef nonnull %0, ptr noundef %i.m, i64 noundef %i.o)
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph58
  store i64 -1, ptr %i.a, align 8, !tbaa !152
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph58
  call void @php_stream_bucket_unlink(ptr noundef nonnull %i.k) #25
  call void @php_stream_bucket_delref(ptr noundef nonnull %i.k) #25
  %i.r = load ptr, ptr %.03348, align 8, !tbaa !129 ; 2 uses
  %.not43 = icmp eq ptr %i.r, null
  br i1 %.not43, label %.loopexit, label %.lr.ph58, !llvm.loop !155

._crit_edge.thread68:                             ; preds = %.lr.ph, %bb.c
  %.034.lcssa72 = phi ptr [ %4, %bb.c ], [ %.03447, %.lr.ph ]
  store i64 -1, ptr %i.a, align 8, !tbaa !152
  br label %.loopexit83

.loopexit83:                                      ; preds = %.lr.ph, %._crit_edge.thread68
  %.034.lcssa71 = phi ptr [ %.034.lcssa72, %._crit_edge.thread68 ], [ %.03447, %.lr.ph ] ; 2 uses
  %i.s = load ptr, ptr %.034.lcssa71, align 8, !tbaa !129 ; 2 uses
  %.not4254 = icmp eq ptr %i.s, null
  br i1 %.not4254, label %.loopexit, label %.lr.ph56

.lr.ph56:                                         ; preds = %.loopexit83, %.lr.ph56
  %i.t = phi ptr [ %i.u, %.lr.ph56 ], [ %i.s, %.loopexit83 ] ; 2 uses
  call void @php_stream_bucket_unlink(ptr noundef nonnull %i.t) #25
  call void @php_stream_bucket_delref(ptr noundef nonnull %i.t) #25
  %i.u = load ptr, ptr %.034.lcssa71, align 8, !tbaa !129 ; 2 uses
  %.not42 = icmp eq ptr %i.u, null
  br i1 %.not42, label %.loopexit, label %.lr.ph56, !llvm.loop !156

.loopexit:                                        ; preds = %.lr.ph, %bb.f, %.lr.ph56, %.loopexit83, %.preheader
  %i.v = load i64, ptr %i.a, align 8, !tbaa !152
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i64 %i.v
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nounwind uwtable
define internal fastcc i64 @_php_stream_write_buffer(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !157  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %thread-pre-split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.e = load i32, ptr %i.d, align 4, !tbaa !66
  %i.f = and i32 %i.e, 1
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !122
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.k = load i64, ptr %i.j, align 8, !tbaa !121
  %.not61 = icmp eq i64 %i.i, %i.k
  br i1 %.not61, label %thread-pre-split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.m = load i64, ptr %i.l, align 8, !tbaa !146
  %i.n = tail call i32 %i.c(ptr noundef nonnull %0, i64 noundef %i.m, i32 noundef 0, ptr noundef nonnull %i.l) #25 ; 0 uses
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !60
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.o = phi ptr [ %i.a, %bb.a ], [ %i.a, %bb.b ], [ %i.a, %bb.c ], [ %.pr.pre, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.q = load i16, ptr %i.p, align 8
  %i.r = icmp eq ptr %i.o, @php_stream_userspace_ops
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %thread-pre-split
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.t = load i64, ptr %i.s, align 8, !tbaa !63
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %thread-pre-split
  %.050 = phi i64 [ %i.t, %bb.e ], [ %2, %thread-pre-split ]
  %.not6274 = icmp eq i64 %2, 0
  br i1 %.not6274, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %.05177 = phi ptr [ %1, %.lr.ph ], [ %i.ab, %bb.h ] ; 2 uses
  %.05476 = phi i64 [ 0, %.lr.ph ], [ %i.ad, %bb.h ] ; 3 uses
  %.05675 = phi i64 [ %2, %.lr.ph ], [ %i.ac, %bb.h ] ; 2 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !60
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !96
  %i.x = tail call i64 @llvm.umin.i64(i64 %.050, i64 %.05675)
  %i.y = tail call i64 %i.w(ptr noundef nonnull %0, ptr noundef %.05177, i64 noundef %i.x) #25 ; 6 uses
  %i.z = icmp slt i64 %i.y, 1
  br i1 %i.z, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %i.aa = icmp eq i64 %.05476, 0
  %..05467 = select i1 %i.aa, i64 %i.y, i64 %.05476
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.05177, i64 %i.y
end_hunk_0
