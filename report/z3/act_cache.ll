Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/act_cache?download=true
inline.NumInlined: 215
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE5eraseERKSA_:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !25
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !39
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.au, ptr %i.av, align 8, !tbaa !39
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !51
  store ptr %i.ax, ptr %i.ak, align 8, !tbaa !33
  store ptr %i.ak, ptr %i.aw, align 8, !tbaa !51
  br label %.loopexit

bb.f:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !47
  %i.ba = add i32 %i.az, -1
  store i32 %i.ba, ptr %i.ay, align 4, !tbaa !47
  %i.bb = load ptr, ptr %i.bg, align 8, !tbaa !33
  store ptr %i.bb, ptr %.02027, align 8, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !51
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !33
  store ptr %i.bg, ptr %i.bc, align 8, !tbaa !51
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph, %bb.b
  %i.be = phi i32 [ %.pre, %.lr.ph ], [ %i.bf, %bb.b ]
  %.02027 = phi ptr [ %i.m, %.lr.ph ], [ %i.bg, %bb.b ] ; 2 uses
  %i.bf = add i32 %i.be, 1                        ; 2 uses
  store i32 %i.bf, ptr %i.y, align 8, !tbaa !46
  %i.bg = load ptr, ptr %.02027, align 8, !tbaa !33 ; 7 uses
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !75

.loopexit:                                        ; preds = %bb.g, %bb.d, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE19insert_if_not_thereERKSA_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %.not.i = icmp eq ptr %i.b, null
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !29  ; 3 uses
  br i1 %.not.i, label %_ZNK10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE14has_free_cellsEv.exit, label %_ZNK10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE14has_free_cellsEv.exit.thread

_ZNK10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE14has_free_cellsEv.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !43
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %.pre28, i64 %i.g
  %i.i = icmp ult ptr %i.d, %i.h
  br i1 %i.i, label %_ZNK10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE14has_free_cellsEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE14has_free_cellsEv.exit
  tail call void @_ZN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE12expand_tableEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %.pre = load ptr, ptr %0, align 8, !tbaa !29
  br label %_ZNK10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE14has_free_cellsEv.exit.thread

_ZNK10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE14has_free_cellsEv.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE14has_free_cellsEv.exit
  %i.j = phi ptr [ %.pre28, %bb.a ], [ %.pre, %bb.b ], [ %.pre28, %_ZNK10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE14has_free_cellsEv.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load i32, ptr %i.k, align 4, !tbaa !30
  %i.m = add i32 %i.l, -1
  %i.n = load ptr, ptr %1, align 8, !tbaa !24     ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !25   ; 2 uses
  %i.s = add i32 %i.r, %i.p
  %i.t = and i32 %i.s, %i.m
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.u ; 10 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33   ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = and i64 %i.x, 7
  %i.z = icmp eq i64 %i.y, 1
  br i1 %i.z, label %bb.c, label %.preheader

.preheader:                                       ; preds = %_ZNK10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE14has_free_cellsEv.exit.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %_ZNK10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE14has_free_cellsEv.exit.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !14
  %i.ad = add <2 x i32> %i.ac, splat (i32 1)
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.ae, align 8, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i32 %i.r, ptr %i.af, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !39
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !39
  store ptr null, ptr %i.v, align 8, !tbaa !33
  br label %.loopexit

bb.d:                                             ; preds = %.preheader, %bb.e
  %.023 = phi ptr [ %i.at, %bb.e ], [ %i.v, %.preheader ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.023, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !24
  %i.al = icmp eq ptr %i.ak, %i.n
  %i.am = getelementptr inbounds nuw i8, ptr %.023, i64 16
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = load i32, ptr %i.q, align 8
  %i.ap = icmp eq i32 %i.an, %i.ao
  %i.aq = select i1 %i.al, i1 %i.ap, i1 false
  br i1 %i.aq, label %.loopexit.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = load i32, ptr %i.aa, align 8, !tbaa !46
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aa, align 8, !tbaa !46
  %i.at = load ptr, ptr %.023, align 8, !tbaa !33 ; 2 uses
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %bb.f, label %bb.d, !llvm.loop !76

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !47
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !47
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !51  ; 3 uses
  %.not.i25 = icmp eq ptr %i.ax, null
  br i1 %.not.i25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !33
  store ptr %i.ay, ptr %i.a, align 8, !tbaa !51
  br label %_ZN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE13get_free_cellEv.exit

bb.h:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !44 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !44
  br label %_ZN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE13get_free_cellEv.exit

_ZN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE13get_free_cellEv.exit: ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.ax, %bb.g ], [ %i.ba, %bb.h ] ; 5 uses
  store ptr %i.w, ptr %.0.i, align 8, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !24
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !39
  %i.bl = load ptr, ptr %1, align 8, !tbaa !24
  store ptr %i.bl, ptr %i.bd, align 8, !tbaa !24
  %i.bm = load i32, ptr %i.q, align 8, !tbaa !25
  store i32 %i.bm, ptr %i.bf, align 8, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !39
  store ptr %i.bo, ptr %i.bi, align 8, !tbaa !39
  store ptr %.0.i, ptr %i.v, align 8, !tbaa !33
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %.023, i64 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE13get_free_cellEv.exit, %bb.c
  %.1 = phi ptr [ %i.ae, %bb.c ], [ %i.bd, %_ZN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE13get_free_cellEv.exit ], [ %i.bp, %.loopexit.loopexit ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE12expand_tableEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %2 = alloca %"class.std::allocator", align 1    ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %4 = alloca %"class.std::allocator", align 1    ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !30   ; 3 uses
  %i.d = shl i32 %i.c, 1                          ; 6 uses
  %i.e = icmp slt i32 %i.c, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.a, align 8, !tbaa !43
  %i.g = sub i32 %i.f, %i.c                       ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = add i32 %i.d, -1
  %i.k = zext i32 %i.d to i64
  %i.l = add i32 %i.d, -1
  br label %bb.h

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = tail call ptr @__cxa_allocate_exception(i64 40) #20 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  store ptr %i.o, ptr %i.n, align 8, !tbaa !56
  %i.p = load ptr, ptr %1, align 8, !tbaa !59     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !60   ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.v, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  store ptr %i.p, ptr %i.n, align 8, !tbaa !59
  %i.w = load i64, ptr %i.q, align 8, !tbaa !61
  store i64 %i.w, ptr %i.o, align 8, !tbaa !61
  %.phi.trans.insert92 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre93 = load i64, ptr %.phi.trans.insert92, align 8, !tbaa !60
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = phi i64 [ %i.t, %bb.e ], [ %.pre93, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.x, ptr %i.z, align 8, !tbaa !60
  store ptr %i.q, ptr %1, align 8, !tbaa !59
  store i64 0, ptr %i.y, align 8, !tbaa !60
  store i8 0, ptr %i.q, align 8, !tbaa !61
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #21
          to label %bb.ac unwind label %bb.f

bb.f:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %1, align 8, !tbaa !59    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.q
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.f
  %i.ad = load i64, ptr %i.q, align 8, !tbaa !61
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.ab

bb.g:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  call void @__cxa_free_exception(ptr %i.m) #20
  br label %bb.ab

bb.h:                                             ; preds = %.preheader, %_Z12dealloc_vectIN10chashtableIN4cmapISt4pairIP4exprjES4_N9act_cache10entry_hashE10default_eqIS5_EE9key_valueENSA_19key_value_hash_procENSA_17key_value_eq_procEE4cellEEvPT_j.exit
  %.037.in = phi i32 [ %.037, %_Z12dealloc_vectIN10chashtableIN4cmapISt4pairIP4exprjES4_N9act_cache10entry_hashE10default_eqIS5_EE9key_valueENSA_19key_value_hash_procENSA_17key_value_eq_procEE4cellEEvPT_j.exit ], [ %i.g, %.preheader ]
  %.037 = shl nuw i32 %.037.in, 1                 ; 4 uses
  %i.ag = add i32 %.037, %i.d                     ; 7 uses
  %i.ah = icmp ult i32 %i.ag, %i.d
  br i1 %i.ah, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 40) #20 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.ai, align 8, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 3 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !56
  %i.al = load ptr, ptr %3, align 8, !tbaa !59    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !60 ; 3 uses
  %i.aq = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.aq)
  %i.ar = add nuw nsw i64 %i.ap, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ak, ptr noundef nonnull align 8 dereferenceable(1) %i.am, i64 %i.ar, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52: ; preds = %bb.j
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !59
  %i.as = load i64, ptr %i.am, align 8, !tbaa !61
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !61
  %.phi.trans.insert90 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre91 = load i64, ptr %.phi.trans.insert90, align 8, !tbaa !60
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit53

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit53: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
  %i.at = phi i64 [ %i.ap, %bb.k ], [ %.pre91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ]
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %i.at, ptr %i.av, align 8, !tbaa !60
  store ptr %i.am, ptr %3, align 8, !tbaa !59
  store i64 0, ptr %i.au, align 8, !tbaa !60
  store i8 0, ptr %i.am, align 8, !tbaa !61
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #21
          to label %bb.ac unwind label %bb.l

bb.l:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit53
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %3, align 8, !tbaa !59    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.am
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %bb.l
  %i.az = load i64, ptr %i.am, align 8, !tbaa !61
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.ab

bb.m:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @__cxa_free_exception(ptr %i.ai) #20
  br label %bb.ab

bb.n:                                             ; preds = %bb.h
  %i.bc = zext i32 %i.ag to i64                   ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 5
  %i.be = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.bd) ; 8 uses
  %.not11.i.i.i.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not11.i.i.i.i.i, label %_ZN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE11alloc_tableEj.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.n
  %i.bf = add i32 %i.l, %.037
  %xtraiter = and i32 %i.ag, 6                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.013.i.i.i.i.i.prol = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.prol ], [ %i.be, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.01012.i.i.i.i.i.prol = phi i32 [ %i.bh, %.lr.ph.i.i.i.i.i.prol ], [ %i.ag, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr null>, ptr %.013.i.i.i.i.i.prol, align 8, !tbaa !50
  %i.bg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 16
  store i32 0, ptr %i.bg, align 8, !tbaa !25
  %i.bh = add i32 %.01012.i.i.i.i.i.prol, -1      ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.prol, i64 32 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !77

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.013.i.i.i.i.i.unr = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bi, %.lr.ph.i.i.i.i.i.prol ]
  %.01012.i.i.i.i.i.unr = phi i32 [ %i.ag, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bh, %.lr.ph.i.i.i.i.i.prol ]
  %i.bj = icmp ult i32 %i.bf, 7
  br i1 %i.bj, label %_ZN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE11alloc_tableEj.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.013.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i ], [ %.013.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 17 uses
  %.01012.i.i.i.i.i = phi i32 [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %.01012.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr null>, ptr %.013.i.i.i.i.i, align 8, !tbaa !50
  %i.bk = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 16
  store i32 0, ptr %i.bk, align 8, !tbaa !25
  %i.bl = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 32
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr null>, ptr %i.bl, align 8, !tbaa !50
  %i.bm = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 48
  store i32 0, ptr %i.bm, align 8, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 64
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr null>, ptr %i.bn, align 8, !tbaa !50
  %i.bo = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 80
  store i32 0, ptr %i.bo, align 8, !tbaa !25
  %i.bp = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 96
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr null>, ptr %i.bp, align 8, !tbaa !50
  %i.bq = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 112
  store i32 0, ptr %i.bq, align 8, !tbaa !25
  %i.br = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 128
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr null>, ptr %i.br, align 8, !tbaa !50
  %i.bs = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 144
  store i32 0, ptr %i.bs, align 8, !tbaa !25
  %i.bt = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 160
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr null>, ptr %i.bt, align 8, !tbaa !50
  %i.bu = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 176
  store i32 0, ptr %i.bu, align 8, !tbaa !25
  %i.bv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 192
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr null>, ptr %i.bv, align 8, !tbaa !50
  %i.bw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 208
  store i32 0, ptr %i.bw, align 8, !tbaa !25
  %i.bx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 224
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr null>, ptr %i.bx, align 8, !tbaa !50
  %i.by = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 240
  store i32 0, ptr %i.by, align 8, !tbaa !25
  %i.bz = add i32 %.01012.i.i.i.i.i, -8           ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 256
  %.not.i.i.i.i.i.7 = icmp eq i32 %i.bz, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE11alloc_tableEj.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE11alloc_tableEj.exit: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.n
  %i.cb = load ptr, ptr %0, align 8, !tbaa !29    ; 4 uses
  %i.cc = load i32, ptr %i.b, align 4, !tbaa !30  ; 2 uses
  store i32 0, ptr %i.i, align 8, !tbaa !14
  %i.cd = zext i32 %i.cc to i64
  %.idx.i = shl nuw nsw i64 %i.cd, 5
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %i.be, i64 %i.k ; 2 uses
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.be, i64 %i.bc
  %.not63.i = icmp eq i32 %i.cc, 0
  br i1 %.not63.i, label %_ZN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE10copy_tableEPNSD_4cellEjjSF_jjRj.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE11alloc_tableEj.exit, %.loopexit.i
  %7 = phi i32 [ %10, %.loopexit.i ], [ 0, %_ZN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE11alloc_tableEj.exit ] ; 2 uses
  %.04465.i = phi ptr [ %i.dv, %.loopexit.i ], [ %i.cb, %_ZN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE11alloc_tableEj.exit ] ; 3 uses
  %.04564.i = phi ptr [ %.4.i, %.loopexit.i ], [ %i.cf, %_ZN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE11alloc_tableEj.exit ] ; 2 uses
  %i.ch = load ptr, ptr %.04465.i, align 8, !tbaa !33
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = and i64 %i.ci, 7
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.r
  %8 = phi i32 [ %9, %bb.r ], [ %7, %.lr.ph.i ]   ; 2 uses
  %.146.i = phi ptr [ %.247.i, %bb.r ], [ %.04564.i, %.lr.ph.i ] ; 8 uses
  %.0.i = phi ptr [ %i.du, %bb.r ], [ %.04465.i, %.lr.ph.i ] ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !24 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !45
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i, i64 16 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !25 ; 2 uses
  %i.cr = add i32 %i.cq, %i.co
  %i.cs = and i32 %i.cr, %i.j
  %i.ct = zext i32 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr %i.be, i64 %i.ct ; 9 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !33 ; 2 uses
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = and i64 %i.cw, 7
  %i.cy = icmp eq i64 %i.cx, 1
  br i1 %i.cy, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.preheader.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.cm, ptr %i.cz, align 8, !tbaa !24
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store i32 %i.cq, ptr %i.da, align 8, !tbaa !25
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !39
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  store ptr %i.dc, ptr %i.dd, align 8, !tbaa !39
  store ptr null, ptr %i.cu, align 8, !tbaa !33
  %i.de = add i32 %8, 1                           ; 2 uses
  store i32 %i.de, ptr %i.i, align 8, !tbaa !14
  br label %bb.r

bb.p:                                             ; preds = %.preheader.i
  %i.df = icmp eq ptr %.146.i, %i.cg
  br i1 %i.df, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.cv, ptr %.146.i, align 8, !tbaa !33
  %i.dg = getelementptr inbounds nuw i8, ptr %.146.i, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !24
  store ptr %i.di, ptr %i.dg, align 8, !tbaa !24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !25
  %i.dl = getelementptr inbounds nuw i8, ptr %.146.i, i64 16
  store i32 %i.dk, ptr %i.dl, align 8, !tbaa !25
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cu, i64 24 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !39
  %i.do = getelementptr inbounds nuw i8, ptr %.146.i, i64 24
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !39
  %i.dp = load ptr, ptr %i.cl, align 8, !tbaa !24
  store ptr %i.dp, ptr %i.dh, align 8, !tbaa !24
  %i.dq = load i32, ptr %i.cp, align 8, !tbaa !25
  store i32 %i.dq, ptr %i.dj, align 8, !tbaa !25
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !39
  store ptr %i.ds, ptr %i.dm, align 8, !tbaa !39
  store ptr %.146.i, ptr %i.cu, align 8, !tbaa !33
  %i.dt = getelementptr inbounds nuw i8, ptr %.146.i, i64 32
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %9 = phi i32 [ %i.de, %bb.o ], [ %8, %bb.q ]    ; 2 uses
  %.247.i = phi ptr [ %.146.i, %bb.o ], [ %i.dt, %bb.q ] ; 2 uses
  %i.du = load ptr, ptr %.0.i, align 8, !tbaa !33 ; 2 uses
  %.not54.i = icmp eq ptr %i.du, null
  br i1 %.not54.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !78

.loopexit.i:                                      ; preds = %bb.r, %.lr.ph.i
  %10 = phi i32 [ %7, %.lr.ph.i ], [ %9, %bb.r ]
  %.4.i = phi ptr [ %.04564.i, %.lr.ph.i ], [ %.247.i, %bb.r ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.04465.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.dv, %i.ce
  br i1 %.not.i, label %_ZN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE10copy_tableEPNSD_4cellEjjSF_jjRj.exit, label %.lr.ph.i, !llvm.loop !79

_ZN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE10copy_tableEPNSD_4cellEjjSF_jjRj.exit: ; preds = %.loopexit.i, %_ZN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE11alloc_tableEj.exit
  %spec.select.i = phi ptr [ %i.cf, %_ZN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE11alloc_tableEj.exit ], [ %.4.i, %.loopexit.i ] ; 2 uses
  %.not = icmp eq ptr %spec.select.i, null
  br i1 %.not, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE10copy_tableEPNSD_4cellEjjSF_jjRj.exit
  %i.dw = icmp eq ptr %i.cb, null
  br i1 %i.dw, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cb)
  br label %bb.aa

bb.u:                                             ; preds = %_ZN10chashtableIN4cmapISt4pairIP4exprjES3_N9act_cache10entry_hashE10default_eqIS4_EE9key_valueENS9_19key_value_hash_procENS9_17key_value_eq_procEE10copy_tableEPNSD_4cellEjjSF_jjRj.exit
  %i.dx = icmp eq ptr %i.be, null
  br i1 %i.dx, label %_Z12dealloc_vectIN10chashtableIN4cmapISt4pairIP4exprjES4_N9act_cache10entry_hashE10default_eqIS5_EE9key_valueENSA_19key_value_hash_procENSA_17key_value_eq_procEE4cellEEvPT_j.exit, label %.thread

.thread:                                          ; preds = %bb.p, %bb.u
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.be)
  br label %_Z12dealloc_vectIN10chashtableIN4cmapISt4pairIP4exprjES4_N9act_cache10entry_hashE10default_eqIS5_EE9key_valueENSA_19key_value_hash_procENSA_17key_value_eq_procEE4cellEEvPT_j.exit

_Z12dealloc_vectIN10chashtableIN4cmapISt4pairIP4exprjES4_N9act_cache10entry_hashE10default_eqIS5_EE9key_valueENSA_19key_value_hash_procENSA_17key_value_eq_procEE4cellEEvPT_j.exit: ; preds = %bb.u, %.thread
  %i.dy = icmp slt i32 %.037, 0
  br i1 %i.dy, label %bb.v, label %bb.h

bb.v:                                             ; preds = %_Z12dealloc_vectIN10chashtableIN4cmapISt4pairIP4exprjES4_N9act_cache10entry_hashE10default_eqIS5_EE9key_valueENSA_19key_value_hash_procENSA_17key_value_eq_procEE4cellEEvPT_j.exit
  %i.dz = tail call ptr @__cxa_allocate_exception(i64 40) #20 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.dz, align 8, !tbaa !53
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 24 ; 3 uses
  store ptr %i.eb, ptr %i.ea, align 8, !tbaa !56
  %i.ec = load ptr, ptr %5, align 8, !tbaa !59    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %bb.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

bb.x:                                             ; preds = %bb.w
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !60 ; 3 uses
  %i.eh = icmp ult i64 %i.eg, 16
  call void @llvm.assume(i1 %i.eh)
  %i.ei = add nuw nsw i64 %i.eg, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eb, ptr noundef nonnull align 8 dereferenceable(1) %i.ed, i64 %i.ei, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.w
  store ptr %i.ec, ptr %i.ea, align 8, !tbaa !59
  %i.ej = load i64, ptr %i.ed, align 8, !tbaa !61
  store i64 %i.ej, ptr %i.eb, align 8, !tbaa !61
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !60
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit58

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit58: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57
  %i.ek = phi i64 [ %i.eg, %bb.x ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ]
  %i.el = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store i64 %i.ek, ptr %i.em, align 8, !tbaa !60
  store ptr %i.ed, ptr %5, align 8, !tbaa !59
  store i64 0, ptr %i.el, align 8, !tbaa !60
  store i8 0, ptr %i.ed, align 8, !tbaa !61
  invoke void @__cxa_throw(ptr nonnull %i.dz, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #21
          to label %bb.ac unwind label %bb.y

bb.y:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit58
  %i.en = landingpad { ptr, i32 }
          cleanup
  %i.eo = load ptr, ptr %5, align 8, !tbaa !59    ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.ed
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %bb.y
  %i.eq = load i64, ptr %i.ed, align 8, !tbaa !61
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.ab

bb.z:                                             ; preds = %bb.v
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @__cxa_free_exception(ptr %i.dz) #20
  br label %bb.ab

bb.aa:                                            ; preds = %bb.t, %bb.s
  store ptr %i.be, ptr %0, align 8, !tbaa !29
  store i32 %i.ag, ptr %i.a, align 8, !tbaa !43
  store i32 %i.d, ptr %i.b, align 4, !tbaa !30
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %spec.select.i, ptr %i.et, align 8, !tbaa !44
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.eu, i8 0, i64 16, i1 false)
  ret void

bb.ab:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.m, %bb.z, %bb.g
  %.pn48.pn = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.bb, %bb.m ], [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread ], [ %i.es, %bb.z ], [ %i.en, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread ]
  resume { ptr, i32 } %.pn48.pn

bb.ac:                                            ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit58, %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit53, %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !56
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.1) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !80

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #23 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !59
  store i64 %i.c, ptr %i.a, align 8, !tbaa !61
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !61
  store i8 %i.j, ptr %i.i, align 1, !tbaa !61
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !60
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !61
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN17default_exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %0, align 8, !tbaa !53
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !61
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_0
