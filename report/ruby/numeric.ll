inline.NumInlined: 1036
inline.NumDeleted: 137
begin_hunk_0_@generate_mask:bb.a
  %i.u = load i64, ptr %i.b, align 8, !tbaa !11
  %i.v = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.t, i64 noundef 45, i32 noundef 1, i64 noundef %i.u) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %rb_int_minus.exit

rb_int_minus.exit:                                ; preds = %bb.c, %bb.b, %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0.i = phi i64 [ %i.v, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.s, %bb.e ], [ %i.g, %bb.b ], [ %i.j, %bb.c ]
  ret i64 %.0.i
}

declare i32 @rb_range_values(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i64 @rb_big_aref(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rb_int_digits_bigbase(i64 noundef %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit62.thread, label %rbimpl_RB_TYPE_P_fastpath.exit62

rbimpl_RB_TYPE_P_fastpath.exit62:                 ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 10
  br i1 %i.h, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit62.thread

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit62
  %i.i = tail call i64 @rb_big_norm(i64 noundef %1) #25
  br label %rbimpl_RB_TYPE_P_fastpath.exit62.thread

rbimpl_RB_TYPE_P_fastpath.exit62.thread:          ; preds = %bb.a, %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit62
  %.056 = phi i64 [ %i.i, %bb.b ], [ %1, %rbimpl_RB_TYPE_P_fastpath.exit62 ], [ %1, %bb.a ] ; 15 uses
  %i.j = trunc i64 %.056 to i1                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit62.thread
  %i.k = ashr i64 %.056, 1                        ; 2 uses
  %i.l = icmp slt i64 %i.k, 2
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.m, ptr noundef nonnull @.str.169, i64 noundef %i.k) #24
  unreachable

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit62.thread, %bb.c
  %i.n = icmp eq i64 %.056, 0                     ; 2 uses
  %i.o = and i64 %.056, 7
  %i.p = icmp ne i64 %i.o, 0
  %i.q = or i1 %i.n, %i.p
  br i1 %i.q, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.e
  %i.r = inttoptr i64 %.056 to ptr
  %i.s = load i64, ptr %i.r, align 8, !tbaa !13
  %i.t = and i64 %i.s, 8223
  %or.cond = icmp eq i64 %i.t, 10
  br i1 %or.cond, label %bb.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.u = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.168) #24
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.v = and i64 %0, 1
  %i.w = and i64 %i.v, %.056
  %or.cond103.not = icmp eq i64 %i.w, 0
  br i1 %or.cond103.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.x = ashr i64 %.056, 1                        ; 6 uses
  %i.y = ashr i64 %0, 1                           ; 4 uses
  %i.z = icmp slt i64 %i.x, 2
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aa, ptr noundef nonnull @.str.169, i64 noundef range(i64 -4611686018427387904, -9223372036854775808) %i.x) #24
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ab = icmp eq i64 %i.y, 0
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef 1) #25
  br label %rb_fix_digits.exit

bb.k:                                             ; preds = %bb.i
  %i.ad = tail call i64 @rb_ary_new() #25         ; 3 uses
  %.not22.i = icmp slt i64 %i.y, %i.x
  br i1 %.not22.i, label %rb_long2num_inline.exit21.i, label %rb_long2num_inline.exit.i

rb_long2num_inline.exit.i:                        ; preds = %bb.k, %rb_long2num_inline.exit.i
  %.01623.i = phi i64 [ %i.ai, %rb_long2num_inline.exit.i ], [ %i.y, %bb.k ] ; 2 uses
  %i.ae = urem i64 %.01623.i, %i.x
  %i.af = shl nuw nsw i64 %i.ae, 1
  %i.ag = or disjoint i64 %i.af, 1
  %i.ah = tail call i64 @rb_ary_push(i64 noundef %i.ad, i64 noundef %i.ag) #25 ; 0 uses
  %i.ai = udiv i64 %.01623.i, %i.x                ; 3 uses
  %.not.i63 = icmp samesign ult i64 %i.ai, %i.x
  br i1 %.not.i63, label %rb_long2num_inline.exit21.i, label %rb_long2num_inline.exit.i, !llvm.loop !72

rb_long2num_inline.exit21.i:                      ; preds = %rb_long2num_inline.exit.i, %bb.k
  %.016.lcssa.i = phi i64 [ %i.y, %bb.k ], [ %i.ai, %rb_long2num_inline.exit.i ]
  %i.aj = shl nsw i64 %.016.lcssa.i, 1
  %i.ak = or disjoint i64 %i.aj, 1
  %i.al = tail call i64 @rb_ary_push(i64 noundef %i.ad, i64 noundef %i.ak) #25 ; 0 uses
  br label %rb_fix_digits.exit

bb.l:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.am = trunc i64 %0 to i1
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %0) #25
  br label %rb_fix_digits.exit

bb.n:                                             ; preds = %bb.l
  %i.ao = icmp eq i64 %0, 0
  %i.ap = and i64 %0, 6
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = or i1 %i.ao, %i.aq
  br i1 %i.ar, label %rb_int_bit_length.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.n
  %i.as = inttoptr i64 %0 to ptr
  %i.at = load i64, ptr %i.as, align 8, !tbaa !13
  %i.au = and i64 %i.at, 31
  %i.av = icmp eq i64 %i.au, 10
  br i1 %i.av, label %bb.o, label %rb_int_bit_length.exit

bb.o:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.aw = tail call i64 @rb_big_bit_length(i64 noundef %0) #25
  br label %rb_int_bit_length.exit

rb_int_bit_length.exit:                           ; preds = %bb.n, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.o
  %.0.i65 = phi i64 [ 4, %bb.n ], [ %i.aw, %bb.o ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit.i ] ; 6 uses
  br i1 %i.j, label %bb.p, label %bb.q

bb.p:                                             ; preds = %rb_int_bit_length.exit
  %i.ax = ashr i64 %.056, 1
  %.lobit.i.i68 = ashr i64 %.056, 63
  %spec.select.i.i69 = xor i64 %i.ax, %.lobit.i.i68
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i69, i1 false)
  %i.az = shl nuw nsw i64 %i.ay, 1
  %i.ba = sub nuw nsw i64 129, %i.az
  br label %rb_int_bit_length.exit70

bb.q:                                             ; preds = %rb_int_bit_length.exit
  %i.bb = and i64 %.056, 6
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = or i1 %i.n, %i.bc
  br i1 %i.bd, label %rb_int_bit_length.exit70, label %rbimpl_RB_TYPE_P_fastpath.exit.i66

rbimpl_RB_TYPE_P_fastpath.exit.i66:               ; preds = %bb.q
  %i.be = inttoptr i64 %.056 to ptr
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !13
  %i.bg = and i64 %i.bf, 31
  %i.bh = icmp eq i64 %i.bg, 10
  br i1 %i.bh, label %bb.r, label %rb_int_bit_length.exit70

bb.r:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i66
  %i.bi = tail call i64 @rb_big_bit_length(i64 noundef %.056) #25
  br label %rb_int_bit_length.exit70

rb_int_bit_length.exit70:                         ; preds = %bb.p, %bb.q, %rbimpl_RB_TYPE_P_fastpath.exit.i66, %bb.r
  %.0.i67 = phi i64 [ %i.ba, %bb.p ], [ %i.bi, %bb.r ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit.i66 ], [ 4, %bb.q ] ; 2 uses
  %i.bj = trunc i64 %.0.i65 to i1
  br i1 %i.bj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %rb_int_bit_length.exit70
  %i.bk = tail call fastcc i64 @fix_divide(i64 noundef %.0.i65, i64 noundef %.0.i67, i64 noundef 47), !inline_history !30
  br label %rb_int_div.exit

bb.t:                                             ; preds = %rb_int_bit_length.exit70
  %i.bl = icmp eq i64 %.0.i65, 0
  %i.bm = and i64 %.0.i65, 6
  %i.bn = icmp ne i64 %i.bm, 0
  %i.bo = or i1 %i.bl, %i.bn
  br i1 %i.bo, label %.critedge.preheader, label %rbimpl_RB_TYPE_P_fastpath.exit.i71

rbimpl_RB_TYPE_P_fastpath.exit.i71:               ; preds = %bb.t
  %i.bp = inttoptr i64 %.0.i65 to ptr
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !13
  %i.br = and i64 %i.bq, 31
  %i.bs = icmp eq i64 %i.br, 10
  br i1 %i.bs, label %bb.u, label %.critedge.preheader

bb.u:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i71
  %i.bt = tail call i64 @rb_big_div(i64 noundef %.0.i65, i64 noundef %.0.i67) #25, !inline_history !29
  br label %rb_int_div.exit

rb_int_div.exit:                                  ; preds = %bb.s, %bb.u
  %.0.i72 = phi i64 [ %i.bk, %bb.s ], [ %i.bt, %bb.u ] ; 6 uses
  %i.bu = trunc i64 %.0.i72 to i1
  br i1 %i.bu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %rb_int_div.exit
  %i.bv = icmp slt i64 %.0.i72, 100
  br i1 %i.bv, label %.critedge.preheader, label %int_lt.exit.thread99

bb.w:                                             ; preds = %rb_int_div.exit
  %i.bw = icmp eq i64 %.0.i72, 0
  %i.bx = and i64 %.0.i72, 6
  %i.by = icmp ne i64 %i.bx, 0
  %i.bz = or i1 %i.bw, %i.by
  br i1 %i.bz, label %.critedge.preheader, label %rbimpl_RB_TYPE_P_fastpath.exit.i73

rbimpl_RB_TYPE_P_fastpath.exit.i73:               ; preds = %bb.w
  %i.ca = inttoptr i64 %.0.i72 to ptr
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !13
  %i.cc = and i64 %i.cb, 31
  %i.cd = icmp eq i64 %i.cc, 10
  br i1 %i.cd, label %int_lt.exit, label %.critedge.preheader

int_lt.exit:                                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i73
  %i.ce = tail call i64 @rb_big_lt(i64 noundef %.0.i72, i64 noundef 101) #25
  %.not = icmp eq i64 %i.ce, 0
  br i1 %.not, label %int_lt.exit.thread99, label %.critedge.preheader

.critedge.preheader:                              ; preds = %int_lt.exit, %rbimpl_RB_TYPE_P_fastpath.exit.i73, %bb.w, %bb.t, %rbimpl_RB_TYPE_P_fastpath.exit.i71, %bb.v
  %i.cf = tail call i64 @rb_ary_new() #25         ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.preheader, %RARRAY_AREF.exit77
  %.055113 = phi i64 [ %i.cv, %RARRAY_AREF.exit77 ], [ %0, %.critedge.preheader ]
  %i.cg = tail call i64 @rb_int_divmod(i64 noundef %.055113, i64 noundef %.056)
  %i.ch = inttoptr i64 %i.cg to ptr               ; 6 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !13
  %i.cj = and i64 %i.ci, 8192
  %.not.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.critedge
  %i.ck = getelementptr i8, ptr %i.ch, i64 16
  br label %RARRAY_AREF.exit

bb.y:                                             ; preds = %.critedge
  %i.cl = getelementptr i8, ptr %i.ch, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !15
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.x, %bb.y
  %.0.i.i = phi ptr [ %i.ck, %bb.x ], [ %i.cm, %bb.y ]
  %i.cn = getelementptr i8, ptr %.0.i.i, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !11
  %i.cp = tail call i64 @rb_ary_push(i64 noundef %i.cf, i64 noundef %i.co) #25 ; 0 uses
  %i.cq = load i64, ptr %i.ch, align 8, !tbaa !13
  %i.cr = and i64 %i.cq, 8192
  %.not.i.i75 = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i75, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %RARRAY_AREF.exit
  %i.cs = getelementptr i8, ptr %i.ch, i64 16
  br label %RARRAY_AREF.exit77

bb.aa:                                            ; preds = %RARRAY_AREF.exit
  %i.ct = getelementptr i8, ptr %i.ch, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !15
  br label %RARRAY_AREF.exit77

RARRAY_AREF.exit77:                               ; preds = %bb.z, %bb.aa
  %.0.i.i76 = phi ptr [ %i.cs, %bb.z ], [ %i.cu, %bb.aa ]
  %i.cv = load i64, ptr %.0.i.i76, align 8, !tbaa !11 ; 3 uses
  %i.cw = trunc i64 %i.cv to i1
  %i.cx = icmp slt i64 %i.cv, 2
  %or.cond106.not = and i1 %i.cx, %i.cw
  br i1 %or.cond106.not, label %rb_fix_digits.exit, label %.critedge, !llvm.loop !93

int_lt.exit.thread99:                             ; preds = %bb.v, %int_lt.exit
  %i.cy = tail call i64 @rb_ary_new() #25         ; 3 uses
  %i.cz = tail call i64 @int_le(i64 noundef %.056, i64 noundef %0)
  %i.da = icmp eq i64 %i.cz, 20
  br i1 %i.da, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %int_lt.exit.thread99
  %i.db = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %0) #25 ; 6 uses
  %i.dc = inttoptr i64 %i.cy to ptr               ; 2 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 16
  %i.de = inttoptr i64 %i.db to ptr               ; 4 uses
  %i.df = getelementptr i8, ptr %i.de, i64 16     ; 3 uses
  %i.dg = getelementptr i8, ptr %i.de, i64 32     ; 2 uses
  br label %bb.ab

.lr.ph:                                           ; preds = %int_lt.exit.thread99, %.lr.ph
  %.058109 = phi i64 [ %i.di, %.lr.ph ], [ %.056, %int_lt.exit.thread99 ] ; 3 uses
  %i.dh = tail call i64 @rb_ary_push(i64 noundef %i.cy, i64 noundef %.058109) #25 ; 0 uses
  %i.di = tail call i64 @rb_int_mul(i64 noundef %.058109, i64 noundef %.058109) ; 2 uses
  %i.dj = tail call i64 @int_le(i64 noundef %i.di, i64 noundef %0)
  %i.dk = icmp eq i64 %i.dj, 20
  br i1 %i.dk, label %.lr.ph, label %._crit_edge, !llvm.loop !94

.loopexit:                                        ; preds = %bb.al, %rb_array_len.exit82.thread, %RARRAY_AREF.exit91.peel._crit_edge, %rb_array_len.exit82
  br label %bb.ab, !llvm.loop !95

bb.ab:                                            ; preds = %.loopexit, %._crit_edge
  %i.dl = load i64, ptr %i.dc, align 8, !tbaa !13 ; 2 uses
  %i.dm = and i64 %i.dl, 8192
  %.not.i78 = icmp eq i64 %i.dm, 0
  br i1 %.not.i78, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dn = lshr i64 %i.dl, 15
  %i.do = and i64 %i.dn, 127
  br label %rb_array_len.exit

bb.ad:                                            ; preds = %bb.ab
  %i.dp = load i64, ptr %i.dd, align 8, !tbaa !15
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.ac, %bb.ad
  %.0.i79 = phi i64 [ %i.do, %bb.ac ], [ %i.dp, %bb.ad ]
  %.not60 = icmp eq i64 %.0.i79, 0
  br i1 %.not60, label %rb_fix_digits.exit, label %bb.ae

bb.ae:                                            ; preds = %rb_array_len.exit
  %i.dq = tail call i64 @rb_ary_pop(i64 noundef %i.cy) #25 ; 2 uses
  %i.dr = load i64, ptr %i.de, align 8, !tbaa !13 ; 2 uses
  %i.ds = and i64 %i.dr, 8192
  %.not.i80 = icmp eq i64 %i.ds, 0
  br i1 %.not.i80, label %rb_array_len.exit82, label %rb_array_len.exit82.thread

rb_array_len.exit82:                              ; preds = %bb.ae
  %i.dt = load i64, ptr %i.df, align 8, !tbaa !15 ; 2 uses
  %i.du = add i64 %i.dt, -1                       ; 2 uses
  %i.dv = icmp sgt i64 %i.du, -1
  br i1 %i.dv, label %.lr.ph111.preheader, label %.loopexit

rb_array_len.exit82.thread:                       ; preds = %bb.ae
  %i.dw = lshr i64 %i.dr, 15
  %i.dx = and i64 %i.dw, 127                      ; 3 uses
  %i.dy = add nsw i64 %i.dx, -1
  %.not133 = icmp eq i64 %i.dx, 0
  br i1 %.not133, label %.loopexit, label %RARRAY_AREF.exit85.peel

.lr.ph111.preheader:                              ; preds = %rb_array_len.exit82
  %i.dz = load ptr, ptr %i.dg, align 8, !tbaa !15
  br label %RARRAY_AREF.exit85.peel

RARRAY_AREF.exit85.peel:                          ; preds = %rb_array_len.exit82.thread, %.lr.ph111.preheader
  %.0.i81129131 = phi i64 [ %i.dt, %.lr.ph111.preheader ], [ %i.dx, %rb_array_len.exit82.thread ]
  %i.ea = phi i64 [ %i.du, %.lr.ph111.preheader ], [ %i.dy, %rb_array_len.exit82.thread ] ; 3 uses
  %.0.i.i84.peel = phi ptr [ %i.dz, %.lr.ph111.preheader ], [ %i.df, %rb_array_len.exit82.thread ]
  %i.eb = getelementptr [8 x i8], ptr %.0.i.i84.peel, i64 %i.ea
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !11
  %i.ed = tail call i64 @rb_int_divmod(i64 noundef %i.ec, i64 noundef %i.dq)
  %i.ee = inttoptr i64 %i.ed to ptr               ; 3 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !13
  %i.eg = and i64 %i.ef, 8192
  %.not.i.i86.peel = icmp eq i64 %i.eg, 0
  br i1 %.not.i.i86.peel, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %RARRAY_AREF.exit85.peel
  %i.eh = getelementptr i8, ptr %i.ee, i64 16
  br label %RARRAY_AREF.exit91.peel

bb.ag:                                            ; preds = %RARRAY_AREF.exit85.peel
  %i.ei = getelementptr i8, ptr %i.ee, i64 32
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !15
  br label %RARRAY_AREF.exit91.peel

RARRAY_AREF.exit91.peel:                          ; preds = %bb.ag, %bb.af
  %.in.peel = phi ptr [ %i.eh, %bb.af ], [ %i.ej, %bb.ag ] ; 2 uses
  %i.ek = load i64, ptr %.in.peel, align 8, !tbaa !11 ; 2 uses
  %i.el = getelementptr i8, ptr %.in.peel, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !11
  %.not126 = icmp eq i64 %i.ek, 1
  %.pre116 = shl nuw i64 %i.ea, 1                 ; 2 uses
  br i1 %.not126, label %RARRAY_AREF.exit91.peel._crit_edge, label %bb.ah

bb.ah:                                            ; preds = %RARRAY_AREF.exit91.peel
  %i.en = or disjoint i64 %.pre116, 1
  tail call void @rb_ary_store(i64 noundef %i.db, i64 noundef %i.en, i64 noundef %i.ek) #25
  br label %RARRAY_AREF.exit91.peel._crit_edge

RARRAY_AREF.exit91.peel._crit_edge:               ; preds = %RARRAY_AREF.exit91.peel, %bb.ah
  tail call void @rb_ary_store(i64 noundef %i.db, i64 noundef %.pre116, i64 noundef %i.em) #25
  %.not127 = icmp eq i64 %i.ea, 0
  br i1 %.not127, label %.loopexit, label %.lr.ph111.peel.next

.lr.ph111.peel.next:                              ; preds = %RARRAY_AREF.exit91.peel._crit_edge
  %i.eo = add i64 %.0.i81129131, -2
  br label %.lr.ph111

.lr.ph111:                                        ; preds = %.lr.ph111.peel.next, %bb.al
  %.057110 = phi i64 [ %i.fg, %bb.al ], [ %i.eo, %.lr.ph111.peel.next ] ; 4 uses
  %i.ep = load i64, ptr %i.de, align 8, !tbaa !13
  %i.eq = and i64 %i.ep, 8192
  %.not.i.i83 = icmp eq i64 %i.eq, 0
  br i1 %.not.i.i83, label %bb.ai, label %RARRAY_AREF.exit85

bb.ai:                                            ; preds = %.lr.ph111
  %i.er = load ptr, ptr %i.dg, align 8, !tbaa !15
  br label %RARRAY_AREF.exit85

RARRAY_AREF.exit85:                               ; preds = %.lr.ph111, %bb.ai
  %.0.i.i84 = phi ptr [ %i.er, %bb.ai ], [ %i.df, %.lr.ph111 ]
  %i.es = getelementptr [8 x i8], ptr %.0.i.i84, i64 %.057110
  %i.et = load i64, ptr %i.es, align 8, !tbaa !11
  %i.eu = tail call i64 @rb_int_divmod(i64 noundef %i.et, i64 noundef %i.dq)
  %i.ev = inttoptr i64 %i.eu to ptr               ; 3 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !13
  %i.ex = and i64 %i.ew, 8192
  %.not.i.i86 = icmp eq i64 %i.ex, 0
  br i1 %.not.i.i86, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %RARRAY_AREF.exit85
  %i.ey = getelementptr i8, ptr %i.ev, i64 16
  br label %bb.al

bb.ak:                                            ; preds = %RARRAY_AREF.exit85
  %i.ez = getelementptr i8, ptr %i.ev, i64 32
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !15
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %.in = phi ptr [ %i.ey, %bb.aj ], [ %i.fa, %bb.ak ] ; 2 uses
end_hunk_0
