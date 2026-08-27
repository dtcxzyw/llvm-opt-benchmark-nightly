Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/pb_solver?download=true
inline.NumInlined: 3382
inline.NumDeleted: 792
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN2pb6solver19resolve_conflict_rsEv:bb.a
  %i.hs = load ptr, ptr %i.an, align 8, !tbaa !85 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 3296
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !231
  %i.hv = zext nneg i32 %i.hn to i64
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hv ; 2 uses
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !232, !range !233, !noundef !234
  %i.hy = trunc nuw i8 %i.hx to i1
  br i1 %i.hy, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hz = and i64 %.sroa.3.0.extract.shift.i, 4294967294
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hs, i64 3840
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !279
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %i.hz
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !80
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hs, i64 3848
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !295
  %i.ig = icmp ugt i32 %i.id, %i.if
  br i1 %i.ig, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ih = load i32, ptr %i.bz, align 4, !tbaa !349
  %i.ii = icmp eq i32 %i.hr, %i.ih
  br i1 %i.ii, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i8 1, ptr %i.hw, align 1, !tbaa !232
  %i.ij = load i32, ptr %i.br, align 8, !tbaa !337
  %i.ik = add i32 %i.ij, 1
  store i32 %i.ik, ptr %i.br, align 8, !tbaa !337
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %.lr.ph.i104
  %i.il = getelementptr inbounds nuw i8, ptr %.015.i, i64 8 ; 2 uses
  %.not.i105 = icmp eq ptr %i.il, %i.hh
  br i1 %.not.i105, label %_ZN2pb6solver14mark_variablesERKNS0_4ineqE.exit, label %.lr.ph.i104

_ZN2pb6solver14mark_variablesERKNS0_4ineqE.exit:  ; preds = %bb.am, %bb.ah, %_ZNK6vectorISt4pairIjN3sat7literalEELb0EjE3endEv.exit.i
  %i.im = icmp eq i32 %.sroa.0128.1, -2
  br i1 %i.im, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN2pb6solver14mark_variablesERKNS0_4ineqE.exit
  %i.in = load i64, ptr %i.cm, align 8, !tbaa !365
  %i.io = trunc i64 %i.in to i32
  store i32 %i.io, ptr %i.bs, align 8, !tbaa !334
  %i.ip = load ptr, ptr %i.cl, align 8, !tbaa !284 ; 4 uses
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %.split, label %_ZN6vectorISt4pairIjN3sat7literalEELb0EjE3endEv.exit

_ZN6vectorISt4pairIjN3sat7literalEELb0EjE3endEv.exit: ; preds = %bb.an
  %i.ir = getelementptr inbounds i8, ptr %i.ip, i64 -4
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !80 ; 2 uses
  %i.it = zext i32 %i.is to i64
  %i.iu = shl nuw nsw i64 %i.it, 3
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.iu
  %.not92184 = icmp eq i32 %i.is, 0
  br i1 %.not92184, label %.split, label %.lr.ph186

.lr.ph186:                                        ; preds = %_ZN6vectorISt4pairIjN3sat7literalEELb0EjE3endEv.exit, %.lr.ph186
  %.079185 = phi ptr [ %i.ix, %.lr.ph186 ], [ %i.ip, %_ZN6vectorISt4pairIjN3sat7literalEELb0EjE3endEv.exit ] ; 2 uses
  %i.iw = load i64, ptr %.079185, align 4         ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.iw to i32
  %.sroa.4.0.extract.shift = lshr i64 %i.iw, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.4.0.extract.shift to i32
  call void @_ZN2pb6solver18process_antecedentEN3sat7literalEj(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 %.sroa.4.0.extract.trunc, i32 noundef %.sroa.0.0.extract.trunc)
  %i.ix = getelementptr inbounds nuw i8, ptr %.079185, i64 8 ; 2 uses
  %.not92 = icmp eq ptr %i.ix, %i.iv
  br i1 %.not92, label %.split, label %.lr.ph186

bb.ao:                                            ; preds = %_ZN2pb6solver14mark_variablesERKNS0_4ineqE.exit
  %i.iy = lshr i32 %.sroa.0128.1, 1               ; 2 uses
  call void @_ZN2pb6solver12round_to_oneEj(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 noundef %i.iy)
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !355
  %i.jb = icmp eq i32 %i.ja, 1
  br i1 %i.jb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN2pb6solver12round_to_oneERNS0_4ineqEj(ptr noundef nonnull align 8 dereferenceable(1049) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i32 noundef %i.iy)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.jc = load i64, ptr %i.cm, align 8, !tbaa !339
  %i.jd = load i32, ptr %i.bs, align 8, !tbaa !334
  %i.je = zext i32 %i.jd to i64
  %i.jf = add nsw i64 %i.jc, %i.je                ; 2 uses
  %i.jg = trunc i64 %i.jf to i32
  %i.jh = icmp ugt i64 %i.jf, 4294967295
  %i.ji = load i8, ptr %i.e, align 4, !tbaa !333, !range !233, !noundef !234
  %i.jj = zext i1 %i.jh to i8
  %i.jk = or i8 %i.ji, %i.jj
  store i8 %i.jk, ptr %i.e, align 4, !tbaa !333
  store i32 %i.jg, ptr %i.bs, align 8, !tbaa !334
  %i.jl = load ptr, ptr %i.cl, align 8, !tbaa !284 ; 2 uses
  %i.jm = icmp eq ptr %i.jl, null
  br i1 %i.jm, label %.split, label %_ZNK2pb6solver4ineq4sizeEv.exit.i

_ZNK2pb6solver4ineq4sizeEv.exit.i:                ; preds = %bb.aq
  %i.jn = getelementptr inbounds i8, ptr %i.jl, i64 -4
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !80 ; 2 uses
  %.not8.i = icmp eq i32 %i.jo, 0
  br i1 %.not8.i, label %.split, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK2pb6solver4ineq4sizeEv.exit.i
  %i.jp = zext i32 %i.jo to i64
  br label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %.lr.ph.i107, %.lr.ph.preheader.i
  %indvars.iv.i108 = phi i64 [ %i.jp, %.lr.ph.preheader.i ], [ %i.jq, %.lr.ph.i107 ]
  %i.jq = add nsw i64 %indvars.iv.i108, -1        ; 3 uses
  %i.jr = load ptr, ptr %i.cl, align 8, !tbaa !284
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.jq ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 4
  %.sroa.0.0.copyload.i.i = load i32, ptr %i.jt, align 4, !tbaa !80
  %i.ju = load i32, ptr %i.js, align 4, !tbaa !314
  call void @_ZN2pb6solver9inc_coeffEN3sat7literalEj(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 %.sroa.0.0.copyload.i.i, i32 noundef %i.ju)
  %.not.wide.i109 = icmp eq i64 %i.jq, 0
  br i1 %.not.wide.i109, label %.split, label %.lr.ph.i107, !llvm.loop !367

bb.ar:                                            ; preds = %bb.l
  call void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str, i32 noundef 1083, ptr noundef nonnull @.str.1)
  call void @_Z18invoke_exit_actionj(i32 noundef 114)
  br label %.split

.split:                                           ; preds = %.lr.ph, %.lr.ph.i107, %.lr.ph186, %bb.s, %bb.an, %_ZN6vectorIN3sat7literalELb0EjE5resetEv.exit, %_ZN6vectorIN3sat7literalELb0EjE3endEv.exit, %_ZN6vectorISt4pairIjN3sat7literalEELb0EjE3endEv.exit, %bb.r, %_ZNK2pb6solver4ineq4sizeEv.exit.i, %bb.aq, %bb.ar, %bb.n, %bb.m
  call void @_ZN2pb6solver3cutEv(ptr noundef nonnull align 8 dereferenceable(1049) %0)
  %i.jv = load ptr, ptr %i.an, align 8, !tbaa !85 ; 6 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 3784
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !239
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 3840
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 3848
  %i.ka = load ptr, ptr %i.jy, align 8, !tbaa !279
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jv, i64 3296
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !231
  %i.kd = zext i32 %.076 to i64
  br label %bb.as

bb.as:                                            ; preds = %.split87, %.split
  %indvars.iv204 = phi i64 [ %indvars.iv.next205, %.split87 ], [ %i.kd, %.split ] ; 4 uses
  %phi.call = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %indvars.iv204
  %i.ke = load i32, ptr %phi.call, align 4, !tbaa !80 ; 5 uses
  %i.kf = lshr i32 %i.ke, 1                       ; 3 uses
  %i.kg = and i32 %i.ke, -2
  %i.kh = load i32, ptr %i.jz, align 8, !tbaa !295
  %i.ki = add i32 %i.kh, 1
  %i.kj = zext i32 %i.kg to i64
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.kj
  store i32 %i.ki, ptr %i.kk, align 4, !tbaa !80
  %i.kl = zext nneg i32 %i.kf to i64              ; 3 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.kl ; 3 uses
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !232, !range !233, !noundef !234
  %i.ko = trunc nuw i8 %i.kn to i1
  br i1 %i.ko, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.kp = load ptr, ptr %i.cn, align 8, !tbaa !330 ; 3 uses
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %.thread150, label %_ZNK6vectorIlLb0EjE4sizeEv.exit.i.i

_ZNK6vectorIlLb0EjE4sizeEv.exit.i.i:              ; preds = %bb.at
  %i.kr = getelementptr inbounds i8, ptr %i.kp, i64 -4
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !80
  %.not.i.i110 = icmp ult i32 %i.kf, %i.ks
  br i1 %.not.i.i110, label %_ZNK2pb6solver9get_coeffEj.exit, label %.thread150

_ZNK2pb6solver9get_coeffEj.exit:                  ; preds = %_ZNK6vectorIlLb0EjE4sizeEv.exit.i.i
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.kl
  %.0.i.sroa.speculate.load..i = load i64, ptr %i.kt, align 8, !tbaa !332 ; 2 uses
  %i.ku = icmp eq i64 %.0.i.sroa.speculate.load..i, 0
  %i.kv = trunc i32 %i.ke to i1
  %i.kw = icmp sgt i64 %.0.i.sroa.speculate.load..i, -1
  %i.kx = xor i1 %i.kw, %i.kv
  %or.cond = or i1 %i.ku, %i.kx
  br i1 %or.cond, label %.thread150, label %bb.av

.thread150:                                       ; preds = %_ZNK2pb6solver9get_coeffEj.exit, %_ZNK6vectorIlLb0EjE4sizeEv.exit.i.i, %bb.at
  store i8 0, ptr %i.km, align 1, !tbaa !232
  %i.ky = load i32, ptr %i.br, align 8, !tbaa !337
  %i.kz = add i32 %i.ky, -1
  store i32 %i.kz, ptr %i.br, align 8, !tbaa !337
  br label %bb.au

bb.au:                                            ; preds = %.thread150, %bb.as
  %i.la = icmp eq i64 %indvars.iv204, 0
  br i1 %i.la, label %.loopexit, label %.split87

.split87:                                         ; preds = %bb.au
  %indvars.iv.next205 = add nsw i64 %indvars.iv204, -1
  br label %bb.as, !llvm.loop !368

bb.av:                                            ; preds = %_ZNK2pb6solver9get_coeffEj.exit
  store i8 0, ptr %i.km, align 1, !tbaa !232
  %i.lb = load i32, ptr %i.br, align 8, !tbaa !337
  %i.lc = add i32 %i.lb, -1                       ; 2 uses
  store i32 %i.lc, ptr %i.br, align 8, !tbaa !337
  %.not94 = icmp eq i32 %i.lc, 0
  %.pre208 = load i8, ptr %i.e, align 4, !tbaa !333, !range !233 ; 3 uses
  br i1 %.not94, label %.critedge, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ld = getelementptr inbounds nuw i8, ptr %i.jv, i64 3280
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !256
  %i.lf = getelementptr inbounds nuw [24 x i8], ptr %i.le, i64 %i.kl ; 2 uses
  %2 = trunc nuw i64 %indvars.iv204 to i32
  %.sroa.8.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %.sroa.8.0.copyload125 = load i32, ptr %.sroa.8.0..sroa_idx124, align 8, !tbaa !80
  %.sroa.5.0..sroa_idx118 = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %.sroa.5.0.copyload119 = load i64, ptr %.sroa.5.0..sroa_idx118, align 8, !tbaa !332
  %i.lg = add i32 %2, -1
  %i.lh = trunc nuw i8 %.pre208 to i1
  br i1 %i.lh, label %.loopexit, label %bb.l, !llvm.loop !369

.critedge:                                        ; preds = %bb.av
  %.pre210 = trunc nuw i8 %.pre208 to i1
  %i.li = icmp eq i32 %i.ke, -2
  %or.cond163.not = or i1 %i.li, %.pre210
  br i1 %or.cond163.not, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.critedge
  call void @_ZN2pb6solver12round_to_oneEj(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 noundef %i.kf)
  %.pre209 = load i8, ptr %i.e, align 4, !tbaa !333, !range !233
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.critedge
  %i.lj = phi i8 [ %.pre209, %bb.ax ], [ %.pre208, %.critedge ]
  %i.lk = trunc nuw i8 %i.lj to i1
  br i1 %i.lk, label %.loopexit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ll = call noundef zeroext i1 @_ZN2pb6solver22create_asserting_lemmaEv(ptr noundef nonnull align 8 dereferenceable(1049) %0)
  br i1 %i.ll, label %bb.ba, label %.loopexit

bb.ba:                                            ; preds = %bb.az
  %i.lm = call noundef ptr @_ZN2pb6solver12active2lemmaEv(ptr noundef nonnull align 8 dereferenceable(1049) %0) ; 0 uses
  br label %bb.bc

.loopexit:                                        ; preds = %bb.aw, %bb.au, %bb.ay, %bb.az
  %i.ln = load i8, ptr %i.e, align 4, !tbaa !333, !range !233, !noundef !234
  %i.lo = trunc nuw i8 %i.ln to i1
  br i1 %i.lo, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %.loopexit
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !361
  %i.lr = add i32 %i.lq, 1
  store i32 %i.lr, ptr %i.lp, align 4, !tbaa !361
  store i8 0, ptr %i.e, align 4, !tbaa !333
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb, %.loopexit, %_ZN2pb6solver12init_visitedEv.exit
  %.1 = phi i32 [ 0, %_ZN2pb6solver12init_visitedEv.exit ], [ 1, %bb.ba ], [ 0, %bb.bb ], [ 0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.bd

bb.bd:                                            ; preds = %bb.a, %bb.bc
  %.2 = phi i32 [ %.1, %bb.bc ], [ 0, %bb.a ]
  ret i32 %.2
}

declare noundef i32 @_ZN3sat6solver11get_max_lvlENS_7literalENS_13justificationERb(ptr noundef nonnull align 8 dereferenceable(4264), i32, ptr noundef byval(%"class.sat::justification") align 8, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2pb6solver18process_antecedentEN3sat7literalEj(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = lshr i32 %1, 1                           ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !81
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 560
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 noundef %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !85
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 3296
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !231
  %i.j = zext nneg i32 %i.a to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !232, !range !233, !noundef !234
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 788
  %i.o = load i32, ptr %i.n, align 4, !tbaa !349
  %i.p = icmp eq i32 %i.e, %i.o
  br i1 %i.p, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.k, align 1, !tbaa !232
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !337
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 8, !tbaa !337
  %.b = load i1, ptr @_ZN2pbL15_debug_conflictE, align 1
  br i1 %.b, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr @_ZN2pbL17_debug_consequentE.0, align 4, !tbaa !297 ; 2 uses
  %.not = icmp eq i32 %i.t, -2
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = lshr i32 %i.t, 1
  %i.v = load ptr, ptr @_ZN2pbL19_debug_var2positionE, align 8, !tbaa !279 ; 2 uses
  %i.w = zext nneg i32 %i.u to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !80
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.j
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !80
  %i.ab = icmp ult i32 %i.y, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call noundef i32 @_Z19get_verbosity_levelv() ; 0 uses
  %i.ad = tail call noundef zeroext i1 @_Z11is_threadedv()
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_Z12verbose_lockv()
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.af = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.46, i64 noundef 11) ; 0 uses
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoNS_7literalE(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i32 %1)
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.47, i64 noundef 30) ; 0 uses
  tail call void @_Z14verbose_unlockv()
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ai = tail call noundef nonnull align 8 dereferenceable(8) ptr @_Z14verbose_streamv() ; 2 uses
  %i.aj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.46, i64 noundef 11) ; 0 uses
  %i.ak = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3satlsERSoNS_7literalE(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i32 %1)
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull @.str.47, i64 noundef 30) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.g, %bb.h, %bb.b, %bb.a
  tail call void @_ZN2pb6solver9inc_coeffEN3sat7literalEj(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 %1, i32 noundef %2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3sat6solver21display_justificationERSoRKNS_13justificationE(ptr noundef nonnull align 8 dereferenceable(4264), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(20)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN2pb10constraint7to_cardEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2pb6solver12process_cardERNS_4cardEj(ptr noundef nonnull align 8 dereferenceable(1049) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload.i = load i32, ptr %i.a, align 8, !tbaa !80 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !238  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !228
  %i.f = icmp ult i32 %i.c, %i.e
  br i1 %i.f, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.h = zext i32 %i.c to i64
  br label %bb.b

.preheader.loopexit:                              ; preds = %bb.b
  %.pre = load i32, ptr %i.b, align 4, !tbaa !238
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %i.i = phi i32 [ %.pre, %.preheader.loopexit ], [ %i.c, %bb.a ]
  %.not31 = icmp eq i32 %i.i, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph30

.lr.ph30:                                         ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %.sroa.010.0.copyload = load i32, ptr %i.k, align 4, !tbaa !80
  tail call void @_ZN2pb6solver18process_antecedentEN3sat7literalEj(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 %.sroa.010.0.copyload, i32 noundef %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = load i32, ptr %i.d, align 8, !tbaa !228
  %i.m = zext i32 %i.l to i64
  %i.n = icmp samesign ult i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %bb.b, label %.preheader.loopexit, !llvm.loop !356

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.o = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 %i.q)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.lcssa = phi { i32, i1 } [ zeroinitializer, %.preheader ], [ %i.o, %._crit_edge.loopexit ] ; 2 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload.i, -2
  br i1 %.not, label %bb.f, label %bb.d

bb.c:                                             ; preds = %.lr.ph30, %bb.c
  %indvars.iv34 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next35, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv34
  %.sroa.06.0.copyload = load i32, ptr %i.p, align 4, !tbaa !80
  tail call void @_ZN2pb6solver9inc_coeffEN3sat7literalEj(ptr noundef nonnull align 8 dereferenceable(1049) %0, i32 %.sroa.06.0.copyload, i32 noundef %2)
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %i.q = load i32, ptr %i.b, align 4, !tbaa !238  ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = icmp samesign ult i64 %indvars.iv.next35, %i.r
  br i1 %i.s, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !357

bb.d:                                             ; preds = %._crit_edge
  %umul.value = extractvalue { i32, i1 } %.lcssa, 0
  %i.t = extractvalue { i32, i1 } %.lcssa, 1
end_hunk_0
