Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-kv-cache?download=true
inline.NumInlined: 4941
inline.NumDeleted: 2050
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_ZNK14llama_kv_cache9find_slotERK12llama_ubatchb:bb.a
  %i.lw = icmp ugt i64 %i.lq, %i.lv
  br i1 %i.lw, label %bb.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit247

bb.bd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i243
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.lp, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc246 unwind label %.loopexit.split-lp307.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc246:                                        ; preds = %bb.bd
  %.pre.i.i244 = load ptr, ptr %6, align 8, !tbaa !561
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit247: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i243, %.noexc246
  %i.lx = phi ptr [ %.pre.i.i244, %.noexc246 ], [ %i.lr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i243 ]
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.lp
  store i8 10, ptr %i.ly, align 1, !tbaa !109
  store i64 %i.lq, ptr %i.p, align 8, !tbaa !560
  %i.lz = load ptr, ptr %6, align 8, !tbaa !561
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.lq
  store i8 0, ptr %i.ma, align 1, !tbaa !109
  br label %bb.be

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit247, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit238
  %i.mb = load ptr, ptr %7, align 8, !tbaa !561   ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.q
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248: ; preds = %bb.be
  %i.md = load i64, ptr %i.q, align 8, !tbaa !109
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %indvars.iv.next456 = add nuw nsw i64 %indvars.iv455, 1 ; 2 uses
  %i.mf = load ptr, ptr %i.bk, align 8, !tbaa !125
  %i.mg = load ptr, ptr %i.bj, align 8, !tbaa !126
  %i.mh = ptrtoint ptr %i.mf to i64
  %i.mi = ptrtoint ptr %i.mg to i64
  %i.mj = sub i64 %i.mh, %i.mi
  %i.mk = lshr exact i64 %i.mj, 2
  %i.ml = and i64 %i.mk, 4294967295
  %i.mm = icmp samesign ult i64 %indvars.iv.next456, %i.ml
  br i1 %i.mm, label %.lr.ph398, label %._crit_edge399.loopexit, !llvm.loop !551

bb.bf:                                            ; preds = %._crit_edge399
  %i.mn = load ptr, ptr %6, align 8, !tbaa !561   ; 2 uses
  %i.mo = icmp eq ptr %i.mn, %i.o
  br i1 %i.mo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %bb.bf
  %i.mp = load i64, ptr %i.o, align 8, !tbaa !109
  %i.mq = add i64 %i.mp, 1
  call void @_ZdlPvm(ptr noundef %i.mn, i64 noundef %i.mq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.thread293

bb.bg:                                            ; preds = %._crit_edge399
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241
  %.pn166.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp636, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241 ], [ %i.mr, %bb.bg ]
  %i.ms = load ptr, ptr %6, align 8, !tbaa !561   ; 2 uses
  %i.mt = icmp eq ptr %i.ms, %i.o
  br i1 %i.mt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254: ; preds = %bb.bh
  %i.mu = load i64, ptr %i.o, align 8, !tbaa !109
  %i.mv = add i64 %i.mu, 1
  call void @_ZdlPvm(ptr noundef %i.ms, i64 noundef %i.mv) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.cn

.thread293:                                       ; preds = %bb.d, %bb.e, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, %bb.ag
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  br label %bb.bj

bb.bi:                                            ; preds = %_ZNK14llama_kv_cells11seq_pos_minEi.exit.thread
  %indvars.iv.next463 = add nuw nsw i64 %indvars.iv462, 1 ; 2 uses
  %i.mx = load i32, ptr %i.d, align 8, !tbaa !558
  %i.my = zext i32 %i.mx to i64
  %i.mz = icmp samesign ult i64 %indvars.iv.next463, %i.my
  br i1 %i.mz, label %bb.b, label %.loopexit323, !llvm.loop !552

bb.bj:                                            ; preds = %.thread293, %_ZNK14llama_kv_cells11seq_pos_minEi.exit.thread
  %indvars.iv458 = phi i64 [ 0, %.thread293 ], [ %indvars.iv.next459, %_ZNK14llama_kv_cells11seq_pos_minEi.exit.thread ] ; 3 uses
  %i.na = getelementptr inbounds nuw [48 x i8], ptr %i.mw, i64 %indvars.iv458 ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 40
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !151
  %i.nd = icmp eq i64 %i.nc, 0
  br i1 %i.nd, label %_ZNK14llama_kv_cells11seq_pos_minEi.exit.thread, label %_ZNK14llama_kv_cells11seq_pos_minEi.exit

_ZNK14llama_kv_cells11seq_pos_minEi.exit:         ; preds = %bb.bj
  %i.ne = getelementptr inbounds nuw i8, ptr %i.na, i64 24
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !149
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 32
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !303 ; 2 uses
  %i.ni = icmp slt i32 %i.nh, 0
  br i1 %i.ni, label %_ZNK14llama_kv_cells11seq_pos_minEi.exit.thread, label %_ZNK14llama_kv_cells11seq_pos_maxEi.exit

_ZNK14llama_kv_cells11seq_pos_maxEi.exit:         ; preds = %_ZNK14llama_kv_cells11seq_pos_minEi.exit
  %i.nj = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nk = call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.nj) #32
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 32
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !303
  %i.nn = trunc nuw nsw i64 %indvars.iv458 to i32 ; 2 uses
  call void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 1, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__._ZNK14llama_kv_cache9find_slotERK12llama_ubatchb, i32 noundef %i.aa, i32 noundef %i.nn, i32 noundef %i.nh, i32 noundef %i.nn, i32 noundef %i.nm)
  br label %_ZNK14llama_kv_cells11seq_pos_minEi.exit.thread

_ZNK14llama_kv_cells11seq_pos_minEi.exit.thread:  ; preds = %bb.bj, %_ZNK14llama_kv_cells11seq_pos_minEi.exit, %_ZNK14llama_kv_cells11seq_pos_maxEi.exit
  %indvars.iv.next459 = add nuw nsw i64 %indvars.iv458, 1 ; 2 uses
  %exitcond461.not = icmp eq i64 %indvars.iv.next459, 256
  br i1 %exitcond461.not, label %bb.bi, label %bb.bj, !llvm.loop !553

.loopexit323:                                     ; preds = %bb.bi, %.preheader322, %bb.a
  %i.no = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.np = load i32, ptr %i.no, align 4, !tbaa !312 ; 3 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.nr = load i32, ptr %i.nq, align 8, !tbaa !98
  %i.ns = icmp ugt i32 %i.nr, 1
  br i1 %i.ns, label %bb.bk, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.bk:                                            ; preds = %.loopexit323
  %i.nt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !558 ; 3 uses
  %i.nv = urem i32 %i.np, %i.nu
  %i.nw = udiv i32 %i.np, %i.nu
  %i.nx = icmp eq i32 %i.nv, 0
  br i1 %i.nx, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 970, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.45) #29
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.ny = zext i32 %i.nu to i64
  br label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.bm, %.loopexit323
  %.0129 = phi i32 [ %i.nw, %bb.bm ], [ %i.np, %.loopexit323 ]
  %.0128 = phi i64 [ %i.ny, %bb.bm ], [ 1, %.loopexit323 ] ; 6 uses
  %.0129.fr = freeze i32 %.0129                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store i32 256, ptr %9, align 8, !tbaa !361
  %i.nz = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ob = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.od = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.oe = shl nuw nsw i64 %.0128, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.nz, i8 0, i64 52, i1 false)
  %i.of = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oe) #28
          to label %.noexc287 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

.noexc287:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.of, align 4, !tbaa !110
  %i.og = add nsw i64 %.0128, -1                  ; 2 uses
  %i.oh = icmp eq i64 %i.og, 0
  br i1 %i.oh, label %_ZNKSt6vectorIS_IjSaIjEESaIS1_EE12_M_check_lenEmPKc.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc287
  %i.oi = getelementptr i8, ptr %i.of, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.og, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.oi, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !110
  br label %_ZNKSt6vectorIS_IjSaIjEESaIS1_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIS_IjSaIjEESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc287
  store ptr %i.of, ptr %i.oa, align 8, !tbaa !126
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %.0128 ; 5 uses
  store ptr %i.oj, ptr %i.oc, align 8, !tbaa !125
  store ptr %i.oj, ptr %i.od, align 8, !tbaa !337
  %i.ok = mul nuw nsw i64 %.0128, 24              ; 2 uses
  %i.ol = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ok) #28
          to label %_ZN14llama_kv_cache9slot_info6resizeEm.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZN14llama_kv_cache9slot_info6resizeEm.exit:      ; preds = %_ZNKSt6vectorIS_IjSaIjEESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.om = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.on = getelementptr inbounds nuw i8, ptr %9, i64 40
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ol, i8 0, i64 %i.ok, i1 false)
  store ptr %i.ol, ptr %i.ob, align 8, !tbaa !343
  %i.oo = getelementptr inbounds nuw [24 x i8], ptr %i.ol, i64 %.0128 ; 5 uses
  store ptr %i.oo, ptr %i.on, align 8, !tbaa !353
  store ptr %i.oo, ptr %i.om, align 8, !tbaa !339
  %i.op = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.oq = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.or = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ot = zext i32 %.0129.fr to i64               ; 5 uses
  %i.ou = shl nuw nsw i64 %i.ot, 2
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ow = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ox = shl i32 %.0129.fr, 1
  %i.oy = select i1 %3, i32 %.0129.fr, i32 1      ; 4 uses
  %.not424 = icmp eq i32 %i.oy, 0
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.pa = getelementptr inbounds nuw i8, ptr %1, i64 116
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN14llama_kv_cache9slot_info6resizeEm.exit, %.split414.us
  %i.pb = phi ptr [ %i.ol, %_ZN14llama_kv_cache9slot_info6resizeEm.exit ], [ %i.wc, %.split414.us ] ; 3 uses
  %i.pc = phi i32 [ 0, %_ZN14llama_kv_cache9slot_info6resizeEm.exit ], [ %i.qc, %.split414.us ]
  %i.pd = phi i32 [ 256, %_ZN14llama_kv_cache9slot_info6resizeEm.exit ], [ %i.qb, %.split414.us ]
  %indvars.iv465 = phi i64 [ 0, %_ZN14llama_kv_cache9slot_info6resizeEm.exit ], [ %indvars.iv.next466, %.split414.us ] ; 7 uses
  %i.pe = load ptr, ptr %i.op, align 8, !tbaa !356
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %indvars.iv465
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !110 ; 2 uses
  %i.ph = load i32, ptr %i.nq, align 8, !tbaa !98
  %i.pi = icmp ugt i32 %i.ph, 1
  br i1 %i.pi, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.pj = load ptr, ptr %i.oq, align 8, !tbaa !362
  %i.pk = trunc nuw i64 %indvars.iv465 to i32
  %i.pl = mul i32 %.0129.fr, %i.pk
  %i.pm = zext i32 %i.pl to i64                   ; 2 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %i.pm
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !110
  %i.pp = icmp eq i32 %i.po, 1
  br i1 %i.pp, label %bb.bp, label %.invoke569

bb.bp:                                            ; preds = %bb.bo
  %i.pq = load ptr, ptr %i.or, align 8, !tbaa !363
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %i.pm
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !336
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !110
  %i.pu = icmp eq i32 %i.pt, %i.pg
  br i1 %i.pu, label %bb.bq, label %.invoke569

.invoke569:                                       ; preds = %bb.bp, %bb.bo
  %i.pv = phi i32 [ 989, %bb.bo ], [ 990, %bb.bp ]
  %i.pw = phi ptr [ @.str.46, %bb.bo ], [ @.str.47, %bb.bp ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef %i.pv, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.pw) #29
          to label %.cont570 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont570:                                         ; preds = %.invoke569
  unreachable

bb.bq:                                            ; preds = %bb.bp, %bb.bn
  %i.px = sext i32 %i.pg to i64                   ; 2 uses
  %i.py = load ptr, ptr %i.os, align 8, !tbaa !120
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %i.px
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !110 ; 4 uses
  %i.qb = call i32 @llvm.umin.i32(i32 %i.qa, i32 %i.pd) ; 2 uses
  store i32 %i.qb, ptr %9, align 8, !tbaa !361
  %i.qc = call i32 @llvm.umax.i32(i32 %i.pc, i32 %i.qa) ; 2 uses
  store i32 %i.qc, ptr %i.nz, align 4, !tbaa !364
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %indvars.iv465
  store i32 %i.qa, ptr %i.qd, align 4, !tbaa !110
  %i.qe = getelementptr inbounds nuw [24 x i8], ptr %i.pb, i64 %indvars.iv465 ; 6 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 16 ; 2 uses
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !275
  %i.qh = load ptr, ptr %i.qe, align 8, !tbaa !120 ; 4 uses
  %i.qi = ptrtoint ptr %i.qg to i64
  %i.qj = ptrtoint ptr %i.qh to i64               ; 2 uses
  %i.qk = sub i64 %i.qi, %i.qj                    ; 2 uses
  %i.ql = ashr exact i64 %i.qk, 2
  %i.qm = icmp ult i64 %i.ql, %i.ot
  br i1 %i.qm, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.bq
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qe, i64 8 ; 2 uses
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !152
  %i.qp = ptrtoint ptr %i.qo to i64
  %i.qq = sub i64 %i.qp, %i.qj                    ; 3 uses
  %i.qr = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ou) #28
          to label %.noexc263 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc263:                                        ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.qs = icmp sgt i64 %i.qq, 0
  br i1 %i.qs, label %bb.br, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.br:                                            ; preds = %.noexc263
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.qr, ptr align 4 %i.qh, i64 %i.qq, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.br, %.noexc263
  %.not.i8.i = icmp eq ptr %i.qh, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.qh, i64 noundef %i.qk) #31
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.bs, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.qr, ptr %i.qe, align 8, !tbaa !120
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.qq
  store ptr %i.qt, ptr %i.qn, align 8, !tbaa !152
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.qr, i64 %i.ot
  store ptr %i.qu, ptr %i.qf, align 8, !tbaa !275
  %.pre472 = load ptr, ptr %i.os, align 8, !tbaa !120
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre472, i64 %i.px
  %.pre473 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !110
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, %bb.bq
  %i.qv = phi i32 [ %.pre473, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ %i.qa, %bb.bq ]
  %i.qw = load ptr, ptr %i.ov, align 8, !tbaa !117, !nonnull !118, !align !119
  %i.qx = zext i32 %i.qv to i64                   ; 2 uses
  %i.qy = load ptr, ptr %i.qw, align 8, !tbaa !123
  %i.qz = getelementptr inbounds nuw [12440 x i8], ptr %i.qy, i64 %i.qx ; 5 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 56 ; 3 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qz, i64 64 ; 2 uses
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !125 ; 3 uses
  %i.rd = load ptr, ptr %i.ra, align 8, !tbaa !126 ; 3 uses
  %i.re = ptrtoint ptr %i.rc to i64
  %i.rf = ptrtoint ptr %i.rd to i64
  %i.rg = sub i64 %i.re, %i.rf
  %i.rh = lshr exact i64 %i.rg, 2
  %i.ri = trunc i64 %i.rh to i32                  ; 3 uses
  %i.rj = icmp ugt i32 %.0129.fr, %i.ri
  br i1 %i.rj, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 4, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__._ZNK14llama_kv_cache9find_slotERK12llama_ubatchb, i32 noundef %.0129.fr, i32 noundef %i.ri)
          to label %.critedge179thread-pre-split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bu:                                            ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.rk = load ptr, ptr %i.ow, align 8, !tbaa !120
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %i.qx
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !110 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qz, i64 48
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !151
  %i.rp = trunc i64 %i.ro to i32
  %i.rq = add i32 %i.ox, %i.rp
  %i.rr = icmp ugt i32 %i.rm, %i.rq
  %spec.select = select i1 %i.rr, i32 0, i32 %i.rm ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qz, i64 128
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qz, i64 152
  br i1 %.not424, label %.split, label %.split.us.preheader

.split.us.preheader:                              ; preds = %bb.bu
  %i.ru = getelementptr inbounds nuw [24 x i8], ptr %i.pb, i64 %indvars.iv465 ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 8 ; 3 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 16 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qe, i64 8 ; 2 uses
  br label %.split.us.outer

.split.us.outer:                                  ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.us, %.split.us.preheader
  %.ph = phi ptr [ %i.vd, %_ZNSt6vectorIjSaIjEE5clearEv.exit.us ], [ %i.rd, %.split.us.preheader ] ; 3 uses
  %.ph614 = phi ptr [ %i.vc, %_ZNSt6vectorIjSaIjEE5clearEv.exit.us ], [ %i.rc, %.split.us.preheader ] ; 2 uses
  %.1125.us.ph = phi i32 [ %i.sn, %_ZNSt6vectorIjSaIjEE5clearEv.exit.us ], [ %spec.select, %.split.us.preheader ] ; 3 uses
  %.0121.us.ph = phi i32 [ %i.so, %_ZNSt6vectorIjSaIjEE5clearEv.exit.us ], [ 0, %.split.us.preheader ] ; 2 uses
  %i.ry = add i32 %.1125.us.ph, %i.oy
  %i.rz = ptrtoint ptr %.ph614 to i64
  %i.sa = ptrtoint ptr %.ph to i64
  %i.sb = sub i64 %i.rz, %i.sa
  %i.sc = lshr exact i64 %i.sb, 2
  %i.sd = trunc i64 %i.sc to i32                  ; 2 uses
  %i.se = icmp ugt i32 %i.ry, %i.sd
  br i1 %i.se, label %.split.us.peel.next, label %.preheader.us.outer

.split.us.peel.next:                              ; preds = %.split.us.outer
  %i.sf = sub i32 %.0121.us.ph, %.1125.us.ph
  %i.sg = add i32 %i.sf, %i.sd
  %i.sh = ptrtoint ptr %.ph614 to i64
  %i.si = ptrtoint ptr %.ph to i64
  %i.sj = sub i64 %i.sh, %i.si
  %i.sk = lshr exact i64 %i.sj, 2
  %i.sl = trunc i64 %i.sk to i32                  ; 2 uses
  %i.sm = icmp ugt i32 %i.oy, %i.sl
  br label %.split.us

.split.us:                                        ; preds = %.split.us.peel.next, %bb.ch
  %.0121.us = phi i32 [ %i.vj, %bb.ch ], [ %i.sg, %.split.us.peel.next ] ; 2 uses
  br i1 %i.sm, label %bb.ch, label %.preheader.us.outer

.preheader.us.outer:                              ; preds = %.split.us, %.split.us.outer
  %.1122404.us.ph = phi i32 [ %.1125.us.ph, %.split.us.outer ], [ 0, %.split.us ]
  %.2126403.us.ph = phi i32 [ %.0121.us.ph, %.split.us.outer ], [ %.0121.us, %.split.us ]
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.outer, %.critedge.us..preheader.us.backedge_crit_edge
  %.pre474475 = phi ptr [ %.pre474.pre, %.critedge.us..preheader.us.backedge_crit_edge ], [ %.ph, %.preheader.us.outer ]
  %.0120405.us = phi i32 [ %.old, %.critedge.us..preheader.us.backedge_crit_edge ], [ 0, %.preheader.us.outer ]
  %.1122404.us = phi i32 [ %i.so, %.critedge.us..preheader.us.backedge_crit_edge ], [ %.2126403.us.ph, %.preheader.us.outer ]
  %.2126403.us = phi i32 [ %i.sn, %.critedge.us..preheader.us.backedge_crit_edge ], [ %.1122404.us.ph, %.preheader.us.outer ] ; 4 uses
  %i.sn = add i32 %.2126403.us, 1                 ; 2 uses
  %i.so = add i32 %.1122404.us, 1                 ; 3 uses
  %i.sp = zext i32 %.2126403.us to i64            ; 2 uses
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %.pre474475, i64 %i.sp
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !110 ; 4 uses
  %i.ss = icmp eq i32 %i.sr, -1
  br i1 %i.ss, label %bb.cb, label %bb.bv

bb.bv:                                            ; preds = %.preheader.us
  %i.st = load ptr, ptr %i.rs, align 8, !tbaa !283
  %i.su = getelementptr inbounds nuw [32 x i8], ptr %i.st, i64 %i.sp ; 2 uses
  %i.sv = load <4 x i64>, ptr %i.su, align 8, !tbaa !180
  %i.sw = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.sv)
  %i.sx = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.sw)
  %i.sy = icmp eq i64 %i.sx, 1
  br i1 %i.sy, label %_ZNKSt6bitsetILm256EE4testEm.exit.i264.us, label %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit._crit_edge.us

_ZNKSt6bitsetILm256EE4testEm.exit.i264.us:        ; preds = %bb.bv, %bb.bw
  %indvars.iv.i265.us = phi i64 [ %indvars.iv.next.i268.us.1, %bb.bw ], [ 0, %bb.bv ] ; 5 uses
  %i.sz = lshr i64 %indvars.iv.i265.us, 6
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %i.sz
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !180 ; 2 uses
  %i.tc = and i64 %indvars.iv.i265.us, 62
  %i.td = shl nuw nsw i64 1, %i.tc
  %i.te = and i64 %i.td, %i.tb
  %.not.i266.us = icmp eq i64 %i.te, 0
  br i1 %.not.i266.us, label %_ZNKSt6bitsetILm256EE4testEm.exit.i264.us.1, label %_ZNK14llama_kv_cells7seq_getEj.exit270.us

_ZNKSt6bitsetILm256EE4testEm.exit.i264.us.1:      ; preds = %_ZNKSt6bitsetILm256EE4testEm.exit.i264.us
  %indvars.iv.next.i268.us = or disjoint i64 %indvars.iv.i265.us, 1 ; 2 uses
  %i.tf = and i64 %indvars.iv.next.i268.us, 63
  %i.tg = shl nuw i64 1, %i.tf
  %i.th = and i64 %i.tg, %i.tb
  %.not.i266.us.1 = icmp eq i64 %i.th, 0
  br i1 %.not.i266.us.1, label %bb.bw, label %_ZNK14llama_kv_cells7seq_getEj.exit270.us

bb.bw:                                            ; preds = %_ZNKSt6bitsetILm256EE4testEm.exit.i264.us.1
  %indvars.iv.next.i268.us.1 = add nuw nsw i64 %indvars.iv.i265.us, 2 ; 2 uses
  %exitcond.not.i269.us.1 = icmp eq i64 %indvars.iv.next.i268.us.1, 256
  br i1 %exitcond.not.i269.us.1, label %_ZNK14llama_kv_cells7seq_getEj.exit270.us, label %_ZNKSt6bitsetILm256EE4testEm.exit.i264.us, !llvm.loop !29

_ZNK14llama_kv_cells7seq_getEj.exit270.us:        ; preds = %bb.bw, %_ZNKSt6bitsetILm256EE4testEm.exit.i264.us.1, %_ZNKSt6bitsetILm256EE4testEm.exit.i264.us
  %i.ti = phi i64 [ -1, %bb.bw ], [ %indvars.iv.i265.us, %_ZNKSt6bitsetILm256EE4testEm.exit.i264.us ], [ %indvars.iv.next.i268.us, %_ZNKSt6bitsetILm256EE4testEm.exit.i264.us.1 ]
  %i.tj = load i32, ptr %i.oz, align 8, !tbaa !99 ; 3 uses
  %i.tk = load i32, ptr %i.pa, align 4, !tbaa !106
  %i.tl = getelementptr inbounds [48 x i8], ptr %i.rt, i64 %i.ti ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 40
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !151
  %i.to = icmp eq i64 %i.tn, 0
  br i1 %i.to, label %_ZNK14llama_kv_cells11seq_pos_maxEi.exit272.us, label %bb.bx

bb.bx:                                            ; preds = %_ZNK14llama_kv_cells7seq_getEj.exit270.us
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.tq = call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.tp) #32
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 32
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !303
  %i.tt = add nsw i32 %i.ts, 1
  br label %_ZNK14llama_kv_cells11seq_pos_maxEi.exit272.us

_ZNK14llama_kv_cells11seq_pos_maxEi.exit272.us:   ; preds = %bb.bx, %_ZNK14llama_kv_cells7seq_getEj.exit270.us
  %.0.i271.us = phi i32 [ %i.tt, %bb.bx ], [ 0, %_ZNK14llama_kv_cells7seq_getEj.exit270.us ] ; 4 uses
  switch i32 %i.tk, label %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit._crit_edge.us [
    i32 3, label %bb.ca
    i32 1, label %bb.bz
    i32 2, label %bb.by
  ]

bb.by:                                            ; preds = %_ZNK14llama_kv_cells11seq_pos_maxEi.exit272.us
  %i.tu = urem i32 %.0.i271.us, %i.tj
  %i.tv = sub nuw i32 %.0.i271.us, %i.tu
  %.not21.i.us = icmp slt i32 %i.sr, %i.tv
  br i1 %.not21.i.us, label %bb.cb, label %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit._crit_edge.us

bb.bz:                                            ; preds = %_ZNK14llama_kv_cells11seq_pos_maxEi.exit272.us
  %i.tw = sub nsw i32 %.0.i271.us, %i.sr
  %.not.i273.us = icmp slt i32 %i.tw, %i.tj
  br i1 %.not.i273.us, label %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit._crit_edge.us, label %bb.cb

bb.ca:                                            ; preds = %_ZNK14llama_kv_cells11seq_pos_maxEi.exit272.us
  %i.tx = sdiv i32 %i.tj, 2                       ; 2 uses
  %i.ty = sub nsw i32 %.0.i271.us, %i.sr          ; 2 uses
  %i.tz = sub nsw i32 0, %i.tx
  %i.ua = icmp slt i32 %i.ty, %i.tz
  %i.ub = icmp sgt i32 %i.ty, %i.tx
  %or.cond.i.us = or i1 %i.ua, %i.ub
  br i1 %or.cond.i.us, label %bb.cb, label %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit._crit_edge.us

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.by, %.preheader.us
  %i.uc = load ptr, ptr %i.rv, align 8, !tbaa !152 ; 4 uses
  %i.ud = load ptr, ptr %i.rw, align 8, !tbaa !275
  %.not.i274.us = icmp eq ptr %i.uc, %i.ud
  br i1 %.not.i274.us, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store i32 %.2126403.us, ptr %i.uc, align 4, !tbaa !110
  %i.ue = getelementptr inbounds nuw i8, ptr %i.uc, i64 4
  store ptr %i.ue, ptr %i.rv, align 8, !tbaa !152
  br label %.critedge.us

bb.cd:                                            ; preds = %bb.cb
  %i.uf = load ptr, ptr %i.ru, align 8, !tbaa !120 ; 4 uses
  %i.ug = ptrtoint ptr %i.uc to i64
  %i.uh = ptrtoint ptr %i.uf to i64
  %i.ui = sub i64 %i.ug, %i.uh                    ; 6 uses
  %i.uj = icmp eq i64 %i.ui, 9223372036854775804
  br i1 %i.uj, label %.split412.us, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.us

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.us: ; preds = %bb.cd
  %i.uk = ashr exact i64 %i.ui, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.uk, i64 1)
  %i.ul = add nsw i64 %.sroa.speculated.i.i.i.us, %i.uk ; 2 uses
  %i.um = icmp ult i64 %i.ul, %i.uk
  %i.un = call i64 @llvm.umin.i64(i64 %i.ul, i64 2305843009213693951)
  %i.uo = select i1 %i.um, i64 2305843009213693951, i64 %i.un ; 3 uses
  %.not.i.i.i275.us = icmp ne i64 %i.uo, 0
  call void @llvm.assume(i1 %.not.i.i.i275.us)
  %i.up = shl nuw nsw i64 %i.uo, 2
  %i.uq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.up) #28
          to label %.noexc277.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc277.us:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.us
  %i.ur = getelementptr inbounds i8, ptr %i.uq, i64 %i.ui ; 2 uses
  store i32 %.2126403.us, ptr %i.ur, align 4, !tbaa !110
  %i.us = icmp sgt i64 %i.ui, 0
  br i1 %i.us, label %bb.ce, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.us

bb.ce:                                            ; preds = %.noexc277.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.uq, ptr align 4 %i.uf, i64 %i.ui, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.us

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.us: ; preds = %bb.ce, %.noexc277.us
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ur, i64 4
  %.not.i17.i.i.us = icmp eq ptr %i.uf, null
  br i1 %.not.i17.i.i.us, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.us, label %bb.cf

bb.cf:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.us
  call void @_ZdlPvm(ptr noundef nonnull %i.uf, i64 noundef %i.ui) #31
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.us

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.us: ; preds = %bb.cf, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.us
  store ptr %i.uq, ptr %i.ru, align 8, !tbaa !120
  store ptr %i.ut, ptr %i.rv, align 8, !tbaa !152
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %i.uo
  store ptr %i.uu, ptr %i.rw, align 8, !tbaa !275
  br label %.critedge.us

.critedge.us:                                     ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.us, %bb.cc
  %.old = add nuw i32 %.0120405.us, 1             ; 2 uses
  %.old419 = icmp ult i32 %.old, %i.oy
  br i1 %.old419, label %.critedge.us..preheader.us.backedge_crit_edge, label %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit._crit_edge.us

.critedge.us..preheader.us.backedge_crit_edge:    ; preds = %.critedge.us
  %.pre474.pre = load ptr, ptr %i.ra, align 8, !tbaa !126
  br label %.preheader.us, !llvm.loop !554

_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit._crit_edge.us: ; preds = %bb.bv, %_ZNK14llama_kv_cells11seq_pos_maxEi.exit272.us, %bb.by, %bb.bz, %bb.ca, %.critedge.us
  %i.uv = load ptr, ptr %i.rx, align 8, !tbaa !152 ; 2 uses
  %i.uw = load ptr, ptr %i.qe, align 8, !tbaa !120 ; 3 uses
  %i.ux = ptrtoint ptr %i.uv to i64
  %i.uy = ptrtoint ptr %i.uw to i64
  %i.uz = sub i64 %i.ux, %i.uy
  %i.va = ashr exact i64 %i.uz, 2
  %i.vb = icmp eq i64 %i.va, %i.ot
  br i1 %i.vb, label %.split414.us, label %bb.cg

bb.cg:                                            ; preds = %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit._crit_edge.us
  %.not.i.i.us = icmp ne ptr %i.uv, %i.uw
  %or.cond.not.us = and i1 %3, %.not.i.i.us
  br i1 %or.cond.not.us, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.us, label %_ZNSt6vectorIjSaIjEE5clearEv.exit.us

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.us:     ; preds = %bb.cg
  store ptr %i.uw, ptr %i.rx, align 8, !tbaa !152
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit.us

_ZNSt6vectorIjSaIjEE5clearEv.exit.us:             ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.us, %bb.cg
  %i.vc = load ptr, ptr %i.rb, align 8, !tbaa !125 ; 2 uses
  %i.vd = load ptr, ptr %i.ra, align 8, !tbaa !126 ; 2 uses
  %i.ve = ptrtoint ptr %i.vc to i64
  %i.vf = ptrtoint ptr %i.vd to i64
  %i.vg = sub i64 %i.ve, %i.vf
  %i.vh = lshr exact i64 %i.vg, 2
  %i.vi = trunc i64 %i.vh to i32
  %.not.us = icmp ult i32 %i.so, %i.vi
  br i1 %.not.us, label %.split.us.outer, label %.critedge179thread-pre-split, !llvm.loop !555

bb.ch:                                            ; preds = %.split.us
  %i.vj = add i32 %.0121.us, %i.sl
  br label %.split.us, !llvm.loop !556

.split:                                           ; preds = %bb.bu
  %i.vk = load ptr, ptr %i.ob, align 8            ; 2 uses
  %i.vl = getelementptr inbounds nuw [24 x i8], ptr %i.vk, i64 %indvars.iv465 ; 2 uses
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 8 ; 2 uses
  %i.vn = ptrtoint ptr %i.rc to i64
  %i.vo = ptrtoint ptr %i.rd to i64
  %i.vp = sub i64 %i.vn, %i.vo
  %i.vq = lshr exact i64 %i.vp, 2
  %i.vr = trunc i64 %i.vq to i32                  ; 2 uses
  br label %.backedge.outer

.backedge.outer:                                  ; preds = %bb.ci, %.split
  %.1125.ph = phi i32 [ 0, %bb.ci ], [ %spec.select, %.split ] ; 2 uses
  %.0121.ph = phi i32 [ %i.wb, %bb.ci ], [ 0, %.split ] ; 2 uses
  %i.vs = icmp ugt i32 %.1125.ph, %i.vr
  %.not = icmp ult i32 %.0121.ph, %i.ri
  br label %.backedge

.backedge:                                        ; preds = %.backedge.outer, %_ZNSt6vectorIjSaIjEE5clearEv.exit
  br i1 %i.vs, label %bb.ci, label %.preheader

.preheader:                                       ; preds = %.backedge
  %i.vt = load ptr, ptr %i.vm, align 8, !tbaa !152 ; 2 uses
  %i.vu = load ptr, ptr %i.vl, align 8, !tbaa !120 ; 3 uses
  %i.vv = ptrtoint ptr %i.vt to i64
  %i.vw = ptrtoint ptr %i.vu to i64
  %i.vx = sub i64 %i.vv, %i.vw
  %i.vy = ashr exact i64 %i.vx, 2
  %i.vz = icmp eq i64 %i.vy, %i.ot
  br i1 %i.vz, label %.split414.us, label %bb.cj

bb.ci:                                            ; preds = %.backedge
  %i.wa = sub i32 %.0121.ph, %.1125.ph
  %i.wb = add i32 %i.wa, %i.vr
  br label %.backedge.outer, !llvm.loop !555

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.us, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %.invoke569, %bb.bt, %_ZNKSt6vectorIS_IjSaIjEESaIS1_EE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, %.split412.us
  %lpad.loopexit.split-lp616 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14llama_kv_cache9slot_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.cn

.split412.us:                                     ; preds = %bb.cd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #29
          to label %.noexc276 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc276:                                        ; preds = %.split412.us
  unreachable

bb.cj:                                            ; preds = %.preheader
  %.not.i.i = icmp ne ptr %i.vt, %i.vu
  %or.cond.not = and i1 %3, %.not.i.i
  br i1 %or.cond.not, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.cj
  store ptr %i.vu, ptr %i.vm, align 8, !tbaa !152
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i, %bb.cj
  br i1 %.not, label %.backedge, label %.critedge179thread-pre-split, !llvm.loop !555

.split414.us:                                     ; preds = %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit._crit_edge.us, %.preheader
  %i.wc = phi ptr [ %i.vk, %.preheader ], [ %i.pb, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit._crit_edge.us ]
  %indvars.iv.next466 = add nuw nsw i64 %indvars.iv465, 1 ; 2 uses
  %exitcond468.not = icmp eq i64 %indvars.iv.next466, %.0128
  br i1 %exitcond468.not, label %.critedge180, label %bb.bn, !llvm.loop !557

.critedge180:                                     ; preds = %.split414.us
  %i.wd = load i64, ptr %9, align 8
  store i64 %i.wd, ptr %0, align 8
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.of, ptr %i.we, align 8, !tbaa !126
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.oj, ptr %i.wf, align 8, !tbaa !125
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.oj, ptr %i.wg, align 8, !tbaa !337
  %i.wh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.wi = load ptr, ptr %i.ob, align 8, !tbaa !343
  store ptr %i.wi, ptr %i.wh, align 8, !tbaa !343
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.oo, ptr %i.wj, align 8, !tbaa !353
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.oo, ptr %i.wk, align 8, !tbaa !339
  br label %.critedge179

.critedge179thread-pre-split:                     ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.us, %_ZNSt6vectorIjSaIjEE5clearEv.exit, %bb.bt
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  %.pr544 = load ptr, ptr %i.ob, align 8, !tbaa !343
  %i.wl = ptrtoint ptr %i.oj to i64
  br label %.critedge179

.critedge179:                                     ; preds = %.critedge179thread-pre-split, %.critedge180
  %i.wm = phi ptr [ %.pr544, %.critedge179thread-pre-split ], [ null, %.critedge180 ] ; 5 uses
  %i.wn = phi i64 [ %i.wl, %.critedge179thread-pre-split ], [ 0, %.critedge180 ]
  %i.wo = phi ptr [ %i.of, %.critedge179thread-pre-split ], [ null, %.critedge180 ] ; 3 uses
  %i.wp = phi ptr [ %i.oo, %.critedge179thread-pre-split ], [ null, %.critedge180 ] ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.wm, %i.wp
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge179, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ww, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i ], [ %i.wm, %.critedge179 ] ; 3 uses
  %i.wq = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.wq, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph.i.i.i.i
  %i.wr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !275
  %i.wt = ptrtoint ptr %i.ws to i64
  %i.wu = ptrtoint ptr %i.wq to i64
  %i.wv = sub i64 %i.wt, %i.wu
  call void @_ZdlPvm(ptr noundef nonnull %i.wq, i64 noundef %i.wv) #31
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i: ; preds = %bb.ck, %.lr.ph.i.i.i.i
  %i.ww = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ww, %i.wp
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !26

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i, %.critedge179
  %.not.i.i1.i.i = icmp eq ptr %i.wm, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit.i, label %bb.cl

bb.cl:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.wx = ptrtoint ptr %i.wp to i64
  %i.wy = ptrtoint ptr %i.wm to i64
  %i.wz = sub i64 %i.wx, %i.wy
  call void @_ZdlPvm(ptr noundef nonnull %i.wm, i64 noundef %i.wz) #31
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit.i

_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit.i:       ; preds = %bb.cl, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i
  %.not.i.i.i1.i = icmp eq ptr %i.wo, null
  br i1 %.not.i.i.i1.i, label %_ZN14llama_kv_cache9slot_infoD2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit.i
  %i.xa = ptrtoint ptr %i.wo to i64
  %i.xb = sub i64 %i.wn, %i.xa
  call void @_ZdlPvm(ptr noundef nonnull %i.wo, i64 noundef %i.xb) #31
  br label %_ZN14llama_kv_cache9slot_infoD2Ev.exit

_ZN14llama_kv_cache9slot_infoD2Ev.exit:           ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit.i, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  ret void

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn172.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp616, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.pn172.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205 ], [ %.pn166.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ]
  resume { ptr, i32 } %.pn172.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN14llama_kv_cache9slot_infoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  store i64 %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !125  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !126  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

end_hunk_0
