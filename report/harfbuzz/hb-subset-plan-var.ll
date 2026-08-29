Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-plan-var?download=true
inline.NumInlined: 3771
inline.NumDeleted: 1746
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN3CFF7opset_tINS_8number_tEE10process_opEjRNS_12interp_env_tIS1_EE:bb.a

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = shl nuw nsw i32 %0, 8
  %i.ai = add nuw nsw i32 %i.ah, 2304
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !538 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !542 ; 2 uses
  %.not.i21 = icmp ult i32 %i.ak, %i.am
  br i1 %.not.i21, label %bb.k, label %bb.j, !prof !22

bb.j:                                             ; preds = %bb.i
  %i.an = add i32 %i.am, 1                        ; 2 uses
  store i32 %i.an, ptr %i.aj, align 4, !tbaa !538
  br label %_ZN3CFF14byte_str_ref_tixEi.exit23

bb.k:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %1, align 8, !tbaa !541
  %i.ap = zext i32 %i.ak to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ap
  br label %_ZN3CFF14byte_str_ref_tixEi.exit23

_ZN3CFF14byte_str_ref_tixEi.exit23:               ; preds = %bb.j, %bb.k
  %i.ar = phi i32 [ %i.an, %bb.j ], [ %i.ak, %bb.k ]
  %.0.i22 = phi ptr [ @_hb_NullPool, %bb.j ], [ %i.aq, %bb.k ]
  %i.as = load i8, ptr %.0.i22, align 1, !tbaa !452
  %i.at = zext i8 %i.as to i32
  %.masked = and i32 %i.ai, 65280
  %i.au = or disjoint i32 %.masked, 108
  %sext17 = add nuw nsw i32 %i.au, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !587 ; 3 uses
  %i.ax = icmp ult i32 %i.aw, 513
  br i1 %i.ax, label %bb.l, label %bb.m, !prof !22

bb.l:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit23
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = add nuw nsw i32 %i.aw, 1
  store i32 %i.az, ptr %i.av, align 4, !tbaa !587
  %i.ba = zext nneg i32 %i.aw to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.ba
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25

bb.m:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit23
  store i8 1, ptr %i.ag, align 8, !tbaa !590
  %i.bc = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.bc, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit25: ; preds = %bb.l, %bb.m
  %.0.i.i24 = phi ptr [ %i.bb, %bb.l ], [ @_hb_CrapPool, %bb.m ]
  %i.bd = uitofp nneg i32 %sext17 to double
  store double %i.bd, ptr %.0.i.i24, align 8, !tbaa !588
  %i.be = add i32 %i.ar, 1
  store i32 %i.be, ptr %i.aj, align 4, !tbaa !538
  br label %bb.x

bb.n:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bg = shl nuw nsw i32 %0, 16
  %sext = add nsw i32 %i.bg, -16449536
  %i.bh = lshr exact i32 %sext, 8
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !538 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !542 ; 2 uses
  %.not.i26 = icmp ult i32 %i.bj, %i.bl
  br i1 %.not.i26, label %bb.p, label %bb.o, !prof !22

bb.o:                                             ; preds = %bb.n
  %i.bm = add i32 %i.bl, 1                        ; 2 uses
  store i32 %i.bm, ptr %i.bi, align 4, !tbaa !538
  br label %_ZN3CFF14byte_str_ref_tixEi.exit28

bb.p:                                             ; preds = %bb.n
  %i.bn = load ptr, ptr %1, align 8, !tbaa !541
  %i.bo = zext i32 %i.bj to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  br label %_ZN3CFF14byte_str_ref_tixEi.exit28

_ZN3CFF14byte_str_ref_tixEi.exit28:               ; preds = %bb.o, %bb.p
  %i.bq = phi i32 [ %i.bm, %bb.o ], [ %i.bj, %bb.p ]
  %.0.i27 = phi ptr [ @_hb_NullPool, %bb.o ], [ %i.bp, %bb.p ]
  %i.br = load i8, ptr %.0.i27, align 1, !tbaa !452
  %i.bs = zext i8 %i.br to i32
  %i.bt = or disjoint i32 %i.bh, %i.bs
  %i.bu = sub nuw nsw i32 -108, %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !587 ; 3 uses
  %i.bx = icmp ult i32 %i.bw, 513
  br i1 %i.bx, label %bb.q, label %bb.r, !prof !22

bb.q:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit28
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bz = add nuw nsw i32 %i.bw, 1
  store i32 %i.bz, ptr %i.bv, align 4, !tbaa !587
  %i.ca = zext nneg i32 %i.bw to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.ca
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit30

bb.r:                                             ; preds = %_ZN3CFF14byte_str_ref_tixEi.exit28
  store i8 1, ptr %i.bf, align 8, !tbaa !590
  %i.cc = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.cc, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit30

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit30: ; preds = %bb.q, %bb.r
  %.0.i.i29 = phi ptr [ %i.cb, %bb.q ], [ @_hb_CrapPool, %bb.r ]
  %i.cd = sitofp i32 %i.bu to double
  store double %i.cd, ptr %.0.i.i29, align 8, !tbaa !588
  %i.ce = add i32 %i.bq, 1
  store i32 %i.ce, ptr %i.bi, align 4, !tbaa !538
  br label %bb.x

bb.s:                                             ; preds = %bb.a
  %i.cf = add i32 %0, -32
  %i.cg = icmp ult i32 %i.cf, 215
  br i1 %i.cg, label %bb.t, label %bb.w, !prof !22

bb.t:                                             ; preds = %bb.s
  %i.ch = add nsw i32 %0, -139
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !587 ; 3 uses
  %i.ck = icmp ult i32 %i.cj, 513
  br i1 %i.ck, label %bb.u, label %bb.v, !prof !22

bb.u:                                             ; preds = %bb.t
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cm = add nuw nsw i32 %i.cj, 1
  store i32 %i.cm, ptr %i.ci, align 4, !tbaa !587
  %i.cn = zext nneg i32 %i.cj to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cn
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit32

bb.v:                                             ; preds = %bb.t
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 1, ptr %i.cp, align 8, !tbaa !590
  %i.cq = load i64, ptr @_hb_NullPool, align 16
  store i64 %i.cq, ptr @_hb_CrapPool, align 16
  br label %_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit32

_ZN3CFF11arg_stack_tINS_8number_tEE8push_intEi.exit32: ; preds = %bb.u, %bb.v
  %.0.i.i31 = phi ptr [ %i.co, %bb.u ], [ @_hb_CrapPool, %bb.v ]
  %i.cr = sitofp i32 %i.ch to double
  store double %i.cr, ptr %.0.i.i31, align 8, !tbaa !588
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %i.cs, align 4, !tbaa !587
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !534
  %i.i = zext i32 %i.h to i64
  %.not5 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not5, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.k = load i32, ptr %0, align 1, !tbaa !55     ; 3 uses
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k) ; 2 uses
  %i.m = icmp eq i32 %i.k, 0
  br i1 %i.m, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = add i32 %i.l, 1                          ; 2 uses
  %.not6 = icmp eq i32 %i.k, -1
  br i1 %.not6, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 5 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r
  %i.t = load i32, ptr %i.g, align 8, !tbaa !534
  %i.u = zext i32 %i.t to i64                     ; 2 uses
  %.not7 = icmp ugt i64 %i.s, %i.u
  br i1 %.not7, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.a, align 1, !tbaa !460   ; 3 uses
  %2 = zext i8 %i.v to i32                        ; 2 uses
  %i.w = add i8 %i.v, -1
  %or.cond = icmp ult i8 %i.w, 4
  br i1 %or.cond, label %bb.f, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 %i.n) ; 2 uses
  %3 = extractvalue { i32, i1 } %i.x, 0           ; 2 uses
  %i.y = extractvalue { i32, i1 } %i.x, 1
  br i1 %i.y, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !532
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ab = sub i64 %i.aa, %i.q
  %i.ac = trunc i64 %i.ab to i32
  %.not12.i.i.i.i = icmp ugt i32 %3, %i.ac
  br i1 %.not12.i.i.i.i, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit

_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit: ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !535
  %i.af = sub i32 %i.ae, %3                       ; 3 uses
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !535
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %bb.h, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread

bb.h:                                             ; preds = %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit
  %4 = mul i32 %i.n, %2
  %i.ah = zext i32 %4 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ah
  %i.aj = zext i32 %i.l to i64                    ; 4 uses
  switch i8 %i.v, label %default.unreachable [
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !460
  %i.am = zext i8 %i.al to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit

bb.j:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.aj
  %i.ao = load i16, ptr %i.an, align 1, !tbaa !53
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %i.ao)
  %i.aq = zext i16 %i.ap to i32
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit

bb.k:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw [3 x i8], ptr %i.o, i64 %i.aj ; 3 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !452
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !452
  %i.ax = zext i8 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 8
  %i.az = or disjoint i32 %i.ay, %i.au
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !452
  %i.bc = zext i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.az, %i.bc
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit

bb.l:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.aj
  %i.bf = load i32, ptr %i.be, align 1, !tbaa !55
  %i.bg = tail call noundef i32 @llvm.bswap.i32(i32 %i.bf)
  br label %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit

default.unreachable:                              ; preds = %bb.h
  unreachable

_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit: ; preds = %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i = phi i32 [ %i.bg, %bb.l ], [ %i.am, %bb.i ], [ %i.aq, %bb.j ], [ %i.bd, %bb.k ] ; 2 uses
  %i.bh = ptrtoint ptr %i.ai to i64               ; 2 uses
  %i.bi = sub i64 %i.bh, %i.r
  %.not.i = icmp ugt i64 %i.bi, %i.u
  %i.bj = sub i64 %i.aa, %i.bh
  %i.bk = trunc i64 %i.bj to i32
  %.not12.i = icmp ugt i32 %.0.i, %i.bk
  %or.cond12 = select i1 %.not.i, i1 true, i1 %.not12.i
  br i1 %or.cond12, label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit
  %i.bl = sub i32 %i.af, %.0.i                    ; 2 uses
  store i32 %i.bl, ptr %i.ad, align 4, !tbaa !535
  %i.bm = icmp sgt i32 %i.bl, 0
  br label %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread

_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit.thread: ; preds = %bb.m, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit, %bb.g, %bb.f, %bb.b, %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit, %bb.e, %bb.d, %bb.c, %bb.a
  %i.bn = phi i1 [ false, %bb.g ], [ false, %bb.a ], [ true, %bb.b ], [ false, %_ZNK21hb_sanitize_context_t11check_arrayIN2OT7NumTypeILb1EhLj1EEEEEbPKT_jj.exit ], [ %i.bm, %bb.m ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.f ], [ false, %_ZNK2OT8CFFIndexINS_7NumTypeILb1EjLj4EEEE9offset_atEj.exit ]
  ret i1 %i.bn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT18ItemVariationStore8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.d = ptrtoint ptr %i.a to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !534
  %i.i = zext i32 %i.h to i64
  %.not = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.k = load i16, ptr %0, align 1, !tbaa !53
  %i.l = icmp eq i16 %i.k, 256
  br i1 %i.l, label %bb.c, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 3 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = load i32, ptr %i.g, align 8, !tbaa !534
  %i.s = zext i32 %i.r to i64
  %.not.i4.not = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i4.not, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.u = load i32, ptr %i.t, align 1, !tbaa !55   ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !533 ; 2 uses
  %.pre22 = load i32, ptr %i.g, align 8, !tbaa !534 ; 2 uses
  br i1 %i.v, label %._ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge, label %bb.e

._ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge: ; preds = %bb.d
  %.pre23 = ptrtoint ptr %.pre to i64
  %.pre24 = zext i32 %.pre22 to i64
  br label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.w = tail call noundef i32 @llvm.bswap.i32(i32 %i.u)
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.x ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ab = ptrtoint ptr %.pre to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = zext i32 %.pre22 to i64
  %.not.i.i.i = icmp ugt i64 %i.ac, %i.ad
  br i1 %.not.i.i.i, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.ae = load i16, ptr %i.y, align 1, !tbaa !53
  %i.af = tail call noundef i16 @llvm.bswap.i16(i16 %i.ae)
  %i.ag = zext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !53
  %i.aj = tail call noundef i16 @llvm.bswap.i16(i16 %i.ai)
  %i.ak = zext i16 %i.aj to i32
  %i.al = mul nuw i32 %i.ak, %i.ag
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.al, i32 6) ; 2 uses
  %3 = extractvalue { i32, i1 } %2, 0             ; 2 uses
  %4 = extractvalue { i32, i1 } %2, 1
  br i1 %4, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.g, !prof !434

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.an = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ao = sub i64 %i.aa, %i.an
  %i.ap = load i32, ptr %i.g, align 8, !tbaa !534
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.ao, %i.aq
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.h, !prof !434

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !532
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.aa
  %i.au = trunc i64 %i.at to i32
  %.not12.i.i.i.i.i.i.i = icmp ugt i32 %3, %i.au
  br i1 %.not12.i.i.i.i.i.i.i, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, !prof !434

_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !535
  %i.ax = sub i32 %i.aw, %3                       ; 2 uses
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !535
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13

_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread: ; preds = %._ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %.pre-phi25 = phi i64 [ %.pre24, %._ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge ], [ %i.aq, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ]
  %.pre-phi = phi i64 [ %.pre23, %._ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread_crit_edge ], [ %i.an, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ]
  %i.az = sub i64 %i.d, %.pre-phi
  %.not.i5 = icmp ugt i64 %i.az, %.pre-phi25
  br i1 %.not.i5, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.i, !prof !434

bb.i:                                             ; preds = %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.ba = load i16, ptr %i.m, align 1, !tbaa !53
  %i.bb = tail call noundef i16 @llvm.bswap.i16(i16 %i.ba)
  %i.bc = zext i16 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 2                ; 2 uses
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.d, %i.bf
  %i.bh = load i32, ptr %i.g, align 8, !tbaa !534
  %i.bi = zext i32 %i.bh to i64
  %.not.i.i.i6 = icmp ugt i64 %i.bg, %i.bi
  br i1 %.not.i.i.i6, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.j, !prof !434

bb.j:                                             ; preds = %bb.i
  %i.bj = load ptr, ptr %i.j, align 8, !tbaa !532
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.d
  %i.bm = trunc i64 %i.bl to i32
  %.not12.i.i.i = icmp ugt i32 %i.bd, %i.bm
  br i1 %.not12.i.i.i, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !434

_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !535
  %i.bp = sub i32 %i.bo, %i.bd                    ; 2 uses
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !535
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %bb.k, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, !prof !459

bb.k:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.br = load i16, ptr %i.m, align 1, !tbaa !53  ; 2 uses
  %.not.i16.not = icmp eq i16 %i.br, 0
  br i1 %.not.i16.not, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.bs = tail call noundef i16 @llvm.bswap.i16(i16 %i.br)
  %wide.trip.count = zext i16 %i.bs to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = sub i64 %i.bw, %i.bx
  %i.bz = load i32, ptr %i.g, align 8, !tbaa !534
  %i.ca = zext i32 %i.bz to i64
  %.not.i.not.i.i = icmp ugt i64 %i.by, %i.ca
  br i1 %.not.i.not.i.i, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %bb.l, !prof !21

bb.l:                                             ; preds = %.lr.ph
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.cb = load i32, ptr %i.bt, align 1, !tbaa !55 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread, label %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit

_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit: ; preds = %bb.l
  %i.cd = tail call noundef i32 @llvm.bswap.i32(i32 %i.cb)
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce
  %i.cg = tail call noundef zeroext i1 @_ZNK2OT7VarData8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %i.cf, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.cg, label %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, !prof !459

_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread: ; preds = %bb.l, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13, label %.lr.ph, !llvm.loop !600

_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread13: ; preds = %.lr.ph, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread, %bb.k, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, %bb.j, %bb.i, %bb.h, %bb.f, %bb.g, %bb.e, %bb.c, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.b, %bb.a
  %i.ch = phi i1 [ false, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ false, %bb.b ], [ false, %bb.h ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.i ], [ false, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEE16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %bb.j ], [ false, %_ZNK2OT8OffsetToINS_13VarRegionListENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread ], [ true, %bb.k ], [ false, %.lr.ph ], [ false, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit ], [ true, %_ZN21hb_sanitize_context_t8dispatchIN2OT8OffsetToINS1_7VarDataENS1_7NumTypeILb1EjLj4EEEvLb1EEEJPKNS1_18ItemVariationStoreEEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSC_.exit.thread ]
  ret i1 %i.ch
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT7VarData8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !534
  %i.i = zext i32 %i.h to i64
  %.not8 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %.not8, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.l = load i16, ptr %i.k, align 1, !tbaa !53
  %i.m = tail call noundef i16 @llvm.bswap.i16(i16 %i.l)
  %i.n = zext i16 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 1                  ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = sub i64 %i.d, %i.q
  %i.s = load i32, ptr %i.g, align 8, !tbaa !534
  %i.t = zext i32 %i.s to i64
  %.not.i.i.i = icmp ugt i64 %i.r, %i.t
  br i1 %.not.i.i.i, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.c, !prof !434

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !532
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.d
  %i.x = trunc i64 %i.w to i32
  %.not12.i.i.i = icmp ugt i32 %i.o, %i.x
  br i1 %.not12.i.i.i, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !434

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 4 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !535
  %i.aa = sub i32 %i.z, %i.o                      ; 2 uses
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !535
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, !prof !459

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit: ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !53 ; 2 uses
  %i.ae = and i16 %i.ad, -129
  %i.af = tail call i16 @llvm.bswap.i16(i16 %i.ae) ; 2 uses
  %i.ag = load i16, ptr %i.k, align 1, !tbaa !53
  %i.ah = tail call noundef i16 @llvm.bswap.i16(i16 %i.ag) ; 3 uses
  %.not = icmp ugt i16 %i.af, %i.ah
  br i1 %.not, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit
  %i.ai = zext i16 %i.ah to i32
  %i.aj = zext nneg i16 %i.af to i32
  %i.ak = load i16, ptr %0, align 1, !tbaa !53
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i32
  %i.an = add nuw nsw i32 %i.aj, %i.ai
  %.mask.i.i = lshr i16 %i.ad, 7
  %.mask.i.lobit.i = and i16 %.mask.i.i, 1
  %i.ao = zext nneg i16 %.mask.i.lobit.i to i32
  %i.ap = shl nuw nsw i32 %i.an, %i.ao
  %i.aq = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.am, i32 %i.ap) ; 2 uses
  %2 = extractvalue { i32, i1 } %i.aq, 0          ; 2 uses
  %i.ar = extractvalue { i32, i1 } %i.aq, 1
  br i1 %i.ar, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = zext i16 %i.ah to i64
  %i.at = shl nuw nsw i64 %i.as, 1
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  %i.aw = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = load i32, ptr %i.g, align 8, !tbaa !534
  %i.bb = zext i32 %i.ba to i64
  %.not.i.i = icmp ugt i64 %i.az, %i.bb
  br i1 %.not.i.i, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = load ptr, ptr %i.j, align 8, !tbaa !532
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.ax
  %i.bf = trunc i64 %i.be to i32
  %.not12.i.i = icmp ugt i32 %2, %i.bf
  br i1 %.not12.i.i, label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = load i32, ptr %i.y, align 4, !tbaa !535
  %i.bh = sub i32 %i.bg, %2                       ; 2 uses
  store i32 %i.bh, ptr %i.y, align 4, !tbaa !535
  %i.bi = icmp sgt i32 %i.bh, 0
  br label %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread

_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit.thread: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.c, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit, %bb.a
  %i.bj = phi i1 [ false, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E8sanitizeIJEEEbP21hb_sanitize_context_tDpOT_.exit ], [ false, %bb.b ], [ false, %bb.a ], [ false, %_ZNK2OT7ArrayOfINS_7NumTypeILb1EtLj2EEES2_E16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ %i.bi, %bb.g ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.e ]
  ret i1 %i.bj
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sanitizeEP21hb_sanitize_context_tj(ptr noundef nonnull align 1 dereferenceable(5) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !534
  %i.i = zext i32 %i.h to i64
  %.not43 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not43, label %.critedge, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.k = load i16, ptr %0, align 1, !tbaa !53
  %i.l = tail call noundef i16 @llvm.bswap.i16(i16 %i.k)
  %i.m = zext i16 %i.l to i32
  %i.n = mul nuw nsw i32 %i.m, 3                  ; 2 uses
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = sub i64 %i.d, %i.p
  %i.r = load i32, ptr %i.g, align 8, !tbaa !534
  %i.s = zext i32 %i.r to i64
  %.not.i.i.i = icmp ugt i64 %i.q, %i.s
  br i1 %.not.i.i.i, label %.critedge, label %bb.c, !prof !434

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !532
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.d
  %i.w = trunc i64 %i.v to i32
  %.not12.i.i.i = icmp ugt i32 %i.n, %i.w
  br i1 %.not12.i.i.i, label %.critedge, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !434

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !535
  %i.z = sub i32 %i.y, %i.n                       ; 2 uses
  store i32 %i.z, ptr %i.x, align 4, !tbaa !535
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %bb.d, label %.critedge, !prof !459

bb.d:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.ab = load i16, ptr %0, align 1, !tbaa !53    ; 2 uses
  %.not.i48.not = icmp eq i16 %i.ab, 0
  br i1 %.not.i48.not, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ac = tail call noundef i16 @llvm.bswap.i16(i16 %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %wide.trip.count = zext i16 %i.ac to i64
  br label %bb.f

bb.e:                                             ; preds = %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.f, !llvm.loop !601

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = load i32, ptr %i.g, align 8, !tbaa !534
  %i.al = zext i32 %i.ak to i64
  %.not.i.i.i17 = icmp ugt i64 %i.aj, %i.al
  br i1 %.not.i.i.i17, label %.critedge, label %bb.g, !prof !434

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.am = load i16, ptr %i.ae, align 1, !tbaa !53
  %i.an = tail call noundef i16 @llvm.bswap.i16(i16 %i.am)
  %i.ao = zext i16 %i.an to i32
  %i.ap = load i32, ptr %i.ad, align 8, !tbaa !527
  %i.aq = icmp ugt i32 %i.ap, %i.ao
  br i1 %i.aq, label %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit, label %.critedge, !prof !454

_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit: ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !460
  %i.at = zext i8 %i.as to i32
  %i.au = icmp ugt i32 %2, %i.at
  br i1 %i.au, label %bb.e, label %.critedge, !prof !459

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit: ; preds = %bb.e, %bb.d
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %.sroa.0.0.copyload.i = load i16, ptr %0, align 1, !tbaa !452
  %.not = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not, label %.critedge, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit, !prof !21

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit: ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.av = load i16, ptr %i.a, align 1, !tbaa !53
  %.not44 = icmp eq i16 %i.av, 0
  br i1 %.not44, label %.preheader, label %.critedge, !prof !22

.preheader:                                       ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit
  %.sroa.0.0.copyload.i2050 = load i16, ptr %0, align 1, !tbaa !452 ; 2 uses
  %i.aw = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i2050)
  %.not1351 = icmp ugt i16 %i.aw, 1
  br i1 %.not1351, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit23, label %._crit_edge

bb.h:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit26
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %.sroa.0.0.copyload.i20 = load i16, ptr %0, align 1, !tbaa !452 ; 2 uses
  %i.ax = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i20)
  %i.ay = zext i16 %i.ax to i64
  %.not13 = icmp samesign ult i64 %indvars.iv.next56, %i.ay
  br i1 %.not13, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit23, label %._crit_edge, !llvm.loop !602

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit23: ; preds = %.preheader, %bb.h
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %bb.h ], [ 1, %.preheader ] ; 3 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.az = getelementptr [3 x i8], ptr %i.a, i64 %indvars.iv55 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 -3
  %i.bb = load i16, ptr %i.ba, align 1, !tbaa !53
  %i.bc = tail call noundef i16 @llvm.bswap.i16(i16 %i.bb)
  %i.bd = load i16, ptr %0, align 1, !tbaa !53
  %i.be = tail call noundef i16 @llvm.bswap.i16(i16 %i.bd)
  %i.bf = zext i16 %i.be to i64
  %.not.i24 = icmp samesign ult i64 %indvars.iv55, %i.bf
  br i1 %.not.i24, label %bb.i, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit26, !prof !22

bb.i:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit23
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  br label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit26

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit26: ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit23, %bb.i
  %.0.i25 = phi ptr [ %i.az, %bb.i ], [ @_hb_NullPool, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit23 ]
  %i.bg = load i16, ptr %.0.i25, align 1, !tbaa !53
  %i.bh = tail call noundef i16 @llvm.bswap.i16(i16 %i.bg)
  %.not12 = icmp ult i16 %i.bc, %i.bh
  br i1 %.not12, label %bb.h, label %.critedge, !prof !22

._crit_edge:                                      ; preds = %bb.h, %.preheader
  %.sroa.0.0.copyload.i.i = phi i16 [ %.sroa.0.0.copyload.i2050, %.preheader ], [ %.sroa.0.0.copyload.i20, %bb.h ] ; 2 uses
  %.not.i.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.not.i, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit, label %bb.j, !prof !21

bb.j:                                             ; preds = %._crit_edge
  %i.bi = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i)
  %i.bj = zext i16 %i.bi to i64
  %i.bk = add nuw nsw i64 %i.bj, 4294967295
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.bl = and i64 %i.bk, 4294967295
  %i.bm = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.bl
  br label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit

_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit: ; preds = %._crit_edge, %bb.j
  %.0.i.i = phi ptr [ %i.bm, %bb.j ], [ @_hb_NullPool, %._crit_edge ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 5
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = load i32, ptr %i.g, align 8, !tbaa !534
  %i.bt = zext i32 %i.bs to i64
  %.not45 = icmp ugt i64 %i.br, %i.bt
  br i1 %.not45, label %.critedge, label %bb.k, !prof !21

bb.k:                                             ; preds = %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %.sroa.0.0.copyload.i.i27 = load i16, ptr %0, align 1, !tbaa !452 ; 2 uses
  %.not.i.not.i28 = icmp eq i16 %.sroa.0.0.copyload.i.i27, 0
  br i1 %.not.i.not.i28, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit30, label %bb.l, !prof !21

bb.l:                                             ; preds = %bb.k
  %i.bu = tail call noundef i16 @llvm.bswap.i16(i16 %.sroa.0.0.copyload.i.i27)
  %i.bv = zext i16 %i.bu to i64
  %i.bw = add nuw nsw i64 %i.bv, 4294967295
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.bx = and i64 %i.bw, 4294967295
  %i.by = getelementptr inbounds nuw [3 x i8], ptr %i.a, i64 %i.bx
  br label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit30

_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit30: ; preds = %bb.k, %bb.l
  %.0.i.i29 = phi ptr [ %i.by, %bb.l ], [ @_hb_NullPool, %bb.k ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 3
  %i.ca = load i16, ptr %i.bz, align 1, !tbaa !53
  %i.cb = tail call noundef i16 @llvm.bswap.i16(i16 %i.ca)
  %i.cc = zext i16 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !527
  %.not46 = icmp eq i32 %i.ce, %i.cc
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.g, %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit26, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit30, %bb.b, %bb.c, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit, %bb.a, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit
  %.1 = phi i1 [ false, %bb.b ], [ false, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit ], [ false, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_EixEi.exit26 ], [ false, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit ], [ false, %bb.a ], [ %.not46, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit30 ], [ false, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EtLj2EEENS2_ILb1EhLj1EEEE8sentinelEv.exit ], [ false, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EtLj2EEENS3_ILb1EhLj1EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %bb.c ], [ false, %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EtLj2EEENS4_ILb1EhLj1EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit ], [ false, %bb.g ], [ false, %bb.f ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_tj(ptr noundef nonnull align 1 dereferenceable(10) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.d = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !534
  %i.i = zext i32 %i.h to i64
  %.not43 = icmp ugt i64 %i.f, %i.i
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not43, label %.critedge, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.k = load i32, ptr %0, align 1, !tbaa !55
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.l, i32 6) ; 2 uses
  %4 = extractvalue { i32, i1 } %3, 0             ; 2 uses
  %5 = extractvalue { i32, i1 } %3, 1
  br i1 %5, label %.critedge, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.d, %i.n
  %i.p = load i32, ptr %i.g, align 8, !tbaa !534
  %i.q = zext i32 %i.p to i64
  %.not.i.i.i = icmp ugt i64 %i.o, %i.q
  br i1 %.not.i.i.i, label %.critedge, label %bb.d, !prof !434

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !532
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %i.d
  %i.u = trunc i64 %i.t to i32
  %.not12.i.i.i = icmp ugt i32 %4, %i.u
  br i1 %.not12.i.i.i, label %.critedge, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit, !prof !434

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit: ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !535
  %i.x = sub i32 %i.w, %4                         ; 2 uses
  store i32 %i.x, ptr %i.v, align 4, !tbaa !535
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %.critedge, !prof !459

bb.e:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.z = load i32, ptr %0, align 1, !tbaa !55     ; 2 uses
  %.not.i48.not = icmp eq i32 %i.z, 0
  br i1 %.not.i48.not, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.aa = tail call noundef i32 @llvm.bswap.i32(i32 %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %wide.trip.count = zext i32 %i.aa to i64
  br label %bb.g

bb.f:                                             ; preds = %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EjLj4EEENS4_ILb1EtLj2EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit, label %bb.g, !llvm.loop !603

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [6 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 6
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = load i32, ptr %i.g, align 8, !tbaa !534
  %i.aj = zext i32 %i.ai to i64
  %.not.i.i.i17 = icmp ugt i64 %i.ah, %i.aj
  br i1 %.not.i.i.i17, label %.critedge, label %bb.h, !prof !434

bb.h:                                             ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.ak = load i32, ptr %i.ac, align 1, !tbaa !55
  %i.al = tail call noundef i32 @llvm.bswap.i32(i32 %i.ak)
  %i.am = load i32, ptr %i.ab, align 8, !tbaa !527
  %i.an = icmp ult i32 %i.al, %i.am
  br i1 %i.an, label %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EjLj4EEENS4_ILb1EtLj2EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit, label %.critedge, !prof !454

_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EjLj4EEENS4_ILb1EtLj2EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit: ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.ap = load i16, ptr %i.ao, align 1, !tbaa !53
  %i.aq = tail call noundef i16 @llvm.bswap.i16(i16 %i.ap)
  %i.ar = zext i16 %i.aq to i32
  %i.as = icmp ugt i32 %2, %i.ar
  br i1 %i.as, label %bb.f, label %.critedge, !prof !459

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit: ; preds = %bb.f, %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %.sroa.0.0.copyload.i = load i32, ptr %0, align 1, !tbaa !452
  %.not = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %.not, label %.critedge, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit, !prof !21

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit: ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.at = load i32, ptr %i.a, align 1, !tbaa !55
  %.not44 = icmp eq i32 %i.at, 0
  br i1 %.not44, label %.preheader, label %.critedge, !prof !22

.preheader:                                       ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit
  %.sroa.0.0.copyload.i2050 = load i32, ptr %0, align 1, !tbaa !452 ; 2 uses
  %i.au = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i2050)
  %.not1351 = icmp ugt i32 %i.au, 1
  br i1 %.not1351, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit23, label %._crit_edge

bb.i:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit26
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %.sroa.0.0.copyload.i20 = load i32, ptr %0, align 1, !tbaa !452 ; 2 uses
  %i.av = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i20)
  %i.aw = zext i32 %i.av to i64
  %.not13 = icmp samesign ult i64 %indvars.iv.next56, %i.aw
  br i1 %.not13, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit23, label %._crit_edge, !llvm.loop !604

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit23: ; preds = %.preheader, %bb.i
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %bb.i ], [ 1, %.preheader ] ; 4 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.ax = getelementptr [6 x i8], ptr %i.a, i64 %indvars.iv55
  %i.ay = getelementptr i8, ptr %i.ax, i64 -6
  %i.az = load i32, ptr %i.ay, align 1, !tbaa !55
  %i.ba = tail call noundef i32 @llvm.bswap.i32(i32 %i.az)
  %i.bb = load i32, ptr %0, align 1, !tbaa !55
  %i.bc = tail call noundef i32 @llvm.bswap.i32(i32 %i.bb)
  %i.bd = zext i32 %i.bc to i64
  %.not.i24 = icmp samesign ult i64 %indvars.iv55, %i.bd
  br i1 %.not.i24, label %bb.j, label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit26, !prof !22

bb.j:                                             ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit23
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.be = getelementptr inbounds nuw [6 x i8], ptr %i.a, i64 %indvars.iv55
  br label %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit26

_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit26: ; preds = %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit23, %bb.j
  %.0.i25 = phi ptr [ %i.be, %bb.j ], [ @_hb_NullPool, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit23 ]
  %i.bf = load i32, ptr %.0.i25, align 1, !tbaa !55
  %i.bg = tail call noundef i32 @llvm.bswap.i32(i32 %i.bf)
  %.not12 = icmp ult i32 %i.ba, %i.bg
  br i1 %.not12, label %bb.i, label %.critedge, !prof !22

._crit_edge:                                      ; preds = %bb.i, %.preheader
  %.sroa.0.0.copyload.i.i = phi i32 [ %.sroa.0.0.copyload.i2050, %.preheader ], [ %.sroa.0.0.copyload.i20, %bb.i ] ; 2 uses
  %.not.i.not.i = icmp eq i32 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.not.i, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit, label %bb.k, !prof !21

bb.k:                                             ; preds = %._crit_edge
  %i.bh = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i)
  %i.bi = add i32 %i.bh, -1
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [6 x i8], ptr %i.a, i64 %i.bj
  br label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit

_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit: ; preds = %._crit_edge, %bb.k
  %.0.i.i = phi ptr [ %i.bk, %bb.k ], [ @_hb_NullPool, %._crit_edge ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 10
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = load i32, ptr %i.g, align 8, !tbaa !534
  %i.br = zext i32 %i.bq to i64
  %.not45 = icmp ugt i64 %i.bp, %i.br
  br i1 %.not45, label %.critedge, label %bb.l, !prof !21

bb.l:                                             ; preds = %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %.sroa.0.0.copyload.i.i27 = load i32, ptr %0, align 1, !tbaa !452 ; 2 uses
  %.not.i.not.i28 = icmp eq i32 %.sroa.0.0.copyload.i.i27, 0
  br i1 %.not.i.not.i28, label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit30, label %bb.m, !prof !21

bb.m:                                             ; preds = %bb.l
  %i.bs = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i27)
  %i.bt = add i32 %i.bs, -1
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [6 x i8], ptr %i.a, i64 %i.bu
  br label %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit30

_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit30: ; preds = %bb.l, %bb.m
  %.0.i.i29 = phi ptr [ %i.bv, %bb.m ], [ @_hb_NullPool, %bb.l ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i29, i64 6
  %i.bx = load i32, ptr %i.bw, align 1, !tbaa !55
  %i.by = tail call noundef i32 @llvm.bswap.i32(i32 %i.bx)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !527
  %.not46 = icmp eq i32 %i.by, %i.ca
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.h, %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EjLj4EEENS4_ILb1EtLj2EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit26, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit30, %bb.c, %bb.d, %bb.b, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit, %bb.a, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit
  %.1 = phi i1 [ false, %bb.c ], [ false, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit ], [ false, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_EixEi.exit26 ], [ false, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E8sanitizeIJDnRjEEEbP21hb_sanitize_context_tDpOT_.exit ], [ false, %bb.a ], [ %.not46, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit30 ], [ false, %_ZNK3CFF11FDSelect3_4IN2OT7NumTypeILb1EjLj4EEENS2_ILb1EtLj2EEEE8sentinelEv.exit ], [ false, %_ZNK2OT7ArrayOfIN3CFF17FDSelect3_4_RangeINS_7NumTypeILb1EjLj4EEENS3_ILb1EtLj2EEEEES4_E16sanitize_shallowEP21hb_sanitize_context_t.exit ], [ false, %bb.b ], [ false, %bb.d ], [ false, %_ZN21hb_sanitize_context_t8dispatchIN3CFF17FDSelect3_4_RangeIN2OT7NumTypeILb1EjLj4EEENS4_ILb1EtLj2EEEEEJDnRjEEEDTcl9_dispatchfp_cv11hb_priorityILj16EE_Espclsr3stdE7forwardIT0_Efp0_EEERKT_DpOSB_.exit ], [ false, %bb.h ], [ false, %bb.g ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11hb_vector_tIN3CFF31cff2_private_dict_values_base_tINS0_10dict_val_tEEELb0EE11resize_fullEibb(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %_ZN11hb_vector_tIN3CFF31cff2_private_dict_values_base_tINS0_10dict_val_tEEELb0EE5allocEjb.exit.thread19, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !393    ; 6 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %_ZN11hb_vector_tIN3CFF31cff2_private_dict_values_base_tINS0_10dict_val_tEEELb0EE5allocEjb.exit.thread19, label %bb.c, !prof !21

bb.c:                                             ; preds = %bb.b
  br i1 %3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %1, i32 %i.e) ; 3 uses
  %.not19.i = icmp ugt i32 %.sroa.speculated.i, %i.b
  %i.f = lshr i32 %i.b, 2
  %.not20.i = icmp ult i32 %.sroa.speculated.i, %i.f
  %or.cond.i = or i1 %.not19.i, %.not20.i
  br i1 %or.cond.i, label %.thread.i, label %_ZN11hb_vector_tIN3CFF31cff2_private_dict_values_base_tINS0_10dict_val_tEEELb0EE5allocEjb.exit.thread

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp samesign ugt i32 %1, %i.b
  br i1 %.not.i, label %.preheader.i, label %_ZN11hb_vector_tIN3CFF31cff2_private_dict_values_base_tINS0_10dict_val_tEEELb0EE5allocEjb.exit.thread, !prof !21

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.039.i = phi i32 [ %i.i, %.preheader.i ], [ %i.b, %bb.e ] ; 2 uses
  %i.g = lshr i32 %.039.i, 1
  %i.h = add nuw i32 %.039.i, 8
  %i.i = add nuw i32 %i.h, %i.g                   ; 3 uses
  %i.j = icmp ugt i32 %1, %i.i
  br i1 %i.j, label %.preheader.i, label %.thread.i, !llvm.loop !605

.thread.i:                                        ; preds = %.preheader.i, %bb.d
  %.138.i = phi i32 [ %.sroa.speculated.i, %bb.d ], [ %i.i, %.preheader.i ] ; 5 uses
  %i.k = icmp ugt i32 %.138.i, 89478485
  br i1 %i.k, label %_ZN11hb_vector_tIN3CFF31cff2_private_dict_values_base_tINS0_10dict_val_tEEELb0EE5allocEjb.exit.thread22, label %bb.f, !prof !21

bb.f:                                             ; preds = %.thread.i
  %i.l = tail call noundef ptr @_ZN11hb_vector_tIN3CFF31cff2_private_dict_values_base_tINS0_10dict_val_tEEELb0EE12_malloc_moveEj(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %.138.i) ; 2 uses
  %.not21.i = icmp ne i32 %.138.i, 0
  %.not22.i = icmp eq ptr %i.l, null
end_hunk_0
begin_hunk_1_@_ZNK2OT8HVARVVAR8sanitizeEP21hb_sanitize_context_t:bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !534
  %i.i = zext i32 %i.h to i64
  %.not = icmp ugt i64 %i.f, %i.i
  br i1 %.not, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread21, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.j = load i16, ptr %0, align 1, !tbaa !53
  %i.k = icmp eq i16 %i.j, 256
  br i1 %i.k, label %bb.c, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread21, !prof !22

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = load i32, ptr %i.g, align 8, !tbaa !534
  %i.r = zext i32 %i.q to i64
  %.not.i.not = icmp ugt i64 %i.p, %i.r
  br i1 %.not.i.not, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread21, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.s = load i32, ptr %i.a, align 1, !tbaa !55   ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit

_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit: ; preds = %bb.d
  %i.u = tail call noundef i32 @llvm.bswap.i32(i32 %i.s)
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v
  %i.x = tail call noundef zeroext i1 @_ZNK2OT18ItemVariationStore8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(12) %i.w, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.x, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread21

_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread: ; preds = %bb.d, %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = load i32, ptr %i.g, align 8, !tbaa !534
  %i.ae = zext i32 %i.ad to i64
  %.not.i8.not = icmp ugt i64 %i.ac, %i.ae
  br i1 %.not.i8.not, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread21, label %bb.e, !prof !21

bb.e:                                             ; preds = %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.af = load i32, ptr %i.l, align 1, !tbaa !55  ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit7.thread, label %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit7

_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit7: ; preds = %bb.e
  %i.ah = tail call noundef i32 @llvm.bswap.i32(i32 %i.af)
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai
  %i.ak = tail call noundef zeroext i1 @_ZNK2OT16DeltaSetIndexMap8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(7) %i.aj, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.ak, label %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit7.thread, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread21

_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit7.thread: ; preds = %bb.e, %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit7
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = load i32, ptr %i.g, align 8, !tbaa !534
  %i.ar = zext i32 %i.aq to i64
  %.not.i9.not = icmp ugt i64 %i.ap, %i.ar
  br i1 %.not.i9.not, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread21, label %bb.f, !prof !21

bb.f:                                             ; preds = %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit7.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.as = load i32, ptr %i.y, align 1, !tbaa !55  ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread, label %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6

_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6: ; preds = %bb.f
  %i.au = tail call noundef i32 @llvm.bswap.i32(i32 %i.as)
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %i.av
  %i.ax = tail call noundef zeroext i1 @_ZNK2OT16DeltaSetIndexMap8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(7) %i.aw, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br i1 %i.ax, label %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread21

_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread: ; preds = %bb.f, %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.az = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb
  %i.bd = load i32, ptr %i.g, align 8, !tbaa !534
  %i.be = zext i32 %i.bd to i64
  %.not.i11.not = icmp ugt i64 %i.bc, %i.be
  br i1 %.not.i11.not, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread21, label %bb.g, !prof !21

bb.g:                                             ; preds = %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.bf = load i32, ptr %i.al, align 1, !tbaa !55 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread21, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = tail call noundef i32 @llvm.bswap.i32(i32 %i.bf)
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi
  %i.bk = tail call noundef zeroext i1 @_ZNK2OT16DeltaSetIndexMap8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(7) %i.bj, ptr noundef nonnull align 8 dereferenceable(62) %1)
  br label %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread21

_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread21: ; preds = %bb.h, %bb.g, %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread, %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit7.thread, %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread, %bb.c, %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6, %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit7, %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit, %bb.b, %bb.a
  %i.bl = phi i1 [ false, %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6 ], [ false, %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit7 ], [ false, %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit ], [ false, %bb.b ], [ false, %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit7.thread ], [ false, %bb.a ], [ false, %_ZNK2OT8OffsetToINS_18ItemVariationStoreENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit.thread ], [ false, %bb.c ], [ %i.bk, %bb.h ], [ true, %bb.g ], [ false, %_ZNK2OT8OffsetToINS_16DeltaSetIndexMapENS_7NumTypeILb1EjLj4EEEvLb1EE8sanitizeIJEEEbP21hb_sanitize_context_tPKvDpOT_.exit6.thread ]
  ret i1 %i.bl
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2OT16DeltaSetIndexMap8sanitizeEP21hb_sanitize_context_t(ptr noundef nonnull align 1 dereferenceable(7) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.d = ptrtoint ptr %i.a to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !534
  %i.i = zext i32 %i.h to i64
  %.not = icmp ugt i64 %i.f, %i.i
  br i1 %.not, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.j = load i8, ptr %0, align 1, !tbaa !460
  switch i8 %i.j, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit [
    i8 0, label %bb.c
    i8 1, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = load i32, ptr %i.g, align 8, !tbaa !534
  %i.q = zext i32 %i.p to i64
  %.not.i = icmp ugt i64 %i.o, %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not.i, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.m, %i.t
  %i.v = load i32, ptr %i.g, align 8, !tbaa !534
  %i.w = zext i32 %i.v to i64
  %.not.i.i.i = icmp ugt i64 %i.u, %i.w
  br i1 %.not.i.i.i, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i8, ptr %i.a, align 1, !tbaa !460
  %i.y = lshr i8 %i.x, 4
  %i.z = and i8 %i.y, 3
  %narrow.i.i = add nuw nsw i8 %i.z, 1
  %i.aa = zext nneg i8 %narrow.i.i to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !53
  %i.ad = tail call noundef i16 @llvm.bswap.i16(i16 %i.ac)
  %i.ae = zext i16 %i.ad to i32
  %i.af = mul nuw nsw i32 %i.aa, %i.ae            ; 2 uses
  %i.ag = load ptr, ptr %i.r, align 8, !tbaa !532
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.m
  %i.aj = trunc i64 %i.ai to i32
  %.not12.i.i.i = icmp ugt i32 %i.af, %i.aj
  br i1 %.not12.i.i.i, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit.sink.split

bb.f:                                             ; preds = %bb.b
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.am = ptrtoint ptr %i.ak to i64               ; 3 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = load i32, ptr %i.g, align 8, !tbaa !534
  %i.aq = zext i32 %i.ap to i64
  %.not.i5 = icmp ugt i64 %i.ao, %i.aq
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %.not.i5, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.at = load i32, ptr %i.as, align 1, !tbaa !55
  %i.au = tail call noundef i32 @llvm.bswap.i32(i32 %i.at)
  %i.av = load i8, ptr %i.a, align 1, !tbaa !460
  %i.aw = lshr i8 %i.av, 4
  %i.ax = and i8 %i.aw, 3
  %narrow.i.i6 = add nuw nsw i8 %i.ax, 1
  %i.ay = zext nneg i8 %narrow.i.i6 to i32
  %i.az = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.au, i32 %i.ay) ; 2 uses
  %2 = extractvalue { i32, i1 } %i.az, 0          ; 2 uses
  %i.ba = extractvalue { i32, i1 } %i.az, 1
  br i1 %i.ba, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !533
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.am, %i.bc
  %i.be = load i32, ptr %i.g, align 8, !tbaa !534
  %i.bf = zext i32 %i.be to i64
  %.not.i.i.i7 = icmp ugt i64 %i.bd, %i.bf
  br i1 %.not.i.i.i7, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = load ptr, ptr %i.ar, align 8, !tbaa !532
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.am
  %i.bj = trunc i64 %i.bi to i32
  %.not12.i.i.i8 = icmp ugt i32 %2, %i.bj
  br i1 %.not12.i.i.i8, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit.sink.split

_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit.sink.split: ; preds = %bb.i, %bb.e
  %.sink17 = phi i32 [ %i.af, %bb.e ], [ %2, %bb.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !535
  %i.bm = sub i32 %i.bl, %.sink17                 ; 2 uses
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !535
  %i.bn = icmp sgt i32 %i.bm, 0
  br label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit

_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit: ; preds = %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit.sink.split, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.i ], [ %i.bn, %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE8sanitizeEP21hb_sanitize_context_t.exit.sink.split ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj4EE11call_createI9hb_blob_t22hb_table_lazy_loader_tIN2OT4hheaELj4ELb1EEEEPT_v(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %struct.hb_sanitize_context_t, align 8 ; 9 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i32 0, ptr %1, align 8, !tbaa !526
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !409
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.c, i8 0, i64 33, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 61
  store i8 0, ptr %i.g, align 1, !tbaa !529
  store i32 0, ptr %i.e, align 8, !tbaa !527
  store i8 1, ptr %i.f, align 4, !tbaa !528
  %i.h = tail call ptr @hb_face_reference_table(ptr noundef %i.b, i32 noundef 1751672161) #10
  %i.i = call noundef ptr @_ZN21hb_sanitize_context_t13sanitize_blobIN2OT4hheaEEEP9hb_blob_tS4_(ptr noundef nonnull align 8 dereferenceable(62) %1, ptr noundef %i.h)
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !409  ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN22hb_table_lazy_loader_tIN2OT4hheaELj4ELb1EE6createEP9hb_face_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @hb_blob_destroy(ptr noundef nonnull %i.j) #10
  br label %_ZN22hb_table_lazy_loader_tIN2OT4hheaELj4ELb1EE6createEP9hb_face_t.exit

_ZN22hb_table_lazy_loader_tIN2OT4hheaELj4ELb1EE6createEP9hb_face_t.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret ptr %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN16hb_lazy_loader_tIN2OT4hheaE22hb_table_lazy_loader_tIS1_Lj4ELb1EE9hb_face_tLj4E9hb_blob_tE10do_destroyEPS5_(ptr noundef %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @hb_blob_get_empty() #10
  %.not3 = icmp eq ptr %0, %i.a
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @hb_blob_destroy(ptr noundef nonnull %0) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN21hb_sanitize_context_t13sanitize_blobIN2OT4hheaEEEP9hb_blob_tS4_(ptr noundef nonnull align 8 dereferenceable(62) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call ptr @hb_blob_reference(ptr noundef %1) #10 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !409
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.c, align 8, !tbaa !531
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.b

._crit_edge.i.i:                                  ; preds = %bb.a
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !532
  %.pre2.i.i = load ptr, ptr %i.d, align 8, !tbaa !533
  br label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !533
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !74
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !532
  br label %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i

_ZN21hb_sanitize_context_t12reset_objectEv.exit.i: ; preds = %bb.b, %._crit_edge.i.i
  %i.l = phi ptr [ %.pre2.i.i, %._crit_edge.i.i ], [ %i.f, %bb.b ] ; 3 uses
  %i.m = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.j, %bb.b ]
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = trunc i64 %i.p to i32                    ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.q, ptr %i.r, align 8, !tbaa !534
  %i.s = icmp ugt i32 %i.q, 67108863
  br i1 %i.s, label %_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit, label %bb.c, !prof !21

bb.c:                                             ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i
  %i.t = shl nuw i32 %i.q, 6
  %.not.i3.i.i = icmp samesign ugt i32 %i.q, 16777215
  %.sroa.speculate.load.false.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.t, i32 16384)
  %.sroa.speculated.i = select i1 %.not.i3.i.i, i32 1073741823, i32 %.sroa.speculate.load.false.sroa.speculated.i
  br label %_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit

_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit: ; preds = %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i, %bb.c
  %.sroa.speculated.sink.i = phi i32 [ %.sroa.speculated.i, %bb.c ], [ 1073741823, %_ZN21hb_sanitize_context_t12reset_objectEv.exit.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sroa.speculated.sink.i, ptr %i.u, align 4, !tbaa !535
  store i32 0, ptr %0, align 8, !tbaa !526
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.v, align 4, !tbaa !536
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.d, label %bb.e, !prof !21

bb.d:                                             ; preds = %_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit
  tail call void @hb_blob_destroy(ptr noundef %i.a) #10
  store ptr null, ptr %i.b, align 8, !tbaa !409
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.d, i8 0, i64 20, i1 false)
  br label %bb.h

bb.e:                                             ; preds = %_ZN21hb_sanitize_context_t16start_processingEPKcS1_.exit
  %i.w = and i64 %i.p, 4294967292
  %.not.i = icmp samesign ult i64 %i.w, 36
  br i1 %.not.i, label %.critedge, label %_ZNK2OT4_heaINS_4hheaEE8sanitizeEP21hb_sanitize_context_t.exit

_ZNK2OT4_heaINS_4hheaEE8sanitizeEP21hb_sanitize_context_t.exit: ; preds = %bb.e
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !66
  %i.x = load i16, ptr %i.l, align 1, !tbaa !53
  %i.y = icmp eq i16 %i.x, 256
  %i.z = load ptr, ptr %i.b, align 8, !tbaa !409
  tail call void @hb_blob_destroy(ptr noundef %i.z) #10
  store ptr null, ptr %i.b, align 8, !tbaa !409
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.d, i8 0, i64 20, i1 false)
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK2OT4_heaINS_4hheaEE8sanitizeEP21hb_sanitize_context_t.exit
  tail call void @hb_blob_make_immutable(ptr noundef %1) #10
  br label %bb.h

.critedge:                                        ; preds = %bb.e
  tail call void @hb_blob_destroy(ptr noundef %i.a) #10
  store ptr null, ptr %i.b, align 8, !tbaa !409
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.d, i8 0, i64 20, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %.critedge, %_ZNK2OT4_heaINS_4hheaEE8sanitizeEP21hb_sanitize_context_t.exit
  tail call void @hb_blob_destroy(ptr noundef %1) #10
  %i.aa = tail call ptr @hb_blob_get_empty() #10
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.1 = phi ptr [ %1, %bb.d ], [ %1, %bb.f ], [ %i.aa, %bb.g ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK17hb_data_wrapper_tI9hb_face_tLj2EE11call_createI9hb_blob_t22hb_table_lazy_loader_tIN2OT4maxpELj2ELb1EEEEPT_v(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %struct.hb_sanitize_context_t, align 8 ; 9 uses
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i32 0, ptr %1, align 8, !tbaa !526
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !409
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.c, i8 0, i64 33, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 60
end_hunk_1
