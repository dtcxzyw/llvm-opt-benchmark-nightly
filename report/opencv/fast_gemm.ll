Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/fast_gemm?download=true
inline.NumInlined: 936
inline.NumDeleted: 360
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN2cv3dnn12MatMulHelperC2Ev:bb.a
  store ptr %i.ex, ptr %i.et, align 8, !tbaa !103
  br label %_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit21

_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i94:           ; preds = %bb.ad
  %gepdiff105 = sub nuw nsw i64 8, %i.ew
  %i.ey = icmp eq ptr %i.eu, %i.eg
  br i1 %i.ey, label %bb.af, label %_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E.exit.i95

bb.af:                                            ; preds = %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i94
  %.sink.i.i93 = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ew
  %i.ez = load i64, ptr %.sink.i.i93, align 8, !tbaa !20
  store i64 %i.ez, ptr %i.eu, align 8, !tbaa !20
  br label %_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E.exit.i95

_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E.exit.i95: ; preds = %bb.af, %_ZSt4copyIPKmPmET0_T_S4_S3_.exit17.i94
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eu, i64 %gepdiff105
  store ptr %i.fa, ptr %i.et, align 8, !tbaa !103
  br label %_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit21

_ZNSt6vectorImSaImEEaSESt16initializer_listImE.exit21: ; preds = %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit.i97, %bb.ae, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i91, %_ZSt22__uninitialized_copy_aIPKmPmmET0_T_S4_S3_RSaIT1_E.exit.i95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 0, ptr %i.fb, align 8, !tbaa !92
  ret void

bb.ag:                                            ; preds = %bb.a
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ah:                                            ; preds = %bb.c
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.an

bb.ai:                                            ; preds = %bb.h
  %i.fe = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.an

bb.aj:                                            ; preds = %bb.m
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.an

bb.ak:                                            ; preds = %bb.r
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.an

bb.al:                                            ; preds = %bb.w
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.an

bb.am:                                            ; preds = %bb.ab
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.fi, %bb.am ], [ %i.fh, %bb.al ], [ %i.fg, %bb.ak ], [ %i.ff, %bb.aj ], [ %i.fe, %bb.ai ], [ %i.fd, %bb.ah ], [ %i.fc, %bb.ag ]
  %i.fj = load ptr, ptr %i.l, align 8, !tbaa !93  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !102
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %i.fj to i64
  %i.fo = sub i64 %i.fm, %i.fn
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.fo) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.an, %bb.ao
  %i.fp = load ptr, ptr %i.k, align 8, !tbaa !93  ; 3 uses
  %.not.i.i.i22 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i.i22, label %_ZNSt6vectorImSaImEED2Ev.exit23, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !102
  %i.fs = ptrtoint ptr %i.fr to i64
  %i.ft = ptrtoint ptr %i.fp to i64
  %i.fu = sub i64 %i.fs, %i.ft
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef %i.fu) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit23

_ZNSt6vectorImSaImEED2Ev.exit23:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.ap
  %i.fv = load ptr, ptr %i.j, align 8, !tbaa !93  ; 3 uses
  %.not.i.i.i24 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i24, label %_ZNSt6vectorImSaImEED2Ev.exit25, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit23
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !102
  %i.fy = ptrtoint ptr %i.fx to i64
  %i.fz = ptrtoint ptr %i.fv to i64
  %i.ga = sub i64 %i.fy, %i.fz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef %i.ga) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit25

_ZNSt6vectorImSaImEED2Ev.exit25:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit23, %bb.aq
  %i.gb = load ptr, ptr %i.i, align 8, !tbaa !93  ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorImSaImEED2Ev.exit27, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit25
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !102
  %i.ge = ptrtoint ptr %i.gd to i64
  %i.gf = ptrtoint ptr %i.gb to i64
  %i.gg = sub i64 %i.ge, %i.gf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef %i.gg) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit27

_ZNSt6vectorImSaImEED2Ev.exit27:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit25, %bb.ar
  %i.gh = load ptr, ptr %i.h, align 8, !tbaa !93  ; 3 uses
  %.not.i.i.i28 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorImSaImEED2Ev.exit29, label %bb.as

bb.as:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit27
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !102
  %i.gk = ptrtoint ptr %i.gj to i64
  %i.gl = ptrtoint ptr %i.gh to i64
  %i.gm = sub i64 %i.gk, %i.gl
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gh, i64 noundef %i.gm) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit29

_ZNSt6vectorImSaImEED2Ev.exit29:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit27, %bb.as
  %i.gn = load ptr, ptr %i.g, align 8, !tbaa !93  ; 3 uses
  %.not.i.i.i30 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorImSaImEED2Ev.exit31, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit29
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !102
  %i.gq = ptrtoint ptr %i.gp to i64
  %i.gr = ptrtoint ptr %i.gn to i64
  %i.gs = sub i64 %i.gq, %i.gr
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gn, i64 noundef %i.gs) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit31

_ZNSt6vectorImSaImEED2Ev.exit31:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit29, %bb.at
  %i.gt = load ptr, ptr %0, align 8, !tbaa !93    ; 3 uses
  %.not.i.i.i32 = icmp eq ptr %i.gt, null
  br i1 %.not.i.i.i32, label %_ZNSt6vectorImSaImEED2Ev.exit33, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit31
  %i.gu = load ptr, ptr %i.m, align 8, !tbaa !102
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = ptrtoint ptr %i.gt to i64
  %i.gx = sub i64 %i.gv, %i.gw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gt, i64 noundef %i.gx) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit33

_ZNSt6vectorImSaImEED2Ev.exit33:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit31, %bb.au
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn12MatMulHelper7computeEbbNS_8MatShapeES2_S2_(ptr noundef nonnull align 8 dereferenceable(208) %0, i1 noundef zeroext %1, i1 noundef zeroext %2, ptr noundef align 4 dead_on_return %3, ptr noundef align 4 dead_on_return %4, ptr noundef align 4 dead_on_return %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.23", align 1 ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.23", align 1 ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %11 = alloca %"class.std::allocator.23", align 1 ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %13 = alloca %"class.std::allocator.23", align 1 ; 3 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %15 = alloca %"class.std::allocator.23", align 1 ; 3 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator.23", align 1 ; 3 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator.23", align 1 ; 3 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %20 = alloca %"struct.cv::MatShape", align 4    ; 7 uses
  %21 = alloca %"struct.cv::MatShape", align 4    ; 7 uses
  %i.g = load i32, ptr %3, align 4, !tbaa !71     ; 2 uses
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.g, i32 0)
  %spec.select.i = zext nneg i32 %narrow.i to i64 ; 3 uses
  %i.h = load i32, ptr %4, align 4, !tbaa !71
  %narrow.i85 = tail call i32 @llvm.smax.i32(i32 %i.h, i32 0)
  %spec.select.i86 = zext nneg i32 %narrow.i85 to i64 ; 2 uses
  %i.i = load i32, ptr %5, align 4, !tbaa !71     ; 4 uses
  %narrow.i87 = tail call i32 @llvm.smax.i32(i32 %i.i, i32 0) ; 5 uses
  %spec.select.i88 = zext nneg i32 %narrow.i87 to i64 ; 6 uses
  %i.j = add nsw i64 %spec.select.i, -2           ; 2 uses
  %narrow.i89 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %spec.select.i90 = zext nneg i32 %narrow.i89 to i64
  %i.k = icmp ult i64 %i.j, %spec.select.i90
  br i1 %i.k, label %_ZN2cv8MatShapeixEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %19)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.73, i32 noundef 97) #27
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %18, align 8, !tbaa !74    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.p = load i64, ptr %i.n, align 8, !tbaa !75
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt6vectorImSaImEED2Ev.exit181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i94, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i94 ], [ %.pn81.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit181 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %common.resume

_ZN2cv8MatShapeixEm.exit:                         ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.j
  %i.t = load i32, ptr %i.s, align 4, !tbaa !59   ; 2 uses
  %i.u = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv8MatShape4backEv(ptr noundef nonnull align 4 dereferenceable(52) %3)
  %i.v = add nsw i64 %spec.select.i86, -2         ; 2 uses
  %i.w = load i32, ptr %4, align 4, !tbaa !71
  %narrow.i91 = tail call i32 @llvm.smax.i32(i32 %i.w, i32 1)
  %spec.select.i92 = zext nneg i32 %narrow.i91 to i64
  %i.x = icmp ult i64 %i.v, %spec.select.i92
  br i1 %i.x, label %_ZN2cv8MatShapeixEm.exit96, label %bb.e

bb.e:                                             ; preds = %_ZN2cv8MatShapeixEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %17)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.73, i32 noundef 97) #27
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = load ptr, ptr %16, align 8, !tbaa !74    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i93: ; preds = %bb.g
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !75
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i94: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i93
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  br label %common.resume

_ZN2cv8MatShapeixEm.exit96:                       ; preds = %_ZN2cv8MatShapeixEm.exit
  %i.ae = load i32, ptr %i.u, align 4, !tbaa !59  ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.v
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !59
  %i.ai = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv8MatShape4backEv(ptr noundef nonnull align 4 dereferenceable(52) %4)
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !59 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  store i32 %i.ae, ptr %i.ak, align 8, !tbaa !97
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 1, ptr %i.al, align 4, !tbaa !98
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  store i32 %i.aj, ptr %i.am, align 8, !tbaa !99
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 1, ptr %i.an, align 4, !tbaa !100
  %i.ao = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN2cv8MatShape4backEv(ptr noundef nonnull align 4 dereferenceable(52) %5)
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !59
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !101
  %i.ar = select i1 %1, i32 %i.ae, i32 %i.t
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !94
  %i.at = select i1 %2, i32 %i.ah, i32 %i.aj
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  store i32 %i.at, ptr %i.au, align 8, !tbaa !95
  %i.av = select i1 %1, i32 %i.t, i32 %i.ae
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !96
  br i1 %1, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN2cv8MatShapeixEm.exit96
  %i.ax = load <2 x i32>, ptr %i.ak, align 8, !tbaa !59
  %i.ay = shufflevector <2 x i32> %i.ax, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ay, ptr %i.ak, align 8, !tbaa !59
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN2cv8MatShapeixEm.exit96
  br i1 %2, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.az = load <2 x i32>, ptr %i.am, align 8, !tbaa !59
  %i.ba = shufflevector <2 x i32> %i.az, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ba, ptr %i.am, align 8, !tbaa !59
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bb = add nsw i32 %narrow.i87, -2             ; 3 uses
  %i.bc = tail call fastcc noundef i64 @_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii(ptr noundef nonnull align 4 dereferenceable(52) %5, i32 noundef 0, i32 noundef %i.bb) ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 8 uses
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !tbaa !20
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !103 ; 3 uses
  %i.bg = load ptr, ptr %0, align 8, !tbaa !93    ; 2 uses
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = ashr exact i64 %i.bj, 3                 ; 3 uses
  %i.bl = icmp ugt i64 %i.bc, %i.bk
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bm = sub nuw i64 %i.bc, %i.bk
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.bf, i64 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load i64, ptr %i.bd, align 8, !tbaa !92
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

bb.m:                                             ; preds = %bb.k
  %i.bn = icmp ult i64 %i.bc, %i.bk
  br i1 %i.bn, label %bb.n, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bc ; 2 uses
  %.not.i.i = icmp eq ptr %i.bf, %i.bo
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.n
  store ptr %i.bo, ptr %i.be, align 8, !tbaa !103
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

_ZNSt6vectorImSaImEE6resizeEmRKm.exit:            ; preds = %bb.l, %bb.m, %bb.n, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %i.bp = phi i64 [ %.pre, %bb.l ], [ %i.bc, %bb.m ], [ %i.bc, %bb.n ], [ %i.bc, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !20
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !103 ; 3 uses
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !93 ; 2 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3                 ; 3 uses
  %i.by = icmp ugt i64 %i.bp, %i.bx
  br i1 %i.by, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  %i.bz = sub nuw i64 %i.bp, %i.bx
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr %i.bs, i64 noundef %i.bz, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pre251 = load i64, ptr %i.bd, align 8, !tbaa !92
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit99

bb.p:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  %i.ca = icmp ult i64 %i.bp, %i.bx
  br i1 %i.ca, label %bb.q, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit99

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bp ; 2 uses
  %.not.i.i97 = icmp eq ptr %i.bs, %i.cb
  br i1 %.not.i.i97, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit99, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i98

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i98:      ; preds = %bb.q
  store ptr %i.cb, ptr %i.br, align 8, !tbaa !103
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit99

_ZNSt6vectorImSaImEE6resizeEmRKm.exit99:          ; preds = %bb.o, %bb.p, %bb.q, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i98
  %i.cc = phi i64 [ %.pre251, %bb.o ], [ %i.bp, %bb.p ], [ %i.bp, %bb.q ], [ %i.bp, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i98 ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn12MatMulHelper7computeEbbNS_8MatShapeES2_S2_:bb.a

_ZNSt6vectorImSaImEE6resizeEmRKm.exit105:         ; preds = %bb.u, %bb.v, %bb.w, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i104
  %i.dc = phi i64 [ %.pre253, %bb.u ], [ %i.cp, %bb.v ], [ %i.cp, %bb.w ], [ %i.cp, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i104 ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 0, ptr %i.e, align 8, !tbaa !20
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !103 ; 3 uses
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !93 ; 2 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = ashr exact i64 %i.dj, 3                 ; 3 uses
  %i.dl = icmp ugt i64 %i.dc, %i.dk
  br i1 %i.dl, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit105
  %i.dm = sub nuw i64 %i.dc, %i.dk
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr %i.df, i64 noundef %i.dm, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.pre254 = load i64, ptr %i.bd, align 8, !tbaa !92
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit108

bb.y:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit105
  %i.dn = icmp ult i64 %i.dc, %i.dk
  br i1 %i.dn, label %bb.z, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit108

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dc ; 2 uses
  %.not.i.i106 = icmp eq ptr %i.df, %i.do
  br i1 %.not.i.i106, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit108, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i107

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i107:     ; preds = %bb.z
  store ptr %i.do, ptr %i.de, align 8, !tbaa !103
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit108

_ZNSt6vectorImSaImEE6resizeEmRKm.exit108:         ; preds = %bb.x, %bb.y, %bb.z, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i107
  %i.dp = phi i64 [ %.pre254, %bb.x ], [ %i.dc, %bb.y ], [ %i.dc, %bb.z ], [ %i.dc, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i107 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i64 0, ptr %i.f, align 8, !tbaa !20
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !103 ; 3 uses
  %i.dt = load ptr, ptr %i.dq, align 8, !tbaa !93 ; 2 uses
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = ashr exact i64 %i.dw, 3                 ; 3 uses
  %i.dy = icmp ugt i64 %i.dp, %i.dx
  br i1 %i.dy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit108
  %i.dz = sub nuw i64 %i.dp, %i.dx
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr %i.ds, i64 noundef %i.dz, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111

bb.ab:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit108
  %i.ea = icmp ult i64 %i.dp, %i.dx
  br i1 %i.ea, label %bb.ac, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111

bb.ac:                                            ; preds = %bb.ab
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dp ; 2 uses
  %.not.i.i109 = icmp eq ptr %i.ds, %i.eb
  br i1 %.not.i.i109, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i110

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i110:     ; preds = %bb.ac
  store ptr %i.eb, ptr %i.dr, align 8, !tbaa !103
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111

_ZNSt6vectorImSaImEE6resizeEmRKm.exit111:         ; preds = %bb.aa, %bb.ab, %bb.ac, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  %i.ec = call fastcc noundef i64 @_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii(ptr noundef nonnull align 4 dereferenceable(52) %5, i32 noundef %i.bb, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call void @_ZN2cv8MatShapeC1EmiNS_10DataLayoutE(ptr noundef nonnull align 4 dereferenceable(52) %20, i64 noundef %spec.select.i88, i32 noundef 1, i32 noundef 0)
  %i.ed = getelementptr inbounds nuw i8, ptr %20, i64 12 ; 3 uses
  %i.ee = sub nsw i64 %spec.select.i88, %spec.select.i
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = shl nuw nsw i64 %spec.select.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ef, ptr nonnull align 4 %i.r, i64 %i.eg, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.eh = load i32, ptr %5, align 4, !tbaa !71
  %narrow.i112 = call i32 @llvm.smax.i32(i32 %i.eh, i32 0)
  %spec.select.i113 = zext nneg i32 %narrow.i112 to i64
  call void @_ZN2cv8MatShapeC1EmiNS_10DataLayoutE(ptr noundef nonnull align 4 dereferenceable(52) %21, i64 noundef %spec.select.i113, i32 noundef 1, i32 noundef 0)
  %i.ei = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 3 uses
  %i.ej = sub nsw i64 %spec.select.i88, %spec.select.i86
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ej
  %i.el = load i32, ptr %4, align 4, !tbaa !71
  %narrow.i114 = call i32 @llvm.smax.i32(i32 %i.el, i32 0)
  %spec.select.i115 = zext nneg i32 %narrow.i114 to i64
  %i.em = shl nuw nsw i64 %spec.select.i115, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ek, ptr nonnull align 4 %i.af, i64 %i.em, i1 false)
  %.not.i.i.i.i = icmp slt i32 %i.i, 1
  br i1 %.not.i.i.i.i, label %.preheader, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111
  %i.en = shl nuw nsw i64 %spec.select.i88, 3     ; 5 uses
  %i.eo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #24
          to label %.noexc unwind label %bb.ae    ; 13 uses

.noexc:                                           ; preds = %bb.ad
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.en
  %i.eq = add nsw i64 %i.en, -8                   ; 3 uses
  %i.er = lshr exact i64 %i.eq, 3
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %xtraiter = and i64 %i.es, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.noexc, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.eo, %.noexc ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.noexc ]
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !20
  %i.et = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !220

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.noexc
  %.06.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.eo, %.noexc ], [ %i.et, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.eu = icmp ult i64 %i.eq, 56
  br i1 %i.eu, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !20
  %i.ev = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.ev, align 8, !tbaa !20
  %i.ew = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 16
  store i64 1, ptr %i.ew, align 8, !tbaa !20
  %i.ex = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 24
  store i64 1, ptr %i.ex, align 8, !tbaa !20
  %i.ey = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32
  store i64 1, ptr %i.ey, align 8, !tbaa !20
  %i.ez = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 40
  store i64 1, ptr %i.ez, align 8, !tbaa !20
  %i.fa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48
  store i64 1, ptr %i.fa, align 8, !tbaa !20
  %i.fb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 56
  store i64 1, ptr %i.fb, align 8, !tbaa !20
  %i.fc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.fc, %i.ep
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !7

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %spec.select.i88 ; 7 uses
  %i.fe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #24
          to label %.noexc122 unwind label %_ZNSt6vectorImSaImEED2Ev.exit179.thread ; 12 uses

.noexc122:                                        ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.en
  %xtraiter339 = and i64 %i.es, 7                 ; 2 uses
  %lcmp.mod340.not = icmp eq i64 %xtraiter339, 0
  br i1 %lcmp.mod340.not, label %.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i117.prol

.lr.ph.i.i.i.i.i.i.i.i.i117.prol:                 ; preds = %.noexc122, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol
  %.06.i.i.i.i.i.i.i.i.i118.prol = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol ], [ %i.fe, %.noexc122 ] ; 2 uses
  %prol.iter341 = phi i64 [ %prol.iter341.next, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol ], [ 0, %.noexc122 ]
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i118.prol, align 8, !tbaa !20
  %i.fg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i118.prol, i64 8 ; 2 uses
  %prol.iter341.next = add i64 %prol.iter341, 1   ; 2 uses
  %prol.iter341.cmp.not = icmp eq i64 %prol.iter341.next, %xtraiter339
  br i1 %prol.iter341.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i117.prol, !llvm.loop !221

.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117.prol, %.noexc122
  %.06.i.i.i.i.i.i.i.i.i118.unr = phi ptr [ %i.fe, %.noexc122 ], [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol ]
  %i.fh = icmp ult i64 %i.eq, 56
  br i1 %i.fh, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit123, label %.lr.ph.i.i.i.i.i.i.i.i.i117

.lr.ph.i.i.i.i.i.i.i.i.i117:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i117
  %.06.i.i.i.i.i.i.i.i.i118 = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i.i.i.i117 ], [ %.06.i.i.i.i.i.i.i.i.i118.unr, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit ] ; 9 uses
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i118, align 8, !tbaa !20
  %i.fi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i118, i64 8
  store i64 1, ptr %i.fi, align 8, !tbaa !20
  %i.fj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i118, i64 16
  store i64 1, ptr %i.fj, align 8, !tbaa !20
  %i.fk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i118, i64 24
  store i64 1, ptr %i.fk, align 8, !tbaa !20
  %i.fl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i118, i64 32
  store i64 1, ptr %i.fl, align 8, !tbaa !20
  %i.fm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i118, i64 40
  store i64 1, ptr %i.fm, align 8, !tbaa !20
  %i.fn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i118, i64 48
  store i64 1, ptr %i.fn, align 8, !tbaa !20
  %i.fo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i118, i64 56
  store i64 1, ptr %i.fo, align 8, !tbaa !20
  %i.fp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i118, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i119.7 = icmp eq ptr %i.fp, %i.ff
  br i1 %.not.i.i.i.i.i.i.i.i.i119.7, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit123, label %.lr.ph.i.i.i.i.i.i.i.i.i117, !llvm.loop !7

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit123:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i117, %.lr.ph.i.i.i.i.i.i.i.i.i117.prol.loopexit
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %spec.select.i88
  %i.fr = ptrtoint ptr %i.fq to i64               ; 6 uses
  %.not334 = icmp eq i32 %i.i, 1
  br i1 %.not334, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit123
  %i.fs = load i32, ptr %20, align 4, !tbaa !71
  %i.ft = load i32, ptr %21, align 4
  %i.fu = zext i32 %i.bb to i64
  %.not301 = icmp sgt i32 %narrow.i87, %i.fs
  %.not302 = icmp sgt i32 %narrow.i87, %i.ft
  br label %bb.af

.preheader:                                       ; preds = %bb.an, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit123
  %.sroa.12.0321.a = phi i64 [ 0, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111 ], [ %i.fr, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit123 ], [ %i.fr, %bb.an ] ; 7 uses
  %.sroa.0182.0320 = phi ptr [ null, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111 ], [ %i.fe, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit123 ], [ %i.fe, %bb.an ] ; 10 uses
  %.sroa.12196.0201312.a = phi ptr [ null, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111 ], [ %i.fd, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit123 ], [ %i.fd, %bb.an ] ; 7 uses
  %.sroa.0190.0203307.a = phi ptr [ null, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit111 ], [ %i.eo, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit123 ], [ %i.eo, %bb.an ] ; 10 uses
  %i.fv = load i64, ptr %i.bd, align 8, !tbaa !92
  %.not = icmp eq i64 %i.fv, 0
  br i1 %.not, label %._crit_edge242, label %.lr.ph241

.lr.ph241:                                        ; preds = %.preheader
  %i.fw = load ptr, ptr %i.cd, align 8, !tbaa !93
  %i.fx = load ptr, ptr %i.dq, align 8, !tbaa !93
  %i.fy = add nsw i32 %narrow.i87, -3             ; 4 uses
  %i.fz = icmp sgt i32 %i.i, 2
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.gb = zext i32 %i.fy to i64
  br label %bb.aq

bb.ae:                                            ; preds = %bb.ad
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit181

_ZNSt6vectorImSaImEED2Ev.exit179.thread:          ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.af:                                            ; preds = %.lr.ph, %bb.an
  %indvars.iv = phi i64 [ %i.fu, %.lr.ph ], [ %indvars.iv.next, %bb.an ] ; 5 uses
  %i.ge = add nuw nsw i64 %indvars.iv, 1          ; 4 uses
  br i1 %.not301, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc129 unwind label %bb.bi

.noexc129:                                        ; preds = %bb.ag
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.73, i32 noundef 97) #27
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %.noexc129
  unreachable

bb.ai:                                            ; preds = %.noexc129
  %i.gf = landingpad { ptr, i32 }
          cleanup
  %i.gg = load ptr, ptr %14, align 8, !tbaa !74   ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %.body.thread325, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126: ; preds = %bb.ai
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !75
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #28
  br label %.body.thread325

.body.thread325:                                  ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i126
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.bj

bb.aj:                                            ; preds = %bb.af
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.ge
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !20
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ge
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !59
  %i.gp = sext i32 %i.go to i64
  %i.gq = mul i64 %i.gm, %i.gp
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv
  store i64 %i.gq, ptr %i.gr, align 8, !tbaa !20
  br i1 %.not302, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc136 unwind label %bb.bi

.noexc136:                                        ; preds = %bb.ak
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.73, i32 noundef 97) #27
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %.noexc136
  unreachable

bb.am:                                            ; preds = %.noexc136
  %i.gs = landingpad { ptr, i32 }
          cleanup
  %i.gt = load ptr, ptr %12, align 8, !tbaa !74   ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %.body.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133: ; preds = %bb.am
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !75
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gx) #28
  br label %.body.thread

.body.thread:                                     ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.bj

bb.an:                                            ; preds = %bb.aj
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.ge
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !20
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ge
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !59
  %i.hc = sext i32 %i.hb to i64
  %i.hd = mul i64 %i.gz, %i.hc
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv
  store i64 %i.hd, ptr %i.he, align 8, !tbaa !20
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.hf = trunc nuw i64 %indvars.iv to i32
  %i.hg = icmp sgt i32 %i.hf, 0
  br i1 %i.hg, label %bb.af, label %.preheader, !llvm.loop !222

._crit_edge242:                                   ; preds = %._crit_edge, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.0182.0320, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge242
  %i.hh = ptrtoint ptr %.sroa.0182.0320 to i64
  %i.hi = sub i64 %.sroa.12.0321.a, %i.hh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0182.0320, i64 noundef %i.hi) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge242, %bb.ao
  %.not.i.i.i140 = icmp eq ptr %.sroa.0190.0203307.a, null
  br i1 %.not.i.i.i140, label %_ZNSt6vectorImSaImEED2Ev.exit141, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.hj = ptrtoint ptr %.sroa.12196.0201312.a to i64
  %i.hk = ptrtoint ptr %.sroa.0190.0203307.a to i64
  %i.hl = sub i64 %i.hj, %i.hk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0190.0203307.a, i64 noundef %i.hl) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit141

_ZNSt6vectorImSaImEED2Ev.exit141:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  ret void

bb.aq:                                            ; preds = %.lr.ph241, %._crit_edge
  %.072240 = phi i64 [ 0, %.lr.ph241 ], [ %i.ij, %._crit_edge ] ; 10 uses
  %i.hm = mul i64 %.072240, %i.ec
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %.072240
  store i64 %i.hm, ptr %i.hn, align 8, !tbaa !20
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.072240
  store i64 %.072240, ptr %i.ho, align 8, !tbaa !20
  br i1 %i.fz, label %.lr.ph238, label %._crit_edge

.lr.ph238:                                        ; preds = %bb.aq
  %i.hp = load i32, ptr %5, align 4, !tbaa !71
  %narrow.i142 = call i32 @llvm.smax.i32(i32 %i.hp, i32 1)
  %i.hq = load i32, ptr %20, align 4
  %narrow.i160 = call i32 @llvm.smax.i32(i32 %i.hq, i32 1)
  %i.hr = load i32, ptr %21, align 4
  %narrow.i169 = call i32 @llvm.smax.i32(i32 %i.hr, i32 1)
  %.first_iter = icmp ult i32 %i.fy, %narrow.i142
  %.first_iter249 = icmp samesign ult i32 %i.fy, %narrow.i160
  %.first_iter250 = icmp samesign ult i32 %i.fy, %narrow.i169
  br label %bb.ar

._crit_edge:                                      ; preds = %bb.bh, %bb.aq
  %.071.lcssa = phi i64 [ 0, %bb.aq ], [ %i.jn, %bb.bh ] ; 2 uses
  %.070.lcssa = phi i64 [ 0, %bb.aq ], [ %i.kd, %bb.bh ] ; 2 uses
  %i.hs = load ptr, ptr %0, align 8, !tbaa !93
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %.072240
  store i64 %.071.lcssa, ptr %i.ht, align 8, !tbaa !20
  %i.hu = load ptr, ptr %i.bq, align 8, !tbaa !93
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %.072240
  store i64 %.070.lcssa, ptr %i.hv, align 8, !tbaa !20
  %i.hw = load i32, ptr %i.as, align 4, !tbaa !94
  %i.hx = load i32, ptr %i.aw, align 4, !tbaa !96 ; 2 uses
  %i.hy = mul nsw i32 %i.hx, %i.hw
  %i.hz = sext i32 %i.hy to i64
  %i.ia = udiv i64 %.071.lcssa, %i.hz
  %i.ib = load ptr, ptr %i.cq, align 8, !tbaa !93
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %.072240
  store i64 %i.ia, ptr %i.ic, align 8, !tbaa !20
  %i.id = load i32, ptr %i.au, align 8, !tbaa !95
  %i.ie = mul nsw i32 %i.id, %i.hx
  %i.if = sext i32 %i.ie to i64
  %i.ig = udiv i64 %.070.lcssa, %i.if
  %i.ih = load ptr, ptr %i.dd, align 8, !tbaa !93
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %.072240
  store i64 %i.ig, ptr %i.ii, align 8, !tbaa !20
  %i.ij = add nuw i64 %.072240, 1                 ; 2 uses
  %i.ik = load i64, ptr %i.bd, align 8, !tbaa !92
  %i.il = icmp ult i64 %i.ij, %i.ik
  br i1 %i.il, label %bb.aq, label %._crit_edge242, !llvm.loop !223

bb.ar:                                            ; preds = %.lr.ph238, %bb.bh
  %indvars.iv246 = phi i64 [ %i.gb, %.lr.ph238 ], [ %indvars.iv.next247, %bb.bh ] ; 7 uses
  %.070236 = phi i64 [ 0, %.lr.ph238 ], [ %i.kd, %bb.bh ]
  %.071235 = phi i64 [ 0, %.lr.ph238 ], [ %i.jn, %bb.bh ]
  %.073234 = phi i64 [ %.072240, %.lr.ph238 ], [ %i.iv, %bb.bh ] ; 2 uses
  br i1 %.first_iter, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc147 unwind label %bb.bi

.noexc147:                                        ; preds = %bb.as
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.73, i32 noundef 97) #27
          to label %bb.at unwind label %bb.au

bb.at:                                            ; preds = %.noexc147
  unreachable

bb.au:                                            ; preds = %.noexc147
  %i.im = landingpad { ptr, i32 }
          cleanup
  %i.in = load ptr, ptr %10, align 8, !tbaa !74   ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i144: ; preds = %bb.au
  %i.iq = load i64, ptr %i.io, align 8, !tbaa !75
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.ir) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i145: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.body

bb.av:                                            ; preds = %bb.ar
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv246
  %i.it = load i32, ptr %i.is, align 4, !tbaa !59 ; 2 uses
  %i.iu = sext i32 %i.it to i64
  %i.iv = udiv i64 %.073234, %i.iu                ; 2 uses
  %i.iw = zext i32 %i.it to i64
  %i.ix = mul i64 %i.iv, %i.iw
  %i.iy = sub i64 %.073234, %i.ix                 ; 2 uses
  br i1 %.first_iter249, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc165 unwind label %bb.bi

.noexc165:                                        ; preds = %bb.aw
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.73, i32 noundef 97) #27
          to label %bb.ax unwind label %bb.ay

bb.ax:                                            ; preds = %.noexc165
  unreachable

bb.ay:                                            ; preds = %.noexc165
  %i.iz = landingpad { ptr, i32 }
          cleanup
  %i.ja = load ptr, ptr %8, align 8, !tbaa !74    ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.jc = icmp eq ptr %i.ja, %i.jb
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162: ; preds = %bb.ay
  %i.jd = load i64, ptr %i.jb, align 8, !tbaa !75
  %i.je = add i64 %i.jd, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.je) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i163: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i162
end_hunk_1
