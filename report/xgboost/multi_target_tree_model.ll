Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/multi_target_tree_model?download=true
inline.NumInlined: 2099
inline.NumDeleted: 827
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN7xgboost15MultiTargetTree6ExpandEPKNS_7ContextERKNS_4tree11ExpandBatchE:bb.a
  %i.ue = sext i32 %i.ud to i64                   ; 2 uses
  %i.uf = icmp ugt i64 %i.pl, %i.ue
  br i1 %i.uf, label %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit190, label %.split324.us, !prof !58

.split324.us:                                     ; preds = %_ZNK7xgboost6common4SpanIiLm18446744073709551615EEixEm.exit189, %_ZNK7xgboost6common4SpanIiLm18446744073709551615EEixEm.exit189.us, %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit187.us.us, %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit187.us.us.us
  tail call void @_ZSt9terminatev() #29
  unreachable

_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit190: ; preds = %_ZNK7xgboost6common4SpanIiLm18446744073709551615EEixEm.exit189
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %i.ue
  store float %i.ua, ptr %i.ug, align 4, !tbaa !65
  %i.uh = fptrunc double %i.ts to float
  %i.ui = icmp ugt i64 %i.ag, %i.tk
  br i1 %i.ui, label %_ZNK7xgboost6common4SpanIiLm18446744073709551615EEixEm.exit191, label %.split326.us, !prof !58

.split326.us:                                     ; preds = %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit190, %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit190.us, %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit190.us.us
  tail call void @_ZSt9terminatev() #29
  unreachable

_ZNK7xgboost6common4SpanIiLm18446744073709551615EEixEm.exit191: ; preds = %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit190
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.tk
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !30
  %i.ul = sext i32 %i.uk to i64                   ; 2 uses
  %i.um = icmp ugt i64 %i.pl, %i.ul
  br i1 %i.um, label %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit192, label %.split328.us, !prof !58

.split328.us:                                     ; preds = %_ZNK7xgboost6common4SpanIiLm18446744073709551615EEixEm.exit191, %_ZNK7xgboost6common4SpanIiLm18446744073709551615EEixEm.exit191.us, %_ZNK7xgboost6common4SpanIiLm18446744073709551615EEixEm.exit191.us.us, %_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit190.us.us.us
  tail call void @_ZSt9terminatev() #29
  unreachable

_ZNK7xgboost6common4SpanIfLm18446744073709551615EEixEm.exit192: ; preds = %_ZNK7xgboost6common4SpanIiLm18446744073709551615EEixEm.exit191
  %i.un = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %i.ul
  store float %i.uh, ptr %i.un, align 4, !tbaa !65
  %i.uo = add nuw i64 %.0314, 1                   ; 2 uses
  %exitcond417.not = icmp eq i64 %i.uo, %i.g
  br i1 %exitcond417.not, label %._crit_edge317, label %.lr.ph316.split, !llvm.loop !162

bb.ai:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit.split-lp241.loopexit.split-lp, %.loopexit.split-lp236.loopexit.split-lp
  %.sroa.0202.1 = phi ptr [ %.sroa.0202.3, %.loopexit.split-lp241.loopexit.split-lp ], [ %.sroa.0202.2, %.loopexit.split-lp236.loopexit.split-lp ], [ %.sroa.0202.0274, %.loopexit.split-lp ], [ %.sroa.0202.0307, %.loopexit ] ; 3 uses
  %.sroa.23.1 = phi ptr [ %.sroa.13.2, %.loopexit.split-lp241.loopexit.split-lp ], [ %.sroa.23.2, %.loopexit.split-lp236.loopexit.split-lp ], [ %.sroa.23.0256, %.loopexit.split-lp ], [ %.sroa.23.0309, %.loopexit ]
  %.pn94.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp641, %.loopexit.split-lp241.loopexit.split-lp ], [ %lpad.loopexit.split-lp639, %.loopexit.split-lp236.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i193 = icmp eq ptr %.sroa.0202.1, null
  br i1 %.not.i.i.i193, label %_ZNSt6vectorIN7xgboost12_GLOBAL__N_113CopyBatchItemIfEESaIS3_EED2Ev.exit194, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.up = ptrtoint ptr %.sroa.23.1 to i64
  %i.uq = ptrtoint ptr %.sroa.0202.1 to i64
  %i.ur = sub i64 %i.up, %i.uq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0202.1, i64 noundef %i.ur) #32
  br label %_ZNSt6vectorIN7xgboost12_GLOBAL__N_113CopyBatchItemIfEESaIS3_EED2Ev.exit194

_ZNSt6vectorIN7xgboost12_GLOBAL__N_113CopyBatchItemIfEESaIS3_EED2Ev.exit194: ; preds = %bb.ai, %bb.aj
  resume { ptr, i32 } %.pn94.pn
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK7xgboost15MultiTargetTree4SizeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIiE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret i64 %i.b
}

declare void @_ZN7xgboost16HostDeviceVectorIiE6ResizeEmi(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZN7xgboost16HostDeviceVectorIjE6ResizeEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

declare void @_ZN7xgboost16HostDeviceVectorIhE6ResizeEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost15MultiTargetTree9SetLeavesESt6vectorIiSaIiEENS_6common4SpanIKfLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr nofree noundef readonly align 8 captures(none) %1, i64 %2, ptr nofree readonly captures(address_is_null) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %5 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 17 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %7 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.e = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !57   ; 2 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = icmp ult i64 %i.e, %i.j                  ; 2 uses
  br i1 %i.k, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.n = load ptr, ptr %1, align 8, !tbaa !71
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !57   ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = udiv i64 %i.s, %i.w
  %.not = icmp eq i64 %i.r, %i.x
  br i1 %.not, label %.critedge, label %bb.c, !prof !58

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.y = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.y, ptr noundef nonnull @.str.19, i32 noundef 225)
  %i.z = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit unwind label %bb.d ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit:   ; preds = %bb.c
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.29, i64 noundef 67)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.22, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !46
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  %.pre102.a = load i32, ptr %.phi.trans.insert, align 4, !tbaa !57 ; 2 uses
  %.pre103 = zext i32 %.pre102.a to i64
  br label %.critedge

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %bb.u

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.t

.critedge:                                        ; preds = %bb.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31, %bb.b
  %.pre-phi = phi i64 [ %i.j, %bb.a ], [ %.pre103, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 ], [ %i.w, %bb.b ] ; 11 uses
  %i.ad = phi i32 [ %i.i, %bb.a ], [ %.pre102.a, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit31 ], [ %i.v, %bb.b ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !70
  %i.ag = load ptr, ptr %1, align 8, !tbaa !71
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = ashr exact i64 %i.aj, 2
  %i.al = mul i64 %i.ak, %.pre-phi
  call void @_ZN7xgboost16HostDeviceVectorIfE6ResizeEm(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.al)
  %i.am = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIfE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !62
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !63 ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 2                 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN7xgboost16HostDeviceVectorIiE10HostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.au) ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !70
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !71 ; 3 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 2                 ; 2 uses
  %i.bd = load ptr, ptr %1, align 8, !tbaa !32    ; 4 uses
  %i.be = load ptr, ptr %i.ae, align 8, !tbaa !32 ; 2 uses
  %.not7174 = icmp eq ptr %i.bd, %i.be
  br i1 %.not7174, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bg = icmp ne ptr %3, null
  %i.bh = icmp eq i32 %i.ad, 0                    ; 3 uses
  %i.bi = or i1 %i.bg, %i.bh
  %.fr = freeze i1 %i.bi
  br i1 %.fr, label %.lr.ph.split.us, label %.lr.ph.split, !prof !58

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.bj = icmp ne ptr %i.ap, null
  %i.bk = or i1 %i.bh, %i.bj
  %.fr100 = freeze i1 %i.bk
  br i1 %.fr100, label %.lr.ph.split.us.split.us.preheader, label %.lr.ph.split.us.split, !prof !58

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph.split.us
  %min.iters.check = icmp samesign ult i64 %.pre-phi, 8
  %i.bl = sub i64 %i.a, %i.ar
  %diff.check = icmp ugt i64 %i.bl, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  %n.vec = and i64 %.pre-phi, 4294967288          ; 3 uses
  %cmp.n = icmp eq i64 %.pre-phi, %n.vec
  %xtraiter = and i64 %.pre-phi, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.preheader, %_ZNK7xgboost6common4SpanIiLm18446744073709551615EEixEm.exit60.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNK7xgboost6common4SpanIiLm18446744073709551615EEixEm.exit60.us.us ], [ 0, %.lr.ph.split.us.split.us.preheader ] ; 2 uses
  %.sroa.061.075.us.us = phi ptr [ %i.dy, %_ZNK7xgboost6common4SpanIiLm18446744073709551615EEixEm.exit60.us.us ], [ %i.bd, %.lr.ph.split.us.split.us.preheader ] ; 2 uses
  %i.bm = load i32, ptr %.sroa.061.075.us.us, align 4, !tbaa !30
  %i.bn = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIiE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
  %i.bo = sext i32 %i.bm to i64                   ; 5 uses
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !71
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bo
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !30
  %i.bs = icmp eq i32 %i.br, -1
  br i1 %i.bs, label %bb.g, label %bb.f, !prof !58

bb.f:                                             ; preds = %.lr.ph.split.us.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.bt = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.bt, ptr noundef nonnull @.str.19, i32 noundef 235)
  %i.bu = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit34.us.us unwind label %.split.us.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit34.us.us: ; preds = %bb.f
  %i.bv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.30, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.us.us unwind label %.split.us.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.us.us: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit34.us.us
  %i.bw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bu, ptr noundef nonnull @.str.22, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.us.us unwind label %.split.us.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.us.us: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.us.us
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.g

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.us.us, %.lr.ph.split.us.split.us
  %8 = trunc nuw nsw i64 %indvars.iv to i32       ; 2 uses
  %i.bx = mul i32 %i.ad, %8
  %i.by = zext i32 %i.bx to i64                   ; 3 uses
  %i.bz = add nuw nsw i64 %.pre-phi, %i.by        ; 2 uses
  %.not.i.us.us = icmp ugt i64 %i.bz, %2
  br i1 %.not.i.us.us, label %.split78.us, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EE7subspanEmm.exit.us.us, !prof !29

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EE7subspanEmm.exit.us.us: ; preds = %bb.g
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.by ; 6 uses
  %.not.i39.us.us = icmp ugt i64 %i.bz, %i.at
  br i1 %.not.i39.us.us, label %.split80.us, label %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKfLm18446744073709551615EEELb1EEmiES6_.exit.i.i.i.i.i.us.us, !prof !29

_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKfLm18446744073709551615EEELb1EEmiES6_.exit.i.i.i.i.i.us.us: ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EE7subspanEmm.exit.us.us
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.by ; 6 uses
  br i1 %i.bh, label %_ZSt4copyIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKfLm18446744073709551615EEELb1EEENS3_INS4_IfLm18446744073709551615EEELb0EEEET0_T_SB_SA_.exit.us.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.preheader

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.preheader: ; preds = %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKfLm18446744073709551615EEELb1EEmiES6_.exit.i.i.i.i.i.us.us
  br i1 %or.cond, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.preheader114, label %vector.body

vector.body:                                      ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.preheader ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %index ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load = load <4 x float>, ptr %i.cc, align 4, !tbaa !65
  %wide.load113 = load <4 x float>, ptr %i.cd, align 4, !tbaa !65
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %index ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store <4 x float> %wide.load, ptr %i.ce, align 4, !tbaa !65
  store <4 x float> %wide.load113, ptr %i.cf, align 4, !tbaa !65
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !203

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZSt4copyIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKfLm18446744073709551615EEELb1EEENS3_INS4_IfLm18446744073709551615EEELb0EEEET0_T_SB_SA_.exit.us.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.preheader114

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.preheader114: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.preheader, %middle.block
  %.sroa.411.017.i.i.i.i.i.us.us.ph = phi i64 [ 0, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.prol.loopexit, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.prol

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.prol: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.preheader114, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.prol
  %.sroa.411.017.i.i.i.i.i.us.us.prol = phi i64 [ %i.ck, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.prol ], [ %.sroa.411.017.i.i.i.i.i.us.us.ph, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.preheader114 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.prol ], [ 0, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.preheader114 ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.sroa.411.017.i.i.i.i.i.us.us.prol
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !65
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.sroa.411.017.i.i.i.i.i.us.us.prol
  store float %i.ci, ptr %i.cj, align 4, !tbaa !65
  %i.ck = add nuw nsw i64 %.sroa.411.017.i.i.i.i.i.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.prol.loopexit, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.prol, !llvm.loop !204

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.prol.loopexit: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.prol, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.preheader114
  %.sroa.411.017.i.i.i.i.i.us.us.unr = phi i64 [ %.sroa.411.017.i.i.i.i.i.us.us.ph, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.preheader114 ], [ %i.ck, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.prol ]
  %i.cl = sub nsw i64 %.sroa.411.017.i.i.i.i.i.us.us.ph, %.pre-phi
  %i.cm = icmp ugt i64 %i.cl, -4
  br i1 %i.cm, label %_ZSt4copyIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKfLm18446744073709551615EEELb1EEENS3_INS4_IfLm18446744073709551615EEELb0EEEET0_T_SB_SA_.exit.us.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us

_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us
  %.sroa.411.017.i.i.i.i.i.us.us = phi i64 [ %i.dc, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us ], [ %.sroa.411.017.i.i.i.i.i.us.us.unr, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.prol.loopexit ] ; 6 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.sroa.411.017.i.i.i.i.i.us.us
  %i.co = load float, ptr %i.cn, align 4, !tbaa !65
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %.sroa.411.017.i.i.i.i.i.us.us
  store float %i.co, ptr %i.cp, align 4, !tbaa !65
  %i.cq = add nuw nsw i64 %.sroa.411.017.i.i.i.i.i.us.us, 1 ; 2 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !65
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cq
  store float %i.cs, ptr %i.ct, align 4, !tbaa !65
  %i.cu = add nuw nsw i64 %.sroa.411.017.i.i.i.i.i.us.us, 2 ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cu
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !65
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cu
  store float %i.cw, ptr %i.cx, align 4, !tbaa !65
  %i.cy = add nuw nsw i64 %.sroa.411.017.i.i.i.i.i.us.us, 3 ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !65
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %i.cy
  store float %i.da, ptr %i.db, align 4, !tbaa !65
  %i.dc = add nuw nsw i64 %.sroa.411.017.i.i.i.i.i.us.us, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dc, %.pre-phi
  br i1 %exitcond.not.3, label %_ZSt4copyIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKfLm18446744073709551615EEELb1EEENS3_INS4_IfLm18446744073709551615EEELb0EEEET0_T_SB_SA_.exit.us.us, label %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us, !llvm.loop !205

_ZSt4copyIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKfLm18446744073709551615EEELb1EEENS3_INS4_IfLm18446744073709551615EEELb0EEEET0_T_SB_SA_.exit.us.us: ; preds = %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us.prol.loopexit, %_ZN7xgboost6common6detail12SpanIteratorINS0_4SpanIfLm18446744073709551615EEELb0EEppEv.exit.i.i.i.i.i.us.us, %middle.block, %_ZNK7xgboost6common6detail12SpanIteratorINS0_4SpanIKfLm18446744073709551615EEELb1EEmiES6_.exit.i.i.i.i.i.us.us
  br i1 %i.k, label %bb.h, label %bb.l

bb.h:                                             ; preds = %_ZSt4copyIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKfLm18446744073709551615EEELb1EEENS3_INS4_IfLm18446744073709551615EEELb0EEEET0_T_SB_SA_.exit.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.dd = icmp ugt i64 %i.bc, %i.bo
  br i1 %i.dd, label %_ZNK7xgboost6common4SpanIiLm18446744073709551615EEixEm.exit.us.us, label %.split88.us, !prof !58

_ZNK7xgboost6common4SpanIiLm18446744073709551615EEixEm.exit.us.us: ; preds = %bb.h
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bo
  %i.df = load i32, ptr %i.de, align 4, !tbaa !30 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.df, ptr %i.b, align 4, !tbaa !30, !noalias !208
  store i32 -1, ptr %i.c, align 4, !tbaa !30, !noalias !208
  %i.dg = icmp eq i32 %i.df, -1
  br i1 %i.dg, label %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.us.us, label %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.us.us

_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.us.us: ; preds = %_ZNK7xgboost6common4SpanIiLm18446744073709551615EEixEm.exit.us.us
  call void @_ZN4dmlc14LogCheckFormatIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %6, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  %.pr.us.us = load ptr, ptr %6, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not73.us.us = icmp eq ptr %.pr.us.us, null
  br i1 %.not73.us.us, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.us.us, label %bb.i

bb.i:                                             ; preds = %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.us.us
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.dh = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc.us.us unwind label %.split90.us.split.us

.noexc.us.us:                                     ; preds = %bb.i
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.dh, ptr noundef nonnull @.str.19, i32 noundef 240)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit.us.us unwind label %.split90.us.split.us

_ZN4dmlc15LogMessageFatalC2EPKci.exit.us.us:      ; preds = %.noexc.us.us
  %i.di = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit51.us.us unwind label %.split93.us.split.us ; 3 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit51.us.us: ; preds = %_ZN4dmlc15LogMessageFatalC2EPKci.exit.us.us
  %i.dj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull @.str.20, i64 noundef 14)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.us.us unwind label %.split93.us.split.us ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.us.us: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit51.us.us
  %i.dk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull @.str.31, i64 noundef 39)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55.us.us unwind label %.split93.us.split.us ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55.us.us: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.us.us
  %i.dl = load ptr, ptr %6, align 8, !tbaa !48    ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !21
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !18
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef %i.dm, i64 noundef %i.do)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.us.us unwind label %.split93.us.split.us

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.us.us: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55.us.us
  %i.dq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dp, ptr noundef nonnull @.str.22, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58.us.us unwind label %.split93.us.split.us ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58.us.us: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.us.us
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.j unwind label %.split90.us.split.us

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %.pr69.us.us = load ptr, ptr %6, align 8, !tbaa !48 ; 4 uses
  %.not.i59.us.us = icmp eq ptr %.pr69.us.us, null
  br i1 %.not.i59.us.us, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.us.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dr = load ptr, ptr %.pr69.us.us, align 8, !tbaa !21 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.pr69.us.us, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.us.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us.us: ; preds = %bb.k
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !19
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #32
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.us.us

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.us.us: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.us.us
  call void @_ZdlPvm(ptr noundef nonnull %.pr69.us.us, i64 noundef 32) #32
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.us.us

_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.us.us: ; preds = %_ZNK7xgboost6common4SpanIiLm18446744073709551615EEixEm.exit.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.us.us

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.us.us: ; preds = %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread.us.us, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.us.us, %bb.j, %_ZN4dmlc11LogCheck_EQIiiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.l

bb.l:                                             ; preds = %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.us.us, %_ZSt4copyIN7xgboost6common6detail12SpanIteratorINS1_4SpanIKfLm18446744073709551615EEELb1EEENS3_INS4_IfLm18446744073709551615EEELb0EEEET0_T_SB_SA_.exit.us.us
  %i.dw = icmp ugt i64 %i.bc, %i.bo
  br i1 %i.dw, label %_ZNK7xgboost6common4SpanIiLm18446744073709551615EEixEm.exit60.us.us, label %.split96.us, !prof !58

_ZNK7xgboost6common4SpanIiLm18446744073709551615EEixEm.exit60.us.us: ; preds = %bb.l
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bo
  store i32 %8, ptr %i.dx, align 4, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.061.075.us.us, i64 4 ; 2 uses
  %.not71.us.us = icmp eq ptr %i.dy, %i.be
  br i1 %.not71.us.us, label %._crit_edge, label %.lr.ph.split.us.split.us

.split90.us.split.us:                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit58.us.us, %.noexc.us.us, %bb.i
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.split93.us.split.us:                             ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.us.us, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit55.us.us, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit53.us.us, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit51.us.us, %_ZN4dmlc15LogMessageFatalC2EPKci.exit.us.us
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.s unwind label %bb.u

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us
  %i.eb = load i32, ptr %i.bd, align 4, !tbaa !30
  %i.ec = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIiE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
  %i.ed = sext i32 %i.eb to i64
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !71
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ed
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !30
  %i.eh = icmp eq i32 %i.eg, -1
  br i1 %i.eh, label %bb.n, label %bb.m, !prof !58

bb.m:                                             ; preds = %.lr.ph.split.us.split
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.ei = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.ei, ptr noundef nonnull @.str.19, i32 noundef 235)
  %i.ej = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit34.us unwind label %.split.us.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit34.us: ; preds = %bb.m
  %i.ek = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef nonnull @.str.30, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.us unwind label %.split.us.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.us: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit34.us
  %i.el = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef nonnull @.str.22, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.us unwind label %.split.us.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.us: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.us
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.n

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36.us, %.lr.ph.split.us.split
  %.not.i.us = icmp ult i64 %2, %.pre-phi
  br i1 %.not.i.us, label %.split78.us, label %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EE7subspanEmm.exit.us, !prof !29

_ZNK7xgboost6common4SpanIKfLm18446744073709551615EE7subspanEmm.exit.us: ; preds = %bb.n
  %.not.i39.us = icmp ult i64 %i.at, %.pre-phi
  br i1 %.not.i39.us, label %.split80.us, label %.split82.us, !prof !29

.split.us.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit34.us.us, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.us.us, %bb.m, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit34.us, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35.us, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35, %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit34, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.p unwind label %bb.u

._crit_edge:                                      ; preds = %_ZNK7xgboost6common4SpanIiLm18446744073709551615EEixEm.exit60.us.us, %.critedge
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.em = load i32, ptr %i.bd, align 4, !tbaa !30
  %i.en = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7xgboost16HostDeviceVectorIiE15ConstHostVectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
  %i.eo = sext i32 %i.em to i64
  %i.ep = load ptr, ptr %i.en, align 8, !tbaa !71
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.ep, i64 %i.eo
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !30
  %i.es = icmp eq i32 %i.er, -1
  br i1 %i.es, label %bb.q, label %bb.o, !prof !58

bb.o:                                             ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.et = call noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.et, ptr noundef nonnull @.str.19, i32 noundef 235)
  %i.eu = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit34 unwind label %.split.us.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit34: ; preds = %bb.o
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef nonnull @.str.30, i64 noundef 32)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35 unwind label %.split.us.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35: ; preds = %_ZN4dmlc15LogMessageFatal6streamB5cxx11Ev.exit34
  %i.ew = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef nonnull @.str.22, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36 unwind label %.split.us.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit35
  call void @_ZN4dmlc15LogMessageFatalD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.q

bb.p:                                             ; preds = %.split.us.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.t

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36, %.lr.ph.split
  %.not.i = icmp ult i64 %2, %.pre-phi
  br i1 %.not.i, label %.split78.us, label %bb.r, !prof !29

.split78.us:                                      ; preds = %bb.g, %bb.q, %bb.n
  call void @_ZSt9terminatev() #29
  unreachable

bb.r:                                             ; preds = %bb.q
  call void @_ZSt9terminatev() #29
  unreachable

.split80.us:                                      ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EE7subspanEmm.exit.us.us, %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EE7subspanEmm.exit.us
  call void @_ZSt9terminatev() #29
  unreachable

.split82.us:                                      ; preds = %_ZNK7xgboost6common4SpanIKfLm18446744073709551615EE7subspanEmm.exit.us
  call void @_ZSt9terminatev() #29
  unreachable

.split88.us:                                      ; preds = %bb.h
  call void @_ZSt9terminatev() #29
  unreachable

bb.s:                                             ; preds = %.split93.us.split.us, %.split90.us.split.us
  %.pn = phi { ptr, i32 } [ %i.dz, %.split90.us.split.us ], [ %i.ea, %.split93.us.split.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.t

.split96.us:                                      ; preds = %bb.l
  call void @_ZSt9terminatev() #29
  unreachable

bb.t:                                             ; preds = %bb.p, %bb.s, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.e ], [ %.pn, %bb.s ], [ %lpad.loopexit.split-lp, %bb.p ]
  resume { ptr, i32 } %.pn.pn.pn

bb.u:                                             ; preds = %.split93.us.split.us, %.split.us.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.d
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #29
  unreachable
}

declare void @_ZN7xgboost16HostDeviceVectorIfE6ResizeEm(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN7xgboost15MultiTargetTree9SetLeavesEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %1 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %3 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %5 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %7 = alloca %"class.dmlc::LogMessageFatal", align 1 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.h = tail call noundef i64 @_ZNK7xgboost16HostDeviceVectorIfE4SizeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !57
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = udiv i64 %i.h, %i.m
  store i64 %i.n, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i32 0, ptr %i.d, align 4, !tbaa !30
  %i.o = icmp ult i64 %i.h, %i.m
  br i1 %i.o, label %_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread, label %_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit

_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit

_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit: ; preds = %bb.a
  call void @_ZN4dmlc14LogCheckFormatImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  %.pr = load ptr, ptr %1, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN4dmlc11LogCheck_EQImiEESt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS7_EERKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.p = invoke noundef nonnull align 8 dereferenceable(376) ptr @_ZN4dmlc15LogMessageFatal8GetEntryEv(ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN4dmlc15LogMessageFatal5Entry4InitEPKci(ptr noundef nonnull align 8 dereferenceable(376) %i.p, ptr noundef nonnull @.str.19, i32 noundef 248)
          to label %_ZN4dmlc15LogMessageFatalC2EPKci.exit unwind label %bb.c

_ZN4dmlc15LogMessageFatalC2EPKci.exit:            ; preds = %.noexc
end_hunk_0
