Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Iint?download=true
inline.NumInlined: 11
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@H5I_clear_type:bb.a
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !64
  store ptr %i.fb, ptr %i.eu, align 8, !tbaa !63
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge96
  %i.fc = getelementptr inbounds nuw i8, ptr %.sink121, i64 80
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !65 ; 3 uses
  %.not63 = icmp eq ptr %i.fd, null
  %.phi.trans.insert99 = getelementptr inbounds nuw i8, ptr %.sink121, i64 88
  %.pre100 = load ptr, ptr %.phi.trans.insert99, align 8, !tbaa !64 ; 3 uses
  br i1 %.not63, label %._crit_edge98, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 32
  store ptr %.pre100, ptr %i.fe, align 8, !tbaa !64
  br label %._crit_edge98

._crit_edge98:                                    ; preds = %bb.ah, %bb.ai
  %.not64 = icmp eq ptr %.pre100, null
  br i1 %.not64, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge98
  %i.ff = getelementptr inbounds nuw i8, ptr %.pre100, i64 24
  store ptr %i.fd, ptr %i.ff, align 8, !tbaa !65
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge98
  %i.fg = getelementptr inbounds nuw i8, ptr %.pre97, i64 16 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !66
  %i.fi = add i32 %i.fh, -1
  store i32 %i.fi, ptr %i.fg, align 8, !tbaa !66
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.y
  %i.fj = call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5I_id_info_t_reg_free_list, ptr noundef nonnull %.sink121) #8 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph92, %bb.al
  %.not65 = icmp eq ptr %i.db, null
  br i1 %.not65, label %.loopexit, label %.lr.ph92, !llvm.loop !67

.loopexit:                                        ; preds = %bb.am, %._crit_edge, %bb.v, %bb.d, %bb.g, %bb.b
  %.0 = phi i32 [ -1, %bb.d ], [ -1, %bb.g ], [ 0, %bb.b ], [ 0, %bb.v ], [ 0, %._crit_edge ], [ 0, %bb.am ]
  ret i32 %.0
}

declare ptr @H5FL_reg_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5I__destroy_type(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.n, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.g = icmp sgt i32 %0, -1
  %i.h = load i32, ptr @H5I_next_type_g, align 4
  %.not = icmp slt i32 %0, %i.h
  %or.cond = select i1 %i.g, i1 %.not, i1 false
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !27
  %i.j = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !27
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__destroy_type, i32 noundef 534, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.l = zext nneg i32 %0 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @H5I_type_info_array_g, i64 %i.l ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14   ; 6 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !33
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.s = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.t = load i64, ptr @H5E_BADGROUP_g, align 8, !tbaa !27
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__destroy_type, i32 noundef 538, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.6) #8 ; 0 uses
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.v = tail call i32 @H5I_clear_type(i32 noundef %0, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.y = load i64, ptr @H5E_CANTRELEASE_g, align 8, !tbaa !27
  %i.z = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__destroy_type, i32 noundef 542, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.8) #8 ; 0 uses
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !34  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !30
  %i.ad = and i32 %i.ac, 1
  %.not22 = icmp eq i32 %i.ad, 0
  br i1 %.not22, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call ptr @H5MM_xfree_const(ptr noundef nonnull %i.aa) #8
  store ptr %i.ae, ptr %i.n, align 8, !tbaa !34
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !17 ; 2 uses
  %.not23 = icmp eq ptr %i.ag, null
  br i1 %.not23, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !53
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !54
  tail call void @free(ptr noundef %i.aj) #8
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !17
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !53
  tail call void @free(ptr noundef %i.am) #8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store ptr null, ptr %i.af, align 8, !tbaa !17
  %i.an = tail call ptr @H5MM_xfree(ptr noundef nonnull %i.n) #8 ; 0 uses
  store ptr null, ptr %i.m, align 8, !tbaa !14
  br label %bb.n

bb.n:                                             ; preds = %bb.c, %bb.f, %bb.h, %bb.m, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.f ], [ -1, %bb.h ], [ 0, %bb.m ], [ 0, %bb.a ]
  ret i32 %.0
}

declare ptr @H5MM_xfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i64 -1, -9223372036854775808) i64 @H5I__register(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5I_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.ao, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.g = icmp sgt i32 %0, -1
  %i.h = load i32, ptr @H5I_next_type_g, align 4
  %.not = icmp slt i32 %0, %i.h
  %or.cond = select i1 %i.g, i1 %.not, i1 false
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !27
  %i.j = load i64, ptr @H5E_BADRANGE_g, align 8, !tbaa !27
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__register, i32 noundef 591, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.5) #8 ; 0 uses
  br label %bb.ao

bb.d:                                             ; preds = %bb.b
  %i.l = zext nneg i32 %0 to i64                  ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr @H5I_type_info_array_g, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14   ; 6 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !33
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.s = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.t = load i64, ptr @H5E_BADGROUP_g, align 8, !tbaa !27
  %i.u = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__register, i32 noundef 594, i64 noundef %i.s, i64 noundef %i.t, ptr noundef nonnull @.str.6) #8 ; 0 uses
  br label %bb.ao

bb.g:                                             ; preds = %bb.e
  %i.v = tail call noalias ptr @H5FL_reg_calloc(ptr noundef nonnull @H5_H5I_id_info_t_reg_free_list) #8 ; 26 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr @H5E_ID_g, align 8, !tbaa !27
  %i.y = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !27
  %i.z = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5I__register, i32 noundef 596, i64 noundef %i.x, i64 noundef %i.y, ptr noundef nonnull @.str.9) #8 ; 0 uses
  br label %bb.ao

bb.i:                                             ; preds = %bb.g
  %i.aa = shl i64 %i.l, 56
  %5 = and i64 %i.aa, 9151314442816847872         ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !36 ; 8 uses
  %i.ad = and i64 %i.ac, 72057594037927935
  %i.ae = or disjoint i64 %i.ad, %5               ; 2 uses
  store i64 %i.ae, ptr %i.v, align 8, !tbaa !68
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 1, ptr %i.af, align 8, !tbaa !49
  %i.ag = zext i1 %2 to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store ptr %1, ptr %i.ai, align 8, !tbaa !45
  %i.aj = icmp ne ptr %3, null
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.al = zext i1 %i.aj to i8
  store i8 %i.al, ptr %i.ak, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  store ptr %3, ptr %i.am, align 8, !tbaa !69
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store ptr %4, ptr %i.an, align 8, !tbaa !47
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  store i8 0, ptr %i.ao, align 8, !tbaa !43
  %sh.diff = lshr exact i64 %5, 32
  %tr.sh.diff = trunc nuw nsw i64 %sh.diff to i32
  %i.ap = add nsw i32 %tr.sh.diff, -1640531527
  %sh.diff455.a = lshr i64 %i.ac, 32
  %tr.sh.diff456.a = trunc nuw i64 %sh.diff455.a to i32
  %i.aq = and i32 %tr.sh.diff456.a, 16711680
  %i.ar = add nsw i32 %i.ap, %i.aq
  %sh.diff457 = lshr i64 %i.ac, 32
  %tr.sh.diff458 = trunc nuw i64 %sh.diff457 to i32
  %i.as = and i32 %tr.sh.diff458, 65280
  %i.at = add nsw i32 %i.ar, %i.as
  %i.au = lshr i64 %i.ac, 32
  %i.av = trunc nuw i64 %i.au to i32
  %i.aw = and i32 %i.av, 255
  %i.ax = add nsw i32 %i.at, %i.aw                ; 2 uses
  %i.ay = trunc i64 %i.ac to i32
  %i.az = and i32 %i.ay, -16777216
  %i.ba = trunc i64 %i.ac to i32
  %i.bb = and i32 %i.ba, 16711680
  %i.bc = trunc i64 %i.ac to i32
  %i.bd = and i32 %i.bc, 65280
  %i.be = trunc i64 %i.ac to i32
  %i.bf = and i32 %i.be, 255
  %i.bg = add i32 %i.az, -1622558014
  %i.bh = sub i32 %i.bg, %i.ax
  %i.bi = add i32 %i.bh, %i.bb
  %i.bj = add i32 %i.bi, %i.bd
  %i.bk = add i32 %i.bj, %i.bf
  %i.bl = xor i32 %i.bk, 522093                   ; 4 uses
  %i.bm = add nsw i32 %i.ax, 17973513
  %i.bn = sub i32 %i.bm, %i.bl
  %i.bo = shl i32 %i.bl, 8
  %i.bp = xor i32 %i.bn, %i.bo                    ; 4 uses
  %i.bq = add i32 %i.bl, %i.bp
  %i.br = sub i32 -17973513, %i.bq
  %i.bs = lshr i32 %i.bp, 13
  %i.bt = xor i32 %i.br, %i.bs                    ; 4 uses
  %i.bu = add i32 %i.bp, %i.bt
  %i.bv = sub i32 %i.bl, %i.bu
  %i.bw = lshr i32 %i.bt, 12
  %i.bx = xor i32 %i.bv, %i.bw                    ; 4 uses
  %i.by = add i32 %i.bt, %i.bx
  %i.bz = sub i32 %i.bp, %i.by
  %i.ca = shl i32 %i.bx, 16
  %i.cb = xor i32 %i.bz, %i.ca                    ; 4 uses
  %i.cc = add i32 %i.bx, %i.cb
  %i.cd = sub i32 %i.bt, %i.cc
  %i.ce = lshr i32 %i.cb, 5
  %i.cf = xor i32 %i.cd, %i.ce                    ; 4 uses
  %i.cg = add i32 %i.cb, %i.cf
  %i.ch = sub i32 %i.bx, %i.cg
  %i.ci = lshr i32 %i.cf, 3
  %i.cj = xor i32 %i.ch, %i.ci                    ; 3 uses
  %i.ck = add i32 %i.cf, %i.cj
  %i.cl = sub i32 %i.cb, %i.ck
  %i.cm = shl i32 %i.cj, 10
  %i.cn = xor i32 %i.cl, %i.cm                    ; 2 uses
  %i.co = add i32 %i.cj, %i.cn
  %i.cp = sub i32 %i.cf, %i.co
  %i.cq = lshr i32 %i.cn, 15
  %i.cr = xor i32 %i.cp, %i.cq                    ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.v, i64 56 ; 10 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.v, i64 108
  store i32 %i.cr, ptr %i.ct, align 4, !tbaa !70
  %i.cu = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  store ptr %i.v, ptr %i.cu, align 8, !tbaa !71
  %i.cv = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  store i32 8, ptr %i.cv, align 8, !tbaa !72
  %i.cw = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 5 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !17 ; 3 uses
  %.not384 = icmp eq ptr %i.cx, null
  br i1 %.not384, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i8 0, i64 16, i1 false)
  %calloc461 = tail call dereferenceable_or_null(64) ptr @calloc(i64 1, i64 64) ; 10 uses
  store ptr %calloc461, ptr %i.cs, align 8, !tbaa !53
  %.not385 = icmp eq ptr %calloc461, null
  br i1 %.not385, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cz = getelementptr inbounds nuw i8, ptr %calloc461, i64 24
  store ptr %i.cs, ptr %i.cz, align 8, !tbaa !57
  %i.da = getelementptr inbounds nuw i8, ptr %calloc461, i64 8
  store i32 32, ptr %i.da, align 8, !tbaa !60
  %i.db = getelementptr inbounds nuw i8, ptr %calloc461, i64 12
  store i32 5, ptr %i.db, align 4, !tbaa !73
  %i.dc = getelementptr inbounds nuw i8, ptr %calloc461, i64 32
  store i64 56, ptr %i.dc, align 8, !tbaa !58
  %calloc460 = tail call dereferenceable_or_null(512) ptr @calloc(i64 1, i64 512) ; 3 uses
  store ptr %calloc460, ptr %calloc461, align 8, !tbaa !54
  %i.dd = getelementptr inbounds nuw i8, ptr %calloc461, i64 56
  store i32 -1609490463, ptr %i.dd, align 8, !tbaa !74
  %.not386 = icmp eq ptr %calloc460, null
  br i1 %.not386, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %calloc461) #8
  br label %.critedge

bb.m:                                             ; preds = %bb.k
  store ptr %i.v, ptr %i.cw, align 8, !tbaa !17
  br label %.critedge404

bb.n:                                             ; preds = %bb.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !53 ; 6 uses
  store ptr %i.df, ptr %i.cs, align 8, !tbaa !53
  %i.dg = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  store ptr null, ptr %i.dg, align 8, !tbaa !38
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !57 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !58 ; 2 uses
  %i.dl = sub i64 0, %i.dk
  %i.dm = getelementptr inbounds i8, ptr %i.di, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !75
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store ptr %i.v, ptr %i.do, align 8, !tbaa !52
  store ptr %i.cs, ptr %i.dh, align 8, !tbaa !57
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !60
  %.pre432 = load ptr, ptr %i.df, align 8, !tbaa !54
  br label %.critedge404

.critedge404:                                     ; preds = %bb.m, %bb.n
  %i.dp = phi i64 [ 56, %bb.m ], [ %i.dk, %bb.n ] ; 3 uses
  %i.dq = phi ptr [ null, %bb.m ], [ %i.dm, %bb.n ] ; 5 uses
  %i.dr = phi ptr [ %calloc460, %bb.m ], [ %.pre432, %bb.n ] ; 4 uses
  %i.ds = phi i32 [ 32, %bb.m ], [ %.pre, %bb.n ] ; 4 uses
  %i.dt = phi ptr [ %calloc461, %bb.m ], [ %i.df, %bb.n ] ; 7 uses
  %i.du = phi ptr [ %i.v, %bb.m ], [ %i.cx, %bb.n ]
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 16 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !66
  %i.dx = add i32 %i.dw, 1                        ; 3 uses
  store i32 %i.dx, ptr %i.dv, align 8, !tbaa !66
  %i.dy = add i32 %i.ds, -1
  %i.dz = and i32 %i.dy, %i.cr
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %i.ea ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 3 uses
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !61
  %i.ee = add i32 %i.ed, 1                        ; 3 uses
  store i32 %i.ee, ptr %i.ec, align 8, !tbaa !61
  %i.ef = load ptr, ptr %i.eb, align 8, !tbaa !63 ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.v, i64 88 ; 2 uses
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !76
  %i.eh = getelementptr inbounds nuw i8, ptr %i.v, i64 80 ; 3 uses
  store ptr null, ptr %i.eh, align 8, !tbaa !77
  %.not389 = icmp eq ptr %i.ef, null
  br i1 %.not389, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.critedge404
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  store ptr %i.cs, ptr %i.ei, align 8, !tbaa !65
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.critedge404
  store ptr %i.cs, ptr %i.eb, align 8, !tbaa !63
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !78
  %i.el = mul i32 %i.ek, 10
  %i.em = add i32 %i.el, 10
  %.not390 = icmp ult i32 %i.ee, %i.em
  br i1 %.not390, label %.critedge408, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.en = getelementptr inbounds nuw i8, ptr %i.dt, i64 52
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !79
  %.not391 = icmp eq i32 %i.eo, 0
  br i1 %.not391, label %bb.r, label %.critedge408

bb.r:                                             ; preds = %bb.q
  %i.ep = zext i32 %i.ds to i64                   ; 2 uses
  %i.eq = shl nuw nsw i64 %i.ep, 5
  %calloc = tail call ptr @calloc(i64 1, i64 %i.eq) ; 3 uses
  %.not392.not = icmp eq ptr %calloc, null
  br i1 %.not392.not, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.er = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  %i.es = load i32, ptr %i.er, align 4, !tbaa !73
  %i.et = add i32 %i.es, 1
  %i.eu = lshr i32 %i.dx, %i.et
  %i.ev = shl i32 %i.ds, 1
  %i.ew = add i32 %i.ev, -1                       ; 2 uses
  %i.ex = and i32 %i.ew, %i.dx
  %.not393 = icmp ne i32 %i.ex, 0
  %i.ey = zext i1 %.not393 to i32
  %i.ez = add i32 %i.eu, %i.ey                    ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  store i32 %i.ez, ptr %i.fa, align 8, !tbaa !80
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dt, i64 44 ; 2 uses
  store i32 0, ptr %i.fb, align 4, !tbaa !81
  %.not430 = icmp eq i32 %i.ds, 0
  br i1 %.not430, label %._crit_edge429, label %.lr.ph428

.lr.ph428:                                        ; preds = %bb.s, %._crit_edge
  %i.fc = phi i32 [ %i.gb, %._crit_edge ], [ 0, %bb.s ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.s ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.dr, i64 %indvars.iv
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !63 ; 2 uses
  %.not397424 = icmp eq ptr %i.fe, null
  br i1 %.not397424, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph428, %bb.x
  %i.ff = phi i32 [ %i.fx, %bb.x ], [ %i.fc, %.lr.ph428 ] ; 2 uses
  %.0425 = phi ptr [ %i.fh, %bb.x ], [ %i.fe, %.lr.ph428 ] ; 5 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0425, i64 32 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !64 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.0425, i64 52
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !59
  %i.fk = and i32 %i.fj, %i.ew
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [16 x i8], ptr %calloc, i64 %i.fl ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8 ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !61
  %i.fp = add i32 %i.fo, 1                        ; 3 uses
  store i32 %i.fp, ptr %i.fn, align 8, !tbaa !61
  %i.fq = icmp ugt i32 %i.fp, %i.ez
  br i1 %i.fq, label %bb.t, label %bb.v

bb.t:                                             ; preds = %.lr.ph
  %i.fr = add i32 %i.ff, 1                        ; 3 uses
  store i32 %i.fr, ptr %i.fb, align 4, !tbaa !81
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 12 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !78 ; 2 uses
  %i.fu = mul i32 %i.ft, %i.ez
end_hunk_0
