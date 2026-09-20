Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msgpack/original/socket_stream_example?download=true
inline.NumInlined: 771
inline.NumDeleted: 324
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN17json_like_visitor9visit_strEPKcj:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE15start_aggregateINS_2v16detail7fix_tagENS4_8array_svENS4_8array_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !62
  %i.b = and i8 %i.a, 15                          ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !92
  %i.f = icmp eq i8 %i.b, 0
  %i.g = load ptr, ptr %1, align 8, !tbaa !98, !nonnull !17, !align !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !96, !nonnull !17, !align !18 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !37   ; 9 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775807    ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.b
  %i.m = add nsw i64 %i.k, 1                      ; 3 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.q = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.r = load i64, ptr %i.o, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.s = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ]
  %.not.i.i.i.i.i = icmp ugt i64 %i.m, %i.s
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store i8 91, ptr %i.t, align 1, !tbaa !62
  br label %bb.f

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull @.str.19, i64 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %i.m, ptr %i.j, align 8, !tbaa !37
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store i8 0, ptr %i.v, align 1, !tbaa !62
  %i.w = load ptr, ptr %2, align 8, !tbaa !100, !nonnull !17, !align !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 112 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !96, !nonnull !17, !align !18 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !37  ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i64 noundef -1, i64 noundef 0) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i: ; preds = %bb.f
  %i.ac = add i64 %i.aa, -1                       ; 2 uses
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !37
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !62
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !96, !nonnull !17, !align !18 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !37 ; 5 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775807
  br i1 %i.ai, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  %i.aj = add nsw i64 %i.ah, 1                    ; 3 uses
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !36 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25
  %i.an = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.an)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25
  %i.ao = load i64, ptr %i.al, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29
  %i.ap = phi i64 [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29 ]
  %.not.i.i.i.i.i28 = icmp ugt i64 %i.aj, %i.ap
  br i1 %.not.i.i.i.i.i28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  store i8 93, ptr %i.aq, align 1, !tbaa !62
  br label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef %i.ah, i64 noundef 0, ptr noundef nonnull @.str.12, i64 noundef 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !37
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !36
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj
  store i8 0, ptr %i.as, align 1, !tbaa !62
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = tail call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack7consumeERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(160) %0) ; 2 uses
  %.not22 = icmp eq i32 %i.au, 0
  br i1 %.not22, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.aw = load ptr, ptr %0, align 8, !tbaa !91
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  store i64 %i.az, ptr %4, align 8, !tbaa !14
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30: ; preds = %bb.m
  %i.ba = add nsw i64 %i.k, 1                     ; 3 uses
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !36  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30
  %i.be = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.be)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30
  %i.bf = load i64, ptr %i.bc, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34
  %i.bg = phi i64 [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34 ]
  %.not.i.i.i.i.i33 = icmp ugt i64 %i.ba, %i.bg
  br i1 %.not.i.i.i.i.i33, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.k
  store i8 91, ptr %i.bh, align 1, !tbaa !62
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull @.str.19, i64 noundef 1)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i64 %i.ba, ptr %i.j, align 8, !tbaa !37
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba
  store i8 0, ptr %i.bj, align 1, !tbaa !62
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !77 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !78
  %.not.i.i.i = icmp eq ptr %i.bm, %i.bo
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.5.0.insert.ext.i = zext nneg i8 %i.b to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  store i64 %.sroa.5.0.insert.shift.i, ptr %i.bm, align 4
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !77
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !77
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !76 ; 5 uses
  %i.bs = ptrtoint ptr %i.bm to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 4 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775800
  br i1 %i.bv, label %bb.t, label %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.s
  %i.bw = ashr exact i64 %i.bu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %5 = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bw ; 2 uses
  %i.bx = icmp ult i64 %5, %i.bw
  %i.by = tail call i64 @llvm.umin.i64(i64 %5, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i.i.i.i36 = icmp ne i64 %i.bz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i36)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #24 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bu
  %.sroa.5.0.insert.ext11.i = zext nneg i8 %i.b to i64
  %.sroa.5.0.insert.shift12.i = shl nuw nsw i64 %.sroa.5.0.insert.ext11.i, 32
  store i64 %.sroa.5.0.insert.shift12.i, ptr %i.cc, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.br, %i.bm
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cb, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ], [ %i.br, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.cd = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !139, !noalias !138
  store i64 %i.cd, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !138, !noalias !139
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ce, %i.bm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cb, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bu) #25
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i: ; preds = %bb.u, %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  store ptr %i.cb, ptr %i.bk, align 8, !tbaa !76
  store ptr %i.cg, ptr %i.bl, align 8, !tbaa !77
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.ch, ptr %i.bn, align 8, !tbaa !78
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, %bb.r, %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ci, align 8, !tbaa !75
  br label %bb.v

bb.v:                                             ; preds = %bb.l, %.critedge
  %.2 = phi i32 [ 0, %.critedge ], [ %i.au, %bb.l ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE15start_aggregateINS_2v16detail7fix_tagENS4_6map_svENS4_6map_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %3, align 1, !tbaa !62
  %i.b = and i8 %i.a, 15                          ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !92
  %i.f = icmp eq i8 %i.b, 0
  %i.g = load ptr, ptr %1, align 8, !tbaa !102, !nonnull !17, !align !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !96, !nonnull !17, !align !18 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !37   ; 9 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775807    ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.b
  %i.m = add nsw i64 %i.k, 1                      ; 3 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.q = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.r = load i64, ptr %i.o, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.s = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ]
  %.not.i.i.i.i.i = icmp ugt i64 %i.m, %i.s
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store i8 123, ptr %i.t, align 1, !tbaa !62
  br label %bb.f

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull @.str.21, i64 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %i.m, ptr %i.j, align 8, !tbaa !37
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store i8 0, ptr %i.v, align 1, !tbaa !62
  %i.w = load ptr, ptr %2, align 8, !tbaa !104, !nonnull !17, !align !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 112 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !96, !nonnull !17, !align !18 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !37  ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i64 noundef -1, i64 noundef 0) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i: ; preds = %bb.f
  %i.ac = add i64 %i.aa, -1                       ; 2 uses
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !37
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !62
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !96, !nonnull !17, !align !18 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !37 ; 5 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775807
  br i1 %i.ai, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  %i.aj = add nsw i64 %i.ah, 1                    ; 3 uses
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !36 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25
  %i.an = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.an)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25
  %i.ao = load i64, ptr %i.al, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29
  %i.ap = phi i64 [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29 ]
  %.not.i.i.i.i.i28 = icmp ugt i64 %i.aj, %i.ap
  br i1 %.not.i.i.i.i.i28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  store i8 125, ptr %i.aq, align 1, !tbaa !62
  br label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef %i.ah, i64 noundef 0, ptr noundef nonnull @.str.15, i64 noundef 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !37
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !36
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj
  store i8 0, ptr %i.as, align 1, !tbaa !62
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = tail call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack7consumeERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(160) %0) ; 2 uses
  %.not22 = icmp eq i32 %i.au, 0
  br i1 %.not22, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.aw = load ptr, ptr %0, align 8, !tbaa !91
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  store i64 %i.az, ptr %4, align 8, !tbaa !14
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30: ; preds = %bb.m
  %i.ba = add nsw i64 %i.k, 1                     ; 3 uses
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !36  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30
  %i.be = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.be)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30
  %i.bf = load i64, ptr %i.bc, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34
  %i.bg = phi i64 [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34 ]
  %.not.i.i.i.i.i33 = icmp ugt i64 %i.ba, %i.bg
  br i1 %.not.i.i.i.i.i33, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.k
  store i8 123, ptr %i.bh, align 1, !tbaa !62
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull @.str.21, i64 noundef 1)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i64 %i.ba, ptr %i.j, align 8, !tbaa !37
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba
  store i8 0, ptr %i.bj, align 1, !tbaa !62
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !77 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !78
  %.not.i.i.i = icmp eq ptr %i.bm, %i.bo
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.5.0.insert.ext.i = zext nneg i8 %i.b to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, 1
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bm, align 4
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !77
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !77
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !76 ; 5 uses
  %i.bs = ptrtoint ptr %i.bm to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 4 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775800
  br i1 %i.bv, label %bb.t, label %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.s
  %i.bw = ashr exact i64 %i.bu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %5 = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bw ; 2 uses
  %i.bx = icmp ult i64 %5, %i.bw
  %i.by = tail call i64 @llvm.umin.i64(i64 %5, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i.i.i.i36 = icmp ne i64 %i.bz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i36)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #24 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bu
  %.sroa.5.0.insert.ext11.i = zext nneg i8 %i.b to i64
  %.sroa.5.0.insert.shift12.i = shl nuw nsw i64 %.sroa.5.0.insert.ext11.i, 32
  %.sroa.0.0.insert.insert9.i = or disjoint i64 %.sroa.5.0.insert.shift12.i, 1
  store i64 %.sroa.0.0.insert.insert9.i, ptr %i.cc, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.br, %i.bm
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cb, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ], [ %i.br, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.cd = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !144, !noalias !143
  store i64 %i.cd, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !143, !noalias !144
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ce, %i.bm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cb, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bu) #25
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i: ; preds = %bb.u, %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  store ptr %i.cb, ptr %i.bk, align 8, !tbaa !76
  store ptr %i.cg, ptr %i.bl, align 8, !tbaa !77
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.ch, ptr %i.bn, align 8, !tbaa !78
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, %bb.r, %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ci, align 8, !tbaa !75
  br label %bb.v

bb.v:                                             ; preds = %bb.l, %.critedge
  %.2 = phi i32 [ 0, %.critedge ], [ %i.au, %bb.l ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN17json_like_visitor13visit_booleanEb(ptr noundef nonnull align 8 dereferenceable(9) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !17, !align !18 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !37   ; 10 uses
  br i1 %1, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.c, -4
  %i.e = icmp eq i64 %i.d, 9223372036854775804
  br i1 %i.e, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.b
  %i.f = add nsw i64 %i.c, 4                      ; 3 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.j = icmp ult i64 %i.c, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.k = load i64, ptr %i.h, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.f, %i.l
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c
  store i32 1702195828, ptr %i.m, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.c, i64 noundef 0, ptr noundef nonnull @.str.22, i64 noundef 4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.f:                                             ; preds = %bb.a
  %i.n = icmp sgt i64 %i.c, 9223372036854775802
  br i1 %i.n, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i1

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i1: ; preds = %bb.f
  %i.o = add nsw i64 %i.c, 5                      ; 3 uses
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i7: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i1
  %i.s = icmp ult i64 %i.c, 16
  tail call void @llvm.assume(i1 %i.s)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i2: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i1
  %i.t = load i64, ptr %i.q, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i3: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i7
  %i.u = phi i64 [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i2 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i7 ]
  %.not.i.i.i4 = icmp ugt i64 %i.o, %i.u
  br i1 %.not.i.i.i4, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i3
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.v, ptr noundef nonnull align 1 dereferenceable(5) @.str.23, i64 5, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.c, i64 noundef 0, ptr noundef nonnull @.str.23, i64 noundef 5)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.i, %bb.h, %bb.e, %bb.d
  %.sink = phi i64 [ %i.f, %bb.e ], [ %i.f, %bb.d ], [ %i.o, %bb.h ], [ %i.o, %bb.i ] ; 2 uses
  store i64 %.sink, ptr %i.b, align 8, !tbaa !37
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sink
  store i8 0, ptr %i.x, align 1, !tbaa !62
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN17json_like_visitor9visit_nilEv(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !96, !nonnull !17, !align !18 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !37   ; 5 uses
  %i.d = and i64 %i.c, -4
  %i.e = icmp eq i64 %i.d, 9223372036854775804
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.f = add nsw i64 %i.c, 4                      ; 3 uses
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.j = icmp ult i64 %i.c, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.k = load i64, ptr %i.h, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.f, %i.l
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.c
  store i32 1819047278, ptr %i.m, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 noundef %i.c, i64 noundef 0, ptr noundef nonnull @.str.24, i64 noundef 4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %bb.c, %bb.d
  store i64 %i.f, ptr %i.b, align 8, !tbaa !37
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.f
  store i8 0, ptr %i.o, align 1, !tbaa !62
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN17json_like_visitor11parse_errorEmm(ptr noundef nonnull align 8 dereferenceable(9) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.25, i64 noundef 11) ; 0 uses
  %i.b = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !39
end_hunk_0
begin_hunk_1_@_ZN17json_like_visitor11parse_errorEmm:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE15start_aggregateItNS4_8array_svENS4_8array_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %3, align 1                ; 2 uses
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.a) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.d, ptr %i.b, align 8, !tbaa !92
  %i.e = icmp eq i16 %i.a, 0
  %i.f = load ptr, ptr %1, align 8, !tbaa !98, !nonnull !17, !align !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96, !nonnull !17, !align !18 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !37   ; 9 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775807    ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.b
  %i.l = add nsw i64 %i.j, 1                      ; 3 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.p = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.q = load i64, ptr %i.n, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ]
  %.not.i.i.i.i.i = icmp ugt i64 %i.l, %i.r
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  store i8 91, ptr %i.s, align 1, !tbaa !62
  br label %bb.f

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.j, i64 noundef 0, ptr noundef nonnull @.str.19, i64 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %i.l, ptr %i.i, align 8, !tbaa !37
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  store i8 0, ptr %i.u, align 1, !tbaa !62
  %i.v = load ptr, ptr %2, align 8, !tbaa !100, !nonnull !17, !align !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 112 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !96, !nonnull !17, !align !18 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !37   ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i64 noundef -1, i64 noundef 0) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i: ; preds = %bb.f
  %i.ab = add i64 %i.z, -1                        ; 2 uses
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !37
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 0, ptr %i.ad, align 1, !tbaa !62
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !96, !nonnull !17, !align !18 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !37 ; 5 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775807
  br i1 %i.ah, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  %i.ai = add nsw i64 %i.ag, 1                    ; 3 uses
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25
  %i.am = icmp ult i64 %i.ag, 16
  tail call void @llvm.assume(i1 %i.am)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29
  %i.ao = phi i64 [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29 ]
  %.not.i.i.i.i.i28 = icmp ugt i64 %i.ai, %i.ao
  br i1 %.not.i.i.i.i.i28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  store i8 93, ptr %i.ap, align 1, !tbaa !62
  br label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef %i.ag, i64 noundef 0, ptr noundef nonnull @.str.12, i64 noundef 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !37
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store i8 0, ptr %i.ar, align 1, !tbaa !62
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = tail call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack7consumeERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(160) %0) ; 2 uses
  %.not22 = icmp eq i32 %i.at, 0
  br i1 %.not22, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.av = load ptr, ptr %0, align 8, !tbaa !91
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  store i64 %i.ay, ptr %4, align 8, !tbaa !14
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  br i1 %i.k, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30: ; preds = %bb.m
  %i.az = add nsw i64 %i.j, 1                     ; 3 uses
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !36  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30
  %i.bd = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.bd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30
  %i.be = load i64, ptr %i.bb, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34
  %i.bf = phi i64 [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34 ]
  %.not.i.i.i.i.i33 = icmp ugt i64 %i.az, %i.bf
  br i1 %.not.i.i.i.i.i33, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.j
  store i8 91, ptr %i.bg, align 1, !tbaa !62
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.j, i64 noundef 0, ptr noundef nonnull @.str.19, i64 noundef 1)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i64 %i.az, ptr %i.i, align 8, !tbaa !37
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az
  store i8 0, ptr %i.bi, align 1, !tbaa !62
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !77 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !78
  %.not.i.i.i = icmp eq ptr %i.bl, %i.bn
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.5.0.insert.ext.i = zext i16 %rev.i.i to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  store i64 %.sroa.5.0.insert.shift.i, ptr %i.bl, align 4
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !77
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !77
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.bq = load ptr, ptr %i.bj, align 8, !tbaa !76 ; 5 uses
  %i.br = ptrtoint ptr %i.bl to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 4 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.t, label %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.s
  %i.bv = ashr exact i64 %i.bt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %5 = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bv ; 2 uses
  %i.bw = icmp ult i64 %5, %i.bv
  %i.bx = tail call i64 @llvm.umin.i64(i64 %5, i64 1152921504606846975)
  %i.by = select i1 %i.bw, i64 1152921504606846975, i64 %i.bx ; 3 uses
  %.not.i.i.i.i.i36 = icmp ne i64 %i.by, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i36)
  %i.bz = shl nuw nsw i64 %i.by, 3
  %i.ca = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #24 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bt
  %.sroa.5.0.insert.ext11.i = zext i16 %rev.i.i to i64
  %.sroa.5.0.insert.shift12.i = shl nuw nsw i64 %.sroa.5.0.insert.ext11.i, 32
  store i64 %.sroa.5.0.insert.shift12.i, ptr %i.cb, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.bl
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ca, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bq, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.cc = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !150, !noalias !149
  store i64 %i.cc, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !149, !noalias !150
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cd, %i.bl
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ca, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bt) #25
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i: ; preds = %bb.u, %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  store ptr %i.ca, ptr %i.bj, align 8, !tbaa !76
  store ptr %i.cf, ptr %i.bk, align 8, !tbaa !77
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.by
  store ptr %i.cg, ptr %i.bm, align 8, !tbaa !78
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, %bb.r, %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ch, align 8, !tbaa !75
  br label %bb.v

bb.v:                                             ; preds = %bb.l, %.critedge
  %.2 = phi i32 [ 0, %.critedge ], [ %i.at, %bb.l ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE15start_aggregateIjNS4_8array_svENS4_8array_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %3, align 1                ; 2 uses
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !92
  %i.f = icmp eq i32 %i.a, 0
  %i.g = load ptr, ptr %1, align 8, !tbaa !98, !nonnull !17, !align !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !96, !nonnull !17, !align !18 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !37   ; 9 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775807    ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.b
  %i.m = add nsw i64 %i.k, 1                      ; 3 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.q = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.r = load i64, ptr %i.o, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.s = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ]
  %.not.i.i.i.i.i = icmp ugt i64 %i.m, %i.s
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store i8 91, ptr %i.t, align 1, !tbaa !62
  br label %bb.f

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull @.str.19, i64 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %i.m, ptr %i.j, align 8, !tbaa !37
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store i8 0, ptr %i.v, align 1, !tbaa !62
  %i.w = load ptr, ptr %2, align 8, !tbaa !100, !nonnull !17, !align !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 112 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !96, !nonnull !17, !align !18 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !37  ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i64 noundef -1, i64 noundef 0) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i: ; preds = %bb.f
  %i.ac = add i64 %i.aa, -1                       ; 2 uses
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !37
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !62
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !96, !nonnull !17, !align !18 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !37 ; 5 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775807
  br i1 %i.ai, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  %i.aj = add nsw i64 %i.ah, 1                    ; 3 uses
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !36 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25
  %i.an = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.an)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25
  %i.ao = load i64, ptr %i.al, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29
  %i.ap = phi i64 [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29 ]
  %.not.i.i.i.i.i28 = icmp ugt i64 %i.aj, %i.ap
  br i1 %.not.i.i.i.i.i28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  store i8 93, ptr %i.aq, align 1, !tbaa !62
  br label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef %i.ah, i64 noundef 0, ptr noundef nonnull @.str.12, i64 noundef 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !37
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !36
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj
  store i8 0, ptr %i.as, align 1, !tbaa !62
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = tail call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack7consumeERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(160) %0) ; 2 uses
  %.not22 = icmp eq i32 %i.au, 0
  br i1 %.not22, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.aw = load ptr, ptr %0, align 8, !tbaa !91
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  store i64 %i.az, ptr %4, align 8, !tbaa !14
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30: ; preds = %bb.m
  %i.ba = add nsw i64 %i.k, 1                     ; 3 uses
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !36  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30
  %i.be = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.be)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30
  %i.bf = load i64, ptr %i.bc, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34
  %i.bg = phi i64 [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34 ]
  %.not.i.i.i.i.i33 = icmp ugt i64 %i.ba, %i.bg
  br i1 %.not.i.i.i.i.i33, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.k
  store i8 91, ptr %i.bh, align 1, !tbaa !62
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull @.str.19, i64 noundef 1)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i64 %i.ba, ptr %i.j, align 8, !tbaa !37
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba
  store i8 0, ptr %i.bj, align 1, !tbaa !62
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !77 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !78
  %.not.i.i.i = icmp eq ptr %i.bm, %i.bo
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.5.0.insert.ext.i = zext i32 %i.b to i64
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.insert.ext.i, 32
  store i64 %.sroa.5.0.insert.shift.i, ptr %i.bm, align 4
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !77
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !77
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !76 ; 5 uses
  %i.bs = ptrtoint ptr %i.bm to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 4 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775800
  br i1 %i.bv, label %bb.t, label %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.s
  %i.bw = ashr exact i64 %i.bu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %5 = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bw ; 2 uses
  %i.bx = icmp ult i64 %5, %i.bw
  %i.by = tail call i64 @llvm.umin.i64(i64 %5, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i.i.i.i36 = icmp ne i64 %i.bz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i36)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #24 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bu
  %.sroa.5.0.insert.ext11.i = zext i32 %i.b to i64
  %.sroa.5.0.insert.shift12.i = shl nuw i64 %.sroa.5.0.insert.ext11.i, 32
  store i64 %.sroa.5.0.insert.shift12.i, ptr %i.cc, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.br, %i.bm
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cb, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ], [ %i.br, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.cd = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !155, !noalias !154
  store i64 %i.cd, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !154, !noalias !155
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ce, %i.bm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cb, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bu) #25
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i: ; preds = %bb.u, %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  store ptr %i.cb, ptr %i.bk, align 8, !tbaa !76
  store ptr %i.cg, ptr %i.bl, align 8, !tbaa !77
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.ch, ptr %i.bn, align 8, !tbaa !78
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, %bb.r, %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ci, align 8, !tbaa !75
  br label %bb.v

bb.v:                                             ; preds = %bb.l, %.critedge
  %.2 = phi i32 [ 0, %.critedge ], [ %i.au, %bb.l ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE15start_aggregateItNS4_6map_svENS4_6map_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i16, ptr %3, align 1                ; 2 uses
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.a) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store ptr %i.d, ptr %i.b, align 8, !tbaa !92
  %i.e = icmp eq i16 %i.a, 0
  %i.f = load ptr, ptr %1, align 8, !tbaa !102, !nonnull !17, !align !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !96, !nonnull !17, !align !18 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !37   ; 9 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775807    ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  br i1 %i.k, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.b
  %i.l = add nsw i64 %i.j, 1                      ; 3 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.p = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.q = load i64, ptr %i.n, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ]
  %.not.i.i.i.i.i = icmp ugt i64 %i.l, %i.r
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.j
  store i8 123, ptr %i.s, align 1, !tbaa !62
  br label %bb.f

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.j, i64 noundef 0, ptr noundef nonnull @.str.21, i64 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %i.l, ptr %i.i, align 8, !tbaa !37
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  store i8 0, ptr %i.u, align 1, !tbaa !62
  %i.v = load ptr, ptr %2, align 8, !tbaa !104, !nonnull !17, !align !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 112 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !96, !nonnull !17, !align !18 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !37   ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i64 noundef -1, i64 noundef 0) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i: ; preds = %bb.f
  %i.ab = add i64 %i.z, -1                        ; 2 uses
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !37
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !36
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ab
  store i8 0, ptr %i.ad, align 1, !tbaa !62
  %i.ae = load ptr, ptr %i.w, align 8, !tbaa !96, !nonnull !17, !align !18 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !37 ; 5 uses
  %i.ah = icmp eq i64 %i.ag, 9223372036854775807
  br i1 %i.ah, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  %i.ai = add nsw i64 %i.ag, 1                    ; 3 uses
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25
  %i.am = icmp ult i64 %i.ag, 16
  tail call void @llvm.assume(i1 %i.am)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25
  %i.an = load i64, ptr %i.ak, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29
  %i.ao = phi i64 [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29 ]
  %.not.i.i.i.i.i28 = icmp ugt i64 %i.ai, %i.ao
  br i1 %.not.i.i.i.i.i28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ag
  store i8 125, ptr %i.ap, align 1, !tbaa !62
  br label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef %i.ag, i64 noundef 0, ptr noundef nonnull @.str.15, i64 noundef 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !37
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ai
  store i8 0, ptr %i.ar, align 1, !tbaa !62
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = tail call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack7consumeERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(160) %0) ; 2 uses
  %.not22 = icmp eq i32 %i.at, 0
  br i1 %.not22, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.av = load ptr, ptr %0, align 8, !tbaa !91
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  store i64 %i.ay, ptr %4, align 8, !tbaa !14
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  br i1 %i.k, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30: ; preds = %bb.m
  %i.az = add nsw i64 %i.j, 1                     ; 3 uses
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !36  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30
  %i.bd = icmp ult i64 %i.j, 16
  tail call void @llvm.assume(i1 %i.bd)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30
  %i.be = load i64, ptr %i.bb, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34
  %i.bf = phi i64 [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34 ]
  %.not.i.i.i.i.i33 = icmp ugt i64 %i.az, %i.bf
  br i1 %.not.i.i.i.i.i33, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.j
  store i8 123, ptr %i.bg, align 1, !tbaa !62
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.j, i64 noundef 0, ptr noundef nonnull @.str.21, i64 noundef 1)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i64 %i.az, ptr %i.i, align 8, !tbaa !37
  %i.bh = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.az
  store i8 0, ptr %i.bi, align 1, !tbaa !62
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !77 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !78
  %.not.i.i.i = icmp eq ptr %i.bl, %i.bn
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.5.0.insert.ext.i = zext i16 %rev.i.i to i64
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, 1
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bl, align 4
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !77
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr %i.bp, ptr %i.bk, align 8, !tbaa !77
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.bq = load ptr, ptr %i.bj, align 8, !tbaa !76 ; 5 uses
  %i.br = ptrtoint ptr %i.bl to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 4 uses
  %i.bu = icmp eq i64 %i.bt, 9223372036854775800
  br i1 %i.bu, label %bb.t, label %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.s
  %i.bv = ashr exact i64 %i.bt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 1)
  %5 = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bv ; 2 uses
  %i.bw = icmp ult i64 %5, %i.bv
  %i.bx = tail call i64 @llvm.umin.i64(i64 %5, i64 1152921504606846975)
  %i.by = select i1 %i.bw, i64 1152921504606846975, i64 %i.bx ; 3 uses
  %.not.i.i.i.i.i36 = icmp ne i64 %i.by, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i36)
  %i.bz = shl nuw nsw i64 %i.by, 3
  %i.ca = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bz) #24 ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.bt
  %.sroa.5.0.insert.ext11.i = zext i16 %rev.i.i to i64
  %.sroa.5.0.insert.shift12.i = shl nuw nsw i64 %.sroa.5.0.insert.ext11.i, 32
  %.sroa.0.0.insert.insert9.i = or disjoint i64 %.sroa.5.0.insert.shift12.i, 1
  store i64 %.sroa.0.0.insert.insert9.i, ptr %i.cb, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bq, %i.bl
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ca, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bq, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.cc = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !160, !noalias !159
  store i64 %i.cc, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !159, !noalias !160
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cd, %i.bl
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ca, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bt) #25
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i: ; preds = %bb.u, %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  store ptr %i.ca, ptr %i.bj, align 8, !tbaa !76
  store ptr %i.cf, ptr %i.bk, align 8, !tbaa !77
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %i.by
  store ptr %i.cg, ptr %i.bm, align 8, !tbaa !78
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, %bb.r, %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ch, align 8, !tbaa !75
  br label %bb.v

bb.v:                                             ; preds = %bb.l, %.critedge
  %.2 = phi i32 [ 0, %.critedge ], [ %i.at, %bb.l ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE15start_aggregateIjNS4_6map_svENS4_6map_evEEENS0_12parse_returnERKT0_RKT1_PKcRm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %3, align 1                ; 2 uses
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store ptr %i.e, ptr %i.c, align 8, !tbaa !92
  %i.f = icmp eq i32 %i.a, 0
  %i.g = load ptr, ptr %1, align 8, !tbaa !102, !nonnull !17, !align !18
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !96, !nonnull !17, !align !18 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !37   ; 9 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775807    ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.b
  %i.m = add nsw i64 %i.k, 1                      ; 3 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !36   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.q = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.q)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.r = load i64, ptr %i.o, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.s = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i ]
  %.not.i.i.i.i.i = icmp ugt i64 %i.m, %i.s
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  store i8 123, ptr %i.t, align 1, !tbaa !62
  br label %bb.f

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull @.str.21, i64 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i64 %i.m, ptr %i.j, align 8, !tbaa !37
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.m
  store i8 0, ptr %i.v, align 1, !tbaa !62
  %i.w = load ptr, ptr %2, align 8, !tbaa !104, !nonnull !17, !align !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 112 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !96, !nonnull !17, !align !18 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !37  ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.13, i64 noundef -1, i64 noundef 0) #22
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i: ; preds = %bb.f
  %i.ac = add i64 %i.aa, -1                       ; 2 uses
  store i64 %i.ac, ptr %i.z, align 8, !tbaa !37
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !36
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1, !tbaa !62
  %i.af = load ptr, ptr %i.x, align 8, !tbaa !96, !nonnull !17, !align !18 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !37 ; 5 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775807
  br i1 %i.ai, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit.i.i
  %i.aj = add nsw i64 %i.ah, 1                    ; 3 uses
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !36 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25
  %i.an = icmp ult i64 %i.ah, 16
  tail call void @llvm.assume(i1 %i.an)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i25
  %i.ao = load i64, ptr %i.al, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29
  %i.ap = phi i64 [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i29 ]
  %.not.i.i.i.i.i28 = icmp ugt i64 %i.aj, %i.ap
  br i1 %.not.i.i.i.i.i28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ah
  store i8 125, ptr %i.aq, align 1, !tbaa !62
  br label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i27
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef %i.ah, i64 noundef 0, ptr noundef nonnull @.str.15, i64 noundef 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i64 %i.aj, ptr %i.ag, align 8, !tbaa !37
  %i.ar = load ptr, ptr %i.af, align 8, !tbaa !36
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj
  store i8 0, ptr %i.as, align 1, !tbaa !62
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = tail call noundef i32 @_ZN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack7consumeERS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(160) %0) ; 2 uses
  %.not22 = icmp eq i32 %i.au, 0
  br i1 %.not22, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.aw = load ptr, ptr %0, align 8, !tbaa !91
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  store i64 %i.az, ptr %4, align 8, !tbaa !14
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30: ; preds = %bb.m
  %i.ba = add nsw i64 %i.k, 1                     ; 3 uses
  %i.bb = load ptr, ptr %i.i, align 8, !tbaa !36  ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30
  %i.be = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.be)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i30
  %i.bf = load i64, ptr %i.bc, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34
  %i.bg = phi i64 [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i31 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i34 ]
  %.not.i.i.i.i.i33 = icmp ugt i64 %i.ba, %i.bg
  br i1 %.not.i.i.i.i.i33, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.k
  store i8 123, ptr %i.bh, align 1, !tbaa !62
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i.i32
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef %i.k, i64 noundef 0, ptr noundef nonnull @.str.21, i64 noundef 1)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  store i64 %i.ba, ptr %i.j, align 8, !tbaa !37
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.ba
  store i8 0, ptr %i.bj, align 1, !tbaa !62
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !77 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !78
  %.not.i.i.i = icmp eq ptr %i.bm, %i.bo
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.5.0.insert.ext.i = zext i32 %i.b to i64
  %.sroa.5.0.insert.shift.i = shl nuw i64 %.sroa.5.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, 1
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.bm, align 4
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !77
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bq, ptr %i.bl, align 8, !tbaa !77
  br label %.critedge

bb.s:                                             ; preds = %bb.q
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !76 ; 5 uses
  %i.bs = ptrtoint ptr %i.bm to i64
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = sub i64 %i.bs, %i.bt                    ; 4 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775800
  br i1 %i.bv, label %bb.t, label %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.t:                                             ; preds = %bb.s
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #22
  unreachable

_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.s
  %i.bw = ashr exact i64 %i.bu, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %5 = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.bw ; 2 uses
  %i.bx = icmp ult i64 %5, %i.bw
  %i.by = tail call i64 @llvm.umin.i64(i64 %5, i64 1152921504606846975)
  %i.bz = select i1 %i.bx, i64 1152921504606846975, i64 %i.by ; 3 uses
  %.not.i.i.i.i.i36 = icmp ne i64 %i.bz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i36)
  %i.ca = shl nuw nsw i64 %i.bz, 3
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #24 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bu
  %.sroa.5.0.insert.ext11.i = zext i32 %i.b to i64
  %.sroa.5.0.insert.shift12.i = shl nuw i64 %.sroa.5.0.insert.ext11.i, 32
  %.sroa.0.0.insert.insert9.i = or disjoint i64 %.sroa.5.0.insert.shift12.i, 1
  store i64 %.sroa.0.0.insert.insert9.i, ptr %i.cc, align 4
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.br, %i.bm
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cb, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i.i ], [ %i.br, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.cd = load i64, ptr %.0911.i.i.i.i.i.i.i, align 4, !alias.scope !165, !noalias !164
  store i64 %i.cd, ptr %.012.i.i.i.i.i.i.i, align 4, !alias.scope !164, !noalias !165
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ce, %i.bm
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cb, %_ZNKSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bu) #25
  br label %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i: ; preds = %bb.u, %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i.i.i.i
  store ptr %i.cb, ptr %i.bk, align 8, !tbaa !76
  store ptr %i.cg, ptr %i.bl, align 8, !tbaa !77
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.ch, ptr %i.bn, align 8, !tbaa !78
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorIN7msgpack2v26detail7contextI17json_like_printerE12unpack_stack10stack_elemESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i.i, %bb.r, %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ci, align 8, !tbaa !75
  br label %bb.v

bb.v:                                             ; preds = %bb.l, %.critedge
  %.2 = phi i32 [ 0, %.critedge ], [ %i.au, %bb.l ]
  ret i32 %.2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37   ; 6 uses
  %.neg.i = add i64 %2, 9223372036854775807
  %i.c = sub i64 %.neg.i, %i.b
  %i.d = icmp ult i64 %i.c, %4
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #22
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit: ; preds = %bb.a
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !36     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit
  %i.k = load i64, ptr %i.h, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %.not = icmp ugt i64 %i.f, %i.l
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 %1 ; 5 uses
  %i.n = add i64 %2, %1                           ; 2 uses
  %i.o = sub i64 %i.b, %i.n                       ; 3 uses
  %i.p = icmp ult ptr %3, %i.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.b
  %i.r = icmp ult ptr %i.q, %3
  %i.s = select i1 %i.p, i1 true, i1 %i.r
  br i1 %i.s, label %bb.d, label %bb.j, !prof !89

bb.d:                                             ; preds = %bb.c
  %.not35 = icmp eq i64 %i.b, %i.n
  %.not36 = icmp eq i64 %2, %4
  %or.cond = or i1 %.not36, %.not35
  br i1 %or.cond, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 %4 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %2 ; 2 uses
  %cond38 = icmp eq i64 %i.o, 1
  br i1 %cond38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.u, align 1, !tbaa !62
  store i8 %i.v, ptr %i.t, align 1, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.u, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit: ; preds = %bb.g, %bb.f, %bb.d
  switch i64 %4, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  %i.w = load i8, ptr %3, align 1, !tbaa !62
  store i8 %i.w, ptr %i.m, align 1, !tbaa !62
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.j:                                             ; preds = %bb.c
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.m, i64 noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef %i.o) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit, %bb.i, %bb.h, %bb.j, %bb.k
  store i64 %i.f, ptr %i.a, align 8, !tbaa !37
  %i.x = load ptr, ptr %0, align 8, !tbaa !36
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f
  store i8 0, ptr %i.y, align 1, !tbaa !62
  ret ptr %0
}

; Function Attrs: cold
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_replace_coldEPcmPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37   ; 5 uses
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = sub i64 %4, %2
  %i.f = add i64 %i.e, %i.b                       ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !36     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !tbaa !62
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ] ; 2 uses
  %i.m = icmp slt i64 %i.f, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #22
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
end_hunk_1
