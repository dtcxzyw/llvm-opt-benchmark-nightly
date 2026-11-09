Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_acl?download=true
inline.NumInlined: 37
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@archive_acl_reset:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.012.i, ptr %i.k, align 8, !tbaa !26
  ret i32 %.2.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -30, 2) i32 @archive_acl_next(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %6, ptr noundef initializes((0, 8)) %7) local_unnamed_addr #0 {
bb.a:
  store ptr null, ptr %7, align 8, !tbaa !37
  store i32 -1, ptr %6, align 4, !tbaa !36
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %2, 256
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i32 %i.b, label %bb.g [
    i32 10002, label %bb.d
    i32 10004, label %bb.e
    i32 10006, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %1, align 8, !tbaa !29
  %i.f = lshr i32 %i.e, 6
  %i.g = and i32 %i.f, 7
  store i32 %i.g, ptr %4, align 4, !tbaa !36
  store i32 256, ptr %3, align 4, !tbaa !36
  store i32 10002, ptr %5, align 4, !tbaa !36
  store i32 10004, ptr %i.a, align 8, !tbaa !28
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.h = load i32, ptr %1, align 8, !tbaa !29
  %i.i = lshr i32 %i.h, 3
  %i.j = and i32 %i.i, 7
  store i32 %i.j, ptr %4, align 4, !tbaa !36
  store i32 256, ptr %3, align 4, !tbaa !36
  store i32 10004, ptr %5, align 4, !tbaa !36
  store i32 10006, ptr %i.a, align 8, !tbaa !28
  br label %bb.l

bb.f:                                             ; preds = %bb.c
  %i.k = load i32, ptr %1, align 8, !tbaa !29
  %i.l = and i32 %i.k, 7
  store i32 %i.l, ptr %4, align 4, !tbaa !36
  store i32 256, ptr %3, align 4, !tbaa !36
  store i32 10006, ptr %5, align 4, !tbaa !36
  store i32 -1, ptr %i.a, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !26
  br label %bb.l

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.promoted = load ptr, ptr %i.p, align 8, !tbaa !26 ; 2 uses
  %.not5156 = icmp eq ptr %.promoted, null
  br i1 %.not5156, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %i.q = phi ptr [ %i.v, %bb.h ], [ %.promoted, %bb.g ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !31   ; 2 uses
  %i.t = and i32 %i.s, %2
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.lr.ph
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !22   ; 3 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !26
  %.not51 = icmp eq ptr %i.v, null
  br i1 %.not51, label %._crit_edge, label %.lr.ph, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.h, %bb.g
  store i32 0, ptr %i.a, align 8, !tbaa !28
  store i32 0, ptr %3, align 4, !tbaa !36
  store i32 0, ptr %4, align 4, !tbaa !36
  store i32 0, ptr %5, align 4, !tbaa !36
  store i32 -1, ptr %6, align 4, !tbaa !36
  store ptr null, ptr %7, align 8, !tbaa !37
  br label %bb.l

.critedge:                                        ; preds = %.lr.ph
  store i32 %i.s, ptr %3, align 4, !tbaa !36
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !32
  store i32 %i.x, ptr %4, align 4, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !33
  store i32 %i.z, ptr %5, align 4, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !34
  store i32 %i.ab, ptr %6, align 4, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.ad = tail call i32 @archive_mstring_get_mbs(ptr noundef %0, ptr noundef nonnull %i.ac, ptr noundef nonnull %7) #20
  %.not52 = icmp eq i32 %i.ad, 0
  br i1 %.not52, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.ae = tail call ptr @__errno_location() #22
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !36
  %i.ag = icmp eq i32 %i.af, 12
  br i1 %i.ag, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr null, ptr %7, align 8, !tbaa !37
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge
  %i.ah = load ptr, ptr %i.p, align 8, !tbaa !26
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !22
  store ptr %i.ai, ptr %i.p, align 8, !tbaa !26
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.a, %bb.k, %._crit_edge, %bb.f, %bb.e, %bb.d
  %.0 = phi i32 [ 0, %bb.f ], [ 1, %._crit_edge ], [ -20, %bb.a ], [ 0, %bb.k ], [ 0, %bb.d ], [ 0, %bb.e ], [ -30, %bb.i ]
  ret i32 %.0
}

declare i32 @archive_mstring_get_mbs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @archive_acl_to_text_w(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 32 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.c = getelementptr i8, ptr %0, i64 48
  %.val = load i32, ptr %i.c, align 8, !tbaa !27  ; 2 uses
  %i.d = and i32 %.val, 15360
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %.val, 768
  %.not11.i = icmp eq i32 %i.e, 0
  br i1 %.not11.i, label %.split, label %archive_acl_text_want_type.exit.thread92

bb.c:                                             ; preds = %bb.a
  %.1.i = and i32 %2, 768                         ; 2 uses
  %.1.i.off = add nsw i32 %.1.i, -1
  %switch = icmp ult i32 %.1.i.off, 767
  br i1 %switch, label %.split, label %.split63

.split:                                           ; preds = %bb.c, %bb.b
  %.08.i91 = phi i32 [ %.1.i, %bb.c ], [ 15360, %bb.b ] ; 2 uses
  %i.f = tail call fastcc i64 @archive_acl_text_len(ptr noundef nonnull %0, i32 noundef %.08.i91, i32 noundef %2, i32 noundef 1, ptr noundef %3, ptr noundef null)
  br label %bb.d

.split63:                                         ; preds = %bb.c
  %i.g = or i32 %2, 2                             ; 2 uses
  %i.h = tail call fastcc i64 @archive_acl_text_len(ptr noundef nonnull %0, i32 noundef 768, i32 noundef %i.g, i32 noundef 1, ptr noundef %3, ptr noundef null)
  br label %bb.d

bb.d:                                             ; preds = %.split, %.split63
  %.08.i90 = phi i32 [ %.08.i91, %.split ], [ 768, %.split63 ] ; 2 uses
  %phi.call = phi i64 [ %i.f, %.split ], [ %i.h, %.split63 ] ; 3 uses
  %.061 = phi i32 [ %2, %.split ], [ %i.g, %.split63 ] ; 6 uses
  %i.i = icmp eq i64 %phi.call, 0
  br i1 %i.i, label %archive_acl_text_want_type.exit.thread92, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = and i32 %.061, 8
  %.not = icmp eq i32 %i.j, 0
  %. = select i1 %.not, i32 10, i32 44            ; 3 uses
  %i.k = shl i64 %phi.call, 2
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #23 ; 10 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !38
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @__errno_location() #22
  %i.o = load i32, ptr %i.n, align 4, !tbaa !36
  %i.p = icmp eq i32 %i.o, 12
  br i1 %i.p, label %bb.g, label %archive_acl_text_want_type.exit.thread92

bb.g:                                             ; preds = %bb.f
  tail call void @__archive_errx(i32 noundef 1, ptr noundef nonnull @.str) #24
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.q = and i32 %.08.i90, 256
  %.not70 = icmp eq i32 %i.q, 0
  br i1 %.not70, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = load i32, ptr %0, align 8, !tbaa !29     ; 2 uses
  %i.s = tail call ptr @wcscpy(ptr noundef nonnull %i.l, ptr noundef nonnull @.str.9) #20 ; 0 uses
  %i.t = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.l) #25
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.t ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 58, ptr %i.u, align 4, !tbaa !36
  %i.w = and i32 %.061, 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 58, ptr %i.v, align 4, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.z = insertelement <2 x i32> poison, i32 %i.r, i64 0
  %i.aa = shufflevector <2 x i32> %i.z, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ab = and <2 x i32> %i.aa, <i32 256, i32 128>
  %i.ac = icmp eq <2 x i32> %i.ab, zeroinitializer
  %i.ad = select <2 x i1> %i.ac, <2 x i32> splat (i32 45), <2 x i32> <i32 114, i32 119>
  store <2 x i32> %i.ad, ptr %i.x, align 4, !tbaa !36
  %i.ae = and i32 %i.r, 64
  %.not92.i = icmp eq i32 %i.ae, 0
  %i.af = select i1 %.not92.i, i32 45, i32 120
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  store i32 %i.af, ptr %i.y, align 4, !tbaa !36
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 4 uses
  store ptr %i.ah, ptr %i.b, align 8, !tbaa !38
  store i32 %., ptr %i.ag, align 4, !tbaa !36
  %i.ai = load i32, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.aj = tail call ptr @wcscpy(ptr noundef nonnull %i.ah, ptr noundef nonnull @.str.10) #20 ; 0 uses
  %i.ak = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.ah) #25
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ak ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  store i32 58, ptr %i.al, align 4, !tbaa !36
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 58, ptr %i.am, align 4, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ap = insertelement <2 x i32> poison, i32 %i.ai, i64 0
  %i.aq = shufflevector <2 x i32> %i.ap, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ar = and <2 x i32> %i.aq, <i32 32, i32 16>
  %i.as = icmp eq <2 x i32> %i.ar, zeroinitializer
  %i.at = select <2 x i1> %i.as, <2 x i32> splat (i32 45), <2 x i32> <i32 114, i32 119>
  store <2 x i32> %i.at, ptr %i.an, align 4, !tbaa !36
  %i.au = and i32 %i.ai, 8
  %.not92.i77 = icmp eq i32 %i.au, 0
  %i.av = select i1 %.not92.i77, i32 45, i32 120
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  store i32 %i.av, ptr %i.ao, align 4, !tbaa !36
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 3 uses
  store i32 %., ptr %i.aw, align 4, !tbaa !36
  %i.ay = load i32, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.az = tail call ptr @wcscpy(ptr noundef nonnull %i.ax, ptr noundef nonnull @.str.33) #20 ; 0 uses
  %i.ba = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.ax) #25
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ba ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4 ; 2 uses
  store i32 58, ptr %i.bb, align 4, !tbaa !36
  %i.bd = icmp eq i32 %i.w, 0
  br i1 %i.bd, label %bb.j, label %append_entry_w.exit

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 58, ptr %i.bc, align 4, !tbaa !36
  br label %append_entry_w.exit

append_entry_w.exit:                              ; preds = %bb.i, %bb.j
  %i.bf = phi ptr [ %i.be, %bb.j ], [ %i.bc, %bb.i ] ; 3 uses
  %i.bg = insertelement <2 x i32> poison, i32 %i.ay, i64 0
  %i.bh = shufflevector <2 x i32> %i.bg, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bi = and <2 x i32> %i.bh, <i32 4, i32 2>
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bk = icmp eq <2 x i32> %i.bi, zeroinitializer
  %i.bl = select <2 x i1> %i.bk, <2 x i32> splat (i32 45), <2 x i32> <i32 114, i32 119>
  store <2 x i32> %i.bl, ptr %i.bf, align 4, !tbaa !36
  %i.bm = and i32 %i.ay, 1
  %.not92.i80 = icmp eq i32 %i.bm, 0
  %i.bn = select i1 %.not92.i80, i32 45, i32 120
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 12 ; 2 uses
  store ptr %i.bo, ptr %i.b, align 8, !tbaa !38
  store i32 %i.bn, ptr %i.bj, align 4, !tbaa !36
  br label %bb.k

bb.k:                                             ; preds = %append_entry_w.exit, %bb.h
  %i.bp = phi ptr [ %i.bo, %append_entry_w.exit ], [ %i.l, %bb.h ]
  %.059 = phi i32 [ 3, %append_entry_w.exit ], [ 0, %bb.h ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.05697 = load ptr, ptr %i.bq, align 8, !tbaa !30 ; 2 uses
  %.not7198 = icmp eq ptr %.05697, null
  br i1 %.not7198, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.br = and i32 %.061, 2
  %.not73 = icmp eq i32 %i.br, 0
  %i.bs = and i32 %.061, 1
  %.not74 = icmp eq i32 %i.bs, 0
  %i.bt = and i32 %.061, 4
  %i.bu = icmp eq i32 %i.bt, 0
  %i.bv = and i32 %.061, 16
  %i.bw = icmp eq i32 %i.bv, 0
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.bu
  %.056100 = phi ptr [ %.05697, %.lr.ph ], [ %.056, %bb.bu ] ; 7 uses
  %.199 = phi i32 [ %.059, %.lr.ph ], [ %.2, %bb.bu ] ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.056100, i64 8 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !31 ; 3 uses
  %i.bz = and i32 %i.by, %.08.i90
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.bu, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cb = icmp eq i32 %i.by, 256
  br i1 %i.cb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %.056100, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !33
  switch i32 %i.cd, label %bb.o [
    i32 10002, label %bb.bu
    i32 10004, label %bb.bu
    i32 10006, label %bb.bu
  ]

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ce = icmp ne i32 %i.by, 512
  %or.cond = or i1 %.not73, %i.ce
  %i.cf = getelementptr inbounds nuw i8, ptr %.056100, i64 24
  %i.cg = call i32 @archive_mstring_get_wcs(ptr noundef %3, ptr noundef nonnull %i.cf, ptr noundef nonnull %i.a) #20 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.p, label %bb.br

bb.p:                                             ; preds = %bb.o
  %i.ci = icmp sgt i32 %.199, 0
  br i1 %i.ci, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cj = load ptr, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store ptr %i.ck, ptr %i.b, align 8, !tbaa !38
  store i32 %., ptr %i.cj, align 4, !tbaa !36
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  br i1 %.not74, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = getelementptr inbounds nuw i8, ptr %.056100, i64 20
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !34
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.0 = phi i32 [ %i.cm, %bb.s ], [ -1, %bb.r ]   ; 3 uses
  %i.cn = load i32, ptr %i.bx, align 8, !tbaa !31 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.056100, i64 12
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !33 ; 4 uses
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !38  ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.056100, i64 16
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !32 ; 27 uses
  br i1 %or.cond, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ct = load ptr, ptr %i.b, align 8, !tbaa !38  ; 3 uses
  %i.cu = call ptr @wcscpy(ptr noundef %i.ct, ptr noundef nonnull @.str.1) #20 ; 0 uses
  %i.cv = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.ct) #25
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cv
  store ptr %i.cw, ptr %i.b, align 8, !tbaa !38
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  switch i32 %i.cp, label %bb.af [
    i32 10002, label %bb.w
    i32 10001, label %._crit_edge133.i
    i32 10004, label %bb.z
    i32 10003, label %._crit_edge.i
    i32 10005, label %bb.ac
    i32 10006, label %bb.ad
    i32 10107, label %bb.ae
  ]

._crit_edge133.i:                                 ; preds = %bb.v
  %.pre134.i = load ptr, ptr %i.b, align 8, !tbaa !38
  br label %bb.y

._crit_edge.i:                                    ; preds = %bb.v
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !38
  br label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.cx = and i32 %i.cn, 15360
  %.not86.i = icmp eq i32 %i.cx, 0
  %.pre135.i86 = load ptr, ptr %i.b, align 8, !tbaa !38 ; 3 uses
  br i1 %.not86.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = call ptr @wcscpy(ptr noundef %.pre135.i86, ptr noundef nonnull @.str.11) #20 ; 0 uses
  br label %bb.ag

bb.y:                                             ; preds = %bb.w, %._crit_edge133.i
  %i.cz = phi ptr [ %.pre135.i86, %bb.w ], [ %.pre134.i, %._crit_edge133.i ] ; 2 uses
  %.081.i = phi ptr [ null, %bb.w ], [ %i.cq, %._crit_edge133.i ]
  %.079.i = phi i32 [ -1, %bb.w ], [ %.0, %._crit_edge133.i ]
  %i.da = call ptr @wcscpy(ptr noundef %i.cz, ptr noundef nonnull @.str.9) #20 ; 0 uses
  br label %bb.ag

bb.z:                                             ; preds = %bb.v
  %i.db = and i32 %i.cn, 15360
  %.not85.i = icmp eq i32 %i.db, 0
  %.pre132.i85 = load ptr, ptr %i.b, align 8, !tbaa !38 ; 3 uses
  br i1 %.not85.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dc = call ptr @wcscpy(ptr noundef %.pre132.i85, ptr noundef nonnull @.str.12) #20 ; 0 uses
  br label %bb.ag

bb.ab:                                            ; preds = %bb.z, %._crit_edge.i
  %i.dd = phi ptr [ %.pre132.i85, %bb.z ], [ %.pre.i, %._crit_edge.i ] ; 2 uses
  %.182.i = phi ptr [ null, %bb.z ], [ %i.cq, %._crit_edge.i ]
  %.180.i = phi i32 [ -1, %bb.z ], [ %.0, %._crit_edge.i ]
  %i.de = call ptr @wcscpy(ptr noundef %i.dd, ptr noundef nonnull @.str.10) #20 ; 0 uses
  br label %bb.ag

bb.ac:                                            ; preds = %bb.v
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %i.dg = call ptr @wcscpy(ptr noundef %i.df, ptr noundef nonnull @.str.32) #20 ; 0 uses
  br label %bb.ag

bb.ad:                                            ; preds = %bb.v
  %i.dh = load ptr, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %i.di = call ptr @wcscpy(ptr noundef %i.dh, ptr noundef nonnull @.str.33) #20 ; 0 uses
  br label %bb.ag

bb.ae:                                            ; preds = %bb.v
  %i.dj = load ptr, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %i.dk = call ptr @wcscpy(ptr noundef %i.dj, ptr noundef nonnull @.str.13) #20 ; 0 uses
  br label %bb.ag

bb.af:                                            ; preds = %bb.v
  %i.dl = load ptr, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  store i32 0, ptr %i.dl, align 4, !tbaa !36
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  %i.dm = phi ptr [ %i.dl, %bb.af ], [ %.pre135.i86, %bb.x ], [ %i.cz, %bb.y ], [ %.pre132.i85, %bb.aa ], [ %i.dd, %bb.ab ], [ %i.df, %bb.ac ], [ %i.dh, %bb.ad ], [ %i.dj, %bb.ae ] ; 2 uses
  %.283.i = phi ptr [ %i.cq, %bb.af ], [ null, %bb.x ], [ %.081.i, %bb.y ], [ null, %bb.aa ], [ %.182.i, %bb.ab ], [ null, %bb.ac ], [ null, %bb.ad ], [ null, %bb.ae ] ; 2 uses
  %.2.i = phi i32 [ %.0, %bb.af ], [ -1, %bb.x ], [ %.079.i, %bb.y ], [ -1, %bb.aa ], [ %.180.i, %bb.ab ], [ -1, %bb.ac ], [ -1, %bb.ad ], [ -1, %bb.ae ] ; 5 uses
  %i.dn = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.dm) #25
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4 ; 4 uses
  store ptr %i.dp, ptr %i.b, align 8, !tbaa !38
  store i32 58, ptr %i.do, align 4, !tbaa !36
  %i.dq = and i32 %i.cn, 768
  %.not98.i = icmp eq i32 %i.dq, 0                ; 2 uses
  br i1 %.not98.i, label %switch.early.test.i, label %bb.ah

switch.early.test.i:                              ; preds = %bb.ag
  switch i32 %i.cp, label %.preheader.i [
    i32 10003, label %bb.ah
    i32 10001, label %bb.ah
  ]

bb.ah:                                            ; preds = %switch.early.test.i, %switch.early.test.i, %bb.ag
  %.not87.i = icmp eq ptr %.283.i, null
  br i1 %.not87.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dr = call ptr @wcscpy(ptr noundef nonnull %i.dp, ptr noundef nonnull %.283.i) #20 ; 0 uses
  %i.ds = load ptr, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %i.dt = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.ds) #25
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dt
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  switch i32 %i.cp, label %bb.ak [
    i32 10003, label %.thread.i
    i32 10001, label %.thread.i
  ]

.thread.i:                                        ; preds = %bb.aj, %bb.aj
  call fastcc void @append_id_w(ptr noundef nonnull %i.b, i32 noundef %.2.i)
  %i.dv = and i32 %i.cn, 15360
  %i.dw = icmp eq i32 %i.dv, 0
  %spec.select.i = select i1 %i.dw, i32 -1, i32 %.2.i
  %.pre136.i = load ptr, ptr %i.b, align 8, !tbaa !38
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.dx = phi ptr [ %i.dp, %bb.aj ], [ %i.du, %bb.ai ] ; 2 uses
  %i.dy = add i32 %i.cp, -10007
  %or.cond7.i = icmp ult i32 %i.dy, -2
  %or.cond.i = or i1 %i.bu, %or.cond7.i
  br i1 %or.cond.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak, %.thread.i
  %i.dz = phi ptr [ %.pre136.i, %.thread.i ], [ %i.dx, %bb.ak ] ; 2 uses
  %.397.i = phi i32 [ %spec.select.i, %.thread.i ], [ %.2.i, %bb.ak ]
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  store i32 58, ptr %i.dz, align 4, !tbaa !36
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.eb = phi ptr [ %i.ea, %bb.al ], [ %i.dx, %bb.ak ] ; 4 uses
  %.4.i = phi i32 [ %.397.i, %bb.al ], [ %.2.i, %bb.ak ] ; 2 uses
  br i1 %.not98.i, label %.preheader.i, label %bb.an

.preheader.i:                                     ; preds = %bb.am, %switch.early.test.i
  %.4160.i = phi i32 [ %.4.i, %bb.am ], [ %.2.i, %switch.early.test.i ]
  %i.ec = phi ptr [ %i.eb, %bb.am ], [ %i.dp, %switch.early.test.i ] ; 14 uses
  %i.ed = and i32 %i.cs, 8
  %.not89.us.i = icmp eq i32 %i.ed, 0             ; 2 uses
  br i1 %i.bw, label %.preheader.split.us.preheader.i, label %.preheader.split.preheader.i

.preheader.split.preheader.i:                     ; preds = %.preheader.i
  br i1 %.not89.us.i, label %.preheader.split.1.i, label %bb.ao

.preheader.split.us.preheader.i:                  ; preds = %.preheader.i
  %spec.select161.i = select i1 %.not89.us.i, i32 45, i32 114
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 %spec.select161.i, ptr %i.ec, align 4, !tbaa !36
  %i.ef = insertelement <4 x i32> poison, i32 %i.cs, i64 0
  %i.eg = shufflevector <4 x i32> %i.ef, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.eh = and <4 x i32> %i.eg, <i32 16, i32 1, i32 32, i32 2048>
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 20
  %i.ej = icmp eq <4 x i32> %i.eh, zeroinitializer
  %i.ek = select <4 x i1> %i.ej, <4 x i32> splat (i32 45), <4 x i32> <i32 119, i32 120, i32 112, i32 100>
  store <4 x i32> %i.ek, ptr %i.ee, align 4, !tbaa !36
  %i.el = and <4 x i32> %i.eg, <i32 256, i32 512, i32 1024, i32 64>
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  store ptr %i.em, ptr %i.b, align 8, !tbaa !38
  %i.en = getelementptr inbounds nuw i8, ptr %i.ec, i64 36
  %i.eo = icmp eq <4 x i32> %i.el, zeroinitializer
  %i.ep = select <4 x i1> %i.eo, <4 x i32> splat (i32 45), <4 x i32> <i32 68, i32 97, i32 65, i32 82>
  store <4 x i32> %i.ep, ptr %i.ei, align 4, !tbaa !36
  %i.eq = and <4 x i32> %i.eg, <i32 128, i32 4096, i32 8192, i32 16384>
  %i.er = getelementptr inbounds nuw i8, ptr %i.ec, i64 52
  %i.es = icmp eq <4 x i32> %i.eq, zeroinitializer
  %i.et = select <4 x i1> %i.es, <4 x i32> splat (i32 45), <4 x i32> <i32 87, i32 99, i32 67, i32 111>
  store <4 x i32> %i.et, ptr %i.en, align 4, !tbaa !36
  %i.eu = and i32 %i.cs, 32768
  %.not89.us.13.i = icmp eq i32 %i.eu, 0
  %storemerge149.i = select i1 %.not89.us.13.i, i32 45, i32 115
  %.sink124.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  store i32 %storemerge149.i, ptr %i.er, align 4, !tbaa !36
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ec, i64 60
  store i32 58, ptr %.sink124.i, align 4, !tbaa !36
  %i.ew = and <4 x i32> %i.eg, <i32 33554432, i32 67108864, i32 268435456, i32 134217728>
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ec, i64 76
  %i.ey = icmp eq <4 x i32> %i.ew, zeroinitializer
  %i.ez = select <4 x i1> %i.ey, <4 x i32> splat (i32 45), <4 x i32> <i32 102, i32 100, i32 105, i32 110>
  store <4 x i32> %i.ez, ptr %i.ev, align 4, !tbaa !36
  %i.fa = insertelement <2 x i32> poison, i32 %i.cs, i64 0
  %i.fb = shufflevector <2 x i32> %i.fa, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.fc = and <2 x i32> %i.fb, <i32 536870912, i32 1073741824>
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ec, i64 84
  %i.fe = icmp eq <2 x i32> %i.fc, zeroinitializer
  %i.ff = select <2 x i1> %i.fe, <2 x i32> splat (i32 45), <2 x i32> <i32 83, i32 70>
  store <2 x i32> %i.ff, ptr %i.ex, align 4, !tbaa !36
  %i.fg = and i32 %i.cs, 16777216
  %.not88.us.6.i = icmp eq i32 %i.fg, 0
  %storemerge156.i = select i1 %.not88.us.6.i, i32 45, i32 73
  %.sink131.i = getelementptr inbounds nuw i8, ptr %i.ec, i64 88
  store i32 %storemerge156.i, ptr %i.fd, align 4, !tbaa !36
  br label %.split105.us.i

bb.an:                                            ; preds = %bb.am
  %i.fh = insertelement <2 x i32> poison, i32 %i.cs, i64 0
  %i.fi = shufflevector <2 x i32> %i.fh, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.fj = and <2 x i32> %i.fi, <i32 292, i32 146>
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.fl = icmp eq <2 x i32> %i.fj, zeroinitializer
  %i.fm = select <2 x i1> %i.fl, <2 x i32> splat (i32 45), <2 x i32> <i32 114, i32 119>
  store <2 x i32> %i.fm, ptr %i.eb, align 4, !tbaa !36
  %i.fn = and i32 %i.cs, 73
  %.not92.i84 = icmp eq i32 %i.fn, 0
  %i.fo = select i1 %.not92.i84, i32 45, i32 120
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eb, i64 12 ; 2 uses
  store ptr %i.fp, ptr %i.b, align 8, !tbaa !38
  store i32 %i.fo, ptr %i.fk, align 4, !tbaa !36
  br label %bb.bp

bb.ao:                                            ; preds = %.preheader.split.preheader.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 114, ptr %i.ec, align 4, !tbaa !36
  br label %.preheader.split.1.i

.preheader.split.1.i:                             ; preds = %bb.ao, %.preheader.split.preheader.i
  %i.fr = phi ptr [ %i.ec, %.preheader.split.preheader.i ], [ %i.fq, %bb.ao ] ; 3 uses
  %i.fs = and i32 %i.cs, 16
  %.not89.1.i = icmp eq i32 %i.fs, 0
  br i1 %.not89.1.i, label %.preheader.split.2.i, label %bb.ap

bb.ap:                                            ; preds = %.preheader.split.1.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i32 119, ptr %i.fr, align 4, !tbaa !36
  br label %.preheader.split.2.i

.preheader.split.2.i:                             ; preds = %bb.ap, %.preheader.split.1.i
  %i.fu = phi ptr [ %i.ft, %bb.ap ], [ %i.fr, %.preheader.split.1.i ] ; 3 uses
  %i.fv = and i32 %i.cs, 1
  %.not89.2.i = icmp eq i32 %i.fv, 0
  br i1 %.not89.2.i, label %.preheader.split.3.i, label %bb.aq

bb.aq:                                            ; preds = %.preheader.split.2.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  store i32 120, ptr %i.fu, align 4, !tbaa !36
  br label %.preheader.split.3.i

.preheader.split.3.i:                             ; preds = %bb.aq, %.preheader.split.2.i
  %i.fx = phi ptr [ %i.fw, %bb.aq ], [ %i.fu, %.preheader.split.2.i ] ; 3 uses
  %i.fy = and i32 %i.cs, 32
  %.not89.3.i = icmp eq i32 %i.fy, 0
  br i1 %.not89.3.i, label %.preheader.split.4.i, label %bb.ar

bb.ar:                                            ; preds = %.preheader.split.3.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  store i32 112, ptr %i.fx, align 4, !tbaa !36
  br label %.preheader.split.4.i

.preheader.split.4.i:                             ; preds = %bb.ar, %.preheader.split.3.i
  %i.ga = phi ptr [ %i.fz, %bb.ar ], [ %i.fx, %.preheader.split.3.i ] ; 3 uses
  %i.gb = and i32 %i.cs, 2048
  %.not89.4.i = icmp eq i32 %i.gb, 0
  br i1 %.not89.4.i, label %.preheader.split.5.i, label %bb.as

bb.as:                                            ; preds = %.preheader.split.4.i
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store i32 100, ptr %i.ga, align 4, !tbaa !36
  br label %.preheader.split.5.i

.preheader.split.5.i:                             ; preds = %bb.as, %.preheader.split.4.i
  %i.gd = phi ptr [ %i.gc, %bb.as ], [ %i.ga, %.preheader.split.4.i ] ; 3 uses
  %i.ge = and i32 %i.cs, 256
  %.not89.5.i = icmp eq i32 %i.ge, 0
  br i1 %.not89.5.i, label %.preheader.split.6.i, label %bb.at

bb.at:                                            ; preds = %.preheader.split.5.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  store i32 68, ptr %i.gd, align 4, !tbaa !36
  br label %.preheader.split.6.i

.preheader.split.6.i:                             ; preds = %bb.at, %.preheader.split.5.i
  %i.gg = phi ptr [ %i.gf, %bb.at ], [ %i.gd, %.preheader.split.5.i ] ; 3 uses
  %i.gh = and i32 %i.cs, 512
  %.not89.6.i = icmp eq i32 %i.gh, 0
  br i1 %.not89.6.i, label %.preheader.split.7.i, label %bb.au

bb.au:                                            ; preds = %.preheader.split.6.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 4 ; 2 uses
  store ptr %i.gi, ptr %i.b, align 8, !tbaa !38
  store i32 97, ptr %i.gg, align 4, !tbaa !36
  br label %.preheader.split.7.i

.preheader.split.7.i:                             ; preds = %bb.au, %.preheader.split.6.i
  %i.gj = phi ptr [ %i.gi, %bb.au ], [ %i.gg, %.preheader.split.6.i ] ; 3 uses
  %i.gk = and i32 %i.cs, 1024
  %.not89.7.i = icmp eq i32 %i.gk, 0
  br i1 %.not89.7.i, label %.preheader.split.8.i, label %bb.av

bb.av:                                            ; preds = %.preheader.split.7.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 4
  store i32 65, ptr %i.gj, align 4, !tbaa !36
  br label %.preheader.split.8.i

.preheader.split.8.i:                             ; preds = %bb.av, %.preheader.split.7.i
  %i.gm = phi ptr [ %i.gl, %bb.av ], [ %i.gj, %.preheader.split.7.i ] ; 3 uses
  %i.gn = and i32 %i.cs, 64
  %.not89.8.i = icmp eq i32 %i.gn, 0
  br i1 %.not89.8.i, label %.preheader.split.9.i, label %bb.aw

bb.aw:                                            ; preds = %.preheader.split.8.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  store i32 82, ptr %i.gm, align 4, !tbaa !36
  br label %.preheader.split.9.i

.preheader.split.9.i:                             ; preds = %bb.aw, %.preheader.split.8.i
  %i.gp = phi ptr [ %i.go, %bb.aw ], [ %i.gm, %.preheader.split.8.i ] ; 3 uses
  %i.gq = and i32 %i.cs, 128
  %.not89.9.i = icmp eq i32 %i.gq, 0
  br i1 %.not89.9.i, label %.preheader.split.10.i, label %bb.ax

bb.ax:                                            ; preds = %.preheader.split.9.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  store i32 87, ptr %i.gp, align 4, !tbaa !36
  br label %.preheader.split.10.i

.preheader.split.10.i:                            ; preds = %bb.ax, %.preheader.split.9.i
  %i.gs = phi ptr [ %i.gr, %bb.ax ], [ %i.gp, %.preheader.split.9.i ] ; 3 uses
  %i.gt = and i32 %i.cs, 4096
  %.not89.10.i = icmp eq i32 %i.gt, 0
  br i1 %.not89.10.i, label %.preheader.split.11.i, label %bb.ay

bb.ay:                                            ; preds = %.preheader.split.10.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  store i32 99, ptr %i.gs, align 4, !tbaa !36
  br label %.preheader.split.11.i

.preheader.split.11.i:                            ; preds = %bb.ay, %.preheader.split.10.i
  %i.gv = phi ptr [ %i.gu, %bb.ay ], [ %i.gs, %.preheader.split.10.i ] ; 3 uses
  %i.gw = and i32 %i.cs, 8192
  %.not89.11.i = icmp eq i32 %i.gw, 0
  br i1 %.not89.11.i, label %.preheader.split.12.i, label %bb.az

bb.az:                                            ; preds = %.preheader.split.11.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  store i32 67, ptr %i.gv, align 4, !tbaa !36
  br label %.preheader.split.12.i

.preheader.split.12.i:                            ; preds = %bb.az, %.preheader.split.11.i
  %i.gy = phi ptr [ %i.gx, %bb.az ], [ %i.gv, %.preheader.split.11.i ] ; 3 uses
  %i.gz = and i32 %i.cs, 16384
  %.not89.12.i = icmp eq i32 %i.gz, 0
  br i1 %.not89.12.i, label %.preheader.split.13.i, label %bb.ba

bb.ba:                                            ; preds = %.preheader.split.12.i
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 4 ; 2 uses
  store ptr %i.ha, ptr %i.b, align 8, !tbaa !38
  store i32 111, ptr %i.gy, align 4, !tbaa !36
  br label %.preheader.split.13.i

.preheader.split.13.i:                            ; preds = %bb.ba, %.preheader.split.12.i
  %i.hb = phi ptr [ %i.ha, %bb.ba ], [ %i.gy, %.preheader.split.12.i ] ; 3 uses
  %i.hc = and i32 %i.cs, 32768
  %.not89.13.i = icmp eq i32 %i.hc, 0
  br i1 %.not89.13.i, label %.split103.preheader.i, label %bb.bb

bb.bb:                                            ; preds = %.preheader.split.13.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  store i32 115, ptr %i.hb, align 4, !tbaa !36
  br label %.split103.preheader.i

.split103.preheader.i:                            ; preds = %bb.bb, %.preheader.split.13.i
  %.ph.i = phi ptr [ %i.hb, %.preheader.split.13.i ], [ %i.hd, %bb.bb ] ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.ph.i, i64 4 ; 2 uses
  store i32 58, ptr %.ph.i, align 4, !tbaa !36
  %i.hf = and i32 %i.cs, 33554432
  %.not88.i = icmp eq i32 %i.hf, 0
  br i1 %.not88.i, label %.split103.1.i, label %bb.bc

bb.bc:                                            ; preds = %.split103.preheader.i
  %i.hg = getelementptr inbounds nuw i8, ptr %.ph.i, i64 8
  store i32 102, ptr %i.he, align 4, !tbaa !36
  br label %.split103.1.i

.split103.1.i:                                    ; preds = %bb.bc, %.split103.preheader.i
  %i.hh = phi ptr [ %i.he, %.split103.preheader.i ], [ %i.hg, %bb.bc ] ; 3 uses
  %i.hi = and i32 %i.cs, 67108864
  %.not88.1.i = icmp eq i32 %i.hi, 0
  br i1 %.not88.1.i, label %.split103.2.i, label %bb.bd

bb.bd:                                            ; preds = %.split103.1.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  store i32 100, ptr %i.hh, align 4, !tbaa !36
  br label %.split103.2.i

.split103.2.i:                                    ; preds = %bb.bd, %.split103.1.i
  %i.hk = phi ptr [ %i.hj, %bb.bd ], [ %i.hh, %.split103.1.i ] ; 3 uses
  %i.hl = and i32 %i.cs, 268435456
  %.not88.2.i = icmp eq i32 %i.hl, 0
  br i1 %.not88.2.i, label %.split103.3.i, label %bb.be

bb.be:                                            ; preds = %.split103.2.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  store i32 105, ptr %i.hk, align 4, !tbaa !36
  br label %.split103.3.i

.split103.3.i:                                    ; preds = %bb.be, %.split103.2.i
  %i.hn = phi ptr [ %i.hm, %bb.be ], [ %i.hk, %.split103.2.i ] ; 3 uses
  %i.ho = and i32 %i.cs, 134217728
  %.not88.3.i = icmp eq i32 %i.ho, 0
  br i1 %.not88.3.i, label %.split103.4.i, label %bb.bf

bb.bf:                                            ; preds = %.split103.3.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 4 ; 2 uses
  store ptr %i.hp, ptr %i.b, align 8, !tbaa !38
  store i32 110, ptr %i.hn, align 4, !tbaa !36
  br label %.split103.4.i

.split103.4.i:                                    ; preds = %bb.bf, %.split103.3.i
  %i.hq = phi ptr [ %i.hp, %bb.bf ], [ %i.hn, %.split103.3.i ] ; 3 uses
  %i.hr = and i32 %i.cs, 536870912
  %.not88.4.i = icmp eq i32 %i.hr, 0
  br i1 %.not88.4.i, label %.split103.5.i, label %bb.bg

bb.bg:                                            ; preds = %.split103.4.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  store i32 83, ptr %i.hq, align 4, !tbaa !36
  br label %.split103.5.i

.split103.5.i:                                    ; preds = %bb.bg, %.split103.4.i
  %i.ht = phi ptr [ %i.hs, %bb.bg ], [ %i.hq, %.split103.4.i ] ; 3 uses
  %i.hu = and i32 %i.cs, 1073741824
  %.not88.5.i = icmp eq i32 %i.hu, 0
  br i1 %.not88.5.i, label %.split103.6.i, label %bb.bh

bb.bh:                                            ; preds = %.split103.5.i
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  store i32 70, ptr %i.ht, align 4, !tbaa !36
  br label %.split103.6.i

.split103.6.i:                                    ; preds = %bb.bh, %.split103.5.i
  %i.hw = phi ptr [ %i.hv, %bb.bh ], [ %i.ht, %.split103.5.i ] ; 3 uses
  %i.hx = and i32 %i.cs, 16777216
  %.not88.6.i = icmp eq i32 %i.hx, 0
  br i1 %.not88.6.i, label %.split105.us.i, label %bb.bi

bb.bi:                                            ; preds = %.split103.6.i
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 4
  store i32 73, ptr %i.hw, align 4, !tbaa !36
  br label %.split105.us.i

.split105.us.i:                                   ; preds = %bb.bi, %.split103.6.i, %.preheader.split.us.preheader.i
  %i.hz = phi ptr [ %.sink131.i, %.preheader.split.us.preheader.i ], [ %i.hy, %bb.bi ], [ %i.hw, %.split103.6.i ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4 ; 6 uses
  store ptr %i.ia, ptr %i.b, align 8, !tbaa !38
  store i32 58, ptr %i.hz, align 4, !tbaa !36
  %i.ib = call range(i32 0, 31) i32 @llvm.ctpop.i32(i32 %i.cn)
  %i.ic = icmp eq i32 %i.ib, 1
  br i1 %i.ic, label %.split.i, label %bb.bn

.split.i:                                         ; preds = %.split105.us.i
  %i.id = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cn, i1 true)
  switch i32 %i.id, label %bb.bn [
    i32 10, label %bb.bj
    i32 11, label %bb.bk
    i32 12, label %bb.bl
    i32 13, label %bb.bm
  ]

bb.bj:                                            ; preds = %.split.i
  %i.ie = call ptr @wcscpy(ptr noundef nonnull %i.ia, ptr noundef nonnull @.str.15) #20 ; 0 uses
  br label %bb.bo

bb.bk:                                            ; preds = %.split.i
  %i.if = call ptr @wcscpy(ptr noundef nonnull %i.ia, ptr noundef nonnull @.str.14) #20 ; 0 uses
  br label %bb.bo

bb.bl:                                            ; preds = %.split.i
  %i.ig = call ptr @wcscpy(ptr noundef nonnull %i.ia, ptr noundef nonnull @.str.16) #20 ; 0 uses
  br label %bb.bo

bb.bm:                                            ; preds = %.split.i
  %i.ih = call ptr @wcscpy(ptr noundef nonnull %i.ia, ptr noundef nonnull @.str.17) #20 ; 0 uses
  br label %bb.bo

bb.bn:                                            ; preds = %.split.i, %.split105.us.i
  store i32 0, ptr %i.ia, align 4, !tbaa !36
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj
  %i.ii = load ptr, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %i.ij = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.ii) #25
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.ij ; 2 uses
  store ptr %i.ik, ptr %i.b, align 8, !tbaa !38
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.an
  %.4159.i = phi i32 [ %.4160.i, %bb.bo ], [ %.4.i, %bb.an ] ; 2 uses
  %i.il = phi ptr [ %i.ik, %bb.bo ], [ %i.fp, %bb.an ] ; 2 uses
  %.not93.i = icmp eq i32 %.4159.i, -1
  br i1 %.not93.i, label %append_entry_w.exit87, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  store ptr %i.im, ptr %i.b, align 8, !tbaa !38
  store i32 58, ptr %i.il, align 4, !tbaa !36
  call fastcc void @append_id_w(ptr noundef nonnull %i.b, i32 noundef %.4159.i)
  br label %append_entry_w.exit87

append_entry_w.exit87:                            ; preds = %bb.bp, %bb.bq
  %i.in = add nsw i32 %.199, 1
  br label %bb.bu

bb.br:                                            ; preds = %bb.o
  %i.io = icmp slt i32 %i.cg, 0
  br i1 %i.io, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.ip = tail call ptr @__errno_location() #22
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !36
  %i.ir = icmp eq i32 %i.iq, 12
  br i1 %i.ir, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  call void @free(ptr noundef %i.l) #20
  br label %archive_acl_text_want_type.exit.thread92

bb.bu:                                            ; preds = %bb.n, %bb.n, %bb.n, %append_entry_w.exit87, %bb.bs, %bb.br, %bb.l
  %.2 = phi i32 [ %.199, %bb.l ], [ %.199, %bb.n ], [ %.199, %bb.n ], [ %.199, %bb.n ], [ %i.in, %append_entry_w.exit87 ], [ %.199, %bb.bs ], [ %.199, %bb.br ]
  %.056 = load ptr, ptr %.056100, align 8, !tbaa !30 ; 2 uses
  %.not71 = icmp eq ptr %.056, null
  br i1 %.not71, label %._crit_edge.loopexit, label %bb.l, !llvm.loop !43

._crit_edge.loopexit:                             ; preds = %bb.bu
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !38
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.k
  %i.is = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.bp, %bb.k ]
  store i32 0, ptr %i.is, align 4, !tbaa !36
  %i.it = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.l) #25 ; 2 uses
  %i.iu = add i64 %phi.call, -1
  %i.iv = icmp ugt i64 %i.it, %i.iu
  br i1 %i.iv, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %._crit_edge
  call void @__archive_errx(i32 noundef 1, ptr noundef nonnull @.str.2) #24
  unreachable

bb.bw:                                            ; preds = %._crit_edge
  %.not72 = icmp eq ptr %1, null
  br i1 %.not72, label %archive_acl_text_want_type.exit.thread92, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  store i64 %i.it, ptr %1, align 8, !tbaa !39
  br label %archive_acl_text_want_type.exit.thread92

archive_acl_text_want_type.exit.thread92:         ; preds = %bb.b, %bb.bw, %bb.bx, %bb.f, %bb.d, %bb.bt
  %.060 = phi ptr [ null, %bb.f ], [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.bt ], [ %i.l, %bb.bx ], [ %i.l, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %.060
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @archive_acl_text_len(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.074103 = load ptr, ptr %i.d, align 8, !tbaa !30 ; 2 uses
  %.not104 = icmp eq ptr %.074103, null
  br i1 %.not104, label %._crit_edge110, label %.lr.ph109

.lr.ph109:                                        ; preds = %bb.a
  %i.e = and i32 %1, 512
  %.not84 = icmp eq i32 %i.e, 0
  %i.f = icmp eq i32 %1, 15360                    ; 4 uses
  %.not87 = icmp eq i32 %3, 0
  %i.g = and i32 %2, 4
  %.not89 = icmp eq i32 %i.g, 0
  %i.h = and i32 %1, 768
  %.not90 = icmp eq i32 %i.h, 0
  %or.cond93 = or i1 %.not90, %.not89
  %i.i = and i32 %2, 1
  %.not91 = icmp eq i32 %i.i, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph109, %bb.ae
  %.074107 = phi ptr [ %.074103, %.lr.ph109 ], [ %.074, %bb.ae ] ; 6 uses
  %.0106 = phi i64 [ 0, %.lr.ph109 ], [ %.8, %bb.ae ] ; 5 uses
  %.072105 = phi i32 [ 0, %.lr.ph109 ], [ %.173, %bb.ae ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.074107, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !31   ; 3 uses
  %i.l = and i32 %i.k, %1
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.ae, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i32 %i.k, 256
  %i.o = getelementptr inbounds nuw i8, ptr %.074107, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !33   ; 3 uses
  br i1 %i.n, label %bb.d, label %._crit_edge113

bb.d:                                             ; preds = %bb.c
  switch i32 %i.p, label %._crit_edge113 [
    i32 10002, label %bb.ae
    i32 10004, label %bb.ae
    i32 10006, label %bb.ae
  ]

._crit_edge113:                                   ; preds = %bb.c, %bb.d
  %i.q = add nsw i32 %.072105, 1
  %i.r = lshr i32 %i.k, 6
  %i.s = and i32 %i.r, 8
  %narrow = select i1 %.not84, i32 0, i32 %i.s
  %spec.select = zext nneg i32 %narrow to i64
  %.1 = add i64 %.0106, %spec.select              ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.074107, i64 12 ; 2 uses
  switch i32 %i.p, label %bb.i [
    i32 10002, label %bb.e
    i32 10001, label %bb.f
    i32 10005, label %bb.f
    i32 10004, label %bb.g
    i32 10003, label %bb.h
    i32 10006, label %bb.h
    i32 10107, label %.thread
  ]

bb.e:                                             ; preds = %._crit_edge113
  br i1 %i.f, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge113, %._crit_edge113
  %i.u = add i64 %.1, 4
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge113
  br i1 %i.f, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge113, %._crit_edge113
  %i.v = add i64 %.1, 5
  br label %bb.i

.thread:                                          ; preds = %._crit_edge113, %bb.g, %bb.e
  %.sink = phi i64 [ 6, %bb.g ], [ 6, %bb.e ], [ 9, %._crit_edge113 ]
  %i.w = add i64 %.1, %.sink                      ; 2 uses
  %i.x = add i64 %i.w, 1
  br label %bb.u

bb.i:                                             ; preds = %bb.h, %bb.f, %._crit_edge113
  %.2 = phi i64 [ %.1, %._crit_edge113 ], [ %i.v, %bb.h ], [ %i.u, %bb.f ] ; 4 uses
  %i.y = add i64 %.2, 1                           ; 3 uses
  switch i32 %i.p, label %bb.u [
    i32 10001, label %bb.j
    i32 10003, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.074107, i64 24 ; 2 uses
  br i1 %.not87, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = call i32 @archive_mstring_get_wcs(ptr noundef %4, ptr noundef nonnull %i.z, ptr noundef nonnull %i.b) #20 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  %i.ac = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ad = icmp ne ptr %i.ac, null
  %or.cond = select i1 %i.ab, i1 %i.ad, i1 false
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %i.ac) #25
  %i.af = add i64 %i.ae, %i.y
  br label %bb.t

bb.m:                                             ; preds = %bb.k
  %i.ag = icmp slt i32 %i.aa, 0
  br i1 %i.ag, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ah = tail call ptr @__errno_location() #22
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !36
  %i.aj = icmp eq i32 %i.ai, 12
  br i1 %i.aj, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ak = add i64 %.2, 14
  br label %bb.t

bb.p:                                             ; preds = %bb.j
  %i.al = call i32 @archive_mstring_get_mbs_l(ptr noundef %4, ptr noundef nonnull %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef %5) #20
  %.not88 = icmp eq i32 %i.al, 0
  br i1 %.not88, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %i.am = load i64, ptr %i.c, align 8, !tbaa !39  ; 2 uses
  %i.an = icmp ne i64 %i.am, 0
  %i.ao = load ptr, ptr %i.a, align 8
  %i.ap = icmp ne ptr %i.ao, null
  %or.cond3 = select i1 %i.an, i1 %i.ap, i1 false
  br i1 %or.cond3, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aq = add i64 %i.am, %i.y
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ar = add i64 %.2, 14
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.l, %bb.o
  %.3 = phi i64 [ %i.af, %bb.l ], [ %i.ak, %bb.o ], [ %i.aq, %bb.r ], [ %i.ar, %bb.s ]
  %i.as = add i64 %.3, 1
  br label %bb.v

bb.u:                                             ; preds = %.thread, %bb.i
  %i.at = phi i64 [ %i.x, %.thread ], [ %i.y, %bb.i ]
  %.298 = phi i64 [ %i.w, %.thread ], [ %.2, %bb.i ]
  %i.au = add i64 %.298, 2
  %spec.select92 = select i1 %i.f, i64 %i.at, i64 %i.au
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.4 = phi i64 [ %i.as, %bb.t ], [ %spec.select92, %bb.u ] ; 2 uses
  br i1 %or.cond93, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.av = load i32, ptr %i.t, align 4, !tbaa !33
  %.off = add i32 %i.av, -10005
  %switch = icmp ult i32 %.off, 2
  %i.aw = sext i1 %switch to i64
  %spec.select95 = add i64 %.4, %i.aw
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5 = phi i64 [ %.4, %bb.v ], [ %spec.select95, %bb.w ] ; 2 uses
  br i1 %i.f, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ax = load i32, ptr %i.j, align 8, !tbaa !31
  %i.ay = and i32 %i.ax, 2048
  %i.az = icmp eq i32 %i.ay, 0
  %spec.select94.v = select i1 %i.az, i64 28, i64 27
  %spec.select94 = add i64 %spec.select94.v, %.5
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ba = add i64 %.5, 3
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %.6 = phi i64 [ %i.ba, %bb.z ], [ %spec.select94, %bb.y ] ; 3 uses
  %i.bb = load i32, ptr %i.t, align 4, !tbaa !33
  switch i32 %i.bb, label %bb.ad [
    i32 10001, label %bb.ab
    i32 10003, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  br i1 %.not91, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bc = add i64 %.6, 1
  %i.bd = getelementptr inbounds nuw i8, ptr %.074107, i64 20
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !34 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 9
  br i1 %i.bf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ac, %.lr.ph
  %.070102 = phi i32 [ %i.bg, %.lr.ph ], [ %i.be, %bb.ac ] ; 2 uses
  %.071101 = phi i32 [ %i.bh, %.lr.ph ], [ 1, %bb.ac ]
  %i.bg = udiv i32 %.070102, 10
  %i.bh = add nuw nsw i32 %.071101, 1             ; 2 uses
  %i.bi = icmp samesign ugt i32 %.070102, 99
  br i1 %i.bi, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !44

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.bj = zext nneg i32 %i.bh to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ac
  %.071.lcssa = phi i64 [ 1, %bb.ac ], [ %i.bj, %._crit_edge.loopexit ]
  %i.bk = add i64 %i.bc, %.071.lcssa
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %._crit_edge, %bb.ab
  %.7 = phi i64 [ %i.bk, %._crit_edge ], [ %.6, %bb.ab ], [ %.6, %bb.aa ]
  %i.bl = add i64 %.7, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.d, %bb.d, %bb.d, %bb.b, %bb.ad
  %.173 = phi i32 [ %.072105, %bb.b ], [ %.072105, %bb.d ], [ %.072105, %bb.d ], [ %.072105, %bb.d ], [ %i.q, %bb.ad ] ; 2 uses
  %.8 = phi i64 [ %.0106, %bb.b ], [ %.0106, %bb.d ], [ %.0106, %bb.d ], [ %.0106, %bb.d ], [ %i.bl, %bb.ad ] ; 3 uses
  %.074 = load ptr, ptr %.074107, align 8, !tbaa !30 ; 2 uses
  %.not = icmp eq ptr %.074, null
  br i1 %.not, label %._crit_edge110.loopexit, label %bb.b, !llvm.loop !45

._crit_edge110.loopexit:                          ; preds = %bb.ae
  %i.bm = icmp eq i32 %.173, 0
  %i.bn = select i1 %i.bm, i64 0, i64 %.8
  br label %._crit_edge110

._crit_edge110:                                   ; preds = %._crit_edge110.loopexit, %bb.a
  %.072.lcssa = phi i64 [ 0, %bb.a ], [ %i.bn, %._crit_edge110.loopexit ]
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %.8, %._crit_edge110.loopexit ] ; 2 uses
  %i.bo = and i32 %1, 256
  %.not82 = icmp eq i32 %i.bo, 0
  br i1 %.not82, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %._crit_edge110
  %i.bp = and i32 %2, 4
  %.not83 = icmp eq i32 %i.bp, 0
  br i1 %.not83, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bq = add i64 %.0.lcssa, 31
  br label %.loopexit

bb.ah:                                            ; preds = %bb.af
  %i.br = add i64 %.0.lcssa, 32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.p, %bb.n, %._crit_edge110, %bb.ah, %bb.ag
  %.075 = phi i64 [ %i.bq, %bb.ag ], [ %i.br, %bb.ah ], [ %.072.lcssa, %._crit_edge110 ], [ 0, %bb.n ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i64 %.075
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @__archive_errx(i32 noundef, ptr noundef) local_unnamed_addr #10

declare i32 @archive_mstring_get_wcs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @archive_acl_to_text_l(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 39 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.d = getelementptr i8, ptr %0, i64 48
  %.val = load i32, ptr %i.d, align 8, !tbaa !27  ; 2 uses
  %i.e = and i32 %.val, 15360
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %.val, 768
  %.not11.i = icmp eq i32 %i.f, 0
  br i1 %.not11.i, label %.split, label %archive_acl_text_want_type.exit.thread91

bb.c:                                             ; preds = %bb.a
  %.1.i = and i32 %2, 768                         ; 2 uses
  %.1.i.off = add nsw i32 %.1.i, -1
  %switch = icmp ult i32 %.1.i.off, 767
  br i1 %switch, label %.split, label %.split60

.split:                                           ; preds = %bb.c, %bb.b
  %.08.i90 = phi i32 [ %.1.i, %bb.c ], [ 15360, %bb.b ] ; 2 uses
  %i.g = tail call fastcc i64 @archive_acl_text_len(ptr noundef nonnull %0, i32 noundef %.08.i90, i32 noundef %2, i32 noundef 0, ptr noundef null, ptr noundef %3)
  br label %bb.d

end_hunk_0
