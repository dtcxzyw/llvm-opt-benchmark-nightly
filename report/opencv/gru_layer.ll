Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gru_layer?download=true
inline.NumInlined: 1023
inline.NumDeleted: 321
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2cv3dnn12GRULayerImpl7forwardERKNS_11_InputArrayERKNS_12_OutputArrayES7_:bb.a
  %i.vo = icmp slt i32 %i.vn, 3
  br i1 %i.vo, label %bb.hi, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc501 unwind label %.loopexit.split-lp566.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc501:                                        ; preds = %bb.hf
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.59, i32 noundef 109) #22
          to label %bb.hg unwind label %bb.hh

bb.hg:                                            ; preds = %.noexc501
  unreachable

bb.hh:                                            ; preds = %.noexc501
  %i.vp = landingpad { ptr, i32 }
          cleanup
  %i.vq = load ptr, ptr %12, align 8, !tbaa !45   ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.vs = icmp eq ptr %i.vq, %i.vr
  br i1 %i.vs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i489, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i488

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i488: ; preds = %bb.hh
  %i.vt = load i64, ptr %i.vr, align 8, !tbaa !44
  %i.vu = add i64 %i.vt, 1
  call void @_ZdlPvm(ptr noundef %i.vq, i64 noundef %i.vu) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i489

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i489: ; preds = %bb.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i488
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #21
  br label %.body502

bb.hi:                                            ; preds = %bb.he
  %i.vv = icmp sgt i32 %i.vn, 0
  br i1 %i.vv, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.vw = icmp eq i32 %i.vn, 2
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val1200 = load i32, ptr %i.kx, align 4
  %i.vx = select i1 %i.vw, i32 %.sroa.gep.val, i32 %.val1200
  br label %_ZNK2cv8MatShapeclEv.exit.i491

bb.hk:                                            ; preds = %bb.hi
  %i.vy = icmp eq i32 %i.vn, 0
  %i.vz = zext i1 %i.vy to i32
  br label %_ZNK2cv8MatShapeclEv.exit.i491

_ZNK2cv8MatShapeclEv.exit.i491:                   ; preds = %bb.hk, %bb.hj
  %i.wa = phi i32 [ %i.vx, %bb.hj ], [ %i.vz, %bb.hk ]
  %i.wb = icmp eq i32 %i.vn, 2
  %i.wc = load i32, ptr %i.kx, align 4
  %i.wd = icmp sgt i32 %i.vn, -1
  %i.we = zext i1 %i.wd to i32
  %i.wf = select i1 %i.wb, i32 %i.wc, i32 %i.we
  %.sroa.2.0.insert.ext.i.i492 = zext i32 %i.wf to i64
  %.sroa.2.0.insert.shift.i.i493 = shl nuw i64 %.sroa.2.0.insert.ext.i.i492, 32
  %.sroa.0.0.insert.ext.i.i494 = zext i32 %i.wa to i64
  %.sroa.0.0.insert.insert.i.i495 = or disjoint i64 %.sroa.2.0.insert.shift.i.i493, %.sroa.0.0.insert.ext.i.i494
  invoke void @_ZN2cv3Mat6createENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208) %89, i64 %.sroa.0.0.insert.insert.i.i495, i32 noundef 5)
          to label %.noexc504 unwind label %.loopexit.split-lp566.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc504:                                        ; preds = %_ZNK2cv8MatShapeclEv.exit.i491
  %i.wg = load i32, ptr %i.ky, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.wh = load i32, ptr %i.kz, align 4, !tbaa !67
  store i32 %i.wh, ptr %i.a, align 4, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #21
  store i32 0, ptr %16, align 4, !tbaa !85
  store i32 %i.wg, ptr %i.la, align 4, !tbaa !86
  store i64 0, ptr %i.lc, align 8
  %i.wi = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #19
          to label %.noexc505 unwind label %.loopexit.split-lp566.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc505:                                        ; preds = %.noexc504
  store <2 x ptr> %i.ls, ptr %i.wi, align 16, !tbaa !57
  %.sroa.6.0..sroa_idx.i497 = getelementptr inbounds nuw i8, ptr %i.wi, i64 16
  store ptr %i.a, ptr %.sroa.6.0..sroa_idx.i497, align 16, !tbaa !95
  store ptr %i.wi, ptr %17, align 8, !tbaa !96
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL4tanhERKNS0_3MatERS6_E3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL4tanhERKNS0_3MatERS6_E3$_0E9_M_invokeERKSt9_Any_dataS3_">, ptr %i.lb, align 8, !tbaa !96
  invoke fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %16, ptr noundef align 8 %17)
          to label %bb.hl unwind label %bb.ho

bb.hl:                                            ; preds = %.noexc505
  %i.wj = load ptr, ptr %i.lb, align 8, !tbaa !98 ; 2 uses
  %.not.i.i500 = icmp eq ptr %i.wj, null
  br i1 %.not.i.i500, label %bb.hr, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.wk = invoke noundef zeroext i1 %i.wj(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3)
          to label %bb.hr unwind label %bb.hn     ; 0 uses

bb.hn:                                            ; preds = %bb.hm
  %i.wl = landingpad { ptr, i32 }
          catch ptr null
  %i.wm = extractvalue { ptr, i32 } %i.wl, 0
  call void @__clang_call_terminate(ptr %i.wm) #23
  unreachable

bb.ho:                                            ; preds = %.noexc505
  %i.wn = landingpad { ptr, i32 }
          cleanup
  %i.wo = load ptr, ptr %i.lb, align 8, !tbaa !98 ; 2 uses
  %.not.i15.i498 = icmp eq ptr %i.wo, null
  br i1 %.not.i15.i498, label %_ZNSt14_Function_baseD2Ev.exit16.i499, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.wp = invoke noundef zeroext i1 %i.wo(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull align 8 dereferenceable(32) %17, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit16.i499 unwind label %bb.hq ; 0 uses

bb.hq:                                            ; preds = %bb.hp
  %i.wq = landingpad { ptr, i32 }
          catch ptr null
  %i.wr = extractvalue { ptr, i32 } %i.wq, 0
  call void @__clang_call_terminate(ptr %i.wr) #23
  unreachable

_ZNSt14_Function_baseD2Ev.exit16.i499:            ; preds = %bb.hp, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.body502

bb.hr:                                            ; preds = %bb.hm, %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.ws = load i32, ptr %129, align 8, !tbaa !68
  %i.wt = and i32 %i.ws, 4095
  %i.wu = icmp eq i32 %i.wt, 5
  %i.wv = load i32, ptr %i.ld, align 8, !tbaa !64 ; 6 uses
  %i.ww = load i32, ptr %i.ky, align 8, !tbaa !64
  %i.wx = icmp eq i32 %i.wv, %i.ww
  %i.wy = load i32, ptr %i.le, align 8
  %i.wz = icmp eq i32 %i.wv, %i.wy
  %or.cond.i = select i1 %i.wx, i1 %i.wz, i1 false ; 2 uses
  br i1 %i.wu, label %bb.hs, label %bb.ie

bb.hs:                                            ; preds = %bb.hr
  br i1 %or.cond.i, label %bb.hy, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.62, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.hu unwind label %bb.hw

bb.hu:                                            ; preds = %bb.ht
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv3dnnL11gruComputeHIfEEvRKNS_3MatES4_RS2_, ptr noundef nonnull @.str.6, i32 noundef 71) #22
          to label %bb.hv unwind label %bb.hx

bb.hv:                                            ; preds = %bb.hu
  unreachable

bb.hw:                                            ; preds = %bb.ht
  %i.xa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i506

bb.hx:                                            ; preds = %bb.hu
  %i.xb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xc = load ptr, ptr %8, align 8, !tbaa !45    ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.xe = icmp eq ptr %i.xc, %i.xd
  br i1 %i.xe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i506, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i508

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i508: ; preds = %bb.hx
  %i.xf = load i64, ptr %i.xd, align 8, !tbaa !44
  %i.xg = add i64 %i.xf, 1
  call void @_ZdlPvm(ptr noundef %i.xc, i64 noundef %i.xg) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i506

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i506: ; preds = %bb.hx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i508, %bb.hw
  %.pn.i507 = phi { ptr, i32 } [ %i.xa, %bb.hw ], [ %i.xb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i508 ], [ %i.xb, %bb.hx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %.body502

bb.hy:                                            ; preds = %bb.hs
  %i.xh = load i32, ptr %i.lf, align 4, !tbaa !67 ; 5 uses
  %i.xi = load i32, ptr %i.kz, align 4, !tbaa !67
  %i.xj = icmp eq i32 %i.xh, %i.xi
  %i.xk = load i32, ptr %i.lg, align 4
  %i.xl = icmp eq i32 %i.xh, %i.xk
  %or.cond46.i = select i1 %i.xj, i1 %i.xl, i1 false
  br i1 %or.cond46.i, label %.preheader.i, label %bb.hz

.preheader.i:                                     ; preds = %bb.hy
  %i.xm = icmp sgt i32 %i.wv, 0
  br i1 %i.xm, label %.lr.ph52.i, label %_ZN2cv3dnnL11gruComputeHIfEEvRKNS_3MatES4_RS2_.exit

.lr.ph52.i:                                       ; preds = %.preheader.i
  %i.xn = load ptr, ptr %i.lh, align 8, !tbaa !99 ; 3 uses
  %i.xo = load i64, ptr %i.li, align 8, !tbaa !47 ; 3 uses
  %i.xp = load ptr, ptr %i.lj, align 8, !tbaa !99 ; 3 uses
  %i.xq = load i64, ptr %i.lk, align 8, !tbaa !47 ; 3 uses
  %i.xr = load ptr, ptr %i.ll, align 8, !tbaa !99 ; 4 uses
  %i.xs = load i64, ptr %i.lm, align 8, !tbaa !47 ; 4 uses
  %i.xt = icmp sgt i32 %i.xh, 0
  br i1 %i.xt, label %.lr.ph.preheader.i, label %_ZN2cv3dnnL11gruComputeHIfEEvRKNS_3MatES4_RS2_.exit

.lr.ph.preheader.i:                               ; preds = %.lr.ph52.i
  %wide.trip.count58.i = zext nneg i32 %i.wv to i64 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.xh to i64 ; 6 uses
  %i.xu = add nsw i64 %wide.trip.count58.i, -1    ; 3 uses
  %i.xv = mul i64 %i.xs, %i.xu
  %i.xw = shl nuw nsw i64 %wide.trip.count.i, 2   ; 3 uses
  %i.xx = getelementptr i8, ptr %i.xr, i64 %i.xv
  %scevgep = getelementptr i8, ptr %i.xx, i64 %i.xw ; 2 uses
  %i.xy = mul i64 %i.xo, %i.xu
  %i.xz = getelementptr i8, ptr %i.xn, i64 %i.xy
  %scevgep1522 = getelementptr i8, ptr %i.xz, i64 %i.xw
  %i.ya = mul i64 %i.xq, %i.xu
  %i.yb = getelementptr i8, ptr %i.xp, i64 %i.ya
  %scevgep1523 = getelementptr i8, ptr %i.yb, i64 %i.xw
  %min.iters.check = icmp ult i32 %i.xh, 8
  %bound0 = icmp ult ptr %i.xr, %scevgep1522
  %bound1 = icmp ult ptr %i.xn, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.yc = or i64 %i.xo, %i.xs
  %i.yd = icmp slt i64 %i.yc, 0
  %i.ye = or i1 %found.conflict, %i.yd
  %bound01525 = icmp ult ptr %i.xr, %scevgep1523
  %bound11526 = icmp ult ptr %i.xp, %scevgep
  %found.conflict1527 = and i1 %bound01525, %bound11526
  %159 = or i64 %i.xq, %i.xs
  %i.yf = icmp slt i64 %159, 0
  %i.yg = or i1 %found.conflict1527, %i.yf
  %conflict.rdx = or i1 %i.ye, %i.yg
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter1626 = and i64 %wide.trip.count.i, 1
  %lcmp.mod1627.not = icmp eq i64 %xtraiter1626, 0
  %i.yh = add nsw i64 %wide.trip.count.i, -1
  br label %.lr.ph.i

bb.hz:                                            ; preds = %bb.hy
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.63, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ia unwind label %bb.ic

bb.ia:                                            ; preds = %bb.hz
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv3dnnL11gruComputeHIfEEvRKNS_3MatES4_RS2_, ptr noundef nonnull @.str.6, i32 noundef 72) #22
          to label %bb.ib unwind label %bb.id

bb.ib:                                            ; preds = %bb.ia
  unreachable

bb.ic:                                            ; preds = %bb.hz
  %i.yi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i

bb.id:                                            ; preds = %bb.ia
  %i.yj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yk = load ptr, ptr %10, align 8, !tbaa !45   ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ym = icmp eq ptr %i.yk, %i.yl
  br i1 %i.ym, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i: ; preds = %bb.id
  %i.yn = load i64, ptr %i.yl, align 8, !tbaa !44
  %i.yo = add i64 %i.yn, 1
  call void @_ZdlPvm(ptr noundef %i.yk, i64 noundef %i.yo) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i: ; preds = %bb.id, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i, %bb.ic
  %.pn39.i = phi { ptr, i32 } [ %i.yi, %bb.ic ], [ %i.yj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i ], [ %i.yj, %bb.id ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %.body502

.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph.preheader.i
  %indvars.iv55.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next56.i, %._crit_edge.i ] ; 4 uses
  %i.yp = mul i64 %indvars.iv55.i, %i.xo
  %i.yq = getelementptr inbounds nuw i8, ptr %i.xn, i64 %i.yp ; 4 uses
  %i.yr = mul i64 %indvars.iv55.i, %i.xq
  %i.ys = getelementptr inbounds nuw i8, ptr %i.xp, i64 %i.yr ; 4 uses
  %i.yt = mul i64 %indvars.iv55.i, %i.xs
  %i.yu = getelementptr inbounds nuw i8, ptr %i.xr, i64 %i.yt ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.yv = getelementptr inbounds nuw [4 x i8], ptr %i.yq, i64 %index ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  %wide.load = load <4 x float>, ptr %i.yv, align 4, !tbaa !101, !alias.scope !208 ; 2 uses
  %wide.load1530.a = load <4 x float>, ptr %i.yw, align 4, !tbaa !101, !alias.scope !208 ; 2 uses
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.yu, i64 %index ; 3 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 16 ; 2 uses
  %wide.load1531.a = load <4 x float>, ptr %i.yx, align 4, !tbaa !101, !alias.scope !209, !noalias !210
  %wide.load1532.a = load <4 x float>, ptr %i.yy, align 4, !tbaa !101, !alias.scope !209, !noalias !210
  %i.yz = fsub <4 x float> splat (float 1.000000e+00), %wide.load
  %i.za = fsub <4 x float> splat (float 1.000000e+00), %wide.load1530.a
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.ys, i64 %index ; 2 uses
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 16
  %wide.load1533.a = load <4 x float>, ptr %i.zb, align 4, !tbaa !101, !alias.scope !211
  %wide.load1534 = load <4 x float>, ptr %i.zc, align 4, !tbaa !101, !alias.scope !211
  %i.zd = fmul <4 x float> %i.yz, %wide.load1533.a
  %i.ze = fmul <4 x float> %i.za, %wide.load1534
  %i.zf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %wide.load1531.a, <4 x float> %i.zd)
  %i.zg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load1530.a, <4 x float> %wide.load1532.a, <4 x float> %i.ze)
  store <4 x float> %i.zf, ptr %i.yx, align 4, !tbaa !101, !alias.scope !209, !noalias !210
  store <4 x float> %i.zg, ptr %i.yy, align 4, !tbaa !101, !alias.scope !209, !noalias !210
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.zh = icmp eq i64 %index.next, %n.vec
  br i1 %i.zh, label %middle.block, label %vector.body, !llvm.loop !174

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i ] ; 6 uses
  br i1 %lcmp.mod1627.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.yq, i64 %indvars.iv.i.ph
  %i.zj = load float, ptr %i.zi, align 4, !tbaa !101 ; 2 uses
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.yu, i64 %indvars.iv.i.ph ; 2 uses
  %i.zl = load float, ptr %i.zk, align 4, !tbaa !101
  %i.zm = fsub float 1.000000e+00, %i.zj
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %i.ys, i64 %indvars.iv.i.ph
  %i.zo = load float, ptr %i.zn, align 4, !tbaa !101
  %i.zp = fmul float %i.zm, %i.zo
  %i.zq = call float @llvm.fmuladd.f32(float %i.zj, float %i.zl, float %i.zp)
  store float %i.zq, ptr %i.zk, align 4, !tbaa !101
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.zr = icmp eq i64 %indvars.iv.i.ph, %i.yh
  br i1 %i.zr, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count58.i
  br i1 %exitcond59.not.i, label %_ZN2cv3dnnL11gruComputeHIfEEvRKNS_3MatES4_RS2_.exit, label %.lr.ph.i, !llvm.loop !175

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.yq, i64 %indvars.iv.i
  %i.zt = load float, ptr %i.zs, align 4, !tbaa !101 ; 2 uses
  %i.zu = getelementptr inbounds nuw [4 x i8], ptr %i.yu, i64 %indvars.iv.i ; 2 uses
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !101
  %i.zw = fsub float 1.000000e+00, %i.zt
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.ys, i64 %indvars.iv.i
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !101
  %i.zz = fmul float %i.zw, %i.zy
  %i.aaa = call float @llvm.fmuladd.f32(float %i.zt, float %i.zv, float %i.zz)
  store float %i.aaa, ptr %i.zu, align 4, !tbaa !101
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.yq, i64 %indvars.iv.next.i
  %i.aac = load float, ptr %i.aab, align 4, !tbaa !101 ; 2 uses
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.yu, i64 %indvars.iv.next.i ; 2 uses
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !101
  %i.aaf = fsub float 1.000000e+00, %i.aac
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.ys, i64 %indvars.iv.next.i
  %i.aah = load float, ptr %i.aag, align 4, !tbaa !101
  %i.aai = fmul float %i.aaf, %i.aah
  %i.aaj = call float @llvm.fmuladd.f32(float %i.aac, float %i.aae, float %i.aai)
  store float %i.aaj, ptr %i.aad, align 4, !tbaa !101
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !176

.loopexit.split-lp566.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc504, %_ZNK2cv8MatShapeclEv.exit.i491, %_ZN2cv3dnnL11gruComputeHIfEEvRKNS_3MatES4_RS2_.exit, %bb.hf
  %lpad.loopexit.split-lp1569 = landingpad { ptr, i32 }
          cleanup
  br label %.body502

bb.ie:                                            ; preds = %bb.hr
  br i1 %or.cond.i, label %bb.ik, label %bb.if

bb.if:                                            ; preds = %bb.ie
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.62, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.ig unwind label %bb.ii

bb.ig:                                            ; preds = %bb.if
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN2cv3dnnL11gruComputeHIfEEvRKNS_3MatES4_RS2_, ptr noundef nonnull @.str.6, i32 noundef 71) #22
          to label %bb.ih unwind label %bb.ij

bb.ih:                                            ; preds = %bb.ig
  unreachable

bb.ii:                                            ; preds = %bb.if
  %i.aak = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i513

bb.ij:                                            ; preds = %bb.ig
  %i.aal = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aam = load ptr, ptr %4, align 8, !tbaa !45   ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aao = icmp eq ptr %i.aam, %i.aan
  br i1 %i.aao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i513, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i516

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i516: ; preds = %bb.ij
  %i.aap = load i64, ptr %i.aan, align 8, !tbaa !44
  %i.aaq = add i64 %i.aap, 1
  call void @_ZdlPvm(ptr noundef %i.aam, i64 noundef %i.aaq) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i513

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i513: ; preds = %bb.ij, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i516, %bb.ii
  %.pn.i514 = phi { ptr, i32 } [ %i.aak, %bb.ii ], [ %i.aal, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i516 ], [ %i.aal, %bb.ij ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.body502

bb.ik:                                            ; preds = %bb.ie
  %i.aar = load i32, ptr %i.lf, align 4, !tbaa !67 ; 5 uses
  %i.aas = load i32, ptr %i.kz, align 4, !tbaa !67
  %i.aat = icmp eq i32 %i.aar, %i.aas
  %i.aau = load i32, ptr %i.lg, align 4
  %i.aav = icmp eq i32 %i.aar, %i.aau
  %or.cond46.i518 = select i1 %i.aat, i1 %i.aav, i1 false
  br i1 %or.cond46.i518, label %.preheader.i523, label %bb.il

.preheader.i523:                                  ; preds = %bb.ik
  %i.aaw = icmp sgt i32 %i.wv, 0
  br i1 %i.aaw, label %.lr.ph52.i524, label %_ZN2cv3dnnL11gruComputeHIfEEvRKNS_3MatES4_RS2_.exit

.lr.ph52.i524:                                    ; preds = %.preheader.i523
  %i.aax = load ptr, ptr %i.lh, align 8, !tbaa !99 ; 3 uses
  %i.aay = load i64, ptr %i.li, align 8, !tbaa !47 ; 3 uses
  %i.aaz = load ptr, ptr %i.lj, align 8, !tbaa !99 ; 3 uses
  %i.aba = load i64, ptr %i.lk, align 8, !tbaa !47 ; 3 uses
  %i.abb = load ptr, ptr %i.ll, align 8, !tbaa !99 ; 4 uses
  %i.abc = load i64, ptr %i.lm, align 8, !tbaa !47 ; 4 uses
  %i.abd = icmp sgt i32 %i.aar, 0
  br i1 %i.abd, label %.lr.ph.preheader.i525, label %_ZN2cv3dnnL11gruComputeHIfEEvRKNS_3MatES4_RS2_.exit

.lr.ph.preheader.i525:                            ; preds = %.lr.ph52.i524
  %wide.trip.count58.i526 = zext nneg i32 %i.wv to i64 ; 2 uses
  %wide.trip.count.i527 = zext nneg i32 %i.aar to i64 ; 6 uses
  %i.abe = add nsw i64 %wide.trip.count58.i526, -1 ; 3 uses
  %i.abf = mul i64 %i.abc, %i.abe
  %i.abg = shl nuw nsw i64 %wide.trip.count.i527, 3 ; 3 uses
  %i.abh = getelementptr i8, ptr %i.abb, i64 %i.abf
  %scevgep1536.a = getelementptr i8, ptr %i.abh, i64 %i.abg ; 2 uses
  %i.abi = mul i64 %i.aay, %i.abe
  %i.abj = getelementptr i8, ptr %i.aax, i64 %i.abi
  %scevgep1537.a = getelementptr i8, ptr %i.abj, i64 %i.abg
  %i.abk = mul i64 %i.aba, %i.abe
  %i.abl = getelementptr i8, ptr %i.aaz, i64 %i.abk
  %scevgep1538 = getelementptr i8, ptr %i.abl, i64 %i.abg
  %min.iters.check1551 = icmp ult i32 %i.aar, 6
  %bound01539 = icmp ult ptr %i.abb, %scevgep1537.a
  %bound11540 = icmp ult ptr %i.aax, %scevgep1536.a
  %found.conflict1541 = and i1 %bound01539, %bound11540
  %i.abm = or i64 %i.aay, %i.abc
  %i.abn = icmp slt i64 %i.abm, 0
  %i.abo = or i1 %found.conflict1541, %i.abn
  %bound01544 = icmp ult ptr %i.abb, %scevgep1538
  %bound11545 = icmp ult ptr %i.aaz, %scevgep1536.a
  %found.conflict1546 = and i1 %bound01544, %bound11545
  %160 = or i64 %i.aba, %i.abc
  %i.abp = icmp slt i64 %160, 0
  %i.abq = or i1 %found.conflict1546, %i.abp
  %conflict.rdx1549 = or i1 %i.abo, %i.abq
  %n.vec1553 = and i64 %wide.trip.count.i527, 2147483644 ; 3 uses
  %cmp.n1564 = icmp eq i64 %n.vec1553, %wide.trip.count.i527
  %xtraiter = and i64 %wide.trip.count.i527, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.abr = add nsw i64 %wide.trip.count.i527, -1
  br label %.lr.ph.i528

bb.il:                                            ; preds = %bb.ik
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.63, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.im unwind label %bb.io

bb.im:                                            ; preds = %bb.il
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv3dnnL11gruComputeHIfEEvRKNS_3MatES4_RS2_, ptr noundef nonnull @.str.6, i32 noundef 72) #22
          to label %bb.in unwind label %bb.ip

bb.in:                                            ; preds = %bb.im
  unreachable

bb.io:                                            ; preds = %bb.il
  %i.abs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i519

bb.ip:                                            ; preds = %bb.im
  %i.abt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abu = load ptr, ptr %6, align 8, !tbaa !45   ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.abw = icmp eq ptr %i.abu, %i.abv
  br i1 %i.abw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i519, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i521

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i521: ; preds = %bb.ip
  %i.abx = load i64, ptr %i.abv, align 8, !tbaa !44
  %i.aby = add i64 %i.abx, 1
  call void @_ZdlPvm(ptr noundef %i.abu, i64 noundef %i.aby) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i519

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i519: ; preds = %bb.ip, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i521, %bb.io
  %.pn39.i520 = phi { ptr, i32 } [ %i.abs, %bb.io ], [ %i.abt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47.i521 ], [ %i.abt, %bb.ip ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %.body502

.lr.ph.i528:                                      ; preds = %._crit_edge.i533, %.lr.ph.preheader.i525
  %indvars.iv55.i529 = phi i64 [ 0, %.lr.ph.preheader.i525 ], [ %indvars.iv.next56.i534, %._crit_edge.i533 ] ; 4 uses
  %i.abz = mul i64 %indvars.iv55.i529, %i.aay
  %i.aca = getelementptr inbounds nuw i8, ptr %i.aax, i64 %i.abz ; 4 uses
  %i.acb = mul i64 %indvars.iv55.i529, %i.aba
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aaz, i64 %i.acb ; 4 uses
  %i.acd = mul i64 %indvars.iv55.i529, %i.abc
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abb, i64 %i.acd ; 4 uses
  %brmerge1678 = select i1 %min.iters.check1551, i1 true, i1 %conflict.rdx1549
  br i1 %brmerge1678, label %scalar.ph1550.preheader, label %vector.body1554

vector.body1554:                                  ; preds = %.lr.ph.i528, %vector.body1554
  %index1555 = phi i64 [ %index.next1562, %vector.body1554 ], [ 0, %.lr.ph.i528 ] ; 4 uses
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr %i.aca, i64 %index1555 ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 16
  %wide.load1556.a = load <2 x double>, ptr %i.acf, align 8, !tbaa !94, !alias.scope !212 ; 2 uses
  %wide.load1557.a = load <2 x double>, ptr %i.acg, align 8, !tbaa !94, !alias.scope !212 ; 2 uses
  %i.ach = getelementptr inbounds nuw [8 x i8], ptr %i.ace, i64 %index1555 ; 3 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 16 ; 2 uses
  %wide.load1558.a = load <2 x double>, ptr %i.ach, align 8, !tbaa !94, !alias.scope !213, !noalias !214
  %wide.load1559.a = load <2 x double>, ptr %i.aci, align 8, !tbaa !94, !alias.scope !213, !noalias !214
  %i.acj = fsub <2 x double> splat (double 1.000000e+00), %wide.load1556.a
  %i.ack = fsub <2 x double> splat (double 1.000000e+00), %wide.load1557.a
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr %i.acc, i64 %index1555 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 16
  %wide.load1560 = load <2 x double>, ptr %i.acl, align 8, !tbaa !94, !alias.scope !215
  %wide.load1561 = load <2 x double>, ptr %i.acm, align 8, !tbaa !94, !alias.scope !215
  %i.acn = fmul <2 x double> %i.acj, %wide.load1560
  %i.aco = fmul <2 x double> %i.ack, %wide.load1561
  %i.acp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1556.a, <2 x double> %wide.load1558.a, <2 x double> %i.acn)
  %i.acq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load1557.a, <2 x double> %wide.load1559.a, <2 x double> %i.aco)
  store <2 x double> %i.acp, ptr %i.ach, align 8, !tbaa !94, !alias.scope !213, !noalias !214
  store <2 x double> %i.acq, ptr %i.aci, align 8, !tbaa !94, !alias.scope !213, !noalias !214
  %index.next1562 = add nuw i64 %index1555, 4     ; 2 uses
  %i.acr = icmp eq i64 %index.next1562, %n.vec1553
  br i1 %i.acr, label %middle.block1563, label %vector.body1554, !llvm.loop !181

middle.block1563:                                 ; preds = %vector.body1554
  br i1 %cmp.n1564, label %._crit_edge.i533, label %scalar.ph1550.preheader

scalar.ph1550.preheader:                          ; preds = %.lr.ph.i528, %middle.block1563
  %indvars.iv.i530.ph = phi i64 [ %n.vec1553, %middle.block1563 ], [ 0, %.lr.ph.i528 ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph1550.prol.loopexit, label %scalar.ph1550.prol

scalar.ph1550.prol:                               ; preds = %scalar.ph1550.preheader
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr %i.aca, i64 %indvars.iv.i530.ph
  %i.act = load double, ptr %i.acs, align 8, !tbaa !94 ; 2 uses
  %i.acu = getelementptr inbounds nuw [8 x i8], ptr %i.ace, i64 %indvars.iv.i530.ph ; 2 uses
  %i.acv = load double, ptr %i.acu, align 8, !tbaa !94
  %i.acw = fsub double 1.000000e+00, %i.act
  %i.acx = getelementptr inbounds nuw [8 x i8], ptr %i.acc, i64 %indvars.iv.i530.ph
  %i.acy = load double, ptr %i.acx, align 8, !tbaa !94
  %i.acz = fmul double %i.acw, %i.acy
  %i.ada = call double @llvm.fmuladd.f64(double %i.act, double %i.acv, double %i.acz)
  store double %i.ada, ptr %i.acu, align 8, !tbaa !94
  %indvars.iv.next.i531.prol = or disjoint i64 %indvars.iv.i530.ph, 1
  br label %scalar.ph1550.prol.loopexit

scalar.ph1550.prol.loopexit:                      ; preds = %scalar.ph1550.prol, %scalar.ph1550.preheader
  %indvars.iv.i530.unr = phi i64 [ %indvars.iv.i530.ph, %scalar.ph1550.preheader ], [ %indvars.iv.next.i531.prol, %scalar.ph1550.prol ]
  %i.adb = icmp eq i64 %indvars.iv.i530.ph, %i.abr
  br i1 %i.adb, label %._crit_edge.i533, label %scalar.ph1550

._crit_edge.i533:                                 ; preds = %scalar.ph1550.prol.loopexit, %scalar.ph1550, %middle.block1563
  %indvars.iv.next56.i534 = add nuw nsw i64 %indvars.iv55.i529, 1 ; 2 uses
  %exitcond59.not.i535 = icmp eq i64 %indvars.iv.next56.i534, %wide.trip.count58.i526
  br i1 %exitcond59.not.i535, label %_ZN2cv3dnnL11gruComputeHIfEEvRKNS_3MatES4_RS2_.exit, label %.lr.ph.i528, !llvm.loop !182

scalar.ph1550:                                    ; preds = %scalar.ph1550.prol.loopexit, %scalar.ph1550
  %indvars.iv.i530 = phi i64 [ %indvars.iv.next.i531.1, %scalar.ph1550 ], [ %indvars.iv.i530.unr, %scalar.ph1550.prol.loopexit ] ; 5 uses
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr %i.aca, i64 %indvars.iv.i530
  %i.add = load double, ptr %i.adc, align 8, !tbaa !94 ; 2 uses
  %i.ade = getelementptr inbounds nuw [8 x i8], ptr %i.ace, i64 %indvars.iv.i530 ; 2 uses
  %i.adf = load double, ptr %i.ade, align 8, !tbaa !94
  %i.adg = fsub double 1.000000e+00, %i.add
  %i.adh = getelementptr inbounds nuw [8 x i8], ptr %i.acc, i64 %indvars.iv.i530
  %i.adi = load double, ptr %i.adh, align 8, !tbaa !94
  %i.adj = fmul double %i.adg, %i.adi
  %i.adk = call double @llvm.fmuladd.f64(double %i.add, double %i.adf, double %i.adj)
  store double %i.adk, ptr %i.ade, align 8, !tbaa !94
  %indvars.iv.next.i531 = add nuw nsw i64 %indvars.iv.i530, 1 ; 3 uses
  %i.adl = getelementptr inbounds nuw [8 x i8], ptr %i.aca, i64 %indvars.iv.next.i531
  %i.adm = load double, ptr %i.adl, align 8, !tbaa !94 ; 2 uses
  %i.adn = getelementptr inbounds nuw [8 x i8], ptr %i.ace, i64 %indvars.iv.next.i531 ; 2 uses
  %i.ado = load double, ptr %i.adn, align 8, !tbaa !94
  %i.adp = fsub double 1.000000e+00, %i.adm
  %i.adq = getelementptr inbounds nuw [8 x i8], ptr %i.acc, i64 %indvars.iv.next.i531
  %i.adr = load double, ptr %i.adq, align 8, !tbaa !94
  %i.ads = fmul double %i.adp, %i.adr
  %i.adt = call double @llvm.fmuladd.f64(double %i.adm, double %i.ado, double %i.ads)
  store double %i.adt, ptr %i.adn, align 8, !tbaa !94
  %indvars.iv.next.i531.1 = add nuw nsw i64 %indvars.iv.i530, 2 ; 2 uses
  %exitcond.not.i532.1 = icmp eq i64 %indvars.iv.next.i531.1, %wide.trip.count.i527
  br i1 %exitcond.not.i532.1, label %._crit_edge.i533, label %scalar.ph1550, !llvm.loop !183

_ZN2cv3dnnL11gruComputeHIfEEvRKNS_3MatES4_RS2_.exit: ; preds = %._crit_edge.i533, %._crit_edge.i, %.lr.ph52.i524, %.preheader.i523, %.lr.ph52.i, %.preheader.i
  invoke void @_ZNK2cv3dnn12GRULayerImpl10writeYStepERNS_3MatES3_iiiRKS2_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(208) %71, ptr noundef nonnull align 8 dereferenceable(208) %72, i32 noundef %.0870, i32 noundef %.0136874, i32 noundef %i.og, ptr noundef nonnull align 8 dereferenceable(208) %85)
          to label %bb.iq unwind label %.loopexit.split-lp566.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.iq:                                            ; preds = %_ZN2cv3dnnL11gruComputeHIfEEvRKNS_3MatES4_RS2_.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %130) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %129) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %123) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %122) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #21
  %i.adu = add nsw i32 %.0870, %.0133             ; 2 uses
  %.not309 = icmp eq i32 %i.adu, %.0134
  br i1 %.not309, label %._crit_edge873, label %.lr.ph872, !llvm.loop !184

.body502:                                         ; preds = %.loopexit.split-lp566.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i513, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i519, %_ZNSt14_Function_baseD2Ev.exit16.i499, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i489, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i482, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i506, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i, %bb.gx, %bb.gw, %bb.gv, %bb.gu, %bb.gn, %bb.gm, %bb.gl, %bb.gk
  %.pn353 = phi { ptr, i32 } [ %i.uz, %bb.gu ], [ %i.ux, %bb.gn ], [ %i.uw, %bb.gm ], [ %i.uv, %bb.gl ], [ %i.uu, %bb.gk ], [ %i.vc, %bb.gx ], [ %i.vb, %bb.gw ], [ %i.va, %bb.gv ], [ %.pn.i483, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i482 ], [ %i.vp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i489 ], [ %i.wn, %_ZNSt14_Function_baseD2Ev.exit16.i499 ], [ %.pn.i507, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i506 ], [ %.pn39.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i ], [ %.pn.i514, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i513 ], [ %.pn39.i520, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49.i519 ], [ %lpad.loopexit.split-lp1569, %.loopexit.split-lp566.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %130) #21
  br label %bb.ir

bb.ir:                                            ; preds = %.body502, %bb.gj
  %.pn353.pn = phi { ptr, i32 } [ %.pn353, %.body502 ], [ %i.ut, %bb.gj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %130) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %129) #21
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.gi
  %.pn353.pn.pn = phi { ptr, i32 } [ %.pn353.pn, %bb.ir ], [ %i.us, %bb.gi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %129) #21
  br label %.body474

.body474:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt14_Function_baseD2Ev.exit16.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i470, %bb.is, %bb.gh, %bb.gg
  %.pn353.pn.pn.pn = phi { ptr, i32 } [ %.pn353.pn.pn, %bb.is ], [ %i.uq, %bb.gg ], [ %i.ur, %bb.gh ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i470 ], [ %i.tg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.ue, %_ZNSt14_Function_baseD2Ev.exit16.i ], [ %lpad.loopexit.split-lp1567.a, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %123) #21
  br label %bb.it

bb.it:                                            ; preds = %.body474, %bb.gf
  %.pn353.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn353.pn.pn.pn, %.body474 ], [ %i.up, %bb.gf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %123) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %122) #21
  br label %bb.iu

bb.iu:                                            ; preds = %bb.it, %bb.ge
  %.pn353.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn353.pn.pn.pn.pn, %bb.it ], [ %i.uo, %bb.ge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #21
  br label %bb.ix

bb.iv:                                            ; preds = %._crit_edge873
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %112) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %112) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %103) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %101) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #21
end_hunk_0
