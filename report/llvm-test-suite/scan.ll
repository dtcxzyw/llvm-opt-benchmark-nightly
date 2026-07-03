inline.NumInlined: 16
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@yy_init_buffer:bb.a
  store i32 0, ptr %i.k, align 8, !tbaa !20
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local nonnull ptr @yy_create_buffer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #18 ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.c = tail call i64 @fwrite(ptr nonnull @.str.6, i64 43, i64 1, ptr %i.b) #15 ; 0 uses
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.e = tail call i32 @putc(i32 noundef 10, ptr noundef %i.d) ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %1, ptr %i.f, align 8, !tbaa !37
  %i.g = add nsw i32 %1, 2
  %i.h = zext i32 %i.g to i64
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #18 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !16
  %.not8 = icmp eq ptr %i.i, null
  br i1 %.not8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.l = tail call i64 @fwrite(ptr nonnull @.str.6, i64 43, i64 1, ptr %i.k) #15 ; 0 uses
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.n = tail call i32 @putc(i32 noundef 10, ptr noundef %i.m) ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.e:                                             ; preds = %bb.c
  store ptr %0, ptr %i.a, align 8, !tbaa !13
  store i8 10, ptr %i.i, align 1, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 1, ptr %i.o, align 4, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  store i8 0, ptr %i.p, align 1, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 0, ptr %i.q, align 1, !tbaa !17
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.p, ptr %i.r, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i32 0, ptr %i.s, align 8, !tbaa !20
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @yy_load_buffer_state() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @yy_current_buffer, align 8, !tbaa !11 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18
  store i32 %i.c, ptr @yy_n_chars, align 4, !tbaa !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 3 uses
  store ptr %i.e, ptr @yy_c_buf_p, align 8, !tbaa !21
  store ptr %i.e, ptr @yytext, align 8, !tbaa !21
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !13
  store ptr %i.f, ptr @yyin, align 8, !tbaa !8
  %i.g = load i8, ptr %i.e, align 1, !tbaa !17
  store i8 %i.g, ptr @yy_hold_char, align 1, !tbaa !17
  ret void
}

declare ptr @strcopyof(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -128, 128) i32 @input() unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @yy_c_buf_p, align 8, !tbaa !21 ; 3 uses
  %i.b = load i8, ptr @yy_hold_char, align 1, !tbaa !17 ; 3 uses
  store i8 %i.b, ptr %i.a, align 1, !tbaa !17
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %.pre = load ptr, ptr @yy_current_buffer, align 8, !tbaa !11
  %.pre13 = load i32, ptr @yy_n_chars, align 4, !tbaa !4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %tailrecurse
  %i.d = phi i32 [ %i.ac, %tailrecurse ], [ %.pre13, %.lr.ph.preheader ]
  %i.e = phi ptr [ %i.p, %tailrecurse ], [ %.pre, %.lr.ph.preheader ]
  %i.f = phi ptr [ %i.z, %tailrecurse ], [ %i.a, %.lr.ph.preheader ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.i = sext i32 %i.d to i64
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %i.i
  %i.k = icmp ult ptr %i.f, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  store i8 0, ptr %i.f, align 1, !tbaa !17
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph
  store ptr %i.f, ptr @yytext, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.l, ptr @yy_c_buf_p, align 8, !tbaa !21
  %i.m = tail call fastcc i32 @yy_get_next_buffer()
  switch i32 %i.m, label %default.unreachable18 [
    i32 1, label %bb.d
    i32 0, label %bb.f
    i32 2, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i32 @open_new_file() #14
  %.not.i.not = icmp eq i32 %i.n, 0
  br i1 %.not.i.not, label %bb.e, label %tailrecurse

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr @yytext, align 8, !tbaa !21
  store ptr %i.o, ptr @yy_c_buf_p, align 8, !tbaa !21
  br label %bb.h

tailrecurse:                                      ; preds = %bb.d
  %i.p = load ptr, ptr @yy_current_buffer, align 8, !tbaa !11 ; 7 uses
  %i.q = load ptr, ptr @yyin, align 8, !tbaa !8
  store ptr %i.q, ptr %i.p, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !16
  store i8 10, ptr %i.s, align 1, !tbaa !17
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 28 ; 2 uses
  store i32 1, ptr %i.t, align 4, !tbaa !18
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  store i8 0, ptr %i.v, align 1, !tbaa !17
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i8 0, ptr %i.x, align 1, !tbaa !17
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !16
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store i32 0, ptr %i.ab, align 8, !tbaa !20
  %i.ac = load i32, ptr %i.t, align 4, !tbaa !18  ; 2 uses
  store i32 %i.ac, ptr @yy_n_chars, align 4, !tbaa !4
  store ptr %i.z, ptr @yy_c_buf_p, align 8, !tbaa !21
  store ptr %i.z, ptr @yytext, align 8, !tbaa !21
  %i.ad = load ptr, ptr %i.p, align 8, !tbaa !13
  store ptr %i.ad, ptr @yyin, align 8, !tbaa !8
  %i.ae = load i8, ptr %i.z, align 1, !tbaa !17   ; 3 uses
  store i8 %i.ae, ptr @yy_hold_char, align 1, !tbaa !17
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %.lr.ph, label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr @yytext, align 8, !tbaa !21 ; 2 uses
  %.pre14 = load i8, ptr %i.ag, align 1, !tbaa !17
  br label %.loopexit

bb.g:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.ai = tail call i64 @fwrite(ptr nonnull @.str.10, i64 32, i64 1, ptr %i.ah) #15 ; 0 uses
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.ak = tail call i32 @putc(i32 noundef 10, ptr noundef %i.aj) ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

default.unreachable18:                            ; preds = %bb.c
  unreachable

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.b, %bb.f
  %i.al = phi i8 [ %.pre14, %bb.f ], [ %i.b, %bb.a ], [ 0, %bb.b ], [ %i.ae, %tailrecurse ]
  %i.am = phi ptr [ %i.ag, %bb.f ], [ %i.a, %bb.a ], [ %i.f, %bb.b ], [ %i.z, %tailrecurse ]
  %i.an = sext i8 %i.al to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  store ptr %i.ao, ptr @yy_c_buf_p, align 8, !tbaa !21
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !17
  store i8 %i.ap, ptr @yy_hold_char, align 1, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %bb.e
  %.0 = phi i32 [ %i.an, %.loopexit ], [ -1, %bb.e ]
  ret i32 %.0
}

declare void @yyerror(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @yy_get_next_buffer() unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr @yy_current_buffer, align 8, !tbaa !11 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16   ; 7 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = load ptr, ptr @yy_c_buf_p, align 8, !tbaa !21 ; 2 uses
  %i.f = load i32, ptr @yy_n_chars, align 4, !tbaa !4
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr i8, ptr %i.c, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 1
  %i.j = icmp ugt ptr %i.e, %i.i
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.l = tail call i64 @fwrite(ptr nonnull @.str.7, i64 55, i64 1, ptr %i.k) #15 ; 0 uses
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.n = tail call i32 @putc(i32 noundef 10, ptr noundef %i.m) ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.o = load ptr, ptr @yytext, align 8, !tbaa !21 ; 2 uses
  %i.p = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.r = sub i64 %i.p, %i.q                       ; 6 uses
  %i.s = trunc i64 %i.r to i32                    ; 5 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.c
  %i.u = getelementptr inbounds i8, ptr %i.o, i64 -1 ; 5 uses
  %i.v = and i64 %i.r, 2147483647                 ; 4 uses
  %min.iters.check = icmp samesign ult i64 %i.v, 4
  %0 = sub i64 %i.d, %i.q
  %min.iters.check.a = icmp ult i64 %0, 31
  %or.cond = or i1 %min.iters.check, %min.iters.check.a
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check32 = icmp samesign ult i64 %i.v, 32
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.r, 28
  %n.vec = and i64 %i.r, 2147483616               ; 6 uses
  %i.w = trunc nuw nsw i64 %n.vec to i32
  %i.x = getelementptr i8, ptr %i.c, i64 %n.vec
  %i.y = getelementptr i8, ptr %i.u, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.c, i64 %index ; 2 uses
  %next.gep33 = getelementptr i8, ptr %i.u, i64 %index ; 2 uses
  %i.z = getelementptr i8, ptr %next.gep33, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep33, align 1, !tbaa !17
  %wide.load34 = load <16 x i8>, ptr %i.z, align 1, !tbaa !17
  %i.aa = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !17
  store <16 x i8> %wide.load34, ptr %i.aa, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !38

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !41

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %i.r, 2147483644             ; 5 uses
  %i.ac = trunc nuw nsw i64 %n.vec38 to i32
  %i.ad = getelementptr i8, ptr %i.c, i64 %n.vec38
  %i.ae = getelementptr i8, ptr %i.u, i64 %n.vec38
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next43, %vec.epilog.vector.body ] ; 3 uses
  %next.gep40 = getelementptr i8, ptr %i.c, i64 %index39
  %next.gep41 = getelementptr i8, ptr %i.u, i64 %index39
  %wide.load42 = load <4 x i8>, ptr %next.gep41, align 1, !tbaa !17
  store <4 x i8> %wide.load42, ptr %next.gep40, align 1, !tbaa !17
  %index.next43 = add nuw i64 %index39, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next43, %n.vec38
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !42

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n44 = icmp eq i64 %i.v, %n.vec38
  br i1 %cmp.n44, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.01323.ph = phi i32 [ 0, %iter.check ], [ %i.w, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ] ; 4 uses
  %.01422.ph = phi ptr [ %i.c, %iter.check ], [ %i.x, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ] ; 2 uses
  %.01521.ph = phi ptr [ %i.u, %iter.check ], [ %i.y, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ] ; 2 uses
  %i.ag = trunc i64 %i.p to i32                   ; 2 uses
  %i.ah = trunc i64 %i.q to i32                   ; 2 uses
  %i.ai = add i32 %.01323.ph, %i.ah
  %i.aj = sub i32 %i.ag, %i.ai
  %xtraiter = and i32 %i.aj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.01323.prol = phi i32 [ %i.an, %.lr.ph.prol ], [ %.01323.ph, %.lr.ph.preheader ]
  %.01422.prol = phi ptr [ %i.am, %.lr.ph.prol ], [ %.01422.ph, %.lr.ph.preheader ] ; 2 uses
  %.01521.prol = phi ptr [ %i.ak, %.lr.ph.prol ], [ %.01521.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.ak = getelementptr inbounds nuw i8, ptr %.01521.prol, i64 1 ; 2 uses
  %i.al = load i8, ptr %.01521.prol, align 1, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %.01422.prol, i64 1 ; 2 uses
  store i8 %i.al, ptr %.01422.prol, align 1, !tbaa !17
  %i.an = add nuw nsw i32 %.01323.prol, 1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !43

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.01323.unr = phi i32 [ %.01323.ph, %.lr.ph.preheader ], [ %i.an, %.lr.ph.prol ]
  %.01422.unr = phi ptr [ %.01422.ph, %.lr.ph.preheader ], [ %i.am, %.lr.ph.prol ]
  %.01521.unr = phi ptr [ %.01521.ph, %.lr.ph.preheader ], [ %i.ak, %.lr.ph.prol ]
  %i.ao = sub i32 %.01323.ph, %i.ag
  %i.ap = add i32 %i.ao, %i.ah
  %i.aq = icmp ugt i32 %i.ap, -8
  br i1 %i.aq, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01323 = phi i32 [ %i.bp, %.lr.ph ], [ %.01323.unr, %.lr.ph.prol.loopexit ]
  %.01422 = phi ptr [ %i.bo, %.lr.ph ], [ %.01422.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.01521 = phi ptr [ %i.bm, %.lr.ph ], [ %.01521.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01521, i64 1
  %i.as = load i8, ptr %.01521, align 1, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %.01422, i64 1
  store i8 %i.as, ptr %.01422, align 1, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %.01521, i64 2
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !17
  %i.aw = getelementptr inbounds nuw i8, ptr %.01422, i64 2
  store i8 %i.av, ptr %i.at, align 1, !tbaa !17
  %i.ax = getelementptr inbounds nuw i8, ptr %.01521, i64 3
  %i.ay = load i8, ptr %i.au, align 1, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %.01422, i64 3
  store i8 %i.ay, ptr %i.aw, align 1, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %.01521, i64 4
  %i.bb = load i8, ptr %i.ax, align 1, !tbaa !17
  %i.bc = getelementptr inbounds nuw i8, ptr %.01422, i64 4
  store i8 %i.bb, ptr %i.az, align 1, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %.01521, i64 5
  %i.be = load i8, ptr %i.ba, align 1, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %.01422, i64 5
  store i8 %i.be, ptr %i.bc, align 1, !tbaa !17
  %i.bg = getelementptr inbounds nuw i8, ptr %.01521, i64 6
  %i.bh = load i8, ptr %i.bd, align 1, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %.01422, i64 6
  store i8 %i.bh, ptr %i.bf, align 1, !tbaa !17
  %i.bj = getelementptr inbounds nuw i8, ptr %.01521, i64 7
  %i.bk = load i8, ptr %i.bg, align 1, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %.01422, i64 7
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %.01521, i64 8
  %i.bn = load i8, ptr %i.bj, align 1, !tbaa !17
  %i.bo = getelementptr inbounds nuw i8, ptr %.01422, i64 8
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !17
  %i.bp = add nuw nsw i32 %.01323, 8              ; 2 uses
  %exitcond.not.7 = icmp eq i32 %i.bp, %i.s
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !45

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !20
  %.not = icmp eq i32 %i.br, 0
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !37
  %i.bu = xor i32 %i.s, -1
  %i.bv = add i32 %i.bt, %i.bu                    ; 3 uses
  %i.bw = icmp sgt i32 %i.bv, 8192
  br i1 %i.bw, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bx = icmp slt i32 %i.bv, 1
  br i1 %i.bx, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.by = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.bz = tail call i64 @fwrite(ptr nonnull @.str.8, i64 43, i64 1, ptr %i.by) #15 ; 0 uses
  %i.ca = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.cb = tail call i32 @putc(i32 noundef 10, ptr noundef %i.ca) ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i32 [ %i.bv, %bb.e ], [ 8192, %bb.d ]
  %sext = shl i64 %i.r, 32
  %i.cc = ashr exact i64 %sext, 32
  %i.cd = zext nneg i32 %.0 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.ce = load ptr, ptr @yyin, align 8, !tbaa !8
  %i.cf = tail call i32 @fileno(ptr noundef %i.ce) #14
  %i.cg = load ptr, ptr @yy_current_buffer, align 8, !tbaa !11
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !16
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 %i.cc
  %i.ck = tail call i64 @read(i32 noundef %i.cf, ptr noundef %i.cj, i64 noundef %i.cd) #14
  %i.cl = trunc i64 %i.ck to i32                  ; 4 uses
  store i32 %i.cl, ptr @yy_n_chars, align 4, !tbaa !4
  %i.cm = icmp slt i32 %i.cl, 0
  br i1 %i.cm, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cn = tail call ptr @__errno_location() #19
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4
  %.not19 = icmp eq i32 %i.co, 4
  br i1 %.not19, label %bb.h, label %bb.j, !llvm.loop !46

bb.j:                                             ; preds = %bb.i
  %i.cp = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.cq = tail call i64 @fwrite(ptr nonnull @.str.9, i64 29, i64 1, ptr %i.cp) #15 ; 0 uses
  %i.cr = load ptr, ptr @stderr, align 8, !tbaa !8
  %i.cs = tail call i32 @putc(i32 noundef 10, ptr noundef %i.cr) ; 0 uses
  tail call void @exit(i32 noundef 1) #17
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ct = icmp eq i32 %i.cl, 0
  br i1 %i.ct, label %.thread, label %._crit_edge25

._crit_edge25:                                    ; preds = %bb.k
  %.pre = load ptr, ptr @yy_current_buffer, align 8, !tbaa !11
  br label %bb.n

.thread:                                          ; preds = %._crit_edge, %bb.k
  %i.cu = icmp eq i32 %i.s, 1
  %i.cv = load ptr, ptr @yy_current_buffer, align 8, !tbaa !11 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32 ; 2 uses
  br i1 %i.cu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread
  store i32 2, ptr %i.cw, align 8, !tbaa !20
  br label %bb.n

bb.m:                                             ; preds = %.thread
  store i32 1, ptr %i.cw, align 8, !tbaa !20
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge25, %bb.l, %bb.m
  %i.cx = phi ptr [ %i.cv, %bb.l ], [ %i.cv, %bb.m ], [ %.pre, %._crit_edge25 ]
  %i.cy = phi i32 [ 0, %bb.l ], [ 0, %bb.m ], [ %i.cl, %._crit_edge25 ]
  %.012 = phi i32 [ 1, %bb.l ], [ 2, %bb.m ], [ 0, %._crit_edge25 ]
  %i.cz = add nsw i32 %i.cy, %i.s                 ; 2 uses
  store i32 %i.cz, ptr @yy_n_chars, align 4, !tbaa !4
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !16
  %i.dc = sext i32 %i.cz to i64                   ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.db, i64 %i.dc
  store i8 0, ptr %i.dd, align 1, !tbaa !17
  %i.de = load ptr, ptr %i.da, align 8, !tbaa !16
  %i.df = getelementptr i8, ptr %i.de, i64 %i.dc
  %i.dg = getelementptr i8, ptr %i.df, i64 1
  store i8 0, ptr %i.dg, align 1, !tbaa !17
  %i.dh = load ptr, ptr %i.da, align 8, !tbaa !16
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  store ptr %i.di, ptr @yytext, align 8, !tbaa !21
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @yywrap() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @open_new_file() #14
  %.not = icmp eq i32 %i.a, 0
  %. = zext i1 %.not to i32
  ret i32 %.
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @yyrestart(ptr noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @yy_current_buffer, align 8, !tbaa !11 ; 6 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  store i8 10, ptr %i.c, align 1, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  store i32 1, ptr %i.d, align 4, !tbaa !18
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !16
end_hunk_0
