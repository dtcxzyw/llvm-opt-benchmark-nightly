Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/sysinfo?download=true
inline.NumInlined: 294
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6embree19supportedTargetListB5cxx11Ei:bb.a
  %i.g = load ptr, ptr %0, align 8                ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.a
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef %i.g) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.a
  %i.i = and i32 %1, 33554435
  %i.j = icmp eq i32 %i.i, 33554435
  br i1 %i.j, label %bb.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit18

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.k = load i64, ptr %i.b, align 8
  %i.l = add i64 %i.k, -4611686018427387899
  %i.m = icmp ult i64 %i.l, 5
  br i1 %i.m, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i15: ; preds = %bb.c
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.30, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit18 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit
  %i.o = and i32 %1, 33554439
  %i.p = icmp eq i32 %i.o, 33554439
  br i1 %i.p, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit22

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit18
  %i.q = load i64, ptr %i.b, align 8
  %i.r = add i64 %i.q, -4611686018427387899
  %i.s = icmp ult i64 %i.r, 5
  br i1 %i.s, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19: ; preds = %bb.d
  %i.t = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.31, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit22 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit18
  %i.u = and i32 %1, 33554447
  %i.v = icmp eq i32 %i.u, 33554447
  br i1 %i.v, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit26

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit22
  %i.w = load i64, ptr %i.b, align 8
  %i.x = add i64 %i.w, -4611686018427387898
  %i.y = icmp ult i64 %i.x, 6
  br i1 %i.y, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i23: ; preds = %bb.e
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.32, i64 noundef 6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit26 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit22
  %i.aa = and i32 %1, 33554463
  %i.ab = icmp eq i32 %i.aa, 33554463
  br i1 %i.ab, label %bb.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit30

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit26
  %i.ac = load i64, ptr %i.b, align 8
  %i.ad = add i64 %i.ac, -4611686018427387897
  %i.ae = icmp ult i64 %i.ad, 7
  br i1 %i.ae, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i27: ; preds = %bb.f
  %i.af = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.33, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit30 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit26
  %i.ag = and i32 %1, 33554559
  %i.ah = icmp eq i32 %i.ag, 33554559
  br i1 %i.ah, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit30
  %i.ai = load i64, ptr %i.b, align 8
  %i.aj = add i64 %i.ai, -4611686018427387897
  %i.ak = icmp ult i64 %i.aj, 7
  br i1 %i.ak, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i31: ; preds = %bb.g
  %i.al = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.34, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit30
  %i.am = and i32 %1, 100663551
  %i.an = icmp eq i32 %i.am, 100663551
  br i1 %i.an, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34
  %i.ao = load i64, ptr %i.b, align 8
  %i.ap = and i64 %i.ao, -4
  %i.aq = icmp eq i64 %i.ap, 4611686018427387900
  br i1 %i.aq, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i35: ; preds = %bb.h
  %i.ar = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.36, i64 noundef 4)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit34
  %i.as = and i32 %1, 100663807
  %i.at = icmp eq i32 %i.as, 100663807
  br i1 %i.at, label %bb.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit42

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38
  %i.au = load i64, ptr %i.b, align 8
  %i.av = add i64 %i.au, -4611686018427387899
  %i.aw = icmp ult i64 %i.av, 5
  br i1 %i.aw, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39: ; preds = %bb.i
  %i.ax = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.67, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit42 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit42: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit38
  %i.ay = and i32 %1, 100695551
  %i.az = icmp eq i32 %i.ay, 100695551
  br i1 %i.az, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit46

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit42
  %i.ba = load i64, ptr %i.b, align 8
  %i.bb = add i64 %i.ba, -4611686018427387899
  %i.bc = icmp ult i64 %i.bb, 5
  br i1 %i.bc, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i43: ; preds = %bb.j
  %i.bd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.39, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit46 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit46: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit42
  %i.be = and i32 %1, 242449919
  %i.bf = icmp eq i32 %i.be, 242449919
  br i1 %i.bf, label %bb.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit50

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit46
  %i.bg = load i64, ptr %i.b, align 8
  %i.bh = add i64 %i.bg, -4611686018427387897
  %i.bi = icmp ult i64 %i.bh, 7
  br i1 %i.bi, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47: ; preds = %bb.k
  %i.bj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.68, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit50 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit50: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit46
  %i.bk = and i32 %1, 268435459
  %i.bl = icmp eq i32 %i.bk, 268435459
  br i1 %i.bl, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit54

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit50
  %i.bm = load i64, ptr %i.b, align 8
  %i.bn = add i64 %i.bm, -4611686018427387899
  %i.bo = icmp ult i64 %i.bn, 5
  br i1 %i.bo, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i51: ; preds = %bb.l
  %i.bp = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.53, i64 noundef 5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit54 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i51, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit50
  %i.bq = and i32 %1, 637566463
  %i.br = icmp eq i32 %i.bq, 637566463
  br i1 %i.br, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit58

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit54
  %i.bs = load i64, ptr %i.b, align 8
  %i.bt = add i64 %i.bs, -4611686018427387897
  %i.bu = icmp ult i64 %i.bt, 7
  br i1 %i.bu, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i55

.invoke:                                          ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #21
          to label %.cont unwind label %bb.b

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i55: ; preds = %bb.m
  %i.bv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.54, i64 noundef 7)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit58 unwind label %bb.b ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit58: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit54
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6embree21getExecutableFileNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = alloca [4096 x i8], align 16             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.c = tail call i32 @getpid() #18
  %i.d = sext i32 %i.c to i64                     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16)
  %i.e = tail call i64 @llvm.abs.i64(i64 %i.d, i1 true) ; 21 uses
  %i.f = icmp samesign ult i64 %i.e, 10
  br i1 %i.f, label %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %4 = icmp samesign ult i64 %i.e, 100
  br i1 %4, label %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i, label %5

5:                                                ; preds = %.lr.ph.i.i
  %6 = icmp samesign ult i64 %i.e, 1000
  br i1 %6, label %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i, label %7

7:                                                ; preds = %5
  %8 = icmp samesign ult i64 %i.e, 10000
  br i1 %8, label %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i, label %9

9:                                                ; preds = %7
  %10 = icmp samesign ult i64 %i.e, 100000
  br i1 %10, label %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i, label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %9
  %11 = icmp samesign ult i64 %i.e, 1000000
  br i1 %11, label %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i, label %12

12:                                               ; preds = %.lr.ph.i.i.1
  %13 = icmp samesign ult i64 %i.e, 10000000
  br i1 %13, label %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i, label %14

14:                                               ; preds = %12
  %15 = icmp samesign ult i64 %i.e, 100000000
  br i1 %15, label %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i, label %16

16:                                               ; preds = %14
  %17 = icmp samesign ult i64 %i.e, 1000000000
  br i1 %17, label %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i, label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %16
  %18 = icmp samesign ult i64 %i.e, 10000000000
  br i1 %18, label %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i, label %19

19:                                               ; preds = %.lr.ph.i.i.2
  %20 = icmp samesign ult i64 %i.e, 100000000000
  br i1 %20, label %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i, label %.lr.ph.i.i.a

.lr.ph.i.i.a:                                     ; preds = %19
  %i.g = icmp samesign ult i64 %i.e, 1000000000000
  br i1 %i.g, label %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.a
  %21 = icmp samesign ult i64 %i.e, 10000000000000
  br i1 %21, label %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ult i64 %i.e, 100000000000000
  br i1 %i.h, label %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %22 = icmp samesign ult i64 %i.e, 1000000000000000
  br i1 %22, label %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp samesign ult i64 %i.e, 10000000000000000
  br i1 %i.i, label %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %23 = icmp samesign ult i64 %i.e, 100000000000000000
  br i1 %23, label %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %24 = icmp samesign ult i64 %i.e, 1000000000000000000
  %spec.select = select i1 %24, i32 18, i32 19
  br label %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i

_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i:    ; preds = %bb.g, %9, %16, %bb.b, %bb.f, %7, %14, %.lr.ph.i.i.a, %bb.e, %5, %12, %19, %bb.d, %.lr.ph.i.i, %.lr.ph.i.i.1, %.lr.ph.i.i.2, %bb.c, %bb.a
  %.022.i.i = phi i32 [ 16, %bb.e ], [ 17, %bb.f ], [ %spec.select, %bb.g ], [ 1, %bb.a ], [ 2, %.lr.ph.i.i ], [ 6, %.lr.ph.i.i.1 ], [ 10, %.lr.ph.i.i.2 ], [ 14, %bb.c ], [ 3, %5 ], [ 7, %12 ], [ 11, %19 ], [ 15, %bb.d ], [ 4, %7 ], [ 8, %14 ], [ 12, %.lr.ph.i.i.a ], [ 5, %9 ], [ 9, %16 ], [ 13, %bb.b ] ; 2 uses
  %.lobit.i = lshr i64 %i.d, 63                   ; 2 uses
  %i.j = trunc nuw nsw i64 %.lobit.i to i32
  %i.k = add i32 %.022.i.i, %i.j
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.m, ptr %3, align 8, !alias.scope !16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.l, i8 noundef signext 45)
  %i.n = load ptr, ptr %3, align 8, !alias.scope !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.lobit.i ; 4 uses
  %i.p = icmp samesign ugt i64 %i.e, 99
  br i1 %i.p, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i
  %i.q = add i32 %.022.i.i, -1
  br label %.lr.ph.i15.i

.lr.ph.i15.i:                                     ; preds = %.lr.ph.i15.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.t, %.lr.ph.i15.i ], [ %i.e, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.ad, %.lr.ph.i15.i ], [ %i.q, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.r = urem i64 %.020.i.i, 100
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = udiv i64 %.020.i.i, 100                  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIyEEvPcjT_.__digits, i64 %i.s ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1, !noalias !16
  %i.x = zext i32 %.01819.i.i to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.x
  store i8 %i.w, ptr %i.y, align 1
  %i.z = load i8, ptr %i.u, align 2, !noalias !16
  %i.aa = add i32 %.01819.i.i, -1
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ab
  store i8 %i.z, ptr %i.ac, align 1
  %i.ad = add i32 %.01819.i.i, -2
  %i.ae = icmp samesign ugt i64 %.020.i.i, 9999
  br i1 %i.ae, label %.lr.ph.i15.i, label %._crit_edge.i.i, !llvm.loop !11

._crit_edge.i.i:                                  ; preds = %.lr.ph.i15.i, %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i
  %.0.lcssa.i.i = phi i64 [ %i.e, %_ZNSt8__detail14__to_chars_lenIyEEjT_i.exit.i ], [ %i.t, %.lr.ph.i15.i ] ; 3 uses
  %i.af = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ag = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.ah = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIyEEvPcjT_.__digits, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 %i.aj, ptr %i.ak, align 1
  %i.al = load i8, ptr %i.ah, align 2, !noalias !16
  br label %_ZNSt7__cxx119to_stringEx.exit

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.am = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.an = or disjoint i8 %i.am, 48
  br label %_ZNSt7__cxx119to_stringEx.exit

_ZNSt7__cxx119to_stringEx.exit:                   ; preds = %bb.h, %bb.i
  %storemerge.i.i = phi i8 [ %i.an, %bb.i ], [ %i.al, %bb.h ]
  store i8 %storemerge.i.i, ptr %i.o, align 1
  %i.ao = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.69, i64 noundef 6)
          to label %.noexc unwind label %bb.p     ; 6 uses

.noexc:                                           ; preds = %_ZNSt7__cxx119to_stringEx.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.ap, ptr %2, align 8, !alias.scope !18
  %i.aq = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 5 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.j:                                             ; preds = %.noexc
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.au = load i64, ptr %i.at, align 8            ; 3 uses
  %i.av = icmp ult i64 %i.au, 16
  call void @llvm.assume(i1 %i.av)
  %i.aw = add nuw nsw i64 %i.au, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.aw, i1 false)
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.aq, ptr %2, align 8, !alias.scope !18
  %i.ax = load i64, ptr %i.ar, align 8
  store i64 %i.ax, ptr %i.ap, align 8, !alias.scope !18
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.j
  %i.ay = phi i64 [ %i.au, %bb.j ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.ay, ptr %i.ba, align 8, !alias.scope !18
  store ptr %i.ar, ptr %i.ao, align 8
  store i64 0, ptr %i.az, align 8
  store i8 0, ptr %i.ar, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !19)
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !19
  %i.bc = and i64 %i.bb, -4
  %i.bd = icmp eq i64 %i.bc, 4611686018427387900
  br i1 %i.bd, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #21
          to label %.noexc9 unwind label %bb.q

.noexc9:                                          ; preds = %bb.l
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.k
  %i.be = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.70, i64 noundef 4)
          to label %.noexc10 unwind label %bb.q   ; 6 uses

.noexc10:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.bf, ptr %1, align 8, !alias.scope !19
  %i.bg = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 5 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

bb.m:                                             ; preds = %.noexc10
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bk = load i64, ptr %i.bj, align 8            ; 3 uses
  %i.bl = icmp ult i64 %i.bk, 16
  call void @llvm.assume(i1 %i.bl)
  %i.bm = add nuw nsw i64 %i.bk, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.bh, i64 %i.bm, i1 false)
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %.noexc10
  store ptr %i.bg, ptr %1, align 8, !alias.scope !19
  %i.bn = load i64, ptr %i.bh, align 8
  store i64 %i.bn, ptr %i.bf, align 8, !alias.scope !19
  %.phi.trans.insert.i7 = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.pre.i8 = load i64, ptr %.phi.trans.insert.i7, align 8
  br label %bb.n

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.m
  %i.bo = phi i64 [ %i.bk, %bb.m ], [ %.pre.i8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bo, ptr %i.bq, align 8, !alias.scope !19
  store ptr %i.bh, ptr %i.be, align 8
  store i64 0, ptr %i.bp, align 8
  store i8 0, ptr %i.bh, align 8
  %i.br = load ptr, ptr %2, align 8               ; 2 uses
  %i.bs = icmp eq ptr %i.br, %i.ap
  br i1 %i.bs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.n
  call void @_ZdlPv(ptr noundef %i.br) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  %i.bt = load ptr, ptr %3, align 8               ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.m
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.bt) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.b, i8 noundef 0, i64 noundef 4096, i1 noundef false) #18
  %i.bv = load ptr, ptr %1, align 8
  %i.bw = call i64 @readlink(ptr noundef %i.bv, ptr noundef nonnull %i.b, i64 noundef 4095) #18
  %i.bx = icmp eq i64 %i.bw, -1
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.by, ptr %0, align 8
  br i1 %i.bx, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.bz, align 8
  store i8 0, ptr %i.by, align 8
  br label %bb.w

bb.p:                                             ; preds = %_ZNSt7__cxx119to_stringEx.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.l
  %i.cb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cc = load ptr, ptr %2, align 8               ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.ap
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.cc) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.p
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.p ], [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.cb, %bb.q ]
  %i.ce = load ptr, ptr %3, align 8               ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.m
  br i1 %i.cf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  call void @_ZdlPv(ptr noundef %i.ce) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.cg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i64 %i.cg, ptr %i.a, align 8
  %i.ch = icmp ugt i64 %i.cg, 15
  br i1 %i.ch, label %.noexc.i, label %._crit_edge.i.i21

.noexc.i:                                         ; preds = %bb.r
  %i.ci = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc22 unwind label %bb.v   ; 2 uses

.noexc22:                                         ; preds = %.noexc.i
  store ptr %i.ci, ptr %0, align 8
  %i.cj = load i64, ptr %i.a, align 8
  store i64 %i.cj, ptr %i.by, align 8
  br label %._crit_edge.i.i21

._crit_edge.i.i21:                                ; preds = %.noexc22, %bb.r
  %i.ck = phi ptr [ %i.ci, %.noexc22 ], [ %i.by, %bb.r ] ; 2 uses
  switch i64 %i.cg, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i21
  %i.cl = load i8, ptr %i.b, align 16
  store i8 %i.cl, ptr %i.ck, align 1
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i21
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr nonnull align 16 %i.b, i64 %i.cg, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i21
  %i.cm = load i64, ptr %i.a, align 8             ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.cm, ptr %i.cn, align 8
  %i.co = load ptr, ptr %0, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cm
  store i8 0, ptr %i.cp, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.w

bb.v:                                             ; preds = %.noexc.i
  %i.cq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.cr = load ptr, ptr %1, align 8               ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.bf
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.v
  call void @_ZdlPv(ptr noundef %i.cr) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

bb.w:                                             ; preds = %bb.u, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.ct = load ptr, ptr %1, align 8               ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.bf
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.w
  call void @_ZdlPv(ptr noundef %i.ct) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.pn4 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.cq, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  resume { ptr, i32 } %.pn4
}

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden noundef i64 @_ZN6embree21getVirtualMemoryBytesEv() local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %0 = alloca %"class.std::basic_ifstream", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull @.str.71, i32 noundef 8)
  %i.d = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractImEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZNSirsERm.exit unwind label %bb.b

_ZNSirsERm.exit:                                  ; preds = %bb.a
  %i.e = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractImEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSirsERm.exit1 unwind label %bb.b

_ZNSirsERm.exit1:                                 ; preds = %_ZNSirsERm.exit
  %i.f = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractImEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNSirsERm.exit2 unwind label %bb.b ; 0 uses

_ZNSirsERm.exit2:                                 ; preds = %_ZNSirsERm.exit1
  %i.g = load i64, ptr %i.a, align 8
  %i.h = call i64 @sysconf(i32 noundef 30) #18
  %i.i = mul i64 %i.h, %i.g
  %i.j = load ptr, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, align 8 ; 2 uses
  store ptr %i.j, ptr %0, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %i.o) #18
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 8), align 8 ; 2 uses
  store ptr %i.p, ptr %0, align 8
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 16), align 8
  %i.r = getelementptr i8, ptr %i.p, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  store ptr %i.q, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.v) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
end_hunk_0
begin_hunk_1_@_ZN6embree22getResidentMemoryBytesEv:bb.a
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %i.o) #18
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 8), align 8 ; 2 uses
  store ptr %i.p, ptr %0, align 8
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE, i64 16), align 8
  %i.r = getelementptr i8, ptr %i.p, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  store ptr %i.q, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.v) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i64 %i.i

bb.b:                                             ; preds = %_ZNSirsERm.exit1, %_ZNSirsERm.exit, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @_ZN6embree25getNumberOfLogicalThreadsEv() local_unnamed_addr #4 {
bb.a:
  %0 = alloca %struct.cpu_set_t, align 8          ; 4 uses
  %i.a = load i32, ptr @_ZZN6embree25getNumberOfLogicalThreadsEvE8nThreads, align 4 ; 2 uses
  %.not = icmp eq i32 %i.a, -1
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  %i.b = tail call i64 @pthread_self() #22
  %i.c = call i32 @pthread_getaffinity_np(i64 noundef %i.b, i64 noundef 128, ptr noundef nonnull %0) #18
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i32, ptr @_ZZN6embree25getNumberOfLogicalThreadsEvE8nThreads, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @__sched_cpucount(i64 noundef 128, ptr noundef nonnull %0) #18 ; 2 uses
  store i32 %i.e, ptr @_ZZN6embree25getNumberOfLogicalThreadsEvE8nThreads, align 4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.f = phi i32 [ %.pre, %._crit_edge ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ %i.f, %bb.d ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @pthread_getaffinity_np(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__sched_cpucount(i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef range(i32 0, 65536) i32 @_ZN6embree16getTerminalWidthEv() local_unnamed_addr #4 {
bb.a:
  %0 = alloca %struct.winsize, align 2            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  %i.a = call i32 (i32, i64, ...) @ioctl(i32 noundef 1, i64 noundef 21523, ptr noundef nonnull %0) #18
  %i.b = icmp slt i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.d = load i16, ptr %i.c, align 2
  %i.e = zext i16 %i.d to i32
  %.0 = select i1 %i.b, i32 80, i32 %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden noundef double @_ZN6embree10getSecondsEv() local_unnamed_addr #10 {
bb.a:
  %0 = alloca %struct.timeval, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  %i.a = call i32 @gettimeofday(ptr noundef nonnull %0, ptr noundef null) #18 ; 0 uses
  %i.b = load i64, ptr %0, align 8
  %i.c = sitofp i64 %i.b to double
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = sitofp i64 %i.e to double
  %i.g = fdiv double %i.f, 1.000000e+06
  %i.h = fadd double %i.g, %i.c
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  ret double %i.h
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6embree12sleepSecondsEd(double noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = fmul double %0, 1.000000e+06
  %i.b = fptoui double %i.a to i32
  %i.c = tail call i32 @usleep(i32 noundef %i.b)  ; 0 uses
  ret void
}

declare i32 @usleep(i32 noundef) local_unnamed_addr #11

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt13basic_filebufIcSt11char_traitsIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240)) unnamed_addr #4 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractImEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-sha512,-sm3,-sm4,-sse4.2,-vaes,-vpclmulqdq,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind memory(none) }
attributes #21 = { noreturn }
attributes #22 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{i64 3468808}
!4 = distinct !{!4, i1 true, !"_ZN6embree12getCPUVendorB5cxx11Ev"}
!5 = distinct !{!5, !4, !"_ZN6embree12getCPUVendorB5cxx11Ev: argument 0"}
!6 = !{!5}
!7 = !{i64 10891}
!8 = !{i64 3468975}
!9 = distinct !{!9, i1 true, !"_ZNSt7__cxx119to_stringEx"}
!10 = distinct !{!10, !9, !"_ZNSt7__cxx119to_stringEx: argument 0"}
!11 = distinct !{!11, !17}
!12 = distinct !{!12, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!13 = distinct !{!13, !12, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!14 = distinct !{!14, i1 true, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!15 = distinct !{!15, !14, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!16 = !{!10}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!13}
!19 = !{!15}
end_hunk_1
