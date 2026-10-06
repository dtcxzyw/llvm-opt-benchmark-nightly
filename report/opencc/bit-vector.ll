Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/bit-vector?download=true
inline.NumInlined: 192
inline.NumDeleted: 69
begin_hunk_0_@_ZN6marisa8grimoire6vector9BitVector11build_indexERKS2_bb:bb.a
  %i.cz = load ptr, ptr %i.ag, align 8, !tbaa !27
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.0164
  %i.db = load i64, ptr %i.da, align 8, !tbaa !28 ; 5 uses
  %i.dc = tail call noundef range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.db) ; 3 uses
  br i1 %2, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.dd = sub i64 %i.b, %i.aq
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.dd, i64 64)
  %i.de = sub nsw i64 %.sroa.speculated, %i.dc    ; 2 uses
  %i.df = sub i64 0, %.091162
  %i.dg = and i64 %i.df, 511                      ; 3 uses
  %i.dh = icmp ugt i64 %i.de, %i.dg
  br i1 %i.dh, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.di = xor i64 %i.db, -1                       ; 3 uses
  %i.dj = lshr i64 %i.di, 1
  %i.dk = and i64 %i.dj, 6148914691236517205
  %i.dl = sub i64 %i.di, %i.dk                    ; 2 uses
  %i.dm = and i64 %i.dl, 3689348814741910323
  %i.dn = lshr i64 %i.dl, 2
  %i.do = and i64 %i.dn, 3689348814741910323
  %i.dp = add nuw nsw i64 %i.do, %i.dm            ; 2 uses
  %i.dq = lshr i64 %i.dp, 4
  %i.dr = add nuw nsw i64 %i.dq, %i.dp
  %i.ds = and i64 %i.dr, 1085102592571150095      ; 2 uses
  %i.dt = mul i64 %i.ds, 72340172838076673
  %i.du = getelementptr inbounds nuw [8 x i8], ptr @_ZN6marisa8grimoire6vector12_GLOBAL__N_119PREFIX_SUM_OVERFLOWE, i64 %i.dg
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !28
  %i.dw = add i64 %i.dv, %i.dt
  %i.dx = lshr i64 %i.dw, 7
  %i.dy = and i64 %i.dx, 72340172838076673
  %i.dz = tail call noundef range(i64 0, 57) i64 @llvm.cttz.i64(i64 range(i64 0, 72340172838076674) %i.dy, i1 true) ; 3 uses
  %i.ea = lshr i64 %i.di, %i.dz
  %i.eb = mul i64 %i.ds, 72340172838076672
  %i.ec = lshr i64 %i.eb, %i.dz
  %i.ed = and i64 %i.ec, 255
  %i.ee = sub nsw i64 %i.dg, %i.ed
  %i.ef = getelementptr inbounds nuw [256 x i8], ptr @_ZN6marisa8grimoire6vector12_GLOBAL__N_112SELECT_TABLEE, i64 %i.ee
  %i.eg = and i64 %i.ea, 255
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !34
  %i.ej = zext i8 %i.ei to i64
  %i.ek = add i64 %i.aq, %i.ej
  %i.el = add i64 %i.ek, %i.dz
  %i.em = trunc i64 %i.el to i32
  %i.en = load i64, ptr %i.ah, align 8, !tbaa !36 ; 4 uses
  %i.eo = add i64 %i.en, 1                        ; 5 uses
  %i.ep = load i64, ptr %i.ai, align 8, !tbaa !37 ; 4 uses
  %.not.i.i98 = icmp ugt i64 %i.eo, %i.ep
  br i1 %.not.i.i98, label %bb.o, label %._ZN6marisa8grimoire6vector6VectorIjE7reserveEm.exit_crit_edge.i

._ZN6marisa8grimoire6vector6VectorIjE7reserveEm.exit_crit_edge.i: ; preds = %bb.n
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !38
  br label %_ZN6marisa8grimoire6vector6VectorIjE9push_backERKj.exit

bb.o:                                             ; preds = %bb.n
  %i.eq = lshr i64 %i.eo, 1
  %i.er = icmp ugt i64 %i.ep, %i.eq
  %i.es = icmp ugt i64 %i.ep, 2305843009213693951
  %i.et = shl nuw nsw i64 %i.ep, 1
  %spec.select.i.i99 = select i1 %i.es, i64 4611686018427387903, i64 %i.et
  %.0.i.i100 = select i1 %i.er, i64 %spec.select.i.i99, i64 %i.eo ; 2 uses
  %i.eu = shl i64 %.0.i.i100, 2
  %i.ev = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.eu) #11 ; 5 uses
  %i.ew = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !38
  %i.ex = shl i64 %i.en, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ev, ptr align 4 %i.ew, i64 %i.ex, i1 false)
  %i.ey = load ptr, ptr %i.aj, align 8, !tbaa !35 ; 2 uses
  store ptr %i.ev, ptr %i.aj, align 8, !tbaa !35
  %.not.i.i.i.i.i.i.i101 = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i.i.i.i101, label %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i102

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i102: ; preds = %bb.o
  tail call void @_ZdaPv(ptr noundef nonnull %i.ey) #12
  %.pre2.pre.i = load i64, ptr %i.ah, align 8, !tbaa !36 ; 2 uses
  %.pre5.i = add i64 %.pre2.pre.i, 1
  br label %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i

_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i102, %bb.o
  %.pre4.pre-phi.i = phi i64 [ %.pre5.i, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i102 ], [ %i.eo, %bb.o ]
  %.pre2.i = phi i64 [ %.pre2.pre.i, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i102 ], [ %i.en, %bb.o ]
  store ptr %i.ev, ptr %.phi.trans.insert.i, align 8, !tbaa !38
  store ptr %i.ev, ptr %i.ak, align 8, !tbaa !31
  store i64 %.0.i.i100, ptr %i.ai, align 8, !tbaa !37
  br label %_ZN6marisa8grimoire6vector6VectorIjE9push_backERKj.exit

_ZN6marisa8grimoire6vector6VectorIjE9push_backERKj.exit: ; preds = %._ZN6marisa8grimoire6vector6VectorIjE7reserveEm.exit_crit_edge.i, %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i
  %.pre-phi.i = phi i64 [ %i.eo, %._ZN6marisa8grimoire6vector6VectorIjE7reserveEm.exit_crit_edge.i ], [ %.pre4.pre-phi.i, %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i ]
  %i.ez = phi i64 [ %i.en, %._ZN6marisa8grimoire6vector6VectorIjE7reserveEm.exit_crit_edge.i ], [ %.pre2.i, %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i ]
  %i.fa = phi ptr [ %.pre.i, %._ZN6marisa8grimoire6vector6VectorIjE7reserveEm.exit_crit_edge.i ], [ %i.ev, %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.ez
  store i32 %i.em, ptr %i.fb, align 4, !tbaa !32
  store i64 %.pre-phi.i, ptr %i.ah, align 8, !tbaa !36
  br label %bb.p

bb.p:                                             ; preds = %_ZN6marisa8grimoire6vector6VectorIjE9push_backERKj.exit, %bb.m
  %i.fc = add i64 %i.de, %.091162
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.l
  %.1 = phi i64 [ %i.fc, %bb.p ], [ %.091162, %bb.l ]
  br i1 %3, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.fd = sub i64 0, %.090163
  %i.fe = and i64 %i.fd, 511                      ; 3 uses
  %i.ff = icmp samesign ugt i64 %i.dc, %i.fe
  br i1 %i.ff, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.fg = lshr i64 %i.db, 1
  %i.fh = and i64 %i.fg, 6148914691236517205
  %i.fi = sub i64 %i.db, %i.fh                    ; 2 uses
  %i.fj = and i64 %i.fi, 3689348814741910323
  %i.fk = lshr i64 %i.fi, 2
  %i.fl = and i64 %i.fk, 3689348814741910323
  %i.fm = add nuw nsw i64 %i.fl, %i.fj            ; 2 uses
  %i.fn = lshr i64 %i.fm, 4
  %i.fo = add nuw nsw i64 %i.fn, %i.fm
  %i.fp = and i64 %i.fo, 1085102592571150095      ; 2 uses
  %i.fq = mul i64 %i.fp, 72340172838076673
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr @_ZN6marisa8grimoire6vector12_GLOBAL__N_119PREFIX_SUM_OVERFLOWE, i64 %i.fe
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !28
  %i.ft = add i64 %i.fs, %i.fq
  %i.fu = lshr i64 %i.ft, 7
  %i.fv = and i64 %i.fu, 72340172838076673
  %i.fw = tail call noundef range(i64 0, 57) i64 @llvm.cttz.i64(i64 range(i64 0, 72340172838076674) %i.fv, i1 true) ; 3 uses
  %i.fx = lshr i64 %i.db, %i.fw
  %i.fy = mul i64 %i.fp, 72340172838076672
  %i.fz = lshr i64 %i.fy, %i.fw
  %i.ga = and i64 %i.fz, 255
  %i.gb = sub nsw i64 %i.fe, %i.ga
  %i.gc = getelementptr inbounds nuw [256 x i8], ptr @_ZN6marisa8grimoire6vector12_GLOBAL__N_112SELECT_TABLEE, i64 %i.gb
  %i.gd = and i64 %i.fx, 255
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !34
  %i.gg = zext i8 %i.gf to i64
  %i.gh = add i64 %i.aq, %i.gg
  %i.gi = add i64 %i.gh, %i.fw
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = load i64, ptr %i.al, align 8, !tbaa !36 ; 4 uses
  %i.gl = add i64 %i.gk, 1                        ; 5 uses
  %i.gm = load i64, ptr %i.am, align 8, !tbaa !37 ; 4 uses
  %.not.i.i103 = icmp ugt i64 %i.gl, %i.gm
  br i1 %.not.i.i103, label %bb.t, label %._ZN6marisa8grimoire6vector6VectorIjE7reserveEm.exit_crit_edge.i104

._ZN6marisa8grimoire6vector6VectorIjE7reserveEm.exit_crit_edge.i104: ; preds = %bb.s
  %.pre.i106 = load ptr, ptr %.phi.trans.insert.i105, align 8, !tbaa !38
  br label %_ZN6marisa8grimoire6vector6VectorIjE9push_backERKj.exit117

bb.t:                                             ; preds = %bb.s
  %i.gn = lshr i64 %i.gl, 1
  %i.go = icmp ugt i64 %i.gm, %i.gn
  %i.gp = icmp ugt i64 %i.gm, 2305843009213693951
  %i.gq = shl nuw nsw i64 %i.gm, 1
  %spec.select.i.i108 = select i1 %i.gp, i64 4611686018427387903, i64 %i.gq
  %.0.i.i109 = select i1 %i.go, i64 %spec.select.i.i108, i64 %i.gl ; 2 uses
  %i.gr = shl i64 %.0.i.i109, 2
  %i.gs = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.gr) #11 ; 5 uses
  %i.gt = load ptr, ptr %.phi.trans.insert.i105, align 8, !tbaa !38
  %i.gu = shl i64 %i.gk, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gs, ptr align 4 %i.gt, i64 %i.gu, i1 false)
  %i.gv = load ptr, ptr %i.an, align 8, !tbaa !35 ; 2 uses
  store ptr %i.gs, ptr %i.an, align 8, !tbaa !35
  %.not.i.i.i.i.i.i.i110 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i.i.i.i.i110, label %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i114, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i111

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i111: ; preds = %bb.t
  tail call void @_ZdaPv(ptr noundef nonnull %i.gv) #12
  %.pre2.pre.i112 = load i64, ptr %i.al, align 8, !tbaa !36 ; 2 uses
  %.pre5.i113 = add i64 %.pre2.pre.i112, 1
  br label %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i114

_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i114: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i111, %bb.t
  %.pre4.pre-phi.i115 = phi i64 [ %.pre5.i113, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i111 ], [ %i.gl, %bb.t ]
  %.pre2.i116 = phi i64 [ %.pre2.pre.i112, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i111 ], [ %i.gk, %bb.t ]
  store ptr %i.gs, ptr %.phi.trans.insert.i105, align 8, !tbaa !38
  store ptr %i.gs, ptr %i.ao, align 8, !tbaa !31
  store i64 %.0.i.i109, ptr %i.am, align 8, !tbaa !37
  br label %_ZN6marisa8grimoire6vector6VectorIjE9push_backERKj.exit117

_ZN6marisa8grimoire6vector6VectorIjE9push_backERKj.exit117: ; preds = %._ZN6marisa8grimoire6vector6VectorIjE7reserveEm.exit_crit_edge.i104, %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i114
  %.pre-phi.i107 = phi i64 [ %i.gl, %._ZN6marisa8grimoire6vector6VectorIjE7reserveEm.exit_crit_edge.i104 ], [ %.pre4.pre-phi.i115, %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i114 ]
  %i.gw = phi i64 [ %i.gk, %._ZN6marisa8grimoire6vector6VectorIjE7reserveEm.exit_crit_edge.i104 ], [ %.pre2.i116, %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i114 ]
  %i.gx = phi ptr [ %.pre.i106, %._ZN6marisa8grimoire6vector6VectorIjE7reserveEm.exit_crit_edge.i104 ], [ %i.gs, %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i114 ]
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.gw
  store i32 %i.gj, ptr %i.gy, align 4, !tbaa !32
  store i64 %.pre-phi.i107, ptr %i.al, align 8, !tbaa !36
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %_ZN6marisa8grimoire6vector6VectorIjE9push_backERKj.exit117, %bb.q
  %i.gz = add i64 %i.dc, %.090163                 ; 2 uses
  %i.ha = add nuw i64 %.0164, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ha, %i.ae
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !43

bb.v:                                             ; preds = %._crit_edge
  %i.hb = add i64 %i.b, -1                        ; 2 uses
  %i.hc = lshr i64 %i.hb, 9                       ; 13 uses
  %i.hd = lshr i64 %i.hb, 6
  %i.he = and i64 %i.hd, 7
  switch i64 %i.he, label %default.unreachable244 [
    i64 0, label %bb.w
    i64 1, label %._crit_edge166
    i64 2, label %._crit_edge171
    i64 3, label %._crit_edge178
    i64 4, label %._crit_edge185
    i64 5, label %._crit_edge190
    i64 6, label %._crit_edge197
    i64 7, label %bb.ad
  ]

._crit_edge197:                                   ; preds = %bb.v
  %.phi.trans.insert198 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre199 = load ptr, ptr %.phi.trans.insert198, align 8, !tbaa !47 ; 2 uses
  %.phi.trans.insert200 = getelementptr inbounds nuw [12 x i8], ptr %.pre199, i64 %i.hc ; 2 uses
  %.pre201 = load i32, ptr %.phi.trans.insert200, align 4, !tbaa !22
  %.phi.trans.insert202 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert200, i64 8
  %.pre203 = load i32, ptr %.phi.trans.insert202, align 4, !tbaa !24
  %.pre221 = sub i32 %.090.lcssa, %.pre201
  br label %bb.ac

._crit_edge190:                                   ; preds = %bb.v
  %.phi.trans.insert191 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre192 = load ptr, ptr %.phi.trans.insert191, align 8, !tbaa !47 ; 2 uses
  %.phi.trans.insert193 = getelementptr inbounds nuw [12 x i8], ptr %.pre192, i64 %i.hc ; 2 uses
  %.pre194 = load i32, ptr %.phi.trans.insert193, align 4, !tbaa !22
  %.phi.trans.insert195 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert193, i64 8
  %.pre196 = load i32, ptr %.phi.trans.insert195, align 4, !tbaa !24
  %.pre218 = sub i32 %.090.lcssa, %.pre194
  br label %bb.ab

._crit_edge185:                                   ; preds = %bb.v
  %.phi.trans.insert186 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre187 = load ptr, ptr %.phi.trans.insert186, align 8, !tbaa !47 ; 2 uses
  %.phi.trans.insert188 = getelementptr inbounds nuw [12 x i8], ptr %.pre187, i64 %i.hc
  %.pre189 = load i32, ptr %.phi.trans.insert188, align 4, !tbaa !22
  %.pre214 = sub i32 %.090.lcssa, %.pre189
  br label %bb.aa

._crit_edge178:                                   ; preds = %bb.v
  %.phi.trans.insert179 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre180 = load ptr, ptr %.phi.trans.insert179, align 8, !tbaa !47 ; 2 uses
  %.phi.trans.insert181 = getelementptr inbounds nuw [12 x i8], ptr %.pre180, i64 %i.hc ; 2 uses
  %.pre182 = load i32, ptr %.phi.trans.insert181, align 4, !tbaa !22
  %.phi.trans.insert183 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert181, i64 4
  %.pre184 = load i32, ptr %.phi.trans.insert183, align 4, !tbaa !23
  %.pre211 = sub i32 %.090.lcssa, %.pre182
  br label %bb.z

._crit_edge171:                                   ; preds = %bb.v
  %.phi.trans.insert172 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre173 = load ptr, ptr %.phi.trans.insert172, align 8, !tbaa !47 ; 2 uses
  %.phi.trans.insert174 = getelementptr inbounds nuw [12 x i8], ptr %.pre173, i64 %i.hc ; 2 uses
  %.pre175 = load i32, ptr %.phi.trans.insert174, align 4, !tbaa !22
  %.phi.trans.insert176 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert174, i64 4
  %.pre177 = load i32, ptr %.phi.trans.insert176, align 4, !tbaa !23
  %.pre208 = sub i32 %.090.lcssa, %.pre175
  br label %bb.y

._crit_edge166:                                   ; preds = %bb.v
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !47 ; 2 uses
  %.phi.trans.insert167 = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %i.hc ; 2 uses
  %.pre168 = load i32, ptr %.phi.trans.insert167, align 4, !tbaa !22
  %.phi.trans.insert169 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert167, i64 4
  %.pre170 = load i32, ptr %.phi.trans.insert169, align 4, !tbaa !23
  %.pre205 = sub i32 %.090.lcssa, %.pre168
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !47 ; 2 uses
  %i.hh = getelementptr inbounds nuw [12 x i8], ptr %i.hg, i64 %i.hc ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !22
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 4 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !23
  %i.hl = and i32 %i.hk, -128
  %i.hm = sub i32 %.090.lcssa, %i.hi              ; 2 uses
  %i.hn = and i32 %i.hm, 127
  %i.ho = or disjoint i32 %i.hl, %i.hn            ; 2 uses
  store i32 %i.ho, ptr %i.hj, align 4, !tbaa !23
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge166, %bb.w
  %.tr.i118.pre-phi = phi i32 [ %.pre205, %._crit_edge166 ], [ %i.hm, %bb.w ] ; 2 uses
  %i.hp = phi i32 [ %.pre170, %._crit_edge166 ], [ %i.ho, %bb.w ]
  %i.hq = phi ptr [ %.pre, %._crit_edge166 ], [ %i.hg, %bb.w ] ; 2 uses
  %i.hr = getelementptr inbounds nuw [12 x i8], ptr %i.hq, i64 %i.hc
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.ht = and i32 %i.hp, -32641
  %i.hu = shl i32 %.tr.i118.pre-phi, 7
  %i.hv = and i32 %i.hu, 32640
  %i.hw = or disjoint i32 %i.hv, %i.ht            ; 2 uses
  store i32 %i.hw, ptr %i.hs, align 4, !tbaa !23
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge171, %bb.x
  %.tr.i119.pre-phi = phi i32 [ %.pre208, %._crit_edge171 ], [ %.tr.i118.pre-phi, %bb.x ] ; 2 uses
  %i.hx = phi i32 [ %.pre177, %._crit_edge171 ], [ %i.hw, %bb.x ]
  %i.hy = phi ptr [ %.pre173, %._crit_edge171 ], [ %i.hq, %bb.x ] ; 2 uses
  %4 = getelementptr inbounds nuw [12 x i8], ptr %i.hy, i64 %i.hc
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.hz = and i32 %i.hx, -8355841
  %i.ia = shl i32 %.tr.i119.pre-phi, 15
  %i.ib = and i32 %i.ia, 8355840
  %i.ic = or disjoint i32 %i.ib, %i.hz            ; 2 uses
  store i32 %i.ic, ptr %5, align 4, !tbaa !23
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge178, %bb.y
  %.tr.i120.pre-phi = phi i32 [ %.pre211, %._crit_edge178 ], [ %.tr.i119.pre-phi, %bb.y ] ; 2 uses
  %i.id = phi i32 [ %.pre184, %._crit_edge178 ], [ %i.ic, %bb.y ]
  %i.ie = phi ptr [ %.pre180, %._crit_edge178 ], [ %i.hy, %bb.y ] ; 2 uses
  %i.if = getelementptr inbounds nuw [12 x i8], ptr %i.ie, i64 %i.hc
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  %i.ih = and i32 %i.id, 8388607
  %i.ii = shl i32 %.tr.i120.pre-phi, 23
  %i.ij = or disjoint i32 %i.ih, %i.ii
  store i32 %i.ij, ptr %i.ig, align 4, !tbaa !23
  br label %bb.aa

bb.aa:                                            ; preds = %._crit_edge185, %bb.z
  %.pre-phi215 = phi i32 [ %.pre214, %._crit_edge185 ], [ %.tr.i120.pre-phi, %bb.z ] ; 2 uses
  %i.ik = phi ptr [ %.pre187, %._crit_edge185 ], [ %i.ie, %bb.z ] ; 2 uses
  %i.il = getelementptr inbounds nuw [12 x i8], ptr %i.ik, i64 %i.hc
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8 ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !24
  %i.io = and i32 %i.in, -512
  %i.ip = and i32 %.pre-phi215, 511
  %i.iq = or disjoint i32 %i.io, %i.ip            ; 2 uses
  store i32 %i.iq, ptr %i.im, align 4, !tbaa !24
  br label %bb.ab

bb.ab:                                            ; preds = %._crit_edge190, %bb.aa
  %.tr.i121.pre-phi = phi i32 [ %.pre218, %._crit_edge190 ], [ %.pre-phi215, %bb.aa ] ; 2 uses
  %i.ir = phi i32 [ %.pre196, %._crit_edge190 ], [ %i.iq, %bb.aa ]
  %i.is = phi ptr [ %.pre192, %._crit_edge190 ], [ %i.ik, %bb.aa ] ; 2 uses
  %6 = getelementptr inbounds nuw [12 x i8], ptr %i.is, i64 %i.hc
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.it = and i32 %i.ir, -261633
  %i.iu = shl i32 %.tr.i121.pre-phi, 9
  %i.iv = and i32 %i.iu, 261632
  %i.iw = or disjoint i32 %i.iv, %i.it            ; 2 uses
  store i32 %i.iw, ptr %7, align 4, !tbaa !24
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge197, %bb.ab
  %.tr.i122.pre-phi = phi i32 [ %.pre221, %._crit_edge197 ], [ %.tr.i121.pre-phi, %bb.ab ]
  %i.ix = phi i32 [ %.pre203, %._crit_edge197 ], [ %i.iw, %bb.ab ]
  %i.iy = phi ptr [ %.pre199, %._crit_edge197 ], [ %i.is, %bb.ab ]
  %i.iz = getelementptr inbounds nuw [12 x i8], ptr %i.iy, i64 %i.hc
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = and i32 %i.ix, -133955585
  %i.jc = shl i32 %.tr.i122.pre-phi, 18
  %i.jd = and i32 %i.jc, 133955584
  %i.je = or disjoint i32 %i.jd, %i.jb
  store i32 %i.je, ptr %i.ja, align 4, !tbaa !24
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.v, %._crit_edge
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.b, ptr %i.jf, align 8, !tbaa !45
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !50
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.jh, ptr %i.ji, align 8, !tbaa !50
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !47
  %i.jl = load i64, ptr %i.w, align 8, !tbaa !48
  %i.jm = getelementptr [12 x i8], ptr %i.jk, i64 %i.jl
  %i.jn = getelementptr i8, ptr %i.jm, i64 -12
  store i32 %.090.lcssa, ptr %i.jn, align 4, !tbaa !22
  br i1 %2, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.jp = trunc i64 %i.b to i32
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.jr = load i64, ptr %i.jq, align 8, !tbaa !36 ; 4 uses
  %i.js = add i64 %i.jr, 1                        ; 5 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !37 ; 4 uses
  %.not.i.i123 = icmp ugt i64 %i.js, %i.ju
  br i1 %.not.i.i123, label %bb.af, label %._ZN6marisa8grimoire6vector6VectorIjE7reserveEm.exit_crit_edge.i124

._ZN6marisa8grimoire6vector6VectorIjE7reserveEm.exit_crit_edge.i124: ; preds = %bb.ae
  %.phi.trans.insert.i125 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.pre.i126 = load ptr, ptr %.phi.trans.insert.i125, align 8, !tbaa !38
  br label %_ZN6marisa8grimoire6vector6VectorIjE9push_backERKj.exit137

bb.af:                                            ; preds = %bb.ae
  %i.jv = lshr i64 %i.js, 1
  %i.jw = icmp ugt i64 %i.ju, %i.jv
  %i.jx = icmp ugt i64 %i.ju, 2305843009213693951
  %i.jy = shl nuw nsw i64 %i.ju, 1
  %spec.select.i.i128 = select i1 %i.jx, i64 4611686018427387903, i64 %i.jy
  %.0.i.i129 = select i1 %i.jw, i64 %spec.select.i.i128, i64 %i.js ; 2 uses
  %i.jz = shl i64 %.0.i.i129, 2
  %i.ka = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.jz) #11 ; 5 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !38
  %i.kd = shl i64 %i.jr, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ka, ptr align 4 %i.kc, i64 %i.kd, i1 false)
  %i.ke = load ptr, ptr %i.jo, align 8, !tbaa !35 ; 2 uses
  store ptr %i.ka, ptr %i.jo, align 8, !tbaa !35
  %.not.i.i.i.i.i.i.i130 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i.i.i.i.i.i130, label %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i134, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i131

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i131: ; preds = %bb.af
  tail call void @_ZdaPv(ptr noundef nonnull %i.ke) #12
  %.pre2.pre.i132 = load i64, ptr %i.jq, align 8, !tbaa !36 ; 2 uses
  %.pre5.i133 = add i64 %.pre2.pre.i132, 1
  br label %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i134

_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i134: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i131, %bb.af
  %.pre4.pre-phi.i135 = phi i64 [ %.pre5.i133, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i131 ], [ %i.js, %bb.af ]
  %.pre2.i136 = phi i64 [ %.pre2.pre.i132, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i131 ], [ %i.jr, %bb.af ]
  store ptr %i.ka, ptr %i.kb, align 8, !tbaa !38
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.ka, ptr %i.kf, align 8, !tbaa !31
  store i64 %.0.i.i129, ptr %i.jt, align 8, !tbaa !37
  br label %_ZN6marisa8grimoire6vector6VectorIjE9push_backERKj.exit137

_ZN6marisa8grimoire6vector6VectorIjE9push_backERKj.exit137: ; preds = %._ZN6marisa8grimoire6vector6VectorIjE7reserveEm.exit_crit_edge.i124, %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i134
  %.pre-phi.i127 = phi i64 [ %i.js, %._ZN6marisa8grimoire6vector6VectorIjE7reserveEm.exit_crit_edge.i124 ], [ %.pre4.pre-phi.i135, %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i134 ]
  %i.kg = phi i64 [ %i.jr, %._ZN6marisa8grimoire6vector6VectorIjE7reserveEm.exit_crit_edge.i124 ], [ %.pre2.i136, %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i134 ]
  %i.kh = phi ptr [ %.pre.i126, %._ZN6marisa8grimoire6vector6VectorIjE7reserveEm.exit_crit_edge.i124 ], [ %i.ka, %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i134 ]
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.kh, i64 %i.kg
  store i32 %i.jp, ptr %i.ki, align 4, !tbaa !32
  store i64 %.pre-phi.i127, ptr %i.jq, align 8, !tbaa !36
  tail call void @_ZN6marisa8grimoire6vector6VectorIjE6shrinkEv(ptr noundef nonnull align 8 dereferenceable(41) %i.jo)
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN6marisa8grimoire6vector6VectorIjE9push_backERKj.exit137, %bb.ad
  br i1 %3, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.kk = trunc i64 %i.b to i32
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !36 ; 4 uses
  %i.kn = add i64 %i.km, 1                        ; 5 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !37 ; 4 uses
  %.not.i.i138 = icmp ugt i64 %i.kn, %i.kp
  br i1 %.not.i.i138, label %bb.ai, label %._ZN6marisa8grimoire6vector6VectorIjE7reserveEm.exit_crit_edge.i139

._ZN6marisa8grimoire6vector6VectorIjE7reserveEm.exit_crit_edge.i139: ; preds = %bb.ah
  %.phi.trans.insert.i140 = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.pre.i141 = load ptr, ptr %.phi.trans.insert.i140, align 8, !tbaa !38
  br label %_ZN6marisa8grimoire6vector6VectorIjE9push_backERKj.exit152

bb.ai:                                            ; preds = %bb.ah
  %i.kq = lshr i64 %i.kn, 1
  %i.kr = icmp ugt i64 %i.kp, %i.kq
  %i.ks = icmp ugt i64 %i.kp, 2305843009213693951
  %i.kt = shl nuw nsw i64 %i.kp, 1
  %spec.select.i.i143 = select i1 %i.ks, i64 4611686018427387903, i64 %i.kt
  %.0.i.i144 = select i1 %i.kr, i64 %spec.select.i.i143, i64 %i.kn ; 2 uses
  %i.ku = shl i64 %.0.i.i144, 2
  %i.kv = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ku) #11 ; 5 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !38
  %i.ky = shl i64 %i.km, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.kv, ptr align 4 %i.kx, i64 %i.ky, i1 false)
  %i.kz = load ptr, ptr %i.kj, align 8, !tbaa !35 ; 2 uses
  store ptr %i.kv, ptr %i.kj, align 8, !tbaa !35
  %.not.i.i.i.i.i.i.i145 = icmp eq ptr %i.kz, null
  br i1 %.not.i.i.i.i.i.i.i145, label %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i149, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i146

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i146: ; preds = %bb.ai
  tail call void @_ZdaPv(ptr noundef nonnull %i.kz) #12
  %.pre2.pre.i147 = load i64, ptr %i.kl, align 8, !tbaa !36 ; 2 uses
  %.pre5.i148 = add i64 %.pre2.pre.i147, 1
  br label %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i149

_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i149: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i146, %bb.ai
  %.pre4.pre-phi.i150 = phi i64 [ %.pre5.i148, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i146 ], [ %i.kn, %bb.ai ]
  %.pre2.i151 = phi i64 [ %.pre2.pre.i147, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i.i.i146 ], [ %i.km, %bb.ai ]
  store ptr %i.kv, ptr %i.kw, align 8, !tbaa !38
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.kv, ptr %i.la, align 8, !tbaa !31
  store i64 %.0.i.i144, ptr %i.ko, align 8, !tbaa !37
  br label %_ZN6marisa8grimoire6vector6VectorIjE9push_backERKj.exit152

_ZN6marisa8grimoire6vector6VectorIjE9push_backERKj.exit152: ; preds = %._ZN6marisa8grimoire6vector6VectorIjE7reserveEm.exit_crit_edge.i139, %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i149
  %.pre-phi.i142 = phi i64 [ %i.kn, %._ZN6marisa8grimoire6vector6VectorIjE7reserveEm.exit_crit_edge.i139 ], [ %.pre4.pre-phi.i150, %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i149 ]
  %i.lb = phi i64 [ %i.km, %._ZN6marisa8grimoire6vector6VectorIjE7reserveEm.exit_crit_edge.i139 ], [ %.pre2.i151, %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i149 ]
  %i.lc = phi ptr [ %.pre.i141, %._ZN6marisa8grimoire6vector6VectorIjE7reserveEm.exit_crit_edge.i139 ], [ %i.kv, %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit.i.i149 ]
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.lb
  store i32 %i.kk, ptr %i.ld, align 4, !tbaa !32
  store i64 %.pre-phi.i142, ptr %i.kl, align 8, !tbaa !36
  tail call void @_ZN6marisa8grimoire6vector6VectorIjE6shrinkEv(ptr noundef nonnull align 8 dereferenceable(41) %i.kj)
  br label %bb.aj

bb.aj:                                            ; preds = %_ZN6marisa8grimoire6vector6VectorIjE9push_backERKj.exit152, %bb.ag
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6marisa8grimoire6vector6VectorIjE6shrinkEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i8, ptr %i.a, align 8, !tbaa !51, !range !52, !noundef !53
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #13 ; 3 uses
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt11logic_error, ptr nonnull @_ZNSt11logic_errorD1Ev) #14
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !36   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37
  %.not = icmp eq i64 %i.f, %i.h
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = shl i64 %i.f, 2                          ; 2 uses
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #11 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %i.l, i64 %i.i, i1 false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !35
  %.not.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i, label %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i: ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #12
  br label %_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit

_ZN6marisa8grimoire6vector6VectorIjE7reallocEm.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i.i.i.i
  store ptr %i.j, ptr %i.k, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.n, align 8, !tbaa !31
  store i64 %i.f, ptr %i.g, align 8, !tbaa !37
end_hunk_0
