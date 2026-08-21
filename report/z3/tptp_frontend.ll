inline.NumInlined: 6703
inline.NumDeleted: 2422
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_111tptp_parser11parse_inputERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
.noexc12.i:                                       ; preds = %bb.bi
  %i.np = add nsw i32 %.07.i.i, -1
  br label %.noexc13.i

_ZN12_GLOBAL__N_111tptp_parser6acceptENS_10token_kindE.exit6.i.i: ; preds = %.preheader
  invoke fastcc void @_ZN12_GLOBAL__N_111tptp_parser4nextEv(ptr noundef nonnull align 8 dereferenceable(944) %0)
          to label %.noexc13.i unwind label %.loopexit.split-lp.loopexit, !inline_history !388

.noexc13.i:                                       ; preds = %_ZN12_GLOBAL__N_111tptp_parser6acceptENS_10token_kindE.exit6.i.i, %.noexc12.i, %.noexc11.i
  %.1.i.i138 = phi i32 [ %i.no, %.noexc11.i ], [ %i.np, %.noexc12.i ], [ %.07.i.i, %_ZN12_GLOBAL__N_111tptp_parser6acceptENS_10token_kindE.exit6.i.i ] ; 2 uses
  %i.nq = icmp sgt i32 %.1.i.i138, 0
  br i1 %i.nq, label %.preheader, label %_ZN12_GLOBAL__N_111tptp_parser6acceptENS_10token_kindE.exit.i107, !llvm.loop !389

.loopexit:                                        ; preds = %bb.bl
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_ZN12_GLOBAL__N_111tptp_parser6acceptENS_10token_kindE.exit6.i.i, %bb.bi, %bb.bh
  %lpad.loopexit181 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %_ZN12_GLOBAL__N_111tptp_parser6acceptENS_10token_kindE.exit.thread.i.i137, %bb.bk
  %lpad.loopexit185 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.be, %bb.bg, %_ZN12_GLOBAL__N_111tptp_parser6acceptENS_10token_kindE.exit.i107, %bb.bm
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.outer.i.i131:                                    ; preds = %bb.bf, %.outer.i.i131.backedge
  %.0.ph.i.i132 = phi i32 [ %.0.ph.i.i132.be, %.outer.i.i131.backedge ], [ 0, %bb.bf ] ; 3 uses
  br label %.noexc16.i

.noexc16.i:                                       ; preds = %bb.bl, %.outer.i.i131
  %.val4.i.i133 = load i32, ptr %i.q, align 8, !tbaa !383
  switch i32 %.val4.i.i133, label %bb.bl [
    i32 0, label %_ZN12_GLOBAL__N_111tptp_parser6acceptENS_10token_kindE.exit.i107
    i32 3, label %_ZN12_GLOBAL__N_111tptp_parser6acceptENS_10token_kindE.exit.thread.i.i137
    i32 5, label %_ZN12_GLOBAL__N_111tptp_parser6acceptENS_10token_kindE.exit.thread.i.i137
    i32 4, label %bb.bj
    i32 6, label %bb.bj
  ]

_ZN12_GLOBAL__N_111tptp_parser6acceptENS_10token_kindE.exit.thread.i.i137: ; preds = %.noexc16.i, %.noexc16.i
  invoke fastcc void @_ZN12_GLOBAL__N_111tptp_parser4nextEv(ptr noundef nonnull align 8 dereferenceable(944) %0)
          to label %.noexc14.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !388

.noexc14.i:                                       ; preds = %_ZN12_GLOBAL__N_111tptp_parser6acceptENS_10token_kindE.exit.thread.i.i137
  %i.nr = add nsw i32 %.0.ph.i.i132, 1
  br label %.outer.i.i131.backedge

bb.bj:                                            ; preds = %.noexc16.i, %.noexc16.i
  %i.ns = icmp eq i32 %.0.ph.i.i132, 0
  br i1 %i.ns, label %_ZN12_GLOBAL__N_111tptp_parser6acceptENS_10token_kindE.exit.i107, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.nt = add nsw i32 %.0.ph.i.i132, -1
  invoke fastcc void @_ZN12_GLOBAL__N_111tptp_parser4nextEv(ptr noundef nonnull align 8 dereferenceable(944) %0)
          to label %.outer.i.i131.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !388

.outer.i.i131.backedge:                           ; preds = %bb.bk, %.noexc14.i
  %.0.ph.i.i132.be = phi i32 [ %i.nt, %bb.bk ], [ %i.nr, %.noexc14.i ]
  br label %.outer.i.i131, !llvm.loop !390

bb.bl:                                            ; preds = %.noexc16.i
  invoke fastcc void @_ZN12_GLOBAL__N_111tptp_parser4nextEv(ptr noundef nonnull align 8 dereferenceable(944) %0)
          to label %.noexc16.i unwind label %.loopexit, !llvm.loop !390, !inline_history !388

_ZN12_GLOBAL__N_111tptp_parser6acceptENS_10token_kindE.exit.i107: ; preds = %bb.bj, %.preheader, %.noexc13.i, %.noexc16.i, %.noexc141
  invoke fastcc void @_ZN12_GLOBAL__N_111tptp_parser6expectENS_10token_kindEPKc(ptr noundef nonnull align 8 dereferenceable(944) %0, i32 noundef 4, ptr noundef nonnull @.str.113)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !388

bb.bm:                                            ; preds = %_ZN12_GLOBAL__N_111tptp_parser6acceptENS_10token_kindE.exit.i107
  invoke fastcc void @_ZN12_GLOBAL__N_111tptp_parser6expectENS_10token_kindEPKc(ptr noundef nonnull align 8 dereferenceable(944) %0, i32 noundef 8, ptr noundef nonnull @.str.114)
          to label %bb.bn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !388

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #29
  call void @llvm.experimental.noalias.scope.decl(metadata !391)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  %.val.i17.i = load ptr, ptr %26, align 8, !noalias !391 ; 3 uses
  %.val51.i.i = load i64, ptr %i.lb, align 8, !tbaa !221, !noalias !391 ; 10 uses
  %i.nu = icmp eq i64 %.val51.i.i, 0
  br i1 %i.nu, label %_ZN12_GLOBAL__N_111tptp_parser16is_absolute_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.nv = load i8, ptr %.val.i17.i, align 1, !tbaa !222 ; 3 uses
  %i.nw = icmp eq i8 %i.nv, 47
  br i1 %i.nw, label %_ZN12_GLOBAL__N_111tptp_parser16is_absolute_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread1.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.not1.i.i.i = icmp eq i64 %.val51.i.i, 1
  br i1 %.not1.i.i.i, label %_ZN12_GLOBAL__N_111tptp_parser16is_absolute_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.nx = zext i8 %i.nv to i32
  %i.ny = call i32 @isalpha(i32 noundef %i.nx) #34, !inline_history !388
  %.not.i.i.i109 = icmp eq i32 %i.ny, 0
  br i1 %.not.i.i.i109, label %_ZN12_GLOBAL__N_111tptp_parser16is_absolute_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i.i, label %_ZN12_GLOBAL__N_111tptp_parser16is_absolute_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i

_ZN12_GLOBAL__N_111tptp_parser16is_absolute_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i: ; preds = %bb.bq
  %i.nz = getelementptr inbounds nuw i8, ptr %.val.i17.i, i64 1
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !222
  %i.ob = icmp eq i8 %i.oa, 58
  br i1 %i.ob, label %_ZN12_GLOBAL__N_111tptp_parser16is_absolute_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread1.i.i, label %_ZN12_GLOBAL__N_111tptp_parser16is_absolute_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i.i

_ZN12_GLOBAL__N_111tptp_parser16is_absolute_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread1.i.i: ; preds = %_ZN12_GLOBAL__N_111tptp_parser16is_absolute_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, %bb.bo
  store ptr %i.lc, ptr %12, align 8, !tbaa !220, !noalias !391
  %i.oc = icmp ugt i64 %.val51.i.i, 15
  br i1 %i.oc, label %bb.br, label %._crit_edge.i.i.i.i127

bb.br:                                            ; preds = %_ZN12_GLOBAL__N_111tptp_parser16is_absolute_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread1.i.i
  %i.od = icmp slt i64 %.val51.i.i, 0
  br i1 %i.od, label %.noexc.i.i.i.invoke, label %bb.bs

.noexc.i.i.i.invoke:                              ; preds = %bb.bx, %bb.br
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #31
          to label %.noexc.i.i.i.cont unwind label %.loopexit.split-lp195, !inline_history !388

.noexc.i.i.i.cont:                                ; preds = %.noexc.i.i.i.invoke
  unreachable

bb.bs:                                            ; preds = %bb.br
  %i.oe = add nuw i64 %.val51.i.i, 1              ; 2 uses
  %i.of = icmp slt i64 %i.oe, 0
  br i1 %i.of, label %.noexc6.i.i.i.invoke, label %._crit_edge.i.i.thread.i.i, !prof !309

.noexc6.i.i.i.invoke:                             ; preds = %bb.by, %bb.bs
  invoke void @_ZSt17__throw_bad_allocv() #31
          to label %.noexc6.i.i.i.cont unwind label %.loopexit.split-lp195, !inline_history !388

.noexc6.i.i.i.cont:                               ; preds = %.noexc6.i.i.i.invoke
  unreachable

._crit_edge.i.i.thread.i.i:                       ; preds = %bb.bs
  %i.og = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.oe) #32
          to label %.noexc20.i unwind label %.loopexit194, !inline_history !388 ; 2 uses

.noexc20.i:                                       ; preds = %._crit_edge.i.i.thread.i.i
  store ptr %i.og, ptr %12, align 8, !tbaa !307, !noalias !391
  store i64 %.val51.i.i, ptr %i.lc, align 8, !tbaa !222, !noalias !391
  br label %bb.bu

._crit_edge.i.i.i.i127:                           ; preds = %_ZN12_GLOBAL__N_111tptp_parser16is_absolute_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread1.i.i
  %cond4.i.i = icmp eq i64 %.val51.i.i, 1
  br i1 %cond4.i.i, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %._crit_edge.i.i.i.i127
  store i8 %i.nv, ptr %i.lc, align 8, !tbaa !222, !noalias !391
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.bu:                                            ; preds = %._crit_edge.i.i.i.i127, %.noexc20.i
  %i.oh = phi ptr [ %i.og, %.noexc20.i ], [ %i.lc, %._crit_edge.i.i.i.i127 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.oh, ptr nonnull align 1 %.val.i17.i, i64 %.val51.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.bu, %bb.bt
  %i.oi = phi ptr [ %i.lc, %bb.bt ], [ %i.oh, %bb.bu ]
  store i64 %.val51.i.i, ptr %i.ld, align 8, !tbaa !221, !noalias !391
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %.val51.i.i
  store i8 0, ptr %i.oj, align 1, !tbaa !222
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  store ptr %i.le, ptr %27, align 8, !tbaa !220, !alias.scope !397
  %i.ok = load ptr, ptr %12, align 8, !tbaa !307, !noalias !397 ; 2 uses
  %i.ol = icmp eq ptr %i.ok, %i.lc
  br i1 %i.ol, label %bb.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i128

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.om = load i64, ptr %i.ld, align 8, !tbaa !221, !noalias !397 ; 3 uses
  %i.on = icmp ult i64 %i.om, 16
  call void @llvm.assume(i1 %i.on)
  %i.oo = add nuw nsw i64 %i.om, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.le, ptr noundef nonnull align 8 dereferenceable(1) %i.lc, i64 %i.oo, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  store ptr %i.ok, ptr %27, align 8, !tbaa !307, !alias.scope !397
  %i.op = load i64, ptr %i.lc, align 8, !tbaa !222, !noalias !397
  store i64 %i.op, ptr %i.le, align 8, !tbaa !222, !alias.scope !397
  %.pre.i.i.i129 = load i64, ptr %i.ld, align 8, !tbaa !221, !noalias !397
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i130: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i128, %bb.bv
  %i.oq = phi i64 [ %i.om, %bb.bv ], [ %.pre.i.i.i129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i128 ]
  store i64 %i.oq, ptr %i.lf, align 8, !tbaa !221, !alias.scope !397
  br label %_ZNK12_GLOBAL__N_111tptp_parser15resolve_includeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.i

_ZN12_GLOBAL__N_111tptp_parser16is_absolute_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i.i: ; preds = %_ZN12_GLOBAL__N_111tptp_parser16is_absolute_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, %bb.bq, %bb.bp, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29, !noalias !391
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29, !noalias !391
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29, !noalias !391
  %.val54.i.i = load ptr, ptr %2, align 8, !noalias !391 ; 3 uses
  %.val55.i.i = load i64, ptr %i.lg, align 8, !tbaa !221, !noalias !391 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !398)
  %.not.i57.i.i = icmp eq i64 %.val55.i.i, 0
  br i1 %.not.i57.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i: ; preds = %_ZN12_GLOBAL__N_111tptp_parser16is_absolute_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i.i, %bb.bw
  %.1.i.i.in.i.i.i = phi i64 [ %.1.i.i.i.i.i, %bb.bw ], [ %.val55.i.i, %_ZN12_GLOBAL__N_111tptp_parser16is_absolute_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i.i ] ; 3 uses
  %.1.i.i.i.i.i = add i64 %.1.i.i.in.i.i.i, -1    ; 10 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.val54.i.i, i64 %.1.i.i.i.i.i
  %i.os = load i8, ptr %i.or, align 1, !tbaa !222, !noalias !398
  switch i8 %i.os, label %bb.bw [
    i8 92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i.i.i
    i8 47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i.i.i
  ]

bb.bw:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i
  %.not17.i.i.i.i.i = icmp eq i64 %.1.i.i.i.i.i, 0
  br i1 %.not17.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i, !llvm.loop !401

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.thread: ; preds = %bb.bw, %_ZN12_GLOBAL__N_111tptp_parser16is_absolute_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i.i
  store ptr %i.lh, ptr %16, align 8, !tbaa !220, !alias.scope !398, !noalias !391
  store i8 46, ptr %i.lh, align 8, !tbaa !222, !alias.scope !398, !noalias !391
  store i64 1, ptr %i.li, align 8, !tbaa !221, !alias.scope !398, !noalias !391
  store i8 0, ptr %i.lj, align 1, !tbaa !222, !alias.scope !398, !noalias !391
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i125

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i
  store ptr %i.lh, ptr %16, align 8, !tbaa !220, !alias.scope !402, !noalias !391
  %i.ot = icmp ugt i64 %.1.i.i.i.i.i, 15
  br i1 %i.ot, label %bb.bx, label %._crit_edge.i.i.i.i.i.i

bb.bx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i.i.i
  %i.ou = icmp slt i64 %.1.i.i.i.i.i, 0
  br i1 %i.ou, label %.noexc.i.i.i.invoke, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ov = icmp slt i64 %.1.i.i.in.i.i.i, 0
  br i1 %i.ov, label %.noexc6.i.i.i.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !309

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.by
  %i.ow = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.1.i.i.in.i.i.i) #32
          to label %.noexc23.i unwind label %.loopexit194, !inline_history !388 ; 2 uses

.noexc23.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i
  store ptr %i.ow, ptr %16, align 8, !tbaa !307, !alias.scope !402, !noalias !391
  store i64 %.1.i.i.i.i.i, ptr %i.lh, align 8, !tbaa !222, !alias.scope !402, !noalias !391
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc23.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i.i.i
  %i.ox = phi ptr [ %i.ow, %.noexc23.i ], [ %i.lh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i.i.i ] ; 3 uses
  switch i64 %.1.i.i.i.i.i, label %bb.ca [
    i64 1, label %bb.bz
    i64 0, label %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i
  ]

bb.bz:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.oy = load i8, ptr %.val54.i.i, align 1, !tbaa !222, !noalias !398
  store i8 %i.oy, ptr %i.ox, align 1, !tbaa !222
  br label %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i

bb.ca:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ox, ptr nonnull readonly align 1 %.val54.i.i, i64 %.1.i.i.i.i.i, i1 false)
  br label %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i

_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i: ; preds = %bb.ca, %bb.bz, %._crit_edge.i.i.i.i.i.i
  store i64 %.1.i.i.i.i.i, ptr %i.li, align 8, !tbaa !221, !alias.scope !402, !noalias !391
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 %.1.i.i.i.i.i
  store i8 0, ptr %i.oz, align 1, !tbaa !222
  %.pre.i.i110 = load i64, ptr %i.li, align 8, !tbaa !221, !noalias !405 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.pa = icmp eq i64 %.pre.i.i110, 9223372036854775807
  br i1 %i.pa, label %bb.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.cb:                                            ; preds = %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #31
          to label %.noexc.i.i126 unwind label %.loopexit.split-lp200, !inline_history !388

.noexc.i.i126:                                    ; preds = %bb.cb
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i
  %.pre769 = load ptr, ptr %16, align 8, !tbaa !307, !noalias !405 ; 3 uses
  %i.pb = add nsw i64 %.pre.i.i110, 1             ; 2 uses
  %i.pc = icmp eq ptr %.pre769, %i.lh
  br i1 %i.pc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i125: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.pd = phi i64 [ 2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.thread ], [ %i.pb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i ]
  %i.pe = phi i64 [ 1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.thread ], [ %.pre.i.i110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i ] ; 2 uses
  %i.pf = phi ptr [ %i.lh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.thread ], [ %.pre769, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i ]
  %i.pg = icmp ult i64 %i.pe, 16
  call void @llvm.assume(i1 %i.pg)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i111: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.ph = load i64, ptr %i.lh, align 8, !tbaa !222, !noalias !405
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i125
  %i.pi = phi i64 [ %i.pb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i111 ], [ %i.pd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i125 ] ; 3 uses
  %i.pj = phi i64 [ %.pre.i.i110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i111 ], [ %i.pe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i125 ] ; 2 uses
  %i.pk = phi ptr [ %.pre769, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i111 ], [ %i.pf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i125 ]
  %i.pl = phi i64 [ %i.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i111 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i125 ]
  %.not.i.i.i.i.i112 = icmp ugt i64 %i.pi, %i.pl
  br i1 %.not.i.i.i.i.i112, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pk, i64 %i.pj
  store i8 47, ptr %i.pm, align 1, !tbaa !222, !noalias !408
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i

bb.cd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.pj, i64 noundef 0, ptr noundef nonnull @.str.118, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i unwind label %.loopexit199, !inline_history !388

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i: ; preds = %bb.cd, %bb.cc
  store i64 %i.pi, ptr %i.li, align 8, !tbaa !221, !noalias !405
  %i.pn = load ptr, ptr %16, align 8, !tbaa !307, !noalias !405
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.pi
  store i8 0, ptr %i.po, align 1, !tbaa !222, !noalias !408
  store ptr %i.lk, ptr %15, align 8, !tbaa !220, !alias.scope !408, !noalias !391
  %i.pp = load ptr, ptr %16, align 8, !tbaa !307, !noalias !405 ; 3 uses
  %i.pq = icmp eq ptr %i.pp, %i.lh
  br i1 %i.pq, label %bb.ce, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i.i

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i
  %i.pr = load i64, ptr %i.li, align 8, !tbaa !221, !noalias !405 ; 3 uses
  %i.ps = icmp ult i64 %i.pr, 16
  call void @llvm.assume(i1 %i.ps)
  %i.pt = add nuw nsw i64 %i.pr, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lk, ptr noundef nonnull align 8 dereferenceable(1) %i.lh, i64 %i.pt, i1 false), !noalias !391
  br label %bb.cf

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i
  store ptr %i.pp, ptr %15, align 8, !tbaa !307, !alias.scope !408, !noalias !391
  %i.pu = load i64, ptr %i.lh, align 8, !tbaa !222, !noalias !405
  store i64 %i.pu, ptr %i.lk, align 8, !tbaa !222, !alias.scope !408, !noalias !391
  %.pre.i59.i.i = load i64, ptr %i.li, align 8, !tbaa !221, !noalias !405
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i.i, %bb.ce
  %i.pv = phi ptr [ %i.lk, %bb.ce ], [ %i.pp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i.i ] ; 2 uses
  %i.pw = phi i64 [ %i.pr, %bb.ce ], [ %.pre.i59.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i.i ] ; 6 uses
  store i64 %i.pw, ptr %i.ll, align 8, !tbaa !221, !alias.scope !408, !noalias !391
  store ptr %i.lh, ptr %16, align 8, !tbaa !307, !noalias !405
  store i64 0, ptr %i.li, align 8, !tbaa !221, !noalias !405
  store i8 0, ptr %i.lh, align 8, !tbaa !222, !noalias !405
  call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %i.px = load ptr, ptr %26, align 8, !tbaa !307, !noalias !412 ; 3 uses
  %i.py = load i64, ptr %i.lb, align 8, !tbaa !221, !noalias !412 ; 6 uses
  %i.pz = sub i64 9223372036854775807, %i.pw
  %i.qa = icmp ult i64 %i.pz, %i.py
  br i1 %i.qa, label %bb.cg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #31
          to label %.noexc63.i.i unwind label %.loopexit.split-lp205, !inline_history !388

.noexc63.i.i:                                     ; preds = %bb.cg
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i: ; preds = %bb.cf
  %i.qb = add i64 %i.py, %i.pw                    ; 3 uses
  %i.qc = icmp eq ptr %i.pv, %i.lk
  br i1 %i.qc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i
  %i.qd = icmp ult i64 %i.pw, 16
  call void @llvm.assume(i1 %i.qd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i
  %i.qe = load i64, ptr %i.lk, align 8, !tbaa !222, !noalias !412
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.qf = phi i64 [ %i.qe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i ]
  %.not.i.i.i.i.i.i113 = icmp ugt i64 %i.qb, %i.qf
  br i1 %.not.i.i.i.i.i.i113, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %.not8.i.i.i.i.i.i = icmp eq i64 %i.py, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pv, i64 %i.pw ; 2 uses
  %cond.i.i.i.i.i.i = icmp eq i64 %i.py, 1
  br i1 %cond.i.i.i.i.i.i, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.qh = load i8, ptr %i.px, align 1, !tbaa !222, !noalias !409
  store i8 %i.qh, ptr %i.qg, align 1, !tbaa !222, !noalias !409
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qg, ptr align 1 %i.px, i64 %i.py, i1 false), !noalias !409
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i

bb.cl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %i.pw, i64 noundef 0, ptr noundef %i.px, i64 noundef %i.py)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i unwind label %.loopexit204, !inline_history !388

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i: ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ch
  store i64 %i.qb, ptr %i.ll, align 8, !tbaa !221, !noalias !412
  %i.qi = load ptr, ptr %15, align 8, !tbaa !307, !noalias !412
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.qb
  store i8 0, ptr %i.qj, align 1, !tbaa !222, !noalias !409
  %i.qk = load ptr, ptr %15, align 8, !tbaa !307, !noalias !412 ; 3 uses
  %i.ql = icmp eq ptr %i.qk, %i.lk
  br i1 %i.ql, label %.thread.i.i124, label %bb.cm

.thread.i.i124:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i
  %i.qm = load i64, ptr %i.ll, align 8, !tbaa !221, !noalias !412 ; 3 uses
  %i.qn = icmp ult i64 %i.qm, 16
  call void @llvm.assume(i1 %i.qn)
  %i.qo = add nuw nsw i64 %i.qm, 1                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lm, ptr noundef nonnull align 8 dereferenceable(1) %i.lk, i64 %i.qo, i1 false), !noalias !391
  store ptr %i.lk, ptr %15, align 8, !tbaa !307, !noalias !412
  store i64 0, ptr %i.ll, align 8, !tbaa !221, !noalias !412
  store i8 0, ptr %i.lk, align 8, !tbaa !222, !noalias !412
  store ptr %i.lo, ptr %13, align 8, !tbaa !220, !alias.scope !413, !noalias !391
  br label %bb.cn

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i
  %i.qp = load i64, ptr %i.lk, align 8, !tbaa !222, !noalias !412 ; 2 uses
  store i64 %i.qp, ptr %i.lm, align 8, !tbaa !222, !alias.scope !409, !noalias !391
  %.pre.i62.i.i = load i64, ptr %i.ll, align 8, !tbaa !221, !noalias !412 ; 3 uses
  store ptr %i.lk, ptr %15, align 8, !tbaa !307, !noalias !412
  store i64 0, ptr %i.ll, align 8, !tbaa !221, !noalias !412
  store i8 0, ptr %i.lk, align 8, !tbaa !222, !noalias !412
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  store ptr %i.lo, ptr %13, align 8, !tbaa !220, !alias.scope !416, !noalias !391
  %i.qq = icmp eq ptr %i.qk, %i.lm
  br i1 %i.qq, label %._crit_edge775, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i

._crit_edge775:                                   ; preds = %bb.cm
  %.pre776.a = add nuw nsw i64 %.pre.i62.i.i, 1
  br label %bb.cn

bb.cn:                                            ; preds = %._crit_edge775, %.thread.i.i124
  %.pre-phi = phi i64 [ %.pre776.a, %._crit_edge775 ], [ %i.qo, %.thread.i.i124 ]
  %i.qr = phi i64 [ %.pre.i62.i.i, %._crit_edge775 ], [ %i.qm, %.thread.i.i124 ] ; 2 uses
  %i.qs = icmp ult i64 %i.qr, 16
  call void @llvm.assume(i1 %i.qs)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lo, ptr noundef nonnull align 8 dereferenceable(1) %i.lm, i64 %.pre-phi, i1 false), !noalias !391
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i: ; preds = %bb.cm
  store ptr %i.qk, ptr %13, align 8, !tbaa !307, !alias.scope !416, !noalias !391
  store i64 %i.qp, ptr %i.lo, align 8, !tbaa !222, !alias.scope !416, !noalias !391
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i, %bb.cn
  %i.qt = phi i64 [ %i.qr, %bb.cn ], [ %.pre.i62.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i ]
  store i64 %i.qt, ptr %i.lp, align 8, !tbaa !221, !alias.scope !416, !noalias !391
  store ptr %i.lm, ptr %14, align 8, !tbaa !307, !noalias !418
  store i64 0, ptr %i.ln, align 8, !tbaa !221, !noalias !418
  store i8 0, ptr %i.lm, align 8, !tbaa !222, !noalias !418
  %.pre38.i.i = load ptr, ptr %16, align 8, !tbaa !307, !noalias !391 ; 2 uses
  %i.qu = icmp eq ptr %.pre38.i.i, %i.lh
  br i1 %i.qu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i
  %i.qv = load i64, ptr %i.lh, align 8, !tbaa !222, !noalias !391
  %i.qw = add i64 %i.qv, 1
  call void @_ZdlPvm(ptr noundef %.pre38.i.i, i64 noundef %i.qw) #30, !inline_history !388
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i.i
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_111tptp_parser11parse_inputERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i108.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i115.i.i
  %i.tf = phi i64 [ %i.te, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i115.i.i ]
  %.not.i.i.i.i109.i.i = icmp ugt i64 %i.tb, %i.tf
  br i1 %.not.i.i.i.i109.i.i, label %bb.dk, label %bb.dg

bb.dg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i108.i.i
  %.not8.i.i.i.i110.i.i = icmp eq i64 %i.sy, 0
  br i1 %.not8.i.i.i.i110.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i112.i.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.sw ; 2 uses
  %cond.i.i.i.i111.i.i = icmp eq i64 %i.sy, 1
  br i1 %cond.i.i.i.i111.i.i, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.th = load i8, ptr %i.sx, align 1, !tbaa !222, !noalias !423
  store i8 %i.th, ptr %i.tg, align 1, !tbaa !222, !noalias !423
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i112.i.i

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tg, ptr align 1 %i.sx, i64 %i.sy, i1 false), !noalias !423
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i112.i.i

bb.dk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i108.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef %i.sw, i64 noundef 0, ptr noundef %i.sx, i64 noundef %i.sy)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i112.i.i unwind label %.loopexit219, !inline_history !388

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i112.i.i: ; preds = %bb.dk, %bb.dj, %bb.di, %bb.dg
  store i64 %i.tb, ptr %i.lt, align 8, !tbaa !221, !noalias !426
  %i.ti = load ptr, ptr %18, align 8, !tbaa !307, !noalias !426
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.tb
  store i8 0, ptr %i.tj, align 1, !tbaa !222, !noalias !423
  %i.tk = load ptr, ptr %18, align 8, !tbaa !307, !noalias !426 ; 3 uses
  %i.tl = icmp eq ptr %i.tk, %i.ls
  br i1 %i.tl, label %.thread145.i.i, label %bb.dl

.thread145.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i112.i.i
  %i.tm = load i64, ptr %i.lt, align 8, !tbaa !221, !noalias !426 ; 3 uses
  %i.tn = icmp ult i64 %i.tm, 16
  call void @llvm.assume(i1 %i.tn)
  %i.to = add nuw nsw i64 %i.tm, 1                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lu, ptr noundef nonnull align 8 dereferenceable(1) %i.ls, i64 %i.to, i1 false), !noalias !391
  store ptr %i.ls, ptr %18, align 8, !tbaa !307, !noalias !426
  store i64 0, ptr %i.lt, align 8, !tbaa !221, !noalias !426
  store i8 0, ptr %i.ls, align 8, !tbaa !222, !noalias !426
  store ptr %i.le, ptr %27, align 8, !tbaa !220, !alias.scope !427
  br label %bb.dm

bb.dl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i112.i.i
  %i.tp = load i64, ptr %i.ls, align 8, !tbaa !222, !noalias !426 ; 2 uses
  store i64 %i.tp, ptr %i.lu, align 8, !tbaa !222, !alias.scope !423, !noalias !391
  %.pre.i114.i.i = load i64, ptr %i.lt, align 8, !tbaa !221, !noalias !426 ; 3 uses
  store ptr %i.ls, ptr %18, align 8, !tbaa !307, !noalias !426
  store i64 0, ptr %i.lt, align 8, !tbaa !221, !noalias !426
  store i8 0, ptr %i.ls, align 8, !tbaa !222, !noalias !426
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  store ptr %i.le, ptr %27, align 8, !tbaa !220, !alias.scope !432
  %i.tq = icmp eq ptr %i.tk, %i.lu
  br i1 %i.tq, label %._crit_edge773, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i.i

._crit_edge773:                                   ; preds = %bb.dl
  %.pre779 = add nuw nsw i64 %.pre.i114.i.i, 1
  br label %bb.dm

bb.dm:                                            ; preds = %._crit_edge773, %.thread145.i.i
  %.pre-phi780 = phi i64 [ %.pre779, %._crit_edge773 ], [ %i.to, %.thread145.i.i ]
  %i.tr = phi i64 [ %.pre.i114.i.i, %._crit_edge773 ], [ %i.tm, %.thread145.i.i ] ; 2 uses
  %i.ts = icmp ult i64 %i.tr, 16
  call void @llvm.assume(i1 %i.ts)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.le, ptr noundef nonnull align 8 dereferenceable(1) %i.lu, i64 %.pre-phi780, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i.i: ; preds = %bb.dl
  store ptr %i.tk, ptr %27, align 8, !tbaa !307, !alias.scope !432
  store i64 %i.tp, ptr %i.le, align 8, !tbaa !222, !alias.scope !432
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i.i, %bb.dm
  %i.tt = phi i64 [ %i.tr, %bb.dm ], [ %.pre.i114.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i.i ]
  store i64 %i.tt, ptr %i.lf, align 8, !tbaa !221, !alias.scope !432
  store ptr %i.lu, ptr %17, align 8, !tbaa !307, !noalias !432
  store i64 0, ptr %i.lv, align 8, !tbaa !221, !noalias !432
  store i8 0, ptr %i.lu, align 8, !tbaa !222, !noalias !432
  %.pre39.i.i = load ptr, ptr %19, align 8, !tbaa !307, !noalias !391 ; 2 uses
  %i.tu = icmp eq ptr %.pre39.i.i, %i.lq
  br i1 %i.tu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i.i
  %i.tv = load i64, ptr %i.lq, align 8, !tbaa !222, !noalias !391
  %i.tw = add i64 %i.tv, 1
  call void @_ZdlPvm(ptr noundef %.pre39.i.i, i64 noundef %i.tw) #30, !inline_history !388
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29, !noalias !391
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29, !noalias !391
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29, !noalias !391
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %10, ptr noundef nonnull align 8 dereferenceable(32) %27, i32 noundef 8)
          to label %bb.dp unwind label %bb.do, !inline_history !388

.loopexit209:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i87.i.i
  %lpad.loopexit211 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i.i

.loopexit.split-lp210:                            ; preds = %.noexc.i88.i.i, %.noexc11.i.i.i122
  %lpad.loopexit.split-lp212 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i.i

.loopexit214:                                     ; preds = %bb.dc
  %lpad.loopexit216 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.i.i

.loopexit.split-lp215:                            ; preds = %bb.da
  %lpad.loopexit.split-lp217 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.i.i

.loopexit219:                                     ; preds = %bb.dk
  %lpad.loopexit221 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

.loopexit.split-lp220:                            ; preds = %bb.df
  %lpad.loopexit.split-lp222 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.dn:                                            ; preds = %.loopexit.split-lp220, %.loopexit219
  %lpad.phi223 = phi { ptr, i32 } [ %lpad.loopexit221, %.loopexit219 ], [ %lpad.loopexit.split-lp222, %.loopexit.split-lp220 ] ; 2 uses
  %i.tx = load ptr, ptr %18, align 8, !tbaa !307, !noalias !391 ; 2 uses
  %i.ty = icmp eq ptr %i.tx, %i.ls
  br i1 %i.ty, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135.i.i: ; preds = %bb.dn
  %i.tz = load i64, ptr %i.ls, align 8, !tbaa !222, !noalias !391
  %i.ua = add i64 %i.tz, 1
  call void @_ZdlPvm(ptr noundef %i.tx, i64 noundef %i.ua) #30, !inline_history !388
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.i.i: ; preds = %bb.dn, %.loopexit214, %.loopexit.split-lp215, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135.i.i
  %.pn37.i.i = phi { ptr, i32 } [ %lpad.phi223, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135.i.i ], [ %lpad.loopexit.split-lp217, %.loopexit.split-lp215 ], [ %lpad.loopexit216, %.loopexit214 ], [ %lpad.phi223, %bb.dn ] ; 2 uses
  %i.ub = load ptr, ptr %19, align 8, !tbaa !307, !noalias !391 ; 2 uses
  %i.uc = icmp eq ptr %i.ub, %i.lq
  br i1 %i.uc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.i.i
  %i.ud = load i64, ptr %i.lq, align 8, !tbaa !222, !noalias !391
  %i.ue = add i64 %i.ud, 1
  call void @_ZdlPvm(ptr noundef %i.ub, i64 noundef %i.ue) #30, !inline_history !388
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.i.i, %.loopexit209, %.loopexit.split-lp210, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.i.i
  %.pn37.pn.i.i = phi { ptr, i32 } [ %.pn37.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.i.i ], [ %lpad.loopexit.split-lp212, %.loopexit.split-lp210 ], [ %lpad.loopexit211, %.loopexit209 ], [ %.pn37.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29, !noalias !391
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29, !noalias !391
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.i.i

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i
  %i.uf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ug = load ptr, ptr %27, align 8, !tbaa !307, !alias.scope !391 ; 2 uses
  %i.uh = icmp eq ptr %i.ug, %i.le
  br i1 %i.uh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141.i.i: ; preds = %bb.do
  %i.ui = load i64, ptr %i.le, align 8, !tbaa !222, !alias.scope !391
  %i.uj = add i64 %i.ui, 1
  call void @_ZdlPvm(ptr noundef %i.ug, i64 noundef %i.uj) #30, !inline_history !388
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.i.i

bb.dp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i
  %i.uk = load ptr, ptr %10, align 8, !tbaa !8, !noalias !391
  %i.ul = getelementptr i8, ptr %i.uk, i64 -24
  %i.um = load i64, ptr %i.ul, align 8
  %i.un = getelementptr inbounds i8, ptr %10, i64 %i.um
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 32
  %i.up = load i32, ptr %i.uo, align 8, !tbaa !10, !noalias !391
  %i.uq = and i32 %i.up, 5
  %.not.i132.i.i = icmp eq i32 %i.uq, 0
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %10) #29, !inline_history !388
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29, !noalias !391
  br i1 %.not.i132.i.i, label %.critedge.i.i120, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ur = load ptr, ptr %27, align 8, !tbaa !307, !alias.scope !391 ; 2 uses
  %i.us = icmp eq ptr %i.ur, %i.le
  br i1 %i.us, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.i.i: ; preds = %bb.dq
  %i.ut = load i64, ptr %i.le, align 8, !tbaa !222, !alias.scope !391
  %i.uu = add i64 %i.ut, 1
  call void @_ZdlPvm(ptr noundef %i.ur, i64 noundef %i.uu) #30, !inline_history !388
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i.i: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.i.i, %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29, !noalias !391
  %.val52.i.i = load ptr, ptr %2, align 8, !noalias !391 ; 3 uses
  %.val53.i.i = load i64, ptr %i.lg, align 8, !tbaa !221, !noalias !391 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %.not.i147.i.i = icmp eq i64 %.val53.i.i, 0
  br i1 %.not.i147.i.i, label %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit162.i.i.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i148.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i148.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i.i, %bb.dr
  %.1.i.i.in.i149.i.i = phi i64 [ %.1.i.i.i150.i.i, %bb.dr ], [ %.val53.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i.i ] ; 3 uses
  %.1.i.i.i150.i.i = add i64 %.1.i.i.in.i149.i.i, -1 ; 10 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.val52.i.i, i64 %.1.i.i.i150.i.i
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !222, !noalias !433
  switch i8 %i.uw, label %bb.dr [
    i8 92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i151.i.i
    i8 47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i151.i.i
  ]

bb.dr:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i148.i.i
  %.not17.i.i.i157.i.i = icmp eq i64 %.1.i.i.i150.i.i, 0
  br i1 %.not17.i.i.i157.i.i, label %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit162.i.i.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i148.i.i, !llvm.loop !401

_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit162.i.i.thread: ; preds = %bb.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i.i
  store ptr %i.lw, ptr %20, align 8, !tbaa !220, !alias.scope !433, !noalias !391
  store i8 46, ptr %i.lw, align 8, !tbaa !222, !alias.scope !433, !noalias !391
  store i64 1, ptr %i.lx, align 8, !tbaa !221, !alias.scope !433, !noalias !391
  store i8 0, ptr %i.ly, align 1, !tbaa !222, !alias.scope !433, !noalias !391
  br label %.lr.ph.preheader

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i151.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i148.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i148.i.i
  store ptr %i.lw, ptr %20, align 8, !tbaa !220, !alias.scope !436, !noalias !391
  %i.ux = icmp ugt i64 %.1.i.i.i150.i.i, 15
  br i1 %i.ux, label %bb.ds, label %._crit_edge.i.i.i.i153.i.i

bb.ds:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i151.i.i
  %i.uy = icmp slt i64 %.1.i.i.i150.i.i, 0
  br i1 %i.uy, label %.noexc10.i.i.i156.i.i, label %bb.dt

.noexc10.i.i.i156.i.i:                            ; preds = %bb.ds
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #31
          to label %.noexc159.i.i.a unwind label %.loopexit.split-lp225, !inline_history !388

.noexc159.i.i.a:                                  ; preds = %.noexc10.i.i.i156.i.i
  unreachable

bb.dt:                                            ; preds = %bb.ds
  %i.uz = icmp slt i64 %.1.i.i.in.i149.i.i, 0
  br i1 %i.uz, label %.noexc11.i.i.i155.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i154.i.i, !prof !309

.noexc11.i.i.i155.i.i:                            ; preds = %bb.dt
  invoke void @_ZSt17__throw_bad_allocv() #31
          to label %.noexc160.i.i.a unwind label %.loopexit.split-lp225, !inline_history !388

.noexc160.i.i.a:                                  ; preds = %.noexc11.i.i.i155.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i154.i.i: ; preds = %bb.dt
  %i.va = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.1.i.i.in.i149.i.i) #32
          to label %.noexc161.i.i unwind label %.loopexit224, !inline_history !388 ; 2 uses

.noexc161.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i154.i.i
  store ptr %i.va, ptr %20, align 8, !tbaa !307, !alias.scope !436, !noalias !391
  store i64 %.1.i.i.i150.i.i, ptr %i.lw, align 8, !tbaa !222, !alias.scope !436, !noalias !391
  br label %._crit_edge.i.i.i.i153.i.i

._crit_edge.i.i.i.i153.i.i:                       ; preds = %.noexc161.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i151.i.i
  %i.vb = phi ptr [ %i.va, %.noexc161.i.i ], [ %i.lw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i151.i.i ] ; 3 uses
  switch i64 %.1.i.i.i150.i.i, label %bb.dv [
    i64 1, label %bb.du
    i64 0, label %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit162.i.i
  ]

bb.du:                                            ; preds = %._crit_edge.i.i.i.i153.i.i
  %i.vc = load i8, ptr %.val52.i.i, align 1, !tbaa !222, !noalias !433
  store i8 %i.vc, ptr %i.vb, align 1, !tbaa !222
  br label %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit162.i.i

bb.dv:                                            ; preds = %._crit_edge.i.i.i.i153.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vb, ptr nonnull readonly align 1 %.val52.i.i, i64 %.1.i.i.i150.i.i, i1 false)
  br label %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit162.i.i

_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit162.i.i: ; preds = %._crit_edge.i.i.i.i153.i.i, %bb.du, %bb.dv
  store i64 %.1.i.i.i150.i.i, ptr %i.lx, align 8, !tbaa !221, !alias.scope !436, !noalias !391
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vb, i64 %.1.i.i.i150.i.i
  store i8 0, ptr %i.vd, align 1, !tbaa !222
  %.pre770 = load i64, ptr %i.lx, align 8, !tbaa !221, !noalias !391 ; 2 uses
  %.not5.i.i118687 = icmp eq i64 %.pre770, 0
  br i1 %.not5.i.i118687, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.thread.i.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit162.i.i.thread, %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit162.i.i
  %.ph = phi i64 [ %.pre770, %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit162.i.i ], [ 1, %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit162.i.i.thread ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i.i
  %i.ve = phi i64 [ %i.yh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i.i ], [ %.ph, %.lr.ph.preheader ] ; 2 uses
  %i.vf = load ptr, ptr %20, align 8, !tbaa !307, !noalias !391 ; 8 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i: ; preds = %bb.dw, %.lr.ph
  %.1.i.i.in.i.i = phi i64 [ %i.ve, %.lr.ph ], [ %.1.i.i.i.i, %bb.dw ] ; 3 uses
  %.1.i.i.i.i = add i64 %.1.i.i.in.i.i, -1        ; 10 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 %.1.i.i.i.i
  %i.vh = load i8, ptr %i.vg, align 1, !tbaa !222
  switch i8 %i.vh, label %bb.dw [
    i8 92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i.i
    i8 47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i.i
  ]

bb.dw:                                            ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i
  %.not17.i.i.i.i = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not17.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.thread.i.i, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, !llvm.loop !401

.loopexit224:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i154.i.i
  %lpad.loopexit226 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242.i.i

.loopexit.split-lp225:                            ; preds = %.noexc10.i.i.i156.i.i, %.noexc11.i.i.i155.i.i
  %lpad.loopexit.split-lp227 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit242.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #29, !noalias !391
  store ptr %i.lz, ptr %21, align 8, !tbaa !220, !alias.scope !439, !noalias !391
  %i.vi = icmp ugt i64 %.1.i.i.i.i, 15
  br i1 %i.vi, label %bb.dx, label %._crit_edge.i.i.i163.i.i

bb.dx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i.i
  %i.vj = icmp slt i64 %.1.i.i.i.i, 0
  br i1 %i.vj, label %.noexc10.i.i.i.i, label %bb.dy

.noexc10.i.i.i.i:                                 ; preds = %bb.dx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #31
          to label %.noexc164.i.i.a unwind label %.loopexit.split-lp.i.i, !inline_history !388

.noexc164.i.i.a:                                  ; preds = %.noexc10.i.i.i.i
  unreachable

bb.dy:                                            ; preds = %bb.dx
  %i.vk = icmp slt i64 %.1.i.i.in.i.i, 0
  br i1 %i.vk, label %.noexc11.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !309

.noexc11.i.i.i.i:                                 ; preds = %bb.dy
  invoke void @_ZSt17__throw_bad_allocv() #31
          to label %.noexc165.i.i.a unwind label %.loopexit.split-lp.i.i, !inline_history !388

.noexc165.i.i.a:                                  ; preds = %.noexc11.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.dy
  %i.vl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.1.i.i.in.i.i) #32
          to label %.noexc166.i.i unwind label %.loopexit.i.i, !inline_history !388 ; 2 uses

.noexc166.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  store ptr %i.vl, ptr %21, align 8, !tbaa !307, !alias.scope !439, !noalias !391
  store i64 %.1.i.i.i.i, ptr %i.lz, align 8, !tbaa !222, !alias.scope !439, !noalias !391
  br label %._crit_edge.i.i.i163.i.i

._crit_edge.i.i.i163.i.i:                         ; preds = %.noexc166.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i.i
  %i.vm = phi ptr [ %i.vl, %.noexc166.i.i ], [ %i.lz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i.i ] ; 3 uses
  switch i64 %.1.i.i.i.i, label %bb.ea [
    i64 1, label %bb.dz
    i64 0, label %bb.eb
  ]

bb.dz:                                            ; preds = %._crit_edge.i.i.i163.i.i
  %i.vn = load i8, ptr %i.vf, align 1, !tbaa !222
  store i8 %i.vn, ptr %i.vm, align 1, !tbaa !222
  br label %bb.eb

bb.ea:                                            ; preds = %._crit_edge.i.i.i163.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vm, ptr nonnull align 1 %i.vf, i64 %.1.i.i.i.i, i1 false)
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz, %._crit_edge.i.i.i163.i.i
  store i64 %.1.i.i.i.i, ptr %i.ma, align 8, !tbaa !221, !alias.scope !439, !noalias !391
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vm, i64 %.1.i.i.i.i
  store i8 0, ptr %i.vo, align 1, !tbaa !222
  %i.vp = icmp eq ptr %i.vf, %i.lw
  br i1 %i.vp, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i169.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i169.i.i: ; preds = %bb.eb
  %i.vq = icmp ult i64 %i.ve, 16
  call void @llvm.assume(i1 %i.vq)
  %i.vr = load ptr, ptr %21, align 8, !tbaa !307, !noalias !391 ; 3 uses
  %i.vs = icmp eq ptr %i.vr, %i.lz
  br i1 %i.vs, label %bb.ec, label %bb.eg

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i119: ; preds = %bb.eb
  %i.vt = load ptr, ptr %21, align 8, !tbaa !307, !noalias !391 ; 3 uses
  %i.vu = icmp eq ptr %i.vt, %i.lz
  br i1 %i.vu, label %bb.ec, label %bb.ef

bb.ec:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i169.i.i
  %i.vv = phi ptr [ %i.vt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i119 ], [ %i.vr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i169.i.i ] ; 2 uses
  %i.vw = load i64, ptr %i.ma, align 8, !tbaa !221, !noalias !391 ; 3 uses
  %i.vx = icmp ult i64 %i.vw, 16
  call void @llvm.assume(i1 %i.vx)
  switch i64 %i.vw, label %bb.ee [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.ed
  ]

bb.ed:                                            ; preds = %bb.ec
  %i.vy = load i8, ptr %i.vv, align 1, !tbaa !222
  store i8 %i.vy, ptr %i.vf, align 1, !tbaa !222
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.ee:                                            ; preds = %bb.ec
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vf, ptr align 1 %i.vv, i64 %i.vw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.ee, %bb.ed, %bb.ec
  %i.vz = load i64, ptr %i.ma, align 8, !tbaa !221, !noalias !391 ; 2 uses
  store i64 %i.vz, ptr %i.lx, align 8, !tbaa !221, !noalias !391
  %i.wa = load ptr, ptr %20, align 8, !tbaa !307, !noalias !391
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 %i.vz
  store i8 0, ptr %i.wb, align 1, !tbaa !222
  %.pre.i168.i.i = load ptr, ptr %21, align 8, !tbaa !307, !noalias !391
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

bb.ef:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i119
  %i.wc = load i64, ptr %i.lw, align 8, !tbaa !222, !noalias !391
  store ptr %i.vt, ptr %20, align 8, !tbaa !307, !noalias !391
  %i.wd = load <2 x i64>, ptr %i.ma, align 8, !tbaa !222, !noalias !391
  store <2 x i64> %i.wd, ptr %i.lx, align 8, !tbaa !222, !noalias !391
  store ptr %i.vf, ptr %21, align 8, !tbaa !307, !noalias !391
  store i64 %i.wc, ptr %i.lz, align 8, !tbaa !222, !noalias !391
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

bb.eg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i169.i.i
  store ptr %i.vr, ptr %20, align 8, !tbaa !307, !noalias !391
  %i.we = load <2 x i64>, ptr %i.ma, align 8, !tbaa !222, !noalias !391
  store <2 x i64> %i.we, ptr %i.lx, align 8, !tbaa !222, !noalias !391
  store ptr %i.lz, ptr %21, align 8, !tbaa !307, !noalias !391
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i: ; preds = %bb.eg, %bb.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
  %i.wf = phi ptr [ %.pre.i168.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.vf, %bb.ef ], [ %i.lz, %bb.eg ]
  store i64 0, ptr %i.ma, align 8, !tbaa !221, !noalias !391
  store i8 0, ptr %i.wf, align 1, !tbaa !222
  %i.wg = load ptr, ptr %21, align 8, !tbaa !307, !noalias !391 ; 2 uses
  %i.wh = icmp eq ptr %i.wg, %i.lz
  br i1 %i.wh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i
  %i.wi = load i64, ptr %i.lz, align 8, !tbaa !222, !noalias !391
  %i.wj = add i64 %i.wi, 1
  call void @_ZdlPvm(ptr noundef %i.wg, i64 noundef %i.wj) #30, !inline_history !388
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29, !noalias !391
  %i.wk = load i64, ptr %i.lx, align 8, !tbaa !221, !noalias !391 ; 2 uses
  %i.wl = icmp eq i64 %i.wk, 0
  br i1 %i.wl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.thread.i.i, label %bb.ei

.loopexit.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

.loopexit.split-lp.i.i:                           ; preds = %.noexc11.i.i.i.i, %.noexc10.i.i.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.eh

bb.eh:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29, !noalias !391
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit205.i.i

bb.ei:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #29, !noalias !391
  %i.wm = load ptr, ptr %20, align 8, !tbaa !307, !noalias !442
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29, !noalias !442
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef %i.wm, i64 noundef %i.wk, ptr noundef nonnull @.str.118, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ej unwind label %bb.et, !inline_history !388

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29, !noalias !442
  call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %i.wn = load ptr, ptr %26, align 8, !tbaa !307, !noalias !448 ; 3 uses
  %i.wo = load i64, ptr %i.lb, align 8, !tbaa !221, !noalias !448 ; 6 uses
  %i.wp = load i64, ptr %i.mb, align 8, !tbaa !221, !noalias !448 ; 5 uses
  %i.wq = sub i64 9223372036854775807, %i.wp
  %i.wr = icmp ult i64 %i.wq, %i.wo
  br i1 %i.wr, label %bb.ek, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i174.i.i

bb.ek:                                            ; preds = %bb.ej
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #31
          to label %.noexc184.i.i unwind label %.loopexit.split-lp10.i.i, !inline_history !388

.noexc184.i.i:                                    ; preds = %bb.ek
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i174.i.i: ; preds = %bb.ej
  %i.ws = add i64 %i.wp, %i.wo                    ; 3 uses
  %i.wt = load ptr, ptr %23, align 8, !tbaa !307, !noalias !448 ; 2 uses
  %i.wu = icmp eq ptr %i.wt, %i.mc
  br i1 %i.wu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i183.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i183.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i174.i.i
  %i.wv = icmp ult i64 %i.wp, 16
  call void @llvm.assume(i1 %i.wv)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i176.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i174.i.i
  %i.ww = load i64, ptr %i.mc, align 8, !tbaa !222, !noalias !448
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i176.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i176.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i183.i.i
  %i.wx = phi i64 [ %i.ww, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i183.i.i ]
  %.not.i.i.i.i177.i.i = icmp ugt i64 %i.ws, %i.wx
  br i1 %.not.i.i.i.i177.i.i, label %bb.ep, label %bb.el

bb.el:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i176.i.i
  %.not8.i.i.i.i178.i.i = icmp eq i64 %i.wo, 0
  br i1 %.not8.i.i.i.i178.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i180.i.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wt, i64 %i.wp ; 2 uses
  %cond.i.i.i.i179.i.i = icmp eq i64 %i.wo, 1
  br i1 %cond.i.i.i.i179.i.i, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.wz = load i8, ptr %i.wn, align 1, !tbaa !222, !noalias !445
  store i8 %i.wz, ptr %i.wy, align 1, !tbaa !222, !noalias !445
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i180.i.i

bb.eo:                                            ; preds = %bb.em
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wy, ptr align 1 %i.wn, i64 %i.wo, i1 false), !noalias !445
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i180.i.i

bb.ep:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i176.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef %i.wp, i64 noundef 0, ptr noundef %i.wn, i64 noundef %i.wo)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i180.i.i unwind label %.loopexit9.i.i, !inline_history !388

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i180.i.i: ; preds = %bb.ep, %bb.eo, %bb.en, %bb.el
  store i64 %i.ws, ptr %i.mb, align 8, !tbaa !221, !noalias !448
  %i.xa = load ptr, ptr %23, align 8, !tbaa !307, !noalias !448
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 %i.ws
  store i8 0, ptr %i.xb, align 1, !tbaa !222, !noalias !445
  %i.xc = load ptr, ptr %23, align 8, !tbaa !307, !noalias !448 ; 3 uses
  %i.xd = icmp eq ptr %i.xc, %i.mc
  br i1 %i.xd, label %.thread146.i.i, label %bb.eq

.thread146.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i180.i.i
  %i.xe = load i64, ptr %i.mb, align 8, !tbaa !221, !noalias !448 ; 3 uses
  %i.xf = icmp ult i64 %i.xe, 16
  call void @llvm.assume(i1 %i.xf)
  %i.xg = add nuw nsw i64 %i.xe, 1                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.md, ptr noundef nonnull align 8 dereferenceable(1) %i.mc, i64 %i.xg, i1 false), !noalias !391
  store ptr %i.le, ptr %27, align 8, !tbaa !220, !alias.scope !449
  br label %bb.er

bb.eq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i180.i.i
  %i.xh = load i64, ptr %i.mc, align 8, !tbaa !222, !noalias !448 ; 2 uses
  store i64 %i.xh, ptr %i.md, align 8, !tbaa !222, !alias.scope !445, !noalias !391
  %.pre.i182.i.i = load i64, ptr %i.mb, align 8, !tbaa !221, !noalias !448 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  store ptr %i.le, ptr %27, align 8, !tbaa !220, !alias.scope !454
  %i.xi = icmp eq ptr %i.xc, %i.md
  br i1 %i.xi, label %._crit_edge774, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187.i.i

._crit_edge774:                                   ; preds = %bb.eq
  %.pre777 = add nuw nsw i64 %.pre.i182.i.i, 1
  br label %bb.er

bb.er:                                            ; preds = %._crit_edge774, %.thread146.i.i
  %.pre-phi778 = phi i64 [ %.pre777, %._crit_edge774 ], [ %i.xg, %.thread146.i.i ]
  %i.xj = phi i64 [ %.pre.i182.i.i, %._crit_edge774 ], [ %i.xe, %.thread146.i.i ] ; 2 uses
  %i.xk = icmp ult i64 %i.xj, 16
  call void @llvm.assume(i1 %i.xk)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.le, ptr noundef nonnull align 8 dereferenceable(1) %i.md, i64 %.pre-phi778, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196.i.i

end_hunk_1
