Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xgboost/original/tracker?download=true
inline.NumInlined: 3215
inline.NumDeleted: 1249
begin_hunk_0_@_ZSt4swapIN7xgboost10collective12RabitTracker11WorkerProxyEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_:bb.a
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !60   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  store ptr %i.f, ptr %i.c, align 8, !tbaa !59
  %i.m = load i64, ptr %i.g, align 8, !tbaa !52
  store i64 %i.m, ptr %i.e, align 8, !tbaa !52
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !60
  br label %_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i

_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.n = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.j, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.n, ptr %i.p, align 8, !tbaa !60
  store ptr %i.g, ptr %i.d, align 8, !tbaa !59
  store i64 0, ptr %i.o, align 8, !tbaa !60
  store i8 0, ptr %i.g, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load <2 x i64>, ptr %i.r, align 8
  store <2 x i64> %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 5 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !57
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !59   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !60  ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i
  store ptr %i.w, ptr %i.t, align 8, !tbaa !59
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !52
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !52
  %.phi.trans.insert5 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre6 = load i64, ptr %.phi.trans.insert5, align 8, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.ae = phi i64 [ %.pre6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aa, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !60
  store ptr %i.x, ptr %i.u, align 8, !tbaa !59
  store i64 0, ptr %i.af, align 8, !tbaa !60
  store i8 0, ptr %i.x, align 8, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !82
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !82
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 5 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !57
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !59 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !60 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false)
  br label %_ZN7xgboost10collective12RabitTracker11WorkerProxyC2EOS2_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !59
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !52
  store i64 %i.au, ptr %i.am, align 8, !tbaa !52
  %.phi.trans.insert7 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre8 = load i64, ptr %.phi.trans.insert7, align 8, !tbaa !60
  br label %_ZN7xgboost10collective12RabitTracker11WorkerProxyC2EOS2_.exit

_ZN7xgboost10collective12RabitTracker11WorkerProxyC2EOS2_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i
  %i.av = phi i64 [ %i.ar, %bb.d ], [ %.pre8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !60
  store ptr %i.ao, ptr %i.al, align 8, !tbaa !59
  store i64 0, ptr %i.aw, align 8, !tbaa !60
  store i8 0, ptr %i.ao, align 8, !tbaa !52
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !83
  store i32 %i.ba, ptr %i.ay, align 8, !tbaa !83
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !68
  store i64 %i.bd, ptr %i.bb, align 8, !tbaa !68
  store ptr null, ptr %i.bc, align 8, !tbaa !68
  %i.be = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN7xgboost10collective12RabitTracker11WorkerProxyaSEOS2_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) #12 ; 0 uses
  %i.bf = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN7xgboost10collective12RabitTracker11WorkerProxyaSEOS2_(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(144) %2) #12 ; 0 uses
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !68 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i, label %_ZN7xgboost10collective6ResultD2Ev.exit.i, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i.i: ; preds = %_ZN7xgboost10collective12RabitTracker11WorkerProxyC2EOS2_.exit
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bg) #12, !inline_history !4
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef 56) #36, !inline_history !4
  br label %_ZN7xgboost10collective6ResultD2Ev.exit.i

_ZN7xgboost10collective6ResultD2Ev.exit.i:        ; preds = %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i.i, %_ZN7xgboost10collective12RabitTracker11WorkerProxyC2EOS2_.exit
  %i.bh = load ptr, ptr %i.ak, align 8, !tbaa !59 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.am
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4: ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit.i
  %i.bj = load i64, ptr %i.am, align 8, !tbaa !52
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
  %i.bl = load ptr, ptr %i.t, align 8, !tbaa !59  ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.v
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bn = load i64, ptr %i.v, align 8, !tbaa !52
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !59  ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.e
  br i1 %i.bq, label %_ZN7xgboost10collective12RabitTracker11WorkerProxyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.br = load i64, ptr %i.e, align 8, !tbaa !52
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #36
  br label %_ZN7xgboost10collective12RabitTracker11WorkerProxyD2Ev.exit

_ZN7xgboost10collective12RabitTracker11WorkerProxyD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZN7xgboost10collective9TCPSocketD2Ev(ptr noundef nonnull align 8 dead_on_return(5) dereferenceable(144) %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7xgboost10collective12RabitTracker11WorkerProxyESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS4_9WorkerCmpEEEEvT_SF_T0_(ptr %0, ptr %1, i8 %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %4 = alloca %"class.xgboost::collective::RabitTracker::WorkerProxy", align 8 ; 19 uses
  store i8 %2, ptr %3, align 1
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit18, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.019 = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %.not20 = icmp eq ptr %.sroa.0.019, %1
  br i1 %.not20, label %.loopexit18, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 2 uses
  %i.p = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.0.022 = phi ptr [ %.sroa.0.019, %.lr.ph ], [ %.sroa.0.0, %bb.h ] ; 8 uses
  %.pn21 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.022, %bb.h ] ; 17 uses
  %i.q = call noundef zeroext i1 @_ZN7xgboost10collective12RabitTracker9WorkerCmpclERKNS1_11WorkerProxyES5_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.0.022, ptr noundef nonnull align 8 dereferenceable(144) %0)
  br i1 %i.q, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store i8 0, ptr %i.b, align 4, !tbaa !72
  %i.r = load i32, ptr %.sroa.0.022, align 4, !tbaa !69
  store i32 %i.r, ptr %4, align 8, !tbaa !69
  store i32 -1, ptr %.sroa.0.022, align 4, !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %.pn21, i64 152 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !57
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.pn21, i64 168 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.pn21, i64 160
  %i.x = load i64, ptr %i.w, align 8, !tbaa !60   ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  store ptr %i.t, ptr %i.c, align 8, !tbaa !59
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !52
  store i64 %i.aa, ptr %i.d, align 8, !tbaa !52
  br label %_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i

_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.d
  %5 = getelementptr inbounds nuw i8, ptr %.pn21, i64 160 ; 2 uses
  %6 = load i64, ptr %5, align 8, !tbaa !60
  store i64 %6, ptr %i.e, align 8, !tbaa !60
  store ptr %i.u, ptr %i.s, align 8, !tbaa !59
  store i64 0, ptr %5, align 8, !tbaa !60
  store i8 0, ptr %i.u, align 8, !tbaa !52
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn21, i64 184
  %i.ac = load <2 x i64>, ptr %i.ab, align 8
  store <2 x i64> %i.ac, ptr %i.f, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn21, i64 200 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !57
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !59 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.pn21, i64 216 ; 5 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn21, i64 208
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !60 ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 16
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add nuw nsw i64 %i.ai, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.af, i64 %i.ak, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i
  store ptr %i.ae, ptr %i.g, align 8, !tbaa !59
  %i.al = load i64, ptr %i.af, align 8, !tbaa !52
  store i64 %i.al, ptr %i.h, align 8, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %7 = getelementptr inbounds nuw i8, ptr %.pn21, i64 208 ; 2 uses
  %8 = load i64, ptr %7, align 8, !tbaa !60
  store i64 %8, ptr %i.i, align 8, !tbaa !60
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !59
  store i64 0, ptr %7, align 8, !tbaa !60
  store i8 0, ptr %i.af, align 8, !tbaa !52
  %i.am = getelementptr inbounds nuw i8, ptr %.pn21, i64 232
  %i.an = load i32, ptr %i.am, align 8, !tbaa !82
  store i32 %i.an, ptr %i.j, align 8, !tbaa !82
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn21, i64 240 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !57
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !59 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn21, i64 256 ; 5 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %.pn21, i64 248
  %i.at = load i64, ptr %i.as, align 8, !tbaa !60 ; 2 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  %i.av = add nuw nsw i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.l, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.av, i1 false)
  br label %_ZN7xgboost10collective12RabitTracker11WorkerProxyC2EOS2_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.ap, ptr %i.k, align 8, !tbaa !59
  %i.aw = load i64, ptr %i.aq, align 8, !tbaa !52
  store i64 %i.aw, ptr %i.l, align 8, !tbaa !52
  br label %_ZN7xgboost10collective12RabitTracker11WorkerProxyC2EOS2_.exit

_ZN7xgboost10collective12RabitTracker11WorkerProxyC2EOS2_.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i
  %9 = getelementptr inbounds nuw i8, ptr %.pn21, i64 248 ; 2 uses
  %10 = load i64, ptr %9, align 8, !tbaa !60
  store i64 %10, ptr %i.m, align 8, !tbaa !60
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !59
  store i64 0, ptr %9, align 8, !tbaa !60
  store i8 0, ptr %i.aq, align 8, !tbaa !52
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn21, i64 272
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !83
  store i32 %i.ay, ptr %i.n, align 8, !tbaa !83
  %i.az = getelementptr inbounds nuw i8, ptr %.pn21, i64 280 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !68
  store i64 %i.ba, ptr %i.o, align 8, !tbaa !68
  store ptr null, ptr %i.az, align 8, !tbaa !68
  %i.bb = ptrtoint ptr %.sroa.0.022 to i64
  %i.bc = sub i64 %i.bb, %i.p                     ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN7xgboost10collective12RabitTracker11WorkerProxyC2EOS2_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %.pn21, i64 288
  %i.bf = udiv exact i64 %i.bc, 144
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %i.bf, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %i.be, %.lr.ph.preheader.i.i.i.i.i ]
  %.078.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.022, %.lr.ph.preheader.i.i.i.i.i ]
  %i.bg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -144 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -144 ; 2 uses
  %i.bi = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN7xgboost10collective12RabitTracker11WorkerProxyaSEOS2_(ptr noundef nonnull align 8 dereferenceable(144) %i.bh, ptr noundef nonnull align 8 dereferenceable(144) %i.bg) #12 ; 0 uses
  %i.bj = add nsw i64 %.010.i.i.i.i.i, -1
  %i.bk = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !712

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %_ZN7xgboost10collective12RabitTracker11WorkerProxyC2EOS2_.exit
  %i.bl = call noundef nonnull align 8 dereferenceable(144) ptr @_ZN7xgboost10collective12RabitTracker11WorkerProxyaSEOS2_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %4) #12 ; 0 uses
  %i.bm = load ptr, ptr %i.o, align 8, !tbaa !68  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i, label %_ZN7xgboost10collective6ResultD2Ev.exit.i, label %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i.i: ; preds = %.loopexit
  call void @_ZN7xgboost10collective6detail10ResultImplD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.bm) #12, !inline_history !4
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 56) #36, !inline_history !4
  br label %_ZN7xgboost10collective6ResultD2Ev.exit.i

_ZN7xgboost10collective6ResultD2Ev.exit.i:        ; preds = %_ZNKSt14default_deleteIN7xgboost10collective6detail10ResultImplEEclEPS3_.exit.i.i.i, %.loopexit
  %i.bn = load ptr, ptr %i.k, align 8, !tbaa !59  ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.l
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9: ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit.i
  %i.bp = load i64, ptr %i.l, align 8, !tbaa !52
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZN7xgboost10collective6ResultD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
  %i.br = load ptr, ptr %i.g, align 8, !tbaa !59  ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.h
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bt = load i64, ptr %i.h, align 8, !tbaa !52
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bu) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !59  ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.d
  br i1 %i.bw, label %_ZN7xgboost10collective12RabitTracker11WorkerProxyD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  %i.bx = load i64, ptr %i.d, align 8, !tbaa !52
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #36
  br label %_ZN7xgboost10collective12RabitTracker11WorkerProxyD2Ev.exit

_ZN7xgboost10collective12RabitTracker11WorkerProxyD2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @_ZN7xgboost10collective9TCPSocketD2Ev(ptr noundef nonnull align 8 dead_on_return(5) dereferenceable(144) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load i8, ptr %3, align 1, !tbaa !182
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7xgboost10collective12RabitTracker11WorkerProxyESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS4_9WorkerCmpEEEEvT_T0_(ptr nonnull %.sroa.0.022, i8 %.sroa.0.0.copyload)
  br label %bb.h

bb.h:                                             ; preds = %_ZN7xgboost10collective12RabitTracker11WorkerProxyD2Ev.exit, %bb.g
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.022, i64 144 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit18, label %bb.b, !llvm.loop !713

.loopexit18:                                      ; preds = %bb.h, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7xgboost10collective12RabitTracker11WorkerProxyESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterINS4_9WorkerCmpEEEEvT_T0_(ptr %0, i8 %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 1 ; 2 uses
  %3 = alloca %"class.xgboost::collective::RabitTracker::WorkerProxy", align 8 ; 22 uses
  store i8 %1, ptr %2, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i8 0, ptr %i.a, align 4, !tbaa !72
  %i.b = load i32, ptr %0, align 4, !tbaa !69
  store i32 %i.b, ptr %3, align 8, !tbaa !69
  store i32 -1, ptr %0, align 4, !tbaa !69
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  store ptr %i.e, ptr %i.c, align 8, !tbaa !57
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !59   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !60   ; 3 uses
  %i.k = icmp ult i64 %i.j, 16
  call void @llvm.assume(i1 %i.k)
  %i.l = add nuw nsw i64 %i.j, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.l, i1 false)
  br label %_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  store ptr %i.f, ptr %i.c, align 8, !tbaa !59
  %i.m = load i64, ptr %i.g, align 8, !tbaa !52
  store i64 %i.m, ptr %i.e, align 8, !tbaa !52
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !60
  br label %_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i

_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.b
  %i.n = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.j, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.n, ptr %i.p, align 8, !tbaa !60
  store ptr %i.g, ptr %i.d, align 8, !tbaa !59
  store i64 0, ptr %i.o, align 8, !tbaa !60
  store i8 0, ptr %i.g, align 8, !tbaa !52
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load <2 x i64>, ptr %i.r, align 8
  store <2 x i64> %i.s, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 5 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !57
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !59   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !60  ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %i.ac = add nuw nsw i64 %i.aa, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.v, ptr noundef nonnull align 8 dereferenceable(1) %i.x, i64 %i.ac, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7xgboost10collective5proto8PeerInfoC2EOS2_.exit.i
  store ptr %i.w, ptr %i.t, align 8, !tbaa !59
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !52
  store i64 %i.ad, ptr %i.v, align 8, !tbaa !52
  %.phi.trans.insert9 = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre10 = load i64, ptr %.phi.trans.insert9, align 8, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.c
  %i.ae = phi i64 [ %.pre10, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.aa, %bb.c ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.ae, ptr %i.ag, align 8, !tbaa !60
  store ptr %i.x, ptr %i.u, align 8, !tbaa !59
  store i64 0, ptr %i.af, align 8, !tbaa !60
  store i8 0, ptr %i.x, align 8, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !82
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !82
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 5 uses
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !57
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !59 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !60 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false)
  br label %_ZN7xgboost10collective12RabitTracker11WorkerProxyC2EOS2_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !59
end_hunk_0
