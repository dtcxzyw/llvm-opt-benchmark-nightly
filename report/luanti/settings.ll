Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/settings?download=true
inline.NumInlined: 2016
inline.NumDeleted: 709
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK8Settings6getU64ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.ap = load i64, ptr %i.d, align 8, !tbaa !46
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  ret i64 %i.r

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ar, %bb.e ], [ %i.ae, %bb.d ]
  %i.as = load ptr, ptr %3, align 8, !tbaa !45    ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.d
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %.body
  %i.au = load i64, ptr %i.d, align 8, !tbaa !46
  %i.av = add i64 %i.au, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.av) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define dso_local <2 x float> @_ZNK8Settings6getV2FERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.BasicStrfnd, align 8         ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8Settings3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !55
  store i8 0, ptr %i.b, align 8, !tbaa !46
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_ZN11BasicStrfndIcEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !45     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.b, align 8, !tbaa !46
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #29
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZN11BasicStrfndIcED2Ev.exit51
  %common.resume.op = phi { ptr, i32 } [ %.pn10.pn, %_ZN11BasicStrfndIcED2Ev.exit51 ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN11BasicStrfndIcEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 0, ptr %i.i, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !53
  store i8 40, ptr %i.j, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 1, ptr %i.k, align 8, !tbaa !55
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 17
  store i8 0, ptr %i.l, align 1, !tbaa !46
  invoke void @_ZN11BasicStrfndIcE4nextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN11BasicStrfndIcEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.m = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.p = load i64, ptr %i.n, align 8, !tbaa !46
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.r = load ptr, ptr %4, align 8, !tbaa !45     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.j
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.j, align 8, !tbaa !46
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.v, ptr %6, align 8, !tbaa !53
  store i8 44, ptr %i.v, align 8, !tbaa !46
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.w, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 17
  store i8 0, ptr %i.x, align 1, !tbaa !46
  invoke void @_ZN11BasicStrfndIcE4nextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.y = load ptr, ptr %5, align 8, !tbaa !45
  %i.z = call nsz double @strtod(ptr noundef nonnull captures(none) %i.y, ptr noundef null) #31, !inline_history !11
  %i.aa = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ac = icmp eq ptr %i.aa, %i.ab
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.d
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !46
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ae) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20
  %i.af = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.v
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %i.ah = load i64, ptr %i.v, align 8, !tbaa !46
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.ai) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.aj, ptr %8, align 8, !tbaa !53
  store i8 41, ptr %i.aj, align 8, !tbaa !46
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 1, ptr %i.ak, align 8, !tbaa !55
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 0, ptr %i.al, align 1, !tbaa !46
  invoke void @_ZN11BasicStrfndIcE4nextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %i.am = load ptr, ptr %7, align 8, !tbaa !45
  %i.an = call nsz double @strtod(ptr noundef nonnull captures(none) %i.am, ptr noundef null) #31, !inline_history !11
  %i.ao = load ptr, ptr %7, align 8, !tbaa !45    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.e
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !46
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  %i.at = load ptr, ptr %8, align 8, !tbaa !45    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.aj
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.av = load i64, ptr %i.aj, align 8, !tbaa !46
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.ax = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.b
  br i1 %i.ay, label %_ZN11BasicStrfndIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
  %i.az = load i64, ptr %i.b, align 8, !tbaa !46
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.ba) #29
  br label %_ZN11BasicStrfndIcED2Ev.exit

_ZN11BasicStrfndIcED2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36
  %i.bb = insertelement <2 x double> poison, double %i.z, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.an, i64 1
  %i.bd = fptrunc <2 x double> %i.bc to <2 x float>
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret <2 x float> %i.bd

bb.f:                                             ; preds = %_ZN11BasicStrfndIcEC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.j
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.f
  %i.bh = load i64, ptr %i.j, align 8, !tbaa !46
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.i

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = load ptr, ptr %6, align 8, !tbaa !45    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.v
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.g
  %i.bm = load i64, ptr %i.v, align 8, !tbaa !46
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.i

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %8, align 8, !tbaa !45    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.aj
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %bb.h
  %i.br = load i64, ptr %i.aj, align 8, !tbaa !46
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %.pn10.pn = phi { ptr, i32 } [ %i.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47 ], [ %i.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44 ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ]
  %i.bt = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.b
  br i1 %i.bu, label %_ZN11BasicStrfndIcED2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48: ; preds = %bb.i
  %i.bv = load i64, ptr %i.b, align 8, !tbaa !46
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #29
  br label %_ZN11BasicStrfndIcED2Ev.exit51

_ZN11BasicStrfndIcED2Ev.exit51:                   ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11BasicStrfndIcE4nextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !136  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !55   ; 3 uses
  %.not = icmp ult i64 %i.c, %i.e
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !55
  store i8 0, ptr %i.f, align 8, !tbaa !46
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !55   ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %2, align 8, !tbaa !45
  %i.l = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.k, i64 noundef %i.c, i64 noundef %i.i) #31 ; 2 uses
  %i.m = icmp eq i64 %i.l, -1
  %.pre7 = load i64, ptr %i.d, align 8, !tbaa !55 ; 2 uses
  %spec.select = select i1 %i.m, i64 %.pre7, i64 %i.l
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %i.n = phi i64 [ %.pre7, %bb.d ], [ %i.e, %bb.c ] ; 3 uses
  %.0 = phi i64 [ %spec.select, %bb.d ], [ %i.e, %bb.c ] ; 2 uses
  %i.o = load i64, ptr %i.b, align 8, !tbaa !136  ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  %i.p = icmp ugt i64 %i.o, %i.n
  br i1 %i.p, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.e:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.62, i64 noundef %i.o, i64 noundef %i.n) #32, !noalias !241
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %._crit_edge
  %i.q = sub i64 %.0, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !53, !alias.scope !241
  %i.s = load ptr, ptr %1, align 8, !tbaa !45, !noalias !241
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.o ; 2 uses
  %i.u = sub nuw i64 %i.n, %i.o
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.q, i64 %i.u) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31, !noalias !241
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !54, !noalias !241
  %i.v = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.v, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.w = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.w, ptr %0, align 8, !tbaa !45, !alias.scope !241
  %i.x = load i64, ptr %i.a, align 8, !tbaa !54, !noalias !241
  store i64 %i.x, ptr %i.r, align 8, !tbaa !46, !alias.scope !241
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.y = phi ptr [ %i.w, %.noexc10.i.i ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.z = load i8, ptr %i.t, align 1, !tbaa !46
  store i8 %i.z, ptr %i.y, align 1, !tbaa !46
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.t, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !54, !noalias !241 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !55, !alias.scope !241
  %i.ac = load ptr, ptr %0, align 8, !tbaa !45, !alias.scope !241
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31, !noalias !241
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !55
  %i.af = add i64 %i.ae, %.0
  store i64 %i.af, ptr %i.b, align 8, !tbaa !136
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, i64 } @_ZNK8Settings6getV3FERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8Settings3getERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !55
  %i.e = tail call { <2 x float>, i64 } @_Z10str_to_v3fSt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.d, ptr %i.b)
  ret { <2 x float>, i64 } %i.e
}

declare { <2 x float>, i64 } @_Z10str_to_v3fSt17basic_string_viewIcSt11char_traitsIcEE(i64, ptr) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK8Settings10getFlagStrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK8FlagDescPj(ptr noundef nonnull align 8 dereferenceable(236) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr nofree noundef captures(address_is_null) %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZNK8Settings9getParentEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.g = load i32, ptr %i.f, align 8, !tbaa !72   ; 2 uses
end_hunk_0
