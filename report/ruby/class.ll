inline.NumInlined: 561
inline.NumDeleted: 126
begin_hunk_0_@module_in_super_chain:bb.a

bb.o:                                             ; preds = %bb.n
  %i.br = load i64, ptr %i.b, align 8, !tbaa !17
  %i.bs = inttoptr i64 %i.br to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i40

RCLASS_EXT_READABLE_LOOKUP.exit17.i40:            ; preds = %bb.o, %bb.n, %RCLASS_CLASSEXT_TBL.exit.i.i11.i37, %.split7.i35
  %.0.i.i14.i41 = phi ptr [ %i.bs, %bb.o ], [ null, %bb.n ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i37 ], [ null, %.split7.i35 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %.not.i15.i42 = icmp eq ptr %.0.i.i14.i41, null
  %i.bt = getelementptr i8, ptr %i.ba, i64 24
  %.0.i16.i43 = select i1 %.not.i15.i42, ptr %i.bt, ptr %.0.i.i14.i41
  br label %RCLASS_EXT_READABLE.exit50

bb.p:                                             ; preds = %bb.m
  %i.bu = getelementptr i8, ptr %i.ba, i64 24
  br label %RCLASS_EXT_READABLE.exit50

RCLASS_EXT_READABLE.exit50:                       ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i49, %.split.i44, %RCLASS_EXT_READABLE_LOOKUP.exit17.i40, %bb.p
  %.0.i34 = phi ptr [ %i.bg, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i49 ], [ %i.bu, %bb.p ], [ %i.bi, %.split.i44 ], [ %.0.i16.i43, %RCLASS_EXT_READABLE_LOOKUP.exit17.i40 ]
  %i.bv = getelementptr i8, ptr %.0.i34, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !32
  %i.bx = icmp eq ptr %i.ax, %i.bw                ; 3 uses
  br i1 %i.bx, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %RCLASS_EXT_READABLE.exit50
  %i.by = load i64, ptr %i.ba, align 8, !tbaa !19
  %i.bz = and i64 %i.by, 65536
  %.not.i.i51 = icmp eq i64 %i.bz, 0
  br i1 %.not.i.i51, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i69, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i52

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i52:        ; preds = %bb.q
  %i.ca = getelementptr i8, ptr %i.ba, i64 160    ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !21
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i69, label %bb.r

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i69: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i52, %bb.q
  %i.cd = getelementptr i8, ptr %i.ba, i64 24
  br label %RCLASS_EXT_READABLE.exit70

bb.r:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i52
  %i.ce = call ptr @rb_current_box() #18          ; 3 uses
  %.not.i53 = icmp eq ptr %i.ce, null
  br i1 %.not.i53, label %.split.i64, label %bb.s

.split.i64:                                       ; preds = %bb.r
  %i.cf = getelementptr i8, ptr %i.ba, i64 24
  br label %RCLASS_EXT_READABLE.exit70

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr i8, ptr %i.ce, i64 128
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !75, !range !76, !noundef !77
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %.split7.i55, label %bb.v

.split7.i55:                                      ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.cj = load i64, ptr %i.ba, align 8, !tbaa !19
  %i.ck = and i64 %i.cj, 65536
  %.not.i.i.i10.i56 = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i10.i56, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i60, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i57

RCLASS_CLASSEXT_TBL.exit.i.i11.i57:               ; preds = %.split7.i55
  %i.cl = load ptr, ptr %i.ca, align 8, !tbaa !21 ; 2 uses
  %.not.i.i12.i58 = icmp eq ptr %i.cl, null
  br i1 %.not.i.i12.i58, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i60, label %bb.t

bb.t:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i57
  %i.cm = load i64, ptr %i.ce, align 8, !tbaa !11
  %i.cn = call i32 @rb_st_lookup(ptr noundef nonnull %i.cl, i64 noundef %i.cm, ptr noundef nonnull %i.a) #18
  %.not5.i.i13.i59 = icmp eq i32 %i.cn, 0
  br i1 %.not5.i.i13.i59, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i60, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.co = load i64, ptr %i.a, align 8, !tbaa !17
  %i.cp = inttoptr i64 %i.co to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i60

RCLASS_EXT_READABLE_LOOKUP.exit17.i60:            ; preds = %bb.u, %bb.t, %RCLASS_CLASSEXT_TBL.exit.i.i11.i57, %.split7.i55
  %.0.i.i14.i61 = phi ptr [ %i.cp, %bb.u ], [ null, %bb.t ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i57 ], [ null, %.split7.i55 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not.i15.i62 = icmp eq ptr %.0.i.i14.i61, null
  %i.cq = getelementptr i8, ptr %i.ba, i64 24
  %.0.i16.i63 = select i1 %.not.i15.i62, ptr %i.cq, ptr %.0.i.i14.i61
  br label %RCLASS_EXT_READABLE.exit70

bb.v:                                             ; preds = %bb.s
  %i.cr = getelementptr i8, ptr %i.ba, i64 24
  br label %RCLASS_EXT_READABLE.exit70

RCLASS_EXT_READABLE.exit70:                       ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i69, %.split.i64, %RCLASS_EXT_READABLE_LOOKUP.exit17.i60, %bb.v
  %.0.i54 = phi ptr [ %i.cd, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i69 ], [ %i.cr, %bb.v ], [ %i.cf, %.split.i64 ], [ %.0.i16.i63, %RCLASS_EXT_READABLE_LOOKUP.exit17.i60 ]
  %i.cs = getelementptr i8, ptr %.0.i54, i64 8
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !58 ; 2 uses
  %.old1.not = icmp eq i64 %i.ct, 0
  br i1 %.old1.not, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %RCLASS_EXT_READABLE.exit70, %RCLASS_EXT_READABLE.exit50, %RCLASS_EXT_READABLE.exit30
  %.0 = phi i1 [ false, %RCLASS_EXT_READABLE.exit30 ], [ %i.bx, %RCLASS_EXT_READABLE.exit50 ], [ %i.bx, %RCLASS_EXT_READABLE.exit70 ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 2) i32 @do_include_modules_at(i64 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 0, 2) %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 4 uses
  %i.m = alloca [2 x i64], align 16               ; 5 uses
  %i.n = inttoptr i64 %0 to ptr                   ; 15 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !19
  %i.p = and i64 %i.o, 65536
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %bb.a
  %i.q = getelementptr i8, ptr %i.n, i64 160      ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.b

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %bb.a
  %i.t = getelementptr i8, ptr %i.n, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.u = tail call ptr @rb_current_box() #18      ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %.split.i, label %bb.c

.split.i:                                         ; preds = %bb.b
  %i.v = getelementptr i8, ptr %i.n, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr i8, ptr %i.u, i64 128
  %i.x = load i8, ptr %i.w, align 8, !tbaa !75, !range !76, !noundef !77
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %.split7.i, label %bb.f

.split7.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  %i.z = load i64, ptr %i.n, align 8, !tbaa !19
  %i.aa = and i64 %i.z, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.ab = load ptr, ptr %i.q, align 8, !tbaa !21  ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.d

bb.d:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.ac = load i64, ptr %i.u, align 8, !tbaa !11
  %i.ad = call i32 @rb_st_lookup(ptr noundef nonnull %i.ab, i64 noundef %i.ac, ptr noundef nonnull %i.l) #18
  %.not5.i.i13.i = icmp eq i32 %i.ad, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !17
  %i.af = inttoptr i64 %i.ae to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.e, %bb.d, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.af, %bb.e ], [ null, %bb.d ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.ag = getelementptr i8, ptr %i.n, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.ag, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.f:                                             ; preds = %bb.c
  %i.ah = getelementptr i8, ptr %i.n, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.f
  %.0.i122 = phi ptr [ %i.t, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.ah, %bb.f ], [ %i.v, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.ai = getelementptr i8, ptr %.0.i122, i64 96
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !63 ; 2 uses
  br i1 %4, label %bb.g, label %bb.h

bb.g:                                             ; preds = %RCLASS_EXT_READABLE.exit
  %i.ak = call fastcc zeroext i1 @module_in_super_chain(i64 noundef %0, i64 noundef %2)
  br i1 %i.ak, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g, %RCLASS_EXT_READABLE.exit
  %.not393 = icmp eq i64 %2, 0
  br i1 %.not393, label %.loopexit, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.h
  %5 = trunc nuw i32 %3 to i1                     ; 3 uses
  %i.al = getelementptr i8, ptr %i.n, i64 160     ; 2 uses
  %i.am = getelementptr i8, ptr %i.n, i64 24      ; 5 uses
  %i.an = icmp eq i64 %0, 0
  %i.ao = and i64 %0, 7
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = or i1 %i.an, %i.ap                      ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph400, %RCLASS_EXT_READABLE.exit351
  %.085399 = phi i64 [ %1, %.lr.ph400 ], [ %.5, %RCLASS_EXT_READABLE.exit351 ] ; 6 uses
  %.086396 = phi i64 [ %2, %.lr.ph400 ], [ %i.mq, %RCLASS_EXT_READABLE.exit351 ] ; 7 uses
  %.096395 = phi i64 [ 0, %.lr.ph400 ], [ %.399, %RCLASS_EXT_READABLE.exit351 ] ; 10 uses
  %.0100394 = phi i32 [ 0, %.lr.ph400 ], [ %.2102, %RCLASS_EXT_READABLE.exit351 ] ; 3 uses
  %i.as = icmp eq i64 %0, %.085399
  %i.at = icmp ne i64 %i.aj, %.085399
  %or.cond = or i1 %i.at, %5
  br i1 %or.cond, label %bb.j, label %.thread359

bb.j:                                             ; preds = %bb.i
  %i.au = load i64, ptr %i.n, align 8, !tbaa !19
  %i.av = and i64 %i.au, 65536
  %.not.i.i123 = icmp eq i64 %i.av, 0
  br i1 %.not.i.i123, label %RCLASS_EXT_READABLE.exit142, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i124

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i124:       ; preds = %bb.j
  %i.aw = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %RCLASS_EXT_READABLE.exit142, label %bb.k

bb.k:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i124
  %i.ay = call ptr @rb_current_box() #18          ; 3 uses
  %.not.i125 = icmp eq ptr %i.ay, null
  br i1 %.not.i125, label %RCLASS_EXT_READABLE.exit142, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr i8, ptr %i.ay, i64 128
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !75, !range !76, !noundef !77
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %.split7.i127, label %RCLASS_EXT_READABLE.exit142

.split7.i127:                                     ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  %i.bc = load i64, ptr %i.n, align 8, !tbaa !19
  %i.bd = and i64 %i.bc, 65536
  %.not.i.i.i10.i128 = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i10.i128, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i132, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i129

RCLASS_CLASSEXT_TBL.exit.i.i11.i129:              ; preds = %.split7.i127
  %i.be = load ptr, ptr %i.al, align 8, !tbaa !21 ; 2 uses
  %.not.i.i12.i130 = icmp eq ptr %i.be, null
  br i1 %.not.i.i12.i130, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i132, label %bb.m

bb.m:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i129
  %i.bf = load i64, ptr %i.ay, align 8, !tbaa !11
  %i.bg = call i32 @rb_st_lookup(ptr noundef nonnull %i.be, i64 noundef %i.bf, ptr noundef nonnull %i.k) #18
  %.not5.i.i13.i131 = icmp eq i32 %i.bg, 0
  br i1 %.not5.i.i13.i131, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i132, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = load i64, ptr %i.k, align 8, !tbaa !17
  %i.bi = inttoptr i64 %i.bh to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i132

RCLASS_EXT_READABLE_LOOKUP.exit17.i132:           ; preds = %bb.n, %bb.m, %RCLASS_CLASSEXT_TBL.exit.i.i11.i129, %.split7.i127
  %.0.i.i14.i133 = phi ptr [ %i.bi, %bb.n ], [ null, %bb.m ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i129 ], [ null, %.split7.i127 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  %.not.i15.i134 = icmp eq ptr %.0.i.i14.i133, null
  %.0.i16.i135 = select i1 %.not.i15.i134, ptr %i.am, ptr %.0.i.i14.i133
  br label %RCLASS_EXT_READABLE.exit142

RCLASS_EXT_READABLE.exit142:                      ; preds = %bb.k, %bb.l, %bb.j, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i124, %RCLASS_EXT_READABLE_LOOKUP.exit17.i132
  %.0.i126 = phi ptr [ %.0.i16.i135, %RCLASS_EXT_READABLE_LOOKUP.exit17.i132 ], [ %i.am, %bb.l ], [ %i.am, %bb.j ], [ %i.am, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i124 ], [ %i.am, %bb.k ]
  %.095.in386 = getelementptr i8, ptr %.0.i126, i64 8
  %.095387 = load i64, ptr %.095.in386, align 8, !tbaa !58 ; 2 uses
  %.not108388 = icmp eq i64 %.095387, 0
  br i1 %.not108388, label %.thread359, label %.lr.ph

.lr.ph:                                           ; preds = %RCLASS_EXT_READABLE.exit142
  %i.bj = inttoptr i64 %.086396 to ptr            ; 5 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 160    ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bj, i64 24     ; 5 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %RCLASS_EXT_READABLE.exit202
  %.095391 = phi i64 [ %.095387, %.lr.ph ], [ %.095, %RCLASS_EXT_READABLE.exit202 ] ; 4 uses
  %.087390 = phi i32 [ 0, %.lr.ph ], [ %.289.ph, %RCLASS_EXT_READABLE.exit202 ] ; 3 uses
  %.191389 = phi i1 [ %i.as, %.lr.ph ], [ %spec.select118, %RCLASS_EXT_READABLE.exit202 ]
  %i.bm = inttoptr i64 %.095391 to ptr            ; 14 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !19 ; 4 uses
  %i.bo = icmp ne i64 %i.aj, %.095391
  %or.cond3 = or i1 %i.bo, %5
  br i1 %or.cond3, label %bb.p, label %.thread359

bb.p:                                             ; preds = %bb.o
  %i.bp = trunc i64 %i.bn to i32
  %i.bq = and i32 %i.bp, 31
  %i.br = icmp eq i64 %.085399, %.095391
  %spec.select118 = select i1 %i.br, i1 true, i1 %.191389 ; 2 uses
  switch i32 %i.bq, label %bb.ac [
    i32 28, label %bb.q
    i32 2, label %bb.aa
  ]

bb.q:                                             ; preds = %bb.p
  %i.bs = and i64 %i.bn, 65536
  %.not.i.i143 = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i143, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i161, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i144

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i144:       ; preds = %bb.q
  %i.bt = getelementptr i8, ptr %i.bm, i64 160    ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !21
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i161, label %bb.r

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i161: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i144, %bb.q
  %i.bw = getelementptr i8, ptr %i.bm, i64 24
  br label %RCLASS_EXT_READABLE.exit162

bb.r:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i144
  %i.bx = call ptr @rb_current_box() #18          ; 3 uses
  %.not.i145 = icmp eq ptr %i.bx, null
  br i1 %.not.i145, label %.split.i156, label %bb.s

.split.i156:                                      ; preds = %bb.r
  %i.by = getelementptr i8, ptr %i.bm, i64 24
  br label %RCLASS_EXT_READABLE.exit162

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr i8, ptr %i.bx, i64 128
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !75, !range !76, !noundef !77
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %.split7.i147, label %bb.v

.split7.i147:                                     ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  %i.cc = load i64, ptr %i.bm, align 8, !tbaa !19
  %i.cd = and i64 %i.cc, 65536
  %.not.i.i.i10.i148 = icmp eq i64 %i.cd, 0
  br i1 %.not.i.i.i10.i148, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i152, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i149

RCLASS_CLASSEXT_TBL.exit.i.i11.i149:              ; preds = %.split7.i147
  %i.ce = load ptr, ptr %i.bt, align 8, !tbaa !21 ; 2 uses
  %.not.i.i12.i150 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i12.i150, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i152, label %bb.t

bb.t:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i149
  %i.cf = load i64, ptr %i.bx, align 8, !tbaa !11
  %i.cg = call i32 @rb_st_lookup(ptr noundef nonnull %i.ce, i64 noundef %i.cf, ptr noundef nonnull %i.j) #18
  %.not5.i.i13.i151 = icmp eq i32 %i.cg, 0
  br i1 %.not5.i.i13.i151, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i152, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ch = load i64, ptr %i.j, align 8, !tbaa !17
  %i.ci = inttoptr i64 %i.ch to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i152

RCLASS_EXT_READABLE_LOOKUP.exit17.i152:           ; preds = %bb.u, %bb.t, %RCLASS_CLASSEXT_TBL.exit.i.i11.i149, %.split7.i147
  %.0.i.i14.i153 = phi ptr [ %i.ci, %bb.u ], [ null, %bb.t ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i149 ], [ null, %.split7.i147 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  %.not.i15.i154 = icmp eq ptr %.0.i.i14.i153, null
  %i.cj = getelementptr i8, ptr %i.bm, i64 24
  %.0.i16.i155 = select i1 %.not.i15.i154, ptr %i.cj, ptr %.0.i.i14.i153
  br label %RCLASS_EXT_READABLE.exit162

bb.v:                                             ; preds = %bb.s
  %i.ck = getelementptr i8, ptr %i.bm, i64 24
  br label %RCLASS_EXT_READABLE.exit162

RCLASS_EXT_READABLE.exit162:                      ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i161, %.split.i156, %RCLASS_EXT_READABLE_LOOKUP.exit17.i152, %bb.v
  %.0.i146 = phi ptr [ %i.bw, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i161 ], [ %i.ck, %bb.v ], [ %i.by, %.split.i156 ], [ %.0.i16.i155, %RCLASS_EXT_READABLE_LOOKUP.exit17.i152 ]
  %i.cl = getelementptr i8, ptr %.0.i146, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !32
  %i.cn = load i64, ptr %i.bj, align 8, !tbaa !19
  %i.co = and i64 %i.cn, 65536
  %.not.i.i163 = icmp eq i64 %i.co, 0
  br i1 %.not.i.i163, label %RCLASS_EXT_READABLE.exit182, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i164

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i164:       ; preds = %RCLASS_EXT_READABLE.exit162
  %i.cp = load ptr, ptr %i.bk, align 8, !tbaa !21
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %RCLASS_EXT_READABLE.exit182, label %bb.w

bb.w:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i164
  %i.cr = call ptr @rb_current_box() #18          ; 3 uses
  %.not.i165 = icmp eq ptr %i.cr, null
  br i1 %.not.i165, label %RCLASS_EXT_READABLE.exit182, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cs = getelementptr i8, ptr %i.cr, i64 128
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !75, !range !76, !noundef !77
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %.split7.i167, label %RCLASS_EXT_READABLE.exit182

.split7.i167:                                     ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  %i.cv = load i64, ptr %i.bj, align 8, !tbaa !19
  %i.cw = and i64 %i.cv, 65536
  %.not.i.i.i10.i168 = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.i10.i168, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i172, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i169

RCLASS_CLASSEXT_TBL.exit.i.i11.i169:              ; preds = %.split7.i167
  %i.cx = load ptr, ptr %i.bk, align 8, !tbaa !21 ; 2 uses
  %.not.i.i12.i170 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i12.i170, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i172, label %bb.y

bb.y:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i169
  %i.cy = load i64, ptr %i.cr, align 8, !tbaa !11
  %i.cz = call i32 @rb_st_lookup(ptr noundef nonnull %i.cx, i64 noundef %i.cy, ptr noundef nonnull %i.i) #18
  %.not5.i.i13.i171 = icmp eq i32 %i.cz, 0
  br i1 %.not5.i.i13.i171, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i172, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.da = load i64, ptr %i.i, align 8, !tbaa !17
  %i.db = inttoptr i64 %i.da to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i172

RCLASS_EXT_READABLE_LOOKUP.exit17.i172:           ; preds = %bb.z, %bb.y, %RCLASS_CLASSEXT_TBL.exit.i.i11.i169, %.split7.i167
  %.0.i.i14.i173 = phi ptr [ %i.db, %bb.z ], [ null, %bb.y ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i169 ], [ null, %.split7.i167 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  %.not.i15.i174 = icmp eq ptr %.0.i.i14.i173, null
  %.0.i16.i175 = select i1 %.not.i15.i174, ptr %i.bl, ptr %.0.i.i14.i173
  br label %RCLASS_EXT_READABLE.exit182

RCLASS_EXT_READABLE.exit182:                      ; preds = %bb.w, %bb.x, %RCLASS_EXT_READABLE.exit162, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i164, %RCLASS_EXT_READABLE_LOOKUP.exit17.i172
  %.0.i166 = phi ptr [ %.0.i16.i175, %RCLASS_EXT_READABLE_LOOKUP.exit17.i172 ], [ %i.bl, %bb.x ], [ %i.bl, %RCLASS_EXT_READABLE.exit162 ], [ %i.bl, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i164 ], [ %i.bl, %bb.w ]
  %i.dc = getelementptr i8, ptr %.0.i166, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !32
  %i.de = icmp eq ptr %i.cm, %i.dd
  br i1 %i.de, label %bb.ab, label %RCLASS_EXT_READABLE.exit182._crit_edge

RCLASS_EXT_READABLE.exit182._crit_edge:           ; preds = %RCLASS_EXT_READABLE.exit182
  %.pre = load i64, ptr %i.bm, align 8, !tbaa !19
  br label %bb.ac

bb.aa:                                            ; preds = %bb.p
  br label %bb.ac

bb.ab:                                            ; preds = %RCLASS_EXT_READABLE.exit182
  %i.df = icmp eq i32 %.087390, 0
  %or.cond5 = select i1 %i.df, i1 %spec.select118, i1 false
  %spec.select119 = select i1 %or.cond5, i64 %.095391, i64 %.085399
  br label %bb.ck

bb.ac:                                            ; preds = %RCLASS_EXT_READABLE.exit182._crit_edge, %bb.p, %bb.aa
  %i.dg = phi i64 [ %i.bn, %bb.p ], [ %i.bn, %bb.aa ], [ %.pre, %RCLASS_EXT_READABLE.exit182._crit_edge ]
  %.289.ph = phi i32 [ %.087390, %bb.p ], [ 1, %bb.aa ], [ %.087390, %RCLASS_EXT_READABLE.exit182._crit_edge ]
  %i.dh = and i64 %i.dg, 65536
  %.not.i.i183 = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i183, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i201, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i184

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i184:       ; preds = %bb.ac
  %i.di = getelementptr i8, ptr %i.bm, i64 160    ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !21
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i201, label %bb.ad

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i201: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i184, %bb.ac
  %i.dl = getelementptr i8, ptr %i.bm, i64 24
  br label %RCLASS_EXT_READABLE.exit202

bb.ad:                                            ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i184
  %i.dm = call ptr @rb_current_box() #18          ; 3 uses
  %.not.i185 = icmp eq ptr %i.dm, null
  br i1 %.not.i185, label %.split.i196, label %bb.ae

.split.i196:                                      ; preds = %bb.ad
  %i.dn = getelementptr i8, ptr %i.bm, i64 24
  br label %RCLASS_EXT_READABLE.exit202

bb.ae:                                            ; preds = %bb.ad
  %i.do = getelementptr i8, ptr %i.dm, i64 128
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !75, !range !76, !noundef !77
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %.split7.i187, label %bb.ah

.split7.i187:                                     ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  %i.dr = load i64, ptr %i.bm, align 8, !tbaa !19
  %i.ds = and i64 %i.dr, 65536
  %.not.i.i.i10.i188 = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i.i10.i188, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i192, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i189

RCLASS_CLASSEXT_TBL.exit.i.i11.i189:              ; preds = %.split7.i187
  %i.dt = load ptr, ptr %i.di, align 8, !tbaa !21 ; 2 uses
  %.not.i.i12.i190 = icmp eq ptr %i.dt, null
  br i1 %.not.i.i12.i190, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i192, label %bb.af

bb.af:                                            ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i189
  %i.du = load i64, ptr %i.dm, align 8, !tbaa !11
  %i.dv = call i32 @rb_st_lookup(ptr noundef nonnull %i.dt, i64 noundef %i.du, ptr noundef nonnull %i.h) #18
  %.not5.i.i13.i191 = icmp eq i32 %i.dv, 0
  br i1 %.not5.i.i13.i191, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i192, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dw = load i64, ptr %i.h, align 8, !tbaa !17
  %i.dx = inttoptr i64 %i.dw to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i192

RCLASS_EXT_READABLE_LOOKUP.exit17.i192:           ; preds = %bb.ag, %bb.af, %RCLASS_CLASSEXT_TBL.exit.i.i11.i189, %.split7.i187
  %.0.i.i14.i193 = phi ptr [ %i.dx, %bb.ag ], [ null, %bb.af ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i189 ], [ null, %.split7.i187 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  %.not.i15.i194 = icmp eq ptr %.0.i.i14.i193, null
  %i.dy = getelementptr i8, ptr %i.bm, i64 24
  %.0.i16.i195 = select i1 %.not.i15.i194, ptr %i.dy, ptr %.0.i.i14.i193
  br label %RCLASS_EXT_READABLE.exit202

bb.ah:                                            ; preds = %bb.ae
  %i.dz = getelementptr i8, ptr %i.bm, i64 24
  br label %RCLASS_EXT_READABLE.exit202

RCLASS_EXT_READABLE.exit202:                      ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i201, %.split.i196, %RCLASS_EXT_READABLE_LOOKUP.exit17.i192, %bb.ah
  %.0.i186 = phi ptr [ %i.dl, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i201 ], [ %i.dz, %bb.ah ], [ %i.dn, %.split.i196 ], [ %.0.i16.i195, %RCLASS_EXT_READABLE_LOOKUP.exit17.i192 ]
  %.095.in = getelementptr i8, ptr %.0.i186, i64 8
  %.095 = load i64, ptr %.095.in, align 8, !tbaa !58 ; 2 uses
  %.not108 = icmp eq i64 %.095, 0
  br i1 %.not108, label %.thread359, label %bb.o, !llvm.loop !122

.thread359:                                       ; preds = %RCLASS_EXT_READABLE.exit202, %bb.o, %RCLASS_EXT_READABLE.exit142, %bb.i
  %i.ea = inttoptr i64 %.085399 to ptr            ; 7 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !19
  %i.ec = and i64 %i.eb, 65536
  %.not.i.i203 = icmp eq i64 %i.ec, 0
  br i1 %.not.i.i203, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i221, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i204

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i204:       ; preds = %.thread359
  %i.ed = getelementptr i8, ptr %i.ea, i64 160    ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !21
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i221, label %bb.ai

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i221: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i204, %.thread359
  %i.eg = getelementptr i8, ptr %i.ea, i64 24
  br label %RCLASS_EXT_READABLE.exit222

bb.ai:                                            ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i204
  %i.eh = call ptr @rb_current_box() #18          ; 3 uses
  %.not.i205 = icmp eq ptr %i.eh, null
  br i1 %.not.i205, label %.split.i216, label %bb.aj

.split.i216:                                      ; preds = %bb.ai
  %i.ei = getelementptr i8, ptr %i.ea, i64 24
  br label %RCLASS_EXT_READABLE.exit222

bb.aj:                                            ; preds = %bb.ai
  %i.ej = getelementptr i8, ptr %i.eh, i64 128
  %i.ek = load i8, ptr %i.ej, align 8, !tbaa !75, !range !76, !noundef !77
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %.split7.i207, label %bb.am

.split7.i207:                                     ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  %i.em = load i64, ptr %i.ea, align 8, !tbaa !19
  %i.en = and i64 %i.em, 65536
  %.not.i.i.i10.i208 = icmp eq i64 %i.en, 0
  br i1 %.not.i.i.i10.i208, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i212, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i209

RCLASS_CLASSEXT_TBL.exit.i.i11.i209:              ; preds = %.split7.i207
  %i.eo = load ptr, ptr %i.ed, align 8, !tbaa !21 ; 2 uses
  %.not.i.i12.i210 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i12.i210, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i212, label %bb.ak

bb.ak:                                            ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i209
  %i.ep = load i64, ptr %i.eh, align 8, !tbaa !11
  %i.eq = call i32 @rb_st_lookup(ptr noundef nonnull %i.eo, i64 noundef %i.ep, ptr noundef nonnull %i.g) #18
  %.not5.i.i13.i211 = icmp eq i32 %i.eq, 0
  br i1 %.not5.i.i13.i211, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i212, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.er = load i64, ptr %i.g, align 8, !tbaa !17
  %i.es = inttoptr i64 %i.er to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i212

RCLASS_EXT_READABLE_LOOKUP.exit17.i212:           ; preds = %bb.al, %bb.ak, %RCLASS_CLASSEXT_TBL.exit.i.i11.i209, %.split7.i207
  %.0.i.i14.i213 = phi ptr [ %i.es, %bb.al ], [ null, %bb.ak ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i209 ], [ null, %.split7.i207 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  %.not.i15.i214 = icmp eq ptr %.0.i.i14.i213, null
  %i.et = getelementptr i8, ptr %i.ea, i64 24
  %.0.i16.i215 = select i1 %.not.i15.i214, ptr %i.et, ptr %.0.i.i14.i213
  br label %RCLASS_EXT_READABLE.exit222

bb.am:                                            ; preds = %bb.aj
  %i.eu = getelementptr i8, ptr %i.ea, i64 24
  br label %RCLASS_EXT_READABLE.exit222

RCLASS_EXT_READABLE.exit222:                      ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i221, %.split.i216, %RCLASS_EXT_READABLE_LOOKUP.exit17.i212, %bb.am
  %.0.i206 = phi ptr [ %i.eg, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i221 ], [ %i.eu, %bb.am ], [ %i.ei, %.split.i216 ], [ %.0.i16.i215, %RCLASS_EXT_READABLE_LOOKUP.exit17.i212 ]
  %i.ev = getelementptr i8, ptr %.0.i206, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !58 ; 4 uses
  %i.ex = load i64, ptr @ruby_vm_global_cvar_state, align 8, !tbaa !123
  %i.ey = add i64 %i.ex, 1
  store i64 %i.ey, ptr @ruby_vm_global_cvar_state, align 8, !tbaa !123
  %i.ez = inttoptr i64 %.086396 to ptr            ; 40 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !19
  %i.fb = and i64 %i.fa, 65536
  %.not.i.i223 = icmp eq i64 %i.fb, 0
  br i1 %.not.i.i223, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i241, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i224

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i224:       ; preds = %RCLASS_EXT_READABLE.exit222
  %i.fc = getelementptr i8, ptr %i.ez, i64 160    ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !21
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i241, label %bb.an

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i241: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i224, %RCLASS_EXT_READABLE.exit222
  %i.ff = getelementptr i8, ptr %i.ez, i64 24
  br label %RCLASS_EXT_READABLE.exit242

bb.an:                                            ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i224
  %i.fg = call ptr @rb_current_box() #18          ; 3 uses
  %.not.i225 = icmp eq ptr %i.fg, null
  br i1 %.not.i225, label %.split.i236, label %bb.ao

.split.i236:                                      ; preds = %bb.an
  %i.fh = getelementptr i8, ptr %i.ez, i64 24
  br label %RCLASS_EXT_READABLE.exit242

bb.ao:                                            ; preds = %bb.an
  %i.fi = getelementptr i8, ptr %i.fg, i64 128
  %i.fj = load i8, ptr %i.fi, align 8, !tbaa !75, !range !76, !noundef !77
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %.split7.i227, label %bb.ar

.split7.i227:                                     ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.fl = load i64, ptr %i.ez, align 8, !tbaa !19
  %i.fm = and i64 %i.fl, 65536
  %.not.i.i.i10.i228 = icmp eq i64 %i.fm, 0
  br i1 %.not.i.i.i10.i228, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i232, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i229

RCLASS_CLASSEXT_TBL.exit.i.i11.i229:              ; preds = %.split7.i227
  %i.fn = load ptr, ptr %i.fc, align 8, !tbaa !21 ; 2 uses
  %.not.i.i12.i230 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i12.i230, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i232, label %bb.ap

bb.ap:                                            ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i229
  %i.fo = load i64, ptr %i.fg, align 8, !tbaa !11
  %i.fp = call i32 @rb_st_lookup(ptr noundef nonnull %i.fn, i64 noundef %i.fo, ptr noundef nonnull %i.f) #18
  %.not5.i.i13.i231 = icmp eq i32 %i.fp, 0
  br i1 %.not5.i.i13.i231, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i232, label %bb.aq

end_hunk_0
begin_hunk_1_@class_instance_method_list:bb.a
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %5 = alloca %struct.method_entry_arg, align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #22
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.g = load i64, ptr %1, align 8, !tbaa !17
  %i.h = and i64 %i.g, -5
  %i.i = icmp ne i64 %i.h, 0
  %i.j = zext i1 %i.i to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %rb_check_arity.exit
  %.022 = phi i32 [ %i.j, %bb.c ], [ 1, %rb_check_arity.exit ] ; 2 uses
  %i.k = tail call ptr @rb_st_init_numtable() #18
  store ptr %i.k, ptr %5, align 8, !tbaa !135
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %.022, ptr %i.l, align 8, !tbaa !137
  %.not24 = icmp eq i32 %3, 0
  br i1 %.not24, label %particular_class_p.exit.thread120, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not.i122 = icmp eq i64 %2, 0
  br i1 %.not.i122, label %particular_class_p.exit.thread120, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %RCLASS_EXT_READABLE.exit
  %.023123 = phi i64 [ %i.bh, %RCLASS_EXT_READABLE.exit ], [ %2, %.preheader ] ; 3 uses
  %i.m = and i64 %.023123, 7
  %.not5.i = icmp eq i64 %i.m, 0
  %i.n = inttoptr i64 %.023123 to ptr             ; 14 uses
  %.pre = load i64, ptr %i.n, align 8, !tbaa !19  ; 3 uses
  %i.o = and i64 %.pre, 8223
  %or.cond.i30 = icmp eq i64 %i.o, 8194
  %or.cond = select i1 %.not5.i, i1 %or.cond.i30, i1 false
  %i.p = and i64 %.pre, 31
  %i.q = icmp eq i64 %i.p, 28
  %or.cond147 = select i1 %or.cond, i1 true, i1 %i.q
  br i1 %or.cond147, label %particular_class_p.exit.thread, label %particular_class_p.exit.thread120

particular_class_p.exit.thread:                   ; preds = %.lr.ph
  %i.r = and i64 %.pre, 65536
  %.not.i.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i:        ; preds = %particular_class_p.exit.thread
  %i.s = getelementptr i8, ptr %i.n, i64 160      ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i, label %bb.e

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i, %particular_class_p.exit.thread
  %i.v = getelementptr i8, ptr %i.n, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

bb.e:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i
  %i.w = call ptr @rb_current_box() #18           ; 3 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %.split.i.i, label %bb.f

.split.i.i:                                       ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.n, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr i8, ptr %i.w, i64 128
  %i.z = load i8, ptr %i.y, align 8, !tbaa !75, !range !76, !noundef !77
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %.split7.i.i, label %bb.i

.split7.i.i:                                      ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.ab = load i64, ptr %i.n, align 8, !tbaa !19
  %i.ac = and i64 %i.ab, 65536
  %.not.i.i.i10.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i.i10.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i.i:               ; preds = %.split7.i.i
  %i.ad = load ptr, ptr %i.s, align 8, !tbaa !21  ; 2 uses
  %.not.i.i12.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i12.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %bb.g

bb.g:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i
  %i.ae = load i64, ptr %i.w, align 8, !tbaa !11
  %i.af = call i32 @rb_st_lookup(ptr noundef nonnull %i.ad, i64 noundef %i.ae, ptr noundef nonnull %i.f) #18
  %.not5.i.i13.i.i = icmp eq i32 %i.af, 0
  br i1 %.not5.i.i13.i.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = load i64, ptr %i.f, align 8, !tbaa !17
  %i.ah = inttoptr i64 %i.ag to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i.i:            ; preds = %bb.h, %bb.g, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i, %.split7.i.i
  %.0.i.i14.i.i = phi ptr [ %i.ah, %bb.h ], [ null, %bb.g ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i ], [ null, %.split7.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  %.not.i15.i.i = icmp eq ptr %.0.i.i14.i.i, null
  %i.ai = getelementptr i8, ptr %i.n, i64 24
  %.0.i16.i.i = select i1 %.not.i15.i.i, ptr %i.ai, ptr %.0.i.i14.i.i
  br label %RCLASS_EXT_READABLE.exit.i

bb.i:                                             ; preds = %bb.f
  %i.aj = getelementptr i8, ptr %i.n, i64 24
  br label %RCLASS_EXT_READABLE.exit.i

RCLASS_EXT_READABLE.exit.i:                       ; preds = %bb.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i, %.split.i.i, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i
  %.0.i.i = phi ptr [ %i.v, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i ], [ %i.aj, %bb.i ], [ %i.x, %.split.i.i ], [ %.0.i16.i.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i ]
  %i.ak = getelementptr i8, ptr %.0.i.i, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !32 ; 2 uses
  %.not.i31 = icmp eq ptr %i.al, null
  br i1 %.not.i31, label %add_instance_method_list.exit, label %bb.j

bb.j:                                             ; preds = %RCLASS_EXT_READABLE.exit.i
  call void @rb_id_table_foreach(ptr noundef nonnull %i.al, ptr noundef nonnull @method_entry_i, ptr noundef nonnull %5) #18
  br label %add_instance_method_list.exit

add_instance_method_list.exit:                    ; preds = %RCLASS_EXT_READABLE.exit.i, %bb.j
  %i.am = load i64, ptr %i.n, align 8, !tbaa !19
  %i.an = and i64 %i.am, 65536
  %.not.i.i32 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i32, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i:          ; preds = %add_instance_method_list.exit
  %i.ao = getelementptr i8, ptr %i.n, i64 160     ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !21
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, label %bb.k

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i:   ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i, %add_instance_method_list.exit
  %i.ar = getelementptr i8, ptr %i.n, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.k:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.as = call ptr @rb_current_box() #18          ; 3 uses
  %.not.i33 = icmp eq ptr %i.as, null
  br i1 %.not.i33, label %.split.i, label %bb.l

.split.i:                                         ; preds = %bb.k
  %i.at = getelementptr i8, ptr %i.n, i64 24
  br label %RCLASS_EXT_READABLE.exit

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr i8, ptr %i.as, i64 128
  %i.av = load i8, ptr %i.au, align 8, !tbaa !75, !range !76, !noundef !77
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %.split7.i, label %bb.o

.split7.i:                                        ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  %i.ax = load i64, ptr %i.n, align 8, !tbaa !19
  %i.ay = and i64 %i.ax, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i.i.i10.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i

RCLASS_CLASSEXT_TBL.exit.i.i11.i:                 ; preds = %.split7.i
  %i.az = load ptr, ptr %i.ao, align 8, !tbaa !21 ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.m

bb.m:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.ba = load i64, ptr %i.as, align 8, !tbaa !11
  %i.bb = call i32 @rb_st_lookup(ptr noundef nonnull %i.az, i64 noundef %i.ba, ptr noundef nonnull %i.e) #18
  %.not5.i.i13.i = icmp eq i32 %i.bb, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load i64, ptr %i.e, align 8, !tbaa !17
  %i.bd = inttoptr i64 %i.bc to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.n, %bb.m, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.bd, %bb.n ], [ null, %bb.m ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.be = getelementptr i8, ptr %i.n, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.be, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.o:                                             ; preds = %bb.l
  %i.bf = getelementptr i8, ptr %i.n, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.o
  %.0.i34 = phi ptr [ %i.ar, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.bf, %bb.o ], [ %i.at, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.bg = getelementptr i8, ptr %.0.i34, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !58 ; 2 uses
  %.not.i = icmp eq i64 %i.bh, 0
  br i1 %.not.i, label %particular_class_p.exit.thread120, label %.lr.ph, !llvm.loop !138

particular_class_p.exit.thread120:                ; preds = %RCLASS_EXT_READABLE.exit, %.lr.ph, %.preheader, %bb.d
  %.1 = phi i64 [ %2, %bb.d ], [ 0, %.preheader ], [ %.023123, %.lr.ph ], [ 0, %RCLASS_EXT_READABLE.exit ] ; 4 uses
  %6 = trunc nuw i32 %.022 to i1                  ; 2 uses
  br i1 %6, label %bb.ab, label %bb.p

bb.p:                                             ; preds = %particular_class_p.exit.thread120
  %i.bi = inttoptr i64 %.1 to ptr                 ; 14 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !19
  %i.bk = and i64 %i.bj, 65536
  %.not.i.i37 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i37, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i55, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i38

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i38:        ; preds = %bb.p
  %i.bl = getelementptr i8, ptr %i.bi, i64 160    ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !21
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i55, label %bb.q

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i55: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i38, %bb.p
  %i.bo = getelementptr i8, ptr %i.bi, i64 24
  br label %RCLASS_EXT_READABLE.exit56

bb.q:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i38
  %i.bp = call ptr @rb_current_box() #18          ; 3 uses
  %.not.i39 = icmp eq ptr %i.bp, null
  br i1 %.not.i39, label %.split.i50, label %bb.r

.split.i50:                                       ; preds = %bb.q
  %i.bq = getelementptr i8, ptr %i.bi, i64 24
  br label %RCLASS_EXT_READABLE.exit56

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr i8, ptr %i.bp, i64 128
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !75, !range !76, !noundef !77
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %.split7.i41, label %bb.u

.split7.i41:                                      ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.bu = load i64, ptr %i.bi, align 8, !tbaa !19
  %i.bv = and i64 %i.bu, 65536
  %.not.i.i.i10.i42 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i.i10.i42, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i46, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i43

RCLASS_CLASSEXT_TBL.exit.i.i11.i43:               ; preds = %.split7.i41
  %i.bw = load ptr, ptr %i.bl, align 8, !tbaa !21 ; 2 uses
  %.not.i.i12.i44 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i12.i44, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i46, label %bb.s

bb.s:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i43
  %i.bx = load i64, ptr %i.bp, align 8, !tbaa !11
  %i.by = call i32 @rb_st_lookup(ptr noundef nonnull %i.bw, i64 noundef %i.bx, ptr noundef nonnull %i.d) #18
  %.not5.i.i13.i45 = icmp eq i32 %i.by, 0
  br i1 %.not5.i.i13.i45, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i46, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = load i64, ptr %i.d, align 8, !tbaa !17
  %i.ca = inttoptr i64 %i.bz to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i46

RCLASS_EXT_READABLE_LOOKUP.exit17.i46:            ; preds = %bb.t, %bb.s, %RCLASS_CLASSEXT_TBL.exit.i.i11.i43, %.split7.i41
  %.0.i.i14.i47 = phi ptr [ %i.ca, %bb.t ], [ null, %bb.s ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i43 ], [ null, %.split7.i41 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %.not.i15.i48 = icmp eq ptr %.0.i.i14.i47, null
  %i.cb = getelementptr i8, ptr %i.bi, i64 24
  %.0.i16.i49 = select i1 %.not.i15.i48, ptr %i.cb, ptr %.0.i.i14.i47
  br label %RCLASS_EXT_READABLE.exit56

bb.u:                                             ; preds = %bb.r
  %i.cc = getelementptr i8, ptr %i.bi, i64 24
  br label %RCLASS_EXT_READABLE.exit56

RCLASS_EXT_READABLE.exit56:                       ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i55, %.split.i50, %RCLASS_EXT_READABLE_LOOKUP.exit17.i46, %bb.u
  %.0.i40 = phi ptr [ %i.bo, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i55 ], [ %i.cc, %bb.u ], [ %i.bq, %.split.i50 ], [ %.0.i16.i49, %RCLASS_EXT_READABLE_LOOKUP.exit17.i46 ]
  %i.cd = getelementptr i8, ptr %.0.i40, i64 96
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !63
  %.not25 = icmp eq i64 %i.ce, %.1
  br i1 %.not25, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %RCLASS_EXT_READABLE.exit56
  %i.cf = load i64, ptr %i.bi, align 8, !tbaa !19
  %i.cg = and i64 %i.cf, 65536
  %.not.i.i57 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i57, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i75, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i58

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i58:        ; preds = %bb.v
  %i.ch = getelementptr i8, ptr %i.bi, i64 160    ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !21
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i75, label %bb.w

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i75: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i58, %bb.v
  %i.ck = getelementptr i8, ptr %i.bi, i64 24
  br label %RCLASS_EXT_READABLE.exit76

bb.w:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i58
  %i.cl = call ptr @rb_current_box() #18          ; 3 uses
  %.not.i59 = icmp eq ptr %i.cl, null
  br i1 %.not.i59, label %.split.i70, label %bb.x

.split.i70:                                       ; preds = %bb.w
  %i.cm = getelementptr i8, ptr %i.bi, i64 24
  br label %RCLASS_EXT_READABLE.exit76

bb.x:                                             ; preds = %bb.w
  %i.cn = getelementptr i8, ptr %i.cl, i64 128
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !75, !range !76, !noundef !77
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %.split7.i61, label %bb.aa

.split7.i61:                                      ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.cq = load i64, ptr %i.bi, align 8, !tbaa !19
  %i.cr = and i64 %i.cq, 65536
  %.not.i.i.i10.i62 = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i.i10.i62, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i66, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i63

RCLASS_CLASSEXT_TBL.exit.i.i11.i63:               ; preds = %.split7.i61
  %i.cs = load ptr, ptr %i.ch, align 8, !tbaa !21 ; 2 uses
  %.not.i.i12.i64 = icmp eq ptr %i.cs, null
  br i1 %.not.i.i12.i64, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i66, label %bb.y

bb.y:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i63
  %i.ct = load i64, ptr %i.cl, align 8, !tbaa !11
  %i.cu = call i32 @rb_st_lookup(ptr noundef nonnull %i.cs, i64 noundef %i.ct, ptr noundef nonnull %i.c) #18
  %.not5.i.i13.i65 = icmp eq i32 %i.cu, 0
  br i1 %.not5.i.i13.i65, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i66, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cv = load i64, ptr %i.c, align 8, !tbaa !17
  %i.cw = inttoptr i64 %i.cv to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i66

RCLASS_EXT_READABLE_LOOKUP.exit17.i66:            ; preds = %bb.z, %bb.y, %RCLASS_CLASSEXT_TBL.exit.i.i11.i63, %.split7.i61
  %.0.i.i14.i67 = phi ptr [ %i.cw, %bb.z ], [ null, %bb.y ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i63 ], [ null, %.split7.i61 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %.not.i15.i68 = icmp eq ptr %.0.i.i14.i67, null
  %i.cx = getelementptr i8, ptr %i.bi, i64 24
  %.0.i16.i69 = select i1 %.not.i15.i68, ptr %i.cx, ptr %.0.i.i14.i67
  br label %RCLASS_EXT_READABLE.exit76

bb.aa:                                            ; preds = %bb.x
  %i.cy = getelementptr i8, ptr %i.bi, i64 24
  br label %RCLASS_EXT_READABLE.exit76

RCLASS_EXT_READABLE.exit76:                       ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i75, %.split.i70, %RCLASS_EXT_READABLE_LOOKUP.exit17.i66, %bb.aa
  %.0.i60 = phi ptr [ %i.ck, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i75 ], [ %i.cy, %bb.aa ], [ %i.cm, %.split.i70 ], [ %.0.i16.i69, %RCLASS_EXT_READABLE_LOOKUP.exit17.i66 ]
  %i.cz = getelementptr i8, ptr %.0.i60, i64 96
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !63
  br label %bb.ab

bb.ab:                                            ; preds = %RCLASS_EXT_READABLE.exit76, %RCLASS_EXT_READABLE.exit56, %particular_class_p.exit.thread120
  %.2 = phi i64 [ %.1, %particular_class_p.exit.thread120 ], [ %i.da, %RCLASS_EXT_READABLE.exit76 ], [ %.1, %RCLASS_EXT_READABLE.exit56 ] ; 2 uses
  %.not28 = phi i1 [ true, %particular_class_p.exit.thread120 ], [ false, %RCLASS_EXT_READABLE.exit76 ], [ true, %RCLASS_EXT_READABLE.exit56 ]
  %.not26125 = icmp eq i64 %.2, 0
  br i1 %.not26125, label %add_instance_method_list.exit98._crit_edge, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.ab, %RCLASS_EXT_READABLE.exit118
  %.3126 = phi i64 [ %i.ev, %RCLASS_EXT_READABLE.exit118 ], [ %.2, %bb.ab ]
  %i.db = inttoptr i64 %.3126 to ptr              ; 14 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !19
  %i.dd = and i64 %i.dc, 65536
  %.not.i.i.i77 = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i77, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i97, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i78

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i78:      ; preds = %.lr.ph127
  %i.de = getelementptr i8, ptr %i.db, i64 160    ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !21
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i97, label %bb.ac

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i97: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i78, %.lr.ph127
  %i.dh = getelementptr i8, ptr %i.db, i64 24
  br label %RCLASS_EXT_READABLE.exit.i80

bb.ac:                                            ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i.i78
  %i.di = call ptr @rb_current_box() #18          ; 3 uses
  %.not.i.i79 = icmp eq ptr %i.di, null
  br i1 %.not.i.i79, label %.split.i.i92, label %bb.ad

.split.i.i92:                                     ; preds = %bb.ac
  %i.dj = getelementptr i8, ptr %i.db, i64 24
  br label %RCLASS_EXT_READABLE.exit.i80

bb.ad:                                            ; preds = %bb.ac
  %i.dk = getelementptr i8, ptr %i.di, i64 128
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !75, !range !76, !noundef !77
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %.split7.i.i83, label %bb.ag

.split7.i.i83:                                    ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.dn = load i64, ptr %i.db, align 8, !tbaa !19
  %i.do = and i64 %i.dn, 65536
  %.not.i.i.i10.i.i84 = icmp eq i64 %i.do, 0
  br i1 %.not.i.i.i10.i.i84, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i88, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i85

RCLASS_CLASSEXT_TBL.exit.i.i11.i.i85:             ; preds = %.split7.i.i83
  %i.dp = load ptr, ptr %i.de, align 8, !tbaa !21 ; 2 uses
  %.not.i.i12.i.i86 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i12.i.i86, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i88, label %bb.ae

bb.ae:                                            ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i85
  %i.dq = load i64, ptr %i.di, align 8, !tbaa !11
  %i.dr = call i32 @rb_st_lookup(ptr noundef nonnull %i.dp, i64 noundef %i.dq, ptr noundef nonnull %i.b) #18
  %.not5.i.i13.i.i87 = icmp eq i32 %i.dr, 0
  br i1 %.not5.i.i13.i.i87, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i88, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ds = load i64, ptr %i.b, align 8, !tbaa !17
  %i.dt = inttoptr i64 %i.ds to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i88

RCLASS_EXT_READABLE_LOOKUP.exit17.i.i88:          ; preds = %bb.af, %bb.ae, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i85, %.split7.i.i83
  %.0.i.i14.i.i89 = phi ptr [ %i.dt, %bb.af ], [ null, %bb.ae ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i.i85 ], [ null, %.split7.i.i83 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %.not.i15.i.i90 = icmp eq ptr %.0.i.i14.i.i89, null
  %i.du = getelementptr i8, ptr %i.db, i64 24
  %.0.i16.i.i91 = select i1 %.not.i15.i.i90, ptr %i.du, ptr %.0.i.i14.i.i89
  br label %RCLASS_EXT_READABLE.exit.i80

bb.ag:                                            ; preds = %bb.ad
  %i.dv = getelementptr i8, ptr %i.db, i64 24
  br label %RCLASS_EXT_READABLE.exit.i80

RCLASS_EXT_READABLE.exit.i80:                     ; preds = %bb.ag, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i88, %.split.i.i92, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i97
  %.0.i.i81 = phi ptr [ %i.dh, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i.i97 ], [ %i.dv, %bb.ag ], [ %i.dj, %.split.i.i92 ], [ %.0.i16.i.i91, %RCLASS_EXT_READABLE_LOOKUP.exit17.i.i88 ]
  %i.dw = getelementptr i8, ptr %.0.i.i81, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !32 ; 2 uses
  %.not.i82 = icmp eq ptr %i.dx, null
  br i1 %.not.i82, label %add_instance_method_list.exit98, label %bb.ah

bb.ah:                                            ; preds = %RCLASS_EXT_READABLE.exit.i80
  call void @rb_id_table_foreach(ptr noundef nonnull %i.dx, ptr noundef nonnull @method_entry_i, ptr noundef nonnull %5) #18
  br label %add_instance_method_list.exit98

add_instance_method_list.exit98:                  ; preds = %RCLASS_EXT_READABLE.exit.i80, %bb.ah
  %i.dy = load i64, ptr %i.db, align 8, !tbaa !19 ; 2 uses
  %i.dz = and i64 %i.dy, 31
  %i.ea = icmp eq i64 %i.dz, 28
  %or.cond.not29 = and i1 %.not28, %i.ea
  %or.cond3 = or i1 %or.cond.not29, %6
  br i1 %or.cond3, label %bb.ai, label %add_instance_method_list.exit98._crit_edge

bb.ai:                                            ; preds = %add_instance_method_list.exit98
  %i.eb = and i64 %i.dy, 65536
  %.not.i.i99 = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i99, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i117, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i100

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i100:       ; preds = %bb.ai
  %i.ec = getelementptr i8, ptr %i.db, i64 160    ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !21
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i117, label %bb.aj

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i117: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i100, %bb.ai
  %i.ef = getelementptr i8, ptr %i.db, i64 24
  br label %RCLASS_EXT_READABLE.exit118

bb.aj:                                            ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i100
  %i.eg = call ptr @rb_current_box() #18          ; 3 uses
  %.not.i101 = icmp eq ptr %i.eg, null
  br i1 %.not.i101, label %.split.i112, label %bb.ak

.split.i112:                                      ; preds = %bb.aj
  %i.eh = getelementptr i8, ptr %i.db, i64 24
  br label %RCLASS_EXT_READABLE.exit118

bb.ak:                                            ; preds = %bb.aj
  %i.ei = getelementptr i8, ptr %i.eg, i64 128
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !75, !range !76, !noundef !77
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %.split7.i103, label %bb.an

.split7.i103:                                     ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.el = load i64, ptr %i.db, align 8, !tbaa !19
  %i.em = and i64 %i.el, 65536
  %.not.i.i.i10.i104 = icmp eq i64 %i.em, 0
  br i1 %.not.i.i.i10.i104, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i108, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i105

RCLASS_CLASSEXT_TBL.exit.i.i11.i105:              ; preds = %.split7.i103
  %i.en = load ptr, ptr %i.ec, align 8, !tbaa !21 ; 2 uses
  %.not.i.i12.i106 = icmp eq ptr %i.en, null
  br i1 %.not.i.i12.i106, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i108, label %bb.al

bb.al:                                            ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i105
  %i.eo = load i64, ptr %i.eg, align 8, !tbaa !11
  %i.ep = call i32 @rb_st_lookup(ptr noundef nonnull %i.en, i64 noundef %i.eo, ptr noundef nonnull %i.a) #18
  %.not5.i.i13.i107 = icmp eq i32 %i.ep, 0
  br i1 %.not5.i.i13.i107, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i108, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.eq = load i64, ptr %i.a, align 8, !tbaa !17
  %i.er = inttoptr i64 %i.eq to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i108

RCLASS_EXT_READABLE_LOOKUP.exit17.i108:           ; preds = %bb.am, %bb.al, %RCLASS_CLASSEXT_TBL.exit.i.i11.i105, %.split7.i103
  %.0.i.i14.i109 = phi ptr [ %i.er, %bb.am ], [ null, %bb.al ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i105 ], [ null, %.split7.i103 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not.i15.i110 = icmp eq ptr %.0.i.i14.i109, null
  %i.es = getelementptr i8, ptr %i.db, i64 24
  %.0.i16.i111 = select i1 %.not.i15.i110, ptr %i.es, ptr %.0.i.i14.i109
  br label %RCLASS_EXT_READABLE.exit118

bb.an:                                            ; preds = %bb.ak
  %i.et = getelementptr i8, ptr %i.db, i64 24
  br label %RCLASS_EXT_READABLE.exit118

RCLASS_EXT_READABLE.exit118:                      ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i117, %.split.i112, %RCLASS_EXT_READABLE_LOOKUP.exit17.i108, %bb.an
  %.0.i102 = phi ptr [ %i.ef, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i117 ], [ %i.et, %bb.an ], [ %i.eh, %.split.i112 ], [ %.0.i16.i111, %RCLASS_EXT_READABLE_LOOKUP.exit17.i108 ]
  %i.eu = getelementptr i8, ptr %.0.i102, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !58 ; 2 uses
  %.not26 = icmp eq i64 %i.ev, 0
  br i1 %.not26, label %add_instance_method_list.exit98._crit_edge, label %.lr.ph127, !llvm.loop !139

add_instance_method_list.exit98._crit_edge:       ; preds = %RCLASS_EXT_READABLE.exit118, %add_instance_method_list.exit98, %bb.ab
  %i.ew = load ptr, ptr %5, align 8, !tbaa !135
  %i.ex = getelementptr i8, ptr %i.ew, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !140
  %i.ez = call i64 @rb_ary_new_capa(i64 noundef %i.ey) #18 ; 2 uses
  %i.fa = load ptr, ptr %5, align 8, !tbaa !135
  %i.fb = call i32 @rb_st_foreach(ptr noundef %i.fa, ptr noundef %4, i64 noundef %i.ez) #18 ; 0 uses
  %i.fc = load ptr, ptr %5, align 8, !tbaa !135
  call void @rb_st_free_table(ptr noundef %i.fc) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret i64 %i.ez
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @ins_methods_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = trunc i64 %1 to i32
  switch i32 %i.a, label %bb.b [
    i32 0, label %bb.c
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_id2sym(i64 noundef %0) #18
  %i.c = tail call i64 @rb_ary_push(i64 noundef %2, i64 noundef %i.b) #18 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_class_protected_instance_methods(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @class_instance_method_list(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0, ptr noundef nonnull @ins_methods_prot_i)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @ins_methods_prot_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = and i64 %1, 4294967295
  %i.b = icmp eq i64 %i.a, 3
  br i1 %i.b, label %bb.b, label %ins_methods_type_i.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_id2sym(i64 noundef %0) #18
  %i.d = tail call i64 @rb_ary_push(i64 noundef %2, i64 noundef %i.c) #18 ; 0 uses
  br label %ins_methods_type_i.exit

ins_methods_type_i.exit:                          ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_class_private_instance_methods(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @class_instance_method_list(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0, ptr noundef nonnull @ins_methods_priv_i)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @ins_methods_priv_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = and i64 %1, 4294967295
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %ins_methods_type_i.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_id2sym(i64 noundef %0) #18
  %i.d = tail call i64 @rb_ary_push(i64 noundef %2, i64 noundef %i.c) #18 ; 0 uses
  br label %ins_methods_type_i.exit

ins_methods_type_i.exit:                          ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_class_public_instance_methods(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @class_instance_method_list(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef 0, ptr noundef nonnull @ins_methods_pub_i)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @ins_methods_pub_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = and i64 %1, 4294967295
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %bb.b, label %ins_methods_type_i.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_id2sym(i64 noundef %0) #18
  %i.d = tail call i64 @rb_ary_push(i64 noundef %2, i64 noundef %i.c) #18 ; 0 uses
  br label %ins_methods_type_i.exit

ins_methods_type_i.exit:                          ; preds = %bb.a, %bb.b
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_class_undefined_instance_methods(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 0, ptr %i.a, align 8, !tbaa !17
  %i.b = call fastcc i64 @class_instance_method_list(i32 noundef 1, ptr noundef nonnull %i.a, i64 noundef %0, i32 noundef 0, ptr noundef nonnull @ins_methods_undef_i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @ins_methods_undef_i(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = and i64 %1, 4294967295
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %ins_methods_type_i.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @rb_id2sym(i64 noundef %0) #18
  %i.d = tail call i64 @rb_ary_push(i64 noundef %2, i64 noundef %i.c) #18 ; 0 uses
  br label %ins_methods_type_i.exit

ins_methods_type_i.exit:                          ; preds = %bb.a, %bb.b
  ret i32 0
}
end_hunk_1
begin_hunk_2_@rb_obj_singleton_methods:bb.a
  %.not.i.i12.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i12.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.m

bb.m:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.ak = load i64, ptr %i.ac, align 8, !tbaa !11
  %i.al = call i32 @rb_st_lookup(ptr noundef nonnull %i.aj, i64 noundef %i.ak, ptr noundef nonnull %i.e) #18
  %.not5.i.i13.i = icmp eq i32 %i.al, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = load i64, ptr %i.e, align 8, !tbaa !17
  %i.an = inttoptr i64 %i.am to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.n, %bb.m, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.an, %bb.n ], [ null, %bb.m ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.ao = getelementptr i8, ptr %i.v, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.ao, ptr %.0.i.i14.i
  br label %RCLASS_EXT_READABLE.exit

bb.o:                                             ; preds = %bb.l
  %i.ap = getelementptr i8, ptr %i.v, i64 24
  br label %RCLASS_EXT_READABLE.exit

RCLASS_EXT_READABLE.exit:                         ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i, %.split.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i, %bb.o
  %.0.i37 = phi ptr [ %i.ab, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i ], [ %i.ap, %bb.o ], [ %i.ad, %.split.i ], [ %.0.i16.i, %RCLASS_EXT_READABLE_LOOKUP.exit17.i ]
  %i.aq = getelementptr i8, ptr %.0.i37, i64 96
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !63 ; 2 uses
  %i.as = call ptr @rb_st_init_numtable() #18
  store ptr %i.as, ptr %3, align 8, !tbaa !135
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.0, ptr %i.at, align 8, !tbaa !137
  %.not32 = icmp eq i64 %.0.i36, 0
  br i1 %.not32, label %.critedge, label %bb.p

bb.p:                                             ; preds = %RCLASS_EXT_READABLE.exit
  %i.au = and i64 %.0.i36, 7
  %.not135 = icmp eq i64 %i.au, 0
  br i1 %.not135, label %rbimpl_RB_TYPE_P_fastpath.exit.i38, label %RCLASS_SINGLETON_P.exit39.thread

rbimpl_RB_TYPE_P_fastpath.exit.i38:               ; preds = %bb.p
  %i.av = load i64, ptr %i.v, align 8, !tbaa !19
  %i.aw = and i64 %i.av, 8223
  %or.cond132 = icmp eq i64 %i.aw, 8194
  br i1 %or.cond132, label %bb.q, label %RCLASS_SINGLETON_P.exit39.thread

bb.q:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i38
  %i.ax = inttoptr i64 %i.ar to ptr               ; 7 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !19
  %i.az = and i64 %i.ay, 65536
  %.not.i.i40 = icmp eq i64 %i.az, 0
  br i1 %.not.i.i40, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i58, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i41

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i41:        ; preds = %bb.q
  %i.ba = getelementptr i8, ptr %i.ax, i64 160    ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !21
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i58, label %bb.r

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i58: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i41, %bb.q
  %i.bd = getelementptr i8, ptr %i.ax, i64 24
  br label %RCLASS_EXT_READABLE.exit59

bb.r:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i41
  %i.be = call ptr @rb_current_box() #18          ; 3 uses
  %.not.i42 = icmp eq ptr %i.be, null
  br i1 %.not.i42, label %.split.i53, label %bb.s

.split.i53:                                       ; preds = %bb.r
  %i.bf = getelementptr i8, ptr %i.ax, i64 24
  br label %RCLASS_EXT_READABLE.exit59

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr i8, ptr %i.be, i64 128
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !75, !range !76, !noundef !77
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %.split7.i44, label %bb.v

.split7.i44:                                      ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.bj = load i64, ptr %i.ax, align 8, !tbaa !19
  %i.bk = and i64 %i.bj, 65536
  %.not.i.i.i10.i45 = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i10.i45, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i49, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i46

RCLASS_CLASSEXT_TBL.exit.i.i11.i46:               ; preds = %.split7.i44
  %i.bl = load ptr, ptr %i.ba, align 8, !tbaa !21 ; 2 uses
  %.not.i.i12.i47 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i12.i47, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i49, label %bb.t

bb.t:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i46
  %i.bm = load i64, ptr %i.be, align 8, !tbaa !11
  %i.bn = call i32 @rb_st_lookup(ptr noundef nonnull %i.bl, i64 noundef %i.bm, ptr noundef nonnull %i.d) #18
  %.not5.i.i13.i48 = icmp eq i32 %i.bn, 0
  br i1 %.not5.i.i13.i48, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i49, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = load i64, ptr %i.d, align 8, !tbaa !17
  %i.bp = inttoptr i64 %i.bo to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i49

RCLASS_EXT_READABLE_LOOKUP.exit17.i49:            ; preds = %bb.u, %bb.t, %RCLASS_CLASSEXT_TBL.exit.i.i11.i46, %.split7.i44
  %.0.i.i14.i50 = phi ptr [ %i.bp, %bb.u ], [ null, %bb.t ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i46 ], [ null, %.split7.i44 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %.not.i15.i51 = icmp eq ptr %.0.i.i14.i50, null
  %i.bq = getelementptr i8, ptr %i.ax, i64 24
  %.0.i16.i52 = select i1 %.not.i15.i51, ptr %i.bq, ptr %.0.i.i14.i50
  br label %RCLASS_EXT_READABLE.exit59

bb.v:                                             ; preds = %bb.s
  %i.br = getelementptr i8, ptr %i.ax, i64 24
  br label %RCLASS_EXT_READABLE.exit59

RCLASS_EXT_READABLE.exit59:                       ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i58, %.split.i53, %RCLASS_EXT_READABLE_LOOKUP.exit17.i49, %bb.v
  %.0.i43 = phi ptr [ %i.bd, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i58 ], [ %i.br, %bb.v ], [ %i.bf, %.split.i53 ], [ %.0.i16.i52, %RCLASS_EXT_READABLE_LOOKUP.exit17.i49 ]
  %i.bs = getelementptr i8, ptr %.0.i43, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !32 ; 2 uses
  %.not33 = icmp eq ptr %i.bt, null
  br i1 %.not33, label %bb.x, label %bb.w

bb.w:                                             ; preds = %RCLASS_EXT_READABLE.exit59
  call void @rb_id_table_foreach(ptr noundef nonnull %i.bt, ptr noundef nonnull @method_entry_i, ptr noundef nonnull %3) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %RCLASS_EXT_READABLE.exit59
  %i.bu = load i64, ptr %i.v, align 8, !tbaa !19
  %i.bv = and i64 %i.bu, 65536
  %.not.i.i60 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i60, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i78, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i61

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i61:        ; preds = %bb.x
  %i.bw = getelementptr i8, ptr %i.v, i64 160     ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !21
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i78, label %bb.y

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i78: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i61, %bb.x
  %i.bz = getelementptr i8, ptr %i.v, i64 24
  br label %RCLASS_EXT_READABLE.exit79

bb.y:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i61
  %i.ca = call ptr @rb_current_box() #18          ; 3 uses
  %.not.i62 = icmp eq ptr %i.ca, null
  br i1 %.not.i62, label %.split.i73, label %bb.z

.split.i73:                                       ; preds = %bb.y
  %i.cb = getelementptr i8, ptr %i.v, i64 24
  br label %RCLASS_EXT_READABLE.exit79

bb.z:                                             ; preds = %bb.y
  %i.cc = getelementptr i8, ptr %i.ca, i64 128
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !75, !range !76, !noundef !77
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %.split7.i64, label %bb.ac

.split7.i64:                                      ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.cf = load i64, ptr %i.v, align 8, !tbaa !19
  %i.cg = and i64 %i.cf, 65536
  %.not.i.i.i10.i65 = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i.i10.i65, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i69, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i66

RCLASS_CLASSEXT_TBL.exit.i.i11.i66:               ; preds = %.split7.i64
  %i.ch = load ptr, ptr %i.bw, align 8, !tbaa !21 ; 2 uses
  %.not.i.i12.i67 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i12.i67, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i69, label %bb.aa

bb.aa:                                            ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i66
  %i.ci = load i64, ptr %i.ca, align 8, !tbaa !11
  %i.cj = call i32 @rb_st_lookup(ptr noundef nonnull %i.ch, i64 noundef %i.ci, ptr noundef nonnull %i.c) #18
  %.not5.i.i13.i68 = icmp eq i32 %i.cj, 0
  br i1 %.not5.i.i13.i68, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i69, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ck = load i64, ptr %i.c, align 8, !tbaa !17
  %i.cl = inttoptr i64 %i.ck to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i69

RCLASS_EXT_READABLE_LOOKUP.exit17.i69:            ; preds = %bb.ab, %bb.aa, %RCLASS_CLASSEXT_TBL.exit.i.i11.i66, %.split7.i64
  %.0.i.i14.i70 = phi ptr [ %i.cl, %bb.ab ], [ null, %bb.aa ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i66 ], [ null, %.split7.i64 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %.not.i15.i71 = icmp eq ptr %.0.i.i14.i70, null
  %i.cm = getelementptr i8, ptr %i.v, i64 24
  %.0.i16.i72 = select i1 %.not.i15.i71, ptr %i.cm, ptr %.0.i.i14.i70
  br label %RCLASS_EXT_READABLE.exit79

bb.ac:                                            ; preds = %bb.z
  %i.cn = getelementptr i8, ptr %i.v, i64 24
  br label %RCLASS_EXT_READABLE.exit79

RCLASS_EXT_READABLE.exit79:                       ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i78, %.split.i73, %RCLASS_EXT_READABLE_LOOKUP.exit17.i69, %bb.ac
  %.0.i63 = phi ptr [ %i.bz, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i78 ], [ %i.cn, %bb.ac ], [ %i.cb, %.split.i73 ], [ %.0.i16.i72, %RCLASS_EXT_READABLE_LOOKUP.exit17.i69 ]
  %i.co = getelementptr i8, ptr %.0.i63, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !58
  br label %RCLASS_SINGLETON_P.exit39.thread

RCLASS_SINGLETON_P.exit39.thread:                 ; preds = %bb.p, %rbimpl_RB_TYPE_P_fastpath.exit.i38, %RCLASS_EXT_READABLE.exit79
  %.026 = phi i64 [ %i.cp, %RCLASS_EXT_READABLE.exit79 ], [ %.0.i36, %bb.p ], [ %.0.i36, %rbimpl_RB_TYPE_P_fastpath.exit.i38 ] ; 2 uses
  %4 = trunc nuw i32 %.0 to i1
  %i.cq = icmp ne i64 %.026, 0
  %or.cond = select i1 %4, i1 %i.cq, i1 false
  br i1 %or.cond, label %.preheader, label %.critedge

.preheader:                                       ; preds = %RCLASS_SINGLETON_P.exit39.thread, %RCLASS_EXT_READABLE.exit121
  %.1 = phi i64 [ %i.en, %RCLASS_EXT_READABLE.exit121 ], [ %.026, %RCLASS_SINGLETON_P.exit39.thread ] ; 3 uses
  %i.cr = and i64 %.1, 7
  %.not136 = icmp eq i64 %i.cr, 0
  br i1 %.not136, label %rbimpl_RB_TYPE_P_fastpath.exit.i80, label %.critedge

rbimpl_RB_TYPE_P_fastpath.exit.i80:               ; preds = %.preheader
  %i.cs = inttoptr i64 %.1 to ptr                 ; 14 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !19 ; 3 uses
  %i.cu = and i64 %i.ct, 8223
  %or.cond134 = icmp eq i64 %i.cu, 8194
  %i.cv = and i64 %i.ct, 31
  %i.cw = icmp eq i64 %i.cv, 28
  %or.cond154 = or i1 %or.cond134, %i.cw
  br i1 %or.cond154, label %.critedge2, label %.critedge

.critedge2:                                       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i80
  %.not34 = icmp eq i64 %.1, %i.ar
  br i1 %.not34, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %.critedge2
  %i.cx = and i64 %i.ct, 65536
  %.not.i.i82 = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i82, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i100, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i83

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i83:        ; preds = %bb.ad
  %i.cy = getelementptr i8, ptr %i.cs, i64 160    ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !21
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i100, label %bb.ae

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i100: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i83, %bb.ad
  %i.db = getelementptr i8, ptr %i.cs, i64 24
  br label %RCLASS_EXT_READABLE.exit101

bb.ae:                                            ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i83
  %i.dc = call ptr @rb_current_box() #18          ; 3 uses
  %.not.i84 = icmp eq ptr %i.dc, null
  br i1 %.not.i84, label %.split.i95, label %bb.af

.split.i95:                                       ; preds = %bb.ae
  %i.dd = getelementptr i8, ptr %i.cs, i64 24
  br label %RCLASS_EXT_READABLE.exit101

bb.af:                                            ; preds = %bb.ae
  %i.de = getelementptr i8, ptr %i.dc, i64 128
  %i.df = load i8, ptr %i.de, align 8, !tbaa !75, !range !76, !noundef !77
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %.split7.i86, label %bb.ai

.split7.i86:                                      ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.dh = load i64, ptr %i.cs, align 8, !tbaa !19
  %i.di = and i64 %i.dh, 65536
  %.not.i.i.i10.i87 = icmp eq i64 %i.di, 0
  br i1 %.not.i.i.i10.i87, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i91, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i88

RCLASS_CLASSEXT_TBL.exit.i.i11.i88:               ; preds = %.split7.i86
  %i.dj = load ptr, ptr %i.cy, align 8, !tbaa !21 ; 2 uses
  %.not.i.i12.i89 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i12.i89, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i91, label %bb.ag

bb.ag:                                            ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i88
  %i.dk = load i64, ptr %i.dc, align 8, !tbaa !11
  %i.dl = call i32 @rb_st_lookup(ptr noundef nonnull %i.dj, i64 noundef %i.dk, ptr noundef nonnull %i.b) #18
  %.not5.i.i13.i90 = icmp eq i32 %i.dl, 0
  br i1 %.not5.i.i13.i90, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i91, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dm = load i64, ptr %i.b, align 8, !tbaa !17
  %i.dn = inttoptr i64 %i.dm to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i91

RCLASS_EXT_READABLE_LOOKUP.exit17.i91:            ; preds = %bb.ah, %bb.ag, %RCLASS_CLASSEXT_TBL.exit.i.i11.i88, %.split7.i86
  %.0.i.i14.i92 = phi ptr [ %i.dn, %bb.ah ], [ null, %bb.ag ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i88 ], [ null, %.split7.i86 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %.not.i15.i93 = icmp eq ptr %.0.i.i14.i92, null
  %i.do = getelementptr i8, ptr %i.cs, i64 24
  %.0.i16.i94 = select i1 %.not.i15.i93, ptr %i.do, ptr %.0.i.i14.i92
  br label %RCLASS_EXT_READABLE.exit101

bb.ai:                                            ; preds = %bb.af
  %i.dp = getelementptr i8, ptr %i.cs, i64 24
  br label %RCLASS_EXT_READABLE.exit101

RCLASS_EXT_READABLE.exit101:                      ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i100, %.split.i95, %RCLASS_EXT_READABLE_LOOKUP.exit17.i91, %bb.ai
  %.0.i85 = phi ptr [ %i.db, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i100 ], [ %i.dp, %bb.ai ], [ %i.dd, %.split.i95 ], [ %.0.i16.i94, %RCLASS_EXT_READABLE_LOOKUP.exit17.i91 ]
  %i.dq = getelementptr i8, ptr %.0.i85, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !32 ; 2 uses
  %.not35 = icmp eq ptr %i.dr, null
  br i1 %.not35, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %RCLASS_EXT_READABLE.exit101
  call void @rb_id_table_foreach(ptr noundef nonnull %i.dr, ptr noundef nonnull @method_entry_i, ptr noundef nonnull %3) #18
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %RCLASS_EXT_READABLE.exit101, %.critedge2
  %i.ds = load i64, ptr %i.cs, align 8, !tbaa !19
  %i.dt = and i64 %i.ds, 65536
  %.not.i.i102 = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i102, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i120, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i103

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i103:       ; preds = %bb.ak
  %i.du = getelementptr i8, ptr %i.cs, i64 160    ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !21
  %i.dw = icmp eq ptr %i.dv, null
  br i1 %i.dw, label %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i120, label %bb.al

RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i120: ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i103, %bb.ak
  %i.dx = getelementptr i8, ptr %i.cs, i64 24
  br label %RCLASS_EXT_READABLE.exit121

bb.al:                                            ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i103
  %i.dy = call ptr @rb_current_box() #18          ; 3 uses
  %.not.i104 = icmp eq ptr %i.dy, null
  br i1 %.not.i104, label %.split.i115, label %bb.am

.split.i115:                                      ; preds = %bb.al
  %i.dz = getelementptr i8, ptr %i.cs, i64 24
  br label %RCLASS_EXT_READABLE.exit121

bb.am:                                            ; preds = %bb.al
  %i.ea = getelementptr i8, ptr %i.dy, i64 128
  %i.eb = load i8, ptr %i.ea, align 8, !tbaa !75, !range !76, !noundef !77
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %.split7.i106, label %bb.ap

.split7.i106:                                     ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ed = load i64, ptr %i.cs, align 8, !tbaa !19
  %i.ee = and i64 %i.ed, 65536
  %.not.i.i.i10.i107 = icmp eq i64 %i.ee, 0
  br i1 %.not.i.i.i10.i107, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i111, label %RCLASS_CLASSEXT_TBL.exit.i.i11.i108

RCLASS_CLASSEXT_TBL.exit.i.i11.i108:              ; preds = %.split7.i106
  %i.ef = load ptr, ptr %i.du, align 8, !tbaa !21 ; 2 uses
  %.not.i.i12.i109 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i12.i109, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i111, label %bb.an

bb.an:                                            ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i108
  %i.eg = load i64, ptr %i.dy, align 8, !tbaa !11
  %i.eh = call i32 @rb_st_lookup(ptr noundef nonnull %i.ef, i64 noundef %i.eg, ptr noundef nonnull %i.a) #18
  %.not5.i.i13.i110 = icmp eq i32 %i.eh, 0
  br i1 %.not5.i.i13.i110, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i111, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ei = load i64, ptr %i.a, align 8, !tbaa !17
  %i.ej = inttoptr i64 %i.ei to ptr
  br label %RCLASS_EXT_READABLE_LOOKUP.exit17.i111

RCLASS_EXT_READABLE_LOOKUP.exit17.i111:           ; preds = %bb.ao, %bb.an, %RCLASS_CLASSEXT_TBL.exit.i.i11.i108, %.split7.i106
  %.0.i.i14.i112 = phi ptr [ %i.ej, %bb.ao ], [ null, %bb.an ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i108 ], [ null, %.split7.i106 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not.i15.i113 = icmp eq ptr %.0.i.i14.i112, null
  %i.ek = getelementptr i8, ptr %i.cs, i64 24
  %.0.i16.i114 = select i1 %.not.i15.i113, ptr %i.ek, ptr %.0.i.i14.i112
  br label %RCLASS_EXT_READABLE.exit121

bb.ap:                                            ; preds = %bb.am
  %i.el = getelementptr i8, ptr %i.cs, i64 24
  br label %RCLASS_EXT_READABLE.exit121

RCLASS_EXT_READABLE.exit121:                      ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i120, %.split.i115, %RCLASS_EXT_READABLE_LOOKUP.exit17.i111, %bb.ap
  %.0.i105 = phi ptr [ %i.dx, %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.thread.i120 ], [ %i.el, %bb.ap ], [ %i.dz, %.split.i115 ], [ %.0.i16.i114, %RCLASS_EXT_READABLE_LOOKUP.exit17.i111 ]
  %i.em = getelementptr i8, ptr %.0.i105, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !58 ; 2 uses
  %.old3.not = icmp eq i64 %i.en, 0
  br i1 %.old3.not, label %.critedge, label %.preheader

.critedge:                                        ; preds = %.preheader, %RCLASS_EXT_READABLE.exit121, %rbimpl_RB_TYPE_P_fastpath.exit.i80, %RCLASS_EXT_READABLE.exit, %RCLASS_SINGLETON_P.exit39.thread
  %i.eo = load ptr, ptr %3, align 8, !tbaa !135
  %i.ep = getelementptr i8, ptr %i.eo, i64 16
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !140
  %i.er = call i64 @rb_ary_new_capa(i64 noundef %i.eq) #18 ; 2 uses
  %i.es = load ptr, ptr %3, align 8, !tbaa !135
  %i.et = call i32 @rb_st_foreach(ptr noundef %i.es, ptr noundef nonnull @ins_methods_i, i64 noundef %i.er) #18 ; 0 uses
  %i.eu = load ptr, ptr %3, align 8, !tbaa !135
  call void @rb_st_free_table(ptr noundef %i.eu) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret i64 %i.er
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_obj_protected_methods(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  %i.b = and i64 %2, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %2 to ptr
  %i.f = getelementptr i8, ptr %i.e, i64 8
  br label %rb_class_of.exit

end_hunk_2
