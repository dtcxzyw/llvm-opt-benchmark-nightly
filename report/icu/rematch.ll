Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/rematch?download=true
inline.NumInlined: 355
inline.NumDeleted: 27
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZNK6icu_7812RegexMatcher3endEiR10UErrorCode:bb.a

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !99
  %i.m = icmp sgt i32 %1, %i.l
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  store i32 8, ptr %2, align 4, !tbaa !51
  br label %_ZNK6icu_7812RegexMatcher5end64EiR10UErrorCode.exit

bb.g:                                             ; preds = %bb.e
  %i.n = icmp eq i32 %1, 0
  br i1 %i.n, label %bb.h, label %_ZNK6icu_789UVector3210elementAtiEi.exit.i

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %bb.i

_ZNK6icu_789UVector3210elementAtiEi.exit.i:       ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !100
  %i.r = zext nneg i32 %1 to i64
  %i.s = getelementptr [4 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !31
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !101
  %i.y = getelementptr [8 x i8], ptr %i.x, i64 %i.v
  %i.z = getelementptr i8, ptr %i.y, i64 24
  br label %bb.i

bb.i:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit.i, %bb.h
  %.010.in.i = phi ptr [ %i.o, %bb.h ], [ %i.z, %_ZNK6icu_789UVector3210elementAtiEi.exit.i ]
  %.010.i = load i64, ptr %.010.in.i, align 8, !tbaa !102
  %i.aa = trunc i64 %.010.i to i32
  br label %_ZNK6icu_7812RegexMatcher5end64EiR10UErrorCode.exit

_ZNK6icu_7812RegexMatcher5end64EiR10UErrorCode.exit: ; preds = %bb.a, %bb.c, %bb.f, %bb.i
  %.0.i = phi i32 [ %i.aa, %bb.i ], [ -1, %bb.c ], [ -1, %bb.f ], [ -1, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK6icu_7812RegexMatcher5end64ER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !51
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZNK6icu_7812RegexMatcher5end64EiR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.d = load i8, ptr %i.c, align 2, !tbaa !26
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 66306, ptr %1, align 4, !tbaa !51
  br label %_ZNK6icu_7812RegexMatcher5end64EiR10UErrorCode.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !97
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !99
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 8, ptr %1, align 4, !tbaa !51
  br label %_ZNK6icu_7812RegexMatcher5end64EiR10UErrorCode.exit

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.010.i = load i64, ptr %i.m, align 8, !tbaa !102
  br label %_ZNK6icu_7812RegexMatcher5end64EiR10UErrorCode.exit

_ZNK6icu_7812RegexMatcher5end64EiR10UErrorCode.exit: ; preds = %bb.a, %bb.c, %bb.e, %bb.f
  %.0.i = phi i64 [ %.010.i, %bb.f ], [ -1, %bb.c ], [ -1, %bb.e ], [ -1, %bb.a ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK6icu_7812RegexMatcher5end64EiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(336) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !51
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.d = load i8, ptr %i.c, align 2, !tbaa !26
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 66306, ptr %2, align 4, !tbaa !51
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.f = icmp slt i32 %1, 0
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !97   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !99
  %i.m = icmp sgt i32 %1, %i.l
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  store i32 8, ptr %2, align 4, !tbaa !51
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.n = icmp eq i32 %1, 0
  br i1 %i.n, label %bb.h, label %_ZNK6icu_789UVector3210elementAtiEi.exit

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %bb.i

_ZNK6icu_789UVector3210elementAtiEi.exit:         ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !100
  %i.r = zext nneg i32 %1 to i64
  %i.s = getelementptr [4 x i8], ptr %i.q, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !31
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !101
  %i.y = getelementptr [8 x i8], ptr %i.x, i64 %i.v
  %i.z = getelementptr i8, ptr %i.y, i64 24
  br label %bb.i

bb.i:                                             ; preds = %_ZNK6icu_789UVector3210elementAtiEi.exit, %bb.h
  %.010.in = phi ptr [ %i.o, %bb.h ], [ %i.z, %_ZNK6icu_789UVector3210elementAtiEi.exit ]
  %.010 = load i64, ptr %.010.in, align 8, !tbaa !102
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.f, %bb.c
  %.0 = phi i64 [ %.010, %bb.i ], [ -1, %bb.c ], [ -1, %bb.f ], [ -1, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define noundef signext i8 @_ZN6icu_7812RegexMatcher4findEv(ptr noundef nonnull align 8 dereferenceable(336) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.c = load i32, ptr %i.b, align 4, !tbaa !33
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !51
  %i.e = call noundef signext i8 @_ZN6icu_7812RegexMatcher4findER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define noundef signext i8 @_ZN6icu_7812RegexMatcher4findER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !51
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.thread242

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.d = load i32, ptr %i.c, align 4, !tbaa !33   ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %1, align 4, !tbaa !51
  br label %.thread242

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 27 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75   ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !83   ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !61   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !84
  %i.o = icmp eq i64 %i.l, %i.n
  br i1 %i.o, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.q = load i32, ptr %i.p, align 4, !tbaa !85
  %i.r = sext i32 %i.q to i64
  %i.s = icmp eq i64 %i.l, %i.r
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = tail call noundef signext i8 @_ZN6icu_7812RegexMatcher14findUsingChunkER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  br label %.thread242

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 144
  %3 = load i64, ptr %2, align 8, !tbaa !90       ; 4 uses
  %4 = icmp eq i64 %3, 0
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %6 = load i64, ptr %5, align 8
  %.0137 = select i1 %4, i64 %6, i64 %3           ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 130 ; 15 uses
  %i.v = load i8, ptr %i.u, align 2, !tbaa !26
  %.not186 = icmp eq i8 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  br i1 %.not186, label %bb.x, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i64 %3, ptr %i.w, align 8, !tbaa !27
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load i64, ptr %i.x, align 8, !tbaa !80
  %i.z = icmp eq i64 %i.y, %3
  br i1 %i.z, label %bb.j, label %bb.z

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !64
  %.not187 = icmp slt i64 %.0137, %i.ab
  br i1 %.not187, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.u, align 2, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 1, ptr %i.ac, align 8, !tbaa !29
  br label %.thread242

bb.l:                                             ; preds = %bb.j
  %i.ad = sub nsw i64 %.0137, %i.i                ; 4 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  br i1 %i.ae, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !85
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %i.ad, %i.ah
  br i1 %i.ai, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !86
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %i.ad
  %i.am = load i16, ptr %i.al, align 2, !tbaa !92
  %i.an = icmp ult i16 %i.am, -9216
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ao = trunc nuw nsw i64 %i.ad to i32          ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !93
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l
  tail call void @utext_setNativeIndex_78(ptr noundef nonnull %i.g, i64 noundef %.0137)
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !75  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre287 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !93
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.aq = phi i32 [ %.pre287, %bb.p ], [ %i.ao, %bb.o ] ; 3 uses
  %i.ar = phi ptr [ %.pre, %bb.p ], [ %i.g, %bb.o ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 44
  %i.au = load i32, ptr %i.at, align 4, !tbaa !94
  %i.av = icmp slt i32 %i.aq, %i.au
  br i1 %i.av, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !86
  %i.ay = sext i32 %i.aq to i64
  %i.az = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !92
  %i.bb = icmp ult i16 %i.ba, -10240
  br i1 %i.bb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bc = add nsw i32 %i.aq, 1                    ; 2 uses
  store i32 %i.bc, ptr %i.as, align 8, !tbaa !93
  br label %bb.u

bb.t:                                             ; preds = %bb.r, %bb.q
  %i.bd = tail call i32 @utext_next32_78(ptr noundef nonnull %i.ar) ; 0 uses
  %.pre288 = load ptr, ptr %i.f, align 8, !tbaa !75 ; 2 uses
  %.phi.trans.insert289 = getelementptr inbounds nuw i8, ptr %.pre288, i64 40
  %.pre290 = load i32, ptr %.phi.trans.insert289, align 8, !tbaa !93
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.be = phi i32 [ %.pre290, %bb.t ], [ %i.bc, %bb.s ] ; 2 uses
  %i.bf = phi ptr [ %.pre288, %bb.t ], [ %i.ar, %bb.s ] ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !85
  %.not188 = icmp sgt i32 %i.be, %i.bh
  br i1 %.not188, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !83
  %i.bk = sext i32 %i.be to i64
  %i.bl = add nsw i64 %i.bj, %i.bk
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !87
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !103
  %i.bq = tail call noundef i64 %i.bp(ptr noundef nonnull %i.bf)
  %.pre291 = load ptr, ptr %i.f, align 8, !tbaa !75
  br label %bb.z

bb.x:                                             ; preds = %bb.h
  %i.br = load i64, ptr %i.w, align 8, !tbaa !27
  %i.bs = icmp sgt i64 %i.br, -1
  br i1 %i.bs, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 1, ptr %i.bt, align 8, !tbaa !29
  br label %.thread242

bb.z:                                             ; preds = %bb.v, %bb.w, %bb.x, %bb.i
  %i.bu = phi ptr [ %i.g, %bb.x ], [ %i.g, %bb.i ], [ %i.bf, %bb.v ], [ %.pre291, %bb.w ] ; 17 uses
  %.1138 = phi i64 [ %.0137, %bb.x ], [ %.0137, %bb.i ], [ %i.bl, %bb.v ], [ %i.bq, %bb.w ] ; 21 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !87
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !89
  %i.bz = icmp eq ptr %i.by, null
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !64 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !36 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 124
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !104 ; 2 uses
  br i1 %i.bz, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.cg = sext i32 %i.cf to i64
  %i.ch = sub nsw i64 %i.cb, %i.cg                ; 2 uses
  %i.ci = icmp sgt i64 %.1138, %i.ch
  br i1 %i.ci, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  store i8 0, ptr %i.u, align 2, !tbaa !26
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 1, ptr %i.cj, align 8, !tbaa !29
  br label %.thread242

bb.ac:                                            ; preds = %bb.z
  %i.ck = icmp sgt i32 %i.cf, 0
  %.neg = sext i1 %i.ck to i64
  %i.cl = add i64 %i.cb, %.neg
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ac
  %.0134 = phi i64 [ %i.ch, %bb.aa ], [ %i.cl, %bb.ac ] ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 144
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !105
  switch i32 %i.co, label %bb.ga [
    i32 0, label %.preheader
    i32 3, label %bb.av
    i32 2, label %bb.az
    i32 5, label %bb.cb
    i32 1, label %bb.cb
    i32 4, label %bb.da
  ]

.preheader:                                       ; preds = %bb.ad
  tail call void @_ZN6icu_7812RegexMatcher7MatchAtElaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %0, i64 noundef %.1138, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.cp = load i32, ptr %1, align 4, !tbaa !51
  %i.cq = icmp slt i32 %i.cp, 1
  br i1 %i.cq, label %.lr.ph, label %.thread242

.lr.ph:                                           ; preds = %.preheader
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %_ZN6icu_7812RegexMatcher21findProgressInterruptElR10UErrorCode.exit
  %.2139276 = phi i64 [ %.1138, %.lr.ph ], [ %i.em, %_ZN6icu_7812RegexMatcher21findProgressInterruptElR10UErrorCode.exit ] ; 3 uses
  %i.ct = load i8, ptr %i.u, align 2, !tbaa !26
  %.not217 = icmp eq i8 %i.ct, 0
  br i1 %.not217, label %bb.af, label %.thread242

bb.af:                                            ; preds = %bb.ae
  %.not218 = icmp slt i64 %.2139276, %.0134
  br i1 %.not218, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 1, ptr %i.cu, align 8, !tbaa !29
  br label %.thread242

bb.ah:                                            ; preds = %bb.af
  %i.cv = load ptr, ptr %i.f, align 8, !tbaa !75  ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !83
  %i.cy = sub nsw i64 %.2139276, %i.cx            ; 4 uses
  %i.cz = icmp sgt i64 %i.cy, -1
  br i1 %i.cz, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 28
  %i.db = load i32, ptr %i.da, align 4, !tbaa !85
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp slt i64 %i.cy, %i.dc
  br i1 %i.dd, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.de = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !86
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %i.cy
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !92
  %i.di = icmp ult i16 %i.dh, -9216
  br i1 %i.di, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dj = trunc nuw nsw i64 %i.cy to i32          ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  store i32 %i.dj, ptr %i.dk, align 8, !tbaa !93
  br label %bb.am

bb.al:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  tail call void @utext_setNativeIndex_78(ptr noundef nonnull %i.cv, i64 noundef %.2139276)
  %.pre317 = load ptr, ptr %i.f, align 8, !tbaa !75 ; 2 uses
  %.phi.trans.insert318 = getelementptr inbounds nuw i8, ptr %.pre317, i64 40
  %.pre319 = load i32, ptr %.phi.trans.insert318, align 8, !tbaa !93
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dl = phi i32 [ %.pre319, %bb.al ], [ %i.dj, %bb.ak ] ; 3 uses
  %i.dm = phi ptr [ %.pre317, %bb.al ], [ %i.cv, %bb.ak ] ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 44
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !94
  %i.dq = icmp slt i32 %i.dl, %i.dp
  br i1 %i.dq, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !86
  %i.dt = sext i32 %i.dl to i64
  %i.du = getelementptr inbounds [2 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !92
  %i.dw = icmp ult i16 %i.dv, -10240
  br i1 %i.dw, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dx = add nsw i32 %i.dl, 1                    ; 2 uses
  store i32 %i.dx, ptr %i.dn, align 8, !tbaa !93
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an, %bb.am
  %i.dy = tail call i32 @utext_next32_78(ptr noundef nonnull %i.dm) ; 0 uses
  %.pre320 = load ptr, ptr %i.f, align 8, !tbaa !75 ; 2 uses
  %.phi.trans.insert321 = getelementptr inbounds nuw i8, ptr %.pre320, i64 40
  %.pre322 = load i32, ptr %.phi.trans.insert321, align 8, !tbaa !93
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.dz = phi i32 [ %.pre322, %bb.ap ], [ %i.dx, %bb.ao ] ; 2 uses
  %i.ea = phi ptr [ %.pre320, %bb.ap ], [ %i.dm, %bb.ao ] ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 28
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !85
  %.not219 = icmp sgt i32 %i.dz, %i.ec
  br i1 %.not219, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 32
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !83
  %i.ef = sext i32 %i.dz to i64
  %i.eg = add nsw i64 %i.ee, %i.ef
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !87
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !103
  %i.el = tail call noundef i64 %i.ek(ptr noundef nonnull %i.ea)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.em = phi i64 [ %i.eg, %bb.ar ], [ %i.el, %bb.as ] ; 3 uses
  %i.en = load ptr, ptr %i.cr, align 8, !tbaa !106 ; 2 uses
  %.not.i = icmp eq ptr %i.en, null
  br i1 %.not.i, label %_ZN6icu_7812RegexMatcher21findProgressInterruptElR10UErrorCode.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eo = load ptr, ptr %i.cs, align 8, !tbaa !107
  %i.ep = tail call noundef signext i8 %i.en(ptr noundef %i.eo, i64 noundef %i.em), !inline_history !0
  %.not4.i = icmp eq i8 %i.ep, 0
  br i1 %.not4.i, label %_ZN6icu_7812RegexMatcher21findProgressInterruptElR10UErrorCode.exit.thread, label %_ZN6icu_7812RegexMatcher21findProgressInterruptElR10UErrorCode.exit

_ZN6icu_7812RegexMatcher21findProgressInterruptElR10UErrorCode.exit.thread: ; preds = %bb.au
  store i32 66323, ptr %1, align 4, !tbaa !51
  br label %.thread242

_ZN6icu_7812RegexMatcher21findProgressInterruptElR10UErrorCode.exit: ; preds = %bb.at, %bb.au
  tail call void @_ZN6icu_7812RegexMatcher7MatchAtElaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %0, i64 noundef %i.em, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.eq = load i32, ptr %1, align 4, !tbaa !51
  %i.er = icmp slt i32 %i.eq, 1
  br i1 %i.er, label %bb.ae, label %.thread242, !llvm.loop !143

bb.av:                                            ; preds = %bb.ad
  %i.es = load i64, ptr %5, align 8, !tbaa !63
  %i.et = icmp sgt i64 %.1138, %i.es
  br i1 %i.et, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  store i8 0, ptr %i.u, align 2, !tbaa !26
  br label %.thread242

bb.ax:                                            ; preds = %bb.av
  tail call void @_ZN6icu_7812RegexMatcher7MatchAtElaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %0, i64 noundef %.1138, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.eu = load i32, ptr %1, align 4, !tbaa !51
  %i.ev = icmp slt i32 %i.eu, 1
  br i1 %i.ev, label %bb.ay, label %.thread242

bb.ay:                                            ; preds = %bb.ax
  %i.ew = load i8, ptr %i.u, align 2, !tbaa !26
  br label %.thread242

bb.az:                                            ; preds = %bb.ad
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !83
  %i.ez = sub nsw i64 %.1138, %i.ey               ; 4 uses
  %i.fa = icmp sgt i64 %i.ez, -1
  br i1 %i.fa, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bu, i64 28
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !85
  %i.fd = sext i32 %i.fc to i64
  %i.fe = icmp slt i64 %i.ez, %i.fd
  br i1 %i.fe, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !86
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %i.ez
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !92
  %i.fj = icmp ult i16 %i.fi, -9216
  br i1 %i.fj, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fk = trunc nuw nsw i64 %i.ez to i32
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  store i32 %i.fk, ptr %i.fl, align 8, !tbaa !93
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb, %bb.ba, %bb.az
  tail call void @utext_setNativeIndex_78(ptr noundef nonnull %i.bu, i64 noundef %.1138)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 304
  br label %bb.bf

bb.bf:                                            ; preds = %.backedge, %bb.be
  %.3 = phi i64 [ %.1138, %bb.be ], [ %i.gr, %.backedge ] ; 3 uses
  %i.fo = load ptr, ptr %i.f, align 8, !tbaa !75  ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 40 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !93 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 44
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !94
  %i.ft = icmp slt i32 %i.fq, %i.fs
  br i1 %i.ft, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !86
  %i.fw = sext i32 %i.fq to i64
  %i.fx = getelementptr inbounds [2 x i8], ptr %i.fv, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !92 ; 2 uses
  %i.fz = icmp ult i16 %i.fy, -10240
  br i1 %i.fz, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ga = add nsw i32 %i.fq, 1                    ; 2 uses
  store i32 %i.ga, ptr %i.fp, align 8, !tbaa !93
  %i.gb = zext i16 %i.fy to i32
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  %i.gc = tail call i32 @utext_next32_78(ptr noundef nonnull %i.fo)
  %.pre314 = load ptr, ptr %i.f, align 8, !tbaa !75 ; 2 uses
  %.phi.trans.insert315 = getelementptr inbounds nuw i8, ptr %.pre314, i64 40
  %.pre316 = load i32, ptr %.phi.trans.insert315, align 8, !tbaa !93
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.gd = phi i32 [ %i.ga, %bb.bh ], [ %.pre316, %bb.bi ] ; 2 uses
  %i.ge = phi ptr [ %i.fo, %bb.bh ], [ %.pre314, %bb.bi ] ; 4 uses
  %i.gf = phi i32 [ %i.gb, %bb.bh ], [ %i.gc, %bb.bi ] ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 28
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !85
  %.not209 = icmp sgt i32 %i.gd, %i.gh
  br i1 %.not209, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !83
  %i.gk = sext i32 %i.gd to i64
  %i.gl = add nsw i64 %i.gj, %i.gk
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 56
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !87
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !103
  %i.gq = tail call noundef i64 %i.gp(ptr noundef nonnull %i.ge)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.gr = phi i64 [ %i.gl, %bb.bk ], [ %i.gq, %bb.bl ] ; 3 uses
  %i.gs = icmp sgt i32 %i.gf, -1
  br i1 %i.gs, label %bb.bn, label %bb.bx

bb.bn:                                            ; preds = %bb.bm
  %i.gt = icmp samesign ult i32 %i.gf, 256
  %i.gu = load ptr, ptr %i.cm, align 8, !tbaa !36 ; 2 uses
  br i1 %i.gt, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 176
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !108
  %i.gx = lshr i32 %i.gf, 3
  %i.gy = zext nneg i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !95
  %i.hb = zext i8 %i.ha to i32
  %i.hc = and i32 %i.gf, 7
  %i.hd = shl nuw nsw i32 1, %i.hc
  %i.he = and i32 %i.hd, %i.hb
  %.not210 = icmp eq i32 %i.he, 0
  br i1 %.not210, label %bb.bx, label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gu, i64 160
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !109
  %i.hh = tail call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.hg, i32 noundef %i.gf)
  %.not211 = icmp eq i8 %i.hh, 0
  br i1 %.not211, label %bb.bx, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  tail call void @_ZN6icu_7812RegexMatcher7MatchAtElaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(336) %0, i64 noundef %.3, i8 noundef signext 0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.hi = load i32, ptr %1, align 4, !tbaa !51
  %i.hj = icmp slt i32 %i.hi, 1
  br i1 %i.hj, label %bb.br, label %.thread242

bb.br:                                            ; preds = %bb.bq
  %i.hk = load i8, ptr %i.u, align 2, !tbaa !26
  %.not213 = icmp eq i8 %i.hk, 0
  br i1 %.not213, label %bb.bs, label %.thread242

bb.bs:                                            ; preds = %bb.br
  %i.hl = load ptr, ptr %i.f, align 8, !tbaa !75  ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 32
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !83
  %i.ho = sub nsw i64 %.3, %i.hn                  ; 4 uses
  %i.hp = icmp sgt i64 %i.ho, -1
  br i1 %i.hp, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hl, i64 28
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !85
  %i.hs = sext i32 %i.hr to i64
  %i.ht = icmp slt i64 %i.ho, %i.hs
  br i1 %i.ht, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hl, i64 48
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !86
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %i.hv, i64 %i.ho
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !92
  %i.hy = icmp ult i16 %i.hx, -9216
  br i1 %i.hy, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.hz = trunc nuw nsw i64 %i.ho to i32
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hl, i64 40
  store i32 %i.hz, ptr %i.ia, align 8, !tbaa !93
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu, %bb.bt, %bb.bs
  tail call void @utext_setNativeIndex_78(ptr noundef nonnull %i.hl, i64 noundef %.3)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bo, %bb.bv, %bb.bw, %bb.bp, %bb.bm
  %i.ib = icmp sgt i64 %i.gr, %.0134
  br i1 %i.ib, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i8 0, ptr %i.u, align 2, !tbaa !26
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i8 1, ptr %i.ic, align 8, !tbaa !29
  br label %.thread242

bb.bz:                                            ; preds = %bb.bx
  %i.id = load ptr, ptr %i.fm, align 8, !tbaa !106 ; 2 uses
  %.not.i222 = icmp eq ptr %i.id, null
  br i1 %.not.i222, label %.backedge, label %bb.ca

end_hunk_0
