Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/dxt?download=true
inline.NumInlined: 635
inline.NumDeleted: 277
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN2cv15OcvDftBasicImpl4initEiiiiPb:bb.a
  %i.eb = load i8, ptr %i.g, align 8, !tbaa !157, !range !44, !noundef !45
  %i.ec = trunc nuw i8 %i.eb to i1
  %. = select i1 %i.ec, i64 2, i64 1
  br label %.thread75

.thread75:                                        ; preds = %bb.ac, %bb.af, %bb.ae
  %.049 = phi i64 [ 0, %bb.ae ], [ %., %bb.af ], [ 0, %bb.ac ] ; 2 uses
  %i.ed = icmp eq i32 %3, 6
  %i.ee = add nuw nsw i64 %.049, 3
  %spec.select63 = select i1 %i.ed, i64 %i.ee, i64 %.049
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2cv15OcvDftBasicImpl4initEiiiiPbE7dft_tbl, i64 %spec.select63
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !47
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !48
  %i.ei = and i32 %4, 66
  %or.cond65.not = icmp eq i32 %i.ei, 2
  br i1 %or.cond65.not, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.thread75
  %i.ej = and i32 %4, 132
  %or.cond68.not = icmp eq i32 %i.ej, 4
  %.0 = select i1 %or.cond68.not, i32 1, i32 %2
  %i.ek = mul nsw i32 %.0, %1
  %i.el = sitofp i32 %i.ek to double
  %i.em = fdiv double 1.000000e+00, %i.el
  store double %i.em, ptr %i.p, align 8, !tbaa !159
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread75
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3hal5DFT2D6createEiiiiiii(ptr dead_on_unwind noalias writable sret(%"struct.cv::Ptr.1") align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = icmp eq i32 %1, 1
  %i.b = icmp sgt i32 %7, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %9)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -213, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv3hal5DFT2D6createEiiiiiii, ptr noundef nonnull @.str.1, i32 noundef 3493) #22
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %8, align 8, !tbaa !51     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !52
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noalias noundef nonnull dereferenceable(4312) ptr @_Znwm(i64 noundef 4312) #19 ; 28 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv10OcvDftImplE, i64 16), ptr %i.i, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  store ptr %i.m, ptr %i.l, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  store i64 1032, ptr %i.n, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 1168
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 1184
  store ptr %i.p, ptr %i.o, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 1176
  store i64 1032, ptr %i.q, align 8, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 2216
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 2232
  store ptr %i.s, ptr %i.r, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 2224
  store i64 1032, ptr %i.t, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 3264
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 3280
  store ptr %i.v, ptr %i.u, align 8, !tbaa !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 3272
  store i64 1032, ptr %i.w, align 8, !tbaa !30
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i8 0, ptr %i.x, align 8, !tbaa !62
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 41
  store i8 0, ptr %i.y, align 1, !tbaa !63
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 42
  store i8 0, ptr %i.z, align 2, !tbaa !64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store i32 0, ptr %i.ab, align 8, !tbaa !65
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  store i8 0, ptr %i.ac, align 4, !tbaa !66
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 77
  store i8 0, ptr %i.ad, align 1, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  store i8 0, ptr %i.ae, align 8, !tbaa !165
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 108
  store i32 0, ptr %i.af, align 4, !tbaa !68
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  store i32 0, ptr %i.ag, align 8, !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(25) %i.aa, i8 0, i64 25, i1 false)
  tail call void @_ZN2cv10OcvDftImpl4initEiiiiiii(ptr noundef nonnull align 8 dereferenceable(4312) %i.i, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7)
  store ptr %i.i, ptr %0, align 8, !tbaa !72
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN2cv10OcvDftImplEEET_(ptr noundef nonnull align 8 dereferenceable(8) %i.ah, ptr noundef nonnull %i.i)
  ret void
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !166
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.35) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.d, ptr %i.a, align 8, !tbaa !73
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !51
  %i.g = load i64, ptr %i.a, align 8, !tbaa !73
  store i64 %i.g, ptr %i.b, align 8, !tbaa !52
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !52
  store i8 %i.i, ptr %i.h, align 1, !tbaa !52
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !167
  %i.l = load ptr, ptr %0, align 8, !tbaa !51
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv10OcvDftImpl4initEiiiiiii(ptr noundef nonnull align 8 dereferenceable(4312) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ne i32 %4, %5
  %i.b = zext i1 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %7, ptr %i.c, align 8, !tbaa !65
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  store i32 %1, ptr %i.d, align 4, !tbaa !74
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store i32 %2, ptr %i.e, align 8, !tbaa !75
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  store i32 %3, ptr %i.f, align 8, !tbaa !76
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 108
  store i32 %4, ptr %i.g, align 4, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 %5, ptr %i.h, align 8, !tbaa !69
  %i.i = trunc i32 %6 to i1
  %i.j = trunc i32 %6 to i8                       ; 3 uses
  %i.k = and i8 %i.j, 1
  %i.l = lshr i32 %6, 10
  %i.m = trunc i32 %i.l to i8
  %i.n = and i8 %i.m, 1
  %i.o = and i32 %6, 512
  %.not104 = icmp eq i32 %i.o, 0
  %i.p = icmp eq i32 %4, 1                        ; 2 uses
  %i.q = icmp eq i32 %5, 1                        ; 2 uses
  %or.cond7.i = and i1 %i.p, %i.q                 ; 2 uses
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %or.cond7.i, label %_ZN2cv13determineModeEbii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = icmp eq i32 %5, 2                        ; 2 uses
  %or.cond3.i = and i1 %i.p, %i.r
  br i1 %or.cond3.i, label %_ZN2cv13determineModeEbii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = icmp eq i32 %4, 2
  %or.cond5.i = and i1 %i.s, %i.r
  br i1 %or.cond5.i, label %_ZN2cv13determineModeEbii.exit, label %bb.h

bb.e:                                             ; preds = %bb.a
  br i1 %or.cond7.i, label %_ZN2cv13determineModeEbii.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp eq i32 %4, 2                        ; 2 uses
  %or.cond9.i = and i1 %i.t, %i.q
  br i1 %or.cond9.i, label %_ZN2cv13determineModeEbii.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = icmp eq i32 %5, 2
  %or.cond11.i = and i1 %i.t, %i.u
  br i1 %or.cond11.i, label %_ZN2cv13determineModeEbii.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  br label %_ZN2cv13determineModeEbii.exit

_ZN2cv13determineModeEbii.exit:                   ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.not = phi i1 [ true, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.g ]
  %i.v = phi i8 [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.h ], [ 1, %bb.c ], [ 1, %bb.b ], [ 0, %bb.g ] ; 2 uses
  %.0.i = phi i32 [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 0, %bb.h ], [ 2, %bb.c ], [ 1, %bb.b ], [ 6, %bb.g ] ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  store i32 %.0.i, ptr %i.w, align 4, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  store i8 %i.k, ptr %i.x, align 2, !tbaa !64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %8 = lshr i8 %i.j, 2                            ; 2 uses
  %i.z = and i8 %8, 1
  store i8 %i.z, ptr %i.y, align 4, !tbaa !66
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 77 ; 2 uses
  %9 = lshr i8 %i.j, 1
  %i.ab = and i8 %9, 1
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !67
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store i8 0, ptr %i.ac, align 8, !tbaa !62
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 4 uses
  store i8 0, ptr %i.ad, align 1, !tbaa !63
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.af = icmp eq i32 %3, 5
  %i.ag = select i1 %i.af, i32 4, i32 8           ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ai = shl nuw nsw i32 %i.ag, 1                ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 6 uses
  br i1 %.not, label %.thread, label %bb.i

.thread:                                          ; preds = %_ZN2cv13determineModeEbii.exit
  store i8 0, ptr %i.ae, align 4, !tbaa !78
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !79
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !80
  br label %bb.j

bb.i:                                             ; preds = %_ZN2cv13determineModeEbii.exit
  store i8 %i.v, ptr %i.ae, align 4, !tbaa !78
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !79
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !80
  %i.ak = trunc nuw i8 %i.v to i1
  br i1 %i.ak, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread, %bb.i
  store i32 %i.ai, ptr %i.ah, align 8, !tbaa !79
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.al = trunc i8 %8 to i1
  br i1 %i.al, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = icmp eq i32 %1, 1
  %i.an = icmp sgt i32 %2, 1                      ; 2 uses
  %or.cond.i = and i1 %i.am, %i.an
  br i1 %or.cond.i, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = icmp sgt i32 %1, 1
  %or.cond3.i60 = and i1 %i.ao, %i.an
  br i1 %or.cond3.i60, label %_ZN2cv13determineDimsEiibb.exit, label %bb.s

_ZN2cv13determineDimsEiibb.exit:                  ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !81 ; 2 uses
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !82 ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = ashr exact i64 %i.av, 2                 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, 2
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN2cv13determineDimsEiibb.exit
  %i.ay = sub nuw nsw i64 2, %i.aw
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 noundef %i.ay)
  %.pre = load i32, ptr %i.w, align 4, !tbaa !77
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.o:                                             ; preds = %_ZN2cv13determineDimsEiibb.exit
  %.not105 = icmp eq i64 %i.av, 8
  br i1 %.not105, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.az
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.p
  store ptr %i.az, ptr %i.aq, align 8, !tbaa !81
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.n, %bb.o, %bb.p, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.ba = phi i32 [ %.pre, %bb.n ], [ %.0.i, %bb.o ], [ %.0.i, %bb.p ], [ %.0.i, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.bb = and i32 %i.ba, -2
  %switch = icmp eq i32 %i.bb, 4
  %i.bc = load ptr, ptr %i.ap, align 8, !tbaa !82 ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  br i1 %switch, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  store i32 1, ptr %i.bc, align 4, !tbaa !42
  store i32 0, ptr %i.bd, align 4, !tbaa !42
  br label %bb.y

bb.r:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  store i32 0, ptr %i.bc, align 4, !tbaa !42
  store i32 1, ptr %i.bd, align 4, !tbaa !42
  br label %bb.y

bb.s:                                             ; preds = %bb.l, %bb.m, %bb.k
  %.0.i61.ph = phi i1 [ %.not104, %bb.l ], [ false, %bb.k ], [ false, %bb.m ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !81 ; 3 uses
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !82 ; 3 uses
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 2                 ; 2 uses
  %i.bm = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bn = sub nuw nsw i64 1, %i.bl
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 noundef %i.bn)
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit64

bb.u:                                             ; preds = %bb.s
  %i.bo = icmp ugt i64 %i.bl, 1
  br i1 %i.bo, label %bb.v, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit64

bb.v:                                             ; preds = %bb.u
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 4 ; 2 uses
  %.not.i.i62 = icmp eq ptr %i.bg, %i.bp
  br i1 %.not.i.i62, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit64, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i63

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i63:      ; preds = %bb.v
  store ptr %i.bp, ptr %i.bf, align 8, !tbaa !81
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit64

_ZNSt6vectorIiSaIiEE6resizeEm.exit64:             ; preds = %bb.t, %bb.u, %bb.v, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i63
  %i.bq = load ptr, ptr %i.be, align 8, !tbaa !82 ; 4 uses
  br i1 %.0.i61.ph, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit64
  store i32 1, ptr %i.bq, align 4, !tbaa !42
  br label %bb.y

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit64
  store i32 0, ptr %i.bq, align 4, !tbaa !42
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.q, %bb.r
  %i.br = phi ptr [ %i.bq, %bb.w ], [ %i.bq, %bb.x ], [ %i.bc, %bb.q ], [ %i.bc, %bb.r ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !81 ; 2 uses
  %.not113 = icmp eq ptr %i.bu, %i.br
  br i1 %.not113, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.y
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bw, %i.bv
  %i.by = ashr exact i64 %i.bx, 2
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 2216 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 2224 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 2232 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 3264 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 3272 ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 3280 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  br label %bb.z

._crit_edge:                                      ; preds = %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit, %bb.y
  ret void

bb.z:                                             ; preds = %.lr.ph, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit
  %i.cp = phi i64 [ %i.by, %.lr.ph ], [ %i.js, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit ]
  %i.cq = phi ptr [ %i.br, %.lr.ph ], [ %i.jo, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit ]
  %i.cr = phi i64 [ 0, %.lr.ph ], [ %i.cw, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit ]
  %.049112 = phi i32 [ 0, %.lr.ph ], [ %i.cv, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit ] ; 2 uses
  %.050111 = phi i8 [ %i.n, %.lr.ph ], [ %spec.select59, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit ]
  %.052110 = phi i8 [ %i.b, %.lr.ph ], [ %spec.select, %_ZN2cv10AutoBufferIhLm1032EE8allocateEm.exit ]
  %i.cs = icmp eq i32 %.049112, 1                 ; 2 uses
  %spec.select = select i1 %i.cs, i8 0, i8 %.052110 ; 2 uses
  %spec.select59 = select i1 %i.cs, i8 1, i8 %.050111 ; 3 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cr
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !42
  %i.cv = add i32 %.049112, 1                     ; 2 uses
  %i.cw = zext i32 %i.cv to i64                   ; 3 uses
  %i.cx = icmp eq i64 %i.cp, %i.cw
  %i.cy = load i8, ptr %i.x, align 2, !tbaa !64, !range !44, !noundef !45
  %i.cz = load i8, ptr %i.aa, align 1, !tbaa !67, !range !44, !noundef !45
  %i.da = shl nuw nsw i8 %i.cz, 1
  %.1106 = or disjoint i8 %i.da, %i.cy
  %.1 = zext nneg i8 %.1106 to i32                ; 2 uses
  %i.db = load i8, ptr %i.y, align 4, !tbaa !66, !range !44, !noundef !45
  %i.dc = trunc nuw i8 %i.db to i1                ; 2 uses
  %i.dd = or disjoint i32 %.1, 4
  %.2 = select i1 %i.dc, i32 %i.dd, i32 %.1
  %i.de = shl nuw nsw i8 %spec.select, 4
  %i.df = load i8, ptr %i.ae, align 4, !tbaa !78, !range !44, !noundef !45
  %i.dg = shl nuw nsw i8 %i.df, 5
  %.3114 = or disjoint i8 %i.dg, %i.de
  %.3 = zext nneg i8 %.3114 to i32
  %.4 = or i32 %.2, %.3                           ; 2 uses
  %i.dh = or i32 %.4, 64
  %.5 = select i1 %i.cx, i32 %.4, i32 %i.dh       ; 2 uses
  %i.di = icmp eq i32 %i.cu, 0
  br i1 %i.di, label %bb.aa, label %bb.bd

bb.aa:                                            ; preds = %bb.z
  %i.dj = load i32, ptr %i.d, align 4, !tbaa !74
  %i.dk = icmp ne i32 %i.dj, 1
  %brmerge = or i1 %i.dk, %i.dc
  br i1 %brmerge, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dl = load i32, ptr %i.e, align 8, !tbaa !75
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.048.in = phi ptr [ %i.d, %bb.ab ], [ %i.e, %bb.aa ]
  %.047 = phi i32 [ %i.dl, %bb.ab ], [ 1, %bb.aa ]
  %.048 = load i32, ptr %.048.in, align 4, !tbaa !42 ; 2 uses
  store i8 %spec.select59, ptr %i.ac, align 8, !tbaa !62
  %i.dm = load i32, ptr %i.f, align 8, !tbaa !76
  %i.dn = tail call noalias noundef nonnull dereferenceable(2336) ptr @_Znwm(i64 noundef 2336) #19, !noalias !174 ; 19 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv15OcvDftBasicImplE, i64 16), ptr %i.dn, align 8, !tbaa !16, !noalias !174
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i32 0, ptr %i.do, align 8, !tbaa !22, !noalias !174
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  store i8 0, ptr %i.dq, align 8, !tbaa !23, !noalias !174
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 64
  store ptr null, ptr %i.dr, align 8, !tbaa !24, !noalias !174
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(43) %i.dp, i8 0, i64 43, i1 false), !noalias !174
end_hunk_0
begin_hunk_1_@_ZN2cv12divSpectrumsERKNS_11_InputArrayES2_RKNS_12_OutputArrayEib:bb.a
  %i.ags = fdiv double %i.agp, %i.agr
  store double %i.ags, ptr %.4530660.prol, align 8, !tbaa !113
  %i.agt = getelementptr inbounds nuw [8 x i8], ptr %.4540656.prol, i64 %i.ss ; 2 uses
  %i.agu = getelementptr inbounds nuw [8 x i8], ptr %.4535658.prol, i64 %i.st ; 2 uses
  %i.agv = getelementptr inbounds nuw [8 x i8], ptr %.4530660.prol, i64 %i.su ; 2 uses
  %i.agw = add nsw i32 %i.ago, -1                 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader633.prol.loopexit, label %.preheader633.prol, !llvm.loop !391

.preheader633.prol.loopexit:                      ; preds = %.preheader633.prol, %.preheader633.preheader
  %.unr = phi i32 [ %.pre-phi, %.preheader633.preheader ], [ %i.agw, %.preheader633.prol ]
  %.4530660.unr = phi ptr [ %i.cj, %.preheader633.preheader ], [ %i.agv, %.preheader633.prol ]
  %.4535658.unr = phi ptr [ %i.cv, %.preheader633.preheader ], [ %i.agu, %.preheader633.prol ]
  %.4540656.unr = phi ptr [ %i.cl, %.preheader633.preheader ], [ %i.agt, %.preheader633.prol ]
  %i.agx = icmp ult i32 %.pre-phi, 3
  br i1 %i.agx, label %.loopexit624, label %.preheader633

.preheader633.us670.preheader:                    ; preds = %.lr.ph662.split.split.split
  %xtraiter890 = and i32 %.0512, 1
  %lcmp.mod891.not = icmp eq i32 %xtraiter890, 0
  br i1 %lcmp.mod891.not, label %.preheader633.us670.prol.loopexit, label %.preheader633.us670.prol

.preheader633.us670.prol:                         ; preds = %.preheader633.us670.preheader
  %i.agy = load double, ptr %i.cl, align 8, !tbaa !113
  %i.agz = load double, ptr %i.cv, align 8, !tbaa !113
  %i.aha = fadd double %i.agz, f0x3CB0000000000000
  %i.ahb = fdiv double %i.agy, %i.aha
  store double %i.ahb, ptr %i.cj, align 8, !tbaa !113
  %i.ahc = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.zq
  %i.ahd = load double, ptr %i.ahc, align 8, !tbaa !113
  %i.ahe = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.zq
  %i.ahf = load double, ptr %i.ahe, align 8, !tbaa !113
  %i.ahg = fadd double %i.ahf, f0x3CB0000000000000
  %i.ahh = fdiv double %i.ahd, %i.ahg
  %i.ahi = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.zq
  store double %i.ahh, ptr %i.ahi, align 8, !tbaa !113
  %i.ahj = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.ss
  %i.ahk = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.st
  %i.ahl = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.su
  %i.ahm = add nsw i32 %.pre-phi, -1
  br label %.preheader633.us670.prol.loopexit

.preheader633.us670.prol.loopexit:                ; preds = %.preheader633.us670.prol, %.preheader633.us670.preheader
  %.unr893 = phi i32 [ %.pre-phi, %.preheader633.us670.preheader ], [ %i.ahm, %.preheader633.us670.prol ]
  %.4530660.us667.unr = phi ptr [ %i.cj, %.preheader633.us670.preheader ], [ %i.ahl, %.preheader633.us670.prol ]
  %.4535658.us668.unr = phi ptr [ %i.cv, %.preheader633.us670.preheader ], [ %i.ahk, %.preheader633.us670.prol ]
  %.4540656.us669.unr = phi ptr [ %i.cl, %.preheader633.us670.preheader ], [ %i.ahj, %.preheader633.us670.prol ]
  %i.ahn = icmp eq i32 %.pre-phi, 0
  br i1 %i.ahn, label %.loopexit624, label %.preheader633.us670

.preheader633.us670:                              ; preds = %.preheader633.us670.prol.loopexit, %.preheader633.us670
  %i.aho = phi i32 [ %i.air, %.preheader633.us670 ], [ %.unr893, %.preheader633.us670.prol.loopexit ] ; 2 uses
  %.4530660.us667 = phi ptr [ %i.aiq, %.preheader633.us670 ], [ %.4530660.us667.unr, %.preheader633.us670.prol.loopexit ] ; 3 uses
  %.4535658.us668 = phi ptr [ %i.aip, %.preheader633.us670 ], [ %.4535658.us668.unr, %.preheader633.us670.prol.loopexit ] ; 3 uses
  %.4540656.us669 = phi ptr [ %i.aio, %.preheader633.us670 ], [ %.4540656.us669.unr, %.preheader633.us670.prol.loopexit ] ; 3 uses
  %i.ahp = load double, ptr %.4540656.us669, align 8, !tbaa !113
  %i.ahq = load double, ptr %.4535658.us668, align 8, !tbaa !113
  %i.ahr = fadd double %i.ahq, f0x3CB0000000000000
  %i.ahs = fdiv double %i.ahp, %i.ahr
  store double %i.ahs, ptr %.4530660.us667, align 8, !tbaa !113
  %i.aht = getelementptr inbounds [8 x i8], ptr %.4540656.us669, i64 %i.zq
  %i.ahu = load double, ptr %i.aht, align 8, !tbaa !113
  %i.ahv = getelementptr inbounds [8 x i8], ptr %.4535658.us668, i64 %i.zq
  %i.ahw = load double, ptr %i.ahv, align 8, !tbaa !113
  %i.ahx = fadd double %i.ahw, f0x3CB0000000000000
  %i.ahy = fdiv double %i.ahu, %i.ahx
  %i.ahz = getelementptr inbounds [8 x i8], ptr %.4530660.us667, i64 %i.zq
  store double %i.ahy, ptr %i.ahz, align 8, !tbaa !113
  %i.aia = getelementptr inbounds nuw [8 x i8], ptr %.4540656.us669, i64 %i.ss ; 3 uses
  %i.aib = getelementptr inbounds nuw [8 x i8], ptr %.4535658.us668, i64 %i.st ; 3 uses
  %i.aic = getelementptr inbounds nuw [8 x i8], ptr %.4530660.us667, i64 %i.su ; 3 uses
  %i.aid = load double, ptr %i.aia, align 8, !tbaa !113
  %i.aie = load double, ptr %i.aib, align 8, !tbaa !113
  %i.aif = fadd double %i.aie, f0x3CB0000000000000
  %i.aig = fdiv double %i.aid, %i.aif
  store double %i.aig, ptr %i.aic, align 8, !tbaa !113
  %i.aih = getelementptr inbounds [8 x i8], ptr %i.aia, i64 %i.zq
  %i.aii = load double, ptr %i.aih, align 8, !tbaa !113
  %i.aij = getelementptr inbounds [8 x i8], ptr %i.aib, i64 %i.zq
  %i.aik = load double, ptr %i.aij, align 8, !tbaa !113
  %i.ail = fadd double %i.aik, f0x3CB0000000000000
  %i.aim = fdiv double %i.aii, %i.ail
  %i.ain = getelementptr inbounds [8 x i8], ptr %i.aic, i64 %i.zq
  store double %i.aim, ptr %i.ain, align 8, !tbaa !113
  %i.aio = getelementptr inbounds nuw [8 x i8], ptr %i.aia, i64 %i.ss
  %i.aip = getelementptr inbounds nuw [8 x i8], ptr %i.aib, i64 %i.st
  %i.aiq = getelementptr inbounds nuw [8 x i8], ptr %i.aic, i64 %i.su
  %i.air = add nsw i32 %i.aho, -2
  %.not573.us671.1 = icmp eq i32 %i.aho, 1
  br i1 %.not573.us671.1, label %.loopexit624, label %.preheader633.us670, !llvm.loop !384

.preheader633:                                    ; preds = %.preheader633.prol.loopexit, %.preheader633
  %i.ais = phi i32 [ %i.ajv, %.preheader633 ], [ %.unr, %.preheader633.prol.loopexit ] ; 2 uses
  %.4530660 = phi ptr [ %i.aju, %.preheader633 ], [ %.4530660.unr, %.preheader633.prol.loopexit ] ; 2 uses
  %.4535658 = phi ptr [ %i.ajt, %.preheader633 ], [ %.4535658.unr, %.preheader633.prol.loopexit ] ; 2 uses
  %.4540656 = phi ptr [ %i.ajs, %.preheader633 ], [ %.4540656.unr, %.preheader633.prol.loopexit ] ; 2 uses
  %i.ait = load double, ptr %.4540656, align 8, !tbaa !113
  %i.aiu = load double, ptr %.4535658, align 8, !tbaa !113
  %i.aiv = fadd double %i.aiu, f0x3CB0000000000000
  %i.aiw = fdiv double %i.ait, %i.aiv
  store double %i.aiw, ptr %.4530660, align 8, !tbaa !113
  %i.aix = getelementptr inbounds nuw [8 x i8], ptr %.4540656, i64 %i.ss ; 2 uses
  %i.aiy = getelementptr inbounds nuw [8 x i8], ptr %.4535658, i64 %i.st ; 2 uses
  %i.aiz = getelementptr inbounds nuw [8 x i8], ptr %.4530660, i64 %i.su ; 2 uses
  %i.aja = load double, ptr %i.aix, align 8, !tbaa !113
  %i.ajb = load double, ptr %i.aiy, align 8, !tbaa !113
  %i.ajc = fadd double %i.ajb, f0x3CB0000000000000
  %i.ajd = fdiv double %i.aja, %i.ajc
  store double %i.ajd, ptr %i.aiz, align 8, !tbaa !113
  %i.aje = getelementptr inbounds nuw [8 x i8], ptr %i.aix, i64 %i.ss ; 2 uses
  %i.ajf = getelementptr inbounds nuw [8 x i8], ptr %i.aiy, i64 %i.st ; 2 uses
  %i.ajg = getelementptr inbounds nuw [8 x i8], ptr %i.aiz, i64 %i.su ; 2 uses
  %i.ajh = load double, ptr %i.aje, align 8, !tbaa !113
  %i.aji = load double, ptr %i.ajf, align 8, !tbaa !113
  %i.ajj = fadd double %i.aji, f0x3CB0000000000000
  %i.ajk = fdiv double %i.ajh, %i.ajj
  store double %i.ajk, ptr %i.ajg, align 8, !tbaa !113
  %i.ajl = getelementptr inbounds nuw [8 x i8], ptr %i.aje, i64 %i.ss ; 2 uses
  %i.ajm = getelementptr inbounds nuw [8 x i8], ptr %i.ajf, i64 %i.st ; 2 uses
  %i.ajn = getelementptr inbounds nuw [8 x i8], ptr %i.ajg, i64 %i.su ; 2 uses
  %i.ajo = load double, ptr %i.ajl, align 8, !tbaa !113
  %i.ajp = load double, ptr %i.ajm, align 8, !tbaa !113
  %i.ajq = fadd double %i.ajp, f0x3CB0000000000000
  %i.ajr = fdiv double %i.ajo, %i.ajq
  store double %i.ajr, ptr %i.ajn, align 8, !tbaa !113
  %i.ajs = getelementptr inbounds nuw [8 x i8], ptr %i.ajl, i64 %i.ss
  %i.ajt = getelementptr inbounds nuw [8 x i8], ptr %i.ajm, i64 %i.st
  %i.aju = getelementptr inbounds nuw [8 x i8], ptr %i.ajn, i64 %i.su
  %i.ajv = add nsw i32 %i.ais, -4
  %.not573.3 = icmp eq i32 %i.ais, 3
  br i1 %.not573.3, label %.loopexit624, label %.preheader633, !llvm.loop !384

.loopexit624:                                     ; preds = %.preheader633.prol.loopexit, %.preheader633, %.preheader633.us670.prol.loopexit, %.preheader633.us670, %..loopexit634_crit_edge.us, %.loopexit632.us, %.loopexit, %.loopexit641, %.lr.ph662.split.split, %.loopexit630
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  ret void

bb.by:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit613, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610
  %.pn566.pn = phi { ptr, i32 } [ %.pn566, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit613 ], [ %.pn563, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %15) #21
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.am
  %.pn566.pn.pn = phi { ptr, i32 } [ %.pn566.pn, %bb.by ], [ %i.cm, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #21
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i589, %bb.x, %bb.bz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.v
  %.pn566.pn.pn.pn = phi { ptr, i32 } [ %.pn566.pn.pn, %bb.bz ], [ %i.bn, %bb.v ], [ %.pn560, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603 ], [ %.pn558, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.bo, %bb.w ], [ %i.bp, %bb.x ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i589 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #21
  br label %bb.ca

bb.ca:                                            ; preds = %.body, %bb.u
  %.pn566.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn566.pn.pn.pn, %.body ], [ %i.bm, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  resume { ptr, i32 } %.pn566.pn.pn.pn.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3hal5DCT2D6createEiiii(ptr dead_on_unwind noalias writable sret(%"struct.cv::Ptr.8") align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(2392) ptr @_Znwm(i64 noundef 2392) #19 ; 30 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2392) %i.a, i8 0, i64 2392, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv10OcvDctImplE, i64 16), ptr %i.a, align 16, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(43) %i.b, i8 0, i64 43, i1 false)
  %i.c = invoke noundef zeroext i1 @_ZN2cv20checkHardwareSupportEi(i32 noundef 4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 59
  %i.f = zext i1 %i.c to i8
  store i8 %i.f, ptr %i.e, align 1, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store ptr %i.h, ptr %i.g, align 8, !tbaa !115
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store i64 264, ptr %i.i, align 16, !tbaa !116
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1288
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1304
  store ptr %i.k, ptr %i.j, align 8, !tbaa !32
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1296
  store i64 264, ptr %i.l, align 16, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2380
  store i32 %1, ptr %i.m, align 4, !tbaa !119
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2384
  store i32 %2, ptr %i.n, align 16, !tbaa !120
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 2388
  store i32 %3, ptr %i.o, align 4, !tbaa !121
  %i.p = trunc i32 %4 to i8                       ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 2369
  %i.r = and i8 %i.p, 1                           ; 2 uses
  store i8 %i.r, ptr %i.q, align 1, !tbaa !122
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 2368
  %5 = lshr i8 %i.p, 2                            ; 2 uses
  %i.t = and i8 %5, 1
  store i8 %i.t, ptr %i.s, align 16, !tbaa !123
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 2370
  %i.v = lshr i32 %4, 9                           ; 2 uses
  %i.w = trunc i32 %i.v to i8
  %i.x = and i8 %i.w, 1
  store i8 %i.x, ptr %i.u, align 2, !tbaa !411
  %i.y = zext nneg i8 %i.r to i64
  %i.z = icmp eq i32 %3, 6
  %i.aa = select i1 %i.z, i64 2, i64 0
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2cv10OcvDctImpl4initEiiiiE7dct_tbl, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.y
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 2360
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !124
  store i32 0, ptr %i.d, align 8, !tbaa !125
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  store i8 0, ptr %i.af, align 2, !tbaa !412
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 0, ptr %i.ag, align 8, !tbaa !413
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  store i8 0, ptr %i.ah, align 1, !tbaa !414
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double 1.000000e+00, ptr %i.ai, align 8, !tbaa !415
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.aj, ptr %i.b, align 16, !tbaa !126
  %i.ak = trunc i8 %5 to i1
  %i.al = icmp eq i32 %2, 1
  %or.cond.i = or i1 %i.al, %i.ak
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = icmp eq i32 %1, 1                       ; 2 uses
  %i.an = trunc i32 %i.v to i1
  %or.cond6.i = and i1 %i.am, %i.an
  br i1 %or.cond6.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 2376
  store i32 0, ptr %i.ao, align 8, !tbaa !127
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 2372
  store i32 0, ptr %i.ap, align 4, !tbaa !128
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.aq = zext i1 %i.am to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 2372
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !128
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 2376
  store i32 1, ptr %i.as, align 8, !tbaa !127
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 2392) #20
  resume { ptr, i32 } %i.at

bb.g:                                             ; preds = %bb.e, %bb.d
  store ptr %i.a, ptr %0, align 8, !tbaa !131
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN2cv10OcvDctImplEEET_(ptr noundef nonnull align 8 dereferenceable(8) %i.au, ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress uwtable
define void @_ZN2cv3dctERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %4 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 12 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator", align 1    ; 3 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %9 = alloca %"struct.cv::Ptr.8", align 8        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv3dctERKNS_11_InputArrayERKNS_12_OutputArrayEiE26__cv_trace_location_fn4625)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.a
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93, !noalias !421
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.e

bb.c:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit unwind label %bb.e

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %5, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.e = load i32, ptr %5, align 8, !tbaa !100    ; 2 uses
  %i.f = and i32 %i.e, 4095                       ; 2 uses
  %i.g = and i32 %i.e, 31
  %i.h = add nsw i32 %i.f, -5
  %or.cond = icmp ult i32 %i.h, 2
  br i1 %or.cond, label %bb.m, label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.f:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.g:                                             ; preds = %bb.m
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv3dctERKNS_11_InputArrayERKNS_12_OutputArrayEi, ptr noundef nonnull @.str.1, i32 noundef 4630) #22
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.l:                                             ; preds = %bb.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !51     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.q = load i64, ptr %i.o, align 8, !tbaa !52
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %.pn = phi { ptr, i32 } [ %i.l, %bb.k ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.af

bb.m:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !103
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !102
  invoke void @_ZNK2cv12_OutputArray6createEiiiibNS0_9DepthMaskE(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %i.t, i32 noundef %i.v, i32 noundef %i.f, i32 noundef -1, i1 noundef zeroext false, i32 noundef 0)
          to label %bb.n unwind label %bb.g

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.w = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc35 unwind label %bb.q

.noexc35:                                         ; preds = %bb.n
  %i.x = icmp eq i32 %i.w, 65536
  br i1 %i.x, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.noexc35
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !93, !noalias !422
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %i.z)
          to label %_ZNK2cv11_InputArray6getMatEi.exit38 unwind label %bb.q

bb.p:                                             ; preds = %.noexc35
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %_ZNK2cv11_InputArray6getMatEi.exit38 unwind label %bb.q

_ZNK2cv11_InputArray6getMatEi.exit38:             ; preds = %bb.o, %bb.p
  %.1 = and i32 %2, 5
  %i.aa = load i32, ptr %5, align 8, !tbaa !100
  %i.ab = and i32 %i.aa, 16384
  %.not = icmp eq i32 %i.ab, 0
  %i.ac = load i32, ptr %8, align 8
  %i.ad = lshr i32 %i.ac, 5
  %i.ae = and i32 %i.ad, 512
  %spec.select32 = select i1 %.not, i32 0, i32 %i.ae
  %.2 = or disjoint i32 %.1, %spec.select32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.af = load i32, ptr %i.u, align 4, !tbaa !102
  %i.ag = load i32, ptr %i.s, align 8, !tbaa !103
  invoke void @_ZN2cv3hal5DCT2D6createEiiii(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.8") align 8 %9, i32 noundef %i.af, i32 noundef %i.ag, i32 noundef %i.g, i32 noundef %.2)
          to label %bb.r unwind label %bb.ab

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.r:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit38
  %i.ai = load ptr, ptr %9, align 8, !tbaa !131   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !101
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 128
  %i.am = load i64, ptr %i.al, align 8, !tbaa !73
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !101
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !73
  %i.ar = load ptr, ptr %i.ai, align 8, !tbaa !16
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef %i.ak, i64 noundef %i.am, ptr noundef %i.ao, i64 noundef %i.aq)
          to label %bb.s unwind label %bb.ac

end_hunk_1
