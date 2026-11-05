Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3LinkParse?download=true
inline.NumInlined: 3564
inline.NumDeleted: 1098
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN16LinkParseVisitor5visitEP6AstVar:bb.a
  store i64 %i.rj, ptr %i.a, align 8, !tbaa !106, !noalias !559
  %i.rk = icmp ugt i64 %i.rj, 15
  br i1 %i.rk, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %_ZN12AstVoidDTypeC2EP8FileLine.exit
  %i.rl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc413 unwind label %bb.dg ; 2 uses

.noexc413:                                        ; preds = %.noexc.i.i
  store ptr %i.rl, ptr %18, align 8, !tbaa !28, !alias.scope !559
  %i.rm = load i64, ptr %i.a, align 8, !tbaa !106, !noalias !559
  store i64 %i.rm, ptr %i.rg, align 8, !tbaa !30, !alias.scope !559
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc413, %_ZN12AstVoidDTypeC2EP8FileLine.exit
  %i.rn = phi ptr [ %i.rl, %.noexc413 ], [ %i.rg, %_ZN12AstVoidDTypeC2EP8FileLine.exit ] ; 2 uses
  switch i64 %i.rj, label %bb.db [
    i64 1, label %bb.da
    i64 0, label %bb.dc
  ]

bb.da:                                            ; preds = %._crit_edge.i.i.i
  %i.ro = load i8, ptr %i.rh, align 1, !tbaa !30
  store i8 %i.ro, ptr %i.rn, align 1, !tbaa !30
  br label %bb.dc

bb.db:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rn, ptr align 1 %i.rh, i64 %i.rj, i1 false)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %._crit_edge.i.i.i
  %i.rp = load i64, ptr %i.a, align 8, !tbaa !106, !noalias !559 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 %i.rp, ptr %i.rq, align 8, !tbaa !29, !alias.scope !559
  %i.rr = load ptr, ptr %18, align 8, !tbaa !28, !alias.scope !559
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 %i.rp
  store i8 0, ptr %i.rs, align 1, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !559
  %i.rt = invoke noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #29
          to label %bb.dd unwind label %bb.dh     ; 6 uses

bb.dd:                                            ; preds = %bb.dc
  %i.ru = load ptr, ptr %i.b, align 8, !tbaa !247
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 88
  %i.rw = load ptr, ptr %i.rv, align 8, !tbaa !178
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(168) %i.rt, i16 92, ptr noundef %i.rw)
          to label %bb.de unwind label %bb.di

bb.de:                                            ; preds = %bb.dd
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rt, i64 152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.rx, i8 0, i64 10, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 456) (i8, ptr @_ZTV15AstRequireDType, i64 16), ptr %i.rt, align 8, !tbaa !81
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(168) %i.rt, ptr noundef nonnull %.1131)
          to label %_ZN15AstRequireDTypeC2EP8FileLineP7AstNode.exit unwind label %bb.di

_ZN15AstRequireDTypeC2EP8FileLineP7AstNode.exit:  ; preds = %bb.de
  invoke void @_ZN17AstParamTypeDTypeC2EP8FileLine8VVarType8VFwdTypeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE15VFlagChildDTypeP12AstNodeDType(ptr noundef nonnull align 8 dereferenceable(200) %i.qz, ptr noundef %i.rc, i8 %.sroa.0.0.copyload.i411, i8 %.sroa.0.0.copyload.i412, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull %i.rt)
          to label %bb.df unwind label %bb.dh

bb.df:                                            ; preds = %_ZN15AstRequireDTypeC2EP8FileLineP7AstNode.exit
  %i.ry = load ptr, ptr %18, align 8, !tbaa !28   ; 2 uses
  %i.rz = icmp eq ptr %i.ry, %i.rg
  br i1 %i.rz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i417, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416: ; preds = %bb.df
  %i.sa = load i64, ptr %i.rg, align 8, !tbaa !30
  %i.sb = add i64 %i.sa, 1
  call void @_ZdlPvm(ptr noundef %i.ry, i64 noundef %i.sb) #25
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i417

bb.dg:                                            ; preds = %.noexc.i.i
  %i.sc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421

bb.dh:                                            ; preds = %_ZN15AstRequireDTypeC2EP8FileLineP7AstNode.exit, %bb.dc
  %i.sd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dj

bb.di:                                            ; preds = %bb.de, %bb.dd
  %i.se = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.rt, i64 noundef 168) #25
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.pn180 = phi { ptr, i32 } [ %i.sd, %bb.dh ], [ %i.se, %bb.di ] ; 2 uses
  %i.sf = load ptr, ptr %18, align 8, !tbaa !28   ; 2 uses
  %i.sg = icmp eq ptr %i.sf, %i.rg
  br i1 %i.sg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419: ; preds = %bb.dj
  %i.sh = load i64, ptr %i.rg, align 8, !tbaa !30
  %i.si = add i64 %i.sh, 1
  call void @_ZdlPvm(ptr noundef %i.sf, i64 noundef %i.si) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit421: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419, %bb.dg
  %.pn180.pn = phi { ptr, i32 } [ %i.sc, %bb.dg ], [ %.pn180, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i419 ], [ %.pn180, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.qz, i64 noundef 200) #25
  br label %common.resume

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i417: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i416
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #24
  %i.sj = load ptr, ptr %i.b, align 8, !tbaa !247
  call void @_ZN7AstNode11replaceWithEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.sj, ptr noundef nonnull %i.qz)
  %i.sk = load ptr, ptr %i.b, align 8, !tbaa !247
  call void @_ZN7AstNode10deleteTreeEv(ptr noundef nonnull align 8 dereferenceable(152) %i.sk)
  br label %_ZNK6AstVar11needsCResetEv.exit.thread

bb.dk:                                            ; preds = %bb.cm, %bb.cn
  %.not184 = icmp eq ptr %i.ny, null
  br i1 %.not184, label %_ZN7AstNode2isI20AstIfaceGenericDType12AstNodeDTypeEEbPKT0_.exit, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.sl = call noundef ptr @_ZNK12AstNodeDType10elemDTypepEb(ptr noundef nonnull align 8 dereferenceable(162) %i.ny, i1 noundef zeroext false) ; 2 uses
  %.not.i422 = icmp eq ptr %i.sl, null
  br i1 %.not.i422, label %_ZN7AstNode2isI20AstIfaceGenericDType12AstNodeDTypeEEbPKT0_.exit, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 64
  %.sroa.0.0.copyload.i.i.i423 = load i16, ptr %i.sm, align 8, !tbaa !116
  %i.sn = icmp eq i16 %.sroa.0.0.copyload.i.i.i423, 84
  %i.so = zext i1 %i.sn to i8
  br label %_ZN7AstNode2isI20AstIfaceGenericDType12AstNodeDTypeEEbPKT0_.exit

_ZN7AstNode2isI20AstIfaceGenericDType12AstNodeDTypeEEbPKT0_.exit: ; preds = %bb.dm, %bb.dl, %bb.dk
  %i.sp = phi i8 [ 0, %bb.dk ], [ 0, %bb.dl ], [ %i.so, %bb.dm ]
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 275 ; 2 uses
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !241, !range !78, !noundef !79
  %i.ss = or i8 %i.sr, %i.sp
  store i8 %i.ss, ptr %i.sq, align 1, !tbaa !241
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !164
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !223
  %i.sx = load ptr, ptr %i.b, align 8, !tbaa !247
  call void @_ZN9V3Control12applyVarAttrEPK13AstNodeModulePK12AstNodeFTaskP6AstVar(ptr noundef %i.su, ptr noundef %i.sw, ptr noundef %i.sx)
  %i.sy = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1013), align 1, !tbaa !560, !range !78, !noundef !79
  %i.sz = trunc nuw i8 %i.sy to i1                ; 2 uses
  %i.ta = load i8, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1011), align 1, !range !78
  %i.tb = trunc nuw i8 %i.ta to i1                ; 2 uses
  %or.cond.i = select i1 %i.sz, i1 true, i1 %i.tb
  %i.tc = load i32, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1156), align 4 ; 2 uses
  %i.td = icmp ne i32 %i.tc, 0                    ; 2 uses
  %i.te = select i1 %or.cond.i, i1 true, i1 %i.td
  br i1 %i.te, label %bb.dn, label %_ZNK8VVarType15isVPIAccessibleEv.exit

bb.dn:                                            ; preds = %_ZN7AstNode2isI20AstIfaceGenericDType12AstNodeDTypeEEbPKT0_.exit
  %i.tf = load ptr, ptr %i.b, align 8, !tbaa !247 ; 2 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 248
  %.sroa.0.0.copyload.i424 = load i8, ptr %i.tg, align 8, !tbaa !199 ; 2 uses
  switch i8 %.sroa.0.0.copyload.i424, label %_ZNK8VVarType15isVPIAccessibleEv.exit [
    i8 5, label %bb.do
    i8 1, label %bb.do
    i8 2, label %bb.do
    i8 3, label %bb.do
    i8 15, label %bb.do
    i8 8, label %bb.do
    i8 13, label %bb.do
    i8 14, label %bb.do
  ]

bb.do:                                            ; preds = %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn, %bb.dn
  br i1 %i.tb, label %_ZNK8VVarType15isVPIAccessibleEv.exit.sink.split, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %spec.select.i.i427 = icmp samesign ult i8 %.sroa.0.0.copyload.i424, 3 ; 2 uses
  %or.cond = and i1 %spec.select.i.i427, %i.sz
  br i1 %or.cond, label %_ZNK8VVarType15isVPIAccessibleEv.exit.sink.split, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.th = load ptr, ptr %i.st, align 8, !tbaa !164 ; 3 uses
  %.not185 = icmp ne ptr %i.th, null
  %or.cond679.not = select i1 %.not185, i1 %i.td, i1 false
  br i1 %or.cond679.not, label %bb.dr, label %_ZNK8VVarType15isVPIAccessibleEv.exit

bb.dr:                                            ; preds = %bb.dq
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 280
  %i.tj = load i32, ptr %i.ti, align 8, !tbaa !256
  %i.tk = add nsw i32 %i.tj, -1
  %.not187 = icmp sgt i32 %i.tk, %i.tc
  br i1 %.not187, label %_ZN7AstNode2isI10AstPackage13AstNodeModuleEEbPKT0_.exit432, label %_ZNK8VVarType15isVPIAccessibleEv.exit.sink.split

_ZN7AstNode2isI10AstPackage13AstNodeModuleEEbPKT0_.exit432: ; preds = %bb.dr
  %i.tl = getelementptr inbounds nuw i8, ptr %i.th, i64 64
  %.sroa.0.0.copyload.i.i.i431 = load i16, ptr %i.tl, align 8, !tbaa !116
  %i.tm = icmp eq i16 %.sroa.0.0.copyload.i.i.i431, 389
  %or.cond680 = and i1 %spec.select.i.i427, %i.tm
  br i1 %or.cond680, label %_ZNK8VVarType15isVPIAccessibleEv.exit.sink.split, label %_ZNK8VVarType15isVPIAccessibleEv.exit

_ZNK8VVarType15isVPIAccessibleEv.exit.sink.split: ; preds = %_ZN7AstNode2isI10AstPackage13AstNodeModuleEEbPKT0_.exit432, %bb.dr, %bb.dp, %bb.do
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tf, i64 260 ; 2 uses
  %i.to = load i64, ptr %i.tn, align 4
  %i.tp = or i64 %i.to, 1664
  store i64 %i.tp, ptr %i.tn, align 4
  br label %_ZNK8VVarType15isVPIAccessibleEv.exit

_ZNK8VVarType15isVPIAccessibleEv.exit:            ; preds = %_ZNK8VVarType15isVPIAccessibleEv.exit.sink.split, %_ZN7AstNode2isI20AstIfaceGenericDType12AstNodeDTypeEEbPKT0_.exit, %bb.dn, %bb.dq, %_ZN7AstNode2isI10AstPackage13AstNodeModuleEEbPKT0_.exit432
  %i.tq = load i32, ptr getelementptr inbounds nuw (i8, ptr @v3Global, i64 1184), align 8, !tbaa !561 ; 2 uses
  %.not188 = icmp eq i32 %i.tq, 0
  br i1 %.not188, label %bb.dv, label %bb.ds

bb.ds:                                            ; preds = %_ZNK8VVarType15isVPIAccessibleEv.exit
  %i.tr = load ptr, ptr %i.st, align 8, !tbaa !164 ; 3 uses
  %.not189 = icmp eq ptr %i.tr, null
  br i1 %.not189, label %bb.dv, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 280
  %i.tt = load i32, ptr %i.ts, align 8, !tbaa !256
  %i.tu = add nsw i32 %i.tt, -1
  %i.tv = icmp sgt i32 %i.tu, %i.tq
  br i1 %i.tv, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tr, i64 304 ; 2 uses
  %i.tx = load i16, ptr %i.tw, align 8
  %i.ty = and i16 %i.tx, -3
  store i16 %i.ty, ptr %i.tw, align 8
  %i.tz = load ptr, ptr %i.b, align 8, !tbaa !247
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 260 ; 2 uses
  %i.ub = load i64, ptr %i.ua, align 4
  %i.uc = and i64 %i.ub, -140737488355329
  store i64 %i.uc, ptr %i.ua, align 4
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt, %bb.ds, %_ZNK8VVarType15isVPIAccessibleEv.exit
  %i.ud = load ptr, ptr %i.b, align 8, !tbaa !247 ; 2 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr %i.ud, ptr %i.ue, align 8, !tbaa !149
  call void @_ZN7AstNode15iterateChildrenER9VNVisitor(ptr noundef nonnull align 8 dereferenceable(152) %i.ud, ptr noundef nonnull align 8 dereferenceable(32) %0)
  store ptr null, ptr %i.ue, align 8, !tbaa !149
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !245 ; 2 uses
  %.not190 = icmp eq ptr %i.ug, null
  br i1 %.not190, label %bb.eb, label %_ZN7AstNode2isI9AstAlways16AstNodeProcedureEEbPKT0_.exit

_ZN7AstNode2isI9AstAlways16AstNodeProcedureEEbPKT0_.exit: ; preds = %bb.dv
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 64
  %.sroa.0.0.copyload.i.i.i437 = load i16, ptr %i.uh, align 8, !tbaa !116
  %i.ui = icmp eq i16 %.sroa.0.0.copyload.i.i.i437, 391
  br i1 %i.ui, label %bb.dw, label %bb.eb

bb.dw:                                            ; preds = %_ZN7AstNode2isI9AstAlways16AstNodeProcedureEEbPKT0_.exit
  %i.uj = load ptr, ptr %i.b, align 8, !tbaa !247
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 88
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !178 ; 2 uses
  %i.um = load atomic i8, ptr @_ZGVZN8FileLine9singletonEvE1s acquire, align 8
  %i.un = icmp eq i8 %i.um, 0
  br i1 %i.un, label %bb.dx, label %_ZN8FileLine13modifyWarnOffE11V3ErrorCodeb.exit, !prof !167

bb.dx:                                            ; preds = %bb.dw
  %i.uo = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #24
  %.not.i.i.i.i.i = icmp eq i32 %i.uo, 0
  br i1 %.not.i.i.i.i.i, label %_ZN8FileLine13modifyWarnOffE11V3ErrorCodeb.exit, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  invoke void @_ZN17FileLineSingletonC2Ev(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s)
          to label %bb.dz unwind label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.up = call i32 @__cxa_atexit(ptr nonnull @_ZN17FileLineSingletonD2Ev, ptr nonnull @_ZZN8FileLine9singletonEvE1s, ptr nonnull @__dso_handle) #24 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #24
  br label %_ZN8FileLine13modifyWarnOffE11V3ErrorCodeb.exit

bb.ea:                                            ; preds = %bb.dy
  %i.uq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #24
  br label %common.resume

_ZN8FileLine13modifyWarnOffE11V3ErrorCodeb.exit:  ; preds = %bb.dw, %bb.dx, %bb.dz
  %i.ur = load i16, ptr %i.ul, align 8, !tbaa !200
  %i.us = call noundef zeroext i16 @_ZN17FileLineSingleton11msgEnSetBitEtNS_11MsgEnBitSet6SubsetE11V3ErrorCodeb(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s, i16 noundef zeroext %i.ur, i8 noundef zeroext 0, i8 33, i1 noundef zeroext false)
  store i16 %i.us, ptr %i.ul, align 8, !tbaa !200
  br label %bb.eb

bb.eb:                                            ; preds = %_ZN8FileLine13modifyWarnOffE11V3ErrorCodeb.exit, %_ZN7AstNode2isI9AstAlways16AstNodeProcedureEEbPKT0_.exit, %bb.dv
  %i.ut = load ptr, ptr %i.b, align 8, !tbaa !247 ; 5 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 40
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !173
  %.not191 = icmp eq ptr %i.uv, null
  br i1 %.not191, label %bb.ec, label %_ZNK6AstVar11needsCResetEv.exit.thread665

bb.ec:                                            ; preds = %bb.eb
  %i.uw = getelementptr inbounds nuw i8, ptr %i.ut, i64 260
  %i.ux = load i64, ptr %i.uw, align 4            ; 3 uses
  %i.uy = and i64 %i.ux, 34359738368
  %.not10.i = icmp eq i64 %i.uy, 0
  br i1 %.not10.i, label %bb.ed, label %_ZNK6AstVar11needsCResetEv.exit.thread

bb.ed:                                            ; preds = %bb.ec
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ut, i64 248
  %.sroa.0.0.copyload.i.i.i438 = load i8, ptr %i.uz, align 8, !tbaa !199 ; 3 uses
  %i.va = icmp eq i8 %.sroa.0.0.copyload.i.i.i438, 20
  %i.vb = and i64 %i.ux, 4398046511104
  %i.vc = icmp ne i64 %i.vb, 0
  %or.cond.i439 = or i1 %i.vc, %i.va
  %i.vd = add i8 %.sroa.0.0.copyload.i.i.i438, -1
  %spec.select.i.i.i = icmp ult i8 %i.vd, 2
  %or.cond6.i = or i1 %or.cond.i439, %spec.select.i.i.i
  %i.ve = icmp eq i8 %.sroa.0.0.copyload.i.i.i438, 18
  %or.cond7.i = or i1 %i.ve, %or.cond6.i
  %i.vf = and i64 %i.ux, 2199023255552
  %i.vg = icmp ne i64 %i.vf, 0
  %or.cond9.i = or i1 %i.vg, %or.cond7.i
  br i1 %or.cond9.i, label %_ZNK6AstVar11needsCResetEv.exit.thread, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.vh = getelementptr inbounds nuw i8, ptr %i.ut, i64 72 ; 2 uses
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !182 ; 2 uses
  %.not.i.i.i440 = icmp eq ptr %i.vi, null
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ut, i64 24 ; 2 uses
  %i.vk = load ptr, ptr %i.vj, align 8
  %i.vl = select i1 %.not.i.i.i440, ptr %i.vk, ptr %i.vi ; 2 uses
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !81
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 352
  %i.vo = load ptr, ptr %i.vn, align 8
  %i.vp = call noundef ptr %i.vo(ptr noundef nonnull align 8 dereferenceable(162) %i.vl), !inline_history !549
  %.not.i441 = icmp eq ptr %i.vp, null
  br i1 %.not.i441, label %_ZNK6AstVar11needsCResetEv.exit.thread665, label %_ZNK6AstVar11needsCResetEv.exit

_ZNK6AstVar11needsCResetEv.exit:                  ; preds = %bb.ee
  %i.vq = load ptr, ptr %i.vh, align 8, !tbaa !182 ; 2 uses
  %.not.i.i3.i = icmp eq ptr %i.vq, null
  %i.vr = load ptr, ptr %i.vj, align 8
  %i.vs = select i1 %.not.i.i3.i, ptr %i.vr, ptr %i.vq ; 2 uses
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !81
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 352
  %i.vv = load ptr, ptr %i.vu, align 8
  %i.vw = call noundef ptr %i.vv(ptr noundef nonnull align 8 dereferenceable(162) %i.vs), !inline_history !549
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 164
  %.sroa.0.0.copyload.i.i4.i = load i8, ptr %i.vx, align 4, !tbaa !166
  %.not687 = icmp eq i8 %.sroa.0.0.copyload.i.i4.i, 5
  br i1 %.not687, label %_ZNK6AstVar11needsCResetEv.exit.thread, label %_ZNK6AstVar11needsCResetEv.exit.thread665

_ZNK6AstVar11needsCResetEv.exit.thread665:        ; preds = %bb.ee, %_ZNK6AstVar11needsCResetEv.exit, %bb.eb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.vy = load ptr, ptr %i.b, align 8, !tbaa !247 ; 10 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 40
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !173 ; 2 uses
  %.not192 = icmp eq ptr %i.wa, null              ; 2 uses
  %. = select i1 %.not192, ptr %i.vy, ptr %i.wa
  %.in = getelementptr inbounds nuw i8, ptr %., i64 88
  %i.wb = load ptr, ptr %.in, align 8, !tbaa !178
  store ptr %i.wb, ptr %i.c, align 8, !tbaa !257
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24
  store ptr %i.b, ptr %19, align 8, !tbaa !562
  %i.wc = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %i.c, ptr %i.wc, align 8, !tbaa !260
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.we = load ptr, ptr %i.wd, align 8, !tbaa !93 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.we, null
  br i1 %.not10.i.i.i, label %_ZNSt3setIP6AstVarSt4lessIS1_ESaIS1_EE4findERKS1_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNK6AstVar11needsCResetEv.exit.thread665, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.we, %_ZNK6AstVar11needsCResetEv.exit.thread665 ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.wf, %_ZNK6AstVar11needsCResetEv.exit.thread665 ]
  %i.wg = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !247
  %i.wi = icmp ult ptr %i.wh, %i.vy               ; 2 uses
  %.19.i.i.i = select i1 %i.wi, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.wi, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !205 ; 2 uses
  %.not.i.i.i442 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i442, label %_ZNSt8_Rb_treeIP6AstVarS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !550

_ZNSt8_Rb_treeIP6AstVarS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.wj = icmp eq ptr %.19.i.i.i, %i.wf
  br i1 %i.wj, label %_ZNSt3setIP6AstVarSt4lessIS1_ESaIS1_EE4findERKS1_.exit.thread, label %_ZNSt3setIP6AstVarSt4lessIS1_ESaIS1_EE4findERKS1_.exit

_ZNSt3setIP6AstVarSt4lessIS1_ESaIS1_EE4findERKS1_.exit: ; preds = %_ZNSt8_Rb_treeIP6AstVarS1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS1_EPSt18_Rb_tree_node_baseRKS1_.exit.i.i
  %i.wk = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.wl = load ptr, ptr %i.wk, align 8, !tbaa !247
  %i.wm = icmp ult ptr %i.vy, %i.wl
  br i1 %i.wm, label %_ZNSt3setIP6AstVarSt4lessIS1_ESaIS1_EE4findERKS1_.exit.thread, label %bb.ef

bb.ef:                                            ; preds = %_ZNSt3setIP6AstVarSt4lessIS1_ESaIS1_EE4findERKS1_.exit
  %i.wn = call noundef i32 @_ZL5debugv()
  %i.wo = icmp sgt i32 %i.wn, 8
  br i1 %i.wo, label %bb.eg, label %bb.jc, !prof !22

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #24
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %20)
  %i.wp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit445 unwind label %bb.em ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit445: ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #24
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %21, ptr noundef nonnull @.str.1, i32 noundef 512)
          to label %bb.eh unwind label %bb.en

bb.eh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit445
  %i.wq = load ptr, ptr %21, align 8, !tbaa !28
  %i.wr = getelementptr inbounds nuw i8, ptr %21, i64 8
end_hunk_0
