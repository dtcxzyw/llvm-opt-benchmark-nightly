Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Width?download=true
inline.NumInlined: 18720
inline.NumDeleted: 2434
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN12WidthVisitor5visitEP7AstCast:bb.a
  call void @_ZdlPvm(ptr noundef %i.azc, i64 noundef %i.azg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit941

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit941: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit938, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i939
  %i.azh = load ptr, ptr %104, align 8, !tbaa !54 ; 2 uses
  %i.azi = getelementptr inbounds nuw i8, ptr %104, i64 16 ; 2 uses
  %i.azj = icmp eq ptr %i.azh, %i.azi
  br i1 %i.azj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit944, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i942

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i942: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit941
  %i.azk = load i64, ptr %i.azi, align 8, !tbaa !32
  %i.azl = add i64 %i.azk, 1
  call void @_ZdlPvm(ptr noundef %i.azh, i64 noundef %i.azl) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit944

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit944: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit941, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i942
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #25
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %99) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #25
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %91) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #25
  br label %bb.om

bb.od:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit927
  %i.azm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit959

bb.oe:                                            ; preds = %bb.ny
  %i.azn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit956

bb.of:                                            ; preds = %bb.nz
  %i.azo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit953

bb.og:                                            ; preds = %bb.oa
  %i.azp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950

bb.oh:                                            ; preds = %bb.ob
  %i.azq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit947

bb.oi:                                            ; preds = %bb.oc
  %i.azr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.azs = load ptr, ptr %101, align 8, !tbaa !54 ; 2 uses
  %i.azt = getelementptr inbounds nuw i8, ptr %101, i64 16 ; 2 uses
  %i.azu = icmp eq ptr %i.azs, %i.azt
  br i1 %i.azu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit947, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i945

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i945: ; preds = %bb.oi
  %i.azv = load i64, ptr %i.azt, align 8, !tbaa !32
  %i.azw = add i64 %i.azv, 1
  call void @_ZdlPvm(ptr noundef %i.azs, i64 noundef %i.azw) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit947

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit947: ; preds = %bb.oi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i945, %bb.oh
  %.pn391 = phi { ptr, i32 } [ %i.azq, %bb.oh ], [ %i.azr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i945 ], [ %i.azr, %bb.oi ] ; 2 uses
  %i.azx = load ptr, ptr %102, align 8, !tbaa !54 ; 2 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %102, i64 16 ; 2 uses
  %i.azz = icmp eq ptr %i.azx, %i.azy
  br i1 %i.azz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i948

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i948: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit947
  %i.baa = load i64, ptr %i.azy, align 8, !tbaa !32
  %i.bab = add i64 %i.baa, 1
  call void @_ZdlPvm(ptr noundef %i.azx, i64 noundef %i.bab) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit947, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i948, %bb.og
  %.pn391.pn = phi { ptr, i32 } [ %i.azp, %bb.og ], [ %.pn391, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i948 ], [ %.pn391, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit947 ] ; 2 uses
  %i.bac = load ptr, ptr %105, align 8, !tbaa !54 ; 2 uses
  %i.bad = getelementptr inbounds nuw i8, ptr %105, i64 16 ; 2 uses
  %i.bae = icmp eq ptr %i.bac, %i.bad
  br i1 %i.bae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit953, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i951

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i951: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950
  %i.baf = load i64, ptr %i.bad, align 8, !tbaa !32
  %i.bag = add i64 %i.baf, 1
  call void @_ZdlPvm(ptr noundef %i.bac, i64 noundef %i.bag) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit953

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit953: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i951, %bb.of
  %.pn391.pn.pn = phi { ptr, i32 } [ %i.azo, %bb.of ], [ %.pn391.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i951 ], [ %.pn391.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit950 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #25
  %i.bah = load ptr, ptr %103, align 8, !tbaa !54 ; 2 uses
  %i.bai = getelementptr inbounds nuw i8, ptr %103, i64 16 ; 2 uses
  %i.baj = icmp eq ptr %i.bah, %i.bai
  br i1 %i.baj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit956, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i954

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i954: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit953
  %i.bak = load i64, ptr %i.bai, align 8, !tbaa !32
  %i.bal = add i64 %i.bak, 1
  call void @_ZdlPvm(ptr noundef %i.bah, i64 noundef %i.bal) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit956

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit956: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit953, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i954, %bb.oe
  %.pn391.pn.pn.pn = phi { ptr, i32 } [ %i.azn, %bb.oe ], [ %.pn391.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i954 ], [ %.pn391.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit953 ] ; 2 uses
  %i.bam = load ptr, ptr %104, align 8, !tbaa !54 ; 2 uses
  %i.ban = getelementptr inbounds nuw i8, ptr %104, i64 16 ; 2 uses
  %i.bao = icmp eq ptr %i.bam, %i.ban
  br i1 %i.bao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit959, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i957

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i957: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit956
  %i.bap = load i64, ptr %i.ban, align 8, !tbaa !32
  %i.baq = add i64 %i.bap, 1
  call void @_ZdlPvm(ptr noundef %i.bam, i64 noundef %i.baq) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit959

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit959: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit956, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i957, %bb.od
  %.pn391.pn.pn.pn.pn = phi { ptr, i32 } [ %i.azm, %bb.od ], [ %.pn391.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i957 ], [ %.pn391.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit956 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %103) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %102) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %101) #25
  br label %bb.oj

bb.oj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit959, %bb.nx, %bb.nw
  %.pn391.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn391.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit959 ], [ %i.ayl, %bb.nw ], [ %i.aym, %bb.nx ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %99) #25
  br label %bb.ok

bb.ok:                                            ; preds = %bb.oj, %bb.nv
  %.pn391.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn391.pn.pn.pn.pn.pn, %bb.oj ], [ %i.ayk, %bb.nv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %99) #25
  br label %bb.ol

bb.ol:                                            ; preds = %bb.ok, %bb.nq, %bb.nb, %bb.na
  %.pn391.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn391.pn.pn.pn.pn.pn.pn, %bb.ok ], [ %.pn387.pn.pn, %bb.nq ], [ %i.awk, %bb.na ], [ %i.awl, %bb.nb ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %91) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %91) #25
  br label %common.resume

bb.om:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit944, %bb.mn
  call void @_ZN7AstNode11replaceWithEPS_(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull %i.aty)
  %i.bar = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN9VNDeleter11pushDeletepEP7AstNode(ptr noundef nonnull align 8 dereferenceable(24) %i.bar, ptr noundef nonnull %1)
  br label %bb.on

bb.on:                                            ; preds = %bb.a, %bb.om, %bb.im
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN12WidthVisitor5visitEP14AstCastDynamic(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %class.WidthVP, align 8             ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @_ZN7AstNode19dtypeChgWidthSignedEii8VSigning(ptr noundef nonnull align 8 dereferenceable(152) %1, i32 noundef 32, i32 noundef 1, i8 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr null, ptr %2, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 3, ptr %i.b, align 8, !tbaa !56
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 2 uses
  store ptr %2, ptr %i.c, align 8, !tbaa !126
  invoke void @_ZN7AstNode15iterateChildrenER9VNVisitor(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(632) %0)
          to label %_ZN12WidthVisitor19userIterateChildrenEP7AstNodeP7WidthVP.exit unwind label %bb.b

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %bb.bi, %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %bb.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %bb.ac, %bb.cl, %bb.ah, %bb.k, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.bg, %bb.k ], [ %i.cq, %bb.ah ], [ %i.kx, %bb.cl ], [ %i.iz, %bb.bx ], [ %.pn80, %bb.bi ], [ %.pn73.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149 ], [ %.pn70.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167 ], [ %i.hc, %bb.bn ], [ %.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ], [ %.pn84, %bb.ac ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  store ptr %i.d, ptr %i.c, align 8, !tbaa !58
  br label %common.resume

_ZN12WidthVisitor19userIterateChildrenEP7AstNodeP7WidthVP.exit: ; preds = %bb.a
  store ptr %i.d, ptr %i.c, align 8, !tbaa !58
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !202
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !259
  %i.j = call noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.i, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true) ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !201
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !259
  %i.o = call noundef ptr @_ZNK12AstNodeDType12skipRefIterpEbbb(ptr noundef nonnull align 8 dereferenceable(162) %i.n, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true) ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !271  ; 17 uses
  %i.r = load ptr, ptr %i.k, align 8, !tbaa !201
  %i.s = call i8 @_ZN7AstNode15computeCastableEPK12AstNodeDTypeS2_PKS_(ptr noundef %i.j, ptr noundef %i.o, ptr noundef %i.r)
  switch i8 %i.s, label %bb.bs [
    i8 5, label %bb.cm
    i8 3, label %bb.c
    i8 4, label %bb.c
    i8 1, label %bb.ad
    i8 2, label %bb.ad
    i8 6, label %bb.bj
  ]

bb.c:                                             ; preds = %_ZN12WidthVisitor19userIterateChildrenEP7AstNodeP7WidthVP.exit, %_ZN12WidthVisitor19userIterateChildrenEP7AstNodeP7WidthVP.exit
  %.not.i88 = icmp eq ptr %i.j, null
  br i1 %.not.i88, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.t, align 8, !tbaa !195
  %.not6.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 83
  br i1 %.not6.i, label %_ZN7AstNode2asI12AstEnumDType12AstNodeDTypeEEPT_PT0_.exit, label %bb.e, !prof !258

bb.e:                                             ; preds = %bb.d
  %i.u = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.44, i32 noundef 1063) ; 0 uses
  %i.v = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.w = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr noundef nonnull @.str.45)
  %.sroa.0.0.copyload.i.i5.i = load i16, ptr %i.t, align 8, !tbaa !195
  %i.x = zext i16 %.sroa.0.0.copyload.i.i5.i to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !47
  %i.aa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef %i.z)
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull @.str.27)
  call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.j, ptr noundef nonnull align 8 dereferenceable(112) %i.ab) #26
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.ac = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.5, i32 noundef 2626) ; 0 uses
  %i.ad = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull @.str.724)
  call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.ae) #26
  unreachable

_ZN7AstNode2asI12AstEnumDType12AstNodeDTypeEEPT_PT0_.exit: ; preds = %bb.d
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !201
  %i.ag = call noundef ptr @_ZN12WidthVisitor13enumTestValidEP11AstNodeExprP12AstEnumDType(ptr noundef %i.af, ptr noundef nonnull %i.j)
  %i.ah = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #30 ; 9 uses
  %i.ai = load <2 x i16>, ptr %i.q, align 8, !tbaa !337
  store <2 x i16> %i.ai, ptr %i.ah, align 8, !tbaa !337
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  store i32 %i.al, ptr %i.aj, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ao = load <2 x i32>, ptr %i.an, align 8, !tbaa !131
  store <2 x i32> %i.ao, ptr %i.am, align 8, !tbaa !131
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = and i64 %i.ar, 16777215
  %11 = getelementptr i8, ptr %i.q, i64 20
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 16777215
  %14 = zext nneg i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 32
  %16 = or disjoint i64 %15, %i.as
  store i64 %16, ptr %i.ap, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.av = load i16, ptr %i.au, align 8, !tbaa !338
  store i16 %i.av, ptr %i.at, align 8, !tbaa !338
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.ay = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !339
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !340 ; 2 uses
  store <2 x ptr> %i.ay, ptr %i.aw, align 8, !tbaa !339
  %.not.i89 = icmp eq ptr %i.az, null
  br i1 %.not.i89, label %_ZN8FileLineC2EPS_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7AstNode2asI12AstEnumDType12AstNodeDTypeEEPT_PT0_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = atomicrmw add ptr %i.ba, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN8FileLineC2EPS_.exit

_ZN8FileLineC2EPS_.exit:                          ; preds = %bb.g, %_ZN7AstNode2asI12AstEnumDType12AstNodeDTypeEEPT_PT0_.exit
  %i.bc = load atomic i8, ptr @_ZGVZN8FileLine9singletonEvE1s acquire, align 8
  %i.bd = icmp eq i8 %i.bc, 0
  br i1 %i.bd, label %bb.h, label %_ZN8FileLine7warnOffE11V3ErrorCodeb.exit, !prof !222

bb.h:                                             ; preds = %_ZN8FileLineC2EPS_.exit
  %i.be = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #25
  %.not.i.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i.i, label %_ZN8FileLine7warnOffE11V3ErrorCodeb.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN17FileLineSingletonC2Ev(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bf = call i32 @__cxa_atexit(ptr nonnull @_ZN17FileLineSingletonD2Ev, ptr nonnull @_ZZN8FileLine9singletonEvE1s, ptr nonnull @__dso_handle) #25 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #25
  br label %_ZN8FileLine7warnOffE11V3ErrorCodeb.exit

bb.k:                                             ; preds = %bb.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #25
  br label %common.resume

_ZN8FileLine7warnOffE11V3ErrorCodeb.exit:         ; preds = %_ZN8FileLineC2EPS_.exit, %bb.h, %bb.j
  %i.bh = load i16, ptr %i.ah, align 8, !tbaa !325
  %i.bi = call noundef zeroext i16 @_ZN17FileLineSingleton11msgEnSetBitEtNS_11MsgEnBitSet6SubsetE11V3ErrorCodeb(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s, i16 noundef zeroext %i.bh, i8 noundef zeroext 0, i8 55, i1 noundef zeroext false)
  store i16 %i.bi, ptr %i.ah, align 8, !tbaa !325
  %i.bj = call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #30 ; 3 uses
  %i.bk = invoke noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #30
          to label %bb.l unwind label %bb.w       ; 8 uses

bb.l:                                             ; preds = %_ZN8FileLine7warnOffE11V3ErrorCodeb.exit
  %i.bl = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #30
          to label %bb.m unwind label %bb.x       ; 10 uses

bb.m:                                             ; preds = %bb.l
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !202
  %i.bn = invoke noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %i.bm, ptr noundef null)
          to label %bb.n unwind label %bb.y       ; 3 uses

bb.n:                                             ; preds = %bb.m
  %i.bo = load ptr, ptr %i.k, align 8, !tbaa !201
  %i.bp = invoke noundef ptr @_ZN7AstNode12unlinkFrBackEP10VNRelinker(ptr noundef nonnull align 8 dereferenceable(152) %i.bo, ptr noundef null)
          to label %_ZN11AstNodeExpr12unlinkFrBackEP10VNRelinker.exit90 unwind label %bb.y

_ZN11AstNodeExpr12unlinkFrBackEP10VNRelinker.exit90: ; preds = %bb.n
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %i.bl, i16 466, ptr noundef nonnull %i.ah)
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %_ZN11AstNodeExpr12unlinkFrBackEP10VNRelinker.exit90
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV13AstNodeAssign, i64 16), ptr %i.bl, align 8, !tbaa !34
  invoke void @_ZN7AstNode7setOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.bl, ptr noundef %i.bp)
          to label %.noexc91 unwind label %bb.y

.noexc91:                                         ; preds = %.noexc
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(152) %i.bl, ptr noundef %i.bn)
          to label %.noexc92 unwind label %bb.y

.noexc92:                                         ; preds = %.noexc91
  %.not.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i, label %_ZN13AstNodeAssignC2E6VNTypeP8FileLineP11AstNodeExprS4_P7AstNode.exit.i, label %bb.o

bb.o:                                             ; preds = %.noexc92
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 72 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !259 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 72 ; 3 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !259
  %.not.i.i8.i.i = icmp eq ptr %i.bt, %i.br
  br i1 %.not.i.i8.i.i, label %.thread.i, label %bb.p

.thread.i:                                        ; preds = %bb.o
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV9AstAssign, i64 16), ptr %i.bl, align 8, !tbaa !34
  br label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit

_ZN13AstNodeAssignC2E6VNTypeP8FileLineP11AstNodeExprS4_P7AstNode.exit.i: ; preds = %.noexc92
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV9AstAssign, i64 16), ptr %i.bl, align 8, !tbaa !34
  br label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit

bb.p:                                             ; preds = %bb.o
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !259
  %i.bu = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !192 ; 2 uses
  %i.bv = add i64 %i.bu, 1
  store i64 %i.bv, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !192
  %.pre.i = load ptr, ptr %i.bq, align 8, !tbaa !259 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 336) (i8, ptr @_ZTV9AstAssign, i64 16), ptr %i.bl, align 8, !tbaa !34
  %.not.i.i7.i = icmp eq ptr %i.br, %.pre.i
  br i1 %.not.i.i7.i, label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %.pre.i, ptr %i.bs, align 8, !tbaa !259
  %i.bw = add i64 %i.bu, 2
  store i64 %i.bw, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !192
  br label %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit

_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit: ; preds = %bb.q, %bb.p, %_ZN13AstNodeAssignC2E6VNTypeP8FileLineP11AstNodeExprS4_P7AstNode.exit.i, %.thread.i
  %i.bx = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #30
          to label %bb.r unwind label %bb.x       ; 4 uses

bb.r:                                             ; preds = %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit
  invoke void @_ZN8AstConstC2EP8FileLineNS_8Signed32Ei(ptr noundef nonnull align 8 dereferenceable(208) %i.bx, ptr noundef nonnull %i.q, i32 noundef 1)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(160) %i.bk, i16 132, ptr noundef nonnull %i.q)
          to label %.noexc95 unwind label %bb.x

.noexc95:                                         ; preds = %bb.s
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTV11AstExprStmt, i64 16), ptr %i.bk, align 8, !tbaa !34
  %i.by = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  store i8 1, ptr %i.by, align 8, !tbaa !342
  invoke void @_ZN7AstNode7addOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.bk, ptr noundef nonnull %i.bl)
          to label %.noexc96 unwind label %bb.x

.noexc96:                                         ; preds = %.noexc95
  invoke void @_ZN7AstNode7setOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(160) %i.bk, ptr noundef nonnull %i.bx)
          to label %.noexc97 unwind label %bb.x

.noexc97:                                         ; preds = %.noexc96
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !259 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 72 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !259
  %.not.i.i7.i94 = icmp eq ptr %i.cc, %i.ca
  br i1 %.not.i.i7.i94, label %_ZN11AstExprStmtC2EP8FileLineP7AstNodeP11AstNodeExpr.exit, label %bb.t

bb.t:                                             ; preds = %.noexc97
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !259
  %i.cd = load i64, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !192
  %i.ce = add i64 %i.cd, 1
  store i64 %i.ce, ptr @_ZN7AstNode12s_editCntGblE, align 8, !tbaa !192
  br label %_ZN11AstExprStmtC2EP8FileLineP7AstNodeP11AstNodeExpr.exit

_ZN11AstExprStmtC2EP8FileLineP7AstNodeP11AstNodeExpr.exit: ; preds = %bb.t, %.noexc97
  %i.cf = invoke noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #30
          to label %bb.u unwind label %bb.w       ; 3 uses

bb.u:                                             ; preds = %_ZN11AstExprStmtC2EP8FileLineP7AstNodeP11AstNodeExpr.exit
  invoke void @_ZN8AstConstC2EP8FileLineNS_8Signed32Ei(ptr noundef nonnull align 8 dereferenceable(208) %i.cf, ptr noundef nonnull %i.q, i32 noundef 0)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN7AstCondC1EP8FileLineP11AstNodeExprS3_S3_(ptr noundef nonnull align 8 dereferenceable(160) %i.bj, ptr noundef nonnull %i.q, ptr noundef %i.ag, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.cf)
          to label %bb.cf unwind label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN11AstExprStmtC2EP8FileLineP7AstNodeP11AstNodeExpr.exit, %_ZN8FileLine7warnOffE11V3ErrorCodeb.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.x:                                             ; preds = %.noexc96, %.noexc95, %bb.s, %_ZN9AstAssignC2EP8FileLineP11AstNodeExprS3_P7AstNode.exit, %bb.l
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.y:                                             ; preds = %.noexc91, %.noexc, %_ZN11AstNodeExpr12unlinkFrBackEP10VNRelinker.exit90, %bb.n, %bb.m
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef 152) #27
  br label %bb.aa

bb.z:                                             ; preds = %bb.r
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef 208) #27
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.pn82 = phi { ptr, i32 } [ %i.ch, %bb.x ], [ %i.cj, %bb.z ], [ %i.ci, %bb.y ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 160) #27
  br label %bb.ac

bb.ab:                                            ; preds = %bb.u
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef 208) #27
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.w
  %.pn84 = phi { ptr, i32 } [ %i.cg, %bb.w ], [ %i.ck, %bb.ab ], [ %.pn82, %bb.aa ]
  call void @_ZdlPvm(ptr noundef nonnull %i.bj, i64 noundef 160) #27
  br label %common.resume
end_hunk_0
