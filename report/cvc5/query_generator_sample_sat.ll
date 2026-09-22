Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/query_generator_sample_sat?download=true
inline.NumInlined: 2001
inline.NumDeleted: 934
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4cvc58internal6theory11quantifiers23QueryGeneratorSampleSat7addTermENS0_12NodeTemplateILb1EEERSt6vectorIS5_SaIS5_EE:bb.a

bb.fa:                                            ; preds = %.noexc259
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.vi, ptr align 4 %i.ux, i64 %i.va, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i255

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i255: ; preds = %bb.fa, %.noexc259
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vj, i64 4
  %.not.i17.i.i256 = icmp eq ptr %i.ux, null
  br i1 %.not.i17.i.i256, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i257, label %bb.fb

bb.fb:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i255
  %i.vn = load ptr, ptr %i.ut, align 8, !tbaa !97
  %i.vo = ptrtoint ptr %i.vn to i64
  %i.vp = sub i64 %i.vo, %i.uz
  call void @_ZdlPvm(ptr noundef nonnull %i.ux, i64 noundef %i.vp) #26
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i257

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i257: ; preds = %bb.fb, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i255
  store ptr %i.vi, ptr %i.uq, align 8, !tbaa !99
  store ptr %i.vm, ptr %i.ur, align 8, !tbaa !96
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %i.vg
  store ptr %i.vq, ptr %i.ut, align 8, !tbaa !97
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit260

_ZNSt6vectorIjSaIjEE9push_backERKj.exit260:       ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i257, %bb.ex
  %i.vr = load i64, ptr %i.no, align 8, !tbaa !122
  %.not.not.i = icmp eq i64 %i.vr, 0
  %i.vs = load i32, ptr %.sroa.0396.0474, align 4 ; 5 uses
  br i1 %.not.not.i, label %.preheader, label %.thread34.i

.thread34.i:                                      ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit260
  %i.vt = zext i32 %i.vs to i64                   ; 4 uses
  %i.vu = load i64, ptr %i.ce, align 8, !tbaa !91 ; 2 uses
  %i.vv = urem i64 %i.vt, %i.vu                   ; 5 uses
  %i.vw = load ptr, ptr %22, align 8, !tbaa !90
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %i.vv
  %i.vy = load ptr, ptr %i.vx, align 8, !tbaa !79 ; 2 uses
  %.not.i.i.i370 = icmp eq ptr %i.vy, null
  br i1 %.not.i.i.i370, label %.critedge.i372, label %bb.fe

.preheader:                                       ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit260, %bb.fc
  %.sroa.028.0.in.i = phi ptr [ %.sroa.028.0.i, %bb.fc ], [ %i.cf, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit260 ]
  %.sroa.028.0.i = load ptr, ptr %.sroa.028.0.in.i, align 8, !tbaa !77 ; 3 uses
  %.not.i373 = icmp eq ptr %.sroa.028.0.i, null
  br i1 %.not.i373, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %.preheader
  %i.vz = getelementptr inbounds nuw i8, ptr %.sroa.028.0.i, i64 8
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !98
  %i.wb = icmp eq i32 %i.vs, %i.wa
  br i1 %i.wb, label %.loopexit431, label %.preheader, !llvm.loop !3

bb.fd:                                            ; preds = %.preheader
  %i.wc = zext i32 %i.vs to i64                   ; 2 uses
  %i.wd = load i64, ptr %i.ce, align 8, !tbaa !91
  %i.we = urem i64 %i.wc, %i.wd
  br label %.critedge.i372

bb.fe:                                            ; preds = %.thread34.i
  %i.wf = load ptr, ptr %i.vy, align 8, !tbaa !77 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %i.wh = load i32, ptr %i.wg, align 4, !tbaa !98
  %i.wi = icmp eq i32 %i.vs, %i.wh
  br i1 %i.wi, label %.loopexit431, label %.lr.ph.i.i.i371

bb.ff:                                            ; preds = %bb.fg
  %i.wj = icmp eq i32 %i.vs, %i.wm
  br i1 %i.wj, label %.loopexit431, label %.lr.ph.i.i.i371, !llvm.loop !4

.lr.ph.i.i.i371:                                  ; preds = %bb.fe, %bb.ff
  %.020.i.i.i = phi ptr [ %i.wk, %bb.ff ], [ %i.wf, %bb.fe ]
  %i.wk = load ptr, ptr %.020.i.i.i, align 8, !tbaa !77 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.wk, null
  br i1 %.not18.i.i.i, label %.critedge.i372, label %bb.fg

bb.fg:                                            ; preds = %.lr.ph.i.i.i371
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 8
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !98 ; 2 uses
  %i.wn = zext i32 %i.wm to i64
  %i.wo = urem i64 %i.wn, %i.vu
  %.not19.i.i.i = icmp eq i64 %i.wo, %i.vv
  br i1 %.not19.i.i.i, label %bb.ff, label %..loopexit_crit_edge21.i.i.i, !llvm.loop !4

..loopexit_crit_edge21.i.i.i:                     ; preds = %bb.fg
  br label %.critedge.i372, !llvm.loop !4

.critedge.i372:                                   ; preds = %.lr.ph.i.i.i371, %..loopexit_crit_edge21.i.i.i, %bb.fd, %.thread34.i
  %i.wp = phi i64 [ %i.we, %bb.fd ], [ %i.vv, %.thread34.i ], [ %i.vv, %..loopexit_crit_edge21.i.i.i ], [ %i.vv, %.lr.ph.i.i.i371 ]
  %i.wq = phi i64 [ %i.wc, %bb.fd ], [ %i.vt, %.thread34.i ], [ %i.vt, %..loopexit_crit_edge21.i.i.i ], [ %i.vt, %.lr.ph.i.i.i371 ]
  %i.wr = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #25
          to label %.noexc374 unwind label %.loopexit433 ; 4 uses

.noexc374:                                        ; preds = %.critedge.i372
  store ptr null, ptr %i.wr, align 8, !tbaa !77
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 8
  %i.wt = load i32, ptr %.sroa.0396.0474, align 4, !tbaa !98
  store i32 %i.wt, ptr %i.ws, align 8, !tbaa !98
  %i.wu = invoke ptr @_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE21_M_insert_unique_nodeEmmPNS1_10_Hash_nodeIjLb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %22, i64 noundef %i.wp, i64 noundef %i.wq, ptr noundef nonnull %i.wr, i64 noundef 1)
          to label %.loopexit431 unwind label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i ; 0 uses

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i: ; preds = %.noexc374
  %i.wv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.wr, i64 noundef 16) #26
  br label %.body357

.loopexit431:                                     ; preds = %bb.ff, %bb.fc, %bb.fe, %.noexc374
  %i.ww = getelementptr inbounds nuw i8, ptr %.sroa.0396.0474, i64 4 ; 2 uses
  %.not424 = icmp eq ptr %i.ww, %i.ps
  br i1 %.not424, label %._crit_edge476, label %.lr.ph475

.loopexit433:                                     ; preds = %bb.ej, %bb.ek, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i252, %.critedge.i228, %.critedge.i247, %.noexc366, %.critedge.i372
  %lpad.loopexit435 = landingpad { ptr, i32 }
          cleanup
  br label %.body357

.loopexit.split-lp434:                            ; preds = %bb.ez
  %lpad.loopexit.split-lp436 = landingpad { ptr, i32 }
          cleanup
  br label %.body357

.body357:                                         ; preds = %.loopexit433, %.loopexit.split-lp434, %bb.dz, %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i, %bb.eq, %bb.dt, %bb.ds, %bb.dg
  %.pn91 = phi { ptr, i32 } [ %i.wv, %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE12_Scoped_nodeD2Ev.exit20.i ], [ %i.qe, %bb.dt ], [ %i.qd, %bb.ds ], [ %i.oq, %bb.dg ], [ %i.rd, %bb.dz ], [ %i.ty, %bb.eq ], [ %lpad.loopexit435, %.loopexit433 ], [ %lpad.loopexit.split-lp436, %.loopexit.split-lp434 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #14
  br label %bb.fh

bb.fh:                                            ; preds = %.body357, %bb.df
  %.pn91.pn = phi { ptr, i32 } [ %.pn91, %.body357 ], [ %i.op, %bb.df ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #14
  br label %bb.he

bb.fi:                                            ; preds = %._crit_edge479
  %i.wx = load ptr, ptr %i.cf, align 8, !tbaa !123 ; 2 uses
  %.not423480 = icmp eq ptr %i.wx, null
  br i1 %.not423480, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph483

.lr.ph483:                                        ; preds = %bb.fi
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.xb = call nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN4cvc58internal6Random9getRandomEvE9s_current)
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 8 ; 6 uses
  br label %bb.fk

bb.fj:                                            ; preds = %._crit_edge479
  %i.xd = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.fk:                                            ; preds = %.lr.ph483, %bb.gt
  %.sroa.0392.0481 = phi ptr [ %i.wx, %.lr.ph483 ], [ %i.abn, %bb.gt ] ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.sroa.0392.0481, i64 8 ; 3 uses
  %i.xf = load ptr, ptr %i.wz, align 8, !tbaa !66 ; 2 uses
  %.not10.i.i.i.i262 = icmp eq ptr %i.xf, null
  br i1 %.not10.i.i.i.i262, label %.critedge.i273, label %.lr.ph.i.i.i.i263

.lr.ph.i.i.i.i263:                                ; preds = %bb.fk
  %i.xg = load i32, ptr %i.xe, align 4, !tbaa !98 ; 2 uses
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fl, %.lr.ph.i.i.i.i263
  %.012.i.i.i.i264 = phi ptr [ %i.xf, %.lr.ph.i.i.i.i263 ], [ %.1.i.i.i.i269, %bb.fl ] ; 3 uses
  %.0811.i.i.i.i265 = phi ptr [ %i.xa, %.lr.ph.i.i.i.i263 ], [ %.19.i.i.i.i266, %bb.fl ]
  %i.xh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i264, i64 32
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !98
  %i.xj = icmp ult i32 %i.xi, %i.xg               ; 2 uses
  %.19.i.i.i.i266 = select i1 %i.xj, ptr %.0811.i.i.i.i265, ptr %.012.i.i.i.i264 ; 6 uses
  %.1.in.v.i.i.i.i267 = select i1 %i.xj, i64 24, i64 16
  %.1.in.i.i.i.i268 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i264, i64 %.1.in.v.i.i.i.i267
  %.1.i.i.i.i269 = load ptr, ptr %.1.in.i.i.i.i268, align 8, !tbaa !92 ; 2 uses
  %.not.i.i.i.i270 = icmp eq ptr %.1.i.i.i.i269, null
  br i1 %.not.i.i.i.i270, label %_ZNSt3mapIjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessIjESaISt4pairIKjS6_EEE11lower_boundERSA_.exit.i271, label %bb.fl, !llvm.loop !171

_ZNSt3mapIjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessIjESaISt4pairIKjS6_EEE11lower_boundERSA_.exit.i271: ; preds = %bb.fl
  %i.xk = icmp eq ptr %.19.i.i.i.i266, %i.xa
  br i1 %i.xk, label %.critedge.i273, label %bb.fm

bb.fm:                                            ; preds = %_ZNSt3mapIjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessIjESaISt4pairIKjS6_EEE11lower_boundERSA_.exit.i271
  %i.xl = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i266, i64 32
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !98
  %i.xn = icmp ult i32 %i.xg, %i.xm
  br i1 %i.xn, label %.critedge.i273, label %bb.fn

.critedge.i273:                                   ; preds = %bb.fm, %_ZNSt3mapIjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessIjESaISt4pairIKjS6_EEE11lower_boundERSA_.exit.i271, %bb.fk
  %.08.lcssa.i.i.i11.i274 = phi ptr [ %.19.i.i.i.i266, %bb.fm ], [ %.19.i.i.i.i266, %_ZNSt3mapIjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS4_EESt4lessIjESaISt4pairIKjS6_EEE11lower_boundERSA_.exit.i271 ], [ %i.xa, %bb.fk ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  store ptr %i.xe, ptr %8, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.xo = invoke ptr @_ZNSt8_Rb_treeIjSt4pairIKjSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS6_EEESt10_Select1stIS9_ESt4lessIjESaIS9_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESK_IJEEEEESt17_Rb_tree_iteratorIS9_ESt23_Rb_tree_const_iteratorIS9_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.wy, ptr %.08.lcssa.i.i.i11.i274, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc275 unwind label %bb.gd

.noexc275:                                        ; preds = %.critedge.i273
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  br label %bb.fn

bb.fn:                                            ; preds = %.noexc275, %bb.fm
  %.sroa.06.0.i272 = phi ptr [ %i.xo, %.noexc275 ], [ %.19.i.i.i.i266, %bb.fm ] ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i272, i64 40 ; 4 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i272, i64 48 ; 3 uses
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !101
  %i.xs = load ptr, ptr %i.xp, align 8, !tbaa !108
  %i.xt = ptrtoint ptr %i.xr to i64
  %i.xu = ptrtoint ptr %i.xs to i64
  %i.xv = sub i64 %i.xt, %i.xu                    ; 2 uses
  %i.xw = icmp ugt i64 %i.xv, 8
  br i1 %i.xw, label %bb.fo, label %bb.gt

bb.fo:                                            ; preds = %bb.fn
  %i.xx = load i8, ptr @_ZGVZN4cvc58internal6Random9getRandomEvE9s_current, align 8
  %i.xy = icmp eq i8 %i.xx, 0
  br i1 %i.xy, label %bb.fp, label %bb.fq, !prof !181

bb.fp:                                            ; preds = %bb.fo
  invoke void @_ZN4cvc58internal6RandomC1Em(ptr noundef nonnull align 8 dereferenceable(2544) @_ZZN4cvc58internal6Random9getRandomEvE9s_current, i64 noundef 0)
          to label %.noexc277 unwind label %.loopexit.split-lp426

.noexc277:                                        ; preds = %bb.fp
  %i.xz = call i32 @__cxa_thread_atexit(ptr nonnull @_ZN4cvc58internal6RandomD1Ev, ptr nonnull @_ZZN4cvc58internal6Random9getRandomEvE9s_current, ptr nonnull @__dso_handle) #14 ; 0 uses
  store i8 1, ptr @_ZGVZN4cvc58internal6Random9getRandomEvE9s_current, align 8
  %.pre496 = load ptr, ptr %i.xq, align 8, !tbaa !101 ; 2 uses
  %.pre497 = load ptr, ptr %i.xp, align 8, !tbaa !108 ; 2 uses
  %.pre499 = ptrtoint ptr %.pre496 to i64
  %.pre500 = ptrtoint ptr %.pre497 to i64
  %.pre502 = sub i64 %.pre499, %.pre500
  %34 = icmp eq ptr %.pre496, %.pre497
  br i1 %34, label %bb.fs, label %bb.fq

bb.fq:                                            ; preds = %bb.fo, %.noexc277
  %.pre-phi503 = phi i64 [ %.pre502, %.noexc277 ], [ %i.xv, %bb.fo ]
  %i.ya = ashr exact i64 %.pre-phi503, 3          ; 4 uses
  %35 = invoke noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %i.xc)
          to label %.noexc280 unwind label %.loopexit.split-lp426

.noexc280:                                        ; preds = %bb.fq
  %36 = add nsw i64 %i.ya, -1
  %i.yb = zext i64 %35 to i128
  %i.yc = zext i64 %i.ya to i128                  ; 2 uses
  %i.yd = mul nuw i128 %i.yb, %i.yc               ; 2 uses
  %i.ye = trunc i128 %i.yd to i64                 ; 2 uses
  %.not21.i.i.i = icmp ult i64 %36, %i.ye
  %extract15.i.i.i.i = lshr i128 %i.yd, 64
  %extract.t16.i.i.i.i = trunc nuw i128 %extract15.i.i.i.i to i64 ; 2 uses
  br i1 %.not21.i.i.i, label %_ZN4cvc58internal6Random4pickImTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEES4_S4_S4_.exit, label %bb.fr

bb.fr:                                            ; preds = %.noexc280
  %i.yf = sub nsw i64 0, %i.ya
  %i.yg = urem i64 %i.yf, %i.ya                   ; 2 uses
  %i.yh = icmp ugt i64 %i.yg, %i.ye
  br i1 %i.yh, label %.lr.ph.i.i.i.i279, label %_ZN4cvc58internal6Random4pickImTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEES4_S4_S4_.exit

.lr.ph.i.i.i.i279:                                ; preds = %bb.fr, %.noexc281
  %i.yi = invoke noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %i.xc)
          to label %.noexc281 unwind label %.loopexit425

.noexc281:                                        ; preds = %.lr.ph.i.i.i.i279
  %i.yj = zext i64 %i.yi to i128
  %i.yk = mul nuw i128 %i.yj, %i.yc               ; 2 uses
  %i.yl = trunc i128 %i.yk to i64
  %i.ym = icmp ugt i64 %i.yg, %i.yl
  br i1 %i.ym, label %.lr.ph.i.i.i.i279, label %..loopexit_crit_edge.i.i.i.i, !llvm.loop !172

..loopexit_crit_edge.i.i.i.i:                     ; preds = %.noexc281
  %extract19.le.i.i.i.i = lshr i128 %i.yk, 64
  %extract.t20.le.i.i.i.i = trunc nuw i128 %extract19.le.i.i.i.i to i64
  br label %_ZN4cvc58internal6Random4pickImTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEES4_S4_S4_.exit

bb.fs:                                            ; preds = %.noexc277
  %i.yn = invoke noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %i.xc)
          to label %_ZN4cvc58internal6Random4pickImTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEES4_S4_S4_.exit unwind label %.loopexit.split-lp426

_ZN4cvc58internal6Random4pickImTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEES4_S4_S4_.exit: ; preds = %..loopexit_crit_edge.i.i.i.i, %bb.fr, %.noexc280, %bb.fs
  %.0.i.i.i = phi i64 [ %extract.t16.i.i.i.i, %bb.fr ], [ %extract.t16.i.i.i.i, %.noexc280 ], [ %extract.t20.le.i.i.i.i, %..loopexit_crit_edge.i.i.i.i ], [ %i.yn, %bb.fs ] ; 2 uses
  %i.yo = load i8, ptr @_ZGVZN4cvc58internal6Random9getRandomEvE9s_current, align 8
  %i.yp = icmp eq i8 %i.yo, 0
  br i1 %i.yp, label %bb.ft, label %_ZN4cvc58internal6Random9getRandomEv.exit284, !prof !181

bb.ft:                                            ; preds = %_ZN4cvc58internal6Random4pickImTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEES4_S4_S4_.exit
  invoke void @_ZN4cvc58internal6RandomC1Em(ptr noundef nonnull align 8 dereferenceable(2544) @_ZZN4cvc58internal6Random9getRandomEvE9s_current, i64 noundef 0)
          to label %.noexc283 unwind label %.loopexit.split-lp

.noexc283:                                        ; preds = %bb.ft
  %i.yq = call i32 @__cxa_thread_atexit(ptr nonnull @_ZN4cvc58internal6RandomD1Ev, ptr nonnull @_ZZN4cvc58internal6Random9getRandomEvE9s_current, ptr nonnull @__dso_handle) #14 ; 0 uses
  store i8 1, ptr @_ZGVZN4cvc58internal6Random9getRandomEvE9s_current, align 8
  br label %_ZN4cvc58internal6Random9getRandomEv.exit284

_ZN4cvc58internal6Random9getRandomEv.exit284:     ; preds = %.noexc283, %_ZN4cvc58internal6Random4pickImTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEES4_S4_S4_.exit
  %i.yr = load ptr, ptr %i.xq, align 8, !tbaa !101
  %i.ys = load ptr, ptr %i.xp, align 8, !tbaa !108
  %i.yt = ptrtoint ptr %i.yr to i64
  %i.yu = ptrtoint ptr %i.ys to i64
  %i.yv = sub i64 %i.yt, %i.yu
  %i.yw = ashr exact i64 %i.yv, 3                 ; 3 uses
  %i.yx = add nsw i64 %i.yw, -2                   ; 2 uses
  %.not.i.i.i285 = icmp eq i64 %i.yx, -1
  br i1 %.not.i.i.i285, label %bb.fw, label %bb.fu

bb.fu:                                            ; preds = %_ZN4cvc58internal6Random9getRandomEv.exit284
  %i.yy = add nsw i64 %i.yw, -1                   ; 2 uses
  %i.yz = invoke noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %i.xc)
          to label %.noexc294 unwind label %.loopexit.split-lp

.noexc294:                                        ; preds = %bb.fu
  %i.za = zext i64 %i.yz to i128
  %i.zb = zext i64 %i.yy to i128                  ; 2 uses
  %i.zc = mul nuw i128 %i.za, %i.zb               ; 2 uses
  %i.zd = trunc i128 %i.zc to i64                 ; 2 uses
  %.not21.i.i.i286 = icmp ult i64 %i.yx, %i.zd
  %extract15.i.i.i.i287 = lshr i128 %i.zc, 64
  %extract.t16.i.i.i.i288 = trunc nuw i128 %extract15.i.i.i.i287 to i64 ; 2 uses
  br i1 %.not21.i.i.i286, label %_ZN4cvc58internal6Random4pickImTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEES4_S4_S4_.exit297, label %bb.fv

bb.fv:                                            ; preds = %.noexc294
  %i.ze = sub nsw i64 1, %i.yw
  %i.zf = urem i64 %i.ze, %i.yy                   ; 2 uses
  %i.zg = icmp ugt i64 %i.zf, %i.zd
  br i1 %i.zg, label %.lr.ph.i.i.i.i290, label %_ZN4cvc58internal6Random4pickImTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEES4_S4_S4_.exit297

.lr.ph.i.i.i.i290:                                ; preds = %bb.fv, %.noexc295
  %i.zh = invoke noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %i.xc)
          to label %.noexc295 unwind label %.loopexit

.noexc295:                                        ; preds = %.lr.ph.i.i.i.i290
  %i.zi = zext i64 %i.zh to i128
  %i.zj = mul nuw i128 %i.zi, %i.zb               ; 2 uses
  %i.zk = trunc i128 %i.zj to i64
  %i.zl = icmp ugt i64 %i.zf, %i.zk
  br i1 %i.zl, label %.lr.ph.i.i.i.i290, label %..loopexit_crit_edge.i.i.i.i291, !llvm.loop !172

..loopexit_crit_edge.i.i.i.i291:                  ; preds = %.noexc295
  %extract19.le.i.i.i.i292 = lshr i128 %i.zj, 64
  %extract.t20.le.i.i.i.i293 = trunc nuw i128 %extract19.le.i.i.i.i292 to i64
  br label %_ZN4cvc58internal6Random4pickImTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEES4_S4_S4_.exit297

bb.fw:                                            ; preds = %_ZN4cvc58internal6Random9getRandomEv.exit284
  %i.zm = invoke noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %i.xc)
          to label %_ZN4cvc58internal6Random4pickImTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEES4_S4_S4_.exit297 unwind label %.loopexit.split-lp

_ZN4cvc58internal6Random4pickImTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEES4_S4_S4_.exit297: ; preds = %..loopexit_crit_edge.i.i.i.i291, %bb.fv, %.noexc294, %bb.fw
  %.0.i.i.i289 = phi i64 [ %extract.t16.i.i.i.i288, %bb.fv ], [ %extract.t16.i.i.i.i288, %.noexc294 ], [ %extract.t20.le.i.i.i.i293, %..loopexit_crit_edge.i.i.i.i291 ], [ %i.zm, %bb.fw ] ; 2 uses
  %.not = icmp uge i64 %.0.i.i.i289, %.0.i.i.i
  %i.zn = zext i1 %.not to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #14
  %i.zo = load ptr, ptr %i.xp, align 8, !tbaa !108 ; 2 uses
  %i.zp = getelementptr inbounds nuw [8 x i8], ptr %i.zo, i64 %.0.i.i.i
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !72 ; 2 uses
  %i.zr = getelementptr [8 x i8], ptr %i.zo, i64 %.0.i.i.i289
  %i.zs = getelementptr [8 x i8], ptr %i.zr, i64 %i.zn
  %i.zt = load ptr, ptr %i.zs, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14, !noalias !182
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zq, i64 16
  %i.zv = load ptr, ptr %i.zu, align 8, !tbaa !126, !noalias !182
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef %i.zv, i32 noundef 21)
          to label %.noexc298 unwind label %bb.gp

.noexc298:                                        ; preds = %_ZN4cvc58internal6Random4pickImTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEES4_S4_S4_.exit297
  store ptr %i.zq, ptr %6, align 8, !tbaa !128, !noalias !182
  %i.zw = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %5, ptr noundef nonnull align 8 %6)
          to label %bb.fx unwind label %bb.ga, !noalias !182

bb.fx:                                            ; preds = %.noexc298
  store ptr %i.zt, ptr %7, align 8, !tbaa !128, !noalias !182
  %i.zx = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.zw, ptr noundef nonnull align 8 %7)
          to label %bb.fy unwind label %bb.gb, !noalias !182 ; 0 uses

bb.fy:                                            ; preds = %bb.fx
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %32, ptr noundef nonnull align 8 dereferenceable(124) %5)
          to label %bb.ge unwind label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.zy = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.ga:                                            ; preds = %.noexc298
  %i.zz = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.gb:                                            ; preds = %bb.fx
  %i.aaa = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga, %bb.fz
  %.pn5.i = phi { ptr, i32 } [ %i.zy, %bb.fz ], [ %i.aaa, %bb.gb ], [ %i.zz, %bb.ga ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14, !noalias !182
  br label %.body

bb.gd:                                            ; preds = %.critedge.i273
  %i.aab = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

.loopexit425:                                     ; preds = %.lr.ph.i.i.i.i279
  %lpad.loopexit427 = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

.loopexit.split-lp426:                            ; preds = %bb.fp, %bb.fq, %bb.fs
  %lpad.loopexit.split-lp428 = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i290
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

.loopexit.split-lp:                               ; preds = %bb.ft, %bb.fu, %bb.fw
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.he

bb.ge:                                            ; preds = %bb.fy
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14, !noalias !182
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.aac = load ptr, ptr %32, align 8, !tbaa !72  ; 5 uses
  store ptr %i.aac, ptr %33, align 8, !tbaa !72
  %i.aad = load i64, ptr %i.aac, align 8          ; 3 uses
  %i.aae = lshr i64 %i.aad, 40
  %i.aaf = trunc nuw nsw i64 %i.aae to i32
  %i.aag = and i32 %i.aaf, 1048575                ; 3 uses
  %i.aah = icmp samesign ult i32 %i.aag, 1048574
  br i1 %i.aah, label %bb.gf, label %bb.gg, !prof !74

bb.gf:                                            ; preds = %bb.ge
  %i.aai = add nuw nsw i32 %i.aag, 1
  %i.aaj = zext nneg i32 %i.aai to i64
  %i.aak = shl nuw nsw i64 %i.aaj, 40
  %i.aal = and i64 %i.aad, -1152920405095219201
  %i.aam = or i64 %i.aak, %i.aal
  store i64 %i.aam, ptr %i.aac, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit300

bb.gg:                                            ; preds = %bb.ge
  %i.aan = icmp eq i32 %i.aag, 1048574
  br i1 %i.aan, label %bb.gh, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit300, !prof !75

bb.gh:                                            ; preds = %bb.gg
  %i.aao = or i64 %i.aad, 1152920405095219200
  store i64 %i.aao, ptr %i.aac, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aac)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit300 unwind label %bb.gq

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit300: ; preds = %bb.gg, %bb.gf, %bb.gh
  %i.aap = load i32, ptr %i.xe, align 4, !tbaa !98
  invoke void @_ZN4cvc58internal6theory11quantifiers23QueryGeneratorSampleSat10checkQueryENS0_12NodeTemplateILb1EEEjRSt6vectorIS5_SaIS5_EE(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef nonnull align 8 %33, i32 noundef %i.aap, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.gi unwind label %bb.gr

bb.gi:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit300
  %i.aaq = load ptr, ptr %33, align 8, !tbaa !72  ; 3 uses
  %i.aar = load i64, ptr %i.aaq, align 8          ; 3 uses
  %i.aas = and i64 %i.aar, 1152920405095219200
  %.not.i.i301 = icmp eq i64 %i.aas, 1152920405095219200
  br i1 %.not.i.i301, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit303, label %bb.gj, !prof !75

bb.gj:                                            ; preds = %bb.gi
  %i.aat = add i64 %i.aar, 1152920405095219200
  %i.aau = and i64 %i.aat, 1152920405095219200    ; 2 uses
  %i.aav = and i64 %i.aar, -1152920405095219201
  %i.aaw = or disjoint i64 %i.aau, %i.aav
  store i64 %i.aaw, ptr %i.aaq, align 8
  %i.aax = icmp eq i64 %i.aau, 0
  br i1 %i.aax, label %bb.gk, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit303, !prof !75

bb.gk:                                            ; preds = %bb.gj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aaq)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit303 unwind label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.aay = landingpad { ptr, i32 }
          catch ptr null
  %i.aaz = extractvalue { ptr, i32 } %i.aay, 0
  call void @__clang_call_terminate(ptr %i.aaz) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit303: ; preds = %bb.gi, %bb.gj, %bb.gk
  %i.aba = load ptr, ptr %32, align 8, !tbaa !72  ; 3 uses
  %i.abb = load i64, ptr %i.aba, align 8          ; 3 uses
  %i.abc = and i64 %i.abb, 1152920405095219200
  %.not.i.i304 = icmp eq i64 %i.abc, 1152920405095219200
  br i1 %.not.i.i304, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit306, label %bb.gm, !prof !75

bb.gm:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit303
  %i.abd = add i64 %i.abb, 1152920405095219200
  %i.abe = and i64 %i.abd, 1152920405095219200    ; 2 uses
  %i.abf = and i64 %i.abb, -1152920405095219201
  %i.abg = or disjoint i64 %i.abe, %i.abf
  store i64 %i.abg, ptr %i.aba, align 8
  %i.abh = icmp eq i64 %i.abe, 0
  br i1 %i.abh, label %bb.gn, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit306, !prof !75

bb.gn:                                            ; preds = %bb.gm
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aba)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit306 unwind label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.abi = landingpad { ptr, i32 }
          catch ptr null
  %i.abj = extractvalue { ptr, i32 } %i.abi, 0
  call void @__clang_call_terminate(ptr %i.abj) #23
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit306: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit303, %bb.gm, %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #14
  br label %bb.gt

bb.gp:                                            ; preds = %_ZN4cvc58internal6Random4pickImTnNSt9enable_ifIXsr3std11is_integralIT_EE5valueEiE4typeELi0EEES4_S4_S4_.exit297
  %i.abk = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.gq:                                            ; preds = %bb.gh
  %i.abl = landingpad { ptr, i32 }
          cleanup
  br label %bb.gs

bb.gr:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit300
  %i.abm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #14
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %.pn82 = phi { ptr, i32 } [ %i.abm, %bb.gr ], [ %i.abl, %bb.gq ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #14
  br label %.body

.body:                                            ; preds = %bb.gp, %bb.gc, %bb.gs
  %.pn82.pn = phi { ptr, i32 } [ %.pn82, %bb.gs ], [ %i.abk, %bb.gp ], [ %.pn5.i, %bb.gc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #14
  br label %bb.he

bb.gt:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit306, %bb.fn
  %i.abn = load ptr, ptr %.sroa.0392.0481, align 8, !tbaa !77 ; 2 uses
  %.not423 = icmp eq ptr %i.abn, null
  br i1 %.not423, label %.loopexit430, label %bb.fk

.loopexit430:                                     ; preds = %bb.gt, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit165
  %.pr = load ptr, ptr %i.cf, align 8, !tbaa !123 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i310

.lr.ph.i.i.i.i310:                                ; preds = %.loopexit430, %.lr.ph.i.i.i.i310
  %.06.i.i.i.i = phi ptr [ %i.abo, %.lr.ph.i.i.i.i310 ], [ %.pr, %.loopexit430 ] ; 2 uses
  %i.abo = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !77 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #26
  %.not.i.i.i.i311 = icmp eq ptr %i.abo, null
  br i1 %.not.i.i.i.i311, label %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i310, !llvm.loop !5

_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i310, %bb.fi, %.loopexit430
  %i.abp = load ptr, ptr %22, align 8, !tbaa !90
  %i.abq = load i64, ptr %i.ce, align 8, !tbaa !91
  %i.abr = shl i64 %i.abq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.abp, i8 0, i64 %i.abr, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i8 0, i64 16, i1 false)
  %i.abs = load ptr, ptr %22, align 8, !tbaa !90  ; 2 uses
  %i.abt = icmp eq ptr %i.abs, %i.cd
  br i1 %i.abt, label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit, label %bb.gu

bb.gu:                                            ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.abu = load i64, ptr %i.ce, align 8, !tbaa !91
  %i.abv = shl i64 %i.abu, 3
  call void @_ZdlPvm(ptr noundef %i.abs, i64 noundef %i.abv) #26
  br label %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit

_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit: ; preds = %_ZNSt10_HashtableIjjSaIjENSt8__detail9_IdentityESt8equal_toIjESt4hashIjENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #14
  %i.abw = load ptr, ptr %21, align 8, !tbaa !109 ; 3 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !105 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.abw, %i.aby
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i312

.lr.ph.i.i.i312:                                  ; preds = %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.acf, %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i ], [ %i.abw, %_ZNSt13unordered_setIjSt4hashIjESt8equal_toIjESaIjEED2Ev.exit ] ; 3 uses
  %i.abz = load ptr, ptr %.05.i.i.i, align 8, !tbaa !99 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.abz, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i, label %bb.gv

bb.gv:                                            ; preds = %.lr.ph.i.i.i312
  %i.aca = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !97
  %i.acc = ptrtoint ptr %i.acb to i64
  %i.acd = ptrtoint ptr %i.abz to i64
  %i.ace = sub i64 %i.acc, %i.acd
  call void @_ZdlPvm(ptr noundef nonnull %i.abz, i64 noundef %i.ace) #26
  br label %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i:  ; preds = %bb.gv, %.lr.ph.i.i.i312
  %i.acf = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i313 = icmp eq ptr %i.acf, %i.aby
  br i1 %.not.i.i.i313, label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i312, !llvm.loop !6

_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIjSaIjEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %21, align 8, !tbaa !109
  br label %_ZSt8_DestroyIPSt6vectorIjSaIjEES2_EvT_S4_RSaIT0_E.exit.i
end_hunk_0
