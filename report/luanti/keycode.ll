Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/keycode?download=true
inline.NumInlined: 2173
inline.NumDeleted: 527
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN8KeyPressC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:.noexc.i

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN8KeyPressC2ERKN6SEvent9SKeyInputE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 5)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.Keycode, align 4             ; 5 uses
  store i32 0, ptr %0, align 4, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i8 0, ptr %i.a, align 4, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !125  ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !126  ; 2 uses
  %i.f = load i32, ptr %1, align 4, !tbaa !127
  %i.g = load ptr, ptr @_ZN15RenderingEngine11s_singletonE, align 8, !tbaa !30 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !43   ; 3 uses
  %.not2.i.i = icmp eq ptr %i.i, null
  br i1 %.not2.i.i, label %bb.d, label %_ZN8KeyPress11loadFromKeyE9EKEY_CODEw.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.333, ptr noundef nonnull @.str.334, i32 noundef 117, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN15RenderingEngine14get_raw_deviceEv) #25
  unreachable

_ZN8KeyPress11loadFromKeyE9EKEY_CODEw.exit:       ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = add i32 %i.e, -256
  %i.l = icmp ult i32 %i.k, -255                  ; 2 uses
  %spec.select.i.i.i = select i1 %i.l, i32 %i.f, i32 %i.e
  %spec.select3.i.i.i = zext i1 %i.l to i8
  store i32 %spec.select.i.i.i, ptr %2, align 4, !tbaa !21
  store i8 %spec.select3.i.i.i, ptr %i.j, align 4, !tbaa !45
  %i.m = load ptr, ptr %i.i, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 416
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call noundef i32 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 4 dereferenceable(5) %2), !inline_history !60
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN8KeyPress11loadFromKeyE9EKEY_CODEw.exit
  %storemerge = phi i32 [ %i.p, %_ZN8KeyPress11loadFromKeyE9EKEY_CODEw.exit ], [ %i.c, %bb.a ]
  store i32 %storemerge, ptr %0, align 4, !tbaa !49
  store i8 0, ptr %i.a, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN8KeyPressC2ERKN6SEvent11SMouseInputE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 5)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr %0, align 4, !tbaa !49
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i8 0, ptr %i.a, align 4, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !130
  %switch = icmp ult i32 %i.c, 8
  br i1 %switch, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !21
  store i32 %i.e, ptr %0, align 4, !tbaa !49
  store i8 1, ptr %i.a, align 4, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK8KeyPress3symB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !51
  switch i8 %i.b, label %._crit_edge.i.i34 [
    i8 0, label %_ZNK8KeyPress3getILNS_9InputTypeE0EEENSt19variant_alternativeIXscmT_ESt7variantIJjjN7KeyType1TEEEE4typeEv.exit
    i8 1, label %_ZNK8KeyPress3getILNS_9InputTypeE1EEENSt19variant_alternativeIXscmT_ESt7variantIJjjN7KeyType1TEEEE4typeEv.exit
  ]

_ZNK8KeyPress3getILNS_9InputTypeE0EEENSt19variant_alternativeIXscmT_ESt7variantIJjjN7KeyType1TEEEE4typeEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.c = load i32, ptr %1, align 4, !tbaa !62     ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.d = icmp ult i32 %i.c, 10
  br i1 %i.d, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK8KeyPress3getILNS_9InputTypeE0EEENSt19variant_alternativeIXscmT_ESt7variantIJjjN7KeyType1TEEEE4typeEv.exit, %bb.g
  %.030.i.i = phi i32 [ %i.l, %bb.g ], [ 1, %_ZNK8KeyPress3getILNS_9InputTypeE0EEENSt19variant_alternativeIXscmT_ESt7variantIJjjN7KeyType1TEEEE4typeEv.exit ] ; 4 uses
  %.02329.i.i = phi i32 [ %i.k, %bb.g ], [ %i.c, %_ZNK8KeyPress3getILNS_9InputTypeE0EEENSt19variant_alternativeIXscmT_ESt7variantIJjjN7KeyType1TEEEE4typeEv.exit ] ; 5 uses
  %i.e = icmp ult i32 %.02329.i.i, 100
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = add i32 %.030.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.g = icmp ult i32 %.02329.i.i, 1000
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = add i32 %.030.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = icmp ult i32 %.02329.i.i, 10000
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = add i32 %.030.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.g:                                             ; preds = %bb.e
  %i.k = udiv i32 %.02329.i.i, 10000
  %i.l = add i32 %.030.i.i, 4                     ; 2 uses
  %i.m = icmp ult i32 %.02329.i.i, 100000
  br i1 %i.m, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !133

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.g, %bb.f, %bb.d, %bb.b, %_ZNK8KeyPress3getILNS_9InputTypeE0EEENSt19variant_alternativeIXscmT_ESt7variantIJjjN7KeyType1TEEEE4typeEv.exit
  %.022.i.i = phi i32 [ %i.j, %bb.f ], [ %i.f, %bb.b ], [ %i.h, %bb.d ], [ 1, %_ZNK8KeyPress3getILNS_9InputTypeE0EEENSt19variant_alternativeIXscmT_ESt7variantIJjjN7KeyType1TEEEE4typeEv.exit ], [ %i.l, %bb.g ]
  %i.n = zext i32 %.022.i.i to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.o, ptr %2, align 8, !tbaa !16, !alias.scope !141
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.n, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.p = load ptr, ptr %2, align 8, !tbaa !20, !alias.scope !141 ; 4 uses
  %i.q = icmp ugt i32 %i.c, 99
  br i1 %i.q, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !22, !alias.scope !141
  %i.t = trunc i64 %i.s to i32
  %i.u = add i32 %i.t, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.x, %.lr.ph.i2.i ], [ %i.c, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.ai, %.lr.ph.i2.i ], [ %i.u, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.v = urem i32 %.020.i.i, 100
  %i.w = shl nuw nsw i32 %i.v, 1
  %i.x = udiv i32 %.020.i.i, 100                  ; 2 uses
  %i.y = zext nneg i32 %i.w to i64
  %i.z = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !21, !noalias !141
  %i.ac = zext i32 %.01819.i.i to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ac
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !21
  %i.ae = load i8, ptr %i.z, align 2, !tbaa !21, !noalias !141
  %i.af = add i32 %.01819.i.i, -1
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ag
  store i8 %i.ae, ptr %i.ah, align 1, !tbaa !21
  %i.ai = add i32 %.01819.i.i, -2
  %i.aj = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.aj, label %.lr.ph.i2.i, label %._crit_edge.i.i, !llvm.loop !134

._crit_edge.i.i:                                  ; preds = %.lr.ph.i2.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i
  %.0.lcssa.i.i = phi i32 [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i ], [ %i.x, %.lr.ph.i2.i ] ; 3 uses
  %i.ak = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.al = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.am ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !21, !noalias !141
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !21
  %i.ar = load i8, ptr %i.an, align 2, !tbaa !21, !noalias !141
  br label %_ZNSt7__cxx119to_stringEj.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.as = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.at = or disjoint i8 %i.as, 48
  br label %_ZNSt7__cxx119to_stringEj.exit

bb.j:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #28
  unreachable

_ZNSt7__cxx119to_stringEj.exit:                   ; preds = %bb.h, %bb.i
  %storemerge.i.i = phi i8 [ %i.at, %bb.i ], [ %i.ar, %bb.h ]
  store i8 %storemerge.i.i, ptr %i.p, align 1, !tbaa !21
  %i.aw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.319, i64 noundef 16)
          to label %.noexc unwind label %bb.m     ; 6 uses

.noexc:                                           ; preds = %_ZNSt7__cxx119to_stringEj.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ax, ptr %0, align 8, !tbaa !16, !alias.scope !142
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !20 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 5 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.k:                                             ; preds = %.noexc
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !22 ; 3 uses
  %i.bd = icmp ult i64 %i.bc, 16
  call void @llvm.assume(i1 %i.bd)
  %i.be = add nuw nsw i64 %i.bc, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.be, i1 false)
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.ay, ptr %0, align 8, !tbaa !20, !alias.scope !142
  %i.bf = load i64, ptr %i.az, align 8, !tbaa !21
  store i64 %i.bf, ptr %i.ax, align 8, !tbaa !21, !alias.scope !142
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !22
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %i.bg = phi i64 [ %i.bc, %bb.k ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bg, ptr %i.bi, align 8, !tbaa !22, !alias.scope !142
  store ptr %i.az, ptr %i.aw, align 8, !tbaa !20
  store i64 0, ptr %i.bh, align 8, !tbaa !22
  store i8 0, ptr %i.az, align 8, !tbaa !21
  %i.bj = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.o
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.l
  %i.bl = load i64, ptr %i.o, align 8, !tbaa !21
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.z

bb.m:                                             ; preds = %_ZNSt7__cxx119to_stringEj.exit
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.o
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5: ; preds = %bb.m
  %i.bq = load i64, ptr %i.o, align 8, !tbaa !21
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.aa

_ZNK8KeyPress3getILNS_9InputTypeE1EEENSt19variant_alternativeIXscmT_ESt7variantIJjjN7KeyType1TEEEE4typeEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.bs = load i32, ptr %1, align 4, !tbaa !62    ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.bt = icmp ult i32 %i.bs, 10
  br i1 %i.bt, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i12, label %.lr.ph.i.i9

.lr.ph.i.i9:                                      ; preds = %_ZNK8KeyPress3getILNS_9InputTypeE1EEENSt19variant_alternativeIXscmT_ESt7variantIJjjN7KeyType1TEEEE4typeEv.exit, %bb.s
  %.030.i.i10 = phi i32 [ %i.cb, %bb.s ], [ 1, %_ZNK8KeyPress3getILNS_9InputTypeE1EEENSt19variant_alternativeIXscmT_ESt7variantIJjjN7KeyType1TEEEE4typeEv.exit ] ; 4 uses
  %.02329.i.i11 = phi i32 [ %i.ca, %bb.s ], [ %i.bs, %_ZNK8KeyPress3getILNS_9InputTypeE1EEENSt19variant_alternativeIXscmT_ESt7variantIJjjN7KeyType1TEEEE4typeEv.exit ] ; 5 uses
  %i.bu = icmp ult i32 %.02329.i.i11, 100
  br i1 %i.bu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i9
  %i.bv = add i32 %.030.i.i10, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i12

bb.o:                                             ; preds = %.lr.ph.i.i9
  %i.bw = icmp ult i32 %.02329.i.i11, 1000
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bx = add i32 %.030.i.i10, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i12

bb.q:                                             ; preds = %bb.o
  %i.by = icmp ult i32 %.02329.i.i11, 10000
  br i1 %i.by, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bz = add i32 %.030.i.i10, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i12

bb.s:                                             ; preds = %bb.q
  %i.ca = udiv i32 %.02329.i.i11, 10000
  %i.cb = add i32 %.030.i.i10, 4                  ; 2 uses
  %i.cc = icmp ult i32 %.02329.i.i11, 100000
  br i1 %i.cc, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i12, label %.lr.ph.i.i9, !llvm.loop !133

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i12:  ; preds = %bb.s, %bb.r, %bb.p, %bb.n, %_ZNK8KeyPress3getILNS_9InputTypeE1EEENSt19variant_alternativeIXscmT_ESt7variantIJjjN7KeyType1TEEEE4typeEv.exit
  %.022.i.i13 = phi i32 [ %i.bz, %bb.r ], [ %i.bv, %bb.n ], [ %i.bx, %bb.p ], [ 1, %_ZNK8KeyPress3getILNS_9InputTypeE1EEENSt19variant_alternativeIXscmT_ESt7variantIJjjN7KeyType1TEEEE4typeEv.exit ], [ %i.cb, %bb.s ]
  %i.cd = zext i32 %.022.i.i13 to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.ce, ptr %3, align 8, !tbaa !16, !alias.scope !143
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.cd, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i14 unwind label %bb.v

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i14: ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i12
  %i.cf = load ptr, ptr %3, align 8, !tbaa !20, !alias.scope !143 ; 4 uses
  %i.cg = icmp ugt i32 %i.bs, 99
  br i1 %i.cg, label %.lr.ph.preheader.i.i18, label %._crit_edge.i.i15

.lr.ph.preheader.i.i18:                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i14
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !22, !alias.scope !143
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = add i32 %i.cj, -1
  br label %.lr.ph.i2.i19

.lr.ph.i2.i19:                                    ; preds = %.lr.ph.i2.i19, %.lr.ph.preheader.i.i18
  %.020.i.i20 = phi i32 [ %i.cn, %.lr.ph.i2.i19 ], [ %i.bs, %.lr.ph.preheader.i.i18 ] ; 3 uses
  %.01819.i.i21 = phi i32 [ %i.cy, %.lr.ph.i2.i19 ], [ %i.ck, %.lr.ph.preheader.i.i18 ] ; 3 uses
  %i.cl = urem i32 %.020.i.i20, 100
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = udiv i32 %.020.i.i20, 100               ; 2 uses
  %i.co = zext nneg i32 %i.cm to i64
  %i.cp = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !21, !noalias !143
  %i.cs = zext i32 %.01819.i.i21 to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cs
  store i8 %i.cr, ptr %i.ct, align 1, !tbaa !21
  %i.cu = load i8, ptr %i.cp, align 2, !tbaa !21, !noalias !143
  %i.cv = add i32 %.01819.i.i21, -1
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cw
  store i8 %i.cu, ptr %i.cx, align 1, !tbaa !21
  %i.cy = add i32 %.01819.i.i21, -2
  %i.cz = icmp ugt i32 %.020.i.i20, 9999
  br i1 %i.cz, label %.lr.ph.i2.i19, label %._crit_edge.i.i15, !llvm.loop !134

._crit_edge.i.i15:                                ; preds = %.lr.ph.i2.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i14
  %.0.lcssa.i.i16 = phi i32 [ %i.bs, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit.i14 ], [ %i.cn, %.lr.ph.i2.i19 ] ; 3 uses
  %i.da = icmp samesign ugt i32 %.0.lcssa.i.i16, 9
  br i1 %i.da, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i15
  %i.db = shl nuw nsw i32 %.0.lcssa.i.i16, 1
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !21, !noalias !143
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !21
  %i.dh = load i8, ptr %i.dd, align 2, !tbaa !21, !noalias !143
  br label %_ZNSt7__cxx119to_stringEj.exit22

bb.u:                                             ; preds = %._crit_edge.i.i15
  %i.di = trunc nuw nsw i32 %.0.lcssa.i.i16 to i8
  %i.dj = or disjoint i8 %i.di, 48
  br label %_ZNSt7__cxx119to_stringEj.exit22

bb.v:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i12
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #28
  unreachable

_ZNSt7__cxx119to_stringEj.exit22:                 ; preds = %bb.t, %bb.u
  %storemerge.i.i17 = phi i8 [ %i.dj, %bb.u ], [ %i.dh, %bb.t ]
  store i8 %storemerge.i.i17, ptr %i.cf, align 1, !tbaa !21
  %i.dm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.320, i64 noundef 13)
          to label %.noexc26 unwind label %bb.y   ; 6 uses

.noexc26:                                         ; preds = %_ZNSt7__cxx119to_stringEj.exit22
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.dn, ptr %0, align 8, !tbaa !16, !alias.scope !144
  %i.do = load ptr, ptr %i.dm, align 8, !tbaa !20 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 5 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %bb.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

bb.w:                                             ; preds = %.noexc26
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !22 ; 3 uses
  %i.dt = icmp ult i64 %i.ds, 16
  call void @llvm.assume(i1 %i.dt)
  %i.du = add nuw nsw i64 %i.ds, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dn, ptr noundef nonnull align 8 dereferenceable(1) %i.dp, i64 %i.du, i1 false)
  br label %bb.x

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %.noexc26
  store ptr %i.do, ptr %0, align 8, !tbaa !20, !alias.scope !144
  %i.dv = load i64, ptr %i.dp, align 8, !tbaa !21
  store i64 %i.dv, ptr %i.dn, align 8, !tbaa !21, !alias.scope !144
  %.phi.trans.insert.i24 = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.pre.i25 = load i64, ptr %.phi.trans.insert.i24, align 8, !tbaa !22
  br label %bb.x

bb.x:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %bb.w
  %i.dw = phi i64 [ %i.ds, %bb.w ], [ %.pre.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ]
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dw, ptr %i.dy, align 8, !tbaa !22, !alias.scope !144
  store ptr %i.dp, ptr %i.dm, align 8, !tbaa !20
  store i64 0, ptr %i.dx, align 8, !tbaa !22
  store i8 0, ptr %i.dp, align 8, !tbaa !21
  %i.dz = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %i.ce
  br i1 %i.ea, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.x
  %i.eb = load i64, ptr %i.ce, align 8, !tbaa !21
  %i.ec = add i64 %i.eb, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ec) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.z

bb.y:                                             ; preds = %_ZNSt7__cxx119to_stringEj.exit22
  %i.ed = landingpad { ptr, i32 }
          cleanup
  %i.ee = load ptr, ptr %3, align 8, !tbaa !20    ; 2 uses
  %i.ef = icmp eq ptr %i.ee, %i.ce
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.y
  %i.eg = load i64, ptr %i.ce, align 8, !tbaa !21
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ee, i64 noundef %i.eh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.aa

._crit_edge.i.i34:                                ; preds = %bb.a
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.ei, ptr %0, align 8, !tbaa !16
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ej, align 8, !tbaa !22
  store i8 0, ptr %i.ei, align 8, !tbaa !21
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.i.i34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
  %.pn = phi { ptr, i32 } [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %i.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !16
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !20   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22   ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !20
  %i.k = load i64, ptr %i.e, align 8, !tbaa !21
  store i64 %i.k, ptr %i.c, align 8, !tbaa !21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !22
  store ptr %i.e, ptr %i.b, align 8, !tbaa !20
  store i64 0, ptr %i.m, align 8, !tbaa !22
  store i8 0, ptr %i.e, align 8, !tbaa !21
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK8KeyPress4nameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i8, ptr %i.i, align 4, !tbaa !51
  switch i8 %i.j, label %._crit_edge.i.i27 [
    i8 0, label %bb.b
    i8 1, label %_ZNK8KeyPress3getILNS_9InputTypeE1EEENSt19variant_alternativeIXscmT_ESt7variantIJjjN7KeyType1TEEEE4typeEv.exit
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  %i.k = load i32, ptr %1, align 4                ; 3 uses
  store i32 %i.k, ptr %i.g, align 4, !tbaa !62
  %.not.i6 = icmp eq i32 %i.k, 0
  br i1 %.not.i6, label %_ZL15lookup_scancodej.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @_ZN15RenderingEngine11s_singletonE, align 8, !tbaa !30 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !43   ; 3 uses
  %.not2.i.i = icmp eq ptr %i.n, null
  br i1 %.not2.i.i, label %bb.e, label %_ZN15RenderingEngine14get_raw_deviceEv.exit.i

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_Z15sanity_check_fnPKcS0_jS0_(ptr noundef nonnull @.str.333, ptr noundef nonnull @.str.334, i32 noundef 117, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN15RenderingEngine14get_raw_deviceEv) #25
  unreachable

_ZN15RenderingEngine14get_raw_deviceEv.exit.i:    ; preds = %bb.d
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 424
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i64 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n, i32 noundef %i.k), !inline_history !145 ; 3 uses
  %.sroa.0.4.extract.shift13.i = lshr i64 %i.r, 32
  %.sroa.0.4.extract.trunc.i = trunc i64 %.sroa.0.4.extract.shift13.i to i8
  switch i8 %.sroa.0.4.extract.trunc.i, label %bb.h [
    i8 0, label %_ZSt3getI9EKEY_CODEJS0_wEERT_RSt7variantIJDpT0_EE.exit.i
    i8 1, label %_ZSt3getIwJ9EKEY_CODEwEERT_RSt7variantIJDpT0_EE.exit.i
  ]

_ZSt3getI9EKEY_CODEJS0_wEERT_RSt7variantIJDpT0_EE.exit.i: ; preds = %_ZN15RenderingEngine14get_raw_deviceEv.exit.i
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.r to i32 ; 2 uses
  %i.s = add i32 %.sroa.0.0.extract.trunc.i, -1
  %i.t = icmp ult i32 %i.s, 255
  br i1 %i.t, label %bb.f, label %_ZL15lookup_scancodej.exit

bb.f:                                             ; preds = %_ZSt3getI9EKEY_CODEJS0_wEERT_RSt7variantIJDpT0_EE.exit.i
  %i.u = load ptr, ptr @_ZL5table, align 8, !tbaa !53 ; 2 uses
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL5table, i64 8), align 8, !tbaa !53 ; 2 uses
  %.not1314.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not1314.i.i, label %_ZL15lookup_scancodej.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.sroa.08.015.i.i = phi ptr [ %i.y, %bb.g ], [ %i.u, %bb.f ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.i, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !58
  %.not.i3.i = icmp eq i32 %i.x, %.sroa.0.0.extract.trunc.i
  br i1 %.not.i3.i, label %_ZL15lookup_scancodej.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.i, i64 72 ; 2 uses
  %.not13.i.i = icmp eq ptr %i.y, %i.v
  br i1 %.not13.i.i, label %_ZL15lookup_scancodej.exit, label %.lr.ph.i.i

bb.h:                                             ; preds = %_ZN15RenderingEngine14get_raw_deviceEv.exit.i
  %i.z = tail call ptr @__cxa_allocate_exception(i64 16) #26 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.z, align 8, !tbaa !47
end_hunk_0
begin_hunk_1_@bcmp
attributes #11 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noreturn }
attributes #15 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { noreturn }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind }
attributes #28 = { noreturn nounwind }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { builtin allocsize(0) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !27}
!1 = distinct !{!1, !27}
!2 = distinct !{!2, !27}
!3 = distinct !{!3, !27}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"long", !9, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !17, i64 8, !9, i64 16}
!20 = !{!19, !14, i64 0}
!21 = !{!9, !9, i64 0}
!22 = !{!19, !17, i64 8}
!23 = !{!"p1 _ZTS9table_key", !13, i64 0}
!24 = !{!"_ZTSNSt12_Vector_baseI9table_keySaIS0_EE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!25 = !{!24, !23, i64 0}
!26 = !{!24, !23, i64 8}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!24, !23, i64 16}
!29 = !{!"p1 _ZTS15RenderingEngine", !13, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"_ZTSN5video6SColorE", !10, i64 0}
!32 = !{!"p1 _ZTS13RenderingCore", !13, i64 0}
!33 = !{!"_ZTSSt10_Head_baseILm0EP13RenderingCoreLb0EE", !32, i64 0}
!34 = !{!"_ZTSSt11_Tuple_implILm0EJP13RenderingCoreSt14default_deleteIS0_EEE", !33, i64 0}
!35 = !{!"_ZTSSt5tupleIJP13RenderingCoreSt14default_deleteIS0_EEE", !34, i64 0}
!36 = !{!"_ZTSSt15__uniq_ptr_implI13RenderingCoreSt14default_deleteIS0_EE", !35, i64 0}
!37 = !{!"_ZTSSt15__uniq_ptr_dataI13RenderingCoreSt14default_deleteIS0_ELb1ELb1EE", !36, i64 0}
!38 = !{!"_ZTSSt10unique_ptrI13RenderingCoreSt14default_deleteIS0_EE", !37, i64 0}
!39 = !{!"p1 _ZTS14IrrlichtDevice", !13, i64 0}
!40 = !{!"p1 _ZTSN5video12IVideoDriverE", !13, i64 0}
!41 = !{!"p1 _ZTS15MyEventReceiver", !13, i64 0}
!42 = !{!"_ZTS15RenderingEngine", !31, i64 0, !31, i64 4, !38, i64 8, !39, i64 16, !40, i64 24, !41, i64 32}
!43 = !{!42, !39, i64 16}
!44 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb1EJ9EKEY_CODEwEEE", !9, i64 0, !9, i64 4}
!45 = !{!44, !9, i64 4}
!46 = !{!"vtable pointer", !8, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"_ZTSNSt8__detail9__variant14_UninitializedIjLb1EEE", !10, i64 0}
!49 = !{!48, !10, i64 0}
!50 = !{!"_ZTSNSt8__detail9__variant16_Variant_storageILb1EJjjN7KeyType1TEEEE", !9, i64 0, !9, i64 4}
!51 = !{!50, !9, i64 4}
!52 = !{!14, !14, i64 0}
!53 = !{!23, !23, i64 0}
!54 = !{!"wchar_t", !9, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"_ZTS9EKEY_CODE", !9, i64 0}
!57 = !{!"_ZTS9table_key", !19, i64 0, !56, i64 32, !54, i64 36, !19, i64 40}
!58 = !{!57, !56, i64 32}
!59 = !{!57, !54, i64 36}
!60 = !{ptr @_ZN8KeyPress11loadFromKeyE9EKEY_CODEw}
!61 = !{!"bool", !9, i64 0}
!62 = !{!10, !10, i64 0}
!63 = !{!"_ZTSSt9exception"}
!64 = !{!"_ZTSSt18bad_variant_access", !63, i64 0, !14, i64 8}
!65 = !{!64, !14, i64 8}
!66 = !{!"_ZTSN7KeyType1TE", !9, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!"any p2 pointer", !13, i64 0}
!69 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !68, i64 0}
!70 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!71 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !70, i64 0}
!72 = !{!"float", !9, i64 0}
!73 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !72, i64 0, !17, i64 8}
!74 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_8KeyPressESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE", !69, i64 0, !17, i64 8, !71, i64 16, !17, i64 24, !73, i64 32, !70, i64 48}
!75 = !{!74, !70, i64 16}
!76 = !{!71, !70, i64 0}
!77 = !{!74, !69, i64 0}
!78 = !{!74, !17, i64 8}
!79 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!80 = !{!79, !79, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!82 = !{!81, !79, i64 0}
!83 = !{!81, !79, i64 8}
!84 = !{!81, !79, i64 16}
!85 = !{!"p1 _ZTS8KeyPress", !13, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseI8KeyPressSaIS0_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!87 = !{!86, !85, i64 16}
!88 = !{!86, !85, i64 0}
!89 = !{!"p1 _ZTSNSt6locale5_ImplE", !13, i64 0}
!90 = !{!"_ZTSSt6locale", !89, i64 0}
!91 = !{!"p1 _ZTSSo", !13, i64 0}
!92 = !{!"_ZTS11StreamProxy", !91, i64 0}
!93 = !{!92, !91, i64 0}
!94 = !{!"_ZTSSt13_Ios_Fmtflags", !9, i64 0}
!95 = !{!"_ZTSSt12_Ios_Iostate", !9, i64 0}
!96 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !13, i64 0}
!97 = !{!"_ZTSNSt8ios_base6_WordsE", !13, i64 0, !17, i64 8}
!98 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !13, i64 0}
!99 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !94, i64 24, !95, i64 28, !95, i64 32, !96, i64 40, !97, i64 48, !9, i64 64, !10, i64 192, !98, i64 200, !90, i64 208}
!100 = !{!99, !95, i64 32}
!101 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorI8KeyPressSaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !69, i64 0, !17, i64 8, !71, i64 16, !17, i64 24, !73, i64 32, !70, i64 48}
!102 = !{!101, !70, i64 16}
!103 = !{!101, !69, i64 0}
!104 = !{!101, !17, i64 8}
!105 = !{!70, !70, i64 0}
!106 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !17, i64 0}
!107 = !{!106, !17, i64 0}
!108 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE8KeyPressELb1EEEEEE", !13, i64 0}
!109 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE8KeyPressELb1EEE", !13, i64 0}
!110 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_8KeyPressESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !108, i64 0, !109, i64 8}
!111 = !{!110, !109, i64 8}
!112 = !{!73, !17, i64 8}
!113 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!114 = !{!101, !17, i64 24}
!115 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorI8KeyPressSaISB_EEELb1EEEEEE", !13, i64 0}
!116 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorI8KeyPressSaISA_EEELb1EEE", !13, i64 0}
!117 = !{!"_ZTSNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorI8KeyPressSaIS9_EEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeE", !115, i64 0, !116, i64 8}
!118 = !{!117, !116, i64 8}
!119 = !{!"p1 wchar_t", !13, i64 0}
!120 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEE12_Alloc_hiderE", !119, i64 0}
!121 = !{!"_ZTSNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE", !120, i64 0, !17, i64 8, !9, i64 16}
!122 = !{!121, !17, i64 8}
!123 = !{!121, !119, i64 0}
!124 = !{!"_ZTSN6SEvent9SKeyInputE", !54, i64 0, !56, i64 4, !10, i64 8, !61, i64 12, !61, i64 12, !61, i64 12}
!125 = !{!124, !10, i64 8}
!126 = !{!124, !56, i64 4}
!127 = !{!124, !54, i64 0}
!128 = !{!"_ZTS18EMOUSE_INPUT_EVENT", !9, i64 0}
!129 = !{!"_ZTSN6SEvent11SMouseInputE", !10, i64 0, !10, i64 4, !9, i64 8, !61, i64 12, !61, i64 12, !61, i64 12, !10, i64 16, !128, i64 20}
!130 = !{!129, !128, i64 20}
!131 = distinct !{!131, i1 true, !"_ZNSt7__cxx119to_stringEj"}
!132 = distinct !{!132, !131, !"_ZNSt7__cxx119to_stringEj: argument 0"}
!133 = distinct !{!133, !27}
!134 = distinct !{!134, !27}
!135 = distinct !{!135, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!136 = distinct !{!136, !135, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!137 = distinct !{!137, i1 true, !"_ZNSt7__cxx119to_stringEj"}
!138 = distinct !{!138, !137, !"_ZNSt7__cxx119to_stringEj: argument 0"}
!139 = distinct !{!139, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!140 = distinct !{!140, !139, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!141 = !{!132}
!142 = !{!136}
!143 = !{!138}
!144 = !{!140}
!145 = distinct !{null}
!146 = distinct !{!146, i1 true, !"_Z10strgettextRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"}
!147 = distinct !{!147, !146, !"_Z10strgettextRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: argument 0"}
!148 = distinct !{!148, i1 true, !"_Z10strgettextB5cxx11PKc"}
!149 = distinct !{!149, !148, !"_Z10strgettextB5cxx11PKc: argument 0"}
!150 = distinct !{!150, i1 true, !"_Z10strgettextB5cxx11PKc"}
!151 = distinct !{!151, !150, !"_Z10strgettextB5cxx11PKc: argument 0"}
!152 = distinct !{!152, i1 true, !"_Z10strgettextB5cxx11PKc"}
!153 = distinct !{!153, !152, !"_Z10strgettextB5cxx11PKc: argument 0"}
!154 = distinct !{!154, i1 true, !"_Z10strgettextB5cxx11PKc"}
!155 = distinct !{!155, !154, !"_Z10strgettextB5cxx11PKc: argument 0"}
!156 = distinct !{!156, i1 true, !"_Z10strgettextB5cxx11PKc"}
!157 = distinct !{!157, !156, !"_Z10strgettextB5cxx11PKc: argument 0"}
!158 = distinct !{!158, i1 true, !"_Z10strgettextB5cxx11PKc"}
!159 = distinct !{!159, !158, !"_Z10strgettextB5cxx11PKc: argument 0"}
!160 = !{!147}
!161 = !{!149}
!162 = !{!149, !147}
!163 = !{!151}
!164 = !{!153}
!165 = !{!155}
!166 = !{!157}
!167 = !{!159}
!168 = distinct !{!168, !27}
!169 = distinct !{!169, i1 true, !"_ZSt19__relocate_object_aI8KeyPressS0_SaIS0_EEvPT_PT0_RT1_"}
!170 = distinct !{!170, !169, !"_ZSt19__relocate_object_aI8KeyPressS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!171 = distinct !{!171, !169, !"_ZSt19__relocate_object_aI8KeyPressS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!172 = distinct !{!172, !27, !181, !182}
!173 = distinct !{!173, !27, !181}
!174 = distinct !{null}
!175 = distinct !{null, null}
!176 = !{!"p1 _ZTS8Settings", !13, i64 0}
!177 = !{!176, !176, i64 0}
!178 = !{!86, !85, i64 8}
!179 = !{!170}
!180 = !{!171}
!181 = !{!"llvm.loop.isvectorized", i32 1}
!182 = !{!"llvm.loop.unroll.runtime.disable"}
!183 = !{!"p1 _ZTS9LogTarget", !13, i64 0}
!184 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !90, i64 56}
!185 = !{!"_ZTSSt14_Function_base", !9, i64 0, !13, i64 16}
!186 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !185, i64 0, !13, i64 24}
!187 = !{!"_ZTS18StringStreamBufferILj256ESt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE", !184, i64 0, !186, i64 64, !10, i64 96, !9, i64 100}
!188 = !{!"_ZTS17DummyStreamBuffer", !184, i64 0}
!189 = !{!"_ZTSSo"}
!190 = !{!"_ZTS9LogStream", !183, i64 0, !187, i64 8, !188, i64 368, !189, i64 432, !189, i64 704, !92, i64 976, !92, i64 984}
!191 = !{!190, !183, i64 0}
!192 = !{}
!193 = !{i64 8}
!194 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !13, i64 0}
!195 = !{!"p1 _ZTSSt5ctypeIcE", !13, i64 0}
!196 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !13, i64 0}
!197 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !13, i64 0}
!198 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !99, i64 0, !91, i64 216, !9, i64 224, !61, i64 225, !194, i64 232, !195, i64 240, !196, i64 248, !197, i64 256}
!199 = !{!198, !195, i64 240}
!200 = !{!"_ZTSNSt6locale5facetE", !10, i64 8}
!201 = !{!"p1 _ZTS15__locale_struct", !13, i64 0}
!202 = !{!"p1 int", !13, i64 0}
!203 = !{!"p1 short", !13, i64 0}
!204 = !{!"_ZTSSt5ctypeIcE", !200, i64 0, !201, i64 16, !61, i64 24, !202, i64 32, !202, i64 40, !203, i64 48, !9, i64 56, !9, i64 57, !9, i64 313, !9, i64 569}
!205 = !{!204, !9, i64 56}
!206 = !{!"_ZTSSi", !17, i64 8}
!207 = !{!206, !17, i64 8}
!208 = !{!85, !85, i64 0}
!209 = distinct !{!209, i1 true, !"_ZSt19__relocate_object_aI9table_keyS0_SaIS0_EEvPT_PT0_RT1_"}
!210 = distinct !{!210, !209, !"_ZSt19__relocate_object_aI9table_keyS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!211 = distinct !{!211, !209, !"_ZSt19__relocate_object_aI9table_keyS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!212 = distinct !{!212, !27}
!213 = distinct !{!213, i1 true, !"_ZSt19__relocate_object_aI9table_keyS0_SaIS0_EEvPT_PT0_RT1_"}
!214 = distinct !{!214, !213, !"_ZSt19__relocate_object_aI9table_keyS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!215 = distinct !{!215, !213, !"_ZSt19__relocate_object_aI9table_keyS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!216 = !{!210}
!217 = !{!211}
!218 = !{!210, !211}
!219 = !{!214}
!220 = !{!215}
!221 = !{!214, !215}
!222 = distinct !{!222, !27}
!223 = !{!110, !108, i64 0}
!224 = !{!74, !17, i64 24}
!225 = distinct !{!225, !27}
!226 = !{!74, !70, i64 48}
!227 = distinct !{!227, !27}
!228 = !{!117, !115, i64 0}
!229 = distinct !{!229, !27}
!230 = !{!101, !70, i64 48}
!231 = distinct !{!231, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!232 = distinct !{!232, !231, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!233 = distinct !{!233, !231, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!234 = distinct !{!234, !27}
!235 = distinct !{!235, i1 true, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!236 = distinct !{!236, !235, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!237 = distinct !{!237, !235, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!238 = !{!232}
!239 = !{!233}
!240 = !{!232, !233}
!241 = !{!236}
!242 = !{!237}
!243 = !{!236, !237}
!244 = distinct !{!244, !27}
!245 = distinct !{!245, !27}
!246 = !{!73, !72, i64 0}
end_hunk_1
