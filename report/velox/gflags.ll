Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/gflags?download=true
inline.NumInlined: 1784
inline.NumDeleted: 582
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6google12_GLOBAL__N_115CommandLineFlag23FillCommandLineFlagInfoEPNS_19CommandLineFlagInfoE:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #42
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val16 = load ptr, ptr %i.ce, align 8, !tbaa !136 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !169
  %i.ci = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.val16) #42
  %i.cj = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, i64 noundef 0, i64 noundef %i.ch, ptr noundef nonnull %.val16, i64 noundef %i.ci) ; 0 uses
  call fastcc void @_ZN6google12_GLOBAL__N_115CommandLineFlag17UpdateModifiedBitEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !137, !range !174, !noundef !175
  %i.cm = xor i8 %i.cl, 1
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 193
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !251
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val17 = load ptr, ptr %i.co, align 8, !tbaa !140
  %i.cp = icmp ne ptr %.val17, null
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.cr = zext i1 %i.cp to i8
  store i8 %i.cr, ptr %i.cq, align 8, !tbaa !252
  %.val18 = load ptr, ptr %i.v, align 8, !tbaa !139
  %.val18.val = load ptr, ptr %.val18, align 8, !tbaa !129
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 200
  store ptr %.val18.val, ptr %i.cs, align 8, !tbaa !253
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6google19CommandLineFlagInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !guid !254 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !125
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !125
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !124  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !125
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !124  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.w = load i64, ptr %i.u, align 8, !tbaa !125
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !124  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !125
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.ae = load ptr, ptr %0, align 8, !tbaa !124   ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !125
  %i.ai = add i64 %i.ah, 1
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !guid !255 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !124    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !tbaa !125
  %i.e = add i64 %i.d, 1
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !guid !256 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !178    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !179  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !124 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !125
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #40
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !178
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !180
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #40
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google7SetArgvEiPPKc(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 !guid !261 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %.b = load i1, ptr @_ZZN6google7SetArgvEiPPKcE15called_set_argv, align 1
  br i1 %.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i1 true, ptr @_ZZN6google7SetArgvEiPPKcE15called_set_argv, align 1
  %i.a = load ptr, ptr %1, align 8, !tbaa !155    ; 2 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6googleL5argv0B5cxx11E, i64 8), align 8, !tbaa !169
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #42
  %i.d = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN6googleL5argv0B5cxx11E, i64 noundef 0, i64 noundef %i.b, ptr noundef nonnull %i.a, i64 noundef %i.c) ; 0 uses
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6googleL7cmdlineB5cxx11E, i64 8), align 8, !tbaa !169
  %i.e = load ptr, ptr @_ZN6googleL7cmdlineB5cxx11E, align 8, !tbaa !124
  store i8 0, ptr %i.e, align 1, !tbaa !125
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 20 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %wide.trip.count = zext nneg i32 %0 to i64
  %.pre = load ptr, ptr %1, align 8, !tbaa !155   ; 4 uses
  %.pre48 = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6googleL7cmdlineB5cxx11E, i64 8), align 8, !tbaa !169 ; 5 uses
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.pre) #42 ; 6 uses
  %i.j = sub i64 9223372036854775807, %.pre48
  %i.k = icmp ult i64 %i.j, %i.i
  br i1 %i.k, label %.loopexit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13.peel: ; preds = %bb.c
  %i.l = add i64 %.pre48, %i.i                    ; 3 uses
  %i.m = load ptr, ptr @_ZN6googleL7cmdlineB5cxx11E, align 8, !tbaa !124 ; 2 uses
  %i.n = icmp eq ptr %i.m, getelementptr inbounds nuw (i8, ptr @_ZN6googleL7cmdlineB5cxx11E, i64 16)
  br i1 %i.n, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i19.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13.peel
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6googleL7cmdlineB5cxx11E, i64 16), align 8, !tbaa !125
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i19.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13.peel
  %i.p = icmp ult i64 %.pre48, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i19.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14.peel
  %i.q = phi i64 [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14.peel ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i19.peel ]
  %.not.i.i.i16.peel = icmp ugt i64 %i.l, %i.q
  br i1 %.not.i.i.i16.peel, label %bb.h, label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15.peel
  %.not8.i.i.i17.peel = icmp eq i64 %i.i, 0
  br i1 %.not8.i.i.i17.peel, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit20.peel, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %.pre48 ; 2 uses
  %cond.i.i.i18.peel = icmp eq i64 %i.i, 1
  br i1 %cond.i.i.i18.peel, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %.pre, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit20.peel

bb.g:                                             ; preds = %bb.e
  %i.s = load i8, ptr %.pre, align 1, !tbaa !125
  store i8 %i.s, ptr %i.r, align 1, !tbaa !125
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit20.peel

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15.peel
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN6googleL7cmdlineB5cxx11E, i64 noundef %.pre48, i64 noundef 0, ptr noundef nonnull %.pre, i64 noundef %i.i)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit20.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit20.peel: ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  store i64 %i.l, ptr getelementptr inbounds nuw (i8, ptr @_ZN6googleL7cmdlineB5cxx11E, i64 8), align 8, !tbaa !169
  %i.t = load ptr, ptr @_ZN6googleL7cmdlineB5cxx11E, align 8, !tbaa !124
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.l
  store i8 0, ptr %i.u, align 1, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #42
  %i.v = load ptr, ptr %1, align 8, !tbaa !155    ; 4 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !168
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %.noexc, label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit20.peel
  %i.x = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #42 ; 8 uses
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %bb.j, label %._crit_edge.i.i.peel

bb.j:                                             ; preds = %bb.i
  %i.z = icmp slt i64 %i.x, 0
  br i1 %i.z, label %.noexc.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = add nuw i64 %i.x, 1                     ; 2 uses
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.peel, !prof !173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.peel: ; preds = %bb.k
  %i.ac = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #41 ; 2 uses
  store ptr %i.ac, ptr %2, align 8, !tbaa !124
  store i64 %i.x, ptr %i.g, align 8, !tbaa !125
  br label %._crit_edge.i.i.peel

._crit_edge.i.i.peel:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.peel, %bb.i
  %i.ad = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.peel ], [ %i.g, %bb.i ] ; 3 uses
  switch i64 %i.x, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.peel
  %i.ae = load i8, ptr %i.v, align 1, !tbaa !125
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !125
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i.peel
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i.peel
  store i64 %i.x, ptr %i.h, align 8, !tbaa !169
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.x
  store i8 0, ptr %i.af, align 1, !tbaa !125
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6googleL5argvsB5cxx11E, i64 8), align 8, !tbaa !179 ; 7 uses
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN6googleL5argvsB5cxx11E, i64 16), align 8, !tbaa !180
  %.not.i.i.peel = icmp eq ptr %i.ag, %i.ah
  br i1 %.not.i.i.peel, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !168
  %i.aj = load ptr, ptr %2, align 8, !tbaa !124   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.g
  br i1 %i.ak, label %bb.p, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24.peel: ; preds = %bb.o
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !124
  %i.al = load i64, ptr %i.g, align 8, !tbaa !125
  store i64 %i.al, ptr %i.ai, align 8, !tbaa !125
  %.pre49 = load i64, ptr %i.h, align 8, !tbaa !169
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.peel.thread

bb.p:                                             ; preds = %bb.o
  %i.am = load i64, ptr %i.h, align 8, !tbaa !169 ; 3 uses
  %i.an = icmp ult i64 %i.am, 16
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nuw nsw i64 %i.am, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ai, ptr noundef nonnull align 8 dereferenceable(1) %i.g, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.peel.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.peel.thread: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24.peel, %bb.p
  %i.ap = phi i64 [ %i.am, %bb.p ], [ %.pre49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i24.peel ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !169
  store ptr %i.g, ptr %2, align 8, !tbaa !124
  store i64 0, ptr %i.h, align 8, !tbaa !169
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr %i.ar, ptr getelementptr inbounds nuw (i8, ptr @_ZN6googleL5argvsB5cxx11E, i64 8), align 8, !tbaa !179
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel

bb.q:                                             ; preds = %bb.n
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6googleL5argvsB5cxx11E, ptr %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.peel unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.peel: ; preds = %bb.q
  %.pre50 = load ptr, ptr %2, align 8, !tbaa !124 ; 2 uses
  %i.as = icmp eq ptr %.pre50, %i.g
  br i1 %i.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.peel
  %i.at = load i64, ptr %i.g, align 8, !tbaa !125
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %.pre50, i64 noundef %i.au) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.peel.thread, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.peel
  %3 = load i64, ptr %i.h, align 8, !tbaa !169
  %4 = icmp ult i64 %3, 16
  call void @llvm.assume(i1 %4)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.peel, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #42
  %exitcond.peel.not = icmp eq i32 %0, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %bb.b
  store i32 0, ptr @_ZN6googleL8argv_sumE, align 4, !tbaa !181
  %i.av = load ptr, ptr @_ZN6googleL7cmdlineB5cxx11E, align 8, !tbaa !124 ; 6 uses
  %i.aw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6googleL7cmdlineB5cxx11E, i64 8), align 8, !tbaa !169 ; 9 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw
  %i.ay = icmp samesign eq i64 %i.aw, 0
  br i1 %i.ay, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %min.iters.check = icmp ult i64 %i.aw, 8
  br i1 %min.iters.check, label %.lr.ph41.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check75 = icmp ult i64 %i.aw, 32
  br i1 %min.iters.check75, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.az = and i64 %i.aw, 24
  %n.vec = and i64 %i.aw, -32                     ; 4 uses
  %i.ba = getelementptr i8, ptr %i.av, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bi, %vector.body ]
  %vec.phi76 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bj, %vector.body ]
  %vec.phi77 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi78 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.av, i64 %index ; 4 uses
  %i.bb = getelementptr i8, ptr %next.gep, i64 8
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  %i.bd = getelementptr i8, ptr %next.gep, i64 24
  %wide.load = load <8 x i8>, ptr %next.gep, align 1, !tbaa !125
  %wide.load79 = load <8 x i8>, ptr %i.bb, align 1, !tbaa !125
  %wide.load80 = load <8 x i8>, ptr %i.bc, align 1, !tbaa !125
  %wide.load81 = load <8 x i8>, ptr %i.bd, align 1, !tbaa !125
  %i.be = sext <8 x i8> %wide.load to <8 x i32>
  %i.bf = sext <8 x i8> %wide.load79 to <8 x i32>
  %i.bg = sext <8 x i8> %wide.load80 to <8 x i32>
  %i.bh = sext <8 x i8> %wide.load81 to <8 x i32>
  %i.bi = add <8 x i32> %vec.phi, %i.be           ; 2 uses
  %i.bj = add <8 x i32> %vec.phi76, %i.bf         ; 2 uses
  %i.bk = add <8 x i32> %vec.phi77, %i.bg         ; 2 uses
  %i.bl = add <8 x i32> %vec.phi78, %i.bh         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !257

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.bj, %i.bi
  %bin.rdx82 = add <8 x i32> %i.bk, %bin.rdx
  %bin.rdx83 = add <8 x i32> %i.bl, %bin.rdx82
  %i.bn = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx83) ; 3 uses
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %..loopexit_crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.az, 0
  br i1 %min.epilog.iters.check, label %.lr.ph41.preheader, label %vec.epilog.ph, !prof !184

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.bn, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec84 = and i64 %i.aw, -8                    ; 3 uses
  %i.bo = getelementptr i8, ptr %i.av, i64 %n.vec84
  %i.bp = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index85 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next89, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi86 = phi <8 x i32> [ %i.bp, %vec.epilog.ph ], [ %i.br, %vec.epilog.vector.body ]
  %next.gep87 = getelementptr i8, ptr %i.av, i64 %index85
  %wide.load88 = load <8 x i8>, ptr %next.gep87, align 1, !tbaa !125
  %i.bq = sext <8 x i8> %wide.load88 to <8 x i32>
  %i.br = add <8 x i32> %vec.phi86, %i.bq         ; 2 uses
  %index.next89 = add nuw i64 %index85, 8         ; 2 uses
  %i.bs = icmp eq i64 %index.next89, %n.vec84
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !258

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bt = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.br) ; 2 uses
  %cmp.n90 = icmp eq i64 %i.aw, %n.vec84
  br i1 %cmp.n90, label %..loopexit_crit_edge, label %.lr.ph41.preheader

.lr.ph41.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.030.039.ph = phi ptr [ %i.av, %iter.check ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ]
  %.ph = phi i32 [ 0, %iter.check ], [ %i.bn, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  br label %.lr.ph41

.peel.next:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.peel ] ; 2 uses
  %i.bu = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6googleL7cmdlineB5cxx11E, i64 8), align 8, !tbaa !169 ; 5 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775807
  br i1 %i.bv, label %.loopexit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

.loopexit44:                                      ; preds = %.peel.next
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #44
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %.peel.next
  %i.bw = add nsw i64 %i.bu, 1                    ; 3 uses
  %i.bx = load ptr, ptr @_ZN6googleL7cmdlineB5cxx11E, align 8, !tbaa !124 ; 2 uses
  %i.by = icmp eq ptr %i.bx, getelementptr inbounds nuw (i8, ptr @_ZN6googleL7cmdlineB5cxx11E, i64 16)
  br i1 %i.by, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.bz = icmp ult i64 %i.bu, 16
  call void @llvm.assume(i1 %i.bz)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ca = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6googleL7cmdlineB5cxx11E, i64 16), align 8, !tbaa !125
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.cb = phi i64 [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.bw, %i.cb
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bu
  store i8 32, ptr %i.cc, align 1, !tbaa !125
  br label %bb.t

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN6googleL7cmdlineB5cxx11E, i64 noundef %i.bu, i64 noundef 0, ptr noundef nonnull @.str.32, i64 noundef 1)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store i64 %i.bw, ptr getelementptr inbounds nuw (i8, ptr @_ZN6googleL7cmdlineB5cxx11E, i64 8), align 8, !tbaa !169
  %i.cd = load ptr, ptr @_ZN6googleL7cmdlineB5cxx11E, align 8, !tbaa !124
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bw
  store i8 0, ptr %i.ce, align 1, !tbaa !125
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !155 ; 4 uses
  %i.ch = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cg) #42 ; 6 uses
  %i.ci = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6googleL7cmdlineB5cxx11E, i64 8), align 8, !tbaa !169 ; 5 uses
  %i.cj = sub i64 9223372036854775807, %i.ci
  %i.ck = icmp ult i64 %i.cj, %i.ch
  br i1 %i.ck, label %.loopexit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13

.loopexit45:                                      ; preds = %bb.t, %bb.c
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.52) #44
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13: ; preds = %bb.t
  %i.cl = add i64 %i.ci, %i.ch                    ; 3 uses
  %i.cm = load ptr, ptr @_ZN6googleL7cmdlineB5cxx11E, align 8, !tbaa !124 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, getelementptr inbounds nuw (i8, ptr @_ZN6googleL7cmdlineB5cxx11E, i64 16)
  br i1 %i.cn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i19: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13
  %i.co = icmp ult i64 %i.ci, 16
  call void @llvm.assume(i1 %i.co)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i13
  %i.cp = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN6googleL7cmdlineB5cxx11E, i64 16), align 8, !tbaa !125
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i19
  %i.cq = phi i64 [ %i.cp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i19 ]
  %.not.i.i.i16 = icmp ugt i64 %i.cl, %i.cq
  br i1 %.not.i.i.i16, label %bb.y, label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15
  %.not8.i.i.i17 = icmp eq i64 %i.ch, 0
  br i1 %.not8.i.i.i17, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit20, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ci ; 2 uses
  %cond.i.i.i18 = icmp eq i64 %i.ch, 1
  br i1 %cond.i.i.i18, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cs = load i8, ptr %i.cg, align 1, !tbaa !125
  store i8 %i.cs, ptr %i.cr, align 1, !tbaa !125
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit20

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cr, ptr nonnull align 1 %i.cg, i64 %i.ch, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit20

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) @_ZN6googleL7cmdlineB5cxx11E, i64 noundef %i.ci, i64 noundef 0, ptr noundef nonnull %i.cg, i64 noundef %i.ch)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit20: ; preds = %bb.u, %bb.w, %bb.x, %bb.y
  store i64 %i.cl, ptr getelementptr inbounds nuw (i8, ptr @_ZN6googleL7cmdlineB5cxx11E, i64 8), align 8, !tbaa !169
  %i.ct = load ptr, ptr @_ZN6googleL7cmdlineB5cxx11E, align 8, !tbaa !124
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cl
  store i8 0, ptr %i.cu, align 1, !tbaa !125
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #42
  %i.cv = load ptr, ptr %i.cf, align 8, !tbaa !155 ; 4 uses
  store ptr %i.g, ptr %2, align 8, !tbaa !168
  %i.cw = icmp eq ptr %i.cv, null
end_hunk_0
