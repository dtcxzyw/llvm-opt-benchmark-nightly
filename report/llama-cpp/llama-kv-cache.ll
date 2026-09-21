Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/llama-kv-cache?download=true
inline.NumInlined: 4945
inline.NumDeleted: 2050
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 81
begin_hunk_0_@_ZNK14llama_kv_cache9find_slotERK12llama_ubatchb:bb.a
  %i.ly = load ptr, ptr %6, align 8, !tbaa !561
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 %i.lp
  store i8 0, ptr %i.lz, align 1, !tbaa !109
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit238
  %i.ma = load ptr, ptr %7, align 8, !tbaa !561   ; 2 uses
  %i.mb = icmp eq ptr %i.ma, %i.q
  br i1 %i.mb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245: ; preds = %bb.bj
  %i.mc = load i64, ptr %i.q, align 8, !tbaa !109
  %i.md = add i64 %i.mc, 1
  call void @_ZdlPvm(ptr noundef %i.ma, i64 noundef %i.md) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit247: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i245
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %indvars.iv.next457 = add nuw nsw i64 %indvars.iv456, 1 ; 2 uses
  %i.me = load ptr, ptr %i.bk, align 8, !tbaa !125
  %i.mf = load ptr, ptr %i.bj, align 8, !tbaa !126
  %i.mg = ptrtoint ptr %i.me to i64
  %i.mh = ptrtoint ptr %i.mf to i64
  %i.mi = sub i64 %i.mg, %i.mh
  %i.mj = lshr exact i64 %i.mi, 2
  %i.mk = and i64 %i.mj, 4294967295
  %i.ml = icmp samesign ult i64 %indvars.iv.next457, %i.mk
  br i1 %i.ml, label %.lr.ph402, label %._crit_edge403.loopexit, !llvm.loop !551

bb.bk:                                            ; preds = %.loopexit308, %.loopexit.split-lp309, %bb.bf, %bb.am
  %.pn166.pn = phi { ptr, i32 } [ %i.hs, %bb.am ], [ %i.le, %bb.bf ], [ %lpad.loopexit310, %.loopexit308 ], [ %lpad.loopexit.split-lp311, %.loopexit.split-lp309 ]
  %i.mm = load ptr, ptr %7, align 8, !tbaa !561   ; 2 uses
  %i.mn = icmp eq ptr %i.mm, %i.q
  br i1 %i.mn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248: ; preds = %bb.bk
  %i.mo = load i64, ptr %i.q, align 8, !tbaa !109
  %i.mp = add i64 %i.mo, 1
  call void @_ZdlPvm(ptr noundef %i.mm, i64 noundef %i.mp) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.bn

bb.bl:                                            ; preds = %._crit_edge403
  %i.mq = load ptr, ptr %6, align 8, !tbaa !561   ; 2 uses
  %i.mr = icmp eq ptr %i.mq, %i.o
  br i1 %i.mr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %bb.bl
  %i.ms = load i64, ptr %i.o, align 8, !tbaa !109
  %i.mt = add i64 %i.ms, 1
  call void @_ZdlPvm(ptr noundef %i.mq, i64 noundef %i.mt) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.thread293

bb.bm:                                            ; preds = %._crit_edge403
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250
  %.pn166.pn.pn = phi { ptr, i32 } [ %.pn166.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250 ], [ %i.mu, %bb.bm ]
  %i.mv = load ptr, ptr %6, align 8, !tbaa !561   ; 2 uses
  %i.mw = icmp eq ptr %i.mv, %i.o
  br i1 %i.mw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254: ; preds = %bb.bn
  %i.mx = load i64, ptr %i.o, align 8, !tbaa !109
  %i.my = add i64 %i.mx, 1
  call void @_ZdlPvm(ptr noundef %i.mv, i64 noundef %i.my) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %bb.cw

.thread293:                                       ; preds = %bb.d, %bb.e, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, %bb.aj
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ae, i64 152
  br label %bb.bp

bb.bo:                                            ; preds = %_ZNK14llama_kv_cells11seq_pos_minEi.exit.thread
  %indvars.iv.next464 = add nuw nsw i64 %indvars.iv463, 1 ; 2 uses
  %i.na = load i32, ptr %i.d, align 8, !tbaa !558
  %i.nb = zext i32 %i.na to i64
  %i.nc = icmp samesign ult i64 %indvars.iv.next464, %i.nb
  br i1 %i.nc, label %bb.b, label %.loopexit324, !llvm.loop !552

bb.bp:                                            ; preds = %.thread293, %_ZNK14llama_kv_cells11seq_pos_minEi.exit.thread
  %indvars.iv459 = phi i64 [ 0, %.thread293 ], [ %indvars.iv.next460, %_ZNK14llama_kv_cells11seq_pos_minEi.exit.thread ] ; 3 uses
  %i.nd = getelementptr inbounds nuw [48 x i8], ptr %i.mz, i64 %indvars.iv459 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 40
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !151
  %i.ng = icmp eq i64 %i.nf, 0
  br i1 %i.ng, label %_ZNK14llama_kv_cells11seq_pos_minEi.exit.thread, label %_ZNK14llama_kv_cells11seq_pos_minEi.exit

_ZNK14llama_kv_cells11seq_pos_minEi.exit:         ; preds = %bb.bp
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !149
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 32
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !303 ; 2 uses
  %i.nl = icmp slt i32 %i.nk, 0
  br i1 %i.nl, label %_ZNK14llama_kv_cells11seq_pos_minEi.exit.thread, label %_ZNK14llama_kv_cells11seq_pos_maxEi.exit

_ZNK14llama_kv_cells11seq_pos_maxEi.exit:         ; preds = %_ZNK14llama_kv_cells11seq_pos_minEi.exit
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nn = call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.nm) #32
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 32
  %i.np = load i32, ptr %i.no, align 4, !tbaa !303
  %i.nq = trunc nuw nsw i64 %indvars.iv459 to i32 ; 2 uses
  call void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 1, ptr noundef nonnull @.str.44, ptr noundef nonnull @__func__._ZNK14llama_kv_cache9find_slotERK12llama_ubatchb, i32 noundef %i.aa, i32 noundef %i.nq, i32 noundef %i.nk, i32 noundef %i.nq, i32 noundef %i.np)
  br label %_ZNK14llama_kv_cells11seq_pos_minEi.exit.thread

_ZNK14llama_kv_cells11seq_pos_minEi.exit.thread:  ; preds = %bb.bp, %_ZNK14llama_kv_cells11seq_pos_minEi.exit, %_ZNK14llama_kv_cells11seq_pos_maxEi.exit
  %indvars.iv.next460 = add nuw nsw i64 %indvars.iv459, 1 ; 2 uses
  %exitcond462.not = icmp eq i64 %indvars.iv.next460, 256
  br i1 %exitcond462.not, label %bb.bo, label %bb.bp, !llvm.loop !553

.loopexit324:                                     ; preds = %bb.bo, %.preheader323, %bb.a
  %i.nr = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !312 ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !98
  %i.nv = icmp ugt i32 %i.nu, 1
  br i1 %i.nv, label %bb.bq, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.bq:                                            ; preds = %.loopexit324
  %i.nw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !558 ; 3 uses
  %i.ny = urem i32 %i.ns, %i.nx
  %i.nz = udiv i32 %i.ns, %i.nx
  %i.oa = icmp eq i32 %i.ny, 0
  br i1 %i.oa, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef 970, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.45) #29
  unreachable

bb.bs:                                            ; preds = %bb.bq
  %i.ob = zext i32 %i.nx to i64
  br label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.bs, %.loopexit324
  %.0129 = phi i32 [ %i.nz, %bb.bs ], [ %i.ns, %.loopexit324 ]
  %.0128 = phi i64 [ %i.ob, %bb.bs ], [ 1, %.loopexit324 ] ; 6 uses
  %.0129.fr = freeze i32 %.0129                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  store i32 256, ptr %9, align 8, !tbaa !361
  %i.oc = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.oe = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 4 uses
  %i.of = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.og = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.oh = shl nuw nsw i64 %.0128, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %i.oc, i8 0, i64 52, i1 false)
  %i.oi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oh) #28
          to label %.noexc287 unwind label %bb.bt ; 7 uses

.noexc287:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  store i32 0, ptr %i.oi, align 4, !tbaa !110
  %i.oj = add nsw i64 %.0128, -1                  ; 2 uses
  %i.ok = icmp eq i64 %i.oj, 0
  br i1 %i.ok, label %_ZNKSt6vectorIS_IjSaIjEESaIS1_EE12_M_check_lenEmPKc.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc287
  %i.ol = getelementptr i8, ptr %i.oi, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.oj, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.ol, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !110
  br label %_ZNKSt6vectorIS_IjSaIjEESaIS1_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIS_IjSaIjEESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc287
  store ptr %i.oi, ptr %i.od, align 8, !tbaa !126
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %.0128 ; 5 uses
  store ptr %i.om, ptr %i.of, align 8, !tbaa !125
  store ptr %i.om, ptr %i.og, align 8, !tbaa !337
  %i.on = mul nuw nsw i64 %.0128, 24              ; 2 uses
  %i.oo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.on) #28
          to label %_ZN14llama_kv_cache9slot_info6resizeEm.exit unwind label %bb.bt ; 4 uses

_ZN14llama_kv_cache9slot_info6resizeEm.exit:      ; preds = %_ZNKSt6vectorIS_IjSaIjEESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.op = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.oq = getelementptr inbounds nuw i8, ptr %9, i64 40
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.oo, i8 0, i64 %i.on, i1 false)
  store ptr %i.oo, ptr %i.oe, align 8, !tbaa !343
  %i.or = getelementptr inbounds nuw [24 x i8], ptr %i.oo, i64 %.0128 ; 5 uses
  store ptr %i.or, ptr %i.oq, align 8, !tbaa !353
  store ptr %i.or, ptr %i.op, align 8, !tbaa !339
  %i.os = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ot = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ou = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ov = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.ow = zext i32 %.0129.fr to i64               ; 5 uses
  %i.ox = shl nuw nsw i64 %i.ow, 2
  %i.oy = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.oz = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.pa = shl i32 %.0129.fr, 1
  %i.pb = select i1 %3, i32 %.0129.fr, i32 1      ; 5 uses
  %.not428 = icmp eq i32 %i.pb, 0
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 116
  br label %bb.bu

bb.bt:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorIS_IjSaIjEESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.pe = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.bu:                                            ; preds = %_ZN14llama_kv_cache9slot_info6resizeEm.exit, %.split418.us
  %i.pf = phi ptr [ %i.oo, %_ZN14llama_kv_cache9slot_info6resizeEm.exit ], [ %i.wh, %.split418.us ] ; 3 uses
  %i.pg = phi i32 [ 0, %_ZN14llama_kv_cache9slot_info6resizeEm.exit ], [ %i.qg, %.split418.us ]
  %i.ph = phi i32 [ 256, %_ZN14llama_kv_cache9slot_info6resizeEm.exit ], [ %i.qf, %.split418.us ]
  %indvars.iv466 = phi i64 [ 0, %_ZN14llama_kv_cache9slot_info6resizeEm.exit ], [ %indvars.iv.next467, %.split418.us ] ; 7 uses
  %i.pi = load ptr, ptr %i.os, align 8, !tbaa !356
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %indvars.iv466
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !110 ; 2 uses
  %i.pl = load i32, ptr %i.nt, align 8, !tbaa !98
  %i.pm = icmp ugt i32 %i.pl, 1
  br i1 %i.pm, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.pn = load ptr, ptr %i.ot, align 8, !tbaa !362
  %i.po = trunc nuw i64 %indvars.iv466 to i32
  %i.pp = mul i32 %.0129.fr, %i.po
  %i.pq = zext i32 %i.pp to i64                   ; 2 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %i.pq
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !110
  %i.pt = icmp eq i32 %i.ps, 1
  br i1 %i.pt, label %bb.bw, label %.invoke570

.invoke570:                                       ; preds = %bb.bv, %bb.bw
  %i.pu = phi i32 [ 990, %bb.bw ], [ 989, %bb.bv ]
  %i.pv = phi ptr [ @.str.47, %bb.bw ], [ @.str.46, %bb.bv ]
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.1, i32 noundef %i.pu, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.pv) #29
          to label %.cont571 unwind label %.loopexit.split-lp304

.cont571:                                         ; preds = %.invoke570
  unreachable

.loopexit303:                                     ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %lpad.loopexit305 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

.loopexit.split-lp304:                            ; preds = %.invoke570
  %lpad.loopexit.split-lp306 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.bw:                                            ; preds = %bb.bv
  %i.pw = load ptr, ptr %i.ou, align 8, !tbaa !363
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.pw, i64 %i.pq
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !336
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !110
  %i.qa = icmp eq i32 %i.pz, %i.pk
  br i1 %i.qa, label %bb.bx, label %.invoke570

bb.bx:                                            ; preds = %bb.bw, %bb.bu
  %i.qb = sext i32 %i.pk to i64                   ; 2 uses
  %i.qc = load ptr, ptr %i.ov, align 8, !tbaa !120
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %i.qb
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !110 ; 4 uses
  %i.qf = call i32 @llvm.umin.i32(i32 %i.qe, i32 %i.ph) ; 2 uses
  store i32 %i.qf, ptr %9, align 8, !tbaa !361
  %i.qg = call i32 @llvm.umax.i32(i32 %i.pg, i32 %i.qe) ; 2 uses
  store i32 %i.qg, ptr %i.oc, align 4, !tbaa !364
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.oi, i64 %indvars.iv466
  store i32 %i.qe, ptr %i.qh, align 4, !tbaa !110
  %i.qi = getelementptr inbounds nuw [24 x i8], ptr %i.pf, i64 %indvars.iv466 ; 6 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 16 ; 2 uses
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !275
  %i.ql = load ptr, ptr %i.qi, align 8, !tbaa !120 ; 4 uses
  %i.qm = ptrtoint ptr %i.qk to i64
  %i.qn = ptrtoint ptr %i.ql to i64               ; 2 uses
  %i.qo = sub i64 %i.qm, %i.qn                    ; 2 uses
  %i.qp = ashr exact i64 %i.qo, 2
  %i.qq = icmp ult i64 %i.qp, %i.ow
  br i1 %i.qq, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.bx
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qi, i64 8 ; 2 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !152
  %i.qt = ptrtoint ptr %i.qs to i64
  %i.qu = sub i64 %i.qt, %i.qn                    ; 3 uses
  %i.qv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ox) #28
          to label %.noexc263 unwind label %.loopexit303 ; 4 uses

.noexc263:                                        ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.qw = icmp sgt i64 %i.qu, 0
  br i1 %i.qw, label %bb.by, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

bb.by:                                            ; preds = %.noexc263
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.qv, ptr align 4 %i.ql, i64 %i.qu, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i: ; preds = %bb.by, %.noexc263
  %.not.i8.i = icmp eq ptr %i.ql, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ql, i64 noundef %i.qo) #31
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i: ; preds = %bb.bz, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i
  store ptr %i.qv, ptr %i.qi, align 8, !tbaa !120
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qv, i64 %i.qu
  store ptr %i.qx, ptr %i.qr, align 8, !tbaa !152
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %i.ow
  store ptr %i.qy, ptr %i.qj, align 8, !tbaa !275
  %.pre473 = load ptr, ptr %i.ov, align 8, !tbaa !120
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre473, i64 %i.qb
  %.pre474 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !110
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i, %bb.bx
  %i.qz = phi i32 [ %.pre474, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i ], [ %i.qe, %bb.bx ]
  %i.ra = load ptr, ptr %i.oy, align 8, !tbaa !117, !nonnull !118, !align !119
  %i.rb = zext i32 %i.qz to i64                   ; 2 uses
  %i.rc = load ptr, ptr %i.ra, align 8, !tbaa !123
  %i.rd = getelementptr inbounds nuw [12440 x i8], ptr %i.rc, i64 %i.rb ; 5 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 56 ; 3 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rd, i64 64 ; 2 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !125 ; 3 uses
  %i.rh = load ptr, ptr %i.re, align 8, !tbaa !126 ; 3 uses
  %i.ri = ptrtoint ptr %i.rg to i64
  %i.rj = ptrtoint ptr %i.rh to i64
  %i.rk = sub i64 %i.ri, %i.rj
  %i.rl = lshr exact i64 %i.rk, 2
  %i.rm = trunc i64 %i.rl to i32                  ; 3 uses
  %i.rn = icmp ugt i32 %.0129.fr, %i.rm
  br i1 %i.rn, label %bb.cb, label %bb.cc

bb.ca:                                            ; preds = %bb.cb
  %i.ro = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

bb.cb:                                            ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  invoke void (i32, ptr, ...) @_Z18llama_log_internal14ggml_log_levelPKcz(i32 noundef 4, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__._ZNK14llama_kv_cache9find_slotERK12llama_ubatchb, i32 noundef %.0129.fr, i32 noundef %i.rm)
          to label %.critedge179thread-pre-split unwind label %bb.ca

bb.cc:                                            ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit
  %i.rp = load ptr, ptr %i.oz, align 8, !tbaa !120
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %i.rb
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !110 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rd, i64 48
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !151
  %i.ru = trunc i64 %i.rt to i32
  %i.rv = add i32 %i.pa, %i.ru
  %i.rw = icmp ugt i32 %i.rr, %i.rv
  %spec.select = select i1 %i.rw, i32 0, i32 %i.rr ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rd, i64 128
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rd, i64 152
  br i1 %.not428, label %.split, label %.split.us.preheader

.split.us.preheader:                              ; preds = %bb.cc
  %i.rz = getelementptr inbounds nuw [24 x i8], ptr %i.pf, i64 %indvars.iv466 ; 4 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8 ; 3 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rz, i64 16 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.qi, i64 8 ; 2 uses
  br label %.split.us.outer

.split.us.outer:                                  ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.us, %.split.us.preheader
  %.ph = phi ptr [ %i.vi, %_ZNSt6vectorIjSaIjEE5clearEv.exit.us ], [ %i.rh, %.split.us.preheader ] ; 3 uses
  %.ph599 = phi ptr [ %i.vh, %_ZNSt6vectorIjSaIjEE5clearEv.exit.us ], [ %i.rg, %.split.us.preheader ] ; 2 uses
  %.1125.us.ph = phi i32 [ %i.ss, %_ZNSt6vectorIjSaIjEE5clearEv.exit.us ], [ %spec.select, %.split.us.preheader ] ; 3 uses
  %.0121.us.ph = phi i32 [ %i.st, %_ZNSt6vectorIjSaIjEE5clearEv.exit.us ], [ 0, %.split.us.preheader ] ; 2 uses
  %i.sd = add i32 %.1125.us.ph, %i.pb
  %i.se = ptrtoint ptr %.ph599 to i64
  %i.sf = ptrtoint ptr %.ph to i64
  %i.sg = sub i64 %i.se, %i.sf
  %i.sh = lshr exact i64 %i.sg, 2
  %i.si = trunc i64 %i.sh to i32                  ; 2 uses
  %i.sj = icmp ugt i32 %i.sd, %i.si
  br i1 %i.sj, label %.split.us.peel.next, label %.preheader.us.preheader

.split.us.peel.next:                              ; preds = %.split.us.outer
  %i.sk = sub i32 %.0121.us.ph, %.1125.us.ph
  %i.sl = add i32 %i.sk, %i.si
  %i.sm = ptrtoint ptr %.ph599 to i64
  %i.sn = ptrtoint ptr %.ph to i64
  %i.so = sub i64 %i.sm, %i.sn
  %i.sp = lshr exact i64 %i.so, 2
  %i.sq = trunc i64 %i.sp to i32                  ; 2 uses
  %i.sr = icmp ugt i32 %i.pb, %i.sq
  br label %.split.us

.split.us:                                        ; preds = %.split.us.peel.next, %bb.cp
  %.0121.us = phi i32 [ %i.vo, %bb.cp ], [ %i.sl, %.split.us.peel.next ] ; 2 uses
  br i1 %i.sr, label %bb.cp, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.split.us, %.split.us.outer
  %.1125.us.lcssa = phi i32 [ %.1125.us.ph, %.split.us.outer ], [ 0, %.split.us ]
  %.0121.us.lcssa = phi i32 [ %.0121.us.ph, %.split.us.outer ], [ %.0121.us, %.split.us ]
  br label %.preheader.us.outer

.preheader.us.outer:                              ; preds = %.preheader.us.preheader, %.critedge.us..preheader.us.backedge_crit_edge
  %.pre475476.ph = phi ptr [ %.ph, %.preheader.us.preheader ], [ %.pre475.pre, %.critedge.us..preheader.us.backedge_crit_edge ]
  %.0120409.us.ph = phi i32 [ 0, %.preheader.us.preheader ], [ %.old, %.critedge.us..preheader.us.backedge_crit_edge ]
  %.1122408.us.ph = phi i32 [ %.0121.us.lcssa, %.preheader.us.preheader ], [ %i.st, %.critedge.us..preheader.us.backedge_crit_edge ]
  %.2126407.us.ph = phi i32 [ %.1125.us.lcssa, %.preheader.us.preheader ], [ %i.ss, %.critedge.us..preheader.us.backedge_crit_edge ]
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.outer, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us
  %.0120409.us = phi i32 [ %10, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us ], [ %.0120409.us.ph, %.preheader.us.outer ] ; 2 uses
  %.1122408.us = phi i32 [ %i.st, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us ], [ %.1122408.us.ph, %.preheader.us.outer ]
  %.2126407.us = phi i32 [ %i.ss, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us ], [ %.2126407.us.ph, %.preheader.us.outer ] ; 4 uses
  %i.ss = add i32 %.2126407.us, 1                 ; 3 uses
  %i.st = add i32 %.1122408.us, 1                 ; 4 uses
  %i.su = zext i32 %.2126407.us to i64            ; 2 uses
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %.pre475476.ph, i64 %i.su
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !110 ; 4 uses
  %i.sx = icmp eq i32 %i.sw, -1
  br i1 %i.sx, label %bb.cj, label %bb.cd

bb.cd:                                            ; preds = %.preheader.us
  %i.sy = load ptr, ptr %i.rx, align 8, !tbaa !283
  %i.sz = getelementptr inbounds nuw [32 x i8], ptr %i.sy, i64 %i.su ; 2 uses
  %i.ta = load <4 x i64>, ptr %i.sz, align 8, !tbaa !180
  %i.tb = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.ta)
  %i.tc = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.tb)
  %i.td = icmp eq i64 %i.tc, 1
  br i1 %i.td, label %_ZNKSt6bitsetILm256EE4testEm.exit.i264.us, label %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us

_ZNKSt6bitsetILm256EE4testEm.exit.i264.us:        ; preds = %bb.cd, %bb.ce
  %indvars.iv.i265.us = phi i64 [ %indvars.iv.next.i268.us.1, %bb.ce ], [ 0, %bb.cd ] ; 5 uses
  %i.te = lshr i64 %indvars.iv.i265.us, 6
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.sz, i64 %i.te
  %i.tg = load i64, ptr %i.tf, align 8, !tbaa !180 ; 2 uses
  %i.th = and i64 %indvars.iv.i265.us, 62
  %i.ti = shl nuw nsw i64 1, %i.th
  %i.tj = and i64 %i.ti, %i.tg
  %.not.i266.us = icmp eq i64 %i.tj, 0
  br i1 %.not.i266.us, label %_ZNKSt6bitsetILm256EE4testEm.exit.i264.us.1, label %_ZNK14llama_kv_cells7seq_getEj.exit270.us

_ZNKSt6bitsetILm256EE4testEm.exit.i264.us.1:      ; preds = %_ZNKSt6bitsetILm256EE4testEm.exit.i264.us
  %indvars.iv.next.i268.us = or disjoint i64 %indvars.iv.i265.us, 1 ; 2 uses
  %i.tk = and i64 %indvars.iv.next.i268.us, 63
  %i.tl = shl nuw i64 1, %i.tk
  %i.tm = and i64 %i.tl, %i.tg
  %.not.i266.us.1 = icmp eq i64 %i.tm, 0
  br i1 %.not.i266.us.1, label %bb.ce, label %_ZNK14llama_kv_cells7seq_getEj.exit270.us

bb.ce:                                            ; preds = %_ZNKSt6bitsetILm256EE4testEm.exit.i264.us.1
  %indvars.iv.next.i268.us.1 = add nuw nsw i64 %indvars.iv.i265.us, 2 ; 2 uses
  %exitcond.not.i269.us.1 = icmp eq i64 %indvars.iv.next.i268.us.1, 256
  br i1 %exitcond.not.i269.us.1, label %_ZNK14llama_kv_cells7seq_getEj.exit270.us, label %_ZNKSt6bitsetILm256EE4testEm.exit.i264.us, !llvm.loop !29

_ZNK14llama_kv_cells7seq_getEj.exit270.us:        ; preds = %bb.ce, %_ZNKSt6bitsetILm256EE4testEm.exit.i264.us.1, %_ZNKSt6bitsetILm256EE4testEm.exit.i264.us
  %i.tn = phi i64 [ -1, %bb.ce ], [ %indvars.iv.i265.us, %_ZNKSt6bitsetILm256EE4testEm.exit.i264.us ], [ %indvars.iv.next.i268.us, %_ZNKSt6bitsetILm256EE4testEm.exit.i264.us.1 ]
  %i.to = load i32, ptr %i.pc, align 8, !tbaa !99 ; 3 uses
  %i.tp = load i32, ptr %i.pd, align 4, !tbaa !106
  %i.tq = getelementptr inbounds [48 x i8], ptr %i.ry, i64 %i.tn ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 40
  %i.ts = load i64, ptr %i.tr, align 8, !tbaa !151
  %i.tt = icmp eq i64 %i.ts, 0
  br i1 %i.tt, label %_ZNK14llama_kv_cells11seq_pos_maxEi.exit272.us, label %bb.cf

bb.cf:                                            ; preds = %_ZNK14llama_kv_cells7seq_getEj.exit270.us
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tq, i64 8
  %i.tv = call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %i.tu) #32
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 32
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !303
  %i.ty = add nsw i32 %i.tx, 1
  br label %_ZNK14llama_kv_cells11seq_pos_maxEi.exit272.us

_ZNK14llama_kv_cells11seq_pos_maxEi.exit272.us:   ; preds = %bb.cf, %_ZNK14llama_kv_cells7seq_getEj.exit270.us
  %.0.i271.us = phi i32 [ %i.ty, %bb.cf ], [ 0, %_ZNK14llama_kv_cells7seq_getEj.exit270.us ] ; 4 uses
  switch i32 %i.tp, label %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us [
    i32 3, label %bb.ci
    i32 1, label %bb.ch
    i32 2, label %bb.cg
  ]

bb.cg:                                            ; preds = %_ZNK14llama_kv_cells11seq_pos_maxEi.exit272.us
  %i.tz = urem i32 %.0.i271.us, %i.to
  %i.ua = sub nuw i32 %.0.i271.us, %i.tz
  %.not21.i.us = icmp slt i32 %i.sw, %i.ua
  br i1 %.not21.i.us, label %bb.cj, label %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us

bb.ch:                                            ; preds = %_ZNK14llama_kv_cells11seq_pos_maxEi.exit272.us
  %i.ub = sub nsw i32 %.0.i271.us, %i.sw
  %.not.i273.us = icmp slt i32 %i.ub, %i.to
  br i1 %.not.i273.us, label %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us, label %bb.cj

bb.ci:                                            ; preds = %_ZNK14llama_kv_cells11seq_pos_maxEi.exit272.us
  %i.uc = sdiv i32 %i.to, 2                       ; 2 uses
  %i.ud = sub nsw i32 %.0.i271.us, %i.sw          ; 2 uses
  %i.ue = sub nsw i32 0, %i.uc
  %i.uf = icmp slt i32 %i.ud, %i.ue
  %i.ug = icmp sgt i32 %i.ud, %i.uc
  %or.cond.i.us = or i1 %i.uf, %i.ug
  br i1 %or.cond.i.us, label %bb.cj, label %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us

_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us: ; preds = %bb.ci, %bb.ch, %bb.cg, %_ZNK14llama_kv_cells11seq_pos_maxEi.exit272.us, %bb.cd
  %10 = add i32 %.0120409.us, 1                   ; 2 uses
  %11 = icmp uge i32 %10, %i.pb
  %or.cond.not430 = select i1 %3, i1 true, i1 %11
  br i1 %or.cond.not430, label %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit._crit_edge.us, label %.preheader.us, !llvm.loop !554

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg, %.preheader.us
  %i.uh = load ptr, ptr %i.sa, align 8, !tbaa !152 ; 4 uses
  %i.ui = load ptr, ptr %i.sb, align 8, !tbaa !275
  %.not.i274.us = icmp eq ptr %i.uh, %i.ui
  br i1 %.not.i274.us, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  store i32 %.2126407.us, ptr %i.uh, align 4, !tbaa !110
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  store ptr %i.uj, ptr %i.sa, align 8, !tbaa !152
  br label %.critedge.us

bb.cl:                                            ; preds = %bb.cj
  %i.uk = load ptr, ptr %i.rz, align 8, !tbaa !120 ; 4 uses
  %i.ul = ptrtoint ptr %i.uh to i64
  %i.um = ptrtoint ptr %i.uk to i64
  %i.un = sub i64 %i.ul, %i.um                    ; 6 uses
  %i.uo = icmp eq i64 %i.un, 9223372036854775804
  br i1 %i.uo, label %.split416.us, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.us

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.us: ; preds = %bb.cl
  %i.up = ashr exact i64 %i.un, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.us = call i64 @llvm.umax.i64(i64 %i.up, i64 1)
  %i.uq = add nsw i64 %.sroa.speculated.i.i.i.us, %i.up ; 2 uses
  %i.ur = icmp ult i64 %i.uq, %i.up
  %i.us = call i64 @llvm.umin.i64(i64 %i.uq, i64 2305843009213693951)
  %i.ut = select i1 %i.ur, i64 2305843009213693951, i64 %i.us ; 3 uses
  %.not.i.i.i275.us = icmp ne i64 %i.ut, 0
  call void @llvm.assume(i1 %.not.i.i.i275.us)
  %i.uu = shl nuw nsw i64 %i.ut, 2
  %i.uv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uu) #28
          to label %.noexc277.us unwind label %.loopexit.split.us ; 4 uses

.noexc277.us:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.us
  %i.uw = getelementptr inbounds i8, ptr %i.uv, i64 %i.un ; 2 uses
  store i32 %.2126407.us, ptr %i.uw, align 4, !tbaa !110
  %i.ux = icmp sgt i64 %i.un, 0
  br i1 %i.ux, label %bb.cm, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.us

bb.cm:                                            ; preds = %.noexc277.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.uv, ptr align 4 %i.uk, i64 %i.un, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.us

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.us: ; preds = %bb.cm, %.noexc277.us
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  %.not.i17.i.i.us = icmp eq ptr %i.uk, null
  br i1 %.not.i17.i.i.us, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.us, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.us
  call void @_ZdlPvm(ptr noundef nonnull %i.uk, i64 noundef %i.un) #31
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.us

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.us: ; preds = %bb.cn, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.us
  store ptr %i.uv, ptr %i.rz, align 8, !tbaa !120
  store ptr %i.uy, ptr %i.sa, align 8, !tbaa !152
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.uv, i64 %i.ut
  store ptr %i.uz, ptr %i.sb, align 8, !tbaa !275
  br label %.critedge.us

.critedge.us:                                     ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.us, %bb.ck
  %.old = add i32 %.0120409.us, 1                 ; 2 uses
  %.old423 = icmp ult i32 %.old, %i.pb
  br i1 %.old423, label %.critedge.us..preheader.us.backedge_crit_edge, label %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit._crit_edge.us

.critedge.us..preheader.us.backedge_crit_edge:    ; preds = %.critedge.us
  %.pre475.pre = load ptr, ptr %i.re, align 8, !tbaa !126
  br label %.preheader.us.outer, !llvm.loop !554

_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit._crit_edge.us: ; preds = %.critedge.us, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit.us
  %i.va = load ptr, ptr %i.sc, align 8, !tbaa !152 ; 2 uses
  %i.vb = load ptr, ptr %i.qi, align 8, !tbaa !120 ; 3 uses
  %i.vc = ptrtoint ptr %i.va to i64
  %i.vd = ptrtoint ptr %i.vb to i64
  %i.ve = sub i64 %i.vc, %i.vd
  %i.vf = ashr exact i64 %i.ve, 2
  %i.vg = icmp eq i64 %i.vf, %i.ow
  br i1 %i.vg, label %.split418.us, label %bb.co

bb.co:                                            ; preds = %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit._crit_edge.us
  %.not.i.i.us = icmp ne ptr %i.va, %i.vb
  %or.cond.not.us = and i1 %3, %.not.i.i.us
  br i1 %or.cond.not.us, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.us, label %_ZNSt6vectorIjSaIjEE5clearEv.exit.us

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.us:     ; preds = %bb.co
  store ptr %i.vb, ptr %i.sc, align 8, !tbaa !152
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit.us

_ZNSt6vectorIjSaIjEE5clearEv.exit.us:             ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.us, %bb.co
  %i.vh = load ptr, ptr %i.rf, align 8, !tbaa !125 ; 2 uses
  %i.vi = load ptr, ptr %i.re, align 8, !tbaa !126 ; 2 uses
  %i.vj = ptrtoint ptr %i.vh to i64
  %i.vk = ptrtoint ptr %i.vi to i64
  %i.vl = sub i64 %i.vj, %i.vk
  %i.vm = lshr exact i64 %i.vl, 2
  %i.vn = trunc i64 %i.vm to i32
  %.not.us = icmp ult i32 %i.st, %i.vn
  br i1 %.not.us, label %.split.us.outer, label %.critedge179thread-pre-split, !llvm.loop !555

bb.cp:                                            ; preds = %.split.us
  %i.vo = add i32 %.0121.us, %i.sq
  br label %.split.us, !llvm.loop !556

.loopexit.split.us:                               ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

.split:                                           ; preds = %bb.cc
  %i.vp = load ptr, ptr %i.oe, align 8            ; 2 uses
  %i.vq = getelementptr inbounds nuw [24 x i8], ptr %i.vp, i64 %indvars.iv466 ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 8 ; 2 uses
  %i.vs = ptrtoint ptr %i.rg to i64
  %i.vt = ptrtoint ptr %i.rh to i64
  %i.vu = sub i64 %i.vs, %i.vt
  %i.vv = lshr exact i64 %i.vu, 2
  %i.vw = trunc i64 %i.vv to i32                  ; 2 uses
  br label %.backedge.outer

.backedge.outer:                                  ; preds = %bb.cq, %.split
  %.1125.ph = phi i32 [ 0, %bb.cq ], [ %spec.select, %.split ] ; 2 uses
  %.0121.ph = phi i32 [ %i.wg, %bb.cq ], [ 0, %.split ] ; 2 uses
  %i.vx = icmp ugt i32 %.1125.ph, %i.vw
  %.not = icmp ult i32 %.0121.ph, %i.rm
  br label %.backedge

.backedge:                                        ; preds = %.backedge.outer, %_ZNSt6vectorIjSaIjEE5clearEv.exit
  br i1 %i.vx, label %bb.cq, label %.preheader

.preheader:                                       ; preds = %.backedge
  %i.vy = load ptr, ptr %i.vr, align 8, !tbaa !152 ; 2 uses
  %i.vz = load ptr, ptr %i.vq, align 8, !tbaa !120 ; 3 uses
  %i.wa = ptrtoint ptr %i.vy to i64
  %i.wb = ptrtoint ptr %i.vz to i64
  %i.wc = sub i64 %i.wa, %i.wb
  %i.wd = ashr exact i64 %i.wc, 2
  %i.we = icmp eq i64 %i.wd, %i.ow
  br i1 %i.we, label %.split418.us, label %bb.cr

bb.cq:                                            ; preds = %.backedge
  %i.wf = sub i32 %.0121.ph, %.1125.ph
  %i.wg = add i32 %i.wf, %i.vw
  br label %.backedge.outer, !llvm.loop !555

.loopexit.split-lp:                               ; preds = %.split416.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cv

.split416.us:                                     ; preds = %bb.cl
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.96) #29
          to label %.noexc276 unwind label %.loopexit.split-lp

.noexc276:                                        ; preds = %.split416.us
  unreachable

bb.cr:                                            ; preds = %.preheader
  %.not.i.i = icmp ne ptr %i.vy, %i.vz
  %or.cond.not = and i1 %3, %.not.i.i
  br i1 %or.cond.not, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.cr
  store ptr %i.vz, ptr %i.vr, align 8, !tbaa !152
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i, %bb.cr
  br i1 %.not, label %.backedge, label %.critedge179thread-pre-split, !llvm.loop !555

.split418.us:                                     ; preds = %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit._crit_edge.us, %.preheader
  %i.wh = phi ptr [ %i.vp, %.preheader ], [ %i.pf, %_ZN13llama_hparams13is_masked_swaEj14llama_swa_typeii.exit._crit_edge.us ]
  %indvars.iv.next467 = add nuw nsw i64 %indvars.iv466, 1 ; 2 uses
  %exitcond469.not = icmp eq i64 %indvars.iv.next467, %.0128
  br i1 %exitcond469.not, label %.critedge180, label %bb.bu, !llvm.loop !557

.critedge180:                                     ; preds = %.split418.us
  %i.wi = load i64, ptr %9, align 8
  store i64 %i.wi, ptr %0, align 8
  %i.wj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.oi, ptr %i.wj, align 8, !tbaa !126
  %i.wk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.om, ptr %i.wk, align 8, !tbaa !125
  %i.wl = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.om, ptr %i.wl, align 8, !tbaa !337
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.wn = load ptr, ptr %i.oe, align 8, !tbaa !343
  store ptr %i.wn, ptr %i.wm, align 8, !tbaa !343
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.or, ptr %i.wo, align 8, !tbaa !353
  %i.wp = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.or, ptr %i.wp, align 8, !tbaa !339
  br label %.critedge179

.critedge179thread-pre-split:                     ; preds = %_ZNSt6vectorIjSaIjEE5clearEv.exit.us, %_ZNSt6vectorIjSaIjEE5clearEv.exit, %bb.cb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, i8 0, i64 56, i1 false)
  %.pr545 = load ptr, ptr %i.oe, align 8, !tbaa !343
  %i.wq = ptrtoint ptr %i.om to i64
  br label %.critedge179

.critedge179:                                     ; preds = %.critedge179thread-pre-split, %.critedge180
  %i.wr = phi ptr [ %.pr545, %.critedge179thread-pre-split ], [ null, %.critedge180 ] ; 5 uses
  %i.ws = phi i64 [ %i.wq, %.critedge179thread-pre-split ], [ 0, %.critedge180 ]
  %i.wt = phi ptr [ %i.oi, %.critedge179thread-pre-split ], [ null, %.critedge180 ] ; 3 uses
  %i.wu = phi ptr [ %i.or, %.critedge179thread-pre-split ], [ null, %.critedge180 ] ; 3 uses
  %.not4.i.i.i.i = icmp eq ptr %i.wr, %i.wu
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.critedge179, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.xb, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i ], [ %i.wr, %.critedge179 ] ; 3 uses
  %i.wv = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.wv, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %.lr.ph.i.i.i.i
  %i.ww = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.wx = load ptr, ptr %i.ww, align 8, !tbaa !275
  %i.wy = ptrtoint ptr %i.wx to i64
  %i.wz = ptrtoint ptr %i.wv to i64
  %i.xa = sub i64 %i.wy, %i.wz
  call void @_ZdlPvm(ptr noundef nonnull %i.wv, i64 noundef %i.xa) #31
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i: ; preds = %bb.cs, %.lr.ph.i.i.i.i
  %i.xb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.xb, %i.wu
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !26

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i.i, %.critedge179
  %.not.i.i1.i.i = icmp eq ptr %i.wr, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit.i, label %bb.ct

bb.ct:                                            ; preds = %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.xc = ptrtoint ptr %i.wu to i64
  %i.xd = ptrtoint ptr %i.wr to i64
  %i.xe = sub i64 %i.xc, %i.xd
  call void @_ZdlPvm(ptr noundef nonnull %i.wr, i64 noundef %i.xe) #31
  br label %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit.i

_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit.i:       ; preds = %bb.ct, %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i.i
  %.not.i.i.i1.i = icmp eq ptr %i.wt, null
  br i1 %.not.i.i.i1.i, label %_ZN14llama_kv_cache9slot_infoD2Ev.exit, label %bb.cu

bb.cu:                                            ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit.i
  %i.xf = ptrtoint ptr %i.wt to i64
  %i.xg = sub i64 %i.ws, %i.xf
  call void @_ZdlPvm(ptr noundef nonnull %i.wt, i64 noundef %i.xg) #31
  br label %_ZN14llama_kv_cache9slot_infoD2Ev.exit

_ZN14llama_kv_cache9slot_infoD2Ev.exit:           ; preds = %_ZNSt6vectorIS_IjSaIjEESaIS1_EED2Ev.exit.i, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  ret void

bb.cv:                                            ; preds = %.loopexit.split.us, %.loopexit.split-lp, %.loopexit303, %.loopexit.split-lp304, %bb.ca, %bb.bt
  %.pn159.pn.pn = phi { ptr, i32 } [ %i.pe, %bb.bt ], [ %lpad.loopexit.split-lp306, %.loopexit.split-lp304 ], [ %i.ro, %bb.ca ], [ %lpad.loopexit305, %.loopexit303 ], [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN14llama_kv_cache9slot_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br label %bb.cw

bb.cw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %bb.cv
  %.pn172.pn.pn.pn = phi { ptr, i32 } [ %.pn159.pn.pn, %bb.cv ], [ %.pn172.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205 ], [ %.pn166.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ]
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
end_hunk_0
