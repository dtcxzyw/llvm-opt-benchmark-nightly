Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_parse?download=true
inline.NumInlined: 342
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@var_lookup:bb.a

fscope_uvmark.exit.thread:                        ; preds = %bb.l, %.critedge.i, %bb.p, %bb.h, %bb.r
  %.172 = phi i32 [ %i.bu, %bb.r ], [ %.071, %bb.h ], [ %.071, %bb.p ], [ %.071, %.critedge.i ], [ %.071, %bb.l ]
  br i1 %.not82, label %.loopexit, label %bb.c, !llvm.loop !224

bb.s:                                             ; preds = %bb.c
  store i32 8, ptr %i.l, align 8, !tbaa !86
  store i32 -1, ptr %i.m, align 4, !tbaa !113
  store i32 -1, ptr %i.n, align 8, !tbaa !87
  store ptr %2, ptr %1, align 8, !tbaa !33
  br label %.loopexit

.loopexit:                                        ; preds = %fscope_uvmark.exit.thread, %.thread, %bb.s
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @expr_field(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %union.TValue, align 8              ; 4 uses
  %3 = alloca %struct.ExpDesc, align 8            ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.b = tail call fastcc i32 @expr_toanyreg(ptr noundef %i.a, ptr noundef %1) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.c, align 8, !tbaa !86
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 -1, ptr %i.d, align 4, !tbaa !113
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 -1, ptr %i.e, align 8, !tbaa !87
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !72
  switch i32 %i.g, label %bb.b [
    i32 298, label %bb.c
    i32 268, label %bb.c
    i32 260, label %bb.c
    i32 259, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @err_token(ptr noundef nonnull %0, i32 noundef 298) #14
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !33
  %i.j = and i64 %i.i, 140737488355327            ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  tail call void @lj_lex_next(ptr noundef nonnull %0) #12
  store ptr %i.k, ptr %3, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 9, ptr %i.l, align 8, !tbaa !86
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.o = or disjoint i64 %i.j, -703687441776640
  store i64 %i.o, ptr %2, align 8, !tbaa !33
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.q = call ptr @lj_tab_set(ptr noundef %i.n, ptr noundef %i.p, ptr noundef nonnull %2) #12 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !33
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = load i32, ptr %i.q, align 8, !tbaa !33
  br label %const_str.exit.i

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 3 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !107
  %i.x = zext i32 %i.w to i64
  store i64 %i.x, ptr %i.q, align 8, !tbaa !33
  %i.y = load i32, ptr %i.v, align 8, !tbaa !107  ; 2 uses
  %i.z = add i32 %i.y, 1
  store i32 %i.z, ptr %i.v, align 8, !tbaa !107
  br label %const_str.exit.i

const_str.exit.i:                                 ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi i32 [ %i.u, %bb.d ], [ %i.y, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  %i.aa = icmp ult i32 %.0.i.i.i, 256
  br i1 %i.aa, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %const_str.exit.i
  %i.ab = xor i32 %.0.i.i.i, -1
  br label %expr_index.exit

.thread.i:                                        ; preds = %const_str.exit.i
  %i.ac = call fastcc i32 @expr_toanyreg(ptr noundef nonnull %i.a, ptr noundef nonnull %3)
  br label %expr_index.exit

expr_index.exit:                                  ; preds = %bb.f, %.thread.i
  %.sink.i = phi i32 [ %i.ab, %bb.f ], [ %i.ac, %.thread.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.sink.i, ptr %i.ad, align 4, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @expr_list(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  tail call fastcc void @expr(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !72
  %i.c = icmp eq i32 %i.b, 44
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %expr_tonextreg.exit
  %.011 = phi i32 [ 1, %.lr.ph ], [ %i.y, %expr_tonextreg.exit ]
  tail call void @lj_lex_next(ptr noundef nonnull %0) #12
  %i.e = load ptr, ptr %0, align 8, !tbaa !27     ; 7 uses
  tail call fastcc void @expr_discharge(ptr noundef %i.e, ptr noundef nonnull %1)
  %i.f = load i32, ptr %i.d, align 8, !tbaa !86
  %i.g = icmp eq i32 %i.f, 12
  br i1 %i.g, label %bb.c, label %expr_free.exit.i

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %1, align 8, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.j = load i32, ptr %i.i, align 8, !tbaa !66
  %.not.i.i.i = icmp ult i32 %i.h, %i.j
  br i1 %.not.i.i.i, label %expr_free.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 52 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !89
  %i.m = add i32 %i.l, -1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !89
  br label %expr_free.exit.i

expr_free.exit.i:                                 ; preds = %bb.d, %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 52 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !89   ; 2 uses
  %i.p = add i32 %i.o, 1                          ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 90 ; 2 uses
  %i.r = load i8, ptr %i.q, align 2, !tbaa !64
  %i.s = zext i8 %i.r to i32
  %i.t = icmp ugt i32 %i.p, %i.s
  br i1 %i.t, label %bb.e, label %expr_tonextreg.exit

bb.e:                                             ; preds = %expr_free.exit.i
  %i.u = icmp ugt i32 %i.p, 249
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !54
  tail call fastcc void @err_syntax(ptr noundef %i.w, i32 noundef 2426) #14
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.x = trunc nuw i32 %i.p to i8
  store i8 %i.x, ptr %i.q, align 2, !tbaa !64
  br label %expr_tonextreg.exit

expr_tonextreg.exit:                              ; preds = %expr_free.exit.i, %bb.g
  store i32 %i.p, ptr %i.n, align 4, !tbaa !89
  tail call fastcc void @expr_toreg(ptr noundef nonnull %i.e, ptr noundef nonnull %1, i32 noundef %i.o)
  tail call fastcc void @expr(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0)
  %i.y = add i32 %.011, 1                         ; 2 uses
  %i.z = load i32, ptr %i.a, align 4, !tbaa !72
  %i.aa = icmp eq i32 %i.z, 44
  br i1 %i.aa, label %bb.b, label %._crit_edge, !llvm.loop !4

._crit_edge:                                      ; preds = %expr_tonextreg.exit, %bb.a
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %i.y, %expr_tonextreg.exit ]
  ret i32 %.0.lcssa
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare hidden i32 @lj_vm_tobit(double noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc i32 @bcemit_branch(ptr nofree noundef captures(none) %0, ptr noundef nonnull %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !86
  switch i32 %i.b, label %bcemit_jmp.exit.thread [
    i32 11, label %bb.b
    i32 12, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !74   ; 2 uses
  %i.e = load i32, ptr %1, align 8, !tbaa !33
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.f ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !88   ; 2 uses
  %i.i = and i32 %i.h, 255
  %.not22 = icmp eq i32 %i.i, 19
  br i1 %.not22, label %bb.c, label %bcemit_jmp.exit.thread

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %2, 0
  %3 = select i1 %.not, i32 14, i32 15
  %4 = and i32 %i.h, -65536
  %i.j = or disjoint i32 %4, %3
  store i32 %i.j, ptr %i.g, align 4, !tbaa !88
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !60   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !58   ; 2 uses
  %i.o = add i32 %i.n, -1                         ; 3 uses
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.p ; 2 uses
  store i32 -1, ptr %i.k, align 8, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !59
  %.not.i = icmp slt i32 %i.o, %i.s
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.q, align 4, !tbaa !88
  %i.u = and i32 %i.t, 255
  %i.v = icmp eq i32 %i.u, 50
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  store i16 32767, ptr %i.w, align 2, !tbaa !78
  store i32 %i.n, ptr %i.r, align 4, !tbaa !59
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.y = load i32, ptr %i.x, align 4, !tbaa !89
  %i.z = shl i32 %i.y, 8
  %i.aa = or i32 %i.z, 2147418200
  %i.ab = tail call fastcc i32 @bcemit_INS(ptr noundef nonnull %0, i32 noundef %i.aa)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i = phi i32 [ %i.ab, %bb.f ], [ %i.o, %bb.e ] ; 4 uses
  %i.ac = icmp eq i32 %i.l, -1
  br i1 %i.ac, label %expr_free.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = icmp eq i32 %.0.i, -1
  br i1 %i.ad, label %expr_free.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.h
  %.val.i.i = load ptr, ptr %i.c, align 8, !tbaa !74 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader.i.i
  %.0.i.i = phi i32 [ %i.an, %bb.i ], [ %.0.i, %.preheader.i.i ] ; 2 uses
  %i.ae = zext i32 %.0.i.i to i64                 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !76
  %i.ah = lshr i32 %i.ag, 16
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = add nsw i64 %i.ai, -32768               ; 2 uses
  %i.ak = icmp eq i64 %i.aj, -1
  %i.al = add nuw nsw i64 %i.ae, 1
  %i.am = add nsw i64 %i.al, %i.aj
  %i.an = trunc i64 %i.am to i32                  ; 2 uses
  %.not13.i.i = icmp eq i32 %i.an, -1
  %.not.i.i = select i1 %i.ak, i1 true, i1 %.not13.i.i
  br i1 %.not.i.i, label %bb.j, label %bb.i, !llvm.loop !1

bb.j:                                             ; preds = %bb.i
  %i.ao = sub i32 %i.l, %.0.i.i
  %i.ap = add i32 %i.ao, 32767                    ; 2 uses
  %i.aq = icmp ugt i32 %i.ap, 65535
  br i1 %i.aq, label %bb.k, label %jmp_patchins.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !54
  tail call fastcc void @err_syntax(ptr noundef %i.as, i32 noundef 2399) #14
  unreachable

jmp_patchins.exit.i.i:                            ; preds = %bb.j
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i, i64 %i.ae
  %i.au = trunc nuw i32 %i.ap to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store i16 %i.au, ptr %i.av, align 2, !tbaa !78
  br label %expr_free.exit

bcemit_jmp.exit.thread:                           ; preds = %bb.a, %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !89 ; 2 uses
  %i.ay = add i32 %i.ax, 1                        ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !64
  %i.bb = zext i8 %i.ba to i32
  %i.bc = icmp ugt i32 %i.ay, %i.bb
  br i1 %i.bc, label %bb.l, label %bcreg_reserve.exit

bb.l:                                             ; preds = %bcemit_jmp.exit.thread
  %i.bd = icmp ugt i32 %i.ay, 249
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !54
  tail call fastcc void @err_syntax(ptr noundef %i.bf, i32 noundef 2426) #14
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bg = trunc nuw i32 %i.ay to i8
  store i8 %i.bg, ptr %i.az, align 2, !tbaa !64
  br label %bcreg_reserve.exit

bcreg_reserve.exit:                               ; preds = %bcemit_jmp.exit.thread, %bb.n
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !89
  tail call fastcc void @expr_toreg_nobranch(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.ax)
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bcreg_reserve.exit
  %.not24 = icmp eq i32 %2, 0
  %5 = select i1 %.not24, i32 65293, i32 65292
  %i.bh = load i32, ptr %1, align 8, !tbaa !33
  %i.bi = shl i32 %i.bh, 16
  %i.bj = or disjoint i32 %i.bi, %5
  %i.bk = tail call fastcc i32 @bcemit_INS(ptr noundef %0, i32 noundef %i.bj) ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !60 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !58 ; 2 uses
  %i.bp = add i32 %i.bo, -1                       ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !74
  %i.bs = zext i32 %i.bp to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bs ; 2 uses
  store i32 -1, ptr %i.bl, align 8, !tbaa !60
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !59
  %.not.i25 = icmp slt i32 %i.bp, %i.bv
  br i1 %.not.i25, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bw = load i32, ptr %i.bt, align 4, !tbaa !88
  %i.bx = and i32 %i.bw, 255
  %i.by = icmp eq i32 %i.bx, 50
  br i1 %i.by, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  store i16 32767, ptr %i.bz, align 2, !tbaa !78
  store i32 %i.bo, ptr %i.bu, align 4, !tbaa !59
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !89
  %i.cc = shl i32 %i.cb, 8
  %i.cd = or i32 %i.cc, 2147418200
  %i.ce = tail call fastcc i32 @bcemit_INS(ptr noundef nonnull %0, i32 noundef %i.cd)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i26 = phi i32 [ %i.ce, %bb.r ], [ %i.bp, %bb.q ] ; 4 uses
  %i.cf = icmp eq i32 %i.bm, -1
  br i1 %i.cf, label %bcemit_jmp.exit34, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cg = icmp eq i32 %.0.i26, -1
  br i1 %i.cg, label %bcemit_jmp.exit34, label %.preheader.i.i27

.preheader.i.i27:                                 ; preds = %bb.t
  %.val.i.i28 = load ptr, ptr %i.bq, align 8, !tbaa !74 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.preheader.i.i27
  %.0.i.i29 = phi i32 [ %i.cq, %bb.u ], [ %.0.i26, %.preheader.i.i27 ] ; 2 uses
  %i.ch = zext i32 %.0.i.i29 to i64               ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i28, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !76
  %i.ck = lshr i32 %i.cj, 16
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = add nsw i64 %i.cl, -32768               ; 2 uses
  %i.cn = icmp eq i64 %i.cm, -1
  %i.co = add nuw nsw i64 %i.ch, 1
  %i.cp = add nsw i64 %i.co, %i.cm
  %i.cq = trunc i64 %i.cp to i32                  ; 2 uses
  %.not13.i.i30 = icmp eq i32 %i.cq, -1
  %.not.i.i31 = select i1 %i.cn, i1 true, i1 %.not13.i.i30
  br i1 %.not.i.i31, label %bb.v, label %bb.u, !llvm.loop !1

bb.v:                                             ; preds = %bb.u
  %i.cr = sub i32 %i.bm, %.0.i.i29
  %i.cs = add i32 %i.cr, 32767                    ; 2 uses
  %i.ct = icmp ugt i32 %i.cs, 65535
  br i1 %i.ct, label %bb.w, label %jmp_patchins.exit.i.i32

bb.w:                                             ; preds = %bb.v
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !54
  tail call fastcc void @err_syntax(ptr noundef %i.cv, i32 noundef 2399) #14
  unreachable

jmp_patchins.exit.i.i32:                          ; preds = %bb.v
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i28, i64 %i.ch
  %i.cx = trunc nuw i32 %i.cs to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !78
  br label %bcemit_jmp.exit34

bcemit_jmp.exit34:                                ; preds = %bb.s, %bb.t, %jmp_patchins.exit.i.i32
  %.1.i33 = phi i32 [ %.0.i26, %bb.s ], [ %.0.i26, %jmp_patchins.exit.i.i32 ], [ %i.bm, %bb.t ] ; 3 uses
  %i.cz = load i32, ptr %i.a, align 8, !tbaa !86
  %i.da = icmp eq i32 %i.cz, 12
  br i1 %i.da, label %bb.x, label %expr_free.exit

bb.x:                                             ; preds = %bcemit_jmp.exit34
  %i.db = load i32, ptr %1, align 8, !tbaa !33
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !66
  %.not.i.i35 = icmp ult i32 %i.db, %i.dd
  br i1 %.not.i.i35, label %expr_free.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !89
  %i.dg = add i32 %i.df, -1
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !89
  br label %expr_free.exit

expr_free.exit:                                   ; preds = %bb.g, %bb.h, %jmp_patchins.exit.i.i, %bb.y, %bb.x, %bcemit_jmp.exit34
  %.1 = phi i32 [ %.1.i33, %bb.y ], [ %.1.i33, %bcemit_jmp.exit34 ], [ %.1.i33, %bb.x ], [ %i.l, %bb.h ], [ %.0.i, %jmp_patchins.exit.i.i ], [ %.0.i, %bb.g ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bcemit_arith(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 12) %1, ptr noundef nonnull %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 5
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @expr_toanyreg(ptr noundef %0, ptr noundef %3)
  %i.c = tail call fastcc i32 @expr_toanyreg(ptr noundef %0, ptr noundef %2)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.d = icmp samesign ugt i32 %1, 5
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = add nuw nsw i32 %1, 84
  %i.f = tail call fastcc i32 @expr_toanyreg(ptr noundef %0, ptr noundef %3)
  %i.g = tail call fastcc i32 @expr_toanyreg(ptr noundef %0, ptr noundef %2)
  br label %bb.v

bb.e:                                             ; preds = %bb.c
  %i.h = or disjoint i32 %1, 32
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !113
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !87
  %.not.i = icmp eq i32 %i.j, %i.l
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call fastcc i32 @expr_toanyreg(ptr noundef %0, ptr noundef nonnull %3) ; 0 uses
  br label %expr_toval.exit

bb.g:                                             ; preds = %bb.e
  tail call fastcc void @expr_discharge(ptr noundef %0, ptr noundef nonnull %3)
  br label %expr_toval.exit

expr_toval.exit:                                  ; preds = %bb.f, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !86
  %i.p = icmp eq i32 %i.o, 4
  br i1 %i.p, label %bb.h, label %bb.l

bb.h:                                             ; preds = %expr_toval.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !57
  %i.s = load ptr, ptr %0, align 8, !tbaa !32
  %i.t = tail call ptr @lj_tab_set(ptr noundef %i.r, ptr noundef %i.s, ptr noundef nonnull %3) #12 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !33
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.x = load i32, ptr %i.t, align 8, !tbaa !33
  br label %const_num.exit

bb.j:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !108
  %i.aa = zext i32 %i.z to i64
  store i64 %i.aa, ptr %i.t, align 8, !tbaa !33
  %i.ab = load i32, ptr %i.y, align 4, !tbaa !108 ; 2 uses
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.y, align 4, !tbaa !108
  br label %const_num.exit

const_num.exit:                                   ; preds = %bb.i, %bb.j
  %.0.i = phi i32 [ %i.x, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %i.ad = icmp ult i32 %.0.i, 256
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %const_num.exit
  %i.ae = add nuw nsw i32 %1, 22
  br label %bb.m

bb.l:                                             ; preds = %const_num.exit, %expr_toval.exit
  %i.af = tail call fastcc i32 @expr_toanyreg(ptr noundef %0, ptr noundef %3)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.044 = phi i32 [ %.0.i, %bb.k ], [ %i.af, %bb.l ] ; 2 uses
  %.0 = phi i32 [ %i.ae, %bb.k ], [ %i.h, %bb.l ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !113
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !87
  %.not.i51 = icmp eq i32 %i.ah, %i.aj
  br i1 %.not.i51, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
end_hunk_0
