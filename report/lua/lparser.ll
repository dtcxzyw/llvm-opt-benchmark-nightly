Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lparser?download=true
inline.NumInlined: 267
inline.NumDeleted: 76
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@funcargs:bb.a
  call void @luaX_next(ptr noundef nonnull %0) #10
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  call fastcc void @constructor(ptr noundef %0, ptr noundef %2)
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  tail call void @luaX_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #11
  unreachable

bb.k:                                             ; preds = %bb.i, %check_match.exit
  %.pr38 = load i32, ptr %2, align 8, !tbaa !113  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !55  ; 3 uses
  %i.ab = add i32 %.pr38, -21
  %or.cond5 = icmp ult i32 %i.ab, 2
  br i1 %or.cond5, label %bb.o, label %bb.l

.thread41:                                        ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !55
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1, ptr %i.ae, align 8, !tbaa !117
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 -1, ptr %i.af, align 4, !tbaa !114
  store i32 7, ptr %2, align 8, !tbaa !113
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !55
  tail call void @luaX_next(ptr noundef nonnull %0) #10
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !55
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %.not = icmp eq i32 %.pr38, 0
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread41, %bb.l
  %i.aj = phi ptr [ %i.ah, %.thread41 ], [ %i.z, %bb.l ]
  %i.ak = phi i32 [ %i.ai, %.thread41 ], [ %i.aa, %bb.l ]
  call void @luaK_exp2nextreg(ptr noundef %i.b, ptr noundef nonnull %2) #10
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = phi ptr [ %i.aj, %bb.m ], [ %i.z, %bb.l ]
  %i.am = phi i32 [ %i.ak, %bb.m ], [ %i.aa, %bb.l ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 77
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !115
  %i.ap = zext i8 %i.ao to i32
  %i.aq = sub i32 %i.ap, %i.am
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.n
  %i.ar = phi i32 [ %i.am, %bb.n ], [ %i.aa, %bb.k ] ; 2 uses
  %i.as = phi ptr [ %i.al, %bb.n ], [ %i.z, %bb.k ]
  %.0 = phi i32 [ %i.aq, %bb.n ], [ 0, %bb.k ]
  %i.at = call i32 @luaK_codeABCk(ptr noundef %i.b, i32 noundef 68, i32 noundef %i.ar, i32 noundef %.0, i32 noundef 2, i32 noundef 0) #10
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 -1, ptr %i.au, align 8, !tbaa !117
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 -1, ptr %i.av, align 4, !tbaa !114
  store i32 21, ptr %1, align 8, !tbaa !113
  store i32 %i.at, ptr %i.as, align 8, !tbaa !55
  call void @luaK_fixline(ptr noundef %i.b, i32 noundef %i.d) #10
  %i.aw = trunc i32 %i.ar to i8
  %i.ax = add i8 %i.aw, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 77
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

declare hidden void @luaK_dischargevars(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @singlevar(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.expdesc, align 8            ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !96
  %.not.i.i = icmp eq i32 %i.b, 292
  br i1 %.not.i.i, label %str_checkname.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @error_expected(ptr noundef nonnull %0, i32 noundef 292) #9
  unreachable

str_checkname.exit:                               ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !55   ; 6 uses
  tail call void @luaX_next(ptr noundef nonnull %0) #10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i32 -1, ptr %i.g, align 8, !tbaa !117
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  store i32 -1, ptr %i.h, align 4, !tbaa !114
  store i32 11, ptr %1, align 8, !tbaa !113
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i32 -1, ptr %i.i, align 8, !tbaa !55
  tail call fastcc void @singlevaraux(ptr noundef %i.f, ptr noundef %i.d, ptr noundef nonnull %1, i32 noundef 1)
  %i.j = load i32, ptr %1, align 8, !tbaa !113
  %i.k = icmp eq i32 %i.j, 11
  br i1 %i.k, label %bb.c, label %buildvar.exit

bb.c:                                             ; preds = %str_checkname.exit
  %i.l = load i32, ptr %i.i, align 8, !tbaa !55   ; 3 uses
  %i.m = icmp eq i32 %i.l, -2
  br i1 %i.m, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  %i.o = load i8, ptr %i.n, align 1, !tbaa !123
  %i.p = icmp sgt i8 %i.o, -1
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !124
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %i.r, %bb.e ], [ %i.q, %bb.d ]
  tail call void (ptr, ptr, ...) @luaK_semerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.13, ptr noundef %i.s) #11
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !64   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i32 -1, ptr %i.g, align 8, !tbaa !117
  store i32 -1, ptr %i.h, align 4, !tbaa !114
  store i32 -1, ptr %i.i, align 8, !tbaa !55
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !95
  tail call fastcc void @singlevaraux(ptr noundef %i.t, ptr noundef %i.v, ptr noundef nonnull %1, i32 noundef 1)
  %i.w = load i32, ptr %1, align 8, !tbaa !113
  %i.x = icmp eq i32 %i.w, 11
  br i1 %i.x, label %bb.h, label %buildglobal.exit.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  %i.z = load i8, ptr %i.y, align 1, !tbaa !123
  %i.aa = icmp sgt i8 %i.z, -1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  br i1 %i.aa, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !124
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = phi ptr [ %i.ac, %bb.i ], [ %i.ab, %bb.h ]
  tail call void (ptr, ptr, ...) @luaK_semerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %i.ad) #11
  unreachable

buildglobal.exit.i:                               ; preds = %bb.g
  tail call void @luaK_exp2anyregup(ptr noundef %i.t, ptr noundef nonnull %1) #10
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1, ptr %i.ae, align 8, !tbaa !117
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 -1, ptr %i.af, align 4, !tbaa !114
  store i32 7, ptr %2, align 8, !tbaa !113
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.d, ptr %i.ag, align 8, !tbaa !55
  call void @luaK_indexed(ptr noundef %i.t, ptr noundef nonnull %1, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %.not.i = icmp eq i32 %i.l, -1
  br i1 %.not.i, label %buildvar.exit, label %bb.k

bb.k:                                             ; preds = %buildglobal.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !54
  %i.ak = sext i32 %i.l to i64
  %i.al = getelementptr inbounds [24 x i8], ptr %i.aj, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 9
  %i.an = load i8, ptr %i.am, align 1, !tbaa !55
  %i.ao = icmp eq i8 %i.an, 6
  br i1 %i.ao, label %bb.l, label %buildvar.exit

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 11
  store i8 1, ptr %i.ap, align 1, !tbaa !55
  br label %buildvar.exit

buildvar.exit:                                    ; preds = %str_checkname.exit, %buildglobal.exit.i, %bb.k, %bb.l
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @singlevaraux(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.b = load i16, ptr %i.a, align 2, !tbaa !46   ; 2 uses
  %i.c = icmp sgt i16 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %searchvar.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = zext nneg i16 %i.b to i32
  %i.e = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %.lr.ph.i
  %.03151.in.i.a = phi i32 [ %i.d, %.lr.ph.i ], [ %.03151.i, %bb.k ] ; 2 uses
  %.03151.i = add nsw i32 %.03151.in.i.a, -1      ; 4 uses
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !25
  %.val35.i = load i32, ptr %i.f, align 8, !tbaa !47
  %i.h = getelementptr i8, ptr %.val.i, i64 88
  %.val.val.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %.val.val.val.i = load ptr, ptr %.val.val.i, align 8, !tbaa !54
  %i.i = add nsw i32 %.val35.i, %.03151.i         ; 3 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [24 x i8], ptr %.val.val.val.i, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  %i.m = load i8, ptr %i.l, align 1, !tbaa !55    ; 2 uses
  %i.n = icmp ugt i8 %i.m, 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !55   ; 3 uses
  br i1 %i.n, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.g, align 8, !tbaa !55
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %.sink.split.i, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.t = icmp eq ptr %1, %i.p
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1, ptr %i.u, align 8, !tbaa !117
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 -1, ptr %i.v, align 4, !tbaa !114
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.g, align 8, !tbaa !55
  %i.x = icmp eq i32 %i.w, -1
  br i1 %i.x, label %.sink.split.i, label %bb.k

bb.h:                                             ; preds = %bb.b
  %i.y = icmp eq ptr %1, %i.p
  br i1 %i.y, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = icmp eq i8 %i.m, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1, ptr %i.aa, align 8, !tbaa !117
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 -1, ptr %i.ab, align 4, !tbaa !114
  br i1 %i.z, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 9
  store i32 9, ptr %2, align 8, !tbaa !113
  %i.ad = trunc nuw nsw i32 %.03151.i to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 10
  store i16 %i.ad, ptr %i.ae, align 2, !tbaa !55
  %.val.i.i = load ptr, ptr %i.e, align 8, !tbaa !25
  %.val7.i.i = load i32, ptr %i.f, align 8, !tbaa !47
  %i.af = getelementptr i8, ptr %.val.i.i, i64 88
  %.val.val.i.i = load ptr, ptr %i.af, align 8, !tbaa !48
  %.val.val.val.i.i = load ptr, ptr %.val.val.i.i, align 8, !tbaa !54
  %i.ag = add nsw i32 %.val7.i.i, %.03151.i
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [24 x i8], ptr %.val.val.val.i.i, i64 %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 10
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !55
  store i8 %i.ak, ptr %i.g, align 8, !tbaa !55
  %i.al = load i8, ptr %i.ac, align 1, !tbaa !55
  %i.am = icmp eq i8 %i.al, 2
  br i1 %i.am, label %.thread, label %bb.l

.sink.split.i:                                    ; preds = %bb.g, %bb.d
  %.sink.i = phi i32 [ %i.i, %bb.d ], [ -2, %bb.g ]
  store i32 %.sink.i, ptr %i.g, align 8, !tbaa !55
  br label %bb.k

bb.k:                                             ; preds = %.sink.split.i, %bb.h, %bb.g, %bb.d
  %i.an = icmp samesign ugt i32 %.03151.in.i.a, 1
  br i1 %i.an, label %bb.b, label %searchvar.exit

.sink.split:                                      ; preds = %bb.i, %bb.f
  %.sink = phi i32 [ 11, %bb.f ], [ 13, %bb.i ]   ; 2 uses
  store i32 %.sink, ptr %2, align 8, !tbaa !113
  store i32 %i.i, ptr %i.g, align 8, !tbaa !55
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.j
  %i.ao = phi i32 [ 9, %bb.j ], [ %.sink, %.sink.split ]
  %.not29 = icmp eq i32 %3, 0
  br i1 %.not29, label %bb.n, label %bb.aa

.thread:                                          ; preds = %bb.j
  store i32 10, ptr %2, align 8, !tbaa !113
  %.not2969 = icmp eq i32 %3, 0
  br i1 %.not2969, label %bb.m, label %bb.aa

bb.m:                                             ; preds = %.thread
  tail call void @luaK_vapar2local(ptr noundef nonnull %0, ptr noundef nonnull %2) #10
  %.pr = load i32, ptr %2, align 8, !tbaa !113
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ap = phi i32 [ %.pr, %bb.m ], [ %i.ao, %bb.l ]
  %i.aq = icmp eq i32 %i.ap, 9
  br i1 %i.aq, label %bb.o, label %bb.aa

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !55
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %.0.in.i = phi ptr [ %i.at, %bb.o ], [ %.0.i, %bb.p ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !131 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.av = load i16, ptr %i.au, align 8, !tbaa !79
  %i.aw = icmp slt i16 %i.as, %i.av
  br i1 %i.aw, label %bb.p, label %markupval.exit

markupval.exit:                                   ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i, i64 18
  store i8 1, ptr %i.ax, align 2, !tbaa !82
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 79
  store i8 1, ptr %i.ay, align 1, !tbaa !116
  br label %bb.aa

searchvar.exit:                                   ; preds = %bb.k, %bb.a
  %i.az = load ptr, ptr %0, align 8, !tbaa !34
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !88
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 5 uses
  %i.bd = load i8, ptr %i.bc, align 4, !tbaa !86  ; 2 uses
  %.not.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i, label %searchupvalue.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %searchvar.exit
  %wide.trip.count.i = zext i8 %i.bd to i64
  br label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.q, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.q ] ; 3 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !90
  %i.bg = icmp eq ptr %i.bf, %1
  br i1 %i.bg, label %searchupvalue.exit, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i30
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %searchupvalue.exit.thread, label %.lr.ph.i30

searchupvalue.exit:                               ; preds = %.lr.ph.i30
  %i.bh = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge

searchupvalue.exit.thread:                        ; preds = %bb.q, %searchvar.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !65 ; 2 uses
  %.not = icmp eq ptr %i.bj, null
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %searchupvalue.exit.thread
  tail call fastcc void @singlevaraux(ptr noundef nonnull %i.bj, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %searchupvalue.exit.thread
  %i.bk = load i32, ptr %2, align 8, !tbaa !113
  switch i32 %i.bk, label %bb.aa [
    i32 9, label %bb.t
    i32 12, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.bl = load i8, ptr %i.bc, align 4, !tbaa !86  ; 2 uses
  %i.bm = icmp eq i8 %i.bl, -1
  br i1 %i.bm, label %bb.u, label %luaY_checklimit.exit.i.i, !prof !16

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @errorlimit(ptr noundef nonnull readonly %0, i32 noundef 255, ptr noundef nonnull @.str.3) #9
  unreachable

luaY_checklimit.exit.i.i:                         ; preds = %bb.t
  %i.bn = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 3 uses
  %i.bp = zext i8 %i.bl to i32
  %i.bq = load i32, ptr %i.bo, align 8, !tbaa !87 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !25
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !33
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 80 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !88
  %i.bx = tail call ptr @luaM_growaux_(ptr noundef %i.bu, ptr noundef %i.bw, i32 noundef %i.bp, ptr noundef nonnull %i.bo, i32 noundef 16, i32 noundef 255, ptr noundef nonnull @.str.3) #10 ; 7 uses
  store ptr %i.bx, ptr %i.bv, align 8, !tbaa !88
  %i.by = load i32, ptr %i.bo, align 8, !tbaa !87 ; 2 uses
  %i.bz = icmp slt i32 %i.bq, %i.by
  br i1 %i.bz, label %.lr.ph.preheader.i.i, label %allocupvalue.exit.i

.lr.ph.preheader.i.i:                             ; preds = %luaY_checklimit.exit.i.i
  %i.ca = sext i32 %i.bq to i64                   ; 4 uses
  %wide.trip.count.i.i = sext i32 %i.by to i64    ; 3 uses
  %i.cb = sub nsw i64 %wide.trip.count.i.i, %i.ca
  %xtraiter = and i64 %i.cb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ca, %.lr.ph.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %indvars.iv.next.i.i.prol = add nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %i.cc = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %indvars.iv.i.i.prol
  store ptr null, ptr %i.cc, align 8, !tbaa !90
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !211

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.ca, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.cd = sub nsw i64 %i.ca, %wide.trip.count.i.i
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %allocupvalue.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.cf = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %indvars.iv.i.i
  store ptr null, ptr %i.cf, align 8, !tbaa !90
  %i.cg = getelementptr [16 x i8], ptr %i.bx, i64 %indvars.iv.i.i
  %i.ch = getelementptr i8, ptr %i.cg, i64 16
  store ptr null, ptr %i.ch, align 8, !tbaa !90
  %i.ci = getelementptr [16 x i8], ptr %i.bx, i64 %indvars.iv.i.i
  %i.cj = getelementptr i8, ptr %i.ci, i64 32
  store ptr null, ptr %i.cj, align 8, !tbaa !90
  %indvars.iv.next.i.i.3 = add nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %i.ck = getelementptr [16 x i8], ptr %i.bx, i64 %indvars.iv.i.i
  %i.cl = getelementptr i8, ptr %i.ck, i64 48
  store ptr null, ptr %i.cl, align 8, !tbaa !90
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %allocupvalue.exit.i, label %.lr.ph.i.i

allocupvalue.exit.i:                              ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %luaY_checklimit.exit.i.i
  %i.cm = load i8, ptr %i.bc, align 4, !tbaa !86  ; 2 uses
  %i.cn = add i8 %i.cm, 1                         ; 3 uses
  store i8 %i.cn, ptr %i.bc, align 4, !tbaa !86
  %i.co = zext i8 %i.cm to i64
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.co ; 5 uses
  %i.cq = load ptr, ptr %i.bi, align 8, !tbaa !65 ; 3 uses
  %i.cr = load i32, ptr %2, align 8, !tbaa !113
  %i.cs = icmp eq i32 %i.cr, 9
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  br i1 %i.cs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %allocupvalue.exit.i
  store i8 1, ptr %i.ct, align 8, !tbaa !92
  %i.cv = load i8, ptr %i.cu, align 8, !tbaa !55
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 9
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !93
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !55
  %i.cz = sext i16 %i.cy to i32
  %i.da = getelementptr i8, ptr %i.cq, i64 16
  %.val.i33 = load ptr, ptr %i.da, align 8, !tbaa !25
  %i.db = getelementptr i8, ptr %i.cq, i64 64
  %.val24.i = load i32, ptr %i.db, align 8, !tbaa !47
  %i.dc = getelementptr i8, ptr %.val.i33, i64 88
  %.val.val.i34 = load ptr, ptr %i.dc, align 8, !tbaa !48
  %.val.val.val.i35 = load ptr, ptr %.val.val.i34, align 8, !tbaa !54
  %i.dd = add nsw i32 %.val24.i, %i.cz
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [24 x i8], ptr %.val.val.val.i35, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 9
  br label %bb.x

bb.w:                                             ; preds = %allocupvalue.exit.i
  store i8 0, ptr %i.ct, align 8, !tbaa !92
  %i.dh = load i32, ptr %i.cu, align 8, !tbaa !55
  %i.di = trunc i32 %i.dh to i8
end_hunk_0
