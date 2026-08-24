Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sharp?download=true
inline.NumInlined: 3
begin_hunk_0_@set_or
; Function Attrs: nounwind uwtable
define dso_local ptr @make_disjoint(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @cube, align 8, !tbaa !8
  %i.b = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 0, i32 noundef %i.a) #5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17
  %i.g = load i32, ptr %0, align 8, !tbaa !18
  %i.h = mul nsw i32 %i.g, %i.f                   ; 2 uses
  %i.i = sext i32 %i.h to i64
  %.idx = shl nuw nsw i64 %i.i, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.k = icmp sgt i32 %i.h, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi ptr [ %i.p, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %.01314 = phi ptr [ %i.m, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.l = tail call ptr @cb_dsharp(ptr noundef %.015, ptr noundef %.01314)
  %i.m = tail call ptr (ptr, ptr, ...) @sf_append(ptr noundef %.01314, ptr noundef %i.l) #5 ; 2 uses
  %i.n = load i32, ptr %0, align 8, !tbaa !18
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %.015, i64 %i.o ; 2 uses
  %i.q = icmp ult ptr %i.p, %i.j
  br i1 %i.q, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.013.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.m, %.lr.ph ]
  ret ptr %.013.lcssa
}

declare ptr @sf_append(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @cv_dsharp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @cube, align 8, !tbaa !8
  %i.b = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 0, i32 noundef %i.a) #5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !17
  %i.g = load i32, ptr %0, align 8, !tbaa !18
  %i.h = mul nsw i32 %i.g, %i.f                   ; 2 uses
  %i.i = sext i32 %i.h to i64
  %.idx = shl nuw nsw i64 %i.i, 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.k = icmp sgt i32 %i.h, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.014 = phi ptr [ %i.m, %.lr.ph ], [ %i.b, %bb.a ]
  %.01213 = phi ptr [ %i.p, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.l = tail call ptr @cb_dsharp(ptr noundef %.01213, ptr noundef %1)
  %i.m = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef %.014, ptr noundef %i.l) #5 ; 2 uses
  %i.n = load i32, ptr %0, align 8, !tbaa !18
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %.01213, i64 %i.o ; 2 uses
  %i.q = icmp ult ptr %i.p, %i.j
  br i1 %i.q, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.m, %.lr.ph ]
  ret ptr %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cb1_dsharp(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17
  %i.c = load i32, ptr @cube, align 8, !tbaa !8
  %i.d = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.b, i32 noundef %i.c) #5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = load i32, ptr %i.a, align 4, !tbaa !17
  %i.h = load i32, ptr %0, align 8, !tbaa !18
  %i.i = mul nsw i32 %i.h, %i.g                   ; 2 uses
  %i.j = sext i32 %i.i to i64
  %.idx = shl nuw nsw i64 %i.j, 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.015 = phi ptr [ %i.n, %.lr.ph ], [ %i.d, %bb.a ]
  %.01314 = phi ptr [ %i.q, %.lr.ph ], [ %i.f, %bb.a ] ; 2 uses
  %i.m = tail call ptr @dsharp(ptr noundef %.01314, ptr noundef %1)
  %i.n = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef %.015, ptr noundef %i.m) #5 ; 2 uses
  %i.o = load i32, ptr %0, align 8, !tbaa !18
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %.01314, i64 %i.p ; 2 uses
  %i.r = icmp ult ptr %i.q, %i.k
  br i1 %i.r, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.n, %.lr.ph ]
  ret ptr %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cb_dsharp(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = load i32, ptr @cube, align 8, !tbaa !8   ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr (i32, i32, ...) @sf_new(i32 noundef 1, i32 noundef %i.d) #5
  %i.f = tail call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %i.e, ptr noundef %0) #5
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.b, i32 noundef %i.d) #5 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14
  %i.j = load i32, ptr %i.g, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !17   ; 2 uses
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !17
  %i.n = mul nsw i32 %i.l, %i.j
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.o
  %i.q = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.p, ptr noundef %0) #5 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !14   ; 2 uses
  %i.t = load i32, ptr %i.a, align 4, !tbaa !17
  %i.u = load i32, ptr %1, align 8, !tbaa !18
  %i.v = mul nsw i32 %i.u, %i.t                   ; 2 uses
  %i.w = sext i32 %i.v to i64
  %.idx = shl nsw i64 %i.w, 2
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 %.idx
  %i.y = icmp sgt i32 %i.v, 0
  br i1 %i.y, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c, %cb1_dsharp.exit
  %.023 = phi ptr [ %.0.lcssa.i, %cb1_dsharp.exit ], [ %i.g, %bb.c ] ; 5 uses
  %.02022 = phi ptr [ %i.at, %cb1_dsharp.exit ], [ %i.s, %bb.c ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.023, i64 12 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !17
  %i.ab = load i32, ptr @cube, align 8, !tbaa !8
  %i.ac = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.aa, i32 noundef %i.ab) #5 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.023, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !14 ; 2 uses
  %i.af = load i32, ptr %i.z, align 4, !tbaa !17
  %i.ag = load i32, ptr %.023, align 8, !tbaa !18
  %i.ah = mul nsw i32 %i.ag, %i.af                ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %.idx.i = shl nuw nsw i64 %i.ai, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx.i
  %i.ak = icmp sgt i32 %i.ah, 0
  br i1 %i.ak, label %.lr.ph.i, label %cb1_dsharp.exit

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.015.i = phi ptr [ %i.am, %.lr.ph.i ], [ %i.ac, %.lr.ph ]
  %.01314.i = phi ptr [ %i.ap, %.lr.ph.i ], [ %i.ae, %.lr.ph ] ; 2 uses
  %i.al = tail call ptr @dsharp(ptr noundef %.01314.i, ptr noundef %.02022)
  %i.am = tail call ptr (ptr, ptr, ...) @sf_union(ptr noundef %.015.i, ptr noundef %i.al) #5 ; 2 uses
  %i.an = load i32, ptr %.023, align 8, !tbaa !18
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %.01314.i, i64 %i.ao ; 2 uses
  %i.aq = icmp ult ptr %i.ap, %i.aj
  br i1 %i.aq, label %.lr.ph.i, label %cb1_dsharp.exit

cb1_dsharp.exit:                                  ; preds = %.lr.ph.i, %.lr.ph
  %.0.lcssa.i = phi ptr [ %i.ac, %.lr.ph ], [ %i.am, %.lr.ph.i ] ; 2 uses
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %.023) #5
  %i.ar = load i32, ptr %1, align 8, !tbaa !18
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %.02022, i64 %i.as ; 2 uses
  %i.au = icmp ult ptr %i.at, %i.x
  br i1 %i.au, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %cb1_dsharp.exit, %bb.c, %bb.b
  %.1 = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ], [ %.0.lcssa.i, %cb1_dsharp.exit ]
  ret ptr %.1
}

declare ptr @set_copy(...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @dsharp(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !21
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 17 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 3 uses
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !23
  %i.f = load i32, ptr @cube, align 8, !tbaa !8
  %i.g = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.e, i32 noundef %i.f) #5 ; 6 uses
  %i.h = tail call i32 (ptr, ptr, ...) @cdist0(ptr noundef %0, ptr noundef %1) #5
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr @cube, align 8, !tbaa !8   ; 3 uses
  %i.j = icmp slt i32 %i.i, 33
  %i.k = add nsw i32 %i.i, -1
  %i.l = lshr i32 %i.k, 3
  %i.m = and i32 %i.l, 536870908
  %i.n = add nuw nsw i32 %i.m, 8
  %narrow = select i1 %i.j, i32 8, i32 %i.n
  %i.o = zext nneg i32 %narrow to i64
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #6
  %i.q = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.p, i32 noundef %i.i) #5
  %i.r = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.q, ptr noundef %0, ptr noundef %1) #5 ; 4 uses
  %i.s = load i32, ptr @cube, align 8, !tbaa !8   ; 3 uses
  %i.t = icmp slt i32 %i.s, 33
  %i.u = add nsw i32 %i.s, -1
  %i.v = lshr i32 %i.u, 3
  %i.w = and i32 %i.v, 536870908
  %i.x = add nuw nsw i32 %i.w, 8
  %narrow86 = select i1 %i.t, i32 8, i32 %i.x
  %i.y = zext nneg i32 %narrow86 to i64
  %i.z = tail call noalias ptr @malloc(i64 noundef %i.y) #6
  %i.aa = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.z, i32 noundef %i.s) #5
  %i.ab = tail call ptr (ptr, ptr, ptr, ...) @set_and(ptr noundef %i.aa, ptr noundef %0, ptr noundef %1) #5 ; 6 uses
  %i.ac = load i32, ptr @cube, align 8, !tbaa !8  ; 3 uses
  %i.ad = icmp slt i32 %i.ac, 33
  %i.ae = add nsw i32 %i.ac, -1
  %i.af = lshr i32 %i.ae, 3
  %i.ag = and i32 %i.af, 536870908
  %i.ah = add nuw nsw i32 %i.ag, 8
  %narrow87 = select i1 %i.ad, i32 8, i32 %i.ah
  %i.ai = zext nneg i32 %narrow87 to i64
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ai) #6
  %i.ak = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.aj, i32 noundef %i.ac) #5 ; 9 uses
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !23
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.an = ptrtoaddr ptr %i.ak to i64
  %i.ao = ptrtoaddr ptr %i.ab to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 2 uses
  %scevgep107 = getelementptr i8, ptr %i.c, i64 4
  %i.ar = sub i64 %i.an, %i.d                     ; 2 uses
  %scevgep134 = getelementptr i8, ptr %i.c, i64 4
  %i.as = sub i64 %i.d, %i.ao
  %diff.check154 = icmp ugt i64 %i.as, -32
  %i.at = add i64 %i.ar, -1
  %diff.check155 = icmp ult i64 %i.at, 31
  %conflict.rdx156 = or i1 %diff.check154, %diff.check155
  %i.au = sub i64 %i.d, %i.a
  %diff.check = icmp ugt i64 %i.au, -32
  %i.av = add i64 %i.ar, -1
  %diff.check113 = icmp ult i64 %i.av, 31
  %conflict.rdx = or i1 %diff.check, %diff.check113
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv99 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next100, %.loopexit ] ; 4 uses
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !24
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv99
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !22
  %i.az = tail call i32 (ptr, ptr, ...) @setp_disjoint(ptr noundef %i.r, ptr noundef %i.ay) #5
  %.not85 = icmp eq i32 %i.az, 0
  br i1 %.not85, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.ba = load ptr, ptr %i.ap, align 8, !tbaa !14 ; 5 uses
  %i.bb = load i32, ptr %i.g, align 8, !tbaa !18
  %i.bc = load i32, ptr %i.aq, align 4, !tbaa !17 ; 2 uses
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.aq, align 4, !tbaa !17
  %i.be = mul nsw i32 %i.bc, %i.bb
  %i.bf = sext i32 %i.be to i64                   ; 5 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.bf ; 7 uses
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !24
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv99
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !22
  %i.bk = tail call ptr (ptr, ptr, ptr, ...) @set_and(ptr noundef %i.bg, ptr noundef %i.r, ptr noundef %i.bj) #5 ; 0 uses
  %i.bl = load i32, ptr %i.ab, align 4, !tbaa !4  ; 2 uses
  %i.bm = and i32 %i.bl, 1023
  %i.bn = load i32, ptr %i.c, align 4, !tbaa !4
  %i.bo = and i32 %i.bn, -1024
  %i.bp = or disjoint i32 %i.bo, %i.bm
  store i32 %i.bp, ptr %i.c, align 4, !tbaa !4
  %i.bq = and i32 %i.bl, 1023                     ; 2 uses
  %i.br = zext nneg i32 %i.bq to i64              ; 4 uses
  %i.bs = icmp ne i32 %i.bq, 0
  %.neg = sext i1 %i.bs to i64
  %i.bt = add nuw nsw i64 %i.br, 1
  %i.bu = add nsw i64 %i.bt, %.neg                ; 3 uses
  %min.iters.check158 = icmp ult i64 %i.bu, 8
  %brmerge = select i1 %min.iters.check158, i1 true, i1 %conflict.rdx156
  br i1 %brmerge, label %scalar.ph157.preheader, label %vector.ph159

vector.ph159:                                     ; preds = %bb.d
  %n.vec160 = and i64 %i.bu, -8                   ; 3 uses
  %i.bv = sub nsw i64 %i.br, %n.vec160
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph159
  %index162 = phi i64 [ 0, %vector.ph159 ], [ %index.next167, %vector.body161 ] ; 2 uses
  %i.bw = sub i64 %i.br, %index162                ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 -12
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 -28
  %wide.load163 = load <4 x i32>, ptr %i.by, align 4, !tbaa !4
  %wide.load164 = load <4 x i32>, ptr %i.bz, align 4, !tbaa !4
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.bw ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -12
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -28
  %wide.load165 = load <4 x i32>, ptr %i.cb, align 4, !tbaa !4
  %wide.load166 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !4
  %i.cd = and <4 x i32> %wide.load165, %wide.load163
  %i.ce = and <4 x i32> %wide.load166, %wide.load164
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bw ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -12
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 -28
  store <4 x i32> %i.cd, ptr %i.cg, align 4, !tbaa !4
  store <4 x i32> %i.ce, ptr %i.ch, align 4, !tbaa !4
  %index.next167 = add nuw i64 %index162, 8       ; 2 uses
  %i.ci = icmp eq i64 %index.next167, %n.vec160
  br i1 %i.ci, label %middle.block168, label %vector.body161, !llvm.loop !27

middle.block168:                                  ; preds = %vector.body161
  %cmp.n169 = icmp eq i64 %i.bu, %n.vec160
  br i1 %cmp.n169, label %.loopexit173, label %scalar.ph157.preheader

scalar.ph157.preheader:                           ; preds = %bb.d, %middle.block168
  %indvars.iv.ph = phi i64 [ %i.bv, %middle.block168 ], [ %i.br, %bb.d ]
  br label %scalar.ph157

scalar.ph157:                                     ; preds = %scalar.ph157.preheader, %scalar.ph157
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph157 ], [ %indvars.iv.ph, %scalar.ph157.preheader ] ; 5 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !4
  %i.cn = and i32 %i.cm, %i.ck
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.cp = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.cp, label %scalar.ph157, label %.loopexit173, !llvm.loop !30

.loopexit173:                                     ; preds = %scalar.ph157, %middle.block168
  %i.cq = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.cr = and i32 %i.cq, 1023                     ; 3 uses
  %i.cs = zext nneg i32 %i.cr to i64              ; 7 uses
  %i.ct = icmp ne i32 %i.cr, 0
  %.neg174 = sext i1 %i.ct to i64
  %i.cu = add nuw nsw i64 %i.cs, 1
  %i.cv = add nsw i64 %i.cu, %.neg174             ; 3 uses
  %min.iters.check140 = icmp ult i64 %i.cv, 12
  br i1 %min.iters.check140, label %scalar.ph139.preheader, label %vector.memcheck128

vector.memcheck128:                               ; preds = %.loopexit173
  %i.cw = icmp ne i32 %i.cr, 0                    ; 2 uses
  %umin129 = zext i1 %i.cw to i64
  %i.cx = add nsw i64 %umin129, %i.bf
  %i.cy = shl nsw i64 %i.cx, 2
  %scevgep130 = getelementptr i8, ptr %i.ba, i64 %i.cy
  %scevgep131 = getelementptr i8, ptr %i.ba, i64 4
  %i.cz = shl nuw nsw i64 %i.cs, 2
  %i.da = add nsw i64 %i.bf, %i.cs
  %i.db = shl nsw i64 %i.da, 2
  %scevgep132 = getelementptr i8, ptr %scevgep131, i64 %i.db
  %i.dc = select i1 %i.cw, i64 4, i64 0
  %scevgep133 = getelementptr i8, ptr %i.c, i64 %i.dc
  %scevgep135 = getelementptr i8, ptr %scevgep134, i64 %i.cz
  %bound0136 = icmp ult ptr %scevgep130, %scevgep135
  %bound1137 = icmp ult ptr %scevgep133, %scevgep132
  %found.conflict138 = and i1 %bound0136, %bound1137
  br i1 %found.conflict138, label %scalar.ph139.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck128
  %n.vec142 = and i64 %i.cv, -8                   ; 3 uses
  %i.dd = sub nsw i64 %i.cs, %n.vec142
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body143 ] ; 2 uses
  %i.de = sub i64 %i.cs, %index144                ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.de ; 2 uses
  %i.dg = getelementptr inbounds i8, ptr %i.df, i64 -12 ; 2 uses
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 -28 ; 2 uses
  %wide.load145 = load <4 x i32>, ptr %i.dg, align 4, !tbaa !4, !alias.scope !31, !noalias !34
  %wide.load146 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !4, !alias.scope !31, !noalias !34
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.de ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -12
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 -28
  %wide.load147 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !4, !alias.scope !34
  %wide.load148 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !4, !alias.scope !34
  %i.dl = or <4 x i32> %wide.load147, %wide.load145
  %i.dm = or <4 x i32> %wide.load148, %wide.load146
  store <4 x i32> %i.dl, ptr %i.dg, align 4, !tbaa !4, !alias.scope !31, !noalias !34
  store <4 x i32> %i.dm, ptr %i.dh, align 4, !tbaa !4, !alias.scope !31, !noalias !34
  %index.next149 = add nuw i64 %index144, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next149, %n.vec142
  br i1 %i.dn, label %middle.block150, label %vector.body143, !llvm.loop !36

middle.block150:                                  ; preds = %vector.body143
  %cmp.n151 = icmp eq i64 %i.cv, %n.vec142
  br i1 %cmp.n151, label %.loopexit172, label %scalar.ph139.preheader

scalar.ph139.preheader:                           ; preds = %vector.memcheck128, %.loopexit173, %middle.block150
  %indvars.iv90.ph = phi i64 [ %i.cs, %vector.memcheck128 ], [ %i.cs, %.loopexit173 ], [ %i.dd, %middle.block150 ]
  br label %scalar.ph139

scalar.ph139:                                     ; preds = %scalar.ph139.preheader, %scalar.ph139
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %scalar.ph139 ], [ %indvars.iv90.ph, %scalar.ph139.preheader ] ; 4 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv90 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !4
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv90
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !4
  %i.ds = or i32 %i.dr, %i.dp
  store i32 %i.ds, ptr %i.do, align 4, !tbaa !4
  %indvars.iv.next91 = add nsw i64 %indvars.iv90, -1
  %i.dt = icmp samesign ugt i64 %indvars.iv90, 1
  br i1 %i.dt, label %scalar.ph139, label %.loopexit172, !llvm.loop !37

.loopexit172:                                     ; preds = %scalar.ph139, %middle.block150
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !24
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv99
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !22
  %i.dx = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ak, ptr noundef %i.dw) #5 ; 0 uses
  %i.dy = load i32, ptr %0, align 4, !tbaa !4     ; 2 uses
  %i.dz = and i32 %i.dy, 1023
  %i.ea = load i32, ptr %i.c, align 4, !tbaa !4
  %i.eb = and i32 %i.ea, -1024
  %i.ec = or disjoint i32 %i.eb, %i.dz
  store i32 %i.ec, ptr %i.c, align 4, !tbaa !4
  %i.ed = and i32 %i.dy, 1023                     ; 2 uses
end_hunk_0
