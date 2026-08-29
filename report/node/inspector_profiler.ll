Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/inspector_profiler?download=true
inline.NumInlined: 3534
inline.NumDeleted: 1374
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4node8profiler20V8ProfilerConnection10GetProfileEPN8simdjson8fallback8ondemand6objectE:bb.a
  %i.js = getelementptr inbounds nuw i8, ptr %i.jo, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !noalias !71
  %.not.i31 = icmp eq i8 %i.jt, 58                ; 2 uses
  %i.ju = load ptr, ptr %2, align 8, !noalias !71 ; 2 uses
  br i1 %.not.i31, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.critedge79.i
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  store i32 3, ptr %i.jv, align 8, !noalias !71
  br label %_ZN8simdjson8fallback8ondemand14value_iterator11field_valueEv.exit33

bb.ai:                                            ; preds = %.critedge79.i
  %i.jw = load i32, ptr %i.dc, align 8, !noalias !71 ; 3 uses
  %i.jx = add nuw nsw i32 %i.jw, 1
  %or.cond.i = icmp ult i32 %i.jw, 2147483646
  tail call void @llvm.assume(i1 %or.cond.i), !noalias !71
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 36 ; 2 uses
  %i.jz = load i32, ptr %i.jy, align 4, !noalias !71
  %i.ka = icmp eq i32 %i.jz, %i.jw
  tail call void @llvm.assume(i1 %i.ka), !noalias !71
  store i32 %i.jx, ptr %i.jy, align 4, !noalias !71
  br label %_ZN8simdjson8fallback8ondemand14value_iterator11field_valueEv.exit33

_ZN8simdjson8fallback8ondemand14value_iterator11field_valueEv.exit33: ; preds = %bb.ah, %bb.ai
  tail call void @llvm.assume(i1 %.not.i31), !noalias !71
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.kc = load i8, ptr %i.kb, align 1, !noalias !71
  %i.kd = icmp eq i8 %i.kc, 34
  br i1 %i.kd, label %.split494, label %_ZNK8simdjson8fallback8ondemand15raw_json_string15unsafe_is_equalESt17basic_string_viewIcSt11char_traitsIcEE.exit42.thread

.split494:                                        ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11field_valueEv.exit33
  %i.ke = load i32, ptr %i.ji, align 1
  %i.kf = xor i32 %i.ke, 1718579824
  %i.kg = getelementptr i8, ptr %i.ji, i64 3
  %i.kh = load i32, ptr %i.kg, align 1
  %i.ki = xor i32 %i.kh, 1701603686
  %i.kj = or i32 %i.kf, %i.ki
  %i.kk = icmp ne i32 %i.kj, 0
  %i.kl = zext i1 %i.kk to i32
  %.not10.i41 = icmp eq i32 %i.kl, 0
  br i1 %.not10.i41, label %.loopexit642, label %_ZNK8simdjson8fallback8ondemand15raw_json_string15unsafe_is_equalESt17basic_string_viewIcSt11char_traitsIcEE.exit42.thread

_ZNK8simdjson8fallback8ondemand15raw_json_string15unsafe_is_equalESt17basic_string_viewIcSt11char_traitsIcEE.exit42.thread: ; preds = %_ZN8simdjson8fallback8ondemand14value_iterator11field_valueEv.exit33, %.split494
  %.val130 = load ptr, ptr %2, align 8            ; 5 uses
  %i.km = getelementptr i8, ptr %.val130, i64 36  ; 5 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.val130, i64 8 ; 4 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !noalias !71 ; 4 uses
  %i.kp = load ptr, ptr %i.d, align 8, !noalias !71
  %i.kq = icmp ugt ptr %i.ko, %i.kp
  tail call void @llvm.assume(i1 %i.kq), !noalias !71
  %i.kr = load i32, ptr %i.km, align 4, !noalias !71 ; 9 uses
  %i.ks = load i32, ptr %i.dc, align 8, !noalias !71 ; 5 uses
  %i.kt = icmp sge i32 %i.kr, %i.ks
  tail call void @llvm.assume(i1 %i.kt), !noalias !71
  %.not.i43 = icmp sgt i32 %i.kr, %i.ks
  br i1 %.not.i43, label %bb.aj, label %.critedge81.i

bb.aj:                                            ; preds = %_ZNK8simdjson8fallback8ondemand15raw_json_string15unsafe_is_equalESt17basic_string_viewIcSt11char_traitsIcEE.exit42.thread
  %i.ku = load ptr, ptr %.val130, align 8, !noalias !71 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ko, i64 4 ; 8 uses
  store ptr %i.kv, ptr %i.kn, align 8, !noalias !71
  %i.kw = load i32, ptr %i.ko, align 4, !noalias !71
  %i.kx = zext i32 %i.kw to i64
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.kx
  %i.kz = load i8, ptr %i.ky, align 1, !noalias !71
  switch i8 %i.kz, label %bb.an [
    i8 91, label %bb.ao
    i8 123, label %bb.ao
    i8 58, label %bb.ao
    i8 44, label %bb.ao
    i8 93, label %bb.ak
    i8 125, label %bb.ak
    i8 34, label %bb.al
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj
  %i.la = add nsw i32 %i.kr, -1                   ; 3 uses
  store i32 %i.la, ptr %i.km, align 4, !noalias !71
  %.not6.i = icmp sgt i32 %i.la, %i.ks
  br i1 %.not6.i, label %bb.ao, label %.critedge81.i

bb.al:                                            ; preds = %bb.aj
  %i.lb = load i32, ptr %i.kv, align 4, !noalias !71
  %i.lc = zext i32 %i.lb to i64
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 1, !noalias !71
  %i.lf = icmp eq i8 %i.le, 58
  br i1 %i.lf, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ko, i64 8 ; 2 uses
  store ptr %i.lg, ptr %i.kn, align 8, !noalias !71
  br label %bb.ao

bb.an:                                            ; preds = %bb.al, %bb.aj
  %i.lh = add nsw i32 %i.kr, -1                   ; 3 uses
  store i32 %i.lh, ptr %i.km, align 4, !noalias !71
  %.not7.i = icmp sgt i32 %i.lh, %i.ks
  br i1 %.not7.i, label %bb.ao, label %.critedge81.i

bb.ao:                                            ; preds = %bb.aj, %bb.aj, %bb.aj, %bb.aj, %bb.an, %bb.am, %bb.ak
  %i.li = phi i32 [ %i.kr, %bb.aj ], [ %i.kr, %bb.aj ], [ %i.kr, %bb.aj ], [ %i.kr, %bb.aj ], [ %i.lh, %bb.an ], [ %i.kr, %bb.am ], [ %i.la, %bb.ak ]
  %.promoted582 = phi ptr [ %i.kv, %bb.aj ], [ %i.kv, %bb.aj ], [ %i.kv, %bb.aj ], [ %i.kv, %bb.aj ], [ %i.kv, %bb.an ], [ %i.lg, %bb.am ], [ %i.kv, %bb.ak ] ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.val130, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8, !noalias !71
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 8 ; 2 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !noalias !71 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lo = load i32, ptr %i.ln, align 8, !noalias !71
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 16
  %i.lq = zext i32 %i.lo to i64
  %i.lr = load ptr, ptr %i.lp, align 8, !noalias !71
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.lr, i64 %i.lq
  %i.lt = icmp ult ptr %.promoted582, %i.ls
  br i1 %i.lt, label %.lr.ph584, label %._crit_edge585

.lr.ph584:                                        ; preds = %bb.ao, %bb.ar
  %i.lu = phi i32 [ %i.md, %bb.ar ], [ %i.li, %bb.ao ] ; 3 uses
  %i.lv = phi ptr [ %i.lw, %bb.ar ], [ %.promoted582, %bb.ao ] ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 4 ; 3 uses
  store ptr %i.lw, ptr %i.kn, align 8, !noalias !71
  %i.lx = load i32, ptr %i.lv, align 4, !noalias !71
  %i.ly = zext i32 %i.lx to i64
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !noalias !71
  switch i8 %i.ma, label %bb.ar [
    i8 91, label %bb.ap
    i8 123, label %bb.ap
    i8 93, label %bb.aq
    i8 125, label %bb.aq
  ]

bb.ap:                                            ; preds = %.lr.ph584, %.lr.ph584
  %i.mb = add nsw i32 %i.lu, 1                    ; 2 uses
  store i32 %i.mb, ptr %i.km, align 4, !noalias !71
  br label %bb.ar

bb.aq:                                            ; preds = %.lr.ph584, %.lr.ph584
  %i.mc = add nsw i32 %i.lu, -1                   ; 3 uses
  store i32 %i.mc, ptr %i.km, align 4, !noalias !71
  %.not8.i = icmp sgt i32 %i.mc, %i.ks
  br i1 %.not8.i, label %bb.ar, label %.critedge81.i

bb.ar:                                            ; preds = %.lr.ph584, %bb.aq, %bb.ap
  %i.md = phi i32 [ %i.lu, %.lr.ph584 ], [ %i.mc, %bb.aq ], [ %i.mb, %bb.ap ]
  %i.me = load ptr, ptr %i.ll, align 8, !noalias !71 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  %i.mg = load i32, ptr %i.mf, align 8, !noalias !71
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mi = zext i32 %i.mg to i64
  %i.mj = load ptr, ptr %i.mh, align 8, !noalias !71
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.mj, i64 %i.mi
  %i.ml = icmp ult ptr %i.lw, %i.mk
  br i1 %i.ml, label %.lr.ph584, label %._crit_edge585, !llvm.loop !54

._crit_edge585:                                   ; preds = %bb.ao, %bb.ar
  %i.mm = getelementptr inbounds nuw i8, ptr %.val130, i64 32
  store i32 3, ptr %i.mm, align 8, !noalias !71
  br label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit

.critedge81.i:                                    ; preds = %bb.aq, %_ZNK8simdjson8fallback8ondemand15raw_json_string15unsafe_is_equalESt17basic_string_viewIcSt11char_traitsIcEE.exit42.thread, %bb.ak, %bb.an
  %i.mn = load ptr, ptr %2, align 8, !noalias !71 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !noalias !71 ; 4 uses
  %i.mq = icmp eq ptr %i.mp, %.0.i8
  br i1 %i.mq, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit, label %bb.as

bb.as:                                            ; preds = %.critedge81.i
  %i.mr = load ptr, ptr %i.d, align 8, !noalias !71
  %i.ms = icmp ugt ptr %i.mp, %i.mr
  tail call void @llvm.assume(i1 %i.ms), !noalias !71
  %i.mt = load ptr, ptr %i.mn, align 8, !noalias !71
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 4
  store ptr %i.mu, ptr %i.mo, align 8, !noalias !71
  %i.mv = load i32, ptr %i.mp, align 4, !noalias !71
  %i.mw = zext i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mt, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !noalias !71
  %.not672 = icmp eq i8 %i.my, 125
  br i1 %.not672, label %bb.at, label %.critedge79.i.backedge

.critedge79.i.backedge:                           ; preds = %bb.as, %bb.at
  br label %.critedge79.i, !llvm.loop !64

bb.at:                                            ; preds = %bb.as
  %i.mz = load ptr, ptr %2, align 8, !noalias !71
  %i.na = getelementptr i8, ptr %i.mz, i64 36     ; 2 uses
  %i.nb = load i32, ptr %i.dc, align 8, !noalias !71 ; 3 uses
  %i.nc = add nsw i32 %i.nb, -1
  %or.cond.i.i19 = icmp ne i32 %i.nb, 2147483647
  tail call void @llvm.assume(i1 %or.cond.i.i19), !noalias !71
  %i.nd = load i32, ptr %i.na, align 4, !noalias !71
  %i.ne = icmp eq i32 %i.nd, %i.nb
  tail call void @llvm.assume(i1 %i.ne), !noalias !71
  store i32 %i.nc, ptr %i.na, align 4, !noalias !71
  br label %.critedge79.i.backedge

.loopexit642:                                     ; preds = %.split, %.split494
  %i.nf = load ptr, ptr %2, align 8, !noalias !74 ; 9 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8 ; 8 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !noalias !74 ; 8 uses
  %i.ni = load ptr, ptr %i.d, align 8, !noalias !74
  %i.nj = icmp ugt ptr %i.nh, %i.ni
  tail call void @llvm.assume(i1 %i.nj), !noalias !74
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nf, i64 36 ; 8 uses
  %i.nl = load i32, ptr %i.nk, align 4, !noalias !74 ; 5 uses
  %i.nm = load i32, ptr %i.dc, align 8, !noalias !74 ; 11 uses
  %i.nn = add nuw nsw i32 %i.nm, 1
  %i.no = icmp eq i32 %i.nl, %i.nn
  tail call void @llvm.assume(i1 %i.no), !noalias !74
  %i.np = icmp sgt i32 %i.nm, 0
  tail call void @llvm.assume(i1 %i.np), !noalias !74
  %i.nq = icmp sgt i32 %i.nl, 0
  tail call void @llvm.assume(i1 %i.nq), !noalias !77
  %i.nr = load ptr, ptr %i.nf, align 8, !noalias !77 ; 10 uses
  %i.ns = load i32, ptr %i.nh, align 4, !noalias !77
  %i.nt = zext i32 %i.ns to i64
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.nt
  %i.nv = load i8, ptr %i.nu, align 1, !noalias !77
  %.not8.i.i = icmp eq i8 %i.nv, 123
  br i1 %.not8.i.i, label %bb.au, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit

bb.au:                                            ; preds = %.loopexit642
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nh, i64 4
  store ptr %i.nw, ptr %i.ng, align 8, !noalias !77
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nh, i64 4 ; 2 uses
  %i.ny = load i32, ptr %i.nx, align 4, !noalias !77
  %i.nz = zext i32 %i.ny to i64
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.nz
  %i.ob = load i8, ptr %i.oa, align 1, !noalias !77
  %i.oc = icmp eq i8 %i.ob, 125
  br i1 %i.oc, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread, label %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread.thread

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread.thread: ; preds = %bb.au
  %i.od = load i32, ptr %i.nh, align 4, !noalias !80
  %i.oe = zext i32 %i.od to i64                   ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.oe
  br label %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit: ; preds = %.critedge81.i, %_ZNO8simdjson8internal20simdjson_result_baseIbE3tieERbRNS_10error_codeE.exit87.i, %bb.ad, %.loopexit642, %bb.ae, %._crit_edge585, %bb.c, %bb.s, %._crit_edge579, %._crit_edge, %.critedge, %bb.q
  %i.og = load ptr, ptr @stderr, align 8
  %i.oh = load ptr, ptr %1, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 32
  %i.oj = load ptr, ptr %i.oi, align 8
  %i.ok = tail call noundef ptr %i.oj(ptr noundef nonnull align 8 dereferenceable(136) %1) #28
  %i.ol = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.og, ptr noundef nonnull @.str.30, ptr noundef %i.ok) #34 ; 0 uses
  br label %bb.bi

_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread: ; preds = %bb.au
  %i.om = getelementptr inbounds nuw i8, ptr %i.nh, i64 8 ; 3 uses
  store ptr %i.om, ptr %i.ng, align 8, !noalias !77
  %or.cond.i.i65 = icmp samesign ult i32 %i.nm, 2147483646
  tail call void @llvm.assume(i1 %or.cond.i.i65), !noalias !77
  store i32 %i.nm, ptr %i.nk, align 4, !noalias !77
  %i.on = load i32, ptr %i.nh, align 4, !noalias !80
  %i.oo = zext i32 %i.on to i64                   ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.oo ; 2 uses
  %3 = icmp eq i32 %i.nl, %i.nm
  br i1 %3, label %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit, label %.loopexit

_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit: ; preds = %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread.thread, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread
  %4 = phi ptr [ %i.of, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread.thread ], [ %i.op, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread ] ; 4 uses
  %5 = phi i64 [ %i.oe, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread.thread ], [ %i.oo, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread ] ; 4 uses
  %6 = phi ptr [ %i.nx, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread.thread ], [ %i.om, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread ] ; 6 uses
  %7 = load i32, ptr %6, align 4, !noalias !80
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds nuw i8, ptr %i.nr, i64 %8
  %10 = load i8, ptr %9, align 1, !noalias !80
  %11 = icmp eq i8 %10, 34
  br i1 %11, label %bb.av, label %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread

bb.av:                                            ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit
  %i.oq = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  store ptr %i.oq, ptr %i.ng, align 8, !noalias !80
  %i.or = load i32, ptr %6, align 4, !noalias !80
  %i.os = zext i32 %i.or to i64
  %i.ot = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.os
  %i.ou = load i8, ptr %i.ot, align 1, !noalias !80
  %.not.i.i68 = icmp eq i8 %i.ou, 34
  br i1 %.not.i.i68, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ov = getelementptr inbounds nuw i8, ptr %i.nf, i64 32
  store i32 3, ptr %i.ov, align 8, !noalias !80
  %i.ow = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  store ptr null, ptr %i.ow, align 8, !noalias !80
  br label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit

bb.ax:                                            ; preds = %bb.av
  %12 = icmp ugt ptr %i.oq, %i.nh
  tail call void @llvm.assume(i1 %12), !noalias !80
  %i.ox = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %i.ox, ptr %i.ng, align 8, !noalias !80
  %i.oy = load i32, ptr %i.oq, align 4, !noalias !80
  %i.oz = zext i32 %i.oy to i64
  %i.pa = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.oz
  %i.pb = load i8, ptr %i.pa, align 1, !noalias !80
  %.not.i12.i = icmp eq i8 %i.pb, 58
  br i1 %.not.i12.i, label %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.pc = getelementptr inbounds nuw i8, ptr %i.nf, i64 32
  store i32 3, ptr %i.pc, align 8, !noalias !80
  %i.pd = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  store ptr null, ptr %i.pd, align 8, !noalias !80
  br label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit

_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread: ; preds = %bb.ax
  %i.pe = add nuw nsw i32 %i.nm, 2                ; 2 uses
  %or.cond.i.i75 = icmp samesign ult i32 %i.nm, 2147483645
  tail call void @llvm.assume(i1 %or.cond.i.i75), !noalias !80
  store i32 %i.pe, ptr %i.nk, align 4, !noalias !80
  br label %bb.az

_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread: ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit
  %.not.i13.i = icmp samesign ugt i32 %i.nl, %i.nm
  br i1 %.not.i13.i, label %bb.az, label %.loopexit

bb.az:                                            ; preds = %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread
  %i.pf = phi i32 [ %i.pe, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread ], [ %i.nl, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread ] ; 7 uses
  %i.pg = phi ptr [ %i.ox, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread.thread ], [ %6, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread ] ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 4 ; 10 uses
  store ptr %i.ph, ptr %i.ng, align 8, !noalias !80
  %i.pi = load i32, ptr %i.pg, align 4, !noalias !80
  %i.pj = zext i32 %i.pi to i64
  %i.pk = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.pj
  %i.pl = load i8, ptr %i.pk, align 1, !noalias !80
  switch i8 %i.pl, label %bb.bd [
    i8 91, label %bb.be
    i8 123, label %bb.be
    i8 58, label %bb.be
    i8 44, label %bb.be
    i8 93, label %bb.ba
    i8 125, label %bb.ba
    i8 34, label %bb.bb
  ]

bb.ba:                                            ; preds = %bb.az, %bb.az
  %i.pm = add nsw i32 %i.pf, -1                   ; 3 uses
  store i32 %i.pm, ptr %i.nk, align 4, !noalias !80
  %.not6.i.i = icmp samesign ugt i32 %i.pm, %i.nm
  br i1 %.not6.i.i, label %bb.be, label %.loopexit

bb.bb:                                            ; preds = %bb.az
  %i.pn = load i32, ptr %i.ph, align 4, !noalias !80
  %i.po = zext i32 %i.pn to i64
  %i.pp = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.po
  %i.pq = load i8, ptr %i.pp, align 1, !noalias !80
  %i.pr = icmp eq i8 %i.pq, 58
  br i1 %i.pr, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pg, i64 8 ; 2 uses
  store ptr %i.ps, ptr %i.ng, align 8, !noalias !80
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb, %bb.az
  %i.pt = add nsw i32 %i.pf, -1                   ; 3 uses
  store i32 %i.pt, ptr %i.nk, align 4, !noalias !80
  %.not7.i.i = icmp samesign ugt i32 %i.pt, %i.nm
  br i1 %.not7.i.i, label %bb.be, label %.loopexit

bb.be:                                            ; preds = %bb.az, %bb.az, %bb.az, %bb.az, %bb.bd, %bb.bc, %bb.ba
  %i.pu = phi i32 [ %i.pf, %bb.az ], [ %i.pf, %bb.az ], [ %i.pf, %bb.az ], [ %i.pf, %bb.az ], [ %i.pt, %bb.bd ], [ %i.pf, %bb.bc ], [ %i.pm, %bb.ba ]
  %.promoted589 = phi ptr [ %i.ph, %bb.az ], [ %i.ph, %bb.az ], [ %i.ph, %bb.az ], [ %i.ph, %bb.az ], [ %i.ph, %bb.bd ], [ %i.ps, %bb.bc ], [ %i.ph, %bb.ba ] ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.nf, i64 16 ; 2 uses
  %i.pw = load ptr, ptr %i.pv, align 8, !noalias !80
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8 ; 2 uses
  %i.py = load ptr, ptr %i.px, align 8, !noalias !80 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qa = load i32, ptr %i.pz, align 8, !noalias !80
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qc = zext i32 %i.qa to i64
  %i.qd = load ptr, ptr %i.qb, align 8, !noalias !80
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %i.qc
  %i.qf = icmp ult ptr %.promoted589, %i.qe
  br i1 %i.qf, label %.lr.ph591, label %._crit_edge592

.lr.ph591:                                        ; preds = %bb.be, %bb.bh
  %i.qg = phi i32 [ %i.qp, %bb.bh ], [ %i.pu, %bb.be ] ; 3 uses
  %i.qh = phi ptr [ %i.qi, %bb.bh ], [ %.promoted589, %bb.be ] ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 4 ; 4 uses
  store ptr %i.qi, ptr %i.ng, align 8, !noalias !80
  %i.qj = load i32, ptr %i.qh, align 4, !noalias !80
  %i.qk = zext i32 %i.qj to i64
  %i.ql = getelementptr inbounds nuw i8, ptr %i.nr, i64 %i.qk
  %i.qm = load i8, ptr %i.ql, align 1, !noalias !80
  switch i8 %i.qm, label %bb.bh [
    i8 91, label %bb.bf
    i8 123, label %bb.bf
    i8 93, label %bb.bg
    i8 125, label %bb.bg
  ]

bb.bf:                                            ; preds = %.lr.ph591, %.lr.ph591
  %i.qn = add nuw nsw i32 %i.qg, 1                ; 2 uses
  store i32 %i.qn, ptr %i.nk, align 4, !noalias !80
  br label %bb.bh

bb.bg:                                            ; preds = %.lr.ph591, %.lr.ph591
  %i.qo = add nsw i32 %i.qg, -1                   ; 3 uses
  store i32 %i.qo, ptr %i.nk, align 4, !noalias !80
  %.not8.i.i67 = icmp sgt i32 %i.qo, %i.nm
  br i1 %.not8.i.i67, label %bb.bh, label %.loopexit

bb.bh:                                            ; preds = %.lr.ph591, %bb.bg, %bb.bf
  %i.qp = phi i32 [ %i.qg, %.lr.ph591 ], [ %i.qo, %bb.bg ], [ %i.qn, %bb.bf ]
  %i.qq = load ptr, ptr %i.px, align 8, !noalias !80 ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  %i.qs = load i32, ptr %i.qr, align 8, !noalias !80
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %i.qu = zext i32 %i.qs to i64
  %i.qv = load ptr, ptr %i.qt, align 8, !noalias !80
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %i.qu
  %i.qx = icmp ult ptr %i.qi, %i.qw
  br i1 %i.qx, label %.lr.ph591, label %._crit_edge592, !llvm.loop !54

._crit_edge592:                                   ; preds = %bb.bh, %bb.be
  %i.qy = getelementptr inbounds nuw i8, ptr %i.nf, i64 32
  store i32 3, ptr %i.qy, align 8, !noalias !80
  store ptr null, ptr %i.pv, align 8, !noalias !80
  br label %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit

_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit: ; preds = %bb.ay, %bb.aw, %._crit_edge592
  store i32 0, ptr %i.nk, align 4, !noalias !80
  %i.qz = load ptr, ptr @stderr, align 8
  %i.ra = load ptr, ptr %1, align 8
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 32
  %i.rc = load ptr, ptr %i.rb, align 8
  %i.rd = tail call noundef ptr %i.rc(ptr noundef nonnull align 8 dereferenceable(136) %1) #28
  %i.re = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qz, ptr noundef nonnull @.str.31, ptr noundef %i.rd) #34 ; 0 uses
  br label %bb.bi

.loopexit:                                        ; preds = %bb.bg, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread, %bb.ba, %bb.bd
  %i.rf = phi i64 [ %i.oo, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread ], [ %5, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread ], [ %5, %bb.ba ], [ %5, %bb.bd ], [ %5, %bb.bg ]
  %i.rg = phi ptr [ %i.op, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread ], [ %4, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread ], [ %4, %bb.ba ], [ %4, %bb.bd ], [ %4, %bb.bg ]
  %i.rh = phi ptr [ %i.om, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand5valueEE10get_objectEv.exit.thread ], [ %6, %_ZNK8simdjson8fallback8ondemand14value_iterator9is_at_keyEv.exit.thread ], [ %i.ph, %bb.ba ], [ %i.ph, %bb.bd ], [ %i.qi, %bb.bg ]
  %i.ri = load i32, ptr %i.rh, align 4, !noalias !80
  %i.rj = zext i32 %i.ri to i64
  %gepdiff = sub nsw i64 %i.rj, %i.rf
  store i64 %gepdiff, ptr %0, align 8
  %.sroa.5219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.rg, ptr %.sroa.5219.0..sroa_idx, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit, %.loopexit, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit
  %.sink = phi i8 [ 0, %_ZNO8simdjson8internal20simdjson_result_baseISt17basic_string_viewIcSt11char_traitsIcEEE3tieERS5_RNS_10error_codeE.exit ], [ 1, %.loopexit ], [ 0, %_ZN8simdjson15simdjson_resultINS_8fallback8ondemand6objectEE3getIS3_EENS_10error_codeERT_.exit ]
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.rk, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node8profiler20V8ProfilerConnection12WriteProfileEPN8simdjson8fallback8ondemand6objectE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::allocator", align 1    ; 3 uses
  %3 = alloca %"class.node::fs::FSReqWrapSync", align 8 ; 6 uses
  %i.d = alloca [128 x i8], align 16              ; 4 uses
  %4 = alloca %"class.std::optional", align 8     ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) #28
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = load i8, ptr %i.h, align 8, !range !26, !noundef !40
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZNRSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEE5valueEv.exit, label %bb.p

_ZNRSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEE5valueEv.exit: ; preds = %bb.a
  %.sroa.01.0.copyload = load i64, ptr %4, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.k = load ptr, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(136) %0) #28
  %i.n = load ptr, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(136) %0) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 440
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 464
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  %i.t = call noundef i32 @_ZN4node2fs10MKDirpSyncEP9uv_loop_sP7uv_fs_sRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPFvS4_E(ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 511, ptr noundef null) #28 ; 3 uses
  %i.u = icmp sgt i32 %i.t, -1
  %i.v = icmp eq i32 %i.t, -17
  %or.cond.not.i = or i1 %i.u, %i.v               ; 2 uses
  br i1 %or.cond.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNRSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEE5valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.w = call ptr @uv_err_name_r(i32 noundef %i.t, ptr noundef nonnull %i.d, i64 noundef 128) #28 ; 0 uses
  %i.x = load ptr, ptr @stderr, align 8
  %i.y = load ptr, ptr %5, align 8
  %i.z = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.95, ptr noundef nonnull %i.d, ptr noundef %i.q, ptr noundef %i.y) #34 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZNRSt8optionalISt17basic_string_viewIcSt11char_traitsIcEEE5valueEv.exit
  call void @uv_fs_req_cleanup(ptr noundef nonnull align 8 dereferenceable(472) %3) #28
  %i.aa = load ptr, ptr %i.s, align 8             ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZN4node8profilerL15EnsureDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit, label %_ZNKSt14default_deleteIN4node2fs18FSContinuationDataEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4node2fs18FSContinuationDataEEclEPS2_.exit.i.i.i: ; preds = %bb.c
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(88) %i.aa) #28, !inline_history !83
  br label %_ZN4node8profilerL15EnsureDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit

_ZN4node8profilerL15EnsureDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN4node2fs18FSContinuationDataEEclEPS2_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br i1 %or.cond.not.i, label %bb.d, label %bb.o

bb.d:                                             ; preds = %_ZN4node8profilerL15EnsureDirectoryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.ae = load ptr, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(136) %0) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 47, ptr %i.c, align 1, !noalias !84
  %i.ah = load ptr, ptr %5, align 8, !noalias !84
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !84
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !84
  call void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %i.ah, i64 noundef %i.aj, ptr noundef nonnull %i.c, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !84
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %i.ak = load ptr, ptr %6, align 8, !noalias !87 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.am = load i64, ptr %i.al, align 8, !noalias !87 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.ao = load i64, ptr %i.an, align 8, !noalias !87 ; 5 uses
  %i.ap = sub i64 9223372036854775807, %i.ao
  %i.aq = icmp ult i64 %i.ap, %i.am
  br i1 %i.aq, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #29, !noalias !87
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.d
  %i.ar = add i64 %i.ao, %i.am                    ; 3 uses
  %i.as = load ptr, ptr %8, align 8, !noalias !87 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.av = icmp ult i64 %i.ao, 16
  call void @llvm.assume(i1 %i.av)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.aw = load i64, ptr %i.at, align 8, !noalias !87
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i
  %i.ax = phi i64 [ %i.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i ]
  %.not.i.i.i.i = icmp ugt i64 %i.ar, %i.ax
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  %.not8.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ao ; 2 uses
  %cond.i.i.i.i = icmp eq i64 %i.am, 1
  br i1 %cond.i.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.az = load i8, ptr %i.ak, align 1, !noalias !87
  store i8 %i.az, ptr %i.ay, align 1, !noalias !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %i.ak, i64 %i.am, i1 false), !noalias !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.ao, i64 noundef 0, ptr noundef %i.ak, i64 noundef %i.am), !noalias !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.f
  store i64 %i.ar, ptr %i.an, align 8, !noalias !87
  %i.ba = load ptr, ptr %8, align 8, !noalias !87
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ar
  store i8 0, ptr %i.bb, align 1, !noalias !87
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.bc, ptr %7, align 8, !alias.scope !87
  %i.bd = load ptr, ptr %8, align 8, !noalias !87 ; 3 uses
  %i.be = icmp eq ptr %i.bd, %i.at
  br i1 %i.be, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.bf = load i64, ptr %i.an, align 8, !noalias !87 ; 3 uses
  %i.bg = icmp ult i64 %i.bf, 16
  call void @llvm.assume(i1 %i.bg)
  %i.bh = add nuw nsw i64 %i.bf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.bh, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  store ptr %i.bd, ptr %7, align 8, !alias.scope !87
  %i.bi = load i64, ptr %i.at, align 8, !noalias !87
  store i64 %i.bi, ptr %i.bc, align 8, !alias.scope !87
  %.pre.i = load i64, ptr %i.an, align 8, !noalias !87
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bj = phi ptr [ %i.bc, %bb.k ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 3 uses
  %i.bk = phi i64 [ %i.bf, %bb.k ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.bk, ptr %i.bl, align 8, !alias.scope !87
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bn = load ptr, ptr %i.bm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.bj, ptr %i.a, align 8
  %i.bo = trunc i64 %.sroa.01.0.copyload to i32
  %i.bp = call { ptr, i64 } @uv_buf_init(ptr noundef %.sroa.4.0.copyload, i32 noundef %i.bo) #28 ; 2 uses
end_hunk_0
