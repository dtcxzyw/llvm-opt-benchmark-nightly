Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/colvar?download=true
inline.NumInlined: 7189
inline.NumDeleted: 2028
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZNK6colvar11dist2_lgradERK11colvarvalueS2_:bb.a

bb.f:                                             ; preds = %bb.e
  %i.ab = fadd double %i.t, %i.x
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ac = fadd double %i.v, %i.y
  %i.ad = fcmp ogt double %i.t, %i.ac
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = fsub double %i.t, %i.x
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.af = phi double [ %i.ab, %bb.f ], [ %i.ae, %bb.h ], [ %i.t, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ag = fmul double %i.af, 2.000000e+00
  store double %i.ag, ptr %i.a, align 8, !tbaa !245
  call void @_ZN11colvarvalueC1ERKd(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.m

bb.j:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 1153
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !63, !range !113, !noundef !114
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4432
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !118
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !123 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 176
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr dead_on_unwind writable sret(%class.colvarvalue) align 8 %0, ptr noundef nonnull align 8 dereferenceable(1608) %i.am, ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull align 8 dereferenceable(168) %3)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  tail call void @_ZNK11colvarvalue10dist2_gradERKS_(ptr dead_on_unwind writable sret(%class.colvarvalue) align 8 %0, ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull align 8 dereferenceable(168) %3)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef double @_ZN6colvar20update_forces_energyEv(ptr noundef nonnull align 8 dereferenceable(4624) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.colvarvalue, align 8         ; 15 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2720 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 672
  tail call void @_ZN11colvarvalue4typeERKS_(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(168) %i.c)
  tail call void @_ZN11colvarvalue5resetEv(ptr noundef nonnull align 8 dereferenceable(168) %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1880
  tail call void @_ZN11colvarvalue5resetEv(ptr noundef nonnull align 8 dereferenceable(168) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !63, !range !113, !noundef !114
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2384
  tail call void @_ZN11colvarvaluepLERKS_(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(168) %i.j)
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !57   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 353
  %i.m = load i8, ptr %i.l, align 1, !tbaa !63, !range !113, !noundef !114
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 385
  %i.p = load i8, ptr %i.o, align 1, !tbaa !63, !range !113, !noundef !114
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.t = load i32, ptr %i.s, align 8, !tbaa !203
  %i.u = sitofp i32 %i.t to double
  store double %i.u, ptr %i.a, align 8, !tbaa !245
  call void @_ZmlRK11colvarvalueRKd(ptr dead_on_unwind nonnull writable sret(%class.colvarvalue) align 8 %1, ptr noundef nonnull align 8 dereferenceable(168) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  invoke void @_ZN11colvarvaluemIERKS_(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(168) %1)
          to label %bb.e unwind label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !60
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.f, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !60
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i:                 ; preds = %bb.g, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !224 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !225
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #29
  br label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !213 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !226
  %.not.i.i.i4.i = icmp eq ptr %i.at, %i.ar
  br i1 %.not.i.i.i4.i, label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !226
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i

_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i:            ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i, %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i, label %_ZN11colvarvalueD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !214
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.ar to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef %i.ay) #29
  br label %_ZN11colvarvalueD2Ev.exit

_ZN11colvarvalueD2Ev.exit:                        ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !57
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %_ZN11colvarvalueD2Ev.exit, %bb.b
  %i.az = phi ptr [ %i.k, %bb.c ], [ %.pre, %_ZN11colvarvalueD2Ev.exit ], [ %i.k, %bb.b ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 417
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !63, !range !113, !noundef !114
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bd = load ptr, ptr @_ZN12colvarmodule5proxyE, align 8, !tbaa !65
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1136
  %i.bf = load i8, ptr %i.be, align 8, !tbaa !112, !range !113, !noundef !114
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZN6colvar26update_extended_LagrangianEv(ptr noundef nonnull align 8 dereferenceable(4624) %0)
  %.pre50 = load ptr, ptr %i.e, align 8, !tbaa !57
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.bh = phi ptr [ %.pre50, %bb.l ], [ %i.az, %bb.k ], [ %i.az, %bb.j ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 449
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !63, !range !113, !noundef !114
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2552
  call void @_ZN11colvarvaluepLERKS_(ptr noundef nonnull align 8 dereferenceable(168) %i.b, ptr noundef nonnull align 8 dereferenceable(168) %i.bl)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4424
  %3 = load double, ptr %2, align 8, !tbaa !306
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4416
  %4 = load double, ptr %i.bm, align 8, !tbaa !307
  %5 = fadd double %3, %4
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o
  %.06 = phi double [ %5, %bb.o ], [ 0.000000e+00, %bb.a ]
  ret double %.06

bb.q:                                             ; preds = %bb.d
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11colvarvalueD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %i.bn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6colvar26update_extended_LagrangianEv(ptr noundef nonnull align 8 dereferenceable(4624) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 4 uses
  %i.m = alloca i32, align 4                      ; 4 uses
  %i.n = alloca i32, align 4                      ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i32, align 4                      ; 4 uses
  %i.r = alloca i32, align 4                      ; 4 uses
  %i.s = alloca double, align 8                   ; 4 uses
  %i.t = alloca i32, align 4                      ; 4 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %i.v = alloca i32, align 4                      ; 4 uses
  %i.w = alloca i32, align 4                      ; 4 uses
  %i.x = alloca i32, align 4                      ; 4 uses
  %i.y = alloca i32, align 4                      ; 4 uses
  %i.z = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.aa = alloca i64, align 8                     ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.ab = alloca i64, align 8                     ; 5 uses
  %i.ac = alloca double, align 8                  ; 9 uses
  %16 = alloca %class.colvarvalue, align 8        ; 46 uses
  %i.ad = alloca i32, align 4                     ; 4 uses
  %17 = alloca %class.colvarvalue, align 8        ; 23 uses
  %i.ae = alloca double, align 8                  ; 5 uses
  %18 = alloca %class.colvarvalue, align 8        ; 45 uses
  %i.af = alloca i32, align 4                     ; 5 uses
  %19 = alloca %class.colvarvalue, align 8        ; 23 uses
  %i.ag = alloca double, align 8                  ; 5 uses
  %20 = alloca %class.colvarvalue, align 8        ; 17 uses
  %21 = alloca %class.colvarvalue, align 8        ; 23 uses
  %i.ah = alloca double, align 8                  ; 5 uses
  %22 = alloca %class.colvarvalue, align 8        ; 15 uses
  %23 = alloca %class.colvarvalue, align 8        ; 15 uses
  %i.ai = alloca double, align 8                  ; 5 uses
  %24 = alloca %class.colvarvalue, align 8        ; 15 uses
  %i.aj = alloca double, align 8                  ; 5 uses
  %25 = alloca %class.colvarvalue, align 8        ; 15 uses
  %26 = alloca %class.colvarvalue, align 8        ; 15 uses
  %i.ak = alloca double, align 8                  ; 5 uses
  %27 = alloca %class.colvarvalue, align 8        ; 15 uses
  %28 = alloca %class.colvarvalue, align 8        ; 15 uses
  %i.al = alloca double, align 8                  ; 5 uses
  %29 = alloca %class.colvarvalue, align 8        ; 16 uses
  %30 = alloca %class.colvarvalue, align 8        ; 23 uses
  %31 = alloca %class.colvarvalue, align 8        ; 15 uses
  %i.am = alloca double, align 8                  ; 5 uses
  %32 = alloca %class.colvarvalue, align 8        ; 15 uses
  %33 = alloca %class.colvarvalue, align 8        ; 15 uses
  %34 = alloca %class.colvarvalue, align 8        ; 15 uses
  %35 = alloca %class.colvarvalue, align 8        ; 15 uses
  %i.an = alloca double, align 8                  ; 5 uses
  %36 = alloca %class.colvarvalue, align 8        ; 15 uses
  %37 = alloca %class.colvarvalue, align 8        ; 15 uses
  %38 = alloca %class.colvarvalue, align 8        ; 15 uses
  %i.ao = alloca double, align 8                  ; 5 uses
  %39 = alloca %class.colvarvalue, align 8        ; 23 uses
  %i.ap = alloca double, align 8                  ; 5 uses
  %40 = alloca %class.colvarvalue, align 8        ; 15 uses
  %41 = alloca %class.colvarvalue, align 8        ; 15 uses
  %42 = alloca %class.colvarvalue, align 8        ; 15 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3600
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !204 ; 3 uses
  %i.as = icmp sgt i64 %i.ar, -1
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %18, i64 144
  %.sink.sroa.gep1105 = getelementptr inbounds nuw i8, ptr %16, i64 144
  br i1 %i.as, label %bb.b, label %bb.bm

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #28
  %i.at = load i64, ptr @_ZN12colvarmodule2itE, align 8, !tbaa !301
  %i.au = load i64, ptr @_ZN12colvarmodule10it_restartE, align 8, !tbaa !301
  %i.av = sub nsw i64 %i.at, %i.au                ; 2 uses
  %i.aw = sub nsw i64 %i.av, %i.ar                ; 2 uses
  store i64 %i.aw, ptr %i.z, align 8, !tbaa !301
  %.not = icmp eq i64 %i.av, %i.ar
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !203
  %i.az = sext i32 %i.ay to i64
  %.not96 = icmp eq i64 %i.aw, %i.az
  br i1 %.not96, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !991)
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !53, !noalias !991
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !43, !noalias !991 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 8 uses
  store ptr %i.be, ptr %11, align 8, !tbaa !40, !alias.scope !992
  %i.bf = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !43, !alias.scope !992
  store i8 0, ptr %i.be, align 8, !tbaa !44, !alias.scope !992
  %i.bg = add i64 %i.bd, 27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.bg)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !43, !alias.scope !992
  %i.bi = add i64 %i.bh, -4611686018427387877
  %i.bj = icmp ult i64 %i.bi, 27
  br i1 %i.bj, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.e
  %i.bk = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.323, i64 noundef 27)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.f ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bl = load i64, ptr %i.bf, align 8, !tbaa !43, !alias.scope !992
  %i.bm = sub i64 4611686018427387903, %i.bl
  %i.bn = icmp ult i64 %i.bm, %i.bd
  br i1 %i.bn, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #31
          to label %.cont.i.i unwind label %bb.f

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.bb, i64 noundef %i.bd)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %bb.d
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bq = load ptr, ptr %11, align 8, !tbaa !53, !alias.scope !992 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.be
  br i1 %i.br, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  %i.bs = load i64, ptr %i.be, align 8, !tbaa !44, !alias.scope !992
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #29
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360, %bb.oq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %.pn97.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360 ], [ %i.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %.pn157.pn.pn.pn, %bb.oq ], [ %i.bp, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !993)
  %i.bu = load i64, ptr %i.bf, align 8, !tbaa !43, !noalias !993
  %i.bv = add i64 %i.bu, -4611686018427387884
  %i.bw = icmp ult i64 %i.bv, 20
end_hunk_0
begin_hunk_1_@_ZN6colvar26update_extended_LagrangianEv:bb.a

.noexc454:                                        ; preds = %bb.fk
  %i.ajs = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.ajt = getelementptr inbounds nuw i8, ptr %0, i64 1776
  %i.aju = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.ajt, ptr noundef nonnull align 8 dereferenceable(24) %i.ajs)
          to label %.noexc455 unwind label %bb.cr ; 0 uses

.noexc455:                                        ; preds = %.noexc454
  %i.ajv = getelementptr inbounds nuw i8, ptr %0, i64 1632
  %i.ajw = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.ajx = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ajw, ptr noundef nonnull align 8 dereferenceable(24) %i.ajv)
          to label %.noexc456 unwind label %bb.cr ; 0 uses

.noexc456:                                        ; preds = %.noexc455
  %i.ajy = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.ajz = getelementptr inbounds nuw i8, ptr %0, i64 1824
  %i.aka = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.ajz, ptr noundef nonnull align 8 dereferenceable(24) %i.ajy)
          to label %_ZN11colvarvalueaSERKS_.exit459 unwind label %bb.cr ; 0 uses

bb.fl:                                            ; preds = %.noexc453
  invoke void @_ZNK11colvarvalue8undef_opEv(ptr noundef nonnull align 8 dereferenceable(168) %i.ajd)
          to label %_ZN11colvarvalueaSERKS_.exit459 unwind label %bb.cr

_ZN11colvarvalueaSERKS_.exit459:                  ; preds = %bb.fj, %bb.fi, %bb.fh, %.noexc456, %bb.fl
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #28
  %i.akb = load double, ptr %i.ac, align 8, !tbaa !245
  %i.akc = fmul double %i.akb, 5.000000e-01
  store double %i.akc, ptr %i.ai, align 8, !tbaa !245
  invoke void @_ZmlRKdRK11colvarvalue(ptr dead_on_unwind nonnull writable sret(%class.colvarvalue) align 8 %23, ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(168) %16)
          to label %bb.fm unwind label %bb.iq

bb.fm:                                            ; preds = %_ZN11colvarvalueaSERKS_.exit459
  %i.akd = getelementptr inbounds nuw i8, ptr %0, i64 1848 ; 4 uses
  invoke void @_ZdvRK11colvarvalueRKd(ptr dead_on_unwind nonnull writable sret(%class.colvarvalue) align 8 %22, ptr noundef nonnull align 8 dereferenceable(168) %23, ptr noundef nonnull align 8 dereferenceable(8) %i.akd)
          to label %bb.fn unwind label %bb.ir

bb.fn:                                            ; preds = %bb.fm
  invoke void @_ZN11colvarvaluepLERKS_(ptr noundef nonnull align 8 dereferenceable(168) %i.ajc, ptr noundef nonnull align 8 dereferenceable(168) %22)
          to label %bb.fo unwind label %bb.is

bb.fo:                                            ; preds = %bb.fn
  %i.ake = getelementptr inbounds nuw i8, ptr %22, i64 144
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !31 ; 3 uses
  %.not.i.i.i.i460 = icmp eq ptr %i.akf, null
  br i1 %.not.i.i.i.i460, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i461, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.akg = getelementptr inbounds nuw i8, ptr %22, i64 160
  %i.akh = load ptr, ptr %i.akg, align 8, !tbaa !60
  %i.aki = ptrtoint ptr %i.akh to i64
  %i.akj = ptrtoint ptr %i.akf to i64
  %i.akk = sub i64 %i.aki, %i.akj
  call void @_ZdlPvm(ptr noundef nonnull %i.akf, i64 noundef %i.akk) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i461

_ZNSt6vectorIiSaIiEED2Ev.exit.i461:               ; preds = %bb.fp, %bb.fo
  %i.akl = getelementptr inbounds nuw i8, ptr %22, i64 120
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !31 ; 3 uses
  %.not.i.i.i1.i462 = icmp eq ptr %i.akm, null
  br i1 %.not.i.i.i1.i462, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i463, label %bb.fq

bb.fq:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i461
  %i.akn = getelementptr inbounds nuw i8, ptr %22, i64 136
  %i.ako = load ptr, ptr %i.akn, align 8, !tbaa !60
  %i.akp = ptrtoint ptr %i.ako to i64
  %i.akq = ptrtoint ptr %i.akm to i64
  %i.akr = sub i64 %i.akp, %i.akq
  call void @_ZdlPvm(ptr noundef nonnull %i.akm, i64 noundef %i.akr) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i463

_ZNSt6vectorIiSaIiEED2Ev.exit2.i463:              ; preds = %bb.fq, %_ZNSt6vectorIiSaIiEED2Ev.exit.i461
  %i.aks = getelementptr inbounds nuw i8, ptr %22, i64 96
  %i.akt = load ptr, ptr %i.aks, align 8, !tbaa !224 ; 3 uses
  %.not.i.i.i3.i464 = icmp eq ptr %i.akt, null
  br i1 %.not.i.i.i3.i464, label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i465, label %bb.fr

bb.fr:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i463
  %i.aku = getelementptr inbounds nuw i8, ptr %22, i64 112
  %i.akv = load ptr, ptr %i.aku, align 8, !tbaa !225
  %i.akw = ptrtoint ptr %i.akv to i64
  %i.akx = ptrtoint ptr %i.akt to i64
  %i.aky = sub i64 %i.akw, %i.akx
  call void @_ZdlPvm(ptr noundef nonnull %i.akt, i64 noundef %i.aky) #29
  br label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i465

_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i465: ; preds = %bb.fr, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i463
  %i.akz = getelementptr inbounds nuw i8, ptr %22, i64 72
  %i.ala = load ptr, ptr %i.akz, align 8, !tbaa !213 ; 5 uses
  %i.alb = getelementptr inbounds nuw i8, ptr %22, i64 80 ; 2 uses
  %i.alc = load ptr, ptr %i.alb, align 8, !tbaa !226
  %.not.i.i.i4.i466 = icmp eq ptr %i.alc, %i.ala
  br i1 %.not.i.i.i4.i466, label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i468, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i467

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i467: ; preds = %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i465
  store ptr %i.ala, ptr %i.alb, align 8, !tbaa !226
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i468

_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i468:         ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i467, %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i465
  %.not.i.i.i.i.i469 = icmp eq ptr %i.ala, null
  br i1 %.not.i.i.i.i.i469, label %_ZN11colvarvalueD2Ev.exit470, label %bb.fs

bb.fs:                                            ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i468
  %i.ald = getelementptr inbounds nuw i8, ptr %22, i64 88
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !214
  %i.alf = ptrtoint ptr %i.ale to i64
  %i.alg = ptrtoint ptr %i.ala to i64
  %i.alh = sub i64 %i.alf, %i.alg
  call void @_ZdlPvm(ptr noundef nonnull %i.ala, i64 noundef %i.alh) #29
  br label %_ZN11colvarvalueD2Ev.exit470

_ZN11colvarvalueD2Ev.exit470:                     ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i468, %bb.fs
  %i.ali = getelementptr inbounds nuw i8, ptr %23, i64 144
  %i.alj = load ptr, ptr %i.ali, align 8, !tbaa !31 ; 3 uses
  %.not.i.i.i.i471 = icmp eq ptr %i.alj, null
  br i1 %.not.i.i.i.i471, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i472, label %bb.ft

bb.ft:                                            ; preds = %_ZN11colvarvalueD2Ev.exit470
  %i.alk = getelementptr inbounds nuw i8, ptr %23, i64 160
  %i.all = load ptr, ptr %i.alk, align 8, !tbaa !60
  %i.alm = ptrtoint ptr %i.all to i64
  %i.aln = ptrtoint ptr %i.alj to i64
  %i.alo = sub i64 %i.alm, %i.aln
  call void @_ZdlPvm(ptr noundef nonnull %i.alj, i64 noundef %i.alo) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i472

_ZNSt6vectorIiSaIiEED2Ev.exit.i472:               ; preds = %bb.ft, %_ZN11colvarvalueD2Ev.exit470
  %i.alp = getelementptr inbounds nuw i8, ptr %23, i64 120
  %i.alq = load ptr, ptr %i.alp, align 8, !tbaa !31 ; 3 uses
  %.not.i.i.i1.i473 = icmp eq ptr %i.alq, null
  br i1 %.not.i.i.i1.i473, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i474, label %bb.fu

bb.fu:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i472
  %i.alr = getelementptr inbounds nuw i8, ptr %23, i64 136
  %i.als = load ptr, ptr %i.alr, align 8, !tbaa !60
  %i.alt = ptrtoint ptr %i.als to i64
  %i.alu = ptrtoint ptr %i.alq to i64
  %i.alv = sub i64 %i.alt, %i.alu
  call void @_ZdlPvm(ptr noundef nonnull %i.alq, i64 noundef %i.alv) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i474

_ZNSt6vectorIiSaIiEED2Ev.exit2.i474:              ; preds = %bb.fu, %_ZNSt6vectorIiSaIiEED2Ev.exit.i472
  %i.alw = getelementptr inbounds nuw i8, ptr %23, i64 96
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !224 ; 3 uses
  %.not.i.i.i3.i475 = icmp eq ptr %i.alx, null
  br i1 %.not.i.i.i3.i475, label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i476, label %bb.fv

bb.fv:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i474
  %i.aly = getelementptr inbounds nuw i8, ptr %23, i64 112
  %i.alz = load ptr, ptr %i.aly, align 8, !tbaa !225
  %i.ama = ptrtoint ptr %i.alz to i64
  %i.amb = ptrtoint ptr %i.alx to i64
  %i.amc = sub i64 %i.ama, %i.amb
  call void @_ZdlPvm(ptr noundef nonnull %i.alx, i64 noundef %i.amc) #29
  br label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i476

_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i476: ; preds = %bb.fv, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i474
  %i.amd = getelementptr inbounds nuw i8, ptr %23, i64 72
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !213 ; 5 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %23, i64 80 ; 2 uses
  %i.amg = load ptr, ptr %i.amf, align 8, !tbaa !226
  %.not.i.i.i4.i477 = icmp eq ptr %i.amg, %i.ame
  br i1 %.not.i.i.i4.i477, label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i479, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i478

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i478: ; preds = %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i476
  store ptr %i.ame, ptr %i.amf, align 8, !tbaa !226
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i479

_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i479:         ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i478, %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i476
  %.not.i.i.i.i.i480 = icmp eq ptr %i.ame, null
  br i1 %.not.i.i.i.i.i480, label %_ZN11colvarvalueD2Ev.exit481, label %bb.fw

bb.fw:                                            ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i479
  %i.amh = getelementptr inbounds nuw i8, ptr %23, i64 88
  %i.ami = load ptr, ptr %i.amh, align 8, !tbaa !214
  %i.amj = ptrtoint ptr %i.ami to i64
  %i.amk = ptrtoint ptr %i.ame to i64
  %i.aml = sub i64 %i.amj, %i.amk
  call void @_ZdlPvm(ptr noundef nonnull %i.ame, i64 noundef %i.aml) #29
  br label %_ZN11colvarvalueD2Ev.exit481

_ZN11colvarvalueD2Ev.exit481:                     ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i479, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #28
  %i.amm = load double, ptr %i.akd, align 8, !tbaa !261
  %i.amn = fmul double %i.amm, 5.000000e-01
  store double %i.amn, ptr %i.aj, align 8, !tbaa !245
  invoke void @_ZmlRKdRK11colvarvalue(ptr dead_on_unwind nonnull writable sret(%class.colvarvalue) align 8 %24, ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(168) %i.ajc)
          to label %bb.fx unwind label %bb.iv

bb.fx:                                            ; preds = %_ZN11colvarvalueD2Ev.exit481
  %i.amo = invoke noundef double @_ZmlRK11colvarvalueS1_(ptr noundef nonnull align 8 dereferenceable(168) %24, ptr noundef nonnull align 8 dereferenceable(168) %i.ajc)
          to label %bb.fy unwind label %bb.iw

bb.fy:                                            ; preds = %bb.fx
  %i.amp = getelementptr inbounds nuw i8, ptr %0, i64 4416
  store double %i.amo, ptr %i.amp, align 8, !tbaa !307
  %i.amq = getelementptr inbounds nuw i8, ptr %24, i64 144
  %i.amr = load ptr, ptr %i.amq, align 8, !tbaa !31 ; 3 uses
  %.not.i.i.i.i482 = icmp eq ptr %i.amr, null
  br i1 %.not.i.i.i.i482, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i483, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.ams = getelementptr inbounds nuw i8, ptr %24, i64 160
  %i.amt = load ptr, ptr %i.ams, align 8, !tbaa !60
  %i.amu = ptrtoint ptr %i.amt to i64
  %i.amv = ptrtoint ptr %i.amr to i64
  %i.amw = sub i64 %i.amu, %i.amv
  call void @_ZdlPvm(ptr noundef nonnull %i.amr, i64 noundef %i.amw) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i483

_ZNSt6vectorIiSaIiEED2Ev.exit.i483:               ; preds = %bb.fz, %bb.fy
  %i.amx = getelementptr inbounds nuw i8, ptr %24, i64 120
  %i.amy = load ptr, ptr %i.amx, align 8, !tbaa !31 ; 3 uses
  %.not.i.i.i1.i484 = icmp eq ptr %i.amy, null
  br i1 %.not.i.i.i1.i484, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i485, label %bb.ga

bb.ga:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i483
  %i.amz = getelementptr inbounds nuw i8, ptr %24, i64 136
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !60
  %i.anb = ptrtoint ptr %i.ana to i64
  %i.anc = ptrtoint ptr %i.amy to i64
  %i.and = sub i64 %i.anb, %i.anc
  call void @_ZdlPvm(ptr noundef nonnull %i.amy, i64 noundef %i.and) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i485

_ZNSt6vectorIiSaIiEED2Ev.exit2.i485:              ; preds = %bb.ga, %_ZNSt6vectorIiSaIiEED2Ev.exit.i483
  %i.ane = getelementptr inbounds nuw i8, ptr %24, i64 96
  %i.anf = load ptr, ptr %i.ane, align 8, !tbaa !224 ; 3 uses
  %.not.i.i.i3.i486 = icmp eq ptr %i.anf, null
  br i1 %.not.i.i.i3.i486, label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i487, label %bb.gb

bb.gb:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i485
  %i.ang = getelementptr inbounds nuw i8, ptr %24, i64 112
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !225
  %i.ani = ptrtoint ptr %i.anh to i64
  %i.anj = ptrtoint ptr %i.anf to i64
  %i.ank = sub i64 %i.ani, %i.anj
  call void @_ZdlPvm(ptr noundef nonnull %i.anf, i64 noundef %i.ank) #29
  br label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i487

_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i487: ; preds = %bb.gb, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i485
  %i.anl = getelementptr inbounds nuw i8, ptr %24, i64 72
  %i.anm = load ptr, ptr %i.anl, align 8, !tbaa !213 ; 5 uses
  %i.ann = getelementptr inbounds nuw i8, ptr %24, i64 80 ; 2 uses
  %i.ano = load ptr, ptr %i.ann, align 8, !tbaa !226
  %.not.i.i.i4.i488 = icmp eq ptr %i.ano, %i.anm
  br i1 %.not.i.i.i4.i488, label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i490, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i489

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i489: ; preds = %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i487
  store ptr %i.anm, ptr %i.ann, align 8, !tbaa !226
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i490

_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i490:         ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i489, %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i487
  %.not.i.i.i.i.i491 = icmp eq ptr %i.anm, null
  br i1 %.not.i.i.i.i.i491, label %_ZN11colvarvalueD2Ev.exit492, label %bb.gc

bb.gc:                                            ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i490
  %i.anp = getelementptr inbounds nuw i8, ptr %24, i64 88
  %i.anq = load ptr, ptr %i.anp, align 8, !tbaa !214
  %i.anr = ptrtoint ptr %i.anq to i64
  %i.ans = ptrtoint ptr %i.anm to i64
  %i.ant = sub i64 %i.anr, %i.ans
  call void @_ZdlPvm(ptr noundef nonnull %i.anm, i64 noundef %i.ant) #29
  br label %_ZN11colvarvalueD2Ev.exit492

_ZN11colvarvalueD2Ev.exit492:                     ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i490, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  %i.anu = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %i.anv = load double, ptr %i.anu, align 8, !tbaa !259
  %i.anw = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 6 uses
  %i.anx = load ptr, ptr %i.sv, align 8, !tbaa !57 ; 5 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 961
  %i.anz = load i8, ptr %i.any, align 1, !tbaa !63, !range !113, !noundef !114
  %i.aoa = trunc nuw i8 %i.anz to i1
  br i1 %i.aoa, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %_ZN11colvarvalueD2Ev.exit492
  %i.aob = getelementptr inbounds nuw i8, ptr %i.anx, i64 993
  %i.aoc = load i8, ptr %i.aob, align 1, !tbaa !63, !range !113, !noundef !114
  %i.aod = trunc nuw i8 %i.aoc to i1
  br i1 %i.aod, label %bb.ge, label %bb.gl

bb.ge:                                            ; preds = %bb.gd, %_ZN11colvarvalueD2Ev.exit492
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.anx, i64 1025
  %i.aof = load i8, ptr %i.aoe, align 1, !tbaa !63, !range !113, !noundef !114
  %i.aog = trunc nuw i8 %i.aof to i1
  br i1 %i.aog, label %bb.gf, label %bb.gl

bb.gf:                                            ; preds = %bb.ge
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.anx, i64 1089
  %i.aoi = load i8, ptr %i.aoh, align 1, !tbaa !63, !range !113, !noundef !114
  %i.aoj = trunc nuw i8 %i.aoi to i1
  br i1 %i.aoj, label %bb.gg, label %bb.gl

bb.gg:                                            ; preds = %bb.gf
  %i.aok = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.aol = load double, ptr %i.aok, align 8, !tbaa !253
  %i.aom = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.aon = load double, ptr %i.aom, align 8, !tbaa !253
  %i.aoo = fsub double %i.aol, %i.aon             ; 5 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %0, i64 3232
  %i.aoq = load double, ptr %i.aop, align 8, !tbaa !256 ; 2 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %0, i64 3224
  %i.aos = load double, ptr %i.aor, align 8, !tbaa !206 ; 3 uses
  %i.aot = fmul double %i.aos, 5.000000e-01       ; 2 uses
  %i.aou = fsub double %i.aoq, %i.aot
  %i.aov = fcmp olt double %i.aoo, %i.aou
  br i1 %i.aov, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.aow = fadd double %i.aoo, %i.aos
  br label %bb.gk

bb.gi:                                            ; preds = %bb.gg
  %i.aox = fadd double %i.aoq, %i.aot
  %i.aoy = fcmp ogt double %i.aoo, %i.aox
  br i1 %i.aoy, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  %i.aoz = fsub double %i.aoo, %i.aos
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi, %bb.gh
  %i.apa = phi double [ %i.aow, %bb.gh ], [ %i.aoz, %bb.gj ], [ %i.aoo, %bb.gi ] ; 2 uses
  %i.apb = fmul double %i.apa, %i.apa
  br label %_ZNK6colvar5dist2ERK11colvarvalueS2_.exit

bb.gl:                                            ; preds = %bb.gf, %bb.ge, %bb.gd
  %i.apc = getelementptr inbounds nuw i8, ptr %i.anx, i64 1153
  %i.apd = load i8, ptr %i.apc, align 1, !tbaa !63, !range !113, !noundef !114
  %i.ape = trunc nuw i8 %i.apd to i1
  br i1 %i.ape, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.apf = getelementptr inbounds nuw i8, ptr %0, i64 4432
  %i.apg = load ptr, ptr %i.apf, align 8, !tbaa !118
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !123 ; 2 uses
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !33
  %i.apj = getelementptr inbounds nuw i8, ptr %i.api, i64 168
  %i.apk = load ptr, ptr %i.apj, align 8
  %i.apl = invoke noundef double %i.apk(ptr noundef nonnull align 8 dereferenceable(1608) %i.aph, ptr noundef nonnull align 8 dereferenceable(168) %i.aid, ptr noundef nonnull align 8 dereferenceable(168) %i.anw)
          to label %_ZNK6colvar5dist2ERK11colvarvalueS2_.exit unwind label %bb.cr, !inline_history !257

bb.gn:                                            ; preds = %bb.gl
  %i.apm = invoke noundef double @_ZNK11colvarvalue5dist2ERKS_(ptr noundef nonnull align 8 dereferenceable(168) %i.aid, ptr noundef nonnull align 8 dereferenceable(168) %i.anw)
          to label %_ZNK6colvar5dist2ERK11colvarvalueS2_.exit unwind label %bb.cr

_ZNK6colvar5dist2ERK11colvarvalueS2_.exit:        ; preds = %bb.gk, %bb.gm, %bb.gn
  %.0.i = phi double [ %i.apb, %bb.gk ], [ %i.apl, %bb.gm ], [ %i.apm, %bb.gn ]
  %i.apn = fmul double %i.anv, 5.000000e-01
  %i.apo = fmul double %i.apn, %.0.i
  %i.app = getelementptr inbounds nuw i8, ptr %0, i64 4424
  store double %i.apo, ptr %i.app, align 8, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #28
  %i.apq = load double, ptr %i.ac, align 8, !tbaa !245
  %i.apr = fmul double %i.apq, 5.000000e-01
  store double %i.apr, ptr %i.ak, align 8, !tbaa !245
  invoke void @_ZmlRKdRK11colvarvalue(ptr dead_on_unwind nonnull writable sret(%class.colvarvalue) align 8 %26, ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 8 dereferenceable(168) %16)
          to label %bb.go unwind label %bb.iy

bb.go:                                            ; preds = %_ZNK6colvar5dist2ERK11colvarvalueS2_.exit
  invoke void @_ZdvRK11colvarvalueRKd(ptr dead_on_unwind nonnull writable sret(%class.colvarvalue) align 8 %25, ptr noundef nonnull align 8 dereferenceable(168) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.akd)
          to label %bb.gp unwind label %bb.iz

bb.gp:                                            ; preds = %bb.go
  invoke void @_ZN11colvarvaluepLERKS_(ptr noundef nonnull align 8 dereferenceable(168) %i.ajc, ptr noundef nonnull align 8 dereferenceable(168) %25)
          to label %bb.gq unwind label %bb.ja

bb.gq:                                            ; preds = %bb.gp
  %i.aps = getelementptr inbounds nuw i8, ptr %25, i64 144
  %i.apt = load ptr, ptr %i.aps, align 8, !tbaa !31 ; 3 uses
  %.not.i.i.i.i495 = icmp eq ptr %i.apt, null
  br i1 %.not.i.i.i.i495, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i496, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.apu = getelementptr inbounds nuw i8, ptr %25, i64 160
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !60
  %i.apw = ptrtoint ptr %i.apv to i64
  %i.apx = ptrtoint ptr %i.apt to i64
  %i.apy = sub i64 %i.apw, %i.apx
  call void @_ZdlPvm(ptr noundef nonnull %i.apt, i64 noundef %i.apy) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i496

_ZNSt6vectorIiSaIiEED2Ev.exit.i496:               ; preds = %bb.gr, %bb.gq
  %i.apz = getelementptr inbounds nuw i8, ptr %25, i64 120
  %i.aqa = load ptr, ptr %i.apz, align 8, !tbaa !31 ; 3 uses
  %.not.i.i.i1.i497 = icmp eq ptr %i.aqa, null
  br i1 %.not.i.i.i1.i497, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i498, label %bb.gs

bb.gs:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i496
  %i.aqb = getelementptr inbounds nuw i8, ptr %25, i64 136
  %i.aqc = load ptr, ptr %i.aqb, align 8, !tbaa !60
  %i.aqd = ptrtoint ptr %i.aqc to i64
  %i.aqe = ptrtoint ptr %i.aqa to i64
  %i.aqf = sub i64 %i.aqd, %i.aqe
  call void @_ZdlPvm(ptr noundef nonnull %i.aqa, i64 noundef %i.aqf) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i498

_ZNSt6vectorIiSaIiEED2Ev.exit2.i498:              ; preds = %bb.gs, %_ZNSt6vectorIiSaIiEED2Ev.exit.i496
  %i.aqg = getelementptr inbounds nuw i8, ptr %25, i64 96
  %i.aqh = load ptr, ptr %i.aqg, align 8, !tbaa !224 ; 3 uses
  %.not.i.i.i3.i499 = icmp eq ptr %i.aqh, null
  br i1 %.not.i.i.i3.i499, label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i500, label %bb.gt

bb.gt:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i498
  %i.aqi = getelementptr inbounds nuw i8, ptr %25, i64 112
  %i.aqj = load ptr, ptr %i.aqi, align 8, !tbaa !225
  %i.aqk = ptrtoint ptr %i.aqj to i64
  %i.aql = ptrtoint ptr %i.aqh to i64
  %i.aqm = sub i64 %i.aqk, %i.aql
  call void @_ZdlPvm(ptr noundef nonnull %i.aqh, i64 noundef %i.aqm) #29
  br label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i500

_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i500: ; preds = %bb.gt, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i498
  %i.aqn = getelementptr inbounds nuw i8, ptr %25, i64 72
  %i.aqo = load ptr, ptr %i.aqn, align 8, !tbaa !213 ; 5 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %25, i64 80 ; 2 uses
  %i.aqq = load ptr, ptr %i.aqp, align 8, !tbaa !226
  %.not.i.i.i4.i501 = icmp eq ptr %i.aqq, %i.aqo
  br i1 %.not.i.i.i4.i501, label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i503, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i502

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i502: ; preds = %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i500
  store ptr %i.aqo, ptr %i.aqp, align 8, !tbaa !226
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i503

_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i503:         ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i502, %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i500
  %.not.i.i.i.i.i504 = icmp eq ptr %i.aqo, null
  br i1 %.not.i.i.i.i.i504, label %_ZN11colvarvalueD2Ev.exit505, label %bb.gu

bb.gu:                                            ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i503
  %i.aqr = getelementptr inbounds nuw i8, ptr %25, i64 88
  %i.aqs = load ptr, ptr %i.aqr, align 8, !tbaa !214
  %i.aqt = ptrtoint ptr %i.aqs to i64
  %i.aqu = ptrtoint ptr %i.aqo to i64
  %i.aqv = sub i64 %i.aqt, %i.aqu
  call void @_ZdlPvm(ptr noundef nonnull %i.aqo, i64 noundef %i.aqv) #29
  br label %_ZN11colvarvalueD2Ev.exit505

_ZN11colvarvalueD2Ev.exit505:                     ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i503, %bb.gu
  %i.aqw = getelementptr inbounds nuw i8, ptr %26, i64 144
  %i.aqx = load ptr, ptr %i.aqw, align 8, !tbaa !31 ; 3 uses
  %.not.i.i.i.i506 = icmp eq ptr %i.aqx, null
  br i1 %.not.i.i.i.i506, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i507, label %bb.gv

bb.gv:                                            ; preds = %_ZN11colvarvalueD2Ev.exit505
  %i.aqy = getelementptr inbounds nuw i8, ptr %26, i64 160
  %i.aqz = load ptr, ptr %i.aqy, align 8, !tbaa !60
  %i.ara = ptrtoint ptr %i.aqz to i64
  %i.arb = ptrtoint ptr %i.aqx to i64
  %i.arc = sub i64 %i.ara, %i.arb
  call void @_ZdlPvm(ptr noundef nonnull %i.aqx, i64 noundef %i.arc) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i507

_ZNSt6vectorIiSaIiEED2Ev.exit.i507:               ; preds = %bb.gv, %_ZN11colvarvalueD2Ev.exit505
  %i.ard = getelementptr inbounds nuw i8, ptr %26, i64 120
  %i.are = load ptr, ptr %i.ard, align 8, !tbaa !31 ; 3 uses
  %.not.i.i.i1.i508 = icmp eq ptr %i.are, null
  br i1 %.not.i.i.i1.i508, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i509, label %bb.gw

bb.gw:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i507
  %i.arf = getelementptr inbounds nuw i8, ptr %26, i64 136
  %i.arg = load ptr, ptr %i.arf, align 8, !tbaa !60
  %i.arh = ptrtoint ptr %i.arg to i64
  %i.ari = ptrtoint ptr %i.are to i64
  %i.arj = sub i64 %i.arh, %i.ari
  call void @_ZdlPvm(ptr noundef nonnull %i.are, i64 noundef %i.arj) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i509

_ZNSt6vectorIiSaIiEED2Ev.exit2.i509:              ; preds = %bb.gw, %_ZNSt6vectorIiSaIiEED2Ev.exit.i507
  %i.ark = getelementptr inbounds nuw i8, ptr %26, i64 96
  %i.arl = load ptr, ptr %i.ark, align 8, !tbaa !224 ; 3 uses
  %.not.i.i.i3.i510 = icmp eq ptr %i.arl, null
  br i1 %.not.i.i.i3.i510, label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i511, label %bb.gx

bb.gx:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i509
  %i.arm = getelementptr inbounds nuw i8, ptr %26, i64 112
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !225
  %i.aro = ptrtoint ptr %i.arn to i64
  %i.arp = ptrtoint ptr %i.arl to i64
  %i.arq = sub i64 %i.aro, %i.arp
  call void @_ZdlPvm(ptr noundef nonnull %i.arl, i64 noundef %i.arq) #29
  br label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i511

_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i511: ; preds = %bb.gx, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i509
  %i.arr = getelementptr inbounds nuw i8, ptr %26, i64 72
  %i.ars = load ptr, ptr %i.arr, align 8, !tbaa !213 ; 5 uses
  %i.art = getelementptr inbounds nuw i8, ptr %26, i64 80 ; 2 uses
  %i.aru = load ptr, ptr %i.art, align 8, !tbaa !226
  %.not.i.i.i4.i512 = icmp eq ptr %i.aru, %i.ars
  br i1 %.not.i.i.i4.i512, label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i514, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i513

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i513: ; preds = %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i511
  store ptr %i.ars, ptr %i.art, align 8, !tbaa !226
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i514

_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i514:         ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i513, %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i511
  %.not.i.i.i.i.i515 = icmp eq ptr %i.ars, null
  br i1 %.not.i.i.i.i.i515, label %_ZN11colvarvalueD2Ev.exit516, label %bb.gy

bb.gy:                                            ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i514
  %i.arv = getelementptr inbounds nuw i8, ptr %26, i64 88
  %i.arw = load ptr, ptr %i.arv, align 8, !tbaa !214
  %i.arx = ptrtoint ptr %i.arw to i64
  %i.ary = ptrtoint ptr %i.ars to i64
  %i.arz = sub i64 %i.arx, %i.ary
  call void @_ZdlPvm(ptr noundef nonnull %i.ars, i64 noundef %i.arz) #29
  br label %_ZN11colvarvalueD2Ev.exit516

_ZN11colvarvalueD2Ev.exit516:                     ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i514, %bb.gy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  invoke void @_ZmlRKdRK11colvarvalue(ptr dead_on_unwind nonnull writable sret(%class.colvarvalue) align 8 %28, ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull align 8 dereferenceable(168) %i.ajc)
          to label %bb.gz unwind label %bb.jd

bb.gz:                                            ; preds = %_ZN11colvarvalueD2Ev.exit516
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al) #28
  store double 2.000000e+00, ptr %i.al, align 8, !tbaa !245
  invoke void @_ZdvRK11colvarvalueRKd(ptr dead_on_unwind nonnull writable sret(%class.colvarvalue) align 8 %27, ptr noundef nonnull align 8 dereferenceable(168) %28, ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %bb.ha unwind label %bb.je

bb.ha:                                            ; preds = %bb.gz
  invoke void @_ZN11colvarvaluepLERKS_(ptr noundef nonnull align 8 dereferenceable(168) %i.aid, ptr noundef nonnull align 8 dereferenceable(168) %27)
          to label %bb.hb unwind label %bb.jf

bb.hb:                                            ; preds = %bb.ha
  %i.asa = getelementptr inbounds nuw i8, ptr %27, i64 144
  %i.asb = load ptr, ptr %i.asa, align 8, !tbaa !31 ; 3 uses
  %.not.i.i.i.i517 = icmp eq ptr %i.asb, null
  br i1 %.not.i.i.i.i517, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i518, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.asc = getelementptr inbounds nuw i8, ptr %27, i64 160
  %i.asd = load ptr, ptr %i.asc, align 8, !tbaa !60
  %i.ase = ptrtoint ptr %i.asd to i64
  %i.asf = ptrtoint ptr %i.asb to i64
  %i.asg = sub i64 %i.ase, %i.asf
  call void @_ZdlPvm(ptr noundef nonnull %i.asb, i64 noundef %i.asg) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i518

_ZNSt6vectorIiSaIiEED2Ev.exit.i518:               ; preds = %bb.hc, %bb.hb
  %i.ash = getelementptr inbounds nuw i8, ptr %27, i64 120
  %i.asi = load ptr, ptr %i.ash, align 8, !tbaa !31 ; 3 uses
  %.not.i.i.i1.i519 = icmp eq ptr %i.asi, null
  br i1 %.not.i.i.i1.i519, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i520, label %bb.hd

bb.hd:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i518
  %i.asj = getelementptr inbounds nuw i8, ptr %27, i64 136
  %i.ask = load ptr, ptr %i.asj, align 8, !tbaa !60
end_hunk_1
begin_hunk_2_@_ZN6colvar16write_traj_labelERSo:bb.a
bb.x:                                             ; preds = %bb.w
  %i.fe = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.385, i64 noundef 4) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.fg = add i64 %i.b, -3
  call void @_ZN12colvarmodule11wrap_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(32) %i.ff, i64 noundef %i.fg)
  %i.fh = load ptr, ptr %9, align 8, !tbaa !53
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !43
  %i.fk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %i.fh, i64 noundef %i.fj)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit71 unwind label %bb.y ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit71: ; preds = %bb.x
  %i.fl = load ptr, ptr %9, align 8, !tbaa !53    ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.fn = icmp eq ptr %i.fl, %i.fm
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit71
  %i.fo = load i64, ptr %i.fm, align 8, !tbaa !44
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fp) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit71, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fq = landingpad { ptr, i32 }
          cleanup
  %i.fr = load ptr, ptr %9, align 8, !tbaa !53    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ft = icmp eq ptr %i.fr, %i.fs
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.y
  %i.fu = load i64, ptr %i.fs, align 8, !tbaa !44
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fr, i64 noundef %i.fv) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.aa

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit74, %bb.w
  ret ptr %1

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %.pn24 = phi { ptr, i32 } [ %i.fq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77 ], [ %i.eu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ], [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49 ], [ %i.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46 ], [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ]
  resume { ptr, i32 } %.pn24
}

declare noundef i64 @_ZNK11colvarvalue12output_widthERKm(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare void @_ZN12colvarmodule11wrap_stringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN6colvar10write_trajERSo(ptr noundef nonnull align 8 dereferenceable(4624) %0, ptr noundef nonnull returned align 8 dereferenceable(8) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.colvarvalue, align 8         ; 15 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.22, i64 noundef 1) ; 0 uses
  %i.b = load i64, ptr @_ZN12colvarmodule7cv_precE, align 8, !tbaa !47
  %i.c = load ptr, ptr %1, align 8, !tbaa !33
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e
  %sext = shl i64 %i.b, 32
  %i.g = ashr exact i64 %sext, 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !333
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 545
  %i.l = load i8, ptr %i.k, align 1, !tbaa !63, !range !113, !noundef !114
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 417
  %i.o = load i8, ptr %i.n, align 1, !tbaa !63, !range !113, !noundef !114
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 449
  %i.r = load i8, ptr %i.q, align 1, !tbaa !63, !range !113, !noundef !114
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.22, i64 noundef 1) ; 0 uses
  %i.u = load i64, ptr @_ZN12colvarmodule8cv_widthE, align 8, !tbaa !47
  %i.v = load ptr, ptr %1, align 8, !tbaa !33
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %1, i64 %i.x
  %sext20 = shl i64 %i.u, 32
  %i.z = ashr exact i64 %sext20, 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !281
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11colvarvalue(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(168) %i.ab) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.22, i64 noundef 1) ; 0 uses
  %i.ae = load i64, ptr @_ZN12colvarmodule8cv_widthE, align 8, !tbaa !47
  %i.af = load ptr, ptr %1, align 8, !tbaa !33
  %i.ag = getelementptr i8, ptr %i.af, i64 -24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds i8, ptr %1, i64 %i.ah
  %sext21 = shl i64 %i.ae, 32
  %i.aj = ashr exact i64 %sext21, 32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !281
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.am = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11colvarvalue(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(168) %i.al) ; 0 uses
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !57
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.an = phi ptr [ %.pre, %bb.e ], [ %i.j, %bb.a ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 577
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !63, !range !113, !noundef !114
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 417
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !63, !range !113, !noundef !114
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 449
  %i.av = load i8, ptr %i.au, align 1, !tbaa !63, !range !113, !noundef !114
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.22, i64 noundef 1) ; 0 uses
  %i.ay = load i64, ptr @_ZN12colvarmodule8cv_widthE, align 8, !tbaa !47
  %i.az = load ptr, ptr %1, align 8, !tbaa !33
  %i.ba = getelementptr i8, ptr %i.az, i64 -24
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds i8, ptr %1, i64 %i.bb
  %sext22 = shl i64 %i.ay, 32
  %i.bd = ashr exact i64 %sext22, 32
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !281
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.bg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11colvarvalue(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(168) %i.bf) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.bh = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.22, i64 noundef 1) ; 0 uses
  %i.bi = load i64, ptr @_ZN12colvarmodule8cv_widthE, align 8, !tbaa !47
  %i.bj = load ptr, ptr %1, align 8, !tbaa !33
  %i.bk = getelementptr i8, ptr %i.bj, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %1, i64 %i.bl
  %sext23 = shl i64 %i.bi, 32
  %i.bn = ashr exact i64 %sext23, 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !281
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.bq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11colvarvalue(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(168) %i.bp) ; 0 uses
  %.pre28 = load ptr, ptr %i.i, align 8, !tbaa !57
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.br = phi ptr [ %.pre28, %bb.j ], [ %i.an, %bb.f ] ; 2 uses
  %i.bs = load i64, ptr @_ZN12colvarmodule7en_precE, align 8, !tbaa !47
  %i.bt = load ptr, ptr %1, align 8, !tbaa !33
  %i.bu = getelementptr i8, ptr %i.bt, i64 -24
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds i8, ptr %1, i64 %i.bv
  %sext24 = shl i64 %i.bs, 32
  %i.bx = ashr exact i64 %sext24, 32
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !333
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 513
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !63, !range !113, !noundef !114
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cc = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.22, i64 noundef 1) ; 0 uses
  %i.cd = load i64, ptr @_ZN12colvarmodule8en_widthE, align 8, !tbaa !47
  %i.ce = load ptr, ptr %1, align 8, !tbaa !33
  %i.cf = getelementptr i8, ptr %i.ce, i64 -24
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds i8, ptr %1, i64 %i.cg
  %sext25 = shl i64 %i.cd, 32
  %i.ci = ashr exact i64 %sext25, 32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !281
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4424
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !306
  %i.cm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, double noundef %i.cl) ; 2 uses
  %i.cn = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull @.str.22, i64 noundef 1) ; 0 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 4416
  %i.cp = load double, ptr %i.co, align 8, !tbaa !307
  %i.cq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, double noundef %i.cp) ; 0 uses
  %.pre29 = load ptr, ptr %i.i, align 8, !tbaa !57
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cr = phi ptr [ %.pre29, %bb.l ], [ %i.br, %bb.k ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 641
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !63, !range !113, !noundef !114
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cv = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.22, i64 noundef 1) ; 0 uses
  %i.cw = load i64, ptr @_ZN12colvarmodule8en_widthE, align 8, !tbaa !47
  %i.cx = load ptr, ptr %1, align 8, !tbaa !33
  %i.cy = getelementptr i8, ptr %i.cx, i64 -24
  %i.cz = load i64, ptr %i.cy, align 8
  %i.da = getelementptr inbounds i8, ptr %1, i64 %i.cz
  %sext26 = shl i64 %i.cw, 32
  %i.db = ashr exact i64 %sext26, 32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !281
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.de = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11colvarvalue(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(168) %i.dd) ; 0 uses
  %.pre30 = load ptr, ptr %i.i, align 8, !tbaa !57
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.df = phi ptr [ %.pre30, %bb.n ], [ %i.cr, %bb.m ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 609
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !63, !range !113, !noundef !114
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.p, label %bb.w

bb.p:                                             ; preds = %bb.o
  %i.dj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.22, i64 noundef 1) ; 0 uses
  %i.dk = load i64, ptr @_ZN12colvarmodule8en_widthE, align 8, !tbaa !47
  %i.dl = load ptr, ptr %1, align 8, !tbaa !33
  %i.dm = getelementptr i8, ptr %i.dl, i64 -24
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = getelementptr inbounds i8, ptr %1, i64 %i.dn
  %sext27 = shl i64 %i.dk, 32
  %i.dp = ashr exact i64 %sext27, 32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !281
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.dr = load ptr, ptr %i.i, align 8, !tbaa !57, !noalias !1171
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 417
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !63, !range !113, !noalias !1171, !noundef !114
  %i.du = trunc nuw i8 %i.dt to i1
  %..i = select i1 %i.du, i64 1880, i64 2720
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 %..i
  call void @_ZN11colvarvalueC1ERKS_(ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull align 8 dereferenceable(168) %i.dv)
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZlsRSoRK11colvarvalue(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(168) %2)
          to label %bb.q unwind label %bb.v       ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !31 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !60
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.eb, %i.ec
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.r, %bb.q
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !31 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !60
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %i.ef to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.ek) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i:                 ; preds = %bb.s, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !224 ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !225
  %i.ep = ptrtoint ptr %i.eo to i64
  %i.eq = ptrtoint ptr %i.em to i64
  %i.er = sub i64 %i.ep, %i.eq
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.er) #29
  br label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i: ; preds = %bb.t, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !213 ; 5 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !226
  %.not.i.i.i4.i = icmp eq ptr %i.ev, %i.et
  br i1 %.not.i.i.i4.i, label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i
  store ptr %i.et, ptr %i.eu, align 8, !tbaa !226
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i

_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i:            ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i, %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i
  %.not.i.i.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i.i.i, label %_ZN11colvarvalueD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !214
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = ptrtoint ptr %i.et to i64
  %i.fa = sub i64 %i.ey, %i.ez
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.fa) #29
  br label %_ZN11colvarvalueD2Ev.exit

_ZN11colvarvalueD2Ev.exit:                        ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.w

bb.v:                                             ; preds = %bb.p
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11colvarvalueD2Ev(ptr noundef nonnull align 8 dead_on_return(168) dereferenceable(168) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.fb

bb.w:                                             ; preds = %_ZN11colvarvalueD2Ev.exit, %bb.o
  ret ptr %1
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 17) i32 @_ZN6colvar18write_output_filesEv(ptr noundef nonnull align 8 dereferenceable(4624) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 929
  %i.d = load i8, ptr %i.c, align 1, !tbaa !63, !range !113, !noundef !114
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4128
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !226
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !213
  %.not = icmp eq ptr %i.h, %i.i
  br i1 %.not, label %bb.ag, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4152 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4160 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !43   ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.n = tail call noundef ptr @_ZN12colvarmodule4mainEv() ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1186)
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !53, !noalias !1186
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !43, !noalias !1186 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.s, ptr %3, align 8, !tbaa !40, !alias.scope !1187
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i64 0, ptr %i.t, align 8, !tbaa !43, !alias.scope !1187
  store i8 0, ptr %i.s, align 8, !tbaa !44, !alias.scope !1187
  %i.u = add i64 %i.r, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.u)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.t, align 8, !tbaa !43, !alias.scope !1187
  %i.w = sub i64 4611686018427387903, %i.v
  %i.x = icmp ult i64 %i.w, %i.r
  br i1 %i.x, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.e
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd:bb.a
bb.w:                                             ; preds = %bb.v
  %i.ci = load double, ptr %i.bb, align 8, !tbaa !245
  store double %i.ci, ptr %i.bp, align 8, !tbaa !245
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %2 ; 3 uses
  %i.ck = sub i64 %i.f, %i.bl                     ; 4 uses
  %i.cl = icmp sgt i64 %i.ck, 8
  br i1 %i.cl, label %bb.x, label %bb.y, !prof !270

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr align 8 %1, i64 %i.ck, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit
  %i.cm = icmp eq i64 %i.ck, 8
  br i1 %i.cm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cn = load double, ptr %1, align 8, !tbaa !245
  store double %i.cn, ptr %i.cj, align 8, !tbaa !245
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.co = getelementptr inbounds i8, ptr %i.cj, i64 %i.ck
  %.not.i82 = icmp eq ptr %i.bb, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !214
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.bc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.cr) #29
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.bp, ptr %0, align 8, !tbaa !213
  store ptr %i.co, ptr %i.c, align 8, !tbaa !226
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bk
  store ptr %i.cs, ptr %i.a, align 8, !tbaa !214
  br label %_ZSt4fillIPddEvT_S1_RKT0_.exit

_ZSt4fillIPddEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx114listI11colvarvalueSaIS1_EE8_M_eraseESt14_List_iteratorIS1_E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !343
  %i.c = add i64 %i.b, -1
  store i64 %i.c, ptr %i.a, align 8, !tbaa !343
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #28
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !60
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.j) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !31   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub i64 %i.o, %i.p
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.q) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit2.i

_ZNSt6vectorIiSaIiEED2Ev.exit2.i:                 ; preds = %bb.c, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !224  ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i3.i, label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !225
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #29
  br label %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i: ; preds = %bb.d, %_ZNSt6vectorIiSaIiEED2Ev.exit2.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !213  ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !226
  %.not.i.i.i4.i = icmp eq ptr %i.ab, %i.z
  br i1 %.not.i.i.i4.i, label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !226
  br label %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i

_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i:            ; preds = %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i.i.i, %_ZNSt6vectorIN11colvarvalue4TypeESaIS1_EED2Ev.exit.i
  %.not.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i, label %_ZN11colvarvalueD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !214
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.z to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ag) #29
  br label %_ZN11colvarvalueD2Ev.exit

_ZN11colvarvalueD2Ev.exit:                        ; preds = %_ZNSt6vectorIdSaIdEE5clearEv.exit.i.i, %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 184) #29
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #12

declare void @_ZN11colvarvalue9inner_optERKS_RSt14_List_iteratorIS_ERKS3_RN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare void @_ZN11colvarvalue9p2leg_optERKS_RSt14_List_iteratorIS_ERKS3_RN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIxEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIPN10colvardeps7featureESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !37     ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIPN10colvardeps7featureESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #29
  br label %_ZNSt12_Vector_baseIPN10colvardeps7featureESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseIPN10colvardeps7featureESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_colvar.cpp() #24 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6colvar14global_cvc_mapB5cxx11E, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN6colvar14global_cvc_mapB5cxx11E, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZN6colvar14global_cvc_mapB5cxx11E, i64 24), align 8, !tbaa !251
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN6colvar14global_cvc_mapB5cxx11E, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZN6colvar14global_cvc_mapB5cxx11E, i64 32), align 8, !tbaa !1246
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6colvar14global_cvc_mapB5cxx11E, i64 40), align 8, !tbaa !250
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFPN6colvar3cvcEvEESt4lessIS5_ESaISt4pairIKS5_SB_EEED2Ev, ptr nonnull @_ZN6colvar14global_cvc_mapB5cxx11E, ptr nonnull @__dso_handle) #28 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6colvar19global_cvc_desc_mapB5cxx11E, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN6colvar19global_cvc_desc_mapB5cxx11E, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZN6colvar19global_cvc_desc_mapB5cxx11E, i64 24), align 8, !tbaa !251
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN6colvar19global_cvc_desc_mapB5cxx11E, i64 8), ptr getelementptr inbounds nuw (i8, ptr @_ZN6colvar19global_cvc_desc_mapB5cxx11E, i64 32), align 8, !tbaa !1246
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6colvar19global_cvc_desc_mapB5cxx11E, i64 40), align 8, !tbaa !250
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4lessIS5_ESaISt4pairIKS5_S5_EEED2Ev, ptr nonnull @_ZN6colvar19global_cvc_desc_mapB5cxx11E, ptr nonnull @__dso_handle) #28 ; 0 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @_ZN6colvar11cv_featuresE, i8 0, i64 24, i1 false)
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt6vectorIPN10colvardeps7featureESaIS2_EED2Ev, ptr nonnull @_ZN6colvar11cv_featuresE, ptr nonnull @__dso_handle) #28 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { builtin allocsize(0) }
attributes #31 = { noreturn }
attributes #32 = { noreturn nounwind }
attributes #33 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!18, !19, !20}
!llvm.ident = !{!21}
!llvm.errno.tbaa = !{!26}

!0 = distinct !{!0, !46}
!1 = distinct !{!1, !46}
!2 = distinct !{!2, !46}
!3 = distinct !{!3, !46}
!4 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN6colvar3cvcELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!5 = distinct !{!5, !46}
!6 = distinct !{!6, !46}
!7 = distinct !{!7, !46}
!8 = distinct !{!8, !46}
!9 = distinct !{!9, !46}
!10 = distinct !{!10, !46}
!11 = distinct !{!11, !46}
!12 = distinct !{!12, !46}
!13 = distinct !{!13, !46}
!14 = distinct !{!14, !46}
!15 = distinct !{!15, !46}
!16 = distinct !{!16, !46}
!17 = distinct !{!17, !46}
!18 = !{i32 7, !"openmp", i32 51}
!19 = !{i32 8, !"PIC Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!22 = !{!"Simple C++ TBAA"}
!23 = !{!"omnipotent char", !22, i64 0}
!24 = !{!"int", !23, i64 0}
!25 = !{!"__libc_errno", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{!"any pointer", !23, i64 0}
!28 = !{!"p1 int", !27, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !28, i64 0, !28, i64 8, !28, i64 16}
!30 = !{!29, !28, i64 8}
!31 = !{!29, !28, i64 0}
!32 = !{!"vtable pointer", !22, i64 0}
!33 = !{!32, !32, i64 0}
!34 = !{!"any p2 pointer", !27, i64 0}
!35 = !{!"p2 _ZTSN10colvardeps7featureE", !34, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIPN10colvardeps7featureESaIS2_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!37 = !{!36, !35, i64 0}
!38 = !{!"p1 omnipotent char", !27, i64 0}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !38, i64 0}
!40 = !{!39, !38, i64 0}
!41 = !{!"long", !23, i64 0}
!42 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !39, i64 0, !41, i64 8, !23, i64 16}
!43 = !{!42, !41, i64 8}
!44 = !{!23, !23, i64 0}
!45 = !{!36, !35, i64 16}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!41, !41, i64 0}
!48 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !29, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !48, i64 0}
!50 = !{!"_ZTSSt6vectorIiSaIiEE", !49, i64 0}
!51 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !27, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!53 = !{!42, !38, i64 0}
!54 = !{!"p1 _ZTSN10colvardeps13feature_stateE", !27, i64 0}
!55 = !{!"_ZTSNSt12_Vector_baseIN10colvardeps13feature_stateESaIS1_EE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!56 = !{!55, !54, i64 16}
!57 = !{!55, !54, i64 0}
!58 = !{!55, !54, i64 8}
!59 = !{!28, !28, i64 0}
!60 = !{!29, !28, i64 16}
!61 = !{!"bool", !23, i64 0}
!62 = !{!"_ZTSN10colvardeps13feature_stateE", !61, i64 0, !61, i64 1, !24, i64 4, !50, i64 8}
!63 = !{!62, !61, i64 1}
!64 = !{!"p1 _ZTS11colvarproxy", !27, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!"double", !23, i64 0}
!67 = !{!"_ZTSN18colvarproxy_system15Boundaries_typeE", !23, i64 0}
!68 = !{!"_ZTSN12colvarmodule7rvectorE", !66, i64 0, !66, i64 8, !66, i64 16}
!69 = !{!"_ZTS18colvarproxy_system", !42, i64 8, !66, i64 40, !66, i64 48, !61, i64 56, !66, i64 64, !66, i64 72, !66, i64 80, !24, i64 88, !66, i64 96, !66, i64 104, !61, i64 112, !67, i64 116, !68, i64 120, !68, i64 144, !68, i64 168, !68, i64 192, !68, i64 216, !68, i64 240}
!70 = !{!"p1 long", !27, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!72 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !71, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseImSaImEE", !72, i64 0}
!74 = !{!"_ZTSSt6vectorImSaImEE", !73, i64 0}
!75 = !{!"p1 double", !27, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !75, i64 0, !75, i64 8, !75, i64 16}
!77 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !76, i64 0}
!78 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !77, i64 0}
!79 = !{!"_ZTSSt6vectorIdSaIdEE", !78, i64 0}
!80 = !{!"p1 _ZTSN12colvarmodule7rvectorE", !27, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!82 = !{!"_ZTSNSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EE12_Vector_implE", !81, i64 0}
!83 = !{!"_ZTSSt12_Vector_baseIN12colvarmodule7rvectorESaIS1_EE", !82, i64 0}
!84 = !{!"_ZTSSt6vectorIN12colvarmodule7rvectorESaIS1_EE", !83, i64 0}
!85 = !{!"_ZTS17colvarproxy_atoms", !50, i64 8, !74, i64 32, !79, i64 56, !79, i64 80, !84, i64 104, !84, i64 128, !84, i64 152, !66, i64 176, !66, i64 184, !24, i64 192, !61, i64 196, !61, i64 197, !61, i64 198}
!86 = !{!"_ZTS23colvarproxy_atom_groups", !50, i64 8, !74, i64 32, !79, i64 56, !79, i64 80, !84, i64 104, !84, i64 128, !84, i64 152, !66, i64 176, !66, i64 184}
!87 = !{!"_ZTS19colvarproxy_volmaps", !50, i64 8, !74, i64 32, !79, i64 56, !79, i64 80, !66, i64 104, !66, i64 112}
!88 = !{!"p1 _ZTS10omp_lock_t", !27, i64 0}
!89 = !{!"_ZTSN15colvarproxy_smp10smp_mode_tE", !23, i64 0}
!90 = !{!"_ZTS15colvarproxy_smp", !88, i64 8, !89, i64 16}
!91 = !{!"_ZTS20colvarproxy_replicas", !27, i64 8, !24, i64 16, !24, i64 20}
!92 = !{!"p1 _ZTS12colvarscript", !27, i64 0}
!93 = !{!"_ZTS18colvarproxy_script", !92, i64 8, !61, i64 16}
!94 = !{!"_ZTS15colvarproxy_tcl", !27, i64 8}
!95 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!96 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !95, i64 0}
!97 = !{!"_ZTSSt14_Rb_tree_color", !23, i64 0}
!98 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !27, i64 0}
!99 = !{!"_ZTSSt18_Rb_tree_node_base", !97, i64 0, !98, i64 8, !98, i64 16, !98, i64 24}
!100 = !{!"_ZTSSt15_Rb_tree_header", !99, i64 0, !41, i64 32}
!101 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSiESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE13_Rb_tree_implISD_Lb1EEE", !96, i64 0, !100, i64 8}
!102 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSiESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE", !101, i64 0}
!103 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSiSt4lessIS5_ESaISt4pairIKS5_S6_EEE", !102, i64 0}
!104 = !{!"p1 _ZTSSi", !27, i64 0}
!105 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSoESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE13_Rb_tree_implISD_Lb1EEE", !96, i64 0, !100, i64 8}
!106 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSoESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE", !105, i64 0}
!107 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSoSt4lessIS5_ESaISt4pairIKS5_S6_EEE", !106, i64 0}
!108 = !{!"p1 _ZTSSo", !27, i64 0}
!109 = !{!"_ZTS14colvarproxy_io", !42, i64 8, !42, i64 40, !42, i64 72, !24, i64 104, !103, i64 112, !104, i64 160, !107, i64 168, !108, i64 216}
!110 = !{!"p1 _ZTS12colvarmodule", !27, i64 0}
!111 = !{!"_ZTS11colvarproxy", !69, i64 0, !85, i64 264, !86, i64 464, !87, i64 656, !90, i64 776, !91, i64 800, !93, i64 824, !94, i64 848, !109, i64 864, !110, i64 1088, !61, i64 1096, !42, i64 1104, !61, i64 1136, !61, i64 1137, !61, i64 1138, !24, i64 1140, !41, i64 1144, !42, i64 1152, !27, i64 1184}
!112 = !{!111, !61, i64 1136}
!113 = !{i8 0, i8 2}
!114 = !{}
!115 = !{!"p1 _ZTSSt10shared_ptrIN6colvar3cvcEE", !27, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN6colvar3cvcEESaIS3_EE17_Vector_impl_dataE", !115, i64 0, !115, i64 8, !115, i64 16}
!117 = !{!116, !115, i64 8}
!118 = !{!116, !115, i64 0}
!119 = !{!"p1 _ZTSN6colvar3cvcE", !27, i64 0}
!120 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !27, i64 0}
!121 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !120, i64 0}
!122 = !{!"_ZTSSt12__shared_ptrIN6colvar3cvcELN9__gnu_cxx12_Lock_policyE2EE", !119, i64 0, !121, i64 8}
!123 = !{!122, !119, i64 0}
!124 = !{!52, !51, i64 0}
!125 = !{!52, !51, i64 8}
!126 = !{!52, !51, i64 16}
!127 = !{!100, !98, i64 8}
!128 = !{!99, !98, i64 24}
!129 = !{!99, !98, i64 16}
!130 = !{!"_ZTSSt14_Function_base", !23, i64 0, !27, i64 16}
!131 = !{!130, !27, i64 16}
!132 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKvESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !96, i64 0, !100, i64 8}
!133 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PKvESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !132, i64 0}
!134 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvSt4lessIS5_ESaISt4pairIKS5_S7_EEE", !133, i64 0}
!135 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PK11colvarvalueESt10_Select1stISB_ESt4lessIS5_ESaISB_EE13_Rb_tree_implISF_Lb1EEE", !96, i64 0, !100, i64 8}
!136 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PK11colvarvalueESt10_Select1stISB_ESt4lessIS5_ESaISB_EE", !135, i64 0}
!137 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPK11colvarvalueSt4lessIS5_ESaISt4pairIKS5_S8_EEE", !136, i64 0}
!138 = !{!"_ZTS12colvarparams", !134, i64 8, !137, i64 56}
!139 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !27, i64 0}
!140 = !{!"_ZTSNSt8__detail15_List_node_baseE", !139, i64 0, !139, i64 8}
!141 = !{!"_ZTSNSt8__detail17_List_node_headerE", !140, i64 0, !41, i64 16}
!142 = !{!"_ZTSNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implE", !141, i64 0}
!143 = !{!"_ZTSNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE", !142, i64 0}
!144 = !{!"_ZTSNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEE", !143, i64 0}
!145 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N11colvarparse12key_set_modeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !96, i64 0, !100, i64 8}
!146 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N11colvarparse12key_set_modeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !145, i64 0}
!147 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN11colvarparse12key_set_modeESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !146, i64 0}
!148 = !{!"_ZTSNSt7__cxx1110_List_baseImSaImEE10_List_implE", !141, i64 0}
!149 = !{!"_ZTSNSt7__cxx1110_List_baseImSaImEEE", !148, i64 0}
!150 = !{!"_ZTSNSt7__cxx114listImSaImEEE", !149, i64 0}
!151 = !{!"_ZTS11colvarparse", !138, i64 0, !42, i64 104, !42, i64 136, !144, i64 168, !147, i64 192, !150, i64 240, !150, i64 264, !42, i64 288}
!152 = !{!"_ZTSNSt12_Vector_baseIN10colvardeps13feature_stateESaIS1_EE12_Vector_implE", !55, i64 0}
!153 = !{!"_ZTSSt12_Vector_baseIN10colvardeps13feature_stateESaIS1_EE", !152, i64 0}
!154 = !{!"_ZTSSt6vectorIN10colvardeps13feature_stateESaIS1_EE", !153, i64 0}
!155 = !{!"p2 _ZTS10colvardeps", !34, i64 0}
!156 = !{!"_ZTSNSt12_Vector_baseIP10colvardepsSaIS1_EE17_Vector_impl_dataE", !155, i64 0, !155, i64 8, !155, i64 16}
!157 = !{!"_ZTSNSt12_Vector_baseIP10colvardepsSaIS1_EE12_Vector_implE", !156, i64 0}
!158 = !{!"_ZTSSt12_Vector_baseIP10colvardepsSaIS1_EE", !157, i64 0}
!159 = !{!"_ZTSSt6vectorIP10colvardepsSaIS1_EE", !158, i64 0}
!160 = !{!"_ZTS10colvardeps", !42, i64 8, !24, i64 40, !154, i64 48, !159, i64 72, !159, i64 96}
!161 = !{!"p2 _ZTS10colvarbias", !34, i64 0}
!162 = !{!"_ZTSNSt12_Vector_baseIP10colvarbiasSaIS1_EE17_Vector_impl_dataE", !161, i64 0, !161, i64 8, !161, i64 16}
!163 = !{!"_ZTSNSt12_Vector_baseIP10colvarbiasSaIS1_EE12_Vector_implE", !162, i64 0}
!164 = !{!"_ZTSSt12_Vector_baseIP10colvarbiasSaIS1_EE", !163, i64 0}
!165 = !{!"_ZTSSt6vectorIP10colvarbiasSaIS1_EE", !164, i64 0}
!166 = !{!"_ZTSN11colvarvalue4TypeE", !23, i64 0}
!167 = !{!"_ZTSN12colvarmodule10quaternionE", !66, i64 0, !66, i64 8, !66, i64 16, !66, i64 24}
!168 = !{!"_ZTSN12colvarmodule8vector1dIdEE", !79, i64 0}
!169 = !{!"_ZTSNSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!170 = !{!"_ZTSNSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE12_Vector_implE", !169, i64 0}
!171 = !{!"_ZTSSt12_Vector_baseIN11colvarvalue4TypeESaIS1_EE", !170, i64 0}
!172 = !{!"_ZTSSt6vectorIN11colvarvalue4TypeESaIS1_EE", !171, i64 0}
!173 = !{!"_ZTS11colvarvalue", !166, i64 0, !66, i64 8, !68, i64 16, !167, i64 40, !168, i64 72, !172, i64 96, !50, i64 120, !50, i64 144}
!174 = !{!"long long", !23, i64 0}
!175 = !{!"_ZTSNSt7__cxx1110_List_baseINS_4listI11colvarvalueSaIS2_EEESaIS4_EE10_List_implE", !141, i64 0}
!176 = !{!"_ZTSNSt7__cxx1110_List_baseINS_4listI11colvarvalueSaIS2_EEESaIS4_EEE", !175, i64 0}
!177 = !{!"_ZTSNSt7__cxx114listINS0_I11colvarvalueSaIS1_EEESaIS3_EEE", !176, i64 0}
!178 = !{!"_ZTSSt14_List_iteratorINSt7__cxx114listI11colvarvalueSaIS2_EEEE", !139, i64 0}
!179 = !{!"_ZTSN6colvar10acf_type_eE", !23, i64 0}
!180 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN6colvar3cvcEESaIS3_EE12_Vector_implE", !116, i64 0}
!181 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN6colvar3cvcEESaIS3_EE", !180, i64 0}
!182 = !{!"_ZTSSt6vectorISt10shared_ptrIN6colvar3cvcEESaIS3_EE", !181, i64 0}
!183 = !{!"_ZTSSt18_Bit_iterator_base", !70, i64 0, !24, i64 8}
!184 = !{!"_ZTSSt13_Bit_iterator", !183, i64 0}
!185 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !184, i64 0, !184, i64 16, !70, i64 32}
!186 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !185, i64 0}
!187 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !186, i64 0}
!188 = !{!"_ZTSSt6vectorIbSaIbEE", !187, i64 0}
!189 = !{!"p2 _ZTS11colvarvalue", !34, i64 0}
!190 = !{!"_ZTSNSt12_Vector_baseIPK11colvarvalueSaIS2_EE17_Vector_impl_dataE", !189, i64 0, !189, i64 8, !189, i64 16}
!191 = !{!"_ZTSNSt12_Vector_baseIPK11colvarvalueSaIS2_EE12_Vector_implE", !190, i64 0}
!192 = !{!"_ZTSSt12_Vector_baseIPK11colvarvalueSaIS2_EE", !191, i64 0}
!193 = !{!"_ZTSSt6vectorIPK11colvarvalueSaIS2_EE", !192, i64 0}
!194 = !{!"_ZTS6colvar", !151, i64 0, !160, i64 320, !42, i64 440, !66, i64 472, !165, i64 480, !173, i64 504, !173, i64 672, !173, i64 840, !173, i64 1008, !173, i64 1176, !173, i64 1344, !173, i64 1512, !173, i64 1680, !66, i64 1848, !66, i64 1856, !66, i64 1864, !66, i64 1872, !173, i64 1880, !173, i64 2048, !173, i64 2216, !173, i64 2384, !173, i64 2552, !173, i64 2720, !173, i64 2888, !173, i64 3056, !66, i64 3224, !66, i64 3232, !61, i64 3240, !173, i64 3248, !173, i64 3416, !41, i64 3584, !66, i64 3592, !174, i64 3600, !61, i64 3608, !173, i64 3616, !173, i64 3784, !61, i64 3952, !177, i64 3960, !177, i64 3984, !178, i64 4008, !178, i64 4016, !177, i64 4024, !178, i64 4048, !42, i64 4056, !41, i64 4088, !41, i64 4096, !41, i64 4104, !41, i64 4112, !61, i64 4120, !79, i64 4128, !42, i64 4152, !179, i64 4184, !41, i64 4192, !41, i64 4200, !42, i64 4208, !173, i64 4240, !66, i64 4408, !66, i64 4416, !66, i64 4424, !182, i64 4432, !188, i64 4456, !42, i64 4496, !193, i64 4528, !50, i64 4552, !50, i64 4576, !84, i64 4600}
!195 = !{!194, !66, i64 472}
!196 = !{!140, !139, i64 8}
!197 = !{!140, !139, i64 0}
!198 = !{!141, !41, i64 16}
!199 = !{!183, !70, i64 0}
!200 = !{!183, !24, i64 8}
!201 = !{!185, !70, i64 32}
!202 = !{!69, !24, i64 88}
!203 = !{!160, !24, i64 40}
!204 = !{!194, !174, i64 3600}
!205 = !{!194, !61, i64 3952}
!206 = !{!194, !66, i64 3224}
!207 = !{!194, !61, i64 3608}
!208 = !{!194, !61, i64 3240}
!209 = !{!81, !80, i64 0}
!210 = !{!81, !80, i64 16}
!211 = !{!190, !189, i64 0}
!212 = !{!190, !189, i64 16}
!213 = !{!76, !75, i64 0}
!214 = !{!76, !75, i64 16}
!215 = !{!162, !161, i64 0}
!216 = !{!162, !161, i64 16}
!217 = !{!121, !120, i64 0}
!218 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !24, i64 8, !24, i64 12}
!219 = !{!218, !24, i64 8}
!220 = !{!218, !24, i64 12}
!221 = !{!24, !24, i64 0}
!222 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!223 = !{!116, !115, i64 16}
!224 = !{!169, !27, i64 0}
!225 = !{!169, !27, i64 16}
!226 = !{!76, !75, i64 8}
!227 = !{!"p2 _ZTS6colvar", !34, i64 0}
!228 = !{!"_ZTSNSt12_Vector_baseIP6colvarSaIS1_EE17_Vector_impl_dataE", !227, i64 0, !227, i64 8, !227, i64 16}
!229 = !{!228, !227, i64 8}
!230 = !{!166, !166, i64 0}
!231 = !{!173, !166, i64 0}
!232 = !{!115, !115, i64 0}
!233 = !{!"p2 _ZTSN12colvarmodule10atom_groupE", !34, i64 0}
!234 = !{!"_ZTSNSt12_Vector_baseIPN12colvarmodule10atom_groupESaIS2_EE17_Vector_impl_dataE", !233, i64 0, !233, i64 8, !233, i64 16}
!235 = !{!"_ZTSNSt12_Vector_baseIPN12colvarmodule10atom_groupESaIS2_EE12_Vector_implE", !234, i64 0}
!236 = !{!"_ZTSSt12_Vector_baseIPN12colvarmodule10atom_groupESaIS2_EE", !235, i64 0}
!237 = !{!"_ZTSSt6vectorIPN12colvarmodule10atom_groupESaIS2_EE", !236, i64 0}
!238 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !27, i64 0}
!239 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !238, i64 0, !238, i64 8, !238, i64 16}
!240 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !239, i64 0}
!241 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !240, i64 0}
!242 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !241, i64 0}
!243 = !{!"_ZTSN6colvar3cvcE", !151, i64 0, !160, i64 320, !42, i64 440, !42, i64 472, !66, i64 504, !24, i64 512, !66, i64 520, !66, i64 528, !237, i64 536, !61, i64 560, !242, i64 568, !173, i64 592, !173, i64 760, !173, i64 928, !173, i64 1096, !173, i64 1264, !173, i64 1432, !66, i64 1600}
!244 = !{!243, !24, i64 512}
!245 = !{!66, !66, i64 0}
!246 = !{!243, !66, i64 504}
!247 = !{!194, !66, i64 3592}
!248 = !{!"llvm.loop.unroll.disable"}
!249 = !{!61, !61, i64 0}
!250 = !{!100, !41, i64 32}
!251 = !{!100, !98, i64 16}
!252 = !{!194, !41, i64 3584}
!253 = !{!173, !66, i64 8}
!254 = !{i64 0, i64 8, !245, i64 8, i64 8, !245, i64 16, i64 8, !245}
!255 = !{i64 0, i64 8, !245, i64 8, i64 8, !245, i64 16, i64 8, !245, i64 24, i64 8, !245}
!256 = !{!194, !66, i64 3232}
!257 = !{ptr @_ZNK6colvar5dist2ERK11colvarvalueS2_}
!258 = !{!69, !66, i64 72}
!259 = !{!194, !66, i64 1856}
!260 = !{!69, !66, i64 64}
!261 = !{!194, !66, i64 1848}
!262 = !{!194, !66, i64 1864}
!263 = !{!194, !41, i64 4192}
!264 = !{!194, !41, i64 4200}
!265 = !{!194, !41, i64 4088}
!266 = !{!194, !179, i64 4184}
!267 = !{!194, !41, i64 4104}
!268 = !{!27, !27, i64 0}
!269 = !{!119, !119, i64 0}
!270 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!271 = !{!"_ZTSSt15_Sp_counted_ptrIPN6colvar3cvcELN9__gnu_cxx12_Lock_policyE2EE", !218, i64 0, !119, i64 16}
!272 = !{!271, !119, i64 16}
!273 = !{!"_ZTSSt13_Ios_Fmtflags", !23, i64 0}
!274 = !{!"_ZTSSt12_Ios_Iostate", !23, i64 0}
!275 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !27, i64 0}
!276 = !{!"_ZTSNSt8ios_base6_WordsE", !27, i64 0, !41, i64 8}
!277 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !27, i64 0}
!278 = !{!"p1 _ZTSNSt6locale5_ImplE", !27, i64 0}
!279 = !{!"_ZTSSt6locale", !278, i64 0}
!280 = !{!"_ZTSSt8ios_base", !41, i64 8, !41, i64 16, !273, i64 24, !274, i64 28, !274, i64 32, !275, i64 40, !276, i64 48, !23, i64 64, !24, i64 192, !277, i64 200, !279, i64 208}
!281 = !{!280, !41, i64 16}
!282 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !38, i64 8, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !38, i64 48, !279, i64 56}
!283 = !{!282, !38, i64 40}
!284 = !{!282, !38, i64 32}
!285 = !{!98, !98, i64 0}
!286 = !{!238, !238, i64 0}
!287 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFPN6colvar3cvcEvEEESt10_Select1stISE_ESt4lessIS5_ESaISE_EE", !27, i64 0}
!288 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt8functionIFPN6colvar3cvcEvEEEE", !27, i64 0}
!289 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St8functionIFPN6colvar3cvcEvEEESt10_Select1stISE_ESt4lessIS5_ESaISE_EE10_Auto_nodeE", !287, i64 0, !288, i64 8}
!290 = !{!289, !288, i64 8}
!291 = !{i64 0, i64 16, !44}
!292 = !{!"p1 _ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE", !27, i64 0}
!293 = !{!"p1 _ZTSSt13_Rb_tree_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE", !27, i64 0}
!294 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE10_Auto_nodeE", !292, i64 0, !293, i64 8}
!295 = !{!294, !293, i64 8}
!296 = !{!234, !233, i64 8}
!297 = !{!234, !233, i64 0}
!298 = !{!"p1 _ZTSN12colvarmodule10atom_groupE", !27, i64 0}
!299 = !{!298, !298, i64 0}
!300 = !{!81, !80, i64 8}
!301 = !{!174, !174, i64 0}
!302 = !{!68, !66, i64 16}
!303 = !{!"llvm.loop.isvectorized", i32 1}
!304 = !{!"llvm.loop.unroll.runtime.disable"}
!305 = !{ptr @_ZNK6colvar11dist2_lgradERK11colvarvalueS2_}
!306 = !{!194, !66, i64 4424}
!307 = !{!194, !66, i64 4416}
!308 = !{!"p1 _ZTSN12colvarmodule8matrix2dIdE3rowE", !27, i64 0}
!309 = !{!"_ZTSNSt12_Vector_baseIN12colvarmodule8matrix2dIdE3rowESaIS3_EE17_Vector_impl_dataE", !308, i64 0, !308, i64 8, !308, i64 16}
!310 = !{!"_ZTSNSt12_Vector_baseIN12colvarmodule8matrix2dIdE3rowESaIS3_EE12_Vector_implE", !309, i64 0}
!311 = !{!"_ZTSSt12_Vector_baseIN12colvarmodule8matrix2dIdE3rowESaIS3_EE", !310, i64 0}
!312 = !{!"_ZTSSt6vectorIN12colvarmodule8matrix2dIdE3rowESaIS3_EE", !311, i64 0}
!313 = !{!"p2 double", !34, i64 0}
!314 = !{!"_ZTSNSt12_Vector_baseIPdSaIS0_EE17_Vector_impl_dataE", !313, i64 0, !313, i64 8, !313, i64 16}
!315 = !{!"_ZTSNSt12_Vector_baseIPdSaIS0_EE12_Vector_implE", !314, i64 0}
!316 = !{!"_ZTSSt12_Vector_baseIPdSaIS0_EE", !315, i64 0}
!317 = !{!"_ZTSSt6vectorIPdSaIS0_EE", !316, i64 0}
!318 = !{!"_ZTSN12colvarmodule8matrix2dIdEE", !41, i64 0, !41, i64 8, !79, i64 16, !312, i64 40, !317, i64 64}
!319 = !{!318, !41, i64 0}
!320 = !{!318, !41, i64 8}
!321 = !{!314, !313, i64 0}
!322 = !{!314, !313, i64 16}
!323 = !{!309, !308, i64 0}
!324 = !{!309, !308, i64 16}
!325 = !{!309, !308, i64 8}
!326 = !{!"p1 _ZTSN12colvarmodule8matrix2dIdEE", !27, i64 0}
!327 = !{!"_ZTSNSt12_Vector_baseIN12colvarmodule8matrix2dIdEESaIS2_EE17_Vector_impl_dataE", !326, i64 0, !326, i64 8, !326, i64 16}
!328 = !{!327, !326, i64 0}
!329 = !{!327, !326, i64 16}
!330 = !{!327, !326, i64 8}
!331 = !{!75, !75, i64 0}
!332 = !{!280, !274, i64 32}
!333 = !{!280, !41, i64 8}
!334 = !{!194, !41, i64 4112}
!335 = !{!280, !273, i64 24}
!336 = !{!273, !273, i64 0}
!337 = !{!194, !41, i64 4096}
!338 = !{!176, !41, i64 16}
!339 = !{!139, !139, i64 0}
!340 = !{!178, !139, i64 0}
!341 = !{!"_ZTSNSt7__cxx1110_List_baseI11colvarvalueSaIS1_EE10_List_implE", !141, i64 0}
!342 = !{!"_ZTSNSt7__cxx1110_List_baseI11colvarvalueSaIS1_EEE", !341, i64 0}
!343 = !{!342, !41, i64 16}
!344 = !{!"_ZTSSt14_List_iteratorI11colvarvalueE", !139, i64 0}
!345 = !{!344, !139, i64 0}
!346 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEE", !75, i64 0}
!347 = !{!346, !75, i64 0}
!348 = distinct !{!348, !46}
!349 = distinct !{null}
!350 = distinct !{!350, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!351 = distinct !{!351, !350, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!352 = distinct !{!352, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!353 = distinct !{!353, !352, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!354 = distinct !{!354, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!355 = distinct !{!355, !354, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!356 = distinct !{!356, !46}
!357 = distinct !{!357, !"_ZSt19__relocate_object_aIN10colvardeps13feature_stateES1_SaIS1_EEvPT_PT0_RT1_"}
!358 = distinct !{!358, !357, !"_ZSt19__relocate_object_aIN10colvardeps13feature_stateES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!359 = distinct !{!359, !357, !"_ZSt19__relocate_object_aIN10colvardeps13feature_stateES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!360 = distinct !{!360, !46}
!361 = !{!36, !35, i64 8}
!362 = !{!"p1 _ZTSN10colvardeps7featureE", !27, i64 0}
!363 = !{!362, !362, i64 0}
!364 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implE", !52, i64 0}
!365 = !{!"_ZTSSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE", !364, i64 0}
!366 = !{!"_ZTSSt6vectorIS_IiSaIiEESaIS1_EE", !365, i64 0}
!367 = !{!"_ZTSN10colvardeps12feature_typeE", !23, i64 0}
!368 = !{!"_ZTSN10colvardeps7featureE", !42, i64 0, !50, i64 32, !50, i64 56, !366, i64 80, !50, i64 104, !367, i64 128}
!369 = !{!368, !367, i64 128}
!370 = !{!351}
!371 = !{!353}
!372 = !{!355}
!373 = !{!358}
!374 = !{!359}
!375 = !{!62, !61, i64 0}
!376 = distinct !{!376, !46}
!377 = !{!51, !51, i64 0}
!378 = !{ptr @_ZN6colvarD0Ev}
!379 = distinct !{!379, !46}
!380 = distinct !{!380, !46}
!381 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN6colvar3cvcELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!382 = distinct !{null}
!383 = distinct !{!383, !46}
!384 = distinct !{!384, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!385 = distinct !{!385, !384, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!386 = distinct !{!386, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!387 = distinct !{!387, !386, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!388 = distinct !{!388, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!389 = distinct !{!389, !388, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!390 = distinct !{!390, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!391 = distinct !{!391, !390, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!392 = distinct !{!392, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!393 = distinct !{!393, !392, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!394 = distinct !{!394, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!395 = distinct !{!395, !394, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!396 = distinct !{!396, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!397 = distinct !{!397, !396, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!398 = distinct !{!398, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!399 = distinct !{!399, !398, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!400 = distinct !{!400, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!401 = distinct !{!401, !400, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!402 = distinct !{!402, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!403 = distinct !{!403, !402, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!404 = distinct !{!404, !46}
!405 = distinct !{!405, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!406 = distinct !{!406, !405, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!407 = distinct !{!407, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!408 = distinct !{!408, !407, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!409 = distinct !{!409, !46}
!410 = distinct !{!410, !46}
!411 = distinct !{!411, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!412 = distinct !{!412, !411, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!413 = distinct !{!413, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!414 = distinct !{!414, !413, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!415 = distinct !{!415, !46}
!416 = distinct !{!416, !46}
!417 = distinct !{!417, !46}
!418 = distinct !{!418, !46, !448}
!419 = distinct !{!419, !46}
!420 = distinct !{!420, !248}
!421 = distinct !{!421, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!422 = distinct !{!422, !421, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!423 = distinct !{!423, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!424 = distinct !{!424, !423, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!425 = distinct !{!425, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!426 = distinct !{!426, !425, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!427 = distinct !{!427, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!428 = distinct !{!428, !427, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!429 = !{!228, !227, i64 0}
!430 = !{!385}
!431 = !{!387}
!432 = !{!389, !387}
!433 = !{!391}
!434 = !{!393}
!435 = !{!395, !393}
!436 = !{!397}
!437 = !{!399, !397}
!438 = !{!401}
!439 = !{!403}
!440 = !{!406}
!441 = !{!408}
!442 = !{!190, !189, i64 8}
!443 = !{!"p1 _ZTS11colvarvalue", !27, i64 0}
!444 = !{!443, !443, i64 0}
!445 = !{!412}
!446 = !{!414}
!447 = !{!243, !66, i64 520}
!448 = !{!"llvm.loop.unswitch.partial.disable"}
!449 = !{!422}
!450 = !{!424}
!451 = !{!426}
!452 = !{!428}
!453 = distinct !{!453, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!454 = distinct !{!454, !453, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!455 = distinct !{!455, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!456 = distinct !{!456, !455, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!457 = distinct !{!457, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!458 = distinct !{!458, !457, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!459 = distinct !{!459, !46}
!460 = distinct !{!460, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!461 = distinct !{!461, !460, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!462 = distinct !{!462, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!463 = distinct !{!463, !462, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!464 = distinct !{!464, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!465 = distinct !{!465, !464, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!466 = distinct !{!466, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!467 = distinct !{!467, !466, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!468 = distinct !{!468, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!469 = distinct !{!469, !468, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!470 = distinct !{!470, !46}
!471 = distinct !{!471, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!472 = distinct !{!472, !471, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!473 = distinct !{!473, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!474 = distinct !{!474, !473, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!475 = distinct !{!475, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!476 = distinct !{!476, !475, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!477 = distinct !{!477, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!478 = distinct !{!478, !477, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!479 = distinct !{!479, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!480 = distinct !{!480, !479, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!481 = distinct !{!481, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!482 = distinct !{!482, !481, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!483 = distinct !{!483, !46}
!484 = distinct !{!484, !46}
!485 = distinct !{!485, !46}
!486 = !{!454}
!487 = !{!456, !454}
!488 = !{!458}
!489 = !{!461}
!490 = !{!463, !461}
!491 = !{!465}
!492 = !{!467}
!493 = !{!469}
!494 = !{!472}
!495 = !{!474}
!496 = !{!476}
!497 = !{!478}
!498 = !{!480}
!499 = !{!482}
!500 = distinct !{!500, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_"}
!501 = distinct !{!501, !500, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: argument 0"}
!502 = distinct !{!502, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!503 = distinct !{!503, !502, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!504 = distinct !{!504, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!505 = distinct !{!505, !504, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!506 = distinct !{!506, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!507 = distinct !{!507, !506, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
end_hunk_3
