Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3PreProc?download=true
inline.NumInlined: 6861
inline.NumDeleted: 1064
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN12V3PreProcImp11defineSubstB5cxx11EP10VDefineRef:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit569, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i570
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #44
  br i1 %cond1, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit579, label %.critedge321

.body:                                            ; preds = %bb.bz, %bb.dl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit564, %.body487, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483, %bb.cz, %bb.cn
  %.pn278 = phi { ptr, i32 } [ %i.oo, %bb.cn ], [ %.pn276, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit483 ], [ %.pn273.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit564 ], [ %.pn266.pn.pn.pn.pn.pn, %.body487 ], [ %.pn262.pn.pn, %bb.cz ], [ %i.mk, %bb.bz ], [ %i.qv, %bb.dl ]
  %i.xz = load ptr, ptr %27, align 8, !tbaa !90   ; 2 uses
  %i.ya = icmp eq ptr %i.xz, %i.lc
  br i1 %i.ya, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573: ; preds = %.body
  %i.yb = load i64, ptr %i.lc, align 8, !tbaa !45
  %i.yc = add i64 %i.yb, 1
  call void @_ZdlPvm(ptr noundef %i.xz, i64 noundef %i.yc) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit575: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i573
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #44
  br label %.body597

bb.es:                                            ; preds = %bb.by
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %25)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit577 unwind label %.loopexit893

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit577: ; preds = %bb.es
  %i.yd = load i64, ptr %i.kj, align 8, !tbaa !141
  %i.ye = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %25, i64 noundef 0, i64 noundef %i.yd, ptr noundef nonnull @.str.2, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit579 unwind label %.loopexit893 ; 0 uses

.loopexit893:                                     ; preds = %bb.es, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit577, %bb.ew, %bb.ey, %bb.fe
  %lpad.loopexit895 = landingpad { ptr, i32 }
          cleanup
  br label %.body597

.loopexit.split-lp894:                            ; preds = %.thread.thread
  %lpad.loopexit.split-lp896 = landingpad { ptr, i32 }
          cleanup
  br label %.body597

bb.et:                                            ; preds = %bb.bx
  %i.yf = icmp eq i8 %i.mh, 92
  br i1 %i.yf, label %bb.eu, label %bb.ez

bb.eu:                                            ; preds = %bb.by, %bb.et
  %i.yg = getelementptr inbounds nuw i8, ptr %.11371129, i64 1 ; 3 uses
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !45
  %.not255 = icmp eq i8 %i.yh, 0
  br i1 %.not255, label %bb.ez, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.yi = load i64, ptr %i.kj, align 8, !tbaa !141 ; 4 uses
  %i.yj = add i64 %i.yi, 1                        ; 3 uses
  %i.yk = load ptr, ptr %25, align 8, !tbaa !90   ; 2 uses
  %i.yl = icmp eq ptr %i.yk, %i.ki
  br i1 %i.yl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.ev
  %i.ym = icmp ult i64 %i.yi, 16
  call void @llvm.assume(i1 %i.ym)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ev
  %i.yn = load i64, ptr %i.ki, align 8, !tbaa !45
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.yo = phi i64 [ %i.yn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.yp = icmp ugt i64 %i.yj, %i.yo
  br i1 %i.yp, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %25, i64 noundef %i.yi, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc580 unwind label %.loopexit893

.noexc580:                                        ; preds = %bb.ew
  %.pre.i.i = load ptr, ptr %25, align 8, !tbaa !90
  br label %bb.ex

bb.ex:                                            ; preds = %.noexc580, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.yq = phi ptr [ %.pre.i.i, %.noexc580 ], [ %i.yk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 %i.yi
  store i8 %i.mh, ptr %i.yr, align 1, !tbaa !45
  store i64 %i.yj, ptr %i.kj, align 8, !tbaa !141
  %i.ys = load ptr, ptr %25, align 8, !tbaa !90
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 %i.yj
  store i8 0, ptr %i.yt, align 1, !tbaa !45
  %i.yu = load i8, ptr %i.yg, align 1, !tbaa !45
  %i.yv = load i64, ptr %i.kj, align 8, !tbaa !141 ; 4 uses
  %i.yw = add i64 %i.yv, 1                        ; 2 uses
  %i.yx = load ptr, ptr %25, align 8, !tbaa !90   ; 2 uses
  %i.yy = icmp eq ptr %i.yx, %i.ki
  br i1 %i.yy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i584, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i581

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i584: ; preds = %bb.ex
  %i.yz = icmp ult i64 %i.yv, 16
  call void @llvm.assume(i1 %i.yz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i582

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i581: ; preds = %bb.ex
  %i.za = load i64, ptr %i.ki, align 8, !tbaa !45
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i582

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i582: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i581, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i584
  %i.zb = phi i64 [ %i.za, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i581 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i584 ]
  %i.zc = icmp ugt i64 %i.yw, %i.zb
  br i1 %i.zc, label %bb.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit586

bb.ey:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i582
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %25, i64 noundef %i.yv, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc585 unwind label %.loopexit893

.noexc585:                                        ; preds = %bb.ey
  %.pre.i.i583 = load ptr, ptr %25, align 8, !tbaa !90
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit586

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit586: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i582, %.noexc585
  %i.zd = phi ptr [ %.pre.i.i583, %.noexc585 ], [ %i.yx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i582 ]
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 %i.yv
  store i8 %i.yu, ptr %i.ze, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit579.sink.split

bb.ez:                                            ; preds = %bb.by, %bb.eu, %bb.et
  br i1 %.01421127, label %bb.fd, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  switch i8 %i.mh, label %bb.fd [
    i8 40, label %bb.fb
    i8 123, label %bb.fb
    i8 91, label %bb.fb
    i8 41, label %bb.fc
    i8 125, label %bb.fc
    i8 93, label %bb.fc
  ]

bb.fb:                                            ; preds = %bb.fa, %bb.fa, %bb.fa
  %i.zf = add nsw i32 %.01451126, 1
  br label %bb.fd

bb.fc:                                            ; preds = %bb.fa, %bb.fa, %bb.fa
  %i.zg = add nsw i32 %.01451126, -1
  br label %bb.fd

bb.fd:                                            ; preds = %bb.ez, %bb.fc, %bb.fb, %bb.fa
  %.1146 = phi i32 [ %.01451126, %bb.ez ], [ %i.zf, %bb.fb ], [ %i.zg, %bb.fc ], [ %.01451126, %bb.fa ]
  %i.zh = icmp eq i8 %i.mh, 34
  %.1143 = xor i1 %.01421127, %i.zh
  %i.zi = load i64, ptr %i.kj, align 8, !tbaa !141 ; 4 uses
  %i.zj = add i64 %i.zi, 1                        ; 2 uses
  %i.zk = load ptr, ptr %25, align 8, !tbaa !90   ; 2 uses
  %i.zl = icmp eq ptr %i.zk, %i.ki
  br i1 %i.zl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i590, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i587

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i590: ; preds = %bb.fd
  %i.zm = icmp ult i64 %i.zi, 16
  call void @llvm.assume(i1 %i.zm)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i588

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i587: ; preds = %bb.fd
  %i.zn = load i64, ptr %i.ki, align 8, !tbaa !45
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i588

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i588: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i587, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i590
  %i.zo = phi i64 [ %i.zn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i587 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i590 ]
  %i.zp = icmp ugt i64 %i.zj, %i.zo
  br i1 %i.zp, label %bb.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit592

bb.fe:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i588
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %25, i64 noundef %i.zi, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc591 unwind label %.loopexit893

.noexc591:                                        ; preds = %bb.fe
  %.pre.i.i589 = load ptr, ptr %25, align 8, !tbaa !90
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit592

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit592: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i588, %.noexc591
  %i.zq = phi ptr [ %.pre.i.i589, %.noexc591 ], [ %i.zk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i588 ]
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 %i.zi
  store i8 %i.mh, ptr %i.zr, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit579.sink.split

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit579.sink.split: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit586, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit592
  %.sink = phi i64 [ %i.zj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit592 ], [ %i.yw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit586 ] ; 2 uses
  %.2147.ph = phi i32 [ %.1146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit592 ], [ %.01451126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit586 ]
  %.2144.ph = phi i1 [ %.1143, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit592 ], [ %.01421127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit586 ]
  %.2138.ph = phi ptr [ %.11371129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit592 ], [ %i.yg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc.exit586 ]
  store i64 %.sink, ptr %i.kj, align 8, !tbaa !141
  %i.zs = load ptr, ptr %25, align 8, !tbaa !90
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 %.sink
  store i8 0, ptr %i.zt, align 1, !tbaa !45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit579

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit579: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit579.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit577, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572
  %.3 = phi i32 [ %.2150, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572 ], [ %.01481125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit577 ], [ %.01481125, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit579.sink.split ] ; 2 uses
  %.2147 = phi i32 [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572 ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit577 ], [ %.2147.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit579.sink.split ]
  %.2144 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit577 ], [ %.2144.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit579.sink.split ]
  %.2141 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572 ], [ true, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit577 ], [ %.01391128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit579.sink.split ]
  %.2138 = phi ptr [ %.11371129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit572 ], [ %.11371129, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit577 ], [ %.2138.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit579.sink.split ]
  %i.zu = getelementptr inbounds nuw i8, ptr %.2138, i64 1 ; 2 uses
  %i.zv = load i8, ptr %i.zu, align 1, !tbaa !45  ; 2 uses
  %.not245 = icmp eq i8 %i.zv, 0
  br i1 %.not245, label %._crit_edge1132, label %bb.bx, !llvm.loop !1217

._crit_edge1132:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit579, %bb.bv
  %.0148.lcssa = phi i32 [ 0, %bb.bv ], [ %.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit579 ] ; 2 uses
  %i.zw = load ptr, ptr %i.cz, align 8, !tbaa !309
  %i.zx = load ptr, ptr %i.cy, align 8, !tbaa !310 ; 2 uses
  %i.zy = ptrtoint ptr %i.zw to i64
  %i.zz = ptrtoint ptr %i.zx to i64
  %i.aaa = sub i64 %i.zy, %i.zz                   ; 2 uses
  %i.aab = ashr exact i64 %i.aaa, 5
  %57 = zext i32 %.0148.lcssa to i64
  %i.aac = icmp ugt i64 %i.aab, %57
  br i1 %i.aac, label %bb.ff, label %.thread

bb.ff:                                            ; preds = %._crit_edge1132
  %i.aad = icmp eq i64 %i.aaa, 32
  %58 = icmp eq i32 %.0148.lcssa, 0
  %or.cond4 = and i1 %i.aad, %58
  br i1 %or.cond4, label %bb.fg, label %.thread.thread

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #44
  invoke void @_ZN12V3PreProcImp14trimWhitespaceERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %42, ptr noundef nonnull align 8 dereferenceable(32) %i.zx, i1 noundef zeroext false)
          to label %bb.fh unwind label %bb.gc

bb.fh:                                            ; preds = %bb.fg
  %i.aae = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.aaf = load i64, ptr %i.aae, align 8, !tbaa !141 ; 2 uses
  %.not1142 = icmp eq i64 %i.aaf, 0
  %i.aag = load ptr, ptr %42, align 8, !tbaa !90  ; 2 uses
  %i.aah = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.aai = icmp eq ptr %i.aag, %i.aah
  br i1 %i.aai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i594, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i593

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i594: ; preds = %bb.fh
  %i.aaj = icmp ult i64 %i.aaf, 16
  call void @llvm.assume(i1 %i.aaj)
  br label %.critedge319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i593: ; preds = %bb.fh
  %i.aak = load i64, ptr %i.aah, align 8, !tbaa !45
  %i.aal = add i64 %i.aak, 1
  call void @_ZdlPvm(ptr noundef %i.aag, i64 noundef %i.aal) #45
  br label %.critedge319

.critedge319:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i593, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i594
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #44
  br i1 %.not1142, label %.thread, label %.thread.thread

.thread.thread:                                   ; preds = %bb.ff, %.critedge319
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.aan = load ptr, ptr %i.aam, align 8, !tbaa !278
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aan, i64 104
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !177
  %i.aaq = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5)
          to label %bb.fi unwind label %.loopexit.split-lp894 ; 0 uses

bb.fi:                                            ; preds = %.thread.thread
  %i.aar = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.aas = icmp eq i8 %i.aar, 0
  br i1 %i.aas, label %bb.fj, label %bb.fn, !prof !139

bb.fj:                                            ; preds = %bb.fi
  %i.aat = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #44
  %.not.i.i596 = icmp eq i32 %i.aat, 0
  br i1 %.not.i.i596, label %bb.fn, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.fl unwind label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.aau = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #44 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #44
  br label %bb.fn

bb.fm:                                            ; preds = %bb.fk
  %i.aav = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #44
  br label %.body597

bb.fn:                                            ; preds = %bb.fl, %bb.fj, %bb.fi
  %i.aaw = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.235, ptr nonnull @.str.236, i32 481, ptr null)
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #44
  call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  %i.aax = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 7 uses
  store ptr %i.aax, ptr %44, align 8, !tbaa !140, !alias.scope !1241
  %i.aay = load ptr, ptr %2, align 8, !tbaa !90, !noalias !1241 ; 2 uses
  %i.aaz = load i64, ptr %i.dl, align 8, !tbaa !141, !noalias !1241 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #44, !noalias !1241
  store i64 %i.aaz, ptr %i.c, align 8, !tbaa !35, !noalias !1241
  %i.aba = icmp ugt i64 %i.aaz, 15
  br i1 %i.aba, label %.noexc.i.i601, label %._crit_edge.i.i.i600

.noexc.i.i601:                                    ; preds = %bb.fn
  %i.abb = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc602 unwind label %bb.gd ; 2 uses

.noexc602:                                        ; preds = %.noexc.i.i601
  store ptr %i.abb, ptr %44, align 8, !tbaa !90, !alias.scope !1241
  %i.abc = load i64, ptr %i.c, align 8, !tbaa !35, !noalias !1241
  store i64 %i.abc, ptr %i.aax, align 8, !tbaa !45, !alias.scope !1241
  br label %._crit_edge.i.i.i600

._crit_edge.i.i.i600:                             ; preds = %.noexc602, %bb.fn
  %i.abd = phi ptr [ %i.abb, %.noexc602 ], [ %i.aax, %bb.fn ] ; 2 uses
  switch i64 %i.aaz, label %bb.fp [
    i64 1, label %bb.fo
    i64 0, label %bb.fq
  ]

bb.fo:                                            ; preds = %._crit_edge.i.i.i600
  %i.abe = load i8, ptr %i.aay, align 1, !tbaa !45
  store i8 %i.abe, ptr %i.abd, align 1, !tbaa !45
  br label %bb.fq

bb.fp:                                            ; preds = %._crit_edge.i.i.i600
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.abd, ptr align 1 %i.aay, i64 %i.aaz, i1 false)
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo, %._crit_edge.i.i.i600
  %i.abf = load i64, ptr %i.c, align 8, !tbaa !35, !noalias !1241 ; 2 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %44, i64 8
  store i64 %i.abf, ptr %i.abg, align 8, !tbaa !141, !alias.scope !1241
  %i.abh = load ptr, ptr %44, align 8, !tbaa !90, !alias.scope !1241
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 %i.abf
  store i8 0, ptr %i.abi, align 1, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #44, !noalias !1241
  %i.abj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %44, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.143, i64 noundef 34)
          to label %.noexc608 unwind label %bb.ge ; 6 uses

.noexc608:                                        ; preds = %bb.fq
  %i.abk = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 7 uses
  store ptr %i.abk, ptr %43, align 8, !tbaa !140, !alias.scope !1242
  %i.abl = load ptr, ptr %i.abj, align 8, !tbaa !90 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abj, i64 16 ; 5 uses
  %i.abn = icmp eq ptr %i.abl, %i.abm
  br i1 %i.abn, label %bb.fr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604

bb.fr:                                            ; preds = %.noexc608
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abj, i64 8
  %i.abp = load i64, ptr %i.abo, align 8, !tbaa !141 ; 3 uses
  %i.abq = icmp ult i64 %i.abp, 16
  call void @llvm.assume(i1 %i.abq)
  %i.abr = add nuw nsw i64 %i.abp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.abk, ptr noundef nonnull align 8 dereferenceable(1) %i.abm, i64 %i.abr, i1 false)
  br label %bb.fs

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604: ; preds = %.noexc608
  store ptr %i.abl, ptr %43, align 8, !tbaa !90, !alias.scope !1242
  %i.abs = load i64, ptr %i.abm, align 8, !tbaa !45
  store i64 %i.abs, ptr %i.abk, align 8, !tbaa !45, !alias.scope !1242
  %.phi.trans.insert.i605 = getelementptr inbounds nuw i8, ptr %i.abj, i64 8
  %.pre.i606 = load i64, ptr %.phi.trans.insert.i605, align 8, !tbaa !141
  br label %bb.fs

bb.fs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604, %bb.fr
  %i.abt = phi i64 [ %i.abp, %bb.fr ], [ %.pre.i606, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604 ]
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abj, i64 8
  %i.abv = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  store i64 %i.abt, ptr %i.abv, align 8, !tbaa !141, !alias.scope !1242
  store ptr %i.abm, ptr %i.abj, align 8, !tbaa !90
  store i64 0, ptr %i.abu, align 8, !tbaa !141
  store i8 0, ptr %i.abm, align 8, !tbaa !45
  %i.abw = load ptr, ptr %43, align 8, !tbaa !90
  %i.abx = load i64, ptr %i.abv, align 8, !tbaa !141
  %i.aby = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aaw, ptr noundef %i.abw, i64 noundef %i.abx)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit611 unwind label %bb.gf

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit611: ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #44
  %i.abz = getelementptr inbounds nuw i8, ptr %45, i64 16 ; 6 uses
  store ptr %i.abz, ptr %45, align 8, !tbaa !140
  %i.aca = getelementptr inbounds nuw i8, ptr %45, i64 8
  store i64 0, ptr %i.aca, align 8, !tbaa !141
  store i8 0, ptr %i.abz, align 8, !tbaa !45
  invoke void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.aap, ptr noundef nonnull align 8 dereferenceable(112) %i.aby, ptr noundef nonnull align 8 dereferenceable(32) %45)
          to label %bb.ft unwind label %bb.gg

bb.ft:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit611
  %i.acb = load ptr, ptr %45, align 8, !tbaa !90  ; 2 uses
  %i.acc = icmp eq ptr %i.acb, %i.abz
  br i1 %i.acc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i616

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i616: ; preds = %bb.ft
  %i.acd = load i64, ptr %i.abz, align 8, !tbaa !45
  %i.ace = add i64 %i.acd, 1
  call void @_ZdlPvm(ptr noundef %i.acb, i64 noundef %i.ace) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618: ; preds = %bb.ft, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i616
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #44
  %i.acf = load ptr, ptr %43, align 8, !tbaa !90  ; 2 uses
  %i.acg = icmp eq ptr %i.acf, %i.abk
  br i1 %i.acg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i619

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i619: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618
  %i.ach = load i64, ptr %i.abk, align 8, !tbaa !45
  %i.aci = add i64 %i.ach, 1
  call void @_ZdlPvm(ptr noundef %i.acf, i64 noundef %i.aci) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i619
  %i.acj = load ptr, ptr %44, align 8, !tbaa !90  ; 2 uses
  %i.ack = icmp eq ptr %i.acj, %i.aax
  br i1 %i.ack, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i622

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i622: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621
  %i.acl = load i64, ptr %i.aax, align 8, !tbaa !45
  %i.acm = add i64 %i.acl, 1
  call void @_ZdlPvm(ptr noundef %i.acj, i64 noundef %i.acm) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i622
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #44
end_hunk_0
