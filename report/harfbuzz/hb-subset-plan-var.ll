Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-plan-var?download=true
inline.NumInlined: 3771
inline.NumDeleted: 1746
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN3CFF12dict_opset_t9parse_bcdERNS_14byte_str_ref_tE:bb.a

bb.c:                                             ; preds = %bb.b, %bb.n
  %.02454 = phi i32 [ 0, %bb.b ], [ %i.ai, %bb.n ] ; 4 uses
  %.02753 = phi i32 [ 0, %bb.b ], [ %i.ah, %bb.n ] ; 2 uses
  %.02852 = phi i8 [ 0, %bb.b ], [ %.129, %bb.n ] ; 2 uses
  %i.k = phi i32 [ %i.e, %bb.b ], [ %i.s, %bb.n ] ; 4 uses
  %i.l = and i32 %.02753, 1
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.m = add i32 %i.k, 1                          ; 2 uses
  %.not50 = icmp ugt i32 %i.m, %i.g
  br i1 %.not50, label %.thread41, label %bb.e, !prof !32

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp ult i32 %i.k, %i.g
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !33

bb.f:                                             ; preds = %bb.e
  store i32 %i.i, ptr %i.d, align 4, !tbaa !292
  br label %_ZN3CFF14byte_str_ref_tixEi.exit

bb.g:                                             ; preds = %bb.e
  %i.n = zext i32 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.n
  br label %_ZN3CFF14byte_str_ref_tixEi.exit

_ZN3CFF14byte_str_ref_tixEi.exit:                 ; preds = %bb.f, %bb.g
  %.pre-phi58 = phi i32 [ %.pre57, %bb.f ], [ %i.m, %bb.g ] ; 2 uses
  %.0.i = phi ptr [ @_hb_NullPool, %bb.f ], [ %i.o, %bb.g ]
  %i.p = load i8, ptr %.0.i, align 1, !tbaa !252  ; 2 uses
  store i32 %.pre-phi58, ptr %i.d, align 4, !tbaa !292
  %i.q = lshr i8 %i.p, 4
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.r = and i8 %.02852, 15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN3CFF14byte_str_ref_tixEi.exit
  %i.s = phi i32 [ %i.k, %bb.h ], [ %.pre-phi58, %_ZN3CFF14byte_str_ref_tixEi.exit ]
  %.129 = phi i8 [ %.02852, %bb.h ], [ %i.p, %_ZN3CFF14byte_str_ref_tixEi.exit ]
  %.0.in = phi i8 [ %i.r, %bb.h ], [ %i.q, %_ZN3CFF14byte_str_ref_tixEi.exit ] ; 3 uses
  switch i8 %.0.in, label %bb.k [
    i8 13, label %.thread41
    i8 15, label %bb.j
  ], !prof !647

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr %i.a, ptr %i.b, align 8, !tbaa !312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.t = zext nneg i32 %.02454 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.t
  %i.v = call noundef zeroext i1 @_Z15hb_parse_doublePPKcS0_Pdb(ptr noundef nonnull %i.b, ptr noundef nonnull %i.u, ptr noundef nonnull %i.c, i1 noundef zeroext true) #10
  %i.w = load double, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br i1 %i.v, label %bb.o, label %..thread41_crit_edge, !prof !33

..thread41_crit_edge:                             ; preds = %bb.j
  %.pre = load i32, ptr %i.f, align 8, !tbaa !294
  %.pre56 = add i32 %.pre, 1
  br label %.thread41

bb.k:                                             ; preds = %bb.i
  %i.x = zext nneg i8 %.0.in to i64
  %i.y = getelementptr inbounds nuw i8, ptr @.str.10, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !252
  %i.aa = zext nneg i32 %.02454 to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aa
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !252
  %i.ac = icmp eq i8 %.0.in, 12
  br i1 %i.ac, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ad = add nuw nsw i32 %.02454, 1              ; 3 uses
  %i.ae = icmp eq i32 %i.ad, 32
  br i1 %i.ae, label %.thread41, label %bb.m, !prof !32

bb.m:                                             ; preds = %bb.l
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.af
  store i8 45, ptr %i.ag, align 1, !tbaa !252
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k
  %.226 = phi i32 [ %i.ad, %bb.m ], [ %.02454, %bb.k ] ; 2 uses
  %i.ah = add i32 %.02753, 1
  %i.ai = add nuw nsw i32 %.226, 1
  %i.aj = icmp ult i32 %.226, 31
  br i1 %i.aj, label %bb.c, label %.thread41, !llvm.loop !646

.thread41:                                        ; preds = %bb.d, %bb.i, %bb.l, %bb.n, %..thread41_crit_edge
  %.pre-phi = phi i32 [ %.pre56, %..thread41_crit_edge ], [ %i.i, %bb.n ], [ %i.i, %bb.l ], [ %i.i, %bb.i ], [ %i.i, %bb.d ]
  store i32 %.pre-phi, ptr %i.d, align 4, !tbaa !292
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %.thread41
  %.4 = phi double [ 0.000000e+00, %.thread41 ], [ %i.w, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o
  %.5 = phi double [ %.4, %bb.o ], [ 0.000000e+00, %bb.a ]
  ret double %.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3CFF7opset_tINS_8number_tEE10process_opEjRNS_12interp_env_tIS1_EE(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(4128) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  switch i32 %0, label %bb.s [
    i32 28, label %bb.b
    i32 247, label %bb.i
    i32 248, label %bb.i
    i32 249, label %bb.i
    i32 250, label %bb.i
    i32 251, label %bb.n
    i32 252, label %bb.n
    i32 253, label %bb.n
    i32 254, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !292  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !294  ; 4 uses
  %.not.i = icmp ult i32 %i.c, %i.e
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !33

bb.c:                                             ; preds = %bb.b
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !292
  br label %_ZN3CFF14byte_str_ref_tixEi.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !293
  %i.h = zext i32 %i.c to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  br label %_ZN3CFF14byte_str_ref_tixEi.exit

_ZN3CFF14byte_str_ref_tixEi.exit:                 ; preds = %bb.c, %bb.d
  %i.j = phi i32 [ %i.f, %bb.c ], [ %i.c, %bb.d ] ; 2 uses
  %.0.i = phi ptr [ @_hb_NullPool, %bb.c ], [ %i.i, %bb.d ]
  %i.k = load i8, ptr %.0.i, align 1, !tbaa !252
  %i.l = zext i8 %i.k to i16
  %i.m = shl nuw i16 %i.l, 8
  %i.n = add i32 %i.j, 1                          ; 2 uses
  %.not.i18 = icmp ult i32 %i.n, %i.e
  br i1 %.not.i18, label %bb.f, label %bb.e, !prof !33

bb.e:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit
  %i.o = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.o, ptr %i.b, align 4, !tbaa !292
  br label %_ZN3CFF14byte_str_ref_tixEi.exit20

bb.f:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit
  %i.p = load ptr, ptr %1, align 8, !tbaa !293
  %i.q = zext i32 %i.n to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.q
  br label %_ZN3CFF14byte_str_ref_tixEi.exit20

_ZN3CFF14byte_str_ref_tixEi.exit20:               ; preds = %bb.e, %bb.f
  %i.s = phi i32 [ %i.o, %bb.e ], [ %i.j, %bb.f ]
  %.0.i19 = phi ptr [ @_hb_NullPool, %bb.e ], [ %i.r, %bb.f ]
  %i.t = load i8, ptr %.0.i19, align 1, !tbaa !252
  %i.u = zext i8 %i.t to i16
  %i.v = or disjoint i16 %i.m, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !319  ; 3 uses
  %i.y = icmp ult i32 %i.x, 513
  br i1 %i.y, label %bb.g, label %bb.h, !prof !33

bb.g:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit20
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = add nuw nsw i32 %i.x, 1
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !319
  %i.ab = zext nneg i32 %i.x to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.ab
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit

bb.h:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit20
  store i8 1, ptr %i.a, align 8, !tbaa !322
  %i.ad = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.ad, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit: ; preds = %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.ac, %bb.g ], [ @_hb_CrapPool, %bb.h ]
  %i.ae = sitofp i16 %i.v to double
  store double %i.ae, ptr %.0.i.i, align 8, !tbaa !321
  %i.af = add i32 %i.s, 2
  store i32 %i.af, ptr %i.b, align 4, !tbaa !292
  br label %bb.x

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %2 = shl nuw nsw i32 %0, 8
  %3 = add nuw nsw i32 %2, 2304
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !292 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !294 ; 2 uses
  %.not.i21 = icmp ult i32 %i.ai, %i.ak
  br i1 %.not.i21, label %bb.k, label %bb.j, !prof !33

bb.j:                                             ; preds = %bb.i
  %i.al = add i32 %i.ak, 1                        ; 2 uses
  store i32 %i.al, ptr %i.ah, align 4, !tbaa !292
  br label %_ZN3CFF14byte_str_ref_tixEi.exit23

bb.k:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %1, align 8, !tbaa !293
  %i.an = zext i32 %i.ai to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  br label %_ZN3CFF14byte_str_ref_tixEi.exit23

_ZN3CFF14byte_str_ref_tixEi.exit23:               ; preds = %bb.j, %bb.k
  %i.ap = phi i32 [ %i.al, %bb.j ], [ %i.ai, %bb.k ]
  %.0.i22 = phi ptr [ @_hb_NullPool, %bb.j ], [ %i.ao, %bb.k ]
  %i.aq = load i8, ptr %.0.i22, align 1, !tbaa !252
  %i.ar = zext i8 %i.aq to i32
  %.masked = and i32 %3, 65280
  %4 = or disjoint i32 %.masked, 108
  %sext17 = add nuw nsw i32 %4, %i.ar
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !319 ; 3 uses
  %i.au = icmp ult i32 %i.at, 513
  br i1 %i.au, label %bb.l, label %bb.m, !prof !33

bb.l:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit23
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = add nuw nsw i32 %i.at, 1
  store i32 %i.aw, ptr %i.as, align 4, !tbaa !319
  %i.ax = zext nneg i32 %i.at to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ax
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25

bb.m:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit23
  store i8 1, ptr %i.ag, align 8, !tbaa !322
  %i.az = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.az, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25: ; preds = %bb.l, %bb.m
  %.0.i.i24 = phi ptr [ %i.ay, %bb.l ], [ @_hb_CrapPool, %bb.m ]
  %i.ba = uitofp nneg i32 %sext17 to double
  store double %i.ba, ptr %.0.i.i24, align 8, !tbaa !321
  %i.bb = add i32 %i.ap, 1
  store i32 %i.bb, ptr %i.ah, align 4, !tbaa !292
  br label %bb.x

bb.n:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = shl nuw nsw i32 %0, 16
  %sext = add nsw i32 %i.bd, -16449536
  %i.be = lshr exact i32 %sext, 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !292 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !294 ; 2 uses
  %.not.i26 = icmp ult i32 %i.bg, %i.bi
  br i1 %.not.i26, label %bb.p, label %bb.o, !prof !33

bb.o:                                             ; preds = %bb.n
  %i.bj = add i32 %i.bi, 1                        ; 2 uses
  store i32 %i.bj, ptr %i.bf, align 4, !tbaa !292
  br label %_ZN3CFF14byte_str_ref_tixEi.exit28

bb.p:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr %1, align 8, !tbaa !293
  %i.bl = zext i32 %i.bg to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  br label %_ZN3CFF14byte_str_ref_tixEi.exit28

_ZN3CFF14byte_str_ref_tixEi.exit28:               ; preds = %bb.o, %bb.p
  %i.bn = phi i32 [ %i.bj, %bb.o ], [ %i.bg, %bb.p ]
  %.0.i27 = phi ptr [ @_hb_NullPool, %bb.o ], [ %i.bm, %bb.p ]
  %i.bo = load i8, ptr %.0.i27, align 1, !tbaa !252
  %i.bp = zext i8 %i.bo to i32
  %i.bq = or disjoint i32 %i.be, %i.bp
  %i.br = sub nuw nsw i32 -108, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !319 ; 3 uses
  %i.bu = icmp ult i32 %i.bt, 513
  br i1 %i.bu, label %bb.q, label %bb.r, !prof !33

bb.q:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit28
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bw = add nuw nsw i32 %i.bt, 1
  store i32 %i.bw, ptr %i.bs, align 4, !tbaa !319
  %i.bx = zext nneg i32 %i.bt to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bx
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit30

bb.r:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit28
  store i8 1, ptr %i.bc, align 8, !tbaa !322
  %i.bz = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.bz, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit30

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit30: ; preds = %bb.q, %bb.r
  %.0.i.i29 = phi ptr [ %i.by, %bb.q ], [ @_hb_CrapPool, %bb.r ]
  %i.ca = sitofp i32 %i.br to double
  store double %i.ca, ptr %.0.i.i29, align 8, !tbaa !321
  %i.cb = add i32 %i.bn, 1
  store i32 %i.cb, ptr %i.bf, align 4, !tbaa !292
  br label %bb.x

bb.s:                                             ; preds = %bb.a
  %i.cc = add i32 %0, -32
  %i.cd = icmp ult i32 %i.cc, 215
  br i1 %i.cd, label %bb.t, label %bb.w, !prof !33

bb.t:                                             ; preds = %bb.s
  %i.ce = add nsw i32 %0, -139
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !319 ; 3 uses
  %i.ch = icmp ult i32 %i.cg, 513
  br i1 %i.ch, label %bb.u, label %bb.v, !prof !33

bb.u:                                             ; preds = %bb.t
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cj = add nuw nsw i32 %i.cg, 1
  store i32 %i.cj, ptr %i.cf, align 4, !tbaa !319
  %i.ck = zext nneg i32 %i.cg to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ck
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit32

bb.v:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 1, ptr %i.cm, align 8, !tbaa !322
  %i.cn = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.cn, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit32

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit32: ; preds = %bb.u, %bb.v
  %.0.i.i31 = phi ptr [ %i.cl, %bb.u ], [ @_hb_CrapPool, %bb.v ]
  %i.co = sitofp i32 %i.ce to double
  store double %i.co, ptr %.0.i.i31, align 8, !tbaa !321
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.cp, align 4, !tbaa !319
  br label %bb.x

bb.x:                                             ; preds = %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit32, %bb.w, %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit30, %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25, %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit
  ret void
}

declare hidden noundef zeroext i1 @_Z15hb_parse_doublePPKcS0_Pdb(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(6) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !286
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !287
  %i.i = zext i32 %i.h to i64
  %.not5 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not5, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.b, !prof !32

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !71
  %i.k = load i32, ptr %0, align 1, !tbaa !64     ; 3 uses
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k) ; 2 uses
  %i.m = icmp eq i32 %i.k, 0
  br i1 %i.m, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add i32 %i.l, 1                          ; 2 uses
  %.not6 = icmp eq i32 %i.k, -1
  br i1 %.not6, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 5 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !286
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r
  %i.t = load i32, ptr %i.g, align 8, !tbaa !287
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %.not7 = icmp ugt i64 %i.s, %i.u
  br i1 %.not7, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.a, align 1, !tbaa !257   ; 3 uses
  %i.w = zext i8 %i.v to i32                      ; 2 uses
  %i.x = add i8 %i.v, -1
  %or.cond = icmp ult i8 %i.x, 4
  br i1 %or.cond, label %bb.f, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.y = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.w, i32 %i.n) ; 2 uses
  %i.z = extractvalue { i32, i1 } %i.y, 0         ; 2 uses
  %i.aa = extractvalue { i32, i1 } %i.y, 1
  br i1 %i.aa, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !285
  %i.ac = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ad = sub i64 %i.ac, %i.q
  %i.ae = trunc i64 %i.ad to i32
  %.not12.i.i.i.i = icmp ugt i32 %i.z, %i.ae
  br i1 %.not12.i.i.i.i, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit

_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !288
  %i.ah = sub i32 %i.ag, %i.z                     ; 3 uses
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !288
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread

bb.h:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit
  %i.aj = mul i32 %i.n, %i.w
  %i.ak = zext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ak
  %i.am = zext i32 %i.l to i64                    ; 4 uses
  switch i8 %i.v, label %default.unreachable [
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !257
  %i.ap = zext i8 %i.ao to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit

bb.j:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.am
  %i.ar = load i16, ptr %i.aq, align 1, !tbaa !62
  %i.as = tail call noundef i16 @llvm.bswap.i16(i16 %i.ar)
  %i.at = zext i16 %i.as to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit

bb.k:                                             ; preds = %bb.h
end_hunk_0
