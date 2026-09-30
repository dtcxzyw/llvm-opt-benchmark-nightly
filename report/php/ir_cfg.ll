Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/ir_cfg?download=true
inline.NumInlined: 22
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@ir_build_cfg:ir_array_init.exit
  %i.fo = load ptr, ptr %i.y, align 8, !tbaa !41  ; 2 uses
  %i.fp = load ptr, ptr %i.z, align 8, !tbaa !44  ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %.preheader430, %ir_next_control.exit
  %.2297 = phi i32 [ %.2.i, %ir_next_control.exit ], [ %i.fj, %.preheader430 ] ; 2 uses
  %i.fq = sext i32 %.2297 to i64
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.fq ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !43 ; 2 uses
  %i.fu = icmp sgt i32 %i.ft, 0
  br i1 %i.fu, label %.lr.ph481.preheader, label %ir_next_control.exit

.lr.ph481.preheader:                              ; preds = %bb.p
  %i.fv = load i32, ptr %i.fr, align 4, !tbaa !45
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.fw
  br label %.lr.ph481

.lr.ph481:                                        ; preds = %.lr.ph481.preheader, %bb.r
  %.016.i479 = phi ptr [ %i.gj, %bb.r ], [ %i.fx, %.lr.ph481.preheader ] ; 2 uses
  %.017.i478 = phi i32 [ %i.gk, %bb.r ], [ %i.ft, %.lr.ph481.preheader ] ; 2 uses
  %i.fy = load i32, ptr %.016.i479, align 4, !tbaa !39 ; 2 uses
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.fz ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 8, !tbaa !37
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr @ir_op_flags, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !39
  %i.gf = and i32 %i.ge, 512
  %.not.i = icmp eq i32 %i.gf, 0
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph481
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !37
  %i.gi = icmp eq i32 %i.gh, %.2297
  br i1 %i.gi, label %ir_next_control.exit, label %bb.r

bb.r:                                             ; preds = %.lr.ph481, %bb.q
  %i.gj = getelementptr inbounds nuw i8, ptr %.016.i479, i64 4
  %i.gk = add nsw i32 %.017.i478, -1
  %i.gl = icmp sgt i32 %.017.i478, 1
  br i1 %i.gl, label %.lr.ph481, label %ir_next_control.exit, !llvm.loop !86

ir_next_control.exit:                             ; preds = %bb.r, %bb.q, %bb.p
  %.2.i = phi i32 [ 0, %bb.p ], [ %i.fy, %bb.q ], [ 0, %bb.r ] ; 3 uses
  %i.gm = sext i32 %.2.i to i64                   ; 2 uses
  %i.gn = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.gm
  %i.go = load i8, ptr %i.gn, align 8, !tbaa !37
  %i.gp = zext i8 %i.go to i64
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr @ir_op_flags, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !39
  %i.gs = and i32 %i.gr, 8192
  %.not330 = icmp eq i32 %i.gs, 0
  br i1 %.not330, label %bb.p, label %bb.s

bb.s:                                             ; preds = %ir_next_control.exit
  %i.gt = add i32 %.1311, 1                       ; 6 uses
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.fk
  store i32 %.2.i, ptr %i.gu, align 4, !tbaa !39
  %i.gv = and i32 %i.fj, 63
  %i.gw = zext nneg i32 %i.gv to i64
  %i.gx = shl nuw i64 1, %i.gw
  %i.gy = lshr i32 %i.fj, 6
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.gz ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !38
  %i.hc = or i64 %i.hb, %i.gx
  store i64 %i.hc, ptr %i.ha, align 8, !tbaa !38
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.gm ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !43 ; 4 uses
  %i.hg = icmp slt i32 %i.hf, 2
  br i1 %i.hg, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.hh = icmp eq i32 %i.hf, 1
  br i1 %i.hh, label %bb.u, label %_ir_add_successors.exit

bb.u:                                             ; preds = %bb.t
  %i.hi = load i32, ptr %i.hd, align 4, !tbaa !45
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !39 ; 3 uses
  %i.hm = lshr i32 %i.hl, 6
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.hn ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !38 ; 2 uses
  %i.hq = and i32 %i.hl, 63
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = shl nuw i64 1, %i.hr                    ; 2 uses
  %i.ht = and i64 %i.hs, %i.hp
  %.not424 = icmp eq i64 %i.ht, 0
  br i1 %.not424, label %bb.v, label %_ir_add_successors.exit

bb.v:                                             ; preds = %bb.u
  %i.hu = or i64 %i.hs, %i.hp
  store i64 %i.hu, ptr %i.ho, align 8, !tbaa !38
  store i32 %i.hl, ptr %i.fi, align 4, !tbaa !39
  br label %_ir_add_successors.exit

bb.w:                                             ; preds = %bb.s
  %i.hv = load i32, ptr %i.hd, align 4, !tbaa !45
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %i.hw ; 3 uses
  %i.hy = icmp eq i32 %i.hf, 2
  br i1 %i.hy, label %bb.x, label %.lr.ph488

bb.x:                                             ; preds = %bb.w
  %i.hz = load i32, ptr %i.hx, align 4, !tbaa !39 ; 3 uses
  %i.ia = lshr i32 %i.hz, 6
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ib ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !38 ; 2 uses
  %i.ie = and i32 %i.hz, 63
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = shl nuw i64 1, %i.if                    ; 2 uses
  %i.ih = and i64 %i.ig, %i.id
  %.not422 = icmp eq i64 %i.ih, 0
  br i1 %.not422, label %bb.y, label %ir_worklist_push.exit28.i

bb.y:                                             ; preds = %bb.x
  %i.ii = or i64 %i.ig, %i.id
  store i64 %i.ii, ptr %i.ic, align 8, !tbaa !38
  store i32 %i.hz, ptr %i.fi, align 4, !tbaa !39
  br label %ir_worklist_push.exit28.i

ir_worklist_push.exit28.i:                        ; preds = %bb.y, %bb.x
  %.sroa.22372.20 = phi i32 [ %i.fg, %bb.x ], [ %.sroa.22372.4, %bb.y ] ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !39 ; 3 uses
  %i.il = lshr i32 %i.ik, 6
  %i.im = zext nneg i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.im ; 2 uses
  %i.io = load i64, ptr %i.in, align 8, !tbaa !38 ; 2 uses
  %i.ip = and i32 %i.ik, 63
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = shl nuw i64 1, %i.iq                    ; 2 uses
  %i.is = and i64 %i.ir, %i.io
  %.not423 = icmp eq i64 %i.is, 0
  br i1 %.not423, label %bb.z, label %_ir_add_successors.exit

bb.z:                                             ; preds = %ir_worklist_push.exit28.i
  %i.it = or i64 %i.ir, %i.io
  store i64 %i.it, ptr %i.in, align 8, !tbaa !38
  %i.iu = add i32 %.sroa.22372.20, 1
  %i.iv = zext i32 %.sroa.22372.20 to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.iv
  store i32 %i.ik, ptr %i.iw, align 4, !tbaa !39
  br label %_ir_add_successors.exit

.lr.ph488:                                        ; preds = %bb.w, %ir_worklist_push.exit.i355
  %.0.i354487 = phi i32 [ %i.jl, %ir_worklist_push.exit.i355 ], [ %i.hf, %bb.w ] ; 2 uses
  %.023.i486 = phi ptr [ %i.jk, %ir_worklist_push.exit.i355 ], [ %i.hx, %bb.w ] ; 2 uses
  %.sroa.22372.18485 = phi i32 [ %.sroa.22372.19, %ir_worklist_push.exit.i355 ], [ %i.fg, %bb.w ] ; 3 uses
  %i.ix = load i32, ptr %.023.i486, align 4, !tbaa !39 ; 3 uses
  %i.iy = lshr i32 %i.ix, 6
  %i.iz = zext nneg i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.iz ; 2 uses
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !38 ; 2 uses
  %i.jc = and i32 %i.ix, 63
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = shl nuw i64 1, %i.jd                    ; 2 uses
  %i.jf = and i64 %i.je, %i.jb
  %.not421 = icmp eq i64 %i.jf, 0
  br i1 %.not421, label %bb.aa, label %ir_worklist_push.exit.i355

bb.aa:                                            ; preds = %.lr.ph488
  %i.jg = or i64 %i.je, %i.jb
  store i64 %i.jg, ptr %i.ja, align 8, !tbaa !38
  %i.jh = add i32 %.sroa.22372.18485, 1
  %i.ji = zext i32 %.sroa.22372.18485 to i64
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ji
  store i32 %i.ix, ptr %i.jj, align 4, !tbaa !39
  br label %ir_worklist_push.exit.i355

ir_worklist_push.exit.i355:                       ; preds = %bb.aa, %.lr.ph488
  %.sroa.22372.19 = phi i32 [ %.sroa.22372.18485, %.lr.ph488 ], [ %i.jh, %bb.aa ] ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.023.i486, i64 4
  %i.jl = add nsw i32 %.0.i354487, -1
  %i.jm = icmp sgt i32 %.0.i354487, 1
  br i1 %i.jm, label %.lr.ph488, label %_ir_add_successors.exit, !llvm.loop !87

_ir_add_successors.exit:                          ; preds = %ir_worklist_push.exit.i355, %bb.t, %bb.v, %bb.u, %bb.z, %ir_worklist_push.exit28.i, %ir_bitset_union.exit
  %.sroa.22372.5 = phi i32 [ %i.fg, %ir_bitset_union.exit ], [ %i.iu, %bb.z ], [ %i.fg, %bb.t ], [ %.sroa.22372.4, %bb.v ], [ %i.fg, %bb.u ], [ %.sroa.22372.20, %ir_worklist_push.exit28.i ], [ %.sroa.22372.19, %ir_worklist_push.exit.i355 ] ; 2 uses
  %.2312 = phi i32 [ %.1311, %ir_bitset_union.exit ], [ %i.gt, %bb.z ], [ %i.gt, %bb.t ], [ %i.gt, %bb.v ], [ %i.gt, %bb.u ], [ %i.gt, %ir_worklist_push.exit28.i ], [ %i.gt, %ir_worklist_push.exit.i355 ] ; 2 uses
  %.not331 = icmp eq i32 %.sroa.22372.5, 0
  br i1 %.not331, label %.loopexit431, label %ir_bitset_union.exit, !llvm.loop !88

.loopexit431:                                     ; preds = %_ir_add_successors.exit, %._crit_edge474, %.outer435._crit_edge
  %.3 = phi i32 [ %.0310.ph.lcssa, %._crit_edge474 ], [ %.0310.ph.lcssa, %.outer435._crit_edge ], [ %.2312, %_ir_add_successors.exit ]
  %i.jn = add i32 %.3, 1
  %i.jo = zext i32 %i.jn to i64
  %i.jp = mul nuw nsw i64 %i.jo, 52
  %i.jq = tail call noalias ptr @_emalloc(i64 noundef %i.jp) #19 ; 9 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 52 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !47
  %i.ju = lshr i32 %i.jt, 26
  %.lobit = and i32 %i.ju, 1
  %i.jv = xor i32 %.lobit, 1                      ; 2 uses
  br i1 %.not548, label %._crit_edge521.thread, label %.lr.ph520

.lr.ph520:                                        ; preds = %.loopexit431
  %1 = or disjoint i32 %i.jv, 4
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph520, %.outer._crit_edge
  %.0300517 = phi i32 [ 0, %.lr.ph520 ], [ %i.lu, %.outer._crit_edge ] ; 2 uses
  %.0301516 = phi ptr [ %i.g, %.lr.ph520 ], [ %i.lt, %.outer._crit_edge ] ; 2 uses
  %.0304515 = phi ptr [ %i.jr, %.lr.ph520 ], [ %.1305.ph.lcssa, %.outer._crit_edge ] ; 2 uses
  %.0307514 = phi i32 [ 0, %.lr.ph520 ], [ %.1308.ph.lcssa, %.outer._crit_edge ] ; 2 uses
  %.0313513 = phi i32 [ 0, %.lr.ph520 ], [ %.1314.ph.lcssa, %.outer._crit_edge ] ; 2 uses
  %.0316512 = phi i32 [ 1, %.lr.ph520 ], [ %.1317.ph.lcssa, %.outer._crit_edge ] ; 2 uses
  %i.jx = load i64, ptr %.0301516, align 8, !tbaa !38 ; 2 uses
  %.not338490502 = icmp eq i64 %i.jx, 0
  br i1 %.not338490502, label %.outer._crit_edge, label %.lr.ph492.lr.ph

.lr.ph492.lr.ph:                                  ; preds = %bb.ab
  %i.jy = shl nuw i32 %.0300517, 6
  br label %.lr.ph492

.lr.ph492:                                        ; preds = %.lr.ph492.lr.ph, %.outer
  %.0299.ph507 = phi i64 [ %i.jx, %.lr.ph492.lr.ph ], [ %i.ke, %.outer ]
  %.1305.ph506 = phi ptr [ %.0304515, %.lr.ph492.lr.ph ], [ %i.ls, %.outer ] ; 15 uses
  %.1308.ph505 = phi i32 [ %.0307514, %.lr.ph492.lr.ph ], [ %.2309, %.outer ] ; 5 uses
  %.1314.ph504 = phi i32 [ %.0313513, %.lr.ph492.lr.ph ], [ %.2315, %.outer ] ; 3 uses
  %.1317.ph503 = phi i32 [ %.0316512, %.lr.ph492.lr.ph ], [ %i.lr, %.outer ] ; 4 uses
  %i.jz = load ptr, ptr %0, align 8, !tbaa !36
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph492, %bb.ad
  %.0299491 = phi i64 [ %.0299.ph507, %.lr.ph492 ], [ %i.ke, %bb.ad ] ; 3 uses
  %i.ka = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %.0299491, i1 true)
  %i.kb = trunc nuw nsw i64 %i.ka to i32
  %i.kc = or disjoint i32 %i.jy, %i.kb            ; 2 uses
  %i.kd = add i64 %.0299491, -1
  %i.ke = and i64 %i.kd, %.0299491                ; 4 uses
  %i.kf = sext i32 %i.kc to i64                   ; 2 uses
  %i.kg = getelementptr inbounds [16 x i8], ptr %i.jz, i64 %i.kf ; 5 uses
  %i.kh = load i8, ptr %i.kg, align 8, !tbaa !37
  %i.ki = icmp eq i8 %i.kh, 0
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.kf ; 3 uses
  br i1 %i.ki, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.kj, align 4, !tbaa !39
  %.not338 = icmp eq i64 %i.ke, 0
  br i1 %.not338, label %.outer._crit_edge, label %bb.ac, !llvm.loop !89

bb.ae:                                            ; preds = %bb.ac
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !39 ; 2 uses
  store i32 %.1317.ph503, ptr %i.kj, align 4, !tbaa !39
  %i.kl = sext i32 %i.kk to i64                   ; 2 uses
  %i.km = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.kl
  store i32 %.1317.ph503, ptr %i.km, align 4, !tbaa !39
  %i.kn = getelementptr inbounds nuw i8, ptr %.1305.ph506, i64 4
  store i32 %i.kc, ptr %i.kn, align 4, !tbaa !49
  %i.ko = getelementptr inbounds nuw i8, ptr %.1305.ph506, i64 8
  store i32 %i.kk, ptr %i.ko, align 4, !tbaa !50
  %i.kp = getelementptr inbounds nuw i8, ptr %.1305.ph506, i64 12
  store i32 %.1314.ph504, ptr %i.kp, align 4, !tbaa !51
  %i.kq = load ptr, ptr %i.y, align 8, !tbaa !41
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.kl
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !43
  %i.ku = add i32 %i.kt, %.1314.ph504             ; 5 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.1305.ph506, i64 16
  store i32 0, ptr %i.kv, align 4, !tbaa !52
  %i.kw = getelementptr inbounds nuw i8, ptr %.1305.ph506, i64 20
  store i32 %i.ku, ptr %i.kw, align 4, !tbaa !53
  %i.kx = getelementptr inbounds nuw i8, ptr %.1305.ph506, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.kx, i8 0, i64 24, i1 false)
  %i.ky = load i8, ptr %i.kg, align 8, !tbaa !37
  %i.kz = icmp eq i8 %i.ky, 99
  br i1 %i.kz, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 2, ptr %.1305.ph506, align 4, !tbaa !54
  %i.la = getelementptr inbounds nuw i8, ptr %.1305.ph506, i64 24
  store i32 0, ptr %i.la, align 4, !tbaa !55
  br label %.outer

bb.ag:                                            ; preds = %bb.ae
  store i32 %i.jv, ptr %.1305.ph506, align 4, !tbaa !54
  %i.lb = load i8, ptr %i.kg, align 8, !tbaa !37  ; 2 uses
  %.off = add i8 %i.lb, -107
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kg, i64 2
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !37
  %i.le = zext i16 %i.ld to i32                   ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.1305.ph506, i64 24
  store i32 %i.le, ptr %i.lf, align 4, !tbaa !55
  %i.lg = add i32 %.1308.ph505, %i.le
  %i.lh = add i32 %i.ku, %i.le
  br label %.outer

bb.ai:                                            ; preds = %bb.ag
  %i.li = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !37
  %.not339 = icmp eq i32 %i.lj, 0
  br i1 %.not339, label %bb.am, label %bb.aj, !prof !46

bb.aj:                                            ; preds = %bb.ai
  %i.lk = icmp eq i8 %i.lb, 100
  br i1 %i.lk, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 %1, ptr %.1305.ph506, align 4, !tbaa !54
  %i.ll = load i32, ptr %i.jw, align 8, !tbaa !56
  %i.lm = add i32 %i.ll, 1
  store i32 %i.lm, ptr %i.jw, align 8, !tbaa !56
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ln = getelementptr inbounds nuw i8, ptr %.1305.ph506, i64 24
  store i32 1, ptr %i.ln, align 4, !tbaa !55
  %i.lo = add i32 %.1308.ph505, 1
  %i.lp = add i32 %i.ku, 1
  br label %.outer

bb.am:                                            ; preds = %bb.ai
  %i.lq = getelementptr inbounds nuw i8, ptr %.1305.ph506, i64 24
  store i32 0, ptr %i.lq, align 4, !tbaa !55
  br label %.outer

.outer:                                           ; preds = %bb.ah, %bb.am, %bb.al, %bb.af
  %.2315 = phi i32 [ %i.ku, %bb.af ], [ %i.lh, %bb.ah ], [ %i.lp, %bb.al ], [ %i.ku, %bb.am ] ; 2 uses
  %.2309 = phi i32 [ %.1308.ph505, %bb.af ], [ %i.lg, %bb.ah ], [ %i.lo, %bb.al ], [ %.1308.ph505, %bb.am ] ; 2 uses
  %i.lr = add i32 %.1317.ph503, 1                 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.1305.ph506, i64 52 ; 2 uses
  %.not338490 = icmp eq i64 %i.ke, 0
  br i1 %.not338490, label %.outer._crit_edge, label %.lr.ph492, !llvm.loop !89

.outer._crit_edge:                                ; preds = %.outer, %bb.ad, %bb.ab
  %.1317.ph.lcssa = phi i32 [ %.1317.ph503, %bb.ad ], [ %.0316512, %bb.ab ], [ %i.lr, %.outer ] ; 4 uses
  %.1314.ph.lcssa = phi i32 [ %.1314.ph504, %bb.ad ], [ %.0313513, %bb.ab ], [ %.2315, %.outer ] ; 2 uses
  %.1308.ph.lcssa = phi i32 [ %.1308.ph505, %bb.ad ], [ %.0307514, %bb.ab ], [ %.2309, %.outer ] ; 2 uses
  %.1305.ph.lcssa = phi ptr [ %.1305.ph506, %bb.ad ], [ %.0304515, %bb.ab ], [ %i.ls, %.outer ]
  %i.lt = getelementptr inbounds nuw i8, ptr %.0301516, i64 8
  %i.lu = add nuw nsw i32 %.0300517, 1            ; 2 uses
  %exitcond588.not = icmp eq i32 %i.lu, %i.d
  br i1 %exitcond588.not, label %._crit_edge521, label %bb.ab, !llvm.loop !90

._crit_edge521:                                   ; preds = %.outer._crit_edge
  %i.lv = shl i32 %.1308.ph.lcssa, 1              ; 3 uses
  %i.lw = icmp eq i32 %.1314.ph.lcssa, %i.lv
  %i.lx = add i32 %.1317.ph.lcssa, -1             ; 3 uses
  br i1 %i.lw, label %._crit_edge521.thread, label %bb.an, !prof !107

bb.an:                                            ; preds = %._crit_edge521
  tail call fastcc void @ir_cfg_remove_dead_inputs(ptr noundef nonnull %0, ptr noundef %i.m, ptr noundef %i.jq, i32 noundef %i.lx)
  br label %._crit_edge521.thread

._crit_edge521.thread:                            ; preds = %.loopexit431, %bb.an, %._crit_edge521
  %i.ly = phi i32 [ %i.lx, %._crit_edge521 ], [ %i.lx, %bb.an ], [ 0, %.loopexit431 ] ; 5 uses
  %.0307.lcssa632 = phi i32 [ %i.lv, %._crit_edge521 ], [ %i.lv, %bb.an ], [ 0, %.loopexit431 ] ; 2 uses
  %.0316.lcssa631 = phi i32 [ %.1317.ph.lcssa, %._crit_edge521 ], [ %.1317.ph.lcssa, %bb.an ], [ 1, %.loopexit431 ]
  tail call void @_efree(ptr noundef %i.g) #17
  %i.lz = zext i32 %.0307.lcssa632 to i64
  %i.ma = shl nuw nsw i64 %i.lz, 2
  %i.mb = tail call noalias ptr @_emalloc(i64 noundef %i.ma) #19 ; 9 uses
  %.not334530 = icmp eq i32 %i.ly, 0              ; 2 uses
  br i1 %.not334530, label %._crit_edge536, label %.lr.ph535

.lr.ph535:                                        ; preds = %._crit_edge521.thread
  %i.mc = load ptr, ptr %0, align 8, !tbaa !36
  %umax = tail call i32 @llvm.umax.i32(i32 %.0316.lcssa631, i32 2)
  br label %bb.ao

bb.ao:                                            ; preds = %.lr.ph535, %.loopexit
  %.2306533 = phi ptr [ %i.jr, %.lr.ph535 ], [ %i.pj, %.loopexit ] ; 5 uses
  %.2318531 = phi i32 [ 1, %.lr.ph535 ], [ %i.pi, %.loopexit ] ; 5 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.2306533, i64 4
  %i.me = load i32, ptr %i.md, align 4, !tbaa !49
  %i.mf = sext i32 %i.me to i64
  %i.mg = getelementptr inbounds [16 x i8], ptr %i.mc, i64 %i.mf ; 4 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.2306533, i64 24
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !55 ; 2 uses
  %i.mj = icmp ugt i32 %i.mi, 1
  br i1 %i.mj, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mg, i64 2
  %i.ml = load i16, ptr %i.mk, align 2, !tbaa !37 ; 3 uses
  %.not551 = icmp eq i16 %i.ml, 0
  br i1 %.not551, label %.loopexit, label %.lr.ph529.preheader

.lr.ph529.preheader:                              ; preds = %bb.ap
  %i.mm = zext i16 %i.ml to i32                   ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.2306533, i64 20
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !53
  %i.mp = zext i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.mp ; 3 uses
  %xtraiter = and i32 %i.mm, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph529.prol.loopexit, label %.lr.ph529.prol

.lr.ph529.prol:                                   ; preds = %.lr.ph529.preheader
  %.1294.prol = getelementptr inbounds nuw i8, ptr %i.mg, i64 4 ; 2 uses
  %i.mr = load i32, ptr %.1294.prol, align 4, !tbaa !39
end_hunk_0
