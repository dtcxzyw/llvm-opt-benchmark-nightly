Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/tptp_frontend?download=true
inline.NumInlined: 6703
inline.NumDeleted: 2422
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN12_GLOBAL__N_111tptp_parser11parse_inputERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
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
  %.val.i17.i = load ptr, ptr %26, align 8, !noalias !391 ; 4 uses
  %.val51.i.i = load i64, ptr %i.lb, align 8, !tbaa !221, !noalias !391 ; 10 uses
  %i.nu = icmp eq i64 %.val51.i.i, 0
  br i1 %i.nu, label %_ZN12_GLOBAL__N_111tptp_parser16is_absolute_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.nv = load i8, ptr %.val.i17.i, align 1, !tbaa !222 ; 2 uses
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
  %i.oh = load i8, ptr %.val.i17.i, align 1, !tbaa !222
  store i8 %i.oh, ptr %i.lc, align 8, !tbaa !222, !noalias !391
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

bb.bu:                                            ; preds = %._crit_edge.i.i.i.i127, %.noexc20.i
  %i.oi = phi ptr [ %i.og, %.noexc20.i ], [ %i.lc, %._crit_edge.i.i.i.i127 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.oi, ptr nonnull align 1 %.val.i17.i, i64 %.val51.i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i: ; preds = %bb.bu, %bb.bt
  %i.oj = phi ptr [ %i.lc, %bb.bt ], [ %i.oi, %bb.bu ]
  store i64 %.val51.i.i, ptr %i.ld, align 8, !tbaa !221, !noalias !391
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 %.val51.i.i
  store i8 0, ptr %i.ok, align 1, !tbaa !222
  call void @llvm.experimental.noalias.scope.decl(metadata !394)
  store ptr %i.le, ptr %27, align 8, !tbaa !220, !alias.scope !397
  %i.ol = load ptr, ptr %12, align 8, !tbaa !307, !noalias !397 ; 2 uses
  %i.om = icmp eq ptr %i.ol, %i.lc
  br i1 %i.om, label %bb.bv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i128

bb.bv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  %i.on = load i64, ptr %i.ld, align 8, !tbaa !221, !noalias !397 ; 3 uses
  %i.oo = icmp ult i64 %i.on, 16
  call void @llvm.assume(i1 %i.oo)
  %i.op = add nuw nsw i64 %i.on, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.le, ptr noundef nonnull align 8 dereferenceable(1) %i.lc, i64 %i.op, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i128: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i.i
  store ptr %i.ol, ptr %27, align 8, !tbaa !307, !alias.scope !397
  %i.oq = load i64, ptr %i.lc, align 8, !tbaa !222, !noalias !397
  store i64 %i.oq, ptr %i.le, align 8, !tbaa !222, !alias.scope !397
  %.pre.i.i.i129 = load i64, ptr %i.ld, align 8, !tbaa !221, !noalias !397
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i130

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i130: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i128, %bb.bv
  %i.or = phi i64 [ %i.on, %bb.bv ], [ %.pre.i.i.i129, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i128 ]
  store i64 %i.or, ptr %i.lf, align 8, !tbaa !221, !alias.scope !397
  br label %_ZNK12_GLOBAL__N_111tptp_parser15resolve_includeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit.i

_ZN12_GLOBAL__N_111tptp_parser16is_absolute_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i.i: ; preds = %_ZN12_GLOBAL__N_111tptp_parser16is_absolute_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i, %bb.bq, %bb.bp, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #29, !noalias !391
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #29, !noalias !391
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #29, !noalias !391
  %.val54.i.i = load ptr, ptr %2, align 8, !noalias !391 ; 3 uses
  %.val55.i.i = load i64, ptr %i.lg, align 8, !tbaa !221, !noalias !391 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !398)
  %.not.i57.i.i = icmp eq i64 %.val55.i.i, 0
  br i1 %.not.i57.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i.i: ; preds = %_ZN12_GLOBAL__N_111tptp_parser16is_absolute_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i.i, %bb.bw
  %.1.i.i.in.i.i.i = phi i64 [ %.1.i.i.i.i.i, %bb.bw ], [ %.val55.i.i, %_ZN12_GLOBAL__N_111tptp_parser16is_absolute_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.thread.i.i ]
  %.1.i.i.i.i.i = add i64 %.1.i.i.in.i.i.i, -1    ; 4 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.val54.i.i, i64 %.1.i.i.i.i.i
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !222, !noalias !398
  switch i8 %i.ot, label %bb.bw [
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
  %spec.select.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.1.i.i.i.i.i, i64 %.val55.i.i) ; 8 uses
  %i.ou = icmp ugt i64 %spec.select.i.i.i.i.i.i, 15
  br i1 %i.ou, label %bb.bx, label %._crit_edge.i.i.i.i.i.i

bb.bx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i.i.i
  %i.ov = icmp slt i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %i.ov, label %.noexc.i.i.i.invoke, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %68 = add nuw i64 %spec.select.i.i.i.i.i.i, 1   ; 2 uses
  %i.ow = icmp slt i64 %68, 0
  br i1 %i.ow, label %.noexc6.i.i.i.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i, !prof !309

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i: ; preds = %bb.by
  %i.ox = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %68) #32
          to label %.noexc23.i unwind label %.loopexit194, !inline_history !388 ; 2 uses

.noexc23.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i
  store ptr %i.ox, ptr %16, align 8, !tbaa !307, !alias.scope !402, !noalias !391
  store i64 %spec.select.i.i.i.i.i.i, ptr %i.lh, align 8, !tbaa !222, !alias.scope !402, !noalias !391
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.noexc23.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i.i.i
  %i.oy = phi ptr [ %i.ox, %.noexc23.i ], [ %i.lh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i.i.i ] ; 3 uses
  switch i64 %spec.select.i.i.i.i.i.i, label %bb.ca [
    i64 1, label %bb.bz
    i64 0, label %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i
  ]

bb.bz:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.oz = load i8, ptr %.val54.i.i, align 1, !tbaa !222, !noalias !398
  store i8 %i.oz, ptr %i.oy, align 1, !tbaa !222
  br label %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i

bb.ca:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.oy, ptr nonnull readonly align 1 %.val54.i.i, i64 %spec.select.i.i.i.i.i.i, i1 false)
  br label %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i

_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i: ; preds = %bb.ca, %bb.bz, %._crit_edge.i.i.i.i.i.i
  store i64 %spec.select.i.i.i.i.i.i, ptr %i.li, align 8, !tbaa !221, !alias.scope !402, !noalias !391
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 %spec.select.i.i.i.i.i.i
  store i8 0, ptr %i.pa, align 1, !tbaa !222
  %.pre.i.i110 = load i64, ptr %i.li, align 8, !tbaa !221, !noalias !405 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.pb = icmp eq i64 %.pre.i.i110, 9223372036854775807
  br i1 %i.pb, label %bb.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.cb:                                            ; preds = %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #31
          to label %.noexc.i.i126 unwind label %.loopexit.split-lp200, !inline_history !388

.noexc.i.i126:                                    ; preds = %bb.cb
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i.i
  %.pre769 = load ptr, ptr %16, align 8, !tbaa !307, !noalias !405 ; 3 uses
  %i.pc = add nsw i64 %.pre.i.i110, 1             ; 2 uses
  %i.pd = icmp eq ptr %.pre769, %i.lh
  br i1 %i.pd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i125, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i125: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.pe = phi i64 [ 2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.thread ], [ %i.pc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i ]
  %i.pf = phi i64 [ 1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.thread ], [ %.pre.i.i110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i ] ; 2 uses
  %i.pg = phi ptr [ %i.lh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.thread ], [ %.pre769, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i ]
  %i.ph = icmp ult i64 %i.pf, 16
  call void @llvm.assume(i1 %i.ph)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i111: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.pi = load i64, ptr %i.lh, align 8, !tbaa !222, !noalias !405
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i125
  %i.pj = phi i64 [ %i.pc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i111 ], [ %i.pe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i125 ] ; 3 uses
  %i.pk = phi i64 [ %.pre.i.i110, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i111 ], [ %i.pf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i125 ] ; 2 uses
  %i.pl = phi ptr [ %.pre769, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i111 ], [ %i.pg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i125 ]
  %i.pm = phi i64 [ %i.pi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i111 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i125 ]
  %.not.i.i.i.i.i112 = icmp ugt i64 %i.pj, %i.pm
  br i1 %.not.i.i.i.i.i112, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pk
  store i8 47, ptr %i.pn, align 1, !tbaa !222, !noalias !408
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i

bb.cd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %16, i64 noundef %i.pk, i64 noundef 0, ptr noundef nonnull @.str.118, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i unwind label %.loopexit199, !inline_history !388

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i: ; preds = %bb.cd, %bb.cc
  store i64 %i.pj, ptr %i.li, align 8, !tbaa !221, !noalias !405
  %i.po = load ptr, ptr %16, align 8, !tbaa !307, !noalias !405
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pj
  store i8 0, ptr %i.pp, align 1, !tbaa !222, !noalias !408
  store ptr %i.lk, ptr %15, align 8, !tbaa !220, !alias.scope !408, !noalias !391
  %i.pq = load ptr, ptr %16, align 8, !tbaa !307, !noalias !405 ; 3 uses
  %i.pr = icmp eq ptr %i.pq, %i.lh
  br i1 %i.pr, label %bb.ce, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i.i

bb.ce:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i
  %i.ps = load i64, ptr %i.li, align 8, !tbaa !221, !noalias !405 ; 3 uses
  %i.pt = icmp ult i64 %i.ps, 16
  call void @llvm.assume(i1 %i.pt)
  %i.pu = add nuw nsw i64 %i.ps, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lk, ptr noundef nonnull align 8 dereferenceable(1) %i.lh, i64 %i.pu, i1 false), !noalias !391
  br label %bb.cf

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i.i.i
  store ptr %i.pq, ptr %15, align 8, !tbaa !307, !alias.scope !408, !noalias !391
  %i.pv = load i64, ptr %i.lh, align 8, !tbaa !222, !noalias !405
  store i64 %i.pv, ptr %i.lk, align 8, !tbaa !222, !alias.scope !408, !noalias !391
  %.pre.i59.i.i = load i64, ptr %i.li, align 8, !tbaa !221, !noalias !405
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i.i, %bb.ce
  %i.pw = phi ptr [ %i.lk, %bb.ce ], [ %i.pq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i.i ] ; 2 uses
  %i.px = phi i64 [ %i.ps, %bb.ce ], [ %.pre.i59.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58.i.i ] ; 6 uses
  store i64 %i.px, ptr %i.ll, align 8, !tbaa !221, !alias.scope !408, !noalias !391
  store ptr %i.lh, ptr %16, align 8, !tbaa !307, !noalias !405
  store i64 0, ptr %i.li, align 8, !tbaa !221, !noalias !405
  store i8 0, ptr %i.lh, align 8, !tbaa !222, !noalias !405
  call void @llvm.experimental.noalias.scope.decl(metadata !409)
  %i.py = load ptr, ptr %26, align 8, !tbaa !307, !noalias !412 ; 3 uses
  %i.pz = load i64, ptr %i.lb, align 8, !tbaa !221, !noalias !412 ; 6 uses
  %i.qa = sub i64 9223372036854775807, %i.px
  %i.qb = icmp ult i64 %i.qa, %i.pz
  br i1 %i.qb, label %bb.cg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #31
          to label %.noexc63.i.i unwind label %.loopexit.split-lp205, !inline_history !388

.noexc63.i.i:                                     ; preds = %bb.cg
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i: ; preds = %bb.cf
  %i.qc = add i64 %i.pz, %i.px                    ; 3 uses
  %i.qd = icmp eq ptr %i.pw, %i.lk
  br i1 %i.qd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i
  %i.qe = icmp ult i64 %i.px, 16
  call void @llvm.assume(i1 %i.qe)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i.i
  %i.qf = load i64, ptr %i.lk, align 8, !tbaa !222, !noalias !412
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i
  %i.qg = phi i64 [ %i.qf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i.i ]
  %.not.i.i.i.i.i.i113 = icmp ugt i64 %i.qc, %i.qg
  br i1 %.not.i.i.i.i.i.i113, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  %.not8.i.i.i.i.i.i = icmp eq i64 %i.pz, 0
  br i1 %.not8.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.px ; 2 uses
  %cond.i.i.i.i.i.i = icmp eq i64 %i.pz, 1
  br i1 %cond.i.i.i.i.i.i, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.qi = load i8, ptr %i.py, align 1, !tbaa !222, !noalias !409
  store i8 %i.qi, ptr %i.qh, align 1, !tbaa !222, !noalias !409
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qh, ptr align 1 %i.py, i64 %i.pz, i1 false), !noalias !409
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i

bb.cl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef %i.px, i64 noundef 0, ptr noundef %i.py, i64 noundef %i.pz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i unwind label %.loopexit204, !inline_history !388

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i: ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ch
  store i64 %i.qc, ptr %i.ll, align 8, !tbaa !221, !noalias !412
  %i.qj = load ptr, ptr %15, align 8, !tbaa !307, !noalias !412
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 %i.qc
  store i8 0, ptr %i.qk, align 1, !tbaa !222, !noalias !409
  %i.ql = load ptr, ptr %15, align 8, !tbaa !307, !noalias !412 ; 3 uses
  %i.qm = icmp eq ptr %i.ql, %i.lk
  br i1 %i.qm, label %.thread.i.i124, label %bb.cm

.thread.i.i124:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i
  %i.qn = load i64, ptr %i.ll, align 8, !tbaa !221, !noalias !412 ; 3 uses
  %i.qo = icmp ult i64 %i.qn, 16
  call void @llvm.assume(i1 %i.qo)
  %i.qp = add nuw nsw i64 %i.qn, 1                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lm, ptr noundef nonnull align 8 dereferenceable(1) %i.lk, i64 %i.qp, i1 false), !noalias !391
  store ptr %i.lk, ptr %15, align 8, !tbaa !307, !noalias !412
  store i64 0, ptr %i.ll, align 8, !tbaa !221, !noalias !412
  store i8 0, ptr %i.lk, align 8, !tbaa !222, !noalias !412
  store ptr %i.lo, ptr %13, align 8, !tbaa !220, !alias.scope !413, !noalias !391
  br label %bb.cn

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i.i.i
  %i.qq = load i64, ptr %i.lk, align 8, !tbaa !222, !noalias !412 ; 2 uses
  store i64 %i.qq, ptr %i.lm, align 8, !tbaa !222, !alias.scope !409, !noalias !391
  %.pre.i62.i.i = load i64, ptr %i.ll, align 8, !tbaa !221, !noalias !412 ; 3 uses
  store ptr %i.lk, ptr %15, align 8, !tbaa !307, !noalias !412
  store i64 0, ptr %i.ll, align 8, !tbaa !221, !noalias !412
  store i8 0, ptr %i.lk, align 8, !tbaa !222, !noalias !412
  call void @llvm.experimental.noalias.scope.decl(metadata !416)
  store ptr %i.lo, ptr %13, align 8, !tbaa !220, !alias.scope !416, !noalias !391
  %i.qr = icmp eq ptr %i.ql, %i.lm
  br i1 %i.qr, label %._crit_edge775, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i

._crit_edge775:                                   ; preds = %bb.cm
  %.pre776.a = add nuw nsw i64 %.pre.i62.i.i, 1
  br label %bb.cn

bb.cn:                                            ; preds = %._crit_edge775, %.thread.i.i124
  %.pre-phi = phi i64 [ %.pre776.a, %._crit_edge775 ], [ %i.qp, %.thread.i.i124 ]
  %i.qs = phi i64 [ %.pre.i62.i.i, %._crit_edge775 ], [ %i.qn, %.thread.i.i124 ] ; 2 uses
  %i.qt = icmp ult i64 %i.qs, 16
  call void @llvm.assume(i1 %i.qt)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lo, ptr noundef nonnull align 8 dereferenceable(1) %i.lm, i64 %.pre-phi, i1 false), !noalias !391
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i: ; preds = %bb.cm
  store ptr %i.ql, ptr %13, align 8, !tbaa !307, !alias.scope !416, !noalias !391
  store i64 %i.qq, ptr %i.lo, align 8, !tbaa !222, !alias.scope !416, !noalias !391
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i, %bb.cn
  %i.qu = phi i64 [ %i.qs, %bb.cn ], [ %.pre.i62.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65.i.i ]
  store i64 %i.qu, ptr %i.lp, align 8, !tbaa !221, !alias.scope !416, !noalias !391
  store ptr %i.lm, ptr %14, align 8, !tbaa !307, !noalias !418
  store i64 0, ptr %i.ln, align 8, !tbaa !221, !noalias !418
  store i8 0, ptr %i.lm, align 8, !tbaa !222, !noalias !418
  %.pre38.i.i = load ptr, ptr %16, align 8, !tbaa !307, !noalias !391 ; 2 uses
  %i.qv = icmp eq ptr %.pre38.i.i, %i.lh
  br i1 %i.qv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74.i.i
  %i.qw = load i64, ptr %i.lh, align 8, !tbaa !222, !noalias !391
  %i.qx = add i64 %i.qw, 1
  call void @_ZdlPvm(ptr noundef %.pre38.i.i, i64 noundef %i.qx) #30, !inline_history !388
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77.i.i
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_111tptp_parser11parse_inputERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i108.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i115.i.i
  %i.tg = phi i64 [ %i.tf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i107.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i115.i.i ]
  %.not.i.i.i.i109.i.i = icmp ugt i64 %i.tc, %i.tg
  br i1 %.not.i.i.i.i109.i.i, label %bb.dk, label %bb.dg

bb.dg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i108.i.i
  %.not8.i.i.i.i110.i.i = icmp eq i64 %i.sz, 0
  br i1 %.not8.i.i.i.i110.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i112.i.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.th = getelementptr inbounds nuw i8, ptr %i.sw, i64 %i.sx ; 2 uses
  %cond.i.i.i.i111.i.i = icmp eq i64 %i.sz, 1
  br i1 %cond.i.i.i.i111.i.i, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.ti = load i8, ptr %i.sy, align 1, !tbaa !222, !noalias !423
  store i8 %i.ti, ptr %i.th, align 1, !tbaa !222, !noalias !423
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i112.i.i

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.th, ptr align 1 %i.sy, i64 %i.sz, i1 false), !noalias !423
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i112.i.i

bb.dk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i108.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef %i.sx, i64 noundef 0, ptr noundef %i.sy, i64 noundef %i.sz)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i112.i.i unwind label %.loopexit219, !inline_history !388

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i112.i.i: ; preds = %bb.dk, %bb.dj, %bb.di, %bb.dg
  store i64 %i.tc, ptr %i.lt, align 8, !tbaa !221, !noalias !426
  %i.tj = load ptr, ptr %18, align 8, !tbaa !307, !noalias !426
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 %i.tc
  store i8 0, ptr %i.tk, align 1, !tbaa !222, !noalias !423
  %i.tl = load ptr, ptr %18, align 8, !tbaa !307, !noalias !426 ; 3 uses
  %i.tm = icmp eq ptr %i.tl, %i.ls
  br i1 %i.tm, label %.thread145.i.i, label %bb.dl

.thread145.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i112.i.i
  %i.tn = load i64, ptr %i.lt, align 8, !tbaa !221, !noalias !426 ; 3 uses
  %i.to = icmp ult i64 %i.tn, 16
  call void @llvm.assume(i1 %i.to)
  %i.tp = add nuw nsw i64 %i.tn, 1                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.lu, ptr noundef nonnull align 8 dereferenceable(1) %i.ls, i64 %i.tp, i1 false), !noalias !391
  store ptr %i.ls, ptr %18, align 8, !tbaa !307, !noalias !426
  store i64 0, ptr %i.lt, align 8, !tbaa !221, !noalias !426
  store i8 0, ptr %i.ls, align 8, !tbaa !222, !noalias !426
  store ptr %i.le, ptr %27, align 8, !tbaa !220, !alias.scope !427
  br label %bb.dm

bb.dl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i112.i.i
  %i.tq = load i64, ptr %i.ls, align 8, !tbaa !222, !noalias !426 ; 2 uses
  store i64 %i.tq, ptr %i.lu, align 8, !tbaa !222, !alias.scope !423, !noalias !391
  %.pre.i114.i.i = load i64, ptr %i.lt, align 8, !tbaa !221, !noalias !426 ; 3 uses
  store ptr %i.ls, ptr %18, align 8, !tbaa !307, !noalias !426
  store i64 0, ptr %i.lt, align 8, !tbaa !221, !noalias !426
  store i8 0, ptr %i.ls, align 8, !tbaa !222, !noalias !426
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  store ptr %i.le, ptr %27, align 8, !tbaa !220, !alias.scope !432
  %i.tr = icmp eq ptr %i.tl, %i.lu
  br i1 %i.tr, label %._crit_edge773, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i.i

._crit_edge773:                                   ; preds = %bb.dl
  %.pre779 = add nuw nsw i64 %.pre.i114.i.i, 1
  br label %bb.dm

bb.dm:                                            ; preds = %._crit_edge773, %.thread145.i.i
  %.pre-phi780 = phi i64 [ %.pre779, %._crit_edge773 ], [ %i.tp, %.thread145.i.i ]
  %i.ts = phi i64 [ %.pre.i114.i.i, %._crit_edge773 ], [ %i.tn, %.thread145.i.i ] ; 2 uses
  %i.tt = icmp ult i64 %i.ts, 16
  call void @llvm.assume(i1 %i.tt)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.le, ptr noundef nonnull align 8 dereferenceable(1) %i.lu, i64 %.pre-phi780, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i.i: ; preds = %bb.dl
  store ptr %i.tl, ptr %27, align 8, !tbaa !307, !alias.scope !432
  store i64 %i.tq, ptr %i.le, align 8, !tbaa !222, !alias.scope !432
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i.i, %bb.dm
  %i.tu = phi i64 [ %i.ts, %bb.dm ], [ %.pre.i114.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119.i.i ]
  store i64 %i.tu, ptr %i.lf, align 8, !tbaa !221, !alias.scope !432
  store ptr %i.lu, ptr %17, align 8, !tbaa !307, !noalias !432
  store i64 0, ptr %i.lv, align 8, !tbaa !221, !noalias !432
  store i8 0, ptr %i.lu, align 8, !tbaa !222, !noalias !432
  %.pre39.i.i = load ptr, ptr %19, align 8, !tbaa !307, !noalias !391 ; 2 uses
  %i.tv = icmp eq ptr %.pre39.i.i, %i.lq
  br i1 %i.tv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128.i.i
  %i.tw = load i64, ptr %i.lq, align 8, !tbaa !222, !noalias !391
  %i.tx = add i64 %i.tw, 1
  call void @_ZdlPvm(ptr noundef %.pre39.i.i, i64 noundef %i.tx) #30, !inline_history !388
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
  %i.ty = load ptr, ptr %18, align 8, !tbaa !307, !noalias !391 ; 2 uses
  %i.tz = icmp eq ptr %i.ty, %i.ls
  br i1 %i.tz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135.i.i: ; preds = %bb.dn
  %i.ua = load i64, ptr %i.ls, align 8, !tbaa !222, !noalias !391
  %i.ub = add i64 %i.ua, 1
  call void @_ZdlPvm(ptr noundef %i.ty, i64 noundef %i.ub) #30, !inline_history !388
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.i.i: ; preds = %bb.dn, %.loopexit214, %.loopexit.split-lp215, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135.i.i
  %.pn37.i.i = phi { ptr, i32 } [ %lpad.phi223, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135.i.i ], [ %lpad.loopexit.split-lp217, %.loopexit.split-lp215 ], [ %lpad.loopexit216, %.loopexit214 ], [ %lpad.phi223, %bb.dn ] ; 2 uses
  %i.uc = load ptr, ptr %19, align 8, !tbaa !307, !noalias !391 ; 2 uses
  %i.ud = icmp eq ptr %i.uc, %i.lq
  br i1 %i.ud, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.i.i
  %i.ue = load i64, ptr %i.lq, align 8, !tbaa !222, !noalias !391
  %i.uf = add i64 %i.ue, 1
  call void @_ZdlPvm(ptr noundef %i.uc, i64 noundef %i.uf) #30, !inline_history !388
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.i.i, %.loopexit209, %.loopexit.split-lp210, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.i.i
  %.pn37.pn.i.i = phi { ptr, i32 } [ %.pn37.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i138.i.i ], [ %lpad.loopexit.split-lp212, %.loopexit.split-lp210 ], [ %lpad.loopexit211, %.loopexit209 ], [ %.pn37.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #29, !noalias !391
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #29, !noalias !391
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.i.i

bb.do:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i
  %i.ug = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uh = load ptr, ptr %27, align 8, !tbaa !307, !alias.scope !391 ; 2 uses
  %i.ui = icmp eq ptr %i.uh, %i.le
  br i1 %i.ui, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141.i.i: ; preds = %bb.do
  %i.uj = load i64, ptr %i.le, align 8, !tbaa !222, !alias.scope !391
  %i.uk = add i64 %i.uj, 1
  call void @_ZdlPvm(ptr noundef %i.uh, i64 noundef %i.uk) #30, !inline_history !388
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143.i.i

bb.dp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.i.i
  %i.ul = load ptr, ptr %10, align 8, !tbaa !8, !noalias !391
  %i.um = getelementptr i8, ptr %i.ul, i64 -24
  %i.un = load i64, ptr %i.um, align 8
  %i.uo = getelementptr inbounds i8, ptr %10, i64 %i.un
  %i.up = getelementptr inbounds nuw i8, ptr %i.uo, i64 32
  %i.uq = load i32, ptr %i.up, align 8, !tbaa !10, !noalias !391
  %i.ur = and i32 %i.uq, 5
  %.not.i132.i.i = icmp eq i32 %i.ur, 0
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %10) #29, !inline_history !388
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29, !noalias !391
  br i1 %.not.i132.i.i, label %.critedge.i.i120, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.us = load ptr, ptr %27, align 8, !tbaa !307, !alias.scope !391 ; 2 uses
  %i.ut = icmp eq ptr %i.us, %i.le
  br i1 %i.ut, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.i.i: ; preds = %bb.dq
  %i.uu = load i64, ptr %i.le, align 8, !tbaa !222, !alias.scope !391
  %i.uv = add i64 %i.uu, 1
  call void @_ZdlPvm(ptr noundef %i.us, i64 noundef %i.uv) #30, !inline_history !388
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i.i: ; preds = %bb.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144.i.i, %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #29, !noalias !391
  %.val52.i.i = load ptr, ptr %2, align 8, !noalias !391 ; 3 uses
  %.val53.i.i = load i64, ptr %i.lg, align 8, !tbaa !221, !noalias !391 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %.not.i147.i.i = icmp eq i64 %.val53.i.i, 0
  br i1 %.not.i147.i.i, label %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit162.i.i.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i148.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i148.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i.i, %bb.dr
  %.1.i.i.in.i149.i.i = phi i64 [ %.1.i.i.i150.i.i, %bb.dr ], [ %.val53.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146.i.i ]
  %.1.i.i.i150.i.i = add i64 %.1.i.i.in.i149.i.i, -1 ; 4 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.val52.i.i, i64 %.1.i.i.i150.i.i
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !222, !noalias !433
  switch i8 %i.ux, label %bb.dr [
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
  %spec.select.i.i.i.i152.i.i = call noundef i64 @llvm.umin.i64(i64 %.1.i.i.i150.i.i, i64 %.val53.i.i) ; 8 uses
  %i.uy = icmp ugt i64 %spec.select.i.i.i.i152.i.i, 15
  br i1 %i.uy, label %bb.ds, label %._crit_edge.i.i.i.i153.i.i

bb.ds:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i151.i.i
  %i.uz = icmp slt i64 %spec.select.i.i.i.i152.i.i, 0
  br i1 %i.uz, label %.noexc10.i.i.i156.i.i, label %bb.dt

.noexc10.i.i.i156.i.i:                            ; preds = %bb.ds
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #31
          to label %.noexc159.i.i.a unwind label %.loopexit.split-lp225, !inline_history !388

.noexc159.i.i.a:                                  ; preds = %.noexc10.i.i.i156.i.i
  unreachable

bb.dt:                                            ; preds = %bb.ds
  %69 = add nuw i64 %spec.select.i.i.i.i152.i.i, 1 ; 2 uses
  %i.va = icmp slt i64 %69, 0
  br i1 %i.va, label %.noexc11.i.i.i155.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i154.i.i, !prof !309

.noexc11.i.i.i155.i.i:                            ; preds = %bb.dt
  invoke void @_ZSt17__throw_bad_allocv() #31
          to label %.noexc160.i.i.a unwind label %.loopexit.split-lp225, !inline_history !388

.noexc160.i.i.a:                                  ; preds = %.noexc11.i.i.i155.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i154.i.i: ; preds = %bb.dt
  %i.vb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %69) #32
          to label %.noexc161.i.i unwind label %.loopexit224, !inline_history !388 ; 2 uses

.noexc161.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i154.i.i
  store ptr %i.vb, ptr %20, align 8, !tbaa !307, !alias.scope !436, !noalias !391
  store i64 %spec.select.i.i.i.i152.i.i, ptr %i.lw, align 8, !tbaa !222, !alias.scope !436, !noalias !391
  br label %._crit_edge.i.i.i.i153.i.i

._crit_edge.i.i.i.i153.i.i:                       ; preds = %.noexc161.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i151.i.i
  %i.vc = phi ptr [ %i.vb, %.noexc161.i.i ], [ %i.lw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i151.i.i ] ; 3 uses
  switch i64 %spec.select.i.i.i.i152.i.i, label %bb.dv [
    i64 1, label %bb.du
    i64 0, label %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit162.i.i
  ]

bb.du:                                            ; preds = %._crit_edge.i.i.i.i153.i.i
  %i.vd = load i8, ptr %.val52.i.i, align 1, !tbaa !222, !noalias !433
  store i8 %i.vd, ptr %i.vc, align 1, !tbaa !222
  br label %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit162.i.i

bb.dv:                                            ; preds = %._crit_edge.i.i.i.i153.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vc, ptr nonnull readonly align 1 %.val52.i.i, i64 %spec.select.i.i.i.i152.i.i, i1 false)
  br label %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit162.i.i

_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit162.i.i: ; preds = %._crit_edge.i.i.i.i153.i.i, %bb.du, %bb.dv
  store i64 %spec.select.i.i.i.i152.i.i, ptr %i.lx, align 8, !tbaa !221, !alias.scope !436, !noalias !391
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vc, i64 %spec.select.i.i.i.i152.i.i
  store i8 0, ptr %i.ve, align 1, !tbaa !222
  %.pre770 = load i64, ptr %i.lx, align 8, !tbaa !221, !noalias !391 ; 2 uses
  %.not5.i.i118687 = icmp eq i64 %.pre770, 0
  br i1 %.not5.i.i118687, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.thread.i.i, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit162.i.i.thread, %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit162.i.i
  %.ph = phi i64 [ %.pre770, %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit162.i.i ], [ 1, %_ZNK12_GLOBAL__N_111tptp_parser7dirnameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit162.i.i.thread ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i.i
  %i.vf = phi i64 [ %i.yf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.i.i ], [ %.ph, %.lr.ph.preheader ] ; 2 uses
  %i.vg = load ptr, ptr %20, align 8, !tbaa !307, !noalias !391 ; 3 uses
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i.i: ; preds = %bb.dw, %.lr.ph
  %.1.i.i.in.i.i = phi i64 [ %i.vf, %.lr.ph ], [ %.1.i.i.i.i, %bb.dw ]
  %.1.i.i.i.i = add i64 %.1.i.i.in.i.i, -1        ; 4 uses
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 %.1.i.i.i.i
  %i.vi = load i8, ptr %i.vh, align 1, !tbaa !222
  switch i8 %i.vi, label %bb.dw [
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
  %spec.select.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.1.i.i.i.i, i64 %i.vf) ; 8 uses
  %i.vj = icmp ugt i64 %spec.select.i.i.i.i.i, 15
  br i1 %i.vj, label %bb.dx, label %._crit_edge.i.i.i163.i.i

bb.dx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i.i
  %i.vk = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.vk, label %.noexc10.i.i.i.i, label %bb.dy

.noexc10.i.i.i.i:                                 ; preds = %bb.dx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.77) #31
          to label %.noexc164.i.i.a unwind label %.loopexit.split-lp.i.i, !inline_history !388

.noexc164.i.i.a:                                  ; preds = %.noexc10.i.i.i.i
  unreachable

bb.dy:                                            ; preds = %bb.dx
  %70 = add nuw i64 %spec.select.i.i.i.i.i, 1     ; 2 uses
  %i.vl = icmp slt i64 %70, 0
  br i1 %i.vl, label %.noexc11.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i, !prof !309

.noexc11.i.i.i.i:                                 ; preds = %bb.dy
  invoke void @_ZSt17__throw_bad_allocv() #31
          to label %.noexc165.i.i.a unwind label %.loopexit.split-lp.i.i, !inline_history !388

.noexc165.i.i.a:                                  ; preds = %.noexc11.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i: ; preds = %bb.dy
  %i.vm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %70) #32
          to label %.noexc166.i.i unwind label %.loopexit.i.i, !inline_history !388 ; 2 uses

.noexc166.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i
  store ptr %i.vm, ptr %21, align 8, !tbaa !307, !alias.scope !439, !noalias !391
  store i64 %spec.select.i.i.i.i.i, ptr %i.lz, align 8, !tbaa !222, !alias.scope !439, !noalias !391
  br label %._crit_edge.i.i.i163.i.i

._crit_edge.i.i.i163.i.i:                         ; preds = %.noexc166.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i.i
  %i.vn = phi ptr [ %i.vm, %.noexc166.i.i ], [ %i.lz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcm.exit.i.i ] ; 3 uses
  switch i64 %spec.select.i.i.i.i.i, label %bb.ea [
    i64 1, label %bb.dz
    i64 0, label %bb.eb
  ]

bb.dz:                                            ; preds = %._crit_edge.i.i.i163.i.i
  %i.vo = load i8, ptr %i.vg, align 1, !tbaa !222
  store i8 %i.vo, ptr %i.vn, align 1, !tbaa !222
  br label %bb.eb

bb.ea:                                            ; preds = %._crit_edge.i.i.i163.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.vn, ptr nonnull align 1 %i.vg, i64 %spec.select.i.i.i.i.i, i1 false)
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz, %._crit_edge.i.i.i163.i.i
  store i64 %spec.select.i.i.i.i.i, ptr %i.ma, align 8, !tbaa !221, !alias.scope !439, !noalias !391
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vn, i64 %spec.select.i.i.i.i.i
  store i8 0, ptr %i.vp, align 1, !tbaa !222
  %i.vq = load ptr, ptr %20, align 8, !tbaa !307, !noalias !391 ; 6 uses
  %i.vr = icmp eq ptr %i.vq, %i.lw
  %i.vs = load ptr, ptr %21, align 8, !tbaa !307, !noalias !391 ; 5 uses
  %i.vt = icmp eq ptr %i.vs, %i.lz                ; 2 uses
  br i1 %i.vr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i169.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i169.i.i: ; preds = %bb.eb
  br i1 %i.vt, label %bb.ec, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i119: ; preds = %bb.eb
  br i1 %i.vt, label %bb.ec, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.ec:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i119, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i169.i.i
  %i.vu = load i64, ptr %i.ma, align 8, !tbaa !221, !noalias !391 ; 3 uses
  %i.vv = icmp ult i64 %i.vu, 16
  call void @llvm.assume(i1 %i.vv)
  switch i64 %i.vu, label %bb.ee [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.ed
  ]

bb.ed:                                            ; preds = %bb.ec
  %i.vw = load i8, ptr %i.vs, align 1, !tbaa !222
  store i8 %i.vw, ptr %i.vq, align 1, !tbaa !222
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.ee:                                            ; preds = %bb.ec
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vq, ptr align 1 %i.vs, i64 %i.vu, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.ee, %bb.ed, %bb.ec
  %i.vx = load i64, ptr %i.ma, align 8, !tbaa !221, !noalias !391 ; 2 uses
  store i64 %i.vx, ptr %i.lx, align 8, !tbaa !221, !noalias !391
  %i.vy = load ptr, ptr %20, align 8, !tbaa !307, !noalias !391
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 %i.vx
  store i8 0, ptr %i.vz, align 1, !tbaa !222
  %.pre.i168.i.i = load ptr, ptr %21, align 8, !tbaa !307, !noalias !391
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i169.i.i
  store ptr %i.vs, ptr %20, align 8, !tbaa !307, !noalias !391
  %i.wa = load <2 x i64>, ptr %i.ma, align 8, !tbaa !222, !noalias !391
  store <2 x i64> %i.wa, ptr %i.lx, align 8, !tbaa !222, !noalias !391
  br label %bb.eg

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i119
  %i.wb = load i64, ptr %i.lw, align 8, !tbaa !222, !noalias !391
  store ptr %i.vs, ptr %20, align 8, !tbaa !307, !noalias !391
  %i.wc = load <2 x i64>, ptr %i.ma, align 8, !tbaa !222, !noalias !391
  store <2 x i64> %i.wc, ptr %i.lx, align 8, !tbaa !222, !noalias !391
  %.not.i167.i.i = icmp eq ptr %i.vq, null
  br i1 %.not.i167.i.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.vq, ptr %21, align 8, !tbaa !307, !noalias !391
  store i64 %i.wb, ptr %i.lz, align 8, !tbaa !222, !noalias !391
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

bb.eg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.lz, ptr %21, align 8, !tbaa !307, !noalias !391
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i: ; preds = %bb.eg, %bb.ef, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
  %i.wd = phi ptr [ %.pre.i168.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.vq, %bb.ef ], [ %i.lz, %bb.eg ]
  store i64 0, ptr %i.ma, align 8, !tbaa !221, !noalias !391
  store i8 0, ptr %i.wd, align 1, !tbaa !222
  %i.we = load ptr, ptr %21, align 8, !tbaa !307, !noalias !391 ; 2 uses
  %i.wf = icmp eq ptr %i.we, %i.lz
  br i1 %i.wf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i
  %i.wg = load i64, ptr %i.lz, align 8, !tbaa !222, !noalias !391
  %i.wh = add i64 %i.wg, 1
  call void @_ZdlPvm(ptr noundef %i.we, i64 noundef %i.wh) #30, !inline_history !388
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #29, !noalias !391
  %i.wi = load i64, ptr %i.lx, align 8, !tbaa !221, !noalias !391 ; 2 uses
  %i.wj = icmp eq i64 %i.wi, 0
  br i1 %i.wj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit208.thread.i.i, label %bb.ei

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
  %i.wk = load ptr, ptr %20, align 8, !tbaa !307, !noalias !442
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29, !noalias !442
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef %i.wk, i64 noundef %i.wi, ptr noundef nonnull @.str.118, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ej unwind label %bb.et, !inline_history !388

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29, !noalias !442
  call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %i.wl = load ptr, ptr %26, align 8, !tbaa !307, !noalias !448 ; 3 uses
  %i.wm = load i64, ptr %i.lb, align 8, !tbaa !221, !noalias !448 ; 6 uses
  %i.wn = load i64, ptr %i.mb, align 8, !tbaa !221, !noalias !448 ; 5 uses
  %i.wo = sub i64 9223372036854775807, %i.wn
  %i.wp = icmp ult i64 %i.wo, %i.wm
  br i1 %i.wp, label %bb.ek, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i174.i.i

bb.ek:                                            ; preds = %bb.ej
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.81) #31
          to label %.noexc184.i.i unwind label %.loopexit.split-lp10.i.i, !inline_history !388

.noexc184.i.i:                                    ; preds = %bb.ek
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i174.i.i: ; preds = %bb.ej
  %i.wq = add i64 %i.wn, %i.wm                    ; 3 uses
  %i.wr = load ptr, ptr %23, align 8, !tbaa !307, !noalias !448 ; 2 uses
  %i.ws = icmp eq ptr %i.wr, %i.mc
  br i1 %i.ws, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i183.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i183.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i174.i.i
  %i.wt = icmp ult i64 %i.wn, 16
  call void @llvm.assume(i1 %i.wt)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i176.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i174.i.i
  %i.wu = load i64, ptr %i.mc, align 8, !tbaa !222, !noalias !448
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i176.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i176.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i183.i.i
  %i.wv = phi i64 [ %i.wu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i183.i.i ]
  %.not.i.i.i.i177.i.i = icmp ugt i64 %i.wq, %i.wv
  br i1 %.not.i.i.i.i177.i.i, label %bb.ep, label %bb.el

bb.el:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i176.i.i
  %.not8.i.i.i.i178.i.i = icmp eq i64 %i.wm, 0
  br i1 %.not8.i.i.i.i178.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i180.i.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wr, i64 %i.wn ; 2 uses
  %cond.i.i.i.i179.i.i = icmp eq i64 %i.wm, 1
  br i1 %cond.i.i.i.i179.i.i, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.wx = load i8, ptr %i.wl, align 1, !tbaa !222, !noalias !445
  store i8 %i.wx, ptr %i.ww, align 1, !tbaa !222, !noalias !445
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i180.i.i

bb.eo:                                            ; preds = %bb.em
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ww, ptr align 1 %i.wl, i64 %i.wm, i1 false), !noalias !445
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i180.i.i

bb.ep:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i176.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %23, i64 noundef %i.wn, i64 noundef 0, ptr noundef %i.wl, i64 noundef %i.wm)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i180.i.i unwind label %.loopexit9.i.i, !inline_history !388

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i180.i.i: ; preds = %bb.ep, %bb.eo, %bb.en, %bb.el
  store i64 %i.wq, ptr %i.mb, align 8, !tbaa !221, !noalias !448
  %i.wy = load ptr, ptr %23, align 8, !tbaa !307, !noalias !448
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 %i.wq
  store i8 0, ptr %i.wz, align 1, !tbaa !222, !noalias !445
  %i.xa = load ptr, ptr %23, align 8, !tbaa !307, !noalias !448 ; 3 uses
  %i.xb = icmp eq ptr %i.xa, %i.mc
  br i1 %i.xb, label %.thread146.i.i, label %bb.eq

.thread146.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i180.i.i
  %i.xc = load i64, ptr %i.mb, align 8, !tbaa !221, !noalias !448 ; 3 uses
  %i.xd = icmp ult i64 %i.xc, 16
  call void @llvm.assume(i1 %i.xd)
  %i.xe = add nuw nsw i64 %i.xc, 1                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.md, ptr noundef nonnull align 8 dereferenceable(1) %i.mc, i64 %i.xe, i1 false), !noalias !391
  store ptr %i.le, ptr %27, align 8, !tbaa !220, !alias.scope !449
  br label %bb.er

bb.eq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i180.i.i
  %i.xf = load i64, ptr %i.mc, align 8, !tbaa !222, !noalias !448 ; 2 uses
  store i64 %i.xf, ptr %i.md, align 8, !tbaa !222, !alias.scope !445, !noalias !391
  %.pre.i182.i.i = load i64, ptr %i.mb, align 8, !tbaa !221, !noalias !448 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !452)
  store ptr %i.le, ptr %27, align 8, !tbaa !220, !alias.scope !454
  %i.xg = icmp eq ptr %i.xa, %i.md
  br i1 %i.xg, label %._crit_edge774, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i187.i.i

._crit_edge774:                                   ; preds = %bb.eq
  %.pre777 = add nuw nsw i64 %.pre.i182.i.i, 1
  br label %bb.er

bb.er:                                            ; preds = %._crit_edge774, %.thread146.i.i
  %.pre-phi778 = phi i64 [ %.pre777, %._crit_edge774 ], [ %i.xe, %.thread146.i.i ]
  %i.xh = phi i64 [ %.pre.i182.i.i, %._crit_edge774 ], [ %i.xc, %.thread146.i.i ] ; 2 uses
  %i.xi = icmp ult i64 %i.xh, 16
  call void @llvm.assume(i1 %i.xi)
end_hunk_1
