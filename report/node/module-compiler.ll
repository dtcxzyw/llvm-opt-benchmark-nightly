inline.NumInlined: 5481
inline.NumDeleted: 2947
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN2v88internal4wasm31TransitiveTypeFeedbackProcessor15ProcessFunctionEi:bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store i64 0, ptr %i.bo, align 8, !noalias !126
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i32 -1, ptr %i.bp, align 8, !noalias !126
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  store i8 0, ptr %i.bq, align 4, !noalias !126
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 21
  store i8 0, ptr %i.br, align 1, !noalias !126
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store i64 0, ptr %i.bs, align 8, !noalias !126
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  store i32 -1, ptr %i.bt, align 8, !noalias !126
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  store i8 0, ptr %i.bu, align 4, !noalias !126
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 37
  store i8 0, ptr %i.bv, align 1, !noalias !126
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store i64 0, ptr %i.bw, align 8, !noalias !126
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  store i32 -1, ptr %i.bx, align 8, !noalias !126
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 52
  store i8 0, ptr %i.by, align 4, !noalias !126
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 53
  store i8 0, ptr %i.bz, align 1, !noalias !126
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  store i64 0, ptr %i.ca, align 8, !noalias !126
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 64 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.bb
  br i1 %i.cc, label %_ZNSt10unique_ptrIA_N2v88internal4wasm16CallSiteFeedbackESt14default_deleteIS4_EED2Ev.exit.i.i, label %.new

_ZNSt10unique_ptrIA_N2v88internal4wasm16CallSiteFeedbackESt14default_deleteIS4_EED2Ev.exit.i.i: ; preds = %.new, %.prol.loopexit
  %i.cd = ptrtoint ptr %i.ba to i64
  store i64 %i.cd, ptr %i.au, align 8, !alias.scope !123
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.av, ptr %i.ce, align 8, !alias.scope !123
  br label %_ZN2v88internal4wasm13FeedbackMakerC2EPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEii.exit

_ZN2v88internal4wasm13FeedbackMakerC2EPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEii.exit: ; preds = %bb.e, %_ZNSt10unique_ptrIA_N2v88internal4wasm16CallSiteFeedbackESt14default_deleteIS4_EED2Ev.exit.i.i
  %i.cf = phi i64 [ 0, %bb.e ], [ %i.av, %_ZNSt10unique_ptrIA_N2v88internal4wasm16CallSiteFeedbackESt14default_deleteIS4_EED2Ev.exit.i.i ]
  %i.cg = phi ptr [ null, %bb.e ], [ %i.ba, %_ZNSt10unique_ptrIA_N2v88internal4wasm16CallSiteFeedbackESt14default_deleteIS4_EED2Ev.exit.i.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 0, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 3 uses
  %i.cj = add i64 %.sroa.074.0.copyload, 263
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = load i64, ptr %i.ck, align 8
  %i.cm = add i64 %i.cl, 7
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 216
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 84
  %i.cw = load i32, ptr %i.cv, align 4
  store i32 %i.cw, ptr %i.ci, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %1, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 9 uses
  store i32 0, ptr %i.cy, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 6 uses
  store i8 0, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 81 ; 11 uses
  store i8 0, ptr %i.da, align 1
  %i.db = icmp sgt i32 %i.al, 0
  br i1 %i.db, label %.lr.ph234, label %._crit_edge

.lr.ph234:                                        ; preds = %_ZN2v88internal4wasm13FeedbackMakerC2EPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEii.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 32 uses
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 32 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.m

._crit_edge.loopexit:                             ; preds = %.critedge
  %.pre = load ptr, ptr %i.au, align 8, !noalias !131
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.pre274 = load i64, ptr %.phi.trans.insert, align 8, !noalias !131
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN2v88internal4wasm13FeedbackMakerC2EPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEii.exit
  %i.dg = phi i64 [ %.pre274, %._crit_edge.loopexit ], [ %i.cf, %_ZN2v88internal4wasm13FeedbackMakerC2EPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEii.exit ] ; 2 uses
  %i.dh = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.cg, %_ZN2v88internal4wasm13FeedbackMakerC2EPNS0_7IsolateENS0_6TaggedINS0_23WasmTrustedInstanceDataEEEii.exit ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, i8 0, i64 16, i1 false)
  call void @_ZN2v88internal4wasm31TransitiveTypeFeedbackProcessor14EnqueueCalleesENS_4base6VectorINS1_16CallSiteFeedbackEEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr %i.dh, i64 %i.dg)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !77, !align !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  store i32 %1, ptr %i.c, align 4
  %i.dk = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8__detail9_Map_baseIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS7_ENS_10_Select1stESt8equal_toIjESt4hashIjENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOj(ptr noundef nonnull align 8 dereferenceable(56) %i.dj, ptr noundef nonnull align 4 dereferenceable(4) %i.c) ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8            ; 4 uses
  store ptr %i.dh, ptr %i.dk, align 8
  %.not.i.i.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i.i.i, label %_ZN2v84base11OwnedVectorINS_8internal4wasm16CallSiteFeedbackEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 -8 ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8            ; 2 uses
  %.idx.i.i.i.i.i.i = shl i64 %i.dn, 4            ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i, label %.preheader.preheader.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i:                 ; preds = %bb.g
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 %.idx.i.i.i.i.i.i
  br label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i
  %i.dq = phi ptr [ %i.dr, %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i ], [ %i.dp, %.preheader.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dq, i64 -16 ; 3 uses
  %i.ds = load i32, ptr %i.dr, align 8
  %i.dt = icmp slt i32 %i.ds, -1
  br i1 %i.dt, label %bb.h, label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i

bb.h:                                             ; preds = %.preheader.i.i.i.i.i.i
  %i.du = getelementptr inbounds i8, ptr %i.dq, i64 -8
  %i.dv = load i64, ptr %i.du, align 8            ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dx = inttoptr i64 %i.dv to ptr
  call void @_ZdaPv(ptr noundef nonnull %i.dx) #30
  br label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i

_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h, %.preheader.i.i.i.i.i.i
  %i.dy = icmp eq ptr %i.dr, %i.dl
  br i1 %i.dy, label %_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i: ; preds = %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i.i.i, %bb.g
  %i.dz = or disjoint i64 %.idx.i.i.i.i.i.i, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dz) #30
  br label %_ZN2v84base11OwnedVectorINS_8internal4wasm16CallSiteFeedbackEED2Ev.exit

_ZN2v84base11OwnedVectorINS_8internal4wasm16CallSiteFeedbackEED2Ev.exit: ; preds = %_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i.i.i, %._crit_edge
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %i.dg, ptr %i.ea, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  %i.eb = load ptr, ptr %i.au, align 8            ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i, label %_ZN2v88internal4wasm13FeedbackMakerD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v84base11OwnedVectorINS_8internal4wasm16CallSiteFeedbackEED2Ev.exit
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 -8 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8            ; 2 uses
  %.idx.i.i.i.i = shl i64 %i.ed, 4                ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i, label %.preheader.preheader.i.i.i.i

.preheader.preheader.i.i.i.i:                     ; preds = %bb.j
  %i.ef = getelementptr inbounds i8, ptr %i.eb, i64 %.idx.i.i.i.i
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i, %.preheader.preheader.i.i.i.i
  %i.eg = phi ptr [ %i.eh, %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i ], [ %i.ef, %.preheader.preheader.i.i.i.i ] ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -16 ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 8
  %i.ej = icmp slt i32 %i.ei, -1
  br i1 %i.ej, label %bb.k, label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i

bb.k:                                             ; preds = %.preheader.i.i.i.i
  %i.ek = getelementptr inbounds i8, ptr %i.eg, i64 -8
  %i.el = load i64, ptr %i.ek, align 8            ; 2 uses
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.en = inttoptr i64 %i.el to ptr
  call void @_ZdaPv(ptr noundef nonnull %i.en) #30
  br label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i

_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i: ; preds = %bb.l, %bb.k, %.preheader.i.i.i.i
  %i.eo = icmp eq ptr %i.eh, %i.eb
  br i1 %i.eo, label %_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i, label %.preheader.i.i.i.i

_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i: ; preds = %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit.i.i.i.i, %bb.j
  %i.ep = or disjoint i64 %.idx.i.i.i.i, 8
  call void @_ZdaPvm(ptr noundef nonnull %i.ec, i64 noundef %i.ep) #30
  br label %_ZN2v88internal4wasm13FeedbackMakerD2Ev.exit

_ZN2v88internal4wasm13FeedbackMakerD2Ev.exit:     ; preds = %_ZN2v84base11OwnedVectorINS_8internal4wasm16CallSiteFeedbackEED2Ev.exit, %_ZNKSt14default_deleteIA_N2v88internal4wasm16CallSiteFeedbackEEclIS3_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS4_EE5valueEvE4typeEPS8_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit97.thread

bb.m:                                             ; preds = %.lr.ph234, %.critedge
  %indvars.iv271 = phi i64 [ 0, %.lr.ph234 ], [ %indvars.iv.next272, %.critedge ] ; 3 uses
  %i.eq = lshr exact i64 %indvars.iv271, 1        ; 4 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4            ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv271 ; 2 uses
  %i.eu = load atomic volatile i64, ptr %i.et monotonic, align 8 ; 10 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ew = load atomic volatile i64, ptr %i.ev monotonic, align 8 ; 3 uses
  %or.cond = icmp ult i32 %i.es, -2
  br i1 %or.cond, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ex = lshr i64 %i.eu, 32
  %i.ey = trunc nuw i64 %i.ex to i32              ; 2 uses
  %i.ez = load i32, ptr %i.cy, align 4            ; 5 uses
  %i.fa = icmp eq i32 %i.ez, 4
  %i.fb = load i8, ptr %i.da, align 1, !range !76
  %i.fc = trunc nuw i8 %i.fb to i1
  %or.cond.i = select i1 %i.fa, i1 true, i1 %i.fc
  br i1 %or.cond.i, label %bb.o, label %.preheader.i

.preheader.i:                                     ; preds = %bb.n
  %i.fd = icmp sgt i32 %i.ez, 0
  br i1 %i.fd, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.ez to i64 ; 7 uses
  br label %.lr.ph.i

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.da, align 1
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

.lr.ph.i:                                         ; preds = %3, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %3 ] ; 7 uses
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i
  %i.ff = load i32, ptr %i.fe, align 4
  %.not.i = icmp slt i32 %i.ff, %i.ey
  br i1 %.not.i, label %.lr.ph24.i.preheader, label %3

.lr.ph24.i.preheader:                             ; preds = %.lr.ph.i
  %i.fg = sub nsw i64 %wide.trip.count.i, %indvars.iv.i
  %xtraiter346.a = and i64 %i.fg, 1
  %lcmp.mod347.not.a = icmp eq i64 %xtraiter346.a, 0
  br i1 %lcmp.mod347.not.a, label %.lr.ph24.i.prol.loopexit, label %.lr.ph24.i.prol

.lr.ph24.i.prol:                                  ; preds = %.lr.ph24.i.preheader
  %indvars.iv.next27.i.prol = add nsw i64 %wide.trip.count.i, -1 ; 3 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i.prol
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %wide.trip.count.i
  store i32 %i.fi, ptr %i.fj, align 4
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i.prol
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %wide.trip.count.i
  store i32 %i.fl, ptr %i.fm, align 4
  br label %.lr.ph24.i.prol.loopexit

.lr.ph24.i.prol.loopexit:                         ; preds = %.lr.ph24.i.prol, %.lr.ph24.i.preheader
  %indvars.iv26.i.unr = phi i64 [ %wide.trip.count.i, %.lr.ph24.i.preheader ], [ %indvars.iv.next27.i.prol, %.lr.ph24.i.prol ]
  %i.fn = add nsw i64 %wide.trip.count.i, -1
  %i.fo = icmp eq i64 %indvars.iv.i, %i.fn
  br i1 %i.fo, label %._crit_edge.i, label %.lr.ph24.i

3:                                                ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i.loopexit237, label %.lr.ph.i, !llvm.loop !135

._crit_edge.i.loopexit237:                        ; preds = %3
  %i.fp = zext nneg i32 %i.ez to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph24.i.prol.loopexit, %.lr.ph24.i, %._crit_edge.i.loopexit237, %.preheader.i
  %.015.lcssa31.i = phi i64 [ 0, %.preheader.i ], [ %i.fp, %._crit_edge.i.loopexit237 ], [ %indvars.iv.i, %.lr.ph24.i ], [ %indvars.iv.i, %.lr.ph24.i.prol.loopexit ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.015.lcssa31.i
  store i32 %i.es, ptr %i.fq, align 4
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.015.lcssa31.i
  store i32 %i.ey, ptr %i.fr, align 4
  %i.fs = add nsw i32 %i.ez, 1
  store i32 %i.fs, ptr %i.cy, align 4
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

.lr.ph24.i:                                       ; preds = %.lr.ph24.i.prol.loopexit, %.lr.ph24.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i.1, %.lr.ph24.i ], [ %indvars.iv26.i.unr, %.lr.ph24.i.prol.loopexit ] ; 4 uses
  %indvars.iv.next27.i = add nsw i64 %indvars.iv26.i, -1 ; 4 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i
  %i.fu = load i32, ptr %i.ft, align 4
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv26.i
  store i32 %i.fu, ptr %i.fv, align 4
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i
  %i.fx = load i32, ptr %i.fw, align 4
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv26.i
  store i32 %i.fx, ptr %i.fy, align 4
  %indvars.iv.next27.i.1 = add nsw i64 %indvars.iv26.i, -2 ; 4 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i.1
  %i.ga = load i32, ptr %i.fz, align 4
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i
  store i32 %i.ga, ptr %i.gb, align 4
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i.1
  %i.gd = load i32, ptr %i.gc, align 4
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i
  store i32 %i.gd, ptr %i.ge, align 4
  %.not16.not.i.1 = icmp sgt i64 %indvars.iv.next27.i.1, %indvars.iv.i
  br i1 %.not16.not.i.1, label %.lr.ph24.i, label %._crit_edge.i, !llvm.loop !136

bb.p:                                             ; preds = %bb.m
  %i.gf = and i64 %i.ew, -4294967295
  %or.cond210 = icmp eq i64 %i.gf, 0
  br i1 %or.cond210, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.gg = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 897), align 1, !range !76, !noundef !77
  %i.gh = trunc nuw i8 %i.gg to i1
  br i1 %i.gh, label %bb.r, label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

bb.r:                                             ; preds = %bb.q
  %i.gi = trunc nuw i64 %i.eq to i32
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.5, i32 noundef %1, i32 noundef %i.gi) #29
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

bb.s:                                             ; preds = %bb.p
  %i.gj = trunc i64 %i.eu to i1                   ; 2 uses
  br i1 %i.gj, label %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.s
  %i.gk = add nsw i64 %i.eu, -1
  %i.gl = inttoptr i64 %i.gk to ptr
  %i.gm = load atomic volatile i64, ptr %i.gl monotonic, align 8
  %i.gn = add i64 %i.gm, 11
  %i.go = inttoptr i64 %i.gn to ptr
  %i.gp = load atomic volatile i16, ptr %i.go monotonic, align 2
  %i.gq = icmp eq i16 %i.gp, 293
  br i1 %i.gq, label %bb.t, label %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.t:                                             ; preds = %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit
  %i.gr = lshr i64 %i.ew, 32
  %i.gs = trunc nuw i64 %i.gr to i32              ; 2 uses
  %i.gt = add i64 %i.eu, 7
  %i.gu = inttoptr i64 %i.gt to ptr
  %i.gv = load atomic volatile i64, ptr %i.gu acquire, align 8 ; 2 uses
  %i.gw = add i64 %i.gv, 7
  %i.gx = inttoptr i64 %i.gw to ptr
  %i.gy = load i64, ptr %i.gx, align 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.at, align 8
  %.not.i102 = icmp eq i64 %i.gy, %.sroa.0.0.copyload.i
  br i1 %.not.i102, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %i.cz, align 8
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

bb.v:                                             ; preds = %bb.t
  %i.gz = add i64 %i.gv, 23
  %i.ha = inttoptr i64 %i.gz to ptr
  %i.hb = load i64, ptr %i.ha, align 8
  %i.hc = lshr i64 %i.hb, 32
  %i.hd = trunc nuw i64 %i.hc to i32              ; 2 uses
  %i.he = load i32, ptr %i.ci, align 4
  %i.hf = icmp sgt i32 %i.he, %i.hd
  br i1 %i.hf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i8 1, ptr %i.cz, align 8
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

bb.x:                                             ; preds = %bb.v
  %i.hg = load i32, ptr %i.cy, align 4            ; 4 uses
  %i.hh = icmp eq i32 %i.hg, 4
  %i.hi = load i8, ptr %i.da, align 1, !range !76
  %i.hj = trunc nuw i8 %i.hi to i1
  %or.cond.i.i = select i1 %i.hh, i1 true, i1 %i.hj
  br i1 %or.cond.i.i, label %bb.y, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.x
  %i.hk = icmp sgt i32 %i.hg, 0
  br i1 %i.hk, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.hg to i64 ; 8 uses
  br label %.lr.ph.i.i

bb.y:                                             ; preds = %bb.x
  store i8 1, ptr %i.da, align 1
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

.lr.ph.i.i:                                       ; preds = %4, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %4 ] ; 7 uses
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i.i
  %i.hm = load i32, ptr %i.hl, align 4
  %.not.i.i103 = icmp slt i32 %i.hm, %i.gs
  br i1 %.not.i.i103, label %.lr.ph24.i.i.preheader, label %4

.lr.ph24.i.i.preheader:                           ; preds = %.lr.ph.i.i
  %i.hn = sub nsw i64 %wide.trip.count.i.i, %indvars.iv.i.i
  %xtraiter341 = and i64 %i.hn, 1
  %lcmp.mod342.not = icmp eq i64 %xtraiter341, 0
  br i1 %lcmp.mod342.not, label %.lr.ph24.i.i.prol.loopexit, label %.lr.ph24.i.i.prol

.lr.ph24.i.i.prol:                                ; preds = %.lr.ph24.i.i.preheader
  %indvars.iv.next27.i.i.prol = add nsw i64 %wide.trip.count.i.i, -1 ; 3 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i.i.prol
  %i.hp = load i32, ptr %i.ho, align 4
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %wide.trip.count.i.i
  store i32 %i.hp, ptr %i.hq, align 4
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i.i.prol
  %i.hs = load i32, ptr %i.hr, align 4
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %wide.trip.count.i.i
  store i32 %i.hs, ptr %i.ht, align 4
  br label %.lr.ph24.i.i.prol.loopexit

.lr.ph24.i.i.prol.loopexit:                       ; preds = %.lr.ph24.i.i.prol, %.lr.ph24.i.i.preheader
  %indvars.iv26.i.i.unr = phi i64 [ %wide.trip.count.i.i, %.lr.ph24.i.i.preheader ], [ %indvars.iv.next27.i.i.prol, %.lr.ph24.i.i.prol ]
  %i.hu = add nsw i64 %wide.trip.count.i.i, -1
  %i.hv = icmp eq i64 %indvars.iv.i.i, %i.hu
  br i1 %i.hv, label %._crit_edge.i.i, label %.lr.ph24.i.i

4:                                                ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !135

._crit_edge.i.i:                                  ; preds = %4, %.lr.ph24.i.i.prol.loopexit, %.lr.ph24.i.i, %.preheader.i.i
  %.015.lcssa31.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.i.i, %.lr.ph24.i.i.prol.loopexit ], [ %indvars.iv.i.i, %.lr.ph24.i.i ], [ %wide.trip.count.i.i, %4 ] ; 2 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.015.lcssa31.i.i
  store i32 %i.hd, ptr %i.hw, align 4
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.015.lcssa31.i.i
  store i32 %i.gs, ptr %i.hx, align 4
  %i.hy = add nsw i32 %i.hg, 1
  store i32 %i.hy, ptr %i.cy, align 4
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

.lr.ph24.i.i:                                     ; preds = %.lr.ph24.i.i.prol.loopexit, %.lr.ph24.i.i
  %indvars.iv26.i.i = phi i64 [ %indvars.iv.next27.i.i.1, %.lr.ph24.i.i ], [ %indvars.iv26.i.i.unr, %.lr.ph24.i.i.prol.loopexit ] ; 4 uses
  %indvars.iv.next27.i.i = add nsw i64 %indvars.iv26.i.i, -1 ; 4 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i.i
  %i.ia = load i32, ptr %i.hz, align 4
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv26.i.i
  store i32 %i.ia, ptr %i.ib, align 4
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i.i
  %i.id = load i32, ptr %i.ic, align 4
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv26.i.i
  store i32 %i.id, ptr %i.ie, align 4
  %indvars.iv.next27.i.i.1 = add nsw i64 %indvars.iv26.i.i, -2 ; 4 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i.i.1
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i.i
  store i32 %i.ig, ptr %i.ih, align 4
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i.i.1
  %i.ij = load i32, ptr %i.ii, align 4
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i.i
  store i32 %i.ij, ptr %i.ik, align 4
  %.not16.not.i.i.1 = icmp sgt i64 %indvars.iv.next27.i.i.1, %indvars.iv.i.i
  br i1 %.not16.not.i.i.1, label %.lr.ph24.i.i, label %._crit_edge.i.i, !llvm.loop !136

_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.s, %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit
  %i.il = and i64 %i.eu, 1
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.in = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8112
  %i.ip = load i64, ptr %i.io, align 8
  %i.iq = icmp eq i64 %i.eu, %i.ip
  br i1 %i.iq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z, %_ZN2v88internal13IsWasmFuncRefENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.ir = lshr i64 %i.ew, 32
  %i.is = trunc nuw i64 %i.ir to i32
  call void @_ZN2v88internal4wasm13FeedbackMaker24AddCallIndirectCandidateENS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(82) %2, i64 %i.eu, i32 noundef %i.is)
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

bb.ab:                                            ; preds = %bb.z
  br i1 %i.gj, label %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.ab
  %i.it = add nsw i64 %i.eu, -1
  %i.iu = inttoptr i64 %i.it to ptr               ; 4 uses
  %i.iv = load atomic volatile i64, ptr %i.iu monotonic, align 8
  %i.iw = add i64 %i.iv, 11
  %i.ix = inttoptr i64 %i.iw to ptr
  %i.iy = load atomic volatile i16, ptr %i.ix monotonic, align 2
  %i.iz = add i16 %i.iy, -205
  %i.ja = icmp ult i16 %i.iz, 13
  br i1 %i.ja, label %bb.ac, label %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread

bb.ac:                                            ; preds = %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.jc = load i64, ptr %i.jb, align 8
  %i.jd = lshr i64 %i.jc, 32
  %i.je = trunc nuw i64 %i.jd to i32              ; 4 uses
  %i.jf = icmp slt i32 %i.je, 9
  br i1 %i.jf, label %bb.ae, label %bb.ad, !prof !104

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #32
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.jg = icmp eq i32 %i.es, -1
  %i.jh = icmp sgt i32 %i.je, 0                   ; 2 uses
  br i1 %i.jg, label %.preheader, label %.preheader216

.preheader216:                                    ; preds = %bb.ae
  br i1 %i.jh, label %.lr.ph, label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

.lr.ph:                                           ; preds = %.preheader216
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  br label %bb.al

.preheader:                                       ; preds = %bb.ae
  br i1 %i.jh, label %.lr.ph224, label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

.lr.ph224:                                        ; preds = %.preheader
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph224, %_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit125
  %indvars.iv253 = phi i64 [ 0, %.lr.ph224 ], [ %indvars.iv.next254, %_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit125 ] ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.jj, i64 %indvars.iv253 ; 2 uses
  %i.jl = load atomic volatile i64, ptr %i.jk monotonic, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 8
  %i.jn = load atomic volatile i64, ptr %i.jm monotonic, align 8
  %i.jo = lshr i64 %i.jn, 32
  %i.jp = trunc nuw i64 %i.jo to i32              ; 2 uses
  %i.jq = add i64 %i.jl, 7
  %i.jr = inttoptr i64 %i.jq to ptr
  %i.js = load atomic volatile i64, ptr %i.jr acquire, align 8 ; 2 uses
  %i.jt = add i64 %i.js, 7
  %i.ju = inttoptr i64 %i.jt to ptr
  %i.jv = load i64, ptr %i.ju, align 8
  %.sroa.0.0.copyload.i105 = load i64, ptr %i.at, align 8
  %.not.i106 = icmp eq i64 %i.jv, %.sroa.0.0.copyload.i105
  br i1 %.not.i106, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 1, ptr %i.cz, align 8
  br label %_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit125

bb.ah:                                            ; preds = %bb.af
  %i.jw = add i64 %i.js, 23
  %i.jx = inttoptr i64 %i.jw to ptr
  %i.jy = load i64, ptr %i.jx, align 8
  %i.jz = lshr i64 %i.jy, 32
  %i.ka = trunc nuw i64 %i.jz to i32              ; 2 uses
  %i.kb = load i32, ptr %i.ci, align 4
  %i.kc = icmp sgt i32 %i.kb, %i.ka
  br i1 %i.kc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i8 1, ptr %i.cz, align 8
  br label %_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit125

bb.aj:                                            ; preds = %bb.ah
  %i.kd = load i32, ptr %i.cy, align 4            ; 4 uses
  %i.ke = icmp eq i32 %i.kd, 4
  %i.kf = load i8, ptr %i.da, align 1, !range !76
  %i.kg = trunc nuw i8 %i.kf to i1
  %or.cond.i.i107 = select i1 %i.ke, i1 true, i1 %i.kg
  br i1 %or.cond.i.i107, label %bb.ak, label %.preheader.i.i108

.preheader.i.i108:                                ; preds = %bb.aj
  %i.kh = icmp sgt i32 %i.kd, 0
  br i1 %i.kh, label %.lr.ph.preheader.i.i111, label %._crit_edge.i.i109

.lr.ph.preheader.i.i111:                          ; preds = %.preheader.i.i108
  %wide.trip.count.i.i112 = zext nneg i32 %i.kd to i64 ; 8 uses
  br label %.lr.ph.i.i113

bb.ak:                                            ; preds = %bb.aj
  store i8 1, ptr %i.da, align 1
  br label %_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit125

.lr.ph.i.i113:                                    ; preds = %5, %.lr.ph.preheader.i.i111
  %indvars.iv.i.i114 = phi i64 [ 0, %.lr.ph.preheader.i.i111 ], [ %indvars.iv.next.i.i116, %5 ] ; 7 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i.i114
  %i.kj = load i32, ptr %i.ki, align 4
  %.not.i.i115 = icmp slt i32 %i.kj, %i.jp
  br i1 %.not.i.i115, label %.lr.ph24.i.i121.preheader, label %5

.lr.ph24.i.i121.preheader:                        ; preds = %.lr.ph.i.i113
  %i.kk = sub nsw i64 %wide.trip.count.i.i112, %indvars.iv.i.i114
  %xtraiter336 = and i64 %i.kk, 1
  %lcmp.mod337.not = icmp eq i64 %xtraiter336, 0
  br i1 %lcmp.mod337.not, label %.lr.ph24.i.i121.prol.loopexit, label %.lr.ph24.i.i121.prol

.lr.ph24.i.i121.prol:                             ; preds = %.lr.ph24.i.i121.preheader
  %indvars.iv.next27.i.i123.prol = add nsw i64 %wide.trip.count.i.i112, -1 ; 3 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i.i123.prol
  %i.km = load i32, ptr %i.kl, align 4
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %wide.trip.count.i.i112
  store i32 %i.km, ptr %i.kn, align 4
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i.i123.prol
  %i.kp = load i32, ptr %i.ko, align 4
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %wide.trip.count.i.i112
  store i32 %i.kp, ptr %i.kq, align 4
  br label %.lr.ph24.i.i121.prol.loopexit

.lr.ph24.i.i121.prol.loopexit:                    ; preds = %.lr.ph24.i.i121.prol, %.lr.ph24.i.i121.preheader
  %indvars.iv26.i.i122.unr = phi i64 [ %wide.trip.count.i.i112, %.lr.ph24.i.i121.preheader ], [ %indvars.iv.next27.i.i123.prol, %.lr.ph24.i.i121.prol ]
  %i.kr = add nsw i64 %wide.trip.count.i.i112, -1
  %i.ks = icmp eq i64 %indvars.iv.i.i114, %i.kr
  br i1 %i.ks, label %._crit_edge.i.i109, label %.lr.ph24.i.i121

5:                                                ; preds = %.lr.ph.i.i113
  %indvars.iv.next.i.i116 = add nuw nsw i64 %indvars.iv.i.i114, 1 ; 2 uses
  %exitcond.not.i.i117 = icmp eq i64 %indvars.iv.next.i.i116, %wide.trip.count.i.i112
  br i1 %exitcond.not.i.i117, label %._crit_edge.i.i109, label %.lr.ph.i.i113, !llvm.loop !135

._crit_edge.i.i109:                               ; preds = %5, %.lr.ph24.i.i121.prol.loopexit, %.lr.ph24.i.i121, %.preheader.i.i108
  %.015.lcssa31.i.i110 = phi i64 [ 0, %.preheader.i.i108 ], [ %indvars.iv.i.i114, %.lr.ph24.i.i121.prol.loopexit ], [ %indvars.iv.i.i114, %.lr.ph24.i.i121 ], [ %wide.trip.count.i.i112, %5 ] ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.015.lcssa31.i.i110
  store i32 %i.ka, ptr %i.kt, align 4
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.015.lcssa31.i.i110
  store i32 %i.jp, ptr %i.ku, align 4
  %i.kv = add nsw i32 %i.kd, 1
  store i32 %i.kv, ptr %i.cy, align 4
  br label %_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit125

.lr.ph24.i.i121:                                  ; preds = %.lr.ph24.i.i121.prol.loopexit, %.lr.ph24.i.i121
  %indvars.iv26.i.i122 = phi i64 [ %indvars.iv.next27.i.i123.1, %.lr.ph24.i.i121 ], [ %indvars.iv26.i.i122.unr, %.lr.ph24.i.i121.prol.loopexit ] ; 4 uses
  %indvars.iv.next27.i.i123 = add nsw i64 %indvars.iv26.i.i122, -1 ; 4 uses
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i.i123
  %i.kx = load i32, ptr %i.kw, align 4
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv26.i.i122
  store i32 %i.kx, ptr %i.ky, align 4
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i.i123
  %i.la = load i32, ptr %i.kz, align 4
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv26.i.i122
  store i32 %i.la, ptr %i.lb, align 4
  %indvars.iv.next27.i.i123.1 = add nsw i64 %indvars.iv26.i.i122, -2 ; 4 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i.i123.1
  %i.ld = load i32, ptr %i.lc, align 4
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i.i123
  store i32 %i.ld, ptr %i.le, align 4
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i.i123.1
  %i.lg = load i32, ptr %i.lf, align 4
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i.i123
  store i32 %i.lg, ptr %i.lh, align 4
  %.not16.not.i.i124.1 = icmp sgt i64 %indvars.iv.next27.i.i123.1, %indvars.iv.i.i114
  br i1 %.not16.not.i.i124.1, label %.lr.ph24.i.i121, label %._crit_edge.i.i109, !llvm.loop !136

_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit125: ; preds = %bb.ag, %bb.ai, %bb.ak, %._crit_edge.i.i109
  %indvars.iv.next254 = add nuw nsw i64 %indvars.iv253, 2 ; 2 uses
  %i.li = trunc nuw i64 %indvars.iv.next254 to i32
  %i.lj = icmp slt i32 %i.li, %i.je
  br i1 %i.lj, label %bb.af, label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit, !llvm.loop !137

bb.al:                                            ; preds = %.lr.ph, %bb.al
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.al ] ; 2 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %indvars.iv ; 2 uses
  %i.ll = load atomic volatile i64, ptr %i.lk monotonic, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 8
  %i.ln = load atomic volatile i64, ptr %i.lm monotonic, align 8
  %i.lo = lshr i64 %i.ln, 32
  %i.lp = trunc nuw i64 %i.lo to i32
  call void @_ZN2v88internal4wasm13FeedbackMaker24AddCallIndirectCandidateENS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(82) %2, i64 %i.ll, i32 noundef %i.lp)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.lq = trunc nuw i64 %indvars.iv.next to i32
  %i.lr = icmp slt i32 %i.lq, %i.je
  br i1 %i.lr, label %bb.al, label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit, !llvm.loop !138

_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.ab, %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit
  %i.ls = getelementptr inbounds nuw i8, ptr %i.in, i64 7872
  %i.lt = load i64, ptr %i.ls, align 8
  %i.lu = icmp eq i64 %i.eu, %i.lt
  br i1 %i.lu, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread
  store i8 1, ptr %i.da, align 1
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

bb.an:                                            ; preds = %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.7) #32
  unreachable

_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit: ; preds = %bb.al, %_ZN2v88internal4wasm13FeedbackMaker19AddCallRefCandidateENS0_6TaggedINS0_11WasmFuncRefEEEi.exit125, %.preheader216, %.preheader, %._crit_edge.i.i, %bb.y, %bb.w, %bb.u, %._crit_edge.i, %bb.o, %bb.r, %bb.q, %bb.aa, %bb.am
  %i.lv = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 817), align 1, !range !76, !noundef !77
  %i.lw = trunc nuw i8 %i.lv to i1
  br i1 %i.lw, label %bb.ao, label %.critedge

bb.ao:                                            ; preds = %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit
  %i.lx = load ptr, ptr %i.aq, align 8
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 7872
  %i.lz = load i64, ptr %i.ly, align 8
  %.not = icmp eq i64 %i.eu, %i.lz
  br i1 %.not, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ma = load ptr, ptr %i.df, align 8, !nonnull !77, !align !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store i32 %1, ptr %i.b, align 4
  %i.mb = call noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt8__detail9_Map_baseIjSt4pairIKjN2v88internal4wasm20FunctionTypeFeedbackEESaIS7_ENS_10_Select1stESt8equal_toIjESt4hashIjENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb0ELb0ELb1EEELb1EEixEOj(ptr noundef nonnull align 8 dereferenceable(56) %i.ma, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = load i64, ptr %i.mc, align 8
  %i.me = icmp ugt i64 %i.md, %i.eq
  br i1 %i.me, label %bb.aq, label %.critedge

bb.aq:                                            ; preds = %bb.ap
  %i.mf = load ptr, ptr %i.mb, align 8
  %i.mg = getelementptr inbounds nuw [16 x i8], ptr %i.mf, i64 %i.eq ; 5 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 4
  %i.mi = load i8, ptr %i.mh, align 4, !range !76, !noundef !77
  %i.mj = trunc nuw i8 %i.mi to i1
  br i1 %i.mj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i8 1, ptr %i.cz, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mg, i64 5 ; 2 uses
  %i.ml = load i8, ptr %i.mk, align 1, !range !76, !noundef !77
  %i.mm = trunc nuw i8 %i.ml to i1
  br i1 %i.mm, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i8 1, ptr %i.da, align 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  br label %bb.av

bb.av:                                            ; preds = %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit145, %bb.au
  %indvars.iv268 = phi i64 [ %indvars.iv.next269, %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit145 ], [ 0, %bb.au ] ; 3 uses
  %i.mo = load i32, ptr %i.mg, align 8            ; 4 uses
  %i.mp = icmp sgt i32 %i.mo, -1                  ; 2 uses
  br i1 %i.mp, label %_ZNK2v88internal4wasm16CallSiteFeedback9num_casesEv.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mq = icmp ne i32 %i.mo, -1
  %i.mr = load i8, ptr %i.mk, align 1, !range !76
  %i.ms = trunc nuw i8 %i.mr to i1                ; 2 uses
  %.not1.i = select i1 %i.mq, i1 true, i1 %i.ms
  br i1 %.not1.i, label %bb.ax, label %_ZNK2v88internal4wasm16CallSiteFeedback9num_casesEv.exit

bb.ax:                                            ; preds = %bb.aw
  %i.mt = sub nsw i32 0, %i.mo
  %i.mu = zext nneg i32 %i.mt to i64
  %i.mv = select i1 %i.ms, i64 0, i64 %i.mu
  br label %_ZNK2v88internal4wasm16CallSiteFeedback9num_casesEv.exit

_ZNK2v88internal4wasm16CallSiteFeedback9num_casesEv.exit: ; preds = %bb.av, %bb.aw, %bb.ax
  %.0.i = phi i64 [ 0, %bb.aw ], [ 1, %bb.av ], [ %i.mv, %bb.ax ]
  %i.mw = icmp slt i64 %indvars.iv268, %.0.i
  br i1 %i.mw, label %bb.ay, label %.critedge

bb.ay:                                            ; preds = %_ZNK2v88internal4wasm16CallSiteFeedback9num_casesEv.exit
  %i.mx = load i64, ptr %i.mn, align 8            ; 2 uses
  %i.my = inttoptr i64 %i.mx to ptr
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.my, i64 %indvars.iv268 ; 2 uses
  %i.na = icmp slt i32 %i.mo, 0
  %.0.in.i = select i1 %i.na, ptr %i.mz, ptr %i.mg
  %.0.i126.a = load i32, ptr %.0.in.i, align 4    ; 8 uses
  %i.nb = load i32, ptr %i.cy, align 4            ; 6 uses
  %i.nc = sext i32 %i.nb to i64                   ; 4 uses
  %.idx6.i = shl nsw i64 %i.nc, 2                 ; 2 uses
  %i.nd = getelementptr inbounds i8, ptr %i.dd, i64 %.idx6.i
  %i.ne = ashr i64 %i.nc, 2                       ; 2 uses
  %i.nf = icmp sgt i64 %i.ne, 0
  br i1 %i.nf, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ay
  %i.ng = and i64 %.idx6.i, -16
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.dd, i64 %i.ng
  br label %bb.az

bb.az:                                            ; preds = %bb.bd, %.lr.ph.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.ne, %.lr.ph.i.i.i.i ], [ %i.nt, %bb.bd ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i.i ], [ %i.ns, %bb.bd ] ; 9 uses
  %i.nh = load i32, ptr %.02946.i.i.i.i, align 4
  %i.ni = icmp eq i32 %i.nh, %.0.i126.a
  br i1 %i.ni, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.nj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  %i.nk = load i32, ptr %i.nj, align 4
  %i.nl = icmp eq i32 %i.nk, %.0.i126.a
  br i1 %i.nl, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.nm = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  %i.nn = load i32, ptr %i.nm, align 4
  %i.no = icmp eq i32 %i.nn, %.0.i126.a
  br i1 %i.no, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit304, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.np = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 12
  %i.nq = load i32, ptr %i.np, align 4
  %i.nr = icmp eq i32 %i.nq, %.0.i126.a
  br i1 %i.nr, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit306, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ns = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  %i.nt = add nsw i64 %.047.i.i.i.i, -1
  %i.nu = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.nu, label %bb.az, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !139

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.bd
  %i.nv = and i64 %i.nc, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.ay
  %.pre-phi56.i.i.i.i = phi i64 [ %i.nv, %._crit_edge.loopexit.i.i.i.i ], [ %i.nc, %bb.ay ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.dd, %bb.ay ] ; 5 uses
  switch i64 %.pre-phi56.i.i.i.i, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.thread [
    i64 3, label %bb.be
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.be:                                            ; preds = %._crit_edge.i.i.i.i
  %i.nw = load i32, ptr %.029.lcssa.i.i.i.i, align 4
  %i.nx = icmp eq i32 %i.nw, %.0.i126.a
  br i1 %i.nx, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ny = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.bf, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.ny, %bb.bf ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.nz = load i32, ptr %.1.i.i.i.i, align 4
  %i.oa = icmp eq i32 %i.nz, %.0.i126.a
  br i1 %i.oa, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit, label %bb.bg

bb.bg:                                            ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.ob = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %bb.bg, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.ob, %bb.bg ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.oc = load i32, ptr %.2.i.i.i.i, align 4
  %i.od = icmp eq i32 %i.oc, %.0.i126.a
  br i1 %i.od, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.thread

_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit: ; preds = %bb.ba
  %i.oe = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  br label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit

_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit304: ; preds = %bb.bb
  %i.of = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit

_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit306: ; preds = %bb.bc
  %i.og = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 12
  br label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit

_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit: ; preds = %bb.az, %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit, %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit304, %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit306, %bb.be, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.be ], [ %.2.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %i.og, %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit306 ], [ %i.of, %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit304 ], [ %i.oe, %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i.i, %bb.az ]
  %.not211 = icmp eq ptr %.028.i.i.i.i, %i.nd
  br i1 %.not211, label %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.thread, label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit145

_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.thread: ; preds = %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge.i.i.i.i, %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit
  br i1 %i.mp, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.thread
  %i.oh = trunc i64 %i.mx to i32
  br label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit

bb.bi:                                            ; preds = %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit.thread
  %i.oi = getelementptr inbounds nuw i8, ptr %i.mz, i64 4
  %i.oj = load i32, ptr %i.oi, align 4
  br label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit

_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit: ; preds = %bb.bh, %bb.bi
  %.0.i127 = phi i32 [ %i.oh, %bb.bh ], [ %i.oj, %bb.bi ] ; 2 uses
  %i.ok = icmp eq i32 %i.nb, 4
  %i.ol = load i8, ptr %i.da, align 1, !range !76
  %i.om = trunc nuw i8 %i.ol to i1
  %or.cond.i128 = select i1 %i.ok, i1 true, i1 %i.om
  br i1 %or.cond.i128, label %bb.bj, label %.preheader.i129

.preheader.i129:                                  ; preds = %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit
  %i.on = icmp sgt i32 %i.nb, 0
  br i1 %i.on, label %.lr.ph.preheader.i132, label %._crit_edge.i130

.lr.ph.preheader.i132:                            ; preds = %.preheader.i129
  %wide.trip.count.i133 = zext nneg i32 %i.nb to i64 ; 7 uses
  br label %.lr.ph.i134

bb.bj:                                            ; preds = %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit
  store i8 1, ptr %i.da, align 1
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit145

.lr.ph.i134:                                      ; preds = %6, %.lr.ph.preheader.i132
  %indvars.iv.i135 = phi i64 [ 0, %.lr.ph.preheader.i132 ], [ %indvars.iv.next.i136, %6 ] ; 7 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.i135
  %i.op = load i32, ptr %i.oo, align 4
  %.not.i136 = icmp slt i32 %i.op, %.0.i127
  br i1 %.not.i136, label %.lr.ph24.i141.preheader, label %6

.lr.ph24.i141.preheader:                          ; preds = %.lr.ph.i134
  %i.oq = sub nsw i64 %wide.trip.count.i133, %indvars.iv.i135
  %xtraiter351 = and i64 %i.oq, 1
  %lcmp.mod352.not = icmp eq i64 %xtraiter351, 0
  br i1 %lcmp.mod352.not, label %.lr.ph24.i141.prol.loopexit, label %.lr.ph24.i141.prol

.lr.ph24.i141.prol:                               ; preds = %.lr.ph24.i141.preheader
  %indvars.iv.next27.i143.prol = add nsw i64 %wide.trip.count.i133, -1 ; 3 uses
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i143.prol
  %i.os = load i32, ptr %i.or, align 4
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %wide.trip.count.i133
  store i32 %i.os, ptr %i.ot, align 4
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i143.prol
  %i.ov = load i32, ptr %i.ou, align 4
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %wide.trip.count.i133
  store i32 %i.ov, ptr %i.ow, align 4
  br label %.lr.ph24.i141.prol.loopexit

.lr.ph24.i141.prol.loopexit:                      ; preds = %.lr.ph24.i141.prol, %.lr.ph24.i141.preheader
  %indvars.iv26.i142.unr = phi i64 [ %wide.trip.count.i133, %.lr.ph24.i141.preheader ], [ %indvars.iv.next27.i143.prol, %.lr.ph24.i141.prol ]
  %i.ox = add nsw i64 %wide.trip.count.i133, -1
  %i.oy = icmp eq i64 %indvars.iv.i135, %i.ox
  br i1 %i.oy, label %._crit_edge.i130, label %.lr.ph24.i141

6:                                                ; preds = %.lr.ph.i134
  %indvars.iv.next.i136 = add nuw nsw i64 %indvars.iv.i135, 1 ; 2 uses
  %exitcond.not.i137 = icmp eq i64 %indvars.iv.next.i136, %wide.trip.count.i133
  br i1 %exitcond.not.i137, label %._crit_edge.i130.loopexit235, label %.lr.ph.i134, !llvm.loop !135

._crit_edge.i130.loopexit235:                     ; preds = %6
  %i.oz = zext nneg i32 %i.nb to i64
  br label %._crit_edge.i130

._crit_edge.i130:                                 ; preds = %.lr.ph24.i141.prol.loopexit, %.lr.ph24.i141, %._crit_edge.i130.loopexit235, %.preheader.i129
  %.015.lcssa31.i130 = phi i64 [ 0, %.preheader.i129 ], [ %i.oz, %._crit_edge.i130.loopexit235 ], [ %indvars.iv.i135, %.lr.ph24.i141 ], [ %indvars.iv.i135, %.lr.ph24.i141.prol.loopexit ] ; 2 uses
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %.015.lcssa31.i130
  store i32 %.0.i126.a, ptr %i.pa, align 4
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.015.lcssa31.i130
  store i32 %.0.i127, ptr %i.pb, align 4
  %i.pc = add nsw i32 %i.nb, 1
  store i32 %i.pc, ptr %i.cy, align 4
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit145

.lr.ph24.i141:                                    ; preds = %.lr.ph24.i141.prol.loopexit, %.lr.ph24.i141
  %indvars.iv26.i142 = phi i64 [ %indvars.iv.next27.i143.1, %.lr.ph24.i141 ], [ %indvars.iv26.i142.unr, %.lr.ph24.i141.prol.loopexit ] ; 4 uses
  %indvars.iv.next27.i143 = add nsw i64 %indvars.iv26.i142, -1 ; 4 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i143
  %i.pe = load i32, ptr %i.pd, align 4
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv26.i142
  store i32 %i.pe, ptr %i.pf, align 4
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i143
  %i.ph = load i32, ptr %i.pg, align 4
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv26.i142
  store i32 %i.ph, ptr %i.pi, align 4
  %indvars.iv.next27.i143.1 = add nsw i64 %indvars.iv26.i142, -2 ; 4 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i143.1
  %i.pk = load i32, ptr %i.pj, align 4
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv.next27.i143
  store i32 %i.pk, ptr %i.pl, align 4
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i143.1
  %i.pn = load i32, ptr %i.pm, align 4
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %indvars.iv.next27.i143
  store i32 %i.pn, ptr %i.po, align 4
  %.not16.not.i144.1 = icmp sgt i64 %indvars.iv.next27.i143.1, %indvars.iv.i135
  br i1 %.not16.not.i144.1, label %.lr.ph24.i141, label %._crit_edge.i130, !llvm.loop !136

_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit145: ; preds = %._crit_edge.i130, %bb.bj, %_ZN2v88internal4wasm13FeedbackMaker15HasTargetCachedEi.exit
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1
  br label %bb.av, !llvm.loop !140

.critedge:                                        ; preds = %_ZNK2v88internal4wasm16CallSiteFeedback9num_casesEv.exit, %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit, %bb.ap, %bb.ao
  call void @_ZN2v88internal4wasm13FeedbackMaker12FinalizeCallEv(ptr noundef nonnull align 8 dereferenceable(82) %2)
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 2 ; 2 uses
  %i.pp = trunc nuw i64 %indvars.iv.next272 to i32
  %i.pq = icmp slt i32 %i.pp, %i.al
  br i1 %i.pq, label %bb.m, label %._crit_edge.loopexit, !llvm.loop !141

_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit97.thread: ; preds = %bb.a, %_ZN2v88internal12IsFixedArrayENS0_6TaggedINS0_6ObjectEEE.exit97, %_ZN2v88internal4wasm13FeedbackMakerD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm13FeedbackMaker24AddCallIndirectCandidateENS0_6TaggedINS0_6ObjectEEEi(ptr noundef nonnull align 8 dereferenceable(82) %0, i64 %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8112
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %1, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.e, align 8
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

bb.c:                                             ; preds = %bb.a
  %i.f = lshr i64 %1, 32
  %i.g = tail call noundef ptr @_ZN2v88internal4wasm34GetProcessWideWasmCodePointerTableEv() #29
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.f
  %i.j = load atomic i64, ptr %i.i monotonic, align 8
  %i.k = tail call noundef ptr @_ZN2v88internal4wasm18GetWasmCodeManagerEv() #29
  %i.l = tail call noundef ptr @_ZNK2v88internal4wasm15WasmCodeManager10LookupCodeEPNS0_7IsolateEm(ptr noundef nonnull align 8 dereferenceable(88) %i.k, ptr noundef null, i64 noundef %i.j) #29 ; 3 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, 263
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load i64, ptr %i.q, align 8
  %i.s = add i64 %i.r, 7
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load i64, ptr %i.t, align 8
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.x, align 8
  %.not12 = icmp eq ptr %i.m, %i.y
  br i1 %.not12, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %.critedge, label %bb.f

.critedge:                                        ; preds = %bb.d, %bb.c, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.ac, align 8
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4            ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.ag = icmp eq i32 %i.ae, 4
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1, !range !76
  %i.aj = trunc nuw i8 %i.ai to i1
  %or.cond.i = select i1 %i.ag, i1 true, i1 %i.aj
  br i1 %or.cond.i, label %bb.g, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.al = icmp sgt i32 %i.ae, 0
  br i1 %i.al, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.ae to i64 ; 7 uses
  br label %.lr.ph.i

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.ah, align 1
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

.lr.ph.i:                                         ; preds = %3, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %3 ] ; 7 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i
  %i.an = load i32, ptr %i.am, align 4
  %.not.i = icmp slt i32 %i.an, %2
  br i1 %.not.i, label %.lr.ph24.i.preheader, label %3

.lr.ph24.i.preheader:                             ; preds = %.lr.ph.i
  %i.ao = sub nsw i64 %wide.trip.count.i, %indvars.iv.i
  %xtraiter = and i64 %i.ao, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph24.i.prol.loopexit, label %.lr.ph24.i.prol

.lr.ph24.i.prol:                                  ; preds = %.lr.ph24.i.preheader
  %indvars.iv.next27.i.prol = add nsw i64 %wide.trip.count.i, -1 ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next27.i.prol
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %wide.trip.count.i
  store i32 %i.aq, ptr %i.ar, align 4
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next27.i.prol
  %i.at = load i32, ptr %i.as, align 4
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %wide.trip.count.i
  store i32 %i.at, ptr %i.au, align 4
  br label %.lr.ph24.i.prol.loopexit

.lr.ph24.i.prol.loopexit:                         ; preds = %.lr.ph24.i.prol, %.lr.ph24.i.preheader
  %indvars.iv26.i.unr = phi i64 [ %wide.trip.count.i, %.lr.ph24.i.preheader ], [ %indvars.iv.next27.i.prol, %.lr.ph24.i.prol ]
  %i.av = add nsw i64 %wide.trip.count.i, -1
  %i.aw = icmp eq i64 %indvars.iv.i, %i.av
  br i1 %i.aw, label %._crit_edge.i, label %.lr.ph24.i

3:                                                ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i.loopexit19, label %.lr.ph.i, !llvm.loop !135

._crit_edge.i.loopexit19:                         ; preds = %3
  %i.ax = zext nneg i32 %i.ae to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph24.i.prol.loopexit, %.lr.ph24.i, %._crit_edge.i.loopexit19, %.preheader.i
  %.015.lcssa31.i = phi i64 [ 0, %.preheader.i ], [ %i.ax, %._crit_edge.i.loopexit19 ], [ %indvars.iv.i, %.lr.ph24.i ], [ %indvars.iv.i, %.lr.ph24.i.prol.loopexit ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.015.lcssa31.i
  store i32 %i.aa, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.015.lcssa31.i
  store i32 %2, ptr %i.az, align 4
  %i.ba = add nsw i32 %i.ae, 1
  store i32 %i.ba, ptr %i.ad, align 4
  br label %_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit

.lr.ph24.i:                                       ; preds = %.lr.ph24.i.prol.loopexit, %.lr.ph24.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i.1, %.lr.ph24.i ], [ %indvars.iv26.i.unr, %.lr.ph24.i.prol.loopexit ] ; 4 uses
  %indvars.iv.next27.i = add nsw i64 %indvars.iv26.i, -1 ; 4 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next27.i
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv26.i
  store i32 %i.bc, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next27.i
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv26.i
  store i32 %i.bf, ptr %i.bg, align 4
  %indvars.iv.next27.i.1 = add nsw i64 %indvars.iv26.i, -2 ; 4 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next27.i.1
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next27.i
  store i32 %i.bi, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next27.i.1
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.next27.i
  store i32 %i.bl, ptr %i.bm, align 4
  %.not16.not.i.1 = icmp sgt i64 %indvars.iv.next27.i.1, %indvars.iv.i
  br i1 %.not16.not.i.1, label %.lr.ph24.i, label %._crit_edge.i, !llvm.loop !136

_ZN2v88internal4wasm13FeedbackMaker7AddCallEii.exit: ; preds = %.critedge, %bb.g, %._crit_edge.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal4wasm13FeedbackMaker12FinalizeCallEv(ptr noundef nonnull align 8 dereferenceable(82) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !range !76, !noundef !77
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 897), align 1, !range !76, !noundef !77
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i32, ptr %i.h, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.82, i32 noundef %i.g, i32 noundef %i.i) #29
  br label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit

_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit:  ; preds = %bb.c, %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8
  %i.m = sext i32 %i.l to i64
  %i.n = load ptr, ptr %i.j, align 8
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.m ; 4 uses
  store i32 -1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i8 0, ptr %i.q, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 5
  store i8 1, ptr %i.r, align 1
  %i.s = load i32, ptr %i.k, align 8
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.k, align 8
  br label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit32

bb.d:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4              ; 3 uses
  switch i32 %i.v, label %bb.i [
    i32 0, label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit21
    i32 1, label %bb.e
  ]

_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit21: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8
  %i.z = sext i32 %i.y to i64
  %i.aa = load ptr, ptr %i.w, align 8
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.z ; 4 uses
  store i32 -1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 0, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i8 0, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 5
  store i8 0, ptr %i.ae, align 1
  %i.af = load i32, ptr %i.x, align 8
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.x, align 8
  br label %_ZN2v88internal4wasm16CallSiteFeedbackD2Ev.exit32

bb.e:                                             ; preds = %bb.d
  %i.ah = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 897), align 1, !range !76, !noundef !77
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load i32, ptr %i.al, align 8
  tail call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.83, i32 noundef %i.ak, i32 noundef %i.am) #29
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i32, ptr %i.an, align 8            ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aq = load i32, ptr %i.ap, align 8            ; 2 uses
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.au = load i32, ptr %i.at, align 8
  %i.av = sext i32 %i.au to i64
  %i.aw = load ptr, ptr %i.as, align 8
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.aw, i64 %i.av ; 7 uses
  store i32 %i.ao, ptr %i.ax, align 8
  %i.ay = icmp slt i32 %i.ao, -1
  br i1 %i.ay, label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.lr.ph.i.i24, label %_ZN2v88internal4wasm13FeedbackMaker9AddResultENS1_16CallSiteFeedbackE.exit31

_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.lr.ph.i.i24: ; preds = %bb.g
  %i.az = sub nsw i32 0, %i.ao                    ; 2 uses
  %i.ba = zext nneg i32 %i.az to i64              ; 6 uses
  %i.bb = shl nuw nsw i64 %i.ba, 3                ; 3 uses
  %i.bc = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bb) #31 ; 10 uses
  %i.bd = inttoptr i64 %i.ar to ptr               ; 10 uses
  %min.iters.check = icmp ult i32 %i.az, 6
  br i1 %min.iters.check, label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.lr.ph.i.i24
  %scevgep = getelementptr i8, ptr %i.bc, i64 %i.bb
  %scevgep77 = getelementptr i8, ptr %i.bd, i64 %i.bb
  %bound0 = icmp ult ptr %i.bc, %scevgep77
  %bound1 = icmp ugt ptr %scevgep, %i.bd
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ba, 2147483644              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.be = or disjoint i64 %index, 2               ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %index
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  %wide.vec = load <4 x i32>, ptr %i.bf, align 4, !alias.scope !142
  %wide.vec79 = load <4 x i32>, ptr %i.bg, align 4, !alias.scope !142
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %index
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.be
  store <4 x i32> %wide.vec, ptr %i.bh, align 4, !alias.scope !145, !noalias !142
  store <4 x i32> %wide.vec79, ptr %i.bi, align 4, !alias.scope !145, !noalias !142
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ba
  br i1 %cmp.n, label %.loopexit118, label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.preheader

_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.preheader: ; preds = %vector.memcheck, %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.lr.ph.i.i24, %middle.block
  %indvars.iv.i.i26.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.lr.ph.i.i24 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ba, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol.loopexit, label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol

_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol: ; preds = %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.preheader, %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol
  %indvars.iv.i.i26.prol = phi i64 [ %indvars.iv.next.i.i28.prol, %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol ], [ %indvars.iv.i.i26.ph, %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol ], [ 0, %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.preheader ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i.i26.prol ; 2 uses
  %.0.i19.i.i27.prol = load i32, ptr %i.bk, align 4
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i.i26.prol ; 2 uses
  store i32 %.0.i19.i.i27.prol, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 %i.bn, ptr %i.bo, align 4
  %indvars.iv.next.i.i28.prol = add nuw nsw i64 %indvars.iv.i.i26.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol.loopexit, label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol, !llvm.loop !148

_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol.loopexit: ; preds = %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol, %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.preheader
  %indvars.iv.i.i26.unr = phi i64 [ %indvars.iv.i.i26.ph, %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.preheader ], [ %indvars.iv.next.i.i28.prol, %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol ]
  %i.bp = sub nsw i64 %indvars.iv.i.i26.ph, %i.ba
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %.loopexit118, label %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25

_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25: ; preds = %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25.prol.loopexit, %_ZNK2v88internal4wasm16CallSiteFeedback10call_countEi.exit.i.i25
end_hunk_0
