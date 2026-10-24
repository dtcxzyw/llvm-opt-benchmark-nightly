Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/miniz_oxide-4bb6cbd72a4a2a9a.miniz_oxide.e11ffb1e97ec6fa2-cgu.1?download=true
inline.NumInlined: 150
inline.NumDeleted: 97
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompress:bb.a
.lr.ph.i:                                         ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %.not.i.not.i.i = icmp eq i64 %.promoted14.i861, 0
  br i1 %.not.i.not.i.i, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_.exit.i

._crit_edge.i:                                    ; preds = %bb.h, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_.exit.i
  %.promoted14.i860 = phi i64 [ %i.cz, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_.exit.i ], [ %.promoted14.i861, %bb.h ]
  %i.cp = phi ptr [ %i.da, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_.exit.i ], [ %i.cn, %bb.h ] ; 5 uses
  %i.cq = phi i64 [ %i.df, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_.exit.i ], [ %.promoted12.i, %bb.h ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.dg, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_.exit.i ], [ %.promoted.i, %bb.h ]
  %i.cr = lshr i64 %i.cq, 3
  store i64 %i.cr, ptr %i.d, align 8, !alias.scope !318
  %i.cs = add i32 %.lcssa.i, -3
  store i32 %i.cs, ptr %i.y, align 8, !alias.scope !318
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  %i.ct = trunc i64 %i.cq to i8                   ; 2 uses
  %i.cu = and i8 %i.ct, 1
  store i8 %i.cu, ptr %i.ag, align 2, !alias.scope !325
  %i.cv = lshr i8 %i.ct, 1
  %i.cw = and i8 %i.cv, 3                         ; 2 uses
  store i8 %i.cw, ptr %i.as, align 1, !alias.scope !325
  switch i8 %i.cw, label %default.unreachable [
    i8 0, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread.loopexit.split.loop.exit845
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
  ], !prof !6

default.unreachable:                              ; preds = %._crit_edge.i
  unreachable

bb.i:                                             ; preds = %._crit_edge.i
  store i16 288, ptr %i.ao, align 8, !alias.scope !326
  store i16 32, ptr %i.ap, align 2, !alias.scope !326
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.aq, i8 8, i64 144, i1 false), !alias.scope !326
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.bb, i8 9, i64 112, i1 false), !alias.scope !326
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i8 7, i64 24, i1 false), !alias.scope !326
  store i64 578721382704613384, ptr %i.bd, align 8, !alias.scope !326
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i8 5, i64 32, i1 false), !alias.scope !326
  %i.cx = call fastcc { i8, i8 } @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9init_tree(ptr noalias nofree noundef nonnull align 8 dereferenceable(10504) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !319 ; 3 uses
  %i.cy = extractvalue { i8, i8 } %i.cx, 0        ; 2 uses
  switch i8 %i.cy, label %.loopexit [
    i8 -1, label %.thread442
    i8 0, label %bb.h
    i8 1, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread.loopexit.split.loop.exit
    i8 2, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit.split.loop.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i
  store ptr %i.cp, ptr %i.f, align 8
  store i32 0, ptr %i.aa, align 8, !alias.scope !327
  br label %.backedge.backedge

bb.k:                                             ; preds = %._crit_edge.i
  store ptr %i.cp, ptr %i.f, align 8
  br label %.backedge.backedge

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_.exit.i: ; preds = %.lr.ph.i
  %i.cz = add i64 %.promoted14.i861, -1           ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  store i64 %i.cz, ptr %i.m, align 8, !alias.scope !328
  %i.db = load i8, ptr %i.cn, align 1, !noalias !329, !noundef !4
  %i.dc = zext i8 %i.db to i64
  %i.dd = zext nneg i32 %.promoted.i to i64
  %i.de = shl nuw nsw i64 %i.dc, %i.dd
  %i.df = or i64 %i.de, %.promoted12.i
  %i.dg = or disjoint i32 %.promoted.i, 8
  br label %._crit_edge.i

bb.l:                                             ; preds = %.backedge
  %i.dh = load i32, ptr %i.aa, align 8, !noundef !4
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %.backedge.backedge, label %bb.bk

bb.m:                                             ; preds = %.backedge
  %i.dj = load i64, ptr %i.m, align 8, !alias.scope !330, !noundef !4 ; 3 uses
  %.not129 = icmp eq i64 %i.dj, 0
  br i1 %.not129, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412, label %bb.bl

thread-pre-split:                                 ; preds = %.backedge
  %.pr = load i32, ptr %i.aa, align 8             ; 3 uses
  %i.dk = icmp ult i32 %.pr, 3
  br i1 %i.dk, label %.lr.ph828.preheader, label %._crit_edge829

.lr.ph828.preheader:                              ; preds = %thread-pre-split
  %.promoted821 = load i64, ptr %i.m, align 8     ; 4 uses
  %.promoted818 = load ptr, ptr %i.f, align 8     ; 2 uses
  %.promoted816 = load i64, ptr %i.d, align 8     ; 2 uses
  %.promoted814 = load i32, ptr %i.y, align 8     ; 4 uses
  %i.dl = zext nneg i32 %.pr to i64               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 5, ptr %i.c, align 4
  store i32 5, ptr %i.ax, align 4
  store i32 4, ptr %i.ay, align 4
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !noundef !4 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.do = icmp ult i32 %.promoted814, %i.dn
  br i1 %i.do, label %.lr.ph.i262, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit

bb.n:                                             ; preds = %.preheader477, %bb.bt
  %.promoted12.i278793 = phi i64 [ %.promoted789, %.preheader477 ], [ %.promoted12.i278790, %bb.bt ] ; 5 uses
  %i.dp = phi ptr [ %.promoted783, %.preheader477 ], [ %i.wc, %bb.bt ] ; 5 uses
  %i.dq = load i32, ptr %i.aa, align 8, !noundef !4 ; 4 uses
  %i.dr = load i16, ptr %i.av, align 4, !noundef !4
  %i.ds = zext i16 %i.dr to i32
  %i.dt = icmp ult i32 %i.dq, %i.ds
  br i1 %i.dt, label %bb.br, label %bb.bq

bb.o:                                             ; preds = %.preheader481, %bb.cs
  %.lcssa750774 = phi ptr [ %.promoted770, %.preheader481 ], [ %.lcssa750771, %bb.cs ] ; 10 uses
  %.lcssa754763 = phi i64 [ %.promoted759, %.preheader481 ], [ %.lcssa754760, %bb.cs ] ; 10 uses
  %i.du = load i32, ptr %i.aa, align 8, !noundef !4 ; 5 uses
  %i.dv = load i16, ptr %i.ao, align 8, !noundef !4 ; 3 uses
  %i.dw = zext i16 %i.dv to i32
  %i.dx = load i16, ptr %i.ap, align 2, !noundef !4
  %i.dy = zext i16 %i.dx to i32
  %i.dz = add nuw nsw i32 %i.dy, %i.dw            ; 2 uses
  %i.ea = icmp ult i32 %i.du, %i.dz
  br i1 %i.ea, label %bb.bv, label %bb.bu

bb.p:                                             ; preds = %.backedge
  %i.eb = load i8, ptr %i.ac, align 4, !noundef !4
  %i.ec = zext i8 %i.eb to i32                    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %.promoted.i176 = load i32, ptr %i.y, align 8, !alias.scope !333 ; 3 uses
  %i.ed = icmp ult i32 %.promoted.i176, %i.ec
  br i1 %i.ed, label %.lr.ph.i182, label %.._crit_edge_crit_edge.i177

.._crit_edge_crit_edge.i177:                      ; preds = %bb.p
  %.pre.i178 = load i64, ptr %i.d, align 8, !alias.scope !333
  br label %._crit_edge.i179

.lr.ph.i182:                                      ; preds = %bb.p
  %.promoted12.i183 = load i64, ptr %i.m, align 8, !alias.scope !336 ; 2 uses
  %.not.i.not.i.i184735 = icmp eq i64 %.promoted12.i183, 0
  br i1 %.not.i.not.i.i184735, label %.lr.ph.i182._crit_edge, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_.exit.i.preheader

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_.exit.i.preheader: ; preds = %.lr.ph.i182
  %.promoted9.i = load ptr, ptr %i.f, align 8, !alias.scope !334
  %.promoted10.i = load i64, ptr %i.d, align 8, !alias.scope !333
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_.exit.i

._crit_edge.i179.loopexit:                        ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_.exit.i
  store ptr %i.fi, ptr %i.f, align 8
  store i64 %i.fh, ptr %i.m, align 8
  br label %._crit_edge.i179

._crit_edge.i179:                                 ; preds = %._crit_edge.i179.loopexit, %.._crit_edge_crit_edge.i177
  %i.ee = phi i64 [ %.pre.i178, %.._crit_edge_crit_edge.i177 ], [ %i.fo, %._crit_edge.i179.loopexit ] ; 2 uses
  %.lcssa.i180 = phi i32 [ %.promoted.i176, %.._crit_edge_crit_edge.i177 ], [ %i.fp, %._crit_edge.i179.loopexit ]
  %i.ef = and i32 %i.ec, 63
  %i.eg = zext nneg i32 %i.ef to i64              ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.eg
  %i.eh = xor i64 %notmask.i, -1
  %i.ei = and i64 %i.ee, %i.eh
  %i.ej = lshr i64 %i.ee, %i.eg
  store i64 %i.ej, ptr %i.d, align 8, !alias.scope !333
  %i.ek = sub nuw i32 %.lcssa.i180, %i.ec
  store i32 %i.ek, ptr %i.y, align 8, !alias.scope !333
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !339
  store i64 3, ptr %i.b, align 8, !noalias !339
  store i64 11, ptr %i.an, align 8, !noalias !339
  %i.el = load i32, ptr %i.z, align 4, !alias.scope !340, !noundef !4 ; 2 uses
  %i.em = and i32 %i.el, 2
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !339, !noundef !4
  %i.eq = add i64 %i.ep, %i.ei                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !339
  %i.er = icmp eq i32 %i.el, 16
  %i.es = load i32, ptr %i.aa, align 8, !alias.scope !340 ; 3 uses
  br i1 %i.er, label %bb.q, label %._crit_edge.i.i

bb.q:                                             ; preds = %._crit_edge.i179
  %i.et = add i32 %i.es, 511
  %i.eu = and i32 %i.et, 511
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !alias.scope !341, !noundef !4
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.q, %._crit_edge.i179
  %.sroa.03.0.i.i = phi i8 [ %i.ex, %bb.q ], [ 0, %._crit_edge.i179 ]
  %i.ey = zext i32 %i.es to i64                   ; 2 uses
  %i.ez = add i64 %i.eq, %i.ey
  %i.fa = and i64 %i.ey, 511                      ; 4 uses
  %i.fb = and i64 %i.ez, 511                      ; 3 uses
  %i.fc = icmp samesign ult i64 %i.fb, %i.fa
  br i1 %i.fc, label %bb.r, label %bb.ct, !prof !7

bb.r:                                             ; preds = %._crit_edge.i.i
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.fa, i64 noundef %i.fb, i64 noundef 512, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #10, !noalias !339
  unreachable

bb.s:                                             ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_.exit.i
  %.not.i.not.i.i184 = icmp eq i64 %i.fh, 0
  br i1 %.not.i.not.i.i184, label %._crit_edge739, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_.exit.i

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_.exit.i: ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_.exit.i.preheader, %bb.s
  %i.fd = phi i64 [ %i.fo, %bb.s ], [ %.promoted10.i, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_.exit.i.preheader ]
  %i.fe = phi ptr [ %i.fi, %bb.s ], [ %.promoted9.i, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_.exit.i.preheader ] ; 2 uses
  %i.ff = phi i32 [ %i.fp, %bb.s ], [ %.promoted.i176, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_.exit.i.preheader ] ; 2 uses
  %i.fg = phi i64 [ %i.fh, %bb.s ], [ %.promoted12.i183, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_.exit.i.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.fh = add i64 %i.fg, -1                       ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 1 ; 2 uses
  %i.fj = load i8, ptr %i.fe, align 1, !noalias !346, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  %i.fk = zext i8 %i.fj to i64
  %i.fl = and i32 %i.ff, 63
  %i.fm = zext nneg i32 %i.fl to i64
  %i.fn = shl i64 %i.fk, %i.fm
  %i.fo = or i64 %i.fn, %i.fd                     ; 3 uses
  %i.fp = add nuw nsw i32 %i.ff, 8                ; 4 uses
  %i.fq = icmp ult i32 %i.fp, %i.ec
  br i1 %i.fq, label %bb.s, label %._crit_edge.i179.loopexit

bb.t:                                             ; preds = %.backedge
  %i.fr = load i32, ptr %i.aa, align 8, !noundef !4 ; 2 uses
  %i.fs = icmp ugt i32 %i.fr, 255
  br i1 %i.fs, label %.backedge.backedge, label %bb.dt

bb.u:                                             ; preds = %.backedge
  %i.ft = load i8, ptr %i.ac, align 4, !noundef !4
  %i.fu = zext i8 %i.ft to i32                    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %.promoted.i186 = load i32, ptr %i.y, align 8, !alias.scope !349 ; 3 uses
  %i.fv = icmp ult i32 %.promoted.i186, %i.fu
  br i1 %i.fv, label %.lr.ph.i194, label %.._crit_edge_crit_edge.i187

.._crit_edge_crit_edge.i187:                      ; preds = %bb.u
  %.pre.i188 = load i64, ptr %i.d, align 8, !alias.scope !349
  br label %bb.dw

.lr.ph.i194:                                      ; preds = %bb.u
  %.promoted12.i197 = load i64, ptr %i.m, align 8, !alias.scope !351 ; 2 uses
  %.not.i.not.i.i198678 = icmp eq i64 %.promoted12.i197, 0
  br i1 %.not.i.not.i.i198678, label %.lr.ph.i194._crit_edge, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_.exit.i.preheader

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_.exit.i.preheader: ; preds = %.lr.ph.i194
  %.promoted9.i196 = load ptr, ptr %i.f, align 8, !alias.scope !350
  %.promoted10.i195 = load i64, ptr %i.d, align 8, !alias.scope !349
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_.exit.i

bb.v:                                             ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_.exit.i
  %.not.i.not.i.i198 = icmp eq i64 %i.ga, 0
  br i1 %.not.i.not.i.i198, label %._crit_edge682, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_.exit.i

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_.exit.i: ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_.exit.i.preheader, %bb.v
  %i.fw = phi i64 [ %i.gh, %bb.v ], [ %.promoted10.i195, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_.exit.i.preheader ]
  %i.fx = phi ptr [ %i.gb, %bb.v ], [ %.promoted9.i196, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_.exit.i.preheader ] ; 2 uses
  %i.fy = phi i32 [ %i.gi, %bb.v ], [ %.promoted.i186, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_.exit.i.preheader ] ; 2 uses
  %i.fz = phi i64 [ %i.ga, %bb.v ], [ %.promoted12.i197, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_.exit.i.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.ga = add i64 %i.fz, -1                       ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 1 ; 2 uses
  %i.gc = load i8, ptr %i.fx, align 1, !noalias !356, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.gd = zext i8 %i.gc to i64
  %i.ge = and i32 %i.fy, 63
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = shl i64 %i.gd, %i.gf
  %i.gh = or i64 %i.gg, %i.fw                     ; 3 uses
  %i.gi = add nuw nsw i32 %i.fy, 8                ; 4 uses
  %i.gj = icmp ult i32 %i.gi, %i.fu
  br i1 %i.gj, label %bb.v, label %.loopexit490

bb.w:                                             ; preds = %.backedge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.gk = load i32, ptr %i.y, align 8, !alias.scope !360, !noundef !4 ; 12 uses
  %i.gl = icmp ult i32 %i.gk, 15
  br i1 %i.gl, label %bb.x, label %..critedge_crit_edge.i

..critedge_crit_edge.i:                           ; preds = %bb.w
  %.pre.i200 = load i64, ptr %i.d, align 8, !alias.scope !360
  br label %.critedge.i

bb.x:                                             ; preds = %bb.w
  %i.gm = load i64, ptr %i.m, align 8, !alias.scope !361, !noundef !4 ; 6 uses
  %i.gn = icmp ult i64 %i.gm, 2
  br i1 %i.gn, label %.preheader38.i, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i

.preheader38.i:                                   ; preds = %bb.x
  %.promoted.i203 = load i64, ptr %i.d, align 8, !alias.scope !360 ; 5 uses
  %.promoted47.i = load ptr, ptr %i.f, align 8, !alias.scope !361 ; 4 uses
  %i.go = icmp eq i64 %i.gm, 0
  %i.gp = zext nneg i32 %i.gk to i64              ; 3 uses
  %i.gq = and i64 %.promoted.i203, 1023
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.gq
  %i.gs = load i16, ptr %i.gr, align 2, !alias.scope !359, !noundef !4 ; 2 uses
  %i.gt = sext i16 %i.gs to i32                   ; 2 uses
  %i.gu = icmp sgt i16 %i.gs, -1
  br i1 %i.gu, label %bb.z, label %bb.y

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i: ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.gv = load ptr, ptr %i.f, align 8, !alias.scope !363, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.02.0.copyload.i.i = load i16, ptr %i.gv, align 1, !noalias !364
  %i.gw = add i64 %i.gm, -2
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 2
  store ptr %i.gx, ptr %i.f, align 8, !alias.scope !363, !captures !5
  store i64 %i.gw, ptr %i.m, align 8, !alias.scope !363
  %i.gy = zext i16 %.sroa.02.0.copyload.i.i to i64
  %i.gz = zext nneg i32 %i.gk to i64
  %i.ha = shl nuw nsw i64 %i.gy, %i.gz
  %i.hb = load i64, ptr %i.d, align 8, !alias.scope !360, !noundef !4
  %i.hc = or i64 %i.hb, %i.ha
  %i.hd = or disjoint i32 %i.gk, 16
  br label %.critedge.i

bb.y:                                             ; preds = %.preheader38.i
  %i.he = icmp ugt i32 %i.gk, 10
  br i1 %i.he, label %.preheader.i, label %.loopexit.i

bb.z:                                             ; preds = %.preheader38.i
  %i.hf = lshr i32 %i.gt, 9
  %i.hg = add nsw i32 %i.hf, -1
  %or.cond.i = icmp ugt i32 %i.gk, %i.hg
  br i1 %or.cond.i, label %.critedge.i.loopexit491.split.loop.exit, label %.loopexit.i

.preheader.i:                                     ; preds = %bb.y, %bb.ab
  %.sroa.08.0.i = phi i32 [ %i.ht, %bb.ab ], [ %i.gt, %bb.y ]
  %.sroa.05.0.i = phi i32 [ %i.hu, %bb.ab ], [ 10, %bb.y ] ; 3 uses
  %i.hh = xor i32 %.sroa.08.0.i, -1
  %i.hi = and i32 %.sroa.05.0.i, 63
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = lshr i64 %.promoted.i203, %i.hj
  %i.hl = trunc i64 %i.hk to i32
  %i.hm = and i32 %i.hl, 1
  %i.hn = add nuw nsw i32 %i.hm, %i.hh            ; 2 uses
  %i.ho = zext nneg i32 %i.hn to i64              ; 2 uses
  %i.hp = icmp samesign ult i32 %i.hn, 576
  br i1 %i.hp, label %bb.aa, label %.loopexit2011

bb.aa:                                            ; preds = %.preheader.i
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %i.ho
  %i.hr = load i16, ptr %i.hq, align 2, !alias.scope !359, !noundef !4 ; 2 uses
  %i.hs = icmp sgt i16 %i.hr, -1
  br i1 %i.hs, label %.critedge.i.loopexit, label %bb.ab

.loopexit2011:                                    ; preds = %.preheader.i.1, %.preheader.i
  %.lcssa1757 = phi i64 [ %i.ho, %.preheader.i ], [ %i.is, %.preheader.i.1 ]
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.lcssa1757, i64 noundef 576, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #10, !noalias !365
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.ht = sext i16 %i.hr to i32
  %i.hu = add i32 %.sroa.05.0.i, 1
  %i.hv = add i32 %.sroa.05.0.i, 2
  %i.hw = icmp ult i32 %i.gk, %i.hv
  br i1 %i.hw, label %.loopexit.i, label %.preheader.i

.loopexit.i:                                      ; preds = %bb.ab, %bb.z, %bb.y
  br i1 %i.go, label %.loopexit.i.1, label %bb.ac

bb.ac:                                            ; preds = %.loopexit.i
  %i.hx = getelementptr inbounds nuw i8, ptr %.promoted47.i, i64 1 ; 3 uses
  %i.hy = load i8, ptr %.promoted47.i, align 1, !noalias !366, !noundef !4
  %i.hz = zext i8 %i.hy to i64
  %i.ia = shl nuw nsw i64 %i.hz, %i.gp
  %i.ib = or i64 %i.ia, %.promoted.i203           ; 6 uses
  store i64 %i.ib, ptr %i.d, align 8, !alias.scope !360
  %indvars.iv.next = add nuw nsw i64 %i.gp, 8     ; 5 uses
  %i.ic = add nuw nsw i32 %i.gk, 8
  %i.id = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.id, ptr %i.y, align 8, !alias.scope !360
  %i.ie = icmp ugt i32 %i.gk, 6
  br i1 %i.ie, label %.critedge.i.loopexit491, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.if = and i64 %i.ib, 1023
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.if
  %i.ih = load i16, ptr %i.ig, align 2, !alias.scope !359, !noundef !4 ; 2 uses
  %i.ii = sext i16 %i.ih to i32                   ; 2 uses
  %i.ij = icmp sgt i16 %i.ih, -1
  br i1 %i.ij, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ik = icmp ugt i32 %i.gk, 2
  br i1 %i.ik, label %.preheader.i.1, label %.loopexit.i.1

.preheader.i.1:                                   ; preds = %bb.ae, %bb.ag
  %.sroa.08.0.i.1 = phi i32 [ %i.ix, %bb.ag ], [ %i.ii, %bb.ae ]
  %.sroa.05.0.i.1 = phi i32 [ %i.iy, %bb.ag ], [ 10, %bb.ae ] ; 3 uses
  %i.il = xor i32 %.sroa.08.0.i.1, -1
  %i.im = and i32 %.sroa.05.0.i.1, 63
  %i.in = zext nneg i32 %i.im to i64
  %i.io = lshr i64 %i.ib, %i.in
  %i.ip = trunc i64 %i.io to i32
  %i.iq = and i32 %i.ip, 1
  %i.ir = add nuw nsw i32 %i.iq, %i.il            ; 2 uses
  %i.is = zext nneg i32 %i.ir to i64              ; 2 uses
  %i.it = icmp samesign ult i32 %i.ir, 576
  br i1 %i.it, label %bb.af, label %.loopexit2011

bb.af:                                            ; preds = %.preheader.i.1
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %i.is
  %i.iv = load i16, ptr %i.iu, align 2, !alias.scope !359, !noundef !4 ; 2 uses
  %i.iw = icmp sgt i16 %i.iv, -1
  br i1 %i.iw, label %.critedge.i.loopexit.loopexit2014, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ix = sext i16 %i.iv to i32
  %i.iy = add i32 %.sroa.05.0.i.1, 1
  %i.iz = add i32 %.sroa.05.0.i.1, 2
  %i.ja = zext i32 %i.iz to i64
  %i.jb = icmp samesign ult i64 %indvars.iv.next, %i.ja
  br i1 %i.jb, label %.loopexit.i.1, label %.preheader.i.1

bb.ah:                                            ; preds = %bb.ad
  %i.jc = lshr i32 %i.ii, 9
  %i.jd = add nsw i32 %i.jc, -1
  %i.je = zext i32 %i.jd to i64
  %or.cond.i.1 = icmp samesign ugt i64 %indvars.iv.next, %i.je
  br i1 %or.cond.i.1, label %.critedge.i.loopexit491.split.loop.exit, label %.loopexit.i.1

.critedge.i.loopexit.loopexit2014:                ; preds = %bb.af
  %i.jf = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.critedge.i.loopexit

.critedge.i.loopexit:                             ; preds = %bb.aa, %.critedge.i.loopexit.loopexit2014
  %indvars.iv.lcssa1775 = phi i32 [ %i.jf, %.critedge.i.loopexit.loopexit2014 ], [ %i.gk, %bb.aa ]
  %.lcssa1771 = phi i64 [ 0, %.critedge.i.loopexit.loopexit2014 ], [ %i.gm, %bb.aa ]
  %.lcssa1766 = phi ptr [ %i.hx, %.critedge.i.loopexit.loopexit2014 ], [ %.promoted47.i, %bb.aa ]
  %.lcssa1761 = phi i64 [ %i.ib, %.critedge.i.loopexit.loopexit2014 ], [ %.promoted.i203, %bb.aa ]
  store ptr %.lcssa1766, ptr %i.f, align 8
  store i64 %.lcssa1771, ptr %i.m, align 8
  br label %.critedge.i

.critedge.i.loopexit491.split.loop.exit:          ; preds = %bb.ah, %bb.z
  %indvars.iv.lcssa1776 = phi i64 [ %i.gp, %bb.z ], [ %indvars.iv.next, %bb.ah ]
  %.lcssa1772 = phi i64 [ %i.gm, %bb.z ], [ 0, %bb.ah ]
  %.lcssa1767 = phi ptr [ %.promoted47.i, %bb.z ], [ %i.hx, %bb.ah ]
  %.lcssa1762 = phi i64 [ %.promoted.i203, %bb.z ], [ %i.ib, %bb.ah ]
  %i.jg = trunc nuw nsw i64 %indvars.iv.lcssa1776 to i32
  br label %.critedge.i.loopexit491

.critedge.i.loopexit491:                          ; preds = %bb.ac, %.critedge.i.loopexit491.split.loop.exit
  %i.jh = phi i64 [ %.lcssa1772, %.critedge.i.loopexit491.split.loop.exit ], [ 0, %bb.ac ]
  %i.ji = phi ptr [ %.lcssa1767, %.critedge.i.loopexit491.split.loop.exit ], [ %i.hx, %bb.ac ]
  %.ph492 = phi i32 [ %i.jg, %.critedge.i.loopexit491.split.loop.exit ], [ %i.ic, %bb.ac ]
  %.ph493 = phi i64 [ %.lcssa1762, %.critedge.i.loopexit491.split.loop.exit ], [ %i.ib, %bb.ac ]
  store ptr %i.ji, ptr %i.f, align 8
  store i64 %i.jh, ptr %i.m, align 8
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.i.loopexit491, %.critedge.i.loopexit, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i, %..critedge_crit_edge.i
  %i.jj = phi i32 [ %i.gk, %..critedge_crit_edge.i ], [ %indvars.iv.lcssa1775, %.critedge.i.loopexit ], [ %i.hd, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i ], [ %.ph492, %.critedge.i.loopexit491 ]
  %i.jk = phi i64 [ %.pre.i200, %..critedge_crit_edge.i ], [ %.lcssa1761, %.critedge.i.loopexit ], [ %i.hc, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i ], [ %.ph493, %.critedge.i.loopexit491 ] ; 3 uses
  %i.jl = and i64 %i.jk, 1023
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.jl
  %i.jn = load i16, ptr %i.jm, align 2, !alias.scope !359, !noundef !4 ; 2 uses
  %i.jo = sext i16 %i.jn to i32                   ; 3 uses
  %i.jp = icmp sgt i16 %i.jn, -1
  br i1 %i.jp, label %bb.ai, label %.preheader868

bb.ai:                                            ; preds = %.critedge.i
  %i.jq = lshr i32 %i.jo, 9
  %i.jr = and i32 %i.jo, 511
  br label %bb.ak

.preheader868:                                    ; preds = %.critedge.i, %bb.aj
  %.sroa.03.0.i.i201 = phi i8 [ %i.kf, %bb.aj ], [ 10, %.critedge.i ] ; 3 uses
  %.sroa.0.0.i30.i = phi i32 [ %i.ke, %bb.aj ], [ %i.jo, %.critedge.i ]
  %i.js = xor i32 %.sroa.0.0.i30.i, -1
  %i.jt = and i8 %.sroa.03.0.i.i201, 63
  %i.ju = zext nneg i8 %i.jt to i64
  %i.jv = lshr i64 %i.jk, %i.ju
  %i.jw = trunc i64 %i.jv to i32
  %i.jx = and i32 %i.jw, 1
  %i.jy = add nuw nsw i32 %i.jx, %i.js            ; 2 uses
  %i.jz = icmp samesign ult i32 %i.jy, 576
  br i1 %i.jz, label %bb.aj, label %.thread.i.i

.thread.i.i:                                      ; preds = %.preheader868
  %i.ka = add i8 %.sroa.03.0.i.i201, 1
  br label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i

bb.aj:                                            ; preds = %.preheader868
  %i.kb = zext nneg i32 %i.jy to i64
  %i.kc = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %i.kb
  %i.kd = load i16, ptr %i.kc, align 2, !alias.scope !367, !noundef !4 ; 2 uses
  %i.ke = sext i16 %i.kd to i32                   ; 2 uses
  %i.kf = add i8 %.sroa.03.0.i.i201, 1            ; 2 uses
  %i.kg = icmp sgt i16 %i.kd, -1
  br i1 %i.kg, label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i, label %.preheader868

_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i: ; preds = %bb.aj, %.thread.i.i
  %i.kh = phi i8 [ %i.ka, %.thread.i.i ], [ %i.kf, %bb.aj ]
  %.sroa.06.011.i.i = phi i32 [ 32767, %.thread.i.i ], [ %i.ke, %bb.aj ]
  %i.ki = zext i8 %i.kh to i32
  br label %bb.ak

bb.ak:                                            ; preds = %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i, %bb.ai
  %.sroa.018.0.i = phi i32 [ %i.jq, %bb.ai ], [ %i.ki, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i ] ; 2 uses
  %.sroa.013.0.i = phi i32 [ %i.jr, %bb.ai ], [ %.sroa.06.011.i.i, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i ] ; 4 uses
  %i.kj = and i32 %.sroa.018.0.i, 63
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = lshr i64 %i.jk, %i.kk
  store i64 %i.kl, ptr %i.d, align 8, !alias.scope !360
  %i.km = sub i32 %i.jj, %.sroa.018.0.i
  store i32 %i.km, ptr %i.y, align 8, !alias.scope !360
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.kn = icmp samesign ugt i32 %.sroa.013.0.i, 29
  br i1 %i.kn, label %.backedge.backedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ko = zext nneg i32 %.sroa.013.0.i to i64
  %i.kp = trunc nuw nsw i32 %.sroa.013.0.i to i8
  %i.kq = lshr i8 %i.kp, 1
  %i.kr = tail call i8 @llvm.usub.sat.i8(i8 %i.kq, i8 1)
  store i8 %i.kr, ptr %i.ac, align 4, !alias.scope !369
  %i.ks = getelementptr inbounds nuw [2 x i8], ptr @7, i64 %i.ko
  %i.kt = load i16, ptr %i.ks, align 2, !noalias !370, !noundef !4
  %i.ku = zext i16 %i.kt to i32
  store i32 %i.ku, ptr %i.z, align 4, !alias.scope !369
  %i.kv = icmp samesign ult i32 %.sroa.013.0.i, 4
  %..i31.i = select i1 %i.kv, i8 22, i8 16
  br label %.backedge.backedge

bb.am:                                            ; preds = %.backedge
  %i.kw = load i8, ptr %i.ac, align 4, !noundef !4
  %i.kx = zext i8 %i.kw to i32                    ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %.promoted.i206 = load i32, ptr %i.y, align 8, !alias.scope !371 ; 3 uses
  %i.ky = icmp ult i32 %.promoted.i206, %i.kx
  br i1 %i.ky, label %.lr.ph.i214, label %.._crit_edge_crit_edge.i207

.._crit_edge_crit_edge.i207:                      ; preds = %bb.am
  %.pre.i208 = load i64, ptr %i.d, align 8, !alias.scope !371
  br label %bb.dx

.lr.ph.i214:                                      ; preds = %bb.am
  %.promoted12.i217 = load i64, ptr %i.m, align 8, !alias.scope !373 ; 2 uses
  %.not.i.not.i.i218654 = icmp eq i64 %.promoted12.i217, 0
  br i1 %.not.i.not.i.i218654, label %.lr.ph.i214._crit_edge, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssc_0E0EB6_.exit.i.preheader

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssc_0E0EB6_.exit.i.preheader: ; preds = %.lr.ph.i214
  %.promoted9.i216 = load ptr, ptr %i.f, align 8, !alias.scope !372
  %.promoted10.i215 = load i64, ptr %i.d, align 8, !alias.scope !371
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssc_0E0EB6_.exit.i

end_hunk_0
begin_hunk_1_@_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompress:bb.a
  br i1 %.not.i.not.i.i248.1, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit476, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i.1

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i.1: ; preds = %.lr.ph.i244.1
  %i.od = add i64 %.promoted12.i247839, -1
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ny, i64 1
  %i.of = load i8, ptr %i.ny, align 1, !noalias !402, !noundef !4
  %i.og = zext i8 %i.of to i64
  %i.oh = zext nneg i32 %i.nz to i64
  %i.oi = shl nuw nsw i64 %i.og, %i.oh
  %i.oj = or i64 %i.oi, %.promoted10.i245833
  %i.ok = or disjoint i32 %i.nz, 8
  br label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i.1

_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i.1: ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i.1, %bb.bc
  %.promoted12.i247840.1 = phi i64 [ %i.od, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i.1 ], [ %.promoted12.i247839, %bb.bc ]
  %i.ol = phi ptr [ %i.oe, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i.1 ], [ %i.ny, %bb.bc ]
  %i.om = phi i64 [ %i.oj, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i.1 ], [ %.promoted10.i245833, %bb.bc ] ; 2 uses
  %.lcssa.i241.1 = phi i32 [ %i.ok, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i.1 ], [ %i.nz, %bb.bc ]
  %i.on = lshr i64 %i.om, 8                       ; 2 uses
  store i64 %i.on, ptr %i.d, align 8, !alias.scope !400
  %i.oo = add i32 %.lcssa.i241.1, -8              ; 2 uses
  store i32 %i.oo, ptr %i.y, align 8, !alias.scope !400
  %i.op = zext nneg i32 %i.oa to i64
  %i.oq = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.op
  %i.or = trunc i64 %i.om to i8
  store i8 %i.or, ptr %i.oq, align 1, !alias.scope !403
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_.exit.1

bb.bd:                                            ; preds = %bb.bb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %.not.i.not.i233.1 = icmp eq i64 %.promoted12.i247839, 0
  br i1 %.not.i.not.i233.1, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit476, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i.1

_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i.1: ; preds = %bb.bd
  %i.os = add i64 %.promoted12.i247839, -1
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ny, i64 1
  %i.ou = load i8, ptr %i.ny, align 1, !noalias !405, !noundef !4
  %i.ov = zext nneg i32 %i.oa to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ov
  store i8 %i.ou, ptr %i.ow, align 1, !alias.scope !406
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_.exit.1

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_.exit.1: ; preds = %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i.1, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i.1
  %.promoted12.i247839.1 = phi i64 [ %.promoted12.i247840.1, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i.1 ], [ %i.os, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i.1 ] ; 6 uses
  %i.ox = phi ptr [ %i.ol, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i.1 ], [ %i.ot, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i.1 ] ; 6 uses
  %.promoted10.i245833.1 = phi i64 [ %i.on, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i.1 ], [ %.promoted10.i245833, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i.1 ] ; 3 uses
  %i.oy = phi i32 [ %i.oo, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i.1 ], [ 0, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i.1 ] ; 6 uses
  %i.oz = add nuw nsw i32 %.promoted830, 2        ; 3 uses
  store i32 %i.oz, ptr %i.aa, align 8
  %i.pa = icmp ult i32 %.promoted830, 2
  br i1 %i.pa, label %bb.be, label %._crit_edge1735

bb.be:                                            ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_.exit.1
  %i.pb = icmp eq i32 %i.oy, 0
  br i1 %i.pb, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.pc = icmp ult i32 %i.oy, 8
  br i1 %i.pc, label %.lr.ph.i244.2, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i.2

.lr.ph.i244.2:                                    ; preds = %bb.bf
  %.not.i.not.i.i248.2 = icmp eq i64 %.promoted12.i247839.1, 0
  br i1 %.not.i.not.i.i248.2, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit476, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i.2

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i.2: ; preds = %.lr.ph.i244.2
  %i.pd = add i64 %.promoted12.i247839.1, -1
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ox, i64 1
  %i.pf = load i8, ptr %i.ox, align 1, !noalias !409, !noundef !4
  %i.pg = zext i8 %i.pf to i64
  %i.ph = zext nneg i32 %i.oy to i64
  %i.pi = shl nuw nsw i64 %i.pg, %i.ph
  %i.pj = or i64 %i.pi, %.promoted10.i245833.1
  %i.pk = or disjoint i32 %i.oy, 8
  br label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i.2

_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i.2: ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i.2, %bb.bf
  %.promoted12.i247840.2 = phi i64 [ %i.pd, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i.2 ], [ %.promoted12.i247839.1, %bb.bf ]
  %i.pl = phi ptr [ %i.pe, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i.2 ], [ %i.ox, %bb.bf ]
  %i.pm = phi i64 [ %i.pj, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i.2 ], [ %.promoted10.i245833.1, %bb.bf ] ; 2 uses
  %.lcssa.i241.2 = phi i32 [ %i.pk, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i.2 ], [ %i.oy, %bb.bf ]
  %i.pn = lshr i64 %i.pm, 8                       ; 2 uses
  store i64 %i.pn, ptr %i.d, align 8, !alias.scope !407
  %i.po = add i32 %.lcssa.i241.2, -8              ; 2 uses
  store i32 %i.po, ptr %i.y, align 8, !alias.scope !407
  %i.pp = zext nneg i32 %i.oz to i64
  %i.pq = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.pp
  %i.pr = trunc i64 %i.pm to i8
  store i8 %i.pr, ptr %i.pq, align 1, !alias.scope !410
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_.exit.2

bb.bg:                                            ; preds = %bb.be
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %.not.i.not.i233.2 = icmp eq i64 %.promoted12.i247839.1, 0
  br i1 %.not.i.not.i233.2, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit476, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i.2

_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i.2: ; preds = %bb.bg
  %i.ps = add i64 %.promoted12.i247839.1, -1
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ox, i64 1
  %i.pu = load i8, ptr %i.ox, align 1, !noalias !412, !noundef !4
  %i.pv = zext nneg i32 %i.oz to i64
  %i.pw = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.pv
  store i8 %i.pu, ptr %i.pw, align 1, !alias.scope !413
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_.exit.2

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_.exit.2: ; preds = %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i.2, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i.2
  %.promoted12.i247839.2 = phi i64 [ %.promoted12.i247840.2, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i.2 ], [ %i.ps, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i.2 ] ; 6 uses
  %i.px = phi ptr [ %i.pl, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i.2 ], [ %i.pt, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i.2 ] ; 6 uses
  %.promoted10.i245833.2 = phi i64 [ %i.pn, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i.2 ], [ %.promoted10.i245833.1, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i.2 ] ; 2 uses
  %i.py = phi i32 [ %i.po, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i.2 ], [ 0, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i.2 ] ; 6 uses
  %i.pz = add nuw nsw i32 %.promoted830, 3        ; 3 uses
  store i32 %i.pz, ptr %i.aa, align 8
  %i.qa = icmp eq i32 %.promoted830, 0
  br i1 %i.qa, label %bb.bh, label %._crit_edge1735

bb.bh:                                            ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_.exit.2
  %i.qb = icmp eq i32 %i.py, 0
  br i1 %i.qb, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.qc = icmp ult i32 %i.py, 8
  br i1 %i.qc, label %.lr.ph.i244.3, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i.3

.lr.ph.i244.3:                                    ; preds = %bb.bi
  %.not.i.not.i.i248.3 = icmp eq i64 %.promoted12.i247839.2, 0
  br i1 %.not.i.not.i.i248.3, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit476, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i.3

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i.3: ; preds = %.lr.ph.i244.3
  %i.qd = add i64 %.promoted12.i247839.2, -1
  %i.qe = getelementptr inbounds nuw i8, ptr %i.px, i64 1
  %i.qf = load i8, ptr %i.px, align 1, !noalias !416, !noundef !4
  %i.qg = zext i8 %i.qf to i64
  %i.qh = zext nneg i32 %i.py to i64
  %i.qi = shl nuw nsw i64 %i.qg, %i.qh
  %i.qj = or i64 %i.qi, %.promoted10.i245833.2
  %i.qk = or disjoint i32 %i.py, 8
  br label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i.3

_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i.3: ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i.3, %bb.bi
  %.promoted12.i247840.3 = phi i64 [ %i.qd, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i.3 ], [ %.promoted12.i247839.2, %bb.bi ]
  %i.ql = phi ptr [ %i.qe, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i.3 ], [ %i.px, %bb.bi ]
  %i.qm = phi i64 [ %i.qj, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i.3 ], [ %.promoted10.i245833.2, %bb.bi ] ; 2 uses
  %.lcssa.i241.3 = phi i32 [ %i.qk, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_.exit.i.3 ], [ %i.py, %bb.bi ]
  %i.qn = lshr i64 %i.qm, 8
  store i64 %i.qn, ptr %i.d, align 8, !alias.scope !414
  %i.qo = add i32 %.lcssa.i241.3, -8              ; 2 uses
  store i32 %i.qo, ptr %i.y, align 8, !alias.scope !414
  %i.qp = zext nneg i32 %i.pz to i64
  %i.qq = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.qp
  %i.qr = trunc i64 %i.qm to i8
  store i8 %i.qr, ptr %i.qq, align 1, !alias.scope !417
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_.exit.3

bb.bj:                                            ; preds = %bb.bh
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  %.not.i.not.i233.3 = icmp eq i64 %.promoted12.i247839.2, 0
  br i1 %.not.i.not.i233.3, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit476, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i.3

_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i.3: ; preds = %bb.bj
  %i.qs = add i64 %.promoted12.i247839.2, -1
  %i.qt = getelementptr inbounds nuw i8, ptr %i.px, i64 1
  %i.qu = load i8, ptr %i.px, align 1, !noalias !419, !noundef !4
  %i.qv = zext nneg i32 %i.pz to i64
  %i.qw = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.qv
  store i8 %i.qu, ptr %i.qw, align 1, !alias.scope !420
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_.exit.3

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_.exit.3: ; preds = %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i.3, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i.3
  %.promoted12.i247839.3 = phi i64 [ %.promoted12.i247840.3, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i.3 ], [ %i.qs, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i.3 ]
  %i.qx = phi ptr [ %i.ql, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i.3 ], [ %i.qt, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i.3 ]
  %i.qy = phi i32 [ %i.qo, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_.exit.i.3 ], [ 0, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_.exit.i.3 ]
  store i32 4, ptr %i.aa, align 8
  br label %._crit_edge1735

bb.bk:                                            ; preds = %bb.l
  %.val154 = load i64, ptr %i.p, align 8, !noundef !4
  %.val155 = load i64, ptr %i.q, align 8, !noundef !4
  %i.qz = icmp eq i64 %.val154, %.val155
  br i1 %i.qz, label %.thread442, label %.backedge.backedge

bb.bl:                                            ; preds = %bb.m
  %.val152 = load i64, ptr %i.p, align 8, !noundef !4 ; 3 uses
  %.val153 = load i64, ptr %i.q, align 8, !noundef !4 ; 5 uses
  %i.ra = sub i64 %.val152, %.val153
  %..i251 = tail call noundef i64 @llvm.umin.i64(i64 %i.dj, i64 %i.ra)
  %i.rb = load i32, ptr %i.aa, align 8, !noundef !4 ; 2 uses
  %i.rc = zext i32 %i.rb to i64
  %..i252 = tail call noundef i64 @llvm.umin.i64(i64 %i.rc, i64 %..i251) ; 6 uses
  %i.rd = load ptr, ptr %i.f, align 8, !alias.scope !421, !nonnull !4, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.re = add i64 %..i252, %.val153               ; 4 uses
  %i.rf = icmp ult i64 %i.re, %.val153
  %.not.i = icmp ugt i64 %i.re, %.val152
  %or.cond.i253 = or i1 %i.rf, %.not.i
  br i1 %or.cond.i253, label %bb.bm, label %_RNvXs5_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsjkkKzr5dxZe_11miniz_oxide.exit, !prof !8

bb.bm:                                            ; preds = %bb.bl
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.val153, i64 noundef %i.re, i64 noundef %.val152, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #10, !noalias !423
  unreachable

_RNvXs5_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsjkkKzr5dxZe_11miniz_oxide.exit: ; preds = %bb.bl
  %i.rg = load ptr, ptr %i.e, align 8, !alias.scope !422, !nonnull !4, !noundef !4
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 %.val153
  tail call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.rh, i64 noundef range(i64 0, -9223372036854775808) %..i252, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rd, i64 noundef range(i64 0, -9223372036854775808) %..i252, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11), !noalias !422
  store i64 %i.re, ptr %i.q, align 8, !alias.scope !422
  %i.ri = sub nuw nsw i64 %i.dj, %..i252
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rd, i64 %..i252
  store ptr %i.rj, ptr %i.f, align 8, !alias.scope !424, !captures !5
  store i64 %i.ri, ptr %i.m, align 8, !alias.scope !424
  %i.rk = trunc nuw i64 %..i252 to i32
  %i.rl = sub i32 %i.rb, %i.rk
  store i32 %i.rl, ptr %i.aa, align 8
  br label %.backedge.backedge

._crit_edge829:                                   ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.1, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.2, %thread-pre-split
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.aw, i8 0, i64 19, i1 false)
  store i32 0, ptr %i.aa, align 8
  %i.rm = load i16, ptr %i.ao, align 8, !noundef !4
  %i.rn = icmp ult i16 %i.rm, 287
  %i.ro = load i16, ptr %i.ap, align 2
  %i.rp = icmp ult i16 %i.ro, 31
  %or.cond6 = select i1 %i.rn, i1 %i.rp, i1 false
  %.137 = select i1 %or.cond6, i8 9, i8 27
  br label %.backedge.backedge

.lr.ph.i262:                                      ; preds = %.lr.ph828.preheader
  %.not.i.not.i.i266802 = icmp eq i64 %.promoted821, 0
  br i1 %.not.i.not.i.i266802, label %.lr.ph.i262._crit_edge, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_.exit.i

bb.bn:                                            ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_.exit.i
  %.not.i.not.i.i266 = icmp eq i64 %i.ru, 0
  br i1 %.not.i.not.i.i266, label %._crit_edge806, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_.exit.i

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_.exit.i: ; preds = %.lr.ph.i262, %bb.bn
  %i.rq = phi i64 [ %i.sb, %bb.bn ], [ %.promoted816, %.lr.ph.i262 ]
  %i.rr = phi ptr [ %i.rv, %bb.bn ], [ %.promoted818, %.lr.ph.i262 ] ; 2 uses
  %i.rs = phi i32 [ %i.sc, %bb.bn ], [ %.promoted814, %.lr.ph.i262 ] ; 2 uses
  %i.rt = phi i64 [ %i.ru, %bb.bn ], [ %.promoted821, %.lr.ph.i262 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.ru = add i64 %i.rt, -1                       ; 4 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rr, i64 1 ; 3 uses
  %i.rw = load i8, ptr %i.rr, align 1, !noalias !427, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  %i.rx = zext i8 %i.rw to i64
  %i.ry = and i32 %i.rs, 63
  %i.rz = zext nneg i32 %i.ry to i64
  %i.sa = shl i64 %i.rx, %i.rz
  %i.sb = or i64 %i.sa, %i.rq                     ; 3 uses
  %i.sc = add i32 %i.rs, 8                        ; 3 uses
  %i.sd = icmp ult i32 %i.sc, %i.dn
  br i1 %i.sd, label %bb.bn, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.loopexit

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.loopexit: ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_.exit.i
  store ptr %i.rv, ptr %i.f, align 8
  store i64 %i.ru, ptr %i.m, align 8
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit: ; preds = %.lr.ph828.preheader, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.loopexit
  %.lcssa801822 = phi i64 [ %i.ru, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.loopexit ], [ %.promoted821, %.lr.ph828.preheader ] ; 4 uses
  %.lcssa798819 = phi ptr [ %i.rv, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.loopexit ], [ %.promoted818, %.lr.ph828.preheader ] ; 2 uses
  %i.se = phi i64 [ %i.sb, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.loopexit ], [ %.promoted816, %.lr.ph828.preheader ] ; 2 uses
  %.lcssa.i258 = phi i32 [ %i.sc, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.loopexit ], [ %.promoted814, %.lr.ph828.preheader ]
  %i.sf = and i32 %i.dn, 63
  %i.sg = zext nneg i32 %i.sf to i64              ; 2 uses
  %i.sh = lshr i64 %i.se, %i.sg                   ; 3 uses
  store i64 %i.sh, ptr %i.d, align 8, !alias.scope !331
  %i.si = sub nuw i32 %.lcssa.i258, %i.dn         ; 5 uses
  store i32 %i.si, ptr %i.y, align 8, !alias.scope !331
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %notmask.i259 = shl nsw i64 -1, %i.sg
  %i.sj = xor i64 %notmask.i259, -1
  %i.sk = and i64 %i.se, %i.sj
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr @3, i64 %i.dl
  %i.sm = load i16, ptr %i.sl, align 2, !noalias !432, !noundef !4
  %i.sn = trunc i64 %i.sk to i16
  %i.so = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.dl
  %i.sp = add i16 %i.sm, %i.sn
  store i16 %i.sp, ptr %i.so, align 2, !alias.scope !433
  %indvars.iv.next1151 = add nuw nsw i64 %i.dl, 1 ; 5 uses
  %i.sq = trunc nuw i64 %indvars.iv.next1151 to i32
  store i32 %i.sq, ptr %i.aa, align 8, !alias.scope !434
  %exitcond.not = icmp eq i64 %indvars.iv.next1151, 3
  br i1 %exitcond.not, label %._crit_edge829, label %.lr.ph828.1

.lr.ph828.1:                                      ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 5, ptr %i.c, align 4
  store i32 5, ptr %i.ax, align 4
  store i32 4, ptr %i.ay, align 4
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next1151
  %i.ss = load i32, ptr %i.sr, align 4, !noundef !4 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.st = icmp ult i32 %i.si, %i.ss
  br i1 %i.st, label %.lr.ph.i262.1, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.1

.lr.ph.i262.1:                                    ; preds = %.lr.ph828.1
  %.not.i.not.i.i266802.1 = icmp eq i64 %.lcssa801822, 0
  br i1 %.not.i.not.i.i266802.1, label %.lr.ph.i262._crit_edge, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_.exit.i.1

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_.exit.i.1: ; preds = %.lr.ph.i262.1, %bb.bo
  %i.su = phi i64 [ %i.tf, %bb.bo ], [ %i.sh, %.lr.ph.i262.1 ]
  %i.sv = phi ptr [ %i.sz, %bb.bo ], [ %.lcssa798819, %.lr.ph.i262.1 ] ; 2 uses
  %i.sw = phi i32 [ %i.tg, %bb.bo ], [ %i.si, %.lr.ph.i262.1 ] ; 2 uses
  %i.sx = phi i64 [ %i.sy, %bb.bo ], [ %.lcssa801822, %.lr.ph.i262.1 ]
  %i.sy = add i64 %i.sx, -1                       ; 4 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sv, i64 1 ; 3 uses
  %i.ta = load i8, ptr %i.sv, align 1, !noalias !437, !noundef !4
  %i.tb = zext i8 %i.ta to i64
  %i.tc = and i32 %i.sw, 63
  %i.td = zext nneg i32 %i.tc to i64
  %i.te = shl i64 %i.tb, %i.td
  %i.tf = or i64 %i.te, %i.su                     ; 3 uses
  %i.tg = add i32 %i.sw, 8                        ; 3 uses
  %i.th = icmp ult i32 %i.tg, %i.ss
  br i1 %i.th, label %bb.bo, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.loopexit.1

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.loopexit.1: ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_.exit.i.1
  store ptr %i.sz, ptr %i.f, align 8
  store i64 %i.sy, ptr %i.m, align 8
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.1

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.1: ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.loopexit.1, %.lr.ph828.1
  %.lcssa801822.1 = phi i64 [ %i.sy, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.loopexit.1 ], [ %.lcssa801822, %.lr.ph828.1 ] ; 3 uses
  %.lcssa798819.1 = phi ptr [ %i.sz, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.loopexit.1 ], [ %.lcssa798819, %.lr.ph828.1 ]
  %i.ti = phi i64 [ %i.tf, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.loopexit.1 ], [ %i.sh, %.lr.ph828.1 ] ; 2 uses
  %.lcssa.i258.1 = phi i32 [ %i.tg, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.loopexit.1 ], [ %i.si, %.lr.ph828.1 ]
  %i.tj = and i32 %i.ss, 63
  %i.tk = zext nneg i32 %i.tj to i64              ; 2 uses
  %i.tl = lshr i64 %i.ti, %i.tk                   ; 3 uses
  store i64 %i.tl, ptr %i.d, align 8, !alias.scope !435
  %i.tm = sub nuw i32 %.lcssa.i258.1, %i.ss       ; 5 uses
  store i32 %i.tm, ptr %i.y, align 8, !alias.scope !435
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %notmask.i259.1 = shl nsw i64 -1, %i.tk
  %i.tn = xor i64 %notmask.i259.1, -1
  %i.to = and i64 %i.ti, %i.tn
  %i.tp = getelementptr inbounds nuw [2 x i8], ptr @3, i64 %indvars.iv.next1151
  %i.tq = load i16, ptr %i.tp, align 2, !noalias !440, !noundef !4
  %i.tr = trunc i64 %i.to to i16
  %i.ts = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %indvars.iv.next1151
  %i.tt = add i16 %i.tq, %i.tr
  store i16 %i.tt, ptr %i.ts, align 2, !alias.scope !441
  %indvars.iv.next1151.1 = add nuw nsw i64 %i.dl, 2 ; 5 uses
  %i.tu = trunc nuw i64 %indvars.iv.next1151.1 to i32
  store i32 %i.tu, ptr %i.aa, align 8, !alias.scope !442
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next1151.1, 3
  br i1 %exitcond.not.1, label %._crit_edge829, label %.lr.ph828.2

bb.bo:                                            ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_.exit.i.1
  %.not.i.not.i.i266.1 = icmp eq i64 %i.sy, 0
  br i1 %.not.i.not.i.i266.1, label %._crit_edge806, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_.exit.i.1

.lr.ph828.2:                                      ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 5, ptr %i.c, align 4
  store i32 5, ptr %i.ax, align 4
  store i32 4, ptr %i.ay, align 4
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next1151.1
  %i.tw = load i32, ptr %i.tv, align 4, !noundef !4 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  %i.tx = icmp ult i32 %i.tm, %i.tw
  br i1 %i.tx, label %.lr.ph.i262.2, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.2

.lr.ph.i262.2:                                    ; preds = %.lr.ph828.2
  %.not.i.not.i.i266802.2 = icmp eq i64 %.lcssa801822.1, 0
  br i1 %.not.i.not.i.i266802.2, label %.lr.ph.i262._crit_edge, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_.exit.i.2

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_.exit.i.2: ; preds = %.lr.ph.i262.2, %bb.bp
  %i.ty = phi i64 [ %i.uj, %bb.bp ], [ %i.tl, %.lr.ph.i262.2 ]
  %i.tz = phi ptr [ %i.ud, %bb.bp ], [ %.lcssa798819.1, %.lr.ph.i262.2 ] ; 2 uses
  %i.ua = phi i32 [ %i.uk, %bb.bp ], [ %i.tm, %.lr.ph.i262.2 ] ; 2 uses
  %i.ub = phi i64 [ %i.uc, %bb.bp ], [ %.lcssa801822.1, %.lr.ph.i262.2 ]
  %i.uc = add i64 %i.ub, -1                       ; 3 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 1 ; 2 uses
  %i.ue = load i8, ptr %i.tz, align 1, !noalias !445, !noundef !4
  %i.uf = zext i8 %i.ue to i64
  %i.ug = and i32 %i.ua, 63
  %i.uh = zext nneg i32 %i.ug to i64
  %i.ui = shl i64 %i.uf, %i.uh
  %i.uj = or i64 %i.ui, %i.ty                     ; 3 uses
  %i.uk = add i32 %i.ua, 8                        ; 3 uses
  %i.ul = icmp ult i32 %i.uk, %i.tw
  br i1 %i.ul, label %bb.bp, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.loopexit.2

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.loopexit.2: ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_.exit.i.2
  store ptr %i.ud, ptr %i.f, align 8
  store i64 %i.uc, ptr %i.m, align 8
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.2

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.2: ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.loopexit.2, %.lr.ph828.2
  %i.um = phi i64 [ %i.uj, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.loopexit.2 ], [ %i.tl, %.lr.ph828.2 ] ; 2 uses
  %.lcssa.i258.2 = phi i32 [ %i.uk, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_.exit.loopexit.2 ], [ %i.tm, %.lr.ph828.2 ]
  %i.un = and i32 %i.tw, 63
  %i.uo = zext nneg i32 %i.un to i64              ; 2 uses
  %i.up = lshr i64 %i.um, %i.uo
  store i64 %i.up, ptr %i.d, align 8, !alias.scope !443
  %i.uq = sub nuw i32 %.lcssa.i258.2, %i.tw
  store i32 %i.uq, ptr %i.y, align 8, !alias.scope !443
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %notmask.i259.2 = shl nsw i64 -1, %i.uo
  %i.ur = xor i64 %notmask.i259.2, -1
  %i.us = and i64 %i.um, %i.ur
  %i.ut = getelementptr inbounds nuw [2 x i8], ptr @3, i64 %indvars.iv.next1151.1
  %i.uu = load i16, ptr %i.ut, align 2, !noalias !448, !noundef !4
  %i.uv = trunc i64 %i.us to i16
  %i.uw = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %indvars.iv.next1151.1
  %i.ux = add i16 %i.uu, %i.uv
  store i16 %i.ux, ptr %i.uw, align 2, !alias.scope !449
  %indvars.iv.next1151.2 = add nuw nsw i32 %.pr, 3
  store i32 %indvars.iv.next1151.2, ptr %i.aa, align 8, !alias.scope !450
  br label %._crit_edge829

bb.bp:                                            ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_.exit.i.2
  %.not.i.not.i.i266.2 = icmp eq i64 %i.uc, 0
  br i1 %.not.i.not.i.i266.2, label %._crit_edge806, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_.exit.i.2

._crit_edge806:                                   ; preds = %bb.bp, %bb.bo, %bb.bn
  %.lcssa812815827.lcssa1947 = phi i32 [ %.promoted814, %bb.bn ], [ %i.si, %bb.bo ], [ %i.tm, %bb.bp ]
  %.lcssa801823824.lcssa1945 = phi i64 [ %.promoted821, %bb.bn ], [ %.lcssa801822, %bb.bo ], [ %.lcssa801822.1, %bb.bp ]
  %.lcssa1940 = phi i64 [ %i.sb, %bb.bn ], [ %i.tf, %bb.bo ], [ %i.uj, %bb.bp ]
  %i.uy = trunc i64 %.lcssa801823824.lcssa1945 to i32
  %i.uz = shl i32 %i.uy, 3
  %i.va = add i32 %.lcssa812815827.lcssa1947, %i.uz
  store i64 %.lcssa1940, ptr %i.d, align 8, !alias.scope !451
  store i32 %i.va, ptr %i.y, align 8, !alias.scope !452
  br label %.lr.ph.i262._crit_edge

.lr.ph.i262._crit_edge:                           ; preds = %.lr.ph.i262, %.lr.ph.i262.1, %.lr.ph.i262.2, %._crit_edge806
  store i64 0, ptr %i.m, align 8
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412

bb.bq:                                            ; preds = %bb.n
  store i16 19, ptr %i.av, align 4
  %i.vb = call fastcc { i8, i8 } @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9init_tree(ptr noalias nofree noundef align 8 dereferenceable(10504) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) ; 2 uses
  %i.vc = extractvalue { i8, i8 } %i.vb, 0        ; 2 uses
  %.not127 = icmp eq i8 %i.vc, -1
  br i1 %.not127, label %.thread442.loopexit, label %bb.bt

bb.br:                                            ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %.promoted.i268 = load i32, ptr %i.y, align 8, !alias.scope !453 ; 4 uses
  %i.vd = icmp ult i32 %.promoted.i268, 3
  br i1 %i.vd, label %.lr.ph.i275, label %.._crit_edge_crit_edge.i269

.._crit_edge_crit_edge.i269:                      ; preds = %bb.br
  %.pre.i270 = load i64, ptr %i.d, align 8, !alias.scope !453
  br label %._crit_edge.i271

.lr.ph.i275:                                      ; preds = %bb.br
  %.not.i.not.i.i279 = icmp eq i64 %.promoted12.i278793, 0
  br i1 %.not.i.not.i.i279, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss6_0EB6_.exit, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss6_0E0EB6_.exit.i

._crit_edge.i271:                                 ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss6_0E0EB6_.exit.i, %.._crit_edge_crit_edge.i269
  %.promoted12.i278792 = phi i64 [ %.promoted12.i278793, %.._crit_edge_crit_edge.i269 ], [ %i.vr, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss6_0E0EB6_.exit.i ]
  %i.ve = phi ptr [ %i.dp, %.._crit_edge_crit_edge.i269 ], [ %i.vs, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss6_0E0EB6_.exit.i ]
  %i.vf = phi i64 [ %.pre.i270, %.._crit_edge_crit_edge.i269 ], [ %i.vx, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss6_0E0EB6_.exit.i ] ; 2 uses
  %.lcssa.i272 = phi i32 [ %.promoted.i268, %.._crit_edge_crit_edge.i269 ], [ %i.vy, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss6_0E0EB6_.exit.i ]
  %i.vg = lshr i64 %i.vf, 3
  store i64 %i.vg, ptr %i.d, align 8, !alias.scope !453
  %i.vh = add i32 %.lcssa.i272, -3
  store i32 %i.vh, ptr %i.y, align 8, !alias.scope !453
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  %i.vi = zext nneg i32 %i.dq to i64              ; 2 uses
  %i.vj = icmp samesign ult i32 %i.dq, 19
  br i1 %i.vj, label %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss6_0B7_.exit.i, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge.i271
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.vi, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #10, !noalias !457
  unreachable

_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss6_0B7_.exit.i: ; preds = %._crit_edge.i271
  %i.vk = getelementptr inbounds nuw i8, ptr @4, i64 %i.vi
  %i.vl = load i8, ptr %i.vk, align 1, !noalias !457, !noundef !4
  %i.vm = zext i8 %i.vl to i64
  %i.vn = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.vm
  %i.vo = trunc i64 %i.vf to i8
  %i.vp = and i8 %i.vo, 7
  store i8 %i.vp, ptr %i.vn, align 1, !alias.scope !458
  %i.vq = add nuw nsw i32 %i.dq, 1
  store i32 %i.vq, ptr %i.aa, align 8, !alias.scope !459
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss6_0EB6_.exit

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss6_0E0EB6_.exit.i: ; preds = %.lr.ph.i275
  %.promoted10.i276 = load i64, ptr %i.d, align 8, !alias.scope !453
  %i.vr = add i64 %.promoted12.i278793, -1
  %i.vs = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.vt = load i8, ptr %i.dp, align 1, !noalias !460, !noundef !4
  %i.vu = zext i8 %i.vt to i64
  %i.vv = zext nneg i32 %.promoted.i268 to i64
  %i.vw = shl nuw nsw i64 %i.vu, %i.vv
  %i.vx = or i64 %i.vw, %.promoted10.i276
  %i.vy = or disjoint i32 %.promoted.i268, 8
  br label %._crit_edge.i271

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss6_0EB6_.exit: ; preds = %.lr.ph.i275, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss6_0B7_.exit.i
  %.promoted12.i278791 = phi i64 [ %.promoted12.i278792, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss6_0B7_.exit.i ], [ 0, %.lr.ph.i275 ]
  %i.vz = phi ptr [ %i.ve, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss6_0B7_.exit.i ], [ %i.dp, %.lr.ph.i275 ]
  %.sroa.0.0.i274 = phi i8 [ 0, %_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss6_0B7_.exit.i ], [ 2, %.lr.ph.i275 ] ; 2 uses
  %i.wa = insertvalue { i8, i8 } poison, i8 %.sroa.0.0.i274, 0
  %i.wb = insertvalue { i8, i8 } %i.wa, i8 %..i.i363, 1
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bq, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss6_0EB6_.exit
  %.promoted12.i278790 = phi i64 [ %.promoted12.i278791, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss6_0EB6_.exit ], [ %.promoted12.i278793, %bb.bq ] ; 3 uses
  %i.wc = phi ptr [ %i.vz, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss6_0EB6_.exit ], [ %i.dp, %bb.bq ] ; 2 uses
  %.pn128 = phi { i8, i8 } [ %i.wb, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss6_0EB6_.exit ], [ %i.vb, %bb.bq ] ; 2 uses
  %.sroa.050.0 = phi i8 [ %.sroa.0.0.i274, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss6_0EB6_.exit ], [ %i.vc, %bb.bq ]
  switch i8 %.sroa.050.0, label %.loopexit478 [
    i8 0, label %bb.n
    i8 1, label %.loopexit479
    i8 2, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit480
  ]

bb.bu:                                            ; preds = %bb.o
  %.not124 = icmp eq i32 %i.du, %i.dz
  br i1 %.not124, label %bb.cn, label %.split.loop.exit

bb.bv:                                            ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  %i.wd = load i32, ptr %i.y, align 8, !alias.scope !462, !noundef !4 ; 12 uses
  %i.we = icmp ult i32 %i.wd, 15
  br i1 %i.we, label %bb.bw, label %..critedge_crit_edge.i281

..critedge_crit_edge.i281:                        ; preds = %bb.bv
  %.pre.i282 = load i64, ptr %i.d, align 8, !alias.scope !462
  br label %.critedge.i283

bb.bw:                                            ; preds = %bb.bv
  %i.wf = icmp ult i64 %.lcssa754763, 2
  br i1 %i.wf, label %.preheader38.i295, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i293

.preheader38.i295:                                ; preds = %bb.bw
  %.promoted.i296 = load i64, ptr %i.d, align 8, !alias.scope !462 ; 5 uses
  %i.wg = icmp eq i64 %.lcssa754763, 0
  %i.wh = zext nneg i32 %i.wd to i64              ; 3 uses
  %i.wi = and i64 %.promoted.i296, 1023
  %i.wj = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.wi
  %i.wk = load i16, ptr %i.wj, align 2, !alias.scope !461, !noundef !4 ; 2 uses
  %i.wl = sext i16 %i.wk to i32                   ; 2 uses
  %i.wm = icmp sgt i16 %i.wk, -1
  br i1 %i.wm, label %bb.by, label %bb.bx

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i293: ; preds = %bb.bw
  %.sroa.02.0.copyload.i.i294 = load i16, ptr %.lcssa750774, align 1, !noalias !463
  %i.wn = add i64 %.lcssa754763, -2
  %i.wo = getelementptr inbounds nuw i8, ptr %.lcssa750774, i64 2
  %i.wp = zext i16 %.sroa.02.0.copyload.i.i294 to i64
  %i.wq = zext nneg i32 %i.wd to i64
  %i.wr = shl nuw nsw i64 %i.wp, %i.wq
  %i.ws = load i64, ptr %i.d, align 8, !alias.scope !462, !noundef !4
  %i.wt = or i64 %i.ws, %i.wr
  %i.wu = or disjoint i32 %i.wd, 16
  br label %.critedge.i283

bb.bx:                                            ; preds = %.preheader38.i295
  %i.wv = icmp ugt i32 %i.wd, 10
  br i1 %i.wv, label %.preheader.i301, label %.loopexit.i299

bb.by:                                            ; preds = %.preheader38.i295
  %i.ww = lshr i32 %i.wl, 9
  %i.wx = add nsw i32 %i.ww, -1
  %or.cond.i304 = icmp ugt i32 %i.wd, %i.wx
  br i1 %or.cond.i304, label %.critedge.i283.loopexit1236.split.loop.exit, label %.loopexit.i299

.preheader.i301:                                  ; preds = %bb.bx, %bb.ca
  %.sroa.08.0.i302 = phi i32 [ %i.xk, %bb.ca ], [ %i.wl, %bb.bx ]
  %.sroa.05.0.i303 = phi i32 [ %i.xl, %bb.ca ], [ 10, %bb.bx ] ; 3 uses
  %i.wy = xor i32 %.sroa.08.0.i302, -1
  %i.wz = and i32 %.sroa.05.0.i303, 63
  %i.xa = zext nneg i32 %i.wz to i64
  %i.xb = lshr i64 %.promoted.i296, %i.xa
  %i.xc = trunc i64 %i.xb to i32
  %i.xd = and i32 %i.xc, 1
  %i.xe = add nuw nsw i32 %i.xd, %i.wy            ; 2 uses
  %i.xf = zext nneg i32 %i.xe to i64              ; 2 uses
  %i.xg = icmp samesign ult i32 %i.xe, 576
  br i1 %i.xg, label %bb.bz, label %.loopexit2027

bb.bz:                                            ; preds = %.preheader.i301
  %i.xh = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.xf
  %i.xi = load i16, ptr %i.xh, align 2, !alias.scope !461, !noundef !4 ; 2 uses
  %i.xj = icmp sgt i16 %i.xi, -1
  br i1 %i.xj, label %.critedge.i283, label %bb.ca

.loopexit2027:                                    ; preds = %.preheader.i301.1, %.preheader.i301
  %.lcssa1870 = phi i64 [ %i.xf, %.preheader.i301 ], [ %i.yj, %.preheader.i301.1 ]
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.lcssa1870, i64 noundef 576, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #10, !noalias !464
  unreachable

bb.ca:                                            ; preds = %bb.bz
  %i.xk = sext i16 %i.xi to i32
  %i.xl = add i32 %.sroa.05.0.i303, 1
  %i.xm = add i32 %.sroa.05.0.i303, 2
  %i.xn = icmp ult i32 %i.wd, %i.xm
  br i1 %i.xn, label %.loopexit.i299, label %.preheader.i301

.loopexit.i299:                                   ; preds = %bb.ca, %bb.by, %bb.bx
  br i1 %i.wg, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss7_0EB6_.exit, label %bb.cb

bb.cb:                                            ; preds = %.loopexit.i299
  %i.xo = getelementptr inbounds nuw i8, ptr %.lcssa750774, i64 1 ; 6 uses
  %i.xp = load i8, ptr %.lcssa750774, align 1, !noalias !465, !noundef !4
  %i.xq = zext i8 %i.xp to i64
  %i.xr = shl nuw nsw i64 %i.xq, %i.wh
  %i.xs = or i64 %i.xr, %.promoted.i296           ; 6 uses
  store i64 %i.xs, ptr %i.d, align 8, !alias.scope !462
  %indvars.iv.next1149 = add nuw nsw i64 %i.wh, 8 ; 5 uses
  %i.xt = add nuw nsw i32 %i.wd, 8
  %i.xu = trunc nuw nsw i64 %indvars.iv.next1149 to i32
  store i32 %i.xu, ptr %i.y, align 8, !alias.scope !462
  %i.xv = icmp ugt i32 %i.wd, 6
  br i1 %i.xv, label %.critedge.i283, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.xw = and i64 %i.xs, 1023
  %i.xx = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.xw
  %i.xy = load i16, ptr %i.xx, align 2, !alias.scope !461, !noundef !4 ; 2 uses
  %i.xz = sext i16 %i.xy to i32                   ; 2 uses
  %i.ya = icmp sgt i16 %i.xy, -1
  br i1 %i.ya, label %bb.cg, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.yb = icmp ugt i32 %i.wd, 2
  br i1 %i.yb, label %.preheader.i301.1, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss7_0EB6_.exit

.preheader.i301.1:                                ; preds = %bb.cd, %bb.cf
  %.sroa.08.0.i302.1 = phi i32 [ %i.yo, %bb.cf ], [ %i.xz, %bb.cd ]
  %.sroa.05.0.i303.1 = phi i32 [ %i.yp, %bb.cf ], [ 10, %bb.cd ] ; 3 uses
  %i.yc = xor i32 %.sroa.08.0.i302.1, -1
  %i.yd = and i32 %.sroa.05.0.i303.1, 63
  %i.ye = zext nneg i32 %i.yd to i64
  %i.yf = lshr i64 %i.xs, %i.ye
  %i.yg = trunc i64 %i.yf to i32
  %i.yh = and i32 %i.yg, 1
  %i.yi = add nuw nsw i32 %i.yh, %i.yc            ; 2 uses
  %i.yj = zext nneg i32 %i.yi to i64              ; 2 uses
  %i.yk = icmp samesign ult i32 %i.yi, 576
  br i1 %i.yk, label %bb.ce, label %.loopexit2027

bb.ce:                                            ; preds = %.preheader.i301.1
  %i.yl = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.yj
  %i.ym = load i16, ptr %i.yl, align 2, !alias.scope !461, !noundef !4 ; 2 uses
  %i.yn = icmp sgt i16 %i.ym, -1
  br i1 %i.yn, label %.critedge.i283.loopexit.loopexit2030, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.yo = sext i16 %i.ym to i32
  %i.yp = add i32 %.sroa.05.0.i303.1, 1
  %i.yq = add i32 %.sroa.05.0.i303.1, 2
  %i.yr = zext i32 %i.yq to i64
  %i.ys = icmp samesign ult i64 %indvars.iv.next1149, %i.yr
  br i1 %i.ys, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss7_0EB6_.exit, label %.preheader.i301.1

bb.cg:                                            ; preds = %bb.cc
  %i.yt = lshr i32 %i.xz, 9
  %i.yu = add nsw i32 %i.yt, -1
  %i.yv = zext i32 %i.yu to i64
  %or.cond.i304.1 = icmp samesign ugt i64 %indvars.iv.next1149, %i.yv
  br i1 %or.cond.i304.1, label %.critedge.i283.loopexit1236.split.loop.exit, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss7_0EB6_.exit

.critedge.i283.loopexit.loopexit2030:             ; preds = %bb.ce
  %i.yw = trunc nuw nsw i64 %indvars.iv.next1149 to i32
  br label %.critedge.i283

.critedge.i283.loopexit1236.split.loop.exit:      ; preds = %bb.cg, %bb.by
  %indvars.iv1148.lcssa1889 = phi i64 [ %i.wh, %bb.by ], [ %indvars.iv.next1149, %bb.cg ]
  %.lcssa1885 = phi i64 [ %.lcssa754763, %bb.by ], [ 0, %bb.cg ]
  %.lcssa1880 = phi ptr [ %.lcssa750774, %bb.by ], [ %i.xo, %bb.cg ]
  %.lcssa1875 = phi i64 [ %.promoted.i296, %bb.by ], [ %i.xs, %bb.cg ]
  %i.yx = trunc nuw nsw i64 %indvars.iv1148.lcssa1889 to i32
  br label %.critedge.i283

.critedge.i283:                                   ; preds = %bb.cb, %.critedge.i283.loopexit.loopexit2030, %bb.bz, %.critedge.i283.loopexit1236.split.loop.exit, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i293, %..critedge_crit_edge.i281
  %.lcssa750773 = phi ptr [ %.lcssa750774, %..critedge_crit_edge.i281 ], [ %.lcssa750774, %bb.bz ], [ %i.wo, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i293 ], [ %.lcssa1880, %.critedge.i283.loopexit1236.split.loop.exit ], [ %i.xo, %.critedge.i283.loopexit.loopexit2030 ], [ %i.xo, %bb.cb ] ; 3 uses
  %.lcssa754762 = phi i64 [ %.lcssa754763, %..critedge_crit_edge.i281 ], [ %.lcssa754763, %bb.bz ], [ %i.wn, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i293 ], [ %.lcssa1885, %.critedge.i283.loopexit1236.split.loop.exit ], [ 0, %.critedge.i283.loopexit.loopexit2030 ], [ 0, %bb.cb ] ; 3 uses
  %i.yy = phi i32 [ %i.wd, %..critedge_crit_edge.i281 ], [ %i.wd, %bb.bz ], [ %i.wu, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i293 ], [ %i.yx, %.critedge.i283.loopexit1236.split.loop.exit ], [ %i.yw, %.critedge.i283.loopexit.loopexit2030 ], [ %i.xt, %bb.cb ]
  %i.yz = phi i64 [ %.pre.i282, %..critedge_crit_edge.i281 ], [ %.promoted.i296, %bb.bz ], [ %i.wt, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i293 ], [ %.lcssa1875, %.critedge.i283.loopexit1236.split.loop.exit ], [ %i.xs, %.critedge.i283.loopexit.loopexit2030 ], [ %i.xs, %bb.cb ] ; 3 uses
  %i.za = and i64 %i.yz, 1023
  %i.zb = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.za
  %i.zc = load i16, ptr %i.zb, align 2, !alias.scope !461, !noundef !4 ; 2 uses
  %i.zd = sext i16 %i.zc to i32                   ; 3 uses
  %i.ze = icmp sgt i16 %i.zc, -1
  br i1 %i.ze, label %bb.ch, label %.preheader862

bb.ch:                                            ; preds = %.critedge.i283
  %i.zf = lshr i32 %i.zd, 9
  %i.zg = and i32 %i.zd, 511
  br label %bb.cj

.preheader862:                                    ; preds = %.critedge.i283, %bb.ci
  %.sroa.03.0.i.i284 = phi i8 [ %i.zu, %bb.ci ], [ 10, %.critedge.i283 ] ; 3 uses
  %.sroa.0.0.i30.i285 = phi i32 [ %i.zt, %bb.ci ], [ %i.zd, %.critedge.i283 ]
  %i.zh = xor i32 %.sroa.0.0.i30.i285, -1
  %i.zi = and i8 %.sroa.03.0.i.i284, 63
  %i.zj = zext nneg i8 %i.zi to i64
  %i.zk = lshr i64 %i.yz, %i.zj
  %i.zl = trunc i64 %i.zk to i32
  %i.zm = and i32 %i.zl, 1
  %i.zn = add nuw nsw i32 %i.zm, %i.zh            ; 2 uses
  %i.zo = icmp samesign ult i32 %i.zn, 576
  br i1 %i.zo, label %bb.ci, label %.thread.i.i286

.thread.i.i286:                                   ; preds = %.preheader862
  %i.zp = add i8 %.sroa.03.0.i.i284, 1
  br label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i287

bb.ci:                                            ; preds = %.preheader862
  %i.zq = zext nneg i32 %i.zn to i64
  %i.zr = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.zq
  %i.zs = load i16, ptr %i.zr, align 2, !alias.scope !466, !noundef !4 ; 2 uses
  %i.zt = sext i16 %i.zs to i32                   ; 2 uses
  %i.zu = add i8 %.sroa.03.0.i.i284, 1            ; 2 uses
  %i.zv = icmp sgt i16 %i.zs, -1
  br i1 %i.zv, label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i287, label %.preheader862

_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i287: ; preds = %bb.ci, %.thread.i.i286
  %i.zw = phi i8 [ %i.zp, %.thread.i.i286 ], [ %i.zu, %bb.ci ]
  %.sroa.06.011.i.i288 = phi i32 [ 32767, %.thread.i.i286 ], [ %i.zt, %bb.ci ]
  %i.zx = zext i8 %i.zw to i32
  br label %bb.cj

bb.cj:                                            ; preds = %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i287, %bb.ch
  %.sroa.018.0.i289 = phi i32 [ %i.zf, %bb.ch ], [ %i.zx, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i287 ] ; 2 uses
  %.sroa.013.0.i290 = phi i32 [ %i.zg, %bb.ch ], [ %.sroa.06.011.i.i288, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i287 ] ; 5 uses
  %i.zy = and i32 %.sroa.018.0.i289, 63
  %i.zz = zext nneg i32 %i.zy to i64
  %i.aaa = lshr i64 %i.yz, %i.zz
  store i64 %i.aaa, ptr %i.d, align 8, !alias.scope !462
  %i.aab = sub i32 %i.yy, %.sroa.018.0.i289
  store i32 %i.aab, ptr %i.y, align 8, !alias.scope !462
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  store i32 %.sroa.013.0.i290, ptr %i.z, align 4, !alias.scope !469
  %i.aac = icmp samesign ult i32 %.sroa.013.0.i290, 16
  br i1 %i.aac, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.aad = icmp eq i32 %.sroa.013.0.i290, 16
  %i.aae = icmp eq i32 %i.du, 0
  %or.cond.i.i = and i1 %i.aae, %i.aad
  br i1 %or.cond.i.i, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss7_0EB6_.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !470
  store <4 x i8> <i8 2, i8 3, i8 7, i8 0>, ptr %i.a, align 4, !noalias !470
  %i.aaf = and i32 %.sroa.013.0.i290, 3
  %i.aag = zext nneg i32 %i.aaf to i64
  %i.aah = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aag
  %i.aai = load i8, ptr %i.aah, align 1, !noalias !470, !noundef !4
  store i8 %i.aai, ptr %i.ac, align 4, !alias.scope !469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !470
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss7_0EB6_.exit

bb.cm:                                            ; preds = %bb.cj
  %i.aaj = and i32 %i.du, 511
  %i.aak = zext nneg i32 %i.aaj to i64
  %i.aal = getelementptr inbounds nuw i8, ptr %1, i64 %i.aak
  %i.aam = trunc nuw nsw i32 %.sroa.013.0.i290 to i8
  store i8 %i.aam, ptr %i.aal, align 1, !alias.scope !471
  %i.aan = add nuw nsw i32 %i.du, 1
  store i32 %i.aan, ptr %i.aa, align 8, !alias.scope !469
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss7_0EB6_.exit

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss7_0EB6_.exit: ; preds = %.loopexit.i299, %bb.cf, %bb.cg, %bb.cd, %bb.ck, %bb.cl, %bb.cm
  %.lcssa750772 = phi ptr [ %.lcssa750773, %bb.ck ], [ %.lcssa750773, %bb.cm ], [ %.lcssa750773, %bb.cl ], [ %.lcssa750774, %.loopexit.i299 ], [ %i.xo, %bb.cf ], [ %i.xo, %bb.cg ], [ %i.xo, %bb.cd ]
  %.lcssa754761 = phi i64 [ %.lcssa754762, %bb.ck ], [ %.lcssa754762, %bb.cm ], [ %.lcssa754762, %bb.cl ], [ %.lcssa754763, %.loopexit.i299 ], [ 0, %bb.cf ], [ 0, %bb.cg ], [ 0, %bb.cd ]
  %.sroa.4.0.i.pn.i291 = phi i8 [ 32, %bb.ck ], [ undef, %bb.cm ], [ 11, %bb.cl ], [ %..i.i363, %bb.cd ], [ %..i.i363, %bb.cg ], [ %..i.i363, %bb.cf ], [ %..i.i363, %.loopexit.i299 ]
  %.sroa.0.0.i292 = phi i8 [ 1, %bb.ck ], [ 0, %bb.cm ], [ 1, %bb.cl ], [ 2, %bb.cd ], [ 2, %bb.cg ], [ 2, %bb.cf ], [ 2, %.loopexit.i299 ] ; 2 uses
  %i.aao = insertvalue { i8, i8 } poison, i8 %.sroa.0.0.i292, 0
  %i.aap = insertvalue { i8, i8 } %i.aao, i8 %.sroa.4.0.i.pn.i291, 1
  br label %bb.cs

bb.cn:                                            ; preds = %bb.bu
  %i.aaq = zext i16 %i.dv to i64                  ; 3 uses
  %i.aar = icmp ult i16 %i.dv, 289
  br i1 %i.aar, label %bb.cp, label %bb.co, !prof !472

bb.co:                                            ; preds = %bb.cn
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aaq, i64 noundef 288, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #10
  unreachable

bb.cp:                                            ; preds = %bb.cn
  tail call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.aq, i64 noundef %i.aaq, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %i.aaq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13)
  %i.aas = load i16, ptr %i.ao, align 8, !noundef !4 ; 2 uses
  %i.aat = load i16, ptr %i.ap, align 2, !noundef !4 ; 2 uses
  %i.aau = add i16 %i.aat, %i.aas
  %i.aav = and i16 %i.aas, 511                    ; 2 uses
  %i.aaw = zext nneg i16 %i.aav to i64            ; 3 uses
  %i.aax = and i16 %i.aau, 511                    ; 2 uses
  %i.aay = zext nneg i16 %i.aax to i64            ; 2 uses
  %i.aaz = icmp samesign ult i16 %i.aax, %i.aav
  br i1 %i.aaz, label %bb.cq, label %bb.cr, !prof !7

bb.cq:                                            ; preds = %bb.cp
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.aaw, i64 noundef %i.aay, i64 noundef 512, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #10
  unreachable

bb.cr:                                            ; preds = %bb.cp
  %i.aba = and i16 %i.aat, 31
  %i.abb = zext nneg i16 %i.aba to i64
  %i.abc = sub nuw nsw i64 %i.aay, %i.aaw
  %i.abd = getelementptr inbounds nuw i8, ptr %1, i64 %i.aaw
  tail call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.ar, i64 noundef %i.abb, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.abd, i64 noundef %i.abc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14)
  %i.abe = load i8, ptr %i.as, align 1, !noundef !4
  %i.abf = add i8 %i.abe, -1
  store i8 %i.abf, ptr %i.as, align 1
  %i.abg = call fastcc { i8, i8 } @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9init_tree(ptr noalias nofree noundef align 8 dereferenceable(10504) %1, ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) ; 2 uses
  %i.abh = extractvalue { i8, i8 } %i.abg, 0      ; 2 uses
  %.not125 = icmp eq i8 %i.abh, -1
  br i1 %.not125, label %.thread442.loopexit482, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss7_0EB6_.exit
  %.lcssa750771 = phi ptr [ %.lcssa750772, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss7_0EB6_.exit ], [ %.lcssa750774, %bb.cr ] ; 2 uses
  %.lcssa754760 = phi i64 [ %.lcssa754761, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss7_0EB6_.exit ], [ %.lcssa754763, %bb.cr ] ; 3 uses
  %.pn126 = phi { i8, i8 } [ %i.aap, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss7_0EB6_.exit ], [ %i.abg, %bb.cr ] ; 2 uses
  %.sroa.058.0 = phi i8 [ %.sroa.0.0.i292, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss7_0EB6_.exit ], [ %i.abh, %bb.cr ]
  switch i8 %.sroa.058.0, label %.loopexit483 [
    i8 0, label %bb.o
    i8 1, label %.split.loop.exit755
    i8 2, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit484
  ]

.split.loop.exit:                                 ; preds = %bb.bu
  store i64 %.lcssa754763, ptr %i.m, align 8
  store ptr %.lcssa750774, ptr %i.f, align 8
  br label %.backedge.backedge

.split.loop.exit755:                              ; preds = %bb.cs
  store i64 %.lcssa754760, ptr %i.m, align 8
  store ptr %.lcssa750771, ptr %i.f, align 8
  %.sroa.9.1.le = extractvalue { i8, i8 } %.pn126, 1
  br label %.backedge.backedge

bb.ct:                                            ; preds = %._crit_edge.i.i
  %i.abi = sub nuw nsw i64 %i.fb, %i.fa
  %i.abj = getelementptr inbounds nuw i8, ptr %1, i64 %i.fa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.abj, i8 %.sroa.03.0.i.i, i64 %i.abi, i1 false), !alias.scope !341
  %i.abk = trunc i64 %i.eq to i32
  %i.abl = add i32 %i.es, %i.abk
  store i32 %i.abl, ptr %i.aa, align 8, !alias.scope !340
  br label %.backedge.backedge

._crit_edge739:                                   ; preds = %bb.s
  store i64 %i.fo, ptr %i.d, align 8, !alias.scope !473
  store i32 %i.fp, ptr %i.y, align 8, !alias.scope !474
  br label %.lr.ph.i182._crit_edge

.lr.ph.i182._crit_edge:                           ; preds = %.lr.ph.i182, %._crit_edge739
  store i64 0, ptr %i.m, align 8
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412

.lr.ph1724:                                       ; preds = %.lr.ph, %bb.df
  %i.abm = phi i64 [ %i.aey, %bb.df ], [ %i.bo, %.lr.ph ]
  %i.abn = phi ptr [ %i.acd, %bb.df ], [ %.promoted704, %.lr.ph ] ; 4 uses
  %i.abo = phi i64 [ %i.aew, %bb.df ], [ %.promoted697, %.lr.ph ] ; 7 uses
  %i.abp = phi i64 [ %i.ace, %bb.df ], [ %.promoted690, %.lr.ph ] ; 4 uses
  %i.abq = icmp ugt i64 %i.abm, 258
  %i.abr = icmp ugt i64 %i.abp, 13
  %or.cond471 = and i1 %i.abr, %i.abq
  br i1 %or.cond471, label %bb.cx, label %bb.cu

bb.cu:                                            ; preds = %.lr.ph1724
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  %i.abs = load i32, ptr %i.y, align 8, !alias.scope !475, !noundef !4 ; 4 uses
  %i.abt = icmp ult i32 %i.abs, 30
  %.pre = load i64, ptr %i.d, align 8             ; 2 uses
  br i1 %i.abt, label %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core15fill_bit_buffer.exit

_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit: ; preds = %bb.cu
  %.sroa.02.0.copyload.i = load i32, ptr %i.abn, align 1, !noalias !476
  %i.abu = add i64 %i.abp, -4
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abn, i64 4
  %i.abw = zext i32 %.sroa.02.0.copyload.i to i64
  %i.abx = zext nneg i32 %i.abs to i64
  %i.aby = shl nuw nsw i64 %i.abw, %i.abx
  %i.abz = or i64 %.pre, %i.aby
  %i.aca = or disjoint i32 %i.abs, 32
  br label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core15fill_bit_buffer.exit

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core15fill_bit_buffer.exit: ; preds = %bb.cu, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit
  %i.acb = phi i32 [ %i.abs, %bb.cu ], [ %i.aca, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit ]
  %i.acc = phi i64 [ %.pre, %bb.cu ], [ %i.abz, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit ] ; 3 uses
  %i.acd = phi ptr [ %i.abn, %bb.cu ], [ %i.abv, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit ] ; 4 uses
  %i.ace = phi i64 [ %i.abp, %bb.cu ], [ %i.abu, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit ] ; 5 uses
  %i.acf = and i64 %i.acc, 1023
  %i.acg = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.acf
  %i.ach = load i16, ptr %i.acg, align 2, !alias.scope !477, !noundef !4 ; 2 uses
  %i.aci = sext i16 %i.ach to i32                 ; 3 uses
  %i.acj = icmp sgt i16 %i.ach, -1
  br i1 %i.acj, label %bb.cw, label %.preheader866

.preheader866:                                    ; preds = %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core15fill_bit_buffer.exit, %bb.cv
  %.sroa.03.0.i.i305 = phi i8 [ %i.acx, %bb.cv ], [ 10, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core15fill_bit_buffer.exit ] ; 3 uses
  %.sroa.0.0.i.i = phi i32 [ %i.acw, %bb.cv ], [ %i.aci, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core15fill_bit_buffer.exit ]
  %i.ack = xor i32 %.sroa.0.0.i.i, -1
  %i.acl = and i8 %.sroa.03.0.i.i305, 63
  %i.acm = zext nneg i8 %i.acl to i64
  %i.acn = lshr i64 %i.acc, %i.acm
  %i.aco = trunc i64 %i.acn to i32
  %i.acp = and i32 %i.aco, 1
  %i.acq = add nuw nsw i32 %i.acp, %i.ack         ; 2 uses
  %i.acr = icmp samesign ult i32 %i.acq, 576
  br i1 %i.acr, label %bb.cv, label %.thread.i.i306

.thread.i.i306:                                   ; preds = %.preheader866
  %i.acs = add i8 %.sroa.03.0.i.i305, 1
  br label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i307

bb.cv:                                            ; preds = %.preheader866
  %i.act = zext nneg i32 %i.acq to i64
  %i.acu = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.act
  %i.acv = load i16, ptr %i.acu, align 2, !alias.scope !478, !noundef !4 ; 2 uses
  %i.acw = sext i16 %i.acv to i32                 ; 2 uses
  %i.acx = add i8 %.sroa.03.0.i.i305, 1           ; 2 uses
  %i.acy = icmp sgt i16 %i.acv, -1
  br i1 %i.acy, label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i307, label %.preheader866

_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i307: ; preds = %bb.cv, %.thread.i.i306
  %i.acz = phi i8 [ %i.acs, %.thread.i.i306 ], [ %i.acx, %bb.cv ]
  %.sroa.06.011.i.i308 = phi i32 [ 32767, %.thread.i.i306 ], [ %i.acw, %bb.cv ]
  %i.ada = zext i8 %i.acz to i32
  br label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable6lookup.exit

bb.cw:                                            ; preds = %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core15fill_bit_buffer.exit
  %i.adb = lshr i32 %i.aci, 9
  br label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable6lookup.exit

_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable6lookup.exit: ; preds = %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i307, %bb.cw
  %.pn3.i = phi i32 [ %i.aci, %bb.cw ], [ %.sroa.06.011.i.i308, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i307 ] ; 3 uses
  %.pn1.i = phi i32 [ %i.adb, %bb.cw ], [ %i.ada, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i307 ] ; 2 uses
  store i32 %.pn3.i, ptr %i.aa, align 8
  %i.adc = and i32 %.pn1.i, 63
  %i.add = zext nneg i32 %i.adc to i64
  %i.ade = lshr i64 %i.acc, %i.add                ; 4 uses
  store i64 %i.ade, ptr %i.d, align 8
  %i.adf = sub i32 %i.acb, %.pn1.i                ; 2 uses
  store i32 %i.adf, ptr %i.y, align 8
  %i.adg = and i32 %.pn3.i, 256
  %i.adh = icmp eq i32 %i.adg, 0
  br i1 %i.adh, label %bb.cy, label %.loopexit489

bb.cx:                                            ; preds = %.lr.ph1724
  store i64 %i.abp, ptr %i.m, align 8
  store i64 %i.abo, ptr %i.q, align 8
  store ptr %i.abn, ptr %i.f, align 8
  %i.adi = call fastcc { i8, i8 } @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core15decompress_fast(ptr noalias nofree noundef align 8 dereferenceable(10504) %1, ptr noalias nofree noundef align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef align 8 dereferenceable(24) %i.e, i32 noundef %7, ptr noalias nofree noundef align 8 dereferenceable(24) %i.d, i64 noundef %storemerge) ; 2 uses
  %i.adj = extractvalue { i8, i8 } %i.adi, 0      ; 2 uses
  %i.adk = extractvalue { i8, i8 } %i.adi, 1      ; 2 uses
  %i.adl = icmp eq i8 %i.adj, 0
  br i1 %i.adl, label %.backedge.backedge, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412

bb.cy:                                            ; preds = %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable6lookup.exit
  %i.adm = and i64 %i.ade, 1023
  %i.adn = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.adm
  %i.ado = load i16, ptr %i.adn, align 2, !alias.scope !479, !noundef !4 ; 2 uses
  %i.adp = sext i16 %i.ado to i32                 ; 3 uses
  %i.adq = icmp sgt i16 %i.ado, -1
  br i1 %i.adq, label %bb.da, label %.preheader865

.preheader865:                                    ; preds = %bb.cy, %bb.cz
  %.sroa.03.0.i.i309 = phi i8 [ %i.aee, %bb.cz ], [ 10, %bb.cy ] ; 3 uses
  %.sroa.0.0.i.i310 = phi i32 [ %i.aed, %bb.cz ], [ %i.adp, %bb.cy ]
  %i.adr = xor i32 %.sroa.0.0.i.i310, -1
  %i.ads = and i8 %.sroa.03.0.i.i309, 63
  %i.adt = zext nneg i8 %i.ads to i64
  %i.adu = lshr i64 %i.ade, %i.adt
  %i.adv = trunc i64 %i.adu to i32
  %i.adw = and i32 %i.adv, 1
  %i.adx = add nuw nsw i32 %i.adw, %i.adr         ; 2 uses
  %i.ady = icmp samesign ult i32 %i.adx, 576
  br i1 %i.ady, label %bb.cz, label %.thread.i.i311

.thread.i.i311:                                   ; preds = %.preheader865
  %i.adz = add i8 %.sroa.03.0.i.i309, 1
  br label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i312

bb.cz:                                            ; preds = %.preheader865
  %i.aea = zext nneg i32 %i.adx to i64
  %i.aeb = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.aea
  %i.aec = load i16, ptr %i.aeb, align 2, !alias.scope !480, !noundef !4 ; 2 uses
  %i.aed = sext i16 %i.aec to i32                 ; 2 uses
  %i.aee = add i8 %.sroa.03.0.i.i309, 1           ; 2 uses
  %i.aef = icmp sgt i16 %i.aec, -1
  br i1 %i.aef, label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i312, label %.preheader865

_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i312: ; preds = %bb.cz, %.thread.i.i311
  %i.aeg = phi i8 [ %i.adz, %.thread.i.i311 ], [ %i.aee, %bb.cz ]
  %.sroa.06.011.i.i313 = phi i32 [ 32767, %.thread.i.i311 ], [ %i.aed, %bb.cz ]
  %i.aeh = zext i8 %i.aeg to i32
  br label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable6lookup.exit318

bb.da:                                            ; preds = %bb.cy
  %i.aei = lshr i32 %i.adp, 9
  br label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable6lookup.exit318

_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable6lookup.exit318: ; preds = %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i312, %bb.da
  %.pn3.i314 = phi i32 [ %i.adp, %bb.da ], [ %.sroa.06.011.i.i313, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i312 ] ; 3 uses
  %.pn1.i315 = phi i32 [ %i.aei, %bb.da ], [ %i.aeh, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i312 ] ; 2 uses
  %i.aej = and i32 %.pn1.i315, 63
  %i.aek = zext nneg i32 %i.aej to i64
  %i.ael = lshr i64 %i.ade, %i.aek
  store i64 %i.ael, ptr %i.d, align 8
  %i.aem = sub i32 %i.adf, %.pn1.i315
  store i32 %i.aem, ptr %i.y, align 8
  %i.aen = icmp ult i64 %i.abo, %.val150
  br i1 %i.aen, label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte.exit, label %bb.db

bb.db:                                            ; preds = %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable6lookup.exit318
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.abo, i64 noundef %.val150, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #10, !noalias !481
  unreachable

_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte.exit: ; preds = %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable6lookup.exit318
  %i.aeo = trunc i32 %.pn3.i to i8
  %i.aep = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.abo
  store i8 %i.aeo, ptr %i.aep, align 1, !noalias !481
  %i.aeq = add nuw i64 %i.abo, 1                  ; 4 uses
  %i.aer = and i32 %.pn3.i314, 256
  %i.aes = icmp eq i32 %i.aer, 0
  br i1 %i.aes, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte.exit
  %i.aet = icmp ult i64 %i.aeq, %.val150
  br i1 %i.aet, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.aeq, i64 noundef %.val150, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #10, !noalias !482
  unreachable

bb.de:                                            ; preds = %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte.exit
  store i64 %i.ace, ptr %i.m, align 8
  store i64 %i.aeq, ptr %i.q, align 8
  store ptr %i.acd, ptr %i.f, align 8
  store i32 %.pn3.i314, ptr %i.aa, align 8
  br label %.backedge.backedge

bb.df:                                            ; preds = %bb.dc
  %i.aeu = trunc i32 %.pn3.i314 to i8
  %i.aev = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.aeq
  store i8 %i.aeu, ptr %i.aev, align 1, !noalias !482
  %i.aew = add nuw i64 %i.abo, 2                  ; 3 uses
  %i.aex = icmp ult i64 %i.ace, 4
  %i.aey = sub i64 %.val150, %i.aew               ; 2 uses
  %i.aez = icmp ult i64 %i.aey, 2
  %or.cond1742 = select i1 %i.aex, i1 true, i1 %i.aez
  br i1 %or.cond1742, label %._crit_edge711, label %.lr.ph1724

.loopexit489:                                     ; preds = %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable6lookup.exit
  store i64 %i.ace, ptr %i.m, align 8
  store i64 %i.abo, ptr %i.q, align 8
  store ptr %i.acd, ptr %i.f, align 8
  br label %.backedge.backedge

._crit_edge711:                                   ; preds = %bb.df, %.lr.ph, %.preheader488
  %.promoted46.i = phi ptr [ %.promoted704, %.preheader488 ], [ %.promoted704, %.lr.ph ], [ %i.acd, %bb.df ] ; 7 uses
  %.lcssa698 = phi i64 [ %.promoted697, %.preheader488 ], [ %.promoted697, %.lr.ph ], [ %i.aew, %bb.df ]
  %.promoted725 = phi i64 [ %.promoted690, %.preheader488 ], [ %.promoted690, %.lr.ph ], [ %i.ace, %bb.df ] ; 7 uses
  store i64 %.promoted725, ptr %i.m, align 8
  store i64 %.lcssa698, ptr %i.q, align 8
  store ptr %.promoted46.i, ptr %i.f, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !485)
  %i.afa = load i32, ptr %i.y, align 8, !alias.scope !484, !noundef !4 ; 12 uses
  %i.afb = icmp ult i32 %i.afa, 15
  br i1 %i.afb, label %bb.dg, label %..critedge_crit_edge.i320

..critedge_crit_edge.i320:                        ; preds = %._crit_edge711
  %.pre.i321 = load i64, ptr %i.d, align 8, !alias.scope !484
  br label %.critedge.i322

bb.dg:                                            ; preds = %._crit_edge711
  %i.afc = icmp ult i64 %.promoted725, 2
  br i1 %i.afc, label %.preheader37.i, label %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i332

.preheader37.i:                                   ; preds = %bb.dg
  %.promoted.i334 = load i64, ptr %i.d, align 8, !alias.scope !484 ; 5 uses
  %i.afd = icmp eq i64 %.promoted725, 0
  %i.afe = zext nneg i32 %i.afa to i64            ; 3 uses
  %i.aff = and i64 %.promoted.i334, 1023
  %i.afg = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.aff
  %i.afh = load i16, ptr %i.afg, align 2, !alias.scope !483, !noundef !4 ; 2 uses
  %i.afi = sext i16 %i.afh to i32                 ; 2 uses
  %i.afj = icmp sgt i16 %i.afh, -1
  br i1 %i.afj, label %bb.di, label %bb.dh

_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i332: ; preds = %bb.dg
  tail call void @llvm.experimental.noalias.scope.decl(metadata !486)
  %.sroa.02.0.copyload.i.i333 = load i16, ptr %.promoted46.i, align 1, !noalias !487
  %i.afk = add i64 %.promoted725, -2
  %i.afl = getelementptr inbounds nuw i8, ptr %.promoted46.i, i64 2
  store ptr %i.afl, ptr %i.f, align 8, !alias.scope !488, !captures !5
  store i64 %i.afk, ptr %i.m, align 8, !alias.scope !488
  %i.afm = zext i16 %.sroa.02.0.copyload.i.i333 to i64
  %i.afn = zext nneg i32 %i.afa to i64
  %i.afo = shl nuw nsw i64 %i.afm, %i.afn
  %i.afp = load i64, ptr %i.d, align 8, !alias.scope !484, !noundef !4
  %i.afq = or i64 %i.afp, %i.afo
  %i.afr = or disjoint i32 %i.afa, 16
  br label %.critedge.i322

bb.dh:                                            ; preds = %.preheader37.i
  %i.afs = icmp ugt i32 %i.afa, 10
  br i1 %i.afs, label %.preheader.i338, label %.loopexit.i336

bb.di:                                            ; preds = %.preheader37.i
  %i.aft = lshr i32 %i.afi, 9
  %i.afu = add nsw i32 %i.aft, -1
  %or.cond.i341 = icmp ugt i32 %i.afa, %i.afu
  br i1 %or.cond.i341, label %.critedge.i322.loopexit485.split.loop.exit, label %.loopexit.i336

.preheader.i338:                                  ; preds = %bb.dh, %bb.dk
  %.sroa.08.0.i339 = phi i32 [ %i.agh, %bb.dk ], [ %i.afi, %bb.dh ]
  %.sroa.05.0.i340 = phi i32 [ %i.agi, %bb.dk ], [ 10, %bb.dh ] ; 3 uses
  %i.afv = xor i32 %.sroa.08.0.i339, -1
  %i.afw = and i32 %.sroa.05.0.i340, 63
  %i.afx = zext nneg i32 %i.afw to i64
  %i.afy = lshr i64 %.promoted.i334, %i.afx
  %i.afz = trunc i64 %i.afy to i32
  %i.aga = and i32 %i.afz, 1
  %i.agb = add nuw nsw i32 %i.aga, %i.afv         ; 2 uses
  %i.agc = zext nneg i32 %i.agb to i64            ; 2 uses
  %i.agd = icmp samesign ult i32 %i.agb, 576
  br i1 %i.agd, label %bb.dj, label %.loopexit2019

bb.dj:                                            ; preds = %.preheader.i338
  %i.age = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.agc
  %i.agf = load i16, ptr %i.age, align 2, !alias.scope !483, !noundef !4 ; 2 uses
  %i.agg = icmp sgt i16 %i.agf, -1
  br i1 %i.agg, label %.critedge.i322.loopexit, label %bb.dk

.loopexit2019:                                    ; preds = %.preheader.i338.1, %.preheader.i338
  %.lcssa1834 = phi i64 [ %i.agc, %.preheader.i338 ], [ %i.ahg, %.preheader.i338.1 ]
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.lcssa1834, i64 noundef 576, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #10, !noalias !489
  unreachable

bb.dk:                                            ; preds = %bb.dj
  %i.agh = sext i16 %i.agf to i32
  %i.agi = add i32 %.sroa.05.0.i340, 1
  %i.agj = add i32 %.sroa.05.0.i340, 2
  %i.agk = icmp ult i32 %i.afa, %i.agj
  br i1 %i.agk, label %.loopexit.i336, label %.preheader.i338

.loopexit.i336:                                   ; preds = %bb.dk, %bb.di, %bb.dh
  br i1 %i.afd, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss9_0EB6_.exit, label %bb.dl

bb.dl:                                            ; preds = %.loopexit.i336
  %i.agl = getelementptr inbounds nuw i8, ptr %.promoted46.i, i64 1 ; 3 uses
  %i.agm = load i8, ptr %.promoted46.i, align 1, !noalias !490, !noundef !4
  %i.agn = zext i8 %i.agm to i64
  %i.ago = shl nuw nsw i64 %i.agn, %i.afe
  %i.agp = or i64 %i.ago, %.promoted.i334         ; 6 uses
  store i64 %i.agp, ptr %i.d, align 8, !alias.scope !484
  %indvars.iv.next1147 = add nuw nsw i64 %i.afe, 8 ; 5 uses
  %i.agq = add nuw nsw i32 %i.afa, 8
  %i.agr = trunc nuw nsw i64 %indvars.iv.next1147 to i32
  store i32 %i.agr, ptr %i.y, align 8, !alias.scope !484
  %i.ags = icmp ugt i32 %i.afa, 6
  br i1 %i.ags, label %.critedge.i322.loopexit485, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.agt = and i64 %i.agp, 1023
  %i.agu = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.agt
  %i.agv = load i16, ptr %i.agu, align 2, !alias.scope !483, !noundef !4 ; 2 uses
  %i.agw = sext i16 %i.agv to i32                 ; 2 uses
  %i.agx = icmp sgt i16 %i.agv, -1
  br i1 %i.agx, label %bb.dq, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.agy = icmp ugt i32 %i.afa, 2
  br i1 %i.agy, label %.preheader.i338.1, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss9_0EB6_.exit

.preheader.i338.1:                                ; preds = %bb.dn, %bb.dp
  %.sroa.08.0.i339.1 = phi i32 [ %i.ahl, %bb.dp ], [ %i.agw, %bb.dn ]
  %.sroa.05.0.i340.1 = phi i32 [ %i.ahm, %bb.dp ], [ 10, %bb.dn ] ; 3 uses
  %i.agz = xor i32 %.sroa.08.0.i339.1, -1
  %i.aha = and i32 %.sroa.05.0.i340.1, 63
  %i.ahb = zext nneg i32 %i.aha to i64
  %i.ahc = lshr i64 %i.agp, %i.ahb
  %i.ahd = trunc i64 %i.ahc to i32
  %i.ahe = and i32 %i.ahd, 1
  %i.ahf = add nuw nsw i32 %i.ahe, %i.agz         ; 2 uses
  %i.ahg = zext nneg i32 %i.ahf to i64            ; 2 uses
  %i.ahh = icmp samesign ult i32 %i.ahf, 576
  br i1 %i.ahh, label %bb.do, label %.loopexit2019

bb.do:                                            ; preds = %.preheader.i338.1
  %i.ahi = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ahg
  %i.ahj = load i16, ptr %i.ahi, align 2, !alias.scope !483, !noundef !4 ; 2 uses
  %i.ahk = icmp sgt i16 %i.ahj, -1
  br i1 %i.ahk, label %.critedge.i322.loopexit.loopexit2022, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.ahl = sext i16 %i.ahj to i32
  %i.ahm = add i32 %.sroa.05.0.i340.1, 1
  %i.ahn = add i32 %.sroa.05.0.i340.1, 2
  %i.aho = zext i32 %i.ahn to i64
  %i.ahp = icmp samesign ult i64 %indvars.iv.next1147, %i.aho
  br i1 %i.ahp, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss9_0EB6_.exit, label %.preheader.i338.1

bb.dq:                                            ; preds = %bb.dm
  %i.ahq = lshr i32 %i.agw, 9
  %i.ahr = add nsw i32 %i.ahq, -1
  %i.ahs = zext i32 %i.ahr to i64
  %or.cond.i341.1 = icmp samesign ugt i64 %indvars.iv.next1147, %i.ahs
  br i1 %or.cond.i341.1, label %.critedge.i322.loopexit485.split.loop.exit, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss9_0EB6_.exit

.critedge.i322.loopexit.loopexit2022:             ; preds = %bb.do
  %i.aht = trunc nuw nsw i64 %indvars.iv.next1147 to i32
  br label %.critedge.i322.loopexit

.critedge.i322.loopexit:                          ; preds = %bb.dj, %.critedge.i322.loopexit.loopexit2022
  %indvars.iv1146.lcssa1852 = phi i32 [ %i.aht, %.critedge.i322.loopexit.loopexit2022 ], [ %i.afa, %bb.dj ]
  %.lcssa1848 = phi i64 [ 0, %.critedge.i322.loopexit.loopexit2022 ], [ %.promoted725, %bb.dj ]
  %.lcssa1843 = phi ptr [ %i.agl, %.critedge.i322.loopexit.loopexit2022 ], [ %.promoted46.i, %bb.dj ]
  %.lcssa1838 = phi i64 [ %i.agp, %.critedge.i322.loopexit.loopexit2022 ], [ %.promoted.i334, %bb.dj ]
  store ptr %.lcssa1843, ptr %i.f, align 8
  store i64 %.lcssa1848, ptr %i.m, align 8
  br label %.critedge.i322

.critedge.i322.loopexit485.split.loop.exit:       ; preds = %bb.dq, %bb.di
  %indvars.iv1146.lcssa1853 = phi i64 [ %i.afe, %bb.di ], [ %indvars.iv.next1147, %bb.dq ]
  %.lcssa1849 = phi i64 [ %.promoted725, %bb.di ], [ 0, %bb.dq ]
  %.lcssa1844 = phi ptr [ %.promoted46.i, %bb.di ], [ %i.agl, %bb.dq ]
  %.lcssa1839 = phi i64 [ %.promoted.i334, %bb.di ], [ %i.agp, %bb.dq ]
  %i.ahu = trunc nuw nsw i64 %indvars.iv1146.lcssa1853 to i32
  br label %.critedge.i322.loopexit485

.critedge.i322.loopexit485:                       ; preds = %bb.dl, %.critedge.i322.loopexit485.split.loop.exit
  %i.ahv = phi i64 [ %.lcssa1849, %.critedge.i322.loopexit485.split.loop.exit ], [ 0, %bb.dl ]
  %i.ahw = phi ptr [ %.lcssa1844, %.critedge.i322.loopexit485.split.loop.exit ], [ %i.agl, %bb.dl ]
  %.ph486 = phi i32 [ %i.ahu, %.critedge.i322.loopexit485.split.loop.exit ], [ %i.agq, %bb.dl ]
  %.ph487 = phi i64 [ %.lcssa1839, %.critedge.i322.loopexit485.split.loop.exit ], [ %i.agp, %bb.dl ]
  store ptr %i.ahw, ptr %i.f, align 8
  store i64 %i.ahv, ptr %i.m, align 8
  br label %.critedge.i322

.critedge.i322:                                   ; preds = %.critedge.i322.loopexit485, %.critedge.i322.loopexit, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i332, %..critedge_crit_edge.i320
  %i.ahx = phi i32 [ %i.afa, %..critedge_crit_edge.i320 ], [ %indvars.iv1146.lcssa1852, %.critedge.i322.loopexit ], [ %i.afr, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i332 ], [ %.ph486, %.critedge.i322.loopexit485 ]
  %i.ahy = phi i64 [ %.pre.i321, %..critedge_crit_edge.i320 ], [ %.lcssa1838, %.critedge.i322.loopexit ], [ %i.afq, %_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le.exit.i332 ], [ %.ph487, %.critedge.i322.loopexit485 ] ; 3 uses
  %i.ahz = and i64 %i.ahy, 1023
  %i.aia = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.ahz
  %i.aib = load i16, ptr %i.aia, align 2, !alias.scope !483, !noundef !4 ; 2 uses
  %i.aic = sext i16 %i.aib to i32                 ; 3 uses
  %i.aid = icmp sgt i16 %i.aib, -1
  br i1 %i.aid, label %bb.dr, label %.preheader867

bb.dr:                                            ; preds = %.critedge.i322
  %i.aie = lshr i32 %i.aic, 9
  %i.aif = and i32 %i.aic, 511
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss9_0EB6_.exit.thread

.preheader867:                                    ; preds = %.critedge.i322, %bb.ds
  %.sroa.03.0.i.i323 = phi i8 [ %i.ait, %bb.ds ], [ 10, %.critedge.i322 ] ; 3 uses
  %.sroa.0.0.i30.i324 = phi i32 [ %i.ais, %bb.ds ], [ %i.aic, %.critedge.i322 ]
  %i.aig = xor i32 %.sroa.0.0.i30.i324, -1
  %i.aih = and i8 %.sroa.03.0.i.i323, 63
  %i.aii = zext nneg i8 %i.aih to i64
  %i.aij = lshr i64 %i.ahy, %i.aii
  %i.aik = trunc i64 %i.aij to i32
  %i.ail = and i32 %i.aik, 1
  %i.aim = add nuw nsw i32 %i.ail, %i.aig         ; 2 uses
  %i.ain = icmp samesign ult i32 %i.aim, 576
  br i1 %i.ain, label %bb.ds, label %.thread.i.i325

.thread.i.i325:                                   ; preds = %.preheader867
  %i.aio = add i8 %.sroa.03.0.i.i323, 1
  br label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i326

bb.ds:                                            ; preds = %.preheader867
  %i.aip = zext nneg i32 %i.aim to i64
  %i.aiq = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.aip
  %i.air = load i16, ptr %i.aiq, align 2, !alias.scope !491, !noundef !4 ; 2 uses
  %i.ais = sext i16 %i.air to i32                 ; 2 uses
  %i.ait = add i8 %.sroa.03.0.i.i323, 1           ; 2 uses
  %i.aiu = icmp sgt i16 %i.air, -1
  br i1 %i.aiu, label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i326, label %.preheader867

_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i326: ; preds = %bb.ds, %.thread.i.i325
  %i.aiv = phi i8 [ %i.aio, %.thread.i.i325 ], [ %i.ait, %bb.ds ]
  %.sroa.06.011.i.i327 = phi i32 [ 32767, %.thread.i.i325 ], [ %i.ais, %bb.ds ]
  %i.aiw = zext i8 %i.aiv to i32
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss9_0EB6_.exit.thread

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss9_0EB6_.exit.thread: ; preds = %bb.dr, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i326
  %.sroa.018.0.i328 = phi i32 [ %i.aie, %bb.dr ], [ %i.aiw, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i326 ] ; 2 uses
  %.sroa.013.0.i329 = phi i32 [ %i.aif, %bb.dr ], [ %.sroa.06.011.i.i327, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit.i326 ]
  %i.aix = and i32 %.sroa.018.0.i328, 63
  %i.aiy = zext nneg i32 %i.aix to i64
  %i.aiz = lshr i64 %i.ahy, %i.aiy
  store i64 %i.aiz, ptr %i.d, align 8, !alias.scope !484
  %i.aja = sub i32 %i.ahx, %.sroa.018.0.i328
  store i32 %i.aja, ptr %i.y, align 8, !alias.scope !484
  store i32 %.sroa.013.0.i329, ptr %i.aa, align 8, !alias.scope !492
  br label %.backedge.backedge

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss9_0EB6_.exit: ; preds = %bb.dn, %bb.dq, %bb.dp, %.loopexit.i336
  %.lcssa1850 = phi i64 [ %.promoted725, %.loopexit.i336 ], [ 0, %bb.dp ], [ 0, %bb.dq ], [ 0, %bb.dn ]
  store i64 %.lcssa1850, ptr %i.m, align 8
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412

bb.dt:                                            ; preds = %bb.t
  %.val146 = load i64, ptr %i.p, align 8, !noundef !4 ; 3 uses
  %.val147 = load i64, ptr %i.q, align 8, !noundef !4 ; 5 uses
  %.not123 = icmp eq i64 %.val146, %.val147
  br i1 %.not123, label %.thread442, label %bb.du

bb.du:                                            ; preds = %bb.dt
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %i.ajb = icmp ult i64 %.val147, %.val146
  br i1 %i.ajb, label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte.exit342, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.val147, i64 noundef %.val146, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #10, !noalias !493
  unreachable

_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte.exit342: ; preds = %bb.du
  %i.ajc = trunc nuw i32 %i.fr to i8
  %i.ajd = load ptr, ptr %i.e, align 8, !alias.scope !493, !nonnull !4, !noundef !4
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 %.val147
  store i8 %i.ajc, ptr %i.aje, align 1, !noalias !493
  %i.ajf = add nuw i64 %.val147, 1
  store i64 %i.ajf, ptr %i.q, align 8, !alias.scope !493
  br label %.backedge.backedge

.loopexit490:                                     ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_.exit.i
  store ptr %i.gb, ptr %i.f, align 8
  store i64 %i.ga, ptr %i.m, align 8
  br label %bb.dw

bb.dw:                                            ; preds = %.loopexit490, %.._crit_edge_crit_edge.i187
  %i.ajg = phi i64 [ %.pre.i188, %.._crit_edge_crit_edge.i187 ], [ %i.gh, %.loopexit490 ] ; 2 uses
  %.lcssa.i190 = phi i32 [ %.promoted.i186, %.._crit_edge_crit_edge.i187 ], [ %i.gi, %.loopexit490 ]
  %i.ajh = and i32 %i.fu, 63
  %i.aji = zext nneg i32 %i.ajh to i64            ; 2 uses
  %notmask.i191 = shl nsw i64 -1, %i.aji
  %i.ajj = xor i64 %notmask.i191, -1
  %i.ajk = and i64 %i.ajg, %i.ajj
  %i.ajl = lshr i64 %i.ajg, %i.aji
  store i64 %i.ajl, ptr %i.d, align 8, !alias.scope !349
  %i.ajm = sub nuw i32 %.lcssa.i190, %i.fu
  store i32 %i.ajm, ptr %i.y, align 8, !alias.scope !349
  %i.ajn = trunc i64 %i.ajk to i32
  %i.ajo = load i32, ptr %i.aa, align 8, !alias.scope !494, !noundef !4
  %i.ajp = add i32 %i.ajo, %i.ajn
  store i32 %i.ajp, ptr %i.aa, align 8, !alias.scope !494
  br label %.backedge.backedge

._crit_edge682:                                   ; preds = %bb.v
  store i64 %i.gh, ptr %i.d, align 8, !alias.scope !495
  store i32 %i.gi, ptr %i.y, align 8, !alias.scope !496
  br label %.lr.ph.i194._crit_edge

.lr.ph.i194._crit_edge:                           ; preds = %.lr.ph.i194, %._crit_edge682
  store i64 0, ptr %i.m, align 8
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412

.loopexit.i.1:                                    ; preds = %bb.ae, %bb.ah, %bb.ag, %.loopexit.i
  %.lcssa1773 = phi i64 [ %i.gm, %.loopexit.i ], [ 0, %bb.ag ], [ 0, %bb.ah ], [ 0, %bb.ae ]
  store i64 %.lcssa1773, ptr %i.m, align 8
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412

.loopexit494:                                     ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssc_0E0EB6_.exit.i
  store ptr %i.le, ptr %i.f, align 8
  store i64 %i.ld, ptr %i.m, align 8
  br label %bb.dx

bb.dx:                                            ; preds = %.loopexit494, %.._crit_edge_crit_edge.i207
  %i.ajq = phi i64 [ %.pre.i208, %.._crit_edge_crit_edge.i207 ], [ %i.lk, %.loopexit494 ] ; 2 uses
  %.lcssa.i210 = phi i32 [ %.promoted.i206, %.._crit_edge_crit_edge.i207 ], [ %i.ll, %.loopexit494 ]
  %i.ajr = and i32 %i.kx, 63
  %i.ajs = zext nneg i32 %i.ajr to i64            ; 2 uses
  %notmask.i211 = shl nsw i64 -1, %i.ajs
  %i.ajt = xor i64 %notmask.i211, -1
  %i.aju = and i64 %i.ajq, %i.ajt
  %i.ajv = lshr i64 %i.ajq, %i.ajs
  store i64 %i.ajv, ptr %i.d, align 8, !alias.scope !371
  %i.ajw = sub nuw i32 %.lcssa.i210, %i.kx
  store i32 %i.ajw, ptr %i.y, align 8, !alias.scope !371
  %i.ajx = trunc i64 %i.aju to i32
  %i.ajy = load i32, ptr %i.z, align 4, !alias.scope !497, !noundef !4
  %i.ajz = add i32 %i.ajy, %i.ajx
  store i32 %i.ajz, ptr %i.z, align 4, !alias.scope !497
  br label %.backedge.backedge

._crit_edge:                                      ; preds = %bb.an
  store i64 %i.lk, ptr %i.d, align 8, !alias.scope !498
  store i32 %i.ll, ptr %i.y, align 8, !alias.scope !499
  br label %.lr.ph.i214._crit_edge

.lr.ph.i214._crit_edge:                           ; preds = %.lr.ph.i214, %._crit_edge
  store i64 0, ptr %i.m, align 8
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412

.._crit_edge_crit_edge.i221:                      ; preds = %bb.ao, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss4_0E0EB6_.exit.i
  %i.aka = phi i64 [ %i.lu, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss4_0E0EB6_.exit.i ], [ %.promoted10.i228, %bb.ao ] ; 2 uses
  %.lcssa.i224 = phi i32 [ %i.lv, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss4_0E0EB6_.exit.i ], [ %.promoted.i220, %bb.ao ]
  %i.akb = lshr i64 %i.aka, 8
  store i64 %i.akb, ptr %i.d, align 8, !alias.scope !381
  %i.akc = add i32 %.lcssa.i224, -8
  store i32 %i.akc, ptr %i.y, align 8, !alias.scope !381
  %i.akd = trunc i64 %i.aka to i32
  %i.ake = and i32 %i.akd, 255
  store i32 %i.ake, ptr %i.z, align 4, !alias.scope !500
  br label %.backedge.backedge

bb.dy:                                            ; preds = %bb.ap
  %i.akf = load i32, ptr %i.z, align 4, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.akg = icmp ult i64 %.val159, %.val158
  br i1 %i.akg, label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte.exit343, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.val159, i64 noundef %.val158, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #10, !noalias !501
  unreachable

_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte.exit343: ; preds = %bb.dy
  %i.akh = trunc i32 %i.akf to i8
  %i.aki = load ptr, ptr %i.e, align 8, !alias.scope !501, !nonnull !4, !noundef !4
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 %.val159
  store i8 %i.akh, ptr %i.akj, align 1, !noalias !501
  %i.akk = add nuw i64 %.val159, 1
  store i64 %i.akk, ptr %i.q, align 8, !alias.scope !501
  %i.akl = load i32, ptr %i.aa, align 8, !noundef !4
  %i.akm = add i32 %i.akl, -1                     ; 2 uses
  store i32 %i.akm, ptr %i.aa, align 8
  %i.akn = icmp eq i32 %i.akm, 0
  %i.ako = load i32, ptr %i.y, align 8
  %i.akp = icmp eq i32 %i.ako, 0
  %or.cond12 = select i1 %i.akn, i1 true, i1 %i.akp
  %.138 = select i1 %or.cond12, i8 6, i8 17
  br label %.backedge.backedge

bb.ea:                                            ; preds = %bb.aq
  %i.akq = sub i64 %.val156, %i.ly
  %i.akr = sub i64 %i.ly, %i.bk
  %i.aks = and i64 %i.akr, %storemerge
  %i.akt = zext i32 %i.lx to i64
  %..i344 = tail call noundef i64 @llvm.umin.i64(i64 %i.akt, i64 %i.akq) ; 3 uses
  tail call fastcc void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core8transfer(ptr noalias nofree noundef nonnull %i.bl, i64 noundef %.val156, i64 noundef %i.aks, i64 noundef %i.ly, i64 noundef %..i344, i64 noundef %storemerge) #11
  %i.aku = add i64 %..i344, %i.ly                 ; 2 uses
  %i.akv = trunc nuw i64 %..i344 to i32           ; 2 uses
  %i.akw = sub i32 %i.lx, %i.akv                  ; 2 uses
  store i32 %i.akw, ptr %i.aa, align 8
  %i.akx = icmp eq i32 %i.lx, %i.akv
  br i1 %i.akx, label %.loopexit497, label %bb.aq

bb.eb:                                            ; preds = %bb.ar
  %i.aky = load i32, ptr %i.y, align 8, !alias.scope !502, !noundef !4 ; 3 uses
  %.pre.i.i345 = load i64, ptr %i.d, align 8, !alias.scope !503
  %i.akz = and i32 %i.aky, -8
  %i.ala = load i64, ptr %i.m, align 8, !alias.scope !504, !noundef !4
  %i.alb = sub i64 %3, %i.ala                     ; 2 uses
  %i.alc = trunc i64 %i.alb to i32
  %i.ald = lshr i32 %i.aky, 3
  %..i.i346 = tail call noundef range(i32 0, 536870912) i32 @llvm.umin.i32(i32 %i.alc, i32 range(i32 0, 536870912) %i.ald) ; 2 uses
  %i.ale = shl nuw i32 %..i.i346, 3
  %i.alf = sub i32 %i.akz, %i.ale                 ; 2 uses
  store i32 %i.alf, ptr %i.y, align 8, !alias.scope !505
  %i.alg = zext nneg i32 %..i.i346 to i64
  %i.alh = sub i64 %i.alb, %i.alg                 ; 4 uses
  %i.ali = icmp ugt i64 %i.alh, %3
  br i1 %i.ali, label %bb.ed, label %bb.ec, !prof !7

bb.ec:                                            ; preds = %bb.eb
  %i.alj = and i32 %i.aky, 7
  %i.alk = zext nneg i32 %i.alj to i64
  %i.all = lshr i64 %.pre.i.i345, %i.alk
  %i.alm = getelementptr inbounds nuw i8, ptr %2, i64 %i.alh
  %gepdiff = sub nuw nsw i64 %3, %i.alh
  store ptr %i.alm, ptr %i.f, align 8
  store i64 %gepdiff, ptr %i.m, align 8
  %i.aln = and i32 %i.alf, 56
  %i.alo = zext nneg i32 %i.aln to i64
  %notmask = shl nsw i64 -1, %i.alo
  %i.alp = xor i64 %notmask, -1
  %i.alq = and i64 %i.all, %i.alp
  store i64 %i.alq, ptr %i.d, align 8
  br i1 %i.ai, label %.backedge.backedge, label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.alh, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #10
  unreachable

bb.ee:                                            ; preds = %bb.ec
  store i32 0, ptr %i.aa, align 8
  br label %.backedge.backedge

bb.ef:                                            ; preds = %bb.as
  %i.alr = icmp samesign ugt i32 %i.mc, 285
  br i1 %i.alr, label %.backedge.backedge, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.als = add i32 %i.mb, 31
  %i.alt = and i32 %i.als, 31                     ; 2 uses
  %i.alu = zext nneg i32 %i.alt to i64            ; 2 uses
  %i.alv = getelementptr inbounds nuw i8, ptr @18, i64 %i.alu
  %i.alw = load i8, ptr %i.alv, align 1, !noundef !4
  store i8 %i.alw, ptr %i.ac, align 4
  %i.alx = getelementptr inbounds nuw [2 x i8], ptr @19, i64 %i.alu
  %i.aly = load i16, ptr %i.alx, align 2, !noundef !4
  %i.alz = zext i16 %i.aly to i32
  store i32 %i.alz, ptr %i.aa, align 8
  %i.ama = add nsw i32 %i.alt, -28
  %i.amb = icmp ult i32 %i.ama, -20
  %spec.select = select i1 %i.amb, i8 15, i8 14
  br label %.backedge.backedge

bb.eh:                                            ; preds = %bb.at
  %i.amc = load ptr, ptr %i.e, align 8, !alias.scope !506, !nonnull !4, !noundef !4
  %i.amd = load i64, ptr %i.p, align 8, !alias.scope !506, !noundef !4 ; 3 uses
  %i.ame = icmp ult i64 %i.amd, %i.mf
  br i1 %i.ame, label %.backedge.backedge, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.amf = load i32, ptr %i.aa, align 8, !noundef !4 ; 2 uses
  %i.amg = zext i32 %i.amf to i64                 ; 3 uses
  %i.amh = add i64 %i.mg, %i.amg                  ; 2 uses
  %i.ami = icmp ugt i64 %i.amh, %i.amd
  br i1 %i.ami, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.amj = sub i64 %i.mg, %i.mf
  %i.amk = and i64 %i.amj, %storemerge            ; 2 uses
  %.not = icmp uge i64 %i.amk, %i.mg
  %i.aml = sub nuw i64 %i.amk, %i.mg
  %i.amm = icmp ult i64 %i.aml, %i.amg
  %or.cond141 = select i1 %.not, i1 %i.amm, i1 false
  br i1 %or.cond141, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %i.amn = icmp eq i32 %i.amf, 0
  %.139 = select i1 %i.amn, i8 12, i8 19
  br label %.backedge.backedge

bb.el:                                            ; preds = %bb.ej
  tail call fastcc void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11apply_match(ptr noalias nofree noundef nonnull %i.amc, i64 noundef %i.amd, i64 noundef %i.mg, i64 noundef %i.mf, i64 noundef %i.amg, i64 noundef %storemerge) #11
  store i64 %i.amh, ptr %i.q, align 8, !alias.scope !507
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.el, %bb.eh, %bb.at, %bb.ek, %bb.as, %bb.ef, %bb.eg, %bb.ee, %bb.ar, %bb.ec, %bb.ak, %bb.al, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte.exit342, %bb.t, %bb.de, %bb.cx, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss9_0EB6_.exit.thread, %.loopexit489, %.split.loop.exit, %.split.loop.exit755, %bb.l, %bb.bk, %._crit_edge1735, %bb.ax, %bb.ay, %bb.k, %bb.j, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread.loopexit.split.loop.exit845, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread.loopexit.split.loop.exit, %bb.c, %bb.au, %bb.av, %bb.aw, %_RNvXs5_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsjkkKzr5dxZe_11miniz_oxide.exit, %._crit_edge829, %bb.ct, %bb.dw, %bb.dx, %.._crit_edge_crit_edge.i221, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte.exit343, %.loopexit479, %.loopexit497, %.loopexit499
  %.sroa.0.0.be = phi i8 [ %., %bb.c ], [ 2, %bb.au ], [ %..i.i.i, %bb.av ], [ 24, %.loopexit499 ], [ 5, %bb.aw ], [ 4, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread.loopexit.split.loop.exit845 ], [ %.136, %bb.ay ], [ 6, %_RNvXs5_NtNtCshzWfHUSfYae_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsjkkKzr5dxZe_11miniz_oxide.exit ], [ %.137, %._crit_edge829 ], [ %.sroa.851.1.le781, %.loopexit479 ], [ 7, %bb.bk ], [ 10, %bb.ct ], [ %.sroa.9.1.le, %.split.loop.exit755 ], [ 21, %.loopexit489 ], [ 15, %bb.dw ], [ 21, %bb.t ], [ 22, %bb.dx ], [ 18, %.._crit_edge_crit_edge.i221 ], [ %.138, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte.exit343 ], [ 12, %.loopexit497 ], [ %..i31.i, %bb.al ], [ 24, %bb.ec ], [ 33, %bb.ef ], [ 8, %bb.j ], [ 25, %bb.k ], [ %i.mq, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread.loopexit.split.loop.exit ], [ 20, %bb.ax ], [ 31, %._crit_edge1735 ], [ 20, %bb.l ], [ 26, %.split.loop.exit ], [ 13, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresss9_0EB6_.exit.thread ], [ %i.adk, %bb.cx ], [ 21, %bb.de ], [ 12, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer10write_byte.exit342 ], [ 34, %bb.ak ], [ 23, %bb.ee ], [ 3, %bb.ar ], [ %spec.select, %bb.eg ], [ 20, %bb.as ], [ 12, %bb.el ], [ %.139, %bb.ek ], [ 30, %bb.at ], [ 30, %bb.eh ]
  br label %.backedge

bb.em:                                            ; preds = %.lr.ph1722
  %.not.i.not.i347 = icmp eq i64 %.promoted639, 0
  br i1 %.not.i.not.i347, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit500, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.amo = add i64 %.promoted639, -1
  %i.amp = getelementptr inbounds nuw i8, ptr %.promoted636, i64 1
  %i.amq = load i8, ptr %.promoted636, align 1, !noalias !508, !noundef !4
  %i.amr = shl i32 %.promoted643, 8
  %i.ams = zext i8 %i.amq to i32
  %i.amt = or disjoint i32 %i.amr, %i.ams
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit

bb.eo:                                            ; preds = %.lr.ph1722
  tail call void @llvm.experimental.noalias.scope.decl(metadata !509)
  %i.amu = icmp ult i32 %.promoted632, 8
  br i1 %i.amu, label %.lr.ph.i358, label %._crit_edge.i354

.lr.ph.i358:                                      ; preds = %bb.eo
  %.not.i.not.i.i362 = icmp eq i64 %.promoted639, 0
  br i1 %.not.i.not.i.i362, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit500, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i

._crit_edge.i354:                                 ; preds = %bb.eo, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i
  %.promoted12.i361641 = phi i64 [ %i.and, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i ], [ %.promoted639, %bb.eo ]
  %i.amv = phi ptr [ %i.ane, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i ], [ %.promoted636, %bb.eo ]
  %i.amw = phi i64 [ %i.anj, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i ], [ %.promoted633, %bb.eo ] ; 2 uses
  %.lcssa.i355 = phi i32 [ %i.ank, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i ], [ %.promoted632, %bb.eo ]
  %i.amx = lshr i64 %i.amw, 8                     ; 2 uses
  store i64 %i.amx, ptr %i.d, align 8, !alias.scope !509
  %i.amy = add i32 %.lcssa.i355, -8               ; 2 uses
  store i32 %i.amy, ptr %i.y, align 8, !alias.scope !509
  %i.amz = shl i32 %.promoted643, 8
  %i.ana = trunc i64 %i.amw to i32
  %i.anb = and i32 %i.ana, 255
  %i.anc = or disjoint i32 %i.amz, %i.anb
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i: ; preds = %.lr.ph.i358
  %i.and = add i64 %.promoted639, -1
  %i.ane = getelementptr inbounds nuw i8, ptr %.promoted636, i64 1
  %i.anf = load i8, ptr %.promoted636, align 1, !noalias !510, !noundef !4
  %i.ang = zext i8 %i.anf to i64
  %i.anh = zext nneg i32 %.promoted632 to i64
  %i.ani = shl nuw nsw i64 %i.ang, %i.anh
  %i.anj = or i64 %i.ani, %.promoted633
  %i.ank = or disjoint i32 %.promoted632, 8
  br label %._crit_edge.i354

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit: ; preds = %._crit_edge.i354, %bb.en
  %.sink = phi i32 [ %i.anc, %._crit_edge.i354 ], [ %i.amt, %bb.en ] ; 3 uses
  %.promoted12.i361640 = phi i64 [ %.promoted12.i361641, %._crit_edge.i354 ], [ %i.amo, %bb.en ] ; 6 uses
  %i.anl = phi ptr [ %i.amv, %._crit_edge.i354 ], [ %i.amp, %bb.en ] ; 6 uses
  %.promoted10.i359634 = phi i64 [ %i.amx, %._crit_edge.i354 ], [ %.promoted633, %bb.en ] ; 3 uses
  %i.anm = phi i32 [ %i.amy, %._crit_edge.i354 ], [ 0, %bb.en ] ; 5 uses
  store i32 %.sink, ptr %i.ad, align 4
  %i.ann = add nuw nsw i32 %.promoted, 1
  store i32 %i.ann, ptr %i.aa, align 8
  %.not2043 = icmp eq i32 %.promoted, 3
  br i1 %.not2043, label %.loopexit499, label %bb.ep

bb.ep:                                            ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit
  %i.ano = icmp eq i32 %i.anm, 0
  br i1 %i.ano, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  tail call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %i.anp = icmp ult i32 %i.anm, 8
  br i1 %i.anp, label %.lr.ph.i358.1, label %._crit_edge.i354.1

.lr.ph.i358.1:                                    ; preds = %bb.eq
  %.not.i.not.i.i362.1 = icmp eq i64 %.promoted12.i361640, 0
  br i1 %.not.i.not.i.i362.1, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit500, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.1

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.1: ; preds = %.lr.ph.i358.1
  %i.anq = add i64 %.promoted12.i361640, -1
  %i.anr = getelementptr inbounds nuw i8, ptr %i.anl, i64 1
  %i.ans = load i8, ptr %i.anl, align 1, !noalias !512, !noundef !4
  %i.ant = zext i8 %i.ans to i64
  %i.anu = zext nneg i32 %i.anm to i64
  %i.anv = shl nuw nsw i64 %i.ant, %i.anu
  %i.anw = or i64 %i.anv, %.promoted10.i359634
  %i.anx = or disjoint i32 %i.anm, 8
  br label %._crit_edge.i354.1

._crit_edge.i354.1:                               ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.1, %bb.eq
  %.promoted12.i361641.1 = phi i64 [ %i.anq, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.1 ], [ %.promoted12.i361640, %bb.eq ]
  %i.any = phi ptr [ %i.anr, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.1 ], [ %i.anl, %bb.eq ]
  %i.anz = phi i64 [ %i.anw, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.1 ], [ %.promoted10.i359634, %bb.eq ] ; 2 uses
  %.lcssa.i355.1 = phi i32 [ %i.anx, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.1 ], [ %i.anm, %bb.eq ]
  %i.aoa = lshr i64 %i.anz, 8                     ; 2 uses
  store i64 %i.aoa, ptr %i.d, align 8, !alias.scope !511
  %i.aob = add i32 %.lcssa.i355.1, -8             ; 2 uses
  store i32 %i.aob, ptr %i.y, align 8, !alias.scope !511
  %i.aoc = shl i32 %.sink, 8
  %i.aod = trunc i64 %i.anz to i32
  %i.aoe = and i32 %i.aod, 255
  %i.aof = or disjoint i32 %i.aoc, %i.aoe
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit.1

bb.er:                                            ; preds = %bb.ep
  %.not.i.not.i347.1 = icmp eq i64 %.promoted12.i361640, 0
  br i1 %.not.i.not.i347.1, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit500, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.aog = add i64 %.promoted12.i361640, -1
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.anl, i64 1
  %i.aoi = load i8, ptr %i.anl, align 1, !noalias !508, !noundef !4
  %i.aoj = shl i32 %.sink, 8
  %i.aok = zext i8 %i.aoi to i32
  %i.aol = or disjoint i32 %i.aoj, %i.aok
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit.1

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit.1: ; preds = %bb.es, %._crit_edge.i354.1
  %.sink.1 = phi i32 [ %i.aof, %._crit_edge.i354.1 ], [ %i.aol, %bb.es ] ; 3 uses
  %.promoted12.i361640.1 = phi i64 [ %.promoted12.i361641.1, %._crit_edge.i354.1 ], [ %i.aog, %bb.es ] ; 6 uses
  %i.aom = phi ptr [ %i.any, %._crit_edge.i354.1 ], [ %i.aoh, %bb.es ] ; 6 uses
  %.promoted10.i359634.1 = phi i64 [ %i.aoa, %._crit_edge.i354.1 ], [ %.promoted10.i359634, %bb.es ] ; 3 uses
  %i.aon = phi i32 [ %i.aob, %._crit_edge.i354.1 ], [ 0, %bb.es ] ; 5 uses
  store i32 %.sink.1, ptr %i.ad, align 4
  %i.aoo = add nuw nsw i32 %.promoted, 2
  store i32 %i.aoo, ptr %i.aa, align 8
  %i.aop = icmp ult i32 %.promoted, 2
  br i1 %i.aop, label %bb.et, label %.loopexit499

bb.et:                                            ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit.1
  %i.aoq = icmp eq i32 %i.aon, 0
  br i1 %i.aoq, label %bb.ev, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  tail call void @llvm.experimental.noalias.scope.decl(metadata !513)
  %i.aor = icmp ult i32 %i.aon, 8
  br i1 %i.aor, label %.lr.ph.i358.2, label %._crit_edge.i354.2

.lr.ph.i358.2:                                    ; preds = %bb.eu
  %.not.i.not.i.i362.2 = icmp eq i64 %.promoted12.i361640.1, 0
  br i1 %.not.i.not.i.i362.2, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit500, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.2

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.2: ; preds = %.lr.ph.i358.2
  %i.aos = add i64 %.promoted12.i361640.1, -1
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aom, i64 1
  %i.aou = load i8, ptr %i.aom, align 1, !noalias !514, !noundef !4
  %i.aov = zext i8 %i.aou to i64
  %i.aow = zext nneg i32 %i.aon to i64
  %i.aox = shl nuw nsw i64 %i.aov, %i.aow
  %i.aoy = or i64 %i.aox, %.promoted10.i359634.1
  %i.aoz = or disjoint i32 %i.aon, 8
  br label %._crit_edge.i354.2

._crit_edge.i354.2:                               ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.2, %bb.eu
  %.promoted12.i361641.2 = phi i64 [ %i.aos, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.2 ], [ %.promoted12.i361640.1, %bb.eu ]
  %i.apa = phi ptr [ %i.aot, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.2 ], [ %i.aom, %bb.eu ]
  %i.apb = phi i64 [ %i.aoy, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.2 ], [ %.promoted10.i359634.1, %bb.eu ] ; 2 uses
  %.lcssa.i355.2 = phi i32 [ %i.aoz, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.2 ], [ %i.aon, %bb.eu ]
  %i.apc = lshr i64 %i.apb, 8                     ; 2 uses
  store i64 %i.apc, ptr %i.d, align 8, !alias.scope !513
  %i.apd = add i32 %.lcssa.i355.2, -8             ; 2 uses
  store i32 %i.apd, ptr %i.y, align 8, !alias.scope !513
  %i.ape = shl i32 %.sink.1, 8
  %i.apf = trunc i64 %i.apb to i32
  %i.apg = and i32 %i.apf, 255
  %i.aph = or disjoint i32 %i.ape, %i.apg
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit.2

bb.ev:                                            ; preds = %bb.et
  %.not.i.not.i347.2 = icmp eq i64 %.promoted12.i361640.1, 0
  br i1 %.not.i.not.i347.2, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit500, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.api = add i64 %.promoted12.i361640.1, -1
  %i.apj = getelementptr inbounds nuw i8, ptr %i.aom, i64 1
  %i.apk = load i8, ptr %i.aom, align 1, !noalias !508, !noundef !4
  %i.apl = shl i32 %.sink.1, 8
  %i.apm = zext i8 %i.apk to i32
  %i.apn = or disjoint i32 %i.apl, %i.apm
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit.2

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit.2: ; preds = %bb.ew, %._crit_edge.i354.2
  %.sink.2 = phi i32 [ %i.aph, %._crit_edge.i354.2 ], [ %i.apn, %bb.ew ] ; 3 uses
  %.promoted12.i361640.2 = phi i64 [ %.promoted12.i361641.2, %._crit_edge.i354.2 ], [ %i.api, %bb.ew ] ; 6 uses
  %i.apo = phi ptr [ %i.apa, %._crit_edge.i354.2 ], [ %i.apj, %bb.ew ] ; 6 uses
  %.promoted10.i359634.2 = phi i64 [ %i.apc, %._crit_edge.i354.2 ], [ %.promoted10.i359634.1, %bb.ew ] ; 2 uses
  %i.app = phi i32 [ %i.apd, %._crit_edge.i354.2 ], [ 0, %bb.ew ] ; 5 uses
  store i32 %.sink.2, ptr %i.ad, align 4
  %i.apq = add nuw nsw i32 %.promoted, 3
  store i32 %i.apq, ptr %i.aa, align 8
  %i.apr = icmp eq i32 %.promoted, 0
  br i1 %i.apr, label %bb.ex, label %.loopexit499

bb.ex:                                            ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit.2
  %i.aps = icmp eq i32 %i.app, 0
  br i1 %i.aps, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  tail call void @llvm.experimental.noalias.scope.decl(metadata !515)
  %i.apt = icmp ult i32 %i.app, 8
  br i1 %i.apt, label %.lr.ph.i358.3, label %._crit_edge.i354.3

.lr.ph.i358.3:                                    ; preds = %bb.ey
  %.not.i.not.i.i362.3 = icmp eq i64 %.promoted12.i361640.2, 0
  br i1 %.not.i.not.i.i362.3, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit500, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.3

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.3: ; preds = %.lr.ph.i358.3
  %i.apu = add i64 %.promoted12.i361640.2, -1
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apo, i64 1
  %i.apw = load i8, ptr %i.apo, align 1, !noalias !516, !noundef !4
  %i.apx = zext i8 %i.apw to i64
  %i.apy = zext nneg i32 %i.app to i64
  %i.apz = shl nuw nsw i64 %i.apx, %i.apy
  %i.aqa = or i64 %i.apz, %.promoted10.i359634.2
  %i.aqb = or disjoint i32 %i.app, 8
  br label %._crit_edge.i354.3

._crit_edge.i354.3:                               ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.3, %bb.ey
  %.promoted12.i361641.3 = phi i64 [ %i.apu, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.3 ], [ %.promoted12.i361640.2, %bb.ey ]
  %i.aqc = phi ptr [ %i.apv, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.3 ], [ %i.apo, %bb.ey ]
  %i.aqd = phi i64 [ %i.aqa, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.3 ], [ %.promoted10.i359634.2, %bb.ey ] ; 2 uses
  %.lcssa.i355.3 = phi i32 [ %i.aqb, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompressse_0E0EB6_.exit.i.3 ], [ %i.app, %bb.ey ]
  %i.aqe = lshr i64 %i.aqd, 8
  store i64 %i.aqe, ptr %i.d, align 8, !alias.scope !515
  %i.aqf = add i32 %.lcssa.i355.3, -8
  store i32 %i.aqf, ptr %i.y, align 8, !alias.scope !515
  %i.aqg = shl i32 %.sink.2, 8
  %i.aqh = trunc i64 %i.aqd to i32
  %i.aqi = and i32 %i.aqh, 255
  %i.aqj = or disjoint i32 %i.aqg, %i.aqi
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit.3

bb.ez:                                            ; preds = %bb.ex
  %.not.i.not.i347.3 = icmp eq i64 %.promoted12.i361640.2, 0
  br i1 %.not.i.not.i347.3, label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412.loopexit500, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.aqk = add i64 %.promoted12.i361640.2, -1
  %i.aql = getelementptr inbounds nuw i8, ptr %i.apo, i64 1
  %i.aqm = load i8, ptr %i.apo, align 1, !noalias !508, !noundef !4
  %i.aqn = shl i32 %.sink.2, 8
  %i.aqo = zext i8 %i.aqm to i32
  %i.aqp = or disjoint i32 %i.aqn, %i.aqo
  br label %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit.3

_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresssf_0EB6_.exit.3: ; preds = %bb.fa, %._crit_edge.i354.3
  %.sink.3 = phi i32 [ %i.aqj, %._crit_edge.i354.3 ], [ %i.aqp, %bb.fa ]
  %.promoted12.i361640.3 = phi i64 [ %.promoted12.i361641.3, %._crit_edge.i354.3 ], [ %i.aqk, %bb.fa ]
  %i.aqq = phi ptr [ %i.aqc, %._crit_edge.i354.3 ], [ %i.aql, %bb.fa ]
  store i32 %.sink.3, ptr %i.ad, align 4
  store i32 4, ptr %i.aa, align 8
  br label %.loopexit499

.thread442.loopexit:                              ; preds = %bb.bq
  store i64 %.promoted12.i278793, ptr %i.m, align 8
  br label %.thread442

.thread442.loopexit482:                           ; preds = %bb.cr
  store i64 %.lcssa754763, ptr %i.m, align 8
  br label %.thread442

.thread442.loopexit496:                           ; preds = %bb.aq
  store i64 %.val156, ptr %i.q, align 8
  br label %.thread442

.thread442.loopexit1745:                          ; preds = %.backedge
  br label %.thread442

.thread442:                                       ; preds = %bb.bk, %bb.dt, %bb.ap, %bb.i, %.backedge, %.thread442.loopexit1745, %.thread442.loopexit496, %.thread442.loopexit482, %.thread442.loopexit, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412
  %.sroa.0365.0433446 = phi i8 [ %.sroa.0365.0, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412 ], [ 0, %.backedge ], [ -1, %.thread442.loopexit482 ], [ -1, %.thread442.loopexit ], [ 2, %.thread442.loopexit496 ], [ %i.cy, %bb.i ], [ 2, %bb.bk ], [ 2, %bb.dt ], [ 2, %bb.ap ], [ -1, %.thread442.loopexit1745 ] ; 2 uses
  %i.aqr = phi i8 [ %.sroa.0.1, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412 ], [ %.sroa.0.0, %.backedge ], [ 10, %.thread442.loopexit482 ], [ 9, %.thread442.loopexit ], [ 19, %.thread442.loopexit496 ], [ 3, %bb.i ], [ %.sroa.0.0, %bb.ap ], [ %.sroa.0.0, %bb.dt ], [ %.sroa.0.0, %bb.bk ], [ %.sroa.0.0, %.thread442.loopexit1745 ]
  %i.aqs = load i64, ptr %i.m, align 8, !alias.scope !517, !noundef !4
  %i.aqt = sub i64 %3, %i.aqs
  %i.aqu = trunc i64 %i.aqt to i32
  %i.aqv = load i32, ptr %i.y, align 8, !alias.scope !518, !noundef !4 ; 2 uses
  %i.aqw = lshr i32 %i.aqv, 3
  %..i.i364 = tail call noundef range(i32 0, 536870912) i32 @llvm.umin.i32(i32 %i.aqu, i32 range(i32 0, 536870912) %i.aqw) ; 2 uses
  %i.aqx = shl nuw i32 %..i.i364, 3
  %i.aqy = sub i32 %i.aqv, %i.aqx
  store i32 %i.aqy, ptr %i.y, align 8, !alias.scope !518
  %i.aqz = zext nneg i32 %..i.i364 to i64
  %i.ara = icmp ne i8 %.sroa.0365.0433446, 0
  %i.arb = or i1 %i.ai, %i.ara
  br label %.thread451

bb.fb:                                            ; preds = %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412
  %.val = load i64, ptr %i.p, align 8, !noundef !4
  %.val143 = load i64, ptr %i.q, align 8, !noundef !4
  %i.arc = icmp ne i64 %.val, %.val143
  %i.ard = icmp eq i8 %.sroa.0.1, 23
  %or.cond460 = select i1 %i.arc, i1 true, i1 %i.ard
  %spec.select466 = select i1 %or.cond460, i8 1, i8 2
  br label %.thread451

.thread451:                                       ; preds = %bb.fb, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412, %.thread442
  %.sroa.099.0455 = phi i64 [ %i.aqz, %.thread442 ], [ 0, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412 ], [ 0, %bb.fb ]
  %i.are = phi i8 [ %i.aqr, %.thread442 ], [ %.sroa.0.1, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412 ], [ %.sroa.0.1, %bb.fb ]
  %.sroa.0365.1 = phi i1 [ %i.arb, %.thread442 ], [ true, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412 ], [ true, %bb.fb ]
  %i.arf = phi i8 [ %.sroa.0365.0433446, %.thread442 ], [ %.sroa.0365.0, %_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_.exit.thread412 ], [ %spec.select466, %bb.fb ] ; 4 uses
  store i8 %i.are, ptr %i.n, align 4
  %i.arg = load i64, ptr %i.d, align 8, !noundef !4
  %i.arh = load i32, ptr %i.y, align 8, !noundef !4 ; 2 uses
  store i32 %i.arh, ptr %i.t, align 8
  %i.ari = load <2 x i32>, ptr %i.z, align 4
  store <2 x i32> %i.ari, ptr %i.v, align 4
  %i.arj = load i8, ptr %i.ac, align 4, !noundef !4
  store i8 %i.arj, ptr %i.w, align 8
  %i.ark = and i32 %i.arh, 63
  %i.arl = zext nneg i32 %i.ark to i64
  %notmask133 = shl nsw i64 -1, %i.arl
  %i.arm = xor i64 %notmask133, -1
  %i.arn = and i64 %i.arg, %i.arm
  store i64 %i.arn, ptr %i.r, align 8
  %i.aro = and i32 %7, 64
  %i.arp = icmp eq i32 %i.aro, 0
  br i1 %i.arp, label %bb.fc, label %.thread451._crit_edge

.thread451._crit_edge:                            ; preds = %.thread451
  %.pre1153 = load i64, ptr %i.q, align 8, !alias.scope !519
  br label %bb.fd

bb.fc:                                            ; preds = %.thread451
  %i.arq = and i32 %7, 9
  %i.arr = icmp ne i32 %i.arq, 0
  %i.ars = icmp sgt i8 %i.arf, -1
  %or.cond15 = select i1 %i.arr, i1 %i.ars, i1 false
  %.pre1154 = load i64, ptr %i.q, align 8         ; 6 uses
  br i1 %or.cond15, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %.thread451._crit_edge, %bb.ff, %bb.fc
  %i.art = phi i64 [ %.pre1154, %bb.fc ], [ %.pre1153, %.thread451._crit_edge ], [ %.pre1154, %bb.ff ]
  %i.aru = phi i8 [ %i.arf, %bb.fc ], [ %i.arf, %.thread451._crit_edge ], [ %spec.select467, %bb.ff ]
  %i.arv = load i64, ptr %i.m, align 8, !alias.scope !520, !noundef !4
  %i.arw = add i64 %.sroa.099.0455, %i.arv
  %i.arx = sub i64 %3, %i.arw
  %i.ary = sub i64 %i.art, %6
  %i.arz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.aru, ptr %i.arz, align 8
  store i64 %i.arx, ptr %0, align 8
  %i.asa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ary, ptr %i.asa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.fh

bb.fe:                                            ; preds = %bb.fc
  %i.asb = load i64, ptr %i.p, align 8, !alias.scope !521, !noundef !4 ; 2 uses
  %i.asc = icmp ult i64 %.pre1154, %6
  %.not134 = icmp ugt i64 %.pre1154, %i.asb
  %or.cond142 = or i1 %i.asc, %.not134
  br i1 %or.cond142, label %bb.fg, label %bb.ff, !prof !8

bb.ff:                                            ; preds = %bb.fe
  %i.asd = load ptr, ptr %i.e, align 8, !alias.scope !521, !nonnull !4, !noundef !4
  %i.ase = load i32, ptr %i.bg, align 8, !noundef !4
  %i.asf = sub nuw i64 %.pre1154, %6
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asd, i64 %6
  %i.ash = tail call noundef i32 @_RNvNtCsjkkKzr5dxZe_11miniz_oxide6shared14update_adler32(i32 noundef %i.ase, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.asg, i64 noundef %i.asf) ; 2 uses
  store i32 %i.ash, ptr %i.bg, align 8
  %i.asi = load i32, ptr %i.ad, align 4
  %.not135 = icmp eq i32 %i.ash, %i.asi
  %or.cond464 = select i1 %.sroa.0365.1, i1 true, i1 %.not135
  %spec.select467 = select i1 %or.cond464, i8 %i.arf, i8 -2
  br label %bb.fd

bb.fg:                                            ; preds = %bb.fe
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %6, i64 noundef %.pre1154, i64 noundef %i.asb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #10
  unreachable

bb.fh:                                            ; preds = %bb.fi, %bb.fd
  ret void

bb.fi:                                            ; preds = %bb.a
  %i.asj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -3, ptr %i.asj, align 8
  store i64 0, ptr %0, align 8
  %i.ask = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ask, align 8
  br label %bb.fh
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11apply_match(ptr noalias nofree noundef nonnull %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef range(i64 0, 4294967296) %3, i64 noundef range(i64 0, 4294967296) %4, i64 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = sub i64 %2, %3
  %i.c = and i64 %5, %i.b                         ; 17 uses
  %i.d = icmp eq i64 %4, 3
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = icmp ugt i64 %2, -4
  %i.f = add i64 %2, 3
  %.not24 = icmp ugt i64 %i.f, %1
  %or.cond26 = or i1 %i.e, %.not24
  br i1 %or.cond26, label %bb.g, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = icmp uge i64 %i.c, %2                    ; 2 uses
  %i.h = sub i64 %i.c, %2
  %i.i = icmp ult i64 %i.h, %4
  %or.cond = and i1 %i.g, %i.i
  br i1 %or.cond, label %bb.i, label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = icmp ult i64 %i.c, %1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %.sroa.04.0 = select i1 %i.j, ptr %i.k, ptr null
  %i.l = add i64 %i.c, 1
  %i.m = and i64 %i.l, %5                         ; 2 uses
  %i.n = icmp ult i64 %i.m, %1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  %.sroa.05.0 = select i1 %i.n, ptr %i.o, ptr null
  %i.p = tail call { ptr, ptr } @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtB5_4cell4CellhEE3zipBI_ECsjkkKzr5dxZe_11miniz_oxide(ptr noundef %.sroa.04.0, ptr noundef %.sroa.05.0) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0
  %i.r = extractvalue { ptr, ptr } %i.p, 1
  %i.s = add i64 %i.c, 2
  %i.t = and i64 %i.s, %5                         ; 2 uses
  %i.u = icmp ult i64 %i.t, %1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %i.t
  %.sroa.06.0 = select i1 %i.u, ptr %i.v, ptr null
  call void @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTRINtNtB5_4cell4CellhEBJ_EE3zipBJ_ECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef %i.q, ptr %i.r, ptr noundef %.sroa.06.0)
  %i.w = load ptr, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %.not25 = icmp eq ptr %i.w, null
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %2 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %i.ac = load i8, ptr %i.w, align 1, !noundef !4
  store i8 %i.ac, ptr %i.x, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ae = load i8, ptr %i.z, align 1, !noundef !4
  store i8 %i.ae, ptr %i.ad, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ag = load i8, ptr %i.ab, align 1, !noundef !4
  store i8 %i.ag, ptr %i.af, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b, %bb.i, %bb.j, %bb.w, %bb.s
  ret void

bb.h:                                             ; preds = %bb.c
  %.not = icmp samesign ugt i64 %4, %3
  br i1 %.not, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.c
  tail call fastcc void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core8transfer(ptr noalias nofree noundef nonnull %0, i64 noundef %1, i64 noundef %i.c, i64 noundef %2, i64 noundef %4, i64 noundef %5) #11
  br label %bb.g

bb.j:                                             ; preds = %bb.k, %bb.h
  tail call fastcc void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core8transfer(ptr noalias nofree noundef nonnull %0, i64 noundef %1, i64 noundef %i.c, i64 noundef %2, i64 noundef %4, i64 noundef %5) #11
  br label %bb.g

bb.k:                                             ; preds = %bb.h
  %i.ah = add i64 %i.c, %4                        ; 4 uses
  %i.ai = icmp ult i64 %i.ah, %1
  br i1 %i.ai, label %bb.l, label %bb.j

bb.l:                                             ; preds = %bb.k
  br i1 %i.g, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %.not.i = icmp ugt i64 %i.c, %1
  br i1 %.not.i, label %bb.n, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh12split_at_mutCsjkkKzr5dxZe_11miniz_oxide.exit, !prof !7

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #10, !noalias !528
  unreachable

_RNvMNtCshzWfHUSfYae_4core5sliceSh12split_at_mutCsjkkKzr5dxZe_11miniz_oxide.exit: ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  %i.ak = sub nuw nsw i64 %1, %i.c                ; 2 uses
  %i.al = add i64 %4, %2                          ; 3 uses
  %i.am = icmp ult i64 %i.al, %2
  %.not20 = icmp ugt i64 %i.al, %i.c
  %or.cond27 = or i1 %i.am, %.not20
  br i1 %or.cond27, label %bb.r, label %bb.q, !prof !8

bb.o:                                             ; preds = %bb.l
  %.not.i29 = icmp ugt i64 %2, %1
  br i1 %.not.i29, label %bb.p, label %_RNvMNtCshzWfHUSfYae_4core5sliceSh12split_at_mutCsjkkKzr5dxZe_11miniz_oxide.exit33, !prof !7

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #10, !noalias !529
  unreachable

_RNvMNtCshzWfHUSfYae_4core5sliceSh12split_at_mutCsjkkKzr5dxZe_11miniz_oxide.exit33: ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %2
  %i.ao = sub nuw nsw i64 %1, %2                  ; 2 uses
  %.not22 = icmp samesign ugt i64 %4, %i.ao
  br i1 %.not22, label %bb.v, label %bb.u, !prof !8

bb.q:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh12split_at_mutCsjkkKzr5dxZe_11miniz_oxide.exit
  %.not21 = icmp samesign ugt i64 %4, %i.ak
  br i1 %.not21, label %bb.t, label %bb.s, !prof !8

bb.r:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh12split_at_mutCsjkkKzr5dxZe_11miniz_oxide.exit
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %2, i64 noundef %i.al, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #10
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %2
  tail call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.ap, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22)
  br label %bb.g

bb.t:                                             ; preds = %bb.q
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %4, i64 noundef %i.ak, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #10
  unreachable

bb.u:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh12split_at_mutCsjkkKzr5dxZe_11miniz_oxide.exit33
  %i.aq = icmp ult i64 %i.ah, %i.c
  %.not23 = icmp samesign ugt i64 %i.ah, %2
  %or.cond28 = or i1 %i.aq, %.not23
  br i1 %or.cond28, label %bb.x, label %bb.w, !prof !8

bb.v:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSh12split_at_mutCsjkkKzr5dxZe_11miniz_oxide.exit33
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %4, i64 noundef %i.ao, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #10
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.c
  tail call void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull %i.an, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26)
  br label %bb.g

bb.x:                                             ; preds = %bb.u
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %i.c, i64 noundef %i.ah, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #10
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i8, i8 } @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core15decompress_fast(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(10504) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2, i32 noundef %3, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %4, align 8 ; 2 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.23.0.copyload = load i32, ptr %.sroa.23.0..sroa_idx, align 8 ; 2 uses
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %.sroa.45.0.copyload = load i32, ptr %.sroa.45.0..sroa_idx, align 4 ; 2 uses
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.51.0.copyload = load i32, ptr %.sroa.51.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %.sroa.66.0.copyload = load i8, ptr %.sroa.66.0..sroa_idx, align 4 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.promoted171 = load i64, ptr %i.c, align 8     ; 2 uses
  %.promoted = load i64, ptr %i.d, align 8        ; 2 uses
  %i.e = sub i64 %i.b, %.promoted171
  %i.f = icmp ult i64 %i.e, 259
  %i.g = icmp ult i64 %.promoted, 14
  %or.cond91158186 = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond91158186, label %.loopexit, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %.promoted172 = load ptr, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2560 ; 2 uses
  %i.j = load ptr, ptr %2, align 8, !nonnull !4   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3712
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5760
  %i.m = and i32 %3, 4
  %i.n = icmp ne i32 %i.m, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %bb.ac
  %.sroa.0.0191 = phi i64 [ %.sroa.0.0.copyload, %.lr.ph.lr.ph ], [ %.sroa.0.6, %bb.ac ]
  %.sroa.23.0190 = phi i32 [ %.sroa.23.0.copyload, %.lr.ph.lr.ph ], [ %.sroa.23.6, %bb.ac ]
  %.sroa.45.0189 = phi i32 [ %.sroa.45.0.copyload, %.lr.ph.lr.ph ], [ %.sroa.45.1, %bb.ac ] ; 4 uses
  %.sroa.66.0188 = phi i8 [ %.sroa.66.0.copyload, %.lr.ph.lr.ph ], [ %i.fh, %bb.ac ] ; 3 uses
  %i.o = phi i64 [ %.promoted171, %.lr.ph.lr.ph ], [ %i.gj, %bb.ac ]
  %i.p = phi i64 [ %.promoted, %.lr.ph.lr.ph ], [ %i.fo, %bb.ac ] ; 2 uses
  %.promoted157178187 = phi ptr [ %.promoted172, %.lr.ph.lr.ph ], [ %.promoted157174, %bb.ac ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.n
  %.promoted157177 = phi ptr [ %.promoted157178187, %.lr.ph ], [ %.promoted157176, %bb.n ]
  %i.q = phi i64 [ %i.p, %.lr.ph ], [ %i.ac, %bb.n ]
  %i.r = phi i64 [ %i.o, %.lr.ph ], [ %i.cs, %bb.n ] ; 6 uses
  %.sroa.0.1160 = phi i64 [ %.sroa.0.0191, %.lr.ph ], [ %i.ch, %bb.n ] ; 2 uses
  %.sroa.23.1159 = phi i32 [ %.sroa.23.0190, %.lr.ph ], [ %i.ci, %bb.n ] ; 4 uses
  %i.s = phi i64 [ %i.p, %.lr.ph ], [ %i.ae, %bb.n ] ; 2 uses
  %i.t = phi ptr [ %.promoted157178187, %.lr.ph ], [ %i.ad, %bb.n ] ; 3 uses
  %i.u = icmp ult i32 %.sroa.23.1159, 30
  br i1 %i.u, label %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit, label %bb.c

_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit: ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !542)
  %.sroa.02.0.copyload.i = load i32, ptr %i.t, align 1, !noalias !542
  %i.v = add i64 %i.s, -4                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 3 uses
  store ptr %i.w, ptr %1, align 8, !alias.scope !542, !captures !5
  store i64 %i.v, ptr %i.d, align 8, !alias.scope !542
  %i.x = zext i32 %.sroa.02.0.copyload.i to i64
  %i.y = zext nneg i32 %.sroa.23.1159 to i64
  %i.z = shl nuw nsw i64 %i.x, %i.y
  %i.aa = or i64 %i.z, %.sroa.0.1160
  %i.ab = or disjoint i32 %.sroa.23.1159, 32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit
  %.promoted157176 = phi ptr [ %i.w, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit ], [ %.promoted157177, %bb.b ] ; 4 uses
  %i.ac = phi i64 [ %i.v, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit ], [ %i.q, %bb.b ] ; 3 uses
  %i.ad = phi ptr [ %i.w, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit ], [ %i.t, %bb.b ]
  %i.ae = phi i64 [ %i.v, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit ], [ %i.s, %bb.b ] ; 2 uses
  %.sroa.23.2 = phi i32 [ %i.ab, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit ], [ %.sroa.23.1159, %bb.b ]
  %.sroa.0.2 = phi i64 [ %i.aa, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit ], [ %.sroa.0.1160, %bb.b ] ; 3 uses
  %i.af = and i64 %.sroa.0.2, 1023
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !noundef !4 ; 2 uses
  %i.ai = sext i16 %i.ah to i32                   ; 3 uses
  %i.aj = icmp sgt i16 %i.ah, -1
  br i1 %i.aj, label %bb.e, label %.preheader197

.preheader197:                                    ; preds = %bb.c, %bb.d
  %.sroa.03.0.i = phi i8 [ %i.ax, %bb.d ], [ 10, %bb.c ] ; 3 uses
  %.sroa.0.0.i = phi i32 [ %i.aw, %bb.d ], [ %i.ai, %bb.c ]
  %i.ak = xor i32 %.sroa.0.0.i, -1
  %i.al = and i8 %.sroa.03.0.i, 63
  %i.am = zext nneg i8 %i.al to i64
  %i.an = lshr i64 %.sroa.0.2, %i.am
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.ao, 1
  %i.aq = add nuw nsw i32 %i.ap, %i.ak            ; 2 uses
  %i.ar = icmp samesign ult i32 %i.aq, 576
  br i1 %i.ar, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %.preheader197
  %i.as = add i8 %.sroa.03.0.i, 1
  br label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit

bb.d:                                             ; preds = %.preheader197
  %i.at = zext nneg i32 %i.aq to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !alias.scope !543, !noundef !4 ; 2 uses
  %i.aw = sext i16 %i.av to i32                   ; 2 uses
  %i.ax = add i8 %.sroa.03.0.i, 1                 ; 2 uses
  %i.ay = icmp sgt i16 %i.av, -1
  br i1 %i.ay, label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit, label %.preheader197

_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit: ; preds = %bb.d, %.thread.i
  %i.az = phi i8 [ %i.as, %.thread.i ], [ %i.ax, %bb.d ]
  %.sroa.06.011.i = phi i32 [ 32767, %.thread.i ], [ %i.aw, %bb.d ]
  %i.ba = zext i8 %i.az to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bb = lshr i32 %i.ai, 9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit
  %.sroa.5.0 = phi i32 [ %i.bb, %bb.e ], [ %i.ba, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit ] ; 2 uses
  %.sroa.058.0 = phi i32 [ %i.ai, %bb.e ], [ %.sroa.06.011.i, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit ] ; 4 uses
  %i.bc = and i32 %.sroa.5.0, 63
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = lshr i64 %.sroa.0.2, %i.bd              ; 4 uses
  %i.bf = sub i32 %.sroa.23.2, %.sroa.5.0         ; 2 uses
  %i.bg = and i32 %.sroa.058.0, 256
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.bi = and i64 %i.be, 1023
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !noundef !4 ; 2 uses
  %i.bl = sext i16 %i.bk to i32                   ; 3 uses
  %i.bm = icmp sgt i16 %i.bk, -1
  br i1 %i.bm, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.g, %bb.h
  %.sroa.03.0.i92 = phi i8 [ %i.ca, %bb.h ], [ 10, %bb.g ] ; 3 uses
  %.sroa.0.0.i93 = phi i32 [ %i.bz, %bb.h ], [ %i.bl, %bb.g ]
  %i.bn = xor i32 %.sroa.0.0.i93, -1
  %i.bo = and i8 %.sroa.03.0.i92, 63
  %i.bp = zext nneg i8 %i.bo to i64
  %i.bq = lshr i64 %i.be, %i.bp
  %i.br = trunc i64 %i.bq to i32
  %i.bs = and i32 %i.br, 1
  %i.bt = add nuw nsw i32 %i.bs, %i.bn            ; 2 uses
  %i.bu = icmp samesign ult i32 %i.bt, 576
  br i1 %i.bu, label %bb.h, label %.thread.i94

.thread.i94:                                      ; preds = %.preheader
  %i.bv = add i8 %.sroa.03.0.i92, 1
  br label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit96

bb.h:                                             ; preds = %.preheader
  %i.bw = zext nneg i32 %i.bt to i64
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !alias.scope !544, !noundef !4 ; 2 uses
  %i.bz = sext i16 %i.by to i32                   ; 2 uses
  %i.ca = add i8 %.sroa.03.0.i92, 1               ; 2 uses
  %i.cb = icmp sgt i16 %i.by, -1
  br i1 %i.cb, label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit96, label %.preheader

_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit96: ; preds = %bb.h, %.thread.i94
  %i.cc = phi i8 [ %i.bv, %.thread.i94 ], [ %i.ca, %bb.h ]
  %.sroa.06.011.i95 = phi i32 [ 32767, %.thread.i94 ], [ %i.bz, %bb.h ]
  %i.cd = zext i8 %i.cc to i32
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ce = lshr i32 %i.bl, 9
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit96
  %.sroa.560.0 = phi i32 [ %i.ce, %bb.i ], [ %i.cd, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit96 ] ; 2 uses
  %.sroa.059.0 = phi i32 [ %i.bl, %bb.i ], [ %.sroa.06.011.i95, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit96 ] ; 3 uses
  %i.cf = and i32 %.sroa.560.0, 63
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = lshr i64 %i.be, %i.cg                   ; 3 uses
  %i.ci = sub i32 %i.bf, %.sroa.560.0             ; 3 uses
  %i.cj = icmp ult i64 %i.r, %i.b
  br i1 %i.cj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ck = trunc i32 %.sroa.058.0 to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.r
  store i8 %i.ck, ptr %i.cl, align 1
  %i.cm = add nuw i64 %i.r, 1                     ; 5 uses
  store i64 %i.cm, ptr %i.c, align 8
  %i.cn = and i32 %.sroa.059.0, 256
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.m, label %bb.p

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.r, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #10
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.cp = icmp ult i64 %i.cm, %i.b
  br i1 %i.cp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cq = trunc i32 %.sroa.059.0 to i8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.cm
  store i8 %i.cq, ptr %i.cr, align 1
  %i.cs = add nuw i64 %i.r, 2                     ; 3 uses
  store i64 %i.cs, ptr %i.c, align 8
  %i.ct = sub i64 %i.b, %i.cs
  %i.cu = icmp ult i64 %i.ct, 259
  %i.cv = icmp ult i64 %i.ae, 14
  %or.cond91 = select i1 %i.cu, i1 true, i1 %i.cv
  br i1 %or.cond91, label %.loopexit, label %bb.b

bb.o:                                             ; preds = %bb.m
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.cm, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #10
  unreachable

bb.p:                                             ; preds = %bb.k, %bb.f
  %i.cw = phi i64 [ %i.r, %bb.f ], [ %i.cm, %bb.k ] ; 3 uses
  %.sroa.51.2 = phi i32 [ %.sroa.058.0, %bb.f ], [ %.sroa.059.0, %bb.k ] ; 2 uses
  %.sroa.23.3 = phi i32 [ %i.bf, %bb.f ], [ %i.ci, %bb.k ] ; 6 uses
  %.sroa.0.3 = phi i64 [ %i.be, %bb.f ], [ %i.ch, %bb.k ] ; 4 uses
  %i.cx = and i32 %.sroa.51.2, 511                ; 3 uses
  %i.cy = icmp eq i32 %i.cx, 256
  br i1 %i.cy, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = icmp samesign ugt i32 %i.cx, 285
  br i1 %i.cz, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.da = add nuw nsw i32 %.sroa.51.2, 31
  %i.db = and i32 %i.da, 31                       ; 2 uses
  %i.dc = zext nneg i32 %i.db to i64              ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr @18, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noundef !4 ; 3 uses
  %i.df = getelementptr inbounds nuw [2 x i8], ptr @19, i64 %i.dc
  %i.dg = load i16, ptr %i.df, align 2, !noundef !4
  %i.dh = zext i16 %i.dg to i32                   ; 2 uses
  %i.di = icmp ult i32 %.sroa.23.3, 30
  br i1 %i.di, label %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit98, label %bb.s

_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit98: ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !545)
  %.sroa.02.0.copyload.i97 = load i32, ptr %.promoted157176, align 1, !noalias !545
  %i.dj = add i64 %i.ac, -4                       ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.promoted157176, i64 4 ; 2 uses
  store ptr %i.dk, ptr %1, align 8, !alias.scope !545, !captures !5
  store i64 %i.dj, ptr %i.d, align 8, !alias.scope !545
  %i.dl = zext i32 %.sroa.02.0.copyload.i97 to i64
  %i.dm = zext nneg i32 %.sroa.23.3 to i64
  %i.dn = shl nuw nsw i64 %i.dl, %i.dm
  %i.do = or i64 %i.dn, %.sroa.0.3
  %i.dp = or disjoint i32 %.sroa.23.3, 32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit98
  %.promoted157175 = phi ptr [ %i.dk, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit98 ], [ %.promoted157176, %bb.r ] ; 4 uses
  %i.dq = phi i64 [ %i.dj, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit98 ], [ %i.ac, %bb.r ] ; 3 uses
  %.sroa.23.4 = phi i32 [ %i.dp, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit98 ], [ %.sroa.23.3, %bb.r ] ; 2 uses
  %.sroa.0.4 = phi i64 [ %i.do, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit98 ], [ %.sroa.0.3, %bb.r ] ; 3 uses
  %i.dr = add nsw i32 %i.db, -28
  %i.ds = icmp ult i32 %i.dr, -20
  br i1 %i.ds, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dt = and i8 %i.de, 63
  %i.du = zext nneg i8 %i.dt to i64               ; 2 uses
  %notmask = shl nsw i64 -1, %i.du
  %i.dv = xor i64 %notmask, -1
  %i.dw = and i64 %.sroa.0.4, %i.dv
  %i.dx = lshr i64 %.sroa.0.4, %i.du
  %i.dy = zext i8 %i.de to i32
  %i.dz = sub i32 %.sroa.23.4, %i.dy
  %i.ea = trunc i64 %i.dw to i32
  %i.eb = add i32 %i.ea, %i.dh
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.sroa.51.3 = phi i32 [ %i.dh, %bb.s ], [ %i.eb, %bb.t ] ; 4 uses
  %.sroa.23.5 = phi i32 [ %.sroa.23.4, %bb.s ], [ %i.dz, %bb.t ]
  %.sroa.0.5 = phi i64 [ %.sroa.0.4, %bb.s ], [ %i.dx, %bb.t ] ; 3 uses
  %i.ec = and i64 %.sroa.0.5, 1023
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2, !noundef !4 ; 2 uses
  %i.ef = sext i16 %i.ee to i32                   ; 3 uses
  %i.eg = icmp sgt i16 %i.ee, -1
  br i1 %i.eg, label %bb.w, label %.preheader198

.preheader198:                                    ; preds = %bb.u, %bb.v
  %.sroa.03.0.i99 = phi i8 [ %i.eu, %bb.v ], [ 10, %bb.u ] ; 3 uses
  %.sroa.0.0.i100 = phi i32 [ %i.et, %bb.v ], [ %i.ef, %bb.u ]
  %i.eh = xor i32 %.sroa.0.0.i100, -1
  %i.ei = and i8 %.sroa.03.0.i99, 63
  %i.ej = zext nneg i8 %i.ei to i64
  %i.ek = lshr i64 %.sroa.0.5, %i.ej
  %i.el = trunc i64 %i.ek to i32
  %i.em = and i32 %i.el, 1
  %i.en = add nuw nsw i32 %i.em, %i.eh            ; 2 uses
  %i.eo = icmp samesign ult i32 %i.en, 576
  br i1 %i.eo, label %bb.v, label %.thread.i101

.thread.i101:                                     ; preds = %.preheader198
  %i.ep = add i8 %.sroa.03.0.i99, 1
  br label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit103

bb.v:                                             ; preds = %.preheader198
  %i.eq = zext nneg i32 %i.en to i64
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.eq
  %i.es = load i16, ptr %i.er, align 2, !alias.scope !546, !noundef !4 ; 2 uses
  %i.et = sext i16 %i.es to i32                   ; 2 uses
  %i.eu = add i8 %.sroa.03.0.i99, 1               ; 2 uses
  %i.ev = icmp sgt i16 %i.es, -1
  br i1 %i.ev, label %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit103, label %.preheader198

_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit103: ; preds = %bb.v, %.thread.i101
  %i.ew = phi i8 [ %i.ep, %.thread.i101 ], [ %i.eu, %bb.v ]
  %.sroa.06.011.i102 = phi i32 [ 32767, %.thread.i101 ], [ %i.et, %bb.v ]
  %i.ex = zext i8 %i.ew to i32
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ey = lshr i32 %i.ef, 9
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit103
  %.sroa.566.0 = phi i32 [ %i.ey, %bb.w ], [ %i.ex, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit103 ] ; 2 uses
  %.sroa.065.0 = phi i32 [ %i.ef, %bb.w ], [ %.sroa.06.011.i102, %_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup.exit103 ] ; 2 uses
  %i.ez = and i32 %.sroa.065.0, 511               ; 2 uses
  %i.fa = and i32 %.sroa.566.0, 63
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = lshr i64 %.sroa.0.5, %i.fb              ; 4 uses
  %i.fd = sub i32 %.sroa.23.5, %.sroa.566.0       ; 6 uses
  %i.fe = icmp samesign ugt i32 %i.ez, 29
  br i1 %i.fe, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ff = trunc i32 %.sroa.065.0 to i8            ; 2 uses
  %i.fg = lshr i8 %i.ff, 1
  %i.fh = tail call i8 @llvm.usub.sat.i8(i8 %i.fg, i8 1) ; 5 uses
  %i.fi = zext nneg i32 %i.ez to i64
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr @7, i64 %i.fi
  %i.fk = load i16, ptr %i.fj, align 2, !noundef !4
  %i.fl = zext i16 %i.fk to i32                   ; 2 uses
  %i.fm = icmp ult i8 %i.ff, 4
  br i1 %i.fm, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fn = icmp ult i32 %i.fd, 30
  br i1 %i.fn, label %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit105, label %bb.ab

bb.aa:                                            ; preds = %bb.y, %bb.ab
  %.promoted157174 = phi ptr [ %.promoted157175, %bb.y ], [ %.promoted157173, %bb.ab ]
  %i.fo = phi i64 [ %i.dq, %bb.y ], [ %i.fz, %bb.ab ] ; 2 uses
  %.sroa.45.1 = phi i32 [ %i.fl, %bb.y ], [ %i.gh, %bb.ab ] ; 4 uses
  %.sroa.23.6 = phi i32 [ %i.fd, %bb.y ], [ %i.gf, %bb.ab ] ; 3 uses
  %.sroa.0.6 = phi i64 [ %i.fc, %bb.y ], [ %i.gd, %bb.ab ] ; 3 uses
  %i.fp = zext nneg i32 %.sroa.45.1 to i64        ; 3 uses
  %i.fq = icmp ult i64 %i.cw, %i.fp
  %or.cond.not108 = and i1 %i.n, %i.fq
  %i.fr = icmp ult i64 %i.b, %i.fp
  %or.cond106 = or i1 %i.fr, %or.cond.not108
  br i1 %or.cond106, label %.loopexit, label %bb.ac

_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit105: ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !547)
  %.sroa.02.0.copyload.i104 = load i32, ptr %.promoted157175, align 1, !noalias !547
  %i.fs = add i64 %i.dq, -4                       ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.promoted157175, i64 4 ; 2 uses
  store ptr %i.ft, ptr %1, align 8, !alias.scope !547, !captures !5
  store i64 %i.fs, ptr %i.d, align 8, !alias.scope !547
  %i.fu = zext i32 %.sroa.02.0.copyload.i104 to i64
  %i.fv = zext nneg i32 %i.fd to i64
  %i.fw = shl nuw nsw i64 %i.fu, %i.fv
  %i.fx = or i64 %i.fw, %i.fc
  %i.fy = or disjoint i32 %i.fd, 32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit105
  %.promoted157173 = phi ptr [ %i.ft, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit105 ], [ %.promoted157175, %bb.z ]
  %i.fz = phi i64 [ %i.fs, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit105 ], [ %i.dq, %bb.z ]
  %.sroa.23.7 = phi i32 [ %i.fy, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit105 ], [ %i.fd, %bb.z ]
  %.sroa.0.7 = phi i64 [ %i.fx, %_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper11read_u32_le.exit105 ], [ %i.fc, %bb.z ] ; 2 uses
  %i.ga = zext nneg i8 %i.fh to i64               ; 2 uses
  %notmask88 = shl nsw i64 -1, %i.ga
  %i.gb = xor i64 %notmask88, -1
  %i.gc = and i64 %.sroa.0.7, %i.gb
  %i.gd = lshr i64 %.sroa.0.7, %i.ga
  %i.ge = zext nneg i8 %i.fh to i32
  %i.gf = sub nuw i32 %.sroa.23.7, %i.ge
  %i.gg = trunc nuw nsw i64 %i.gc to i32
  %i.gh = add nuw nsw i32 %i.gg, %i.fl
  br label %bb.aa

bb.ac:                                            ; preds = %bb.aa
  %i.gi = zext i32 %.sroa.51.3 to i64             ; 2 uses
  tail call fastcc void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11apply_match(ptr noalias nofree noundef nonnull %i.j, i64 noundef %i.b, i64 noundef %i.cw, i64 noundef %i.fp, i64 noundef %i.gi, i64 noundef %5) #11
  %i.gj = add i64 %i.cw, %i.gi                    ; 3 uses
  store i64 %i.gj, ptr %i.c, align 8
  %i.gk = sub i64 %i.b, %i.gj
  %i.gl = icmp ult i64 %i.gk, 259
  %i.gm = icmp ult i64 %i.fo, 14
  %or.cond91158 = select i1 %i.gl, i1 true, i1 %i.gm
  br i1 %or.cond91158, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.aa, %bb.x, %bb.q, %bb.p, %bb.ac, %bb.n, %bb.a
  %.sroa.057.0 = phi i8 [ 0, %bb.a ], [ 0, %bb.n ], [ -1, %bb.aa ], [ -1, %bb.q ], [ 0, %bb.p ], [ -1, %bb.x ], [ 0, %bb.ac ]
  %.sroa.056.0 = phi i8 [ 12, %bb.a ], [ 12, %bb.n ], [ 30, %bb.aa ], [ 33, %bb.q ], [ 20, %bb.p ], [ 34, %bb.x ], [ 12, %bb.ac ]
  %.sroa.66.1 = phi i8 [ %.sroa.66.0.copyload, %bb.a ], [ %.sroa.66.0188, %bb.n ], [ %i.fh, %bb.aa ], [ %.sroa.66.0188, %bb.q ], [ %.sroa.66.0188, %bb.p ], [ %i.de, %bb.x ], [ %i.fh, %bb.ac ]
  %.sroa.51.4 = phi i32 [ %.sroa.51.0.copyload, %bb.a ], [ %.sroa.058.0, %bb.n ], [ %.sroa.51.3, %bb.aa ], [ %i.cx, %bb.q ], [ 256, %bb.p ], [ %.sroa.51.3, %bb.x ], [ %.sroa.51.3, %bb.ac ]
  %.sroa.45.2 = phi i32 [ %.sroa.45.0.copyload, %bb.a ], [ %.sroa.45.0189, %bb.n ], [ %.sroa.45.1, %bb.aa ], [ %.sroa.45.0189, %bb.q ], [ %.sroa.45.0189, %bb.p ], [ %.sroa.45.0189, %bb.x ], [ %.sroa.45.1, %bb.ac ]
  %.sroa.23.8 = phi i32 [ %.sroa.23.0.copyload, %bb.a ], [ %i.ci, %bb.n ], [ %.sroa.23.6, %bb.aa ], [ %.sroa.23.3, %bb.q ], [ %.sroa.23.3, %bb.p ], [ %i.fd, %bb.x ], [ %.sroa.23.6, %bb.ac ]
  %.sroa.0.8 = phi i64 [ %.sroa.0.0.copyload, %bb.a ], [ %i.ch, %bb.n ], [ %.sroa.0.6, %bb.aa ], [ %.sroa.0.3, %bb.q ], [ %.sroa.0.3, %bb.p ], [ %i.fc, %bb.x ], [ %.sroa.0.6, %bb.ac ]
  store i64 %.sroa.0.8, ptr %4, align 8
  store i32 %.sroa.23.8, ptr %.sroa.23.0..sroa_idx, align 8
  store i32 %.sroa.45.2, ptr %.sroa.45.0..sroa_idx, align 4
  store i32 %.sroa.51.4, ptr %.sroa.51.0..sroa_idx, align 8
  store i8 %.sroa.66.1, ptr %.sroa.66.0..sroa_idx, align 4
  %i.gn = insertvalue { i8, i8 } poison, i8 %.sroa.057.0, 0
  %i.go = insertvalue { i8, i8 } %i.gn, i8 %.sroa.056.0, 1
  ret { i8, i8 } %i.go
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core8transfer(ptr noalias nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %6 = icmp ugt i64 %2, %3
  %i.b = sub nuw i64 %2, %3
  %7 = sub nuw i64 %3, %2                         ; 2 uses
  %.sroa.058.0 = select i1 %6, i64 %i.b, i64 %7
  %i.c = icmp eq i64 %5, -1
  %i.d = add i64 %2, -3
  %i.e = add i64 %i.d, %4
  %i.f = icmp ult i64 %i.e, %1
  %.sroa.059.0 = or i1 %i.c, %i.f                 ; 2 uses
  %i.g = and i64 %4, -4                           ; 2 uses
  %i.h = add i64 %i.g, %3                         ; 6 uses
  %i.i = icmp eq i64 %.sroa.058.0, 1
  %or.cond = select i1 %.sroa.059.0, i1 %i.i, i1 false
  %i.j = icmp ugt i64 %3, %2                      ; 2 uses
  %or.cond96 = and i1 %i.j, %or.cond
  br i1 %or.cond96, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %or.cond98 = and i1 %i.j, %.sroa.059.0
  %i.k = icmp ugt i64 %7, 3
  %or.cond100 = select i1 %or.cond98, i1 %i.k, i1 false
  %i.l = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 3)
  %..i101 = tail call noundef i64 @llvm.umin.i64(i64 %i.l, i64 %i.h) ; 3 uses
  %i.m = icmp ult i64 %3, %..i101                 ; 2 uses
  br i1 %or.cond100, label %bb.h, label %.split

bb.c:                                             ; preds = %bb.a
  %i.n = add i64 %3, -1                           ; 3 uses
  %i.o = icmp ult i64 %i.n, %1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = icmp ult i64 %i.h, %3
  %.not = icmp ugt i64 %i.h, %1
  %or.cond97 = or i1 %i.p, %.not
  br i1 %or.cond97, label %bb.f, label %bb.g, !prof !8

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #10
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %3, i64 noundef %i.h, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #10
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %i.n
  %i.r = load i8, ptr %i.q, align 1, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.s, i8 %i.r, i64 %i.g, i1 false)
  %i.t = add nsw i64 %i.h, -1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %_RINvMNtCshzWfHUSfYae_4core5sliceSh11copy_withinINtNtNtB5_3ops5range14RangeInclusivejEECsjkkKzr5dxZe_11miniz_oxide.exit, %.split, %bb.h, %bb.g
  %.sroa.025.0 = phi i64 [ %i.h, %bb.g ], [ %i.bp, %_RINvMNtCshzWfHUSfYae_4core5sliceSh11copy_withinINtNtNtB5_3ops5range14RangeInclusivejEECsjkkKzr5dxZe_11miniz_oxide.exit ], [ %3, %bb.h ], [ %3, %.split ], [ %i.be, %bb.s ] ; 12 uses
  %.sroa.0.0 = phi i64 [ %i.t, %bb.g ], [ %i.bo, %_RINvMNtCshzWfHUSfYae_4core5sliceSh11copy_withinINtNtNtB5_3ops5range14RangeInclusivejEECsjkkKzr5dxZe_11miniz_oxide.exit ], [ %2, %bb.h ], [ %2, %.split ], [ %i.bd, %bb.s ] ; 6 uses
  %i.u = and i64 %4, 3
  switch i64 %i.u, label %default.unreachable205 [
    i64 0, label %bb.w
    i64 1, label %bb.x
    i64 2, label %bb.y
    i64 3, label %bb.z
  ], !prof !6

.split:                                           ; preds = %bb.b
  br i1 %i.m, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.split
  %i.v = add nuw nsw i64 %3, 3                    ; 2 uses
  %i.w = icmp ult i64 %i.v, %1
  br i1 %i.w, label %.lr.ph263, label %.lr.ph._crit_edge, !prof !551

bb.h:                                             ; preds = %bb.b
  br i1 %i.m, label %.lr.ph141, label %.loopexit

.lr.ph141:                                        ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.u

.lr.ph:                                           ; preds = %bb.s
  %i.z = add nuw nsw i64 %.sroa.025.1136262, 7    ; 2 uses
  %i.aa = icmp ult i64 %i.z, %1
  br i1 %i.aa, label %.lr.ph263, label %.lr.ph._crit_edge, !prof !552

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #10
  unreachable

.lr.ph263:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ab = phi i64 [ %i.z, %.lr.ph ], [ %i.v, %.lr.ph.preheader ]
  %.sroa.025.1136262 = phi i64 [ %i.be, %.lr.ph ], [ %3, %.lr.ph.preheader ] ; 5 uses
  %.sroa.0.1137261 = phi i64 [ %i.bd, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %i.ac = add i64 %.sroa.0.1137261, 3
  %i.ad = and i64 %i.ac, %5                       ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %1
  br i1 %i.ae, label %bb.j, label %bb.i, !prof !9

bb.i:                                             ; preds = %.lr.ph263
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 72, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #10
  unreachable

bb.j:                                             ; preds = %.lr.ph263
  %i.af = and i64 %.sroa.0.1137261, %5            ; 3 uses
  %i.ag = icmp ult i64 %i.af, %1
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  %i.ai = load i8, ptr %i.ah, align 1, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.025.1136262
  store i8 %i.ai, ptr %i.aj, align 1
  %i.ak = add i64 %.sroa.0.1137261, 1
  %i.al = and i64 %i.ak, %5                       ; 3 uses
  %i.am = icmp ult i64 %i.al, %1
  br i1 %i.am, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.af, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #10
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.an = add nuw nsw i64 %.sroa.025.1136262, 1   ; 3 uses
  %i.ao = icmp ult i64 %i.an, %1
  br i1 %i.ao, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.k
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.al, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #10
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.al
  %i.aq = load i8, ptr %i.ap, align 1, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.an
  store i8 %i.aq, ptr %i.ar, align 1
  %i.as = add i64 %.sroa.0.1137261, 2
  %i.at = and i64 %i.as, %5                       ; 3 uses
  %i.au = icmp ult i64 %i.at, %1
  br i1 %i.au, label %bb.q, label %bb.r

bb.p:                                             ; preds = %bb.m
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.an, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #10
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.av = add nuw nsw i64 %.sroa.025.1136262, 2   ; 3 uses
  %i.aw = icmp ult i64 %i.av, %1
  br i1 %i.aw, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.o
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.at, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #10
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.at
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.av
  store i8 %i.ay, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad
  %i.bb = load i8, ptr %i.ba, align 1, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %i.ab
  store i8 %i.bb, ptr %i.bc, align 1
  %i.bd = add i64 %.sroa.0.1137261, 4             ; 2 uses
  %i.be = add nuw nsw i64 %.sroa.025.1136262, 4   ; 3 uses
  %i.bf = icmp ult i64 %i.be, %..i101
  br i1 %i.bf, label %.lr.ph, label %.loopexit

bb.t:                                             ; preds = %bb.q
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.av, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #10
  unreachable

bb.u:                                             ; preds = %.lr.ph141, %_RINvMNtCshzWfHUSfYae_4core5sliceSh11copy_withinINtNtNtB5_3ops5range14RangeInclusivejEECsjkkKzr5dxZe_11miniz_oxide.exit
  %.sroa.0.2140 = phi i64 [ %2, %.lr.ph141 ], [ %i.bo, %_RINvMNtCshzWfHUSfYae_4core5sliceSh11copy_withinINtNtNtB5_3ops5range14RangeInclusivejEECsjkkKzr5dxZe_11miniz_oxide.exit ] ; 3 uses
  %.sroa.025.2139 = phi i64 [ %3, %.lr.ph141 ], [ %i.bp, %_RINvMNtCshzWfHUSfYae_4core5sliceSh11copy_withinINtNtNtB5_3ops5range14RangeInclusivejEECsjkkKzr5dxZe_11miniz_oxide.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bg = add i64 %.sroa.0.2140, 3
  store i64 %.sroa.0.2140, ptr %i.a, align 8
  store i64 %i.bg, ptr %i.x, align 8
  store i8 0, ptr %i.y, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !553)
  %i.bh = call { i64, i64 } @_RINvNtNtCshzWfHUSfYae_4core5slice5index5rangeINtNtNtB6_3ops5range14RangeInclusivejEECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56), !noalias !553 ; 2 uses
  %i.bi = extractvalue { i64, i64 } %i.bh, 0      ; 2 uses
  %i.bj = extractvalue { i64, i64 } %i.bh, 1
  %i.bk = sub i64 %i.bj, %i.bi                    ; 2 uses
  %i.bl = sub i64 %1, %i.bk
  %.not.i = icmp ugt i64 %.sroa.025.2139, %i.bl
  br i1 %.not.i, label %bb.v, label %_RINvMNtCshzWfHUSfYae_4core5sliceSh11copy_withinINtNtNtB5_3ops5range14RangeInclusivejEECsjkkKzr5dxZe_11miniz_oxide.exit, !prof !7

bb.v:                                             ; preds = %bb.u
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 43 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #10, !noalias !554
  unreachable

_RINvMNtCshzWfHUSfYae_4core5sliceSh11copy_withinINtNtNtB5_3ops5range14RangeInclusivejEECsjkkKzr5dxZe_11miniz_oxide.exit: ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %i.bi
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.025.2139
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr nonnull align 1 %i.bm, i64 %i.bk, i1 false), !alias.scope !553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bo = add i64 %.sroa.0.2140, 4                ; 2 uses
  %i.bp = add nuw nsw i64 %.sroa.025.2139, 4      ; 3 uses
  %i.bq = icmp ult i64 %i.bp, %..i101
  br i1 %i.bq, label %bb.u, label %.loopexit

default.unreachable205:                           ; preds = %.loopexit
  unreachable

.sink.split.sink.split:                           ; preds = %bb.as, %bb.ah
  %.sink236 = phi i64 [ %i.ch, %bb.ah ], [ %i.cu, %bb.as ]
  %.sroa.025.0.sink = phi i64 [ %.sroa.025.0, %bb.ah ], [ %i.cw, %bb.as ]
  %.sink.ph = phi i64 [ %i.cf, %bb.ah ], [ %i.cl, %bb.as ]
  %.sink231.ph = phi i64 [ %i.bz, %bb.ah ], [ %i.cb, %bb.as ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %.sink236
  %i.bs = load i8, ptr %i.br, align 1, !noundef !4
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.025.0.sink
  store i8 %i.bs, ptr %i.bt, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.aa
  %.sink = phi i64 [ %i.bx, %bb.aa ], [ %.sink.ph, %.sink.split.sink.split ]
  %.sink231 = phi i64 [ %.sroa.025.0, %bb.aa ], [ %.sink231.ph, %.sink.split.sink.split ]
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %.sink231
  store i8 %i.bv, ptr %i.bw, align 1
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %.loopexit
  ret void

bb.x:                                             ; preds = %.loopexit
  %i.bx = and i64 %.sroa.0.0, %5                  ; 3 uses
  %i.by = icmp ult i64 %i.bx, %1
  br i1 %i.by, label %bb.aa, label %bb.ab

bb.y:                                             ; preds = %.loopexit
  %i.bz = add i64 %.sroa.025.0, 1                 ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %1
  br i1 %i.ca, label %bb.ae, label %bb.ad, !prof !9

bb.z:                                             ; preds = %.loopexit
  %i.cb = add i64 %.sroa.025.0, 2                 ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %1
  br i1 %i.cc, label %bb.al, label %bb.ak, !prof !9

bb.aa:                                            ; preds = %bb.x
  %i.cd = icmp ult i64 %.sroa.025.0, %1
  br i1 %i.cd, label %.sink.split, label %bb.ac

bb.ab:                                            ; preds = %bb.x
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.bx, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #10
  unreachable

bb.ac:                                            ; preds = %bb.aa
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.025.0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #10
  unreachable

bb.ad:                                            ; preds = %bb.y
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #10
  unreachable

bb.ae:                                            ; preds = %bb.y
  %i.ce = add i64 %.sroa.0.0, 1
  %i.cf = and i64 %i.ce, %5                       ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %1
  br i1 %i.cg, label %bb.ag, label %bb.af, !prof !9

bb.af:                                            ; preds = %bb.ae
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 72, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #10
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.ch = and i64 %.sroa.0.0, %5                  ; 3 uses
  %i.ci = icmp ult i64 %i.ch, %1
  br i1 %i.ci, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cj = icmp ult i64 %.sroa.025.0, %1
  br i1 %i.cj, label %.sink.split.sink.split, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ch, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #10
  unreachable

bb.aj:                                            ; preds = %bb.ah
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.025.0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #10
  unreachable

bb.ak:                                            ; preds = %bb.z
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #10
  unreachable

bb.al:                                            ; preds = %bb.z
  %i.ck = add i64 %.sroa.0.0, 2
  %i.cl = and i64 %i.ck, %5                       ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %1
  br i1 %i.cm, label %bb.an, label %bb.am, !prof !9

bb.am:                                            ; preds = %bb.al
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 72, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #10
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.cn = and i64 %.sroa.0.0, %5                  ; 3 uses
  %i.co = icmp ult i64 %i.cn, %1
  br i1 %i.co, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.cp = icmp ult i64 %.sroa.025.0, %1
  br i1 %i.cp, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %bb.an
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.cn, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #10
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 %i.cn
  %i.cr = load i8, ptr %i.cq, align 1, !noundef !4
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.025.0
  store i8 %i.cr, ptr %i.cs, align 1
  %i.ct = add i64 %.sroa.0.0, 1
  %i.cu = and i64 %i.ct, %5                       ; 3 uses
  %i.cv = icmp ult i64 %i.cu, %1
  br i1 %i.cv, label %bb.as, label %bb.at

bb.ar:                                            ; preds = %bb.ao
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.025.0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #10
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.cw = add nuw nsw i64 %.sroa.025.0, 1         ; 3 uses
  %i.cx = icmp ult i64 %i.cw, %1
  br i1 %i.cx, label %.sink.split.sink.split, label %bb.au

bb.at:                                            ; preds = %bb.aq
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.cu, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #10
  unreachable

bb.au:                                            ; preds = %bb.as
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.cw, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #10
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i8, i8 } @_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9init_tree(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(10504) %0, ptr noalias nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.027 = alloca [48 x i8], align 8          ; 2 uses
  %i.b = alloca [68 x i8], align 4                ; 10 uses
  %i.c = alloca [32 x i8], align 2                ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10479 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10481
  %.ptr82 = getelementptr inbounds nuw i8, ptr %0, i64 6912
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 10400
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10112
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10472
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre = load i8, ptr %i.d, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 6912
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 6928
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6944
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 6960
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6976
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 6992
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 7008
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 7024
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 7040
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 7056
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 7072
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 7088
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 7104
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 7120
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 7136
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 7152
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 7168
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 7184
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 7200
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 7216
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 7232
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 7248
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 7264
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 7280
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 7296
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 7312
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 7328
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 7344
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 7360
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 7376
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 7392
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 7408
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 7424
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 7440
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 7456
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 7472
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 7488
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 7504
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 7520
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 7536
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 7552
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 7568
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 7584
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 7600
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 7616
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 7632
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 7648
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 7664
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 7680
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 7696
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 7712
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 7728
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 7744
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 7760
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 7776
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 7792
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 7808
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 7824
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 7840
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 7856
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 7872
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 7888
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 7904
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 7920
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 7936
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 7952
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 7968
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 7984
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8000
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8016
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8032
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8048
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8064
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8080
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8096
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8112
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8128
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8144
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8160
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8176
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8192
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8208
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8224
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8240
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8256
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8272
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8288
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8304
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8320
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8336
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8352
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8368
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8384
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8400
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8416
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8432
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8448
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8464
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8480
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8496
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8512
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8528
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8544
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8560
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8576
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8592
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8608
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8624
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 8640
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8656
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8672
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8688
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8704
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8720
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8736
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8752
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8768
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 8784
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8800
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 8816
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8832
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 8848
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8864
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8880
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8896
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 8912
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8928
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8944
  br label %bb.b

bb.b:                                             ; preds = %bb.q, %bb.a
  %i.en = phi i8 [ %i.gt, %bb.q ], [ %.pre, %bb.a ] ; 3 uses
  %i.eo = zext i8 %i.en to i64                    ; 2 uses
  switch i8 %i.en, label %.loopexit86 [
    i8 0, label %vector.ph176
    i8 1, label %bb.c
    i8 2, label %vector.ph181
  ]

bb.c:                                             ; preds = %bb.b
  br label %vector.ph176

vector.ph176:                                     ; preds = %bb.b, %bb.c
  %.sroa.758.0 = phi i64 [ 32, %bb.c ], [ 288, %bb.b ]
  %.sroa.054.0 = phi ptr [ %i.f, %bb.c ], [ %i.g, %bb.b ]
  %i.ep = getelementptr inbounds nuw [3200 x i8], ptr %i.h, i64 %i.eo ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %i.b, i8 0, i64 68, i1 false)
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph176
  %index178 = phi i64 [ 0, %vector.ph176 ], [ %index.next179.3, %vector.body177 ] ; 5 uses
  %i.eq = shl nuw nsw i64 %index178, 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.eq ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  store <8 x i16> splat (i16 798), ptr %i.er, align 8, !alias.scope !565
  store <8 x i16> splat (i16 798), ptr %i.es, align 8, !alias.scope !565
  %index.next179 = shl nuw i64 %index178, 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 %index.next179 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 48
  store <8 x i16> splat (i16 798), ptr %i.eu, align 8, !alias.scope !565
  store <8 x i16> splat (i16 798), ptr %i.ev, align 8, !alias.scope !565
  %index.next179.1 = shl nuw i64 %index178, 1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 %index.next179.1 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 80
  store <8 x i16> splat (i16 798), ptr %i.ex, align 8, !alias.scope !565
  store <8 x i16> splat (i16 798), ptr %i.ey, align 8, !alias.scope !565
  %index.next179.2 = shl nuw i64 %index178, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 %index.next179.2 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 96
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 112
end_hunk_1
begin_hunk_2_@_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9init_tree:bb.a
  store <8 x i16> splat (i16 798), ptr %i.v, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.w, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.x, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.y, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.z, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.aa, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ab, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ac, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ad, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ae, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.af, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ag, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ah, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ai, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.aj, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ak, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.al, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.am, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.an, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ao, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ap, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.aq, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ar, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.as, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.at, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.au, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.av, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.aw, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ax, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ay, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.az, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ba, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bb, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bc, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bd, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.be, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bf, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bg, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bh, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bi, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bj, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bk, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bl, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bm, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bn, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bo, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bp, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bq, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.br, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bs, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bt, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bu, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bv, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bw, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bx, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.by, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.bz, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ca, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cb, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cc, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cd, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ce, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cf, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cg, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ch, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ci, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cj, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ck, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cl, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cm, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cn, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.co, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cp, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cq, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cr, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cs, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ct, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cu, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cv, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cw, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cx, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cy, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.cz, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.da, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.db, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dc, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dd, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.de, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.df, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dg, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dh, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.di, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dj, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dk, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dl, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dm, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dn, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.do, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dp, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dq, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dr, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ds, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dt, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.du, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dv, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dw, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dx, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dy, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.dz, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ea, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.eb, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ec, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ed, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ee, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ef, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.eg, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.eh, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ei, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ej, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.ek, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.el, align 8, !alias.scope !569
  store <8 x i16> splat (i16 798), ptr %i.em, align 8, !alias.scope !569
  br label %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit81

_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit81: ; preds = %vector.ph181, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit
  %.sroa.758.1 = phi i64 [ %.sroa.758.0, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit ], [ 19, %vector.ph181 ]
  %.sroa.054.1 = phi ptr [ %.sroa.054.0, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit ], [ %i.e, %vector.ph181 ] ; 3 uses
  %.sroa.01.0 = phi ptr [ %i.ep, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit ], [ %.ptr82, %vector.ph181 ] ; 3 uses
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.eo
  %i.ff = load i16, ptr %i.fe, align 2, !noundef !4 ; 3 uses
  %i.fg = zext i16 %i.ff to i64                   ; 4 uses
  %i.fh = icmp samesign ult i64 %.sroa.758.1, %i.fg
  br i1 %i.fh, label %.loopexit83, label %bb.d

bb.d:                                             ; preds = %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit81
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.054.1, i64 %i.fg
  %i.fj = icmp eq i16 %i.ff, 0
  br i1 %i.fj, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.019.0102 = phi ptr [ %i.fn, %bb.e ], [ %.sroa.054.1, %bb.d ] ; 2 uses
  %i.fk = load i8, ptr %.sroa.019.0102, align 1, !noundef !4 ; 2 uses
  %i.fl = icmp ugt i8 %i.fk, 15
  br i1 %i.fl, label %.loopexit83, label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d
  call void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E3newCsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %.sroa.027, ptr noundef nonnull %i.c, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.027, i64 48, i1 false)
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.fm = zext nneg i8 %i.fk to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.019.0102, i64 1 ; 2 uses
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.fm ; 2 uses
  %i.fp = load i16, ptr %i.fo, align 2, !noundef !4
  %i.fq = add i16 %i.fp, 1
  store i16 %i.fq, ptr %i.fo, align 2
  %i.fr = icmp eq ptr %i.fn, %i.fi
  br i1 %i.fr, label %._crit_edge, label %.lr.ph

.loopexit83:                                      ; preds = %bb.m, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit81, %.lr.ph, %._crit_edge115, %.lr.ph114, %bb.o
  %.sroa.9.0 = phi i8 [ 10, %.lr.ph114 ], [ undef, %.lr.ph ], [ 10, %._crit_edge115 ], [ 10, %bb.o ], [ 28, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit81 ], [ 28, %bb.m ]
  %.sroa.0.0 = phi i8 [ -1, %.lr.ph114 ], [ -1, %.lr.ph ], [ -1, %._crit_edge115 ], [ 1, %bb.o ], [ -1, %_RNvXs3_NtNtCshzWfHUSfYae_4core5slice10specializeSsINtB5_8SpecFillsE9spec_fill.exit81 ], [ 1, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit86

bb.f:                                             ; preds = %bb.k, %._crit_edge
  %i.fs = phi i64 [ %.pr, %bb.k ], [ 1, %._crit_edge ] ; 2 uses
  %.sroa.023.0 = phi i32 [ %i.gg, %bb.k ], [ 0, %._crit_edge ] ; 2 uses
  %.sroa.021.0 = phi i16 [ %i.gd, %bb.k ], [ 0, %._crit_edge ] ; 2 uses
  %.not = icmp eq i64 %i.fs, 0
  br i1 %.not, label %bb.g, label %bb.i, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.ft = load i64, ptr %i.m, align 8, !alias.scope !570, !noundef !4 ; 4 uses
  %i.fu = load i64, ptr %i.n, align 8, !alias.scope !570, !noundef !4
  %i.fv = icmp ult i64 %i.ft, %i.fu
  br i1 %i.fv, label %bb.h, label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E4nextCsjkkKzr5dxZe_11miniz_oxide.exit

bb.h:                                             ; preds = %bb.g
  %i.fw = add nuw i64 %i.ft, 1
  store i64 %i.fw, ptr %i.m, align 8, !alias.scope !570
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !570, !nonnull !4, !noundef !4
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %.val.i, i64 %i.ft
  %.val1.i = load ptr, ptr %i.o, align 8, !alias.scope !570, !nonnull !4, !noundef !4
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %.val1.i, i64 %i.ft
  br label %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E4nextCsjkkKzr5dxZe_11miniz_oxide.exit

_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E4nextCsjkkKzr5dxZe_11miniz_oxide.exit: ; preds = %bb.g, %bb.h
  %.sroa.3.0.i = phi ptr [ %i.fy, %bb.h ], [ undef, %bb.g ]
  %.sroa.0.0.i = phi ptr [ %i.fx, %bb.h ], [ null, %bb.g ]
  %i.fz = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.ga = insertvalue { ptr, ptr } %i.fz, ptr %.sroa.3.0.i, 1
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.gb = call fastcc { ptr, ptr } @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E3nthCsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a, i64 noundef %i.fs) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E4nextCsjkkKzr5dxZe_11miniz_oxide.exit
  %.pn = phi { ptr, ptr } [ %i.gb, %bb.i ], [ %i.ga, %_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E4nextCsjkkKzr5dxZe_11miniz_oxide.exit ] ; 2 uses
  %.sroa.028.0 = extractvalue { ptr, ptr } %.pn, 0 ; 2 uses
  %.not78 = icmp eq ptr %.sroa.028.0, null
  br i1 %.not78, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.7.0 = extractvalue { ptr, ptr } %.pn, 1  ; 2 uses
  %i.gc = load i16, ptr %.sroa.028.0, align 2, !noundef !4 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0) ]
  %i.gd = add i16 %i.gc, %.sroa.021.0
  %i.ge = zext i16 %i.gc to i32
  %i.gf = add i32 %.sroa.023.0, %i.ge
  %i.gg = shl i32 %i.gf, 1                        ; 2 uses
  store i32 %i.gg, ptr %.sroa.7.0, align 4
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  br label %bb.f

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gh = icmp eq i32 %.sroa.023.0, 65536
  br i1 %i.gh, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gi = icmp ugt i16 %.sroa.021.0, 1
  %i.gj = icmp eq i8 %i.en, 2
  %or.cond = or i1 %i.gj, %i.gi
  br i1 %or.cond, label %.loopexit83, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 2048 ; 2 uses
  %.not186 = icmp eq i16 %i.ff, 0
  br i1 %.not186, label %.outer.split._crit_edge, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %bb.n, %.outer
  %.sroa.062.0.ph168 = phi i64 [ %i.gm, %.outer ], [ 0, %bb.n ]
  %.sroa.031.0.ph167 = phi i16 [ %.sroa.031.2.lcssa, %.outer ], [ -1, %bb.n ] ; 4 uses
  br label %.lr.ph107

.outer.split._crit_edge:                          ; preds = %.outer, %.loopexit, %bb.n
  %i.gl = load i8, ptr %i.d, align 1, !noundef !4 ; 2 uses
  switch i8 %i.gl, label %bb.q [
    i8 2, label %bb.o
    i8 0, label %bb.p
  ]

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %.loopexit
  %.sroa.062.0106 = phi i64 [ %i.gm, %.loopexit ], [ %.sroa.062.0.ph168, %.lr.ph107.preheader ] ; 4 uses
  %i.gm = add i64 %.sroa.062.0106, 1              ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.054.1, i64 %.sroa.062.0106
  %i.go = load i8, ptr %i.gn, align 1, !noundef !4
  %i.gp = and i8 %i.go, 15                        ; 8 uses
  %i.gq = icmp eq i8 %i.gp, 0
  br i1 %i.gq, label %.loopexit, label %bb.r

bb.o:                                             ; preds = %.outer.split._crit_edge
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.gr, align 8
  br label %.loopexit83

bb.p:                                             ; preds = %.outer.split._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.gs, align 8
  br label %.loopexit86

bb.q:                                             ; preds = %.outer.split._crit_edge
  %i.gt = add i8 %i.gl, -1                        ; 2 uses
  store i8 %i.gt, ptr %i.d, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.b

.loopexit86:                                      ; preds = %bb.b, %.loopexit83, %bb.p
  %.sroa.9.2 = phi i8 [ 12, %bb.p ], [ %.sroa.9.0, %.loopexit83 ], [ undef, %bb.b ]
  %.sroa.0.2 = phi i8 [ 1, %bb.p ], [ %.sroa.0.0, %.loopexit83 ], [ -1, %bb.b ]
  %i.gu = insertvalue { i8, i8 } poison, i8 %.sroa.0.2, 0
  %i.gv = insertvalue { i8, i8 } %i.gu, i8 %.sroa.9.2, 1
  ret { i8, i8 } %i.gv

.loopexit:                                        ; preds = %bb.ac, %bb.v, %.lr.ph107
  %exitcond.not = icmp eq i64 %i.gm, %i.fg
  br i1 %exitcond.not, label %.outer.split._crit_edge, label %.lr.ph107

bb.r:                                             ; preds = %.lr.ph107
  %i.gw = zext nneg i8 %i.gp to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.gw ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !noundef !4 ; 2 uses
  %i.gz = add i32 %i.gy, 1
  store i32 %i.gz, ptr %i.gx, align 4
  %i.ha = sub nuw nsw i8 32, %i.gp
  %i.hb = zext nneg i8 %i.ha to i32
  %i.hc = lshr i32 -1, %i.hb
  %i.hd = and i32 %i.gy, %i.hc                    ; 3 uses
  %i.he = icmp samesign ult i32 %i.hd, 512
  br i1 %i.he, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hf = trunc nuw nsw i32 %i.hd to i16
  %i.hg = call i16 @llvm.bitreverse.i16(i16 %i.hf)
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.sroa.048.0 = phi i16 [ %i.hn, %bb.u ], [ %i.hg, %bb.s ]
  %i.hh = sub nuw nsw i8 16, %i.gp
  %i.hi = zext nneg i8 %i.hh to i16
  %i.hj = lshr i16 %.sroa.048.0, %i.hi            ; 4 uses
  %i.hk = icmp samesign ult i8 %i.gp, 11
  br i1 %i.hk, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.r
  %i.hl = zext nneg i32 %i.hd to i64
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr @_RNvNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core12reverse_bits20REVERSED_BITS_LOOKUP, i64 %i.hl
  %i.hn = load i16, ptr %i.hm, align 2, !noundef !4
  br label %bb.t

bb.v:                                             ; preds = %bb.t
  %i.ho = zext nneg i8 %i.gp to i16               ; 2 uses
  %i.hp = shl nuw nsw i16 %i.ho, 9
  %i.hq = trunc nuw nsw i64 %.sroa.062.0106 to i16
  %i.hr = or i16 %i.hp, %i.hq
  %i.hs = icmp samesign ult i16 %i.hj, 1024
  br i1 %i.hs, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.v
  %i.ht = shl nuw nsw i16 1, %i.ho
  %i.hu = zext nneg i16 %i.hj to i64
  %i.hv = zext nneg i16 %i.ht to i64
  br label %bb.ac

bb.w:                                             ; preds = %bb.t
  %i.hw = and i16 %i.hj, 1023
  %i.hx = zext nneg i16 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0, i64 %i.hx ; 2 uses
  %i.hz = load i16, ptr %i.hy, align 2, !noundef !4 ; 2 uses
  %i.ia = icmp eq i16 %i.hz, 798
  br i1 %i.ia, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i16 %.sroa.031.0.ph167, ptr %i.hy, align 2
  %i.ib = add i16 %.sroa.031.0.ph167, -2
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %.sroa.049.0 = phi i16 [ %.sroa.031.0.ph167, %bb.x ], [ %i.hz, %bb.w ] ; 2 uses
  %.sroa.031.1 = phi i16 [ %i.ib, %bb.x ], [ %.sroa.031.0.ph167, %bb.w ] ; 2 uses
  %i.ic = lshr i16 %i.hj, 9                       ; 2 uses
  %.not118 = icmp eq i8 %i.gp, 11
  br i1 %.not118, label %._crit_edge115, label %.lr.ph114

._crit_edge115:                                   ; preds = %bb.ab, %bb.y
  %.sroa.049.1.lcssa = phi i16 [ %.sroa.049.0, %bb.y ], [ %.sroa.049.2, %bb.ab ]
  %.sroa.038.0.lcssa = phi i16 [ %i.ic, %bb.y ], [ %i.ij, %bb.ab ]
  %.sroa.031.2.lcssa = phi i16 [ %.sroa.031.1, %bb.y ], [ %.sroa.031.3, %bb.ab ]
  %i.id = lshr i16 %.sroa.038.0.lcssa, 1
  %i.ie = and i16 %i.id, 1
  %i.if = xor i16 %.sroa.049.1.lcssa, -1
  %i.ig = add i16 %i.ie, %i.if                    ; 2 uses
  %i.ih = icmp ugt i16 %i.ig, 575
  br i1 %i.ih, label %.loopexit83, label %.outer

.lr.ph114:                                        ; preds = %bb.y, %bb.ab
  %.sroa.064.0112 = phi i8 [ %i.ii, %bb.ab ], [ 11, %bb.y ]
  %.sroa.031.2111 = phi i16 [ %.sroa.031.3, %bb.ab ], [ %.sroa.031.1, %bb.y ] ; 4 uses
  %.sroa.038.0110 = phi i16 [ %i.ij, %bb.ab ], [ %i.ic, %bb.y ]
  %.sroa.049.1109 = phi i16 [ %.sroa.049.2, %bb.ab ], [ %.sroa.049.0, %bb.y ]
  %i.ii = add nuw nsw i8 %.sroa.064.0112, 1       ; 2 uses
  %i.ij = lshr i16 %.sroa.038.0110, 1             ; 3 uses
  %i.ik = and i16 %i.ij, 1
  %i.il = xor i16 %.sroa.049.1109, -1
  %i.im = add i16 %i.ik, %i.il                    ; 2 uses
  %i.in = icmp ugt i16 %i.im, 575
  br i1 %i.in, label %.loopexit83, label %bb.z

.outer:                                           ; preds = %._crit_edge115
  %i.io = zext nneg i16 %i.ig to i64
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.io
  %i.iq = trunc nuw nsw i64 %.sroa.062.0106 to i16
  store i16 %i.iq, ptr %i.ip, align 2
  %i.ir = icmp ult i64 %i.gm, %i.fg
  br i1 %i.ir, label %.lr.ph107.preheader, label %.outer.split._crit_edge

bb.z:                                             ; preds = %.lr.ph114
  %i.is = zext nneg i16 %i.im to i64
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.is ; 2 uses
  %i.iu = load i16, ptr %i.it, align 2, !noundef !4 ; 2 uses
  %i.iv = icmp eq i16 %i.iu, 0
  br i1 %i.iv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i16 %.sroa.031.2111, ptr %i.it, align 2
  %i.iw = add i16 %.sroa.031.2111, -2
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.sroa.049.2 = phi i16 [ %.sroa.031.2111, %bb.aa ], [ %i.iu, %bb.z ] ; 2 uses
  %.sroa.031.3 = phi i16 [ %i.iw, %bb.aa ], [ %.sroa.031.2111, %bb.z ] ; 2 uses
  %exitcond131.not = icmp eq i8 %i.ii, %i.gp
  br i1 %exitcond131.not, label %._crit_edge115, label %.lr.ph114

bb.ac:                                            ; preds = %iter.check, %bb.ac
  %indvars.iv = phi i64 [ %i.hu, %iter.check ], [ %indvars.iv.next, %bb.ac ] ; 2 uses
  %i.ix = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0, i64 %indvars.iv
  store i16 %i.hr, ptr %i.ix, align 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %i.hv ; 2 uses
  %i.iy = icmp samesign ult i64 %indvars.iv.next, 1024
  br i1 %i.iy, label %bb.ac, label %.loopexit, !llvm.loop !564
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E3nthCsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = sub i64 %i.b, %i.d
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.e, i64 %1) ; 2 uses
  %i.f = add i64 %..i, %i.d                       ; 2 uses
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %.lr.ph.preheader, label %bb.b

.lr.ph.preheader:                                 ; preds = %bb.a
  store i64 %i.f, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader, %bb.a
  %i.h = sub nuw i64 %1, %..i
  %i.i = tail call { ptr, ptr } @_RNvMNtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB2_3ZipINtNtNtB8_5slice4iter4ItertEINtBW_7IterMutmEE9super_nthCsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.h)
  ret { ptr, ptr } %i.i
}

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtNtCshzWfHUSfYae_4core5slice5index5rangeINtNtNtB6_3ops5range14RangeInclusivejEECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nonlazybind
declare i32 @rust_eh_personality(...) unnamed_addr #5

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4ItertEINtBZ_7IterMutmEEINtB5_7ZipImplBW_B1o_E3newCsjkkKzr5dxZe_11miniz_oxide(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtCsjkkKzr5dxZe_11miniz_oxide6shared14update_adler32(i32 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtB5_4cell4CellhEE3zipBI_ECsjkkKzr5dxZe_11miniz_oxide(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTRINtNtB5_4cell4CellhEBJ_EE3zipBJ_ECsjkkKzr5dxZe_11miniz_oxide(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bitreverse.i16(i16) #8

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvMNtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB2_3ZipINtNtNtB8_5slice4iter4ItertEINtBW_7IterMutmEE9super_nthCsjkkKzr5dxZe_11miniz_oxide(ptr noalias nofree noundef align 8 dereferenceable(48), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nonlazybind "target-cpu"="x86-64" }
attributes #6 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { noinline noreturn }
attributes #11 = { inlinehint }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{}
!5 = !{!"address", !"read_provenance"}
!6 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!"branch_weights", i32 4001, i32 4000000}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = distinct !{!10, i1 true, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer18from_slice_and_pos"}
!11 = distinct !{!11, !10, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer18from_slice_and_pos: argument 0"}
!12 = distinct !{!12, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompress0EB6_"}
!13 = distinct !{!13, !12, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompress0EB6_: argument 0"}
!14 = distinct !{!14, !12, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompress0EB6_: argument 1"}
!15 = distinct !{!15, i1 true, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!16 = distinct !{!16, !15, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!17 = distinct !{!17, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss_0EB6_"}
!18 = distinct !{!18, !17, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss_0EB6_: argument 0"}
!19 = distinct !{!19, i1 true, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!20 = distinct !{!20, !19, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!21 = distinct !{!21, !17, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss_0EB6_: argument 1"}
!22 = distinct !{!22, i1 true, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss_0B7_"}
!23 = distinct !{!23, !22, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss_0B7_: argument 0"}
!24 = distinct !{!24, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_"}
!25 = distinct !{!25, !24, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_: argument 0"}
!26 = distinct !{!26, !24, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_: argument 1"}
!27 = distinct !{!27, !24, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss0_0EB6_: argument 2"}
!28 = distinct !{!28, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_"}
!29 = distinct !{!29, !28, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_: argument 0"}
!30 = distinct !{!30, i1 true, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!31 = distinct !{!31, !30, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!32 = distinct !{!32, i1 true, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss0_0B7_"}
!33 = distinct !{!33, !32, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss0_0B7_: argument 0"}
!34 = distinct !{!34, !32, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss0_0B7_: argument 1"}
!35 = distinct !{!35, i1 true, !"_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core18start_static_table"}
!36 = distinct !{!36, !35, !"_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core18start_static_table: argument 0"}
!37 = distinct !{!37, !28, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_: argument 2"}
!38 = distinct !{!38, !28, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss0_0E0EB6_: argument 1"}
!39 = distinct !{!39, i1 true, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper10bytes_left"}
!40 = distinct !{!40, !39, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper10bytes_left: argument 0"}
!41 = distinct !{!41, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_"}
!42 = distinct !{!42, !41, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_: argument 0"}
!43 = distinct !{!43, !41, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_: argument 2"}
!44 = distinct !{!44, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss8_0EB6_"}
!45 = distinct !{!45, !44, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss8_0EB6_: argument 0"}
!46 = distinct !{!46, !44, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss8_0EB6_: argument 1"}
!47 = distinct !{!47, !44, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss8_0EB6_: argument 2"}
!48 = distinct !{!48, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_"}
!49 = distinct !{!49, !48, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_: argument 0"}
!50 = distinct !{!50, i1 true, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!51 = distinct !{!51, !50, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!52 = distinct !{!52, i1 true, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss8_0B7_"}
!53 = distinct !{!53, !52, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss8_0B7_: argument 0"}
!54 = distinct !{!54, !52, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss8_0B7_: argument 1"}
!55 = distinct !{!55, !48, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_: argument 1"}
!56 = distinct !{!56, !48, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss8_0E0EB6_: argument 2"}
!57 = distinct !{!57, i1 true, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB4_10decompresss8_0E0B8_"}
!58 = distinct !{!58, !57, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB4_10decompresss8_0E0B8_: argument 0"}
!59 = distinct !{!59, !57, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB4_10decompresss8_0E0B8_: argument 1"}
!60 = distinct !{!60, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresssa_0EB6_"}
!61 = distinct !{!61, !60, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresssa_0EB6_: argument 0"}
!62 = distinct !{!62, !60, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresssa_0EB6_: argument 1"}
!63 = distinct !{!63, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_"}
!64 = distinct !{!64, !63, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_: argument 0"}
!65 = distinct !{!65, i1 true, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!66 = distinct !{!66, !65, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!67 = distinct !{!67, !63, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_: argument 1"}
!68 = distinct !{!68, !63, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssa_0E0EB6_: argument 2"}
!69 = distinct !{!69, i1 true, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB4_10decompresssa_0E0B8_"}
!70 = distinct !{!70, !69, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB4_10decompresssa_0E0B8_: argument 0"}
!71 = distinct !{!71, !69, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB4_10decompresssa_0E0B8_: argument 1"}
!72 = distinct !{!72, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresssb_0EB6_"}
!73 = distinct !{!73, !72, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresssb_0EB6_: argument 0"}
!74 = distinct !{!74, !72, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresssb_0EB6_: argument 1"}
!75 = distinct !{!75, !72, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core19decode_huffman_codeNCNvB2_10decompresssb_0EB6_: argument 2"}
!76 = distinct !{!76, i1 true, !"_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le"}
!77 = distinct !{!77, !76, !"_RNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core11read_u16_le: argument 0"}
!78 = distinct !{!78, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_19decode_huffman_codeNCNvB2_10decompresssb_0E0EB6_"}
!79 = distinct !{!79, !78, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_19decode_huffman_codeNCNvB2_10decompresssb_0E0EB6_: argument 1"}
!80 = distinct !{!80, !78, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_19decode_huffman_codeNCNvB2_10decompresssb_0E0EB6_: argument 0"}
!81 = distinct !{!81, i1 true, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!82 = distinct !{!82, !81, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!83 = distinct !{!83, i1 true, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup"}
!84 = distinct !{!84, !83, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4coreNtB2_12HuffmanTable11tree_lookup: argument 0"}
!85 = distinct !{!85, i1 true, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresssb_0B7_"}
!86 = distinct !{!86, !85, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresssb_0B7_: argument 0"}
!87 = distinct !{!87, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresssc_0EB6_"}
!88 = distinct !{!88, !87, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresssc_0EB6_: argument 0"}
!89 = distinct !{!89, !87, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresssc_0EB6_: argument 1"}
!90 = distinct !{!90, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssc_0E0EB6_"}
!91 = distinct !{!91, !90, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssc_0E0EB6_: argument 0"}
!92 = distinct !{!92, i1 true, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!93 = distinct !{!93, !92, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!94 = distinct !{!94, !90, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssc_0E0EB6_: argument 1"}
!95 = distinct !{!95, !90, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresssc_0E0EB6_: argument 2"}
!96 = distinct !{!96, i1 true, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB4_10decompresssc_0E0B8_"}
!97 = distinct !{!97, !96, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB4_10decompresssc_0E0B8_: argument 0"}
!98 = distinct !{!98, !96, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB4_10decompresssc_0E0B8_: argument 1"}
!99 = distinct !{!99, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss4_0EB6_"}
!100 = distinct !{!100, !99, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss4_0EB6_: argument 0"}
!101 = distinct !{!101, !99, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss4_0EB6_: argument 1"}
!102 = distinct !{!102, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss4_0E0EB6_"}
!103 = distinct !{!103, !102, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss4_0E0EB6_: argument 0"}
!104 = distinct !{!104, i1 true, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!105 = distinct !{!105, !104, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!106 = distinct !{!106, !102, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss4_0E0EB6_: argument 2"}
!107 = distinct !{!107, !102, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss4_0E0EB6_: argument 1"}
!108 = distinct !{!108, i1 true, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer8position"}
!109 = distinct !{!109, !108, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer8position: argument 0"}
!110 = distinct !{!110, i1 true, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompress0B7_"}
!111 = distinct !{!111, !110, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompress0B7_: argument 0"}
!112 = distinct !{!112, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core12pad_to_bytesNCNvB2_10decompresss1_0EB6_"}
!113 = distinct !{!113, !112, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core12pad_to_bytesNCNvB2_10decompresss1_0EB6_: argument 0"}
!114 = distinct !{!114, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCINvB2_12pad_to_bytesNCNvB2_10decompresss1_0E0EB6_"}
!115 = distinct !{!115, !114, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCINvB2_12pad_to_bytesNCNvB2_10decompresss1_0E0EB6_: argument 0"}
!116 = distinct !{!116, i1 true, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core12pad_to_bytesNCNvB4_10decompresss1_0E0B8_"}
!117 = distinct !{!117, !116, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core12pad_to_bytesNCNvB4_10decompresss1_0E0B8_: argument 0"}
!118 = distinct !{!118, i1 true, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss1_0B7_"}
!119 = distinct !{!119, !118, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss1_0B7_: argument 0"}
!120 = distinct !{!120, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_"}
!121 = distinct !{!121, !120, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_: argument 1"}
!122 = distinct !{!122, !120, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_: argument 2"}
!123 = distinct !{!123, !120, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_: argument 0"}
!124 = distinct !{!124, i1 true, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!125 = distinct !{!125, !124, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!126 = distinct !{!126, i1 true, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_"}
!127 = distinct !{!127, !126, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss3_0B7_: argument 0"}
!128 = distinct !{!128, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss2_0EB6_"}
!129 = distinct !{!129, !128, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss2_0EB6_: argument 0"}
!130 = distinct !{!130, !128, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss2_0EB6_: argument 2"}
!131 = distinct !{!131, i1 true, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_"}
!132 = distinct !{!132, !131, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss2_0B7_: argument 0"}
!133 = distinct !{!133, !128, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss2_0EB6_: argument 1"}
!134 = distinct !{!134, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_"}
!135 = distinct !{!135, !134, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_: argument 2"}
!136 = distinct !{!136, !134, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_: argument 1"}
!137 = distinct !{!137, !134, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss2_0E0EB6_: argument 0"}
!138 = distinct !{!138, i1 true, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!139 = distinct !{!139, !138, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!140 = distinct !{!140, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss2_0EB6_"}
!141 = distinct !{!141, !140, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss2_0EB6_: argument 0:It1"}
!142 = distinct !{!142, !140, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss2_0EB6_: argument 2:It1"}
!143 = distinct !{!143, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_"}
!144 = distinct !{!144, !143, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_: argument 1:It1"}
!145 = distinct !{!145, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss2_0EB6_"}
!146 = distinct !{!146, !145, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss2_0EB6_: argument 0:It2"}
!147 = distinct !{!147, !145, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss2_0EB6_: argument 2:It2"}
!148 = distinct !{!148, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_"}
!149 = distinct !{!149, !148, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_: argument 1:It2"}
!150 = distinct !{!150, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss2_0EB6_"}
!151 = distinct !{!151, !150, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss2_0EB6_: argument 0:It3"}
!152 = distinct !{!152, !150, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss2_0EB6_: argument 2:It3"}
!153 = distinct !{!153, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_"}
!154 = distinct !{!154, !153, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCNvB2_10decompresss3_0EB6_: argument 1:It3"}
!155 = distinct !{!155, i1 true, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper8as_slice"}
!156 = distinct !{!156, !155, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper8as_slice: argument 0"}
!157 = distinct !{!157, i1 true, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer11write_slice"}
!158 = distinct !{!158, !157, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer11write_slice: argument 0"}
!159 = distinct !{!159, !157, !"_RNvMNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB2_12OutputBuffer11write_slice: argument 1"}
!160 = distinct !{!160, i1 true, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper7advance"}
!161 = distinct !{!161, !160, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper7advance: argument 0"}
!162 = distinct !{!162, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_"}
!163 = distinct !{!163, !162, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_: argument 1"}
!164 = distinct !{!164, !162, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_: argument 2"}
!165 = distinct !{!165, !41, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_: argument 1"}
!166 = distinct !{!166, !162, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_: argument 0"}
!167 = distinct !{!167, i1 true, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte"}
!168 = distinct !{!168, !167, !"_RNvMs_NtNtCsjkkKzr5dxZe_11miniz_oxide7inflate13output_bufferNtB4_12InputWrapper9read_byte: argument 0"}
!169 = distinct !{!169, i1 true, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB4_10decompresss5_0E0B8_"}
!170 = distinct !{!170, !169, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB4_10decompresss5_0E0B8_: argument 0"}
!171 = distinct !{!171, !169, !"_RNCINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB4_10decompresss5_0E0B8_: argument 1"}
!172 = distinct !{!172, i1 true, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss5_0B7_"}
!173 = distinct !{!173, !172, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss5_0B7_: argument 0"}
!174 = distinct !{!174, !172, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss5_0B7_: argument 1"}
!175 = distinct !{!175, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_"}
!176 = distinct !{!176, !175, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_: argument 0:It1"}
!177 = distinct !{!177, !175, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_: argument 2:It1"}
!178 = distinct !{!178, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_"}
!179 = distinct !{!179, !178, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_: argument 2:It1"}
!180 = distinct !{!180, !178, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_: argument 1:It1"}
!181 = distinct !{!181, i1 true, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss5_0B7_"}
!182 = distinct !{!182, !181, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss5_0B7_: argument 0:It1"}
!183 = distinct !{!183, !181, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss5_0B7_: argument 1:It1"}
!184 = distinct !{!184, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_"}
!185 = distinct !{!185, !184, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_: argument 0:It2"}
!186 = distinct !{!186, !184, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss5_0EB6_: argument 2:It2"}
!187 = distinct !{!187, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_"}
!188 = distinct !{!188, !187, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_: argument 2:It2"}
!189 = distinct !{!189, !187, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_byteNCINvB2_9read_bitsNCNvB2_10decompresss5_0E0EB6_: argument 1:It2"}
!190 = distinct !{!190, i1 true, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss5_0B7_"}
!191 = distinct !{!191, !190, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss5_0B7_: argument 0:It2"}
!192 = distinct !{!192, !190, !"_RNCNvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core10decompresss5_0B7_: argument 1:It2"}
!193 = distinct !{!193, i1 true, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss6_0EB6_"}
!194 = distinct !{!194, !193, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss6_0EB6_: argument 0"}
!195 = distinct !{!195, !193, !"_RINvNtNtCsjkkKzr5dxZe_11miniz_oxide7inflate4core9read_bitsNCNvB2_10decompresss6_0EB6_: argument 2"}
end_hunk_2
