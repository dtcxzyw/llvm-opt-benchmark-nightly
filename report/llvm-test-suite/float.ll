Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/float?download=true
inline.NumInlined: 10
inline.NumDeleted: 2
begin_hunk_0_@F_floatmul:bb.a
  %index.next102 = add nuw i64 %index94, 8        ; 2 uses
  %i.bd = icmp eq i64 %index.next102, %n.vec92
  br i1 %i.bd, label %middle.block103, label %vector.body93, !llvm.loop !39

middle.block103:                                  ; preds = %vector.body93
  %bin.rdx104 = add <4 x i32> %i.bc, %i.bb
  %i.be = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx104) ; 2 uses
  %cmp.n105 = icmp eq i64 %i.ad, %n.vec92
  br i1 %cmp.n105, label %._crit_edge, label %.lr.ph65.preheader109

.lr.ph65.preheader109:                            ; preds = %.lr.ph65.preheader, %middle.block103
  %.03664.ph = phi ptr [ %.03661, %.lr.ph65.preheader ], [ %i.at, %middle.block103 ]
  %.03963.ph = phi i32 [ 0, %.lr.ph65.preheader ], [ %i.be, %middle.block103 ]
  br label %.lr.ph65

.lr.ph:                                           ; preds = %.lr.ph.preheader113, %.lr.ph
  %.03760 = phi ptr [ %.037, %.lr.ph ], [ %.03760.ph, %.lr.ph.preheader113 ] ; 2 uses
  %.04059 = phi i32 [ %i.bi, %.lr.ph ], [ %.04059.ph, %.lr.ph.preheader113 ]
  %i.bf = load i8, ptr %.03760, align 1, !tbaa !10
  %i.bg = sext i8 %i.bf to i32
  %i.bh = add i32 %.04059, -48
  %i.bi = add i32 %i.bh, %i.bg                    ; 2 uses
  %.037 = getelementptr i8, ptr %.03760, i64 -1   ; 2 uses
  %.not44 = icmp ult ptr %.037, @F_floatmul.man1
  br i1 %.not44, label %.preheader55, label %.lr.ph, !llvm.loop !40

.lr.ph65:                                         ; preds = %.lr.ph65.preheader109, %.lr.ph65
  %.03664 = phi ptr [ %.036, %.lr.ph65 ], [ %.03664.ph, %.lr.ph65.preheader109 ] ; 2 uses
  %.03963 = phi i32 [ %i.bm, %.lr.ph65 ], [ %.03963.ph, %.lr.ph65.preheader109 ]
  %i.bj = load i8, ptr %.03664, align 1, !tbaa !10
  %i.bk = sext i8 %i.bj to i32
  %i.bl = add i32 %.03963, -48
  %i.bm = add i32 %i.bl, %i.bk                    ; 2 uses
  %.036 = getelementptr i8, ptr %.03664, i64 -1   ; 2 uses
  %.not45 = icmp ult ptr %.036, @F_floatmul.man2
  br i1 %.not45, label %._crit_edge, label %.lr.ph65, !llvm.loop !41

._crit_edge:                                      ; preds = %.lr.ph65, %middle.block103, %.preheader55
  %.039.lcssa = phi i32 [ 0, %.preheader55 ], [ %i.be, %middle.block103 ], [ %i.bm, %.lr.ph65 ]
  %i.bn = icmp sgt i32 %.040.lcssa, %.039.lcssa   ; 2 uses
  %F_floatmul.man1.F_floatmul.man2 = select i1 %i.bn, ptr @F_floatmul.man1, ptr @F_floatmul.man2 ; 8 uses
  %F_floatmul.man2.F_floatmul.man1 = select i1 %i.bn, ptr @F_floatmul.man2, ptr @F_floatmul.man1 ; 5 uses
  tail call void (ptr, ...) @S_trimzeros(ptr noundef nonnull %F_floatmul.man1.F_floatmul.man2) #13
  tail call void (ptr, ...) @S_trimzeros(ptr noundef nonnull %F_floatmul.man2.F_floatmul.man1) #13
  %i.bo = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %F_floatmul.man1.F_floatmul.man2) #14
  %i.bp = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %F_floatmul.man2.F_floatmul.man1) #14 ; 2 uses
  %i.bq = add i64 %i.bp, %i.bo
  %i.br = trunc i64 %i.bq to i32
  %i.bs = getelementptr i8, ptr %F_floatmul.man2.F_floatmul.man1, i64 %i.bp
  store i16 48, ptr @F_floatmul.prod, align 16
  %.04169 = getelementptr i8, ptr %i.bs, i64 -1   ; 2 uses
  %.not4670 = icmp ult ptr %.04169, %F_floatmul.man2.F_floatmul.man1
  br i1 %.not4670, label %._crit_edge72, label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.lr.ph.i49
  %.04171 = phi ptr [ %.041, %.lr.ph.i49 ], [ %.04169, %._crit_edge ] ; 2 uses
  %i.bt = load i8, ptr %.04171, align 1, !tbaa !10 ; 2 uses
  %i.bu = icmp sgt i8 %i.bt, 48
  br i1 %i.bu, label %.lr.ph68, label %.lr.ph.i49

.lr.ph68:                                         ; preds = %.preheader
  %i.bv = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %F_floatmul.man1.F_floatmul.man2) #14
  %i.bw = getelementptr i8, ptr %F_floatmul.man1.F_floatmul.man2, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -1     ; 2 uses
  %i.by = icmp uge ptr %i.bx, %F_floatmul.man1.F_floatmul.man2 ; 2 uses
  %narrow = add nsw i8 %i.bt, -49
  %i.bz = sext i8 %narrow to i32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph68, %_F_stradd.exit
  %.03867 = phi i32 [ 0, %.lr.ph68 ], [ %i.db, %_F_stradd.exit ] ; 2 uses
  %i.ca = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmul.prod) #14
  %i.cb = getelementptr i8, ptr @F_floatmul.prod, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 -1     ; 2 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_F_stradd.result, i64 199), align 1, !tbaa !10
  %i.cd = icmp uge ptr %i.cc, @F_floatmul.prod    ; 2 uses
  %i.ce = select i1 %i.cd, i1 true, i1 %i.by
  br i1 %i.ce, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.i
  %i.cf = phi i1 [ %i.cx, %bb.i ], [ %i.by, %bb.e ]
  %i.cg = phi i1 [ %i.cw, %bb.i ], [ %i.cd, %bb.e ]
  %.03043.i = phi i32 [ %.1.i, %bb.i ], [ 0, %bb.e ]
  %.03142.i = phi ptr [ %i.cv, %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_F_stradd.result, i64 198), %bb.e ] ; 2 uses
  %.03341.i = phi ptr [ %.134.i, %bb.i ], [ %i.bx, %bb.e ] ; 3 uses
  %.03540.i = phi ptr [ %.136.i, %bb.i ], [ %i.cc, %bb.e ] ; 3 uses
  br i1 %i.cg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.ch = load i8, ptr %.03540.i, align 1, !tbaa !10
  %i.ci = sext i8 %i.ch to i32
  %i.cj = add nsw i32 %i.ci, -48
  %i.ck = getelementptr inbounds i8, ptr %.03540.i, i64 -1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %.136.i = phi ptr [ %i.ck, %bb.f ], [ %.03540.i, %.lr.ph.i ] ; 2 uses
  %.028.i = phi i32 [ %i.cj, %bb.f ], [ 0, %.lr.ph.i ]
  br i1 %i.cf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cl = load i8, ptr %.03341.i, align 1, !tbaa !10
  %i.cm = sext i8 %i.cl to i32
  %i.cn = add nsw i32 %i.cm, -48
  %i.co = getelementptr inbounds i8, ptr %.03341.i, i64 -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.134.i = phi ptr [ %i.co, %bb.h ], [ %.03341.i, %bb.g ] ; 2 uses
  %.0.i = phi i32 [ %i.cn, %bb.h ], [ 0, %bb.g ]
  %i.cp = add nsw i32 %.028.i, %.03043.i
  %i.cq = add nsw i32 %i.cp, %.0.i                ; 3 uses
  %i.cr = icmp sgt i32 %i.cq, 9                   ; 3 uses
  %i.cs = add nsw i32 %i.cq, 246
  %.1.i = zext i1 %i.cr to i32
  %.029.i = select i1 %i.cr, i32 %i.cs, i32 %i.cq
  %i.ct = trunc i32 %.029.i to i8
  %i.cu = add i8 %i.ct, 48
  %i.cv = getelementptr inbounds i8, ptr %.03142.i, i64 -1 ; 4 uses
  store i8 %i.cu, ptr %.03142.i, align 1, !tbaa !10
  %i.cw = icmp uge ptr %.136.i, @F_floatmul.prod  ; 2 uses
  %i.cx = icmp uge ptr %.134.i, %F_floatmul.man1.F_floatmul.man2 ; 2 uses
  %i.cy = select i1 %i.cw, i1 true, i1 %i.cx
  br i1 %i.cy, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.i
  br i1 %i.cr, label %bb.j, label %._crit_edge.thread.i

bb.j:                                             ; preds = %._crit_edge.i
  store i8 49, ptr %i.cv, align 1, !tbaa !10
  br label %_F_stradd.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.e
  %.031.lcssa47.i = phi ptr [ %i.cv, %._crit_edge.i ], [ getelementptr inbounds nuw (i8, ptr @_F_stradd.result, i64 198), %bb.e ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.031.lcssa47.i, i64 1
  br label %_F_stradd.exit

_F_stradd.exit:                                   ; preds = %bb.j, %._crit_edge.thread.i
  %.132.i = phi ptr [ %i.cv, %bb.j ], [ %i.cz, %._crit_edge.thread.i ]
  %i.da = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @F_floatmul.prod, ptr noundef nonnull dereferenceable(1) %.132.i) #13 ; 0 uses
  %i.db = add nuw nsw i32 %.03867, 1
  %exitcond.not = icmp eq i32 %.03867, %i.bz
  br i1 %exitcond.not, label %.lr.ph.i49, label %bb.e, !llvm.loop !42

.lr.ph.i49:                                       ; preds = %_F_stradd.exit, %.preheader
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %F_floatmul.man1.F_floatmul.man2)
  %endptr.i = getelementptr inbounds i8, ptr %F_floatmul.man1.F_floatmul.man2, i64 %strlen.i
  store i16 48, ptr %endptr.i, align 1
  %.041 = getelementptr i8, ptr %.04171, i64 -1   ; 2 uses
  %.not46 = icmp ult ptr %.041, %F_floatmul.man2.F_floatmul.man1
  br i1 %.not46, label %._crit_edge72, label %.preheader, !llvm.loop !43

._crit_edge72:                                    ; preds = %.lr.ph.i49, %._crit_edge
  %i.dc = load ptr, ptr @F_floatmul.result, align 8, !tbaa !23
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !20
  %i.df = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.de, ptr noundef nonnull dereferenceable(1) @F_floatmul.prod) #13 ; 0 uses
  %i.dg = tail call i32 (ptr, ...) @R_getexp(ptr noundef nonnull %0) #13
  %i.dh = tail call i32 (ptr, ...) @R_getexp(ptr noundef nonnull %1) #13
  %i.di = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmul.prod) #14
  %i.dj = trunc i64 %i.di to i32
  %i.dk = sub i32 %i.dg, %i.br
  %i.dl = add i32 %i.dk, %i.dh
  %i.dm = add i32 %i.dl, %i.dj
  %i.dn = load ptr, ptr @F_floatmul.result, align 8, !tbaa !23 ; 4 uses
  store i32 %i.dm, ptr %i.dn, align 8, !tbaa !21
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !19
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !19
  %i.ds = icmp eq i32 %i.dp, %i.dr
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 4 ; 2 uses
  br i1 %i.ds, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge72
  store i32 0, ptr %i.dt, align 4, !tbaa !19
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge72
  store i32 1, ptr %i.dt, align 4, !tbaa !19
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.d
  %.042 = phi ptr [ %i.r, %bb.d ], [ %i.dn, %bb.l ], [ %i.dn, %bb.k ]
  ret ptr %.042
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_F_xor(i32 noundef %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  %i.b = icmp eq i32 %1, 0
  %narrow = xor i1 %i.a, %i.b
  %i.c = zext i1 %narrow to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, -2147483648) i32 @_F_ABSDIFF(i32 noundef %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 @llvm.abs.i32(i32 %0, i1 true) ; 3 uses
  %i.b = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 3 uses
  %2 = icmp samesign ult i32 %i.a, %i.b
  %3 = sub nuw nsw i32 %i.b, %i.a
  %i.c = sub nuw nsw i32 %i.a, %i.b
  %.0 = select i1 %2, i32 %3, i32 %i.c
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @F_floatmagadd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %.b = load i1, ptr @F_floatmagadd.needinit, align 4
  br i1 %.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr (...) @R_makefloat() #13
  store ptr %i.a, ptr @F_floatmagadd.result, align 8, !tbaa !23
  store i1 true, ptr @F_floatmagadd.needinit, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i8 0, ptr @F_floatmagadd.man1, align 16
  store i8 0, ptr @F_floatmagadd.man2, align 16
  %i.b = tail call i32 (ptr, ...) @R_getexp(ptr noundef %0) #13
  %i.c = tail call i32 (ptr, ...) @R_getexp(ptr noundef %1) #13
  %i.d = xor i32 %i.c, %i.b
  %.not = icmp sgt i32 %i.d, -1
  %i.e = tail call i32 (ptr, ...) @R_getexp(ptr noundef %0) #13 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 (ptr, ...) @R_getexp(ptr noundef %1) #13
  %i.g = tail call i32 @llvm.abs.i32(i32 %i.e, i1 true) ; 3 uses
  %i.h = tail call i32 @llvm.abs.i32(i32 %i.f, i1 true) ; 3 uses
  %2 = icmp samesign ult i32 %i.g, %i.h
  %3 = sub nuw nsw i32 %i.h, %i.g
  %i.i = sub nuw nsw i32 %i.g, %i.h
  %.0.i = select i1 %2, i32 %3, i32 %i.i
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = icmp slt i32 %i.e, 0
  %i.k = tail call i32 (ptr, ...) @R_getexp(ptr noundef %0) #13 ; 2 uses
  %i.l = sub nsw i32 0, %i.k
  %i.m = select i1 %i.j, i32 %i.l, i32 %i.k
  %i.n = tail call i32 (ptr, ...) @R_getexp(ptr noundef %1) #13
  %i.o = icmp slt i32 %i.n, 0
  %i.p = tail call i32 (ptr, ...) @R_getexp(ptr noundef %1) #13 ; 2 uses
  %i.q = sub nsw i32 0, %i.p
  %i.r = select i1 %i.o, i32 %i.q, i32 %i.p
  %i.s = add nsw i32 %i.r, %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.036 = phi i32 [ %.0.i, %bb.d ], [ %i.s, %bb.e ] ; 4 uses
  %i.t = icmp sgt i32 %.036, 0                    ; 3 uses
  br i1 %i.t, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.u = tail call i32 (ptr, ...) @R_getexp(ptr noundef %0) #13
  %i.v = tail call i32 (ptr, ...) @R_getexp(ptr noundef %1) #13
  %i.w = icmp slt i32 %i.u, %i.v
  %i.x = zext nneg i32 %.036 to i64               ; 2 uses
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !20
  %i.aa = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #14
  %i.ab = add i64 %i.aa, %i.x
  %i.ac = icmp ugt i64 %i.ab, 199
  br i1 %i.ac, label %.sink.split, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !20
  %i.af = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ae) #14
  %i.ag = add i64 %i.af, %i.x
  %i.ah = icmp ugt i64 %i.ag, 199
  br i1 %i.ah, label %.sink.split, label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.ak = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aj) #14
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !20
  %i.an = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #14
  %. = tail call i64 @llvm.umax.i64(i64 %i.ak, i64 %i.an)
  %i.ao = icmp ugt i64 %., 198
  br i1 %i.ao, label %.sink.split, label %bb.k

.sink.split:                                      ; preds = %bb.j, %bb.i, %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) @Z_err_buf, ptr noundef nonnull align 1 dereferenceable(40) @.str.5, i64 40, i1 false)
  tail call void (ptr, ...) @Z_fatal(ptr noundef nonnull @Z_err_buf) #13
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j, %bb.h, %bb.i
  %i.ap = tail call i32 (ptr, ...) @R_getexp(ptr noundef %0) #13
  %i.aq = tail call i32 (ptr, ...) @R_getexp(ptr noundef %1) #13
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  br i1 %i.t, label %.lr.ph.i, label %addzeros.exit

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.02.i = phi i32 [ %i.as, %.lr.ph.i ], [ %.036, %bb.l ] ; 2 uses
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) @F_floatmagadd.man1)
  %endptr.i = getelementptr inbounds i8, ptr @F_floatmagadd.man1, i64 %strlen.i
  store i16 48, ptr %endptr.i, align 1
  %i.as = add nsw i32 %.02.i, -1
  %i.at = icmp samesign ugt i32 %.02.i, 1
  br i1 %i.at, label %.lr.ph.i, label %addzeros.exit, !llvm.loop !0

bb.m:                                             ; preds = %bb.k
  br i1 %i.t, label %.lr.ph.i43, label %addzeros.exit

.lr.ph.i43:                                       ; preds = %bb.m, %.lr.ph.i43
  %.02.i44 = phi i32 [ %i.au, %.lr.ph.i43 ], [ %.036, %bb.m ] ; 2 uses
  %strlen.i45 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @F_floatmagadd.man2)
  %endptr.i46 = getelementptr inbounds i8, ptr @F_floatmagadd.man2, i64 %strlen.i45
  store i16 48, ptr %endptr.i46, align 1
  %i.au = add nsw i32 %.02.i44, -1
  %i.av = icmp samesign ugt i32 %.02.i44, 1
  br i1 %i.av, label %.lr.ph.i43, label %addzeros.exit, !llvm.loop !0

addzeros.exit:                                    ; preds = %.lr.ph.i43, %.lr.ph.i, %bb.m, %bb.l
  %.sink = phi ptr [ %1, %bb.l ], [ %0, %bb.m ], [ %1, %.lr.ph.i ], [ %0, %.lr.ph.i43 ]
  %i.aw = tail call i32 (ptr, ...) @R_getexp(ptr noundef %.sink) #13
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !20
  %i.az = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @F_floatmagadd.man1, ptr noundef nonnull dereferenceable(1) %i.ay) #13 ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !20
  %i.bc = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @F_floatmagadd.man2, ptr noundef nonnull dereferenceable(1) %i.bb) #13 ; 0 uses
  %i.bd = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmagadd.man1) #14 ; 2 uses
  %i.be = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmagadd.man2) #14 ; 2 uses
  %.42 = tail call i64 @llvm.umax.i64(i64 %i.bd, i64 %i.be)
  %i.bf = getelementptr i8, ptr @F_floatmagadd.man1, i64 %i.bd
  %i.bg = getelementptr i8, ptr %i.bf, i64 -1     ; 2 uses
  %i.bh = getelementptr i8, ptr @F_floatmagadd.man2, i64 %i.be
  %i.bi = getelementptr i8, ptr %i.bh, i64 -1     ; 2 uses
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_F_stradd.result, i64 199), align 1, !tbaa !10
  %i.bj = icmp uge ptr %i.bg, @F_floatmagadd.man1 ; 2 uses
  %i.bk = icmp uge ptr %i.bi, @F_floatmagadd.man2 ; 2 uses
  %i.bl = select i1 %i.bj, i1 true, i1 %i.bk
  br i1 %i.bl, label %.lr.ph.i48, label %._crit_edge.thread.i

.lr.ph.i48:                                       ; preds = %addzeros.exit, %bb.q
  %i.bm = phi i1 [ %i.ce, %bb.q ], [ %i.bk, %addzeros.exit ]
  %i.bn = phi i1 [ %i.cd, %bb.q ], [ %i.bj, %addzeros.exit ]
  %.03043.i = phi i32 [ %.1.i, %bb.q ], [ 0, %addzeros.exit ]
  %.03142.i = phi ptr [ %i.cc, %bb.q ], [ getelementptr inbounds nuw (i8, ptr @_F_stradd.result, i64 198), %addzeros.exit ] ; 2 uses
  %.03341.i = phi ptr [ %.134.i, %bb.q ], [ %i.bi, %addzeros.exit ] ; 3 uses
  %.03540.i = phi ptr [ %.136.i, %bb.q ], [ %i.bg, %addzeros.exit ] ; 3 uses
  br i1 %i.bn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i48
  %i.bo = load i8, ptr %.03540.i, align 1, !tbaa !10
  %i.bp = sext i8 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, -48
  %i.br = getelementptr inbounds i8, ptr %.03540.i, i64 -1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i48
  %.136.i = phi ptr [ %i.br, %bb.n ], [ %.03540.i, %.lr.ph.i48 ] ; 2 uses
  %.028.i = phi i32 [ %i.bq, %bb.n ], [ 0, %.lr.ph.i48 ]
  br i1 %i.bm, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bs = load i8, ptr %.03341.i, align 1, !tbaa !10
  %i.bt = sext i8 %i.bs to i32
  %i.bu = add nsw i32 %i.bt, -48
  %i.bv = getelementptr inbounds i8, ptr %.03341.i, i64 -1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.134.i = phi ptr [ %i.bv, %bb.p ], [ %.03341.i, %bb.o ] ; 2 uses
  %.0.i49 = phi i32 [ %i.bu, %bb.p ], [ 0, %bb.o ]
  %i.bw = add nsw i32 %.028.i, %.03043.i
  %i.bx = add nsw i32 %i.bw, %.0.i49              ; 3 uses
  %i.by = icmp sgt i32 %i.bx, 9                   ; 3 uses
  %i.bz = add nsw i32 %i.bx, 246
  %.1.i = zext i1 %i.by to i32
  %.029.i = select i1 %i.by, i32 %i.bz, i32 %i.bx
  %i.ca = trunc i32 %.029.i to i8
  %i.cb = add i8 %i.ca, 48
  %i.cc = getelementptr inbounds i8, ptr %.03142.i, i64 -1 ; 4 uses
  store i8 %i.cb, ptr %.03142.i, align 1, !tbaa !10
  %i.cd = icmp uge ptr %.136.i, @F_floatmagadd.man1 ; 2 uses
  %i.ce = icmp uge ptr %.134.i, @F_floatmagadd.man2 ; 2 uses
  %i.cf = select i1 %i.cd, i1 true, i1 %i.ce
  br i1 %i.cf, label %.lr.ph.i48, label %._crit_edge.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.q
  br i1 %i.by, label %bb.r, label %._crit_edge.thread.i

bb.r:                                             ; preds = %._crit_edge.i
  store i8 49, ptr %i.cc, align 1, !tbaa !10
  br label %_F_stradd.exit

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %addzeros.exit
  %.031.lcssa47.i = phi ptr [ %i.cc, %._crit_edge.i ], [ getelementptr inbounds nuw (i8, ptr @_F_stradd.result, i64 198), %addzeros.exit ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.031.lcssa47.i, i64 1
  br label %_F_stradd.exit

_F_stradd.exit:                                   ; preds = %bb.r, %._crit_edge.thread.i
  %.132.i = phi ptr [ %i.cc, %bb.r ], [ %i.cg, %._crit_edge.thread.i ]
  %i.ch = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @F_floatmagadd.man1, ptr noundef nonnull dereferenceable(1) %.132.i) #13 ; 0 uses
  %i.ci = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmagadd.man1) #14
  %i.cj = sub i64 %i.ci, %.42
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = add i32 %i.aw, %i.ck                    ; 2 uses
  %i.cm = load i8, ptr @F_floatmagadd.man1, align 16, !tbaa !10
  %i.cn = icmp eq i8 %i.cm, 48
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_F_stradd.exit, %.lr.ph
  %.052 = phi ptr [ %i.co, %.lr.ph ], [ @F_floatmagadd.man1, %_F_stradd.exit ]
  %.151 = phi i32 [ %i.cp, %.lr.ph ], [ %i.cl, %_F_stradd.exit ]
  %i.co = getelementptr inbounds nuw i8, ptr %.052, i64 1 ; 3 uses
  %i.cp = add nsw i32 %.151, -1                   ; 2 uses
  %i.cq = load i8, ptr %i.co, align 1, !tbaa !10
  %i.cr = icmp eq i8 %i.cq, 48
  br i1 %i.cr, label %.lr.ph, label %._crit_edge, !llvm.loop !46

._crit_edge:                                      ; preds = %.lr.ph, %_F_stradd.exit
  %.1.lcssa = phi i32 [ %i.cl, %_F_stradd.exit ], [ %i.cp, %.lr.ph ]
  %.0.lcssa = phi ptr [ @F_floatmagadd.man1, %_F_stradd.exit ], [ %i.co, %.lr.ph ]
  %i.cs = load ptr, ptr @F_floatmagadd.result, align 8, !tbaa !23 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !20
  %i.cv = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cu, ptr noundef nonnull dereferenceable(1) %.0.lcssa) #13 ; 0 uses
  store i32 %.1.lcssa, ptr %i.cs, align 8, !tbaa !21
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 0, ptr %i.cw, align 4, !tbaa !19
  ret ptr %i.cs
end_hunk_0
