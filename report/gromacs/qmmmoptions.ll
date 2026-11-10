Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/qmmmoptions?download=true
inline.NumInlined: 3762
inline.NumDeleted: 1474
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN3gmx11QMMMOptions28writeInternalParametersToKvtENS_25KeyValueTreeObjectBuilderE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %.pn67.pn = phi { ptr, i32 } [ %i.sn, %bb.bm ], [ %.pn67, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i310 ], [ %.pn67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit309 ]
  %i.sy = load ptr, ptr %21, align 8, !tbaa !29   ; 2 uses
  %i.sz = icmp eq ptr %i.sy, %i.lm
  br i1 %i.sz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312
  %i.ta = load i64, ptr %i.lm, align 8, !tbaa !32
  %i.tb = add i64 %i.ta, 1
  call void @_ZdlPvm(ptr noundef %i.sy, i64 noundef %i.tb) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit312, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i313
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %bb.co

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253
  %i.tc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i261, %bb.bb
  %i.td = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318

bb.br:                                            ; preds = %bb.bd
  %i.te = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tf = load ptr, ptr %22, align 8, !tbaa !29   ; 2 uses
  %i.tg = icmp eq ptr %i.tf, %i.ov
  br i1 %i.tg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316: ; preds = %bb.br
  %i.th = load i64, ptr %i.ov, align 8, !tbaa !32
  %i.ti = add i64 %i.th, 1
  call void @_ZdlPvm(ptr noundef %i.tf, i64 noundef %i.ti) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316, %bb.bq
  %.pn70 = phi { ptr, i32 } [ %i.td, %bb.bq ], [ %i.te, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i316 ], [ %i.te, %bb.br ] ; 2 uses
  %i.tj = load ptr, ptr %23, align 8, !tbaa !29   ; 2 uses
  %i.tk = icmp eq ptr %i.tj, %i.od
  br i1 %i.tk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318
  %i.tl = load i64, ptr %i.od, align 8, !tbaa !32
  %i.tm = add i64 %i.tl, 1
  call void @_ZdlPvm(ptr noundef %i.tj, i64 noundef %i.tm) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319, %bb.bp
  %.pn70.pn = phi { ptr, i32 } [ %i.tc, %bb.bp ], [ %.pn70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i319 ], [ %.pn70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit318 ]
  %i.tn = load ptr, ptr %24, align 8, !tbaa !29   ; 2 uses
  %i.to = icmp eq ptr %i.tn, %i.nz
  br i1 %i.to, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321
  %i.tp = load i64, ptr %i.nz, align 8, !tbaa !32
  %i.tq = add i64 %i.tp, 1
  call void @_ZdlPvm(ptr noundef %i.tn, i64 noundef %i.tq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit321, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i322
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #27
  br label %bb.co

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit276
  %i.tr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i284, %bb.bh
  %i.ts = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327

bb.bu:                                            ; preds = %bb.bj
  %i.tt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tu = load ptr, ptr %26, align 8, !tbaa !29   ; 2 uses
  %i.tv = icmp eq ptr %i.tu, %i.qq
  br i1 %i.tv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325: ; preds = %bb.bu
  %i.tw = load i64, ptr %i.qq, align 8, !tbaa !32
  %i.tx = add i64 %i.tw, 1
  call void @_ZdlPvm(ptr noundef %i.tu, i64 noundef %i.tx) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325, %bb.bt
  %.pn73 = phi { ptr, i32 } [ %i.ts, %bb.bt ], [ %i.tt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i325 ], [ %i.tt, %bb.bu ] ; 2 uses
  %i.ty = load ptr, ptr %27, align 8, !tbaa !29   ; 2 uses
  %i.tz = icmp eq ptr %i.ty, %i.py
  br i1 %i.tz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327
  %i.ua = load i64, ptr %i.py, align 8, !tbaa !32
  %i.ub = add i64 %i.ua, 1
  call void @_ZdlPvm(ptr noundef %i.ty, i64 noundef %i.ub) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328, %bb.bs
  %.pn73.pn = phi { ptr, i32 } [ %i.tr, %bb.bs ], [ %.pn73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i328 ], [ %.pn73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327 ]
  %i.uc = load ptr, ptr %28, align 8, !tbaa !29   ; 2 uses
  %i.ud = icmp eq ptr %i.uc, %i.pu
  br i1 %i.ud, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330
  %i.ue = load i64, ptr %i.pu, align 8, !tbaa !32
  %i.uf = add i64 %i.ue, 1
  call void @_ZdlPvm(ptr noundef %i.uc, i64 noundef %i.uf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit330, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #27
  br label %bb.cn

bb.bv:                                            ; preds = %.preheader
  store i64 %i.rx, ptr %i.ry, align 8, !tbaa !108
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  store ptr %i.ug, ptr %i.rq, align 8, !tbaa !188
  br label %_ZN3gmx31KeyValueTreeUniformArrayBuilderIdE8addValueERKd.exit

bb.bw:                                            ; preds = %.preheader
  %i.uh = load ptr, ptr %i.rc, align 8, !tbaa !190 ; 12 uses
  %i.ui = ptrtoint ptr %i.ry to i64               ; 3 uses
  %i.uj = ptrtoint ptr %i.uh to i64               ; 4 uses
  %i.uk = sub i64 %i.ui, %i.uj                    ; 3 uses
  %i.ul = icmp eq i64 %i.uk, 9223372036854775800
  br i1 %i.ul, label %bb.bx, label %_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.bx:                                            ; preds = %bb.cd, %bb.ca, %bb.bw
  %.lcssa401 = phi ptr [ %i.rv, %bb.bw ], [ %i.wk, %bb.ca ], [ %i.yp, %bb.cd ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.170) #30
          to label %.noexc7.i unwind label %_ZN3gmx17KeyValueTreeValueD2Ev.exit6.i.loopexit.split-lp

.noexc7.i:                                        ; preds = %bb.bx
  unreachable

_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bw
  %i.um = ashr exact i64 %i.uk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.um, i64 1)
  %i.un = add nsw i64 %.sroa.speculated.i.i.i, %i.um ; 2 uses
  %i.uo = icmp ult i64 %i.un, %i.um
  %i.up = call i64 @llvm.umin.i64(i64 %i.un, i64 1152921504606846975)
  %i.uq = select i1 %i.uo, i64 1152921504606846975, i64 %i.up ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.uq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ur = shl nuw nsw i64 %i.uq, 3
  %i.us = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ur) #31
          to label %.noexc8.i unwind label %_ZN3gmx17KeyValueTreeValueD2Ev.exit6.i.loopexit ; 12 uses

.noexc8.i:                                        ; preds = %_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 %i.uk
  store i64 %i.rx, ptr %i.ut, align 8, !tbaa !108
  %.not10.i.i.i.i.i = icmp eq ptr %i.uh, %i.ry
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %iter.check694

iter.check694:                                    ; preds = %.noexc8.i
  %i.uu = add i64 %i.ui, -8
  %i.uv = sub i64 %i.uu, %i.uj                    ; 3 uses
  %i.uw = lshr i64 %i.uv, 3
  %i.ux = add nuw nsw i64 %i.uw, 1                ; 5 uses
  %min.iters.check674 = icmp ult i64 %i.uv, 24
  br i1 %min.iters.check674, label %.lr.ph.i.i.i.i.i.preheader, label %vector.memcheck675

vector.memcheck675:                               ; preds = %iter.check694
  %i.uy = add i64 %i.ui, -8
  %i.uz = sub i64 %i.uy, %i.uj
  %i.va = and i64 %i.uz, -8
  %i.vb = add i64 %i.va, 8                        ; 2 uses
  %i.vc = getelementptr i8, ptr %i.us, i64 %i.vb
  %i.vd = getelementptr i8, ptr %i.uh, i64 %i.vb
  %bound0676 = icmp ult ptr %i.us, %i.vd
  %bound1677 = icmp ult ptr %i.uh, %i.vc
  %found.conflict678 = and i1 %bound0676, %bound1677
  br i1 %found.conflict678, label %.lr.ph.i.i.i.i.i.preheader, label %vector.main.loop.iter.check679

vector.main.loop.iter.check679:                   ; preds = %vector.memcheck675
  %min.iters.check680 = icmp ult i64 %i.uv, 120
  br i1 %min.iters.check680, label %vec.epilog.ph698, label %vector.ph681

vector.ph681:                                     ; preds = %vector.main.loop.iter.check679
  %i.ve = and i64 %i.ux, 12
  %n.vec682 = and i64 %i.ux, 4611686018427387888  ; 4 uses
  %i.vf = shl i64 %n.vec682, 3                    ; 2 uses
  %i.vg = getelementptr i8, ptr %i.us, i64 %i.vf  ; 2 uses
  %i.vh = getelementptr i8, ptr %i.uh, i64 %i.vf
  br label %vector.body683

vector.body683:                                   ; preds = %vector.ph681, %vector.body683
  %index684 = phi i64 [ 0, %vector.ph681 ], [ %index.next691, %vector.body683 ] ; 2 uses
  %i.vi = shl i64 %index684, 3                    ; 2 uses
  %next.gep685 = getelementptr i8, ptr %i.us, i64 %i.vi ; 4 uses
  %next.gep686 = getelementptr i8, ptr %i.uh, i64 %i.vi ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !614)
  call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.vj = getelementptr i8, ptr %next.gep686, i64 32
  %i.vk = getelementptr i8, ptr %next.gep686, i64 64
  %i.vl = getelementptr i8, ptr %next.gep686, i64 96
  %wide.load687 = load <4 x i64>, ptr %next.gep686, align 8, !tbaa !108, !alias.scope !616
  %wide.load688 = load <4 x i64>, ptr %i.vj, align 8, !tbaa !108, !alias.scope !616
  %wide.load689 = load <4 x i64>, ptr %i.vk, align 8, !tbaa !108, !alias.scope !616
  %wide.load690 = load <4 x i64>, ptr %i.vl, align 8, !tbaa !108, !alias.scope !616
  %i.vm = getelementptr i8, ptr %next.gep685, i64 32
  %i.vn = getelementptr i8, ptr %next.gep685, i64 64
  %i.vo = getelementptr i8, ptr %next.gep685, i64 96
  store <4 x i64> %wide.load687, ptr %next.gep685, align 8, !tbaa !108, !alias.scope !617, !noalias !618
  store <4 x i64> %wide.load688, ptr %i.vm, align 8, !tbaa !108, !alias.scope !617, !noalias !618
  store <4 x i64> %wide.load689, ptr %i.vn, align 8, !tbaa !108, !alias.scope !617, !noalias !618
  store <4 x i64> %wide.load690, ptr %i.vo, align 8, !tbaa !108, !alias.scope !617, !noalias !618
  %32 = getelementptr i8, ptr %next.gep686, i64 32
  %33 = getelementptr i8, ptr %next.gep686, i64 64
  %34 = getelementptr i8, ptr %next.gep686, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep686, align 8, !tbaa !108, !alias.scope !616
  store <4 x ptr> splat (ptr null), ptr %32, align 8, !tbaa !108, !alias.scope !616
  store <4 x ptr> splat (ptr null), ptr %33, align 8, !tbaa !108, !alias.scope !616
  store <4 x ptr> splat (ptr null), ptr %34, align 8, !tbaa !108, !alias.scope !616
  %index.next691 = add nuw i64 %index684, 16      ; 2 uses
  %i.vp = icmp eq i64 %index.next691, %n.vec682
  br i1 %i.vp, label %middle.block692, label %vector.body683, !llvm.loop !562

middle.block692:                                  ; preds = %vector.body683
  %cmp.n693 = icmp eq i64 %i.ux, %n.vec682
  br i1 %cmp.n693, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %vec.epilog.iter.check695

vec.epilog.iter.check695:                         ; preds = %middle.block692
  %min.epilog.iters.check697 = icmp eq i64 %i.ve, 0
  br i1 %min.epilog.iters.check697, label %.lr.ph.i.i.i.i.i.preheader, label %vec.epilog.ph698, !prof !128

vec.epilog.ph698:                                 ; preds = %vector.main.loop.iter.check679, %vec.epilog.iter.check695
  %vec.epilog.resume.val699 = phi i64 [ %n.vec682, %vec.epilog.iter.check695 ], [ 0, %vector.main.loop.iter.check679 ]
  %n.vec700 = and i64 %i.ux, 4611686018427387900  ; 3 uses
  %i.vq = shl i64 %n.vec700, 3                    ; 2 uses
  %i.vr = getelementptr i8, ptr %i.us, i64 %i.vq  ; 2 uses
  %i.vs = getelementptr i8, ptr %i.uh, i64 %i.vq
  br label %vec.epilog.vector.body701

vec.epilog.vector.body701:                        ; preds = %vec.epilog.vector.body701, %vec.epilog.ph698
  %index702 = phi i64 [ %vec.epilog.resume.val699, %vec.epilog.ph698 ], [ %index.next706, %vec.epilog.vector.body701 ] ; 2 uses
  %i.vt = shl i64 %index702, 3                    ; 2 uses
  %next.gep703 = getelementptr i8, ptr %i.us, i64 %i.vt
  %next.gep704 = getelementptr i8, ptr %i.uh, i64 %i.vt ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !614)
  call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %wide.load705 = load <4 x i64>, ptr %next.gep704, align 8, !tbaa !108, !alias.scope !616
  store <4 x i64> %wide.load705, ptr %next.gep703, align 8, !tbaa !108, !alias.scope !617, !noalias !618
  store <4 x ptr> splat (ptr null), ptr %next.gep704, align 8, !tbaa !108, !alias.scope !616
  %index.next706 = add nuw i64 %index702, 4       ; 2 uses
  %i.vu = icmp eq i64 %index.next706, %n.vec700
  br i1 %i.vu, label %vec.epilog.middle.block707, label %vec.epilog.vector.body701, !llvm.loop !563

vec.epilog.middle.block707:                       ; preds = %vec.epilog.vector.body701
  %cmp.n708 = icmp eq i64 %i.ux, %n.vec700
  br i1 %cmp.n708, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %iter.check694, %vector.memcheck675, %vec.epilog.iter.check695, %vec.epilog.middle.block707
  %.012.i.i.i.i.i.ph = phi ptr [ %i.us, %iter.check694 ], [ %i.us, %vector.memcheck675 ], [ %i.vg, %vec.epilog.iter.check695 ], [ %i.vr, %vec.epilog.middle.block707 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.uh, %iter.check694 ], [ %i.uh, %vector.memcheck675 ], [ %i.vh, %vec.epilog.iter.check695 ], [ %i.vs, %vec.epilog.middle.block707 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.vx, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.vw, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !614)
  call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.vv = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !108, !alias.scope !615
  store i64 %i.vv, ptr %.012.i.i.i.i.i, align 8, !tbaa !108, !alias.scope !614
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !108, !alias.scope !615
  %i.vw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.vw, %i.ry
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !564

_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block692, %vec.epilog.middle.block707, %.noexc8.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.us, %.noexc8.i ], [ %i.vr, %vec.epilog.middle.block707 ], [ %i.vg, %middle.block692 ], [ %i.vx, %.lr.ph.i.i.i.i.i ]
  %i.vy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.uh, null
  br i1 %.not.i23.i.i, label %.noexc.i, label %bb.by

bb.by:                                            ; preds = %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.vz = load ptr, ptr %i.rr, align 8, !tbaa !189
  %i.wa = ptrtoint ptr %i.vz to i64
  %i.wb = sub i64 %i.wa, %i.uj
  call void @_ZdlPvm(ptr noundef nonnull %i.uh, i64 noundef %i.wb) #28
  br label %.noexc.i

.noexc.i:                                         ; preds = %bb.by, %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.us, ptr %i.rc, align 8, !tbaa !190
  store ptr %i.vy, ptr %i.rq, align 8, !tbaa !188
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %i.uq
  store ptr %i.wc, ptr %i.rr, align 8, !tbaa !189
  br label %_ZN3gmx31KeyValueTreeUniformArrayBuilderIdE8addValueERKd.exit

common.resume:                                    ; preds = %bb.co, %_ZN3gmx17KeyValueTreeValueD2Ev.exit6.i
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi, %_ZN3gmx17KeyValueTreeValueD2Ev.exit6.i ], [ %.pn76.pn.pn.pn, %bb.co ]
  resume { ptr, i32 } %common.resume.op

_ZN3gmx17KeyValueTreeValueD2Ev.exit6.i.loopexit:  ; preds = %_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i.2, %_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i.1, %_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.lcssa402 = phi ptr [ %i.rv, %_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.wk, %_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i.1 ], [ %i.yp, %_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i.2 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3gmx17KeyValueTreeValueD2Ev.exit6.i

_ZN3gmx17KeyValueTreeValueD2Ev.exit6.i.loopexit.split-lp: ; preds = %bb.bx
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN3gmx17KeyValueTreeValueD2Ev.exit6.i

_ZN3gmx17KeyValueTreeValueD2Ev.exit6.i:           ; preds = %_ZN3gmx17KeyValueTreeValueD2Ev.exit6.i.loopexit.split-lp, %_ZN3gmx17KeyValueTreeValueD2Ev.exit6.i.loopexit
  %i.wd = phi ptr [ %.lcssa402, %_ZN3gmx17KeyValueTreeValueD2Ev.exit6.i.loopexit ], [ %.lcssa401, %_ZN3gmx17KeyValueTreeValueD2Ev.exit6.i.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZN3gmx17KeyValueTreeValueD2Ev.exit6.i.loopexit ], [ %lpad.loopexit.split-lp, %_ZN3gmx17KeyValueTreeValueD2Ev.exit6.i.loopexit.split-lp ]
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !34
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  %i.wg = load ptr, ptr %i.wf, align 8
  call void %i.wg(ptr noundef nonnull align 8 dereferenceable(8) %i.wd) #27, !inline_history !565
  br label %common.resume

_ZN3gmx31KeyValueTreeUniformArrayBuilderIdE8addValueERKd.exit: ; preds = %bb.bv, %.noexc.i
  %i.wh = getelementptr inbounds nuw i8, ptr %i.rs, i64 4
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !175
  %i.wj = fpext float %i.wi to double
  %i.wk = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31, !noalias !611 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx3Any7ContentIdEE, i64 16), ptr %i.wk, align 8, !tbaa !34, !noalias !611
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 8
  store double %i.wj, ptr %i.wl, align 8, !tbaa !185, !noalias !611
  %i.wm = ptrtoint ptr %i.wk to i64               ; 2 uses
  %i.wn = load ptr, ptr %i.rq, align 8, !tbaa !188 ; 6 uses
  %i.wo = load ptr, ptr %i.rr, align 8, !tbaa !189
  %.not.i.i.i.i.1 = icmp eq ptr %i.wn, %i.wo
  br i1 %.not.i.i.i.i.1, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %_ZN3gmx31KeyValueTreeUniformArrayBuilderIdE8addValueERKd.exit
  store i64 %i.wm, ptr %i.wn, align 8, !tbaa !108
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  store ptr %i.wp, ptr %i.rq, align 8, !tbaa !188
  br label %_ZN3gmx31KeyValueTreeUniformArrayBuilderIdE8addValueERKd.exit.1

bb.ca:                                            ; preds = %_ZN3gmx31KeyValueTreeUniformArrayBuilderIdE8addValueERKd.exit
  %i.wq = load ptr, ptr %i.rc, align 8, !tbaa !190 ; 12 uses
  %i.wr = ptrtoint ptr %i.wn to i64               ; 3 uses
  %i.ws = ptrtoint ptr %i.wq to i64               ; 4 uses
  %i.wt = sub i64 %i.wr, %i.ws                    ; 3 uses
  %i.wu = icmp eq i64 %i.wt, 9223372036854775800
  br i1 %i.wu, label %bb.bx, label %_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i.1

_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i.1: ; preds = %bb.ca
  %i.wv = ashr exact i64 %i.wt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.1 = call i64 @llvm.umax.i64(i64 %i.wv, i64 1)
  %i.ww = add nsw i64 %.sroa.speculated.i.i.i.1, %i.wv ; 2 uses
  %i.wx = icmp ult i64 %i.ww, %i.wv
  %i.wy = call i64 @llvm.umin.i64(i64 %i.ww, i64 1152921504606846975)
  %i.wz = select i1 %i.wx, i64 1152921504606846975, i64 %i.wy ; 3 uses
  %.not.i.i.i.1 = icmp ne i64 %i.wz, 0
  call void @llvm.assume(i1 %.not.i.i.i.1)
  %i.xa = shl nuw nsw i64 %i.wz, 3
  %i.xb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.xa) #31
          to label %.noexc8.i.1 unwind label %_ZN3gmx17KeyValueTreeValueD2Ev.exit6.i.loopexit ; 12 uses

.noexc8.i.1:                                      ; preds = %_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i.1
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 %i.wt
  store i64 %i.wm, ptr %i.xc, align 8, !tbaa !108
  %.not10.i.i.i.i.i.1 = icmp eq ptr %i.wq, %i.wn
  br i1 %.not10.i.i.i.i.i.1, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.1, label %iter.check650

iter.check650:                                    ; preds = %.noexc8.i.1
  %i.xd = add i64 %i.wr, -8
  %i.xe = sub i64 %i.xd, %i.ws                    ; 3 uses
  %i.xf = lshr i64 %i.xe, 3
  %i.xg = add nuw nsw i64 %i.xf, 1                ; 5 uses
  %min.iters.check630 = icmp ult i64 %i.xe, 24
  br i1 %min.iters.check630, label %.lr.ph.i.i.i.i.i.1.preheader, label %vector.memcheck631

vector.memcheck631:                               ; preds = %iter.check650
  %i.xh = add i64 %i.wr, -8
  %i.xi = sub i64 %i.xh, %i.ws
  %i.xj = and i64 %i.xi, -8
  %i.xk = add i64 %i.xj, 8                        ; 2 uses
  %i.xl = getelementptr i8, ptr %i.xb, i64 %i.xk
  %i.xm = getelementptr i8, ptr %i.wq, i64 %i.xk
  %bound0632 = icmp ult ptr %i.xb, %i.xm
  %bound1633 = icmp ult ptr %i.wq, %i.xl
  %found.conflict634 = and i1 %bound0632, %bound1633
  br i1 %found.conflict634, label %.lr.ph.i.i.i.i.i.1.preheader, label %vector.main.loop.iter.check635

vector.main.loop.iter.check635:                   ; preds = %vector.memcheck631
  %min.iters.check636 = icmp ult i64 %i.xe, 120
  br i1 %min.iters.check636, label %vec.epilog.ph654, label %vector.ph637

vector.ph637:                                     ; preds = %vector.main.loop.iter.check635
  %i.xn = and i64 %i.xg, 12
  %n.vec638 = and i64 %i.xg, 4611686018427387888  ; 4 uses
  %i.xo = shl i64 %n.vec638, 3                    ; 2 uses
  %i.xp = getelementptr i8, ptr %i.xb, i64 %i.xo  ; 2 uses
  %i.xq = getelementptr i8, ptr %i.wq, i64 %i.xo
  br label %vector.body639

vector.body639:                                   ; preds = %vector.ph637, %vector.body639
  %index640 = phi i64 [ 0, %vector.ph637 ], [ %index.next647, %vector.body639 ] ; 2 uses
  %i.xr = shl i64 %index640, 3                    ; 2 uses
  %next.gep641 = getelementptr i8, ptr %i.xb, i64 %i.xr ; 4 uses
  %next.gep642 = getelementptr i8, ptr %i.wq, i64 %i.xr ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %i.xs = getelementptr i8, ptr %next.gep642, i64 32
  %i.xt = getelementptr i8, ptr %next.gep642, i64 64
  %i.xu = getelementptr i8, ptr %next.gep642, i64 96
  %wide.load643 = load <4 x i64>, ptr %next.gep642, align 8, !tbaa !108, !alias.scope !621
  %wide.load644 = load <4 x i64>, ptr %i.xs, align 8, !tbaa !108, !alias.scope !621
  %wide.load645 = load <4 x i64>, ptr %i.xt, align 8, !tbaa !108, !alias.scope !621
  %wide.load646 = load <4 x i64>, ptr %i.xu, align 8, !tbaa !108, !alias.scope !621
  %i.xv = getelementptr i8, ptr %next.gep641, i64 32
  %i.xw = getelementptr i8, ptr %next.gep641, i64 64
  %i.xx = getelementptr i8, ptr %next.gep641, i64 96
  store <4 x i64> %wide.load643, ptr %next.gep641, align 8, !tbaa !108, !alias.scope !622, !noalias !623
  store <4 x i64> %wide.load644, ptr %i.xv, align 8, !tbaa !108, !alias.scope !622, !noalias !623
  store <4 x i64> %wide.load645, ptr %i.xw, align 8, !tbaa !108, !alias.scope !622, !noalias !623
  store <4 x i64> %wide.load646, ptr %i.xx, align 8, !tbaa !108, !alias.scope !622, !noalias !623
  %35 = getelementptr i8, ptr %next.gep642, i64 32
  %36 = getelementptr i8, ptr %next.gep642, i64 64
  %37 = getelementptr i8, ptr %next.gep642, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep642, align 8, !tbaa !108, !alias.scope !621
  store <4 x ptr> splat (ptr null), ptr %35, align 8, !tbaa !108, !alias.scope !621
  store <4 x ptr> splat (ptr null), ptr %36, align 8, !tbaa !108, !alias.scope !621
  store <4 x ptr> splat (ptr null), ptr %37, align 8, !tbaa !108, !alias.scope !621
  %index.next647 = add nuw i64 %index640, 16      ; 2 uses
  %i.xy = icmp eq i64 %index.next647, %n.vec638
  br i1 %i.xy, label %middle.block648, label %vector.body639, !llvm.loop !572

middle.block648:                                  ; preds = %vector.body639
  %cmp.n649 = icmp eq i64 %i.xg, %n.vec638
  br i1 %cmp.n649, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.1, label %vec.epilog.iter.check651

vec.epilog.iter.check651:                         ; preds = %middle.block648
  %min.epilog.iters.check653 = icmp eq i64 %i.xn, 0
  br i1 %min.epilog.iters.check653, label %.lr.ph.i.i.i.i.i.1.preheader, label %vec.epilog.ph654, !prof !128

vec.epilog.ph654:                                 ; preds = %vector.main.loop.iter.check635, %vec.epilog.iter.check651
  %vec.epilog.resume.val655 = phi i64 [ %n.vec638, %vec.epilog.iter.check651 ], [ 0, %vector.main.loop.iter.check635 ]
  %n.vec656 = and i64 %i.xg, 4611686018427387900  ; 3 uses
  %i.xz = shl i64 %n.vec656, 3                    ; 2 uses
  %i.ya = getelementptr i8, ptr %i.xb, i64 %i.xz  ; 2 uses
  %i.yb = getelementptr i8, ptr %i.wq, i64 %i.xz
  br label %vec.epilog.vector.body657

vec.epilog.vector.body657:                        ; preds = %vec.epilog.vector.body657, %vec.epilog.ph654
  %index658 = phi i64 [ %vec.epilog.resume.val655, %vec.epilog.ph654 ], [ %index.next662, %vec.epilog.vector.body657 ] ; 2 uses
  %i.yc = shl i64 %index658, 3                    ; 2 uses
  %next.gep659 = getelementptr i8, ptr %i.xb, i64 %i.yc
  %next.gep660 = getelementptr i8, ptr %i.wq, i64 %i.yc ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %wide.load661 = load <4 x i64>, ptr %next.gep660, align 8, !tbaa !108, !alias.scope !621
  store <4 x i64> %wide.load661, ptr %next.gep659, align 8, !tbaa !108, !alias.scope !622, !noalias !623
  store <4 x ptr> splat (ptr null), ptr %next.gep660, align 8, !tbaa !108, !alias.scope !621
  %index.next662 = add nuw i64 %index658, 4       ; 2 uses
  %i.yd = icmp eq i64 %index.next662, %n.vec656
  br i1 %i.yd, label %vec.epilog.middle.block663, label %vec.epilog.vector.body657, !llvm.loop !573

vec.epilog.middle.block663:                       ; preds = %vec.epilog.vector.body657
  %cmp.n664 = icmp eq i64 %i.xg, %n.vec656
  br i1 %cmp.n664, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.1, label %.lr.ph.i.i.i.i.i.1.preheader

.lr.ph.i.i.i.i.i.1.preheader:                     ; preds = %iter.check650, %vector.memcheck631, %vec.epilog.iter.check651, %vec.epilog.middle.block663
  %.012.i.i.i.i.i.1.ph = phi ptr [ %i.xb, %iter.check650 ], [ %i.xb, %vector.memcheck631 ], [ %i.xp, %vec.epilog.iter.check651 ], [ %i.ya, %vec.epilog.middle.block663 ]
  %.0911.i.i.i.i.i.1.ph = phi ptr [ %i.wq, %iter.check650 ], [ %i.wq, %vector.memcheck631 ], [ %i.xq, %vec.epilog.iter.check651 ], [ %i.yb, %vec.epilog.middle.block663 ]
  br label %.lr.ph.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph.i.i.i.i.i.1.preheader, %.lr.ph.i.i.i.i.i.1
  %.012.i.i.i.i.i.1 = phi ptr [ %i.yg, %.lr.ph.i.i.i.i.i.1 ], [ %.012.i.i.i.i.i.1.ph, %.lr.ph.i.i.i.i.i.1.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.1 = phi ptr [ %i.yf, %.lr.ph.i.i.i.i.i.1 ], [ %.0911.i.i.i.i.i.1.ph, %.lr.ph.i.i.i.i.i.1.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %i.ye = load i64, ptr %.0911.i.i.i.i.i.1, align 8, !tbaa !108, !alias.scope !620
  store i64 %i.ye, ptr %.012.i.i.i.i.i.1, align 8, !tbaa !108, !alias.scope !619
  store ptr null, ptr %.0911.i.i.i.i.i.1, align 8, !tbaa !108, !alias.scope !620
  %i.yf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.1, i64 8 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.1, i64 8 ; 2 uses
  %.not.i.i.i.i.i.1 = icmp eq ptr %i.yf, %i.wn
  br i1 %.not.i.i.i.i.i.1, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.1, label %.lr.ph.i.i.i.i.i.1, !llvm.loop !574

_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.1, %middle.block648, %vec.epilog.middle.block663, %.noexc8.i.1
  %.0.lcssa.i.i.i.i.i.1 = phi ptr [ %i.xb, %.noexc8.i.1 ], [ %i.ya, %vec.epilog.middle.block663 ], [ %i.xp, %middle.block648 ], [ %i.yg, %.lr.ph.i.i.i.i.i.1 ]
  %i.yh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.1, i64 8
  %.not.i23.i.i.1 = icmp eq ptr %i.wq, null
  br i1 %.not.i23.i.i.1, label %.noexc.i.1, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.1
  %i.yi = load ptr, ptr %i.rr, align 8, !tbaa !189
  %i.yj = ptrtoint ptr %i.yi to i64
  %i.yk = sub i64 %i.yj, %i.ws
  call void @_ZdlPvm(ptr noundef nonnull %i.wq, i64 noundef %i.yk) #28
  br label %.noexc.i.1

.noexc.i.1:                                       ; preds = %bb.cb, %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.1
  store ptr %i.xb, ptr %i.rc, align 8, !tbaa !190
  store ptr %i.yh, ptr %i.rq, align 8, !tbaa !188
  %i.yl = getelementptr inbounds nuw [8 x i8], ptr %i.xb, i64 %i.wz
  store ptr %i.yl, ptr %i.rr, align 8, !tbaa !189
  br label %_ZN3gmx31KeyValueTreeUniformArrayBuilderIdE8addValueERKd.exit.1

_ZN3gmx31KeyValueTreeUniformArrayBuilderIdE8addValueERKd.exit.1: ; preds = %.noexc.i.1, %bb.bz
  %i.ym = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %i.yn = load float, ptr %i.ym, align 4, !tbaa !175
  %i.yo = fpext float %i.yn to double
  %i.yp = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31, !noalias !611 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx3Any7ContentIdEE, i64 16), ptr %i.yp, align 8, !tbaa !34, !noalias !611
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yp, i64 8
  store double %i.yo, ptr %i.yq, align 8, !tbaa !185, !noalias !611
  %i.yr = ptrtoint ptr %i.yp to i64               ; 2 uses
  %i.ys = load ptr, ptr %i.rq, align 8, !tbaa !188 ; 6 uses
  %i.yt = load ptr, ptr %i.rr, align 8, !tbaa !189
  %.not.i.i.i.i.2 = icmp eq ptr %i.ys, %i.yt
  br i1 %.not.i.i.i.i.2, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %_ZN3gmx31KeyValueTreeUniformArrayBuilderIdE8addValueERKd.exit.1
  store i64 %i.yr, ptr %i.ys, align 8, !tbaa !108
  %i.yu = getelementptr inbounds nuw i8, ptr %i.ys, i64 8
  store ptr %i.yu, ptr %i.rq, align 8, !tbaa !188
  br label %_ZN3gmx31KeyValueTreeUniformArrayBuilderIdE8addValueERKd.exit.2

bb.cd:                                            ; preds = %_ZN3gmx31KeyValueTreeUniformArrayBuilderIdE8addValueERKd.exit.1
  %i.yv = load ptr, ptr %i.rc, align 8, !tbaa !190 ; 12 uses
  %i.yw = ptrtoint ptr %i.ys to i64               ; 3 uses
  %i.yx = ptrtoint ptr %i.yv to i64               ; 4 uses
  %i.yy = sub i64 %i.yw, %i.yx                    ; 3 uses
  %i.yz = icmp eq i64 %i.yy, 9223372036854775800
  br i1 %i.yz, label %bb.bx, label %_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i.2

_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i.2: ; preds = %bb.cd
  %i.za = ashr exact i64 %i.yy, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.2 = call i64 @llvm.umax.i64(i64 %i.za, i64 1)
  %i.zb = add nsw i64 %.sroa.speculated.i.i.i.2, %i.za ; 2 uses
  %i.zc = icmp ult i64 %i.zb, %i.za
  %i.zd = call i64 @llvm.umin.i64(i64 %i.zb, i64 1152921504606846975)
  %i.ze = select i1 %i.zc, i64 1152921504606846975, i64 %i.zd ; 3 uses
  %.not.i.i.i.2 = icmp ne i64 %i.ze, 0
  call void @llvm.assume(i1 %.not.i.i.i.2)
  %i.zf = shl nuw nsw i64 %i.ze, 3
  %i.zg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zf) #31
          to label %.noexc8.i.2 unwind label %_ZN3gmx17KeyValueTreeValueD2Ev.exit6.i.loopexit ; 12 uses

.noexc8.i.2:                                      ; preds = %_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i.i.2
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.yy
  store i64 %i.yr, ptr %i.zh, align 8, !tbaa !108
  %.not10.i.i.i.i.i.2 = icmp eq ptr %i.yv, %i.ys
  br i1 %.not10.i.i.i.i.i.2, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.2, label %iter.check

iter.check:                                       ; preds = %.noexc8.i.2
  %i.zi = add i64 %i.yw, -8
  %i.zj = sub i64 %i.zi, %i.yx                    ; 3 uses
  %i.zk = lshr i64 %i.zj, 3
  %i.zl = add nuw nsw i64 %i.zk, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.zj, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.2.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.zm = add i64 %i.yw, -8
  %i.zn = sub i64 %i.zm, %i.yx
  %i.zo = and i64 %i.zn, -8
  %i.zp = add i64 %i.zo, 8                        ; 2 uses
  %i.zq = getelementptr i8, ptr %i.zg, i64 %i.zp
  %i.zr = getelementptr i8, ptr %i.yv, i64 %i.zp
  %bound0 = icmp ult ptr %i.zg, %i.zr
  %bound1 = icmp ult ptr %i.yv, %i.zq
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.2.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check610 = icmp ult i64 %i.zj, 120
  br i1 %min.iters.check610, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.zs = and i64 %i.zl, 12
  %n.vec = and i64 %i.zl, 4611686018427387888     ; 4 uses
  %i.zt = shl i64 %n.vec, 3                       ; 2 uses
  %i.zu = getelementptr i8, ptr %i.zg, i64 %i.zt  ; 2 uses
  %i.zv = getelementptr i8, ptr %i.yv, i64 %i.zt
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.zw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.zg, i64 %i.zw ; 4 uses
  %next.gep611 = getelementptr i8, ptr %i.yv, i64 %i.zw ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.zx = getelementptr i8, ptr %next.gep611, i64 32
  %i.zy = getelementptr i8, ptr %next.gep611, i64 64
  %i.zz = getelementptr i8, ptr %next.gep611, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep611, align 8, !tbaa !108, !alias.scope !626
  %wide.load612 = load <4 x i64>, ptr %i.zx, align 8, !tbaa !108, !alias.scope !626
  %wide.load613 = load <4 x i64>, ptr %i.zy, align 8, !tbaa !108, !alias.scope !626
  %wide.load614 = load <4 x i64>, ptr %i.zz, align 8, !tbaa !108, !alias.scope !626
  %i.aaa = getelementptr i8, ptr %next.gep, i64 32
  %i.aab = getelementptr i8, ptr %next.gep, i64 64
  %i.aac = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !108, !alias.scope !627, !noalias !628
  store <4 x i64> %wide.load612, ptr %i.aaa, align 8, !tbaa !108, !alias.scope !627, !noalias !628
  store <4 x i64> %wide.load613, ptr %i.aab, align 8, !tbaa !108, !alias.scope !627, !noalias !628
  store <4 x i64> %wide.load614, ptr %i.aac, align 8, !tbaa !108, !alias.scope !627, !noalias !628
  %38 = getelementptr i8, ptr %next.gep611, i64 32
  %39 = getelementptr i8, ptr %next.gep611, i64 64
  %40 = getelementptr i8, ptr %next.gep611, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep611, align 8, !tbaa !108, !alias.scope !626
  store <4 x ptr> splat (ptr null), ptr %38, align 8, !tbaa !108, !alias.scope !626
  store <4 x ptr> splat (ptr null), ptr %39, align 8, !tbaa !108, !alias.scope !626
  store <4 x ptr> splat (ptr null), ptr %40, align 8, !tbaa !108, !alias.scope !626
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aad = icmp eq i64 %index.next, %n.vec
  br i1 %i.aad, label %middle.block, label %vector.body, !llvm.loop !581

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.zl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.2, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.zs, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.2.preheader, label %vec.epilog.ph, !prof !128

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec615 = and i64 %i.zl, 4611686018427387900  ; 3 uses
  %i.aae = shl i64 %n.vec615, 3                   ; 2 uses
  %i.aaf = getelementptr i8, ptr %i.zg, i64 %i.aae ; 2 uses
  %i.aag = getelementptr i8, ptr %i.yv, i64 %i.aae
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index616 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next620, %vec.epilog.vector.body ] ; 2 uses
  %i.aah = shl i64 %index616, 3                   ; 2 uses
  %next.gep617 = getelementptr i8, ptr %i.zg, i64 %i.aah
  %next.gep618 = getelementptr i8, ptr %i.yv, i64 %i.aah ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %wide.load619 = load <4 x i64>, ptr %next.gep618, align 8, !tbaa !108, !alias.scope !626
  store <4 x i64> %wide.load619, ptr %next.gep617, align 8, !tbaa !108, !alias.scope !627, !noalias !628
  store <4 x ptr> splat (ptr null), ptr %next.gep618, align 8, !tbaa !108, !alias.scope !626
  %index.next620 = add nuw i64 %index616, 4       ; 2 uses
  %i.aai = icmp eq i64 %index.next620, %n.vec615
  br i1 %i.aai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !582

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n621 = icmp eq i64 %i.zl, %n.vec615
  br i1 %cmp.n621, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.2, label %.lr.ph.i.i.i.i.i.2.preheader

.lr.ph.i.i.i.i.i.2.preheader:                     ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.2.ph = phi ptr [ %i.zg, %iter.check ], [ %i.zg, %vector.memcheck ], [ %i.zu, %vec.epilog.iter.check ], [ %i.aaf, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.i.2.ph = phi ptr [ %i.yv, %iter.check ], [ %i.yv, %vector.memcheck ], [ %i.zv, %vec.epilog.iter.check ], [ %i.aag, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.2

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph.i.i.i.i.i.2.preheader, %.lr.ph.i.i.i.i.i.2
  %.012.i.i.i.i.i.2 = phi ptr [ %i.aal, %.lr.ph.i.i.i.i.i.2 ], [ %.012.i.i.i.i.i.2.ph, %.lr.ph.i.i.i.i.i.2.preheader ] ; 2 uses
  %.0911.i.i.i.i.i.2 = phi ptr [ %i.aak, %.lr.ph.i.i.i.i.i.2 ], [ %.0911.i.i.i.i.i.2.ph, %.lr.ph.i.i.i.i.i.2.preheader ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.aaj = load i64, ptr %.0911.i.i.i.i.i.2, align 8, !tbaa !108, !alias.scope !625
  store i64 %i.aaj, ptr %.012.i.i.i.i.i.2, align 8, !tbaa !108, !alias.scope !624
  store ptr null, ptr %.0911.i.i.i.i.i.2, align 8, !tbaa !108, !alias.scope !625
  %i.aak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.2, i64 8 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.2, i64 8 ; 2 uses
  %.not.i.i.i.i.i.2 = icmp eq ptr %i.aak, %i.ys
  br i1 %.not.i.i.i.i.i.2, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.2, label %.lr.ph.i.i.i.i.i.2, !llvm.loop !583

_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.2: ; preds = %.lr.ph.i.i.i.i.i.2, %middle.block, %vec.epilog.middle.block, %.noexc8.i.2
  %.0.lcssa.i.i.i.i.i.2 = phi ptr [ %i.zg, %.noexc8.i.2 ], [ %i.aaf, %vec.epilog.middle.block ], [ %i.zu, %middle.block ], [ %i.aal, %.lr.ph.i.i.i.i.i.2 ]
  %i.aam = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.2, i64 8
  %.not.i23.i.i.2 = icmp eq ptr %i.yv, null
  br i1 %.not.i23.i.i.2, label %.noexc.i.2, label %bb.ce

bb.ce:                                            ; preds = %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.2
  %i.aan = load ptr, ptr %i.rr, align 8, !tbaa !189
  %i.aao = ptrtoint ptr %i.aan to i64
  %i.aap = sub i64 %i.aao, %i.yx
  call void @_ZdlPvm(ptr noundef nonnull %i.yv, i64 noundef %i.aap) #28
  br label %.noexc.i.2

.noexc.i.2:                                       ; preds = %bb.ce, %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.2
  store ptr %i.zg, ptr %i.rc, align 8, !tbaa !190
  store ptr %i.aam, ptr %i.rq, align 8, !tbaa !188
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.zg, i64 %i.ze
  store ptr %i.aaq, ptr %i.rr, align 8, !tbaa !189
  br label %_ZN3gmx31KeyValueTreeUniformArrayBuilderIdE8addValueERKd.exit.2

_ZN3gmx31KeyValueTreeUniformArrayBuilderIdE8addValueERKd.exit.2: ; preds = %.noexc.i.2, %bb.cc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i300, label %.preheader, !llvm.loop !584

bb.cf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301, %bb.bl
  %i.aar = phi i64 [ %i.sj, %bb.bl ], [ %.pre.i303, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i301 ]
  %i.aas = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.aat = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  store i64 %i.aar, ptr %i.aat, align 8, !tbaa !30, !alias.scope !613
  store ptr %i.sg, ptr %i.sd, align 8, !tbaa !29
  store i64 0, ptr %i.aas, align 8, !tbaa !30
  store i8 0, ptr %i.sg, align 8, !tbaa !32
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.aau = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN3gmx12_GLOBAL__N_113c_qmTransTag_B5cxx11E, i64 8), align 8, !tbaa !30, !noalias !629 ; 2 uses
  %i.aav = load i64, ptr %i.aat, align 8, !tbaa !30, !noalias !629
  %i.aaw = sub i64 4611686018427387903, %i.aav
  %i.aax = icmp ult i64 %i.aaw, %i.aau
  br i1 %i.aax, label %bb.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i334

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.151) #30
          to label %.noexc338 unwind label %bb.cl

.noexc338:                                        ; preds = %bb.cg
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i334: ; preds = %bb.cf
  %i.aay = load ptr, ptr @_ZN3gmx12_GLOBAL__N_113c_qmTransTag_B5cxx11E, align 8, !tbaa !29, !noalias !629
  %i.aaz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef %i.aay, i64 noundef %i.aau)
          to label %.noexc339 unwind label %bb.cl ; 6 uses

.noexc339:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i334
  %i.aba = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 7 uses
  store ptr %i.aba, ptr %29, align 8, !tbaa !31, !alias.scope !629
  %i.abb = load ptr, ptr %i.aaz, align 8, !tbaa !29 ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aaz, i64 16 ; 5 uses
  %i.abd = icmp eq ptr %i.abb, %i.abc
  br i1 %i.abd, label %bb.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335

bb.ch:                                            ; preds = %.noexc339
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aaz, i64 8
  %i.abf = load i64, ptr %i.abe, align 8, !tbaa !30 ; 3 uses
  %i.abg = icmp ult i64 %i.abf, 16
  call void @llvm.assume(i1 %i.abg)
  %i.abh = add nuw nsw i64 %i.abf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aba, ptr noundef nonnull align 8 dereferenceable(1) %i.abc, i64 %i.abh, i1 false)
  br label %bb.ci

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335: ; preds = %.noexc339
  store ptr %i.abb, ptr %29, align 8, !tbaa !29, !alias.scope !629
  %i.abi = load i64, ptr %i.abc, align 8, !tbaa !32
  store i64 %i.abi, ptr %i.aba, align 8, !tbaa !32, !alias.scope !629
  %.phi.trans.insert.i336 = getelementptr inbounds nuw i8, ptr %i.aaz, i64 8
  %.pre.i337 = load i64, ptr %.phi.trans.insert.i336, align 8, !tbaa !30
  br label %bb.ci

bb.ci:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335, %bb.ch
  %i.abj = phi i64 [ %i.abf, %bb.ch ], [ %.pre.i337, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335 ]
  %i.abk = getelementptr inbounds nuw i8, ptr %i.aaz, i64 8
  %i.abl = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 %i.abj, ptr %i.abl, align 8, !tbaa !30, !alias.scope !629
  store ptr %i.abc, ptr %i.aaz, align 8, !tbaa !29
  store i64 0, ptr %i.abk, align 8, !tbaa !30
  store i8 0, ptr %i.abc, align 8, !tbaa !32
  %i.abm = invoke ptr @_ZN3gmx25KeyValueTreeObjectBuilder15addUniformArrayIdEENS_31KeyValueTreeUniformArrayBuilderIT_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(32) %29)
          to label %bb.cj unwind label %bb.cm

bb.cj:                                            ; preds = %bb.ci
  store ptr %i.abm, ptr %25, align 8
  %i.abn = load ptr, ptr %29, align 8, !tbaa !29  ; 2 uses
  %i.abo = icmp eq ptr %i.abn, %i.aba
  br i1 %i.abo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341: ; preds = %bb.cj
  %i.abp = load i64, ptr %i.aba, align 8, !tbaa !32
  %i.abq = add i64 %i.abp, 1
  call void @_ZdlPvm(ptr noundef %i.abn, i64 noundef %i.abq) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i341
  %i.abr = load ptr, ptr %30, align 8, !tbaa !29  ; 2 uses
  %i.abs = icmp eq ptr %i.abr, %i.se
  br i1 %i.abs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343
  %i.abt = load i64, ptr %i.se, align 8, !tbaa !32
  %i.abu = add i64 %i.abt, 1
  call void @_ZdlPvm(ptr noundef %i.abr, i64 noundef %i.abu) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i344
  %i.abv = load ptr, ptr %31, align 8, !tbaa !29  ; 2 uses
  %i.abw = icmp eq ptr %i.abv, %i.sa
  br i1 %i.abw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346
  %i.abx = load i64, ptr %i.sa, align 8, !tbaa !32
  %i.aby = add i64 %i.abx, 1
  call void @_ZdlPvm(ptr noundef %i.abv, i64 noundef %i.aby) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit349: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit346, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i347
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  %i.abz = getelementptr inbounds nuw i8, ptr %0, i64 308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.aca = load float, ptr %i.abz, align 4, !tbaa !175
  %i.acb = fpext float %i.aca to double
  store double %i.acb, ptr %i.d, align 8, !tbaa !191
  call void @_ZN3gmx31KeyValueTreeUniformArrayBuilderIdE8addValueERKd(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.acc = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.acd = load float, ptr %i.acc, align 8, !tbaa !175
  %i.ace = fpext float %i.acd to double
  store double %i.ace, ptr %i.d, align 8, !tbaa !191
  call void @_ZN3gmx31KeyValueTreeUniformArrayBuilderIdE8addValueERKd(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.acf = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.acg = load float, ptr %i.acf, align 4, !tbaa !175
  %i.ach = fpext float %i.acg to double
end_hunk_0
begin_hunk_1_@_ZN3gmx11QMMMOptions28writeInternalParametersToKvtENS_25KeyValueTreeObjectBuilderE:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #27
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333
  %.pn76.pn.pn = phi { ptr, i32 } [ %.pn76.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358 ], [ %.pn73.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #27
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109
  %.pn76.pn.pn.pn = phi { ptr, i32 } [ %.pn76.pn.pn, %bb.cn ], [ %.pn70.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit324 ], [ %.pn67.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit315 ], [ %.pn64.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit237 ], [ %.pn61.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205 ], [ %.pn58.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit173 ], [ %.pn55.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3gmx25KeyValueTreeObjectBuilder15addUniformArrayIlEENS_31KeyValueTreeUniformArrayBuilderIT_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::KeyValueTreeArray", align 8 ; 5 uses
  %3 = alloca %"class.gmx::KeyValueTreeValue", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !634
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !634
  %i.a = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
          to label %_ZN3gmx19KeyValueTreeBuilder11createValueINS_17KeyValueTreeArrayEEENS_17KeyValueTreeValueEv.exit unwind label %bb.b, !noalias !634 ; 3 uses

common.resume:                                    ; preds = %_ZN3gmx17KeyValueTreeValueD2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.x, %_ZN3gmx17KeyValueTreeValueD2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx17KeyValueTreeArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27, !noalias !634
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !634
  br label %common.resume

_ZN3gmx19KeyValueTreeBuilder11createValueINS_17KeyValueTreeArrayEEENS_17KeyValueTreeValueEv.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx3Any7ContentINS_17KeyValueTreeArrayEEE, i64 16), ptr %i.a, align 8, !tbaa !34, !noalias !635
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false), !noalias !634
  %i.d = ptrtoint ptr %i.a to i64
  store i64 %i.d, ptr %3, align 8, !tbaa !108, !alias.scope !634
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !634
  %i.e = invoke ptr @_ZN3gmx25KeyValueTreeObjectBuilder11addPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEONS_17KeyValueTreeValueE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZN3gmx19KeyValueTreeBuilder11createValueINS_17KeyValueTreeArrayEEENS_17KeyValueTreeValueEv.exit
  %i.f = load ptr, ptr %3, align 8, !tbaa !108    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN3gmx17KeyValueTreeValueD2Ev.exit, label %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i: ; preds = %bb.c
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #27, !inline_history !1
  br label %_ZN3gmx17KeyValueTreeValueD2Ev.exit

_ZN3gmx17KeyValueTreeValueD2Ev.exit:              ; preds = %bb.c, %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN3gmx17KeyValueTreeValueD2Ev.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef nonnull align 8 dereferenceable(16) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k), !inline_history !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !110  ; 3 uses
  %i.r = icmp eq ptr %i.q, @_ZTSN3gmx17KeyValueTreeArrayE
  br i1 %i.r, label %_ZN3gmx17KeyValueTreeValue7asArrayEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.q, align 1, !tbaa !32
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 42
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZNK3gmx3Any6isTypeINS_17KeyValueTreeArrayEEEbv.exit.i.i.i

_ZNK3gmx3Any6isTypeINS_17KeyValueTreeArrayEEEbv.exit.i.i.i: ; preds = %bb.e
  %i.t = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(26) @_ZTSN3gmx17KeyValueTreeArrayE) #27
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZN3gmx17KeyValueTreeValue7asArrayEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK3gmx3Any6isTypeINS_17KeyValueTreeArrayEEEbv.exit.i.i.i, %bb.e, %_ZN3gmx17KeyValueTreeValueD2Ev.exit
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.153, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx3Any7castRefINS_17KeyValueTreeArrayEEERT_vENKUlvE_clEv, ptr noundef nonnull @.str.154, i32 noundef 219) #30
  unreachable

_ZN3gmx17KeyValueTreeValue7asArrayEv.exit:        ; preds = %bb.d, %_ZNK3gmx3Any6isTypeINS_17KeyValueTreeArrayEEEbv.exit.i.i.i
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !108
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  ret ptr %i.w

bb.g:                                             ; preds = %_ZN3gmx19KeyValueTreeBuilder11createValueINS_17KeyValueTreeArrayEEENS_17KeyValueTreeValueEv.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %3, align 8, !tbaa !108    ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i3, label %_ZN3gmx17KeyValueTreeValueD2Ev.exit5, label %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i4

_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i4: ; preds = %bb.g
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #27, !inline_history !1
  br label %_ZN3gmx17KeyValueTreeValueD2Ev.exit5

_ZN3gmx17KeyValueTreeValueD2Ev.exit5:             ; preds = %bb.g, %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx31KeyValueTreeUniformArrayBuilderIlE8addValueERKl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31, !noalias !646 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx3Any7ContentIlEE, i64 16), ptr %i.a, align 8, !tbaa !34, !noalias !646
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %1, align 8, !tbaa !48, !noalias !646
  store i64 %i.c, ptr %i.b, align 8, !tbaa !193, !noalias !646
  %i.d = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !196    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !188  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !189
  %.not.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.g, align 8, !tbaa !108
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.f, align 8, !tbaa !188
  br label %_ZN3gmx17KeyValueTreeValueD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !190  ; 9 uses
  %i.l = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.170) #30
          to label %.noexc7 unwind label %_ZN3gmx17KeyValueTreeValueD2Ev.exit6

.noexc7:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i, %i.p  ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #31
          to label %.noexc8 unwind label %_ZN3gmx17KeyValueTreeValueD2Ev.exit6 ; 9 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store i64 %i.d, ptr %i.w, align 8, !tbaa !108
  %.not10.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc8
  %i.x = add i64 %i.l, -8
  %i.y = sub i64 %i.x, %i.m                       ; 3 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 5 uses
  %min.iters.check = icmp ult i64 %i.y, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.y, 120
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.aa, 12
  %n.vec = and i64 %i.aa, 4611686018427387888     ; 4 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.k, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.af ; 4 uses
  %next.gep14 = getelementptr i8, ptr %i.k, i64 %i.af ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  %i.ag = getelementptr i8, ptr %next.gep14, i64 32
  %i.ah = getelementptr i8, ptr %next.gep14, i64 64
  %i.ai = getelementptr i8, ptr %next.gep14, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep14, align 8, !tbaa !108, !alias.scope !648
  %wide.load15 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !108, !alias.scope !648
  %wide.load16 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !108, !alias.scope !648
  %wide.load17 = load <4 x i64>, ptr %i.ai, align 8, !tbaa !108, !alias.scope !648
  %i.aj = getelementptr i8, ptr %next.gep, i64 32
  %i.ak = getelementptr i8, ptr %next.gep, i64 64
  %i.al = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !108, !alias.scope !647
  store <4 x i64> %wide.load15, ptr %i.aj, align 8, !tbaa !108, !alias.scope !647
  store <4 x i64> %wide.load16, ptr %i.ak, align 8, !tbaa !108, !alias.scope !647
  store <4 x i64> %wide.load17, ptr %i.al, align 8, !tbaa !108, !alias.scope !647
  %2 = getelementptr i8, ptr %next.gep14, i64 32
  %3 = getelementptr i8, ptr %next.gep14, i64 64
  %4 = getelementptr i8, ptr %next.gep14, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep14, align 8, !tbaa !108, !alias.scope !648
  store <4 x ptr> splat (ptr null), ptr %2, align 8, !tbaa !108, !alias.scope !648
  store <4 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !108, !alias.scope !648
  store <4 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !108, !alias.scope !648
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !643

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !128

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %i.aa, 4611686018427387900   ; 3 uses
  %i.an = shl i64 %n.vec18, 3                     ; 2 uses
  %i.ao = getelementptr i8, ptr %i.v, i64 %i.an   ; 2 uses
  %i.ap = getelementptr i8, ptr %i.k, i64 %i.an
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %i.aq = shl i64 %index19, 3                     ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.v, i64 %i.aq
  %next.gep21 = getelementptr i8, ptr %i.k, i64 %i.aq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  %wide.load22 = load <4 x i64>, ptr %next.gep21, align 8, !tbaa !108, !alias.scope !648
  store <4 x i64> %wide.load22, ptr %next.gep20, align 8, !tbaa !108, !alias.scope !647
  store <4 x ptr> splat (ptr null), ptr %next.gep21, align 8, !tbaa !108, !alias.scope !648
  %index.next23 = add nuw i64 %index19, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next23, %n.vec18
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !644

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %i.aa, %n.vec18
  br i1 %cmp.n24, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.v, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.k, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  %i.as = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !108, !alias.scope !648
  store i64 %i.as, ptr %.012.i.i.i.i, align 8, !tbaa !108, !alias.scope !647
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !108, !alias.scope !648
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.at, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !645

_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc8
  %.0.lcssa.i.i.i.i = phi ptr [ %i.v, %.noexc8 ], [ %i.ao, %vec.epilog.middle.block ], [ %i.ad, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !189
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.ay) #28
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  store ptr %i.v, ptr %i.e, align 8, !tbaa !190
  store ptr %i.av, ptr %i.f, align 8, !tbaa !188
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.az, ptr %i.h, align 8, !tbaa !189
  br label %_ZN3gmx17KeyValueTreeValueD2Ev.exit

_ZN3gmx17KeyValueTreeValueD2Ev.exit:              ; preds = %bb.b, %.noexc
  ret void

_ZN3gmx17KeyValueTreeValueD2Ev.exit6:             ; preds = %_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i, %bb.d
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27, !inline_history !1
  resume { ptr, i32 } %i.ba
}

declare noundef i32 @_ZNK3gmx16LinkFrontierAtom16getEmbeddedIndexEv(ptr noundef nonnull align 4 dereferenceable(60)) local_unnamed_addr #7

declare noundef i32 @_ZNK3gmx16LinkFrontierAtom10getMMIndexEv(ptr noundef nonnull align 4 dereferenceable(60)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3gmx25KeyValueTreeObjectBuilder15addUniformArrayIdEENS_31KeyValueTreeUniformArrayBuilderIT_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::KeyValueTreeArray", align 8 ; 5 uses
  %3 = alloca %"class.gmx::KeyValueTreeValue", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27, !noalias !653
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false), !noalias !653
  %i.a = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
          to label %_ZN3gmx19KeyValueTreeBuilder11createValueINS_17KeyValueTreeArrayEEENS_17KeyValueTreeValueEv.exit unwind label %bb.b, !noalias !653 ; 3 uses

common.resume:                                    ; preds = %_ZN3gmx17KeyValueTreeValueD2Ev.exit5, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.b, %bb.b ], [ %i.x, %_ZN3gmx17KeyValueTreeValueD2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx17KeyValueTreeArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #27, !noalias !653
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !653
  br label %common.resume

_ZN3gmx19KeyValueTreeBuilder11createValueINS_17KeyValueTreeArrayEEENS_17KeyValueTreeValueEv.exit: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx3Any7ContentINS_17KeyValueTreeArrayEEE, i64 16), ptr %i.a, align 8, !tbaa !34, !noalias !654
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false), !noalias !653
  %i.d = ptrtoint ptr %i.a to i64
  store i64 %i.d, ptr %3, align 8, !tbaa !108, !alias.scope !653
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27, !noalias !653
  %i.e = invoke ptr @_ZN3gmx25KeyValueTreeObjectBuilder11addPropertyERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEONS_17KeyValueTreeValueE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %_ZN3gmx19KeyValueTreeBuilder11createValueINS_17KeyValueTreeArrayEEENS_17KeyValueTreeValueEv.exit
  %i.f = load ptr, ptr %3, align 8, !tbaa !108    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN3gmx17KeyValueTreeValueD2Ev.exit, label %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i: ; preds = %bb.c
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #27, !inline_history !1
  br label %_ZN3gmx17KeyValueTreeValueD2Ev.exit

_ZN3gmx17KeyValueTreeValueD2Ev.exit:              ; preds = %bb.c, %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN3gmx17KeyValueTreeValueD2Ev.exit
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call noundef nonnull align 8 dereferenceable(16) ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.k), !inline_history !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !110  ; 3 uses
  %i.r = icmp eq ptr %i.q, @_ZTSN3gmx17KeyValueTreeArrayE
  br i1 %i.r, label %_ZN3gmx17KeyValueTreeValue7asArrayEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.q, align 1, !tbaa !32
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 42
  br i1 %.not.i.i.i.i.i, label %bb.f, label %_ZNK3gmx3Any6isTypeINS_17KeyValueTreeArrayEEEbv.exit.i.i.i

_ZNK3gmx3Any6isTypeINS_17KeyValueTreeArrayEEEbv.exit.i.i.i: ; preds = %bb.e
  %i.t = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(26) @_ZTSN3gmx17KeyValueTreeArrayE) #27
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZN3gmx17KeyValueTreeValue7asArrayEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK3gmx3Any6isTypeINS_17KeyValueTreeArrayEEEbv.exit.i.i.i, %bb.e, %_ZN3gmx17KeyValueTreeValueD2Ev.exit
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.152, ptr noundef nonnull @.str.153, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx3Any7castRefINS_17KeyValueTreeArrayEEERT_vENKUlvE_clEv, ptr noundef nonnull @.str.154, i32 noundef 219) #30
  unreachable

_ZN3gmx17KeyValueTreeValue7asArrayEv.exit:        ; preds = %bb.d, %_ZNK3gmx3Any6isTypeINS_17KeyValueTreeArrayEEEbv.exit.i.i.i
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !108
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  ret ptr %i.w

bb.g:                                             ; preds = %_ZN3gmx19KeyValueTreeBuilder11createValueINS_17KeyValueTreeArrayEEENS_17KeyValueTreeValueEv.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %3, align 8, !tbaa !108    ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i3, label %_ZN3gmx17KeyValueTreeValueD2Ev.exit5, label %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i4

_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i4: ; preds = %bb.g
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y) #27, !inline_history !1
  br label %_ZN3gmx17KeyValueTreeValueD2Ev.exit5

_ZN3gmx17KeyValueTreeValueD2Ev.exit5:             ; preds = %bb.g, %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx31KeyValueTreeUniformArrayBuilderIdE8addValueERKd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #31, !noalias !665 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx3Any7ContentIdEE, i64 16), ptr %i.a, align 8, !tbaa !34, !noalias !665
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load double, ptr %1, align 8, !tbaa !191, !noalias !665
  store double %i.c, ptr %i.b, align 8, !tbaa !185, !noalias !665
  %i.d = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !196    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !188  ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !189
  %.not.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.g, align 8, !tbaa !108
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.j, ptr %i.f, align 8, !tbaa !188
  br label %_ZN3gmx17KeyValueTreeValueD2Ev.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !190  ; 9 uses
  %i.l = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775800
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.170) #30
          to label %.noexc7 unwind label %_ZN3gmx17KeyValueTreeValueD2Ev.exit6

.noexc7:                                          ; preds = %bb.d
  unreachable

_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.p = ashr exact i64 %i.n, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %i.q = add nsw i64 %.sroa.speculated.i.i, %i.p  ; 2 uses
  %i.r = icmp ult i64 %i.q, %i.p
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.q, i64 1152921504606846975)
  %i.t = select i1 %i.r, i64 1152921504606846975, i64 %i.s ; 3 uses
  %.not.i.i = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.u = shl nuw nsw i64 %i.t, 3
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #31
          to label %.noexc8 unwind label %_ZN3gmx17KeyValueTreeValueD2Ev.exit6 ; 9 uses

.noexc8:                                          ; preds = %_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.n
  store i64 %i.d, ptr %i.w, align 8, !tbaa !108
  %.not10.i.i.i.i = icmp eq ptr %i.k, %i.g
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %iter.check

iter.check:                                       ; preds = %.noexc8
  %i.x = add i64 %i.l, -8
  %i.y = sub i64 %i.x, %i.m                       ; 3 uses
  %i.z = lshr i64 %i.y, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 5 uses
  %min.iters.check = icmp ult i64 %i.y, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.y, 120
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.aa, 12
  %n.vec = and i64 %i.aa, 4611686018427387888     ; 4 uses
  %i.ac = shl i64 %n.vec, 3                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.v, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.k, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.v, i64 %i.af ; 4 uses
  %next.gep14 = getelementptr i8, ptr %i.k, i64 %i.af ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.ag = getelementptr i8, ptr %next.gep14, i64 32
  %i.ah = getelementptr i8, ptr %next.gep14, i64 64
  %i.ai = getelementptr i8, ptr %next.gep14, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep14, align 8, !tbaa !108, !alias.scope !667
  %wide.load15 = load <4 x i64>, ptr %i.ag, align 8, !tbaa !108, !alias.scope !667
  %wide.load16 = load <4 x i64>, ptr %i.ah, align 8, !tbaa !108, !alias.scope !667
  %wide.load17 = load <4 x i64>, ptr %i.ai, align 8, !tbaa !108, !alias.scope !667
  %i.aj = getelementptr i8, ptr %next.gep, i64 32
  %i.ak = getelementptr i8, ptr %next.gep, i64 64
  %i.al = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !108, !alias.scope !666
  store <4 x i64> %wide.load15, ptr %i.aj, align 8, !tbaa !108, !alias.scope !666
  store <4 x i64> %wide.load16, ptr %i.ak, align 8, !tbaa !108, !alias.scope !666
  store <4 x i64> %wide.load17, ptr %i.al, align 8, !tbaa !108, !alias.scope !666
  %2 = getelementptr i8, ptr %next.gep14, i64 32
  %3 = getelementptr i8, ptr %next.gep14, i64 64
  %4 = getelementptr i8, ptr %next.gep14, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep14, align 8, !tbaa !108, !alias.scope !667
  store <4 x ptr> splat (ptr null), ptr %2, align 8, !tbaa !108, !alias.scope !667
  store <4 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !108, !alias.scope !667
  store <4 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !108, !alias.scope !667
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !662

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph, !prof !128

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %i.aa, 4611686018427387900   ; 3 uses
  %i.an = shl i64 %n.vec18, 3                     ; 2 uses
  %i.ao = getelementptr i8, ptr %i.v, i64 %i.an   ; 2 uses
  %i.ap = getelementptr i8, ptr %i.k, i64 %i.an
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 2 uses
  %i.aq = shl i64 %index19, 3                     ; 2 uses
  %next.gep20 = getelementptr i8, ptr %i.v, i64 %i.aq
  %next.gep21 = getelementptr i8, ptr %i.k, i64 %i.aq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %wide.load22 = load <4 x i64>, ptr %next.gep21, align 8, !tbaa !108, !alias.scope !667
  store <4 x i64> %wide.load22, ptr %next.gep20, align 8, !tbaa !108, !alias.scope !666
  store <4 x ptr> splat (ptr null), ptr %next.gep21, align 8, !tbaa !108, !alias.scope !667
  %index.next23 = add nuw i64 %index19, 4         ; 2 uses
  %i.ar = icmp eq i64 %index.next23, %n.vec18
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !663

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %i.aa, %n.vec18
  br i1 %cmp.n24, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.v, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.k, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.ap, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.as = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !108, !alias.scope !667
  store i64 %i.as, ptr %.012.i.i.i.i, align 8, !tbaa !108, !alias.scope !666
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !108, !alias.scope !667
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.at, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !664

_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %vec.epilog.middle.block, %.noexc8
  %.0.lcssa.i.i.i.i = phi ptr [ %i.v, %.noexc8 ], [ %i.ao, %vec.epilog.middle.block ], [ %i.ad, %middle.block ], [ %i.au, %.lr.ph.i.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i, label %.noexc, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !189
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.ay) #28
  br label %.noexc

.noexc:                                           ; preds = %bb.e, %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i
  store ptr %i.v, ptr %i.e, align 8, !tbaa !190
  store ptr %i.av, ptr %i.f, align 8, !tbaa !188
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.t
  store ptr %i.az, ptr %i.h, align 8, !tbaa !189
  br label %_ZN3gmx17KeyValueTreeValueD2Ev.exit

_ZN3gmx17KeyValueTreeValueD2Ev.exit:              ; preds = %bb.b, %.noexc
  ret void

_ZN3gmx17KeyValueTreeValueD2Ev.exit6:             ; preds = %_ZNKSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EE12_M_check_lenEmPKc.exit.i, %bb.d
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #27, !inline_history !1
  resume { ptr, i32 } %i.ba
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx17KeyValueTreeArrayD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !190    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !188  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN3gmx17KeyValueTreeValueEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN3gmx17KeyValueTreeValueEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3gmx17KeyValueTreeValueEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #27, !inline_history !8
  br label %_ZSt8_DestroyIN3gmx17KeyValueTreeValueEEvPT_.exit.i.i.i

_ZSt8_DestroyIN3gmx17KeyValueTreeValueEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN3gmx17KeyValueTreeValueEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !190
  br label %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.i = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !189
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #28
  br label %_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EED2Ev.exit

_ZNSt6vectorIN3gmx17KeyValueTreeValueESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx3Any7ContentINS_17KeyValueTreeArrayEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx3Any7ContentINS_17KeyValueTreeArrayEEE, i64 16), ptr %0, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !188  ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN3gmx17KeyValueTreeValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN3gmx17KeyValueTreeValueEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN3gmx17KeyValueTreeValueEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #27, !inline_history !668
  br label %_ZSt8_DestroyIN3gmx17KeyValueTreeValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN3gmx17KeyValueTreeValueEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN3gmx3Any8IContentEEclEPS2_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN3gmx17KeyValueTreeValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !190
  br label %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.j = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i, label %_ZN3gmx17KeyValueTreeArrayD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !189
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #28
  br label %_ZN3gmx17KeyValueTreeArrayD2Ev.exit

_ZN3gmx17KeyValueTreeArrayD2Ev.exit:              ; preds = %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx3Any7ContentINS_17KeyValueTreeArrayEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx3Any7ContentINS_17KeyValueTreeArrayEEE, i64 16), ptr %0, align 8, !tbaa !34
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !190  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !188  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN3gmx17KeyValueTreeValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

end_hunk_1
