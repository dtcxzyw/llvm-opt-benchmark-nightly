Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3ParseImp?download=true
inline.NumInlined: 4375
inline.NumDeleted: 834
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN10V3ParseImp9lexPplineEPKc:bb.a
  br label %_ZN8FileLine9singletonEv.exit.i

bb.t:                                             ; preds = %bb.r
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN8FileLine9singletonEvE1s) #23
  br label %.body

_ZN8FileLine9singletonEv.exit.i:                  ; preds = %bb.s, %bb.q, %bb.p
  %i.bu = invoke noundef zeroext i16 @_ZN17FileLineSingleton12nameToNumberERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(336) @_ZZN8FileLine9singletonEvE1s, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.u unwind label %bb.g

bb.u:                                             ; preds = %_ZN8FileLine9singletonEv.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 2
  store i16 %i.bu, ptr %i.bv, align 2, !tbaa !246
  %i.bw = load ptr, ptr %i.e, align 8, !tbaa !275 ; 3 uses
  %i.bx = load i32, ptr %i.a, align 4, !tbaa !256
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !280
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i16 0, ptr %i.bz, align 8, !tbaa !277
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = and i64 %i.cb, -72057589759737856
  %i.cd = or disjoint i64 %i.cc, 4294967297
  store i64 %i.cd, ptr %i.ca, align 8
  %i.ce = load ptr, ptr %i.e, align 8, !tbaa !275
  invoke void @_ZN8FileLine12applyIgnoresEv(ptr noundef nonnull align 8 dereferenceable(48) %i.ce)
          to label %bb.v unwind label %bb.g

bb.v:                                             ; preds = %bb.u, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.cf = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.c
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.ch = load i64, ptr %i.c, align 8, !tbaa !53
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

.body:                                            ; preds = %bb.g, %bb.t, %bb.n, %bb.h, %bb.i
  %.pn20 = phi { ptr, i32 } [ %i.bm, %bb.n ], [ %i.ah, %bb.i ], [ %i.ag, %bb.h ], [ %i.bt, %bb.t ], [ %i.af, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.cj = load ptr, ptr %2, align 8, !tbaa !49    ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.c
  br i1 %i.ck, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %.body
  %i.cl = load i64, ptr %i.c, align 8, !tbaa !53
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cm) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn20
}

declare void @_ZN8FileLine18lineDirectiveParseEPKcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERiS9_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef ptr @_ZN8FileLine18copyOrSameFileLineEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK8FileLine6parentEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !279
  ret ptr %i.b
}

declare void @_ZN8FileLine12applyIgnoresEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10V3ParseImp17lexTimescaleParseEP8FileLinePKc(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(552) initializes((544, 546)) %0, ptr noundef %1, ptr noundef %2) #6 align 2 {
bb.a:
  %3 = alloca %class.VTimescale, align 1          ; 5 uses
  %4 = alloca %class.VTimescale, align 1          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i8 18, ptr %3, align 1, !tbaa !281
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i8 18, ptr %4, align 1, !tbaa !281
  call void @_ZN10VTimescale12parseSlashedEP8FileLinePKcRS_S4_b(ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, i1 noundef zeroext false)
  %i.a = call i8 @_ZNK9V3Options15timeComputeUnitERK10VTimescale(ptr noundef nonnull align 8 dereferenceable(1728) getelementptr inbounds nuw (i8, ptr @v3Global, i64 192), ptr noundef nonnull align 1 dereferenceable(1) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 544
  store i8 %i.a, ptr %i.b, align 8, !tbaa !282
  %i.c = call i8 @_ZNK9V3Options15timeComputePrecERK10VTimescale(ptr noundef nonnull align 8 dereferenceable(1728) getelementptr inbounds nuw (i8, ptr @v3Global, i64 192), ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 545
  store i8 %i.c, ptr %i.d, align 1, !tbaa !282
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

declare void @_ZN10VTimescale12parseSlashedEP8FileLinePKcRS_S4_b(ptr noundef, ptr noundef, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), i1 noundef zeroext) local_unnamed_addr #3

declare i8 @_ZNK9V3Options15timeComputeUnitERK10VTimescale(ptr noundef nonnull align 8 dereferenceable(1728), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i8 @_ZNK9V3Options15timeComputePrecERK10VTimescale(ptr noundef nonnull align 8 dereferenceable(1728), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN10V3ParseImp15createTimescaleEP8FileLinebdbd(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i1 noundef zeroext %2, double noundef %3, i1 noundef zeroext %4, double noundef %5) #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.VTimescale, align 1          ; 9 uses
  %7 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %class.VTimescale, align 1         ; 6 uses
  %14 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 12 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i8 18, ptr %6, align 1, !tbaa !281
  br i1 %2, label %bb.b, label %bb.ar

bb.b:                                             ; preds = %bb.a
  %i.a = fcmp oeq double %3, 1.000000e+02
  br i1 %i.a, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = fcmp oeq double %3, 1.000000e+01
  br i1 %i.b, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = fcmp oeq double %3, 1.000000e+00
  br i1 %i.c, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = fcmp oeq double %3, 1.000000e-01
  br i1 %i.d, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = fcmp oeq double %3, 1.000000e-02
  br i1 %i.e, label %bb.t, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = fcmp oeq double %3, 1.000000e-03
  br i1 %i.f, label %bb.t, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = fcmp oeq double %3, 1.000000e-04
  br i1 %i.g, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = fcmp oeq double %3, 1.000000e-05
  br i1 %i.h, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.i = fcmp oeq double %3, f0x3EB0C6F7A0B5ED8D
  br i1 %i.i, label %bb.t, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.j = fcmp oeq double %3, f0x3E7AD7F29ABCAF48
  br i1 %i.j, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.k = fcmp oeq double %3, 1.000000e-08
  br i1 %i.k, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.l = fcmp oeq double %3, 1.000000e-09
  br i1 %i.l, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.m = fcmp oeq double %3, 1.000000e-10
  br i1 %i.m, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.n = fcmp oeq double %3, f0x3DA5FD7FE1796495
  br i1 %i.n, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.o = fcmp oeq double %3, f0x3D719799812DEA11
  br i1 %i.o, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.p = fcmp oeq double %3, 1.000000e-13
  br i1 %i.p, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.q = fcmp oeq double %3, f0x3D06849B86A12B9B
  br i1 %i.q, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.r = fcmp oeq double %3, 1.000000e-15         ; 2 uses
  %spec.select.i = select i1 %i.r, i64 17, i64 18
  %spec.select9.i = select i1 %i.r, i8 17, i8 18
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.07.lcssa.i = phi i64 [ 0, %bb.b ], [ 14, %bb.p ], [ 1, %bb.c ], [ 9, %bb.k ], [ 2, %bb.d ], [ 10, %bb.l ], [ 3, %bb.e ], [ %spec.select.i, %bb.s ], [ 4, %bb.f ], [ 12, %bb.n ], [ 5, %bb.g ], [ 16, %bb.r ], [ 6, %bb.h ], [ 11, %bb.m ], [ 7, %bb.i ], [ 15, %bb.q ], [ 8, %bb.j ], [ 13, %bb.o ]
  %.lcssa.i = phi i8 [ 0, %bb.b ], [ 14, %bb.p ], [ 1, %bb.c ], [ 9, %bb.k ], [ 2, %bb.d ], [ 10, %bb.l ], [ 3, %bb.e ], [ %spec.select9.i, %bb.s ], [ 4, %bb.f ], [ 12, %bb.n ], [ 5, %bb.g ], [ 16, %bb.r ], [ 6, %bb.h ], [ 11, %bb.m ], [ 7, %bb.i ], [ 15, %bb.q ], [ 8, %bb.j ], [ 13, %bb.o ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK10VTimescale10multiplierEvE6values, i64 %.07.lcssa.i
  %i.t = load double, ptr %i.s, align 8, !tbaa !283
  %i.u = fcmp une double %i.t, %3
  br i1 %i.u, label %bb.u, label %_ZN10VTimescaleC2EdRb.exit

_ZN10VTimescaleC2EdRb.exit:                       ; preds = %bb.t
  store i8 %.lcssa.i, ptr %6, align 1, !tbaa !282
  br label %bb.ar

bb.u:                                             ; preds = %bb.t
  %i.v = tail call noundef i32 @_ZN10V3ParseImp5debugEv()
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.v, label %bb.ak, !prof !211

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7)
  %i.x = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.aa ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull @.str.6, i32 noundef 204)
          to label %bb.w unwind label %bb.ab

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.y = load ptr, ptr %8, align 8, !tbaa !49
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !184
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %i.y, i64 noundef %i.aa)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.ac ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %bb.w
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull @.str.14, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50 unwind label %bb.ac ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, double noundef %3)
          to label %_ZNSolsEd.exit unwind label %bb.ac ; 0 uses

_ZNSolsEd.exit:                                   ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50
  %i.ae = load ptr, ptr %8, align 8, !tbaa !49    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSolsEd.exit
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !53
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSolsEd.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.x unwind label %bb.ad

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !184 ; 2 uses
  %i.al = load ptr, ptr %9, align 8, !tbaa !49    ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ak
  %i.an = getelementptr i8, ptr %i.am, i64 -1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !53
  %.not = icmp eq i8 %i.ao, 10
  %i.ap = load ptr, ptr %10, align 8, !tbaa !49   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i52, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i52: ; preds = %bb.y
  %i.as = icmp ult i64 %i.ak, 16
  call void @llvm.assume(i1 %i.as)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.y
  %i.at = load i64, ptr %i.aq, align 8, !tbaa !53
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.au) #22
  %.pre = load ptr, ptr %9, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i52, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51
  %i.av = phi ptr [ %i.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i52 ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !53
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br i1 %.not, label %bb.af, label %bb.z

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %i.ba = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %7, i8 noundef signext 10)
          to label %bb.af unwind label %bb.aa     ; 0 uses

bb.aa:                                            ; preds = %bb.v, %bb.z
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

bb.ac:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit50, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %bb.w
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %8, align 8, !tbaa !49    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57: ; preds = %bb.ac
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !53
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.ab ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i57 ], [ %i.bd, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.aj

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

bb.ae:                                            ; preds = %bb.x
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.bl = load ptr, ptr %9, align 8, !tbaa !49    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60: ; preds = %bb.ae
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !53
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60, %bb.ad
  %.pn28 = phi { ptr, i32 } [ %i.bj, %bb.ad ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i60 ], [ %i.bk, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.aj

bb.af:                                            ; preds = %bb.z, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(112) %7)
          to label %bb.ag unwind label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bq = load ptr, ptr %11, align 8, !tbaa !49
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !184
  %i.bt = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.bq, i64 noundef %i.bs)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit63 unwind label %bb.ai ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit63: ; preds = %bb.ag
  %i.bu = load ptr, ptr %11, align 8, !tbaa !49   ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit63
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !53
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit63, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

bb.ai:                                            ; preds = %bb.ag
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cb = load ptr, ptr %11, align 8, !tbaa !49   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.ai
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !53
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67, %bb.ah
  %.pn30 = phi { ptr, i32 } [ %i.bz, %bb.ah ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67 ], [ %i.ca, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59, %bb.aa
  %.pn30.pn = phi { ptr, i32 } [ %.pn30, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %i.bb, %bb.aa ], [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit62 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.cn

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, %bb.u
  %i.cg = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error11v3errorPrepB5cxx11E11V3ErrorCode(i8 5) ; 0 uses
  %i.ch = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %bb.al, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, !prof !245

bb.al:                                            ; preds = %bb.ak
  %i.cj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #23
  %.not.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i, label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ck = call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #23 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #23
  br label %_ZN7V3Error10v3errorStrB5cxx11Ev.exit

common.resume:                                    ; preds = %bb.cn, %bb.cf, %bb.ao
  %common.resume.op = phi { ptr, i32 } [ %i.cl, %bb.ao ], [ %i.gk, %bb.cf ], [ %.pn47.pn, %bb.cn ]
  resume { ptr, i32 } %common.resume.op

bb.ao:                                            ; preds = %bb.am
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #23
  br label %common.resume

_ZN7V3Error10v3errorStrB5cxx11Ev.exit:            ; preds = %bb.ak, %bb.al, %bb.an
  %i.cm = call noundef nonnull align 8 dereferenceable(112) ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 304), ptr nonnull @.str.82, ptr nonnull @.str.85, i32 481, ptr null) ; 2 uses
  %i.cn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull @.str.15, i64 noundef 22) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.co = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 6 uses
  store ptr %i.co, ptr %12, align 8, !tbaa !213
  %i.cp = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.cp, align 8, !tbaa !184
  store i8 0, ptr %i.co, align 8, !tbaa !53
  invoke void @_ZN8FileLine10v3errorEndERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEERKNS0_12basic_stringIcS3_S4_EE(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(112) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit
  %i.cq = load ptr, ptr %12, align 8, !tbaa !49   ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.co
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70: ; preds = %bb.ap
  %i.cs = load i64, ptr %i.co, align 8, !tbaa !53
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.ar

bb.aq:                                            ; preds = %_ZN7V3Error10v3errorStrB5cxx11Ev.exit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  %i.cv = load ptr, ptr %12, align 8, !tbaa !49   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.co
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.aq
  %i.cx = load i64, ptr %i.co, align 8, !tbaa !53
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.cn

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit72, %_ZN10VTimescaleC2EdRb.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store i8 18, ptr %13, align 1, !tbaa !281
  br i1 %4, label %bb.as, label %bb.ci

bb.as:                                            ; preds = %bb.ar
  %i.cz = fcmp oeq double %5, 1.000000e+02
  br i1 %i.cz, label %bb.bk, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.da = fcmp oeq double %5, 1.000000e+01
  br i1 %i.da, label %bb.bk, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.db = fcmp oeq double %5, 1.000000e+00
  br i1 %i.db, label %bb.bk, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dc = fcmp oeq double %5, 1.000000e-01
  br i1 %i.dc, label %bb.bk, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dd = fcmp oeq double %5, 1.000000e-02
  br i1 %i.dd, label %bb.bk, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.de = fcmp oeq double %5, 1.000000e-03
  br i1 %i.de, label %bb.bk, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.df = fcmp oeq double %5, 1.000000e-04
  br i1 %i.df, label %bb.bk, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dg = fcmp oeq double %5, 1.000000e-05
  br i1 %i.dg, label %bb.bk, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dh = fcmp oeq double %5, f0x3EB0C6F7A0B5ED8D
  br i1 %i.dh, label %bb.bk, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.di = fcmp oeq double %5, f0x3E7AD7F29ABCAF48
  br i1 %i.di, label %bb.bk, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dj = fcmp oeq double %5, 1.000000e-08
  br i1 %i.dj, label %bb.bk, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dk = fcmp oeq double %5, 1.000000e-09
  br i1 %i.dk, label %bb.bk, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dl = fcmp oeq double %5, 1.000000e-10
  br i1 %i.dl, label %bb.bk, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dm = fcmp oeq double %5, f0x3DA5FD7FE1796495
  br i1 %i.dm, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dn = fcmp oeq double %5, f0x3D719799812DEA11
  br i1 %i.dn, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.do = fcmp oeq double %5, 1.000000e-13
  br i1 %i.do, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.dp = fcmp oeq double %5, f0x3D06849B86A12B9B
  br i1 %i.dp, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dq = fcmp oeq double %5, 1.000000e-15        ; 2 uses
  %spec.select.i76 = select i1 %i.dq, i64 17, i64 18
  %spec.select9.i77 = select i1 %i.dq, i8 17, i8 18
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as
  %.07.lcssa.i78 = phi i64 [ 0, %bb.as ], [ 14, %bb.bg ], [ 1, %bb.at ], [ 9, %bb.bb ], [ 2, %bb.au ], [ 10, %bb.bc ], [ 3, %bb.av ], [ %spec.select.i76, %bb.bj ], [ 4, %bb.aw ], [ 12, %bb.be ], [ 5, %bb.ax ], [ 16, %bb.bi ], [ 6, %bb.ay ], [ 11, %bb.bd ], [ 7, %bb.az ], [ 15, %bb.bh ], [ 8, %bb.ba ], [ 13, %bb.bf ]
  %.lcssa.i79 = phi i8 [ 0, %bb.as ], [ 14, %bb.bg ], [ 1, %bb.at ], [ 9, %bb.bb ], [ 2, %bb.au ], [ 10, %bb.bc ], [ 3, %bb.av ], [ %spec.select9.i77, %bb.bj ], [ 4, %bb.aw ], [ 12, %bb.be ], [ 5, %bb.ax ], [ 16, %bb.bi ], [ 6, %bb.ay ], [ 11, %bb.bd ], [ 7, %bb.az ], [ 15, %bb.bh ], [ 8, %bb.ba ], [ 13, %bb.bf ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK10VTimescale10multiplierEvE6values, i64 %.07.lcssa.i78
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !283
  %i.dt = fcmp une double %i.ds, %5
  br i1 %i.dt, label %bb.bl, label %_ZN10VTimescaleC2EdRb.exit78

_ZN10VTimescaleC2EdRb.exit78:                     ; preds = %bb.bk
  store i8 %.lcssa.i79, ptr %13, align 1, !tbaa !282
  br label %bb.ci

bb.bl:                                            ; preds = %bb.bk
  %i.du = call noundef i32 @_ZN10V3ParseImp5debugEv()
  %i.dv = icmp sgt i32 %i.du, 0
  br i1 %i.dv, label %bb.bm, label %bb.cb, !prof !211

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %14)
  %i.dw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull @.str.5, i64 noundef 2)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80 unwind label %bb.br ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80: ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZN7V3Error7lineStrB5cxx11EPKci(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull @.str.6, i32 noundef 213)
          to label %bb.bn unwind label %bb.bs

bb.bn:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80
  %i.dx = load ptr, ptr %15, align 8, !tbaa !49
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !184
  %i.ea = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %i.dx, i64 noundef %i.dz)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit82 unwind label %bb.bt ; 2 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit82: ; preds = %bb.bn
  %i.eb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, ptr noundef nonnull @.str.14, i64 noundef 8)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84 unwind label %bb.bt ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit82
  %i.ec = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ea, double noundef %5)
          to label %_ZNSolsEd.exit86 unwind label %bb.bt ; 0 uses

_ZNSolsEd.exit86:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84
  %i.ed = load ptr, ptr %15, align 8, !tbaa !49   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %_ZNSolsEd.exit86
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !53
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %_ZNSolsEd.exit86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 8 dereferenceable(112) %14)
          to label %bb.bo unwind label %bb.bu

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(112) %14)
          to label %bb.bp unwind label %bb.bv

bb.bp:                                            ; preds = %bb.bo
  %i.ei = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !184 ; 2 uses
  %i.ek = load ptr, ptr %16, align 8, !tbaa !49   ; 2 uses
  %i.el = getelementptr i8, ptr %i.ek, i64 %i.ej
  %i.em = getelementptr i8, ptr %i.el, i64 -1
  %i.en = load i8, ptr %i.em, align 1, !tbaa !53
  %.not40 = icmp eq i8 %i.en, 10
  %i.eo = load ptr, ptr %17, align 8, !tbaa !49   ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.eq = icmp eq ptr %i.eo, %i.ep
  br i1 %i.eq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i91: ; preds = %bb.bp
  %i.er = icmp ult i64 %i.ej, 16
  call void @llvm.assume(i1 %i.er)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.bp
  %i.es = load i64, ptr %i.ep, align 8, !tbaa !53
  %i.et = add i64 %i.es, 1
  call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.et) #22
  %.pre135 = load ptr, ptr %16, align 8, !tbaa !49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90
  %i.eu = phi ptr [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i91 ], [ %.pre135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.ev = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ew = icmp eq ptr %i.eu, %i.ev
  br i1 %i.ew, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %i.ex = load i64, ptr %i.ev, align 8, !tbaa !53
  %i.ey = add i64 %i.ex, 1
  call void @_ZdlPvm(ptr noundef %i.eu, i64 noundef %i.ey) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br i1 %.not40, label %bb.bw, label %bb.bq

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %i.ez = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %14, i8 noundef signext 10)
          to label %bb.bw unwind label %bb.br     ; 0 uses

bb.br:                                            ; preds = %bb.bm, %bb.bq
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.bs:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit80
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

bb.bt:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84, %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit82, %bb.bn
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = load ptr, ptr %15, align 8, !tbaa !49   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %bb.bt
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !53
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %bb.bs
  %.pn36 = phi { ptr, i32 } [ %i.fb, %bb.bs ], [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ %i.fc, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.ca

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

bb.bv:                                            ; preds = %bb.bo
  %i.fj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  %i.fk = load ptr, ptr %16, align 8, !tbaa !49   ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %bb.bv
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !53
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99, %bb.bu
  %.pn38 = phi { ptr, i32 } [ %i.fi, %bb.bu ], [ %i.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ], [ %i.fj, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %bb.ca

bb.bw:                                            ; preds = %bb.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(112) %14)
          to label %bb.bx unwind label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.fp = load ptr, ptr %18, align 8, !tbaa !49
  %i.fq = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !184
  %i.fs = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef %i.fp, i64 noundef %i.fr)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit103 unwind label %bb.bz ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit103: ; preds = %bb.bx
  %i.ft = load ptr, ptr %18, align 8, !tbaa !49   ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit103
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !53
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit103, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.cb

bb.by:                                            ; preds = %bb.bw
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109

bb.bz:                                            ; preds = %bb.bx
  %i.fz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ga = load ptr, ptr %18, align 8, !tbaa !49   ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit109, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i107: ; preds = %bb.bz
end_hunk_0
