Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/status_helper?download=true
inline.NumInlined: 840
inline.NumDeleted: 406
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZN4absl12lts_2025051219functional_internal12InvokeObjectIZN9grpc_core8internal13StatusToProtoERKNS0_6StatusEP9upb_ArenaE3$_0vJSt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordEEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE":bb.a
  %i.cu = icmp eq i8 %i.ct, 2
  br i1 %i.cu, label %bb.s, label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i.i.i.i.i, !prof !97

bb.s:                                             ; preds = %bb.r
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !204, !noalias !195 ; 2 uses
  %.phi.trans.insert.i.i.i.i26.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %.pre.i.i.i.i27.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i26.i.i.i.i, align 4, !tbaa !203, !noalias !195
  br label %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i.i.i.i.i

_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %i.cx = phi i8 [ %.pre.i.i.i.i27.i.i.i.i, %bb.s ], [ %i.ct, %bb.r ] ; 3 uses
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cw, %bb.s ], [ %i.cq, %bb.r ] ; 11 uses
  %i.cy = icmp eq i8 %i.cx, 3
  br i1 %i.cy, label %bb.t, label %bb.y

bb.t:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i.i.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 13
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !33, !noalias !195 ; 4 uses
  %i.db = zext i8 %i.da to i32
  store i32 %i.db, ptr %i.cn, align 8, !tbaa !196, !alias.scope !195
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 14
  %i.dd = load i8, ptr %i.dc, align 1, !noalias !195 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 5 uses
  %i.df = zext i8 %i.da to i64                    ; 5 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.df
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.dg, align 8, !tbaa !208, !alias.scope !195
  %i.dh = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.df
  store i8 %i.dd, ptr %i.di, align 1, !tbaa !33, !alias.scope !195
  %.018.i.i.i.i.i.i.i.i.i.i.i = zext i8 %i.dd to i64 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.da, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.t
  %xtraiter = and i64 %i.df, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.prol = add nsw i64 %i.df, -1 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 16
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.018.i.i.i.i.i.i.i.i.i.i.i
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !210, !noalias !195 ; 3 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.prol
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !208, !alias.scope !195
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 14
  %i.do = load i8, ptr %i.dn, align 1, !noalias !195 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.prol
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !33, !alias.scope !195
  %.0.i.i.i.i.i.i.i.i.i.i.i.prol = zext i8 %i.do to i64 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.df, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.dq = icmp eq i8 %i.da, 1
  br i1 %i.dq, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.021.i.i.i.i.i.i.i.i.i.i.i
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !210, !noalias !195 ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !208, !alias.scope !195
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 14
  %i.dw = load i8, ptr %i.dv, align 1, !noalias !195 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !33, !alias.scope !195
  %.0.i.i.i.i.i.i.i.i.i.i.i = zext i8 %i.dw to i64
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.0.i.i.i.i.i.i.i.i.i.i.i
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !210, !noalias !195 ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.1
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !208, !alias.scope !195
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 14
  %i.ed = load i8, ptr %i.ec, align 1, !noalias !195 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i.1
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !33, !alias.scope !195
  %.0.i.i.i.i.i.i.i.i.i.i.i.1 = zext i8 %i.ed to i64 ; 2 uses
  %i.ef = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.ef, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !211

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.t
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i.i.i.i.i.i, %bb.t ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.eg = load ptr, ptr %i.de, align 8, !tbaa !208, !alias.scope !195
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !210, !noalias !195 ; 5 uses
  %i.ek = load i64, ptr %.0.i.i.i.i.i.i.i.i.i, align 8, !tbaa !55, !noalias !195
  %i.el = load i64, ptr %i.ej, align 8, !tbaa !55, !noalias !195 ; 2 uses
  %i.em = sub i64 %i.ek, %i.el                    ; 2 uses
  store i64 %i.em, ptr %i.cm, align 8, !tbaa !212, !alias.scope !195
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 12
  %i.eo = load i8, ptr %i.en, align 4, !tbaa !203, !noalias !195 ; 2 uses
  %i.ep = icmp eq i8 %i.eo, 1
  br i1 %i.ep, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i.i.i.i.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !213, !noalias !195
  %i.es = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !215, !noalias !195 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %.pre.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !203, !noalias !195
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i.i.i.i.i
  %i.eu = phi i8 [ %.pre.i.i.i.i.i.i.i.i.i.i, %bb.u ], [ %i.eo, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i.i.i.i.i ]
  %.010.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.et, %bb.u ], [ %i.ej, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.er, %bb.u ], [ 0, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i.i.i.i.i ]
  %i.ev = icmp ugt i8 %i.eu, 5
  br i1 %i.ev, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ew = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.v
  %i.ex = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !216, !noalias !195
  br label %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i.i.i.i.i

_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.pn.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ew, %bb.w ], [ %i.ey, %bb.x ]
  %.sroa.3.0.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i.i.i.i.i, i64 %.0.i.i.i.i.i.i.i.i.i.i
  %.pre.pre.i.i.i.i = load i64, ptr %i.cl, align 8, !tbaa !198
  br label %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.i.i.i.i

bb.y:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i.i.i.i.i
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.ck, align 8, !tbaa !218, !alias.scope !195
  %i.ez = load i64, ptr %.0.i.i.i.i.i.i.i.i.i, align 8, !tbaa !55, !noalias !195 ; 2 uses
  %i.fa = icmp eq i8 %i.cx, 1
  br i1 %i.fa, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !213, !noalias !195
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i.i.i, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !215, !noalias !195 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %.pre.i.i.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i, align 4, !tbaa !203, !noalias !195
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ff = phi i8 [ %.pre.i.i.i.i.i.i.i.i.i, %bb.z ], [ %i.cx, %bb.y ]
  %.010.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fe, %bb.z ], [ %.0.i.i.i.i.i.i.i.i.i, %bb.y ] ; 2 uses
  %.0.i8.i.i.i.i.i.i.i.i = phi i64 [ %i.fc, %bb.z ], [ 0, %bb.y ]
  %i.fg = icmp ugt i8 %i.ff, 5
  br i1 %i.fg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i.i.i, i64 13
  br label %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.i.thread.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.fi = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i.i.i, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !216, !noalias !195
  br label %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.i.thread.i.i.i

_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.i.thread.i.i.i: ; preds = %bb.ac, %bb.ab
  %.pn.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fh, %bb.ab ], [ %i.fj, %bb.ac ]
  %.sroa.3.0.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i.i.i.i, i64 %.0.i8.i.i.i.i.i.i.i.i ; 2 uses
  store i64 %i.ez, ptr %5, align 8, !tbaa !31, !alias.scope !195
  %.sroa.4.0..sroa_idx.i.i.i.i.i3.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %.sroa.3.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i3.i.i.i, align 8, !tbaa !32, !alias.scope !195
  br label %.lr.ph.i.i.i.i

bb.ad:                                            ; preds = %upb_Arena_Malloc.exit25.i.i.i.i
  %i.fk = sext i8 %i.co to i64
  %i.fl = lshr i64 %i.fk, 1                       ; 3 uses
  store i64 %i.fl, ptr %i.cl, align 8, !tbaa !198, !alias.scope !195
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 1
  %spec.select.i.i.i.i.i.i.i.i = select i1 %i.cp, ptr null, ptr %i.fm
  br label %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.i.i.i.i

_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.i.i.i.i: ; preds = %bb.ad, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i.i.i.i.i
  %.sink.i.i.i.i.sink.i.i.i.i = phi i64 [ %i.fl, %bb.ad ], [ %i.el, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.3.0.i.sink.i.i.i.i.sink.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i.i.i, %bb.ad ], [ %.sroa.3.0.i.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fn = phi i64 [ 0, %bb.ad ], [ %i.em, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i.i.i.i.i ]
  %i.fo = phi i64 [ %i.fl, %bb.ad ], [ %.pre.pre.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  store i64 %.sink.i.i.i.i.sink.i.i.i.i, ptr %5, align 8, !tbaa !31, !alias.scope !195
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %.sroa.3.0.i.sink.i.i.i.i.sink.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !32, !alias.scope !195
  %.not62.i.i.i.i = icmp eq i64 %i.fo, 0
  br i1 %.not62.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.i.i.i.i, %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.i.thread.i.i.i
  %.sroa.4.0..sroa_idx.i.i.i.i.i7.i.i.i = phi ptr [ %.sroa.4.0..sroa_idx.i.i.i.i.i3.i.i.i, %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.i.thread.i.i.i ], [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.i.i.i.i ]
  %i.fp = phi i64 [ %i.cr, %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.i.thread.i.i.i ], [ %i.fo, %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.i.i.i.i ]
  %i.fq = phi i64 [ 0, %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.i.thread.i.i.i ], [ %i.fn, %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.i.i.i.i ]
  %.sroa.3.0.i.sink.i.i.i.i.sink.i6.i.i.i = phi ptr [ %.sroa.3.0.i.i.i.i.i.i.i.i.i, %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.i.thread.i.i.i ], [ %.sroa.3.0.i.sink.i.i.i.i.sink.i.i.i.i, %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.i.i.i.i ]
  %.sink.i.i.i.i.sink.i5.i.i.i = phi i64 [ %i.ez, %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.i.thread.i.i.i ], [ %.sink.i.i.i.i.sink.i.i.i.i, %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.i.i.i.i ]
  %i.fr = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 5 uses
  br label %bb.ag

._crit_edge.loopexit.i.i.i.i:                     ; preds = %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit.i.i.i.i, %bb.ag
  %.pre74.i.i.i.i = load i8, ptr %3, align 8, !tbaa !33
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.i.i.i.i, %bb.q
  %i.ft = phi i8 [ %.pre74.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.co, %_ZNK4absl12lts_202505124Cord10ChunkRange5beginEv.exit.i.i.i.i ], [ %i.co, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.fu = trunc i8 %i.ft to i1
  br i1 %i.fu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i.i.i
  %i.fv = load ptr, ptr %i.bi, align 8, !tbaa !33
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !55
  br label %"_ZSt6invokeIRKZN9grpc_core8internal13StatusToProtoERKN4absl12lts_202505126StatusEP9upb_ArenaE3$_0JSt17basic_string_viewIcSt11char_traitsIcEERKNS3_4CordEEENSt13invoke_resultIT_JDpT0_EE4typeEOSK_DpOSL_.exit"

bb.af:                                            ; preds = %._crit_edge.i.i.i.i
  %i.fx = sext i8 %i.ft to i64
  %i.fy = lshr exact i64 %i.fx, 1
  br label %"_ZSt6invokeIRKZN9grpc_core8internal13StatusToProtoERKN4absl12lts_202505126StatusEP9upb_ArenaE3$_0JSt17basic_string_viewIcSt11char_traitsIcEERKNS3_4CordEEENSt13invoke_resultIT_JDpT0_EE4typeEOSK_DpOSL_.exit"

bb.ag:                                            ; preds = %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.fz = phi i64 [ %i.fq, %.lr.ph.i.i.i.i ], [ %i.ih, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit.i.i.i.i ] ; 3 uses
  %.sroa.2.0.copyload.i.i.i.i.i = phi ptr [ %.sroa.3.0.i.sink.i.i.i.i.sink.i6.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.2.0.copyload.i71.i.i.i.i, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit.i.i.i.i ]
  %.sroa.0.0.copyload.i.i.i.i.i = phi i64 [ %.sink.i.i.i.i.sink.i5.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.0.copyload.i68.i.i.i.i, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit.i.i.i.i ] ; 4 uses
  %i.ga = phi i64 [ %i.fp, %.lr.ph.i.i.i.i ], [ %i.ig, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit.i.i.i.i ] ; 2 uses
  %.063.i.i.i.i = phi ptr [ %.0.i24.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.gb, %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit.i.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.063.i.i.i.i, ptr align 1 %.sroa.2.0.copyload.i.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i, i1 false)
  %i.gb = getelementptr inbounds nuw i8, ptr %.063.i.i.i.i, i64 %.sroa.0.0.copyload.i.i.i.i.i
  %i.gc = sub i64 %i.ga, %.sroa.0.0.copyload.i.i.i.i.i ; 3 uses
  store i64 %i.gc, ptr %i.cl, align 8, !tbaa !198
  %.not.i35.i.i.i.i = icmp eq i64 %i.ga, %.sroa.0.0.copyload.i.i.i.i.i
  br i1 %.not.i35.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gd = load i32, ptr %i.cn, align 8, !tbaa !196 ; 2 uses
  %i.ge = icmp sgt i32 %i.gd, -1
  br i1 %i.ge, label %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i.i.i.i.i, label %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i.i.i.i

_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i.i.i.i.i: ; preds = %bb.ah
  %i.gf = zext nneg i32 %i.gd to i64              ; 2 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gf
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !208
  %.not2.i.i.i.i.i = icmp eq ptr %i.gh, null
  br i1 %.not2.i.i.i.i.i, label %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i.i.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i.i.i.i.i
  %i.gi = icmp eq i64 %i.fz, 0
  br i1 %i.gi, label %_ZN4absl12lts_202505124Cord13ChunkIterator12AdvanceBtreeEv.exit.i.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.gj = load ptr, ptr %i.fr, align 8, !tbaa !208 ; 2 uses
  %i.gk = load i8, ptr %i.fs, align 4, !tbaa !33  ; 2 uses
  %i.gl = zext i8 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 15
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !33
  %i.go = zext i8 %i.gn to i64
  %i.gp = add nsw i64 %i.go, -1
  %i.gq = icmp eq i64 %i.gp, %i.gl
  br i1 %i.gq, label %.preheader.i.i.i.i, label %bb.am

.preheader.i.i.i.i:                               ; preds = %bb.aj, %.preheader.i.i.i.i
  %indvars.iv37.i.i.i.i.i.i.i.i.i = phi i32 [ %indvars.iv.next38.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i ], [ 1, %bb.aj ] ; 2 uses
  %indvars.iv.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i ], [ 0, %bb.aj ] ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp ne i64 %indvars.iv.i.i.i.i.i.i.i.i.i, %i.gf
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i, 1 ; 4 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !208 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fs, i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !33
  %i.gv = zext i8 %i.gu to i64
  %i.gw = add nuw nsw i64 %i.gv, 1                ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gs, i64 15
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !33
  %i.gz = zext i8 %i.gy to i64
  %i.ha = icmp eq i64 %i.gw, %i.gz
  %indvars.iv.next38.i.i.i.i.i.i.i.i.i = add nuw i32 %indvars.iv37.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ha, label %.preheader.i.i.i.i, label %bb.ak, !llvm.loop !219

bb.ak:                                            ; preds = %.preheader.i.i.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fs, i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i
  %6 = trunc i64 %i.gw to i8
  store i8 %6, ptr %i.hb, align 1, !tbaa !33
  %7 = sext i32 %indvars.iv37.i.i.i.i.i.i.i.i.i to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %indvars.iv40.i.i.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next41.i.i.i.i.i.i.i.i.i.a, %bb.al ], [ %7, %bb.ak ] ; 2 uses
  %.017.i.i.i.i.i.i.i.i.i = phi ptr [ %i.he, %bb.al ], [ %i.gs, %bb.ak ]
  %.016.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hi, %bb.al ], [ %i.gw, %bb.ak ]
  %i.hc = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.i.i.i.i, i64 16
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %.016.i.i.i.i.i.i.i.i.i
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !210 ; 4 uses
  %indvars.iv.next41.i.i.i.i.i.i.i.i.i.a = add nsw i64 %indvars.iv40.i.i.i.i.i.i.i.i.i, -1 ; 3 uses
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %indvars.iv.next41.i.i.i.i.i.i.i.i.i.a
  store ptr %i.he, ptr %i.hf, align 8, !tbaa !208
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 14
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !33  ; 2 uses
  %i.hi = zext i8 %i.hh to i64                    ; 2 uses
  %i.hj = getelementptr inbounds i8, ptr %i.fs, i64 %indvars.iv.next41.i.i.i.i.i.i.i.i.i.a
  store i8 %i.hh, ptr %i.hj, align 1, !tbaa !33
  %i.hk = icmp sgt i64 %indvars.iv40.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.hk, label %bb.al, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i.i.i.i.i, !llvm.loop !220

bb.am:                                            ; preds = %bb.aj
  %i.hl = add i8 %i.gk, 1                         ; 2 uses
  store i8 %i.hl, ptr %i.fs, align 4, !tbaa !33
  %i.hm = zext i8 %i.hl to i64
  br label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i.i.i.i

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i.i.i.i.i: ; preds = %bb.al
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.cm, align 8, !tbaa !212
  br label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i.i.i.i

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i.i.i.i.i, %bb.am
  %i.hn = phi i64 [ %i.fz, %bb.am ], [ %.pre.i.i.i.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i.i.i.i.i ]
  %.lcssa12.sink.i.i.i.i.i.i.i.i = phi ptr [ %i.gj, %bb.am ], [ %i.he, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i.i.i.i.i ]
  %.lcssa.sink.i.i.i.i.i.i.i.i = phi i64 [ %i.hm, %bb.am ], [ %i.hi, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i.i.i.i.i ]
  %i.ho = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i.i.i.i.i.i.i.i, i64 16
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %.lcssa.sink.i.i.i.i.i.i.i.i
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !210 ; 5 uses
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !55 ; 2 uses
  %i.hs = sub i64 %i.hn, %i.hr                    ; 2 uses
  store i64 %i.hs, ptr %i.cm, align 8, !tbaa !212
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  %i.hu = load i8, ptr %i.ht, align 4, !tbaa !203 ; 2 uses
  %i.hv = icmp eq i8 %i.hu, 1
  br i1 %i.hv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i.i.i.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !213
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !215 ; 2 uses
  %.phi.trans.insert.i.i.i.i36.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  %.pre.i.i.i.i37.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i36.i.i.i.i, align 4, !tbaa !203
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i.i.i.i
  %i.ia = phi i8 [ %.pre.i.i.i.i37.i.i.i.i, %bb.an ], [ %i.hu, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i.i.i.i ]
  %.010.i.i.i.i.i.i.i.i = phi ptr [ %i.hz, %bb.an ], [ %i.hq, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.hx, %bb.an ], [ 0, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i.i.i.i.i ]
  %i.ib = icmp ugt i8 %i.ia, 5
  br i1 %i.ib, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ic = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.id = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i.i.i, i64 16
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !216
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i.i.i.i

_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i.i.i.i: ; preds = %bb.aq, %bb.ap
  %.pn.i.i.i.i.i.i.i.i = phi ptr [ %i.ic, %bb.ap ], [ %i.ie, %bb.aq ]
  %.sroa.3.0.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i.i.i, i64 %.0.i.i.i.i.i.i.i.i
  %.pre73.pre.i.i.i.i = load i64, ptr %i.cl, align 8, !tbaa !198
  br label %_ZN4absl12lts_202505124Cord13ChunkIterator12AdvanceBtreeEv.exit.i.i.i.i.i

_ZN4absl12lts_202505124Cord13ChunkIterator12AdvanceBtreeEv.exit.i.i.i.i.i: ; preds = %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i.i.i.i, %bb.ai
  %.pre73.i.i.i.i = phi i64 [ %.pre73.pre.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i.i.i.i ], [ %i.gc, %bb.ai ]
  %i.if = phi i64 [ %i.hs, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i.i.i.i ], [ 0, %bb.ai ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.hr, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i.i.i.i ], [ 0, %bb.ai ] ; 2 uses
  %.sroa.3.0.i.i.i.i.i.i.i = phi ptr [ %.sroa.3.0.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i.i.i.i ], [ null, %bb.ai ] ; 2 uses
  store i64 %.sroa.0.0.i.i.i.i.i.i.i, ptr %5, align 8, !tbaa !31
  store ptr %.sroa.3.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i7.i.i.i, align 8, !tbaa !32
  br label %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit.i.i.i.i

_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.i.i.i.i.i, %bb.ah
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %5, i8 0, i64 16, i1 false)
  br label %_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit.i.i.i.i

_ZN4absl12lts_202505124Cord13ChunkIteratorppEv.exit.i.i.i.i: ; preds = %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i.i.i.i, %_ZN4absl12lts_202505124Cord13ChunkIterator12AdvanceBtreeEv.exit.i.i.i.i.i
  %i.ig = phi i64 [ %i.gc, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i.i.i.i ], [ %.pre73.i.i.i.i, %_ZN4absl12lts_202505124Cord13ChunkIterator12AdvanceBtreeEv.exit.i.i.i.i.i ] ; 2 uses
  %i.ih = phi i64 [ %i.fz, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i.i.i.i ], [ %i.if, %_ZN4absl12lts_202505124Cord13ChunkIterator12AdvanceBtreeEv.exit.i.i.i.i.i ]
  %.sroa.2.0.copyload.i71.i.i.i.i = phi ptr [ null, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i.i, %_ZN4absl12lts_202505124Cord13ChunkIterator12AdvanceBtreeEv.exit.i.i.i.i.i ]
  %.sroa.0.0.copyload.i68.i.i.i.i = phi i64 [ 0, %_ZNK4absl12lts_2025051213cord_internal18CordRepBtreeReadercvbEv.exit.thread.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %_ZN4absl12lts_202505124Cord13ChunkIterator12AdvanceBtreeEv.exit.i.i.i.i.i ]
  %.not.i.i.i.i = icmp eq i64 %i.ig, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, label %bb.ag

"_ZSt6invokeIRKZN9grpc_core8internal13StatusToProtoERKN4absl12lts_202505126StatusEP9upb_ArenaE3$_0JSt17basic_string_viewIcSt11char_traitsIcEERKNS3_4CordEEENSt13invoke_resultIT_JDpT0_EE4typeEOSK_DpOSL_.exit": ; preds = %bb.i, %bb.j, %_ZNK4absl12lts_202505124Cord7TryFlatEv.exit.thread54.i.i.i.i, %bb.ae, %bb.af
  %.0.i24.sink.i.i.i.i = phi ptr [ null, %bb.i ], [ %.sroa.544.0.copyload.i.i.i.i, %_ZNK4absl12lts_202505124Cord7TryFlatEv.exit.thread54.i.i.i.i ], [ %i.bm, %bb.j ], [ %.0.i24.i.i.i.i, %bb.ae ], [ %.0.i24.i.i.i.i, %bb.af ]
  %.sink.i.i.i.i = phi i64 [ %i.bl, %bb.i ], [ %.sroa.043.0.copyload.i.i.i.i, %_ZNK4absl12lts_202505124Cord7TryFlatEv.exit.thread54.i.i.i.i ], [ %i.bo, %bb.j ], [ %i.fw, %bb.ae ], [ %i.fy, %bb.af ]
  %i.ii = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 24
  store ptr %.0.i24.sink.i.i.i.i, ptr %i.ii, align 1
  %.sroa.56.0..sroa_idx.i32.i.i.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 32
  store i64 %.sink.i.i.i.i, ptr %.sroa.56.0..sroa_idx.i32.i.i.i.i, align 1
  ret void
}

declare zeroext i1 @_upb_Array_Realloc_dont_copy_me__upb_internal_use_only(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress norecurse nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { noreturn nounwind }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTSN4absl12lts_202505126StatusE", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSN4absl12lts_202505126StatusE", !13, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!15, !18, i64 4}
!15 = !{!"_ZTSN4absl12lts_2025051215status_internal9StatusRepE", !16, i64 0, !18, i64 4, !19, i64 8, !22, i64 40}
!16 = !{!"_ZTSSt6atomicIiE", !17, i64 0}
!17 = !{!"_ZTSSt13__atomic_baseIiE", !5, i64 0}
!18 = !{!"_ZTSN4absl12lts_2025051210StatusCodeE", !6, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !13, i64 8, !6, i64 16}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !21, i64 0}
!21 = !{!"p1 omnipotent char", !10, i64 0}
!22 = !{!"_ZTSSt10unique_ptrIN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EE", !23, i64 0}
!23 = !{!"_ZTSSt15__uniq_ptr_dataIN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_ELb1ELb1EE", !24, i64 0}
!24 = !{!"_ZTSSt15__uniq_ptr_implIN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EE", !25, i64 0}
!25 = !{!"_ZTSSt5tupleIJPN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EEE", !26, i64 0}
!26 = !{!"_ZTSSt11_Tuple_implILm0EJPN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEESt14default_deleteIS6_EEE", !27, i64 0}
!27 = !{!"_ZTSSt10_Head_baseILm0EPN4absl12lts_2025051213InlinedVectorINS1_15status_internal7PayloadELm1ESaIS4_EEELb0EE", !28, i64 0}
!28 = !{!"p1 _ZTSN4absl12lts_2025051213InlinedVectorINS0_15status_internal7PayloadELm1ESaIS3_EEE", !10, i64 0}
!29 = !{!19, !21, i64 0}
!30 = !{!19, !13, i64 8}
!31 = !{!13, !13, i64 0}
!32 = !{!21, !21, i64 0}
!33 = !{!6, !6, i64 0}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZN9grpc_core12_GLOBAL__N_117ReplaceStatusCodeERKN4absl12lts_202505126StatusENS2_10StatusCodeE: argument 0"}
!36 = distinct !{!36, !"_ZN9grpc_core12_GLOBAL__N_117ReplaceStatusCodeERKN4absl12lts_202505126StatusENS2_10StatusCodeE"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZNSt7__cxx119to_stringEl: argument 0"}
!39 = distinct !{!39, !"_ZNSt7__cxx119to_stringEl"}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!20, !21, i64 0}
!43 = distinct !{!43, !41}
!44 = !{i64 0, i64 16, !33}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZNK4absl12lts_202505126Status10GetPayloadESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!47 = distinct !{!47, !"_ZNK4absl12lts_202505126Status10GetPayloadESt17basic_string_viewIcSt11char_traitsIcEE"}
!48 = !{!49, !50, i64 16}
!49 = !{!"_ZTSSt22_Optional_payload_baseIN4absl12lts_202505124CordEE", !6, i64 0, !50, i64 16}
!50 = !{!"bool", !6, i64 0}
!51 = !{i8 0, i8 2}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNK4absl12lts_202505124Cord7TryFlatEv: argument 0"}
!54 = distinct !{!54, !"_ZNK4absl12lts_202505124Cord7TryFlatEv"}
!55 = !{!56, !13, i64 0}
!56 = !{!"_ZTSN4absl12lts_2025051213cord_internal7CordRepE", !13, i64 0, !57, i64 8, !6, i64 12, !6, i64 13}
!57 = !{!"_ZTSN4absl12lts_2025051213cord_internal16RefcountAndFlagsE", !16, i64 0}
!58 = !{}
!59 = !{!60, !60, i64 0}
!60 = !{!"p1 _ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !10, i64 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZN4absl12lts_2025051216strings_internal9JoinRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISA_SaISA_EEEEEESA_T_SH_St17basic_string_viewIcS8_E: argument 0"}
!65 = distinct !{!65, !"_ZN4absl12lts_2025051216strings_internal9JoinRangeIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISA_SaISA_EEEEEESA_T_SH_St17basic_string_viewIcS8_E"}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZN4absl12lts_2025051216strings_internal13JoinAlgorithmIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISA_SaISA_EEEEvEESA_T_SH_St17basic_string_viewIcS8_ENS1_11NoFormatterE: argument 0"}
!68 = distinct !{!68, !"_ZN4absl12lts_2025051216strings_internal13JoinAlgorithmIN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorISA_SaISA_EEEEvEESA_T_SH_St17basic_string_viewIcS8_ENS1_11NoFormatterE"}
!69 = !{!67, !64, !70, !72}
!70 = distinct !{!70, !71, !"_ZN4absl12lts_2025051216strings_internal9JoinRangeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEES9_RKT_St17basic_string_viewIcS7_E: argument 0"}
!71 = distinct !{!71, !"_ZN4absl12lts_2025051216strings_internal9JoinRangeISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEES9_RKT_St17basic_string_viewIcS7_E"}
!72 = distinct !{!72, !73, !"_ZN4absl12lts_202505127StrJoinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_St17basic_string_viewIcS6_E: argument 0"}
!73 = distinct !{!73, !"_ZN4absl12lts_202505127StrJoinISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEES8_RKT_St17basic_string_viewIcS6_E"}
!74 = !{!67, !64}
!75 = distinct !{!75, !41}
!76 = distinct !{!76, !41}
!77 = !{!78, !62, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !62, i64 0, !62, i64 8, !62, i64 16}
!79 = !{!78, !62, i64 8}
!80 = distinct !{!80, !41}
!81 = !{!78, !62, i64 16}
end_hunk_0
