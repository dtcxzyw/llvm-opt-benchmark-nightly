inline.NumInlined: 8
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [52 x i8] c"cli_hex2si(): Malformed hexstring: %s (length: %u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"cli_hex2str(): Malformed hexstring: %s (length: %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"cli_hex2num(): Malformed hexstring: %s (length: %d)\0A\00", align 1
@__const.cli_str2hex.HEX = private unnamed_addr constant [16 x i8] c"0123456789abcdef", align 16
@.str.3 = private unnamed_addr constant [30 x i8] c"cli_utf16toascii: length < 2\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"cli_strrcpy: NULL argument\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"hex2int() translation problem (%d)\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @cli_hex2ui(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  %i.b = trunc i64 %i.a to i32                    ; 5 uses
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str, ptr noundef nonnull %0, i32 noundef %i.b) #14
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = lshr exact i32 %i.b, 1
  %i.e = add nuw i32 %i.d, 1
  %i.f = zext i32 %i.e to i64
  %i.g = tail call ptr @cli_calloc(i64 noundef %i.f, i64 noundef 2) #14 ; 8 uses
  %.not54 = icmp eq ptr %i.g, null
  br i1 %.not54, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not94 = icmp eq i32 %i.b, 0
  br i1 %.not94, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.x
  %.04493 = phi i32 [ %i.cd, %bb.x ], [ 0, %.preheader ] ; 3 uses
  %.04692 = phi ptr [ %i.cc, %bb.x ], [ %i.g, %.preheader ] ; 2 uses
  %i.h = zext i32 %.04493 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !8     ; 8 uses
  %i.k = icmp eq i8 %i.j, 63
  %i.l = or disjoint i32 %.04493, 1
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8     ; 6 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.p = icmp eq i8 %i.o, 63
  br i1 %i.p, label %bb.x, label %.thread

bb.e:                                             ; preds = %.lr.ph
  %i.q = sext i8 %i.o to i32                      ; 3 uses
  %i.r = icmp eq i8 %i.o, 63
  br i1 %i.r, label %bb.f, label %bb.j

.thread:                                          ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %i.t = load i8, ptr %i.s, align 1, !tbaa !8     ; 3 uses
  %i.u = sext i8 %i.t to i32
  %i.v = icmp eq i8 %i.t, 63
  br i1 %i.v, label %.thread103, label %.thread104

bb.f:                                             ; preds = %bb.e
  %i.w = zext nneg i8 %i.j to i32
  %i.x = icmp sgt i8 %i.j, -1
  br i1 %i.x, label %.thread103, label %cli_hex2int.exit.thread

.thread103:                                       ; preds = %.thread, %bb.f
  %i.y = phi i32 [ %i.w, %bb.f ], [ 63, %.thread ] ; 2 uses
  %i.z = tail call ptr @__ctype_b_loc() #15
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !9
  %i.ab = zext nneg i32 %i.y to i64               ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !12
  %i.ae = and i16 %i.ad, 2048
  %.not.i = icmp eq i16 %i.ae, 0
  br i1 %.not.i, label %bb.g, label %cli_hex2int.exit

bb.g:                                             ; preds = %.thread103
  %i.af = tail call ptr @__ctype_tolower_loc() #15
  %.pn.i = load ptr, ptr %i.af, align 8, !tbaa !14
  %.020.in.i = getelementptr inbounds nuw [4 x i8], ptr %.pn.i, i64 %i.ab
  %.020.i = load i32, ptr %.020.in.i, align 4, !tbaa !4 ; 3 uses
  %i.ag = add i32 %.020.i, -97
  %or.cond3.i = icmp ult i32 %i.ag, 6
  br i1 %or.cond3.i, label %cli_hex2int.exit.thread77, label %bb.h

cli_hex2int.exit.thread77:                        ; preds = %bb.g
  %i.ah = add nsw i32 %.020.i, -87
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.5, i32 noundef %.020.i) #14
  br label %cli_hex2int.exit.thread

cli_hex2int.exit:                                 ; preds = %.thread103
  %i.ai = add nsw i32 %i.y, -48
  %i.aj = icmp samesign ugt i8 %i.j, 47
  br i1 %i.aj, label %bb.i, label %cli_hex2int.exit.thread

bb.i:                                             ; preds = %cli_hex2int.exit.thread77, %cli_hex2int.exit
  %.0.i79 = phi i32 [ %i.ah, %cli_hex2int.exit.thread77 ], [ %i.ai, %cli_hex2int.exit ]
  %.tr = trunc nuw nsw i32 %.0.i79 to i16
  %i.ak = shl nuw nsw i16 %.tr, 4
  %i.al = or i16 %i.ak, 768
  br label %bb.x

cli_hex2int.exit.thread:                          ; preds = %bb.f, %cli_hex2int.exit, %bb.h
  tail call void @free(ptr noundef %i.g) #14
  br label %.loopexit

bb.j:                                             ; preds = %bb.e
  %i.am = sext i8 %i.j to i32                     ; 2 uses
  switch i8 %i.j, label %bb.o [
    i8 63, label %.thread104
    i8 40, label %bb.x
  ]

.thread104:                                       ; preds = %.thread, %bb.j
  %i.an = phi i8 [ %i.o, %bb.j ], [ %i.t, %.thread ] ; 2 uses
  %i.ao = phi i32 [ %i.q, %bb.j ], [ %i.u, %.thread ] ; 2 uses
  %i.ap = icmp sgt i8 %i.an, -1
  br i1 %i.ap, label %bb.k, label %cli_hex2int.exit61.thread

bb.k:                                             ; preds = %.thread104
  %i.aq = tail call ptr @__ctype_b_loc() #15
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !9
  %i.as = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !12
  %i.av = and i16 %i.au, 2048
  %.not.i56 = icmp eq i16 %i.av, 0
  br i1 %.not.i56, label %bb.l, label %cli_hex2int.exit61

bb.l:                                             ; preds = %bb.k
  %i.aw = tail call ptr @__ctype_tolower_loc() #15
  %.pn.i57 = load ptr, ptr %i.aw, align 8, !tbaa !14
  %.020.in.i58 = getelementptr inbounds nuw [4 x i8], ptr %.pn.i57, i64 %i.as
  %.020.i59 = load i32, ptr %.020.in.i58, align 4, !tbaa !4 ; 3 uses
  %i.ax = add i32 %.020.i59, -97
  %or.cond3.i60 = icmp ult i32 %i.ax, 6
  br i1 %or.cond3.i60, label %cli_hex2int.exit61.thread81, label %bb.m

cli_hex2int.exit61.thread81:                      ; preds = %bb.l
  %i.ay = add nsw i32 %.020.i59, -87
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.5, i32 noundef %.020.i59) #14
  br label %cli_hex2int.exit61.thread

cli_hex2int.exit61:                               ; preds = %bb.k
  %i.az = add nsw i32 %i.ao, -48
  %i.ba = icmp samesign ugt i8 %i.an, 47
  br i1 %i.ba, label %bb.n, label %cli_hex2int.exit61.thread

bb.n:                                             ; preds = %cli_hex2int.exit61.thread81, %cli_hex2int.exit61
  %.0.i5583 = phi i32 [ %i.ay, %cli_hex2int.exit61.thread81 ], [ %i.az, %cli_hex2int.exit61 ]
  %i.bb = trunc nuw nsw i32 %.0.i5583 to i16
  %i.bc = or i16 %i.bb, 1024
  br label %bb.x

cli_hex2int.exit61.thread:                        ; preds = %.thread104, %cli_hex2int.exit61, %bb.m
  tail call void @free(ptr noundef %i.g) #14
  br label %.loopexit

bb.o:                                             ; preds = %bb.j
  %i.bd = icmp sgt i8 %i.j, -1
  br i1 %i.bd, label %bb.p, label %cli_hex2int.exit68.thread

bb.p:                                             ; preds = %bb.o
  %i.be = tail call ptr @__ctype_b_loc() #15
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !9  ; 2 uses
  %i.bg = zext nneg i32 %i.am to i64              ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !12
  %i.bj = and i16 %i.bi, 2048
  %.not.i63 = icmp eq i16 %i.bj, 0
  br i1 %.not.i63, label %bb.q, label %cli_hex2int.exit68

bb.q:                                             ; preds = %bb.p
  %i.bk = tail call ptr @__ctype_tolower_loc() #15
  %.pn.i64 = load ptr, ptr %i.bk, align 8, !tbaa !14
  %.020.in.i65 = getelementptr inbounds nuw [4 x i8], ptr %.pn.i64, i64 %i.bg
  %.020.i66 = load i32, ptr %.020.in.i65, align 4, !tbaa !4 ; 3 uses
  %i.bl = add i32 %.020.i66, -97
  %or.cond3.i67 = icmp ult i32 %i.bl, 6
  br i1 %or.cond3.i67, label %cli_hex2int.exit68.thread85, label %bb.r

cli_hex2int.exit68.thread85:                      ; preds = %bb.q
  %i.bm = add nsw i32 %.020.i66, -87
  br label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.5, i32 noundef %.020.i66) #14
  br label %cli_hex2int.exit68.thread

cli_hex2int.exit68:                               ; preds = %bb.p
  %i.bn = add nsw i32 %i.am, -48
  %i.bo = icmp samesign ugt i8 %i.j, 47
  br i1 %i.bo, label %bb.s, label %cli_hex2int.exit68.thread

bb.s:                                             ; preds = %cli_hex2int.exit68.thread85, %cli_hex2int.exit68
  %.0.i6287 = phi i32 [ %i.bm, %cli_hex2int.exit68.thread85 ], [ %i.bn, %cli_hex2int.exit68 ]
  %i.bp = icmp sgt i8 %i.o, -1
  br i1 %i.bp, label %bb.t, label %cli_hex2int.exit75.thread

bb.t:                                             ; preds = %bb.s
  %i.bq = zext nneg i32 %i.q to i64               ; 2 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !12
  %i.bt = and i16 %i.bs, 2048
  %.not.i70 = icmp eq i16 %i.bt, 0
  br i1 %.not.i70, label %bb.u, label %cli_hex2int.exit75

bb.u:                                             ; preds = %bb.t
  %i.bu = tail call ptr @__ctype_tolower_loc() #15
  %.pn.i71 = load ptr, ptr %i.bu, align 8, !tbaa !14
  %.020.in.i72 = getelementptr inbounds nuw [4 x i8], ptr %.pn.i71, i64 %i.bq
  %.020.i73 = load i32, ptr %.020.in.i72, align 4, !tbaa !4 ; 3 uses
  %i.bv = add i32 %.020.i73, -97
  %or.cond3.i74 = icmp ult i32 %i.bv, 6
  br i1 %or.cond3.i74, label %cli_hex2int.exit75.thread89, label %bb.v

cli_hex2int.exit75.thread89:                      ; preds = %bb.u
  %i.bw = add nsw i32 %.020.i73, -87
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.5, i32 noundef %.020.i73) #14
  br label %cli_hex2int.exit75.thread

cli_hex2int.exit75:                               ; preds = %bb.t
  %i.bx = add nsw i32 %i.q, -48
  %i.by = icmp samesign ugt i8 %i.o, 47
  br i1 %i.by, label %bb.w, label %cli_hex2int.exit75.thread

bb.w:                                             ; preds = %cli_hex2int.exit75.thread89, %cli_hex2int.exit75
  %.0.i6991 = phi i32 [ %i.bw, %cli_hex2int.exit75.thread89 ], [ %i.bx, %cli_hex2int.exit75 ]
  %i.bz = shl nuw nsw i32 %.0.i6287, 4
  %i.ca = add nuw nsw i32 %.0.i6991, %i.bz
  %i.cb = trunc nuw nsw i32 %i.ca to i16
  br label %bb.x

cli_hex2int.exit75.thread:                        ; preds = %bb.s, %cli_hex2int.exit75, %bb.v
  tail call void @free(ptr noundef %i.g) #14
  br label %.loopexit

cli_hex2int.exit68.thread:                        ; preds = %bb.o, %cli_hex2int.exit68, %bb.r
  tail call void @free(ptr noundef %i.g) #14
  br label %.loopexit

bb.x:                                             ; preds = %bb.j, %bb.d, %bb.i, %bb.w, %bb.n
  %.045 = phi i16 [ %i.cb, %bb.w ], [ %i.al, %bb.i ], [ %i.bc, %bb.n ], [ 256, %bb.d ], [ 512, %bb.j ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.04692, i64 2
  store i16 %.045, ptr %.04692, align 2, !tbaa !12
  %i.cd = add i32 %.04493, 2                      ; 2 uses
  %i.ce = icmp ult i32 %i.cd, %i.b
  br i1 %i.ce, label %.lr.ph, label %.loopexit, !llvm.loop !16

.loopexit:                                        ; preds = %bb.x, %.preheader, %bb.c, %cli_hex2int.exit68.thread, %cli_hex2int.exit75.thread, %cli_hex2int.exit61.thread, %cli_hex2int.exit.thread, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %cli_hex2int.exit.thread ], [ null, %cli_hex2int.exit61.thread ], [ null, %cli_hex2int.exit75.thread ], [ null, %cli_hex2int.exit68.thread ], [ null, %bb.c ], [ %i.g, %.preheader ], [ %i.g, %bb.x ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #2

declare ptr @cli_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @cli_hex2str(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  %i.b = trunc i64 %i.a to i32                    ; 5 uses
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, ptr noundef nonnull %0, i32 noundef %i.b) #14
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = ashr exact i32 %i.b, 1
  %i.e = add nsw i32 %i.d, 1
  %i.f = sext i32 %i.e to i64
  %i.g = tail call ptr @cli_calloc(i64 noundef %i.f, i64 noundef 1) #14 ; 6 uses
  %.not27 = icmp eq ptr %i.g, null
  br i1 %.not27, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.h = icmp sgt i32 %i.b, 0
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.m
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.m ], [ 0, %.preheader ] ; 2 uses
  %.02340 = phi ptr [ %i.an, %bb.m ], [ %i.g, %.preheader ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !8     ; 3 uses
  %i.k = sext i8 %i.j to i32                      ; 2 uses
  %i.l = icmp sgt i8 %i.j, -1
  br i1 %i.l, label %bb.d, label %cli_hex2int.exit.thread

bb.d:                                             ; preds = %.lr.ph
  %i.m = tail call ptr @__ctype_b_loc() #15
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9    ; 2 uses
  %i.o = zext nneg i32 %i.k to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !12
  %i.r = and i16 %i.q, 2048
  %.not.i = icmp eq i16 %i.r, 0
  br i1 %.not.i, label %bb.e, label %cli_hex2int.exit

bb.e:                                             ; preds = %bb.d
  %i.s = tail call ptr @__ctype_tolower_loc() #15
  %.pn.i = load ptr, ptr %i.s, align 8, !tbaa !14
  %.020.in.i = getelementptr inbounds nuw [4 x i8], ptr %.pn.i, i64 %i.o
  %.020.i = load i32, ptr %.020.in.i, align 4, !tbaa !4 ; 3 uses
  %i.t = add i32 %.020.i, -97
  %or.cond3.i = icmp ult i32 %i.t, 6
  br i1 %or.cond3.i, label %cli_hex2int.exit.thread45, label %bb.f

cli_hex2int.exit.thread45:                        ; preds = %bb.e
  %i.u = add nsw i32 %.020.i, -87
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.5, i32 noundef %.020.i) #14
  br label %cli_hex2int.exit.thread

cli_hex2int.exit:                                 ; preds = %bb.d
  %i.v = add nsw i32 %i.k, -48
  %i.w = icmp sgt i8 %i.j, 47
  br i1 %i.w, label %bb.g, label %cli_hex2int.exit.thread

bb.g:                                             ; preds = %cli_hex2int.exit.thread45, %cli_hex2int.exit
  %.0.i47 = phi i32 [ %i.u, %cli_hex2int.exit.thread45 ], [ %i.v, %cli_hex2int.exit ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !8     ; 2 uses
  %i.z = sext i8 %i.y to i32                      ; 2 uses
  %i.aa = icmp sgt i8 %i.y, -1
  br i1 %i.aa, label %bb.h, label %cli_hex2int.exit35.thread

bb.h:                                             ; preds = %bb.g
  %i.ab = zext nneg i32 %i.z to i64               ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !12
  %i.ae = and i16 %i.ad, 2048
  %.not.i30 = icmp eq i16 %i.ae, 0
  br i1 %.not.i30, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = add nsw i32 %i.z, -48
  br label %cli_hex2int.exit35

bb.j:                                             ; preds = %bb.h
  %i.ag = tail call ptr @__ctype_tolower_loc() #15
  %.pn.i31 = load ptr, ptr %i.ag, align 8, !tbaa !14
  %.020.in.i32 = getelementptr inbounds nuw [4 x i8], ptr %.pn.i31, i64 %i.ab
  %.020.i33 = load i32, ptr %.020.in.i32, align 4, !tbaa !4 ; 3 uses
  %i.ah = add i32 %.020.i33, -97
  %or.cond3.i34 = icmp ult i32 %i.ah, 6
  br i1 %or.cond3.i34, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = add nsw i32 %.020.i33, -87
  br label %cli_hex2int.exit35

bb.l:                                             ; preds = %bb.j
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.5, i32 noundef %.020.i33) #14
  br label %cli_hex2int.exit35.thread

cli_hex2int.exit35:                               ; preds = %bb.i, %bb.k
  %.0.i29 = phi i32 [ %i.af, %bb.i ], [ %i.ai, %bb.k ] ; 2 uses
  %sext28.mask = and i32 %.0.i29, 128
  %i.aj = icmp eq i32 %sext28.mask, 0
  br i1 %i.aj, label %bb.m, label %cli_hex2int.exit35.thread

bb.m:                                             ; preds = %cli_hex2int.exit35
  %i.ak = shl nuw nsw i32 %.0.i47, 4
  %i.al = add nuw nsw i32 %.0.i29, %i.ak
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %.02340, i64 1
  store i8 %i.am, ptr %.02340, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ao = trunc nuw i64 %indvars.iv.next to i32
  %i.ap = icmp slt i32 %i.ao, %i.b
  br i1 %i.ap, label %.lr.ph, label %.loopexit, !llvm.loop !18

cli_hex2int.exit35.thread:                        ; preds = %bb.g, %cli_hex2int.exit35, %bb.l
  tail call void @free(ptr noundef %i.g) #14
  br label %.loopexit

cli_hex2int.exit.thread:                          ; preds = %.lr.ph, %cli_hex2int.exit, %bb.f
  tail call void @free(ptr noundef %i.g) #14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.preheader, %bb.c, %cli_hex2int.exit.thread, %cli_hex2int.exit35.thread, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %cli_hex2int.exit35.thread ], [ null, %cli_hex2int.exit.thread ], [ null, %bb.c ], [ %i.g, %.preheader ], [ %i.g, %bb.m ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cli_hex2num(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13 ; 2 uses
  %i.b = trunc i64 %i.a to i32                    ; 3 uses
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %i.b, 0
  br i1 %i.d, label %.lr.ph.preheader, label %cli_hex2int.exit.thread

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = and i64 %i.a, 2147483647
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.2, ptr noundef nonnull %0, i32 noundef %i.b) #14
  br label %cli_hex2int.exit.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.01320 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.u, %bb.f ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8     ; 3 uses
  %i.g = sext i8 %i.f to i32                      ; 2 uses
  %i.h = icmp sgt i8 %i.f, -1
  br i1 %i.h, label %bb.c, label %cli_hex2int.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.i = tail call ptr @__ctype_b_loc() #15
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.k = zext nneg i32 %i.g to i64                ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !12
  %i.n = and i16 %i.m, 2048
  %.not.i = icmp eq i16 %i.n, 0
  br i1 %.not.i, label %bb.d, label %cli_hex2int.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @__ctype_tolower_loc() #15
  %.pn.i = load ptr, ptr %i.o, align 8, !tbaa !14
  %.020.in.i = getelementptr inbounds nuw [4 x i8], ptr %.pn.i, i64 %i.k
  %.020.i = load i32, ptr %.020.in.i, align 4, !tbaa !4 ; 3 uses
  %i.p = add i32 %.020.i, -97
  %or.cond3.i = icmp ult i32 %i.p, 6
  br i1 %or.cond3.i, label %cli_hex2int.exit.thread16, label %bb.e

cli_hex2int.exit.thread16:                        ; preds = %bb.d
  %i.q = add nsw i32 %.020.i, -87
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.5, i32 noundef %.020.i) #14
  br label %cli_hex2int.exit.thread

cli_hex2int.exit:                                 ; preds = %bb.c
  %i.r = add nsw i32 %i.g, -48
  %i.s = icmp samesign ult i8 %i.f, 48
  br i1 %i.s, label %cli_hex2int.exit.thread, label %bb.f

bb.f:                                             ; preds = %cli_hex2int.exit.thread16, %cli_hex2int.exit
  %.0.i18 = phi i32 [ %i.q, %cli_hex2int.exit.thread16 ], [ %i.r, %cli_hex2int.exit ]
  %i.t = shl i32 %.01320, 4
  %i.u = or i32 %.0.i18, %i.t                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cli_hex2int.exit.thread, label %.lr.ph, !llvm.loop !19

cli_hex2int.exit.thread:                          ; preds = %cli_hex2int.exit, %bb.f, %.lr.ph, %.preheader, %bb.e, %bb.b
  %.012 = phi i32 [ -1, %bb.b ], [ %.01320, %bb.e ], [ 0, %.preheader ], [ %.01320, %cli_hex2int.exit ], [ %i.u, %bb.f ], [ %.01320, %.lr.ph ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cli_str2hex(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i32 %1, 1
  %i.b = or disjoint i32 %i.a, 1
  %i.c = zext i32 %i.b to i64
  %i.d = tail call ptr @cli_calloc(i64 noundef %i.c, i64 noundef 1) #14 ; 4 uses
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne i32 %1, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.018 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.w, %.lr.ph ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  %i.i = lshr i8 %i.h, 4
  %i.j = zext nneg i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @__const.cli_str2hex.HEX, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8
  %i.m = zext i32 %.018 to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.m
  store i8 %i.l, ptr %i.n, align 1, !tbaa !8
  %i.o = load i8, ptr %i.g, align 1, !tbaa !8
  %i.p = and i8 %i.o, 15
  %i.q = zext nneg i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @__const.cli_str2hex.HEX, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8
  %i.t = or disjoint i32 %.018, 1
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u
  store i8 %i.s, ptr %i.v, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = add i32 %.018, 2
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !20

.loopexit:                                        ; preds = %.lr.ph, %bb.a
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cli_utf16toascii(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.3) #14
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 1
  %i.c = add nuw i32 %i.b, 1
  %i.d = zext i32 %i.c to i64
  %i.e = tail call ptr @cli_calloc(i64 noundef %i.d, i64 noundef 1) #14 ; 12 uses
  %.not22 = icmp eq ptr %i.e, null
  br i1 %.not22, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.c
  %i.f = add i32 %1, -2                           ; 5 uses
  %i.g = lshr i32 %i.f, 1
  %i.h = add nuw nsw i32 %i.g, 1
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 7 uses
  %min.iters.check = icmp ult i32 %i.f, 14
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.e, i64 %wide.trip.count
  %i.i = and i32 %i.f, -2
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %scevgep31 = getelementptr i8, ptr %i.k, i64 2
  %bound0 = icmp ult ptr %i.e, %scevgep31
  %bound1 = icmp ult ptr %0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check32 = icmp ult i32 %i.f, 30
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %wide.trip.count, 8
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 5 uses
  %i.m = shl nuw nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = shl nuw i64 %index, 1                    ; 16 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 14
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 18
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 22
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 26
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 28
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.n ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 30
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 3
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.aw = getelementptr inbounds nuw i8, ptr %i.t, i64 7
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 9
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  %i.az = getelementptr inbounds nuw i8, ptr %i.z, i64 13
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 17
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 19
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ah, i64 21
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 23
  %i.bf = getelementptr inbounds nuw i8, ptr %i.al, i64 25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 27
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ap, i64 29
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 31
  %i.bj = load i8, ptr %i.at, align 1, !tbaa !8, !alias.scope !21
  %i.bk = load i8, ptr %i.au, align 1, !tbaa !8, !alias.scope !21
  %i.bl = load i8, ptr %i.av, align 1, !tbaa !8, !alias.scope !21
  %i.bm = load i8, ptr %i.aw, align 1, !tbaa !8, !alias.scope !21
  %i.bn = load i8, ptr %i.ax, align 1, !tbaa !8, !alias.scope !21
  %i.bo = load i8, ptr %i.ay, align 1, !tbaa !8, !alias.scope !21
  %i.bp = load i8, ptr %i.az, align 1, !tbaa !8, !alias.scope !21
  %i.bq = load i8, ptr %i.ba, align 1, !tbaa !8, !alias.scope !21
  %i.br = load i8, ptr %i.bb, align 1, !tbaa !8, !alias.scope !21
  %i.bs = load i8, ptr %i.bc, align 1, !tbaa !8, !alias.scope !21
  %i.bt = load i8, ptr %i.bd, align 1, !tbaa !8, !alias.scope !21
  %i.bu = load i8, ptr %i.be, align 1, !tbaa !8, !alias.scope !21
  %i.bv = load i8, ptr %i.bf, align 1, !tbaa !8, !alias.scope !21
  %i.bw = load i8, ptr %i.bg, align 1, !tbaa !8, !alias.scope !21
  %i.bx = load i8, ptr %i.bh, align 1, !tbaa !8, !alias.scope !21
  %i.by = load i8, ptr %i.bi, align 1, !tbaa !8, !alias.scope !21
  %i.bz = insertelement <16 x i8> poison, i8 %i.bj, i64 0
  %i.ca = insertelement <16 x i8> %i.bz, i8 %i.bk, i64 1
  %i.cb = insertelement <16 x i8> %i.ca, i8 %i.bl, i64 2
  %i.cc = insertelement <16 x i8> %i.cb, i8 %i.bm, i64 3
  %i.cd = insertelement <16 x i8> %i.cc, i8 %i.bn, i64 4
  %i.ce = insertelement <16 x i8> %i.cd, i8 %i.bo, i64 5
  %i.cf = insertelement <16 x i8> %i.ce, i8 %i.bp, i64 6
  %i.cg = insertelement <16 x i8> %i.cf, i8 %i.bq, i64 7
  %i.ch = insertelement <16 x i8> %i.cg, i8 %i.br, i64 8
  %i.ci = insertelement <16 x i8> %i.ch, i8 %i.bs, i64 9
  %i.cj = insertelement <16 x i8> %i.ci, i8 %i.bt, i64 10
  %i.ck = insertelement <16 x i8> %i.cj, i8 %i.bu, i64 11
  %i.cl = insertelement <16 x i8> %i.ck, i8 %i.bv, i64 12
  %i.cm = insertelement <16 x i8> %i.cl, i8 %i.bw, i64 13
  %i.cn = insertelement <16 x i8> %i.cm, i8 %i.bx, i64 14
  %i.co = insertelement <16 x i8> %i.cn, i8 %i.by, i64 15
  %i.cp = shl <16 x i8> %i.co, splat (i8 4)       ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 %index ; 2 uses
  store <16 x i8> %i.cp, ptr %i.cq, align 1, !tbaa !8, !alias.scope !24, !noalias !21
  %i.cr = load i8, ptr %i.o, align 1, !tbaa !8, !alias.scope !21
  %i.cs = load i8, ptr %i.q, align 1, !tbaa !8, !alias.scope !21
  %i.ct = load i8, ptr %i.s, align 1, !tbaa !8, !alias.scope !21
  %i.cu = load i8, ptr %i.u, align 1, !tbaa !8, !alias.scope !21
  %i.cv = load i8, ptr %i.w, align 1, !tbaa !8, !alias.scope !21
  %i.cw = load i8, ptr %i.y, align 1, !tbaa !8, !alias.scope !21
  %i.cx = load i8, ptr %i.aa, align 1, !tbaa !8, !alias.scope !21
  %i.cy = load i8, ptr %i.ac, align 1, !tbaa !8, !alias.scope !21
  %i.cz = load i8, ptr %i.ae, align 1, !tbaa !8, !alias.scope !21
  %i.da = load i8, ptr %i.ag, align 1, !tbaa !8, !alias.scope !21
  %i.db = load i8, ptr %i.ai, align 1, !tbaa !8, !alias.scope !21
  %i.dc = load i8, ptr %i.ak, align 1, !tbaa !8, !alias.scope !21
  %i.dd = load i8, ptr %i.am, align 1, !tbaa !8, !alias.scope !21
  %i.de = load i8, ptr %i.ao, align 1, !tbaa !8, !alias.scope !21
  %i.df = load i8, ptr %i.aq, align 1, !tbaa !8, !alias.scope !21
  %i.dg = load i8, ptr %i.as, align 1, !tbaa !8, !alias.scope !21
  %i.dh = insertelement <16 x i8> poison, i8 %i.cr, i64 0
  %i.di = insertelement <16 x i8> %i.dh, i8 %i.cs, i64 1
  %i.dj = insertelement <16 x i8> %i.di, i8 %i.ct, i64 2
  %i.dk = insertelement <16 x i8> %i.dj, i8 %i.cu, i64 3
  %i.dl = insertelement <16 x i8> %i.dk, i8 %i.cv, i64 4
  %i.dm = insertelement <16 x i8> %i.dl, i8 %i.cw, i64 5
  %i.dn = insertelement <16 x i8> %i.dm, i8 %i.cx, i64 6
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 7
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 8
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 9
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 10
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 11
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 12
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 13
  %i.dv = insertelement <16 x i8> %i.du, i8 %i.df, i64 14
  %i.dw = insertelement <16 x i8> %i.dv, i8 %i.dg, i64 15
  %i.dx = add <16 x i8> %i.dw, %i.cp
  store <16 x i8> %i.dx, ptr %i.cq, align 1, !tbaa !8, !alias.scope !24, !noalias !21
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dy = icmp eq i64 %index.next, %n.vec
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !29

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i64 %wide.trip.count, 2147483640 ; 4 uses
  %i.dz = shl nuw nsw i64 %n.vec33, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next35, %vec.epilog.vector.body ] ; 3 uses
  %i.ea = shl nuw i64 %index34, 1                 ; 8 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 %i.ea ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 2
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 %i.ea ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 4
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 %i.ea ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 6
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 %i.ea ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 %i.ea ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 10
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 %i.ea ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 %i.ea ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 14
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.ec, i64 3
  %i.es = getelementptr inbounds nuw i8, ptr %i.ee, i64 5
  %i.et = getelementptr inbounds nuw i8, ptr %i.eg, i64 7
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ei, i64 9
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ek, i64 11
  %i.ew = getelementptr inbounds nuw i8, ptr %i.em, i64 13
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 15
  %i.ey = load i8, ptr %i.eq, align 1, !tbaa !8, !alias.scope !21
  %i.ez = load i8, ptr %i.er, align 1, !tbaa !8, !alias.scope !21
  %i.fa = load i8, ptr %i.es, align 1, !tbaa !8, !alias.scope !21
  %i.fb = load i8, ptr %i.et, align 1, !tbaa !8, !alias.scope !21
  %i.fc = load i8, ptr %i.eu, align 1, !tbaa !8, !alias.scope !21
  %i.fd = load i8, ptr %i.ev, align 1, !tbaa !8, !alias.scope !21
  %i.fe = load i8, ptr %i.ew, align 1, !tbaa !8, !alias.scope !21
  %i.ff = load i8, ptr %i.ex, align 1, !tbaa !8, !alias.scope !21
  %i.fg = insertelement <8 x i8> poison, i8 %i.ey, i64 0
  %i.fh = insertelement <8 x i8> %i.fg, i8 %i.ez, i64 1
  %i.fi = insertelement <8 x i8> %i.fh, i8 %i.fa, i64 2
  %i.fj = insertelement <8 x i8> %i.fi, i8 %i.fb, i64 3
  %i.fk = insertelement <8 x i8> %i.fj, i8 %i.fc, i64 4
  %i.fl = insertelement <8 x i8> %i.fk, i8 %i.fd, i64 5
  %i.fm = insertelement <8 x i8> %i.fl, i8 %i.fe, i64 6
  %i.fn = insertelement <8 x i8> %i.fm, i8 %i.ff, i64 7
  %i.fo = shl <8 x i8> %i.fn, splat (i8 4)        ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.e, i64 %index34 ; 2 uses
  store <8 x i8> %i.fo, ptr %i.fp, align 1, !tbaa !8, !alias.scope !24, !noalias !21
  %i.fq = load i8, ptr %i.eb, align 1, !tbaa !8, !alias.scope !21
  %i.fr = load i8, ptr %i.ed, align 1, !tbaa !8, !alias.scope !21
  %i.fs = load i8, ptr %i.ef, align 1, !tbaa !8, !alias.scope !21
  %i.ft = load i8, ptr %i.eh, align 1, !tbaa !8, !alias.scope !21
  %i.fu = load i8, ptr %i.ej, align 1, !tbaa !8, !alias.scope !21
  %i.fv = load i8, ptr %i.el, align 1, !tbaa !8, !alias.scope !21
  %i.fw = load i8, ptr %i.en, align 1, !tbaa !8, !alias.scope !21
  %i.fx = load i8, ptr %i.ep, align 1, !tbaa !8, !alias.scope !21
  %i.fy = insertelement <8 x i8> poison, i8 %i.fq, i64 0
  %i.fz = insertelement <8 x i8> %i.fy, i8 %i.fr, i64 1
  %i.ga = insertelement <8 x i8> %i.fz, i8 %i.fs, i64 2
  %i.gb = insertelement <8 x i8> %i.ga, i8 %i.ft, i64 3
  %i.gc = insertelement <8 x i8> %i.gb, i8 %i.fu, i64 4
  %i.gd = insertelement <8 x i8> %i.gc, i8 %i.fv, i64 5
  %i.ge = insertelement <8 x i8> %i.gd, i8 %i.fw, i64 6
  %i.gf = insertelement <8 x i8> %i.ge, i8 %i.fx, i64 7
  %i.gg = add <8 x i8> %i.gf, %i.fo
  store <8 x i8> %i.gg, ptr %i.fp, align 1, !tbaa !8, !alias.scope !24, !noalias !21
  %index.next35 = add nuw i64 %index34, 8         ; 2 uses
  %i.gh = icmp eq i64 %index.next35, %n.vec33
  br i1 %i.gh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n36 = icmp eq i64 %n.vec33, %wide.trip.count
  br i1 %cmp.n36, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv25.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.m, %vec.epilog.iter.check ], [ %i.dz, %vec.epilog.middle.block ] ; 4 uses
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec33, %vec.epilog.middle.block ] ; 4 uses
  %i.gi = lshr i32 %i.f, 1
  %i.gj = zext nneg i32 %i.gi to i64              ; 2 uses
  %i.gk = and i64 %i.gj, 1
  %lcmp.mod.not.not = icmp eq i64 %i.gk, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv25.ph
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !8
  %i.go = shl i8 %i.gn, 4                         ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.ph ; 2 uses
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !8
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv25.ph
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !8
  %i.gs = add i8 %i.gr, %i.go
  store i8 %i.gs, ptr %i.gp, align 1, !tbaa !8
  %indvars.iv.next26.prol = add nuw nsw i64 %indvars.iv25.ph, 2
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv25.unr = phi i64 [ %indvars.iv25.ph, %.lr.ph.preheader ], [ %indvars.iv.next26.prol, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.gt = icmp eq i64 %indvars.iv.ph, %i.gj
  br i1 %i.gt, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv25 = phi i64 [ %indvars.iv.next26.1, %.lr.ph ], [ %indvars.iv25.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv25
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 1
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !8
  %i.gx = shl i8 %i.gw, 4                         ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv ; 2 uses
  store i8 %i.gx, ptr %i.gy, align 1, !tbaa !8
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv25
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !8
  %i.hb = add i8 %i.ha, %i.gx
  store i8 %i.hb, ptr %i.gy, align 1, !tbaa !8
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 2 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next26
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 1
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !8
  %i.hf = shl i8 %i.he, 4                         ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 1 ; 2 uses
  store i8 %i.hf, ptr %i.hh, align 1, !tbaa !8
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next26
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !8
  %i.hk = add i8 %i.hj, %i.hf
  store i8 %i.hk, ptr %i.hh, align 1, !tbaa !8
  %indvars.iv.next26.1 = add nuw nsw i64 %indvars.iv25, 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !31

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.c, %bb.b
  %.018 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.e, %middle.block ], [ %i.e, %vec.epilog.middle.block ], [ %i.e, %.lr.ph ], [ %i.e, %.lr.ph.prol.loopexit ]
  ret ptr %.018
}

declare void @cli_warnmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @cli_strbcasestr(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13 ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sub i64 %i.a, %i.c
  %i.g = and i64 %i.f, 4294967295
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = tail call i32 @strcasecmp(ptr noundef nonnull %i.h, ptr noundef nonnull %1) #13
  %.not = icmp eq i32 %i.i, 0
  %i.j = zext i1 %.not to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 -2147483647, -2147483648) i32 @cli_chomp(ptr nofree noundef captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13 ; 2 uses
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.f = and i64 %i.b, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge2
  %indvars.iv = phi i64 [ %i.f, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge2 ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
  switch i8 %i.h, label %.critedge.loopexit.split.loop.exit25 [
    i8 10, label %.critedge2
    i8 13, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  store i8 0, ptr %i.g, align 1, !tbaa !8
  %i.i = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.i, label %.lr.ph, label %.critedge, !llvm.loop !32

.critedge.loopexit.split.loop.exit25:             ; preds = %.lr.ph
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge2, %.critedge.loopexit.split.loop.exit25, %.preheader, %bb.b, %bb.a
  %.014 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ], [ %i.c, %.preheader ], [ %i.j, %.critedge.loopexit.split.loop.exit25 ], [ 0, %.critedge2 ]
  ret i32 %.014
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cli_strtok(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !8       ; 3 uses
  %i.b = icmp ne i8 %i.a, 0
  %i.c = icmp ne i32 %1, 0
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %i.e = phi i8 [ %i.r, %.critedge ], [ %i.a, %bb.a ]
  %.03855 = phi i32 [ %i.o, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %.03954 = phi i32 [ %.140, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %i.f = sext i8 %i.e to i32
  %i.g = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.f) #13
  %.not49 = icmp eq ptr %i.g, null
  br i1 %.not49, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = add nsw i32 %.03954, 1
  %i.i = sext i32 %.03855 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8     ; 2 uses
  %.not50 = icmp eq i8 %i.k, 0
  br i1 %.not50, label %.critedge.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = sext i8 %i.k to i32
  %i.m = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.l) #13
  %.not51 = icmp eq ptr %i.m, null
  br i1 %.not51, label %.critedge.loopexit, label %bb.c, !llvm.loop !33

.critedge.loopexit:                               ; preds = %bb.d, %bb.c
  %i.n = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph
  %.140 = phi i32 [ %.03954, %.lr.ph ], [ %i.h, %.critedge.loopexit ] ; 2 uses
  %.2 = phi i32 [ %.03855, %.lr.ph ], [ %i.n, %.critedge.loopexit ]
  %i.o = add nsw i32 %.2, 1                       ; 3 uses
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 3 uses
  %i.s = icmp ne i8 %i.r, 0
  %i.t = icmp ne i32 %.140, %1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.lcssa53 = phi i64 [ 0, %bb.a ], [ %i.p, %.critedge ]
  %.038.lcssa = phi i32 [ 0, %bb.a ], [ %i.o, %.critedge ] ; 4 uses
  %i.v = phi i8 [ %i.a, %bb.a ], [ %i.r, %.critedge ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %0, i64 %.lcssa53
  %.not = icmp eq i8 %i.v, 0
  br i1 %.not, label %bb.h, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %._crit_edge
  %i.x = sext i32 %.038.lcssa to i64
  br label %.lr.ph60

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %bb.e
  %indvars.iv69 = phi i64 [ %i.x, %.lr.ph60.preheader ], [ %indvars.iv.next70, %bb.e ] ; 2 uses
  %i.y = phi i8 [ %i.v, %.lr.ph60.preheader ], [ %i.ad, %bb.e ]
  %.059 = phi i32 [ %.038.lcssa, %.lr.ph60.preheader ], [ %i.ab, %bb.e ]
  %i.z = sext i8 %i.y to i32
  %i.aa = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.z) #13
  %.not47 = icmp eq ptr %i.aa, null
  br i1 %.not47, label %bb.e, label %._crit_edge61.split.loop.exit80

bb.e:                                             ; preds = %.lr.ph60
  %indvars.iv.next70 = add nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.ab = add nsw i32 %.059, 1                    ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next70
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !8   ; 2 uses
  %.not46 = icmp eq i8 %i.ad, 0
  br i1 %.not46, label %._crit_edge61, label %.lr.ph60, !llvm.loop !35

._crit_edge61.split.loop.exit80:                  ; preds = %.lr.ph60
  %i.ae = trunc nsw i64 %indvars.iv69 to i32
  br label %._crit_edge61

._crit_edge61:                                    ; preds = %bb.e, %._crit_edge61.split.loop.exit80
  %.0.lcssa.ph = phi i32 [ %i.ae, %._crit_edge61.split.loop.exit80 ], [ %i.ab, %bb.e ] ; 2 uses
  %i.af = icmp eq i32 %.038.lcssa, %.0.lcssa.ph
  br i1 %i.af, label %bb.h, label %bb.f

bb.f:                                             ; preds = %._crit_edge61
  %i.ag = sub nsw i32 %.0.lcssa.ph, %.038.lcssa   ; 2 uses
  %i.ah = add nsw i32 %i.ag, 1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = tail call ptr @cli_malloc(i64 noundef %i.ai) #14 ; 4 uses
  %.not48 = icmp eq ptr %i.aj, null
  br i1 %.not48, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = sext i32 %i.ag to i64                   ; 2 uses
  %i.al = tail call ptr @strncpy(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.w, i64 noundef %i.ak) #14 ; 0 uses
  %i.am = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  store i8 0, ptr %i.am, align 1, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %._crit_edge61, %._crit_edge, %bb.g
  %.041 = phi ptr [ null, %._crit_edge ], [ %i.aj, %bb.g ], [ null, %._crit_edge61 ], [ null, %bb.f ]
  ret ptr %.041
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @cli_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @cli_strtokbuf(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly %2, ptr noundef %3) local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !8       ; 3 uses
  %i.b = icmp ne i8 %i.a, 0
  %i.c = icmp ne i32 %1, 0
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %i.e = phi i8 [ %i.r, %.critedge ], [ %i.a, %bb.a ]
  %.03549 = phi i32 [ %i.o, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %.03648 = phi i32 [ %.137, %.critedge ], [ 0, %bb.a ] ; 2 uses
  %i.f = sext i8 %i.e to i32
  %i.g = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.f) #13
  %.not43 = icmp eq ptr %i.g, null
  br i1 %.not43, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = add nsw i32 %.03648, 1
  %i.i = sext i32 %.03549 to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8     ; 2 uses
  %.not44 = icmp eq i8 %i.k, 0
  br i1 %.not44, label %.critedge.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = sext i8 %i.k to i32
  %i.m = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.l) #13
  %.not45 = icmp eq ptr %i.m, null
  br i1 %.not45, label %.critedge.loopexit, label %bb.c, !llvm.loop !36

.critedge.loopexit:                               ; preds = %bb.d, %bb.c
  %i.n = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.lr.ph
  %.137 = phi i32 [ %.03648, %.lr.ph ], [ %i.h, %.critedge.loopexit ] ; 2 uses
  %.2 = phi i32 [ %.03549, %.lr.ph ], [ %i.n, %.critedge.loopexit ]
  %i.o = add nsw i32 %.2, 1                       ; 3 uses
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !8     ; 3 uses
  %i.s = icmp ne i8 %i.r, 0
  %i.t = icmp ne i32 %.137, %1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !37

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.lcssa47 = phi i64 [ 0, %bb.a ], [ %i.p, %.critedge ]
  %.035.lcssa = phi i32 [ 0, %bb.a ], [ %i.o, %.critedge ] ; 4 uses
  %i.v = phi i8 [ %i.a, %bb.a ], [ %i.r, %.critedge ] ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %0, i64 %.lcssa47
  %i.x = icmp eq i8 %i.v, 0
  br i1 %i.x, label %bb.g, label %.lr.ph54.preheader

.lr.ph54.preheader:                               ; preds = %._crit_edge
  %i.y = sext i32 %.035.lcssa to i64
  br label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %bb.e
  %indvars.iv63 = phi i64 [ %i.y, %.lr.ph54.preheader ], [ %indvars.iv.next64, %bb.e ] ; 2 uses
  %i.z = phi i8 [ %i.v, %.lr.ph54.preheader ], [ %i.ae, %bb.e ]
  %.053 = phi i32 [ %.035.lcssa, %.lr.ph54.preheader ], [ %i.ac, %bb.e ]
  %i.aa = sext i8 %i.z to i32
  %i.ab = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.aa) #13
  %.not42 = icmp eq ptr %i.ab, null
  br i1 %.not42, label %bb.e, label %._crit_edge55.split.loop.exit73

bb.e:                                             ; preds = %.lr.ph54
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, 1 ; 2 uses
  %i.ac = add nsw i32 %.053, 1                    ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next64
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !8   ; 2 uses
  %.not = icmp eq i8 %i.ae, 0
  br i1 %.not, label %._crit_edge55, label %.lr.ph54, !llvm.loop !38

._crit_edge55.split.loop.exit73:                  ; preds = %.lr.ph54
  %i.af = trunc nsw i64 %indvars.iv63 to i32
  br label %._crit_edge55

._crit_edge55:                                    ; preds = %bb.e, %._crit_edge55.split.loop.exit73
  %.0.lcssa.ph = phi i32 [ %i.af, %._crit_edge55.split.loop.exit73 ], [ %i.ac, %bb.e ] ; 2 uses
  %i.ag = icmp eq i32 %.035.lcssa, %.0.lcssa.ph
  br i1 %i.ag, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge55
  %i.ah = sub nsw i32 %.0.lcssa.ph, %.035.lcssa
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = tail call ptr @strncpy(ptr noundef %3, ptr noundef nonnull %i.w, i64 noundef %i.ai) #14 ; 0 uses
  %i.ak = getelementptr inbounds i8, ptr %3, i64 %i.ai
  store i8 0, ptr %i.ak, align 1, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge55, %._crit_edge, %bb.f
  %.038 = phi ptr [ %3, %bb.f ], [ null, %._crit_edge ], [ null, %._crit_edge55 ]
  ret ptr %.038
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @cli_memstr(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address) %2, i32 noundef %3) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %1, %3
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, %2
  br i1 %i.b, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = sext i32 %3 to i64                       ; 2 uses
  %bcmp = tail call i32 @bcmp(ptr %0, ptr %2, i64 %i.c)
  %.not = icmp eq i32 %bcmp, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.d = load i8, ptr %2, align 1, !tbaa !8
  %i.e = sext i8 %i.d to i32                      ; 2 uses
  %i.f = sext i32 %1 to i64
  %i.g = tail call ptr @memchr(ptr noundef %0, i32 noundef %i.e, i64 noundef %i.f) #13 ; 2 uses
  %.not3842 = icmp eq ptr %i.g, null
  br i1 %.not3842, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %i.h = phi ptr [ %i.q, %bb.e ], [ %i.g, %.preheader ] ; 5 uses
  %.044 = phi i32 [ %.1, %bb.e ], [ %1, %.preheader ]
  %.02843 = phi ptr [ %.129, %bb.e ], [ %0, %.preheader ] ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %.02843 to i64
  %.neg = sub i64 %i.j, %i.i
  %.neg39 = trunc i64 %.neg to i32
  %i.k = add i32 %.044, %.neg39                   ; 2 uses
  %i.l = icmp slt i32 %i.k, %3
  br i1 %i.l, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %bcmp40 = tail call i32 @bcmp(ptr nonnull %i.h, ptr nonnull %2, i64 %i.c)
  %.not41 = icmp eq i32 %bcmp40, 0
  br i1 %.not41, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq ptr %.02843, %i.h                ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02843, i64 1
  %.129 = select i1 %i.m, ptr %i.n, ptr %i.h      ; 2 uses
  %i.o = sext i1 %i.m to i32
  %.1 = add nsw i32 %i.k, %i.o                    ; 2 uses
  %i.p = sext i32 %.1 to i64
  %i.q = tail call ptr @memchr(ptr noundef nonnull %.129, i32 noundef %i.e, i64 noundef %i.p) #13 ; 2 uses
  %.not38 = icmp eq ptr %i.q, null
  br i1 %.not38, label %.loopexit, label %.lr.ph, !llvm.loop !39

.loopexit:                                        ; preds = %bb.d, %.lr.ph, %bb.e, %.preheader, %bb.c, %bb.b, %bb.a
  %.030 = phi ptr [ %0, %bb.b ], [ null, %bb.a ], [ %0, %bb.c ], [ null, %.preheader ], [ null, %.lr.ph ], [ %i.h, %bb.d ], [ null, %bb.e ]
  ret ptr %.030
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @cli_strrcpy(ptr nofree noundef writeonly captures(address_is_null, ret: address, provenance) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.4) #14
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader
  %.07 = phi ptr [ %i.e, %.preheader ], [ %0, %bb.a ] ; 3 uses
  %.0 = phi ptr [ %i.c, %.preheader ], [ %1, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.d = load i8, ptr %.0, align 1, !tbaa !8      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 1
  store i8 %i.d, ptr %.07, align 1, !tbaa !8
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %.loopexit, label %.preheader, !llvm.loop !40

.loopexit:                                        ; preds = %.preheader, %bb.b
  %.08 = phi ptr [ null, %bb.b ], [ %.07, %.preheader ]
  ret ptr %.08
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @cli_strtokenize(ptr noundef %0, i8 noundef signext %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #9 {
bb.a:
  %.not20 = icmp eq i64 %2, 0
  br i1 %.not20, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = sext i8 %1 to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.017 = phi i64 [ 0, %.lr.ph ], [ %i.b, %bb.c ] ; 4 uses
  %.01216 = phi ptr [ %0, %.lr.ph ], [ %i.l, %bb.c ] ; 2 uses
  %i.b = add nuw i64 %.017, 1                     ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.017
  store ptr %.01216, ptr %i.c, align 8, !tbaa !41
  %i.d = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.01216, i32 noundef %i.a) #13 ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.e = icmp ult i64 %i.b, %2
  br i1 %i.e, label %.lr.ph19.preheader, label %.loopexit

.lr.ph19.preheader:                               ; preds = %.preheader
  %i.f = shl i64 %.017, 3
  %i.g = getelementptr i8, ptr %3, i64 %i.f
  %scevgep = getelementptr i8, ptr %i.g, i64 8
  %i.h = shl i64 %2, 3
  %i.i = add i64 %i.h, -8
  %i.j = shl i64 %.017, 3
  %i.k = sub i64 %i.i, %i.j
  tail call void @llvm.memset.p0.i64(ptr align 8 %scevgep, i8 0, i64 %i.k, i1 false), !tbaa !41
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 0, ptr %i.d, align 1, !tbaa !8
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !43

.loopexit:                                        ; preds = %bb.c, %.lr.ph19.preheader, %bb.a, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 short", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 int", !11, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = !{!22}
!22 = distinct !{!22, !23}
!23 = distinct !{!23, !"LVerDomain"}
!24 = !{!25}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !17, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!"branch_weights", i32 8, i32 8}
!30 = distinct !{!30, !17, !27, !28}
!31 = distinct !{!31, !17, !27}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !17}
!37 = distinct !{!37, !17}
!38 = distinct !{!38, !17}
!39 = distinct !{!39, !17}
!40 = distinct !{!40, !17}
!41 = !{!42, !42, i64 0}
!42 = !{!"p1 omnipotent char", !11, i64 0}
!43 = distinct !{!43, !17}
end_hunk_0
