Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/idl_parser?download=true
inline.NumInlined: 13536
inline.NumDeleted: 4031
loop-unroll.NumCompletelyUnrolled: 104
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 194
begin_hunk_0_@_ZN11flatbuffers6Parser10ParseTableERKNS_9StructDefEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPj:bb.a
  %i.wv = add i64 %i.wu, -4611686018427387866
  %i.ww = icmp ult i64 %i.wv, 38
  br i1 %i.ww, label %.invoke.i.i856, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i853

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i853: ; preds = %bb.dm
  %i.wx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.122, i64 noundef 38)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i854 unwind label %bb.dn ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i854: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i853
  %i.wy = load i64, ptr %i.ws, align 8, !tbaa !79, !alias.scope !1197
  %i.wz = sub i64 4611686018427387903, %i.wy
  %i.xa = icmp ult i64 %i.wz, %i.wq
  br i1 %i.xa, label %.invoke.i.i856, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i855

.invoke.i.i856:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i854, %bb.dm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #31
          to label %.cont.i.i857 unwind label %bb.dn

.cont.i.i857:                                     ; preds = %.invoke.i.i856
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i855: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i854
  %i.xb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef %i.wo, i64 noundef %i.wq)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit860 unwind label %bb.dn ; 0 uses

bb.dn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i855, %.invoke.i.i856, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i853, %bb.dl
  %i.xc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xd = load ptr, ptr %19, align 8, !tbaa !82, !alias.scope !1197 ; 2 uses
  %i.xe = icmp eq ptr %i.xd, %i.wr
  br i1 %i.xe, label %.body858, label %.body858.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit860: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i855
  invoke void @_ZN11flatbuffers6Parser5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.flatbuffers::CheckedError") align 1 %0, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.do unwind label %bb.dp

bb.do:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit860
  %i.xf = load ptr, ptr %19, align 8, !tbaa !82   ; 2 uses
  %i.xg = icmp eq ptr %i.xf, %i.wr
  br i1 %i.xg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i861

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i861: ; preds = %bb.do
  %i.xh = load i64, ptr %i.wr, align 8, !tbaa !81
  %i.xi = add i64 %i.xh, 1
  call void @_ZdlPvm(ptr noundef %i.xf, i64 noundef %i.xi) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit863: ; preds = %bb.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i861
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %.critedge640

bb.dp:                                            ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit860
  %i.xj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xk = load ptr, ptr %19, align 8, !tbaa !82   ; 2 uses
  %i.xl = icmp eq ptr %i.xk, %i.wr
  br i1 %i.xl, label %.body858, label %.body858.sink.split

.body858.sink.split:                              ; preds = %bb.dp, %bb.dn
  %.sink2123 = phi ptr [ %i.xd, %bb.dn ], [ %i.xk, %bb.dp ]
  %.pn634.ph = phi { ptr, i32 } [ %i.xc, %bb.dn ], [ %i.xj, %bb.dp ]
  %i.xm = load i64, ptr %i.wr, align 8, !tbaa !81
  %i.xn = add i64 %i.xm, 1
  call void @_ZdlPvm(ptr noundef %.sink2123, i64 noundef %i.xn) #33
  br label %.body858

.body858:                                         ; preds = %.body858.sink.split, %bb.dp, %bb.dn
  %.pn634 = phi { ptr, i32 } [ %i.xc, %bb.dn ], [ %i.xj, %bb.dp ], [ %.pn634.ph, %.body858.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  br label %.body

bb.dq:                                            ; preds = %bb.dk
  %i.xo = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.xp = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.xq = load i64, ptr %i.xp, align 8, !tbaa !302 ; 3 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.xs = load i64, ptr %i.xr, align 8, !tbaa !374
  %i.xt = icmp ugt i64 %i.xq, %i.xs
  br i1 %i.xt, label %bb.dr, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

bb.dr:                                            ; preds = %bb.dq
  store i64 %i.xq, ptr %i.xr, align 8, !tbaa !374
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i: ; preds = %bb.dr, %bb.dq
  %i.xu = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 4 uses
  %i.xv = load i32, ptr %i.xu, align 8, !tbaa !354 ; 3 uses
  %i.xw = zext i32 %i.xv to i64
  %i.xx = sub nsw i64 0, %i.xw
  %i.xy = add i64 %i.xq, -1
  %i.xz = and i64 %i.xy, %i.xx                    ; 8 uses
  %.not.i.i.i.i = icmp eq i64 %i.xz, 0
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 8 uses
  br i1 %.not.i.i.i.i, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartStructEm.exit, label %bb.ds

bb.ds:                                            ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i
  %.pre4.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !365
  %i.yc = ptrtoint ptr %.pre4.i.i.i.i to i64
  %i.yd = ptrtoint ptr %i.yb to i64
  %i.ye = sub i64 %i.yc, %i.yd
  %i.yf = and i64 %i.ye, 4294967295
  %i.yg = icmp ugt i64 %i.xz, %i.yf
  br i1 %i.yg, label %bb.dt, label %.lr.ph.preheader.i.i.i

bb.dt:                                            ; preds = %bb.ds
  invoke void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %i.xo, i64 noundef %i.xz)
          to label %.noexc868 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc868:                                        ; preds = %bb.dt
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %.pre.i.i = load i32, ptr %i.xu, align 8, !tbaa !354
  br label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %.noexc868, %bb.ds
  %i.yh = phi i32 [ %i.xv, %bb.ds ], [ %.pre.i.i, %.noexc868 ]
  %i.yi = phi ptr [ %.pre4.i.i.i.i, %bb.ds ], [ %.pre.i.i.i.i, %.noexc868 ]
  %i.yj = sub i64 0, %i.xz
  %i.yk = getelementptr inbounds i8, ptr %i.yi, i64 %i.yj
  store ptr %i.yk, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.yl = trunc i64 %i.xz to i32
  %i.ym = add i32 %i.yh, %i.yl
  store i32 %i.ym, ptr %i.xu, align 8, !tbaa !354
  %xtraiter2166 = and i64 %i.xz, 3                ; 3 uses
  %i.yn = icmp ult i64 %i.xz, 4
  br i1 %i.yn, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.new

.lr.ph.preheader.i.i.i.new:                       ; preds = %.lr.ph.preheader.i.i.i
  %unroll_iter2170 = and i64 %i.xz, -4
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i.new
  %.05.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %i.yz, %.lr.ph.i.i.i ] ; 5 uses
  %niter2171 = phi i64 [ 0, %.lr.ph.preheader.i.i.i.new ], [ %niter2171.next.3, %.lr.ph.i.i.i ]
  %i.yo = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 %.05.i.i.i
  store i8 0, ptr %i.yp, align 1, !tbaa !81
  %i.yq = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 %.05.i.i.i
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 1
  store i8 0, ptr %i.ys, align 1, !tbaa !81
  %i.yt = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 %.05.i.i.i
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 2
  store i8 0, ptr %i.yv, align 1, !tbaa !81
  %i.yw = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 %.05.i.i.i
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 3
  store i8 0, ptr %i.yy, align 1, !tbaa !81
  %i.yz = add nuw i64 %.05.i.i.i, 4               ; 2 uses
  %niter2171.next.3 = add nuw i64 %niter2171, 4   ; 2 uses
  %niter2171.ncmp.3 = icmp eq i64 %niter2171.next.3, %unroll_iter2170
  br i1 %niter2171.ncmp.3, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.unr-lcssa, label %.lr.ph.i.i.i, !llvm.loop !12

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod2168.not = icmp eq i64 %xtraiter2166, 0
  br i1 %lcmp.mod2168.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.unr-lcssa, %.lr.ph.preheader.i.i.i
  %.05.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.yz, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.unr-lcssa ]
  %lcmp.mod2169 = icmp ne i64 %xtraiter2166, 0
  call void @llvm.assume(i1 %lcmp.mod2169)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %.05.i.i.i.epil = phi i64 [ %i.zc, %.lr.ph.i.i.i.epil ], [ %.05.i.i.i.epil.init, %.lr.ph.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter2167 = phi i64 [ %epil.iter2167.next, %.lr.ph.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.epil.preheader ]
  %i.za = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !359
  %i.zb = getelementptr inbounds nuw i8, ptr %i.za, i64 %.05.i.i.i.epil
  store i8 0, ptr %i.zb, align 1, !tbaa !81
  %i.zc = add nuw i64 %.05.i.i.i.epil, 1
  %epil.iter2167.next = add i64 %epil.iter2167, 1 ; 2 uses
  %epil.iter2167.cmp.not = icmp eq i64 %epil.iter2167.next, %xtraiter2166
  br i1 %epil.iter2167.cmp.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i, label %.lr.ph.i.i.i.epil, !llvm.loop !1090

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.epil, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i.unr-lcssa
  %.pre.i867 = load i32, ptr %i.xu, align 8, !tbaa !354
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartStructEm.exit

bb.du:                                            ; preds = %.critedge642
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 552
  store i8 1, ptr %i.zd, align 8, !tbaa !381
  %i.ze = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.zf = load i32, ptr %i.ze, align 8, !tbaa !354
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartStructEm.exit

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartStructEm.exit: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i, %bb.du
  %i.zg = phi i32 [ %i.zf, %bb.du ], [ %.pre.i867, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.loopexit.i ], [ %i.xv, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i ]
  %i.zh = getelementptr inbounds nuw i8, ptr %2, i64 274 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %1, i64 1864 ; 4 uses
  %i.zj = sub i64 0, %.3
  %i.zk = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 91 uses
  %.phi.trans.insert.i.i.i1515 = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 343 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %1, i64 528 ; 103 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %1, i64 504 ; 157 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 66 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %1, i64 568 ; 5 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %1, i64 536 ; 22 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %1, i64 540 ; 21 uses
  %.idx1825 = mul i64 %.3, -80
  %i.zr = icmp eq i64 %.idx1825, 0
  br i1 %i.zr, label %.critedge821.preheader, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartStructEm.exit.split.preheader

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartStructEm.exit.split.preheader: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartStructEm.exit
  %i.zs = load i8, ptr %i.zh, align 2, !tbaa !300, !range !208, !noundef !209
  %i.zt = trunc nuw i8 %i.zs to i1
  %i.zu = select i1 %i.zt, i64 8, i64 1
  %.pre1846 = load ptr, ptr %i.zi, align 8, !tbaa !356, !noalias !1198
  br label %.lr.ph1821.preheader

.critedge821.preheader:                           ; preds = %.critedge819, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartStructEm.exit
  %.not1836 = icmp eq i64 %.3, 0
  br i1 %.not1836, label %.critedge821._crit_edge, label %.lr.ph1824

.lr.ph1821.preheader:                             ; preds = %.critedge819, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartStructEm.exit.split.preheader
  %i.zv = phi ptr [ %i.dex, %.critedge819 ], [ %.pre1846, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartStructEm.exit.split.preheader ]
  %.05631822 = phi i64 [ %i.dez, %.critedge819 ], [ %i.zu, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE11StartStructEm.exit.split.preheader ] ; 2 uses
  br label %.lr.ph1821

.lr.ph1821:                                       ; preds = %.lr.ph1821.preheader, %.critedge817
  %.sroa.01600.01820 = phi ptr [ %i.zw, %.critedge817 ], [ %i.zv, %.lr.ph1821.preheader ] ; 95 uses
  %i.zw = getelementptr inbounds i8, ptr %.sroa.01600.01820, i64 -80 ; 5 uses
  %i.zx = getelementptr inbounds i8, ptr %.sroa.01600.01820, i64 -8
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !358 ; 73 uses
  %i.zz = load i8, ptr %i.zh, align 2, !tbaa !300, !range !208, !noundef !209
  %i.aaa = trunc nuw i8 %i.zz to i1
  %.pre1847 = load i32, ptr %i.zw, align 8, !tbaa !331 ; 3 uses
  br i1 %i.aaa, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %.lr.ph1821
  %i.aab = icmp ult i32 %.pre1847, 19
  br i1 %i.aab, label %switch.lookup, label %.critedge817

switch.lookup:                                    ; preds = %bb.dv
  %i.aac = zext nneg i32 %.pre1847 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK11flatbuffers4Type9SerializeEPNS_21FlatBufferBuilderImplILb0EEE, i64 %i.aac
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.aad = icmp eq i64 %.05631822, %switch.ext
  br i1 %i.aad, label %bb.dw, label %.critedge817

bb.dw:                                            ; preds = %switch.lookup, %.lr.ph1821
  switch i32 %.pre1847, label %.critedge817 [
    i32 0, label %bb.dx
    i32 1, label %bb.fa
    i32 2, label %bb.gd
    i32 3, label %bb.hg
    i32 4, label %bb.ij
    i32 5, label %bb.jm
    i32 6, label %bb.ki
    i32 7, label %bb.le
    i32 8, label %bb.ma
    i32 9, label %bb.mw
    i32 10, label %bb.ns
    i32 11, label %bb.oo
    i32 12, label %bb.pk
    i32 13, label %bb.qg
    i32 14, label %bb.qt
    i32 18, label %bb.rg
    i32 15, label %bb.rt
    i32 16, label %bb.sg
    i32 17, label %bb.st
  ]

bb.dx:                                            ; preds = %bb.dw
  %i.aae = getelementptr inbounds nuw i8, ptr %i.zy, i64 296
  %i.aaf = load i64, ptr %i.aae, align 8, !tbaa !318 ; 8 uses
  %.not.i.i.i = icmp eq i64 %i.aaf, 0
  br i1 %.not.i.i.i, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE3PadEm.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %.pre4.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i1515, align 8, !tbaa !359 ; 2 uses
  %i.aag = load ptr, ptr %i.zl, align 8, !tbaa !365
  %i.aah = ptrtoint ptr %.pre4.i.i.i to i64
  %i.aai = ptrtoint ptr %i.aag to i64
  %i.aaj = sub i64 %i.aah, %i.aai
  %i.aak = and i64 %i.aaj, 4294967295
  %i.aal = icmp ugt i64 %i.aaf, %i.aak
  br i1 %i.aal, label %bb.dz, label %.lr.ph.preheader.i.i

bb.dz:                                            ; preds = %bb.dy
  invoke void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %i.zk, i64 noundef %i.aaf)
          to label %.noexc869 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp

.noexc869:                                        ; preds = %bb.dz
  %.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i1515, align 8, !tbaa !359
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.noexc869, %bb.dy
  %i.aam = phi ptr [ %.pre4.i.i.i, %bb.dy ], [ %.pre.i.i.i, %.noexc869 ]
  %i.aan = sub i64 0, %i.aaf
  %i.aao = getelementptr inbounds i8, ptr %i.aam, i64 %i.aan
  store ptr %i.aao, ptr %.phi.trans.insert.i.i.i1515, align 8, !tbaa !359
  %i.aap = trunc i64 %i.aaf to i32
  %i.aaq = load i32, ptr %i.zm, align 8, !tbaa !354
  %i.aar = add i32 %i.aaq, %i.aap
  store i32 %i.aar, ptr %i.zm, align 8, !tbaa !354
  %xtraiter2376 = and i64 %i.aaf, 3               ; 3 uses
  %i.aas = icmp ult i64 %i.aaf, 4
  br i1 %i.aas, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter2380 = and i64 %i.aaf, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %.05.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.abe, %.lr.ph.i.i ] ; 5 uses
  %niter2381 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter2381.next.3, %.lr.ph.i.i ]
  %i.aat = load ptr, ptr %.phi.trans.insert.i.i.i1515, align 8, !tbaa !359
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 %.05.i.i
  store i8 0, ptr %i.aau, align 1, !tbaa !81
  %i.aav = load ptr, ptr %.phi.trans.insert.i.i.i1515, align 8, !tbaa !359
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 %.05.i.i
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aaw, i64 1
  store i8 0, ptr %i.aax, align 1, !tbaa !81
  %i.aay = load ptr, ptr %.phi.trans.insert.i.i.i1515, align 8, !tbaa !359
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 %.05.i.i
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 2
  store i8 0, ptr %i.aba, align 1, !tbaa !81
  %i.abb = load ptr, ptr %.phi.trans.insert.i.i.i1515, align 8, !tbaa !359
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 %.05.i.i
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 3
  store i8 0, ptr %i.abd, align 1, !tbaa !81
  %i.abe = add nuw i64 %.05.i.i, 4                ; 2 uses
  %niter2381.next.3 = add i64 %niter2381, 4       ; 2 uses
  %niter2381.ncmp.3 = icmp eq i64 %niter2381.next.3, %unroll_iter2380
  br i1 %niter2381.ncmp.3, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE3PadEm.exit.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !12

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE3PadEm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod2378.not = icmp eq i64 %xtraiter2376, 0
  br i1 %lcmp.mod2378.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE3PadEm.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE3PadEm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %.05.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.abe, %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE3PadEm.exit.loopexit.unr-lcssa ]
  %lcmp.mod2379 = icmp ne i64 %xtraiter2376, 0
  call void @llvm.assume(i1 %lcmp.mod2379)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %.05.i.i.epil = phi i64 [ %i.abh, %.lr.ph.i.i.epil ], [ %.05.i.i.epil.init, %.lr.ph.i.i.epil.preheader ] ; 2 uses
  %epil.iter2377 = phi i64 [ %epil.iter2377.next, %.lr.ph.i.i.epil ], [ 0, %.lr.ph.i.i.epil.preheader ]
  %i.abf = load ptr, ptr %.phi.trans.insert.i.i.i1515, align 8, !tbaa !359
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 %.05.i.i.epil
  store i8 0, ptr %i.abg, align 1, !tbaa !81
  %i.abh = add nuw i64 %.05.i.i.epil, 1
  %epil.iter2377.next = add i64 %epil.iter2377, 1 ; 2 uses
  %epil.iter2377.cmp.not = icmp eq i64 %epil.iter2377.next, %xtraiter2376
  br i1 %epil.iter2377.cmp.not, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE3PadEm.exit, label %.lr.ph.i.i.epil, !llvm.loop !1093

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE3PadEm.exit: ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE3PadEm.exit.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.dx
  %i.abi = load i8, ptr %i.wh, align 8, !tbaa !316, !range !208, !noundef !209
  %i.abj = trunc nuw i8 %i.abi to i1
  br i1 %i.abj, label %bb.ea, label %bb.eg

bb.ea:                                            ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE3PadEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  %i.abk = getelementptr inbounds i8, ptr %.sroa.01600.01820, i64 -48
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !82
  invoke fastcc void @_ZN11flatbuffers12_GLOBAL__N_14atotIhEENS_12CheckedErrorEPKcRNS_6ParserEPT_(ptr dead_on_unwind noalias writable align 1 %0, ptr noundef %i.abl, ptr noundef nonnull align 8 dereferenceable(1936) %1, ptr noundef %i.d)
          to label %bb.eb unwind label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  store i8 1, ptr %i.bl, align 1, !tbaa !213
  %i.abm = load i8, ptr %0, align 1, !tbaa !212, !range !208, !noundef !209
  %i.abn = trunc nuw i8 %i.abm to i1
  br i1 %i.abn, label %.critedge645, label %bb.ed

bb.ec:                                            ; preds = %bb.ef, %bb.ea
  %i.abo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  br label %.body

bb.ed:                                            ; preds = %bb.eb
  %i.abp = load i8, ptr %i.d, align 1, !tbaa !81
  %i.abq = load i64, ptr %i.zn, align 8, !tbaa !374
  %i.abr = icmp eq i64 %i.abq, 0
  br i1 %i.abr, label %bb.ee, label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i

bb.ee:                                            ; preds = %bb.ed
  store i64 1, ptr %i.zn, align 8, !tbaa !374
  br label %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i

_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i: ; preds = %bb.ee, %bb.ed
  %.pre4.i.i.i871 = load ptr, ptr %.phi.trans.insert.i.i.i1515, align 8, !tbaa !359 ; 2 uses
  %i.abs = load ptr, ptr %i.zl, align 8, !tbaa !365
  %i.abt = ptrtoint ptr %.pre4.i.i.i871 to i64
  %i.abu = ptrtoint ptr %i.abs to i64
  %i.abv = sub i64 %i.abt, %i.abu
  %i.abw = and i64 %i.abv, 4294967295
  %i.abx = icmp eq i64 %i.abw, 0
  br i1 %i.abx, label %bb.ef, label %.critedge644

bb.ef:                                            ; preds = %_ZN11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i
  invoke void @_ZN11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %i.zk, i64 noundef 1)
          to label %.noexc873 unwind label %bb.ec

.noexc873:                                        ; preds = %bb.ef
  %.pre.i.i.i872 = load ptr, ptr %.phi.trans.insert.i.i.i1515, align 8, !tbaa !359
  br label %.critedge644

end_hunk_0
