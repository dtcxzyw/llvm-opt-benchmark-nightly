Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/httplib?download=true
inline.NumInlined: 21893
inline.NumDeleted: 6596
loop-unroll.NumCompletelyUnrolled: 58
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN7httplib6detail21write_websocket_frameERNS_6StreamENS_2ws6OpcodeEPKcmbb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit74, %bb.x, %bb.y
  br label %bb.aa

.critedge:                                        ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit72, %bb.y, %.critedge, %bb.f, %bb.d, %bb.b, %bb.e, %bb.g, %bb.z
  %.7 = phi i1 [ false, %bb.g ], [ true, %bb.z ], [ false, %_ZNSt6vectorIcSaIcEED2Ev.exit72 ], [ false, %.critedge ], [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i1 %.7

bb.ab:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %_ZNSt13random_deviceD2Ev.exit68
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt6vectorIcSaIcEED2Ev.exit ], [ %i.bq, %_ZNSt13random_deviceD2Ev.exit68 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt13random_deviceC2Ev(ptr noundef nonnull align 8 dereferenceable(5000) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.a, ptr noundef nonnull align 1 dereferenceable(7) @.str.343, i64 7, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 7, ptr %i.b, align 8, !tbaa !183
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 0, ptr %i.c, align 1, !tbaa !184
  invoke void @_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(5000) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %1, align 8, !tbaa !196    ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !184
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %1, align 8, !tbaa !196    ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.b
  %i.k = load i64, ptr %i.a, align 8, !tbaa !184
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %i.h
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv(ptr noundef nonnull align 8 dereferenceable(5000) %0) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4992 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !300  ; 2 uses
  %i.c = icmp ugt i64 %i.b, 623
  br i1 %i.c, label %vector.ph, label %bb.b

vector.ph:                                        ; preds = %bb.a
  %.pre.i = load i64, ptr %0, align 8, !tbaa !197
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.load = load <2 x i64>, ptr %i.f, align 8, !tbaa !197 ; 5 uses
  %i.g = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.h = and <2 x i64> %i.g, splat (i64 -2147483648)
  %i.i = and <2 x i64> %wide.load, splat (i64 2147483646)
  %i.j = or disjoint <2 x i64> %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 3176
  %wide.load9 = load <2 x i64>, ptr %i.k, align 8, !tbaa !197
  %i.l = lshr exact <2 x i64> %i.j, splat (i64 1)
  %i.m = xor <2 x i64> %i.l, %wide.load9
  %i.n = and <2 x i64> %wide.load, splat (i64 1)
  %i.o = icmp eq <2 x i64> %i.n, zeroinitializer
  %i.p = select <2 x i1> %i.o, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.q = xor <2 x i64> %i.m, %i.p
  store <2 x i64> %i.q, ptr %i.d, align 8, !tbaa !197
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.r = icmp eq i64 %index.next, 226
  br i1 %i.r, label %vector.ph11, label %vector.body, !llvm.loop !1352

vector.ph11:                                      ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %wide.load, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1808
  %i.t = and i64 %vector.recur.extract, -2147483648
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.v = load i64, ptr %i.u, align 8, !tbaa !197  ; 2 uses
  %i.w = and i64 %i.v, 2147483646
  %i.x = or disjoint i64 %i.w, %i.t
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4984
  %i.z = load i64, ptr %i.y, align 8, !tbaa !197
  %i.aa = lshr exact i64 %i.x, 1
  %i.ab = xor i64 %i.aa, %i.z
  %i.ac = and i64 %i.v, 1
  %.not20.i = icmp eq i64 %i.ac, 0
  %i.ad = select i1 %.not20.i, i64 0, i64 2567483615
  %i.ae = xor i64 %i.ab, %i.ad
  store i64 %i.ae, ptr %i.s, align 8, !tbaa !197
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %.pre24.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !197
  %vector.recur.init14 = insertelement <2 x i64> poison, i64 %.pre24.i, i64 1
  br label %vector.body12

vector.body12:                                    ; preds = %vector.body12, %vector.ph11
  %index13 = phi i64 [ 0, %vector.ph11 ], [ %index.next18, %vector.body12 ] ; 3 uses
  %vector.recur15 = phi <2 x i64> [ %vector.recur.init14, %vector.ph11 ], [ %wide.load16, %vector.body12 ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index13 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1816
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index13
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1824
  %wide.load16 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !197 ; 4 uses
  %i.aj = shufflevector <2 x i64> %vector.recur15, <2 x i64> %wide.load16, <2 x i32> <i32 1, i32 2>
  %i.ak = and <2 x i64> %i.aj, splat (i64 -2147483648)
  %i.al = and <2 x i64> %wide.load16, splat (i64 2147483646)
  %i.am = or disjoint <2 x i64> %i.al, %i.ak
  %wide.load17 = load <2 x i64>, ptr %i.af, align 8, !tbaa !197
  %i.an = lshr exact <2 x i64> %i.am, splat (i64 1)
  %i.ao = xor <2 x i64> %i.an, %wide.load17
  %i.ap = and <2 x i64> %wide.load16, splat (i64 1)
  %i.aq = icmp eq <2 x i64> %i.ap, zeroinitializer
  %i.ar = select <2 x i1> %i.aq, <2 x i64> zeroinitializer, <2 x i64> splat (i64 2567483615)
  %i.as = xor <2 x i64> %i.ao, %i.ar
  store <2 x i64> %i.as, ptr %i.ag, align 8, !tbaa !197
  %index.next18 = add nuw i64 %index13, 2         ; 2 uses
  %i.at = icmp eq i64 %index.next18, 396
  br i1 %i.at, label %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit, label %vector.body12, !llvm.loop !1353

_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit: ; preds = %vector.body12
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4984 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !197
  %i.aw = and i64 %i.av, -2147483648
  %i.ax = load i64, ptr %0, align 8, !tbaa !197   ; 2 uses
  %i.ay = and i64 %i.ax, 2147483646
  %i.az = or disjoint i64 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !197
  %i.bc = lshr exact i64 %i.az, 1
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = and i64 %i.ax, 1
  %.not.i = icmp eq i64 %i.be, 0
  %i.bf = select i1 %.not.i, i64 0, i64 2567483615
  %i.bg = xor i64 %i.bd, %i.bf
  store i64 %i.bg, ptr %i.au, align 8, !tbaa !197
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit, %bb.a
  %i.bh = phi i64 [ 0, %_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.bi = add nuw nsw i64 %i.bh, 1
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !300
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bh
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !197 ; 2 uses
  %i.bl = lshr i64 %i.bk, 11
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = xor i64 %i.bm, %i.bk                    ; 2 uses
  %i.bo = shl i64 %i.bn, 7
  %i.bp = and i64 %i.bo, 2636928640
  %i.bq = xor i64 %i.bp, %i.bn                    ; 2 uses
  %i.br = shl i64 %i.bq, 15
  %i.bs = and i64 %i.br, 4022730752
  %i.bt = xor i64 %i.bs, %i.bq                    ; 2 uses
  %i.bu = lshr i64 %i.bt, 18
  %i.bv = xor i64 %i.bu, %i.bt
  ret i64 %i.bv
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib2ws4impl20read_websocket_frameERNS_6StreamERNS0_6OpcodeERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERbbm(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %3, i1 noundef zeroext %4, i64 noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = alloca [2 x i8], align 1                 ; 5 uses
  %i.c = alloca [8 x i8], align 1                 ; 12 uses
  %i.d = alloca [4 x i8], align 4                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.e = load ptr, ptr %0, align 8, !tbaa !201
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call noundef i64 %i.g(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.a, i64 noundef 2)
  %.not = icmp eq i64 %i.h, 2
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.a, align 1, !tbaa !184   ; 5 uses
  %.lobit = lshr i8 %i.i, 7
  store i8 %.lobit, ptr %3, align 1, !tbaa !303
  %i.j = and i8 %i.i, 112
  %.not63 = icmp eq i8 %i.j, 0
  br i1 %.not63, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.k = and i8 %i.i, 15
  store i8 %i.k, ptr %1, align 1, !tbaa !305
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !184   ; 4 uses
  %i.n = icmp slt i8 %i.m, 0                      ; 2 uses
  %i.o = and i8 %i.m, 127                         ; 3 uses
  %i.p = zext nneg i8 %i.o to i64
  %i.q = and i8 %i.i, 8
  %.not64 = icmp eq i8 %i.q, 0
  br i1 %.not64, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp slt i8 %i.i, 0
  %i.s = icmp samesign ult i8 %i.o, 126
  %i.t = icmp sgt i8 %i.m, -1
  %.not6667 = xor i1 %4, %i.t
  %i.u = and i1 %i.s, %.not6667
  %or.cond77 = select i1 %i.r, i1 %i.u, i1 false
  br i1 %or.cond77, label %bb.f, label %bb.n

bb.e:                                             ; preds = %bb.c
  %.old = icmp sgt i8 %i.m, -1
  %.not6667.old = xor i1 %4, %.old
  br i1 %.not6667.old, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.d, %bb.e
  switch i8 %i.o, label %bb.i [
    i8 126, label %bb.g
    i8 127, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.v = load ptr, ptr %0, align 8, !tbaa !201
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call noundef i64 %i.x(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.b, i64 noundef 2)
  %.not70 = icmp eq i64 %i.y, 2
  %6 = load i8, ptr %i.b, align 1
  %7 = zext i8 %6 to i64
  %8 = shl nuw nsw i64 %7, 8
  %9 = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %10 = load i8, ptr %9, align 1
  %i.z = zext i8 %10 to i64
  %11 = or disjoint i64 %8, %i.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br i1 %.not70, label %bb.i, label %bb.n

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.aa = load ptr, ptr %0, align 8, !tbaa !201
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call noundef i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.c, i64 noundef 8)
  %.not68 = icmp eq i64 %i.ad, 8
  %i.ae = load i8, ptr %i.c, align 1              ; 2 uses
  %.not69 = icmp sgt i8 %i.ae, -1
  %or.cond79 = select i1 %.not68, i1 %.not69, i1 false
  br i1 %or.cond79, label %.preheader86.preheader, label %.critedge

.preheader86.preheader:                           ; preds = %bb.h
  %i.af = zext nneg i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !184
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.af, 16
  %i.ak = shl nuw nsw i64 %i.ai, 8
  %i.al = or disjoint i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !184
  %i.ao = zext i8 %i.an to i64
  %i.ap = or disjoint i64 %i.al, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !184
  %i.as = zext i8 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.ap, 16
  %i.au = shl nuw nsw i64 %i.as, 8
  %i.av = or disjoint i64 %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !184
  %i.ay = zext i8 %i.ax to i64
  %i.az = or disjoint i64 %i.av, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !184
  %i.bc = zext i8 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.az, 16
  %i.be = shl nuw nsw i64 %i.bc, 8
  %i.bf = or disjoint i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !184
  %i.bi = zext i8 %i.bh to i64
  %i.bj = or disjoint i64 %i.bf, %i.bi
  %i.bk = shl nuw nsw i64 %i.bj, 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !184
  %i.bn = zext i8 %i.bm to i64
  %i.bo = or disjoint i64 %i.bk, %i.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.i

bb.i:                                             ; preds = %.preheader86.preheader, %bb.f, %bb.g
  %.3 = phi i64 [ %11, %bb.g ], [ %i.bo, %.preheader86.preheader ], [ %i.p, %bb.f ] ; 5 uses
  %i.bp = icmp ugt i64 %.3, %5
  br i1 %i.bp, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i32 0, ptr %i.d, align 4
  br i1 %i.n, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bq = load ptr, ptr %0, align 8, !tbaa !201
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = call noundef i64 %i.bs(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.d, i64 noundef 4)
  %.not71 = icmp eq i64 %i.bt, 4
  br i1 %.not71, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %.3, i8 noundef signext 0)
  %.not72 = icmp eq i64 %.3, 0
  br i1 %.not72, label %.critedge75, label %.preheader84

.preheader84:                                     ; preds = %bb.l, %bb.m
  %.048 = phi i64 [ %i.cc, %bb.m ], [ 0, %bb.l ]  ; 4 uses
  %.not73 = icmp ult i64 %.048, %.3
  br i1 %.not73, label %bb.m, label %.critedge75

bb.m:                                             ; preds = %.preheader84
  %i.bu = load ptr, ptr %2, align 8, !tbaa !196
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.048
  %i.bw = sub nuw nsw i64 %.3, %.048
  %i.bx = load ptr, ptr %0, align 8, !tbaa !201
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = call noundef i64 %i.bz(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull %i.bv, i64 noundef %i.bw) ; 2 uses
  %i.cb = icmp sgt i64 %i.ca, 0
  %i.cc = add i64 %i.ca, %.048
  br i1 %i.cb, label %.preheader84, label %.loopexit, !llvm.loop !1354

.critedge75:                                      ; preds = %.preheader84, %bb.l
  br i1 %i.n, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.critedge75
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !183
  %.not90 = icmp eq i64 %i.ce, 0
  br i1 %.not90, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.089 = phi i64 [ %i.cm, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.cf = and i64 %.089, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !184
  %i.ci = load ptr, ptr %2, align 8, !tbaa !196
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.089 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !184
  %i.cl = xor i8 %i.ck, %i.ch
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !184
  %i.cm = add nuw i64 %.089, 1                    ; 2 uses
  %i.cn = load i64, ptr %i.cd, align 8, !tbaa !183
  %i.co = icmp ult i64 %i.cm, %i.cn
  br i1 %i.co, label %.lr.ph, label %.loopexit, !llvm.loop !1355

.loopexit:                                        ; preds = %bb.m, %.lr.ph, %.preheader, %.critedge75, %bb.k
  %.6 = phi i1 [ true, %.critedge75 ], [ false, %bb.k ], [ true, %.preheader ], [ true, %.lr.ph ], [ false, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.n

.critedge:                                        ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.n

bb.n:                                             ; preds = %.loopexit, %bb.g, %bb.d, %bb.e, %.critedge, %bb.i, %bb.b, %bb.a
  %.8 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.i ], [ false, %bb.e ], [ %.6, %.loopexit ], [ false, %bb.g ], [ false, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i1 %.8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7httplib6detail13is_valid_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !183  ; 8 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.critedge.split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !196
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.03875 = phi i64 [ 0, %.lr.ph ], [ %i.g, %bb.c ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %.03875
  %i.e = load i8, ptr %i.d, align 1, !tbaa !184
  %i.f = icmp eq i8 %i.e, 47
  br i1 %i.f, label %bb.c, label %.critedge.split

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %.03875, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.g, %i.b
  br i1 %exitcond.not, label %.critedge50, label %bb.b, !llvm.loop !1356

.critedge.split:                                  ; preds = %bb.b, %bb.a
  %.038.lcssa = phi i64 [ 0, %bb.a ], [ %.03875, %bb.b ] ; 2 uses
  %.not91 = icmp ult i64 %.038.lcssa, %i.b
  br i1 %.not91, label %.preheader.lr.ph, label %.critedge50

.preheader.lr.ph:                                 ; preds = %.critedge.split
  %i.h = load ptr, ptr %0, align 8, !tbaa !196    ; 4 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge4
  %.13987 = phi i64 [ %.038.lcssa, %.preheader.lr.ph ], [ %.3.lcssa, %.critedge4 ] ; 6 uses
  %.04086 = phi i64 [ 0, %.preheader.lr.ph ], [ %.141, %.critedge4 ] ; 4 uses
  %i.i = add nuw i64 %.13987, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.i) ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.e
  %.280 = phi i64 [ %.13987, %.preheader ], [ %i.l, %bb.e ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.280
  %i.k = load i8, ptr %i.j, align 1, !tbaa !184
  switch i8 %i.k, label %bb.e [
    i8 47, label %.critedge2
    i8 0, label %.critedge50
    i8 92, label %.critedge50
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = add i64 %.280, 1                         ; 2 uses
  %exitcond94.not = icmp eq i64 %i.l, %umax
  br i1 %exitcond94.not, label %.critedge2, label %bb.d, !llvm.loop !1357

.critedge2:                                       ; preds = %bb.d, %bb.e
  %.2.lcssa = phi i64 [ %.280, %bb.d ], [ %umax, %bb.e ] ; 4 uses
  %i.m = tail call i64 @llvm.umin.i64(i64 %.2.lcssa, i64 %i.b) ; 2 uses
  %spec.select.i.i = sub nuw i64 %i.m, %.13987    ; 3 uses
  %cond = icmp eq i64 %i.m, %.13987
  br i1 %cond, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit61.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i:     ; preds = %.critedge2
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %.13987
  %lhsc = load i8, ptr %i.n, align 1
  %.not.i = icmp eq i8 %lhsc, 46
  %.not48 = icmp eq i64 %spec.select.i.i, 1
  %or.cond = and i1 %.not48, %.not.i
  br i1 %or.cond, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i51: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i
  %.sroa.speculated.i53 = tail call i64 @llvm.umin.i64(i64 %spec.select.i.i, i64 2)
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %.13987
  %bcmp = tail call i32 @bcmp(ptr %i.o, ptr nonnull @.str.28, i64 %.sroa.speculated.i53)
  %.not.i55 = icmp eq i32 %bcmp, 0
  %.not49 = icmp eq i64 %spec.select.i.i, 2
  %or.cond66 = and i1 %.not49, %.not.i55
  br i1 %or.cond66, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit61.thread

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i51
  %i.p = icmp eq i64 %.04086, 0
  br i1 %i.p, label %.critedge50, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = add i64 %.04086, -1
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit61.thread: ; preds = %.critedge2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i51
  %i.r = add i64 %.04086, 1
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit61.thread
  %.141 = phi i64 [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEmmPKc.exit61.thread ], [ %i.q, %bb.g ], [ %.04086, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i ]
  %i.s = icmp ult i64 %.2.lcssa, %i.b
  br i1 %i.s, label %.lr.ph82, label %.critedge4

.lr.ph82:                                         ; preds = %bb.h, %bb.i
  %.381 = phi i64 [ %i.w, %bb.i ], [ %.2.lcssa, %bb.h ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 %.381
  %i.u = load i8, ptr %i.t, align 1, !tbaa !184
  %i.v = icmp eq i8 %i.u, 47
  br i1 %i.v, label %bb.i, label %.critedge4

bb.i:                                             ; preds = %.lr.ph82
  %i.w = add i64 %.381, 1                         ; 2 uses
  %exitcond95.not = icmp eq i64 %i.w, %i.b
  br i1 %exitcond95.not, label %.critedge50, label %.lr.ph82, !llvm.loop !1358

.critedge4:                                       ; preds = %.lr.ph82, %bb.h
  %.3.lcssa = phi i64 [ %.2.lcssa, %bb.h ], [ %.381, %.lr.ph82 ] ; 2 uses
  %.not92 = icmp ult i64 %.3.lcssa, %i.b
  br i1 %.not92, label %.preheader, label %.critedge50, !llvm.loop !1359

.critedge50:                                      ; preds = %bb.c, %.critedge4, %bb.f, %bb.d, %bb.d, %bb.i, %.critedge.split
  %i.x = phi i1 [ true, %.critedge.split ], [ false, %bb.f ], [ true, %bb.i ], [ false, %bb.d ], [ false, %bb.d ], [ true, %.critedge4 ], [ true, %bb.c ]
  ret i1 %i.x
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7httplib6detail17canonicalize_pathEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #7 {
end_hunk_0
