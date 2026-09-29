Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/varlena?download=true
inline.NumInlined: 556
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@text_concat_ws:bb.a
  br label %VARSIZE_ANY_EXHDR.exit.i

VARSIZE_ANY_EXHDR.exit.i:                         ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i = phi i64 [ %i.q, %bb.d ], [ %i.u, %bb.f ], [ %i.y, %bb.g ]
  %i.z = shl i64 %.0.i.i, 32                      ; 2 uses
  %sext.i = add i64 %i.z, 4294967296
  %i.aa = ashr exact i64 %sext.i, 32
  %i.ab = tail call ptr @palloc(i64 noundef %i.aa) #18 ; 3 uses
  %i.ac = load i8, ptr %i.i, align 1
  %i.ad = and i8 %i.ac, 1
  %.not.i12.i = icmp eq i8 %i.ad, 0
  %.v.i.i = select i1 %.not.i12.i, i64 4, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 %.v.i.i
  %i.af = ashr exact i64 %i.z, 32                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr nonnull align 1 %i.ae, i64 %i.af, i1 false)
  %i.ag = getelementptr inbounds i8, ptr %i.ab, i64 %i.af
  store i8 0, ptr %i.ag, align 1
  %.not.i = icmp eq ptr %i.i, %i.h
  br i1 %.not.i, label %text_to_cstring.exit, label %bb.h

bb.h:                                             ; preds = %VARSIZE_ANY_EXHDR.exit.i
  tail call void @pfree(ptr noundef nonnull %i.i) #18
  br label %text_to_cstring.exit

text_to_cstring.exit:                             ; preds = %VARSIZE_ANY_EXHDR.exit.i, %bb.h
  %i.ah = tail call fastcc ptr @concat_internal(ptr noundef nonnull %i.ab, i32 noundef 1, ptr noundef nonnull %0) ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %text_to_cstring.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.aj, align 4
  br label %bb.k

bb.j:                                             ; preds = %text_to_cstring.exit
  %i.ak = ptrtoint ptr %i.ah to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.b
  %.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.i ], [ %i.ak, %bb.j ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @text_left(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = icmp slt i32 %i.d, 0
  %i.f = load i64, ptr %i.a, align 8              ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.g) #18 ; 4 uses
  %i.i = load i8, ptr %i.h, align 1               ; 3 uses
  %i.j = and i8 %i.i, 1
  %.not.i = icmp eq i8 %i.j, 0
  %.v.i = select i1 %.not.i, i64 4, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.v.i ; 3 uses
  %i.l = zext i8 %i.i to i32                      ; 2 uses
  %i.m = icmp eq i8 %i.i, 1
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr i8, ptr %i.h, i64 1
  %.val.i = load i8, ptr %i.n, align 1            ; 2 uses
  %i.o = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.o, 3
  %i.p = icmp eq i8 %.val.i, 18
  %i.q = select i1 %i.p, i32 16, i32 0
  %i.r = select i1 %or.cond.i.i.i, i32 8, i32 %i.q
  br label %VARSIZE_ANY_EXHDR.exit

bb.d:                                             ; preds = %bb.b
  %i.s = and i32 %i.l, 1
  %.not.i16 = icmp eq i32 %i.s, 0
  br i1 %.not.i16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = lshr i32 %i.l, 1
  %i.u = add nsw i32 %i.t, -1
  br label %VARSIZE_ANY_EXHDR.exit

bb.f:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.h, align 4
  %i.w = lshr i32 %i.v, 2
  %i.x = add nsw i32 %i.w, -4
  br label %VARSIZE_ANY_EXHDR.exit

VARSIZE_ANY_EXHDR.exit:                           ; preds = %bb.c, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.r, %bb.c ], [ %i.u, %bb.e ], [ %i.x, %bb.f ] ; 2 uses
  %i.y = tail call i32 @pg_mbstrlen_with_len(ptr noundef nonnull %i.k, i32 noundef %.0.i) #18
  %i.z = add i32 %i.y, %i.d
  %i.aa = tail call i32 @pg_mbcharcliplen(ptr noundef nonnull %i.k, i32 noundef %.0.i, i32 noundef %i.z) #18 ; 2 uses
  %i.ab = add i32 %i.aa, 4                        ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = tail call ptr @palloc(i64 noundef %i.ac) #18 ; 3 uses
  %i.ae = shl i32 %i.ab, 2
  store i32 %i.ae, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ag = sext i32 %i.aa to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr nonnull readonly align 1 %i.k, i64 %i.ag, i1 false)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.ah = tail call fastcc ptr @text_substring(i64 noundef %i.f, i32 noundef 1, i32 noundef %i.d, i1 noundef zeroext false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %VARSIZE_ANY_EXHDR.exit
  %.0.in = phi ptr [ %i.ad, %VARSIZE_ANY_EXHDR.exit ], [ %i.ah, %bb.g ]
  %.0 = ptrtoint ptr %.0.in to i64
  ret i64 %.0
}

declare i32 @pg_mbstrlen_with_len(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @pg_mbcharcliplen(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @text_right(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #18 ; 4 uses
  %i.e = load i8, ptr %i.d, align 1               ; 3 uses
  %i.f = and i8 %i.e, 1
  %.not.i = icmp eq i8 %i.f, 0
  %.v.i = select i1 %.not.i, i64 4, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.v.i ; 3 uses
  %i.h = zext i8 %i.e to i32                      ; 2 uses
  %i.i = icmp eq i8 %i.e, 1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %i.d, i64 1
  %.val.i = load i8, ptr %i.j, align 1            ; 2 uses
  %i.k = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.k, 3
  %i.l = icmp eq i8 %.val.i, 18
  %i.m = select i1 %i.l, i32 16, i32 0
  %i.n = select i1 %or.cond.i.i.i, i32 8, i32 %i.m
  br label %VARSIZE_ANY_EXHDR.exit

bb.c:                                             ; preds = %bb.a
  %i.o = and i32 %i.h, 1
  %.not.i16 = icmp eq i32 %i.o, 0
  br i1 %.not.i16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = lshr i32 %i.h, 1
  %i.q = add nsw i32 %i.p, -1
  br label %VARSIZE_ANY_EXHDR.exit

bb.e:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.d, align 4
  %i.s = lshr i32 %i.r, 2
  %i.t = add nsw i32 %i.s, -4
  br label %VARSIZE_ANY_EXHDR.exit

VARSIZE_ANY_EXHDR.exit:                           ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.n, %bb.b ], [ %i.q, %bb.d ], [ %i.t, %bb.e ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load i64, ptr %i.u, align 8
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %VARSIZE_ANY_EXHDR.exit
  %i.y = tail call i32 @pg_mbstrlen_with_len(ptr noundef nonnull %i.g, i32 noundef %.0.i) #18
  br label %bb.g

bb.g:                                             ; preds = %VARSIZE_ANY_EXHDR.exit, %bb.f
  %.pn = phi i32 [ %i.y, %bb.f ], [ 0, %VARSIZE_ANY_EXHDR.exit ]
  %.0 = sub i32 %.pn, %i.w
  %i.z = tail call i32 @pg_mbcharcliplen(ptr noundef nonnull %i.g, i32 noundef %.0.i, i32 noundef %.0) #18 ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %i.g, i64 %i.aa
  %i.ac = sub i32 %.0.i, %i.z                     ; 2 uses
  %i.ad = add i32 %i.ac, 4                        ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = tail call ptr @palloc(i64 noundef %i.ae) #18 ; 3 uses
  %i.ag = shl i32 %i.ad, 2
  store i32 %i.ag, ptr %i.af, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ai = sext i32 %i.ac to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ah, ptr nonnull readonly align 1 %i.ab, i64 %i.ai, i1 false)
  %i.aj = ptrtoint ptr %i.af to i64
  ret i64 %i.aj
}

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @text_reverse(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call ptr @pg_detoast_datum_packed(ptr noundef %i.c) #18 ; 6 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 4 uses
  %i.f = load i8, ptr %i.d, align 1               ; 3 uses
  %i.g = and i8 %i.f, 1
  %.not.i = icmp eq i8 %i.g, 0
  %.v.i = select i1 %.not.i, i64 4, i64 1         ; 4 uses
  %i.h = getelementptr i8, ptr %i.d, i64 %.v.i    ; 9 uses
  %i.i = zext i8 %i.f to i32                      ; 2 uses
  %i.j = icmp eq i8 %i.f, 1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.d, i64 1
  %.val.i = load i8, ptr %i.k, align 1            ; 2 uses
  %i.l = add i8 %.val.i, -1
  %or.cond.i.i.i = icmp ult i8 %i.l, 3
  %i.m = icmp eq i8 %.val.i, 18
  %i.n = select i1 %i.m, i64 16, i64 0
  %i.o = select i1 %or.cond.i.i.i, i64 8, i64 %i.n
  br label %VARSIZE_ANY_EXHDR.exit

bb.c:                                             ; preds = %bb.a
  %i.p = and i32 %i.i, 1
  %.not.i29 = icmp eq i32 %i.p, 0
  br i1 %.not.i29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = lshr i32 %i.i, 1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = add nsw i64 %i.r, -1
  br label %VARSIZE_ANY_EXHDR.exit

bb.e:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.d, align 4
  %i.u = lshr i32 %i.t, 2
  %i.v = add nsw i32 %i.u, -4
  %i.w = zext i32 %i.v to i64
  br label %VARSIZE_ANY_EXHDR.exit

VARSIZE_ANY_EXHDR.exit:                           ; preds = %bb.b, %bb.d, %bb.e
  %.0.i = phi i64 [ %i.o, %bb.b ], [ %i.s, %bb.d ], [ %i.w, %bb.e ]
  %sext = shl i64 %.0.i, 32                       ; 2 uses
  %i.x = ashr exact i64 %sext, 32                 ; 5 uses
  %i.y = getelementptr inbounds i8, ptr %i.h, i64 %i.x ; 3 uses
  %sext28 = add i64 %sext, 17179869184
  %i.z = ashr exact i64 %sext28, 32               ; 2 uses
  %i.aa = tail call ptr @palloc(i64 noundef %i.z) #18 ; 4 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  %i.ac = getelementptr i8, ptr %i.ab, i64 %i.x   ; 8 uses
  %i.ad = trunc nsw i64 %i.z to i32
  %i.ae = shl i32 %i.ad, 2
  store i32 %i.ae, ptr %i.aa, align 4
  %i.af = tail call i32 @pg_database_encoding_max_length() #18
  %i.ag = icmp sgt i32 %i.af, 1
  %i.ah = icmp sgt i64 %i.x, 0                    ; 2 uses
  br i1 %i.ag, label %.preheader, label %.preheader30

.preheader30:                                     ; preds = %VARSIZE_ANY_EXHDR.exit
  br i1 %i.ah, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader30
  %i.ai = add i64 %.v.i, %i.e                     ; 2 uses
  %i.aj = add i64 %i.ai, %i.x
  %i.ak = add i64 %i.ai, 1
  %umax41 = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 %i.ak)
  %i.al = add i64 %.v.i, %i.e
  %i.am = sub i64 %umax41, %i.al                  ; 7 uses
  %min.iters.check = icmp ult i64 %i.am, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %1 = add i64 %.v.i, %i.e                        ; 2 uses
  %i.an = add i64 %1, %i.x                        ; 2 uses
  %i.ao = add i64 %i.an, 4
  %i.ap = add i64 %1, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.ap) ; 2 uses
  %i.aq = sub i64 %i.ao, %umax
  %scevgep = getelementptr i8, ptr %i.aa, i64 %i.aq
  %i.ar = sub i64 %umax, %i.e
  %scevgep40 = getelementptr i8, ptr %i.d, i64 %i.ar
  %bound0 = icmp ult ptr %scevgep, %scevgep40
  %bound1 = icmp ult ptr %i.h, %i.ac
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check42 = icmp ult i64 %i.am, 32
  br i1 %min.iters.check42, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.as = and i64 %i.am, 24
  %n.vec = and i64 %i.am, -32                     ; 5 uses
  %i.at = sub i64 0, %n.vec
  %i.au = getelementptr i8, ptr %i.ac, i64 %i.at
  %i.av = getelementptr i8, ptr %i.h, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aw = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %i.ac, i64 %i.aw ; 2 uses
  %next.gep43 = getelementptr i8, ptr %i.h, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %next.gep43, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep43, align 1, !alias.scope !60
  %wide.load44 = load <16 x i8>, ptr %i.ax, align 1, !alias.scope !60
  %i.ay = getelementptr inbounds i8, ptr %next.gep, i64 -16
  %i.az = getelementptr inbounds i8, ptr %next.gep, i64 -32
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse45 = shufflevector <16 x i8> %wide.load44, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse, ptr %i.ay, align 1, !alias.scope !61, !noalias !60
  store <16 x i8> %reverse45, ptr %i.az, align 1, !alias.scope !61, !noalias !60
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !62

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec47 = and i64 %i.am, -8                    ; 4 uses
  %i.bb = sub i64 0, %n.vec47
  %i.bc = getelementptr i8, ptr %i.ac, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.h, i64 %n.vec47
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index48 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next53, %vec.epilog.vector.body ] ; 3 uses
  %i.be = sub i64 0, %index48
  %next.gep49.a = getelementptr i8, ptr %i.ac, i64 %i.be
  %next.gep50 = getelementptr i8, ptr %i.h, i64 %index48
  %wide.load51 = load <8 x i8>, ptr %next.gep50, align 1, !alias.scope !60
  %i.bf = getelementptr inbounds i8, ptr %next.gep49.a, i64 -8
  %reverse52 = shufflevector <8 x i8> %wide.load51, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse52, ptr %i.bf, align 1, !alias.scope !61, !noalias !60
  %index.next53 = add nuw i64 %index48, 8         ; 2 uses
  %i.bg = icmp eq i64 %index.next53, %n.vec47
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !57

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n54 = icmp eq i64 %i.am, %n.vec47
  br i1 %cmp.n54, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.133.ph = phi ptr [ %i.ac, %iter.check ], [ %i.ac, %vector.memcheck ], [ %i.au, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ]
  %.12632.ph = phi ptr [ %i.h, %iter.check ], [ %i.h, %vector.memcheck ], [ %i.av, %vec.epilog.iter.check ], [ %i.bd, %vec.epilog.middle.block ]
  br label %.lr.ph

.preheader:                                       ; preds = %VARSIZE_ANY_EXHDR.exit
  br i1 %i.ah, label %.lr.ph36, label %.loopexit

.lr.ph36:                                         ; preds = %.preheader, %.lr.ph36
  %.035 = phi ptr [ %i.bk, %.lr.ph36 ], [ %i.ac, %.preheader ]
  %.02534 = phi ptr [ %i.bl, %.lr.ph36 ], [ %i.h, %.preheader ] ; 3 uses
  %i.bh = tail call i32 @pg_mblen_range(ptr noundef %.02534, ptr noundef nonnull %i.y) #18
  %i.bi = sext i32 %i.bh to i64                   ; 3 uses
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = getelementptr inbounds i8, ptr %.035, i64 %i.bj ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr align 1 %.02534, i64 %i.bi, i1 false)
  %i.bl = getelementptr inbounds i8, ptr %.02534, i64 %i.bi ; 2 uses
  %i.bm = icmp ult ptr %i.bl, %i.y
  br i1 %i.bm, label %.lr.ph36, label %.loopexit, !llvm.loop !58

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.133 = phi ptr [ %i.bp, %.lr.ph ], [ %.133.ph, %.lr.ph.preheader ]
  %.12632 = phi ptr [ %i.bn, %.lr.ph ], [ %.12632.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.12632, i64 1 ; 2 uses
  %i.bo = load i8, ptr %.12632, align 1
  %i.bp = getelementptr inbounds i8, ptr %.133, i64 -1 ; 2 uses
  store i8 %i.bo, ptr %i.bp, align 1
  %i.bq = icmp ult ptr %i.bn, %i.y
  br i1 %i.bq, label %.lr.ph, label %.loopexit, !llvm.loop !59

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph36, %middle.block, %vec.epilog.middle.block, %.preheader30, %.preheader
  %i.br = ptrtoint ptr %i.aa to i64
  ret i64 %i.br
}

declare i32 @pg_database_encoding_max_length() local_unnamed_addr #3

declare i32 @pg_mblen_range(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i64 @text_format(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %1 = alloca %struct.StringInfoData, align 8     ; 20 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %2 = alloca %struct.FmgrInfo, align 8           ; 4 uses
  %3 = alloca %struct.FmgrInfo, align 8           ; 4 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i8, align 1                       ; 3 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i8, align 1                       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store ptr null, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load i8, ptr %i.n, align 8, !range !8, !noundef !9
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 1, ptr %i.q, align 4
  br label %bb.cb

bb.c:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %0, align 8
  %i.s = tail call zeroext i1 @get_fn_expr_variadic(ptr noundef %i.r) #18 ; 3 uses
  br i1 %i.s, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load i8, ptr %i.t, align 8, !range !8, !noundef !9
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = load i64, ptr %i.w, align 8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = tail call ptr @pg_detoast_datum(ptr noundef %i.y) #18 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = load i32, ptr %i.aa, align 4            ; 3 uses
  call void @get_typlenbyvalalign(i32 noundef %i.ab, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #18
  %i.ac = load i16, ptr %i.e, align 2
  %i.ad = sext i16 %i.ac to i32
  %i.ae = load i8, ptr %i.f, align 1, !range !8, !noundef !9
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = load i8, ptr %i.g, align 1
  call void @deconstruct_array(ptr noundef %i.z, i32 noundef %i.ab, i32 noundef %i.ad, i1 noundef zeroext %i.af, i8 noundef signext %i.ag, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.h) #18
  %.pre = load i32, ptr %i.h, align 4
  %i.ah = add i32 %.pre, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ai = phi i32 [ %i.ah, %bb.e ], [ 1, %bb.d ]
  %.093 = phi i32 [ %i.ab, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = sext i16 %i.ak to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.095 = phi i32 [ %i.ai, %bb.f ], [ %i.al, %bb.g ] ; 2 uses
  %.194 = phi i32 [ %.093, %bb.f ], [ 0, %bb.g ]  ; 2 uses
  %i.am = load i64, ptr %i.m, align 8
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = call ptr @pg_detoast_datum_packed(ptr noundef %i.an) #18 ; 4 uses
  %i.ap = load i8, ptr %i.ao, align 1             ; 3 uses
  %i.aq = and i8 %i.ap, 1
end_hunk_0
