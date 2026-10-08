Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/unarj?download=true
inline.NumInlined: 43
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 11
begin_hunk_0_@cli_unarj_extract_file:bb.a
bb.w:                                             ; preds = %.lr.ph.i.i.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.49) #11
  store i32 26, ptr %i.aj, align 8, !tbaa !38
  br label %read_c_len.exit.i.i

bb.x:                                             ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.de = getelementptr inbounds i8, ptr %i.ao, i64 %indvars.iv.i.i.i
  store i8 0, ptr %i.de, align 1, !tbaa !25
  %i.df = add nsw i16 %i.dd, -1
  %i.dg = icmp sgt i16 %i.dd, 0
  br i1 %i.dg, label %.lr.ph.i.i.i, label %.loopexit83.loopexit.i.i.i, !llvm.loop !83

bb.y:                                             ; preds = %bb.s
  %i.dh = icmp sgt i16 %.26494.i.i.i, 509
  br i1 %i.dh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.49) #11
  store i32 26, ptr %i.aj, align 8, !tbaa !38
  br label %read_c_len.exit.i.i

bb.aa:                                            ; preds = %bb.y
  %i.di = trunc nuw nsw i16 %.2.i.i.i to i8
  %i.dj = add nsw i8 %i.di, -2
  %i.dk = add nsw i16 %.26494.i.i.i, 1
  %i.dl = sext i16 %.26494.i.i.i to i64
  %i.dm = getelementptr inbounds i8, ptr %i.ao, i64 %i.dl
  store i8 %i.dj, ptr %i.dm, align 1, !tbaa !25
  br label %.loopexit83.i.i.i

.loopexit83.loopexit.i.i.i:                       ; preds = %bb.x
  %i.dn = trunc nsw i64 %indvars.iv.next.i.i.i to i16
  br label %.loopexit83.i.i.i

.loopexit83.i.i.i:                                ; preds = %.loopexit83.loopexit.i.i.i, %bb.aa
  %.466.i.i.i = phi i16 [ %i.dk, %bb.aa ], [ %i.dn, %.loopexit83.loopexit.i.i.i ] ; 5 uses
  %i.do = icmp slt i16 %.466.i.i.i, %i.aw
  br i1 %i.do, label %.preheader86.i.i.i, label %.preheader81.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph96.i.i.i, %.preheader81.i.i.i
  %i.dp = call fastcc i32 @make_table(ptr noundef nonnull %2, i32 noundef 510, ptr noundef %i.ao, i32 noundef 12, ptr noundef %i.ap, i32 noundef 4096) ; 0 uses
  br label %read_c_len.exit.i.i

read_c_len.exit.i.i:                              ; preds = %bb.v, %.loopexit85.i.i.i, %vector.body89, %._crit_edge.i.i.i, %bb.z, %bb.w, %bb.q, %bb.o, %bb.m
  call fastcc void @read_pt_len(ptr noundef nonnull %2, i32 noundef -1)
  %.pre.i.i = load i16, ptr %i.af, align 8, !tbaa !87
  %.pre.i = load i16, ptr %i.al, align 2, !tbaa !39
  br label %bb.ab

bb.ab:                                            ; preds = %read_c_len.exit.i.i, %bb.l
  %i.dq = phi i16 [ %.pre.i, %read_c_len.exit.i.i ], [ %.pre127.i, %bb.l ] ; 2 uses
  %i.dr = phi i16 [ %.pre.i.i, %read_c_len.exit.i.i ], [ %i.as, %bb.l ]
  %i.ds = add i16 %i.dr, -1
  store i16 %i.ds, ptr %i.af, align 8, !tbaa !87
  %i.dt = lshr i16 %i.dq, 4
  %i.du = zext nneg i16 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !23 ; 3 uses
  %i.dx = icmp ugt i16 %i.dw, 509
  br i1 %i.dx, label %.preheader.i.i, label %decode_c.exit.i

.preheader.i.i:                                   ; preds = %bb.ab
  %i.dy = zext i16 %i.dq to i32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %.preheader.i.i
  %.024.i.i = phi i16 [ %.1.i.i, %bb.ad ], [ %i.dw, %.preheader.i.i ] ; 2 uses
  %.0.i.i = phi i32 [ %i.ec, %bb.ad ], [ 8, %.preheader.i.i ] ; 2 uses
  %i.dz = icmp ugt i16 %.024.i.i, 1018
  br i1 %i.dz, label %decode_c.exit.thread.i, label %bb.ad

decode_c.exit.thread.i:                           ; preds = %bb.ac
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.49) #11
  store i32 7, ptr %i.aj, align 8, !tbaa !38
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ea = and i32 %.0.i.i, %i.dy
  %.not.i.i = icmp eq i32 %i.ea, 0
  %i.eb = zext nneg i16 %.024.i.i to i64
  %.1.in.v.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i.i, i64 56, i64 2094
  %.1.in.v.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %2, i64 %.1.in.v.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %.1.in.i.i = getelementptr inbounds nuw [2 x i8], ptr %.1.in.v.v.i.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, i64 %i.eb
  %.1.i.i = load i16, ptr %.1.in.i.i, align 2, !tbaa !23 ; 3 uses
  %i.ec = lshr i32 %.0.i.i, 1
  %i.ed = icmp ugt i16 %.1.i.i, 509
  br i1 %i.ed, label %bb.ac, label %decode_c.exit.i

decode_c.exit.i:                                  ; preds = %bb.ad, %bb.ab
  %.2.i.i = phi i16 [ %i.dw, %bb.ab ], [ %.1.i.i, %bb.ad ] ; 6 uses
  %i.ee = zext nneg i16 %.2.i.i to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !25
  %i.eh = zext i8 %i.eg to i32
  %i.ei = call fastcc i32 @fill_buf(ptr noundef nonnull %2, i32 noundef %i.eh) ; 0 uses
  %i.ej = icmp samesign ult i16 %.2.i.i, 256
  br i1 %i.ej, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %decode_c.exit.i, %decode_c.exit.thread.i
  %.025.i88.i = phi i16 [ 0, %decode_c.exit.thread.i ], [ %.2.i.i, %decode_c.exit.i ]
  %i.ek = trunc nuw i16 %.025.i88.i to i8
  %i.el = load ptr, ptr %2, align 8, !tbaa !33    ; 5 uses
  %i.em = zext i32 %.051.i to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.em
  store i8 %i.ek, ptr %i.en, align 1, !tbaa !25
  %i.eo = add i32 %.054.i, 1                      ; 2 uses
  %i.ep = add i32 %.051.i, 1                      ; 2 uses
  %i.eq = icmp ugt i32 %i.ep, 26623
  br i1 %i.eq, label %bb.af, label %.loopexit.i

bb.af:                                            ; preds = %bb.ae
  %i.er = load i32, ptr %i.n, align 4, !tbaa !31
  %i.es = call i64 @cli_writen(i32 noundef %i.er, ptr noundef nonnull %i.el, i64 noundef 26624) #11
  %.not.i68.i = icmp eq i64 %i.es, 26624
  br i1 %.not.i68.i, label %.loopexit.i, label %.sink.split.i

bb.ag:                                            ; preds = %decode_c.exit.i
  %i.et = add nsw i16 %.2.i.i, -253
  %i.eu = zext nneg i16 %i.et to i32
  %i.ev = add i32 %.054.i, %i.eu                  ; 2 uses
  %i.ew = load i16, ptr %i.al, align 2, !tbaa !39 ; 2 uses
  %i.ex = lshr i16 %i.ew, 8
  %i.ey = zext nneg i16 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !23 ; 3 uses
  %i.fb = icmp ugt i16 %i.fa, 16
  br i1 %i.fb, label %.preheader.i71.i, label %.loopexit.i69.i

.preheader.i71.i:                                 ; preds = %bb.ag
  %i.fc = zext i16 %i.ew to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %.preheader.i71.i
  %.022.i.i = phi i16 [ %.1.i77.i, %bb.aj ], [ %i.fa, %.preheader.i71.i ] ; 2 uses
  %.0.i72.i = phi i32 [ %i.fg, %bb.aj ], [ 128, %.preheader.i71.i ] ; 2 uses
  %i.fd = icmp ugt i16 %.022.i.i, 1018
  br i1 %i.fd, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.49) #11
  store i32 7, ptr %i.aj, align 8, !tbaa !38
  br label %decode_p.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.fe = and i32 %.0.i72.i, %i.fc
  %.not.i73.i = icmp eq i32 %i.fe, 0
  %i.ff = zext nneg i16 %.022.i.i to i64
  %.1.in.v.v.i74.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i73.i, i64 56, i64 2094
  %.1.in.v.v.i74.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %2, i64 %.1.in.v.v.i74.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel.v
  %.1.in.i76.i = getelementptr inbounds nuw [2 x i8], ptr %.1.in.v.v.i74.sroa.sel.v.sroa.sel.v.i.sroa.sel.v.sroa.sel.v.sroa.sel, i64 %i.ff
  %.1.i77.i = load i16, ptr %.1.in.i76.i, align 2, !tbaa !23 ; 3 uses
  %i.fg = lshr i32 %.0.i72.i, 1
  %i.fh = icmp ugt i16 %.1.i77.i, 16
  br i1 %i.fh, label %bb.ah, label %.loopexit.i69.i

.loopexit.i69.i:                                  ; preds = %bb.aj, %bb.ag
  %.2.i70.i = phi i16 [ %i.fa, %bb.ag ], [ %.1.i77.i, %bb.aj ] ; 3 uses
  %i.fi = zext nneg i16 %.2.i70.i to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !25
  %i.fl = zext i8 %i.fk to i32
  %i.fm = call fastcc i32 @fill_buf(ptr noundef nonnull %2, i32 noundef %i.fl) ; 0 uses
  %.not24.i.i = icmp eq i16 %.2.i70.i, 0
  br i1 %.not24.i.i, label %decode_p.exit.i, label %bb.ak

bb.ak:                                            ; preds = %.loopexit.i69.i
  %i.fn = add nsw i16 %.2.i70.i, -1
  %i.fo = zext nneg i16 %i.fn to i32              ; 3 uses
  %i.fp = shl nuw nsw i32 1, %i.fo
  %i.fq = load i16, ptr %i.al, align 2, !tbaa !39
  %i.fr = zext i16 %i.fq to i32
  %i.fs = sub nuw nsw i32 16, %i.fo
  %i.ft = lshr i32 %i.fr, %i.fs
  %i.fu = trunc nuw nsw i32 %i.ft to i16
  %i.fv = call fastcc i32 @fill_buf(ptr noundef nonnull %2, i32 noundef range(i32 0, 65536) %i.fo) ; 0 uses
  %i.fw = trunc nuw i32 %i.fp to i16
  %i.fx = add nuw i16 %i.fu, %i.fw
  %i.fy = xor i16 %i.fx, -1
  br label %decode_p.exit.i

decode_p.exit.i:                                  ; preds = %bb.ak, %.loopexit.i69.i, %bb.ai
  %.023.i.i = phi i16 [ -1, %bb.ai ], [ %i.fy, %bb.ak ], [ -1, %.loopexit.i69.i ]
  %i.fz = trunc i32 %.051.i to i16
  %i.ga = add i16 %.023.i.i, %i.fz                ; 3 uses
  %i.gb = icmp slt i16 %i.ga, 0
  %narrow.i = add nsw i16 %i.ga, 26624
  %spec.select.i = select i1 %i.gb, i16 %narrow.i, i16 %i.ga ; 5 uses
  %or.cond.i = icmp ugt i16 %spec.select.i, 26623
  br i1 %or.cond.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %decode_p.exit.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.48) #11
  br label %.loopexit92.i

bb.am:                                            ; preds = %decode_p.exit.i
  %i.gc = zext nneg i16 %spec.select.i to i32
  %i.gd = icmp ugt i32 %.051.i, %i.gc
  %i.ge = icmp ult i32 %.051.i, 26367
  %or.cond4.i = and i1 %i.ge, %i.gd
  %i.gf = add nsw i16 %.2.i.i, -254               ; 4 uses
  %i.gg = load ptr, ptr %2, align 8, !tbaa !33    ; 12 uses
  br i1 %or.cond4.i, label %iter.check, label %.lr.ph.i

iter.check:                                       ; preds = %bb.am
  %i.gh = zext nneg i16 %spec.select.i to i64     ; 6 uses
  %i.gi = zext nneg i32 %.051.i to i64            ; 7 uses
  %i.gj = sub nsw i64 26623, %i.gi
  %i.gk = add nsw i16 %.2.i.i, -255               ; 2 uses
  %smin = call i16 @llvm.smin.i16(i16 %i.gk, i16 -1)
  %i.gl = sub i16 %i.gk, %smin
  %i.gm = zext i16 %i.gl to i64
  %umin = call i64 @llvm.umin.i64(i64 %i.gj, i64 %i.gm)
  %i.gn = sub nsw i16 26623, %spec.select.i
  %i.go = zext i16 %i.gn to i64
  %umin75 = call i64 @llvm.umin.i64(i64 %umin, i64 %i.go) ; 3 uses
  %i.gp = add nuw nsw i64 %umin75, 1              ; 5 uses
  %min.iters.check = icmp samesign ult i64 %umin75, 3
  %i.gq = sub nsw i64 %i.gh, %i.gi
  %diff.check = icmp ugt i64 %i.gq, -32
  %or.cond101 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond101, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check76 = icmp samesign ult i64 %umin75, 31
  br i1 %min.iters.check76, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gr = and i64 %i.gp, 28
  %n.vec = and i64 %i.gp, 131040                  ; 6 uses
  %i.gs = add nuw nsw i64 %n.vec, %i.gi           ; 2 uses
  %i.gt = add nuw nsw i64 %n.vec, %i.gh
  %i.gu = trunc i64 %n.vec to i16
  %i.gv = sub i16 %i.gf, %i.gu
  %invariant.gep120 = getelementptr i8, ptr %i.gg, i64 %i.gh
  %invariant.gep122 = getelementptr i8, ptr %i.gg, i64 %i.gi
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep121 = getelementptr i8, ptr %invariant.gep120, i64 %index ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %gep121, i64 16
  %wide.load = load <16 x i8>, ptr %gep121, align 1, !tbaa !25
  %wide.load77 = load <16 x i8>, ptr %i.gw, align 1, !tbaa !25
  %gep123 = getelementptr i8, ptr %invariant.gep122, i64 %index ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %gep123, i64 16
  store <16 x i8> %wide.load, ptr %gep123, align 1, !tbaa !25
  store <16 x i8> %wide.load77, ptr %i.gx, align 1, !tbaa !25
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gy = icmp eq i64 %index.next, %n.vec
  br i1 %i.gy, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gp, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.gr, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !88

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec80 = and i64 %i.gp, 131068                ; 5 uses
  %i.gz = add nuw nsw i64 %n.vec80, %i.gi         ; 2 uses
  %i.ha = add nuw nsw i64 %n.vec80, %i.gh
  %i.hb = trunc i64 %n.vec80 to i16
  %i.hc = sub i16 %i.gf, %i.hb
  %invariant.gep124 = getelementptr i8, ptr %i.gg, i64 %i.gh
  %invariant.gep126 = getelementptr i8, ptr %i.gg, i64 %i.gi
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index81 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next83, %vec.epilog.vector.body ] ; 3 uses
  %gep125 = getelementptr i8, ptr %invariant.gep124, i64 %index81
  %wide.load82 = load <4 x i8>, ptr %gep125, align 1, !tbaa !25
  %gep127 = getelementptr i8, ptr %invariant.gep126, i64 %index81
  store <4 x i8> %wide.load82, ptr %gep127, align 1, !tbaa !25
  %index.next83 = add nuw i64 %index81, 4         ; 2 uses
  %i.hd = icmp eq i64 %index.next83, %n.vec80
  br i1 %i.hd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !85

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n84 = icmp eq i64 %i.gp, %n.vec80
  br i1 %cmp.n84, label %.loopexit.loopexit.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv119.i.ph = phi i64 [ %i.gi, %iter.check ], [ %i.gs, %vec.epilog.iter.check ], [ %i.gz, %vec.epilog.middle.block ]
  %indvars.iv.i.ph = phi i64 [ %i.gh, %iter.check ], [ %i.gt, %vec.epilog.iter.check ], [ %i.ha, %vec.epilog.middle.block ]
  %.ph102 = phi i16 [ %i.gf, %iter.check ], [ %i.gv, %vec.epilog.iter.check ], [ %i.hc, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i, %vec.epilog.scalar.ph ], [ %indvars.iv119.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.he = phi i16 [ %i.hi, %vec.epilog.scalar.ph ], [ %.ph102, %vec.epilog.scalar.ph.preheader ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv.i
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !25
  %indvars.iv.next120.i = add nuw nsw i64 %indvars.iv119.i, 1 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %indvars.iv119.i
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !25
  %i.hi = add i16 %i.he, -1                       ; 2 uses
  %i.hj = icmp sgt i16 %i.hi, -1
  %i.hk = trunc nuw i64 %indvars.iv.i to i16
  %i.hl = icmp slt i16 %i.hk, 26623
  %or.cond7.i = and i1 %i.hl, %i.hj
  %i.hm = icmp samesign ult i64 %indvars.iv119.i, 26623
  %i.hn = and i1 %i.hm, %or.cond7.i
  br i1 %i.hn, label %vec.epilog.scalar.ph, label %.loopexit.loopexit.i, !llvm.loop !86

.lr.ph.i:                                         ; preds = %bb.am, %bb.ao
  %i.ho = phi i16 [ %i.ia, %bb.ao ], [ %i.gf, %bb.am ] ; 2 uses
  %.2102.i = phi i16 [ %spec.store.select.i, %bb.ao ], [ %spec.select.i, %bb.am ] ; 2 uses
  %.253101.i = phi i32 [ %.3.i, %bb.ao ], [ %.051.i, %bb.am ] ; 2 uses
  %i.hp = sext i16 %.2102.i to i64
  %i.hq = getelementptr inbounds i8, ptr %i.gg, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !25
  %i.hs = zext i32 %.253101.i to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.hs
  store i8 %i.hr, ptr %i.ht, align 1, !tbaa !25
  %i.hu = add i32 %.253101.i, 1                   ; 2 uses
  %i.hv = icmp ugt i32 %i.hu, 26623
  br i1 %i.hv, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.lr.ph.i
  %i.hw = load i32, ptr %i.n, align 4, !tbaa !31
  %i.hx = call i64 @cli_writen(i32 noundef %i.hw, ptr noundef nonnull %i.gg, i64 noundef 26624) #11
  %.not.i78.i = icmp eq i64 %i.hx, 26624
  br i1 %.not.i78.i, label %bb.ao, label %.sink.split.i

bb.ao:                                            ; preds = %bb.an, %.lr.ph.i
  %.3.i = phi i32 [ 0, %bb.an ], [ %i.hu, %.lr.ph.i ] ; 2 uses
  %i.hy = add i16 %.2102.i, 1                     ; 2 uses
  %i.hz = icmp sgt i16 %i.hy, 26623
  %spec.store.select.i = select i1 %i.hz, i16 0, i16 %i.hy
  %i.ia = add nsw i16 %i.ho, -1
  %i.ib = icmp sgt i16 %i.ho, 0
  br i1 %i.ib, label %.lr.ph.i, label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next120.i.lcssa = phi i64 [ %i.gz, %vec.epilog.middle.block ], [ %i.gs, %middle.block ], [ %indvars.iv.next120.i, %vec.epilog.scalar.ph ]
  %i.ic = trunc nuw nsw i64 %indvars.iv.next120.i.lcssa to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ao, %.loopexit.loopexit.i, %bb.af, %bb.ae
  %i.id = phi ptr [ %i.el, %bb.af ], [ %i.el, %bb.ae ], [ %i.gg, %.loopexit.loopexit.i ], [ %i.gg, %bb.ao ]
  %.155.i = phi i32 [ %i.eo, %bb.af ], [ %i.eo, %bb.ae ], [ %i.ev, %.loopexit.loopexit.i ], [ %i.ev, %bb.ao ]
  %.4.i = phi i32 [ 0, %bb.af ], [ %i.ep, %bb.ae ], [ %i.ic, %.loopexit.loopexit.i ], [ %.3.i, %bb.ao ]
  %i.ie = load i32, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %.not67.i = icmp eq i32 %i.ie, 0
  br i1 %.not67.i, label %bb.k, label %.sink.split.i

.loopexit92.i:                                    ; preds = %bb.k, %bb.al
  %.not65.i = icmp eq i32 %.051.i, 0
  %.pre128.i = load ptr, ptr %2, align 8, !tbaa !33 ; 3 uses
  br i1 %.not65.i, label %.sink.split.i, label %bb.ap

bb.ap:                                            ; preds = %.loopexit92.i
  %i.if = load i32, ptr %i.n, align 4, !tbaa !31
  %i.ig = zext i32 %.051.i to i64
  %i.ih = call i64 @cli_writen(i32 noundef %i.if, ptr noundef %.pre128.i, i64 noundef range(i64 1, 4294967296) %i.ig) #11 ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.af, %.loopexit.i, %bb.an, %bb.ap, %.loopexit92.i, %bb.i
  %.pre128.sink.i = phi ptr [ %.pre128.i, %.loopexit92.i ], [ %.pre128.i, %bb.ap ], [ %i.gg, %bb.an ], [ %i.ai, %bb.i ], [ %i.id, %.loopexit.i ], [ %i.el, %bb.af ]
  %.056.ph.i = phi i32 [ 0, %.loopexit92.i ], [ 0, %bb.ap ], [ 14, %bb.an ], [ %i.ah, %bb.i ], [ %i.ie, %.loopexit.i ], [ 14, %bb.af ]
  call void @free(ptr noundef %.pre128.sink.i) #11
  %i.ii = load i64, ptr %i.ab, align 8, !tbaa !35
  store i64 %i.ii, ptr %i.z, align 8, !tbaa !16
  br label %decode.exit

decode.exit:                                      ; preds = %bb.g, %.sink.split.i
  %.056.i = phi i32 [ 20, %bb.g ], [ %.056.ph.i, %.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.ar

bb.aq:                                            ; preds = %bb.e
  %i.ij = call fastcc i32 @decode_f(ptr noundef %1)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.f, %decode.exit, %bb.aq, %bb.e, %bb.d, %bb.a, %bb.c
  %.017 = phi i32 [ 0, %bb.c ], [ 2, %bb.a ], [ 8, %bb.d ], [ %i.ij, %bb.aq ], [ %i.t, %bb.f ], [ %.056.i, %decode.exit ], [ 26, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.017
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 27) i32 @arj_unstore(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, -2147483648) %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.47) #11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not23 = icmp eq i32 %2, 0
  br i1 %.not23, label %fmap_need_off_once_len.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %i.c = trunc nuw nsw i64 %spec.select.i to i32
  %i.d = sub nuw i32 %.024, %i.c                  ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %fmap_need_off_once_len.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.024 = phi i32 [ %2, %.lr.ph ], [ %i.d, %bb.b ] ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.f = load i64, ptr %i.b, align 8, !tbaa !16   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21   ; 2 uses
  %.not.i = icmp ult i64 %i.f, %i.h
  br i1 %.not.i, label %fmap_need_off_once_len.exit, label %fmap_need_off_once_len.exit.thread

fmap_need_off_once_len.exit:                      ; preds = %bb.c
  %i.i = tail call i32 @llvm.umin.i32(i32 %.024, i32 8192)
  %i.j = zext nneg i32 %i.i to i64
  %i.k = sub nuw i64 %i.h, %i.f
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 range(i64 1, 4294967296) %i.j, i64 %i.k) ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.n = tail call ptr %i.m(ptr noundef nonnull %i.e, i64 noundef %i.f, i64 noundef %spec.select.i, i32 noundef 0) #11, !inline_history !1 ; 2 uses
  %.not20.i.not = icmp eq ptr %i.n, null
  br i1 %.not20.i.not, label %fmap_need_off_once_len.exit.thread, label %bb.d

bb.d:                                             ; preds = %fmap_need_off_once_len.exit
  %i.o = load i64, ptr %i.b, align 8, !tbaa !16
  %i.p = add i64 %i.o, %spec.select.i
  store i64 %i.p, ptr %i.b, align 8, !tbaa !16
  %i.q = tail call i64 @cli_writen(i32 noundef %1, ptr noundef nonnull %i.n, i64 noundef %spec.select.i) #11
  %.not17 = icmp eq i64 %i.q, %spec.select.i
  br i1 %.not17, label %bb.b, label %fmap_need_off_once_len.exit.thread

fmap_need_off_once_len.exit.thread:               ; preds = %fmap_need_off_once_len.exit, %bb.d, %bb.b, %bb.c, %bb.a
  %.013 = phi i32 [ 0, %bb.a ], [ 14, %bb.d ], [ 0, %bb.b ], [ 26, %bb.c ], [ 26, %fmap_need_off_once_len.exit ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @decode_f(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.arj_decode_tag, align 8     ; 36 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13352) %i.a, i8 0, i64 13352, i1 false)
  %i.b = tail call ptr @cli_max_calloc(i64 noundef 26624, i64 noundef 1) #11 ; 2 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !33
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.av, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i64 %i.g, ptr %i.h, align 8, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 %i.j, ptr %i.k, align 8, !tbaa !36
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 42 ; 15 uses
  store i16 0, ptr %i.l, align 2, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12853
  store i8 0, ptr %i.m, align 1, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 44
  store i32 0, ptr %i.n, align 4, !tbaa !42
  %i.o = call fastcc range(i32 0, 27) i32 @fill_buf(ptr noundef nonnull %1, i32 noundef 16) ; 2 uses
  %.not65 = icmp eq i32 %i.o, 0
  br i1 %.not65, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %1, align 8, !tbaa !33
  br label %.sink.split

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 31 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 16 uses
  store i16 0, ptr %i.r, align 4, !tbaa !91
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 13368 ; 6 uses
  store i32 0, ptr %i.s, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !28
  %.not114 = icmp eq i32 %i.u, 0
  br i1 %.not114, label %.loopexit89.thread, label %.lr.ph112

.loopexit89.thread:                               ; preds = %bb.d
  %.pre132170 = load ptr, ptr %1, align 8, !tbaa !33
  br label %.sink.split

.lr.ph112:                                        ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph112, %.loopexit
  %i.w = phi i16 [ 0, %.lr.ph112 ], [ %i.il, %.loopexit ] ; 4 uses
  %i.x = phi i16 [ 0, %.lr.ph112 ], [ %i.im, %.loopexit ] ; 8 uses
  %.054111 = phi i32 [ 0, %.lr.ph112 ], [ %.3, %.loopexit ] ; 5 uses
  %.056110 = phi i32 [ 0, %.lr.ph112 ], [ %.157, %.loopexit ] ; 2 uses
end_hunk_0
