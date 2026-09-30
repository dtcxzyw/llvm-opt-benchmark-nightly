Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_kitten?download=true
inline.NumInlined: 176
inline.NumDeleted: 51
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@cadical_kitten_failed:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.c
  %i.i = load i32, ptr %i.h, align 4, !tbaa !58   ; 2 uses
  %.not18 = icmp eq i32 %i.i, 0
  br i1 %.not18, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = shl i32 %i.i, 1
  %i.k = or i32 %1, -2
  %i.l = add i32 %i.j, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !84
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !91, !range !32, !noundef !33
  %i.r = trunc nuw i8 %i.q to i1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.1 = phi i1 [ false, %bb.g ], [ %i.r, %bb.i ], [ false, %bb.h ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define void @cadical_kitten_add_prime_implicant(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.cadical_kitten_add_prime_implicant, ptr noundef nonnull @.str)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !30
  switch i32 %i.a, label %bb.f [
    i32 11, label %bb.g
    i32 10, label %status_to_string.exit
    i32 21, label %bb.e
    i32 20, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %status_to_string.exit

bb.e:                                             ; preds = %bb.c
  br label %status_to_string.exit

bb.f:                                             ; preds = %bb.c
  br label %status_to_string.exit

status_to_string.exit:                            ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi ptr [ @.str.12, %bb.f ], [ @.str.11, %bb.e ], [ @.str.8, %bb.c ], [ @.str.10, %bb.d ]
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.cadical_kitten_add_prime_implicant, ptr noundef nonnull @.str.1, ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.9)
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [24 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %.not53 = icmp eq i32 %2, 0
  %i.e = zext i1 %.not53 to i64
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.e ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !57
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !56   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57   ; 2 uses
  %.not5458 = icmp eq ptr %i.i, %i.k
  br i1 %.not5458, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.l = getelementptr i8, ptr %0, i64 288
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !66
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.l
  %i.n = phi ptr [ %i.g, %.lr.ph ], [ %i.as, %bb.l ] ; 4 uses
  %i.o = phi ptr [ %.pre, %.lr.ph ], [ %i.at, %bb.l ] ; 4 uses
  %i.p = phi ptr [ %i.g, %.lr.ph ], [ %i.au, %bb.l ] ; 2 uses
  %.059 = phi ptr [ %i.i, %.lr.ph ], [ %i.av, %bb.l ] ; 2 uses
  %i.q = load i32, ptr %.059, align 4, !tbaa !58  ; 2 uses
  %.val = load ptr, ptr %i.l, align 8, !tbaa !80
  %i.r = lshr i32 %i.q, 1
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !58
  %i.v = shl i32 %i.u, 1
  %i.w = and i32 %i.q, 1
  %i.x = or disjoint i32 %i.v, %i.w
  %i.y = xor i32 %i.x, 1
  %i.z = icmp eq ptr %i.p, %i.o
  br i1 %i.z, label %bb.i, label %bb.l

.critedge:                                        ; preds = %bb.l, %bb.g
  %i.aa = phi ptr [ %i.g, %bb.g ], [ %i.as, %bb.l ] ; 2 uses
  %i.ab = phi ptr [ %i.g, %bb.g ], [ %i.au, %bb.l ]
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 2
  tail call void %3(ptr noundef %1, i32 noundef %2, i64 noundef %i.af, ptr noundef %i.aa) #23
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !56
  store ptr %i.ag, ptr %i.j, align 8, !tbaa !57
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !56
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !57
  ret void

bb.i:                                             ; preds = %bb.h
  %i.ai = ptrtoint ptr %i.n to i64
  %i.aj = ptrtoint ptr %i.o to i64
  %i.ak = sub i64 %i.aj, %i.ai                    ; 2 uses
  %.not55 = icmp eq ptr %i.o, %i.n
  %i.al = ashr exact i64 %i.ak, 1
  %i.am = select i1 %.not55, i64 1, i64 %i.al     ; 2 uses
  %i.an = shl i64 %i.am, 2                        ; 2 uses
  %i.ao = tail call ptr @realloc(ptr noundef %i.n, i64 noundef %i.an) #25 ; 5 uses
  store ptr %i.ao, ptr %i.f, align 8, !tbaa !56
  %.not56 = icmp eq ptr %i.ao, null
  br i1 %.not56, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %i.an)
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.am ; 2 uses
  store ptr %i.ap, ptr %i.m, align 8, !tbaa !66
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ak
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %i.ar = phi ptr [ %i.aq, %bb.k ], [ %i.p, %bb.h ] ; 2 uses
  %i.as = phi ptr [ %i.ao, %bb.k ], [ %i.n, %bb.h ] ; 2 uses
  %i.at = phi ptr [ %i.ap, %bb.k ], [ %i.o, %bb.h ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 3 uses
  store ptr %i.au, ptr %i.h, align 8, !tbaa !57
  store i32 %i.y, ptr %i.ar, align 4, !tbaa !58
  %i.av = getelementptr inbounds nuw i8, ptr %.059, i64 4 ; 2 uses
  %.not54 = icmp eq ptr %i.av, %i.k
  br i1 %.not54, label %.critedge, label %bb.h, !llvm.loop !181
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @cadical_kitten_compute_prime_implicant(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.cadical_kitten_compute_prime_implicant, ptr noundef nonnull @.str)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !30
  switch i32 %i.a, label %bb.f [
    i32 10, label %bb.g
    i32 21, label %bb.e
    i32 11, label %status_to_string.exit
    i32 20, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %status_to_string.exit

bb.e:                                             ; preds = %bb.c
  br label %status_to_string.exit

bb.f:                                             ; preds = %bb.c
  br label %status_to_string.exit

status_to_string.exit:                            ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi ptr [ @.str.12, %bb.f ], [ @.str.11, %bb.e ], [ @.str.10, %bb.d ], [ @.str.9, %bb.c ]
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.cadical_kitten_compute_prime_implicant, ptr noundef nonnull @.str.1, ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.8)
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.j = getelementptr i8, ptr %0, i64 336        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.i

bb.h:                                             ; preds = %.critedge2
  tail call void @free(ptr noundef %.sroa.0.1.lcssa) #23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  br i1 %.1, label %bb.ak, label %bb.al

bb.i:                                             ; preds = %bb.g, %.critedge2
  %i.o = phi i1 [ false, %bb.g ], [ true, %.critedge2 ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %bb.g ], [ 1, %.critedge2 ] ; 2 uses
  %.0114185 = phi i1 [ false, %bb.g ], [ %.1, %.critedge2 ] ; 2 uses
  %.sroa.0.0184 = phi ptr [ null, %bb.g ], [ %.sroa.0.1.lcssa, %.critedge2 ] ; 4 uses
  %.sroa.23.0183 = phi ptr [ null, %bb.g ], [ %.sroa.23.1.lcssa, %.critedge2 ] ; 2 uses
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !77   ; 2 uses
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !78   ; 2 uses
  %.not120164 = icmp eq ptr %i.p, %i.q
  br i1 %.not120164, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.ac
  %.0112168 = phi ptr [ %i.ee, %bb.ac ], [ %i.p, %bb.i ] ; 2 uses
  %.sroa.0.1167 = phi ptr [ %.sroa.0.3, %bb.ac ], [ %.sroa.0.0184, %bb.i ] ; 7 uses
  %.sroa.14.1166 = phi ptr [ %.sroa.14.3, %bb.ac ], [ %.sroa.0.0184, %bb.i ] ; 7 uses
  %.sroa.23.1165 = phi ptr [ %.sroa.23.3, %bb.ac ], [ %.sroa.23.0183, %bb.i ] ; 5 uses
  %i.r = load i32, ptr %.0112168, align 4, !tbaa !58 ; 5 uses
  %i.s = load i64, ptr %i.h, align 8, !tbaa !45
  %i.t = load i64, ptr %i.i, align 8, !tbaa !28
  %.not121 = icmp ult i64 %i.s, %i.t
  br i1 %.not121, label %bb.j, label %.critedge

bb.j:                                             ; preds = %.lr.ph
  %i.u = lshr i32 %i.r, 1
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !103  ; 2 uses
  %.not122 = icmp eq i32 %i.y, -1
  br i1 %.not122, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val = load ptr, ptr %i.j, align 8, !tbaa !60
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.z ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.0111.val = load i32, ptr %i.ab, align 4, !tbaa !92
  %i.ac = and i32 %.0111.val, 2
  %.not131 = icmp eq i32 %i.ac, 0
  br i1 %.not131, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ad = load i32, ptr %i.aa, align 4, !tbaa !93
  %i.ae = tail call zeroext i1 %2(ptr noundef %1, i32 noundef %i.ad) #23
  %i.af = zext i1 %i.ae to i64
  %i.ag = icmp eq i64 %indvars.iv, %i.af
  br i1 %i.ag, label %.thread, label %bb.ac

.thread:                                          ; preds = %bb.j, %bb.k, %bb.l
  %i.ah = and i32 %i.r, -2
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !83  ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.w, %.thread
  %.0143.i = phi i32 [ %i.ah, %.thread ], [ %i.ak, %bb.w ]
  %i.aj = phi i1 [ true, %.thread ], [ false, %bb.w ]
  %.083142.i = phi i32 [ 0, %.thread ], [ 1, %bb.w ]
  %i.ak = xor i32 %.083142.i, %.0143.i            ; 2 uses
  %i.al = xor i32 %i.ak, 1                        ; 3 uses
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.an = zext i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %i.an ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !56 ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !57 ; 5 uses
  %i.as = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr i64 %i.au, 7
  %i.aw = add nsw i64 %i.av, 1                    ; 2 uses
  %.not90129.i = icmp eq ptr %i.ap, %i.ar
  br i1 %.not90129.i, label %.critedge.thread.i, label %.lr.ph133.i

.lr.ph133.i:                                      ; preds = %bb.m, %.critedge.i
  %.072132.i = phi i64 [ %.173.i, %.critedge.i ], [ %i.aw, %bb.m ] ; 3 uses
  %.074131.i = phi ptr [ %i.ax, %.critedge.i ], [ %i.ap, %bb.m ] ; 2 uses
  %.077130.i = phi ptr [ %.3.i, %.critedge.i ], [ %i.ap, %bb.m ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.074131.i, i64 4 ; 5 uses
  %i.ay = load i32, ptr %.074131.i, align 4, !tbaa !58 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.077130.i, i64 4 ; 5 uses
  store i32 %i.ay, ptr %.077130.i, align 4, !tbaa !58
  %.val.i = load ptr, ptr %i.j, align 8, !tbaa !60
  %i.ba = zext i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.ba ; 6 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %.val94.i = load i32, ptr %i.bc, align 4, !tbaa !92
  %i.bd = and i32 %.val94.i, 2
  %.not99.i = icmp eq i32 %i.bd, 0
  br i1 %.not99.i, label %bb.n, label %.critedge.i, !llvm.loop !182

bb.n:                                             ; preds = %.lr.ph133.i
  %i.be = load i32, ptr %i.bb, align 4, !tbaa !93
  %i.bf = tail call zeroext i1 %2(ptr noundef %1, i32 noundef %i.be) #23, !inline_history !183
  %i.bg = xor i1 %i.o, %i.bf
  br i1 %i.bg, label %bb.o, label %.critedge.i, !llvm.loop !182

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 12 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !58
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !58
  %i.bl = xor i32 %i.bi, %i.bk
  %i.bm = xor i32 %i.bl, %i.al                    ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !40
  %i.bq = add i64 %.072132.i, 1                   ; 4 uses
  %i.br = icmp sgt i8 %i.bp, 0
  br i1 %i.br, label %.critedge.i, label %bb.p, !llvm.loop !182

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !69 ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %.idx.i = shl nuw nsw i64 %i.bu, 2
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx.i
  %.not91.not119.i = icmp eq i32 %i.bt, 2
  br i1 %.not91.not119.i, label %.critedge.thread.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %.lr.ph.preheader.i
  %.068120.i = phi ptr [ %i.cc, %bb.q ], [ %i.bw, %.lr.ph.preheader.i ] ; 3 uses
  %i.bx = load i32, ptr %.068120.i, align 4, !tbaa !58 ; 2 uses
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !40
  %i.cb = icmp sgt i8 %i.ca, 0
  br i1 %i.cb, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.068120.i, i64 4 ; 2 uses
  %.not91.not.i = icmp eq ptr %i.cc, %i.bv
  br i1 %.not91.not.i, label %.critedge.thread.i, label %.lr.ph.i, !llvm.loop !184

bb.r:                                             ; preds = %.lr.ph.i
  store i32 %i.bm, ptr %i.bh, align 4, !tbaa !58
  store i32 %i.bx, ptr %i.bj, align 4, !tbaa !58
  store i32 %i.al, ptr %.068120.i, align 4, !tbaa !58
  %.val93.i = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %.val93.i, i64 %i.by ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !57 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !66
  %i.ci = icmp eq ptr %i.cf, %i.ch
  br i1 %i.ci, label %bb.s, label %watch_klause.exit.i

bb.s:                                             ; preds = %bb.r
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !56 ; 3 uses
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.cf to i64
  %i.cm = sub i64 %i.cl, %i.ck                    ; 2 uses
  %.not.i.i = icmp eq ptr %i.cf, %i.cj
  %i.cn = ashr exact i64 %i.cm, 1
  %i.co = select i1 %.not.i.i, i64 1, i64 %i.cn   ; 2 uses
  %i.cp = shl i64 %i.co, 2                        ; 2 uses
  %i.cq = tail call ptr @realloc(ptr noundef %i.cj, i64 noundef %i.cp) #25 ; 4 uses
  store ptr %i.cq, ptr %i.cd, align 8, !tbaa !56
  %.not24.i.i = icmp eq ptr %i.cq, null
  br i1 %.not24.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %i.cp)
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.co
  store ptr %i.cr, ptr %i.cg, align 8, !tbaa !66
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cm
  br label %watch_klause.exit.i

watch_klause.exit.i:                              ; preds = %bb.u, %bb.r
  %i.ct = phi ptr [ %i.cs, %bb.u ], [ %i.cf, %bb.r ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store ptr %i.cu, ptr %i.ce, align 8, !tbaa !57
  store i32 %i.ay, ptr %i.ct, align 4, !tbaa !58
  br label %.critedge.i

.critedge.i:                                      ; preds = %watch_klause.exit.i, %bb.o, %bb.n, %.lr.ph133.i
  %.3.i = phi ptr [ %i.az, %.lr.ph133.i ], [ %i.az, %bb.n ], [ %i.az, %bb.o ], [ %.077130.i, %watch_klause.exit.i ] ; 2 uses
  %.173.i = phi i64 [ %.072132.i, %.lr.ph133.i ], [ %.072132.i, %bb.n ], [ %i.bq, %bb.o ], [ %i.bq, %watch_klause.exit.i ] ; 2 uses
  %.not90.i = icmp eq ptr %i.ax, %i.ar
  br i1 %.not90.i, label %.critedge.thread.i, label %.lr.ph133.i

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.p, %bb.q, %bb.m
  %.589.i = phi i32 [ -1, %bb.m ], [ %i.ay, %bb.q ], [ -1, %.critedge.i ], [ %i.ay, %bb.p ]
  %.4.i = phi ptr [ %i.ap, %bb.m ], [ %i.az, %bb.q ], [ %.3.i, %.critedge.i ], [ %i.az, %bb.p ] ; 5 uses
  %.175.i = phi ptr [ %i.ap, %bb.m ], [ %i.ax, %bb.q ], [ %i.ax, %bb.p ], [ %i.ax, %.critedge.i ] ; 5 uses
  %.2.i = phi i64 [ %i.aw, %bb.m ], [ %i.bq, %bb.q ], [ %.173.i, %.critedge.i ], [ %i.bq, %bb.p ]
  %.not92137.i = icmp eq ptr %.175.i, %i.ar
  br i1 %.not92137.i, label %._crit_edge.i, label %.lr.ph140.i.preheader

.lr.ph140.i.preheader:                            ; preds = %.critedge.thread.i
  %.175.i275 = ptrtoaddr ptr %.175.i to i64       ; 2 uses
  %.4.i274 = ptrtoaddr ptr %.4.i to i64
  %i.cv = add i64 %i.as, -4
  %i.cw = sub i64 %i.cv, %.175.i275               ; 2 uses
  %i.cx = lshr i64 %i.cw, 2
  %i.cy = add nuw nsw i64 %i.cx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cw, 28
  %i.cz = sub i64 %.175.i275, %.4.i274
  %diff.check = icmp ugt i64 %i.cz, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph140.i.preheader279, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph140.i.preheader
  %n.vec = and i64 %i.cy, 9223372036854775800     ; 3 uses
  %i.da = shl i64 %n.vec, 2                       ; 2 uses
  %i.db = getelementptr i8, ptr %.175.i, i64 %i.da
  %i.dc = getelementptr i8, ptr %.4.i, i64 %i.da  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dd = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.175.i, i64 %i.dd ; 2 uses
  %next.gep276 = getelementptr i8, ptr %.4.i, i64 %i.dd ; 2 uses
  %i.de = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !58
  %wide.load277 = load <4 x i32>, ptr %i.de, align 4, !tbaa !58
  %i.df = getelementptr i8, ptr %next.gep276, i64 16
  store <4 x i32> %wide.load, ptr %next.gep276, align 4, !tbaa !58
  store <4 x i32> %wide.load277, ptr %i.df, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph140.i.preheader279

.lr.ph140.i.preheader279:                         ; preds = %.lr.ph140.i.preheader, %middle.block
  %.276139.i.ph = phi ptr [ %.175.i, %.lr.ph140.i.preheader ], [ %i.db, %middle.block ]
  %.5138.i.ph = phi ptr [ %.4.i, %.lr.ph140.i.preheader ], [ %i.dc, %middle.block ]
  br label %.lr.ph140.i

.lr.ph140.i:                                      ; preds = %.lr.ph140.i.preheader279, %.lr.ph140.i
  %.276139.i = phi ptr [ %i.dh, %.lr.ph140.i ], [ %.276139.i.ph, %.lr.ph140.i.preheader279 ] ; 2 uses
  %.5138.i = phi ptr [ %i.dj, %.lr.ph140.i ], [ %.5138.i.ph, %.lr.ph140.i.preheader279 ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.276139.i, i64 4 ; 2 uses
  %i.di = load i32, ptr %.276139.i, align 4, !tbaa !58
  %i.dj = getelementptr inbounds nuw i8, ptr %.5138.i, i64 4 ; 2 uses
  store i32 %i.di, ptr %.5138.i, align 4, !tbaa !58
  %.not92.i = icmp eq ptr %i.dh, %i.ar
  br i1 %.not92.i, label %._crit_edge.i, label %.lr.ph140.i, !llvm.loop !186

._crit_edge.i:                                    ; preds = %.lr.ph140.i, %middle.block, %.critedge.thread.i
  %.5.lcssa.i = phi ptr [ %.4.i, %.critedge.thread.i ], [ %i.dc, %middle.block ], [ %i.dj, %.lr.ph140.i ] ; 2 uses
  %i.dk = load ptr, ptr %i.aq, align 8, !tbaa !57
  %i.dl = icmp eq ptr %.5.lcssa.i, %i.dk
  br i1 %i.dl, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i
  store ptr %.5.lcssa.i, ptr %i.aq, align 8, !tbaa !57
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i
  %i.dm = load i64, ptr %i.h, align 8, !tbaa !61
  %i.dn = add i64 %i.dm, %.2.i
  store i64 %i.dn, ptr %i.h, align 8, !tbaa !61
  %.not.i = icmp eq i32 %.589.i, -1               ; 2 uses
  %or.cond.i = and i1 %i.aj, %.not.i
  br i1 %or.cond.i, label %bb.m, label %prime_propagate.exit, !llvm.loop !187

prime_propagate.exit:                             ; preds = %bb.w
  br i1 %.not.i, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %prime_propagate.exit
  %i.do = zext i32 %i.r to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.do
  store i8 0, ptr %i.dp, align 1, !tbaa !40
  %i.dq = xor i32 %i.r, 1
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.dr
  store i8 0, ptr %i.ds, align 1, !tbaa !40
  %i.dt = icmp eq ptr %.sroa.14.1166, %.sroa.23.1165
  br i1 %i.dt, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.du = ptrtoint ptr %.sroa.0.1167 to i64
  %i.dv = ptrtoint ptr %.sroa.14.1166 to i64
  %i.dw = sub i64 %i.dv, %i.du                    ; 2 uses
  %.not123 = icmp eq ptr %.sroa.14.1166, %.sroa.0.1167
  %i.dx = ashr exact i64 %i.dw, 1
  %i.dy = select i1 %.not123, i64 1, i64 %i.dx    ; 2 uses
  %i.dz = shl i64 %i.dy, 2                        ; 2 uses
  %i.ea = tail call ptr @realloc(ptr noundef %.sroa.0.1167, i64 noundef %i.dz) #25 ; 4 uses
  %.not124 = icmp eq ptr %i.ea, null
  br i1 %.not124, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %i.dz)
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.dy
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.dw
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x
  %.sroa.23.2 = phi ptr [ %i.eb, %bb.aa ], [ %.sroa.23.1165, %bb.x ]
  %.sroa.14.2 = phi ptr [ %i.ec, %bb.aa ], [ %.sroa.14.1166, %bb.x ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %i.ea, %bb.aa ], [ %.sroa.0.1167, %bb.x ]
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.14.2, i64 4
  store i32 %i.r, ptr %.sroa.14.2, align 4, !tbaa !58
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %prime_propagate.exit, %bb.l
  %.sroa.23.3 = phi ptr [ %.sroa.23.2, %bb.ab ], [ %.sroa.23.1165, %prime_propagate.exit ], [ %.sroa.23.1165, %bb.l ] ; 2 uses
  %.sroa.14.3 = phi ptr [ %i.ed, %bb.ab ], [ %.sroa.14.1166, %prime_propagate.exit ], [ %.sroa.14.1166, %bb.l ] ; 2 uses
  %.sroa.0.3 = phi ptr [ %.sroa.0.2, %bb.ab ], [ %.sroa.0.1167, %prime_propagate.exit ], [ %.sroa.0.1167, %bb.l ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.0112168, i64 4 ; 2 uses
  %.not120 = icmp eq ptr %i.ee, %i.q
  br i1 %.not120, label %.critedge, label %.lr.ph, !llvm.loop !188

.critedge:                                        ; preds = %bb.ac, %.lr.ph, %bb.i
  %.sroa.23.1.lcssa = phi ptr [ %.sroa.23.0183, %bb.i ], [ %.sroa.23.1165, %.lr.ph ], [ %.sroa.23.3, %bb.ac ]
  %.sroa.14.1.lcssa = phi ptr [ %.sroa.0.0184, %bb.i ], [ %.sroa.14.1166, %.lr.ph ], [ %.sroa.14.3, %bb.ac ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.0184, %bb.i ], [ %.sroa.0.1167, %.lr.ph ], [ %.sroa.0.3, %bb.ac ] ; 4 uses
  %.1 = phi i1 [ %.0114185, %bb.i ], [ true, %.lr.ph ], [ %.0114185, %bb.ac ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv ; 4 uses
  %i.eg = load i64, ptr %i.m, align 8, !tbaa !48  ; 2 uses
  %.not125177 = icmp eq i64 %i.eg, 0
  br i1 %.not125177, label %.preheader, label %.lr.ph179

.lr.ph179:                                        ; preds = %.critedge
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  br label %bb.ad

.preheader:                                       ; preds = %bb.aj, %.critedge
  %.not126180 = icmp eq ptr %.sroa.0.1.lcssa, %.sroa.14.1.lcssa
  br i1 %.not126180, label %.critedge2, label %.lr.ph182

bb.ad:                                            ; preds = %.lr.ph179, %bb.aj
  %.0110178 = phi i64 [ 0, %.lr.ph179 ], [ %i.fc, %bb.aj ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0110178
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !40
  %i.el = icmp sgt i8 %i.ek, 0
  br i1 %i.el, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.em = load ptr, ptr %i.eh, align 8, !tbaa !57 ; 4 uses
  %i.en = load ptr, ptr %i.ei, align 8, !tbaa !66
  %i.eo = icmp eq ptr %i.em, %i.en
  br i1 %i.eo, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.ep = load ptr, ptr %i.ef, align 8, !tbaa !56 ; 3 uses
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.em to i64
  %i.es = sub i64 %i.er, %i.eq                    ; 2 uses
  %.not127 = icmp eq ptr %i.em, %i.ep
  %i.et = ashr exact i64 %i.es, 1
  %i.eu = select i1 %.not127, i64 1, i64 %i.et    ; 2 uses
  %i.ev = shl i64 %i.eu, 2                        ; 2 uses
  %i.ew = tail call ptr @realloc(ptr noundef %i.ep, i64 noundef %i.ev) #25 ; 4 uses
  store ptr %i.ew, ptr %i.ef, align 8, !tbaa !56
  %.not128 = icmp eq ptr %i.ew, null
  br i1 %.not128, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.3, i64 noundef %i.ev)
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.eu
  store ptr %i.ex, ptr %i.ei, align 8, !tbaa !66
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.es
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %i.ez = phi ptr [ %i.ey, %bb.ah ], [ %i.em, %bb.ae ] ; 2 uses
  %i.fa = trunc i64 %.0110178 to i32
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  store ptr %i.fb, ptr %i.eh, align 8, !tbaa !57
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !58
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ad, %bb.ai
  %i.fc = add nuw i64 %.0110178, 1                ; 2 uses
  %.not125 = icmp eq i64 %i.fc, %i.eg
  br i1 %.not125, label %.preheader, label %bb.ad, !llvm.loop !189

.lr.ph182:                                        ; preds = %.preheader, %.lr.ph182
  %.0109181 = phi ptr [ %i.fj, %.lr.ph182 ], [ %.sroa.0.1.lcssa, %.preheader ] ; 2 uses
  %i.fd = load i32, ptr %.0109181, align 4, !tbaa !58 ; 2 uses
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.fe
  store i8 1, ptr %i.ff, align 1, !tbaa !40
  %i.fg = xor i32 %i.fd, 1
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.fh
  store i8 -1, ptr %i.fi, align 1, !tbaa !40
  %i.fj = getelementptr inbounds nuw i8, ptr %.0109181, i64 4 ; 2 uses
  %.not126 = icmp eq ptr %i.fj, %.sroa.14.1.lcssa
  br i1 %.not126, label %.critedge2, label %.lr.ph182, !llvm.loop !190

.critedge2:                                       ; preds = %.lr.ph182, %.preheader
  br i1 %i.o, label %bb.h, label %bb.i, !llvm.loop !191

bb.ak:                                            ; preds = %bb.h
  %i.fk = load ptr, ptr %i.l, align 8, !tbaa !56
  store ptr %i.fk, ptr %i.n, align 8, !tbaa !57
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !56
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %i.fm, ptr %i.fn, align 8, !tbaa !57
  br label %bb.am

bb.al:                                            ; preds = %bb.h
  store i32 11, ptr %0, align 8, !tbaa !30
  %i.fo = load ptr, ptr %i.n, align 8, !tbaa !57
  %i.fp = load ptr, ptr %i.l, align 8, !tbaa !56
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !57
  %i.fw = load ptr, ptr %i.ft, align 8, !tbaa !56
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = icmp ugt i64 %i.fs, %i.fz
  %i.gb = zext i1 %i.ga to i32
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0 = phi i32 [ -1, %bb.ak ], [ %i.gb, %bb.al ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -2, 2) i32 @cadical_kitten_flip_and_implicant_for_signed_literal(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.cadical_kitten_flip_and_implicant_for_signed_literal, ptr noundef nonnull @.str)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !30
  switch i32 %i.a, label %bb.f [
    i32 10, label %bb.g
    i32 21, label %bb.e
    i32 11, label %status_to_string.exit
    i32 20, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %status_to_string.exit

bb.e:                                             ; preds = %bb.c
  br label %status_to_string.exit

bb.f:                                             ; preds = %bb.c
  br label %status_to_string.exit

status_to_string.exit:                            ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi ptr [ @.str.12, %bb.f ], [ @.str.11, %bb.e ], [ @.str.10, %bb.d ], [ @.str.9, %bb.c ]
  tail call void (ptr, ptr, ...) @invalid_api_usage(ptr noundef nonnull @__func__.cadical_kitten_flip_and_implicant_for_signed_literal, ptr noundef nonnull @.str.1, ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.8)
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.b = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %.lobit.i = lshr i32 %1, 31                     ; 2 uses
  %i.c = shl nuw i32 %i.b, 1
  %i.d = add i32 %i.c, -2                         ; 2 uses
  %i.e = or disjoint i32 %i.d, %.lobit.i
  %i.f = tail call zeroext i1 @cadical_kitten_flip_literal(ptr noundef nonnull %0, i32 noundef %i.e)
  br i1 %i.f, label %bb.h, label %compute_prime_implicant_for.exit

bb.h:                                             ; preds = %bb.g
  %i.g = lshr exact i32 %i.d, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82
  %i.j = zext nneg i32 %i.g to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !58
  %i.m = shl i32 %i.l, 1
  %i.n = or disjoint i32 %.lobit.i, -2
  %i.o = add i32 %i.m, %i.n                       ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !83   ; 7 uses
  %i.r = and i32 %i.o, -2
  %i.s = zext i32 %i.o to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s ; 2 uses
  %i.u = xor i32 %i.o, 1                          ; 2 uses
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 608 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.ad = getelementptr i8, ptr %0, i64 336       ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.j

bb.i:                                             ; preds = %.critedge2.i
  tail call void @free(ptr noundef %.sroa.0.3.lcssa.i) #23
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  br i1 %.1.i, label %bb.bf, label %bb.bg

bb.j:                                             ; preds = %.critedge2.i, %bb.h
  %i.ag = phi i1 [ true, %bb.h ], [ false, %.critedge2.i ]
  %indvars.iv.i = phi i64 [ 0, %bb.h ], [ 1, %.critedge2.i ] ; 3 uses
  %.0170239.i = phi i1 [ false, %bb.h ], [ %.1.i, %.critedge2.i ] ; 2 uses
  %.sroa.0.0238.i = phi ptr [ null, %bb.h ], [ %.sroa.0.3.lcssa.i, %.critedge2.i ] ; 5 uses
  %.sroa.35.0237.i = phi ptr [ null, %bb.h ], [ %.sroa.35.3.lcssa.i, %.critedge2.i ] ; 3 uses
  %i.ah = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ai = xor i32 %i.o, %i.ah                     ; 9 uses
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !83  ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.j
  %.0143.i = phi i32 [ %i.r, %bb.j ], [ %i.al, %.backedge.backedge ]
  %i.ak = phi i1 [ true, %bb.j ], [ false, %.backedge.backedge ] ; 2 uses
  %.091142.i = phi i32 [ 0, %bb.j ], [ 1, %.backedge.backedge ]
  %i.al = xor i32 %.091142.i, %.0143.i            ; 3 uses
  %i.am = icmp eq i32 %i.al, %i.ai
  br i1 %i.am, label %.thread, label %bb.k

bb.k:                                             ; preds = %.backedge
  %i.an = xor i32 %i.al, 1                        ; 4 uses
  %i.ao = load ptr, ptr %i.ac, align 8, !tbaa !55
  %i.ap = zext i32 %i.an to i64
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !56 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !57 ; 5 uses
  %i.au = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr i64 %i.aw, 7
  %i.ay = add nsw i64 %i.ax, 1                    ; 2 uses
  %.not100121.i = icmp eq ptr %i.ar, %i.at
  br i1 %.not100121.i, label %.thread108.i, label %.lr.ph126.i

.lr.ph126.i:                                      ; preds = %bb.k
  %i.az = icmp eq i32 %i.an, %i.ai
  br label %bb.l

bb.l:                                             ; preds = %bb.t, %.lr.ph126.i
  %.080124.i = phi i64 [ %i.ay, %.lr.ph126.i ], [ %.181.i, %bb.t ] ; 2 uses
  %.082123.i = phi ptr [ %i.ar, %.lr.ph126.i ], [ %i.ba, %bb.t ] ; 2 uses
  %.085122.i = phi ptr [ %i.ar, %.lr.ph126.i ], [ %.3.i, %bb.t ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.082123.i, i64 4 ; 3 uses
  %i.bb = load i32, ptr %.082123.i, align 4, !tbaa !58 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.085122.i, i64 4 ; 4 uses
  store i32 %i.bb, ptr %.085122.i, align 4, !tbaa !58
  %.val.i = load ptr, ptr %i.ad, align 8, !tbaa !60
  %i.bd = zext i32 %i.bb to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.val.i, i64 %i.bd ; 5 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %.val104.i = load i32, ptr %i.bf, align 4, !tbaa !92
  %i.bg = and i32 %.val104.i, 2
  %.not113.i = icmp eq i32 %i.bg, 0
  br i1 %.not113.i, label %bb.m, label %bb.t, !llvm.loop !192

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 12 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !58
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !58
  %i.bl = xor i32 %i.bi, %i.bk
  %i.bm = xor i32 %i.bl, %i.an                    ; 3 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !40
  %i.bq = add i64 %.080124.i, 1                   ; 4 uses
  %i.br = icmp sgt i8 %i.bp, 0
  br i1 %i.br, label %bb.t, label %bb.n, !llvm.loop !192

bb.n:                                             ; preds = %bb.m
  %i.bs = icmp eq i32 %i.bm, %i.ai
  %i.bt = or i1 %i.az, %i.bs                      ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !69 ; 2 uses
  %i.bw = zext i32 %i.bv to i64
  %.idx.i = shl nuw nsw i64 %i.bw, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx.i
  %.not101.not118.i = icmp eq i32 %i.bv, 2
  br i1 %.not101.not118.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  br label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %bb.o, %.lr.ph.preheader.i
  %.074120.i = phi ptr [ %i.cg, %bb.o ], [ %i.by, %.lr.ph.preheader.i ] ; 3 uses
  %.078119.i = phi i1 [ %i.cf, %bb.o ], [ %i.bt, %.lr.ph.preheader.i ]
  %i.bz = load i32, ptr %.074120.i, align 4, !tbaa !58 ; 3 uses
  %i.ca = zext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !40
end_hunk_0
