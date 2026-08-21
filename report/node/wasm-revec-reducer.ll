Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/wasm-revec-reducer?download=true
inline.NumInlined: 4282
inline.NumDeleted: 1948
loop-unroll.NumCompletelyUnrolled: 36
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer3RunEv:bb.a
  %i.bd = load ptr, ptr %i.bc, align 8            ; 4 uses
  store ptr %i.bd, ptr %1, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bh = ptrtoint ptr %i.bb to i64               ; 2 uses
  %i.bi = ptrtoint ptr %i.ba to i64               ; 3 uses
  %i.bj = sub i64 %i.bh, %i.bi                    ; 6 uses
  %.not.i = icmp eq ptr %i.bb, %i.ba
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  br i1 %.not.i, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %.loopexit
  %i.bk = getelementptr inbounds nuw i8, ptr null, i64 %i.bj ; 3 uses
  store ptr %i.bk, ptr %i.bg, align 8
  store ptr %i.bk, ptr %i.bf, align 8
  br label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EEC2IPS6_St26random_access_iterator_tagEET_SB_PNS0_4ZoneE.exit

bb.g:                                             ; preds = %.loopexit
  %i.bl = icmp sgt i64 %i.bj, -1
  br i1 %i.bl, label %bb.i, label %bb.h, !prof !19

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #23
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  %i.bq = sub i64 %i.bn, %i.bp
  %i.br = icmp ugt i64 %i.bj, %i.bq
  br i1 %i.br, label %bb.j, label %.lr.ph.preheader.i, !prof !20

bb.j:                                             ; preds = %bb.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i64 noundef %i.bj) #21
  %.pre.i.i.i = load i64, ptr %i.bo, align 8
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.j, %bb.i
  %i.bs = phi i64 [ %.pre.i.i.i, %bb.j ], [ %i.bp, %bb.i ] ; 6 uses
  %i.bt = inttoptr i64 %i.bs to ptr               ; 5 uses
  %i.bu = add i64 %i.bs, %i.bj
  store i64 %i.bu, ptr %i.bo, align 8
  store ptr %i.bt, ptr %i.be, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bj ; 5 uses
  store ptr %i.bv, ptr %i.bg, align 8
  store ptr %i.bv, ptr %i.bf, align 8
  %i.bw = add i64 %i.bs, %i.bh
  %i.bx = sub i64 %i.bw, %i.bi
  %i.by = add nuw i64 %i.bs, 8
  %i.bz = tail call i64 @llvm.umax.i64(i64 %i.bx, i64 %i.by)
  %i.ca = xor i64 %i.bs, -1
  %i.cb = add i64 %i.bz, %i.ca                    ; 2 uses
  %i.cc = lshr i64 %i.cb, 3
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cb, 72
  %i.ce = sub i64 %i.bi, %i.bs
  %diff.check = icmp ugt i64 %i.ce, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.cd, 4611686018427387900     ; 3 uses
  %i.cf = shl i64 %n.vec, 3                       ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bt, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.ba, i64 %i.cf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ci = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.ci ; 2 uses
  %next.gep72 = getelementptr i8, ptr %i.ba, i64 %i.ci ; 2 uses
  %i.cj = getelementptr i8, ptr %next.gep72, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep72, align 4
  %wide.load73 = load <2 x i64>, ptr %i.cj, align 4
  %i.ck = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load73, ptr %i.ck, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EEC2IPS6_St26random_access_iterator_tagEET_SB_PNS0_4ZoneE.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %.014.i.ph = phi ptr [ %i.bt, %.lr.ph.preheader.i ], [ %i.cg, %middle.block ]
  %.01113.i.ph = phi ptr [ %i.ba, %.lr.ph.preheader.i ], [ %i.ch, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.014.i = phi ptr [ %i.co, %.lr.ph.i ], [ %.014.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01113.i = phi ptr [ %i.cm, %.lr.ph.i ], [ %.01113.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.01113.i, i64 8
  %i.cn = load i64, ptr %.01113.i, align 4
  store i64 %i.cn, ptr %.014.i, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %.014.i, i64 8 ; 2 uses
  %i.cp = icmp ult ptr %i.co, %i.bv
  br i1 %i.cp, label %.lr.ph.i, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EEC2IPS6_St26random_access_iterator_tagEET_SB_PNS0_4ZoneE.exit, !llvm.loop !93

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EEC2IPS6_St26random_access_iterator_tagEET_SB_PNS0_4ZoneE.exit: ; preds = %.lr.ph.i, %middle.block, %.thread.i
  %i.cq = phi ptr [ %i.bk, %.thread.i ], [ %i.bv, %middle.block ], [ %i.bv, %.lr.ph.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cs = load ptr, ptr %i.cr, align 8            ; 10 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cu = load ptr, ptr %i.ct, align 8            ; 3 uses
  %i.cv = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cw = ptrtoint ptr %i.cs to i64               ; 10 uses
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.cz = call noundef ptr @_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE19PrepareForInsertionEPKS6_mPm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.cq, i64 noundef %i.cy, ptr noundef nonnull %i.a) ; 9 uses
  %i.da = ptrtoaddr ptr %i.cz to i64
  %i.db = load i64, ptr %i.a, align 8             ; 2 uses
  %.idx.i = shl i64 %i.db, 3                      ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx.i
  %.not.i35 = icmp eq i64 %i.db, 0
  br i1 %.not.i35, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16CopyingOverwriteEPS6_PKS6_SA_.exit.i, label %.lr.ph.i36.preheader

.lr.ph.i36.preheader:                             ; preds = %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EEC2IPS6_St26random_access_iterator_tagEET_SB_PNS0_4ZoneE.exit
  %i.dd = add i64 %.idx.i, %i.cw
  %i.de = add i64 %i.cw, 8
  %i.df = call i64 @llvm.umax.i64(i64 %i.dd, i64 %i.de)
  %i.dg = xor i64 %i.cw, -1
  %i.dh = add i64 %i.df, %i.dg                    ; 2 uses
  %i.di = lshr i64 %i.dh, 3
  %i.dj = add nuw nsw i64 %i.di, 1                ; 2 uses
  %min.iters.check78 = icmp ult i64 %i.dh, 152
  br i1 %min.iters.check78, label %.lr.ph.i36.preheader115, label %vector.memcheck75

vector.memcheck75:                                ; preds = %.lr.ph.i36.preheader
  %i.dk = add i64 %.idx.i, %i.cw
  %i.dl = add i64 %i.cw, 8
  %umax = call i64 @llvm.umax.i64(i64 %i.dk, i64 %i.dl)
  %i.dm = xor i64 %i.cw, -1
  %i.dn = add i64 %umax, %i.dm
  %i.do = and i64 %i.dn, -8
  %i.dp = add i64 %i.do, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.cz, i64 %i.dp
  %scevgep76 = getelementptr i8, ptr %i.cs, i64 %i.dp
  %bound0 = icmp ult ptr %i.cz, %scevgep76
  %bound1 = icmp ult ptr %i.cs, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i36.preheader115, label %vector.ph79

vector.ph79:                                      ; preds = %vector.memcheck75
  %n.vec80 = and i64 %i.dj, 4611686018427387900   ; 3 uses
  %i.dq = shl i64 %n.vec80, 3                     ; 2 uses
  %i.dr = getelementptr i8, ptr %i.cz, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.cs, i64 %i.dq
  br label %vector.body81

vector.body81:                                    ; preds = %vector.body81, %vector.ph79
  %index82 = phi i64 [ 0, %vector.ph79 ], [ %index.next92, %vector.body81 ] ; 2 uses
  %i.dt = shl i64 %index82, 3                     ; 3 uses
  %i.du = or disjoint i64 %i.dt, 16               ; 2 uses
  %next.gep83 = getelementptr i8, ptr %i.cz, i64 %i.dt
  %next.gep84 = getelementptr i8, ptr %i.cz, i64 %i.du
  %next.gep85 = getelementptr i8, ptr %i.cs, i64 %i.dt
  %next.gep86 = getelementptr i8, ptr %i.cs, i64 %i.du
  %wide.vec = load <4 x i32>, ptr %next.gep85, align 4, !alias.scope !94
  %wide.vec88 = load <4 x i32>, ptr %next.gep86, align 4, !alias.scope !94
  store <4 x i32> %wide.vec, ptr %next.gep83, align 4, !alias.scope !97, !noalias !94
  store <4 x i32> %wide.vec88, ptr %next.gep84, align 4, !alias.scope !97, !noalias !94
  %index.next92 = add nuw i64 %index82, 4         ; 2 uses
  %i.dv = icmp eq i64 %index.next92, %n.vec80
  br i1 %i.dv, label %middle.block93, label %vector.body81, !llvm.loop !99

middle.block93:                                   ; preds = %vector.body81
  %cmp.n94 = icmp eq i64 %i.dj, %n.vec80
  br i1 %cmp.n94, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16CopyingOverwriteEPS6_PKS6_SA_.exit.loopexit.i, label %.lr.ph.i36.preheader115

.lr.ph.i36.preheader115:                          ; preds = %vector.memcheck75, %.lr.ph.i36.preheader, %middle.block93
  %.0.i14.i.ph = phi ptr [ %i.cz, %vector.memcheck75 ], [ %i.cz, %.lr.ph.i36.preheader ], [ %i.dr, %middle.block93 ]
  %.07.i13.i.ph = phi ptr [ %i.cs, %vector.memcheck75 ], [ %i.cs, %.lr.ph.i36.preheader ], [ %i.ds, %middle.block93 ]
  br label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %.lr.ph.i36.preheader115, %.lr.ph.i36
  %.0.i14.i = phi ptr [ %i.ea, %.lr.ph.i36 ], [ %.0.i14.i.ph, %.lr.ph.i36.preheader115 ] ; 3 uses
  %.07.i13.i = phi ptr [ %i.eb, %.lr.ph.i36 ], [ %.07.i13.i.ph, %.lr.ph.i36.preheader115 ] ; 3 uses
  %i.dw = load i32, ptr %.07.i13.i, align 4
  store i32 %i.dw, ptr %.0.i14.i, align 4
  %i.dx = getelementptr inbounds nuw i8, ptr %.07.i13.i, i64 4
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i14.i, i64 4
  %i.dz = load i32, ptr %i.dx, align 4
  store i32 %i.dz, ptr %i.dy, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i14.i, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %.07.i13.i, i64 8 ; 2 uses
  %i.ec = icmp ult ptr %i.eb, %i.dc
  br i1 %i.ec, label %.lr.ph.i36, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16CopyingOverwriteEPS6_PKS6_SA_.exit.loopexit.i, !llvm.loop !100

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16CopyingOverwriteEPS6_PKS6_SA_.exit.loopexit.i: ; preds = %.lr.ph.i36, %middle.block93
  %.pre.i = load i64, ptr %i.a, align 8
  br label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16CopyingOverwriteEPS6_PKS6_SA_.exit.i

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16CopyingOverwriteEPS6_PKS6_SA_.exit.i: ; preds = %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16CopyingOverwriteEPS6_PKS6_SA_.exit.loopexit.i, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EEC2IPS6_St26random_access_iterator_tagEET_SB_PNS0_4ZoneE.exit
  %i.ed = phi i64 [ %.pre.i, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16CopyingOverwriteEPS6_PKS6_SA_.exit.loopexit.i ], [ 0, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EEC2IPS6_St26random_access_iterator_tagEET_SB_PNS0_4ZoneE.exit ] ; 4 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.ed ; 4 uses
  %i.ef = icmp ult ptr %i.ee, %i.cu
  br i1 %i.ef, label %.lr.ph17.preheader.i, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE6insertIPS6_St26random_access_iterator_tagEES9_PKS6_T_SD_.exit

.lr.ph17.preheader.i:                             ; preds = %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16CopyingOverwriteEPS6_PKS6_SA_.exit.i
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.ed ; 3 uses
  %i.eh = shl nuw nsw i64 %i.ed, 3
  %i.ei = add i64 %i.eh, %i.cw
  %i.ej = add i64 %i.ei, 8
  %i.ek = call i64 @llvm.umax.i64(i64 %i.cv, i64 %i.ej)
  %i.el = xor i64 %i.cw, -1
  %i.em = add i64 %i.ek, %i.el
  %4 = shl i64 %i.ed, 3
  %i.en = sub i64 %i.em, %4                       ; 2 uses
  %i.eo = lshr i64 %i.en, 3
  %i.ep = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %min.iters.check100 = icmp ult i64 %i.en, 72
  %i.eq = sub i64 %i.cw, %i.da
  %diff.check98 = icmp ugt i64 %i.eq, -32
  %or.cond114 = or i1 %min.iters.check100, %diff.check98
  br i1 %or.cond114, label %.lr.ph17.i.preheader, label %vector.ph101

vector.ph101:                                     ; preds = %.lr.ph17.preheader.i
  %n.vec102 = and i64 %i.ep, 4611686018427387900  ; 3 uses
  %i.er = shl i64 %n.vec102, 3                    ; 2 uses
  %i.es = getelementptr i8, ptr %i.eg, i64 %i.er
  %i.et = getelementptr i8, ptr %i.ee, i64 %i.er
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph101
  %index104 = phi i64 [ 0, %vector.ph101 ], [ %index.next109, %vector.body103 ] ; 2 uses
  %i.eu = shl i64 %index104, 3                    ; 2 uses
  %next.gep105 = getelementptr i8, ptr %i.eg, i64 %i.eu ; 2 uses
  %next.gep106 = getelementptr i8, ptr %i.ee, i64 %i.eu ; 2 uses
  %i.ev = getelementptr i8, ptr %next.gep106, i64 16
  %wide.load107 = load <2 x i64>, ptr %next.gep106, align 4
  %wide.load108 = load <2 x i64>, ptr %i.ev, align 4
  %i.ew = getelementptr i8, ptr %next.gep105, i64 16
  store <2 x i64> %wide.load107, ptr %next.gep105, align 4
  store <2 x i64> %wide.load108, ptr %i.ew, align 4
  %index.next109 = add nuw i64 %index104, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next109, %n.vec102
  br i1 %i.ex, label %middle.block110, label %vector.body103, !llvm.loop !101

middle.block110:                                  ; preds = %vector.body103
  %cmp.n111 = icmp eq i64 %i.ep, %n.vec102
  br i1 %cmp.n111, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE6insertIPS6_St26random_access_iterator_tagEES9_PKS6_T_SD_.exit, label %.lr.ph17.i.preheader

.lr.ph17.i.preheader:                             ; preds = %.lr.ph17.preheader.i, %middle.block110
  %.0.i1216.i.ph = phi ptr [ %i.eg, %.lr.ph17.preheader.i ], [ %i.es, %middle.block110 ]
  %.07.i1115.i.ph = phi ptr [ %i.ee, %.lr.ph17.preheader.i ], [ %i.et, %middle.block110 ]
  br label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %.lr.ph17.i.preheader, %.lr.ph17.i
  %.0.i1216.i = phi ptr [ %i.ez, %.lr.ph17.i ], [ %.0.i1216.i.ph, %.lr.ph17.i.preheader ] ; 2 uses
  %.07.i1115.i = phi ptr [ %i.fa, %.lr.ph17.i ], [ %.07.i1115.i.ph, %.lr.ph17.i.preheader ] ; 2 uses
  %i.ey = load i64, ptr %.07.i1115.i, align 4
  store i64 %i.ey, ptr %.0.i1216.i, align 4
  %i.ez = getelementptr inbounds nuw i8, ptr %.0.i1216.i, i64 8
  %i.fa = getelementptr inbounds nuw i8, ptr %.07.i1115.i, i64 8 ; 2 uses
  %i.fb = icmp ult ptr %i.fa, %i.cu
  br i1 %i.fb, label %.lr.ph17.i, label %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE6insertIPS6_St26random_access_iterator_tagEES9_PKS6_T_SD_.exit, !llvm.loop !102

_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE6insertIPS6_St26random_access_iterator_tagEES9_PKS6_T_SD_.exit: ; preds = %.lr.ph17.i, %middle.block110, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE16CopyingOverwriteEPS6_PKS6_SA_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.fc = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.fd = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not3155 = icmp eq ptr %i.fc, %i.fd
  br i1 %.not3155, label %._crit_edge58, label %.lr.ph57

.lr.ph57:                                         ; preds = %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE6insertIPS6_St26random_access_iterator_tagEES9_PKS6_T_SD_.exit
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.fi = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fk = getelementptr inbounds nuw i8, ptr %3, i64 48
  br label %bb.k

._crit_edge58:                                    ; preds = %bb.o, %_ZN2v88internal10ZoneVectorISt4pairINS0_8compiler10turboshaft7OpIndexES5_EE6insertIPS6_St26random_access_iterator_tagEES9_PKS6_T_SD_.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %bb.s, label %bb.p

bb.k:                                             ; preds = %.lr.ph57, %bb.o
  %.02756 = phi ptr [ %i.fc, %.lr.ph57 ], [ %i.gd, %bb.o ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.fo = load <2 x i32>, ptr %.02756, align 4
  store <2 x i32> %i.fo, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.fp = load ptr, ptr %i.b, align 8, !nonnull !13, !align !70
  %i.fq = load ptr, ptr %i.bc, align 8
  call void @_ZN2v88internal8compiler10turboshaft7SLPTreeC2ERNS2_5GraphEPNS2_17WasmRevecAnalyzerEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(224) %3, ptr noundef nonnull align 8 dereferenceable(328) %i.fp, ptr noundef nonnull %0, ptr noundef %i.fq)
  %i.fr = call noundef ptr @_ZN2v88internal8compiler10turboshaft7SLPTree12BuildTreeRecERKNS2_9NodeGroupEj(ptr noundef nonnull align 8 dereferenceable(224) %3, ptr noundef nonnull readonly align 4 dereferenceable(8) %2, i32 noundef 0) ; 2 uses
  store ptr %i.fr, ptr %i.fe, align 8
  %.not32 = icmp eq ptr %i.fr, null
  br i1 %.not32, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.fs = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 958), align 2, !range !12, !noundef !13
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__func__._ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer3RunEv, i32 noundef 1507) #21
  call void (ptr, ...) @_ZN2v88internal6PrintFEPKcz(ptr noundef nonnull @.str.61) #21
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  call void @_ZN2v88internal8compiler10turboshaft7SLPTree5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(224) %3, ptr noundef nonnull @.str.62)
  call void @_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer12MergeSLPTreeERNS2_7SLPTreeE(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull align 8 dereferenceable(224) %3)
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %i.fu = load ptr, ptr %i.ff, align 8
  %i.fv = load i64, ptr %i.fg, align 8
  %i.fw = shl i64 %i.fv, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fu, i8 0, i64 %i.fw, i1 false)
  %i.fx = load ptr, ptr %i.fh, align 8
  %i.fy = load i64, ptr %i.fi, align 8
  %i.fz = shl i64 %i.fy, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fx, i8 0, i64 %i.fz, i1 false)
  %i.ga = load ptr, ptr %i.fj, align 8
  %i.gb = load i64, ptr %i.fk, align 8
  %i.gc = shl i64 %i.gb, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ga, i8 0, i64 %i.gc, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.gd = getelementptr inbounds nuw i8, ptr %.02756, i64 8 ; 2 uses
  %.not31 = icmp eq ptr %i.gd, %i.fd
  br i1 %.not31, label %._crit_edge58, label %bb.k

bb.p:                                             ; preds = %._crit_edge58
  %i.ge = load ptr, ptr %i.bc, align 8            ; 3 uses
  %i.gf = load ptr, ptr %i.b, align 8, !nonnull !13, !align !70
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gh = load i64, ptr %i.gg, align 8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 3 uses
  %i.gj = load i64, ptr %i.gi, align 8            ; 2 uses
  %i.gk = sub i64 %i.gh, %i.gj
  %i.gl = icmp ult i64 %i.gk, 96
  br i1 %i.gl, label %bb.q, label %_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft13Simd128UseMapEJRNS4_5GraphERPS1_EEEPT_DpOT0_.exit, !prof !20

bb.q:                                             ; preds = %bb.p
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.ge, i64 noundef 96) #21
  %.pre.i.i = load i64, ptr %i.gi, align 8
  br label %_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft13Simd128UseMapEJRNS4_5GraphERPS1_EEEPT_DpOT0_.exit

_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft13Simd128UseMapEJRNS4_5GraphERPS1_EEEPT_DpOT0_.exit: ; preds = %bb.p, %bb.q
  %i.gm = phi i64 [ %.pre.i.i, %bb.q ], [ %i.gj, %bb.p ] ; 2 uses
  %i.gn = inttoptr i64 %i.gm to ptr               ; 2 uses
  %i.go = add i64 %i.gm, 96
  store i64 %i.go, ptr %i.gi, align 8
  %i.gp = load ptr, ptr %i.bc, align 8
  call void @_ZN2v88internal8compiler10turboshaft6UseMapC2ERKNS2_5GraphEPNS0_4ZoneEPFbS6_RKNS2_9OperationES8_E(ptr noundef nonnull align 8 dereferenceable(96) %i.gn, ptr noundef nonnull align 8 dereferenceable(328) %i.gf, ptr noundef %i.gp, ptr noundef nonnull @_ZZN2v88internal8compiler10turboshaft13Simd128UseMapC1ERKNS2_5GraphEPNS0_4ZoneEENUlS6_RKNS2_9OperationES8_E_8__invokeES6_SB_S8_) #21
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %i.gn, ptr %i.gq, align 8
  %i.gr = call noundef zeroext i1 @_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer15DecideVectorizeEv(ptr noundef nonnull align 8 dereferenceable(464) %0)
  br i1 %i.gr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft13Simd128UseMapEJRNS4_5GraphERPS1_EEEPT_DpOT0_.exit
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i8 1, ptr %i.gs, align 8
  call void @_ZN2v88internal8compiler10turboshaft17WasmRevecAnalyzer5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(464) %0, ptr noundef nonnull @.str.63)
  br label %bb.s

bb.s:                                             ; preds = %_ZN2v88internal4Zone3NewINS0_8compiler10turboshaft13Simd128UseMapEJRNS4_5GraphERPS1_EEEPT_DpOT0_.exit, %bb.r, %._crit_edge58
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.t

bb.t:                                             ; preds = %bb.d, %bb.c, %bb.s
  ret void
}

declare void @_ZNK2v88internal8compiler10turboshaft9Operation5PrintEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8compiler10turboshaft7SLPTreeC2ERNS2_5GraphEPNS2_17WasmRevecAnalyzerEPNS0_4ZoneE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %3, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = ptrtoint ptr %3 to i64                   ; 2 uses
  store i64 %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  store ptr %i.g, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.l = tail call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 noundef 0) #21 ; 5 uses
  %i.m = load i64, ptr %i.h, align 8
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %_ZN2v88internal16ZoneUnorderedMapINS0_8compiler10turboshaft7OpIndexEPNS3_8PackNodeENS_4base4hashIS4_EESt8equal_toIS4_EEC2EPNS0_4ZoneEm.exit

bb.b:                                             ; preds = %bb.a
  %i.o = icmp eq i64 %i.l, 1
  br i1 %i.o, label %bb.c, label %bb.d, !prof !20

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.g, align 8
  br label %_ZNSt10_HashtableIN2v88internal8compiler10turboshaft7OpIndexESt4pairIKS4_PNS3_8PackNodeEENS1_13ZoneAllocatorIS9_EENSt8__detail10_Select1stESt8equal_toIS4_ENS0_4base4hashIS4_EENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i.i
end_hunk_0
