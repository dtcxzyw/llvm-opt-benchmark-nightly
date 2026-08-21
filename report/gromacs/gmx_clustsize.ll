Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_clustsize?download=true
inline.NumInlined: 320
inline.NumDeleted: 148
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z13gmx_clustsizeiPPc:bb.a
          to label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader.i unwind label %bb.cm ; 6 uses

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader.i: ; preds = %_ZL13gmx_snew_implIiEvPKcS1_iRPT_m.exit467.i
  %i.mj = load i32, ptr %i.o, align 4, !tbaa !9   ; 4 uses
  %i.mk = icmp sgt i32 %i.mj, 0
  br i1 %i.mk, label %iter.check, label %.preheader782.i

iter.check:                                       ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.mj to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.mj, 4
  br i1 %min.iters.check, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check360 = icmp ult i32 %i.mj, 32
  br i1 %min.iters.check360, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ml = and i64 %wide.trip.count.i, 28
  %n.vec = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.mm = trunc <8 x i64> %vec.ind to <8 x i32>
  %i.mn = add <8 x i32> %i.mm, splat (i32 1)
  %i.mo = trunc <8 x i64> %vec.ind to <8 x i32>
  %i.mp = add <8 x i32> %i.mo, splat (i32 9)
  %i.mq = trunc <8 x i64> %vec.ind to <8 x i32>
  %i.mr = add <8 x i32> %i.mq, splat (i32 17)
  %i.ms = trunc <8 x i64> %vec.ind to <8 x i32>
  %i.mt = add <8 x i32> %i.ms, splat (i32 25)
  %i.mu = uitofp nneg <8 x i32> %i.mn to <8 x float>
  %i.mv = uitofp nneg <8 x i32> %i.mp to <8 x float>
  %i.mw = uitofp nneg <8 x i32> %i.mr to <8 x float>
  %i.mx = uitofp nneg <8 x i32> %i.mt to <8 x float>
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %index ; 4 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 32
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 64
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 96
  store <8 x float> %i.mu, ptr %i.my, align 4, !tbaa !10
  store <8 x float> %i.mv, ptr %i.mz, align 4, !tbaa !10
  store <8 x float> %i.mw, ptr %i.na, align 4, !tbaa !10
  store <8 x float> %i.mx, ptr %i.nb, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.nc = icmp eq i64 %index.next, %n.vec
  br i1 %i.nc, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.preheader782.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ml, 0
  br i1 %min.epilog.iters.check, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i.preheader, label %vec.epilog.ph, !prof !62

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec361 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index362 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next364, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind363 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next365, %vec.epilog.vector.body ] ; 2 uses
  %i.nd = trunc <4 x i64> %vec.ind363 to <4 x i32>
  %i.ne = add <4 x i32> %i.nd, splat (i32 1)
  %i.nf = uitofp nneg <4 x i32> %i.ne to <4 x float>
  %i.ng = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %index362
  store <4 x float> %i.nf, ptr %i.ng, align 4, !tbaa !10
  %index.next364 = add nuw i64 %index362, 4       ; 2 uses
  %vec.ind.next365 = add nuw nsw <4 x i64> %vec.ind363, splat (i64 4)
  %i.nh = icmp eq i64 %index.next364, %n.vec361
  br i1 %i.nh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !63

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n366 = icmp eq i64 %n.vec361, %wide.trip.count.i
  br i1 %cmp.n366, label %.preheader782.i, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i.preheader

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i.preheader: ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv971.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec361, %vec.epilog.middle.block ]
  br label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i

.preheader782.i:                                  ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i, %middle.block, %vec.epilog.middle.block, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.preheader.i
  %i.ni = icmp eq i32 %i.ey, 0
  %i.nj = icmp sgt i32 %i.ey, 0
  %i.nk = getelementptr inbounds nuw i8, ptr %3, i64 116
  %i.nl = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.nm = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  %i.nn = ptrtoint ptr %.sroa.17.0.i to i64
  %i.no = ptrtoint ptr %.sroa.0649.1.i to i64     ; 2 uses
  %i.np = sub i64 %i.nn, %i.no
  %.fr935.i = freeze i64 %i.np
  %i.nq = lshr i64 %.fr935.i, 2
  %i.nr = trunc i64 %i.nq to i32
  %i.ns = icmp sgt i32 %i.nr, 1                   ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.nu = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.nv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.nw = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.nx = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ny = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.nz = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.oa = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ob = getelementptr inbounds nuw i8, ptr %4, i64 736
  %i.oc = getelementptr inbounds nuw i8, ptr %4, i64 112
  br label %bb.cw

_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i:        ; preds = %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i.preheader, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i
  %indvars.iv971.i = phi i64 [ %indvars.iv.next972.i, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i ], [ %indvars.iv971.i.ph, %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i.preheader ] ; 2 uses
  %indvars.iv.next972.i = add nuw nsw i64 %indvars.iv971.i, 1 ; 3 uses
  %i.od = trunc nuw nsw i64 %indvars.iv.next972.i to i32
  %i.oe = uitofp nneg i32 %i.od to float
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.mi, i64 %indvars.iv971.i
  store float %i.oe, ptr %i.of, align 4, !tbaa !10
  %exitcond.not.i = icmp eq i64 %indvars.iv.next972.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader782.i, label %_ZL13gmx_snew_implIfEvPKcS1_iRPT_m.exit.i, !llvm.loop !64

bb.cw:                                            ; preds = %bb.fd, %.preheader782.i
  %.0750.i = phi i32 [ %.3753.i, %bb.fd ], [ 0, %.preheader782.i ] ; 6 uses
  %.0746.i = phi i32 [ %.3749.i, %bb.fd ], [ 0, %.preheader782.i ] ; 5 uses
  %.0742.i = phi ptr [ %.1743.i, %bb.fd ], [ null, %.preheader782.i ] ; 3 uses
  %.0741.i = phi ptr [ %.1.i, %bb.fd ], [ null, %.preheader782.i ] ; 3 uses
  %.0321.i = phi i1 [ %.1322.i, %bb.fd ], [ true, %.preheader782.i ] ; 4 uses
  %.0290.i = phi i32 [ %i.aap, %bb.fd ], [ 0, %.preheader782.i ] ; 2 uses
  %.0286.i = phi i32 [ %.1287.i, %bb.fd ], [ 0, %.preheader782.i ] ; 4 uses
  %.0282.i = phi i32 [ %.3285.i, %bb.fd ], [ 1, %.preheader782.i ] ; 2 uses
  %.0278.i = phi i32 [ %.3281.i, %bb.fd ], [ -1, %.preheader782.i ] ; 2 uses
  %.0272.i = phi i32 [ %.2274.i, %bb.fd ], [ 0, %.preheader782.i ] ; 5 uses
  %.0269.i = phi float [ %.2271.i, %bb.fd ], [ undef, %.preheader782.i ] ; 2 uses
  br i1 %i.ni, label %bb.cz, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  br i1 %i.nj, label %bb.cy, label %bb.eq

bb.cy:                                            ; preds = %bb.cx
  %i.og = urem i32 %.0290.i, %i.ey
  %i.oh = icmp eq i32 %i.og, 0
  br i1 %i.oh, label %bb.cz, label %bb.eq

bb.cz:                                            ; preds = %bb.cy, %bb.cw
  br i1 %i.ew, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  invoke void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %2, i32 noundef %.0320.i, ptr noundef nonnull %i.nk)
          to label %bb.db unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph932.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %bb.ds
  %lpad.loopexit778.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.fc, %_ZL15gmx_srenew_implIPfEvPKcS2_iRPT_m.exit.i, %bb.eg, %._crit_edge.i, %bb.da
  %lpad.loopexit783.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit610.i, %_ZL14gmx_sfree_implIiEvPKcS1_iPT_.exit.i, %_ZL14gmx_sfree_implIPfEvPKcS2_iPT_.exit.i, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit595._crit_edge.i, %_ZL14gmx_sfree_implIfEvPKcS1_iPT_.exit.i, %bb.gv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit592.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit556.i, %._crit_edge898.i, %._crit_edge885.i, %bb.fj, %bb.fi, %bb.fh, %bb.fg, %bb.ff, %bb.fe
  %lpad.loopexit.split-lp784.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.db:                                            ; preds = %bb.da, %bb.cz
  %i.oi = load i32, ptr %i.o, align 4, !tbaa !9
  %i.oj = icmp sgt i32 %i.oi, 0
  br i1 %i.oj, label %.lr.ph803.i, label %._crit_edge.i

.preheader781.i:                                  ; preds = %.lr.ph803.i
  %i.ok = icmp sgt i32 %i.oo, 0
  br i1 %i.ok, label %.lr.ph857.i, label %._crit_edge.i

.lr.ph803.i:                                      ; preds = %bb.db, %.lr.ph803.i
  %indvars.iv974.i = phi i64 [ %indvars.iv.next975.i, %.lr.ph803.i ], [ 0, %bb.db ] ; 4 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv974.i
  %i.om = trunc nuw nsw i64 %indvars.iv974.i to i32
  store i32 %i.om, ptr %i.ol, align 4, !tbaa !9
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv974.i
  store i32 1, ptr %i.on, align 4, !tbaa !9
  %indvars.iv.next975.i = add nuw nsw i64 %indvars.iv974.i, 1 ; 2 uses
  %i.oo = load i32, ptr %i.o, align 4, !tbaa !9   ; 3 uses
  %i.op = sext i32 %i.oo to i64
  %i.oq = icmp slt i64 %indvars.iv.next975.i, %i.op
  br i1 %i.oq, label %.lr.ph803.i, label %.preheader781.i, !llvm.loop !65

.loopexit777.i:                                   ; preds = %.critedge.thread.i, %.critedge.thread.us.i, %.critedge.thread.us.us.i, %.lr.ph857.i
  %i.or = phi i32 [ %i.ou, %.critedge.thread.us.i ], [ %i.qh, %.critedge.thread.us.us.i ], [ %i.ou, %.lr.ph857.i ], [ %i.ut, %.critedge.thread.i ] ; 2 uses
  %i.os = sext i32 %i.or to i64
  %i.ot = icmp slt i64 %indvars.iv.next1014.i, %i.os
  %indvars.iv.next981.i = add nuw nsw i64 %indvars.iv980.i, 1
  br i1 %i.ot, label %.lr.ph857.i, label %._crit_edge.i, !llvm.loop !66

.lr.ph857.i:                                      ; preds = %.preheader781.i, %.loopexit777.i
  %i.ou = phi i32 [ %i.or, %.loopexit777.i ], [ %i.oo, %.preheader781.i ] ; 7 uses
  %indvars.iv1013.i = phi i64 [ %indvars.iv.next1014.i, %.loopexit777.i ], [ 0, %.preheader781.i ] ; 3 uses
  %indvars.iv980.i = phi i64 [ %indvars.iv.next981.i, %.loopexit777.i ], [ 1, %.preheader781.i ] ; 4 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv1013.i
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !9  ; 6 uses
  %indvars.iv.next1014.i = add nuw nsw i64 %indvars.iv1013.i, 1 ; 3 uses
  %i.ox = sext i32 %i.ou to i64                   ; 2 uses
  %i.oy = icmp slt i64 %indvars.iv.next1014.i, %i.ox
  br i1 %i.oy, label %.lr.ph825.i, label %.loopexit777.i

.lr.ph825.i:                                      ; preds = %.lr.ph857.i
  %i.oz = load ptr, ptr %i.n, align 8, !tbaa !38
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %indvars.iv1013.i
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !9
  %i.pc = sext i32 %i.pb to i64                   ; 2 uses
  %i.pd = getelementptr inbounds [12 x i8], ptr %i.ji, i64 %i.pc ; 3 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  %i.pf = getelementptr [4 x i8], ptr %.sroa.0649.1.i, i64 %i.pc ; 3 uses
  %i.pg = getelementptr i8, ptr %i.pf, i64 4      ; 2 uses
  %i.ph = sext i32 %i.ow to i64
  %i.pi = getelementptr inbounds [4 x i8], ptr %i.me, i64 %i.ph ; 4 uses
  br i1 %i.eu, label %.lr.ph825.split.us.i, label %.lr.ph825.split.i

.lr.ph825.split.us.i:                             ; preds = %.lr.ph825.i
  br i1 %i.ns, label %.lr.ph825.split.us.split.us.i, label %.lr.ph825.split.us.split.i

.lr.ph825.split.us.split.us.i:                    ; preds = %.lr.ph825.split.us.i, %.critedge.thread.us.us.i
  %i.pj = phi i32 [ %i.qh, %.critedge.thread.us.us.i ], [ %i.ou, %.lr.ph825.split.us.i ] ; 5 uses
  %i.pk = phi i32 [ %i.qi, %.critedge.thread.us.us.i ], [ %i.ou, %.lr.ph825.split.us.i ] ; 5 uses
  %indvars.iv1010.i = phi i64 [ %indvars.iv.next1011.i, %.critedge.thread.us.us.i ], [ %indvars.iv980.i, %.lr.ph825.split.us.i ] ; 3 uses
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv1010.i
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !9  ; 4 uses
  %.not378.us.us.i = icmp eq i32 %i.ow, %i.pm
  br i1 %.not378.us.us.i, label %.critedge.thread.us.us.i, label %bb.dc

bb.dc:                                            ; preds = %.lr.ph825.split.us.split.us.i
  %i.pn = load i32, ptr %i.pf, align 4, !tbaa !9  ; 3 uses
  %i.po = load i32, ptr %i.pg, align 4, !tbaa !9  ; 4 uses
  %.not.i.i.us.us.i = icmp sgt i32 %i.pn, %i.po
  br i1 %.not.i.i.us.us.i, label %.split838.us.i, label %.preheader775.us.us.i

.preheader771.split.split.us.us.us.i:             ; preds = %.lr.ph.split, %.critedge2.split.us.us.i.loopexit
  %indvars.iv997.i63 = phi i64 [ %indvars.iv.next998.i, %.critedge2.split.us.us.i.loopexit ], [ %i.qr, %.lr.ph.split ] ; 2 uses
  %i.pp = getelementptr inbounds [12 x i8], ptr %i.ji, i64 %indvars.iv997.i63 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  br label %.lr.ph813.us.us.i

bb.dd:                                            ; preds = %.lr.ph823.us.us.i, %.critedge765.us.us.i
  %i.pr = phi i32 [ %i.rj, %.lr.ph823.us.us.i ], [ %i.qc, %.critedge765.us.us.i ]
  %i.ps = phi i32 [ %i.rk, %.lr.ph823.us.us.i ], [ %i.qd, %.critedge765.us.us.i ]
  %i.pt = phi i32 [ %i.rk, %.lr.ph823.us.us.i ], [ %i.qe, %.critedge765.us.us.i ]
  %indvars.iv1007.i = phi i64 [ 0, %.lr.ph823.us.us.i ], [ %indvars.iv.next1008.i, %.critedge765.us.us.i ] ; 2 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv1007.i ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !9
  %i.pw = icmp eq i32 %i.pv, %i.pm
  br i1 %i.pw, label %bb.de, label %.critedge765.us.us.i

bb.de:                                            ; preds = %bb.dd
  %i.px = load i32, ptr %i.si, align 4, !tbaa !9  ; 2 uses
  %i.py = icmp slt i32 %i.px, 1
  br i1 %i.py, label %.split840.us.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.pz = add nsw i32 %i.px, -1
  store i32 %i.pz, ptr %i.si, align 4, !tbaa !9
  store i32 %i.ow, ptr %i.pu, align 4, !tbaa !9
  %i.qa = load i32, ptr %i.pi, align 4, !tbaa !9
  %i.qb = add nsw i32 %i.qa, 1
  store i32 %i.qb, ptr %i.pi, align 4, !tbaa !9
  %.pre1086.i = load i32, ptr %i.o, align 4, !tbaa !9 ; 3 uses
  br label %.critedge765.us.us.i

.critedge765.us.us.i:                             ; preds = %bb.df, %bb.dd
  %i.qc = phi i32 [ %.pre1086.i, %bb.df ], [ %i.pr, %bb.dd ] ; 2 uses
  %i.qd = phi i32 [ %.pre1086.i, %bb.df ], [ %i.ps, %bb.dd ] ; 2 uses
  %i.qe = phi i32 [ %.pre1086.i, %bb.df ], [ %i.pt, %bb.dd ] ; 2 uses
  %indvars.iv.next1008.i = add nuw nsw i64 %indvars.iv1007.i, 1 ; 2 uses
  %i.qf = sext i32 %i.qe to i64
  %i.qg = icmp slt i64 %indvars.iv.next1008.i, %i.qf
  br i1 %i.qg, label %bb.dd, label %.critedge.thread.us.us.i, !llvm.loop !67

.critedge.thread.us.us.loopexit941.i:             ; preds = %.lr.ph66
  %.pre1087.i = load i32, ptr %i.o, align 4, !tbaa !9 ; 2 uses
  br label %.critedge.thread.us.us.i

.critedge.thread.us.us.i:                         ; preds = %.critedge2.split.us.us.i.loopexit, %.critedge765.us.us.i, %.preheader775.split.us834.split.us.preheader.i, %.lr.ph.split, %.critedge765.preheader.loopexit.us.us.i, %.critedge.thread.us.us.loopexit941.i, %.lr.ph825.split.us.split.us.i
  %i.qh = phi i32 [ %i.pj, %.preheader775.split.us834.split.us.preheader.i ], [ %.pre1087.i, %.critedge.thread.us.us.loopexit941.i ], [ %i.pj, %.lr.ph825.split.us.split.us.i ], [ %i.rj, %.critedge765.preheader.loopexit.us.us.i ], [ %i.pj, %.lr.ph.split ], [ %i.qc, %.critedge765.us.us.i ], [ %i.pj, %.critedge2.split.us.us.i.loopexit ] ; 2 uses
  %i.qi = phi i32 [ %i.pk, %.preheader775.split.us834.split.us.preheader.i ], [ %.pre1087.i, %.critedge.thread.us.us.loopexit941.i ], [ %i.pk, %.lr.ph825.split.us.split.us.i ], [ %i.rk, %.critedge765.preheader.loopexit.us.us.i ], [ %i.pk, %.lr.ph.split ], [ %i.qd, %.critedge765.us.us.i ], [ %i.pk, %.critedge2.split.us.us.i.loopexit ] ; 2 uses
  %indvars.iv.next1011.i = add nuw nsw i64 %indvars.iv1010.i, 1 ; 2 uses
  %i.qj = trunc nuw i64 %indvars.iv.next1011.i to i32
  %i.qk = icmp sgt i32 %i.qi, %i.qj
  br i1 %i.qk, label %.lr.ph825.split.us.split.us.i, label %.loopexit777.i, !llvm.loop !68

.preheader775.us.us.i:                            ; preds = %bb.dc
  %i.ql = load ptr, ptr %i.n, align 8, !tbaa !38
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.ql, i64 %indvars.iv1010.i
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !9
  %i.qo = sext i32 %i.qn to i64
  %i.qp = getelementptr [4 x i8], ptr %.sroa.0649.1.i, i64 %i.qo ; 4 uses
  %i.qq = getelementptr i8, ptr %i.qp, i64 4      ; 3 uses
  %i.qr = sext i32 %i.pn to i64                   ; 2 uses
  br i1 %i.ew, label %.lr.ph66, label %.preheader775.split.us834.split.us.preheader.i

.critedge2.split.us.us.i.loopexit:                ; preds = %bb.dg
  %indvars.iv.next998.i = add nsw i64 %indvars.iv997.i63, 1 ; 2 uses
  %exitcond1001.not.i = icmp eq i64 %indvars.iv.next998.i, %wide.trip.count1000.i
  br i1 %exitcond1001.not.i, label %.critedge.thread.us.us.i, label %.preheader771.split.split.us.us.us.i, !llvm.loop !69

bb.dg:                                            ; preds = %.lr.ph813.us.us.i
  %indvars.iv.next989.i = add nsw i64 %indvars.iv988.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next989.i to i32
  %exitcond991.not.i = icmp eq i32 %i.rg, %lftr.wideiv.i
  br i1 %exitcond991.not.i, label %.critedge2.split.us.us.i.loopexit, label %.lr.ph813.us.us.i, !llvm.loop !70

.lr.ph813.us.us.i:                                ; preds = %bb.dg, %.preheader771.split.split.us.us.us.i
  %indvars.iv988.i = phi i64 [ %i.rh, %.preheader771.split.split.us.us.us.i ], [ %indvars.iv.next989.i, %bb.dg ] ; 2 uses
  %i.qs = getelementptr inbounds [12 x i8], ptr %i.ji, i64 %indvars.iv988.i ; 2 uses
  %i.qt = load float, ptr %i.pq, align 4, !tbaa !10
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !10
  %i.qw = fsub float %i.qt, %i.qv                 ; 3 uses
  %i.qx = load <2 x float>, ptr %i.pp, align 4, !tbaa !10
  %i.qy = load <2 x float>, ptr %i.qs, align 4, !tbaa !10
  %i.qz = fsub <2 x float> %i.qx, %i.qy           ; 4 uses
  store <2 x float> %i.qz, ptr %i.r, align 8, !tbaa !10
  store float %i.qw, ptr %i.nm, align 8, !tbaa !10
  %foldExtExtBinop = fmul <2 x float> %i.qz, %i.qz
  %i.ra = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.rb = extractelement <2 x float> %i.qz, i64 0 ; 2 uses
  %i.rc = call float @llvm.fmuladd.f32(float %i.rb, float %i.rb, float %i.ra)
  %i.rd = call noundef float @llvm.fmuladd.f32(float %i.qw, float %i.qw, float %i.rc)
  %i.re = fcmp olt float %i.rd, %i.mf
  br i1 %i.re, label %.critedge765.preheader.loopexit.us.us.i, label %bb.dg, !llvm.loop !70

.preheader775.split.us834.split.us.preheader.i:   ; preds = %.preheader775.us.us.i
  %wide.trip.count1000.i = sext i32 %i.po to i64
  %exitcond1001.not.i62 = icmp eq i32 %i.pn, %i.po
  br i1 %exitcond1001.not.i62, label %.critedge.thread.us.us.i, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader775.split.us834.split.us.preheader.i
  %i.rf = load i32, ptr %i.qp, align 4, !tbaa !9  ; 3 uses
  %i.rg = load i32, ptr %i.qq, align 4, !tbaa !9  ; 3 uses
  %.not.i.i478.us828.us.i = icmp sgt i32 %i.rf, %i.rg
  %i.rh = sext i32 %i.rf to i64
  br i1 %.not.i.i478.us828.us.i, label %.split820.us.i, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ri = icmp slt i32 %i.rf, %i.rg
  br i1 %i.ri, label %.preheader771.split.split.us.us.us.i, label %.critedge.thread.us.us.i

.critedge765.preheader.loopexit.us.us.loopexit.i: ; preds = %bb.dl
  %.pre1085.i = load i32, ptr %i.o, align 4, !tbaa !9 ; 2 uses
  br label %.critedge765.preheader.loopexit.us.us.i

.critedge765.preheader.loopexit.us.us.i:          ; preds = %.lr.ph813.us.us.i, %.critedge765.preheader.loopexit.us.us.loopexit.i
  %i.rj = phi i32 [ %.pre1085.i, %.critedge765.preheader.loopexit.us.us.loopexit.i ], [ %i.pj, %.lr.ph813.us.us.i ] ; 2 uses
  %i.rk = phi i32 [ %.pre1085.i, %.critedge765.preheader.loopexit.us.us.loopexit.i ], [ %i.pk, %.lr.ph813.us.us.i ] ; 4 uses
  %i.rl = icmp sgt i32 %i.rk, 0
  br i1 %i.rl, label %.lr.ph823.us.us.i, label %.critedge.thread.us.us.i

.lr.ph66:                                         ; preds = %.preheader775.us.us.i, %.critedge2.split.us.us.us.us.i
  %i.rm = phi i32 [ %i.sg, %.critedge2.split.us.us.us.us.i ], [ %i.po, %.preheader775.us.us.i ]
  %indvars.iv1004.i65 = phi i64 [ %indvars.iv.next1005.i, %.critedge2.split.us.us.us.us.i ], [ %i.qr, %.preheader775.us.us.i ] ; 3 uses
  %i.rn = sext i32 %i.rm to i64
  %i.ro = icmp slt i64 %indvars.iv1004.i65, %i.rn
  br i1 %i.ro, label %bb.dh, label %.critedge.thread.us.us.loopexit941.i

bb.dh:                                            ; preds = %.lr.ph66
  %i.rp = load i32, ptr %i.qp, align 4, !tbaa !9  ; 2 uses
  %i.rq = load i32, ptr %i.qq, align 4, !tbaa !9
  %.not.i.i478.us.us.us.i = icmp sgt i32 %i.rp, %i.rq
  br i1 %.not.i.i478.us.us.us.i, label %.split820.us.i, label %.preheader771.us.us.us.i

.preheader771.us.us.us.i:                         ; preds = %bb.dh
  %i.rr = getelementptr inbounds [12 x i8], ptr %i.ji, i64 %indvars.iv1004.i65
  %i.rs = sext i32 %i.rp to i64
  br label %bb.di

bb.di:                                            ; preds = %bb.dl, %.preheader771.us.us.us.i
  %indvars.iv1002.i = phi i64 [ %indvars.iv.next1003.i, %bb.dl ], [ %i.rs, %.preheader771.us.us.us.i ] ; 3 uses
  %i.rt = load i32, ptr %i.qp, align 4, !tbaa !9
  %i.ru = load i32, ptr %i.qq, align 4, !tbaa !9  ; 2 uses
  %.not.i.i485.us.us.us.us.i = icmp sgt i32 %i.rt, %i.ru
  br i1 %.not.i.i485.us.us.us.us.i, label %.split.us.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.rv = sext i32 %i.ru to i64
  %i.rw = icmp slt i64 %indvars.iv1002.i, %i.rv
  br i1 %i.rw, label %bb.dk, label %.critedge2.split.us.us.us.us.i

bb.dk:                                            ; preds = %bb.dj
  %i.rx = getelementptr inbounds [12 x i8], ptr %i.ji, i64 %indvars.iv1002.i
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %2, ptr noundef %i.rr, ptr noundef %i.rx, ptr noundef nonnull %i.r)
          to label %bb.dl unwind label %.loopexit.split-lp.thread.i

bb.dl:                                            ; preds = %bb.dk
  %i.ry = load float, ptr %i.r, align 8, !tbaa !10 ; 2 uses
  %i.rz = load float, ptr %i.nl, align 4, !tbaa !10 ; 2 uses
  %i.sa = fmul float %i.rz, %i.rz
  %i.sb = call float @llvm.fmuladd.f32(float %i.ry, float %i.ry, float %i.sa)
  %i.sc = load float, ptr %i.nm, align 8, !tbaa !10 ; 2 uses
  %i.sd = call noundef float @llvm.fmuladd.f32(float %i.sc, float %i.sc, float %i.sb)
  %i.se = fcmp olt float %i.sd, %i.mf
  %indvars.iv.next1003.i = add nsw i64 %indvars.iv1002.i, 1
  br i1 %i.se, label %.critedge765.preheader.loopexit.us.us.loopexit.i, label %bb.di, !llvm.loop !70

.critedge2.split.us.us.us.us.i:                   ; preds = %bb.dj
  %indvars.iv.next1005.i = add nsw i64 %indvars.iv1004.i65, 1
  %i.sf = load i32, ptr %i.pf, align 4, !tbaa !9
  %i.sg = load i32, ptr %i.pg, align 4, !tbaa !9  ; 2 uses
  %.not.i.i471.us.us.us.i = icmp sgt i32 %i.sf, %i.sg
  br i1 %.not.i.i471.us.us.us.i, label %.split818.us.i, label %.lr.ph66

.lr.ph823.us.us.i:                                ; preds = %.critedge765.preheader.loopexit.us.us.i
  %i.sh = sext i32 %i.pm to i64
  %i.si = getelementptr inbounds [4 x i8], ptr %i.me, i64 %i.sh ; 3 uses
  br label %bb.dd

.loopexit.split-lp.thread.i:                      ; preds = %bb.dk
  %lpad.loopexit772.us.us.us.us.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

.lr.ph825.split.us.split.i:                       ; preds = %.lr.ph825.split.us.i, %.critedge.thread.us.i
  %indvars.iv985.i = phi i64 [ %indvars.iv.next986.i, %.critedge.thread.us.i ], [ %indvars.iv980.i, %.lr.ph825.split.us.i ] ; 2 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv985.i
  %i.sk = load i32, ptr %i.sj, align 4, !tbaa !9
  %.not378.us.i = icmp eq i32 %i.ow, %i.sk
  br i1 %.not378.us.i, label %.critedge.thread.us.i, label %.split836.us.i

.split836.us.i:                                   ; preds = %.lr.ph825.split.us.split.i
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZL10clust_sizePKcS0_S0_S0_S0_S0_S0_S0_S0_S0_bbS0_fii5t_rgbS1_iPK16gmx_output_env_tENK3$_0clEv", ptr noundef nonnull @.str.48, i32 noundef 233) #16
          to label %.noexc469.i unwind label %bb.dn

.critedge.thread.us.i:                            ; preds = %.lr.ph825.split.us.split.i
  %indvars.iv.next986.i = add nuw nsw i64 %indvars.iv985.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next986.i, %i.ox
  br i1 %exitcond.not, label %.loopexit777.i, label %.lr.ph825.split.us.split.i, !llvm.loop !68

.lr.ph825.split.i:                                ; preds = %.lr.ph825.i, %.critedge.thread.i
  %i.sl = phi i32 [ %i.ut, %.critedge.thread.i ], [ %i.ou, %.lr.ph825.i ] ; 2 uses
  %i.sm = phi i32 [ %i.uu, %.critedge.thread.i ], [ %i.ou, %.lr.ph825.i ] ; 2 uses
  %indvars.iv982.i = phi i64 [ %indvars.iv.next983.i, %.critedge.thread.i ], [ %indvars.iv980.i, %.lr.ph825.i ] ; 3 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv982.i
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !9  ; 4 uses
  %.not378.i = icmp eq i32 %i.ow, %i.so
  br i1 %.not378.i, label %.critedge.thread.i, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph825.split.i
  %i.sp = load ptr, ptr %i.n, align 8, !tbaa !38
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %indvars.iv982.i
  %i.sr = load i32, ptr %i.sq, align 4, !tbaa !9
  %i.ss = sext i32 %i.sr to i64
  %i.st = getelementptr inbounds [12 x i8], ptr %i.ji, i64 %i.ss ; 3 uses
  br i1 %i.ew, label %bb.ds, label %bb.dt

.noexc469.i:                                      ; preds = %.split836.us.i
  unreachable

.split838.us.i:                                   ; preds = %bb.dc
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.95, i32 noundef 111) #16
          to label %.noexc470.i unwind label %bb.do

.noexc470.i:                                      ; preds = %.split838.us.i
  unreachable

.split818.us.i:                                   ; preds = %.critedge2.split.us.us.us.us.i
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.95, i32 noundef 111) #16
          to label %.noexc476.i unwind label %bb.dp

.noexc476.i:                                      ; preds = %.split818.us.i
  unreachable

.split820.us.i:                                   ; preds = %.lr.ph, %bb.dh
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.95, i32 noundef 111) #16
          to label %.noexc483.i unwind label %bb.dq

.noexc483.i:                                      ; preds = %.split820.us.i
  unreachable

.split.us.i:                                      ; preds = %bb.di
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.95, i32 noundef 111) #16
          to label %.noexc490.i unwind label %bb.dr

.noexc490.i:                                      ; preds = %.split.us.i
  unreachable

bb.dn:                                            ; preds = %.split836.us.i
  %i.su = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.do:                                            ; preds = %.split838.us.i
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.dp:                                            ; preds = %.split818.us.i
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.dq:                                            ; preds = %.split820.us.i
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.dr:                                            ; preds = %.split.us.i
  %i.sy = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.ds:                                            ; preds = %bb.dm
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %2, ptr noundef %i.pd, ptr noundef %i.st, ptr noundef nonnull %i.r)
          to label %..critedge_crit_edge.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i

..critedge_crit_edge.i:                           ; preds = %bb.ds
  %i.sz = load <2 x float>, ptr %i.r, align 8, !tbaa !10
  %.pre1082.i = load float, ptr %i.nm, align 8, !tbaa !10
  %.pre1083.i = load i32, ptr %i.o, align 4       ; 2 uses
  br label %.critedge.i

bb.dt:                                            ; preds = %bb.dm
  %i.ta = load <2 x float>, ptr %i.pd, align 4, !tbaa !10
  %i.tb = load <2 x float>, ptr %i.st, align 4, !tbaa !10
  %i.tc = fsub <2 x float> %i.ta, %i.tb           ; 2 uses
  %i.td = load float, ptr %i.pe, align 4, !tbaa !10
  %i.te = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.tf = load float, ptr %i.te, align 4, !tbaa !10
  %i.tg = fsub float %i.td, %i.tf                 ; 2 uses
  store <2 x float> %i.tc, ptr %i.r, align 8, !tbaa !10
  store float %i.tg, ptr %i.nm, align 8, !tbaa !10
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.dt, %..critedge_crit_edge.i
  %i.th = phi i32 [ %.pre1083.i, %..critedge_crit_edge.i ], [ %i.sl, %bb.dt ] ; 2 uses
  %i.ti = phi i32 [ %.pre1083.i, %..critedge_crit_edge.i ], [ %i.sm, %bb.dt ] ; 4 uses
  %i.tj = phi float [ %.pre1082.i, %..critedge_crit_edge.i ], [ %i.tg, %bb.dt ] ; 2 uses
  %i.tk = phi <2 x float> [ %i.sz, %..critedge_crit_edge.i ], [ %i.tc, %bb.dt ] ; 3 uses
  %foldExtExtBinop368 = fmul <2 x float> %i.tk, %i.tk
  %i.tl = extractelement <2 x float> %foldExtExtBinop368, i64 1
  %i.tm = extractelement <2 x float> %i.tk, i64 0 ; 2 uses
  %i.tn = call float @llvm.fmuladd.f32(float %i.tm, float %i.tm, float %i.tl)
  %i.to = call noundef float @llvm.fmuladd.f32(float %i.tj, float %i.tj, float %i.tn)
  %i.tp = fcmp olt float %i.to, %i.mf
  %i.tq = icmp sgt i32 %i.ti, 0
  %or.cond.i = select i1 %i.tp, i1 %i.tq, i1 false
  br i1 %or.cond.i, label %.lr.ph823.i, label %.critedge.thread.i

.lr.ph823.i:                                      ; preds = %.critedge.i
  %i.tr = sext i32 %i.so to i64
  %i.ts = getelementptr inbounds [4 x i8], ptr %i.me, i64 %i.tr ; 3 uses
  br label %bb.du

bb.du:                                            ; preds = %.critedge765.i, %.lr.ph823.i
  %i.tt = phi i32 [ %i.th, %.lr.ph823.i ], [ %i.uo, %.critedge765.i ]
  %i.tu = phi i32 [ %i.ti, %.lr.ph823.i ], [ %i.up, %.critedge765.i ]
  %i.tv = phi i32 [ %i.ti, %.lr.ph823.i ], [ %i.uq, %.critedge765.i ]
  %indvars.iv977.i = phi i64 [ 0, %.lr.ph823.i ], [ %indvars.iv.next978.i, %.critedge765.i ] ; 2 uses
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %indvars.iv977.i ; 2 uses
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !9
  %i.ty = icmp eq i32 %i.tx, %i.so
  br i1 %i.ty, label %bb.dv, label %.critedge765.i

bb.dv:                                            ; preds = %bb.du
  %i.tz = load i32, ptr %i.ts, align 4, !tbaa !9  ; 2 uses
  %i.ua = icmp slt i32 %i.tz, 1
  br i1 %i.ua, label %.split840.us.i, label %bb.eb

.split840.us.i:                                   ; preds = %bb.dv, %bb.de
  %.us-phi.i = phi i32 [ %i.pm, %bb.de ], [ %i.so, %bb.dv ]
  %.us-phi841.i = phi ptr [ %i.si, %bb.de ], [ %i.ts, %bb.dv ]
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA69_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %23, ptr noundef nonnull align 1 dereferenceable(69) @.str.48, i8 noundef zeroext 2)
          to label %bb.dw unwind label %bb.dy

bb.dw:                                            ; preds = %.split840.us.i
  %i.ub = load i32, ptr %.us-phi841.i, align 4, !tbaa !9
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %23, i32 noundef 277, ptr noundef nonnull @.str.66, i32 noundef %i.ub, i32 noundef %.us-phi.i) #16
          to label %bb.dx unwind label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  unreachable

bb.dy:                                            ; preds = %.split840.us.i
  %i.uc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit23

bb.dz:                                            ; preds = %bb.dw
  %i.ud = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %23, i64 32 ; 2 uses
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !45 ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.uf, null
  br i1 %.not.i.i.i18, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i19, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ue, ptr noundef nonnull %i.uf) #15
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i19

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i19: ; preds = %bb.ea, %bb.dz
  %i.ug = load ptr, ptr %23, align 8, !tbaa !44   ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.ui = icmp eq ptr %i.ug, %i.uh
  br i1 %i.ui, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i19
  %i.uj = load i64, ptr %i.uh, align 8, !tbaa !20
  %i.uk = add i64 %i.uj, 1
  call void @_ZdlPvm(ptr noundef %i.ug, i64 noundef %i.uk) #17
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit23

_ZNSt10filesystem7__cxx114pathD2Ev.exit23:        ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i19, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20, %bb.dy
  %.pn379.i = phi { ptr, i32 } [ %i.uc, %bb.dy ], [ %i.ud, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20 ], [ %i.ud, %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i19 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  br label %.loopexit.split-lp.i

bb.eb:                                            ; preds = %bb.dv
  %i.ul = add nsw i32 %i.tz, -1
  store i32 %i.ul, ptr %i.ts, align 4, !tbaa !9
  store i32 %i.ow, ptr %i.tw, align 4, !tbaa !9
  %i.um = load i32, ptr %i.pi, align 4, !tbaa !9
  %i.un = add nsw i32 %i.um, 1
  store i32 %i.un, ptr %i.pi, align 4, !tbaa !9
  %.pre1084.i = load i32, ptr %i.o, align 4, !tbaa !9 ; 3 uses
  br label %.critedge765.i

.critedge765.i:                                   ; preds = %bb.eb, %bb.du
  %i.uo = phi i32 [ %i.tt, %bb.du ], [ %.pre1084.i, %bb.eb ] ; 2 uses
  %i.up = phi i32 [ %i.tu, %bb.du ], [ %.pre1084.i, %bb.eb ] ; 2 uses
  %i.uq = phi i32 [ %i.tv, %bb.du ], [ %.pre1084.i, %bb.eb ] ; 2 uses
  %indvars.iv.next978.i = add nuw nsw i64 %indvars.iv977.i, 1 ; 2 uses
  %i.ur = sext i32 %i.uq to i64
  %i.us = icmp slt i64 %indvars.iv.next978.i, %i.ur
  br i1 %i.us, label %bb.du, label %.critedge.thread.i, !llvm.loop !67

end_hunk_0
