Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_str?download=true
inline.NumInlined: 8
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@cli_hex2ui:bb.a
bb.g:                                             ; preds = %.thread102
  %i.af = tail call ptr @__ctype_tolower_loc() #16
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
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.5, i32 noundef %.020.i) #15
  br label %cli_hex2int.exit.thread

cli_hex2int.exit:                                 ; preds = %.thread102
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
  tail call void @free(ptr noundef %i.g) #15
  br label %.loopexit

bb.j:                                             ; preds = %bb.e
  %i.am = sext i8 %i.j to i32                     ; 2 uses
  switch i8 %i.j, label %bb.o [
    i8 63, label %.thread103
    i8 40, label %bb.x
  ]

.thread103:                                       ; preds = %.thread, %bb.j
  %i.an = phi i8 [ %i.o, %bb.j ], [ %i.t, %.thread ] ; 2 uses
  %i.ao = phi i32 [ %i.q, %bb.j ], [ %i.u, %.thread ] ; 2 uses
  %i.ap = icmp sgt i8 %i.an, -1
  br i1 %i.ap, label %bb.k, label %cli_hex2int.exit61.thread

bb.k:                                             ; preds = %.thread103
  %i.aq = tail call ptr @__ctype_b_loc() #16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !9
  %i.as = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !12
  %i.av = and i16 %i.au, 2048
  %.not.i56 = icmp eq i16 %i.av, 0
  br i1 %.not.i56, label %bb.l, label %cli_hex2int.exit61

bb.l:                                             ; preds = %bb.k
  %i.aw = tail call ptr @__ctype_tolower_loc() #16
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
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.5, i32 noundef %.020.i59) #15
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

cli_hex2int.exit61.thread:                        ; preds = %.thread103, %cli_hex2int.exit61, %bb.m
  tail call void @free(ptr noundef %i.g) #15
  br label %.loopexit

bb.o:                                             ; preds = %bb.j
  %i.bd = icmp sgt i8 %i.j, -1
  br i1 %i.bd, label %bb.p, label %cli_hex2int.exit68.thread

bb.p:                                             ; preds = %bb.o
  %i.be = tail call ptr @__ctype_b_loc() #16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !9  ; 2 uses
  %i.bg = zext nneg i32 %i.am to i64              ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !12
  %i.bj = and i16 %i.bi, 2048
  %.not.i63 = icmp eq i16 %i.bj, 0
  br i1 %.not.i63, label %bb.q, label %cli_hex2int.exit68

bb.q:                                             ; preds = %bb.p
  %i.bk = tail call ptr @__ctype_tolower_loc() #16
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
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.5, i32 noundef %.020.i66) #15
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
  %i.bu = tail call ptr @__ctype_tolower_loc() #16
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
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.5, i32 noundef %.020.i73) #15
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
  tail call void @free(ptr noundef %i.g) #15
  br label %.loopexit

cli_hex2int.exit68.thread:                        ; preds = %bb.o, %cli_hex2int.exit68, %bb.r
  tail call void @free(ptr noundef %i.g) #15
  br label %.loopexit

bb.x:                                             ; preds = %bb.j, %bb.d, %bb.i, %bb.w, %bb.n
  %.044 = phi i16 [ %i.cb, %bb.w ], [ %i.al, %bb.i ], [ %i.bc, %bb.n ], [ 256, %bb.d ], [ 512, %bb.j ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.04592, i64 2
  store i16 %.044, ptr %.04592, align 2, !tbaa !12
  %i.cd = add i32 %.093, 2                        ; 2 uses
  %i.ce = icmp ult i32 %i.cd, %i.b
  br i1 %i.ce, label %.lr.ph, label %.loopexit, !llvm.loop !16

.loopexit:                                        ; preds = %bb.x, %.preheader, %bb.c, %cli_hex2int.exit68.thread, %cli_hex2int.exit75.thread, %cli_hex2int.exit61.thread, %cli_hex2int.exit.thread, %bb.b
  %.046 = phi ptr [ null, %bb.b ], [ null, %cli_hex2int.exit.thread ], [ null, %cli_hex2int.exit61.thread ], [ null, %cli_hex2int.exit75.thread ], [ null, %cli_hex2int.exit68.thread ], [ null, %bb.c ], [ %i.g, %.preheader ], [ %i.g, %bb.x ]
  ret ptr %.046
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
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14 ; 2 uses
  %i.b = trunc i64 %i.a to i32                    ; 4 uses
  %i.c = and i32 %i.b, 1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1, ptr noundef nonnull %0, i32 noundef %i.b) #15
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = ashr exact i32 %i.b, 1
  %i.e = add nsw i32 %i.d, 1
  %i.f = sext i32 %i.e to i64
  %i.g = tail call ptr @cli_calloc(i64 noundef %i.f, i64 noundef 1) #15 ; 6 uses
  %.not27 = icmp eq ptr %i.g, null
  br i1 %.not27, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.h = icmp sgt i32 %i.b, 0
  br i1 %i.h, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %sext = and i64 %i.a, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %.02240 = phi ptr [ %i.g, %.lr.ph.preheader ], [ %i.an, %bb.m ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !8     ; 3 uses
  %i.k = sext i8 %i.j to i32                      ; 2 uses
  %i.l = icmp sgt i8 %i.j, -1
  br i1 %i.l, label %bb.d, label %cli_hex2int.exit.thread

bb.d:                                             ; preds = %.lr.ph
  %i.m = tail call ptr @__ctype_b_loc() #16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9    ; 2 uses
  %i.o = zext nneg i32 %i.k to i64                ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !12
  %i.r = and i16 %i.q, 2048
  %.not.i = icmp eq i16 %i.r, 0
  br i1 %.not.i, label %bb.e, label %cli_hex2int.exit

bb.e:                                             ; preds = %bb.d
  %i.s = tail call ptr @__ctype_tolower_loc() #16
  %.pn.i = load ptr, ptr %i.s, align 8, !tbaa !14
  %.020.in.i = getelementptr inbounds nuw [4 x i8], ptr %.pn.i, i64 %i.o
  %.020.i = load i32, ptr %.020.in.i, align 4, !tbaa !4 ; 3 uses
  %i.t = add i32 %.020.i, -97
  %or.cond3.i = icmp ult i32 %i.t, 6
  br i1 %or.cond3.i, label %cli_hex2int.exit.thread44, label %bb.f

cli_hex2int.exit.thread44:                        ; preds = %bb.e
  %i.u = add nsw i32 %.020.i, -87
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.5, i32 noundef %.020.i) #15
  br label %cli_hex2int.exit.thread

cli_hex2int.exit:                                 ; preds = %bb.d
  %i.v = add nsw i32 %i.k, -48
  %i.w = icmp sgt i8 %i.j, 47
  br i1 %i.w, label %bb.g, label %cli_hex2int.exit.thread

bb.g:                                             ; preds = %cli_hex2int.exit.thread44, %cli_hex2int.exit
  %.0.i46 = phi i32 [ %i.u, %cli_hex2int.exit.thread44 ], [ %i.v, %cli_hex2int.exit ]
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
  %i.ag = tail call ptr @__ctype_tolower_loc() #16
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
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.5, i32 noundef %.020.i33) #15
  br label %cli_hex2int.exit35.thread

cli_hex2int.exit35:                               ; preds = %bb.i, %bb.k
  %.0.i29 = phi i32 [ %i.af, %bb.i ], [ %i.ai, %bb.k ] ; 2 uses
  %sext28.mask = and i32 %.0.i29, 128
  %i.aj = icmp eq i32 %sext28.mask, 0
  br i1 %i.aj, label %bb.m, label %cli_hex2int.exit35.thread

bb.m:                                             ; preds = %cli_hex2int.exit35
  %i.ak = shl nuw nsw i32 %.0.i46, 4
  %i.al = add nuw nsw i32 %.0.i29, %i.ak
  %i.am = trunc i32 %i.al to i8
  %i.an = getelementptr inbounds nuw i8, ptr %.02240, i64 1
  store i8 %i.am, ptr %.02240, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %1 = icmp samesign ult i64 %indvars.iv.next, %sext
  br i1 %1, label %.lr.ph, label %.loopexit, !llvm.loop !18

cli_hex2int.exit35.thread:                        ; preds = %bb.g, %cli_hex2int.exit35, %bb.l
  tail call void @free(ptr noundef %i.g) #15
  br label %.loopexit

cli_hex2int.exit.thread:                          ; preds = %.lr.ph, %cli_hex2int.exit, %bb.f
  tail call void @free(ptr noundef %i.g) #15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %.preheader, %bb.c, %cli_hex2int.exit.thread, %cli_hex2int.exit35.thread, %bb.b
  %.023 = phi ptr [ null, %bb.b ], [ null, %cli_hex2int.exit35.thread ], [ null, %cli_hex2int.exit.thread ], [ null, %bb.c ], [ %i.g, %.preheader ], [ %i.g, %bb.m ]
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cli_hex2num(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14 ; 2 uses
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
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.2, ptr noundef nonnull %0, i32 noundef %i.b) #15
  br label %cli_hex2int.exit.thread

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.01220 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.u, %bb.f ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8     ; 3 uses
  %i.g = sext i8 %i.f to i32                      ; 2 uses
  %i.h = icmp sgt i8 %i.f, -1
  br i1 %i.h, label %bb.c, label %cli_hex2int.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.i = tail call ptr @__ctype_b_loc() #16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.k = zext nneg i32 %i.g to i64                ; 2 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !12
  %i.n = and i16 %i.m, 2048
  %.not.i = icmp eq i16 %i.n, 0
  br i1 %.not.i, label %bb.d, label %cli_hex2int.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @__ctype_tolower_loc() #16
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
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.5, i32 noundef %.020.i) #15
  br label %cli_hex2int.exit.thread

cli_hex2int.exit:                                 ; preds = %bb.c
  %i.r = add nsw i32 %i.g, -48
  %i.s = icmp samesign ult i8 %i.f, 48
  br i1 %i.s, label %cli_hex2int.exit.thread, label %bb.f

bb.f:                                             ; preds = %cli_hex2int.exit.thread16, %cli_hex2int.exit
  %.0.i18 = phi i32 [ %i.q, %cli_hex2int.exit.thread16 ], [ %i.r, %cli_hex2int.exit ]
  %i.t = shl i32 %.01220, 4
  %i.u = or i32 %.0.i18, %i.t                     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %cli_hex2int.exit.thread, label %.lr.ph, !llvm.loop !19

cli_hex2int.exit.thread:                          ; preds = %cli_hex2int.exit, %bb.f, %.lr.ph, %.preheader, %bb.e, %bb.b
  %.013 = phi i32 [ -1, %bb.b ], [ %.01220, %bb.e ], [ 0, %.preheader ], [ %.01220, %cli_hex2int.exit ], [ %i.u, %bb.f ], [ %.01220, %.lr.ph ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cli_str2hex(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i32 %1, 1
  %i.b = or disjoint i32 %i.a, 1
  %i.c = zext i32 %i.b to i64
  %i.d = tail call ptr @cli_calloc(i64 noundef %i.c, i64 noundef 1) #15 ; 8 uses
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne i32 %1, 0
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %.018 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.ap, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8
  %i.j = lshr i8 %i.i, 4
  %i.k = zext nneg i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @__const.cli_str2hex.HEX, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !8
  %i.n = zext i32 %.018 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.n
  store i8 %i.m, ptr %i.o, align 1, !tbaa !8
  %i.p = load i8, ptr %i.h, align 1, !tbaa !8
  %i.q = and i8 %i.p, 15
  %i.r = zext nneg i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @__const.cli_str2hex.HEX, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !8
  %i.u = or disjoint i32 %.018, 1
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.v
  store i8 %i.t, ptr %i.w, align 1, !tbaa !8
  %i.x = or disjoint i32 %.018, 2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8
  %i.ab = lshr i8 %i.aa, 4
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @__const.cli_str2hex.HEX, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !8
  %i.af = zext i32 %i.x to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.af
  store i8 %i.ae, ptr %i.ag, align 1, !tbaa !8
  %i.ah = load i8, ptr %i.z, align 1, !tbaa !8
  %i.ai = and i8 %i.ah, 15
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @__const.cli_str2hex.HEX, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8
  %i.am = or disjoint i32 %.018, 3
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.an
  store i8 %i.al, ptr %i.ao, align 1, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ap = add i32 %.018, 4                        ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !20

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %.018.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ap, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod21 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil.init ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8
  %i.as = lshr i8 %i.ar, 4
  %i.at = zext nneg i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @__const.cli_str2hex.HEX, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !8
  %i.aw = zext i32 %.018.epil.init to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.aw
  store i8 %i.av, ptr %i.ax, align 1, !tbaa !8
  %i.ay = load i8, ptr %i.aq, align 1, !tbaa !8
  %i.az = and i8 %i.ay, 15
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @__const.cli_str2hex.HEX, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !8
  %i.bd = or disjoint i32 %.018.epil.init, 1
  %i.be = zext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.be
  store i8 %i.bc, ptr %i.bf, align 1, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.a
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cli_utf16toascii(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_warnmsg(ptr noundef nonnull @.str.3) #15
end_hunk_0
