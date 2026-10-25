Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/btree_test?download=true
inline.NumInlined: 114243
inline.NumDeleted: 30281
loop-unroll.NumCompletelyUnrolled: 135
loop-unroll.NumRuntimeUnrolled: 695
loop-unroll.NumUnrolled: 833
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_131Btree_InsertHintNodeHandle_Test8TestBodyEv:.lr.ph.i.i.i.i.i
  br label %.body.i

bb.gv:                                            ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit.i, %bb.fp
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_119InsertMultiHintDataENS6_29InsertMultiHintDataKeyCompareESaIS7_EEEEE, i64 16), ptr %26, align 8, !tbaa !816, !noalias !13547
  %.val.i.i.i409 = load ptr, ptr %i.rl, align 8, !tbaa !1859, !noalias !13547 ; 2 uses
  %.not.i.i.i65.i = icmp eq ptr %.val.i.i.i409, null
  br i1 %.not.i.i.i65.i, label %bb.gz, label %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_119InsertMultiHintDataENS6_29InsertMultiHintDataKeyCompareESaIS7_EEEE8IsSharedEv.exit.i.i.i

_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_119InsertMultiHintDataENS6_29InsertMultiHintDataKeyCompareESaIS7_EEEE8IsSharedEv.exit.i.i.i: ; preds = %bb.gv
  %i.xn = getelementptr inbounds nuw i8, ptr %.val.i.i.i409, i64 24
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !1865
  %.not.i.i66.i = icmp eq ptr %i.xo, null
  br i1 %.not.i.i66.i, label %bb.gz, label %bb.gw

bb.gw:                                            ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_119InsertMultiHintDataENS6_29InsertMultiHintDataKeyCompareESaIS7_EEEE8IsSharedEv.exit.i.i.i
  %i.xp = load ptr, ptr %i.rm, align 8, !tbaa !813, !noalias !13547
  %i.xq = atomicrmw add ptr %i.xp, i32 -1 acq_rel, align 4
  %i.xr = icmp eq i32 %i.xq, 1
  br i1 %i.xr, label %bb.gx, label %bb.gz

bb.gx:                                            ; preds = %bb.gw
  %i.xs = load ptr, ptr %i.rl, align 8, !tbaa !1859, !noalias !13547
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 24
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !1865
  %i.xv = load ptr, ptr %i.rm, align 8, !tbaa !813, !noalias !13547
  invoke void %i.xu(ptr noundef %i.xv)
          to label %bb.gz unwind label %bb.gy, !inline_history !506

bb.gy:                                            ; preds = %bb.gx
  %i.xw = landingpad { ptr, i32 }
          catch ptr null
  %i.xx = extractvalue { ptr, i32 } %i.xw, 0
  call void @__clang_call_terminate(ptr %i.xx) #39, !inline_history !1866
  unreachable

.body.i:                                          ; preds = %bb.gu, %bb.fq, %.body.i.i
  %.pn21.i = phi { ptr, i32 } [ %.pn14.pn.pn.pn.pn.pn.i, %bb.gu ], [ %i.sh, %bb.fq ], [ %i.sd, %.body.i.i ]
  call void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_119InsertMultiHintDataENS6_29InsertMultiHintDataKeyCompareESaIS7_EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %26) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #37, !noalias !13547
  br label %.body410

bb.gz:                                            ; preds = %bb.gx, %bb.gw, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_2026052614btree_multisetINS3_18container_internal12_GLOBAL__N_119InsertMultiHintDataENS6_29InsertMultiHintDataKeyCompareESaIS7_EEEE8IsSharedEv.exit.i.i.i, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #37, !noalias !13547
  %i.xy = load i8, ptr %68, align 8, !tbaa !842, !range !843, !noundef !844
  %i.xz = trunc nuw i8 %i.xy to i1
  br i1 %i.xz, label %bb.hl, label %bb.hc

bb.ha:                                            ; preds = %_ZN7testing7MessageD2Ev.exit389, %bb.eb
  %.pn157.pn.pn = phi { ptr, i32 } [ %.pn157.pn, %_ZN7testing7MessageD2Ev.exit389 ], [ %i.oa, %bb.eb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #37
  br label %bb.na

bb.hb:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit394
  %i.ya = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052618container_internal15btree_containerINS1_5btreeINS1_15set_params_implINS1_12_GLOBAL__N_119InsertMultiHintDataEJNS5_29InsertMultiHintDataKeyCompareESaIS6_ESt17integral_constantIiLi256EES9_IbLb1EEEEEEEED2Ev.exit678

bb.hc:                                            ; preds = %bb.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %69)
          to label %bb.hd unwind label %bb.hh

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #37
  %i.yb = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !845 ; 2 uses
  %.not.i.i412 = icmp eq ptr %i.yc, null
  br i1 %.not.i.i412, label %_ZNK7testing15AssertionResult15failure_messageEv.exit413, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !810
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit413

_ZNK7testing15AssertionResult15failure_messageEv.exit413: ; preds = %bb.he, %bb.hd
  %i.ye = phi ptr [ %i.yd, %bb.he ], [ @.str.192, %bb.hd ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %70, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 2131, ptr noundef %i.ye)
          to label %bb.hf unwind label %bb.hi

bb.hf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit413
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef nonnull align 8 dereferenceable(8) %69)
          to label %bb.hg unwind label %bb.hj

bb.hg:                                            ; preds = %bb.hf
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %70) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #37
  %i.yf = load ptr, ptr %69, align 8, !tbaa !827  ; 3 uses
  %.not.i.i414 = icmp eq ptr %i.yf, null
  br i1 %.not.i.i414, label %_ZN7testing7MessageD2Ev.exit416, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415: ; preds = %bb.hg
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !816
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 8
  %i.yi = load ptr, ptr %i.yh, align 8
  call void %i.yi(ptr noundef nonnull align 8 dereferenceable(128) %i.yf) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit416

_ZN7testing7MessageD2Ev.exit416:                  ; preds = %bb.hg, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #37
  br label %bb.hl

bb.hh:                                            ; preds = %bb.hc
  %i.yj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit419

bb.hi:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit413
  %i.yk = landingpad { ptr, i32 }
          cleanup
  br label %bb.hk

bb.hj:                                            ; preds = %bb.hf
  %i.yl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %70) #37
  br label %bb.hk

bb.hk:                                            ; preds = %bb.hj, %bb.hi
  %.pn161 = phi { ptr, i32 } [ %i.yl, %bb.hj ], [ %i.yk, %bb.hi ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #37
  %i.ym = load ptr, ptr %69, align 8, !tbaa !827  ; 3 uses
  %.not.i.i417 = icmp eq ptr %i.ym, null
  br i1 %.not.i.i417, label %_ZN7testing7MessageD2Ev.exit419, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i418

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i418: ; preds = %bb.hk
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !816
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 8
  %i.yp = load ptr, ptr %i.yo, align 8
  call void %i.yp(ptr noundef nonnull align 8 dereferenceable(128) %i.ym) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit419

_ZN7testing7MessageD2Ev.exit419:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i418, %bb.hk, %bb.hh
  %.pn161.pn = phi { ptr, i32 } [ %i.yj, %bb.hh ], [ %.pn161, %bb.hk ], [ %.pn161, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i418 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %68) #37
  br label %.body410

bb.hl:                                            ; preds = %bb.gz, %_ZN7testing7MessageD2Ev.exit416
  %i.yq = getelementptr inbounds nuw i8, ptr %68, i64 8
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !845 ; 4 uses
  %.not.i.i420 = icmp eq ptr %i.yr, null
  br i1 %.not.i.i420, label %bb.hn, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !810 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yr, i64 16 ; 2 uses
  %i.yu = icmp eq ptr %i.ys, %i.yt
  br i1 %i.yu, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i422, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i421

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i421: ; preds = %bb.hm
  %i.yv = load i64, ptr %i.yt, align 8, !tbaa !813
  %i.yw = add i64 %i.yv, 1
  call void @_ZdlPvm(ptr noundef %i.ys, i64 noundef %i.yw) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i422

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i422: ; preds = %bb.hm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i421
  call void @_ZdlPvm(ptr noundef nonnull %i.yr, i64 noundef 32) #36
  br label %bb.hn

bb.hn:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i422, %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #37
  %.val197 = load ptr, ptr %i.ox, align 8, !tbaa !1843 ; 7 uses
  %i.yx = getelementptr i8, ptr %.val197, i64 10
  %.val2.i.i425 = load i8, ptr %i.yx, align 1, !tbaa !813 ; 2 uses
  %i.yy = zext i8 %.val2.i.i425 to i32            ; 3 uses
  store ptr %.val197, ptr %72, align 8
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %72, i64 8 ; 5 uses
  store i32 %i.yy, ptr %.sroa.221.0..sroa_idx, align 8
  %i.yz = getelementptr i8, ptr %.val197, i64 11  ; 2 uses
  %.val.i.i428 = load i8, ptr %i.yz, align 1, !tbaa !813
  %.not.i.i429 = icmp eq i8 %.val.i.i428, 0
  br i1 %.not.i.i429, label %.thread.i.i441, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.za = add nsw i32 %i.yy, -1                   ; 3 uses
  store i32 %i.za, ptr %.sroa.221.0..sroa_idx, align 8, !tbaa !1868
  %.not780 = icmp eq i8 %.val2.i.i425, 0
  br i1 %.not780, label %bb.hp, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_119InsertMultiHintDataEJNS5_29InsertMultiHintDataKeyCompareESaIS6_ESt17integral_constantIiLi256EES9_IbLb1EEEEEEERKS6_PSE_EmmEv.exit454

bb.hp:                                            ; preds = %bb.ho
  %.val.i.pr.i.i430 = load i8, ptr %i.yz, align 1, !tbaa !813
  %.not.i.i.i431 = icmp eq i8 %.val.i.pr.i.i430, 0
  br i1 %.not.i.i.i431, label %.thread.i.i441, label %.lr.ph.i.i.i432

.lr.ph.i.i.i432:                                  ; preds = %bb.hp, %bb.hq
  %.01625.i.i.i433 = phi ptr [ %.016.val19.i.i.i434, %bb.hq ], [ %.val197, %bb.hp ] ; 2 uses
  %.016.val19.i.i.i434 = load ptr, ptr %.01625.i.i.i433, align 8, !tbaa !1843 ; 3 uses
  %i.zb = getelementptr i8, ptr %.016.val19.i.i.i434, i64 11
  %.016.val19.val.i.i.i435 = load i8, ptr %i.zb, align 1, !tbaa !813
  %.not22.i.i.i436 = icmp eq i8 %.016.val19.val.i.i.i435, 0
  br i1 %.not22.i.i.i436, label %bb.hq, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_119InsertMultiHintDataEJNS5_29InsertMultiHintDataKeyCompareESaIS6_ESt17integral_constantIiLi256EES9_IbLb1EEEEEEERKS6_PSE_EmmEv.exit454

bb.hq:                                            ; preds = %.lr.ph.i.i.i432
  %i.zc = getelementptr i8, ptr %.01625.i.i.i433, i64 8
  %.016.val20.i.i.i437 = load i8, ptr %i.zc, align 8, !tbaa !813 ; 2 uses
  %i.zd = icmp eq i8 %.016.val20.i.i.i437, 0
  br i1 %i.zd, label %.lr.ph.i.i.i432, label %.critedge.i.i.i438, !llvm.loop !502

.thread.i.i441:                                   ; preds = %bb.hp, %bb.hn
  %i.ze = phi i32 [ 255, %bb.hp ], [ %i.yy, %bb.hn ]
  %i.zf = getelementptr inbounds nuw i8, ptr %.val197, i64 256
  %i.zg = zext nneg i32 %i.ze to i64
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %i.zf, i64 %i.zg
  %.11727.i.i.i442 = load ptr, ptr %i.zh, align 8, !tbaa !1843 ; 3 uses
  %i.zi = getelementptr i8, ptr %.11727.i.i.i442, i64 11
  %.117.val2128.i.i.i443 = load i8, ptr %i.zi, align 1, !tbaa !813
  %.not.i29.i.i.i444 = icmp eq i8 %.117.val2128.i.i.i443, 0
  br i1 %.not.i29.i.i.i444, label %.lr.ph31.i.i.i448, label %._crit_edge.i.i.i445

.lr.ph31.i.i.i448:                                ; preds = %.thread.i.i441, %.lr.ph31.i.i.i448
  %.11730.i.i.i449 = phi ptr [ %.117.i.i.i451, %.lr.ph31.i.i.i448 ], [ %.11727.i.i.i442, %.thread.i.i441 ] ; 2 uses
  %i.zj = getelementptr i8, ptr %.11730.i.i.i449, i64 10
  %.117.val18.i.i.i450 = load i8, ptr %i.zj, align 1, !tbaa !813
  %i.zk = getelementptr inbounds nuw i8, ptr %.11730.i.i.i449, i64 256
  %i.zl = zext i8 %.117.val18.i.i.i450 to i64
  %i.zm = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %i.zl
  %.117.i.i.i451 = load ptr, ptr %i.zm, align 8, !tbaa !1843 ; 3 uses
  %i.zn = getelementptr i8, ptr %.117.i.i.i451, i64 11
  %.117.val21.i.i.i452 = load i8, ptr %i.zn, align 1, !tbaa !813
  %.not.i.i.i.i453 = icmp eq i8 %.117.val21.i.i.i452, 0
  br i1 %.not.i.i.i.i453, label %.lr.ph31.i.i.i448, label %._crit_edge.i.i.i445, !llvm.loop !503

._crit_edge.i.i.i445:                             ; preds = %.lr.ph31.i.i.i448, %.thread.i.i441
  %.117.lcssa.i.i.i446 = phi ptr [ %.11727.i.i.i442, %.thread.i.i441 ], [ %.117.i.i.i451, %.lr.ph31.i.i.i448 ] ; 2 uses
  %i.zo = getelementptr i8, ptr %.117.lcssa.i.i.i446, i64 10
  %.117.val.i.i.i447 = load i8, ptr %i.zo, align 1, !tbaa !813
  br label %.critedge.i.i.i438

.critedge.i.i.i438:                               ; preds = %bb.hq, %._crit_edge.i.i.i445
  %.016.val20.i.lcssa.sink.i.i439 = phi i8 [ %.117.val.i.i.i447, %._crit_edge.i.i.i445 ], [ %.016.val20.i.i.i437, %bb.hq ]
  %.2.i.i.i440 = phi ptr [ %.117.lcssa.i.i.i446, %._crit_edge.i.i.i445 ], [ %.016.val19.i.i.i434, %bb.hq ] ; 2 uses
  %i.zp = zext i8 %.016.val20.i.lcssa.sink.i.i439 to i32
  %i.zq = add nsw i32 %i.zp, -1                   ; 2 uses
  store ptr %.2.i.i.i440, ptr %72, align 8
  store i32 %i.zq, ptr %.sroa.221.0..sroa_idx, align 8
  br label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_119InsertMultiHintDataEJNS5_29InsertMultiHintDataKeyCompareESaIS6_ESt17integral_constantIiLi256EES9_IbLb1EEEEEEERKS6_PSE_EmmEv.exit454

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_119InsertMultiHintDataEJNS5_29InsertMultiHintDataKeyCompareESaIS6_ESt17integral_constantIiLi256EES9_IbLb1EEEEEEERKS6_PSE_EmmEv.exit454: ; preds = %.lr.ph.i.i.i432, %.critedge.i.i.i438, %bb.ho
  %i.zr = phi ptr [ %.val197, %bb.ho ], [ %.2.i.i.i440, %.critedge.i.i.i438 ], [ %.val197, %.lr.ph.i.i.i432 ] ; 3 uses
  %i.zs = phi i32 [ %i.za, %bb.ho ], [ %i.zq, %.critedge.i.i.i438 ], [ %i.za, %.lr.ph.i.i.i432 ] ; 3 uses
  %i.zt = getelementptr i8, ptr %i.zr, i64 11     ; 2 uses
  %.val.i.i455 = load i8, ptr %i.zt, align 1, !tbaa !813
  %.not.i.i456 = icmp eq i8 %.val.i.i455, 0
  br i1 %.not.i.i456, label %.thread.i.i468, label %bb.hr

bb.hr:                                            ; preds = %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_119InsertMultiHintDataEJNS5_29InsertMultiHintDataKeyCompareESaIS6_ESt17integral_constantIiLi256EES9_IbLb1EEEEEEERKS6_PSE_EmmEv.exit454
  %i.zu = add nsw i32 %i.zs, -1                   ; 2 uses
  store i32 %i.zu, ptr %.sroa.221.0..sroa_idx, align 8, !tbaa !1868
  %i.zv = icmp sgt i32 %i.zs, 0
  br i1 %i.zv, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_119InsertMultiHintDataEJNS5_29InsertMultiHintDataKeyCompareESaIS6_ESt17integral_constantIiLi256EES9_IbLb1EEEEEEERKS6_PSE_EmmEv.exit481, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %.val.i.pr.i.i457 = load i8, ptr %i.zt, align 1, !tbaa !813
  %.not.i.i.i458 = icmp eq i8 %.val.i.pr.i.i457, 0
  br i1 %.not.i.i.i458, label %.thread.i.i468, label %.lr.ph.i.i.i459

.lr.ph.i.i.i459:                                  ; preds = %bb.hs, %bb.ht
  %.01625.i.i.i460 = phi ptr [ %.016.val19.i.i.i461, %bb.ht ], [ %i.zr, %bb.hs ] ; 2 uses
  %.016.val19.i.i.i461 = load ptr, ptr %.01625.i.i.i460, align 8, !tbaa !1843 ; 3 uses
  %i.zw = getelementptr i8, ptr %.016.val19.i.i.i461, i64 11
  %.016.val19.val.i.i.i462 = load i8, ptr %i.zw, align 1, !tbaa !813
  %.not22.i.i.i463 = icmp eq i8 %.016.val19.val.i.i.i462, 0
  br i1 %.not22.i.i.i463, label %bb.ht, label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_119InsertMultiHintDataEJNS5_29InsertMultiHintDataKeyCompareESaIS6_ESt17integral_constantIiLi256EES9_IbLb1EEEEEEERKS6_PSE_EmmEv.exit481

bb.ht:                                            ; preds = %.lr.ph.i.i.i459
  %i.zx = getelementptr i8, ptr %.01625.i.i.i460, i64 8
  %.016.val20.i.i.i464 = load i8, ptr %i.zx, align 8, !tbaa !813 ; 2 uses
  %i.zy = icmp eq i8 %.016.val20.i.i.i464, 0
  br i1 %i.zy, label %.lr.ph.i.i.i459, label %.critedge.i.i.i465, !llvm.loop !502

.thread.i.i468:                                   ; preds = %bb.hs, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_119InsertMultiHintDataEJNS5_29InsertMultiHintDataKeyCompareESaIS6_ESt17integral_constantIiLi256EES9_IbLb1EEEEEEERKS6_PSE_EmmEv.exit454
  %i.zz = phi i32 [ %i.zu, %bb.hs ], [ %i.zs, %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_119InsertMultiHintDataEJNS5_29InsertMultiHintDataKeyCompareESaIS6_ESt17integral_constantIiLi256EES9_IbLb1EEEEEEERKS6_PSE_EmmEv.exit454 ]
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zr, i64 256
  %i.aab = and i32 %i.zz, 255
  %i.aac = zext nneg i32 %i.aab to i64
  %i.aad = getelementptr inbounds nuw [8 x i8], ptr %i.aaa, i64 %i.aac
  %.11727.i.i.i469 = load ptr, ptr %i.aad, align 8, !tbaa !1843 ; 3 uses
  %i.aae = getelementptr i8, ptr %.11727.i.i.i469, i64 11
  %.117.val2128.i.i.i470 = load i8, ptr %i.aae, align 1, !tbaa !813
  %.not.i29.i.i.i471 = icmp eq i8 %.117.val2128.i.i.i470, 0
  br i1 %.not.i29.i.i.i471, label %.lr.ph31.i.i.i475, label %._crit_edge.i.i.i472

.lr.ph31.i.i.i475:                                ; preds = %.thread.i.i468, %.lr.ph31.i.i.i475
  %.11730.i.i.i476 = phi ptr [ %.117.i.i.i478, %.lr.ph31.i.i.i475 ], [ %.11727.i.i.i469, %.thread.i.i468 ] ; 2 uses
  %i.aaf = getelementptr i8, ptr %.11730.i.i.i476, i64 10
  %.117.val18.i.i.i477 = load i8, ptr %i.aaf, align 1, !tbaa !813
  %i.aag = getelementptr inbounds nuw i8, ptr %.11730.i.i.i476, i64 256
  %i.aah = zext i8 %.117.val18.i.i.i477 to i64
  %i.aai = getelementptr inbounds nuw [8 x i8], ptr %i.aag, i64 %i.aah
  %.117.i.i.i478 = load ptr, ptr %i.aai, align 8, !tbaa !1843 ; 3 uses
  %i.aaj = getelementptr i8, ptr %.117.i.i.i478, i64 11
  %.117.val21.i.i.i479 = load i8, ptr %i.aaj, align 1, !tbaa !813
  %.not.i.i.i.i480 = icmp eq i8 %.117.val21.i.i.i479, 0
  br i1 %.not.i.i.i.i480, label %.lr.ph31.i.i.i475, label %._crit_edge.i.i.i472, !llvm.loop !503

._crit_edge.i.i.i472:                             ; preds = %.lr.ph31.i.i.i475, %.thread.i.i468
  %.117.lcssa.i.i.i473 = phi ptr [ %.11727.i.i.i469, %.thread.i.i468 ], [ %.117.i.i.i478, %.lr.ph31.i.i.i475 ] ; 2 uses
  %i.aak = getelementptr i8, ptr %.117.lcssa.i.i.i473, i64 10
  %.117.val.i.i.i474 = load i8, ptr %i.aak, align 1, !tbaa !813
  br label %.critedge.i.i.i465

.critedge.i.i.i465:                               ; preds = %bb.ht, %._crit_edge.i.i.i472
  %.016.val20.i.lcssa.sink.i.i466 = phi i8 [ %.117.val.i.i.i474, %._crit_edge.i.i.i472 ], [ %.016.val20.i.i.i464, %bb.ht ]
  %.2.i.i.i467 = phi ptr [ %.117.lcssa.i.i.i473, %._crit_edge.i.i.i472 ], [ %.016.val19.i.i.i461, %bb.ht ]
  %i.aal = zext i8 %.016.val20.i.lcssa.sink.i.i466 to i32
  %i.aam = add nsw i32 %i.aal, -1
  store ptr %.2.i.i.i467, ptr %72, align 8
  store i32 %i.aam, ptr %.sroa.221.0..sroa_idx, align 8
  br label %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_119InsertMultiHintDataEJNS5_29InsertMultiHintDataKeyCompareESaIS6_ESt17integral_constantIiLi256EES9_IbLb1EEEEEEERKS6_PSE_EmmEv.exit481

_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_119InsertMultiHintDataEJNS5_29InsertMultiHintDataKeyCompareESaIS6_ESt17integral_constantIiLi256EES9_IbLb1EEEEEEERKS6_PSE_EmmEv.exit481: ; preds = %.lr.ph.i.i.i459, %.critedge.i.i.i465, %bb.hr
  invoke fastcc void @_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal14btree_iteratorINS5_10btree_nodeINS5_15set_params_implINS5_12_GLOBAL__N_119InsertMultiHintDataEJNS9_29InsertMultiHintDataKeyCompareESaISA_ESt17integral_constantIiLi256EESD_IbLb1EEEEEEERKSA_PSI_EESL_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSV_RKSN_RKSO_(ptr dead_on_unwind noalias writable align 8 %71, ptr noundef nonnull @.str.730, ptr noundef nonnull align 8 dereferenceable(12) %67, ptr noundef nonnull align 8 dereferenceable(12) %72)
          to label %bb.hu unwind label %bb.hv

bb.hu:                                            ; preds = %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_119InsertMultiHintDataEJNS5_29InsertMultiHintDataKeyCompareESaIS6_ESt17integral_constantIiLi256EES9_IbLb1EEEEEEERKS6_PSE_EmmEv.exit481
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #37
  %i.aan = load i8, ptr %71, align 8, !tbaa !842, !range !843, !noundef !844
  %i.aao = trunc nuw i8 %i.aan to i1
  br i1 %i.aao, label %bb.if, label %bb.hw

.body410:                                         ; preds = %.body.i, %.body.i.i.i.i.i.i, %_ZN7testing7MessageD2Ev.exit419
  %.pn161.pn.pn = phi { ptr, i32 } [ %.pn161.pn, %_ZN7testing7MessageD2Ev.exit419 ], [ %.pn21.i, %.body.i ], [ %.pn.i.i.i.i.i.i, %.body.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #37
  br label %bb.my

bb.hv:                                            ; preds = %_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15set_params_implINS1_12_GLOBAL__N_119InsertMultiHintDataEJNS5_29InsertMultiHintDataKeyCompareESaIS6_ESt17integral_constantIiLi256EES9_IbLb1EEEEEEERKS6_PSE_EmmEv.exit481
  %i.aap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #37
  br label %bb.is

bb.hw:                                            ; preds = %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %73)
          to label %bb.hx unwind label %bb.ib

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #37
  %i.aaq = getelementptr inbounds nuw i8, ptr %71, i64 8
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !845 ; 2 uses
  %.not.i.i482 = icmp eq ptr %i.aar, null
  br i1 %.not.i.i482, label %_ZNK7testing15AssertionResult15failure_messageEv.exit483, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.aas = load ptr, ptr %i.aar, align 8, !tbaa !810
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit483

_ZNK7testing15AssertionResult15failure_messageEv.exit483: ; preds = %bb.hy, %bb.hx
  %i.aat = phi ptr [ %i.aas, %bb.hy ], [ @.str.192, %bb.hx ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %74, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 2132, ptr noundef %i.aat)
          to label %bb.hz unwind label %bb.ic

bb.hz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit483
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef nonnull align 8 dereferenceable(8) %73)
          to label %bb.ia unwind label %bb.id

bb.ia:                                            ; preds = %bb.hz
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %74) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #37
  %i.aau = load ptr, ptr %73, align 8, !tbaa !827 ; 3 uses
  %.not.i.i484 = icmp eq ptr %i.aau, null
  br i1 %.not.i.i484, label %_ZN7testing7MessageD2Ev.exit486, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i485

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i485: ; preds = %bb.ia
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !816
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 8
  %i.aax = load ptr, ptr %i.aaw, align 8
  call void %i.aax(ptr noundef nonnull align 8 dereferenceable(128) %i.aau) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit486

_ZN7testing7MessageD2Ev.exit486:                  ; preds = %bb.ia, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i485
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #37
  br label %bb.if

bb.ib:                                            ; preds = %bb.hw
  %i.aay = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit489

bb.ic:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit483
  %i.aaz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ie

bb.id:                                            ; preds = %bb.hz
  %i.aba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %74) #37
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %.pn165 = phi { ptr, i32 } [ %i.aba, %bb.id ], [ %i.aaz, %bb.ic ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #37
  %i.abb = load ptr, ptr %73, align 8, !tbaa !827 ; 3 uses
  %.not.i.i487 = icmp eq ptr %i.abb, null
  br i1 %.not.i.i487, label %_ZN7testing7MessageD2Ev.exit489, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i488

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i488: ; preds = %bb.ie
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !816
  %i.abd = getelementptr inbounds nuw i8, ptr %i.abc, i64 8
  %i.abe = load ptr, ptr %i.abd, align 8
  call void %i.abe(ptr noundef nonnull align 8 dereferenceable(128) %i.abb) #37, !inline_history !4
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_134Btree_TryEmplaceWithHintWorks_Test8TestBodyEv:bb.a
  %i.gt = add nsw i32 %i.gs, 1
  store i32 %i.gt, ptr %.val3.i.i.i.i.i, align 4, !tbaa !802, !noalias !15240
  %i.gu = icmp slt i32 %.val21.i.i.i.i, %.val22.i.i.i.i
  br i1 %i.gu, label %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSH_EEEET_SL_.exit.thread.i.i.i.i", label %bb.cc

"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSH_EEEET_SL_.exit.thread.i.i.i.i": ; preds = %bb.ca, %bb.cb
  %i.gv = invoke fastcc { ptr, i32 } @"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE16internal_emplaceIJRKSt21piecewise_construct_tSt5tupleIJRKiEESF_IJRiEEEEENS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairISG_iEPSP_EESS_DpOT_"(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr %.sroa.0.0.i.i.i.i.i, i32 %i.gi, ptr noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noundef nonnull readonly align 8 dereferenceable(8) %2)
          to label %.noexc299 unwind label %bb.ee ; 2 uses

.noexc299:                                        ; preds = %"_ZN4absl12lts_2026052618container_internal5btreeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS4_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEE13internal_lastINS1_14btree_iteratorINS1_10btree_nodeIS9_EERSt4pairIKiiEPSH_EEEET_SL_.exit.thread.i.i.i.i"
  %.fca.0.extract.i.i.i.i = extractvalue { ptr, i32 } %i.gv, 0
  %.fca.1.extract.i.i.i.i = extractvalue { ptr, i32 } %i.gv, 1
  br label %bb.cc

bb.cc:                                            ; preds = %.noexc296, %bb.cb, %.noexc299
  %.sroa.0.0.i25.lcssa.sink.i.sink.i.i.i = phi ptr [ %.sroa.0.0.i25.i.i.i.i, %bb.cb ], [ %.fca.0.extract11.i.i.i, %.noexc296 ], [ %.fca.0.extract.i.i.i.i, %.noexc299 ]
  %.sroa.7.0.i.lcssa.sink.i.sink.i.i.i = phi i32 [ %.sroa.7.0.i.i.i.i.i, %bb.cb ], [ %.fca.1.extract12.i.i.i, %.noexc296 ], [ %.fca.1.extract.i.i.i.i, %.noexc299 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #37
  store ptr %.sroa.0.0.i25.lcssa.sink.i.sink.i.i.i, ptr %11, align 8
  store i32 %.sroa.7.0.i.lcssa.sink.i.sink.i.i.i, ptr %.sroa.271.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #37
  store i32 130, ptr %i.h, align 4, !tbaa !802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #37
  %.val225 = load i64, ptr %i.ae, align 8, !tbaa !2050 ; 2 uses
  store i64 %.val225, ptr %i.i, align 8, !tbaa !804
  %i.gw = icmp eq i64 %.val225, 130
  br i1 %i.gw, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %23)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit302 unwind label %bb.cg

bb.ce:                                            ; preds = %bb.cc
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIimEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %23, ptr noundef nonnull @.str.763, ptr noundef nonnull @.str.690, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit302 unwind label %bb.cg

_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit302: ; preds = %bb.cd, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #37
  %i.gx = load i8, ptr %23, align 8, !tbaa !842, !range !843, !noundef !844
  %i.gy = trunc nuw i8 %i.gx to i1
  br i1 %i.gy, label %bb.cq, label %bb.ch

bb.cf:                                            ; preds = %_ZN7testing7MessageD2Ev.exit286, %bb.bf
  %.pn149.pn.pn = phi { ptr, i32 } [ %.pn149.pn, %_ZN7testing7MessageD2Ev.exit286 ], [ %i.dq, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #37
  br label %bb.mh

bb.cg:                                            ; preds = %bb.ce, %bb.cd
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #37
  br label %bb.cx

bb.ch:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit302
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.ci unwind label %bb.cm

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #37
  %i.ha = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !845 ; 2 uses
  %.not.i.i303 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i303, label %_ZNK7testing15AssertionResult15failure_messageEv.exit304, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !810
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit304

_ZNK7testing15AssertionResult15failure_messageEv.exit304: ; preds = %bb.cj, %bb.ci
  %i.hd = phi ptr [ %i.hc, %bb.cj ], [ @.str.192, %bb.ci ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 2321, ptr noundef %i.hd)
          to label %bb.ck unwind label %bb.cn

bb.ck:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit304
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.cl unwind label %bb.co

bb.cl:                                            ; preds = %bb.ck
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37
  %i.he = load ptr, ptr %24, align 8, !tbaa !827  ; 3 uses
  %.not.i.i305 = icmp eq ptr %i.he, null
  br i1 %.not.i.i305, label %_ZN7testing7MessageD2Ev.exit307, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i306

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i306: ; preds = %bb.cl
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !816
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(128) %i.he) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit307

_ZN7testing7MessageD2Ev.exit307:                  ; preds = %bb.cl, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i306
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #37
  br label %bb.cq

bb.cm:                                            ; preds = %bb.ch
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit310

bb.cn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit304
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.co:                                            ; preds = %bb.ck
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #37
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.pn153 = phi { ptr, i32 } [ %i.hk, %bb.co ], [ %i.hj, %bb.cn ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #37
  %i.hl = load ptr, ptr %24, align 8, !tbaa !827  ; 3 uses
  %.not.i.i308 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i308, label %_ZN7testing7MessageD2Ev.exit310, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i309

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i309: ; preds = %bb.cp
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !816
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.ho(ptr noundef nonnull align 8 dereferenceable(128) %i.hl) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit310

_ZN7testing7MessageD2Ev.exit310:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i309, %bb.cp, %bb.cm
  %.pn153.pn = phi { ptr, i32 } [ %i.hi, %bb.cm ], [ %.pn153, %bb.cp ], [ %.pn153, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i309 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %23) #37
  br label %bb.cx

bb.cq:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIimTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit302, %_ZN7testing7MessageD2Ev.exit307
  %i.hp = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !845 ; 4 uses
  %.not.i.i311 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i311, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !810 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 16 ; 2 uses
  %i.ht = icmp eq ptr %i.hr, %i.hs
  br i1 %i.ht, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i313, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i312

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i312: ; preds = %bb.cr
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !813
  %i.hv = add i64 %i.hu, 1
  call void @_ZdlPvm(ptr noundef %i.hr, i64 noundef %i.hv) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i313

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i313: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i312
  call void @_ZdlPvm(ptr noundef nonnull %i.hq, i64 noundef 32) #36
  br label %bb.cs

bb.cs:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i313, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #37
  %.val229 = load ptr, ptr %i.ad, align 8, !tbaa !2051 ; 6 uses
  %i.hw = getelementptr i8, ptr %.val229, i64 10  ; 2 uses
  %.val.i.i316 = load i8, ptr %i.hw, align 1, !tbaa !813 ; 2 uses
  %i.hx = zext i8 %.val.i.i316 to i32             ; 3 uses
  store ptr %.val229, ptr %27, align 8
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  store i32 %i.hx, ptr %.sroa.250.0..sroa_idx, align 8
  %i.hy = getelementptr i8, ptr %.val229, i64 11  ; 2 uses
  %.val.i.i319 = load i8, ptr %i.hy, align 1, !tbaa !813
  %.not.i.i320 = icmp eq i8 %.val.i.i319, 0
  br i1 %.not.i.i320, label %.thread.i.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.hz = add nsw i32 %i.hx, -1
  store i32 %i.hz, ptr %.sroa.250.0..sroa_idx, align 8, !tbaa !2054
  %.not650 = icmp eq i8 %.val.i.i316, 0
  br i1 %.not650, label %bb.cu, label %"_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_EmmEv.exit"

bb.cu:                                            ; preds = %bb.ct
  %.val.i.pr.i.i = load i8, ptr %i.hy, align 1, !tbaa !813
  %.not.i.i.i = icmp eq i8 %.val.i.pr.i.i, 0
  br i1 %.not.i.i.i, label %.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.cu, %bb.cv
  %.01625.i.i.i = phi ptr [ %.016.val21.i.i.i, %bb.cv ], [ %.val229, %bb.cu ] ; 2 uses
  %.016.val21.i.i.i = load ptr, ptr %.01625.i.i.i, align 8, !tbaa !2051 ; 3 uses
  %i.ia = getelementptr i8, ptr %.016.val21.i.i.i, i64 11
  %.016.val21.val.i.i.i = load i8, ptr %i.ia, align 1, !tbaa !813
  %.not22.i.i.i = icmp eq i8 %.016.val21.val.i.i.i, 0
  br i1 %.not22.i.i.i, label %bb.cv, label %"_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_EmmEv.exit"

bb.cv:                                            ; preds = %.lr.ph.i.i.i
  %i.ib = getelementptr i8, ptr %.01625.i.i.i, i64 8
  %.016.val.i.i.i = load i8, ptr %i.ib, align 8, !tbaa !813 ; 2 uses
  %i.ic = icmp eq i8 %.016.val.i.i.i, 0
  br i1 %i.ic, label %.lr.ph.i.i.i, label %.critedge.i.i.i321, !llvm.loop !547

.thread.i.i:                                      ; preds = %bb.cu, %bb.cs
  %i.id = phi i32 [ 255, %bb.cu ], [ %i.hx, %bb.cs ]
  %i.ie = getelementptr inbounds nuw i8, ptr %.val229, i64 256
  %i.if = zext nneg i32 %i.id to i64
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %i.if
  %.11727.i.i.i = load ptr, ptr %i.ig, align 8, !tbaa !2051 ; 3 uses
  %i.ih = getelementptr i8, ptr %.11727.i.i.i, i64 11
  %.117.val2028.i.i.i = load i8, ptr %i.ih, align 1, !tbaa !813
  %.not.i29.i.i.i = icmp eq i8 %.117.val2028.i.i.i, 0
  br i1 %.not.i29.i.i.i, label %.lr.ph31.i.i.i, label %._crit_edge.i.i.i

.lr.ph31.i.i.i:                                   ; preds = %.thread.i.i, %.lr.ph31.i.i.i
  %.11730.i.i.i = phi ptr [ %.117.i.i.i, %.lr.ph31.i.i.i ], [ %.11727.i.i.i, %.thread.i.i ] ; 2 uses
  %i.ii = getelementptr i8, ptr %.11730.i.i.i, i64 10
  %.117.val18.i.i.i = load i8, ptr %i.ii, align 1, !tbaa !813
  %i.ij = getelementptr inbounds nuw i8, ptr %.11730.i.i.i, i64 256
  %i.ik = zext i8 %.117.val18.i.i.i to i64
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %i.ik
  %.117.i.i.i = load ptr, ptr %i.il, align 8, !tbaa !2051 ; 3 uses
  %i.im = getelementptr i8, ptr %.117.i.i.i, i64 11
  %.117.val20.i.i.i = load i8, ptr %i.im, align 1, !tbaa !813
  %.not.i.i.i.i = icmp eq i8 %.117.val20.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph31.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !548

._crit_edge.i.i.i:                                ; preds = %.lr.ph31.i.i.i, %.thread.i.i
  %.117.lcssa.i.i.i = phi ptr [ %.11727.i.i.i, %.thread.i.i ], [ %.117.i.i.i, %.lr.ph31.i.i.i ] ; 2 uses
  %i.in = getelementptr i8, ptr %.117.lcssa.i.i.i, i64 10
  %.117.val.i.i.i = load i8, ptr %i.in, align 1, !tbaa !813
  br label %.critedge.i.i.i321

.critedge.i.i.i321:                               ; preds = %bb.cv, %._crit_edge.i.i.i
  %.016.val.i.lcssa.sink.i.i = phi i8 [ %.117.val.i.i.i, %._crit_edge.i.i.i ], [ %.016.val.i.i.i, %bb.cv ]
  %.2.i.i.i = phi ptr [ %.117.lcssa.i.i.i, %._crit_edge.i.i.i ], [ %.016.val21.i.i.i, %bb.cv ]
  %i.io = zext i8 %.016.val.i.lcssa.sink.i.i to i32
  %i.ip = add nsw i32 %i.io, -1
  store ptr %.2.i.i.i, ptr %27, align 8
  store i32 %i.ip, ptr %.sroa.250.0..sroa_idx, align 8
  br label %"_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_EmmEv.exit"

"_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_EmmEv.exit": ; preds = %.lr.ph.i.i.i, %.critedge.i.i.i321, %bb.ct
  invoke fastcc void @"_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052618container_internal14btree_iteratorINS5_10btree_nodeINS5_15map_params_implIiiJNS5_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS9_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSI_EESL_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSV_RKSN_RKSO_"(ptr dead_on_unwind noalias writable align 8 %26, ptr noundef nonnull @.str.764, ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %27)
          to label %bb.cw unwind label %bb.cy

bb.cw:                                            ; preds = %"_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_EmmEv.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #37
  %i.iq = load i8, ptr %26, align 8, !tbaa !842, !range !843, !noundef !844
  %i.ir = trunc nuw i8 %i.iq to i1
  br i1 %i.ir, label %bb.di, label %bb.cz

bb.cx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit310, %bb.cg
  %.pn153.pn.pn = phi { ptr, i32 } [ %.pn153.pn, %_ZN7testing7MessageD2Ev.exit310 ], [ %i.gz, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #37
  br label %bb.mg

bb.cy:                                            ; preds = %"_ZN4absl12lts_2026052618container_internal14btree_iteratorINS1_10btree_nodeINS1_15map_params_implIiiJNS1_12_GLOBAL__N_125CheckedCompareOptedOutCmpIZNS5_34Btree_TryEmplaceWithHintWorks_Test8TestBodyEvE3$_0EEEEEEERSt4pairIKiiEPSE_EmmEv.exit"
  %i.is = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #37
  br label %bb.dm

bb.cz:                                            ; preds = %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.da unwind label %bb.de

bb.da:                                            ; preds = %bb.cz
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #37
  %i.it = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !845 ; 2 uses
  %.not.i.i322 = icmp eq ptr %i.iu, null
  br i1 %.not.i.i322, label %_ZNK7testing15AssertionResult15failure_messageEv.exit323, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !810
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit323

_ZNK7testing15AssertionResult15failure_messageEv.exit323: ; preds = %bb.db, %bb.da
  %i.iw = phi ptr [ %i.iv, %bb.db ], [ @.str.192, %bb.da ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %29, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 2322, ptr noundef %i.iw)
          to label %bb.dc unwind label %bb.df

bb.dc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit323
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.dd unwind label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  %i.ix = load ptr, ptr %28, align 8, !tbaa !827  ; 3 uses
  %.not.i.i324 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i324, label %_ZN7testing7MessageD2Ev.exit326, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i325

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i325: ; preds = %bb.dd
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !816
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(128) %i.ix) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit326

_ZN7testing7MessageD2Ev.exit326:                  ; preds = %bb.dd, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i325
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  br label %bb.di

bb.de:                                            ; preds = %bb.cz
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit329

bb.df:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit323
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dg:                                            ; preds = %bb.dc
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #37
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.pn157 = phi { ptr, i32 } [ %i.jd, %bb.dg ], [ %i.jc, %bb.df ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  %i.je = load ptr, ptr %28, align 8, !tbaa !827  ; 3 uses
  %.not.i.i327 = icmp eq ptr %i.je, null
  br i1 %.not.i.i327, label %_ZN7testing7MessageD2Ev.exit329, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i328

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i328: ; preds = %bb.dh
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !816
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8
  call void %i.jh(ptr noundef nonnull align 8 dereferenceable(128) %i.je) #37, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit329

_ZN7testing7MessageD2Ev.exit329:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i328, %bb.dh, %bb.de
  %.pn157.pn = phi { ptr, i32 } [ %i.jb, %bb.de ], [ %.pn157, %bb.dh ], [ %.pn157, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i328 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #37
  br label %bb.dm

bb.di:                                            ; preds = %bb.cw, %_ZN7testing7MessageD2Ev.exit326
  %i.ji = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !845 ; 4 uses
  %.not.i.i330 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i330, label %_ZN7testing15AssertionResultD2Ev.exit334, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !810 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 2 uses
  %i.jm = icmp eq ptr %i.jk, %i.jl
  br i1 %i.jm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i332, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i331: ; preds = %bb.dj
  %i.jn = load i64, ptr %i.jl, align 8, !tbaa !813
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jo) #36
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i332

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i332: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i331
  call void @_ZdlPvm(ptr noundef nonnull %i.jj, i64 noundef 32) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit334

_ZN7testing15AssertionResultD2Ev.exit334:         ; preds = %bb.di, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i332
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #37
  store i32 2, ptr %i.j, align 4, !tbaa !802
  %i.jp = load i32, ptr %i.a, align 4, !tbaa !802, !noalias !15241
  %.not.i335 = icmp sgt i32 %i.jp, 2
  br i1 %.not.i335, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit334
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %30)
          to label %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit338 unwind label %bb.dn

bb.dl:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit334
  invoke void @_ZN7testing8internal18CmpHelperOpFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_S4_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %30, ptr noundef nonnull @.str.760, ptr noundef nonnull @.str.429, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull @.str.646)
          to label %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit338 unwind label %bb.dn

_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit338: ; preds = %bb.dk, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #37
  %i.jq = load i8, ptr %30, align 8, !tbaa !842, !range !843, !noundef !844
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %bb.dx, label %bb.do

bb.dm:                                            ; preds = %_ZN7testing7MessageD2Ev.exit329, %bb.cy
  %.pn157.pn.pn = phi { ptr, i32 } [ %.pn157.pn, %_ZN7testing7MessageD2Ev.exit329 ], [ %i.is, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #37
  br label %bb.mg

bb.dn:                                            ; preds = %bb.dl, %bb.dk
  %i.js = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #37
  br label %bb.ed

bb.do:                                            ; preds = %_ZN7testing8internal11CmpHelperLEIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_.exit338
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #37
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.dp unwind label %bb.dt

bb.dp:                                            ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #37
  %i.jt = getelementptr inbounds nuw i8, ptr %30, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !845 ; 2 uses
end_hunk_1
