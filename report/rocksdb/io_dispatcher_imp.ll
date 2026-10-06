Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/io_dispatcher_imp?download=true
inline.NumInlined: 3493
inline.NumDeleted: 1612
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS_5IOJobEEPS2_INS_7ReadSetEE:bb.a
  %i.ct = load ptr, ptr %i.ci, align 8, !tbaa !42 ; 2 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = ashr exact i64 %i.cw, 3                 ; 3 uses
  %i.cy = icmp ugt i64 %i.cq, %i.cx
  br i1 %i.cy, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cz = sub nuw nsw i64 %i.cq, %i.cx
  invoke void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr %i.cs, i64 noundef %i.cz, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %._ZNSt6vectorImSaImEE6resizeEmRKm.exit_crit_edge unwind label %bb.ad

._ZNSt6vectorImSaImEE6resizeEmRKm.exit_crit_edge: ; preds = %bb.w
  %.pre303 = load ptr, ptr %2, align 8, !tbaa !165
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

bb.x:                                             ; preds = %bb.v
  %i.da = icmp ult i64 %i.cq, %i.cx
  br i1 %i.da, label %bb.y, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cq ; 2 uses
  %.not.i.i = icmp eq ptr %i.cs, %i.db
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.y
  store ptr %i.db, ptr %i.cr, align 8, !tbaa !41
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

_ZNSt6vectorImSaImEE6resizeEmRKm.exit:            ; preds = %._ZNSt6vectorImSaImEE6resizeEmRKm.exit_crit_edge, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i, %bb.y, %bb.x
  %i.dc = phi ptr [ %.pre303, %._ZNSt6vectorImSaImEE6resizeEmRKm.exit_crit_edge ], [ %i.cj, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ], [ %i.cj, %bb.y ], [ %i.cj, %bb.x ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.dd = getelementptr inbounds nuw i8, ptr %i.by, i64 56 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !376 ; 4 uses
  %i.dg = load ptr, ptr %i.dc, align 8, !tbaa !355 ; 4 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = ashr exact i64 %i.dj, 4                 ; 7 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.by, i64 64 ; 3 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !41 ; 2 uses
  %i.dn = load ptr, ptr %i.dd, align 8, !tbaa !42 ; 2 uses
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = ashr exact i64 %i.dq, 3                 ; 3 uses
  %i.ds = icmp ugt i64 %i.dk, %i.dr
  br i1 %i.ds, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  %i.dt = sub nuw nsw i64 %i.dk, %i.dr
  invoke void @_ZNSt6vectorImSaImEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, i64 noundef %i.dt)
          to label %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge unwind label %bb.ac

._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge:    ; preds = %bb.z
  %.pre304 = load ptr, ptr %2, align 8, !tbaa !165 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre304, i64 8
  %.pre305 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !376 ; 2 uses
  %.pre306 = load ptr, ptr %.pre304, align 8, !tbaa !355 ; 2 uses
  %.pre314 = ptrtoint ptr %.pre305 to i64
  %.pre315 = ptrtoint ptr %.pre306 to i64
  %.pre317 = sub i64 %.pre314, %.pre315
  %.pre319 = ashr exact i64 %.pre317, 4
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.aa:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  %i.du = icmp ult i64 %i.dk, %i.dr
  br i1 %i.du, label %bb.ab, label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %i.dk ; 2 uses
  %.not.i.i106 = icmp eq ptr %i.dm, %i.dv
  br i1 %.not.i.i106, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i107

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i107:     ; preds = %bb.ab
  store ptr %i.dv, ptr %i.dl, align 8, !tbaa !41
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge, %bb.aa, %bb.ab, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i107
  %.pre-phi320 = phi i64 [ %.pre319, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge ], [ %i.dk, %bb.aa ], [ %i.dk, %bb.ab ], [ %i.dk, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i107 ] ; 5 uses
  %i.dw = phi ptr [ %.pre306, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge ], [ %i.dg, %bb.aa ], [ %i.dg, %bb.ab ], [ %i.dg, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i107 ]
  %i.dx = phi ptr [ %.pre305, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge ], [ %i.df, %bb.aa ], [ %i.df, %bb.ab ], [ %i.df, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i107 ]
  %i.dy = phi ptr [ %.pre304, %._ZNSt6vectorImSaImEE6resizeEm.exit_crit_edge ], [ %i.dc, %bb.aa ], [ %i.dc, %bb.ab ], [ %i.dc, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i107 ] ; 3 uses
  %.not294 = icmp eq ptr %i.dx, %i.dw
  br i1 %.not294, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.dz = load ptr, ptr %i.dd, align 8, !tbaa !42 ; 3 uses
  %umax = call i64 @llvm.umax.i64(i64 %.pre-phi320, i64 1) ; 4 uses
  %min.iters.check = icmp ult i64 %.pre-phi320, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check441 = icmp ult i64 %.pre-phi320, 16
  br i1 %min.iters.check441, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ea = and i64 %umax, 12
  %n.vec = and i64 %umax, -16                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 64
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 96
  store <4 x i64> %vec.ind, ptr %i.eb, align 8, !tbaa !62
  store <4 x i64> %step.add, ptr %i.ec, align 8, !tbaa !62
  store <4 x i64> %step.add.2, ptr %i.ed, align 8, !tbaa !62
  store <4 x i64> %step.add.3, ptr %i.ee, align 8, !tbaa !62
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %middle.block, label %vector.body, !llvm.loop !672

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre-phi320, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ea, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !525

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec442 = and i64 %umax, -4                   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index443 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next445, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind444 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next446, %vec.epilog.vector.body ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %index443
  store <4 x i64> %vec.ind444, ptr %i.eg, align 8, !tbaa !62
  %index.next445 = add nuw i64 %index443, 4       ; 2 uses
  %vec.ind.next446 = add nuw <4 x i64> %vec.ind444, splat (i64 4)
  %i.eh = icmp eq i64 %index.next445, %n.vec442
  br i1 %i.eh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !673

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n447 = icmp eq i64 %.pre-phi320, %n.vec442
  br i1 %cmp.n447, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.076261.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec442, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dy, i64 232
  %i.ej = load i8, ptr %i.ei, align 8, !tbaa !701, !range !157, !noundef !158
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS7_5IOJobEEPSA_INS7_7ReadSetEEE3$_0EvT_SJ_T0_.exit", label %bb.ae

bb.ac:                                            ; preds = %bb.z, %_ZNSt10shared_ptrIN7rocksdb10FileSystemEEaSERKS2_.exit, %_ZNSt10shared_ptrIN7rocksdb5IOJobEEaSERKS2_.exit
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.gd

bb.ad:                                            ; preds = %bb.w
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.gd

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.076261 = phi i64 [ %i.eo, %vec.epilog.scalar.ph ], [ %.076261.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %.076261
  store i64 %.076261, ptr %i.en, align 8, !tbaa !62
  %i.eo = add nuw i64 %.076261, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.eo, %umax
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !674

bb.ae:                                            ; preds = %._crit_edge
  %i.ep = load ptr, ptr %i.dd, align 8, !tbaa !358 ; 17 uses
  %i.eq = load ptr, ptr %i.dl, align 8, !tbaa !358 ; 7 uses
  %i.er = icmp eq ptr %i.ep, %i.eq
  br i1 %i.er, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS7_5IOJobEEPSA_INS7_7ReadSetEEE3$_0EvT_SJ_T0_.exit", label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = ptrtoint ptr %i.ep to i64               ; 2 uses
  %i.eu = sub i64 %i.es, %i.et                    ; 2 uses
  %i.ev = ashr exact i64 %i.eu, 3
  %i.ew = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ev, i1 true)
  %i.ex = shl nuw nsw i64 %i.ew, 1
  %i.ey = xor i64 %i.ex, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_T0_T1_"(ptr %i.ep, ptr %i.eq, i64 noundef %i.ey, ptr nonnull readonly %2)
  %i.ez = icmp sgt i64 %i.eu, 128
  br i1 %i.ez, label %.lr.ph.i.i.i.i, label %.preheader.i17.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.af
  %.val.val.pre22.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !165 ; 2 uses
  %.pre26.i.i.i.i = load i64, ptr %i.ep, align 8, !tbaa !62
  %scevgep.i.i.i = getelementptr i8, ptr %i.ep, i64 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.al, %.lr.ph.i.i.i.i
  %.val.val.i.i46.i.i.i = phi ptr [ %.val.val.pre22.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.val.val.i.i.i.i.i, %bb.al ] ; 2 uses
  %i.fa = phi i64 [ %.pre26.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ft, %bb.al ] ; 2 uses
  %.val.val.i.i.i.i = phi ptr [ %.val.val.pre22.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.val.val.i.i.i.i.i.a, %bb.al ] ; 3 uses
  %.sroa.0.020.i.idx.i.i.i = phi i64 [ 8, %.lr.ph.i.i.i.i ], [ %.sroa.0.020.i.add.i.i.i, %bb.al ] ; 4 uses
  %.pn19.i.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i.i ], [ %.sroa.0.020.i.ptr.i.i.i, %bb.al ] ; 3 uses
  %.sroa.0.020.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.sroa.0.020.i.idx.i.i.i ; 4 uses
  %.val.val.val.i.i.i.i = load ptr, ptr %.val.val.i.i.i.i, align 8, !tbaa !355 ; 4 uses
  %i.fb = load i64, ptr %.sroa.0.020.i.ptr.i.i.i, align 8, !tbaa !62 ; 4 uses
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %.val.val.val.i.i.i.i, i64 %i.fb ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !372 ; 2 uses
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %.val.val.val.i.i.i.i, i64 %i.fa
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !372
  %i.fg = icmp ult i64 %i.fd, %i.ff
  br i1 %i.fg, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.fh = icmp samesign ugt i64 %.sroa.0.020.i.idx.i.i.i, 8
  br i1 %i.fh, label %bb.ai, label %bb.aj, !prof !374

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %i.ep, i64 %.sroa.0.020.i.idx.i.i.i, i1 false)
  %.val.val.pre.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !165 ; 2 uses
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.fi = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i, i64 8
  store i64 %i.fa, ptr %i.fi, align 8, !tbaa !62
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.aj, %bb.ai
  %.val.val.i.i45.i.i.i = phi ptr [ %.val.val.pre.i.i.i.i, %bb.ai ], [ %.val.val.i.i46.i.i.i, %bb.aj ]
  %.val.val24.i.i.i.i = phi ptr [ %.val.val.pre.i.i.i.i, %bb.ai ], [ %.val.val.i.i.i.i, %bb.aj ]
  store i64 %i.fb, ptr %i.ep, align 8, !tbaa !62
  br label %bb.al

bb.ak:                                            ; preds = %bb.ag
  %i.fj = load i64, ptr %.pn19.i.i.i.i, align 8, !tbaa !62 ; 2 uses
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %.val.val.val.i.i.i.i, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !372
  %i.fm = icmp ult i64 %i.fd, %i.fl
  br i1 %i.fm, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ak, %.lr.ph.i.i.i.i.i
  %i.fn = phi i64 [ %i.fo, %.lr.ph.i.i.i.i.i ], [ %i.fj, %bb.ak ]
  %.sroa.0.011.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.pn19.i.i.i.i, %bb.ak ] ; 3 uses
  %.sroa.06.010.i.i.i.i.i = phi ptr [ %.sroa.0.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.020.i.ptr.i.i.i, %bb.ak ]
  store i64 %i.fn, ptr %.sroa.06.010.i.i.i.i.i, align 8, !tbaa !62
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i.i.i.i, i64 -8 ; 2 uses
  %i.fo = load i64, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !62 ; 2 uses
  %i.fp = load i64, ptr %i.fc, align 8, !tbaa !372
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %.val.val.val.i.i.i.i, i64 %i.fo
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !372
  %i.fs = icmp ult i64 %i.fp, %i.fr
  br i1 %i.fs, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !675

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.ak
  %.sroa.06.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i.i.i, %bb.ak ], [ %.sroa.0.011.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  store i64 %i.fb, ptr %.sroa.06.0.lcssa.i.i.i.i.i, align 8, !tbaa !62
  %.pre.i.i.i.i = load i64, ptr %i.ep, align 8, !tbaa !62
  br label %bb.al

bb.al:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i.i
  %.val.val.i.i.i.i.i = phi ptr [ %.val.val.i.i45.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ %.val.val.i.i46.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_.exit.i.i.i.i" ] ; 4 uses
  %i.ft = phi i64 [ %i.fb, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ %.pre.i.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_.exit.i.i.i.i" ]
  %.val.val.i.i.i.i.i.a = phi ptr [ %.val.val24.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ %.val.val.i.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_.exit.i.i.i.i" ]
  %.sroa.0.020.i.add.i.i.i = add nuw nsw i64 %.sroa.0.020.i.idx.i.i.i, 8 ; 2 uses
  %i.fu = icmp eq i64 %.sroa.0.020.i.add.i.i.i, 128
  br i1 %i.fu, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_T0_.exit.i.i.i", label %bb.ag, !llvm.loop !676

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_T0_.exit.i.i.i": ; preds = %bb.al
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ep, i64 128 ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.eq
  br i1 %i.fw, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS7_5IOJobEEPSA_INS7_7ReadSetEEE3$_0EvT_SJ_T0_.exit", label %.lr.ph.i10.i.i.i

.lr.ph.i10.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_T0_.exit.i.i.i"
  %.val.val.val.i.i.i.i.i = load ptr, ptr %.val.val.i.i.i.i.i, align 8, !tbaa !355 ; 3 uses
  br label %bb.am

bb.am:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_.exit.i11.i.i.i", %.lr.ph.i10.i.i.i
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.fv, %.lr.ph.i10.i.i.i ], [ %i.gk, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_.exit.i11.i.i.i" ] ; 5 uses
  %i.fx = load i64, ptr %.sroa.0.07.i.i.i.i, align 8, !tbaa !62 ; 2 uses
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %.val.val.val.i.i.i.i.i, i64 %i.fx ; 2 uses
  %.sroa.0.09.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i, i64 -8 ; 2 uses
  %i.fz = load i64, ptr %.sroa.0.09.i.i.i.i.i, align 8, !tbaa !62 ; 2 uses
  %i.ga = load i64, ptr %i.fy, align 8, !tbaa !372
  %i.gb = getelementptr inbounds nuw [16 x i8], ptr %.val.val.val.i.i.i.i.i, i64 %i.fz
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !372
  %i.gd = icmp ult i64 %i.ga, %i.gc
  br i1 %i.gd, label %.lr.ph.i.i13.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_.exit.i11.i.i.i"

.lr.ph.i.i13.i.i.i:                               ; preds = %bb.am, %.lr.ph.i.i13.i.i.i
  %i.ge = phi i64 [ %i.gf, %.lr.ph.i.i13.i.i.i ], [ %i.fz, %bb.am ]
  %.sroa.0.011.i.i14.i.i.i = phi ptr [ %.sroa.0.0.i.i16.i.i.i, %.lr.ph.i.i13.i.i.i ], [ %.sroa.0.09.i.i.i.i.i, %bb.am ] ; 3 uses
  %.sroa.06.010.i.i15.i.i.i = phi ptr [ %.sroa.0.011.i.i14.i.i.i, %.lr.ph.i.i13.i.i.i ], [ %.sroa.0.07.i.i.i.i, %bb.am ]
  store i64 %i.ge, ptr %.sroa.06.010.i.i15.i.i.i, align 8, !tbaa !62
  %.sroa.0.0.i.i16.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i14.i.i.i, i64 -8 ; 2 uses
  %i.gf = load i64, ptr %.sroa.0.0.i.i16.i.i.i, align 8, !tbaa !62 ; 2 uses
  %i.gg = load i64, ptr %i.fy, align 8, !tbaa !372
  %i.gh = getelementptr inbounds nuw [16 x i8], ptr %.val.val.val.i.i.i.i.i, i64 %i.gf
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !372
  %i.gj = icmp ult i64 %i.gg, %i.gi
  br i1 %i.gj, label %.lr.ph.i.i13.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_.exit.i11.i.i.i", !llvm.loop !675

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_.exit.i11.i.i.i": ; preds = %.lr.ph.i.i13.i.i.i, %bb.am
  %.sroa.06.0.lcssa.i.i12.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %bb.am ], [ %.sroa.0.011.i.i14.i.i.i, %.lr.ph.i.i13.i.i.i ]
  store i64 %i.fx, ptr %.sroa.06.0.lcssa.i.i12.i.i.i, align 8, !tbaa !62
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8 ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.eq
  br i1 %i.gl, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS7_5IOJobEEPSA_INS7_7ReadSetEEE3$_0EvT_SJ_T0_.exit", label %bb.am, !llvm.loop !677

.preheader.i17.i.i.i:                             ; preds = %bb.af
  %.sroa.0.018.i18.i.i.i = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 2 uses
  %i.gm = icmp eq ptr %.sroa.0.018.i18.i.i.i, %i.eq
  %.pre307 = load ptr, ptr %2, align 8, !tbaa !165 ; 2 uses
  br i1 %i.gm, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS7_5IOJobEEPSA_INS7_7ReadSetEEE3$_0EvT_SJ_T0_.exit", label %.lr.ph.i19.i.i.i

.lr.ph.i19.i.i.i:                                 ; preds = %.preheader.i17.i.i.i
  %.pre26.i21.i.i.i = load i64, ptr %i.ep, align 8, !tbaa !62
  br label %bb.an

bb.an:                                            ; preds = %bb.at, %.lr.ph.i19.i.i.i
  %i.gn = phi i64 [ %.pre26.i21.i.i.i, %.lr.ph.i19.i.i.i ], [ %i.hn, %bb.at ] ; 2 uses
  %.val.val.i22.i.i.i = phi ptr [ %.pre307, %.lr.ph.i19.i.i.i ], [ %.val.val23.i29.i.i.i, %bb.at ] ; 4 uses
  %.sroa.0.020.i23.i.i.i = phi ptr [ %.sroa.0.018.i18.i.i.i, %.lr.ph.i19.i.i.i ], [ %.sroa.0.0.i30.i.i.i, %bb.at ] ; 6 uses
  %.pn19.i24.i.i.i = phi ptr [ %i.ep, %.lr.ph.i19.i.i.i ], [ %.sroa.0.020.i23.i.i.i, %bb.at ] ; 4 uses
  %.val.val.val.i25.i.i.i = load ptr, ptr %.val.val.i22.i.i.i, align 8, !tbaa !355 ; 4 uses
  %i.go = load i64, ptr %.sroa.0.020.i23.i.i.i, align 8, !tbaa !62 ; 4 uses
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %.val.val.val.i25.i.i.i, i64 %i.go ; 2 uses
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !372 ; 2 uses
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %.val.val.val.i25.i.i.i, i64 %i.gn
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !372
  %i.gt = icmp ult i64 %i.gq, %i.gs
  br i1 %i.gt, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
  %i.gu = ptrtoint ptr %.sroa.0.020.i23.i.i.i to i64
  %i.gv = sub i64 %i.gu, %i.et                    ; 3 uses
  %i.gw = ashr exact i64 %i.gv, 3                 ; 2 uses
  %i.gx = icmp sgt i64 %i.gw, 1
  br i1 %i.gx, label %bb.ap, label %bb.aq, !prof !374

bb.ap:                                            ; preds = %bb.ao
  %i.gy = getelementptr inbounds nuw i8, ptr %.pn19.i24.i.i.i, i64 16
  %i.gz = sub nsw i64 0, %i.gw
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %i.gz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ha, ptr noundef nonnull align 8 dereferenceable(1) %i.ep, i64 %i.gv, i1 false)
  %.val.val.pre.i37.i.i.i = load ptr, ptr %2, align 8, !tbaa !165
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.hb = icmp eq i64 %i.gv, 8
  br i1 %i.hb, label %bb.ar, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35.i.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.hc = getelementptr inbounds nuw i8, ptr %.pn19.i24.i.i.i, i64 8
  store i64 %i.gn, ptr %i.hc, align 8, !tbaa !62
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35.i.i.i: ; preds = %bb.ar, %bb.aq, %bb.ap
  %.val.val24.i36.i.i.i = phi ptr [ %.val.val.pre.i37.i.i.i, %bb.ap ], [ %.val.val.i22.i.i.i, %bb.aq ], [ %.val.val.i22.i.i.i, %bb.ar ]
  store i64 %i.go, ptr %i.ep, align 8, !tbaa !62
  br label %bb.at

bb.as:                                            ; preds = %bb.an
  %i.hd = load i64, ptr %.pn19.i24.i.i.i, align 8, !tbaa !62 ; 2 uses
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %.val.val.val.i25.i.i.i, i64 %i.hd
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !372
  %i.hg = icmp ult i64 %i.gq, %i.hf
  br i1 %i.hg, label %.lr.ph.i.i31.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_.exit.i26.i.i.i"

.lr.ph.i.i31.i.i.i:                               ; preds = %bb.as, %.lr.ph.i.i31.i.i.i
  %i.hh = phi i64 [ %i.hi, %.lr.ph.i.i31.i.i.i ], [ %i.hd, %bb.as ]
  %.sroa.0.011.i.i32.i.i.i = phi ptr [ %.sroa.0.0.i.i34.i.i.i, %.lr.ph.i.i31.i.i.i ], [ %.pn19.i24.i.i.i, %bb.as ] ; 3 uses
  %.sroa.06.010.i.i33.i.i.i = phi ptr [ %.sroa.0.011.i.i32.i.i.i, %.lr.ph.i.i31.i.i.i ], [ %.sroa.0.020.i23.i.i.i, %bb.as ]
  store i64 %i.hh, ptr %.sroa.06.010.i.i33.i.i.i, align 8, !tbaa !62
  %.sroa.0.0.i.i34.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i32.i.i.i, i64 -8 ; 2 uses
  %i.hi = load i64, ptr %.sroa.0.0.i.i34.i.i.i, align 8, !tbaa !62 ; 2 uses
  %i.hj = load i64, ptr %i.gp, align 8, !tbaa !372
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %.val.val.val.i25.i.i.i, i64 %i.hi
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !372
  %i.hm = icmp ult i64 %i.hj, %i.hl
  br i1 %i.hm, label %.lr.ph.i.i31.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_.exit.i26.i.i.i", !llvm.loop !675

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_.exit.i26.i.i.i": ; preds = %.lr.ph.i.i31.i.i.i, %bb.as
  %.sroa.06.0.lcssa.i.i27.i.i.i = phi ptr [ %.sroa.0.020.i23.i.i.i, %bb.as ], [ %.sroa.0.011.i.i32.i.i.i, %.lr.ph.i.i31.i.i.i ]
  store i64 %i.go, ptr %.sroa.06.0.lcssa.i.i27.i.i.i, align 8, !tbaa !62
  %.pre.i28.i.i.i = load i64, ptr %i.ep, align 8, !tbaa !62
  br label %bb.at

bb.at:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_.exit.i26.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35.i.i.i
  %i.hn = phi i64 [ %i.go, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35.i.i.i ], [ %.pre.i28.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_.exit.i26.i.i.i" ]
  %.val.val23.i29.i.i.i = phi ptr [ %.val.val24.i36.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i35.i.i.i ], [ %.val.val.i22.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_.exit.i26.i.i.i" ] ; 2 uses
  %.sroa.0.0.i30.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i23.i.i.i, i64 8 ; 2 uses
  %i.ho = icmp eq ptr %.sroa.0.0.i30.i.i.i, %i.eq
  br i1 %i.ho, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS7_5IOJobEEPSA_INS7_7ReadSetEEE3$_0EvT_SJ_T0_.exit", label %bb.an, !llvm.loop !676

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS7_5IOJobEEPSA_INS7_7ReadSetEEE3$_0EvT_SJ_T0_.exit": ; preds = %bb.at, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_.exit.i11.i.i.i", %.preheader.i17.i.i.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_T0_.exit.i.i.i", %bb.ae, %._crit_edge
  %i.hp = phi ptr [ %.val.val.i.i.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_T0_.exit.i11.i.i.i" ], [ %i.dy, %._crit_edge ], [ %.pre307, %.preheader.i17.i.i.i ], [ %.val.val.i.i.i.i.i, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS9_5IOJobEEPSC_INS9_7ReadSetEEE3$_0EEEvT_SM_T0_.exit.i.i.i" ], [ %i.dy, %bb.ae ], [ %.val.val23.i29.i.i.i, %bb.at ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !376 ; 2 uses
  %i.hs = load ptr, ptr %i.hp, align 8, !tbaa !355 ; 2 uses
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = sub i64 %i.ht, %i.hu                    ; 2 uses
  %i.hw = ashr exact i64 %i.hv, 4                 ; 2 uses
  %i.hx = icmp ugt i64 %i.hw, 1152921504606846975
  br i1 %i.hx, label %bb.au, label %bb.av

bb.au:                                            ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS7_5IOJobEEPSA_INS7_7ReadSetEEE3$_0EvT_SJ_T0_.exit"
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #23
          to label %.noexc109 unwind label %bb.ba

.noexc109:                                        ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN7rocksdb16IODispatcherImpl4Impl9SubmitJobERKSt10shared_ptrINS7_5IOJobEEPSA_INS7_7ReadSetEEE3$_0EvT_SJ_T0_.exit"
  %i.hy = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  %.not410 = icmp eq ptr %i.hr, %i.hs
  br i1 %.not410, label %_ZNSt6vectorImSaImEE7reserveEm.exit, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %bb.av
  %i.hz = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ia = ashr exact i64 %i.hv, 1
  %i.ib = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ia) #24
          to label %.noexc110 unwind label %bb.ba ; 4 uses

.noexc110:                                        ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.ic = load ptr, ptr %7, align 8, !tbaa !42    ; 4 uses
  %i.id = load ptr, ptr %i.hz, align 8, !tbaa !41
  %i.ie = ptrtoint ptr %i.id to i64
  %i.if = ptrtoint ptr %i.ic to i64               ; 2 uses
  %i.ig = sub i64 %i.ie, %i.if                    ; 2 uses
  %i.ih = icmp sgt i64 %i.ig, 0
  br i1 %i.ih, label %bb.aw, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

bb.aw:                                            ; preds = %.noexc110
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ib, ptr align 8 %i.ic, i64 %i.ig, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i: ; preds = %bb.aw, %.noexc110
  %.not.i8.i = icmp eq ptr %i.ic, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  %i.ii = load ptr, ptr %i.hy, align 8, !tbaa !147
  %i.ij = ptrtoint ptr %i.ii to i64
  %i.ik = sub i64 %i.ij, %i.if
  call void @_ZdlPvm(ptr noundef nonnull %i.ic, i64 noundef %i.ik) #25
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i: ; preds = %bb.ax, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit.i
  store ptr %i.ib, ptr %7, align 8, !tbaa !42
  store ptr %i.ib, ptr %i.hz, align 8, !tbaa !41
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.hw
  store ptr %i.il, ptr %i.hy, align 8, !tbaa !147
  %.pre308 = load ptr, ptr %2, align 8, !tbaa !165
  br label %_ZNSt6vectorImSaImEE7reserveEm.exit

_ZNSt6vectorImSaImEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i, %bb.av
  %i.im = phi ptr [ %.pre308, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i ], [ %i.hp, %bb.av ] ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !186
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !192 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = getelementptr inbounds nuw i8, ptr %i.im, i64 40
  %i.it = load ptr, ptr %i.iq, align 8, !tbaa !305, !nonnull !158, !align !306
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 264
  %i.iv = load i8, ptr %i.iu, align 8, !tbaa !362, !range !157, !noundef !158
  %i.iw = trunc nuw i8 %i.iv to i1
  %i.ix = invoke noundef zeroext i1 @_ZN7rocksdb34ShouldUseDataBlockCacheForIteratorERKNS_22BlockBasedTableOptionsERKNS_11ReadOptionsEb(ptr noundef nonnull align 8 dereferenceable(312) %i.ir, ptr noundef nonnull align 8 dereferenceable(192) %i.is, i1 noundef zeroext %i.iw)
          to label %bb.ay unwind label %bb.bb

bb.ay:                                            ; preds = %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.iy = load ptr, ptr %6, align 16, !tbaa !413  ; 8 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 56 ; 2 uses
  br i1 %i.ix, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ja = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorImSaImEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.iz)
          to label %.loopexit251 unwind label %bb.bb ; 0 uses

bb.ba:                                            ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, %bb.au
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.bb:                                            ; preds = %bb.az, %_ZNSt6vectorImSaImEE7reserveEm.exit
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.bc:                                            ; preds = %bb.ay
  %i.jd = load ptr, ptr %i.iz, align 8, !tbaa !358 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.iy, i64 64
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !358 ; 2 uses
  %i.jg = icmp eq ptr %i.jd, %i.jf
  br i1 %i.jg, label %.loopexit251, label %.lr.ph264

.lr.ph264:                                        ; preds = %bb.bc
  %i.jh = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph264, %_ZN7rocksdb6StatusD2Ev.exit117
  %.sroa.0244.0262 = phi ptr [ %i.jd, %.lr.ph264 ], [ %i.ky, %_ZN7rocksdb6StatusD2Ev.exit117 ] ; 2 uses
  %i.jl = load i64, ptr %.sroa.0244.0262, align 8, !tbaa !62 ; 5 uses
  %i.jm = load ptr, ptr %2, align 8, !tbaa !165   ; 3 uses
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !355
  %i.jo = getelementptr inbounds nuw [16 x i8], ptr %i.jn, i64 %i.jl
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !186
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jm, i64 40
  %i.js = load ptr, ptr %i.jj, align 8, !tbaa !54
  %i.jt = getelementptr inbounds nuw [32 x i8], ptr %i.js, i64 %i.jl
  invoke void @_ZNK7rocksdb15BlockBasedTable25LookupAndPinBlocksInCacheINS_11Block_kDataEEENS_6StatusERKNS_11ReadOptionsERKNS_11BlockHandleEPNS_13CachableEntryIT_EE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %i.jq, ptr noundef nonnull align 8 dereferenceable(192) %i.jr, ptr noundef nonnull align 8 dereferenceable(16) %i.jo, ptr noundef nonnull %i.jt)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ju = load i8, ptr %8, align 8, !tbaa !185
  %i.jv = icmp eq i8 %i.ju, 0
  br i1 %i.jv, label %bb.bh, label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit

bb.bf:                                            ; preds = %bb.bd
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7rocksdb6StatusD2Ev.exit

.loopexit252:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit254 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp253:                            ; preds = %bb.bl
  %lpad.loopexit.split-lp255 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit.split-lp253, %.loopexit252
  %lpad.phi256 = phi { ptr, i32 } [ %lpad.loopexit254, %.loopexit252 ], [ %lpad.loopexit.split-lp255, %.loopexit.split-lp253 ] ; 2 uses
  %i.jx = load ptr, ptr %i.ji, align 8, !tbaa !133 ; 2 uses
  %.not.i.i111 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i111, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.bg
  call void @_ZdaPv(ptr noundef nonnull %i.jx) #25
  br label %_ZN7rocksdb6StatusD2Ev.exit

bb.bh:                                            ; preds = %bb.be
  %i.jy = load ptr, ptr %i.jk, align 8, !tbaa !54
  %i.jz = getelementptr inbounds nuw [32 x i8], ptr %i.jy, i64 %i.jl
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !60
  %.not90 = icmp eq ptr %i.ka, null
  br i1 %.not90, label %bb.bi, label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit

bb.bi:                                            ; preds = %bb.bh
  %i.kb = load ptr, ptr %i.jh, align 8, !tbaa !41 ; 4 uses
  %i.kc = load ptr, ptr %i.hy, align 8, !tbaa !147
  %.not.i = icmp eq ptr %i.kb, %i.kc
  br i1 %.not.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i64 %i.jl, ptr %i.kb, align 8, !tbaa !62
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store ptr %i.kd, ptr %i.jh, align 8, !tbaa !41
  br label %_ZNSt6vectorImSaImEE12emplace_backIJRmEEES3_DpOT_.exit

bb.bk:                                            ; preds = %bb.bi
  %i.ke = load ptr, ptr %7, align 8, !tbaa !42    ; 4 uses
  %i.kf = ptrtoint ptr %i.kb to i64
  %i.kg = ptrtoint ptr %i.ke to i64               ; 2 uses
  %i.kh = sub i64 %i.kf, %i.kg                    ; 5 uses
  %i.ki = icmp eq i64 %i.kh, 9223372036854775800
  br i1 %i.ki, label %bb.bl, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #23
          to label %.noexc113 unwind label %.loopexit.split-lp253

.noexc113:                                        ; preds = %bb.bl
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bk
  %i.kj = ashr exact i64 %i.kh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.kj, i64 1)
  %i.kk = add nsw i64 %.sroa.speculated.i.i.i, %i.kj ; 2 uses
  %i.kl = icmp ult i64 %i.kk, %i.kj
  %i.km = call i64 @llvm.umin.i64(i64 %i.kk, i64 1152921504606846975)
  %i.kn = select i1 %i.kl, i64 1152921504606846975, i64 %i.km ; 3 uses
  %.not.i.i.i112 = icmp ne i64 %i.kn, 0
  call void @llvm.assume(i1 %.not.i.i.i112)
  %i.ko = shl nuw nsw i64 %i.kn, 3
  %i.kp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ko) #24
end_hunk_0
