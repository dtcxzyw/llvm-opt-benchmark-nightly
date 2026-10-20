Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/BoxPartition?download=true
inline.NumInlined: 93
inline.NumDeleted: 6
begin_hunk_0_@_Z17box_partition_rcbiiRK3BoxiPPS_PPiS5_S5_S5_:bb.a
  %i.dt = icmp eq i32 %index.next111, %n.vec98
  br i1 %i.dt, label %middle.block114, label %vector.body108, !llvm.loop !8

middle.block114:                                  ; preds = %vector.body.interim113
  br i1 %cmp.n115, label %._crit_edge.split.us327.split.us.us.us.us.us.i.us, label %.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us.preheader126

.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us.preheader126: ; preds = %.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us.preheader, %middle.block114
  %.0160298.us316.us.us.us.us.us.us.i.us.ph = phi i32 [ %i.au, %.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us.preheader ], [ %i.df, %middle.block114 ]
  br label %.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us

.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us: ; preds = %.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us.preheader126, %bb.f
  %.0160298.us316.us.us.us.us.us.us.i.us = phi i32 [ %i.dy, %bb.f ], [ %.0160298.us316.us.us.us.us.us.us.i.us.ph, %.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us.preheader126 ] ; 2 uses
  %i.du = add nsw i32 %.0160298.us316.us.us.us.us.us.us.i.us, %3 ; 2 uses
  %i.dv = icmp sge i32 %i.du, %i.cr
  %i.dw = add nuw nsw i32 %i.du, %i.dj
  %i.dx = icmp slt i32 %i.dw, 0
  %or.cond.i.us = select i1 %i.dv, i1 true, i1 %i.dx
  br i1 %or.cond.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us
  %i.dy = add i32 %.0160298.us316.us.us.us.us.us.us.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.dy, %i.ay
  br i1 %exitcond.not.i.us, label %._crit_edge.split.us327.split.us.us.us.us.us.i.us, label %.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us, !llvm.loop !9

.lr.ph299.split.us315.split.us.split.us365.us.us.us.i.us: ; preds = %.lr.ph299.split.us315.split.us.us.us.us.us.i.us, %bb.i
  %.0160298.us316.us.us366.us.us.us.i.us = phi i32 [ %i.ei, %bb.i ], [ %i.au, %.lr.ph299.split.us315.split.us.us.us.us.us.i.us ] ; 3 uses
  %.3167296.us317.us.us.us.us.us.i.us = phi i32 [ %.4168.us326.us.us.us.us.us.i.us, %bb.i ], [ %.2166308.us.us361.us.us.us.i.us, %.lr.ph299.split.us315.split.us.us.us.us.us.i.us ] ; 3 uses
  %i.dz = add nsw i32 %.0160298.us316.us.us366.us.us.us.i.us, %i.i ; 2 uses
  %i.ea = add nsw i32 %.0160298.us316.us.us366.us.us.us.i.us, %3 ; 2 uses
  %i.eb = icmp slt i32 %i.ea, %i.cr
  br i1 %i.eb, label %_ZL19box_map_local_entryRK3Boxiiii.exit.us322.us.us367.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

_ZL19box_map_local_entryRK3Boxiiii.exit.us322.us.us367.us.us.us.i.us: ; preds = %.lr.ph299.split.us315.split.us.split.us365.us.us.us.i.us
  %i.ec = add nuw nsw i32 %i.ea, %i.dj            ; 2 uses
  %i.ed = icmp slt i32 %i.ec, 0
  br i1 %i.ed, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_ZL19box_map_local_entryRK3Boxiiii.exit.us322.us.us367.us.us.us.i.us
  %.not181.us323.us.us.us.us.us.i.us = icmp sle i32 %i.bq, %i.dz
  %i.ee = icmp slt i32 %i.dz, %i.bs
  %or.cond189.us325.us.us.us.us.us.i.us = and i1 %.not181.us323.us.us.us.us.us.i.us, %i.ee
  br i1 %or.cond189.us325.us.us.us.us.us.i.us, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ef = add nsw i32 %.3167296.us317.us.us.us.us.us.i.us, 1
  %i.eg = zext nneg i32 %i.ec to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.eg
  store i32 %.3167296.us317.us.us.us.us.us.i.us, ptr %i.eh, align 4, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.4168.us326.us.us.us.us.us.i.us = phi i32 [ %i.ef, %bb.h ], [ %.3167296.us317.us.us.us.us.us.i.us, %bb.g ] ; 2 uses
  %i.ei = add i32 %.0160298.us316.us.us366.us.us.us.i.us, 1 ; 2 uses
  %exitcond458.not.i.us = icmp eq i32 %i.ei, %i.ay
  br i1 %exitcond458.not.i.us, label %._crit_edge.split.us327.split.us.us.us.us.us.i.us, label %.lr.ph299.split.us315.split.us.split.us365.us.us.us.i.us, !llvm.loop !10

._crit_edge.split.us327.split.us.us.us.us.us.i.us: ; preds = %bb.f, %bb.i, %middle.block114
  %.us-phi.us.us.us.us.i.us = phi i32 [ %.2166308.us.us361.us.us.us.i.us, %middle.block114 ], [ %.4168.us326.us.us.us.us.us.i.us, %bb.i ], [ %.2166308.us.us361.us.us.us.i.us, %bb.f ] ; 2 uses
  %i.ej = add nsw i32 %.0159310.us.us360.us.us.us.i.us, 1 ; 2 uses
  %i.ek = icmp slt i32 %i.ej, %i.ax
  br i1 %i.ek, label %.preheader.us.us359.us.us.us.i.us, label %._crit_edge311.split.us.us.us.us.us.i.us, !llvm.loop !11

.preheader.us.us.us.us.us.us.i.us:                ; preds = %.preheader276.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.i.us
  %.0159310.us.us.us.us.us.us.i.us = phi i32 [ %i.ic, %._crit_edge.split.us.us.us.us.us.us.us.i.us ], [ %i.au, %.preheader276.us.us.us.us.i.us ] ; 5 uses
  %.2309.us.us.us.us.us.us.i.us = phi i32 [ %.us-phi345.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.i.us ], [ %.1163349.us.us.us.us.i.us, %.preheader276.us.us.us.us.i.us ] ; 4 uses
  %.2166308.us.us.us.us.us.us.i.us = phi i32 [ %.us-phi344.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.i.us ], [ %.1165348.us.us.us.us.i.us, %.preheader276.us.us.us.us.i.us ] ; 4 uses
  %.2205307.us.us.us.us.us.us.i.us = phi i32 [ %.us-phi343.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.i.us ], [ %.1204347.us.us.us.us.i.us, %.preheader276.us.us.us.us.i.us ] ; 4 uses
  %.2211306.us.us.us.us.us.us.i.us = phi ptr [ %.us-phi342.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.i.us ], [ %.1210346.us.us.us.us.i.us, %.preheader276.us.us.us.us.i.us ] ; 4 uses
  %i.el = add nsw i32 %.0159310.us.us.us.us.us.us.i.us, %i.k ; 4 uses
  %i.em = add nsw i32 %.0159310.us.us.us.us.us.us.i.us, %3 ; 4 uses
  %.not180.us.us.us.us.us.us.i.us = icmp sle i32 %i.bu, %i.el
  %i.en = icmp slt i32 %i.el, %i.bw
  %i.eo = and i1 %.not180.us.us.us.us.us.us.i.us, %i.en
  %or.cond187.not222.not227.us.us.us.us.us.us.i.us = select i1 %or.cond185.not219.not221.not225.not230.us.us.us.us.i.us, i1 %i.eo, i1 false
  %or.cond187.not222.not227.us.us.us.fr.us.us.us.i.us = freeze i1 %or.cond187.not222.not227.us.us.us.us.us.us.i.us ; 2 uses
  %i.ep = icmp sgt i32 %.0159310.us.us.us.us.us.us.i.us, -1
  %or.cond3.us.us.us.us.us.us.i.us = and i1 %i.cm, %i.ep
  %i.eq = icmp slt i32 %.0159310.us.us.us.us.us.us.i.us, %i.s
  %.not183.us.us.us.us.us.us.i.us = icmp sle i32 %i.ce, %i.el
  %i.er = icmp slt i32 %i.el, %i.cf
  %or.cond3.us.us.fr.us.us.us.us.i.us = freeze i1 %or.cond3.us.us.us.us.us.us.i.us
  br i1 %or.cond3.us.us.fr.us.us.us.us.i.us, label %.lr.ph299.split.us.us.us.split.us.us.us.us.us.i.us, label %.lr.ph299.split.us.us.us.split.us371.us.us.us.i.us

.lr.ph299.split.us.us.us.split.us371.us.us.us.i.us: ; preds = %.preheader.us.us.us.us.us.us.i.us
  %i.es = load i32, ptr %i.n, align 4, !tbaa !7
  %i.et = add i32 %i.es, %i.w
  %i.eu = load i32, ptr %i.h, align 4, !tbaa !7
  %i.ev = sub i32 %i.et, %i.eu                    ; 5 uses
  %i.ew = load i32, ptr %i.q, align 4, !tbaa !7
  %i.ex = add nsw i32 %i.ew, %i.w
  %i.ey = load i32, ptr %i.j, align 4, !tbaa !7
  %i.ez = sub i32 %i.ex, %i.ey                    ; 2 uses
  %i.fa = load i32, ptr %i.t, align 4, !tbaa !7
  %i.fb = add nsw i32 %i.fa, %i.w
  %i.fc = load i32, ptr %i.l, align 4, !tbaa !7
  %i.fd = sub i32 %i.fb, %i.fc
  %i.fe = icmp slt i32 %i.em, %i.ez
  %i.ff = icmp slt i32 %i.cj, %i.fd
  %or.cond38.i.us.us.us.us377.us.us.us.i.us = select i1 %i.fe, i1 %i.ff, i1 false
  %i.fg = mul nuw nsw i32 %i.ez, %i.cj
  %i.fh = add nuw i32 %i.fg, %i.em
  %i.fi = mul i32 %i.fh, %i.ev                    ; 3 uses
  %or.cond38.i.us.us.us.us377.fr.us.us.us.i.us = freeze i1 %or.cond38.i.us.us.us.us377.us.us.us.i.us
  br i1 %or.cond38.i.us.us.us.us377.fr.us.us.us.i.us, label %.lr.ph299.split.us.us.us.split.us371.split.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

.lr.ph299.split.us.us.us.split.us371.split.us.us.us.us.i.us: ; preds = %.lr.ph299.split.us.us.us.split.us371.us.us.us.i.us
  br i1 %or.cond187.not222.not227.us.us.us.fr.us.us.us.i.us, label %.lr.ph299.split.us.us.us.split.us371.split.us.split.us398.us.us.i.us, label %.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us.preheader

.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us.preheader: ; preds = %.lr.ph299.split.us.us.us.split.us371.split.us.us.us.us.i.us
  %i.fj = tail call i32 @llvm.smax.i32(i32 %i.ev, i32 0)
  %i.fk = tail call i32 @llvm.umin.i32(i32 %i.fj, i32 %i.bh) ; 2 uses
  %i.fl = add nuw i32 %i.fk, 1                    ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.fk, 15
  br i1 %min.iters.check, label %.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us.preheader
  %n.vec = and i32 %i.fl, -16                     ; 3 uses
  %i.fm = sub i32 %n.vec, %3
  %broadcast.splatinsert89 = insertelement <16 x i32> poison, i32 %i.ev, i64 0
  %broadcast.splat90 = shufflevector <16 x i32> %broadcast.splatinsert89, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert91 = insertelement <16 x i32> poison, i32 %i.fi, i64 0
  %broadcast.splat92 = shufflevector <16 x i32> %broadcast.splatinsert91, <16 x i32> poison, <16 x i32> zeroinitializer
  %invariant.op133 = add <16 x i32> %broadcast.splat, %broadcast.splat92
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ]
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body.interim ] ; 3 uses
  %i.fn = add nsw <16 x i32> %vec.ind, %broadcast.splat
  %i.fo = icmp sge <16 x i32> %i.fn, %broadcast.splat90
  %.reass134 = add <16 x i32> %vec.ind, %invariant.op133
  %i.fp = icmp slt <16 x i32> %.reass134, zeroinitializer
  %i.fq = select <16 x i1> %i.fo, <16 x i1> splat (i1 true), <16 x i1> %i.fp
  %i.fr = freeze <16 x i1> %i.fq
  %i.fs = bitcast <16 x i1> %i.fr to i16
  %.not118 = icmp eq i16 %i.fs, 0
  br i1 %.not118, label %vector.body.interim, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

vector.body.interim:                              ; preds = %vector.body
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.ft = icmp eq i32 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body.interim
  %cmp.n = icmp eq i32 %i.fl, %n.vec
  br i1 %cmp.n, label %._crit_edge.split.us.us.us.us.us.us.us.i.us, label %.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us.preheader121

.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us.preheader121: ; preds = %.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us.preheader, %middle.block
  %.0160298.us.us.us.us372.us.us.us.us.us.i.us.ph = phi i32 [ %i.au, %.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us.preheader ], [ %i.fm, %middle.block ]
  br label %.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us

.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us: ; preds = %.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us.preheader121, %bb.j
  %.0160298.us.us.us.us372.us.us.us.us.us.i.us = phi i32 [ %i.fy, %bb.j ], [ %.0160298.us.us.us.us372.us.us.us.us.us.i.us.ph, %.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us.preheader121 ] ; 2 uses
  %i.fu = add nsw i32 %.0160298.us.us.us.us372.us.us.us.us.us.i.us, %3 ; 2 uses
  %i.fv = icmp sge i32 %i.fu, %i.ev
  %i.fw = add nuw nsw i32 %i.fu, %i.fi
  %i.fx = icmp slt i32 %i.fw, 0
  %or.cond443.i.us = select i1 %i.fv, i1 true, i1 %i.fx
  br i1 %or.cond443.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us
  %i.fy = add i32 %.0160298.us.us.us.us372.us.us.us.us.us.i.us, 1 ; 2 uses
  %exitcond459.not.i.us = icmp eq i32 %i.fy, %i.ay
  br i1 %exitcond459.not.i.us, label %._crit_edge.split.us.us.us.us.us.us.us.i.us, label %.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us, !llvm.loop !13

.lr.ph299.split.us.us.us.split.us371.split.us.split.us398.us.us.i.us: ; preds = %.lr.ph299.split.us.us.us.split.us371.split.us.us.us.us.i.us, %bb.m
  %.0160298.us.us.us.us372.us.us399.us.us.i.us = phi i32 [ %i.gi, %bb.m ], [ %i.au, %.lr.ph299.split.us.us.us.split.us371.split.us.us.us.us.i.us ] ; 3 uses
  %.3167296.us.us.us.us373.us.us.us.us.i.us = phi i32 [ %.4168.us.us.us.us382.us.us.us.us.i.us, %bb.m ], [ %.2166308.us.us.us.us.us.us.i.us, %.lr.ph299.split.us.us.us.split.us371.split.us.us.us.us.i.us ] ; 3 uses
  %i.fz = add nsw i32 %.0160298.us.us.us.us372.us.us399.us.us.i.us, %i.i ; 2 uses
  %i.ga = add nsw i32 %.0160298.us.us.us.us372.us.us399.us.us.i.us, %3 ; 2 uses
  %i.gb = icmp slt i32 %i.ga, %i.ev
  br i1 %i.gb, label %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us378.us.us400.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us378.us.us400.us.us.i.us: ; preds = %.lr.ph299.split.us.us.us.split.us371.split.us.split.us398.us.us.i.us
  %i.gc = add nuw nsw i32 %i.ga, %i.fi            ; 2 uses
  %i.gd = icmp slt i32 %i.gc, 0
  br i1 %i.gd, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.k

bb.k:                                             ; preds = %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us378.us.us400.us.us.i.us
  %.not181.us.us.us.us379.us.us.us.us.i.us = icmp sle i32 %i.bq, %i.fz
  %i.ge = icmp slt i32 %i.fz, %i.bs
  %or.cond189.us.us.us.us381.us.us.us.us.i.us = and i1 %.not181.us.us.us.us379.us.us.us.us.i.us, %i.ge
  br i1 %or.cond189.us.us.us.us381.us.us.us.us.i.us, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.gf = add nsw i32 %.3167296.us.us.us.us373.us.us.us.us.i.us, 1
  %i.gg = zext nneg i32 %i.gc to i64
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.gg
  store i32 %.3167296.us.us.us.us373.us.us.us.us.i.us, ptr %i.gh, align 4, !tbaa !7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.4168.us.us.us.us382.us.us.us.us.i.us = phi i32 [ %i.gf, %bb.l ], [ %.3167296.us.us.us.us373.us.us.us.us.i.us, %bb.k ] ; 2 uses
  %i.gi = add i32 %.0160298.us.us.us.us372.us.us399.us.us.i.us, 1 ; 2 uses
  %exitcond460.not.i.us = icmp eq i32 %i.gi, %i.ay
  br i1 %exitcond460.not.i.us, label %._crit_edge.split.us.us.us.us.us.us.us.i.us, label %.lr.ph299.split.us.us.us.split.us371.split.us.split.us398.us.us.i.us, !llvm.loop !10

.lr.ph299.split.us.us.us.split.us.us.us.us.us.i.us: ; preds = %.preheader.us.us.us.us.us.us.i.us, %bb.v
  %.0160298.us.us.us.us.us.us.us.us.i.us = phi i32 [ %i.ib, %bb.v ], [ %i.au, %.preheader.us.us.us.us.us.us.i.us ] ; 5 uses
  %.3297.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.4.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2309.us.us.us.us.us.us.i.us, %.preheader.us.us.us.us.us.us.i.us ] ; 4 uses
  %.3167296.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.4168.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2166308.us.us.us.us.us.us.i.us, %.preheader.us.us.us.us.us.us.i.us ] ; 3 uses
  %.3206295.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.4207.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2205307.us.us.us.us.us.us.i.us, %.preheader.us.us.us.us.us.us.i.us ] ; 3 uses
  %.3212294.us.us.us.us.us.us.us.us.i.us = phi ptr [ %.4213.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2211306.us.us.us.us.us.us.i.us, %.preheader.us.us.us.us.us.us.i.us ] ; 4 uses
  %i.gj = add nsw i32 %.0160298.us.us.us.us.us.us.us.us.i.us, %i.i ; 4 uses
  %i.gk = load i32, ptr %i.n, align 4, !tbaa !7
  %i.gl = add nsw i32 %i.gk, %i.w
  %i.gm = load i32, ptr %i.h, align 4, !tbaa !7
  %i.gn = sub i32 %i.gl, %i.gm                    ; 2 uses
  %i.go = load i32, ptr %i.q, align 4, !tbaa !7
  %i.gp = add nsw i32 %i.go, %i.w
  %i.gq = load i32, ptr %i.j, align 4, !tbaa !7
  %i.gr = sub i32 %i.gp, %i.gq                    ; 2 uses
  %i.gs = add nsw i32 %.0160298.us.us.us.us.us.us.us.us.i.us, %3 ; 2 uses
  %i.gt = icmp slt i32 %i.gs, %i.gn
  br i1 %i.gt, label %bb.n, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

bb.n:                                             ; preds = %.lr.ph299.split.us.us.us.split.us.us.us.us.us.i.us
  %i.gu = load i32, ptr %i.t, align 4, !tbaa !7
  %i.gv = add nsw i32 %i.gu, %i.w
  %i.gw = load i32, ptr %i.l, align 4, !tbaa !7
  %i.gx = sub i32 %i.gv, %i.gw
  %i.gy = icmp slt i32 %i.em, %i.gr
  %i.gz = icmp slt i32 %i.cj, %i.gx
  %or.cond38.i.us.us.us.us.us.us.us.us.i.us = select i1 %i.gy, i1 %i.gz, i1 false
  br i1 %or.cond38.i.us.us.us.us.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.i.us, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i

_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.i.us: ; preds = %bb.n
  %i.ha = mul nuw nsw i32 %i.gr, %i.cj
  %i.hb = add nuw i32 %i.ha, %i.em
  %i.hc = mul i32 %i.hb, %i.gn
  %i.hd = add nuw nsw i32 %i.hc, %i.gs            ; 3 uses
  %i.he = icmp slt i32 %i.hd, 0
  br i1 %i.he, label %_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.i.us
  %.not181.us.us.us.us.us.us.us.us.i.us = icmp sle i32 %i.bq, %i.gj
  %i.hf = icmp slt i32 %i.gj, %i.bs
  %i.hg = and i1 %.not181.us.us.us.us.us.us.us.us.i.us, %i.hf
  %or.cond189.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond187.not222.not227.us.us.us.fr.us.us.us.i.us, i1 %i.hg, i1 false
  br i1 %or.cond189.us.us.us.us.us.us.us.us.i.us, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hh = add nsw i32 %.3167296.us.us.us.us.us.us.us.us.i.us, 1
  %i.hi = zext nneg i32 %i.hd to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.hi
  store i32 %.3167296.us.us.us.us.us.us.us.us.i.us, ptr %i.hj, align 4, !tbaa !7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.4168.us.us.us.us.us.us.us.us.i.us = phi i32 [ %i.hh, %bb.p ], [ %.3167296.us.us.us.us.us.us.us.us.i.us, %bb.o ] ; 2 uses
  %i.hk = icmp sgt i32 %.0160298.us.us.us.us.us.us.us.us.i.us, -1
  %or.cond5.not234.not239.not246.not254.not264.not273.us.us.us.us.us.us.us.us.i.us = and i1 %i.eq, %i.hk
  %i.hl = icmp slt i32 %.0160298.us.us.us.us.us.us.us.us.i.us, %i.p
  %or.cond190.not231.not236.not243.not251.not261.not270.us.us.us.us.us.us.us.us.i.us = and i1 %i.hl, %or.cond5.not234.not239.not246.not254.not264.not273.us.us.us.us.us.us.us.us.i.us
  %or.cond191.not235.not241.not249.not259.not268.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond190.not231.not236.not243.not251.not261.not270.us.us.us.us.us.us.us.us.i.us, i1 %.not182.us.us.us.us.i.us, i1 false
  %or.cond193.not240.not248.not258.not267.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond191.not235.not241.not249.not259.not268.us.us.us.us.us.us.us.us.i.us, i1 %i.cn, i1 false
  %or.cond194.not247.not256.not265.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond193.not240.not248.not258.not267.us.us.us.us.us.us.us.us.i.us, i1 %.not183.us.us.us.us.us.us.i.us, i1 false
  %or.cond196.not255.not.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond194.not247.not256.not265.us.us.us.us.us.us.us.us.i.us, i1 %i.er, i1 false
  %.not184.us.us.us.us.us.us.us.us.i.us = icmp sle i32 %i.cg, %i.gj
  %or.cond197.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond196.not255.not.us.us.us.us.us.us.us.us.i.us, i1 %.not184.us.us.us.us.us.us.us.us.i.us, i1 false
  %i.hm = icmp slt i32 %i.gj, %i.ch
  %or.cond199.us.us.us.us.us.us.us.us.i.us = select i1 %or.cond197.us.us.us.us.us.us.us.us.i.us, i1 %i.hm, i1 false
  br i1 %or.cond199.us.us.us.us.us.us.us.us.i.us, label %.preheader.us, label %bb.v

.preheader.us:                                    ; preds = %bb.q, %.preheader.us
  %.0.i200.us.us.us.us.us.us.us.us.i.us = phi i32 [ %i.hn, %.preheader.us ], [ 32, %bb.q ] ; 7 uses
  %.not.us.us.us.us.us.us.us.us.i.us = icmp sgt i32 %.0.i200.us.us.us.us.us.us.us.us.i.us, %.3297.us.us.us.us.us.us.us.us.i.us
  %i.hn = shl i32 %.0.i200.us.us.us.us.us.us.us.us.i.us, 1
  br i1 %.not.us.us.us.us.us.us.us.us.i.us, label %bb.r, label %.preheader.us, !llvm.loop !14

bb.r:                                             ; preds = %.preheader.us
  %9 = add nsw i32 %.3297.us.us.us.us.us.us.us.us.i.us, 1
  %i.ho = icmp eq ptr %.3212294.us.us.us.us.us.us.us.us.i.us, null
  br i1 %i.ho, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hp = icmp slt i32 %.3206295.us.us.us.us.us.us.us.us.i.us, %.0.i200.us.us.us.us.us.us.us.us.i.us
  br i1 %i.hp, label %bb.t, label %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.i.us

bb.t:                                             ; preds = %bb.s
  %i.hq = sext i32 %.0.i200.us.us.us.us.us.us.us.us.i.us to i64
  %i.hr = shl nsw i64 %i.hq, 2
  %i.hs = tail call ptr @realloc(ptr noundef nonnull %.3212294.us.us.us.us.us.us.us.us.i.us, i64 noundef %i.hr) #13
  br label %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.i.us

bb.u:                                             ; preds = %bb.r
  %i.ht = sext i32 %.0.i200.us.us.us.us.us.us.us.us.i.us to i64
  %i.hu = shl nsw i64 %i.ht, 2
  %i.hv = tail call noalias ptr @malloc(i64 noundef %i.hu) #12
  br label %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.i.us

_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.i.us: ; preds = %bb.u, %bb.t, %bb.s
  %.6215.us.us.us.us.us.us.us.us.i.us = phi ptr [ %.3212294.us.us.us.us.us.us.us.us.i.us, %bb.s ], [ %i.hs, %bb.t ], [ %i.hv, %bb.u ] ; 2 uses
  %.7.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.3206295.us.us.us.us.us.us.us.us.i.us, %bb.s ], [ %.0.i200.us.us.us.us.us.us.us.us.i.us, %bb.t ], [ %.0.i200.us.us.us.us.us.us.us.us.i.us, %bb.u ]
  %i.hw = zext nneg i32 %i.hd to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !7
  %i.hz = sext i32 %.3297.us.us.us.us.us.us.us.us.i.us to i64
  %i.ia = getelementptr inbounds [4 x i8], ptr %.6215.us.us.us.us.us.us.us.us.i.us, i64 %i.hz
  store i32 %i.hy, ptr %i.ia, align 4, !tbaa !7
  br label %bb.v

bb.v:                                             ; preds = %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.i.us, %bb.q
  %.4213.us.us.us.us.us.us.us.us.i.us = phi ptr [ %.6215.us.us.us.us.us.us.us.us.i.us, %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.i.us ], [ %.3212294.us.us.us.us.us.us.us.us.i.us, %bb.q ] ; 2 uses
  %.4207.us.us.us.us.us.us.us.us.i.us = phi i32 [ %.7.us.us.us.us.us.us.us.us.i.us, %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.i.us ], [ %.3206295.us.us.us.us.us.us.us.us.i.us, %bb.q ] ; 2 uses
  %.4.us.us.us.us.us.us.us.us.i.us = phi i32 [ %9, %_ZL10resize_intPPiS_i.exit.us.us.us.us.us.us.us.us.i.us ], [ %.3297.us.us.us.us.us.us.us.us.i.us, %bb.q ] ; 2 uses
  %i.ib = add i32 %.0160298.us.us.us.us.us.us.us.us.i.us, 1 ; 2 uses
  %exitcond461.not.i.us = icmp eq i32 %i.ib, %i.ay
  br i1 %exitcond461.not.i.us, label %._crit_edge.split.us.us.us.us.us.us.us.i.us, label %.lr.ph299.split.us.us.us.split.us.us.us.us.us.i.us, !llvm.loop !10

._crit_edge.split.us.us.us.us.us.us.us.i.us:      ; preds = %bb.j, %bb.m, %bb.v, %middle.block
  %.us-phi342.us.us.us.us.i.us = phi ptr [ %.2211306.us.us.us.us.us.us.i.us, %middle.block ], [ %.2211306.us.us.us.us.us.us.i.us, %bb.m ], [ %.4213.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2211306.us.us.us.us.us.us.i.us, %bb.j ] ; 2 uses
  %.us-phi343.us.us.us.us.i.us = phi i32 [ %.2205307.us.us.us.us.us.us.i.us, %middle.block ], [ %.2205307.us.us.us.us.us.us.i.us, %bb.m ], [ %.4207.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2205307.us.us.us.us.us.us.i.us, %bb.j ] ; 2 uses
  %.us-phi344.us.us.us.us.i.us = phi i32 [ %.2166308.us.us.us.us.us.us.i.us, %middle.block ], [ %.4168.us.us.us.us382.us.us.us.us.i.us, %bb.m ], [ %.4168.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2166308.us.us.us.us.us.us.i.us, %bb.j ] ; 2 uses
  %.us-phi345.us.us.us.us.i.us = phi i32 [ %.2309.us.us.us.us.us.us.i.us, %middle.block ], [ %.2309.us.us.us.us.us.us.i.us, %bb.m ], [ %.4.us.us.us.us.us.us.us.us.i.us, %bb.v ], [ %.2309.us.us.us.us.us.us.i.us, %bb.j ] ; 2 uses
  %i.ic = add nsw i32 %.0159310.us.us.us.us.us.us.i.us, 1 ; 2 uses
  %i.id = icmp slt i32 %i.ic, %i.ax
  br i1 %i.id, label %.preheader.us.us.us.us.us.us.i.us, label %._crit_edge311.split.us.us.us.us.us.i.us, !llvm.loop !11

._crit_edge311.split.us.us.us.us.us.i.us:         ; preds = %._crit_edge.split.us327.split.us.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.i.us
  %.us-phi338.us.us.us.us.i.us = phi ptr [ %.us-phi342.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.i.us ], [ %.1210346.us.us.us.us.i.us, %._crit_edge.split.us327.split.us.us.us.us.us.i.us ] ; 2 uses
  %.us-phi339.us.us.us.us.i.us = phi i32 [ %.us-phi343.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.i.us ], [ %.1204347.us.us.us.us.i.us, %._crit_edge.split.us327.split.us.us.us.us.us.i.us ] ; 2 uses
  %.us-phi340.us.us.us.us.i.us = phi i32 [ %.us-phi344.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.i.us ], [ %.us-phi.us.us.us.us.i.us, %._crit_edge.split.us327.split.us.us.us.us.us.i.us ] ; 2 uses
  %.us-phi341.us.us.us.us.i.us = phi i32 [ %.us-phi345.us.us.us.us.i.us, %._crit_edge.split.us.us.us.us.us.us.us.i.us ], [ %.1163349.us.us.us.us.i.us, %._crit_edge.split.us327.split.us.us.us.us.us.i.us ] ; 2 uses
  %i.ie = add nsw i32 %.0350.us.us.us.us.i.us, 1  ; 2 uses
  %i.if = icmp slt i32 %i.ie, %i.av
  br i1 %i.if, label %.preheader276.us.us.us.us.i.us, label %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us, !llvm.loop !15

_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us: ; preds = %._crit_edge311.split.us.us.us.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us, %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph417.split.us.split.us.i.us
  %.5214.us.us.i.us = phi ptr [ %.0209412.us.us.i.us, %.lr.ph417.split.us.split.us.i.us ], [ %.0209412.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us ], [ %.0209412.us.us.i.us, %bb.e ], [ %.0209412.us.us.i.us, %bb.d ], [ %.0209412.us.us.i.us, %bb.c ], [ %.0209412.us.us.i.us, %bb.b ], [ %.us-phi338.us.us.us.us.i.us, %._crit_edge311.split.us.us.us.us.us.i.us ] ; 2 uses
  %.5208.us.us.i.us = phi i32 [ %.0203413.us.us.i.us, %.lr.ph417.split.us.split.us.i.us ], [ %.0203413.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us ], [ %.0203413.us.us.i.us, %bb.e ], [ %.0203413.us.us.i.us, %bb.d ], [ %.0203413.us.us.i.us, %bb.c ], [ %.0203413.us.us.i.us, %bb.b ], [ %.us-phi339.us.us.us.us.i.us, %._crit_edge311.split.us.us.us.us.us.i.us ]
  %.5169.us.us.i.us = phi i32 [ %.0164414.us.us.i.us, %.lr.ph417.split.us.split.us.i.us ], [ %.0164414.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us ], [ %.0164414.us.us.i.us, %bb.e ], [ %.0164414.us.us.i.us, %bb.d ], [ %.0164414.us.us.i.us, %bb.c ], [ %.0164414.us.us.i.us, %bb.b ], [ %.us-phi340.us.us.us.us.i.us, %._crit_edge311.split.us.us.us.us.us.i.us ] ; 2 uses
  %.5.us.us.i.us = phi i32 [ %.0162415.us.us.i.us, %.lr.ph417.split.us.split.us.i.us ], [ %.0162415.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.us.us.i.us ], [ %.0162415.us.us.i.us, %bb.e ], [ %.0162415.us.us.i.us, %bb.d ], [ %.0162415.us.us.i.us, %bb.c ], [ %.0162415.us.us.i.us, %bb.b ], [ %.us-phi341.us.us.us.us.i.us, %._crit_edge311.split.us.us.us.us.us.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond463.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond463.not.i.us, label %_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit, label %.lr.ph417.split.us.split.us.i.us, !llvm.loop !16

_ZL19box_map_local_entryRK3Boxiiii.exit.thread.i: ; preds = %.preheader.us.us359.us.us.us.i.us, %.lr.ph299.split.us.us.us.split.us371.us.us.us.i.us, %vector.body108, %.lr.ph299.split.us315.split.us.split.us.us.us.us.us.i.us, %_ZL19box_map_local_entryRK3Boxiiii.exit.us322.us.us367.us.us.us.i.us, %.lr.ph299.split.us315.split.us.split.us365.us.us.us.i.us, %vector.body, %.lr.ph299.split.us.us.us.split.us371.split.us.split.us.us.us.us.i.us, %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us378.us.us400.us.us.i.us, %.lr.ph299.split.us.us.us.split.us371.split.us.split.us398.us.us.i.us, %_ZL19box_map_local_entryRK3Boxiiii.exit.us.us.us.us.us.us.us.us.i.us, %bb.n, %.lr.ph299.split.us.us.us.split.us.us.us.us.us.i.us
  tail call void @abort() #14
  unreachable

._crit_edge.sink.split.i:                         ; preds = %.lr.ph417.split.us.i, %.lr.ph417.split.preheader.i
  %.sink502.i = phi i64 [ %i.ba, %.lr.ph417.split.preheader.i ], [ %wide.trip.count.i, %.lr.ph417.split.us.i ]
  %i.ig = shl nuw nsw i64 %.sink502.i, 2          ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ai, i8 0, i64 %i.ig, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aj, i8 0, i64 %i.ig, i1 false), !tbaa !7
  br label %_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit

_ZL18box_partition_mapsiiPK3BoxiPPiS3_S3_S3_.exit: ; preds = %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us, %.lr.ph417.split.us.split.us.i.preheader42, %.preheader277.i, %._crit_edge.sink.split.i
  %.0209.lcssa.i = phi ptr [ null, %.preheader277.i ], [ null, %._crit_edge.sink.split.i ], [ null, %.lr.ph417.split.us.split.us.i.preheader42 ], [ %.5214.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ]
  %.0164.lcssa.i = phi i32 [ 0, %.preheader277.i ], [ 0, %._crit_edge.sink.split.i ], [ 0, %.lr.ph417.split.us.split.us.i.preheader42 ], [ %.5169.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ]
  %.0162.lcssa.i = phi i32 [ 0, %.preheader277.i ], [ 0, %._crit_edge.sink.split.i ], [ 0, %.lr.ph417.split.us.split.us.i.preheader42 ], [ %.5.us.us.i.us, %_ZL12box_disjointRK3BoxS1_.exit.thread.us.us.i.us ]
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.a
  store i32 %.0164.lcssa.i, ptr %i.ih, align 4, !tbaa !7
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.a
  store i32 %.0162.lcssa.i, ptr %i.ii, align 4, !tbaa !7
  store ptr %i.ae, ptr %5, align 8, !tbaa !24
  store ptr %i.ai, ptr %6, align 8, !tbaa !24
  store ptr %i.aj, ptr %7, align 8, !tbaa !24
  store ptr %.0209.lcssa.i, ptr %8, align 8, !tbaa !24
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(1) }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = distinct !{!8, !20, !21, !22}
!9 = distinct !{!9, !20, !22, !21}
!10 = distinct !{!10, !20}
!11 = distinct !{!11, !20}
!12 = distinct !{!12, !20, !21, !22}
!13 = distinct !{!13, !20, !22, !21}
!14 = distinct !{!14, !20}
!15 = distinct !{!15, !20}
!16 = distinct !{!16, !20}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!"p1 _ZTS3Box", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"llvm.loop.isvectorized", i32 1}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = !{!"p1 int", !17, i64 0}
!24 = !{!23, !23, i64 0}
end_hunk_0
