inline.NumInlined: 570
inline.NumDeleted: 100
begin_hunk_0_@nurat_convert:bb.a

bb.af:                                            ; preds = %rb_integer_type_p.exit.thread.i140, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.fl = load i64, ptr @rb_cNumeric, align 8, !tbaa !19
  %i.fm = tail call i64 @rb_obj_is_kind_of(i64 noundef %.2, i64 noundef %i.fl) #16
  %i.fn = and i64 %i.fm, 4294967295
  %.not93 = icmp eq i64 %i.fn, 0
  br i1 %.not93, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %.not94 = icmp eq i32 %3, 0
  br i1 %.not94, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.fo = call i64 @rb_protect(ptr noundef nonnull @to_rational, i64 noundef %.2, ptr noundef nonnull %i.a) #16
  %i.fp = load i32, ptr %i.a, align 4, !tbaa !7
  %.not95 = icmp eq i32 %i.fp, 0
  br i1 %.not95, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @rb_set_errinfo(i64 noundef 4) #16
  br label %bb.bb

bb.aj:                                            ; preds = %bb.ag
  %i.fq = tail call i64 @rb_check_convert_type_with_id(i64 noundef %.2, i32 noundef 15, ptr noundef nonnull @.str.2, i64 noundef 3425) #16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah, %bb.af
  %.3 = phi i64 [ %.2, %bb.af ], [ %i.fq, %bb.aj ], [ %i.fo, %bb.ah ] ; 11 uses
  %i.fr = load i64, ptr @rb_cNumeric, align 8, !tbaa !19
  %i.fs = call i64 @rb_obj_is_kind_of(i64 noundef %.280, i64 noundef %i.fr) #16
  %i.ft = and i64 %i.fs, 4294967295
  %.not96 = icmp eq i64 %i.ft, 0
  br i1 %.not96, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %.not97 = icmp eq i32 %3, 0
  br i1 %.not97, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.fu = call i64 @rb_protect(ptr noundef nonnull @to_rational, i64 noundef %.280, ptr noundef nonnull %i.a) #16
  %i.fv = load i32, ptr %i.a, align 4, !tbaa !7
  %.not98 = icmp eq i32 %i.fv, 0
  br i1 %.not98, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @rb_set_errinfo(i64 noundef 4) #16
  br label %bb.bb

bb.ao:                                            ; preds = %bb.al
  %i.fw = call i64 @rb_check_convert_type_with_id(i64 noundef %.280, i32 noundef 15, ptr noundef nonnull @.str.2, i64 noundef 3425) #16
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am, %bb.ak
  %.381 = phi i64 [ %.280, %bb.ak ], [ %i.fw, %bb.ao ], [ %i.fu, %bb.am ] ; 10 uses
  %i.fx = load i64, ptr @rb_cNumeric, align 8, !tbaa !19
  %i.fy = call i64 @rb_obj_is_kind_of(i64 noundef %.3, i64 noundef %i.fx) #16
  %i.fz = and i64 %i.fy, 4294967295
  %.not99 = icmp eq i64 %i.fz, 0
  br i1 %.not99, label %rb_integer_type_p.exit142.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ga = load i64, ptr @rb_cNumeric, align 8, !tbaa !19
  %i.gb = call i64 @rb_obj_is_kind_of(i64 noundef %.381, i64 noundef %i.ga) #16
  %i.gc = and i64 %i.gb, 4294967295
  %.not100 = icmp eq i64 %i.gc, 0
  br i1 %.not100, label %rb_integer_type_p.exit142.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gd = trunc i64 %.3 to i1
  br i1 %i.gd, label %f_integer_p.exit.thread206, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ge = icmp eq i64 %.3, 0
  %i.gf = and i64 %.3, 6
  %i.gg = icmp ne i64 %i.gf, 0
  %i.gh = or i1 %i.ge, %i.gg
  br i1 %i.gh, label %f_integer_p.exit.thread, label %f_integer_p.exit

f_integer_p.exit:                                 ; preds = %bb.as
  %i.gi = inttoptr i64 %.3 to ptr
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !16
  %i.gk = and i64 %i.gj, 31
  %.not223 = icmp eq i64 %i.gk, 10
  br i1 %.not223, label %f_integer_p.exit.thread206, label %f_integer_p.exit.thread

f_integer_p.exit.thread206:                       ; preds = %bb.ar, %f_integer_p.exit
  %i.gl = trunc i64 %.381 to i1
  br i1 %i.gl, label %rb_integer_type_p.exit142.thread, label %bb.at

bb.at:                                            ; preds = %f_integer_p.exit.thread206
  %i.gm = icmp eq i64 %.381, 0
  %i.gn = and i64 %.381, 6
  %i.go = icmp ne i64 %i.gn, 0
  %i.gp = or i1 %i.gm, %i.go
  br i1 %i.gp, label %f_integer_p.exit.thread, label %f_integer_p.exit147

f_integer_p.exit147:                              ; preds = %bb.at
  %i.gq = inttoptr i64 %.381 to ptr
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !16
  %i.gs = and i64 %i.gr, 31
  %.not224 = icmp eq i64 %i.gs, 10
  br i1 %.not224, label %rb_integer_type_p.exit142.thread, label %f_integer_p.exit.thread

f_integer_p.exit.thread:                          ; preds = %bb.at, %bb.as, %f_integer_p.exit147, %f_integer_p.exit
  %i.gt = call i64 @rb_protect(ptr noundef nonnull @to_rational, i64 noundef %.3, ptr noundef nonnull %i.a) #16
  %i.gu = load i32, ptr %i.a, align 4, !tbaa !7
  %.not103 = icmp eq i32 %i.gu, 0
  br i1 %.not103, label %bb.av, label %bb.au

bb.au:                                            ; preds = %f_integer_p.exit.thread
  call void @rb_set_errinfo(i64 noundef 4) #16
  br label %bb.av

bb.av:                                            ; preds = %f_integer_p.exit.thread, %bb.au
  %.4 = phi i64 [ %.3, %bb.au ], [ %i.gt, %f_integer_p.exit.thread ]
  %i.gv = call fastcc i64 @f_div(i64 noundef %.4, i64 noundef %.381)
  br label %bb.bb

rb_integer_type_p.exit142.thread:                 ; preds = %f_integer_p.exit.thread206, %bb.ab, %bb.ap, %bb.aq, %f_integer_p.exit147, %rb_integer_type_p.exit142
  %.482 = phi i64 [ 36, %rb_integer_type_p.exit142 ], [ %.381, %f_integer_p.exit147 ], [ %.381, %bb.aq ], [ %.381, %bb.ap ], [ 36, %bb.ab ], [ %.381, %f_integer_p.exit.thread206 ] ; 12 uses
  %.5 = phi i64 [ %.2, %rb_integer_type_p.exit142 ], [ %.3, %f_integer_p.exit147 ], [ %.3, %bb.aq ], [ %.3, %bb.ap ], [ %.2, %bb.ab ], [ %.3, %f_integer_p.exit.thread206 ] ; 10 uses
  %i.gw = trunc i64 %.5 to i1
  br i1 %i.gw, label %nurat_int_value.exit, label %bb.aw

bb.aw:                                            ; preds = %rb_integer_type_p.exit142.thread
  %i.gx = icmp eq i64 %.5, 0
  %i.gy = and i64 %.5, 6
  %i.gz = icmp ne i64 %i.gy, 0
  %i.ha = or i1 %i.gx, %i.gz                      ; 2 uses
  br i1 %i.ha, label %rb_integer_type_p.exit.thread5.i.i, label %rb_integer_type_p.exit.i.i

rb_integer_type_p.exit.i.i:                       ; preds = %bb.aw
  %i.hb = inttoptr i64 %.5 to ptr                 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !16
  %i.hd = and i64 %i.hc, 31
  %i.he = icmp eq i64 %i.hd, 10
  br i1 %i.he, label %k_integer_p.exit.i, label %rb_integer_type_p.exit.thread5.i.i

rb_integer_type_p.exit.thread5.i.i:               ; preds = %rb_integer_type_p.exit.i.i, %bb.aw
  %i.hf = load i64, ptr @rb_cNumeric, align 8, !tbaa !19
  %i.hg = call i64 @rb_obj_is_kind_of(i64 noundef %.5, i64 noundef %i.hf) #16
  %i.hh = and i64 %i.hg, 4294967295
  %.not.i.i = icmp eq i64 %i.hh, 0
  %brmerge.i.i = or i1 %i.ha, %.not.i.i
  br i1 %brmerge.i.i, label %f_integer_p.exit.thread.i.i, label %f_integer_p.exit.i.i

f_integer_p.exit.i.i:                             ; preds = %rb_integer_type_p.exit.thread5.i.i
  %i.hi = inttoptr i64 %.5 to ptr                 ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !16
  %i.hk = and i64 %i.hj, 31
  %.not9.i.i = icmp eq i64 %i.hk, 10
  br i1 %.not9.i.i, label %k_integer_p.exit.i, label %f_integer_p.exit.thread.i.i

f_integer_p.exit.thread.i.i:                      ; preds = %f_integer_p.exit.i.i, %rb_integer_type_p.exit.thread5.i.i
  %i.hl = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.hl, ptr noundef nonnull @.str.45) #19
  unreachable

k_integer_p.exit.i:                               ; preds = %f_integer_p.exit.i.i, %rb_integer_type_p.exit.i.i
  %.pre-phi225 = phi ptr [ %i.hi, %f_integer_p.exit.i.i ], [ %i.hb, %rb_integer_type_p.exit.i.i ]
  %i.hm = load i64, ptr %.pre-phi225, align 8, !tbaa !16
  %i.hn = and i64 %i.hm, 31
  switch i64 %i.hn, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i [
    i64 10, label %nurat_int_value.exit
    i64 5, label %bb.ax
  ]

bb.ax:                                            ; preds = %k_integer_p.exit.i
  %i.ho = call i64 @rb_str_to_inum(i64 noundef %.5, i32 noundef 10, i32 noundef 0) #16
  br label %nurat_int_value.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %k_integer_p.exit.i
  %i.hp = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.5, i64 noundef 3393, i32 noundef 0) #16
  br label %nurat_int_value.exit

nurat_int_value.exit:                             ; preds = %k_integer_p.exit.i, %rb_integer_type_p.exit142.thread, %bb.ax, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %.0.i148 = phi i64 [ %.5, %k_integer_p.exit.i ], [ %i.hp, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ], [ %i.ho, %bb.ax ], [ %.5, %rb_integer_type_p.exit142.thread ]
  %i.hq = icmp eq i64 %.482, 36
  br i1 %i.hq, label %nurat_int_value.exit163, label %bb.ay

bb.ay:                                            ; preds = %nurat_int_value.exit
  %i.hr = trunc i64 %.482 to i1
  br i1 %i.hr, label %nurat_int_value.exit163, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hs = icmp eq i64 %.482, 0
  %i.ht = and i64 %.482, 6
  %i.hu = icmp ne i64 %i.ht, 0
  %i.hv = or i1 %i.hs, %i.hu                      ; 2 uses
  br i1 %i.hv, label %k_integer_p.exit, label %k_integer_p.exit.thread

k_integer_p.exit:                                 ; preds = %bb.az
  %or.cond.not = icmp eq i32 %3, 0
  br i1 %or.cond.not, label %bb.bb, label %rb_integer_type_p.exit.thread5.i.i152

k_integer_p.exit.thread:                          ; preds = %bb.az
  %i.hw = inttoptr i64 %.482 to ptr
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !16
  %i.hy = and i64 %i.hx, 31
  %i.hz = icmp eq i64 %i.hy, 10
  %4 = zext i1 %i.hz to i32
  %5 = or i32 %3, %4
  %or.cond.not234 = icmp eq i32 %5, 0
  br i1 %or.cond.not234, label %bb.bb, label %rb_integer_type_p.exit.i.i151

rb_integer_type_p.exit.i.i151:                    ; preds = %k_integer_p.exit.thread
  %i.ia = inttoptr i64 %.482 to ptr               ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !16
  %i.ic = and i64 %i.ib, 31
  %i.id = icmp eq i64 %i.ic, 10
  br i1 %i.id, label %k_integer_p.exit.i158, label %rb_integer_type_p.exit.thread5.i.i152

rb_integer_type_p.exit.thread5.i.i152:            ; preds = %k_integer_p.exit, %rb_integer_type_p.exit.i.i151
  %i.ie = load i64, ptr @rb_cNumeric, align 8, !tbaa !19
  %i.if = call i64 @rb_obj_is_kind_of(i64 noundef %.482, i64 noundef %i.ie) #16
  %i.ig = and i64 %i.if, 4294967295
  %.not.i.i153 = icmp eq i64 %i.ig, 0
  %brmerge.i.i154 = or i1 %i.hv, %.not.i.i153
  br i1 %brmerge.i.i154, label %f_integer_p.exit.thread.i.i157, label %f_integer_p.exit.i.i155

f_integer_p.exit.i.i155:                          ; preds = %rb_integer_type_p.exit.thread5.i.i152
  %i.ih = inttoptr i64 %.482 to ptr               ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !16
  %i.ij = and i64 %i.ii, 31
  %.not9.i.i156 = icmp eq i64 %i.ij, 10
  br i1 %.not9.i.i156, label %k_integer_p.exit.i158, label %f_integer_p.exit.thread.i.i157

f_integer_p.exit.thread.i.i157:                   ; preds = %f_integer_p.exit.i.i155, %rb_integer_type_p.exit.thread5.i.i152
  %i.ik = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ik, ptr noundef nonnull @.str.45) #19
  unreachable

k_integer_p.exit.i158:                            ; preds = %f_integer_p.exit.i.i155, %rb_integer_type_p.exit.i.i151
  %.pre-phi = phi ptr [ %i.ih, %f_integer_p.exit.i.i155 ], [ %i.ia, %rb_integer_type_p.exit.i.i151 ]
  %i.il = load i64, ptr %.pre-phi, align 8, !tbaa !16
  %i.im = and i64 %i.il, 31
  switch i64 %i.im, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i161 [
    i64 10, label %nurat_int_value.exit163
    i64 5, label %bb.ba
  ]

bb.ba:                                            ; preds = %k_integer_p.exit.i158
  %i.in = call i64 @rb_str_to_inum(i64 noundef %.482, i32 noundef 10, i32 noundef 0) #16
  br label %nurat_int_value.exit163

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i161:     ; preds = %k_integer_p.exit.i158
  %i.io = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %.482, i64 noundef 3393, i32 noundef 0) #16
  br label %nurat_int_value.exit163

nurat_int_value.exit163:                          ; preds = %k_integer_p.exit.i158, %bb.ay, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i161, %bb.ba, %nurat_int_value.exit
  %.583 = phi i64 [ 3, %nurat_int_value.exit ], [ %.482, %k_integer_p.exit.i158 ], [ %i.io, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i161 ], [ %i.in, %bb.ba ], [ %.482, %bb.ay ]
  %i.ip = call fastcc i64 @nurat_s_canonicalize_internal(i64 noundef %0, i64 noundef %.0.i148, i64 noundef %.583)
  br label %bb.bb

bb.bb:                                            ; preds = %rb_integer_type_p.exit.thread.i140, %k_integer_p.exit.thread, %bb.aa, %bb.s, %bb.o, %k_integer_p.exit, %bb.v, %f_one_p.exit, %bb.b, %nurat_int_value.exit163, %bb.av, %bb.an, %bb.ai, %bb.ae, %bb.ad
  %.0 = phi i64 [ 4, %bb.b ], [ 4, %bb.s ], [ %i.ip, %nurat_int_value.exit163 ], [ %.2, %bb.v ], [ %i.fk, %bb.ae ], [ %i.fj, %bb.ad ], [ %i.gv, %bb.av ], [ 4, %bb.an ], [ 4, %bb.ai ], [ 4, %bb.o ], [ %.2, %f_one_p.exit ], [ 4, %k_integer_p.exit ], [ %.2, %rb_integer_type_p.exit.thread.i140 ], [ %.2, %bb.aa ], [ 4, %k_integer_p.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_gcd(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %nurat_int_value.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  %i.c = and i64 %1, 6
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d                         ; 2 uses
  br i1 %i.e, label %rb_integer_type_p.exit.thread5.i.i, label %rb_integer_type_p.exit.i.i

rb_integer_type_p.exit.i.i:                       ; preds = %bb.b
  %i.f = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 10
  br i1 %i.i, label %k_integer_p.exit.i, label %rb_integer_type_p.exit.thread5.i.i

rb_integer_type_p.exit.thread5.i.i:               ; preds = %rb_integer_type_p.exit.i.i, %bb.b
  %i.j = load i64, ptr @rb_cNumeric, align 8, !tbaa !19
  %i.k = tail call i64 @rb_obj_is_kind_of(i64 noundef %1, i64 noundef %i.j) #16
  %i.l = and i64 %i.k, 4294967295
  %.not.i.i = icmp eq i64 %i.l, 0
  %brmerge.i.i = or i1 %i.e, %.not.i.i
  br i1 %brmerge.i.i, label %f_integer_p.exit.thread.i.i, label %f_integer_p.exit.i.i

f_integer_p.exit.i.i:                             ; preds = %rb_integer_type_p.exit.thread5.i.i
  %i.m = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !16
  %i.o = and i64 %i.n, 31
  %.not9.i.i = icmp eq i64 %i.o, 10
  br i1 %.not9.i.i, label %k_integer_p.exit.i, label %f_integer_p.exit.thread.i.i

f_integer_p.exit.thread.i.i:                      ; preds = %f_integer_p.exit.i.i, %rb_integer_type_p.exit.thread5.i.i
  %i.p = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @.str.45) #19
  unreachable

k_integer_p.exit.i:                               ; preds = %f_integer_p.exit.i.i, %rb_integer_type_p.exit.i.i
  %.pre-phi = phi ptr [ %i.m, %f_integer_p.exit.i.i ], [ %i.f, %rb_integer_type_p.exit.i.i ]
  %i.q = load i64, ptr %.pre-phi, align 8, !tbaa !16
  %i.r = and i64 %i.q, 31
  switch i64 %i.r, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i [
    i64 10, label %nurat_int_value.exit
    i64 5, label %bb.c
  ]

bb.c:                                             ; preds = %k_integer_p.exit.i
  %i.s = tail call i64 @rb_str_to_inum(i64 noundef %1, i32 noundef 10, i32 noundef 0) #16
  br label %nurat_int_value.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %k_integer_p.exit.i
  %i.t = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %1, i64 noundef 3393, i32 noundef 0) #16
  br label %nurat_int_value.exit

nurat_int_value.exit:                             ; preds = %k_integer_p.exit.i, %bb.a, %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %.0.i = phi i64 [ %1, %k_integer_p.exit.i ], [ %i.t, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ], [ %i.s, %bb.c ], [ %1, %bb.a ]
  %i.u = tail call fastcc i64 @f_gcd_normal(i64 noundef %0, i64 noundef %.0.i)
  ret i64 %i.u
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_lcm(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %nurat_int_value.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  %i.c = and i64 %1, 6
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d                         ; 2 uses
  br i1 %i.e, label %rb_integer_type_p.exit.thread5.i.i, label %rb_integer_type_p.exit.i.i

rb_integer_type_p.exit.i.i:                       ; preds = %bb.b
  %i.f = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 10
  br i1 %i.i, label %k_integer_p.exit.i, label %rb_integer_type_p.exit.thread5.i.i

rb_integer_type_p.exit.thread5.i.i:               ; preds = %rb_integer_type_p.exit.i.i, %bb.b
  %i.j = load i64, ptr @rb_cNumeric, align 8, !tbaa !19
  %i.k = tail call i64 @rb_obj_is_kind_of(i64 noundef %1, i64 noundef %i.j) #16
  %i.l = and i64 %i.k, 4294967295
  %.not.i.i = icmp eq i64 %i.l, 0
  %brmerge.i.i = or i1 %i.e, %.not.i.i
  br i1 %brmerge.i.i, label %f_integer_p.exit.thread.i.i, label %f_integer_p.exit.i.i

f_integer_p.exit.i.i:                             ; preds = %rb_integer_type_p.exit.thread5.i.i
  %i.m = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !16
  %i.o = and i64 %i.n, 31
  %.not9.i.i = icmp eq i64 %i.o, 10
  br i1 %.not9.i.i, label %k_integer_p.exit.i, label %f_integer_p.exit.thread.i.i

f_integer_p.exit.thread.i.i:                      ; preds = %f_integer_p.exit.i.i, %rb_integer_type_p.exit.thread5.i.i
  %i.p = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @.str.45) #19
  unreachable

k_integer_p.exit.i:                               ; preds = %f_integer_p.exit.i.i, %rb_integer_type_p.exit.i.i
  %.pre-phi = phi ptr [ %i.m, %f_integer_p.exit.i.i ], [ %i.f, %rb_integer_type_p.exit.i.i ]
  %i.q = load i64, ptr %.pre-phi, align 8, !tbaa !16
  %i.r = and i64 %i.q, 31
  switch i64 %i.r, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i [
    i64 10, label %nurat_int_value.exit
    i64 5, label %bb.c
  ]

bb.c:                                             ; preds = %k_integer_p.exit.i
  %i.s = tail call i64 @rb_str_to_inum(i64 noundef %1, i32 noundef 10, i32 noundef 0) #16
  br label %nurat_int_value.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %k_integer_p.exit.i
  %i.t = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %1, i64 noundef 3393, i32 noundef 0) #16
  br label %nurat_int_value.exit

nurat_int_value.exit:                             ; preds = %k_integer_p.exit.i, %bb.a, %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %.0.i = phi i64 [ %1, %k_integer_p.exit.i ], [ %i.t, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ], [ %i.s, %bb.c ], [ %1, %bb.a ]
  %i.u = tail call fastcc i64 @f_lcm(i64 noundef %0, i64 noundef %.0.i)
  ret i64 %i.u
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @f_lcm(i64 noundef %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = trunc i64 %0 to i1                       ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %0, 1
  br i1 %i.b, label %f_abs.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @rb_bigzero_p(i64 noundef %0) #16
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %f_abs.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = trunc i64 %1 to i1                       ; 2 uses
  br i1 %i.d, label %bb.e, label %bb.f
end_hunk_0
