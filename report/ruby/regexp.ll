inline.NumInlined: 54
inline.NumDeleted: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pm_regexp_parser_t = type { ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.pm_regexp_options_t = type { [24 x i8] }
%struct.pm_string_t = type { ptr, i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"parse depth limit over\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"target of repeat operator is not specified\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"unmatched close parenthesis\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"end pattern in group\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"end pattern with unmatched parenthesis\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"group name is empty\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"undefined group option\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"empty char-class\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define hidden void @pm_regexp_parse(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.pm_regexp_parser_t, align 8 ; 14 uses
  %i.a = zext i1 %3 to i8
  store ptr %0, ptr %8, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 %2         ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 %i.a, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 33
  %i.h = getelementptr i8, ptr %0, i64 699
  %i.i = load i8, ptr %i.h, align 1, !tbaa !21, !range !38, !noundef !39
  store i8 %i.i, ptr %i.g, align 1, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.j, i8 0, i64 6, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.l = getelementptr i8, ptr %0, i64 520
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41
  store ptr %i.m, ptr %i.k, align 8, !tbaa !42
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %4, ptr %i.n, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr %5, ptr %i.o, align 8, !tbaa !44
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 64
  store ptr %6, ptr %i.p, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 72
  store ptr %7, ptr %i.q, align 8, !tbaa !46
  %.not18.i = icmp ult ptr %1, %i.e
  br i1 %.not18.i, label %.lr.ph.i, label %pm_regexp_parse_pattern.exit

.lr.ph.i:                                         ; preds = %bb.a, %pm_regexp_char_accept.exit.i
  %i.r = call fastcc zeroext i1 @pm_regexp_parse_item(ptr noundef nonnull %8, i16 noundef zeroext 0), !inline_history !47
  br i1 %i.r, label %.preheader.i.i, label %pm_regexp_parse_pattern.exit

.preheader.i.i:                                   ; preds = %.lr.ph.i, %bb.c
  %.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !18 ; 3 uses
  %.val13.i.i = load ptr, ptr %i.d, align 8, !tbaa !19 ; 2 uses
  %.not.i.i = icmp ult ptr %.val.i.i, %.val13.i.i
  br i1 %.not.i.i, label %bb.b, label %pm_regexp_parse_pattern.exit

bb.b:                                             ; preds = %.preheader.i.i
  %i.s = load i8, ptr %.val.i.i, align 1, !tbaa !48
  switch i8 %i.s, label %bb.c [
    i8 124, label %pm_regexp_char_accept.exit.i
    i8 41, label %pm_regexp_parse_pattern.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.t = call fastcc zeroext i1 @pm_regexp_parse_item(ptr noundef nonnull %8, i16 noundef zeroext 0), !inline_history !47
  br i1 %i.t, label %.preheader.i.i, label %pm_regexp_parse_pattern.exit, !llvm.loop !49

pm_regexp_char_accept.exit.i:                     ; preds = %bb.b
  %i.u = getelementptr i8, ptr %.val.i.i, i64 1   ; 2 uses
  store ptr %i.u, ptr %i.c, align 8, !tbaa !18
  %.not.i = icmp ult ptr %i.u, %.val13.i.i
  br i1 %.not.i, label %.lr.ph.i, label %pm_regexp_parse_pattern.exit, !llvm.loop !51

pm_regexp_parse_pattern.exit:                     ; preds = %.lr.ph.i, %pm_regexp_char_accept.exit.i, %.preheader.i.i, %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @pm_regexp_parse_item(ptr noundef nonnull %0, i16 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.pm_regexp_options_t, align 1 ; 12 uses
  %i.a = getelementptr i8, ptr %0, i64 16         ; 33 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 24 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !48
  switch i8 %i.c, label %bb.bo [
    i8 94, label %bb.b
    i8 36, label %bb.b
    i8 92, label %bb.c
    i8 40, label %bb.f
    i8 91, label %bb.bg
    i8 42, label %bb.bi
    i8 63, label %bb.bi
    i8 43, label %bb.bi
    i8 41, label %bb.bj
    i8 35, label %bb.bk
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 1
  store ptr %i.d, ptr %i.a, align 8, !tbaa !18
  tail call fastcc void @pm_regexp_parse_quantifier(ptr noundef %0)
  br label %bb.bt

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 1        ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !18
  %i.f = getelementptr i8, ptr %0, i64 24
  %.val40 = load ptr, ptr %i.f, align 8, !tbaa !19
  %.not77 = icmp ult ptr %i.e, %.val40
  br i1 %.not77, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.b, i64 2
  store ptr %i.g, ptr %i.a, align 8, !tbaa !18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call fastcc void @pm_regexp_parse_quantifier(ptr noundef %0)
  br label %bb.bt

bb.f:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.b, i64 1        ; 7 uses
  store ptr %i.h, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.i, i8 noundef 0, i64 noundef 22, i1 noundef false) #5
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 1, ptr %i.j, align 1, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i8 1, ptr %i.k, align 1, !tbaa !48
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 23 ; 4 uses
  store i8 1, ptr %i.l, align 1, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 2, ptr %i.m, align 1, !tbaa !48
  store i8 2, ptr %2, align 1, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i8 2, ptr %i.n, align 1, !tbaa !48
  %i.o = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %.val4.i58 = load ptr, ptr %i.o, align 8, !tbaa !19 ; 8 uses
  %.not.i59 = icmp ult ptr %i.h, %.val4.i58
  br i1 %.not.i59, label %bb.g, label %pm_regexp_char_accept.exit61.thread

bb.g:                                             ; preds = %bb.f
  %i.p = load i8, ptr %i.h, align 1, !tbaa !48
  %i.q = icmp eq i8 %i.p, 63
  br i1 %i.q, label %bb.h, label %pm_regexp_char_accept.exit61.thread

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %i.b, i64 2        ; 7 uses
  store ptr %i.r, ptr %i.a, align 8, !tbaa !18
  %.not = icmp ult ptr %i.r, %.val4.i58
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr i8, ptr %0, i64 64
  %.val164.i = load ptr, ptr %i.s, align 8, !tbaa !45
  %i.t = getelementptr i8, ptr %0, i64 72
  %.val165.i = load ptr, ptr %i.t, align 8, !tbaa !46
  tail call void %.val164.i(ptr noundef nonnull %i.h, ptr noundef %i.r, ptr noundef nonnull @.str.3, ptr noundef %.val165.i) #5, !inline_history !52
  br label %pm_regexp_parse_group.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.u = load i8, ptr %i.r, align 1, !tbaa !48
  switch i8 %i.u, label %bb.ax [
    i8 35, label %bb.k
    i8 58, label %bb.x
    i8 61, label %bb.x
    i8 33, label %bb.x
    i8 62, label %bb.x
    i8 126, label %bb.x
    i8 60, label %bb.y
    i8 39, label %bb.ah
    i8 40, label %bb.ak
    i8 105, label %.lr.ph.preheader
    i8 109, label %.lr.ph.preheader
    i8 120, label %.lr.ph.preheader
    i8 100, label %.lr.ph.preheader
    i8 97, label %.lr.ph.preheader
    i8 117, label %.lr.ph.preheader
    i8 45, label %.loopexit85
  ]

.lr.ph.preheader:                                 ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j
  br label %.lr.ph

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr i8, ptr %i.b, i64 3        ; 4 uses
  store ptr %i.v, ptr %i.a, align 8, !tbaa !18
  %.not74 = icmp ult ptr %i.v, %.val4.i58
  br i1 %.not74, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr i8, ptr %0, i64 64
  %.val162.i = load ptr, ptr %i.w, align 8, !tbaa !45
  %i.x = getelementptr i8, ptr %0, i64 72
  %.val163.i = load ptr, ptr %i.x, align 8, !tbaa !46
  tail call void %.val162.i(ptr noundef nonnull %i.h, ptr noundef %i.v, ptr noundef nonnull @.str.3, ptr noundef %.val163.i) #5, !inline_history !52
  br label %pm_regexp_parse_group.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.y = getelementptr i8, ptr %0, i64 33
  %i.z = load i8, ptr %i.y, align 1, !tbaa !40, !range !38, !noundef !39
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
end_hunk_0
begin_hunk_1_@pm_regexp_parse_item:bb.a

.lr.ph130:                                        ; preds = %.lr.ph122.split, %bb.ba
  %i.dh = tail call fastcc zeroext i1 @pm_regexp_parse_item(ptr noundef nonnull %0, i16 noundef zeroext %i.dd), !inline_history !62
  br i1 %i.dh, label %.preheader, label %.loopexit

.split.us:                                        ; preds = %.lr.ph122.split.us
  %i.di = getelementptr i8, ptr %0, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !17
  %i.dk = getelementptr i8, ptr %0, i64 64
  %.val14.i = load ptr, ptr %i.dk, align 8, !tbaa !45
  %i.dl = getelementptr i8, ptr %0, i64 72
  %.val15.i = load ptr, ptr %i.dl, align 8, !tbaa !46
  tail call void %.val14.i(ptr noundef %i.dj, ptr noundef nonnull %.val139.i118, ptr noundef nonnull @.str, ptr noundef %.val15.i) #5, !inline_history !63
  br label %.loopexit

.preheader:                                       ; preds = %.lr.ph130, %bb.bc
  %.val.i53 = load ptr, ptr %i.a, align 8, !tbaa !18 ; 5 uses
  %.val13.i = load ptr, ptr %i.o, align 8, !tbaa !19 ; 4 uses
  %.not76 = icmp ult ptr %.val.i53, %.val13.i
  br i1 %.not76, label %bb.bb, label %pm_regexp_char_accept.exit

bb.bb:                                            ; preds = %.preheader
  %i.dm = load i8, ptr %.val.i53, align 1, !tbaa !48
  switch i8 %i.dm, label %bb.bc [
    i8 124, label %bb.bd
    i8 41, label %pm_regexp_char_accept.exit
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.dn = tail call fastcc zeroext i1 @pm_regexp_parse_item(ptr noundef nonnull %0, i16 noundef zeroext %i.dd), !inline_history !62
  br i1 %i.dn, label %.preheader, label %.loopexit, !llvm.loop !49

.loopexit:                                        ; preds = %.lr.ph130, %bb.bc, %.split.us
  store i8 %i.dc, ptr %i.db, align 8, !tbaa !20
  br label %pm_regexp_parse_group.exit.thread

bb.bd:                                            ; preds = %bb.bb
  %i.do = getelementptr i8, ptr %.val.i53, i64 1  ; 2 uses
  store ptr %i.do, ptr %i.a, align 8, !tbaa !18
  br label %pm_regexp_char_accept.exit

pm_regexp_char_accept.exit:                       ; preds = %.preheader, %bb.bb, %bb.bd
  %.val.i = phi ptr [ %i.do, %bb.bd ], [ %.val.i53, %bb.bb ], [ %.val.i53, %.preheader ] ; 4 uses
  %.not75 = icmp ult ptr %.val.i, %.val13.i
  br i1 %.not75, label %bb.ba, label %.critedge8.i, !llvm.loop !61

.critedge8.i:                                     ; preds = %pm_regexp_char_accept.exit, %bb.ba, %.lr.ph122.split.us, %.lr.ph122.split, %bb.az
  %i.dp = phi ptr [ %.val.i117, %bb.az ], [ %.val.i117, %.lr.ph122.split ], [ %.val.i117, %.lr.ph122.split.us ], [ %.val.i, %bb.ba ], [ %.val.i, %pm_regexp_char_accept.exit ] ; 4 uses
  %.val139.i.lcssa = phi ptr [ %.val139.i118, %bb.az ], [ %.val139.i118, %.lr.ph122.split ], [ %.val139.i118, %.lr.ph122.split.us ], [ %.val13.i, %bb.ba ], [ %.val13.i, %pm_regexp_char_accept.exit ]
  store i8 %i.dc, ptr %i.db, align 8, !tbaa !20
  %.not.i47 = icmp ult ptr %i.dp, %.val139.i.lcssa
  br i1 %.not.i47, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.critedge8.i
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !48
  %i.dr = icmp eq i8 %i.dq, 41
  br i1 %i.dr, label %pm_regexp_char_expect.exit, label %bb.bf

pm_regexp_char_expect.exit:                       ; preds = %bb.be
  %i.ds = getelementptr i8, ptr %i.dp, i64 1
  br label %.loopexit82.sink.split

bb.bf:                                            ; preds = %bb.be, %.critedge8.i
  %i.dt = getelementptr i8, ptr %0, i64 64
  %.val154.i = load ptr, ptr %i.dt, align 8, !tbaa !45
  %i.du = getelementptr i8, ptr %0, i64 72
  %.val155.i = load ptr, ptr %i.du, align 8, !tbaa !46
  tail call void %.val154.i(ptr noundef %i.h, ptr noundef %i.dp, ptr noundef nonnull @.str.4, ptr noundef %.val155.i) #5, !inline_history !52
  br label %pm_regexp_parse_group.exit.thread

pm_regexp_parse_group.exit.thread:                ; preds = %bb.ao, %bb.am, %bb.al, %bb.as, %bb.at, %pm_regexp_options_remove.exit, %bb.w, %bb.s, %bb.q, %.loopexit85, %bb.t, %bb.i, %bb.l, %bb.ak, %bb.z, %bb.bf, %.loopexit, %bb.ac, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %bb.bt

.loopexit82.sink.split:                           ; preds = %pm_regexp_char_expect.exit, %bb.p, %bb.ar, %bb.aw
  %.sink191 = phi ptr [ %i.cx, %bb.aw ], [ %i.cp, %bb.ar ], [ %i.ak, %bb.p ], [ %i.ds, %pm_regexp_char_expect.exit ]
  store ptr %.sink191, ptr %i.a, align 8, !tbaa !18
  br label %.loopexit82

.loopexit82:                                      ; preds = %bb.v, %bb.u, %.loopexit82.sink.split
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  tail call fastcc void @pm_regexp_parse_quantifier(ptr noundef %0)
  br label %bb.bt

bb.bg:                                            ; preds = %bb.a
  %i.dv = getelementptr i8, ptr %i.b, i64 1
  store ptr %i.dv, ptr %i.a, align 8, !tbaa !18
  %i.dw = tail call fastcc zeroext i1 @pm_regexp_parse_lbracket(ptr noundef %0, i16 noundef zeroext %1)
  br i1 %i.dw, label %bb.bh, label %bb.bt

bb.bh:                                            ; preds = %bb.bg
  tail call fastcc void @pm_regexp_parse_quantifier(ptr noundef %0)
  br label %bb.bt

bb.bi:                                            ; preds = %bb.a, %bb.a, %bb.a
  %i.dx = getelementptr i8, ptr %i.b, i64 1       ; 2 uses
  store ptr %i.dx, ptr %i.a, align 8, !tbaa !18
  %i.dy = getelementptr i8, ptr %0, i64 64
  %.val43 = load ptr, ptr %i.dy, align 8, !tbaa !45
  %i.dz = getelementptr i8, ptr %0, i64 72
  %.val44 = load ptr, ptr %i.dz, align 8, !tbaa !46
  tail call void %.val43(ptr noundef nonnull %i.b, ptr noundef %i.dx, ptr noundef nonnull @.str.1, ptr noundef %.val44) #5, !inline_history !64
  br label %bb.bt

bb.bj:                                            ; preds = %bb.a
  %i.ea = getelementptr i8, ptr %i.b, i64 1       ; 2 uses
  store ptr %i.ea, ptr %i.a, align 8, !tbaa !18
  %i.eb = getelementptr i8, ptr %0, i64 64
  %.val41 = load ptr, ptr %i.eb, align 8, !tbaa !45
  %i.ec = getelementptr i8, ptr %0, i64 72
  %.val42 = load ptr, ptr %i.ec, align 8, !tbaa !46
  tail call void %.val41(ptr noundef nonnull %i.b, ptr noundef %i.ea, ptr noundef nonnull @.str.2, ptr noundef %.val42) #5, !inline_history !64
  br label %bb.bt

bb.bk:                                            ; preds = %bb.a
  %i.ed = getelementptr i8, ptr %0, i64 32
  %i.ee = load i8, ptr %i.ed, align 8, !tbaa !20, !range !38, !noundef !39
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %i.eg = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %.val11.i = load ptr, ptr %i.eg, align 8, !tbaa !19 ; 3 uses
  %.not.i = icmp ult ptr %i.b, %.val11.i
  br i1 %.not.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.eh = ptrtoint ptr %.val11.i to i64
  %i.ei = ptrtoint ptr %i.b to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = getelementptr i8, ptr %0, i64 33
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !40, !range !38, !noundef !39
  %i.em = trunc nuw i8 %i.el to i1
  %i.en = getelementptr i8, ptr %0, i64 40
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !42
  %i.ep = tail call ptr @pm_memchr(ptr noundef nonnull %i.b, i32 noundef 10, i64 noundef %i.ej, i1 noundef zeroext %i.em, ptr noundef %i.eo) #5 ; 2 uses
  %.not12.i = icmp eq ptr %i.ep, null
  br i1 %.not12.i, label %._crit_edge, label %pm_regexp_char_find.exit

._crit_edge:                                      ; preds = %bb.bm
  %.pre = load ptr, ptr %i.eg, align 8, !tbaa !19
  br label %bb.bn

pm_regexp_char_find.exit:                         ; preds = %bb.bm
  %i.eq = getelementptr i8, ptr %i.ep, i64 1
  store ptr %i.eq, ptr %i.a, align 8, !tbaa !18
  br label %bb.bt

bb.bn:                                            ; preds = %._crit_edge, %bb.bl
  %i.er = phi ptr [ %.pre, %._crit_edge ], [ %.val11.i, %bb.bl ]
  store ptr %i.er, ptr %i.a, align 8, !tbaa !18
  br label %bb.bt

bb.bo:                                            ; preds = %bb.bk, %bb.a
  %i.es = getelementptr i8, ptr %0, i64 33
  %i.et = load i8, ptr %i.es, align 1, !tbaa !40, !range !38, !noundef !39
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ev = getelementptr i8, ptr %0, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !19
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.b to i64
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = tail call i64 @pm_encoding_utf_8_char_width(ptr noundef nonnull %i.b, i64 noundef %i.ez) #5
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.fb = getelementptr i8, ptr %0, i64 40
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !42
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !55
  %i.fe = getelementptr i8, ptr %0, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !19
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = ptrtoint ptr %i.b to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = tail call i64 %i.fd(ptr noundef nonnull %i.b, i64 noundef %i.fi) #5
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.0 = phi i64 [ %i.fj, %bb.bq ], [ %i.fa, %bb.bp ] ; 2 uses
  %.not78 = icmp eq i64 %.0, 0
  br i1 %.not78, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fk = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fl = getelementptr i8, ptr %i.fk, i64 %.0
  store ptr %i.fl, ptr %i.a, align 8, !tbaa !18
  tail call fastcc void @pm_regexp_parse_quantifier(ptr noundef %0)
  br label %bb.bt

bb.bt:                                            ; preds = %pm_regexp_char_find.exit, %pm_regexp_parse_group.exit.thread, %bb.bs, %bb.br, %bb.bn, %bb.bg, %bb.bh, %.loopexit82, %bb.bj, %bb.bi, %bb.e, %bb.b
  %.1 = phi i1 [ true, %pm_regexp_char_find.exit ], [ true, %bb.b ], [ true, %bb.e ], [ false, %bb.bg ], [ false, %pm_regexp_parse_group.exit.thread ], [ true, %bb.bi ], [ true, %bb.bj ], [ true, %.loopexit82 ], [ true, %bb.bh ], [ true, %bb.bn ], [ false, %bb.br ], [ true, %bb.bs ]
  ret i1 %.1
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @pm_regexp_parse_quantifier(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 8 uses
  %i.b = getelementptr i8, ptr %0, i64 24
  %.val6 = load ptr, ptr %i.b, align 8, !tbaa !19 ; 7 uses
  %.val617 = ptrtoint ptr %.val6 to i64           ; 2 uses
  %.promoted = load ptr, ptr %i.a, align 8, !tbaa !18 ; 2 uses
  %.not11 = icmp ult ptr %.promoted, %.val6
  br i1 %.not11, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %pm_regexp_parse_range_quantifier.exit
  %storemerge1012 = phi ptr [ %12, %pm_regexp_parse_range_quantifier.exit ], [ %.promoted, %bb.a ] ; 7 uses
  %storemerge101218 = ptrtoint ptr %storemerge1012 to i64
  %i.c = load i8, ptr %storemerge1012, align 1, !tbaa !48
  switch i8 %i.c, label %._crit_edge [
    i8 42, label %bb.b
    i8 43, label %bb.b
    i8 63, label %bb.b
    i8 123, label %1
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.d = getelementptr i8, ptr %storemerge1012, i64 1
  br label %pm_regexp_parse_range_quantifier.exit.sink.split

1:                                                ; preds = %.lr.ph
  %2 = getelementptr i8, ptr %storemerge1012, i64 1 ; 14 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !18
  %.not35.i = icmp ult ptr %2, %.val6
  br i1 %.not35.i, label %.lr.ph.i, label %pm_regexp_parse_range_quantifier.exit.sink.split

.lr.ph.i:                                         ; preds = %1
  %3 = load i8, ptr %2, align 1, !tbaa !48
  switch i8 %3, label %pm_regexp_parse_range_quantifier.exit [
    i8 48, label %bb.c
    i8 49, label %bb.c
    i8 50, label %bb.c
    i8 51, label %bb.c
    i8 52, label %bb.c
    i8 53, label %bb.c
    i8 54, label %bb.c
    i8 55, label %bb.c
    i8 56, label %bb.c
    i8 57, label %bb.c
    i8 44, label %pm_regexp_parse_range_quantifier.exit.a
  ]

bb.c:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.e = getelementptr i8, ptr %storemerge1012, i64 2 ; 3 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !18
  %.not35.i.a = icmp ult ptr %i.e, %.val6
  br i1 %.not35.i.a, label %.lr.ph.i.preheader, label %pm_regexp_parse_range_quantifier.exit.sink.split

.lr.ph.i.preheader:                               ; preds = %bb.c
  %scevgep = getelementptr i8, ptr %storemerge1012, i64 %.val617
  %i.f = sub i64 0, %storemerge101218
  %scevgep19 = getelementptr i8, ptr %scevgep, i64 %i.f
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.lr.ph.i.preheader, %bb.d
  %4 = phi ptr [ %5, %bb.d ], [ %i.e, %.lr.ph.i.preheader ] ; 4 uses
  %i.g = phi ptr [ %4, %bb.d ], [ %2, %.lr.ph.i.preheader ]
  %i.h = load i8, ptr %4, align 1, !tbaa !48
  switch i8 %i.h, label %pm_regexp_parse_range_quantifier.exit.sink.split [
    i8 48, label %bb.d
    i8 49, label %bb.d
    i8 50, label %bb.d
    i8 51, label %bb.d
    i8 52, label %bb.d
    i8 53, label %bb.d
    i8 54, label %bb.d
    i8 55, label %bb.d
    i8 56, label %bb.d
    i8 57, label %bb.d
    i8 44, label %bb.g
    i8 125, label %bb.e
  ]

bb.d:                                             ; preds = %.lr.ph.i.a, %.lr.ph.i.a, %.lr.ph.i.a, %.lr.ph.i.a, %.lr.ph.i.a, %.lr.ph.i.a, %.lr.ph.i.a, %.lr.ph.i.a, %.lr.ph.i.a, %.lr.ph.i.a
  %5 = getelementptr i8, ptr %4, i64 1            ; 3 uses
  store ptr %5, ptr %i.a, align 8, !tbaa !18
  %exitcond.not = icmp eq ptr %5, %scevgep19
  br i1 %exitcond.not, label %pm_regexp_parse_range_quantifier.exit.sink.split, label %.lr.ph.i.a

bb.e:                                             ; preds = %.lr.ph.i.a
  %i.i = getelementptr i8, ptr %i.g, i64 2
  br label %pm_regexp_parse_range_quantifier.exit.sink.split

bb.f:                                             ; preds = %pm_regexp_parse_range_quantifier.exit.a
  %6 = load i8, ptr %11, align 1, !tbaa !48
  %.off.i = add i8 %6, -48
  %switch.i = icmp ult i8 %.off.i, 10
  br i1 %switch.i, label %bb.g, label %pm_regexp_parse_range_quantifier.exit.sink.split

bb.g:                                             ; preds = %.lr.ph.i.a, %bb.f
  %.lcssa51.sink.i = phi ptr [ %11, %bb.f ], [ %4, %.lr.ph.i.a ] ; 4 uses
  %i.j = getelementptr i8, ptr %.lcssa51.sink.i, i64 1 ; 3 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !18
  %.not.jt2.i15 = icmp ult ptr %i.j, %.val6
  br i1 %.not.jt2.i15, label %switch.hole_check, label %pm_regexp_parse_range_quantifier.exit.sink.split

switch.hole_check:                                ; preds = %bb.g
  %.lcssa51.sink.i28 = ptrtoint ptr %.lcssa51.sink.i to i64
  %scevgep27 = getelementptr i8, ptr %.lcssa51.sink.i, i64 %.val617
  %7 = sub i64 0, %.lcssa51.sink.i28
  %scevgep29 = getelementptr i8, ptr %scevgep27, i64 %7
  br label %switch.lookup

switch.lookup:                                    ; preds = %switch.hole_check, %bb.h
  %8 = phi ptr [ %i.k, %bb.h ], [ %i.j, %switch.hole_check ] ; 3 uses
  %.lcssa51.sink.sink.i16 = phi ptr [ %8, %bb.h ], [ %.lcssa51.sink.i, %switch.hole_check ]
  %switch.load = load i8, ptr %8, align 1, !tbaa !48
  switch i8 %switch.load, label %pm_regexp_parse_range_quantifier.exit.sink.split [
    i8 48, label %bb.h
    i8 49, label %bb.h
    i8 50, label %bb.h
    i8 51, label %bb.h
    i8 52, label %bb.h
    i8 53, label %bb.h
    i8 54, label %bb.h
    i8 55, label %bb.h
    i8 56, label %bb.h
    i8 57, label %bb.h
    i8 125, label %9
  ]

bb.h:                                             ; preds = %switch.lookup, %switch.lookup, %switch.lookup, %switch.lookup, %switch.lookup, %switch.lookup, %switch.lookup, %switch.lookup, %switch.lookup, %switch.lookup
  %i.k = getelementptr i8, ptr %8, i64 1          ; 3 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !18
  %exitcond.not.a = icmp eq ptr %i.k, %scevgep29
  br i1 %exitcond.not.a, label %pm_regexp_parse_range_quantifier.exit.sink.split, label %switch.lookup

9:                                                ; preds = %switch.lookup
  %10 = getelementptr i8, ptr %.lcssa51.sink.sink.i16, i64 2
  br label %pm_regexp_parse_range_quantifier.exit.sink.split

pm_regexp_parse_range_quantifier.exit.a:          ; preds = %.lr.ph.i
  %11 = getelementptr i8, ptr %storemerge1012, i64 2 ; 4 uses
  store ptr %11, ptr %i.a, align 8, !tbaa !18
  %.not.a = icmp ult ptr %11, %.val6
  br i1 %.not.a, label %bb.f, label %pm_regexp_parse_range_quantifier.exit.sink.split

pm_regexp_parse_range_quantifier.exit.sink.split: ; preds = %bb.d, %.lr.ph.i.a, %bb.h, %switch.lookup, %1, %bb.e, %bb.f, %9, %pm_regexp_parse_range_quantifier.exit.a, %bb.g, %bb.c, %bb.b
  %.sink.i.sink = phi ptr [ %i.d, %bb.b ], [ %2, %bb.f ], [ %10, %9 ], [ %2, %pm_regexp_parse_range_quantifier.exit.a ], [ %2, %1 ], [ %i.i, %bb.e ], [ %2, %bb.g ], [ %2, %bb.h ], [ %2, %bb.c ], [ %2, %switch.lookup ], [ %2, %.lr.ph.i.a ], [ %2, %bb.d ] ; 2 uses
  store ptr %.sink.i.sink, ptr %i.a, align 8, !tbaa !18
  br label %pm_regexp_parse_range_quantifier.exit

pm_regexp_parse_range_quantifier.exit:            ; preds = %pm_regexp_parse_range_quantifier.exit.sink.split, %.lr.ph.i
  %12 = phi ptr [ %2, %.lr.ph.i ], [ %.sink.i.sink, %pm_regexp_parse_range_quantifier.exit.sink.split ] ; 2 uses
  %.not = icmp ult ptr %12, %.val6
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !65

._crit_edge:                                      ; preds = %.lr.ph, %pm_regexp_parse_range_quantifier.exit, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @pm_regexp_parse_lbracket(ptr nofree noundef nonnull captures(none) %0, i16 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i16 %1, 4095
  %i.b = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 12 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr i8, ptr %0, i64 64
  %.val24 = load ptr, ptr %i.f, align 8, !tbaa !45
  %i.g = getelementptr i8, ptr %0, i64 72
  %.val25 = load ptr, ptr %i.g, align 8, !tbaa !46
  tail call void %.val24(ptr noundef %i.e, ptr noundef %i.c, ptr noundef nonnull @.str, ptr noundef %.val25) #5, !inline_history !64
  br label %pm_regexp_char_expect.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 16         ; 14 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 14 uses
  %i.j = icmp ult ptr %i.i, %i.c
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %i.i, align 1, !tbaa !48
  %i.l = icmp eq i8 %i.k, 93
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.i, i64 1        ; 2 uses
  store ptr %i.m, ptr %i.h, align 8, !tbaa !18
  %i.n = getelementptr i8, ptr %0, i64 64
  %.val = load ptr, ptr %i.n, align 8, !tbaa !45
  %i.o = getelementptr i8, ptr %0, i64 72
  %.val23 = load ptr, ptr %i.o, align 8, !tbaa !46
  tail call void %.val(ptr noundef nonnull %i.i, ptr noundef %i.m, ptr noundef nonnull @.str.7, ptr noundef %.val23) #5, !inline_history !64
  br label %pm_regexp_char_expect.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.p = getelementptr i8, ptr %i.i, i64 2        ; 4 uses
  %i.q = icmp ult ptr %i.p, %i.c
  br i1 %i.q, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.r = load i8, ptr %i.i, align 1, !tbaa !48
  %i.s = icmp eq i8 %i.r, 91
  br i1 %i.s, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %i.i, i64 1        ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !48
  %i.v = icmp eq i8 %i.u, 58
  br i1 %i.v, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  store ptr %i.t, ptr %i.h, align 8, !tbaa !18
  %.not.i.i = icmp ult ptr %i.t, %i.c
  br i1 %.not.i.i, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.w = load i8, ptr %i.t, align 1, !tbaa !48
  %i.x = icmp eq i8 %i.w, 58
  br i1 %i.x, label %bb.k, label %bb.r

bb.k:                                             ; preds = %bb.j
  store ptr %i.p, ptr %i.h, align 8, !tbaa !18
  %i.y = load i8, ptr %i.p, align 1, !tbaa !48
  %i.z = icmp eq i8 %i.y, 94
  br i1 %i.z, label %bb.l, label %pm_regexp_char_accept.exit.i

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr i8, ptr %i.i, i64 3       ; 2 uses
  store ptr %i.aa, ptr %i.h, align 8, !tbaa !18
  br label %pm_regexp_char_accept.exit.i

pm_regexp_char_accept.exit.i:                     ; preds = %bb.l, %bb.k
  %.val.i10.i = phi ptr [ %i.aa, %bb.l ], [ %i.p, %bb.k ] ; 3 uses
  %.not.i11.i = icmp ult ptr %.val.i10.i, %i.c
  br i1 %.not.i11.i, label %bb.m, label %bb.r

bb.m:                                             ; preds = %pm_regexp_char_accept.exit.i
  %i.ab = ptrtoint ptr %i.c to i64
  %i.ac = ptrtoint ptr %.val.i10.i to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = getelementptr i8, ptr %0, i64 33
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !40, !range !38, !noundef !39
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = getelementptr i8, ptr %0, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !42
  %i.aj = tail call ptr @pm_memchr(ptr noundef %.val.i10.i, i32 noundef 58, i64 noundef %i.ad, i1 noundef zeroext %i.ag, ptr noundef %i.ai) #5 ; 4 uses
  %.not12.i.i = icmp eq ptr %i.aj, null
  %.val4.i30.pre.pre = load ptr, ptr %i.b, align 8, !tbaa !19 ; 7 uses
  br i1 %.not12.i.i, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr i8, ptr %i.aj, i64 1      ; 3 uses
  store ptr %i.ak, ptr %i.h, align 8, !tbaa !18
  %.not.i14.i = icmp ult ptr %i.ak, %.val4.i30.pre.pre
  br i1 %.not.i14.i, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !48
  %i.am = icmp eq i8 %i.al, 93
  br i1 %i.am, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr i8, ptr %i.aj, i64 2      ; 3 uses
  store ptr %i.an, ptr %i.h, align 8, !tbaa !18
  %.not.i19.i = icmp ult ptr %i.an, %.val4.i30.pre.pre
  br i1 %.not.i19.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !48
  %i.ap = icmp eq i8 %i.ao, 93
  br i1 %i.ap, label %pm_regexp_parse_posix_class.exit, label %bb.r

pm_regexp_parse_posix_class.exit:                 ; preds = %bb.q
  %i.aq = getelementptr i8, ptr %i.aj, i64 3
  store ptr %i.aq, ptr %i.h, align 8, !tbaa !18
  br label %pm_regexp_char_expect.exit

bb.r:                                             ; preds = %bb.p, %bb.m, %bb.i, %bb.q, %bb.j, %pm_regexp_char_accept.exit.i, %bb.o, %bb.n
  %.val4.i30.pre = phi ptr [ %.val4.i30.pre.pre, %bb.p ], [ %.val4.i30.pre.pre, %bb.m ], [ %i.c, %bb.i ], [ %.val4.i30.pre.pre, %bb.q ], [ %i.c, %bb.j ], [ %i.c, %pm_regexp_char_accept.exit.i ], [ %.val4.i30.pre.pre, %bb.o ], [ %.val4.i30.pre.pre, %bb.n ]
  store ptr %i.i, ptr %i.h, align 8, !tbaa !18
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.h, %bb.g, %bb.f
  %.val10.i36 = phi ptr [ %.val4.i30.pre, %bb.r ], [ %i.c, %bb.h ], [ %i.c, %bb.g ], [ %i.c, %bb.f ] ; 3 uses
  %.not.i31 = icmp ult ptr %i.i, %.val10.i36
  br i1 %.not.i31, label %bb.t, label %pm_regexp_char_accept.exit

bb.t:                                             ; preds = %bb.s
  %i.ar = load i8, ptr %i.i, align 1, !tbaa !48
  %i.as = icmp eq i8 %i.ar, 94
  br i1 %i.as, label %bb.u, label %pm_regexp_char_accept.exit

bb.u:                                             ; preds = %bb.t
  %i.at = getelementptr i8, ptr %i.i, i64 1       ; 2 uses
  store ptr %i.at, ptr %i.h, align 8, !tbaa !18
  br label %pm_regexp_char_accept.exit

pm_regexp_char_accept.exit:                       ; preds = %bb.s, %bb.t, %bb.u
  %.val9.i35 = phi ptr [ %i.i, %bb.s ], [ %i.i, %bb.t ], [ %i.at, %bb.u ] ; 2 uses
  %.not37 = icmp ult ptr %.val9.i35, %.val10.i36
  br i1 %.not37, label %.lr.ph, label %pm_regexp_char_expect.exit

.lr.ph:                                           ; preds = %pm_regexp_char_accept.exit
  %i.au = add nuw nsw i16 %1, 1
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.aa
  %.val10.i47 = phi ptr [ %.val10.i36, %.lr.ph ], [ %.val10.i, %bb.aa ] ; 5 uses
  %.val9.i38 = phi ptr [ %.val9.i35, %.lr.ph ], [ %.val9.i, %bb.aa ] ; 5 uses
  %i.av = load i8, ptr %.val9.i38, align 1, !tbaa !48
  %.not.i = icmp eq i8 %i.av, 93
  br i1 %.not.i, label %pm_regexp_parse_character_set.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aw = getelementptr i8, ptr %.val9.i38, i64 1 ; 4 uses
  store ptr %i.aw, ptr %i.h, align 8, !tbaa !18
  %i.ax = load i8, ptr %.val9.i38, align 1, !tbaa !48
  switch i8 %i.ax, label %bb.aa [
    i8 91, label %bb.x
    i8 92, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.ay = tail call fastcc zeroext i1 @pm_regexp_parse_lbracket(ptr noundef nonnull %0, i16 noundef zeroext %i.au), !inline_history !66 ; 0 uses
  %.val9.i.pre = load ptr, ptr %i.h, align 8, !tbaa !18
  %.val10.i.pre = load ptr, ptr %i.b, align 8, !tbaa !19
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %.not34 = icmp ult ptr %i.aw, %.val10.i47
  br i1 %.not34, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.az = getelementptr i8, ptr %.val9.i38, i64 2 ; 2 uses
  store ptr %i.az, ptr %i.h, align 8, !tbaa !18
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  %.val10.i = phi ptr [ %.val10.i47, %bb.z ], [ %.val10.i47, %bb.y ], [ %.val10.i.pre, %bb.x ], [ %.val10.i47, %bb.w ] ; 3 uses
  %.val9.i = phi ptr [ %i.az, %bb.z ], [ %i.aw, %bb.y ], [ %.val9.i.pre, %bb.x ], [ %i.aw, %bb.w ] ; 3 uses
  %.not = icmp ult ptr %.val9.i, %.val10.i
  br i1 %.not, label %bb.v, label %pm_regexp_parse_character_set.exit, !llvm.loop !67

pm_regexp_parse_character_set.exit:               ; preds = %bb.v, %bb.aa
  %.val9.i.lcssa.ph = phi ptr [ %.val9.i38, %bb.v ], [ %.val9.i, %bb.aa ] ; 3 uses
  %.val10.i.lcssa.ph = phi ptr [ %.val10.i47, %bb.v ], [ %.val10.i, %bb.aa ]
  %i.ba = icmp ult ptr %.val9.i.lcssa.ph, %.val10.i.lcssa.ph
  br i1 %i.ba, label %bb.ab, label %pm_regexp_char_expect.exit

bb.ab:                                            ; preds = %pm_regexp_parse_character_set.exit
  %i.bb = load i8, ptr %.val9.i.lcssa.ph, align 1, !tbaa !48
  %i.bc = icmp eq i8 %i.bb, 93
end_hunk_1
