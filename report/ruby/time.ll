inline.NumInlined: 958
inline.NumDeleted: 130
begin_hunk_0_@time_xmlschema:bb.a
  store i8 %i.dq, ptr %i.dl, align 1, !tbaa !53
  %i.ds = load i64, ptr %i.z, align 8
  %i.dt = lshr i64 %i.ds, 23
  %i.du = trunc i64 %i.dt to i8
  %.lhs.trunc168 = and i8 %i.du, 63
  %i.dv = urem i8 %.lhs.trunc168, 10
  %i.dw = or disjoint i8 %i.dv, 48
  %i.dx = getelementptr i8, ptr %.1, i64 12
  store i8 %i.dw, ptr %i.dr, align 1, !tbaa !53
  %i.dy = getelementptr i8, ptr %.1, i64 13
  store i8 58, ptr %i.dx, align 1, !tbaa !53
  %i.dz = load i64, ptr %i.z, align 8
  %i.ea = lshr i64 %i.dz, 32
  %i.eb = trunc i64 %i.ea to i8
  %i.ec = and i8 %i.eb, 62
  %i.ed = udiv i8 %i.ec, 10
  %i.ee = or disjoint i8 %i.ed, 48
  %i.ef = getelementptr i8, ptr %.1, i64 14
  store i8 %i.ee, ptr %i.dy, align 1, !tbaa !53
  %i.eg = load i64, ptr %i.z, align 8
  %i.eh = lshr i64 %i.eg, 32
  %i.ei = trunc i64 %i.eh to i8
  %i.ej = and i8 %i.ei, 63
  %i.ek = urem i8 %i.ej, 10
  %i.el = or disjoint i8 %i.ek, 48
  %i.em = getelementptr i8, ptr %.1, i64 15       ; 2 uses
  store i8 %i.el, ptr %i.ef, align 1, !tbaa !53
  br i1 %i.ao, label %bb.t, label %ruby_nonempty_memcpy.exit

bb.t:                                             ; preds = %bb.s
  %i.en = getelementptr i8, ptr %.1.i.i, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !46 ; 8 uses
  %i.ep = getelementptr i8, ptr %.1, i64 16       ; 4 uses
  store i8 46, ptr %i.em, align 1, !tbaa !53
  %i.eq = icmp samesign ult i64 %.0, 10
  br i1 %i.eq, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.er = trunc nuw nsw i64 %.0 to i32
  %i.es = sub nuw nsw i32 9, %i.er
  br label %bb.ac

bb.v:                                             ; preds = %bb.t
  %i.et = add nsw i64 %.0, -9
  %i.eu = tail call i64 @rb_int_positive_pow(i64 noundef 10, i64 noundef %i.et) #18 ; 4 uses
  %i.ev = and i64 %i.eo, 1
  %i.ew = and i64 %i.ev, %i.eu
  %or.cond.not.i = icmp eq i64 %i.ew, 0
  br i1 %or.cond.not.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ex = ashr i64 %i.eo, 1
  %i.ey = ashr i64 %i.eu, 1
  %i.ez = sext i64 %i.ex to i128
  %i.fa = sext i64 %i.ey to i128
  %i.fb = mul nsw i128 %i.fa, %i.ez               ; 3 uses
  %i.fc = add nsw i128 %i.fb, 4611686018427387904
  %or.cond.i.i = icmp ult i128 %i.fc, 9223372036854775808
  br i1 %or.cond.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fd = trunc nsw i128 %i.fb to i64
  %i.fe = shl nsw i64 %i.fd, 1
  %i.ff = or disjoint i64 %i.fe, 1
  br label %mulv.exit

bb.y:                                             ; preds = %bb.w
  %i.fg = tail call i64 @rb_int128t2big(i128 noundef %i.fb) #18
  br label %mulv.exit

bb.z:                                             ; preds = %bb.v
  %i.fh = icmp eq i64 %i.eo, 0
  %i.fi = and i64 %i.eo, 7
  %i.fj = icmp ne i64 %i.fi, 0
  %i.fk = or i1 %i.fh, %i.fj
  br i1 %i.fk, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.z
  %i.fl = inttoptr i64 %i.eo to ptr
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !30
  %i.fn = and i64 %i.fm, 31
  %i.fo = icmp eq i64 %i.fn, 10
  br i1 %i.fo, label %bb.aa, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.aa:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.fp = tail call i64 @rb_big_mul(i64 noundef %i.eo, i64 noundef %i.eu) #18
  br label %mulv.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.z
  %i.fq = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.eo, i64 noundef 42, i32 noundef 1, i64 noundef %i.eu) #18
  br label %mulv.exit

mulv.exit:                                        ; preds = %bb.x, %bb.y, %bb.aa, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0.i144 = phi i64 [ %i.fq, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.fp, %bb.aa ], [ %i.ff, %bb.x ], [ %i.fg, %bb.y ] ; 7 uses
  %i.fr = trunc i64 %.0.i144 to i1
  br i1 %i.fr, label %rb_integer_type_p.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %mulv.exit
  %i.fs = icmp eq i64 %.0.i144, 0
  %i.ft = and i64 %.0.i144, 6
  %i.fu = icmp ne i64 %i.ft, 0
  %i.fv = or i1 %i.fs, %i.fu
  br i1 %i.fv, label %rb_integer_type_p.exit.thread157, label %rb_integer_type_p.exit

rb_integer_type_p.exit:                           ; preds = %bb.ab
  %i.fw = inttoptr i64 %.0.i144 to ptr
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !30
  %i.fy = and i64 %i.fx, 31
  %i.fz = icmp eq i64 %i.fy, 10
  br i1 %i.fz, label %rb_integer_type_p.exit.thread, label %rb_integer_type_p.exit.thread157

rb_integer_type_p.exit.thread157:                 ; preds = %bb.ab, %rb_integer_type_p.exit
  %i.ga = tail call i64 @rb_Integer(i64 noundef %.0.i144) #18
  br label %rb_integer_type_p.exit.thread

rb_integer_type_p.exit.thread:                    ; preds = %mulv.exit, %rb_integer_type_p.exit.thread157, %rb_integer_type_p.exit
  %.0135 = phi i64 [ %.0.i144, %rb_integer_type_p.exit ], [ %i.ga, %rb_integer_type_p.exit.thread157 ], [ %.0.i144, %mulv.exit ] ; 2 uses
  %i.gb = trunc i64 %.0135 to i32
  %i.gc = or i32 %i.gb, -2
  %.neg = add nsw i32 %i.gc, 1
  br label %bb.ac

bb.ac:                                            ; preds = %rb_integer_type_p.exit.thread, %bb.u
  %.1136 = phi i64 [ %i.eo, %bb.u ], [ %.0135, %rb_integer_type_p.exit.thread ] ; 4 uses
  %.1133 = phi i32 [ %i.es, %bb.u ], [ %.neg, %rb_integer_type_p.exit.thread ] ; 3 uses
  %i.gd = icmp sgt i32 %.1133, -1
  %i.ge = icmp samesign ult i64 %.0, 2147483647
  %or.cond5 = select i1 %i.gd, i1 %i.ge, i1 false
  br i1 %or.cond5, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.gf = trunc i64 %.1136 to i1
  br i1 %i.gf, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gg = ashr i64 %.1136, 1
  br label %rb_num2long_inline.exit147

bb.af:                                            ; preds = %bb.ad
  %i.gh = tail call i64 @rb_num2long(i64 noundef %.1136) #18
  br label %rb_num2long_inline.exit147

rb_num2long_inline.exit147:                       ; preds = %bb.ae, %bb.af
  %.0.i146 = phi i64 [ %i.gg, %bb.ae ], [ %i.gh, %bb.af ] ; 2 uses
  %.not174 = icmp eq i32 %.1133, 0
  br i1 %.not174, label %ruby_nonempty_memcpy.exit.loopexit, label %bb.ag

bb.ag:                                            ; preds = %rb_num2long_inline.exit147
  %i.gi = uitofp nneg i32 %.1133 to double
  %i.gj = tail call double @pow(double noundef 1.000000e+01, double noundef %i.gi) #18, !tbaa !7
  %i.gk = fptosi double %i.gj to i64
  %i.gl = sdiv i64 %.0.i146, %i.gk
  br label %ruby_nonempty_memcpy.exit.loopexit

ruby_nonempty_memcpy.exit.loopexit:               ; preds = %bb.ag, %rb_num2long_inline.exit147
  %.0134 = phi i64 [ %i.gl, %bb.ag ], [ %.0.i146, %rb_num2long_inline.exit147 ]
  %i.gm = add nuw nsw i64 %.0, 1
  %i.gn = trunc nuw nsw i64 %.0 to i32
  %i.go = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.ep, i64 noundef %i.gm, ptr noundef nonnull @.str.135, i32 noundef %i.gn, i64 noundef %.0134) #18
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr i8, ptr %i.ep, i64 %i.gp
  br label %ruby_nonempty_memcpy.exit

bb.ah:                                            ; preds = %bb.ac
  %i.gr = tail call i64 @rb_int2str(i64 noundef %.1136, i32 noundef 10) #18
  %i.gs = inttoptr i64 %i.gr to ptr               ; 3 uses
  %i.gt = getelementptr i8, ptr %i.gs, i64 16
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !56 ; 3 uses
  %i.gv = icmp sgt i64 %.0, %i.gu
  br i1 %i.gv, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gw = sub i64 %.0, %i.gu
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ep, i8 noundef 48, i64 noundef %i.gw, i1 noundef false) #18
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.0128 = phi i64 [ %i.gu, %bb.ai ], [ %.0, %bb.ah ] ; 3 uses
  %i.gx = getelementptr i8, ptr %i.ep, i64 %.0    ; 3 uses
  %i.gy = sub i64 0, %.0128
  %i.gz = getelementptr i8, ptr %i.gx, i64 %i.gy
  %i.ha = load i64, ptr %i.gs, align 8, !tbaa !30
  %i.hb = and i64 %i.ha, 8192
  %.not.i148 = icmp eq i64 %i.hb, 0
  %i.hc = getelementptr i8, ptr %i.gs, i64 24     ; 2 uses
  br i1 %.not.i148, label %RSTRING_PTR.exit149, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !53
  br label %RSTRING_PTR.exit149

RSTRING_PTR.exit149:                              ; preds = %bb.aj, %bb.ak
  %i.he = phi ptr [ %i.hd, %bb.ak ], [ %i.hc, %bb.aj ]
  %.not.i150 = icmp eq i64 %.0128, 0
  br i1 %.not.i150, label %ruby_nonempty_memcpy.exit, label %bb.al

bb.al:                                            ; preds = %RSTRING_PTR.exit149
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.gz, ptr noundef nonnull readonly align 1 %i.he, i64 noundef %.0128, i1 noundef false) #18
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.al, %RSTRING_PTR.exit149, %ruby_nonempty_memcpy.exit.loopexit, %bb.s
  %.4 = phi ptr [ %i.em, %bb.s ], [ %i.gq, %ruby_nonempty_memcpy.exit.loopexit ], [ %i.gx, %RSTRING_PTR.exit149 ], [ %i.gx, %bb.al ] ; 9 uses
  %i.hf = load i64, ptr %i.z, align 8
  %i.hg = and i64 %i.hf, 61572651155456
  %i.hh = icmp eq i64 %i.hg, 8796093022208
  br i1 %i.hh, label %bb.am, label %bb.an

bb.am:                                            ; preds = %ruby_nonempty_memcpy.exit
  store i8 90, ptr %.4, align 1, !tbaa !53
  %i.hi = getelementptr i8, ptr %.4, i64 1
  br label %bb.aq

bb.an:                                            ; preds = %ruby_nonempty_memcpy.exit
  %i.hj = tail call i64 @rb_time_utc_offset(i64 noundef %2) ; 3 uses
  %i.hk = trunc i64 %i.hj to i1
  br i1 %i.hk, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.hl = ashr i64 %i.hj, 1
  br label %rb_num2long_inline.exit153

bb.ap:                                            ; preds = %bb.an
  %i.hm = tail call i64 @rb_num2long(i64 noundef %i.hj) #18
  br label %rb_num2long_inline.exit153

rb_num2long_inline.exit153:                       ; preds = %bb.ao, %bb.ap
  %.0.i152 = phi i64 [ %i.hl, %bb.ao ], [ %i.hm, %bb.ap ] ; 2 uses
  %i.hn = icmp slt i64 %.0.i152, 0
  %i.ho = select i1 %i.hn, i8 45, i8 43
  %spec.select141 = tail call i64 @llvm.abs.i64(i64 %.0.i152, i1 false) ; 3 uses
  %i.hp = sdiv i64 %spec.select141, 60
  %i.hq = getelementptr i8, ptr %.4, i64 1
  store i8 %i.ho, ptr %.4, align 1, !tbaa !53
  %i.hr = sdiv i64 %spec.select141, 3600
  %i.hs = sdiv i64 %spec.select141, 36000
  %i.ht = trunc i64 %i.hs to i8
  %i.hu = add i8 %i.ht, 48
  %i.hv = getelementptr i8, ptr %.4, i64 2
  store i8 %i.hu, ptr %i.hq, align 1, !tbaa !53
  %i.hw = srem i64 %i.hr, 10
  %i.hx = trunc nsw i64 %i.hw to i8
  %i.hy = add nsw i8 %i.hx, 48
  %i.hz = getelementptr i8, ptr %.4, i64 3
  store i8 %i.hy, ptr %i.hv, align 1, !tbaa !53
  %i.ia = getelementptr i8, ptr %.4, i64 4
  store i8 58, ptr %i.hz, align 1, !tbaa !53
  %i.ib = srem i64 %i.hp, 60
  %.lhs.trunc170 = trunc nsw i64 %i.ib to i8      ; 2 uses
  %i.ic = sdiv i8 %.lhs.trunc170, 10
  %i.id = add nsw i8 %i.ic, 48
  %i.ie = getelementptr i8, ptr %.4, i64 5
  store i8 %i.id, ptr %i.ia, align 1, !tbaa !53
  %i.if = srem i8 %.lhs.trunc170, 10
  %i.ig = add nsw i8 %i.if, 48
  %i.ih = getelementptr i8, ptr %.4, i64 6
  store i8 %i.ig, ptr %i.ie, align 1, !tbaa !53
  br label %bb.aq

bb.aq:                                            ; preds = %rb_num2long_inline.exit153, %bb.am
  %.5 = phi ptr [ %i.hi, %bb.am ], [ %i.ih, %rb_num2long_inline.exit153 ]
  %i.ii = inttoptr i64 %.0126 to ptr              ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !30
  %i.ik = and i64 %i.ij, 8192
  %.not.i154 = icmp eq i64 %i.ik, 0
  %i.il = getelementptr i8, ptr %i.ii, i64 24     ; 2 uses
  br i1 %.not.i154, label %RSTRING_PTR.exit155, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !53
  br label %RSTRING_PTR.exit155

RSTRING_PTR.exit155:                              ; preds = %bb.aq, %bb.ar
  %i.in = phi ptr [ %i.im, %bb.ar ], [ %i.il, %bb.aq ]
  %i.io = ptrtoint ptr %.5 to i64
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = sub i64 %i.io, %i.ip
  tail call void @rb_str_set_len(i64 noundef %.0126, i64 noundef %i.iq) #18
  ret i64 %.0126
}

declare extern_weak void @rb_define_private_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @time_dump(i32 noundef %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %i.a = alloca [17 x i8], align 16               ; 10 uses
  %3 = alloca %struct.vtm, align 8                ; 6 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #19
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.c = icmp eq i64 %2, 0
  %i.d = and i64 %2, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !29

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %rb_check_arity.exit
  %i.g = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !30
  %i.i = and i64 %i.h, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.i, 76
  br i1 %or.cond.not.i.i.i, label %bb.c, label %.critedge.i.i.i, !prof !31

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.j = getelementptr i8, ptr %i.g, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !17   ; 2 uses
  %i.l = and i64 %i.k, -2                         ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = trunc i64 %i.k to i1
  %i.o = getelementptr i8, ptr %i.g, i64 32       ; 2 uses
  br i1 %i.n, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.d, %bb.c
  %i.q = phi ptr [ %i.p, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %i.r = icmp eq i64 %i.l, ptrtoint (ptr @time_data_type to i64)
  br i1 %i.r, label %rbimpl_check_typeddata.exit.i.i, label %.preheader.i.i.i, !prof !15

.preheader.i.i.i:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i, %bb.e
  %.016.i.i.i = phi ptr [ %i.t, %bb.e ], [ %i.m, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.016.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader.i.i.i
  %i.s = getelementptr i8, ptr %.016.i.i.i, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %i.u = icmp eq ptr %i.t, @time_data_type
  br i1 %i.u, label %rbimpl_check_typeddata.exit.i.i, label %.preheader.i.i.i, !llvm.loop !37

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %rb_check_arity.exit
  %i.v = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @time_data_type) #18
  br label %rbimpl_check_typeddata.exit.i.i

rbimpl_check_typeddata.exit.i.i:                  ; preds = %bb.e, %.critedge.i.i.i, %RTYPEDDATA_GET_DATA.exit.i.i.i
  %.1.i.i.i = phi ptr [ %i.v, %.critedge.i.i.i ], [ %i.q, %RTYPEDDATA_GET_DATA.exit.i.i.i ], [ %i.q, %bb.e ] ; 3 uses
  %i.w = getelementptr i8, ptr %.1.i.i.i, i64 40  ; 3 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = and i64 %i.x, 61572651155456
  %.not.i.i = icmp eq i64 %i.y, 26388279066624
  br i1 %.not.i.i, label %bb.f, label %get_timeval.exit.i

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit.i.i
  %i.z = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  %i.aa = tail call i64 @rb_obj_class(i64 noundef %2) #18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.z, ptr noundef nonnull @.str.92, i64 noundef %i.aa) #19
  unreachable

get_timeval.exit.i:                               ; preds = %rbimpl_check_typeddata.exit.i.i
  %i.ab = load i64, ptr %.1.i.i.i, align 8, !tbaa !22
  %i.ac = call fastcc ptr @gmtimew(i64 noundef %i.ab, ptr noundef %3) ; 0 uses
  %i.ad = load i64, ptr %3, align 8, !tbaa !65    ; 7 uses
  %i.ae = trunc i64 %i.ad to i1
  br i1 %i.ae, label %bb.g, label %bb.m

bb.g:                                             ; preds = %get_timeval.exit.i
  %i.af = ashr i64 %i.ad, 1                       ; 5 uses
  %i.ag = icmp sgt i64 %i.af, 67435
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i64 %i.ad, -134870
  br label %rb_long2num_inline.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp slt i64 %i.af, 1900
  br i1 %i.ai, label %bb.j, label %rb_long2num_inline.exit.i

bb.j:                                             ; preds = %bb.i
  %i.aj = sub nsw i64 1900, %i.af                 ; 2 uses
  %notsub.i = add i64 %i.af, -4611686018427389805
  %or.cond.i.i = icmp slt i64 %notsub.i, 0
  br i1 %or.cond.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = shl nuw nsw i64 %i.aj, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %rb_long2num_inline.exit.i

bb.l:                                             ; preds = %bb.j
  %i.am = call i64 @rb_int2big(i64 noundef %i.aj) #18
  br label %rb_long2num_inline.exit.i

bb.m:                                             ; preds = %get_timeval.exit.i
  %i.an = call i32 @rb_int_positive_p(i64 noundef %i.ad) #18
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = call i64 @rb_int_minus(i64 noundef %i.ad, i64 noundef 134871) #18
  br label %rb_long2num_inline.exit.i

end_hunk_0
